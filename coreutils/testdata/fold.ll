; ModuleID = 'coreutils-8.27/src/fold.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Wrap input lines in each FILE, writing to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.15 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [147 x i8] c"  -b, --bytes         count bytes rather than columns\0A  -s, --spaces        break at spaces\0A  -w, --width=WIDTH   use WIDTH columns instead of 80\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"fold\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.27 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@count_bytes = internal unnamed_addr global i1 false, align 1
@break_spaces = internal unnamed_addr global i1 false, align 1
@shortopts = internal constant [35 x i8] c"bsw:0::1::2::3::4::5::6::7::8::9::\00", align 16, !dbg !0
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !84
@optarg = external local_unnamed_addr global i8*, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid number of columns\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.36 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fold_file.allocated_out = internal global i64 0, align 8, !dbg !176
@fold_file.line_out = internal unnamed_addr global i8* null, align 8, !dbg !98
@.str.31 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"spaces\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), align 8, !dbg !181
@.str.16 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !187
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !192
@.str.19 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.20 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !195
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !202
@.str.38 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.39 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.40 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.42, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.43, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.44, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.45, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.50, i32 0, i32 0), i8* null], align 16, !dbg !209
@.str.41 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.42 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.43 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.44 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.45 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.46 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.47 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.48 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.49 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.50 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !221
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !228
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !241
@.str.11.51 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.52 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.53 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.54 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.55 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !248
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !255
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !243
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !257
@.str.60 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.61 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.62 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.63 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.64 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.65 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.66 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.67 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.68 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.69 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.70 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.71 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.72 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.73 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.76 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.77 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.78 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.79 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.80 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.81 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !263
@.str.1.94 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.101 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.102 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.117 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.118 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.121 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !272
@.str.3.122 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.123 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.124 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.125 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.126 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.127 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !685 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !689, metadata !690), !dbg !691
  %2 = icmp eq i32 %0, 0, !dbg !692
  br i1 %2, label %8, label %3, !dbg !694

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !695, !tbaa !697
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !695
  %6 = load i8*, i8** @program_name, align 8, !dbg !695, !tbaa !697
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !695
  br label %45, !dbg !695

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !701
  %10 = load i8*, i8** @program_name, align 8, !dbg !701, !tbaa !697
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !701
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !703
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !703, !tbaa !697
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !703
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !704
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !704, !tbaa !697
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !704
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !709
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !709, !tbaa !697
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !709
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !712
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !712, !tbaa !697
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !712
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !713
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !713, !tbaa !697
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !713
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !714
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !714, !tbaa !697
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !714
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !72, metadata !690) #10, !dbg !715
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !72, metadata !690) #10, !dbg !715
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !717
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !717
  %32 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !718
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !80, metadata !690) #10, !dbg !719
  %33 = icmp eq i8* %32, null, !dbg !720
  br i1 %33, label %40, label %34, !dbg !722

; <label>:34:                                     ; preds = %8
  %35 = tail call i32 @strncmp(i8* nonnull %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #14, !dbg !723
  %36 = icmp eq i32 %35, 0, !dbg !723
  br i1 %36, label %40, label %37, !dbg !724

; <label>:37:                                     ; preds = %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !725
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !725
  br label %40, !dbg !727

; <label>:40:                                     ; preds = %8, %34, %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !728
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !728
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !729
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0)) #10, !dbg !729
  br label %45

; <label>:45:                                     ; preds = %40, %3
  tail call void @exit(i32 %0) #15, !dbg !730
  unreachable, !dbg !730
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !731 {
  %3 = alloca [2 x i8], align 1
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !736, metadata !690), !dbg !747
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !737, metadata !690), !dbg !748
  tail call void @llvm.dbg.value(metadata i64 80, i64 0, metadata !738, metadata !690), !dbg !749
  %4 = load i8*, i8** %1, align 8, !dbg !750, !tbaa !697
  tail call void @set_program_name(i8* %4) #10, !dbg !751
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !752
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !753
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !754
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !755
  store i1 false, i1* @have_read_stdin, align 1
  store i1 false, i1* @count_bytes, align 1
  store i1 false, i1* @break_spaces, align 1
  call void @llvm.dbg.value(metadata i64 80, i64 0, metadata !738, metadata !690), !dbg !749
  %9 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @shortopts, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !756
  call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !740, metadata !690), !dbg !757
  %10 = icmp eq i32 %9, -1, !dbg !758
  br i1 %10, label %43, label %11, !dbg !759

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  br label %14, !dbg !759

; <label>:14:                                     ; preds = %11, %39
  %15 = phi i32 [ %9, %11 ], [ %41, %39 ]
  %16 = phi i64 [ 80, %11 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !738, metadata !690), !dbg !749
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %12) #10, !dbg !760
  call void @llvm.dbg.declare(metadata [2 x i8]* %3, metadata !742, metadata !690), !dbg !761
  switch i32 %15, label %38 [
    i32 98, label %19
    i32 115, label %20
    i32 48, label %21
    i32 49, label %21
    i32 50, label %21
    i32 51, label %21
    i32 52, label %21
    i32 53, label %21
    i32 54, label %21
    i32 55, label %21
    i32 56, label %21
    i32 57, label %21
    i32 119, label %17
    i32 -130, label %34
    i32 -131, label %35
  ], !dbg !762

; <label>:17:                                     ; preds = %14
  %18 = load i8*, i8** @optarg, align 8, !dbg !763, !tbaa !697
  br label %30, !dbg !762

; <label>:19:                                     ; preds = %14
  store i1 true, i1* @count_bytes, align 1
  br label %39, !dbg !765

; <label>:20:                                     ; preds = %14
  store i1 true, i1* @break_spaces, align 1
  br label %39, !dbg !766

; <label>:21:                                     ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %22 = load i8*, i8** @optarg, align 8, !dbg !767, !tbaa !697
  %23 = icmp eq i8* %22, null, !dbg !767
  br i1 %23, label %26, label %24, !dbg !769

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds i8, i8* %22, i64 -1, !dbg !770
  br label %28, !dbg !771

; <label>:26:                                     ; preds = %21
  %27 = trunc i32 %15 to i8, !dbg !772
  store i8 %27, i8* %12, align 1, !dbg !774, !tbaa !775
  store i8 0, i8* %13, align 1, !dbg !776, !tbaa !775
  br label %28

; <label>:28:                                     ; preds = %26, %24
  %29 = phi i8* [ %12, %26 ], [ %25, %24 ]
  store i8* %29, i8** @optarg, align 8, !tbaa !697
  br label %30, !dbg !767

; <label>:30:                                     ; preds = %17, %28
  %31 = phi i8* [ %18, %17 ], [ %29, %28 ], !dbg !763
  %32 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !777
  %33 = call i64 @xdectoumax(i8* %31, i64 1, i64 -10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* %32, i32 0) #10, !dbg !778
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !738, metadata !690), !dbg !749
  br label %39, !dbg !779

; <label>:34:                                     ; preds = %14
  call void @usage(i32 0) #16, !dbg !780
  unreachable, !dbg !780

; <label>:35:                                     ; preds = %14
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !781, !tbaa !697
  %37 = load i8*, i8** @Version, align 8, !dbg !781, !tbaa !697
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* null) #10, !dbg !781
  call void @exit(i32 0) #15, !dbg !781
  unreachable, !dbg !781

; <label>:38:                                     ; preds = %14
  call void @usage(i32 1) #16, !dbg !782
  unreachable, !dbg !782

; <label>:39:                                     ; preds = %30, %20, %19
  %40 = phi i64 [ %33, %30 ], [ %16, %20 ], [ %16, %19 ]
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !738, metadata !690), !dbg !749
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %12) #10, !dbg !783
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !738, metadata !690), !dbg !749
  %41 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @shortopts, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !756
  call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !740, metadata !690), !dbg !757
  %42 = icmp eq i32 %41, -1, !dbg !758
  br i1 %42, label %43, label %14, !dbg !759, !llvm.loop !784

; <label>:43:                                     ; preds = %39, %2
  %44 = phi i64 [ 80, %2 ], [ %40, %39 ]
  %45 = load i32, i32* @optind, align 4, !dbg !785, !tbaa !787
  %46 = icmp eq i32 %45, %0, !dbg !789
  br i1 %46, label %47, label %50, !dbg !790

; <label>:47:                                     ; preds = %43
  %48 = call fastcc zeroext i1 @fold_file(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i64 %44), !dbg !791
  %49 = zext i1 %48 to i8, !dbg !792
  call void @llvm.dbg.value(metadata i8 %49, i64 0, metadata !741, metadata !690), !dbg !793
  br label %65, !dbg !794

; <label>:50:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !741, metadata !690), !dbg !793
  call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !739, metadata !690), !dbg !795
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !741, metadata !690), !dbg !793
  call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !739, metadata !690), !dbg !795
  %51 = icmp slt i32 %45, %0, !dbg !796
  br i1 %51, label %52, label %65, !dbg !800

; <label>:52:                                     ; preds = %50
  %53 = sext i32 %45 to i64, !dbg !800
  br label %54, !dbg !800

; <label>:54:                                     ; preds = %54, %52
  %55 = phi i64 [ %53, %52 ], [ %62, %54 ]
  %56 = phi i8 [ 1, %52 ], [ %61, %54 ]
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !739, metadata !690), !dbg !795
  call void @llvm.dbg.value(metadata i8 %56, i64 0, metadata !741, metadata !690), !dbg !793
  %57 = getelementptr inbounds i8*, i8** %1, i64 %55, !dbg !801
  %58 = load i8*, i8** %57, align 8, !dbg !801, !tbaa !697
  %59 = call fastcc zeroext i1 @fold_file(i8* %58, i64 %44), !dbg !802
  %60 = zext i1 %59 to i8, !dbg !802
  %61 = and i8 %56, %60, !dbg !803
  call void @llvm.dbg.value(metadata i8 %61, i64 0, metadata !741, metadata !690), !dbg !793
  %62 = add nsw i64 %55, 1, !dbg !804
  call void @llvm.dbg.value(metadata i8 %61, i64 0, metadata !741, metadata !690), !dbg !793
  %63 = trunc i64 %62 to i32, !dbg !796
  %64 = icmp eq i32 %63, %0, !dbg !796
  br i1 %64, label %65, label %54, !dbg !800, !llvm.loop !805

; <label>:65:                                     ; preds = %54, %50, %47
  %66 = phi i8 [ %49, %47 ], [ 1, %50 ], [ %61, %54 ]
  call void @llvm.dbg.value(metadata i8 %66, i64 0, metadata !741, metadata !690), !dbg !793
  %67 = load i1, i1* @have_read_stdin, align 1
  br i1 %67, label %68, label %75, !dbg !807

; <label>:68:                                     ; preds = %65
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !809, !tbaa !697
  %70 = call i32 @rpl_fclose(%struct._IO_FILE* %69) #10, !dbg !810
  %71 = icmp eq i32 %70, -1, !dbg !811
  br i1 %71, label %72, label %75, !dbg !812

; <label>:72:                                     ; preds = %68
  %73 = tail call i32* @__errno_location() #17, !dbg !813
  %74 = load i32, i32* %73, align 4, !dbg !813, !tbaa !787
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !813
  unreachable, !dbg !813

; <label>:75:                                     ; preds = %68, %65
  %76 = and i8 %66, 1, !dbg !814
  %77 = xor i8 %76, 1, !dbg !814
  %78 = zext i8 %77 to i32, !dbg !814
  ret i32 %78, !dbg !815
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @fold_file(i8*, i64) unnamed_addr #6 !dbg !100 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !104, metadata !690), !dbg !816
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !105, metadata !690), !dbg !817
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !163, metadata !690), !dbg !818
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !164, metadata !690), !dbg !819
  %3 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #14, !dbg !820
  %4 = icmp eq i32 %3, 0, !dbg !820
  br i1 %4, label %5, label %7, !dbg !822

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !823, !tbaa !697
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %6, i64 0, metadata !106, metadata !690), !dbg !825
  store i1 true, i1* @have_read_stdin, align 1
  br label %9, !dbg !826

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)), !dbg !827
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %8, i64 0, metadata !106, metadata !690), !dbg !825
  br label %9

; <label>:9:                                      ; preds = %7, %5
  %10 = phi %struct._IO_FILE* [ %6, %5 ], [ %8, %7 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, i64 0, metadata !106, metadata !690), !dbg !825
  %11 = icmp eq %struct._IO_FILE* %10, null, !dbg !828
  br i1 %11, label %12, label %16, !dbg !830

; <label>:12:                                     ; preds = %9
  %13 = tail call i32* @__errno_location() #17, !dbg !831
  %14 = load i32, i32* %13, align 4, !dbg !831, !tbaa !787
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !833
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %15) #10, !dbg !834
  br label %181, !dbg !835

; <label>:16:                                     ; preds = %9
  tail call void @fadvise(%struct._IO_FILE* nonnull %10, i32 2) #10, !dbg !836
  %17 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 1
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 2
  br label %19, !dbg !837

; <label>:19:                                     ; preds = %49, %16
  %20 = phi i64 [ 0, %16 ], [ %50, %49 ]
  %21 = phi i64 [ 0, %16 ], [ %51, %49 ]
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !164, metadata !690), !dbg !819
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !163, metadata !690), !dbg !818
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, i64 0, metadata !838, metadata !690) #10, !dbg !844
  %22 = load i8*, i8** %17, align 8, !dbg !846, !tbaa !847
  %23 = load i8*, i8** %18, align 8, !dbg !846, !tbaa !851
  %24 = icmp ult i8* %22, %23, !dbg !846
  br i1 %24, label %25, label %29, !dbg !846, !prof !852

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !846
  store i8* %26, i8** %17, align 8, !dbg !846, !tbaa !847
  %27 = load i8, i8* %22, align 1, !dbg !846, !tbaa !775
  %28 = zext i8 %27 to i32, !dbg !846
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !162, metadata !690), !dbg !853
  br label %32, !dbg !837

; <label>:29:                                     ; preds = %19
  %30 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %10) #10, !dbg !846
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !162, metadata !690), !dbg !853
  %31 = icmp eq i32 %30, -1, !dbg !854
  br i1 %31, label %153, label %32, !dbg !837

; <label>:32:                                     ; preds = %25, %29
  %33 = phi i32 [ %28, %25 ], [ %30, %29 ]
  %34 = add i64 %21, 1, !dbg !855
  %35 = load i64, i64* @fold_file.allocated_out, align 8, !dbg !857, !tbaa !858
  %36 = icmp ult i64 %34, %35, !dbg !859
  br i1 %36, label %40, label %37, !dbg !860

; <label>:37:                                     ; preds = %32
  %38 = load i8*, i8** @fold_file.line_out, align 8, !dbg !861, !tbaa !697
  %39 = tail call i8* @x2realloc(i8* %38, i64* nonnull @fold_file.allocated_out) #10, !dbg !861
  store i8* %39, i8** @fold_file.line_out, align 8, !dbg !862, !tbaa !697
  br label %40, !dbg !863

; <label>:40:                                     ; preds = %32, %37
  %41 = icmp eq i32 %33, 10, !dbg !864
  %42 = trunc i32 %33 to i8
  br i1 %41, label %44, label %43, !dbg !866

; <label>:43:                                     ; preds = %40
  br label %52

; <label>:44:                                     ; preds = %40
  %45 = load i8*, i8** @fold_file.line_out, align 8, !dbg !867, !tbaa !697
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !164, metadata !690), !dbg !819
  %46 = getelementptr inbounds i8, i8* %45, i64 %21, !dbg !867
  store i8 %42, i8* %46, align 1, !dbg !869, !tbaa !775
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !870, !tbaa !697
  %48 = tail call i64 @fwrite_unlocked(i8* %45, i64 1, i64 %34, %struct._IO_FILE* %47) #10, !dbg !870
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !164, metadata !690), !dbg !819
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !163, metadata !690), !dbg !818
  br label %49, !dbg !871

; <label>:49:                                     ; preds = %44, %144, %148
  %50 = phi i64 [ 0, %44 ], [ %70, %144 ], [ %149, %148 ]
  %51 = phi i64 [ 0, %44 ], [ %142, %144 ], [ %151, %148 ]
  br label %19, !dbg !819, !llvm.loop !872

; <label>:52:                                     ; preds = %113, %43
  %53 = phi i64 [ %20, %43 ], [ %114, %113 ]
  %54 = phi i64 [ %21, %43 ], [ %115, %113 ]
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !164, metadata !690), !dbg !819
  tail call void @llvm.dbg.value(metadata i64 %53, i64 0, metadata !163, metadata !690), !dbg !818
  tail call void @llvm.dbg.value(metadata i64 %53, i64 0, metadata !874, metadata !690), !dbg !880
  tail call void @llvm.dbg.value(metadata i8 %42, i64 0, metadata !879, metadata !690), !dbg !882
  %55 = load i1, i1* @count_bytes, align 1
  br i1 %55, label %67, label %56, !dbg !883

; <label>:56:                                     ; preds = %52
  switch i8 %42, label %65 [
    i8 8, label %57
    i8 13, label %148
    i8 9, label %61
  ], !dbg !884

; <label>:57:                                     ; preds = %56
  %58 = icmp eq i64 %53, 0, !dbg !887
  %59 = add i64 %53, -1, !dbg !891
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !874, metadata !690), !dbg !880
  %60 = select i1 %58, i64 0, i64 %59, !dbg !892
  br label %69, !dbg !892

; <label>:61:                                     ; preds = %56
  %62 = and i64 %53, 7, !dbg !893
  %63 = add i64 %53, 8, !dbg !896
  %64 = sub i64 %63, %62, !dbg !897
  tail call void @llvm.dbg.value(metadata i64 %64, i64 0, metadata !874, metadata !690), !dbg !880
  br label %69, !dbg !898

; <label>:65:                                     ; preds = %56
  %66 = add i64 %53, 1, !dbg !899
  tail call void @llvm.dbg.value(metadata i64 %66, i64 0, metadata !874, metadata !690), !dbg !880
  br label %69

; <label>:67:                                     ; preds = %52
  %68 = add i64 %53, 1, !dbg !900
  tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !874, metadata !690), !dbg !880
  br label %69

; <label>:69:                                     ; preds = %61, %65, %67, %57
  %70 = phi i64 [ %60, %57 ], [ %68, %67 ], [ %64, %61 ], [ %66, %65 ]
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !163, metadata !690), !dbg !818
  %71 = icmp ugt i64 %70, %1, !dbg !901
  br i1 %71, label %72, label %148, !dbg !902

; <label>:72:                                     ; preds = %69
  %73 = load i1, i1* @break_spaces, align 1
  %74 = xor i1 %73, true, !dbg !903
  %75 = icmp eq i64 %54, 0, !dbg !904
  %76 = or i1 %75, %74, !dbg !903
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !166, metadata !690), !dbg !905
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !172, metadata !690), !dbg !906
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !172, metadata !690), !dbg !906
  br i1 %76, label %77, label %79, !dbg !903

; <label>:77:                                     ; preds = %72
  %78 = load i8*, i8** @fold_file.line_out, align 8, !tbaa !697
  br label %140, !dbg !903

; <label>:79:                                     ; preds = %72
  %80 = tail call i16** @__ctype_b_loc() #17, !dbg !907
  %81 = load i16*, i16** %80, align 8, !tbaa !697
  %82 = load i8*, i8** @fold_file.line_out, align 8, !tbaa !697
  br label %85, !dbg !904

; <label>:83:                                     ; preds = %85
  tail call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !172, metadata !690), !dbg !906
  %84 = icmp eq i64 %87, 0, !dbg !904
  br i1 %84, label %140, label %85, !dbg !904, !llvm.loop !910

; <label>:85:                                     ; preds = %79, %83
  %86 = phi i64 [ %54, %79 ], [ %87, %83 ]
  tail call void @llvm.dbg.value(metadata i64 %86, i64 0, metadata !172, metadata !690), !dbg !906
  %87 = add i64 %86, -1, !dbg !912
  tail call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !172, metadata !690), !dbg !906
  %88 = getelementptr inbounds i8, i8* %82, i64 %87, !dbg !907
  %89 = load i8, i8* %88, align 1, !dbg !907, !tbaa !775
  %90 = zext i8 %89 to i64, !dbg !907
  %91 = getelementptr inbounds i16, i16* %81, i64 %90, !dbg !907
  %92 = load i16, i16* %91, align 2, !dbg !907, !tbaa !913
  %93 = and i16 %92, 1, !dbg !907
  %94 = icmp eq i16 %93, 0, !dbg !907
  br i1 %94, label %83, label %95, !dbg !914

; <label>:95:                                     ; preds = %85
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !172, metadata !690), !dbg !906
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !915, !tbaa !697
  %97 = tail call i64 @fwrite_unlocked(i8* nonnull %82, i64 1, i64 %86, %struct._IO_FILE* %96) #10, !dbg !915
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !916, metadata !690) #10, !dbg !921
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !923, !tbaa !697
  %99 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %98, i64 0, i32 5, !dbg !923
  %100 = load i8*, i8** %99, align 8, !dbg !923, !tbaa !924
  %101 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %98, i64 0, i32 6, !dbg !923
  %102 = load i8*, i8** %101, align 8, !dbg !923, !tbaa !925
  %103 = icmp ult i8* %100, %102, !dbg !923
  br i1 %103, label %106, label %104, !dbg !923, !prof !852

; <label>:104:                                    ; preds = %95
  %105 = tail call i32 @__overflow(%struct._IO_FILE* %98, i32 10) #10, !dbg !923
  br label %108, !dbg !923

; <label>:106:                                    ; preds = %95
  %107 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !923
  store i8* %107, i8** %99, align 8, !dbg !923, !tbaa !924
  store i8 10, i8* %100, align 1, !dbg !923, !tbaa !775
  br label %108, !dbg !923

; <label>:108:                                    ; preds = %104, %106
  %109 = load i8*, i8** @fold_file.line_out, align 8, !dbg !926, !tbaa !697
  %110 = getelementptr inbounds i8, i8* %109, i64 %86, !dbg !927
  %111 = sub i64 %54, %86, !dbg !928
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %109, i8* %110, i64 %111, i32 1, i1 false), !dbg !929
  tail call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !164, metadata !690), !dbg !819
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !173, metadata !690), !dbg !930
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !163, metadata !690), !dbg !818
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !173, metadata !690), !dbg !930
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !163, metadata !690), !dbg !818
  %112 = icmp eq i64 %111, 0, !dbg !931
  br i1 %112, label %113, label %116, !dbg !934

; <label>:113:                                    ; preds = %136, %108, %145
  %114 = phi i64 [ 0, %145 ], [ 0, %108 ], [ %137, %136 ]
  %115 = phi i64 [ 0, %145 ], [ 0, %108 ], [ %111, %136 ]
  br label %52, !dbg !819

; <label>:116:                                    ; preds = %108
  %117 = load i1, i1* @count_bytes, align 1
  br label %118, !dbg !934

; <label>:118:                                    ; preds = %136, %116
  %119 = phi i64 [ 0, %116 ], [ %138, %136 ]
  %120 = phi i64 [ 0, %116 ], [ %137, %136 ]
  tail call void @llvm.dbg.value(metadata i64 %120, i64 0, metadata !874, metadata !690), !dbg !935
  tail call void @llvm.dbg.value(metadata i8 %123, i64 0, metadata !879, metadata !690), !dbg !937
  tail call void @llvm.dbg.value(metadata i64 %120, i64 0, metadata !163, metadata !690), !dbg !818
  tail call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !173, metadata !690), !dbg !930
  br i1 %117, label %134, label %121, !dbg !938

; <label>:121:                                    ; preds = %118
  %122 = getelementptr inbounds i8, i8* %109, i64 %119, !dbg !939
  %123 = load i8, i8* %122, align 1, !dbg !939, !tbaa !775
  switch i8 %123, label %132 [
    i8 8, label %124
    i8 13, label %136
    i8 9, label %128
  ], !dbg !940

; <label>:124:                                    ; preds = %121
  %125 = icmp eq i64 %120, 0, !dbg !941
  %126 = add i64 %120, -1, !dbg !942
  tail call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !874, metadata !690), !dbg !935
  %127 = select i1 %125, i64 0, i64 %126, !dbg !943
  br label %136, !dbg !943

; <label>:128:                                    ; preds = %121
  %129 = and i64 %120, 7, !dbg !944
  %130 = add i64 %120, 8, !dbg !945
  %131 = sub i64 %130, %129, !dbg !946
  tail call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !874, metadata !690), !dbg !935
  br label %136, !dbg !947

; <label>:132:                                    ; preds = %121
  %133 = add i64 %120, 1, !dbg !948
  tail call void @llvm.dbg.value(metadata i64 %133, i64 0, metadata !874, metadata !690), !dbg !935
  br label %136

; <label>:134:                                    ; preds = %118
  %135 = add i64 %120, 1, !dbg !949
  tail call void @llvm.dbg.value(metadata i64 %135, i64 0, metadata !874, metadata !690), !dbg !935
  br label %136

; <label>:136:                                    ; preds = %121, %128, %132, %134, %124
  %137 = phi i64 [ %127, %124 ], [ %135, %134 ], [ %131, %128 ], [ %133, %132 ], [ 0, %121 ]
  tail call void @llvm.dbg.value(metadata i64 %137, i64 0, metadata !163, metadata !690), !dbg !818
  %138 = add nuw i64 %119, 1, !dbg !950
  tail call void @llvm.dbg.value(metadata i64 %138, i64 0, metadata !173, metadata !690), !dbg !930
  tail call void @llvm.dbg.value(metadata i64 %138, i64 0, metadata !173, metadata !690), !dbg !930
  tail call void @llvm.dbg.value(metadata i64 %137, i64 0, metadata !163, metadata !690), !dbg !818
  %139 = icmp eq i64 %138, %111, !dbg !931
  br i1 %139, label %113, label %118, !dbg !934, !llvm.loop !951

; <label>:140:                                    ; preds = %83, %77
  %141 = phi i8* [ %78, %77 ], [ %82, %83 ]
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !164, metadata !690), !dbg !819
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !163, metadata !690), !dbg !818
  %142 = add i64 %54, 1
  tail call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !164, metadata !690), !dbg !819
  %143 = getelementptr inbounds i8, i8* %141, i64 %54
  br i1 %75, label %144, label %145, !dbg !953

; <label>:144:                                    ; preds = %140
  store i8 %42, i8* %143, align 1, !dbg !954, !tbaa !775
  br label %49, !dbg !957

; <label>:145:                                    ; preds = %140
  store i8 10, i8* %143, align 1, !dbg !958, !tbaa !775
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !959, !tbaa !697
  %147 = tail call i64 @fwrite_unlocked(i8* %141, i64 1, i64 %142, %struct._IO_FILE* %146) #10, !dbg !959
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !164, metadata !690), !dbg !819
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !163, metadata !690), !dbg !818
  br label %113, !dbg !960

; <label>:148:                                    ; preds = %56, %69
  %149 = phi i64 [ %70, %69 ], [ 0, %56 ]
  %150 = load i8*, i8** @fold_file.line_out, align 8, !dbg !961, !tbaa !697
  %151 = add i64 %54, 1, !dbg !962
  tail call void @llvm.dbg.value(metadata i64 %151, i64 0, metadata !164, metadata !690), !dbg !819
  %152 = getelementptr inbounds i8, i8* %150, i64 %54, !dbg !961
  store i8 %42, i8* %152, align 1, !dbg !963, !tbaa !775
  br label %49, !dbg !837

; <label>:153:                                    ; preds = %29
  %154 = tail call i32* @__errno_location() #17, !dbg !964
  %155 = load i32, i32* %154, align 4, !dbg !964, !tbaa !787
  tail call void @llvm.dbg.value(metadata i32 %155, i64 0, metadata !165, metadata !690), !dbg !965
  %156 = icmp eq i64 %21, 0, !dbg !966
  br i1 %156, label %161, label %157, !dbg !968

; <label>:157:                                    ; preds = %153
  %158 = load i8*, i8** @fold_file.line_out, align 8, !dbg !969, !tbaa !697
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !969, !tbaa !697
  %160 = tail call i64 @fwrite_unlocked(i8* %158, i64 1, i64 %21, %struct._IO_FILE* %159) #10, !dbg !969
  br label %161, !dbg !969

; <label>:161:                                    ; preds = %153, %157
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, i64 0, metadata !970, metadata !690), !dbg !973
  %162 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 0, !dbg !976
  %163 = load i32, i32* %162, align 8, !dbg !976, !tbaa !977
  %164 = and i32 %163, 32, !dbg !976
  %165 = icmp eq i32 %164, 0, !dbg !978
  br i1 %165, label %172, label %166, !dbg !979

; <label>:166:                                    ; preds = %161
  %167 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !980
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %167) #10, !dbg !982
  %168 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #14, !dbg !983
  %169 = icmp eq i32 %168, 0, !dbg !983
  br i1 %169, label %181, label %170, !dbg !985

; <label>:170:                                    ; preds = %166
  %171 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %10) #10, !dbg !986
  br label %181, !dbg !986

; <label>:172:                                    ; preds = %161
  %173 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #14, !dbg !987
  %174 = icmp eq i32 %173, 0, !dbg !987
  br i1 %174, label %181, label %175, !dbg !989

; <label>:175:                                    ; preds = %172
  %176 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %10) #10, !dbg !990
  %177 = icmp eq i32 %176, -1, !dbg !991
  br i1 %177, label %178, label %181, !dbg !992

; <label>:178:                                    ; preds = %175
  %179 = load i32, i32* %154, align 4, !dbg !993, !tbaa !787
  %180 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !995
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %180) #10, !dbg !996
  br label %181, !dbg !997

; <label>:181:                                    ; preds = %172, %175, %166, %170, %178, %12
  %182 = phi i1 [ false, %12 ], [ false, %178 ], [ false, %170 ], [ false, %166 ], [ true, %175 ], [ true, %172 ]
  ret i1 %182, !dbg !998
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !999 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1001, metadata !690), !dbg !1002
  store i8* %0, i8** @file_name, align 8, !dbg !1003, !tbaa !697
  ret void, !dbg !1004
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1005 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1009, metadata !690), !dbg !1010
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1011, !tbaa !1012
  ret void, !dbg !1014
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1015 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1020, !tbaa !697
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1021
  %3 = icmp eq i32 %2, 0, !dbg !1022
  br i1 %3, label %21, label %4, !dbg !1023

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1024, !tbaa !1012, !range !1025
  %6 = icmp eq i8 %5, 0, !dbg !1024
  %7 = tail call i32* @__errno_location() #17, !dbg !1026
  br i1 %6, label %11, label %8, !dbg !1028

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1029, !tbaa !787
  %10 = icmp eq i32 %9, 32, !dbg !1030
  br i1 %10, label %21, label %11, !dbg !1031

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !1032
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1017, metadata !690), !dbg !1033
  %13 = load i8*, i8** @file_name, align 8, !dbg !1034, !tbaa !697
  %14 = icmp eq i8* %13, null, !dbg !1034
  %15 = load i32, i32* %7, align 4, !tbaa !787
  br i1 %14, label %18, label %16, !dbg !1035

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1036
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.20, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1037
  br label %19, !dbg !1037

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.21, i64 0, i64 0), i8* %12) #10, !dbg !1038
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1039, !tbaa !787
  tail call void @_exit(i32 %20) #15, !dbg !1040
  unreachable, !dbg !1040

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1041, !tbaa !697
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1043
  %24 = icmp eq i32 %23, 0, !dbg !1044
  br i1 %24, label %27, label %25, !dbg !1045

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1046, !tbaa !787
  tail call void @_exit(i32 %26) #15, !dbg !1047
  unreachable, !dbg !1047

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1048
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1049 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1057, metadata !690), !dbg !1063
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1058, metadata !690), !dbg !1064
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1059, metadata !690), !dbg !1065
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1060, metadata !690), !dbg !1066
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1067
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1061, metadata !690), !dbg !1067
  ret void, !dbg !1068
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1069 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1113, metadata !690), !dbg !1115
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1114, metadata !690), !dbg !1116
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1117
  br i1 %3, label %7, label %4, !dbg !1119

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1120
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1057, metadata !690) #10, !dbg !1121
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1058, metadata !690) #10, !dbg !1123
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1059, metadata !690) #10, !dbg !1124
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1060, metadata !690) #10, !dbg !1125
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1126
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1061, metadata !690) #10, !dbg !1126
  br label %7, !dbg !1127

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1128
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1129 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1131, metadata !690), !dbg !1134
  %2 = icmp eq i8* %0, null, !dbg !1135
  br i1 %2, label %3, label %6, !dbg !1137

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1138, !tbaa !697
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1140
  tail call void @abort() #15, !dbg !1141
  unreachable, !dbg !1141

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1142
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1132, metadata !690), !dbg !1143
  %8 = icmp eq i8* %7, null, !dbg !1144
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1145
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1146
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1133, metadata !690), !dbg !1147
  %11 = ptrtoint i8* %10 to i64, !dbg !1148
  %12 = ptrtoint i8* %0 to i64, !dbg !1148
  %13 = sub i64 %11, %12, !dbg !1148
  %14 = icmp sgt i64 %13, 6, !dbg !1150
  br i1 %14, label %15, label %24, !dbg !1151

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1152
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.39, i64 0, i64 0), i64 7) #14, !dbg !1153
  %18 = icmp eq i32 %17, 0, !dbg !1154
  br i1 %18, label %19, label %24, !dbg !1155

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1131, metadata !690), !dbg !1134
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.40, i64 0, i64 0), i64 3) #14, !dbg !1156
  %21 = icmp eq i32 %20, 0, !dbg !1159
  br i1 %21, label %22, label %24, !dbg !1160

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1161
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1131, metadata !690), !dbg !1134
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1163, !tbaa !697
  br label %24, !dbg !1164

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1131, metadata !690), !dbg !1134
  store i8* %25, i8** @program_name, align 8, !dbg !1165, !tbaa !697
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1166, !tbaa !697
  ret void, !dbg !1167
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1168 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1173, metadata !690), !dbg !1176
  %2 = tail call i32* @__errno_location() #17, !dbg !1177
  %3 = load i32, i32* %2, align 4, !dbg !1177, !tbaa !787
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1174, metadata !690), !dbg !1178
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1179
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1179
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1179
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1180
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1180
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1175, metadata !690), !dbg !1181
  store i32 %3, i32* %2, align 4, !dbg !1182, !tbaa !787
  ret %struct.quoting_options* %8, !dbg !1183
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1184 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1190, metadata !690), !dbg !1191
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1192
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1192
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1193
  %5 = load i32, i32* %4, align 8, !dbg !1193, !tbaa !1194
  ret i32 %5, !dbg !1196
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1197 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1201, metadata !690), !dbg !1203
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1202, metadata !690), !dbg !1204
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1205
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1205
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1206
  store i32 %1, i32* %5, align 8, !dbg !1207, !tbaa !1194
  ret void, !dbg !1208
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1209 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1213, metadata !690), !dbg !1221
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1214, metadata !690), !dbg !1222
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1215, metadata !690), !dbg !1223
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1216, metadata !690), !dbg !1224
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1225
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1225
  %6 = lshr i8 %1, 5, !dbg !1226
  %7 = zext i8 %6 to i64, !dbg !1226
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1227
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1217, metadata !690), !dbg !1228
  %9 = and i8 %1, 31, !dbg !1229
  %10 = zext i8 %9 to i32, !dbg !1230
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1219, metadata !690), !dbg !1231
  %11 = load i32, i32* %8, align 4, !dbg !1232, !tbaa !787
  %12 = lshr i32 %11, %10, !dbg !1233
  %13 = and i32 %12, 1, !dbg !1234
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1220, metadata !690), !dbg !1235
  %14 = and i32 %2, 1, !dbg !1236
  %15 = xor i32 %13, %14, !dbg !1237
  %16 = shl i32 %15, %10, !dbg !1238
  %17 = xor i32 %16, %11, !dbg !1239
  store i32 %17, i32* %8, align 4, !dbg !1239, !tbaa !787
  ret i32 %13, !dbg !1240
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1241 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1245, metadata !690), !dbg !1248
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1246, metadata !690), !dbg !1249
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1250
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1245, metadata !690), !dbg !1248
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1252
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1245, metadata !690), !dbg !1248
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1253
  %6 = load i32, i32* %5, align 4, !dbg !1253, !tbaa !1254
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1247, metadata !690), !dbg !1255
  store i32 %1, i32* %5, align 4, !dbg !1256, !tbaa !1254
  ret i32 %6, !dbg !1257
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1258 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1262, metadata !690), !dbg !1265
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1263, metadata !690), !dbg !1266
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1264, metadata !690), !dbg !1267
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1268
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1262, metadata !690), !dbg !1265
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1270
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1262, metadata !690), !dbg !1265
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1271
  store i32 10, i32* %6, align 8, !dbg !1272, !tbaa !1194
  %7 = icmp ne i8* %1, null, !dbg !1273
  %8 = icmp ne i8* %2, null, !dbg !1275
  %9 = and i1 %7, %8, !dbg !1276
  br i1 %9, label %11, label %10, !dbg !1276

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1277
  unreachable, !dbg !1277

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1278
  store i8* %1, i8** %12, align 8, !dbg !1279, !tbaa !1280
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1281
  store i8* %2, i8** %13, align 8, !dbg !1282, !tbaa !1283
  ret void, !dbg !1284
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1285 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1289, metadata !690), !dbg !1297
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1290, metadata !690), !dbg !1298
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1291, metadata !690), !dbg !1299
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1292, metadata !690), !dbg !1300
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1293, metadata !690), !dbg !1301
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1302
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1302
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1294, metadata !690), !dbg !1303
  %8 = tail call i32* @__errno_location() #17, !dbg !1304
  %9 = load i32, i32* %8, align 4, !dbg !1304, !tbaa !787
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1295, metadata !690), !dbg !1305
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1306
  %11 = load i32, i32* %10, align 8, !dbg !1306, !tbaa !1194
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1307
  %13 = load i32, i32* %12, align 4, !dbg !1307, !tbaa !1254
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1308
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1309
  %16 = load i8*, i8** %15, align 8, !dbg !1309, !tbaa !1280
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1310
  %18 = load i8*, i8** %17, align 8, !dbg !1310, !tbaa !1283
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1311
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1296, metadata !690), !dbg !1312
  store i32 %9, i32* %8, align 4, !dbg !1313, !tbaa !787
  ret i64 %19, !dbg !1314
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1315 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1321, metadata !690), !dbg !1385
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1322, metadata !690), !dbg !1386
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1323, metadata !690), !dbg !1387
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1324, metadata !690), !dbg !1388
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1325, metadata !690), !dbg !1389
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1326, metadata !690), !dbg !1390
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1327, metadata !690), !dbg !1391
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1328, metadata !690), !dbg !1392
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1329, metadata !690), !dbg !1393
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1331, metadata !690), !dbg !1394
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1332, metadata !690), !dbg !1395
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1333, metadata !690), !dbg !1396
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1334, metadata !690), !dbg !1397
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1335, metadata !690), !dbg !1398
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1399
  %14 = icmp eq i64 %13, 1, !dbg !1400
  %15 = lshr i32 %5, 1, !dbg !1401
  %16 = trunc i32 %15 to i8, !dbg !1401
  %17 = and i8 %16, 1, !dbg !1401
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1337, metadata !690), !dbg !1401
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1338, metadata !690), !dbg !1402
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1339, metadata !690), !dbg !1403
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1340, metadata !690), !dbg !1404
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1405

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1322, metadata !690), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1340, metadata !690), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1339, metadata !690), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1338, metadata !690), !dbg !1402
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1337, metadata !690), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1324, metadata !690), !dbg !1388
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1335, metadata !690), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1334, metadata !690), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1333, metadata !690), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1332, metadata !690), !dbg !1395
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1329, metadata !690), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1328, metadata !690), !dbg !1392
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1325, metadata !690), !dbg !1389
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
  ], !dbg !1406

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1325, metadata !690), !dbg !1389
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1337, metadata !690), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1337, metadata !690), !dbg !1401
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1325, metadata !690), !dbg !1389
  br label %94, !dbg !1407

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1337, metadata !690), !dbg !1401
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1325, metadata !690), !dbg !1389
  %43 = and i8 %36, 1, !dbg !1409
  %44 = icmp eq i8 %43, 0, !dbg !1409
  br i1 %44, label %45, label %94, !dbg !1407

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1411
  br i1 %46, label %94, label %47, !dbg !1414

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1411, !tbaa !775
  br label %94, !dbg !1411

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.51, i64 0, i64 0), i32 %28), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1328, metadata !690), !dbg !1392
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), i32 %28), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1329, metadata !690), !dbg !1393
  br label %51, !dbg !1420

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1329, metadata !690), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1328, metadata !690), !dbg !1392
  %54 = and i8 %36, 1, !dbg !1421
  %55 = icmp eq i8 %54, 0, !dbg !1421
  br i1 %55, label %56, label %72, !dbg !1423

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1333, metadata !690), !dbg !1396
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1333, metadata !690), !dbg !1396
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1331, metadata !690), !dbg !1394
  %57 = load i8, i8* %52, align 1, !dbg !1424, !tbaa !775
  %58 = icmp eq i8 %57, 0, !dbg !1427
  br i1 %58, label %72, label %59, !dbg !1427

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1428

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1333, metadata !690), !dbg !1396
  %64 = icmp ult i64 %63, %40, !dbg !1428
  br i1 %64, label %65, label %67, !dbg !1431

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1428
  store i8 %61, i8* %66, align 1, !dbg !1428, !tbaa !775
  br label %67, !dbg !1428

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1331, metadata !690), !dbg !1394
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1432
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1333, metadata !690), !dbg !1396
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1333, metadata !690), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1331, metadata !690), !dbg !1394
  %70 = load i8, i8* %69, align 1, !dbg !1424, !tbaa !775
  %71 = icmp eq i8 %70, 0, !dbg !1427
  br i1 %71, label %72, label %60, !dbg !1427, !llvm.loop !1433

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1335, metadata !690), !dbg !1398
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1333, metadata !690), !dbg !1396
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1435
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1334, metadata !690), !dbg !1397
  br label %94, !dbg !1436

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1335, metadata !690), !dbg !1398
  br label %76, !dbg !1437

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1335, metadata !690), !dbg !1398
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1337, metadata !690), !dbg !1401
  br label %78, !dbg !1438

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1337, metadata !690), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1335, metadata !690), !dbg !1398
  %81 = and i8 %80, 1, !dbg !1439
  %82 = icmp eq i8 %81, 0, !dbg !1439
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1335, metadata !690), !dbg !1398
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1441
  br label %84, !dbg !1441

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1337, metadata !690), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1335, metadata !690), !dbg !1398
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1325, metadata !690), !dbg !1389
  %87 = and i8 %86, 1, !dbg !1442
  %88 = icmp eq i8 %87, 0, !dbg !1442
  br i1 %88, label %89, label %94, !dbg !1444

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1445
  br i1 %90, label %94, label %91, !dbg !1448

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1445, !tbaa !775
  br label %94, !dbg !1445

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1337, metadata !690), !dbg !1401
  br label %94, !dbg !1449

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1450
  unreachable, !dbg !1450

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1337, metadata !690), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1335, metadata !690), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1334, metadata !690), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1333, metadata !690), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1329, metadata !690), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1328, metadata !690), !dbg !1392
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1325, metadata !690), !dbg !1389
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1330, metadata !690), !dbg !1451
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
  br label %122, !dbg !1452

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1322, metadata !690), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1340, metadata !690), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1339, metadata !690), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1338, metadata !690), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1324, metadata !690), !dbg !1388
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1332, metadata !690), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1330, metadata !690), !dbg !1451
  %131 = icmp eq i64 %126, -1, !dbg !1453
  br i1 %131, label %134, label %132, !dbg !1454

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1455
  br i1 %133, label %590, label %138, !dbg !1456

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1457
  %136 = load i8, i8* %135, align 1, !dbg !1457, !tbaa !775
  %137 = icmp eq i8 %136, 0, !dbg !1458
  br i1 %137, label %590, label %138, !dbg !1456

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1346, metadata !690), !dbg !1459
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1347, metadata !690), !dbg !1460
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1348, metadata !690), !dbg !1461
  br i1 %108, label %139, label %154, !dbg !1462

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1464
  %141 = and i1 %109, %131, !dbg !1465
  br i1 %141, label %142, label %144, !dbg !1465

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1466
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1324, metadata !690), !dbg !1388
  br label %144, !dbg !1467

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1324, metadata !690), !dbg !1388
  %146 = icmp ugt i64 %140, %145, !dbg !1468
  br i1 %146, label %154, label %147, !dbg !1469

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1470
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1471
  %150 = icmp ne i32 %149, 0, !dbg !1472
  %151 = or i1 %150, %111, !dbg !1473
  %152 = xor i1 %150, true, !dbg !1473
  %153 = zext i1 %152 to i8, !dbg !1473
  br i1 %151, label %154, label %635, !dbg !1473

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1346, metadata !690), !dbg !1459
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1324, metadata !690), !dbg !1388
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1474
  %158 = load i8, i8* %157, align 1, !dbg !1474, !tbaa !775
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1341, metadata !690), !dbg !1475
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
  ], !dbg !1476

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1477

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1478

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1347, metadata !690), !dbg !1460
  %162 = and i8 %127, 1, !dbg !1482
  %163 = icmp eq i8 %162, 0, !dbg !1482
  %164 = and i1 %113, %163, !dbg !1482
  br i1 %164, label %165, label %181, !dbg !1482

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1484
  br i1 %166, label %167, label %169, !dbg !1488

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1484
  store i8 39, i8* %168, align 1, !dbg !1484, !tbaa !775
  br label %169, !dbg !1484

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1331, metadata !690), !dbg !1394
  %171 = icmp ult i64 %170, %130, !dbg !1489
  br i1 %171, label %172, label %174, !dbg !1492

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1489
  store i8 36, i8* %173, align 1, !dbg !1489, !tbaa !775
  br label %174, !dbg !1489

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1331, metadata !690), !dbg !1394
  %176 = icmp ult i64 %175, %130, !dbg !1493
  br i1 %176, label %177, label %179, !dbg !1496

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1493
  store i8 39, i8* %178, align 1, !dbg !1493, !tbaa !775
  br label %179, !dbg !1493

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1338, metadata !690), !dbg !1402
  br label %181, !dbg !1497

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1338, metadata !690), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1331, metadata !690), !dbg !1394
  %184 = icmp ult i64 %182, %130, !dbg !1498
  br i1 %184, label %185, label %187, !dbg !1501

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1498
  store i8 92, i8* %186, align 1, !dbg !1498, !tbaa !775
  br label %187, !dbg !1498

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1501
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1331, metadata !690), !dbg !1394
  br i1 %105, label %189, label %470, !dbg !1502

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1504
  %191 = icmp ult i64 %190, %155, !dbg !1505
  br i1 %191, label %192, label %470, !dbg !1506

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1507
  %194 = load i8, i8* %193, align 1, !dbg !1507, !tbaa !775
  %195 = add i8 %194, -48, !dbg !1508
  %196 = icmp ult i8 %195, 10, !dbg !1508
  br i1 %196, label %197, label %470, !dbg !1508

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1509
  br i1 %198, label %199, label %201, !dbg !1513

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1509
  store i8 48, i8* %200, align 1, !dbg !1509, !tbaa !775
  br label %201, !dbg !1509

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1331, metadata !690), !dbg !1394
  %203 = icmp ult i64 %202, %130, !dbg !1514
  br i1 %203, label %204, label %206, !dbg !1517

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1514
  store i8 48, i8* %205, align 1, !dbg !1514, !tbaa !775
  br label %206, !dbg !1514

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1331, metadata !690), !dbg !1394
  br label %470, !dbg !1518

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1519

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1520

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1521

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1523

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1525
  %214 = icmp ult i64 %213, %155, !dbg !1526
  br i1 %214, label %215, label %470, !dbg !1527

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1528
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1529
  %218 = load i8, i8* %217, align 1, !dbg !1529, !tbaa !775
  %219 = icmp eq i8 %218, 63, !dbg !1530
  br i1 %219, label %220, label %470, !dbg !1531

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1532
  %222 = load i8, i8* %221, align 1, !dbg !1532, !tbaa !775
  %223 = sext i8 %222 to i32, !dbg !1532
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
  ], !dbg !1533

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1534

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1341, metadata !690), !dbg !1475
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1330, metadata !690), !dbg !1451
  %226 = icmp ult i64 %124, %130, !dbg !1536
  br i1 %226, label %227, label %229, !dbg !1539

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1536
  store i8 63, i8* %228, align 1, !dbg !1536, !tbaa !775
  br label %229, !dbg !1536

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1331, metadata !690), !dbg !1394
  %231 = icmp ult i64 %230, %130, !dbg !1540
  br i1 %231, label %232, label %234, !dbg !1543

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1540
  store i8 34, i8* %233, align 1, !dbg !1540, !tbaa !775
  br label %234, !dbg !1540

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1331, metadata !690), !dbg !1394
  %236 = icmp ult i64 %235, %130, !dbg !1544
  br i1 %236, label %237, label %239, !dbg !1547

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1544
  store i8 34, i8* %238, align 1, !dbg !1544, !tbaa !775
  br label %239, !dbg !1544

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1547
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1331, metadata !690), !dbg !1394
  %241 = icmp ult i64 %240, %130, !dbg !1548
  br i1 %241, label %242, label %244, !dbg !1551

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1548
  store i8 63, i8* %243, align 1, !dbg !1548, !tbaa !775
  br label %244, !dbg !1548

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1331, metadata !690), !dbg !1394
  br label %470, !dbg !1552

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1345, metadata !690), !dbg !1553
  br label %256, !dbg !1554

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1345, metadata !690), !dbg !1553
  br label %256, !dbg !1555

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1345, metadata !690), !dbg !1553
  br label %254, !dbg !1556

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1345, metadata !690), !dbg !1553
  br label %254, !dbg !1557

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1345, metadata !690), !dbg !1553
  br label %256, !dbg !1558

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1345, metadata !690), !dbg !1553
  br i1 %113, label %252, label %253, !dbg !1559

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1560

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1563

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1345, metadata !690), !dbg !1553
  br i1 %117, label %256, label %635, !dbg !1565

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1345, metadata !690), !dbg !1553
  br i1 %104, label %497, label %470, !dbg !1567

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1568
  br i1 %259, label %260, label %265, !dbg !1570

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1571, !tbaa !775
  %262 = icmp ne i8 %261, 0, !dbg !1572
  %263 = icmp ne i64 %123, 0, !dbg !1573
  %264 = or i1 %263, %262, !dbg !1575
  br i1 %264, label %470, label %271, !dbg !1575

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1576
  %267 = icmp ne i64 %123, 0, !dbg !1573
  %268 = or i1 %267, %266, !dbg !1570
  br i1 %268, label %470, label %271, !dbg !1570

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1573
  br i1 %270, label %271, label %470, !dbg !1577

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1348, metadata !690), !dbg !1461
  br label %272, !dbg !1578

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1348, metadata !690), !dbg !1461
  br i1 %117, label %470, label %635, !dbg !1579

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1339, metadata !690), !dbg !1403
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1348, metadata !690), !dbg !1461
  br i1 %113, label %275, label %470, !dbg !1581

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1582

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1585
  %278 = icmp ne i64 %125, 0, !dbg !1587
  %279 = or i1 %278, %277, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1332, metadata !690), !dbg !1395
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1322, metadata !690), !dbg !1386
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1588
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1322, metadata !690), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1332, metadata !690), !dbg !1395
  %282 = icmp ult i64 %124, %281, !dbg !1589
  br i1 %282, label %283, label %285, !dbg !1592

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1589
  store i8 39, i8* %284, align 1, !dbg !1589, !tbaa !775
  br label %285, !dbg !1589

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1331, metadata !690), !dbg !1394
  %287 = icmp ult i64 %286, %281, !dbg !1593
  br i1 %287, label %288, label %290, !dbg !1596

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1593
  store i8 92, i8* %289, align 1, !dbg !1593, !tbaa !775
  br label %290, !dbg !1593

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1331, metadata !690), !dbg !1394
  %292 = icmp ult i64 %291, %281, !dbg !1597
  br i1 %292, label %293, label %295, !dbg !1600

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1597
  store i8 39, i8* %294, align 1, !dbg !1597, !tbaa !775
  br label %295, !dbg !1597

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1338, metadata !690), !dbg !1402
  br label %470, !dbg !1601

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1602

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1349, metadata !690), !dbg !1603
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1604
  %300 = load i16*, i16** %299, align 8, !dbg !1604, !tbaa !697
  %301 = zext i8 %158 to i64, !dbg !1604
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1604
  %303 = load i16, i16* %302, align 2, !dbg !1604, !tbaa !913
  %304 = lshr i16 %303, 14, !dbg !1606
  %305 = trunc i16 %304 to i8, !dbg !1606
  %306 = and i8 %305, 1, !dbg !1606
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1352, metadata !690), !dbg !1607
  br label %362, !dbg !1608

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1609
  store i64 0, i64* %10, align 8, !dbg !1610
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1349, metadata !690), !dbg !1603
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1352, metadata !690), !dbg !1607
  %308 = icmp eq i64 %155, -1, !dbg !1611
  br i1 %308, label %309, label %311, !dbg !1613

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1614
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1324, metadata !690), !dbg !1388
  br label %311, !dbg !1615

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1324, metadata !690), !dbg !1388
  br label %313, !dbg !1616, !llvm.loop !1617

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1352, metadata !690), !dbg !1607
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1349, metadata !690), !dbg !1603
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1619
  %316 = add i64 %314, %123, !dbg !1620
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1621
  %318 = sub i64 %312, %316, !dbg !1622
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1353, metadata !690), !dbg !1623
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1371, metadata !690), !dbg !1624
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1374, metadata !690), !dbg !1626
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1627

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1352, metadata !690), !dbg !1607
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1349, metadata !690), !dbg !1603
  %321 = icmp ugt i64 %312, %316, !dbg !1628
  br i1 %321, label %322, label %347, !dbg !1630

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1631

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1349, metadata !690), !dbg !1603
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1631
  %327 = load i8, i8* %326, align 1, !dbg !1631, !tbaa !775
  %328 = icmp eq i8 %327, 0, !dbg !1630
  br i1 %328, label %347, label %329, !dbg !1632

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1349, metadata !690), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1349, metadata !690), !dbg !1603
  %331 = add i64 %330, %123, !dbg !1634
  %332 = icmp ult i64 %331, %312, !dbg !1628
  br i1 %332, label %323, label %347, !dbg !1630, !llvm.loop !1635

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1636
  %335 = and i1 %115, %334, !dbg !1639
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1375, metadata !690), !dbg !1640
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1375, metadata !690), !dbg !1640
  br i1 %335, label %336, label %350, !dbg !1639

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1641

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1375, metadata !690), !dbg !1640
  %339 = add i64 %338, %316, !dbg !1641
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1642
  %341 = load i8, i8* %340, align 1, !dbg !1642, !tbaa !775
  %342 = sext i8 %341 to i32, !dbg !1642
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1643

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1375, metadata !690), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1375, metadata !690), !dbg !1640
  %345 = icmp ult i64 %344, %319, !dbg !1636
  br i1 %345, label %337, label %350, !dbg !1645, !llvm.loop !1646

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1648

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1352, metadata !690), !dbg !1607
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1349, metadata !690), !dbg !1603
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1648
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1649, !tbaa !787
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1371, metadata !690), !dbg !1624
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !1651
  %353 = icmp eq i32 %352, 0, !dbg !1651
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1352, metadata !690), !dbg !1607
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1652
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1352, metadata !690), !dbg !1607
  %355 = add i64 %319, %314, !dbg !1653
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1349, metadata !690), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1352, metadata !690), !dbg !1607
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1349, metadata !690), !dbg !1603
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1648
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1353, metadata !690), !dbg !1623
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1654
  %357 = icmp eq i32 %356, 0, !dbg !1655
  br i1 %357, label %313, label %358, !dbg !1656, !llvm.loop !1617

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1657
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1352, metadata !690), !dbg !1607
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1349, metadata !690), !dbg !1603
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1648
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1657
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1352, metadata !690), !dbg !1607
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1349, metadata !690), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1324, metadata !690), !dbg !1388
  %366 = and i8 %365, 1, !dbg !1658
  %367 = icmp ne i8 %366, 0, !dbg !1658
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1348, metadata !690), !dbg !1461
  %368 = icmp ult i64 %364, 2, !dbg !1659
  %369 = or i1 %367, %112, !dbg !1660
  %370 = and i1 %368, %369, !dbg !1661
  br i1 %370, label %470, label %371, !dbg !1661

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1382, metadata !690), !dbg !1663
  br label %373, !dbg !1664

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1347, metadata !690), !dbg !1460
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1346, metadata !690), !dbg !1459
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1341, metadata !690), !dbg !1475
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1338, metadata !690), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1330, metadata !690), !dbg !1451
  br i1 %369, label %426, label %380, !dbg !1665

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1670

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1347, metadata !690), !dbg !1460
  %382 = and i8 %376, 1, !dbg !1673
  %383 = icmp eq i8 %382, 0, !dbg !1673
  %384 = and i1 %113, %383, !dbg !1673
  br i1 %384, label %385, label %401, !dbg !1673

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1675
  br i1 %386, label %387, label %389, !dbg !1679

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1675
  store i8 39, i8* %388, align 1, !dbg !1675, !tbaa !775
  br label %389, !dbg !1675

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1331, metadata !690), !dbg !1394
  %391 = icmp ult i64 %390, %130, !dbg !1680
  br i1 %391, label %392, label %394, !dbg !1683

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1680
  store i8 36, i8* %393, align 1, !dbg !1680, !tbaa !775
  br label %394, !dbg !1680

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1331, metadata !690), !dbg !1394
  %396 = icmp ult i64 %395, %130, !dbg !1684
  br i1 %396, label %397, label %399, !dbg !1687

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1684
  store i8 39, i8* %398, align 1, !dbg !1684, !tbaa !775
  br label %399, !dbg !1684

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1338, metadata !690), !dbg !1402
  br label %401, !dbg !1688

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1338, metadata !690), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1331, metadata !690), !dbg !1394
  %404 = icmp ult i64 %402, %130, !dbg !1689
  br i1 %404, label %405, label %407, !dbg !1692

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1689
  store i8 92, i8* %406, align 1, !dbg !1689, !tbaa !775
  br label %407, !dbg !1689

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1331, metadata !690), !dbg !1394
  %409 = icmp ult i64 %408, %130, !dbg !1693
  br i1 %409, label %410, label %414, !dbg !1696

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1693
  %412 = or i8 %411, 48, !dbg !1693
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1693
  store i8 %412, i8* %413, align 1, !dbg !1693, !tbaa !775
  br label %414, !dbg !1693

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1696
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1331, metadata !690), !dbg !1394
  %416 = icmp ult i64 %415, %130, !dbg !1697
  br i1 %416, label %417, label %422, !dbg !1700

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1697
  %419 = and i8 %418, 7, !dbg !1697
  %420 = or i8 %419, 48, !dbg !1697
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1697
  store i8 %420, i8* %421, align 1, !dbg !1697, !tbaa !775
  br label %422, !dbg !1697

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1331, metadata !690), !dbg !1394
  %424 = and i8 %377, 7, !dbg !1701
  %425 = or i8 %424, 48, !dbg !1702
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1341, metadata !690), !dbg !1475
  br label %435, !dbg !1703

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1704
  %428 = icmp eq i8 %427, 0, !dbg !1704
  br i1 %428, label %435, label %429, !dbg !1706

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1707
  br i1 %430, label %431, label %433, !dbg !1711

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1707
  store i8 92, i8* %432, align 1, !dbg !1707, !tbaa !775
  br label %433, !dbg !1707

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1711
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1346, metadata !690), !dbg !1459
  br label %435, !dbg !1712

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1347, metadata !690), !dbg !1460
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1346, metadata !690), !dbg !1459
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1341, metadata !690), !dbg !1475
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1338, metadata !690), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1331, metadata !690), !dbg !1394
  %441 = add i64 %374, 1, !dbg !1713
  %442 = icmp ugt i64 %372, %441, !dbg !1715
  br i1 %442, label %443, label %535, !dbg !1716

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1717
  %445 = icmp ne i8 %444, 0, !dbg !1717
  %446 = and i8 %440, 1, !dbg !1717
  %447 = icmp eq i8 %446, 0, !dbg !1717
  %448 = and i1 %445, %447, !dbg !1717
  br i1 %448, label %449, label %460, !dbg !1717

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1720
  br i1 %450, label %451, label %453, !dbg !1724

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1720
  store i8 39, i8* %452, align 1, !dbg !1720, !tbaa !775
  br label %453, !dbg !1720

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1724
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1331, metadata !690), !dbg !1394
  %455 = icmp ult i64 %454, %130, !dbg !1725
  br i1 %455, label %456, label %458, !dbg !1728

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1725
  store i8 39, i8* %457, align 1, !dbg !1725, !tbaa !775
  br label %458, !dbg !1725

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1728
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1338, metadata !690), !dbg !1402
  br label %460, !dbg !1729

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1338, metadata !690), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1331, metadata !690), !dbg !1394
  %463 = icmp ult i64 %461, %130, !dbg !1730
  br i1 %463, label %464, label %466, !dbg !1733

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1730
  store i8 %438, i8* %465, align 1, !dbg !1730, !tbaa !775
  br label %466, !dbg !1730

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1733
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1330, metadata !690), !dbg !1451
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1734
  %469 = load i8, i8* %468, align 1, !dbg !1734, !tbaa !775
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1341, metadata !690), !dbg !1475
  br label %373, !dbg !1735, !llvm.loop !1736

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1322, metadata !690), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1348, metadata !690), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1347, metadata !690), !dbg !1460
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1346, metadata !690), !dbg !1459
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1341, metadata !690), !dbg !1475
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1339, metadata !690), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1338, metadata !690), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1324, metadata !690), !dbg !1388
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1332, metadata !690), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1330, metadata !690), !dbg !1451
  br i1 %106, label %482, label %481, !dbg !1739

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1741

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1742

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1743
  %485 = zext i8 %484 to i64, !dbg !1743
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1744
  %487 = load i32, i32* %486, align 4, !dbg !1744, !tbaa !787
  %488 = and i8 %477, 31, !dbg !1745
  %489 = zext i8 %488 to i32, !dbg !1746
  %490 = shl i32 1, %489, !dbg !1747
  %491 = and i32 %487, %490, !dbg !1747
  %492 = icmp eq i32 %491, 0, !dbg !1747
  %493 = icmp eq i8 %156, 0, !dbg !1748
  %494 = and i1 %493, %492, !dbg !1749
  br i1 %494, label %535, label %497, !dbg !1749

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1748
  br i1 %496, label %535, label %497, !dbg !1750

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1322, metadata !690), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1348, metadata !690), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1341, metadata !690), !dbg !1475
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1339, metadata !690), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1338, metadata !690), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1324, metadata !690), !dbg !1388
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1332, metadata !690), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1330, metadata !690), !dbg !1451
  br i1 %111, label %507, label %635, !dbg !1751

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1347, metadata !690), !dbg !1460
  %508 = and i8 %502, 1, !dbg !1753
  %509 = icmp eq i8 %508, 0, !dbg !1753
  %510 = and i1 %113, %509, !dbg !1753
  br i1 %510, label %511, label %527, !dbg !1753

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1755
  br i1 %512, label %513, label %515, !dbg !1759

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1755
  store i8 39, i8* %514, align 1, !dbg !1755, !tbaa !775
  br label %515, !dbg !1755

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1331, metadata !690), !dbg !1394
  %517 = icmp ult i64 %516, %506, !dbg !1760
  br i1 %517, label %518, label %520, !dbg !1763

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1760
  store i8 36, i8* %519, align 1, !dbg !1760, !tbaa !775
  br label %520, !dbg !1760

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1331, metadata !690), !dbg !1394
  %522 = icmp ult i64 %521, %506, !dbg !1764
  br i1 %522, label %523, label %525, !dbg !1767

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1764
  store i8 39, i8* %524, align 1, !dbg !1764, !tbaa !775
  br label %525, !dbg !1764

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1338, metadata !690), !dbg !1402
  br label %527, !dbg !1768

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1338, metadata !690), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1331, metadata !690), !dbg !1394
  %530 = icmp ult i64 %528, %506, !dbg !1769
  br i1 %530, label %531, label %533, !dbg !1772

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1769
  store i8 92, i8* %532, align 1, !dbg !1769, !tbaa !775
  br label %533, !dbg !1769

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1322, metadata !690), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1348, metadata !690), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1347, metadata !690), !dbg !1460
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1341, metadata !690), !dbg !1475
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1339, metadata !690), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1338, metadata !690), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1324, metadata !690), !dbg !1388
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1332, metadata !690), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1330, metadata !690), !dbg !1451
  br label %562, !dbg !1773

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1322, metadata !690), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1348, metadata !690), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1347, metadata !690), !dbg !1460
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1341, metadata !690), !dbg !1475
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1339, metadata !690), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1338, metadata !690), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1324, metadata !690), !dbg !1388
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1332, metadata !690), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1330, metadata !690), !dbg !1451
  %546 = and i8 %540, 1, !dbg !1773
  %547 = icmp ne i8 %546, 0, !dbg !1773
  %548 = and i8 %543, 1, !dbg !1773
  %549 = icmp eq i8 %548, 0, !dbg !1773
  %550 = and i1 %547, %549, !dbg !1773
  br i1 %550, label %551, label %562, !dbg !1773

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1776
  br i1 %552, label %553, label %555, !dbg !1780

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1776
  store i8 39, i8* %554, align 1, !dbg !1776, !tbaa !775
  br label %555, !dbg !1776

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1331, metadata !690), !dbg !1394
  %557 = icmp ult i64 %556, %545, !dbg !1781
  br i1 %557, label %558, label %560, !dbg !1784

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1781
  store i8 39, i8* %559, align 1, !dbg !1781, !tbaa !775
  br label %560, !dbg !1781

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1338, metadata !690), !dbg !1402
  br label %562, !dbg !1785

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1338, metadata !690), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1331, metadata !690), !dbg !1394
  %572 = icmp ult i64 %570, %563, !dbg !1786
  br i1 %572, label %573, label %575, !dbg !1789

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1786
  store i8 %565, i8* %574, align 1, !dbg !1786, !tbaa !775
  br label %575, !dbg !1786

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1331, metadata !690), !dbg !1394
  %577 = and i8 %564, 1, !dbg !1790
  %578 = icmp eq i8 %577, 0, !dbg !1790
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1340, metadata !690), !dbg !1404
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1792
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1340, metadata !690), !dbg !1404
  br label %580, !dbg !1793

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1322, metadata !690), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1340, metadata !690), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1339, metadata !690), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1338, metadata !690), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1324, metadata !690), !dbg !1388
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1332, metadata !690), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1330, metadata !690), !dbg !1451
  %589 = add i64 %581, 1, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1330, metadata !690), !dbg !1451
  br label %122, !dbg !1795, !llvm.loop !1796

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1798
  %593 = and i1 %113, %592, !dbg !1800
  %594 = xor i1 %593, true, !dbg !1800
  %595 = or i1 %111, %594, !dbg !1800
  br i1 %595, label %596, label %635, !dbg !1800

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1801
  %598 = xor i1 %597, true, !dbg !1801
  %599 = and i8 %128, 1, !dbg !1803
  %600 = icmp eq i8 %599, 0, !dbg !1803
  %601 = or i1 %600, %598, !dbg !1801
  br i1 %601, label %611, label %602, !dbg !1801

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1804
  %604 = icmp eq i8 %603, 0, !dbg !1804
  br i1 %604, label %607, label %605, !dbg !1807

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1808
  br label %645, !dbg !1809

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1810
  %609 = icmp ne i64 %125, 0, !dbg !1812
  %610 = and i1 %609, %608, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1322, metadata !690), !dbg !1386
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1331, metadata !690), !dbg !1394
  br i1 %610, label %27, label %611, !dbg !1813

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1814
  %613 = and i1 %612, %111, !dbg !1816
  br i1 %613, label %614, label %630, !dbg !1816

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1333, metadata !690), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1331, metadata !690), !dbg !1394
  %615 = load i8, i8* %99, align 1, !dbg !1817, !tbaa !775
  %616 = icmp eq i8 %615, 0, !dbg !1820
  br i1 %616, label %630, label %617, !dbg !1820

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1821

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1331, metadata !690), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1333, metadata !690), !dbg !1396
  %622 = icmp ult i64 %621, %130, !dbg !1821
  br i1 %622, label %623, label %625, !dbg !1824

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1821
  store i8 %619, i8* %624, align 1, !dbg !1821, !tbaa !775
  br label %625, !dbg !1821

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1824
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1331, metadata !690), !dbg !1394
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1825
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1333, metadata !690), !dbg !1396
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1333, metadata !690), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1331, metadata !690), !dbg !1394
  %628 = load i8, i8* %627, align 1, !dbg !1817, !tbaa !775
  %629 = icmp eq i8 %628, 0, !dbg !1820
  br i1 %629, label %630, label %618, !dbg !1820, !llvm.loop !1826

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1331, metadata !690), !dbg !1394
  %632 = icmp ult i64 %631, %130, !dbg !1828
  br i1 %632, label %633, label %645, !dbg !1830

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1831
  store i8 0, i8* %634, align 1, !dbg !1832, !tbaa !775
  br label %645, !dbg !1831

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1322, metadata !690), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1324, metadata !690), !dbg !1388
  %639 = icmp ne i32 %636, 2, !dbg !1833
  %640 = icmp eq i8 %103, 0, !dbg !1835
  %641 = or i1 %639, %640, !dbg !1836
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1325, metadata !690), !dbg !1389
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1836
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1325, metadata !690), !dbg !1389
  %643 = and i32 %5, -3, !dbg !1837
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1838
  br label %645, !dbg !1839

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1840
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1841 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1845, metadata !690), !dbg !1849
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1846, metadata !690), !dbg !1850
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1851
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1847, metadata !690), !dbg !1852
  %4 = icmp eq i8* %3, %0, !dbg !1853
  br i1 %4, label %5, label %75, !dbg !1855

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1856
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1848, metadata !690), !dbg !1857
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1858, metadata !690), !dbg !1874
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1872, metadata !690), !dbg !1877
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1873, metadata !690), !dbg !1878
  %7 = load i8, i8* %6, align 1, !dbg !1879, !tbaa !775
  %8 = sext i8 %7 to i32, !dbg !1879
  %9 = and i32 %8, -33, !dbg !1879
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1879

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1881, metadata !690), !dbg !1895
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1893, metadata !690), !dbg !1899
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1894, metadata !690), !dbg !1900
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1901
  %12 = load i8, i8* %11, align 1, !dbg !1901, !tbaa !775
  %13 = sext i8 %12 to i32, !dbg !1901
  %14 = and i32 %13, -33, !dbg !1901
  %15 = icmp eq i32 %14, 84, !dbg !1901
  br i1 %15, label %16, label %72, !dbg !1901

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1903, metadata !690), !dbg !1916
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1914, metadata !690), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1915, metadata !690), !dbg !1921
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1922
  %18 = load i8, i8* %17, align 1, !dbg !1922, !tbaa !775
  %19 = sext i8 %18 to i32, !dbg !1922
  %20 = and i32 %19, -33, !dbg !1922
  %21 = icmp eq i32 %20, 70, !dbg !1922
  br i1 %21, label %22, label %72, !dbg !1922

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1924, metadata !690), !dbg !1936
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1934, metadata !690), !dbg !1940
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1935, metadata !690), !dbg !1941
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1942
  %24 = load i8, i8* %23, align 1, !dbg !1942, !tbaa !775
  %25 = icmp eq i8 %24, 45, !dbg !1942
  br i1 %25, label %26, label %72, !dbg !1944

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1945, metadata !690), !dbg !1956
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1954, metadata !690), !dbg !1960
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1955, metadata !690), !dbg !1961
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1962
  %28 = load i8, i8* %27, align 1, !dbg !1962, !tbaa !775
  %29 = icmp eq i8 %28, 56, !dbg !1962
  br i1 %29, label %30, label %72, !dbg !1964

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1965, metadata !690), !dbg !1975
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1973, metadata !690), !dbg !1979
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1974, metadata !690), !dbg !1980
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1981
  %32 = load i8, i8* %31, align 1, !dbg !1981, !tbaa !775
  %33 = icmp eq i8 %32, 0, !dbg !1981
  br i1 %33, label %34, label %72, !dbg !1983

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1984, !tbaa !775
  %36 = icmp eq i8 %35, 96, !dbg !1985
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.54, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.55, i64 0, i64 0), !dbg !1984
  br label %75, !dbg !1986

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1881, metadata !690), !dbg !1987
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1893, metadata !690), !dbg !1991
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1894, metadata !690), !dbg !1992
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1993
  %40 = load i8, i8* %39, align 1, !dbg !1993, !tbaa !775
  %41 = sext i8 %40 to i32, !dbg !1993
  %42 = and i32 %41, -33, !dbg !1993
  %43 = icmp eq i32 %42, 66, !dbg !1993
  br i1 %43, label %44, label %72, !dbg !1993

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1903, metadata !690), !dbg !1994
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1914, metadata !690), !dbg !1996
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1915, metadata !690), !dbg !1997
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1998
  %46 = load i8, i8* %45, align 1, !dbg !1998, !tbaa !775
  %47 = icmp eq i8 %46, 49, !dbg !1998
  br i1 %47, label %48, label %72, !dbg !1999

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1924, metadata !690), !dbg !2000
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1934, metadata !690), !dbg !2002
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1935, metadata !690), !dbg !2003
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2004
  %50 = load i8, i8* %49, align 1, !dbg !2004, !tbaa !775
  %51 = icmp eq i8 %50, 56, !dbg !2004
  br i1 %51, label %52, label %72, !dbg !2005

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1945, metadata !690), !dbg !2006
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1954, metadata !690), !dbg !2008
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1955, metadata !690), !dbg !2009
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2010
  %54 = load i8, i8* %53, align 1, !dbg !2010, !tbaa !775
  %55 = icmp eq i8 %54, 48, !dbg !2010
  br i1 %55, label %56, label %72, !dbg !2011

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1965, metadata !690), !dbg !2012
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1973, metadata !690), !dbg !2014
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1974, metadata !690), !dbg !2015
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2016
  %58 = load i8, i8* %57, align 1, !dbg !2016, !tbaa !775
  %59 = icmp eq i8 %58, 51, !dbg !2016
  br i1 %59, label %60, label %72, !dbg !2017

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2018, metadata !690), !dbg !2027
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2025, metadata !690), !dbg !2031
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2026, metadata !690), !dbg !2032
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2033
  %62 = load i8, i8* %61, align 1, !dbg !2033, !tbaa !775
  %63 = icmp eq i8 %62, 48, !dbg !2033
  br i1 %63, label %64, label %72, !dbg !2035

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2036, metadata !690), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2042, metadata !690), !dbg !2048
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2043, metadata !690), !dbg !2049
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2050
  %66 = load i8, i8* %65, align 1, !dbg !2050, !tbaa !775
  %67 = icmp eq i8 %66, 0, !dbg !2050
  br i1 %67, label %68, label %72, !dbg !2052

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2053, !tbaa !775
  %70 = icmp eq i8 %69, 96, !dbg !2054
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2053
  br label %75, !dbg !2055

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2056
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), !dbg !2057
  br label %75, !dbg !2058

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2059
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2060 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2064, metadata !690), !dbg !2067
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2065, metadata !690), !dbg !2068
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2066, metadata !690), !dbg !2069
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2070, metadata !690) #10, !dbg !2083
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2075, metadata !690) #10, !dbg !2085
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2076, metadata !690) #10, !dbg !2086
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2077, metadata !690) #10, !dbg !2087
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2088
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2088
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2078, metadata !690) #10, !dbg !2089
  %6 = tail call i32* @__errno_location() #17, !dbg !2090
  %7 = load i32, i32* %6, align 4, !dbg !2090, !tbaa !787
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2079, metadata !690) #10, !dbg !2091
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2092
  %9 = load i32, i32* %8, align 4, !dbg !2092, !tbaa !1254
  %10 = or i32 %9, 1, !dbg !2093
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2080, metadata !690) #10, !dbg !2094
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2095
  %12 = load i32, i32* %11, align 8, !dbg !2095, !tbaa !1194
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2096
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2097
  %15 = load i8*, i8** %14, align 8, !dbg !2097, !tbaa !1280
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2098
  %17 = load i8*, i8** %16, align 8, !dbg !2098, !tbaa !1283
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2099
  %19 = add i64 %18, 1, !dbg !2100
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2081, metadata !690) #10, !dbg !2101
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2102, metadata !690) #10, !dbg !2107
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2109
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2082, metadata !690) #10, !dbg !2110
  %21 = load i32, i32* %11, align 8, !dbg !2111, !tbaa !1194
  %22 = load i8*, i8** %14, align 8, !dbg !2112, !tbaa !1280
  %23 = load i8*, i8** %16, align 8, !dbg !2113, !tbaa !1283
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2114
  store i32 %7, i32* %6, align 4, !dbg !2115, !tbaa !787
  ret i8* %20, !dbg !2116
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2071 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2070, metadata !690), !dbg !2117
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2075, metadata !690), !dbg !2118
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2076, metadata !690), !dbg !2119
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2077, metadata !690), !dbg !2120
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2121
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2121
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2078, metadata !690), !dbg !2122
  %7 = tail call i32* @__errno_location() #17, !dbg !2123
  %8 = load i32, i32* %7, align 4, !dbg !2123, !tbaa !787
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2079, metadata !690), !dbg !2124
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2125
  %10 = load i32, i32* %9, align 4, !dbg !2125, !tbaa !1254
  %11 = icmp ne i64* %2, null, !dbg !2126
  %12 = xor i1 %11, true, !dbg !2126
  %13 = zext i1 %12 to i32, !dbg !2126
  %14 = or i32 %10, %13, !dbg !2127
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2080, metadata !690), !dbg !2128
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2129
  %16 = load i32, i32* %15, align 8, !dbg !2129, !tbaa !1194
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2130
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2131
  %19 = load i8*, i8** %18, align 8, !dbg !2131, !tbaa !1280
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2132
  %21 = load i8*, i8** %20, align 8, !dbg !2132, !tbaa !1283
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2133
  %23 = add i64 %22, 1, !dbg !2134
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2081, metadata !690), !dbg !2135
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2102, metadata !690) #10, !dbg !2136
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2138
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2082, metadata !690), !dbg !2139
  %25 = load i32, i32* %15, align 8, !dbg !2140, !tbaa !1194
  %26 = load i8*, i8** %18, align 8, !dbg !2141, !tbaa !1280
  %27 = load i8*, i8** %20, align 8, !dbg !2142, !tbaa !1283
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2143
  store i32 %8, i32* %7, align 4, !dbg !2144, !tbaa !787
  br i1 %11, label %29, label %30, !dbg !2145

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2146, !tbaa !858
  br label %30, !dbg !2148

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2149
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2150 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2154, !tbaa !697
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2152, metadata !690), !dbg !2155
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2153, metadata !690), !dbg !2156
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2153, metadata !690), !dbg !2156
  %2 = load i32, i32* @nslots, align 4, !dbg !2157, !tbaa !787
  %3 = icmp sgt i32 %2, 1, !dbg !2160
  br i1 %3, label %4, label %13, !dbg !2161

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2162

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2153, metadata !690), !dbg !2156
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2162
  %8 = load i8*, i8** %7, align 8, !dbg !2162, !tbaa !2163
  tail call void @free(i8* %8) #10, !dbg !2165
  %9 = add nuw i64 %6, 1, !dbg !2166
  %10 = load i32, i32* @nslots, align 4, !dbg !2157, !tbaa !787
  %11 = sext i32 %10 to i64, !dbg !2160
  %12 = icmp slt i64 %9, %11, !dbg !2160
  br i1 %12, label %5, label %13, !dbg !2161, !llvm.loop !2167

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2169
  %15 = load i8*, i8** %14, align 8, !dbg !2169, !tbaa !2163
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2171
  br i1 %16, label %18, label %17, !dbg !2172

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !2173
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2175, !tbaa !2176
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2177, !tbaa !2163
  br label %18, !dbg !2178

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2179
  br i1 %19, label %22, label %20, !dbg !2181

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2182
  tail call void @free(i8* %21) #10, !dbg !2184
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2185, !tbaa !697
  br label %22, !dbg !2186

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2187, !tbaa !787
  ret void, !dbg !2188
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2189 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2193, metadata !690), !dbg !2195
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2194, metadata !690), !dbg !2196
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2197
  ret i8* %3, !dbg !2198
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2199 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2203, metadata !690), !dbg !2217
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2204, metadata !690), !dbg !2218
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2205, metadata !690), !dbg !2219
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2206, metadata !690), !dbg !2220
  %5 = tail call i32* @__errno_location() #17, !dbg !2221
  %6 = load i32, i32* %5, align 4, !dbg !2221, !tbaa !787
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2207, metadata !690), !dbg !2222
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2223, !tbaa !697
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2208, metadata !690), !dbg !2224
  %8 = icmp slt i32 %0, 0, !dbg !2225
  br i1 %8, label %9, label %10, !dbg !2227

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2228
  unreachable, !dbg !2228

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2229, !tbaa !787
  %12 = icmp sgt i32 %11, %0, !dbg !2230
  br i1 %12, label %34, label %13, !dbg !2231

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2232
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2233
  br i1 %15, label %16, label %17, !dbg !2235

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2236
  unreachable, !dbg !2236

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2237
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2237
  %20 = add nsw i32 %0, 1, !dbg !2238
  %21 = sext i32 %20 to i64, !dbg !2239
  %22 = shl nsw i64 %21, 4, !dbg !2240
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2241
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2241
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2208, metadata !690), !dbg !2224
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2242, !tbaa !697
  br i1 %14, label %25, label %26, !dbg !2243

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2244, !tbaa.struct !2246
  br label %26, !dbg !2247

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2248, !tbaa !787
  %28 = sext i32 %27 to i64, !dbg !2249
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2249
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2250
  %31 = sub nsw i32 %20, %27, !dbg !2251
  %32 = sext i32 %31 to i64, !dbg !2252
  %33 = shl nsw i64 %32, 4, !dbg !2253
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2250
  store i32 %20, i32* @nslots, align 4, !dbg !2254, !tbaa !787
  br label %34, !dbg !2255

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2208, metadata !690), !dbg !2224
  %36 = sext i32 %0 to i64, !dbg !2256
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2257
  %38 = load i64, i64* %37, align 8, !dbg !2257, !tbaa !2176
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2212, metadata !690), !dbg !2258
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2259
  %40 = load i8*, i8** %39, align 8, !dbg !2259, !tbaa !2163
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2214, metadata !690), !dbg !2260
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2261
  %42 = load i32, i32* %41, align 4, !dbg !2261, !tbaa !1254
  %43 = or i32 %42, 1, !dbg !2262
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2215, metadata !690), !dbg !2263
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2264
  %45 = load i32, i32* %44, align 8, !dbg !2264, !tbaa !1194
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2265
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2266
  %48 = load i8*, i8** %47, align 8, !dbg !2266, !tbaa !1280
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2267
  %50 = load i8*, i8** %49, align 8, !dbg !2267, !tbaa !1283
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2268
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2216, metadata !690), !dbg !2269
  %52 = icmp ugt i64 %38, %51, !dbg !2270
  br i1 %52, label %63, label %53, !dbg !2272

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2273
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2212, metadata !690), !dbg !2258
  store i64 %54, i64* %37, align 8, !dbg !2275, !tbaa !2176
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2276
  br i1 %55, label %57, label %56, !dbg !2278

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2279
  br label %57, !dbg !2279

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2102, metadata !690) #10, !dbg !2280
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2282
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2214, metadata !690), !dbg !2260
  store i8* %58, i8** %39, align 8, !dbg !2283, !tbaa !2163
  %59 = load i32, i32* %44, align 8, !dbg !2284, !tbaa !1194
  %60 = load i8*, i8** %47, align 8, !dbg !2285, !tbaa !1280
  %61 = load i8*, i8** %49, align 8, !dbg !2286, !tbaa !1283
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2287
  br label %63, !dbg !2288

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2214, metadata !690), !dbg !2260
  store i32 %6, i32* %5, align 4, !dbg !2289, !tbaa !787
  ret i8* %64, !dbg !2290
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2291 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2295, metadata !690), !dbg !2298
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2296, metadata !690), !dbg !2299
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2297, metadata !690), !dbg !2300
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2301
  ret i8* %4, !dbg !2302
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2303 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2307, metadata !690), !dbg !2308
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2193, metadata !690) #10, !dbg !2309
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2194, metadata !690) #10, !dbg !2311
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2312
  ret i8* %2, !dbg !2313
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2314 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2318, metadata !690), !dbg !2320
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2319, metadata !690), !dbg !2321
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2295, metadata !690) #10, !dbg !2322
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2296, metadata !690) #10, !dbg !2324
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2297, metadata !690) #10, !dbg !2325
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2326
  ret i8* %3, !dbg !2327
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2328 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2336, metadata !2342), !dbg !2343
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2332, metadata !690), !dbg !2345
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2333, metadata !690), !dbg !2346
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2334, metadata !690), !dbg !2347
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2348
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2348
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2335, metadata !690), !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2341, metadata !690) #10, !dbg !2350
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2351
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2351
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2336, metadata !690) #10, !dbg !2343
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2336, metadata !2352) #10, !dbg !2343
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2343
  %8 = icmp eq i32 %1, 10, !dbg !2353
  br i1 %8, label %9, label %10, !dbg !2355

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2356, !noalias !2357
  unreachable, !dbg !2356

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2336, metadata !2352) #10, !dbg !2343
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2360
  store i32 %1, i32* %11, align 8, !dbg !2360, !alias.scope !2357
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2360
  %13 = bitcast i32* %12 to i8*, !dbg !2360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2360
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2361
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2335, metadata !690), !dbg !2349
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2362
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2363
  ret i8* %14, !dbg !2364
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2365 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2336, metadata !2342), !dbg !2374
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2369, metadata !690), !dbg !2376
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2370, metadata !690), !dbg !2377
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2371, metadata !690), !dbg !2378
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2372, metadata !690), !dbg !2379
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2380
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2380
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2373, metadata !690), !dbg !2381
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2341, metadata !690) #10, !dbg !2382
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2383
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2383
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2336, metadata !690) #10, !dbg !2374
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2336, metadata !2352) #10, !dbg !2374
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2374
  %9 = icmp eq i32 %1, 10, !dbg !2384
  br i1 %9, label %10, label %11, !dbg !2385

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2386, !noalias !2387
  unreachable, !dbg !2386

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2336, metadata !2352) #10, !dbg !2374
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2390
  store i32 %1, i32* %12, align 8, !dbg !2390, !alias.scope !2387
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2390
  %14 = bitcast i32* %13 to i8*, !dbg !2390
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2390
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2391
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2373, metadata !690), !dbg !2381
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2392
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2393
  ret i8* %15, !dbg !2394
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2395 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2336, metadata !2342), !dbg !2401
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2399, metadata !690), !dbg !2404
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2400, metadata !690), !dbg !2405
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2332, metadata !690) #10, !dbg !2406
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2333, metadata !690) #10, !dbg !2407
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2334, metadata !690) #10, !dbg !2408
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2409
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2409
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2335, metadata !690) #10, !dbg !2410
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2341, metadata !690) #10, !dbg !2411
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2412
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2412
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2336, metadata !690) #10, !dbg !2401
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2336, metadata !2352) #10, !dbg !2401
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2401
  %7 = icmp eq i32 %0, 10, !dbg !2413
  br i1 %7, label %8, label %9, !dbg !2414

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2415, !noalias !2416
  unreachable, !dbg !2415

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2336, metadata !2352) #10, !dbg !2401
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2419
  store i32 %0, i32* %10, align 8, !dbg !2419, !alias.scope !2416
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2419
  %12 = bitcast i32* %11 to i8*, !dbg !2419
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2419
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2420
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2335, metadata !690) #10, !dbg !2410
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2421
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2422
  ret i8* %13, !dbg !2423
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2424 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2336, metadata !2342), !dbg !2431
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2428, metadata !690), !dbg !2434
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2429, metadata !690), !dbg !2435
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2430, metadata !690), !dbg !2436
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2369, metadata !690) #10, !dbg !2437
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2370, metadata !690) #10, !dbg !2438
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2371, metadata !690) #10, !dbg !2439
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2372, metadata !690) #10, !dbg !2440
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2441
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2441
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2373, metadata !690) #10, !dbg !2442
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2341, metadata !690) #10, !dbg !2443
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2444
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2444
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2336, metadata !690) #10, !dbg !2431
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2336, metadata !2352) #10, !dbg !2431
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2431
  %8 = icmp eq i32 %0, 10, !dbg !2445
  br i1 %8, label %9, label %10, !dbg !2446

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2447, !noalias !2448
  unreachable, !dbg !2447

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2336, metadata !2352) #10, !dbg !2431
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2451
  store i32 %0, i32* %11, align 8, !dbg !2451, !alias.scope !2448
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2451
  %13 = bitcast i32* %12 to i8*, !dbg !2451
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2451
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2452
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2373, metadata !690) #10, !dbg !2442
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2453
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2454
  ret i8* %14, !dbg !2455
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2456 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2460, metadata !690), !dbg !2464
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2461, metadata !690), !dbg !2465
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2462, metadata !690), !dbg !2466
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2467
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2467
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2468, !tbaa.struct !2469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2463, metadata !690), !dbg !2470
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1213, metadata !690), !dbg !2471
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1214, metadata !690), !dbg !2473
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1215, metadata !690), !dbg !2474
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1216, metadata !690), !dbg !2475
  %6 = lshr i8 %2, 5, !dbg !2476
  %7 = zext i8 %6 to i64, !dbg !2476
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2477
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1217, metadata !690), !dbg !2478
  %9 = and i8 %2, 31, !dbg !2479
  %10 = zext i8 %9 to i32, !dbg !2480
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1219, metadata !690), !dbg !2481
  %11 = load i32, i32* %8, align 4, !dbg !2482, !tbaa !787
  %12 = lshr i32 %11, %10, !dbg !2483
  %13 = and i32 %12, 1, !dbg !2484
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1220, metadata !690), !dbg !2485
  %14 = xor i32 %13, 1, !dbg !2486
  %15 = shl i32 %14, %10, !dbg !2487
  %16 = xor i32 %15, %11, !dbg !2488
  store i32 %16, i32* %8, align 4, !dbg !2488, !tbaa !787
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2463, metadata !690), !dbg !2470
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2489
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2490
  ret i8* %17, !dbg !2491
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2492 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2496, metadata !690), !dbg !2498
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2497, metadata !690), !dbg !2499
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2460, metadata !690) #10, !dbg !2500
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2461, metadata !690) #10, !dbg !2502
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2462, metadata !690) #10, !dbg !2503
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2504
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2504
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2505, !tbaa.struct !2469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2463, metadata !690) #10, !dbg !2506
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1213, metadata !690) #10, !dbg !2507
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1214, metadata !690) #10, !dbg !2509
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1215, metadata !690) #10, !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1216, metadata !690) #10, !dbg !2511
  %5 = lshr i8 %1, 5, !dbg !2512
  %6 = zext i8 %5 to i64, !dbg !2512
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2513
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1217, metadata !690) #10, !dbg !2514
  %8 = and i8 %1, 31, !dbg !2515
  %9 = zext i8 %8 to i32, !dbg !2516
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1219, metadata !690) #10, !dbg !2517
  %10 = load i32, i32* %7, align 4, !dbg !2518, !tbaa !787
  %11 = lshr i32 %10, %9, !dbg !2519
  %12 = and i32 %11, 1, !dbg !2520
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1220, metadata !690) #10, !dbg !2521
  %13 = xor i32 %12, 1, !dbg !2522
  %14 = shl i32 %13, %9, !dbg !2523
  %15 = xor i32 %14, %10, !dbg !2524
  store i32 %15, i32* %7, align 4, !dbg !2524, !tbaa !787
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2463, metadata !690) #10, !dbg !2506
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2525
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2526
  ret i8* %16, !dbg !2527
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2528 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2530, metadata !690), !dbg !2531
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2496, metadata !690) #10, !dbg !2532
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2497, metadata !690) #10, !dbg !2534
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2460, metadata !690) #10, !dbg !2535
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2461, metadata !690) #10, !dbg !2537
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2462, metadata !690) #10, !dbg !2538
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2539
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2539
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2540, !tbaa.struct !2469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2463, metadata !690) #10, !dbg !2541
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1213, metadata !690) #10, !dbg !2542
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1214, metadata !690) #10, !dbg !2544
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1215, metadata !690) #10, !dbg !2545
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1216, metadata !690) #10, !dbg !2546
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2547
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1217, metadata !690) #10, !dbg !2548
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1219, metadata !690) #10, !dbg !2549
  %5 = load i32, i32* %4, align 4, !dbg !2550, !tbaa !787
  %6 = or i32 %5, 67108864, !dbg !2551
  store i32 %6, i32* %4, align 4, !dbg !2551, !tbaa !787
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2463, metadata !690) #10, !dbg !2541
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2552
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2553
  ret i8* %7, !dbg !2554
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2555 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2557, metadata !690), !dbg !2559
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2558, metadata !690), !dbg !2560
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2460, metadata !690) #10, !dbg !2561
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2461, metadata !690) #10, !dbg !2563
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2462, metadata !690) #10, !dbg !2564
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2565
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2565
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2566, !tbaa.struct !2469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2463, metadata !690) #10, !dbg !2567
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1213, metadata !690) #10, !dbg !2568
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1214, metadata !690) #10, !dbg !2570
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1215, metadata !690) #10, !dbg !2571
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1216, metadata !690) #10, !dbg !2572
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2573
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1217, metadata !690) #10, !dbg !2574
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1219, metadata !690) #10, !dbg !2575
  %6 = load i32, i32* %5, align 4, !dbg !2576, !tbaa !787
  %7 = or i32 %6, 67108864, !dbg !2577
  store i32 %7, i32* %5, align 4, !dbg !2577, !tbaa !787
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2463, metadata !690) #10, !dbg !2567
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2578
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2579
  ret i8* %8, !dbg !2580
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2581 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2336, metadata !2342), !dbg !2587
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2583, metadata !690), !dbg !2589
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2584, metadata !690), !dbg !2590
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2585, metadata !690), !dbg !2591
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2592
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2592
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2341, metadata !690) #10, !dbg !2593
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2594
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2594
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2336, metadata !690) #10, !dbg !2587
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2336, metadata !2352) #10, !dbg !2587
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2587
  %9 = icmp eq i32 %1, 10, !dbg !2595
  br i1 %9, label %10, label %11, !dbg !2596

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2597, !noalias !2598
  unreachable, !dbg !2597

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2336, metadata !2352) #10, !dbg !2587
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2601
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2601
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2602
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2603
  store i32 %1, i32* %13, align 8, !dbg !2603
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2603
  %15 = bitcast i32* %14 to i8*, !dbg !2603
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2603
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2586, metadata !690), !dbg !2604
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1213, metadata !690), !dbg !2605
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1214, metadata !690), !dbg !2607
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1215, metadata !690), !dbg !2608
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1216, metadata !690), !dbg !2609
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2610
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1217, metadata !690), !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1219, metadata !690), !dbg !2612
  %17 = load i32, i32* %16, align 4, !dbg !2613, !tbaa !787
  %18 = or i32 %17, 67108864, !dbg !2614
  store i32 %18, i32* %16, align 4, !dbg !2614, !tbaa !787
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2586, metadata !690), !dbg !2604
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2615
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2616
  ret i8* %19, !dbg !2617
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2618 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2622, metadata !690), !dbg !2626
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2623, metadata !690), !dbg !2627
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2624, metadata !690), !dbg !2628
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2625, metadata !690), !dbg !2629
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2630, metadata !690) #10, !dbg !2640
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2635, metadata !690) #10, !dbg !2642
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2636, metadata !690) #10, !dbg !2643
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2637, metadata !690) #10, !dbg !2644
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2638, metadata !690) #10, !dbg !2645
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2646
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2646
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2647, !tbaa.struct !2469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2639, metadata !690) #10, !dbg !2648
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1262, metadata !690) #10, !dbg !2649
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1263, metadata !690) #10, !dbg !2651
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1264, metadata !690) #10, !dbg !2652
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1262, metadata !690) #10, !dbg !2649
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1262, metadata !690) #10, !dbg !2649
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2653
  store i32 10, i32* %7, align 8, !dbg !2654, !tbaa !1194
  %8 = icmp ne i8* %1, null, !dbg !2655
  %9 = icmp ne i8* %2, null, !dbg !2656
  %10 = and i1 %8, %9, !dbg !2657
  br i1 %10, label %12, label %11, !dbg !2657

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2658
  unreachable, !dbg !2658

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2659
  store i8* %1, i8** %13, align 8, !dbg !2660, !tbaa !1280
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2661
  store i8* %2, i8** %14, align 8, !dbg !2662, !tbaa !1283
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2639, metadata !690) #10, !dbg !2648
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2663
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2664
  ret i8* %15, !dbg !2665
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2631 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2630, metadata !690), !dbg !2666
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2635, metadata !690), !dbg !2667
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2636, metadata !690), !dbg !2668
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2637, metadata !690), !dbg !2669
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2638, metadata !690), !dbg !2670
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2671
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2671
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2672, !tbaa.struct !2469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2639, metadata !690), !dbg !2673
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1262, metadata !690) #10, !dbg !2674
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1263, metadata !690) #10, !dbg !2676
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1264, metadata !690) #10, !dbg !2677
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1262, metadata !690) #10, !dbg !2674
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1262, metadata !690) #10, !dbg !2674
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2678
  store i32 10, i32* %8, align 8, !dbg !2679, !tbaa !1194
  %9 = icmp ne i8* %1, null, !dbg !2680
  %10 = icmp ne i8* %2, null, !dbg !2681
  %11 = and i1 %9, %10, !dbg !2682
  br i1 %11, label %13, label %12, !dbg !2682

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2683
  unreachable, !dbg !2683

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2684
  store i8* %1, i8** %14, align 8, !dbg !2685, !tbaa !1280
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2686
  store i8* %2, i8** %15, align 8, !dbg !2687, !tbaa !1283
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2639, metadata !690), !dbg !2673
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2688
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2689
  ret i8* %16, !dbg !2690
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2691 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2695, metadata !690), !dbg !2698
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2696, metadata !690), !dbg !2699
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2697, metadata !690), !dbg !2700
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2622, metadata !690) #10, !dbg !2701
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2623, metadata !690) #10, !dbg !2703
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2624, metadata !690) #10, !dbg !2704
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2625, metadata !690) #10, !dbg !2705
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2630, metadata !690) #10, !dbg !2706
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2635, metadata !690) #10, !dbg !2708
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2636, metadata !690) #10, !dbg !2709
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2637, metadata !690) #10, !dbg !2710
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2638, metadata !690) #10, !dbg !2711
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2712
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2712
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2713, !tbaa.struct !2469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2639, metadata !690) #10, !dbg !2714
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1262, metadata !690) #10, !dbg !2715
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1263, metadata !690) #10, !dbg !2717
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1264, metadata !690) #10, !dbg !2718
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1262, metadata !690) #10, !dbg !2715
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1262, metadata !690) #10, !dbg !2715
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2719
  store i32 10, i32* %6, align 8, !dbg !2720, !tbaa !1194
  %7 = icmp ne i8* %0, null, !dbg !2721
  %8 = icmp ne i8* %1, null, !dbg !2722
  %9 = and i1 %7, %8, !dbg !2723
  br i1 %9, label %11, label %10, !dbg !2723

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2724
  unreachable, !dbg !2724

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2725
  store i8* %0, i8** %12, align 8, !dbg !2726, !tbaa !1280
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2727
  store i8* %1, i8** %13, align 8, !dbg !2728, !tbaa !1283
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2639, metadata !690) #10, !dbg !2714
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2729
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2730
  ret i8* %14, !dbg !2731
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2732 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2736, metadata !690), !dbg !2740
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2737, metadata !690), !dbg !2741
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2738, metadata !690), !dbg !2742
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2739, metadata !690), !dbg !2743
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2630, metadata !690) #10, !dbg !2744
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2635, metadata !690) #10, !dbg !2746
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2636, metadata !690) #10, !dbg !2747
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2637, metadata !690) #10, !dbg !2748
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2638, metadata !690) #10, !dbg !2749
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2750
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2750
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2751, !tbaa.struct !2469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2639, metadata !690) #10, !dbg !2752
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1262, metadata !690) #10, !dbg !2753
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1263, metadata !690) #10, !dbg !2755
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1264, metadata !690) #10, !dbg !2756
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1262, metadata !690) #10, !dbg !2753
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1262, metadata !690) #10, !dbg !2753
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2757
  store i32 10, i32* %7, align 8, !dbg !2758, !tbaa !1194
  %8 = icmp ne i8* %0, null, !dbg !2759
  %9 = icmp ne i8* %1, null, !dbg !2760
  %10 = and i1 %8, %9, !dbg !2761
  br i1 %10, label %12, label %11, !dbg !2761

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2762
  unreachable, !dbg !2762

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2763
  store i8* %0, i8** %13, align 8, !dbg !2764, !tbaa !1280
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2765
  store i8* %1, i8** %14, align 8, !dbg !2766, !tbaa !1283
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2639, metadata !690) #10, !dbg !2752
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2767
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2768
  ret i8* %15, !dbg !2769
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2770 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2774, metadata !690), !dbg !2777
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2775, metadata !690), !dbg !2778
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2776, metadata !690), !dbg !2779
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2780
  ret i8* %4, !dbg !2781
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2782 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2786, metadata !690), !dbg !2788
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2787, metadata !690), !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2774, metadata !690) #10, !dbg !2790
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2775, metadata !690) #10, !dbg !2792
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2776, metadata !690) #10, !dbg !2793
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2794
  ret i8* %3, !dbg !2795
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2796 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2800, metadata !690), !dbg !2802
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2801, metadata !690), !dbg !2803
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2774, metadata !690) #10, !dbg !2804
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2775, metadata !690) #10, !dbg !2806
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2776, metadata !690) #10, !dbg !2807
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2808
  ret i8* %3, !dbg !2809
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2810 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2814, metadata !690), !dbg !2815
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2800, metadata !690) #10, !dbg !2816
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2801, metadata !690) #10, !dbg !2818
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2774, metadata !690) #10, !dbg !2819
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2775, metadata !690) #10, !dbg !2821
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2776, metadata !690) #10, !dbg !2822
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2823
  ret i8* %2, !dbg !2824
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2825 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2870, metadata !690), !dbg !2876
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2871, metadata !690), !dbg !2877
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2872, metadata !690), !dbg !2878
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2873, metadata !690), !dbg !2879
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2874, metadata !690), !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2875, metadata !690), !dbg !2881
  %7 = icmp eq i8* %1, null, !dbg !2882
  br i1 %7, label %10, label %8, !dbg !2884

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2885
  br label %12, !dbg !2885

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.61, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2886
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.62, i64 0, i64 0), i32 5) #10, !dbg !2887
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2887
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.63, i64 0, i64 0), i32 5) #10, !dbg !2888
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2888
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
  ], !dbg !2889

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2890
  unreachable, !dbg !2890

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.64, i64 0, i64 0), i32 5) #10, !dbg !2892
  %20 = load i8*, i8** %4, align 8, !dbg !2892, !tbaa !697
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2892
  br label %146, !dbg !2893

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.65, i64 0, i64 0), i32 5) #10, !dbg !2894
  %24 = load i8*, i8** %4, align 8, !dbg !2894, !tbaa !697
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2894
  %26 = load i8*, i8** %25, align 8, !dbg !2894, !tbaa !697
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2894
  br label %146, !dbg !2895

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.66, i64 0, i64 0), i32 5) #10, !dbg !2896
  %30 = load i8*, i8** %4, align 8, !dbg !2896, !tbaa !697
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2896
  %32 = load i8*, i8** %31, align 8, !dbg !2896, !tbaa !697
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2896
  %34 = load i8*, i8** %33, align 8, !dbg !2896, !tbaa !697
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2896
  br label %146, !dbg !2897

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.67, i64 0, i64 0), i32 5) #10, !dbg !2898
  %38 = load i8*, i8** %4, align 8, !dbg !2898, !tbaa !697
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2898
  %40 = load i8*, i8** %39, align 8, !dbg !2898, !tbaa !697
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2898
  %42 = load i8*, i8** %41, align 8, !dbg !2898, !tbaa !697
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2898
  %44 = load i8*, i8** %43, align 8, !dbg !2898, !tbaa !697
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2898
  br label %146, !dbg !2899

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.68, i64 0, i64 0), i32 5) #10, !dbg !2900
  %48 = load i8*, i8** %4, align 8, !dbg !2900, !tbaa !697
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2900
  %50 = load i8*, i8** %49, align 8, !dbg !2900, !tbaa !697
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2900
  %52 = load i8*, i8** %51, align 8, !dbg !2900, !tbaa !697
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2900
  %54 = load i8*, i8** %53, align 8, !dbg !2900, !tbaa !697
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2900
  %56 = load i8*, i8** %55, align 8, !dbg !2900, !tbaa !697
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2900
  br label %146, !dbg !2901

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.69, i64 0, i64 0), i32 5) #10, !dbg !2902
  %60 = load i8*, i8** %4, align 8, !dbg !2902, !tbaa !697
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2902
  %62 = load i8*, i8** %61, align 8, !dbg !2902, !tbaa !697
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2902
  %64 = load i8*, i8** %63, align 8, !dbg !2902, !tbaa !697
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2902
  %66 = load i8*, i8** %65, align 8, !dbg !2902, !tbaa !697
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2902
  %68 = load i8*, i8** %67, align 8, !dbg !2902, !tbaa !697
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2902
  %70 = load i8*, i8** %69, align 8, !dbg !2902, !tbaa !697
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2902
  br label %146, !dbg !2903

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.70, i64 0, i64 0), i32 5) #10, !dbg !2904
  %74 = load i8*, i8** %4, align 8, !dbg !2904, !tbaa !697
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2904
  %76 = load i8*, i8** %75, align 8, !dbg !2904, !tbaa !697
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2904
  %78 = load i8*, i8** %77, align 8, !dbg !2904, !tbaa !697
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2904
  %80 = load i8*, i8** %79, align 8, !dbg !2904, !tbaa !697
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2904
  %82 = load i8*, i8** %81, align 8, !dbg !2904, !tbaa !697
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2904
  %84 = load i8*, i8** %83, align 8, !dbg !2904, !tbaa !697
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2904
  %86 = load i8*, i8** %85, align 8, !dbg !2904, !tbaa !697
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2904
  br label %146, !dbg !2905

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.71, i64 0, i64 0), i32 5) #10, !dbg !2906
  %90 = load i8*, i8** %4, align 8, !dbg !2906, !tbaa !697
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2906
  %92 = load i8*, i8** %91, align 8, !dbg !2906, !tbaa !697
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2906
  %94 = load i8*, i8** %93, align 8, !dbg !2906, !tbaa !697
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2906
  %96 = load i8*, i8** %95, align 8, !dbg !2906, !tbaa !697
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2906
  %98 = load i8*, i8** %97, align 8, !dbg !2906, !tbaa !697
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2906
  %100 = load i8*, i8** %99, align 8, !dbg !2906, !tbaa !697
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2906
  %102 = load i8*, i8** %101, align 8, !dbg !2906, !tbaa !697
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2906
  %104 = load i8*, i8** %103, align 8, !dbg !2906, !tbaa !697
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2906
  br label %146, !dbg !2907

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.72, i64 0, i64 0), i32 5) #10, !dbg !2908
  %108 = load i8*, i8** %4, align 8, !dbg !2908, !tbaa !697
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2908
  %110 = load i8*, i8** %109, align 8, !dbg !2908, !tbaa !697
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2908
  %112 = load i8*, i8** %111, align 8, !dbg !2908, !tbaa !697
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2908
  %114 = load i8*, i8** %113, align 8, !dbg !2908, !tbaa !697
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2908
  %116 = load i8*, i8** %115, align 8, !dbg !2908, !tbaa !697
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2908
  %118 = load i8*, i8** %117, align 8, !dbg !2908, !tbaa !697
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2908
  %120 = load i8*, i8** %119, align 8, !dbg !2908, !tbaa !697
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2908
  %122 = load i8*, i8** %121, align 8, !dbg !2908, !tbaa !697
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2908
  %124 = load i8*, i8** %123, align 8, !dbg !2908, !tbaa !697
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2908
  br label %146, !dbg !2909

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.73, i64 0, i64 0), i32 5) #10, !dbg !2910
  %128 = load i8*, i8** %4, align 8, !dbg !2910, !tbaa !697
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2910
  %130 = load i8*, i8** %129, align 8, !dbg !2910, !tbaa !697
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2910
  %132 = load i8*, i8** %131, align 8, !dbg !2910, !tbaa !697
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2910
  %134 = load i8*, i8** %133, align 8, !dbg !2910, !tbaa !697
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2910
  %136 = load i8*, i8** %135, align 8, !dbg !2910, !tbaa !697
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2910
  %138 = load i8*, i8** %137, align 8, !dbg !2910, !tbaa !697
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2910
  %140 = load i8*, i8** %139, align 8, !dbg !2910, !tbaa !697
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2910
  %142 = load i8*, i8** %141, align 8, !dbg !2910, !tbaa !697
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2910
  %144 = load i8*, i8** %143, align 8, !dbg !2910, !tbaa !697
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2910
  br label %146, !dbg !2911

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2912
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2913 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2917, metadata !690), !dbg !2923
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2918, metadata !690), !dbg !2924
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2919, metadata !690), !dbg !2925
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2920, metadata !690), !dbg !2926
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2921, metadata !690), !dbg !2927
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2922, metadata !690), !dbg !2928
  br label %6, !dbg !2929

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2922, metadata !690), !dbg !2928
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2931
  %9 = load i8*, i8** %8, align 8, !dbg !2931, !tbaa !697
  %10 = icmp eq i8* %9, null, !dbg !2933
  %11 = add i64 %7, 1, !dbg !2934
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2922, metadata !690), !dbg !2928
  br i1 %10, label %12, label %6, !dbg !2933, !llvm.loop !2935

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2937
  ret void, !dbg !2938
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2939 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2950, metadata !690), !dbg !2958
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2951, metadata !690), !dbg !2959
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2952, metadata !690), !dbg !2960
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2953, metadata !690), !dbg !2961
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2954, metadata !690), !dbg !2962
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2963
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2963
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2956, metadata !690), !dbg !2964
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2955, metadata !690), !dbg !2965
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2955, metadata !690), !dbg !2965
  %11 = load i32, i32* %8, align 8, !dbg !2966
  %12 = icmp ult i32 %11, 41, !dbg !2966
  br i1 %12, label %13, label %18, !dbg !2966

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2966
  %15 = sext i32 %11 to i64, !dbg !2966
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2966
  %17 = add i32 %11, 8, !dbg !2966
  store i32 %17, i32* %8, align 8, !dbg !2966
  br label %21, !dbg !2966

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2966
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2966
  store i8* %20, i8** %10, align 8, !dbg !2966
  br label %21, !dbg !2966

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2966
  %25 = load i8*, i8** %24, align 8, !dbg !2966
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2969
  store i8* %25, i8** %26, align 16, !dbg !2970, !tbaa !697
  %27 = icmp eq i8* %25, null, !dbg !2971
  br i1 %27, label %30, label %28, !dbg !2972

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2955, metadata !690), !dbg !2965
  %29 = icmp ult i32 %22, 41, !dbg !2966
  br i1 %29, label %35, label %32, !dbg !2966

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2973
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2974
  ret void, !dbg !2974

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2966
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2966
  store i8* %34, i8** %10, align 8, !dbg !2966
  br label %40, !dbg !2966

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2966
  %37 = sext i32 %22 to i64, !dbg !2966
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2966
  %39 = add i32 %22, 8, !dbg !2966
  store i32 %39, i32* %8, align 8, !dbg !2966
  br label %40, !dbg !2966

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2966
  %44 = load i8*, i8** %43, align 8, !dbg !2966
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2969
  store i8* %44, i8** %45, align 8, !dbg !2970, !tbaa !697
  %46 = icmp eq i8* %44, null, !dbg !2971
  br i1 %46, label %30, label %47, !dbg !2972

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2955, metadata !690), !dbg !2965
  %48 = icmp ult i32 %41, 41, !dbg !2966
  br i1 %48, label %52, label %49, !dbg !2966

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2966
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2966
  store i8* %51, i8** %10, align 8, !dbg !2966
  br label %57, !dbg !2966

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2966
  %54 = sext i32 %41 to i64, !dbg !2966
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2966
  %56 = add i32 %41, 8, !dbg !2966
  store i32 %56, i32* %8, align 8, !dbg !2966
  br label %57, !dbg !2966

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2966
  %61 = load i8*, i8** %60, align 8, !dbg !2966
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2969
  store i8* %61, i8** %62, align 16, !dbg !2970, !tbaa !697
  %63 = icmp eq i8* %61, null, !dbg !2971
  br i1 %63, label %30, label %64, !dbg !2972

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2955, metadata !690), !dbg !2965
  %65 = icmp ult i32 %58, 41, !dbg !2966
  br i1 %65, label %69, label %66, !dbg !2966

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2966
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2966
  store i8* %68, i8** %10, align 8, !dbg !2966
  br label %74, !dbg !2966

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2966
  %71 = sext i32 %58 to i64, !dbg !2966
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2966
  %73 = add i32 %58, 8, !dbg !2966
  store i32 %73, i32* %8, align 8, !dbg !2966
  br label %74, !dbg !2966

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2966
  %78 = load i8*, i8** %77, align 8, !dbg !2966
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2969
  store i8* %78, i8** %79, align 8, !dbg !2970, !tbaa !697
  %80 = icmp eq i8* %78, null, !dbg !2971
  br i1 %80, label %30, label %81, !dbg !2972

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2955, metadata !690), !dbg !2965
  %82 = icmp ult i32 %75, 41, !dbg !2966
  br i1 %82, label %86, label %83, !dbg !2966

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2966
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2966
  store i8* %85, i8** %10, align 8, !dbg !2966
  br label %91, !dbg !2966

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2966
  %88 = sext i32 %75 to i64, !dbg !2966
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2966
  %90 = add i32 %75, 8, !dbg !2966
  store i32 %90, i32* %8, align 8, !dbg !2966
  br label %91, !dbg !2966

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2966
  %95 = load i8*, i8** %94, align 8, !dbg !2966
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2969
  store i8* %95, i8** %96, align 16, !dbg !2970, !tbaa !697
  %97 = icmp eq i8* %95, null, !dbg !2971
  br i1 %97, label %30, label %98, !dbg !2972

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2955, metadata !690), !dbg !2965
  %99 = icmp ult i32 %92, 41, !dbg !2966
  br i1 %99, label %103, label %100, !dbg !2966

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2966
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2966
  store i8* %102, i8** %10, align 8, !dbg !2966
  br label %108, !dbg !2966

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2966
  %105 = sext i32 %92 to i64, !dbg !2966
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2966
  %107 = add i32 %92, 8, !dbg !2966
  store i32 %107, i32* %8, align 8, !dbg !2966
  br label %108, !dbg !2966

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2966
  %111 = load i8*, i8** %110, align 8, !dbg !2966
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2969
  store i8* %111, i8** %112, align 8, !dbg !2970, !tbaa !697
  %113 = icmp eq i8* %111, null, !dbg !2971
  br i1 %113, label %30, label %114, !dbg !2972

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2955, metadata !690), !dbg !2965
  %115 = load i8*, i8** %10, align 8, !dbg !2966
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2966
  store i8* %116, i8** %10, align 8, !dbg !2966
  %117 = bitcast i8* %115 to i8**, !dbg !2966
  %118 = load i8*, i8** %117, align 8, !dbg !2966
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2969
  store i8* %118, i8** %119, align 16, !dbg !2970, !tbaa !697
  %120 = icmp eq i8* %118, null, !dbg !2971
  br i1 %120, label %30, label %121, !dbg !2972

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2955, metadata !690), !dbg !2965
  %122 = load i8*, i8** %10, align 8, !dbg !2966
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2966
  store i8* %123, i8** %10, align 8, !dbg !2966
  %124 = bitcast i8* %122 to i8**, !dbg !2966
  %125 = load i8*, i8** %124, align 8, !dbg !2966
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2969
  store i8* %125, i8** %126, align 8, !dbg !2970, !tbaa !697
  %127 = icmp eq i8* %125, null, !dbg !2971
  br i1 %127, label %30, label %128, !dbg !2972

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2955, metadata !690), !dbg !2965
  %129 = load i8*, i8** %10, align 8, !dbg !2966
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2966
  store i8* %130, i8** %10, align 8, !dbg !2966
  %131 = bitcast i8* %129 to i8**, !dbg !2966
  %132 = load i8*, i8** %131, align 8, !dbg !2966
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2969
  store i8* %132, i8** %133, align 16, !dbg !2970, !tbaa !697
  %134 = icmp eq i8* %132, null, !dbg !2971
  br i1 %134, label %30, label %135, !dbg !2972

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2955, metadata !690), !dbg !2965
  %136 = load i8*, i8** %10, align 8, !dbg !2966
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2966
  store i8* %137, i8** %10, align 8, !dbg !2966
  %138 = bitcast i8* %136 to i8**, !dbg !2966
  %139 = load i8*, i8** %138, align 8, !dbg !2966
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2969
  store i8* %139, i8** %140, align 8, !dbg !2970, !tbaa !697
  %141 = icmp eq i8* %139, null, !dbg !2971
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2955, metadata !690), !dbg !2965
  %142 = select i1 %141, i64 9, i64 10, !dbg !2972
  br label %30, !dbg !2972
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2975 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2979, metadata !690), !dbg !2989
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2980, metadata !690), !dbg !2990
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2981, metadata !690), !dbg !2991
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2982, metadata !690), !dbg !2992
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2993
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2993
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2983, metadata !690), !dbg !2994
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2995
  call void @llvm.va_start(i8* nonnull %6), !dbg !2995
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2996
  call void @llvm.va_end(i8* nonnull %6), !dbg !2997
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2998
  ret void, !dbg !2998
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2999 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.76, i64 0, i64 0), i32 5) #10, !dbg !3000
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.77, i64 0, i64 0)) #10, !dbg !3000
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.78, i64 0, i64 0), i32 5) #10, !dbg !3001
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.79, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.80, i64 0, i64 0)) #10, !dbg !3001
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.81, i64 0, i64 0), i32 5) #10, !dbg !3002
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3002, !tbaa !697
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3002
  ret void, !dbg !3003
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3004 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3008, metadata !690), !dbg !3010
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3009, metadata !690), !dbg !3011
  %3 = udiv i64 9223372036854775807, %1, !dbg !3012
  %4 = icmp ult i64 %3, %0, !dbg !3012
  br i1 %4, label %5, label %6, !dbg !3014

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3015
  unreachable, !dbg !3015

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3016
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3017, metadata !690) #10, !dbg !3024
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3026
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3023, metadata !690) #10, !dbg !3027
  %9 = icmp eq i8* %8, null, !dbg !3028
  %10 = icmp ne i64 %7, 0, !dbg !3030
  %11 = and i1 %10, %9, !dbg !3031
  br i1 %11, label %12, label %13, !dbg !3031

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3032
  unreachable, !dbg !3032

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3033
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3018 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3017, metadata !690), !dbg !3034
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3035
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3023, metadata !690), !dbg !3036
  %3 = icmp eq i8* %2, null, !dbg !3037
  %4 = icmp ne i64 %0, 0, !dbg !3038
  %5 = and i1 %4, %3, !dbg !3039
  br i1 %5, label %6, label %7, !dbg !3039

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3040
  unreachable, !dbg !3040

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3041
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3042 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3046, metadata !690), !dbg !3049
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3047, metadata !690), !dbg !3050
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3048, metadata !690), !dbg !3051
  %4 = udiv i64 9223372036854775807, %2, !dbg !3052
  %5 = icmp ult i64 %4, %1, !dbg !3052
  br i1 %5, label %6, label %7, !dbg !3054

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3055
  unreachable, !dbg !3055

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3056
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3057, metadata !690) #10, !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3062, metadata !690) #10, !dbg !3065
  %9 = icmp eq i64 %8, 0, !dbg !3066
  %10 = icmp ne i8* %0, null, !dbg !3068
  %11 = and i1 %10, %9, !dbg !3069
  br i1 %11, label %12, label %13, !dbg !3069

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3070
  br label %19, !dbg !3072

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3073
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3057, metadata !690) #10, !dbg !3063
  %15 = icmp eq i8* %14, null, !dbg !3074
  %16 = icmp ne i64 %8, 0, !dbg !3076
  %17 = and i1 %16, %15, !dbg !3077
  br i1 %17, label %18, label %19, !dbg !3077

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3078
  unreachable, !dbg !3078

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3079
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3058 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3057, metadata !690), !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3062, metadata !690), !dbg !3081
  %3 = icmp eq i64 %1, 0, !dbg !3082
  %4 = icmp ne i8* %0, null, !dbg !3083
  %5 = and i1 %4, %3, !dbg !3084
  br i1 %5, label %6, label %7, !dbg !3084

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3085
  br label %13, !dbg !3086

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3087
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3057, metadata !690), !dbg !3080
  %9 = icmp eq i8* %8, null, !dbg !3088
  %10 = icmp ne i64 %1, 0, !dbg !3089
  %11 = and i1 %10, %9, !dbg !3090
  br i1 %11, label %12, label %13, !dbg !3090

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3091
  unreachable, !dbg !3091

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3092
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !635 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !640, metadata !690), !dbg !3093
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !641, metadata !690), !dbg !3094
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !642, metadata !690), !dbg !3095
  %4 = load i64, i64* %1, align 8, !dbg !3096, !tbaa !858
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !643, metadata !690), !dbg !3097
  %5 = icmp eq i8* %0, null, !dbg !3098
  br i1 %5, label %6, label %13, !dbg !3100

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3101
  br i1 %7, label %8, label %17, !dbg !3104

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3105
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !643, metadata !690), !dbg !3097
  %10 = icmp ugt i64 %2, 128, !dbg !3107
  %11 = zext i1 %10 to i64, !dbg !3107
  %12 = add nuw nsw i64 %9, %11, !dbg !3108
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !643, metadata !690), !dbg !3097
  br label %17, !dbg !3109

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3110
  %15 = icmp ugt i64 %14, %4, !dbg !3113
  br i1 %15, label %20, label %16, !dbg !3114

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3115
  unreachable, !dbg !3115

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !643, metadata !690), !dbg !3097
  store i64 %18, i64* %1, align 8, !dbg !3116, !tbaa !858
  %19 = mul i64 %18, %2, !dbg !3117
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3057, metadata !690) #10, !dbg !3118
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3062, metadata !690) #10, !dbg !3120
  br label %27, !dbg !3121

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3122
  %22 = add i64 %4, 1, !dbg !3123
  %23 = add i64 %22, %21, !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !643, metadata !690), !dbg !3097
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !643, metadata !690), !dbg !3097
  store i64 %23, i64* %1, align 8, !dbg !3116, !tbaa !858
  %24 = mul i64 %23, %2, !dbg !3117
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3057, metadata !690) #10, !dbg !3118
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3062, metadata !690) #10, !dbg !3120
  %25 = icmp eq i64 %24, 0, !dbg !3125
  br i1 %25, label %26, label %27, !dbg !3121

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3126
  br label %34, !dbg !3127

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3128
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3057, metadata !690) #10, !dbg !3118
  %30 = icmp eq i8* %29, null, !dbg !3129
  %31 = icmp ne i64 %28, 0, !dbg !3130
  %32 = and i1 %31, %30, !dbg !3131
  br i1 %32, label %33, label %34, !dbg !3131

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3132
  unreachable, !dbg !3132

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3133
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3134 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3136, metadata !690), !dbg !3137
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3017, metadata !690) #10, !dbg !3138
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3140
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3023, metadata !690) #10, !dbg !3141
  %3 = icmp eq i8* %2, null, !dbg !3142
  %4 = icmp ne i64 %0, 0, !dbg !3143
  %5 = and i1 %4, %3, !dbg !3144
  br i1 %5, label %6, label %7, !dbg !3144

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3145
  unreachable, !dbg !3145

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3146
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3147 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3151, metadata !690), !dbg !3153
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3152, metadata !690), !dbg !3154
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !640, metadata !690) #10, !dbg !3155
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !641, metadata !690) #10, !dbg !3157
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !642, metadata !690) #10, !dbg !3158
  %3 = load i64, i64* %1, align 8, !dbg !3159, !tbaa !858
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !643, metadata !690) #10, !dbg !3160
  %4 = icmp eq i8* %0, null, !dbg !3161
  br i1 %4, label %5, label %8, !dbg !3162

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3163
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !643, metadata !690) #10, !dbg !3160
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !643, metadata !690) #10, !dbg !3160
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3164
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !643, metadata !690) #10, !dbg !3160
  store i64 %7, i64* %1, align 8, !dbg !3165, !tbaa !858
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3057, metadata !690) #10, !dbg !3166
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3062, metadata !690) #10, !dbg !3168
  br label %17, !dbg !3169

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3170
  br i1 %9, label %11, label %10, !dbg !3171

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3172
  unreachable, !dbg !3172

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3173
  %13 = add i64 %3, 1, !dbg !3174
  %14 = add i64 %13, %12, !dbg !3175
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !643, metadata !690) #10, !dbg !3160
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !643, metadata !690) #10, !dbg !3160
  store i64 %14, i64* %1, align 8, !dbg !3165, !tbaa !858
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3057, metadata !690) #10, !dbg !3166
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3062, metadata !690) #10, !dbg !3168
  %15 = icmp eq i64 %14, 0, !dbg !3176
  br i1 %15, label %16, label %17, !dbg !3169

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3177
  br label %24, !dbg !3178

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3179
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3057, metadata !690) #10, !dbg !3166
  %20 = icmp eq i8* %19, null, !dbg !3180
  %21 = icmp ne i64 %18, 0, !dbg !3181
  %22 = and i1 %21, %20, !dbg !3182
  br i1 %22, label %23, label %24, !dbg !3182

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3183
  unreachable, !dbg !3183

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3184
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3185 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3187, metadata !690), !dbg !3188
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3017, metadata !690) #10, !dbg !3189
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3191
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3023, metadata !690) #10, !dbg !3192
  %3 = icmp eq i8* %2, null, !dbg !3193
  %4 = icmp ne i64 %0, 0, !dbg !3194
  %5 = and i1 %4, %3, !dbg !3195
  br i1 %5, label %6, label %7, !dbg !3195

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3196
  unreachable, !dbg !3196

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3197
  ret i8* %2, !dbg !3198
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3199 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3201, metadata !690), !dbg !3204
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3202, metadata !690), !dbg !3205
  %3 = udiv i64 9223372036854775807, %1, !dbg !3206
  %4 = icmp ult i64 %3, %0, !dbg !3206
  br i1 %4, label %8, label %5, !dbg !3208

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3209
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3203, metadata !690), !dbg !3210
  %7 = icmp eq i8* %6, null, !dbg !3211
  br i1 %7, label %8, label %9, !dbg !3212

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3213
  unreachable, !dbg !3213

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3214
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3215 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3221, metadata !690), !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3222, metadata !690), !dbg !3224
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3017, metadata !690) #10, !dbg !3225
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3227
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3023, metadata !690) #10, !dbg !3228
  %4 = icmp eq i8* %3, null, !dbg !3229
  %5 = icmp ne i64 %1, 0, !dbg !3230
  %6 = and i1 %5, %4, !dbg !3231
  br i1 %6, label %7, label %8, !dbg !3231

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3232
  unreachable, !dbg !3232

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3233
  ret i8* %3, !dbg !3234
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3235 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3237, metadata !690), !dbg !3238
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3239
  %3 = add i64 %2, 1, !dbg !3240
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3221, metadata !690) #10, !dbg !3241
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3222, metadata !690) #10, !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3017, metadata !690) #10, !dbg !3244
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3246
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3023, metadata !690) #10, !dbg !3247
  %5 = icmp eq i8* %4, null, !dbg !3248
  %6 = icmp ne i64 %3, 0, !dbg !3249
  %7 = and i1 %6, %5, !dbg !3250
  br i1 %7, label %8, label %9, !dbg !3250

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3251
  unreachable, !dbg !3251

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3252
  ret i8* %4, !dbg !3253
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3254 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3256, !tbaa !787
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.94, i64 0, i64 0), i32 5) #10, !dbg !3257
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i64 0, i64 0), i8* %2) #10, !dbg !3258
  tail call void @abort() #15, !dbg !3259
  unreachable, !dbg !3259
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !3260 {
  %8 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3268, metadata !690), !dbg !3278
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3269, metadata !690), !dbg !3279
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3270, metadata !690), !dbg !3280
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3271, metadata !690), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3272, metadata !690), !dbg !3282
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3273, metadata !690), !dbg !3283
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3274, metadata !690), !dbg !3284
  %9 = bitcast i64* %8 to i8*, !dbg !3285
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10, !dbg !3285
  tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !3277, metadata !690), !dbg !3286
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #10, !dbg !3287
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3275, metadata !690), !dbg !3288
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %22
    i32 3, label %24
  ], !dbg !3289

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #17, !dbg !3290
  br label %26, !dbg !3289

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3293, !tbaa !858
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3277, metadata !690), !dbg !3286
  %15 = icmp ult i64 %14, %2, !dbg !3297
  %16 = icmp ugt i64 %14, %3, !dbg !3298
  %17 = or i1 %15, %16, !dbg !3299
  br i1 %17, label %18, label %35, !dbg !3299

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3275, metadata !690), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3277, metadata !690), !dbg !3286
  %19 = icmp ugt i64 %14, 1073741823, !dbg !3300
  %20 = tail call i32* @__errno_location() #17, !dbg !3303
  %21 = select i1 %19, i32 75, i32 34, !dbg !3304
  store i32 %21, i32* %20, align 4, !tbaa !787
  br label %26, !dbg !3305

; <label>:22:                                     ; preds = %7
  %23 = tail call i32* @__errno_location() #17, !dbg !3306
  store i32 75, i32* %23, align 4, !dbg !3308, !tbaa !787
  br label %26, !dbg !3306

; <label>:24:                                     ; preds = %7
  %25 = tail call i32* @__errno_location() #17, !dbg !3309
  store i32 0, i32* %25, align 4, !dbg !3311, !tbaa !787
  br label %26, !dbg !3309

; <label>:26:                                     ; preds = %11, %18, %22, %24
  %27 = phi i32* [ %12, %11 ], [ %20, %18 ], [ %23, %22 ], [ %25, %24 ], !dbg !3290
  %28 = icmp eq i32 %6, 0, !dbg !3312
  %29 = select i1 %28, i32 1, i32 %6, !dbg !3312
  %30 = load i32, i32* %27, align 4, !dbg !3290, !tbaa !787
  %31 = icmp eq i32 %30, 22, !dbg !3313
  %32 = select i1 %31, i32 0, i32 %30, !dbg !3290
  %33 = call i8* @quote(i8* %0) #10, !dbg !3314
  call void (i32, i32, i8*, ...) @error(i32 %29, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i64 0, i64 0), i8* %5, i8* %33) #10, !dbg !3315
  %34 = load i64, i64* %8, align 8, !dbg !3316, !tbaa !858
  br label %35, !dbg !3317

; <label>:35:                                     ; preds = %13, %26
  %36 = phi i64 [ %14, %13 ], [ %34, %26 ], !dbg !3316
  call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !3277, metadata !690), !dbg !3286
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10, !dbg !3318
  ret i64 %36, !dbg !3319
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !3320 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3324, metadata !690), !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3325, metadata !690), !dbg !3331
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3326, metadata !690), !dbg !3332
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3327, metadata !690), !dbg !3333
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3328, metadata !690), !dbg !3334
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3329, metadata !690), !dbg !3335
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3336
  ret i64 %7, !dbg !3337
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !3338 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3344, metadata !690), !dbg !3362
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3345, metadata !690), !dbg !3363
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3346, metadata !690), !dbg !3364
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !3347, metadata !690), !dbg !3365
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3348, metadata !690), !dbg !3366
  %7 = bitcast i8** %6 to i8*, !dbg !3367
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3367
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3352, metadata !690), !dbg !3368
  %8 = icmp ult i32 %2, 37, !dbg !3369
  br i1 %8, label %10, label %9, !dbg !3369

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.102, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15, !dbg !3369
  unreachable, !dbg !3369

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3372
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3350, metadata !690), !dbg !3373
  %12 = tail call i32* @__errno_location() #17, !dbg !3374
  store i32 0, i32* %12, align 4, !dbg !3375, !tbaa !787
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3353, metadata !690), !dbg !3376
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3356, metadata !3377), !dbg !3378
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !3379
  %14 = load i16*, i16** %13, align 8, !tbaa !697
  br label %15, !dbg !3380

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !775
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3356, metadata !690), !dbg !3378
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3353, metadata !690), !dbg !3376
  %18 = zext i8 %17 to i64, !dbg !3379
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3379
  %20 = load i16, i16* %19, align 2, !dbg !3379, !tbaa !913
  %21 = and i16 %20, 8192, !dbg !3379
  %22 = icmp eq i16 %21, 0, !dbg !3380
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3381
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3353, metadata !690), !dbg !3376
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3356, metadata !3377), !dbg !3378
  br i1 %22, label %24, label %15, !dbg !3380, !llvm.loop !3382

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3372
  %26 = icmp eq i8 %17, 45, !dbg !3384
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3386, metadata !690) #10, !dbg !3396
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3394, metadata !690) #10, !dbg !3396
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3395, metadata !690) #10, !dbg !3396
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #10, !dbg !3398
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3351, metadata !690), !dbg !3399
  %29 = load i8*, i8** %25, align 8, !dbg !3400, !tbaa !697
  %30 = icmp eq i8* %29, %0, !dbg !3402
  br i1 %30, label %31, label %40, !dbg !3403

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3404
  br i1 %32, label %265, label %33, !dbg !3407

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3408, !tbaa !775
  %35 = icmp eq i8 %34, 0, !dbg !3408
  br i1 %35, label %265, label %36, !dbg !3409

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3408
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !3410
  %39 = icmp eq i8* %38, null, !dbg !3410
  br i1 %39, label %265, label %47, !dbg !3411

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3412, !tbaa !787
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3414

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3352, metadata !690), !dbg !3368
  br label %43, !dbg !3415

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !3352, metadata !690), !dbg !3368
  %45 = icmp eq i8* %4, null, !dbg !3417
  br i1 %45, label %46, label %47, !dbg !3419

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3351, metadata !690), !dbg !3399
  store i64 %28, i64* %3, align 8, !dbg !3420, !tbaa !858
  br label %265, !dbg !3422

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3423, !tbaa !775
  %51 = sext i8 %50 to i32, !dbg !3423
  %52 = icmp eq i8 %50, 0, !dbg !3424
  br i1 %52, label %262, label %53, !dbg !3425

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3357, metadata !690), !dbg !3426
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3360, metadata !690), !dbg !3427
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #14, !dbg !3428
  %55 = icmp eq i8* %54, null, !dbg !3428
  br i1 %55, label %56, label %58, !dbg !3430

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3351, metadata !690), !dbg !3399
  store i64 %49, i64* %3, align 8, !dbg !3431, !tbaa !858
  %57 = or i32 %48, 2, !dbg !3433
  br label %265, !dbg !3434

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
  ], !dbg !3435

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !3436
  %61 = icmp eq i8* %60, null, !dbg !3436
  br i1 %61, label %72, label %62, !dbg !3439

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3440
  %64 = load i8, i8* %63, align 1, !dbg !3440, !tbaa !775
  %65 = sext i8 %64 to i32, !dbg !3440
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3441

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3442
  %68 = load i8, i8* %67, align 1, !dbg !3442, !tbaa !775
  %69 = icmp eq i8 %68, 66, !dbg !3445
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3360, metadata !690), !dbg !3427
  %70 = select i1 %69, i64 3, i64 1, !dbg !3446
  br label %72, !dbg !3446

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !3357, metadata !690), !dbg !3426
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3360, metadata !690), !dbg !3427
  br label %72, !dbg !3447

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
  ], !dbg !3448

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !3449, metadata !690), !dbg !3455
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !3458
  %77 = shl i64 %49, 9, !dbg !3460
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !3461
  %79 = zext i1 %76 to i32, !dbg !3461
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !3361, metadata !690), !dbg !3462
  br label %253, !dbg !3463

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3449, metadata !690), !dbg !3464
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !3466
  %82 = shl i64 %49, 10, !dbg !3467
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3468
  %84 = zext i1 %81 to i32, !dbg !3468
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !3361, metadata !690), !dbg !3462
  br label %253, !dbg !3469

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3480
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3480
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3478
  %86 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3480
  %87 = icmp ult i64 %86, %49, !dbg !3481
  %88 = mul i64 %49, %73, !dbg !3483
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !3484
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3480
  %90 = icmp ult i64 %86, %89, !dbg !3481
  %91 = mul i64 %89, %73, !dbg !3483
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !3484
  %93 = or i1 %87, %90, !dbg !3485
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3480
  %94 = icmp ult i64 %86, %92, !dbg !3481
  %95 = mul i64 %92, %73, !dbg !3483
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !3484
  %97 = or i1 %93, %94, !dbg !3485
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3480
  %98 = icmp ult i64 %86, %96, !dbg !3481
  %99 = mul i64 %96, %73, !dbg !3483
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !3484
  %101 = or i1 %97, %98, !dbg !3485
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3480
  %102 = icmp ult i64 %86, %100, !dbg !3481
  %103 = mul i64 %100, %73, !dbg !3483
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !3484
  %105 = or i1 %101, %102, !dbg !3485
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3480
  %106 = icmp ult i64 %86, %104, !dbg !3481
  %107 = mul i64 %104, %73, !dbg !3483
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3484
  %109 = or i1 %105, %106, !dbg !3485
  %110 = zext i1 %109 to i32, !dbg !3485
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3478
  br label %253, !dbg !3486

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3470, metadata !690), !dbg !3487
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3489
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3489
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3470, metadata !690), !dbg !3487
  %112 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3470, metadata !690), !dbg !3487
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3489
  %113 = icmp ult i64 %112, %49, !dbg !3490
  %114 = mul i64 %49, %73, !dbg !3492
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !3493
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3470, metadata !690), !dbg !3487
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3470, metadata !690), !dbg !3487
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3470, metadata !690), !dbg !3487
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3489
  %116 = icmp ult i64 %112, %115, !dbg !3490
  %117 = mul i64 %115, %73, !dbg !3492
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3493
  %119 = or i1 %113, %116, !dbg !3494
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3470, metadata !690), !dbg !3487
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3470, metadata !690), !dbg !3487
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3470, metadata !690), !dbg !3487
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3489
  %120 = icmp ult i64 %112, %118, !dbg !3490
  %121 = mul i64 %118, %73, !dbg !3492
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !3493
  %123 = or i1 %119, %120, !dbg !3494
  %124 = zext i1 %123 to i32, !dbg !3494
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3470, metadata !690), !dbg !3487
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3470, metadata !690), !dbg !3487
  br label %253, !dbg !3486

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3470, metadata !690), !dbg !3495
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3497
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3497
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3470, metadata !690), !dbg !3495
  %126 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3470, metadata !690), !dbg !3495
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3497
  %127 = icmp ult i64 %126, %49, !dbg !3498
  %128 = mul i64 %49, %73, !dbg !3500
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !3501
  %130 = zext i1 %127 to i32, !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !3477, metadata !690), !dbg !3497
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !3477, metadata !690), !dbg !3497
  br label %253, !dbg !3486

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3470, metadata !690), !dbg !3502
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3504
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3504
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3470, metadata !690), !dbg !3502
  %132 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3470, metadata !690), !dbg !3502
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3504
  %133 = icmp ult i64 %132, %49, !dbg !3505
  %134 = mul i64 %49, %73, !dbg !3507
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !3508
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3470, metadata !690), !dbg !3502
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3470, metadata !690), !dbg !3502
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3470, metadata !690), !dbg !3502
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3504
  %136 = icmp ult i64 %132, %135, !dbg !3505
  %137 = mul i64 %135, %73, !dbg !3507
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3508
  %139 = or i1 %133, %136, !dbg !3509
  %140 = zext i1 %139 to i32, !dbg !3509
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3470, metadata !690), !dbg !3502
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3470, metadata !690), !dbg !3502
  br label %253, !dbg !3486

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3512
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3512
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3510
  %142 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3512
  %143 = icmp ult i64 %142, %49, !dbg !3513
  %144 = mul i64 %49, %73, !dbg !3515
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !3516
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3470, metadata !690), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3470, metadata !690), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3512
  %146 = icmp ult i64 %142, %145, !dbg !3513
  %147 = mul i64 %145, %73, !dbg !3515
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3516
  %149 = or i1 %143, %146, !dbg !3517
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3470, metadata !690), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3470, metadata !690), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3512
  %150 = icmp ult i64 %142, %148, !dbg !3513
  %151 = mul i64 %148, %73, !dbg !3515
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !3516
  %153 = or i1 %149, %150, !dbg !3517
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3470, metadata !690), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3470, metadata !690), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3512
  %154 = icmp ult i64 %142, %152, !dbg !3513
  %155 = mul i64 %152, %73, !dbg !3515
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !3516
  %157 = or i1 %153, %154, !dbg !3517
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3470, metadata !690), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3470, metadata !690), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3470, metadata !690), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3512
  %158 = icmp ult i64 %142, %156, !dbg !3513
  %159 = mul i64 %156, %73, !dbg !3515
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !3516
  %161 = or i1 %157, %158, !dbg !3517
  %162 = zext i1 %161 to i32, !dbg !3517
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3470, metadata !690), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3470, metadata !690), !dbg !3510
  br label %253, !dbg !3486

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3470, metadata !690), !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3520
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3520
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3470, metadata !690), !dbg !3518
  %164 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3470, metadata !690), !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3520
  %165 = icmp ult i64 %164, %49, !dbg !3521
  %166 = mul i64 %49, %73, !dbg !3523
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !3524
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3470, metadata !690), !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3470, metadata !690), !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3470, metadata !690), !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3520
  %168 = icmp ult i64 %164, %167, !dbg !3521
  %169 = mul i64 %167, %73, !dbg !3523
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !3524
  %171 = or i1 %165, %168, !dbg !3525
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3470, metadata !690), !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3470, metadata !690), !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3470, metadata !690), !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3520
  %172 = icmp ult i64 %164, %170, !dbg !3521
  %173 = mul i64 %170, %73, !dbg !3523
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !3524
  %175 = or i1 %171, %172, !dbg !3525
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3470, metadata !690), !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3470, metadata !690), !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3470, metadata !690), !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3520
  %176 = icmp ult i64 %164, %174, !dbg !3521
  %177 = mul i64 %174, %73, !dbg !3523
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !3524
  %179 = or i1 %175, %176, !dbg !3525
  %180 = zext i1 %179 to i32, !dbg !3525
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3470, metadata !690), !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3470, metadata !690), !dbg !3518
  br label %253, !dbg !3486

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3449, metadata !690), !dbg !3526
  %182 = icmp slt i64 %49, 0, !dbg !3528
  %183 = shl i64 %49, 1, !dbg !3529
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !3530
  %185 = lshr i64 %49, 63, !dbg !3530
  %186 = trunc i64 %185 to i32, !dbg !3530
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !3361, metadata !690), !dbg !3462
  br label %253, !dbg !3531

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3534
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3534
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3470, metadata !690), !dbg !3532
  %188 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3534
  %189 = icmp ult i64 %188, %49, !dbg !3535
  %190 = mul i64 %49, %73, !dbg !3537
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3534
  %192 = icmp ult i64 %188, %191, !dbg !3535
  %193 = mul i64 %191, %73, !dbg !3537
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !3538
  %195 = or i1 %189, %192, !dbg !3539
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3534
  %196 = icmp ult i64 %188, %194, !dbg !3535
  %197 = mul i64 %194, %73, !dbg !3537
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3538
  %199 = or i1 %195, %196, !dbg !3539
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3534
  %200 = icmp ult i64 %188, %198, !dbg !3535
  %201 = mul i64 %198, %73, !dbg !3537
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !3538
  %203 = or i1 %199, %200, !dbg !3539
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3534
  %204 = icmp ult i64 %188, %202, !dbg !3535
  %205 = mul i64 %202, %73, !dbg !3537
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !3538
  %207 = or i1 %203, %204, !dbg !3539
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3534
  %208 = icmp ult i64 %188, %206, !dbg !3535
  %209 = mul i64 %206, %73, !dbg !3537
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !3538
  %211 = or i1 %207, %208, !dbg !3539
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3534
  %212 = icmp ult i64 %188, %210, !dbg !3535
  %213 = mul i64 %210, %73, !dbg !3537
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3538
  %215 = or i1 %211, %212, !dbg !3539
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3534
  %216 = icmp ult i64 %188, %214, !dbg !3535
  %217 = mul i64 %214, %73, !dbg !3537
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !3538
  %219 = or i1 %215, %216, !dbg !3539
  %220 = zext i1 %219 to i32, !dbg !3539
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3532
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3532
  br label %253, !dbg !3486

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3542
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3542
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3540
  %222 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3542
  %223 = icmp ult i64 %222, %49, !dbg !3543
  %224 = mul i64 %49, %73, !dbg !3545
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !3546
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3542
  %226 = icmp ult i64 %222, %225, !dbg !3543
  %227 = mul i64 %225, %73, !dbg !3545
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3546
  %229 = or i1 %223, %226, !dbg !3547
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3542
  %230 = icmp ult i64 %222, %228, !dbg !3543
  %231 = mul i64 %228, %73, !dbg !3545
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !3546
  %233 = or i1 %229, %230, !dbg !3547
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3542
  %234 = icmp ult i64 %222, %232, !dbg !3543
  %235 = mul i64 %232, %73, !dbg !3545
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !3546
  %237 = or i1 %233, %234, !dbg !3547
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3542
  %238 = icmp ult i64 %222, %236, !dbg !3543
  %239 = mul i64 %236, %73, !dbg !3545
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !3546
  %241 = or i1 %237, %238, !dbg !3547
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3542
  %242 = icmp ult i64 %222, %240, !dbg !3543
  %243 = mul i64 %240, %73, !dbg !3545
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3546
  %245 = or i1 %241, %242, !dbg !3547
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3477, metadata !690), !dbg !3542
  %246 = icmp ult i64 %222, %244, !dbg !3543
  %247 = mul i64 %244, %73, !dbg !3545
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3546
  %249 = or i1 %245, %246, !dbg !3547
  %250 = zext i1 %249 to i32, !dbg !3547
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3470, metadata !690), !dbg !3540
  br label %253, !dbg !3486

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3351, metadata !690), !dbg !3399
  store i64 %49, i64* %3, align 8, !dbg !3548, !tbaa !858
  %252 = or i32 %48, 2, !dbg !3549
  br label %265, !dbg !3550

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !3361, metadata !690), !dbg !3462
  %256 = or i32 %255, %48, !dbg !3486
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !3352, metadata !690), !dbg !3368
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3551
  store i8* %257, i8** %25, align 8, !dbg !3551, !tbaa !697
  %258 = load i8, i8* %257, align 1, !dbg !3552, !tbaa !775
  %259 = icmp eq i8 %258, 0, !dbg !3552
  %260 = or i32 %256, 2, !dbg !3554
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !3352, metadata !690), !dbg !3368
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !3555
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3352, metadata !690), !dbg !3368
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3352, metadata !690), !dbg !3368
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !3352, metadata !690), !dbg !3368
  call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !3351, metadata !690), !dbg !3399
  store i64 %263, i64* %3, align 8, !dbg !3556, !tbaa !858
  br label %265, !dbg !3557

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3558
  ret i32 %266, !dbg !3558
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3559 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3562, metadata !690), !dbg !3568
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3563, metadata !690), !dbg !3569
  %3 = icmp eq i64 %0, 0, !dbg !3570
  %4 = icmp eq i64 %1, 0, !dbg !3571
  %5 = or i1 %3, %4, !dbg !3572
  br i1 %5, label %12, label %6, !dbg !3572

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3573
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3565, metadata !690), !dbg !3574
  %8 = udiv i64 %7, %1, !dbg !3575
  %9 = icmp eq i64 %8, %0, !dbg !3577
  br i1 %9, label %12, label %10, !dbg !3578

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3579
  store i32 12, i32* %11, align 4, !dbg !3581, !tbaa !787
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3562, metadata !690), !dbg !3568
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3563, metadata !690), !dbg !3569
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3582
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3564, metadata !690), !dbg !3583
  br label %16, !dbg !3584

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3585
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3586 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3631, metadata !690), !dbg !3635
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3632, metadata !690), !dbg !3636
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3634, metadata !690), !dbg !3637
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3638
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3633, metadata !690), !dbg !3639
  %3 = icmp slt i32 %2, 0, !dbg !3640
  br i1 %3, label %4, label %6, !dbg !3642

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3643
  br label %24, !dbg !3644

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3645
  %8 = icmp eq i32 %7, 0, !dbg !3645
  br i1 %8, label %13, label %9, !dbg !3647

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3648
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3649
  %12 = icmp eq i64 %11, -1, !dbg !3650
  br i1 %12, label %16, label %13, !dbg !3651

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3652
  %15 = icmp eq i32 %14, 0, !dbg !3652
  br i1 %15, label %16, label %18, !dbg !3653

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3632, metadata !690), !dbg !3636
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3634, metadata !690), !dbg !3637
  br label %24, !dbg !3655

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3656
  %20 = load i32, i32* %19, align 4, !dbg !3656, !tbaa !787
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3632, metadata !690), !dbg !3636
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3632, metadata !690), !dbg !3636
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3634, metadata !690), !dbg !3637
  %22 = icmp eq i32 %20, 0, !dbg !3657
  br i1 %22, label %24, label %23, !dbg !3655

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3659, !tbaa !787
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3634, metadata !690), !dbg !3637
  br label %24, !dbg !3661

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3662
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3663 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3708, metadata !690), !dbg !3709
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3710
  br i1 %2, label %6, label %3, !dbg !3712

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3713
  %5 = icmp eq i32 %4, 0, !dbg !3713
  br i1 %5, label %6, label %8, !dbg !3714

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3715
  br label %17, !dbg !3716

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3717, metadata !690) #10, !dbg !3722
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3724
  %10 = load i32, i32* %9, align 8, !dbg !3724, !tbaa !977
  %11 = and i32 %10, 256, !dbg !3726
  %12 = icmp eq i32 %11, 0, !dbg !3726
  br i1 %12, label %15, label %13, !dbg !3727

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3728
  br label %15, !dbg !3728

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3729
  br label %17, !dbg !3730

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3731
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3732 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3777, metadata !690), !dbg !3783
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3778, metadata !690), !dbg !3784
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3779, metadata !690), !dbg !3785
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3786
  %5 = load i8*, i8** %4, align 8, !dbg !3786, !tbaa !851
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3787
  %7 = load i8*, i8** %6, align 8, !dbg !3787, !tbaa !847
  %8 = icmp eq i8* %5, %7, !dbg !3788
  br i1 %8, label %9, label %28, !dbg !3789

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3790
  %11 = load i8*, i8** %10, align 8, !dbg !3790, !tbaa !924
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3791
  %13 = load i8*, i8** %12, align 8, !dbg !3791, !tbaa !3792
  %14 = icmp eq i8* %11, %13, !dbg !3793
  br i1 %14, label %15, label %28, !dbg !3794

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3795
  %17 = load i8*, i8** %16, align 8, !dbg !3795, !tbaa !3796
  %18 = icmp eq i8* %17, null, !dbg !3797
  br i1 %18, label %19, label %28, !dbg !3798

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3799
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3800
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3780, metadata !690), !dbg !3801
  %22 = icmp eq i64 %21, -1, !dbg !3802
  br i1 %22, label %30, label %23, !dbg !3804

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3805
  %25 = load i32, i32* %24, align 8, !dbg !3806, !tbaa !977
  %26 = and i32 %25, -17, !dbg !3806
  store i32 %26, i32* %24, align 8, !dbg !3806, !tbaa !977
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3807
  store i64 %21, i64* %27, align 8, !dbg !3808, !tbaa !3809
  br label %30, !dbg !3810

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3811
  br label %30, !dbg !3812

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3813
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3814 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3831, metadata !690), !dbg !3840
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3832, metadata !690), !dbg !3841
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3833, metadata !690), !dbg !3842
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3834, metadata !690), !dbg !3843
  %6 = bitcast i32* %5 to i8*, !dbg !3844
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3844
  %7 = icmp eq i32* %0, null, !dbg !3845
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3831, metadata !690), !dbg !3840
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3847
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3831, metadata !690), !dbg !3840
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3848
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3835, metadata !690), !dbg !3849
  %10 = icmp ugt i64 %9, -3, !dbg !3850
  %11 = icmp ne i64 %2, 0, !dbg !3851
  %12 = and i1 %11, %10, !dbg !3852
  br i1 %12, label %13, label %18, !dbg !3852

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3853
  br i1 %14, label %18, label %15, !dbg !3854

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3855, !tbaa !775
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3837, metadata !690), !dbg !3856
  %17 = zext i8 %16 to i32, !dbg !3857
  store i32 %17, i32* %8, align 4, !dbg !3858, !tbaa !787
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3859
  ret i64 %19, !dbg !3859
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3860 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3905, metadata !690), !dbg !3910
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3911
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3912, metadata !690), !dbg !3915
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3917
  %4 = load i32, i32* %3, align 8, !dbg !3917, !tbaa !977
  %5 = and i32 %4, 32, !dbg !3917
  %6 = icmp eq i32 %5, 0, !dbg !3918
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3919
  %8 = icmp ne i32 %7, 0, !dbg !3920
  br i1 %6, label %9, label %19, !dbg !3921

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3923
  %11 = xor i1 %8, true, !dbg !3924
  %12 = or i1 %10, %11, !dbg !3924
  %13 = sext i1 %8 to i32, !dbg !3924
  br i1 %12, label %22, label %14, !dbg !3924

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3925
  %16 = load i32, i32* %15, align 4, !dbg !3925, !tbaa !787
  %17 = icmp ne i32 %16, 9, !dbg !3926
  %18 = sext i1 %17 to i32, !dbg !3927
  br label %22, !dbg !3927

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3928

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3930
  store i32 0, i32* %21, align 4, !dbg !3932, !tbaa !787
  br label %22, !dbg !3930

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3933
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3934 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3939, metadata !690), !dbg !3942
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3940, metadata !690), !dbg !3943
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3944
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3941, metadata !690), !dbg !3945
  %3 = icmp eq i8* %2, null, !dbg !3946
  br i1 %3, label %11, label %4, !dbg !3948

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.117, i64 0, i64 0)) #14, !dbg !3949
  %6 = icmp eq i32 %5, 0, !dbg !3954
  br i1 %6, label %10, label %7, !dbg !3955

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.118, i64 0, i64 0)) #14, !dbg !3956
  %9 = icmp eq i32 %8, 0, !dbg !3957
  br i1 %9, label %10, label %11, !dbg !3958

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3940, metadata !690), !dbg !3943
  br label %11, !dbg !3959

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3960
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3961 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3967, metadata !690), !dbg !4041
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4034, metadata !690), !dbg !4044
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4045
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3965, metadata !690), !dbg !4046
  %4 = icmp eq i8* %3, null, !dbg !4047
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.121, i64 0, i64 0), i8* %3, !dbg !4049
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3965, metadata !690), !dbg !4046
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4050, !tbaa !697
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3981, metadata !690) #10, !dbg !4051
  %7 = icmp eq i8* %6, null, !dbg !4052
  br i1 %7, label %8, label %123, !dbg !4053

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.122, i64 0, i64 0)) #10, !dbg !4054
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3982, metadata !690) #10, !dbg !4055
  %10 = icmp eq i8* %9, null, !dbg !4056
  br i1 %10, label %14, label %11, !dbg !4058

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4059, !tbaa !775
  %13 = icmp eq i8 %12, 0, !dbg !4060
  br i1 %13, label %14, label %15, !dbg !4061

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4062

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.123, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3982, metadata !690) #10, !dbg !4055
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4063
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3985, metadata !690) #10, !dbg !4064
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3987, metadata !690) #10, !dbg !4065
  %18 = icmp eq i64 %17, 0, !dbg !4066
  br i1 %18, label %24, label %19, !dbg !4067

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4068
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4068
  %22 = load i8, i8* %21, align 1, !dbg !4068, !tbaa !775
  %23 = icmp ne i8 %22, 47, !dbg !4068
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4069
  %27 = add i64 %17, 14, !dbg !4070
  %28 = add i64 %27, %26, !dbg !4071
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4072
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3984, metadata !690) #10, !dbg !4073
  %30 = icmp eq i8* %29, null, !dbg !4074
  br i1 %30, label %121, label %31, !dbg !4074

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4075
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4078

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4079, !tbaa !775
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4081
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.124, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4082
  br label %37, !dbg !4083

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4081
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.124, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4082
  br label %37, !dbg !4083

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3989, metadata !690) #10, !dbg !4085
  %39 = icmp slt i32 %38, 0, !dbg !4086
  br i1 %39, label %119, label %40, !dbg !4087

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.125, i64 0, i64 0)) #10, !dbg !4088
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3990, metadata !690) #10, !dbg !4089
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4090
  br i1 %42, label %43, label %45, !dbg !4091

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !4092
  br label %119, !dbg !4094

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4031, metadata !690) #10, !dbg !4095
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4032, metadata !690) #10, !dbg !4096
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4097

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4098

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4031, metadata !690) #10, !dbg !4095
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4032, metadata !690) #10, !dbg !4096
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4098
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4099
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4100, metadata !690) #10, !dbg !4105
  %54 = load i8*, i8** %48, align 8, !dbg !4107, !tbaa !847
  %55 = load i8*, i8** %49, align 8, !dbg !4107, !tbaa !851
  %56 = icmp ult i8* %54, %55, !dbg !4107
  br i1 %56, label %59, label %57, !dbg !4107, !prof !852

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4107
  br label %63, !dbg !4107

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4107
  store i8* %60, i8** %48, align 8, !dbg !4107, !tbaa !847
  %61 = load i8, i8* %54, align 1, !dbg !4107, !tbaa !775
  %62 = zext i8 %61 to i32, !dbg !4107
  br label %63, !dbg !4107

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4107
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4033, metadata !690) #10, !dbg !4108
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4109, !llvm.loop !4110

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4115

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4100, metadata !690) #10, !dbg !4117
  %67 = load i8*, i8** %48, align 8, !dbg !4115, !tbaa !847
  %68 = load i8*, i8** %49, align 8, !dbg !4115, !tbaa !851
  %69 = icmp ult i8* %67, %68, !dbg !4115
  br i1 %69, label %72, label %70, !dbg !4115, !prof !852

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4115
  br label %76, !dbg !4115

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4115
  store i8* %73, i8** %48, align 8, !dbg !4115, !tbaa !847
  %74 = load i8, i8* %67, align 1, !dbg !4115, !tbaa !775
  %75 = zext i8 %74 to i32, !dbg !4115
  br label %76, !dbg !4115

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4115
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4033, metadata !690) #10, !dbg !4108
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4118, !llvm.loop !4119

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !4122
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.126, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !4123
  %81 = icmp slt i32 %80, 2, !dbg !4125
  br i1 %81, label %112, label %82, !dbg !4126

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4127
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4038, metadata !690) #10, !dbg !4128
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4129
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4039, metadata !690) #10, !dbg !4130
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4040, metadata !690) #10, !dbg !4131
  %85 = icmp eq i64 %51, 0, !dbg !4132
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4134

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4032, metadata !690) #10, !dbg !4096
  %90 = add i64 %87, 2, !dbg !4135
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !4137
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4031, metadata !690) #10, !dbg !4095
  br label %96, !dbg !4138

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4139
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4032, metadata !690) #10, !dbg !4096
  %94 = add i64 %93, 1, !dbg !4141
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !4142
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4031, metadata !690) #10, !dbg !4095
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4031, metadata !690) #10, !dbg !4095
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4032, metadata !690) #10, !dbg !4096
  %99 = icmp eq i8* %98, null, !dbg !4143
  br i1 %99, label %100, label %102, !dbg !4145

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4032, metadata !690) #10, !dbg !4096
  call void @free(i8* %52) #10, !dbg !4146
  br label %112, !dbg !4148

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4149
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4149
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4150
  %104 = xor i64 %84, -1, !dbg !4151
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4151
  %106 = xor i64 %83, -1, !dbg !4152
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4152
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4153, metadata !690) #10, !dbg !4161
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4160, metadata !690) #10, !dbg !4161
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !4163
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !4164
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4153, metadata !690) #10, !dbg !4165
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4160, metadata !690) #10, !dbg !4165
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !4167
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !4168
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4031, metadata !690) #10, !dbg !4095
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4032, metadata !690) #10, !dbg !4096
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4149
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4149
  br label %50, !dbg !4169, !llvm.loop !4119

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4149
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4149
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4170
  %116 = icmp eq i64 %113, 0, !dbg !4171
  br i1 %116, label %119, label %117, !dbg !4173

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4174
  store i8 0, i8* %118, align 1, !dbg !4176, !tbaa !775
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.121, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.121, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.121, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3981, metadata !690) #10, !dbg !4051
  call void @free(i8* %29) #10, !dbg !4177
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.121, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3981, metadata !690) #10, !dbg !4051
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4178, !tbaa !697
  br label %123, !dbg !4179

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3981, metadata !690) #10, !dbg !4051
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3966, metadata !690), !dbg !4180
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3966, metadata !690), !dbg !4180
  %125 = load i8, i8* %124, align 1, !dbg !4181, !tbaa !775
  %126 = icmp eq i8 %125, 0, !dbg !4183
  br i1 %126, label %152, label %127, !dbg !4184

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4185

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3966, metadata !690), !dbg !4180
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4185
  %132 = icmp eq i32 %131, 0, !dbg !4187
  br i1 %132, label %139, label %133, !dbg !4188

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4189
  br i1 %134, label %135, label %143, !dbg !4190

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4191
  %137 = load i8, i8* %136, align 1, !dbg !4191, !tbaa !775
  %138 = icmp eq i8 %137, 0, !dbg !4192
  br i1 %138, label %139, label %143, !dbg !4193

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4194
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4196
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4197
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3965, metadata !690), !dbg !4046
  br label %152, !dbg !4198

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4199
  %145 = add i64 %144, 1, !dbg !4200
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4201
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3966, metadata !690), !dbg !4180
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4202
  %148 = add i64 %147, 1, !dbg !4203
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4204
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3966, metadata !690), !dbg !4180
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3966, metadata !690), !dbg !4180
  %150 = load i8, i8* %149, align 1, !dbg !4181, !tbaa !775
  %151 = icmp eq i8 %150, 0, !dbg !4183
  br i1 %151, label %152, label %128, !dbg !4184, !llvm.loop !4205

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3965, metadata !690), !dbg !4046
  %154 = load i8, i8* %153, align 1, !dbg !4207, !tbaa !775
  %155 = icmp eq i8 %154, 0, !dbg !4209
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.127, i64 0, i64 0), i8* %153, !dbg !4210
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3965, metadata !690), !dbg !4046
  ret i8* %156, !dbg !4211
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

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
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !183, !189, !197, !619, !204, !211, !622, !265, !630, !647, !649, !660, !664, !666, !668, !670, !672, !675, !677, !274}
!llvm.ident = !{!679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679, !679}
!llvm.module.flags = !{!680, !681, !682, !683, !684}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 47, type: !178, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !54)
!3 = !DIFile(filename: "src/fold.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 46, size: 32, elements: !30)
!29 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!31 = !DIEnumerator(name: "_ISupper", value: 256)
!32 = !DIEnumerator(name: "_ISlower", value: 512)
!33 = !DIEnumerator(name: "_ISalpha", value: 1024)
!34 = !DIEnumerator(name: "_ISdigit", value: 2048)
!35 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!36 = !DIEnumerator(name: "_ISspace", value: 8192)
!37 = !DIEnumerator(name: "_ISprint", value: 16384)
!38 = !DIEnumerator(name: "_ISgraph", value: 32768)
!39 = !DIEnumerator(name: "_ISblank", value: 1)
!40 = !DIEnumerator(name: "_IScntrl", value: 2)
!41 = !DIEnumerator(name: "_ISpunct", value: 4)
!42 = !DIEnumerator(name: "_ISalnum", value: 8)
!43 = !{!44, !46, !47, !48, !49, !52, !53}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 62, baseType: !51)
!50 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!51 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !{!55, !58, !60, !62, !0, !84, !98, !176}
!55 = !DIGlobalVariableExpression(var: !56)
!56 = distinct !DIGlobalVariable(name: "break_spaces", scope: !2, file: !3, line: 39, type: !57, isLocal: true, isDefinition: true)
!57 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!58 = !DIGlobalVariableExpression(var: !59)
!59 = distinct !DIGlobalVariable(name: "count_bytes", scope: !2, file: !3, line: 42, type: !57, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61)
!61 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 45, type: !57, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63)
!63 = distinct !DIGlobalVariable(name: "infomap", scope: !64, file: !65, line: 632, type: !81, isLocal: true, isDefinition: true)
!64 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !65, file: !65, line: 630, type: !66, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !70)
!65 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!70 = !{!71, !72, !73, !80}
!71 = !DILocalVariable(name: "program", arg: 1, scope: !64, file: !65, line: 630, type: !68)
!72 = !DILocalVariable(name: "node", scope: !64, file: !65, line: 642, type: !68)
!73 = !DILocalVariable(name: "map_prog", scope: !64, file: !65, line: 643, type: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !64, file: !65, line: 632, size: 128, elements: !77)
!77 = !{!78, !79}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !76, file: !65, line: 632, baseType: !68, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !76, file: !65, line: 632, baseType: !68, size: 64, offset: 64)
!80 = !DILocalVariable(name: "lc_messages", scope: !64, file: !65, line: 655, type: !68)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 896, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 7)
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 1536, elements: !96)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !89, line: 50, size: 256, elements: !90)
!89 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!90 = !{!91, !92, !93, !95}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !88, file: !89, line: 52, baseType: !68, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !88, file: !89, line: 55, baseType: !47, size: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !88, file: !89, line: 56, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !88, file: !89, line: 57, baseType: !47, size: 32, offset: 192)
!96 = !{!97}
!97 = !DISubrange(count: 6)
!98 = !DIGlobalVariableExpression(var: !99)
!99 = distinct !DIGlobalVariable(name: "line_out", scope: !100, file: !3, line: 126, type: !44, isLocal: true, isDefinition: true)
!100 = distinct !DISubprogram(name: "fold_file", scope: !3, file: !3, line: 120, type: !101, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !103)
!101 = !DISubroutineType(types: !102)
!102 = !{!57, !68, !49}
!103 = !{!104, !105, !106, !162, !163, !164, !165, !166, !172, !173}
!104 = !DILocalVariable(name: "filename", arg: 1, scope: !100, file: !3, line: 120, type: !68)
!105 = !DILocalVariable(name: "width", arg: 2, scope: !100, file: !3, line: 120, type: !49)
!106 = !DILocalVariable(name: "istream", scope: !100, file: !3, line: 122, type: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !110)
!109 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 241, size: 1728, elements: !112)
!111 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !133, !134, !135, !136, !140, !141, !143, !147, !150, !152, !153, !154, !155, !156, !157, !158}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !110, file: !111, line: 242, baseType: !47, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !110, file: !111, line: 247, baseType: !44, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !110, file: !111, line: 248, baseType: !44, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !110, file: !111, line: 249, baseType: !44, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !110, file: !111, line: 250, baseType: !44, size: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !110, file: !111, line: 251, baseType: !44, size: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !110, file: !111, line: 252, baseType: !44, size: 64, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !110, file: !111, line: 253, baseType: !44, size: 64, offset: 448)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !110, file: !111, line: 254, baseType: !44, size: 64, offset: 512)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !110, file: !111, line: 256, baseType: !44, size: 64, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !110, file: !111, line: 257, baseType: !44, size: 64, offset: 640)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !110, file: !111, line: 258, baseType: !44, size: 64, offset: 704)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !110, file: !111, line: 260, baseType: !126, size: 64, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !111, line: 156, size: 192, elements: !128)
!128 = !{!129, !130, !132}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !127, file: !111, line: 157, baseType: !126, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !127, file: !111, line: 158, baseType: !131, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !127, file: !111, line: 162, baseType: !47, size: 32, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !110, file: !111, line: 262, baseType: !131, size: 64, offset: 832)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !110, file: !111, line: 264, baseType: !47, size: 32, offset: 896)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !110, file: !111, line: 268, baseType: !47, size: 32, offset: 928)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !110, file: !111, line: 270, baseType: !137, size: 64, offset: 960)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !138, line: 140, baseType: !139)
!138 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!139 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !110, file: !111, line: 274, baseType: !48, size: 16, offset: 1024)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !110, file: !111, line: 275, baseType: !142, size: 8, offset: 1040)
!142 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !110, file: !111, line: 276, baseType: !144, size: 8, offset: 1048)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 1)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !110, file: !111, line: 280, baseType: !148, size: 64, offset: 1088)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !111, line: 150, baseType: null)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !110, file: !111, line: 289, baseType: !151, size: 64, offset: 1152)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !138, line: 141, baseType: !139)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !110, file: !111, line: 297, baseType: !46, size: 64, offset: 1216)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !110, file: !111, line: 298, baseType: !46, size: 64, offset: 1280)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !110, file: !111, line: 299, baseType: !46, size: 64, offset: 1344)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !110, file: !111, line: 300, baseType: !46, size: 64, offset: 1408)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !110, file: !111, line: 302, baseType: !49, size: 64, offset: 1472)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !110, file: !111, line: 303, baseType: !47, size: 32, offset: 1536)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !110, file: !111, line: 305, baseType: !159, size: 160, offset: 1568)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 20)
!162 = !DILocalVariable(name: "c", scope: !100, file: !3, line: 123, type: !47)
!163 = !DILocalVariable(name: "column", scope: !100, file: !3, line: 124, type: !49)
!164 = !DILocalVariable(name: "offset_out", scope: !100, file: !3, line: 125, type: !49)
!165 = !DILocalVariable(name: "saved_errno", scope: !100, file: !3, line: 128, type: !47)
!166 = !DILocalVariable(name: "found_blank", scope: !167, file: !3, line: 169, type: !57)
!167 = distinct !DILexicalBlock(scope: !168, file: !3, line: 168, column: 13)
!168 = distinct !DILexicalBlock(scope: !169, file: !3, line: 167, column: 15)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 163, column: 9)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 162, column: 11)
!171 = distinct !DILexicalBlock(scope: !100, file: !3, line: 147, column: 5)
!172 = !DILocalVariable(name: "logical_end", scope: !167, file: !3, line: 170, type: !49)
!173 = !DILocalVariable(name: "i", scope: !174, file: !3, line: 185, type: !49)
!174 = distinct !DILexicalBlock(scope: !175, file: !3, line: 184, column: 17)
!175 = distinct !DILexicalBlock(scope: !167, file: !3, line: 183, column: 19)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "allocated_out", scope: !100, file: !3, line: 127, type: !49, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 280, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 35)
!181 = !DIGlobalVariableExpression(var: !182)
!182 = distinct !DIGlobalVariable(name: "Version", scope: !183, file: !184, line: 2, type: !68, isLocal: false, isDefinition: true)
!183 = distinct !DICompileUnit(language: DW_LANG_C99, file: !184, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !185, globals: !186)
!184 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!185 = !{}
!186 = !{!181}
!187 = !DIGlobalVariableExpression(var: !188)
!188 = distinct !DIGlobalVariable(name: "file_name", scope: !189, file: !194, line: 36, type: !68, isLocal: true, isDefinition: true)
!189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !190, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !185, globals: !191)
!190 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!191 = !{!187, !192}
!192 = !DIGlobalVariableExpression(var: !193)
!193 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !189, file: !194, line: 46, type: !57, isLocal: true, isDefinition: true)
!194 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!195 = !DIGlobalVariableExpression(var: !196)
!196 = distinct !DIGlobalVariable(name: "exit_failure", scope: !197, file: !200, line: 24, type: !201, isLocal: false, isDefinition: true)
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !185, globals: !199)
!198 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!199 = !{!195}
!200 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!201 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!202 = !DIGlobalVariableExpression(var: !203)
!203 = distinct !DIGlobalVariable(name: "program_name", scope: !204, file: !208, line: 33, type: !68, isLocal: false, isDefinition: true)
!204 = distinct !DICompileUnit(language: DW_LANG_C99, file: !205, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !185, retainedTypes: !206, globals: !207)
!205 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!206 = !{!46, !44}
!207 = !{!202}
!208 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!209 = !DIGlobalVariableExpression(var: !210)
!210 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !211, file: !223, line: 77, type: !259, isLocal: false, isDefinition: true)
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !213, retainedTypes: !219, globals: !220)
!212 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!213 = !{!5, !214, !28}
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !215)
!215 = !{!216, !217, !218}
!216 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!217 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!218 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!219 = !{!47, !48, !49, !44}
!220 = !{!209, !221, !228, !241, !243, !248, !255, !257}
!221 = !DIGlobalVariableExpression(var: !222)
!222 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !211, file: !223, line: 93, type: !224, isLocal: false, isDefinition: true)
!223 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 320, elements: !226)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!226 = !{!227}
!227 = !DISubrange(count: 10)
!228 = !DIGlobalVariableExpression(var: !229)
!229 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !211, file: !223, line: 1043, type: !230, isLocal: false, isDefinition: true)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !223, line: 57, size: 448, elements: !231)
!231 = !{!232, !233, !234, !239, !240}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !230, file: !223, line: 60, baseType: !5, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !230, file: !223, line: 63, baseType: !47, size: 32, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !230, file: !223, line: 67, baseType: !235, size: 256, offset: 64)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 256, elements: !237)
!236 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!237 = !{!238}
!238 = !DISubrange(count: 8)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !230, file: !223, line: 70, baseType: !68, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !230, file: !223, line: 73, baseType: !68, size: 64, offset: 384)
!241 = !DIGlobalVariableExpression(var: !242)
!242 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !211, file: !223, line: 108, type: !230, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244)
!244 = distinct !DIGlobalVariable(name: "slot0", scope: !211, file: !223, line: 834, type: !245, isLocal: true, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 256)
!248 = !DIGlobalVariableExpression(var: !249)
!249 = distinct !DIGlobalVariable(name: "slotvec", scope: !211, file: !223, line: 837, type: !250, isLocal: true, isDefinition: true)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !223, line: 826, size: 128, elements: !252)
!252 = !{!253, !254}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !251, file: !223, line: 828, baseType: !49, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !251, file: !223, line: 829, baseType: !44, size: 64, offset: 64)
!255 = !DIGlobalVariableExpression(var: !256)
!256 = distinct !DIGlobalVariable(name: "nslots", scope: !211, file: !223, line: 835, type: !47, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258)
!258 = distinct !DIGlobalVariable(name: "slotvec0", scope: !211, file: !223, line: 836, type: !251, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 704, elements: !261)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!261 = !{!262}
!262 = !DISubrange(count: 11)
!263 = !DIGlobalVariableExpression(var: !264)
!264 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !265, file: !268, line: 26, type: !269, isLocal: false, isDefinition: true)
!265 = distinct !DICompileUnit(language: DW_LANG_C99, file: !266, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !185, globals: !267)
!266 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!267 = !{!263}
!268 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 376, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 47)
!272 = !DIGlobalVariableExpression(var: !273)
!273 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !274, file: !617, line: 120, type: !618, isLocal: true, isDefinition: true)
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, retainedTypes: !615, globals: !616)
!275 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!276 = !{!277}
!277 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !278, line: 41, size: 32, elements: !279)
!278 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614}
!280 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!281 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!282 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!283 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!284 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!285 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!286 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!287 = !DIEnumerator(name: "DAY_1", value: 131079)
!288 = !DIEnumerator(name: "DAY_2", value: 131080)
!289 = !DIEnumerator(name: "DAY_3", value: 131081)
!290 = !DIEnumerator(name: "DAY_4", value: 131082)
!291 = !DIEnumerator(name: "DAY_5", value: 131083)
!292 = !DIEnumerator(name: "DAY_6", value: 131084)
!293 = !DIEnumerator(name: "DAY_7", value: 131085)
!294 = !DIEnumerator(name: "ABMON_1", value: 131086)
!295 = !DIEnumerator(name: "ABMON_2", value: 131087)
!296 = !DIEnumerator(name: "ABMON_3", value: 131088)
!297 = !DIEnumerator(name: "ABMON_4", value: 131089)
!298 = !DIEnumerator(name: "ABMON_5", value: 131090)
!299 = !DIEnumerator(name: "ABMON_6", value: 131091)
!300 = !DIEnumerator(name: "ABMON_7", value: 131092)
!301 = !DIEnumerator(name: "ABMON_8", value: 131093)
!302 = !DIEnumerator(name: "ABMON_9", value: 131094)
!303 = !DIEnumerator(name: "ABMON_10", value: 131095)
!304 = !DIEnumerator(name: "ABMON_11", value: 131096)
!305 = !DIEnumerator(name: "ABMON_12", value: 131097)
!306 = !DIEnumerator(name: "MON_1", value: 131098)
!307 = !DIEnumerator(name: "MON_2", value: 131099)
!308 = !DIEnumerator(name: "MON_3", value: 131100)
!309 = !DIEnumerator(name: "MON_4", value: 131101)
!310 = !DIEnumerator(name: "MON_5", value: 131102)
!311 = !DIEnumerator(name: "MON_6", value: 131103)
!312 = !DIEnumerator(name: "MON_7", value: 131104)
!313 = !DIEnumerator(name: "MON_8", value: 131105)
!314 = !DIEnumerator(name: "MON_9", value: 131106)
!315 = !DIEnumerator(name: "MON_10", value: 131107)
!316 = !DIEnumerator(name: "MON_11", value: 131108)
!317 = !DIEnumerator(name: "MON_12", value: 131109)
!318 = !DIEnumerator(name: "AM_STR", value: 131110)
!319 = !DIEnumerator(name: "PM_STR", value: 131111)
!320 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!321 = !DIEnumerator(name: "D_FMT", value: 131113)
!322 = !DIEnumerator(name: "T_FMT", value: 131114)
!323 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!324 = !DIEnumerator(name: "ERA", value: 131116)
!325 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!326 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!327 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!328 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!329 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!330 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!331 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!332 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!333 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!334 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!335 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!336 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!337 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!338 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!339 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!340 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!341 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!342 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!343 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!344 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!345 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!346 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!347 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!348 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!349 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!350 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!351 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!352 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!353 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!354 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!355 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!356 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!357 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!358 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!359 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!360 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!361 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!362 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!363 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!364 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!365 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!366 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!367 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!368 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!369 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!370 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!371 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!372 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!373 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!374 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!375 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!376 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!377 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!378 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!379 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!380 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!381 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!382 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!383 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!384 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!385 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!386 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!387 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!388 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!389 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!390 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!391 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!392 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!393 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!394 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!395 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!396 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!397 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!398 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!399 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!400 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!401 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!402 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!403 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!404 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!405 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!406 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!407 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!408 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!409 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!410 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!411 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!412 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!413 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!414 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!415 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!416 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!417 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!418 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!419 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!420 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!421 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!422 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!423 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!424 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!425 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!426 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!427 = !DIEnumerator(name: "CODESET", value: 14)
!428 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!429 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!430 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!431 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!451 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!452 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!453 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!470 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!471 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!472 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!473 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!474 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!475 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!476 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!477 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!478 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!479 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!480 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!481 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!482 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!483 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!484 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!486 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!487 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!488 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!489 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!490 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!491 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!492 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!493 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!494 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!495 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!496 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!497 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!498 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!499 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!500 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!501 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!502 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!503 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!504 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!505 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!506 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!507 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!508 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!509 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!510 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!511 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!512 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!513 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!514 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!515 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!516 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!517 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!518 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!519 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!520 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!521 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!537 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!538 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!539 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!540 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!541 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!542 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!543 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!544 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!545 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!546 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!547 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!548 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!549 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!550 = !DIEnumerator(name: "THOUSEP", value: 65537)
!551 = !DIEnumerator(name: "__GROUPING", value: 65538)
!552 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!553 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!554 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!555 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!556 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!557 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!558 = !DIEnumerator(name: "__YESSTR", value: 327682)
!559 = !DIEnumerator(name: "__NOSTR", value: 327683)
!560 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!561 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!562 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!563 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!564 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!565 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!566 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!567 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!568 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!569 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!570 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!571 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!572 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!573 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!574 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!575 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!576 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!577 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!578 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!579 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!580 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!581 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!582 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!583 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!584 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!585 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!586 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!587 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!588 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!589 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!590 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!591 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!592 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!593 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!594 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!595 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!596 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!602 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!603 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!604 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!608 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!609 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!610 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!611 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!612 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!613 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!614 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!615 = !{!46, !44, !52}
!616 = !{!272}
!617 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!618 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!619 = distinct !DICompileUnit(language: DW_LANG_C99, file: !620, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !621)
!620 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!621 = !{!19}
!622 = distinct !DICompileUnit(language: DW_LANG_C99, file: !623, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !624, retainedTypes: !629)
!623 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!624 = !{!625}
!625 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !626, line: 41, size: 32, elements: !627)
!626 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!627 = !{!628}
!628 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!629 = !{!46}
!630 = distinct !DICompileUnit(language: DW_LANG_C99, file: !631, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !632, retainedTypes: !646)
!631 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!632 = !{!633}
!633 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !635, file: !634, line: 192, size: 32, elements: !644)
!634 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!635 = distinct !DISubprogram(name: "x2nrealloc", scope: !634, file: !634, line: 180, type: !636, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !639)
!636 = !DISubroutineType(types: !637)
!637 = !{!46, !46, !638, !49}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!639 = !{!640, !641, !642, !643}
!640 = !DILocalVariable(name: "p", arg: 1, scope: !635, file: !634, line: 180, type: !46)
!641 = !DILocalVariable(name: "pn", arg: 2, scope: !635, file: !634, line: 180, type: !638)
!642 = !DILocalVariable(name: "s", arg: 3, scope: !635, file: !634, line: 180, type: !49)
!643 = !DILocalVariable(name: "n", scope: !635, file: !634, line: 182, type: !49)
!644 = !{!645}
!645 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!646 = !{!49, !44, !46}
!647 = distinct !DICompileUnit(language: DW_LANG_C99, file: !648, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !185)
!648 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!649 = distinct !DICompileUnit(language: DW_LANG_C99, file: !650, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !651)
!650 = !DIFile(filename: "./lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!651 = !{!652}
!652 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !653, line: 26, size: 32, elements: !654)
!653 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!654 = !{!655, !656, !657, !658, !659}
!655 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!656 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!657 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!658 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!659 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!660 = distinct !DICompileUnit(language: DW_LANG_C99, file: !661, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !662, retainedTypes: !663)
!661 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!662 = !{!652, !28}
!663 = !{!47, !48}
!664 = distinct !DICompileUnit(language: DW_LANG_C99, file: !665, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !185, retainedTypes: !629)
!665 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!666 = distinct !DICompileUnit(language: DW_LANG_C99, file: !667, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !185)
!667 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!668 = distinct !DICompileUnit(language: DW_LANG_C99, file: !669, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !185, retainedTypes: !629)
!669 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!670 = distinct !DICompileUnit(language: DW_LANG_C99, file: !671, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !185, retainedTypes: !629)
!671 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!672 = distinct !DICompileUnit(language: DW_LANG_C99, file: !673, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !185, retainedTypes: !674)
!673 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!674 = !{!49}
!675 = distinct !DICompileUnit(language: DW_LANG_C99, file: !676, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !185)
!676 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!677 = distinct !DICompileUnit(language: DW_LANG_C99, file: !678, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !185)
!678 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!679 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!680 = !{i32 2, !"Dwarf Version", i32 4}
!681 = !{i32 2, !"Debug Info Version", i32 3}
!682 = !{i32 1, !"wchar_size", i32 4}
!683 = !{i32 7, !"PIC Level", i32 2}
!684 = !{i32 7, !"PIE Level", i32 2}
!685 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 60, type: !686, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !688)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !47}
!688 = !{!689}
!689 = !DILocalVariable(name: "status", arg: 1, scope: !685, file: !3, line: 60, type: !47)
!690 = !DIExpression()
!691 = !DILocation(line: 60, column: 12, scope: !685)
!692 = !DILocation(line: 62, column: 14, scope: !693)
!693 = distinct !DILexicalBlock(scope: !685, file: !3, line: 62, column: 7)
!694 = !DILocation(line: 62, column: 7, scope: !685)
!695 = !DILocation(line: 63, column: 5, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !3, line: 63, column: 5)
!697 = !{!698, !698, i64 0}
!698 = !{!"any pointer", !699, i64 0}
!699 = !{!"omnipotent char", !700, i64 0}
!700 = !{!"Simple C/C++ TBAA"}
!701 = !DILocation(line: 66, column: 7, scope: !702)
!702 = distinct !DILexicalBlock(scope: !693, file: !3, line: 65, column: 5)
!703 = !DILocation(line: 70, column: 7, scope: !702)
!704 = !DILocation(line: 580, column: 3, scope: !705, inlinedAt: !708)
!705 = distinct !DISubprogram(name: "emit_stdin_note", scope: !65, file: !65, line: 578, type: !706, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !185)
!706 = !DISubroutineType(types: !707)
!707 = !{null}
!708 = distinct !DILocation(line: 74, column: 7, scope: !702)
!709 = !DILocation(line: 587, column: 3, scope: !710, inlinedAt: !711)
!710 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !65, file: !65, line: 585, type: !706, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !185)
!711 = distinct !DILocation(line: 75, column: 7, scope: !702)
!712 = !DILocation(line: 77, column: 7, scope: !702)
!713 = !DILocation(line: 82, column: 7, scope: !702)
!714 = !DILocation(line: 83, column: 7, scope: !702)
!715 = !DILocation(line: 642, column: 15, scope: !64, inlinedAt: !716)
!716 = distinct !DILocation(line: 84, column: 7, scope: !702)
!717 = !DILocation(line: 651, column: 3, scope: !64, inlinedAt: !716)
!718 = !DILocation(line: 655, column: 29, scope: !64, inlinedAt: !716)
!719 = !DILocation(line: 655, column: 15, scope: !64, inlinedAt: !716)
!720 = !DILocation(line: 656, column: 7, scope: !721, inlinedAt: !716)
!721 = distinct !DILexicalBlock(scope: !64, file: !65, line: 656, column: 7)
!722 = !DILocation(line: 656, column: 19, scope: !721, inlinedAt: !716)
!723 = !DILocation(line: 656, column: 22, scope: !721, inlinedAt: !716)
!724 = !DILocation(line: 656, column: 7, scope: !64, inlinedAt: !716)
!725 = !DILocation(line: 662, column: 7, scope: !726, inlinedAt: !716)
!726 = distinct !DILexicalBlock(scope: !721, file: !65, line: 657, column: 5)
!727 = !DILocation(line: 664, column: 5, scope: !726, inlinedAt: !716)
!728 = !DILocation(line: 665, column: 3, scope: !64, inlinedAt: !716)
!729 = !DILocation(line: 667, column: 3, scope: !64, inlinedAt: !716)
!730 = !DILocation(line: 86, column: 3, scope: !685)
!731 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 240, type: !732, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !735)
!732 = !DISubroutineType(types: !733)
!733 = !{!47, !47, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!735 = !{!736, !737, !738, !739, !740, !741, !742}
!736 = !DILocalVariable(name: "argc", arg: 1, scope: !731, file: !3, line: 240, type: !47)
!737 = !DILocalVariable(name: "argv", arg: 2, scope: !731, file: !3, line: 240, type: !734)
!738 = !DILocalVariable(name: "width", scope: !731, file: !3, line: 242, type: !49)
!739 = !DILocalVariable(name: "i", scope: !731, file: !3, line: 243, type: !47)
!740 = !DILocalVariable(name: "optc", scope: !731, file: !3, line: 244, type: !47)
!741 = !DILocalVariable(name: "ok", scope: !731, file: !3, line: 245, type: !57)
!742 = !DILocalVariable(name: "optargbuf", scope: !743, file: !3, line: 259, type: !744)
!743 = distinct !DILexicalBlock(scope: !731, file: !3, line: 258, column: 5)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 16, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 2)
!747 = !DILocation(line: 240, column: 11, scope: !731)
!748 = !DILocation(line: 240, column: 24, scope: !731)
!749 = !DILocation(line: 242, column: 10, scope: !731)
!750 = !DILocation(line: 248, column: 21, scope: !731)
!751 = !DILocation(line: 248, column: 3, scope: !731)
!752 = !DILocation(line: 249, column: 3, scope: !731)
!753 = !DILocation(line: 250, column: 3, scope: !731)
!754 = !DILocation(line: 251, column: 3, scope: !731)
!755 = !DILocation(line: 253, column: 3, scope: !731)
!756 = !DILocation(line: 257, column: 18, scope: !731)
!757 = !DILocation(line: 244, column: 7, scope: !731)
!758 = !DILocation(line: 257, column: 71, scope: !731)
!759 = !DILocation(line: 257, column: 3, scope: !731)
!760 = !DILocation(line: 259, column: 7, scope: !743)
!761 = !DILocation(line: 259, column: 12, scope: !743)
!762 = !DILocation(line: 261, column: 7, scope: !743)
!763 = !DILocation(line: 283, column: 31, scope: !764)
!764 = distinct !DILexicalBlock(scope: !743, file: !3, line: 262, column: 9)
!765 = !DILocation(line: 265, column: 11, scope: !764)
!766 = !DILocation(line: 269, column: 11, scope: !764)
!767 = !DILocation(line: 273, column: 15, scope: !768)
!768 = distinct !DILexicalBlock(scope: !764, file: !3, line: 273, column: 15)
!769 = !DILocation(line: 273, column: 15, scope: !764)
!770 = !DILocation(line: 274, column: 19, scope: !768)
!771 = !DILocation(line: 274, column: 13, scope: !768)
!772 = !DILocation(line: 277, column: 30, scope: !773)
!773 = distinct !DILexicalBlock(scope: !768, file: !3, line: 276, column: 13)
!774 = !DILocation(line: 277, column: 28, scope: !773)
!775 = !{!699, !699, i64 0}
!776 = !DILocation(line: 278, column: 28, scope: !773)
!777 = !DILocation(line: 284, column: 31, scope: !764)
!778 = !DILocation(line: 283, column: 19, scope: !764)
!779 = !DILocation(line: 285, column: 11, scope: !764)
!780 = !DILocation(line: 287, column: 9, scope: !764)
!781 = !DILocation(line: 289, column: 9, scope: !764)
!782 = !DILocation(line: 292, column: 11, scope: !764)
!783 = !DILocation(line: 294, column: 5, scope: !731)
!784 = distinct !{!784, !759, !783}
!785 = !DILocation(line: 296, column: 15, scope: !786)
!786 = distinct !DILexicalBlock(scope: !731, file: !3, line: 296, column: 7)
!787 = !{!788, !788, i64 0}
!788 = !{!"int", !699, i64 0}
!789 = !DILocation(line: 296, column: 12, scope: !786)
!790 = !DILocation(line: 296, column: 7, scope: !731)
!791 = !DILocation(line: 297, column: 10, scope: !786)
!792 = !DILocation(line: 297, column: 8, scope: !786)
!793 = !DILocation(line: 245, column: 8, scope: !731)
!794 = !DILocation(line: 297, column: 5, scope: !786)
!795 = !DILocation(line: 243, column: 7, scope: !731)
!796 = !DILocation(line: 301, column: 26, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 301, column: 7)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 301, column: 7)
!799 = distinct !DILexicalBlock(scope: !786, file: !3, line: 299, column: 5)
!800 = !DILocation(line: 301, column: 7, scope: !798)
!801 = !DILocation(line: 302, column: 26, scope: !797)
!802 = !DILocation(line: 302, column: 15, scope: !797)
!803 = !DILocation(line: 302, column: 12, scope: !797)
!804 = !DILocation(line: 301, column: 35, scope: !797)
!805 = distinct !{!805, !800, !806}
!806 = !DILocation(line: 302, column: 40, scope: !798)
!807 = !DILocation(line: 305, column: 23, scope: !808)
!808 = distinct !DILexicalBlock(scope: !731, file: !3, line: 305, column: 7)
!809 = !DILocation(line: 305, column: 34, scope: !808)
!810 = !DILocation(line: 305, column: 26, scope: !808)
!811 = !DILocation(line: 305, column: 41, scope: !808)
!812 = !DILocation(line: 305, column: 7, scope: !731)
!813 = !DILocation(line: 306, column: 5, scope: !808)
!814 = !DILocation(line: 308, column: 10, scope: !731)
!815 = !DILocation(line: 308, column: 3, scope: !731)
!816 = !DILocation(line: 120, column: 24, scope: !100)
!817 = !DILocation(line: 120, column: 41, scope: !100)
!818 = !DILocation(line: 124, column: 10, scope: !100)
!819 = !DILocation(line: 125, column: 10, scope: !100)
!820 = !DILocation(line: 130, column: 7, scope: !821)
!821 = distinct !DILexicalBlock(scope: !100, file: !3, line: 130, column: 7)
!822 = !DILocation(line: 130, column: 7, scope: !100)
!823 = !DILocation(line: 132, column: 17, scope: !824)
!824 = distinct !DILexicalBlock(scope: !821, file: !3, line: 131, column: 5)
!825 = !DILocation(line: 122, column: 9, scope: !100)
!826 = !DILocation(line: 134, column: 5, scope: !824)
!827 = !DILocation(line: 136, column: 15, scope: !821)
!828 = !DILocation(line: 138, column: 15, scope: !829)
!829 = distinct !DILexicalBlock(scope: !100, file: !3, line: 138, column: 7)
!830 = !DILocation(line: 138, column: 7, scope: !100)
!831 = !DILocation(line: 140, column: 17, scope: !832)
!832 = distinct !DILexicalBlock(scope: !829, file: !3, line: 139, column: 5)
!833 = !DILocation(line: 140, column: 30, scope: !832)
!834 = !DILocation(line: 140, column: 7, scope: !832)
!835 = !DILocation(line: 141, column: 7, scope: !832)
!836 = !DILocation(line: 144, column: 3, scope: !100)
!837 = !DILocation(line: 146, column: 3, scope: !100)
!838 = !DILocalVariable(name: "__fp", arg: 1, scope: !839, file: !840, line: 63, type: !107)
!839 = distinct !DISubprogram(name: "getc_unlocked", scope: !840, file: !840, line: 63, type: !841, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !843)
!840 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!841 = !DISubroutineType(types: !842)
!842 = !{!47, !107}
!843 = !{!838}
!844 = !DILocation(line: 63, column: 22, scope: !839, inlinedAt: !845)
!845 = distinct !DILocation(line: 146, column: 15, scope: !100)
!846 = !DILocation(line: 65, column: 10, scope: !839, inlinedAt: !845)
!847 = !{!848, !698, i64 8}
!848 = !{!"_IO_FILE", !788, i64 0, !698, i64 8, !698, i64 16, !698, i64 24, !698, i64 32, !698, i64 40, !698, i64 48, !698, i64 56, !698, i64 64, !698, i64 72, !698, i64 80, !698, i64 88, !698, i64 96, !698, i64 104, !788, i64 112, !788, i64 116, !849, i64 120, !850, i64 128, !699, i64 130, !699, i64 131, !698, i64 136, !849, i64 144, !698, i64 152, !698, i64 160, !698, i64 168, !698, i64 176, !849, i64 184, !788, i64 192, !699, i64 196}
!849 = !{!"long", !699, i64 0}
!850 = !{!"short", !699, i64 0}
!851 = !{!848, !698, i64 16}
!852 = !{!"branch_weights", i32 2000, i32 1}
!853 = !DILocation(line: 123, column: 7, scope: !100)
!854 = !DILocation(line: 146, column: 31, scope: !100)
!855 = !DILocation(line: 148, column: 22, scope: !856)
!856 = distinct !DILexicalBlock(scope: !171, file: !3, line: 148, column: 11)
!857 = !DILocation(line: 148, column: 29, scope: !856)
!858 = !{!849, !849, i64 0}
!859 = !DILocation(line: 148, column: 26, scope: !856)
!860 = !DILocation(line: 148, column: 11, scope: !171)
!861 = !DILocation(line: 149, column: 20, scope: !856)
!862 = !DILocation(line: 149, column: 18, scope: !856)
!863 = !DILocation(line: 149, column: 9, scope: !856)
!864 = !DILocation(line: 151, column: 13, scope: !865)
!865 = distinct !DILexicalBlock(scope: !171, file: !3, line: 151, column: 11)
!866 = !DILocation(line: 151, column: 11, scope: !171)
!867 = !DILocation(line: 153, column: 11, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !3, line: 152, column: 9)
!869 = !DILocation(line: 153, column: 34, scope: !868)
!870 = !DILocation(line: 154, column: 11, scope: !868)
!871 = !DILocation(line: 156, column: 11, scope: !868)
!872 = distinct !{!872, !837, !873}
!873 = !DILocation(line: 216, column: 5, scope: !100)
!874 = !DILocalVariable(name: "column", arg: 1, scope: !875, file: !3, line: 94, type: !49)
!875 = distinct !DISubprogram(name: "adjust_column", scope: !3, file: !3, line: 94, type: !876, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !878)
!876 = !DISubroutineType(types: !877)
!877 = !{!49, !49, !45}
!878 = !{!874, !879}
!879 = !DILocalVariable(name: "c", arg: 2, scope: !875, file: !3, line: 94, type: !45)
!880 = !DILocation(line: 94, column: 23, scope: !875, inlinedAt: !881)
!881 = distinct !DILocation(line: 160, column: 16, scope: !171)
!882 = !DILocation(line: 94, column: 36, scope: !875, inlinedAt: !881)
!883 = !DILocation(line: 96, column: 7, scope: !875, inlinedAt: !881)
!884 = !DILocation(line: 98, column: 11, scope: !885, inlinedAt: !881)
!885 = distinct !DILexicalBlock(scope: !886, file: !3, line: 97, column: 5)
!886 = distinct !DILexicalBlock(scope: !875, file: !3, line: 96, column: 7)
!887 = !DILocation(line: 100, column: 22, scope: !888, inlinedAt: !881)
!888 = distinct !DILexicalBlock(scope: !889, file: !3, line: 100, column: 15)
!889 = distinct !DILexicalBlock(scope: !890, file: !3, line: 99, column: 9)
!890 = distinct !DILexicalBlock(scope: !885, file: !3, line: 98, column: 11)
!891 = !DILocation(line: 101, column: 19, scope: !888, inlinedAt: !881)
!892 = !DILocation(line: 100, column: 15, scope: !889, inlinedAt: !881)
!893 = !DILocation(line: 106, column: 38, scope: !894, inlinedAt: !881)
!894 = distinct !DILexicalBlock(scope: !895, file: !3, line: 105, column: 16)
!895 = distinct !DILexicalBlock(scope: !890, file: !3, line: 103, column: 16)
!896 = !DILocation(line: 106, column: 29, scope: !894, inlinedAt: !881)
!897 = !DILocation(line: 106, column: 16, scope: !894, inlinedAt: !881)
!898 = !DILocation(line: 106, column: 9, scope: !894, inlinedAt: !881)
!899 = !DILocation(line: 108, column: 15, scope: !894, inlinedAt: !881)
!900 = !DILocation(line: 111, column: 11, scope: !886, inlinedAt: !881)
!901 = !DILocation(line: 162, column: 18, scope: !170)
!902 = !DILocation(line: 162, column: 11, scope: !171)
!903 = !DILocation(line: 167, column: 15, scope: !169)
!904 = !DILocation(line: 173, column: 15, scope: !167)
!905 = !DILocation(line: 169, column: 20, scope: !167)
!906 = !DILocation(line: 170, column: 22, scope: !167)
!907 = !DILocation(line: 176, column: 23, scope: !908)
!908 = distinct !DILexicalBlock(scope: !909, file: !3, line: 176, column: 23)
!909 = distinct !DILexicalBlock(scope: !167, file: !3, line: 174, column: 17)
!910 = distinct !{!910, !904, !911}
!911 = !DILocation(line: 181, column: 17, scope: !167)
!912 = !DILocation(line: 175, column: 19, scope: !909)
!913 = !{!850, !850, i64 0}
!914 = !DILocation(line: 176, column: 23, scope: !909)
!915 = !DILocation(line: 189, column: 19, scope: !174)
!916 = !DILocalVariable(name: "__c", arg: 1, scope: !917, file: !840, line: 105, type: !47)
!917 = distinct !DISubprogram(name: "putchar_unlocked", scope: !840, file: !840, line: 105, type: !918, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !920)
!918 = !DISubroutineType(types: !919)
!919 = !{!47, !47}
!920 = !{!916}
!921 = !DILocation(line: 105, column: 23, scope: !917, inlinedAt: !922)
!922 = distinct !DILocation(line: 191, column: 19, scope: !174)
!923 = !DILocation(line: 107, column: 10, scope: !917, inlinedAt: !922)
!924 = !{!848, !698, i64 40}
!925 = !{!848, !698, i64 48}
!926 = !DILocation(line: 194, column: 28, scope: !174)
!927 = !DILocation(line: 194, column: 47, scope: !174)
!928 = !DILocation(line: 195, column: 39, scope: !174)
!929 = !DILocation(line: 194, column: 19, scope: !174)
!930 = !DILocation(line: 185, column: 26, scope: !174)
!931 = !DILocation(line: 197, column: 42, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !3, line: 197, column: 19)
!933 = distinct !DILexicalBlock(scope: !174, file: !3, line: 197, column: 19)
!934 = !DILocation(line: 197, column: 19, scope: !933)
!935 = !DILocation(line: 94, column: 23, scope: !875, inlinedAt: !936)
!936 = distinct !DILocation(line: 198, column: 30, scope: !932)
!937 = !DILocation(line: 94, column: 36, scope: !875, inlinedAt: !936)
!938 = !DILocation(line: 96, column: 7, scope: !875, inlinedAt: !936)
!939 = !DILocation(line: 198, column: 53, scope: !932)
!940 = !DILocation(line: 98, column: 11, scope: !885, inlinedAt: !936)
!941 = !DILocation(line: 100, column: 22, scope: !888, inlinedAt: !936)
!942 = !DILocation(line: 101, column: 19, scope: !888, inlinedAt: !936)
!943 = !DILocation(line: 100, column: 15, scope: !889, inlinedAt: !936)
!944 = !DILocation(line: 106, column: 38, scope: !894, inlinedAt: !936)
!945 = !DILocation(line: 106, column: 29, scope: !894, inlinedAt: !936)
!946 = !DILocation(line: 106, column: 16, scope: !894, inlinedAt: !936)
!947 = !DILocation(line: 106, column: 9, scope: !894, inlinedAt: !936)
!948 = !DILocation(line: 108, column: 15, scope: !894, inlinedAt: !936)
!949 = !DILocation(line: 111, column: 11, scope: !886, inlinedAt: !936)
!950 = !DILocation(line: 197, column: 57, scope: !932)
!951 = distinct !{!951, !934, !952}
!952 = !DILocation(line: 198, column: 64, scope: !933)
!953 = !DILocation(line: 203, column: 15, scope: !169)
!954 = !DILocation(line: 205, column: 38, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !3, line: 204, column: 13)
!956 = distinct !DILexicalBlock(scope: !169, file: !3, line: 203, column: 15)
!957 = !DILocation(line: 206, column: 15, scope: !955)
!958 = !DILocation(line: 209, column: 34, scope: !169)
!959 = !DILocation(line: 210, column: 11, scope: !169)
!960 = !DILocation(line: 212, column: 11, scope: !169)
!961 = !DILocation(line: 215, column: 7, scope: !171)
!962 = !DILocation(line: 215, column: 26, scope: !171)
!963 = !DILocation(line: 215, column: 30, scope: !171)
!964 = !DILocation(line: 218, column: 17, scope: !100)
!965 = !DILocation(line: 128, column: 7, scope: !100)
!966 = !DILocation(line: 220, column: 7, scope: !967)
!967 = distinct !DILexicalBlock(scope: !100, file: !3, line: 220, column: 7)
!968 = !DILocation(line: 220, column: 7, scope: !100)
!969 = !DILocation(line: 221, column: 5, scope: !967)
!970 = !DILocalVariable(name: "__stream", arg: 1, scope: !971, file: !840, line: 132, type: !107)
!971 = distinct !DISubprogram(name: "ferror_unlocked", scope: !840, file: !840, line: 132, type: !841, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !972)
!972 = !{!970}
!973 = !DILocation(line: 132, column: 1, scope: !971, inlinedAt: !974)
!974 = distinct !DILocation(line: 223, column: 7, scope: !975)
!975 = distinct !DILexicalBlock(scope: !100, file: !3, line: 223, column: 7)
!976 = !DILocation(line: 134, column: 10, scope: !971, inlinedAt: !974)
!977 = !{!848, !788, i64 0}
!978 = !DILocation(line: 223, column: 7, scope: !975)
!979 = !DILocation(line: 223, column: 7, scope: !100)
!980 = !DILocation(line: 225, column: 36, scope: !981)
!981 = distinct !DILexicalBlock(scope: !975, file: !3, line: 224, column: 5)
!982 = !DILocation(line: 225, column: 7, scope: !981)
!983 = !DILocation(line: 226, column: 12, scope: !984)
!984 = distinct !DILexicalBlock(scope: !981, file: !3, line: 226, column: 11)
!985 = !DILocation(line: 226, column: 11, scope: !981)
!986 = !DILocation(line: 227, column: 9, scope: !984)
!987 = !DILocation(line: 230, column: 8, scope: !988)
!988 = distinct !DILexicalBlock(scope: !100, file: !3, line: 230, column: 7)
!989 = !DILocation(line: 230, column: 30, scope: !988)
!990 = !DILocation(line: 230, column: 33, scope: !988)
!991 = !DILocation(line: 230, column: 50, scope: !988)
!992 = !DILocation(line: 230, column: 7, scope: !100)
!993 = !DILocation(line: 232, column: 17, scope: !994)
!994 = distinct !DILexicalBlock(scope: !988, file: !3, line: 231, column: 5)
!995 = !DILocation(line: 232, column: 30, scope: !994)
!996 = !DILocation(line: 232, column: 7, scope: !994)
!997 = !DILocation(line: 233, column: 7, scope: !994)
!998 = !DILocation(line: 237, column: 1, scope: !100)
!999 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !194, file: !194, line: 41, type: !66, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !189, variables: !1000)
!1000 = !{!1001}
!1001 = !DILocalVariable(name: "file", arg: 1, scope: !999, file: !194, line: 41, type: !68)
!1002 = !DILocation(line: 41, column: 41, scope: !999)
!1003 = !DILocation(line: 43, column: 13, scope: !999)
!1004 = !DILocation(line: 44, column: 1, scope: !999)
!1005 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !194, file: !194, line: 78, type: !1006, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !189, variables: !1008)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{null, !57}
!1008 = !{!1009}
!1009 = !DILocalVariable(name: "ignore", arg: 1, scope: !1005, file: !194, line: 78, type: !57)
!1010 = !DILocation(line: 78, column: 37, scope: !1005)
!1011 = !DILocation(line: 80, column: 16, scope: !1005)
!1012 = !{!1013, !1013, i64 0}
!1013 = !{!"_Bool", !699, i64 0}
!1014 = !DILocation(line: 81, column: 1, scope: !1005)
!1015 = distinct !DISubprogram(name: "close_stdout", scope: !194, file: !194, line: 107, type: !706, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !189, variables: !1016)
!1016 = !{!1017}
!1017 = !DILocalVariable(name: "write_error", scope: !1018, file: !194, line: 112, type: !68)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !194, line: 111, column: 5)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !194, line: 109, column: 7)
!1020 = !DILocation(line: 109, column: 21, scope: !1019)
!1021 = !DILocation(line: 109, column: 7, scope: !1019)
!1022 = !DILocation(line: 109, column: 29, scope: !1019)
!1023 = !DILocation(line: 110, column: 7, scope: !1019)
!1024 = !DILocation(line: 110, column: 12, scope: !1019)
!1025 = !{i8 0, i8 2}
!1026 = !DILocation(line: 114, column: 19, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1018, file: !194, line: 113, column: 11)
!1028 = !DILocation(line: 110, column: 25, scope: !1019)
!1029 = !DILocation(line: 110, column: 28, scope: !1019)
!1030 = !DILocation(line: 110, column: 34, scope: !1019)
!1031 = !DILocation(line: 109, column: 7, scope: !1015)
!1032 = !DILocation(line: 112, column: 33, scope: !1018)
!1033 = !DILocation(line: 112, column: 19, scope: !1018)
!1034 = !DILocation(line: 113, column: 11, scope: !1027)
!1035 = !DILocation(line: 113, column: 11, scope: !1018)
!1036 = !DILocation(line: 114, column: 36, scope: !1027)
!1037 = !DILocation(line: 114, column: 9, scope: !1027)
!1038 = !DILocation(line: 117, column: 9, scope: !1027)
!1039 = !DILocation(line: 119, column: 14, scope: !1018)
!1040 = !DILocation(line: 119, column: 7, scope: !1018)
!1041 = !DILocation(line: 122, column: 22, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1015, file: !194, line: 122, column: 8)
!1043 = !DILocation(line: 122, column: 8, scope: !1042)
!1044 = !DILocation(line: 122, column: 30, scope: !1042)
!1045 = !DILocation(line: 122, column: 8, scope: !1015)
!1046 = !DILocation(line: 123, column: 13, scope: !1042)
!1047 = !DILocation(line: 123, column: 6, scope: !1042)
!1048 = !DILocation(line: 124, column: 1, scope: !1015)
!1049 = distinct !DISubprogram(name: "fdadvise", scope: !1050, file: !1050, line: 31, type: !1051, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !1056)
!1050 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !47, !1053, !1053, !1055}
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1054, line: 57, baseType: !137)
!1054 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !20, line: 52, baseType: !19)
!1056 = !{!1057, !1058, !1059, !1060, !1061}
!1057 = !DILocalVariable(name: "fd", arg: 1, scope: !1049, file: !1050, line: 31, type: !47)
!1058 = !DILocalVariable(name: "offset", arg: 2, scope: !1049, file: !1050, line: 31, type: !1053)
!1059 = !DILocalVariable(name: "len", arg: 3, scope: !1049, file: !1050, line: 31, type: !1053)
!1060 = !DILocalVariable(name: "advice", arg: 4, scope: !1049, file: !1050, line: 31, type: !1055)
!1061 = !DILocalVariable(name: "__x", scope: !1062, file: !1050, line: 34, type: !47)
!1062 = distinct !DILexicalBlock(scope: !1049, file: !1050, line: 34, column: 3)
!1063 = !DILocation(line: 31, column: 15, scope: !1049)
!1064 = !DILocation(line: 31, column: 25, scope: !1049)
!1065 = !DILocation(line: 31, column: 39, scope: !1049)
!1066 = !DILocation(line: 31, column: 54, scope: !1049)
!1067 = !DILocation(line: 34, column: 3, scope: !1062)
!1068 = !DILocation(line: 36, column: 1, scope: !1049)
!1069 = distinct !DISubprogram(name: "fadvise", scope: !1050, file: !1050, line: 39, type: !1070, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !1112)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{null, !1072, !1055}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !1074)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 241, size: 1728, elements: !1075)
!1075 = !{!1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1074, file: !111, line: 242, baseType: !47, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1074, file: !111, line: 247, baseType: !44, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1074, file: !111, line: 248, baseType: !44, size: 64, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1074, file: !111, line: 249, baseType: !44, size: 64, offset: 192)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1074, file: !111, line: 250, baseType: !44, size: 64, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1074, file: !111, line: 251, baseType: !44, size: 64, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1074, file: !111, line: 252, baseType: !44, size: 64, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1074, file: !111, line: 253, baseType: !44, size: 64, offset: 448)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1074, file: !111, line: 254, baseType: !44, size: 64, offset: 512)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1074, file: !111, line: 256, baseType: !44, size: 64, offset: 576)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1074, file: !111, line: 257, baseType: !44, size: 64, offset: 640)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1074, file: !111, line: 258, baseType: !44, size: 64, offset: 704)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1074, file: !111, line: 260, baseType: !1089, size: 64, offset: 768)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !111, line: 156, size: 192, elements: !1091)
!1091 = !{!1092, !1093, !1095}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1090, file: !111, line: 157, baseType: !1089, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1090, file: !111, line: 158, baseType: !1094, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1090, file: !111, line: 162, baseType: !47, size: 32, offset: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1074, file: !111, line: 262, baseType: !1094, size: 64, offset: 832)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1074, file: !111, line: 264, baseType: !47, size: 32, offset: 896)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1074, file: !111, line: 268, baseType: !47, size: 32, offset: 928)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1074, file: !111, line: 270, baseType: !137, size: 64, offset: 960)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1074, file: !111, line: 274, baseType: !48, size: 16, offset: 1024)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1074, file: !111, line: 275, baseType: !142, size: 8, offset: 1040)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1074, file: !111, line: 276, baseType: !144, size: 8, offset: 1048)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1074, file: !111, line: 280, baseType: !148, size: 64, offset: 1088)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1074, file: !111, line: 289, baseType: !151, size: 64, offset: 1152)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1074, file: !111, line: 297, baseType: !46, size: 64, offset: 1216)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1074, file: !111, line: 298, baseType: !46, size: 64, offset: 1280)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1074, file: !111, line: 299, baseType: !46, size: 64, offset: 1344)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1074, file: !111, line: 300, baseType: !46, size: 64, offset: 1408)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1074, file: !111, line: 302, baseType: !49, size: 64, offset: 1472)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1074, file: !111, line: 303, baseType: !47, size: 32, offset: 1536)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1074, file: !111, line: 305, baseType: !159, size: 160, offset: 1568)
!1112 = !{!1113, !1114}
!1113 = !DILocalVariable(name: "fp", arg: 1, scope: !1069, file: !1050, line: 39, type: !1072)
!1114 = !DILocalVariable(name: "advice", arg: 2, scope: !1069, file: !1050, line: 39, type: !1055)
!1115 = !DILocation(line: 39, column: 16, scope: !1069)
!1116 = !DILocation(line: 39, column: 30, scope: !1069)
!1117 = !DILocation(line: 41, column: 7, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1069, file: !1050, line: 41, column: 7)
!1119 = !DILocation(line: 41, column: 7, scope: !1069)
!1120 = !DILocation(line: 42, column: 15, scope: !1118)
!1121 = !DILocation(line: 31, column: 15, scope: !1049, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 42, column: 5, scope: !1118)
!1123 = !DILocation(line: 31, column: 25, scope: !1049, inlinedAt: !1122)
!1124 = !DILocation(line: 31, column: 39, scope: !1049, inlinedAt: !1122)
!1125 = !DILocation(line: 31, column: 54, scope: !1049, inlinedAt: !1122)
!1126 = !DILocation(line: 34, column: 3, scope: !1062, inlinedAt: !1122)
!1127 = !DILocation(line: 42, column: 5, scope: !1118)
!1128 = !DILocation(line: 43, column: 1, scope: !1069)
!1129 = distinct !DISubprogram(name: "set_program_name", scope: !208, file: !208, line: 39, type: !66, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !204, variables: !1130)
!1130 = !{!1131, !1132, !1133}
!1131 = !DILocalVariable(name: "argv0", arg: 1, scope: !1129, file: !208, line: 39, type: !68)
!1132 = !DILocalVariable(name: "slash", scope: !1129, file: !208, line: 46, type: !68)
!1133 = !DILocalVariable(name: "base", scope: !1129, file: !208, line: 47, type: !68)
!1134 = !DILocation(line: 39, column: 31, scope: !1129)
!1135 = !DILocation(line: 51, column: 13, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1129, file: !208, line: 51, column: 7)
!1137 = !DILocation(line: 51, column: 7, scope: !1129)
!1138 = !DILocation(line: 55, column: 14, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1136, file: !208, line: 52, column: 5)
!1140 = !DILocation(line: 54, column: 7, scope: !1139)
!1141 = !DILocation(line: 56, column: 7, scope: !1139)
!1142 = !DILocation(line: 59, column: 11, scope: !1129)
!1143 = !DILocation(line: 46, column: 15, scope: !1129)
!1144 = !DILocation(line: 60, column: 17, scope: !1129)
!1145 = !DILocation(line: 60, column: 33, scope: !1129)
!1146 = !DILocation(line: 60, column: 11, scope: !1129)
!1147 = !DILocation(line: 47, column: 15, scope: !1129)
!1148 = !DILocation(line: 61, column: 12, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1129, file: !208, line: 61, column: 7)
!1150 = !DILocation(line: 61, column: 20, scope: !1149)
!1151 = !DILocation(line: 61, column: 25, scope: !1149)
!1152 = !DILocation(line: 61, column: 42, scope: !1149)
!1153 = !DILocation(line: 61, column: 28, scope: !1149)
!1154 = !DILocation(line: 61, column: 61, scope: !1149)
!1155 = !DILocation(line: 61, column: 7, scope: !1129)
!1156 = !DILocation(line: 64, column: 11, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !208, line: 64, column: 11)
!1158 = distinct !DILexicalBlock(scope: !1149, file: !208, line: 62, column: 5)
!1159 = !DILocation(line: 64, column: 36, scope: !1157)
!1160 = !DILocation(line: 64, column: 11, scope: !1158)
!1161 = !DILocation(line: 66, column: 24, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1157, file: !208, line: 65, column: 9)
!1163 = !DILocation(line: 70, column: 41, scope: !1162)
!1164 = !DILocation(line: 72, column: 9, scope: !1162)
!1165 = !DILocation(line: 84, column: 16, scope: !1129)
!1166 = !DILocation(line: 90, column: 27, scope: !1129)
!1167 = !DILocation(line: 92, column: 1, scope: !1129)
!1168 = distinct !DISubprogram(name: "clone_quoting_options", scope: !223, file: !223, line: 114, type: !1169, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !1172)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!1171, !1171}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!1172 = !{!1173, !1174, !1175}
!1173 = !DILocalVariable(name: "o", arg: 1, scope: !1168, file: !223, line: 114, type: !1171)
!1174 = !DILocalVariable(name: "e", scope: !1168, file: !223, line: 116, type: !47)
!1175 = !DILocalVariable(name: "p", scope: !1168, file: !223, line: 117, type: !1171)
!1176 = !DILocation(line: 114, column: 48, scope: !1168)
!1177 = !DILocation(line: 116, column: 11, scope: !1168)
!1178 = !DILocation(line: 116, column: 7, scope: !1168)
!1179 = !DILocation(line: 117, column: 40, scope: !1168)
!1180 = !DILocation(line: 117, column: 31, scope: !1168)
!1181 = !DILocation(line: 117, column: 27, scope: !1168)
!1182 = !DILocation(line: 119, column: 9, scope: !1168)
!1183 = !DILocation(line: 120, column: 3, scope: !1168)
!1184 = distinct !DISubprogram(name: "get_quoting_style", scope: !223, file: !223, line: 125, type: !1185, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !1189)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!5, !1187}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!1189 = !{!1190}
!1190 = !DILocalVariable(name: "o", arg: 1, scope: !1184, file: !223, line: 125, type: !1187)
!1191 = !DILocation(line: 125, column: 50, scope: !1184)
!1192 = !DILocation(line: 127, column: 11, scope: !1184)
!1193 = !DILocation(line: 127, column: 46, scope: !1184)
!1194 = !{!1195, !699, i64 0}
!1195 = !{!"quoting_options", !699, i64 0, !788, i64 4, !699, i64 8, !698, i64 40, !698, i64 48}
!1196 = !DILocation(line: 127, column: 3, scope: !1184)
!1197 = distinct !DISubprogram(name: "set_quoting_style", scope: !223, file: !223, line: 133, type: !1198, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !1200)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !1171, !5}
!1200 = !{!1201, !1202}
!1201 = !DILocalVariable(name: "o", arg: 1, scope: !1197, file: !223, line: 133, type: !1171)
!1202 = !DILocalVariable(name: "s", arg: 2, scope: !1197, file: !223, line: 133, type: !5)
!1203 = !DILocation(line: 133, column: 44, scope: !1197)
!1204 = !DILocation(line: 133, column: 66, scope: !1197)
!1205 = !DILocation(line: 135, column: 4, scope: !1197)
!1206 = !DILocation(line: 135, column: 39, scope: !1197)
!1207 = !DILocation(line: 135, column: 45, scope: !1197)
!1208 = !DILocation(line: 136, column: 1, scope: !1197)
!1209 = distinct !DISubprogram(name: "set_char_quoting", scope: !223, file: !223, line: 144, type: !1210, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !1212)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!47, !1171, !45, !47}
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1219, !1220}
!1213 = !DILocalVariable(name: "o", arg: 1, scope: !1209, file: !223, line: 144, type: !1171)
!1214 = !DILocalVariable(name: "c", arg: 2, scope: !1209, file: !223, line: 144, type: !45)
!1215 = !DILocalVariable(name: "i", arg: 3, scope: !1209, file: !223, line: 144, type: !47)
!1216 = !DILocalVariable(name: "uc", scope: !1209, file: !223, line: 146, type: !53)
!1217 = !DILocalVariable(name: "p", scope: !1209, file: !223, line: 147, type: !1218)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!1219 = !DILocalVariable(name: "shift", scope: !1209, file: !223, line: 149, type: !47)
!1220 = !DILocalVariable(name: "r", scope: !1209, file: !223, line: 150, type: !47)
!1221 = !DILocation(line: 144, column: 43, scope: !1209)
!1222 = !DILocation(line: 144, column: 51, scope: !1209)
!1223 = !DILocation(line: 144, column: 58, scope: !1209)
!1224 = !DILocation(line: 146, column: 17, scope: !1209)
!1225 = !DILocation(line: 148, column: 6, scope: !1209)
!1226 = !DILocation(line: 148, column: 62, scope: !1209)
!1227 = !DILocation(line: 148, column: 57, scope: !1209)
!1228 = !DILocation(line: 147, column: 17, scope: !1209)
!1229 = !DILocation(line: 149, column: 18, scope: !1209)
!1230 = !DILocation(line: 149, column: 15, scope: !1209)
!1231 = !DILocation(line: 149, column: 7, scope: !1209)
!1232 = !DILocation(line: 150, column: 12, scope: !1209)
!1233 = !DILocation(line: 150, column: 15, scope: !1209)
!1234 = !DILocation(line: 150, column: 25, scope: !1209)
!1235 = !DILocation(line: 150, column: 7, scope: !1209)
!1236 = !DILocation(line: 151, column: 13, scope: !1209)
!1237 = !DILocation(line: 151, column: 18, scope: !1209)
!1238 = !DILocation(line: 151, column: 23, scope: !1209)
!1239 = !DILocation(line: 151, column: 6, scope: !1209)
!1240 = !DILocation(line: 152, column: 3, scope: !1209)
!1241 = distinct !DISubprogram(name: "set_quoting_flags", scope: !223, file: !223, line: 160, type: !1242, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !1244)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!47, !1171, !47}
!1244 = !{!1245, !1246, !1247}
!1245 = !DILocalVariable(name: "o", arg: 1, scope: !1241, file: !223, line: 160, type: !1171)
!1246 = !DILocalVariable(name: "i", arg: 2, scope: !1241, file: !223, line: 160, type: !47)
!1247 = !DILocalVariable(name: "r", scope: !1241, file: !223, line: 162, type: !47)
!1248 = !DILocation(line: 160, column: 44, scope: !1241)
!1249 = !DILocation(line: 160, column: 51, scope: !1241)
!1250 = !DILocation(line: 163, column: 8, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1241, file: !223, line: 163, column: 7)
!1252 = !DILocation(line: 163, column: 7, scope: !1241)
!1253 = !DILocation(line: 165, column: 10, scope: !1241)
!1254 = !{!1195, !788, i64 4}
!1255 = !DILocation(line: 162, column: 7, scope: !1241)
!1256 = !DILocation(line: 166, column: 12, scope: !1241)
!1257 = !DILocation(line: 167, column: 3, scope: !1241)
!1258 = distinct !DISubprogram(name: "set_custom_quoting", scope: !223, file: !223, line: 171, type: !1259, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !1261)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !1171, !68, !68}
!1261 = !{!1262, !1263, !1264}
!1262 = !DILocalVariable(name: "o", arg: 1, scope: !1258, file: !223, line: 171, type: !1171)
!1263 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1258, file: !223, line: 172, type: !68)
!1264 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1258, file: !223, line: 172, type: !68)
!1265 = !DILocation(line: 171, column: 45, scope: !1258)
!1266 = !DILocation(line: 172, column: 33, scope: !1258)
!1267 = !DILocation(line: 172, column: 57, scope: !1258)
!1268 = !DILocation(line: 174, column: 8, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1258, file: !223, line: 174, column: 7)
!1270 = !DILocation(line: 174, column: 7, scope: !1258)
!1271 = !DILocation(line: 176, column: 6, scope: !1258)
!1272 = !DILocation(line: 176, column: 12, scope: !1258)
!1273 = !DILocation(line: 177, column: 8, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1258, file: !223, line: 177, column: 7)
!1275 = !DILocation(line: 177, column: 23, scope: !1274)
!1276 = !DILocation(line: 177, column: 19, scope: !1274)
!1277 = !DILocation(line: 178, column: 5, scope: !1274)
!1278 = !DILocation(line: 179, column: 6, scope: !1258)
!1279 = !DILocation(line: 179, column: 17, scope: !1258)
!1280 = !{!1195, !698, i64 40}
!1281 = !DILocation(line: 180, column: 6, scope: !1258)
!1282 = !DILocation(line: 180, column: 18, scope: !1258)
!1283 = !{!1195, !698, i64 48}
!1284 = !DILocation(line: 181, column: 1, scope: !1258)
!1285 = distinct !DISubprogram(name: "quotearg_buffer", scope: !223, file: !223, line: 776, type: !1286, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !1288)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!49, !44, !49, !68, !49, !1187}
!1288 = !{!1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296}
!1289 = !DILocalVariable(name: "buffer", arg: 1, scope: !1285, file: !223, line: 776, type: !44)
!1290 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1285, file: !223, line: 776, type: !49)
!1291 = !DILocalVariable(name: "arg", arg: 3, scope: !1285, file: !223, line: 777, type: !68)
!1292 = !DILocalVariable(name: "argsize", arg: 4, scope: !1285, file: !223, line: 777, type: !49)
!1293 = !DILocalVariable(name: "o", arg: 5, scope: !1285, file: !223, line: 778, type: !1187)
!1294 = !DILocalVariable(name: "p", scope: !1285, file: !223, line: 780, type: !1187)
!1295 = !DILocalVariable(name: "e", scope: !1285, file: !223, line: 781, type: !47)
!1296 = !DILocalVariable(name: "r", scope: !1285, file: !223, line: 782, type: !49)
!1297 = !DILocation(line: 776, column: 24, scope: !1285)
!1298 = !DILocation(line: 776, column: 39, scope: !1285)
!1299 = !DILocation(line: 777, column: 30, scope: !1285)
!1300 = !DILocation(line: 777, column: 42, scope: !1285)
!1301 = !DILocation(line: 778, column: 48, scope: !1285)
!1302 = !DILocation(line: 780, column: 37, scope: !1285)
!1303 = !DILocation(line: 780, column: 33, scope: !1285)
!1304 = !DILocation(line: 781, column: 11, scope: !1285)
!1305 = !DILocation(line: 781, column: 7, scope: !1285)
!1306 = !DILocation(line: 783, column: 43, scope: !1285)
!1307 = !DILocation(line: 783, column: 53, scope: !1285)
!1308 = !DILocation(line: 783, column: 60, scope: !1285)
!1309 = !DILocation(line: 784, column: 43, scope: !1285)
!1310 = !DILocation(line: 784, column: 58, scope: !1285)
!1311 = !DILocation(line: 782, column: 14, scope: !1285)
!1312 = !DILocation(line: 782, column: 10, scope: !1285)
!1313 = !DILocation(line: 785, column: 9, scope: !1285)
!1314 = !DILocation(line: 786, column: 3, scope: !1285)
!1315 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !223, file: !223, line: 248, type: !1316, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !1320)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!49, !44, !49, !68, !49, !5, !47, !1318, !68, !68}
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1345, !1346, !1347, !1348, !1349, !1352, !1353, !1371, !1374, !1375, !1382}
!1321 = !DILocalVariable(name: "buffer", arg: 1, scope: !1315, file: !223, line: 248, type: !44)
!1322 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1315, file: !223, line: 248, type: !49)
!1323 = !DILocalVariable(name: "arg", arg: 3, scope: !1315, file: !223, line: 249, type: !68)
!1324 = !DILocalVariable(name: "argsize", arg: 4, scope: !1315, file: !223, line: 249, type: !49)
!1325 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1315, file: !223, line: 250, type: !5)
!1326 = !DILocalVariable(name: "flags", arg: 6, scope: !1315, file: !223, line: 250, type: !47)
!1327 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1315, file: !223, line: 251, type: !1318)
!1328 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1315, file: !223, line: 252, type: !68)
!1329 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1315, file: !223, line: 253, type: !68)
!1330 = !DILocalVariable(name: "i", scope: !1315, file: !223, line: 255, type: !49)
!1331 = !DILocalVariable(name: "len", scope: !1315, file: !223, line: 256, type: !49)
!1332 = !DILocalVariable(name: "orig_buffersize", scope: !1315, file: !223, line: 257, type: !49)
!1333 = !DILocalVariable(name: "quote_string", scope: !1315, file: !223, line: 258, type: !68)
!1334 = !DILocalVariable(name: "quote_string_len", scope: !1315, file: !223, line: 259, type: !49)
!1335 = !DILocalVariable(name: "backslash_escapes", scope: !1315, file: !223, line: 260, type: !57)
!1336 = !DILocalVariable(name: "unibyte_locale", scope: !1315, file: !223, line: 261, type: !57)
!1337 = !DILocalVariable(name: "elide_outer_quotes", scope: !1315, file: !223, line: 262, type: !57)
!1338 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1315, file: !223, line: 263, type: !57)
!1339 = !DILocalVariable(name: "encountered_single_quote", scope: !1315, file: !223, line: 264, type: !57)
!1340 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1315, file: !223, line: 265, type: !57)
!1341 = !DILocalVariable(name: "c", scope: !1342, file: !223, line: 394, type: !53)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !223, line: 393, column: 5)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !223, line: 392, column: 3)
!1344 = distinct !DILexicalBlock(scope: !1315, file: !223, line: 392, column: 3)
!1345 = !DILocalVariable(name: "esc", scope: !1342, file: !223, line: 395, type: !53)
!1346 = !DILocalVariable(name: "is_right_quote", scope: !1342, file: !223, line: 396, type: !57)
!1347 = !DILocalVariable(name: "escaping", scope: !1342, file: !223, line: 397, type: !57)
!1348 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1342, file: !223, line: 398, type: !57)
!1349 = !DILocalVariable(name: "m", scope: !1350, file: !223, line: 602, type: !49)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !223, line: 600, column: 11)
!1351 = distinct !DILexicalBlock(scope: !1342, file: !223, line: 418, column: 9)
!1352 = !DILocalVariable(name: "printable", scope: !1350, file: !223, line: 604, type: !57)
!1353 = !DILocalVariable(name: "mbstate", scope: !1354, file: !223, line: 613, type: !1356)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !223, line: 612, column: 15)
!1355 = distinct !DILexicalBlock(scope: !1350, file: !223, line: 606, column: 17)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1357, line: 6, baseType: !1358)
!1357 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1359, line: 21, baseType: !1360)
!1359 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1359, line: 13, size: 64, elements: !1361)
!1361 = !{!1362, !1363}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1360, file: !1359, line: 15, baseType: !47, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1360, file: !1359, line: 20, baseType: !1364, size: 32, offset: 32)
!1364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1360, file: !1359, line: 16, size: 32, elements: !1365)
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1364, file: !1359, line: 18, baseType: !236, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1364, file: !1359, line: 19, baseType: !1368, size: 32)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, elements: !1369)
!1369 = !{!1370}
!1370 = !DISubrange(count: 4)
!1371 = !DILocalVariable(name: "w", scope: !1372, file: !223, line: 623, type: !1373)
!1372 = distinct !DILexicalBlock(scope: !1354, file: !223, line: 622, column: 19)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !50, line: 90, baseType: !47)
!1374 = !DILocalVariable(name: "bytes", scope: !1372, file: !223, line: 624, type: !49)
!1375 = !DILocalVariable(name: "j", scope: !1376, file: !223, line: 649, type: !49)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !223, line: 648, column: 27)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !223, line: 646, column: 29)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !223, line: 641, column: 23)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !223, line: 633, column: 30)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !223, line: 628, column: 30)
!1381 = distinct !DILexicalBlock(scope: !1372, file: !223, line: 626, column: 25)
!1382 = !DILocalVariable(name: "ilim", scope: !1383, file: !223, line: 676, type: !49)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !223, line: 673, column: 15)
!1384 = distinct !DILexicalBlock(scope: !1350, file: !223, line: 672, column: 17)
!1385 = !DILocation(line: 248, column: 33, scope: !1315)
!1386 = !DILocation(line: 248, column: 48, scope: !1315)
!1387 = !DILocation(line: 249, column: 39, scope: !1315)
!1388 = !DILocation(line: 249, column: 51, scope: !1315)
!1389 = !DILocation(line: 250, column: 46, scope: !1315)
!1390 = !DILocation(line: 250, column: 65, scope: !1315)
!1391 = !DILocation(line: 251, column: 47, scope: !1315)
!1392 = !DILocation(line: 252, column: 39, scope: !1315)
!1393 = !DILocation(line: 253, column: 39, scope: !1315)
!1394 = !DILocation(line: 256, column: 10, scope: !1315)
!1395 = !DILocation(line: 257, column: 10, scope: !1315)
!1396 = !DILocation(line: 258, column: 15, scope: !1315)
!1397 = !DILocation(line: 259, column: 10, scope: !1315)
!1398 = !DILocation(line: 260, column: 8, scope: !1315)
!1399 = !DILocation(line: 261, column: 25, scope: !1315)
!1400 = !DILocation(line: 261, column: 36, scope: !1315)
!1401 = !DILocation(line: 262, column: 8, scope: !1315)
!1402 = !DILocation(line: 263, column: 8, scope: !1315)
!1403 = !DILocation(line: 264, column: 8, scope: !1315)
!1404 = !DILocation(line: 265, column: 8, scope: !1315)
!1405 = !DILocation(line: 265, column: 3, scope: !1315)
!1406 = !DILocation(line: 308, column: 3, scope: !1315)
!1407 = !DILocation(line: 315, column: 11, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1315, file: !223, line: 309, column: 5)
!1409 = !DILocation(line: 315, column: 12, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1408, file: !223, line: 315, column: 11)
!1411 = !DILocation(line: 316, column: 9, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !223, line: 316, column: 9)
!1413 = distinct !DILexicalBlock(scope: !1410, file: !223, line: 316, column: 9)
!1414 = !DILocation(line: 316, column: 9, scope: !1413)
!1415 = !DILocation(line: 354, column: 26, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !223, line: 332, column: 11)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !223, line: 331, column: 13)
!1418 = distinct !DILexicalBlock(scope: !1408, file: !223, line: 330, column: 7)
!1419 = !DILocation(line: 355, column: 27, scope: !1416)
!1420 = !DILocation(line: 356, column: 11, scope: !1416)
!1421 = !DILocation(line: 357, column: 14, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !223, line: 357, column: 13)
!1423 = !DILocation(line: 357, column: 13, scope: !1418)
!1424 = !DILocation(line: 358, column: 43, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !223, line: 358, column: 11)
!1426 = distinct !DILexicalBlock(scope: !1422, file: !223, line: 358, column: 11)
!1427 = !DILocation(line: 358, column: 11, scope: !1426)
!1428 = !DILocation(line: 359, column: 13, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !223, line: 359, column: 13)
!1430 = distinct !DILexicalBlock(scope: !1425, file: !223, line: 359, column: 13)
!1431 = !DILocation(line: 359, column: 13, scope: !1430)
!1432 = !DILocation(line: 358, column: 70, scope: !1425)
!1433 = distinct !{!1433, !1427, !1434}
!1434 = !DILocation(line: 359, column: 13, scope: !1426)
!1435 = !DILocation(line: 362, column: 28, scope: !1418)
!1436 = !DILocation(line: 364, column: 7, scope: !1408)
!1437 = !DILocation(line: 367, column: 7, scope: !1408)
!1438 = !DILocation(line: 370, column: 7, scope: !1408)
!1439 = !DILocation(line: 373, column: 12, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1408, file: !223, line: 373, column: 11)
!1441 = !DILocation(line: 373, column: 11, scope: !1408)
!1442 = !DILocation(line: 378, column: 12, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1408, file: !223, line: 378, column: 11)
!1444 = !DILocation(line: 378, column: 11, scope: !1408)
!1445 = !DILocation(line: 379, column: 9, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !223, line: 379, column: 9)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !223, line: 379, column: 9)
!1448 = !DILocation(line: 379, column: 9, scope: !1447)
!1449 = !DILocation(line: 386, column: 7, scope: !1408)
!1450 = !DILocation(line: 389, column: 7, scope: !1408)
!1451 = !DILocation(line: 255, column: 10, scope: !1315)
!1452 = !DILocation(line: 392, column: 8, scope: !1344)
!1453 = !DILocation(line: 392, column: 27, scope: !1343)
!1454 = !DILocation(line: 392, column: 19, scope: !1343)
!1455 = !DILocation(line: 392, column: 60, scope: !1343)
!1456 = !DILocation(line: 392, column: 3, scope: !1344)
!1457 = !DILocation(line: 392, column: 41, scope: !1343)
!1458 = !DILocation(line: 392, column: 48, scope: !1343)
!1459 = !DILocation(line: 396, column: 12, scope: !1342)
!1460 = !DILocation(line: 397, column: 12, scope: !1342)
!1461 = !DILocation(line: 398, column: 12, scope: !1342)
!1462 = !DILocation(line: 401, column: 11, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1342, file: !223, line: 400, column: 11)
!1464 = !DILocation(line: 403, column: 17, scope: !1463)
!1465 = !DILocation(line: 404, column: 39, scope: !1463)
!1466 = !DILocation(line: 408, column: 32, scope: !1463)
!1467 = !DILocation(line: 404, column: 19, scope: !1463)
!1468 = !DILocation(line: 404, column: 15, scope: !1463)
!1469 = !DILocation(line: 409, column: 11, scope: !1463)
!1470 = !DILocation(line: 409, column: 26, scope: !1463)
!1471 = !DILocation(line: 409, column: 14, scope: !1463)
!1472 = !DILocation(line: 409, column: 63, scope: !1463)
!1473 = !DILocation(line: 400, column: 11, scope: !1342)
!1474 = !DILocation(line: 416, column: 11, scope: !1342)
!1475 = !DILocation(line: 394, column: 21, scope: !1342)
!1476 = !DILocation(line: 417, column: 7, scope: !1342)
!1477 = !DILocation(line: 420, column: 15, scope: !1351)
!1478 = !DILocation(line: 422, column: 15, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !223, line: 422, column: 15)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !223, line: 421, column: 13)
!1481 = distinct !DILexicalBlock(scope: !1351, file: !223, line: 420, column: 15)
!1482 = !DILocation(line: 422, column: 15, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1479, file: !223, line: 422, column: 15)
!1484 = !DILocation(line: 422, column: 15, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !223, line: 422, column: 15)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !223, line: 422, column: 15)
!1487 = distinct !DILexicalBlock(scope: !1483, file: !223, line: 422, column: 15)
!1488 = !DILocation(line: 422, column: 15, scope: !1486)
!1489 = !DILocation(line: 422, column: 15, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !223, line: 422, column: 15)
!1491 = distinct !DILexicalBlock(scope: !1487, file: !223, line: 422, column: 15)
!1492 = !DILocation(line: 422, column: 15, scope: !1491)
!1493 = !DILocation(line: 422, column: 15, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !223, line: 422, column: 15)
!1495 = distinct !DILexicalBlock(scope: !1487, file: !223, line: 422, column: 15)
!1496 = !DILocation(line: 422, column: 15, scope: !1495)
!1497 = !DILocation(line: 422, column: 15, scope: !1487)
!1498 = !DILocation(line: 422, column: 15, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !223, line: 422, column: 15)
!1500 = distinct !DILexicalBlock(scope: !1479, file: !223, line: 422, column: 15)
!1501 = !DILocation(line: 422, column: 15, scope: !1500)
!1502 = !DILocation(line: 430, column: 19, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1480, file: !223, line: 429, column: 19)
!1504 = !DILocation(line: 430, column: 24, scope: !1503)
!1505 = !DILocation(line: 430, column: 28, scope: !1503)
!1506 = !DILocation(line: 430, column: 38, scope: !1503)
!1507 = !DILocation(line: 430, column: 48, scope: !1503)
!1508 = !DILocation(line: 430, column: 59, scope: !1503)
!1509 = !DILocation(line: 432, column: 19, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !223, line: 432, column: 19)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !223, line: 432, column: 19)
!1512 = distinct !DILexicalBlock(scope: !1503, file: !223, line: 431, column: 17)
!1513 = !DILocation(line: 432, column: 19, scope: !1511)
!1514 = !DILocation(line: 433, column: 19, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !223, line: 433, column: 19)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !223, line: 433, column: 19)
!1517 = !DILocation(line: 433, column: 19, scope: !1516)
!1518 = !DILocation(line: 434, column: 17, scope: !1512)
!1519 = !DILocation(line: 441, column: 20, scope: !1481)
!1520 = !DILocation(line: 446, column: 11, scope: !1351)
!1521 = !DILocation(line: 449, column: 19, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1351, file: !223, line: 447, column: 13)
!1523 = !DILocation(line: 455, column: 19, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1522, file: !223, line: 454, column: 19)
!1525 = !DILocation(line: 455, column: 24, scope: !1524)
!1526 = !DILocation(line: 455, column: 28, scope: !1524)
!1527 = !DILocation(line: 455, column: 38, scope: !1524)
!1528 = !DILocation(line: 455, column: 47, scope: !1524)
!1529 = !DILocation(line: 455, column: 41, scope: !1524)
!1530 = !DILocation(line: 455, column: 52, scope: !1524)
!1531 = !DILocation(line: 454, column: 19, scope: !1522)
!1532 = !DILocation(line: 456, column: 25, scope: !1524)
!1533 = !DILocation(line: 456, column: 17, scope: !1524)
!1534 = !DILocation(line: 463, column: 25, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1524, file: !223, line: 457, column: 19)
!1536 = !DILocation(line: 467, column: 21, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !223, line: 467, column: 21)
!1538 = distinct !DILexicalBlock(scope: !1535, file: !223, line: 467, column: 21)
!1539 = !DILocation(line: 467, column: 21, scope: !1538)
!1540 = !DILocation(line: 468, column: 21, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !223, line: 468, column: 21)
!1542 = distinct !DILexicalBlock(scope: !1535, file: !223, line: 468, column: 21)
!1543 = !DILocation(line: 468, column: 21, scope: !1542)
!1544 = !DILocation(line: 469, column: 21, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !223, line: 469, column: 21)
!1546 = distinct !DILexicalBlock(scope: !1535, file: !223, line: 469, column: 21)
!1547 = !DILocation(line: 469, column: 21, scope: !1546)
!1548 = !DILocation(line: 470, column: 21, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !223, line: 470, column: 21)
!1550 = distinct !DILexicalBlock(scope: !1535, file: !223, line: 470, column: 21)
!1551 = !DILocation(line: 470, column: 21, scope: !1550)
!1552 = !DILocation(line: 471, column: 21, scope: !1535)
!1553 = !DILocation(line: 395, column: 21, scope: !1342)
!1554 = !DILocation(line: 484, column: 31, scope: !1351)
!1555 = !DILocation(line: 485, column: 31, scope: !1351)
!1556 = !DILocation(line: 487, column: 31, scope: !1351)
!1557 = !DILocation(line: 488, column: 31, scope: !1351)
!1558 = !DILocation(line: 489, column: 31, scope: !1351)
!1559 = !DILocation(line: 492, column: 15, scope: !1351)
!1560 = !DILocation(line: 494, column: 19, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !223, line: 493, column: 13)
!1562 = distinct !DILexicalBlock(scope: !1351, file: !223, line: 492, column: 15)
!1563 = !DILocation(line: 501, column: 33, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1351, file: !223, line: 501, column: 15)
!1565 = !DILocation(line: 506, column: 15, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1351, file: !223, line: 505, column: 15)
!1567 = !DILocation(line: 510, column: 15, scope: !1351)
!1568 = !DILocation(line: 518, column: 26, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1351, file: !223, line: 518, column: 15)
!1570 = !DILocation(line: 518, column: 15, scope: !1351)
!1571 = !DILocation(line: 518, column: 40, scope: !1569)
!1572 = !DILocation(line: 518, column: 47, scope: !1569)
!1573 = !DILocation(line: 522, column: 17, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1351, file: !223, line: 522, column: 15)
!1575 = !DILocation(line: 518, column: 18, scope: !1569)
!1576 = !DILocation(line: 518, column: 65, scope: !1569)
!1577 = !DILocation(line: 522, column: 15, scope: !1351)
!1578 = !DILocation(line: 526, column: 11, scope: !1351)
!1579 = !DILocation(line: 541, column: 15, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1351, file: !223, line: 540, column: 15)
!1581 = !DILocation(line: 548, column: 15, scope: !1351)
!1582 = !DILocation(line: 550, column: 19, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !223, line: 549, column: 13)
!1584 = distinct !DILexicalBlock(scope: !1351, file: !223, line: 548, column: 15)
!1585 = !DILocation(line: 553, column: 19, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1583, file: !223, line: 553, column: 19)
!1587 = !DILocation(line: 553, column: 35, scope: !1586)
!1588 = !DILocation(line: 553, column: 30, scope: !1586)
!1589 = !DILocation(line: 562, column: 15, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !223, line: 562, column: 15)
!1591 = distinct !DILexicalBlock(scope: !1583, file: !223, line: 562, column: 15)
!1592 = !DILocation(line: 562, column: 15, scope: !1591)
!1593 = !DILocation(line: 563, column: 15, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !223, line: 563, column: 15)
!1595 = distinct !DILexicalBlock(scope: !1583, file: !223, line: 563, column: 15)
!1596 = !DILocation(line: 563, column: 15, scope: !1595)
!1597 = !DILocation(line: 564, column: 15, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !223, line: 564, column: 15)
!1599 = distinct !DILexicalBlock(scope: !1583, file: !223, line: 564, column: 15)
!1600 = !DILocation(line: 564, column: 15, scope: !1599)
!1601 = !DILocation(line: 566, column: 13, scope: !1583)
!1602 = !DILocation(line: 606, column: 17, scope: !1350)
!1603 = !DILocation(line: 602, column: 20, scope: !1350)
!1604 = !DILocation(line: 609, column: 29, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1355, file: !223, line: 607, column: 15)
!1606 = !DILocation(line: 609, column: 27, scope: !1605)
!1607 = !DILocation(line: 604, column: 18, scope: !1350)
!1608 = !DILocation(line: 610, column: 15, scope: !1605)
!1609 = !DILocation(line: 613, column: 17, scope: !1354)
!1610 = !DILocation(line: 614, column: 17, scope: !1354)
!1611 = !DILocation(line: 618, column: 29, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1354, file: !223, line: 618, column: 21)
!1613 = !DILocation(line: 618, column: 21, scope: !1354)
!1614 = !DILocation(line: 619, column: 29, scope: !1612)
!1615 = !DILocation(line: 619, column: 19, scope: !1612)
!1616 = !DILocation(line: 621, column: 17, scope: !1354)
!1617 = distinct !{!1617, !1616, !1618}
!1618 = !DILocation(line: 667, column: 44, scope: !1354)
!1619 = !DILocation(line: 623, column: 21, scope: !1372)
!1620 = !DILocation(line: 624, column: 56, scope: !1372)
!1621 = !DILocation(line: 624, column: 50, scope: !1372)
!1622 = !DILocation(line: 625, column: 53, scope: !1372)
!1623 = !DILocation(line: 613, column: 27, scope: !1354)
!1624 = !DILocation(line: 623, column: 29, scope: !1372)
!1625 = !DILocation(line: 624, column: 36, scope: !1372)
!1626 = !DILocation(line: 624, column: 28, scope: !1372)
!1627 = !DILocation(line: 626, column: 25, scope: !1372)
!1628 = !DILocation(line: 636, column: 38, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1379, file: !223, line: 634, column: 23)
!1630 = !DILocation(line: 636, column: 48, scope: !1629)
!1631 = !DILocation(line: 636, column: 51, scope: !1629)
!1632 = !DILocation(line: 636, column: 25, scope: !1629)
!1633 = !DILocation(line: 637, column: 28, scope: !1629)
!1634 = !DILocation(line: 636, column: 34, scope: !1629)
!1635 = distinct !{!1635, !1632, !1633}
!1636 = !DILocation(line: 650, column: 43, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !223, line: 650, column: 29)
!1638 = distinct !DILexicalBlock(scope: !1376, file: !223, line: 650, column: 29)
!1639 = !DILocation(line: 647, column: 29, scope: !1377)
!1640 = !DILocation(line: 649, column: 36, scope: !1376)
!1641 = !DILocation(line: 651, column: 49, scope: !1637)
!1642 = !DILocation(line: 651, column: 39, scope: !1637)
!1643 = !DILocation(line: 651, column: 31, scope: !1637)
!1644 = !DILocation(line: 650, column: 53, scope: !1637)
!1645 = !DILocation(line: 650, column: 29, scope: !1638)
!1646 = distinct !{!1646, !1645, !1647}
!1647 = !DILocation(line: 659, column: 33, scope: !1638)
!1648 = !DILocation(line: 666, column: 19, scope: !1354)
!1649 = !DILocation(line: 662, column: 41, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1378, file: !223, line: 662, column: 29)
!1651 = !DILocation(line: 662, column: 31, scope: !1650)
!1652 = !DILocation(line: 662, column: 29, scope: !1378)
!1653 = !DILocation(line: 664, column: 27, scope: !1378)
!1654 = !DILocation(line: 667, column: 26, scope: !1354)
!1655 = !DILocation(line: 667, column: 24, scope: !1354)
!1656 = !DILocation(line: 666, column: 19, scope: !1372)
!1657 = !DILocation(line: 668, column: 15, scope: !1355)
!1658 = !DILocation(line: 670, column: 40, scope: !1350)
!1659 = !DILocation(line: 672, column: 19, scope: !1384)
!1660 = !DILocation(line: 672, column: 45, scope: !1384)
!1661 = !DILocation(line: 672, column: 23, scope: !1384)
!1662 = !DILocation(line: 676, column: 33, scope: !1383)
!1663 = !DILocation(line: 676, column: 24, scope: !1383)
!1664 = !DILocation(line: 678, column: 17, scope: !1383)
!1665 = !DILocation(line: 680, column: 43, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !223, line: 680, column: 25)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !223, line: 679, column: 19)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !223, line: 678, column: 17)
!1669 = distinct !DILexicalBlock(scope: !1383, file: !223, line: 678, column: 17)
!1670 = !DILocation(line: 682, column: 25, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !223, line: 682, column: 25)
!1672 = distinct !DILexicalBlock(scope: !1666, file: !223, line: 681, column: 23)
!1673 = !DILocation(line: 682, column: 25, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !223, line: 682, column: 25)
!1675 = !DILocation(line: 682, column: 25, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !223, line: 682, column: 25)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !223, line: 682, column: 25)
!1678 = distinct !DILexicalBlock(scope: !1674, file: !223, line: 682, column: 25)
!1679 = !DILocation(line: 682, column: 25, scope: !1677)
!1680 = !DILocation(line: 682, column: 25, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !223, line: 682, column: 25)
!1682 = distinct !DILexicalBlock(scope: !1678, file: !223, line: 682, column: 25)
!1683 = !DILocation(line: 682, column: 25, scope: !1682)
!1684 = !DILocation(line: 682, column: 25, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !223, line: 682, column: 25)
!1686 = distinct !DILexicalBlock(scope: !1678, file: !223, line: 682, column: 25)
!1687 = !DILocation(line: 682, column: 25, scope: !1686)
!1688 = !DILocation(line: 682, column: 25, scope: !1678)
!1689 = !DILocation(line: 682, column: 25, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !223, line: 682, column: 25)
!1691 = distinct !DILexicalBlock(scope: !1671, file: !223, line: 682, column: 25)
!1692 = !DILocation(line: 682, column: 25, scope: !1691)
!1693 = !DILocation(line: 683, column: 25, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !223, line: 683, column: 25)
!1695 = distinct !DILexicalBlock(scope: !1672, file: !223, line: 683, column: 25)
!1696 = !DILocation(line: 683, column: 25, scope: !1695)
!1697 = !DILocation(line: 684, column: 25, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !223, line: 684, column: 25)
!1699 = distinct !DILexicalBlock(scope: !1672, file: !223, line: 684, column: 25)
!1700 = !DILocation(line: 684, column: 25, scope: !1699)
!1701 = !DILocation(line: 685, column: 38, scope: !1672)
!1702 = !DILocation(line: 685, column: 33, scope: !1672)
!1703 = !DILocation(line: 686, column: 23, scope: !1672)
!1704 = !DILocation(line: 687, column: 30, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1666, file: !223, line: 687, column: 30)
!1706 = !DILocation(line: 687, column: 30, scope: !1666)
!1707 = !DILocation(line: 689, column: 25, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !223, line: 689, column: 25)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !223, line: 689, column: 25)
!1710 = distinct !DILexicalBlock(scope: !1705, file: !223, line: 688, column: 23)
!1711 = !DILocation(line: 689, column: 25, scope: !1709)
!1712 = !DILocation(line: 691, column: 23, scope: !1710)
!1713 = !DILocation(line: 692, column: 35, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1667, file: !223, line: 692, column: 25)
!1715 = !DILocation(line: 692, column: 30, scope: !1714)
!1716 = !DILocation(line: 692, column: 25, scope: !1667)
!1717 = !DILocation(line: 694, column: 21, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !223, line: 694, column: 21)
!1719 = distinct !DILexicalBlock(scope: !1667, file: !223, line: 694, column: 21)
!1720 = !DILocation(line: 694, column: 21, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !223, line: 694, column: 21)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !223, line: 694, column: 21)
!1723 = distinct !DILexicalBlock(scope: !1718, file: !223, line: 694, column: 21)
!1724 = !DILocation(line: 694, column: 21, scope: !1722)
!1725 = !DILocation(line: 694, column: 21, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !223, line: 694, column: 21)
!1727 = distinct !DILexicalBlock(scope: !1723, file: !223, line: 694, column: 21)
!1728 = !DILocation(line: 694, column: 21, scope: !1727)
!1729 = !DILocation(line: 694, column: 21, scope: !1723)
!1730 = !DILocation(line: 695, column: 21, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !223, line: 695, column: 21)
!1732 = distinct !DILexicalBlock(scope: !1667, file: !223, line: 695, column: 21)
!1733 = !DILocation(line: 695, column: 21, scope: !1732)
!1734 = !DILocation(line: 696, column: 25, scope: !1667)
!1735 = !DILocation(line: 678, column: 17, scope: !1668)
!1736 = distinct !{!1736, !1737, !1738}
!1737 = !DILocation(line: 678, column: 17, scope: !1669)
!1738 = !DILocation(line: 697, column: 19, scope: !1669)
!1739 = !DILocation(line: 704, column: 34, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1342, file: !223, line: 704, column: 11)
!1741 = !DILocation(line: 706, column: 14, scope: !1740)
!1742 = !DILocation(line: 707, column: 14, scope: !1740)
!1743 = !DILocation(line: 707, column: 35, scope: !1740)
!1744 = !DILocation(line: 707, column: 17, scope: !1740)
!1745 = !DILocation(line: 707, column: 53, scope: !1740)
!1746 = !DILocation(line: 707, column: 47, scope: !1740)
!1747 = !DILocation(line: 707, column: 65, scope: !1740)
!1748 = !DILocation(line: 708, column: 15, scope: !1740)
!1749 = !DILocation(line: 708, column: 11, scope: !1740)
!1750 = !DILocation(line: 704, column: 11, scope: !1342)
!1751 = !DILocation(line: 712, column: 7, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1342, file: !223, line: 712, column: 7)
!1753 = !DILocation(line: 712, column: 7, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1752, file: !223, line: 712, column: 7)
!1755 = !DILocation(line: 712, column: 7, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !223, line: 712, column: 7)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !223, line: 712, column: 7)
!1758 = distinct !DILexicalBlock(scope: !1754, file: !223, line: 712, column: 7)
!1759 = !DILocation(line: 712, column: 7, scope: !1757)
!1760 = !DILocation(line: 712, column: 7, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !223, line: 712, column: 7)
!1762 = distinct !DILexicalBlock(scope: !1758, file: !223, line: 712, column: 7)
!1763 = !DILocation(line: 712, column: 7, scope: !1762)
!1764 = !DILocation(line: 712, column: 7, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !223, line: 712, column: 7)
!1766 = distinct !DILexicalBlock(scope: !1758, file: !223, line: 712, column: 7)
!1767 = !DILocation(line: 712, column: 7, scope: !1766)
!1768 = !DILocation(line: 712, column: 7, scope: !1758)
!1769 = !DILocation(line: 712, column: 7, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !223, line: 712, column: 7)
!1771 = distinct !DILexicalBlock(scope: !1752, file: !223, line: 712, column: 7)
!1772 = !DILocation(line: 712, column: 7, scope: !1771)
!1773 = !DILocation(line: 715, column: 7, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !223, line: 715, column: 7)
!1775 = distinct !DILexicalBlock(scope: !1342, file: !223, line: 715, column: 7)
!1776 = !DILocation(line: 715, column: 7, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !223, line: 715, column: 7)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !223, line: 715, column: 7)
!1779 = distinct !DILexicalBlock(scope: !1774, file: !223, line: 715, column: 7)
!1780 = !DILocation(line: 715, column: 7, scope: !1778)
!1781 = !DILocation(line: 715, column: 7, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !223, line: 715, column: 7)
!1783 = distinct !DILexicalBlock(scope: !1779, file: !223, line: 715, column: 7)
!1784 = !DILocation(line: 715, column: 7, scope: !1783)
!1785 = !DILocation(line: 715, column: 7, scope: !1779)
!1786 = !DILocation(line: 716, column: 7, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !223, line: 716, column: 7)
!1788 = distinct !DILexicalBlock(scope: !1342, file: !223, line: 716, column: 7)
!1789 = !DILocation(line: 716, column: 7, scope: !1788)
!1790 = !DILocation(line: 718, column: 13, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1342, file: !223, line: 718, column: 11)
!1792 = !DILocation(line: 718, column: 11, scope: !1342)
!1793 = !DILocation(line: 720, column: 5, scope: !1343)
!1794 = !DILocation(line: 392, column: 75, scope: !1343)
!1795 = !DILocation(line: 392, column: 3, scope: !1343)
!1796 = distinct !{!1796, !1456, !1797}
!1797 = !DILocation(line: 720, column: 5, scope: !1344)
!1798 = !DILocation(line: 722, column: 11, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1315, file: !223, line: 722, column: 7)
!1800 = !DILocation(line: 722, column: 16, scope: !1799)
!1801 = !DILocation(line: 730, column: 51, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1315, file: !223, line: 730, column: 7)
!1803 = !DILocation(line: 731, column: 10, scope: !1802)
!1804 = !DILocation(line: 733, column: 11, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !223, line: 733, column: 11)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !223, line: 732, column: 5)
!1807 = !DILocation(line: 733, column: 11, scope: !1806)
!1808 = !DILocation(line: 734, column: 16, scope: !1805)
!1809 = !DILocation(line: 734, column: 9, scope: !1805)
!1810 = !DILocation(line: 738, column: 18, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1805, file: !223, line: 738, column: 16)
!1812 = !DILocation(line: 738, column: 32, scope: !1811)
!1813 = !DILocation(line: 738, column: 29, scope: !1811)
!1814 = !DILocation(line: 747, column: 7, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1315, file: !223, line: 747, column: 7)
!1816 = !DILocation(line: 747, column: 20, scope: !1815)
!1817 = !DILocation(line: 748, column: 12, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !223, line: 748, column: 5)
!1819 = distinct !DILexicalBlock(scope: !1815, file: !223, line: 748, column: 5)
!1820 = !DILocation(line: 748, column: 5, scope: !1819)
!1821 = !DILocation(line: 749, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !223, line: 749, column: 7)
!1823 = distinct !DILexicalBlock(scope: !1818, file: !223, line: 749, column: 7)
!1824 = !DILocation(line: 749, column: 7, scope: !1823)
!1825 = !DILocation(line: 748, column: 39, scope: !1818)
!1826 = distinct !{!1826, !1820, !1827}
!1827 = !DILocation(line: 749, column: 7, scope: !1819)
!1828 = !DILocation(line: 751, column: 11, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1315, file: !223, line: 751, column: 7)
!1830 = !DILocation(line: 751, column: 7, scope: !1315)
!1831 = !DILocation(line: 752, column: 5, scope: !1829)
!1832 = !DILocation(line: 752, column: 17, scope: !1829)
!1833 = !DILocation(line: 758, column: 21, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1315, file: !223, line: 758, column: 7)
!1835 = !DILocation(line: 758, column: 54, scope: !1834)
!1836 = !DILocation(line: 758, column: 51, scope: !1834)
!1837 = !DILocation(line: 762, column: 42, scope: !1315)
!1838 = !DILocation(line: 760, column: 10, scope: !1315)
!1839 = !DILocation(line: 760, column: 3, scope: !1315)
!1840 = !DILocation(line: 764, column: 1, scope: !1315)
!1841 = distinct !DISubprogram(name: "gettext_quote", scope: !223, file: !223, line: 199, type: !1842, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !1844)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!68, !68, !5}
!1844 = !{!1845, !1846, !1847, !1848}
!1845 = !DILocalVariable(name: "msgid", arg: 1, scope: !1841, file: !223, line: 199, type: !68)
!1846 = !DILocalVariable(name: "s", arg: 2, scope: !1841, file: !223, line: 199, type: !5)
!1847 = !DILocalVariable(name: "translation", scope: !1841, file: !223, line: 201, type: !68)
!1848 = !DILocalVariable(name: "locale_code", scope: !1841, file: !223, line: 202, type: !68)
!1849 = !DILocation(line: 199, column: 28, scope: !1841)
!1850 = !DILocation(line: 199, column: 54, scope: !1841)
!1851 = !DILocation(line: 201, column: 29, scope: !1841)
!1852 = !DILocation(line: 201, column: 15, scope: !1841)
!1853 = !DILocation(line: 204, column: 19, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1841, file: !223, line: 204, column: 7)
!1855 = !DILocation(line: 204, column: 7, scope: !1841)
!1856 = !DILocation(line: 225, column: 17, scope: !1841)
!1857 = !DILocation(line: 202, column: 15, scope: !1841)
!1858 = !DILocalVariable(name: "s2", arg: 2, scope: !1859, file: !1860, line: 160, type: !68)
!1859 = distinct !DISubprogram(name: "strcaseeq0", scope: !1860, file: !1860, line: 160, type: !1861, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !1863)
!1860 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!47, !68, !68, !45, !45, !45, !45, !45, !45, !45, !45, !45}
!1863 = !{!1864, !1858, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873}
!1864 = !DILocalVariable(name: "s1", arg: 1, scope: !1859, file: !1860, line: 160, type: !68)
!1865 = !DILocalVariable(name: "s20", arg: 3, scope: !1859, file: !1860, line: 160, type: !45)
!1866 = !DILocalVariable(name: "s21", arg: 4, scope: !1859, file: !1860, line: 160, type: !45)
!1867 = !DILocalVariable(name: "s22", arg: 5, scope: !1859, file: !1860, line: 160, type: !45)
!1868 = !DILocalVariable(name: "s23", arg: 6, scope: !1859, file: !1860, line: 160, type: !45)
!1869 = !DILocalVariable(name: "s24", arg: 7, scope: !1859, file: !1860, line: 160, type: !45)
!1870 = !DILocalVariable(name: "s25", arg: 8, scope: !1859, file: !1860, line: 160, type: !45)
!1871 = !DILocalVariable(name: "s26", arg: 9, scope: !1859, file: !1860, line: 160, type: !45)
!1872 = !DILocalVariable(name: "s27", arg: 10, scope: !1859, file: !1860, line: 160, type: !45)
!1873 = !DILocalVariable(name: "s28", arg: 11, scope: !1859, file: !1860, line: 160, type: !45)
!1874 = !DILocation(line: 160, column: 41, scope: !1859, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 226, column: 7, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1841, file: !223, line: 226, column: 7)
!1877 = !DILocation(line: 160, column: 120, scope: !1859, inlinedAt: !1875)
!1878 = !DILocation(line: 160, column: 130, scope: !1859, inlinedAt: !1875)
!1879 = !DILocation(line: 162, column: 7, scope: !1880, inlinedAt: !1875)
!1880 = distinct !DILexicalBlock(scope: !1859, file: !1860, line: 162, column: 7)
!1881 = !DILocalVariable(name: "s2", arg: 2, scope: !1882, file: !1860, line: 146, type: !68)
!1882 = distinct !DISubprogram(name: "strcaseeq1", scope: !1860, file: !1860, line: 146, type: !1883, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !1885)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!47, !68, !68, !45, !45, !45, !45, !45, !45, !45, !45}
!1885 = !{!1886, !1881, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894}
!1886 = !DILocalVariable(name: "s1", arg: 1, scope: !1882, file: !1860, line: 146, type: !68)
!1887 = !DILocalVariable(name: "s21", arg: 3, scope: !1882, file: !1860, line: 146, type: !45)
!1888 = !DILocalVariable(name: "s22", arg: 4, scope: !1882, file: !1860, line: 146, type: !45)
!1889 = !DILocalVariable(name: "s23", arg: 5, scope: !1882, file: !1860, line: 146, type: !45)
!1890 = !DILocalVariable(name: "s24", arg: 6, scope: !1882, file: !1860, line: 146, type: !45)
!1891 = !DILocalVariable(name: "s25", arg: 7, scope: !1882, file: !1860, line: 146, type: !45)
!1892 = !DILocalVariable(name: "s26", arg: 8, scope: !1882, file: !1860, line: 146, type: !45)
!1893 = !DILocalVariable(name: "s27", arg: 9, scope: !1882, file: !1860, line: 146, type: !45)
!1894 = !DILocalVariable(name: "s28", arg: 10, scope: !1882, file: !1860, line: 146, type: !45)
!1895 = !DILocation(line: 146, column: 41, scope: !1882, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 167, column: 16, scope: !1897, inlinedAt: !1875)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !1860, line: 164, column: 11)
!1898 = distinct !DILexicalBlock(scope: !1880, file: !1860, line: 163, column: 5)
!1899 = !DILocation(line: 146, column: 110, scope: !1882, inlinedAt: !1896)
!1900 = !DILocation(line: 146, column: 120, scope: !1882, inlinedAt: !1896)
!1901 = !DILocation(line: 148, column: 7, scope: !1902, inlinedAt: !1896)
!1902 = distinct !DILexicalBlock(scope: !1882, file: !1860, line: 148, column: 7)
!1903 = !DILocalVariable(name: "s2", arg: 2, scope: !1904, file: !1860, line: 132, type: !68)
!1904 = distinct !DISubprogram(name: "strcaseeq2", scope: !1860, file: !1860, line: 132, type: !1905, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!47, !68, !68, !45, !45, !45, !45, !45, !45, !45}
!1907 = !{!1908, !1903, !1909, !1910, !1911, !1912, !1913, !1914, !1915}
!1908 = !DILocalVariable(name: "s1", arg: 1, scope: !1904, file: !1860, line: 132, type: !68)
!1909 = !DILocalVariable(name: "s22", arg: 3, scope: !1904, file: !1860, line: 132, type: !45)
!1910 = !DILocalVariable(name: "s23", arg: 4, scope: !1904, file: !1860, line: 132, type: !45)
!1911 = !DILocalVariable(name: "s24", arg: 5, scope: !1904, file: !1860, line: 132, type: !45)
!1912 = !DILocalVariable(name: "s25", arg: 6, scope: !1904, file: !1860, line: 132, type: !45)
!1913 = !DILocalVariable(name: "s26", arg: 7, scope: !1904, file: !1860, line: 132, type: !45)
!1914 = !DILocalVariable(name: "s27", arg: 8, scope: !1904, file: !1860, line: 132, type: !45)
!1915 = !DILocalVariable(name: "s28", arg: 9, scope: !1904, file: !1860, line: 132, type: !45)
!1916 = !DILocation(line: 132, column: 41, scope: !1904, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 153, column: 16, scope: !1918, inlinedAt: !1896)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !1860, line: 150, column: 11)
!1919 = distinct !DILexicalBlock(scope: !1902, file: !1860, line: 149, column: 5)
!1920 = !DILocation(line: 132, column: 100, scope: !1904, inlinedAt: !1917)
!1921 = !DILocation(line: 132, column: 110, scope: !1904, inlinedAt: !1917)
!1922 = !DILocation(line: 134, column: 7, scope: !1923, inlinedAt: !1917)
!1923 = distinct !DILexicalBlock(scope: !1904, file: !1860, line: 134, column: 7)
!1924 = !DILocalVariable(name: "s2", arg: 2, scope: !1925, file: !1860, line: 118, type: !68)
!1925 = distinct !DISubprogram(name: "strcaseeq3", scope: !1860, file: !1860, line: 118, type: !1926, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !1928)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!47, !68, !68, !45, !45, !45, !45, !45, !45}
!1928 = !{!1929, !1924, !1930, !1931, !1932, !1933, !1934, !1935}
!1929 = !DILocalVariable(name: "s1", arg: 1, scope: !1925, file: !1860, line: 118, type: !68)
!1930 = !DILocalVariable(name: "s23", arg: 3, scope: !1925, file: !1860, line: 118, type: !45)
!1931 = !DILocalVariable(name: "s24", arg: 4, scope: !1925, file: !1860, line: 118, type: !45)
!1932 = !DILocalVariable(name: "s25", arg: 5, scope: !1925, file: !1860, line: 118, type: !45)
!1933 = !DILocalVariable(name: "s26", arg: 6, scope: !1925, file: !1860, line: 118, type: !45)
!1934 = !DILocalVariable(name: "s27", arg: 7, scope: !1925, file: !1860, line: 118, type: !45)
!1935 = !DILocalVariable(name: "s28", arg: 8, scope: !1925, file: !1860, line: 118, type: !45)
!1936 = !DILocation(line: 118, column: 41, scope: !1925, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 139, column: 16, scope: !1938, inlinedAt: !1917)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !1860, line: 136, column: 11)
!1939 = distinct !DILexicalBlock(scope: !1923, file: !1860, line: 135, column: 5)
!1940 = !DILocation(line: 118, column: 90, scope: !1925, inlinedAt: !1937)
!1941 = !DILocation(line: 118, column: 100, scope: !1925, inlinedAt: !1937)
!1942 = !DILocation(line: 120, column: 7, scope: !1943, inlinedAt: !1937)
!1943 = distinct !DILexicalBlock(scope: !1925, file: !1860, line: 120, column: 7)
!1944 = !DILocation(line: 120, column: 7, scope: !1925, inlinedAt: !1937)
!1945 = !DILocalVariable(name: "s2", arg: 2, scope: !1946, file: !1860, line: 104, type: !68)
!1946 = distinct !DISubprogram(name: "strcaseeq4", scope: !1860, file: !1860, line: 104, type: !1947, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !1949)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!47, !68, !68, !45, !45, !45, !45, !45}
!1949 = !{!1950, !1945, !1951, !1952, !1953, !1954, !1955}
!1950 = !DILocalVariable(name: "s1", arg: 1, scope: !1946, file: !1860, line: 104, type: !68)
!1951 = !DILocalVariable(name: "s24", arg: 3, scope: !1946, file: !1860, line: 104, type: !45)
!1952 = !DILocalVariable(name: "s25", arg: 4, scope: !1946, file: !1860, line: 104, type: !45)
!1953 = !DILocalVariable(name: "s26", arg: 5, scope: !1946, file: !1860, line: 104, type: !45)
!1954 = !DILocalVariable(name: "s27", arg: 6, scope: !1946, file: !1860, line: 104, type: !45)
!1955 = !DILocalVariable(name: "s28", arg: 7, scope: !1946, file: !1860, line: 104, type: !45)
!1956 = !DILocation(line: 104, column: 41, scope: !1946, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 125, column: 16, scope: !1958, inlinedAt: !1937)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !1860, line: 122, column: 11)
!1959 = distinct !DILexicalBlock(scope: !1943, file: !1860, line: 121, column: 5)
!1960 = !DILocation(line: 104, column: 80, scope: !1946, inlinedAt: !1957)
!1961 = !DILocation(line: 104, column: 90, scope: !1946, inlinedAt: !1957)
!1962 = !DILocation(line: 106, column: 7, scope: !1963, inlinedAt: !1957)
!1963 = distinct !DILexicalBlock(scope: !1946, file: !1860, line: 106, column: 7)
!1964 = !DILocation(line: 106, column: 7, scope: !1946, inlinedAt: !1957)
!1965 = !DILocalVariable(name: "s2", arg: 2, scope: !1966, file: !1860, line: 90, type: !68)
!1966 = distinct !DISubprogram(name: "strcaseeq5", scope: !1860, file: !1860, line: 90, type: !1967, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !1969)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!47, !68, !68, !45, !45, !45, !45}
!1969 = !{!1970, !1965, !1971, !1972, !1973, !1974}
!1970 = !DILocalVariable(name: "s1", arg: 1, scope: !1966, file: !1860, line: 90, type: !68)
!1971 = !DILocalVariable(name: "s25", arg: 3, scope: !1966, file: !1860, line: 90, type: !45)
!1972 = !DILocalVariable(name: "s26", arg: 4, scope: !1966, file: !1860, line: 90, type: !45)
!1973 = !DILocalVariable(name: "s27", arg: 5, scope: !1966, file: !1860, line: 90, type: !45)
!1974 = !DILocalVariable(name: "s28", arg: 6, scope: !1966, file: !1860, line: 90, type: !45)
!1975 = !DILocation(line: 90, column: 41, scope: !1966, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 111, column: 16, scope: !1977, inlinedAt: !1957)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !1860, line: 108, column: 11)
!1978 = distinct !DILexicalBlock(scope: !1963, file: !1860, line: 107, column: 5)
!1979 = !DILocation(line: 90, column: 70, scope: !1966, inlinedAt: !1976)
!1980 = !DILocation(line: 90, column: 80, scope: !1966, inlinedAt: !1976)
!1981 = !DILocation(line: 92, column: 7, scope: !1982, inlinedAt: !1976)
!1982 = distinct !DILexicalBlock(scope: !1966, file: !1860, line: 92, column: 7)
!1983 = !DILocation(line: 92, column: 7, scope: !1966, inlinedAt: !1976)
!1984 = !DILocation(line: 227, column: 12, scope: !1876)
!1985 = !DILocation(line: 227, column: 21, scope: !1876)
!1986 = !DILocation(line: 227, column: 5, scope: !1876)
!1987 = !DILocation(line: 146, column: 41, scope: !1882, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 167, column: 16, scope: !1897, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 228, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1841, file: !223, line: 228, column: 7)
!1991 = !DILocation(line: 146, column: 110, scope: !1882, inlinedAt: !1988)
!1992 = !DILocation(line: 146, column: 120, scope: !1882, inlinedAt: !1988)
!1993 = !DILocation(line: 148, column: 7, scope: !1902, inlinedAt: !1988)
!1994 = !DILocation(line: 132, column: 41, scope: !1904, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 153, column: 16, scope: !1918, inlinedAt: !1988)
!1996 = !DILocation(line: 132, column: 100, scope: !1904, inlinedAt: !1995)
!1997 = !DILocation(line: 132, column: 110, scope: !1904, inlinedAt: !1995)
!1998 = !DILocation(line: 134, column: 7, scope: !1923, inlinedAt: !1995)
!1999 = !DILocation(line: 134, column: 7, scope: !1904, inlinedAt: !1995)
!2000 = !DILocation(line: 118, column: 41, scope: !1925, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 139, column: 16, scope: !1938, inlinedAt: !1995)
!2002 = !DILocation(line: 118, column: 90, scope: !1925, inlinedAt: !2001)
!2003 = !DILocation(line: 118, column: 100, scope: !1925, inlinedAt: !2001)
!2004 = !DILocation(line: 120, column: 7, scope: !1943, inlinedAt: !2001)
!2005 = !DILocation(line: 120, column: 7, scope: !1925, inlinedAt: !2001)
!2006 = !DILocation(line: 104, column: 41, scope: !1946, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 125, column: 16, scope: !1958, inlinedAt: !2001)
!2008 = !DILocation(line: 104, column: 80, scope: !1946, inlinedAt: !2007)
!2009 = !DILocation(line: 104, column: 90, scope: !1946, inlinedAt: !2007)
!2010 = !DILocation(line: 106, column: 7, scope: !1963, inlinedAt: !2007)
!2011 = !DILocation(line: 106, column: 7, scope: !1946, inlinedAt: !2007)
!2012 = !DILocation(line: 90, column: 41, scope: !1966, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 111, column: 16, scope: !1977, inlinedAt: !2007)
!2014 = !DILocation(line: 90, column: 70, scope: !1966, inlinedAt: !2013)
!2015 = !DILocation(line: 90, column: 80, scope: !1966, inlinedAt: !2013)
!2016 = !DILocation(line: 92, column: 7, scope: !1982, inlinedAt: !2013)
!2017 = !DILocation(line: 92, column: 7, scope: !1966, inlinedAt: !2013)
!2018 = !DILocalVariable(name: "s2", arg: 2, scope: !2019, file: !1860, line: 76, type: !68)
!2019 = distinct !DISubprogram(name: "strcaseeq6", scope: !1860, file: !1860, line: 76, type: !2020, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2022)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!47, !68, !68, !45, !45, !45}
!2022 = !{!2023, !2018, !2024, !2025, !2026}
!2023 = !DILocalVariable(name: "s1", arg: 1, scope: !2019, file: !1860, line: 76, type: !68)
!2024 = !DILocalVariable(name: "s26", arg: 3, scope: !2019, file: !1860, line: 76, type: !45)
!2025 = !DILocalVariable(name: "s27", arg: 4, scope: !2019, file: !1860, line: 76, type: !45)
!2026 = !DILocalVariable(name: "s28", arg: 5, scope: !2019, file: !1860, line: 76, type: !45)
!2027 = !DILocation(line: 76, column: 41, scope: !2019, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 97, column: 16, scope: !2029, inlinedAt: !2013)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !1860, line: 94, column: 11)
!2030 = distinct !DILexicalBlock(scope: !1982, file: !1860, line: 93, column: 5)
!2031 = !DILocation(line: 76, column: 60, scope: !2019, inlinedAt: !2028)
!2032 = !DILocation(line: 76, column: 70, scope: !2019, inlinedAt: !2028)
!2033 = !DILocation(line: 78, column: 7, scope: !2034, inlinedAt: !2028)
!2034 = distinct !DILexicalBlock(scope: !2019, file: !1860, line: 78, column: 7)
!2035 = !DILocation(line: 78, column: 7, scope: !2019, inlinedAt: !2028)
!2036 = !DILocalVariable(name: "s2", arg: 2, scope: !2037, file: !1860, line: 62, type: !68)
!2037 = distinct !DISubprogram(name: "strcaseeq7", scope: !1860, file: !1860, line: 62, type: !2038, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2040)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!47, !68, !68, !45, !45}
!2040 = !{!2041, !2036, !2042, !2043}
!2041 = !DILocalVariable(name: "s1", arg: 1, scope: !2037, file: !1860, line: 62, type: !68)
!2042 = !DILocalVariable(name: "s27", arg: 3, scope: !2037, file: !1860, line: 62, type: !45)
!2043 = !DILocalVariable(name: "s28", arg: 4, scope: !2037, file: !1860, line: 62, type: !45)
!2044 = !DILocation(line: 62, column: 41, scope: !2037, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 83, column: 16, scope: !2046, inlinedAt: !2028)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !1860, line: 80, column: 11)
!2047 = distinct !DILexicalBlock(scope: !2034, file: !1860, line: 79, column: 5)
!2048 = !DILocation(line: 62, column: 50, scope: !2037, inlinedAt: !2045)
!2049 = !DILocation(line: 62, column: 60, scope: !2037, inlinedAt: !2045)
!2050 = !DILocation(line: 64, column: 7, scope: !2051, inlinedAt: !2045)
!2051 = distinct !DILexicalBlock(scope: !2037, file: !1860, line: 64, column: 7)
!2052 = !DILocation(line: 228, column: 7, scope: !1841)
!2053 = !DILocation(line: 229, column: 12, scope: !1990)
!2054 = !DILocation(line: 229, column: 21, scope: !1990)
!2055 = !DILocation(line: 229, column: 5, scope: !1990)
!2056 = !DILocation(line: 231, column: 13, scope: !1841)
!2057 = !DILocation(line: 231, column: 11, scope: !1841)
!2058 = !DILocation(line: 231, column: 3, scope: !1841)
!2059 = !DILocation(line: 232, column: 1, scope: !1841)
!2060 = distinct !DISubprogram(name: "quotearg_alloc", scope: !223, file: !223, line: 791, type: !2061, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2063)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!44, !68, !49, !1187}
!2063 = !{!2064, !2065, !2066}
!2064 = !DILocalVariable(name: "arg", arg: 1, scope: !2060, file: !223, line: 791, type: !68)
!2065 = !DILocalVariable(name: "argsize", arg: 2, scope: !2060, file: !223, line: 791, type: !49)
!2066 = !DILocalVariable(name: "o", arg: 3, scope: !2060, file: !223, line: 792, type: !1187)
!2067 = !DILocation(line: 791, column: 29, scope: !2060)
!2068 = !DILocation(line: 791, column: 41, scope: !2060)
!2069 = !DILocation(line: 792, column: 47, scope: !2060)
!2070 = !DILocalVariable(name: "arg", arg: 1, scope: !2071, file: !223, line: 804, type: !68)
!2071 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !223, file: !223, line: 804, type: !2072, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2074)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!44, !68, !49, !638, !1187}
!2074 = !{!2070, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082}
!2075 = !DILocalVariable(name: "argsize", arg: 2, scope: !2071, file: !223, line: 804, type: !49)
!2076 = !DILocalVariable(name: "size", arg: 3, scope: !2071, file: !223, line: 804, type: !638)
!2077 = !DILocalVariable(name: "o", arg: 4, scope: !2071, file: !223, line: 805, type: !1187)
!2078 = !DILocalVariable(name: "p", scope: !2071, file: !223, line: 807, type: !1187)
!2079 = !DILocalVariable(name: "e", scope: !2071, file: !223, line: 808, type: !47)
!2080 = !DILocalVariable(name: "flags", scope: !2071, file: !223, line: 810, type: !47)
!2081 = !DILocalVariable(name: "bufsize", scope: !2071, file: !223, line: 811, type: !49)
!2082 = !DILocalVariable(name: "buf", scope: !2071, file: !223, line: 815, type: !44)
!2083 = !DILocation(line: 804, column: 33, scope: !2071, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 794, column: 10, scope: !2060)
!2085 = !DILocation(line: 804, column: 45, scope: !2071, inlinedAt: !2084)
!2086 = !DILocation(line: 804, column: 62, scope: !2071, inlinedAt: !2084)
!2087 = !DILocation(line: 805, column: 51, scope: !2071, inlinedAt: !2084)
!2088 = !DILocation(line: 807, column: 37, scope: !2071, inlinedAt: !2084)
!2089 = !DILocation(line: 807, column: 33, scope: !2071, inlinedAt: !2084)
!2090 = !DILocation(line: 808, column: 11, scope: !2071, inlinedAt: !2084)
!2091 = !DILocation(line: 808, column: 7, scope: !2071, inlinedAt: !2084)
!2092 = !DILocation(line: 810, column: 18, scope: !2071, inlinedAt: !2084)
!2093 = !DILocation(line: 810, column: 24, scope: !2071, inlinedAt: !2084)
!2094 = !DILocation(line: 810, column: 7, scope: !2071, inlinedAt: !2084)
!2095 = !DILocation(line: 811, column: 69, scope: !2071, inlinedAt: !2084)
!2096 = !DILocation(line: 812, column: 53, scope: !2071, inlinedAt: !2084)
!2097 = !DILocation(line: 813, column: 49, scope: !2071, inlinedAt: !2084)
!2098 = !DILocation(line: 814, column: 49, scope: !2071, inlinedAt: !2084)
!2099 = !DILocation(line: 811, column: 20, scope: !2071, inlinedAt: !2084)
!2100 = !DILocation(line: 814, column: 62, scope: !2071, inlinedAt: !2084)
!2101 = !DILocation(line: 811, column: 10, scope: !2071, inlinedAt: !2084)
!2102 = !DILocalVariable(name: "n", arg: 1, scope: !2103, file: !634, line: 220, type: !49)
!2103 = distinct !DISubprogram(name: "xcharalloc", scope: !634, file: !634, line: 220, type: !2104, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2106)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!44, !49}
!2106 = !{!2102}
!2107 = !DILocation(line: 220, column: 20, scope: !2103, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 815, column: 15, scope: !2071, inlinedAt: !2084)
!2109 = !DILocation(line: 222, column: 10, scope: !2103, inlinedAt: !2108)
!2110 = !DILocation(line: 815, column: 9, scope: !2071, inlinedAt: !2084)
!2111 = !DILocation(line: 816, column: 60, scope: !2071, inlinedAt: !2084)
!2112 = !DILocation(line: 818, column: 32, scope: !2071, inlinedAt: !2084)
!2113 = !DILocation(line: 818, column: 47, scope: !2071, inlinedAt: !2084)
!2114 = !DILocation(line: 816, column: 3, scope: !2071, inlinedAt: !2084)
!2115 = !DILocation(line: 819, column: 9, scope: !2071, inlinedAt: !2084)
!2116 = !DILocation(line: 794, column: 3, scope: !2060)
!2117 = !DILocation(line: 804, column: 33, scope: !2071)
!2118 = !DILocation(line: 804, column: 45, scope: !2071)
!2119 = !DILocation(line: 804, column: 62, scope: !2071)
!2120 = !DILocation(line: 805, column: 51, scope: !2071)
!2121 = !DILocation(line: 807, column: 37, scope: !2071)
!2122 = !DILocation(line: 807, column: 33, scope: !2071)
!2123 = !DILocation(line: 808, column: 11, scope: !2071)
!2124 = !DILocation(line: 808, column: 7, scope: !2071)
!2125 = !DILocation(line: 810, column: 18, scope: !2071)
!2126 = !DILocation(line: 810, column: 27, scope: !2071)
!2127 = !DILocation(line: 810, column: 24, scope: !2071)
!2128 = !DILocation(line: 810, column: 7, scope: !2071)
!2129 = !DILocation(line: 811, column: 69, scope: !2071)
!2130 = !DILocation(line: 812, column: 53, scope: !2071)
!2131 = !DILocation(line: 813, column: 49, scope: !2071)
!2132 = !DILocation(line: 814, column: 49, scope: !2071)
!2133 = !DILocation(line: 811, column: 20, scope: !2071)
!2134 = !DILocation(line: 814, column: 62, scope: !2071)
!2135 = !DILocation(line: 811, column: 10, scope: !2071)
!2136 = !DILocation(line: 220, column: 20, scope: !2103, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 815, column: 15, scope: !2071)
!2138 = !DILocation(line: 222, column: 10, scope: !2103, inlinedAt: !2137)
!2139 = !DILocation(line: 815, column: 9, scope: !2071)
!2140 = !DILocation(line: 816, column: 60, scope: !2071)
!2141 = !DILocation(line: 818, column: 32, scope: !2071)
!2142 = !DILocation(line: 818, column: 47, scope: !2071)
!2143 = !DILocation(line: 816, column: 3, scope: !2071)
!2144 = !DILocation(line: 819, column: 9, scope: !2071)
!2145 = !DILocation(line: 820, column: 7, scope: !2071)
!2146 = !DILocation(line: 821, column: 11, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2071, file: !223, line: 820, column: 7)
!2148 = !DILocation(line: 821, column: 5, scope: !2147)
!2149 = !DILocation(line: 822, column: 3, scope: !2071)
!2150 = distinct !DISubprogram(name: "quotearg_free", scope: !223, file: !223, line: 840, type: !706, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2151)
!2151 = !{!2152, !2153}
!2152 = !DILocalVariable(name: "sv", scope: !2150, file: !223, line: 842, type: !250)
!2153 = !DILocalVariable(name: "i", scope: !2150, file: !223, line: 843, type: !47)
!2154 = !DILocation(line: 842, column: 24, scope: !2150)
!2155 = !DILocation(line: 842, column: 19, scope: !2150)
!2156 = !DILocation(line: 843, column: 7, scope: !2150)
!2157 = !DILocation(line: 844, column: 19, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !223, line: 844, column: 3)
!2159 = distinct !DILexicalBlock(scope: !2150, file: !223, line: 844, column: 3)
!2160 = !DILocation(line: 844, column: 17, scope: !2158)
!2161 = !DILocation(line: 844, column: 3, scope: !2159)
!2162 = !DILocation(line: 845, column: 17, scope: !2158)
!2163 = !{!2164, !698, i64 8}
!2164 = !{!"slotvec", !849, i64 0, !698, i64 8}
!2165 = !DILocation(line: 845, column: 5, scope: !2158)
!2166 = !DILocation(line: 844, column: 28, scope: !2158)
!2167 = distinct !{!2167, !2161, !2168}
!2168 = !DILocation(line: 845, column: 20, scope: !2159)
!2169 = !DILocation(line: 846, column: 13, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2150, file: !223, line: 846, column: 7)
!2171 = !DILocation(line: 846, column: 17, scope: !2170)
!2172 = !DILocation(line: 846, column: 7, scope: !2150)
!2173 = !DILocation(line: 848, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2170, file: !223, line: 847, column: 5)
!2175 = !DILocation(line: 849, column: 21, scope: !2174)
!2176 = !{!2164, !849, i64 0}
!2177 = !DILocation(line: 850, column: 20, scope: !2174)
!2178 = !DILocation(line: 851, column: 5, scope: !2174)
!2179 = !DILocation(line: 852, column: 10, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2150, file: !223, line: 852, column: 7)
!2181 = !DILocation(line: 852, column: 7, scope: !2150)
!2182 = !DILocation(line: 854, column: 13, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2180, file: !223, line: 853, column: 5)
!2184 = !DILocation(line: 854, column: 7, scope: !2183)
!2185 = !DILocation(line: 855, column: 15, scope: !2183)
!2186 = !DILocation(line: 856, column: 5, scope: !2183)
!2187 = !DILocation(line: 857, column: 10, scope: !2150)
!2188 = !DILocation(line: 858, column: 1, scope: !2150)
!2189 = distinct !DISubprogram(name: "quotearg_n", scope: !223, file: !223, line: 922, type: !2190, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2192)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!44, !47, !68}
!2192 = !{!2193, !2194}
!2193 = !DILocalVariable(name: "n", arg: 1, scope: !2189, file: !223, line: 922, type: !47)
!2194 = !DILocalVariable(name: "arg", arg: 2, scope: !2189, file: !223, line: 922, type: !68)
!2195 = !DILocation(line: 922, column: 17, scope: !2189)
!2196 = !DILocation(line: 922, column: 32, scope: !2189)
!2197 = !DILocation(line: 924, column: 10, scope: !2189)
!2198 = !DILocation(line: 924, column: 3, scope: !2189)
!2199 = distinct !DISubprogram(name: "quotearg_n_options", scope: !223, file: !223, line: 869, type: !2200, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2202)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!44, !47, !68, !49, !1187}
!2202 = !{!2203, !2204, !2205, !2206, !2207, !2208, !2209, !2212, !2214, !2215, !2216}
!2203 = !DILocalVariable(name: "n", arg: 1, scope: !2199, file: !223, line: 869, type: !47)
!2204 = !DILocalVariable(name: "arg", arg: 2, scope: !2199, file: !223, line: 869, type: !68)
!2205 = !DILocalVariable(name: "argsize", arg: 3, scope: !2199, file: !223, line: 869, type: !49)
!2206 = !DILocalVariable(name: "options", arg: 4, scope: !2199, file: !223, line: 870, type: !1187)
!2207 = !DILocalVariable(name: "e", scope: !2199, file: !223, line: 872, type: !47)
!2208 = !DILocalVariable(name: "sv", scope: !2199, file: !223, line: 874, type: !250)
!2209 = !DILocalVariable(name: "preallocated", scope: !2210, file: !223, line: 881, type: !57)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !223, line: 880, column: 5)
!2211 = distinct !DILexicalBlock(scope: !2199, file: !223, line: 879, column: 7)
!2212 = !DILocalVariable(name: "size", scope: !2213, file: !223, line: 894, type: !49)
!2213 = distinct !DILexicalBlock(scope: !2199, file: !223, line: 893, column: 3)
!2214 = !DILocalVariable(name: "val", scope: !2213, file: !223, line: 895, type: !44)
!2215 = !DILocalVariable(name: "flags", scope: !2213, file: !223, line: 897, type: !47)
!2216 = !DILocalVariable(name: "qsize", scope: !2213, file: !223, line: 898, type: !49)
!2217 = !DILocation(line: 869, column: 25, scope: !2199)
!2218 = !DILocation(line: 869, column: 40, scope: !2199)
!2219 = !DILocation(line: 869, column: 52, scope: !2199)
!2220 = !DILocation(line: 870, column: 51, scope: !2199)
!2221 = !DILocation(line: 872, column: 11, scope: !2199)
!2222 = !DILocation(line: 872, column: 7, scope: !2199)
!2223 = !DILocation(line: 874, column: 24, scope: !2199)
!2224 = !DILocation(line: 874, column: 19, scope: !2199)
!2225 = !DILocation(line: 876, column: 9, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2199, file: !223, line: 876, column: 7)
!2227 = !DILocation(line: 876, column: 7, scope: !2199)
!2228 = !DILocation(line: 877, column: 5, scope: !2226)
!2229 = !DILocation(line: 879, column: 7, scope: !2211)
!2230 = !DILocation(line: 879, column: 14, scope: !2211)
!2231 = !DILocation(line: 879, column: 7, scope: !2199)
!2232 = !DILocation(line: 881, column: 31, scope: !2210)
!2233 = !DILocation(line: 883, column: 67, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2210, file: !223, line: 883, column: 11)
!2235 = !DILocation(line: 883, column: 11, scope: !2210)
!2236 = !DILocation(line: 884, column: 9, scope: !2234)
!2237 = !DILocation(line: 886, column: 32, scope: !2210)
!2238 = !DILocation(line: 886, column: 61, scope: !2210)
!2239 = !DILocation(line: 886, column: 58, scope: !2210)
!2240 = !DILocation(line: 886, column: 66, scope: !2210)
!2241 = !DILocation(line: 886, column: 22, scope: !2210)
!2242 = !DILocation(line: 886, column: 15, scope: !2210)
!2243 = !DILocation(line: 887, column: 11, scope: !2210)
!2244 = !DILocation(line: 888, column: 15, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2210, file: !223, line: 887, column: 11)
!2246 = !{i64 0, i64 8, !858, i64 8, i64 8, !697}
!2247 = !DILocation(line: 888, column: 9, scope: !2245)
!2248 = !DILocation(line: 889, column: 20, scope: !2210)
!2249 = !DILocation(line: 889, column: 18, scope: !2210)
!2250 = !DILocation(line: 889, column: 7, scope: !2210)
!2251 = !DILocation(line: 889, column: 38, scope: !2210)
!2252 = !DILocation(line: 889, column: 31, scope: !2210)
!2253 = !DILocation(line: 889, column: 48, scope: !2210)
!2254 = !DILocation(line: 890, column: 14, scope: !2210)
!2255 = !DILocation(line: 891, column: 5, scope: !2210)
!2256 = !DILocation(line: 894, column: 19, scope: !2213)
!2257 = !DILocation(line: 894, column: 25, scope: !2213)
!2258 = !DILocation(line: 894, column: 12, scope: !2213)
!2259 = !DILocation(line: 895, column: 23, scope: !2213)
!2260 = !DILocation(line: 895, column: 11, scope: !2213)
!2261 = !DILocation(line: 897, column: 26, scope: !2213)
!2262 = !DILocation(line: 897, column: 32, scope: !2213)
!2263 = !DILocation(line: 897, column: 9, scope: !2213)
!2264 = !DILocation(line: 899, column: 55, scope: !2213)
!2265 = !DILocation(line: 900, column: 46, scope: !2213)
!2266 = !DILocation(line: 901, column: 55, scope: !2213)
!2267 = !DILocation(line: 902, column: 55, scope: !2213)
!2268 = !DILocation(line: 898, column: 20, scope: !2213)
!2269 = !DILocation(line: 898, column: 12, scope: !2213)
!2270 = !DILocation(line: 904, column: 14, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2213, file: !223, line: 904, column: 9)
!2272 = !DILocation(line: 904, column: 9, scope: !2213)
!2273 = !DILocation(line: 906, column: 35, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2271, file: !223, line: 905, column: 7)
!2275 = !DILocation(line: 906, column: 20, scope: !2274)
!2276 = !DILocation(line: 907, column: 17, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2274, file: !223, line: 907, column: 13)
!2278 = !DILocation(line: 907, column: 13, scope: !2274)
!2279 = !DILocation(line: 908, column: 11, scope: !2277)
!2280 = !DILocation(line: 220, column: 20, scope: !2103, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 909, column: 27, scope: !2274)
!2282 = !DILocation(line: 222, column: 10, scope: !2103, inlinedAt: !2281)
!2283 = !DILocation(line: 909, column: 19, scope: !2274)
!2284 = !DILocation(line: 910, column: 69, scope: !2274)
!2285 = !DILocation(line: 912, column: 44, scope: !2274)
!2286 = !DILocation(line: 913, column: 44, scope: !2274)
!2287 = !DILocation(line: 910, column: 9, scope: !2274)
!2288 = !DILocation(line: 914, column: 7, scope: !2274)
!2289 = !DILocation(line: 916, column: 11, scope: !2213)
!2290 = !DILocation(line: 917, column: 5, scope: !2213)
!2291 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !223, file: !223, line: 928, type: !2292, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2294)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!44, !47, !68, !49}
!2294 = !{!2295, !2296, !2297}
!2295 = !DILocalVariable(name: "n", arg: 1, scope: !2291, file: !223, line: 928, type: !47)
!2296 = !DILocalVariable(name: "arg", arg: 2, scope: !2291, file: !223, line: 928, type: !68)
!2297 = !DILocalVariable(name: "argsize", arg: 3, scope: !2291, file: !223, line: 928, type: !49)
!2298 = !DILocation(line: 928, column: 21, scope: !2291)
!2299 = !DILocation(line: 928, column: 36, scope: !2291)
!2300 = !DILocation(line: 928, column: 48, scope: !2291)
!2301 = !DILocation(line: 930, column: 10, scope: !2291)
!2302 = !DILocation(line: 930, column: 3, scope: !2291)
!2303 = distinct !DISubprogram(name: "quotearg", scope: !223, file: !223, line: 934, type: !2304, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2306)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!44, !68}
!2306 = !{!2307}
!2307 = !DILocalVariable(name: "arg", arg: 1, scope: !2303, file: !223, line: 934, type: !68)
!2308 = !DILocation(line: 934, column: 23, scope: !2303)
!2309 = !DILocation(line: 922, column: 17, scope: !2189, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 936, column: 10, scope: !2303)
!2311 = !DILocation(line: 922, column: 32, scope: !2189, inlinedAt: !2310)
!2312 = !DILocation(line: 924, column: 10, scope: !2189, inlinedAt: !2310)
!2313 = !DILocation(line: 936, column: 3, scope: !2303)
!2314 = distinct !DISubprogram(name: "quotearg_mem", scope: !223, file: !223, line: 940, type: !2315, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!44, !68, !49}
!2317 = !{!2318, !2319}
!2318 = !DILocalVariable(name: "arg", arg: 1, scope: !2314, file: !223, line: 940, type: !68)
!2319 = !DILocalVariable(name: "argsize", arg: 2, scope: !2314, file: !223, line: 940, type: !49)
!2320 = !DILocation(line: 940, column: 27, scope: !2314)
!2321 = !DILocation(line: 940, column: 39, scope: !2314)
!2322 = !DILocation(line: 928, column: 21, scope: !2291, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 942, column: 10, scope: !2314)
!2324 = !DILocation(line: 928, column: 36, scope: !2291, inlinedAt: !2323)
!2325 = !DILocation(line: 928, column: 48, scope: !2291, inlinedAt: !2323)
!2326 = !DILocation(line: 930, column: 10, scope: !2291, inlinedAt: !2323)
!2327 = !DILocation(line: 942, column: 3, scope: !2314)
!2328 = distinct !DISubprogram(name: "quotearg_n_style", scope: !223, file: !223, line: 946, type: !2329, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2331)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!44, !47, !5, !68}
!2331 = !{!2332, !2333, !2334, !2335}
!2332 = !DILocalVariable(name: "n", arg: 1, scope: !2328, file: !223, line: 946, type: !47)
!2333 = !DILocalVariable(name: "s", arg: 2, scope: !2328, file: !223, line: 946, type: !5)
!2334 = !DILocalVariable(name: "arg", arg: 3, scope: !2328, file: !223, line: 946, type: !68)
!2335 = !DILocalVariable(name: "o", scope: !2328, file: !223, line: 948, type: !1188)
!2336 = !DILocalVariable(name: "o", scope: !2337, file: !223, line: 187, type: !230)
!2337 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !223, file: !223, line: 185, type: !2338, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!230, !5}
!2340 = !{!2341, !2336}
!2341 = !DILocalVariable(name: "style", arg: 1, scope: !2337, file: !223, line: 185, type: !5)
!2342 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2343 = !DILocation(line: 187, column: 26, scope: !2337, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 948, column: 36, scope: !2328)
!2345 = !DILocation(line: 946, column: 23, scope: !2328)
!2346 = !DILocation(line: 946, column: 45, scope: !2328)
!2347 = !DILocation(line: 946, column: 60, scope: !2328)
!2348 = !DILocation(line: 948, column: 3, scope: !2328)
!2349 = !DILocation(line: 948, column: 32, scope: !2328)
!2350 = !DILocation(line: 185, column: 48, scope: !2337, inlinedAt: !2344)
!2351 = !DILocation(line: 187, column: 3, scope: !2337, inlinedAt: !2344)
!2352 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2353 = !DILocation(line: 188, column: 13, scope: !2354, inlinedAt: !2344)
!2354 = distinct !DILexicalBlock(scope: !2337, file: !223, line: 188, column: 7)
!2355 = !DILocation(line: 188, column: 7, scope: !2337, inlinedAt: !2344)
!2356 = !DILocation(line: 189, column: 5, scope: !2354, inlinedAt: !2344)
!2357 = !{!2358}
!2358 = distinct !{!2358, !2359, !"quoting_options_from_style: argument 0"}
!2359 = distinct !{!2359, !"quoting_options_from_style"}
!2360 = !DILocation(line: 191, column: 10, scope: !2337, inlinedAt: !2344)
!2361 = !DILocation(line: 192, column: 1, scope: !2337, inlinedAt: !2344)
!2362 = !DILocation(line: 949, column: 10, scope: !2328)
!2363 = !DILocation(line: 950, column: 1, scope: !2328)
!2364 = !DILocation(line: 949, column: 3, scope: !2328)
!2365 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !223, file: !223, line: 953, type: !2366, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2368)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!44, !47, !5, !68, !49}
!2368 = !{!2369, !2370, !2371, !2372, !2373}
!2369 = !DILocalVariable(name: "n", arg: 1, scope: !2365, file: !223, line: 953, type: !47)
!2370 = !DILocalVariable(name: "s", arg: 2, scope: !2365, file: !223, line: 953, type: !5)
!2371 = !DILocalVariable(name: "arg", arg: 3, scope: !2365, file: !223, line: 954, type: !68)
!2372 = !DILocalVariable(name: "argsize", arg: 4, scope: !2365, file: !223, line: 954, type: !49)
!2373 = !DILocalVariable(name: "o", scope: !2365, file: !223, line: 956, type: !1188)
!2374 = !DILocation(line: 187, column: 26, scope: !2337, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 956, column: 36, scope: !2365)
!2376 = !DILocation(line: 953, column: 27, scope: !2365)
!2377 = !DILocation(line: 953, column: 49, scope: !2365)
!2378 = !DILocation(line: 954, column: 35, scope: !2365)
!2379 = !DILocation(line: 954, column: 47, scope: !2365)
!2380 = !DILocation(line: 956, column: 3, scope: !2365)
!2381 = !DILocation(line: 956, column: 32, scope: !2365)
!2382 = !DILocation(line: 185, column: 48, scope: !2337, inlinedAt: !2375)
!2383 = !DILocation(line: 187, column: 3, scope: !2337, inlinedAt: !2375)
!2384 = !DILocation(line: 188, column: 13, scope: !2354, inlinedAt: !2375)
!2385 = !DILocation(line: 188, column: 7, scope: !2337, inlinedAt: !2375)
!2386 = !DILocation(line: 189, column: 5, scope: !2354, inlinedAt: !2375)
!2387 = !{!2388}
!2388 = distinct !{!2388, !2389, !"quoting_options_from_style: argument 0"}
!2389 = distinct !{!2389, !"quoting_options_from_style"}
!2390 = !DILocation(line: 191, column: 10, scope: !2337, inlinedAt: !2375)
!2391 = !DILocation(line: 192, column: 1, scope: !2337, inlinedAt: !2375)
!2392 = !DILocation(line: 957, column: 10, scope: !2365)
!2393 = !DILocation(line: 958, column: 1, scope: !2365)
!2394 = !DILocation(line: 957, column: 3, scope: !2365)
!2395 = distinct !DISubprogram(name: "quotearg_style", scope: !223, file: !223, line: 961, type: !2396, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2398)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!44, !5, !68}
!2398 = !{!2399, !2400}
!2399 = !DILocalVariable(name: "s", arg: 1, scope: !2395, file: !223, line: 961, type: !5)
!2400 = !DILocalVariable(name: "arg", arg: 2, scope: !2395, file: !223, line: 961, type: !68)
!2401 = !DILocation(line: 187, column: 26, scope: !2337, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 948, column: 36, scope: !2328, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 963, column: 10, scope: !2395)
!2404 = !DILocation(line: 961, column: 36, scope: !2395)
!2405 = !DILocation(line: 961, column: 51, scope: !2395)
!2406 = !DILocation(line: 946, column: 23, scope: !2328, inlinedAt: !2403)
!2407 = !DILocation(line: 946, column: 45, scope: !2328, inlinedAt: !2403)
!2408 = !DILocation(line: 946, column: 60, scope: !2328, inlinedAt: !2403)
!2409 = !DILocation(line: 948, column: 3, scope: !2328, inlinedAt: !2403)
!2410 = !DILocation(line: 948, column: 32, scope: !2328, inlinedAt: !2403)
!2411 = !DILocation(line: 185, column: 48, scope: !2337, inlinedAt: !2402)
!2412 = !DILocation(line: 187, column: 3, scope: !2337, inlinedAt: !2402)
!2413 = !DILocation(line: 188, column: 13, scope: !2354, inlinedAt: !2402)
!2414 = !DILocation(line: 188, column: 7, scope: !2337, inlinedAt: !2402)
!2415 = !DILocation(line: 189, column: 5, scope: !2354, inlinedAt: !2402)
!2416 = !{!2417}
!2417 = distinct !{!2417, !2418, !"quoting_options_from_style: argument 0"}
!2418 = distinct !{!2418, !"quoting_options_from_style"}
!2419 = !DILocation(line: 191, column: 10, scope: !2337, inlinedAt: !2402)
!2420 = !DILocation(line: 192, column: 1, scope: !2337, inlinedAt: !2402)
!2421 = !DILocation(line: 949, column: 10, scope: !2328, inlinedAt: !2403)
!2422 = !DILocation(line: 950, column: 1, scope: !2328, inlinedAt: !2403)
!2423 = !DILocation(line: 963, column: 3, scope: !2395)
!2424 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !223, file: !223, line: 967, type: !2425, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!44, !5, !68, !49}
!2427 = !{!2428, !2429, !2430}
!2428 = !DILocalVariable(name: "s", arg: 1, scope: !2424, file: !223, line: 967, type: !5)
!2429 = !DILocalVariable(name: "arg", arg: 2, scope: !2424, file: !223, line: 967, type: !68)
!2430 = !DILocalVariable(name: "argsize", arg: 3, scope: !2424, file: !223, line: 967, type: !49)
!2431 = !DILocation(line: 187, column: 26, scope: !2337, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 956, column: 36, scope: !2365, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 969, column: 10, scope: !2424)
!2434 = !DILocation(line: 967, column: 40, scope: !2424)
!2435 = !DILocation(line: 967, column: 55, scope: !2424)
!2436 = !DILocation(line: 967, column: 67, scope: !2424)
!2437 = !DILocation(line: 953, column: 27, scope: !2365, inlinedAt: !2433)
!2438 = !DILocation(line: 953, column: 49, scope: !2365, inlinedAt: !2433)
!2439 = !DILocation(line: 954, column: 35, scope: !2365, inlinedAt: !2433)
!2440 = !DILocation(line: 954, column: 47, scope: !2365, inlinedAt: !2433)
!2441 = !DILocation(line: 956, column: 3, scope: !2365, inlinedAt: !2433)
!2442 = !DILocation(line: 956, column: 32, scope: !2365, inlinedAt: !2433)
!2443 = !DILocation(line: 185, column: 48, scope: !2337, inlinedAt: !2432)
!2444 = !DILocation(line: 187, column: 3, scope: !2337, inlinedAt: !2432)
!2445 = !DILocation(line: 188, column: 13, scope: !2354, inlinedAt: !2432)
!2446 = !DILocation(line: 188, column: 7, scope: !2337, inlinedAt: !2432)
!2447 = !DILocation(line: 189, column: 5, scope: !2354, inlinedAt: !2432)
!2448 = !{!2449}
!2449 = distinct !{!2449, !2450, !"quoting_options_from_style: argument 0"}
!2450 = distinct !{!2450, !"quoting_options_from_style"}
!2451 = !DILocation(line: 191, column: 10, scope: !2337, inlinedAt: !2432)
!2452 = !DILocation(line: 192, column: 1, scope: !2337, inlinedAt: !2432)
!2453 = !DILocation(line: 957, column: 10, scope: !2365, inlinedAt: !2433)
!2454 = !DILocation(line: 958, column: 1, scope: !2365, inlinedAt: !2433)
!2455 = !DILocation(line: 969, column: 3, scope: !2424)
!2456 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !223, file: !223, line: 973, type: !2457, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2459)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!44, !68, !49, !45}
!2459 = !{!2460, !2461, !2462, !2463}
!2460 = !DILocalVariable(name: "arg", arg: 1, scope: !2456, file: !223, line: 973, type: !68)
!2461 = !DILocalVariable(name: "argsize", arg: 2, scope: !2456, file: !223, line: 973, type: !49)
!2462 = !DILocalVariable(name: "ch", arg: 3, scope: !2456, file: !223, line: 973, type: !45)
!2463 = !DILocalVariable(name: "options", scope: !2456, file: !223, line: 975, type: !230)
!2464 = !DILocation(line: 973, column: 32, scope: !2456)
!2465 = !DILocation(line: 973, column: 44, scope: !2456)
!2466 = !DILocation(line: 973, column: 58, scope: !2456)
!2467 = !DILocation(line: 975, column: 3, scope: !2456)
!2468 = !DILocation(line: 976, column: 13, scope: !2456)
!2469 = !{i64 0, i64 4, !775, i64 4, i64 4, !787, i64 8, i64 32, !775, i64 40, i64 8, !697, i64 48, i64 8, !697}
!2470 = !DILocation(line: 975, column: 26, scope: !2456)
!2471 = !DILocation(line: 144, column: 43, scope: !1209, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 977, column: 3, scope: !2456)
!2473 = !DILocation(line: 144, column: 51, scope: !1209, inlinedAt: !2472)
!2474 = !DILocation(line: 144, column: 58, scope: !1209, inlinedAt: !2472)
!2475 = !DILocation(line: 146, column: 17, scope: !1209, inlinedAt: !2472)
!2476 = !DILocation(line: 148, column: 62, scope: !1209, inlinedAt: !2472)
!2477 = !DILocation(line: 148, column: 57, scope: !1209, inlinedAt: !2472)
!2478 = !DILocation(line: 147, column: 17, scope: !1209, inlinedAt: !2472)
!2479 = !DILocation(line: 149, column: 18, scope: !1209, inlinedAt: !2472)
!2480 = !DILocation(line: 149, column: 15, scope: !1209, inlinedAt: !2472)
!2481 = !DILocation(line: 149, column: 7, scope: !1209, inlinedAt: !2472)
!2482 = !DILocation(line: 150, column: 12, scope: !1209, inlinedAt: !2472)
!2483 = !DILocation(line: 150, column: 15, scope: !1209, inlinedAt: !2472)
!2484 = !DILocation(line: 150, column: 25, scope: !1209, inlinedAt: !2472)
!2485 = !DILocation(line: 150, column: 7, scope: !1209, inlinedAt: !2472)
!2486 = !DILocation(line: 151, column: 18, scope: !1209, inlinedAt: !2472)
!2487 = !DILocation(line: 151, column: 23, scope: !1209, inlinedAt: !2472)
!2488 = !DILocation(line: 151, column: 6, scope: !1209, inlinedAt: !2472)
!2489 = !DILocation(line: 978, column: 10, scope: !2456)
!2490 = !DILocation(line: 979, column: 1, scope: !2456)
!2491 = !DILocation(line: 978, column: 3, scope: !2456)
!2492 = distinct !DISubprogram(name: "quotearg_char", scope: !223, file: !223, line: 982, type: !2493, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2495)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!44, !68, !45}
!2495 = !{!2496, !2497}
!2496 = !DILocalVariable(name: "arg", arg: 1, scope: !2492, file: !223, line: 982, type: !68)
!2497 = !DILocalVariable(name: "ch", arg: 2, scope: !2492, file: !223, line: 982, type: !45)
!2498 = !DILocation(line: 982, column: 28, scope: !2492)
!2499 = !DILocation(line: 982, column: 38, scope: !2492)
!2500 = !DILocation(line: 973, column: 32, scope: !2456, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 984, column: 10, scope: !2492)
!2502 = !DILocation(line: 973, column: 44, scope: !2456, inlinedAt: !2501)
!2503 = !DILocation(line: 973, column: 58, scope: !2456, inlinedAt: !2501)
!2504 = !DILocation(line: 975, column: 3, scope: !2456, inlinedAt: !2501)
!2505 = !DILocation(line: 976, column: 13, scope: !2456, inlinedAt: !2501)
!2506 = !DILocation(line: 975, column: 26, scope: !2456, inlinedAt: !2501)
!2507 = !DILocation(line: 144, column: 43, scope: !1209, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 977, column: 3, scope: !2456, inlinedAt: !2501)
!2509 = !DILocation(line: 144, column: 51, scope: !1209, inlinedAt: !2508)
!2510 = !DILocation(line: 144, column: 58, scope: !1209, inlinedAt: !2508)
!2511 = !DILocation(line: 146, column: 17, scope: !1209, inlinedAt: !2508)
!2512 = !DILocation(line: 148, column: 62, scope: !1209, inlinedAt: !2508)
!2513 = !DILocation(line: 148, column: 57, scope: !1209, inlinedAt: !2508)
!2514 = !DILocation(line: 147, column: 17, scope: !1209, inlinedAt: !2508)
!2515 = !DILocation(line: 149, column: 18, scope: !1209, inlinedAt: !2508)
!2516 = !DILocation(line: 149, column: 15, scope: !1209, inlinedAt: !2508)
!2517 = !DILocation(line: 149, column: 7, scope: !1209, inlinedAt: !2508)
!2518 = !DILocation(line: 150, column: 12, scope: !1209, inlinedAt: !2508)
!2519 = !DILocation(line: 150, column: 15, scope: !1209, inlinedAt: !2508)
!2520 = !DILocation(line: 150, column: 25, scope: !1209, inlinedAt: !2508)
!2521 = !DILocation(line: 150, column: 7, scope: !1209, inlinedAt: !2508)
!2522 = !DILocation(line: 151, column: 18, scope: !1209, inlinedAt: !2508)
!2523 = !DILocation(line: 151, column: 23, scope: !1209, inlinedAt: !2508)
!2524 = !DILocation(line: 151, column: 6, scope: !1209, inlinedAt: !2508)
!2525 = !DILocation(line: 978, column: 10, scope: !2456, inlinedAt: !2501)
!2526 = !DILocation(line: 979, column: 1, scope: !2456, inlinedAt: !2501)
!2527 = !DILocation(line: 984, column: 3, scope: !2492)
!2528 = distinct !DISubprogram(name: "quotearg_colon", scope: !223, file: !223, line: 988, type: !2304, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2529)
!2529 = !{!2530}
!2530 = !DILocalVariable(name: "arg", arg: 1, scope: !2528, file: !223, line: 988, type: !68)
!2531 = !DILocation(line: 988, column: 29, scope: !2528)
!2532 = !DILocation(line: 982, column: 28, scope: !2492, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 990, column: 10, scope: !2528)
!2534 = !DILocation(line: 982, column: 38, scope: !2492, inlinedAt: !2533)
!2535 = !DILocation(line: 973, column: 32, scope: !2456, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 984, column: 10, scope: !2492, inlinedAt: !2533)
!2537 = !DILocation(line: 973, column: 44, scope: !2456, inlinedAt: !2536)
!2538 = !DILocation(line: 973, column: 58, scope: !2456, inlinedAt: !2536)
!2539 = !DILocation(line: 975, column: 3, scope: !2456, inlinedAt: !2536)
!2540 = !DILocation(line: 976, column: 13, scope: !2456, inlinedAt: !2536)
!2541 = !DILocation(line: 975, column: 26, scope: !2456, inlinedAt: !2536)
!2542 = !DILocation(line: 144, column: 43, scope: !1209, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 977, column: 3, scope: !2456, inlinedAt: !2536)
!2544 = !DILocation(line: 144, column: 51, scope: !1209, inlinedAt: !2543)
!2545 = !DILocation(line: 144, column: 58, scope: !1209, inlinedAt: !2543)
!2546 = !DILocation(line: 146, column: 17, scope: !1209, inlinedAt: !2543)
!2547 = !DILocation(line: 148, column: 57, scope: !1209, inlinedAt: !2543)
!2548 = !DILocation(line: 147, column: 17, scope: !1209, inlinedAt: !2543)
!2549 = !DILocation(line: 149, column: 7, scope: !1209, inlinedAt: !2543)
!2550 = !DILocation(line: 150, column: 12, scope: !1209, inlinedAt: !2543)
!2551 = !DILocation(line: 151, column: 6, scope: !1209, inlinedAt: !2543)
!2552 = !DILocation(line: 978, column: 10, scope: !2456, inlinedAt: !2536)
!2553 = !DILocation(line: 979, column: 1, scope: !2456, inlinedAt: !2536)
!2554 = !DILocation(line: 990, column: 3, scope: !2528)
!2555 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !223, file: !223, line: 994, type: !2315, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2556)
!2556 = !{!2557, !2558}
!2557 = !DILocalVariable(name: "arg", arg: 1, scope: !2555, file: !223, line: 994, type: !68)
!2558 = !DILocalVariable(name: "argsize", arg: 2, scope: !2555, file: !223, line: 994, type: !49)
!2559 = !DILocation(line: 994, column: 33, scope: !2555)
!2560 = !DILocation(line: 994, column: 45, scope: !2555)
!2561 = !DILocation(line: 973, column: 32, scope: !2456, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 996, column: 10, scope: !2555)
!2563 = !DILocation(line: 973, column: 44, scope: !2456, inlinedAt: !2562)
!2564 = !DILocation(line: 973, column: 58, scope: !2456, inlinedAt: !2562)
!2565 = !DILocation(line: 975, column: 3, scope: !2456, inlinedAt: !2562)
!2566 = !DILocation(line: 976, column: 13, scope: !2456, inlinedAt: !2562)
!2567 = !DILocation(line: 975, column: 26, scope: !2456, inlinedAt: !2562)
!2568 = !DILocation(line: 144, column: 43, scope: !1209, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 977, column: 3, scope: !2456, inlinedAt: !2562)
!2570 = !DILocation(line: 144, column: 51, scope: !1209, inlinedAt: !2569)
!2571 = !DILocation(line: 144, column: 58, scope: !1209, inlinedAt: !2569)
!2572 = !DILocation(line: 146, column: 17, scope: !1209, inlinedAt: !2569)
!2573 = !DILocation(line: 148, column: 57, scope: !1209, inlinedAt: !2569)
!2574 = !DILocation(line: 147, column: 17, scope: !1209, inlinedAt: !2569)
!2575 = !DILocation(line: 149, column: 7, scope: !1209, inlinedAt: !2569)
!2576 = !DILocation(line: 150, column: 12, scope: !1209, inlinedAt: !2569)
!2577 = !DILocation(line: 151, column: 6, scope: !1209, inlinedAt: !2569)
!2578 = !DILocation(line: 978, column: 10, scope: !2456, inlinedAt: !2562)
!2579 = !DILocation(line: 979, column: 1, scope: !2456, inlinedAt: !2562)
!2580 = !DILocation(line: 996, column: 3, scope: !2555)
!2581 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !223, file: !223, line: 1000, type: !2329, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2582)
!2582 = !{!2583, !2584, !2585, !2586}
!2583 = !DILocalVariable(name: "n", arg: 1, scope: !2581, file: !223, line: 1000, type: !47)
!2584 = !DILocalVariable(name: "s", arg: 2, scope: !2581, file: !223, line: 1000, type: !5)
!2585 = !DILocalVariable(name: "arg", arg: 3, scope: !2581, file: !223, line: 1000, type: !68)
!2586 = !DILocalVariable(name: "options", scope: !2581, file: !223, line: 1002, type: !230)
!2587 = !DILocation(line: 187, column: 26, scope: !2337, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 1003, column: 13, scope: !2581)
!2589 = !DILocation(line: 1000, column: 29, scope: !2581)
!2590 = !DILocation(line: 1000, column: 51, scope: !2581)
!2591 = !DILocation(line: 1000, column: 66, scope: !2581)
!2592 = !DILocation(line: 1002, column: 3, scope: !2581)
!2593 = !DILocation(line: 185, column: 48, scope: !2337, inlinedAt: !2588)
!2594 = !DILocation(line: 187, column: 3, scope: !2337, inlinedAt: !2588)
!2595 = !DILocation(line: 188, column: 13, scope: !2354, inlinedAt: !2588)
!2596 = !DILocation(line: 188, column: 7, scope: !2337, inlinedAt: !2588)
!2597 = !DILocation(line: 189, column: 5, scope: !2354, inlinedAt: !2588)
!2598 = !{!2599}
!2599 = distinct !{!2599, !2600, !"quoting_options_from_style: argument 0"}
!2600 = distinct !{!2600, !"quoting_options_from_style"}
!2601 = !DILocation(line: 191, column: 10, scope: !2337, inlinedAt: !2588)
!2602 = !DILocation(line: 192, column: 1, scope: !2337, inlinedAt: !2588)
!2603 = !DILocation(line: 1003, column: 13, scope: !2581)
!2604 = !DILocation(line: 1002, column: 26, scope: !2581)
!2605 = !DILocation(line: 144, column: 43, scope: !1209, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 1004, column: 3, scope: !2581)
!2607 = !DILocation(line: 144, column: 51, scope: !1209, inlinedAt: !2606)
!2608 = !DILocation(line: 144, column: 58, scope: !1209, inlinedAt: !2606)
!2609 = !DILocation(line: 146, column: 17, scope: !1209, inlinedAt: !2606)
!2610 = !DILocation(line: 148, column: 57, scope: !1209, inlinedAt: !2606)
!2611 = !DILocation(line: 147, column: 17, scope: !1209, inlinedAt: !2606)
!2612 = !DILocation(line: 149, column: 7, scope: !1209, inlinedAt: !2606)
!2613 = !DILocation(line: 150, column: 12, scope: !1209, inlinedAt: !2606)
!2614 = !DILocation(line: 151, column: 6, scope: !1209, inlinedAt: !2606)
!2615 = !DILocation(line: 1005, column: 10, scope: !2581)
!2616 = !DILocation(line: 1006, column: 1, scope: !2581)
!2617 = !DILocation(line: 1005, column: 3, scope: !2581)
!2618 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !223, file: !223, line: 1009, type: !2619, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!44, !47, !68, !68, !68}
!2621 = !{!2622, !2623, !2624, !2625}
!2622 = !DILocalVariable(name: "n", arg: 1, scope: !2618, file: !223, line: 1009, type: !47)
!2623 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2618, file: !223, line: 1009, type: !68)
!2624 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2618, file: !223, line: 1010, type: !68)
!2625 = !DILocalVariable(name: "arg", arg: 4, scope: !2618, file: !223, line: 1010, type: !68)
!2626 = !DILocation(line: 1009, column: 24, scope: !2618)
!2627 = !DILocation(line: 1009, column: 39, scope: !2618)
!2628 = !DILocation(line: 1010, column: 32, scope: !2618)
!2629 = !DILocation(line: 1010, column: 57, scope: !2618)
!2630 = !DILocalVariable(name: "n", arg: 1, scope: !2631, file: !223, line: 1017, type: !47)
!2631 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !223, file: !223, line: 1017, type: !2632, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!44, !47, !68, !68, !68, !49}
!2634 = !{!2630, !2635, !2636, !2637, !2638, !2639}
!2635 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2631, file: !223, line: 1017, type: !68)
!2636 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2631, file: !223, line: 1018, type: !68)
!2637 = !DILocalVariable(name: "arg", arg: 4, scope: !2631, file: !223, line: 1019, type: !68)
!2638 = !DILocalVariable(name: "argsize", arg: 5, scope: !2631, file: !223, line: 1019, type: !49)
!2639 = !DILocalVariable(name: "o", scope: !2631, file: !223, line: 1021, type: !230)
!2640 = !DILocation(line: 1017, column: 28, scope: !2631, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 1012, column: 10, scope: !2618)
!2642 = !DILocation(line: 1017, column: 43, scope: !2631, inlinedAt: !2641)
!2643 = !DILocation(line: 1018, column: 36, scope: !2631, inlinedAt: !2641)
!2644 = !DILocation(line: 1019, column: 36, scope: !2631, inlinedAt: !2641)
!2645 = !DILocation(line: 1019, column: 48, scope: !2631, inlinedAt: !2641)
!2646 = !DILocation(line: 1021, column: 3, scope: !2631, inlinedAt: !2641)
!2647 = !DILocation(line: 1021, column: 30, scope: !2631, inlinedAt: !2641)
!2648 = !DILocation(line: 1021, column: 26, scope: !2631, inlinedAt: !2641)
!2649 = !DILocation(line: 171, column: 45, scope: !1258, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 1022, column: 3, scope: !2631, inlinedAt: !2641)
!2651 = !DILocation(line: 172, column: 33, scope: !1258, inlinedAt: !2650)
!2652 = !DILocation(line: 172, column: 57, scope: !1258, inlinedAt: !2650)
!2653 = !DILocation(line: 176, column: 6, scope: !1258, inlinedAt: !2650)
!2654 = !DILocation(line: 176, column: 12, scope: !1258, inlinedAt: !2650)
!2655 = !DILocation(line: 177, column: 8, scope: !1274, inlinedAt: !2650)
!2656 = !DILocation(line: 177, column: 23, scope: !1274, inlinedAt: !2650)
!2657 = !DILocation(line: 177, column: 19, scope: !1274, inlinedAt: !2650)
!2658 = !DILocation(line: 178, column: 5, scope: !1274, inlinedAt: !2650)
!2659 = !DILocation(line: 179, column: 6, scope: !1258, inlinedAt: !2650)
!2660 = !DILocation(line: 179, column: 17, scope: !1258, inlinedAt: !2650)
!2661 = !DILocation(line: 180, column: 6, scope: !1258, inlinedAt: !2650)
!2662 = !DILocation(line: 180, column: 18, scope: !1258, inlinedAt: !2650)
!2663 = !DILocation(line: 1023, column: 10, scope: !2631, inlinedAt: !2641)
!2664 = !DILocation(line: 1024, column: 1, scope: !2631, inlinedAt: !2641)
!2665 = !DILocation(line: 1012, column: 3, scope: !2618)
!2666 = !DILocation(line: 1017, column: 28, scope: !2631)
!2667 = !DILocation(line: 1017, column: 43, scope: !2631)
!2668 = !DILocation(line: 1018, column: 36, scope: !2631)
!2669 = !DILocation(line: 1019, column: 36, scope: !2631)
!2670 = !DILocation(line: 1019, column: 48, scope: !2631)
!2671 = !DILocation(line: 1021, column: 3, scope: !2631)
!2672 = !DILocation(line: 1021, column: 30, scope: !2631)
!2673 = !DILocation(line: 1021, column: 26, scope: !2631)
!2674 = !DILocation(line: 171, column: 45, scope: !1258, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 1022, column: 3, scope: !2631)
!2676 = !DILocation(line: 172, column: 33, scope: !1258, inlinedAt: !2675)
!2677 = !DILocation(line: 172, column: 57, scope: !1258, inlinedAt: !2675)
!2678 = !DILocation(line: 176, column: 6, scope: !1258, inlinedAt: !2675)
!2679 = !DILocation(line: 176, column: 12, scope: !1258, inlinedAt: !2675)
!2680 = !DILocation(line: 177, column: 8, scope: !1274, inlinedAt: !2675)
!2681 = !DILocation(line: 177, column: 23, scope: !1274, inlinedAt: !2675)
!2682 = !DILocation(line: 177, column: 19, scope: !1274, inlinedAt: !2675)
!2683 = !DILocation(line: 178, column: 5, scope: !1274, inlinedAt: !2675)
!2684 = !DILocation(line: 179, column: 6, scope: !1258, inlinedAt: !2675)
!2685 = !DILocation(line: 179, column: 17, scope: !1258, inlinedAt: !2675)
!2686 = !DILocation(line: 180, column: 6, scope: !1258, inlinedAt: !2675)
!2687 = !DILocation(line: 180, column: 18, scope: !1258, inlinedAt: !2675)
!2688 = !DILocation(line: 1023, column: 10, scope: !2631)
!2689 = !DILocation(line: 1024, column: 1, scope: !2631)
!2690 = !DILocation(line: 1023, column: 3, scope: !2631)
!2691 = distinct !DISubprogram(name: "quotearg_custom", scope: !223, file: !223, line: 1027, type: !2692, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2694)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!44, !68, !68, !68}
!2694 = !{!2695, !2696, !2697}
!2695 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2691, file: !223, line: 1027, type: !68)
!2696 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2691, file: !223, line: 1027, type: !68)
!2697 = !DILocalVariable(name: "arg", arg: 3, scope: !2691, file: !223, line: 1028, type: !68)
!2698 = !DILocation(line: 1027, column: 30, scope: !2691)
!2699 = !DILocation(line: 1027, column: 54, scope: !2691)
!2700 = !DILocation(line: 1028, column: 30, scope: !2691)
!2701 = !DILocation(line: 1009, column: 24, scope: !2618, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 1030, column: 10, scope: !2691)
!2703 = !DILocation(line: 1009, column: 39, scope: !2618, inlinedAt: !2702)
!2704 = !DILocation(line: 1010, column: 32, scope: !2618, inlinedAt: !2702)
!2705 = !DILocation(line: 1010, column: 57, scope: !2618, inlinedAt: !2702)
!2706 = !DILocation(line: 1017, column: 28, scope: !2631, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 1012, column: 10, scope: !2618, inlinedAt: !2702)
!2708 = !DILocation(line: 1017, column: 43, scope: !2631, inlinedAt: !2707)
!2709 = !DILocation(line: 1018, column: 36, scope: !2631, inlinedAt: !2707)
!2710 = !DILocation(line: 1019, column: 36, scope: !2631, inlinedAt: !2707)
!2711 = !DILocation(line: 1019, column: 48, scope: !2631, inlinedAt: !2707)
!2712 = !DILocation(line: 1021, column: 3, scope: !2631, inlinedAt: !2707)
!2713 = !DILocation(line: 1021, column: 30, scope: !2631, inlinedAt: !2707)
!2714 = !DILocation(line: 1021, column: 26, scope: !2631, inlinedAt: !2707)
!2715 = !DILocation(line: 171, column: 45, scope: !1258, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 1022, column: 3, scope: !2631, inlinedAt: !2707)
!2717 = !DILocation(line: 172, column: 33, scope: !1258, inlinedAt: !2716)
!2718 = !DILocation(line: 172, column: 57, scope: !1258, inlinedAt: !2716)
!2719 = !DILocation(line: 176, column: 6, scope: !1258, inlinedAt: !2716)
!2720 = !DILocation(line: 176, column: 12, scope: !1258, inlinedAt: !2716)
!2721 = !DILocation(line: 177, column: 8, scope: !1274, inlinedAt: !2716)
!2722 = !DILocation(line: 177, column: 23, scope: !1274, inlinedAt: !2716)
!2723 = !DILocation(line: 177, column: 19, scope: !1274, inlinedAt: !2716)
!2724 = !DILocation(line: 178, column: 5, scope: !1274, inlinedAt: !2716)
!2725 = !DILocation(line: 179, column: 6, scope: !1258, inlinedAt: !2716)
!2726 = !DILocation(line: 179, column: 17, scope: !1258, inlinedAt: !2716)
!2727 = !DILocation(line: 180, column: 6, scope: !1258, inlinedAt: !2716)
!2728 = !DILocation(line: 180, column: 18, scope: !1258, inlinedAt: !2716)
!2729 = !DILocation(line: 1023, column: 10, scope: !2631, inlinedAt: !2707)
!2730 = !DILocation(line: 1024, column: 1, scope: !2631, inlinedAt: !2707)
!2731 = !DILocation(line: 1030, column: 3, scope: !2691)
!2732 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !223, file: !223, line: 1034, type: !2733, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!44, !68, !68, !68, !49}
!2735 = !{!2736, !2737, !2738, !2739}
!2736 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2732, file: !223, line: 1034, type: !68)
!2737 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2732, file: !223, line: 1034, type: !68)
!2738 = !DILocalVariable(name: "arg", arg: 3, scope: !2732, file: !223, line: 1035, type: !68)
!2739 = !DILocalVariable(name: "argsize", arg: 4, scope: !2732, file: !223, line: 1035, type: !49)
!2740 = !DILocation(line: 1034, column: 34, scope: !2732)
!2741 = !DILocation(line: 1034, column: 58, scope: !2732)
!2742 = !DILocation(line: 1035, column: 34, scope: !2732)
!2743 = !DILocation(line: 1035, column: 46, scope: !2732)
!2744 = !DILocation(line: 1017, column: 28, scope: !2631, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 1037, column: 10, scope: !2732)
!2746 = !DILocation(line: 1017, column: 43, scope: !2631, inlinedAt: !2745)
!2747 = !DILocation(line: 1018, column: 36, scope: !2631, inlinedAt: !2745)
!2748 = !DILocation(line: 1019, column: 36, scope: !2631, inlinedAt: !2745)
!2749 = !DILocation(line: 1019, column: 48, scope: !2631, inlinedAt: !2745)
!2750 = !DILocation(line: 1021, column: 3, scope: !2631, inlinedAt: !2745)
!2751 = !DILocation(line: 1021, column: 30, scope: !2631, inlinedAt: !2745)
!2752 = !DILocation(line: 1021, column: 26, scope: !2631, inlinedAt: !2745)
!2753 = !DILocation(line: 171, column: 45, scope: !1258, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 1022, column: 3, scope: !2631, inlinedAt: !2745)
!2755 = !DILocation(line: 172, column: 33, scope: !1258, inlinedAt: !2754)
!2756 = !DILocation(line: 172, column: 57, scope: !1258, inlinedAt: !2754)
!2757 = !DILocation(line: 176, column: 6, scope: !1258, inlinedAt: !2754)
!2758 = !DILocation(line: 176, column: 12, scope: !1258, inlinedAt: !2754)
!2759 = !DILocation(line: 177, column: 8, scope: !1274, inlinedAt: !2754)
!2760 = !DILocation(line: 177, column: 23, scope: !1274, inlinedAt: !2754)
!2761 = !DILocation(line: 177, column: 19, scope: !1274, inlinedAt: !2754)
!2762 = !DILocation(line: 178, column: 5, scope: !1274, inlinedAt: !2754)
!2763 = !DILocation(line: 179, column: 6, scope: !1258, inlinedAt: !2754)
!2764 = !DILocation(line: 179, column: 17, scope: !1258, inlinedAt: !2754)
!2765 = !DILocation(line: 180, column: 6, scope: !1258, inlinedAt: !2754)
!2766 = !DILocation(line: 180, column: 18, scope: !1258, inlinedAt: !2754)
!2767 = !DILocation(line: 1023, column: 10, scope: !2631, inlinedAt: !2745)
!2768 = !DILocation(line: 1024, column: 1, scope: !2631, inlinedAt: !2745)
!2769 = !DILocation(line: 1037, column: 3, scope: !2732)
!2770 = distinct !DISubprogram(name: "quote_n_mem", scope: !223, file: !223, line: 1052, type: !2771, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!68, !47, !68, !49}
!2773 = !{!2774, !2775, !2776}
!2774 = !DILocalVariable(name: "n", arg: 1, scope: !2770, file: !223, line: 1052, type: !47)
!2775 = !DILocalVariable(name: "arg", arg: 2, scope: !2770, file: !223, line: 1052, type: !68)
!2776 = !DILocalVariable(name: "argsize", arg: 3, scope: !2770, file: !223, line: 1052, type: !49)
!2777 = !DILocation(line: 1052, column: 18, scope: !2770)
!2778 = !DILocation(line: 1052, column: 33, scope: !2770)
!2779 = !DILocation(line: 1052, column: 45, scope: !2770)
!2780 = !DILocation(line: 1054, column: 10, scope: !2770)
!2781 = !DILocation(line: 1054, column: 3, scope: !2770)
!2782 = distinct !DISubprogram(name: "quote_mem", scope: !223, file: !223, line: 1058, type: !2783, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!68, !68, !49}
!2785 = !{!2786, !2787}
!2786 = !DILocalVariable(name: "arg", arg: 1, scope: !2782, file: !223, line: 1058, type: !68)
!2787 = !DILocalVariable(name: "argsize", arg: 2, scope: !2782, file: !223, line: 1058, type: !49)
!2788 = !DILocation(line: 1058, column: 24, scope: !2782)
!2789 = !DILocation(line: 1058, column: 36, scope: !2782)
!2790 = !DILocation(line: 1052, column: 18, scope: !2770, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 1060, column: 10, scope: !2782)
!2792 = !DILocation(line: 1052, column: 33, scope: !2770, inlinedAt: !2791)
!2793 = !DILocation(line: 1052, column: 45, scope: !2770, inlinedAt: !2791)
!2794 = !DILocation(line: 1054, column: 10, scope: !2770, inlinedAt: !2791)
!2795 = !DILocation(line: 1060, column: 3, scope: !2782)
!2796 = distinct !DISubprogram(name: "quote_n", scope: !223, file: !223, line: 1064, type: !2797, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!68, !47, !68}
!2799 = !{!2800, !2801}
!2800 = !DILocalVariable(name: "n", arg: 1, scope: !2796, file: !223, line: 1064, type: !47)
!2801 = !DILocalVariable(name: "arg", arg: 2, scope: !2796, file: !223, line: 1064, type: !68)
!2802 = !DILocation(line: 1064, column: 14, scope: !2796)
!2803 = !DILocation(line: 1064, column: 29, scope: !2796)
!2804 = !DILocation(line: 1052, column: 18, scope: !2770, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 1066, column: 10, scope: !2796)
!2806 = !DILocation(line: 1052, column: 33, scope: !2770, inlinedAt: !2805)
!2807 = !DILocation(line: 1052, column: 45, scope: !2770, inlinedAt: !2805)
!2808 = !DILocation(line: 1054, column: 10, scope: !2770, inlinedAt: !2805)
!2809 = !DILocation(line: 1066, column: 3, scope: !2796)
!2810 = distinct !DISubprogram(name: "quote", scope: !223, file: !223, line: 1070, type: !2811, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!68, !68}
!2813 = !{!2814}
!2814 = !DILocalVariable(name: "arg", arg: 1, scope: !2810, file: !223, line: 1070, type: !68)
!2815 = !DILocation(line: 1070, column: 20, scope: !2810)
!2816 = !DILocation(line: 1064, column: 14, scope: !2796, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 1072, column: 10, scope: !2810)
!2818 = !DILocation(line: 1064, column: 29, scope: !2796, inlinedAt: !2817)
!2819 = !DILocation(line: 1052, column: 18, scope: !2770, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 1066, column: 10, scope: !2796, inlinedAt: !2817)
!2821 = !DILocation(line: 1052, column: 33, scope: !2770, inlinedAt: !2820)
!2822 = !DILocation(line: 1052, column: 45, scope: !2770, inlinedAt: !2820)
!2823 = !DILocation(line: 1054, column: 10, scope: !2770, inlinedAt: !2820)
!2824 = !DILocation(line: 1072, column: 3, scope: !2810)
!2825 = distinct !DISubprogram(name: "version_etc_arn", scope: !626, file: !626, line: 62, type: !2826, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !2869)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{null, !2828, !68, !68, !68, !2868, !49}
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !2830)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 241, size: 1728, elements: !2831)
!2831 = !{!2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2830, file: !111, line: 242, baseType: !47, size: 32)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2830, file: !111, line: 247, baseType: !44, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2830, file: !111, line: 248, baseType: !44, size: 64, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2830, file: !111, line: 249, baseType: !44, size: 64, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2830, file: !111, line: 250, baseType: !44, size: 64, offset: 256)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2830, file: !111, line: 251, baseType: !44, size: 64, offset: 320)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2830, file: !111, line: 252, baseType: !44, size: 64, offset: 384)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2830, file: !111, line: 253, baseType: !44, size: 64, offset: 448)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2830, file: !111, line: 254, baseType: !44, size: 64, offset: 512)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2830, file: !111, line: 256, baseType: !44, size: 64, offset: 576)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2830, file: !111, line: 257, baseType: !44, size: 64, offset: 640)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2830, file: !111, line: 258, baseType: !44, size: 64, offset: 704)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2830, file: !111, line: 260, baseType: !2845, size: 64, offset: 768)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !111, line: 156, size: 192, elements: !2847)
!2847 = !{!2848, !2849, !2851}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2846, file: !111, line: 157, baseType: !2845, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2846, file: !111, line: 158, baseType: !2850, size: 64, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2846, file: !111, line: 162, baseType: !47, size: 32, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2830, file: !111, line: 262, baseType: !2850, size: 64, offset: 832)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2830, file: !111, line: 264, baseType: !47, size: 32, offset: 896)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2830, file: !111, line: 268, baseType: !47, size: 32, offset: 928)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2830, file: !111, line: 270, baseType: !137, size: 64, offset: 960)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2830, file: !111, line: 274, baseType: !48, size: 16, offset: 1024)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2830, file: !111, line: 275, baseType: !142, size: 8, offset: 1040)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2830, file: !111, line: 276, baseType: !144, size: 8, offset: 1048)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2830, file: !111, line: 280, baseType: !148, size: 64, offset: 1088)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2830, file: !111, line: 289, baseType: !151, size: 64, offset: 1152)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2830, file: !111, line: 297, baseType: !46, size: 64, offset: 1216)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2830, file: !111, line: 298, baseType: !46, size: 64, offset: 1280)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2830, file: !111, line: 299, baseType: !46, size: 64, offset: 1344)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2830, file: !111, line: 300, baseType: !46, size: 64, offset: 1408)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2830, file: !111, line: 302, baseType: !49, size: 64, offset: 1472)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2830, file: !111, line: 303, baseType: !47, size: 32, offset: 1536)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2830, file: !111, line: 305, baseType: !159, size: 160, offset: 1568)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!2869 = !{!2870, !2871, !2872, !2873, !2874, !2875}
!2870 = !DILocalVariable(name: "stream", arg: 1, scope: !2825, file: !626, line: 62, type: !2828)
!2871 = !DILocalVariable(name: "command_name", arg: 2, scope: !2825, file: !626, line: 63, type: !68)
!2872 = !DILocalVariable(name: "package", arg: 3, scope: !2825, file: !626, line: 63, type: !68)
!2873 = !DILocalVariable(name: "version", arg: 4, scope: !2825, file: !626, line: 64, type: !68)
!2874 = !DILocalVariable(name: "authors", arg: 5, scope: !2825, file: !626, line: 65, type: !2868)
!2875 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2825, file: !626, line: 65, type: !49)
!2876 = !DILocation(line: 62, column: 24, scope: !2825)
!2877 = !DILocation(line: 63, column: 30, scope: !2825)
!2878 = !DILocation(line: 63, column: 56, scope: !2825)
!2879 = !DILocation(line: 64, column: 30, scope: !2825)
!2880 = !DILocation(line: 65, column: 39, scope: !2825)
!2881 = !DILocation(line: 65, column: 55, scope: !2825)
!2882 = !DILocation(line: 67, column: 7, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2825, file: !626, line: 67, column: 7)
!2884 = !DILocation(line: 67, column: 7, scope: !2825)
!2885 = !DILocation(line: 68, column: 5, scope: !2883)
!2886 = !DILocation(line: 70, column: 5, scope: !2883)
!2887 = !DILocation(line: 84, column: 3, scope: !2825)
!2888 = !DILocation(line: 86, column: 3, scope: !2825)
!2889 = !DILocation(line: 95, column: 3, scope: !2825)
!2890 = !DILocation(line: 99, column: 7, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2825, file: !626, line: 96, column: 5)
!2892 = !DILocation(line: 102, column: 7, scope: !2891)
!2893 = !DILocation(line: 103, column: 7, scope: !2891)
!2894 = !DILocation(line: 106, column: 7, scope: !2891)
!2895 = !DILocation(line: 107, column: 7, scope: !2891)
!2896 = !DILocation(line: 110, column: 7, scope: !2891)
!2897 = !DILocation(line: 112, column: 7, scope: !2891)
!2898 = !DILocation(line: 117, column: 7, scope: !2891)
!2899 = !DILocation(line: 119, column: 7, scope: !2891)
!2900 = !DILocation(line: 124, column: 7, scope: !2891)
!2901 = !DILocation(line: 126, column: 7, scope: !2891)
!2902 = !DILocation(line: 131, column: 7, scope: !2891)
!2903 = !DILocation(line: 134, column: 7, scope: !2891)
!2904 = !DILocation(line: 139, column: 7, scope: !2891)
!2905 = !DILocation(line: 142, column: 7, scope: !2891)
!2906 = !DILocation(line: 147, column: 7, scope: !2891)
!2907 = !DILocation(line: 151, column: 7, scope: !2891)
!2908 = !DILocation(line: 156, column: 7, scope: !2891)
!2909 = !DILocation(line: 160, column: 7, scope: !2891)
!2910 = !DILocation(line: 167, column: 7, scope: !2891)
!2911 = !DILocation(line: 171, column: 7, scope: !2891)
!2912 = !DILocation(line: 173, column: 1, scope: !2825)
!2913 = distinct !DISubprogram(name: "version_etc_ar", scope: !626, file: !626, line: 180, type: !2914, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{null, !2828, !68, !68, !68, !2868}
!2916 = !{!2917, !2918, !2919, !2920, !2921, !2922}
!2917 = !DILocalVariable(name: "stream", arg: 1, scope: !2913, file: !626, line: 180, type: !2828)
!2918 = !DILocalVariable(name: "command_name", arg: 2, scope: !2913, file: !626, line: 181, type: !68)
!2919 = !DILocalVariable(name: "package", arg: 3, scope: !2913, file: !626, line: 181, type: !68)
!2920 = !DILocalVariable(name: "version", arg: 4, scope: !2913, file: !626, line: 182, type: !68)
!2921 = !DILocalVariable(name: "authors", arg: 5, scope: !2913, file: !626, line: 182, type: !2868)
!2922 = !DILocalVariable(name: "n_authors", scope: !2913, file: !626, line: 184, type: !49)
!2923 = !DILocation(line: 180, column: 23, scope: !2913)
!2924 = !DILocation(line: 181, column: 29, scope: !2913)
!2925 = !DILocation(line: 181, column: 55, scope: !2913)
!2926 = !DILocation(line: 182, column: 29, scope: !2913)
!2927 = !DILocation(line: 182, column: 59, scope: !2913)
!2928 = !DILocation(line: 184, column: 10, scope: !2913)
!2929 = !DILocation(line: 186, column: 8, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2913, file: !626, line: 186, column: 3)
!2931 = !DILocation(line: 186, column: 23, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2930, file: !626, line: 186, column: 3)
!2933 = !DILocation(line: 186, column: 3, scope: !2930)
!2934 = !DILocation(line: 186, column: 52, scope: !2932)
!2935 = distinct !{!2935, !2933, !2936}
!2936 = !DILocation(line: 187, column: 5, scope: !2930)
!2937 = !DILocation(line: 188, column: 3, scope: !2913)
!2938 = !DILocation(line: 189, column: 1, scope: !2913)
!2939 = distinct !DISubprogram(name: "version_etc_va", scope: !626, file: !626, line: 196, type: !2940, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !2949)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{null, !2828, !68, !68, !68, !2942}
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !623, line: 189, size: 192, elements: !2944)
!2944 = !{!2945, !2946, !2947, !2948}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2943, file: !623, line: 189, baseType: !236, size: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2943, file: !623, line: 189, baseType: !236, size: 32, offset: 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2943, file: !623, line: 189, baseType: !46, size: 64, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2943, file: !623, line: 189, baseType: !46, size: 64, offset: 128)
!2949 = !{!2950, !2951, !2952, !2953, !2954, !2955, !2956}
!2950 = !DILocalVariable(name: "stream", arg: 1, scope: !2939, file: !626, line: 196, type: !2828)
!2951 = !DILocalVariable(name: "command_name", arg: 2, scope: !2939, file: !626, line: 197, type: !68)
!2952 = !DILocalVariable(name: "package", arg: 3, scope: !2939, file: !626, line: 197, type: !68)
!2953 = !DILocalVariable(name: "version", arg: 4, scope: !2939, file: !626, line: 198, type: !68)
!2954 = !DILocalVariable(name: "authors", arg: 5, scope: !2939, file: !626, line: 198, type: !2942)
!2955 = !DILocalVariable(name: "n_authors", scope: !2939, file: !626, line: 200, type: !49)
!2956 = !DILocalVariable(name: "authtab", scope: !2939, file: !626, line: 201, type: !2957)
!2957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 640, elements: !226)
!2958 = !DILocation(line: 196, column: 23, scope: !2939)
!2959 = !DILocation(line: 197, column: 29, scope: !2939)
!2960 = !DILocation(line: 197, column: 55, scope: !2939)
!2961 = !DILocation(line: 198, column: 29, scope: !2939)
!2962 = !DILocation(line: 198, column: 46, scope: !2939)
!2963 = !DILocation(line: 201, column: 3, scope: !2939)
!2964 = !DILocation(line: 201, column: 15, scope: !2939)
!2965 = !DILocation(line: 200, column: 10, scope: !2939)
!2966 = !DILocation(line: 205, column: 35, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !626, line: 203, column: 3)
!2968 = distinct !DILexicalBlock(scope: !2939, file: !626, line: 203, column: 3)
!2969 = !DILocation(line: 205, column: 14, scope: !2967)
!2970 = !DILocation(line: 205, column: 33, scope: !2967)
!2971 = !DILocation(line: 205, column: 67, scope: !2967)
!2972 = !DILocation(line: 203, column: 3, scope: !2968)
!2973 = !DILocation(line: 208, column: 3, scope: !2939)
!2974 = !DILocation(line: 210, column: 1, scope: !2939)
!2975 = distinct !DISubprogram(name: "version_etc", scope: !626, file: !626, line: 227, type: !2976, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{null, !2828, !68, !68, !68, null}
!2978 = !{!2979, !2980, !2981, !2982, !2983}
!2979 = !DILocalVariable(name: "stream", arg: 1, scope: !2975, file: !626, line: 227, type: !2828)
!2980 = !DILocalVariable(name: "command_name", arg: 2, scope: !2975, file: !626, line: 228, type: !68)
!2981 = !DILocalVariable(name: "package", arg: 3, scope: !2975, file: !626, line: 228, type: !68)
!2982 = !DILocalVariable(name: "version", arg: 4, scope: !2975, file: !626, line: 229, type: !68)
!2983 = !DILocalVariable(name: "authors", scope: !2975, file: !626, line: 231, type: !2984)
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1054, line: 46, baseType: !2985)
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2986, line: 48, baseType: !2987)
!2986 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !623, line: 231, baseType: !2988)
!2988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2943, size: 192, elements: !145)
!2989 = !DILocation(line: 227, column: 20, scope: !2975)
!2990 = !DILocation(line: 228, column: 26, scope: !2975)
!2991 = !DILocation(line: 228, column: 52, scope: !2975)
!2992 = !DILocation(line: 229, column: 26, scope: !2975)
!2993 = !DILocation(line: 231, column: 3, scope: !2975)
!2994 = !DILocation(line: 231, column: 11, scope: !2975)
!2995 = !DILocation(line: 233, column: 3, scope: !2975)
!2996 = !DILocation(line: 234, column: 3, scope: !2975)
!2997 = !DILocation(line: 235, column: 3, scope: !2975)
!2998 = !DILocation(line: 236, column: 1, scope: !2975)
!2999 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !626, file: !626, line: 239, type: !706, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !185)
!3000 = !DILocation(line: 245, column: 3, scope: !2999)
!3001 = !DILocation(line: 251, column: 3, scope: !2999)
!3002 = !DILocation(line: 256, column: 3, scope: !2999)
!3003 = !DILocation(line: 258, column: 1, scope: !2999)
!3004 = distinct !DISubprogram(name: "xnmalloc", scope: !634, file: !634, line: 105, type: !3005, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !3007)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!46, !49, !49}
!3007 = !{!3008, !3009}
!3008 = !DILocalVariable(name: "n", arg: 1, scope: !3004, file: !634, line: 105, type: !49)
!3009 = !DILocalVariable(name: "s", arg: 2, scope: !3004, file: !634, line: 105, type: !49)
!3010 = !DILocation(line: 105, column: 18, scope: !3004)
!3011 = !DILocation(line: 105, column: 28, scope: !3004)
!3012 = !DILocation(line: 107, column: 7, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3004, file: !634, line: 107, column: 7)
!3014 = !DILocation(line: 107, column: 7, scope: !3004)
!3015 = !DILocation(line: 108, column: 5, scope: !3013)
!3016 = !DILocation(line: 109, column: 21, scope: !3004)
!3017 = !DILocalVariable(name: "n", arg: 1, scope: !3018, file: !3019, line: 39, type: !49)
!3018 = distinct !DISubprogram(name: "xmalloc", scope: !3019, file: !3019, line: 39, type: !3020, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !3022)
!3019 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!46, !49}
!3022 = !{!3017, !3023}
!3023 = !DILocalVariable(name: "p", scope: !3018, file: !3019, line: 41, type: !46)
!3024 = !DILocation(line: 39, column: 17, scope: !3018, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 109, column: 10, scope: !3004)
!3026 = !DILocation(line: 41, column: 13, scope: !3018, inlinedAt: !3025)
!3027 = !DILocation(line: 41, column: 9, scope: !3018, inlinedAt: !3025)
!3028 = !DILocation(line: 42, column: 8, scope: !3029, inlinedAt: !3025)
!3029 = distinct !DILexicalBlock(scope: !3018, file: !3019, line: 42, column: 7)
!3030 = !DILocation(line: 42, column: 15, scope: !3029, inlinedAt: !3025)
!3031 = !DILocation(line: 42, column: 10, scope: !3029, inlinedAt: !3025)
!3032 = !DILocation(line: 43, column: 5, scope: !3029, inlinedAt: !3025)
!3033 = !DILocation(line: 109, column: 3, scope: !3004)
!3034 = !DILocation(line: 39, column: 17, scope: !3018)
!3035 = !DILocation(line: 41, column: 13, scope: !3018)
!3036 = !DILocation(line: 41, column: 9, scope: !3018)
!3037 = !DILocation(line: 42, column: 8, scope: !3029)
!3038 = !DILocation(line: 42, column: 15, scope: !3029)
!3039 = !DILocation(line: 42, column: 10, scope: !3029)
!3040 = !DILocation(line: 43, column: 5, scope: !3029)
!3041 = !DILocation(line: 44, column: 3, scope: !3018)
!3042 = distinct !DISubprogram(name: "xnrealloc", scope: !634, file: !634, line: 118, type: !3043, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !3045)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!46, !46, !49, !49}
!3045 = !{!3046, !3047, !3048}
!3046 = !DILocalVariable(name: "p", arg: 1, scope: !3042, file: !634, line: 118, type: !46)
!3047 = !DILocalVariable(name: "n", arg: 2, scope: !3042, file: !634, line: 118, type: !49)
!3048 = !DILocalVariable(name: "s", arg: 3, scope: !3042, file: !634, line: 118, type: !49)
!3049 = !DILocation(line: 118, column: 18, scope: !3042)
!3050 = !DILocation(line: 118, column: 28, scope: !3042)
!3051 = !DILocation(line: 118, column: 38, scope: !3042)
!3052 = !DILocation(line: 120, column: 7, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3042, file: !634, line: 120, column: 7)
!3054 = !DILocation(line: 120, column: 7, scope: !3042)
!3055 = !DILocation(line: 121, column: 5, scope: !3053)
!3056 = !DILocation(line: 122, column: 25, scope: !3042)
!3057 = !DILocalVariable(name: "p", arg: 1, scope: !3058, file: !3019, line: 51, type: !46)
!3058 = distinct !DISubprogram(name: "xrealloc", scope: !3019, file: !3019, line: 51, type: !3059, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!46, !46, !49}
!3061 = !{!3057, !3062}
!3062 = !DILocalVariable(name: "n", arg: 2, scope: !3058, file: !3019, line: 51, type: !49)
!3063 = !DILocation(line: 51, column: 17, scope: !3058, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 122, column: 10, scope: !3042)
!3065 = !DILocation(line: 51, column: 27, scope: !3058, inlinedAt: !3064)
!3066 = !DILocation(line: 53, column: 8, scope: !3067, inlinedAt: !3064)
!3067 = distinct !DILexicalBlock(scope: !3058, file: !3019, line: 53, column: 7)
!3068 = !DILocation(line: 53, column: 13, scope: !3067, inlinedAt: !3064)
!3069 = !DILocation(line: 53, column: 10, scope: !3067, inlinedAt: !3064)
!3070 = !DILocation(line: 57, column: 7, scope: !3071, inlinedAt: !3064)
!3071 = distinct !DILexicalBlock(scope: !3067, file: !3019, line: 54, column: 5)
!3072 = !DILocation(line: 58, column: 7, scope: !3071, inlinedAt: !3064)
!3073 = !DILocation(line: 61, column: 7, scope: !3058, inlinedAt: !3064)
!3074 = !DILocation(line: 62, column: 8, scope: !3075, inlinedAt: !3064)
!3075 = distinct !DILexicalBlock(scope: !3058, file: !3019, line: 62, column: 7)
!3076 = !DILocation(line: 62, column: 13, scope: !3075, inlinedAt: !3064)
!3077 = !DILocation(line: 62, column: 10, scope: !3075, inlinedAt: !3064)
!3078 = !DILocation(line: 63, column: 5, scope: !3075, inlinedAt: !3064)
!3079 = !DILocation(line: 122, column: 3, scope: !3042)
!3080 = !DILocation(line: 51, column: 17, scope: !3058)
!3081 = !DILocation(line: 51, column: 27, scope: !3058)
!3082 = !DILocation(line: 53, column: 8, scope: !3067)
!3083 = !DILocation(line: 53, column: 13, scope: !3067)
!3084 = !DILocation(line: 53, column: 10, scope: !3067)
!3085 = !DILocation(line: 57, column: 7, scope: !3071)
!3086 = !DILocation(line: 58, column: 7, scope: !3071)
!3087 = !DILocation(line: 61, column: 7, scope: !3058)
!3088 = !DILocation(line: 62, column: 8, scope: !3075)
!3089 = !DILocation(line: 62, column: 13, scope: !3075)
!3090 = !DILocation(line: 62, column: 10, scope: !3075)
!3091 = !DILocation(line: 63, column: 5, scope: !3075)
!3092 = !DILocation(line: 65, column: 1, scope: !3058)
!3093 = !DILocation(line: 180, column: 19, scope: !635)
!3094 = !DILocation(line: 180, column: 30, scope: !635)
!3095 = !DILocation(line: 180, column: 41, scope: !635)
!3096 = !DILocation(line: 182, column: 14, scope: !635)
!3097 = !DILocation(line: 182, column: 10, scope: !635)
!3098 = !DILocation(line: 184, column: 9, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !635, file: !634, line: 184, column: 7)
!3100 = !DILocation(line: 184, column: 7, scope: !635)
!3101 = !DILocation(line: 186, column: 13, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !634, line: 186, column: 11)
!3103 = distinct !DILexicalBlock(scope: !3099, file: !634, line: 185, column: 5)
!3104 = !DILocation(line: 186, column: 11, scope: !3103)
!3105 = !DILocation(line: 194, column: 30, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3102, file: !634, line: 187, column: 9)
!3107 = !DILocation(line: 195, column: 16, scope: !3106)
!3108 = !DILocation(line: 195, column: 13, scope: !3106)
!3109 = !DILocation(line: 196, column: 9, scope: !3106)
!3110 = !DILocation(line: 204, column: 69, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !634, line: 204, column: 11)
!3112 = distinct !DILexicalBlock(scope: !3099, file: !634, line: 199, column: 5)
!3113 = !DILocation(line: 205, column: 11, scope: !3111)
!3114 = !DILocation(line: 204, column: 11, scope: !3112)
!3115 = !DILocation(line: 206, column: 9, scope: !3111)
!3116 = !DILocation(line: 210, column: 7, scope: !635)
!3117 = !DILocation(line: 211, column: 25, scope: !635)
!3118 = !DILocation(line: 51, column: 17, scope: !3058, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 211, column: 10, scope: !635)
!3120 = !DILocation(line: 51, column: 27, scope: !3058, inlinedAt: !3119)
!3121 = !DILocation(line: 53, column: 10, scope: !3067, inlinedAt: !3119)
!3122 = !DILocation(line: 207, column: 14, scope: !3112)
!3123 = !DILocation(line: 207, column: 18, scope: !3112)
!3124 = !DILocation(line: 207, column: 9, scope: !3112)
!3125 = !DILocation(line: 53, column: 8, scope: !3067, inlinedAt: !3119)
!3126 = !DILocation(line: 57, column: 7, scope: !3071, inlinedAt: !3119)
!3127 = !DILocation(line: 58, column: 7, scope: !3071, inlinedAt: !3119)
!3128 = !DILocation(line: 61, column: 7, scope: !3058, inlinedAt: !3119)
!3129 = !DILocation(line: 62, column: 8, scope: !3075, inlinedAt: !3119)
!3130 = !DILocation(line: 62, column: 13, scope: !3075, inlinedAt: !3119)
!3131 = !DILocation(line: 62, column: 10, scope: !3075, inlinedAt: !3119)
!3132 = !DILocation(line: 63, column: 5, scope: !3075, inlinedAt: !3119)
!3133 = !DILocation(line: 211, column: 3, scope: !635)
!3134 = distinct !DISubprogram(name: "xcharalloc", scope: !634, file: !634, line: 220, type: !2104, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !3135)
!3135 = !{!3136}
!3136 = !DILocalVariable(name: "n", arg: 1, scope: !3134, file: !634, line: 220, type: !49)
!3137 = !DILocation(line: 220, column: 20, scope: !3134)
!3138 = !DILocation(line: 39, column: 17, scope: !3018, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 222, column: 10, scope: !3134)
!3140 = !DILocation(line: 41, column: 13, scope: !3018, inlinedAt: !3139)
!3141 = !DILocation(line: 41, column: 9, scope: !3018, inlinedAt: !3139)
!3142 = !DILocation(line: 42, column: 8, scope: !3029, inlinedAt: !3139)
!3143 = !DILocation(line: 42, column: 15, scope: !3029, inlinedAt: !3139)
!3144 = !DILocation(line: 42, column: 10, scope: !3029, inlinedAt: !3139)
!3145 = !DILocation(line: 43, column: 5, scope: !3029, inlinedAt: !3139)
!3146 = !DILocation(line: 222, column: 3, scope: !3134)
!3147 = distinct !DISubprogram(name: "x2realloc", scope: !3019, file: !3019, line: 74, type: !3148, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !3150)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!46, !46, !638}
!3150 = !{!3151, !3152}
!3151 = !DILocalVariable(name: "p", arg: 1, scope: !3147, file: !3019, line: 74, type: !46)
!3152 = !DILocalVariable(name: "pn", arg: 2, scope: !3147, file: !3019, line: 74, type: !638)
!3153 = !DILocation(line: 74, column: 18, scope: !3147)
!3154 = !DILocation(line: 74, column: 29, scope: !3147)
!3155 = !DILocation(line: 180, column: 19, scope: !635, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 76, column: 10, scope: !3147)
!3157 = !DILocation(line: 180, column: 30, scope: !635, inlinedAt: !3156)
!3158 = !DILocation(line: 180, column: 41, scope: !635, inlinedAt: !3156)
!3159 = !DILocation(line: 182, column: 14, scope: !635, inlinedAt: !3156)
!3160 = !DILocation(line: 182, column: 10, scope: !635, inlinedAt: !3156)
!3161 = !DILocation(line: 184, column: 9, scope: !3099, inlinedAt: !3156)
!3162 = !DILocation(line: 184, column: 7, scope: !635, inlinedAt: !3156)
!3163 = !DILocation(line: 186, column: 13, scope: !3102, inlinedAt: !3156)
!3164 = !DILocation(line: 186, column: 11, scope: !3103, inlinedAt: !3156)
!3165 = !DILocation(line: 210, column: 7, scope: !635, inlinedAt: !3156)
!3166 = !DILocation(line: 51, column: 17, scope: !3058, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 211, column: 10, scope: !635, inlinedAt: !3156)
!3168 = !DILocation(line: 51, column: 27, scope: !3058, inlinedAt: !3167)
!3169 = !DILocation(line: 53, column: 10, scope: !3067, inlinedAt: !3167)
!3170 = !DILocation(line: 205, column: 11, scope: !3111, inlinedAt: !3156)
!3171 = !DILocation(line: 204, column: 11, scope: !3112, inlinedAt: !3156)
!3172 = !DILocation(line: 206, column: 9, scope: !3111, inlinedAt: !3156)
!3173 = !DILocation(line: 207, column: 14, scope: !3112, inlinedAt: !3156)
!3174 = !DILocation(line: 207, column: 18, scope: !3112, inlinedAt: !3156)
!3175 = !DILocation(line: 207, column: 9, scope: !3112, inlinedAt: !3156)
!3176 = !DILocation(line: 53, column: 8, scope: !3067, inlinedAt: !3167)
!3177 = !DILocation(line: 57, column: 7, scope: !3071, inlinedAt: !3167)
!3178 = !DILocation(line: 58, column: 7, scope: !3071, inlinedAt: !3167)
!3179 = !DILocation(line: 61, column: 7, scope: !3058, inlinedAt: !3167)
!3180 = !DILocation(line: 62, column: 8, scope: !3075, inlinedAt: !3167)
!3181 = !DILocation(line: 62, column: 13, scope: !3075, inlinedAt: !3167)
!3182 = !DILocation(line: 62, column: 10, scope: !3075, inlinedAt: !3167)
!3183 = !DILocation(line: 63, column: 5, scope: !3075, inlinedAt: !3167)
!3184 = !DILocation(line: 76, column: 3, scope: !3147)
!3185 = distinct !DISubprogram(name: "xzalloc", scope: !3019, file: !3019, line: 84, type: !3020, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !3186)
!3186 = !{!3187}
!3187 = !DILocalVariable(name: "s", arg: 1, scope: !3185, file: !3019, line: 84, type: !49)
!3188 = !DILocation(line: 84, column: 17, scope: !3185)
!3189 = !DILocation(line: 39, column: 17, scope: !3018, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 86, column: 18, scope: !3185)
!3191 = !DILocation(line: 41, column: 13, scope: !3018, inlinedAt: !3190)
!3192 = !DILocation(line: 41, column: 9, scope: !3018, inlinedAt: !3190)
!3193 = !DILocation(line: 42, column: 8, scope: !3029, inlinedAt: !3190)
!3194 = !DILocation(line: 42, column: 15, scope: !3029, inlinedAt: !3190)
!3195 = !DILocation(line: 42, column: 10, scope: !3029, inlinedAt: !3190)
!3196 = !DILocation(line: 43, column: 5, scope: !3029, inlinedAt: !3190)
!3197 = !DILocation(line: 86, column: 10, scope: !3185)
!3198 = !DILocation(line: 86, column: 3, scope: !3185)
!3199 = distinct !DISubprogram(name: "xcalloc", scope: !3019, file: !3019, line: 93, type: !3005, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !3200)
!3200 = !{!3201, !3202, !3203}
!3201 = !DILocalVariable(name: "n", arg: 1, scope: !3199, file: !3019, line: 93, type: !49)
!3202 = !DILocalVariable(name: "s", arg: 2, scope: !3199, file: !3019, line: 93, type: !49)
!3203 = !DILocalVariable(name: "p", scope: !3199, file: !3019, line: 95, type: !46)
!3204 = !DILocation(line: 93, column: 17, scope: !3199)
!3205 = !DILocation(line: 93, column: 27, scope: !3199)
!3206 = !DILocation(line: 100, column: 7, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3199, file: !3019, line: 100, column: 7)
!3208 = !DILocation(line: 101, column: 7, scope: !3207)
!3209 = !DILocation(line: 101, column: 18, scope: !3207)
!3210 = !DILocation(line: 95, column: 9, scope: !3199)
!3211 = !DILocation(line: 101, column: 16, scope: !3207)
!3212 = !DILocation(line: 100, column: 7, scope: !3199)
!3213 = !DILocation(line: 102, column: 5, scope: !3207)
!3214 = !DILocation(line: 103, column: 3, scope: !3199)
!3215 = distinct !DISubprogram(name: "xmemdup", scope: !3019, file: !3019, line: 111, type: !3216, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !3220)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!46, !3218, !49}
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3220 = !{!3221, !3222}
!3221 = !DILocalVariable(name: "p", arg: 1, scope: !3215, file: !3019, line: 111, type: !3218)
!3222 = !DILocalVariable(name: "s", arg: 2, scope: !3215, file: !3019, line: 111, type: !49)
!3223 = !DILocation(line: 111, column: 22, scope: !3215)
!3224 = !DILocation(line: 111, column: 32, scope: !3215)
!3225 = !DILocation(line: 39, column: 17, scope: !3018, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 113, column: 18, scope: !3215)
!3227 = !DILocation(line: 41, column: 13, scope: !3018, inlinedAt: !3226)
!3228 = !DILocation(line: 41, column: 9, scope: !3018, inlinedAt: !3226)
!3229 = !DILocation(line: 42, column: 8, scope: !3029, inlinedAt: !3226)
!3230 = !DILocation(line: 42, column: 15, scope: !3029, inlinedAt: !3226)
!3231 = !DILocation(line: 42, column: 10, scope: !3029, inlinedAt: !3226)
!3232 = !DILocation(line: 43, column: 5, scope: !3029, inlinedAt: !3226)
!3233 = !DILocation(line: 113, column: 10, scope: !3215)
!3234 = !DILocation(line: 113, column: 3, scope: !3215)
!3235 = distinct !DISubprogram(name: "xstrdup", scope: !3019, file: !3019, line: 119, type: !2304, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !3236)
!3236 = !{!3237}
!3237 = !DILocalVariable(name: "string", arg: 1, scope: !3235, file: !3019, line: 119, type: !68)
!3238 = !DILocation(line: 119, column: 22, scope: !3235)
!3239 = !DILocation(line: 121, column: 27, scope: !3235)
!3240 = !DILocation(line: 121, column: 43, scope: !3235)
!3241 = !DILocation(line: 111, column: 22, scope: !3215, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 121, column: 10, scope: !3235)
!3243 = !DILocation(line: 111, column: 32, scope: !3215, inlinedAt: !3242)
!3244 = !DILocation(line: 39, column: 17, scope: !3018, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 113, column: 18, scope: !3215, inlinedAt: !3242)
!3246 = !DILocation(line: 41, column: 13, scope: !3018, inlinedAt: !3245)
!3247 = !DILocation(line: 41, column: 9, scope: !3018, inlinedAt: !3245)
!3248 = !DILocation(line: 42, column: 8, scope: !3029, inlinedAt: !3245)
!3249 = !DILocation(line: 42, column: 15, scope: !3029, inlinedAt: !3245)
!3250 = !DILocation(line: 42, column: 10, scope: !3029, inlinedAt: !3245)
!3251 = !DILocation(line: 43, column: 5, scope: !3029, inlinedAt: !3245)
!3252 = !DILocation(line: 113, column: 10, scope: !3215, inlinedAt: !3242)
!3253 = !DILocation(line: 121, column: 3, scope: !3235)
!3254 = distinct !DISubprogram(name: "xalloc_die", scope: !3255, file: !3255, line: 32, type: !706, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !647, variables: !185)
!3255 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3256 = !DILocation(line: 34, column: 10, scope: !3254)
!3257 = !DILocation(line: 34, column: 33, scope: !3254)
!3258 = !DILocation(line: 34, column: 3, scope: !3254)
!3259 = !DILocation(line: 40, column: 3, scope: !3254)
!3260 = distinct !DISubprogram(name: "xnumtoumax", scope: !3261, file: !3261, line: 36, type: !3262, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !3267)
!3261 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!3264, !68, !47, !3264, !3264, !68, !68, !47}
!3264 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !3265, line: 112, baseType: !3266)
!3265 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !138, line: 62, baseType: !51)
!3267 = !{!3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3277}
!3268 = !DILocalVariable(name: "n_str", arg: 1, scope: !3260, file: !3261, line: 36, type: !68)
!3269 = !DILocalVariable(name: "base", arg: 2, scope: !3260, file: !3261, line: 36, type: !47)
!3270 = !DILocalVariable(name: "min", arg: 3, scope: !3260, file: !3261, line: 36, type: !3264)
!3271 = !DILocalVariable(name: "max", arg: 4, scope: !3260, file: !3261, line: 36, type: !3264)
!3272 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3260, file: !3261, line: 37, type: !68)
!3273 = !DILocalVariable(name: "err", arg: 6, scope: !3260, file: !3261, line: 37, type: !68)
!3274 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3260, file: !3261, line: 37, type: !47)
!3275 = !DILocalVariable(name: "s_err", scope: !3260, file: !3261, line: 39, type: !3276)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !653, line: 39, baseType: !652)
!3277 = !DILocalVariable(name: "tnum", scope: !3260, file: !3261, line: 41, type: !3264)
!3278 = !DILocation(line: 36, column: 26, scope: !3260)
!3279 = !DILocation(line: 36, column: 37, scope: !3260)
!3280 = !DILocation(line: 36, column: 57, scope: !3260)
!3281 = !DILocation(line: 36, column: 76, scope: !3260)
!3282 = !DILocation(line: 37, column: 26, scope: !3260)
!3283 = !DILocation(line: 37, column: 48, scope: !3260)
!3284 = !DILocation(line: 37, column: 57, scope: !3260)
!3285 = !DILocation(line: 41, column: 3, scope: !3260)
!3286 = !DILocation(line: 41, column: 17, scope: !3260)
!3287 = !DILocation(line: 42, column: 11, scope: !3260)
!3288 = !DILocation(line: 39, column: 16, scope: !3260)
!3289 = !DILocation(line: 44, column: 7, scope: !3260)
!3290 = !DILocation(line: 69, column: 50, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !3261, line: 67, column: 5)
!3292 = distinct !DILexicalBlock(scope: !3260, file: !3261, line: 66, column: 7)
!3293 = !DILocation(line: 46, column: 11, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !3261, line: 46, column: 11)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !3261, line: 45, column: 5)
!3296 = distinct !DILexicalBlock(scope: !3260, file: !3261, line: 44, column: 7)
!3297 = !DILocation(line: 46, column: 16, scope: !3294)
!3298 = !DILocation(line: 46, column: 29, scope: !3294)
!3299 = !DILocation(line: 46, column: 22, scope: !3294)
!3300 = !DILocation(line: 51, column: 20, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !3261, line: 51, column: 15)
!3302 = distinct !DILexicalBlock(scope: !3294, file: !3261, line: 47, column: 9)
!3303 = !DILocation(line: 52, column: 13, scope: !3301)
!3304 = !DILocation(line: 51, column: 15, scope: !3302)
!3305 = !DILocation(line: 59, column: 9, scope: !3302)
!3306 = !DILocation(line: 62, column: 5, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3296, file: !3261, line: 61, column: 12)
!3308 = !DILocation(line: 62, column: 11, scope: !3307)
!3309 = !DILocation(line: 64, column: 5, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3307, file: !3261, line: 63, column: 12)
!3311 = !DILocation(line: 64, column: 11, scope: !3310)
!3312 = !DILocation(line: 69, column: 14, scope: !3291)
!3313 = !DILocation(line: 69, column: 56, scope: !3291)
!3314 = !DILocation(line: 70, column: 29, scope: !3291)
!3315 = !DILocation(line: 69, column: 7, scope: !3291)
!3316 = !DILocation(line: 73, column: 10, scope: !3260)
!3317 = !DILocation(line: 71, column: 5, scope: !3291)
!3318 = !DILocation(line: 74, column: 1, scope: !3260)
!3319 = !DILocation(line: 73, column: 3, scope: !3260)
!3320 = distinct !DISubprogram(name: "xdectoumax", scope: !3261, file: !3261, line: 82, type: !3321, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !3323)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!3264, !68, !3264, !3264, !68, !68, !47}
!3323 = !{!3324, !3325, !3326, !3327, !3328, !3329}
!3324 = !DILocalVariable(name: "n_str", arg: 1, scope: !3320, file: !3261, line: 82, type: !68)
!3325 = !DILocalVariable(name: "min", arg: 2, scope: !3320, file: !3261, line: 82, type: !3264)
!3326 = !DILocalVariable(name: "max", arg: 3, scope: !3320, file: !3261, line: 82, type: !3264)
!3327 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3320, file: !3261, line: 83, type: !68)
!3328 = !DILocalVariable(name: "err", arg: 5, scope: !3320, file: !3261, line: 83, type: !68)
!3329 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3320, file: !3261, line: 83, type: !47)
!3330 = !DILocation(line: 82, column: 26, scope: !3320)
!3331 = !DILocation(line: 82, column: 47, scope: !3320)
!3332 = !DILocation(line: 82, column: 66, scope: !3320)
!3333 = !DILocation(line: 83, column: 26, scope: !3320)
!3334 = !DILocation(line: 83, column: 48, scope: !3320)
!3335 = !DILocation(line: 83, column: 57, scope: !3320)
!3336 = !DILocation(line: 85, column: 10, scope: !3320)
!3337 = !DILocation(line: 85, column: 3, scope: !3320)
!3338 = distinct !DISubprogram(name: "xstrtoumax", scope: !3339, file: !3339, line: 88, type: !3340, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !3343)
!3339 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!3276, !68, !734, !47, !3342, !68}
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3343 = !{!3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3356, !3357, !3360, !3361}
!3344 = !DILocalVariable(name: "s", arg: 1, scope: !3338, file: !3339, line: 88, type: !68)
!3345 = !DILocalVariable(name: "ptr", arg: 2, scope: !3338, file: !3339, line: 88, type: !734)
!3346 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3338, file: !3339, line: 88, type: !47)
!3347 = !DILocalVariable(name: "val", arg: 4, scope: !3338, file: !3339, line: 89, type: !3342)
!3348 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3338, file: !3339, line: 89, type: !68)
!3349 = !DILocalVariable(name: "t_ptr", scope: !3338, file: !3339, line: 91, type: !44)
!3350 = !DILocalVariable(name: "p", scope: !3338, file: !3339, line: 92, type: !734)
!3351 = !DILocalVariable(name: "tmp", scope: !3338, file: !3339, line: 93, type: !3264)
!3352 = !DILocalVariable(name: "err", scope: !3338, file: !3339, line: 94, type: !3276)
!3353 = !DILocalVariable(name: "q", scope: !3354, file: !3339, line: 104, type: !68)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !3339, line: 103, column: 5)
!3355 = distinct !DILexicalBlock(scope: !3338, file: !3339, line: 102, column: 7)
!3356 = !DILocalVariable(name: "ch", scope: !3354, file: !3339, line: 105, type: !53)
!3357 = !DILocalVariable(name: "base", scope: !3358, file: !3339, line: 141, type: !47)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !3339, line: 140, column: 5)
!3359 = distinct !DILexicalBlock(scope: !3338, file: !3339, line: 139, column: 7)
!3360 = !DILocalVariable(name: "suffixes", scope: !3358, file: !3339, line: 142, type: !47)
!3361 = !DILocalVariable(name: "overflow", scope: !3358, file: !3339, line: 143, type: !3276)
!3362 = !DILocation(line: 88, column: 24, scope: !3338)
!3363 = !DILocation(line: 88, column: 34, scope: !3338)
!3364 = !DILocation(line: 88, column: 43, scope: !3338)
!3365 = !DILocation(line: 89, column: 24, scope: !3338)
!3366 = !DILocation(line: 89, column: 41, scope: !3338)
!3367 = !DILocation(line: 91, column: 3, scope: !3338)
!3368 = !DILocation(line: 94, column: 16, scope: !3338)
!3369 = !DILocation(line: 96, column: 3, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !3339, line: 96, column: 3)
!3371 = distinct !DILexicalBlock(scope: !3338, file: !3339, line: 96, column: 3)
!3372 = !DILocation(line: 98, column: 8, scope: !3338)
!3373 = !DILocation(line: 92, column: 10, scope: !3338)
!3374 = !DILocation(line: 100, column: 3, scope: !3338)
!3375 = !DILocation(line: 100, column: 9, scope: !3338)
!3376 = !DILocation(line: 104, column: 19, scope: !3354)
!3377 = !DIExpression(DW_OP_deref)
!3378 = !DILocation(line: 105, column: 21, scope: !3354)
!3379 = !DILocation(line: 106, column: 14, scope: !3354)
!3380 = !DILocation(line: 106, column: 7, scope: !3354)
!3381 = !DILocation(line: 107, column: 15, scope: !3354)
!3382 = distinct !{!3382, !3380, !3383}
!3383 = !DILocation(line: 107, column: 17, scope: !3354)
!3384 = !DILocation(line: 108, column: 14, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3354, file: !3339, line: 108, column: 11)
!3386 = !DILocalVariable(name: "nptr", arg: 1, scope: !3387, file: !3388, line: 336, type: !3391)
!3387 = distinct !DISubprogram(name: "strtoumax", scope: !3388, file: !3388, line: 336, type: !3389, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !3393)
!3388 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!3264, !3391, !3392, !47}
!3391 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!3392 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !734)
!3393 = !{!3386, !3394, !3395}
!3394 = !DILocalVariable(name: "endptr", arg: 2, scope: !3387, file: !3388, line: 336, type: !3392)
!3395 = !DILocalVariable(name: "base", arg: 3, scope: !3387, file: !3388, line: 336, type: !47)
!3396 = !DILocation(line: 336, column: 1, scope: !3387, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 112, column: 9, scope: !3338)
!3398 = !DILocation(line: 339, column: 10, scope: !3387, inlinedAt: !3397)
!3399 = !DILocation(line: 93, column: 14, scope: !3338)
!3400 = !DILocation(line: 114, column: 7, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3338, file: !3339, line: 114, column: 7)
!3402 = !DILocation(line: 114, column: 10, scope: !3401)
!3403 = !DILocation(line: 114, column: 7, scope: !3338)
!3404 = !DILocation(line: 118, column: 11, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !3339, line: 118, column: 11)
!3406 = distinct !DILexicalBlock(scope: !3401, file: !3339, line: 115, column: 5)
!3407 = !DILocation(line: 118, column: 26, scope: !3405)
!3408 = !DILocation(line: 118, column: 29, scope: !3405)
!3409 = !DILocation(line: 118, column: 33, scope: !3405)
!3410 = !DILocation(line: 118, column: 36, scope: !3405)
!3411 = !DILocation(line: 118, column: 11, scope: !3406)
!3412 = !DILocation(line: 123, column: 12, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3401, file: !3339, line: 123, column: 12)
!3414 = !DILocation(line: 123, column: 12, scope: !3401)
!3415 = !DILocation(line: 128, column: 5, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3413, file: !3339, line: 124, column: 5)
!3417 = !DILocation(line: 133, column: 8, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3338, file: !3339, line: 133, column: 7)
!3419 = !DILocation(line: 133, column: 7, scope: !3338)
!3420 = !DILocation(line: 135, column: 12, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3418, file: !3339, line: 134, column: 5)
!3422 = !DILocation(line: 136, column: 7, scope: !3421)
!3423 = !DILocation(line: 139, column: 7, scope: !3359)
!3424 = !DILocation(line: 139, column: 11, scope: !3359)
!3425 = !DILocation(line: 139, column: 7, scope: !3338)
!3426 = !DILocation(line: 141, column: 11, scope: !3358)
!3427 = !DILocation(line: 142, column: 11, scope: !3358)
!3428 = !DILocation(line: 145, column: 12, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3358, file: !3339, line: 145, column: 11)
!3430 = !DILocation(line: 145, column: 11, scope: !3358)
!3431 = !DILocation(line: 147, column: 16, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3429, file: !3339, line: 146, column: 9)
!3433 = !DILocation(line: 148, column: 22, scope: !3432)
!3434 = !DILocation(line: 148, column: 11, scope: !3432)
!3435 = !DILocation(line: 151, column: 7, scope: !3358)
!3436 = !DILocation(line: 163, column: 15, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !3339, line: 163, column: 15)
!3438 = distinct !DILexicalBlock(scope: !3358, file: !3339, line: 152, column: 9)
!3439 = !DILocation(line: 163, column: 15, scope: !3438)
!3440 = !DILocation(line: 164, column: 21, scope: !3437)
!3441 = !DILocation(line: 164, column: 13, scope: !3437)
!3442 = !DILocation(line: 167, column: 21, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !3339, line: 167, column: 21)
!3444 = distinct !DILexicalBlock(scope: !3437, file: !3339, line: 165, column: 15)
!3445 = !DILocation(line: 167, column: 29, scope: !3443)
!3446 = !DILocation(line: 167, column: 21, scope: !3444)
!3447 = !DILocation(line: 175, column: 17, scope: !3444)
!3448 = !DILocation(line: 179, column: 7, scope: !3358)
!3449 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3450, file: !3339, line: 60, type: !47)
!3450 = distinct !DISubprogram(name: "bkm_scale", scope: !3339, file: !3339, line: 60, type: !3451, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!3276, !3342, !47}
!3453 = !{!3454, !3449}
!3454 = !DILocalVariable(name: "x", arg: 1, scope: !3450, file: !3339, line: 60, type: !3342)
!3455 = !DILocation(line: 60, column: 31, scope: !3450, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 182, column: 22, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3358, file: !3339, line: 180, column: 9)
!3458 = !DILocation(line: 67, column: 39, scope: !3459, inlinedAt: !3456)
!3459 = distinct !DILexicalBlock(scope: !3450, file: !3339, line: 67, column: 7)
!3460 = !DILocation(line: 72, column: 6, scope: !3450, inlinedAt: !3456)
!3461 = !DILocation(line: 67, column: 7, scope: !3450, inlinedAt: !3456)
!3462 = !DILocation(line: 143, column: 20, scope: !3358)
!3463 = !DILocation(line: 183, column: 11, scope: !3457)
!3464 = !DILocation(line: 60, column: 31, scope: !3450, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 189, column: 22, scope: !3457)
!3466 = !DILocation(line: 67, column: 39, scope: !3459, inlinedAt: !3465)
!3467 = !DILocation(line: 72, column: 6, scope: !3450, inlinedAt: !3465)
!3468 = !DILocation(line: 67, column: 7, scope: !3450, inlinedAt: !3465)
!3469 = !DILocation(line: 190, column: 11, scope: !3457)
!3470 = !DILocalVariable(name: "power", arg: 3, scope: !3471, file: !3339, line: 77, type: !47)
!3471 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3339, file: !3339, line: 77, type: !3472, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !3474)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!3276, !3342, !47, !47}
!3474 = !{!3475, !3476, !3470, !3477}
!3475 = !DILocalVariable(name: "x", arg: 1, scope: !3471, file: !3339, line: 77, type: !3342)
!3476 = !DILocalVariable(name: "base", arg: 2, scope: !3471, file: !3339, line: 77, type: !47)
!3477 = !DILocalVariable(name: "err", scope: !3471, file: !3339, line: 79, type: !3276)
!3478 = !DILocation(line: 77, column: 50, scope: !3471, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 197, column: 22, scope: !3457)
!3480 = !DILocation(line: 79, column: 16, scope: !3471, inlinedAt: !3479)
!3481 = !DILocation(line: 67, column: 39, scope: !3459, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 81, column: 12, scope: !3471, inlinedAt: !3479)
!3483 = !DILocation(line: 72, column: 6, scope: !3450, inlinedAt: !3482)
!3484 = !DILocation(line: 67, column: 7, scope: !3450, inlinedAt: !3482)
!3485 = !DILocation(line: 81, column: 9, scope: !3471, inlinedAt: !3479)
!3486 = !DILocation(line: 241, column: 11, scope: !3358)
!3487 = !DILocation(line: 77, column: 50, scope: !3471, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 202, column: 22, scope: !3457)
!3489 = !DILocation(line: 79, column: 16, scope: !3471, inlinedAt: !3488)
!3490 = !DILocation(line: 67, column: 39, scope: !3459, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 81, column: 12, scope: !3471, inlinedAt: !3488)
!3492 = !DILocation(line: 72, column: 6, scope: !3450, inlinedAt: !3491)
!3493 = !DILocation(line: 67, column: 7, scope: !3450, inlinedAt: !3491)
!3494 = !DILocation(line: 81, column: 9, scope: !3471, inlinedAt: !3488)
!3495 = !DILocation(line: 77, column: 50, scope: !3471, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 207, column: 22, scope: !3457)
!3497 = !DILocation(line: 79, column: 16, scope: !3471, inlinedAt: !3496)
!3498 = !DILocation(line: 67, column: 39, scope: !3459, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 81, column: 12, scope: !3471, inlinedAt: !3496)
!3500 = !DILocation(line: 72, column: 6, scope: !3450, inlinedAt: !3499)
!3501 = !DILocation(line: 67, column: 7, scope: !3450, inlinedAt: !3499)
!3502 = !DILocation(line: 77, column: 50, scope: !3471, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 212, column: 22, scope: !3457)
!3504 = !DILocation(line: 79, column: 16, scope: !3471, inlinedAt: !3503)
!3505 = !DILocation(line: 67, column: 39, scope: !3459, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 81, column: 12, scope: !3471, inlinedAt: !3503)
!3507 = !DILocation(line: 72, column: 6, scope: !3450, inlinedAt: !3506)
!3508 = !DILocation(line: 67, column: 7, scope: !3450, inlinedAt: !3506)
!3509 = !DILocation(line: 81, column: 9, scope: !3471, inlinedAt: !3503)
!3510 = !DILocation(line: 77, column: 50, scope: !3471, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 216, column: 22, scope: !3457)
!3512 = !DILocation(line: 79, column: 16, scope: !3471, inlinedAt: !3511)
!3513 = !DILocation(line: 67, column: 39, scope: !3459, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 81, column: 12, scope: !3471, inlinedAt: !3511)
!3515 = !DILocation(line: 72, column: 6, scope: !3450, inlinedAt: !3514)
!3516 = !DILocation(line: 67, column: 7, scope: !3450, inlinedAt: !3514)
!3517 = !DILocation(line: 81, column: 9, scope: !3471, inlinedAt: !3511)
!3518 = !DILocation(line: 77, column: 50, scope: !3471, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 221, column: 22, scope: !3457)
!3520 = !DILocation(line: 79, column: 16, scope: !3471, inlinedAt: !3519)
!3521 = !DILocation(line: 67, column: 39, scope: !3459, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 81, column: 12, scope: !3471, inlinedAt: !3519)
!3523 = !DILocation(line: 72, column: 6, scope: !3450, inlinedAt: !3522)
!3524 = !DILocation(line: 67, column: 7, scope: !3450, inlinedAt: !3522)
!3525 = !DILocation(line: 81, column: 9, scope: !3471, inlinedAt: !3519)
!3526 = !DILocation(line: 60, column: 31, scope: !3450, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 225, column: 22, scope: !3457)
!3528 = !DILocation(line: 67, column: 39, scope: !3459, inlinedAt: !3527)
!3529 = !DILocation(line: 72, column: 6, scope: !3450, inlinedAt: !3527)
!3530 = !DILocation(line: 67, column: 7, scope: !3450, inlinedAt: !3527)
!3531 = !DILocation(line: 226, column: 11, scope: !3457)
!3532 = !DILocation(line: 77, column: 50, scope: !3471, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 229, column: 22, scope: !3457)
!3534 = !DILocation(line: 79, column: 16, scope: !3471, inlinedAt: !3533)
!3535 = !DILocation(line: 67, column: 39, scope: !3459, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 81, column: 12, scope: !3471, inlinedAt: !3533)
!3537 = !DILocation(line: 72, column: 6, scope: !3450, inlinedAt: !3536)
!3538 = !DILocation(line: 67, column: 7, scope: !3450, inlinedAt: !3536)
!3539 = !DILocation(line: 81, column: 9, scope: !3471, inlinedAt: !3533)
!3540 = !DILocation(line: 77, column: 50, scope: !3471, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 233, column: 22, scope: !3457)
!3542 = !DILocation(line: 79, column: 16, scope: !3471, inlinedAt: !3541)
!3543 = !DILocation(line: 67, column: 39, scope: !3459, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 81, column: 12, scope: !3471, inlinedAt: !3541)
!3545 = !DILocation(line: 72, column: 6, scope: !3450, inlinedAt: !3544)
!3546 = !DILocation(line: 67, column: 7, scope: !3450, inlinedAt: !3544)
!3547 = !DILocation(line: 81, column: 9, scope: !3471, inlinedAt: !3541)
!3548 = !DILocation(line: 237, column: 16, scope: !3457)
!3549 = !DILocation(line: 238, column: 22, scope: !3457)
!3550 = !DILocation(line: 238, column: 11, scope: !3457)
!3551 = !DILocation(line: 242, column: 10, scope: !3358)
!3552 = !DILocation(line: 243, column: 11, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3358, file: !3339, line: 243, column: 11)
!3554 = !DILocation(line: 244, column: 13, scope: !3553)
!3555 = !DILocation(line: 243, column: 11, scope: !3358)
!3556 = !DILocation(line: 247, column: 8, scope: !3338)
!3557 = !DILocation(line: 248, column: 3, scope: !3338)
!3558 = !DILocation(line: 249, column: 1, scope: !3338)
!3559 = distinct !DISubprogram(name: "rpl_calloc", scope: !3560, file: !3560, line: 42, type: !3005, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !664, variables: !3561)
!3560 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3561 = !{!3562, !3563, !3564, !3565}
!3562 = !DILocalVariable(name: "n", arg: 1, scope: !3559, file: !3560, line: 42, type: !49)
!3563 = !DILocalVariable(name: "s", arg: 2, scope: !3559, file: !3560, line: 42, type: !49)
!3564 = !DILocalVariable(name: "result", scope: !3559, file: !3560, line: 44, type: !46)
!3565 = !DILocalVariable(name: "bytes", scope: !3566, file: !3560, line: 56, type: !49)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !3560, line: 53, column: 5)
!3567 = distinct !DILexicalBlock(scope: !3559, file: !3560, line: 47, column: 7)
!3568 = !DILocation(line: 42, column: 20, scope: !3559)
!3569 = !DILocation(line: 42, column: 30, scope: !3559)
!3570 = !DILocation(line: 47, column: 9, scope: !3567)
!3571 = !DILocation(line: 47, column: 19, scope: !3567)
!3572 = !DILocation(line: 47, column: 14, scope: !3567)
!3573 = !DILocation(line: 56, column: 24, scope: !3566)
!3574 = !DILocation(line: 56, column: 14, scope: !3566)
!3575 = !DILocation(line: 57, column: 17, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3566, file: !3560, line: 57, column: 11)
!3577 = !DILocation(line: 57, column: 21, scope: !3576)
!3578 = !DILocation(line: 57, column: 11, scope: !3566)
!3579 = !DILocation(line: 59, column: 11, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3576, file: !3560, line: 58, column: 9)
!3581 = !DILocation(line: 59, column: 17, scope: !3580)
!3582 = !DILocation(line: 65, column: 12, scope: !3559)
!3583 = !DILocation(line: 44, column: 9, scope: !3559)
!3584 = !DILocation(line: 72, column: 3, scope: !3559)
!3585 = !DILocation(line: 73, column: 1, scope: !3559)
!3586 = distinct !DISubprogram(name: "rpl_fclose", scope: !3587, file: !3587, line: 56, type: !3588, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !666, variables: !3630)
!3587 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!47, !3590}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !3592)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 241, size: 1728, elements: !3593)
!3593 = !{!3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3592, file: !111, line: 242, baseType: !47, size: 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3592, file: !111, line: 247, baseType: !44, size: 64, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3592, file: !111, line: 248, baseType: !44, size: 64, offset: 128)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3592, file: !111, line: 249, baseType: !44, size: 64, offset: 192)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3592, file: !111, line: 250, baseType: !44, size: 64, offset: 256)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3592, file: !111, line: 251, baseType: !44, size: 64, offset: 320)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3592, file: !111, line: 252, baseType: !44, size: 64, offset: 384)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3592, file: !111, line: 253, baseType: !44, size: 64, offset: 448)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3592, file: !111, line: 254, baseType: !44, size: 64, offset: 512)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3592, file: !111, line: 256, baseType: !44, size: 64, offset: 576)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3592, file: !111, line: 257, baseType: !44, size: 64, offset: 640)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3592, file: !111, line: 258, baseType: !44, size: 64, offset: 704)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3592, file: !111, line: 260, baseType: !3607, size: 64, offset: 768)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !111, line: 156, size: 192, elements: !3609)
!3609 = !{!3610, !3611, !3613}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3608, file: !111, line: 157, baseType: !3607, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3608, file: !111, line: 158, baseType: !3612, size: 64, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3608, file: !111, line: 162, baseType: !47, size: 32, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3592, file: !111, line: 262, baseType: !3612, size: 64, offset: 832)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3592, file: !111, line: 264, baseType: !47, size: 32, offset: 896)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3592, file: !111, line: 268, baseType: !47, size: 32, offset: 928)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3592, file: !111, line: 270, baseType: !137, size: 64, offset: 960)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3592, file: !111, line: 274, baseType: !48, size: 16, offset: 1024)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3592, file: !111, line: 275, baseType: !142, size: 8, offset: 1040)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3592, file: !111, line: 276, baseType: !144, size: 8, offset: 1048)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3592, file: !111, line: 280, baseType: !148, size: 64, offset: 1088)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3592, file: !111, line: 289, baseType: !151, size: 64, offset: 1152)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3592, file: !111, line: 297, baseType: !46, size: 64, offset: 1216)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3592, file: !111, line: 298, baseType: !46, size: 64, offset: 1280)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3592, file: !111, line: 299, baseType: !46, size: 64, offset: 1344)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3592, file: !111, line: 300, baseType: !46, size: 64, offset: 1408)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3592, file: !111, line: 302, baseType: !49, size: 64, offset: 1472)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3592, file: !111, line: 303, baseType: !47, size: 32, offset: 1536)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3592, file: !111, line: 305, baseType: !159, size: 160, offset: 1568)
!3630 = !{!3631, !3632, !3633, !3634}
!3631 = !DILocalVariable(name: "fp", arg: 1, scope: !3586, file: !3587, line: 56, type: !3590)
!3632 = !DILocalVariable(name: "saved_errno", scope: !3586, file: !3587, line: 58, type: !47)
!3633 = !DILocalVariable(name: "fd", scope: !3586, file: !3587, line: 59, type: !47)
!3634 = !DILocalVariable(name: "result", scope: !3586, file: !3587, line: 60, type: !47)
!3635 = !DILocation(line: 56, column: 19, scope: !3586)
!3636 = !DILocation(line: 58, column: 7, scope: !3586)
!3637 = !DILocation(line: 60, column: 7, scope: !3586)
!3638 = !DILocation(line: 63, column: 8, scope: !3586)
!3639 = !DILocation(line: 59, column: 7, scope: !3586)
!3640 = !DILocation(line: 64, column: 10, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3586, file: !3587, line: 64, column: 7)
!3642 = !DILocation(line: 64, column: 7, scope: !3586)
!3643 = !DILocation(line: 65, column: 12, scope: !3641)
!3644 = !DILocation(line: 65, column: 5, scope: !3641)
!3645 = !DILocation(line: 70, column: 9, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3586, file: !3587, line: 70, column: 7)
!3647 = !DILocation(line: 70, column: 23, scope: !3646)
!3648 = !DILocation(line: 70, column: 33, scope: !3646)
!3649 = !DILocation(line: 70, column: 26, scope: !3646)
!3650 = !DILocation(line: 70, column: 59, scope: !3646)
!3651 = !DILocation(line: 71, column: 7, scope: !3646)
!3652 = !DILocation(line: 71, column: 10, scope: !3646)
!3653 = !DILocation(line: 70, column: 7, scope: !3586)
!3654 = !DILocation(line: 98, column: 12, scope: !3586)
!3655 = !DILocation(line: 103, column: 7, scope: !3586)
!3656 = !DILocation(line: 72, column: 19, scope: !3646)
!3657 = !DILocation(line: 103, column: 19, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3586, file: !3587, line: 103, column: 7)
!3659 = !DILocation(line: 105, column: 13, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3658, file: !3587, line: 104, column: 5)
!3661 = !DILocation(line: 107, column: 5, scope: !3660)
!3662 = !DILocation(line: 110, column: 1, scope: !3586)
!3663 = distinct !DISubprogram(name: "rpl_fflush", scope: !3664, file: !3664, line: 127, type: !3665, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !668, variables: !3707)
!3664 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!47, !3667}
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !3669)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 241, size: 1728, elements: !3670)
!3670 = !{!3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3669, file: !111, line: 242, baseType: !47, size: 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3669, file: !111, line: 247, baseType: !44, size: 64, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3669, file: !111, line: 248, baseType: !44, size: 64, offset: 128)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3669, file: !111, line: 249, baseType: !44, size: 64, offset: 192)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3669, file: !111, line: 250, baseType: !44, size: 64, offset: 256)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3669, file: !111, line: 251, baseType: !44, size: 64, offset: 320)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3669, file: !111, line: 252, baseType: !44, size: 64, offset: 384)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3669, file: !111, line: 253, baseType: !44, size: 64, offset: 448)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3669, file: !111, line: 254, baseType: !44, size: 64, offset: 512)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3669, file: !111, line: 256, baseType: !44, size: 64, offset: 576)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3669, file: !111, line: 257, baseType: !44, size: 64, offset: 640)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3669, file: !111, line: 258, baseType: !44, size: 64, offset: 704)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3669, file: !111, line: 260, baseType: !3684, size: 64, offset: 768)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !111, line: 156, size: 192, elements: !3686)
!3686 = !{!3687, !3688, !3690}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3685, file: !111, line: 157, baseType: !3684, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3685, file: !111, line: 158, baseType: !3689, size: 64, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3685, file: !111, line: 162, baseType: !47, size: 32, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3669, file: !111, line: 262, baseType: !3689, size: 64, offset: 832)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3669, file: !111, line: 264, baseType: !47, size: 32, offset: 896)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3669, file: !111, line: 268, baseType: !47, size: 32, offset: 928)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3669, file: !111, line: 270, baseType: !137, size: 64, offset: 960)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3669, file: !111, line: 274, baseType: !48, size: 16, offset: 1024)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3669, file: !111, line: 275, baseType: !142, size: 8, offset: 1040)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3669, file: !111, line: 276, baseType: !144, size: 8, offset: 1048)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3669, file: !111, line: 280, baseType: !148, size: 64, offset: 1088)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3669, file: !111, line: 289, baseType: !151, size: 64, offset: 1152)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3669, file: !111, line: 297, baseType: !46, size: 64, offset: 1216)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3669, file: !111, line: 298, baseType: !46, size: 64, offset: 1280)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3669, file: !111, line: 299, baseType: !46, size: 64, offset: 1344)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3669, file: !111, line: 300, baseType: !46, size: 64, offset: 1408)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3669, file: !111, line: 302, baseType: !49, size: 64, offset: 1472)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3669, file: !111, line: 303, baseType: !47, size: 32, offset: 1536)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3669, file: !111, line: 305, baseType: !159, size: 160, offset: 1568)
!3707 = !{!3708}
!3708 = !DILocalVariable(name: "stream", arg: 1, scope: !3663, file: !3664, line: 127, type: !3667)
!3709 = !DILocation(line: 127, column: 19, scope: !3663)
!3710 = !DILocation(line: 148, column: 14, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3663, file: !3664, line: 148, column: 7)
!3712 = !DILocation(line: 148, column: 22, scope: !3711)
!3713 = !DILocation(line: 148, column: 27, scope: !3711)
!3714 = !DILocation(line: 148, column: 7, scope: !3663)
!3715 = !DILocation(line: 149, column: 12, scope: !3711)
!3716 = !DILocation(line: 149, column: 5, scope: !3711)
!3717 = !DILocalVariable(name: "fp", arg: 1, scope: !3718, file: !3664, line: 40, type: !3667)
!3718 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3664, file: !3664, line: 40, type: !3719, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !668, variables: !3721)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{null, !3667}
!3721 = !{!3717}
!3722 = !DILocation(line: 40, column: 48, scope: !3718, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 153, column: 3, scope: !3663)
!3724 = !DILocation(line: 42, column: 11, scope: !3725, inlinedAt: !3723)
!3725 = distinct !DILexicalBlock(scope: !3718, file: !3664, line: 42, column: 7)
!3726 = !DILocation(line: 42, column: 18, scope: !3725, inlinedAt: !3723)
!3727 = !DILocation(line: 42, column: 7, scope: !3718, inlinedAt: !3723)
!3728 = !DILocation(line: 44, column: 5, scope: !3725, inlinedAt: !3723)
!3729 = !DILocation(line: 155, column: 10, scope: !3663)
!3730 = !DILocation(line: 155, column: 3, scope: !3663)
!3731 = !DILocation(line: 229, column: 1, scope: !3663)
!3732 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3733, file: !3733, line: 28, type: !3734, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !670, variables: !3776)
!3733 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!47, !3736, !1053, !47}
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !3738)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 241, size: 1728, elements: !3739)
!3739 = !{!3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3738, file: !111, line: 242, baseType: !47, size: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3738, file: !111, line: 247, baseType: !44, size: 64, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3738, file: !111, line: 248, baseType: !44, size: 64, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3738, file: !111, line: 249, baseType: !44, size: 64, offset: 192)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3738, file: !111, line: 250, baseType: !44, size: 64, offset: 256)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3738, file: !111, line: 251, baseType: !44, size: 64, offset: 320)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3738, file: !111, line: 252, baseType: !44, size: 64, offset: 384)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3738, file: !111, line: 253, baseType: !44, size: 64, offset: 448)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3738, file: !111, line: 254, baseType: !44, size: 64, offset: 512)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3738, file: !111, line: 256, baseType: !44, size: 64, offset: 576)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3738, file: !111, line: 257, baseType: !44, size: 64, offset: 640)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3738, file: !111, line: 258, baseType: !44, size: 64, offset: 704)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3738, file: !111, line: 260, baseType: !3753, size: 64, offset: 768)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !111, line: 156, size: 192, elements: !3755)
!3755 = !{!3756, !3757, !3759}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3754, file: !111, line: 157, baseType: !3753, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3754, file: !111, line: 158, baseType: !3758, size: 64, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3754, file: !111, line: 162, baseType: !47, size: 32, offset: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3738, file: !111, line: 262, baseType: !3758, size: 64, offset: 832)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3738, file: !111, line: 264, baseType: !47, size: 32, offset: 896)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3738, file: !111, line: 268, baseType: !47, size: 32, offset: 928)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3738, file: !111, line: 270, baseType: !137, size: 64, offset: 960)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3738, file: !111, line: 274, baseType: !48, size: 16, offset: 1024)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3738, file: !111, line: 275, baseType: !142, size: 8, offset: 1040)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3738, file: !111, line: 276, baseType: !144, size: 8, offset: 1048)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3738, file: !111, line: 280, baseType: !148, size: 64, offset: 1088)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3738, file: !111, line: 289, baseType: !151, size: 64, offset: 1152)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3738, file: !111, line: 297, baseType: !46, size: 64, offset: 1216)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3738, file: !111, line: 298, baseType: !46, size: 64, offset: 1280)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3738, file: !111, line: 299, baseType: !46, size: 64, offset: 1344)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3738, file: !111, line: 300, baseType: !46, size: 64, offset: 1408)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3738, file: !111, line: 302, baseType: !49, size: 64, offset: 1472)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3738, file: !111, line: 303, baseType: !47, size: 32, offset: 1536)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3738, file: !111, line: 305, baseType: !159, size: 160, offset: 1568)
!3776 = !{!3777, !3778, !3779, !3780}
!3777 = !DILocalVariable(name: "fp", arg: 1, scope: !3732, file: !3733, line: 28, type: !3736)
!3778 = !DILocalVariable(name: "offset", arg: 2, scope: !3732, file: !3733, line: 28, type: !1053)
!3779 = !DILocalVariable(name: "whence", arg: 3, scope: !3732, file: !3733, line: 28, type: !47)
!3780 = !DILocalVariable(name: "pos", scope: !3781, file: !3733, line: 116, type: !1053)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !3733, line: 112, column: 5)
!3782 = distinct !DILexicalBlock(scope: !3732, file: !3733, line: 51, column: 7)
!3783 = !DILocation(line: 28, column: 15, scope: !3732)
!3784 = !DILocation(line: 28, column: 25, scope: !3732)
!3785 = !DILocation(line: 28, column: 37, scope: !3732)
!3786 = !DILocation(line: 51, column: 11, scope: !3782)
!3787 = !DILocation(line: 51, column: 31, scope: !3782)
!3788 = !DILocation(line: 51, column: 24, scope: !3782)
!3789 = !DILocation(line: 52, column: 7, scope: !3782)
!3790 = !DILocation(line: 52, column: 14, scope: !3782)
!3791 = !DILocation(line: 52, column: 35, scope: !3782)
!3792 = !{!848, !698, i64 32}
!3793 = !DILocation(line: 52, column: 28, scope: !3782)
!3794 = !DILocation(line: 53, column: 7, scope: !3782)
!3795 = !DILocation(line: 53, column: 14, scope: !3782)
!3796 = !{!848, !698, i64 72}
!3797 = !DILocation(line: 53, column: 28, scope: !3782)
!3798 = !DILocation(line: 51, column: 7, scope: !3732)
!3799 = !DILocation(line: 116, column: 26, scope: !3781)
!3800 = !DILocation(line: 116, column: 19, scope: !3781)
!3801 = !DILocation(line: 116, column: 13, scope: !3781)
!3802 = !DILocation(line: 117, column: 15, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3781, file: !3733, line: 117, column: 11)
!3804 = !DILocation(line: 117, column: 11, scope: !3781)
!3805 = !DILocation(line: 127, column: 11, scope: !3781)
!3806 = !DILocation(line: 127, column: 18, scope: !3781)
!3807 = !DILocation(line: 128, column: 11, scope: !3781)
!3808 = !DILocation(line: 128, column: 19, scope: !3781)
!3809 = !{!848, !849, i64 144}
!3810 = !DILocation(line: 159, column: 7, scope: !3781)
!3811 = !DILocation(line: 161, column: 10, scope: !3732)
!3812 = !DILocation(line: 161, column: 3, scope: !3732)
!3813 = !DILocation(line: 162, column: 1, scope: !3732)
!3814 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3815, file: !3815, line: 334, type: !3816, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !3830)
!3815 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!49, !3818, !68, !49, !3819}
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1357, line: 6, baseType: !3821)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1359, line: 21, baseType: !3822)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1359, line: 13, size: 64, elements: !3823)
!3823 = !{!3824, !3825}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3822, file: !1359, line: 15, baseType: !47, size: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3822, file: !1359, line: 20, baseType: !3826, size: 32, offset: 32)
!3826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3822, file: !1359, line: 16, size: 32, elements: !3827)
!3827 = !{!3828, !3829}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3826, file: !1359, line: 18, baseType: !236, size: 32)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3826, file: !1359, line: 19, baseType: !1368, size: 32)
!3830 = !{!3831, !3832, !3833, !3834, !3835, !3836, !3837}
!3831 = !DILocalVariable(name: "pwc", arg: 1, scope: !3814, file: !3815, line: 334, type: !3818)
!3832 = !DILocalVariable(name: "s", arg: 2, scope: !3814, file: !3815, line: 334, type: !68)
!3833 = !DILocalVariable(name: "n", arg: 3, scope: !3814, file: !3815, line: 334, type: !49)
!3834 = !DILocalVariable(name: "ps", arg: 4, scope: !3814, file: !3815, line: 334, type: !3819)
!3835 = !DILocalVariable(name: "ret", scope: !3814, file: !3815, line: 336, type: !49)
!3836 = !DILocalVariable(name: "wc", scope: !3814, file: !3815, line: 337, type: !1373)
!3837 = !DILocalVariable(name: "uc", scope: !3838, file: !3815, line: 398, type: !53)
!3838 = distinct !DILexicalBlock(scope: !3839, file: !3815, line: 397, column: 5)
!3839 = distinct !DILexicalBlock(scope: !3814, file: !3815, line: 396, column: 7)
!3840 = !DILocation(line: 334, column: 23, scope: !3814)
!3841 = !DILocation(line: 334, column: 40, scope: !3814)
!3842 = !DILocation(line: 334, column: 50, scope: !3814)
!3843 = !DILocation(line: 334, column: 64, scope: !3814)
!3844 = !DILocation(line: 337, column: 3, scope: !3814)
!3845 = !DILocation(line: 353, column: 9, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3814, file: !3815, line: 353, column: 7)
!3847 = !DILocation(line: 353, column: 7, scope: !3814)
!3848 = !DILocation(line: 388, column: 9, scope: !3814)
!3849 = !DILocation(line: 336, column: 10, scope: !3814)
!3850 = !DILocation(line: 396, column: 19, scope: !3839)
!3851 = !DILocation(line: 396, column: 31, scope: !3839)
!3852 = !DILocation(line: 396, column: 26, scope: !3839)
!3853 = !DILocation(line: 396, column: 41, scope: !3839)
!3854 = !DILocation(line: 396, column: 7, scope: !3814)
!3855 = !DILocation(line: 398, column: 26, scope: !3838)
!3856 = !DILocation(line: 398, column: 21, scope: !3838)
!3857 = !DILocation(line: 399, column: 14, scope: !3838)
!3858 = !DILocation(line: 399, column: 12, scope: !3838)
!3859 = !DILocation(line: 405, column: 1, scope: !3814)
!3860 = distinct !DISubprogram(name: "close_stream", scope: !3861, file: !3861, line: 56, type: !3862, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !675, variables: !3904)
!3861 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!47, !3864}
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !3866)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 241, size: 1728, elements: !3867)
!3867 = !{!3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3866, file: !111, line: 242, baseType: !47, size: 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3866, file: !111, line: 247, baseType: !44, size: 64, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3866, file: !111, line: 248, baseType: !44, size: 64, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3866, file: !111, line: 249, baseType: !44, size: 64, offset: 192)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3866, file: !111, line: 250, baseType: !44, size: 64, offset: 256)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3866, file: !111, line: 251, baseType: !44, size: 64, offset: 320)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3866, file: !111, line: 252, baseType: !44, size: 64, offset: 384)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3866, file: !111, line: 253, baseType: !44, size: 64, offset: 448)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3866, file: !111, line: 254, baseType: !44, size: 64, offset: 512)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3866, file: !111, line: 256, baseType: !44, size: 64, offset: 576)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3866, file: !111, line: 257, baseType: !44, size: 64, offset: 640)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3866, file: !111, line: 258, baseType: !44, size: 64, offset: 704)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3866, file: !111, line: 260, baseType: !3881, size: 64, offset: 768)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !111, line: 156, size: 192, elements: !3883)
!3883 = !{!3884, !3885, !3887}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3882, file: !111, line: 157, baseType: !3881, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3882, file: !111, line: 158, baseType: !3886, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3882, file: !111, line: 162, baseType: !47, size: 32, offset: 128)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3866, file: !111, line: 262, baseType: !3886, size: 64, offset: 832)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3866, file: !111, line: 264, baseType: !47, size: 32, offset: 896)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3866, file: !111, line: 268, baseType: !47, size: 32, offset: 928)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3866, file: !111, line: 270, baseType: !137, size: 64, offset: 960)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3866, file: !111, line: 274, baseType: !48, size: 16, offset: 1024)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3866, file: !111, line: 275, baseType: !142, size: 8, offset: 1040)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3866, file: !111, line: 276, baseType: !144, size: 8, offset: 1048)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3866, file: !111, line: 280, baseType: !148, size: 64, offset: 1088)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3866, file: !111, line: 289, baseType: !151, size: 64, offset: 1152)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3866, file: !111, line: 297, baseType: !46, size: 64, offset: 1216)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3866, file: !111, line: 298, baseType: !46, size: 64, offset: 1280)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3866, file: !111, line: 299, baseType: !46, size: 64, offset: 1344)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3866, file: !111, line: 300, baseType: !46, size: 64, offset: 1408)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3866, file: !111, line: 302, baseType: !49, size: 64, offset: 1472)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3866, file: !111, line: 303, baseType: !47, size: 32, offset: 1536)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3866, file: !111, line: 305, baseType: !159, size: 160, offset: 1568)
!3904 = !{!3905, !3906, !3908, !3909}
!3905 = !DILocalVariable(name: "stream", arg: 1, scope: !3860, file: !3861, line: 56, type: !3864)
!3906 = !DILocalVariable(name: "some_pending", scope: !3860, file: !3861, line: 58, type: !3907)
!3907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!3908 = !DILocalVariable(name: "prev_fail", scope: !3860, file: !3861, line: 59, type: !3907)
!3909 = !DILocalVariable(name: "fclose_fail", scope: !3860, file: !3861, line: 60, type: !3907)
!3910 = !DILocation(line: 56, column: 21, scope: !3860)
!3911 = !DILocation(line: 58, column: 30, scope: !3860)
!3912 = !DILocalVariable(name: "__stream", arg: 1, scope: !3913, file: !840, line: 132, type: !3864)
!3913 = distinct !DISubprogram(name: "ferror_unlocked", scope: !840, file: !840, line: 132, type: !3862, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !675, variables: !3914)
!3914 = !{!3912}
!3915 = !DILocation(line: 132, column: 1, scope: !3913, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 59, column: 27, scope: !3860)
!3917 = !DILocation(line: 134, column: 10, scope: !3913, inlinedAt: !3916)
!3918 = !DILocation(line: 59, column: 43, scope: !3860)
!3919 = !DILocation(line: 60, column: 29, scope: !3860)
!3920 = !DILocation(line: 60, column: 45, scope: !3860)
!3921 = !DILocation(line: 70, column: 17, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3860, file: !3861, line: 70, column: 7)
!3923 = !DILocation(line: 58, column: 50, scope: !3860)
!3924 = !DILocation(line: 70, column: 33, scope: !3922)
!3925 = !DILocation(line: 70, column: 53, scope: !3922)
!3926 = !DILocation(line: 70, column: 59, scope: !3922)
!3927 = !DILocation(line: 70, column: 7, scope: !3860)
!3928 = !DILocation(line: 72, column: 11, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3922, file: !3861, line: 71, column: 5)
!3930 = !DILocation(line: 73, column: 9, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3929, file: !3861, line: 72, column: 11)
!3932 = !DILocation(line: 73, column: 15, scope: !3931)
!3933 = !DILocation(line: 78, column: 1, scope: !3860)
!3934 = distinct !DISubprogram(name: "hard_locale", scope: !3935, file: !3935, line: 38, type: !3936, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !677, variables: !3938)
!3935 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!57, !47}
!3938 = !{!3939, !3940, !3941}
!3939 = !DILocalVariable(name: "category", arg: 1, scope: !3934, file: !3935, line: 38, type: !47)
!3940 = !DILocalVariable(name: "hard", scope: !3934, file: !3935, line: 40, type: !57)
!3941 = !DILocalVariable(name: "p", scope: !3934, file: !3935, line: 41, type: !68)
!3942 = !DILocation(line: 38, column: 18, scope: !3934)
!3943 = !DILocation(line: 40, column: 8, scope: !3934)
!3944 = !DILocation(line: 41, column: 19, scope: !3934)
!3945 = !DILocation(line: 41, column: 15, scope: !3934)
!3946 = !DILocation(line: 43, column: 7, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3934, file: !3935, line: 43, column: 7)
!3948 = !DILocation(line: 43, column: 7, scope: !3934)
!3949 = !DILocation(line: 47, column: 15, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3951, file: !3935, line: 47, column: 15)
!3951 = distinct !DILexicalBlock(scope: !3952, file: !3935, line: 46, column: 9)
!3952 = distinct !DILexicalBlock(scope: !3953, file: !3935, line: 45, column: 11)
!3953 = distinct !DILexicalBlock(scope: !3947, file: !3935, line: 44, column: 5)
!3954 = !DILocation(line: 47, column: 31, scope: !3950)
!3955 = !DILocation(line: 47, column: 36, scope: !3950)
!3956 = !DILocation(line: 47, column: 39, scope: !3950)
!3957 = !DILocation(line: 47, column: 59, scope: !3950)
!3958 = !DILocation(line: 47, column: 15, scope: !3951)
!3959 = !DILocation(line: 48, column: 13, scope: !3950)
!3960 = !DILocation(line: 71, column: 3, scope: !3934)
!3961 = distinct !DISubprogram(name: "locale_charset", scope: !617, file: !617, line: 393, type: !3962, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !274, variables: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!68}
!3964 = !{!3965, !3966}
!3965 = !DILocalVariable(name: "codeset", scope: !3961, file: !617, line: 395, type: !68)
!3966 = !DILocalVariable(name: "aliases", scope: !3961, file: !617, line: 396, type: !68)
!3967 = !DILocalVariable(name: "buf1", scope: !3968, file: !617, line: 196, type: !4035)
!3968 = distinct !DILexicalBlock(scope: !3969, file: !617, line: 194, column: 21)
!3969 = distinct !DILexicalBlock(scope: !3970, file: !617, line: 193, column: 19)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !617, line: 193, column: 19)
!3971 = distinct !DILexicalBlock(scope: !3972, file: !617, line: 188, column: 17)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !617, line: 181, column: 19)
!3973 = distinct !DILexicalBlock(scope: !3974, file: !617, line: 177, column: 13)
!3974 = distinct !DILexicalBlock(scope: !3975, file: !617, line: 173, column: 15)
!3975 = distinct !DILexicalBlock(scope: !3976, file: !617, line: 161, column: 9)
!3976 = distinct !DILexicalBlock(scope: !3977, file: !617, line: 157, column: 11)
!3977 = distinct !DILexicalBlock(scope: !3978, file: !617, line: 130, column: 5)
!3978 = distinct !DILexicalBlock(scope: !3979, file: !617, line: 129, column: 7)
!3979 = distinct !DISubprogram(name: "get_charset_aliases", scope: !617, file: !617, line: 124, type: !3962, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !274, variables: !3980)
!3980 = !{!3981, !3982, !3983, !3984, !3985, !3987, !3988, !3989, !3990, !4031, !4032, !4033, !3967, !4034, !4038, !4039, !4040}
!3981 = !DILocalVariable(name: "cp", scope: !3979, file: !617, line: 126, type: !68)
!3982 = !DILocalVariable(name: "dir", scope: !3977, file: !617, line: 132, type: !68)
!3983 = !DILocalVariable(name: "base", scope: !3977, file: !617, line: 133, type: !68)
!3984 = !DILocalVariable(name: "file_name", scope: !3977, file: !617, line: 134, type: !44)
!3985 = !DILocalVariable(name: "dir_len", scope: !3986, file: !617, line: 144, type: !49)
!3986 = distinct !DILexicalBlock(scope: !3977, file: !617, line: 143, column: 7)
!3987 = !DILocalVariable(name: "base_len", scope: !3986, file: !617, line: 145, type: !49)
!3988 = !DILocalVariable(name: "add_slash", scope: !3986, file: !617, line: 146, type: !47)
!3989 = !DILocalVariable(name: "fd", scope: !3975, file: !617, line: 162, type: !47)
!3990 = !DILocalVariable(name: "fp", scope: !3973, file: !617, line: 178, type: !3991)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !3993)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 241, size: 1728, elements: !3994)
!3994 = !{!3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3993, file: !111, line: 242, baseType: !47, size: 32)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3993, file: !111, line: 247, baseType: !44, size: 64, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3993, file: !111, line: 248, baseType: !44, size: 64, offset: 128)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3993, file: !111, line: 249, baseType: !44, size: 64, offset: 192)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3993, file: !111, line: 250, baseType: !44, size: 64, offset: 256)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3993, file: !111, line: 251, baseType: !44, size: 64, offset: 320)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3993, file: !111, line: 252, baseType: !44, size: 64, offset: 384)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3993, file: !111, line: 253, baseType: !44, size: 64, offset: 448)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3993, file: !111, line: 254, baseType: !44, size: 64, offset: 512)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3993, file: !111, line: 256, baseType: !44, size: 64, offset: 576)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3993, file: !111, line: 257, baseType: !44, size: 64, offset: 640)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3993, file: !111, line: 258, baseType: !44, size: 64, offset: 704)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3993, file: !111, line: 260, baseType: !4008, size: 64, offset: 768)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !111, line: 156, size: 192, elements: !4010)
!4010 = !{!4011, !4012, !4014}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4009, file: !111, line: 157, baseType: !4008, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4009, file: !111, line: 158, baseType: !4013, size: 64, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4009, file: !111, line: 162, baseType: !47, size: 32, offset: 128)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3993, file: !111, line: 262, baseType: !4013, size: 64, offset: 832)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3993, file: !111, line: 264, baseType: !47, size: 32, offset: 896)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3993, file: !111, line: 268, baseType: !47, size: 32, offset: 928)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3993, file: !111, line: 270, baseType: !137, size: 64, offset: 960)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3993, file: !111, line: 274, baseType: !48, size: 16, offset: 1024)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3993, file: !111, line: 275, baseType: !142, size: 8, offset: 1040)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3993, file: !111, line: 276, baseType: !144, size: 8, offset: 1048)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3993, file: !111, line: 280, baseType: !148, size: 64, offset: 1088)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3993, file: !111, line: 289, baseType: !151, size: 64, offset: 1152)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3993, file: !111, line: 297, baseType: !46, size: 64, offset: 1216)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3993, file: !111, line: 298, baseType: !46, size: 64, offset: 1280)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3993, file: !111, line: 299, baseType: !46, size: 64, offset: 1344)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3993, file: !111, line: 300, baseType: !46, size: 64, offset: 1408)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3993, file: !111, line: 302, baseType: !49, size: 64, offset: 1472)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3993, file: !111, line: 303, baseType: !47, size: 32, offset: 1536)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3993, file: !111, line: 305, baseType: !159, size: 160, offset: 1568)
!4031 = !DILocalVariable(name: "res_ptr", scope: !3971, file: !617, line: 190, type: !44)
!4032 = !DILocalVariable(name: "res_size", scope: !3971, file: !617, line: 191, type: !49)
!4033 = !DILocalVariable(name: "c", scope: !3968, file: !617, line: 195, type: !47)
!4034 = !DILocalVariable(name: "buf2", scope: !3968, file: !617, line: 197, type: !4035)
!4035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 408, elements: !4036)
!4036 = !{!4037}
!4037 = !DISubrange(count: 51)
!4038 = !DILocalVariable(name: "l1", scope: !3968, file: !617, line: 198, type: !49)
!4039 = !DILocalVariable(name: "l2", scope: !3968, file: !617, line: 198, type: !49)
!4040 = !DILocalVariable(name: "old_res_ptr", scope: !3968, file: !617, line: 199, type: !44)
!4041 = !DILocation(line: 196, column: 28, scope: !3968, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 589, column: 18, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !3961, file: !617, line: 589, column: 3)
!4044 = !DILocation(line: 197, column: 28, scope: !3968, inlinedAt: !4042)
!4045 = !DILocation(line: 403, column: 13, scope: !3961)
!4046 = !DILocation(line: 395, column: 15, scope: !3961)
!4047 = !DILocation(line: 584, column: 15, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !3961, file: !617, line: 584, column: 7)
!4049 = !DILocation(line: 584, column: 7, scope: !3961)
!4050 = !DILocation(line: 128, column: 8, scope: !3979, inlinedAt: !4042)
!4051 = !DILocation(line: 126, column: 15, scope: !3979, inlinedAt: !4042)
!4052 = !DILocation(line: 129, column: 10, scope: !3978, inlinedAt: !4042)
!4053 = !DILocation(line: 129, column: 7, scope: !3979, inlinedAt: !4042)
!4054 = !DILocation(line: 138, column: 13, scope: !3977, inlinedAt: !4042)
!4055 = !DILocation(line: 132, column: 19, scope: !3977, inlinedAt: !4042)
!4056 = !DILocation(line: 139, column: 15, scope: !4057, inlinedAt: !4042)
!4057 = distinct !DILexicalBlock(scope: !3977, file: !617, line: 139, column: 11)
!4058 = !DILocation(line: 139, column: 23, scope: !4057, inlinedAt: !4042)
!4059 = !DILocation(line: 139, column: 26, scope: !4057, inlinedAt: !4042)
!4060 = !DILocation(line: 139, column: 33, scope: !4057, inlinedAt: !4042)
!4061 = !DILocation(line: 139, column: 11, scope: !3977, inlinedAt: !4042)
!4062 = !DILocation(line: 140, column: 9, scope: !4057, inlinedAt: !4042)
!4063 = !DILocation(line: 144, column: 26, scope: !3986, inlinedAt: !4042)
!4064 = !DILocation(line: 144, column: 16, scope: !3986, inlinedAt: !4042)
!4065 = !DILocation(line: 145, column: 16, scope: !3986, inlinedAt: !4042)
!4066 = !DILocation(line: 146, column: 34, scope: !3986, inlinedAt: !4042)
!4067 = !DILocation(line: 146, column: 38, scope: !3986, inlinedAt: !4042)
!4068 = !DILocation(line: 146, column: 42, scope: !3986, inlinedAt: !4042)
!4069 = !DILocation(line: 147, column: 48, scope: !3986, inlinedAt: !4042)
!4070 = !DILocation(line: 147, column: 46, scope: !3986, inlinedAt: !4042)
!4071 = !DILocation(line: 147, column: 69, scope: !3986, inlinedAt: !4042)
!4072 = !DILocation(line: 147, column: 30, scope: !3986, inlinedAt: !4042)
!4073 = !DILocation(line: 134, column: 13, scope: !3977, inlinedAt: !4042)
!4074 = !DILocation(line: 148, column: 13, scope: !3986, inlinedAt: !4042)
!4075 = !DILocation(line: 150, column: 13, scope: !4076, inlinedAt: !4042)
!4076 = distinct !DILexicalBlock(scope: !4077, file: !617, line: 149, column: 11)
!4077 = distinct !DILexicalBlock(scope: !3986, file: !617, line: 148, column: 13)
!4078 = !DILocation(line: 151, column: 17, scope: !4076, inlinedAt: !4042)
!4079 = !DILocation(line: 152, column: 34, scope: !4080, inlinedAt: !4042)
!4080 = distinct !DILexicalBlock(scope: !4076, file: !617, line: 151, column: 17)
!4081 = !DILocation(line: 153, column: 41, scope: !4076, inlinedAt: !4042)
!4082 = !DILocation(line: 153, column: 13, scope: !4076, inlinedAt: !4042)
!4083 = !DILocation(line: 157, column: 11, scope: !3977, inlinedAt: !4042)
!4084 = !DILocation(line: 171, column: 16, scope: !3975, inlinedAt: !4042)
!4085 = !DILocation(line: 162, column: 15, scope: !3975, inlinedAt: !4042)
!4086 = !DILocation(line: 173, column: 18, scope: !3974, inlinedAt: !4042)
!4087 = !DILocation(line: 173, column: 15, scope: !3975, inlinedAt: !4042)
!4088 = !DILocation(line: 180, column: 20, scope: !3973, inlinedAt: !4042)
!4089 = !DILocation(line: 178, column: 21, scope: !3973, inlinedAt: !4042)
!4090 = !DILocation(line: 181, column: 22, scope: !3972, inlinedAt: !4042)
!4091 = !DILocation(line: 181, column: 19, scope: !3973, inlinedAt: !4042)
!4092 = !DILocation(line: 184, column: 19, scope: !4093, inlinedAt: !4042)
!4093 = distinct !DILexicalBlock(scope: !3972, file: !617, line: 182, column: 17)
!4094 = !DILocation(line: 186, column: 17, scope: !4093, inlinedAt: !4042)
!4095 = !DILocation(line: 190, column: 25, scope: !3971, inlinedAt: !4042)
!4096 = !DILocation(line: 191, column: 26, scope: !3971, inlinedAt: !4042)
!4097 = !DILocation(line: 193, column: 19, scope: !3971, inlinedAt: !4042)
!4098 = !DILocation(line: 196, column: 23, scope: !3968, inlinedAt: !4042)
!4099 = !DILocation(line: 197, column: 23, scope: !3968, inlinedAt: !4042)
!4100 = !DILocalVariable(name: "__fp", arg: 1, scope: !4101, file: !840, line: 63, type: !3991)
!4101 = distinct !DISubprogram(name: "getc_unlocked", scope: !840, file: !840, line: 63, type: !4102, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !274, variables: !4104)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!47, !3991}
!4104 = !{!4100}
!4105 = !DILocation(line: 63, column: 22, scope: !4101, inlinedAt: !4106)
!4106 = distinct !DILocation(line: 201, column: 27, scope: !3968, inlinedAt: !4042)
!4107 = !DILocation(line: 65, column: 10, scope: !4101, inlinedAt: !4106)
!4108 = !DILocation(line: 195, column: 27, scope: !3968, inlinedAt: !4042)
!4109 = !DILocation(line: 202, column: 27, scope: !3968, inlinedAt: !4042)
!4110 = distinct !{!4110, !4111, !4114}
!4111 = !DILocation(line: 209, column: 27, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4113, file: !617, line: 207, column: 25)
!4113 = distinct !DILexicalBlock(scope: !3968, file: !617, line: 206, column: 27)
!4114 = !DILocation(line: 211, column: 58, scope: !4112)
!4115 = !DILocation(line: 65, column: 10, scope: !4101, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 210, column: 33, scope: !4112, inlinedAt: !4042)
!4117 = !DILocation(line: 63, column: 22, scope: !4101, inlinedAt: !4116)
!4118 = !DILocation(line: 210, column: 29, scope: !4112, inlinedAt: !4042)
!4119 = distinct !{!4119, !4120, !4121}
!4120 = !DILocation(line: 193, column: 19, scope: !3970)
!4121 = !DILocation(line: 241, column: 21, scope: !3970)
!4122 = !DILocation(line: 216, column: 23, scope: !3968, inlinedAt: !4042)
!4123 = !DILocation(line: 217, column: 27, scope: !4124, inlinedAt: !4042)
!4124 = distinct !DILexicalBlock(scope: !3968, file: !617, line: 217, column: 27)
!4125 = !DILocation(line: 217, column: 64, scope: !4124, inlinedAt: !4042)
!4126 = !DILocation(line: 217, column: 27, scope: !3968, inlinedAt: !4042)
!4127 = !DILocation(line: 219, column: 28, scope: !3968, inlinedAt: !4042)
!4128 = !DILocation(line: 198, column: 30, scope: !3968, inlinedAt: !4042)
!4129 = !DILocation(line: 220, column: 28, scope: !3968, inlinedAt: !4042)
!4130 = !DILocation(line: 198, column: 34, scope: !3968, inlinedAt: !4042)
!4131 = !DILocation(line: 199, column: 29, scope: !3968, inlinedAt: !4042)
!4132 = !DILocation(line: 222, column: 36, scope: !4133, inlinedAt: !4042)
!4133 = distinct !DILexicalBlock(scope: !3968, file: !617, line: 222, column: 27)
!4134 = !DILocation(line: 222, column: 27, scope: !3968, inlinedAt: !4042)
!4135 = !DILocation(line: 225, column: 63, scope: !4136, inlinedAt: !4042)
!4136 = distinct !DILexicalBlock(scope: !4133, file: !617, line: 223, column: 25)
!4137 = !DILocation(line: 225, column: 46, scope: !4136, inlinedAt: !4042)
!4138 = !DILocation(line: 226, column: 25, scope: !4136, inlinedAt: !4042)
!4139 = !DILocation(line: 229, column: 36, scope: !4140, inlinedAt: !4042)
!4140 = distinct !DILexicalBlock(scope: !4133, file: !617, line: 228, column: 25)
!4141 = !DILocation(line: 230, column: 73, scope: !4140, inlinedAt: !4042)
!4142 = !DILocation(line: 230, column: 46, scope: !4140, inlinedAt: !4042)
!4143 = !DILocation(line: 232, column: 35, scope: !4144, inlinedAt: !4042)
!4144 = distinct !DILexicalBlock(scope: !3968, file: !617, line: 232, column: 27)
!4145 = !DILocation(line: 232, column: 27, scope: !3968, inlinedAt: !4042)
!4146 = !DILocation(line: 236, column: 27, scope: !4147, inlinedAt: !4042)
!4147 = distinct !DILexicalBlock(scope: !4144, file: !617, line: 233, column: 25)
!4148 = !DILocation(line: 237, column: 27, scope: !4147, inlinedAt: !4042)
!4149 = !DILocation(line: 241, column: 21, scope: !3969, inlinedAt: !4042)
!4150 = !DILocation(line: 239, column: 39, scope: !3968, inlinedAt: !4042)
!4151 = !DILocation(line: 239, column: 50, scope: !3968, inlinedAt: !4042)
!4152 = !DILocation(line: 239, column: 61, scope: !3968, inlinedAt: !4042)
!4153 = !DILocalVariable(name: "__dest", arg: 1, scope: !4154, file: !4155, line: 88, type: !4158)
!4154 = distinct !DISubprogram(name: "strcpy", scope: !4155, file: !4155, line: 88, type: !4156, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !274, variables: !4159)
!4155 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!44, !4158, !3391}
!4158 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!4159 = !{!4153, !4160}
!4160 = !DILocalVariable(name: "__src", arg: 2, scope: !4154, file: !4155, line: 88, type: !3391)
!4161 = !DILocation(line: 88, column: 1, scope: !4154, inlinedAt: !4162)
!4162 = distinct !DILocation(line: 239, column: 23, scope: !3968, inlinedAt: !4042)
!4163 = !DILocation(line: 90, column: 49, scope: !4154, inlinedAt: !4162)
!4164 = !DILocation(line: 90, column: 10, scope: !4154, inlinedAt: !4162)
!4165 = !DILocation(line: 88, column: 1, scope: !4154, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 240, column: 23, scope: !3968, inlinedAt: !4042)
!4167 = !DILocation(line: 90, column: 49, scope: !4154, inlinedAt: !4166)
!4168 = !DILocation(line: 90, column: 10, scope: !4154, inlinedAt: !4166)
!4169 = !DILocation(line: 193, column: 19, scope: !3969, inlinedAt: !4042)
!4170 = !DILocation(line: 242, column: 19, scope: !3971, inlinedAt: !4042)
!4171 = !DILocation(line: 243, column: 32, scope: !4172, inlinedAt: !4042)
!4172 = distinct !DILexicalBlock(scope: !3971, file: !617, line: 243, column: 23)
!4173 = !DILocation(line: 243, column: 23, scope: !3971, inlinedAt: !4042)
!4174 = !DILocation(line: 247, column: 33, scope: !4175, inlinedAt: !4042)
!4175 = distinct !DILexicalBlock(scope: !4172, file: !617, line: 246, column: 21)
!4176 = !DILocation(line: 247, column: 45, scope: !4175, inlinedAt: !4042)
!4177 = !DILocation(line: 253, column: 11, scope: !3975, inlinedAt: !4042)
!4178 = !DILocation(line: 377, column: 23, scope: !3977, inlinedAt: !4042)
!4179 = !DILocation(line: 378, column: 5, scope: !3977, inlinedAt: !4042)
!4180 = !DILocation(line: 396, column: 15, scope: !3961)
!4181 = !DILocation(line: 590, column: 8, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4043, file: !617, line: 589, column: 3)
!4183 = !DILocation(line: 590, column: 17, scope: !4182)
!4184 = !DILocation(line: 589, column: 3, scope: !4043)
!4185 = !DILocation(line: 592, column: 9, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4182, file: !617, line: 592, column: 9)
!4187 = !DILocation(line: 592, column: 35, scope: !4186)
!4188 = !DILocation(line: 593, column: 9, scope: !4186)
!4189 = !DILocation(line: 593, column: 24, scope: !4186)
!4190 = !DILocation(line: 593, column: 31, scope: !4186)
!4191 = !DILocation(line: 593, column: 34, scope: !4186)
!4192 = !DILocation(line: 593, column: 45, scope: !4186)
!4193 = !DILocation(line: 592, column: 9, scope: !4182)
!4194 = !DILocation(line: 595, column: 29, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4186, file: !617, line: 594, column: 7)
!4196 = !DILocation(line: 595, column: 27, scope: !4195)
!4197 = !DILocation(line: 595, column: 46, scope: !4195)
!4198 = !DILocation(line: 596, column: 9, scope: !4195)
!4199 = !DILocation(line: 591, column: 19, scope: !4182)
!4200 = !DILocation(line: 591, column: 36, scope: !4182)
!4201 = !DILocation(line: 591, column: 16, scope: !4182)
!4202 = !DILocation(line: 591, column: 52, scope: !4182)
!4203 = !DILocation(line: 591, column: 69, scope: !4182)
!4204 = !DILocation(line: 591, column: 49, scope: !4182)
!4205 = distinct !{!4205, !4184, !4206}
!4206 = !DILocation(line: 597, column: 7, scope: !4043)
!4207 = !DILocation(line: 602, column: 7, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !3961, file: !617, line: 602, column: 7)
!4209 = !DILocation(line: 602, column: 18, scope: !4208)
!4210 = !DILocation(line: 602, column: 7, scope: !3961)
!4211 = !DILocation(line: 612, column: 3, scope: !3961)
