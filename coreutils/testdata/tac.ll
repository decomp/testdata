; ModuleID = 'coreutils-8.27/src/tac.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.re_pattern_buffer = type { %struct.re_dfa_t*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.re_dfa_t = type opaque
%struct.re_registers = type { i32, i32*, i32* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Write each FILE to standard output, last line first.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.19 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [222 x i8] c"  -b, --before             attach the separator before instead of after\0A  -r, --regex              interpret the separator as a regular expression\0A  -s, --separator=STRING   use STRING as the separator instead of newline\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tac\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.31 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@separator = internal unnamed_addr global i8* null, align 8, !dbg !0
@sentinel_length = internal unnamed_addr global i64 0, align 8, !dbg !54
@separator_ends_record = internal unnamed_addr global i1 false, align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"brs:\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !115
@optarg = external local_unnamed_addr global i8*, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"Jay Lepreau\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"separator cannot be empty\00", align 1
@compiled_separator = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !64
@compiled_separator_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !90
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@match_length = internal unnamed_addr global i64 0, align 8, !dbg !56
@read_size = internal unnamed_addr global i64 0, align 8, !dbg !60
@G_buffer_size = internal unnamed_addr global i64 0, align 8, !dbg !62
@G_buffer = internal unnamed_addr global i8* null, align 8, !dbg !58
@optind = external local_unnamed_addr global i32, align 4
@main.default_file_list = internal unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16, !dbg !31
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"failed to open %s for reading\00", align 1
@temp_stream.tempfile = internal unnamed_addr global i8* null, align 8, !dbg !129
@.str.44 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"tacXXXXXX\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"failed to create temporary file in %s\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@temp_stream.tmp_fp = internal unnamed_addr global %struct._IO_FILE* null, align 8, !dbg !199
@.str.50 = private unnamed_addr constant [30 x i8] c"failed to open %s for writing\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"failed to rewind stream for %s\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"%s: write error\00", align 1
@output.bytes_in_buffer = internal unnamed_addr global i64 0, align 8, !dbg !224
@output.buffer = internal global [8192 x i8] zeroinitializer, align 16, !dbg !211
@.str.52 = private unnamed_addr constant [16 x i8] c"%s: seek failed\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"record too large\00", align 1
@regs = internal global %struct.re_registers zeroinitializer, align 8, !dbg !201
@.str.54 = private unnamed_addr constant [35 x i8] c"error in regular expression search\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"regex\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"separator\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), align 8, !dbg !228
@.str.20 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !234
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !239
@.str.23 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.24 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !242
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !249
@.str.47 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.48 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.49 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.58, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.59, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.64, i32 0, i32 0), i8* null], align 16, !dbg !256
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !283
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !290
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !302
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.68 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.69 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.70 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.71 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !306
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !313
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !304
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !315
@.str.84 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.85 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.86 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.87 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.88 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.89 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.90 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.91 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.92 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.93 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.94 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.95 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.96 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.97 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.100 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.101 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.102 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.103 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.104 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.105 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !320
@.str.1.116 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.132 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.133 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.136 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !329
@.str.3.137 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.138 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.139 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.140 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.141 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.142 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !676

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !791 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !795, metadata !796), !dbg !797
  %2 = icmp eq i32 %0, 0, !dbg !798
  br i1 %2, label %8, label %3, !dbg !800

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !801, !tbaa !803
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !801
  %6 = load i8*, i8** @program_name, align 8, !dbg !801, !tbaa !803
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !801
  br label %45, !dbg !801

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !807
  %10 = load i8*, i8** @program_name, align 8, !dbg !807, !tbaa !803
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !807
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !809
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !809, !tbaa !803
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !809
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !810
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !810, !tbaa !803
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !810
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !815
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !815, !tbaa !803
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !815
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !818
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !818, !tbaa !803
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !818
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !819
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !819, !tbaa !803
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !819
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !820
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !820, !tbaa !803
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11, !dbg !820
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !103, metadata !796) #11, !dbg !821
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !103, metadata !796) #11, !dbg !821
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !823
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0)) #11, !dbg !823
  %32 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !824
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !111, metadata !796) #11, !dbg !825
  %33 = icmp eq i8* %32, null, !dbg !826
  br i1 %33, label %40, label %34, !dbg !828

; <label>:34:                                     ; preds = %8
  %35 = tail call i32 @strncmp(i8* nonnull %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i64 3) #14, !dbg !829
  %36 = icmp eq i32 %35, 0, !dbg !829
  br i1 %36, label %40, label %37, !dbg !830

; <label>:37:                                     ; preds = %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.31, i64 0, i64 0), i32 5) #11, !dbg !831
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !831
  br label %40, !dbg !833

; <label>:40:                                     ; preds = %8, %34, %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i32 5) #11, !dbg !834
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !834
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !835
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0)) #11, !dbg !835
  br label %45

; <label>:45:                                     ; preds = %40, %3
  tail call void @exit(i32 %0) #15, !dbg !836
  unreachable, !dbg !836
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !33 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !39, metadata !796), !dbg !837
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !40, metadata !796), !dbg !838
  %3 = load i8*, i8** %1, align 8, !dbg !839, !tbaa !803
  tail call void @set_program_name(i8* %3) #11, !dbg !840
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !841
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !842
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !843
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !844
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** @separator, align 8, !dbg !845, !tbaa !803
  store i64 1, i64* @sentinel_length, align 8, !dbg !846, !tbaa !847
  store i1 true, i1* @separator_ends_record, align 1
  br label %8, !dbg !849

; <label>:8:                                      ; preds = %14, %2
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !850
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !42, metadata !796), !dbg !851
  switch i32 %9, label %19 [
    i32 -1, label %20
    i32 98, label %10
    i32 114, label %11
    i32 115, label %12
    i32 -130, label %15
    i32 -131, label %16
  ], !dbg !849

; <label>:10:                                     ; preds = %8
  store i1 false, i1* @separator_ends_record, align 1
  br label %14, !dbg !852

; <label>:11:                                     ; preds = %8
  store i64 0, i64* @sentinel_length, align 8, !dbg !855, !tbaa !847
  br label %14, !dbg !856

; <label>:12:                                     ; preds = %8
  %13 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !857, !tbaa !803
  store i64 %13, i64* bitcast (i8** @separator to i64*), align 8, !dbg !858, !tbaa !803
  br label %14, !dbg !859

; <label>:14:                                     ; preds = %12, %11, %10
  br label %8, !dbg !850, !llvm.loop !860

; <label>:15:                                     ; preds = %8
  tail call void @usage(i32 0) #16, !dbg !862
  unreachable, !dbg !862

; <label>:16:                                     ; preds = %8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !863, !tbaa !803
  %18 = load i8*, i8** @Version, align 8, !dbg !863, !tbaa !803
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* null) #11, !dbg !863
  tail call void @exit(i32 0) #15, !dbg !863
  unreachable, !dbg !863

; <label>:19:                                     ; preds = %8
  tail call void @usage(i32 1) #16, !dbg !864
  unreachable, !dbg !864

; <label>:20:                                     ; preds = %8
  %21 = load i64, i64* @sentinel_length, align 8, !dbg !865, !tbaa !847
  %22 = icmp eq i64 %21, 0, !dbg !867
  %23 = load i8*, i8** @separator, align 8, !tbaa !803
  %24 = load i8, i8* %23, align 1, !tbaa !868
  %25 = icmp eq i8 %24, 0
  br i1 %22, label %26, label %36, !dbg !869

; <label>:26:                                     ; preds = %20
  br i1 %25, label %27, label %29, !dbg !870

; <label>:27:                                     ; preds = %26
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !872
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %28) #11, !dbg !872
  unreachable, !dbg !872

; <label>:29:                                     ; preds = %26
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.re_pattern_buffer* @compiled_separator to i8*), i8 0, i64 16, i32 8, i1 false), !dbg !874
  store <2 x i8*> <i8* getelementptr inbounds ([256 x i8], [256 x i8]* @compiled_separator_fastmap, i64 0, i64 0), i8* null>, <2 x i8*>* bitcast (i8** getelementptr inbounds (%struct.re_pattern_buffer, %struct.re_pattern_buffer* @compiled_separator, i64 0, i32 4) to <2 x i8*>*), align 8, !dbg !875, !tbaa !803
  %30 = tail call i64 @strlen(i8* %23) #14, !dbg !876
  %31 = tail call i8* @re_compile_pattern(i8* %23, i64 %30, %struct.re_pattern_buffer* nonnull @compiled_separator) #11, !dbg !877
  tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !41, metadata !796), !dbg !878
  %32 = icmp eq i8* %31, null, !dbg !879
  br i1 %32, label %33, label %35, !dbg !881

; <label>:33:                                     ; preds = %29
  %34 = load i64, i64* @sentinel_length, align 8, !dbg !882, !tbaa !847
  br label %41, !dbg !881

; <label>:35:                                     ; preds = %29
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* nonnull %31) #11, !dbg !883
  unreachable, !dbg !883

; <label>:36:                                     ; preds = %20
  br i1 %25, label %39, label %37, !dbg !884

; <label>:37:                                     ; preds = %36
  %38 = tail call i64 @strlen(i8* %23) #14, !dbg !885
  br label %39, !dbg !884

; <label>:39:                                     ; preds = %36, %37
  %40 = phi i64 [ %38, %37 ], [ 1, %36 ], !dbg !884
  store i64 %40, i64* @sentinel_length, align 8, !dbg !886, !tbaa !847
  store i64 %40, i64* @match_length, align 8, !dbg !887, !tbaa !847
  br label %41

; <label>:41:                                     ; preds = %33, %39
  %42 = phi i64 [ %34, %33 ], [ %40, %39 ], !dbg !882
  store i64 8192, i64* @read_size, align 8, !tbaa !847
  %43 = icmp ult i64 %42, 4096, !dbg !888
  br i1 %43, label %53, label %44, !dbg !889

; <label>:44:                                     ; preds = %41
  br label %45, !dbg !890

; <label>:45:                                     ; preds = %44, %49
  %46 = phi i64 [ %50, %49 ], [ 8192, %44 ]
  %47 = icmp slt i64 %46, 0, !dbg !890
  br i1 %47, label %48, label %49, !dbg !893

; <label>:48:                                     ; preds = %45
  tail call void @xalloc_die() #15, !dbg !894
  unreachable, !dbg !894

; <label>:49:                                     ; preds = %45
  %50 = shl i64 %46, 1, !dbg !895
  store i64 %50, i64* @read_size, align 8, !tbaa !847
  %51 = and i64 %46, 9223372036854775806, !dbg !896
  %52 = icmp ult i64 %42, %51, !dbg !888
  br i1 %52, label %53, label %45, !dbg !889, !llvm.loop !897

; <label>:53:                                     ; preds = %49, %41
  %54 = phi i64 [ 8192, %41 ], [ %50, %49 ]
  %55 = or i64 %54, 1, !dbg !899
  %56 = add i64 %55, %42, !dbg !900
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !45, metadata !796), !dbg !901
  %57 = shl i64 %56, 1, !dbg !902
  store i64 %57, i64* @G_buffer_size, align 8, !dbg !903, !tbaa !847
  %58 = icmp ult i64 %54, %56, !dbg !904
  %59 = icmp ult i64 %56, %57, !dbg !906
  %60 = and i1 %58, %59, !dbg !907
  br i1 %60, label %62, label %61, !dbg !907

; <label>:61:                                     ; preds = %53
  tail call void @xalloc_die() #15, !dbg !908
  unreachable, !dbg !908

; <label>:62:                                     ; preds = %53
  %63 = tail call noalias i8* @xmalloc(i64 %57) #11, !dbg !909
  store i8* %63, i8** @G_buffer, align 8, !dbg !910, !tbaa !803
  %64 = load i64, i64* @sentinel_length, align 8, !dbg !911, !tbaa !847
  %65 = icmp eq i64 %64, 0, !dbg !911
  br i1 %65, label %69, label %66, !dbg !913

; <label>:66:                                     ; preds = %62
  %67 = load i8*, i8** @separator, align 8, !dbg !914, !tbaa !803
  %68 = add i64 %64, 1, !dbg !916
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %67, i64 %68, i32 1, i1 false), !dbg !917
  br label %69, !dbg !918

; <label>:69:                                     ; preds = %62, %66
  %70 = phi i64 [ %64, %66 ], [ 1, %62 ]
  %71 = getelementptr inbounds i8, i8* %63, i64 %70
  store i8* %71, i8** @G_buffer, align 8, !tbaa !803
  %72 = load i32, i32* @optind, align 4, !dbg !919, !tbaa !920
  %73 = icmp slt i32 %72, %0, !dbg !922
  %74 = sext i32 %72 to i64, !dbg !923
  %75 = getelementptr inbounds i8*, i8** %1, i64 %74, !dbg !923
  %76 = select i1 %73, i8** %75, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @main.default_file_list, i64 0, i64 0), !dbg !919
  tail call void @llvm.dbg.value(metadata i8** %76, i64 0, metadata !46, metadata !796), !dbg !924
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !43, metadata !796), !dbg !925
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !47, metadata !796), !dbg !926
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !47, metadata !796), !dbg !926
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !43, metadata !796), !dbg !925
  %77 = load i8*, i8** %76, align 8, !dbg !927, !tbaa !803
  %78 = icmp eq i8* %77, null, !dbg !930
  br i1 %78, label %211, label %79, !dbg !930

; <label>:79:                                     ; preds = %69
  br label %80, !dbg !931

; <label>:80:                                     ; preds = %79, %203
  %81 = phi i8* [ %209, %203 ], [ %77, %79 ]
  %82 = phi i64 [ %207, %203 ], [ 0, %79 ]
  %83 = phi i8 [ %206, %203 ], [ 1, %79 ]
  tail call void @llvm.dbg.value(metadata i8* %81, i64 0, metadata !936, metadata !796) #11, !dbg !944
  tail call void @llvm.dbg.value(metadata i8 %83, i64 0, metadata !43, metadata !796), !dbg !925
  tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !47, metadata !796), !dbg !926
  %84 = tail call i32 @strcmp(i8* nonnull %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #14, !dbg !931
  %85 = icmp eq i32 %84, 0, !dbg !931
  br i1 %85, label %86, label %88, !dbg !945

; <label>:86:                                     ; preds = %80
  store i1 true, i1* @have_read_stdin, align 1
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !941, metadata !796) #11, !dbg !946
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 5) #11, !dbg !947
  tail call void @llvm.dbg.value(metadata i8* %87, i64 0, metadata !936, metadata !796) #11, !dbg !944
  br label %96, !dbg !950

; <label>:88:                                     ; preds = %80
  %89 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %81, i32 0) #11, !dbg !951
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !941, metadata !796) #11, !dbg !946
  %90 = icmp slt i32 %89, 0, !dbg !953
  br i1 %90, label %91, label %96, !dbg !955

; <label>:91:                                     ; preds = %88
  %92 = tail call i32* @__errno_location() #17, !dbg !956
  %93 = load i32, i32* %92, align 4, !dbg !956, !tbaa !920
  %94 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !958
  %95 = tail call i8* @quotearg_style(i32 4, i8* nonnull %81) #11, !dbg !959
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %93, i8* %94, i8* %95) #11, !dbg !960
  br label %203, !dbg !961

; <label>:96:                                     ; preds = %88, %86
  %97 = phi i8* [ %87, %86 ], [ %81, %88 ]
  %98 = phi i32 [ 0, %86 ], [ %89, %88 ]
  tail call void @llvm.dbg.value(metadata i32 %98, i64 0, metadata !941, metadata !796) #11, !dbg !946
  tail call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !936, metadata !796) #11, !dbg !944
  %99 = tail call i64 @lseek(i32 %98, i64 0, i32 2) #11, !dbg !962
  tail call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !938, metadata !796) #11, !dbg !963
  %100 = icmp slt i64 %99, 0, !dbg !964
  br i1 %100, label %104, label %101, !dbg !965

; <label>:101:                                    ; preds = %96
  %102 = tail call i32 @isatty(i32 %98) #11, !dbg !966
  %103 = icmp eq i32 %102, 0, !dbg !966
  br i1 %103, label %191, label %104, !dbg !967

; <label>:104:                                    ; preds = %101, %96
  tail call void @llvm.dbg.value(metadata i32 %98, i64 0, metadata !968, metadata !796) #11, !dbg !978
  tail call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !973, metadata !796) #11, !dbg !980
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, i64 0, metadata !974, metadata !796) #11, !dbg !981
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !975, metadata !796) #11, !dbg !982
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, i64 0, metadata !983, metadata !796) #11, !dbg !999
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !988, metadata !796) #11, !dbg !1001
  tail call void @llvm.dbg.value(metadata i32 %98, i64 0, metadata !989, metadata !796) #11, !dbg !1002
  tail call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !990, metadata !796) #11, !dbg !1003
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !993, metadata !796) #11, !dbg !1004
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, i64 0, metadata !991, metadata !796) #11, !dbg !1005
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !992, metadata !796) #11, !dbg !1006
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, i64 0, metadata !192, metadata !796) #11, !dbg !1007
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !193, metadata !796) #11, !dbg !1010
  %105 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1011, !tbaa !803
  %106 = icmp eq i8* %105, null, !dbg !1012
  br i1 %106, label %107, label %136, !dbg !1013

; <label>:107:                                    ; preds = %104
  %108 = tail call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0)) #11, !dbg !1014
  tail call void @llvm.dbg.value(metadata i8* %108, i64 0, metadata !194, metadata !796) #11, !dbg !1015
  %109 = icmp eq i8* %108, null, !dbg !1016
  %110 = select i1 %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i8* %108, !dbg !1016
  tail call void @llvm.dbg.value(metadata i8* %110, i64 0, metadata !197, metadata !796) #11, !dbg !1017
  %111 = tail call i8* @mfile_name_concat(i8* %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0), i8** null) #11, !dbg !1018
  store i8* %111, i8** @temp_stream.tempfile, align 8, !dbg !1019, !tbaa !803
  %112 = tail call i32 @mkstemp_safer(i8* %111) #11, !dbg !1020
  tail call void @llvm.dbg.value(metadata i32 %112, i64 0, metadata !198, metadata !796) #11, !dbg !1021
  %113 = icmp slt i32 %112, 0, !dbg !1022
  br i1 %113, label %114, label %119, !dbg !1024

; <label>:114:                                    ; preds = %107
  %115 = tail call i32* @__errno_location() #17, !dbg !1025
  %116 = load i32, i32* %115, align 4, !dbg !1025, !tbaa !920
  %117 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i64 0, i64 0), i32 5) #11, !dbg !1027
  %118 = tail call i8* @quotearg_style(i32 4, i8* %110) #11, !dbg !1028
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %116, i8* %117, i8* %118) #11, !dbg !1029
  br label %134, !dbg !1030

; <label>:119:                                    ; preds = %107
  %120 = tail call %struct._IO_FILE* @fdopen(i32 %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0)) #11, !dbg !1031
  store %struct._IO_FILE* %120, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1032, !tbaa !803
  %121 = icmp eq %struct._IO_FILE* %120, null, !dbg !1033
  br i1 %121, label %122, label %131, !dbg !1035

; <label>:122:                                    ; preds = %119
  %123 = tail call i32* @__errno_location() #17, !dbg !1036
  %124 = load i32, i32* %123, align 4, !dbg !1036, !tbaa !920
  %125 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0), i32 5) #11, !dbg !1038
  %126 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1039, !tbaa !803
  %127 = tail call i8* @quotearg_style(i32 4, i8* %126) #11, !dbg !1039
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %124, i8* %125, i8* %127) #11, !dbg !1040
  %128 = tail call i32 @close(i32 %112) #11, !dbg !1041
  %129 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1042, !tbaa !803
  %130 = tail call i32 @unlink(i8* %129) #11, !dbg !1043
  br label %134, !dbg !1043

; <label>:131:                                    ; preds = %119
  %132 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1044, !tbaa !803
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* null, i64 0, metadata !1045, metadata !796) #11, !dbg !1051
  %133 = tail call i32 @unlink(i8* %132) #11, !dbg !1053
  br label %152

; <label>:134:                                    ; preds = %122, %114
  %135 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1054, !tbaa !803
  tail call void @free(i8* %135) #11, !dbg !1055
  store i8* null, i8** @temp_stream.tempfile, align 8, !dbg !1056, !tbaa !803
  br label %193

; <label>:136:                                    ; preds = %104
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1057, !tbaa !803
  tail call void @clearerr_unlocked(%struct._IO_FILE* %137) #11, !dbg !1057
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1059, !tbaa !803
  %139 = tail call i32 @rpl_fseeko(%struct._IO_FILE* %138, i64 0, i32 0) #11, !dbg !1061
  %140 = icmp slt i32 %139, 0, !dbg !1062
  br i1 %140, label %146, label %141, !dbg !1063

; <label>:141:                                    ; preds = %136
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1064, !tbaa !803
  %143 = tail call i32 @fileno(%struct._IO_FILE* %142) #11, !dbg !1065
  %144 = tail call i32 @ftruncate(i32 %143, i64 0) #11, !dbg !1066
  %145 = icmp slt i32 %144, 0, !dbg !1067
  br i1 %145, label %146, label %152, !dbg !1068

; <label>:146:                                    ; preds = %141, %136
  %147 = tail call i32* @__errno_location() #17, !dbg !1069
  %148 = load i32, i32* %147, align 4, !dbg !1069, !tbaa !920
  %149 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i64 0, i64 0), i32 5) #11, !dbg !1071
  %150 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1072, !tbaa !803
  %151 = tail call i8* @quotearg_style(i32 4, i8* %150) #11, !dbg !1072
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %148, i8* %149, i8* %151) #11, !dbg !1073
  br label %193, !dbg !1074

; <label>:152:                                    ; preds = %141, %131
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1075, !tbaa !803
  %154 = load i64, i64* bitcast (i8** @temp_stream.tempfile to i64*), align 8, !dbg !1076, !tbaa !803
  br label %155, !dbg !1077

; <label>:155:                                    ; preds = %165, %152
  %156 = phi i64 [ 0, %152 ], [ %169, %165 ]
  tail call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !993, metadata !796) #11, !dbg !1004
  %157 = load i8*, i8** @G_buffer, align 8, !dbg !1078, !tbaa !803
  %158 = load i64, i64* @read_size, align 8, !dbg !1079, !tbaa !847
  %159 = tail call i64 @safe_read(i32 %98, i8* %157, i64 %158) #11, !dbg !1080
  tail call void @llvm.dbg.value(metadata i64 %159, i64 0, metadata !997, metadata !796) #11, !dbg !1081
  switch i64 %159, label %165 [
    i64 0, label %176
    i64 -1, label %160
  ], !dbg !1082

; <label>:160:                                    ; preds = %155
  %161 = tail call i32* @__errno_location() #17, !dbg !1083
  %162 = load i32, i32* %161, align 4, !dbg !1083, !tbaa !920
  %163 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1086
  %164 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %97) #11, !dbg !1087
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %162, i8* %163, i8* %164) #11, !dbg !1088
  br label %193, !dbg !1089

; <label>:165:                                    ; preds = %155
  %166 = load i8*, i8** @G_buffer, align 8, !dbg !1090, !tbaa !803
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %153, i64 0, metadata !991, metadata !796) #11, !dbg !1005
  %167 = tail call i64 @fwrite_unlocked(i8* %166, i64 1, i64 %159, %struct._IO_FILE* %153) #11, !dbg !1090
  %168 = icmp eq i64 %167, %159, !dbg !1092
  %169 = add i64 %159, %156, !dbg !1093
  tail call void @llvm.dbg.value(metadata i64 %169, i64 0, metadata !993, metadata !796) #11, !dbg !1004
  tail call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !993, metadata !796) #11, !dbg !1004
  br i1 %168, label %155, label %170, !dbg !1094, !llvm.loop !1095

; <label>:170:                                    ; preds = %165
  %171 = tail call i32* @__errno_location() #17, !dbg !1098
  %172 = load i32, i32* %171, align 4, !dbg !1098, !tbaa !920
  %173 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !1100
  %174 = inttoptr i64 %154 to i8*, !dbg !1101
  tail call void @llvm.dbg.value(metadata i8* %174, i64 0, metadata !992, metadata !796) #11, !dbg !1006
  %175 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %174) #11, !dbg !1101
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %172, i8* %173, i8* %175) #11, !dbg !1102
  br label %193, !dbg !1103

; <label>:176:                                    ; preds = %155
  tail call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !993, metadata !796) #11, !dbg !1004
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %153, i64 0, metadata !991, metadata !796) #11, !dbg !1005
  %177 = tail call i32 @fflush_unlocked(%struct._IO_FILE* %153) #11, !dbg !1104
  %178 = icmp eq i32 %177, 0, !dbg !1106
  br i1 %178, label %185, label %179, !dbg !1107

; <label>:179:                                    ; preds = %176
  %180 = tail call i32* @__errno_location() #17, !dbg !1108
  %181 = load i32, i32* %180, align 4, !dbg !1108, !tbaa !920
  %182 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !1110
  %183 = inttoptr i64 %154 to i8*, !dbg !1111
  tail call void @llvm.dbg.value(metadata i8* %183, i64 0, metadata !992, metadata !796) #11, !dbg !1006
  %184 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %183) #11, !dbg !1111
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %181, i8* %182, i8* %184) #11, !dbg !1112
  br label %193, !dbg !1113

; <label>:185:                                    ; preds = %176
  tail call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !976, metadata !796) #11, !dbg !1114
  %186 = icmp slt i64 %156, 0, !dbg !1115
  br i1 %186, label %193, label %187, !dbg !1117

; <label>:187:                                    ; preds = %185
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %153, i64 0, metadata !974, metadata !796) #11, !dbg !981
  %188 = tail call i32 @fileno(%struct._IO_FILE* %153) #11, !dbg !1118
  %189 = inttoptr i64 %154 to i8*, !dbg !1119
  tail call void @llvm.dbg.value(metadata i8* %189, i64 0, metadata !975, metadata !796) #11, !dbg !982
  %190 = tail call fastcc zeroext i1 @tac_seekable(i32 %188, i8* %189, i64 %156) #11, !dbg !1120
  br label %193

; <label>:191:                                    ; preds = %101
  %192 = tail call fastcc zeroext i1 @tac_seekable(i32 %98, i8* %97, i64 %99) #11, !dbg !1121
  br label %193, !dbg !967

; <label>:193:                                    ; preds = %191, %187, %185, %179, %170, %160, %146, %134
  %194 = phi i1 [ %192, %191 ], [ %190, %187 ], [ false, %185 ], [ false, %179 ], [ false, %134 ], [ false, %146 ], [ false, %160 ], [ false, %170 ]
  br i1 %85, label %203, label %195, !dbg !1122

; <label>:195:                                    ; preds = %193
  %196 = tail call i32 @close(i32 %98) #11, !dbg !1124
  %197 = icmp eq i32 %196, 0, !dbg !1125
  br i1 %197, label %203, label %198, !dbg !1126

; <label>:198:                                    ; preds = %195
  %199 = tail call i32* @__errno_location() #17, !dbg !1127
  %200 = load i32, i32* %199, align 4, !dbg !1127, !tbaa !920
  %201 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1129
  %202 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %97) #11, !dbg !1130
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %200, i8* %201, i8* %202) #11, !dbg !1131
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !937, metadata !796) #11, !dbg !1132
  br label %203, !dbg !1133

; <label>:203:                                    ; preds = %91, %193, %195, %198
  %204 = phi i1 [ false, %91 ], [ %194, %193 ], [ false, %198 ], [ %194, %195 ]
  %205 = zext i1 %204 to i8, !dbg !1134
  %206 = and i8 %83, %205, !dbg !1135
  tail call void @llvm.dbg.value(metadata i8 %206, i64 0, metadata !43, metadata !796), !dbg !925
  %207 = add i64 %82, 1, !dbg !1136
  tail call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !47, metadata !796), !dbg !926
  tail call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !47, metadata !796), !dbg !926
  tail call void @llvm.dbg.value(metadata i8 %206, i64 0, metadata !43, metadata !796), !dbg !925
  %208 = getelementptr inbounds i8*, i8** %76, i64 %207, !dbg !927
  %209 = load i8*, i8** %208, align 8, !dbg !927, !tbaa !803
  %210 = icmp eq i8* %209, null, !dbg !930
  br i1 %210, label %211, label %80, !dbg !930, !llvm.loop !1137

; <label>:211:                                    ; preds = %203, %69
  %212 = phi i8 [ 1, %69 ], [ %206, %203 ]
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !217, metadata !796) #11, !dbg !1139
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !218, metadata !796) #11, !dbg !1141
  %213 = load i64, i64* @output.bytes_in_buffer, align 8, !dbg !1142, !tbaa !847
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1143, !tbaa !803
  %215 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 %213, %struct._IO_FILE* %214) #11, !dbg !1143
  store i64 0, i64* @output.bytes_in_buffer, align 8, !tbaa !847
  %216 = load i1, i1* @have_read_stdin, align 1
  br i1 %216, label %217, label %223, !dbg !1146

; <label>:217:                                    ; preds = %211
  %218 = tail call i32 @close(i32 0) #11, !dbg !1148
  %219 = icmp slt i32 %218, 0, !dbg !1149
  br i1 %219, label %220, label %223, !dbg !1150

; <label>:220:                                    ; preds = %217
  %221 = tail call i32* @__errno_location() #17, !dbg !1151
  %222 = load i32, i32* %221, align 4, !dbg !1151, !tbaa !920
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %222, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !1153
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !43, metadata !796), !dbg !925
  br label %223, !dbg !1154

; <label>:223:                                    ; preds = %220, %217, %211
  %224 = phi i8 [ 0, %220 ], [ %212, %217 ], [ %212, %211 ]
  tail call void @llvm.dbg.value(metadata i8 %224, i64 0, metadata !43, metadata !796), !dbg !925
  %225 = and i8 %224, 1, !dbg !1155
  %226 = xor i8 %225, 1, !dbg !1155
  %227 = zext i8 %226 to i32, !dbg !1155
  ret i32 %227, !dbg !1156
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

declare i8* @re_compile_pattern(i8*, i64, %struct.re_pattern_buffer*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @unlink(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) local_unnamed_addr #2

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

declare i32 @fflush_unlocked(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @tac_seekable(i32, i8*, i64) unnamed_addr #6 !dbg !1157 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1161, metadata !796), !dbg !1194
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1162, metadata !796), !dbg !1195
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1163, metadata !796), !dbg !1196
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1167, metadata !796), !dbg !1197
  %4 = load i8*, i8** @separator, align 8, !dbg !1198, !tbaa !803
  %5 = load i8, i8* %4, align 1, !dbg !1199, !tbaa !868
  tail call void @llvm.dbg.value(metadata i8 %5, i64 0, metadata !1168, metadata !796), !dbg !1200
  %6 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1201
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1169, metadata !796), !dbg !1202
  %7 = load i64, i64* @match_length, align 8, !dbg !1203, !tbaa !847
  %8 = add i64 %7, -1, !dbg !1204
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1170, metadata !796), !dbg !1205
  %9 = load i64, i64* @read_size, align 8, !dbg !1206, !tbaa !847
  %10 = urem i64 %2, %9, !dbg !1207
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1171, metadata !796), !dbg !1208
  %11 = icmp eq i64 %10, 0, !dbg !1209
  br i1 %11, label %21, label %12, !dbg !1211

; <label>:12:                                     ; preds = %3
  %13 = sub i64 %2, %10, !dbg !1212
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1163, metadata !796), !dbg !1196
  %14 = tail call i64 @lseek(i32 %0, i64 %13, i32 0) #11, !dbg !1214
  %15 = icmp slt i64 %14, 0, !dbg !1216
  br i1 %15, label %16, label %21, !dbg !1217

; <label>:16:                                     ; preds = %12
  %17 = tail call i32* @__errno_location() #17, !dbg !1218
  %18 = load i32, i32* %17, align 4, !dbg !1218, !tbaa !920
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i32 5) #11, !dbg !1219
  %20 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #11, !dbg !1220
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %18, i8* %19, i8* %20) #11, !dbg !1221
  br label %21, !dbg !1221

; <label>:21:                                     ; preds = %3, %12, %16
  %22 = phi i64 [ %13, %16 ], [ %13, %12 ], [ %2, %3 ]
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !1163, metadata !796), !dbg !1196
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !1163, metadata !796), !dbg !1196
  %23 = load i8*, i8** @G_buffer, align 8, !dbg !1222, !tbaa !803
  %24 = load i64, i64* @read_size, align 8, !dbg !1223, !tbaa !847
  %25 = tail call i64 @safe_read(i32 %0, i8* %23, i64 %24) #11, !dbg !1224
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1166, metadata !796), !dbg !1225
  %26 = icmp eq i64 %25, 0, !dbg !1226
  %27 = icmp ne i64 %22, 0, !dbg !1227
  %28 = and i1 %27, %26, !dbg !1228
  br i1 %28, label %29, label %49, !dbg !1229

; <label>:29:                                     ; preds = %21
  br label %30, !dbg !1230

; <label>:30:                                     ; preds = %29, %41
  %31 = phi i64 [ %43, %41 ], [ %22, %29 ]
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1163, metadata !796), !dbg !1196
  %32 = load i64, i64* @read_size, align 8, !dbg !1230, !tbaa !847
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !1172, metadata !796), !dbg !1231
  %33 = sub nsw i64 0, %32, !dbg !1232
  %34 = tail call i64 @lseek(i32 %0, i64 %33, i32 1) #11, !dbg !1234
  %35 = icmp slt i64 %34, 0, !dbg !1235
  br i1 %35, label %36, label %41, !dbg !1236

; <label>:36:                                     ; preds = %30
  %37 = tail call i32* @__errno_location() #17, !dbg !1237
  %38 = load i32, i32* %37, align 4, !dbg !1237, !tbaa !920
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i32 5) #11, !dbg !1238
  %40 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #11, !dbg !1239
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %38, i8* %39, i8* %40) #11, !dbg !1240
  br label %41, !dbg !1240

; <label>:41:                                     ; preds = %36, %30
  %42 = load i64, i64* @read_size, align 8, !dbg !1241, !tbaa !847
  %43 = sub i64 %31, %42, !dbg !1242
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1163, metadata !796), !dbg !1196
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1163, metadata !796), !dbg !1196
  %44 = load i8*, i8** @G_buffer, align 8, !dbg !1222, !tbaa !803
  %45 = tail call i64 @safe_read(i32 %0, i8* %44, i64 %42) #11, !dbg !1224
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !1166, metadata !796), !dbg !1225
  %46 = icmp eq i64 %45, 0, !dbg !1226
  %47 = icmp ne i64 %43, 0, !dbg !1227
  %48 = and i1 %47, %46, !dbg !1228
  br i1 %48, label %30, label %49, !dbg !1229, !llvm.loop !1243

; <label>:49:                                     ; preds = %41, %21
  %50 = phi i64 [ %22, %21 ], [ %43, %41 ]
  %51 = phi i64 [ %25, %21 ], [ %45, %41 ]
  tail call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !1163, metadata !796), !dbg !1196
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1166, metadata !796), !dbg !1225
  %52 = load i64, i64* @read_size, align 8, !dbg !1245, !tbaa !847
  %53 = icmp eq i64 %51, %52, !dbg !1246
  br i1 %53, label %54, label %64, !dbg !1247

; <label>:54:                                     ; preds = %49
  br label %55, !dbg !1248

; <label>:55:                                     ; preds = %54, %60
  %56 = phi i64 [ %59, %60 ], [ %51, %54 ]
  %57 = phi i64 [ %61, %60 ], [ %50, %54 ]
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !1166, metadata !796), !dbg !1225
  tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !1163, metadata !796), !dbg !1196
  %58 = load i8*, i8** @G_buffer, align 8, !dbg !1248, !tbaa !803
  %59 = tail call i64 @safe_read(i32 %0, i8* %58, i64 %56) #11, !dbg !1249
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !1174, metadata !796), !dbg !1250
  switch i64 %59, label %60 [
    i64 0, label %64
    i64 -1, label %68
  ], !dbg !1251

; <label>:60:                                     ; preds = %55
  %61 = add i64 %59, %57, !dbg !1252
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !1163, metadata !796), !dbg !1196
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !1163, metadata !796), !dbg !1196
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !1166, metadata !796), !dbg !1225
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !1163, metadata !796), !dbg !1196
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !1166, metadata !796), !dbg !1225
  %62 = load i64, i64* @read_size, align 8, !dbg !1245, !tbaa !847
  %63 = icmp eq i64 %59, %62, !dbg !1246
  br i1 %63, label %55, label %73, !dbg !1247, !llvm.loop !1253

; <label>:64:                                     ; preds = %55, %49
  %65 = phi i64 [ %51, %49 ], [ %56, %55 ]
  %66 = phi i64 [ %50, %49 ], [ %57, %55 ]
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1163, metadata !796), !dbg !1196
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1166, metadata !796), !dbg !1225
  %67 = icmp eq i64 %65, -1, !dbg !1255
  br i1 %67, label %68, label %73, !dbg !1257

; <label>:68:                                     ; preds = %55, %64
  %69 = tail call i32* @__errno_location() #17, !dbg !1258
  %70 = load i32, i32* %69, align 4, !dbg !1258, !tbaa !920
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1260
  %72 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #11, !dbg !1261
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %70, i8* %71, i8* %72) #11, !dbg !1262
  br label %224, !dbg !1263

; <label>:73:                                     ; preds = %60, %64
  %74 = phi i64 [ %66, %64 ], [ %61, %60 ]
  %75 = phi i64 [ %65, %64 ], [ %59, %60 ]
  %76 = load i8*, i8** @G_buffer, align 8, !dbg !1264, !tbaa !803
  %77 = getelementptr inbounds i8, i8* %76, i64 %75, !dbg !1265
  tail call void @llvm.dbg.value(metadata i8* %77, i64 0, metadata !1165, metadata !796), !dbg !1266
  tail call void @llvm.dbg.value(metadata i8* %77, i64 0, metadata !1164, metadata !796), !dbg !1267
  %78 = load i64, i64* @sentinel_length, align 8, !dbg !1268, !tbaa !847
  %79 = icmp eq i64 %78, 0, !dbg !1268
  %80 = sub i64 1, %7, !dbg !1270
  %81 = getelementptr inbounds i8, i8* %77, i64 %80, !dbg !1270
  tail call void @llvm.dbg.value(metadata i8* %81, i64 0, metadata !1164, metadata !796), !dbg !1267
  %82 = select i1 %79, i8* %77, i8* %81, !dbg !1271
  tail call void @llvm.dbg.value(metadata i8* %82, i64 0, metadata !1164, metadata !796), !dbg !1267
  %83 = icmp eq i64 %8, 0
  br label %84, !dbg !1272

; <label>:84:                                     ; preds = %214, %73
  %85 = phi i64 [ %78, %73 ], [ %222, %214 ]
  %86 = phi i8 [ 1, %73 ], [ %215, %214 ]
  %87 = phi i8* [ %77, %73 ], [ %216, %214 ]
  %88 = phi i8* [ %82, %73 ], [ %223, %214 ]
  %89 = phi i64 [ %74, %73 ], [ %94, %214 ]
  br label %90, !dbg !1273

; <label>:90:                                     ; preds = %84, %194
  %91 = phi i64 [ %197, %194 ], [ %85, %84 ], !dbg !1274
  %92 = phi i8* [ %189, %194 ], [ %87, %84 ]
  %93 = phi i8* [ %196, %194 ], [ %88, %84 ]
  %94 = phi i64 [ %177, %194 ], [ %89, %84 ]
  tail call void @llvm.dbg.value(metadata i64 %94, i64 0, metadata !1163, metadata !796), !dbg !1196
  tail call void @llvm.dbg.value(metadata i8* %93, i64 0, metadata !1164, metadata !796), !dbg !1267
  tail call void @llvm.dbg.value(metadata i8* %92, i64 0, metadata !1165, metadata !796), !dbg !1266
  tail call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1167, metadata !796), !dbg !1197
  %95 = icmp eq i64 %91, 0, !dbg !1273
  br i1 %95, label %97, label %96, !dbg !1275

; <label>:96:                                     ; preds = %90
  br label %127, !dbg !1276

; <label>:97:                                     ; preds = %90
  %98 = load i8*, i8** @G_buffer, align 8, !dbg !1278, !tbaa !803
  %99 = ptrtoint i8* %93 to i64, !dbg !1279
  %100 = ptrtoint i8* %98 to i64, !dbg !1279
  %101 = sub i64 %99, %100, !dbg !1279
  tail call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1176, metadata !796), !dbg !1280
  %102 = trunc i64 %101 to i32, !dbg !1281
  tail call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !1180, metadata !796), !dbg !1282
  %103 = sub nsw i32 1, %102, !dbg !1283
  tail call void @llvm.dbg.value(metadata i32 %103, i64 0, metadata !1181, metadata !796), !dbg !1284
  %104 = icmp slt i32 %102, 0, !dbg !1285
  br i1 %104, label %105, label %107, !dbg !1287

; <label>:105:                                    ; preds = %97
  %106 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0), i32 5) #11, !dbg !1288
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %106) #11, !dbg !1288
  unreachable, !dbg !1288

; <label>:107:                                    ; preds = %97
  %108 = icmp eq i32 %102, 0, !dbg !1289
  br i1 %108, label %143, label %109, !dbg !1291

; <label>:109:                                    ; preds = %107
  %110 = add i64 %101, 4294967295, !dbg !1292
  %111 = trunc i64 %110 to i32, !dbg !1293
  %112 = tail call i32 @re_search(%struct.re_pattern_buffer* nonnull @compiled_separator, i8* %98, i32 %102, i32 %111, i32 %103, %struct.re_registers* nonnull @regs) #11, !dbg !1294
  tail call void @llvm.dbg.value(metadata i32 %112, i64 0, metadata !1182, metadata !796), !dbg !1295
  switch i32 %112, label %117 [
    i32 -1, label %113
    i32 -2, label %115
  ], !dbg !1296

; <label>:113:                                    ; preds = %109
  %114 = load i8*, i8** @G_buffer, align 8, !dbg !1297, !tbaa !803
  br label %143, !dbg !1296

; <label>:115:                                    ; preds = %109
  %116 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.54, i64 0, i64 0), i32 5) #11, !dbg !1298
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %116) #11, !dbg !1298
  unreachable, !dbg !1298

; <label>:117:                                    ; preds = %109
  %118 = load i8*, i8** @G_buffer, align 8, !dbg !1301, !tbaa !803
  %119 = load i32*, i32** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @regs, i64 0, i32 1), align 8, !dbg !1303, !tbaa !1304
  %120 = load i32, i32* %119, align 4, !dbg !1306, !tbaa !920
  %121 = sext i32 %120 to i64, !dbg !1307
  %122 = getelementptr inbounds i8, i8* %118, i64 %121, !dbg !1307
  tail call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !1164, metadata !796), !dbg !1267
  %123 = load i32*, i32** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @regs, i64 0, i32 2), align 8, !dbg !1308, !tbaa !1309
  %124 = load i32, i32* %123, align 4, !dbg !1310, !tbaa !920
  %125 = sub nsw i32 %124, %120, !dbg !1311
  %126 = sext i32 %125 to i64, !dbg !1310
  store i64 %126, i64* @match_length, align 8, !dbg !1312, !tbaa !847
  br label %139

; <label>:127:                                    ; preds = %136, %96
  %128 = phi i8* [ %93, %96 ], [ %129, %136 ]
  tail call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !1164, metadata !796), !dbg !1267
  %129 = getelementptr inbounds i8, i8* %128, i64 -1, !dbg !1276
  tail call void @llvm.dbg.value(metadata i8* %129, i64 0, metadata !1164, metadata !796), !dbg !1267
  %130 = load i8, i8* %129, align 1, !dbg !1313, !tbaa !868
  %131 = icmp eq i8 %130, %5, !dbg !1314
  br i1 %131, label %132, label %136, !dbg !1315

; <label>:132:                                    ; preds = %127
  br i1 %83, label %137, label %133, !dbg !1316

; <label>:133:                                    ; preds = %132
  %134 = tail call i32 @strncmp(i8* %128, i8* %6, i64 %8) #14, !dbg !1317
  %135 = icmp eq i32 %134, 0, !dbg !1317
  br i1 %135, label %137, label %136, !dbg !1318

; <label>:136:                                    ; preds = %133, %127
  br label %127, !dbg !1267, !llvm.loop !1319

; <label>:137:                                    ; preds = %132, %133
  %138 = load i8*, i8** @G_buffer, align 8, !dbg !1321, !tbaa !803
  br label %139, !dbg !1321

; <label>:139:                                    ; preds = %137, %117
  %140 = phi i8* [ %118, %117 ], [ %138, %137 ], !dbg !1321
  %141 = phi i8* [ %122, %117 ], [ %129, %137 ]
  tail call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !1164, metadata !796), !dbg !1267
  %142 = icmp ult i8* %141, %140, !dbg !1322
  br i1 %142, label %143, label %203, !dbg !1323

; <label>:143:                                    ; preds = %113, %107, %139
  %144 = phi i8* [ %140, %139 ], [ %114, %113 ], [ %98, %107 ]
  %145 = icmp eq i64 %94, 0, !dbg !1324
  br i1 %145, label %146, label %147, !dbg !1326

; <label>:146:                                    ; preds = %143
  tail call fastcc void @output(i8* %144, i8* %92), !dbg !1327
  br label %224, !dbg !1329

; <label>:147:                                    ; preds = %143
  %148 = ptrtoint i8* %92 to i64, !dbg !1330
  %149 = ptrtoint i8* %144 to i64, !dbg !1330
  %150 = sub i64 %148, %149, !dbg !1330
  tail call void @llvm.dbg.value(metadata i64 %150, i64 0, metadata !1166, metadata !796), !dbg !1225
  %151 = load i64, i64* @read_size, align 8, !dbg !1331, !tbaa !847
  %152 = icmp ugt i64 %150, %151, !dbg !1332
  br i1 %152, label %153, label %170, !dbg !1333

; <label>:153:                                    ; preds = %147
  %154 = load i64, i64* @sentinel_length, align 8, !dbg !1334, !tbaa !847
  %155 = icmp eq i64 %154, 0, !dbg !1334
  %156 = select i1 %155, i64 1, i64 %154, !dbg !1334
  tail call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1188, metadata !796), !dbg !1335
  %157 = load i64, i64* @G_buffer_size, align 8, !dbg !1336, !tbaa !847
  tail call void @llvm.dbg.value(metadata i64 %157, i64 0, metadata !1189, metadata !796), !dbg !1337
  %158 = shl i64 %151, 1, !dbg !1338
  store i64 %158, i64* @read_size, align 8, !dbg !1338, !tbaa !847
  %159 = shl i64 %151, 2, !dbg !1339
  %160 = or i64 %159, 2, !dbg !1340
  %161 = add i64 %160, %154, !dbg !1341
  store i64 %161, i64* @G_buffer_size, align 8, !dbg !1342, !tbaa !847
  %162 = icmp ult i64 %161, %157, !dbg !1343
  br i1 %162, label %163, label %164, !dbg !1345

; <label>:163:                                    ; preds = %153
  tail call void @xalloc_die() #15, !dbg !1346
  unreachable, !dbg !1346

; <label>:164:                                    ; preds = %153
  %165 = sub i64 0, %156, !dbg !1347
  %166 = getelementptr inbounds i8, i8* %144, i64 %165, !dbg !1347
  %167 = tail call i8* @xrealloc(i8* %166, i64 %161) #11, !dbg !1348
  tail call void @llvm.dbg.value(metadata i8* %167, i64 0, metadata !1183, metadata !796), !dbg !1349
  %168 = getelementptr inbounds i8, i8* %167, i64 %156, !dbg !1350
  tail call void @llvm.dbg.value(metadata i8* %168, i64 0, metadata !1183, metadata !796), !dbg !1349
  store i8* %168, i8** @G_buffer, align 8, !dbg !1351, !tbaa !803
  %169 = load i64, i64* @read_size, align 8, !dbg !1352, !tbaa !847
  br label %170, !dbg !1354

; <label>:170:                                    ; preds = %164, %147
  %171 = phi i64 [ %169, %164 ], [ %151, %147 ], !dbg !1352
  %172 = icmp ult i64 %94, %171, !dbg !1355
  br i1 %172, label %175, label %173, !dbg !1356

; <label>:173:                                    ; preds = %170
  %174 = sub i64 %94, %171, !dbg !1357
  tail call void @llvm.dbg.value(metadata i64 %174, i64 0, metadata !1163, metadata !796), !dbg !1196
  br label %176, !dbg !1358

; <label>:175:                                    ; preds = %170
  store i64 %94, i64* @read_size, align 8, !dbg !1359, !tbaa !847
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1163, metadata !796), !dbg !1196
  br label %176

; <label>:176:                                    ; preds = %175, %173
  %177 = phi i64 [ %174, %173 ], [ 0, %175 ]
  tail call void @llvm.dbg.value(metadata i64 %177, i64 0, metadata !1163, metadata !796), !dbg !1196
  %178 = tail call i64 @lseek(i32 %0, i64 %177, i32 0) #11, !dbg !1361
  %179 = icmp slt i64 %178, 0, !dbg !1363
  br i1 %179, label %180, label %185, !dbg !1364

; <label>:180:                                    ; preds = %176
  %181 = tail call i32* @__errno_location() #17, !dbg !1365
  %182 = load i32, i32* %181, align 4, !dbg !1365, !tbaa !920
  %183 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i32 5) #11, !dbg !1366
  %184 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #11, !dbg !1367
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %182, i8* %183, i8* %184) #11, !dbg !1368
  br label %185, !dbg !1368

; <label>:185:                                    ; preds = %180, %176
  %186 = load i8*, i8** @G_buffer, align 8, !dbg !1369, !tbaa !803
  %187 = load i64, i64* @read_size, align 8, !dbg !1370, !tbaa !847
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1371
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %188, i8* %186, i64 %150, i32 1, i1 false), !dbg !1372
  %189 = getelementptr inbounds i8, i8* %188, i64 %150, !dbg !1373
  tail call void @llvm.dbg.value(metadata i8* %189, i64 0, metadata !1165, metadata !796), !dbg !1266
  %190 = load i64, i64* @sentinel_length, align 8, !dbg !1374, !tbaa !847
  tail call void @llvm.dbg.value(metadata i8* %196, i64 0, metadata !1164, metadata !796), !dbg !1267
  %191 = tail call i64 @safe_read(i32 %0, i8* %186, i64 %187) #11, !dbg !1376
  %192 = load i64, i64* @read_size, align 8, !dbg !1378, !tbaa !847
  %193 = icmp eq i64 %191, %192, !dbg !1379
  br i1 %193, label %194, label %198, !dbg !1380

; <label>:194:                                    ; preds = %185
  %195 = icmp eq i64 %190, 0, !dbg !1374
  %196 = select i1 %195, i8* %189, i8* %188
  %197 = load i64, i64* @sentinel_length, align 8, !dbg !1274, !tbaa !847
  br label %90, !dbg !1380, !llvm.loop !1381

; <label>:198:                                    ; preds = %185
  %199 = tail call i32* @__errno_location() #17, !dbg !1383
  %200 = load i32, i32* %199, align 4, !dbg !1383, !tbaa !920
  %201 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1385
  %202 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #11, !dbg !1386
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %200, i8* %201, i8* %202) #11, !dbg !1387
  br label %224, !dbg !1388

; <label>:203:                                    ; preds = %139
  %204 = load i1, i1* @separator_ends_record, align 1
  br i1 %204, label %205, label %213, !dbg !1389

; <label>:205:                                    ; preds = %203
  %206 = load i64, i64* @match_length, align 8, !dbg !1390, !tbaa !847
  %207 = getelementptr inbounds i8, i8* %141, i64 %206, !dbg !1391
  tail call void @llvm.dbg.value(metadata i8* %207, i64 0, metadata !1190, metadata !796), !dbg !1392
  %208 = and i8 %86, 1, !dbg !1393
  %209 = icmp ne i8 %208, 0, !dbg !1393
  %210 = icmp eq i8* %207, %92, !dbg !1395
  %211 = and i1 %209, %210, !dbg !1396
  br i1 %211, label %214, label %212, !dbg !1396

; <label>:212:                                    ; preds = %205
  tail call fastcc void @output(i8* %207, i8* %92), !dbg !1397
  br label %214, !dbg !1397

; <label>:213:                                    ; preds = %203
  tail call fastcc void @output(i8* %141, i8* %92), !dbg !1398
  tail call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !1165, metadata !796), !dbg !1266
  br label %214

; <label>:214:                                    ; preds = %212, %205, %213
  %215 = phi i8 [ %86, %213 ], [ 0, %205 ], [ 0, %212 ]
  %216 = phi i8* [ %141, %213 ], [ %92, %205 ], [ %207, %212 ]
  tail call void @llvm.dbg.value(metadata i8* %216, i64 0, metadata !1165, metadata !796), !dbg !1266
  tail call void @llvm.dbg.value(metadata i8 %215, i64 0, metadata !1167, metadata !796), !dbg !1197
  %217 = load i64, i64* @sentinel_length, align 8, !dbg !1400, !tbaa !847
  %218 = icmp eq i64 %217, 0, !dbg !1402
  %219 = load i64, i64* @match_length, align 8, !dbg !1403
  %220 = sub i64 1, %219, !dbg !1404
  %221 = getelementptr inbounds i8, i8* %141, i64 %220, !dbg !1404
  tail call void @llvm.dbg.value(metadata i8* %221, i64 0, metadata !1164, metadata !796), !dbg !1267
  %222 = select i1 %218, i64 0, i64 %217, !dbg !1405
  %223 = select i1 %218, i8* %141, i8* %221, !dbg !1405
  br label %84, !dbg !1273, !llvm.loop !1381

; <label>:224:                                    ; preds = %198, %146, %68
  %225 = phi i1 [ false, %68 ], [ true, %146 ], [ false, %198 ]
  ret i1 %225, !dbg !1406
}

declare i32 @re_search(%struct.re_pattern_buffer*, i8*, i32, i32, i32, %struct.re_registers*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @output(i8*, i8*) unnamed_addr #6 !dbg !213 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !217, metadata !796), !dbg !1407
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !218, metadata !796), !dbg !1408
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !219, metadata !796), !dbg !1409
  %3 = load i64, i64* @output.bytes_in_buffer, align 8, !dbg !1410, !tbaa !847
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !220, metadata !796), !dbg !1411
  %4 = icmp eq i8* %0, null, !dbg !1412
  br i1 %4, label %5, label %8, !dbg !1413

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1414, !tbaa !803
  %7 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 %3, %struct._IO_FILE* %6) #11, !dbg !1414
  br label %36, !dbg !1415

; <label>:8:                                      ; preds = %2
  %9 = sub i64 8192, %3, !dbg !1416
  %10 = ptrtoint i8* %1 to i64, !dbg !1417
  %11 = ptrtoint i8* %0 to i64, !dbg !1417
  %12 = sub i64 %10, %11, !dbg !1417
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !220, metadata !796), !dbg !1411
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !219, metadata !796), !dbg !1409
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !217, metadata !796), !dbg !1407
  %13 = icmp ult i64 %12, %9, !dbg !1418
  %14 = getelementptr inbounds [8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 %3
  br i1 %13, label %30, label %15, !dbg !1419

; <label>:15:                                     ; preds = %8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !217, metadata !796), !dbg !1407
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !219, metadata !796), !dbg !1409
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !220, metadata !796), !dbg !1411
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %0, i64 %9, i32 1, i1 false), !dbg !1420
  %16 = sub i64 %12, %9, !dbg !1422
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !219, metadata !796), !dbg !1409
  %17 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !1423
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !217, metadata !796), !dbg !1407
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1424, !tbaa !803
  %19 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 8192, %struct._IO_FILE* %18) #11, !dbg !1424
  store i64 0, i64* @output.bytes_in_buffer, align 8, !dbg !1425, !tbaa !847
  tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !220, metadata !796), !dbg !1411
  tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !220, metadata !796), !dbg !1411
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !219, metadata !796), !dbg !1409
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !217, metadata !796), !dbg !1407
  %20 = icmp ult i64 %16, 8192, !dbg !1418
  br i1 %20, label %30, label %21, !dbg !1419, !llvm.loop !1426

; <label>:21:                                     ; preds = %15
  br label %22, !dbg !1420

; <label>:22:                                     ; preds = %21, %22
  %23 = phi i64 [ %25, %22 ], [ %16, %21 ]
  %24 = phi i8* [ %26, %22 ], [ %17, %21 ]
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !217, metadata !796), !dbg !1407
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !219, metadata !796), !dbg !1409
  tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !220, metadata !796), !dbg !1411
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i8* %24, i64 8192, i32 1, i1 false), !dbg !1420
  %25 = add i64 %23, -8192, !dbg !1422
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !219, metadata !796), !dbg !1409
  %26 = getelementptr inbounds i8, i8* %24, i64 8192, !dbg !1423
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !217, metadata !796), !dbg !1407
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1424, !tbaa !803
  %28 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 8192, %struct._IO_FILE* %27) #11, !dbg !1424
  store i64 0, i64* @output.bytes_in_buffer, align 8, !dbg !1425, !tbaa !847
  tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !220, metadata !796), !dbg !1411
  tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !220, metadata !796), !dbg !1411
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !219, metadata !796), !dbg !1409
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !217, metadata !796), !dbg !1407
  %29 = icmp ult i64 %25, 8192, !dbg !1418
  br i1 %29, label %30, label %22, !dbg !1419, !llvm.loop !1428

; <label>:30:                                     ; preds = %22, %15, %8
  %31 = phi i8* [ %0, %8 ], [ %17, %15 ], [ %26, %22 ]
  %32 = phi i64 [ %12, %8 ], [ %16, %15 ], [ %25, %22 ]
  %33 = phi i64 [ %3, %8 ], [ 0, %15 ], [ 0, %22 ]
  %34 = phi i8* [ %14, %8 ], [ getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), %15 ], [ getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), %22 ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %31, i64 %32, i32 1, i1 false), !dbg !1430
  %35 = add i64 %33, %32, !dbg !1431
  br label %36, !dbg !1432

; <label>:36:                                     ; preds = %30, %5
  %37 = phi i64 [ %35, %30 ], [ 0, %5 ]
  store i64 %37, i64* @output.bytes_in_buffer, align 8, !tbaa !847
  ret void, !dbg !1432
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1433 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1435, metadata !796), !dbg !1436
  store i8* %0, i8** @file_name, align 8, !dbg !1437, !tbaa !803
  ret void, !dbg !1438
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1439 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1443, metadata !796), !dbg !1444
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1445, !tbaa !1446
  ret void, !dbg !1448
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1449 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1454, !tbaa !803
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1455
  %3 = icmp eq i32 %2, 0, !dbg !1456
  br i1 %3, label %21, label %4, !dbg !1457

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1458, !tbaa !1446, !range !1459
  %6 = icmp eq i8 %5, 0, !dbg !1458
  %7 = tail call i32* @__errno_location() #17, !dbg !1460
  br i1 %6, label %11, label %8, !dbg !1462

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1463, !tbaa !920
  %10 = icmp eq i32 %9, 32, !dbg !1464
  br i1 %10, label %21, label %11, !dbg !1465

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 5) #11, !dbg !1466
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1451, metadata !796), !dbg !1467
  %13 = load i8*, i8** @file_name, align 8, !dbg !1468, !tbaa !803
  %14 = icmp eq i8* %13, null, !dbg !1468
  %15 = load i32, i32* %7, align 4, !tbaa !920
  br i1 %14, label %18, label %16, !dbg !1469

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1470
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.24, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1471
  br label %19, !dbg !1471

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.25, i64 0, i64 0), i8* %12) #11, !dbg !1472
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1473, !tbaa !920
  tail call void @_exit(i32 %20) #15, !dbg !1474
  unreachable, !dbg !1474

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1475, !tbaa !803
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1477
  %24 = icmp eq i32 %23, 0, !dbg !1478
  br i1 %24, label %27, label %25, !dbg !1479

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1480, !tbaa !920
  tail call void @_exit(i32 %26) #15, !dbg !1481
  unreachable, !dbg !1481

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1482
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define i8* @mfile_name_concat(i8*, i8*, i8**) local_unnamed_addr #6 !dbg !1483 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1488, metadata !796), !dbg !1499
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1489, metadata !796), !dbg !1500
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1490, metadata !796), !dbg !1501
  %4 = tail call i8* @last_component(i8* %0) #14, !dbg !1502
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1491, metadata !796), !dbg !1503
  %5 = tail call i64 @base_len(i8* %4) #14, !dbg !1504
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1492, metadata !796), !dbg !1505
  %6 = ptrtoint i8* %4 to i64, !dbg !1506
  %7 = ptrtoint i8* %0 to i64, !dbg !1506
  %8 = sub i64 %6, %7, !dbg !1506
  %9 = add i64 %8, %5, !dbg !1507
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1493, metadata !796), !dbg !1508
  %10 = icmp eq i64 %5, 0, !dbg !1509
  br i1 %10, label %17, label %11, !dbg !1510

; <label>:11:                                     ; preds = %3
  %12 = add i64 %5, -1, !dbg !1511
  %13 = getelementptr inbounds i8, i8* %4, i64 %12, !dbg !1511
  %14 = load i8, i8* %13, align 1, !dbg !1511, !tbaa !868
  %15 = icmp ne i8 %14, 47, !dbg !1511
  %16 = zext i1 %15 to i64
  br label %17

; <label>:17:                                     ; preds = %3, %11
  %18 = phi i64 [ 0, %3 ], [ %16, %11 ]
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !1494, metadata !796), !dbg !1512
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1513, metadata !796), !dbg !1518
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1513, metadata !796), !dbg !1518
  br label %19, !dbg !1520

; <label>:19:                                     ; preds = %19, %17
  %20 = phi i8* [ %1, %17 ], [ %23, %19 ]
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1513, metadata !796), !dbg !1518
  %21 = load i8, i8* %20, align 1, !dbg !1522, !tbaa !868
  %22 = icmp eq i8 %21, 47, !dbg !1522
  %23 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1524
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1513, metadata !796), !dbg !1518
  br i1 %22, label %19, label %24, !dbg !1525, !llvm.loop !1526

; <label>:24:                                     ; preds = %19
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1495, metadata !796), !dbg !1529
  %25 = tail call i64 @strlen(i8* %20) #14, !dbg !1530
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1496, metadata !796), !dbg !1531
  %26 = add i64 %9, 1, !dbg !1532
  %27 = add i64 %26, %18, !dbg !1533
  %28 = add i64 %27, %25, !dbg !1534
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !1535
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1497, metadata !796), !dbg !1536
  %30 = icmp eq i8* %29, null, !dbg !1537
  br i1 %30, label %44, label %31, !dbg !1539

; <label>:31:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1540, metadata !796) #11, !dbg !1552
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1550, metadata !796) #11, !dbg !1552
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1551, metadata !796) #11, !dbg !1552
  %32 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %29, i1 false, i1 true) #11, !dbg !1554
  %33 = tail call i8* @__mempcpy_chk(i8* nonnull %29, i8* nonnull %0, i64 %9, i64 %32) #11, !dbg !1555
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !1498, metadata !796), !dbg !1556
  store i8 47, i8* %33, align 1, !dbg !1557, !tbaa !868
  %34 = getelementptr inbounds i8, i8* %33, i64 %18, !dbg !1558
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1498, metadata !796), !dbg !1556
  %35 = icmp eq i8** %2, null, !dbg !1559
  br i1 %35, label %41, label %36, !dbg !1561

; <label>:36:                                     ; preds = %31
  %37 = load i8, i8* %1, align 1, !dbg !1562, !tbaa !868
  %38 = icmp eq i8 %37, 47, !dbg !1562
  %39 = sext i1 %38 to i64, !dbg !1563
  %40 = getelementptr inbounds i8, i8* %34, i64 %39, !dbg !1563
  store i8* %40, i8** %2, align 8, !dbg !1564, !tbaa !803
  br label %41, !dbg !1565

; <label>:41:                                     ; preds = %31, %36
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1540, metadata !796) #11, !dbg !1566
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1550, metadata !796) #11, !dbg !1566
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1551, metadata !796) #11, !dbg !1566
  %42 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %34, i1 false, i1 true) #11, !dbg !1568
  %43 = tail call i8* @__mempcpy_chk(i8* nonnull %34, i8* nonnull %20, i64 %25, i64 %42) #11, !dbg !1569
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !1498, metadata !796), !dbg !1556
  store i8 0, i8* %43, align 1, !dbg !1570, !tbaa !868
  br label %44, !dbg !1571

; <label>:44:                                     ; preds = %24, %41
  %45 = phi i8* [ %29, %41 ], [ null, %24 ]
  ret i8* %45, !dbg !1572
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1573 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1575, metadata !796), !dbg !1578
  %2 = icmp eq i8* %0, null, !dbg !1579
  br i1 %2, label %3, label %6, !dbg !1581

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1582, !tbaa !803
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.47, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1584
  tail call void @abort() #15, !dbg !1585
  unreachable, !dbg !1585

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1586
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1576, metadata !796), !dbg !1587
  %8 = icmp eq i8* %7, null, !dbg !1588
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1589
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1590
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1577, metadata !796), !dbg !1591
  %11 = ptrtoint i8* %10 to i64, !dbg !1592
  %12 = ptrtoint i8* %0 to i64, !dbg !1592
  %13 = sub i64 %11, %12, !dbg !1592
  %14 = icmp sgt i64 %13, 6, !dbg !1594
  br i1 %14, label %15, label %24, !dbg !1595

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1596
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.48, i64 0, i64 0), i64 7) #14, !dbg !1597
  %18 = icmp eq i32 %17, 0, !dbg !1598
  br i1 %18, label %19, label %24, !dbg !1599

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1575, metadata !796), !dbg !1578
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.49, i64 0, i64 0), i64 3) #14, !dbg !1600
  %21 = icmp eq i32 %20, 0, !dbg !1603
  br i1 %21, label %22, label %24, !dbg !1604

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1605
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1575, metadata !796), !dbg !1578
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1607, !tbaa !803
  br label %24, !dbg !1608

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1575, metadata !796), !dbg !1578
  store i8* %25, i8** @program_name, align 8, !dbg !1609, !tbaa !803
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1610, !tbaa !803
  ret void, !dbg !1611
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1612 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1617, metadata !796), !dbg !1620
  %2 = tail call i32* @__errno_location() #17, !dbg !1621
  %3 = load i32, i32* %2, align 4, !dbg !1621, !tbaa !920
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1618, metadata !796), !dbg !1622
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1623
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1623
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1623
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1624
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1624
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1619, metadata !796), !dbg !1625
  store i32 %3, i32* %2, align 4, !dbg !1626, !tbaa !920
  ret %struct.quoting_options* %8, !dbg !1627
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1628 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1634, metadata !796), !dbg !1635
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1636
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1636
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1637
  %5 = load i32, i32* %4, align 8, !dbg !1637, !tbaa !1638
  ret i32 %5, !dbg !1640
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1641 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1645, metadata !796), !dbg !1647
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1646, metadata !796), !dbg !1648
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1649
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1649
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1650
  store i32 %1, i32* %5, align 8, !dbg !1651, !tbaa !1638
  ret void, !dbg !1652
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1653 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1657, metadata !796), !dbg !1665
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1658, metadata !796), !dbg !1666
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1659, metadata !796), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1660, metadata !796), !dbg !1668
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1669
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1669
  %6 = lshr i8 %1, 5, !dbg !1670
  %7 = zext i8 %6 to i64, !dbg !1670
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1671
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1661, metadata !796), !dbg !1672
  %9 = and i8 %1, 31, !dbg !1673
  %10 = zext i8 %9 to i32, !dbg !1674
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1663, metadata !796), !dbg !1675
  %11 = load i32, i32* %8, align 4, !dbg !1676, !tbaa !920
  %12 = lshr i32 %11, %10, !dbg !1677
  %13 = and i32 %12, 1, !dbg !1678
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1664, metadata !796), !dbg !1679
  %14 = and i32 %2, 1, !dbg !1680
  %15 = xor i32 %13, %14, !dbg !1681
  %16 = shl i32 %15, %10, !dbg !1682
  %17 = xor i32 %16, %11, !dbg !1683
  store i32 %17, i32* %8, align 4, !dbg !1683, !tbaa !920
  ret i32 %13, !dbg !1684
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1685 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1689, metadata !796), !dbg !1692
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1690, metadata !796), !dbg !1693
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1694
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1689, metadata !796), !dbg !1692
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1696
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1689, metadata !796), !dbg !1692
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1697
  %6 = load i32, i32* %5, align 4, !dbg !1697, !tbaa !1698
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1691, metadata !796), !dbg !1699
  store i32 %1, i32* %5, align 4, !dbg !1700, !tbaa !1698
  ret i32 %6, !dbg !1701
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1702 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1706, metadata !796), !dbg !1709
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1707, metadata !796), !dbg !1710
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1708, metadata !796), !dbg !1711
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1712
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1706, metadata !796), !dbg !1709
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1714
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1706, metadata !796), !dbg !1709
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1715
  store i32 10, i32* %6, align 8, !dbg !1716, !tbaa !1638
  %7 = icmp ne i8* %1, null, !dbg !1717
  %8 = icmp ne i8* %2, null, !dbg !1719
  %9 = and i1 %7, %8, !dbg !1720
  br i1 %9, label %11, label %10, !dbg !1720

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1721
  unreachable, !dbg !1721

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1722
  store i8* %1, i8** %12, align 8, !dbg !1723, !tbaa !1724
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1725
  store i8* %2, i8** %13, align 8, !dbg !1726, !tbaa !1727
  ret void, !dbg !1728
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1729 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1733, metadata !796), !dbg !1741
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1734, metadata !796), !dbg !1742
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1735, metadata !796), !dbg !1743
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1736, metadata !796), !dbg !1744
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1737, metadata !796), !dbg !1745
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1746
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1746
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1738, metadata !796), !dbg !1747
  %8 = tail call i32* @__errno_location() #17, !dbg !1748
  %9 = load i32, i32* %8, align 4, !dbg !1748, !tbaa !920
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1739, metadata !796), !dbg !1749
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1750
  %11 = load i32, i32* %10, align 8, !dbg !1750, !tbaa !1638
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1751
  %13 = load i32, i32* %12, align 4, !dbg !1751, !tbaa !1698
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1752
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1753
  %16 = load i8*, i8** %15, align 8, !dbg !1753, !tbaa !1724
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1754
  %18 = load i8*, i8** %17, align 8, !dbg !1754, !tbaa !1727
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1740, metadata !796), !dbg !1756
  store i32 %9, i32* %8, align 4, !dbg !1757, !tbaa !920
  ret i64 %19, !dbg !1758
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1759 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1765, metadata !796), !dbg !1829
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1766, metadata !796), !dbg !1830
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1767, metadata !796), !dbg !1831
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1768, metadata !796), !dbg !1832
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1769, metadata !796), !dbg !1833
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1770, metadata !796), !dbg !1834
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1771, metadata !796), !dbg !1835
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1772, metadata !796), !dbg !1836
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1773, metadata !796), !dbg !1837
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1775, metadata !796), !dbg !1838
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1776, metadata !796), !dbg !1839
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1777, metadata !796), !dbg !1840
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1778, metadata !796), !dbg !1841
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1779, metadata !796), !dbg !1842
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1843
  %14 = icmp eq i64 %13, 1, !dbg !1844
  %15 = lshr i32 %5, 1, !dbg !1845
  %16 = trunc i32 %15 to i8, !dbg !1845
  %17 = and i8 %16, 1, !dbg !1845
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1781, metadata !796), !dbg !1845
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1782, metadata !796), !dbg !1846
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1783, metadata !796), !dbg !1847
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1784, metadata !796), !dbg !1848
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1849

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1766, metadata !796), !dbg !1830
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1784, metadata !796), !dbg !1848
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1783, metadata !796), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1782, metadata !796), !dbg !1846
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1781, metadata !796), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1768, metadata !796), !dbg !1832
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1779, metadata !796), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1778, metadata !796), !dbg !1841
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1777, metadata !796), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1776, metadata !796), !dbg !1839
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1773, metadata !796), !dbg !1837
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1772, metadata !796), !dbg !1836
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1769, metadata !796), !dbg !1833
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
  ], !dbg !1850

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1769, metadata !796), !dbg !1833
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1781, metadata !796), !dbg !1845
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1781, metadata !796), !dbg !1845
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1769, metadata !796), !dbg !1833
  br label %94, !dbg !1851

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1781, metadata !796), !dbg !1845
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1769, metadata !796), !dbg !1833
  %43 = and i8 %36, 1, !dbg !1853
  %44 = icmp eq i8 %43, 0, !dbg !1853
  br i1 %44, label %45, label %94, !dbg !1851

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1855
  br i1 %46, label %94, label %47, !dbg !1858

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1855, !tbaa !868
  br label %94, !dbg !1855

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.65, i64 0, i64 0), i32 %28), !dbg !1859
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1772, metadata !796), !dbg !1836
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), i32 %28), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1773, metadata !796), !dbg !1837
  br label %51, !dbg !1864

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1773, metadata !796), !dbg !1837
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1772, metadata !796), !dbg !1836
  %54 = and i8 %36, 1, !dbg !1865
  %55 = icmp eq i8 %54, 0, !dbg !1865
  br i1 %55, label %56, label %72, !dbg !1867

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1777, metadata !796), !dbg !1840
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1777, metadata !796), !dbg !1840
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1775, metadata !796), !dbg !1838
  %57 = load i8, i8* %52, align 1, !dbg !1868, !tbaa !868
  %58 = icmp eq i8 %57, 0, !dbg !1871
  br i1 %58, label %72, label %59, !dbg !1871

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1872

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1777, metadata !796), !dbg !1840
  %64 = icmp ult i64 %63, %40, !dbg !1872
  br i1 %64, label %65, label %67, !dbg !1875

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1872
  store i8 %61, i8* %66, align 1, !dbg !1872, !tbaa !868
  br label %67, !dbg !1872

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1775, metadata !796), !dbg !1838
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1876
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1777, metadata !796), !dbg !1840
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1777, metadata !796), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1775, metadata !796), !dbg !1838
  %70 = load i8, i8* %69, align 1, !dbg !1868, !tbaa !868
  %71 = icmp eq i8 %70, 0, !dbg !1871
  br i1 %71, label %72, label %60, !dbg !1871, !llvm.loop !1877

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1779, metadata !796), !dbg !1842
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1777, metadata !796), !dbg !1840
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1778, metadata !796), !dbg !1841
  br label %94, !dbg !1880

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1779, metadata !796), !dbg !1842
  br label %76, !dbg !1881

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1779, metadata !796), !dbg !1842
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1781, metadata !796), !dbg !1845
  br label %78, !dbg !1882

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1781, metadata !796), !dbg !1845
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1779, metadata !796), !dbg !1842
  %81 = and i8 %80, 1, !dbg !1883
  %82 = icmp eq i8 %81, 0, !dbg !1883
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1779, metadata !796), !dbg !1842
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1885
  br label %84, !dbg !1885

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1781, metadata !796), !dbg !1845
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1779, metadata !796), !dbg !1842
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1769, metadata !796), !dbg !1833
  %87 = and i8 %86, 1, !dbg !1886
  %88 = icmp eq i8 %87, 0, !dbg !1886
  br i1 %88, label %89, label %94, !dbg !1888

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1889
  br i1 %90, label %94, label %91, !dbg !1892

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1889, !tbaa !868
  br label %94, !dbg !1889

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1781, metadata !796), !dbg !1845
  br label %94, !dbg !1893

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1894
  unreachable, !dbg !1894

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1781, metadata !796), !dbg !1845
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1779, metadata !796), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1778, metadata !796), !dbg !1841
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1777, metadata !796), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1773, metadata !796), !dbg !1837
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1772, metadata !796), !dbg !1836
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1769, metadata !796), !dbg !1833
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1774, metadata !796), !dbg !1895
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
  br label %122, !dbg !1896

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1766, metadata !796), !dbg !1830
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1784, metadata !796), !dbg !1848
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1783, metadata !796), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1782, metadata !796), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1768, metadata !796), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1776, metadata !796), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1774, metadata !796), !dbg !1895
  %131 = icmp eq i64 %126, -1, !dbg !1897
  br i1 %131, label %134, label %132, !dbg !1898

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1899
  br i1 %133, label %590, label %138, !dbg !1900

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1901
  %136 = load i8, i8* %135, align 1, !dbg !1901, !tbaa !868
  %137 = icmp eq i8 %136, 0, !dbg !1902
  br i1 %137, label %590, label %138, !dbg !1900

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1790, metadata !796), !dbg !1903
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1791, metadata !796), !dbg !1904
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1792, metadata !796), !dbg !1905
  br i1 %108, label %139, label %154, !dbg !1906

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1908
  %141 = and i1 %109, %131, !dbg !1909
  br i1 %141, label %142, label %144, !dbg !1909

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1768, metadata !796), !dbg !1832
  br label %144, !dbg !1911

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1768, metadata !796), !dbg !1832
  %146 = icmp ugt i64 %140, %145, !dbg !1912
  br i1 %146, label %154, label %147, !dbg !1913

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1914
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1915
  %150 = icmp ne i32 %149, 0, !dbg !1916
  %151 = or i1 %150, %111, !dbg !1917
  %152 = xor i1 %150, true, !dbg !1917
  %153 = zext i1 %152 to i8, !dbg !1917
  br i1 %151, label %154, label %635, !dbg !1917

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1790, metadata !796), !dbg !1903
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1768, metadata !796), !dbg !1832
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1918
  %158 = load i8, i8* %157, align 1, !dbg !1918, !tbaa !868
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1785, metadata !796), !dbg !1919
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
  ], !dbg !1920

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1921

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1922

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1791, metadata !796), !dbg !1904
  %162 = and i8 %127, 1, !dbg !1926
  %163 = icmp eq i8 %162, 0, !dbg !1926
  %164 = and i1 %113, %163, !dbg !1926
  br i1 %164, label %165, label %181, !dbg !1926

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1928
  br i1 %166, label %167, label %169, !dbg !1932

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1928
  store i8 39, i8* %168, align 1, !dbg !1928, !tbaa !868
  br label %169, !dbg !1928

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1775, metadata !796), !dbg !1838
  %171 = icmp ult i64 %170, %130, !dbg !1933
  br i1 %171, label %172, label %174, !dbg !1936

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1933
  store i8 36, i8* %173, align 1, !dbg !1933, !tbaa !868
  br label %174, !dbg !1933

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1775, metadata !796), !dbg !1838
  %176 = icmp ult i64 %175, %130, !dbg !1937
  br i1 %176, label %177, label %179, !dbg !1940

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1937
  store i8 39, i8* %178, align 1, !dbg !1937, !tbaa !868
  br label %179, !dbg !1937

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1782, metadata !796), !dbg !1846
  br label %181, !dbg !1941

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1782, metadata !796), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1775, metadata !796), !dbg !1838
  %184 = icmp ult i64 %182, %130, !dbg !1942
  br i1 %184, label %185, label %187, !dbg !1945

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1942
  store i8 92, i8* %186, align 1, !dbg !1942, !tbaa !868
  br label %187, !dbg !1942

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1775, metadata !796), !dbg !1838
  br i1 %105, label %189, label %470, !dbg !1946

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1948
  %191 = icmp ult i64 %190, %155, !dbg !1949
  br i1 %191, label %192, label %470, !dbg !1950

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1951
  %194 = load i8, i8* %193, align 1, !dbg !1951, !tbaa !868
  %195 = add i8 %194, -48, !dbg !1952
  %196 = icmp ult i8 %195, 10, !dbg !1952
  br i1 %196, label %197, label %470, !dbg !1952

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1953
  br i1 %198, label %199, label %201, !dbg !1957

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1953
  store i8 48, i8* %200, align 1, !dbg !1953, !tbaa !868
  br label %201, !dbg !1953

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1775, metadata !796), !dbg !1838
  %203 = icmp ult i64 %202, %130, !dbg !1958
  br i1 %203, label %204, label %206, !dbg !1961

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1958
  store i8 48, i8* %205, align 1, !dbg !1958, !tbaa !868
  br label %206, !dbg !1958

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1775, metadata !796), !dbg !1838
  br label %470, !dbg !1962

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1963

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1964

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1965

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1967

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1969
  %214 = icmp ult i64 %213, %155, !dbg !1970
  br i1 %214, label %215, label %470, !dbg !1971

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1972
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1973
  %218 = load i8, i8* %217, align 1, !dbg !1973, !tbaa !868
  %219 = icmp eq i8 %218, 63, !dbg !1974
  br i1 %219, label %220, label %470, !dbg !1975

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1976
  %222 = load i8, i8* %221, align 1, !dbg !1976, !tbaa !868
  %223 = sext i8 %222 to i32, !dbg !1976
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
  ], !dbg !1977

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1978

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1785, metadata !796), !dbg !1919
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1774, metadata !796), !dbg !1895
  %226 = icmp ult i64 %124, %130, !dbg !1980
  br i1 %226, label %227, label %229, !dbg !1983

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1980
  store i8 63, i8* %228, align 1, !dbg !1980, !tbaa !868
  br label %229, !dbg !1980

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1775, metadata !796), !dbg !1838
  %231 = icmp ult i64 %230, %130, !dbg !1984
  br i1 %231, label %232, label %234, !dbg !1987

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1984
  store i8 34, i8* %233, align 1, !dbg !1984, !tbaa !868
  br label %234, !dbg !1984

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1775, metadata !796), !dbg !1838
  %236 = icmp ult i64 %235, %130, !dbg !1988
  br i1 %236, label %237, label %239, !dbg !1991

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1988
  store i8 34, i8* %238, align 1, !dbg !1988, !tbaa !868
  br label %239, !dbg !1988

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1991
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1775, metadata !796), !dbg !1838
  %241 = icmp ult i64 %240, %130, !dbg !1992
  br i1 %241, label %242, label %244, !dbg !1995

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1992
  store i8 63, i8* %243, align 1, !dbg !1992, !tbaa !868
  br label %244, !dbg !1992

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1775, metadata !796), !dbg !1838
  br label %470, !dbg !1996

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1789, metadata !796), !dbg !1997
  br label %256, !dbg !1998

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1789, metadata !796), !dbg !1997
  br label %256, !dbg !1999

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1789, metadata !796), !dbg !1997
  br label %254, !dbg !2000

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1789, metadata !796), !dbg !1997
  br label %254, !dbg !2001

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1789, metadata !796), !dbg !1997
  br label %256, !dbg !2002

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1789, metadata !796), !dbg !1997
  br i1 %113, label %252, label %253, !dbg !2003

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2004

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2007

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1789, metadata !796), !dbg !1997
  br i1 %117, label %256, label %635, !dbg !2009

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1789, metadata !796), !dbg !1997
  br i1 %104, label %497, label %470, !dbg !2011

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2012
  br i1 %259, label %260, label %265, !dbg !2014

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2015, !tbaa !868
  %262 = icmp ne i8 %261, 0, !dbg !2016
  %263 = icmp ne i64 %123, 0, !dbg !2017
  %264 = or i1 %263, %262, !dbg !2019
  br i1 %264, label %470, label %271, !dbg !2019

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2020
  %267 = icmp ne i64 %123, 0, !dbg !2017
  %268 = or i1 %267, %266, !dbg !2014
  br i1 %268, label %470, label %271, !dbg !2014

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2017
  br i1 %270, label %271, label %470, !dbg !2021

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1792, metadata !796), !dbg !1905
  br label %272, !dbg !2022

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1792, metadata !796), !dbg !1905
  br i1 %117, label %470, label %635, !dbg !2023

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1783, metadata !796), !dbg !1847
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1792, metadata !796), !dbg !1905
  br i1 %113, label %275, label %470, !dbg !2025

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2026

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2029
  %278 = icmp ne i64 %125, 0, !dbg !2031
  %279 = or i1 %278, %277, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1776, metadata !796), !dbg !1839
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1766, metadata !796), !dbg !1830
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2032
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1766, metadata !796), !dbg !1830
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1776, metadata !796), !dbg !1839
  %282 = icmp ult i64 %124, %281, !dbg !2033
  br i1 %282, label %283, label %285, !dbg !2036

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2033
  store i8 39, i8* %284, align 1, !dbg !2033, !tbaa !868
  br label %285, !dbg !2033

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1775, metadata !796), !dbg !1838
  %287 = icmp ult i64 %286, %281, !dbg !2037
  br i1 %287, label %288, label %290, !dbg !2040

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2037
  store i8 92, i8* %289, align 1, !dbg !2037, !tbaa !868
  br label %290, !dbg !2037

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1775, metadata !796), !dbg !1838
  %292 = icmp ult i64 %291, %281, !dbg !2041
  br i1 %292, label %293, label %295, !dbg !2044

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2041
  store i8 39, i8* %294, align 1, !dbg !2041, !tbaa !868
  br label %295, !dbg !2041

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2044
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1782, metadata !796), !dbg !1846
  br label %470, !dbg !2045

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2046

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1793, metadata !796), !dbg !2047
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2048
  %300 = load i16*, i16** %299, align 8, !dbg !2048, !tbaa !803
  %301 = zext i8 %158 to i64, !dbg !2048
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2048
  %303 = load i16, i16* %302, align 2, !dbg !2048, !tbaa !2050
  %304 = lshr i16 %303, 14, !dbg !2052
  %305 = trunc i16 %304 to i8, !dbg !2052
  %306 = and i8 %305, 1, !dbg !2052
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1796, metadata !796), !dbg !2053
  br label %362, !dbg !2054

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2055
  store i64 0, i64* %10, align 8, !dbg !2056
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1793, metadata !796), !dbg !2047
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1796, metadata !796), !dbg !2053
  %308 = icmp eq i64 %155, -1, !dbg !2057
  br i1 %308, label %309, label %311, !dbg !2059

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1768, metadata !796), !dbg !1832
  br label %311, !dbg !2061

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1768, metadata !796), !dbg !1832
  br label %313, !dbg !2062, !llvm.loop !2063

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1796, metadata !796), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1793, metadata !796), !dbg !2047
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2065
  %316 = add i64 %314, %123, !dbg !2066
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2067
  %318 = sub i64 %312, %316, !dbg !2068
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1797, metadata !796), !dbg !2069
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1815, metadata !796), !dbg !2070
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #11, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1818, metadata !796), !dbg !2072
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2073

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1796, metadata !796), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1793, metadata !796), !dbg !2047
  %321 = icmp ugt i64 %312, %316, !dbg !2074
  br i1 %321, label %322, label %347, !dbg !2076

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2077

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1793, metadata !796), !dbg !2047
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2077
  %327 = load i8, i8* %326, align 1, !dbg !2077, !tbaa !868
  %328 = icmp eq i8 %327, 0, !dbg !2076
  br i1 %328, label %347, label %329, !dbg !2078

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2079
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1793, metadata !796), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1793, metadata !796), !dbg !2047
  %331 = add i64 %330, %123, !dbg !2080
  %332 = icmp ult i64 %331, %312, !dbg !2074
  br i1 %332, label %323, label %347, !dbg !2076, !llvm.loop !2081

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2082
  %335 = and i1 %115, %334, !dbg !2085
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1819, metadata !796), !dbg !2086
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1819, metadata !796), !dbg !2086
  br i1 %335, label %336, label %350, !dbg !2085

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2087

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1819, metadata !796), !dbg !2086
  %339 = add i64 %338, %316, !dbg !2087
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2088
  %341 = load i8, i8* %340, align 1, !dbg !2088, !tbaa !868
  %342 = sext i8 %341 to i32, !dbg !2088
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2089

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1819, metadata !796), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1819, metadata !796), !dbg !2086
  %345 = icmp ult i64 %344, %319, !dbg !2082
  br i1 %345, label %337, label %350, !dbg !2091, !llvm.loop !2092

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2094

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1796, metadata !796), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1793, metadata !796), !dbg !2047
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2094
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2095, !tbaa !920
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1815, metadata !796), !dbg !2070
  %352 = call i32 @iswprint(i32 %351) #11, !dbg !2097
  %353 = icmp eq i32 %352, 0, !dbg !2097
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1796, metadata !796), !dbg !2053
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2098
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1796, metadata !796), !dbg !2053
  %355 = add i64 %319, %314, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1793, metadata !796), !dbg !2047
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1796, metadata !796), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1793, metadata !796), !dbg !2047
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2094
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1797, metadata !796), !dbg !2069
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2100
  %357 = icmp eq i32 %356, 0, !dbg !2101
  br i1 %357, label %313, label %358, !dbg !2102, !llvm.loop !2063

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2103
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1796, metadata !796), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1793, metadata !796), !dbg !2047
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2094
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2103
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1796, metadata !796), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1793, metadata !796), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1768, metadata !796), !dbg !1832
  %366 = and i8 %365, 1, !dbg !2104
  %367 = icmp ne i8 %366, 0, !dbg !2104
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1792, metadata !796), !dbg !1905
  %368 = icmp ult i64 %364, 2, !dbg !2105
  %369 = or i1 %367, %112, !dbg !2106
  %370 = and i1 %368, %369, !dbg !2107
  br i1 %370, label %470, label %371, !dbg !2107

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1826, metadata !796), !dbg !2109
  br label %373, !dbg !2110

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1791, metadata !796), !dbg !1904
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1790, metadata !796), !dbg !1903
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1785, metadata !796), !dbg !1919
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1782, metadata !796), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1774, metadata !796), !dbg !1895
  br i1 %369, label %426, label %380, !dbg !2111

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2116

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1791, metadata !796), !dbg !1904
  %382 = and i8 %376, 1, !dbg !2119
  %383 = icmp eq i8 %382, 0, !dbg !2119
  %384 = and i1 %113, %383, !dbg !2119
  br i1 %384, label %385, label %401, !dbg !2119

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2121
  br i1 %386, label %387, label %389, !dbg !2125

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2121
  store i8 39, i8* %388, align 1, !dbg !2121, !tbaa !868
  br label %389, !dbg !2121

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1775, metadata !796), !dbg !1838
  %391 = icmp ult i64 %390, %130, !dbg !2126
  br i1 %391, label %392, label %394, !dbg !2129

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2126
  store i8 36, i8* %393, align 1, !dbg !2126, !tbaa !868
  br label %394, !dbg !2126

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2129
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1775, metadata !796), !dbg !1838
  %396 = icmp ult i64 %395, %130, !dbg !2130
  br i1 %396, label %397, label %399, !dbg !2133

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2130
  store i8 39, i8* %398, align 1, !dbg !2130, !tbaa !868
  br label %399, !dbg !2130

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1782, metadata !796), !dbg !1846
  br label %401, !dbg !2134

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1782, metadata !796), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1775, metadata !796), !dbg !1838
  %404 = icmp ult i64 %402, %130, !dbg !2135
  br i1 %404, label %405, label %407, !dbg !2138

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2135
  store i8 92, i8* %406, align 1, !dbg !2135, !tbaa !868
  br label %407, !dbg !2135

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2138
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1775, metadata !796), !dbg !1838
  %409 = icmp ult i64 %408, %130, !dbg !2139
  br i1 %409, label %410, label %414, !dbg !2142

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2139
  %412 = or i8 %411, 48, !dbg !2139
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2139
  store i8 %412, i8* %413, align 1, !dbg !2139, !tbaa !868
  br label %414, !dbg !2139

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2142
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1775, metadata !796), !dbg !1838
  %416 = icmp ult i64 %415, %130, !dbg !2143
  br i1 %416, label %417, label %422, !dbg !2146

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2143
  %419 = and i8 %418, 7, !dbg !2143
  %420 = or i8 %419, 48, !dbg !2143
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2143
  store i8 %420, i8* %421, align 1, !dbg !2143, !tbaa !868
  br label %422, !dbg !2143

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1775, metadata !796), !dbg !1838
  %424 = and i8 %377, 7, !dbg !2147
  %425 = or i8 %424, 48, !dbg !2148
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1785, metadata !796), !dbg !1919
  br label %435, !dbg !2149

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2150
  %428 = icmp eq i8 %427, 0, !dbg !2150
  br i1 %428, label %435, label %429, !dbg !2152

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2153
  br i1 %430, label %431, label %433, !dbg !2157

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2153
  store i8 92, i8* %432, align 1, !dbg !2153, !tbaa !868
  br label %433, !dbg !2153

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2157
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1790, metadata !796), !dbg !1903
  br label %435, !dbg !2158

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1791, metadata !796), !dbg !1904
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1790, metadata !796), !dbg !1903
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1785, metadata !796), !dbg !1919
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1782, metadata !796), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1775, metadata !796), !dbg !1838
  %441 = add i64 %374, 1, !dbg !2159
  %442 = icmp ugt i64 %372, %441, !dbg !2161
  br i1 %442, label %443, label %535, !dbg !2162

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2163
  %445 = icmp ne i8 %444, 0, !dbg !2163
  %446 = and i8 %440, 1, !dbg !2163
  %447 = icmp eq i8 %446, 0, !dbg !2163
  %448 = and i1 %445, %447, !dbg !2163
  br i1 %448, label %449, label %460, !dbg !2163

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2166
  br i1 %450, label %451, label %453, !dbg !2170

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2166
  store i8 39, i8* %452, align 1, !dbg !2166, !tbaa !868
  br label %453, !dbg !2166

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1775, metadata !796), !dbg !1838
  %455 = icmp ult i64 %454, %130, !dbg !2171
  br i1 %455, label %456, label %458, !dbg !2174

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2171
  store i8 39, i8* %457, align 1, !dbg !2171, !tbaa !868
  br label %458, !dbg !2171

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1782, metadata !796), !dbg !1846
  br label %460, !dbg !2175

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1782, metadata !796), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1775, metadata !796), !dbg !1838
  %463 = icmp ult i64 %461, %130, !dbg !2176
  br i1 %463, label %464, label %466, !dbg !2179

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2176
  store i8 %438, i8* %465, align 1, !dbg !2176, !tbaa !868
  br label %466, !dbg !2176

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2179
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1774, metadata !796), !dbg !1895
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2180
  %469 = load i8, i8* %468, align 1, !dbg !2180, !tbaa !868
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1785, metadata !796), !dbg !1919
  br label %373, !dbg !2181, !llvm.loop !2182

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1766, metadata !796), !dbg !1830
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1792, metadata !796), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1791, metadata !796), !dbg !1904
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1790, metadata !796), !dbg !1903
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1785, metadata !796), !dbg !1919
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1783, metadata !796), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1782, metadata !796), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1768, metadata !796), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1776, metadata !796), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1774, metadata !796), !dbg !1895
  br i1 %106, label %482, label %481, !dbg !2185

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2187

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2188

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2189
  %485 = zext i8 %484 to i64, !dbg !2189
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2190
  %487 = load i32, i32* %486, align 4, !dbg !2190, !tbaa !920
  %488 = and i8 %477, 31, !dbg !2191
  %489 = zext i8 %488 to i32, !dbg !2192
  %490 = shl i32 1, %489, !dbg !2193
  %491 = and i32 %487, %490, !dbg !2193
  %492 = icmp eq i32 %491, 0, !dbg !2193
  %493 = icmp eq i8 %156, 0, !dbg !2194
  %494 = and i1 %493, %492, !dbg !2195
  br i1 %494, label %535, label %497, !dbg !2195

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2194
  br i1 %496, label %535, label %497, !dbg !2196

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1766, metadata !796), !dbg !1830
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1792, metadata !796), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1785, metadata !796), !dbg !1919
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1783, metadata !796), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1782, metadata !796), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1768, metadata !796), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1776, metadata !796), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1774, metadata !796), !dbg !1895
  br i1 %111, label %507, label %635, !dbg !2197

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1791, metadata !796), !dbg !1904
  %508 = and i8 %502, 1, !dbg !2199
  %509 = icmp eq i8 %508, 0, !dbg !2199
  %510 = and i1 %113, %509, !dbg !2199
  br i1 %510, label %511, label %527, !dbg !2199

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2201
  br i1 %512, label %513, label %515, !dbg !2205

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2201
  store i8 39, i8* %514, align 1, !dbg !2201, !tbaa !868
  br label %515, !dbg !2201

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1775, metadata !796), !dbg !1838
  %517 = icmp ult i64 %516, %506, !dbg !2206
  br i1 %517, label %518, label %520, !dbg !2209

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2206
  store i8 36, i8* %519, align 1, !dbg !2206, !tbaa !868
  br label %520, !dbg !2206

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1775, metadata !796), !dbg !1838
  %522 = icmp ult i64 %521, %506, !dbg !2210
  br i1 %522, label %523, label %525, !dbg !2213

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2210
  store i8 39, i8* %524, align 1, !dbg !2210, !tbaa !868
  br label %525, !dbg !2210

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1782, metadata !796), !dbg !1846
  br label %527, !dbg !2214

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1782, metadata !796), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1775, metadata !796), !dbg !1838
  %530 = icmp ult i64 %528, %506, !dbg !2215
  br i1 %530, label %531, label %533, !dbg !2218

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2215
  store i8 92, i8* %532, align 1, !dbg !2215, !tbaa !868
  br label %533, !dbg !2215

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1766, metadata !796), !dbg !1830
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1792, metadata !796), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1791, metadata !796), !dbg !1904
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1785, metadata !796), !dbg !1919
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1783, metadata !796), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1782, metadata !796), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1768, metadata !796), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1776, metadata !796), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1774, metadata !796), !dbg !1895
  br label %562, !dbg !2219

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1766, metadata !796), !dbg !1830
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1792, metadata !796), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1791, metadata !796), !dbg !1904
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1785, metadata !796), !dbg !1919
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1783, metadata !796), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1782, metadata !796), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1768, metadata !796), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1776, metadata !796), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1774, metadata !796), !dbg !1895
  %546 = and i8 %540, 1, !dbg !2219
  %547 = icmp ne i8 %546, 0, !dbg !2219
  %548 = and i8 %543, 1, !dbg !2219
  %549 = icmp eq i8 %548, 0, !dbg !2219
  %550 = and i1 %547, %549, !dbg !2219
  br i1 %550, label %551, label %562, !dbg !2219

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2222
  br i1 %552, label %553, label %555, !dbg !2226

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2222
  store i8 39, i8* %554, align 1, !dbg !2222, !tbaa !868
  br label %555, !dbg !2222

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1775, metadata !796), !dbg !1838
  %557 = icmp ult i64 %556, %545, !dbg !2227
  br i1 %557, label %558, label %560, !dbg !2230

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2227
  store i8 39, i8* %559, align 1, !dbg !2227, !tbaa !868
  br label %560, !dbg !2227

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1782, metadata !796), !dbg !1846
  br label %562, !dbg !2231

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1782, metadata !796), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1775, metadata !796), !dbg !1838
  %572 = icmp ult i64 %570, %563, !dbg !2232
  br i1 %572, label %573, label %575, !dbg !2235

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2232
  store i8 %565, i8* %574, align 1, !dbg !2232, !tbaa !868
  br label %575, !dbg !2232

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1775, metadata !796), !dbg !1838
  %577 = and i8 %564, 1, !dbg !2236
  %578 = icmp eq i8 %577, 0, !dbg !2236
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1784, metadata !796), !dbg !1848
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2238
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1784, metadata !796), !dbg !1848
  br label %580, !dbg !2239

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1766, metadata !796), !dbg !1830
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1784, metadata !796), !dbg !1848
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1783, metadata !796), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1782, metadata !796), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1768, metadata !796), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1776, metadata !796), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1774, metadata !796), !dbg !1895
  %589 = add i64 %581, 1, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1774, metadata !796), !dbg !1895
  br label %122, !dbg !2241, !llvm.loop !2242

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2244
  %593 = and i1 %113, %592, !dbg !2246
  %594 = xor i1 %593, true, !dbg !2246
  %595 = or i1 %111, %594, !dbg !2246
  br i1 %595, label %596, label %635, !dbg !2246

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2247
  %598 = xor i1 %597, true, !dbg !2247
  %599 = and i8 %128, 1, !dbg !2249
  %600 = icmp eq i8 %599, 0, !dbg !2249
  %601 = or i1 %600, %598, !dbg !2247
  br i1 %601, label %611, label %602, !dbg !2247

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2250
  %604 = icmp eq i8 %603, 0, !dbg !2250
  br i1 %604, label %607, label %605, !dbg !2253

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2254
  br label %645, !dbg !2255

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2256
  %609 = icmp ne i64 %125, 0, !dbg !2258
  %610 = and i1 %609, %608, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1766, metadata !796), !dbg !1830
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1775, metadata !796), !dbg !1838
  br i1 %610, label %27, label %611, !dbg !2259

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2260
  %613 = and i1 %612, %111, !dbg !2262
  br i1 %613, label %614, label %630, !dbg !2262

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1777, metadata !796), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1775, metadata !796), !dbg !1838
  %615 = load i8, i8* %99, align 1, !dbg !2263, !tbaa !868
  %616 = icmp eq i8 %615, 0, !dbg !2266
  br i1 %616, label %630, label %617, !dbg !2266

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2267

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1775, metadata !796), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1777, metadata !796), !dbg !1840
  %622 = icmp ult i64 %621, %130, !dbg !2267
  br i1 %622, label %623, label %625, !dbg !2270

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2267
  store i8 %619, i8* %624, align 1, !dbg !2267, !tbaa !868
  br label %625, !dbg !2267

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2270
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1775, metadata !796), !dbg !1838
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2271
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1777, metadata !796), !dbg !1840
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1777, metadata !796), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1775, metadata !796), !dbg !1838
  %628 = load i8, i8* %627, align 1, !dbg !2263, !tbaa !868
  %629 = icmp eq i8 %628, 0, !dbg !2266
  br i1 %629, label %630, label %618, !dbg !2266, !llvm.loop !2272

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1775, metadata !796), !dbg !1838
  %632 = icmp ult i64 %631, %130, !dbg !2274
  br i1 %632, label %633, label %645, !dbg !2276

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2277
  store i8 0, i8* %634, align 1, !dbg !2278, !tbaa !868
  br label %645, !dbg !2277

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1766, metadata !796), !dbg !1830
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1768, metadata !796), !dbg !1832
  %639 = icmp ne i32 %636, 2, !dbg !2279
  %640 = icmp eq i8 %103, 0, !dbg !2281
  %641 = or i1 %639, %640, !dbg !2282
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1769, metadata !796), !dbg !1833
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2282
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1769, metadata !796), !dbg !1833
  %643 = and i32 %5, -3, !dbg !2283
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2284
  br label %645, !dbg !2285

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2286
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2287 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2291, metadata !796), !dbg !2295
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2292, metadata !796), !dbg !2296
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2297
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2293, metadata !796), !dbg !2298
  %4 = icmp eq i8* %3, %0, !dbg !2299
  br i1 %4, label %5, label %75, !dbg !2301

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2302
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2294, metadata !796), !dbg !2303
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2304, metadata !796), !dbg !2320
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2318, metadata !796), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2319, metadata !796), !dbg !2324
  %7 = load i8, i8* %6, align 1, !dbg !2325, !tbaa !868
  %8 = sext i8 %7 to i32, !dbg !2325
  %9 = and i32 %8, -33, !dbg !2325
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2325

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2327, metadata !796), !dbg !2341
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2339, metadata !796), !dbg !2345
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2340, metadata !796), !dbg !2346
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2347
  %12 = load i8, i8* %11, align 1, !dbg !2347, !tbaa !868
  %13 = sext i8 %12 to i32, !dbg !2347
  %14 = and i32 %13, -33, !dbg !2347
  %15 = icmp eq i32 %14, 84, !dbg !2347
  br i1 %15, label %16, label %72, !dbg !2347

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2349, metadata !796), !dbg !2362
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2360, metadata !796), !dbg !2366
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2361, metadata !796), !dbg !2367
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2368
  %18 = load i8, i8* %17, align 1, !dbg !2368, !tbaa !868
  %19 = sext i8 %18 to i32, !dbg !2368
  %20 = and i32 %19, -33, !dbg !2368
  %21 = icmp eq i32 %20, 70, !dbg !2368
  br i1 %21, label %22, label %72, !dbg !2368

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2370, metadata !796), !dbg !2382
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2380, metadata !796), !dbg !2386
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2381, metadata !796), !dbg !2387
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2388
  %24 = load i8, i8* %23, align 1, !dbg !2388, !tbaa !868
  %25 = icmp eq i8 %24, 45, !dbg !2388
  br i1 %25, label %26, label %72, !dbg !2390

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2391, metadata !796), !dbg !2402
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2400, metadata !796), !dbg !2406
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2401, metadata !796), !dbg !2407
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2408
  %28 = load i8, i8* %27, align 1, !dbg !2408, !tbaa !868
  %29 = icmp eq i8 %28, 56, !dbg !2408
  br i1 %29, label %30, label %72, !dbg !2410

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2411, metadata !796), !dbg !2421
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2419, metadata !796), !dbg !2425
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2420, metadata !796), !dbg !2426
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2427
  %32 = load i8, i8* %31, align 1, !dbg !2427, !tbaa !868
  %33 = icmp eq i8 %32, 0, !dbg !2427
  br i1 %33, label %34, label %72, !dbg !2429

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2430, !tbaa !868
  %36 = icmp eq i8 %35, 96, !dbg !2431
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.68, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.69, i64 0, i64 0), !dbg !2430
  br label %75, !dbg !2432

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2327, metadata !796), !dbg !2433
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2339, metadata !796), !dbg !2437
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2340, metadata !796), !dbg !2438
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2439
  %40 = load i8, i8* %39, align 1, !dbg !2439, !tbaa !868
  %41 = sext i8 %40 to i32, !dbg !2439
  %42 = and i32 %41, -33, !dbg !2439
  %43 = icmp eq i32 %42, 66, !dbg !2439
  br i1 %43, label %44, label %72, !dbg !2439

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2349, metadata !796), !dbg !2440
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2360, metadata !796), !dbg !2442
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2361, metadata !796), !dbg !2443
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2444
  %46 = load i8, i8* %45, align 1, !dbg !2444, !tbaa !868
  %47 = icmp eq i8 %46, 49, !dbg !2444
  br i1 %47, label %48, label %72, !dbg !2445

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2370, metadata !796), !dbg !2446
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2380, metadata !796), !dbg !2448
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2381, metadata !796), !dbg !2449
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2450
  %50 = load i8, i8* %49, align 1, !dbg !2450, !tbaa !868
  %51 = icmp eq i8 %50, 56, !dbg !2450
  br i1 %51, label %52, label %72, !dbg !2451

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2391, metadata !796), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2400, metadata !796), !dbg !2454
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2401, metadata !796), !dbg !2455
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2456
  %54 = load i8, i8* %53, align 1, !dbg !2456, !tbaa !868
  %55 = icmp eq i8 %54, 48, !dbg !2456
  br i1 %55, label %56, label %72, !dbg !2457

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2411, metadata !796), !dbg !2458
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2419, metadata !796), !dbg !2460
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2420, metadata !796), !dbg !2461
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2462
  %58 = load i8, i8* %57, align 1, !dbg !2462, !tbaa !868
  %59 = icmp eq i8 %58, 51, !dbg !2462
  br i1 %59, label %60, label %72, !dbg !2463

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2464, metadata !796), !dbg !2473
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2471, metadata !796), !dbg !2477
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2472, metadata !796), !dbg !2478
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2479
  %62 = load i8, i8* %61, align 1, !dbg !2479, !tbaa !868
  %63 = icmp eq i8 %62, 48, !dbg !2479
  br i1 %63, label %64, label %72, !dbg !2481

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2482, metadata !796), !dbg !2490
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2488, metadata !796), !dbg !2494
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2489, metadata !796), !dbg !2495
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2496
  %66 = load i8, i8* %65, align 1, !dbg !2496, !tbaa !868
  %67 = icmp eq i8 %66, 0, !dbg !2496
  br i1 %67, label %68, label %72, !dbg !2498

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2499, !tbaa !868
  %70 = icmp eq i8 %69, 96, !dbg !2500
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.70, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.71, i64 0, i64 0), !dbg !2499
  br label %75, !dbg !2501

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2502
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), !dbg !2503
  br label %75, !dbg !2504

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2505
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2506 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2510, metadata !796), !dbg !2513
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2511, metadata !796), !dbg !2514
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2512, metadata !796), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2516, metadata !796) #11, !dbg !2529
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2521, metadata !796) #11, !dbg !2531
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2522, metadata !796) #11, !dbg !2532
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2523, metadata !796) #11, !dbg !2533
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2534
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2534
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2524, metadata !796) #11, !dbg !2535
  %6 = tail call i32* @__errno_location() #17, !dbg !2536
  %7 = load i32, i32* %6, align 4, !dbg !2536, !tbaa !920
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2525, metadata !796) #11, !dbg !2537
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2538
  %9 = load i32, i32* %8, align 4, !dbg !2538, !tbaa !1698
  %10 = or i32 %9, 1, !dbg !2539
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2526, metadata !796) #11, !dbg !2540
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2541
  %12 = load i32, i32* %11, align 8, !dbg !2541, !tbaa !1638
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2542
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2543
  %15 = load i8*, i8** %14, align 8, !dbg !2543, !tbaa !1724
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2544
  %17 = load i8*, i8** %16, align 8, !dbg !2544, !tbaa !1727
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2545
  %19 = add i64 %18, 1, !dbg !2546
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2527, metadata !796) #11, !dbg !2547
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2548, metadata !796) #11, !dbg !2553
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2555
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2528, metadata !796) #11, !dbg !2556
  %21 = load i32, i32* %11, align 8, !dbg !2557, !tbaa !1638
  %22 = load i8*, i8** %14, align 8, !dbg !2558, !tbaa !1724
  %23 = load i8*, i8** %16, align 8, !dbg !2559, !tbaa !1727
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2560
  store i32 %7, i32* %6, align 4, !dbg !2561, !tbaa !920
  ret i8* %20, !dbg !2562
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2517 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2516, metadata !796), !dbg !2563
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2521, metadata !796), !dbg !2564
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2522, metadata !796), !dbg !2565
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2523, metadata !796), !dbg !2566
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2567
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2567
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2524, metadata !796), !dbg !2568
  %7 = tail call i32* @__errno_location() #17, !dbg !2569
  %8 = load i32, i32* %7, align 4, !dbg !2569, !tbaa !920
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2525, metadata !796), !dbg !2570
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2571
  %10 = load i32, i32* %9, align 4, !dbg !2571, !tbaa !1698
  %11 = icmp ne i64* %2, null, !dbg !2572
  %12 = xor i1 %11, true, !dbg !2572
  %13 = zext i1 %12 to i32, !dbg !2572
  %14 = or i32 %10, %13, !dbg !2573
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2526, metadata !796), !dbg !2574
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2575
  %16 = load i32, i32* %15, align 8, !dbg !2575, !tbaa !1638
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2576
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2577
  %19 = load i8*, i8** %18, align 8, !dbg !2577, !tbaa !1724
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2578
  %21 = load i8*, i8** %20, align 8, !dbg !2578, !tbaa !1727
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2579
  %23 = add i64 %22, 1, !dbg !2580
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2527, metadata !796), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2548, metadata !796) #11, !dbg !2582
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2584
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2528, metadata !796), !dbg !2585
  %25 = load i32, i32* %15, align 8, !dbg !2586, !tbaa !1638
  %26 = load i8*, i8** %18, align 8, !dbg !2587, !tbaa !1724
  %27 = load i8*, i8** %20, align 8, !dbg !2588, !tbaa !1727
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2589
  store i32 %8, i32* %7, align 4, !dbg !2590, !tbaa !920
  br i1 %11, label %29, label %30, !dbg !2591

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2592, !tbaa !847
  br label %30, !dbg !2594

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2595
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2596 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2600, !tbaa !803
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2598, metadata !796), !dbg !2601
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2599, metadata !796), !dbg !2602
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2599, metadata !796), !dbg !2602
  %2 = load i32, i32* @nslots, align 4, !dbg !2603, !tbaa !920
  %3 = icmp sgt i32 %2, 1, !dbg !2606
  br i1 %3, label %4, label %13, !dbg !2607

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2608

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2599, metadata !796), !dbg !2602
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2608
  %8 = load i8*, i8** %7, align 8, !dbg !2608, !tbaa !2609
  tail call void @free(i8* %8) #11, !dbg !2611
  %9 = add nuw i64 %6, 1, !dbg !2612
  %10 = load i32, i32* @nslots, align 4, !dbg !2603, !tbaa !920
  %11 = sext i32 %10 to i64, !dbg !2606
  %12 = icmp slt i64 %9, %11, !dbg !2606
  br i1 %12, label %5, label %13, !dbg !2607, !llvm.loop !2613

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2615
  %15 = load i8*, i8** %14, align 8, !dbg !2615, !tbaa !2609
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2617
  br i1 %16, label %18, label %17, !dbg !2618

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #11, !dbg !2619
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2621, !tbaa !2622
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2623, !tbaa !2609
  br label %18, !dbg !2624

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2625
  br i1 %19, label %22, label %20, !dbg !2627

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2628
  tail call void @free(i8* %21) #11, !dbg !2630
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2631, !tbaa !803
  br label %22, !dbg !2632

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2633, !tbaa !920
  ret void, !dbg !2634
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2635 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2639, metadata !796), !dbg !2641
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2640, metadata !796), !dbg !2642
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2643
  ret i8* %3, !dbg !2644
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2645 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2649, metadata !796), !dbg !2663
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2650, metadata !796), !dbg !2664
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2651, metadata !796), !dbg !2665
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2652, metadata !796), !dbg !2666
  %5 = tail call i32* @__errno_location() #17, !dbg !2667
  %6 = load i32, i32* %5, align 4, !dbg !2667, !tbaa !920
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2653, metadata !796), !dbg !2668
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2669, !tbaa !803
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2654, metadata !796), !dbg !2670
  %8 = icmp slt i32 %0, 0, !dbg !2671
  br i1 %8, label %9, label %10, !dbg !2673

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2674
  unreachable, !dbg !2674

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2675, !tbaa !920
  %12 = icmp sgt i32 %11, %0, !dbg !2676
  br i1 %12, label %34, label %13, !dbg !2677

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2678
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2679
  br i1 %15, label %16, label %17, !dbg !2681

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2682
  unreachable, !dbg !2682

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2683
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2683
  %20 = add nsw i32 %0, 1, !dbg !2684
  %21 = sext i32 %20 to i64, !dbg !2685
  %22 = shl nsw i64 %21, 4, !dbg !2686
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2687
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2687
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2654, metadata !796), !dbg !2670
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2688, !tbaa !803
  br i1 %14, label %25, label %26, !dbg !2689

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2690, !tbaa.struct !2692
  br label %26, !dbg !2693

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2694, !tbaa !920
  %28 = sext i32 %27 to i64, !dbg !2695
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2695
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2696
  %31 = sub nsw i32 %20, %27, !dbg !2697
  %32 = sext i32 %31 to i64, !dbg !2698
  %33 = shl nsw i64 %32, 4, !dbg !2699
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2696
  store i32 %20, i32* @nslots, align 4, !dbg !2700, !tbaa !920
  br label %34, !dbg !2701

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2654, metadata !796), !dbg !2670
  %36 = sext i32 %0 to i64, !dbg !2702
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2703
  %38 = load i64, i64* %37, align 8, !dbg !2703, !tbaa !2622
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2658, metadata !796), !dbg !2704
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2705
  %40 = load i8*, i8** %39, align 8, !dbg !2705, !tbaa !2609
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2660, metadata !796), !dbg !2706
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2707
  %42 = load i32, i32* %41, align 4, !dbg !2707, !tbaa !1698
  %43 = or i32 %42, 1, !dbg !2708
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2661, metadata !796), !dbg !2709
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2710
  %45 = load i32, i32* %44, align 8, !dbg !2710, !tbaa !1638
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2711
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2712
  %48 = load i8*, i8** %47, align 8, !dbg !2712, !tbaa !1724
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2713
  %50 = load i8*, i8** %49, align 8, !dbg !2713, !tbaa !1727
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2714
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2662, metadata !796), !dbg !2715
  %52 = icmp ugt i64 %38, %51, !dbg !2716
  br i1 %52, label %63, label %53, !dbg !2718

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2719
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2658, metadata !796), !dbg !2704
  store i64 %54, i64* %37, align 8, !dbg !2721, !tbaa !2622
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2722
  br i1 %55, label %57, label %56, !dbg !2724

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2725
  br label %57, !dbg !2725

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2548, metadata !796) #11, !dbg !2726
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2728
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2660, metadata !796), !dbg !2706
  store i8* %58, i8** %39, align 8, !dbg !2729, !tbaa !2609
  %59 = load i32, i32* %44, align 8, !dbg !2730, !tbaa !1638
  %60 = load i8*, i8** %47, align 8, !dbg !2731, !tbaa !1724
  %61 = load i8*, i8** %49, align 8, !dbg !2732, !tbaa !1727
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2733
  br label %63, !dbg !2734

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2660, metadata !796), !dbg !2706
  store i32 %6, i32* %5, align 4, !dbg !2735, !tbaa !920
  ret i8* %64, !dbg !2736
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2737 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2741, metadata !796), !dbg !2744
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2742, metadata !796), !dbg !2745
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2743, metadata !796), !dbg !2746
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2747
  ret i8* %4, !dbg !2748
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2749 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2753, metadata !796), !dbg !2754
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2639, metadata !796) #11, !dbg !2755
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2640, metadata !796) #11, !dbg !2757
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2758
  ret i8* %2, !dbg !2759
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2760 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2764, metadata !796), !dbg !2766
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2765, metadata !796), !dbg !2767
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2741, metadata !796) #11, !dbg !2768
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2742, metadata !796) #11, !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2743, metadata !796) #11, !dbg !2771
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2772
  ret i8* %3, !dbg !2773
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2774 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2782, metadata !2788), !dbg !2789
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2778, metadata !796), !dbg !2791
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2779, metadata !796), !dbg !2792
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2780, metadata !796), !dbg !2793
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2794
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2794
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2781, metadata !796), !dbg !2795
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2787, metadata !796) #11, !dbg !2796
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2797
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2797
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2782, metadata !796) #11, !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2782, metadata !2798) #11, !dbg !2789
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2789
  %8 = icmp eq i32 %1, 10, !dbg !2799
  br i1 %8, label %9, label %10, !dbg !2801

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2802, !noalias !2803
  unreachable, !dbg !2802

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2782, metadata !2798) #11, !dbg !2789
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2806
  store i32 %1, i32* %11, align 8, !dbg !2806, !alias.scope !2803
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2806
  %13 = bitcast i32* %12 to i8*, !dbg !2806
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2806
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2807
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2781, metadata !796), !dbg !2795
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2808
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2809
  ret i8* %14, !dbg !2810
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2811 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2782, metadata !2788), !dbg !2820
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2815, metadata !796), !dbg !2822
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2816, metadata !796), !dbg !2823
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2817, metadata !796), !dbg !2824
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2818, metadata !796), !dbg !2825
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2826
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2826
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2819, metadata !796), !dbg !2827
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2787, metadata !796) #11, !dbg !2828
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2829
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2829
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2782, metadata !796) #11, !dbg !2820
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2782, metadata !2798) #11, !dbg !2820
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2820
  %9 = icmp eq i32 %1, 10, !dbg !2830
  br i1 %9, label %10, label %11, !dbg !2831

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2832, !noalias !2833
  unreachable, !dbg !2832

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2782, metadata !2798) #11, !dbg !2820
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2836
  store i32 %1, i32* %12, align 8, !dbg !2836, !alias.scope !2833
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2836
  %14 = bitcast i32* %13 to i8*, !dbg !2836
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !2836
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2837
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2819, metadata !796), !dbg !2827
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2838
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2839
  ret i8* %15, !dbg !2840
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2841 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2782, metadata !2788), !dbg !2847
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2845, metadata !796), !dbg !2850
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2846, metadata !796), !dbg !2851
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2778, metadata !796) #11, !dbg !2852
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2779, metadata !796) #11, !dbg !2853
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2780, metadata !796) #11, !dbg !2854
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2855
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2855
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2781, metadata !796) #11, !dbg !2856
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2787, metadata !796) #11, !dbg !2857
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2858
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2858
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2782, metadata !796) #11, !dbg !2847
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2782, metadata !2798) #11, !dbg !2847
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2847
  %7 = icmp eq i32 %0, 10, !dbg !2859
  br i1 %7, label %8, label %9, !dbg !2860

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2861, !noalias !2862
  unreachable, !dbg !2861

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2782, metadata !2798) #11, !dbg !2847
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2865
  store i32 %0, i32* %10, align 8, !dbg !2865, !alias.scope !2862
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2865
  %12 = bitcast i32* %11 to i8*, !dbg !2865
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !2865
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2866
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2781, metadata !796) #11, !dbg !2856
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2867
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2868
  ret i8* %13, !dbg !2869
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2870 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2782, metadata !2788), !dbg !2877
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2874, metadata !796), !dbg !2880
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2875, metadata !796), !dbg !2881
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2876, metadata !796), !dbg !2882
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2815, metadata !796) #11, !dbg !2883
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2816, metadata !796) #11, !dbg !2884
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2817, metadata !796) #11, !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2818, metadata !796) #11, !dbg !2886
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2887
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2887
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2819, metadata !796) #11, !dbg !2888
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2787, metadata !796) #11, !dbg !2889
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2890
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2890
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2782, metadata !796) #11, !dbg !2877
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2782, metadata !2798) #11, !dbg !2877
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2877
  %8 = icmp eq i32 %0, 10, !dbg !2891
  br i1 %8, label %9, label %10, !dbg !2892

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2893, !noalias !2894
  unreachable, !dbg !2893

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2782, metadata !2798) #11, !dbg !2877
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2897
  store i32 %0, i32* %11, align 8, !dbg !2897, !alias.scope !2894
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2897
  %13 = bitcast i32* %12 to i8*, !dbg !2897
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2897
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2898
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2819, metadata !796) #11, !dbg !2888
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !2899
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2900
  ret i8* %14, !dbg !2901
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2902 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2906, metadata !796), !dbg !2910
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2907, metadata !796), !dbg !2911
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2908, metadata !796), !dbg !2912
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2913
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2913
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2914, !tbaa.struct !2915
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2909, metadata !796), !dbg !2916
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1657, metadata !796), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1658, metadata !796), !dbg !2919
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1659, metadata !796), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1660, metadata !796), !dbg !2921
  %6 = lshr i8 %2, 5, !dbg !2922
  %7 = zext i8 %6 to i64, !dbg !2922
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2923
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1661, metadata !796), !dbg !2924
  %9 = and i8 %2, 31, !dbg !2925
  %10 = zext i8 %9 to i32, !dbg !2926
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1663, metadata !796), !dbg !2927
  %11 = load i32, i32* %8, align 4, !dbg !2928, !tbaa !920
  %12 = lshr i32 %11, %10, !dbg !2929
  %13 = and i32 %12, 1, !dbg !2930
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1664, metadata !796), !dbg !2931
  %14 = xor i32 %13, 1, !dbg !2932
  %15 = shl i32 %14, %10, !dbg !2933
  %16 = xor i32 %15, %11, !dbg !2934
  store i32 %16, i32* %8, align 4, !dbg !2934, !tbaa !920
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2909, metadata !796), !dbg !2916
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2935
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2936
  ret i8* %17, !dbg !2937
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2938 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2942, metadata !796), !dbg !2944
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2943, metadata !796), !dbg !2945
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2906, metadata !796) #11, !dbg !2946
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2907, metadata !796) #11, !dbg !2948
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2908, metadata !796) #11, !dbg !2949
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2950
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2950
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2951, !tbaa.struct !2915
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2909, metadata !796) #11, !dbg !2952
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1657, metadata !796) #11, !dbg !2953
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1658, metadata !796) #11, !dbg !2955
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1659, metadata !796) #11, !dbg !2956
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1660, metadata !796) #11, !dbg !2957
  %5 = lshr i8 %1, 5, !dbg !2958
  %6 = zext i8 %5 to i64, !dbg !2958
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2959
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1661, metadata !796) #11, !dbg !2960
  %8 = and i8 %1, 31, !dbg !2961
  %9 = zext i8 %8 to i32, !dbg !2962
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1663, metadata !796) #11, !dbg !2963
  %10 = load i32, i32* %7, align 4, !dbg !2964, !tbaa !920
  %11 = lshr i32 %10, %9, !dbg !2965
  %12 = and i32 %11, 1, !dbg !2966
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1664, metadata !796) #11, !dbg !2967
  %13 = xor i32 %12, 1, !dbg !2968
  %14 = shl i32 %13, %9, !dbg !2969
  %15 = xor i32 %14, %10, !dbg !2970
  store i32 %15, i32* %7, align 4, !dbg !2970, !tbaa !920
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2909, metadata !796) #11, !dbg !2952
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2971
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2972
  ret i8* %16, !dbg !2973
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2974 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2976, metadata !796), !dbg !2977
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2942, metadata !796) #11, !dbg !2978
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2943, metadata !796) #11, !dbg !2980
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2906, metadata !796) #11, !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2907, metadata !796) #11, !dbg !2983
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2908, metadata !796) #11, !dbg !2984
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2985
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2985
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2986, !tbaa.struct !2915
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2909, metadata !796) #11, !dbg !2987
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1657, metadata !796) #11, !dbg !2988
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1658, metadata !796) #11, !dbg !2990
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1659, metadata !796) #11, !dbg !2991
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1660, metadata !796) #11, !dbg !2992
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2993
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1661, metadata !796) #11, !dbg !2994
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1663, metadata !796) #11, !dbg !2995
  %5 = load i32, i32* %4, align 4, !dbg !2996, !tbaa !920
  %6 = or i32 %5, 67108864, !dbg !2997
  store i32 %6, i32* %4, align 4, !dbg !2997, !tbaa !920
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2909, metadata !796) #11, !dbg !2987
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2998
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2999
  ret i8* %7, !dbg !3000
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3001 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3003, metadata !796), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3004, metadata !796), !dbg !3006
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2906, metadata !796) #11, !dbg !3007
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2907, metadata !796) #11, !dbg !3009
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2908, metadata !796) #11, !dbg !3010
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3011
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3011
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3012, !tbaa.struct !2915
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2909, metadata !796) #11, !dbg !3013
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1657, metadata !796) #11, !dbg !3014
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1658, metadata !796) #11, !dbg !3016
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1659, metadata !796) #11, !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1660, metadata !796) #11, !dbg !3018
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3019
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1661, metadata !796) #11, !dbg !3020
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1663, metadata !796) #11, !dbg !3021
  %6 = load i32, i32* %5, align 4, !dbg !3022, !tbaa !920
  %7 = or i32 %6, 67108864, !dbg !3023
  store i32 %7, i32* %5, align 4, !dbg !3023, !tbaa !920
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2909, metadata !796) #11, !dbg !3013
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3024
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3025
  ret i8* %8, !dbg !3026
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3027 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2782, metadata !2788), !dbg !3033
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3029, metadata !796), !dbg !3035
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3030, metadata !796), !dbg !3036
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3031, metadata !796), !dbg !3037
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3038
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3038
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2787, metadata !796) #11, !dbg !3039
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3040
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3040
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2782, metadata !796) #11, !dbg !3033
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2782, metadata !2798) #11, !dbg !3033
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3033
  %9 = icmp eq i32 %1, 10, !dbg !3041
  br i1 %9, label %10, label %11, !dbg !3042

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3043, !noalias !3044
  unreachable, !dbg !3043

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2782, metadata !2798) #11, !dbg !3033
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3047
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3047
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3048
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3049
  store i32 %1, i32* %13, align 8, !dbg !3049
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3049
  %15 = bitcast i32* %14 to i8*, !dbg !3049
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3049
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3032, metadata !796), !dbg !3050
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1657, metadata !796), !dbg !3051
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1658, metadata !796), !dbg !3053
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1659, metadata !796), !dbg !3054
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1660, metadata !796), !dbg !3055
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3056
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1661, metadata !796), !dbg !3057
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1663, metadata !796), !dbg !3058
  %17 = load i32, i32* %16, align 4, !dbg !3059, !tbaa !920
  %18 = or i32 %17, 67108864, !dbg !3060
  store i32 %18, i32* %16, align 4, !dbg !3060, !tbaa !920
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3032, metadata !796), !dbg !3050
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3061
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3062
  ret i8* %19, !dbg !3063
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3064 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3068, metadata !796), !dbg !3072
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3069, metadata !796), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3070, metadata !796), !dbg !3074
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3071, metadata !796), !dbg !3075
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3076, metadata !796) #11, !dbg !3086
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3081, metadata !796) #11, !dbg !3088
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3082, metadata !796) #11, !dbg !3089
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3083, metadata !796) #11, !dbg !3090
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3084, metadata !796) #11, !dbg !3091
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3092
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3092
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3093, !tbaa.struct !2915
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3085, metadata !796) #11, !dbg !3094
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1706, metadata !796) #11, !dbg !3095
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1707, metadata !796) #11, !dbg !3097
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1708, metadata !796) #11, !dbg !3098
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1706, metadata !796) #11, !dbg !3095
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1706, metadata !796) #11, !dbg !3095
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3099
  store i32 10, i32* %7, align 8, !dbg !3100, !tbaa !1638
  %8 = icmp ne i8* %1, null, !dbg !3101
  %9 = icmp ne i8* %2, null, !dbg !3102
  %10 = and i1 %8, %9, !dbg !3103
  br i1 %10, label %12, label %11, !dbg !3103

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3104
  unreachable, !dbg !3104

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3105
  store i8* %1, i8** %13, align 8, !dbg !3106, !tbaa !1724
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3107
  store i8* %2, i8** %14, align 8, !dbg !3108, !tbaa !1727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3085, metadata !796) #11, !dbg !3094
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3109
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3110
  ret i8* %15, !dbg !3111
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3077 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3076, metadata !796), !dbg !3112
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3081, metadata !796), !dbg !3113
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3082, metadata !796), !dbg !3114
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3083, metadata !796), !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3084, metadata !796), !dbg !3116
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3117
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3117
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3118, !tbaa.struct !2915
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3085, metadata !796), !dbg !3119
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1706, metadata !796) #11, !dbg !3120
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1707, metadata !796) #11, !dbg !3122
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1708, metadata !796) #11, !dbg !3123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1706, metadata !796) #11, !dbg !3120
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1706, metadata !796) #11, !dbg !3120
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3124
  store i32 10, i32* %8, align 8, !dbg !3125, !tbaa !1638
  %9 = icmp ne i8* %1, null, !dbg !3126
  %10 = icmp ne i8* %2, null, !dbg !3127
  %11 = and i1 %9, %10, !dbg !3128
  br i1 %11, label %13, label %12, !dbg !3128

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3129
  unreachable, !dbg !3129

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3130
  store i8* %1, i8** %14, align 8, !dbg !3131, !tbaa !1724
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3132
  store i8* %2, i8** %15, align 8, !dbg !3133, !tbaa !1727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3085, metadata !796), !dbg !3119
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3134
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3135
  ret i8* %16, !dbg !3136
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3137 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3141, metadata !796), !dbg !3144
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3142, metadata !796), !dbg !3145
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3143, metadata !796), !dbg !3146
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3068, metadata !796) #11, !dbg !3147
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3069, metadata !796) #11, !dbg !3149
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3070, metadata !796) #11, !dbg !3150
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3071, metadata !796) #11, !dbg !3151
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3076, metadata !796) #11, !dbg !3152
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3081, metadata !796) #11, !dbg !3154
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3082, metadata !796) #11, !dbg !3155
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3083, metadata !796) #11, !dbg !3156
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3084, metadata !796) #11, !dbg !3157
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3158
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3158
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3159, !tbaa.struct !2915
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3085, metadata !796) #11, !dbg !3160
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1706, metadata !796) #11, !dbg !3161
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1707, metadata !796) #11, !dbg !3163
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1708, metadata !796) #11, !dbg !3164
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1706, metadata !796) #11, !dbg !3161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1706, metadata !796) #11, !dbg !3161
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3165
  store i32 10, i32* %6, align 8, !dbg !3166, !tbaa !1638
  %7 = icmp ne i8* %0, null, !dbg !3167
  %8 = icmp ne i8* %1, null, !dbg !3168
  %9 = and i1 %7, %8, !dbg !3169
  br i1 %9, label %11, label %10, !dbg !3169

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3170
  unreachable, !dbg !3170

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3171
  store i8* %0, i8** %12, align 8, !dbg !3172, !tbaa !1724
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3173
  store i8* %1, i8** %13, align 8, !dbg !3174, !tbaa !1727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3085, metadata !796) #11, !dbg !3160
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3175
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3176
  ret i8* %14, !dbg !3177
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3178 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3182, metadata !796), !dbg !3186
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3183, metadata !796), !dbg !3187
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3184, metadata !796), !dbg !3188
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3185, metadata !796), !dbg !3189
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3076, metadata !796) #11, !dbg !3190
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3081, metadata !796) #11, !dbg !3192
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3082, metadata !796) #11, !dbg !3193
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3083, metadata !796) #11, !dbg !3194
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3084, metadata !796) #11, !dbg !3195
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3196
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3197, !tbaa.struct !2915
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3085, metadata !796) #11, !dbg !3198
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1706, metadata !796) #11, !dbg !3199
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1707, metadata !796) #11, !dbg !3201
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1708, metadata !796) #11, !dbg !3202
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1706, metadata !796) #11, !dbg !3199
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1706, metadata !796) #11, !dbg !3199
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3203
  store i32 10, i32* %7, align 8, !dbg !3204, !tbaa !1638
  %8 = icmp ne i8* %0, null, !dbg !3205
  %9 = icmp ne i8* %1, null, !dbg !3206
  %10 = and i1 %8, %9, !dbg !3207
  br i1 %10, label %12, label %11, !dbg !3207

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3208
  unreachable, !dbg !3208

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3209
  store i8* %0, i8** %13, align 8, !dbg !3210, !tbaa !1724
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3211
  store i8* %1, i8** %14, align 8, !dbg !3212, !tbaa !1727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3085, metadata !796) #11, !dbg !3198
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3213
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3214
  ret i8* %15, !dbg !3215
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3216 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3220, metadata !796), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3221, metadata !796), !dbg !3224
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3222, metadata !796), !dbg !3225
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3226
  ret i8* %4, !dbg !3227
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3228 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3232, metadata !796), !dbg !3234
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3233, metadata !796), !dbg !3235
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3220, metadata !796) #11, !dbg !3236
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3221, metadata !796) #11, !dbg !3238
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3222, metadata !796) #11, !dbg !3239
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3240
  ret i8* %3, !dbg !3241
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3242 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3246, metadata !796), !dbg !3248
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3247, metadata !796), !dbg !3249
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3220, metadata !796) #11, !dbg !3250
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3221, metadata !796) #11, !dbg !3252
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3222, metadata !796) #11, !dbg !3253
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3254
  ret i8* %3, !dbg !3255
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3256 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3258, metadata !796), !dbg !3259
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3246, metadata !796) #11, !dbg !3260
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3247, metadata !796) #11, !dbg !3262
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3220, metadata !796) #11, !dbg !3263
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3221, metadata !796) #11, !dbg !3265
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3222, metadata !796) #11, !dbg !3266
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3267
  ret i8* %2, !dbg !3268
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #6 !dbg !719 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !723, metadata !796), !dbg !3269
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !724, metadata !796), !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !725, metadata !796), !dbg !3271
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !725, metadata !796), !dbg !3271
  %4 = tail call i64 @read(i32 %0, i8* %1, i64 %2) #11, !dbg !3272
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !726, metadata !796), !dbg !3273
  %5 = icmp sgt i64 %4, -1, !dbg !3274
  br i1 %5, label %25, label %6, !dbg !3276

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #17, !dbg !3277
  br label %11, !dbg !3276

; <label>:8:                                      ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !725, metadata !796), !dbg !3271
  %9 = tail call i64 @read(i32 %0, i8* %1, i64 2147475456) #11, !dbg !3272
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !726, metadata !796), !dbg !3273
  %10 = icmp sgt i64 %9, -1, !dbg !3274
  br i1 %10, label %25, label %11, !dbg !3276, !llvm.loop !3279

; <label>:11:                                     ; preds = %6, %8
  %12 = phi i64 [ %4, %6 ], [ %9, %8 ]
  %13 = phi i64 [ %2, %6 ], [ 2147475456, %8 ]
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !725, metadata !796), !dbg !3271
  br label %17, !dbg !3276

; <label>:14:                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !725, metadata !796), !dbg !3271
  %15 = tail call i64 @read(i32 %0, i8* %1, i64 %13) #11, !dbg !3272
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !726, metadata !796), !dbg !3273
  %16 = icmp sgt i64 %15, -1, !dbg !3274
  br i1 %16, label %25, label %17, !dbg !3276

; <label>:17:                                     ; preds = %11, %14
  %18 = phi i64 [ %12, %11 ], [ %15, %14 ]
  %19 = load i32, i32* %7, align 4, !dbg !3277, !tbaa !920
  %20 = icmp eq i32 %19, 4, !dbg !3277
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !725, metadata !796), !dbg !3271
  br i1 %20, label %14, label %21, !dbg !3282, !llvm.loop !3279

; <label>:21:                                     ; preds = %17
  %22 = icmp eq i32 %19, 22, !dbg !3283
  %23 = icmp ugt i64 %13, 2147475456, !dbg !3285
  %24 = and i1 %23, %22, !dbg !3286
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !725, metadata !796), !dbg !3271
  br i1 %24, label %8, label %25

; <label>:25:                                     ; preds = %21, %8, %14, %3
  %26 = phi i64 [ %4, %3 ], [ %15, %14 ], [ %9, %8 ], [ %18, %21 ]
  ret i64 %26, !dbg !3287
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @mkstemp_safer(i8*) local_unnamed_addr #6 !dbg !3288 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3293, metadata !796), !dbg !3294
  %2 = tail call i32 @mkstemp(i8* %0) #11, !dbg !3295
  %3 = tail call i32 @fd_safer(i32 %2) #11, !dbg !3296
  ret i32 %3, !dbg !3297
}

declare i32 @mkstemp(i8*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @fd_safer(i32) local_unnamed_addr #6 !dbg !3298 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3303, metadata !796), !dbg !3308
  %2 = icmp ult i32 %0, 3, !dbg !3309
  br i1 %2, label %3, label %8, !dbg !3309

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @dup_safer(i32 %0) #11, !dbg !3310
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3304, metadata !796), !dbg !3311
  %5 = tail call i32* @__errno_location() #17, !dbg !3312
  %6 = load i32, i32* %5, align 4, !dbg !3312, !tbaa !920
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3307, metadata !796), !dbg !3313
  %7 = tail call i32 @close(i32 %0) #11, !dbg !3314
  store i32 %6, i32* %5, align 4, !dbg !3315, !tbaa !920
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3303, metadata !796), !dbg !3308
  br label %8, !dbg !3316

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !3303, metadata !796), !dbg !3308
  ret i32 %9, !dbg !3317
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3318 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3362, metadata !796), !dbg !3368
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3363, metadata !796), !dbg !3369
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3364, metadata !796), !dbg !3370
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3365, metadata !796), !dbg !3371
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3366, metadata !796), !dbg !3372
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3367, metadata !796), !dbg !3373
  %7 = icmp eq i8* %1, null, !dbg !3374
  br i1 %7, label %10, label %8, !dbg !3376

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3377
  br label %12, !dbg !3377

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.85, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3378
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.86, i64 0, i64 0), i32 5) #11, !dbg !3379
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3379
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.87, i64 0, i64 0), i32 5) #11, !dbg !3380
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3380
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
  ], !dbg !3381

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3382
  unreachable, !dbg !3382

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.88, i64 0, i64 0), i32 5) #11, !dbg !3384
  %20 = load i8*, i8** %4, align 8, !dbg !3384, !tbaa !803
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3384
  br label %146, !dbg !3385

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.89, i64 0, i64 0), i32 5) #11, !dbg !3386
  %24 = load i8*, i8** %4, align 8, !dbg !3386, !tbaa !803
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3386
  %26 = load i8*, i8** %25, align 8, !dbg !3386, !tbaa !803
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3386
  br label %146, !dbg !3387

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.90, i64 0, i64 0), i32 5) #11, !dbg !3388
  %30 = load i8*, i8** %4, align 8, !dbg !3388, !tbaa !803
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3388
  %32 = load i8*, i8** %31, align 8, !dbg !3388, !tbaa !803
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3388
  %34 = load i8*, i8** %33, align 8, !dbg !3388, !tbaa !803
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3388
  br label %146, !dbg !3389

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.91, i64 0, i64 0), i32 5) #11, !dbg !3390
  %38 = load i8*, i8** %4, align 8, !dbg !3390, !tbaa !803
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3390
  %40 = load i8*, i8** %39, align 8, !dbg !3390, !tbaa !803
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3390
  %42 = load i8*, i8** %41, align 8, !dbg !3390, !tbaa !803
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3390
  %44 = load i8*, i8** %43, align 8, !dbg !3390, !tbaa !803
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3390
  br label %146, !dbg !3391

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.92, i64 0, i64 0), i32 5) #11, !dbg !3392
  %48 = load i8*, i8** %4, align 8, !dbg !3392, !tbaa !803
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3392
  %50 = load i8*, i8** %49, align 8, !dbg !3392, !tbaa !803
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3392
  %52 = load i8*, i8** %51, align 8, !dbg !3392, !tbaa !803
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3392
  %54 = load i8*, i8** %53, align 8, !dbg !3392, !tbaa !803
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3392
  %56 = load i8*, i8** %55, align 8, !dbg !3392, !tbaa !803
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3392
  br label %146, !dbg !3393

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.93, i64 0, i64 0), i32 5) #11, !dbg !3394
  %60 = load i8*, i8** %4, align 8, !dbg !3394, !tbaa !803
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3394
  %62 = load i8*, i8** %61, align 8, !dbg !3394, !tbaa !803
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3394
  %64 = load i8*, i8** %63, align 8, !dbg !3394, !tbaa !803
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3394
  %66 = load i8*, i8** %65, align 8, !dbg !3394, !tbaa !803
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3394
  %68 = load i8*, i8** %67, align 8, !dbg !3394, !tbaa !803
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3394
  %70 = load i8*, i8** %69, align 8, !dbg !3394, !tbaa !803
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3394
  br label %146, !dbg !3395

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.94, i64 0, i64 0), i32 5) #11, !dbg !3396
  %74 = load i8*, i8** %4, align 8, !dbg !3396, !tbaa !803
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3396
  %76 = load i8*, i8** %75, align 8, !dbg !3396, !tbaa !803
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3396
  %78 = load i8*, i8** %77, align 8, !dbg !3396, !tbaa !803
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3396
  %80 = load i8*, i8** %79, align 8, !dbg !3396, !tbaa !803
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3396
  %82 = load i8*, i8** %81, align 8, !dbg !3396, !tbaa !803
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3396
  %84 = load i8*, i8** %83, align 8, !dbg !3396, !tbaa !803
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3396
  %86 = load i8*, i8** %85, align 8, !dbg !3396, !tbaa !803
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3396
  br label %146, !dbg !3397

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.95, i64 0, i64 0), i32 5) #11, !dbg !3398
  %90 = load i8*, i8** %4, align 8, !dbg !3398, !tbaa !803
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3398
  %92 = load i8*, i8** %91, align 8, !dbg !3398, !tbaa !803
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3398
  %94 = load i8*, i8** %93, align 8, !dbg !3398, !tbaa !803
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3398
  %96 = load i8*, i8** %95, align 8, !dbg !3398, !tbaa !803
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3398
  %98 = load i8*, i8** %97, align 8, !dbg !3398, !tbaa !803
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3398
  %100 = load i8*, i8** %99, align 8, !dbg !3398, !tbaa !803
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3398
  %102 = load i8*, i8** %101, align 8, !dbg !3398, !tbaa !803
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3398
  %104 = load i8*, i8** %103, align 8, !dbg !3398, !tbaa !803
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3398
  br label %146, !dbg !3399

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.96, i64 0, i64 0), i32 5) #11, !dbg !3400
  %108 = load i8*, i8** %4, align 8, !dbg !3400, !tbaa !803
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3400
  %110 = load i8*, i8** %109, align 8, !dbg !3400, !tbaa !803
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3400
  %112 = load i8*, i8** %111, align 8, !dbg !3400, !tbaa !803
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3400
  %114 = load i8*, i8** %113, align 8, !dbg !3400, !tbaa !803
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3400
  %116 = load i8*, i8** %115, align 8, !dbg !3400, !tbaa !803
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3400
  %118 = load i8*, i8** %117, align 8, !dbg !3400, !tbaa !803
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3400
  %120 = load i8*, i8** %119, align 8, !dbg !3400, !tbaa !803
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3400
  %122 = load i8*, i8** %121, align 8, !dbg !3400, !tbaa !803
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3400
  %124 = load i8*, i8** %123, align 8, !dbg !3400, !tbaa !803
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3400
  br label %146, !dbg !3401

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.97, i64 0, i64 0), i32 5) #11, !dbg !3402
  %128 = load i8*, i8** %4, align 8, !dbg !3402, !tbaa !803
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3402
  %130 = load i8*, i8** %129, align 8, !dbg !3402, !tbaa !803
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3402
  %132 = load i8*, i8** %131, align 8, !dbg !3402, !tbaa !803
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3402
  %134 = load i8*, i8** %133, align 8, !dbg !3402, !tbaa !803
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3402
  %136 = load i8*, i8** %135, align 8, !dbg !3402, !tbaa !803
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3402
  %138 = load i8*, i8** %137, align 8, !dbg !3402, !tbaa !803
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3402
  %140 = load i8*, i8** %139, align 8, !dbg !3402, !tbaa !803
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3402
  %142 = load i8*, i8** %141, align 8, !dbg !3402, !tbaa !803
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3402
  %144 = load i8*, i8** %143, align 8, !dbg !3402, !tbaa !803
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3402
  br label %146, !dbg !3403

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3404
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3405 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3409, metadata !796), !dbg !3415
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3410, metadata !796), !dbg !3416
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3411, metadata !796), !dbg !3417
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3412, metadata !796), !dbg !3418
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3413, metadata !796), !dbg !3419
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3414, metadata !796), !dbg !3420
  br label %6, !dbg !3421

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3414, metadata !796), !dbg !3420
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3423
  %9 = load i8*, i8** %8, align 8, !dbg !3423, !tbaa !803
  %10 = icmp eq i8* %9, null, !dbg !3425
  %11 = add i64 %7, 1, !dbg !3426
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3414, metadata !796), !dbg !3420
  br i1 %10, label %12, label %6, !dbg !3425, !llvm.loop !3427

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3429
  ret void, !dbg !3430
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3431 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3442, metadata !796), !dbg !3450
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3443, metadata !796), !dbg !3451
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3444, metadata !796), !dbg !3452
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3445, metadata !796), !dbg !3453
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3446, metadata !796), !dbg !3454
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3455
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3455
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3448, metadata !796), !dbg !3456
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3447, metadata !796), !dbg !3457
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3447, metadata !796), !dbg !3457
  %11 = load i32, i32* %8, align 8, !dbg !3458
  %12 = icmp ult i32 %11, 41, !dbg !3458
  br i1 %12, label %13, label %18, !dbg !3458

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3458
  %15 = sext i32 %11 to i64, !dbg !3458
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3458
  %17 = add i32 %11, 8, !dbg !3458
  store i32 %17, i32* %8, align 8, !dbg !3458
  br label %21, !dbg !3458

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3458
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3458
  store i8* %20, i8** %10, align 8, !dbg !3458
  br label %21, !dbg !3458

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3458
  %25 = load i8*, i8** %24, align 8, !dbg !3458
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3461
  store i8* %25, i8** %26, align 16, !dbg !3462, !tbaa !803
  %27 = icmp eq i8* %25, null, !dbg !3463
  br i1 %27, label %30, label %28, !dbg !3464

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3447, metadata !796), !dbg !3457
  %29 = icmp ult i32 %22, 41, !dbg !3458
  br i1 %29, label %35, label %32, !dbg !3458

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3465
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3466
  ret void, !dbg !3466

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3458
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3458
  store i8* %34, i8** %10, align 8, !dbg !3458
  br label %40, !dbg !3458

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3458
  %37 = sext i32 %22 to i64, !dbg !3458
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3458
  %39 = add i32 %22, 8, !dbg !3458
  store i32 %39, i32* %8, align 8, !dbg !3458
  br label %40, !dbg !3458

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3458
  %44 = load i8*, i8** %43, align 8, !dbg !3458
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3461
  store i8* %44, i8** %45, align 8, !dbg !3462, !tbaa !803
  %46 = icmp eq i8* %44, null, !dbg !3463
  br i1 %46, label %30, label %47, !dbg !3464

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3447, metadata !796), !dbg !3457
  %48 = icmp ult i32 %41, 41, !dbg !3458
  br i1 %48, label %52, label %49, !dbg !3458

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3458
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3458
  store i8* %51, i8** %10, align 8, !dbg !3458
  br label %57, !dbg !3458

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3458
  %54 = sext i32 %41 to i64, !dbg !3458
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3458
  %56 = add i32 %41, 8, !dbg !3458
  store i32 %56, i32* %8, align 8, !dbg !3458
  br label %57, !dbg !3458

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3458
  %61 = load i8*, i8** %60, align 8, !dbg !3458
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3461
  store i8* %61, i8** %62, align 16, !dbg !3462, !tbaa !803
  %63 = icmp eq i8* %61, null, !dbg !3463
  br i1 %63, label %30, label %64, !dbg !3464

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3447, metadata !796), !dbg !3457
  %65 = icmp ult i32 %58, 41, !dbg !3458
  br i1 %65, label %69, label %66, !dbg !3458

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3458
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3458
  store i8* %68, i8** %10, align 8, !dbg !3458
  br label %74, !dbg !3458

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3458
  %71 = sext i32 %58 to i64, !dbg !3458
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3458
  %73 = add i32 %58, 8, !dbg !3458
  store i32 %73, i32* %8, align 8, !dbg !3458
  br label %74, !dbg !3458

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3458
  %78 = load i8*, i8** %77, align 8, !dbg !3458
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3461
  store i8* %78, i8** %79, align 8, !dbg !3462, !tbaa !803
  %80 = icmp eq i8* %78, null, !dbg !3463
  br i1 %80, label %30, label %81, !dbg !3464

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3447, metadata !796), !dbg !3457
  %82 = icmp ult i32 %75, 41, !dbg !3458
  br i1 %82, label %86, label %83, !dbg !3458

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3458
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3458
  store i8* %85, i8** %10, align 8, !dbg !3458
  br label %91, !dbg !3458

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3458
  %88 = sext i32 %75 to i64, !dbg !3458
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3458
  %90 = add i32 %75, 8, !dbg !3458
  store i32 %90, i32* %8, align 8, !dbg !3458
  br label %91, !dbg !3458

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3458
  %95 = load i8*, i8** %94, align 8, !dbg !3458
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3461
  store i8* %95, i8** %96, align 16, !dbg !3462, !tbaa !803
  %97 = icmp eq i8* %95, null, !dbg !3463
  br i1 %97, label %30, label %98, !dbg !3464

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3447, metadata !796), !dbg !3457
  %99 = icmp ult i32 %92, 41, !dbg !3458
  br i1 %99, label %103, label %100, !dbg !3458

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3458
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3458
  store i8* %102, i8** %10, align 8, !dbg !3458
  br label %108, !dbg !3458

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3458
  %105 = sext i32 %92 to i64, !dbg !3458
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3458
  %107 = add i32 %92, 8, !dbg !3458
  store i32 %107, i32* %8, align 8, !dbg !3458
  br label %108, !dbg !3458

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3458
  %111 = load i8*, i8** %110, align 8, !dbg !3458
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3461
  store i8* %111, i8** %112, align 8, !dbg !3462, !tbaa !803
  %113 = icmp eq i8* %111, null, !dbg !3463
  br i1 %113, label %30, label %114, !dbg !3464

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3447, metadata !796), !dbg !3457
  %115 = load i8*, i8** %10, align 8, !dbg !3458
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3458
  store i8* %116, i8** %10, align 8, !dbg !3458
  %117 = bitcast i8* %115 to i8**, !dbg !3458
  %118 = load i8*, i8** %117, align 8, !dbg !3458
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3461
  store i8* %118, i8** %119, align 16, !dbg !3462, !tbaa !803
  %120 = icmp eq i8* %118, null, !dbg !3463
  br i1 %120, label %30, label %121, !dbg !3464

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3447, metadata !796), !dbg !3457
  %122 = load i8*, i8** %10, align 8, !dbg !3458
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3458
  store i8* %123, i8** %10, align 8, !dbg !3458
  %124 = bitcast i8* %122 to i8**, !dbg !3458
  %125 = load i8*, i8** %124, align 8, !dbg !3458
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3461
  store i8* %125, i8** %126, align 8, !dbg !3462, !tbaa !803
  %127 = icmp eq i8* %125, null, !dbg !3463
  br i1 %127, label %30, label %128, !dbg !3464

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3447, metadata !796), !dbg !3457
  %129 = load i8*, i8** %10, align 8, !dbg !3458
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3458
  store i8* %130, i8** %10, align 8, !dbg !3458
  %131 = bitcast i8* %129 to i8**, !dbg !3458
  %132 = load i8*, i8** %131, align 8, !dbg !3458
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3461
  store i8* %132, i8** %133, align 16, !dbg !3462, !tbaa !803
  %134 = icmp eq i8* %132, null, !dbg !3463
  br i1 %134, label %30, label %135, !dbg !3464

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3447, metadata !796), !dbg !3457
  %136 = load i8*, i8** %10, align 8, !dbg !3458
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3458
  store i8* %137, i8** %10, align 8, !dbg !3458
  %138 = bitcast i8* %136 to i8**, !dbg !3458
  %139 = load i8*, i8** %138, align 8, !dbg !3458
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3461
  store i8* %139, i8** %140, align 8, !dbg !3462, !tbaa !803
  %141 = icmp eq i8* %139, null, !dbg !3463
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3447, metadata !796), !dbg !3457
  %142 = select i1 %141, i64 9, i64 10, !dbg !3464
  br label %30, !dbg !3464
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3467 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3471, metadata !796), !dbg !3480
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3472, metadata !796), !dbg !3481
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3473, metadata !796), !dbg !3482
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3474, metadata !796), !dbg !3483
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3484
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3484
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3475, metadata !796), !dbg !3485
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3486
  call void @llvm.va_start(i8* nonnull %6), !dbg !3486
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3487
  call void @llvm.va_end(i8* nonnull %6), !dbg !3488
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3489
  ret void, !dbg !3489
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3490 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.100, i64 0, i64 0), i32 5) #11, !dbg !3491
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.101, i64 0, i64 0)) #11, !dbg !3491
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.102, i64 0, i64 0), i32 5) #11, !dbg !3492
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.103, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.104, i64 0, i64 0)) #11, !dbg !3492
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.105, i64 0, i64 0), i32 5) #11, !dbg !3493
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3493, !tbaa !803
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !3493
  ret void, !dbg !3494
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3495 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3499, metadata !796), !dbg !3501
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3500, metadata !796), !dbg !3502
  %3 = udiv i64 9223372036854775807, %1, !dbg !3503
  %4 = icmp ult i64 %3, %0, !dbg !3503
  br i1 %4, label %5, label %6, !dbg !3505

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3506
  unreachable, !dbg !3506

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3507
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3508, metadata !796) #11, !dbg !3515
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3517
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3514, metadata !796) #11, !dbg !3518
  %9 = icmp eq i8* %8, null, !dbg !3519
  %10 = icmp ne i64 %7, 0, !dbg !3521
  %11 = and i1 %10, %9, !dbg !3522
  br i1 %11, label %12, label %13, !dbg !3522

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3523
  unreachable, !dbg !3523

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3524
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3509 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3508, metadata !796), !dbg !3525
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3526
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3514, metadata !796), !dbg !3527
  %3 = icmp eq i8* %2, null, !dbg !3528
  %4 = icmp ne i64 %0, 0, !dbg !3529
  %5 = and i1 %4, %3, !dbg !3530
  br i1 %5, label %6, label %7, !dbg !3530

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3531
  unreachable, !dbg !3531

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3532
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3533 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3537, metadata !796), !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3538, metadata !796), !dbg !3541
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3539, metadata !796), !dbg !3542
  %4 = udiv i64 9223372036854775807, %2, !dbg !3543
  %5 = icmp ult i64 %4, %1, !dbg !3543
  br i1 %5, label %6, label %7, !dbg !3545

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3546
  unreachable, !dbg !3546

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3547
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3548, metadata !796) #11, !dbg !3554
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3553, metadata !796) #11, !dbg !3556
  %9 = icmp eq i64 %8, 0, !dbg !3557
  %10 = icmp ne i8* %0, null, !dbg !3559
  %11 = and i1 %10, %9, !dbg !3560
  br i1 %11, label %12, label %13, !dbg !3560

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3561
  br label %19, !dbg !3563

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3564
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3548, metadata !796) #11, !dbg !3554
  %15 = icmp eq i8* %14, null, !dbg !3565
  %16 = icmp ne i64 %8, 0, !dbg !3567
  %17 = and i1 %16, %15, !dbg !3568
  br i1 %17, label %18, label %19, !dbg !3568

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3569
  unreachable, !dbg !3569

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3570
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3549 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3548, metadata !796), !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3553, metadata !796), !dbg !3572
  %3 = icmp eq i64 %1, 0, !dbg !3573
  %4 = icmp ne i8* %0, null, !dbg !3574
  %5 = and i1 %4, %3, !dbg !3575
  br i1 %5, label %6, label %7, !dbg !3575

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3576
  br label %13, !dbg !3577

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3578
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3548, metadata !796), !dbg !3571
  %9 = icmp eq i8* %8, null, !dbg !3579
  %10 = icmp ne i64 %1, 0, !dbg !3580
  %11 = and i1 %10, %9, !dbg !3581
  br i1 %11, label %12, label %13, !dbg !3581

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3582
  unreachable, !dbg !3582

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3583
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !751 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !756, metadata !796), !dbg !3584
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !757, metadata !796), !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !758, metadata !796), !dbg !3586
  %4 = load i64, i64* %1, align 8, !dbg !3587, !tbaa !847
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !759, metadata !796), !dbg !3588
  %5 = icmp eq i8* %0, null, !dbg !3589
  br i1 %5, label %6, label %13, !dbg !3591

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3592
  br i1 %7, label %8, label %17, !dbg !3595

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3596
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !759, metadata !796), !dbg !3588
  %10 = icmp ugt i64 %2, 128, !dbg !3598
  %11 = zext i1 %10 to i64, !dbg !3598
  %12 = add nuw nsw i64 %9, %11, !dbg !3599
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !759, metadata !796), !dbg !3588
  br label %17, !dbg !3600

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3601
  %15 = icmp ugt i64 %14, %4, !dbg !3604
  br i1 %15, label %20, label %16, !dbg !3605

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3606
  unreachable, !dbg !3606

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !759, metadata !796), !dbg !3588
  store i64 %18, i64* %1, align 8, !dbg !3607, !tbaa !847
  %19 = mul i64 %18, %2, !dbg !3608
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3548, metadata !796) #11, !dbg !3609
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3553, metadata !796) #11, !dbg !3611
  br label %27, !dbg !3612

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3613
  %22 = add i64 %4, 1, !dbg !3614
  %23 = add i64 %22, %21, !dbg !3615
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !759, metadata !796), !dbg !3588
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !759, metadata !796), !dbg !3588
  store i64 %23, i64* %1, align 8, !dbg !3607, !tbaa !847
  %24 = mul i64 %23, %2, !dbg !3608
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3548, metadata !796) #11, !dbg !3609
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3553, metadata !796) #11, !dbg !3611
  %25 = icmp eq i64 %24, 0, !dbg !3616
  br i1 %25, label %26, label %27, !dbg !3612

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !3617
  br label %34, !dbg !3618

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !3619
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3548, metadata !796) #11, !dbg !3609
  %30 = icmp eq i8* %29, null, !dbg !3620
  %31 = icmp ne i64 %28, 0, !dbg !3621
  %32 = and i1 %31, %30, !dbg !3622
  br i1 %32, label %33, label %34, !dbg !3622

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3623
  unreachable, !dbg !3623

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3624
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3625 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3627, metadata !796), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3508, metadata !796) #11, !dbg !3629
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3631
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3514, metadata !796) #11, !dbg !3632
  %3 = icmp eq i8* %2, null, !dbg !3633
  %4 = icmp ne i64 %0, 0, !dbg !3634
  %5 = and i1 %4, %3, !dbg !3635
  br i1 %5, label %6, label %7, !dbg !3635

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3636
  unreachable, !dbg !3636

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3637
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3638 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3642, metadata !796), !dbg !3644
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3643, metadata !796), !dbg !3645
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !756, metadata !796) #11, !dbg !3646
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !757, metadata !796) #11, !dbg !3648
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !758, metadata !796) #11, !dbg !3649
  %3 = load i64, i64* %1, align 8, !dbg !3650, !tbaa !847
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !759, metadata !796) #11, !dbg !3651
  %4 = icmp eq i8* %0, null, !dbg !3652
  br i1 %4, label %5, label %8, !dbg !3653

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3654
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !759, metadata !796) #11, !dbg !3651
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !759, metadata !796) #11, !dbg !3651
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3655
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !759, metadata !796) #11, !dbg !3651
  store i64 %7, i64* %1, align 8, !dbg !3656, !tbaa !847
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3548, metadata !796) #11, !dbg !3657
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3553, metadata !796) #11, !dbg !3659
  br label %17, !dbg !3660

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3661
  br i1 %9, label %11, label %10, !dbg !3662

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3663
  unreachable, !dbg !3663

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3664
  %13 = add i64 %3, 1, !dbg !3665
  %14 = add i64 %13, %12, !dbg !3666
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !759, metadata !796) #11, !dbg !3651
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !759, metadata !796) #11, !dbg !3651
  store i64 %14, i64* %1, align 8, !dbg !3656, !tbaa !847
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3548, metadata !796) #11, !dbg !3657
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3553, metadata !796) #11, !dbg !3659
  %15 = icmp eq i64 %14, 0, !dbg !3667
  br i1 %15, label %16, label %17, !dbg !3660

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3668
  br label %24, !dbg !3669

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3670
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3548, metadata !796) #11, !dbg !3657
  %20 = icmp eq i8* %19, null, !dbg !3671
  %21 = icmp ne i64 %18, 0, !dbg !3672
  %22 = and i1 %21, %20, !dbg !3673
  br i1 %22, label %23, label %24, !dbg !3673

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3674
  unreachable, !dbg !3674

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3675
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3676 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3678, metadata !796), !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3508, metadata !796) #11, !dbg !3680
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3682
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3514, metadata !796) #11, !dbg !3683
  %3 = icmp eq i8* %2, null, !dbg !3684
  %4 = icmp ne i64 %0, 0, !dbg !3685
  %5 = and i1 %4, %3, !dbg !3686
  br i1 %5, label %6, label %7, !dbg !3686

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3687
  unreachable, !dbg !3687

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3688
  ret i8* %2, !dbg !3689
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3690 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3692, metadata !796), !dbg !3695
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3693, metadata !796), !dbg !3696
  %3 = udiv i64 9223372036854775807, %1, !dbg !3697
  %4 = icmp ult i64 %3, %0, !dbg !3697
  br i1 %4, label %8, label %5, !dbg !3699

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3700
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3694, metadata !796), !dbg !3701
  %7 = icmp eq i8* %6, null, !dbg !3702
  br i1 %7, label %8, label %9, !dbg !3703

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3704
  unreachable, !dbg !3704

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3705
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3706 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3710, metadata !796), !dbg !3712
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3711, metadata !796), !dbg !3713
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3508, metadata !796) #11, !dbg !3714
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3716
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3514, metadata !796) #11, !dbg !3717
  %4 = icmp eq i8* %3, null, !dbg !3718
  %5 = icmp ne i64 %1, 0, !dbg !3719
  %6 = and i1 %5, %4, !dbg !3720
  br i1 %6, label %7, label %8, !dbg !3720

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3721
  unreachable, !dbg !3721

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3722
  ret i8* %3, !dbg !3723
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3724 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3726, metadata !796), !dbg !3727
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3728
  %3 = add i64 %2, 1, !dbg !3729
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3710, metadata !796) #11, !dbg !3730
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3711, metadata !796) #11, !dbg !3732
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3508, metadata !796) #11, !dbg !3733
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3735
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3514, metadata !796) #11, !dbg !3736
  %5 = icmp eq i8* %4, null, !dbg !3737
  %6 = icmp ne i64 %3, 0, !dbg !3738
  %7 = and i1 %6, %5, !dbg !3739
  br i1 %7, label %8, label %9, !dbg !3739

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3740
  unreachable, !dbg !3740

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3741
  ret i8* %4, !dbg !3742
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3743 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3745, !tbaa !920
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.116, i64 0, i64 0), i32 5) #11, !dbg !3746
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* %2) #11, !dbg !3747
  tail call void @abort() #15, !dbg !3748
  unreachable, !dbg !3748
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3749 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3752, metadata !796), !dbg !3758
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3753, metadata !796), !dbg !3759
  %3 = icmp eq i64 %0, 0, !dbg !3760
  %4 = icmp eq i64 %1, 0, !dbg !3761
  %5 = or i1 %3, %4, !dbg !3762
  br i1 %5, label %12, label %6, !dbg !3762

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3763
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3755, metadata !796), !dbg !3764
  %8 = udiv i64 %7, %1, !dbg !3765
  %9 = icmp eq i64 %8, %0, !dbg !3767
  br i1 %9, label %12, label %10, !dbg !3768

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3769
  store i32 12, i32* %11, align 4, !dbg !3771, !tbaa !920
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3752, metadata !796), !dbg !3758
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3753, metadata !796), !dbg !3759
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3772
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3754, metadata !796), !dbg !3773
  br label %16, !dbg !3774

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3775
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3776 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3821, metadata !796), !dbg !3827
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3822, metadata !796), !dbg !3828
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3823, metadata !796), !dbg !3829
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3830
  %5 = load i8*, i8** %4, align 8, !dbg !3830, !tbaa !3831
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3833
  %7 = load i8*, i8** %6, align 8, !dbg !3833, !tbaa !3834
  %8 = icmp eq i8* %5, %7, !dbg !3835
  br i1 %8, label %9, label %28, !dbg !3836

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3837
  %11 = load i8*, i8** %10, align 8, !dbg !3837, !tbaa !3838
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3839
  %13 = load i8*, i8** %12, align 8, !dbg !3839, !tbaa !3840
  %14 = icmp eq i8* %11, %13, !dbg !3841
  br i1 %14, label %15, label %28, !dbg !3842

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3843
  %17 = load i8*, i8** %16, align 8, !dbg !3843, !tbaa !3844
  %18 = icmp eq i8* %17, null, !dbg !3845
  br i1 %18, label %19, label %28, !dbg !3846

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3847
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !3848
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3824, metadata !796), !dbg !3849
  %22 = icmp eq i64 %21, -1, !dbg !3850
  br i1 %22, label %30, label %23, !dbg !3852

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3853
  %25 = load i32, i32* %24, align 8, !dbg !3854, !tbaa !3855
  %26 = and i32 %25, -17, !dbg !3854
  store i32 %26, i32* %24, align 8, !dbg !3854, !tbaa !3855
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3856
  store i64 %21, i64* %27, align 8, !dbg !3857, !tbaa !3858
  br label %30, !dbg !3859

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3860
  br label %30, !dbg !3861

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3862
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3863 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3880, metadata !796), !dbg !3889
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3881, metadata !796), !dbg !3890
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3882, metadata !796), !dbg !3891
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3883, metadata !796), !dbg !3892
  %6 = bitcast i32* %5 to i8*, !dbg !3893
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3893
  %7 = icmp eq i32* %0, null, !dbg !3894
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3880, metadata !796), !dbg !3889
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3896
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3880, metadata !796), !dbg !3889
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3897
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3884, metadata !796), !dbg !3898
  %10 = icmp ugt i64 %9, -3, !dbg !3899
  %11 = icmp ne i64 %2, 0, !dbg !3900
  %12 = and i1 %11, %10, !dbg !3901
  br i1 %12, label %13, label %18, !dbg !3901

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3902
  br i1 %14, label %18, label %15, !dbg !3903

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3904, !tbaa !868
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3886, metadata !796), !dbg !3905
  %17 = zext i8 %16 to i32, !dbg !3906
  store i32 %17, i32* %8, align 4, !dbg !3907, !tbaa !920
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3908
  ret i64 %19, !dbg !3908
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3909 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3954, metadata !796), !dbg !3959
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !3960
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3961, metadata !796), !dbg !3965
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3967
  %4 = load i32, i32* %3, align 8, !dbg !3967, !tbaa !3855
  %5 = and i32 %4, 32, !dbg !3967
  %6 = icmp eq i32 %5, 0, !dbg !3968
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !3969
  %8 = icmp ne i32 %7, 0, !dbg !3970
  br i1 %6, label %9, label %19, !dbg !3971

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3973
  %11 = xor i1 %8, true, !dbg !3974
  %12 = or i1 %10, %11, !dbg !3974
  %13 = sext i1 %8 to i32, !dbg !3974
  br i1 %12, label %22, label %14, !dbg !3974

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3975
  %16 = load i32, i32* %15, align 4, !dbg !3975, !tbaa !920
  %17 = icmp ne i32 %16, 9, !dbg !3976
  %18 = sext i1 %17 to i32, !dbg !3977
  br label %22, !dbg !3977

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3978

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3980
  store i32 0, i32* %21, align 4, !dbg !3982, !tbaa !920
  br label %22, !dbg !3980

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3983
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #12 !dbg !3984 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3987, metadata !796), !dbg !3991
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3988, metadata !796), !dbg !3992
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3990, metadata !796), !dbg !3993
  br label %2, !dbg !3994

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3988, metadata !796), !dbg !3992
  %4 = load i8, i8* %3, align 1, !dbg !3995, !tbaa !868
  %5 = icmp eq i8 %4, 47, !dbg !3995
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3996
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3988, metadata !796), !dbg !3992
  br i1 %5, label %2, label %7, !dbg !3994, !llvm.loop !3997

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !3998

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ], !dbg !4000
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !3990, metadata !796), !dbg !3993
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !3989, metadata !796), !dbg !4002
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3988, metadata !796), !dbg !3992
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ], !dbg !3998

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1, !dbg !4003
  %15 = icmp eq i8 %14, 0, !dbg !4003
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !3988, metadata !796), !dbg !3992
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3990, metadata !796), !dbg !3993
  %16 = select i1 %15, i8* %10, i8* %11, !dbg !4007
  %17 = select i1 %15, i8 %12, i8 0, !dbg !4007
  br label %18, !dbg !4007

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !3990, metadata !796), !dbg !3993
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3988, metadata !796), !dbg !3992
  %21 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !4008
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !3989, metadata !796), !dbg !4002
  %22 = load i8, i8* %21, align 1, !dbg !4000, !tbaa !868
  br label %8, !dbg !4009, !llvm.loop !4010

; <label>:23:                                     ; preds = %8
  ret i8* %10, !dbg !4012
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #12 !dbg !4013 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4017, metadata !796), !dbg !4020
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4019, metadata !796), !dbg !4021
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4022
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4018, metadata !796), !dbg !4024
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4018, metadata !796), !dbg !4024
  %3 = icmp ugt i64 %2, 1, !dbg !4025
  br i1 %3, label %4, label %13, !dbg !4027

; <label>:4:                                      ; preds = %1
  br label %7, !dbg !4028

; <label>:5:                                      ; preds = %7
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4018, metadata !796), !dbg !4024
  %6 = icmp ugt i64 %9, 1, !dbg !4025
  br i1 %6, label %7, label %13, !dbg !4027, !llvm.loop !4029

; <label>:7:                                      ; preds = %4, %5
  %8 = phi i64 [ %9, %5 ], [ %2, %4 ]
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4018, metadata !796), !dbg !4024
  %9 = add i64 %8, -1, !dbg !4028
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !4028
  %11 = load i8, i8* %10, align 1, !dbg !4028, !tbaa !868
  %12 = icmp eq i8 %11, 47, !dbg !4028
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4018, metadata !796), !dbg !4024
  br i1 %12, label %5, label %13, !dbg !4030

; <label>:13:                                     ; preds = %7, %5, %1
  %14 = phi i64 [ %2, %1 ], [ 1, %5 ], [ %8, %7 ]
  ret i64 %14, !dbg !4032
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4033 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4038, metadata !796), !dbg !4041
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4039, metadata !796), !dbg !4042
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4043
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4040, metadata !796), !dbg !4044
  %3 = icmp eq i8* %2, null, !dbg !4045
  br i1 %3, label %11, label %4, !dbg !4047

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.132, i64 0, i64 0)) #14, !dbg !4048
  %6 = icmp eq i32 %5, 0, !dbg !4053
  br i1 %6, label %10, label %7, !dbg !4054

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.133, i64 0, i64 0)) #14, !dbg !4055
  %9 = icmp eq i32 %8, 0, !dbg !4056
  br i1 %9, label %10, label %11, !dbg !4057

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4039, metadata !796), !dbg !4042
  br label %11, !dbg !4058

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4059
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4060 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4066, metadata !796), !dbg !4140
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4133, metadata !796), !dbg !4143
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4144
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4064, metadata !796), !dbg !4145
  %4 = icmp eq i8* %3, null, !dbg !4146
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), i8* %3, !dbg !4148
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4064, metadata !796), !dbg !4145
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4149, !tbaa !803
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4080, metadata !796) #11, !dbg !4150
  %7 = icmp eq i8* %6, null, !dbg !4151
  br i1 %7, label %8, label %123, !dbg !4152

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.137, i64 0, i64 0)) #11, !dbg !4153
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4081, metadata !796) #11, !dbg !4154
  %10 = icmp eq i8* %9, null, !dbg !4155
  br i1 %10, label %14, label %11, !dbg !4157

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4158, !tbaa !868
  %13 = icmp eq i8 %12, 0, !dbg !4159
  br i1 %13, label %14, label %15, !dbg !4160

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4161

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.138, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4081, metadata !796) #11, !dbg !4154
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4162
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4084, metadata !796) #11, !dbg !4163
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4086, metadata !796) #11, !dbg !4164
  %18 = icmp eq i64 %17, 0, !dbg !4165
  br i1 %18, label %24, label %19, !dbg !4166

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4167
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4167
  %22 = load i8, i8* %21, align 1, !dbg !4167, !tbaa !868
  %23 = icmp ne i8 %22, 47, !dbg !4167
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4168
  %27 = add i64 %17, 14, !dbg !4169
  %28 = add i64 %27, %26, !dbg !4170
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !4171
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4083, metadata !796) #11, !dbg !4172
  %30 = icmp eq i8* %29, null, !dbg !4173
  br i1 %30, label %121, label %31, !dbg !4173

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !4174
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4177

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4178, !tbaa !868
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4180
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.139, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4181
  br label %37, !dbg !4182

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4180
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.139, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4181
  br label %37, !dbg !4182

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !4183
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4088, metadata !796) #11, !dbg !4184
  %39 = icmp slt i32 %38, 0, !dbg !4185
  br i1 %39, label %119, label %40, !dbg !4186

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.140, i64 0, i64 0)) #11, !dbg !4187
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4089, metadata !796) #11, !dbg !4188
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4189
  br i1 %42, label %43, label %45, !dbg !4190

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #11, !dbg !4191
  br label %119, !dbg !4193

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4130, metadata !796) #11, !dbg !4194
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4131, metadata !796) #11, !dbg !4195
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4196

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4197

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4130, metadata !796) #11, !dbg !4194
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4131, metadata !796) #11, !dbg !4195
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4197
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4198
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4199, metadata !796) #11, !dbg !4204
  %54 = load i8*, i8** %48, align 8, !dbg !4206, !tbaa !3834
  %55 = load i8*, i8** %49, align 8, !dbg !4206, !tbaa !3831
  %56 = icmp ult i8* %54, %55, !dbg !4206
  br i1 %56, label %59, label %57, !dbg !4206, !prof !4207

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4206
  br label %63, !dbg !4206

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4206
  store i8* %60, i8** %48, align 8, !dbg !4206, !tbaa !3834
  %61 = load i8, i8* %54, align 1, !dbg !4206, !tbaa !868
  %62 = zext i8 %61 to i32, !dbg !4206
  br label %63, !dbg !4206

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4206
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4132, metadata !796) #11, !dbg !4208
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4209, !llvm.loop !4210

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4215

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4199, metadata !796) #11, !dbg !4217
  %67 = load i8*, i8** %48, align 8, !dbg !4215, !tbaa !3834
  %68 = load i8*, i8** %49, align 8, !dbg !4215, !tbaa !3831
  %69 = icmp ult i8* %67, %68, !dbg !4215
  br i1 %69, label %72, label %70, !dbg !4215, !prof !4207

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4215
  br label %76, !dbg !4215

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4215
  store i8* %73, i8** %48, align 8, !dbg !4215, !tbaa !3834
  %74 = load i8, i8* %67, align 1, !dbg !4215, !tbaa !868
  %75 = zext i8 %74 to i32, !dbg !4215
  br label %76, !dbg !4215

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4215
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4132, metadata !796) #11, !dbg !4208
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4218, !llvm.loop !4219

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #11, !dbg !4222
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.141, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #11, !dbg !4223
  %81 = icmp slt i32 %80, 2, !dbg !4225
  br i1 %81, label %112, label %82, !dbg !4226

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4227
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4137, metadata !796) #11, !dbg !4228
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4229
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4138, metadata !796) #11, !dbg !4230
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4139, metadata !796) #11, !dbg !4231
  %85 = icmp eq i64 %51, 0, !dbg !4232
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4234

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4131, metadata !796) #11, !dbg !4195
  %90 = add i64 %87, 2, !dbg !4235
  %91 = call noalias i8* @malloc(i64 %90) #11, !dbg !4237
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4130, metadata !796) #11, !dbg !4194
  br label %96, !dbg !4238

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4239
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4131, metadata !796) #11, !dbg !4195
  %94 = add i64 %93, 1, !dbg !4241
  %95 = call i8* @realloc(i8* %52, i64 %94) #11, !dbg !4242
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4130, metadata !796) #11, !dbg !4194
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4130, metadata !796) #11, !dbg !4194
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4131, metadata !796) #11, !dbg !4195
  %99 = icmp eq i8* %98, null, !dbg !4243
  br i1 %99, label %100, label %102, !dbg !4245

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4131, metadata !796) #11, !dbg !4195
  call void @free(i8* %52) #11, !dbg !4246
  br label %112, !dbg !4248

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4249
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4249
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4250
  %104 = xor i64 %84, -1, !dbg !4251
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4251
  %106 = xor i64 %83, -1, !dbg !4252
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4252
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4253, metadata !796) #11, !dbg !4261
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4260, metadata !796) #11, !dbg !4261
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #11, !dbg !4263
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #11, !dbg !4264
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4253, metadata !796) #11, !dbg !4265
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4260, metadata !796) #11, !dbg !4265
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #11, !dbg !4267
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #11, !dbg !4268
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4130, metadata !796) #11, !dbg !4194
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4131, metadata !796) #11, !dbg !4195
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4249
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4249
  br label %50, !dbg !4269, !llvm.loop !4219

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4249
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4249
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !4270
  %116 = icmp eq i64 %113, 0, !dbg !4271
  br i1 %116, label %119, label %117, !dbg !4273

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4274
  store i8 0, i8* %118, align 1, !dbg !4276, !tbaa !868
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4080, metadata !796) #11, !dbg !4150
  call void @free(i8* %29) #11, !dbg !4277
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4080, metadata !796) #11, !dbg !4150
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4278, !tbaa !803
  br label %123, !dbg !4279

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4080, metadata !796) #11, !dbg !4150
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4065, metadata !796), !dbg !4280
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4065, metadata !796), !dbg !4280
  %125 = load i8, i8* %124, align 1, !dbg !4281, !tbaa !868
  %126 = icmp eq i8 %125, 0, !dbg !4283
  br i1 %126, label %152, label %127, !dbg !4284

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4285

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4065, metadata !796), !dbg !4280
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4285
  %132 = icmp eq i32 %131, 0, !dbg !4287
  br i1 %132, label %139, label %133, !dbg !4288

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4289
  br i1 %134, label %135, label %143, !dbg !4290

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4291
  %137 = load i8, i8* %136, align 1, !dbg !4291, !tbaa !868
  %138 = icmp eq i8 %137, 0, !dbg !4292
  br i1 %138, label %139, label %143, !dbg !4293

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4294
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4296
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4297
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4064, metadata !796), !dbg !4145
  br label %152, !dbg !4298

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4299
  %145 = add i64 %144, 1, !dbg !4300
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4301
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4065, metadata !796), !dbg !4280
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4302
  %148 = add i64 %147, 1, !dbg !4303
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4304
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4065, metadata !796), !dbg !4280
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4065, metadata !796), !dbg !4280
  %150 = load i8, i8* %149, align 1, !dbg !4281, !tbaa !868
  %151 = icmp eq i8 %150, 0, !dbg !4283
  br i1 %151, label %152, label %128, !dbg !4284, !llvm.loop !4305

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4064, metadata !796), !dbg !4145
  %154 = load i8, i8* %153, align 1, !dbg !4307, !tbaa !868
  %155 = icmp eq i8 %154, 0, !dbg !4309
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.142, i64 0, i64 0), i8* %153, !dbg !4310
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4064, metadata !796), !dbg !4145
  ret i8* %156, !dbg !4311
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 !dbg !4312 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4315, metadata !796), !dbg !4316
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #11, !dbg !4317
  ret i32 %2, !dbg !4318
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4319 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4364, metadata !796), !dbg !4368
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4365, metadata !796), !dbg !4369
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4367, metadata !796), !dbg !4370
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4371
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4366, metadata !796), !dbg !4372
  %3 = icmp slt i32 %2, 0, !dbg !4373
  br i1 %3, label %4, label %6, !dbg !4375

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4376
  br label %24, !dbg !4377

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4378
  %8 = icmp eq i32 %7, 0, !dbg !4378
  br i1 %8, label %13, label %9, !dbg !4380

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4381
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4382
  %12 = icmp eq i64 %11, -1, !dbg !4383
  br i1 %12, label %16, label %13, !dbg !4384

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4385
  %15 = icmp eq i32 %14, 0, !dbg !4385
  br i1 %15, label %16, label %18, !dbg !4386

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4365, metadata !796), !dbg !4369
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4387
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4367, metadata !796), !dbg !4370
  br label %24, !dbg !4388

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4389
  %20 = load i32, i32* %19, align 4, !dbg !4389, !tbaa !920
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4365, metadata !796), !dbg !4369
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4365, metadata !796), !dbg !4369
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4387
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4367, metadata !796), !dbg !4370
  %22 = icmp eq i32 %20, 0, !dbg !4390
  br i1 %22, label %24, label %23, !dbg !4388

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4392, !tbaa !920
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4367, metadata !796), !dbg !4370
  br label %24, !dbg !4394

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4395
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !678 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !686, metadata !796), !dbg !4396
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !687, metadata !796), !dbg !4397
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4398
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #11, !dbg !4398
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !688, metadata !796), !dbg !4399
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !699, metadata !796), !dbg !4400
  call void @llvm.va_start(i8* nonnull %4), !dbg !4401
  %5 = icmp eq i32 %1, 1030, !dbg !4402
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59, !dbg !4402

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !4403

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4403
  %12 = load i8*, i8** %11, align 16, !dbg !4403
  %13 = sext i32 %7 to i64, !dbg !4403
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !4403
  %15 = add i32 %7, 8, !dbg !4403
  store i32 %15, i32* %6, align 16, !dbg !4403
  br label %20, !dbg !4403

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4403
  %18 = load i8*, i8** %17, align 8, !dbg !4403
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !4403
  store i8* %19, i8** %17, align 8, !dbg !4403
  br label %20, !dbg !4403

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !4403
  %23 = load i32, i32* %22, align 4, !dbg !4403
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !700, metadata !796), !dbg !4404
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4405, !tbaa !920
  %25 = icmp sgt i32 %24, -1, !dbg !4407
  br i1 %25, label %26, label %39, !dbg !4408

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #11, !dbg !4409
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !699, metadata !796), !dbg !4400
  %28 = icmp sgt i32 %27, -1, !dbg !4411
  br i1 %28, label %36, label %29, !dbg !4413

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #17, !dbg !4414
  %31 = load i32, i32* %30, align 4, !dbg !4414, !tbaa !920
  %32 = icmp eq i32 %31, 22, !dbg !4415
  br i1 %32, label %33, label %36, !dbg !4416

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !4417
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !699, metadata !796), !dbg !4400
  %35 = icmp slt i32 %34, 0, !dbg !4419
  br i1 %35, label %75, label %36, !dbg !4421

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !699, metadata !796), !dbg !4400
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !920
  br label %42, !dbg !4422

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !4423
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !699, metadata !796), !dbg !4400
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4424
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !4424
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !699, metadata !796), !dbg !4400
  %45 = icmp sgt i32 %44, -1, !dbg !4425
  %46 = icmp eq i32 %43, -1, !dbg !4426
  %47 = and i1 %45, %46, !dbg !4427
  br i1 %47, label %48, label %75, !dbg !4427

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #11, !dbg !4428
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !703, metadata !796), !dbg !4429
  %50 = icmp slt i32 %49, 0, !dbg !4430
  br i1 %50, label %55, label %51, !dbg !4431

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1, !dbg !4432
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #11, !dbg !4433
  %54 = icmp eq i32 %53, -1, !dbg !4434
  br i1 %54, label %55, label %75, !dbg !4435

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #17, !dbg !4436
  %57 = load i32, i32* %56, align 4, !dbg !4436, !tbaa !920
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !706, metadata !796), !dbg !4437
  %58 = call i32 @close(i32 %44) #11, !dbg !4438
  store i32 %57, i32* %56, align 4, !dbg !4439, !tbaa !920
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !699, metadata !796), !dbg !4400
  br label %75, !dbg !4440

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66, !dbg !4441

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4441
  %62 = load i8*, i8** %61, align 16, !dbg !4441
  %63 = sext i32 %7 to i64, !dbg !4441
  %64 = getelementptr i8, i8* %62, i64 %63, !dbg !4441
  %65 = add i32 %7, 8, !dbg !4441
  store i32 %65, i32* %6, align 16, !dbg !4441
  br label %70, !dbg !4441

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4441
  %68 = load i8*, i8** %67, align 8, !dbg !4441
  %69 = getelementptr i8, i8* %68, i64 8, !dbg !4441
  store i8* %69, i8** %67, align 8, !dbg !4441
  br label %70, !dbg !4441

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**, !dbg !4441
  %73 = load i8*, i8** %72, align 8, !dbg !4441
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !709, metadata !796), !dbg !4442
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #11, !dbg !4443
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !699, metadata !796), !dbg !4400
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !699, metadata !796), !dbg !4400
  call void @llvm.va_end(i8* nonnull %4), !dbg !4444
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #11, !dbg !4445
  ret i32 %76, !dbg !4446
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4447 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4492, metadata !796), !dbg !4493
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4494
  br i1 %2, label %6, label %3, !dbg !4496

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4497
  %5 = icmp eq i32 %4, 0, !dbg !4497
  br i1 %5, label %6, label %8, !dbg !4498

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4499
  br label %17, !dbg !4500

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4501, metadata !796) #11, !dbg !4506
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4508
  %10 = load i32, i32* %9, align 8, !dbg !4508, !tbaa !3855
  %11 = and i32 %10, 256, !dbg !4510
  %12 = icmp eq i32 %11, 0, !dbg !4510
  br i1 %12, label %15, label %13, !dbg !4511

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4512
  br label %15, !dbg !4512

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4513
  br label %17, !dbg !4514

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4515
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
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

!llvm.dbg.cu = !{!2, !230, !236, !244, !711, !251, !258, !714, !735, !737, !739, !322, !746, !763, !765, !767, !769, !772, !774, !777, !331, !779, !781, !682, !783}
!llvm.ident = !{!785, !785, !785, !785, !785, !785, !785, !785, !785, !785, !785, !785, !785, !785, !785, !785, !785, !785, !785, !785, !785, !785, !785, !785, !785}
!llvm.module.flags = !{!786, !787, !788, !789, !790}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "separator", scope: !2, file: !3, line: 80, type: !25, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !30)
!3 = !DIFile(filename: "src/tac.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5}
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
!19 = !{!20, !22, !23, !27}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 62, baseType: !29)
!28 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !{!31, !0, !52, !54, !56, !58, !60, !62, !64, !90, !95, !115, !129, !199, !201, !211, !224, !226}
!31 = !DIGlobalVariableExpression(var: !32)
!32 = distinct !DIGlobalVariable(name: "default_file_list", scope: !33, file: !3, line: 612, type: !49, isLocal: true, isDefinition: true)
!33 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 603, type: !34, isLocal: false, isDefinition: true, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !38)
!34 = !DISubroutineType(types: !35)
!35 = !{!36, !36, !37}
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!38 = !{!39, !40, !41, !42, !43, !45, !46, !47}
!39 = !DILocalVariable(name: "argc", arg: 1, scope: !33, file: !3, line: 603, type: !36)
!40 = !DILocalVariable(name: "argv", arg: 2, scope: !33, file: !3, line: 603, type: !37)
!41 = !DILocalVariable(name: "error_message", scope: !33, file: !3, line: 605, type: !25)
!42 = !DILocalVariable(name: "optc", scope: !33, file: !3, line: 606, type: !36)
!43 = !DILocalVariable(name: "ok", scope: !33, file: !3, line: 607, type: !44)
!44 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!45 = !DILocalVariable(name: "half_buffer_size", scope: !33, file: !3, line: 608, type: !27)
!46 = !DILocalVariable(name: "file", scope: !33, file: !3, line: 613, type: !23)
!47 = !DILocalVariable(name: "i", scope: !48, file: !3, line: 693, type: !27)
!48 = distinct !DILexicalBlock(scope: !33, file: !3, line: 692, column: 3)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 128, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 2)
!52 = !DIGlobalVariableExpression(var: !53)
!53 = distinct !DIGlobalVariable(name: "separator_ends_record", scope: !2, file: !3, line: 87, type: !44, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55)
!55 = distinct !DIGlobalVariable(name: "sentinel_length", scope: !2, file: !3, line: 92, type: !27, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57)
!57 = distinct !DIGlobalVariable(name: "match_length", scope: !2, file: !3, line: 97, type: !27, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59)
!59 = distinct !DIGlobalVariable(name: "G_buffer", scope: !2, file: !3, line: 100, type: !20, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61)
!61 = distinct !DIGlobalVariable(name: "read_size", scope: !2, file: !3, line: 103, type: !27, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63)
!63 = distinct !DIGlobalVariable(name: "G_buffer_size", scope: !2, file: !3, line: 108, type: !27, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65)
!65 = distinct !DIGlobalVariable(name: "compiled_separator", scope: !2, file: !3, line: 111, type: !66, isLocal: true, isDefinition: true)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !67, line: 414, size: 512, elements: !68)
!67 = !DIFile(filename: "./lib/regex.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!68 = !{!69, !72, !74, !75, !77, !78, !81, !82, !84, !85, !86, !87, !88, !89}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !66, file: !67, line: 418, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !67, line: 418, flags: DIFlagFwdDecl)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !66, file: !67, line: 421, baseType: !73, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !67, line: 57, baseType: !29)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !66, file: !67, line: 424, baseType: !73, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !66, file: !67, line: 427, baseType: !76, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !67, line: 73, baseType: !29)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !66, file: !67, line: 432, baseType: !20, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !66, file: !67, line: 438, baseType: !79, size: 64, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !66, file: !67, line: 441, baseType: !27, size: 64, offset: 384)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !66, file: !67, line: 447, baseType: !83, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!83 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !66, file: !67, line: 458, baseType: !83, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !66, file: !67, line: 462, baseType: !83, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !66, file: !67, line: 466, baseType: !83, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !66, file: !67, line: 470, baseType: !83, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !66, file: !67, line: 473, baseType: !83, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !66, file: !67, line: 476, baseType: !83, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!90 = !DIGlobalVariableExpression(var: !91)
!91 = distinct !DIGlobalVariable(name: "compiled_separator_fastmap", scope: !2, file: !3, line: 112, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 256)
!95 = !DIGlobalVariableExpression(var: !96)
!96 = distinct !DIGlobalVariable(name: "infomap", scope: !97, file: !98, line: 632, type: !112, isLocal: true, isDefinition: true)
!97 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !98, file: !98, line: 630, type: !99, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !101)
!98 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!99 = !DISubroutineType(types: !100)
!100 = !{null, !25}
!101 = !{!102, !103, !104, !111}
!102 = !DILocalVariable(name: "program", arg: 1, scope: !97, file: !98, line: 630, type: !25)
!103 = !DILocalVariable(name: "node", scope: !97, file: !98, line: 642, type: !25)
!104 = !DILocalVariable(name: "map_prog", scope: !97, file: !98, line: 643, type: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !97, file: !98, line: 632, size: 128, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !107, file: !98, line: 632, baseType: !25, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !107, file: !98, line: 632, baseType: !25, size: 64, offset: 64)
!111 = !DILocalVariable(name: "lc_messages", scope: !97, file: !98, line: 655, type: !25)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 896, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 7)
!115 = !DIGlobalVariableExpression(var: !116)
!116 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 115, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 1536, elements: !127)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !120, line: 50, size: 256, elements: !121)
!120 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!121 = !{!122, !123, !124, !126}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !119, file: !120, line: 52, baseType: !25, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !119, file: !120, line: 55, baseType: !36, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !119, file: !120, line: 56, baseType: !125, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !119, file: !120, line: 57, baseType: !36, size: 32, offset: 192)
!127 = !{!128}
!128 = !DISubrange(count: 6)
!129 = !DIGlobalVariableExpression(var: !130)
!130 = distinct !DIGlobalVariable(name: "tempfile", scope: !131, file: !3, line: 433, type: !20, isLocal: true, isDefinition: true)
!131 = distinct !DISubprogram(name: "temp_stream", scope: !3, file: !3, line: 431, type: !132, isLocal: true, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !191)
!132 = !DISubroutineType(types: !133)
!133 = !{!44, !134, !37}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !137, line: 7, baseType: !138)
!137 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !139, line: 241, size: 1728, elements: !140)
!139 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !161, !162, !163, !164, !168, !170, !172, !176, !179, !181, !182, !183, !184, !185, !186, !187}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !138, file: !139, line: 242, baseType: !36, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !138, file: !139, line: 247, baseType: !20, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !138, file: !139, line: 248, baseType: !20, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !138, file: !139, line: 249, baseType: !20, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !138, file: !139, line: 250, baseType: !20, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !138, file: !139, line: 251, baseType: !20, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !138, file: !139, line: 252, baseType: !20, size: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !138, file: !139, line: 253, baseType: !20, size: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !138, file: !139, line: 254, baseType: !20, size: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !138, file: !139, line: 256, baseType: !20, size: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !138, file: !139, line: 257, baseType: !20, size: 64, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !138, file: !139, line: 258, baseType: !20, size: 64, offset: 704)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !138, file: !139, line: 260, baseType: !154, size: 64, offset: 768)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !139, line: 156, size: 192, elements: !156)
!156 = !{!157, !158, !160}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !155, file: !139, line: 157, baseType: !154, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !155, file: !139, line: 158, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !155, file: !139, line: 162, baseType: !36, size: 32, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !138, file: !139, line: 262, baseType: !159, size: 64, offset: 832)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !138, file: !139, line: 264, baseType: !36, size: 32, offset: 896)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !138, file: !139, line: 268, baseType: !36, size: 32, offset: 928)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !138, file: !139, line: 270, baseType: !165, size: 64, offset: 960)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !166, line: 140, baseType: !167)
!166 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!167 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !138, file: !139, line: 274, baseType: !169, size: 16, offset: 1024)
!169 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !138, file: !139, line: 275, baseType: !171, size: 8, offset: 1040)
!171 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !138, file: !139, line: 276, baseType: !173, size: 8, offset: 1048)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 1)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !138, file: !139, line: 280, baseType: !177, size: 64, offset: 1088)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !139, line: 150, baseType: null)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !138, file: !139, line: 289, baseType: !180, size: 64, offset: 1152)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !166, line: 141, baseType: !167)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !138, file: !139, line: 297, baseType: !22, size: 64, offset: 1216)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !138, file: !139, line: 298, baseType: !22, size: 64, offset: 1280)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !138, file: !139, line: 299, baseType: !22, size: 64, offset: 1344)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !138, file: !139, line: 300, baseType: !22, size: 64, offset: 1408)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !138, file: !139, line: 302, baseType: !27, size: 64, offset: 1472)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !138, file: !139, line: 303, baseType: !36, size: 32, offset: 1536)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !138, file: !139, line: 305, baseType: !188, size: 160, offset: 1568)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 20)
!191 = !{!192, !193, !194, !197, !198}
!192 = !DILocalVariable(name: "fp", arg: 1, scope: !131, file: !3, line: 431, type: !134)
!193 = !DILocalVariable(name: "file_name", arg: 2, scope: !131, file: !3, line: 431, type: !37)
!194 = !DILocalVariable(name: "t", scope: !195, file: !3, line: 437, type: !25)
!195 = distinct !DILexicalBlock(scope: !196, file: !3, line: 436, column: 5)
!196 = distinct !DILexicalBlock(scope: !131, file: !3, line: 435, column: 7)
!197 = !DILocalVariable(name: "tempdir", scope: !195, file: !3, line: 438, type: !25)
!198 = !DILocalVariable(name: "fd", scope: !195, file: !3, line: 455, type: !36)
!199 = !DIGlobalVariableExpression(var: !200)
!200 = distinct !DIGlobalVariable(name: "tmp_fp", scope: !131, file: !3, line: 434, type: !135, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202)
!202 = distinct !DIGlobalVariable(name: "regs", scope: !2, file: !3, line: 113, type: !203, isLocal: true, isDefinition: true)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_registers", file: !67, line: 498, size: 192, elements: !204)
!204 = !{!205, !207, !210}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "num_regs", scope: !203, file: !67, line: 500, baseType: !206, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_size_t", file: !67, line: 56, baseType: !83)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !203, file: !67, line: 501, baseType: !208, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !67, line: 491, baseType: !36)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !203, file: !67, line: 502, baseType: !208, size: 64, offset: 128)
!211 = !DIGlobalVariableExpression(var: !212)
!212 = distinct !DIGlobalVariable(name: "buffer", scope: !213, file: !3, line: 161, type: !221, isLocal: true, isDefinition: true)
!213 = distinct !DISubprogram(name: "output", scope: !3, file: !3, line: 159, type: !214, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !216)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !25, !25}
!216 = !{!217, !218, !219, !220}
!217 = !DILocalVariable(name: "start", arg: 1, scope: !213, file: !3, line: 159, type: !25)
!218 = !DILocalVariable(name: "past_end", arg: 2, scope: !213, file: !3, line: 159, type: !25)
!219 = !DILocalVariable(name: "bytes_to_add", scope: !213, file: !3, line: 163, type: !27)
!220 = !DILocalVariable(name: "bytes_available", scope: !213, file: !3, line: 164, type: !27)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 65536, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 8192)
!224 = !DIGlobalVariableExpression(var: !225)
!225 = distinct !DIGlobalVariable(name: "bytes_in_buffer", scope: !213, file: !3, line: 162, type: !27, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227)
!227 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 83, type: !44, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229)
!229 = distinct !DIGlobalVariable(name: "Version", scope: !230, file: !231, line: 2, type: !25, isLocal: false, isDefinition: true)
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, globals: !233)
!231 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!232 = !{}
!233 = !{!228}
!234 = !DIGlobalVariableExpression(var: !235)
!235 = distinct !DIGlobalVariable(name: "file_name", scope: !236, file: !241, line: 36, type: !25, isLocal: true, isDefinition: true)
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, globals: !238)
!237 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!238 = !{!234, !239}
!239 = !DIGlobalVariableExpression(var: !240)
!240 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !236, file: !241, line: 46, type: !44, isLocal: true, isDefinition: true)
!241 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!242 = !DIGlobalVariableExpression(var: !243)
!243 = distinct !DIGlobalVariable(name: "exit_failure", scope: !244, file: !247, line: 24, type: !248, isLocal: false, isDefinition: true)
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, globals: !246)
!245 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!246 = !{!242}
!247 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!248 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!249 = !DIGlobalVariableExpression(var: !250)
!250 = distinct !DIGlobalVariable(name: "program_name", scope: !251, file: !255, line: 33, type: !25, isLocal: false, isDefinition: true)
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !253, globals: !254)
!252 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!253 = !{!22, !20}
!254 = !{!249}
!255 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!256 = !DIGlobalVariableExpression(var: !257)
!257 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !258, file: !285, line: 77, type: !317, isLocal: false, isDefinition: true)
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !260, retainedTypes: !281, globals: !282)
!259 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!260 = !{!5, !261, !266}
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !262)
!262 = !{!263, !264, !265}
!263 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!264 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!265 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !267, line: 46, size: 32, elements: !268)
!267 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!268 = !{!269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!269 = !DIEnumerator(name: "_ISupper", value: 256)
!270 = !DIEnumerator(name: "_ISlower", value: 512)
!271 = !DIEnumerator(name: "_ISalpha", value: 1024)
!272 = !DIEnumerator(name: "_ISdigit", value: 2048)
!273 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!274 = !DIEnumerator(name: "_ISspace", value: 8192)
!275 = !DIEnumerator(name: "_ISprint", value: 16384)
!276 = !DIEnumerator(name: "_ISgraph", value: 32768)
!277 = !DIEnumerator(name: "_ISblank", value: 1)
!278 = !DIEnumerator(name: "_IScntrl", value: 2)
!279 = !DIEnumerator(name: "_ISpunct", value: 4)
!280 = !DIEnumerator(name: "_ISalnum", value: 8)
!281 = !{!36, !169, !27, !20}
!282 = !{!256, !283, !290, !302, !304, !306, !313, !315}
!283 = !DIGlobalVariableExpression(var: !284)
!284 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !258, file: !285, line: 93, type: !286, isLocal: false, isDefinition: true)
!285 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 320, elements: !288)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!288 = !{!289}
!289 = !DISubrange(count: 10)
!290 = !DIGlobalVariableExpression(var: !291)
!291 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !258, file: !285, line: 1043, type: !292, isLocal: false, isDefinition: true)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !285, line: 57, size: 448, elements: !293)
!293 = !{!294, !295, !296, !300, !301}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !292, file: !285, line: 60, baseType: !5, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !292, file: !285, line: 63, baseType: !36, size: 32, offset: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !292, file: !285, line: 67, baseType: !297, size: 256, offset: 64)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 256, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 8)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !292, file: !285, line: 70, baseType: !25, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !292, file: !285, line: 73, baseType: !25, size: 64, offset: 384)
!302 = !DIGlobalVariableExpression(var: !303)
!303 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !258, file: !285, line: 108, type: !292, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305)
!305 = distinct !DIGlobalVariable(name: "slot0", scope: !258, file: !285, line: 834, type: !92, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307)
!307 = distinct !DIGlobalVariable(name: "slotvec", scope: !258, file: !285, line: 837, type: !308, isLocal: true, isDefinition: true)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !285, line: 826, size: 128, elements: !310)
!310 = !{!311, !312}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !309, file: !285, line: 828, baseType: !27, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !309, file: !285, line: 829, baseType: !20, size: 64, offset: 64)
!313 = !DIGlobalVariableExpression(var: !314)
!314 = distinct !DIGlobalVariable(name: "nslots", scope: !258, file: !285, line: 835, type: !36, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316)
!316 = distinct !DIGlobalVariable(name: "slotvec0", scope: !258, file: !285, line: 836, type: !309, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 704, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 11)
!320 = !DIGlobalVariableExpression(var: !321)
!321 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !322, file: !325, line: 26, type: !326, isLocal: false, isDefinition: true)
!322 = distinct !DICompileUnit(language: DW_LANG_C99, file: !323, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, globals: !324)
!323 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!324 = !{!320}
!325 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 376, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 47)
!329 = !DIGlobalVariableExpression(var: !330)
!330 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !331, file: !674, line: 120, type: !675, isLocal: true, isDefinition: true)
!331 = distinct !DICompileUnit(language: DW_LANG_C99, file: !332, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !333, retainedTypes: !672, globals: !673)
!332 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!333 = !{!334}
!334 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !335, line: 41, size: 32, elements: !336)
!335 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!337 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!338 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!339 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!340 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!341 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!342 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!343 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!344 = !DIEnumerator(name: "DAY_1", value: 131079)
!345 = !DIEnumerator(name: "DAY_2", value: 131080)
!346 = !DIEnumerator(name: "DAY_3", value: 131081)
!347 = !DIEnumerator(name: "DAY_4", value: 131082)
!348 = !DIEnumerator(name: "DAY_5", value: 131083)
!349 = !DIEnumerator(name: "DAY_6", value: 131084)
!350 = !DIEnumerator(name: "DAY_7", value: 131085)
!351 = !DIEnumerator(name: "ABMON_1", value: 131086)
!352 = !DIEnumerator(name: "ABMON_2", value: 131087)
!353 = !DIEnumerator(name: "ABMON_3", value: 131088)
!354 = !DIEnumerator(name: "ABMON_4", value: 131089)
!355 = !DIEnumerator(name: "ABMON_5", value: 131090)
!356 = !DIEnumerator(name: "ABMON_6", value: 131091)
!357 = !DIEnumerator(name: "ABMON_7", value: 131092)
!358 = !DIEnumerator(name: "ABMON_8", value: 131093)
!359 = !DIEnumerator(name: "ABMON_9", value: 131094)
!360 = !DIEnumerator(name: "ABMON_10", value: 131095)
!361 = !DIEnumerator(name: "ABMON_11", value: 131096)
!362 = !DIEnumerator(name: "ABMON_12", value: 131097)
!363 = !DIEnumerator(name: "MON_1", value: 131098)
!364 = !DIEnumerator(name: "MON_2", value: 131099)
!365 = !DIEnumerator(name: "MON_3", value: 131100)
!366 = !DIEnumerator(name: "MON_4", value: 131101)
!367 = !DIEnumerator(name: "MON_5", value: 131102)
!368 = !DIEnumerator(name: "MON_6", value: 131103)
!369 = !DIEnumerator(name: "MON_7", value: 131104)
!370 = !DIEnumerator(name: "MON_8", value: 131105)
!371 = !DIEnumerator(name: "MON_9", value: 131106)
!372 = !DIEnumerator(name: "MON_10", value: 131107)
!373 = !DIEnumerator(name: "MON_11", value: 131108)
!374 = !DIEnumerator(name: "MON_12", value: 131109)
!375 = !DIEnumerator(name: "AM_STR", value: 131110)
!376 = !DIEnumerator(name: "PM_STR", value: 131111)
!377 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!378 = !DIEnumerator(name: "D_FMT", value: 131113)
!379 = !DIEnumerator(name: "T_FMT", value: 131114)
!380 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!381 = !DIEnumerator(name: "ERA", value: 131116)
!382 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!383 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!384 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!385 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!386 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!387 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!388 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!389 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!390 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!391 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!392 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!393 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!394 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!395 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!396 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!397 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!398 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!399 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!400 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!401 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!402 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!403 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!404 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!405 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!406 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!407 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!408 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!409 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!410 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!411 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!412 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!413 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!414 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!415 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!416 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!417 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!418 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!419 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!420 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!421 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!422 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!423 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!424 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!425 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!426 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!427 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!428 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!429 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!430 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!431 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!432 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!433 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!434 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!435 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!436 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!437 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!438 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!439 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!440 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!441 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!442 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!443 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!444 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!445 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!446 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!447 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!448 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!449 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!450 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!451 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!452 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!453 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!454 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!455 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!456 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!457 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!458 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!459 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!460 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!461 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!462 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!463 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!464 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!465 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!466 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!467 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!468 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!469 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!470 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!471 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!472 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!473 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!474 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!475 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!476 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!477 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!478 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!479 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!480 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!481 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!482 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!483 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!484 = !DIEnumerator(name: "CODESET", value: 14)
!485 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!486 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!487 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!488 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!512 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!513 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!517 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!518 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!519 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!520 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!521 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!531 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!532 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!533 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!534 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!535 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!536 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!537 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!538 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!539 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!540 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!541 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!542 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!543 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!544 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!545 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!546 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!547 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!548 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!549 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!550 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!551 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!552 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!553 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!554 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!555 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!556 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!557 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!558 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!559 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!560 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!561 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!562 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!563 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!564 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!565 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!566 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!567 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!568 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!569 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!570 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!571 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!572 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!573 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!574 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!575 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!576 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!577 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!578 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!579 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!580 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!581 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!582 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!583 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!584 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!585 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!586 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!587 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!588 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!589 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!590 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!592 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!593 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!595 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!596 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!598 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!599 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!600 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!601 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!602 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!603 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!604 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!605 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!606 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!607 = !DIEnumerator(name: "THOUSEP", value: 65537)
!608 = !DIEnumerator(name: "__GROUPING", value: 65538)
!609 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!610 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!611 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!612 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!613 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!614 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!615 = !DIEnumerator(name: "__YESSTR", value: 327682)
!616 = !DIEnumerator(name: "__NOSTR", value: 327683)
!617 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!618 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!619 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!620 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!621 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!622 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!623 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!624 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!625 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!626 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!627 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!628 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!629 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!630 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!631 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!632 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!633 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!634 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!635 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!636 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!637 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!638 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!639 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!640 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!641 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!642 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!643 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!644 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!645 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!646 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!647 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!648 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!649 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!650 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!651 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!652 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!653 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!654 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!655 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!656 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!657 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!658 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!659 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!660 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!661 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!662 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!663 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!664 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!665 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!666 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!667 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!668 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!669 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!670 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!671 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!672 = !{!22, !20, !79}
!673 = !{!329}
!674 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!675 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!676 = !DIGlobalVariableExpression(var: !677)
!677 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !678, file: !679, line: 335, type: !36, isLocal: true, isDefinition: true)
!678 = distinct !DISubprogram(name: "rpl_fcntl", scope: !679, file: !679, line: 272, type: !680, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !685)
!679 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!680 = !DISubroutineType(types: !681)
!681 = !{!36, !36, !36, null}
!682 = distinct !DICompileUnit(language: DW_LANG_C99, file: !683, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, globals: !684)
!683 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!684 = !{!676}
!685 = !{!686, !687, !688, !699, !700, !703, !706, !709}
!686 = !DILocalVariable(name: "fd", arg: 1, scope: !678, file: !679, line: 272, type: !36)
!687 = !DILocalVariable(name: "action", arg: 2, scope: !678, file: !679, line: 272, type: !36)
!688 = !DILocalVariable(name: "arg", scope: !678, file: !679, line: 274, type: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !690, line: 30, baseType: !691)
!690 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !683, line: 274, baseType: !692)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 192, elements: !174)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !683, line: 274, size: 192, elements: !694)
!694 = !{!695, !696, !697, !698}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !693, file: !683, line: 274, baseType: !83, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !693, file: !683, line: 274, baseType: !83, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !693, file: !683, line: 274, baseType: !22, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !693, file: !683, line: 274, baseType: !22, size: 64, offset: 128)
!699 = !DILocalVariable(name: "result", scope: !678, file: !679, line: 275, type: !36)
!700 = !DILocalVariable(name: "target", scope: !701, file: !679, line: 322, type: !36)
!701 = distinct !DILexicalBlock(scope: !702, file: !679, line: 321, column: 7)
!702 = distinct !DILexicalBlock(scope: !678, file: !679, line: 278, column: 5)
!703 = !DILocalVariable(name: "flags", scope: !704, file: !679, line: 359, type: !36)
!704 = distinct !DILexicalBlock(scope: !705, file: !679, line: 358, column: 11)
!705 = distinct !DILexicalBlock(scope: !701, file: !679, line: 357, column: 13)
!706 = !DILocalVariable(name: "saved_errno", scope: !707, file: !679, line: 362, type: !36)
!707 = distinct !DILexicalBlock(scope: !708, file: !679, line: 361, column: 15)
!708 = distinct !DILexicalBlock(scope: !704, file: !679, line: 360, column: 17)
!709 = !DILocalVariable(name: "p", scope: !710, file: !679, line: 404, type: !22)
!710 = distinct !DILexicalBlock(scope: !702, file: !679, line: 402, column: 7)
!711 = distinct !DICompileUnit(language: DW_LANG_C99, file: !712, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !713)
!712 = !DIFile(filename: "./lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!713 = !{!22}
!714 = distinct !DICompileUnit(language: DW_LANG_C99, file: !715, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !716)
!715 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!716 = !{!717}
!717 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !719, file: !718, line: 62, size: 32, elements: !733)
!718 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!719 = distinct !DISubprogram(name: "safe_read", scope: !718, file: !718, line: 56, type: !720, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !714, variables: !722)
!720 = !DISubroutineType(types: !721)
!721 = !{!27, !36, !22, !27}
!722 = !{!723, !724, !725, !726}
!723 = !DILocalVariable(name: "fd", arg: 1, scope: !719, file: !718, line: 56, type: !36)
!724 = !DILocalVariable(name: "buf", arg: 2, scope: !719, file: !718, line: 56, type: !22)
!725 = !DILocalVariable(name: "count", arg: 3, scope: !719, file: !718, line: 56, type: !27)
!726 = !DILocalVariable(name: "result", scope: !727, file: !718, line: 66, type: !730)
!727 = distinct !DILexicalBlock(scope: !728, file: !718, line: 65, column: 5)
!728 = distinct !DILexicalBlock(scope: !729, file: !718, line: 64, column: 3)
!729 = distinct !DILexicalBlock(scope: !719, file: !718, line: 64, column: 3)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !731, line: 109, baseType: !732)
!731 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !166, line: 181, baseType: !167)
!733 = !{!734}
!734 = !DIEnumerator(name: "BUGGY_READ_MAXIMUM", value: 2147475456)
!735 = distinct !DICompileUnit(language: DW_LANG_C99, file: !736, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232)
!736 = !DIFile(filename: "./lib/mkstemp-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!737 = distinct !DICompileUnit(language: DW_LANG_C99, file: !738, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232)
!738 = !DIFile(filename: "./lib/fd-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!739 = distinct !DICompileUnit(language: DW_LANG_C99, file: !740, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !741, retainedTypes: !713)
!740 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!741 = !{!742}
!742 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !743, line: 41, size: 32, elements: !744)
!743 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!744 = !{!745}
!745 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!746 = distinct !DICompileUnit(language: DW_LANG_C99, file: !747, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !748, retainedTypes: !762)
!747 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!748 = !{!749}
!749 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !751, file: !750, line: 192, size: 32, elements: !760)
!750 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!751 = distinct !DISubprogram(name: "x2nrealloc", scope: !750, file: !750, line: 180, type: !752, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !746, variables: !755)
!752 = !DISubroutineType(types: !753)
!753 = !{!22, !22, !754, !27}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!755 = !{!756, !757, !758, !759}
!756 = !DILocalVariable(name: "p", arg: 1, scope: !751, file: !750, line: 180, type: !22)
!757 = !DILocalVariable(name: "pn", arg: 2, scope: !751, file: !750, line: 180, type: !754)
!758 = !DILocalVariable(name: "s", arg: 3, scope: !751, file: !750, line: 180, type: !27)
!759 = !DILocalVariable(name: "n", scope: !751, file: !750, line: 182, type: !27)
!760 = !{!761}
!761 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!762 = !{!27, !20, !22}
!763 = distinct !DICompileUnit(language: DW_LANG_C99, file: !764, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232)
!764 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!765 = distinct !DICompileUnit(language: DW_LANG_C99, file: !766, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !713)
!766 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!767 = distinct !DICompileUnit(language: DW_LANG_C99, file: !768, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !713)
!768 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!769 = distinct !DICompileUnit(language: DW_LANG_C99, file: !770, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !771)
!770 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!771 = !{!27}
!772 = distinct !DICompileUnit(language: DW_LANG_C99, file: !773, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232)
!773 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!774 = distinct !DICompileUnit(language: DW_LANG_C99, file: !775, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !776)
!775 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!776 = !{!20}
!777 = distinct !DICompileUnit(language: DW_LANG_C99, file: !778, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232)
!778 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!779 = distinct !DICompileUnit(language: DW_LANG_C99, file: !780, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232)
!780 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!781 = distinct !DICompileUnit(language: DW_LANG_C99, file: !782, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232)
!782 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!783 = distinct !DICompileUnit(language: DW_LANG_C99, file: !784, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !713)
!784 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!785 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!786 = !{i32 2, !"Dwarf Version", i32 4}
!787 = !{i32 2, !"Debug Info Version", i32 3}
!788 = !{i32 1, !"wchar_size", i32 4}
!789 = !{i32 7, !"PIC Level", i32 2}
!790 = !{i32 7, !"PIE Level", i32 2}
!791 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 126, type: !792, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !794)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !36}
!794 = !{!795}
!795 = !DILocalVariable(name: "status", arg: 1, scope: !791, file: !3, line: 126, type: !36)
!796 = !DIExpression()
!797 = !DILocation(line: 126, column: 12, scope: !791)
!798 = !DILocation(line: 128, column: 14, scope: !799)
!799 = distinct !DILexicalBlock(scope: !791, file: !3, line: 128, column: 7)
!800 = !DILocation(line: 128, column: 7, scope: !791)
!801 = !DILocation(line: 129, column: 5, scope: !802)
!802 = distinct !DILexicalBlock(scope: !799, file: !3, line: 129, column: 5)
!803 = !{!804, !804, i64 0}
!804 = !{!"any pointer", !805, i64 0}
!805 = !{!"omnipotent char", !806, i64 0}
!806 = !{!"Simple C/C++ TBAA"}
!807 = !DILocation(line: 132, column: 7, scope: !808)
!808 = distinct !DILexicalBlock(scope: !799, file: !3, line: 131, column: 5)
!809 = !DILocation(line: 136, column: 7, scope: !808)
!810 = !DILocation(line: 580, column: 3, scope: !811, inlinedAt: !814)
!811 = distinct !DISubprogram(name: "emit_stdin_note", scope: !98, file: !98, line: 578, type: !812, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !232)
!812 = !DISubroutineType(types: !813)
!813 = !{null}
!814 = distinct !DILocation(line: 140, column: 7, scope: !808)
!815 = !DILocation(line: 587, column: 3, scope: !816, inlinedAt: !817)
!816 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !98, file: !98, line: 585, type: !812, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !232)
!817 = distinct !DILocation(line: 141, column: 7, scope: !808)
!818 = !DILocation(line: 143, column: 7, scope: !808)
!819 = !DILocation(line: 148, column: 7, scope: !808)
!820 = !DILocation(line: 149, column: 7, scope: !808)
!821 = !DILocation(line: 642, column: 15, scope: !97, inlinedAt: !822)
!822 = distinct !DILocation(line: 150, column: 7, scope: !808)
!823 = !DILocation(line: 651, column: 3, scope: !97, inlinedAt: !822)
!824 = !DILocation(line: 655, column: 29, scope: !97, inlinedAt: !822)
!825 = !DILocation(line: 655, column: 15, scope: !97, inlinedAt: !822)
!826 = !DILocation(line: 656, column: 7, scope: !827, inlinedAt: !822)
!827 = distinct !DILexicalBlock(scope: !97, file: !98, line: 656, column: 7)
!828 = !DILocation(line: 656, column: 19, scope: !827, inlinedAt: !822)
!829 = !DILocation(line: 656, column: 22, scope: !827, inlinedAt: !822)
!830 = !DILocation(line: 656, column: 7, scope: !97, inlinedAt: !822)
!831 = !DILocation(line: 662, column: 7, scope: !832, inlinedAt: !822)
!832 = distinct !DILexicalBlock(scope: !827, file: !98, line: 657, column: 5)
!833 = !DILocation(line: 664, column: 5, scope: !832, inlinedAt: !822)
!834 = !DILocation(line: 665, column: 3, scope: !97, inlinedAt: !822)
!835 = !DILocation(line: 667, column: 3, scope: !97, inlinedAt: !822)
!836 = !DILocation(line: 152, column: 3, scope: !791)
!837 = !DILocation(line: 603, column: 11, scope: !33)
!838 = !DILocation(line: 603, column: 24, scope: !33)
!839 = !DILocation(line: 616, column: 21, scope: !33)
!840 = !DILocation(line: 616, column: 3, scope: !33)
!841 = !DILocation(line: 617, column: 3, scope: !33)
!842 = !DILocation(line: 618, column: 3, scope: !33)
!843 = !DILocation(line: 619, column: 3, scope: !33)
!844 = !DILocation(line: 621, column: 3, scope: !33)
!845 = !DILocation(line: 623, column: 13, scope: !33)
!846 = !DILocation(line: 624, column: 19, scope: !33)
!847 = !{!848, !848, i64 0}
!848 = !{!"long", !805, i64 0}
!849 = !DILocation(line: 627, column: 3, scope: !33)
!850 = !DILocation(line: 627, column: 18, scope: !33)
!851 = !DILocation(line: 606, column: 7, scope: !33)
!852 = !DILocation(line: 633, column: 11, scope: !853)
!853 = distinct !DILexicalBlock(scope: !854, file: !3, line: 630, column: 9)
!854 = distinct !DILexicalBlock(scope: !33, file: !3, line: 628, column: 5)
!855 = !DILocation(line: 635, column: 27, scope: !853)
!856 = !DILocation(line: 636, column: 11, scope: !853)
!857 = !DILocation(line: 638, column: 23, scope: !853)
!858 = !DILocation(line: 638, column: 21, scope: !853)
!859 = !DILocation(line: 639, column: 11, scope: !853)
!860 = distinct !{!860, !849, !861}
!861 = !DILocation(line: 645, column: 5, scope: !33)
!862 = !DILocation(line: 640, column: 9, scope: !853)
!863 = !DILocation(line: 641, column: 9, scope: !853)
!864 = !DILocation(line: 643, column: 11, scope: !853)
!865 = !DILocation(line: 647, column: 7, scope: !866)
!866 = distinct !DILexicalBlock(scope: !33, file: !3, line: 647, column: 7)
!867 = !DILocation(line: 647, column: 23, scope: !866)
!868 = !{!805, !805, i64 0}
!869 = !DILocation(line: 647, column: 7, scope: !33)
!870 = !DILocation(line: 649, column: 11, scope: !871)
!871 = distinct !DILexicalBlock(scope: !866, file: !3, line: 648, column: 5)
!872 = !DILocation(line: 650, column: 9, scope: !873)
!873 = distinct !DILexicalBlock(scope: !871, file: !3, line: 649, column: 11)
!874 = !DILocation(line: 653, column: 36, scope: !871)
!875 = !DILocation(line: 654, column: 34, scope: !871)
!876 = !DILocation(line: 656, column: 54, scope: !871)
!877 = !DILocation(line: 656, column: 23, scope: !871)
!878 = !DILocation(line: 605, column: 15, scope: !33)
!879 = !DILocation(line: 658, column: 11, scope: !880)
!880 = distinct !DILexicalBlock(scope: !871, file: !3, line: 658, column: 11)
!881 = !DILocation(line: 658, column: 11, scope: !871)
!882 = !DILocation(line: 665, column: 10, scope: !33)
!883 = !DILocation(line: 659, column: 9, scope: !880)
!884 = !DILocation(line: 662, column: 38, scope: !866)
!885 = !DILocation(line: 662, column: 51, scope: !866)
!886 = !DILocation(line: 662, column: 36, scope: !866)
!887 = !DILocation(line: 662, column: 18, scope: !866)
!888 = !DILocation(line: 665, column: 26, scope: !33)
!889 = !DILocation(line: 665, column: 3, scope: !33)
!890 = !DILocation(line: 667, column: 24, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !3, line: 667, column: 11)
!892 = distinct !DILexicalBlock(scope: !33, file: !3, line: 666, column: 5)
!893 = !DILocation(line: 667, column: 11, scope: !892)
!894 = !DILocation(line: 668, column: 9, scope: !891)
!895 = !DILocation(line: 669, column: 17, scope: !892)
!896 = !DILocation(line: 665, column: 39, scope: !33)
!897 = distinct !{!897, !889, !898}
!898 = !DILocation(line: 670, column: 5, scope: !33)
!899 = !DILocation(line: 671, column: 32, scope: !33)
!900 = !DILocation(line: 671, column: 50, scope: !33)
!901 = !DILocation(line: 608, column: 10, scope: !33)
!902 = !DILocation(line: 672, column: 21, scope: !33)
!903 = !DILocation(line: 672, column: 17, scope: !33)
!904 = !DILocation(line: 673, column: 20, scope: !905)
!905 = distinct !DILexicalBlock(scope: !33, file: !3, line: 673, column: 7)
!906 = !DILocation(line: 673, column: 59, scope: !905)
!907 = !DILocation(line: 673, column: 39, scope: !905)
!908 = !DILocation(line: 674, column: 5, scope: !905)
!909 = !DILocation(line: 675, column: 14, scope: !33)
!910 = !DILocation(line: 675, column: 12, scope: !33)
!911 = !DILocation(line: 676, column: 7, scope: !912)
!912 = distinct !DILexicalBlock(scope: !33, file: !3, line: 676, column: 7)
!913 = !DILocation(line: 676, column: 7, scope: !33)
!914 = !DILocation(line: 678, column: 25, scope: !915)
!915 = distinct !DILexicalBlock(scope: !912, file: !3, line: 677, column: 5)
!916 = !DILocation(line: 678, column: 52, scope: !915)
!917 = !DILocation(line: 678, column: 7, scope: !915)
!918 = !DILocation(line: 680, column: 5, scope: !915)
!919 = !DILocation(line: 686, column: 11, scope: !33)
!920 = !{!921, !921, i64 0}
!921 = !{!"int", !805, i64 0}
!922 = !DILocation(line: 686, column: 18, scope: !33)
!923 = !DILocation(line: 687, column: 36, scope: !33)
!924 = !DILocation(line: 613, column: 22, scope: !33)
!925 = !DILocation(line: 607, column: 8, scope: !33)
!926 = !DILocation(line: 693, column: 12, scope: !48)
!927 = !DILocation(line: 695, column: 17, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !3, line: 695, column: 5)
!929 = distinct !DILexicalBlock(scope: !48, file: !3, line: 695, column: 5)
!930 = !DILocation(line: 695, column: 5, scope: !929)
!931 = !DILocation(line: 568, column: 19, scope: !932, inlinedAt: !943)
!932 = distinct !DISubprogram(name: "tac_file", scope: !3, file: !3, line: 563, type: !933, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !935)
!933 = !DISubroutineType(types: !934)
!934 = !{!44, !25}
!935 = !{!936, !937, !938, !941, !942}
!936 = !DILocalVariable(name: "filename", arg: 1, scope: !932, file: !3, line: 563, type: !25)
!937 = !DILocalVariable(name: "ok", scope: !932, file: !3, line: 565, type: !44)
!938 = !DILocalVariable(name: "file_size", scope: !932, file: !3, line: 566, type: !939)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !940, line: 57, baseType: !165)
!940 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!941 = !DILocalVariable(name: "fd", scope: !932, file: !3, line: 567, type: !36)
!942 = !DILocalVariable(name: "is_stdin", scope: !932, file: !3, line: 568, type: !44)
!943 = distinct !DILocation(line: 696, column: 13, scope: !928)
!944 = !DILocation(line: 563, column: 23, scope: !932, inlinedAt: !943)
!945 = !DILocation(line: 570, column: 7, scope: !932, inlinedAt: !943)
!946 = !DILocation(line: 567, column: 7, scope: !932, inlinedAt: !943)
!947 = !DILocation(line: 574, column: 18, scope: !948, inlinedAt: !943)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 571, column: 5)
!949 = distinct !DILexicalBlock(scope: !932, file: !3, line: 570, column: 7)
!950 = !DILocation(line: 576, column: 5, scope: !948, inlinedAt: !943)
!951 = !DILocation(line: 579, column: 12, scope: !952, inlinedAt: !943)
!952 = distinct !DILexicalBlock(scope: !949, file: !3, line: 578, column: 5)
!953 = !DILocation(line: 580, column: 14, scope: !954, inlinedAt: !943)
!954 = distinct !DILexicalBlock(scope: !952, file: !3, line: 580, column: 11)
!955 = !DILocation(line: 580, column: 11, scope: !952, inlinedAt: !943)
!956 = !DILocation(line: 582, column: 21, scope: !957, inlinedAt: !943)
!957 = distinct !DILexicalBlock(scope: !954, file: !3, line: 581, column: 9)
!958 = !DILocation(line: 582, column: 28, scope: !957, inlinedAt: !943)
!959 = !DILocation(line: 583, column: 18, scope: !957, inlinedAt: !943)
!960 = !DILocation(line: 582, column: 11, scope: !957, inlinedAt: !943)
!961 = !DILocation(line: 584, column: 11, scope: !957, inlinedAt: !943)
!962 = !DILocation(line: 588, column: 15, scope: !932, inlinedAt: !943)
!963 = !DILocation(line: 566, column: 9, scope: !932, inlinedAt: !943)
!964 = !DILocation(line: 590, column: 19, scope: !932, inlinedAt: !943)
!965 = !DILocation(line: 590, column: 23, scope: !932, inlinedAt: !943)
!966 = !DILocation(line: 590, column: 26, scope: !932, inlinedAt: !943)
!967 = !DILocation(line: 590, column: 9, scope: !932, inlinedAt: !943)
!968 = !DILocalVariable(name: "input_fd", arg: 1, scope: !969, file: !3, line: 546, type: !36)
!969 = distinct !DISubprogram(name: "tac_nonseekable", scope: !3, file: !3, line: 546, type: !970, isLocal: true, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !972)
!970 = !DISubroutineType(types: !971)
!971 = !{!44, !36, !25}
!972 = !{!968, !973, !974, !975, !976, !977}
!973 = !DILocalVariable(name: "file", arg: 2, scope: !969, file: !3, line: 546, type: !25)
!974 = !DILocalVariable(name: "tmp_stream", scope: !969, file: !3, line: 548, type: !135)
!975 = !DILocalVariable(name: "tmp_file", scope: !969, file: !3, line: 549, type: !20)
!976 = !DILocalVariable(name: "bytes_copied", scope: !969, file: !3, line: 550, type: !939)
!977 = !DILocalVariable(name: "ok", scope: !969, file: !3, line: 554, type: !44)
!978 = !DILocation(line: 546, column: 22, scope: !969, inlinedAt: !979)
!979 = distinct !DILocation(line: 591, column: 11, scope: !932, inlinedAt: !943)
!980 = !DILocation(line: 546, column: 44, scope: !969, inlinedAt: !979)
!981 = !DILocation(line: 548, column: 9, scope: !969, inlinedAt: !979)
!982 = !DILocation(line: 549, column: 9, scope: !969, inlinedAt: !979)
!983 = !DILocalVariable(name: "g_tmp", arg: 1, scope: !984, file: !3, line: 500, type: !134)
!984 = distinct !DISubprogram(name: "copy_to_temp", scope: !3, file: !3, line: 500, type: !985, isLocal: true, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{!939, !134, !37, !36, !25}
!987 = !{!983, !988, !989, !990, !991, !992, !993, !997}
!988 = !DILocalVariable(name: "g_tempfile", arg: 2, scope: !984, file: !3, line: 500, type: !37)
!989 = !DILocalVariable(name: "input_fd", arg: 3, scope: !984, file: !3, line: 500, type: !36)
!990 = !DILocalVariable(name: "file", arg: 4, scope: !984, file: !3, line: 500, type: !25)
!991 = !DILocalVariable(name: "fp", scope: !984, file: !3, line: 502, type: !135)
!992 = !DILocalVariable(name: "file_name", scope: !984, file: !3, line: 503, type: !20)
!993 = !DILocalVariable(name: "bytes_copied", scope: !984, file: !3, line: 504, type: !994)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !995, line: 112, baseType: !996)
!995 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !166, line: 62, baseType: !29)
!997 = !DILocalVariable(name: "bytes_read", scope: !998, file: !3, line: 510, type: !27)
!998 = distinct !DILexicalBlock(scope: !984, file: !3, line: 509, column: 5)
!999 = !DILocation(line: 500, column: 22, scope: !984, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 550, column: 24, scope: !969, inlinedAt: !979)
!1001 = !DILocation(line: 500, column: 36, scope: !984, inlinedAt: !1000)
!1002 = !DILocation(line: 500, column: 52, scope: !984, inlinedAt: !1000)
!1003 = !DILocation(line: 500, column: 74, scope: !984, inlinedAt: !1000)
!1004 = !DILocation(line: 504, column: 13, scope: !984, inlinedAt: !1000)
!1005 = !DILocation(line: 502, column: 9, scope: !984, inlinedAt: !1000)
!1006 = !DILocation(line: 503, column: 9, scope: !984, inlinedAt: !1000)
!1007 = !DILocation(line: 431, column: 21, scope: !131, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 505, column: 8, scope: !1009, inlinedAt: !1000)
!1009 = distinct !DILexicalBlock(scope: !984, file: !3, line: 505, column: 7)
!1010 = !DILocation(line: 431, column: 32, scope: !131, inlinedAt: !1008)
!1011 = !DILocation(line: 435, column: 7, scope: !196, inlinedAt: !1008)
!1012 = !DILocation(line: 435, column: 16, scope: !196, inlinedAt: !1008)
!1013 = !DILocation(line: 435, column: 7, scope: !131, inlinedAt: !1008)
!1014 = !DILocation(line: 437, column: 23, scope: !195, inlinedAt: !1008)
!1015 = !DILocation(line: 437, column: 19, scope: !195, inlinedAt: !1008)
!1016 = !DILocation(line: 438, column: 29, scope: !195, inlinedAt: !1008)
!1017 = !DILocation(line: 438, column: 19, scope: !195, inlinedAt: !1008)
!1018 = !DILocation(line: 439, column: 18, scope: !195, inlinedAt: !1008)
!1019 = !DILocation(line: 439, column: 16, scope: !195, inlinedAt: !1008)
!1020 = !DILocation(line: 455, column: 16, scope: !195, inlinedAt: !1008)
!1021 = !DILocation(line: 455, column: 11, scope: !195, inlinedAt: !1008)
!1022 = !DILocation(line: 456, column: 14, scope: !1023, inlinedAt: !1008)
!1023 = distinct !DILexicalBlock(scope: !195, file: !3, line: 456, column: 11)
!1024 = !DILocation(line: 456, column: 11, scope: !195, inlinedAt: !1008)
!1025 = !DILocation(line: 458, column: 21, scope: !1026, inlinedAt: !1008)
!1026 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 457, column: 9)
!1027 = !DILocation(line: 458, column: 28, scope: !1026, inlinedAt: !1008)
!1028 = !DILocation(line: 459, column: 18, scope: !1026, inlinedAt: !1008)
!1029 = !DILocation(line: 458, column: 11, scope: !1026, inlinedAt: !1008)
!1030 = !DILocation(line: 460, column: 11, scope: !1026, inlinedAt: !1008)
!1031 = !DILocation(line: 463, column: 16, scope: !195, inlinedAt: !1008)
!1032 = !DILocation(line: 463, column: 14, scope: !195, inlinedAt: !1008)
!1033 = !DILocation(line: 464, column: 13, scope: !1034, inlinedAt: !1008)
!1034 = distinct !DILexicalBlock(scope: !195, file: !3, line: 464, column: 11)
!1035 = !DILocation(line: 464, column: 11, scope: !195, inlinedAt: !1008)
!1036 = !DILocation(line: 466, column: 21, scope: !1037, inlinedAt: !1008)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 465, column: 9)
!1038 = !DILocation(line: 466, column: 28, scope: !1037, inlinedAt: !1008)
!1039 = !DILocation(line: 467, column: 18, scope: !1037, inlinedAt: !1008)
!1040 = !DILocation(line: 466, column: 11, scope: !1037, inlinedAt: !1008)
!1041 = !DILocation(line: 468, column: 11, scope: !1037, inlinedAt: !1008)
!1042 = !DILocation(line: 469, column: 19, scope: !1037, inlinedAt: !1008)
!1043 = !DILocation(line: 469, column: 11, scope: !1037, inlinedAt: !1008)
!1044 = !DILocation(line: 476, column: 34, scope: !195, inlinedAt: !1008)
!1045 = !DILocalVariable(name: "fp", arg: 2, scope: !1046, file: !3, line: 420, type: !135)
!1046 = distinct !DISubprogram(name: "record_or_unlink_tempfile", scope: !3, file: !3, line: 420, type: !1047, isLocal: true, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !25, !135}
!1049 = !{!1050, !1045}
!1050 = !DILocalVariable(name: "fn", arg: 1, scope: !1046, file: !3, line: 420, type: !25)
!1051 = !DILocation(line: 420, column: 50, scope: !1046, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 476, column: 7, scope: !195, inlinedAt: !1008)
!1053 = !DILocation(line: 422, column: 3, scope: !1046, inlinedAt: !1052)
!1054 = !DILocation(line: 471, column: 17, scope: !1037, inlinedAt: !1008)
!1055 = !DILocation(line: 471, column: 11, scope: !1037, inlinedAt: !1008)
!1056 = !DILocation(line: 472, column: 20, scope: !1037, inlinedAt: !1008)
!1057 = !DILocation(line: 480, column: 7, scope: !1058, inlinedAt: !1008)
!1058 = distinct !DILexicalBlock(scope: !196, file: !3, line: 479, column: 5)
!1059 = !DILocation(line: 481, column: 19, scope: !1060, inlinedAt: !1008)
!1060 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 481, column: 11)
!1061 = !DILocation(line: 481, column: 11, scope: !1060, inlinedAt: !1008)
!1062 = !DILocation(line: 481, column: 40, scope: !1060, inlinedAt: !1008)
!1063 = !DILocation(line: 482, column: 11, scope: !1060, inlinedAt: !1008)
!1064 = !DILocation(line: 482, column: 33, scope: !1060, inlinedAt: !1008)
!1065 = !DILocation(line: 482, column: 25, scope: !1060, inlinedAt: !1008)
!1066 = !DILocation(line: 482, column: 14, scope: !1060, inlinedAt: !1008)
!1067 = !DILocation(line: 482, column: 45, scope: !1060, inlinedAt: !1008)
!1068 = !DILocation(line: 481, column: 11, scope: !1058, inlinedAt: !1008)
!1069 = !DILocation(line: 484, column: 21, scope: !1070, inlinedAt: !1008)
!1070 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 483, column: 9)
!1071 = !DILocation(line: 484, column: 28, scope: !1070, inlinedAt: !1008)
!1072 = !DILocation(line: 485, column: 18, scope: !1070, inlinedAt: !1008)
!1073 = !DILocation(line: 484, column: 11, scope: !1070, inlinedAt: !1008)
!1074 = !DILocation(line: 486, column: 11, scope: !1070, inlinedAt: !1008)
!1075 = !DILocation(line: 490, column: 9, scope: !131, inlinedAt: !1008)
!1076 = !DILocation(line: 491, column: 16, scope: !131, inlinedAt: !1008)
!1077 = !DILocation(line: 508, column: 3, scope: !984, inlinedAt: !1000)
!1078 = !DILocation(line: 510, column: 48, scope: !998, inlinedAt: !1000)
!1079 = !DILocation(line: 510, column: 58, scope: !998, inlinedAt: !1000)
!1080 = !DILocation(line: 510, column: 27, scope: !998, inlinedAt: !1000)
!1081 = !DILocation(line: 510, column: 14, scope: !998, inlinedAt: !1000)
!1082 = !DILocation(line: 511, column: 11, scope: !998, inlinedAt: !1000)
!1083 = !DILocation(line: 515, column: 21, scope: !1084, inlinedAt: !1000)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 514, column: 9)
!1085 = distinct !DILexicalBlock(scope: !998, file: !3, line: 513, column: 11)
!1086 = !DILocation(line: 515, column: 28, scope: !1084, inlinedAt: !1000)
!1087 = !DILocation(line: 515, column: 49, scope: !1084, inlinedAt: !1000)
!1088 = !DILocation(line: 515, column: 11, scope: !1084, inlinedAt: !1000)
!1089 = !DILocation(line: 516, column: 11, scope: !1084, inlinedAt: !1000)
!1090 = !DILocation(line: 519, column: 11, scope: !1091, inlinedAt: !1000)
!1091 = distinct !DILexicalBlock(scope: !998, file: !3, line: 519, column: 11)
!1092 = !DILocation(line: 519, column: 48, scope: !1091, inlinedAt: !1000)
!1093 = !DILocation(line: 528, column: 20, scope: !998, inlinedAt: !1000)
!1094 = !DILocation(line: 519, column: 11, scope: !998, inlinedAt: !1000)
!1095 = distinct !{!1095, !1096, !1097}
!1096 = !DILocation(line: 508, column: 3, scope: !984)
!1097 = !DILocation(line: 529, column: 5, scope: !984)
!1098 = !DILocation(line: 521, column: 21, scope: !1099, inlinedAt: !1000)
!1099 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 520, column: 9)
!1100 = !DILocation(line: 521, column: 28, scope: !1099, inlinedAt: !1000)
!1101 = !DILocation(line: 521, column: 50, scope: !1099, inlinedAt: !1000)
!1102 = !DILocation(line: 521, column: 11, scope: !1099, inlinedAt: !1000)
!1103 = !DILocation(line: 522, column: 11, scope: !1099, inlinedAt: !1000)
!1104 = !DILocation(line: 531, column: 7, scope: !1105, inlinedAt: !1000)
!1105 = distinct !DILexicalBlock(scope: !984, file: !3, line: 531, column: 7)
!1106 = !DILocation(line: 531, column: 19, scope: !1105, inlinedAt: !1000)
!1107 = !DILocation(line: 531, column: 7, scope: !984, inlinedAt: !1000)
!1108 = !DILocation(line: 533, column: 17, scope: !1109, inlinedAt: !1000)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 532, column: 5)
!1110 = !DILocation(line: 533, column: 24, scope: !1109, inlinedAt: !1000)
!1111 = !DILocation(line: 533, column: 46, scope: !1109, inlinedAt: !1000)
!1112 = !DILocation(line: 533, column: 7, scope: !1109, inlinedAt: !1000)
!1113 = !DILocation(line: 534, column: 7, scope: !1109, inlinedAt: !1000)
!1114 = !DILocation(line: 550, column: 9, scope: !969, inlinedAt: !979)
!1115 = !DILocation(line: 551, column: 20, scope: !1116, inlinedAt: !979)
!1116 = distinct !DILexicalBlock(scope: !969, file: !3, line: 551, column: 7)
!1117 = !DILocation(line: 551, column: 7, scope: !969, inlinedAt: !979)
!1118 = !DILocation(line: 554, column: 27, scope: !969, inlinedAt: !979)
!1119 = !DILocation(line: 554, column: 48, scope: !969, inlinedAt: !979)
!1120 = !DILocation(line: 554, column: 13, scope: !969, inlinedAt: !979)
!1121 = !DILocation(line: 592, column: 11, scope: !932, inlinedAt: !943)
!1122 = !DILocation(line: 594, column: 17, scope: !1123, inlinedAt: !943)
!1123 = distinct !DILexicalBlock(scope: !932, file: !3, line: 594, column: 7)
!1124 = !DILocation(line: 594, column: 20, scope: !1123, inlinedAt: !943)
!1125 = !DILocation(line: 594, column: 31, scope: !1123, inlinedAt: !943)
!1126 = !DILocation(line: 594, column: 7, scope: !932, inlinedAt: !943)
!1127 = !DILocation(line: 596, column: 17, scope: !1128, inlinedAt: !943)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 595, column: 5)
!1129 = !DILocation(line: 596, column: 24, scope: !1128, inlinedAt: !943)
!1130 = !DILocation(line: 596, column: 45, scope: !1128, inlinedAt: !943)
!1131 = !DILocation(line: 596, column: 7, scope: !1128, inlinedAt: !943)
!1132 = !DILocation(line: 565, column: 8, scope: !932, inlinedAt: !943)
!1133 = !DILocation(line: 598, column: 5, scope: !1128, inlinedAt: !943)
!1134 = !DILocation(line: 696, column: 13, scope: !928)
!1135 = !DILocation(line: 696, column: 10, scope: !928)
!1136 = !DILocation(line: 695, column: 26, scope: !928)
!1137 = distinct !{!1137, !930, !1138}
!1138 = !DILocation(line: 696, column: 30, scope: !929)
!1139 = !DILocation(line: 159, column: 21, scope: !213, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 700, column: 3, scope: !33)
!1141 = !DILocation(line: 159, column: 40, scope: !213, inlinedAt: !1140)
!1142 = !DILocation(line: 164, column: 40, scope: !213, inlinedAt: !1140)
!1143 = !DILocation(line: 168, column: 7, scope: !1144, inlinedAt: !1140)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 167, column: 5)
!1145 = distinct !DILexicalBlock(scope: !213, file: !3, line: 166, column: 7)
!1146 = !DILocation(line: 702, column: 23, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !33, file: !3, line: 702, column: 7)
!1148 = !DILocation(line: 702, column: 26, scope: !1147)
!1149 = !DILocation(line: 702, column: 47, scope: !1147)
!1150 = !DILocation(line: 702, column: 7, scope: !33)
!1151 = !DILocation(line: 704, column: 17, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 703, column: 5)
!1153 = !DILocation(line: 704, column: 7, scope: !1152)
!1154 = !DILocation(line: 706, column: 5, scope: !1152)
!1155 = !DILocation(line: 713, column: 10, scope: !33)
!1156 = !DILocation(line: 714, column: 1, scope: !33)
!1157 = distinct !DISubprogram(name: "tac_seekable", scope: !3, file: !3, line: 193, type: !1158, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1160)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!44, !36, !25, !939}
!1160 = !{!1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1174, !1176, !1180, !1181, !1182, !1183, !1188, !1189, !1190}
!1161 = !DILocalVariable(name: "input_fd", arg: 1, scope: !1157, file: !3, line: 193, type: !36)
!1162 = !DILocalVariable(name: "file", arg: 2, scope: !1157, file: !3, line: 193, type: !25)
!1163 = !DILocalVariable(name: "file_pos", arg: 3, scope: !1157, file: !3, line: 193, type: !939)
!1164 = !DILocalVariable(name: "match_start", scope: !1157, file: !3, line: 197, type: !20)
!1165 = !DILocalVariable(name: "past_end", scope: !1157, file: !3, line: 201, type: !20)
!1166 = !DILocalVariable(name: "saved_record_size", scope: !1157, file: !3, line: 204, type: !27)
!1167 = !DILocalVariable(name: "first_time", scope: !1157, file: !3, line: 208, type: !44)
!1168 = !DILocalVariable(name: "first_char", scope: !1157, file: !3, line: 209, type: !21)
!1169 = !DILocalVariable(name: "separator1", scope: !1157, file: !3, line: 210, type: !25)
!1170 = !DILocalVariable(name: "match_length1", scope: !1157, file: !3, line: 211, type: !27)
!1171 = !DILocalVariable(name: "remainder", scope: !1157, file: !3, line: 218, type: !27)
!1172 = !DILocalVariable(name: "rsize", scope: !1173, file: !3, line: 231, type: !939)
!1173 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 230, column: 5)
!1174 = !DILocalVariable(name: "nread", scope: !1175, file: !3, line: 240, type: !27)
!1175 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 239, column: 5)
!1176 = !DILocalVariable(name: "i", scope: !1177, file: !3, line: 270, type: !27)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 269, column: 9)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 268, column: 11)
!1179 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 261, column: 5)
!1180 = !DILocalVariable(name: "ri", scope: !1177, file: !3, line: 271, type: !209)
!1181 = !DILocalVariable(name: "range", scope: !1177, file: !3, line: 272, type: !209)
!1182 = !DILocalVariable(name: "ret", scope: !1177, file: !3, line: 273, type: !209)
!1183 = !DILocalVariable(name: "newbuffer", scope: !1184, file: !3, line: 321, type: !20)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 316, column: 13)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 315, column: 15)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 306, column: 9)
!1187 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 305, column: 11)
!1188 = !DILocalVariable(name: "offset", scope: !1184, file: !3, line: 322, type: !27)
!1189 = !DILocalVariable(name: "old_G_buffer_size", scope: !1184, file: !3, line: 323, type: !27)
!1190 = !DILocalVariable(name: "match_end", scope: !1191, file: !3, line: 366, type: !20)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 365, column: 13)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 364, column: 15)
!1193 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 362, column: 9)
!1194 = !DILocation(line: 193, column: 19, scope: !1157)
!1195 = !DILocation(line: 193, column: 41, scope: !1157)
!1196 = !DILocation(line: 193, column: 53, scope: !1157)
!1197 = !DILocation(line: 208, column: 8, scope: !1157)
!1198 = !DILocation(line: 209, column: 22, scope: !1157)
!1199 = !DILocation(line: 209, column: 21, scope: !1157)
!1200 = !DILocation(line: 209, column: 8, scope: !1157)
!1201 = !DILocation(line: 210, column: 38, scope: !1157)
!1202 = !DILocation(line: 210, column: 15, scope: !1157)
!1203 = !DILocation(line: 211, column: 26, scope: !1157)
!1204 = !DILocation(line: 211, column: 39, scope: !1157)
!1205 = !DILocation(line: 211, column: 10, scope: !1157)
!1206 = !DILocation(line: 218, column: 33, scope: !1157)
!1207 = !DILocation(line: 218, column: 31, scope: !1157)
!1208 = !DILocation(line: 218, column: 10, scope: !1157)
!1209 = !DILocation(line: 219, column: 17, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 219, column: 7)
!1211 = !DILocation(line: 219, column: 7, scope: !1157)
!1212 = !DILocation(line: 221, column: 16, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 220, column: 5)
!1214 = !DILocation(line: 222, column: 11, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 222, column: 11)
!1216 = !DILocation(line: 222, column: 48, scope: !1215)
!1217 = !DILocation(line: 222, column: 11, scope: !1213)
!1218 = !DILocation(line: 223, column: 19, scope: !1215)
!1219 = !DILocation(line: 223, column: 26, scope: !1215)
!1220 = !DILocation(line: 223, column: 48, scope: !1215)
!1221 = !DILocation(line: 223, column: 9, scope: !1215)
!1222 = !DILocation(line: 228, column: 52, scope: !1157)
!1223 = !DILocation(line: 228, column: 62, scope: !1157)
!1224 = !DILocation(line: 228, column: 31, scope: !1157)
!1225 = !DILocation(line: 204, column: 10, scope: !1157)
!1226 = !DILocation(line: 228, column: 74, scope: !1157)
!1227 = !DILocation(line: 229, column: 22, scope: !1157)
!1228 = !DILocation(line: 229, column: 10, scope: !1157)
!1229 = !DILocation(line: 228, column: 3, scope: !1157)
!1230 = !DILocation(line: 231, column: 21, scope: !1173)
!1231 = !DILocation(line: 231, column: 13, scope: !1173)
!1232 = !DILocation(line: 232, column: 28, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 232, column: 11)
!1234 = !DILocation(line: 232, column: 11, scope: !1233)
!1235 = !DILocation(line: 232, column: 46, scope: !1233)
!1236 = !DILocation(line: 232, column: 11, scope: !1173)
!1237 = !DILocation(line: 233, column: 19, scope: !1233)
!1238 = !DILocation(line: 233, column: 26, scope: !1233)
!1239 = !DILocation(line: 233, column: 48, scope: !1233)
!1240 = !DILocation(line: 233, column: 9, scope: !1233)
!1241 = !DILocation(line: 234, column: 19, scope: !1173)
!1242 = !DILocation(line: 234, column: 16, scope: !1173)
!1243 = distinct !{!1243, !1229, !1244}
!1244 = !DILocation(line: 235, column: 5, scope: !1157)
!1245 = !DILocation(line: 238, column: 31, scope: !1157)
!1246 = !DILocation(line: 238, column: 28, scope: !1157)
!1247 = !DILocation(line: 238, column: 3, scope: !1157)
!1248 = !DILocation(line: 240, column: 43, scope: !1175)
!1249 = !DILocation(line: 240, column: 22, scope: !1175)
!1250 = !DILocation(line: 240, column: 14, scope: !1175)
!1251 = !DILocation(line: 241, column: 11, scope: !1175)
!1252 = !DILocation(line: 246, column: 16, scope: !1175)
!1253 = distinct !{!1253, !1247, !1254}
!1254 = !DILocation(line: 247, column: 5, scope: !1157)
!1255 = !DILocation(line: 249, column: 25, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 249, column: 7)
!1257 = !DILocation(line: 249, column: 7, scope: !1157)
!1258 = !DILocation(line: 251, column: 17, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 250, column: 5)
!1260 = !DILocation(line: 251, column: 24, scope: !1259)
!1261 = !DILocation(line: 251, column: 45, scope: !1259)
!1262 = !DILocation(line: 251, column: 7, scope: !1259)
!1263 = !DILocation(line: 252, column: 7, scope: !1259)
!1264 = !DILocation(line: 255, column: 28, scope: !1157)
!1265 = !DILocation(line: 255, column: 37, scope: !1157)
!1266 = !DILocation(line: 201, column: 9, scope: !1157)
!1267 = !DILocation(line: 197, column: 9, scope: !1157)
!1268 = !DILocation(line: 257, column: 7, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 257, column: 7)
!1270 = !DILocation(line: 258, column: 17, scope: !1269)
!1271 = !DILocation(line: 257, column: 7, scope: !1157)
!1272 = !DILocation(line: 260, column: 3, scope: !1157)
!1273 = !DILocation(line: 268, column: 27, scope: !1178)
!1274 = !DILocation(line: 268, column: 11, scope: !1178)
!1275 = !DILocation(line: 268, column: 11, scope: !1179)
!1276 = !DILocation(line: 297, column: 19, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 295, column: 9)
!1278 = !DILocation(line: 270, column: 36, scope: !1177)
!1279 = !DILocation(line: 270, column: 34, scope: !1177)
!1280 = !DILocation(line: 270, column: 18, scope: !1177)
!1281 = !DILocation(line: 271, column: 25, scope: !1177)
!1282 = !DILocation(line: 271, column: 20, scope: !1177)
!1283 = !DILocation(line: 272, column: 30, scope: !1177)
!1284 = !DILocation(line: 272, column: 20, scope: !1177)
!1285 = !DILocation(line: 275, column: 17, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 275, column: 15)
!1287 = !DILocation(line: 275, column: 15, scope: !1177)
!1288 = !DILocation(line: 276, column: 13, scope: !1286)
!1289 = !DILocation(line: 278, column: 21, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 278, column: 15)
!1291 = !DILocation(line: 279, column: 15, scope: !1290)
!1292 = !DILocation(line: 280, column: 42, scope: !1290)
!1293 = !DILocation(line: 280, column: 40, scope: !1290)
!1294 = !DILocation(line: 279, column: 26, scope: !1290)
!1295 = !DILocation(line: 273, column: 20, scope: !1177)
!1296 = !DILocation(line: 278, column: 15, scope: !1177)
!1297 = !DILocation(line: 282, column: 27, scope: !1290)
!1298 = !DILocation(line: 285, column: 15, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 284, column: 13)
!1300 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 283, column: 20)
!1301 = !DILocation(line: 290, column: 29, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 289, column: 13)
!1303 = !DILocation(line: 290, column: 45, scope: !1302)
!1304 = !{!1305, !804, i64 8}
!1305 = !{!"re_registers", !921, i64 0, !804, i64 8, !804, i64 16}
!1306 = !DILocation(line: 290, column: 40, scope: !1302)
!1307 = !DILocation(line: 290, column: 38, scope: !1302)
!1308 = !DILocation(line: 291, column: 35, scope: !1302)
!1309 = !{!1305, !804, i64 16}
!1310 = !DILocation(line: 291, column: 30, scope: !1302)
!1311 = !DILocation(line: 291, column: 42, scope: !1302)
!1312 = !DILocation(line: 291, column: 28, scope: !1302)
!1313 = !DILocation(line: 297, column: 18, scope: !1277)
!1314 = !DILocation(line: 297, column: 33, scope: !1277)
!1315 = !DILocation(line: 298, column: 18, scope: !1277)
!1316 = !DILocation(line: 298, column: 36, scope: !1277)
!1317 = !DILocation(line: 298, column: 40, scope: !1277)
!1318 = !DILocation(line: 297, column: 11, scope: !1277)
!1319 = distinct !{!1319, !1318, !1320}
!1320 = !DILocation(line: 300, column: 31, scope: !1277)
!1321 = !DILocation(line: 305, column: 25, scope: !1187)
!1322 = !DILocation(line: 305, column: 23, scope: !1187)
!1323 = !DILocation(line: 305, column: 11, scope: !1179)
!1324 = !DILocation(line: 307, column: 24, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 307, column: 15)
!1326 = !DILocation(line: 307, column: 15, scope: !1186)
!1327 = !DILocation(line: 310, column: 15, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 308, column: 13)
!1329 = !DILocation(line: 311, column: 15, scope: !1328)
!1330 = !DILocation(line: 314, column: 40, scope: !1186)
!1331 = !DILocation(line: 315, column: 35, scope: !1185)
!1332 = !DILocation(line: 315, column: 33, scope: !1185)
!1333 = !DILocation(line: 315, column: 15, scope: !1186)
!1334 = !DILocation(line: 322, column: 31, scope: !1184)
!1335 = !DILocation(line: 322, column: 22, scope: !1184)
!1336 = !DILocation(line: 323, column: 42, scope: !1184)
!1337 = !DILocation(line: 323, column: 22, scope: !1184)
!1338 = !DILocation(line: 325, column: 25, scope: !1184)
!1339 = !DILocation(line: 326, column: 41, scope: !1184)
!1340 = !DILocation(line: 326, column: 45, scope: !1184)
!1341 = !DILocation(line: 326, column: 63, scope: !1184)
!1342 = !DILocation(line: 326, column: 29, scope: !1184)
!1343 = !DILocation(line: 327, column: 33, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 327, column: 19)
!1345 = !DILocation(line: 327, column: 19, scope: !1184)
!1346 = !DILocation(line: 328, column: 17, scope: !1344)
!1347 = !DILocation(line: 329, column: 46, scope: !1184)
!1348 = !DILocation(line: 329, column: 27, scope: !1184)
!1349 = !DILocation(line: 321, column: 21, scope: !1184)
!1350 = !DILocation(line: 330, column: 25, scope: !1184)
!1351 = !DILocation(line: 331, column: 24, scope: !1184)
!1352 = !DILocation(line: 335, column: 27, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 335, column: 15)
!1354 = !DILocation(line: 332, column: 13, scope: !1184)
!1355 = !DILocation(line: 335, column: 24, scope: !1353)
!1356 = !DILocation(line: 335, column: 15, scope: !1186)
!1357 = !DILocation(line: 336, column: 22, scope: !1353)
!1358 = !DILocation(line: 336, column: 13, scope: !1353)
!1359 = !DILocation(line: 339, column: 25, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 338, column: 13)
!1361 = !DILocation(line: 342, column: 15, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 342, column: 15)
!1363 = !DILocation(line: 342, column: 52, scope: !1362)
!1364 = !DILocation(line: 342, column: 15, scope: !1186)
!1365 = !DILocation(line: 343, column: 23, scope: !1362)
!1366 = !DILocation(line: 343, column: 30, scope: !1362)
!1367 = !DILocation(line: 343, column: 52, scope: !1362)
!1368 = !DILocation(line: 343, column: 13, scope: !1362)
!1369 = !DILocation(line: 347, column: 20, scope: !1186)
!1370 = !DILocation(line: 347, column: 31, scope: !1186)
!1371 = !DILocation(line: 347, column: 29, scope: !1186)
!1372 = !DILocation(line: 347, column: 11, scope: !1186)
!1373 = !DILocation(line: 348, column: 43, scope: !1186)
!1374 = !DILocation(line: 350, column: 15, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 350, column: 15)
!1376 = !DILocation(line: 355, column: 15, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 355, column: 15)
!1378 = !DILocation(line: 355, column: 60, scope: !1377)
!1379 = !DILocation(line: 355, column: 57, scope: !1377)
!1380 = !DILocation(line: 355, column: 15, scope: !1186)
!1381 = distinct !{!1381, !1272, !1382}
!1382 = !DILocation(line: 385, column: 5, scope: !1157)
!1383 = !DILocation(line: 357, column: 25, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 356, column: 13)
!1385 = !DILocation(line: 357, column: 32, scope: !1384)
!1386 = !DILocation(line: 357, column: 53, scope: !1384)
!1387 = !DILocation(line: 357, column: 15, scope: !1384)
!1388 = !DILocation(line: 358, column: 15, scope: !1384)
!1389 = !DILocation(line: 364, column: 15, scope: !1193)
!1390 = !DILocation(line: 366, column: 47, scope: !1191)
!1391 = !DILocation(line: 366, column: 45, scope: !1191)
!1392 = !DILocation(line: 366, column: 21, scope: !1191)
!1393 = !DILocation(line: 370, column: 20, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 370, column: 19)
!1395 = !DILocation(line: 370, column: 44, scope: !1394)
!1396 = !DILocation(line: 370, column: 31, scope: !1394)
!1397 = !DILocation(line: 371, column: 17, scope: !1394)
!1398 = !DILocation(line: 377, column: 15, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 376, column: 13)
!1400 = !DILocation(line: 382, column: 15, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 382, column: 15)
!1402 = !DILocation(line: 382, column: 31, scope: !1401)
!1403 = !DILocation(line: 383, column: 28, scope: !1401)
!1404 = !DILocation(line: 383, column: 25, scope: !1401)
!1405 = !DILocation(line: 382, column: 15, scope: !1193)
!1406 = !DILocation(line: 386, column: 1, scope: !1157)
!1407 = !DILocation(line: 159, column: 21, scope: !213)
!1408 = !DILocation(line: 159, column: 40, scope: !213)
!1409 = !DILocation(line: 163, column: 10, scope: !213)
!1410 = !DILocation(line: 164, column: 40, scope: !213)
!1411 = !DILocation(line: 164, column: 10, scope: !213)
!1412 = !DILocation(line: 166, column: 13, scope: !1145)
!1413 = !DILocation(line: 166, column: 7, scope: !213)
!1414 = !DILocation(line: 168, column: 7, scope: !1144)
!1415 = !DILocation(line: 170, column: 7, scope: !1144)
!1416 = !DILocation(line: 164, column: 38, scope: !213)
!1417 = !DILocation(line: 163, column: 34, scope: !213)
!1418 = !DILocation(line: 174, column: 23, scope: !213)
!1419 = !DILocation(line: 174, column: 3, scope: !213)
!1420 = !DILocation(line: 176, column: 7, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !213, file: !3, line: 175, column: 5)
!1422 = !DILocation(line: 177, column: 20, scope: !1421)
!1423 = !DILocation(line: 178, column: 13, scope: !1421)
!1424 = !DILocation(line: 179, column: 7, scope: !1421)
!1425 = !DILocation(line: 180, column: 23, scope: !1421)
!1426 = distinct !{!1426, !1419, !1427}
!1427 = !DILocation(line: 182, column: 5, scope: !213)
!1428 = distinct !{!1428, !1419, !1427, !1429}
!1429 = !{!"llvm.loop.unroll.disable"}
!1430 = !DILocation(line: 184, column: 3, scope: !213)
!1431 = !DILocation(line: 185, column: 19, scope: !213)
!1432 = !DILocation(line: 186, column: 1, scope: !213)
!1433 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !241, file: !241, line: 41, type: !99, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !236, variables: !1434)
!1434 = !{!1435}
!1435 = !DILocalVariable(name: "file", arg: 1, scope: !1433, file: !241, line: 41, type: !25)
!1436 = !DILocation(line: 41, column: 41, scope: !1433)
!1437 = !DILocation(line: 43, column: 13, scope: !1433)
!1438 = !DILocation(line: 44, column: 1, scope: !1433)
!1439 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !241, file: !241, line: 78, type: !1440, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !236, variables: !1442)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !44}
!1442 = !{!1443}
!1443 = !DILocalVariable(name: "ignore", arg: 1, scope: !1439, file: !241, line: 78, type: !44)
!1444 = !DILocation(line: 78, column: 37, scope: !1439)
!1445 = !DILocation(line: 80, column: 16, scope: !1439)
!1446 = !{!1447, !1447, i64 0}
!1447 = !{!"_Bool", !805, i64 0}
!1448 = !DILocation(line: 81, column: 1, scope: !1439)
!1449 = distinct !DISubprogram(name: "close_stdout", scope: !241, file: !241, line: 107, type: !812, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !236, variables: !1450)
!1450 = !{!1451}
!1451 = !DILocalVariable(name: "write_error", scope: !1452, file: !241, line: 112, type: !25)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !241, line: 111, column: 5)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !241, line: 109, column: 7)
!1454 = !DILocation(line: 109, column: 21, scope: !1453)
!1455 = !DILocation(line: 109, column: 7, scope: !1453)
!1456 = !DILocation(line: 109, column: 29, scope: !1453)
!1457 = !DILocation(line: 110, column: 7, scope: !1453)
!1458 = !DILocation(line: 110, column: 12, scope: !1453)
!1459 = !{i8 0, i8 2}
!1460 = !DILocation(line: 114, column: 19, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1452, file: !241, line: 113, column: 11)
!1462 = !DILocation(line: 110, column: 25, scope: !1453)
!1463 = !DILocation(line: 110, column: 28, scope: !1453)
!1464 = !DILocation(line: 110, column: 34, scope: !1453)
!1465 = !DILocation(line: 109, column: 7, scope: !1449)
!1466 = !DILocation(line: 112, column: 33, scope: !1452)
!1467 = !DILocation(line: 112, column: 19, scope: !1452)
!1468 = !DILocation(line: 113, column: 11, scope: !1461)
!1469 = !DILocation(line: 113, column: 11, scope: !1452)
!1470 = !DILocation(line: 114, column: 36, scope: !1461)
!1471 = !DILocation(line: 114, column: 9, scope: !1461)
!1472 = !DILocation(line: 117, column: 9, scope: !1461)
!1473 = !DILocation(line: 119, column: 14, scope: !1452)
!1474 = !DILocation(line: 119, column: 7, scope: !1452)
!1475 = !DILocation(line: 122, column: 22, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1449, file: !241, line: 122, column: 8)
!1477 = !DILocation(line: 122, column: 8, scope: !1476)
!1478 = !DILocation(line: 122, column: 30, scope: !1476)
!1479 = !DILocation(line: 122, column: 8, scope: !1449)
!1480 = !DILocation(line: 123, column: 13, scope: !1476)
!1481 = !DILocation(line: 123, column: 6, scope: !1476)
!1482 = !DILocation(line: 124, column: 1, scope: !1449)
!1483 = distinct !DISubprogram(name: "mfile_name_concat", scope: !1484, file: !1484, line: 61, type: !1485, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !711, variables: !1487)
!1484 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!20, !25, !25, !37}
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498}
!1488 = !DILocalVariable(name: "dir", arg: 1, scope: !1483, file: !1484, line: 61, type: !25)
!1489 = !DILocalVariable(name: "abase", arg: 2, scope: !1483, file: !1484, line: 61, type: !25)
!1490 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1483, file: !1484, line: 61, type: !37)
!1491 = !DILocalVariable(name: "dirbase", scope: !1483, file: !1484, line: 63, type: !25)
!1492 = !DILocalVariable(name: "dirbaselen", scope: !1483, file: !1484, line: 64, type: !27)
!1493 = !DILocalVariable(name: "dirlen", scope: !1483, file: !1484, line: 65, type: !27)
!1494 = !DILocalVariable(name: "needs_separator", scope: !1483, file: !1484, line: 66, type: !27)
!1495 = !DILocalVariable(name: "base", scope: !1483, file: !1484, line: 68, type: !25)
!1496 = !DILocalVariable(name: "baselen", scope: !1483, file: !1484, line: 69, type: !27)
!1497 = !DILocalVariable(name: "p_concat", scope: !1483, file: !1484, line: 71, type: !20)
!1498 = !DILocalVariable(name: "p", scope: !1483, file: !1484, line: 72, type: !20)
!1499 = !DILocation(line: 61, column: 32, scope: !1483)
!1500 = !DILocation(line: 61, column: 49, scope: !1483)
!1501 = !DILocation(line: 61, column: 63, scope: !1483)
!1502 = !DILocation(line: 63, column: 25, scope: !1483)
!1503 = !DILocation(line: 63, column: 15, scope: !1483)
!1504 = !DILocation(line: 64, column: 23, scope: !1483)
!1505 = !DILocation(line: 64, column: 10, scope: !1483)
!1506 = !DILocation(line: 65, column: 27, scope: !1483)
!1507 = !DILocation(line: 65, column: 33, scope: !1483)
!1508 = !DILocation(line: 65, column: 10, scope: !1483)
!1509 = !DILocation(line: 66, column: 29, scope: !1483)
!1510 = !DILocation(line: 66, column: 40, scope: !1483)
!1511 = !DILocation(line: 66, column: 45, scope: !1483)
!1512 = !DILocation(line: 66, column: 10, scope: !1483)
!1513 = !DILocalVariable(name: "f", arg: 1, scope: !1514, file: !1484, line: 38, type: !25)
!1514 = distinct !DISubprogram(name: "longest_relative_suffix", scope: !1484, file: !1484, line: 38, type: !1515, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !711, variables: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!25, !25}
!1517 = !{!1513}
!1518 = !DILocation(line: 38, column: 38, scope: !1514, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 68, column: 22, scope: !1483)
!1520 = !DILocation(line: 40, column: 8, scope: !1521, inlinedAt: !1519)
!1521 = distinct !DILexicalBlock(scope: !1514, file: !1484, line: 40, column: 3)
!1522 = !DILocation(line: 40, column: 41, scope: !1523, inlinedAt: !1519)
!1523 = distinct !DILexicalBlock(scope: !1521, file: !1484, line: 40, column: 3)
!1524 = !DILocation(line: 40, column: 56, scope: !1523, inlinedAt: !1519)
!1525 = !DILocation(line: 40, column: 3, scope: !1521, inlinedAt: !1519)
!1526 = distinct !{!1526, !1527, !1528}
!1527 = !DILocation(line: 40, column: 3, scope: !1521)
!1528 = !DILocation(line: 41, column: 5, scope: !1521)
!1529 = !DILocation(line: 68, column: 15, scope: !1483)
!1530 = !DILocation(line: 69, column: 20, scope: !1483)
!1531 = !DILocation(line: 69, column: 10, scope: !1483)
!1532 = !DILocation(line: 71, column: 35, scope: !1483)
!1533 = !DILocation(line: 71, column: 53, scope: !1483)
!1534 = !DILocation(line: 71, column: 63, scope: !1483)
!1535 = !DILocation(line: 71, column: 20, scope: !1483)
!1536 = !DILocation(line: 71, column: 9, scope: !1483)
!1537 = !DILocation(line: 74, column: 16, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1483, file: !1484, line: 74, column: 7)
!1539 = !DILocation(line: 74, column: 7, scope: !1483)
!1540 = !DILocalVariable(name: "__dest", arg: 1, scope: !1541, file: !1542, line: 45, type: !1545)
!1541 = distinct !DISubprogram(name: "mempcpy", scope: !1542, file: !1542, line: 45, type: !1543, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !711, variables: !1549)
!1542 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!22, !1545, !1546, !27}
!1545 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!1546 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1547)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1549 = !{!1540, !1550, !1551}
!1550 = !DILocalVariable(name: "__src", arg: 2, scope: !1541, file: !1542, line: 45, type: !1546)
!1551 = !DILocalVariable(name: "__len", arg: 3, scope: !1541, file: !1542, line: 45, type: !27)
!1552 = !DILocation(line: 45, column: 1, scope: !1541, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 77, column: 7, scope: !1483)
!1554 = !DILocation(line: 48, column: 57, scope: !1541, inlinedAt: !1553)
!1555 = !DILocation(line: 48, column: 10, scope: !1541, inlinedAt: !1553)
!1556 = !DILocation(line: 72, column: 9, scope: !1483)
!1557 = !DILocation(line: 78, column: 6, scope: !1483)
!1558 = !DILocation(line: 79, column: 5, scope: !1483)
!1559 = !DILocation(line: 81, column: 7, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1483, file: !1484, line: 81, column: 7)
!1561 = !DILocation(line: 81, column: 7, scope: !1483)
!1562 = !DILocation(line: 82, column: 27, scope: !1560)
!1563 = !DILocation(line: 82, column: 25, scope: !1560)
!1564 = !DILocation(line: 82, column: 21, scope: !1560)
!1565 = !DILocation(line: 82, column: 5, scope: !1560)
!1566 = !DILocation(line: 45, column: 1, scope: !1541, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 84, column: 7, scope: !1483)
!1568 = !DILocation(line: 48, column: 57, scope: !1541, inlinedAt: !1567)
!1569 = !DILocation(line: 48, column: 10, scope: !1541, inlinedAt: !1567)
!1570 = !DILocation(line: 85, column: 6, scope: !1483)
!1571 = !DILocation(line: 87, column: 3, scope: !1483)
!1572 = !DILocation(line: 88, column: 1, scope: !1483)
!1573 = distinct !DISubprogram(name: "set_program_name", scope: !255, file: !255, line: 39, type: !99, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !251, variables: !1574)
!1574 = !{!1575, !1576, !1577}
!1575 = !DILocalVariable(name: "argv0", arg: 1, scope: !1573, file: !255, line: 39, type: !25)
!1576 = !DILocalVariable(name: "slash", scope: !1573, file: !255, line: 46, type: !25)
!1577 = !DILocalVariable(name: "base", scope: !1573, file: !255, line: 47, type: !25)
!1578 = !DILocation(line: 39, column: 31, scope: !1573)
!1579 = !DILocation(line: 51, column: 13, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1573, file: !255, line: 51, column: 7)
!1581 = !DILocation(line: 51, column: 7, scope: !1573)
!1582 = !DILocation(line: 55, column: 14, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !255, line: 52, column: 5)
!1584 = !DILocation(line: 54, column: 7, scope: !1583)
!1585 = !DILocation(line: 56, column: 7, scope: !1583)
!1586 = !DILocation(line: 59, column: 11, scope: !1573)
!1587 = !DILocation(line: 46, column: 15, scope: !1573)
!1588 = !DILocation(line: 60, column: 17, scope: !1573)
!1589 = !DILocation(line: 60, column: 33, scope: !1573)
!1590 = !DILocation(line: 60, column: 11, scope: !1573)
!1591 = !DILocation(line: 47, column: 15, scope: !1573)
!1592 = !DILocation(line: 61, column: 12, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1573, file: !255, line: 61, column: 7)
!1594 = !DILocation(line: 61, column: 20, scope: !1593)
!1595 = !DILocation(line: 61, column: 25, scope: !1593)
!1596 = !DILocation(line: 61, column: 42, scope: !1593)
!1597 = !DILocation(line: 61, column: 28, scope: !1593)
!1598 = !DILocation(line: 61, column: 61, scope: !1593)
!1599 = !DILocation(line: 61, column: 7, scope: !1573)
!1600 = !DILocation(line: 64, column: 11, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !255, line: 64, column: 11)
!1602 = distinct !DILexicalBlock(scope: !1593, file: !255, line: 62, column: 5)
!1603 = !DILocation(line: 64, column: 36, scope: !1601)
!1604 = !DILocation(line: 64, column: 11, scope: !1602)
!1605 = !DILocation(line: 66, column: 24, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1601, file: !255, line: 65, column: 9)
!1607 = !DILocation(line: 70, column: 41, scope: !1606)
!1608 = !DILocation(line: 72, column: 9, scope: !1606)
!1609 = !DILocation(line: 84, column: 16, scope: !1573)
!1610 = !DILocation(line: 90, column: 27, scope: !1573)
!1611 = !DILocation(line: 92, column: 1, scope: !1573)
!1612 = distinct !DISubprogram(name: "clone_quoting_options", scope: !285, file: !285, line: 114, type: !1613, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !1616)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!1615, !1615}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!1616 = !{!1617, !1618, !1619}
!1617 = !DILocalVariable(name: "o", arg: 1, scope: !1612, file: !285, line: 114, type: !1615)
!1618 = !DILocalVariable(name: "e", scope: !1612, file: !285, line: 116, type: !36)
!1619 = !DILocalVariable(name: "p", scope: !1612, file: !285, line: 117, type: !1615)
!1620 = !DILocation(line: 114, column: 48, scope: !1612)
!1621 = !DILocation(line: 116, column: 11, scope: !1612)
!1622 = !DILocation(line: 116, column: 7, scope: !1612)
!1623 = !DILocation(line: 117, column: 40, scope: !1612)
!1624 = !DILocation(line: 117, column: 31, scope: !1612)
!1625 = !DILocation(line: 117, column: 27, scope: !1612)
!1626 = !DILocation(line: 119, column: 9, scope: !1612)
!1627 = !DILocation(line: 120, column: 3, scope: !1612)
!1628 = distinct !DISubprogram(name: "get_quoting_style", scope: !285, file: !285, line: 125, type: !1629, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !1633)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!5, !1631}
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!1633 = !{!1634}
!1634 = !DILocalVariable(name: "o", arg: 1, scope: !1628, file: !285, line: 125, type: !1631)
!1635 = !DILocation(line: 125, column: 50, scope: !1628)
!1636 = !DILocation(line: 127, column: 11, scope: !1628)
!1637 = !DILocation(line: 127, column: 46, scope: !1628)
!1638 = !{!1639, !805, i64 0}
!1639 = !{!"quoting_options", !805, i64 0, !921, i64 4, !805, i64 8, !804, i64 40, !804, i64 48}
!1640 = !DILocation(line: 127, column: 3, scope: !1628)
!1641 = distinct !DISubprogram(name: "set_quoting_style", scope: !285, file: !285, line: 133, type: !1642, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !1644)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !1615, !5}
!1644 = !{!1645, !1646}
!1645 = !DILocalVariable(name: "o", arg: 1, scope: !1641, file: !285, line: 133, type: !1615)
!1646 = !DILocalVariable(name: "s", arg: 2, scope: !1641, file: !285, line: 133, type: !5)
!1647 = !DILocation(line: 133, column: 44, scope: !1641)
!1648 = !DILocation(line: 133, column: 66, scope: !1641)
!1649 = !DILocation(line: 135, column: 4, scope: !1641)
!1650 = !DILocation(line: 135, column: 39, scope: !1641)
!1651 = !DILocation(line: 135, column: 45, scope: !1641)
!1652 = !DILocation(line: 136, column: 1, scope: !1641)
!1653 = distinct !DISubprogram(name: "set_char_quoting", scope: !285, file: !285, line: 144, type: !1654, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !1656)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!36, !1615, !21, !36}
!1656 = !{!1657, !1658, !1659, !1660, !1661, !1663, !1664}
!1657 = !DILocalVariable(name: "o", arg: 1, scope: !1653, file: !285, line: 144, type: !1615)
!1658 = !DILocalVariable(name: "c", arg: 2, scope: !1653, file: !285, line: 144, type: !21)
!1659 = !DILocalVariable(name: "i", arg: 3, scope: !1653, file: !285, line: 144, type: !36)
!1660 = !DILocalVariable(name: "uc", scope: !1653, file: !285, line: 146, type: !80)
!1661 = !DILocalVariable(name: "p", scope: !1653, file: !285, line: 147, type: !1662)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!1663 = !DILocalVariable(name: "shift", scope: !1653, file: !285, line: 149, type: !36)
!1664 = !DILocalVariable(name: "r", scope: !1653, file: !285, line: 150, type: !36)
!1665 = !DILocation(line: 144, column: 43, scope: !1653)
!1666 = !DILocation(line: 144, column: 51, scope: !1653)
!1667 = !DILocation(line: 144, column: 58, scope: !1653)
!1668 = !DILocation(line: 146, column: 17, scope: !1653)
!1669 = !DILocation(line: 148, column: 6, scope: !1653)
!1670 = !DILocation(line: 148, column: 62, scope: !1653)
!1671 = !DILocation(line: 148, column: 57, scope: !1653)
!1672 = !DILocation(line: 147, column: 17, scope: !1653)
!1673 = !DILocation(line: 149, column: 18, scope: !1653)
!1674 = !DILocation(line: 149, column: 15, scope: !1653)
!1675 = !DILocation(line: 149, column: 7, scope: !1653)
!1676 = !DILocation(line: 150, column: 12, scope: !1653)
!1677 = !DILocation(line: 150, column: 15, scope: !1653)
!1678 = !DILocation(line: 150, column: 25, scope: !1653)
!1679 = !DILocation(line: 150, column: 7, scope: !1653)
!1680 = !DILocation(line: 151, column: 13, scope: !1653)
!1681 = !DILocation(line: 151, column: 18, scope: !1653)
!1682 = !DILocation(line: 151, column: 23, scope: !1653)
!1683 = !DILocation(line: 151, column: 6, scope: !1653)
!1684 = !DILocation(line: 152, column: 3, scope: !1653)
!1685 = distinct !DISubprogram(name: "set_quoting_flags", scope: !285, file: !285, line: 160, type: !1686, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !1688)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!36, !1615, !36}
!1688 = !{!1689, !1690, !1691}
!1689 = !DILocalVariable(name: "o", arg: 1, scope: !1685, file: !285, line: 160, type: !1615)
!1690 = !DILocalVariable(name: "i", arg: 2, scope: !1685, file: !285, line: 160, type: !36)
!1691 = !DILocalVariable(name: "r", scope: !1685, file: !285, line: 162, type: !36)
!1692 = !DILocation(line: 160, column: 44, scope: !1685)
!1693 = !DILocation(line: 160, column: 51, scope: !1685)
!1694 = !DILocation(line: 163, column: 8, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1685, file: !285, line: 163, column: 7)
!1696 = !DILocation(line: 163, column: 7, scope: !1685)
!1697 = !DILocation(line: 165, column: 10, scope: !1685)
!1698 = !{!1639, !921, i64 4}
!1699 = !DILocation(line: 162, column: 7, scope: !1685)
!1700 = !DILocation(line: 166, column: 12, scope: !1685)
!1701 = !DILocation(line: 167, column: 3, scope: !1685)
!1702 = distinct !DISubprogram(name: "set_custom_quoting", scope: !285, file: !285, line: 171, type: !1703, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !1705)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{null, !1615, !25, !25}
!1705 = !{!1706, !1707, !1708}
!1706 = !DILocalVariable(name: "o", arg: 1, scope: !1702, file: !285, line: 171, type: !1615)
!1707 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1702, file: !285, line: 172, type: !25)
!1708 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1702, file: !285, line: 172, type: !25)
!1709 = !DILocation(line: 171, column: 45, scope: !1702)
!1710 = !DILocation(line: 172, column: 33, scope: !1702)
!1711 = !DILocation(line: 172, column: 57, scope: !1702)
!1712 = !DILocation(line: 174, column: 8, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1702, file: !285, line: 174, column: 7)
!1714 = !DILocation(line: 174, column: 7, scope: !1702)
!1715 = !DILocation(line: 176, column: 6, scope: !1702)
!1716 = !DILocation(line: 176, column: 12, scope: !1702)
!1717 = !DILocation(line: 177, column: 8, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1702, file: !285, line: 177, column: 7)
!1719 = !DILocation(line: 177, column: 23, scope: !1718)
!1720 = !DILocation(line: 177, column: 19, scope: !1718)
!1721 = !DILocation(line: 178, column: 5, scope: !1718)
!1722 = !DILocation(line: 179, column: 6, scope: !1702)
!1723 = !DILocation(line: 179, column: 17, scope: !1702)
!1724 = !{!1639, !804, i64 40}
!1725 = !DILocation(line: 180, column: 6, scope: !1702)
!1726 = !DILocation(line: 180, column: 18, scope: !1702)
!1727 = !{!1639, !804, i64 48}
!1728 = !DILocation(line: 181, column: 1, scope: !1702)
!1729 = distinct !DISubprogram(name: "quotearg_buffer", scope: !285, file: !285, line: 776, type: !1730, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !1732)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!27, !20, !27, !25, !27, !1631}
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740}
!1733 = !DILocalVariable(name: "buffer", arg: 1, scope: !1729, file: !285, line: 776, type: !20)
!1734 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1729, file: !285, line: 776, type: !27)
!1735 = !DILocalVariable(name: "arg", arg: 3, scope: !1729, file: !285, line: 777, type: !25)
!1736 = !DILocalVariable(name: "argsize", arg: 4, scope: !1729, file: !285, line: 777, type: !27)
!1737 = !DILocalVariable(name: "o", arg: 5, scope: !1729, file: !285, line: 778, type: !1631)
!1738 = !DILocalVariable(name: "p", scope: !1729, file: !285, line: 780, type: !1631)
!1739 = !DILocalVariable(name: "e", scope: !1729, file: !285, line: 781, type: !36)
!1740 = !DILocalVariable(name: "r", scope: !1729, file: !285, line: 782, type: !27)
!1741 = !DILocation(line: 776, column: 24, scope: !1729)
!1742 = !DILocation(line: 776, column: 39, scope: !1729)
!1743 = !DILocation(line: 777, column: 30, scope: !1729)
!1744 = !DILocation(line: 777, column: 42, scope: !1729)
!1745 = !DILocation(line: 778, column: 48, scope: !1729)
!1746 = !DILocation(line: 780, column: 37, scope: !1729)
!1747 = !DILocation(line: 780, column: 33, scope: !1729)
!1748 = !DILocation(line: 781, column: 11, scope: !1729)
!1749 = !DILocation(line: 781, column: 7, scope: !1729)
!1750 = !DILocation(line: 783, column: 43, scope: !1729)
!1751 = !DILocation(line: 783, column: 53, scope: !1729)
!1752 = !DILocation(line: 783, column: 60, scope: !1729)
!1753 = !DILocation(line: 784, column: 43, scope: !1729)
!1754 = !DILocation(line: 784, column: 58, scope: !1729)
!1755 = !DILocation(line: 782, column: 14, scope: !1729)
!1756 = !DILocation(line: 782, column: 10, scope: !1729)
!1757 = !DILocation(line: 785, column: 9, scope: !1729)
!1758 = !DILocation(line: 786, column: 3, scope: !1729)
!1759 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !285, file: !285, line: 248, type: !1760, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !1764)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!27, !20, !27, !25, !27, !5, !36, !1762, !25, !25}
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!1764 = !{!1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1789, !1790, !1791, !1792, !1793, !1796, !1797, !1815, !1818, !1819, !1826}
!1765 = !DILocalVariable(name: "buffer", arg: 1, scope: !1759, file: !285, line: 248, type: !20)
!1766 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1759, file: !285, line: 248, type: !27)
!1767 = !DILocalVariable(name: "arg", arg: 3, scope: !1759, file: !285, line: 249, type: !25)
!1768 = !DILocalVariable(name: "argsize", arg: 4, scope: !1759, file: !285, line: 249, type: !27)
!1769 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1759, file: !285, line: 250, type: !5)
!1770 = !DILocalVariable(name: "flags", arg: 6, scope: !1759, file: !285, line: 250, type: !36)
!1771 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1759, file: !285, line: 251, type: !1762)
!1772 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1759, file: !285, line: 252, type: !25)
!1773 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1759, file: !285, line: 253, type: !25)
!1774 = !DILocalVariable(name: "i", scope: !1759, file: !285, line: 255, type: !27)
!1775 = !DILocalVariable(name: "len", scope: !1759, file: !285, line: 256, type: !27)
!1776 = !DILocalVariable(name: "orig_buffersize", scope: !1759, file: !285, line: 257, type: !27)
!1777 = !DILocalVariable(name: "quote_string", scope: !1759, file: !285, line: 258, type: !25)
!1778 = !DILocalVariable(name: "quote_string_len", scope: !1759, file: !285, line: 259, type: !27)
!1779 = !DILocalVariable(name: "backslash_escapes", scope: !1759, file: !285, line: 260, type: !44)
!1780 = !DILocalVariable(name: "unibyte_locale", scope: !1759, file: !285, line: 261, type: !44)
!1781 = !DILocalVariable(name: "elide_outer_quotes", scope: !1759, file: !285, line: 262, type: !44)
!1782 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1759, file: !285, line: 263, type: !44)
!1783 = !DILocalVariable(name: "encountered_single_quote", scope: !1759, file: !285, line: 264, type: !44)
!1784 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1759, file: !285, line: 265, type: !44)
!1785 = !DILocalVariable(name: "c", scope: !1786, file: !285, line: 394, type: !80)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !285, line: 393, column: 5)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !285, line: 392, column: 3)
!1788 = distinct !DILexicalBlock(scope: !1759, file: !285, line: 392, column: 3)
!1789 = !DILocalVariable(name: "esc", scope: !1786, file: !285, line: 395, type: !80)
!1790 = !DILocalVariable(name: "is_right_quote", scope: !1786, file: !285, line: 396, type: !44)
!1791 = !DILocalVariable(name: "escaping", scope: !1786, file: !285, line: 397, type: !44)
!1792 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1786, file: !285, line: 398, type: !44)
!1793 = !DILocalVariable(name: "m", scope: !1794, file: !285, line: 602, type: !27)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !285, line: 600, column: 11)
!1795 = distinct !DILexicalBlock(scope: !1786, file: !285, line: 418, column: 9)
!1796 = !DILocalVariable(name: "printable", scope: !1794, file: !285, line: 604, type: !44)
!1797 = !DILocalVariable(name: "mbstate", scope: !1798, file: !285, line: 613, type: !1800)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !285, line: 612, column: 15)
!1799 = distinct !DILexicalBlock(scope: !1794, file: !285, line: 606, column: 17)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1801, line: 6, baseType: !1802)
!1801 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1803, line: 21, baseType: !1804)
!1803 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1803, line: 13, size: 64, elements: !1805)
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1804, file: !1803, line: 15, baseType: !36, size: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1804, file: !1803, line: 20, baseType: !1808, size: 32, offset: 32)
!1808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1804, file: !1803, line: 16, size: 32, elements: !1809)
!1809 = !{!1810, !1811}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1808, file: !1803, line: 18, baseType: !83, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1808, file: !1803, line: 19, baseType: !1812, size: 32)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !1813)
!1813 = !{!1814}
!1814 = !DISubrange(count: 4)
!1815 = !DILocalVariable(name: "w", scope: !1816, file: !285, line: 623, type: !1817)
!1816 = distinct !DILexicalBlock(scope: !1798, file: !285, line: 622, column: 19)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !28, line: 90, baseType: !36)
!1818 = !DILocalVariable(name: "bytes", scope: !1816, file: !285, line: 624, type: !27)
!1819 = !DILocalVariable(name: "j", scope: !1820, file: !285, line: 649, type: !27)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !285, line: 648, column: 27)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !285, line: 646, column: 29)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !285, line: 641, column: 23)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !285, line: 633, column: 30)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !285, line: 628, column: 30)
!1825 = distinct !DILexicalBlock(scope: !1816, file: !285, line: 626, column: 25)
!1826 = !DILocalVariable(name: "ilim", scope: !1827, file: !285, line: 676, type: !27)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !285, line: 673, column: 15)
!1828 = distinct !DILexicalBlock(scope: !1794, file: !285, line: 672, column: 17)
!1829 = !DILocation(line: 248, column: 33, scope: !1759)
!1830 = !DILocation(line: 248, column: 48, scope: !1759)
!1831 = !DILocation(line: 249, column: 39, scope: !1759)
!1832 = !DILocation(line: 249, column: 51, scope: !1759)
!1833 = !DILocation(line: 250, column: 46, scope: !1759)
!1834 = !DILocation(line: 250, column: 65, scope: !1759)
!1835 = !DILocation(line: 251, column: 47, scope: !1759)
!1836 = !DILocation(line: 252, column: 39, scope: !1759)
!1837 = !DILocation(line: 253, column: 39, scope: !1759)
!1838 = !DILocation(line: 256, column: 10, scope: !1759)
!1839 = !DILocation(line: 257, column: 10, scope: !1759)
!1840 = !DILocation(line: 258, column: 15, scope: !1759)
!1841 = !DILocation(line: 259, column: 10, scope: !1759)
!1842 = !DILocation(line: 260, column: 8, scope: !1759)
!1843 = !DILocation(line: 261, column: 25, scope: !1759)
!1844 = !DILocation(line: 261, column: 36, scope: !1759)
!1845 = !DILocation(line: 262, column: 8, scope: !1759)
!1846 = !DILocation(line: 263, column: 8, scope: !1759)
!1847 = !DILocation(line: 264, column: 8, scope: !1759)
!1848 = !DILocation(line: 265, column: 8, scope: !1759)
!1849 = !DILocation(line: 265, column: 3, scope: !1759)
!1850 = !DILocation(line: 308, column: 3, scope: !1759)
!1851 = !DILocation(line: 315, column: 11, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1759, file: !285, line: 309, column: 5)
!1853 = !DILocation(line: 315, column: 12, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1852, file: !285, line: 315, column: 11)
!1855 = !DILocation(line: 316, column: 9, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !285, line: 316, column: 9)
!1857 = distinct !DILexicalBlock(scope: !1854, file: !285, line: 316, column: 9)
!1858 = !DILocation(line: 316, column: 9, scope: !1857)
!1859 = !DILocation(line: 354, column: 26, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !285, line: 332, column: 11)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !285, line: 331, column: 13)
!1862 = distinct !DILexicalBlock(scope: !1852, file: !285, line: 330, column: 7)
!1863 = !DILocation(line: 355, column: 27, scope: !1860)
!1864 = !DILocation(line: 356, column: 11, scope: !1860)
!1865 = !DILocation(line: 357, column: 14, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1862, file: !285, line: 357, column: 13)
!1867 = !DILocation(line: 357, column: 13, scope: !1862)
!1868 = !DILocation(line: 358, column: 43, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !285, line: 358, column: 11)
!1870 = distinct !DILexicalBlock(scope: !1866, file: !285, line: 358, column: 11)
!1871 = !DILocation(line: 358, column: 11, scope: !1870)
!1872 = !DILocation(line: 359, column: 13, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !285, line: 359, column: 13)
!1874 = distinct !DILexicalBlock(scope: !1869, file: !285, line: 359, column: 13)
!1875 = !DILocation(line: 359, column: 13, scope: !1874)
!1876 = !DILocation(line: 358, column: 70, scope: !1869)
!1877 = distinct !{!1877, !1871, !1878}
!1878 = !DILocation(line: 359, column: 13, scope: !1870)
!1879 = !DILocation(line: 362, column: 28, scope: !1862)
!1880 = !DILocation(line: 364, column: 7, scope: !1852)
!1881 = !DILocation(line: 367, column: 7, scope: !1852)
!1882 = !DILocation(line: 370, column: 7, scope: !1852)
!1883 = !DILocation(line: 373, column: 12, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1852, file: !285, line: 373, column: 11)
!1885 = !DILocation(line: 373, column: 11, scope: !1852)
!1886 = !DILocation(line: 378, column: 12, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1852, file: !285, line: 378, column: 11)
!1888 = !DILocation(line: 378, column: 11, scope: !1852)
!1889 = !DILocation(line: 379, column: 9, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !285, line: 379, column: 9)
!1891 = distinct !DILexicalBlock(scope: !1887, file: !285, line: 379, column: 9)
!1892 = !DILocation(line: 379, column: 9, scope: !1891)
!1893 = !DILocation(line: 386, column: 7, scope: !1852)
!1894 = !DILocation(line: 389, column: 7, scope: !1852)
!1895 = !DILocation(line: 255, column: 10, scope: !1759)
!1896 = !DILocation(line: 392, column: 8, scope: !1788)
!1897 = !DILocation(line: 392, column: 27, scope: !1787)
!1898 = !DILocation(line: 392, column: 19, scope: !1787)
!1899 = !DILocation(line: 392, column: 60, scope: !1787)
!1900 = !DILocation(line: 392, column: 3, scope: !1788)
!1901 = !DILocation(line: 392, column: 41, scope: !1787)
!1902 = !DILocation(line: 392, column: 48, scope: !1787)
!1903 = !DILocation(line: 396, column: 12, scope: !1786)
!1904 = !DILocation(line: 397, column: 12, scope: !1786)
!1905 = !DILocation(line: 398, column: 12, scope: !1786)
!1906 = !DILocation(line: 401, column: 11, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1786, file: !285, line: 400, column: 11)
!1908 = !DILocation(line: 403, column: 17, scope: !1907)
!1909 = !DILocation(line: 404, column: 39, scope: !1907)
!1910 = !DILocation(line: 408, column: 32, scope: !1907)
!1911 = !DILocation(line: 404, column: 19, scope: !1907)
!1912 = !DILocation(line: 404, column: 15, scope: !1907)
!1913 = !DILocation(line: 409, column: 11, scope: !1907)
!1914 = !DILocation(line: 409, column: 26, scope: !1907)
!1915 = !DILocation(line: 409, column: 14, scope: !1907)
!1916 = !DILocation(line: 409, column: 63, scope: !1907)
!1917 = !DILocation(line: 400, column: 11, scope: !1786)
!1918 = !DILocation(line: 416, column: 11, scope: !1786)
!1919 = !DILocation(line: 394, column: 21, scope: !1786)
!1920 = !DILocation(line: 417, column: 7, scope: !1786)
!1921 = !DILocation(line: 420, column: 15, scope: !1795)
!1922 = !DILocation(line: 422, column: 15, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !285, line: 422, column: 15)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !285, line: 421, column: 13)
!1925 = distinct !DILexicalBlock(scope: !1795, file: !285, line: 420, column: 15)
!1926 = !DILocation(line: 422, column: 15, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !285, line: 422, column: 15)
!1928 = !DILocation(line: 422, column: 15, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !285, line: 422, column: 15)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !285, line: 422, column: 15)
!1931 = distinct !DILexicalBlock(scope: !1927, file: !285, line: 422, column: 15)
!1932 = !DILocation(line: 422, column: 15, scope: !1930)
!1933 = !DILocation(line: 422, column: 15, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !285, line: 422, column: 15)
!1935 = distinct !DILexicalBlock(scope: !1931, file: !285, line: 422, column: 15)
!1936 = !DILocation(line: 422, column: 15, scope: !1935)
!1937 = !DILocation(line: 422, column: 15, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !285, line: 422, column: 15)
!1939 = distinct !DILexicalBlock(scope: !1931, file: !285, line: 422, column: 15)
!1940 = !DILocation(line: 422, column: 15, scope: !1939)
!1941 = !DILocation(line: 422, column: 15, scope: !1931)
!1942 = !DILocation(line: 422, column: 15, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !285, line: 422, column: 15)
!1944 = distinct !DILexicalBlock(scope: !1923, file: !285, line: 422, column: 15)
!1945 = !DILocation(line: 422, column: 15, scope: !1944)
!1946 = !DILocation(line: 430, column: 19, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1924, file: !285, line: 429, column: 19)
!1948 = !DILocation(line: 430, column: 24, scope: !1947)
!1949 = !DILocation(line: 430, column: 28, scope: !1947)
!1950 = !DILocation(line: 430, column: 38, scope: !1947)
!1951 = !DILocation(line: 430, column: 48, scope: !1947)
!1952 = !DILocation(line: 430, column: 59, scope: !1947)
!1953 = !DILocation(line: 432, column: 19, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !285, line: 432, column: 19)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !285, line: 432, column: 19)
!1956 = distinct !DILexicalBlock(scope: !1947, file: !285, line: 431, column: 17)
!1957 = !DILocation(line: 432, column: 19, scope: !1955)
!1958 = !DILocation(line: 433, column: 19, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !285, line: 433, column: 19)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !285, line: 433, column: 19)
!1961 = !DILocation(line: 433, column: 19, scope: !1960)
!1962 = !DILocation(line: 434, column: 17, scope: !1956)
!1963 = !DILocation(line: 441, column: 20, scope: !1925)
!1964 = !DILocation(line: 446, column: 11, scope: !1795)
!1965 = !DILocation(line: 449, column: 19, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1795, file: !285, line: 447, column: 13)
!1967 = !DILocation(line: 455, column: 19, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1966, file: !285, line: 454, column: 19)
!1969 = !DILocation(line: 455, column: 24, scope: !1968)
!1970 = !DILocation(line: 455, column: 28, scope: !1968)
!1971 = !DILocation(line: 455, column: 38, scope: !1968)
!1972 = !DILocation(line: 455, column: 47, scope: !1968)
!1973 = !DILocation(line: 455, column: 41, scope: !1968)
!1974 = !DILocation(line: 455, column: 52, scope: !1968)
!1975 = !DILocation(line: 454, column: 19, scope: !1966)
!1976 = !DILocation(line: 456, column: 25, scope: !1968)
!1977 = !DILocation(line: 456, column: 17, scope: !1968)
!1978 = !DILocation(line: 463, column: 25, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1968, file: !285, line: 457, column: 19)
!1980 = !DILocation(line: 467, column: 21, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !285, line: 467, column: 21)
!1982 = distinct !DILexicalBlock(scope: !1979, file: !285, line: 467, column: 21)
!1983 = !DILocation(line: 467, column: 21, scope: !1982)
!1984 = !DILocation(line: 468, column: 21, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !285, line: 468, column: 21)
!1986 = distinct !DILexicalBlock(scope: !1979, file: !285, line: 468, column: 21)
!1987 = !DILocation(line: 468, column: 21, scope: !1986)
!1988 = !DILocation(line: 469, column: 21, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !285, line: 469, column: 21)
!1990 = distinct !DILexicalBlock(scope: !1979, file: !285, line: 469, column: 21)
!1991 = !DILocation(line: 469, column: 21, scope: !1990)
!1992 = !DILocation(line: 470, column: 21, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !285, line: 470, column: 21)
!1994 = distinct !DILexicalBlock(scope: !1979, file: !285, line: 470, column: 21)
!1995 = !DILocation(line: 470, column: 21, scope: !1994)
!1996 = !DILocation(line: 471, column: 21, scope: !1979)
!1997 = !DILocation(line: 395, column: 21, scope: !1786)
!1998 = !DILocation(line: 484, column: 31, scope: !1795)
!1999 = !DILocation(line: 485, column: 31, scope: !1795)
!2000 = !DILocation(line: 487, column: 31, scope: !1795)
!2001 = !DILocation(line: 488, column: 31, scope: !1795)
!2002 = !DILocation(line: 489, column: 31, scope: !1795)
!2003 = !DILocation(line: 492, column: 15, scope: !1795)
!2004 = !DILocation(line: 494, column: 19, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !285, line: 493, column: 13)
!2006 = distinct !DILexicalBlock(scope: !1795, file: !285, line: 492, column: 15)
!2007 = !DILocation(line: 501, column: 33, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1795, file: !285, line: 501, column: 15)
!2009 = !DILocation(line: 506, column: 15, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1795, file: !285, line: 505, column: 15)
!2011 = !DILocation(line: 510, column: 15, scope: !1795)
!2012 = !DILocation(line: 518, column: 26, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1795, file: !285, line: 518, column: 15)
!2014 = !DILocation(line: 518, column: 15, scope: !1795)
!2015 = !DILocation(line: 518, column: 40, scope: !2013)
!2016 = !DILocation(line: 518, column: 47, scope: !2013)
!2017 = !DILocation(line: 522, column: 17, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1795, file: !285, line: 522, column: 15)
!2019 = !DILocation(line: 518, column: 18, scope: !2013)
!2020 = !DILocation(line: 518, column: 65, scope: !2013)
!2021 = !DILocation(line: 522, column: 15, scope: !1795)
!2022 = !DILocation(line: 526, column: 11, scope: !1795)
!2023 = !DILocation(line: 541, column: 15, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1795, file: !285, line: 540, column: 15)
!2025 = !DILocation(line: 548, column: 15, scope: !1795)
!2026 = !DILocation(line: 550, column: 19, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !285, line: 549, column: 13)
!2028 = distinct !DILexicalBlock(scope: !1795, file: !285, line: 548, column: 15)
!2029 = !DILocation(line: 553, column: 19, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2027, file: !285, line: 553, column: 19)
!2031 = !DILocation(line: 553, column: 35, scope: !2030)
!2032 = !DILocation(line: 553, column: 30, scope: !2030)
!2033 = !DILocation(line: 562, column: 15, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !285, line: 562, column: 15)
!2035 = distinct !DILexicalBlock(scope: !2027, file: !285, line: 562, column: 15)
!2036 = !DILocation(line: 562, column: 15, scope: !2035)
!2037 = !DILocation(line: 563, column: 15, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !285, line: 563, column: 15)
!2039 = distinct !DILexicalBlock(scope: !2027, file: !285, line: 563, column: 15)
!2040 = !DILocation(line: 563, column: 15, scope: !2039)
!2041 = !DILocation(line: 564, column: 15, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !285, line: 564, column: 15)
!2043 = distinct !DILexicalBlock(scope: !2027, file: !285, line: 564, column: 15)
!2044 = !DILocation(line: 564, column: 15, scope: !2043)
!2045 = !DILocation(line: 566, column: 13, scope: !2027)
!2046 = !DILocation(line: 606, column: 17, scope: !1794)
!2047 = !DILocation(line: 602, column: 20, scope: !1794)
!2048 = !DILocation(line: 609, column: 29, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !1799, file: !285, line: 607, column: 15)
!2050 = !{!2051, !2051, i64 0}
!2051 = !{!"short", !805, i64 0}
!2052 = !DILocation(line: 609, column: 27, scope: !2049)
!2053 = !DILocation(line: 604, column: 18, scope: !1794)
!2054 = !DILocation(line: 610, column: 15, scope: !2049)
!2055 = !DILocation(line: 613, column: 17, scope: !1798)
!2056 = !DILocation(line: 614, column: 17, scope: !1798)
!2057 = !DILocation(line: 618, column: 29, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1798, file: !285, line: 618, column: 21)
!2059 = !DILocation(line: 618, column: 21, scope: !1798)
!2060 = !DILocation(line: 619, column: 29, scope: !2058)
!2061 = !DILocation(line: 619, column: 19, scope: !2058)
!2062 = !DILocation(line: 621, column: 17, scope: !1798)
!2063 = distinct !{!2063, !2062, !2064}
!2064 = !DILocation(line: 667, column: 44, scope: !1798)
!2065 = !DILocation(line: 623, column: 21, scope: !1816)
!2066 = !DILocation(line: 624, column: 56, scope: !1816)
!2067 = !DILocation(line: 624, column: 50, scope: !1816)
!2068 = !DILocation(line: 625, column: 53, scope: !1816)
!2069 = !DILocation(line: 613, column: 27, scope: !1798)
!2070 = !DILocation(line: 623, column: 29, scope: !1816)
!2071 = !DILocation(line: 624, column: 36, scope: !1816)
!2072 = !DILocation(line: 624, column: 28, scope: !1816)
!2073 = !DILocation(line: 626, column: 25, scope: !1816)
!2074 = !DILocation(line: 636, column: 38, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !1823, file: !285, line: 634, column: 23)
!2076 = !DILocation(line: 636, column: 48, scope: !2075)
!2077 = !DILocation(line: 636, column: 51, scope: !2075)
!2078 = !DILocation(line: 636, column: 25, scope: !2075)
!2079 = !DILocation(line: 637, column: 28, scope: !2075)
!2080 = !DILocation(line: 636, column: 34, scope: !2075)
!2081 = distinct !{!2081, !2078, !2079}
!2082 = !DILocation(line: 650, column: 43, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !285, line: 650, column: 29)
!2084 = distinct !DILexicalBlock(scope: !1820, file: !285, line: 650, column: 29)
!2085 = !DILocation(line: 647, column: 29, scope: !1821)
!2086 = !DILocation(line: 649, column: 36, scope: !1820)
!2087 = !DILocation(line: 651, column: 49, scope: !2083)
!2088 = !DILocation(line: 651, column: 39, scope: !2083)
!2089 = !DILocation(line: 651, column: 31, scope: !2083)
!2090 = !DILocation(line: 650, column: 53, scope: !2083)
!2091 = !DILocation(line: 650, column: 29, scope: !2084)
!2092 = distinct !{!2092, !2091, !2093}
!2093 = !DILocation(line: 659, column: 33, scope: !2084)
!2094 = !DILocation(line: 666, column: 19, scope: !1798)
!2095 = !DILocation(line: 662, column: 41, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !1822, file: !285, line: 662, column: 29)
!2097 = !DILocation(line: 662, column: 31, scope: !2096)
!2098 = !DILocation(line: 662, column: 29, scope: !1822)
!2099 = !DILocation(line: 664, column: 27, scope: !1822)
!2100 = !DILocation(line: 667, column: 26, scope: !1798)
!2101 = !DILocation(line: 667, column: 24, scope: !1798)
!2102 = !DILocation(line: 666, column: 19, scope: !1816)
!2103 = !DILocation(line: 668, column: 15, scope: !1799)
!2104 = !DILocation(line: 670, column: 40, scope: !1794)
!2105 = !DILocation(line: 672, column: 19, scope: !1828)
!2106 = !DILocation(line: 672, column: 45, scope: !1828)
!2107 = !DILocation(line: 672, column: 23, scope: !1828)
!2108 = !DILocation(line: 676, column: 33, scope: !1827)
!2109 = !DILocation(line: 676, column: 24, scope: !1827)
!2110 = !DILocation(line: 678, column: 17, scope: !1827)
!2111 = !DILocation(line: 680, column: 43, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !285, line: 680, column: 25)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !285, line: 679, column: 19)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !285, line: 678, column: 17)
!2115 = distinct !DILexicalBlock(scope: !1827, file: !285, line: 678, column: 17)
!2116 = !DILocation(line: 682, column: 25, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !285, line: 682, column: 25)
!2118 = distinct !DILexicalBlock(scope: !2112, file: !285, line: 681, column: 23)
!2119 = !DILocation(line: 682, column: 25, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2117, file: !285, line: 682, column: 25)
!2121 = !DILocation(line: 682, column: 25, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !285, line: 682, column: 25)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !285, line: 682, column: 25)
!2124 = distinct !DILexicalBlock(scope: !2120, file: !285, line: 682, column: 25)
!2125 = !DILocation(line: 682, column: 25, scope: !2123)
!2126 = !DILocation(line: 682, column: 25, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !285, line: 682, column: 25)
!2128 = distinct !DILexicalBlock(scope: !2124, file: !285, line: 682, column: 25)
!2129 = !DILocation(line: 682, column: 25, scope: !2128)
!2130 = !DILocation(line: 682, column: 25, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !285, line: 682, column: 25)
!2132 = distinct !DILexicalBlock(scope: !2124, file: !285, line: 682, column: 25)
!2133 = !DILocation(line: 682, column: 25, scope: !2132)
!2134 = !DILocation(line: 682, column: 25, scope: !2124)
!2135 = !DILocation(line: 682, column: 25, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !285, line: 682, column: 25)
!2137 = distinct !DILexicalBlock(scope: !2117, file: !285, line: 682, column: 25)
!2138 = !DILocation(line: 682, column: 25, scope: !2137)
!2139 = !DILocation(line: 683, column: 25, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !285, line: 683, column: 25)
!2141 = distinct !DILexicalBlock(scope: !2118, file: !285, line: 683, column: 25)
!2142 = !DILocation(line: 683, column: 25, scope: !2141)
!2143 = !DILocation(line: 684, column: 25, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !285, line: 684, column: 25)
!2145 = distinct !DILexicalBlock(scope: !2118, file: !285, line: 684, column: 25)
!2146 = !DILocation(line: 684, column: 25, scope: !2145)
!2147 = !DILocation(line: 685, column: 38, scope: !2118)
!2148 = !DILocation(line: 685, column: 33, scope: !2118)
!2149 = !DILocation(line: 686, column: 23, scope: !2118)
!2150 = !DILocation(line: 687, column: 30, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2112, file: !285, line: 687, column: 30)
!2152 = !DILocation(line: 687, column: 30, scope: !2112)
!2153 = !DILocation(line: 689, column: 25, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !285, line: 689, column: 25)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !285, line: 689, column: 25)
!2156 = distinct !DILexicalBlock(scope: !2151, file: !285, line: 688, column: 23)
!2157 = !DILocation(line: 689, column: 25, scope: !2155)
!2158 = !DILocation(line: 691, column: 23, scope: !2156)
!2159 = !DILocation(line: 692, column: 35, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2113, file: !285, line: 692, column: 25)
!2161 = !DILocation(line: 692, column: 30, scope: !2160)
!2162 = !DILocation(line: 692, column: 25, scope: !2113)
!2163 = !DILocation(line: 694, column: 21, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !285, line: 694, column: 21)
!2165 = distinct !DILexicalBlock(scope: !2113, file: !285, line: 694, column: 21)
!2166 = !DILocation(line: 694, column: 21, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !285, line: 694, column: 21)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !285, line: 694, column: 21)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !285, line: 694, column: 21)
!2170 = !DILocation(line: 694, column: 21, scope: !2168)
!2171 = !DILocation(line: 694, column: 21, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !285, line: 694, column: 21)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !285, line: 694, column: 21)
!2174 = !DILocation(line: 694, column: 21, scope: !2173)
!2175 = !DILocation(line: 694, column: 21, scope: !2169)
!2176 = !DILocation(line: 695, column: 21, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !285, line: 695, column: 21)
!2178 = distinct !DILexicalBlock(scope: !2113, file: !285, line: 695, column: 21)
!2179 = !DILocation(line: 695, column: 21, scope: !2178)
!2180 = !DILocation(line: 696, column: 25, scope: !2113)
!2181 = !DILocation(line: 678, column: 17, scope: !2114)
!2182 = distinct !{!2182, !2183, !2184}
!2183 = !DILocation(line: 678, column: 17, scope: !2115)
!2184 = !DILocation(line: 697, column: 19, scope: !2115)
!2185 = !DILocation(line: 704, column: 34, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !1786, file: !285, line: 704, column: 11)
!2187 = !DILocation(line: 706, column: 14, scope: !2186)
!2188 = !DILocation(line: 707, column: 14, scope: !2186)
!2189 = !DILocation(line: 707, column: 35, scope: !2186)
!2190 = !DILocation(line: 707, column: 17, scope: !2186)
!2191 = !DILocation(line: 707, column: 53, scope: !2186)
!2192 = !DILocation(line: 707, column: 47, scope: !2186)
!2193 = !DILocation(line: 707, column: 65, scope: !2186)
!2194 = !DILocation(line: 708, column: 15, scope: !2186)
!2195 = !DILocation(line: 708, column: 11, scope: !2186)
!2196 = !DILocation(line: 704, column: 11, scope: !1786)
!2197 = !DILocation(line: 712, column: 7, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !1786, file: !285, line: 712, column: 7)
!2199 = !DILocation(line: 712, column: 7, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2198, file: !285, line: 712, column: 7)
!2201 = !DILocation(line: 712, column: 7, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !285, line: 712, column: 7)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !285, line: 712, column: 7)
!2204 = distinct !DILexicalBlock(scope: !2200, file: !285, line: 712, column: 7)
!2205 = !DILocation(line: 712, column: 7, scope: !2203)
!2206 = !DILocation(line: 712, column: 7, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !285, line: 712, column: 7)
!2208 = distinct !DILexicalBlock(scope: !2204, file: !285, line: 712, column: 7)
!2209 = !DILocation(line: 712, column: 7, scope: !2208)
!2210 = !DILocation(line: 712, column: 7, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !285, line: 712, column: 7)
!2212 = distinct !DILexicalBlock(scope: !2204, file: !285, line: 712, column: 7)
!2213 = !DILocation(line: 712, column: 7, scope: !2212)
!2214 = !DILocation(line: 712, column: 7, scope: !2204)
!2215 = !DILocation(line: 712, column: 7, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !285, line: 712, column: 7)
!2217 = distinct !DILexicalBlock(scope: !2198, file: !285, line: 712, column: 7)
!2218 = !DILocation(line: 712, column: 7, scope: !2217)
!2219 = !DILocation(line: 715, column: 7, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !285, line: 715, column: 7)
!2221 = distinct !DILexicalBlock(scope: !1786, file: !285, line: 715, column: 7)
!2222 = !DILocation(line: 715, column: 7, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !285, line: 715, column: 7)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !285, line: 715, column: 7)
!2225 = distinct !DILexicalBlock(scope: !2220, file: !285, line: 715, column: 7)
!2226 = !DILocation(line: 715, column: 7, scope: !2224)
!2227 = !DILocation(line: 715, column: 7, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !285, line: 715, column: 7)
!2229 = distinct !DILexicalBlock(scope: !2225, file: !285, line: 715, column: 7)
!2230 = !DILocation(line: 715, column: 7, scope: !2229)
!2231 = !DILocation(line: 715, column: 7, scope: !2225)
!2232 = !DILocation(line: 716, column: 7, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !285, line: 716, column: 7)
!2234 = distinct !DILexicalBlock(scope: !1786, file: !285, line: 716, column: 7)
!2235 = !DILocation(line: 716, column: 7, scope: !2234)
!2236 = !DILocation(line: 718, column: 13, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !1786, file: !285, line: 718, column: 11)
!2238 = !DILocation(line: 718, column: 11, scope: !1786)
!2239 = !DILocation(line: 720, column: 5, scope: !1787)
!2240 = !DILocation(line: 392, column: 75, scope: !1787)
!2241 = !DILocation(line: 392, column: 3, scope: !1787)
!2242 = distinct !{!2242, !1900, !2243}
!2243 = !DILocation(line: 720, column: 5, scope: !1788)
!2244 = !DILocation(line: 722, column: 11, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !1759, file: !285, line: 722, column: 7)
!2246 = !DILocation(line: 722, column: 16, scope: !2245)
!2247 = !DILocation(line: 730, column: 51, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !1759, file: !285, line: 730, column: 7)
!2249 = !DILocation(line: 731, column: 10, scope: !2248)
!2250 = !DILocation(line: 733, column: 11, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !285, line: 733, column: 11)
!2252 = distinct !DILexicalBlock(scope: !2248, file: !285, line: 732, column: 5)
!2253 = !DILocation(line: 733, column: 11, scope: !2252)
!2254 = !DILocation(line: 734, column: 16, scope: !2251)
!2255 = !DILocation(line: 734, column: 9, scope: !2251)
!2256 = !DILocation(line: 738, column: 18, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2251, file: !285, line: 738, column: 16)
!2258 = !DILocation(line: 738, column: 32, scope: !2257)
!2259 = !DILocation(line: 738, column: 29, scope: !2257)
!2260 = !DILocation(line: 747, column: 7, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !1759, file: !285, line: 747, column: 7)
!2262 = !DILocation(line: 747, column: 20, scope: !2261)
!2263 = !DILocation(line: 748, column: 12, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !285, line: 748, column: 5)
!2265 = distinct !DILexicalBlock(scope: !2261, file: !285, line: 748, column: 5)
!2266 = !DILocation(line: 748, column: 5, scope: !2265)
!2267 = !DILocation(line: 749, column: 7, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !285, line: 749, column: 7)
!2269 = distinct !DILexicalBlock(scope: !2264, file: !285, line: 749, column: 7)
!2270 = !DILocation(line: 749, column: 7, scope: !2269)
!2271 = !DILocation(line: 748, column: 39, scope: !2264)
!2272 = distinct !{!2272, !2266, !2273}
!2273 = !DILocation(line: 749, column: 7, scope: !2265)
!2274 = !DILocation(line: 751, column: 11, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !1759, file: !285, line: 751, column: 7)
!2276 = !DILocation(line: 751, column: 7, scope: !1759)
!2277 = !DILocation(line: 752, column: 5, scope: !2275)
!2278 = !DILocation(line: 752, column: 17, scope: !2275)
!2279 = !DILocation(line: 758, column: 21, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !1759, file: !285, line: 758, column: 7)
!2281 = !DILocation(line: 758, column: 54, scope: !2280)
!2282 = !DILocation(line: 758, column: 51, scope: !2280)
!2283 = !DILocation(line: 762, column: 42, scope: !1759)
!2284 = !DILocation(line: 760, column: 10, scope: !1759)
!2285 = !DILocation(line: 760, column: 3, scope: !1759)
!2286 = !DILocation(line: 764, column: 1, scope: !1759)
!2287 = distinct !DISubprogram(name: "gettext_quote", scope: !285, file: !285, line: 199, type: !2288, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2290)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!25, !25, !5}
!2290 = !{!2291, !2292, !2293, !2294}
!2291 = !DILocalVariable(name: "msgid", arg: 1, scope: !2287, file: !285, line: 199, type: !25)
!2292 = !DILocalVariable(name: "s", arg: 2, scope: !2287, file: !285, line: 199, type: !5)
!2293 = !DILocalVariable(name: "translation", scope: !2287, file: !285, line: 201, type: !25)
!2294 = !DILocalVariable(name: "locale_code", scope: !2287, file: !285, line: 202, type: !25)
!2295 = !DILocation(line: 199, column: 28, scope: !2287)
!2296 = !DILocation(line: 199, column: 54, scope: !2287)
!2297 = !DILocation(line: 201, column: 29, scope: !2287)
!2298 = !DILocation(line: 201, column: 15, scope: !2287)
!2299 = !DILocation(line: 204, column: 19, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2287, file: !285, line: 204, column: 7)
!2301 = !DILocation(line: 204, column: 7, scope: !2287)
!2302 = !DILocation(line: 225, column: 17, scope: !2287)
!2303 = !DILocation(line: 202, column: 15, scope: !2287)
!2304 = !DILocalVariable(name: "s2", arg: 2, scope: !2305, file: !2306, line: 160, type: !25)
!2305 = distinct !DISubprogram(name: "strcaseeq0", scope: !2306, file: !2306, line: 160, type: !2307, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2309)
!2306 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!36, !25, !25, !21, !21, !21, !21, !21, !21, !21, !21, !21}
!2309 = !{!2310, !2304, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319}
!2310 = !DILocalVariable(name: "s1", arg: 1, scope: !2305, file: !2306, line: 160, type: !25)
!2311 = !DILocalVariable(name: "s20", arg: 3, scope: !2305, file: !2306, line: 160, type: !21)
!2312 = !DILocalVariable(name: "s21", arg: 4, scope: !2305, file: !2306, line: 160, type: !21)
!2313 = !DILocalVariable(name: "s22", arg: 5, scope: !2305, file: !2306, line: 160, type: !21)
!2314 = !DILocalVariable(name: "s23", arg: 6, scope: !2305, file: !2306, line: 160, type: !21)
!2315 = !DILocalVariable(name: "s24", arg: 7, scope: !2305, file: !2306, line: 160, type: !21)
!2316 = !DILocalVariable(name: "s25", arg: 8, scope: !2305, file: !2306, line: 160, type: !21)
!2317 = !DILocalVariable(name: "s26", arg: 9, scope: !2305, file: !2306, line: 160, type: !21)
!2318 = !DILocalVariable(name: "s27", arg: 10, scope: !2305, file: !2306, line: 160, type: !21)
!2319 = !DILocalVariable(name: "s28", arg: 11, scope: !2305, file: !2306, line: 160, type: !21)
!2320 = !DILocation(line: 160, column: 41, scope: !2305, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 226, column: 7, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2287, file: !285, line: 226, column: 7)
!2323 = !DILocation(line: 160, column: 120, scope: !2305, inlinedAt: !2321)
!2324 = !DILocation(line: 160, column: 130, scope: !2305, inlinedAt: !2321)
!2325 = !DILocation(line: 162, column: 7, scope: !2326, inlinedAt: !2321)
!2326 = distinct !DILexicalBlock(scope: !2305, file: !2306, line: 162, column: 7)
!2327 = !DILocalVariable(name: "s2", arg: 2, scope: !2328, file: !2306, line: 146, type: !25)
!2328 = distinct !DISubprogram(name: "strcaseeq1", scope: !2306, file: !2306, line: 146, type: !2329, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2331)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!36, !25, !25, !21, !21, !21, !21, !21, !21, !21, !21}
!2331 = !{!2332, !2327, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340}
!2332 = !DILocalVariable(name: "s1", arg: 1, scope: !2328, file: !2306, line: 146, type: !25)
!2333 = !DILocalVariable(name: "s21", arg: 3, scope: !2328, file: !2306, line: 146, type: !21)
!2334 = !DILocalVariable(name: "s22", arg: 4, scope: !2328, file: !2306, line: 146, type: !21)
!2335 = !DILocalVariable(name: "s23", arg: 5, scope: !2328, file: !2306, line: 146, type: !21)
!2336 = !DILocalVariable(name: "s24", arg: 6, scope: !2328, file: !2306, line: 146, type: !21)
!2337 = !DILocalVariable(name: "s25", arg: 7, scope: !2328, file: !2306, line: 146, type: !21)
!2338 = !DILocalVariable(name: "s26", arg: 8, scope: !2328, file: !2306, line: 146, type: !21)
!2339 = !DILocalVariable(name: "s27", arg: 9, scope: !2328, file: !2306, line: 146, type: !21)
!2340 = !DILocalVariable(name: "s28", arg: 10, scope: !2328, file: !2306, line: 146, type: !21)
!2341 = !DILocation(line: 146, column: 41, scope: !2328, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 167, column: 16, scope: !2343, inlinedAt: !2321)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !2306, line: 164, column: 11)
!2344 = distinct !DILexicalBlock(scope: !2326, file: !2306, line: 163, column: 5)
!2345 = !DILocation(line: 146, column: 110, scope: !2328, inlinedAt: !2342)
!2346 = !DILocation(line: 146, column: 120, scope: !2328, inlinedAt: !2342)
!2347 = !DILocation(line: 148, column: 7, scope: !2348, inlinedAt: !2342)
!2348 = distinct !DILexicalBlock(scope: !2328, file: !2306, line: 148, column: 7)
!2349 = !DILocalVariable(name: "s2", arg: 2, scope: !2350, file: !2306, line: 132, type: !25)
!2350 = distinct !DISubprogram(name: "strcaseeq2", scope: !2306, file: !2306, line: 132, type: !2351, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!36, !25, !25, !21, !21, !21, !21, !21, !21, !21}
!2353 = !{!2354, !2349, !2355, !2356, !2357, !2358, !2359, !2360, !2361}
!2354 = !DILocalVariable(name: "s1", arg: 1, scope: !2350, file: !2306, line: 132, type: !25)
!2355 = !DILocalVariable(name: "s22", arg: 3, scope: !2350, file: !2306, line: 132, type: !21)
!2356 = !DILocalVariable(name: "s23", arg: 4, scope: !2350, file: !2306, line: 132, type: !21)
!2357 = !DILocalVariable(name: "s24", arg: 5, scope: !2350, file: !2306, line: 132, type: !21)
!2358 = !DILocalVariable(name: "s25", arg: 6, scope: !2350, file: !2306, line: 132, type: !21)
!2359 = !DILocalVariable(name: "s26", arg: 7, scope: !2350, file: !2306, line: 132, type: !21)
!2360 = !DILocalVariable(name: "s27", arg: 8, scope: !2350, file: !2306, line: 132, type: !21)
!2361 = !DILocalVariable(name: "s28", arg: 9, scope: !2350, file: !2306, line: 132, type: !21)
!2362 = !DILocation(line: 132, column: 41, scope: !2350, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 153, column: 16, scope: !2364, inlinedAt: !2342)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !2306, line: 150, column: 11)
!2365 = distinct !DILexicalBlock(scope: !2348, file: !2306, line: 149, column: 5)
!2366 = !DILocation(line: 132, column: 100, scope: !2350, inlinedAt: !2363)
!2367 = !DILocation(line: 132, column: 110, scope: !2350, inlinedAt: !2363)
!2368 = !DILocation(line: 134, column: 7, scope: !2369, inlinedAt: !2363)
!2369 = distinct !DILexicalBlock(scope: !2350, file: !2306, line: 134, column: 7)
!2370 = !DILocalVariable(name: "s2", arg: 2, scope: !2371, file: !2306, line: 118, type: !25)
!2371 = distinct !DISubprogram(name: "strcaseeq3", scope: !2306, file: !2306, line: 118, type: !2372, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2374)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!36, !25, !25, !21, !21, !21, !21, !21, !21}
!2374 = !{!2375, !2370, !2376, !2377, !2378, !2379, !2380, !2381}
!2375 = !DILocalVariable(name: "s1", arg: 1, scope: !2371, file: !2306, line: 118, type: !25)
!2376 = !DILocalVariable(name: "s23", arg: 3, scope: !2371, file: !2306, line: 118, type: !21)
!2377 = !DILocalVariable(name: "s24", arg: 4, scope: !2371, file: !2306, line: 118, type: !21)
!2378 = !DILocalVariable(name: "s25", arg: 5, scope: !2371, file: !2306, line: 118, type: !21)
!2379 = !DILocalVariable(name: "s26", arg: 6, scope: !2371, file: !2306, line: 118, type: !21)
!2380 = !DILocalVariable(name: "s27", arg: 7, scope: !2371, file: !2306, line: 118, type: !21)
!2381 = !DILocalVariable(name: "s28", arg: 8, scope: !2371, file: !2306, line: 118, type: !21)
!2382 = !DILocation(line: 118, column: 41, scope: !2371, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 139, column: 16, scope: !2384, inlinedAt: !2363)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !2306, line: 136, column: 11)
!2385 = distinct !DILexicalBlock(scope: !2369, file: !2306, line: 135, column: 5)
!2386 = !DILocation(line: 118, column: 90, scope: !2371, inlinedAt: !2383)
!2387 = !DILocation(line: 118, column: 100, scope: !2371, inlinedAt: !2383)
!2388 = !DILocation(line: 120, column: 7, scope: !2389, inlinedAt: !2383)
!2389 = distinct !DILexicalBlock(scope: !2371, file: !2306, line: 120, column: 7)
!2390 = !DILocation(line: 120, column: 7, scope: !2371, inlinedAt: !2383)
!2391 = !DILocalVariable(name: "s2", arg: 2, scope: !2392, file: !2306, line: 104, type: !25)
!2392 = distinct !DISubprogram(name: "strcaseeq4", scope: !2306, file: !2306, line: 104, type: !2393, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2395)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!36, !25, !25, !21, !21, !21, !21, !21}
!2395 = !{!2396, !2391, !2397, !2398, !2399, !2400, !2401}
!2396 = !DILocalVariable(name: "s1", arg: 1, scope: !2392, file: !2306, line: 104, type: !25)
!2397 = !DILocalVariable(name: "s24", arg: 3, scope: !2392, file: !2306, line: 104, type: !21)
!2398 = !DILocalVariable(name: "s25", arg: 4, scope: !2392, file: !2306, line: 104, type: !21)
!2399 = !DILocalVariable(name: "s26", arg: 5, scope: !2392, file: !2306, line: 104, type: !21)
!2400 = !DILocalVariable(name: "s27", arg: 6, scope: !2392, file: !2306, line: 104, type: !21)
!2401 = !DILocalVariable(name: "s28", arg: 7, scope: !2392, file: !2306, line: 104, type: !21)
!2402 = !DILocation(line: 104, column: 41, scope: !2392, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 125, column: 16, scope: !2404, inlinedAt: !2383)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !2306, line: 122, column: 11)
!2405 = distinct !DILexicalBlock(scope: !2389, file: !2306, line: 121, column: 5)
!2406 = !DILocation(line: 104, column: 80, scope: !2392, inlinedAt: !2403)
!2407 = !DILocation(line: 104, column: 90, scope: !2392, inlinedAt: !2403)
!2408 = !DILocation(line: 106, column: 7, scope: !2409, inlinedAt: !2403)
!2409 = distinct !DILexicalBlock(scope: !2392, file: !2306, line: 106, column: 7)
!2410 = !DILocation(line: 106, column: 7, scope: !2392, inlinedAt: !2403)
!2411 = !DILocalVariable(name: "s2", arg: 2, scope: !2412, file: !2306, line: 90, type: !25)
!2412 = distinct !DISubprogram(name: "strcaseeq5", scope: !2306, file: !2306, line: 90, type: !2413, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2415)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!36, !25, !25, !21, !21, !21, !21}
!2415 = !{!2416, !2411, !2417, !2418, !2419, !2420}
!2416 = !DILocalVariable(name: "s1", arg: 1, scope: !2412, file: !2306, line: 90, type: !25)
!2417 = !DILocalVariable(name: "s25", arg: 3, scope: !2412, file: !2306, line: 90, type: !21)
!2418 = !DILocalVariable(name: "s26", arg: 4, scope: !2412, file: !2306, line: 90, type: !21)
!2419 = !DILocalVariable(name: "s27", arg: 5, scope: !2412, file: !2306, line: 90, type: !21)
!2420 = !DILocalVariable(name: "s28", arg: 6, scope: !2412, file: !2306, line: 90, type: !21)
!2421 = !DILocation(line: 90, column: 41, scope: !2412, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 111, column: 16, scope: !2423, inlinedAt: !2403)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !2306, line: 108, column: 11)
!2424 = distinct !DILexicalBlock(scope: !2409, file: !2306, line: 107, column: 5)
!2425 = !DILocation(line: 90, column: 70, scope: !2412, inlinedAt: !2422)
!2426 = !DILocation(line: 90, column: 80, scope: !2412, inlinedAt: !2422)
!2427 = !DILocation(line: 92, column: 7, scope: !2428, inlinedAt: !2422)
!2428 = distinct !DILexicalBlock(scope: !2412, file: !2306, line: 92, column: 7)
!2429 = !DILocation(line: 92, column: 7, scope: !2412, inlinedAt: !2422)
!2430 = !DILocation(line: 227, column: 12, scope: !2322)
!2431 = !DILocation(line: 227, column: 21, scope: !2322)
!2432 = !DILocation(line: 227, column: 5, scope: !2322)
!2433 = !DILocation(line: 146, column: 41, scope: !2328, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 167, column: 16, scope: !2343, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 228, column: 7, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2287, file: !285, line: 228, column: 7)
!2437 = !DILocation(line: 146, column: 110, scope: !2328, inlinedAt: !2434)
!2438 = !DILocation(line: 146, column: 120, scope: !2328, inlinedAt: !2434)
!2439 = !DILocation(line: 148, column: 7, scope: !2348, inlinedAt: !2434)
!2440 = !DILocation(line: 132, column: 41, scope: !2350, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 153, column: 16, scope: !2364, inlinedAt: !2434)
!2442 = !DILocation(line: 132, column: 100, scope: !2350, inlinedAt: !2441)
!2443 = !DILocation(line: 132, column: 110, scope: !2350, inlinedAt: !2441)
!2444 = !DILocation(line: 134, column: 7, scope: !2369, inlinedAt: !2441)
!2445 = !DILocation(line: 134, column: 7, scope: !2350, inlinedAt: !2441)
!2446 = !DILocation(line: 118, column: 41, scope: !2371, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 139, column: 16, scope: !2384, inlinedAt: !2441)
!2448 = !DILocation(line: 118, column: 90, scope: !2371, inlinedAt: !2447)
!2449 = !DILocation(line: 118, column: 100, scope: !2371, inlinedAt: !2447)
!2450 = !DILocation(line: 120, column: 7, scope: !2389, inlinedAt: !2447)
!2451 = !DILocation(line: 120, column: 7, scope: !2371, inlinedAt: !2447)
!2452 = !DILocation(line: 104, column: 41, scope: !2392, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 125, column: 16, scope: !2404, inlinedAt: !2447)
!2454 = !DILocation(line: 104, column: 80, scope: !2392, inlinedAt: !2453)
!2455 = !DILocation(line: 104, column: 90, scope: !2392, inlinedAt: !2453)
!2456 = !DILocation(line: 106, column: 7, scope: !2409, inlinedAt: !2453)
!2457 = !DILocation(line: 106, column: 7, scope: !2392, inlinedAt: !2453)
!2458 = !DILocation(line: 90, column: 41, scope: !2412, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 111, column: 16, scope: !2423, inlinedAt: !2453)
!2460 = !DILocation(line: 90, column: 70, scope: !2412, inlinedAt: !2459)
!2461 = !DILocation(line: 90, column: 80, scope: !2412, inlinedAt: !2459)
!2462 = !DILocation(line: 92, column: 7, scope: !2428, inlinedAt: !2459)
!2463 = !DILocation(line: 92, column: 7, scope: !2412, inlinedAt: !2459)
!2464 = !DILocalVariable(name: "s2", arg: 2, scope: !2465, file: !2306, line: 76, type: !25)
!2465 = distinct !DISubprogram(name: "strcaseeq6", scope: !2306, file: !2306, line: 76, type: !2466, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!36, !25, !25, !21, !21, !21}
!2468 = !{!2469, !2464, !2470, !2471, !2472}
!2469 = !DILocalVariable(name: "s1", arg: 1, scope: !2465, file: !2306, line: 76, type: !25)
!2470 = !DILocalVariable(name: "s26", arg: 3, scope: !2465, file: !2306, line: 76, type: !21)
!2471 = !DILocalVariable(name: "s27", arg: 4, scope: !2465, file: !2306, line: 76, type: !21)
!2472 = !DILocalVariable(name: "s28", arg: 5, scope: !2465, file: !2306, line: 76, type: !21)
!2473 = !DILocation(line: 76, column: 41, scope: !2465, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 97, column: 16, scope: !2475, inlinedAt: !2459)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !2306, line: 94, column: 11)
!2476 = distinct !DILexicalBlock(scope: !2428, file: !2306, line: 93, column: 5)
!2477 = !DILocation(line: 76, column: 60, scope: !2465, inlinedAt: !2474)
!2478 = !DILocation(line: 76, column: 70, scope: !2465, inlinedAt: !2474)
!2479 = !DILocation(line: 78, column: 7, scope: !2480, inlinedAt: !2474)
!2480 = distinct !DILexicalBlock(scope: !2465, file: !2306, line: 78, column: 7)
!2481 = !DILocation(line: 78, column: 7, scope: !2465, inlinedAt: !2474)
!2482 = !DILocalVariable(name: "s2", arg: 2, scope: !2483, file: !2306, line: 62, type: !25)
!2483 = distinct !DISubprogram(name: "strcaseeq7", scope: !2306, file: !2306, line: 62, type: !2484, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2486)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!36, !25, !25, !21, !21}
!2486 = !{!2487, !2482, !2488, !2489}
!2487 = !DILocalVariable(name: "s1", arg: 1, scope: !2483, file: !2306, line: 62, type: !25)
!2488 = !DILocalVariable(name: "s27", arg: 3, scope: !2483, file: !2306, line: 62, type: !21)
!2489 = !DILocalVariable(name: "s28", arg: 4, scope: !2483, file: !2306, line: 62, type: !21)
!2490 = !DILocation(line: 62, column: 41, scope: !2483, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 83, column: 16, scope: !2492, inlinedAt: !2474)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !2306, line: 80, column: 11)
!2493 = distinct !DILexicalBlock(scope: !2480, file: !2306, line: 79, column: 5)
!2494 = !DILocation(line: 62, column: 50, scope: !2483, inlinedAt: !2491)
!2495 = !DILocation(line: 62, column: 60, scope: !2483, inlinedAt: !2491)
!2496 = !DILocation(line: 64, column: 7, scope: !2497, inlinedAt: !2491)
!2497 = distinct !DILexicalBlock(scope: !2483, file: !2306, line: 64, column: 7)
!2498 = !DILocation(line: 228, column: 7, scope: !2287)
!2499 = !DILocation(line: 229, column: 12, scope: !2436)
!2500 = !DILocation(line: 229, column: 21, scope: !2436)
!2501 = !DILocation(line: 229, column: 5, scope: !2436)
!2502 = !DILocation(line: 231, column: 13, scope: !2287)
!2503 = !DILocation(line: 231, column: 11, scope: !2287)
!2504 = !DILocation(line: 231, column: 3, scope: !2287)
!2505 = !DILocation(line: 232, column: 1, scope: !2287)
!2506 = distinct !DISubprogram(name: "quotearg_alloc", scope: !285, file: !285, line: 791, type: !2507, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2509)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!20, !25, !27, !1631}
!2509 = !{!2510, !2511, !2512}
!2510 = !DILocalVariable(name: "arg", arg: 1, scope: !2506, file: !285, line: 791, type: !25)
!2511 = !DILocalVariable(name: "argsize", arg: 2, scope: !2506, file: !285, line: 791, type: !27)
!2512 = !DILocalVariable(name: "o", arg: 3, scope: !2506, file: !285, line: 792, type: !1631)
!2513 = !DILocation(line: 791, column: 29, scope: !2506)
!2514 = !DILocation(line: 791, column: 41, scope: !2506)
!2515 = !DILocation(line: 792, column: 47, scope: !2506)
!2516 = !DILocalVariable(name: "arg", arg: 1, scope: !2517, file: !285, line: 804, type: !25)
!2517 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !285, file: !285, line: 804, type: !2518, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!20, !25, !27, !754, !1631}
!2520 = !{!2516, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528}
!2521 = !DILocalVariable(name: "argsize", arg: 2, scope: !2517, file: !285, line: 804, type: !27)
!2522 = !DILocalVariable(name: "size", arg: 3, scope: !2517, file: !285, line: 804, type: !754)
!2523 = !DILocalVariable(name: "o", arg: 4, scope: !2517, file: !285, line: 805, type: !1631)
!2524 = !DILocalVariable(name: "p", scope: !2517, file: !285, line: 807, type: !1631)
!2525 = !DILocalVariable(name: "e", scope: !2517, file: !285, line: 808, type: !36)
!2526 = !DILocalVariable(name: "flags", scope: !2517, file: !285, line: 810, type: !36)
!2527 = !DILocalVariable(name: "bufsize", scope: !2517, file: !285, line: 811, type: !27)
!2528 = !DILocalVariable(name: "buf", scope: !2517, file: !285, line: 815, type: !20)
!2529 = !DILocation(line: 804, column: 33, scope: !2517, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 794, column: 10, scope: !2506)
!2531 = !DILocation(line: 804, column: 45, scope: !2517, inlinedAt: !2530)
!2532 = !DILocation(line: 804, column: 62, scope: !2517, inlinedAt: !2530)
!2533 = !DILocation(line: 805, column: 51, scope: !2517, inlinedAt: !2530)
!2534 = !DILocation(line: 807, column: 37, scope: !2517, inlinedAt: !2530)
!2535 = !DILocation(line: 807, column: 33, scope: !2517, inlinedAt: !2530)
!2536 = !DILocation(line: 808, column: 11, scope: !2517, inlinedAt: !2530)
!2537 = !DILocation(line: 808, column: 7, scope: !2517, inlinedAt: !2530)
!2538 = !DILocation(line: 810, column: 18, scope: !2517, inlinedAt: !2530)
!2539 = !DILocation(line: 810, column: 24, scope: !2517, inlinedAt: !2530)
!2540 = !DILocation(line: 810, column: 7, scope: !2517, inlinedAt: !2530)
!2541 = !DILocation(line: 811, column: 69, scope: !2517, inlinedAt: !2530)
!2542 = !DILocation(line: 812, column: 53, scope: !2517, inlinedAt: !2530)
!2543 = !DILocation(line: 813, column: 49, scope: !2517, inlinedAt: !2530)
!2544 = !DILocation(line: 814, column: 49, scope: !2517, inlinedAt: !2530)
!2545 = !DILocation(line: 811, column: 20, scope: !2517, inlinedAt: !2530)
!2546 = !DILocation(line: 814, column: 62, scope: !2517, inlinedAt: !2530)
!2547 = !DILocation(line: 811, column: 10, scope: !2517, inlinedAt: !2530)
!2548 = !DILocalVariable(name: "n", arg: 1, scope: !2549, file: !750, line: 220, type: !27)
!2549 = distinct !DISubprogram(name: "xcharalloc", scope: !750, file: !750, line: 220, type: !2550, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2552)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!20, !27}
!2552 = !{!2548}
!2553 = !DILocation(line: 220, column: 20, scope: !2549, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 815, column: 15, scope: !2517, inlinedAt: !2530)
!2555 = !DILocation(line: 222, column: 10, scope: !2549, inlinedAt: !2554)
!2556 = !DILocation(line: 815, column: 9, scope: !2517, inlinedAt: !2530)
!2557 = !DILocation(line: 816, column: 60, scope: !2517, inlinedAt: !2530)
!2558 = !DILocation(line: 818, column: 32, scope: !2517, inlinedAt: !2530)
!2559 = !DILocation(line: 818, column: 47, scope: !2517, inlinedAt: !2530)
!2560 = !DILocation(line: 816, column: 3, scope: !2517, inlinedAt: !2530)
!2561 = !DILocation(line: 819, column: 9, scope: !2517, inlinedAt: !2530)
!2562 = !DILocation(line: 794, column: 3, scope: !2506)
!2563 = !DILocation(line: 804, column: 33, scope: !2517)
!2564 = !DILocation(line: 804, column: 45, scope: !2517)
!2565 = !DILocation(line: 804, column: 62, scope: !2517)
!2566 = !DILocation(line: 805, column: 51, scope: !2517)
!2567 = !DILocation(line: 807, column: 37, scope: !2517)
!2568 = !DILocation(line: 807, column: 33, scope: !2517)
!2569 = !DILocation(line: 808, column: 11, scope: !2517)
!2570 = !DILocation(line: 808, column: 7, scope: !2517)
!2571 = !DILocation(line: 810, column: 18, scope: !2517)
!2572 = !DILocation(line: 810, column: 27, scope: !2517)
!2573 = !DILocation(line: 810, column: 24, scope: !2517)
!2574 = !DILocation(line: 810, column: 7, scope: !2517)
!2575 = !DILocation(line: 811, column: 69, scope: !2517)
!2576 = !DILocation(line: 812, column: 53, scope: !2517)
!2577 = !DILocation(line: 813, column: 49, scope: !2517)
!2578 = !DILocation(line: 814, column: 49, scope: !2517)
!2579 = !DILocation(line: 811, column: 20, scope: !2517)
!2580 = !DILocation(line: 814, column: 62, scope: !2517)
!2581 = !DILocation(line: 811, column: 10, scope: !2517)
!2582 = !DILocation(line: 220, column: 20, scope: !2549, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 815, column: 15, scope: !2517)
!2584 = !DILocation(line: 222, column: 10, scope: !2549, inlinedAt: !2583)
!2585 = !DILocation(line: 815, column: 9, scope: !2517)
!2586 = !DILocation(line: 816, column: 60, scope: !2517)
!2587 = !DILocation(line: 818, column: 32, scope: !2517)
!2588 = !DILocation(line: 818, column: 47, scope: !2517)
!2589 = !DILocation(line: 816, column: 3, scope: !2517)
!2590 = !DILocation(line: 819, column: 9, scope: !2517)
!2591 = !DILocation(line: 820, column: 7, scope: !2517)
!2592 = !DILocation(line: 821, column: 11, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2517, file: !285, line: 820, column: 7)
!2594 = !DILocation(line: 821, column: 5, scope: !2593)
!2595 = !DILocation(line: 822, column: 3, scope: !2517)
!2596 = distinct !DISubprogram(name: "quotearg_free", scope: !285, file: !285, line: 840, type: !812, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2597)
!2597 = !{!2598, !2599}
!2598 = !DILocalVariable(name: "sv", scope: !2596, file: !285, line: 842, type: !308)
!2599 = !DILocalVariable(name: "i", scope: !2596, file: !285, line: 843, type: !36)
!2600 = !DILocation(line: 842, column: 24, scope: !2596)
!2601 = !DILocation(line: 842, column: 19, scope: !2596)
!2602 = !DILocation(line: 843, column: 7, scope: !2596)
!2603 = !DILocation(line: 844, column: 19, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !285, line: 844, column: 3)
!2605 = distinct !DILexicalBlock(scope: !2596, file: !285, line: 844, column: 3)
!2606 = !DILocation(line: 844, column: 17, scope: !2604)
!2607 = !DILocation(line: 844, column: 3, scope: !2605)
!2608 = !DILocation(line: 845, column: 17, scope: !2604)
!2609 = !{!2610, !804, i64 8}
!2610 = !{!"slotvec", !848, i64 0, !804, i64 8}
!2611 = !DILocation(line: 845, column: 5, scope: !2604)
!2612 = !DILocation(line: 844, column: 28, scope: !2604)
!2613 = distinct !{!2613, !2607, !2614}
!2614 = !DILocation(line: 845, column: 20, scope: !2605)
!2615 = !DILocation(line: 846, column: 13, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2596, file: !285, line: 846, column: 7)
!2617 = !DILocation(line: 846, column: 17, scope: !2616)
!2618 = !DILocation(line: 846, column: 7, scope: !2596)
!2619 = !DILocation(line: 848, column: 7, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2616, file: !285, line: 847, column: 5)
!2621 = !DILocation(line: 849, column: 21, scope: !2620)
!2622 = !{!2610, !848, i64 0}
!2623 = !DILocation(line: 850, column: 20, scope: !2620)
!2624 = !DILocation(line: 851, column: 5, scope: !2620)
!2625 = !DILocation(line: 852, column: 10, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2596, file: !285, line: 852, column: 7)
!2627 = !DILocation(line: 852, column: 7, scope: !2596)
!2628 = !DILocation(line: 854, column: 13, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !285, line: 853, column: 5)
!2630 = !DILocation(line: 854, column: 7, scope: !2629)
!2631 = !DILocation(line: 855, column: 15, scope: !2629)
!2632 = !DILocation(line: 856, column: 5, scope: !2629)
!2633 = !DILocation(line: 857, column: 10, scope: !2596)
!2634 = !DILocation(line: 858, column: 1, scope: !2596)
!2635 = distinct !DISubprogram(name: "quotearg_n", scope: !285, file: !285, line: 922, type: !2636, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2638)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!20, !36, !25}
!2638 = !{!2639, !2640}
!2639 = !DILocalVariable(name: "n", arg: 1, scope: !2635, file: !285, line: 922, type: !36)
!2640 = !DILocalVariable(name: "arg", arg: 2, scope: !2635, file: !285, line: 922, type: !25)
!2641 = !DILocation(line: 922, column: 17, scope: !2635)
!2642 = !DILocation(line: 922, column: 32, scope: !2635)
!2643 = !DILocation(line: 924, column: 10, scope: !2635)
!2644 = !DILocation(line: 924, column: 3, scope: !2635)
!2645 = distinct !DISubprogram(name: "quotearg_n_options", scope: !285, file: !285, line: 869, type: !2646, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2648)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!20, !36, !25, !27, !1631}
!2648 = !{!2649, !2650, !2651, !2652, !2653, !2654, !2655, !2658, !2660, !2661, !2662}
!2649 = !DILocalVariable(name: "n", arg: 1, scope: !2645, file: !285, line: 869, type: !36)
!2650 = !DILocalVariable(name: "arg", arg: 2, scope: !2645, file: !285, line: 869, type: !25)
!2651 = !DILocalVariable(name: "argsize", arg: 3, scope: !2645, file: !285, line: 869, type: !27)
!2652 = !DILocalVariable(name: "options", arg: 4, scope: !2645, file: !285, line: 870, type: !1631)
!2653 = !DILocalVariable(name: "e", scope: !2645, file: !285, line: 872, type: !36)
!2654 = !DILocalVariable(name: "sv", scope: !2645, file: !285, line: 874, type: !308)
!2655 = !DILocalVariable(name: "preallocated", scope: !2656, file: !285, line: 881, type: !44)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !285, line: 880, column: 5)
!2657 = distinct !DILexicalBlock(scope: !2645, file: !285, line: 879, column: 7)
!2658 = !DILocalVariable(name: "size", scope: !2659, file: !285, line: 894, type: !27)
!2659 = distinct !DILexicalBlock(scope: !2645, file: !285, line: 893, column: 3)
!2660 = !DILocalVariable(name: "val", scope: !2659, file: !285, line: 895, type: !20)
!2661 = !DILocalVariable(name: "flags", scope: !2659, file: !285, line: 897, type: !36)
!2662 = !DILocalVariable(name: "qsize", scope: !2659, file: !285, line: 898, type: !27)
!2663 = !DILocation(line: 869, column: 25, scope: !2645)
!2664 = !DILocation(line: 869, column: 40, scope: !2645)
!2665 = !DILocation(line: 869, column: 52, scope: !2645)
!2666 = !DILocation(line: 870, column: 51, scope: !2645)
!2667 = !DILocation(line: 872, column: 11, scope: !2645)
!2668 = !DILocation(line: 872, column: 7, scope: !2645)
!2669 = !DILocation(line: 874, column: 24, scope: !2645)
!2670 = !DILocation(line: 874, column: 19, scope: !2645)
!2671 = !DILocation(line: 876, column: 9, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2645, file: !285, line: 876, column: 7)
!2673 = !DILocation(line: 876, column: 7, scope: !2645)
!2674 = !DILocation(line: 877, column: 5, scope: !2672)
!2675 = !DILocation(line: 879, column: 7, scope: !2657)
!2676 = !DILocation(line: 879, column: 14, scope: !2657)
!2677 = !DILocation(line: 879, column: 7, scope: !2645)
!2678 = !DILocation(line: 881, column: 31, scope: !2656)
!2679 = !DILocation(line: 883, column: 67, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2656, file: !285, line: 883, column: 11)
!2681 = !DILocation(line: 883, column: 11, scope: !2656)
!2682 = !DILocation(line: 884, column: 9, scope: !2680)
!2683 = !DILocation(line: 886, column: 32, scope: !2656)
!2684 = !DILocation(line: 886, column: 61, scope: !2656)
!2685 = !DILocation(line: 886, column: 58, scope: !2656)
!2686 = !DILocation(line: 886, column: 66, scope: !2656)
!2687 = !DILocation(line: 886, column: 22, scope: !2656)
!2688 = !DILocation(line: 886, column: 15, scope: !2656)
!2689 = !DILocation(line: 887, column: 11, scope: !2656)
!2690 = !DILocation(line: 888, column: 15, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2656, file: !285, line: 887, column: 11)
!2692 = !{i64 0, i64 8, !847, i64 8, i64 8, !803}
!2693 = !DILocation(line: 888, column: 9, scope: !2691)
!2694 = !DILocation(line: 889, column: 20, scope: !2656)
!2695 = !DILocation(line: 889, column: 18, scope: !2656)
!2696 = !DILocation(line: 889, column: 7, scope: !2656)
!2697 = !DILocation(line: 889, column: 38, scope: !2656)
!2698 = !DILocation(line: 889, column: 31, scope: !2656)
!2699 = !DILocation(line: 889, column: 48, scope: !2656)
!2700 = !DILocation(line: 890, column: 14, scope: !2656)
!2701 = !DILocation(line: 891, column: 5, scope: !2656)
!2702 = !DILocation(line: 894, column: 19, scope: !2659)
!2703 = !DILocation(line: 894, column: 25, scope: !2659)
!2704 = !DILocation(line: 894, column: 12, scope: !2659)
!2705 = !DILocation(line: 895, column: 23, scope: !2659)
!2706 = !DILocation(line: 895, column: 11, scope: !2659)
!2707 = !DILocation(line: 897, column: 26, scope: !2659)
!2708 = !DILocation(line: 897, column: 32, scope: !2659)
!2709 = !DILocation(line: 897, column: 9, scope: !2659)
!2710 = !DILocation(line: 899, column: 55, scope: !2659)
!2711 = !DILocation(line: 900, column: 46, scope: !2659)
!2712 = !DILocation(line: 901, column: 55, scope: !2659)
!2713 = !DILocation(line: 902, column: 55, scope: !2659)
!2714 = !DILocation(line: 898, column: 20, scope: !2659)
!2715 = !DILocation(line: 898, column: 12, scope: !2659)
!2716 = !DILocation(line: 904, column: 14, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2659, file: !285, line: 904, column: 9)
!2718 = !DILocation(line: 904, column: 9, scope: !2659)
!2719 = !DILocation(line: 906, column: 35, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2717, file: !285, line: 905, column: 7)
!2721 = !DILocation(line: 906, column: 20, scope: !2720)
!2722 = !DILocation(line: 907, column: 17, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2720, file: !285, line: 907, column: 13)
!2724 = !DILocation(line: 907, column: 13, scope: !2720)
!2725 = !DILocation(line: 908, column: 11, scope: !2723)
!2726 = !DILocation(line: 220, column: 20, scope: !2549, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 909, column: 27, scope: !2720)
!2728 = !DILocation(line: 222, column: 10, scope: !2549, inlinedAt: !2727)
!2729 = !DILocation(line: 909, column: 19, scope: !2720)
!2730 = !DILocation(line: 910, column: 69, scope: !2720)
!2731 = !DILocation(line: 912, column: 44, scope: !2720)
!2732 = !DILocation(line: 913, column: 44, scope: !2720)
!2733 = !DILocation(line: 910, column: 9, scope: !2720)
!2734 = !DILocation(line: 914, column: 7, scope: !2720)
!2735 = !DILocation(line: 916, column: 11, scope: !2659)
!2736 = !DILocation(line: 917, column: 5, scope: !2659)
!2737 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !285, file: !285, line: 928, type: !2738, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!20, !36, !25, !27}
!2740 = !{!2741, !2742, !2743}
!2741 = !DILocalVariable(name: "n", arg: 1, scope: !2737, file: !285, line: 928, type: !36)
!2742 = !DILocalVariable(name: "arg", arg: 2, scope: !2737, file: !285, line: 928, type: !25)
!2743 = !DILocalVariable(name: "argsize", arg: 3, scope: !2737, file: !285, line: 928, type: !27)
!2744 = !DILocation(line: 928, column: 21, scope: !2737)
!2745 = !DILocation(line: 928, column: 36, scope: !2737)
!2746 = !DILocation(line: 928, column: 48, scope: !2737)
!2747 = !DILocation(line: 930, column: 10, scope: !2737)
!2748 = !DILocation(line: 930, column: 3, scope: !2737)
!2749 = distinct !DISubprogram(name: "quotearg", scope: !285, file: !285, line: 934, type: !2750, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2752)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!20, !25}
!2752 = !{!2753}
!2753 = !DILocalVariable(name: "arg", arg: 1, scope: !2749, file: !285, line: 934, type: !25)
!2754 = !DILocation(line: 934, column: 23, scope: !2749)
!2755 = !DILocation(line: 922, column: 17, scope: !2635, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 936, column: 10, scope: !2749)
!2757 = !DILocation(line: 922, column: 32, scope: !2635, inlinedAt: !2756)
!2758 = !DILocation(line: 924, column: 10, scope: !2635, inlinedAt: !2756)
!2759 = !DILocation(line: 936, column: 3, scope: !2749)
!2760 = distinct !DISubprogram(name: "quotearg_mem", scope: !285, file: !285, line: 940, type: !2761, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2763)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!20, !25, !27}
!2763 = !{!2764, !2765}
!2764 = !DILocalVariable(name: "arg", arg: 1, scope: !2760, file: !285, line: 940, type: !25)
!2765 = !DILocalVariable(name: "argsize", arg: 2, scope: !2760, file: !285, line: 940, type: !27)
!2766 = !DILocation(line: 940, column: 27, scope: !2760)
!2767 = !DILocation(line: 940, column: 39, scope: !2760)
!2768 = !DILocation(line: 928, column: 21, scope: !2737, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 942, column: 10, scope: !2760)
!2770 = !DILocation(line: 928, column: 36, scope: !2737, inlinedAt: !2769)
!2771 = !DILocation(line: 928, column: 48, scope: !2737, inlinedAt: !2769)
!2772 = !DILocation(line: 930, column: 10, scope: !2737, inlinedAt: !2769)
!2773 = !DILocation(line: 942, column: 3, scope: !2760)
!2774 = distinct !DISubprogram(name: "quotearg_n_style", scope: !285, file: !285, line: 946, type: !2775, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2777)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!20, !36, !5, !25}
!2777 = !{!2778, !2779, !2780, !2781}
!2778 = !DILocalVariable(name: "n", arg: 1, scope: !2774, file: !285, line: 946, type: !36)
!2779 = !DILocalVariable(name: "s", arg: 2, scope: !2774, file: !285, line: 946, type: !5)
!2780 = !DILocalVariable(name: "arg", arg: 3, scope: !2774, file: !285, line: 946, type: !25)
!2781 = !DILocalVariable(name: "o", scope: !2774, file: !285, line: 948, type: !1632)
!2782 = !DILocalVariable(name: "o", scope: !2783, file: !285, line: 187, type: !292)
!2783 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !285, file: !285, line: 185, type: !2784, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2786)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!292, !5}
!2786 = !{!2787, !2782}
!2787 = !DILocalVariable(name: "style", arg: 1, scope: !2783, file: !285, line: 185, type: !5)
!2788 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2789 = !DILocation(line: 187, column: 26, scope: !2783, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 948, column: 36, scope: !2774)
!2791 = !DILocation(line: 946, column: 23, scope: !2774)
!2792 = !DILocation(line: 946, column: 45, scope: !2774)
!2793 = !DILocation(line: 946, column: 60, scope: !2774)
!2794 = !DILocation(line: 948, column: 3, scope: !2774)
!2795 = !DILocation(line: 948, column: 32, scope: !2774)
!2796 = !DILocation(line: 185, column: 48, scope: !2783, inlinedAt: !2790)
!2797 = !DILocation(line: 187, column: 3, scope: !2783, inlinedAt: !2790)
!2798 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2799 = !DILocation(line: 188, column: 13, scope: !2800, inlinedAt: !2790)
!2800 = distinct !DILexicalBlock(scope: !2783, file: !285, line: 188, column: 7)
!2801 = !DILocation(line: 188, column: 7, scope: !2783, inlinedAt: !2790)
!2802 = !DILocation(line: 189, column: 5, scope: !2800, inlinedAt: !2790)
!2803 = !{!2804}
!2804 = distinct !{!2804, !2805, !"quoting_options_from_style: argument 0"}
!2805 = distinct !{!2805, !"quoting_options_from_style"}
!2806 = !DILocation(line: 191, column: 10, scope: !2783, inlinedAt: !2790)
!2807 = !DILocation(line: 192, column: 1, scope: !2783, inlinedAt: !2790)
!2808 = !DILocation(line: 949, column: 10, scope: !2774)
!2809 = !DILocation(line: 950, column: 1, scope: !2774)
!2810 = !DILocation(line: 949, column: 3, scope: !2774)
!2811 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !285, file: !285, line: 953, type: !2812, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2814)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!20, !36, !5, !25, !27}
!2814 = !{!2815, !2816, !2817, !2818, !2819}
!2815 = !DILocalVariable(name: "n", arg: 1, scope: !2811, file: !285, line: 953, type: !36)
!2816 = !DILocalVariable(name: "s", arg: 2, scope: !2811, file: !285, line: 953, type: !5)
!2817 = !DILocalVariable(name: "arg", arg: 3, scope: !2811, file: !285, line: 954, type: !25)
!2818 = !DILocalVariable(name: "argsize", arg: 4, scope: !2811, file: !285, line: 954, type: !27)
!2819 = !DILocalVariable(name: "o", scope: !2811, file: !285, line: 956, type: !1632)
!2820 = !DILocation(line: 187, column: 26, scope: !2783, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 956, column: 36, scope: !2811)
!2822 = !DILocation(line: 953, column: 27, scope: !2811)
!2823 = !DILocation(line: 953, column: 49, scope: !2811)
!2824 = !DILocation(line: 954, column: 35, scope: !2811)
!2825 = !DILocation(line: 954, column: 47, scope: !2811)
!2826 = !DILocation(line: 956, column: 3, scope: !2811)
!2827 = !DILocation(line: 956, column: 32, scope: !2811)
!2828 = !DILocation(line: 185, column: 48, scope: !2783, inlinedAt: !2821)
!2829 = !DILocation(line: 187, column: 3, scope: !2783, inlinedAt: !2821)
!2830 = !DILocation(line: 188, column: 13, scope: !2800, inlinedAt: !2821)
!2831 = !DILocation(line: 188, column: 7, scope: !2783, inlinedAt: !2821)
!2832 = !DILocation(line: 189, column: 5, scope: !2800, inlinedAt: !2821)
!2833 = !{!2834}
!2834 = distinct !{!2834, !2835, !"quoting_options_from_style: argument 0"}
!2835 = distinct !{!2835, !"quoting_options_from_style"}
!2836 = !DILocation(line: 191, column: 10, scope: !2783, inlinedAt: !2821)
!2837 = !DILocation(line: 192, column: 1, scope: !2783, inlinedAt: !2821)
!2838 = !DILocation(line: 957, column: 10, scope: !2811)
!2839 = !DILocation(line: 958, column: 1, scope: !2811)
!2840 = !DILocation(line: 957, column: 3, scope: !2811)
!2841 = distinct !DISubprogram(name: "quotearg_style", scope: !285, file: !285, line: 961, type: !2842, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!20, !5, !25}
!2844 = !{!2845, !2846}
!2845 = !DILocalVariable(name: "s", arg: 1, scope: !2841, file: !285, line: 961, type: !5)
!2846 = !DILocalVariable(name: "arg", arg: 2, scope: !2841, file: !285, line: 961, type: !25)
!2847 = !DILocation(line: 187, column: 26, scope: !2783, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 948, column: 36, scope: !2774, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 963, column: 10, scope: !2841)
!2850 = !DILocation(line: 961, column: 36, scope: !2841)
!2851 = !DILocation(line: 961, column: 51, scope: !2841)
!2852 = !DILocation(line: 946, column: 23, scope: !2774, inlinedAt: !2849)
!2853 = !DILocation(line: 946, column: 45, scope: !2774, inlinedAt: !2849)
!2854 = !DILocation(line: 946, column: 60, scope: !2774, inlinedAt: !2849)
!2855 = !DILocation(line: 948, column: 3, scope: !2774, inlinedAt: !2849)
!2856 = !DILocation(line: 948, column: 32, scope: !2774, inlinedAt: !2849)
!2857 = !DILocation(line: 185, column: 48, scope: !2783, inlinedAt: !2848)
!2858 = !DILocation(line: 187, column: 3, scope: !2783, inlinedAt: !2848)
!2859 = !DILocation(line: 188, column: 13, scope: !2800, inlinedAt: !2848)
!2860 = !DILocation(line: 188, column: 7, scope: !2783, inlinedAt: !2848)
!2861 = !DILocation(line: 189, column: 5, scope: !2800, inlinedAt: !2848)
!2862 = !{!2863}
!2863 = distinct !{!2863, !2864, !"quoting_options_from_style: argument 0"}
!2864 = distinct !{!2864, !"quoting_options_from_style"}
!2865 = !DILocation(line: 191, column: 10, scope: !2783, inlinedAt: !2848)
!2866 = !DILocation(line: 192, column: 1, scope: !2783, inlinedAt: !2848)
!2867 = !DILocation(line: 949, column: 10, scope: !2774, inlinedAt: !2849)
!2868 = !DILocation(line: 950, column: 1, scope: !2774, inlinedAt: !2849)
!2869 = !DILocation(line: 963, column: 3, scope: !2841)
!2870 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !285, file: !285, line: 967, type: !2871, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2873)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!20, !5, !25, !27}
!2873 = !{!2874, !2875, !2876}
!2874 = !DILocalVariable(name: "s", arg: 1, scope: !2870, file: !285, line: 967, type: !5)
!2875 = !DILocalVariable(name: "arg", arg: 2, scope: !2870, file: !285, line: 967, type: !25)
!2876 = !DILocalVariable(name: "argsize", arg: 3, scope: !2870, file: !285, line: 967, type: !27)
!2877 = !DILocation(line: 187, column: 26, scope: !2783, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 956, column: 36, scope: !2811, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 969, column: 10, scope: !2870)
!2880 = !DILocation(line: 967, column: 40, scope: !2870)
!2881 = !DILocation(line: 967, column: 55, scope: !2870)
!2882 = !DILocation(line: 967, column: 67, scope: !2870)
!2883 = !DILocation(line: 953, column: 27, scope: !2811, inlinedAt: !2879)
!2884 = !DILocation(line: 953, column: 49, scope: !2811, inlinedAt: !2879)
!2885 = !DILocation(line: 954, column: 35, scope: !2811, inlinedAt: !2879)
!2886 = !DILocation(line: 954, column: 47, scope: !2811, inlinedAt: !2879)
!2887 = !DILocation(line: 956, column: 3, scope: !2811, inlinedAt: !2879)
!2888 = !DILocation(line: 956, column: 32, scope: !2811, inlinedAt: !2879)
!2889 = !DILocation(line: 185, column: 48, scope: !2783, inlinedAt: !2878)
!2890 = !DILocation(line: 187, column: 3, scope: !2783, inlinedAt: !2878)
!2891 = !DILocation(line: 188, column: 13, scope: !2800, inlinedAt: !2878)
!2892 = !DILocation(line: 188, column: 7, scope: !2783, inlinedAt: !2878)
!2893 = !DILocation(line: 189, column: 5, scope: !2800, inlinedAt: !2878)
!2894 = !{!2895}
!2895 = distinct !{!2895, !2896, !"quoting_options_from_style: argument 0"}
!2896 = distinct !{!2896, !"quoting_options_from_style"}
!2897 = !DILocation(line: 191, column: 10, scope: !2783, inlinedAt: !2878)
!2898 = !DILocation(line: 192, column: 1, scope: !2783, inlinedAt: !2878)
!2899 = !DILocation(line: 957, column: 10, scope: !2811, inlinedAt: !2879)
!2900 = !DILocation(line: 958, column: 1, scope: !2811, inlinedAt: !2879)
!2901 = !DILocation(line: 969, column: 3, scope: !2870)
!2902 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !285, file: !285, line: 973, type: !2903, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2905)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!20, !25, !27, !21}
!2905 = !{!2906, !2907, !2908, !2909}
!2906 = !DILocalVariable(name: "arg", arg: 1, scope: !2902, file: !285, line: 973, type: !25)
!2907 = !DILocalVariable(name: "argsize", arg: 2, scope: !2902, file: !285, line: 973, type: !27)
!2908 = !DILocalVariable(name: "ch", arg: 3, scope: !2902, file: !285, line: 973, type: !21)
!2909 = !DILocalVariable(name: "options", scope: !2902, file: !285, line: 975, type: !292)
!2910 = !DILocation(line: 973, column: 32, scope: !2902)
!2911 = !DILocation(line: 973, column: 44, scope: !2902)
!2912 = !DILocation(line: 973, column: 58, scope: !2902)
!2913 = !DILocation(line: 975, column: 3, scope: !2902)
!2914 = !DILocation(line: 976, column: 13, scope: !2902)
!2915 = !{i64 0, i64 4, !868, i64 4, i64 4, !920, i64 8, i64 32, !868, i64 40, i64 8, !803, i64 48, i64 8, !803}
!2916 = !DILocation(line: 975, column: 26, scope: !2902)
!2917 = !DILocation(line: 144, column: 43, scope: !1653, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 977, column: 3, scope: !2902)
!2919 = !DILocation(line: 144, column: 51, scope: !1653, inlinedAt: !2918)
!2920 = !DILocation(line: 144, column: 58, scope: !1653, inlinedAt: !2918)
!2921 = !DILocation(line: 146, column: 17, scope: !1653, inlinedAt: !2918)
!2922 = !DILocation(line: 148, column: 62, scope: !1653, inlinedAt: !2918)
!2923 = !DILocation(line: 148, column: 57, scope: !1653, inlinedAt: !2918)
!2924 = !DILocation(line: 147, column: 17, scope: !1653, inlinedAt: !2918)
!2925 = !DILocation(line: 149, column: 18, scope: !1653, inlinedAt: !2918)
!2926 = !DILocation(line: 149, column: 15, scope: !1653, inlinedAt: !2918)
!2927 = !DILocation(line: 149, column: 7, scope: !1653, inlinedAt: !2918)
!2928 = !DILocation(line: 150, column: 12, scope: !1653, inlinedAt: !2918)
!2929 = !DILocation(line: 150, column: 15, scope: !1653, inlinedAt: !2918)
!2930 = !DILocation(line: 150, column: 25, scope: !1653, inlinedAt: !2918)
!2931 = !DILocation(line: 150, column: 7, scope: !1653, inlinedAt: !2918)
!2932 = !DILocation(line: 151, column: 18, scope: !1653, inlinedAt: !2918)
!2933 = !DILocation(line: 151, column: 23, scope: !1653, inlinedAt: !2918)
!2934 = !DILocation(line: 151, column: 6, scope: !1653, inlinedAt: !2918)
!2935 = !DILocation(line: 978, column: 10, scope: !2902)
!2936 = !DILocation(line: 979, column: 1, scope: !2902)
!2937 = !DILocation(line: 978, column: 3, scope: !2902)
!2938 = distinct !DISubprogram(name: "quotearg_char", scope: !285, file: !285, line: 982, type: !2939, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!20, !25, !21}
!2941 = !{!2942, !2943}
!2942 = !DILocalVariable(name: "arg", arg: 1, scope: !2938, file: !285, line: 982, type: !25)
!2943 = !DILocalVariable(name: "ch", arg: 2, scope: !2938, file: !285, line: 982, type: !21)
!2944 = !DILocation(line: 982, column: 28, scope: !2938)
!2945 = !DILocation(line: 982, column: 38, scope: !2938)
!2946 = !DILocation(line: 973, column: 32, scope: !2902, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 984, column: 10, scope: !2938)
!2948 = !DILocation(line: 973, column: 44, scope: !2902, inlinedAt: !2947)
!2949 = !DILocation(line: 973, column: 58, scope: !2902, inlinedAt: !2947)
!2950 = !DILocation(line: 975, column: 3, scope: !2902, inlinedAt: !2947)
!2951 = !DILocation(line: 976, column: 13, scope: !2902, inlinedAt: !2947)
!2952 = !DILocation(line: 975, column: 26, scope: !2902, inlinedAt: !2947)
!2953 = !DILocation(line: 144, column: 43, scope: !1653, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 977, column: 3, scope: !2902, inlinedAt: !2947)
!2955 = !DILocation(line: 144, column: 51, scope: !1653, inlinedAt: !2954)
!2956 = !DILocation(line: 144, column: 58, scope: !1653, inlinedAt: !2954)
!2957 = !DILocation(line: 146, column: 17, scope: !1653, inlinedAt: !2954)
!2958 = !DILocation(line: 148, column: 62, scope: !1653, inlinedAt: !2954)
!2959 = !DILocation(line: 148, column: 57, scope: !1653, inlinedAt: !2954)
!2960 = !DILocation(line: 147, column: 17, scope: !1653, inlinedAt: !2954)
!2961 = !DILocation(line: 149, column: 18, scope: !1653, inlinedAt: !2954)
!2962 = !DILocation(line: 149, column: 15, scope: !1653, inlinedAt: !2954)
!2963 = !DILocation(line: 149, column: 7, scope: !1653, inlinedAt: !2954)
!2964 = !DILocation(line: 150, column: 12, scope: !1653, inlinedAt: !2954)
!2965 = !DILocation(line: 150, column: 15, scope: !1653, inlinedAt: !2954)
!2966 = !DILocation(line: 150, column: 25, scope: !1653, inlinedAt: !2954)
!2967 = !DILocation(line: 150, column: 7, scope: !1653, inlinedAt: !2954)
!2968 = !DILocation(line: 151, column: 18, scope: !1653, inlinedAt: !2954)
!2969 = !DILocation(line: 151, column: 23, scope: !1653, inlinedAt: !2954)
!2970 = !DILocation(line: 151, column: 6, scope: !1653, inlinedAt: !2954)
!2971 = !DILocation(line: 978, column: 10, scope: !2902, inlinedAt: !2947)
!2972 = !DILocation(line: 979, column: 1, scope: !2902, inlinedAt: !2947)
!2973 = !DILocation(line: 984, column: 3, scope: !2938)
!2974 = distinct !DISubprogram(name: "quotearg_colon", scope: !285, file: !285, line: 988, type: !2750, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !2975)
!2975 = !{!2976}
!2976 = !DILocalVariable(name: "arg", arg: 1, scope: !2974, file: !285, line: 988, type: !25)
!2977 = !DILocation(line: 988, column: 29, scope: !2974)
!2978 = !DILocation(line: 982, column: 28, scope: !2938, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 990, column: 10, scope: !2974)
!2980 = !DILocation(line: 982, column: 38, scope: !2938, inlinedAt: !2979)
!2981 = !DILocation(line: 973, column: 32, scope: !2902, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 984, column: 10, scope: !2938, inlinedAt: !2979)
!2983 = !DILocation(line: 973, column: 44, scope: !2902, inlinedAt: !2982)
!2984 = !DILocation(line: 973, column: 58, scope: !2902, inlinedAt: !2982)
!2985 = !DILocation(line: 975, column: 3, scope: !2902, inlinedAt: !2982)
!2986 = !DILocation(line: 976, column: 13, scope: !2902, inlinedAt: !2982)
!2987 = !DILocation(line: 975, column: 26, scope: !2902, inlinedAt: !2982)
!2988 = !DILocation(line: 144, column: 43, scope: !1653, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 977, column: 3, scope: !2902, inlinedAt: !2982)
!2990 = !DILocation(line: 144, column: 51, scope: !1653, inlinedAt: !2989)
!2991 = !DILocation(line: 144, column: 58, scope: !1653, inlinedAt: !2989)
!2992 = !DILocation(line: 146, column: 17, scope: !1653, inlinedAt: !2989)
!2993 = !DILocation(line: 148, column: 57, scope: !1653, inlinedAt: !2989)
!2994 = !DILocation(line: 147, column: 17, scope: !1653, inlinedAt: !2989)
!2995 = !DILocation(line: 149, column: 7, scope: !1653, inlinedAt: !2989)
!2996 = !DILocation(line: 150, column: 12, scope: !1653, inlinedAt: !2989)
!2997 = !DILocation(line: 151, column: 6, scope: !1653, inlinedAt: !2989)
!2998 = !DILocation(line: 978, column: 10, scope: !2902, inlinedAt: !2982)
!2999 = !DILocation(line: 979, column: 1, scope: !2902, inlinedAt: !2982)
!3000 = !DILocation(line: 990, column: 3, scope: !2974)
!3001 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !285, file: !285, line: 994, type: !2761, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3002)
!3002 = !{!3003, !3004}
!3003 = !DILocalVariable(name: "arg", arg: 1, scope: !3001, file: !285, line: 994, type: !25)
!3004 = !DILocalVariable(name: "argsize", arg: 2, scope: !3001, file: !285, line: 994, type: !27)
!3005 = !DILocation(line: 994, column: 33, scope: !3001)
!3006 = !DILocation(line: 994, column: 45, scope: !3001)
!3007 = !DILocation(line: 973, column: 32, scope: !2902, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 996, column: 10, scope: !3001)
!3009 = !DILocation(line: 973, column: 44, scope: !2902, inlinedAt: !3008)
!3010 = !DILocation(line: 973, column: 58, scope: !2902, inlinedAt: !3008)
!3011 = !DILocation(line: 975, column: 3, scope: !2902, inlinedAt: !3008)
!3012 = !DILocation(line: 976, column: 13, scope: !2902, inlinedAt: !3008)
!3013 = !DILocation(line: 975, column: 26, scope: !2902, inlinedAt: !3008)
!3014 = !DILocation(line: 144, column: 43, scope: !1653, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 977, column: 3, scope: !2902, inlinedAt: !3008)
!3016 = !DILocation(line: 144, column: 51, scope: !1653, inlinedAt: !3015)
!3017 = !DILocation(line: 144, column: 58, scope: !1653, inlinedAt: !3015)
!3018 = !DILocation(line: 146, column: 17, scope: !1653, inlinedAt: !3015)
!3019 = !DILocation(line: 148, column: 57, scope: !1653, inlinedAt: !3015)
!3020 = !DILocation(line: 147, column: 17, scope: !1653, inlinedAt: !3015)
!3021 = !DILocation(line: 149, column: 7, scope: !1653, inlinedAt: !3015)
!3022 = !DILocation(line: 150, column: 12, scope: !1653, inlinedAt: !3015)
!3023 = !DILocation(line: 151, column: 6, scope: !1653, inlinedAt: !3015)
!3024 = !DILocation(line: 978, column: 10, scope: !2902, inlinedAt: !3008)
!3025 = !DILocation(line: 979, column: 1, scope: !2902, inlinedAt: !3008)
!3026 = !DILocation(line: 996, column: 3, scope: !3001)
!3027 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !285, file: !285, line: 1000, type: !2775, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3028)
!3028 = !{!3029, !3030, !3031, !3032}
!3029 = !DILocalVariable(name: "n", arg: 1, scope: !3027, file: !285, line: 1000, type: !36)
!3030 = !DILocalVariable(name: "s", arg: 2, scope: !3027, file: !285, line: 1000, type: !5)
!3031 = !DILocalVariable(name: "arg", arg: 3, scope: !3027, file: !285, line: 1000, type: !25)
!3032 = !DILocalVariable(name: "options", scope: !3027, file: !285, line: 1002, type: !292)
!3033 = !DILocation(line: 187, column: 26, scope: !2783, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 1003, column: 13, scope: !3027)
!3035 = !DILocation(line: 1000, column: 29, scope: !3027)
!3036 = !DILocation(line: 1000, column: 51, scope: !3027)
!3037 = !DILocation(line: 1000, column: 66, scope: !3027)
!3038 = !DILocation(line: 1002, column: 3, scope: !3027)
!3039 = !DILocation(line: 185, column: 48, scope: !2783, inlinedAt: !3034)
!3040 = !DILocation(line: 187, column: 3, scope: !2783, inlinedAt: !3034)
!3041 = !DILocation(line: 188, column: 13, scope: !2800, inlinedAt: !3034)
!3042 = !DILocation(line: 188, column: 7, scope: !2783, inlinedAt: !3034)
!3043 = !DILocation(line: 189, column: 5, scope: !2800, inlinedAt: !3034)
!3044 = !{!3045}
!3045 = distinct !{!3045, !3046, !"quoting_options_from_style: argument 0"}
!3046 = distinct !{!3046, !"quoting_options_from_style"}
!3047 = !DILocation(line: 191, column: 10, scope: !2783, inlinedAt: !3034)
!3048 = !DILocation(line: 192, column: 1, scope: !2783, inlinedAt: !3034)
!3049 = !DILocation(line: 1003, column: 13, scope: !3027)
!3050 = !DILocation(line: 1002, column: 26, scope: !3027)
!3051 = !DILocation(line: 144, column: 43, scope: !1653, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 1004, column: 3, scope: !3027)
!3053 = !DILocation(line: 144, column: 51, scope: !1653, inlinedAt: !3052)
!3054 = !DILocation(line: 144, column: 58, scope: !1653, inlinedAt: !3052)
!3055 = !DILocation(line: 146, column: 17, scope: !1653, inlinedAt: !3052)
!3056 = !DILocation(line: 148, column: 57, scope: !1653, inlinedAt: !3052)
!3057 = !DILocation(line: 147, column: 17, scope: !1653, inlinedAt: !3052)
!3058 = !DILocation(line: 149, column: 7, scope: !1653, inlinedAt: !3052)
!3059 = !DILocation(line: 150, column: 12, scope: !1653, inlinedAt: !3052)
!3060 = !DILocation(line: 151, column: 6, scope: !1653, inlinedAt: !3052)
!3061 = !DILocation(line: 1005, column: 10, scope: !3027)
!3062 = !DILocation(line: 1006, column: 1, scope: !3027)
!3063 = !DILocation(line: 1005, column: 3, scope: !3027)
!3064 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !285, file: !285, line: 1009, type: !3065, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!20, !36, !25, !25, !25}
!3067 = !{!3068, !3069, !3070, !3071}
!3068 = !DILocalVariable(name: "n", arg: 1, scope: !3064, file: !285, line: 1009, type: !36)
!3069 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3064, file: !285, line: 1009, type: !25)
!3070 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3064, file: !285, line: 1010, type: !25)
!3071 = !DILocalVariable(name: "arg", arg: 4, scope: !3064, file: !285, line: 1010, type: !25)
!3072 = !DILocation(line: 1009, column: 24, scope: !3064)
!3073 = !DILocation(line: 1009, column: 39, scope: !3064)
!3074 = !DILocation(line: 1010, column: 32, scope: !3064)
!3075 = !DILocation(line: 1010, column: 57, scope: !3064)
!3076 = !DILocalVariable(name: "n", arg: 1, scope: !3077, file: !285, line: 1017, type: !36)
!3077 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !285, file: !285, line: 1017, type: !3078, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3080)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!20, !36, !25, !25, !25, !27}
!3080 = !{!3076, !3081, !3082, !3083, !3084, !3085}
!3081 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3077, file: !285, line: 1017, type: !25)
!3082 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3077, file: !285, line: 1018, type: !25)
!3083 = !DILocalVariable(name: "arg", arg: 4, scope: !3077, file: !285, line: 1019, type: !25)
!3084 = !DILocalVariable(name: "argsize", arg: 5, scope: !3077, file: !285, line: 1019, type: !27)
!3085 = !DILocalVariable(name: "o", scope: !3077, file: !285, line: 1021, type: !292)
!3086 = !DILocation(line: 1017, column: 28, scope: !3077, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 1012, column: 10, scope: !3064)
!3088 = !DILocation(line: 1017, column: 43, scope: !3077, inlinedAt: !3087)
!3089 = !DILocation(line: 1018, column: 36, scope: !3077, inlinedAt: !3087)
!3090 = !DILocation(line: 1019, column: 36, scope: !3077, inlinedAt: !3087)
!3091 = !DILocation(line: 1019, column: 48, scope: !3077, inlinedAt: !3087)
!3092 = !DILocation(line: 1021, column: 3, scope: !3077, inlinedAt: !3087)
!3093 = !DILocation(line: 1021, column: 30, scope: !3077, inlinedAt: !3087)
!3094 = !DILocation(line: 1021, column: 26, scope: !3077, inlinedAt: !3087)
!3095 = !DILocation(line: 171, column: 45, scope: !1702, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 1022, column: 3, scope: !3077, inlinedAt: !3087)
!3097 = !DILocation(line: 172, column: 33, scope: !1702, inlinedAt: !3096)
!3098 = !DILocation(line: 172, column: 57, scope: !1702, inlinedAt: !3096)
!3099 = !DILocation(line: 176, column: 6, scope: !1702, inlinedAt: !3096)
!3100 = !DILocation(line: 176, column: 12, scope: !1702, inlinedAt: !3096)
!3101 = !DILocation(line: 177, column: 8, scope: !1718, inlinedAt: !3096)
!3102 = !DILocation(line: 177, column: 23, scope: !1718, inlinedAt: !3096)
!3103 = !DILocation(line: 177, column: 19, scope: !1718, inlinedAt: !3096)
!3104 = !DILocation(line: 178, column: 5, scope: !1718, inlinedAt: !3096)
!3105 = !DILocation(line: 179, column: 6, scope: !1702, inlinedAt: !3096)
!3106 = !DILocation(line: 179, column: 17, scope: !1702, inlinedAt: !3096)
!3107 = !DILocation(line: 180, column: 6, scope: !1702, inlinedAt: !3096)
!3108 = !DILocation(line: 180, column: 18, scope: !1702, inlinedAt: !3096)
!3109 = !DILocation(line: 1023, column: 10, scope: !3077, inlinedAt: !3087)
!3110 = !DILocation(line: 1024, column: 1, scope: !3077, inlinedAt: !3087)
!3111 = !DILocation(line: 1012, column: 3, scope: !3064)
!3112 = !DILocation(line: 1017, column: 28, scope: !3077)
!3113 = !DILocation(line: 1017, column: 43, scope: !3077)
!3114 = !DILocation(line: 1018, column: 36, scope: !3077)
!3115 = !DILocation(line: 1019, column: 36, scope: !3077)
!3116 = !DILocation(line: 1019, column: 48, scope: !3077)
!3117 = !DILocation(line: 1021, column: 3, scope: !3077)
!3118 = !DILocation(line: 1021, column: 30, scope: !3077)
!3119 = !DILocation(line: 1021, column: 26, scope: !3077)
!3120 = !DILocation(line: 171, column: 45, scope: !1702, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 1022, column: 3, scope: !3077)
!3122 = !DILocation(line: 172, column: 33, scope: !1702, inlinedAt: !3121)
!3123 = !DILocation(line: 172, column: 57, scope: !1702, inlinedAt: !3121)
!3124 = !DILocation(line: 176, column: 6, scope: !1702, inlinedAt: !3121)
!3125 = !DILocation(line: 176, column: 12, scope: !1702, inlinedAt: !3121)
!3126 = !DILocation(line: 177, column: 8, scope: !1718, inlinedAt: !3121)
!3127 = !DILocation(line: 177, column: 23, scope: !1718, inlinedAt: !3121)
!3128 = !DILocation(line: 177, column: 19, scope: !1718, inlinedAt: !3121)
!3129 = !DILocation(line: 178, column: 5, scope: !1718, inlinedAt: !3121)
!3130 = !DILocation(line: 179, column: 6, scope: !1702, inlinedAt: !3121)
!3131 = !DILocation(line: 179, column: 17, scope: !1702, inlinedAt: !3121)
!3132 = !DILocation(line: 180, column: 6, scope: !1702, inlinedAt: !3121)
!3133 = !DILocation(line: 180, column: 18, scope: !1702, inlinedAt: !3121)
!3134 = !DILocation(line: 1023, column: 10, scope: !3077)
!3135 = !DILocation(line: 1024, column: 1, scope: !3077)
!3136 = !DILocation(line: 1023, column: 3, scope: !3077)
!3137 = distinct !DISubprogram(name: "quotearg_custom", scope: !285, file: !285, line: 1027, type: !3138, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3140)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!20, !25, !25, !25}
!3140 = !{!3141, !3142, !3143}
!3141 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3137, file: !285, line: 1027, type: !25)
!3142 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3137, file: !285, line: 1027, type: !25)
!3143 = !DILocalVariable(name: "arg", arg: 3, scope: !3137, file: !285, line: 1028, type: !25)
!3144 = !DILocation(line: 1027, column: 30, scope: !3137)
!3145 = !DILocation(line: 1027, column: 54, scope: !3137)
!3146 = !DILocation(line: 1028, column: 30, scope: !3137)
!3147 = !DILocation(line: 1009, column: 24, scope: !3064, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 1030, column: 10, scope: !3137)
!3149 = !DILocation(line: 1009, column: 39, scope: !3064, inlinedAt: !3148)
!3150 = !DILocation(line: 1010, column: 32, scope: !3064, inlinedAt: !3148)
!3151 = !DILocation(line: 1010, column: 57, scope: !3064, inlinedAt: !3148)
!3152 = !DILocation(line: 1017, column: 28, scope: !3077, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 1012, column: 10, scope: !3064, inlinedAt: !3148)
!3154 = !DILocation(line: 1017, column: 43, scope: !3077, inlinedAt: !3153)
!3155 = !DILocation(line: 1018, column: 36, scope: !3077, inlinedAt: !3153)
!3156 = !DILocation(line: 1019, column: 36, scope: !3077, inlinedAt: !3153)
!3157 = !DILocation(line: 1019, column: 48, scope: !3077, inlinedAt: !3153)
!3158 = !DILocation(line: 1021, column: 3, scope: !3077, inlinedAt: !3153)
!3159 = !DILocation(line: 1021, column: 30, scope: !3077, inlinedAt: !3153)
!3160 = !DILocation(line: 1021, column: 26, scope: !3077, inlinedAt: !3153)
!3161 = !DILocation(line: 171, column: 45, scope: !1702, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 1022, column: 3, scope: !3077, inlinedAt: !3153)
!3163 = !DILocation(line: 172, column: 33, scope: !1702, inlinedAt: !3162)
!3164 = !DILocation(line: 172, column: 57, scope: !1702, inlinedAt: !3162)
!3165 = !DILocation(line: 176, column: 6, scope: !1702, inlinedAt: !3162)
!3166 = !DILocation(line: 176, column: 12, scope: !1702, inlinedAt: !3162)
!3167 = !DILocation(line: 177, column: 8, scope: !1718, inlinedAt: !3162)
!3168 = !DILocation(line: 177, column: 23, scope: !1718, inlinedAt: !3162)
!3169 = !DILocation(line: 177, column: 19, scope: !1718, inlinedAt: !3162)
!3170 = !DILocation(line: 178, column: 5, scope: !1718, inlinedAt: !3162)
!3171 = !DILocation(line: 179, column: 6, scope: !1702, inlinedAt: !3162)
!3172 = !DILocation(line: 179, column: 17, scope: !1702, inlinedAt: !3162)
!3173 = !DILocation(line: 180, column: 6, scope: !1702, inlinedAt: !3162)
!3174 = !DILocation(line: 180, column: 18, scope: !1702, inlinedAt: !3162)
!3175 = !DILocation(line: 1023, column: 10, scope: !3077, inlinedAt: !3153)
!3176 = !DILocation(line: 1024, column: 1, scope: !3077, inlinedAt: !3153)
!3177 = !DILocation(line: 1030, column: 3, scope: !3137)
!3178 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !285, file: !285, line: 1034, type: !3179, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3181)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!20, !25, !25, !25, !27}
!3181 = !{!3182, !3183, !3184, !3185}
!3182 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3178, file: !285, line: 1034, type: !25)
!3183 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3178, file: !285, line: 1034, type: !25)
!3184 = !DILocalVariable(name: "arg", arg: 3, scope: !3178, file: !285, line: 1035, type: !25)
!3185 = !DILocalVariable(name: "argsize", arg: 4, scope: !3178, file: !285, line: 1035, type: !27)
!3186 = !DILocation(line: 1034, column: 34, scope: !3178)
!3187 = !DILocation(line: 1034, column: 58, scope: !3178)
!3188 = !DILocation(line: 1035, column: 34, scope: !3178)
!3189 = !DILocation(line: 1035, column: 46, scope: !3178)
!3190 = !DILocation(line: 1017, column: 28, scope: !3077, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 1037, column: 10, scope: !3178)
!3192 = !DILocation(line: 1017, column: 43, scope: !3077, inlinedAt: !3191)
!3193 = !DILocation(line: 1018, column: 36, scope: !3077, inlinedAt: !3191)
!3194 = !DILocation(line: 1019, column: 36, scope: !3077, inlinedAt: !3191)
!3195 = !DILocation(line: 1019, column: 48, scope: !3077, inlinedAt: !3191)
!3196 = !DILocation(line: 1021, column: 3, scope: !3077, inlinedAt: !3191)
!3197 = !DILocation(line: 1021, column: 30, scope: !3077, inlinedAt: !3191)
!3198 = !DILocation(line: 1021, column: 26, scope: !3077, inlinedAt: !3191)
!3199 = !DILocation(line: 171, column: 45, scope: !1702, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 1022, column: 3, scope: !3077, inlinedAt: !3191)
!3201 = !DILocation(line: 172, column: 33, scope: !1702, inlinedAt: !3200)
!3202 = !DILocation(line: 172, column: 57, scope: !1702, inlinedAt: !3200)
!3203 = !DILocation(line: 176, column: 6, scope: !1702, inlinedAt: !3200)
!3204 = !DILocation(line: 176, column: 12, scope: !1702, inlinedAt: !3200)
!3205 = !DILocation(line: 177, column: 8, scope: !1718, inlinedAt: !3200)
!3206 = !DILocation(line: 177, column: 23, scope: !1718, inlinedAt: !3200)
!3207 = !DILocation(line: 177, column: 19, scope: !1718, inlinedAt: !3200)
!3208 = !DILocation(line: 178, column: 5, scope: !1718, inlinedAt: !3200)
!3209 = !DILocation(line: 179, column: 6, scope: !1702, inlinedAt: !3200)
!3210 = !DILocation(line: 179, column: 17, scope: !1702, inlinedAt: !3200)
!3211 = !DILocation(line: 180, column: 6, scope: !1702, inlinedAt: !3200)
!3212 = !DILocation(line: 180, column: 18, scope: !1702, inlinedAt: !3200)
!3213 = !DILocation(line: 1023, column: 10, scope: !3077, inlinedAt: !3191)
!3214 = !DILocation(line: 1024, column: 1, scope: !3077, inlinedAt: !3191)
!3215 = !DILocation(line: 1037, column: 3, scope: !3178)
!3216 = distinct !DISubprogram(name: "quote_n_mem", scope: !285, file: !285, line: 1052, type: !3217, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3219)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!25, !36, !25, !27}
!3219 = !{!3220, !3221, !3222}
!3220 = !DILocalVariable(name: "n", arg: 1, scope: !3216, file: !285, line: 1052, type: !36)
!3221 = !DILocalVariable(name: "arg", arg: 2, scope: !3216, file: !285, line: 1052, type: !25)
!3222 = !DILocalVariable(name: "argsize", arg: 3, scope: !3216, file: !285, line: 1052, type: !27)
!3223 = !DILocation(line: 1052, column: 18, scope: !3216)
!3224 = !DILocation(line: 1052, column: 33, scope: !3216)
!3225 = !DILocation(line: 1052, column: 45, scope: !3216)
!3226 = !DILocation(line: 1054, column: 10, scope: !3216)
!3227 = !DILocation(line: 1054, column: 3, scope: !3216)
!3228 = distinct !DISubprogram(name: "quote_mem", scope: !285, file: !285, line: 1058, type: !3229, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3231)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!25, !25, !27}
!3231 = !{!3232, !3233}
!3232 = !DILocalVariable(name: "arg", arg: 1, scope: !3228, file: !285, line: 1058, type: !25)
!3233 = !DILocalVariable(name: "argsize", arg: 2, scope: !3228, file: !285, line: 1058, type: !27)
!3234 = !DILocation(line: 1058, column: 24, scope: !3228)
!3235 = !DILocation(line: 1058, column: 36, scope: !3228)
!3236 = !DILocation(line: 1052, column: 18, scope: !3216, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 1060, column: 10, scope: !3228)
!3238 = !DILocation(line: 1052, column: 33, scope: !3216, inlinedAt: !3237)
!3239 = !DILocation(line: 1052, column: 45, scope: !3216, inlinedAt: !3237)
!3240 = !DILocation(line: 1054, column: 10, scope: !3216, inlinedAt: !3237)
!3241 = !DILocation(line: 1060, column: 3, scope: !3228)
!3242 = distinct !DISubprogram(name: "quote_n", scope: !285, file: !285, line: 1064, type: !3243, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3245)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!25, !36, !25}
!3245 = !{!3246, !3247}
!3246 = !DILocalVariable(name: "n", arg: 1, scope: !3242, file: !285, line: 1064, type: !36)
!3247 = !DILocalVariable(name: "arg", arg: 2, scope: !3242, file: !285, line: 1064, type: !25)
!3248 = !DILocation(line: 1064, column: 14, scope: !3242)
!3249 = !DILocation(line: 1064, column: 29, scope: !3242)
!3250 = !DILocation(line: 1052, column: 18, scope: !3216, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 1066, column: 10, scope: !3242)
!3252 = !DILocation(line: 1052, column: 33, scope: !3216, inlinedAt: !3251)
!3253 = !DILocation(line: 1052, column: 45, scope: !3216, inlinedAt: !3251)
!3254 = !DILocation(line: 1054, column: 10, scope: !3216, inlinedAt: !3251)
!3255 = !DILocation(line: 1066, column: 3, scope: !3242)
!3256 = distinct !DISubprogram(name: "quote", scope: !285, file: !285, line: 1070, type: !1515, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !3257)
!3257 = !{!3258}
!3258 = !DILocalVariable(name: "arg", arg: 1, scope: !3256, file: !285, line: 1070, type: !25)
!3259 = !DILocation(line: 1070, column: 20, scope: !3256)
!3260 = !DILocation(line: 1064, column: 14, scope: !3242, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 1072, column: 10, scope: !3256)
!3262 = !DILocation(line: 1064, column: 29, scope: !3242, inlinedAt: !3261)
!3263 = !DILocation(line: 1052, column: 18, scope: !3216, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 1066, column: 10, scope: !3242, inlinedAt: !3261)
!3265 = !DILocation(line: 1052, column: 33, scope: !3216, inlinedAt: !3264)
!3266 = !DILocation(line: 1052, column: 45, scope: !3216, inlinedAt: !3264)
!3267 = !DILocation(line: 1054, column: 10, scope: !3216, inlinedAt: !3264)
!3268 = !DILocation(line: 1072, column: 3, scope: !3256)
!3269 = !DILocation(line: 56, column: 14, scope: !719)
!3270 = !DILocation(line: 56, column: 30, scope: !719)
!3271 = !DILocation(line: 56, column: 42, scope: !719)
!3272 = !DILocation(line: 66, column: 24, scope: !727)
!3273 = !DILocation(line: 66, column: 15, scope: !727)
!3274 = !DILocation(line: 68, column: 13, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !727, file: !718, line: 68, column: 11)
!3276 = !DILocation(line: 68, column: 11, scope: !727)
!3277 = !DILocation(line: 70, column: 16, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3275, file: !718, line: 70, column: 16)
!3279 = distinct !{!3279, !3280, !3281}
!3280 = !DILocation(line: 64, column: 3, scope: !729)
!3281 = !DILocation(line: 76, column: 5, scope: !729)
!3282 = !DILocation(line: 70, column: 16, scope: !3275)
!3283 = !DILocation(line: 72, column: 22, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3278, file: !718, line: 72, column: 16)
!3285 = !DILocation(line: 72, column: 54, scope: !3284)
!3286 = !DILocation(line: 72, column: 32, scope: !3284)
!3287 = !DILocation(line: 77, column: 1, scope: !719)
!3288 = distinct !DISubprogram(name: "mkstemp_safer", scope: !3289, file: !3289, line: 31, type: !3290, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !735, variables: !3292)
!3289 = !DIFile(filename: "lib/mkstemp-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!36, !20}
!3292 = !{!3293}
!3293 = !DILocalVariable(name: "templ", arg: 1, scope: !3288, file: !3289, line: 31, type: !20)
!3294 = !DILocation(line: 31, column: 22, scope: !3288)
!3295 = !DILocation(line: 33, column: 20, scope: !3288)
!3296 = !DILocation(line: 33, column: 10, scope: !3288)
!3297 = !DILocation(line: 33, column: 3, scope: !3288)
!3298 = distinct !DISubprogram(name: "fd_safer", scope: !3299, file: !3299, line: 37, type: !3300, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !737, variables: !3302)
!3299 = !DIFile(filename: "lib/fd-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!36, !36}
!3302 = !{!3303, !3304, !3307}
!3303 = !DILocalVariable(name: "fd", arg: 1, scope: !3298, file: !3299, line: 37, type: !36)
!3304 = !DILocalVariable(name: "f", scope: !3305, file: !3299, line: 41, type: !36)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !3299, line: 40, column: 5)
!3306 = distinct !DILexicalBlock(scope: !3298, file: !3299, line: 39, column: 7)
!3307 = !DILocalVariable(name: "e", scope: !3305, file: !3299, line: 42, type: !36)
!3308 = !DILocation(line: 37, column: 15, scope: !3298)
!3309 = !DILocation(line: 39, column: 26, scope: !3306)
!3310 = !DILocation(line: 41, column: 15, scope: !3305)
!3311 = !DILocation(line: 41, column: 11, scope: !3305)
!3312 = !DILocation(line: 42, column: 15, scope: !3305)
!3313 = !DILocation(line: 42, column: 11, scope: !3305)
!3314 = !DILocation(line: 43, column: 7, scope: !3305)
!3315 = !DILocation(line: 44, column: 13, scope: !3305)
!3316 = !DILocation(line: 46, column: 5, scope: !3305)
!3317 = !DILocation(line: 48, column: 3, scope: !3298)
!3318 = distinct !DISubprogram(name: "version_etc_arn", scope: !743, file: !743, line: 62, type: !3319, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !739, variables: !3361)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{null, !3321, !25, !25, !25, !23, !27}
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !137, line: 7, baseType: !3323)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !139, line: 241, size: 1728, elements: !3324)
!3324 = !{!3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3323, file: !139, line: 242, baseType: !36, size: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3323, file: !139, line: 247, baseType: !20, size: 64, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3323, file: !139, line: 248, baseType: !20, size: 64, offset: 128)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3323, file: !139, line: 249, baseType: !20, size: 64, offset: 192)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3323, file: !139, line: 250, baseType: !20, size: 64, offset: 256)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3323, file: !139, line: 251, baseType: !20, size: 64, offset: 320)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3323, file: !139, line: 252, baseType: !20, size: 64, offset: 384)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3323, file: !139, line: 253, baseType: !20, size: 64, offset: 448)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3323, file: !139, line: 254, baseType: !20, size: 64, offset: 512)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3323, file: !139, line: 256, baseType: !20, size: 64, offset: 576)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3323, file: !139, line: 257, baseType: !20, size: 64, offset: 640)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3323, file: !139, line: 258, baseType: !20, size: 64, offset: 704)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3323, file: !139, line: 260, baseType: !3338, size: 64, offset: 768)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !139, line: 156, size: 192, elements: !3340)
!3340 = !{!3341, !3342, !3344}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3339, file: !139, line: 157, baseType: !3338, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3339, file: !139, line: 158, baseType: !3343, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3339, file: !139, line: 162, baseType: !36, size: 32, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3323, file: !139, line: 262, baseType: !3343, size: 64, offset: 832)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3323, file: !139, line: 264, baseType: !36, size: 32, offset: 896)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3323, file: !139, line: 268, baseType: !36, size: 32, offset: 928)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3323, file: !139, line: 270, baseType: !165, size: 64, offset: 960)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3323, file: !139, line: 274, baseType: !169, size: 16, offset: 1024)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3323, file: !139, line: 275, baseType: !171, size: 8, offset: 1040)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3323, file: !139, line: 276, baseType: !173, size: 8, offset: 1048)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3323, file: !139, line: 280, baseType: !177, size: 64, offset: 1088)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3323, file: !139, line: 289, baseType: !180, size: 64, offset: 1152)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3323, file: !139, line: 297, baseType: !22, size: 64, offset: 1216)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3323, file: !139, line: 298, baseType: !22, size: 64, offset: 1280)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3323, file: !139, line: 299, baseType: !22, size: 64, offset: 1344)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3323, file: !139, line: 300, baseType: !22, size: 64, offset: 1408)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3323, file: !139, line: 302, baseType: !27, size: 64, offset: 1472)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3323, file: !139, line: 303, baseType: !36, size: 32, offset: 1536)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3323, file: !139, line: 305, baseType: !188, size: 160, offset: 1568)
!3361 = !{!3362, !3363, !3364, !3365, !3366, !3367}
!3362 = !DILocalVariable(name: "stream", arg: 1, scope: !3318, file: !743, line: 62, type: !3321)
!3363 = !DILocalVariable(name: "command_name", arg: 2, scope: !3318, file: !743, line: 63, type: !25)
!3364 = !DILocalVariable(name: "package", arg: 3, scope: !3318, file: !743, line: 63, type: !25)
!3365 = !DILocalVariable(name: "version", arg: 4, scope: !3318, file: !743, line: 64, type: !25)
!3366 = !DILocalVariable(name: "authors", arg: 5, scope: !3318, file: !743, line: 65, type: !23)
!3367 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3318, file: !743, line: 65, type: !27)
!3368 = !DILocation(line: 62, column: 24, scope: !3318)
!3369 = !DILocation(line: 63, column: 30, scope: !3318)
!3370 = !DILocation(line: 63, column: 56, scope: !3318)
!3371 = !DILocation(line: 64, column: 30, scope: !3318)
!3372 = !DILocation(line: 65, column: 39, scope: !3318)
!3373 = !DILocation(line: 65, column: 55, scope: !3318)
!3374 = !DILocation(line: 67, column: 7, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3318, file: !743, line: 67, column: 7)
!3376 = !DILocation(line: 67, column: 7, scope: !3318)
!3377 = !DILocation(line: 68, column: 5, scope: !3375)
!3378 = !DILocation(line: 70, column: 5, scope: !3375)
!3379 = !DILocation(line: 84, column: 3, scope: !3318)
!3380 = !DILocation(line: 86, column: 3, scope: !3318)
!3381 = !DILocation(line: 95, column: 3, scope: !3318)
!3382 = !DILocation(line: 99, column: 7, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3318, file: !743, line: 96, column: 5)
!3384 = !DILocation(line: 102, column: 7, scope: !3383)
!3385 = !DILocation(line: 103, column: 7, scope: !3383)
!3386 = !DILocation(line: 106, column: 7, scope: !3383)
!3387 = !DILocation(line: 107, column: 7, scope: !3383)
!3388 = !DILocation(line: 110, column: 7, scope: !3383)
!3389 = !DILocation(line: 112, column: 7, scope: !3383)
!3390 = !DILocation(line: 117, column: 7, scope: !3383)
!3391 = !DILocation(line: 119, column: 7, scope: !3383)
!3392 = !DILocation(line: 124, column: 7, scope: !3383)
!3393 = !DILocation(line: 126, column: 7, scope: !3383)
!3394 = !DILocation(line: 131, column: 7, scope: !3383)
!3395 = !DILocation(line: 134, column: 7, scope: !3383)
!3396 = !DILocation(line: 139, column: 7, scope: !3383)
!3397 = !DILocation(line: 142, column: 7, scope: !3383)
!3398 = !DILocation(line: 147, column: 7, scope: !3383)
!3399 = !DILocation(line: 151, column: 7, scope: !3383)
!3400 = !DILocation(line: 156, column: 7, scope: !3383)
!3401 = !DILocation(line: 160, column: 7, scope: !3383)
!3402 = !DILocation(line: 167, column: 7, scope: !3383)
!3403 = !DILocation(line: 171, column: 7, scope: !3383)
!3404 = !DILocation(line: 173, column: 1, scope: !3318)
!3405 = distinct !DISubprogram(name: "version_etc_ar", scope: !743, file: !743, line: 180, type: !3406, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !739, variables: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{null, !3321, !25, !25, !25, !23}
!3408 = !{!3409, !3410, !3411, !3412, !3413, !3414}
!3409 = !DILocalVariable(name: "stream", arg: 1, scope: !3405, file: !743, line: 180, type: !3321)
!3410 = !DILocalVariable(name: "command_name", arg: 2, scope: !3405, file: !743, line: 181, type: !25)
!3411 = !DILocalVariable(name: "package", arg: 3, scope: !3405, file: !743, line: 181, type: !25)
!3412 = !DILocalVariable(name: "version", arg: 4, scope: !3405, file: !743, line: 182, type: !25)
!3413 = !DILocalVariable(name: "authors", arg: 5, scope: !3405, file: !743, line: 182, type: !23)
!3414 = !DILocalVariable(name: "n_authors", scope: !3405, file: !743, line: 184, type: !27)
!3415 = !DILocation(line: 180, column: 23, scope: !3405)
!3416 = !DILocation(line: 181, column: 29, scope: !3405)
!3417 = !DILocation(line: 181, column: 55, scope: !3405)
!3418 = !DILocation(line: 182, column: 29, scope: !3405)
!3419 = !DILocation(line: 182, column: 59, scope: !3405)
!3420 = !DILocation(line: 184, column: 10, scope: !3405)
!3421 = !DILocation(line: 186, column: 8, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3405, file: !743, line: 186, column: 3)
!3423 = !DILocation(line: 186, column: 23, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3422, file: !743, line: 186, column: 3)
!3425 = !DILocation(line: 186, column: 3, scope: !3422)
!3426 = !DILocation(line: 186, column: 52, scope: !3424)
!3427 = distinct !{!3427, !3425, !3428}
!3428 = !DILocation(line: 187, column: 5, scope: !3422)
!3429 = !DILocation(line: 188, column: 3, scope: !3405)
!3430 = !DILocation(line: 189, column: 1, scope: !3405)
!3431 = distinct !DISubprogram(name: "version_etc_va", scope: !743, file: !743, line: 196, type: !3432, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !739, variables: !3441)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{null, !3321, !25, !25, !25, !3434}
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !740, line: 189, size: 192, elements: !3436)
!3436 = !{!3437, !3438, !3439, !3440}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3435, file: !740, line: 189, baseType: !83, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3435, file: !740, line: 189, baseType: !83, size: 32, offset: 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3435, file: !740, line: 189, baseType: !22, size: 64, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3435, file: !740, line: 189, baseType: !22, size: 64, offset: 128)
!3441 = !{!3442, !3443, !3444, !3445, !3446, !3447, !3448}
!3442 = !DILocalVariable(name: "stream", arg: 1, scope: !3431, file: !743, line: 196, type: !3321)
!3443 = !DILocalVariable(name: "command_name", arg: 2, scope: !3431, file: !743, line: 197, type: !25)
!3444 = !DILocalVariable(name: "package", arg: 3, scope: !3431, file: !743, line: 197, type: !25)
!3445 = !DILocalVariable(name: "version", arg: 4, scope: !3431, file: !743, line: 198, type: !25)
!3446 = !DILocalVariable(name: "authors", arg: 5, scope: !3431, file: !743, line: 198, type: !3434)
!3447 = !DILocalVariable(name: "n_authors", scope: !3431, file: !743, line: 200, type: !27)
!3448 = !DILocalVariable(name: "authtab", scope: !3431, file: !743, line: 201, type: !3449)
!3449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 640, elements: !288)
!3450 = !DILocation(line: 196, column: 23, scope: !3431)
!3451 = !DILocation(line: 197, column: 29, scope: !3431)
!3452 = !DILocation(line: 197, column: 55, scope: !3431)
!3453 = !DILocation(line: 198, column: 29, scope: !3431)
!3454 = !DILocation(line: 198, column: 46, scope: !3431)
!3455 = !DILocation(line: 201, column: 3, scope: !3431)
!3456 = !DILocation(line: 201, column: 15, scope: !3431)
!3457 = !DILocation(line: 200, column: 10, scope: !3431)
!3458 = !DILocation(line: 205, column: 35, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3460, file: !743, line: 203, column: 3)
!3460 = distinct !DILexicalBlock(scope: !3431, file: !743, line: 203, column: 3)
!3461 = !DILocation(line: 205, column: 14, scope: !3459)
!3462 = !DILocation(line: 205, column: 33, scope: !3459)
!3463 = !DILocation(line: 205, column: 67, scope: !3459)
!3464 = !DILocation(line: 203, column: 3, scope: !3460)
!3465 = !DILocation(line: 208, column: 3, scope: !3431)
!3466 = !DILocation(line: 210, column: 1, scope: !3431)
!3467 = distinct !DISubprogram(name: "version_etc", scope: !743, file: !743, line: 227, type: !3468, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !739, variables: !3470)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{null, !3321, !25, !25, !25, null}
!3470 = !{!3471, !3472, !3473, !3474, !3475}
!3471 = !DILocalVariable(name: "stream", arg: 1, scope: !3467, file: !743, line: 227, type: !3321)
!3472 = !DILocalVariable(name: "command_name", arg: 2, scope: !3467, file: !743, line: 228, type: !25)
!3473 = !DILocalVariable(name: "package", arg: 3, scope: !3467, file: !743, line: 228, type: !25)
!3474 = !DILocalVariable(name: "version", arg: 4, scope: !3467, file: !743, line: 229, type: !25)
!3475 = !DILocalVariable(name: "authors", scope: !3467, file: !743, line: 231, type: !3476)
!3476 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !940, line: 46, baseType: !3477)
!3477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !690, line: 48, baseType: !3478)
!3478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !740, line: 231, baseType: !3479)
!3479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3435, size: 192, elements: !174)
!3480 = !DILocation(line: 227, column: 20, scope: !3467)
!3481 = !DILocation(line: 228, column: 26, scope: !3467)
!3482 = !DILocation(line: 228, column: 52, scope: !3467)
!3483 = !DILocation(line: 229, column: 26, scope: !3467)
!3484 = !DILocation(line: 231, column: 3, scope: !3467)
!3485 = !DILocation(line: 231, column: 11, scope: !3467)
!3486 = !DILocation(line: 233, column: 3, scope: !3467)
!3487 = !DILocation(line: 234, column: 3, scope: !3467)
!3488 = !DILocation(line: 235, column: 3, scope: !3467)
!3489 = !DILocation(line: 236, column: 1, scope: !3467)
!3490 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !743, file: !743, line: 239, type: !812, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !739, variables: !232)
!3491 = !DILocation(line: 245, column: 3, scope: !3490)
!3492 = !DILocation(line: 251, column: 3, scope: !3490)
!3493 = !DILocation(line: 256, column: 3, scope: !3490)
!3494 = !DILocation(line: 258, column: 1, scope: !3490)
!3495 = distinct !DISubprogram(name: "xnmalloc", scope: !750, file: !750, line: 105, type: !3496, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !746, variables: !3498)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!22, !27, !27}
!3498 = !{!3499, !3500}
!3499 = !DILocalVariable(name: "n", arg: 1, scope: !3495, file: !750, line: 105, type: !27)
!3500 = !DILocalVariable(name: "s", arg: 2, scope: !3495, file: !750, line: 105, type: !27)
!3501 = !DILocation(line: 105, column: 18, scope: !3495)
!3502 = !DILocation(line: 105, column: 28, scope: !3495)
!3503 = !DILocation(line: 107, column: 7, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3495, file: !750, line: 107, column: 7)
!3505 = !DILocation(line: 107, column: 7, scope: !3495)
!3506 = !DILocation(line: 108, column: 5, scope: !3504)
!3507 = !DILocation(line: 109, column: 21, scope: !3495)
!3508 = !DILocalVariable(name: "n", arg: 1, scope: !3509, file: !3510, line: 39, type: !27)
!3509 = distinct !DISubprogram(name: "xmalloc", scope: !3510, file: !3510, line: 39, type: !3511, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !746, variables: !3513)
!3510 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!22, !27}
!3513 = !{!3508, !3514}
!3514 = !DILocalVariable(name: "p", scope: !3509, file: !3510, line: 41, type: !22)
!3515 = !DILocation(line: 39, column: 17, scope: !3509, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 109, column: 10, scope: !3495)
!3517 = !DILocation(line: 41, column: 13, scope: !3509, inlinedAt: !3516)
!3518 = !DILocation(line: 41, column: 9, scope: !3509, inlinedAt: !3516)
!3519 = !DILocation(line: 42, column: 8, scope: !3520, inlinedAt: !3516)
!3520 = distinct !DILexicalBlock(scope: !3509, file: !3510, line: 42, column: 7)
!3521 = !DILocation(line: 42, column: 15, scope: !3520, inlinedAt: !3516)
!3522 = !DILocation(line: 42, column: 10, scope: !3520, inlinedAt: !3516)
!3523 = !DILocation(line: 43, column: 5, scope: !3520, inlinedAt: !3516)
!3524 = !DILocation(line: 109, column: 3, scope: !3495)
!3525 = !DILocation(line: 39, column: 17, scope: !3509)
!3526 = !DILocation(line: 41, column: 13, scope: !3509)
!3527 = !DILocation(line: 41, column: 9, scope: !3509)
!3528 = !DILocation(line: 42, column: 8, scope: !3520)
!3529 = !DILocation(line: 42, column: 15, scope: !3520)
!3530 = !DILocation(line: 42, column: 10, scope: !3520)
!3531 = !DILocation(line: 43, column: 5, scope: !3520)
!3532 = !DILocation(line: 44, column: 3, scope: !3509)
!3533 = distinct !DISubprogram(name: "xnrealloc", scope: !750, file: !750, line: 118, type: !3534, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !746, variables: !3536)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!22, !22, !27, !27}
!3536 = !{!3537, !3538, !3539}
!3537 = !DILocalVariable(name: "p", arg: 1, scope: !3533, file: !750, line: 118, type: !22)
!3538 = !DILocalVariable(name: "n", arg: 2, scope: !3533, file: !750, line: 118, type: !27)
!3539 = !DILocalVariable(name: "s", arg: 3, scope: !3533, file: !750, line: 118, type: !27)
!3540 = !DILocation(line: 118, column: 18, scope: !3533)
!3541 = !DILocation(line: 118, column: 28, scope: !3533)
!3542 = !DILocation(line: 118, column: 38, scope: !3533)
!3543 = !DILocation(line: 120, column: 7, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3533, file: !750, line: 120, column: 7)
!3545 = !DILocation(line: 120, column: 7, scope: !3533)
!3546 = !DILocation(line: 121, column: 5, scope: !3544)
!3547 = !DILocation(line: 122, column: 25, scope: !3533)
!3548 = !DILocalVariable(name: "p", arg: 1, scope: !3549, file: !3510, line: 51, type: !22)
!3549 = distinct !DISubprogram(name: "xrealloc", scope: !3510, file: !3510, line: 51, type: !3550, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !746, variables: !3552)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!22, !22, !27}
!3552 = !{!3548, !3553}
!3553 = !DILocalVariable(name: "n", arg: 2, scope: !3549, file: !3510, line: 51, type: !27)
!3554 = !DILocation(line: 51, column: 17, scope: !3549, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 122, column: 10, scope: !3533)
!3556 = !DILocation(line: 51, column: 27, scope: !3549, inlinedAt: !3555)
!3557 = !DILocation(line: 53, column: 8, scope: !3558, inlinedAt: !3555)
!3558 = distinct !DILexicalBlock(scope: !3549, file: !3510, line: 53, column: 7)
!3559 = !DILocation(line: 53, column: 13, scope: !3558, inlinedAt: !3555)
!3560 = !DILocation(line: 53, column: 10, scope: !3558, inlinedAt: !3555)
!3561 = !DILocation(line: 57, column: 7, scope: !3562, inlinedAt: !3555)
!3562 = distinct !DILexicalBlock(scope: !3558, file: !3510, line: 54, column: 5)
!3563 = !DILocation(line: 58, column: 7, scope: !3562, inlinedAt: !3555)
!3564 = !DILocation(line: 61, column: 7, scope: !3549, inlinedAt: !3555)
!3565 = !DILocation(line: 62, column: 8, scope: !3566, inlinedAt: !3555)
!3566 = distinct !DILexicalBlock(scope: !3549, file: !3510, line: 62, column: 7)
!3567 = !DILocation(line: 62, column: 13, scope: !3566, inlinedAt: !3555)
!3568 = !DILocation(line: 62, column: 10, scope: !3566, inlinedAt: !3555)
!3569 = !DILocation(line: 63, column: 5, scope: !3566, inlinedAt: !3555)
!3570 = !DILocation(line: 122, column: 3, scope: !3533)
!3571 = !DILocation(line: 51, column: 17, scope: !3549)
!3572 = !DILocation(line: 51, column: 27, scope: !3549)
!3573 = !DILocation(line: 53, column: 8, scope: !3558)
!3574 = !DILocation(line: 53, column: 13, scope: !3558)
!3575 = !DILocation(line: 53, column: 10, scope: !3558)
!3576 = !DILocation(line: 57, column: 7, scope: !3562)
!3577 = !DILocation(line: 58, column: 7, scope: !3562)
!3578 = !DILocation(line: 61, column: 7, scope: !3549)
!3579 = !DILocation(line: 62, column: 8, scope: !3566)
!3580 = !DILocation(line: 62, column: 13, scope: !3566)
!3581 = !DILocation(line: 62, column: 10, scope: !3566)
!3582 = !DILocation(line: 63, column: 5, scope: !3566)
!3583 = !DILocation(line: 65, column: 1, scope: !3549)
!3584 = !DILocation(line: 180, column: 19, scope: !751)
!3585 = !DILocation(line: 180, column: 30, scope: !751)
!3586 = !DILocation(line: 180, column: 41, scope: !751)
!3587 = !DILocation(line: 182, column: 14, scope: !751)
!3588 = !DILocation(line: 182, column: 10, scope: !751)
!3589 = !DILocation(line: 184, column: 9, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !751, file: !750, line: 184, column: 7)
!3591 = !DILocation(line: 184, column: 7, scope: !751)
!3592 = !DILocation(line: 186, column: 13, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !750, line: 186, column: 11)
!3594 = distinct !DILexicalBlock(scope: !3590, file: !750, line: 185, column: 5)
!3595 = !DILocation(line: 186, column: 11, scope: !3594)
!3596 = !DILocation(line: 194, column: 30, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3593, file: !750, line: 187, column: 9)
!3598 = !DILocation(line: 195, column: 16, scope: !3597)
!3599 = !DILocation(line: 195, column: 13, scope: !3597)
!3600 = !DILocation(line: 196, column: 9, scope: !3597)
!3601 = !DILocation(line: 204, column: 69, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !750, line: 204, column: 11)
!3603 = distinct !DILexicalBlock(scope: !3590, file: !750, line: 199, column: 5)
!3604 = !DILocation(line: 205, column: 11, scope: !3602)
!3605 = !DILocation(line: 204, column: 11, scope: !3603)
!3606 = !DILocation(line: 206, column: 9, scope: !3602)
!3607 = !DILocation(line: 210, column: 7, scope: !751)
!3608 = !DILocation(line: 211, column: 25, scope: !751)
!3609 = !DILocation(line: 51, column: 17, scope: !3549, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 211, column: 10, scope: !751)
!3611 = !DILocation(line: 51, column: 27, scope: !3549, inlinedAt: !3610)
!3612 = !DILocation(line: 53, column: 10, scope: !3558, inlinedAt: !3610)
!3613 = !DILocation(line: 207, column: 14, scope: !3603)
!3614 = !DILocation(line: 207, column: 18, scope: !3603)
!3615 = !DILocation(line: 207, column: 9, scope: !3603)
!3616 = !DILocation(line: 53, column: 8, scope: !3558, inlinedAt: !3610)
!3617 = !DILocation(line: 57, column: 7, scope: !3562, inlinedAt: !3610)
!3618 = !DILocation(line: 58, column: 7, scope: !3562, inlinedAt: !3610)
!3619 = !DILocation(line: 61, column: 7, scope: !3549, inlinedAt: !3610)
!3620 = !DILocation(line: 62, column: 8, scope: !3566, inlinedAt: !3610)
!3621 = !DILocation(line: 62, column: 13, scope: !3566, inlinedAt: !3610)
!3622 = !DILocation(line: 62, column: 10, scope: !3566, inlinedAt: !3610)
!3623 = !DILocation(line: 63, column: 5, scope: !3566, inlinedAt: !3610)
!3624 = !DILocation(line: 211, column: 3, scope: !751)
!3625 = distinct !DISubprogram(name: "xcharalloc", scope: !750, file: !750, line: 220, type: !2550, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !746, variables: !3626)
!3626 = !{!3627}
!3627 = !DILocalVariable(name: "n", arg: 1, scope: !3625, file: !750, line: 220, type: !27)
!3628 = !DILocation(line: 220, column: 20, scope: !3625)
!3629 = !DILocation(line: 39, column: 17, scope: !3509, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 222, column: 10, scope: !3625)
!3631 = !DILocation(line: 41, column: 13, scope: !3509, inlinedAt: !3630)
!3632 = !DILocation(line: 41, column: 9, scope: !3509, inlinedAt: !3630)
!3633 = !DILocation(line: 42, column: 8, scope: !3520, inlinedAt: !3630)
!3634 = !DILocation(line: 42, column: 15, scope: !3520, inlinedAt: !3630)
!3635 = !DILocation(line: 42, column: 10, scope: !3520, inlinedAt: !3630)
!3636 = !DILocation(line: 43, column: 5, scope: !3520, inlinedAt: !3630)
!3637 = !DILocation(line: 222, column: 3, scope: !3625)
!3638 = distinct !DISubprogram(name: "x2realloc", scope: !3510, file: !3510, line: 74, type: !3639, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !746, variables: !3641)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!22, !22, !754}
!3641 = !{!3642, !3643}
!3642 = !DILocalVariable(name: "p", arg: 1, scope: !3638, file: !3510, line: 74, type: !22)
!3643 = !DILocalVariable(name: "pn", arg: 2, scope: !3638, file: !3510, line: 74, type: !754)
!3644 = !DILocation(line: 74, column: 18, scope: !3638)
!3645 = !DILocation(line: 74, column: 29, scope: !3638)
!3646 = !DILocation(line: 180, column: 19, scope: !751, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 76, column: 10, scope: !3638)
!3648 = !DILocation(line: 180, column: 30, scope: !751, inlinedAt: !3647)
!3649 = !DILocation(line: 180, column: 41, scope: !751, inlinedAt: !3647)
!3650 = !DILocation(line: 182, column: 14, scope: !751, inlinedAt: !3647)
!3651 = !DILocation(line: 182, column: 10, scope: !751, inlinedAt: !3647)
!3652 = !DILocation(line: 184, column: 9, scope: !3590, inlinedAt: !3647)
!3653 = !DILocation(line: 184, column: 7, scope: !751, inlinedAt: !3647)
!3654 = !DILocation(line: 186, column: 13, scope: !3593, inlinedAt: !3647)
!3655 = !DILocation(line: 186, column: 11, scope: !3594, inlinedAt: !3647)
!3656 = !DILocation(line: 210, column: 7, scope: !751, inlinedAt: !3647)
!3657 = !DILocation(line: 51, column: 17, scope: !3549, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 211, column: 10, scope: !751, inlinedAt: !3647)
!3659 = !DILocation(line: 51, column: 27, scope: !3549, inlinedAt: !3658)
!3660 = !DILocation(line: 53, column: 10, scope: !3558, inlinedAt: !3658)
!3661 = !DILocation(line: 205, column: 11, scope: !3602, inlinedAt: !3647)
!3662 = !DILocation(line: 204, column: 11, scope: !3603, inlinedAt: !3647)
!3663 = !DILocation(line: 206, column: 9, scope: !3602, inlinedAt: !3647)
!3664 = !DILocation(line: 207, column: 14, scope: !3603, inlinedAt: !3647)
!3665 = !DILocation(line: 207, column: 18, scope: !3603, inlinedAt: !3647)
!3666 = !DILocation(line: 207, column: 9, scope: !3603, inlinedAt: !3647)
!3667 = !DILocation(line: 53, column: 8, scope: !3558, inlinedAt: !3658)
!3668 = !DILocation(line: 57, column: 7, scope: !3562, inlinedAt: !3658)
!3669 = !DILocation(line: 58, column: 7, scope: !3562, inlinedAt: !3658)
!3670 = !DILocation(line: 61, column: 7, scope: !3549, inlinedAt: !3658)
!3671 = !DILocation(line: 62, column: 8, scope: !3566, inlinedAt: !3658)
!3672 = !DILocation(line: 62, column: 13, scope: !3566, inlinedAt: !3658)
!3673 = !DILocation(line: 62, column: 10, scope: !3566, inlinedAt: !3658)
!3674 = !DILocation(line: 63, column: 5, scope: !3566, inlinedAt: !3658)
!3675 = !DILocation(line: 76, column: 3, scope: !3638)
!3676 = distinct !DISubprogram(name: "xzalloc", scope: !3510, file: !3510, line: 84, type: !3511, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !746, variables: !3677)
!3677 = !{!3678}
!3678 = !DILocalVariable(name: "s", arg: 1, scope: !3676, file: !3510, line: 84, type: !27)
!3679 = !DILocation(line: 84, column: 17, scope: !3676)
!3680 = !DILocation(line: 39, column: 17, scope: !3509, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 86, column: 18, scope: !3676)
!3682 = !DILocation(line: 41, column: 13, scope: !3509, inlinedAt: !3681)
!3683 = !DILocation(line: 41, column: 9, scope: !3509, inlinedAt: !3681)
!3684 = !DILocation(line: 42, column: 8, scope: !3520, inlinedAt: !3681)
!3685 = !DILocation(line: 42, column: 15, scope: !3520, inlinedAt: !3681)
!3686 = !DILocation(line: 42, column: 10, scope: !3520, inlinedAt: !3681)
!3687 = !DILocation(line: 43, column: 5, scope: !3520, inlinedAt: !3681)
!3688 = !DILocation(line: 86, column: 10, scope: !3676)
!3689 = !DILocation(line: 86, column: 3, scope: !3676)
!3690 = distinct !DISubprogram(name: "xcalloc", scope: !3510, file: !3510, line: 93, type: !3496, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !746, variables: !3691)
!3691 = !{!3692, !3693, !3694}
!3692 = !DILocalVariable(name: "n", arg: 1, scope: !3690, file: !3510, line: 93, type: !27)
!3693 = !DILocalVariable(name: "s", arg: 2, scope: !3690, file: !3510, line: 93, type: !27)
!3694 = !DILocalVariable(name: "p", scope: !3690, file: !3510, line: 95, type: !22)
!3695 = !DILocation(line: 93, column: 17, scope: !3690)
!3696 = !DILocation(line: 93, column: 27, scope: !3690)
!3697 = !DILocation(line: 100, column: 7, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3690, file: !3510, line: 100, column: 7)
!3699 = !DILocation(line: 101, column: 7, scope: !3698)
!3700 = !DILocation(line: 101, column: 18, scope: !3698)
!3701 = !DILocation(line: 95, column: 9, scope: !3690)
!3702 = !DILocation(line: 101, column: 16, scope: !3698)
!3703 = !DILocation(line: 100, column: 7, scope: !3690)
!3704 = !DILocation(line: 102, column: 5, scope: !3698)
!3705 = !DILocation(line: 103, column: 3, scope: !3690)
!3706 = distinct !DISubprogram(name: "xmemdup", scope: !3510, file: !3510, line: 111, type: !3707, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !746, variables: !3709)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!22, !1547, !27}
!3709 = !{!3710, !3711}
!3710 = !DILocalVariable(name: "p", arg: 1, scope: !3706, file: !3510, line: 111, type: !1547)
!3711 = !DILocalVariable(name: "s", arg: 2, scope: !3706, file: !3510, line: 111, type: !27)
!3712 = !DILocation(line: 111, column: 22, scope: !3706)
!3713 = !DILocation(line: 111, column: 32, scope: !3706)
!3714 = !DILocation(line: 39, column: 17, scope: !3509, inlinedAt: !3715)
!3715 = distinct !DILocation(line: 113, column: 18, scope: !3706)
!3716 = !DILocation(line: 41, column: 13, scope: !3509, inlinedAt: !3715)
!3717 = !DILocation(line: 41, column: 9, scope: !3509, inlinedAt: !3715)
!3718 = !DILocation(line: 42, column: 8, scope: !3520, inlinedAt: !3715)
!3719 = !DILocation(line: 42, column: 15, scope: !3520, inlinedAt: !3715)
!3720 = !DILocation(line: 42, column: 10, scope: !3520, inlinedAt: !3715)
!3721 = !DILocation(line: 43, column: 5, scope: !3520, inlinedAt: !3715)
!3722 = !DILocation(line: 113, column: 10, scope: !3706)
!3723 = !DILocation(line: 113, column: 3, scope: !3706)
!3724 = distinct !DISubprogram(name: "xstrdup", scope: !3510, file: !3510, line: 119, type: !2750, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !746, variables: !3725)
!3725 = !{!3726}
!3726 = !DILocalVariable(name: "string", arg: 1, scope: !3724, file: !3510, line: 119, type: !25)
!3727 = !DILocation(line: 119, column: 22, scope: !3724)
!3728 = !DILocation(line: 121, column: 27, scope: !3724)
!3729 = !DILocation(line: 121, column: 43, scope: !3724)
!3730 = !DILocation(line: 111, column: 22, scope: !3706, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 121, column: 10, scope: !3724)
!3732 = !DILocation(line: 111, column: 32, scope: !3706, inlinedAt: !3731)
!3733 = !DILocation(line: 39, column: 17, scope: !3509, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 113, column: 18, scope: !3706, inlinedAt: !3731)
!3735 = !DILocation(line: 41, column: 13, scope: !3509, inlinedAt: !3734)
!3736 = !DILocation(line: 41, column: 9, scope: !3509, inlinedAt: !3734)
!3737 = !DILocation(line: 42, column: 8, scope: !3520, inlinedAt: !3734)
!3738 = !DILocation(line: 42, column: 15, scope: !3520, inlinedAt: !3734)
!3739 = !DILocation(line: 42, column: 10, scope: !3520, inlinedAt: !3734)
!3740 = !DILocation(line: 43, column: 5, scope: !3520, inlinedAt: !3734)
!3741 = !DILocation(line: 113, column: 10, scope: !3706, inlinedAt: !3731)
!3742 = !DILocation(line: 121, column: 3, scope: !3724)
!3743 = distinct !DISubprogram(name: "xalloc_die", scope: !3744, file: !3744, line: 32, type: !812, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !763, variables: !232)
!3744 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3745 = !DILocation(line: 34, column: 10, scope: !3743)
!3746 = !DILocation(line: 34, column: 33, scope: !3743)
!3747 = !DILocation(line: 34, column: 3, scope: !3743)
!3748 = !DILocation(line: 40, column: 3, scope: !3743)
!3749 = distinct !DISubprogram(name: "rpl_calloc", scope: !3750, file: !3750, line: 42, type: !3496, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !765, variables: !3751)
!3750 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3751 = !{!3752, !3753, !3754, !3755}
!3752 = !DILocalVariable(name: "n", arg: 1, scope: !3749, file: !3750, line: 42, type: !27)
!3753 = !DILocalVariable(name: "s", arg: 2, scope: !3749, file: !3750, line: 42, type: !27)
!3754 = !DILocalVariable(name: "result", scope: !3749, file: !3750, line: 44, type: !22)
!3755 = !DILocalVariable(name: "bytes", scope: !3756, file: !3750, line: 56, type: !27)
!3756 = distinct !DILexicalBlock(scope: !3757, file: !3750, line: 53, column: 5)
!3757 = distinct !DILexicalBlock(scope: !3749, file: !3750, line: 47, column: 7)
!3758 = !DILocation(line: 42, column: 20, scope: !3749)
!3759 = !DILocation(line: 42, column: 30, scope: !3749)
!3760 = !DILocation(line: 47, column: 9, scope: !3757)
!3761 = !DILocation(line: 47, column: 19, scope: !3757)
!3762 = !DILocation(line: 47, column: 14, scope: !3757)
!3763 = !DILocation(line: 56, column: 24, scope: !3756)
!3764 = !DILocation(line: 56, column: 14, scope: !3756)
!3765 = !DILocation(line: 57, column: 17, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3756, file: !3750, line: 57, column: 11)
!3767 = !DILocation(line: 57, column: 21, scope: !3766)
!3768 = !DILocation(line: 57, column: 11, scope: !3756)
!3769 = !DILocation(line: 59, column: 11, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3766, file: !3750, line: 58, column: 9)
!3771 = !DILocation(line: 59, column: 17, scope: !3770)
!3772 = !DILocation(line: 65, column: 12, scope: !3749)
!3773 = !DILocation(line: 44, column: 9, scope: !3749)
!3774 = !DILocation(line: 72, column: 3, scope: !3749)
!3775 = !DILocation(line: 73, column: 1, scope: !3749)
!3776 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3777, file: !3777, line: 28, type: !3778, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !767, variables: !3820)
!3777 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!36, !3780, !939, !36}
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !137, line: 7, baseType: !3782)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !139, line: 241, size: 1728, elements: !3783)
!3783 = !{!3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3782, file: !139, line: 242, baseType: !36, size: 32)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3782, file: !139, line: 247, baseType: !20, size: 64, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3782, file: !139, line: 248, baseType: !20, size: 64, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3782, file: !139, line: 249, baseType: !20, size: 64, offset: 192)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3782, file: !139, line: 250, baseType: !20, size: 64, offset: 256)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3782, file: !139, line: 251, baseType: !20, size: 64, offset: 320)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3782, file: !139, line: 252, baseType: !20, size: 64, offset: 384)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3782, file: !139, line: 253, baseType: !20, size: 64, offset: 448)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3782, file: !139, line: 254, baseType: !20, size: 64, offset: 512)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3782, file: !139, line: 256, baseType: !20, size: 64, offset: 576)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3782, file: !139, line: 257, baseType: !20, size: 64, offset: 640)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3782, file: !139, line: 258, baseType: !20, size: 64, offset: 704)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3782, file: !139, line: 260, baseType: !3797, size: 64, offset: 768)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !139, line: 156, size: 192, elements: !3799)
!3799 = !{!3800, !3801, !3803}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3798, file: !139, line: 157, baseType: !3797, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3798, file: !139, line: 158, baseType: !3802, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3798, file: !139, line: 162, baseType: !36, size: 32, offset: 128)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3782, file: !139, line: 262, baseType: !3802, size: 64, offset: 832)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3782, file: !139, line: 264, baseType: !36, size: 32, offset: 896)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3782, file: !139, line: 268, baseType: !36, size: 32, offset: 928)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3782, file: !139, line: 270, baseType: !165, size: 64, offset: 960)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3782, file: !139, line: 274, baseType: !169, size: 16, offset: 1024)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3782, file: !139, line: 275, baseType: !171, size: 8, offset: 1040)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3782, file: !139, line: 276, baseType: !173, size: 8, offset: 1048)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3782, file: !139, line: 280, baseType: !177, size: 64, offset: 1088)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3782, file: !139, line: 289, baseType: !180, size: 64, offset: 1152)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3782, file: !139, line: 297, baseType: !22, size: 64, offset: 1216)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3782, file: !139, line: 298, baseType: !22, size: 64, offset: 1280)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3782, file: !139, line: 299, baseType: !22, size: 64, offset: 1344)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3782, file: !139, line: 300, baseType: !22, size: 64, offset: 1408)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3782, file: !139, line: 302, baseType: !27, size: 64, offset: 1472)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3782, file: !139, line: 303, baseType: !36, size: 32, offset: 1536)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3782, file: !139, line: 305, baseType: !188, size: 160, offset: 1568)
!3820 = !{!3821, !3822, !3823, !3824}
!3821 = !DILocalVariable(name: "fp", arg: 1, scope: !3776, file: !3777, line: 28, type: !3780)
!3822 = !DILocalVariable(name: "offset", arg: 2, scope: !3776, file: !3777, line: 28, type: !939)
!3823 = !DILocalVariable(name: "whence", arg: 3, scope: !3776, file: !3777, line: 28, type: !36)
!3824 = !DILocalVariable(name: "pos", scope: !3825, file: !3777, line: 116, type: !939)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !3777, line: 112, column: 5)
!3826 = distinct !DILexicalBlock(scope: !3776, file: !3777, line: 51, column: 7)
!3827 = !DILocation(line: 28, column: 15, scope: !3776)
!3828 = !DILocation(line: 28, column: 25, scope: !3776)
!3829 = !DILocation(line: 28, column: 37, scope: !3776)
!3830 = !DILocation(line: 51, column: 11, scope: !3826)
!3831 = !{!3832, !804, i64 16}
!3832 = !{!"_IO_FILE", !921, i64 0, !804, i64 8, !804, i64 16, !804, i64 24, !804, i64 32, !804, i64 40, !804, i64 48, !804, i64 56, !804, i64 64, !804, i64 72, !804, i64 80, !804, i64 88, !804, i64 96, !804, i64 104, !921, i64 112, !921, i64 116, !848, i64 120, !2051, i64 128, !805, i64 130, !805, i64 131, !804, i64 136, !848, i64 144, !804, i64 152, !804, i64 160, !804, i64 168, !804, i64 176, !848, i64 184, !921, i64 192, !805, i64 196}
!3833 = !DILocation(line: 51, column: 31, scope: !3826)
!3834 = !{!3832, !804, i64 8}
!3835 = !DILocation(line: 51, column: 24, scope: !3826)
!3836 = !DILocation(line: 52, column: 7, scope: !3826)
!3837 = !DILocation(line: 52, column: 14, scope: !3826)
!3838 = !{!3832, !804, i64 40}
!3839 = !DILocation(line: 52, column: 35, scope: !3826)
!3840 = !{!3832, !804, i64 32}
!3841 = !DILocation(line: 52, column: 28, scope: !3826)
!3842 = !DILocation(line: 53, column: 7, scope: !3826)
!3843 = !DILocation(line: 53, column: 14, scope: !3826)
!3844 = !{!3832, !804, i64 72}
!3845 = !DILocation(line: 53, column: 28, scope: !3826)
!3846 = !DILocation(line: 51, column: 7, scope: !3776)
!3847 = !DILocation(line: 116, column: 26, scope: !3825)
!3848 = !DILocation(line: 116, column: 19, scope: !3825)
!3849 = !DILocation(line: 116, column: 13, scope: !3825)
!3850 = !DILocation(line: 117, column: 15, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3825, file: !3777, line: 117, column: 11)
!3852 = !DILocation(line: 117, column: 11, scope: !3825)
!3853 = !DILocation(line: 127, column: 11, scope: !3825)
!3854 = !DILocation(line: 127, column: 18, scope: !3825)
!3855 = !{!3832, !921, i64 0}
!3856 = !DILocation(line: 128, column: 11, scope: !3825)
!3857 = !DILocation(line: 128, column: 19, scope: !3825)
!3858 = !{!3832, !848, i64 144}
!3859 = !DILocation(line: 159, column: 7, scope: !3825)
!3860 = !DILocation(line: 161, column: 10, scope: !3776)
!3861 = !DILocation(line: 161, column: 3, scope: !3776)
!3862 = !DILocation(line: 162, column: 1, scope: !3776)
!3863 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3864, file: !3864, line: 334, type: !3865, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !769, variables: !3879)
!3864 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!27, !3867, !25, !27, !3868}
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1801, line: 6, baseType: !3870)
!3870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1803, line: 21, baseType: !3871)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1803, line: 13, size: 64, elements: !3872)
!3872 = !{!3873, !3874}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3871, file: !1803, line: 15, baseType: !36, size: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3871, file: !1803, line: 20, baseType: !3875, size: 32, offset: 32)
!3875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3871, file: !1803, line: 16, size: 32, elements: !3876)
!3876 = !{!3877, !3878}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3875, file: !1803, line: 18, baseType: !83, size: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3875, file: !1803, line: 19, baseType: !1812, size: 32)
!3879 = !{!3880, !3881, !3882, !3883, !3884, !3885, !3886}
!3880 = !DILocalVariable(name: "pwc", arg: 1, scope: !3863, file: !3864, line: 334, type: !3867)
!3881 = !DILocalVariable(name: "s", arg: 2, scope: !3863, file: !3864, line: 334, type: !25)
!3882 = !DILocalVariable(name: "n", arg: 3, scope: !3863, file: !3864, line: 334, type: !27)
!3883 = !DILocalVariable(name: "ps", arg: 4, scope: !3863, file: !3864, line: 334, type: !3868)
!3884 = !DILocalVariable(name: "ret", scope: !3863, file: !3864, line: 336, type: !27)
!3885 = !DILocalVariable(name: "wc", scope: !3863, file: !3864, line: 337, type: !1817)
!3886 = !DILocalVariable(name: "uc", scope: !3887, file: !3864, line: 398, type: !80)
!3887 = distinct !DILexicalBlock(scope: !3888, file: !3864, line: 397, column: 5)
!3888 = distinct !DILexicalBlock(scope: !3863, file: !3864, line: 396, column: 7)
!3889 = !DILocation(line: 334, column: 23, scope: !3863)
!3890 = !DILocation(line: 334, column: 40, scope: !3863)
!3891 = !DILocation(line: 334, column: 50, scope: !3863)
!3892 = !DILocation(line: 334, column: 64, scope: !3863)
!3893 = !DILocation(line: 337, column: 3, scope: !3863)
!3894 = !DILocation(line: 353, column: 9, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3863, file: !3864, line: 353, column: 7)
!3896 = !DILocation(line: 353, column: 7, scope: !3863)
!3897 = !DILocation(line: 388, column: 9, scope: !3863)
!3898 = !DILocation(line: 336, column: 10, scope: !3863)
!3899 = !DILocation(line: 396, column: 19, scope: !3888)
!3900 = !DILocation(line: 396, column: 31, scope: !3888)
!3901 = !DILocation(line: 396, column: 26, scope: !3888)
!3902 = !DILocation(line: 396, column: 41, scope: !3888)
!3903 = !DILocation(line: 396, column: 7, scope: !3863)
!3904 = !DILocation(line: 398, column: 26, scope: !3887)
!3905 = !DILocation(line: 398, column: 21, scope: !3887)
!3906 = !DILocation(line: 399, column: 14, scope: !3887)
!3907 = !DILocation(line: 399, column: 12, scope: !3887)
!3908 = !DILocation(line: 405, column: 1, scope: !3863)
!3909 = distinct !DISubprogram(name: "close_stream", scope: !3910, file: !3910, line: 56, type: !3911, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !772, variables: !3953)
!3910 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!36, !3913}
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !137, line: 7, baseType: !3915)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !139, line: 241, size: 1728, elements: !3916)
!3916 = !{!3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3915, file: !139, line: 242, baseType: !36, size: 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3915, file: !139, line: 247, baseType: !20, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3915, file: !139, line: 248, baseType: !20, size: 64, offset: 128)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3915, file: !139, line: 249, baseType: !20, size: 64, offset: 192)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3915, file: !139, line: 250, baseType: !20, size: 64, offset: 256)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3915, file: !139, line: 251, baseType: !20, size: 64, offset: 320)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3915, file: !139, line: 252, baseType: !20, size: 64, offset: 384)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3915, file: !139, line: 253, baseType: !20, size: 64, offset: 448)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3915, file: !139, line: 254, baseType: !20, size: 64, offset: 512)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3915, file: !139, line: 256, baseType: !20, size: 64, offset: 576)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3915, file: !139, line: 257, baseType: !20, size: 64, offset: 640)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3915, file: !139, line: 258, baseType: !20, size: 64, offset: 704)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3915, file: !139, line: 260, baseType: !3930, size: 64, offset: 768)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !139, line: 156, size: 192, elements: !3932)
!3932 = !{!3933, !3934, !3936}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3931, file: !139, line: 157, baseType: !3930, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3931, file: !139, line: 158, baseType: !3935, size: 64, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3931, file: !139, line: 162, baseType: !36, size: 32, offset: 128)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3915, file: !139, line: 262, baseType: !3935, size: 64, offset: 832)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3915, file: !139, line: 264, baseType: !36, size: 32, offset: 896)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3915, file: !139, line: 268, baseType: !36, size: 32, offset: 928)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3915, file: !139, line: 270, baseType: !165, size: 64, offset: 960)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3915, file: !139, line: 274, baseType: !169, size: 16, offset: 1024)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3915, file: !139, line: 275, baseType: !171, size: 8, offset: 1040)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3915, file: !139, line: 276, baseType: !173, size: 8, offset: 1048)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3915, file: !139, line: 280, baseType: !177, size: 64, offset: 1088)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3915, file: !139, line: 289, baseType: !180, size: 64, offset: 1152)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3915, file: !139, line: 297, baseType: !22, size: 64, offset: 1216)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3915, file: !139, line: 298, baseType: !22, size: 64, offset: 1280)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3915, file: !139, line: 299, baseType: !22, size: 64, offset: 1344)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3915, file: !139, line: 300, baseType: !22, size: 64, offset: 1408)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3915, file: !139, line: 302, baseType: !27, size: 64, offset: 1472)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3915, file: !139, line: 303, baseType: !36, size: 32, offset: 1536)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3915, file: !139, line: 305, baseType: !188, size: 160, offset: 1568)
!3953 = !{!3954, !3955, !3957, !3958}
!3954 = !DILocalVariable(name: "stream", arg: 1, scope: !3909, file: !3910, line: 56, type: !3913)
!3955 = !DILocalVariable(name: "some_pending", scope: !3909, file: !3910, line: 58, type: !3956)
!3956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!3957 = !DILocalVariable(name: "prev_fail", scope: !3909, file: !3910, line: 59, type: !3956)
!3958 = !DILocalVariable(name: "fclose_fail", scope: !3909, file: !3910, line: 60, type: !3956)
!3959 = !DILocation(line: 56, column: 21, scope: !3909)
!3960 = !DILocation(line: 58, column: 30, scope: !3909)
!3961 = !DILocalVariable(name: "__stream", arg: 1, scope: !3962, file: !3963, line: 132, type: !3913)
!3962 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3963, file: !3963, line: 132, type: !3911, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !772, variables: !3964)
!3963 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3964 = !{!3961}
!3965 = !DILocation(line: 132, column: 1, scope: !3962, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 59, column: 27, scope: !3909)
!3967 = !DILocation(line: 134, column: 10, scope: !3962, inlinedAt: !3966)
!3968 = !DILocation(line: 59, column: 43, scope: !3909)
!3969 = !DILocation(line: 60, column: 29, scope: !3909)
!3970 = !DILocation(line: 60, column: 45, scope: !3909)
!3971 = !DILocation(line: 70, column: 17, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3909, file: !3910, line: 70, column: 7)
!3973 = !DILocation(line: 58, column: 50, scope: !3909)
!3974 = !DILocation(line: 70, column: 33, scope: !3972)
!3975 = !DILocation(line: 70, column: 53, scope: !3972)
!3976 = !DILocation(line: 70, column: 59, scope: !3972)
!3977 = !DILocation(line: 70, column: 7, scope: !3909)
!3978 = !DILocation(line: 72, column: 11, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3972, file: !3910, line: 71, column: 5)
!3980 = !DILocation(line: 73, column: 9, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3979, file: !3910, line: 72, column: 11)
!3982 = !DILocation(line: 73, column: 15, scope: !3981)
!3983 = !DILocation(line: 78, column: 1, scope: !3909)
!3984 = distinct !DISubprogram(name: "last_component", scope: !3985, file: !3985, line: 30, type: !2750, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !774, variables: !3986)
!3985 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3986 = !{!3987, !3988, !3989, !3990}
!3987 = !DILocalVariable(name: "name", arg: 1, scope: !3984, file: !3985, line: 30, type: !25)
!3988 = !DILocalVariable(name: "base", scope: !3984, file: !3985, line: 32, type: !25)
!3989 = !DILocalVariable(name: "p", scope: !3984, file: !3985, line: 33, type: !25)
!3990 = !DILocalVariable(name: "saw_slash", scope: !3984, file: !3985, line: 34, type: !44)
!3991 = !DILocation(line: 30, column: 29, scope: !3984)
!3992 = !DILocation(line: 32, column: 15, scope: !3984)
!3993 = !DILocation(line: 34, column: 8, scope: !3984)
!3994 = !DILocation(line: 36, column: 3, scope: !3984)
!3995 = !DILocation(line: 36, column: 10, scope: !3984)
!3996 = !DILocation(line: 37, column: 9, scope: !3984)
!3997 = distinct !{!3997, !3994, !3996}
!3998 = !DILocation(line: 39, column: 3, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3984, file: !3985, line: 39, column: 3)
!4000 = !DILocation(line: 39, column: 18, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3999, file: !3985, line: 39, column: 3)
!4002 = !DILocation(line: 33, column: 15, scope: !3984)
!4003 = !DILocation(line: 43, column: 16, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !4005, file: !3985, line: 43, column: 16)
!4005 = distinct !DILexicalBlock(scope: !4006, file: !3985, line: 41, column: 11)
!4006 = distinct !DILexicalBlock(scope: !4001, file: !3985, line: 40, column: 5)
!4007 = !DILocation(line: 43, column: 16, scope: !4005)
!4008 = !DILocation(line: 39, column: 23, scope: !4001)
!4009 = !DILocation(line: 39, column: 3, scope: !4001)
!4010 = distinct !{!4010, !3998, !4011}
!4011 = !DILocation(line: 48, column: 5, scope: !3999)
!4012 = !DILocation(line: 50, column: 3, scope: !3984)
!4013 = distinct !DISubprogram(name: "base_len", scope: !3985, file: !3985, line: 58, type: !4014, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !774, variables: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!27, !25}
!4016 = !{!4017, !4018, !4019}
!4017 = !DILocalVariable(name: "name", arg: 1, scope: !4013, file: !3985, line: 58, type: !25)
!4018 = !DILocalVariable(name: "len", scope: !4013, file: !3985, line: 60, type: !27)
!4019 = !DILocalVariable(name: "prefix_len", scope: !4013, file: !3985, line: 61, type: !27)
!4020 = !DILocation(line: 58, column: 23, scope: !4013)
!4021 = !DILocation(line: 61, column: 10, scope: !4013)
!4022 = !DILocation(line: 63, column: 14, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4013, file: !3985, line: 63, column: 3)
!4024 = !DILocation(line: 60, column: 10, scope: !4013)
!4025 = !DILocation(line: 63, column: 32, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4023, file: !3985, line: 63, column: 3)
!4027 = !DILocation(line: 63, column: 38, scope: !4026)
!4028 = !DILocation(line: 63, column: 41, scope: !4026)
!4029 = distinct !{!4029, !4030, !4031}
!4030 = !DILocation(line: 63, column: 3, scope: !4023)
!4031 = !DILocation(line: 64, column: 5, scope: !4023)
!4032 = !DILocation(line: 74, column: 3, scope: !4013)
!4033 = distinct !DISubprogram(name: "hard_locale", scope: !4034, file: !4034, line: 38, type: !4035, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !777, variables: !4037)
!4034 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!44, !36}
!4037 = !{!4038, !4039, !4040}
!4038 = !DILocalVariable(name: "category", arg: 1, scope: !4033, file: !4034, line: 38, type: !36)
!4039 = !DILocalVariable(name: "hard", scope: !4033, file: !4034, line: 40, type: !44)
!4040 = !DILocalVariable(name: "p", scope: !4033, file: !4034, line: 41, type: !25)
!4041 = !DILocation(line: 38, column: 18, scope: !4033)
!4042 = !DILocation(line: 40, column: 8, scope: !4033)
!4043 = !DILocation(line: 41, column: 19, scope: !4033)
!4044 = !DILocation(line: 41, column: 15, scope: !4033)
!4045 = !DILocation(line: 43, column: 7, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4033, file: !4034, line: 43, column: 7)
!4047 = !DILocation(line: 43, column: 7, scope: !4033)
!4048 = !DILocation(line: 47, column: 15, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4050, file: !4034, line: 47, column: 15)
!4050 = distinct !DILexicalBlock(scope: !4051, file: !4034, line: 46, column: 9)
!4051 = distinct !DILexicalBlock(scope: !4052, file: !4034, line: 45, column: 11)
!4052 = distinct !DILexicalBlock(scope: !4046, file: !4034, line: 44, column: 5)
!4053 = !DILocation(line: 47, column: 31, scope: !4049)
!4054 = !DILocation(line: 47, column: 36, scope: !4049)
!4055 = !DILocation(line: 47, column: 39, scope: !4049)
!4056 = !DILocation(line: 47, column: 59, scope: !4049)
!4057 = !DILocation(line: 47, column: 15, scope: !4050)
!4058 = !DILocation(line: 48, column: 13, scope: !4049)
!4059 = !DILocation(line: 71, column: 3, scope: !4033)
!4060 = distinct !DISubprogram(name: "locale_charset", scope: !674, file: !674, line: 393, type: !4061, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !331, variables: !4063)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!25}
!4063 = !{!4064, !4065}
!4064 = !DILocalVariable(name: "codeset", scope: !4060, file: !674, line: 395, type: !25)
!4065 = !DILocalVariable(name: "aliases", scope: !4060, file: !674, line: 396, type: !25)
!4066 = !DILocalVariable(name: "buf1", scope: !4067, file: !674, line: 196, type: !4134)
!4067 = distinct !DILexicalBlock(scope: !4068, file: !674, line: 194, column: 21)
!4068 = distinct !DILexicalBlock(scope: !4069, file: !674, line: 193, column: 19)
!4069 = distinct !DILexicalBlock(scope: !4070, file: !674, line: 193, column: 19)
!4070 = distinct !DILexicalBlock(scope: !4071, file: !674, line: 188, column: 17)
!4071 = distinct !DILexicalBlock(scope: !4072, file: !674, line: 181, column: 19)
!4072 = distinct !DILexicalBlock(scope: !4073, file: !674, line: 177, column: 13)
!4073 = distinct !DILexicalBlock(scope: !4074, file: !674, line: 173, column: 15)
!4074 = distinct !DILexicalBlock(scope: !4075, file: !674, line: 161, column: 9)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !674, line: 157, column: 11)
!4076 = distinct !DILexicalBlock(scope: !4077, file: !674, line: 130, column: 5)
!4077 = distinct !DILexicalBlock(scope: !4078, file: !674, line: 129, column: 7)
!4078 = distinct !DISubprogram(name: "get_charset_aliases", scope: !674, file: !674, line: 124, type: !4061, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !331, variables: !4079)
!4079 = !{!4080, !4081, !4082, !4083, !4084, !4086, !4087, !4088, !4089, !4130, !4131, !4132, !4066, !4133, !4137, !4138, !4139}
!4080 = !DILocalVariable(name: "cp", scope: !4078, file: !674, line: 126, type: !25)
!4081 = !DILocalVariable(name: "dir", scope: !4076, file: !674, line: 132, type: !25)
!4082 = !DILocalVariable(name: "base", scope: !4076, file: !674, line: 133, type: !25)
!4083 = !DILocalVariable(name: "file_name", scope: !4076, file: !674, line: 134, type: !20)
!4084 = !DILocalVariable(name: "dir_len", scope: !4085, file: !674, line: 144, type: !27)
!4085 = distinct !DILexicalBlock(scope: !4076, file: !674, line: 143, column: 7)
!4086 = !DILocalVariable(name: "base_len", scope: !4085, file: !674, line: 145, type: !27)
!4087 = !DILocalVariable(name: "add_slash", scope: !4085, file: !674, line: 146, type: !36)
!4088 = !DILocalVariable(name: "fd", scope: !4074, file: !674, line: 162, type: !36)
!4089 = !DILocalVariable(name: "fp", scope: !4072, file: !674, line: 178, type: !4090)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !137, line: 7, baseType: !4092)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !139, line: 241, size: 1728, elements: !4093)
!4093 = !{!4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4092, file: !139, line: 242, baseType: !36, size: 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4092, file: !139, line: 247, baseType: !20, size: 64, offset: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4092, file: !139, line: 248, baseType: !20, size: 64, offset: 128)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4092, file: !139, line: 249, baseType: !20, size: 64, offset: 192)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4092, file: !139, line: 250, baseType: !20, size: 64, offset: 256)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4092, file: !139, line: 251, baseType: !20, size: 64, offset: 320)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4092, file: !139, line: 252, baseType: !20, size: 64, offset: 384)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4092, file: !139, line: 253, baseType: !20, size: 64, offset: 448)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4092, file: !139, line: 254, baseType: !20, size: 64, offset: 512)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4092, file: !139, line: 256, baseType: !20, size: 64, offset: 576)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4092, file: !139, line: 257, baseType: !20, size: 64, offset: 640)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4092, file: !139, line: 258, baseType: !20, size: 64, offset: 704)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4092, file: !139, line: 260, baseType: !4107, size: 64, offset: 768)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !139, line: 156, size: 192, elements: !4109)
!4109 = !{!4110, !4111, !4113}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4108, file: !139, line: 157, baseType: !4107, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4108, file: !139, line: 158, baseType: !4112, size: 64, offset: 64)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4108, file: !139, line: 162, baseType: !36, size: 32, offset: 128)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4092, file: !139, line: 262, baseType: !4112, size: 64, offset: 832)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4092, file: !139, line: 264, baseType: !36, size: 32, offset: 896)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4092, file: !139, line: 268, baseType: !36, size: 32, offset: 928)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4092, file: !139, line: 270, baseType: !165, size: 64, offset: 960)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4092, file: !139, line: 274, baseType: !169, size: 16, offset: 1024)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4092, file: !139, line: 275, baseType: !171, size: 8, offset: 1040)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4092, file: !139, line: 276, baseType: !173, size: 8, offset: 1048)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4092, file: !139, line: 280, baseType: !177, size: 64, offset: 1088)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4092, file: !139, line: 289, baseType: !180, size: 64, offset: 1152)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4092, file: !139, line: 297, baseType: !22, size: 64, offset: 1216)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4092, file: !139, line: 298, baseType: !22, size: 64, offset: 1280)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4092, file: !139, line: 299, baseType: !22, size: 64, offset: 1344)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4092, file: !139, line: 300, baseType: !22, size: 64, offset: 1408)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4092, file: !139, line: 302, baseType: !27, size: 64, offset: 1472)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4092, file: !139, line: 303, baseType: !36, size: 32, offset: 1536)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4092, file: !139, line: 305, baseType: !188, size: 160, offset: 1568)
!4130 = !DILocalVariable(name: "res_ptr", scope: !4070, file: !674, line: 190, type: !20)
!4131 = !DILocalVariable(name: "res_size", scope: !4070, file: !674, line: 191, type: !27)
!4132 = !DILocalVariable(name: "c", scope: !4067, file: !674, line: 195, type: !36)
!4133 = !DILocalVariable(name: "buf2", scope: !4067, file: !674, line: 197, type: !4134)
!4134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 408, elements: !4135)
!4135 = !{!4136}
!4136 = !DISubrange(count: 51)
!4137 = !DILocalVariable(name: "l1", scope: !4067, file: !674, line: 198, type: !27)
!4138 = !DILocalVariable(name: "l2", scope: !4067, file: !674, line: 198, type: !27)
!4139 = !DILocalVariable(name: "old_res_ptr", scope: !4067, file: !674, line: 199, type: !20)
!4140 = !DILocation(line: 196, column: 28, scope: !4067, inlinedAt: !4141)
!4141 = distinct !DILocation(line: 589, column: 18, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4060, file: !674, line: 589, column: 3)
!4143 = !DILocation(line: 197, column: 28, scope: !4067, inlinedAt: !4141)
!4144 = !DILocation(line: 403, column: 13, scope: !4060)
!4145 = !DILocation(line: 395, column: 15, scope: !4060)
!4146 = !DILocation(line: 584, column: 15, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4060, file: !674, line: 584, column: 7)
!4148 = !DILocation(line: 584, column: 7, scope: !4060)
!4149 = !DILocation(line: 128, column: 8, scope: !4078, inlinedAt: !4141)
!4150 = !DILocation(line: 126, column: 15, scope: !4078, inlinedAt: !4141)
!4151 = !DILocation(line: 129, column: 10, scope: !4077, inlinedAt: !4141)
!4152 = !DILocation(line: 129, column: 7, scope: !4078, inlinedAt: !4141)
!4153 = !DILocation(line: 138, column: 13, scope: !4076, inlinedAt: !4141)
!4154 = !DILocation(line: 132, column: 19, scope: !4076, inlinedAt: !4141)
!4155 = !DILocation(line: 139, column: 15, scope: !4156, inlinedAt: !4141)
!4156 = distinct !DILexicalBlock(scope: !4076, file: !674, line: 139, column: 11)
!4157 = !DILocation(line: 139, column: 23, scope: !4156, inlinedAt: !4141)
!4158 = !DILocation(line: 139, column: 26, scope: !4156, inlinedAt: !4141)
!4159 = !DILocation(line: 139, column: 33, scope: !4156, inlinedAt: !4141)
!4160 = !DILocation(line: 139, column: 11, scope: !4076, inlinedAt: !4141)
!4161 = !DILocation(line: 140, column: 9, scope: !4156, inlinedAt: !4141)
!4162 = !DILocation(line: 144, column: 26, scope: !4085, inlinedAt: !4141)
!4163 = !DILocation(line: 144, column: 16, scope: !4085, inlinedAt: !4141)
!4164 = !DILocation(line: 145, column: 16, scope: !4085, inlinedAt: !4141)
!4165 = !DILocation(line: 146, column: 34, scope: !4085, inlinedAt: !4141)
!4166 = !DILocation(line: 146, column: 38, scope: !4085, inlinedAt: !4141)
!4167 = !DILocation(line: 146, column: 42, scope: !4085, inlinedAt: !4141)
!4168 = !DILocation(line: 147, column: 48, scope: !4085, inlinedAt: !4141)
!4169 = !DILocation(line: 147, column: 46, scope: !4085, inlinedAt: !4141)
!4170 = !DILocation(line: 147, column: 69, scope: !4085, inlinedAt: !4141)
!4171 = !DILocation(line: 147, column: 30, scope: !4085, inlinedAt: !4141)
!4172 = !DILocation(line: 134, column: 13, scope: !4076, inlinedAt: !4141)
!4173 = !DILocation(line: 148, column: 13, scope: !4085, inlinedAt: !4141)
!4174 = !DILocation(line: 150, column: 13, scope: !4175, inlinedAt: !4141)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !674, line: 149, column: 11)
!4176 = distinct !DILexicalBlock(scope: !4085, file: !674, line: 148, column: 13)
!4177 = !DILocation(line: 151, column: 17, scope: !4175, inlinedAt: !4141)
!4178 = !DILocation(line: 152, column: 34, scope: !4179, inlinedAt: !4141)
!4179 = distinct !DILexicalBlock(scope: !4175, file: !674, line: 151, column: 17)
!4180 = !DILocation(line: 153, column: 41, scope: !4175, inlinedAt: !4141)
!4181 = !DILocation(line: 153, column: 13, scope: !4175, inlinedAt: !4141)
!4182 = !DILocation(line: 157, column: 11, scope: !4076, inlinedAt: !4141)
!4183 = !DILocation(line: 171, column: 16, scope: !4074, inlinedAt: !4141)
!4184 = !DILocation(line: 162, column: 15, scope: !4074, inlinedAt: !4141)
!4185 = !DILocation(line: 173, column: 18, scope: !4073, inlinedAt: !4141)
!4186 = !DILocation(line: 173, column: 15, scope: !4074, inlinedAt: !4141)
!4187 = !DILocation(line: 180, column: 20, scope: !4072, inlinedAt: !4141)
!4188 = !DILocation(line: 178, column: 21, scope: !4072, inlinedAt: !4141)
!4189 = !DILocation(line: 181, column: 22, scope: !4071, inlinedAt: !4141)
!4190 = !DILocation(line: 181, column: 19, scope: !4072, inlinedAt: !4141)
!4191 = !DILocation(line: 184, column: 19, scope: !4192, inlinedAt: !4141)
!4192 = distinct !DILexicalBlock(scope: !4071, file: !674, line: 182, column: 17)
!4193 = !DILocation(line: 186, column: 17, scope: !4192, inlinedAt: !4141)
!4194 = !DILocation(line: 190, column: 25, scope: !4070, inlinedAt: !4141)
!4195 = !DILocation(line: 191, column: 26, scope: !4070, inlinedAt: !4141)
!4196 = !DILocation(line: 193, column: 19, scope: !4070, inlinedAt: !4141)
!4197 = !DILocation(line: 196, column: 23, scope: !4067, inlinedAt: !4141)
!4198 = !DILocation(line: 197, column: 23, scope: !4067, inlinedAt: !4141)
!4199 = !DILocalVariable(name: "__fp", arg: 1, scope: !4200, file: !3963, line: 63, type: !4090)
!4200 = distinct !DISubprogram(name: "getc_unlocked", scope: !3963, file: !3963, line: 63, type: !4201, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !331, variables: !4203)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!36, !4090}
!4203 = !{!4199}
!4204 = !DILocation(line: 63, column: 22, scope: !4200, inlinedAt: !4205)
!4205 = distinct !DILocation(line: 201, column: 27, scope: !4067, inlinedAt: !4141)
!4206 = !DILocation(line: 65, column: 10, scope: !4200, inlinedAt: !4205)
!4207 = !{!"branch_weights", i32 2000, i32 1}
!4208 = !DILocation(line: 195, column: 27, scope: !4067, inlinedAt: !4141)
!4209 = !DILocation(line: 202, column: 27, scope: !4067, inlinedAt: !4141)
!4210 = distinct !{!4210, !4211, !4214}
!4211 = !DILocation(line: 209, column: 27, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4213, file: !674, line: 207, column: 25)
!4213 = distinct !DILexicalBlock(scope: !4067, file: !674, line: 206, column: 27)
!4214 = !DILocation(line: 211, column: 58, scope: !4212)
!4215 = !DILocation(line: 65, column: 10, scope: !4200, inlinedAt: !4216)
!4216 = distinct !DILocation(line: 210, column: 33, scope: !4212, inlinedAt: !4141)
!4217 = !DILocation(line: 63, column: 22, scope: !4200, inlinedAt: !4216)
!4218 = !DILocation(line: 210, column: 29, scope: !4212, inlinedAt: !4141)
!4219 = distinct !{!4219, !4220, !4221}
!4220 = !DILocation(line: 193, column: 19, scope: !4069)
!4221 = !DILocation(line: 241, column: 21, scope: !4069)
!4222 = !DILocation(line: 216, column: 23, scope: !4067, inlinedAt: !4141)
!4223 = !DILocation(line: 217, column: 27, scope: !4224, inlinedAt: !4141)
!4224 = distinct !DILexicalBlock(scope: !4067, file: !674, line: 217, column: 27)
!4225 = !DILocation(line: 217, column: 64, scope: !4224, inlinedAt: !4141)
!4226 = !DILocation(line: 217, column: 27, scope: !4067, inlinedAt: !4141)
!4227 = !DILocation(line: 219, column: 28, scope: !4067, inlinedAt: !4141)
!4228 = !DILocation(line: 198, column: 30, scope: !4067, inlinedAt: !4141)
!4229 = !DILocation(line: 220, column: 28, scope: !4067, inlinedAt: !4141)
!4230 = !DILocation(line: 198, column: 34, scope: !4067, inlinedAt: !4141)
!4231 = !DILocation(line: 199, column: 29, scope: !4067, inlinedAt: !4141)
!4232 = !DILocation(line: 222, column: 36, scope: !4233, inlinedAt: !4141)
!4233 = distinct !DILexicalBlock(scope: !4067, file: !674, line: 222, column: 27)
!4234 = !DILocation(line: 222, column: 27, scope: !4067, inlinedAt: !4141)
!4235 = !DILocation(line: 225, column: 63, scope: !4236, inlinedAt: !4141)
!4236 = distinct !DILexicalBlock(scope: !4233, file: !674, line: 223, column: 25)
!4237 = !DILocation(line: 225, column: 46, scope: !4236, inlinedAt: !4141)
!4238 = !DILocation(line: 226, column: 25, scope: !4236, inlinedAt: !4141)
!4239 = !DILocation(line: 229, column: 36, scope: !4240, inlinedAt: !4141)
!4240 = distinct !DILexicalBlock(scope: !4233, file: !674, line: 228, column: 25)
!4241 = !DILocation(line: 230, column: 73, scope: !4240, inlinedAt: !4141)
!4242 = !DILocation(line: 230, column: 46, scope: !4240, inlinedAt: !4141)
!4243 = !DILocation(line: 232, column: 35, scope: !4244, inlinedAt: !4141)
!4244 = distinct !DILexicalBlock(scope: !4067, file: !674, line: 232, column: 27)
!4245 = !DILocation(line: 232, column: 27, scope: !4067, inlinedAt: !4141)
!4246 = !DILocation(line: 236, column: 27, scope: !4247, inlinedAt: !4141)
!4247 = distinct !DILexicalBlock(scope: !4244, file: !674, line: 233, column: 25)
!4248 = !DILocation(line: 237, column: 27, scope: !4247, inlinedAt: !4141)
!4249 = !DILocation(line: 241, column: 21, scope: !4068, inlinedAt: !4141)
!4250 = !DILocation(line: 239, column: 39, scope: !4067, inlinedAt: !4141)
!4251 = !DILocation(line: 239, column: 50, scope: !4067, inlinedAt: !4141)
!4252 = !DILocation(line: 239, column: 61, scope: !4067, inlinedAt: !4141)
!4253 = !DILocalVariable(name: "__dest", arg: 1, scope: !4254, file: !1542, line: 88, type: !4257)
!4254 = distinct !DISubprogram(name: "strcpy", scope: !1542, file: !1542, line: 88, type: !4255, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !331, variables: !4259)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!20, !4257, !4258}
!4257 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !20)
!4258 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !25)
!4259 = !{!4253, !4260}
!4260 = !DILocalVariable(name: "__src", arg: 2, scope: !4254, file: !1542, line: 88, type: !4258)
!4261 = !DILocation(line: 88, column: 1, scope: !4254, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 239, column: 23, scope: !4067, inlinedAt: !4141)
!4263 = !DILocation(line: 90, column: 49, scope: !4254, inlinedAt: !4262)
!4264 = !DILocation(line: 90, column: 10, scope: !4254, inlinedAt: !4262)
!4265 = !DILocation(line: 88, column: 1, scope: !4254, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 240, column: 23, scope: !4067, inlinedAt: !4141)
!4267 = !DILocation(line: 90, column: 49, scope: !4254, inlinedAt: !4266)
!4268 = !DILocation(line: 90, column: 10, scope: !4254, inlinedAt: !4266)
!4269 = !DILocation(line: 193, column: 19, scope: !4068, inlinedAt: !4141)
!4270 = !DILocation(line: 242, column: 19, scope: !4070, inlinedAt: !4141)
!4271 = !DILocation(line: 243, column: 32, scope: !4272, inlinedAt: !4141)
!4272 = distinct !DILexicalBlock(scope: !4070, file: !674, line: 243, column: 23)
!4273 = !DILocation(line: 243, column: 23, scope: !4070, inlinedAt: !4141)
!4274 = !DILocation(line: 247, column: 33, scope: !4275, inlinedAt: !4141)
!4275 = distinct !DILexicalBlock(scope: !4272, file: !674, line: 246, column: 21)
!4276 = !DILocation(line: 247, column: 45, scope: !4275, inlinedAt: !4141)
!4277 = !DILocation(line: 253, column: 11, scope: !4074, inlinedAt: !4141)
!4278 = !DILocation(line: 377, column: 23, scope: !4076, inlinedAt: !4141)
!4279 = !DILocation(line: 378, column: 5, scope: !4076, inlinedAt: !4141)
!4280 = !DILocation(line: 396, column: 15, scope: !4060)
!4281 = !DILocation(line: 590, column: 8, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4142, file: !674, line: 589, column: 3)
!4283 = !DILocation(line: 590, column: 17, scope: !4282)
!4284 = !DILocation(line: 589, column: 3, scope: !4142)
!4285 = !DILocation(line: 592, column: 9, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4282, file: !674, line: 592, column: 9)
!4287 = !DILocation(line: 592, column: 35, scope: !4286)
!4288 = !DILocation(line: 593, column: 9, scope: !4286)
!4289 = !DILocation(line: 593, column: 24, scope: !4286)
!4290 = !DILocation(line: 593, column: 31, scope: !4286)
!4291 = !DILocation(line: 593, column: 34, scope: !4286)
!4292 = !DILocation(line: 593, column: 45, scope: !4286)
!4293 = !DILocation(line: 592, column: 9, scope: !4282)
!4294 = !DILocation(line: 595, column: 29, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4286, file: !674, line: 594, column: 7)
!4296 = !DILocation(line: 595, column: 27, scope: !4295)
!4297 = !DILocation(line: 595, column: 46, scope: !4295)
!4298 = !DILocation(line: 596, column: 9, scope: !4295)
!4299 = !DILocation(line: 591, column: 19, scope: !4282)
!4300 = !DILocation(line: 591, column: 36, scope: !4282)
!4301 = !DILocation(line: 591, column: 16, scope: !4282)
!4302 = !DILocation(line: 591, column: 52, scope: !4282)
!4303 = !DILocation(line: 591, column: 69, scope: !4282)
!4304 = !DILocation(line: 591, column: 49, scope: !4282)
!4305 = distinct !{!4305, !4284, !4306}
!4306 = !DILocation(line: 597, column: 7, scope: !4142)
!4307 = !DILocation(line: 602, column: 7, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4060, file: !674, line: 602, column: 7)
!4309 = !DILocation(line: 602, column: 18, scope: !4308)
!4310 = !DILocation(line: 602, column: 7, scope: !4060)
!4311 = !DILocation(line: 612, column: 3, scope: !4060)
!4312 = distinct !DISubprogram(name: "dup_safer", scope: !4313, file: !4313, line: 31, type: !3300, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !779, variables: !4314)
!4313 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4314 = !{!4315}
!4315 = !DILocalVariable(name: "fd", arg: 1, scope: !4312, file: !4313, line: 31, type: !36)
!4316 = !DILocation(line: 31, column: 16, scope: !4312)
!4317 = !DILocation(line: 33, column: 10, scope: !4312)
!4318 = !DILocation(line: 33, column: 3, scope: !4312)
!4319 = distinct !DISubprogram(name: "rpl_fclose", scope: !4320, file: !4320, line: 56, type: !4321, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !781, variables: !4363)
!4320 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!36, !4323}
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !137, line: 7, baseType: !4325)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !139, line: 241, size: 1728, elements: !4326)
!4326 = !{!4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4325, file: !139, line: 242, baseType: !36, size: 32)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4325, file: !139, line: 247, baseType: !20, size: 64, offset: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4325, file: !139, line: 248, baseType: !20, size: 64, offset: 128)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4325, file: !139, line: 249, baseType: !20, size: 64, offset: 192)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4325, file: !139, line: 250, baseType: !20, size: 64, offset: 256)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4325, file: !139, line: 251, baseType: !20, size: 64, offset: 320)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4325, file: !139, line: 252, baseType: !20, size: 64, offset: 384)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4325, file: !139, line: 253, baseType: !20, size: 64, offset: 448)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4325, file: !139, line: 254, baseType: !20, size: 64, offset: 512)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4325, file: !139, line: 256, baseType: !20, size: 64, offset: 576)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4325, file: !139, line: 257, baseType: !20, size: 64, offset: 640)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4325, file: !139, line: 258, baseType: !20, size: 64, offset: 704)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4325, file: !139, line: 260, baseType: !4340, size: 64, offset: 768)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !139, line: 156, size: 192, elements: !4342)
!4342 = !{!4343, !4344, !4346}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4341, file: !139, line: 157, baseType: !4340, size: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4341, file: !139, line: 158, baseType: !4345, size: 64, offset: 64)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4341, file: !139, line: 162, baseType: !36, size: 32, offset: 128)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4325, file: !139, line: 262, baseType: !4345, size: 64, offset: 832)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4325, file: !139, line: 264, baseType: !36, size: 32, offset: 896)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4325, file: !139, line: 268, baseType: !36, size: 32, offset: 928)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4325, file: !139, line: 270, baseType: !165, size: 64, offset: 960)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4325, file: !139, line: 274, baseType: !169, size: 16, offset: 1024)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4325, file: !139, line: 275, baseType: !171, size: 8, offset: 1040)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4325, file: !139, line: 276, baseType: !173, size: 8, offset: 1048)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4325, file: !139, line: 280, baseType: !177, size: 64, offset: 1088)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4325, file: !139, line: 289, baseType: !180, size: 64, offset: 1152)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4325, file: !139, line: 297, baseType: !22, size: 64, offset: 1216)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4325, file: !139, line: 298, baseType: !22, size: 64, offset: 1280)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4325, file: !139, line: 299, baseType: !22, size: 64, offset: 1344)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4325, file: !139, line: 300, baseType: !22, size: 64, offset: 1408)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4325, file: !139, line: 302, baseType: !27, size: 64, offset: 1472)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4325, file: !139, line: 303, baseType: !36, size: 32, offset: 1536)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4325, file: !139, line: 305, baseType: !188, size: 160, offset: 1568)
!4363 = !{!4364, !4365, !4366, !4367}
!4364 = !DILocalVariable(name: "fp", arg: 1, scope: !4319, file: !4320, line: 56, type: !4323)
!4365 = !DILocalVariable(name: "saved_errno", scope: !4319, file: !4320, line: 58, type: !36)
!4366 = !DILocalVariable(name: "fd", scope: !4319, file: !4320, line: 59, type: !36)
!4367 = !DILocalVariable(name: "result", scope: !4319, file: !4320, line: 60, type: !36)
!4368 = !DILocation(line: 56, column: 19, scope: !4319)
!4369 = !DILocation(line: 58, column: 7, scope: !4319)
!4370 = !DILocation(line: 60, column: 7, scope: !4319)
!4371 = !DILocation(line: 63, column: 8, scope: !4319)
!4372 = !DILocation(line: 59, column: 7, scope: !4319)
!4373 = !DILocation(line: 64, column: 10, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4319, file: !4320, line: 64, column: 7)
!4375 = !DILocation(line: 64, column: 7, scope: !4319)
!4376 = !DILocation(line: 65, column: 12, scope: !4374)
!4377 = !DILocation(line: 65, column: 5, scope: !4374)
!4378 = !DILocation(line: 70, column: 9, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4319, file: !4320, line: 70, column: 7)
!4380 = !DILocation(line: 70, column: 23, scope: !4379)
!4381 = !DILocation(line: 70, column: 33, scope: !4379)
!4382 = !DILocation(line: 70, column: 26, scope: !4379)
!4383 = !DILocation(line: 70, column: 59, scope: !4379)
!4384 = !DILocation(line: 71, column: 7, scope: !4379)
!4385 = !DILocation(line: 71, column: 10, scope: !4379)
!4386 = !DILocation(line: 70, column: 7, scope: !4319)
!4387 = !DILocation(line: 98, column: 12, scope: !4319)
!4388 = !DILocation(line: 103, column: 7, scope: !4319)
!4389 = !DILocation(line: 72, column: 19, scope: !4379)
!4390 = !DILocation(line: 103, column: 19, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4319, file: !4320, line: 103, column: 7)
!4392 = !DILocation(line: 105, column: 13, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4391, file: !4320, line: 104, column: 5)
!4394 = !DILocation(line: 107, column: 5, scope: !4393)
!4395 = !DILocation(line: 110, column: 1, scope: !4319)
!4396 = !DILocation(line: 272, column: 16, scope: !678)
!4397 = !DILocation(line: 272, column: 24, scope: !678)
!4398 = !DILocation(line: 274, column: 3, scope: !678)
!4399 = !DILocation(line: 274, column: 11, scope: !678)
!4400 = !DILocation(line: 275, column: 7, scope: !678)
!4401 = !DILocation(line: 276, column: 3, scope: !678)
!4402 = !DILocation(line: 277, column: 3, scope: !678)
!4403 = !DILocation(line: 322, column: 22, scope: !701)
!4404 = !DILocation(line: 322, column: 13, scope: !701)
!4405 = !DILocation(line: 336, column: 18, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !701, file: !679, line: 336, column: 13)
!4407 = !DILocation(line: 336, column: 15, scope: !4406)
!4408 = !DILocation(line: 336, column: 13, scope: !701)
!4409 = !DILocation(line: 338, column: 22, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4406, file: !679, line: 337, column: 11)
!4411 = !DILocation(line: 339, column: 19, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4410, file: !679, line: 339, column: 17)
!4413 = !DILocation(line: 339, column: 29, scope: !4412)
!4414 = !DILocation(line: 339, column: 32, scope: !4412)
!4415 = !DILocation(line: 339, column: 38, scope: !4412)
!4416 = !DILocation(line: 339, column: 17, scope: !4410)
!4417 = !DILocation(line: 349, column: 26, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4412, file: !679, line: 348, column: 15)
!4419 = !DILocation(line: 350, column: 28, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4418, file: !679, line: 350, column: 21)
!4421 = !DILocation(line: 350, column: 21, scope: !4418)
!4422 = !DILocation(line: 354, column: 11, scope: !4410)
!4423 = !DILocation(line: 356, column: 20, scope: !4406)
!4424 = !DILocation(line: 357, column: 28, scope: !705)
!4425 = !DILocation(line: 357, column: 15, scope: !705)
!4426 = !DILocation(line: 357, column: 47, scope: !705)
!4427 = !DILocation(line: 357, column: 25, scope: !705)
!4428 = !DILocation(line: 359, column: 25, scope: !704)
!4429 = !DILocation(line: 359, column: 17, scope: !704)
!4430 = !DILocation(line: 360, column: 23, scope: !708)
!4431 = !DILocation(line: 360, column: 27, scope: !708)
!4432 = !DILocation(line: 360, column: 60, scope: !708)
!4433 = !DILocation(line: 360, column: 30, scope: !708)
!4434 = !DILocation(line: 360, column: 74, scope: !708)
!4435 = !DILocation(line: 360, column: 17, scope: !704)
!4436 = !DILocation(line: 362, column: 35, scope: !707)
!4437 = !DILocation(line: 362, column: 21, scope: !707)
!4438 = !DILocation(line: 363, column: 17, scope: !707)
!4439 = !DILocation(line: 364, column: 23, scope: !707)
!4440 = !DILocation(line: 366, column: 15, scope: !707)
!4441 = !DILocation(line: 404, column: 19, scope: !710)
!4442 = !DILocation(line: 404, column: 15, scope: !710)
!4443 = !DILocation(line: 405, column: 18, scope: !710)
!4444 = !DILocation(line: 412, column: 3, scope: !678)
!4445 = !DILocation(line: 414, column: 1, scope: !678)
!4446 = !DILocation(line: 413, column: 3, scope: !678)
!4447 = distinct !DISubprogram(name: "rpl_fflush", scope: !4448, file: !4448, line: 127, type: !4449, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !783, variables: !4491)
!4448 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!36, !4451}
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !137, line: 7, baseType: !4453)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !139, line: 241, size: 1728, elements: !4454)
!4454 = !{!4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4453, file: !139, line: 242, baseType: !36, size: 32)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4453, file: !139, line: 247, baseType: !20, size: 64, offset: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4453, file: !139, line: 248, baseType: !20, size: 64, offset: 128)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4453, file: !139, line: 249, baseType: !20, size: 64, offset: 192)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4453, file: !139, line: 250, baseType: !20, size: 64, offset: 256)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4453, file: !139, line: 251, baseType: !20, size: 64, offset: 320)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4453, file: !139, line: 252, baseType: !20, size: 64, offset: 384)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4453, file: !139, line: 253, baseType: !20, size: 64, offset: 448)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4453, file: !139, line: 254, baseType: !20, size: 64, offset: 512)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4453, file: !139, line: 256, baseType: !20, size: 64, offset: 576)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4453, file: !139, line: 257, baseType: !20, size: 64, offset: 640)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4453, file: !139, line: 258, baseType: !20, size: 64, offset: 704)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4453, file: !139, line: 260, baseType: !4468, size: 64, offset: 768)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !139, line: 156, size: 192, elements: !4470)
!4470 = !{!4471, !4472, !4474}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4469, file: !139, line: 157, baseType: !4468, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4469, file: !139, line: 158, baseType: !4473, size: 64, offset: 64)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4469, file: !139, line: 162, baseType: !36, size: 32, offset: 128)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4453, file: !139, line: 262, baseType: !4473, size: 64, offset: 832)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4453, file: !139, line: 264, baseType: !36, size: 32, offset: 896)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4453, file: !139, line: 268, baseType: !36, size: 32, offset: 928)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4453, file: !139, line: 270, baseType: !165, size: 64, offset: 960)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4453, file: !139, line: 274, baseType: !169, size: 16, offset: 1024)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4453, file: !139, line: 275, baseType: !171, size: 8, offset: 1040)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4453, file: !139, line: 276, baseType: !173, size: 8, offset: 1048)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4453, file: !139, line: 280, baseType: !177, size: 64, offset: 1088)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4453, file: !139, line: 289, baseType: !180, size: 64, offset: 1152)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4453, file: !139, line: 297, baseType: !22, size: 64, offset: 1216)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4453, file: !139, line: 298, baseType: !22, size: 64, offset: 1280)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4453, file: !139, line: 299, baseType: !22, size: 64, offset: 1344)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4453, file: !139, line: 300, baseType: !22, size: 64, offset: 1408)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4453, file: !139, line: 302, baseType: !27, size: 64, offset: 1472)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4453, file: !139, line: 303, baseType: !36, size: 32, offset: 1536)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4453, file: !139, line: 305, baseType: !188, size: 160, offset: 1568)
!4491 = !{!4492}
!4492 = !DILocalVariable(name: "stream", arg: 1, scope: !4447, file: !4448, line: 127, type: !4451)
!4493 = !DILocation(line: 127, column: 19, scope: !4447)
!4494 = !DILocation(line: 148, column: 14, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4447, file: !4448, line: 148, column: 7)
!4496 = !DILocation(line: 148, column: 22, scope: !4495)
!4497 = !DILocation(line: 148, column: 27, scope: !4495)
!4498 = !DILocation(line: 148, column: 7, scope: !4447)
!4499 = !DILocation(line: 149, column: 12, scope: !4495)
!4500 = !DILocation(line: 149, column: 5, scope: !4495)
!4501 = !DILocalVariable(name: "fp", arg: 1, scope: !4502, file: !4448, line: 40, type: !4451)
!4502 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4448, file: !4448, line: 40, type: !4503, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !783, variables: !4505)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{null, !4451}
!4505 = !{!4501}
!4506 = !DILocation(line: 40, column: 48, scope: !4502, inlinedAt: !4507)
!4507 = distinct !DILocation(line: 153, column: 3, scope: !4447)
!4508 = !DILocation(line: 42, column: 11, scope: !4509, inlinedAt: !4507)
!4509 = distinct !DILexicalBlock(scope: !4502, file: !4448, line: 42, column: 7)
!4510 = !DILocation(line: 42, column: 18, scope: !4509, inlinedAt: !4507)
!4511 = !DILocation(line: 42, column: 7, scope: !4502, inlinedAt: !4507)
!4512 = !DILocation(line: 44, column: 5, scope: !4509, inlinedAt: !4507)
!4513 = !DILocation(line: 155, column: 10, scope: !4447)
!4514 = !DILocation(line: 155, column: 3, scope: !4447)
!4515 = !DILocation(line: 229, column: 1, scope: !4447)
