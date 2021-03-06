; ModuleID = 'coreutils-8.30/src/fold.bc'
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
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"fold\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.27 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !0
@count_bytes = internal unnamed_addr global i1 false, align 1, !dbg !163
@break_spaces = internal unnamed_addr global i1 false, align 1, !dbg !164
@shortopts = internal constant [35 x i8] c"bsw:0::1::2::3::4::5::6::7::8::9::\00", align 16, !dbg !62
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !68
@optarg = external local_unnamed_addr global i8*, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid number of columns\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.36 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fold_file.allocated_out = internal global i64 0, align 8, !dbg !161
@fold_file.line_out = internal unnamed_addr global i8* null, align 8, !dbg !83
@.str.31 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"spaces\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), align 8, !dbg !165
@.str.38 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !171
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !176
@.str.41 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.42 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !179
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !186
@.str.52 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.53 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.54 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.58, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.59, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.64, i32 0, i32 0), i8* null], align 16, !dbg !193
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !205
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !212
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !224
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.68 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.69 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.70 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.71 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !231
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !238
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !226
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !240
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !246
@.str.1.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.117 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.118 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.134 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.138 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !710 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !715, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i32 %0, metadata !714, metadata !DIExpression()), !dbg !738
  %3 = icmp eq i32 %0, 0, !dbg !739
  br i1 %3, label %9, label %4, !dbg !740

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !741, !tbaa !743
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !741
  %7 = load i8*, i8** @program_name, align 8, !dbg !741, !tbaa !743
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !741
  br label %66, !dbg !741

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !747
  %11 = load i8*, i8** @program_name, align 8, !dbg !747, !tbaa !743
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !747
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !748
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !748, !tbaa !743
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !748
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !749
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !749, !tbaa !743
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #10, !dbg !749
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !754
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !754, !tbaa !743
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #10, !dbg !754
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !757
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !757, !tbaa !743
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !757
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !758
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !758, !tbaa !743
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !758
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !759
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !759, !tbaa !743
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !759
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !760
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #10, !dbg !760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %31, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !734
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !761
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !723, metadata !DIExpression()) #10, !dbg !762
  br label %33, !dbg !763

; <label>:33:                                     ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !723, metadata !DIExpression()) #10, !dbg !762
  %36 = tail call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %34) #14, !dbg !763
  %37 = icmp eq i32 %36, 0, !dbg !763
  br i1 %37, label %43, label %38, !dbg !764

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !765
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !723, metadata !DIExpression()) #10, !dbg !762
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !766
  %41 = load i8*, i8** %40, align 8, !dbg !766, !tbaa !767
  %42 = icmp eq i8* %41, null, !dbg !769
  br i1 %42, label %43, label %33, !dbg !770, !llvm.loop !771

; <label>:43:                                     ; preds = %38, %33
  %44 = phi %struct.infomap* [ %39, %38 ], [ %35, %33 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !723, metadata !DIExpression()) #10, !dbg !762
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !723, metadata !DIExpression()) #10, !dbg !762
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !774
  %46 = load i8*, i8** %45, align 8, !dbg !774, !tbaa !776
  %47 = icmp eq i8* %46, null, !dbg !777
  %48 = select i1 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %46, !dbg !778
  call void @llvm.dbg.value(metadata i8* %48, metadata !722, metadata !DIExpression()) #10, !dbg !779
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !780
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !780
  %51 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !781
  call void @llvm.dbg.value(metadata i8* %51, metadata !730, metadata !DIExpression()) #10, !dbg !782
  %52 = icmp eq i8* %51, null, !dbg !783
  br i1 %52, label %59, label %53, !dbg !785

; <label>:53:                                     ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #14, !dbg !786
  %55 = icmp eq i32 %54, 0, !dbg !786
  br i1 %55, label %59, label %56, !dbg !787

; <label>:56:                                     ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !788
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !788
  br label %59, !dbg !790

; <label>:59:                                     ; preds = %43, %53, %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !791
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !791
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !792
  %63 = icmp eq i8* %48, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), !dbg !792
  %64 = select i1 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !792
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* %48, i8* %64) #10, !dbg !792
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #10, !dbg !793
  br label %66

; <label>:66:                                     ; preds = %59, %4
  tail call void @exit(i32 %0) #15, !dbg !794
  unreachable, !dbg !794
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !795 {
  %3 = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !800, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i8** %1, metadata !801, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata i64 80, metadata !802, metadata !DIExpression()), !dbg !813
  %4 = load i8*, i8** %1, align 8, !dbg !814, !tbaa !743
  tail call void @set_program_name(i8* %4) #10, !dbg !815
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !816
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !817
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !818
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !819
  store i1 false, i1* @have_read_stdin, align 1
  store i1 false, i1* @count_bytes, align 1
  store i1 false, i1* @break_spaces, align 1
  call void @llvm.dbg.value(metadata i64 80, metadata !802, metadata !DIExpression()), !dbg !813
  %9 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @shortopts, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !820
  call void @llvm.dbg.value(metadata i32 %9, metadata !804, metadata !DIExpression()), !dbg !821
  %10 = icmp eq i32 %9, -1, !dbg !822
  br i1 %10, label %41, label %11, !dbg !823

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  br label %14, !dbg !823

; <label>:14:                                     ; preds = %11, %37
  %15 = phi i32 [ %9, %11 ], [ %39, %37 ]
  %16 = phi i64 [ 80, %11 ], [ %38, %37 ]
  call void @llvm.dbg.value(metadata i64 %16, metadata !802, metadata !DIExpression()), !dbg !813
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %12) #10, !dbg !824
  call void @llvm.dbg.declare(metadata [2 x i8]* %3, metadata !806, metadata !DIExpression()), !dbg !825
  switch i32 %15, label %36 [
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
    i32 -130, label %32
    i32 -131, label %33
  ], !dbg !826

; <label>:17:                                     ; preds = %14
  %18 = load i8*, i8** @optarg, align 8, !dbg !827, !tbaa !743
  br label %28, !dbg !826

; <label>:19:                                     ; preds = %14
  store i1 true, i1* @count_bytes, align 1
  br label %37, !dbg !829

; <label>:20:                                     ; preds = %14
  store i1 true, i1* @break_spaces, align 1
  br label %37, !dbg !830

; <label>:21:                                     ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %22 = load i8*, i8** @optarg, align 8, !dbg !831, !tbaa !743
  %23 = icmp eq i8* %22, null, !dbg !831
  br i1 %23, label %26, label %24, !dbg !833

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds i8, i8* %22, i64 -1, !dbg !834
  store i8* %25, i8** @optarg, align 8, !dbg !834, !tbaa !743
  br label %28, !dbg !835

; <label>:26:                                     ; preds = %21
  %27 = trunc i32 %15 to i8, !dbg !836
  store i8 %27, i8* %12, align 1, !dbg !838, !tbaa !839
  store i8 0, i8* %13, align 1, !dbg !840, !tbaa !839
  store i8* %12, i8** @optarg, align 8, !dbg !841, !tbaa !743
  br label %28

; <label>:28:                                     ; preds = %17, %24, %26
  %29 = phi i8* [ %18, %17 ], [ %25, %24 ], [ %12, %26 ], !dbg !827
  %30 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !842
  %31 = call i64 @xdectoumax(i8* %29, i64 1, i64 -10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* %30, i32 0) #10, !dbg !843
  call void @llvm.dbg.value(metadata i64 %31, metadata !802, metadata !DIExpression()), !dbg !813
  br label %37, !dbg !844

; <label>:32:                                     ; preds = %14
  call void @usage(i32 0) #16, !dbg !845
  unreachable, !dbg !845

; <label>:33:                                     ; preds = %14
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !846, !tbaa !743
  %35 = load i8*, i8** @Version, align 8, !dbg !846, !tbaa !743
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* null) #10, !dbg !846
  call void @exit(i32 0) #15, !dbg !846
  unreachable, !dbg !846

; <label>:36:                                     ; preds = %14
  call void @usage(i32 1) #16, !dbg !847
  unreachable, !dbg !847

; <label>:37:                                     ; preds = %28, %20, %19
  %38 = phi i64 [ %31, %28 ], [ %16, %20 ], [ %16, %19 ], !dbg !848
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %12) #10, !dbg !849
  call void @llvm.dbg.value(metadata i64 %38, metadata !802, metadata !DIExpression()), !dbg !813
  %39 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @shortopts, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !820
  call void @llvm.dbg.value(metadata i32 %39, metadata !804, metadata !DIExpression()), !dbg !821
  %40 = icmp eq i32 %39, -1, !dbg !822
  br i1 %40, label %41, label %14, !dbg !823, !llvm.loop !850

; <label>:41:                                     ; preds = %37, %2
  %42 = phi i64 [ 80, %2 ], [ %38, %37 ], !dbg !851
  call void @llvm.dbg.value(metadata i64 %42, metadata !802, metadata !DIExpression()), !dbg !813
  %43 = load i32, i32* @optind, align 4, !dbg !852, !tbaa !854
  %44 = icmp eq i32 %43, %0, !dbg !856
  br i1 %44, label %49, label %45, !dbg !857

; <label>:45:                                     ; preds = %41
  call void @llvm.dbg.value(metadata i8 1, metadata !805, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata i32 %43, metadata !803, metadata !DIExpression()), !dbg !859
  %46 = icmp slt i32 %43, %0, !dbg !860
  br i1 %46, label %47, label %63, !dbg !864

; <label>:47:                                     ; preds = %45
  %48 = sext i32 %43 to i64, !dbg !865
  br label %52, !dbg !865

; <label>:49:                                     ; preds = %41
  %50 = call fastcc zeroext i1 @fold_file(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i64 %42), !dbg !866
  %51 = zext i1 %50 to i8, !dbg !867
  call void @llvm.dbg.value(metadata i8 %51, metadata !805, metadata !DIExpression()), !dbg !858
  br label %63, !dbg !868

; <label>:52:                                     ; preds = %52, %47
  %53 = phi i64 [ %48, %47 ], [ %60, %52 ]
  %54 = phi i8 [ 1, %47 ], [ %59, %52 ]
  call void @llvm.dbg.value(metadata i8 %54, metadata !805, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata i64 %53, metadata !803, metadata !DIExpression()), !dbg !859
  %55 = getelementptr inbounds i8*, i8** %1, i64 %53, !dbg !865
  %56 = load i8*, i8** %55, align 8, !dbg !865, !tbaa !743
  %57 = call fastcc zeroext i1 @fold_file(i8* %56, i64 %42), !dbg !869
  %58 = zext i1 %57 to i8, !dbg !869
  %59 = and i8 %54, %58, !dbg !870
  %60 = add nsw i64 %53, 1, !dbg !871
  call void @llvm.dbg.value(metadata i8 %59, metadata !805, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata i32 undef, metadata !803, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !859
  %61 = trunc i64 %60 to i32, !dbg !860
  %62 = icmp eq i32 %61, %0, !dbg !860
  br i1 %62, label %63, label %52, !dbg !864, !llvm.loop !872

; <label>:63:                                     ; preds = %52, %45, %49
  %64 = phi i8 [ %51, %49 ], [ 1, %45 ], [ %59, %52 ], !dbg !874
  call void @llvm.dbg.value(metadata i8 %64, metadata !805, metadata !DIExpression()), !dbg !858
  %65 = load i1, i1* @have_read_stdin, align 1
  br i1 %65, label %66, label %73, !dbg !875

; <label>:66:                                     ; preds = %63
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !877, !tbaa !743
  %68 = call i32 @rpl_fclose(%struct._IO_FILE* %67) #10, !dbg !878
  %69 = icmp eq i32 %68, -1, !dbg !879
  br i1 %69, label %70, label %73, !dbg !880

; <label>:70:                                     ; preds = %66
  %71 = tail call i32* @__errno_location() #17, !dbg !881
  %72 = load i32, i32* %71, align 4, !dbg !881, !tbaa !854
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !881
  unreachable, !dbg !881

; <label>:73:                                     ; preds = %66, %63
  %74 = and i8 %64, 1, !dbg !882
  %75 = xor i8 %74, 1, !dbg !882
  %76 = zext i8 %75 to i32, !dbg !882
  ret i32 %76, !dbg !883
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
define internal fastcc zeroext i1 @fold_file(i8*, i64) unnamed_addr #7 !dbg !85 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !89, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i64 %1, metadata !90, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i64 0, metadata !148, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i64 0, metadata !149, metadata !DIExpression()), !dbg !887
  %3 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #14, !dbg !888
  %4 = icmp eq i32 %3, 0, !dbg !888
  br i1 %4, label %5, label %7, !dbg !890

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !891, !tbaa !743
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %6, metadata !91, metadata !DIExpression()), !dbg !893
  store i1 true, i1* @have_read_stdin, align 1
  br label %9, !dbg !894

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)), !dbg !895
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %8, metadata !91, metadata !DIExpression()), !dbg !893
  br label %9

; <label>:9:                                      ; preds = %7, %5
  %10 = phi %struct._IO_FILE* [ %6, %5 ], [ %8, %7 ], !dbg !896
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !91, metadata !DIExpression()), !dbg !893
  %11 = icmp eq %struct._IO_FILE* %10, null, !dbg !897
  br i1 %11, label %12, label %16, !dbg !899

; <label>:12:                                     ; preds = %9
  %13 = tail call i32* @__errno_location() #17, !dbg !900
  %14 = load i32, i32* %13, align 4, !dbg !900, !tbaa !854
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !902
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %15) #10, !dbg !903
  br label %174, !dbg !904

; <label>:16:                                     ; preds = %9
  tail call void @fadvise(%struct._IO_FILE* nonnull %10, i32 2) #10, !dbg !905
  %17 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 1
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 2
  br label %19, !dbg !906

; <label>:19:                                     ; preds = %48, %16
  %20 = phi i64 [ 0, %16 ], [ %49, %48 ], !dbg !907
  %21 = phi i64 [ 0, %16 ], [ %50, %48 ], !dbg !907
  call void @llvm.dbg.value(metadata i64 %21, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %20, metadata !148, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !908, metadata !DIExpression()) #10, !dbg !914
  %22 = load i8*, i8** %17, align 8, !dbg !916, !tbaa !917
  %23 = load i8*, i8** %18, align 8, !dbg !916, !tbaa !921
  %24 = icmp ult i8* %22, %23, !dbg !916
  br i1 %24, label %25, label %29, !dbg !916, !prof !922

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !916
  store i8* %26, i8** %17, align 8, !dbg !916, !tbaa !917
  %27 = load i8, i8* %22, align 1, !dbg !916, !tbaa !839
  %28 = zext i8 %27 to i32, !dbg !916
  call void @llvm.dbg.value(metadata i32 %30, metadata !147, metadata !DIExpression()), !dbg !923
  br label %32, !dbg !906

; <label>:29:                                     ; preds = %19
  %30 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %10) #10, !dbg !916
  call void @llvm.dbg.value(metadata i32 %30, metadata !147, metadata !DIExpression()), !dbg !923
  %31 = icmp eq i32 %30, -1, !dbg !924
  br i1 %31, label %146, label %32, !dbg !906

; <label>:32:                                     ; preds = %25, %29
  %33 = phi i32 [ %28, %25 ], [ %30, %29 ]
  %34 = add i64 %21, 1, !dbg !925
  %35 = load i64, i64* @fold_file.allocated_out, align 8, !dbg !927, !tbaa !928
  %36 = icmp ult i64 %34, %35, !dbg !929
  br i1 %36, label %40, label %37, !dbg !930

; <label>:37:                                     ; preds = %32
  %38 = load i8*, i8** @fold_file.line_out, align 8, !dbg !931, !tbaa !743
  %39 = tail call i8* @x2realloc(i8* %38, i64* nonnull @fold_file.allocated_out) #10, !dbg !931
  store i8* %39, i8** @fold_file.line_out, align 8, !dbg !932, !tbaa !743
  br label %40, !dbg !933

; <label>:40:                                     ; preds = %32, %37
  %41 = icmp eq i32 %33, 10, !dbg !934
  %42 = trunc i32 %33 to i8
  br i1 %41, label %43, label %51, !dbg !936

; <label>:43:                                     ; preds = %40
  %44 = load i8*, i8** @fold_file.line_out, align 8, !dbg !937, !tbaa !743
  call void @llvm.dbg.value(metadata i64 %34, metadata !149, metadata !DIExpression()), !dbg !887
  %45 = getelementptr inbounds i8, i8* %44, i64 %21, !dbg !937
  store i8 %42, i8* %45, align 1, !dbg !939, !tbaa !839
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !940, !tbaa !743
  %47 = tail call i64 @fwrite_unlocked(i8* %44, i64 1, i64 %34, %struct._IO_FILE* %46), !dbg !940
  call void @llvm.dbg.value(metadata i64 0, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 0, metadata !148, metadata !DIExpression()), !dbg !886
  br label %48, !dbg !941

; <label>:48:                                     ; preds = %43, %136, %141
  %49 = phi i64 [ 0, %43 ], [ %69, %136 ], [ %142, %141 ]
  %50 = phi i64 [ 0, %43 ], [ 1, %136 ], [ %144, %141 ]
  br label %19, !dbg !887, !llvm.loop !942

; <label>:51:                                     ; preds = %40, %106
  %52 = phi i64 [ %107, %106 ], [ %20, %40 ], !dbg !944
  %53 = phi i64 [ %108, %106 ], [ %21, %40 ], !dbg !946
  call void @llvm.dbg.value(metadata i64 %53, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %52, metadata !148, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i64 %52, metadata !947, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata i8 %42, metadata !952, metadata !DIExpression()), !dbg !955
  %54 = load i1, i1* @count_bytes, align 1
  br i1 %54, label %66, label %55, !dbg !956

; <label>:55:                                     ; preds = %51
  switch i8 %42, label %64 [
    i8 8, label %56
    i8 13, label %141
    i8 9, label %60
  ], !dbg !957

; <label>:56:                                     ; preds = %55
  %57 = icmp eq i64 %52, 0, !dbg !960
  %58 = add i64 %52, -1, !dbg !964
  %59 = select i1 %57, i64 0, i64 %58, !dbg !965
  br label %68, !dbg !965

; <label>:60:                                     ; preds = %55
  %61 = and i64 %52, 7, !dbg !966
  %62 = add i64 %52, 8, !dbg !969
  %63 = sub i64 %62, %61, !dbg !970
  call void @llvm.dbg.value(metadata i64 %63, metadata !947, metadata !DIExpression()), !dbg !953
  br label %68, !dbg !971

; <label>:64:                                     ; preds = %55
  %65 = add i64 %52, 1, !dbg !972
  call void @llvm.dbg.value(metadata i64 %65, metadata !947, metadata !DIExpression()), !dbg !953
  br label %68

; <label>:66:                                     ; preds = %51
  %67 = add i64 %52, 1, !dbg !973
  call void @llvm.dbg.value(metadata i64 %67, metadata !947, metadata !DIExpression()), !dbg !953
  br label %68

; <label>:68:                                     ; preds = %60, %64, %66, %56
  %69 = phi i64 [ %59, %56 ], [ %67, %66 ], [ %63, %60 ], [ %65, %64 ]
  call void @llvm.dbg.value(metadata i64 %69, metadata !148, metadata !DIExpression()), !dbg !886
  %70 = icmp ugt i64 %69, %1, !dbg !974
  br i1 %70, label %71, label %141, !dbg !975

; <label>:71:                                     ; preds = %68
  %72 = load i1, i1* @break_spaces, align 1
  %73 = load i8*, i8** @fold_file.line_out, align 8
  br i1 %72, label %74, label %133, !dbg !976

; <label>:74:                                     ; preds = %71, %77
  %75 = phi i64 [ %78, %77 ], [ %53, %71 ], !dbg !977
  call void @llvm.dbg.value(metadata i64 %75, metadata !157, metadata !DIExpression()), !dbg !979
  %76 = icmp eq i64 %75, 0, !dbg !980
  br i1 %76, label %133, label %77, !dbg !980

; <label>:77:                                     ; preds = %74
  %78 = add i64 %75, -1, !dbg !981
  call void @llvm.dbg.value(metadata i64 %78, metadata !157, metadata !DIExpression()), !dbg !979
  %79 = tail call i16** @__ctype_b_loc() #17, !dbg !982
  %80 = load i16*, i16** %79, align 8, !dbg !982, !tbaa !743
  %81 = getelementptr inbounds i8, i8* %73, i64 %78, !dbg !982
  %82 = load i8, i8* %81, align 1, !dbg !982, !tbaa !839
  %83 = zext i8 %82 to i64, !dbg !982
  %84 = getelementptr inbounds i16, i16* %80, i64 %83, !dbg !982
  %85 = load i16, i16* %84, align 2, !dbg !982, !tbaa !984
  %86 = and i16 %85, 1, !dbg !982
  %87 = icmp eq i16 %86, 0, !dbg !982
  br i1 %87, label %74, label %88, !dbg !985, !llvm.loop !986

; <label>:88:                                     ; preds = %77
  call void @llvm.dbg.value(metadata i64 %75, metadata !157, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %75, metadata !157, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %75, metadata !157, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %75, metadata !157, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %75, metadata !157, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %75, metadata !157, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %75, metadata !157, metadata !DIExpression()), !dbg !979
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !988, !tbaa !743
  %90 = tail call i64 @fwrite_unlocked(i8* nonnull %73, i64 1, i64 %75, %struct._IO_FILE* %89), !dbg !988
  call void @llvm.dbg.value(metadata i32 10, metadata !989, metadata !DIExpression()) #10, !dbg !994
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !996, !tbaa !743
  %92 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %91, i64 0, i32 5, !dbg !996
  %93 = load i8*, i8** %92, align 8, !dbg !996, !tbaa !997
  %94 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %91, i64 0, i32 6, !dbg !996
  %95 = load i8*, i8** %94, align 8, !dbg !996, !tbaa !998
  %96 = icmp ult i8* %93, %95, !dbg !996
  br i1 %96, label %99, label %97, !dbg !996, !prof !922

; <label>:97:                                     ; preds = %88
  %98 = tail call i32 @__overflow(%struct._IO_FILE* %91, i32 10) #10, !dbg !996
  br label %101, !dbg !996

; <label>:99:                                     ; preds = %88
  %100 = getelementptr inbounds i8, i8* %93, i64 1, !dbg !996
  store i8* %100, i8** %92, align 8, !dbg !996, !tbaa !997
  store i8 10, i8* %93, align 1, !dbg !996, !tbaa !839
  br label %101, !dbg !996

; <label>:101:                                    ; preds = %97, %99
  %102 = load i8*, i8** @fold_file.line_out, align 8, !dbg !999, !tbaa !743
  %103 = getelementptr inbounds i8, i8* %102, i64 %75, !dbg !1000
  %104 = sub i64 %53, %75, !dbg !1001
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %102, i8* align 1 %103, i64 %104, i1 false), !dbg !1002
  call void @llvm.dbg.value(metadata i64 %104, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 0, metadata !158, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i64 0, metadata !148, metadata !DIExpression()), !dbg !886
  %105 = icmp eq i64 %104, 0, !dbg !1004
  br i1 %105, label %106, label %109, !dbg !1006

; <label>:106:                                    ; preds = %129, %101, %137
  %107 = phi i64 [ 0, %137 ], [ 0, %101 ], [ %130, %129 ]
  %108 = phi i64 [ 0, %137 ], [ 0, %101 ], [ %104, %129 ]
  br label %51, !dbg !887

; <label>:109:                                    ; preds = %101
  %110 = load i1, i1* @count_bytes, align 1
  br label %111, !dbg !1006

; <label>:111:                                    ; preds = %129, %109
  %112 = phi i64 [ 0, %109 ], [ %131, %129 ]
  %113 = phi i64 [ 0, %109 ], [ %130, %129 ]
  call void @llvm.dbg.value(metadata i64 %112, metadata !158, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %113, metadata !148, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i64 %113, metadata !947, metadata !DIExpression()), !dbg !1007
  br i1 %110, label %127, label %114, !dbg !1009

; <label>:114:                                    ; preds = %111
  %115 = getelementptr inbounds i8, i8* %102, i64 %112, !dbg !1010
  %116 = load i8, i8* %115, align 1, !dbg !1010, !tbaa !839
  call void @llvm.dbg.value(metadata i8 %116, metadata !952, metadata !DIExpression()), !dbg !1011
  switch i8 %116, label %125 [
    i8 8, label %117
    i8 13, label %129
    i8 9, label %121
  ], !dbg !1012

; <label>:117:                                    ; preds = %114
  %118 = icmp eq i64 %113, 0, !dbg !1013
  %119 = add i64 %113, -1, !dbg !1014
  %120 = select i1 %118, i64 0, i64 %119, !dbg !1015
  br label %129, !dbg !1015

; <label>:121:                                    ; preds = %114
  %122 = and i64 %113, 7, !dbg !1016
  %123 = add i64 %113, 8, !dbg !1017
  %124 = sub i64 %123, %122, !dbg !1018
  call void @llvm.dbg.value(metadata i64 %124, metadata !947, metadata !DIExpression()), !dbg !1007
  br label %129, !dbg !1019

; <label>:125:                                    ; preds = %114
  %126 = add i64 %113, 1, !dbg !1020
  call void @llvm.dbg.value(metadata i64 %126, metadata !947, metadata !DIExpression()), !dbg !1007
  br label %129

; <label>:127:                                    ; preds = %111
  %128 = add i64 %113, 1, !dbg !1021
  call void @llvm.dbg.value(metadata i64 %128, metadata !947, metadata !DIExpression()), !dbg !1007
  br label %129

; <label>:129:                                    ; preds = %114, %121, %125, %127, %117
  %130 = phi i64 [ %120, %117 ], [ %128, %127 ], [ %124, %121 ], [ %126, %125 ], [ 0, %114 ]
  %131 = add nuw i64 %112, 1, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %131, metadata !158, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %130, metadata !148, metadata !DIExpression()), !dbg !886
  %132 = icmp eq i64 %131, %104, !dbg !1004
  br i1 %132, label %106, label %111, !dbg !1006, !llvm.loop !1023

; <label>:133:                                    ; preds = %74, %71
  call void @llvm.dbg.value(metadata i64 %53, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %69, metadata !148, metadata !DIExpression()), !dbg !886
  %134 = icmp eq i64 %53, 0, !dbg !1025
  %135 = getelementptr inbounds i8, i8* %73, i64 %53, !dbg !1027
  br i1 %134, label %136, label %137, !dbg !1028

; <label>:136:                                    ; preds = %133
  call void @llvm.dbg.value(metadata i64 %69, metadata !148, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i64 %69, metadata !148, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i64 %69, metadata !148, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i64 %69, metadata !148, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i64 %69, metadata !148, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i64 %69, metadata !148, metadata !DIExpression()), !dbg !886
  store i8 %42, i8* %135, align 1, !dbg !1029, !tbaa !839
  br label %48, !dbg !1031

; <label>:137:                                    ; preds = %133
  %138 = add i64 %53, 1, !dbg !1027
  call void @llvm.dbg.value(metadata i64 %138, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %138, metadata !149, metadata !DIExpression()), !dbg !887
  store i8 10, i8* %135, align 1, !dbg !1032, !tbaa !839
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1033, !tbaa !743
  %140 = tail call i64 @fwrite_unlocked(i8* %73, i64 1, i64 %138, %struct._IO_FILE* %139), !dbg !1033
  call void @llvm.dbg.value(metadata i64 0, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 0, metadata !148, metadata !DIExpression()), !dbg !886
  br label %106, !dbg !1034

; <label>:141:                                    ; preds = %55, %68
  %142 = phi i64 [ %69, %68 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i64 %53, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %53, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %53, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %53, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %53, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %53, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %53, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %53, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %53, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %53, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %53, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %53, metadata !149, metadata !DIExpression()), !dbg !887
  %143 = load i8*, i8** @fold_file.line_out, align 8, !dbg !1035, !tbaa !743
  %144 = add i64 %53, 1, !dbg !1036
  call void @llvm.dbg.value(metadata i64 %144, metadata !149, metadata !DIExpression()), !dbg !887
  %145 = getelementptr inbounds i8, i8* %143, i64 %53, !dbg !1035
  store i8 %42, i8* %145, align 1, !dbg !1037, !tbaa !839
  br label %48, !dbg !906

; <label>:146:                                    ; preds = %29
  call void @llvm.dbg.value(metadata i64 %21, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %21, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %21, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %21, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %21, metadata !149, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %21, metadata !149, metadata !DIExpression()), !dbg !887
  %147 = tail call i32* @__errno_location() #17, !dbg !1038
  %148 = load i32, i32* %147, align 4, !dbg !1038, !tbaa !854
  call void @llvm.dbg.value(metadata i32 %148, metadata !150, metadata !DIExpression()), !dbg !1039
  %149 = icmp eq i64 %21, 0, !dbg !1040
  br i1 %149, label %154, label %150, !dbg !1042

; <label>:150:                                    ; preds = %146
  %151 = load i8*, i8** @fold_file.line_out, align 8, !dbg !1043, !tbaa !743
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1043, !tbaa !743
  %153 = tail call i64 @fwrite_unlocked(i8* %151, i64 1, i64 %21, %struct._IO_FILE* %152), !dbg !1043
  br label %154, !dbg !1043

; <label>:154:                                    ; preds = %146, %150
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !1044, metadata !DIExpression()), !dbg !1047
  %155 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 0, !dbg !1050
  %156 = load i32, i32* %155, align 8, !dbg !1050, !tbaa !1051
  %157 = and i32 %156, 32, !dbg !1050
  %158 = icmp eq i32 %157, 0, !dbg !1052
  br i1 %158, label %165, label %159, !dbg !1053

; <label>:159:                                    ; preds = %154
  %160 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1054
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %160) #10, !dbg !1056
  %161 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #14, !dbg !1057
  %162 = icmp eq i32 %161, 0, !dbg !1057
  br i1 %162, label %174, label %163, !dbg !1059

; <label>:163:                                    ; preds = %159
  %164 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %10) #10, !dbg !1060
  br label %174, !dbg !1060

; <label>:165:                                    ; preds = %154
  %166 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #14, !dbg !1061
  %167 = icmp eq i32 %166, 0, !dbg !1061
  br i1 %167, label %174, label %168, !dbg !1063

; <label>:168:                                    ; preds = %165
  %169 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %10) #10, !dbg !1064
  %170 = icmp eq i32 %169, -1, !dbg !1065
  br i1 %170, label %171, label %174, !dbg !1066

; <label>:171:                                    ; preds = %168
  %172 = load i32, i32* %147, align 4, !dbg !1067, !tbaa !854
  %173 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1069
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %173) #10, !dbg !1070
  br label %174, !dbg !1071

; <label>:174:                                    ; preds = %165, %168, %159, %163, %171, %12
  %175 = phi i1 [ false, %12 ], [ false, %171 ], [ false, %163 ], [ false, %159 ], [ true, %168 ], [ true, %165 ], !dbg !1072
  ret i1 %175, !dbg !1073
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1074 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1076, metadata !DIExpression()), !dbg !1077
  store i8* %0, i8** @file_name, align 8, !dbg !1078, !tbaa !743
  ret void, !dbg !1079
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1080 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1084, metadata !DIExpression()), !dbg !1085
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1086, !tbaa !1087
  ret void, !dbg !1089
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1090 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1095, !tbaa !743
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1096
  %3 = icmp eq i32 %2, 0, !dbg !1097
  br i1 %3, label %22, label %4, !dbg !1098

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1099, !tbaa !1087, !range !1100
  %6 = icmp eq i8 %5, 0, !dbg !1099
  br i1 %6, label %11, label %7, !dbg !1101

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1102
  %9 = load i32, i32* %8, align 4, !dbg !1102, !tbaa !854
  %10 = icmp eq i32 %9, 32, !dbg !1103
  br i1 %10, label %22, label %11, !dbg !1104

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !1105
  call void @llvm.dbg.value(metadata i8* %12, metadata !1092, metadata !DIExpression()), !dbg !1106
  %13 = load i8*, i8** @file_name, align 8, !dbg !1107, !tbaa !743
  %14 = icmp eq i8* %13, null, !dbg !1107
  %15 = tail call i32* @__errno_location() #17, !dbg !1109
  %16 = load i32, i32* %15, align 4, !dbg !1109, !tbaa !854
  br i1 %14, label %19, label %17, !dbg !1110

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1111
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.42, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !1112
  br label %20, !dbg !1112

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.43, i64 0, i64 0), i8* %12) #10, !dbg !1113
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1114, !tbaa !854
  tail call void @_exit(i32 %21) #15, !dbg !1115
  unreachable, !dbg !1115

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1116, !tbaa !743
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !1118
  %25 = icmp eq i32 %24, 0, !dbg !1119
  br i1 %25, label %28, label %26, !dbg !1120

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1121, !tbaa !854
  tail call void @_exit(i32 %27) #15, !dbg !1122
  unreachable, !dbg !1122

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1123
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !1124 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1132, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i64 %1, metadata !1133, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i64 %2, metadata !1134, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i32 %3, metadata !1135, metadata !DIExpression()), !dbg !1141
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1142
  call void @llvm.dbg.value(metadata i32 %5, metadata !1136, metadata !DIExpression()), !dbg !1142
  ret void, !dbg !1143
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !1144 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1182, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i32 %1, metadata !1183, metadata !DIExpression()), !dbg !1185
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1186
  br i1 %3, label %7, label %4, !dbg !1188

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %5, metadata !1132, metadata !DIExpression()) #10, !dbg !1190
  call void @llvm.dbg.value(metadata i64 0, metadata !1133, metadata !DIExpression()) #10, !dbg !1192
  call void @llvm.dbg.value(metadata i64 0, metadata !1134, metadata !DIExpression()) #10, !dbg !1193
  call void @llvm.dbg.value(metadata i32 %1, metadata !1135, metadata !DIExpression()) #10, !dbg !1194
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1195
  call void @llvm.dbg.value(metadata i32 %6, metadata !1136, metadata !DIExpression()) #10, !dbg !1195
  br label %7, !dbg !1196

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1197
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1198 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1200, metadata !DIExpression()), !dbg !1203
  %2 = icmp eq i8* %0, null, !dbg !1204
  br i1 %2, label %3, label %6, !dbg !1206

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1207, !tbaa !743
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.52, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1209
  tail call void @abort() #15, !dbg !1210
  unreachable, !dbg !1210

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1211
  call void @llvm.dbg.value(metadata i8* %7, metadata !1201, metadata !DIExpression()), !dbg !1212
  %8 = icmp eq i8* %7, null, !dbg !1213
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1214
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1215
  call void @llvm.dbg.value(metadata i8* %10, metadata !1202, metadata !DIExpression()), !dbg !1216
  %11 = ptrtoint i8* %10 to i64, !dbg !1217
  %12 = ptrtoint i8* %0 to i64, !dbg !1217
  %13 = sub i64 %11, %12, !dbg !1217
  %14 = icmp sgt i64 %13, 6, !dbg !1219
  br i1 %14, label %15, label %24, !dbg !1220

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1221
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.53, i64 0, i64 0), i64 7) #14, !dbg !1222
  %18 = icmp eq i32 %17, 0, !dbg !1223
  br i1 %18, label %19, label %24, !dbg !1224

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1200, metadata !DIExpression()), !dbg !1203
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.54, i64 0, i64 0), i64 3) #14, !dbg !1225
  %21 = icmp eq i32 %20, 0, !dbg !1228
  br i1 %21, label %22, label %24, !dbg !1229

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1230
  call void @llvm.dbg.value(metadata i8* %23, metadata !1200, metadata !DIExpression()), !dbg !1203
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1232, !tbaa !743
  br label %24, !dbg !1233

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1200, metadata !DIExpression()), !dbg !1203
  store i8* %25, i8** @program_name, align 8, !dbg !1234, !tbaa !743
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1235, !tbaa !743
  ret void, !dbg !1236
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1237 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1242, metadata !DIExpression()), !dbg !1245
  %2 = tail call i32* @__errno_location() #17, !dbg !1246
  %3 = load i32, i32* %2, align 4, !dbg !1246, !tbaa !854
  call void @llvm.dbg.value(metadata i32 %3, metadata !1243, metadata !DIExpression()), !dbg !1247
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1248
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1248
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1248
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1249
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1249
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1244, metadata !DIExpression()), !dbg !1250
  store i32 %3, i32* %2, align 4, !dbg !1251, !tbaa !854
  ret %struct.quoting_options* %8, !dbg !1252
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1253 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1259, metadata !DIExpression()), !dbg !1260
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1261
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1261
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1262
  %5 = load i32, i32* %4, align 8, !dbg !1262, !tbaa !1263
  ret i32 %5, !dbg !1265
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1266 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1270, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i32 %1, metadata !1271, metadata !DIExpression()), !dbg !1273
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1274
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1274
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1275
  store i32 %1, i32* %5, align 8, !dbg !1276, !tbaa !1263
  ret void, !dbg !1277
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1278 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1282, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8 %1, metadata !1283, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i32 %2, metadata !1284, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i8 %1, metadata !1285, metadata !DIExpression()), !dbg !1293
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1294
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1294
  %6 = lshr i8 %1, 5, !dbg !1295
  %7 = zext i8 %6 to i64, !dbg !1295
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1296
  call void @llvm.dbg.value(metadata i32* %8, metadata !1286, metadata !DIExpression()), !dbg !1297
  %9 = and i8 %1, 31, !dbg !1298
  %10 = zext i8 %9 to i32, !dbg !1298
  call void @llvm.dbg.value(metadata i32 %10, metadata !1288, metadata !DIExpression()), !dbg !1299
  %11 = load i32, i32* %8, align 4, !dbg !1300, !tbaa !854
  %12 = lshr i32 %11, %10, !dbg !1301
  %13 = and i32 %12, 1, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %13, metadata !1289, metadata !DIExpression()), !dbg !1303
  %14 = and i32 %2, 1, !dbg !1304
  %15 = xor i32 %13, %14, !dbg !1305
  %16 = shl i32 %15, %10, !dbg !1306
  %17 = xor i32 %16, %11, !dbg !1307
  store i32 %17, i32* %8, align 4, !dbg !1307, !tbaa !854
  ret i32 %13, !dbg !1308
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1309 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1313, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32 %1, metadata !1314, metadata !DIExpression()), !dbg !1317
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1318
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1320
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1313, metadata !DIExpression()), !dbg !1316
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1321
  %6 = load i32, i32* %5, align 4, !dbg !1321, !tbaa !1322
  call void @llvm.dbg.value(metadata i32 %6, metadata !1315, metadata !DIExpression()), !dbg !1323
  store i32 %1, i32* %5, align 4, !dbg !1324, !tbaa !1322
  ret i32 %6, !dbg !1325
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1326 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1330, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i8* %1, metadata !1331, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8* %2, metadata !1332, metadata !DIExpression()), !dbg !1335
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1336
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1338
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1330, metadata !DIExpression()), !dbg !1333
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1339
  store i32 10, i32* %6, align 8, !dbg !1340, !tbaa !1263
  %7 = icmp ne i8* %1, null, !dbg !1341
  %8 = icmp ne i8* %2, null, !dbg !1343
  %9 = and i1 %7, %8, !dbg !1344
  br i1 %9, label %11, label %10, !dbg !1344

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1345
  unreachable, !dbg !1345

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1346
  store i8* %1, i8** %12, align 8, !dbg !1347, !tbaa !1348
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1349
  store i8* %2, i8** %13, align 8, !dbg !1350, !tbaa !1351
  ret void, !dbg !1352
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1353 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1357, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %1, metadata !1358, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8* %2, metadata !1359, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %3, metadata !1360, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1361, metadata !DIExpression()), !dbg !1369
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1370
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1370
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1362, metadata !DIExpression()), !dbg !1371
  %8 = tail call i32* @__errno_location() #17, !dbg !1372
  %9 = load i32, i32* %8, align 4, !dbg !1372, !tbaa !854
  call void @llvm.dbg.value(metadata i32 %9, metadata !1363, metadata !DIExpression()), !dbg !1373
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1374
  %11 = load i32, i32* %10, align 8, !dbg !1374, !tbaa !1263
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1375
  %13 = load i32, i32* %12, align 4, !dbg !1375, !tbaa !1322
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1376
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1377
  %16 = load i8*, i8** %15, align 8, !dbg !1377, !tbaa !1348
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1378
  %18 = load i8*, i8** %17, align 8, !dbg !1378, !tbaa !1351
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1379
  call void @llvm.dbg.value(metadata i64 %19, metadata !1364, metadata !DIExpression()), !dbg !1380
  store i32 %9, i32* %8, align 4, !dbg !1381, !tbaa !854
  ret i64 %19, !dbg !1382
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1383 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %1, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8* %2, metadata !1391, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %3, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i32 %4, metadata !1393, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i32 %5, metadata !1394, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i32* %6, metadata !1395, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i8* %7, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %8, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 0, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 0, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i8* null, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 0, metadata !1402, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 0, metadata !1403, metadata !DIExpression()), !dbg !1466
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1467
  %14 = icmp eq i64 %13, 1, !dbg !1468
  %15 = lshr i32 %5, 1, !dbg !1469
  %16 = trunc i32 %15 to i8, !dbg !1469
  %17 = and i8 %16, 1, !dbg !1469
  call void @llvm.dbg.value(metadata i8 %17, metadata !1405, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i8 0, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 0, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 1, metadata !1408, metadata !DIExpression()), !dbg !1472
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1473

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1463
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1464
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1465
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1466
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1474
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1470
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1471
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1472
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %39, metadata !1408, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i8 %38, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %37, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %36, metadata !1405, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i64 %35, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i8 %34, metadata !1403, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %33, metadata !1402, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8* %32, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %31, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 0, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %30, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %29, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i32 %28, metadata !1393, metadata !DIExpression()), !dbg !1457
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
  ], !dbg !1476

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1393, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i8 1, metadata !1405, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i8 %36, metadata !1405, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i32 5, metadata !1393, metadata !DIExpression()), !dbg !1457
  br label %93, !dbg !1477

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1405, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i32 5, metadata !1393, metadata !DIExpression()), !dbg !1457
  %43 = and i8 %36, 1, !dbg !1478
  %44 = icmp eq i8 %43, 0, !dbg !1478
  br i1 %44, label %45, label %93, !dbg !1477

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1480
  br i1 %46, label %93, label %47, !dbg !1483

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1480, !tbaa !839
  br label %93, !dbg !1480

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.65, i64 0, i64 0), i32 %28), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %49, metadata !1396, metadata !DIExpression()), !dbg !1460
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), i32 %28), !dbg !1488
  call void @llvm.dbg.value(metadata i8* %50, metadata !1397, metadata !DIExpression()), !dbg !1461
  br label %51, !dbg !1489

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %52, metadata !1396, metadata !DIExpression()), !dbg !1460
  %54 = and i8 %36, 1, !dbg !1490
  %55 = icmp eq i8 %54, 0, !dbg !1490
  br i1 %55, label %56, label %71, !dbg !1492

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 0, metadata !1399, metadata !DIExpression()), !dbg !1462
  %57 = load i8, i8* %52, align 1, !dbg !1493, !tbaa !839
  %58 = icmp eq i8 %57, 0, !dbg !1496
  br i1 %58, label %71, label %59, !dbg !1496

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %62, metadata !1399, metadata !DIExpression()), !dbg !1462
  %63 = icmp ult i64 %62, %40, !dbg !1497
  br i1 %63, label %64, label %66, !dbg !1500

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1497
  store i8 %60, i8* %65, align 1, !dbg !1497, !tbaa !839
  br label %66, !dbg !1497

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1500
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1501
  call void @llvm.dbg.value(metadata i8* %68, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %67, metadata !1399, metadata !DIExpression()), !dbg !1462
  %69 = load i8, i8* %68, align 1, !dbg !1493, !tbaa !839
  %70 = icmp eq i8 %69, 0, !dbg !1496
  br i1 %70, label %71, label %59, !dbg !1496, !llvm.loop !1502

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1462
  call void @llvm.dbg.value(metadata i64 %72, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 1, metadata !1403, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8* %53, metadata !1401, metadata !DIExpression()), !dbg !1464
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %73, metadata !1402, metadata !DIExpression()), !dbg !1465
  br label %93, !dbg !1505

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1403, metadata !DIExpression()), !dbg !1466
  br label %75, !dbg !1506

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1474
  call void @llvm.dbg.value(metadata i8 %76, metadata !1403, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8 1, metadata !1405, metadata !DIExpression()), !dbg !1469
  br label %77, !dbg !1507

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1466
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1474
  call void @llvm.dbg.value(metadata i8 %79, metadata !1405, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i8 %78, metadata !1403, metadata !DIExpression()), !dbg !1466
  %80 = and i8 %79, 1, !dbg !1508
  %81 = icmp eq i8 %80, 0, !dbg !1508
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1510
  br label %83, !dbg !1510

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1511
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1469
  call void @llvm.dbg.value(metadata i8 %85, metadata !1405, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i8 %84, metadata !1403, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i32 2, metadata !1393, metadata !DIExpression()), !dbg !1457
  %86 = and i8 %85, 1, !dbg !1512
  %87 = icmp eq i8 %86, 0, !dbg !1512
  br i1 %87, label %88, label %93, !dbg !1514

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1515
  br i1 %89, label %93, label %90, !dbg !1518

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1515, !tbaa !839
  br label %93, !dbg !1515

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1405, metadata !DIExpression()), !dbg !1469
  br label %93, !dbg !1519

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1520
  unreachable, !dbg !1520

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1462
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %41 ], !dbg !1474
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1474
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1474
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8 %101, metadata !1405, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i8 %100, metadata !1403, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %99, metadata !1402, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8* %98, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %97, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i32 %94, metadata !1393, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 0, metadata !1398, metadata !DIExpression()), !dbg !1522
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
  br label %121, !dbg !1523

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1524
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1462
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1463
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1470
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1471
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1472
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %128, metadata !1408, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i8 %127, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %126, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %125, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %122, metadata !1398, metadata !DIExpression()), !dbg !1522
  %130 = icmp eq i64 %125, -1, !dbg !1525
  br i1 %130, label %131, label %135, !dbg !1526

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1527
  %133 = load i8, i8* %132, align 1, !dbg !1527, !tbaa !839
  %134 = icmp eq i8 %133, 0, !dbg !1528
  br i1 %134, label %617, label %137, !dbg !1529

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1530
  br i1 %136, label %617, label %137, !dbg !1529

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1414, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8 0, metadata !1415, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 0, metadata !1416, metadata !DIExpression()), !dbg !1533
  br i1 %107, label %138, label %153, !dbg !1534

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1536
  %140 = and i1 %108, %130, !dbg !1537
  br i1 %140, label %141, label %143, !dbg !1537

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1538
  call void @llvm.dbg.value(metadata i64 %142, metadata !1392, metadata !DIExpression()), !dbg !1456
  br label %143, !dbg !1539

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1392, metadata !DIExpression()), !dbg !1456
  %145 = icmp ugt i64 %139, %144, !dbg !1540
  br i1 %145, label %153, label %146, !dbg !1541

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1542
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1543
  %149 = icmp ne i32 %148, 0, !dbg !1544
  %150 = or i1 %149, %110, !dbg !1545
  %151 = xor i1 %149, true, !dbg !1545
  %152 = zext i1 %151 to i8, !dbg !1545
  br i1 %150, label %153, label %661, !dbg !1545

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1546
  call void @llvm.dbg.value(metadata i8 %155, metadata !1414, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %154, metadata !1392, metadata !DIExpression()), !dbg !1456
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1547
  %157 = load i8, i8* %156, align 1, !dbg !1547, !tbaa !839
  call void @llvm.dbg.value(metadata i8 %157, metadata !1409, metadata !DIExpression()), !dbg !1548
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
  ], !dbg !1549

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1550

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1551

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1415, metadata !DIExpression()), !dbg !1532
  %161 = and i8 %126, 1, !dbg !1555
  %162 = icmp eq i8 %161, 0, !dbg !1555
  %163 = and i1 %114, %162, !dbg !1555
  br i1 %163, label %164, label %180, !dbg !1555

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1557
  br i1 %165, label %166, label %168, !dbg !1561

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1557
  store i8 39, i8* %167, align 1, !dbg !1557, !tbaa !839
  br label %168, !dbg !1557

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %169, metadata !1399, metadata !DIExpression()), !dbg !1462
  %170 = icmp ult i64 %169, %129, !dbg !1562
  br i1 %170, label %171, label %173, !dbg !1565

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1562
  store i8 36, i8* %172, align 1, !dbg !1562, !tbaa !839
  br label %173, !dbg !1562

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %174, metadata !1399, metadata !DIExpression()), !dbg !1462
  %175 = icmp ult i64 %174, %129, !dbg !1566
  br i1 %175, label %176, label %178, !dbg !1569

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1566
  store i8 39, i8* %177, align 1, !dbg !1566, !tbaa !839
  br label %178, !dbg !1566

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1569
  call void @llvm.dbg.value(metadata i64 %179, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 1, metadata !1406, metadata !DIExpression()), !dbg !1470
  br label %180, !dbg !1570

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1521
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8 %182, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %181, metadata !1399, metadata !DIExpression()), !dbg !1462
  %183 = icmp ult i64 %181, %129, !dbg !1571
  br i1 %183, label %184, label %186, !dbg !1574

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1571
  store i8 92, i8* %185, align 1, !dbg !1571, !tbaa !839
  br label %186, !dbg !1571

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %187, metadata !1399, metadata !DIExpression()), !dbg !1462
  br i1 %104, label %188, label %478, !dbg !1575

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1577
  %190 = icmp ult i64 %189, %154, !dbg !1578
  br i1 %190, label %191, label %467, !dbg !1579

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1580
  %193 = load i8, i8* %192, align 1, !dbg !1580, !tbaa !839
  %194 = add i8 %193, -48, !dbg !1581
  %195 = icmp ult i8 %194, 10, !dbg !1581
  br i1 %195, label %196, label %467, !dbg !1581

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1582
  br i1 %197, label %198, label %200, !dbg !1586

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1582
  store i8 48, i8* %199, align 1, !dbg !1582, !tbaa !839
  br label %200, !dbg !1582

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %201, metadata !1399, metadata !DIExpression()), !dbg !1462
  %202 = icmp ult i64 %201, %129, !dbg !1587
  br i1 %202, label %203, label %205, !dbg !1590

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1587
  store i8 48, i8* %204, align 1, !dbg !1587, !tbaa !839
  br label %205, !dbg !1587

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1590
  call void @llvm.dbg.value(metadata i64 %206, metadata !1399, metadata !DIExpression()), !dbg !1462
  br label %467, !dbg !1591

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1592

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1593

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1594

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1596

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1598
  %213 = icmp ult i64 %212, %154, !dbg !1599
  br i1 %213, label %214, label %467, !dbg !1600

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1601
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1602
  %217 = load i8, i8* %216, align 1, !dbg !1602, !tbaa !839
  %218 = icmp eq i8 %217, 63, !dbg !1603
  br i1 %218, label %219, label %467, !dbg !1604

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1605
  %221 = load i8, i8* %220, align 1, !dbg !1605, !tbaa !839
  %222 = sext i8 %221 to i32, !dbg !1605
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
  ], !dbg !1606

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1607

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1409, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %212, metadata !1398, metadata !DIExpression()), !dbg !1522
  %225 = icmp ult i64 %123, %129, !dbg !1609
  br i1 %225, label %226, label %228, !dbg !1612

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1609
  store i8 63, i8* %227, align 1, !dbg !1609, !tbaa !839
  br label %228, !dbg !1609

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %229, metadata !1399, metadata !DIExpression()), !dbg !1462
  %230 = icmp ult i64 %229, %129, !dbg !1613
  br i1 %230, label %231, label %233, !dbg !1616

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1613
  store i8 34, i8* %232, align 1, !dbg !1613, !tbaa !839
  br label %233, !dbg !1613

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1616
  call void @llvm.dbg.value(metadata i64 %234, metadata !1399, metadata !DIExpression()), !dbg !1462
  %235 = icmp ult i64 %234, %129, !dbg !1617
  br i1 %235, label %236, label %238, !dbg !1620

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1617
  store i8 34, i8* %237, align 1, !dbg !1617, !tbaa !839
  br label %238, !dbg !1617

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1620
  call void @llvm.dbg.value(metadata i64 %239, metadata !1399, metadata !DIExpression()), !dbg !1462
  %240 = icmp ult i64 %239, %129, !dbg !1621
  br i1 %240, label %241, label %243, !dbg !1624

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1621
  store i8 63, i8* %242, align 1, !dbg !1621, !tbaa !839
  br label %243, !dbg !1621

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1624
  call void @llvm.dbg.value(metadata i64 %244, metadata !1399, metadata !DIExpression()), !dbg !1462
  br label %467, !dbg !1625

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1413, metadata !DIExpression()), !dbg !1626
  br label %255, !dbg !1627

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1413, metadata !DIExpression()), !dbg !1626
  br label %255, !dbg !1628

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1413, metadata !DIExpression()), !dbg !1626
  br label %253, !dbg !1629

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1413, metadata !DIExpression()), !dbg !1626
  br label %253, !dbg !1630

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1413, metadata !DIExpression()), !dbg !1626
  br label %255, !dbg !1631

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1413, metadata !DIExpression()), !dbg !1626
  br i1 %114, label %251, label %252, !dbg !1632

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1633

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1636

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %254, metadata !1413, metadata !DIExpression()), !dbg !1626
  br i1 %113, label %255, label %661, !dbg !1639

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %256, metadata !1413, metadata !DIExpression()), !dbg !1626
  br i1 %103, label %524, label %478, !dbg !1641

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1642
  br i1 %258, label %259, label %264, !dbg !1644

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1645, !tbaa !839
  %261 = icmp ne i8 %260, 0, !dbg !1646
  %262 = icmp ne i64 %122, 0, !dbg !1647
  %263 = or i1 %262, %261, !dbg !1649
  br i1 %263, label %467, label %270, !dbg !1649

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1650
  %266 = icmp ne i64 %122, 0, !dbg !1647
  %267 = or i1 %266, %265, !dbg !1644
  br i1 %267, label %467, label %270, !dbg !1644

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1647
  br i1 %269, label %270, label %467, !dbg !1651

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1416, metadata !DIExpression()), !dbg !1533
  br label %271, !dbg !1652

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %272, metadata !1416, metadata !DIExpression()), !dbg !1533
  br i1 %113, label %467, label %661, !dbg !1653

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 1, metadata !1416, metadata !DIExpression()), !dbg !1533
  br i1 %114, label %274, label %467, !dbg !1655

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1656

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1659
  %277 = icmp ne i64 %124, 0, !dbg !1661
  %278 = or i1 %277, %276, !dbg !1662
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1662
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %280, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %279, metadata !1400, metadata !DIExpression()), !dbg !1463
  %281 = icmp ult i64 %123, %280, !dbg !1663
  br i1 %281, label %282, label %284, !dbg !1666

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1663
  store i8 39, i8* %283, align 1, !dbg !1663, !tbaa !839
  br label %284, !dbg !1663

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %285, metadata !1399, metadata !DIExpression()), !dbg !1462
  %286 = icmp ult i64 %285, %280, !dbg !1667
  br i1 %286, label %287, label %289, !dbg !1670

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1667
  store i8 92, i8* %288, align 1, !dbg !1667, !tbaa !839
  br label %289, !dbg !1667

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %290, metadata !1399, metadata !DIExpression()), !dbg !1462
  %291 = icmp ult i64 %290, %280, !dbg !1671
  br i1 %291, label %292, label %294, !dbg !1674

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1671
  store i8 39, i8* %293, align 1, !dbg !1671, !tbaa !839
  br label %294, !dbg !1671

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %295, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 0, metadata !1406, metadata !DIExpression()), !dbg !1470
  br label %467, !dbg !1675

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1676

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1417, metadata !DIExpression()), !dbg !1677
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1678
  %299 = load i16*, i16** %298, align 8, !dbg !1678, !tbaa !743
  %300 = zext i8 %157 to i64, !dbg !1678
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1678
  %302 = load i16, i16* %301, align 2, !dbg !1678, !tbaa !984
  %303 = lshr i16 %302, 14, !dbg !1680
  %304 = trunc i16 %303 to i8, !dbg !1680
  %305 = and i8 %304, 1, !dbg !1680
  call void @llvm.dbg.value(metadata i8 %305, metadata !1420, metadata !DIExpression()), !dbg !1681
  br label %359, !dbg !1682

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1683
  store i64 0, i64* %10, align 8, !dbg !1684
  call void @llvm.dbg.value(metadata i64 0, metadata !1417, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 1, metadata !1420, metadata !DIExpression()), !dbg !1681
  %307 = icmp eq i64 %154, -1, !dbg !1685
  br i1 %307, label %308, label %310, !dbg !1687

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1688
  call void @llvm.dbg.value(metadata i64 %309, metadata !1392, metadata !DIExpression()), !dbg !1456
  br label %310, !dbg !1689

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1690
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  br label %312, !dbg !1691

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1692
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1693
  call void @llvm.dbg.value(metadata i8 %314, metadata !1420, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i64 %313, metadata !1417, metadata !DIExpression()), !dbg !1677
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1694
  %315 = add i64 %313, %122, !dbg !1695
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1696
  %317 = sub i64 %311, %315, !dbg !1697
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1421, metadata !DIExpression(DW_OP_deref)), !dbg !1698
  call void @llvm.dbg.value(metadata i32* %12, metadata !1439, metadata !DIExpression(DW_OP_deref)), !dbg !1699
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %318, metadata !1442, metadata !DIExpression()), !dbg !1701
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1702

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1417, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %313, metadata !1417, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %313, metadata !1417, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %313, metadata !1417, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %313, metadata !1417, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %313, metadata !1417, metadata !DIExpression()), !dbg !1677
  %320 = icmp ugt i64 %311, %315, !dbg !1703
  br i1 %320, label %321, label %344, !dbg !1705

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1417, metadata !DIExpression()), !dbg !1677
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1706
  %325 = load i8, i8* %324, align 1, !dbg !1706, !tbaa !839
  %326 = icmp eq i8 %325, 0, !dbg !1705
  br i1 %326, label %344, label %327, !dbg !1707

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %328, metadata !1417, metadata !DIExpression()), !dbg !1677
  %329 = add i64 %328, %122, !dbg !1709
  %330 = icmp ult i64 %329, %311, !dbg !1703
  br i1 %330, label %321, label %344, !dbg !1705, !llvm.loop !1710

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1711
  %333 = and i1 %116, %332, !dbg !1714
  call void @llvm.dbg.value(metadata i64 1, metadata !1443, metadata !DIExpression()), !dbg !1715
  br i1 %333, label %334, label %347, !dbg !1714

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1443, metadata !DIExpression()), !dbg !1715
  %336 = add i64 %335, %315, !dbg !1716
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1717
  %338 = load i8, i8* %337, align 1, !dbg !1717, !tbaa !839
  %339 = sext i8 %338 to i32, !dbg !1717
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1718

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %341, metadata !1443, metadata !DIExpression()), !dbg !1715
  %342 = icmp ult i64 %341, %318, !dbg !1711
  br i1 %342, label %334, label %347, !dbg !1720, !llvm.loop !1721

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1417, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 %314, metadata !1420, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i64 %313, metadata !1417, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 %314, metadata !1420, metadata !DIExpression()), !dbg !1681
  br label %344, !dbg !1723

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1420, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i64 %352, metadata !1417, metadata !DIExpression()), !dbg !1677
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1723
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1724, !tbaa !854
  call void @llvm.dbg.value(metadata i32 %348, metadata !1439, metadata !DIExpression()), !dbg !1699
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1726
  %350 = icmp eq i32 %349, 0, !dbg !1726
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1727
  call void @llvm.dbg.value(metadata i8 %351, metadata !1420, metadata !DIExpression()), !dbg !1681
  %352 = add i64 %318, %313, !dbg !1728
  call void @llvm.dbg.value(metadata i64 %352, metadata !1417, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 %351, metadata !1420, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i64 %352, metadata !1417, metadata !DIExpression()), !dbg !1677
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1723
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1421, metadata !DIExpression(DW_OP_deref)), !dbg !1698
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1729
  %354 = icmp eq i32 %353, 0, !dbg !1730
  br i1 %354, label %312, label %355, !dbg !1731, !llvm.loop !1732

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1734
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i32 2, metadata !1393, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i32 2, metadata !1393, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i32 2, metadata !1393, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i32 2, metadata !1393, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i32 2, metadata !1393, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %100, metadata !1403, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8 %100, metadata !1403, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8 %100, metadata !1403, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8 %100, metadata !1403, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8 %100, metadata !1403, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i32 %94, metadata !1393, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i32 %94, metadata !1393, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i32 %94, metadata !1393, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i32 %94, metadata !1393, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i32 %94, metadata !1393, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %100, metadata !1403, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8 %100, metadata !1403, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8 %100, metadata !1403, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8 %100, metadata !1403, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8 %100, metadata !1403, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i8 %351, metadata !1420, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i64 %352, metadata !1417, metadata !DIExpression()), !dbg !1677
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1723
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1734
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1735
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1736
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1736
  call void @llvm.dbg.value(metadata i8 %362, metadata !1420, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i64 %361, metadata !1417, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %360, metadata !1392, metadata !DIExpression()), !dbg !1456
  %363 = and i8 %362, 1, !dbg !1737
  %364 = icmp ne i8 %363, 0, !dbg !1737
  call void @llvm.dbg.value(metadata i8 %363, metadata !1416, metadata !DIExpression()), !dbg !1533
  %365 = icmp ult i64 %361, 2, !dbg !1738
  %366 = or i1 %364, %115, !dbg !1739
  %367 = and i1 %365, %366, !dbg !1740
  br i1 %367, label %467, label %368, !dbg !1740

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1741
  call void @llvm.dbg.value(metadata i64 %369, metadata !1450, metadata !DIExpression()), !dbg !1742
  br label %370, !dbg !1743

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1744
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1748
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1470
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1744
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1750
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1532
  call void @llvm.dbg.value(metadata i8 %376, metadata !1415, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 %375, metadata !1414, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8 %374, metadata !1409, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %373, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %372, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %371, metadata !1398, metadata !DIExpression()), !dbg !1522
  br i1 %366, label %423, label %377, !dbg !1754

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1755

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1415, metadata !DIExpression()), !dbg !1532
  %379 = and i8 %373, 1, !dbg !1758
  %380 = icmp eq i8 %379, 0, !dbg !1758
  %381 = and i1 %114, %380, !dbg !1758
  br i1 %381, label %382, label %398, !dbg !1758

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1760
  br i1 %383, label %384, label %386, !dbg !1764

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1760
  store i8 39, i8* %385, align 1, !dbg !1760, !tbaa !839
  br label %386, !dbg !1760

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1764
  call void @llvm.dbg.value(metadata i64 %387, metadata !1399, metadata !DIExpression()), !dbg !1462
  %388 = icmp ult i64 %387, %129, !dbg !1765
  br i1 %388, label %389, label %391, !dbg !1768

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1765
  store i8 36, i8* %390, align 1, !dbg !1765, !tbaa !839
  br label %391, !dbg !1765

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %392, metadata !1399, metadata !DIExpression()), !dbg !1462
  %393 = icmp ult i64 %392, %129, !dbg !1769
  br i1 %393, label %394, label %396, !dbg !1772

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1769
  store i8 39, i8* %395, align 1, !dbg !1769, !tbaa !839
  br label %396, !dbg !1769

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %397, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 1, metadata !1406, metadata !DIExpression()), !dbg !1470
  br label %398, !dbg !1773

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1521
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8 %400, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %399, metadata !1399, metadata !DIExpression()), !dbg !1462
  %401 = icmp ult i64 %399, %129, !dbg !1774
  br i1 %401, label %402, label %404, !dbg !1777

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1774
  store i8 92, i8* %403, align 1, !dbg !1774, !tbaa !839
  br label %404, !dbg !1774

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1777
  call void @llvm.dbg.value(metadata i64 %405, metadata !1399, metadata !DIExpression()), !dbg !1462
  %406 = icmp ult i64 %405, %129, !dbg !1778
  br i1 %406, label %407, label %411, !dbg !1781

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1778
  %409 = or i8 %408, 48, !dbg !1778
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1778
  store i8 %409, i8* %410, align 1, !dbg !1778, !tbaa !839
  br label %411, !dbg !1778

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %412, metadata !1399, metadata !DIExpression()), !dbg !1462
  %413 = icmp ult i64 %412, %129, !dbg !1782
  br i1 %413, label %414, label %419, !dbg !1785

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1782
  %416 = and i8 %415, 7, !dbg !1782
  %417 = or i8 %416, 48, !dbg !1782
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1782
  store i8 %417, i8* %418, align 1, !dbg !1782, !tbaa !839
  br label %419, !dbg !1782

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %420, metadata !1399, metadata !DIExpression()), !dbg !1462
  %421 = and i8 %374, 7, !dbg !1786
  %422 = or i8 %421, 48, !dbg !1787
  call void @llvm.dbg.value(metadata i8 %422, metadata !1409, metadata !DIExpression()), !dbg !1548
  br label %432, !dbg !1788

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1789
  %425 = icmp eq i8 %424, 0, !dbg !1789
  br i1 %425, label %432, label %426, !dbg !1790

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1791
  br i1 %427, label %428, label %430, !dbg !1794

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1791
  store i8 92, i8* %429, align 1, !dbg !1791, !tbaa !839
  br label %430, !dbg !1791

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %431, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 0, metadata !1414, metadata !DIExpression()), !dbg !1531
  br label %432, !dbg !1795

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1796
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1470
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1797
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1798
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1800
  call void @llvm.dbg.value(metadata i8 %437, metadata !1415, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 %436, metadata !1414, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8 %435, metadata !1409, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %434, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %433, metadata !1399, metadata !DIExpression()), !dbg !1462
  %438 = add i64 %371, 1, !dbg !1801
  %439 = icmp ugt i64 %369, %438, !dbg !1803
  br i1 %439, label %440, label %562, !dbg !1804

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1805
  %442 = icmp ne i8 %441, 0, !dbg !1805
  %443 = and i8 %437, 1, !dbg !1805
  %444 = icmp eq i8 %443, 0, !dbg !1805
  %445 = and i1 %442, %444, !dbg !1805
  br i1 %445, label %446, label %457, !dbg !1805

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1808
  br i1 %447, label %448, label %450, !dbg !1812

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1808
  store i8 39, i8* %449, align 1, !dbg !1808, !tbaa !839
  br label %450, !dbg !1808

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1812
  call void @llvm.dbg.value(metadata i64 %451, metadata !1399, metadata !DIExpression()), !dbg !1462
  %452 = icmp ult i64 %451, %129, !dbg !1813
  br i1 %452, label %453, label %455, !dbg !1816

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1813
  store i8 39, i8* %454, align 1, !dbg !1813, !tbaa !839
  br label %455, !dbg !1813

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %456, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 0, metadata !1406, metadata !DIExpression()), !dbg !1470
  br label %457, !dbg !1817

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1818
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8 %459, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %458, metadata !1399, metadata !DIExpression()), !dbg !1462
  %460 = icmp ult i64 %458, %129, !dbg !1819
  br i1 %460, label %461, label %463, !dbg !1821

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1819
  store i8 %435, i8* %462, align 1, !dbg !1819, !tbaa !839
  br label %463, !dbg !1819

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %464, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %438, metadata !1398, metadata !DIExpression()), !dbg !1522
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1822
  %466 = load i8, i8* %465, align 1, !dbg !1822, !tbaa !839
  call void @llvm.dbg.value(metadata i8 %466, metadata !1409, metadata !DIExpression()), !dbg !1548
  br label %370, !dbg !1823, !llvm.loop !1824

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1827
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1521
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1463
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1828
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1521
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1521
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1546
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1546
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1546
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %476, metadata !1416, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8 %475, metadata !1415, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 %155, metadata !1414, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8 %474, metadata !1409, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %473, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %472, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %471, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %470, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %469, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %468, metadata !1398, metadata !DIExpression()), !dbg !1522
  br i1 %105, label %489, label %478, !dbg !1829

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
  br i1 %112, label %490, label %512, !dbg !1831

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1832

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
  %501 = lshr i8 %494, 5, !dbg !1833
  %502 = zext i8 %501 to i64, !dbg !1833
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1834
  %504 = load i32, i32* %503, align 4, !dbg !1834, !tbaa !854
  %505 = and i8 %494, 31, !dbg !1835
  %506 = zext i8 %505 to i32, !dbg !1835
  %507 = shl i32 1, %506, !dbg !1836
  %508 = and i32 %504, %507, !dbg !1836
  %509 = icmp eq i32 %508, 0, !dbg !1836
  %510 = icmp eq i8 %155, 0, !dbg !1837
  %511 = and i1 %510, %509, !dbg !1838
  br i1 %511, label %562, label %524, !dbg !1838

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
  %523 = icmp eq i8 %155, 0, !dbg !1837
  br i1 %523, label %562, label %524, !dbg !1839

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1840
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1521
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1463
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1828
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1470
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1471
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1841
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1546
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %532, metadata !1416, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8 %531, metadata !1409, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %530, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %529, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %528, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %527, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %526, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %525, metadata !1398, metadata !DIExpression()), !dbg !1522
  br i1 %110, label %534, label %661, !dbg !1844

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1415, metadata !DIExpression()), !dbg !1532
  %535 = and i8 %529, 1, !dbg !1846
  %536 = icmp eq i8 %535, 0, !dbg !1846
  %537 = and i1 %114, %536, !dbg !1846
  br i1 %537, label %538, label %554, !dbg !1846

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1848
  br i1 %539, label %540, label %542, !dbg !1852

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1848
  store i8 39, i8* %541, align 1, !dbg !1848, !tbaa !839
  br label %542, !dbg !1848

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1852
  call void @llvm.dbg.value(metadata i64 %543, metadata !1399, metadata !DIExpression()), !dbg !1462
  %544 = icmp ult i64 %543, %533, !dbg !1853
  br i1 %544, label %545, label %547, !dbg !1856

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1853
  store i8 36, i8* %546, align 1, !dbg !1853, !tbaa !839
  br label %547, !dbg !1853

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %548, metadata !1399, metadata !DIExpression()), !dbg !1462
  %549 = icmp ult i64 %548, %533, !dbg !1857
  br i1 %549, label %550, label %552, !dbg !1860

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1857
  store i8 39, i8* %551, align 1, !dbg !1857, !tbaa !839
  br label %552, !dbg !1857

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %553, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 1, metadata !1406, metadata !DIExpression()), !dbg !1470
  br label %554, !dbg !1861

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1818
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8 %556, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %555, metadata !1399, metadata !DIExpression()), !dbg !1462
  %557 = icmp ult i64 %555, %533, !dbg !1862
  br i1 %557, label %558, label %560, !dbg !1865

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1862
  store i8 92, i8* %559, align 1, !dbg !1862, !tbaa !839
  br label %560, !dbg !1862

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %561, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %572, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %571, metadata !1416, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8 %570, metadata !1415, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 %569, metadata !1409, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %568, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %567, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %566, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %565, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %564, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %563, metadata !1398, metadata !DIExpression()), !dbg !1522
  br label %589, !dbg !1866

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1840
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1521
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1463
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1828
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1470
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1471
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1869
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1546
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1546
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %571, metadata !1416, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8 %570, metadata !1415, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 %569, metadata !1409, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %568, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %567, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %566, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %565, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %564, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %563, metadata !1398, metadata !DIExpression()), !dbg !1522
  %573 = and i8 %567, 1, !dbg !1866
  %574 = icmp ne i8 %573, 0, !dbg !1866
  %575 = and i8 %570, 1, !dbg !1866
  %576 = icmp eq i8 %575, 0, !dbg !1866
  %577 = and i1 %574, %576, !dbg !1866
  br i1 %577, label %578, label %589, !dbg !1866

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1870
  br i1 %579, label %580, label %582, !dbg !1874

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1870
  store i8 39, i8* %581, align 1, !dbg !1870, !tbaa !839
  br label %582, !dbg !1870

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %583, metadata !1399, metadata !DIExpression()), !dbg !1462
  %584 = icmp ult i64 %583, %572, !dbg !1875
  br i1 %584, label %585, label %587, !dbg !1878

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1875
  store i8 39, i8* %586, align 1, !dbg !1875, !tbaa !839
  br label %587, !dbg !1875

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1878
  call void @llvm.dbg.value(metadata i64 %588, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 0, metadata !1406, metadata !DIExpression()), !dbg !1470
  br label %589, !dbg !1879

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1818
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8 %598, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %597, metadata !1399, metadata !DIExpression()), !dbg !1462
  %599 = icmp ult i64 %597, %590, !dbg !1880
  br i1 %599, label %600, label %602, !dbg !1883

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1880
  store i8 %592, i8* %601, align 1, !dbg !1880, !tbaa !839
  br label %602, !dbg !1880

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %603, metadata !1399, metadata !DIExpression()), !dbg !1462
  %604 = and i8 %591, 1, !dbg !1884
  %605 = icmp eq i8 %604, 0, !dbg !1884
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1886
  call void @llvm.dbg.value(metadata i8 %606, metadata !1408, metadata !DIExpression()), !dbg !1472
  br label %607, !dbg !1887

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1840
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1521
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1463
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1828
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1470
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1521
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1472
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %614, metadata !1408, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i8 %613, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %612, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %611, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %610, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %609, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %608, metadata !1398, metadata !DIExpression()), !dbg !1522
  %616 = add i64 %608, 1, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %616, metadata !1398, metadata !DIExpression()), !dbg !1522
  br label %121, !dbg !1889, !llvm.loop !1890

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i8 %126, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %126, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %127, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %127, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %128, metadata !1408, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i8 %128, metadata !1408, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i8 %126, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %126, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %127, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %127, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %128, metadata !1408, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i8 %128, metadata !1408, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i8 %126, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %126, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %127, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %127, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %128, metadata !1408, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i8 %128, metadata !1408, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i8 %126, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %126, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %127, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %127, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %128, metadata !1408, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i8 %128, metadata !1408, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %618, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %618, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i8 %126, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %126, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %127, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %127, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %128, metadata !1408, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i8 %128, metadata !1408, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %125, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %125, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i8 %126, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %126, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %127, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %127, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %128, metadata !1408, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i8 %128, metadata !1408, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  %619 = icmp eq i64 %123, 0, !dbg !1892
  %620 = and i1 %114, %619, !dbg !1894
  %621 = xor i1 %620, true, !dbg !1894
  %622 = or i1 %110, %621, !dbg !1894
  br i1 %622, label %623, label %661, !dbg !1894

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1895
  %625 = xor i1 %624, true, !dbg !1895
  %626 = and i8 %127, 1, !dbg !1897
  %627 = icmp eq i8 %626, 0, !dbg !1897
  %628 = or i1 %627, %625, !dbg !1895
  br i1 %628, label %638, label %629, !dbg !1895

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1898
  %631 = icmp eq i8 %630, 0, !dbg !1898
  br i1 %631, label %634, label %632, !dbg !1901

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %618, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %618, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %618, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %618, metadata !1392, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i8* %95, metadata !1396, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %96, metadata !1397, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %125, metadata !1392, metadata !DIExpression()), !dbg !1456
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1902
  br label %671, !dbg !1903

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1904
  %636 = icmp ne i64 %124, 0, !dbg !1906
  %637 = and i1 %636, %635, !dbg !1907
  br i1 %637, label %27, label %638, !dbg !1907

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i8* %98, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8* %98, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i8* %98, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8* %98, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i8* %98, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8* %98, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i8* %98, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8* %98, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i8* %98, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8* %98, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i8* %98, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %129, metadata !1390, metadata !DIExpression()), !dbg !1454
  %639 = icmp ne i8* %98, null, !dbg !1908
  %640 = and i1 %639, %110, !dbg !1910
  br i1 %640, label %641, label %656, !dbg !1910

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %123, metadata !1399, metadata !DIExpression()), !dbg !1462
  %642 = load i8, i8* %98, align 1, !dbg !1911, !tbaa !839
  %643 = icmp eq i8 %642, 0, !dbg !1914
  br i1 %643, label %656, label %644, !dbg !1914

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %647, metadata !1399, metadata !DIExpression()), !dbg !1462
  %648 = icmp ult i64 %647, %129, !dbg !1915
  br i1 %648, label %649, label %651, !dbg !1918

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1915
  store i8 %645, i8* %650, align 1, !dbg !1915, !tbaa !839
  br label %651, !dbg !1915

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1918
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1919
  call void @llvm.dbg.value(metadata i8* %653, metadata !1401, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %652, metadata !1399, metadata !DIExpression()), !dbg !1462
  %654 = load i8, i8* %653, align 1, !dbg !1911, !tbaa !839
  %655 = icmp eq i8 %654, 0, !dbg !1914
  br i1 %655, label %656, label %644, !dbg !1914, !llvm.loop !1920

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1462
  call void @llvm.dbg.value(metadata i64 %657, metadata !1399, metadata !DIExpression()), !dbg !1462
  %658 = icmp ult i64 %657, %129, !dbg !1922
  br i1 %658, label %659, label %671, !dbg !1924

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1925
  store i8 0, i8* %660, align 1, !dbg !1926, !tbaa !839
  br label %671, !dbg !1925

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1390, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %663, metadata !1392, metadata !DIExpression()), !dbg !1456
  %665 = icmp ne i32 %662, 2, !dbg !1927
  %666 = icmp eq i8 %102, 0, !dbg !1929
  %667 = or i1 %665, %666, !dbg !1930
  call void @llvm.dbg.value(metadata i32 4, metadata !1393, metadata !DIExpression()), !dbg !1457
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1930
  call void @llvm.dbg.value(metadata i32 %668, metadata !1393, metadata !DIExpression()), !dbg !1457
  %669 = and i32 %5, -3, !dbg !1931
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1932
  br label %671, !dbg !1933

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1934
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1935 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1939, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i32 %1, metadata !1940, metadata !DIExpression()), !dbg !1944
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1945
  call void @llvm.dbg.value(metadata i8* %3, metadata !1941, metadata !DIExpression()), !dbg !1946
  %4 = icmp eq i8* %3, %0, !dbg !1947
  br i1 %4, label %5, label %71, !dbg !1949

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1950
  call void @llvm.dbg.value(metadata i8* %6, metadata !1942, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8* %6, metadata !1952, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* null, metadata !1958, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 85, metadata !1959, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8 84, metadata !1960, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 70, metadata !1961, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 45, metadata !1962, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 56, metadata !1963, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 0, metadata !1964, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 0, metadata !1965, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 0, metadata !1966, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 0, metadata !1967, metadata !DIExpression()), !dbg !1980
  %7 = load i8, i8* %6, align 1, !dbg !1981, !tbaa !839
  %8 = and i8 %7, -33, !dbg !1981
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1981

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1983, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8* null, metadata !1988, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 84, metadata !1989, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i8 70, metadata !1990, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8 45, metadata !1991, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 56, metadata !1992, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8 0, metadata !1993, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 0, metadata !1994, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8 0, metadata !1995, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 0, metadata !1996, metadata !DIExpression()), !dbg !2009
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2010
  %11 = load i8, i8* %10, align 1, !dbg !2010, !tbaa !839
  %12 = and i8 %11, -33, !dbg !2010
  %13 = icmp eq i8 %12, 84, !dbg !2010
  br i1 %13, label %14, label %68, !dbg !2010

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2012, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8* null, metadata !2017, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 70, metadata !2018, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i8 45, metadata !2019, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i8 56, metadata !2020, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !2021, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i8 0, metadata !2023, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8 0, metadata !2024, metadata !DIExpression()), !dbg !2036
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2037
  %16 = load i8, i8* %15, align 1, !dbg !2037, !tbaa !839
  %17 = and i8 %16, -33, !dbg !2037
  %18 = icmp eq i8 %17, 70, !dbg !2037
  br i1 %18, label %19, label %68, !dbg !2037

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2039, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8* null, metadata !2044, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8 45, metadata !2045, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8 56, metadata !2046, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8 0, metadata !2047, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 0, metadata !2048, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i8 0, metadata !2049, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8 0, metadata !2050, metadata !DIExpression()), !dbg !2061
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2062
  %21 = load i8, i8* %20, align 1, !dbg !2062, !tbaa !839
  %22 = icmp eq i8 %21, 45, !dbg !2062
  br i1 %22, label %23, label %68, !dbg !2064

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2065, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* null, metadata !2070, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 56, metadata !2071, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8 0, metadata !2072, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 0, metadata !2073, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8 0, metadata !2074, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 0, metadata !2075, metadata !DIExpression()), !dbg !2085
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2086
  %25 = load i8, i8* %24, align 1, !dbg !2086, !tbaa !839
  %26 = icmp eq i8 %25, 56, !dbg !2086
  br i1 %26, label %27, label %68, !dbg !2088

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2089, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8* null, metadata !2094, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 0, metadata !2095, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i8 0, metadata !2096, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 0, metadata !2097, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 0, metadata !2098, metadata !DIExpression()), !dbg !2107
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2108
  %29 = load i8, i8* %28, align 1, !dbg !2108, !tbaa !839
  %30 = icmp eq i8 %29, 0, !dbg !2108
  br i1 %30, label %31, label %68, !dbg !2110

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2111, !tbaa !839
  %33 = icmp eq i8 %32, 96, !dbg !2112
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.68, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.69, i64 0, i64 0), !dbg !2111
  br label %71, !dbg !2113

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1983, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8* null, metadata !1988, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 66, metadata !1989, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8 49, metadata !1990, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 56, metadata !1991, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 48, metadata !1992, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8 51, metadata !1993, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 48, metadata !1994, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 0, metadata !1995, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8 0, metadata !1996, metadata !DIExpression()), !dbg !2126
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2127
  %37 = load i8, i8* %36, align 1, !dbg !2127, !tbaa !839
  %38 = and i8 %37, -33, !dbg !2127
  %39 = icmp eq i8 %38, 66, !dbg !2127
  br i1 %39, label %40, label %68, !dbg !2127

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2012, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i8* null, metadata !2017, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 49, metadata !2018, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8 56, metadata !2019, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8 48, metadata !2020, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 51, metadata !2021, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 48, metadata !2022, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 0, metadata !2023, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 0, metadata !2024, metadata !DIExpression()), !dbg !2137
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2138
  %42 = load i8, i8* %41, align 1, !dbg !2138, !tbaa !839
  %43 = icmp eq i8 %42, 49, !dbg !2138
  br i1 %43, label %44, label %68, !dbg !2139

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2039, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8* null, metadata !2044, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i8 56, metadata !2045, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 48, metadata !2046, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8 51, metadata !2047, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i8 48, metadata !2048, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 0, metadata !2049, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 0, metadata !2050, metadata !DIExpression()), !dbg !2148
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2149
  %46 = load i8, i8* %45, align 1, !dbg !2149, !tbaa !839
  %47 = icmp eq i8 %46, 56, !dbg !2149
  br i1 %47, label %48, label %68, !dbg !2150

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2065, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i8* null, metadata !2070, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i8 48, metadata !2071, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 51, metadata !2072, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 48, metadata !2073, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8 0, metadata !2074, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i8 0, metadata !2075, metadata !DIExpression()), !dbg !2158
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2159
  %50 = load i8, i8* %49, align 1, !dbg !2159, !tbaa !839
  %51 = icmp eq i8 %50, 48, !dbg !2159
  br i1 %51, label %52, label %68, !dbg !2160

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2089, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i8* null, metadata !2094, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8 51, metadata !2095, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 48, metadata !2096, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i8 0, metadata !2097, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 0, metadata !2098, metadata !DIExpression()), !dbg !2167
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2168
  %54 = load i8, i8* %53, align 1, !dbg !2168, !tbaa !839
  %55 = icmp eq i8 %54, 51, !dbg !2168
  br i1 %55, label %56, label %68, !dbg !2169

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2170, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* null, metadata !2175, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 48, metadata !2176, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8 0, metadata !2177, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8 0, metadata !2178, metadata !DIExpression()), !dbg !2186
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2187
  %58 = load i8, i8* %57, align 1, !dbg !2187, !tbaa !839
  %59 = icmp eq i8 %58, 48, !dbg !2187
  br i1 %59, label %60, label %68, !dbg !2189

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2190, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8* null, metadata !2195, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 0, metadata !2197, metadata !DIExpression()), !dbg !2204
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2205
  %62 = load i8, i8* %61, align 1, !dbg !2205, !tbaa !839
  %63 = icmp eq i8 %62, 0, !dbg !2205
  br i1 %63, label %64, label %68, !dbg !2207

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2208, !tbaa !839
  %66 = icmp eq i8 %65, 96, !dbg !2209
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.70, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.71, i64 0, i64 0), !dbg !2208
  br label %71, !dbg !2210

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2211
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), !dbg !2212
  br label %71, !dbg !2213

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2214
  ret i8* %72, !dbg !2215
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2216 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2220, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i64 %1, metadata !2221, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2222, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8* %0, metadata !2226, metadata !DIExpression()) #10, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %1, metadata !2231, metadata !DIExpression()) #10, !dbg !2241
  call void @llvm.dbg.value(metadata i64* null, metadata !2232, metadata !DIExpression()) #10, !dbg !2242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2233, metadata !DIExpression()) #10, !dbg !2243
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2244
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2244
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2234, metadata !DIExpression()) #10, !dbg !2245
  %6 = tail call i32* @__errno_location() #17, !dbg !2246
  %7 = load i32, i32* %6, align 4, !dbg !2246, !tbaa !854
  call void @llvm.dbg.value(metadata i32 %7, metadata !2235, metadata !DIExpression()) #10, !dbg !2247
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2248
  %9 = load i32, i32* %8, align 4, !dbg !2248, !tbaa !1322
  %10 = or i32 %9, 1, !dbg !2249
  call void @llvm.dbg.value(metadata i32 %10, metadata !2236, metadata !DIExpression()) #10, !dbg !2250
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2251
  %12 = load i32, i32* %11, align 8, !dbg !2251, !tbaa !1263
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2252
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2253
  %15 = load i8*, i8** %14, align 8, !dbg !2253, !tbaa !1348
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2254
  %17 = load i8*, i8** %16, align 8, !dbg !2254, !tbaa !1351
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !2255
  %19 = add i64 %18, 1, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %19, metadata !2237, metadata !DIExpression()) #10, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %19, metadata !2258, metadata !DIExpression()) #10, !dbg !2263
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2265
  call void @llvm.dbg.value(metadata i8* %20, metadata !2238, metadata !DIExpression()) #10, !dbg !2266
  %21 = load i32, i32* %11, align 8, !dbg !2267, !tbaa !1263
  %22 = load i8*, i8** %14, align 8, !dbg !2268, !tbaa !1348
  %23 = load i8*, i8** %16, align 8, !dbg !2269, !tbaa !1351
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !2270
  store i32 %7, i32* %6, align 4, !dbg !2271, !tbaa !854
  ret i8* %20, !dbg !2272
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2227 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2226, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %1, metadata !2231, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64* %2, metadata !2232, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2233, metadata !DIExpression()), !dbg !2276
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2277
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2234, metadata !DIExpression()), !dbg !2278
  %7 = tail call i32* @__errno_location() #17, !dbg !2279
  %8 = load i32, i32* %7, align 4, !dbg !2279, !tbaa !854
  call void @llvm.dbg.value(metadata i32 %8, metadata !2235, metadata !DIExpression()), !dbg !2280
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2281
  %10 = load i32, i32* %9, align 4, !dbg !2281, !tbaa !1322
  %11 = icmp ne i64* %2, null, !dbg !2282
  %12 = xor i1 %11, true, !dbg !2282
  %13 = zext i1 %12 to i32, !dbg !2282
  %14 = or i32 %10, %13, !dbg !2283
  call void @llvm.dbg.value(metadata i32 %14, metadata !2236, metadata !DIExpression()), !dbg !2284
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2285
  %16 = load i32, i32* %15, align 8, !dbg !2285, !tbaa !1263
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2286
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2287
  %19 = load i8*, i8** %18, align 8, !dbg !2287, !tbaa !1348
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2288
  %21 = load i8*, i8** %20, align 8, !dbg !2288, !tbaa !1351
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2289
  %23 = add i64 %22, 1, !dbg !2290
  call void @llvm.dbg.value(metadata i64 %23, metadata !2237, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %23, metadata !2258, metadata !DIExpression()) #10, !dbg !2292
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2294
  call void @llvm.dbg.value(metadata i8* %24, metadata !2238, metadata !DIExpression()), !dbg !2295
  %25 = load i32, i32* %15, align 8, !dbg !2296, !tbaa !1263
  %26 = load i8*, i8** %18, align 8, !dbg !2297, !tbaa !1348
  %27 = load i8*, i8** %20, align 8, !dbg !2298, !tbaa !1351
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2299
  store i32 %8, i32* %7, align 4, !dbg !2300, !tbaa !854
  br i1 %11, label %29, label %30, !dbg !2301

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2302, !tbaa !928
  br label %30, !dbg !2304

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2305
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2306 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2310, !tbaa !743
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2308, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 1, metadata !2309, metadata !DIExpression()), !dbg !2312
  %2 = load i32, i32* @nslots, align 4, !dbg !2313, !tbaa !854
  %3 = icmp sgt i32 %2, 1, !dbg !2316
  br i1 %3, label %4, label %12, !dbg !2317

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2309, metadata !DIExpression()), !dbg !2312
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2318
  %7 = load i8*, i8** %6, align 8, !dbg !2318, !tbaa !2319
  tail call void @free(i8* %7) #10, !dbg !2321
  %8 = add nuw nsw i64 %5, 1, !dbg !2322
  call void @llvm.dbg.value(metadata i32 undef, metadata !2309, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2312
  %9 = load i32, i32* @nslots, align 4, !dbg !2313, !tbaa !854
  %10 = sext i32 %9 to i64, !dbg !2316
  %11 = icmp slt i64 %8, %10, !dbg !2316
  br i1 %11, label %4, label %12, !dbg !2317, !llvm.loop !2323

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2325
  %14 = load i8*, i8** %13, align 8, !dbg !2325, !tbaa !2319
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2327
  br i1 %15, label %17, label %16, !dbg !2328

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2329
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2331, !tbaa !2332
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2333, !tbaa !2319
  br label %17, !dbg !2334

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2335
  br i1 %18, label %21, label %19, !dbg !2337

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2338
  tail call void @free(i8* %20) #10, !dbg !2340
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2341, !tbaa !743
  br label %21, !dbg !2342

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2343, !tbaa !854
  ret void, !dbg !2344
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2345 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2349, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %1, metadata !2350, metadata !DIExpression()), !dbg !2352
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2353
  ret i8* %3, !dbg !2354
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2355 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2359, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8* %1, metadata !2360, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i64 %2, metadata !2361, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2362, metadata !DIExpression()), !dbg !2377
  %5 = tail call i32* @__errno_location() #17, !dbg !2378
  %6 = load i32, i32* %5, align 4, !dbg !2378, !tbaa !854
  call void @llvm.dbg.value(metadata i32 %6, metadata !2363, metadata !DIExpression()), !dbg !2379
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2380, !tbaa !743
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2364, metadata !DIExpression()), !dbg !2381
  %8 = icmp slt i32 %0, 0, !dbg !2382
  br i1 %8, label %9, label %10, !dbg !2384

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2385
  unreachable, !dbg !2385

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2386, !tbaa !854
  %12 = icmp sgt i32 %11, %0, !dbg !2387
  br i1 %12, label %34, label %13, !dbg !2388

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2389
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2368, metadata !DIExpression()), !dbg !2390
  %15 = icmp eq i32 %0, 2147483647, !dbg !2391
  br i1 %15, label %16, label %17, !dbg !2393

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2394
  unreachable, !dbg !2394

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2395
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2395
  %20 = add nsw i32 %0, 1, !dbg !2396
  %21 = sext i32 %20 to i64, !dbg !2397
  %22 = shl nsw i64 %21, 4, !dbg !2398
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2399
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2399
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2364, metadata !DIExpression()), !dbg !2381
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2400, !tbaa !743
  br i1 %14, label %25, label %26, !dbg !2401

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2402, !tbaa.struct !2404
  br label %26, !dbg !2405

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2406, !tbaa !854
  %28 = sext i32 %27 to i64, !dbg !2407
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2407
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2408
  %31 = sub nsw i32 %20, %27, !dbg !2409
  %32 = sext i32 %31 to i64, !dbg !2410
  %33 = shl nsw i64 %32, 4, !dbg !2411
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2408
  store i32 %20, i32* @nslots, align 4, !dbg !2412, !tbaa !854
  br label %34, !dbg !2413

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2414
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2364, metadata !DIExpression()), !dbg !2381
  %36 = sext i32 %0 to i64, !dbg !2415
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2416
  %38 = load i64, i64* %37, align 8, !dbg !2416, !tbaa !2332
  call void @llvm.dbg.value(metadata i64 %38, metadata !2369, metadata !DIExpression()), !dbg !2417
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2418
  %40 = load i8*, i8** %39, align 8, !dbg !2418, !tbaa !2319
  call void @llvm.dbg.value(metadata i8* %40, metadata !2371, metadata !DIExpression()), !dbg !2419
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2420
  %42 = load i32, i32* %41, align 4, !dbg !2420, !tbaa !1322
  %43 = or i32 %42, 1, !dbg !2421
  call void @llvm.dbg.value(metadata i32 %43, metadata !2372, metadata !DIExpression()), !dbg !2422
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2423
  %45 = load i32, i32* %44, align 8, !dbg !2423, !tbaa !1263
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2424
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2425
  %48 = load i8*, i8** %47, align 8, !dbg !2425, !tbaa !1348
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2426
  %50 = load i8*, i8** %49, align 8, !dbg !2426, !tbaa !1351
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2427
  call void @llvm.dbg.value(metadata i64 %51, metadata !2373, metadata !DIExpression()), !dbg !2428
  %52 = icmp ugt i64 %38, %51, !dbg !2429
  br i1 %52, label %63, label %53, !dbg !2431

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2432
  call void @llvm.dbg.value(metadata i64 %54, metadata !2369, metadata !DIExpression()), !dbg !2417
  store i64 %54, i64* %37, align 8, !dbg !2434, !tbaa !2332
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2435
  br i1 %55, label %57, label %56, !dbg !2437

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2438
  br label %57, !dbg !2438

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2258, metadata !DIExpression()) #10, !dbg !2439
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2441
  call void @llvm.dbg.value(metadata i8* %58, metadata !2371, metadata !DIExpression()), !dbg !2419
  store i8* %58, i8** %39, align 8, !dbg !2442, !tbaa !2319
  %59 = load i32, i32* %44, align 8, !dbg !2443, !tbaa !1263
  %60 = load i8*, i8** %47, align 8, !dbg !2444, !tbaa !1348
  %61 = load i8*, i8** %49, align 8, !dbg !2445, !tbaa !1351
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2446
  br label %63, !dbg !2447

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2448
  call void @llvm.dbg.value(metadata i8* %64, metadata !2371, metadata !DIExpression()), !dbg !2419
  store i32 %6, i32* %5, align 4, !dbg !2449, !tbaa !854
  ret i8* %64, !dbg !2450
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2451 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2455, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8* %1, metadata !2456, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i64 %2, metadata !2457, metadata !DIExpression()), !dbg !2460
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2461
  ret i8* %4, !dbg !2462
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2463 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2467, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i32 0, metadata !2349, metadata !DIExpression()) #10, !dbg !2469
  call void @llvm.dbg.value(metadata i8* %0, metadata !2350, metadata !DIExpression()) #10, !dbg !2471
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2472
  ret i8* %2, !dbg !2473
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2474 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2478, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i64 %1, metadata !2479, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 0, metadata !2455, metadata !DIExpression()) #10, !dbg !2482
  call void @llvm.dbg.value(metadata i8* %0, metadata !2456, metadata !DIExpression()) #10, !dbg !2484
  call void @llvm.dbg.value(metadata i64 %1, metadata !2457, metadata !DIExpression()) #10, !dbg !2485
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2486
  ret i8* %3, !dbg !2487
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2488 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2492, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i32 %1, metadata !2493, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8* %2, metadata !2494, metadata !DIExpression()), !dbg !2498
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2499
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2499
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2495, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata i32 %1, metadata !2501, metadata !DIExpression()) #10, !dbg !2507
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2509, !alias.scope !2510
  %6 = icmp eq i32 %1, 10, !dbg !2513
  br i1 %6, label %7, label %8, !dbg !2515

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2516, !noalias !2510
  unreachable, !dbg !2516

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2517
  store i32 %1, i32* %9, align 8, !dbg !2518, !tbaa !1263, !alias.scope !2510
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2495, metadata !DIExpression(DW_OP_deref)), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2506, metadata !DIExpression(DW_OP_deref)), !dbg !2509
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2519
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2520
  ret i8* %10, !dbg !2521
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2522 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2526, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i32 %1, metadata !2527, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %2, metadata !2528, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %3, metadata !2529, metadata !DIExpression()), !dbg !2534
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2535
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2535
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2530, metadata !DIExpression(DW_OP_deref)), !dbg !2536
  call void @llvm.dbg.value(metadata i32 %1, metadata !2501, metadata !DIExpression()) #10, !dbg !2537
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2539, !alias.scope !2540
  %7 = icmp eq i32 %1, 10, !dbg !2543
  br i1 %7, label %8, label %9, !dbg !2544

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2545, !noalias !2540
  unreachable, !dbg !2545

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2546
  store i32 %1, i32* %10, align 8, !dbg !2547, !tbaa !1263, !alias.scope !2540
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2530, metadata !DIExpression(DW_OP_deref)), !dbg !2536
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2506, metadata !DIExpression(DW_OP_deref)), !dbg !2539
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2548
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2549
  ret i8* %11, !dbg !2550
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2551 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2555, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8* %1, metadata !2556, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i32 0, metadata !2492, metadata !DIExpression()) #10, !dbg !2559
  call void @llvm.dbg.value(metadata i32 %0, metadata !2493, metadata !DIExpression()) #10, !dbg !2561
  call void @llvm.dbg.value(metadata i8* %1, metadata !2494, metadata !DIExpression()) #10, !dbg !2562
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2563
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2563
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2495, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2564
  call void @llvm.dbg.value(metadata i32 %0, metadata !2501, metadata !DIExpression()) #10, !dbg !2565
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2567, !alias.scope !2568
  %5 = icmp eq i32 %0, 10, !dbg !2571
  br i1 %5, label %6, label %7, !dbg !2572

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2573, !noalias !2568
  unreachable, !dbg !2573

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2574
  store i32 %0, i32* %8, align 8, !dbg !2575, !tbaa !1263, !alias.scope !2568
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2495, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2564
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2506, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2567
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2576
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2577
  ret i8* %9, !dbg !2578
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2579 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2583, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8* %1, metadata !2584, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %2, metadata !2585, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 0, metadata !2526, metadata !DIExpression()) #10, !dbg !2589
  call void @llvm.dbg.value(metadata i32 %0, metadata !2527, metadata !DIExpression()) #10, !dbg !2591
  call void @llvm.dbg.value(metadata i8* %1, metadata !2528, metadata !DIExpression()) #10, !dbg !2592
  call void @llvm.dbg.value(metadata i64 %2, metadata !2529, metadata !DIExpression()) #10, !dbg !2593
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2594
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2594
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2530, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2595
  call void @llvm.dbg.value(metadata i32 %0, metadata !2501, metadata !DIExpression()) #10, !dbg !2596
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2598, !alias.scope !2599
  %6 = icmp eq i32 %0, 10, !dbg !2602
  br i1 %6, label %7, label %8, !dbg !2603

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2604, !noalias !2599
  unreachable, !dbg !2604

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2605
  store i32 %0, i32* %9, align 8, !dbg !2606, !tbaa !1263, !alias.scope !2599
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2530, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2595
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2506, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2598
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2607
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2608
  ret i8* %10, !dbg !2609
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2610 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2614, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i64 %1, metadata !2615, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8 %2, metadata !2616, metadata !DIExpression()), !dbg !2620
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2621
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2621
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2622, !tbaa.struct !2623
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2617, metadata !DIExpression(DW_OP_deref)), !dbg !2624
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1282, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 %2, metadata !1283, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 1, metadata !1284, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 %2, metadata !1285, metadata !DIExpression()), !dbg !2629
  %6 = lshr i8 %2, 5, !dbg !2630
  %7 = zext i8 %6 to i64, !dbg !2630
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2631
  call void @llvm.dbg.value(metadata i32* %8, metadata !1286, metadata !DIExpression()), !dbg !2632
  %9 = and i8 %2, 31, !dbg !2633
  %10 = zext i8 %9 to i32, !dbg !2633
  call void @llvm.dbg.value(metadata i32 %10, metadata !1288, metadata !DIExpression()), !dbg !2634
  %11 = load i32, i32* %8, align 4, !dbg !2635, !tbaa !854
  %12 = lshr i32 %11, %10, !dbg !2636
  %13 = and i32 %12, 1, !dbg !2637
  call void @llvm.dbg.value(metadata i32 %13, metadata !1289, metadata !DIExpression()), !dbg !2638
  %14 = xor i32 %13, 1, !dbg !2639
  %15 = shl i32 %14, %10, !dbg !2640
  %16 = xor i32 %15, %11, !dbg !2641
  store i32 %16, i32* %8, align 4, !dbg !2641, !tbaa !854
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2617, metadata !DIExpression(DW_OP_deref)), !dbg !2624
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2642
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2643
  ret i8* %17, !dbg !2644
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2645 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2649, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8 %1, metadata !2650, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8* %0, metadata !2614, metadata !DIExpression()) #10, !dbg !2653
  call void @llvm.dbg.value(metadata i64 -1, metadata !2615, metadata !DIExpression()) #10, !dbg !2655
  call void @llvm.dbg.value(metadata i8 %1, metadata !2616, metadata !DIExpression()) #10, !dbg !2656
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2657
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2657
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2658, !tbaa.struct !2623
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2617, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2659
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1282, metadata !DIExpression()) #10, !dbg !2660
  call void @llvm.dbg.value(metadata i8 %1, metadata !1283, metadata !DIExpression()) #10, !dbg !2662
  call void @llvm.dbg.value(metadata i32 1, metadata !1284, metadata !DIExpression()) #10, !dbg !2663
  call void @llvm.dbg.value(metadata i8 %1, metadata !1285, metadata !DIExpression()) #10, !dbg !2664
  %5 = lshr i8 %1, 5, !dbg !2665
  %6 = zext i8 %5 to i64, !dbg !2665
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2666
  call void @llvm.dbg.value(metadata i32* %7, metadata !1286, metadata !DIExpression()) #10, !dbg !2667
  %8 = and i8 %1, 31, !dbg !2668
  %9 = zext i8 %8 to i32, !dbg !2668
  call void @llvm.dbg.value(metadata i32 %9, metadata !1288, metadata !DIExpression()) #10, !dbg !2669
  %10 = load i32, i32* %7, align 4, !dbg !2670, !tbaa !854
  %11 = lshr i32 %10, %9, !dbg !2671
  %12 = and i32 %11, 1, !dbg !2672
  call void @llvm.dbg.value(metadata i32 %12, metadata !1289, metadata !DIExpression()) #10, !dbg !2673
  %13 = xor i32 %12, 1, !dbg !2674
  %14 = shl i32 %13, %9, !dbg !2675
  %15 = xor i32 %14, %10, !dbg !2676
  store i32 %15, i32* %7, align 4, !dbg !2676, !tbaa !854
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2617, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2659
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2677
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2678
  ret i8* %16, !dbg !2679
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2680 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2682, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8* %0, metadata !2649, metadata !DIExpression()) #10, !dbg !2684
  call void @llvm.dbg.value(metadata i8 58, metadata !2650, metadata !DIExpression()) #10, !dbg !2686
  call void @llvm.dbg.value(metadata i8* %0, metadata !2614, metadata !DIExpression()) #10, !dbg !2687
  call void @llvm.dbg.value(metadata i64 -1, metadata !2615, metadata !DIExpression()) #10, !dbg !2689
  call void @llvm.dbg.value(metadata i8 58, metadata !2616, metadata !DIExpression()) #10, !dbg !2690
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2691
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2691
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2692, !tbaa.struct !2623
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2617, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2693
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1282, metadata !DIExpression()) #10, !dbg !2694
  call void @llvm.dbg.value(metadata i8 58, metadata !1283, metadata !DIExpression()) #10, !dbg !2696
  call void @llvm.dbg.value(metadata i32 1, metadata !1284, metadata !DIExpression()) #10, !dbg !2697
  call void @llvm.dbg.value(metadata i8 58, metadata !1285, metadata !DIExpression()) #10, !dbg !2698
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2699
  call void @llvm.dbg.value(metadata i32* %4, metadata !1286, metadata !DIExpression()) #10, !dbg !2700
  call void @llvm.dbg.value(metadata i32 26, metadata !1288, metadata !DIExpression()) #10, !dbg !2701
  %5 = load i32, i32* %4, align 4, !dbg !2702, !tbaa !854
  %6 = or i32 %5, 67108864, !dbg !2703
  store i32 %6, i32* %4, align 4, !dbg !2703, !tbaa !854
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2617, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2693
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2704
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2705
  ret i8* %7, !dbg !2706
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2707 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2709, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i64 %1, metadata !2710, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8* %0, metadata !2614, metadata !DIExpression()) #10, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %1, metadata !2615, metadata !DIExpression()) #10, !dbg !2715
  call void @llvm.dbg.value(metadata i8 58, metadata !2616, metadata !DIExpression()) #10, !dbg !2716
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2717
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2717
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2718, !tbaa.struct !2623
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2617, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2719
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1282, metadata !DIExpression()) #10, !dbg !2720
  call void @llvm.dbg.value(metadata i8 58, metadata !1283, metadata !DIExpression()) #10, !dbg !2722
  call void @llvm.dbg.value(metadata i32 1, metadata !1284, metadata !DIExpression()) #10, !dbg !2723
  call void @llvm.dbg.value(metadata i8 58, metadata !1285, metadata !DIExpression()) #10, !dbg !2724
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2725
  call void @llvm.dbg.value(metadata i32* %5, metadata !1286, metadata !DIExpression()) #10, !dbg !2726
  call void @llvm.dbg.value(metadata i32 26, metadata !1288, metadata !DIExpression()) #10, !dbg !2727
  %6 = load i32, i32* %5, align 4, !dbg !2728, !tbaa !854
  %7 = or i32 %6, 67108864, !dbg !2729
  store i32 %7, i32* %5, align 4, !dbg !2729, !tbaa !854
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2617, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2719
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2730
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2731
  ret i8* %8, !dbg !2732
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2733 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2506, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2739
  call void @llvm.dbg.value(metadata i32 %0, metadata !2735, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i32 %1, metadata !2736, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i8* %2, metadata !2737, metadata !DIExpression()), !dbg !2743
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2744
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2744
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2745
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2745
  call void @llvm.dbg.value(metadata i32 %1, metadata !2501, metadata !DIExpression()) #10, !dbg !2746
  call void @llvm.dbg.value(metadata i32 0, metadata !2506, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2739
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2739, !alias.scope !2747
  %8 = icmp eq i32 %1, 10, !dbg !2750
  br i1 %8, label %9, label %10, !dbg !2751

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2752, !noalias !2747
  unreachable, !dbg !2752

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2506, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2739
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2745
  store i32 %1, i32* %11, align 8, !dbg !2745
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2745
  %13 = bitcast i32* %12 to i8*, !dbg !2745
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2745
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2745
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2738, metadata !DIExpression(DW_OP_deref)), !dbg !2753
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1282, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 58, metadata !1283, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i32 1, metadata !1284, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8 58, metadata !1285, metadata !DIExpression()), !dbg !2758
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2759
  call void @llvm.dbg.value(metadata i32* %14, metadata !1286, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32 26, metadata !1288, metadata !DIExpression()), !dbg !2761
  %15 = load i32, i32* %14, align 4, !dbg !2762, !tbaa !854
  %16 = or i32 %15, 67108864, !dbg !2763
  store i32 %16, i32* %14, align 4, !dbg !2763, !tbaa !854
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2738, metadata !DIExpression(DW_OP_deref)), !dbg !2753
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2764
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2765
  ret i8* %17, !dbg !2766
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2767 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2771, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8* %1, metadata !2772, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8* %2, metadata !2773, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i8* %3, metadata !2774, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i32 %0, metadata !2779, metadata !DIExpression()) #10, !dbg !2789
  call void @llvm.dbg.value(metadata i8* %1, metadata !2784, metadata !DIExpression()) #10, !dbg !2791
  call void @llvm.dbg.value(metadata i8* %2, metadata !2785, metadata !DIExpression()) #10, !dbg !2792
  call void @llvm.dbg.value(metadata i8* %3, metadata !2786, metadata !DIExpression()) #10, !dbg !2793
  call void @llvm.dbg.value(metadata i64 -1, metadata !2787, metadata !DIExpression()) #10, !dbg !2794
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2795
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2795
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2796, !tbaa.struct !2623
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2788, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2797
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1330, metadata !DIExpression()) #10, !dbg !2798
  call void @llvm.dbg.value(metadata i8* %1, metadata !1331, metadata !DIExpression()) #10, !dbg !2800
  call void @llvm.dbg.value(metadata i8* %2, metadata !1332, metadata !DIExpression()) #10, !dbg !2801
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1330, metadata !DIExpression()) #10, !dbg !2798
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2802
  store i32 10, i32* %7, align 8, !dbg !2803, !tbaa !1263
  %8 = icmp ne i8* %1, null, !dbg !2804
  %9 = icmp ne i8* %2, null, !dbg !2805
  %10 = and i1 %8, %9, !dbg !2806
  br i1 %10, label %12, label %11, !dbg !2806

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2807
  unreachable, !dbg !2807

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2808
  store i8* %1, i8** %13, align 8, !dbg !2809, !tbaa !1348
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2810
  store i8* %2, i8** %14, align 8, !dbg !2811, !tbaa !1351
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2788, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2797
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2812
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2813
  ret i8* %15, !dbg !2814
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2780 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2779, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8* %1, metadata !2784, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8* %2, metadata !2785, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8* %3, metadata !2786, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i64 %4, metadata !2787, metadata !DIExpression()), !dbg !2819
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2820
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2820
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2821, !tbaa.struct !2623
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2788, metadata !DIExpression(DW_OP_deref)), !dbg !2822
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1330, metadata !DIExpression()) #10, !dbg !2823
  call void @llvm.dbg.value(metadata i8* %1, metadata !1331, metadata !DIExpression()) #10, !dbg !2825
  call void @llvm.dbg.value(metadata i8* %2, metadata !1332, metadata !DIExpression()) #10, !dbg !2826
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1330, metadata !DIExpression()) #10, !dbg !2823
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2827
  store i32 10, i32* %8, align 8, !dbg !2828, !tbaa !1263
  %9 = icmp ne i8* %1, null, !dbg !2829
  %10 = icmp ne i8* %2, null, !dbg !2830
  %11 = and i1 %9, %10, !dbg !2831
  br i1 %11, label %13, label %12, !dbg !2831

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2832
  unreachable, !dbg !2832

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2833
  store i8* %1, i8** %14, align 8, !dbg !2834, !tbaa !1348
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2835
  store i8* %2, i8** %15, align 8, !dbg !2836, !tbaa !1351
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2788, metadata !DIExpression(DW_OP_deref)), !dbg !2822
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2837
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2838
  ret i8* %16, !dbg !2839
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2840 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2844, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8* %1, metadata !2845, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8* %2, metadata !2846, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i32 0, metadata !2771, metadata !DIExpression()) #10, !dbg !2850
  call void @llvm.dbg.value(metadata i8* %0, metadata !2772, metadata !DIExpression()) #10, !dbg !2852
  call void @llvm.dbg.value(metadata i8* %1, metadata !2773, metadata !DIExpression()) #10, !dbg !2853
  call void @llvm.dbg.value(metadata i8* %2, metadata !2774, metadata !DIExpression()) #10, !dbg !2854
  call void @llvm.dbg.value(metadata i32 0, metadata !2779, metadata !DIExpression()) #10, !dbg !2855
  call void @llvm.dbg.value(metadata i8* %0, metadata !2784, metadata !DIExpression()) #10, !dbg !2857
  call void @llvm.dbg.value(metadata i8* %1, metadata !2785, metadata !DIExpression()) #10, !dbg !2858
  call void @llvm.dbg.value(metadata i8* %2, metadata !2786, metadata !DIExpression()) #10, !dbg !2859
  call void @llvm.dbg.value(metadata i64 -1, metadata !2787, metadata !DIExpression()) #10, !dbg !2860
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2861
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2861
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2862, !tbaa.struct !2623
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2788, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2863
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1330, metadata !DIExpression()) #10, !dbg !2864
  call void @llvm.dbg.value(metadata i8* %0, metadata !1331, metadata !DIExpression()) #10, !dbg !2866
  call void @llvm.dbg.value(metadata i8* %1, metadata !1332, metadata !DIExpression()) #10, !dbg !2867
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1330, metadata !DIExpression()) #10, !dbg !2864
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2868
  store i32 10, i32* %6, align 8, !dbg !2869, !tbaa !1263
  %7 = icmp ne i8* %0, null, !dbg !2870
  %8 = icmp ne i8* %1, null, !dbg !2871
  %9 = and i1 %7, %8, !dbg !2872
  br i1 %9, label %11, label %10, !dbg !2872

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2873
  unreachable, !dbg !2873

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2874
  store i8* %0, i8** %12, align 8, !dbg !2875, !tbaa !1348
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2876
  store i8* %1, i8** %13, align 8, !dbg !2877, !tbaa !1351
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2788, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2863
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2878
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2879
  ret i8* %14, !dbg !2880
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2881 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2885, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8* %1, metadata !2886, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i8* %2, metadata !2887, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i64 %3, metadata !2888, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i32 0, metadata !2779, metadata !DIExpression()) #10, !dbg !2893
  call void @llvm.dbg.value(metadata i8* %0, metadata !2784, metadata !DIExpression()) #10, !dbg !2895
  call void @llvm.dbg.value(metadata i8* %1, metadata !2785, metadata !DIExpression()) #10, !dbg !2896
  call void @llvm.dbg.value(metadata i8* %2, metadata !2786, metadata !DIExpression()) #10, !dbg !2897
  call void @llvm.dbg.value(metadata i64 %3, metadata !2787, metadata !DIExpression()) #10, !dbg !2898
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2899
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2899
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2900, !tbaa.struct !2623
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2788, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1330, metadata !DIExpression()) #10, !dbg !2902
  call void @llvm.dbg.value(metadata i8* %0, metadata !1331, metadata !DIExpression()) #10, !dbg !2904
  call void @llvm.dbg.value(metadata i8* %1, metadata !1332, metadata !DIExpression()) #10, !dbg !2905
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1330, metadata !DIExpression()) #10, !dbg !2902
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2906
  store i32 10, i32* %7, align 8, !dbg !2907, !tbaa !1263
  %8 = icmp ne i8* %0, null, !dbg !2908
  %9 = icmp ne i8* %1, null, !dbg !2909
  %10 = and i1 %8, %9, !dbg !2910
  br i1 %10, label %12, label %11, !dbg !2910

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2911
  unreachable, !dbg !2911

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2912
  store i8* %0, i8** %13, align 8, !dbg !2913, !tbaa !1348
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2914
  store i8* %1, i8** %14, align 8, !dbg !2915, !tbaa !1351
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2788, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2901
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2916
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2917
  ret i8* %15, !dbg !2918
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2919 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2923, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8* %1, metadata !2924, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i64 %2, metadata !2925, metadata !DIExpression()), !dbg !2928
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2929
  ret i8* %4, !dbg !2930
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2931 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2935, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 %1, metadata !2936, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i32 0, metadata !2923, metadata !DIExpression()) #10, !dbg !2939
  call void @llvm.dbg.value(metadata i8* %0, metadata !2924, metadata !DIExpression()) #10, !dbg !2941
  call void @llvm.dbg.value(metadata i64 %1, metadata !2925, metadata !DIExpression()) #10, !dbg !2942
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2943
  ret i8* %3, !dbg !2944
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2945 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2949, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i8* %1, metadata !2950, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i32 %0, metadata !2923, metadata !DIExpression()) #10, !dbg !2953
  call void @llvm.dbg.value(metadata i8* %1, metadata !2924, metadata !DIExpression()) #10, !dbg !2955
  call void @llvm.dbg.value(metadata i64 -1, metadata !2925, metadata !DIExpression()) #10, !dbg !2956
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2957
  ret i8* %3, !dbg !2958
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2959 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2963, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i32 0, metadata !2949, metadata !DIExpression()) #10, !dbg !2965
  call void @llvm.dbg.value(metadata i8* %0, metadata !2950, metadata !DIExpression()) #10, !dbg !2967
  call void @llvm.dbg.value(metadata i32 0, metadata !2923, metadata !DIExpression()) #10, !dbg !2968
  call void @llvm.dbg.value(metadata i8* %0, metadata !2924, metadata !DIExpression()) #10, !dbg !2970
  call void @llvm.dbg.value(metadata i64 -1, metadata !2925, metadata !DIExpression()) #10, !dbg !2971
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2972
  ret i8* %2, !dbg !2973
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2974 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3013, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8* %1, metadata !3014, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i8* %2, metadata !3015, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8* %3, metadata !3016, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i8** %4, metadata !3017, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i64 %5, metadata !3018, metadata !DIExpression()), !dbg !3024
  %7 = icmp eq i8* %1, null, !dbg !3025
  br i1 %7, label %10, label %8, !dbg !3027

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3028
  br label %12, !dbg !3028

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3029
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i32 5) #10, !dbg !3030
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !3030
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.79, i64 0, i64 0), i32 5) #10, !dbg !3031
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3031
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
  ], !dbg !3032

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3033
  unreachable, !dbg !3033

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.80, i64 0, i64 0), i32 5) #10, !dbg !3035
  %20 = load i8*, i8** %4, align 8, !dbg !3035, !tbaa !743
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3035
  br label %146, !dbg !3036

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.81, i64 0, i64 0), i32 5) #10, !dbg !3037
  %24 = load i8*, i8** %4, align 8, !dbg !3037, !tbaa !743
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3037
  %26 = load i8*, i8** %25, align 8, !dbg !3037, !tbaa !743
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3037
  br label %146, !dbg !3038

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.82, i64 0, i64 0), i32 5) #10, !dbg !3039
  %30 = load i8*, i8** %4, align 8, !dbg !3039, !tbaa !743
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3039
  %32 = load i8*, i8** %31, align 8, !dbg !3039, !tbaa !743
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3039
  %34 = load i8*, i8** %33, align 8, !dbg !3039, !tbaa !743
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3039
  br label %146, !dbg !3040

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.83, i64 0, i64 0), i32 5) #10, !dbg !3041
  %38 = load i8*, i8** %4, align 8, !dbg !3041, !tbaa !743
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3041
  %40 = load i8*, i8** %39, align 8, !dbg !3041, !tbaa !743
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3041
  %42 = load i8*, i8** %41, align 8, !dbg !3041, !tbaa !743
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3041
  %44 = load i8*, i8** %43, align 8, !dbg !3041, !tbaa !743
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3041
  br label %146, !dbg !3042

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.84, i64 0, i64 0), i32 5) #10, !dbg !3043
  %48 = load i8*, i8** %4, align 8, !dbg !3043, !tbaa !743
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3043
  %50 = load i8*, i8** %49, align 8, !dbg !3043, !tbaa !743
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3043
  %52 = load i8*, i8** %51, align 8, !dbg !3043, !tbaa !743
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3043
  %54 = load i8*, i8** %53, align 8, !dbg !3043, !tbaa !743
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3043
  %56 = load i8*, i8** %55, align 8, !dbg !3043, !tbaa !743
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3043
  br label %146, !dbg !3044

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.85, i64 0, i64 0), i32 5) #10, !dbg !3045
  %60 = load i8*, i8** %4, align 8, !dbg !3045, !tbaa !743
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3045
  %62 = load i8*, i8** %61, align 8, !dbg !3045, !tbaa !743
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3045
  %64 = load i8*, i8** %63, align 8, !dbg !3045, !tbaa !743
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3045
  %66 = load i8*, i8** %65, align 8, !dbg !3045, !tbaa !743
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3045
  %68 = load i8*, i8** %67, align 8, !dbg !3045, !tbaa !743
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3045
  %70 = load i8*, i8** %69, align 8, !dbg !3045, !tbaa !743
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3045
  br label %146, !dbg !3046

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.86, i64 0, i64 0), i32 5) #10, !dbg !3047
  %74 = load i8*, i8** %4, align 8, !dbg !3047, !tbaa !743
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3047
  %76 = load i8*, i8** %75, align 8, !dbg !3047, !tbaa !743
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3047
  %78 = load i8*, i8** %77, align 8, !dbg !3047, !tbaa !743
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3047
  %80 = load i8*, i8** %79, align 8, !dbg !3047, !tbaa !743
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3047
  %82 = load i8*, i8** %81, align 8, !dbg !3047, !tbaa !743
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3047
  %84 = load i8*, i8** %83, align 8, !dbg !3047, !tbaa !743
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3047
  %86 = load i8*, i8** %85, align 8, !dbg !3047, !tbaa !743
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3047
  br label %146, !dbg !3048

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.87, i64 0, i64 0), i32 5) #10, !dbg !3049
  %90 = load i8*, i8** %4, align 8, !dbg !3049, !tbaa !743
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3049
  %92 = load i8*, i8** %91, align 8, !dbg !3049, !tbaa !743
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3049
  %94 = load i8*, i8** %93, align 8, !dbg !3049, !tbaa !743
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3049
  %96 = load i8*, i8** %95, align 8, !dbg !3049, !tbaa !743
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3049
  %98 = load i8*, i8** %97, align 8, !dbg !3049, !tbaa !743
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3049
  %100 = load i8*, i8** %99, align 8, !dbg !3049, !tbaa !743
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3049
  %102 = load i8*, i8** %101, align 8, !dbg !3049, !tbaa !743
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3049
  %104 = load i8*, i8** %103, align 8, !dbg !3049, !tbaa !743
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3049
  br label %146, !dbg !3050

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.88, i64 0, i64 0), i32 5) #10, !dbg !3051
  %108 = load i8*, i8** %4, align 8, !dbg !3051, !tbaa !743
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3051
  %110 = load i8*, i8** %109, align 8, !dbg !3051, !tbaa !743
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3051
  %112 = load i8*, i8** %111, align 8, !dbg !3051, !tbaa !743
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3051
  %114 = load i8*, i8** %113, align 8, !dbg !3051, !tbaa !743
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3051
  %116 = load i8*, i8** %115, align 8, !dbg !3051, !tbaa !743
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3051
  %118 = load i8*, i8** %117, align 8, !dbg !3051, !tbaa !743
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3051
  %120 = load i8*, i8** %119, align 8, !dbg !3051, !tbaa !743
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3051
  %122 = load i8*, i8** %121, align 8, !dbg !3051, !tbaa !743
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3051
  %124 = load i8*, i8** %123, align 8, !dbg !3051, !tbaa !743
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3051
  br label %146, !dbg !3052

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.89, i64 0, i64 0), i32 5) #10, !dbg !3053
  %128 = load i8*, i8** %4, align 8, !dbg !3053, !tbaa !743
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3053
  %130 = load i8*, i8** %129, align 8, !dbg !3053, !tbaa !743
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3053
  %132 = load i8*, i8** %131, align 8, !dbg !3053, !tbaa !743
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3053
  %134 = load i8*, i8** %133, align 8, !dbg !3053, !tbaa !743
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3053
  %136 = load i8*, i8** %135, align 8, !dbg !3053, !tbaa !743
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3053
  %138 = load i8*, i8** %137, align 8, !dbg !3053, !tbaa !743
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3053
  %140 = load i8*, i8** %139, align 8, !dbg !3053, !tbaa !743
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3053
  %142 = load i8*, i8** %141, align 8, !dbg !3053, !tbaa !743
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3053
  %144 = load i8*, i8** %143, align 8, !dbg !3053, !tbaa !743
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3053
  br label %146, !dbg !3054

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3055
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3056 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3060, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i8* %1, metadata !3061, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i8* %2, metadata !3062, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8* %3, metadata !3063, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i8** %4, metadata !3064, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 0, metadata !3065, metadata !DIExpression()), !dbg !3071
  br label %6, !dbg !3072

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3074
  call void @llvm.dbg.value(metadata i64 %7, metadata !3065, metadata !DIExpression()), !dbg !3071
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3076
  %9 = load i8*, i8** %8, align 8, !dbg !3076, !tbaa !743
  %10 = icmp eq i8* %9, null, !dbg !3077
  %11 = add i64 %7, 1, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %11, metadata !3065, metadata !DIExpression()), !dbg !3071
  br i1 %10, label %12, label %6, !dbg !3077, !llvm.loop !3079

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3065, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %7, metadata !3065, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %7, metadata !3065, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %7, metadata !3065, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %7, metadata !3065, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %7, metadata !3065, metadata !DIExpression()), !dbg !3071
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3081
  ret void, !dbg !3082
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3083 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3094, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i8* %1, metadata !3095, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8* %2, metadata !3096, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i8* %3, metadata !3097, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3098, metadata !DIExpression()), !dbg !3106
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3107
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3107
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3100, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 0, metadata !3099, metadata !DIExpression()), !dbg !3109
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3099, metadata !DIExpression()), !dbg !3109
  %11 = load i32, i32* %8, align 8, !dbg !3110
  %12 = icmp ult i32 %11, 41, !dbg !3110
  br i1 %12, label %13, label %18, !dbg !3110

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3110
  %15 = sext i32 %11 to i64, !dbg !3110
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3110
  %17 = add i32 %11, 8, !dbg !3110
  store i32 %17, i32* %8, align 8, !dbg !3110
  br label %21, !dbg !3110

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3110
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3110
  store i8* %20, i8** %10, align 8, !dbg !3110
  br label %21, !dbg !3110

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3110
  %25 = load i8*, i8** %24, align 8, !dbg !3110
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3113
  store i8* %25, i8** %26, align 16, !dbg !3114, !tbaa !743
  %27 = icmp eq i8* %25, null, !dbg !3115
  br i1 %27, label %30, label %28, !dbg !3116

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3099, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 1, metadata !3099, metadata !DIExpression()), !dbg !3109
  %29 = icmp ult i32 %22, 41, !dbg !3110
  br i1 %29, label %35, label %32, !dbg !3110

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3117
  call void @llvm.dbg.value(metadata i64 %31, metadata !3099, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 %31, metadata !3099, metadata !DIExpression()), !dbg !3109
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3118
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3119
  ret void, !dbg !3119

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3110
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3110
  store i8* %34, i8** %10, align 8, !dbg !3110
  br label %40, !dbg !3110

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3110
  %37 = sext i32 %22 to i64, !dbg !3110
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3110
  %39 = add i32 %22, 8, !dbg !3110
  store i32 %39, i32* %8, align 8, !dbg !3110
  br label %40, !dbg !3110

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3110
  %44 = load i8*, i8** %43, align 8, !dbg !3110
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3113
  store i8* %44, i8** %45, align 8, !dbg !3114, !tbaa !743
  %46 = icmp eq i8* %44, null, !dbg !3115
  br i1 %46, label %30, label %47, !dbg !3116

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3099, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 2, metadata !3099, metadata !DIExpression()), !dbg !3109
  %48 = icmp ult i32 %41, 41, !dbg !3110
  br i1 %48, label %52, label %49, !dbg !3110

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3110
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3110
  store i8* %51, i8** %10, align 8, !dbg !3110
  br label %57, !dbg !3110

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3110
  %54 = sext i32 %41 to i64, !dbg !3110
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3110
  %56 = add i32 %41, 8, !dbg !3110
  store i32 %56, i32* %8, align 8, !dbg !3110
  br label %57, !dbg !3110

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3110
  %61 = load i8*, i8** %60, align 8, !dbg !3110
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3113
  store i8* %61, i8** %62, align 16, !dbg !3114, !tbaa !743
  %63 = icmp eq i8* %61, null, !dbg !3115
  br i1 %63, label %30, label %64, !dbg !3116

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3099, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 3, metadata !3099, metadata !DIExpression()), !dbg !3109
  %65 = icmp ult i32 %58, 41, !dbg !3110
  br i1 %65, label %69, label %66, !dbg !3110

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3110
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3110
  store i8* %68, i8** %10, align 8, !dbg !3110
  br label %74, !dbg !3110

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3110
  %71 = sext i32 %58 to i64, !dbg !3110
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3110
  %73 = add i32 %58, 8, !dbg !3110
  store i32 %73, i32* %8, align 8, !dbg !3110
  br label %74, !dbg !3110

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3110
  %78 = load i8*, i8** %77, align 8, !dbg !3110
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3113
  store i8* %78, i8** %79, align 8, !dbg !3114, !tbaa !743
  %80 = icmp eq i8* %78, null, !dbg !3115
  br i1 %80, label %30, label %81, !dbg !3116

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3099, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 4, metadata !3099, metadata !DIExpression()), !dbg !3109
  %82 = icmp ult i32 %75, 41, !dbg !3110
  br i1 %82, label %86, label %83, !dbg !3110

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3110
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3110
  store i8* %85, i8** %10, align 8, !dbg !3110
  br label %91, !dbg !3110

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3110
  %88 = sext i32 %75 to i64, !dbg !3110
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3110
  %90 = add i32 %75, 8, !dbg !3110
  store i32 %90, i32* %8, align 8, !dbg !3110
  br label %91, !dbg !3110

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3110
  %95 = load i8*, i8** %94, align 8, !dbg !3110
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3113
  store i8* %95, i8** %96, align 16, !dbg !3114, !tbaa !743
  %97 = icmp eq i8* %95, null, !dbg !3115
  br i1 %97, label %30, label %98, !dbg !3116

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3099, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 5, metadata !3099, metadata !DIExpression()), !dbg !3109
  %99 = icmp ult i32 %92, 41, !dbg !3110
  br i1 %99, label %103, label %100, !dbg !3110

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3110
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3110
  store i8* %102, i8** %10, align 8, !dbg !3110
  br label %108, !dbg !3110

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3110
  %105 = sext i32 %92 to i64, !dbg !3110
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3110
  %107 = add i32 %92, 8, !dbg !3110
  store i32 %107, i32* %8, align 8, !dbg !3110
  br label %108, !dbg !3110

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3110
  %111 = load i8*, i8** %110, align 8, !dbg !3110
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3113
  store i8* %111, i8** %112, align 8, !dbg !3114, !tbaa !743
  %113 = icmp eq i8* %111, null, !dbg !3115
  br i1 %113, label %30, label %114, !dbg !3116

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3099, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 6, metadata !3099, metadata !DIExpression()), !dbg !3109
  %115 = load i8*, i8** %10, align 8, !dbg !3110
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3110
  store i8* %116, i8** %10, align 8, !dbg !3110
  %117 = bitcast i8* %115 to i8**, !dbg !3110
  %118 = load i8*, i8** %117, align 8, !dbg !3110
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3113
  store i8* %118, i8** %119, align 16, !dbg !3114, !tbaa !743
  %120 = icmp eq i8* %118, null, !dbg !3115
  br i1 %120, label %30, label %121, !dbg !3116

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3099, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 7, metadata !3099, metadata !DIExpression()), !dbg !3109
  %122 = load i8*, i8** %10, align 8, !dbg !3110
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3110
  store i8* %123, i8** %10, align 8, !dbg !3110
  %124 = bitcast i8* %122 to i8**, !dbg !3110
  %125 = load i8*, i8** %124, align 8, !dbg !3110
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3113
  store i8* %125, i8** %126, align 8, !dbg !3114, !tbaa !743
  %127 = icmp eq i8* %125, null, !dbg !3115
  br i1 %127, label %30, label %128, !dbg !3116

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3099, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 8, metadata !3099, metadata !DIExpression()), !dbg !3109
  %129 = load i8*, i8** %10, align 8, !dbg !3110
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3110
  store i8* %130, i8** %10, align 8, !dbg !3110
  %131 = bitcast i8* %129 to i8**, !dbg !3110
  %132 = load i8*, i8** %131, align 8, !dbg !3110
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3113
  store i8* %132, i8** %133, align 16, !dbg !3114, !tbaa !743
  %134 = icmp eq i8* %132, null, !dbg !3115
  br i1 %134, label %30, label %135, !dbg !3116

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3099, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 9, metadata !3099, metadata !DIExpression()), !dbg !3109
  %136 = load i8*, i8** %10, align 8, !dbg !3110
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3110
  store i8* %137, i8** %10, align 8, !dbg !3110
  %138 = bitcast i8* %136 to i8**, !dbg !3110
  %139 = load i8*, i8** %138, align 8, !dbg !3110
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3113
  store i8* %139, i8** %140, align 8, !dbg !3114, !tbaa !743
  %141 = icmp eq i8* %139, null, !dbg !3115
  %142 = select i1 %141, i64 9, i64 10, !dbg !3116
  br label %30, !dbg !3116
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3120 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3124, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i8* %1, metadata !3125, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i8* %2, metadata !3126, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i8* %3, metadata !3127, metadata !DIExpression()), !dbg !3137
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3138
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3138
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3128, metadata !DIExpression()), !dbg !3139
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3140
  call void @llvm.va_start(i8* nonnull %6), !dbg !3140
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3141
  call void @llvm.va_end(i8* nonnull %6), !dbg !3142
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3143
  ret void, !dbg !3143
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3144 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.92, i64 0, i64 0), i32 5) #10, !dbg !3145
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.93, i64 0, i64 0)) #10, !dbg !3145
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.94, i64 0, i64 0), i32 5) #10, !dbg !3146
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.95, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.96, i64 0, i64 0)) #10, !dbg !3146
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.97, i64 0, i64 0), i32 5) #10, !dbg !3147
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3147, !tbaa !743
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3147
  ret void, !dbg !3148
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3149 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3153, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 %1, metadata !3154, metadata !DIExpression()), !dbg !3156
  %3 = udiv i64 9223372036854775807, %1, !dbg !3157
  %4 = icmp ult i64 %3, %0, !dbg !3157
  br i1 %4, label %5, label %6, !dbg !3159

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3160
  unreachable, !dbg !3160

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3161
  call void @llvm.dbg.value(metadata i64 %7, metadata !3162, metadata !DIExpression()) #10, !dbg !3169
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3171
  call void @llvm.dbg.value(metadata i8* %8, metadata !3168, metadata !DIExpression()) #10, !dbg !3172
  %9 = icmp eq i8* %8, null, !dbg !3173
  %10 = icmp ne i64 %7, 0, !dbg !3175
  %11 = and i1 %10, %9, !dbg !3176
  br i1 %11, label %12, label %13, !dbg !3176

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3177
  unreachable, !dbg !3177

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3178
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3163 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3162, metadata !DIExpression()), !dbg !3179
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3180
  call void @llvm.dbg.value(metadata i8* %2, metadata !3168, metadata !DIExpression()), !dbg !3181
  %3 = icmp eq i8* %2, null, !dbg !3182
  %4 = icmp ne i64 %0, 0, !dbg !3183
  %5 = and i1 %4, %3, !dbg !3184
  br i1 %5, label %6, label %7, !dbg !3184

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3185
  unreachable, !dbg !3185

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3186
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3187 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3191, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %1, metadata !3192, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 %2, metadata !3193, metadata !DIExpression()), !dbg !3196
  %4 = udiv i64 9223372036854775807, %2, !dbg !3197
  %5 = icmp ult i64 %4, %1, !dbg !3197
  br i1 %5, label %6, label %7, !dbg !3199

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3200
  unreachable, !dbg !3200

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3201
  call void @llvm.dbg.value(metadata i8* %0, metadata !3202, metadata !DIExpression()) #10, !dbg !3208
  call void @llvm.dbg.value(metadata i64 %8, metadata !3207, metadata !DIExpression()) #10, !dbg !3210
  %9 = icmp eq i64 %8, 0, !dbg !3211
  %10 = icmp ne i8* %0, null, !dbg !3213
  %11 = and i1 %10, %9, !dbg !3214
  br i1 %11, label %12, label %13, !dbg !3214

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3215
  br label %19, !dbg !3217

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3218
  call void @llvm.dbg.value(metadata i8* %14, metadata !3202, metadata !DIExpression()) #10, !dbg !3208
  %15 = icmp eq i8* %14, null, !dbg !3219
  %16 = icmp ne i64 %8, 0, !dbg !3221
  %17 = and i1 %16, %15, !dbg !3222
  br i1 %17, label %18, label %19, !dbg !3222

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3223
  unreachable, !dbg !3223

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3224
  ret i8* %20, !dbg !3225
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3203 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3202, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i64 %1, metadata !3207, metadata !DIExpression()), !dbg !3227
  %3 = icmp eq i64 %1, 0, !dbg !3228
  %4 = icmp ne i8* %0, null, !dbg !3229
  %5 = and i1 %4, %3, !dbg !3230
  br i1 %5, label %6, label %7, !dbg !3230

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3231
  br label %13, !dbg !3232

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3233
  call void @llvm.dbg.value(metadata i8* %8, metadata !3202, metadata !DIExpression()), !dbg !3226
  %9 = icmp eq i8* %8, null, !dbg !3234
  %10 = icmp ne i64 %1, 0, !dbg !3235
  %11 = and i1 %10, %9, !dbg !3236
  br i1 %11, label %12, label %13, !dbg !3236

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3237
  unreachable, !dbg !3237

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3238
  ret i8* %14, !dbg !3239
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !271 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !276, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i64* %1, metadata !277, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %2, metadata !278, metadata !DIExpression()), !dbg !3242
  %4 = load i64, i64* %1, align 8, !dbg !3243, !tbaa !928
  call void @llvm.dbg.value(metadata i64 %4, metadata !279, metadata !DIExpression()), !dbg !3244
  %5 = icmp eq i8* %0, null, !dbg !3245
  br i1 %5, label %6, label %20, !dbg !3247

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3248
  br i1 %7, label %8, label %13, !dbg !3251

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3252
  call void @llvm.dbg.value(metadata i64 %9, metadata !279, metadata !DIExpression()), !dbg !3244
  %10 = icmp ugt i64 %2, 128, !dbg !3254
  %11 = zext i1 %10 to i64, !dbg !3254
  %12 = add nuw nsw i64 %9, %11, !dbg !3255
  call void @llvm.dbg.value(metadata i64 %12, metadata !279, metadata !DIExpression()), !dbg !3244
  br label %13, !dbg !3256

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3257
  call void @llvm.dbg.value(metadata i64 %14, metadata !279, metadata !DIExpression()), !dbg !3244
  %15 = udiv i64 9223372036854775807, %2, !dbg !3258
  %16 = icmp ult i64 %15, %14, !dbg !3258
  br i1 %16, label %19, label %17, !dbg !3260

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !279, metadata !DIExpression()), !dbg !3244
  store i64 %14, i64* %1, align 8, !dbg !3261, !tbaa !928
  %18 = mul i64 %14, %2, !dbg !3262
  call void @llvm.dbg.value(metadata i8* %0, metadata !3202, metadata !DIExpression()) #10, !dbg !3263
  call void @llvm.dbg.value(metadata i64 %28, metadata !3207, metadata !DIExpression()) #10, !dbg !3265
  br label %31, !dbg !3266

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3267
  unreachable, !dbg !3267

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3268
  %22 = icmp ugt i64 %21, %4, !dbg !3271
  br i1 %22, label %24, label %23, !dbg !3272

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3273
  unreachable, !dbg !3273

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3274
  %26 = add i64 %4, 1, !dbg !3275
  %27 = add i64 %26, %25, !dbg !3276
  call void @llvm.dbg.value(metadata i64 %27, metadata !279, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %27, metadata !279, metadata !DIExpression()), !dbg !3244
  store i64 %27, i64* %1, align 8, !dbg !3261, !tbaa !928
  %28 = mul i64 %27, %2, !dbg !3262
  call void @llvm.dbg.value(metadata i8* %0, metadata !3202, metadata !DIExpression()) #10, !dbg !3263
  call void @llvm.dbg.value(metadata i64 %28, metadata !3207, metadata !DIExpression()) #10, !dbg !3265
  %29 = icmp eq i64 %28, 0, !dbg !3277
  br i1 %29, label %30, label %31, !dbg !3266

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !3278
  br label %38, !dbg !3279

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !3280
  call void @llvm.dbg.value(metadata i8* %33, metadata !3202, metadata !DIExpression()) #10, !dbg !3263
  %34 = icmp eq i8* %33, null, !dbg !3281
  %35 = icmp ne i64 %32, 0, !dbg !3282
  %36 = and i1 %35, %34, !dbg !3283
  br i1 %36, label %37, label %38, !dbg !3283

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3284
  unreachable, !dbg !3284

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3285
  ret i8* %39, !dbg !3286
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3287 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3289, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %0, metadata !3162, metadata !DIExpression()) #10, !dbg !3291
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %2, metadata !3168, metadata !DIExpression()) #10, !dbg !3294
  %3 = icmp eq i8* %2, null, !dbg !3295
  %4 = icmp ne i64 %0, 0, !dbg !3296
  %5 = and i1 %4, %3, !dbg !3297
  br i1 %5, label %6, label %7, !dbg !3297

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3298
  unreachable, !dbg !3298

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3299
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3300 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3304, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64* %1, metadata !3305, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8* %0, metadata !276, metadata !DIExpression()) #10, !dbg !3308
  call void @llvm.dbg.value(metadata i64* %1, metadata !277, metadata !DIExpression()) #10, !dbg !3310
  call void @llvm.dbg.value(metadata i64 1, metadata !278, metadata !DIExpression()) #10, !dbg !3311
  %3 = load i64, i64* %1, align 8, !dbg !3312, !tbaa !928
  call void @llvm.dbg.value(metadata i64 %3, metadata !279, metadata !DIExpression()) #10, !dbg !3313
  %4 = icmp eq i8* %0, null, !dbg !3314
  br i1 %4, label %5, label %12, !dbg !3315

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3316
  br i1 %6, label %9, label %7, !dbg !3317

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !279, metadata !DIExpression()) #10, !dbg !3313
  %8 = icmp slt i64 %3, 0, !dbg !3318
  br i1 %8, label %11, label %9, !dbg !3319

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !279, metadata !DIExpression()) #10, !dbg !3313
  store i64 %10, i64* %1, align 8, !dbg !3320, !tbaa !928
  call void @llvm.dbg.value(metadata i8* %0, metadata !3202, metadata !DIExpression()) #10, !dbg !3321
  call void @llvm.dbg.value(metadata i64 %18, metadata !3207, metadata !DIExpression()) #10, !dbg !3323
  br label %21, !dbg !3324

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3325
  unreachable, !dbg !3325

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3326
  br i1 %13, label %15, label %14, !dbg !3327

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3328
  unreachable, !dbg !3328

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3329
  %17 = add i64 %3, 1, !dbg !3330
  %18 = add i64 %17, %16, !dbg !3331
  call void @llvm.dbg.value(metadata i64 %18, metadata !279, metadata !DIExpression()) #10, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %18, metadata !279, metadata !DIExpression()) #10, !dbg !3313
  store i64 %18, i64* %1, align 8, !dbg !3320, !tbaa !928
  call void @llvm.dbg.value(metadata i8* %0, metadata !3202, metadata !DIExpression()) #10, !dbg !3321
  call void @llvm.dbg.value(metadata i64 %18, metadata !3207, metadata !DIExpression()) #10, !dbg !3323
  %19 = icmp eq i64 %18, 0, !dbg !3332
  br i1 %19, label %20, label %21, !dbg !3324

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3333
  br label %28, !dbg !3334

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3335
  call void @llvm.dbg.value(metadata i8* %23, metadata !3202, metadata !DIExpression()) #10, !dbg !3321
  %24 = icmp eq i8* %23, null, !dbg !3336
  %25 = icmp ne i64 %22, 0, !dbg !3337
  %26 = and i1 %25, %24, !dbg !3338
  br i1 %26, label %27, label %28, !dbg !3338

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3339
  unreachable, !dbg !3339

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3340
  ret i8* %29, !dbg !3341
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3342 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3344, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i64 %0, metadata !3162, metadata !DIExpression()) #10, !dbg !3346
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3348
  call void @llvm.dbg.value(metadata i8* %2, metadata !3168, metadata !DIExpression()) #10, !dbg !3349
  %3 = icmp eq i8* %2, null, !dbg !3350
  %4 = icmp ne i64 %0, 0, !dbg !3351
  %5 = and i1 %4, %3, !dbg !3352
  br i1 %5, label %6, label %7, !dbg !3352

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3353
  unreachable, !dbg !3353

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3354
  ret i8* %2, !dbg !3355
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3356 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3358, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i64 %1, metadata !3359, metadata !DIExpression()), !dbg !3362
  %3 = udiv i64 9223372036854775807, %1, !dbg !3363
  %4 = icmp ult i64 %3, %0, !dbg !3363
  br i1 %4, label %8, label %5, !dbg !3365

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3366
  call void @llvm.dbg.value(metadata i8* %6, metadata !3360, metadata !DIExpression()), !dbg !3367
  %7 = icmp eq i8* %6, null, !dbg !3368
  br i1 %7, label %8, label %9, !dbg !3369

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3370
  unreachable, !dbg !3370

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3371
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3372 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3378, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i64 %1, metadata !3379, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %1, metadata !3162, metadata !DIExpression()) #10, !dbg !3382
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3384
  call void @llvm.dbg.value(metadata i8* %3, metadata !3168, metadata !DIExpression()) #10, !dbg !3385
  %4 = icmp eq i8* %3, null, !dbg !3386
  %5 = icmp ne i64 %1, 0, !dbg !3387
  %6 = and i1 %5, %4, !dbg !3388
  br i1 %6, label %7, label %8, !dbg !3388

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3389
  unreachable, !dbg !3389

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3390
  ret i8* %3, !dbg !3391
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3392 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3394, metadata !DIExpression()), !dbg !3395
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3396
  %3 = add i64 %2, 1, !dbg !3397
  call void @llvm.dbg.value(metadata i8* %0, metadata !3378, metadata !DIExpression()) #10, !dbg !3398
  call void @llvm.dbg.value(metadata i64 %3, metadata !3379, metadata !DIExpression()) #10, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %3, metadata !3162, metadata !DIExpression()) #10, !dbg !3401
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3403
  call void @llvm.dbg.value(metadata i8* %4, metadata !3168, metadata !DIExpression()) #10, !dbg !3404
  %5 = icmp eq i8* %4, null, !dbg !3405
  %6 = icmp ne i64 %3, 0, !dbg !3406
  %7 = and i1 %6, %5, !dbg !3407
  br i1 %7, label %8, label %9, !dbg !3407

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3408
  unreachable, !dbg !3408

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3409
  ret i8* %4, !dbg !3410
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3411 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3413, !tbaa !854
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.110, i64 0, i64 0), i32 5) #10, !dbg !3414
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0), i8* %2) #10, !dbg !3415
  tail call void @abort() #15, !dbg !3416
  unreachable, !dbg !3416
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #7 !dbg !3417 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3425, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i32 %1, metadata !3426, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 %2, metadata !3427, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %3, metadata !3428, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i8* %4, metadata !3429, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i8* %5, metadata !3430, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i32 %6, metadata !3431, metadata !DIExpression()), !dbg !3441
  %9 = bitcast i64* %8 to i8*, !dbg !3442
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10, !dbg !3442
  call void @llvm.dbg.value(metadata i64* %8, metadata !3434, metadata !DIExpression(DW_OP_deref)), !dbg !3443
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #10, !dbg !3444
  call void @llvm.dbg.value(metadata i32 %10, metadata !3432, metadata !DIExpression()), !dbg !3445
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %23
    i32 3, label %25
  ], !dbg !3446

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #17, !dbg !3447
  br label %27, !dbg !3446

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3450, !tbaa !928
  call void @llvm.dbg.value(metadata i64 %14, metadata !3434, metadata !DIExpression()), !dbg !3443
  %15 = icmp ult i64 %14, %2, !dbg !3454
  %16 = icmp ugt i64 %14, %3, !dbg !3455
  %17 = or i1 %15, %16, !dbg !3456
  br i1 %17, label %18, label %36, !dbg !3456

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !3432, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %14, metadata !3434, metadata !DIExpression()), !dbg !3443
  %19 = icmp ugt i64 %14, 1073741823, !dbg !3457
  %20 = tail call i32* @__errno_location() #17, !dbg !3460
  br i1 %19, label %21, label %22, !dbg !3461

; <label>:21:                                     ; preds = %18
  store i32 75, i32* %20, align 4, !dbg !3462, !tbaa !854
  br label %27, !dbg !3463

; <label>:22:                                     ; preds = %18
  store i32 34, i32* %20, align 4, !dbg !3464, !tbaa !854
  br label %27

; <label>:23:                                     ; preds = %7
  %24 = tail call i32* @__errno_location() #17, !dbg !3465
  store i32 75, i32* %24, align 4, !dbg !3467, !tbaa !854
  br label %27, !dbg !3465

; <label>:25:                                     ; preds = %7
  %26 = tail call i32* @__errno_location() #17, !dbg !3468
  store i32 0, i32* %26, align 4, !dbg !3470, !tbaa !854
  br label %27, !dbg !3468

; <label>:27:                                     ; preds = %11, %21, %22, %23, %25
  %28 = phi i32* [ %12, %11 ], [ %20, %21 ], [ %20, %22 ], [ %24, %23 ], [ %26, %25 ], !dbg !3447
  %29 = icmp eq i32 %6, 0, !dbg !3471
  %30 = select i1 %29, i32 1, i32 %6, !dbg !3471
  %31 = load i32, i32* %28, align 4, !dbg !3447, !tbaa !854
  %32 = icmp eq i32 %31, 22, !dbg !3472
  %33 = select i1 %32, i32 0, i32 %31, !dbg !3447
  %34 = call i8* @quote(i8* %0) #10, !dbg !3473
  call void (i32, i32, i8*, ...) @error(i32 %30, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i64 0, i64 0), i8* %5, i8* %34) #10, !dbg !3474
  %35 = load i64, i64* %8, align 8, !dbg !3475, !tbaa !928
  br label %36, !dbg !3476

; <label>:36:                                     ; preds = %13, %27
  %37 = phi i64 [ %14, %13 ], [ %35, %27 ], !dbg !3475
  call void @llvm.dbg.value(metadata i64 %37, metadata !3434, metadata !DIExpression()), !dbg !3443
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10, !dbg !3477
  ret i64 %37, !dbg !3478
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #7 !dbg !3479 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3483, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i64 %1, metadata !3484, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 %2, metadata !3485, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i8* %3, metadata !3486, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8* %4, metadata !3487, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i32 %5, metadata !3488, metadata !DIExpression()), !dbg !3494
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3495
  ret i64 %7, !dbg !3496
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #7 !dbg !3497 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3503, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i8** %1, metadata !3504, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i32 %2, metadata !3505, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64* %3, metadata !3506, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %4, metadata !3507, metadata !DIExpression()), !dbg !3525
  %7 = bitcast i8** %6 to i8*, !dbg !3526
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3526
  call void @llvm.dbg.value(metadata i32 0, metadata !3511, metadata !DIExpression()), !dbg !3527
  %8 = icmp ult i32 %2, 37, !dbg !3528
  br i1 %8, label %10, label %9, !dbg !3528

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.118, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15, !dbg !3528
  unreachable, !dbg !3528

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3531
  call void @llvm.dbg.value(metadata i8** %25, metadata !3509, metadata !DIExpression()), !dbg !3532
  %12 = tail call i32* @__errno_location() #17, !dbg !3533
  store i32 0, i32* %12, align 4, !dbg !3534, !tbaa !854
  call void @llvm.dbg.value(metadata i8* %0, metadata !3512, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i8* %0, metadata !3515, metadata !DIExpression(DW_OP_deref)), !dbg !3536
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !3537
  %14 = load i16*, i16** %13, align 8, !tbaa !743
  br label %15, !dbg !3538

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3539
  %17 = load i8, i8* %16, align 1, !dbg !3539, !tbaa !839
  call void @llvm.dbg.value(metadata i8 %17, metadata !3515, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i8* %16, metadata !3512, metadata !DIExpression()), !dbg !3535
  %18 = zext i8 %17 to i64, !dbg !3537
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3537
  %20 = load i16, i16* %19, align 2, !dbg !3537, !tbaa !984
  %21 = and i16 %20, 8192, !dbg !3537
  %22 = icmp eq i16 %21, 0, !dbg !3538
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3540
  call void @llvm.dbg.value(metadata i8* %23, metadata !3512, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i8* %23, metadata !3515, metadata !DIExpression(DW_OP_deref)), !dbg !3536
  br i1 %22, label %24, label %15, !dbg !3538, !llvm.loop !3541

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3531
  %26 = icmp eq i8 %17, 45, !dbg !3543
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !3545, metadata !DIExpression()) #10, !dbg !3555
  call void @llvm.dbg.value(metadata i8** %25, metadata !3553, metadata !DIExpression()) #10, !dbg !3555
  call void @llvm.dbg.value(metadata i32 %2, metadata !3554, metadata !DIExpression()) #10, !dbg !3555
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #10, !dbg !3557
  call void @llvm.dbg.value(metadata i64 %28, metadata !3510, metadata !DIExpression()), !dbg !3558
  %29 = load i8*, i8** %25, align 8, !dbg !3559, !tbaa !743
  %30 = icmp eq i8* %29, %0, !dbg !3561
  br i1 %30, label %31, label %40, !dbg !3562

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3563
  br i1 %32, label %265, label %33, !dbg !3566

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3567, !tbaa !839
  %35 = icmp eq i8 %34, 0, !dbg !3567
  br i1 %35, label %265, label %36, !dbg !3568

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3567
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !3569
  %39 = icmp eq i8* %38, null, !dbg !3569
  br i1 %39, label %265, label %47, !dbg !3570

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3571, !tbaa !854
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3573

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3511, metadata !DIExpression()), !dbg !3527
  br label %43, !dbg !3574

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3576
  call void @llvm.dbg.value(metadata i32 %44, metadata !3511, metadata !DIExpression()), !dbg !3527
  %45 = icmp eq i8* %4, null, !dbg !3577
  br i1 %45, label %46, label %47, !dbg !3579

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3510, metadata !DIExpression()), !dbg !3558
  store i64 %28, i64* %3, align 8, !dbg !3580, !tbaa !928
  br label %265, !dbg !3582

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3583, !tbaa !839
  %51 = sext i8 %50 to i32, !dbg !3583
  %52 = icmp eq i8 %50, 0, !dbg !3584
  br i1 %52, label %262, label %53, !dbg !3585

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3516, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 1, metadata !3519, metadata !DIExpression()), !dbg !3587
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #14, !dbg !3588
  %55 = icmp eq i8* %54, null, !dbg !3588
  br i1 %55, label %56, label %58, !dbg !3590

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3510, metadata !DIExpression()), !dbg !3558
  store i64 %49, i64* %3, align 8, !dbg !3591, !tbaa !928
  %57 = or i32 %48, 2, !dbg !3593
  br label %265, !dbg !3594

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
  ], !dbg !3595

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !3596
  %61 = icmp eq i8* %60, null, !dbg !3596
  br i1 %61, label %72, label %62, !dbg !3599

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3600
  %64 = load i8, i8* %63, align 1, !dbg !3600, !tbaa !839
  %65 = sext i8 %64 to i32, !dbg !3600
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3601

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3602
  %68 = load i8, i8* %67, align 1, !dbg !3602, !tbaa !839
  %69 = icmp eq i8 %68, 66, !dbg !3605
  %70 = select i1 %69, i64 3, i64 1, !dbg !3606
  br label %72, !dbg !3606

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3516, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 2, metadata !3519, metadata !DIExpression()), !dbg !3587
  br label %72, !dbg !3607

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
  ], !dbg !3608

; <label>:75:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !3609, metadata !DIExpression()), !dbg !3615
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !3618
  %77 = shl i64 %49, 9, !dbg !3620
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !3621
  %79 = zext i1 %76 to i32, !dbg !3621
  call void @llvm.dbg.value(metadata i32 %79, metadata !3520, metadata !DIExpression()), !dbg !3622
  br label %253, !dbg !3623

; <label>:80:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !3609, metadata !DIExpression()), !dbg !3624
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !3626
  %82 = shl i64 %49, 10, !dbg !3627
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3628
  %84 = zext i1 %81 to i32, !dbg !3628
  call void @llvm.dbg.value(metadata i32 %84, metadata !3520, metadata !DIExpression()), !dbg !3622
  br label %253, !dbg !3629

; <label>:85:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 6, metadata !3630, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3640
  %86 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i32 6, metadata !3630, metadata !DIExpression()), !dbg !3638
  %87 = icmp ult i64 %86, %49, !dbg !3641
  %88 = mul i64 %49, %73, !dbg !3643
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !3644
  call void @llvm.dbg.value(metadata i32 5, metadata !3630, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i32 5, metadata !3630, metadata !DIExpression()), !dbg !3638
  %90 = icmp ult i64 %86, %89, !dbg !3641
  %91 = mul i64 %89, %73, !dbg !3643
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !3644
  %93 = or i1 %87, %90, !dbg !3645
  call void @llvm.dbg.value(metadata i32 4, metadata !3630, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i32 4, metadata !3630, metadata !DIExpression()), !dbg !3638
  %94 = icmp ult i64 %86, %92, !dbg !3641
  %95 = mul i64 %92, %73, !dbg !3643
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !3644
  %97 = or i1 %93, %94, !dbg !3645
  call void @llvm.dbg.value(metadata i32 3, metadata !3630, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i32 3, metadata !3630, metadata !DIExpression()), !dbg !3638
  %98 = icmp ult i64 %86, %96, !dbg !3641
  %99 = mul i64 %96, %73, !dbg !3643
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !3644
  %101 = or i1 %97, %98, !dbg !3645
  call void @llvm.dbg.value(metadata i32 2, metadata !3630, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i32 2, metadata !3630, metadata !DIExpression()), !dbg !3638
  %102 = icmp ult i64 %86, %100, !dbg !3641
  %103 = mul i64 %100, %73, !dbg !3643
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !3644
  %105 = or i1 %101, %102, !dbg !3645
  call void @llvm.dbg.value(metadata i32 1, metadata !3630, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i32 1, metadata !3630, metadata !DIExpression()), !dbg !3638
  %106 = icmp ult i64 %86, %104, !dbg !3641
  %107 = mul i64 %104, %73, !dbg !3643
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3644
  %109 = or i1 %105, %106, !dbg !3645
  %110 = zext i1 %109 to i32, !dbg !3645
  call void @llvm.dbg.value(metadata i32 %110, metadata !3637, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i32 0, metadata !3630, metadata !DIExpression()), !dbg !3638
  br label %253, !dbg !3646

; <label>:111:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 3, metadata !3630, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3649
  %112 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i32 3, metadata !3630, metadata !DIExpression()), !dbg !3647
  %113 = icmp ult i64 %112, %49, !dbg !3650
  %114 = mul i64 %49, %73, !dbg !3652
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !3653
  call void @llvm.dbg.value(metadata i32 2, metadata !3630, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i32 2, metadata !3630, metadata !DIExpression()), !dbg !3647
  %116 = icmp ult i64 %112, %115, !dbg !3650
  %117 = mul i64 %115, %73, !dbg !3652
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3653
  %119 = or i1 %113, %116, !dbg !3654
  call void @llvm.dbg.value(metadata i32 1, metadata !3630, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i32 1, metadata !3630, metadata !DIExpression()), !dbg !3647
  %120 = icmp ult i64 %112, %118, !dbg !3650
  %121 = mul i64 %118, %73, !dbg !3652
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !3653
  %123 = or i1 %119, %120, !dbg !3654
  %124 = zext i1 %123 to i32, !dbg !3654
  call void @llvm.dbg.value(metadata i32 %124, metadata !3637, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i32 0, metadata !3630, metadata !DIExpression()), !dbg !3647
  br label %253, !dbg !3646

; <label>:125:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 1, metadata !3630, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3657
  %126 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i32 undef, metadata !3630, metadata !DIExpression()), !dbg !3655
  %127 = icmp ult i64 %126, %49, !dbg !3658
  %128 = mul i64 %49, %73, !dbg !3660
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !3661
  %130 = zext i1 %127 to i32, !dbg !3661
  call void @llvm.dbg.value(metadata i32 %130, metadata !3637, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i32 undef, metadata !3630, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3655
  br label %253, !dbg !3646

; <label>:131:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 2, metadata !3630, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3664
  %132 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i32 2, metadata !3630, metadata !DIExpression()), !dbg !3662
  %133 = icmp ult i64 %132, %49, !dbg !3665
  %134 = mul i64 %49, %73, !dbg !3667
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !3668
  call void @llvm.dbg.value(metadata i32 1, metadata !3630, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32 1, metadata !3630, metadata !DIExpression()), !dbg !3662
  %136 = icmp ult i64 %132, %135, !dbg !3665
  %137 = mul i64 %135, %73, !dbg !3667
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3668
  %139 = or i1 %133, %136, !dbg !3669
  %140 = zext i1 %139 to i32, !dbg !3669
  call void @llvm.dbg.value(metadata i32 %140, metadata !3637, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i32 0, metadata !3630, metadata !DIExpression()), !dbg !3662
  br label %253, !dbg !3646

; <label>:141:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 5, metadata !3630, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3672
  %142 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i32 5, metadata !3630, metadata !DIExpression()), !dbg !3670
  %143 = icmp ult i64 %142, %49, !dbg !3673
  %144 = mul i64 %49, %73, !dbg !3675
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !3676
  call void @llvm.dbg.value(metadata i32 4, metadata !3630, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 4, metadata !3630, metadata !DIExpression()), !dbg !3670
  %146 = icmp ult i64 %142, %145, !dbg !3673
  %147 = mul i64 %145, %73, !dbg !3675
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3676
  %149 = or i1 %143, %146, !dbg !3677
  call void @llvm.dbg.value(metadata i32 3, metadata !3630, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 3, metadata !3630, metadata !DIExpression()), !dbg !3670
  %150 = icmp ult i64 %142, %148, !dbg !3673
  %151 = mul i64 %148, %73, !dbg !3675
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !3676
  %153 = or i1 %149, %150, !dbg !3677
  call void @llvm.dbg.value(metadata i32 2, metadata !3630, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 2, metadata !3630, metadata !DIExpression()), !dbg !3670
  %154 = icmp ult i64 %142, %152, !dbg !3673
  %155 = mul i64 %152, %73, !dbg !3675
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !3676
  %157 = or i1 %153, %154, !dbg !3677
  call void @llvm.dbg.value(metadata i32 1, metadata !3630, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 1, metadata !3630, metadata !DIExpression()), !dbg !3670
  %158 = icmp ult i64 %142, %156, !dbg !3673
  %159 = mul i64 %156, %73, !dbg !3675
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !3676
  %161 = or i1 %157, %158, !dbg !3677
  %162 = zext i1 %161 to i32, !dbg !3677
  call void @llvm.dbg.value(metadata i32 %162, metadata !3637, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i32 0, metadata !3630, metadata !DIExpression()), !dbg !3670
  br label %253, !dbg !3646

; <label>:163:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 4, metadata !3630, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3680
  %164 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i32 4, metadata !3630, metadata !DIExpression()), !dbg !3678
  %165 = icmp ult i64 %164, %49, !dbg !3681
  %166 = mul i64 %49, %73, !dbg !3683
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !3684
  call void @llvm.dbg.value(metadata i32 3, metadata !3630, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i32 3, metadata !3630, metadata !DIExpression()), !dbg !3678
  %168 = icmp ult i64 %164, %167, !dbg !3681
  %169 = mul i64 %167, %73, !dbg !3683
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !3684
  %171 = or i1 %165, %168, !dbg !3685
  call void @llvm.dbg.value(metadata i32 2, metadata !3630, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i32 2, metadata !3630, metadata !DIExpression()), !dbg !3678
  %172 = icmp ult i64 %164, %170, !dbg !3681
  %173 = mul i64 %170, %73, !dbg !3683
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !3684
  %175 = or i1 %171, %172, !dbg !3685
  call void @llvm.dbg.value(metadata i32 1, metadata !3630, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i32 1, metadata !3630, metadata !DIExpression()), !dbg !3678
  %176 = icmp ult i64 %164, %174, !dbg !3681
  %177 = mul i64 %174, %73, !dbg !3683
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !3684
  %179 = or i1 %175, %176, !dbg !3685
  %180 = zext i1 %179 to i32, !dbg !3685
  call void @llvm.dbg.value(metadata i32 %180, metadata !3637, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i32 0, metadata !3630, metadata !DIExpression()), !dbg !3678
  br label %253, !dbg !3646

; <label>:181:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !3609, metadata !DIExpression()), !dbg !3686
  %182 = icmp slt i64 %49, 0, !dbg !3688
  %183 = shl i64 %49, 1, !dbg !3689
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !3690
  %185 = lshr i64 %49, 63, !dbg !3690
  %186 = trunc i64 %185 to i32, !dbg !3690
  call void @llvm.dbg.value(metadata i32 %186, metadata !3520, metadata !DIExpression()), !dbg !3622
  br label %253, !dbg !3691

; <label>:187:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 8, metadata !3630, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3694
  %188 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i32 8, metadata !3630, metadata !DIExpression()), !dbg !3692
  %189 = icmp ult i64 %188, %49, !dbg !3695
  %190 = mul i64 %49, %73, !dbg !3697
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !3698
  call void @llvm.dbg.value(metadata i32 7, metadata !3630, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i32 7, metadata !3630, metadata !DIExpression()), !dbg !3692
  %192 = icmp ult i64 %188, %191, !dbg !3695
  %193 = mul i64 %191, %73, !dbg !3697
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !3698
  %195 = or i1 %189, %192, !dbg !3699
  call void @llvm.dbg.value(metadata i32 6, metadata !3630, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i32 6, metadata !3630, metadata !DIExpression()), !dbg !3692
  %196 = icmp ult i64 %188, %194, !dbg !3695
  %197 = mul i64 %194, %73, !dbg !3697
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3698
  %199 = or i1 %195, %196, !dbg !3699
  call void @llvm.dbg.value(metadata i32 5, metadata !3630, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i32 5, metadata !3630, metadata !DIExpression()), !dbg !3692
  %200 = icmp ult i64 %188, %198, !dbg !3695
  %201 = mul i64 %198, %73, !dbg !3697
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !3698
  %203 = or i1 %199, %200, !dbg !3699
  call void @llvm.dbg.value(metadata i32 4, metadata !3630, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i32 4, metadata !3630, metadata !DIExpression()), !dbg !3692
  %204 = icmp ult i64 %188, %202, !dbg !3695
  %205 = mul i64 %202, %73, !dbg !3697
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !3698
  %207 = or i1 %203, %204, !dbg !3699
  call void @llvm.dbg.value(metadata i32 3, metadata !3630, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i32 3, metadata !3630, metadata !DIExpression()), !dbg !3692
  %208 = icmp ult i64 %188, %206, !dbg !3695
  %209 = mul i64 %206, %73, !dbg !3697
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !3698
  %211 = or i1 %207, %208, !dbg !3699
  call void @llvm.dbg.value(metadata i32 2, metadata !3630, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i32 2, metadata !3630, metadata !DIExpression()), !dbg !3692
  %212 = icmp ult i64 %188, %210, !dbg !3695
  %213 = mul i64 %210, %73, !dbg !3697
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3698
  %215 = or i1 %211, %212, !dbg !3699
  call void @llvm.dbg.value(metadata i32 1, metadata !3630, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i32 1, metadata !3630, metadata !DIExpression()), !dbg !3692
  %216 = icmp ult i64 %188, %214, !dbg !3695
  %217 = mul i64 %214, %73, !dbg !3697
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !3698
  %219 = or i1 %215, %216, !dbg !3699
  %220 = zext i1 %219 to i32, !dbg !3699
  call void @llvm.dbg.value(metadata i32 %220, metadata !3637, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i32 0, metadata !3630, metadata !DIExpression()), !dbg !3692
  br label %253, !dbg !3646

; <label>:221:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !3630, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3702
  %222 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i32 7, metadata !3630, metadata !DIExpression()), !dbg !3700
  %223 = icmp ult i64 %222, %49, !dbg !3703
  %224 = mul i64 %49, %73, !dbg !3705
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !3706
  call void @llvm.dbg.value(metadata i32 6, metadata !3630, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i32 6, metadata !3630, metadata !DIExpression()), !dbg !3700
  %226 = icmp ult i64 %222, %225, !dbg !3703
  %227 = mul i64 %225, %73, !dbg !3705
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3706
  %229 = or i1 %223, %226, !dbg !3707
  call void @llvm.dbg.value(metadata i32 5, metadata !3630, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i32 5, metadata !3630, metadata !DIExpression()), !dbg !3700
  %230 = icmp ult i64 %222, %228, !dbg !3703
  %231 = mul i64 %228, %73, !dbg !3705
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !3706
  %233 = or i1 %229, %230, !dbg !3707
  call void @llvm.dbg.value(metadata i32 4, metadata !3630, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i32 4, metadata !3630, metadata !DIExpression()), !dbg !3700
  %234 = icmp ult i64 %222, %232, !dbg !3703
  %235 = mul i64 %232, %73, !dbg !3705
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !3706
  %237 = or i1 %233, %234, !dbg !3707
  call void @llvm.dbg.value(metadata i32 3, metadata !3630, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i32 3, metadata !3630, metadata !DIExpression()), !dbg !3700
  %238 = icmp ult i64 %222, %236, !dbg !3703
  %239 = mul i64 %236, %73, !dbg !3705
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !3706
  %241 = or i1 %237, %238, !dbg !3707
  call void @llvm.dbg.value(metadata i32 2, metadata !3630, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i32 2, metadata !3630, metadata !DIExpression()), !dbg !3700
  %242 = icmp ult i64 %222, %240, !dbg !3703
  %243 = mul i64 %240, %73, !dbg !3705
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3706
  %245 = or i1 %241, %242, !dbg !3707
  call void @llvm.dbg.value(metadata i32 1, metadata !3630, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i32 1, metadata !3630, metadata !DIExpression()), !dbg !3700
  %246 = icmp ult i64 %222, %244, !dbg !3703
  %247 = mul i64 %244, %73, !dbg !3705
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3706
  %249 = or i1 %245, %246, !dbg !3707
  %250 = zext i1 %249 to i32, !dbg !3707
  call void @llvm.dbg.value(metadata i32 %250, metadata !3637, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i32 0, metadata !3630, metadata !DIExpression()), !dbg !3700
  br label %253, !dbg !3646

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3510, metadata !DIExpression()), !dbg !3558
  store i64 %49, i64* %3, align 8, !dbg !3708, !tbaa !928
  %252 = or i32 %48, 2, !dbg !3709
  br label %265, !dbg !3710

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ], !dbg !3711
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ], !dbg !3712
  call void @llvm.dbg.value(metadata i32 %255, metadata !3520, metadata !DIExpression()), !dbg !3622
  %256 = or i32 %255, %48, !dbg !3646
  call void @llvm.dbg.value(metadata i32 %256, metadata !3511, metadata !DIExpression()), !dbg !3527
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3713
  store i8* %257, i8** %25, align 8, !dbg !3713, !tbaa !743
  %258 = load i8, i8* %257, align 1, !dbg !3714, !tbaa !839
  %259 = icmp eq i8 %258, 0, !dbg !3714
  %260 = or i32 %256, 2, !dbg !3716
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !3717
  call void @llvm.dbg.value(metadata i32 %261, metadata !3511, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i32 %261, metadata !3511, metadata !DIExpression()), !dbg !3527
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ], !dbg !3718
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ], !dbg !3527
  call void @llvm.dbg.value(metadata i32 %264, metadata !3511, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %263, metadata !3510, metadata !DIExpression()), !dbg !3558
  store i64 %263, i64* %3, align 8, !dbg !3719, !tbaa !928
  br label %265, !dbg !3720

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ], !dbg !3721
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3722
  ret i32 %266, !dbg !3722
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3723 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3726, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i64 %1, metadata !3727, metadata !DIExpression()), !dbg !3733
  %3 = icmp eq i64 %0, 0, !dbg !3734
  %4 = icmp eq i64 %1, 0, !dbg !3735
  %5 = or i1 %3, %4, !dbg !3736
  br i1 %5, label %12, label %6, !dbg !3736

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3737
  call void @llvm.dbg.value(metadata i64 %7, metadata !3729, metadata !DIExpression()), !dbg !3738
  %8 = udiv i64 %7, %1, !dbg !3739
  %9 = icmp eq i64 %8, %0, !dbg !3741
  br i1 %9, label %12, label %10, !dbg !3742

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3743
  store i32 12, i32* %11, align 4, !dbg !3745, !tbaa !854
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3726, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i64 %13, metadata !3727, metadata !DIExpression()), !dbg !3733
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3746
  call void @llvm.dbg.value(metadata i8* %15, metadata !3728, metadata !DIExpression()), !dbg !3747
  br label %16, !dbg !3748

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3749
  ret i8* %17, !dbg !3750
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3751 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3790, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i32 0, metadata !3791, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 0, metadata !3793, metadata !DIExpression()), !dbg !3796
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3797
  call void @llvm.dbg.value(metadata i32 %2, metadata !3792, metadata !DIExpression()), !dbg !3798
  %3 = icmp slt i32 %2, 0, !dbg !3799
  br i1 %3, label %4, label %6, !dbg !3801

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3802
  br label %24, !dbg !3803

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3804
  %8 = icmp eq i32 %7, 0, !dbg !3804
  br i1 %8, label %13, label %9, !dbg !3806

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3807
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3808
  %12 = icmp eq i64 %11, -1, !dbg !3809
  br i1 %12, label %16, label %13, !dbg !3810

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3811
  %15 = icmp eq i32 %14, 0, !dbg !3811
  br i1 %15, label %16, label %18, !dbg !3812

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3791, metadata !DIExpression()), !dbg !3795
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3813
  call void @llvm.dbg.value(metadata i32 %21, metadata !3793, metadata !DIExpression()), !dbg !3796
  br label %24, !dbg !3814

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3815
  %20 = load i32, i32* %19, align 4, !dbg !3815, !tbaa !854
  call void @llvm.dbg.value(metadata i32 %20, metadata !3791, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %20, metadata !3791, metadata !DIExpression()), !dbg !3795
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3813
  call void @llvm.dbg.value(metadata i32 %21, metadata !3793, metadata !DIExpression()), !dbg !3796
  %22 = icmp eq i32 %20, 0, !dbg !3816
  br i1 %22, label %24, label %23, !dbg !3814

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3818, !tbaa !854
  call void @llvm.dbg.value(metadata i32 -1, metadata !3793, metadata !DIExpression()), !dbg !3796
  br label %24, !dbg !3820

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3821
  ret i32 %25, !dbg !3822
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3823 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3862, metadata !DIExpression()), !dbg !3863
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3864
  br i1 %2, label %6, label %3, !dbg !3866

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3867
  %5 = icmp eq i32 %4, 0, !dbg !3867
  br i1 %5, label %6, label %8, !dbg !3868

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3869
  br label %17, !dbg !3870

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3871, metadata !DIExpression()) #10, !dbg !3876
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3878
  %10 = load i32, i32* %9, align 8, !dbg !3878, !tbaa !1051
  %11 = and i32 %10, 256, !dbg !3880
  %12 = icmp eq i32 %11, 0, !dbg !3880
  br i1 %12, label %15, label %13, !dbg !3881

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3882
  br label %15, !dbg !3882

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3883
  br label %17, !dbg !3884

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3885
  ret i32 %18, !dbg !3886
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3887 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3926, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i64 %1, metadata !3927, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i32 %2, metadata !3928, metadata !DIExpression()), !dbg !3934
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3935
  %5 = load i8*, i8** %4, align 8, !dbg !3935, !tbaa !921
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3936
  %7 = load i8*, i8** %6, align 8, !dbg !3936, !tbaa !917
  %8 = icmp eq i8* %5, %7, !dbg !3937
  br i1 %8, label %9, label %28, !dbg !3938

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3939
  %11 = load i8*, i8** %10, align 8, !dbg !3939, !tbaa !997
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3940
  %13 = load i8*, i8** %12, align 8, !dbg !3940, !tbaa !3941
  %14 = icmp eq i8* %11, %13, !dbg !3942
  br i1 %14, label %15, label %28, !dbg !3943

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3944
  %17 = load i8*, i8** %16, align 8, !dbg !3944, !tbaa !3945
  %18 = icmp eq i8* %17, null, !dbg !3946
  br i1 %18, label %19, label %28, !dbg !3947

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3948
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %21, metadata !3929, metadata !DIExpression()), !dbg !3950
  %22 = icmp eq i64 %21, -1, !dbg !3951
  br i1 %22, label %30, label %23, !dbg !3953

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3954
  %25 = load i32, i32* %24, align 8, !dbg !3955, !tbaa !1051
  %26 = and i32 %25, -17, !dbg !3955
  store i32 %26, i32* %24, align 8, !dbg !3955, !tbaa !1051
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3956
  store i64 %21, i64* %27, align 8, !dbg !3957, !tbaa !3958
  br label %30, !dbg !3959

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3960
  br label %30, !dbg !3961

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3962
  ret i32 %31, !dbg !3963
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3964 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3981, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i8* %1, metadata !3982, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i64 %2, metadata !3983, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3984, metadata !DIExpression()), !dbg !3993
  %6 = bitcast i32* %5 to i8*, !dbg !3994
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3994
  %7 = icmp eq i32* %0, null, !dbg !3995
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3997
  call void @llvm.dbg.value(metadata i32* %8, metadata !3981, metadata !DIExpression()), !dbg !3990
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3998
  call void @llvm.dbg.value(metadata i64 %9, metadata !3985, metadata !DIExpression()), !dbg !3999
  %10 = icmp ugt i64 %9, -3, !dbg !4000
  %11 = icmp ne i64 %2, 0, !dbg !4001
  %12 = and i1 %11, %10, !dbg !4002
  br i1 %12, label %13, label %18, !dbg !4002

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4003
  br i1 %14, label %18, label %15, !dbg !4004

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4005, !tbaa !839
  call void @llvm.dbg.value(metadata i8 %16, metadata !3987, metadata !DIExpression()), !dbg !4006
  %17 = zext i8 %16 to i32, !dbg !4007
  store i32 %17, i32* %8, align 4, !dbg !4008, !tbaa !854
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4009
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4010
  ret i64 %19, !dbg !4010
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4011 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4050, metadata !DIExpression()), !dbg !4055
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4056
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4057, metadata !DIExpression()), !dbg !4060
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4062
  %4 = load i32, i32* %3, align 8, !dbg !4062, !tbaa !1051
  %5 = and i32 %4, 32, !dbg !4062
  %6 = icmp eq i32 %5, 0, !dbg !4063
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4064
  %8 = icmp ne i32 %7, 0, !dbg !4065
  br i1 %6, label %9, label %19, !dbg !4066

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4068
  %11 = xor i1 %8, true, !dbg !4069
  %12 = or i1 %10, %11, !dbg !4069
  %13 = sext i1 %8 to i32, !dbg !4069
  br i1 %12, label %22, label %14, !dbg !4069

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4070
  %16 = load i32, i32* %15, align 4, !dbg !4070, !tbaa !854
  %17 = icmp ne i32 %16, 9, !dbg !4071
  %18 = sext i1 %17 to i32, !dbg !4072
  br label %22, !dbg !4072

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4073

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4075
  store i32 0, i32* %21, align 4, !dbg !4077, !tbaa !854
  br label %22, !dbg !4075

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4078
  ret i32 %23, !dbg !4079
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4080 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4085, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i8 1, metadata !4086, metadata !DIExpression()), !dbg !4089
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4090
  call void @llvm.dbg.value(metadata i8* %2, metadata !4087, metadata !DIExpression()), !dbg !4091
  %3 = icmp eq i8* %2, null, !dbg !4092
  br i1 %3, label %11, label %4, !dbg !4094

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.133, i64 0, i64 0)) #14, !dbg !4095
  %6 = icmp eq i32 %5, 0, !dbg !4100
  br i1 %6, label %10, label %7, !dbg !4101

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.134, i64 0, i64 0)) #14, !dbg !4102
  %9 = icmp eq i32 %8, 0, !dbg !4103
  br i1 %9, label %10, label %11, !dbg !4104

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4086, metadata !DIExpression()), !dbg !4089
  br label %11, !dbg !4105

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4106
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4107 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4113
  call void @llvm.dbg.value(metadata i8* %1, metadata !4112, metadata !DIExpression()), !dbg !4114
  %2 = icmp eq i8* %1, null, !dbg !4115
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.137, i64 0, i64 0), i8* %1, !dbg !4117
  call void @llvm.dbg.value(metadata i8* %3, metadata !4112, metadata !DIExpression()), !dbg !4114
  %4 = load i8, i8* %3, align 1, !dbg !4118, !tbaa !839
  %5 = icmp eq i8 %4, 0, !dbg !4122
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.138, i64 0, i64 0), i8* %3, !dbg !4123
  call void @llvm.dbg.value(metadata i8* %6, metadata !4112, metadata !DIExpression()), !dbg !4114
  ret i8* %6, !dbg !4124
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

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

!llvm.dbg.cu = !{!2, !167, !173, !181, !255, !188, !195, !258, !248, !266, !283, !285, !296, !300, !302, !304, !306, !308, !311, !313, !315}
!llvm.ident = !{!704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704}
!llvm.module.flags = !{!705, !706, !707, !708, !709}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 45, type: !58, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !44, globals: !55)
!3 = !DIFile(filename: "src/fold.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !20, !29}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 45, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!26 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!27 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!28 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 46, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!32 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!33 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!34 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!35 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!36 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!37 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!38 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!39 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!40 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!43 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!44 = !{!45, !47, !48, !49, !50, !53, !54}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 62, baseType: !52)
!51 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!52 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!55 = !{!56, !59, !61, !62, !68, !83, !161}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "break_spaces", scope: !2, file: !3, line: 39, type: !58, isLocal: true, isDefinition: true)
!58 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "count_bytes", scope: !2, file: !3, line: 42, type: !58, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 47, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 280, elements: !66)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!66 = !{!67}
!67 = !DISubrange(count: 35)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 1536, elements: !81)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !73, line: 50, size: 256, elements: !74)
!73 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!74 = !{!75, !77, !78, !80}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !73, line: 52, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !72, file: !73, line: 55, baseType: !48, size: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !72, file: !73, line: 56, baseType: !79, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !72, file: !73, line: 57, baseType: !48, size: 32, offset: 192)
!81 = !{!82}
!82 = !DISubrange(count: 6)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "line_out", scope: !85, file: !3, line: 126, type: !45, isLocal: true, isDefinition: true)
!85 = distinct !DISubprogram(name: "fold_file", scope: !3, file: !3, line: 120, type: !86, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !88)
!86 = !DISubroutineType(types: !87)
!87 = !{!58, !76, !50}
!88 = !{!89, !90, !91, !147, !148, !149, !150, !151, !157, !158}
!89 = !DILocalVariable(name: "filename", arg: 1, scope: !85, file: !3, line: 120, type: !76)
!90 = !DILocalVariable(name: "width", arg: 2, scope: !85, file: !3, line: 120, type: !50)
!91 = !DILocalVariable(name: "istream", scope: !85, file: !3, line: 122, type: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !95)
!94 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !97)
!96 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !113, !115, !116, !117, !121, !122, !124, !128, !131, !133, !136, !139, !140, !141, !142, !143}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !95, file: !96, line: 51, baseType: !48, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !95, file: !96, line: 54, baseType: !45, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !95, file: !96, line: 55, baseType: !45, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !95, file: !96, line: 56, baseType: !45, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !95, file: !96, line: 57, baseType: !45, size: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !95, file: !96, line: 58, baseType: !45, size: 64, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !95, file: !96, line: 59, baseType: !45, size: 64, offset: 384)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !95, file: !96, line: 60, baseType: !45, size: 64, offset: 448)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !95, file: !96, line: 61, baseType: !45, size: 64, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !95, file: !96, line: 64, baseType: !45, size: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !95, file: !96, line: 65, baseType: !45, size: 64, offset: 640)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !95, file: !96, line: 66, baseType: !45, size: 64, offset: 704)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !95, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !96, line: 36, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !95, file: !96, line: 70, baseType: !114, size: 64, offset: 832)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !95, file: !96, line: 72, baseType: !48, size: 32, offset: 896)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !95, file: !96, line: 73, baseType: !48, size: 32, offset: 928)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !95, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !119, line: 150, baseType: !120)
!119 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!120 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !95, file: !96, line: 77, baseType: !49, size: 16, offset: 1024)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !95, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!123 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !95, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 1)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !95, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !96, line: 43, baseType: null)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !95, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !119, line: 151, baseType: !120)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !95, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !96, line: 37, flags: DIFlagFwdDecl)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !95, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !96, line: 38, flags: DIFlagFwdDecl)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !95, file: !96, line: 93, baseType: !114, size: 64, offset: 1344)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !95, file: !96, line: 94, baseType: !47, size: 64, offset: 1408)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !95, file: !96, line: 95, baseType: !50, size: 64, offset: 1472)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !95, file: !96, line: 96, baseType: !48, size: 32, offset: 1536)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !95, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 20)
!147 = !DILocalVariable(name: "c", scope: !85, file: !3, line: 123, type: !48)
!148 = !DILocalVariable(name: "column", scope: !85, file: !3, line: 124, type: !50)
!149 = !DILocalVariable(name: "offset_out", scope: !85, file: !3, line: 125, type: !50)
!150 = !DILocalVariable(name: "saved_errno", scope: !85, file: !3, line: 128, type: !48)
!151 = !DILocalVariable(name: "found_blank", scope: !152, file: !3, line: 169, type: !58)
!152 = distinct !DILexicalBlock(scope: !153, file: !3, line: 168, column: 13)
!153 = distinct !DILexicalBlock(scope: !154, file: !3, line: 167, column: 15)
!154 = distinct !DILexicalBlock(scope: !155, file: !3, line: 163, column: 9)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 162, column: 11)
!156 = distinct !DILexicalBlock(scope: !85, file: !3, line: 147, column: 5)
!157 = !DILocalVariable(name: "logical_end", scope: !152, file: !3, line: 170, type: !50)
!158 = !DILocalVariable(name: "i", scope: !159, file: !3, line: 185, type: !50)
!159 = distinct !DILexicalBlock(scope: !160, file: !3, line: 184, column: 17)
!160 = distinct !DILexicalBlock(scope: !152, file: !3, line: 183, column: 19)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "allocated_out", scope: !85, file: !3, line: 127, type: !50, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!164 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "Version", scope: !167, file: !168, line: 2, type: !76, isLocal: false, isDefinition: true)
!167 = distinct !DICompileUnit(language: DW_LANG_C99, file: !168, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !169, globals: !170)
!168 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!169 = !{}
!170 = !{!165}
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "file_name", scope: !173, file: !178, line: 46, type: !76, isLocal: true, isDefinition: true)
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !169, globals: !175)
!174 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!175 = !{!171, !176}
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !173, file: !178, line: 56, type: !58, isLocal: true, isDefinition: true)
!178 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "exit_failure", scope: !181, file: !184, line: 24, type: !185, isLocal: false, isDefinition: true)
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !169, globals: !183)
!182 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!183 = !{!179}
!184 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!185 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "program_name", scope: !188, file: !192, line: 33, type: !76, isLocal: false, isDefinition: true)
!188 = distinct !DICompileUnit(language: DW_LANG_C99, file: !189, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !169, retainedTypes: !190, globals: !191)
!189 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!190 = !{!47, !45}
!191 = !{!186}
!192 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !195, file: !207, line: 85, type: !242, isLocal: false, isDefinition: true)
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !203, globals: !204)
!196 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!197 = !{!5, !198, !29}
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !199)
!199 = !{!200, !201, !202}
!200 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!201 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!202 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!203 = !{!48, !49, !50, !45}
!204 = !{!193, !205, !212, !224, !226, !231, !238, !240}
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !195, file: !207, line: 101, type: !208, isLocal: false, isDefinition: true)
!207 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 320, elements: !210)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!210 = !{!211}
!211 = !DISubrange(count: 10)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !195, file: !207, line: 1052, type: !214, isLocal: false, isDefinition: true)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !207, line: 65, size: 448, elements: !215)
!215 = !{!216, !217, !218, !222, !223}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !214, file: !207, line: 68, baseType: !5, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !214, file: !207, line: 71, baseType: !48, size: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !214, file: !207, line: 75, baseType: !219, size: 256, offset: 64)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 8)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !214, file: !207, line: 78, baseType: !76, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !214, file: !207, line: 81, baseType: !76, size: 64, offset: 384)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !195, file: !207, line: 116, type: !214, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "slot0", scope: !195, file: !207, line: 842, type: !228, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2048, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 256)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "slotvec", scope: !195, file: !207, line: 845, type: !233, isLocal: true, isDefinition: true)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !207, line: 834, size: 128, elements: !235)
!235 = !{!236, !237}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !234, file: !207, line: 836, baseType: !50, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !234, file: !207, line: 837, baseType: !45, size: 64, offset: 64)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "nslots", scope: !195, file: !207, line: 843, type: !48, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "slotvec0", scope: !195, file: !207, line: 844, type: !234, isLocal: true, isDefinition: true)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 704, elements: !244)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!244 = !{!245}
!245 = !DISubrange(count: 11)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !248, file: !251, line: 26, type: !252, isLocal: false, isDefinition: true)
!248 = distinct !DICompileUnit(language: DW_LANG_C99, file: !249, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !169, globals: !250)
!249 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!250 = !{!246}
!251 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 376, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 47)
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !257)
!256 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!257 = !{!20}
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !260, retainedTypes: !265)
!259 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!260 = !{!261}
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !262, line: 41, baseType: !7, size: 32, elements: !263)
!262 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!263 = !{!264}
!264 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!265 = !{!47}
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !268, retainedTypes: !282)
!267 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!268 = !{!269}
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !271, file: !270, line: 186, baseType: !7, size: 32, elements: !280)
!270 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!271 = distinct !DISubprogram(name: "x2nrealloc", scope: !270, file: !270, line: 174, type: !272, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !266, retainedNodes: !275)
!272 = !DISubroutineType(types: !273)
!273 = !{!47, !47, !274, !50}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!275 = !{!276, !277, !278, !279}
!276 = !DILocalVariable(name: "p", arg: 1, scope: !271, file: !270, line: 174, type: !47)
!277 = !DILocalVariable(name: "pn", arg: 2, scope: !271, file: !270, line: 174, type: !274)
!278 = !DILocalVariable(name: "s", arg: 3, scope: !271, file: !270, line: 174, type: !50)
!279 = !DILocalVariable(name: "n", scope: !271, file: !270, line: 176, type: !50)
!280 = !{!281}
!281 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!282 = !{!50, !45, !47}
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !169)
!284 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!285 = distinct !DICompileUnit(language: DW_LANG_C99, file: !286, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !287)
!286 = !DIFile(filename: "./lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!287 = !{!288}
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !289, line: 26, baseType: !7, size: 32, elements: !290)
!289 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!290 = !{!291, !292, !293, !294, !295}
!291 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!292 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!293 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!294 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!295 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!296 = distinct !DICompileUnit(language: DW_LANG_C99, file: !297, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !298, retainedTypes: !299)
!297 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!298 = !{!288, !29}
!299 = !{!48, !49}
!300 = distinct !DICompileUnit(language: DW_LANG_C99, file: !301, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !169, retainedTypes: !265)
!301 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!302 = distinct !DICompileUnit(language: DW_LANG_C99, file: !303, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !169)
!303 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!304 = distinct !DICompileUnit(language: DW_LANG_C99, file: !305, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !169, retainedTypes: !265)
!305 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!306 = distinct !DICompileUnit(language: DW_LANG_C99, file: !307, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !169, retainedTypes: !265)
!307 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!308 = distinct !DICompileUnit(language: DW_LANG_C99, file: !309, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !169, retainedTypes: !310)
!309 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!310 = !{!50}
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !169)
!312 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!313 = distinct !DICompileUnit(language: DW_LANG_C99, file: !314, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !169)
!314 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!315 = distinct !DICompileUnit(language: DW_LANG_C99, file: !316, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !317, retainedTypes: !265)
!316 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!317 = !{!318}
!318 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !319, line: 41, baseType: !7, size: 32, elements: !320)
!319 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!321 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!322 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!323 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!324 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!325 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!326 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!327 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!328 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!329 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!330 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!331 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!332 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!333 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!334 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!335 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!336 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!337 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!338 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!339 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!340 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!341 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!342 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!343 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!344 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!345 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!346 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!347 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!348 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!349 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!350 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!351 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!352 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!353 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!354 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!355 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!356 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!357 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!358 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!359 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!360 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!361 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!362 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!363 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!364 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!365 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!366 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!367 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!368 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!369 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!370 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!429 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!432 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!433 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!434 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!435 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!436 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!437 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!438 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!439 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!440 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!441 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!442 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!443 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!516 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!589 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!590 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!591 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!592 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!593 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!594 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!595 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!596 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!597 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!598 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!599 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!600 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!601 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!602 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!603 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!605 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!606 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!607 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!608 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!609 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!610 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!636 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!637 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!638 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!639 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!640 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!645 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!646 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!647 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!648 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!704 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!705 = !{i32 2, !"Dwarf Version", i32 4}
!706 = !{i32 2, !"Debug Info Version", i32 3}
!707 = !{i32 1, !"wchar_size", i32 4}
!708 = !{i32 7, !"PIC Level", i32 2}
!709 = !{i32 7, !"PIE Level", i32 2}
!710 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 60, type: !711, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !713)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !48}
!713 = !{!714}
!714 = !DILocalVariable(name: "status", arg: 1, scope: !710, file: !3, line: 60, type: !48)
!715 = !DILocalVariable(name: "infomap", scope: !716, file: !717, line: 632, type: !731)
!716 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !717, file: !717, line: 630, type: !718, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !720)
!717 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!718 = !DISubroutineType(types: !719)
!719 = !{null, !76}
!720 = !{!721, !715, !722, !723, !730}
!721 = !DILocalVariable(name: "program", arg: 1, scope: !716, file: !717, line: 630, type: !76)
!722 = !DILocalVariable(name: "node", scope: !716, file: !717, line: 642, type: !76)
!723 = !DILocalVariable(name: "map_prog", scope: !716, file: !717, line: 643, type: !724)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !716, file: !717, line: 632, size: 128, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !726, file: !717, line: 632, baseType: !76, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !726, file: !717, line: 632, baseType: !76, size: 64, offset: 64)
!730 = !DILocalVariable(name: "lc_messages", scope: !716, file: !717, line: 655, type: !76)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 896, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 7)
!734 = !DILocation(line: 632, column: 67, scope: !716, inlinedAt: !735)
!735 = distinct !DILocation(line: 84, column: 7, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !3, line: 65, column: 5)
!737 = distinct !DILexicalBlock(scope: !710, file: !3, line: 62, column: 7)
!738 = !DILocation(line: 60, column: 12, scope: !710)
!739 = !DILocation(line: 62, column: 14, scope: !737)
!740 = !DILocation(line: 62, column: 7, scope: !710)
!741 = !DILocation(line: 63, column: 5, scope: !742)
!742 = distinct !DILexicalBlock(scope: !737, file: !3, line: 63, column: 5)
!743 = !{!744, !744, i64 0}
!744 = !{!"any pointer", !745, i64 0}
!745 = !{!"omnipotent char", !746, i64 0}
!746 = !{!"Simple C/C++ TBAA"}
!747 = !DILocation(line: 66, column: 7, scope: !736)
!748 = !DILocation(line: 70, column: 7, scope: !736)
!749 = !DILocation(line: 580, column: 3, scope: !750, inlinedAt: !753)
!750 = distinct !DISubprogram(name: "emit_stdin_note", scope: !717, file: !717, line: 578, type: !751, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !169)
!751 = !DISubroutineType(types: !752)
!752 = !{null}
!753 = distinct !DILocation(line: 74, column: 7, scope: !736)
!754 = !DILocation(line: 587, column: 3, scope: !755, inlinedAt: !756)
!755 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !717, file: !717, line: 585, type: !751, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !169)
!756 = distinct !DILocation(line: 75, column: 7, scope: !736)
!757 = !DILocation(line: 77, column: 7, scope: !736)
!758 = !DILocation(line: 82, column: 7, scope: !736)
!759 = !DILocation(line: 83, column: 7, scope: !736)
!760 = !DILocation(line: 632, column: 3, scope: !716, inlinedAt: !735)
!761 = !DILocation(line: 643, column: 36, scope: !716, inlinedAt: !735)
!762 = !DILocation(line: 643, column: 25, scope: !716, inlinedAt: !735)
!763 = !DILocation(line: 645, column: 33, scope: !716, inlinedAt: !735)
!764 = !DILocation(line: 645, column: 3, scope: !716, inlinedAt: !735)
!765 = !DILocation(line: 646, column: 13, scope: !716, inlinedAt: !735)
!766 = !DILocation(line: 645, column: 20, scope: !716, inlinedAt: !735)
!767 = !{!768, !744, i64 0}
!768 = !{!"infomap", !744, i64 0, !744, i64 8}
!769 = !DILocation(line: 645, column: 10, scope: !716, inlinedAt: !735)
!770 = !DILocation(line: 645, column: 28, scope: !716, inlinedAt: !735)
!771 = distinct !{!771, !772, !773}
!772 = !DILocation(line: 645, column: 3, scope: !716)
!773 = !DILocation(line: 646, column: 13, scope: !716)
!774 = !DILocation(line: 648, column: 17, scope: !775, inlinedAt: !735)
!775 = distinct !DILexicalBlock(scope: !716, file: !717, line: 648, column: 7)
!776 = !{!768, !744, i64 8}
!777 = !DILocation(line: 648, column: 7, scope: !775, inlinedAt: !735)
!778 = !DILocation(line: 648, column: 7, scope: !716, inlinedAt: !735)
!779 = !DILocation(line: 642, column: 15, scope: !716, inlinedAt: !735)
!780 = !DILocation(line: 651, column: 3, scope: !716, inlinedAt: !735)
!781 = !DILocation(line: 655, column: 29, scope: !716, inlinedAt: !735)
!782 = !DILocation(line: 655, column: 15, scope: !716, inlinedAt: !735)
!783 = !DILocation(line: 656, column: 7, scope: !784, inlinedAt: !735)
!784 = distinct !DILexicalBlock(scope: !716, file: !717, line: 656, column: 7)
!785 = !DILocation(line: 656, column: 19, scope: !784, inlinedAt: !735)
!786 = !DILocation(line: 656, column: 22, scope: !784, inlinedAt: !735)
!787 = !DILocation(line: 656, column: 7, scope: !716, inlinedAt: !735)
!788 = !DILocation(line: 662, column: 7, scope: !789, inlinedAt: !735)
!789 = distinct !DILexicalBlock(scope: !784, file: !717, line: 657, column: 5)
!790 = !DILocation(line: 664, column: 5, scope: !789, inlinedAt: !735)
!791 = !DILocation(line: 665, column: 3, scope: !716, inlinedAt: !735)
!792 = !DILocation(line: 667, column: 3, scope: !716, inlinedAt: !735)
!793 = !DILocation(line: 669, column: 1, scope: !716, inlinedAt: !735)
!794 = !DILocation(line: 86, column: 3, scope: !710)
!795 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 240, type: !796, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !799)
!796 = !DISubroutineType(types: !797)
!797 = !{!48, !48, !798}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!799 = !{!800, !801, !802, !803, !804, !805, !806}
!800 = !DILocalVariable(name: "argc", arg: 1, scope: !795, file: !3, line: 240, type: !48)
!801 = !DILocalVariable(name: "argv", arg: 2, scope: !795, file: !3, line: 240, type: !798)
!802 = !DILocalVariable(name: "width", scope: !795, file: !3, line: 242, type: !50)
!803 = !DILocalVariable(name: "i", scope: !795, file: !3, line: 243, type: !48)
!804 = !DILocalVariable(name: "optc", scope: !795, file: !3, line: 244, type: !48)
!805 = !DILocalVariable(name: "ok", scope: !795, file: !3, line: 245, type: !58)
!806 = !DILocalVariable(name: "optargbuf", scope: !807, file: !3, line: 259, type: !808)
!807 = distinct !DILexicalBlock(scope: !795, file: !3, line: 258, column: 5)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 16, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 2)
!811 = !DILocation(line: 240, column: 11, scope: !795)
!812 = !DILocation(line: 240, column: 24, scope: !795)
!813 = !DILocation(line: 242, column: 10, scope: !795)
!814 = !DILocation(line: 248, column: 21, scope: !795)
!815 = !DILocation(line: 248, column: 3, scope: !795)
!816 = !DILocation(line: 249, column: 3, scope: !795)
!817 = !DILocation(line: 250, column: 3, scope: !795)
!818 = !DILocation(line: 251, column: 3, scope: !795)
!819 = !DILocation(line: 253, column: 3, scope: !795)
!820 = !DILocation(line: 257, column: 18, scope: !795)
!821 = !DILocation(line: 244, column: 7, scope: !795)
!822 = !DILocation(line: 257, column: 71, scope: !795)
!823 = !DILocation(line: 257, column: 3, scope: !795)
!824 = !DILocation(line: 259, column: 7, scope: !807)
!825 = !DILocation(line: 259, column: 12, scope: !807)
!826 = !DILocation(line: 261, column: 7, scope: !807)
!827 = !DILocation(line: 283, column: 31, scope: !828)
!828 = distinct !DILexicalBlock(scope: !807, file: !3, line: 262, column: 9)
!829 = !DILocation(line: 265, column: 11, scope: !828)
!830 = !DILocation(line: 269, column: 11, scope: !828)
!831 = !DILocation(line: 273, column: 15, scope: !832)
!832 = distinct !DILexicalBlock(scope: !828, file: !3, line: 273, column: 15)
!833 = !DILocation(line: 273, column: 15, scope: !828)
!834 = !DILocation(line: 274, column: 19, scope: !832)
!835 = !DILocation(line: 274, column: 13, scope: !832)
!836 = !DILocation(line: 277, column: 30, scope: !837)
!837 = distinct !DILexicalBlock(scope: !832, file: !3, line: 276, column: 13)
!838 = !DILocation(line: 277, column: 28, scope: !837)
!839 = !{!745, !745, i64 0}
!840 = !DILocation(line: 278, column: 28, scope: !837)
!841 = !DILocation(line: 279, column: 22, scope: !837)
!842 = !DILocation(line: 284, column: 31, scope: !828)
!843 = !DILocation(line: 283, column: 19, scope: !828)
!844 = !DILocation(line: 285, column: 11, scope: !828)
!845 = !DILocation(line: 287, column: 9, scope: !828)
!846 = !DILocation(line: 289, column: 9, scope: !828)
!847 = !DILocation(line: 292, column: 11, scope: !828)
!848 = !DILocation(line: 0, scope: !795)
!849 = !DILocation(line: 294, column: 5, scope: !795)
!850 = distinct !{!850, !823, !849}
!851 = !DILocation(line: 0, scope: !828)
!852 = !DILocation(line: 296, column: 15, scope: !853)
!853 = distinct !DILexicalBlock(scope: !795, file: !3, line: 296, column: 7)
!854 = !{!855, !855, i64 0}
!855 = !{!"int", !745, i64 0}
!856 = !DILocation(line: 296, column: 12, scope: !853)
!857 = !DILocation(line: 296, column: 7, scope: !795)
!858 = !DILocation(line: 245, column: 8, scope: !795)
!859 = !DILocation(line: 243, column: 7, scope: !795)
!860 = !DILocation(line: 301, column: 26, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 301, column: 7)
!862 = distinct !DILexicalBlock(scope: !863, file: !3, line: 301, column: 7)
!863 = distinct !DILexicalBlock(scope: !853, file: !3, line: 299, column: 5)
!864 = !DILocation(line: 301, column: 7, scope: !862)
!865 = !DILocation(line: 302, column: 26, scope: !861)
!866 = !DILocation(line: 297, column: 10, scope: !853)
!867 = !DILocation(line: 297, column: 8, scope: !853)
!868 = !DILocation(line: 297, column: 5, scope: !853)
!869 = !DILocation(line: 302, column: 15, scope: !861)
!870 = !DILocation(line: 302, column: 12, scope: !861)
!871 = !DILocation(line: 301, column: 35, scope: !861)
!872 = distinct !{!872, !864, !873}
!873 = !DILocation(line: 302, column: 40, scope: !862)
!874 = !DILocation(line: 0, scope: !863)
!875 = !DILocation(line: 305, column: 23, scope: !876)
!876 = distinct !DILexicalBlock(scope: !795, file: !3, line: 305, column: 7)
!877 = !DILocation(line: 305, column: 34, scope: !876)
!878 = !DILocation(line: 305, column: 26, scope: !876)
!879 = !DILocation(line: 305, column: 41, scope: !876)
!880 = !DILocation(line: 305, column: 7, scope: !795)
!881 = !DILocation(line: 306, column: 5, scope: !876)
!882 = !DILocation(line: 308, column: 10, scope: !795)
!883 = !DILocation(line: 308, column: 3, scope: !795)
!884 = !DILocation(line: 120, column: 24, scope: !85)
!885 = !DILocation(line: 120, column: 41, scope: !85)
!886 = !DILocation(line: 124, column: 10, scope: !85)
!887 = !DILocation(line: 125, column: 10, scope: !85)
!888 = !DILocation(line: 130, column: 7, scope: !889)
!889 = distinct !DILexicalBlock(scope: !85, file: !3, line: 130, column: 7)
!890 = !DILocation(line: 130, column: 7, scope: !85)
!891 = !DILocation(line: 132, column: 17, scope: !892)
!892 = distinct !DILexicalBlock(scope: !889, file: !3, line: 131, column: 5)
!893 = !DILocation(line: 122, column: 9, scope: !85)
!894 = !DILocation(line: 134, column: 5, scope: !892)
!895 = !DILocation(line: 136, column: 15, scope: !889)
!896 = !DILocation(line: 0, scope: !889)
!897 = !DILocation(line: 138, column: 15, scope: !898)
!898 = distinct !DILexicalBlock(scope: !85, file: !3, line: 138, column: 7)
!899 = !DILocation(line: 138, column: 7, scope: !85)
!900 = !DILocation(line: 140, column: 17, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !3, line: 139, column: 5)
!902 = !DILocation(line: 140, column: 30, scope: !901)
!903 = !DILocation(line: 140, column: 7, scope: !901)
!904 = !DILocation(line: 141, column: 7, scope: !901)
!905 = !DILocation(line: 144, column: 3, scope: !85)
!906 = !DILocation(line: 146, column: 3, scope: !85)
!907 = !DILocation(line: 0, scope: !156)
!908 = !DILocalVariable(name: "__fp", arg: 1, scope: !909, file: !910, line: 66, type: !92)
!909 = distinct !DISubprogram(name: "getc_unlocked", scope: !910, file: !910, line: 66, type: !911, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !913)
!910 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!911 = !DISubroutineType(types: !912)
!912 = !{!48, !92}
!913 = !{!908}
!914 = !DILocation(line: 66, column: 22, scope: !909, inlinedAt: !915)
!915 = distinct !DILocation(line: 146, column: 15, scope: !85)
!916 = !DILocation(line: 68, column: 10, scope: !909, inlinedAt: !915)
!917 = !{!918, !744, i64 8}
!918 = !{!"_IO_FILE", !855, i64 0, !744, i64 8, !744, i64 16, !744, i64 24, !744, i64 32, !744, i64 40, !744, i64 48, !744, i64 56, !744, i64 64, !744, i64 72, !744, i64 80, !744, i64 88, !744, i64 96, !744, i64 104, !855, i64 112, !855, i64 116, !919, i64 120, !920, i64 128, !745, i64 130, !745, i64 131, !744, i64 136, !919, i64 144, !744, i64 152, !744, i64 160, !744, i64 168, !744, i64 176, !919, i64 184, !855, i64 192, !745, i64 196}
!919 = !{!"long", !745, i64 0}
!920 = !{!"short", !745, i64 0}
!921 = !{!918, !744, i64 16}
!922 = !{!"branch_weights", i32 2000, i32 1}
!923 = !DILocation(line: 123, column: 7, scope: !85)
!924 = !DILocation(line: 146, column: 31, scope: !85)
!925 = !DILocation(line: 148, column: 22, scope: !926)
!926 = distinct !DILexicalBlock(scope: !156, file: !3, line: 148, column: 11)
!927 = !DILocation(line: 148, column: 29, scope: !926)
!928 = !{!919, !919, i64 0}
!929 = !DILocation(line: 148, column: 26, scope: !926)
!930 = !DILocation(line: 148, column: 11, scope: !156)
!931 = !DILocation(line: 149, column: 20, scope: !926)
!932 = !DILocation(line: 149, column: 18, scope: !926)
!933 = !DILocation(line: 149, column: 9, scope: !926)
!934 = !DILocation(line: 151, column: 13, scope: !935)
!935 = distinct !DILexicalBlock(scope: !156, file: !3, line: 151, column: 11)
!936 = !DILocation(line: 151, column: 11, scope: !156)
!937 = !DILocation(line: 153, column: 11, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !3, line: 152, column: 9)
!939 = !DILocation(line: 153, column: 34, scope: !938)
!940 = !DILocation(line: 154, column: 11, scope: !938)
!941 = !DILocation(line: 156, column: 11, scope: !938)
!942 = distinct !{!942, !906, !943}
!943 = !DILocation(line: 216, column: 5, scope: !85)
!944 = !DILocation(line: 0, scope: !945)
!945 = distinct !DILexicalBlock(scope: !159, file: !3, line: 197, column: 19)
!946 = !DILocation(line: 0, scope: !159)
!947 = !DILocalVariable(name: "column", arg: 1, scope: !948, file: !3, line: 94, type: !50)
!948 = distinct !DISubprogram(name: "adjust_column", scope: !3, file: !3, line: 94, type: !949, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !951)
!949 = !DISubroutineType(types: !950)
!950 = !{!50, !50, !46}
!951 = !{!947, !952}
!952 = !DILocalVariable(name: "c", arg: 2, scope: !948, file: !3, line: 94, type: !46)
!953 = !DILocation(line: 94, column: 23, scope: !948, inlinedAt: !954)
!954 = distinct !DILocation(line: 160, column: 16, scope: !156)
!955 = !DILocation(line: 94, column: 36, scope: !948, inlinedAt: !954)
!956 = !DILocation(line: 96, column: 7, scope: !948, inlinedAt: !954)
!957 = !DILocation(line: 98, column: 11, scope: !958, inlinedAt: !954)
!958 = distinct !DILexicalBlock(scope: !959, file: !3, line: 97, column: 5)
!959 = distinct !DILexicalBlock(scope: !948, file: !3, line: 96, column: 7)
!960 = !DILocation(line: 100, column: 22, scope: !961, inlinedAt: !954)
!961 = distinct !DILexicalBlock(scope: !962, file: !3, line: 100, column: 15)
!962 = distinct !DILexicalBlock(scope: !963, file: !3, line: 99, column: 9)
!963 = distinct !DILexicalBlock(scope: !958, file: !3, line: 98, column: 11)
!964 = !DILocation(line: 101, column: 19, scope: !961, inlinedAt: !954)
!965 = !DILocation(line: 100, column: 15, scope: !962, inlinedAt: !954)
!966 = !DILocation(line: 106, column: 38, scope: !967, inlinedAt: !954)
!967 = distinct !DILexicalBlock(scope: !968, file: !3, line: 105, column: 16)
!968 = distinct !DILexicalBlock(scope: !963, file: !3, line: 103, column: 16)
!969 = !DILocation(line: 106, column: 29, scope: !967, inlinedAt: !954)
!970 = !DILocation(line: 106, column: 16, scope: !967, inlinedAt: !954)
!971 = !DILocation(line: 106, column: 9, scope: !967, inlinedAt: !954)
!972 = !DILocation(line: 108, column: 15, scope: !967, inlinedAt: !954)
!973 = !DILocation(line: 111, column: 11, scope: !959, inlinedAt: !954)
!974 = !DILocation(line: 162, column: 18, scope: !155)
!975 = !DILocation(line: 162, column: 11, scope: !156)
!976 = !DILocation(line: 167, column: 15, scope: !154)
!977 = !DILocation(line: 0, scope: !978)
!978 = distinct !DILexicalBlock(scope: !152, file: !3, line: 174, column: 17)
!979 = !DILocation(line: 170, column: 22, scope: !152)
!980 = !DILocation(line: 173, column: 15, scope: !152)
!981 = !DILocation(line: 175, column: 19, scope: !978)
!982 = !DILocation(line: 176, column: 23, scope: !983)
!983 = distinct !DILexicalBlock(scope: !978, file: !3, line: 176, column: 23)
!984 = !{!920, !920, i64 0}
!985 = !DILocation(line: 176, column: 23, scope: !978)
!986 = distinct !{!986, !980, !987}
!987 = !DILocation(line: 181, column: 17, scope: !152)
!988 = !DILocation(line: 189, column: 19, scope: !159)
!989 = !DILocalVariable(name: "__c", arg: 1, scope: !990, file: !910, line: 108, type: !48)
!990 = distinct !DISubprogram(name: "putchar_unlocked", scope: !910, file: !910, line: 108, type: !991, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !993)
!991 = !DISubroutineType(types: !992)
!992 = !{!48, !48}
!993 = !{!989}
!994 = !DILocation(line: 108, column: 23, scope: !990, inlinedAt: !995)
!995 = distinct !DILocation(line: 191, column: 19, scope: !159)
!996 = !DILocation(line: 110, column: 10, scope: !990, inlinedAt: !995)
!997 = !{!918, !744, i64 40}
!998 = !{!918, !744, i64 48}
!999 = !DILocation(line: 194, column: 28, scope: !159)
!1000 = !DILocation(line: 194, column: 47, scope: !159)
!1001 = !DILocation(line: 195, column: 39, scope: !159)
!1002 = !DILocation(line: 194, column: 19, scope: !159)
!1003 = !DILocation(line: 185, column: 26, scope: !159)
!1004 = !DILocation(line: 197, column: 42, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !945, file: !3, line: 197, column: 19)
!1006 = !DILocation(line: 197, column: 19, scope: !945)
!1007 = !DILocation(line: 94, column: 23, scope: !948, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 198, column: 30, scope: !1005)
!1009 = !DILocation(line: 96, column: 7, scope: !948, inlinedAt: !1008)
!1010 = !DILocation(line: 198, column: 53, scope: !1005)
!1011 = !DILocation(line: 94, column: 36, scope: !948, inlinedAt: !1008)
!1012 = !DILocation(line: 98, column: 11, scope: !958, inlinedAt: !1008)
!1013 = !DILocation(line: 100, column: 22, scope: !961, inlinedAt: !1008)
!1014 = !DILocation(line: 101, column: 19, scope: !961, inlinedAt: !1008)
!1015 = !DILocation(line: 100, column: 15, scope: !962, inlinedAt: !1008)
!1016 = !DILocation(line: 106, column: 38, scope: !967, inlinedAt: !1008)
!1017 = !DILocation(line: 106, column: 29, scope: !967, inlinedAt: !1008)
!1018 = !DILocation(line: 106, column: 16, scope: !967, inlinedAt: !1008)
!1019 = !DILocation(line: 106, column: 9, scope: !967, inlinedAt: !1008)
!1020 = !DILocation(line: 108, column: 15, scope: !967, inlinedAt: !1008)
!1021 = !DILocation(line: 111, column: 11, scope: !959, inlinedAt: !1008)
!1022 = !DILocation(line: 197, column: 57, scope: !1005)
!1023 = distinct !{!1023, !1006, !1024}
!1024 = !DILocation(line: 198, column: 64, scope: !945)
!1025 = !DILocation(line: 203, column: 26, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !154, file: !3, line: 203, column: 15)
!1027 = !DILocation(line: 0, scope: !154)
!1028 = !DILocation(line: 203, column: 15, scope: !154)
!1029 = !DILocation(line: 205, column: 38, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 204, column: 13)
!1031 = !DILocation(line: 206, column: 15, scope: !1030)
!1032 = !DILocation(line: 209, column: 34, scope: !154)
!1033 = !DILocation(line: 210, column: 11, scope: !154)
!1034 = !DILocation(line: 212, column: 11, scope: !154)
!1035 = !DILocation(line: 215, column: 7, scope: !156)
!1036 = !DILocation(line: 215, column: 26, scope: !156)
!1037 = !DILocation(line: 215, column: 30, scope: !156)
!1038 = !DILocation(line: 218, column: 17, scope: !85)
!1039 = !DILocation(line: 128, column: 7, scope: !85)
!1040 = !DILocation(line: 220, column: 7, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !85, file: !3, line: 220, column: 7)
!1042 = !DILocation(line: 220, column: 7, scope: !85)
!1043 = !DILocation(line: 221, column: 5, scope: !1041)
!1044 = !DILocalVariable(name: "__stream", arg: 1, scope: !1045, file: !910, line: 135, type: !92)
!1045 = distinct !DISubprogram(name: "ferror_unlocked", scope: !910, file: !910, line: 135, type: !911, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1046)
!1046 = !{!1044}
!1047 = !DILocation(line: 135, column: 1, scope: !1045, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 223, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !85, file: !3, line: 223, column: 7)
!1050 = !DILocation(line: 137, column: 10, scope: !1045, inlinedAt: !1048)
!1051 = !{!918, !855, i64 0}
!1052 = !DILocation(line: 223, column: 7, scope: !1049)
!1053 = !DILocation(line: 223, column: 7, scope: !85)
!1054 = !DILocation(line: 225, column: 36, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 224, column: 5)
!1056 = !DILocation(line: 225, column: 7, scope: !1055)
!1057 = !DILocation(line: 226, column: 12, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 226, column: 11)
!1059 = !DILocation(line: 226, column: 11, scope: !1055)
!1060 = !DILocation(line: 227, column: 9, scope: !1058)
!1061 = !DILocation(line: 230, column: 8, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !85, file: !3, line: 230, column: 7)
!1063 = !DILocation(line: 230, column: 30, scope: !1062)
!1064 = !DILocation(line: 230, column: 33, scope: !1062)
!1065 = !DILocation(line: 230, column: 50, scope: !1062)
!1066 = !DILocation(line: 230, column: 7, scope: !85)
!1067 = !DILocation(line: 232, column: 17, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 231, column: 5)
!1069 = !DILocation(line: 232, column: 30, scope: !1068)
!1070 = !DILocation(line: 232, column: 7, scope: !1068)
!1071 = !DILocation(line: 233, column: 7, scope: !1068)
!1072 = !DILocation(line: 0, scope: !1068)
!1073 = !DILocation(line: 237, column: 1, scope: !85)
!1074 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !178, file: !178, line: 51, type: !718, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !1075)
!1075 = !{!1076}
!1076 = !DILocalVariable(name: "file", arg: 1, scope: !1074, file: !178, line: 51, type: !76)
!1077 = !DILocation(line: 51, column: 41, scope: !1074)
!1078 = !DILocation(line: 53, column: 13, scope: !1074)
!1079 = !DILocation(line: 54, column: 1, scope: !1074)
!1080 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !178, file: !178, line: 88, type: !1081, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !1083)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{null, !58}
!1083 = !{!1084}
!1084 = !DILocalVariable(name: "ignore", arg: 1, scope: !1080, file: !178, line: 88, type: !58)
!1085 = !DILocation(line: 88, column: 37, scope: !1080)
!1086 = !DILocation(line: 90, column: 16, scope: !1080)
!1087 = !{!1088, !1088, i64 0}
!1088 = !{!"_Bool", !745, i64 0}
!1089 = !DILocation(line: 91, column: 1, scope: !1080)
!1090 = distinct !DISubprogram(name: "close_stdout", scope: !178, file: !178, line: 117, type: !751, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !1091)
!1091 = !{!1092}
!1092 = !DILocalVariable(name: "write_error", scope: !1093, file: !178, line: 122, type: !76)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !178, line: 121, column: 5)
!1094 = distinct !DILexicalBlock(scope: !1090, file: !178, line: 119, column: 7)
!1095 = !DILocation(line: 119, column: 21, scope: !1094)
!1096 = !DILocation(line: 119, column: 7, scope: !1094)
!1097 = !DILocation(line: 119, column: 29, scope: !1094)
!1098 = !DILocation(line: 120, column: 7, scope: !1094)
!1099 = !DILocation(line: 120, column: 12, scope: !1094)
!1100 = !{i8 0, i8 2}
!1101 = !DILocation(line: 120, column: 25, scope: !1094)
!1102 = !DILocation(line: 120, column: 28, scope: !1094)
!1103 = !DILocation(line: 120, column: 34, scope: !1094)
!1104 = !DILocation(line: 119, column: 7, scope: !1090)
!1105 = !DILocation(line: 122, column: 33, scope: !1093)
!1106 = !DILocation(line: 122, column: 19, scope: !1093)
!1107 = !DILocation(line: 123, column: 11, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1093, file: !178, line: 123, column: 11)
!1109 = !DILocation(line: 0, scope: !1108)
!1110 = !DILocation(line: 123, column: 11, scope: !1093)
!1111 = !DILocation(line: 124, column: 36, scope: !1108)
!1112 = !DILocation(line: 124, column: 9, scope: !1108)
!1113 = !DILocation(line: 127, column: 9, scope: !1108)
!1114 = !DILocation(line: 129, column: 14, scope: !1093)
!1115 = !DILocation(line: 129, column: 7, scope: !1093)
!1116 = !DILocation(line: 134, column: 42, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1090, file: !178, line: 134, column: 7)
!1118 = !DILocation(line: 134, column: 28, scope: !1117)
!1119 = !DILocation(line: 134, column: 50, scope: !1117)
!1120 = !DILocation(line: 134, column: 7, scope: !1090)
!1121 = !DILocation(line: 135, column: 12, scope: !1117)
!1122 = !DILocation(line: 135, column: 5, scope: !1117)
!1123 = !DILocation(line: 136, column: 1, scope: !1090)
!1124 = distinct !DISubprogram(name: "fdadvise", scope: !1125, file: !1125, line: 31, type: !1126, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !255, retainedNodes: !1131)
!1125 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !48, !1128, !1128, !1130}
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1129, line: 63, baseType: !118)
!1129 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1131 = !{!1132, !1133, !1134, !1135, !1136}
!1132 = !DILocalVariable(name: "fd", arg: 1, scope: !1124, file: !1125, line: 31, type: !48)
!1133 = !DILocalVariable(name: "offset", arg: 2, scope: !1124, file: !1125, line: 31, type: !1128)
!1134 = !DILocalVariable(name: "len", arg: 3, scope: !1124, file: !1125, line: 31, type: !1128)
!1135 = !DILocalVariable(name: "advice", arg: 4, scope: !1124, file: !1125, line: 31, type: !1130)
!1136 = !DILocalVariable(name: "__x", scope: !1137, file: !1125, line: 34, type: !48)
!1137 = distinct !DILexicalBlock(scope: !1124, file: !1125, line: 34, column: 3)
!1138 = !DILocation(line: 31, column: 15, scope: !1124)
!1139 = !DILocation(line: 31, column: 25, scope: !1124)
!1140 = !DILocation(line: 31, column: 39, scope: !1124)
!1141 = !DILocation(line: 31, column: 54, scope: !1124)
!1142 = !DILocation(line: 34, column: 3, scope: !1137)
!1143 = !DILocation(line: 36, column: 1, scope: !1124)
!1144 = distinct !DISubprogram(name: "fadvise", scope: !1125, file: !1125, line: 39, type: !1145, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !255, retainedNodes: !1181)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{null, !1147, !1130}
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !1149)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !1150)
!1150 = !{!1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1149, file: !96, line: 51, baseType: !48, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1149, file: !96, line: 54, baseType: !45, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1149, file: !96, line: 55, baseType: !45, size: 64, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1149, file: !96, line: 56, baseType: !45, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1149, file: !96, line: 57, baseType: !45, size: 64, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1149, file: !96, line: 58, baseType: !45, size: 64, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1149, file: !96, line: 59, baseType: !45, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1149, file: !96, line: 60, baseType: !45, size: 64, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1149, file: !96, line: 61, baseType: !45, size: 64, offset: 512)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1149, file: !96, line: 64, baseType: !45, size: 64, offset: 576)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1149, file: !96, line: 65, baseType: !45, size: 64, offset: 640)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1149, file: !96, line: 66, baseType: !45, size: 64, offset: 704)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1149, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1149, file: !96, line: 70, baseType: !1165, size: 64, offset: 832)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1149, file: !96, line: 72, baseType: !48, size: 32, offset: 896)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1149, file: !96, line: 73, baseType: !48, size: 32, offset: 928)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1149, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1149, file: !96, line: 77, baseType: !49, size: 16, offset: 1024)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1149, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1149, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1149, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1149, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1149, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1149, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1149, file: !96, line: 93, baseType: !1165, size: 64, offset: 1344)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1149, file: !96, line: 94, baseType: !47, size: 64, offset: 1408)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1149, file: !96, line: 95, baseType: !50, size: 64, offset: 1472)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1149, file: !96, line: 96, baseType: !48, size: 32, offset: 1536)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1149, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!1181 = !{!1182, !1183}
!1182 = !DILocalVariable(name: "fp", arg: 1, scope: !1144, file: !1125, line: 39, type: !1147)
!1183 = !DILocalVariable(name: "advice", arg: 2, scope: !1144, file: !1125, line: 39, type: !1130)
!1184 = !DILocation(line: 39, column: 16, scope: !1144)
!1185 = !DILocation(line: 39, column: 30, scope: !1144)
!1186 = !DILocation(line: 41, column: 7, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1144, file: !1125, line: 41, column: 7)
!1188 = !DILocation(line: 41, column: 7, scope: !1144)
!1189 = !DILocation(line: 42, column: 15, scope: !1187)
!1190 = !DILocation(line: 31, column: 15, scope: !1124, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 42, column: 5, scope: !1187)
!1192 = !DILocation(line: 31, column: 25, scope: !1124, inlinedAt: !1191)
!1193 = !DILocation(line: 31, column: 39, scope: !1124, inlinedAt: !1191)
!1194 = !DILocation(line: 31, column: 54, scope: !1124, inlinedAt: !1191)
!1195 = !DILocation(line: 34, column: 3, scope: !1137, inlinedAt: !1191)
!1196 = !DILocation(line: 42, column: 5, scope: !1187)
!1197 = !DILocation(line: 43, column: 1, scope: !1144)
!1198 = distinct !DISubprogram(name: "set_program_name", scope: !192, file: !192, line: 39, type: !718, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !188, retainedNodes: !1199)
!1199 = !{!1200, !1201, !1202}
!1200 = !DILocalVariable(name: "argv0", arg: 1, scope: !1198, file: !192, line: 39, type: !76)
!1201 = !DILocalVariable(name: "slash", scope: !1198, file: !192, line: 46, type: !76)
!1202 = !DILocalVariable(name: "base", scope: !1198, file: !192, line: 47, type: !76)
!1203 = !DILocation(line: 39, column: 31, scope: !1198)
!1204 = !DILocation(line: 51, column: 13, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1198, file: !192, line: 51, column: 7)
!1206 = !DILocation(line: 51, column: 7, scope: !1198)
!1207 = !DILocation(line: 55, column: 14, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1205, file: !192, line: 52, column: 5)
!1209 = !DILocation(line: 54, column: 7, scope: !1208)
!1210 = !DILocation(line: 56, column: 7, scope: !1208)
!1211 = !DILocation(line: 59, column: 11, scope: !1198)
!1212 = !DILocation(line: 46, column: 15, scope: !1198)
!1213 = !DILocation(line: 60, column: 17, scope: !1198)
!1214 = !DILocation(line: 60, column: 33, scope: !1198)
!1215 = !DILocation(line: 60, column: 11, scope: !1198)
!1216 = !DILocation(line: 47, column: 15, scope: !1198)
!1217 = !DILocation(line: 61, column: 12, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1198, file: !192, line: 61, column: 7)
!1219 = !DILocation(line: 61, column: 20, scope: !1218)
!1220 = !DILocation(line: 61, column: 25, scope: !1218)
!1221 = !DILocation(line: 61, column: 42, scope: !1218)
!1222 = !DILocation(line: 61, column: 28, scope: !1218)
!1223 = !DILocation(line: 61, column: 61, scope: !1218)
!1224 = !DILocation(line: 61, column: 7, scope: !1198)
!1225 = !DILocation(line: 64, column: 11, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !192, line: 64, column: 11)
!1227 = distinct !DILexicalBlock(scope: !1218, file: !192, line: 62, column: 5)
!1228 = !DILocation(line: 64, column: 36, scope: !1226)
!1229 = !DILocation(line: 64, column: 11, scope: !1227)
!1230 = !DILocation(line: 66, column: 24, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1226, file: !192, line: 65, column: 9)
!1232 = !DILocation(line: 70, column: 41, scope: !1231)
!1233 = !DILocation(line: 72, column: 9, scope: !1231)
!1234 = !DILocation(line: 84, column: 16, scope: !1198)
!1235 = !DILocation(line: 90, column: 27, scope: !1198)
!1236 = !DILocation(line: 92, column: 1, scope: !1198)
!1237 = distinct !DISubprogram(name: "clone_quoting_options", scope: !207, file: !207, line: 122, type: !1238, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !1241)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1240, !1240}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1241 = !{!1242, !1243, !1244}
!1242 = !DILocalVariable(name: "o", arg: 1, scope: !1237, file: !207, line: 122, type: !1240)
!1243 = !DILocalVariable(name: "e", scope: !1237, file: !207, line: 124, type: !48)
!1244 = !DILocalVariable(name: "p", scope: !1237, file: !207, line: 125, type: !1240)
!1245 = !DILocation(line: 122, column: 48, scope: !1237)
!1246 = !DILocation(line: 124, column: 11, scope: !1237)
!1247 = !DILocation(line: 124, column: 7, scope: !1237)
!1248 = !DILocation(line: 125, column: 40, scope: !1237)
!1249 = !DILocation(line: 125, column: 31, scope: !1237)
!1250 = !DILocation(line: 125, column: 27, scope: !1237)
!1251 = !DILocation(line: 127, column: 9, scope: !1237)
!1252 = !DILocation(line: 128, column: 3, scope: !1237)
!1253 = distinct !DISubprogram(name: "get_quoting_style", scope: !207, file: !207, line: 133, type: !1254, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !1258)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!5, !1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!1258 = !{!1259}
!1259 = !DILocalVariable(name: "o", arg: 1, scope: !1253, file: !207, line: 133, type: !1256)
!1260 = !DILocation(line: 133, column: 50, scope: !1253)
!1261 = !DILocation(line: 135, column: 11, scope: !1253)
!1262 = !DILocation(line: 135, column: 46, scope: !1253)
!1263 = !{!1264, !745, i64 0}
!1264 = !{!"quoting_options", !745, i64 0, !855, i64 4, !745, i64 8, !744, i64 40, !744, i64 48}
!1265 = !DILocation(line: 135, column: 3, scope: !1253)
!1266 = distinct !DISubprogram(name: "set_quoting_style", scope: !207, file: !207, line: 141, type: !1267, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !1269)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !1240, !5}
!1269 = !{!1270, !1271}
!1270 = !DILocalVariable(name: "o", arg: 1, scope: !1266, file: !207, line: 141, type: !1240)
!1271 = !DILocalVariable(name: "s", arg: 2, scope: !1266, file: !207, line: 141, type: !5)
!1272 = !DILocation(line: 141, column: 44, scope: !1266)
!1273 = !DILocation(line: 141, column: 66, scope: !1266)
!1274 = !DILocation(line: 143, column: 4, scope: !1266)
!1275 = !DILocation(line: 143, column: 39, scope: !1266)
!1276 = !DILocation(line: 143, column: 45, scope: !1266)
!1277 = !DILocation(line: 144, column: 1, scope: !1266)
!1278 = distinct !DISubprogram(name: "set_char_quoting", scope: !207, file: !207, line: 152, type: !1279, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !1281)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!48, !1240, !46, !48}
!1281 = !{!1282, !1283, !1284, !1285, !1286, !1288, !1289}
!1282 = !DILocalVariable(name: "o", arg: 1, scope: !1278, file: !207, line: 152, type: !1240)
!1283 = !DILocalVariable(name: "c", arg: 2, scope: !1278, file: !207, line: 152, type: !46)
!1284 = !DILocalVariable(name: "i", arg: 3, scope: !1278, file: !207, line: 152, type: !48)
!1285 = !DILocalVariable(name: "uc", scope: !1278, file: !207, line: 154, type: !54)
!1286 = !DILocalVariable(name: "p", scope: !1278, file: !207, line: 155, type: !1287)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1288 = !DILocalVariable(name: "shift", scope: !1278, file: !207, line: 157, type: !48)
!1289 = !DILocalVariable(name: "r", scope: !1278, file: !207, line: 158, type: !48)
!1290 = !DILocation(line: 152, column: 43, scope: !1278)
!1291 = !DILocation(line: 152, column: 51, scope: !1278)
!1292 = !DILocation(line: 152, column: 58, scope: !1278)
!1293 = !DILocation(line: 154, column: 17, scope: !1278)
!1294 = !DILocation(line: 156, column: 6, scope: !1278)
!1295 = !DILocation(line: 156, column: 62, scope: !1278)
!1296 = !DILocation(line: 156, column: 57, scope: !1278)
!1297 = !DILocation(line: 155, column: 17, scope: !1278)
!1298 = !DILocation(line: 157, column: 15, scope: !1278)
!1299 = !DILocation(line: 157, column: 7, scope: !1278)
!1300 = !DILocation(line: 158, column: 12, scope: !1278)
!1301 = !DILocation(line: 158, column: 15, scope: !1278)
!1302 = !DILocation(line: 158, column: 25, scope: !1278)
!1303 = !DILocation(line: 158, column: 7, scope: !1278)
!1304 = !DILocation(line: 159, column: 13, scope: !1278)
!1305 = !DILocation(line: 159, column: 18, scope: !1278)
!1306 = !DILocation(line: 159, column: 23, scope: !1278)
!1307 = !DILocation(line: 159, column: 6, scope: !1278)
!1308 = !DILocation(line: 160, column: 3, scope: !1278)
!1309 = distinct !DISubprogram(name: "set_quoting_flags", scope: !207, file: !207, line: 168, type: !1310, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !1312)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!48, !1240, !48}
!1312 = !{!1313, !1314, !1315}
!1313 = !DILocalVariable(name: "o", arg: 1, scope: !1309, file: !207, line: 168, type: !1240)
!1314 = !DILocalVariable(name: "i", arg: 2, scope: !1309, file: !207, line: 168, type: !48)
!1315 = !DILocalVariable(name: "r", scope: !1309, file: !207, line: 170, type: !48)
!1316 = !DILocation(line: 168, column: 44, scope: !1309)
!1317 = !DILocation(line: 168, column: 51, scope: !1309)
!1318 = !DILocation(line: 171, column: 8, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1309, file: !207, line: 171, column: 7)
!1320 = !DILocation(line: 171, column: 7, scope: !1309)
!1321 = !DILocation(line: 173, column: 10, scope: !1309)
!1322 = !{!1264, !855, i64 4}
!1323 = !DILocation(line: 170, column: 7, scope: !1309)
!1324 = !DILocation(line: 174, column: 12, scope: !1309)
!1325 = !DILocation(line: 175, column: 3, scope: !1309)
!1326 = distinct !DISubprogram(name: "set_custom_quoting", scope: !207, file: !207, line: 179, type: !1327, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !1329)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{null, !1240, !76, !76}
!1329 = !{!1330, !1331, !1332}
!1330 = !DILocalVariable(name: "o", arg: 1, scope: !1326, file: !207, line: 179, type: !1240)
!1331 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1326, file: !207, line: 180, type: !76)
!1332 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1326, file: !207, line: 180, type: !76)
!1333 = !DILocation(line: 179, column: 45, scope: !1326)
!1334 = !DILocation(line: 180, column: 33, scope: !1326)
!1335 = !DILocation(line: 180, column: 57, scope: !1326)
!1336 = !DILocation(line: 182, column: 8, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1326, file: !207, line: 182, column: 7)
!1338 = !DILocation(line: 182, column: 7, scope: !1326)
!1339 = !DILocation(line: 184, column: 6, scope: !1326)
!1340 = !DILocation(line: 184, column: 12, scope: !1326)
!1341 = !DILocation(line: 185, column: 8, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1326, file: !207, line: 185, column: 7)
!1343 = !DILocation(line: 185, column: 23, scope: !1342)
!1344 = !DILocation(line: 185, column: 19, scope: !1342)
!1345 = !DILocation(line: 186, column: 5, scope: !1342)
!1346 = !DILocation(line: 187, column: 6, scope: !1326)
!1347 = !DILocation(line: 187, column: 17, scope: !1326)
!1348 = !{!1264, !744, i64 40}
!1349 = !DILocation(line: 188, column: 6, scope: !1326)
!1350 = !DILocation(line: 188, column: 18, scope: !1326)
!1351 = !{!1264, !744, i64 48}
!1352 = !DILocation(line: 189, column: 1, scope: !1326)
!1353 = distinct !DISubprogram(name: "quotearg_buffer", scope: !207, file: !207, line: 784, type: !1354, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !1356)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!50, !45, !50, !76, !50, !1256}
!1356 = !{!1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364}
!1357 = !DILocalVariable(name: "buffer", arg: 1, scope: !1353, file: !207, line: 784, type: !45)
!1358 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1353, file: !207, line: 784, type: !50)
!1359 = !DILocalVariable(name: "arg", arg: 3, scope: !1353, file: !207, line: 785, type: !76)
!1360 = !DILocalVariable(name: "argsize", arg: 4, scope: !1353, file: !207, line: 785, type: !50)
!1361 = !DILocalVariable(name: "o", arg: 5, scope: !1353, file: !207, line: 786, type: !1256)
!1362 = !DILocalVariable(name: "p", scope: !1353, file: !207, line: 788, type: !1256)
!1363 = !DILocalVariable(name: "e", scope: !1353, file: !207, line: 789, type: !48)
!1364 = !DILocalVariable(name: "r", scope: !1353, file: !207, line: 790, type: !50)
!1365 = !DILocation(line: 784, column: 24, scope: !1353)
!1366 = !DILocation(line: 784, column: 39, scope: !1353)
!1367 = !DILocation(line: 785, column: 30, scope: !1353)
!1368 = !DILocation(line: 785, column: 42, scope: !1353)
!1369 = !DILocation(line: 786, column: 48, scope: !1353)
!1370 = !DILocation(line: 788, column: 37, scope: !1353)
!1371 = !DILocation(line: 788, column: 33, scope: !1353)
!1372 = !DILocation(line: 789, column: 11, scope: !1353)
!1373 = !DILocation(line: 789, column: 7, scope: !1353)
!1374 = !DILocation(line: 791, column: 43, scope: !1353)
!1375 = !DILocation(line: 791, column: 53, scope: !1353)
!1376 = !DILocation(line: 791, column: 60, scope: !1353)
!1377 = !DILocation(line: 792, column: 43, scope: !1353)
!1378 = !DILocation(line: 792, column: 58, scope: !1353)
!1379 = !DILocation(line: 790, column: 14, scope: !1353)
!1380 = !DILocation(line: 790, column: 10, scope: !1353)
!1381 = !DILocation(line: 793, column: 9, scope: !1353)
!1382 = !DILocation(line: 794, column: 3, scope: !1353)
!1383 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !207, file: !207, line: 256, type: !1384, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !1388)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!50, !45, !50, !76, !50, !5, !48, !1386, !76, !76}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1413, !1414, !1415, !1416, !1417, !1420, !1421, !1439, !1442, !1443, !1450}
!1389 = !DILocalVariable(name: "buffer", arg: 1, scope: !1383, file: !207, line: 256, type: !45)
!1390 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1383, file: !207, line: 256, type: !50)
!1391 = !DILocalVariable(name: "arg", arg: 3, scope: !1383, file: !207, line: 257, type: !76)
!1392 = !DILocalVariable(name: "argsize", arg: 4, scope: !1383, file: !207, line: 257, type: !50)
!1393 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1383, file: !207, line: 258, type: !5)
!1394 = !DILocalVariable(name: "flags", arg: 6, scope: !1383, file: !207, line: 258, type: !48)
!1395 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1383, file: !207, line: 259, type: !1386)
!1396 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1383, file: !207, line: 260, type: !76)
!1397 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1383, file: !207, line: 261, type: !76)
!1398 = !DILocalVariable(name: "i", scope: !1383, file: !207, line: 263, type: !50)
!1399 = !DILocalVariable(name: "len", scope: !1383, file: !207, line: 264, type: !50)
!1400 = !DILocalVariable(name: "orig_buffersize", scope: !1383, file: !207, line: 265, type: !50)
!1401 = !DILocalVariable(name: "quote_string", scope: !1383, file: !207, line: 266, type: !76)
!1402 = !DILocalVariable(name: "quote_string_len", scope: !1383, file: !207, line: 267, type: !50)
!1403 = !DILocalVariable(name: "backslash_escapes", scope: !1383, file: !207, line: 268, type: !58)
!1404 = !DILocalVariable(name: "unibyte_locale", scope: !1383, file: !207, line: 269, type: !58)
!1405 = !DILocalVariable(name: "elide_outer_quotes", scope: !1383, file: !207, line: 270, type: !58)
!1406 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1383, file: !207, line: 271, type: !58)
!1407 = !DILocalVariable(name: "encountered_single_quote", scope: !1383, file: !207, line: 272, type: !58)
!1408 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1383, file: !207, line: 273, type: !58)
!1409 = !DILocalVariable(name: "c", scope: !1410, file: !207, line: 402, type: !54)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !207, line: 401, column: 5)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !207, line: 400, column: 3)
!1412 = distinct !DILexicalBlock(scope: !1383, file: !207, line: 400, column: 3)
!1413 = !DILocalVariable(name: "esc", scope: !1410, file: !207, line: 403, type: !54)
!1414 = !DILocalVariable(name: "is_right_quote", scope: !1410, file: !207, line: 404, type: !58)
!1415 = !DILocalVariable(name: "escaping", scope: !1410, file: !207, line: 405, type: !58)
!1416 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1410, file: !207, line: 406, type: !58)
!1417 = !DILocalVariable(name: "m", scope: !1418, file: !207, line: 610, type: !50)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !207, line: 608, column: 11)
!1419 = distinct !DILexicalBlock(scope: !1410, file: !207, line: 426, column: 9)
!1420 = !DILocalVariable(name: "printable", scope: !1418, file: !207, line: 612, type: !58)
!1421 = !DILocalVariable(name: "mbstate", scope: !1422, file: !207, line: 621, type: !1424)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !207, line: 620, column: 15)
!1423 = distinct !DILexicalBlock(scope: !1418, file: !207, line: 614, column: 17)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1425, line: 6, baseType: !1426)
!1425 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1427, line: 21, baseType: !1428)
!1427 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1427, line: 13, size: 64, elements: !1429)
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1428, file: !1427, line: 15, baseType: !48, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1428, file: !1427, line: 20, baseType: !1432, size: 32, offset: 32)
!1432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1428, file: !1427, line: 16, size: 32, elements: !1433)
!1433 = !{!1434, !1435}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1432, file: !1427, line: 18, baseType: !7, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1432, file: !1427, line: 19, baseType: !1436, size: 32)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !1437)
!1437 = !{!1438}
!1438 = !DISubrange(count: 4)
!1439 = !DILocalVariable(name: "w", scope: !1440, file: !207, line: 631, type: !1441)
!1440 = distinct !DILexicalBlock(scope: !1422, file: !207, line: 630, column: 19)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !51, line: 90, baseType: !48)
!1442 = !DILocalVariable(name: "bytes", scope: !1440, file: !207, line: 632, type: !50)
!1443 = !DILocalVariable(name: "j", scope: !1444, file: !207, line: 657, type: !50)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !207, line: 656, column: 27)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !207, line: 654, column: 29)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !207, line: 649, column: 23)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !207, line: 641, column: 30)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !207, line: 636, column: 30)
!1449 = distinct !DILexicalBlock(scope: !1440, file: !207, line: 634, column: 25)
!1450 = !DILocalVariable(name: "ilim", scope: !1451, file: !207, line: 684, type: !50)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !207, line: 681, column: 15)
!1452 = distinct !DILexicalBlock(scope: !1418, file: !207, line: 680, column: 17)
!1453 = !DILocation(line: 256, column: 33, scope: !1383)
!1454 = !DILocation(line: 256, column: 48, scope: !1383)
!1455 = !DILocation(line: 257, column: 39, scope: !1383)
!1456 = !DILocation(line: 257, column: 51, scope: !1383)
!1457 = !DILocation(line: 258, column: 46, scope: !1383)
!1458 = !DILocation(line: 258, column: 65, scope: !1383)
!1459 = !DILocation(line: 259, column: 47, scope: !1383)
!1460 = !DILocation(line: 260, column: 39, scope: !1383)
!1461 = !DILocation(line: 261, column: 39, scope: !1383)
!1462 = !DILocation(line: 264, column: 10, scope: !1383)
!1463 = !DILocation(line: 265, column: 10, scope: !1383)
!1464 = !DILocation(line: 266, column: 15, scope: !1383)
!1465 = !DILocation(line: 267, column: 10, scope: !1383)
!1466 = !DILocation(line: 268, column: 8, scope: !1383)
!1467 = !DILocation(line: 269, column: 25, scope: !1383)
!1468 = !DILocation(line: 269, column: 36, scope: !1383)
!1469 = !DILocation(line: 270, column: 8, scope: !1383)
!1470 = !DILocation(line: 271, column: 8, scope: !1383)
!1471 = !DILocation(line: 272, column: 8, scope: !1383)
!1472 = !DILocation(line: 273, column: 8, scope: !1383)
!1473 = !DILocation(line: 273, column: 3, scope: !1383)
!1474 = !DILocation(line: 0, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1383, file: !207, line: 317, column: 5)
!1476 = !DILocation(line: 316, column: 3, scope: !1383)
!1477 = !DILocation(line: 323, column: 11, scope: !1475)
!1478 = !DILocation(line: 323, column: 12, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1475, file: !207, line: 323, column: 11)
!1480 = !DILocation(line: 324, column: 9, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !207, line: 324, column: 9)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !207, line: 324, column: 9)
!1483 = !DILocation(line: 324, column: 9, scope: !1482)
!1484 = !DILocation(line: 362, column: 26, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !207, line: 340, column: 11)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !207, line: 339, column: 13)
!1487 = distinct !DILexicalBlock(scope: !1475, file: !207, line: 338, column: 7)
!1488 = !DILocation(line: 363, column: 27, scope: !1485)
!1489 = !DILocation(line: 364, column: 11, scope: !1485)
!1490 = !DILocation(line: 365, column: 14, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1487, file: !207, line: 365, column: 13)
!1492 = !DILocation(line: 365, column: 13, scope: !1487)
!1493 = !DILocation(line: 366, column: 43, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !207, line: 366, column: 11)
!1495 = distinct !DILexicalBlock(scope: !1491, file: !207, line: 366, column: 11)
!1496 = !DILocation(line: 366, column: 11, scope: !1495)
!1497 = !DILocation(line: 367, column: 13, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !207, line: 367, column: 13)
!1499 = distinct !DILexicalBlock(scope: !1494, file: !207, line: 367, column: 13)
!1500 = !DILocation(line: 367, column: 13, scope: !1499)
!1501 = !DILocation(line: 366, column: 70, scope: !1494)
!1502 = distinct !{!1502, !1496, !1503}
!1503 = !DILocation(line: 367, column: 13, scope: !1495)
!1504 = !DILocation(line: 370, column: 28, scope: !1487)
!1505 = !DILocation(line: 372, column: 7, scope: !1475)
!1506 = !DILocation(line: 376, column: 7, scope: !1475)
!1507 = !DILocation(line: 379, column: 7, scope: !1475)
!1508 = !DILocation(line: 381, column: 12, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1475, file: !207, line: 381, column: 11)
!1510 = !DILocation(line: 381, column: 11, scope: !1475)
!1511 = !DILocation(line: 0, scope: !1509)
!1512 = !DILocation(line: 386, column: 12, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1475, file: !207, line: 386, column: 11)
!1514 = !DILocation(line: 386, column: 11, scope: !1475)
!1515 = !DILocation(line: 387, column: 9, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !207, line: 387, column: 9)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !207, line: 387, column: 9)
!1518 = !DILocation(line: 387, column: 9, scope: !1517)
!1519 = !DILocation(line: 394, column: 7, scope: !1475)
!1520 = !DILocation(line: 397, column: 7, scope: !1475)
!1521 = !DILocation(line: 0, scope: !1383)
!1522 = !DILocation(line: 263, column: 10, scope: !1383)
!1523 = !DILocation(line: 400, column: 8, scope: !1412)
!1524 = !DILocation(line: 0, scope: !1411)
!1525 = !DILocation(line: 400, column: 27, scope: !1411)
!1526 = !DILocation(line: 400, column: 19, scope: !1411)
!1527 = !DILocation(line: 400, column: 41, scope: !1411)
!1528 = !DILocation(line: 400, column: 48, scope: !1411)
!1529 = !DILocation(line: 400, column: 3, scope: !1412)
!1530 = !DILocation(line: 400, column: 60, scope: !1411)
!1531 = !DILocation(line: 404, column: 12, scope: !1410)
!1532 = !DILocation(line: 405, column: 12, scope: !1410)
!1533 = !DILocation(line: 406, column: 12, scope: !1410)
!1534 = !DILocation(line: 409, column: 11, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1410, file: !207, line: 408, column: 11)
!1536 = !DILocation(line: 411, column: 17, scope: !1535)
!1537 = !DILocation(line: 412, column: 39, scope: !1535)
!1538 = !DILocation(line: 416, column: 32, scope: !1535)
!1539 = !DILocation(line: 412, column: 19, scope: !1535)
!1540 = !DILocation(line: 412, column: 15, scope: !1535)
!1541 = !DILocation(line: 417, column: 11, scope: !1535)
!1542 = !DILocation(line: 417, column: 26, scope: !1535)
!1543 = !DILocation(line: 417, column: 14, scope: !1535)
!1544 = !DILocation(line: 417, column: 63, scope: !1535)
!1545 = !DILocation(line: 408, column: 11, scope: !1410)
!1546 = !DILocation(line: 0, scope: !1410)
!1547 = !DILocation(line: 424, column: 11, scope: !1410)
!1548 = !DILocation(line: 402, column: 21, scope: !1410)
!1549 = !DILocation(line: 425, column: 7, scope: !1410)
!1550 = !DILocation(line: 428, column: 15, scope: !1419)
!1551 = !DILocation(line: 430, column: 15, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !207, line: 430, column: 15)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !207, line: 429, column: 13)
!1554 = distinct !DILexicalBlock(scope: !1419, file: !207, line: 428, column: 15)
!1555 = !DILocation(line: 430, column: 15, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !207, line: 430, column: 15)
!1557 = !DILocation(line: 430, column: 15, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !207, line: 430, column: 15)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !207, line: 430, column: 15)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !207, line: 430, column: 15)
!1561 = !DILocation(line: 430, column: 15, scope: !1559)
!1562 = !DILocation(line: 430, column: 15, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !207, line: 430, column: 15)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !207, line: 430, column: 15)
!1565 = !DILocation(line: 430, column: 15, scope: !1564)
!1566 = !DILocation(line: 430, column: 15, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !207, line: 430, column: 15)
!1568 = distinct !DILexicalBlock(scope: !1560, file: !207, line: 430, column: 15)
!1569 = !DILocation(line: 430, column: 15, scope: !1568)
!1570 = !DILocation(line: 430, column: 15, scope: !1560)
!1571 = !DILocation(line: 430, column: 15, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !207, line: 430, column: 15)
!1573 = distinct !DILexicalBlock(scope: !1552, file: !207, line: 430, column: 15)
!1574 = !DILocation(line: 430, column: 15, scope: !1573)
!1575 = !DILocation(line: 438, column: 19, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1553, file: !207, line: 437, column: 19)
!1577 = !DILocation(line: 438, column: 24, scope: !1576)
!1578 = !DILocation(line: 438, column: 28, scope: !1576)
!1579 = !DILocation(line: 438, column: 38, scope: !1576)
!1580 = !DILocation(line: 438, column: 48, scope: !1576)
!1581 = !DILocation(line: 438, column: 59, scope: !1576)
!1582 = !DILocation(line: 440, column: 19, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !207, line: 440, column: 19)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !207, line: 440, column: 19)
!1585 = distinct !DILexicalBlock(scope: !1576, file: !207, line: 439, column: 17)
!1586 = !DILocation(line: 440, column: 19, scope: !1584)
!1587 = !DILocation(line: 441, column: 19, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !207, line: 441, column: 19)
!1589 = distinct !DILexicalBlock(scope: !1585, file: !207, line: 441, column: 19)
!1590 = !DILocation(line: 441, column: 19, scope: !1589)
!1591 = !DILocation(line: 442, column: 17, scope: !1585)
!1592 = !DILocation(line: 449, column: 20, scope: !1554)
!1593 = !DILocation(line: 454, column: 11, scope: !1419)
!1594 = !DILocation(line: 457, column: 19, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1419, file: !207, line: 455, column: 13)
!1596 = !DILocation(line: 463, column: 19, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1595, file: !207, line: 462, column: 19)
!1598 = !DILocation(line: 463, column: 24, scope: !1597)
!1599 = !DILocation(line: 463, column: 28, scope: !1597)
!1600 = !DILocation(line: 463, column: 38, scope: !1597)
!1601 = !DILocation(line: 463, column: 47, scope: !1597)
!1602 = !DILocation(line: 463, column: 41, scope: !1597)
!1603 = !DILocation(line: 463, column: 52, scope: !1597)
!1604 = !DILocation(line: 462, column: 19, scope: !1595)
!1605 = !DILocation(line: 464, column: 25, scope: !1597)
!1606 = !DILocation(line: 464, column: 17, scope: !1597)
!1607 = !DILocation(line: 471, column: 25, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1597, file: !207, line: 465, column: 19)
!1609 = !DILocation(line: 475, column: 21, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !207, line: 475, column: 21)
!1611 = distinct !DILexicalBlock(scope: !1608, file: !207, line: 475, column: 21)
!1612 = !DILocation(line: 475, column: 21, scope: !1611)
!1613 = !DILocation(line: 476, column: 21, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !207, line: 476, column: 21)
!1615 = distinct !DILexicalBlock(scope: !1608, file: !207, line: 476, column: 21)
!1616 = !DILocation(line: 476, column: 21, scope: !1615)
!1617 = !DILocation(line: 477, column: 21, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !207, line: 477, column: 21)
!1619 = distinct !DILexicalBlock(scope: !1608, file: !207, line: 477, column: 21)
!1620 = !DILocation(line: 477, column: 21, scope: !1619)
!1621 = !DILocation(line: 478, column: 21, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !207, line: 478, column: 21)
!1623 = distinct !DILexicalBlock(scope: !1608, file: !207, line: 478, column: 21)
!1624 = !DILocation(line: 478, column: 21, scope: !1623)
!1625 = !DILocation(line: 479, column: 21, scope: !1608)
!1626 = !DILocation(line: 403, column: 21, scope: !1410)
!1627 = !DILocation(line: 492, column: 31, scope: !1419)
!1628 = !DILocation(line: 493, column: 31, scope: !1419)
!1629 = !DILocation(line: 495, column: 31, scope: !1419)
!1630 = !DILocation(line: 496, column: 31, scope: !1419)
!1631 = !DILocation(line: 497, column: 31, scope: !1419)
!1632 = !DILocation(line: 500, column: 15, scope: !1419)
!1633 = !DILocation(line: 502, column: 19, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !207, line: 501, column: 13)
!1635 = distinct !DILexicalBlock(scope: !1419, file: !207, line: 500, column: 15)
!1636 = !DILocation(line: 509, column: 33, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1419, file: !207, line: 509, column: 15)
!1638 = !DILocation(line: 0, scope: !1419)
!1639 = !DILocation(line: 514, column: 15, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1419, file: !207, line: 513, column: 15)
!1641 = !DILocation(line: 518, column: 15, scope: !1419)
!1642 = !DILocation(line: 526, column: 26, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1419, file: !207, line: 526, column: 15)
!1644 = !DILocation(line: 526, column: 15, scope: !1419)
!1645 = !DILocation(line: 526, column: 40, scope: !1643)
!1646 = !DILocation(line: 526, column: 47, scope: !1643)
!1647 = !DILocation(line: 530, column: 17, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1419, file: !207, line: 530, column: 15)
!1649 = !DILocation(line: 526, column: 18, scope: !1643)
!1650 = !DILocation(line: 526, column: 65, scope: !1643)
!1651 = !DILocation(line: 530, column: 15, scope: !1419)
!1652 = !DILocation(line: 535, column: 11, scope: !1419)
!1653 = !DILocation(line: 549, column: 15, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1419, file: !207, line: 548, column: 15)
!1655 = !DILocation(line: 556, column: 15, scope: !1419)
!1656 = !DILocation(line: 558, column: 19, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !207, line: 557, column: 13)
!1658 = distinct !DILexicalBlock(scope: !1419, file: !207, line: 556, column: 15)
!1659 = !DILocation(line: 561, column: 19, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1657, file: !207, line: 561, column: 19)
!1661 = !DILocation(line: 561, column: 35, scope: !1660)
!1662 = !DILocation(line: 561, column: 30, scope: !1660)
!1663 = !DILocation(line: 570, column: 15, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !207, line: 570, column: 15)
!1665 = distinct !DILexicalBlock(scope: !1657, file: !207, line: 570, column: 15)
!1666 = !DILocation(line: 570, column: 15, scope: !1665)
!1667 = !DILocation(line: 571, column: 15, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !207, line: 571, column: 15)
!1669 = distinct !DILexicalBlock(scope: !1657, file: !207, line: 571, column: 15)
!1670 = !DILocation(line: 571, column: 15, scope: !1669)
!1671 = !DILocation(line: 572, column: 15, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !207, line: 572, column: 15)
!1673 = distinct !DILexicalBlock(scope: !1657, file: !207, line: 572, column: 15)
!1674 = !DILocation(line: 572, column: 15, scope: !1673)
!1675 = !DILocation(line: 574, column: 13, scope: !1657)
!1676 = !DILocation(line: 614, column: 17, scope: !1418)
!1677 = !DILocation(line: 610, column: 20, scope: !1418)
!1678 = !DILocation(line: 617, column: 29, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1423, file: !207, line: 615, column: 15)
!1680 = !DILocation(line: 617, column: 27, scope: !1679)
!1681 = !DILocation(line: 612, column: 18, scope: !1418)
!1682 = !DILocation(line: 618, column: 15, scope: !1679)
!1683 = !DILocation(line: 621, column: 17, scope: !1422)
!1684 = !DILocation(line: 622, column: 17, scope: !1422)
!1685 = !DILocation(line: 626, column: 29, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1422, file: !207, line: 626, column: 21)
!1687 = !DILocation(line: 626, column: 21, scope: !1422)
!1688 = !DILocation(line: 627, column: 29, scope: !1686)
!1689 = !DILocation(line: 627, column: 19, scope: !1686)
!1690 = !DILocation(line: 0, scope: !1535)
!1691 = !DILocation(line: 629, column: 17, scope: !1422)
!1692 = !DILocation(line: 624, column: 19, scope: !1422)
!1693 = !DILocation(line: 625, column: 27, scope: !1422)
!1694 = !DILocation(line: 631, column: 21, scope: !1440)
!1695 = !DILocation(line: 632, column: 56, scope: !1440)
!1696 = !DILocation(line: 632, column: 50, scope: !1440)
!1697 = !DILocation(line: 633, column: 53, scope: !1440)
!1698 = !DILocation(line: 621, column: 27, scope: !1422)
!1699 = !DILocation(line: 631, column: 29, scope: !1440)
!1700 = !DILocation(line: 632, column: 36, scope: !1440)
!1701 = !DILocation(line: 632, column: 28, scope: !1440)
!1702 = !DILocation(line: 634, column: 25, scope: !1440)
!1703 = !DILocation(line: 644, column: 38, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1447, file: !207, line: 642, column: 23)
!1705 = !DILocation(line: 644, column: 48, scope: !1704)
!1706 = !DILocation(line: 644, column: 51, scope: !1704)
!1707 = !DILocation(line: 644, column: 25, scope: !1704)
!1708 = !DILocation(line: 645, column: 28, scope: !1704)
!1709 = !DILocation(line: 644, column: 34, scope: !1704)
!1710 = distinct !{!1710, !1707, !1708}
!1711 = !DILocation(line: 658, column: 43, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !207, line: 658, column: 29)
!1713 = distinct !DILexicalBlock(scope: !1444, file: !207, line: 658, column: 29)
!1714 = !DILocation(line: 655, column: 29, scope: !1445)
!1715 = !DILocation(line: 657, column: 36, scope: !1444)
!1716 = !DILocation(line: 659, column: 49, scope: !1712)
!1717 = !DILocation(line: 659, column: 39, scope: !1712)
!1718 = !DILocation(line: 659, column: 31, scope: !1712)
!1719 = !DILocation(line: 658, column: 53, scope: !1712)
!1720 = !DILocation(line: 658, column: 29, scope: !1713)
!1721 = distinct !{!1721, !1720, !1722}
!1722 = !DILocation(line: 667, column: 33, scope: !1713)
!1723 = !DILocation(line: 674, column: 19, scope: !1422)
!1724 = !DILocation(line: 670, column: 41, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1446, file: !207, line: 670, column: 29)
!1726 = !DILocation(line: 670, column: 31, scope: !1725)
!1727 = !DILocation(line: 670, column: 29, scope: !1446)
!1728 = !DILocation(line: 672, column: 27, scope: !1446)
!1729 = !DILocation(line: 675, column: 26, scope: !1422)
!1730 = !DILocation(line: 675, column: 24, scope: !1422)
!1731 = !DILocation(line: 674, column: 19, scope: !1440)
!1732 = distinct !{!1732, !1691, !1733}
!1733 = !DILocation(line: 675, column: 44, scope: !1422)
!1734 = !DILocation(line: 676, column: 15, scope: !1423)
!1735 = !DILocation(line: 0, scope: !1686)
!1736 = !DILocation(line: 0, scope: !1422)
!1737 = !DILocation(line: 678, column: 40, scope: !1418)
!1738 = !DILocation(line: 680, column: 19, scope: !1452)
!1739 = !DILocation(line: 680, column: 45, scope: !1452)
!1740 = !DILocation(line: 680, column: 23, scope: !1452)
!1741 = !DILocation(line: 684, column: 33, scope: !1451)
!1742 = !DILocation(line: 684, column: 24, scope: !1451)
!1743 = !DILocation(line: 686, column: 17, scope: !1451)
!1744 = !DILocation(line: 0, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !207, line: 687, column: 19)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !207, line: 686, column: 17)
!1747 = distinct !DILexicalBlock(scope: !1451, file: !207, line: 686, column: 17)
!1748 = !DILocation(line: 0, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1745, file: !207, line: 703, column: 21)
!1750 = !DILocation(line: 0, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !207, line: 696, column: 23)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !207, line: 695, column: 30)
!1753 = distinct !DILexicalBlock(scope: !1745, file: !207, line: 688, column: 25)
!1754 = !DILocation(line: 688, column: 43, scope: !1753)
!1755 = !DILocation(line: 690, column: 25, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !207, line: 690, column: 25)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !207, line: 689, column: 23)
!1758 = !DILocation(line: 690, column: 25, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1756, file: !207, line: 690, column: 25)
!1760 = !DILocation(line: 690, column: 25, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !207, line: 690, column: 25)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !207, line: 690, column: 25)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !207, line: 690, column: 25)
!1764 = !DILocation(line: 690, column: 25, scope: !1762)
!1765 = !DILocation(line: 690, column: 25, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !207, line: 690, column: 25)
!1767 = distinct !DILexicalBlock(scope: !1763, file: !207, line: 690, column: 25)
!1768 = !DILocation(line: 690, column: 25, scope: !1767)
!1769 = !DILocation(line: 690, column: 25, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !207, line: 690, column: 25)
!1771 = distinct !DILexicalBlock(scope: !1763, file: !207, line: 690, column: 25)
!1772 = !DILocation(line: 690, column: 25, scope: !1771)
!1773 = !DILocation(line: 690, column: 25, scope: !1763)
!1774 = !DILocation(line: 690, column: 25, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !207, line: 690, column: 25)
!1776 = distinct !DILexicalBlock(scope: !1756, file: !207, line: 690, column: 25)
!1777 = !DILocation(line: 690, column: 25, scope: !1776)
!1778 = !DILocation(line: 691, column: 25, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !207, line: 691, column: 25)
!1780 = distinct !DILexicalBlock(scope: !1757, file: !207, line: 691, column: 25)
!1781 = !DILocation(line: 691, column: 25, scope: !1780)
!1782 = !DILocation(line: 692, column: 25, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !207, line: 692, column: 25)
!1784 = distinct !DILexicalBlock(scope: !1757, file: !207, line: 692, column: 25)
!1785 = !DILocation(line: 692, column: 25, scope: !1784)
!1786 = !DILocation(line: 693, column: 38, scope: !1757)
!1787 = !DILocation(line: 693, column: 33, scope: !1757)
!1788 = !DILocation(line: 694, column: 23, scope: !1757)
!1789 = !DILocation(line: 695, column: 30, scope: !1752)
!1790 = !DILocation(line: 695, column: 30, scope: !1753)
!1791 = !DILocation(line: 697, column: 25, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !207, line: 697, column: 25)
!1793 = distinct !DILexicalBlock(scope: !1751, file: !207, line: 697, column: 25)
!1794 = !DILocation(line: 697, column: 25, scope: !1793)
!1795 = !DILocation(line: 699, column: 23, scope: !1751)
!1796 = !DILocation(line: 0, scope: !1784)
!1797 = !DILocation(line: 0, scope: !1757)
!1798 = !DILocation(line: 0, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1535, file: !207, line: 418, column: 9)
!1800 = !DILocation(line: 0, scope: !1756)
!1801 = !DILocation(line: 700, column: 35, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1745, file: !207, line: 700, column: 25)
!1803 = !DILocation(line: 700, column: 30, scope: !1802)
!1804 = !DILocation(line: 700, column: 25, scope: !1745)
!1805 = !DILocation(line: 702, column: 21, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !207, line: 702, column: 21)
!1807 = distinct !DILexicalBlock(scope: !1745, file: !207, line: 702, column: 21)
!1808 = !DILocation(line: 702, column: 21, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !207, line: 702, column: 21)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !207, line: 702, column: 21)
!1811 = distinct !DILexicalBlock(scope: !1806, file: !207, line: 702, column: 21)
!1812 = !DILocation(line: 702, column: 21, scope: !1810)
!1813 = !DILocation(line: 702, column: 21, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !207, line: 702, column: 21)
!1815 = distinct !DILexicalBlock(scope: !1811, file: !207, line: 702, column: 21)
!1816 = !DILocation(line: 702, column: 21, scope: !1815)
!1817 = !DILocation(line: 702, column: 21, scope: !1811)
!1818 = !DILocation(line: 0, scope: !1793)
!1819 = !DILocation(line: 703, column: 21, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1749, file: !207, line: 703, column: 21)
!1821 = !DILocation(line: 703, column: 21, scope: !1749)
!1822 = !DILocation(line: 704, column: 25, scope: !1745)
!1823 = !DILocation(line: 686, column: 17, scope: !1746)
!1824 = distinct !{!1824, !1825, !1826}
!1825 = !DILocation(line: 686, column: 17, scope: !1747)
!1826 = !DILocation(line: 705, column: 19, scope: !1747)
!1827 = !DILocation(line: 0, scope: !1412)
!1828 = !DILocation(line: 416, column: 30, scope: !1535)
!1829 = !DILocation(line: 712, column: 34, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1410, file: !207, line: 712, column: 11)
!1831 = !DILocation(line: 714, column: 14, scope: !1830)
!1832 = !DILocation(line: 715, column: 14, scope: !1830)
!1833 = !DILocation(line: 715, column: 35, scope: !1830)
!1834 = !DILocation(line: 715, column: 17, scope: !1830)
!1835 = !DILocation(line: 715, column: 47, scope: !1830)
!1836 = !DILocation(line: 715, column: 65, scope: !1830)
!1837 = !DILocation(line: 716, column: 15, scope: !1830)
!1838 = !DILocation(line: 716, column: 11, scope: !1830)
!1839 = !DILocation(line: 712, column: 11, scope: !1410)
!1840 = !DILocation(line: 400, column: 10, scope: !1412)
!1841 = !DILocation(line: 0, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !207, line: 519, column: 13)
!1843 = distinct !DILexicalBlock(scope: !1419, file: !207, line: 518, column: 15)
!1844 = !DILocation(line: 720, column: 7, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1410, file: !207, line: 720, column: 7)
!1846 = !DILocation(line: 720, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1845, file: !207, line: 720, column: 7)
!1848 = !DILocation(line: 720, column: 7, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !207, line: 720, column: 7)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !207, line: 720, column: 7)
!1851 = distinct !DILexicalBlock(scope: !1847, file: !207, line: 720, column: 7)
!1852 = !DILocation(line: 720, column: 7, scope: !1850)
!1853 = !DILocation(line: 720, column: 7, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !207, line: 720, column: 7)
!1855 = distinct !DILexicalBlock(scope: !1851, file: !207, line: 720, column: 7)
!1856 = !DILocation(line: 720, column: 7, scope: !1855)
!1857 = !DILocation(line: 720, column: 7, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !207, line: 720, column: 7)
!1859 = distinct !DILexicalBlock(scope: !1851, file: !207, line: 720, column: 7)
!1860 = !DILocation(line: 720, column: 7, scope: !1859)
!1861 = !DILocation(line: 720, column: 7, scope: !1851)
!1862 = !DILocation(line: 720, column: 7, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !207, line: 720, column: 7)
!1864 = distinct !DILexicalBlock(scope: !1845, file: !207, line: 720, column: 7)
!1865 = !DILocation(line: 720, column: 7, scope: !1864)
!1866 = !DILocation(line: 723, column: 7, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !207, line: 723, column: 7)
!1868 = distinct !DILexicalBlock(scope: !1410, file: !207, line: 723, column: 7)
!1869 = !DILocation(line: 424, column: 9, scope: !1410)
!1870 = !DILocation(line: 723, column: 7, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !207, line: 723, column: 7)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !207, line: 723, column: 7)
!1873 = distinct !DILexicalBlock(scope: !1867, file: !207, line: 723, column: 7)
!1874 = !DILocation(line: 723, column: 7, scope: !1872)
!1875 = !DILocation(line: 723, column: 7, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !207, line: 723, column: 7)
!1877 = distinct !DILexicalBlock(scope: !1873, file: !207, line: 723, column: 7)
!1878 = !DILocation(line: 723, column: 7, scope: !1877)
!1879 = !DILocation(line: 723, column: 7, scope: !1873)
!1880 = !DILocation(line: 724, column: 7, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !207, line: 724, column: 7)
!1882 = distinct !DILexicalBlock(scope: !1410, file: !207, line: 724, column: 7)
!1883 = !DILocation(line: 724, column: 7, scope: !1882)
!1884 = !DILocation(line: 726, column: 13, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1410, file: !207, line: 726, column: 11)
!1886 = !DILocation(line: 726, column: 11, scope: !1410)
!1887 = !DILocation(line: 728, column: 5, scope: !1411)
!1888 = !DILocation(line: 400, column: 75, scope: !1411)
!1889 = !DILocation(line: 400, column: 3, scope: !1411)
!1890 = distinct !{!1890, !1529, !1891}
!1891 = !DILocation(line: 728, column: 5, scope: !1412)
!1892 = !DILocation(line: 730, column: 11, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1383, file: !207, line: 730, column: 7)
!1894 = !DILocation(line: 730, column: 16, scope: !1893)
!1895 = !DILocation(line: 738, column: 51, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1383, file: !207, line: 738, column: 7)
!1897 = !DILocation(line: 739, column: 10, scope: !1896)
!1898 = !DILocation(line: 741, column: 11, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !207, line: 741, column: 11)
!1900 = distinct !DILexicalBlock(scope: !1896, file: !207, line: 740, column: 5)
!1901 = !DILocation(line: 741, column: 11, scope: !1900)
!1902 = !DILocation(line: 742, column: 16, scope: !1899)
!1903 = !DILocation(line: 742, column: 9, scope: !1899)
!1904 = !DILocation(line: 746, column: 18, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1899, file: !207, line: 746, column: 16)
!1906 = !DILocation(line: 746, column: 32, scope: !1905)
!1907 = !DILocation(line: 746, column: 29, scope: !1905)
!1908 = !DILocation(line: 755, column: 7, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1383, file: !207, line: 755, column: 7)
!1910 = !DILocation(line: 755, column: 20, scope: !1909)
!1911 = !DILocation(line: 756, column: 12, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !207, line: 756, column: 5)
!1913 = distinct !DILexicalBlock(scope: !1909, file: !207, line: 756, column: 5)
!1914 = !DILocation(line: 756, column: 5, scope: !1913)
!1915 = !DILocation(line: 757, column: 7, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !207, line: 757, column: 7)
!1917 = distinct !DILexicalBlock(scope: !1912, file: !207, line: 757, column: 7)
!1918 = !DILocation(line: 757, column: 7, scope: !1917)
!1919 = !DILocation(line: 756, column: 39, scope: !1912)
!1920 = distinct !{!1920, !1914, !1921}
!1921 = !DILocation(line: 757, column: 7, scope: !1913)
!1922 = !DILocation(line: 759, column: 11, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1383, file: !207, line: 759, column: 7)
!1924 = !DILocation(line: 759, column: 7, scope: !1383)
!1925 = !DILocation(line: 760, column: 5, scope: !1923)
!1926 = !DILocation(line: 760, column: 17, scope: !1923)
!1927 = !DILocation(line: 766, column: 21, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1383, file: !207, line: 766, column: 7)
!1929 = !DILocation(line: 766, column: 54, scope: !1928)
!1930 = !DILocation(line: 766, column: 51, scope: !1928)
!1931 = !DILocation(line: 770, column: 42, scope: !1383)
!1932 = !DILocation(line: 768, column: 10, scope: !1383)
!1933 = !DILocation(line: 768, column: 3, scope: !1383)
!1934 = !DILocation(line: 772, column: 1, scope: !1383)
!1935 = distinct !DISubprogram(name: "gettext_quote", scope: !207, file: !207, line: 207, type: !1936, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !1938)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!76, !76, !5}
!1938 = !{!1939, !1940, !1941, !1942}
!1939 = !DILocalVariable(name: "msgid", arg: 1, scope: !1935, file: !207, line: 207, type: !76)
!1940 = !DILocalVariable(name: "s", arg: 2, scope: !1935, file: !207, line: 207, type: !5)
!1941 = !DILocalVariable(name: "translation", scope: !1935, file: !207, line: 209, type: !76)
!1942 = !DILocalVariable(name: "locale_code", scope: !1935, file: !207, line: 210, type: !76)
!1943 = !DILocation(line: 207, column: 28, scope: !1935)
!1944 = !DILocation(line: 207, column: 54, scope: !1935)
!1945 = !DILocation(line: 209, column: 29, scope: !1935)
!1946 = !DILocation(line: 209, column: 15, scope: !1935)
!1947 = !DILocation(line: 212, column: 19, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1935, file: !207, line: 212, column: 7)
!1949 = !DILocation(line: 212, column: 7, scope: !1935)
!1950 = !DILocation(line: 233, column: 17, scope: !1935)
!1951 = !DILocation(line: 210, column: 15, scope: !1935)
!1952 = !DILocalVariable(name: "s1", arg: 1, scope: !1953, file: !1954, line: 160, type: !76)
!1953 = distinct !DISubprogram(name: "strcaseeq0", scope: !1954, file: !1954, line: 160, type: !1955, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !1957)
!1954 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!48, !76, !76, !46, !46, !46, !46, !46, !46, !46, !46, !46}
!1957 = !{!1952, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967}
!1958 = !DILocalVariable(name: "s2", arg: 2, scope: !1953, file: !1954, line: 160, type: !76)
!1959 = !DILocalVariable(name: "s20", arg: 3, scope: !1953, file: !1954, line: 160, type: !46)
!1960 = !DILocalVariable(name: "s21", arg: 4, scope: !1953, file: !1954, line: 160, type: !46)
!1961 = !DILocalVariable(name: "s22", arg: 5, scope: !1953, file: !1954, line: 160, type: !46)
!1962 = !DILocalVariable(name: "s23", arg: 6, scope: !1953, file: !1954, line: 160, type: !46)
!1963 = !DILocalVariable(name: "s24", arg: 7, scope: !1953, file: !1954, line: 160, type: !46)
!1964 = !DILocalVariable(name: "s25", arg: 8, scope: !1953, file: !1954, line: 160, type: !46)
!1965 = !DILocalVariable(name: "s26", arg: 9, scope: !1953, file: !1954, line: 160, type: !46)
!1966 = !DILocalVariable(name: "s27", arg: 10, scope: !1953, file: !1954, line: 160, type: !46)
!1967 = !DILocalVariable(name: "s28", arg: 11, scope: !1953, file: !1954, line: 160, type: !46)
!1968 = !DILocation(line: 160, column: 25, scope: !1953, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 234, column: 7, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1935, file: !207, line: 234, column: 7)
!1971 = !DILocation(line: 160, column: 41, scope: !1953, inlinedAt: !1969)
!1972 = !DILocation(line: 160, column: 50, scope: !1953, inlinedAt: !1969)
!1973 = !DILocation(line: 160, column: 60, scope: !1953, inlinedAt: !1969)
!1974 = !DILocation(line: 160, column: 70, scope: !1953, inlinedAt: !1969)
!1975 = !DILocation(line: 160, column: 80, scope: !1953, inlinedAt: !1969)
!1976 = !DILocation(line: 160, column: 90, scope: !1953, inlinedAt: !1969)
!1977 = !DILocation(line: 160, column: 100, scope: !1953, inlinedAt: !1969)
!1978 = !DILocation(line: 160, column: 110, scope: !1953, inlinedAt: !1969)
!1979 = !DILocation(line: 160, column: 120, scope: !1953, inlinedAt: !1969)
!1980 = !DILocation(line: 160, column: 130, scope: !1953, inlinedAt: !1969)
!1981 = !DILocation(line: 162, column: 7, scope: !1982, inlinedAt: !1969)
!1982 = distinct !DILexicalBlock(scope: !1953, file: !1954, line: 162, column: 7)
!1983 = !DILocalVariable(name: "s1", arg: 1, scope: !1984, file: !1954, line: 146, type: !76)
!1984 = distinct !DISubprogram(name: "strcaseeq1", scope: !1954, file: !1954, line: 146, type: !1985, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !1987)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!48, !76, !76, !46, !46, !46, !46, !46, !46, !46, !46}
!1987 = !{!1983, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996}
!1988 = !DILocalVariable(name: "s2", arg: 2, scope: !1984, file: !1954, line: 146, type: !76)
!1989 = !DILocalVariable(name: "s21", arg: 3, scope: !1984, file: !1954, line: 146, type: !46)
!1990 = !DILocalVariable(name: "s22", arg: 4, scope: !1984, file: !1954, line: 146, type: !46)
!1991 = !DILocalVariable(name: "s23", arg: 5, scope: !1984, file: !1954, line: 146, type: !46)
!1992 = !DILocalVariable(name: "s24", arg: 6, scope: !1984, file: !1954, line: 146, type: !46)
!1993 = !DILocalVariable(name: "s25", arg: 7, scope: !1984, file: !1954, line: 146, type: !46)
!1994 = !DILocalVariable(name: "s26", arg: 8, scope: !1984, file: !1954, line: 146, type: !46)
!1995 = !DILocalVariable(name: "s27", arg: 9, scope: !1984, file: !1954, line: 146, type: !46)
!1996 = !DILocalVariable(name: "s28", arg: 10, scope: !1984, file: !1954, line: 146, type: !46)
!1997 = !DILocation(line: 146, column: 25, scope: !1984, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 167, column: 16, scope: !1999, inlinedAt: !1969)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !1954, line: 164, column: 11)
!2000 = distinct !DILexicalBlock(scope: !1982, file: !1954, line: 163, column: 5)
!2001 = !DILocation(line: 146, column: 41, scope: !1984, inlinedAt: !1998)
!2002 = !DILocation(line: 146, column: 50, scope: !1984, inlinedAt: !1998)
!2003 = !DILocation(line: 146, column: 60, scope: !1984, inlinedAt: !1998)
!2004 = !DILocation(line: 146, column: 70, scope: !1984, inlinedAt: !1998)
!2005 = !DILocation(line: 146, column: 80, scope: !1984, inlinedAt: !1998)
!2006 = !DILocation(line: 146, column: 90, scope: !1984, inlinedAt: !1998)
!2007 = !DILocation(line: 146, column: 100, scope: !1984, inlinedAt: !1998)
!2008 = !DILocation(line: 146, column: 110, scope: !1984, inlinedAt: !1998)
!2009 = !DILocation(line: 146, column: 120, scope: !1984, inlinedAt: !1998)
!2010 = !DILocation(line: 148, column: 7, scope: !2011, inlinedAt: !1998)
!2011 = distinct !DILexicalBlock(scope: !1984, file: !1954, line: 148, column: 7)
!2012 = !DILocalVariable(name: "s1", arg: 1, scope: !2013, file: !1954, line: 132, type: !76)
!2013 = distinct !DISubprogram(name: "strcaseeq2", scope: !1954, file: !1954, line: 132, type: !2014, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2016)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!48, !76, !76, !46, !46, !46, !46, !46, !46, !46}
!2016 = !{!2012, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024}
!2017 = !DILocalVariable(name: "s2", arg: 2, scope: !2013, file: !1954, line: 132, type: !76)
!2018 = !DILocalVariable(name: "s22", arg: 3, scope: !2013, file: !1954, line: 132, type: !46)
!2019 = !DILocalVariable(name: "s23", arg: 4, scope: !2013, file: !1954, line: 132, type: !46)
!2020 = !DILocalVariable(name: "s24", arg: 5, scope: !2013, file: !1954, line: 132, type: !46)
!2021 = !DILocalVariable(name: "s25", arg: 6, scope: !2013, file: !1954, line: 132, type: !46)
!2022 = !DILocalVariable(name: "s26", arg: 7, scope: !2013, file: !1954, line: 132, type: !46)
!2023 = !DILocalVariable(name: "s27", arg: 8, scope: !2013, file: !1954, line: 132, type: !46)
!2024 = !DILocalVariable(name: "s28", arg: 9, scope: !2013, file: !1954, line: 132, type: !46)
!2025 = !DILocation(line: 132, column: 25, scope: !2013, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 153, column: 16, scope: !2027, inlinedAt: !1998)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !1954, line: 150, column: 11)
!2028 = distinct !DILexicalBlock(scope: !2011, file: !1954, line: 149, column: 5)
!2029 = !DILocation(line: 132, column: 41, scope: !2013, inlinedAt: !2026)
!2030 = !DILocation(line: 132, column: 50, scope: !2013, inlinedAt: !2026)
!2031 = !DILocation(line: 132, column: 60, scope: !2013, inlinedAt: !2026)
!2032 = !DILocation(line: 132, column: 70, scope: !2013, inlinedAt: !2026)
!2033 = !DILocation(line: 132, column: 80, scope: !2013, inlinedAt: !2026)
!2034 = !DILocation(line: 132, column: 90, scope: !2013, inlinedAt: !2026)
!2035 = !DILocation(line: 132, column: 100, scope: !2013, inlinedAt: !2026)
!2036 = !DILocation(line: 132, column: 110, scope: !2013, inlinedAt: !2026)
!2037 = !DILocation(line: 134, column: 7, scope: !2038, inlinedAt: !2026)
!2038 = distinct !DILexicalBlock(scope: !2013, file: !1954, line: 134, column: 7)
!2039 = !DILocalVariable(name: "s1", arg: 1, scope: !2040, file: !1954, line: 118, type: !76)
!2040 = distinct !DISubprogram(name: "strcaseeq3", scope: !1954, file: !1954, line: 118, type: !2041, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2043)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!48, !76, !76, !46, !46, !46, !46, !46, !46}
!2043 = !{!2039, !2044, !2045, !2046, !2047, !2048, !2049, !2050}
!2044 = !DILocalVariable(name: "s2", arg: 2, scope: !2040, file: !1954, line: 118, type: !76)
!2045 = !DILocalVariable(name: "s23", arg: 3, scope: !2040, file: !1954, line: 118, type: !46)
!2046 = !DILocalVariable(name: "s24", arg: 4, scope: !2040, file: !1954, line: 118, type: !46)
!2047 = !DILocalVariable(name: "s25", arg: 5, scope: !2040, file: !1954, line: 118, type: !46)
!2048 = !DILocalVariable(name: "s26", arg: 6, scope: !2040, file: !1954, line: 118, type: !46)
!2049 = !DILocalVariable(name: "s27", arg: 7, scope: !2040, file: !1954, line: 118, type: !46)
!2050 = !DILocalVariable(name: "s28", arg: 8, scope: !2040, file: !1954, line: 118, type: !46)
!2051 = !DILocation(line: 118, column: 25, scope: !2040, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 139, column: 16, scope: !2053, inlinedAt: !2026)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !1954, line: 136, column: 11)
!2054 = distinct !DILexicalBlock(scope: !2038, file: !1954, line: 135, column: 5)
!2055 = !DILocation(line: 118, column: 41, scope: !2040, inlinedAt: !2052)
!2056 = !DILocation(line: 118, column: 50, scope: !2040, inlinedAt: !2052)
!2057 = !DILocation(line: 118, column: 60, scope: !2040, inlinedAt: !2052)
!2058 = !DILocation(line: 118, column: 70, scope: !2040, inlinedAt: !2052)
!2059 = !DILocation(line: 118, column: 80, scope: !2040, inlinedAt: !2052)
!2060 = !DILocation(line: 118, column: 90, scope: !2040, inlinedAt: !2052)
!2061 = !DILocation(line: 118, column: 100, scope: !2040, inlinedAt: !2052)
!2062 = !DILocation(line: 120, column: 7, scope: !2063, inlinedAt: !2052)
!2063 = distinct !DILexicalBlock(scope: !2040, file: !1954, line: 120, column: 7)
!2064 = !DILocation(line: 120, column: 7, scope: !2040, inlinedAt: !2052)
!2065 = !DILocalVariable(name: "s1", arg: 1, scope: !2066, file: !1954, line: 104, type: !76)
!2066 = distinct !DISubprogram(name: "strcaseeq4", scope: !1954, file: !1954, line: 104, type: !2067, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2069)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!48, !76, !76, !46, !46, !46, !46, !46}
!2069 = !{!2065, !2070, !2071, !2072, !2073, !2074, !2075}
!2070 = !DILocalVariable(name: "s2", arg: 2, scope: !2066, file: !1954, line: 104, type: !76)
!2071 = !DILocalVariable(name: "s24", arg: 3, scope: !2066, file: !1954, line: 104, type: !46)
!2072 = !DILocalVariable(name: "s25", arg: 4, scope: !2066, file: !1954, line: 104, type: !46)
!2073 = !DILocalVariable(name: "s26", arg: 5, scope: !2066, file: !1954, line: 104, type: !46)
!2074 = !DILocalVariable(name: "s27", arg: 6, scope: !2066, file: !1954, line: 104, type: !46)
!2075 = !DILocalVariable(name: "s28", arg: 7, scope: !2066, file: !1954, line: 104, type: !46)
!2076 = !DILocation(line: 104, column: 25, scope: !2066, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 125, column: 16, scope: !2078, inlinedAt: !2052)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !1954, line: 122, column: 11)
!2079 = distinct !DILexicalBlock(scope: !2063, file: !1954, line: 121, column: 5)
!2080 = !DILocation(line: 104, column: 41, scope: !2066, inlinedAt: !2077)
!2081 = !DILocation(line: 104, column: 50, scope: !2066, inlinedAt: !2077)
!2082 = !DILocation(line: 104, column: 60, scope: !2066, inlinedAt: !2077)
!2083 = !DILocation(line: 104, column: 70, scope: !2066, inlinedAt: !2077)
!2084 = !DILocation(line: 104, column: 80, scope: !2066, inlinedAt: !2077)
!2085 = !DILocation(line: 104, column: 90, scope: !2066, inlinedAt: !2077)
!2086 = !DILocation(line: 106, column: 7, scope: !2087, inlinedAt: !2077)
!2087 = distinct !DILexicalBlock(scope: !2066, file: !1954, line: 106, column: 7)
!2088 = !DILocation(line: 106, column: 7, scope: !2066, inlinedAt: !2077)
!2089 = !DILocalVariable(name: "s1", arg: 1, scope: !2090, file: !1954, line: 90, type: !76)
!2090 = distinct !DISubprogram(name: "strcaseeq5", scope: !1954, file: !1954, line: 90, type: !2091, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2093)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!48, !76, !76, !46, !46, !46, !46}
!2093 = !{!2089, !2094, !2095, !2096, !2097, !2098}
!2094 = !DILocalVariable(name: "s2", arg: 2, scope: !2090, file: !1954, line: 90, type: !76)
!2095 = !DILocalVariable(name: "s25", arg: 3, scope: !2090, file: !1954, line: 90, type: !46)
!2096 = !DILocalVariable(name: "s26", arg: 4, scope: !2090, file: !1954, line: 90, type: !46)
!2097 = !DILocalVariable(name: "s27", arg: 5, scope: !2090, file: !1954, line: 90, type: !46)
!2098 = !DILocalVariable(name: "s28", arg: 6, scope: !2090, file: !1954, line: 90, type: !46)
!2099 = !DILocation(line: 90, column: 25, scope: !2090, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 111, column: 16, scope: !2101, inlinedAt: !2077)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !1954, line: 108, column: 11)
!2102 = distinct !DILexicalBlock(scope: !2087, file: !1954, line: 107, column: 5)
!2103 = !DILocation(line: 90, column: 41, scope: !2090, inlinedAt: !2100)
!2104 = !DILocation(line: 90, column: 50, scope: !2090, inlinedAt: !2100)
!2105 = !DILocation(line: 90, column: 60, scope: !2090, inlinedAt: !2100)
!2106 = !DILocation(line: 90, column: 70, scope: !2090, inlinedAt: !2100)
!2107 = !DILocation(line: 90, column: 80, scope: !2090, inlinedAt: !2100)
!2108 = !DILocation(line: 92, column: 7, scope: !2109, inlinedAt: !2100)
!2109 = distinct !DILexicalBlock(scope: !2090, file: !1954, line: 92, column: 7)
!2110 = !DILocation(line: 92, column: 7, scope: !2090, inlinedAt: !2100)
!2111 = !DILocation(line: 235, column: 12, scope: !1970)
!2112 = !DILocation(line: 235, column: 21, scope: !1970)
!2113 = !DILocation(line: 235, column: 5, scope: !1970)
!2114 = !DILocation(line: 146, column: 25, scope: !1984, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 167, column: 16, scope: !1999, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 236, column: 7, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !1935, file: !207, line: 236, column: 7)
!2118 = !DILocation(line: 146, column: 41, scope: !1984, inlinedAt: !2115)
!2119 = !DILocation(line: 146, column: 50, scope: !1984, inlinedAt: !2115)
!2120 = !DILocation(line: 146, column: 60, scope: !1984, inlinedAt: !2115)
!2121 = !DILocation(line: 146, column: 70, scope: !1984, inlinedAt: !2115)
!2122 = !DILocation(line: 146, column: 80, scope: !1984, inlinedAt: !2115)
!2123 = !DILocation(line: 146, column: 90, scope: !1984, inlinedAt: !2115)
!2124 = !DILocation(line: 146, column: 100, scope: !1984, inlinedAt: !2115)
!2125 = !DILocation(line: 146, column: 110, scope: !1984, inlinedAt: !2115)
!2126 = !DILocation(line: 146, column: 120, scope: !1984, inlinedAt: !2115)
!2127 = !DILocation(line: 148, column: 7, scope: !2011, inlinedAt: !2115)
!2128 = !DILocation(line: 132, column: 25, scope: !2013, inlinedAt: !2129)
!2129 = distinct !DILocation(line: 153, column: 16, scope: !2027, inlinedAt: !2115)
!2130 = !DILocation(line: 132, column: 41, scope: !2013, inlinedAt: !2129)
!2131 = !DILocation(line: 132, column: 50, scope: !2013, inlinedAt: !2129)
!2132 = !DILocation(line: 132, column: 60, scope: !2013, inlinedAt: !2129)
!2133 = !DILocation(line: 132, column: 70, scope: !2013, inlinedAt: !2129)
!2134 = !DILocation(line: 132, column: 80, scope: !2013, inlinedAt: !2129)
!2135 = !DILocation(line: 132, column: 90, scope: !2013, inlinedAt: !2129)
!2136 = !DILocation(line: 132, column: 100, scope: !2013, inlinedAt: !2129)
!2137 = !DILocation(line: 132, column: 110, scope: !2013, inlinedAt: !2129)
!2138 = !DILocation(line: 134, column: 7, scope: !2038, inlinedAt: !2129)
!2139 = !DILocation(line: 134, column: 7, scope: !2013, inlinedAt: !2129)
!2140 = !DILocation(line: 118, column: 25, scope: !2040, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 139, column: 16, scope: !2053, inlinedAt: !2129)
!2142 = !DILocation(line: 118, column: 41, scope: !2040, inlinedAt: !2141)
!2143 = !DILocation(line: 118, column: 50, scope: !2040, inlinedAt: !2141)
!2144 = !DILocation(line: 118, column: 60, scope: !2040, inlinedAt: !2141)
!2145 = !DILocation(line: 118, column: 70, scope: !2040, inlinedAt: !2141)
!2146 = !DILocation(line: 118, column: 80, scope: !2040, inlinedAt: !2141)
!2147 = !DILocation(line: 118, column: 90, scope: !2040, inlinedAt: !2141)
!2148 = !DILocation(line: 118, column: 100, scope: !2040, inlinedAt: !2141)
!2149 = !DILocation(line: 120, column: 7, scope: !2063, inlinedAt: !2141)
!2150 = !DILocation(line: 120, column: 7, scope: !2040, inlinedAt: !2141)
!2151 = !DILocation(line: 104, column: 25, scope: !2066, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 125, column: 16, scope: !2078, inlinedAt: !2141)
!2153 = !DILocation(line: 104, column: 41, scope: !2066, inlinedAt: !2152)
!2154 = !DILocation(line: 104, column: 50, scope: !2066, inlinedAt: !2152)
!2155 = !DILocation(line: 104, column: 60, scope: !2066, inlinedAt: !2152)
!2156 = !DILocation(line: 104, column: 70, scope: !2066, inlinedAt: !2152)
!2157 = !DILocation(line: 104, column: 80, scope: !2066, inlinedAt: !2152)
!2158 = !DILocation(line: 104, column: 90, scope: !2066, inlinedAt: !2152)
!2159 = !DILocation(line: 106, column: 7, scope: !2087, inlinedAt: !2152)
!2160 = !DILocation(line: 106, column: 7, scope: !2066, inlinedAt: !2152)
!2161 = !DILocation(line: 90, column: 25, scope: !2090, inlinedAt: !2162)
!2162 = distinct !DILocation(line: 111, column: 16, scope: !2101, inlinedAt: !2152)
!2163 = !DILocation(line: 90, column: 41, scope: !2090, inlinedAt: !2162)
!2164 = !DILocation(line: 90, column: 50, scope: !2090, inlinedAt: !2162)
!2165 = !DILocation(line: 90, column: 60, scope: !2090, inlinedAt: !2162)
!2166 = !DILocation(line: 90, column: 70, scope: !2090, inlinedAt: !2162)
!2167 = !DILocation(line: 90, column: 80, scope: !2090, inlinedAt: !2162)
!2168 = !DILocation(line: 92, column: 7, scope: !2109, inlinedAt: !2162)
!2169 = !DILocation(line: 92, column: 7, scope: !2090, inlinedAt: !2162)
!2170 = !DILocalVariable(name: "s1", arg: 1, scope: !2171, file: !1954, line: 76, type: !76)
!2171 = distinct !DISubprogram(name: "strcaseeq6", scope: !1954, file: !1954, line: 76, type: !2172, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2174)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!48, !76, !76, !46, !46, !46}
!2174 = !{!2170, !2175, !2176, !2177, !2178}
!2175 = !DILocalVariable(name: "s2", arg: 2, scope: !2171, file: !1954, line: 76, type: !76)
!2176 = !DILocalVariable(name: "s26", arg: 3, scope: !2171, file: !1954, line: 76, type: !46)
!2177 = !DILocalVariable(name: "s27", arg: 4, scope: !2171, file: !1954, line: 76, type: !46)
!2178 = !DILocalVariable(name: "s28", arg: 5, scope: !2171, file: !1954, line: 76, type: !46)
!2179 = !DILocation(line: 76, column: 25, scope: !2171, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 97, column: 16, scope: !2181, inlinedAt: !2162)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !1954, line: 94, column: 11)
!2182 = distinct !DILexicalBlock(scope: !2109, file: !1954, line: 93, column: 5)
!2183 = !DILocation(line: 76, column: 41, scope: !2171, inlinedAt: !2180)
!2184 = !DILocation(line: 76, column: 50, scope: !2171, inlinedAt: !2180)
!2185 = !DILocation(line: 76, column: 60, scope: !2171, inlinedAt: !2180)
!2186 = !DILocation(line: 76, column: 70, scope: !2171, inlinedAt: !2180)
!2187 = !DILocation(line: 78, column: 7, scope: !2188, inlinedAt: !2180)
!2188 = distinct !DILexicalBlock(scope: !2171, file: !1954, line: 78, column: 7)
!2189 = !DILocation(line: 78, column: 7, scope: !2171, inlinedAt: !2180)
!2190 = !DILocalVariable(name: "s1", arg: 1, scope: !2191, file: !1954, line: 62, type: !76)
!2191 = distinct !DISubprogram(name: "strcaseeq7", scope: !1954, file: !1954, line: 62, type: !2192, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2194)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!48, !76, !76, !46, !46}
!2194 = !{!2190, !2195, !2196, !2197}
!2195 = !DILocalVariable(name: "s2", arg: 2, scope: !2191, file: !1954, line: 62, type: !76)
!2196 = !DILocalVariable(name: "s27", arg: 3, scope: !2191, file: !1954, line: 62, type: !46)
!2197 = !DILocalVariable(name: "s28", arg: 4, scope: !2191, file: !1954, line: 62, type: !46)
!2198 = !DILocation(line: 62, column: 25, scope: !2191, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 83, column: 16, scope: !2200, inlinedAt: !2180)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !1954, line: 80, column: 11)
!2201 = distinct !DILexicalBlock(scope: !2188, file: !1954, line: 79, column: 5)
!2202 = !DILocation(line: 62, column: 41, scope: !2191, inlinedAt: !2199)
!2203 = !DILocation(line: 62, column: 50, scope: !2191, inlinedAt: !2199)
!2204 = !DILocation(line: 62, column: 60, scope: !2191, inlinedAt: !2199)
!2205 = !DILocation(line: 64, column: 7, scope: !2206, inlinedAt: !2199)
!2206 = distinct !DILexicalBlock(scope: !2191, file: !1954, line: 64, column: 7)
!2207 = !DILocation(line: 236, column: 7, scope: !1935)
!2208 = !DILocation(line: 237, column: 12, scope: !2117)
!2209 = !DILocation(line: 237, column: 21, scope: !2117)
!2210 = !DILocation(line: 237, column: 5, scope: !2117)
!2211 = !DILocation(line: 239, column: 13, scope: !1935)
!2212 = !DILocation(line: 239, column: 11, scope: !1935)
!2213 = !DILocation(line: 239, column: 3, scope: !1935)
!2214 = !DILocation(line: 0, scope: !1935)
!2215 = !DILocation(line: 240, column: 1, scope: !1935)
!2216 = distinct !DISubprogram(name: "quotearg_alloc", scope: !207, file: !207, line: 799, type: !2217, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2219)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!45, !76, !50, !1256}
!2219 = !{!2220, !2221, !2222}
!2220 = !DILocalVariable(name: "arg", arg: 1, scope: !2216, file: !207, line: 799, type: !76)
!2221 = !DILocalVariable(name: "argsize", arg: 2, scope: !2216, file: !207, line: 799, type: !50)
!2222 = !DILocalVariable(name: "o", arg: 3, scope: !2216, file: !207, line: 800, type: !1256)
!2223 = !DILocation(line: 799, column: 29, scope: !2216)
!2224 = !DILocation(line: 799, column: 41, scope: !2216)
!2225 = !DILocation(line: 800, column: 47, scope: !2216)
!2226 = !DILocalVariable(name: "arg", arg: 1, scope: !2227, file: !207, line: 812, type: !76)
!2227 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !207, file: !207, line: 812, type: !2228, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2230)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!45, !76, !50, !274, !1256}
!2230 = !{!2226, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238}
!2231 = !DILocalVariable(name: "argsize", arg: 2, scope: !2227, file: !207, line: 812, type: !50)
!2232 = !DILocalVariable(name: "size", arg: 3, scope: !2227, file: !207, line: 812, type: !274)
!2233 = !DILocalVariable(name: "o", arg: 4, scope: !2227, file: !207, line: 813, type: !1256)
!2234 = !DILocalVariable(name: "p", scope: !2227, file: !207, line: 815, type: !1256)
!2235 = !DILocalVariable(name: "e", scope: !2227, file: !207, line: 816, type: !48)
!2236 = !DILocalVariable(name: "flags", scope: !2227, file: !207, line: 818, type: !48)
!2237 = !DILocalVariable(name: "bufsize", scope: !2227, file: !207, line: 819, type: !50)
!2238 = !DILocalVariable(name: "buf", scope: !2227, file: !207, line: 823, type: !45)
!2239 = !DILocation(line: 812, column: 33, scope: !2227, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 802, column: 10, scope: !2216)
!2241 = !DILocation(line: 812, column: 45, scope: !2227, inlinedAt: !2240)
!2242 = !DILocation(line: 812, column: 62, scope: !2227, inlinedAt: !2240)
!2243 = !DILocation(line: 813, column: 51, scope: !2227, inlinedAt: !2240)
!2244 = !DILocation(line: 815, column: 37, scope: !2227, inlinedAt: !2240)
!2245 = !DILocation(line: 815, column: 33, scope: !2227, inlinedAt: !2240)
!2246 = !DILocation(line: 816, column: 11, scope: !2227, inlinedAt: !2240)
!2247 = !DILocation(line: 816, column: 7, scope: !2227, inlinedAt: !2240)
!2248 = !DILocation(line: 818, column: 18, scope: !2227, inlinedAt: !2240)
!2249 = !DILocation(line: 818, column: 24, scope: !2227, inlinedAt: !2240)
!2250 = !DILocation(line: 818, column: 7, scope: !2227, inlinedAt: !2240)
!2251 = !DILocation(line: 819, column: 69, scope: !2227, inlinedAt: !2240)
!2252 = !DILocation(line: 820, column: 53, scope: !2227, inlinedAt: !2240)
!2253 = !DILocation(line: 821, column: 49, scope: !2227, inlinedAt: !2240)
!2254 = !DILocation(line: 822, column: 49, scope: !2227, inlinedAt: !2240)
!2255 = !DILocation(line: 819, column: 20, scope: !2227, inlinedAt: !2240)
!2256 = !DILocation(line: 822, column: 62, scope: !2227, inlinedAt: !2240)
!2257 = !DILocation(line: 819, column: 10, scope: !2227, inlinedAt: !2240)
!2258 = !DILocalVariable(name: "n", arg: 1, scope: !2259, file: !270, line: 216, type: !50)
!2259 = distinct !DISubprogram(name: "xcharalloc", scope: !270, file: !270, line: 216, type: !2260, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2262)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!45, !50}
!2262 = !{!2258}
!2263 = !DILocation(line: 216, column: 20, scope: !2259, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 823, column: 15, scope: !2227, inlinedAt: !2240)
!2265 = !DILocation(line: 218, column: 10, scope: !2259, inlinedAt: !2264)
!2266 = !DILocation(line: 823, column: 9, scope: !2227, inlinedAt: !2240)
!2267 = !DILocation(line: 824, column: 60, scope: !2227, inlinedAt: !2240)
!2268 = !DILocation(line: 826, column: 32, scope: !2227, inlinedAt: !2240)
!2269 = !DILocation(line: 826, column: 47, scope: !2227, inlinedAt: !2240)
!2270 = !DILocation(line: 824, column: 3, scope: !2227, inlinedAt: !2240)
!2271 = !DILocation(line: 827, column: 9, scope: !2227, inlinedAt: !2240)
!2272 = !DILocation(line: 802, column: 3, scope: !2216)
!2273 = !DILocation(line: 812, column: 33, scope: !2227)
!2274 = !DILocation(line: 812, column: 45, scope: !2227)
!2275 = !DILocation(line: 812, column: 62, scope: !2227)
!2276 = !DILocation(line: 813, column: 51, scope: !2227)
!2277 = !DILocation(line: 815, column: 37, scope: !2227)
!2278 = !DILocation(line: 815, column: 33, scope: !2227)
!2279 = !DILocation(line: 816, column: 11, scope: !2227)
!2280 = !DILocation(line: 816, column: 7, scope: !2227)
!2281 = !DILocation(line: 818, column: 18, scope: !2227)
!2282 = !DILocation(line: 818, column: 27, scope: !2227)
!2283 = !DILocation(line: 818, column: 24, scope: !2227)
!2284 = !DILocation(line: 818, column: 7, scope: !2227)
!2285 = !DILocation(line: 819, column: 69, scope: !2227)
!2286 = !DILocation(line: 820, column: 53, scope: !2227)
!2287 = !DILocation(line: 821, column: 49, scope: !2227)
!2288 = !DILocation(line: 822, column: 49, scope: !2227)
!2289 = !DILocation(line: 819, column: 20, scope: !2227)
!2290 = !DILocation(line: 822, column: 62, scope: !2227)
!2291 = !DILocation(line: 819, column: 10, scope: !2227)
!2292 = !DILocation(line: 216, column: 20, scope: !2259, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 823, column: 15, scope: !2227)
!2294 = !DILocation(line: 218, column: 10, scope: !2259, inlinedAt: !2293)
!2295 = !DILocation(line: 823, column: 9, scope: !2227)
!2296 = !DILocation(line: 824, column: 60, scope: !2227)
!2297 = !DILocation(line: 826, column: 32, scope: !2227)
!2298 = !DILocation(line: 826, column: 47, scope: !2227)
!2299 = !DILocation(line: 824, column: 3, scope: !2227)
!2300 = !DILocation(line: 827, column: 9, scope: !2227)
!2301 = !DILocation(line: 828, column: 7, scope: !2227)
!2302 = !DILocation(line: 829, column: 11, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2227, file: !207, line: 828, column: 7)
!2304 = !DILocation(line: 829, column: 5, scope: !2303)
!2305 = !DILocation(line: 830, column: 3, scope: !2227)
!2306 = distinct !DISubprogram(name: "quotearg_free", scope: !207, file: !207, line: 848, type: !751, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2307)
!2307 = !{!2308, !2309}
!2308 = !DILocalVariable(name: "sv", scope: !2306, file: !207, line: 850, type: !233)
!2309 = !DILocalVariable(name: "i", scope: !2306, file: !207, line: 851, type: !48)
!2310 = !DILocation(line: 850, column: 24, scope: !2306)
!2311 = !DILocation(line: 850, column: 19, scope: !2306)
!2312 = !DILocation(line: 851, column: 7, scope: !2306)
!2313 = !DILocation(line: 852, column: 19, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !207, line: 852, column: 3)
!2315 = distinct !DILexicalBlock(scope: !2306, file: !207, line: 852, column: 3)
!2316 = !DILocation(line: 852, column: 17, scope: !2314)
!2317 = !DILocation(line: 852, column: 3, scope: !2315)
!2318 = !DILocation(line: 853, column: 17, scope: !2314)
!2319 = !{!2320, !744, i64 8}
!2320 = !{!"slotvec", !919, i64 0, !744, i64 8}
!2321 = !DILocation(line: 853, column: 5, scope: !2314)
!2322 = !DILocation(line: 852, column: 28, scope: !2314)
!2323 = distinct !{!2323, !2317, !2324}
!2324 = !DILocation(line: 853, column: 20, scope: !2315)
!2325 = !DILocation(line: 854, column: 13, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2306, file: !207, line: 854, column: 7)
!2327 = !DILocation(line: 854, column: 17, scope: !2326)
!2328 = !DILocation(line: 854, column: 7, scope: !2306)
!2329 = !DILocation(line: 856, column: 7, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2326, file: !207, line: 855, column: 5)
!2331 = !DILocation(line: 857, column: 21, scope: !2330)
!2332 = !{!2320, !919, i64 0}
!2333 = !DILocation(line: 858, column: 20, scope: !2330)
!2334 = !DILocation(line: 859, column: 5, scope: !2330)
!2335 = !DILocation(line: 860, column: 10, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2306, file: !207, line: 860, column: 7)
!2337 = !DILocation(line: 860, column: 7, scope: !2306)
!2338 = !DILocation(line: 862, column: 13, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2336, file: !207, line: 861, column: 5)
!2340 = !DILocation(line: 862, column: 7, scope: !2339)
!2341 = !DILocation(line: 863, column: 15, scope: !2339)
!2342 = !DILocation(line: 864, column: 5, scope: !2339)
!2343 = !DILocation(line: 865, column: 10, scope: !2306)
!2344 = !DILocation(line: 866, column: 1, scope: !2306)
!2345 = distinct !DISubprogram(name: "quotearg_n", scope: !207, file: !207, line: 931, type: !2346, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2348)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!45, !48, !76}
!2348 = !{!2349, !2350}
!2349 = !DILocalVariable(name: "n", arg: 1, scope: !2345, file: !207, line: 931, type: !48)
!2350 = !DILocalVariable(name: "arg", arg: 2, scope: !2345, file: !207, line: 931, type: !76)
!2351 = !DILocation(line: 931, column: 17, scope: !2345)
!2352 = !DILocation(line: 931, column: 32, scope: !2345)
!2353 = !DILocation(line: 933, column: 10, scope: !2345)
!2354 = !DILocation(line: 933, column: 3, scope: !2345)
!2355 = distinct !DISubprogram(name: "quotearg_n_options", scope: !207, file: !207, line: 877, type: !2356, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2358)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!45, !48, !76, !50, !1256}
!2358 = !{!2359, !2360, !2361, !2362, !2363, !2364, !2365, !2368, !2369, !2371, !2372, !2373}
!2359 = !DILocalVariable(name: "n", arg: 1, scope: !2355, file: !207, line: 877, type: !48)
!2360 = !DILocalVariable(name: "arg", arg: 2, scope: !2355, file: !207, line: 877, type: !76)
!2361 = !DILocalVariable(name: "argsize", arg: 3, scope: !2355, file: !207, line: 877, type: !50)
!2362 = !DILocalVariable(name: "options", arg: 4, scope: !2355, file: !207, line: 878, type: !1256)
!2363 = !DILocalVariable(name: "e", scope: !2355, file: !207, line: 880, type: !48)
!2364 = !DILocalVariable(name: "sv", scope: !2355, file: !207, line: 882, type: !233)
!2365 = !DILocalVariable(name: "preallocated", scope: !2366, file: !207, line: 889, type: !58)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !207, line: 888, column: 5)
!2367 = distinct !DILexicalBlock(scope: !2355, file: !207, line: 887, column: 7)
!2368 = !DILocalVariable(name: "nmax", scope: !2366, file: !207, line: 890, type: !48)
!2369 = !DILocalVariable(name: "size", scope: !2370, file: !207, line: 903, type: !50)
!2370 = distinct !DILexicalBlock(scope: !2355, file: !207, line: 902, column: 3)
!2371 = !DILocalVariable(name: "val", scope: !2370, file: !207, line: 904, type: !45)
!2372 = !DILocalVariable(name: "flags", scope: !2370, file: !207, line: 906, type: !48)
!2373 = !DILocalVariable(name: "qsize", scope: !2370, file: !207, line: 907, type: !50)
!2374 = !DILocation(line: 877, column: 25, scope: !2355)
!2375 = !DILocation(line: 877, column: 40, scope: !2355)
!2376 = !DILocation(line: 877, column: 52, scope: !2355)
!2377 = !DILocation(line: 878, column: 51, scope: !2355)
!2378 = !DILocation(line: 880, column: 11, scope: !2355)
!2379 = !DILocation(line: 880, column: 7, scope: !2355)
!2380 = !DILocation(line: 882, column: 24, scope: !2355)
!2381 = !DILocation(line: 882, column: 19, scope: !2355)
!2382 = !DILocation(line: 884, column: 9, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2355, file: !207, line: 884, column: 7)
!2384 = !DILocation(line: 884, column: 7, scope: !2355)
!2385 = !DILocation(line: 885, column: 5, scope: !2383)
!2386 = !DILocation(line: 887, column: 7, scope: !2367)
!2387 = !DILocation(line: 887, column: 14, scope: !2367)
!2388 = !DILocation(line: 887, column: 7, scope: !2355)
!2389 = !DILocation(line: 889, column: 31, scope: !2366)
!2390 = !DILocation(line: 890, column: 11, scope: !2366)
!2391 = !DILocation(line: 892, column: 16, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2366, file: !207, line: 892, column: 11)
!2393 = !DILocation(line: 892, column: 11, scope: !2366)
!2394 = !DILocation(line: 893, column: 9, scope: !2392)
!2395 = !DILocation(line: 895, column: 32, scope: !2366)
!2396 = !DILocation(line: 895, column: 61, scope: !2366)
!2397 = !DILocation(line: 895, column: 58, scope: !2366)
!2398 = !DILocation(line: 895, column: 66, scope: !2366)
!2399 = !DILocation(line: 895, column: 22, scope: !2366)
!2400 = !DILocation(line: 895, column: 15, scope: !2366)
!2401 = !DILocation(line: 896, column: 11, scope: !2366)
!2402 = !DILocation(line: 897, column: 15, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2366, file: !207, line: 896, column: 11)
!2404 = !{i64 0, i64 8, !928, i64 8, i64 8, !743}
!2405 = !DILocation(line: 897, column: 9, scope: !2403)
!2406 = !DILocation(line: 898, column: 20, scope: !2366)
!2407 = !DILocation(line: 898, column: 18, scope: !2366)
!2408 = !DILocation(line: 898, column: 7, scope: !2366)
!2409 = !DILocation(line: 898, column: 38, scope: !2366)
!2410 = !DILocation(line: 898, column: 31, scope: !2366)
!2411 = !DILocation(line: 898, column: 48, scope: !2366)
!2412 = !DILocation(line: 899, column: 14, scope: !2366)
!2413 = !DILocation(line: 900, column: 5, scope: !2366)
!2414 = !DILocation(line: 0, scope: !2355)
!2415 = !DILocation(line: 903, column: 19, scope: !2370)
!2416 = !DILocation(line: 903, column: 25, scope: !2370)
!2417 = !DILocation(line: 903, column: 12, scope: !2370)
!2418 = !DILocation(line: 904, column: 23, scope: !2370)
!2419 = !DILocation(line: 904, column: 11, scope: !2370)
!2420 = !DILocation(line: 906, column: 26, scope: !2370)
!2421 = !DILocation(line: 906, column: 32, scope: !2370)
!2422 = !DILocation(line: 906, column: 9, scope: !2370)
!2423 = !DILocation(line: 908, column: 55, scope: !2370)
!2424 = !DILocation(line: 909, column: 46, scope: !2370)
!2425 = !DILocation(line: 910, column: 55, scope: !2370)
!2426 = !DILocation(line: 911, column: 55, scope: !2370)
!2427 = !DILocation(line: 907, column: 20, scope: !2370)
!2428 = !DILocation(line: 907, column: 12, scope: !2370)
!2429 = !DILocation(line: 913, column: 14, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2370, file: !207, line: 913, column: 9)
!2431 = !DILocation(line: 913, column: 9, scope: !2370)
!2432 = !DILocation(line: 915, column: 35, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2430, file: !207, line: 914, column: 7)
!2434 = !DILocation(line: 915, column: 20, scope: !2433)
!2435 = !DILocation(line: 916, column: 17, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2433, file: !207, line: 916, column: 13)
!2437 = !DILocation(line: 916, column: 13, scope: !2433)
!2438 = !DILocation(line: 917, column: 11, scope: !2436)
!2439 = !DILocation(line: 216, column: 20, scope: !2259, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 918, column: 27, scope: !2433)
!2441 = !DILocation(line: 218, column: 10, scope: !2259, inlinedAt: !2440)
!2442 = !DILocation(line: 918, column: 19, scope: !2433)
!2443 = !DILocation(line: 919, column: 69, scope: !2433)
!2444 = !DILocation(line: 921, column: 44, scope: !2433)
!2445 = !DILocation(line: 922, column: 44, scope: !2433)
!2446 = !DILocation(line: 919, column: 9, scope: !2433)
!2447 = !DILocation(line: 923, column: 7, scope: !2433)
!2448 = !DILocation(line: 0, scope: !2370)
!2449 = !DILocation(line: 925, column: 11, scope: !2370)
!2450 = !DILocation(line: 926, column: 5, scope: !2370)
!2451 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !207, file: !207, line: 937, type: !2452, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!45, !48, !76, !50}
!2454 = !{!2455, !2456, !2457}
!2455 = !DILocalVariable(name: "n", arg: 1, scope: !2451, file: !207, line: 937, type: !48)
!2456 = !DILocalVariable(name: "arg", arg: 2, scope: !2451, file: !207, line: 937, type: !76)
!2457 = !DILocalVariable(name: "argsize", arg: 3, scope: !2451, file: !207, line: 937, type: !50)
!2458 = !DILocation(line: 937, column: 21, scope: !2451)
!2459 = !DILocation(line: 937, column: 36, scope: !2451)
!2460 = !DILocation(line: 937, column: 48, scope: !2451)
!2461 = !DILocation(line: 939, column: 10, scope: !2451)
!2462 = !DILocation(line: 939, column: 3, scope: !2451)
!2463 = distinct !DISubprogram(name: "quotearg", scope: !207, file: !207, line: 943, type: !2464, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2466)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!45, !76}
!2466 = !{!2467}
!2467 = !DILocalVariable(name: "arg", arg: 1, scope: !2463, file: !207, line: 943, type: !76)
!2468 = !DILocation(line: 943, column: 23, scope: !2463)
!2469 = !DILocation(line: 931, column: 17, scope: !2345, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 945, column: 10, scope: !2463)
!2471 = !DILocation(line: 931, column: 32, scope: !2345, inlinedAt: !2470)
!2472 = !DILocation(line: 933, column: 10, scope: !2345, inlinedAt: !2470)
!2473 = !DILocation(line: 945, column: 3, scope: !2463)
!2474 = distinct !DISubprogram(name: "quotearg_mem", scope: !207, file: !207, line: 949, type: !2475, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2477)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!45, !76, !50}
!2477 = !{!2478, !2479}
!2478 = !DILocalVariable(name: "arg", arg: 1, scope: !2474, file: !207, line: 949, type: !76)
!2479 = !DILocalVariable(name: "argsize", arg: 2, scope: !2474, file: !207, line: 949, type: !50)
!2480 = !DILocation(line: 949, column: 27, scope: !2474)
!2481 = !DILocation(line: 949, column: 39, scope: !2474)
!2482 = !DILocation(line: 937, column: 21, scope: !2451, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 951, column: 10, scope: !2474)
!2484 = !DILocation(line: 937, column: 36, scope: !2451, inlinedAt: !2483)
!2485 = !DILocation(line: 937, column: 48, scope: !2451, inlinedAt: !2483)
!2486 = !DILocation(line: 939, column: 10, scope: !2451, inlinedAt: !2483)
!2487 = !DILocation(line: 951, column: 3, scope: !2474)
!2488 = distinct !DISubprogram(name: "quotearg_n_style", scope: !207, file: !207, line: 955, type: !2489, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!45, !48, !5, !76}
!2491 = !{!2492, !2493, !2494, !2495}
!2492 = !DILocalVariable(name: "n", arg: 1, scope: !2488, file: !207, line: 955, type: !48)
!2493 = !DILocalVariable(name: "s", arg: 2, scope: !2488, file: !207, line: 955, type: !5)
!2494 = !DILocalVariable(name: "arg", arg: 3, scope: !2488, file: !207, line: 955, type: !76)
!2495 = !DILocalVariable(name: "o", scope: !2488, file: !207, line: 957, type: !1257)
!2496 = !DILocation(line: 955, column: 23, scope: !2488)
!2497 = !DILocation(line: 955, column: 45, scope: !2488)
!2498 = !DILocation(line: 955, column: 60, scope: !2488)
!2499 = !DILocation(line: 957, column: 3, scope: !2488)
!2500 = !DILocation(line: 957, column: 32, scope: !2488)
!2501 = !DILocalVariable(name: "style", arg: 1, scope: !2502, file: !207, line: 193, type: !5)
!2502 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !207, file: !207, line: 193, type: !2503, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2505)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!214, !5}
!2505 = !{!2501, !2506}
!2506 = !DILocalVariable(name: "o", scope: !2502, file: !207, line: 195, type: !214)
!2507 = !DILocation(line: 193, column: 48, scope: !2502, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 957, column: 36, scope: !2488)
!2509 = !DILocation(line: 195, column: 26, scope: !2502, inlinedAt: !2508)
!2510 = !{!2511}
!2511 = distinct !{!2511, !2512, !"quoting_options_from_style: argument 0"}
!2512 = distinct !{!2512, !"quoting_options_from_style"}
!2513 = !DILocation(line: 196, column: 13, scope: !2514, inlinedAt: !2508)
!2514 = distinct !DILexicalBlock(scope: !2502, file: !207, line: 196, column: 7)
!2515 = !DILocation(line: 196, column: 7, scope: !2502, inlinedAt: !2508)
!2516 = !DILocation(line: 197, column: 5, scope: !2514, inlinedAt: !2508)
!2517 = !DILocation(line: 198, column: 5, scope: !2502, inlinedAt: !2508)
!2518 = !DILocation(line: 198, column: 11, scope: !2502, inlinedAt: !2508)
!2519 = !DILocation(line: 958, column: 10, scope: !2488)
!2520 = !DILocation(line: 959, column: 1, scope: !2488)
!2521 = !DILocation(line: 958, column: 3, scope: !2488)
!2522 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !207, file: !207, line: 962, type: !2523, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2525)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!45, !48, !5, !76, !50}
!2525 = !{!2526, !2527, !2528, !2529, !2530}
!2526 = !DILocalVariable(name: "n", arg: 1, scope: !2522, file: !207, line: 962, type: !48)
!2527 = !DILocalVariable(name: "s", arg: 2, scope: !2522, file: !207, line: 962, type: !5)
!2528 = !DILocalVariable(name: "arg", arg: 3, scope: !2522, file: !207, line: 963, type: !76)
!2529 = !DILocalVariable(name: "argsize", arg: 4, scope: !2522, file: !207, line: 963, type: !50)
!2530 = !DILocalVariable(name: "o", scope: !2522, file: !207, line: 965, type: !1257)
!2531 = !DILocation(line: 962, column: 27, scope: !2522)
!2532 = !DILocation(line: 962, column: 49, scope: !2522)
!2533 = !DILocation(line: 963, column: 35, scope: !2522)
!2534 = !DILocation(line: 963, column: 47, scope: !2522)
!2535 = !DILocation(line: 965, column: 3, scope: !2522)
!2536 = !DILocation(line: 965, column: 32, scope: !2522)
!2537 = !DILocation(line: 193, column: 48, scope: !2502, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 965, column: 36, scope: !2522)
!2539 = !DILocation(line: 195, column: 26, scope: !2502, inlinedAt: !2538)
!2540 = !{!2541}
!2541 = distinct !{!2541, !2542, !"quoting_options_from_style: argument 0"}
!2542 = distinct !{!2542, !"quoting_options_from_style"}
!2543 = !DILocation(line: 196, column: 13, scope: !2514, inlinedAt: !2538)
!2544 = !DILocation(line: 196, column: 7, scope: !2502, inlinedAt: !2538)
!2545 = !DILocation(line: 197, column: 5, scope: !2514, inlinedAt: !2538)
!2546 = !DILocation(line: 198, column: 5, scope: !2502, inlinedAt: !2538)
!2547 = !DILocation(line: 198, column: 11, scope: !2502, inlinedAt: !2538)
!2548 = !DILocation(line: 966, column: 10, scope: !2522)
!2549 = !DILocation(line: 967, column: 1, scope: !2522)
!2550 = !DILocation(line: 966, column: 3, scope: !2522)
!2551 = distinct !DISubprogram(name: "quotearg_style", scope: !207, file: !207, line: 970, type: !2552, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2554)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!45, !5, !76}
!2554 = !{!2555, !2556}
!2555 = !DILocalVariable(name: "s", arg: 1, scope: !2551, file: !207, line: 970, type: !5)
!2556 = !DILocalVariable(name: "arg", arg: 2, scope: !2551, file: !207, line: 970, type: !76)
!2557 = !DILocation(line: 970, column: 36, scope: !2551)
!2558 = !DILocation(line: 970, column: 51, scope: !2551)
!2559 = !DILocation(line: 955, column: 23, scope: !2488, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 972, column: 10, scope: !2551)
!2561 = !DILocation(line: 955, column: 45, scope: !2488, inlinedAt: !2560)
!2562 = !DILocation(line: 955, column: 60, scope: !2488, inlinedAt: !2560)
!2563 = !DILocation(line: 957, column: 3, scope: !2488, inlinedAt: !2560)
!2564 = !DILocation(line: 957, column: 32, scope: !2488, inlinedAt: !2560)
!2565 = !DILocation(line: 193, column: 48, scope: !2502, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 957, column: 36, scope: !2488, inlinedAt: !2560)
!2567 = !DILocation(line: 195, column: 26, scope: !2502, inlinedAt: !2566)
!2568 = !{!2569}
!2569 = distinct !{!2569, !2570, !"quoting_options_from_style: argument 0"}
!2570 = distinct !{!2570, !"quoting_options_from_style"}
!2571 = !DILocation(line: 196, column: 13, scope: !2514, inlinedAt: !2566)
!2572 = !DILocation(line: 196, column: 7, scope: !2502, inlinedAt: !2566)
!2573 = !DILocation(line: 197, column: 5, scope: !2514, inlinedAt: !2566)
!2574 = !DILocation(line: 198, column: 5, scope: !2502, inlinedAt: !2566)
!2575 = !DILocation(line: 198, column: 11, scope: !2502, inlinedAt: !2566)
!2576 = !DILocation(line: 958, column: 10, scope: !2488, inlinedAt: !2560)
!2577 = !DILocation(line: 959, column: 1, scope: !2488, inlinedAt: !2560)
!2578 = !DILocation(line: 972, column: 3, scope: !2551)
!2579 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !207, file: !207, line: 976, type: !2580, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2582)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!45, !5, !76, !50}
!2582 = !{!2583, !2584, !2585}
!2583 = !DILocalVariable(name: "s", arg: 1, scope: !2579, file: !207, line: 976, type: !5)
!2584 = !DILocalVariable(name: "arg", arg: 2, scope: !2579, file: !207, line: 976, type: !76)
!2585 = !DILocalVariable(name: "argsize", arg: 3, scope: !2579, file: !207, line: 976, type: !50)
!2586 = !DILocation(line: 976, column: 40, scope: !2579)
!2587 = !DILocation(line: 976, column: 55, scope: !2579)
!2588 = !DILocation(line: 976, column: 67, scope: !2579)
!2589 = !DILocation(line: 962, column: 27, scope: !2522, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 978, column: 10, scope: !2579)
!2591 = !DILocation(line: 962, column: 49, scope: !2522, inlinedAt: !2590)
!2592 = !DILocation(line: 963, column: 35, scope: !2522, inlinedAt: !2590)
!2593 = !DILocation(line: 963, column: 47, scope: !2522, inlinedAt: !2590)
!2594 = !DILocation(line: 965, column: 3, scope: !2522, inlinedAt: !2590)
!2595 = !DILocation(line: 965, column: 32, scope: !2522, inlinedAt: !2590)
!2596 = !DILocation(line: 193, column: 48, scope: !2502, inlinedAt: !2597)
!2597 = distinct !DILocation(line: 965, column: 36, scope: !2522, inlinedAt: !2590)
!2598 = !DILocation(line: 195, column: 26, scope: !2502, inlinedAt: !2597)
!2599 = !{!2600}
!2600 = distinct !{!2600, !2601, !"quoting_options_from_style: argument 0"}
!2601 = distinct !{!2601, !"quoting_options_from_style"}
!2602 = !DILocation(line: 196, column: 13, scope: !2514, inlinedAt: !2597)
!2603 = !DILocation(line: 196, column: 7, scope: !2502, inlinedAt: !2597)
!2604 = !DILocation(line: 197, column: 5, scope: !2514, inlinedAt: !2597)
!2605 = !DILocation(line: 198, column: 5, scope: !2502, inlinedAt: !2597)
!2606 = !DILocation(line: 198, column: 11, scope: !2502, inlinedAt: !2597)
!2607 = !DILocation(line: 966, column: 10, scope: !2522, inlinedAt: !2590)
!2608 = !DILocation(line: 967, column: 1, scope: !2522, inlinedAt: !2590)
!2609 = !DILocation(line: 978, column: 3, scope: !2579)
!2610 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !207, file: !207, line: 982, type: !2611, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2613)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!45, !76, !50, !46}
!2613 = !{!2614, !2615, !2616, !2617}
!2614 = !DILocalVariable(name: "arg", arg: 1, scope: !2610, file: !207, line: 982, type: !76)
!2615 = !DILocalVariable(name: "argsize", arg: 2, scope: !2610, file: !207, line: 982, type: !50)
!2616 = !DILocalVariable(name: "ch", arg: 3, scope: !2610, file: !207, line: 982, type: !46)
!2617 = !DILocalVariable(name: "options", scope: !2610, file: !207, line: 984, type: !214)
!2618 = !DILocation(line: 982, column: 32, scope: !2610)
!2619 = !DILocation(line: 982, column: 44, scope: !2610)
!2620 = !DILocation(line: 982, column: 58, scope: !2610)
!2621 = !DILocation(line: 984, column: 3, scope: !2610)
!2622 = !DILocation(line: 985, column: 13, scope: !2610)
!2623 = !{i64 0, i64 4, !839, i64 4, i64 4, !854, i64 8, i64 32, !839, i64 40, i64 8, !743, i64 48, i64 8, !743}
!2624 = !DILocation(line: 984, column: 26, scope: !2610)
!2625 = !DILocation(line: 152, column: 43, scope: !1278, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 986, column: 3, scope: !2610)
!2627 = !DILocation(line: 152, column: 51, scope: !1278, inlinedAt: !2626)
!2628 = !DILocation(line: 152, column: 58, scope: !1278, inlinedAt: !2626)
!2629 = !DILocation(line: 154, column: 17, scope: !1278, inlinedAt: !2626)
!2630 = !DILocation(line: 156, column: 62, scope: !1278, inlinedAt: !2626)
!2631 = !DILocation(line: 156, column: 57, scope: !1278, inlinedAt: !2626)
!2632 = !DILocation(line: 155, column: 17, scope: !1278, inlinedAt: !2626)
!2633 = !DILocation(line: 157, column: 15, scope: !1278, inlinedAt: !2626)
!2634 = !DILocation(line: 157, column: 7, scope: !1278, inlinedAt: !2626)
!2635 = !DILocation(line: 158, column: 12, scope: !1278, inlinedAt: !2626)
!2636 = !DILocation(line: 158, column: 15, scope: !1278, inlinedAt: !2626)
!2637 = !DILocation(line: 158, column: 25, scope: !1278, inlinedAt: !2626)
!2638 = !DILocation(line: 158, column: 7, scope: !1278, inlinedAt: !2626)
!2639 = !DILocation(line: 159, column: 18, scope: !1278, inlinedAt: !2626)
!2640 = !DILocation(line: 159, column: 23, scope: !1278, inlinedAt: !2626)
!2641 = !DILocation(line: 159, column: 6, scope: !1278, inlinedAt: !2626)
!2642 = !DILocation(line: 987, column: 10, scope: !2610)
!2643 = !DILocation(line: 988, column: 1, scope: !2610)
!2644 = !DILocation(line: 987, column: 3, scope: !2610)
!2645 = distinct !DISubprogram(name: "quotearg_char", scope: !207, file: !207, line: 991, type: !2646, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2648)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!45, !76, !46}
!2648 = !{!2649, !2650}
!2649 = !DILocalVariable(name: "arg", arg: 1, scope: !2645, file: !207, line: 991, type: !76)
!2650 = !DILocalVariable(name: "ch", arg: 2, scope: !2645, file: !207, line: 991, type: !46)
!2651 = !DILocation(line: 991, column: 28, scope: !2645)
!2652 = !DILocation(line: 991, column: 38, scope: !2645)
!2653 = !DILocation(line: 982, column: 32, scope: !2610, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 993, column: 10, scope: !2645)
!2655 = !DILocation(line: 982, column: 44, scope: !2610, inlinedAt: !2654)
!2656 = !DILocation(line: 982, column: 58, scope: !2610, inlinedAt: !2654)
!2657 = !DILocation(line: 984, column: 3, scope: !2610, inlinedAt: !2654)
!2658 = !DILocation(line: 985, column: 13, scope: !2610, inlinedAt: !2654)
!2659 = !DILocation(line: 984, column: 26, scope: !2610, inlinedAt: !2654)
!2660 = !DILocation(line: 152, column: 43, scope: !1278, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 986, column: 3, scope: !2610, inlinedAt: !2654)
!2662 = !DILocation(line: 152, column: 51, scope: !1278, inlinedAt: !2661)
!2663 = !DILocation(line: 152, column: 58, scope: !1278, inlinedAt: !2661)
!2664 = !DILocation(line: 154, column: 17, scope: !1278, inlinedAt: !2661)
!2665 = !DILocation(line: 156, column: 62, scope: !1278, inlinedAt: !2661)
!2666 = !DILocation(line: 156, column: 57, scope: !1278, inlinedAt: !2661)
!2667 = !DILocation(line: 155, column: 17, scope: !1278, inlinedAt: !2661)
!2668 = !DILocation(line: 157, column: 15, scope: !1278, inlinedAt: !2661)
!2669 = !DILocation(line: 157, column: 7, scope: !1278, inlinedAt: !2661)
!2670 = !DILocation(line: 158, column: 12, scope: !1278, inlinedAt: !2661)
!2671 = !DILocation(line: 158, column: 15, scope: !1278, inlinedAt: !2661)
!2672 = !DILocation(line: 158, column: 25, scope: !1278, inlinedAt: !2661)
!2673 = !DILocation(line: 158, column: 7, scope: !1278, inlinedAt: !2661)
!2674 = !DILocation(line: 159, column: 18, scope: !1278, inlinedAt: !2661)
!2675 = !DILocation(line: 159, column: 23, scope: !1278, inlinedAt: !2661)
!2676 = !DILocation(line: 159, column: 6, scope: !1278, inlinedAt: !2661)
!2677 = !DILocation(line: 987, column: 10, scope: !2610, inlinedAt: !2654)
!2678 = !DILocation(line: 988, column: 1, scope: !2610, inlinedAt: !2654)
!2679 = !DILocation(line: 993, column: 3, scope: !2645)
!2680 = distinct !DISubprogram(name: "quotearg_colon", scope: !207, file: !207, line: 997, type: !2464, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2681)
!2681 = !{!2682}
!2682 = !DILocalVariable(name: "arg", arg: 1, scope: !2680, file: !207, line: 997, type: !76)
!2683 = !DILocation(line: 997, column: 29, scope: !2680)
!2684 = !DILocation(line: 991, column: 28, scope: !2645, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 999, column: 10, scope: !2680)
!2686 = !DILocation(line: 991, column: 38, scope: !2645, inlinedAt: !2685)
!2687 = !DILocation(line: 982, column: 32, scope: !2610, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 993, column: 10, scope: !2645, inlinedAt: !2685)
!2689 = !DILocation(line: 982, column: 44, scope: !2610, inlinedAt: !2688)
!2690 = !DILocation(line: 982, column: 58, scope: !2610, inlinedAt: !2688)
!2691 = !DILocation(line: 984, column: 3, scope: !2610, inlinedAt: !2688)
!2692 = !DILocation(line: 985, column: 13, scope: !2610, inlinedAt: !2688)
!2693 = !DILocation(line: 984, column: 26, scope: !2610, inlinedAt: !2688)
!2694 = !DILocation(line: 152, column: 43, scope: !1278, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 986, column: 3, scope: !2610, inlinedAt: !2688)
!2696 = !DILocation(line: 152, column: 51, scope: !1278, inlinedAt: !2695)
!2697 = !DILocation(line: 152, column: 58, scope: !1278, inlinedAt: !2695)
!2698 = !DILocation(line: 154, column: 17, scope: !1278, inlinedAt: !2695)
!2699 = !DILocation(line: 156, column: 57, scope: !1278, inlinedAt: !2695)
!2700 = !DILocation(line: 155, column: 17, scope: !1278, inlinedAt: !2695)
!2701 = !DILocation(line: 157, column: 7, scope: !1278, inlinedAt: !2695)
!2702 = !DILocation(line: 158, column: 12, scope: !1278, inlinedAt: !2695)
!2703 = !DILocation(line: 159, column: 6, scope: !1278, inlinedAt: !2695)
!2704 = !DILocation(line: 987, column: 10, scope: !2610, inlinedAt: !2688)
!2705 = !DILocation(line: 988, column: 1, scope: !2610, inlinedAt: !2688)
!2706 = !DILocation(line: 999, column: 3, scope: !2680)
!2707 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !207, file: !207, line: 1003, type: !2475, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2708)
!2708 = !{!2709, !2710}
!2709 = !DILocalVariable(name: "arg", arg: 1, scope: !2707, file: !207, line: 1003, type: !76)
!2710 = !DILocalVariable(name: "argsize", arg: 2, scope: !2707, file: !207, line: 1003, type: !50)
!2711 = !DILocation(line: 1003, column: 33, scope: !2707)
!2712 = !DILocation(line: 1003, column: 45, scope: !2707)
!2713 = !DILocation(line: 982, column: 32, scope: !2610, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 1005, column: 10, scope: !2707)
!2715 = !DILocation(line: 982, column: 44, scope: !2610, inlinedAt: !2714)
!2716 = !DILocation(line: 982, column: 58, scope: !2610, inlinedAt: !2714)
!2717 = !DILocation(line: 984, column: 3, scope: !2610, inlinedAt: !2714)
!2718 = !DILocation(line: 985, column: 13, scope: !2610, inlinedAt: !2714)
!2719 = !DILocation(line: 984, column: 26, scope: !2610, inlinedAt: !2714)
!2720 = !DILocation(line: 152, column: 43, scope: !1278, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 986, column: 3, scope: !2610, inlinedAt: !2714)
!2722 = !DILocation(line: 152, column: 51, scope: !1278, inlinedAt: !2721)
!2723 = !DILocation(line: 152, column: 58, scope: !1278, inlinedAt: !2721)
!2724 = !DILocation(line: 154, column: 17, scope: !1278, inlinedAt: !2721)
!2725 = !DILocation(line: 156, column: 57, scope: !1278, inlinedAt: !2721)
!2726 = !DILocation(line: 155, column: 17, scope: !1278, inlinedAt: !2721)
!2727 = !DILocation(line: 157, column: 7, scope: !1278, inlinedAt: !2721)
!2728 = !DILocation(line: 158, column: 12, scope: !1278, inlinedAt: !2721)
!2729 = !DILocation(line: 159, column: 6, scope: !1278, inlinedAt: !2721)
!2730 = !DILocation(line: 987, column: 10, scope: !2610, inlinedAt: !2714)
!2731 = !DILocation(line: 988, column: 1, scope: !2610, inlinedAt: !2714)
!2732 = !DILocation(line: 1005, column: 3, scope: !2707)
!2733 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !207, file: !207, line: 1009, type: !2489, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2734)
!2734 = !{!2735, !2736, !2737, !2738}
!2735 = !DILocalVariable(name: "n", arg: 1, scope: !2733, file: !207, line: 1009, type: !48)
!2736 = !DILocalVariable(name: "s", arg: 2, scope: !2733, file: !207, line: 1009, type: !5)
!2737 = !DILocalVariable(name: "arg", arg: 3, scope: !2733, file: !207, line: 1009, type: !76)
!2738 = !DILocalVariable(name: "options", scope: !2733, file: !207, line: 1011, type: !214)
!2739 = !DILocation(line: 195, column: 26, scope: !2502, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 1012, column: 13, scope: !2733)
!2741 = !DILocation(line: 1009, column: 29, scope: !2733)
!2742 = !DILocation(line: 1009, column: 51, scope: !2733)
!2743 = !DILocation(line: 1009, column: 66, scope: !2733)
!2744 = !DILocation(line: 1011, column: 3, scope: !2733)
!2745 = !DILocation(line: 1012, column: 13, scope: !2733)
!2746 = !DILocation(line: 193, column: 48, scope: !2502, inlinedAt: !2740)
!2747 = !{!2748}
!2748 = distinct !{!2748, !2749, !"quoting_options_from_style: argument 0"}
!2749 = distinct !{!2749, !"quoting_options_from_style"}
!2750 = !DILocation(line: 196, column: 13, scope: !2514, inlinedAt: !2740)
!2751 = !DILocation(line: 196, column: 7, scope: !2502, inlinedAt: !2740)
!2752 = !DILocation(line: 197, column: 5, scope: !2514, inlinedAt: !2740)
!2753 = !DILocation(line: 1011, column: 26, scope: !2733)
!2754 = !DILocation(line: 152, column: 43, scope: !1278, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 1013, column: 3, scope: !2733)
!2756 = !DILocation(line: 152, column: 51, scope: !1278, inlinedAt: !2755)
!2757 = !DILocation(line: 152, column: 58, scope: !1278, inlinedAt: !2755)
!2758 = !DILocation(line: 154, column: 17, scope: !1278, inlinedAt: !2755)
!2759 = !DILocation(line: 156, column: 57, scope: !1278, inlinedAt: !2755)
!2760 = !DILocation(line: 155, column: 17, scope: !1278, inlinedAt: !2755)
!2761 = !DILocation(line: 157, column: 7, scope: !1278, inlinedAt: !2755)
!2762 = !DILocation(line: 158, column: 12, scope: !1278, inlinedAt: !2755)
!2763 = !DILocation(line: 159, column: 6, scope: !1278, inlinedAt: !2755)
!2764 = !DILocation(line: 1014, column: 10, scope: !2733)
!2765 = !DILocation(line: 1015, column: 1, scope: !2733)
!2766 = !DILocation(line: 1014, column: 3, scope: !2733)
!2767 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !207, file: !207, line: 1018, type: !2768, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2770)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!45, !48, !76, !76, !76}
!2770 = !{!2771, !2772, !2773, !2774}
!2771 = !DILocalVariable(name: "n", arg: 1, scope: !2767, file: !207, line: 1018, type: !48)
!2772 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2767, file: !207, line: 1018, type: !76)
!2773 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2767, file: !207, line: 1019, type: !76)
!2774 = !DILocalVariable(name: "arg", arg: 4, scope: !2767, file: !207, line: 1019, type: !76)
!2775 = !DILocation(line: 1018, column: 24, scope: !2767)
!2776 = !DILocation(line: 1018, column: 39, scope: !2767)
!2777 = !DILocation(line: 1019, column: 32, scope: !2767)
!2778 = !DILocation(line: 1019, column: 57, scope: !2767)
!2779 = !DILocalVariable(name: "n", arg: 1, scope: !2780, file: !207, line: 1026, type: !48)
!2780 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !207, file: !207, line: 1026, type: !2781, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!45, !48, !76, !76, !76, !50}
!2783 = !{!2779, !2784, !2785, !2786, !2787, !2788}
!2784 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2780, file: !207, line: 1026, type: !76)
!2785 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2780, file: !207, line: 1027, type: !76)
!2786 = !DILocalVariable(name: "arg", arg: 4, scope: !2780, file: !207, line: 1028, type: !76)
!2787 = !DILocalVariable(name: "argsize", arg: 5, scope: !2780, file: !207, line: 1028, type: !50)
!2788 = !DILocalVariable(name: "o", scope: !2780, file: !207, line: 1030, type: !214)
!2789 = !DILocation(line: 1026, column: 28, scope: !2780, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 1021, column: 10, scope: !2767)
!2791 = !DILocation(line: 1026, column: 43, scope: !2780, inlinedAt: !2790)
!2792 = !DILocation(line: 1027, column: 36, scope: !2780, inlinedAt: !2790)
!2793 = !DILocation(line: 1028, column: 36, scope: !2780, inlinedAt: !2790)
!2794 = !DILocation(line: 1028, column: 48, scope: !2780, inlinedAt: !2790)
!2795 = !DILocation(line: 1030, column: 3, scope: !2780, inlinedAt: !2790)
!2796 = !DILocation(line: 1030, column: 30, scope: !2780, inlinedAt: !2790)
!2797 = !DILocation(line: 1030, column: 26, scope: !2780, inlinedAt: !2790)
!2798 = !DILocation(line: 179, column: 45, scope: !1326, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 1031, column: 3, scope: !2780, inlinedAt: !2790)
!2800 = !DILocation(line: 180, column: 33, scope: !1326, inlinedAt: !2799)
!2801 = !DILocation(line: 180, column: 57, scope: !1326, inlinedAt: !2799)
!2802 = !DILocation(line: 184, column: 6, scope: !1326, inlinedAt: !2799)
!2803 = !DILocation(line: 184, column: 12, scope: !1326, inlinedAt: !2799)
!2804 = !DILocation(line: 185, column: 8, scope: !1342, inlinedAt: !2799)
!2805 = !DILocation(line: 185, column: 23, scope: !1342, inlinedAt: !2799)
!2806 = !DILocation(line: 185, column: 19, scope: !1342, inlinedAt: !2799)
!2807 = !DILocation(line: 186, column: 5, scope: !1342, inlinedAt: !2799)
!2808 = !DILocation(line: 187, column: 6, scope: !1326, inlinedAt: !2799)
!2809 = !DILocation(line: 187, column: 17, scope: !1326, inlinedAt: !2799)
!2810 = !DILocation(line: 188, column: 6, scope: !1326, inlinedAt: !2799)
!2811 = !DILocation(line: 188, column: 18, scope: !1326, inlinedAt: !2799)
!2812 = !DILocation(line: 1032, column: 10, scope: !2780, inlinedAt: !2790)
!2813 = !DILocation(line: 1033, column: 1, scope: !2780, inlinedAt: !2790)
!2814 = !DILocation(line: 1021, column: 3, scope: !2767)
!2815 = !DILocation(line: 1026, column: 28, scope: !2780)
!2816 = !DILocation(line: 1026, column: 43, scope: !2780)
!2817 = !DILocation(line: 1027, column: 36, scope: !2780)
!2818 = !DILocation(line: 1028, column: 36, scope: !2780)
!2819 = !DILocation(line: 1028, column: 48, scope: !2780)
!2820 = !DILocation(line: 1030, column: 3, scope: !2780)
!2821 = !DILocation(line: 1030, column: 30, scope: !2780)
!2822 = !DILocation(line: 1030, column: 26, scope: !2780)
!2823 = !DILocation(line: 179, column: 45, scope: !1326, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 1031, column: 3, scope: !2780)
!2825 = !DILocation(line: 180, column: 33, scope: !1326, inlinedAt: !2824)
!2826 = !DILocation(line: 180, column: 57, scope: !1326, inlinedAt: !2824)
!2827 = !DILocation(line: 184, column: 6, scope: !1326, inlinedAt: !2824)
!2828 = !DILocation(line: 184, column: 12, scope: !1326, inlinedAt: !2824)
!2829 = !DILocation(line: 185, column: 8, scope: !1342, inlinedAt: !2824)
!2830 = !DILocation(line: 185, column: 23, scope: !1342, inlinedAt: !2824)
!2831 = !DILocation(line: 185, column: 19, scope: !1342, inlinedAt: !2824)
!2832 = !DILocation(line: 186, column: 5, scope: !1342, inlinedAt: !2824)
!2833 = !DILocation(line: 187, column: 6, scope: !1326, inlinedAt: !2824)
!2834 = !DILocation(line: 187, column: 17, scope: !1326, inlinedAt: !2824)
!2835 = !DILocation(line: 188, column: 6, scope: !1326, inlinedAt: !2824)
!2836 = !DILocation(line: 188, column: 18, scope: !1326, inlinedAt: !2824)
!2837 = !DILocation(line: 1032, column: 10, scope: !2780)
!2838 = !DILocation(line: 1033, column: 1, scope: !2780)
!2839 = !DILocation(line: 1032, column: 3, scope: !2780)
!2840 = distinct !DISubprogram(name: "quotearg_custom", scope: !207, file: !207, line: 1036, type: !2841, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2843)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!45, !76, !76, !76}
!2843 = !{!2844, !2845, !2846}
!2844 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2840, file: !207, line: 1036, type: !76)
!2845 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2840, file: !207, line: 1036, type: !76)
!2846 = !DILocalVariable(name: "arg", arg: 3, scope: !2840, file: !207, line: 1037, type: !76)
!2847 = !DILocation(line: 1036, column: 30, scope: !2840)
!2848 = !DILocation(line: 1036, column: 54, scope: !2840)
!2849 = !DILocation(line: 1037, column: 30, scope: !2840)
!2850 = !DILocation(line: 1018, column: 24, scope: !2767, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 1039, column: 10, scope: !2840)
!2852 = !DILocation(line: 1018, column: 39, scope: !2767, inlinedAt: !2851)
!2853 = !DILocation(line: 1019, column: 32, scope: !2767, inlinedAt: !2851)
!2854 = !DILocation(line: 1019, column: 57, scope: !2767, inlinedAt: !2851)
!2855 = !DILocation(line: 1026, column: 28, scope: !2780, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 1021, column: 10, scope: !2767, inlinedAt: !2851)
!2857 = !DILocation(line: 1026, column: 43, scope: !2780, inlinedAt: !2856)
!2858 = !DILocation(line: 1027, column: 36, scope: !2780, inlinedAt: !2856)
!2859 = !DILocation(line: 1028, column: 36, scope: !2780, inlinedAt: !2856)
!2860 = !DILocation(line: 1028, column: 48, scope: !2780, inlinedAt: !2856)
!2861 = !DILocation(line: 1030, column: 3, scope: !2780, inlinedAt: !2856)
!2862 = !DILocation(line: 1030, column: 30, scope: !2780, inlinedAt: !2856)
!2863 = !DILocation(line: 1030, column: 26, scope: !2780, inlinedAt: !2856)
!2864 = !DILocation(line: 179, column: 45, scope: !1326, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 1031, column: 3, scope: !2780, inlinedAt: !2856)
!2866 = !DILocation(line: 180, column: 33, scope: !1326, inlinedAt: !2865)
!2867 = !DILocation(line: 180, column: 57, scope: !1326, inlinedAt: !2865)
!2868 = !DILocation(line: 184, column: 6, scope: !1326, inlinedAt: !2865)
!2869 = !DILocation(line: 184, column: 12, scope: !1326, inlinedAt: !2865)
!2870 = !DILocation(line: 185, column: 8, scope: !1342, inlinedAt: !2865)
!2871 = !DILocation(line: 185, column: 23, scope: !1342, inlinedAt: !2865)
!2872 = !DILocation(line: 185, column: 19, scope: !1342, inlinedAt: !2865)
!2873 = !DILocation(line: 186, column: 5, scope: !1342, inlinedAt: !2865)
!2874 = !DILocation(line: 187, column: 6, scope: !1326, inlinedAt: !2865)
!2875 = !DILocation(line: 187, column: 17, scope: !1326, inlinedAt: !2865)
!2876 = !DILocation(line: 188, column: 6, scope: !1326, inlinedAt: !2865)
!2877 = !DILocation(line: 188, column: 18, scope: !1326, inlinedAt: !2865)
!2878 = !DILocation(line: 1032, column: 10, scope: !2780, inlinedAt: !2856)
!2879 = !DILocation(line: 1033, column: 1, scope: !2780, inlinedAt: !2856)
!2880 = !DILocation(line: 1039, column: 3, scope: !2840)
!2881 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !207, file: !207, line: 1043, type: !2882, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!45, !76, !76, !76, !50}
!2884 = !{!2885, !2886, !2887, !2888}
!2885 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2881, file: !207, line: 1043, type: !76)
!2886 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2881, file: !207, line: 1043, type: !76)
!2887 = !DILocalVariable(name: "arg", arg: 3, scope: !2881, file: !207, line: 1044, type: !76)
!2888 = !DILocalVariable(name: "argsize", arg: 4, scope: !2881, file: !207, line: 1044, type: !50)
!2889 = !DILocation(line: 1043, column: 34, scope: !2881)
!2890 = !DILocation(line: 1043, column: 58, scope: !2881)
!2891 = !DILocation(line: 1044, column: 34, scope: !2881)
!2892 = !DILocation(line: 1044, column: 46, scope: !2881)
!2893 = !DILocation(line: 1026, column: 28, scope: !2780, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 1046, column: 10, scope: !2881)
!2895 = !DILocation(line: 1026, column: 43, scope: !2780, inlinedAt: !2894)
!2896 = !DILocation(line: 1027, column: 36, scope: !2780, inlinedAt: !2894)
!2897 = !DILocation(line: 1028, column: 36, scope: !2780, inlinedAt: !2894)
!2898 = !DILocation(line: 1028, column: 48, scope: !2780, inlinedAt: !2894)
!2899 = !DILocation(line: 1030, column: 3, scope: !2780, inlinedAt: !2894)
!2900 = !DILocation(line: 1030, column: 30, scope: !2780, inlinedAt: !2894)
!2901 = !DILocation(line: 1030, column: 26, scope: !2780, inlinedAt: !2894)
!2902 = !DILocation(line: 179, column: 45, scope: !1326, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 1031, column: 3, scope: !2780, inlinedAt: !2894)
!2904 = !DILocation(line: 180, column: 33, scope: !1326, inlinedAt: !2903)
!2905 = !DILocation(line: 180, column: 57, scope: !1326, inlinedAt: !2903)
!2906 = !DILocation(line: 184, column: 6, scope: !1326, inlinedAt: !2903)
!2907 = !DILocation(line: 184, column: 12, scope: !1326, inlinedAt: !2903)
!2908 = !DILocation(line: 185, column: 8, scope: !1342, inlinedAt: !2903)
!2909 = !DILocation(line: 185, column: 23, scope: !1342, inlinedAt: !2903)
!2910 = !DILocation(line: 185, column: 19, scope: !1342, inlinedAt: !2903)
!2911 = !DILocation(line: 186, column: 5, scope: !1342, inlinedAt: !2903)
!2912 = !DILocation(line: 187, column: 6, scope: !1326, inlinedAt: !2903)
!2913 = !DILocation(line: 187, column: 17, scope: !1326, inlinedAt: !2903)
!2914 = !DILocation(line: 188, column: 6, scope: !1326, inlinedAt: !2903)
!2915 = !DILocation(line: 188, column: 18, scope: !1326, inlinedAt: !2903)
!2916 = !DILocation(line: 1032, column: 10, scope: !2780, inlinedAt: !2894)
!2917 = !DILocation(line: 1033, column: 1, scope: !2780, inlinedAt: !2894)
!2918 = !DILocation(line: 1046, column: 3, scope: !2881)
!2919 = distinct !DISubprogram(name: "quote_n_mem", scope: !207, file: !207, line: 1061, type: !2920, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2922)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!76, !48, !76, !50}
!2922 = !{!2923, !2924, !2925}
!2923 = !DILocalVariable(name: "n", arg: 1, scope: !2919, file: !207, line: 1061, type: !48)
!2924 = !DILocalVariable(name: "arg", arg: 2, scope: !2919, file: !207, line: 1061, type: !76)
!2925 = !DILocalVariable(name: "argsize", arg: 3, scope: !2919, file: !207, line: 1061, type: !50)
!2926 = !DILocation(line: 1061, column: 18, scope: !2919)
!2927 = !DILocation(line: 1061, column: 33, scope: !2919)
!2928 = !DILocation(line: 1061, column: 45, scope: !2919)
!2929 = !DILocation(line: 1063, column: 10, scope: !2919)
!2930 = !DILocation(line: 1063, column: 3, scope: !2919)
!2931 = distinct !DISubprogram(name: "quote_mem", scope: !207, file: !207, line: 1067, type: !2932, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2934)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!76, !76, !50}
!2934 = !{!2935, !2936}
!2935 = !DILocalVariable(name: "arg", arg: 1, scope: !2931, file: !207, line: 1067, type: !76)
!2936 = !DILocalVariable(name: "argsize", arg: 2, scope: !2931, file: !207, line: 1067, type: !50)
!2937 = !DILocation(line: 1067, column: 24, scope: !2931)
!2938 = !DILocation(line: 1067, column: 36, scope: !2931)
!2939 = !DILocation(line: 1061, column: 18, scope: !2919, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 1069, column: 10, scope: !2931)
!2941 = !DILocation(line: 1061, column: 33, scope: !2919, inlinedAt: !2940)
!2942 = !DILocation(line: 1061, column: 45, scope: !2919, inlinedAt: !2940)
!2943 = !DILocation(line: 1063, column: 10, scope: !2919, inlinedAt: !2940)
!2944 = !DILocation(line: 1069, column: 3, scope: !2931)
!2945 = distinct !DISubprogram(name: "quote_n", scope: !207, file: !207, line: 1073, type: !2946, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2948)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!76, !48, !76}
!2948 = !{!2949, !2950}
!2949 = !DILocalVariable(name: "n", arg: 1, scope: !2945, file: !207, line: 1073, type: !48)
!2950 = !DILocalVariable(name: "arg", arg: 2, scope: !2945, file: !207, line: 1073, type: !76)
!2951 = !DILocation(line: 1073, column: 14, scope: !2945)
!2952 = !DILocation(line: 1073, column: 29, scope: !2945)
!2953 = !DILocation(line: 1061, column: 18, scope: !2919, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 1075, column: 10, scope: !2945)
!2955 = !DILocation(line: 1061, column: 33, scope: !2919, inlinedAt: !2954)
!2956 = !DILocation(line: 1061, column: 45, scope: !2919, inlinedAt: !2954)
!2957 = !DILocation(line: 1063, column: 10, scope: !2919, inlinedAt: !2954)
!2958 = !DILocation(line: 1075, column: 3, scope: !2945)
!2959 = distinct !DISubprogram(name: "quote", scope: !207, file: !207, line: 1079, type: !2960, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2962)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!76, !76}
!2962 = !{!2963}
!2963 = !DILocalVariable(name: "arg", arg: 1, scope: !2959, file: !207, line: 1079, type: !76)
!2964 = !DILocation(line: 1079, column: 20, scope: !2959)
!2965 = !DILocation(line: 1073, column: 14, scope: !2945, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 1081, column: 10, scope: !2959)
!2967 = !DILocation(line: 1073, column: 29, scope: !2945, inlinedAt: !2966)
!2968 = !DILocation(line: 1061, column: 18, scope: !2919, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 1075, column: 10, scope: !2945, inlinedAt: !2966)
!2970 = !DILocation(line: 1061, column: 33, scope: !2919, inlinedAt: !2969)
!2971 = !DILocation(line: 1061, column: 45, scope: !2919, inlinedAt: !2969)
!2972 = !DILocation(line: 1063, column: 10, scope: !2919, inlinedAt: !2969)
!2973 = !DILocation(line: 1081, column: 3, scope: !2959)
!2974 = distinct !DISubprogram(name: "version_etc_arn", scope: !262, file: !262, line: 62, type: !2975, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3012)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{null, !2977, !76, !76, !76, !3011, !50}
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !2979)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !2980)
!2980 = !{!2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2979, file: !96, line: 51, baseType: !48, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2979, file: !96, line: 54, baseType: !45, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2979, file: !96, line: 55, baseType: !45, size: 64, offset: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2979, file: !96, line: 56, baseType: !45, size: 64, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2979, file: !96, line: 57, baseType: !45, size: 64, offset: 256)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2979, file: !96, line: 58, baseType: !45, size: 64, offset: 320)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2979, file: !96, line: 59, baseType: !45, size: 64, offset: 384)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2979, file: !96, line: 60, baseType: !45, size: 64, offset: 448)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2979, file: !96, line: 61, baseType: !45, size: 64, offset: 512)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2979, file: !96, line: 64, baseType: !45, size: 64, offset: 576)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2979, file: !96, line: 65, baseType: !45, size: 64, offset: 640)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2979, file: !96, line: 66, baseType: !45, size: 64, offset: 704)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2979, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2979, file: !96, line: 70, baseType: !2995, size: 64, offset: 832)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2979, file: !96, line: 72, baseType: !48, size: 32, offset: 896)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2979, file: !96, line: 73, baseType: !48, size: 32, offset: 928)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2979, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2979, file: !96, line: 77, baseType: !49, size: 16, offset: 1024)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2979, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2979, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2979, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2979, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2979, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2979, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2979, file: !96, line: 93, baseType: !2995, size: 64, offset: 1344)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2979, file: !96, line: 94, baseType: !47, size: 64, offset: 1408)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2979, file: !96, line: 95, baseType: !50, size: 64, offset: 1472)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2979, file: !96, line: 96, baseType: !48, size: 32, offset: 1536)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2979, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!3012 = !{!3013, !3014, !3015, !3016, !3017, !3018}
!3013 = !DILocalVariable(name: "stream", arg: 1, scope: !2974, file: !262, line: 62, type: !2977)
!3014 = !DILocalVariable(name: "command_name", arg: 2, scope: !2974, file: !262, line: 63, type: !76)
!3015 = !DILocalVariable(name: "package", arg: 3, scope: !2974, file: !262, line: 63, type: !76)
!3016 = !DILocalVariable(name: "version", arg: 4, scope: !2974, file: !262, line: 64, type: !76)
!3017 = !DILocalVariable(name: "authors", arg: 5, scope: !2974, file: !262, line: 65, type: !3011)
!3018 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2974, file: !262, line: 65, type: !50)
!3019 = !DILocation(line: 62, column: 24, scope: !2974)
!3020 = !DILocation(line: 63, column: 30, scope: !2974)
!3021 = !DILocation(line: 63, column: 56, scope: !2974)
!3022 = !DILocation(line: 64, column: 30, scope: !2974)
!3023 = !DILocation(line: 65, column: 39, scope: !2974)
!3024 = !DILocation(line: 65, column: 55, scope: !2974)
!3025 = !DILocation(line: 67, column: 7, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2974, file: !262, line: 67, column: 7)
!3027 = !DILocation(line: 67, column: 7, scope: !2974)
!3028 = !DILocation(line: 68, column: 5, scope: !3026)
!3029 = !DILocation(line: 70, column: 5, scope: !3026)
!3030 = !DILocation(line: 84, column: 3, scope: !2974)
!3031 = !DILocation(line: 86, column: 3, scope: !2974)
!3032 = !DILocation(line: 95, column: 3, scope: !2974)
!3033 = !DILocation(line: 99, column: 7, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !2974, file: !262, line: 96, column: 5)
!3035 = !DILocation(line: 102, column: 7, scope: !3034)
!3036 = !DILocation(line: 103, column: 7, scope: !3034)
!3037 = !DILocation(line: 106, column: 7, scope: !3034)
!3038 = !DILocation(line: 107, column: 7, scope: !3034)
!3039 = !DILocation(line: 110, column: 7, scope: !3034)
!3040 = !DILocation(line: 112, column: 7, scope: !3034)
!3041 = !DILocation(line: 117, column: 7, scope: !3034)
!3042 = !DILocation(line: 119, column: 7, scope: !3034)
!3043 = !DILocation(line: 124, column: 7, scope: !3034)
!3044 = !DILocation(line: 126, column: 7, scope: !3034)
!3045 = !DILocation(line: 131, column: 7, scope: !3034)
!3046 = !DILocation(line: 134, column: 7, scope: !3034)
!3047 = !DILocation(line: 139, column: 7, scope: !3034)
!3048 = !DILocation(line: 142, column: 7, scope: !3034)
!3049 = !DILocation(line: 147, column: 7, scope: !3034)
!3050 = !DILocation(line: 151, column: 7, scope: !3034)
!3051 = !DILocation(line: 156, column: 7, scope: !3034)
!3052 = !DILocation(line: 160, column: 7, scope: !3034)
!3053 = !DILocation(line: 167, column: 7, scope: !3034)
!3054 = !DILocation(line: 171, column: 7, scope: !3034)
!3055 = !DILocation(line: 173, column: 1, scope: !2974)
!3056 = distinct !DISubprogram(name: "version_etc_ar", scope: !262, file: !262, line: 180, type: !3057, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3059)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{null, !2977, !76, !76, !76, !3011}
!3059 = !{!3060, !3061, !3062, !3063, !3064, !3065}
!3060 = !DILocalVariable(name: "stream", arg: 1, scope: !3056, file: !262, line: 180, type: !2977)
!3061 = !DILocalVariable(name: "command_name", arg: 2, scope: !3056, file: !262, line: 181, type: !76)
!3062 = !DILocalVariable(name: "package", arg: 3, scope: !3056, file: !262, line: 181, type: !76)
!3063 = !DILocalVariable(name: "version", arg: 4, scope: !3056, file: !262, line: 182, type: !76)
!3064 = !DILocalVariable(name: "authors", arg: 5, scope: !3056, file: !262, line: 182, type: !3011)
!3065 = !DILocalVariable(name: "n_authors", scope: !3056, file: !262, line: 184, type: !50)
!3066 = !DILocation(line: 180, column: 23, scope: !3056)
!3067 = !DILocation(line: 181, column: 29, scope: !3056)
!3068 = !DILocation(line: 181, column: 55, scope: !3056)
!3069 = !DILocation(line: 182, column: 29, scope: !3056)
!3070 = !DILocation(line: 182, column: 59, scope: !3056)
!3071 = !DILocation(line: 184, column: 10, scope: !3056)
!3072 = !DILocation(line: 186, column: 8, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3056, file: !262, line: 186, column: 3)
!3074 = !DILocation(line: 0, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3073, file: !262, line: 186, column: 3)
!3076 = !DILocation(line: 186, column: 23, scope: !3075)
!3077 = !DILocation(line: 186, column: 3, scope: !3073)
!3078 = !DILocation(line: 186, column: 52, scope: !3075)
!3079 = distinct !{!3079, !3077, !3080}
!3080 = !DILocation(line: 187, column: 5, scope: !3073)
!3081 = !DILocation(line: 188, column: 3, scope: !3056)
!3082 = !DILocation(line: 189, column: 1, scope: !3056)
!3083 = distinct !DISubprogram(name: "version_etc_va", scope: !262, file: !262, line: 196, type: !3084, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3093)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{null, !2977, !76, !76, !76, !3086}
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !259, line: 189, size: 192, elements: !3088)
!3088 = !{!3089, !3090, !3091, !3092}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3087, file: !259, line: 189, baseType: !7, size: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3087, file: !259, line: 189, baseType: !7, size: 32, offset: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3087, file: !259, line: 189, baseType: !47, size: 64, offset: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3087, file: !259, line: 189, baseType: !47, size: 64, offset: 128)
!3093 = !{!3094, !3095, !3096, !3097, !3098, !3099, !3100}
!3094 = !DILocalVariable(name: "stream", arg: 1, scope: !3083, file: !262, line: 196, type: !2977)
!3095 = !DILocalVariable(name: "command_name", arg: 2, scope: !3083, file: !262, line: 197, type: !76)
!3096 = !DILocalVariable(name: "package", arg: 3, scope: !3083, file: !262, line: 197, type: !76)
!3097 = !DILocalVariable(name: "version", arg: 4, scope: !3083, file: !262, line: 198, type: !76)
!3098 = !DILocalVariable(name: "authors", arg: 5, scope: !3083, file: !262, line: 198, type: !3086)
!3099 = !DILocalVariable(name: "n_authors", scope: !3083, file: !262, line: 200, type: !50)
!3100 = !DILocalVariable(name: "authtab", scope: !3083, file: !262, line: 201, type: !3101)
!3101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 640, elements: !210)
!3102 = !DILocation(line: 196, column: 23, scope: !3083)
!3103 = !DILocation(line: 197, column: 29, scope: !3083)
!3104 = !DILocation(line: 197, column: 55, scope: !3083)
!3105 = !DILocation(line: 198, column: 29, scope: !3083)
!3106 = !DILocation(line: 198, column: 46, scope: !3083)
!3107 = !DILocation(line: 201, column: 3, scope: !3083)
!3108 = !DILocation(line: 201, column: 15, scope: !3083)
!3109 = !DILocation(line: 200, column: 10, scope: !3083)
!3110 = !DILocation(line: 205, column: 35, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !262, line: 203, column: 3)
!3112 = distinct !DILexicalBlock(scope: !3083, file: !262, line: 203, column: 3)
!3113 = !DILocation(line: 205, column: 14, scope: !3111)
!3114 = !DILocation(line: 205, column: 33, scope: !3111)
!3115 = !DILocation(line: 205, column: 67, scope: !3111)
!3116 = !DILocation(line: 203, column: 3, scope: !3112)
!3117 = !DILocation(line: 0, scope: !3111)
!3118 = !DILocation(line: 208, column: 3, scope: !3083)
!3119 = !DILocation(line: 210, column: 1, scope: !3083)
!3120 = distinct !DISubprogram(name: "version_etc", scope: !262, file: !262, line: 227, type: !3121, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{null, !2977, !76, !76, !76, null}
!3123 = !{!3124, !3125, !3126, !3127, !3128}
!3124 = !DILocalVariable(name: "stream", arg: 1, scope: !3120, file: !262, line: 227, type: !2977)
!3125 = !DILocalVariable(name: "command_name", arg: 2, scope: !3120, file: !262, line: 228, type: !76)
!3126 = !DILocalVariable(name: "package", arg: 3, scope: !3120, file: !262, line: 228, type: !76)
!3127 = !DILocalVariable(name: "version", arg: 4, scope: !3120, file: !262, line: 229, type: !76)
!3128 = !DILocalVariable(name: "authors", scope: !3120, file: !262, line: 231, type: !3129)
!3129 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1129, line: 52, baseType: !3130)
!3130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3131, line: 48, baseType: !3132)
!3131 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !259, line: 231, baseType: !3133)
!3133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3087, size: 192, elements: !126)
!3134 = !DILocation(line: 227, column: 20, scope: !3120)
!3135 = !DILocation(line: 228, column: 26, scope: !3120)
!3136 = !DILocation(line: 228, column: 52, scope: !3120)
!3137 = !DILocation(line: 229, column: 26, scope: !3120)
!3138 = !DILocation(line: 231, column: 3, scope: !3120)
!3139 = !DILocation(line: 231, column: 11, scope: !3120)
!3140 = !DILocation(line: 233, column: 3, scope: !3120)
!3141 = !DILocation(line: 234, column: 3, scope: !3120)
!3142 = !DILocation(line: 235, column: 3, scope: !3120)
!3143 = !DILocation(line: 236, column: 1, scope: !3120)
!3144 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !262, file: !262, line: 239, type: !751, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !169)
!3145 = !DILocation(line: 245, column: 3, scope: !3144)
!3146 = !DILocation(line: 251, column: 3, scope: !3144)
!3147 = !DILocation(line: 256, column: 3, scope: !3144)
!3148 = !DILocation(line: 258, column: 1, scope: !3144)
!3149 = distinct !DISubprogram(name: "xnmalloc", scope: !270, file: !270, line: 99, type: !3150, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !266, retainedNodes: !3152)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!47, !50, !50}
!3152 = !{!3153, !3154}
!3153 = !DILocalVariable(name: "n", arg: 1, scope: !3149, file: !270, line: 99, type: !50)
!3154 = !DILocalVariable(name: "s", arg: 2, scope: !3149, file: !270, line: 99, type: !50)
!3155 = !DILocation(line: 99, column: 18, scope: !3149)
!3156 = !DILocation(line: 99, column: 28, scope: !3149)
!3157 = !DILocation(line: 101, column: 7, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3149, file: !270, line: 101, column: 7)
!3159 = !DILocation(line: 101, column: 7, scope: !3149)
!3160 = !DILocation(line: 102, column: 5, scope: !3158)
!3161 = !DILocation(line: 103, column: 21, scope: !3149)
!3162 = !DILocalVariable(name: "n", arg: 1, scope: !3163, file: !3164, line: 39, type: !50)
!3163 = distinct !DISubprogram(name: "xmalloc", scope: !3164, file: !3164, line: 39, type: !3165, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !266, retainedNodes: !3167)
!3164 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!47, !50}
!3167 = !{!3162, !3168}
!3168 = !DILocalVariable(name: "p", scope: !3163, file: !3164, line: 41, type: !47)
!3169 = !DILocation(line: 39, column: 17, scope: !3163, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 103, column: 10, scope: !3149)
!3171 = !DILocation(line: 41, column: 13, scope: !3163, inlinedAt: !3170)
!3172 = !DILocation(line: 41, column: 9, scope: !3163, inlinedAt: !3170)
!3173 = !DILocation(line: 42, column: 8, scope: !3174, inlinedAt: !3170)
!3174 = distinct !DILexicalBlock(scope: !3163, file: !3164, line: 42, column: 7)
!3175 = !DILocation(line: 42, column: 15, scope: !3174, inlinedAt: !3170)
!3176 = !DILocation(line: 42, column: 10, scope: !3174, inlinedAt: !3170)
!3177 = !DILocation(line: 43, column: 5, scope: !3174, inlinedAt: !3170)
!3178 = !DILocation(line: 103, column: 3, scope: !3149)
!3179 = !DILocation(line: 39, column: 17, scope: !3163)
!3180 = !DILocation(line: 41, column: 13, scope: !3163)
!3181 = !DILocation(line: 41, column: 9, scope: !3163)
!3182 = !DILocation(line: 42, column: 8, scope: !3174)
!3183 = !DILocation(line: 42, column: 15, scope: !3174)
!3184 = !DILocation(line: 42, column: 10, scope: !3174)
!3185 = !DILocation(line: 43, column: 5, scope: !3174)
!3186 = !DILocation(line: 44, column: 3, scope: !3163)
!3187 = distinct !DISubprogram(name: "xnrealloc", scope: !270, file: !270, line: 112, type: !3188, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !266, retainedNodes: !3190)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!47, !47, !50, !50}
!3190 = !{!3191, !3192, !3193}
!3191 = !DILocalVariable(name: "p", arg: 1, scope: !3187, file: !270, line: 112, type: !47)
!3192 = !DILocalVariable(name: "n", arg: 2, scope: !3187, file: !270, line: 112, type: !50)
!3193 = !DILocalVariable(name: "s", arg: 3, scope: !3187, file: !270, line: 112, type: !50)
!3194 = !DILocation(line: 112, column: 18, scope: !3187)
!3195 = !DILocation(line: 112, column: 28, scope: !3187)
!3196 = !DILocation(line: 112, column: 38, scope: !3187)
!3197 = !DILocation(line: 114, column: 7, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3187, file: !270, line: 114, column: 7)
!3199 = !DILocation(line: 114, column: 7, scope: !3187)
!3200 = !DILocation(line: 115, column: 5, scope: !3198)
!3201 = !DILocation(line: 116, column: 25, scope: !3187)
!3202 = !DILocalVariable(name: "p", arg: 1, scope: !3203, file: !3164, line: 51, type: !47)
!3203 = distinct !DISubprogram(name: "xrealloc", scope: !3164, file: !3164, line: 51, type: !3204, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !266, retainedNodes: !3206)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!47, !47, !50}
!3206 = !{!3202, !3207}
!3207 = !DILocalVariable(name: "n", arg: 2, scope: !3203, file: !3164, line: 51, type: !50)
!3208 = !DILocation(line: 51, column: 17, scope: !3203, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 116, column: 10, scope: !3187)
!3210 = !DILocation(line: 51, column: 27, scope: !3203, inlinedAt: !3209)
!3211 = !DILocation(line: 53, column: 8, scope: !3212, inlinedAt: !3209)
!3212 = distinct !DILexicalBlock(scope: !3203, file: !3164, line: 53, column: 7)
!3213 = !DILocation(line: 53, column: 13, scope: !3212, inlinedAt: !3209)
!3214 = !DILocation(line: 53, column: 10, scope: !3212, inlinedAt: !3209)
!3215 = !DILocation(line: 57, column: 7, scope: !3216, inlinedAt: !3209)
!3216 = distinct !DILexicalBlock(scope: !3212, file: !3164, line: 54, column: 5)
!3217 = !DILocation(line: 58, column: 7, scope: !3216, inlinedAt: !3209)
!3218 = !DILocation(line: 61, column: 7, scope: !3203, inlinedAt: !3209)
!3219 = !DILocation(line: 62, column: 8, scope: !3220, inlinedAt: !3209)
!3220 = distinct !DILexicalBlock(scope: !3203, file: !3164, line: 62, column: 7)
!3221 = !DILocation(line: 62, column: 13, scope: !3220, inlinedAt: !3209)
!3222 = !DILocation(line: 62, column: 10, scope: !3220, inlinedAt: !3209)
!3223 = !DILocation(line: 63, column: 5, scope: !3220, inlinedAt: !3209)
!3224 = !DILocation(line: 0, scope: !3203, inlinedAt: !3209)
!3225 = !DILocation(line: 116, column: 3, scope: !3187)
!3226 = !DILocation(line: 51, column: 17, scope: !3203)
!3227 = !DILocation(line: 51, column: 27, scope: !3203)
!3228 = !DILocation(line: 53, column: 8, scope: !3212)
!3229 = !DILocation(line: 53, column: 13, scope: !3212)
!3230 = !DILocation(line: 53, column: 10, scope: !3212)
!3231 = !DILocation(line: 57, column: 7, scope: !3216)
!3232 = !DILocation(line: 58, column: 7, scope: !3216)
!3233 = !DILocation(line: 61, column: 7, scope: !3203)
!3234 = !DILocation(line: 62, column: 8, scope: !3220)
!3235 = !DILocation(line: 62, column: 13, scope: !3220)
!3236 = !DILocation(line: 62, column: 10, scope: !3220)
!3237 = !DILocation(line: 63, column: 5, scope: !3220)
!3238 = !DILocation(line: 0, scope: !3203)
!3239 = !DILocation(line: 65, column: 1, scope: !3203)
!3240 = !DILocation(line: 174, column: 19, scope: !271)
!3241 = !DILocation(line: 174, column: 30, scope: !271)
!3242 = !DILocation(line: 174, column: 41, scope: !271)
!3243 = !DILocation(line: 176, column: 14, scope: !271)
!3244 = !DILocation(line: 176, column: 10, scope: !271)
!3245 = !DILocation(line: 178, column: 9, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !271, file: !270, line: 178, column: 7)
!3247 = !DILocation(line: 178, column: 7, scope: !271)
!3248 = !DILocation(line: 180, column: 13, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !270, line: 180, column: 11)
!3250 = distinct !DILexicalBlock(scope: !3246, file: !270, line: 179, column: 5)
!3251 = !DILocation(line: 180, column: 11, scope: !3250)
!3252 = !DILocation(line: 188, column: 30, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3249, file: !270, line: 181, column: 9)
!3254 = !DILocation(line: 189, column: 16, scope: !3253)
!3255 = !DILocation(line: 189, column: 13, scope: !3253)
!3256 = !DILocation(line: 190, column: 9, scope: !3253)
!3257 = !DILocation(line: 0, scope: !3253)
!3258 = !DILocation(line: 191, column: 11, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3250, file: !270, line: 191, column: 11)
!3260 = !DILocation(line: 191, column: 11, scope: !3250)
!3261 = !DILocation(line: 206, column: 7, scope: !271)
!3262 = !DILocation(line: 207, column: 25, scope: !271)
!3263 = !DILocation(line: 51, column: 17, scope: !3203, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 207, column: 10, scope: !271)
!3265 = !DILocation(line: 51, column: 27, scope: !3203, inlinedAt: !3264)
!3266 = !DILocation(line: 53, column: 10, scope: !3212, inlinedAt: !3264)
!3267 = !DILocation(line: 192, column: 9, scope: !3259)
!3268 = !DILocation(line: 200, column: 69, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !270, line: 200, column: 11)
!3270 = distinct !DILexicalBlock(scope: !3246, file: !270, line: 195, column: 5)
!3271 = !DILocation(line: 201, column: 11, scope: !3269)
!3272 = !DILocation(line: 200, column: 11, scope: !3270)
!3273 = !DILocation(line: 202, column: 9, scope: !3269)
!3274 = !DILocation(line: 203, column: 14, scope: !3270)
!3275 = !DILocation(line: 203, column: 18, scope: !3270)
!3276 = !DILocation(line: 203, column: 9, scope: !3270)
!3277 = !DILocation(line: 53, column: 8, scope: !3212, inlinedAt: !3264)
!3278 = !DILocation(line: 57, column: 7, scope: !3216, inlinedAt: !3264)
!3279 = !DILocation(line: 58, column: 7, scope: !3216, inlinedAt: !3264)
!3280 = !DILocation(line: 61, column: 7, scope: !3203, inlinedAt: !3264)
!3281 = !DILocation(line: 62, column: 8, scope: !3220, inlinedAt: !3264)
!3282 = !DILocation(line: 62, column: 13, scope: !3220, inlinedAt: !3264)
!3283 = !DILocation(line: 62, column: 10, scope: !3220, inlinedAt: !3264)
!3284 = !DILocation(line: 63, column: 5, scope: !3220, inlinedAt: !3264)
!3285 = !DILocation(line: 0, scope: !3203, inlinedAt: !3264)
!3286 = !DILocation(line: 207, column: 3, scope: !271)
!3287 = distinct !DISubprogram(name: "xcharalloc", scope: !270, file: !270, line: 216, type: !2260, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !266, retainedNodes: !3288)
!3288 = !{!3289}
!3289 = !DILocalVariable(name: "n", arg: 1, scope: !3287, file: !270, line: 216, type: !50)
!3290 = !DILocation(line: 216, column: 20, scope: !3287)
!3291 = !DILocation(line: 39, column: 17, scope: !3163, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 218, column: 10, scope: !3287)
!3293 = !DILocation(line: 41, column: 13, scope: !3163, inlinedAt: !3292)
!3294 = !DILocation(line: 41, column: 9, scope: !3163, inlinedAt: !3292)
!3295 = !DILocation(line: 42, column: 8, scope: !3174, inlinedAt: !3292)
!3296 = !DILocation(line: 42, column: 15, scope: !3174, inlinedAt: !3292)
!3297 = !DILocation(line: 42, column: 10, scope: !3174, inlinedAt: !3292)
!3298 = !DILocation(line: 43, column: 5, scope: !3174, inlinedAt: !3292)
!3299 = !DILocation(line: 218, column: 3, scope: !3287)
!3300 = distinct !DISubprogram(name: "x2realloc", scope: !3164, file: !3164, line: 74, type: !3301, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !266, retainedNodes: !3303)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!47, !47, !274}
!3303 = !{!3304, !3305}
!3304 = !DILocalVariable(name: "p", arg: 1, scope: !3300, file: !3164, line: 74, type: !47)
!3305 = !DILocalVariable(name: "pn", arg: 2, scope: !3300, file: !3164, line: 74, type: !274)
!3306 = !DILocation(line: 74, column: 18, scope: !3300)
!3307 = !DILocation(line: 74, column: 29, scope: !3300)
!3308 = !DILocation(line: 174, column: 19, scope: !271, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 76, column: 10, scope: !3300)
!3310 = !DILocation(line: 174, column: 30, scope: !271, inlinedAt: !3309)
!3311 = !DILocation(line: 174, column: 41, scope: !271, inlinedAt: !3309)
!3312 = !DILocation(line: 176, column: 14, scope: !271, inlinedAt: !3309)
!3313 = !DILocation(line: 176, column: 10, scope: !271, inlinedAt: !3309)
!3314 = !DILocation(line: 178, column: 9, scope: !3246, inlinedAt: !3309)
!3315 = !DILocation(line: 178, column: 7, scope: !271, inlinedAt: !3309)
!3316 = !DILocation(line: 180, column: 13, scope: !3249, inlinedAt: !3309)
!3317 = !DILocation(line: 180, column: 11, scope: !3250, inlinedAt: !3309)
!3318 = !DILocation(line: 191, column: 11, scope: !3259, inlinedAt: !3309)
!3319 = !DILocation(line: 191, column: 11, scope: !3250, inlinedAt: !3309)
!3320 = !DILocation(line: 206, column: 7, scope: !271, inlinedAt: !3309)
!3321 = !DILocation(line: 51, column: 17, scope: !3203, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 207, column: 10, scope: !271, inlinedAt: !3309)
!3323 = !DILocation(line: 51, column: 27, scope: !3203, inlinedAt: !3322)
!3324 = !DILocation(line: 53, column: 10, scope: !3212, inlinedAt: !3322)
!3325 = !DILocation(line: 192, column: 9, scope: !3259, inlinedAt: !3309)
!3326 = !DILocation(line: 201, column: 11, scope: !3269, inlinedAt: !3309)
!3327 = !DILocation(line: 200, column: 11, scope: !3270, inlinedAt: !3309)
!3328 = !DILocation(line: 202, column: 9, scope: !3269, inlinedAt: !3309)
!3329 = !DILocation(line: 203, column: 14, scope: !3270, inlinedAt: !3309)
!3330 = !DILocation(line: 203, column: 18, scope: !3270, inlinedAt: !3309)
!3331 = !DILocation(line: 203, column: 9, scope: !3270, inlinedAt: !3309)
!3332 = !DILocation(line: 53, column: 8, scope: !3212, inlinedAt: !3322)
!3333 = !DILocation(line: 57, column: 7, scope: !3216, inlinedAt: !3322)
!3334 = !DILocation(line: 58, column: 7, scope: !3216, inlinedAt: !3322)
!3335 = !DILocation(line: 61, column: 7, scope: !3203, inlinedAt: !3322)
!3336 = !DILocation(line: 62, column: 8, scope: !3220, inlinedAt: !3322)
!3337 = !DILocation(line: 62, column: 13, scope: !3220, inlinedAt: !3322)
!3338 = !DILocation(line: 62, column: 10, scope: !3220, inlinedAt: !3322)
!3339 = !DILocation(line: 63, column: 5, scope: !3220, inlinedAt: !3322)
!3340 = !DILocation(line: 0, scope: !3203, inlinedAt: !3322)
!3341 = !DILocation(line: 76, column: 3, scope: !3300)
!3342 = distinct !DISubprogram(name: "xzalloc", scope: !3164, file: !3164, line: 84, type: !3165, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !266, retainedNodes: !3343)
!3343 = !{!3344}
!3344 = !DILocalVariable(name: "s", arg: 1, scope: !3342, file: !3164, line: 84, type: !50)
!3345 = !DILocation(line: 84, column: 17, scope: !3342)
!3346 = !DILocation(line: 39, column: 17, scope: !3163, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 86, column: 18, scope: !3342)
!3348 = !DILocation(line: 41, column: 13, scope: !3163, inlinedAt: !3347)
!3349 = !DILocation(line: 41, column: 9, scope: !3163, inlinedAt: !3347)
!3350 = !DILocation(line: 42, column: 8, scope: !3174, inlinedAt: !3347)
!3351 = !DILocation(line: 42, column: 15, scope: !3174, inlinedAt: !3347)
!3352 = !DILocation(line: 42, column: 10, scope: !3174, inlinedAt: !3347)
!3353 = !DILocation(line: 43, column: 5, scope: !3174, inlinedAt: !3347)
!3354 = !DILocation(line: 86, column: 10, scope: !3342)
!3355 = !DILocation(line: 86, column: 3, scope: !3342)
!3356 = distinct !DISubprogram(name: "xcalloc", scope: !3164, file: !3164, line: 93, type: !3150, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !266, retainedNodes: !3357)
!3357 = !{!3358, !3359, !3360}
!3358 = !DILocalVariable(name: "n", arg: 1, scope: !3356, file: !3164, line: 93, type: !50)
!3359 = !DILocalVariable(name: "s", arg: 2, scope: !3356, file: !3164, line: 93, type: !50)
!3360 = !DILocalVariable(name: "p", scope: !3356, file: !3164, line: 95, type: !47)
!3361 = !DILocation(line: 93, column: 17, scope: !3356)
!3362 = !DILocation(line: 93, column: 27, scope: !3356)
!3363 = !DILocation(line: 100, column: 7, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3356, file: !3164, line: 100, column: 7)
!3365 = !DILocation(line: 101, column: 7, scope: !3364)
!3366 = !DILocation(line: 101, column: 18, scope: !3364)
!3367 = !DILocation(line: 95, column: 9, scope: !3356)
!3368 = !DILocation(line: 101, column: 16, scope: !3364)
!3369 = !DILocation(line: 100, column: 7, scope: !3356)
!3370 = !DILocation(line: 102, column: 5, scope: !3364)
!3371 = !DILocation(line: 103, column: 3, scope: !3356)
!3372 = distinct !DISubprogram(name: "xmemdup", scope: !3164, file: !3164, line: 111, type: !3373, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !266, retainedNodes: !3377)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!47, !3375, !50}
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3377 = !{!3378, !3379}
!3378 = !DILocalVariable(name: "p", arg: 1, scope: !3372, file: !3164, line: 111, type: !3375)
!3379 = !DILocalVariable(name: "s", arg: 2, scope: !3372, file: !3164, line: 111, type: !50)
!3380 = !DILocation(line: 111, column: 22, scope: !3372)
!3381 = !DILocation(line: 111, column: 32, scope: !3372)
!3382 = !DILocation(line: 39, column: 17, scope: !3163, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 113, column: 18, scope: !3372)
!3384 = !DILocation(line: 41, column: 13, scope: !3163, inlinedAt: !3383)
!3385 = !DILocation(line: 41, column: 9, scope: !3163, inlinedAt: !3383)
!3386 = !DILocation(line: 42, column: 8, scope: !3174, inlinedAt: !3383)
!3387 = !DILocation(line: 42, column: 15, scope: !3174, inlinedAt: !3383)
!3388 = !DILocation(line: 42, column: 10, scope: !3174, inlinedAt: !3383)
!3389 = !DILocation(line: 43, column: 5, scope: !3174, inlinedAt: !3383)
!3390 = !DILocation(line: 113, column: 10, scope: !3372)
!3391 = !DILocation(line: 113, column: 3, scope: !3372)
!3392 = distinct !DISubprogram(name: "xstrdup", scope: !3164, file: !3164, line: 119, type: !2464, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !266, retainedNodes: !3393)
!3393 = !{!3394}
!3394 = !DILocalVariable(name: "string", arg: 1, scope: !3392, file: !3164, line: 119, type: !76)
!3395 = !DILocation(line: 119, column: 22, scope: !3392)
!3396 = !DILocation(line: 121, column: 27, scope: !3392)
!3397 = !DILocation(line: 121, column: 43, scope: !3392)
!3398 = !DILocation(line: 111, column: 22, scope: !3372, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 121, column: 10, scope: !3392)
!3400 = !DILocation(line: 111, column: 32, scope: !3372, inlinedAt: !3399)
!3401 = !DILocation(line: 39, column: 17, scope: !3163, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 113, column: 18, scope: !3372, inlinedAt: !3399)
!3403 = !DILocation(line: 41, column: 13, scope: !3163, inlinedAt: !3402)
!3404 = !DILocation(line: 41, column: 9, scope: !3163, inlinedAt: !3402)
!3405 = !DILocation(line: 42, column: 8, scope: !3174, inlinedAt: !3402)
!3406 = !DILocation(line: 42, column: 15, scope: !3174, inlinedAt: !3402)
!3407 = !DILocation(line: 42, column: 10, scope: !3174, inlinedAt: !3402)
!3408 = !DILocation(line: 43, column: 5, scope: !3174, inlinedAt: !3402)
!3409 = !DILocation(line: 113, column: 10, scope: !3372, inlinedAt: !3399)
!3410 = !DILocation(line: 121, column: 3, scope: !3392)
!3411 = distinct !DISubprogram(name: "xalloc_die", scope: !3412, file: !3412, line: 32, type: !751, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !283, retainedNodes: !169)
!3412 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3413 = !DILocation(line: 34, column: 10, scope: !3411)
!3414 = !DILocation(line: 34, column: 33, scope: !3411)
!3415 = !DILocation(line: 34, column: 3, scope: !3411)
!3416 = !DILocation(line: 40, column: 3, scope: !3411)
!3417 = distinct !DISubprogram(name: "xnumtoumax", scope: !3418, file: !3418, line: 36, type: !3419, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !285, retainedNodes: !3424)
!3418 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!3421, !76, !48, !3421, !3421, !76, !76, !48}
!3421 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !3422, line: 102, baseType: !3423)
!3422 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !119, line: 72, baseType: !52)
!3424 = !{!3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3434}
!3425 = !DILocalVariable(name: "n_str", arg: 1, scope: !3417, file: !3418, line: 36, type: !76)
!3426 = !DILocalVariable(name: "base", arg: 2, scope: !3417, file: !3418, line: 36, type: !48)
!3427 = !DILocalVariable(name: "min", arg: 3, scope: !3417, file: !3418, line: 36, type: !3421)
!3428 = !DILocalVariable(name: "max", arg: 4, scope: !3417, file: !3418, line: 36, type: !3421)
!3429 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3417, file: !3418, line: 37, type: !76)
!3430 = !DILocalVariable(name: "err", arg: 6, scope: !3417, file: !3418, line: 37, type: !76)
!3431 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3417, file: !3418, line: 37, type: !48)
!3432 = !DILocalVariable(name: "s_err", scope: !3417, file: !3418, line: 39, type: !3433)
!3433 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !289, line: 39, baseType: !288)
!3434 = !DILocalVariable(name: "tnum", scope: !3417, file: !3418, line: 41, type: !3421)
!3435 = !DILocation(line: 36, column: 26, scope: !3417)
!3436 = !DILocation(line: 36, column: 37, scope: !3417)
!3437 = !DILocation(line: 36, column: 57, scope: !3417)
!3438 = !DILocation(line: 36, column: 76, scope: !3417)
!3439 = !DILocation(line: 37, column: 26, scope: !3417)
!3440 = !DILocation(line: 37, column: 48, scope: !3417)
!3441 = !DILocation(line: 37, column: 57, scope: !3417)
!3442 = !DILocation(line: 41, column: 3, scope: !3417)
!3443 = !DILocation(line: 41, column: 17, scope: !3417)
!3444 = !DILocation(line: 42, column: 11, scope: !3417)
!3445 = !DILocation(line: 39, column: 16, scope: !3417)
!3446 = !DILocation(line: 44, column: 7, scope: !3417)
!3447 = !DILocation(line: 69, column: 50, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !3418, line: 67, column: 5)
!3449 = distinct !DILexicalBlock(scope: !3417, file: !3418, line: 66, column: 7)
!3450 = !DILocation(line: 46, column: 11, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !3418, line: 46, column: 11)
!3452 = distinct !DILexicalBlock(scope: !3453, file: !3418, line: 45, column: 5)
!3453 = distinct !DILexicalBlock(scope: !3417, file: !3418, line: 44, column: 7)
!3454 = !DILocation(line: 46, column: 16, scope: !3451)
!3455 = !DILocation(line: 46, column: 29, scope: !3451)
!3456 = !DILocation(line: 46, column: 22, scope: !3451)
!3457 = !DILocation(line: 51, column: 20, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !3418, line: 51, column: 15)
!3459 = distinct !DILexicalBlock(scope: !3451, file: !3418, line: 47, column: 9)
!3460 = !DILocation(line: 0, scope: !3458)
!3461 = !DILocation(line: 51, column: 15, scope: !3459)
!3462 = !DILocation(line: 52, column: 19, scope: !3458)
!3463 = !DILocation(line: 52, column: 13, scope: !3458)
!3464 = !DILocation(line: 58, column: 19, scope: !3458)
!3465 = !DILocation(line: 62, column: 5, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3453, file: !3418, line: 61, column: 12)
!3467 = !DILocation(line: 62, column: 11, scope: !3466)
!3468 = !DILocation(line: 64, column: 5, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3466, file: !3418, line: 63, column: 12)
!3470 = !DILocation(line: 64, column: 11, scope: !3469)
!3471 = !DILocation(line: 69, column: 14, scope: !3448)
!3472 = !DILocation(line: 69, column: 56, scope: !3448)
!3473 = !DILocation(line: 70, column: 29, scope: !3448)
!3474 = !DILocation(line: 69, column: 7, scope: !3448)
!3475 = !DILocation(line: 73, column: 10, scope: !3417)
!3476 = !DILocation(line: 71, column: 5, scope: !3448)
!3477 = !DILocation(line: 74, column: 1, scope: !3417)
!3478 = !DILocation(line: 73, column: 3, scope: !3417)
!3479 = distinct !DISubprogram(name: "xdectoumax", scope: !3418, file: !3418, line: 82, type: !3480, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !285, retainedNodes: !3482)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!3421, !76, !3421, !3421, !76, !76, !48}
!3482 = !{!3483, !3484, !3485, !3486, !3487, !3488}
!3483 = !DILocalVariable(name: "n_str", arg: 1, scope: !3479, file: !3418, line: 82, type: !76)
!3484 = !DILocalVariable(name: "min", arg: 2, scope: !3479, file: !3418, line: 82, type: !3421)
!3485 = !DILocalVariable(name: "max", arg: 3, scope: !3479, file: !3418, line: 82, type: !3421)
!3486 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3479, file: !3418, line: 83, type: !76)
!3487 = !DILocalVariable(name: "err", arg: 5, scope: !3479, file: !3418, line: 83, type: !76)
!3488 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3479, file: !3418, line: 83, type: !48)
!3489 = !DILocation(line: 82, column: 26, scope: !3479)
!3490 = !DILocation(line: 82, column: 47, scope: !3479)
!3491 = !DILocation(line: 82, column: 66, scope: !3479)
!3492 = !DILocation(line: 83, column: 26, scope: !3479)
!3493 = !DILocation(line: 83, column: 48, scope: !3479)
!3494 = !DILocation(line: 83, column: 57, scope: !3479)
!3495 = !DILocation(line: 85, column: 10, scope: !3479)
!3496 = !DILocation(line: 85, column: 3, scope: !3479)
!3497 = distinct !DISubprogram(name: "xstrtoumax", scope: !3498, file: !3498, line: 88, type: !3499, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !3502)
!3498 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!3433, !76, !798, !48, !3501, !76}
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3502 = !{!3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3515, !3516, !3519, !3520}
!3503 = !DILocalVariable(name: "s", arg: 1, scope: !3497, file: !3498, line: 88, type: !76)
!3504 = !DILocalVariable(name: "ptr", arg: 2, scope: !3497, file: !3498, line: 88, type: !798)
!3505 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3497, file: !3498, line: 88, type: !48)
!3506 = !DILocalVariable(name: "val", arg: 4, scope: !3497, file: !3498, line: 89, type: !3501)
!3507 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3497, file: !3498, line: 89, type: !76)
!3508 = !DILocalVariable(name: "t_ptr", scope: !3497, file: !3498, line: 91, type: !45)
!3509 = !DILocalVariable(name: "p", scope: !3497, file: !3498, line: 92, type: !798)
!3510 = !DILocalVariable(name: "tmp", scope: !3497, file: !3498, line: 93, type: !3421)
!3511 = !DILocalVariable(name: "err", scope: !3497, file: !3498, line: 94, type: !3433)
!3512 = !DILocalVariable(name: "q", scope: !3513, file: !3498, line: 104, type: !76)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !3498, line: 103, column: 5)
!3514 = distinct !DILexicalBlock(scope: !3497, file: !3498, line: 102, column: 7)
!3515 = !DILocalVariable(name: "ch", scope: !3513, file: !3498, line: 105, type: !54)
!3516 = !DILocalVariable(name: "base", scope: !3517, file: !3498, line: 141, type: !48)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !3498, line: 140, column: 5)
!3518 = distinct !DILexicalBlock(scope: !3497, file: !3498, line: 139, column: 7)
!3519 = !DILocalVariable(name: "suffixes", scope: !3517, file: !3498, line: 142, type: !48)
!3520 = !DILocalVariable(name: "overflow", scope: !3517, file: !3498, line: 143, type: !3433)
!3521 = !DILocation(line: 88, column: 24, scope: !3497)
!3522 = !DILocation(line: 88, column: 34, scope: !3497)
!3523 = !DILocation(line: 88, column: 43, scope: !3497)
!3524 = !DILocation(line: 89, column: 24, scope: !3497)
!3525 = !DILocation(line: 89, column: 41, scope: !3497)
!3526 = !DILocation(line: 91, column: 3, scope: !3497)
!3527 = !DILocation(line: 94, column: 16, scope: !3497)
!3528 = !DILocation(line: 96, column: 3, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !3498, line: 96, column: 3)
!3530 = distinct !DILexicalBlock(scope: !3497, file: !3498, line: 96, column: 3)
!3531 = !DILocation(line: 98, column: 8, scope: !3497)
!3532 = !DILocation(line: 92, column: 10, scope: !3497)
!3533 = !DILocation(line: 100, column: 3, scope: !3497)
!3534 = !DILocation(line: 100, column: 9, scope: !3497)
!3535 = !DILocation(line: 104, column: 19, scope: !3513)
!3536 = !DILocation(line: 105, column: 21, scope: !3513)
!3537 = !DILocation(line: 106, column: 14, scope: !3513)
!3538 = !DILocation(line: 106, column: 7, scope: !3513)
!3539 = !DILocation(line: 0, scope: !3513)
!3540 = !DILocation(line: 107, column: 15, scope: !3513)
!3541 = distinct !{!3541, !3538, !3542}
!3542 = !DILocation(line: 107, column: 17, scope: !3513)
!3543 = !DILocation(line: 108, column: 14, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3513, file: !3498, line: 108, column: 11)
!3545 = !DILocalVariable(name: "nptr", arg: 1, scope: !3546, file: !3547, line: 336, type: !3550)
!3546 = distinct !DISubprogram(name: "strtoumax", scope: !3547, file: !3547, line: 336, type: !3548, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !3552)
!3547 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!3421, !3550, !3551, !48}
!3550 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !76)
!3551 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !798)
!3552 = !{!3545, !3553, !3554}
!3553 = !DILocalVariable(name: "endptr", arg: 2, scope: !3546, file: !3547, line: 336, type: !3551)
!3554 = !DILocalVariable(name: "base", arg: 3, scope: !3546, file: !3547, line: 336, type: !48)
!3555 = !DILocation(line: 336, column: 1, scope: !3546, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 112, column: 9, scope: !3497)
!3557 = !DILocation(line: 339, column: 10, scope: !3546, inlinedAt: !3556)
!3558 = !DILocation(line: 93, column: 14, scope: !3497)
!3559 = !DILocation(line: 114, column: 7, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3497, file: !3498, line: 114, column: 7)
!3561 = !DILocation(line: 114, column: 10, scope: !3560)
!3562 = !DILocation(line: 114, column: 7, scope: !3497)
!3563 = !DILocation(line: 118, column: 11, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !3498, line: 118, column: 11)
!3565 = distinct !DILexicalBlock(scope: !3560, file: !3498, line: 115, column: 5)
!3566 = !DILocation(line: 118, column: 26, scope: !3564)
!3567 = !DILocation(line: 118, column: 29, scope: !3564)
!3568 = !DILocation(line: 118, column: 33, scope: !3564)
!3569 = !DILocation(line: 118, column: 36, scope: !3564)
!3570 = !DILocation(line: 118, column: 11, scope: !3565)
!3571 = !DILocation(line: 123, column: 12, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3560, file: !3498, line: 123, column: 12)
!3573 = !DILocation(line: 123, column: 12, scope: !3560)
!3574 = !DILocation(line: 128, column: 5, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3572, file: !3498, line: 124, column: 5)
!3576 = !DILocation(line: 0, scope: !3497)
!3577 = !DILocation(line: 133, column: 8, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3497, file: !3498, line: 133, column: 7)
!3579 = !DILocation(line: 133, column: 7, scope: !3497)
!3580 = !DILocation(line: 135, column: 12, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3578, file: !3498, line: 134, column: 5)
!3582 = !DILocation(line: 136, column: 7, scope: !3581)
!3583 = !DILocation(line: 139, column: 7, scope: !3518)
!3584 = !DILocation(line: 139, column: 11, scope: !3518)
!3585 = !DILocation(line: 139, column: 7, scope: !3497)
!3586 = !DILocation(line: 141, column: 11, scope: !3517)
!3587 = !DILocation(line: 142, column: 11, scope: !3517)
!3588 = !DILocation(line: 145, column: 12, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3517, file: !3498, line: 145, column: 11)
!3590 = !DILocation(line: 145, column: 11, scope: !3517)
!3591 = !DILocation(line: 147, column: 16, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3589, file: !3498, line: 146, column: 9)
!3593 = !DILocation(line: 148, column: 22, scope: !3592)
!3594 = !DILocation(line: 148, column: 11, scope: !3592)
!3595 = !DILocation(line: 151, column: 7, scope: !3517)
!3596 = !DILocation(line: 163, column: 15, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !3498, line: 163, column: 15)
!3598 = distinct !DILexicalBlock(scope: !3517, file: !3498, line: 152, column: 9)
!3599 = !DILocation(line: 163, column: 15, scope: !3598)
!3600 = !DILocation(line: 164, column: 21, scope: !3597)
!3601 = !DILocation(line: 164, column: 13, scope: !3597)
!3602 = !DILocation(line: 167, column: 21, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !3498, line: 167, column: 21)
!3604 = distinct !DILexicalBlock(scope: !3597, file: !3498, line: 165, column: 15)
!3605 = !DILocation(line: 167, column: 29, scope: !3603)
!3606 = !DILocation(line: 167, column: 21, scope: !3604)
!3607 = !DILocation(line: 175, column: 17, scope: !3604)
!3608 = !DILocation(line: 179, column: 7, scope: !3517)
!3609 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3610, file: !3498, line: 60, type: !48)
!3610 = distinct !DISubprogram(name: "bkm_scale", scope: !3498, file: !3498, line: 60, type: !3611, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !3613)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!3433, !3501, !48}
!3613 = !{!3614, !3609}
!3614 = !DILocalVariable(name: "x", arg: 1, scope: !3610, file: !3498, line: 60, type: !3501)
!3615 = !DILocation(line: 60, column: 31, scope: !3610, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 182, column: 22, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3517, file: !3498, line: 180, column: 9)
!3618 = !DILocation(line: 67, column: 39, scope: !3619, inlinedAt: !3616)
!3619 = distinct !DILexicalBlock(scope: !3610, file: !3498, line: 67, column: 7)
!3620 = !DILocation(line: 72, column: 6, scope: !3610, inlinedAt: !3616)
!3621 = !DILocation(line: 67, column: 7, scope: !3610, inlinedAt: !3616)
!3622 = !DILocation(line: 143, column: 20, scope: !3517)
!3623 = !DILocation(line: 183, column: 11, scope: !3617)
!3624 = !DILocation(line: 60, column: 31, scope: !3610, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 189, column: 22, scope: !3617)
!3626 = !DILocation(line: 67, column: 39, scope: !3619, inlinedAt: !3625)
!3627 = !DILocation(line: 72, column: 6, scope: !3610, inlinedAt: !3625)
!3628 = !DILocation(line: 67, column: 7, scope: !3610, inlinedAt: !3625)
!3629 = !DILocation(line: 190, column: 11, scope: !3617)
!3630 = !DILocalVariable(name: "power", arg: 3, scope: !3631, file: !3498, line: 77, type: !48)
!3631 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3498, file: !3498, line: 77, type: !3632, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !3634)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!3433, !3501, !48, !48}
!3634 = !{!3635, !3636, !3630, !3637}
!3635 = !DILocalVariable(name: "x", arg: 1, scope: !3631, file: !3498, line: 77, type: !3501)
!3636 = !DILocalVariable(name: "base", arg: 2, scope: !3631, file: !3498, line: 77, type: !48)
!3637 = !DILocalVariable(name: "err", scope: !3631, file: !3498, line: 79, type: !3433)
!3638 = !DILocation(line: 77, column: 50, scope: !3631, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 197, column: 22, scope: !3617)
!3640 = !DILocation(line: 79, column: 16, scope: !3631, inlinedAt: !3639)
!3641 = !DILocation(line: 67, column: 39, scope: !3619, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 81, column: 12, scope: !3631, inlinedAt: !3639)
!3643 = !DILocation(line: 72, column: 6, scope: !3610, inlinedAt: !3642)
!3644 = !DILocation(line: 67, column: 7, scope: !3610, inlinedAt: !3642)
!3645 = !DILocation(line: 81, column: 9, scope: !3631, inlinedAt: !3639)
!3646 = !DILocation(line: 241, column: 11, scope: !3517)
!3647 = !DILocation(line: 77, column: 50, scope: !3631, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 202, column: 22, scope: !3617)
!3649 = !DILocation(line: 79, column: 16, scope: !3631, inlinedAt: !3648)
!3650 = !DILocation(line: 67, column: 39, scope: !3619, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 81, column: 12, scope: !3631, inlinedAt: !3648)
!3652 = !DILocation(line: 72, column: 6, scope: !3610, inlinedAt: !3651)
!3653 = !DILocation(line: 67, column: 7, scope: !3610, inlinedAt: !3651)
!3654 = !DILocation(line: 81, column: 9, scope: !3631, inlinedAt: !3648)
!3655 = !DILocation(line: 77, column: 50, scope: !3631, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 207, column: 22, scope: !3617)
!3657 = !DILocation(line: 79, column: 16, scope: !3631, inlinedAt: !3656)
!3658 = !DILocation(line: 67, column: 39, scope: !3619, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 81, column: 12, scope: !3631, inlinedAt: !3656)
!3660 = !DILocation(line: 72, column: 6, scope: !3610, inlinedAt: !3659)
!3661 = !DILocation(line: 67, column: 7, scope: !3610, inlinedAt: !3659)
!3662 = !DILocation(line: 77, column: 50, scope: !3631, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 212, column: 22, scope: !3617)
!3664 = !DILocation(line: 79, column: 16, scope: !3631, inlinedAt: !3663)
!3665 = !DILocation(line: 67, column: 39, scope: !3619, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 81, column: 12, scope: !3631, inlinedAt: !3663)
!3667 = !DILocation(line: 72, column: 6, scope: !3610, inlinedAt: !3666)
!3668 = !DILocation(line: 67, column: 7, scope: !3610, inlinedAt: !3666)
!3669 = !DILocation(line: 81, column: 9, scope: !3631, inlinedAt: !3663)
!3670 = !DILocation(line: 77, column: 50, scope: !3631, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 216, column: 22, scope: !3617)
!3672 = !DILocation(line: 79, column: 16, scope: !3631, inlinedAt: !3671)
!3673 = !DILocation(line: 67, column: 39, scope: !3619, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 81, column: 12, scope: !3631, inlinedAt: !3671)
!3675 = !DILocation(line: 72, column: 6, scope: !3610, inlinedAt: !3674)
!3676 = !DILocation(line: 67, column: 7, scope: !3610, inlinedAt: !3674)
!3677 = !DILocation(line: 81, column: 9, scope: !3631, inlinedAt: !3671)
!3678 = !DILocation(line: 77, column: 50, scope: !3631, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 221, column: 22, scope: !3617)
!3680 = !DILocation(line: 79, column: 16, scope: !3631, inlinedAt: !3679)
!3681 = !DILocation(line: 67, column: 39, scope: !3619, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 81, column: 12, scope: !3631, inlinedAt: !3679)
!3683 = !DILocation(line: 72, column: 6, scope: !3610, inlinedAt: !3682)
!3684 = !DILocation(line: 67, column: 7, scope: !3610, inlinedAt: !3682)
!3685 = !DILocation(line: 81, column: 9, scope: !3631, inlinedAt: !3679)
!3686 = !DILocation(line: 60, column: 31, scope: !3610, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 225, column: 22, scope: !3617)
!3688 = !DILocation(line: 67, column: 39, scope: !3619, inlinedAt: !3687)
!3689 = !DILocation(line: 72, column: 6, scope: !3610, inlinedAt: !3687)
!3690 = !DILocation(line: 67, column: 7, scope: !3610, inlinedAt: !3687)
!3691 = !DILocation(line: 226, column: 11, scope: !3617)
!3692 = !DILocation(line: 77, column: 50, scope: !3631, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 229, column: 22, scope: !3617)
!3694 = !DILocation(line: 79, column: 16, scope: !3631, inlinedAt: !3693)
!3695 = !DILocation(line: 67, column: 39, scope: !3619, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 81, column: 12, scope: !3631, inlinedAt: !3693)
!3697 = !DILocation(line: 72, column: 6, scope: !3610, inlinedAt: !3696)
!3698 = !DILocation(line: 67, column: 7, scope: !3610, inlinedAt: !3696)
!3699 = !DILocation(line: 81, column: 9, scope: !3631, inlinedAt: !3693)
!3700 = !DILocation(line: 77, column: 50, scope: !3631, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 233, column: 22, scope: !3617)
!3702 = !DILocation(line: 79, column: 16, scope: !3631, inlinedAt: !3701)
!3703 = !DILocation(line: 67, column: 39, scope: !3619, inlinedAt: !3704)
!3704 = distinct !DILocation(line: 81, column: 12, scope: !3631, inlinedAt: !3701)
!3705 = !DILocation(line: 72, column: 6, scope: !3610, inlinedAt: !3704)
!3706 = !DILocation(line: 67, column: 7, scope: !3610, inlinedAt: !3704)
!3707 = !DILocation(line: 81, column: 9, scope: !3631, inlinedAt: !3701)
!3708 = !DILocation(line: 237, column: 16, scope: !3617)
!3709 = !DILocation(line: 238, column: 22, scope: !3617)
!3710 = !DILocation(line: 238, column: 11, scope: !3617)
!3711 = !DILocation(line: 0, scope: !3564)
!3712 = !DILocation(line: 0, scope: !3617)
!3713 = !DILocation(line: 242, column: 10, scope: !3517)
!3714 = !DILocation(line: 243, column: 11, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3517, file: !3498, line: 243, column: 11)
!3716 = !DILocation(line: 244, column: 13, scope: !3715)
!3717 = !DILocation(line: 243, column: 11, scope: !3517)
!3718 = !DILocation(line: 119, column: 13, scope: !3564)
!3719 = !DILocation(line: 247, column: 8, scope: !3497)
!3720 = !DILocation(line: 248, column: 3, scope: !3497)
!3721 = !DILocation(line: 0, scope: !3544)
!3722 = !DILocation(line: 249, column: 1, scope: !3497)
!3723 = distinct !DISubprogram(name: "rpl_calloc", scope: !3724, file: !3724, line: 42, type: !3150, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !300, retainedNodes: !3725)
!3724 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3725 = !{!3726, !3727, !3728, !3729}
!3726 = !DILocalVariable(name: "n", arg: 1, scope: !3723, file: !3724, line: 42, type: !50)
!3727 = !DILocalVariable(name: "s", arg: 2, scope: !3723, file: !3724, line: 42, type: !50)
!3728 = !DILocalVariable(name: "result", scope: !3723, file: !3724, line: 44, type: !47)
!3729 = !DILocalVariable(name: "bytes", scope: !3730, file: !3724, line: 56, type: !50)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !3724, line: 53, column: 5)
!3731 = distinct !DILexicalBlock(scope: !3723, file: !3724, line: 47, column: 7)
!3732 = !DILocation(line: 42, column: 20, scope: !3723)
!3733 = !DILocation(line: 42, column: 30, scope: !3723)
!3734 = !DILocation(line: 47, column: 9, scope: !3731)
!3735 = !DILocation(line: 47, column: 19, scope: !3731)
!3736 = !DILocation(line: 47, column: 14, scope: !3731)
!3737 = !DILocation(line: 56, column: 24, scope: !3730)
!3738 = !DILocation(line: 56, column: 14, scope: !3730)
!3739 = !DILocation(line: 57, column: 17, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3730, file: !3724, line: 57, column: 11)
!3741 = !DILocation(line: 57, column: 21, scope: !3740)
!3742 = !DILocation(line: 57, column: 11, scope: !3730)
!3743 = !DILocation(line: 59, column: 11, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3740, file: !3724, line: 58, column: 9)
!3745 = !DILocation(line: 59, column: 17, scope: !3744)
!3746 = !DILocation(line: 65, column: 12, scope: !3723)
!3747 = !DILocation(line: 44, column: 9, scope: !3723)
!3748 = !DILocation(line: 72, column: 3, scope: !3723)
!3749 = !DILocation(line: 0, scope: !3744)
!3750 = !DILocation(line: 73, column: 1, scope: !3723)
!3751 = distinct !DISubprogram(name: "rpl_fclose", scope: !3752, file: !3752, line: 58, type: !3753, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !302, retainedNodes: !3789)
!3752 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!48, !3755}
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !3757)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !3758)
!3758 = !{!3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3757, file: !96, line: 51, baseType: !48, size: 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3757, file: !96, line: 54, baseType: !45, size: 64, offset: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3757, file: !96, line: 55, baseType: !45, size: 64, offset: 128)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3757, file: !96, line: 56, baseType: !45, size: 64, offset: 192)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3757, file: !96, line: 57, baseType: !45, size: 64, offset: 256)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3757, file: !96, line: 58, baseType: !45, size: 64, offset: 320)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3757, file: !96, line: 59, baseType: !45, size: 64, offset: 384)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3757, file: !96, line: 60, baseType: !45, size: 64, offset: 448)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3757, file: !96, line: 61, baseType: !45, size: 64, offset: 512)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3757, file: !96, line: 64, baseType: !45, size: 64, offset: 576)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3757, file: !96, line: 65, baseType: !45, size: 64, offset: 640)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3757, file: !96, line: 66, baseType: !45, size: 64, offset: 704)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3757, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3757, file: !96, line: 70, baseType: !3773, size: 64, offset: 832)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3757, file: !96, line: 72, baseType: !48, size: 32, offset: 896)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3757, file: !96, line: 73, baseType: !48, size: 32, offset: 928)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3757, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3757, file: !96, line: 77, baseType: !49, size: 16, offset: 1024)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3757, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3757, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3757, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3757, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3757, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3757, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3757, file: !96, line: 93, baseType: !3773, size: 64, offset: 1344)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3757, file: !96, line: 94, baseType: !47, size: 64, offset: 1408)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3757, file: !96, line: 95, baseType: !50, size: 64, offset: 1472)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3757, file: !96, line: 96, baseType: !48, size: 32, offset: 1536)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3757, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!3789 = !{!3790, !3791, !3792, !3793}
!3790 = !DILocalVariable(name: "fp", arg: 1, scope: !3751, file: !3752, line: 58, type: !3755)
!3791 = !DILocalVariable(name: "saved_errno", scope: !3751, file: !3752, line: 60, type: !48)
!3792 = !DILocalVariable(name: "fd", scope: !3751, file: !3752, line: 61, type: !48)
!3793 = !DILocalVariable(name: "result", scope: !3751, file: !3752, line: 62, type: !48)
!3794 = !DILocation(line: 58, column: 19, scope: !3751)
!3795 = !DILocation(line: 60, column: 7, scope: !3751)
!3796 = !DILocation(line: 62, column: 7, scope: !3751)
!3797 = !DILocation(line: 65, column: 8, scope: !3751)
!3798 = !DILocation(line: 61, column: 7, scope: !3751)
!3799 = !DILocation(line: 66, column: 10, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3751, file: !3752, line: 66, column: 7)
!3801 = !DILocation(line: 66, column: 7, scope: !3751)
!3802 = !DILocation(line: 67, column: 12, scope: !3800)
!3803 = !DILocation(line: 67, column: 5, scope: !3800)
!3804 = !DILocation(line: 72, column: 9, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3751, file: !3752, line: 72, column: 7)
!3806 = !DILocation(line: 72, column: 23, scope: !3805)
!3807 = !DILocation(line: 72, column: 33, scope: !3805)
!3808 = !DILocation(line: 72, column: 26, scope: !3805)
!3809 = !DILocation(line: 72, column: 59, scope: !3805)
!3810 = !DILocation(line: 73, column: 7, scope: !3805)
!3811 = !DILocation(line: 73, column: 10, scope: !3805)
!3812 = !DILocation(line: 72, column: 7, scope: !3751)
!3813 = !DILocation(line: 100, column: 12, scope: !3751)
!3814 = !DILocation(line: 105, column: 7, scope: !3751)
!3815 = !DILocation(line: 74, column: 19, scope: !3805)
!3816 = !DILocation(line: 105, column: 19, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3751, file: !3752, line: 105, column: 7)
!3818 = !DILocation(line: 107, column: 13, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3817, file: !3752, line: 106, column: 5)
!3820 = !DILocation(line: 109, column: 5, scope: !3819)
!3821 = !DILocation(line: 0, scope: !3751)
!3822 = !DILocation(line: 112, column: 1, scope: !3751)
!3823 = distinct !DISubprogram(name: "rpl_fflush", scope: !3824, file: !3824, line: 129, type: !3825, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !304, retainedNodes: !3861)
!3824 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!48, !3827}
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !3829)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !3830)
!3830 = !{!3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3829, file: !96, line: 51, baseType: !48, size: 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3829, file: !96, line: 54, baseType: !45, size: 64, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3829, file: !96, line: 55, baseType: !45, size: 64, offset: 128)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3829, file: !96, line: 56, baseType: !45, size: 64, offset: 192)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3829, file: !96, line: 57, baseType: !45, size: 64, offset: 256)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3829, file: !96, line: 58, baseType: !45, size: 64, offset: 320)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3829, file: !96, line: 59, baseType: !45, size: 64, offset: 384)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3829, file: !96, line: 60, baseType: !45, size: 64, offset: 448)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3829, file: !96, line: 61, baseType: !45, size: 64, offset: 512)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3829, file: !96, line: 64, baseType: !45, size: 64, offset: 576)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3829, file: !96, line: 65, baseType: !45, size: 64, offset: 640)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3829, file: !96, line: 66, baseType: !45, size: 64, offset: 704)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3829, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3829, file: !96, line: 70, baseType: !3845, size: 64, offset: 832)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3829, file: !96, line: 72, baseType: !48, size: 32, offset: 896)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3829, file: !96, line: 73, baseType: !48, size: 32, offset: 928)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3829, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3829, file: !96, line: 77, baseType: !49, size: 16, offset: 1024)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3829, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3829, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3829, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3829, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3829, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3829, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3829, file: !96, line: 93, baseType: !3845, size: 64, offset: 1344)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3829, file: !96, line: 94, baseType: !47, size: 64, offset: 1408)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3829, file: !96, line: 95, baseType: !50, size: 64, offset: 1472)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3829, file: !96, line: 96, baseType: !48, size: 32, offset: 1536)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3829, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!3861 = !{!3862}
!3862 = !DILocalVariable(name: "stream", arg: 1, scope: !3823, file: !3824, line: 129, type: !3827)
!3863 = !DILocation(line: 129, column: 19, scope: !3823)
!3864 = !DILocation(line: 150, column: 14, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3823, file: !3824, line: 150, column: 7)
!3866 = !DILocation(line: 150, column: 22, scope: !3865)
!3867 = !DILocation(line: 150, column: 27, scope: !3865)
!3868 = !DILocation(line: 150, column: 7, scope: !3823)
!3869 = !DILocation(line: 151, column: 12, scope: !3865)
!3870 = !DILocation(line: 151, column: 5, scope: !3865)
!3871 = !DILocalVariable(name: "fp", arg: 1, scope: !3872, file: !3824, line: 41, type: !3827)
!3872 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3824, file: !3824, line: 41, type: !3873, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !304, retainedNodes: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{null, !3827}
!3875 = !{!3871}
!3876 = !DILocation(line: 41, column: 48, scope: !3872, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 156, column: 3, scope: !3823)
!3878 = !DILocation(line: 43, column: 11, scope: !3879, inlinedAt: !3877)
!3879 = distinct !DILexicalBlock(scope: !3872, file: !3824, line: 43, column: 7)
!3880 = !DILocation(line: 43, column: 18, scope: !3879, inlinedAt: !3877)
!3881 = !DILocation(line: 43, column: 7, scope: !3872, inlinedAt: !3877)
!3882 = !DILocation(line: 45, column: 5, scope: !3879, inlinedAt: !3877)
!3883 = !DILocation(line: 158, column: 10, scope: !3823)
!3884 = !DILocation(line: 158, column: 3, scope: !3823)
!3885 = !DILocation(line: 0, scope: !3823)
!3886 = !DILocation(line: 232, column: 1, scope: !3823)
!3887 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3888, file: !3888, line: 28, type: !3889, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !306, retainedNodes: !3925)
!3888 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!48, !3891, !1128, !48}
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !3893)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !3894)
!3894 = !{!3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3893, file: !96, line: 51, baseType: !48, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3893, file: !96, line: 54, baseType: !45, size: 64, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3893, file: !96, line: 55, baseType: !45, size: 64, offset: 128)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3893, file: !96, line: 56, baseType: !45, size: 64, offset: 192)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3893, file: !96, line: 57, baseType: !45, size: 64, offset: 256)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3893, file: !96, line: 58, baseType: !45, size: 64, offset: 320)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3893, file: !96, line: 59, baseType: !45, size: 64, offset: 384)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3893, file: !96, line: 60, baseType: !45, size: 64, offset: 448)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3893, file: !96, line: 61, baseType: !45, size: 64, offset: 512)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3893, file: !96, line: 64, baseType: !45, size: 64, offset: 576)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3893, file: !96, line: 65, baseType: !45, size: 64, offset: 640)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3893, file: !96, line: 66, baseType: !45, size: 64, offset: 704)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3893, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3893, file: !96, line: 70, baseType: !3909, size: 64, offset: 832)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3893, file: !96, line: 72, baseType: !48, size: 32, offset: 896)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3893, file: !96, line: 73, baseType: !48, size: 32, offset: 928)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3893, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3893, file: !96, line: 77, baseType: !49, size: 16, offset: 1024)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3893, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3893, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3893, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3893, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3893, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3893, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3893, file: !96, line: 93, baseType: !3909, size: 64, offset: 1344)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3893, file: !96, line: 94, baseType: !47, size: 64, offset: 1408)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3893, file: !96, line: 95, baseType: !50, size: 64, offset: 1472)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3893, file: !96, line: 96, baseType: !48, size: 32, offset: 1536)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3893, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!3925 = !{!3926, !3927, !3928, !3929}
!3926 = !DILocalVariable(name: "fp", arg: 1, scope: !3887, file: !3888, line: 28, type: !3891)
!3927 = !DILocalVariable(name: "offset", arg: 2, scope: !3887, file: !3888, line: 28, type: !1128)
!3928 = !DILocalVariable(name: "whence", arg: 3, scope: !3887, file: !3888, line: 28, type: !48)
!3929 = !DILocalVariable(name: "pos", scope: !3930, file: !3888, line: 117, type: !1128)
!3930 = distinct !DILexicalBlock(scope: !3931, file: !3888, line: 113, column: 5)
!3931 = distinct !DILexicalBlock(scope: !3887, file: !3888, line: 52, column: 7)
!3932 = !DILocation(line: 28, column: 15, scope: !3887)
!3933 = !DILocation(line: 28, column: 25, scope: !3887)
!3934 = !DILocation(line: 28, column: 37, scope: !3887)
!3935 = !DILocation(line: 52, column: 11, scope: !3931)
!3936 = !DILocation(line: 52, column: 31, scope: !3931)
!3937 = !DILocation(line: 52, column: 24, scope: !3931)
!3938 = !DILocation(line: 53, column: 7, scope: !3931)
!3939 = !DILocation(line: 53, column: 14, scope: !3931)
!3940 = !DILocation(line: 53, column: 35, scope: !3931)
!3941 = !{!918, !744, i64 32}
!3942 = !DILocation(line: 53, column: 28, scope: !3931)
!3943 = !DILocation(line: 54, column: 7, scope: !3931)
!3944 = !DILocation(line: 54, column: 14, scope: !3931)
!3945 = !{!918, !744, i64 72}
!3946 = !DILocation(line: 54, column: 28, scope: !3931)
!3947 = !DILocation(line: 52, column: 7, scope: !3887)
!3948 = !DILocation(line: 117, column: 26, scope: !3930)
!3949 = !DILocation(line: 117, column: 19, scope: !3930)
!3950 = !DILocation(line: 117, column: 13, scope: !3930)
!3951 = !DILocation(line: 118, column: 15, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3930, file: !3888, line: 118, column: 11)
!3953 = !DILocation(line: 118, column: 11, scope: !3930)
!3954 = !DILocation(line: 129, column: 11, scope: !3930)
!3955 = !DILocation(line: 129, column: 18, scope: !3930)
!3956 = !DILocation(line: 130, column: 11, scope: !3930)
!3957 = !DILocation(line: 130, column: 19, scope: !3930)
!3958 = !{!918, !919, i64 144}
!3959 = !DILocation(line: 161, column: 7, scope: !3930)
!3960 = !DILocation(line: 163, column: 10, scope: !3887)
!3961 = !DILocation(line: 163, column: 3, scope: !3887)
!3962 = !DILocation(line: 0, scope: !3887)
!3963 = !DILocation(line: 164, column: 1, scope: !3887)
!3964 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3965, file: !3965, line: 385, type: !3966, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !308, retainedNodes: !3980)
!3965 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!50, !3968, !76, !50, !3969}
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1425, line: 6, baseType: !3971)
!3971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1427, line: 21, baseType: !3972)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1427, line: 13, size: 64, elements: !3973)
!3973 = !{!3974, !3975}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3972, file: !1427, line: 15, baseType: !48, size: 32)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3972, file: !1427, line: 20, baseType: !3976, size: 32, offset: 32)
!3976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3972, file: !1427, line: 16, size: 32, elements: !3977)
!3977 = !{!3978, !3979}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3976, file: !1427, line: 18, baseType: !7, size: 32)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3976, file: !1427, line: 19, baseType: !1436, size: 32)
!3980 = !{!3981, !3982, !3983, !3984, !3985, !3986, !3987}
!3981 = !DILocalVariable(name: "pwc", arg: 1, scope: !3964, file: !3965, line: 385, type: !3968)
!3982 = !DILocalVariable(name: "s", arg: 2, scope: !3964, file: !3965, line: 385, type: !76)
!3983 = !DILocalVariable(name: "n", arg: 3, scope: !3964, file: !3965, line: 385, type: !50)
!3984 = !DILocalVariable(name: "ps", arg: 4, scope: !3964, file: !3965, line: 385, type: !3969)
!3985 = !DILocalVariable(name: "ret", scope: !3964, file: !3965, line: 387, type: !50)
!3986 = !DILocalVariable(name: "wc", scope: !3964, file: !3965, line: 388, type: !1441)
!3987 = !DILocalVariable(name: "uc", scope: !3988, file: !3965, line: 449, type: !54)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !3965, line: 448, column: 5)
!3989 = distinct !DILexicalBlock(scope: !3964, file: !3965, line: 447, column: 7)
!3990 = !DILocation(line: 385, column: 23, scope: !3964)
!3991 = !DILocation(line: 385, column: 40, scope: !3964)
!3992 = !DILocation(line: 385, column: 50, scope: !3964)
!3993 = !DILocation(line: 385, column: 64, scope: !3964)
!3994 = !DILocation(line: 388, column: 3, scope: !3964)
!3995 = !DILocation(line: 404, column: 9, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3964, file: !3965, line: 404, column: 7)
!3997 = !DILocation(line: 404, column: 7, scope: !3964)
!3998 = !DILocation(line: 439, column: 9, scope: !3964)
!3999 = !DILocation(line: 387, column: 10, scope: !3964)
!4000 = !DILocation(line: 447, column: 19, scope: !3989)
!4001 = !DILocation(line: 447, column: 31, scope: !3989)
!4002 = !DILocation(line: 447, column: 26, scope: !3989)
!4003 = !DILocation(line: 447, column: 41, scope: !3989)
!4004 = !DILocation(line: 447, column: 7, scope: !3964)
!4005 = !DILocation(line: 449, column: 26, scope: !3988)
!4006 = !DILocation(line: 449, column: 21, scope: !3988)
!4007 = !DILocation(line: 450, column: 14, scope: !3988)
!4008 = !DILocation(line: 450, column: 12, scope: !3988)
!4009 = !DILocation(line: 0, scope: !3988)
!4010 = !DILocation(line: 456, column: 1, scope: !3964)
!4011 = distinct !DISubprogram(name: "close_stream", scope: !4012, file: !4012, line: 56, type: !4013, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !311, retainedNodes: !4049)
!4012 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!48, !4015}
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !4017)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !4018)
!4018 = !{!4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4017, file: !96, line: 51, baseType: !48, size: 32)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4017, file: !96, line: 54, baseType: !45, size: 64, offset: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4017, file: !96, line: 55, baseType: !45, size: 64, offset: 128)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4017, file: !96, line: 56, baseType: !45, size: 64, offset: 192)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4017, file: !96, line: 57, baseType: !45, size: 64, offset: 256)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4017, file: !96, line: 58, baseType: !45, size: 64, offset: 320)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4017, file: !96, line: 59, baseType: !45, size: 64, offset: 384)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4017, file: !96, line: 60, baseType: !45, size: 64, offset: 448)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4017, file: !96, line: 61, baseType: !45, size: 64, offset: 512)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4017, file: !96, line: 64, baseType: !45, size: 64, offset: 576)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4017, file: !96, line: 65, baseType: !45, size: 64, offset: 640)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4017, file: !96, line: 66, baseType: !45, size: 64, offset: 704)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4017, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4017, file: !96, line: 70, baseType: !4033, size: 64, offset: 832)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4017, file: !96, line: 72, baseType: !48, size: 32, offset: 896)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4017, file: !96, line: 73, baseType: !48, size: 32, offset: 928)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4017, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4017, file: !96, line: 77, baseType: !49, size: 16, offset: 1024)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4017, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4017, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4017, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4017, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4017, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4017, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4017, file: !96, line: 93, baseType: !4033, size: 64, offset: 1344)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4017, file: !96, line: 94, baseType: !47, size: 64, offset: 1408)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4017, file: !96, line: 95, baseType: !50, size: 64, offset: 1472)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4017, file: !96, line: 96, baseType: !48, size: 32, offset: 1536)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4017, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!4049 = !{!4050, !4051, !4053, !4054}
!4050 = !DILocalVariable(name: "stream", arg: 1, scope: !4011, file: !4012, line: 56, type: !4015)
!4051 = !DILocalVariable(name: "some_pending", scope: !4011, file: !4012, line: 58, type: !4052)
!4052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!4053 = !DILocalVariable(name: "prev_fail", scope: !4011, file: !4012, line: 59, type: !4052)
!4054 = !DILocalVariable(name: "fclose_fail", scope: !4011, file: !4012, line: 60, type: !4052)
!4055 = !DILocation(line: 56, column: 21, scope: !4011)
!4056 = !DILocation(line: 58, column: 30, scope: !4011)
!4057 = !DILocalVariable(name: "__stream", arg: 1, scope: !4058, file: !910, line: 135, type: !4015)
!4058 = distinct !DISubprogram(name: "ferror_unlocked", scope: !910, file: !910, line: 135, type: !4013, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !311, retainedNodes: !4059)
!4059 = !{!4057}
!4060 = !DILocation(line: 135, column: 1, scope: !4058, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 59, column: 27, scope: !4011)
!4062 = !DILocation(line: 137, column: 10, scope: !4058, inlinedAt: !4061)
!4063 = !DILocation(line: 59, column: 43, scope: !4011)
!4064 = !DILocation(line: 60, column: 29, scope: !4011)
!4065 = !DILocation(line: 60, column: 45, scope: !4011)
!4066 = !DILocation(line: 70, column: 17, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4011, file: !4012, line: 70, column: 7)
!4068 = !DILocation(line: 58, column: 50, scope: !4011)
!4069 = !DILocation(line: 70, column: 33, scope: !4067)
!4070 = !DILocation(line: 70, column: 53, scope: !4067)
!4071 = !DILocation(line: 70, column: 59, scope: !4067)
!4072 = !DILocation(line: 70, column: 7, scope: !4011)
!4073 = !DILocation(line: 72, column: 11, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4067, file: !4012, line: 71, column: 5)
!4075 = !DILocation(line: 73, column: 9, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4074, file: !4012, line: 72, column: 11)
!4077 = !DILocation(line: 73, column: 15, scope: !4076)
!4078 = !DILocation(line: 0, scope: !4011)
!4079 = !DILocation(line: 78, column: 1, scope: !4011)
!4080 = distinct !DISubprogram(name: "hard_locale", scope: !4081, file: !4081, line: 38, type: !4082, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !313, retainedNodes: !4084)
!4081 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!58, !48}
!4084 = !{!4085, !4086, !4087}
!4085 = !DILocalVariable(name: "category", arg: 1, scope: !4080, file: !4081, line: 38, type: !48)
!4086 = !DILocalVariable(name: "hard", scope: !4080, file: !4081, line: 40, type: !58)
!4087 = !DILocalVariable(name: "p", scope: !4080, file: !4081, line: 41, type: !76)
!4088 = !DILocation(line: 38, column: 18, scope: !4080)
!4089 = !DILocation(line: 40, column: 8, scope: !4080)
!4090 = !DILocation(line: 41, column: 19, scope: !4080)
!4091 = !DILocation(line: 41, column: 15, scope: !4080)
!4092 = !DILocation(line: 43, column: 7, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4080, file: !4081, line: 43, column: 7)
!4094 = !DILocation(line: 43, column: 7, scope: !4080)
!4095 = !DILocation(line: 47, column: 15, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4097, file: !4081, line: 47, column: 15)
!4097 = distinct !DILexicalBlock(scope: !4098, file: !4081, line: 46, column: 9)
!4098 = distinct !DILexicalBlock(scope: !4099, file: !4081, line: 45, column: 11)
!4099 = distinct !DILexicalBlock(scope: !4093, file: !4081, line: 44, column: 5)
!4100 = !DILocation(line: 47, column: 31, scope: !4096)
!4101 = !DILocation(line: 47, column: 36, scope: !4096)
!4102 = !DILocation(line: 47, column: 39, scope: !4096)
!4103 = !DILocation(line: 47, column: 59, scope: !4096)
!4104 = !DILocation(line: 47, column: 15, scope: !4097)
!4105 = !DILocation(line: 48, column: 13, scope: !4096)
!4106 = !DILocation(line: 71, column: 3, scope: !4080)
!4107 = distinct !DISubprogram(name: "locale_charset", scope: !4108, file: !4108, line: 687, type: !4109, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !315, retainedNodes: !4111)
!4108 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!76}
!4111 = !{!4112}
!4112 = !DILocalVariable(name: "codeset", scope: !4107, file: !4108, line: 689, type: !76)
!4113 = !DILocation(line: 696, column: 13, scope: !4107)
!4114 = !DILocation(line: 689, column: 15, scope: !4107)
!4115 = !DILocation(line: 754, column: 15, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4107, file: !4108, line: 754, column: 7)
!4117 = !DILocation(line: 754, column: 7, scope: !4107)
!4118 = !DILocation(line: 907, column: 13, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4120, file: !4108, line: 907, column: 13)
!4120 = distinct !DILexicalBlock(scope: !4121, file: !4108, line: 897, column: 7)
!4121 = distinct !DILexicalBlock(scope: !4107, file: !4108, line: 856, column: 3)
!4122 = !DILocation(line: 907, column: 24, scope: !4119)
!4123 = !DILocation(line: 907, column: 13, scope: !4120)
!4124 = !DILocation(line: 995, column: 3, scope: !4107)
