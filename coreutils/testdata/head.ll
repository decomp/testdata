; ModuleID = 'coreutils-8.27/src/head.bc'
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
%struct.linebuffer = type { [8192 x i8], i64, i64, %struct.linebuffer* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [133 x i8] c"Print the first %d lines of each FILE to standard output.\0AWith more than one FILE, precede each with a header giving the file name.\0A\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.22 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [398 x i8] c"  -c, --bytes=[-]NUM       print the first NUM bytes of each file;\0A                             with the leading '-', print all but the last\0A                             NUM bytes of each file\0A  -n, --lines=[-]NUM       print the first NUM lines instead of the first %d;\0A                             with the leading '-', print all but the last\0A                             NUM lines of each file\0A\00", align 1
@.str.4 = private unnamed_addr constant [132 x i8] c"  -q, --quiet, --silent    never print headers giving file names\0A  -v, --verbose            always print headers giving file names\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [153 x i8] c"\0ANUM may have a multiplier suffix:\0Ab 512, kB 1000, K 1024, MB 1000*1000, M 1024*1024,\0AGB 1000*1000*1000, G 1024*1024*1024, and so on for T, P, E, Z, Y.\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.34 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@print_headers = internal unnamed_addr global i1 false, align 1
@line_end = internal unnamed_addr global i1 false, align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"invalid trailing option -- %c\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"invalid number of bytes\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"invalid number of lines\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"bkKmMGTPEZY0\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"c:n:qvz0123456789\00", align 1
@long_options = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@presume_input_pipe = internal unnamed_addr global i1 false, align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@main.default_file_list = internal unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16, !dbg !47
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@write_header.first_file = internal unnamed_addr global i1 false, align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"%s==> %s <==\0A\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"cannot fstat %s\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"%s: file has shrunk too much\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"error writing %s\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"%s: cannot seek to offset %s\00", align 1
@.str.56 = private unnamed_addr constant [38 x i8] c"%s: cannot seek to relative offset %s\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"-presume-input-pipe\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), align 8, !dbg !129
@.str.23 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !135
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !140
@.str.26 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.27 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !143
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !150
@.str.61 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.62 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.63 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.67, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.73, i32 0, i32 0), i8* null], align 16, !dbg !157
@.str.64 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.65 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.66 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.67 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.68 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.70 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.71 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.72 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.73 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !185
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !190
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !202
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.77 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.78 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.79 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.80 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !209
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !216
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !204
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !218
@.str.91 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.92 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.93 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.94 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.95 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.96 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.97 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.98 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.99 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.100 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.101 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.102 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.103 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.104 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.107 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.108 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.109 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.110 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.111 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.112 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !223
@.str.1.123 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.130 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.131 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.140 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.141 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.144 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !232
@.str.3.145 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.146 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.147 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.148 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.149 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.150 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !675 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !679, metadata !680), !dbg !681
  %2 = icmp eq i32 %0, 0, !dbg !682
  br i1 %2, label %8, label %3, !dbg !684

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !685, !tbaa !687
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !685
  %6 = load i8*, i8** @program_name, align 8, !dbg !685, !tbaa !687
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !685
  br label %52, !dbg !685

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !691
  %10 = load i8*, i8** @program_name, align 8, !dbg !691, !tbaa !687
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !691
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !693
  %13 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %12, i32 10) #10, !dbg !693
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !694
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !694, !tbaa !687
  %16 = tail call i32 @fputs_unlocked(i8* %14, %struct._IO_FILE* %15) #10, !dbg !694
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !699
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !699, !tbaa !687
  %19 = tail call i32 @fputs_unlocked(i8* %17, %struct._IO_FILE* %18) #10, !dbg !699
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([398 x i8], [398 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !702
  %21 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %20, i32 10) #10, !dbg !702
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !703
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !703, !tbaa !687
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23) #10, !dbg !703
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !704
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !704, !tbaa !687
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26) #10, !dbg !704
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !705
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !705, !tbaa !687
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29) #10, !dbg !705
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !706
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !706, !tbaa !687
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32) #10, !dbg !706
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !707
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !707, !tbaa !687
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35) #10, !dbg !707
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !100, metadata !680) #10, !dbg !708
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 0, metadata !100, metadata !680) #10, !dbg !708
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !710
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0)) #10, !dbg !710
  %39 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !711
  tail call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !108, metadata !680) #10, !dbg !712
  %40 = icmp eq i8* %39, null, !dbg !713
  br i1 %40, label %47, label %41, !dbg !715

; <label>:41:                                     ; preds = %8
  %42 = tail call i32 @strncmp(i8* nonnull %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i64 3) #14, !dbg !716
  %43 = icmp eq i32 %42, 0, !dbg !716
  br i1 %43, label %47, label %44, !dbg !717

; <label>:44:                                     ; preds = %41
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !718
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !718
  br label %47, !dbg !720

; <label>:47:                                     ; preds = %8, %41, %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !721
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !721
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !722
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #10, !dbg !722
  br label %52

; <label>:52:                                     ; preds = %47, %3
  tail call void @exit(i32 %0) #15, !dbg !723
  unreachable, !dbg !723
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !49 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca [2 x i8*], align 16
  tail call void @llvm.dbg.declare(metadata [2 x i8*]* %4, metadata !724, metadata !680), !dbg !772
  %5 = alloca [8192 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [8192 x i8]* %5, metadata !857, metadata !680), !dbg !885
  %6 = alloca [8192 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !898, metadata !680), !dbg !910
  %7 = alloca %struct.stat, align 8
  %8 = alloca [21 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !55, metadata !680), !dbg !912
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !56, metadata !680), !dbg !913
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !680), !dbg !914
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !58, metadata !680), !dbg !915
  tail call void @llvm.dbg.value(metadata i64 10, i64 0, metadata !62, metadata !680), !dbg !916
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !66, metadata !680), !dbg !917
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !67, metadata !680), !dbg !918
  %9 = load i8*, i8** %1, align 8, !dbg !919, !tbaa !687
  tail call void @set_program_name(i8* %9) #10, !dbg !920
  %10 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !921
  %11 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !922
  %12 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !923
  %13 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !924
  store i1 false, i1* @have_read_stdin, align 1
  store i1 false, i1* @print_headers, align 1
  store i1 true, i1* @line_end, align 1
  %14 = icmp sgt i32 %0, 1, !dbg !925
  br i1 %14, label %15, label %80, !dbg !926

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !927
  %17 = load i8*, i8** %16, align 8, !dbg !927, !tbaa !687
  %18 = load i8, i8* %17, align 1, !dbg !927, !tbaa !928
  %19 = icmp eq i8 %18, 45, !dbg !929
  br i1 %19, label %20, label %80, !dbg !930

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !931
  %22 = load i8, i8* %21, align 1, !dbg !931, !tbaa !928
  %23 = sext i8 %22 to i32, !dbg !931
  %24 = add nsw i32 %23, -48, !dbg !931
  %25 = icmp ult i32 %24, 10, !dbg !931
  br i1 %25, label %26, label %80, !dbg !932, !llvm.loop !933

; <label>:26:                                     ; preds = %20
  br label %27, !dbg !936

; <label>:27:                                     ; preds = %26, %27
  %28 = phi i8* [ %29, %27 ], [ %21, %26 ]
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !69, metadata !680), !dbg !937
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !936
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !69, metadata !680), !dbg !937
  %30 = load i8, i8* %29, align 1, !dbg !938, !tbaa !928
  %31 = sext i8 %30 to i32, !dbg !938
  %32 = add nsw i32 %31, -48, !dbg !938
  %33 = icmp ult i32 %32, 10, !dbg !938
  br i1 %33, label %27, label %34, !dbg !936, !llvm.loop !933

; <label>:34:                                     ; preds = %27
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !73, metadata !680), !dbg !939
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !74, metadata !680), !dbg !940
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !69, metadata !680), !dbg !937
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !66, metadata !680), !dbg !917
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !680), !dbg !914
  %35 = icmp eq i8 %30, 0, !dbg !941
  br i1 %35, label %64, label %36, !dbg !941

; <label>:36:                                     ; preds = %34
  br label %37, !dbg !943

; <label>:37:                                     ; preds = %36, %53
  %38 = phi i8 [ %56, %53 ], [ 0, %36 ]
  %39 = phi i8* [ %57, %53 ], [ %29, %36 ]
  %40 = phi i8 [ %55, %53 ], [ 1, %36 ]
  %41 = phi i32 [ %54, %53 ], [ 0, %36 ]
  %42 = phi i8 [ %58, %53 ], [ %30, %36 ]
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !57, metadata !680), !dbg !914
  tail call void @llvm.dbg.value(metadata i8 %40, i64 0, metadata !66, metadata !680), !dbg !917
  tail call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !69, metadata !680), !dbg !937
  tail call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !74, metadata !680), !dbg !940
  %43 = sext i8 %42 to i32, !dbg !943
  switch i32 %43, label %49 [
    i32 99, label %53
    i32 98, label %44
    i32 107, label %44
    i32 109, label %44
    i32 108, label %45
    i32 113, label %46
    i32 118, label %47
    i32 122, label %48
  ], !dbg !946

; <label>:44:                                     ; preds = %37, %37, %37
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !66, metadata !680), !dbg !917
  tail call void @llvm.dbg.value(metadata i8 %42, i64 0, metadata !74, metadata !680), !dbg !940
  br label %53, !dbg !947

; <label>:45:                                     ; preds = %37
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !66, metadata !680), !dbg !917
  br label %53, !dbg !949

; <label>:46:                                     ; preds = %37
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !57, metadata !680), !dbg !914
  br label %53, !dbg !950

; <label>:47:                                     ; preds = %37
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !57, metadata !680), !dbg !914
  br label %53, !dbg !951

; <label>:48:                                     ; preds = %37
  store i1 false, i1* @line_end, align 1
  br label %53, !dbg !952

; <label>:49:                                     ; preds = %37
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !953
  %51 = load i8, i8* %39, align 1, !dbg !954, !tbaa !928
  %52 = sext i8 %51 to i32, !dbg !954
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %50, i32 %52) #10, !dbg !955
  tail call void @usage(i32 1) #16, !dbg !956
  unreachable, !dbg !956

; <label>:53:                                     ; preds = %37, %44, %45, %46, %47, %48
  %54 = phi i32 [ %41, %48 ], [ 1, %47 ], [ 2, %46 ], [ %41, %45 ], [ %41, %44 ], [ %41, %37 ]
  %55 = phi i8 [ %40, %48 ], [ %40, %47 ], [ %40, %46 ], [ 1, %45 ], [ 0, %44 ], [ 0, %37 ]
  %56 = phi i8 [ %38, %48 ], [ %38, %47 ], [ %38, %46 ], [ %38, %45 ], [ %42, %44 ], [ 0, %37 ]
  tail call void @llvm.dbg.value(metadata i8 %56, i64 0, metadata !74, metadata !680), !dbg !940
  tail call void @llvm.dbg.value(metadata i8 %55, i64 0, metadata !66, metadata !680), !dbg !917
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !57, metadata !680), !dbg !914
  %57 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !957
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !69, metadata !680), !dbg !937
  %58 = load i8, i8* %57, align 1, !dbg !958, !tbaa !928
  tail call void @llvm.dbg.value(metadata i8 %56, i64 0, metadata !74, metadata !680), !dbg !940
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !69, metadata !680), !dbg !937
  tail call void @llvm.dbg.value(metadata i8 %55, i64 0, metadata !66, metadata !680), !dbg !917
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !57, metadata !680), !dbg !914
  %59 = icmp eq i8 %58, 0, !dbg !941
  br i1 %59, label %60, label %37, !dbg !941, !llvm.loop !959

; <label>:60:                                     ; preds = %53
  store i8 %56, i8* %29, align 1, !dbg !961, !tbaa !928
  %61 = icmp eq i8 %56, 0, !dbg !962
  br i1 %61, label %68, label %62, !dbg !964

; <label>:62:                                     ; preds = %60
  %63 = getelementptr inbounds i8, i8* %28, i64 2, !dbg !965
  tail call void @llvm.dbg.value(metadata i8* %63, i64 0, metadata !73, metadata !680), !dbg !939
  br label %64, !dbg !966

; <label>:64:                                     ; preds = %34, %62
  %65 = phi i8* [ %63, %62 ], [ %29, %34 ]
  %66 = phi i8 [ %55, %62 ], [ 1, %34 ]
  %67 = phi i32 [ %54, %62 ], [ 0, %34 ]
  store i8 0, i8* %65, align 1, !tbaa !928
  br label %68, !dbg !967

; <label>:68:                                     ; preds = %64, %60
  %69 = phi i8 [ %55, %60 ], [ %66, %64 ]
  %70 = phi i32 [ %54, %60 ], [ %67, %64 ]
  %71 = and i8 %69, 1, !dbg !967
  %72 = icmp eq i8 %71, 0, !dbg !967
  tail call void @llvm.dbg.value(metadata i1 %72, i64 0, metadata !968, metadata !680) #10, !dbg !974
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !973, metadata !680) #10, !dbg !976
  %73 = select i1 %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), !dbg !977
  %74 = tail call i8* @dcgettext(i8* null, i8* %73, i32 5) #10, !dbg !978
  %75 = tail call i64 @xdectoumax(i8* %21, i64 0, i64 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i8* %74, i32 0) #10, !dbg !979
  tail call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !62, metadata !680), !dbg !916
  %76 = bitcast i8** %1 to i64*, !dbg !980
  %77 = load i64, i64* %76, align 8, !dbg !980, !tbaa !687
  %78 = bitcast i8** %16 to i64*, !dbg !981
  store i64 %77, i64* %78, align 8, !dbg !981, !tbaa !687
  tail call void @llvm.dbg.value(metadata i8** %16, i64 0, metadata !56, metadata !680), !dbg !913
  %79 = add nsw i32 %0, -1, !dbg !982
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !55, metadata !680), !dbg !912
  br label %80, !dbg !983

; <label>:80:                                     ; preds = %68, %20, %15, %2
  %81 = phi i32 [ %70, %68 ], [ 0, %20 ], [ 0, %15 ], [ 0, %2 ]
  %82 = phi i8** [ %16, %68 ], [ %1, %20 ], [ %1, %15 ], [ %1, %2 ]
  %83 = phi i64 [ %75, %68 ], [ 10, %20 ], [ 10, %15 ], [ 10, %2 ]
  %84 = phi i8 [ %69, %68 ], [ 1, %20 ], [ 1, %15 ], [ 1, %2 ]
  %85 = phi i32 [ %79, %68 ], [ %0, %20 ], [ %0, %15 ], [ %0, %2 ]
  tail call void @llvm.dbg.value(metadata i32 %85, i64 0, metadata !55, metadata !680), !dbg !912
  tail call void @llvm.dbg.value(metadata i8 %84, i64 0, metadata !66, metadata !680), !dbg !917
  tail call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !62, metadata !680), !dbg !916
  tail call void @llvm.dbg.value(metadata i8** %82, i64 0, metadata !56, metadata !680), !dbg !913
  tail call void @llvm.dbg.value(metadata i32 %81, i64 0, metadata !57, metadata !680), !dbg !914
  br label %86, !dbg !984

; <label>:86:                                     ; preds = %119, %80
  %87 = phi i32 [ %81, %80 ], [ %120, %119 ]
  %88 = phi i64 [ %83, %80 ], [ %92, %119 ]
  %89 = phi i8 [ %84, %80 ], [ %93, %119 ]
  %90 = phi i8 [ 0, %80 ], [ %94, %119 ]
  br label %91, !dbg !985

; <label>:91:                                     ; preds = %110, %86
  %92 = phi i64 [ %88, %86 ], [ %116, %110 ]
  %93 = phi i8 [ %89, %86 ], [ %113, %110 ]
  %94 = phi i8 [ %90, %86 ], [ %117, %110 ]
  br label %95, !dbg !985

; <label>:95:                                     ; preds = %122, %91
  tail call void @llvm.dbg.value(metadata i8 %94, i64 0, metadata !67, metadata !680), !dbg !918
  tail call void @llvm.dbg.value(metadata i8 %93, i64 0, metadata !66, metadata !680), !dbg !917
  tail call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !62, metadata !680), !dbg !916
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !57, metadata !680), !dbg !914
  %96 = tail call i32 @getopt_long(i32 %85, i8** %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !985
  tail call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !60, metadata !680), !dbg !986
  switch i32 %96, label %127 [
    i32 -1, label %133
    i32 128, label %97
    i32 99, label %98
    i32 110, label %104
    i32 113, label %119
    i32 118, label %118
    i32 122, label %121
    i32 -130, label %123
    i32 -131, label %124
  ], !dbg !984, !llvm.loop !987

; <label>:97:                                     ; preds = %95
  store i1 true, i1* @presume_input_pipe, align 1
  br label %122, !dbg !989

; <label>:98:                                     ; preds = %95
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !66, metadata !680), !dbg !917
  %99 = load i8*, i8** @optarg, align 8, !dbg !992, !tbaa !687
  %100 = load i8, i8* %99, align 1, !dbg !993, !tbaa !928
  %101 = icmp eq i8 %100, 45, !dbg !994
  br i1 %101, label %102, label %110, !dbg !995

; <label>:102:                                    ; preds = %98
  %103 = getelementptr inbounds i8, i8* %99, i64 1, !dbg !996
  store i8* %103, i8** @optarg, align 8, !dbg !996, !tbaa !687
  br label %110, !dbg !996

; <label>:104:                                    ; preds = %95
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !66, metadata !680), !dbg !917
  %105 = load i8*, i8** @optarg, align 8, !dbg !998, !tbaa !687
  %106 = load i8, i8* %105, align 1, !dbg !999, !tbaa !928
  %107 = icmp eq i8 %106, 45, !dbg !1000
  br i1 %107, label %108, label %110, !dbg !1001

; <label>:108:                                    ; preds = %104
  %109 = getelementptr inbounds i8, i8* %105, i64 1, !dbg !1002
  store i8* %109, i8** @optarg, align 8, !dbg !1002, !tbaa !687
  br label %110, !dbg !1002

; <label>:110:                                    ; preds = %98, %102, %104, %108
  %111 = phi i8* [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), %108 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), %104 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), %102 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), %98 ]
  %112 = phi i8* [ %109, %108 ], [ %105, %104 ], [ %103, %102 ], [ %99, %98 ]
  %113 = phi i8 [ 1, %108 ], [ 1, %104 ], [ 0, %102 ], [ 0, %98 ]
  %114 = phi i1 [ %107, %108 ], [ %107, %104 ], [ %101, %102 ], [ %101, %98 ]
  %115 = tail call i8* @dcgettext(i8* null, i8* %111, i32 5) #10, !dbg !1004
  %116 = tail call i64 @xdectoumax(i8* %112, i64 0, i64 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i8* %115, i32 0) #10, !dbg !1006
  %117 = zext i1 %114 to i8
  br label %91, !dbg !985, !llvm.loop !987

; <label>:118:                                    ; preds = %95
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !57, metadata !680), !dbg !914
  br label %119, !dbg !1007

; <label>:119:                                    ; preds = %95, %118
  %120 = phi i32 [ 1, %118 ], [ 2, %95 ]
  br label %86, !dbg !985, !llvm.loop !987

; <label>:121:                                    ; preds = %95
  store i1 false, i1* @line_end, align 1
  br label %122, !dbg !1008

; <label>:122:                                    ; preds = %121, %97
  br label %95, !dbg !918, !llvm.loop !987

; <label>:123:                                    ; preds = %95
  tail call void @usage(i32 0) #16, !dbg !1009
  unreachable, !dbg !1009

; <label>:124:                                    ; preds = %95
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1010, !tbaa !687
  %126 = load i8*, i8** @Version, align 8, !dbg !1010, !tbaa !687
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %126, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* null) #10, !dbg !1010
  tail call void @exit(i32 0) #15, !dbg !1010
  unreachable, !dbg !1010

; <label>:127:                                    ; preds = %95
  %128 = add i32 %96, -48, !dbg !1011
  %129 = icmp ult i32 %128, 10, !dbg !1011
  br i1 %129, label %130, label %132, !dbg !1013

; <label>:130:                                    ; preds = %127
  %131 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !1014
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %131, i32 %96) #10, !dbg !1015
  br label %132, !dbg !1015

; <label>:132:                                    ; preds = %130, %127
  tail call void @usage(i32 1) #16, !dbg !1016
  unreachable, !dbg !1016

; <label>:133:                                    ; preds = %95
  switch i32 %87, label %139 [
    i32 1, label %138
    i32 0, label %134
  ], !dbg !1017

; <label>:134:                                    ; preds = %133
  %135 = load i32, i32* @optind, align 4, !dbg !1019, !tbaa !1020
  %136 = add nsw i32 %85, -1, !dbg !1022
  %137 = icmp slt i32 %135, %136, !dbg !1023
  br i1 %137, label %138, label %139, !dbg !1024

; <label>:138:                                    ; preds = %133, %134
  store i1 true, i1* @print_headers, align 1
  br label %139, !dbg !1025

; <label>:139:                                    ; preds = %133, %138, %134
  %140 = and i8 %93, 1, !dbg !1026
  %141 = icmp ne i8 %140, 0, !dbg !1026
  br i1 %141, label %151, label %142, !dbg !1027

; <label>:142:                                    ; preds = %139
  %143 = icmp ne i8 %94, 0, !dbg !1028
  %144 = icmp slt i64 %92, 0, !dbg !1029
  %145 = and i1 %144, %143, !dbg !1030
  br i1 %145, label %146, label %151, !dbg !1030

; <label>:146:                                    ; preds = %142
  %147 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !1031
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %147) #10, !dbg !1031
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !75, metadata !680), !dbg !1032
  %148 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !1033
  %149 = call i8* @umaxtostr(i64 %92, i8* nonnull %147) #10, !dbg !1033
  %150 = call i8* @quote(i8* %149) #10, !dbg !1033
  call void (i32, i32, i8*, ...) @error(i32 1, i32 75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* %148, i8* %150) #10, !dbg !1033
  unreachable, !dbg !1033

; <label>:151:                                    ; preds = %142, %139
  %152 = load i32, i32* @optind, align 4, !dbg !1034, !tbaa !1020
  %153 = icmp slt i32 %152, %85, !dbg !1035
  %154 = sext i32 %152 to i64, !dbg !1036
  %155 = getelementptr inbounds i8*, i8** %82, i64 %154, !dbg !1036
  %156 = select i1 %153, i8** %155, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @main.default_file_list, i64 0, i64 0), !dbg !1034
  tail call void @llvm.dbg.value(metadata i8** %156, i64 0, metadata !68, metadata !680), !dbg !1037
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !61, metadata !680), !dbg !1038
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !61, metadata !680), !dbg !1038
  %157 = load i8*, i8** %156, align 8, !dbg !1039, !tbaa !687
  %158 = icmp eq i8* %157, null, !dbg !1040
  br i1 %158, label %844, label %159, !dbg !1040

; <label>:159:                                    ; preds = %151
  %160 = icmp eq i8 %94, 0
  %161 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %162 = icmp eq i64 %92, 0
  %163 = bitcast %struct.stat* %3 to i8*
  %164 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
  %165 = bitcast %struct.stat* %7 to i8*
  %166 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 8
  %167 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 9
  %168 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %169 = icmp ne i64 %92, 0
  %170 = ptrtoint [8192 x i8]* %5 to i64
  %171 = add i64 %92, 8192
  %172 = icmp ult i64 %92, 1048577
  %173 = bitcast [2 x i8*]* %4 to i8*
  %174 = icmp ugt i64 %171, 4611686018427387903
  %175 = shl i64 %171, 1
  %176 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %177 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1
  %178 = and i64 %92, 8191
  %179 = sub nsw i64 8192, %178
  %180 = add i64 %179, %92
  %181 = lshr i64 %180, 13
  %182 = add nuw nsw i64 %181, 1
  %183 = icmp ult i64 %182, 16
  %184 = select i1 %183, i64 %182, i64 16
  %185 = lshr i64 %182, 1
  %186 = icmp eq i64 %179, 0
  %187 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 3
  br label %188, !dbg !1040

; <label>:188:                                    ; preds = %159, %834
  %189 = phi i8* [ %157, %159 ], [ %839, %834 ]
  %190 = phi i64 [ 0, %159 ], [ %837, %834 ]
  %191 = phi i1 [ true, %159 ], [ %836, %834 ]
  call void @llvm.dbg.value(metadata i64 %190, i64 0, metadata !61, metadata !680), !dbg !1038
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !1041, metadata !680) #10, !dbg !1052
  call void @llvm.dbg.value(metadata i8* %189, i64 0, metadata !847, metadata !680) #10, !dbg !1055
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !848, metadata !680) #10, !dbg !1056
  call void @llvm.dbg.value(metadata i1 %141, i64 0, metadata !849, metadata !680) #10, !dbg !1057
  call void @llvm.dbg.value(metadata i1 %160, i64 0, metadata !850, metadata !680) #10, !dbg !1058
  %192 = call i32 @strcmp(i8* nonnull %189, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #14, !dbg !1059
  %193 = icmp eq i32 %192, 0, !dbg !1059
  br i1 %193, label %194, label %196, !dbg !1060

; <label>:194:                                    ; preds = %188
  store i1 true, i1* @have_read_stdin, align 1
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !851, metadata !680) #10, !dbg !1061
  %195 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i32 5) #10, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %195, i64 0, metadata !847, metadata !680) #10, !dbg !1055
  br label %204, !dbg !1065

; <label>:196:                                    ; preds = %188
  %197 = call i32 (i8*, i32, ...) @open(i8* nonnull %189, i32 0) #10, !dbg !1066
  call void @llvm.dbg.value(metadata i32 %197, i64 0, metadata !851, metadata !680) #10, !dbg !1061
  %198 = icmp slt i32 %197, 0, !dbg !1068
  br i1 %198, label %199, label %204, !dbg !1070

; <label>:199:                                    ; preds = %196
  %200 = tail call i32* @__errno_location() #17, !dbg !1071
  %201 = load i32, i32* %200, align 4, !dbg !1071, !tbaa !1020
  %202 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i32 5) #10, !dbg !1073
  %203 = call i8* @quotearg_style(i32 4, i8* nonnull %189) #10, !dbg !1074
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %201, i8* %202, i8* %203) #10, !dbg !1075
  br label %834, !dbg !1076

; <label>:204:                                    ; preds = %196, %194
  %205 = phi i32 [ 0, %194 ], [ %197, %196 ]
  %206 = phi i8* [ %195, %194 ], [ %189, %196 ]
  call void @llvm.dbg.value(metadata i8* %206, i64 0, metadata !847, metadata !680) #10, !dbg !1055
  call void @llvm.dbg.value(metadata i32 %205, i64 0, metadata !851, metadata !680) #10, !dbg !1061
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !1077, metadata !680) #10, !dbg !1092
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !898, metadata !680) #10, !dbg !1094
  call void @llvm.dbg.value(metadata i8* %206, i64 0, metadata !835, metadata !680) #10, !dbg !1096
  call void @llvm.dbg.value(metadata i32 %205, i64 0, metadata !836, metadata !680) #10, !dbg !1097
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !837, metadata !680) #10, !dbg !1098
  call void @llvm.dbg.value(metadata i1 %141, i64 0, metadata !838, metadata !680) #10, !dbg !1099
  call void @llvm.dbg.value(metadata i1 %160, i64 0, metadata !839, metadata !680) #10, !dbg !1100
  %207 = load i1, i1* @print_headers, align 1
  br i1 %207, label %208, label %212, !dbg !1101

; <label>:208:                                    ; preds = %204
  call void @llvm.dbg.value(metadata i8* %206, i64 0, metadata !116, metadata !680) #10, !dbg !1102
  %209 = load i1, i1* @write_header.first_file, align 1
  %210 = select i1 %209, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !1105
  %211 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i64 0, i64 0), i8* %210, i8* %206) #10, !dbg !1105
  store i1 true, i1* @write_header.first_file, align 1
  br label %212, !dbg !1106

; <label>:212:                                    ; preds = %208, %204
  br i1 %160, label %759, label %213, !dbg !1107

; <label>:213:                                    ; preds = %212
  call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !840, metadata !680) #10, !dbg !1108
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %165) #10, !dbg !1109
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !841, metadata !680) #10, !dbg !1110
  call void @llvm.dbg.value(metadata i32 %205, i64 0, metadata !1111, metadata !680) #10, !dbg !1119
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !1118, metadata !680) #10, !dbg !1119
  %214 = call i32 @__fxstat(i32 1, i32 %205, %struct.stat* nonnull %7) #10, !dbg !1122
  %215 = icmp eq i32 %214, 0, !dbg !1123
  br i1 %215, label %221, label %216, !dbg !1124

; <label>:216:                                    ; preds = %213
  %217 = tail call i32* @__errno_location() #17, !dbg !1125
  %218 = load i32, i32* %217, align 4, !dbg !1125, !tbaa !1020
  %219 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i32 5) #10, !dbg !1127
  %220 = call i8* @quotearg_style(i32 4, i8* %206) #10, !dbg !1128
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %218, i8* %219, i8* %220) #10, !dbg !1129
  br label %757, !dbg !1130

; <label>:221:                                    ; preds = %213
  %222 = load i1, i1* @presume_input_pipe, align 1
  br i1 %222, label %232, label %223, !dbg !1131

; <label>:223:                                    ; preds = %221
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !841, metadata !680) #10, !dbg !1110
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !1133, metadata !680) #10, !dbg !1138
  %224 = load i32, i32* %187, align 8, !dbg !1140, !tbaa !1141
  %225 = trunc i32 %224 to i16, !dbg !1145
  %226 = and i16 %225, -4096, !dbg !1145
  switch i16 %226, label %232 [
    i16 -32768, label %227
    i16 -24576, label %227
  ], !dbg !1145

; <label>:227:                                    ; preds = %223, %223
  %228 = call fastcc i64 @elseek(i32 %205, i64 0, i32 1, i8* %206) #10, !dbg !1146
  call void @llvm.dbg.value(metadata i64 %228, i64 0, metadata !840, metadata !680) #10, !dbg !1108
  %229 = icmp slt i64 %228, 0, !dbg !1148
  br i1 %229, label %757, label %230, !dbg !1150

; <label>:230:                                    ; preds = %227
  %231 = load i1, i1* @presume_input_pipe, align 1
  br label %232, !dbg !1150

; <label>:232:                                    ; preds = %230, %223, %221
  %233 = phi i1 [ true, %221 ], [ %231, %230 ], [ false, %223 ]
  %234 = phi i64 [ -1, %221 ], [ %228, %230 ], [ -1, %223 ]
  call void @llvm.dbg.value(metadata i64 %234, i64 0, metadata !840, metadata !680) #10, !dbg !1108
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !841, metadata !680) #10, !dbg !1110
  %235 = load i64, i64* %166, align 8, !tbaa !1151
  %236 = icmp slt i64 %234, 0
  %237 = or i1 %233, %236
  br i1 %141, label %238, label %553, !dbg !1152

; <label>:238:                                    ; preds = %232
  call void @llvm.dbg.value(metadata i8* %206, i64 0, metadata !891, metadata !680) #10, !dbg !1153
  call void @llvm.dbg.value(metadata i32 %205, i64 0, metadata !892, metadata !680) #10, !dbg !1154
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !893, metadata !680) #10, !dbg !1155
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !894, metadata !680) #10, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %234, i64 0, metadata !895, metadata !680) #10, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !896, metadata !680) #10, !dbg !1158
  br i1 %237, label %246, label %239, !dbg !1159

; <label>:239:                                    ; preds = %238
  %240 = load i64, i64* %167, align 8, !dbg !1160, !tbaa !1161
  %241 = icmp sgt i64 %240, 0, !dbg !1160
  %242 = icmp ult i64 %240, 2305843009213693953, !dbg !1160
  %243 = and i1 %241, %242, !dbg !1160
  %244 = select i1 %243, i64 %240, i64 512, !dbg !1160
  %245 = icmp sgt i64 %235, %244, !dbg !1162
  br i1 %245, label %449, label %246, !dbg !1163

; <label>:246:                                    ; preds = %239, %238
  call void @llvm.dbg.value(metadata i8* %206, i64 0, metadata !1164, metadata !680) #10, !dbg !1195
  call void @llvm.dbg.value(metadata i32 %205, i64 0, metadata !1167, metadata !680) #10, !dbg !1197
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !1168, metadata !680) #10, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %234, i64 0, metadata !1169, metadata !680) #10, !dbg !1199
  call void @llvm.dbg.value(metadata i64 %234, i64 0, metadata !1170, metadata !680) #10, !dbg !1200
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1183, metadata !680) #10, !dbg !1201
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1184, metadata !680) #10, !dbg !1202
  %247 = call noalias i8* @xmalloc(i64 8216) #10, !dbg !1203
  %248 = bitcast i8* %247 to %struct.linebuffer*, !dbg !1203
  call void @llvm.dbg.value(metadata %struct.linebuffer* %248, i64 0, metadata !1181, metadata !680) #10, !dbg !1204
  call void @llvm.dbg.value(metadata %struct.linebuffer* %248, i64 0, metadata !1171, metadata !680) #10, !dbg !1205
  %249 = getelementptr inbounds i8, i8* %247, i64 8192, !dbg !1206
  call void @llvm.memset.p0i8.i64(i8* %249, i8 0, i64 24, i32 8, i1 false) #10, !dbg !1207
  %250 = call noalias i8* @xmalloc(i64 8216) #10, !dbg !1208
  call void @llvm.dbg.value(metadata i64 %234, i64 0, metadata !1170, metadata !680) #10, !dbg !1200
  call void @llvm.dbg.value(metadata %struct.linebuffer* %248, i64 0, metadata !1171, metadata !680) #10, !dbg !1205
  call void @llvm.dbg.value(metadata %struct.linebuffer* %248, i64 0, metadata !1181, metadata !680) #10, !dbg !1204
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1183, metadata !680) #10, !dbg !1201
  %251 = call i64 @safe_read(i32 %205, i8* %250, i64 8192) #10, !dbg !1209
  call void @llvm.dbg.value(metadata i64 %251, i64 0, metadata !1185, metadata !680) #10, !dbg !1210
  %252 = add i64 %251, 1, !dbg !1211
  %253 = icmp ult i64 %252, 2, !dbg !1211
  br i1 %253, label %337, label %254, !dbg !1211

; <label>:254:                                    ; preds = %246
  br i1 %162, label %255, label %256, !dbg !1211

; <label>:255:                                    ; preds = %254
  br label %278, !dbg !1213

; <label>:256:                                    ; preds = %254
  %257 = bitcast i8* %250 to %struct.linebuffer*, !dbg !1208
  br label %258, !dbg !1211

; <label>:258:                                    ; preds = %327, %256
  %259 = phi i64 [ %251, %256 ], [ %334, %327 ]
  %260 = phi i8* [ %250, %256 ], [ %333, %327 ]
  %261 = phi i64 [ %234, %256 ], [ %332, %327 ]
  %262 = phi %struct.linebuffer* [ %248, %256 ], [ %331, %327 ]
  %263 = phi %struct.linebuffer* [ %248, %256 ], [ %330, %327 ]
  %264 = phi i64 [ 0, %256 ], [ %329, %327 ]
  %265 = phi %struct.linebuffer* [ %257, %256 ], [ %328, %327 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %265, i64 0, metadata !1182, metadata !680) #10, !dbg !1216
  call void @llvm.dbg.value(metadata i64 %264, i64 0, metadata !1183, metadata !680) #10, !dbg !1201
  call void @llvm.dbg.value(metadata %struct.linebuffer* %263, i64 0, metadata !1181, metadata !680) #10, !dbg !1204
  call void @llvm.dbg.value(metadata %struct.linebuffer* %262, i64 0, metadata !1171, metadata !680) #10, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %261, i64 0, metadata !1170, metadata !680) #10, !dbg !1200
  %266 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %265, i64 0, i32 1, !dbg !1217
  store i64 %259, i64* %266, align 8, !dbg !1218, !tbaa !1219
  %267 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %265, i64 0, i32 2, !dbg !1221
  %268 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %265, i64 0, i32 0, i64 %259, !dbg !1222
  call void @llvm.dbg.value(metadata i8* %268, i64 0, metadata !1186, metadata !680) #10, !dbg !1223
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !1189, metadata !680) #10, !dbg !1224
  call void @llvm.dbg.value(metadata i8* %260, i64 0, metadata !1189, metadata !680) #10, !dbg !1224
  %269 = bitcast i64* %267 to i8*
  call void @llvm.memset.p0i8.i64(i8* %269, i8 0, i64 16, i32 8, i1 false) #10, !dbg !1225
  %270 = load i1, i1* @line_end, align 1
  %271 = select i1 %270, i32 10, i32 0, !dbg !1226
  %272 = ptrtoint i8* %268 to i64, !dbg !1227
  %273 = ptrtoint i8* %260 to i64, !dbg !1227
  %274 = sub i64 %272, %273, !dbg !1227
  %275 = call i8* @memchr(i8* %260, i32 %271, i64 %274) #14, !dbg !1228
  call void @llvm.dbg.value(metadata i8* %275, i64 0, metadata !1189, metadata !680) #10, !dbg !1224
  %276 = icmp eq i8* %275, null, !dbg !1229
  br i1 %276, label %294, label %277, !dbg !1229

; <label>:277:                                    ; preds = %258
  br label %285, !dbg !1230

; <label>:278:                                    ; preds = %255, %278
  %279 = phi i64 [ %282, %278 ], [ %251, %255 ]
  %280 = phi i64 [ %281, %278 ], [ %234, %255 ]
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1170, metadata !680) #10, !dbg !1200
  %281 = add i64 %280, %279, !dbg !1213
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1170, metadata !680) #10, !dbg !1200
  call fastcc void @xwrite_stdout(i8* %250, i64 %279) #10, !dbg !1232
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1170, metadata !680) #10, !dbg !1200
  call void @llvm.dbg.value(metadata %struct.linebuffer* %262, i64 0, metadata !1171, metadata !680) #10, !dbg !1205
  call void @llvm.dbg.value(metadata %struct.linebuffer* %263, i64 0, metadata !1181, metadata !680) #10, !dbg !1204
  call void @llvm.dbg.value(metadata i64 %264, i64 0, metadata !1183, metadata !680) #10, !dbg !1201
  call void @llvm.dbg.value(metadata %struct.linebuffer* undef, i64 0, metadata !1182, metadata !680) #10, !dbg !1216
  %282 = call i64 @safe_read(i32 %205, i8* %250, i64 8192) #10, !dbg !1209
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1185, metadata !680) #10, !dbg !1210
  %283 = add i64 %282, 1, !dbg !1211
  %284 = icmp ult i64 %283, 2, !dbg !1211
  br i1 %284, label %337, label %278, !dbg !1211, !llvm.loop !1233

; <label>:285:                                    ; preds = %277, %285
  %286 = phi i64 [ %289, %285 ], [ 0, %277 ], !dbg !1236
  %287 = phi i8* [ %292, %285 ], [ %275, %277 ]
  %288 = getelementptr inbounds i8, i8* %287, i64 1, !dbg !1230
  call void @llvm.dbg.value(metadata i8* %288, i64 0, metadata !1189, metadata !680) #10, !dbg !1224
  %289 = add i64 %286, 1, !dbg !1236
  store i64 %289, i64* %267, align 8, !dbg !1236, !tbaa !1237
  call void @llvm.dbg.value(metadata i8* %288, i64 0, metadata !1189, metadata !680) #10, !dbg !1224
  %290 = ptrtoint i8* %288 to i64, !dbg !1227
  %291 = sub i64 %272, %290, !dbg !1227
  %292 = call i8* @memchr(i8* %288, i32 %271, i64 %291) #14, !dbg !1228
  call void @llvm.dbg.value(metadata i8* %292, i64 0, metadata !1189, metadata !680) #10, !dbg !1224
  %293 = icmp eq i8* %292, null, !dbg !1229
  br i1 %293, label %294, label %285, !dbg !1229, !llvm.loop !1238

; <label>:294:                                    ; preds = %285, %258
  %295 = phi i64 [ 0, %258 ], [ %289, %285 ], !dbg !1241
  %296 = add i64 %295, %264, !dbg !1242
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1183, metadata !680) #10, !dbg !1201
  %297 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %263, i64 0, i32 1, !dbg !1243
  %298 = load i64, i64* %297, align 8, !dbg !1243, !tbaa !1219
  %299 = add i64 %298, %259, !dbg !1245
  %300 = icmp ult i64 %299, 8192, !dbg !1246
  br i1 %300, label %301, label %309, !dbg !1247

; <label>:301:                                    ; preds = %294
  %302 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %263, i64 0, i32 0, i64 %298, !dbg !1248
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %302, i8* nonnull %260, i64 %259, i32 1, i1 false) #10, !dbg !1250
  %303 = bitcast i64* %266 to <2 x i64>*, !dbg !1251
  %304 = load <2 x i64>, <2 x i64>* %303, align 8, !dbg !1251, !tbaa !1252
  %305 = bitcast i64* %297 to <2 x i64>*, !dbg !1253
  %306 = load <2 x i64>, <2 x i64>* %305, align 8, !dbg !1253, !tbaa !1252
  %307 = add <2 x i64> %306, %304, !dbg !1253
  %308 = bitcast i64* %297 to <2 x i64>*, !dbg !1253
  store <2 x i64> %307, <2 x i64>* %308, align 8, !dbg !1253, !tbaa !1252
  br label %327, !dbg !1254

; <label>:309:                                    ; preds = %294
  %310 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %263, i64 0, i32 3, !dbg !1255
  store %struct.linebuffer* %265, %struct.linebuffer** %310, align 8, !dbg !1257, !tbaa !1258
  call void @llvm.dbg.value(metadata %struct.linebuffer* %265, i64 0, metadata !1181, metadata !680) #10, !dbg !1204
  %311 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %262, i64 0, i32 2, !dbg !1259
  %312 = load i64, i64* %311, align 8, !dbg !1259, !tbaa !1237
  %313 = sub i64 %296, %312, !dbg !1261
  %314 = icmp ugt i64 %313, %92, !dbg !1262
  br i1 %314, label %315, label %324, !dbg !1263

; <label>:315:                                    ; preds = %309
  %316 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %262, i64 0, i32 1, !dbg !1264
  %317 = load i64, i64* %316, align 8, !dbg !1264, !tbaa !1219
  %318 = add i64 %317, %261, !dbg !1266
  call void @llvm.dbg.value(metadata i64 %318, i64 0, metadata !1170, metadata !680) #10, !dbg !1200
  %319 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %262, i64 0, i32 0, i64 0, !dbg !1267
  call fastcc void @xwrite_stdout(i8* %319, i64 %317) #10, !dbg !1268
  call void @llvm.dbg.value(metadata %struct.linebuffer* %262, i64 0, metadata !1182, metadata !680) #10, !dbg !1216
  %320 = load i64, i64* %311, align 8, !dbg !1269, !tbaa !1237
  %321 = sub i64 %296, %320, !dbg !1270
  call void @llvm.dbg.value(metadata i64 %321, i64 0, metadata !1183, metadata !680) #10, !dbg !1201
  %322 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %262, i64 0, i32 3, !dbg !1271
  %323 = load %struct.linebuffer*, %struct.linebuffer** %322, align 8, !dbg !1271, !tbaa !1258
  call void @llvm.dbg.value(metadata %struct.linebuffer* %323, i64 0, metadata !1171, metadata !680) #10, !dbg !1205
  br label %327, !dbg !1272

; <label>:324:                                    ; preds = %309
  %325 = call noalias i8* @xmalloc(i64 8216) #10, !dbg !1273
  %326 = bitcast i8* %325 to %struct.linebuffer*, !dbg !1273
  call void @llvm.dbg.value(metadata %struct.linebuffer* %326, i64 0, metadata !1182, metadata !680) #10, !dbg !1216
  br label %327

; <label>:327:                                    ; preds = %324, %315, %301
  %328 = phi %struct.linebuffer* [ %265, %301 ], [ %262, %315 ], [ %326, %324 ]
  %329 = phi i64 [ %296, %301 ], [ %321, %315 ], [ %296, %324 ]
  %330 = phi %struct.linebuffer* [ %263, %301 ], [ %265, %315 ], [ %265, %324 ]
  %331 = phi %struct.linebuffer* [ %262, %301 ], [ %323, %315 ], [ %262, %324 ]
  %332 = phi i64 [ %261, %301 ], [ %318, %315 ], [ %261, %324 ]
  call void @llvm.dbg.value(metadata i64 %332, i64 0, metadata !1170, metadata !680) #10, !dbg !1200
  call void @llvm.dbg.value(metadata %struct.linebuffer* %331, i64 0, metadata !1171, metadata !680) #10, !dbg !1205
  call void @llvm.dbg.value(metadata %struct.linebuffer* %330, i64 0, metadata !1181, metadata !680) #10, !dbg !1204
  call void @llvm.dbg.value(metadata i64 %329, i64 0, metadata !1183, metadata !680) #10, !dbg !1201
  call void @llvm.dbg.value(metadata %struct.linebuffer* %328, i64 0, metadata !1182, metadata !680) #10, !dbg !1216
  call void @llvm.dbg.value(metadata i64 %332, i64 0, metadata !1170, metadata !680) #10, !dbg !1200
  call void @llvm.dbg.value(metadata %struct.linebuffer* %331, i64 0, metadata !1171, metadata !680) #10, !dbg !1205
  call void @llvm.dbg.value(metadata %struct.linebuffer* %330, i64 0, metadata !1181, metadata !680) #10, !dbg !1204
  call void @llvm.dbg.value(metadata i64 %329, i64 0, metadata !1183, metadata !680) #10, !dbg !1201
  call void @llvm.dbg.value(metadata %struct.linebuffer* %328, i64 0, metadata !1182, metadata !680) #10, !dbg !1216
  %333 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %328, i64 0, i32 0, i64 0, !dbg !1274
  %334 = call i64 @safe_read(i32 %205, i8* %333, i64 8192) #10, !dbg !1209
  call void @llvm.dbg.value(metadata i64 %334, i64 0, metadata !1185, metadata !680) #10, !dbg !1210
  %335 = add i64 %334, 1, !dbg !1211
  %336 = icmp ult i64 %335, 2, !dbg !1211
  br i1 %336, label %337, label %258, !dbg !1211, !llvm.loop !1233

; <label>:337:                                    ; preds = %327, %278, %246
  %338 = phi i64 [ 0, %246 ], [ 0, %278 ], [ %329, %327 ]
  %339 = phi %struct.linebuffer* [ %248, %246 ], [ %248, %278 ], [ %330, %327 ]
  %340 = phi %struct.linebuffer* [ %248, %246 ], [ %248, %278 ], [ %331, %327 ]
  %341 = phi i64 [ %234, %246 ], [ %281, %278 ], [ %332, %327 ]
  %342 = phi i8* [ %250, %246 ], [ %250, %278 ], [ %333, %327 ]
  %343 = phi i64 [ %251, %246 ], [ %282, %278 ], [ %334, %327 ]
  %344 = icmp eq i64 %343, -1, !dbg !1275
  call void @free(i8* %342) #10, !dbg !1276
  br i1 %344, label %345, label %350, !dbg !1277

; <label>:345:                                    ; preds = %337
  %346 = tail call i32* @__errno_location() #17, !dbg !1278
  %347 = load i32, i32* %346, align 4, !dbg !1278, !tbaa !1020
  %348 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1281
  %349 = call i8* @quotearg_style(i32 4, i8* %206) #10, !dbg !1282
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %347, i8* %348, i8* %349) #10, !dbg !1283
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1184, metadata !680) #10, !dbg !1202
  br label %428, !dbg !1284

; <label>:350:                                    ; preds = %337
  %351 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %339, i64 0, i32 1, !dbg !1285
  %352 = load i64, i64* %351, align 8, !dbg !1285, !tbaa !1219
  %353 = icmp eq i64 %352, 0, !dbg !1287
  br i1 %353, label %367, label %354, !dbg !1288

; <label>:354:                                    ; preds = %350
  %355 = add i64 %352, -1, !dbg !1289
  %356 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %339, i64 0, i32 0, i64 %355, !dbg !1290
  %357 = load i8, i8* %356, align 1, !dbg !1290, !tbaa !928
  %358 = sext i8 %357 to i32, !dbg !1290
  %359 = load i1, i1* @line_end, align 1
  %360 = select i1 %359, i32 10, i32 0, !dbg !1291
  %361 = icmp eq i32 %360, %358, !dbg !1292
  br i1 %361, label %367, label %362, !dbg !1293

; <label>:362:                                    ; preds = %354
  %363 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %339, i64 0, i32 2, !dbg !1294
  %364 = load i64, i64* %363, align 8, !dbg !1296, !tbaa !1237
  %365 = add i64 %364, 1, !dbg !1296
  store i64 %365, i64* %363, align 8, !dbg !1296, !tbaa !1237
  %366 = add i64 %338, 1, !dbg !1297
  call void @llvm.dbg.value(metadata i64 %366, i64 0, metadata !1183, metadata !680) #10, !dbg !1201
  br label %367, !dbg !1298

; <label>:367:                                    ; preds = %362, %354, %350
  %368 = phi i64 [ %366, %362 ], [ %338, %354 ], [ %338, %350 ]
  call void @llvm.dbg.value(metadata i64 %368, i64 0, metadata !1183, metadata !680) #10, !dbg !1201
  call void @llvm.dbg.value(metadata %struct.linebuffer* undef, i64 0, metadata !1182, metadata !680) #10, !dbg !1216
  call void @llvm.dbg.value(metadata i64 %341, i64 0, metadata !1170, metadata !680) #10, !dbg !1200
  call void @llvm.dbg.value(metadata i64 %368, i64 0, metadata !1183, metadata !680) #10, !dbg !1201
  call void @llvm.dbg.value(metadata %struct.linebuffer* %340, i64 0, metadata !1182, metadata !680) #10, !dbg !1216
  %369 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %340, i64 0, i32 2, !dbg !1299
  %370 = load i64, i64* %369, align 8, !dbg !1299, !tbaa !1237
  %371 = sub i64 %368, %370, !dbg !1302
  %372 = icmp ugt i64 %371, %92, !dbg !1303
  br i1 %372, label %373, label %391, !dbg !1304

; <label>:373:                                    ; preds = %367
  br label %374, !dbg !1305

; <label>:374:                                    ; preds = %373, %374
  %375 = phi i64* [ %387, %374 ], [ %369, %373 ]
  %376 = phi i64 [ %381, %374 ], [ %341, %373 ]
  %377 = phi i64 [ %384, %374 ], [ %368, %373 ]
  %378 = phi %struct.linebuffer* [ %386, %374 ], [ %340, %373 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %378, i64 0, metadata !1182, metadata !680) #10, !dbg !1216
  call void @llvm.dbg.value(metadata i64 %377, i64 0, metadata !1183, metadata !680) #10, !dbg !1201
  call void @llvm.dbg.value(metadata i64 %376, i64 0, metadata !1170, metadata !680) #10, !dbg !1200
  %379 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %378, i64 0, i32 1, !dbg !1305
  %380 = load i64, i64* %379, align 8, !dbg !1305, !tbaa !1219
  %381 = add i64 %380, %376, !dbg !1307
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1170, metadata !680) #10, !dbg !1200
  %382 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %378, i64 0, i32 0, i64 0, !dbg !1308
  call fastcc void @xwrite_stdout(i8* %382, i64 %380) #10, !dbg !1309
  %383 = load i64, i64* %375, align 8, !dbg !1310, !tbaa !1237
  %384 = sub i64 %377, %383, !dbg !1311
  call void @llvm.dbg.value(metadata i64 %384, i64 0, metadata !1183, metadata !680) #10, !dbg !1201
  %385 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %378, i64 0, i32 3, !dbg !1312
  %386 = load %struct.linebuffer*, %struct.linebuffer** %385, align 8, !dbg !1312, !tbaa !1258
  call void @llvm.dbg.value(metadata %struct.linebuffer* %386, i64 0, metadata !1182, metadata !680) #10, !dbg !1216
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1170, metadata !680) #10, !dbg !1200
  call void @llvm.dbg.value(metadata i64 %384, i64 0, metadata !1183, metadata !680) #10, !dbg !1201
  call void @llvm.dbg.value(metadata %struct.linebuffer* %386, i64 0, metadata !1182, metadata !680) #10, !dbg !1216
  %387 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %386, i64 0, i32 2, !dbg !1299
  %388 = load i64, i64* %387, align 8, !dbg !1299, !tbaa !1237
  %389 = sub i64 %384, %388, !dbg !1302
  %390 = icmp ugt i64 %389, %92, !dbg !1303
  br i1 %390, label %374, label %391, !dbg !1304, !llvm.loop !1313

; <label>:391:                                    ; preds = %374, %367
  %392 = phi i64 [ %370, %367 ], [ %388, %374 ]
  %393 = phi %struct.linebuffer* [ %340, %367 ], [ %386, %374 ]
  %394 = phi i64 [ %368, %367 ], [ %384, %374 ]
  %395 = phi i64 [ %341, %367 ], [ %381, %374 ]
  %396 = phi i64* [ %369, %367 ], [ %387, %374 ]
  %397 = icmp ugt i64 %394, %92, !dbg !1316
  br i1 %397, label %398, label %428, !dbg !1317

; <label>:398:                                    ; preds = %391
  %399 = sub i64 %394, %92, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %399, i64 0, metadata !1190, metadata !680) #10, !dbg !1319
  %400 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %393, i64 0, i32 0, i64 0, !dbg !1320
  call void @llvm.dbg.value(metadata i8* %400, i64 0, metadata !1194, metadata !680) #10, !dbg !1321
  call void @llvm.dbg.value(metadata i8* %400, i64 0, metadata !1194, metadata !680) #10, !dbg !1321
  call void @llvm.dbg.value(metadata i64 %399, i64 0, metadata !1190, metadata !680) #10, !dbg !1319
  %401 = icmp eq i64 %399, 0, !dbg !1322
  br i1 %401, label %422, label %402, !dbg !1323

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %393, i64 0, i32 1, !dbg !1324
  %404 = load i64, i64* %403, align 8, !dbg !1324, !tbaa !1219
  %405 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %393, i64 0, i32 0, i64 %404, !dbg !1325
  %406 = ptrtoint i8* %405 to i64
  %407 = load i1, i1* @line_end, align 1
  %408 = select i1 %407, i32 10, i32 0
  br label %409, !dbg !1323

; <label>:409:                                    ; preds = %417, %402
  %410 = phi i64 [ %392, %402 ], [ %419, %417 ]
  %411 = phi i8* [ %400, %402 ], [ %418, %417 ]
  %412 = phi i64 [ %399, %402 ], [ %420, %417 ]
  call void @llvm.dbg.value(metadata i64 %412, i64 0, metadata !1190, metadata !680) #10, !dbg !1319
  call void @llvm.dbg.value(metadata i8* %411, i64 0, metadata !1194, metadata !680) #10, !dbg !1321
  %413 = ptrtoint i8* %411 to i64, !dbg !1326
  %414 = sub i64 %406, %413, !dbg !1326
  %415 = call i8* @memchr(i8* %411, i32 %408, i64 %414) #14, !dbg !1327
  call void @llvm.dbg.value(metadata i8* %415, i64 0, metadata !1194, metadata !680) #10, !dbg !1321
  %416 = icmp eq i8* %415, null, !dbg !1323
  call void @llvm.dbg.value(metadata i8* %415, i64 0, metadata !1194, metadata !680) #10, !dbg !1321
  br i1 %416, label %422, label %417, !dbg !1328

; <label>:417:                                    ; preds = %409
  %418 = getelementptr inbounds i8, i8* %415, i64 1, !dbg !1329
  call void @llvm.dbg.value(metadata i8* %418, i64 0, metadata !1194, metadata !680) #10, !dbg !1321
  %419 = add i64 %410, 1, !dbg !1331
  store i64 %419, i64* %396, align 8, !dbg !1331, !tbaa !1237
  %420 = add i64 %412, -1, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %420, i64 0, metadata !1190, metadata !680) #10, !dbg !1319
  call void @llvm.dbg.value(metadata i8* %418, i64 0, metadata !1194, metadata !680) #10, !dbg !1321
  call void @llvm.dbg.value(metadata i64 %420, i64 0, metadata !1190, metadata !680) #10, !dbg !1319
  %421 = icmp eq i64 %420, 0, !dbg !1322
  br i1 %421, label %422, label %409, !dbg !1323, !llvm.loop !1333

; <label>:422:                                    ; preds = %417, %409, %398
  %423 = phi i8* [ %400, %398 ], [ null, %409 ], [ %418, %417 ]
  %424 = ptrtoint i8* %423 to i64, !dbg !1336
  %425 = ptrtoint %struct.linebuffer* %393 to i64, !dbg !1336
  %426 = sub i64 %424, %425, !dbg !1336
  %427 = add i64 %426, %395, !dbg !1337
  call void @llvm.dbg.value(metadata i64 %427, i64 0, metadata !1170, metadata !680) #10, !dbg !1200
  call fastcc void @xwrite_stdout(i8* %400, i64 %426) #10, !dbg !1338
  br label %428, !dbg !1339

; <label>:428:                                    ; preds = %422, %391, %345
  %429 = phi i8 [ 0, %345 ], [ 1, %422 ], [ 1, %391 ]
  %430 = phi i64 [ %341, %345 ], [ %427, %422 ], [ %395, %391 ]
  call void @llvm.dbg.value(metadata i64 %430, i64 0, metadata !1170, metadata !680) #10, !dbg !1200
  call void @llvm.dbg.value(metadata i8 %429, i64 0, metadata !1184, metadata !680) #10, !dbg !1202
  call void @llvm.dbg.value(metadata %struct.linebuffer* %340, i64 0, metadata !1171, metadata !680) #10, !dbg !1205
  %431 = icmp eq %struct.linebuffer* %340, null, !dbg !1340
  br i1 %431, label %439, label %432, !dbg !1340

; <label>:432:                                    ; preds = %428
  br label %433, !dbg !1341

; <label>:433:                                    ; preds = %432, %433
  %434 = phi %struct.linebuffer* [ %436, %433 ], [ %340, %432 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %434, i64 0, metadata !1171, metadata !680) #10, !dbg !1205
  %435 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %434, i64 0, i32 3, !dbg !1341
  %436 = load %struct.linebuffer*, %struct.linebuffer** %435, align 8, !dbg !1341, !tbaa !1258
  call void @llvm.dbg.value(metadata %struct.linebuffer* %436, i64 0, metadata !1182, metadata !680) #10, !dbg !1216
  %437 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %434, i64 0, i32 0, i64 0, !dbg !1343
  call void @free(i8* %437) #10, !dbg !1344
  call void @llvm.dbg.value(metadata %struct.linebuffer* %436, i64 0, metadata !1171, metadata !680) #10, !dbg !1205
  call void @llvm.dbg.value(metadata %struct.linebuffer* %436, i64 0, metadata !1171, metadata !680) #10, !dbg !1205
  %438 = icmp eq %struct.linebuffer* %436, null, !dbg !1340
  br i1 %438, label %439, label %433, !dbg !1340, !llvm.loop !1345

; <label>:439:                                    ; preds = %433, %428
  %440 = icmp sgt i64 %234, -1, !dbg !1348
  br i1 %440, label %441, label %445, !dbg !1350

; <label>:441:                                    ; preds = %439
  %442 = call fastcc i64 @elseek(i32 %205, i64 %430, i32 0, i8* %206) #10, !dbg !1351
  %443 = icmp slt i64 %442, 0, !dbg !1352
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1184, metadata !680) #10, !dbg !1202
  %444 = select i1 %443, i8 0, i8 %429, !dbg !1353
  br label %445, !dbg !1353

; <label>:445:                                    ; preds = %441, %439
  %446 = phi i8 [ %429, %439 ], [ %444, %441 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1184, metadata !680) #10, !dbg !1202
  %447 = and i8 %446, 1, !dbg !1354
  %448 = icmp ne i8 %447, 0, !dbg !1354
  br label %757, !dbg !1355

; <label>:449:                                    ; preds = %239
  %450 = icmp sgt i64 %235, %234, !dbg !1356
  br i1 %450, label %451, label %757, !dbg !1357

; <label>:451:                                    ; preds = %449
  call void @llvm.dbg.value(metadata i8* %206, i64 0, metadata !862, metadata !680) #10, !dbg !1358
  call void @llvm.dbg.value(metadata i32 %205, i64 0, metadata !863, metadata !680) #10, !dbg !1359
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !864, metadata !680) #10, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %234, i64 0, metadata !865, metadata !680) #10, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !866, metadata !680) #10, !dbg !1362
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %168) #10, !dbg !1363
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !868, metadata !680) #10, !dbg !1364
  %452 = sub nsw i64 %235, %234, !dbg !1365
  %453 = srem i64 %452, 8192, !dbg !1366
  call void @llvm.dbg.value(metadata i64 %453, i64 0, metadata !867, metadata !680) #10, !dbg !1367
  %454 = icmp eq i64 %453, 0, !dbg !1368
  %455 = select i1 %454, i64 8192, i64 %453, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %455, i64 0, metadata !867, metadata !680) #10, !dbg !1367
  %456 = sub i64 %235, %455, !dbg !1371
  call void @llvm.dbg.value(metadata i64 %456, i64 0, metadata !868, metadata !680) #10, !dbg !1364
  %457 = call fastcc i64 @elseek(i32 %205, i64 %456, i32 0, i8* %206) #10, !dbg !1372
  %458 = icmp slt i64 %457, 0, !dbg !1374
  br i1 %458, label %551, label %459, !dbg !1375

; <label>:459:                                    ; preds = %451
  %460 = call i64 @safe_read(i32 %205, i8* nonnull %168, i64 %455) #10, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !867, metadata !680) #10, !dbg !1367
  %461 = icmp eq i64 %460, -1, !dbg !1377
  br i1 %461, label %462, label %467, !dbg !1379

; <label>:462:                                    ; preds = %459
  %463 = tail call i32* @__errno_location() #17, !dbg !1380
  %464 = load i32, i32* %463, align 4, !dbg !1380, !tbaa !1020
  %465 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1382
  %466 = call i8* @quotearg_style(i32 4, i8* %206) #10, !dbg !1383
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %464, i8* %465, i8* %466) #10, !dbg !1384
  br label %551, !dbg !1385

; <label>:467:                                    ; preds = %459
  %468 = icmp ne i64 %460, 0, !dbg !1386
  %469 = and i1 %169, %468, !dbg !1388
  br i1 %469, label %470, label %480, !dbg !1388

; <label>:470:                                    ; preds = %467
  %471 = add i64 %460, -1, !dbg !1389
  %472 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 %471, !dbg !1390
  %473 = load i8, i8* %472, align 1, !dbg !1390, !tbaa !928
  %474 = sext i8 %473 to i32, !dbg !1390
  %475 = load i1, i1* @line_end, align 1
  %476 = select i1 %475, i32 10, i32 0, !dbg !1391
  %477 = icmp ne i32 %476, %474, !dbg !1392
  %478 = sext i1 %477 to i64, !dbg !1393
  %479 = add i64 %92, %478, !dbg !1393
  br label %480, !dbg !1393

; <label>:480:                                    ; preds = %470, %467
  %481 = phi i64 [ %92, %467 ], [ %479, %470 ]
  br label %482, !dbg !1394

; <label>:482:                                    ; preds = %480, %544
  %483 = phi i64 [ %541, %544 ], [ %456, %480 ]
  %484 = phi i64 [ %545, %544 ], [ %460, %480 ]
  %485 = phi i64 [ %538, %544 ], [ %481, %480 ]
  call void @llvm.dbg.value(metadata i64 %485, i64 0, metadata !864, metadata !680) #10, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %484, i64 0, metadata !867, metadata !680) #10, !dbg !1367
  call void @llvm.dbg.value(metadata i64 %483, i64 0, metadata !868, metadata !680) #10, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %484, i64 0, metadata !871, metadata !680) #10, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %485, i64 0, metadata !864, metadata !680) #10, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %484, i64 0, metadata !871, metadata !680) #10, !dbg !1395
  %486 = icmp eq i64 %484, 0, !dbg !1394
  br i1 %486, label %537, label %487, !dbg !1394

; <label>:487:                                    ; preds = %482
  %488 = load i1, i1* @line_end, align 1
  %489 = select i1 %488, i32 10, i32 0
  br label %490, !dbg !1394

; <label>:490:                                    ; preds = %534, %487
  %491 = phi i64 [ %485, %487 ], [ %535, %534 ]
  %492 = phi i64 [ %484, %487 ], [ %501, %534 ]
  call void @llvm.dbg.value(metadata i64 %492, i64 0, metadata !871, metadata !680) #10, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %491, i64 0, metadata !864, metadata !680) #10, !dbg !1360
  br i1 %169, label %495, label %493, !dbg !1396

; <label>:493:                                    ; preds = %490
  %494 = add i64 %492, -1, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %494, i64 0, metadata !871, metadata !680) #10, !dbg !1395
  br label %500, !dbg !1398

; <label>:495:                                    ; preds = %490
  %496 = call i8* @memrchr(i8* nonnull %168, i32 %489, i64 %492) #14, !dbg !1399
  call void @llvm.dbg.value(metadata i8* %496, i64 0, metadata !873, metadata !680) #10, !dbg !1400
  %497 = icmp eq i8* %496, null, !dbg !1401
  %498 = ptrtoint i8* %496 to i64, !dbg !1403
  %499 = sub i64 %498, %170, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !871, metadata !680) #10, !dbg !1395
  br i1 %497, label %537, label %500

; <label>:500:                                    ; preds = %495, %493
  %501 = phi i64 [ %494, %493 ], [ %499, %495 ]
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !871, metadata !680) #10, !dbg !1395
  %502 = icmp eq i64 %491, 0, !dbg !1404
  br i1 %502, label %503, label %534, !dbg !1405

; <label>:503:                                    ; preds = %500
  %504 = icmp sgt i64 %483, %234, !dbg !1406
  br i1 %504, label %505, label %528, !dbg !1407

; <label>:505:                                    ; preds = %503
  %506 = call fastcc i64 @elseek(i32 %205, i64 %234, i32 0, i8* %206) #10, !dbg !1408
  %507 = icmp slt i64 %506, 0, !dbg !1410
  br i1 %507, label %551, label %508, !dbg !1411

; <label>:508:                                    ; preds = %505
  %509 = sub nsw i64 %483, %234, !dbg !1412
  call void @llvm.dbg.value(metadata i32 %205, i64 0, metadata !903, metadata !680) #10, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %509, i64 0, metadata !904, metadata !680) #10, !dbg !1414
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %161) #10, !dbg !1415
  call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !905, metadata !680) #10, !dbg !1416
  call void @llvm.dbg.value(metadata i64 %509, i64 0, metadata !904, metadata !680) #10, !dbg !1414
  %510 = icmp eq i64 %509, 0, !dbg !1417
  br i1 %510, label %527, label %511, !dbg !1418

; <label>:511:                                    ; preds = %508
  br label %512, !dbg !1419

; <label>:512:                                    ; preds = %511, %523
  %513 = phi i64 [ %519, %523 ], [ %509, %511 ]
  call void @llvm.dbg.value(metadata i64 %513, i64 0, metadata !904, metadata !680) #10, !dbg !1414
  %514 = icmp ult i64 %513, 8192, !dbg !1419
  %515 = select i1 %514, i64 %513, i64 8192, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %515, i64 0, metadata !907, metadata !680) #10, !dbg !1420
  %516 = call i64 @safe_read(i32 %205, i8* nonnull %161, i64 %515) #10, !dbg !1421
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !909, metadata !680) #10, !dbg !1422
  %517 = icmp eq i64 %516, -1, !dbg !1423
  br i1 %517, label %525, label %518, !dbg !1425

; <label>:518:                                    ; preds = %512
  %519 = sub i64 %513, %516, !dbg !1426
  call void @llvm.dbg.value(metadata i64 %519, i64 0, metadata !904, metadata !680) #10, !dbg !1414
  %520 = icmp eq i64 %516, 0, !dbg !1427
  %521 = icmp ne i64 %519, 0, !dbg !1429
  %522 = and i1 %520, %521, !dbg !1430
  br i1 %522, label %525, label %523, !dbg !1430

; <label>:523:                                    ; preds = %518
  call fastcc void @xwrite_stdout(i8* nonnull %161, i64 %516) #10, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %519, i64 0, metadata !904, metadata !680) #10, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %519, i64 0, metadata !904, metadata !680) #10, !dbg !1414
  %524 = icmp eq i64 %519, 0, !dbg !1417
  br i1 %524, label %527, label %512, !dbg !1418, !llvm.loop !1432

; <label>:525:                                    ; preds = %518, %512
  %526 = phi i32 [ 2, %518 ], [ 1, %512 ]
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %161) #10, !dbg !1435
  call void @llvm.dbg.value(metadata i32 %526, i64 0, metadata !877, metadata !680) #10, !dbg !1436
  call fastcc void @diagnose_copy_fd_failure(i32 %526, i8* %206) #10, !dbg !1437
  br label %551, !dbg !1440

; <label>:527:                                    ; preds = %523, %508
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %161) #10, !dbg !1435
  br label %528

; <label>:528:                                    ; preds = %527, %503
  %529 = add i64 %501, 1, !dbg !1441
  call fastcc void @xwrite_stdout(i8* nonnull %168, i64 %529) #10, !dbg !1442
  %530 = add i64 %483, 1, !dbg !1443
  %531 = add i64 %530, %501, !dbg !1444
  %532 = call fastcc i64 @elseek(i32 %205, i64 %531, i32 0, i8* %206) #10, !dbg !1445
  %533 = icmp sgt i64 %532, -1, !dbg !1446
  br label %551, !dbg !1447

; <label>:534:                                    ; preds = %500
  %535 = add i64 %491, -1, !dbg !1448
  call void @llvm.dbg.value(metadata i64 %535, i64 0, metadata !864, metadata !680) #10, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !871, metadata !680) #10, !dbg !1395
  %536 = icmp eq i64 %501, 0, !dbg !1394
  br i1 %536, label %537, label %490, !dbg !1394, !llvm.loop !1449

; <label>:537:                                    ; preds = %534, %495, %482
  %538 = phi i64 [ %485, %482 ], [ %491, %495 ], [ %535, %534 ]
  %539 = icmp eq i64 %483, %234, !dbg !1452
  br i1 %539, label %551, label %540, !dbg !1454

; <label>:540:                                    ; preds = %537
  %541 = add nsw i64 %483, -8192, !dbg !1455
  call void @llvm.dbg.value(metadata i64 %541, i64 0, metadata !868, metadata !680) #10, !dbg !1364
  %542 = call fastcc i64 @elseek(i32 %205, i64 %541, i32 0, i8* %206) #10, !dbg !1456
  %543 = icmp slt i64 %542, 0, !dbg !1458
  br i1 %543, label %551, label %544, !dbg !1459

; <label>:544:                                    ; preds = %540
  %545 = call i64 @safe_read(i32 %205, i8* nonnull %168, i64 8192) #10, !dbg !1460
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !867, metadata !680) #10, !dbg !1367
  switch i64 %545, label %482 [
    i64 -1, label %546
    i64 0, label %551
  ], !dbg !1461, !llvm.loop !1462

; <label>:546:                                    ; preds = %544
  %547 = tail call i32* @__errno_location() #17, !dbg !1465
  %548 = load i32, i32* %547, align 4, !dbg !1465, !tbaa !1020
  %549 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1468
  %550 = call i8* @quotearg_style(i32 4, i8* %206) #10, !dbg !1469
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %548, i8* %549, i8* %550) #10, !dbg !1470
  br label %551, !dbg !1471

; <label>:551:                                    ; preds = %544, %540, %537, %546, %528, %525, %505, %462, %451
  %552 = phi i1 [ false, %462 ], [ false, %451 ], [ false, %546 ], [ %533, %528 ], [ false, %525 ], [ false, %505 ], [ true, %537 ], [ false, %540 ], [ true, %544 ]
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %168) #10, !dbg !1472
  br label %757, !dbg !1357

; <label>:553:                                    ; preds = %232
  call void @llvm.dbg.value(metadata i8* %206, i64 0, metadata !817, metadata !680) #10, !dbg !1473
  call void @llvm.dbg.value(metadata i32 %205, i64 0, metadata !818, metadata !680) #10, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !819, metadata !680) #10, !dbg !1475
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !820, metadata !680) #10, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %234, i64 0, metadata !821, metadata !680) #10, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !822, metadata !680) #10, !dbg !1478
  br i1 %237, label %561, label %554, !dbg !1479

; <label>:554:                                    ; preds = %553
  %555 = load i64, i64* %167, align 8, !dbg !1480, !tbaa !1161
  %556 = icmp sgt i64 %555, 0, !dbg !1480
  %557 = icmp ult i64 %555, 2305843009213693953, !dbg !1480
  %558 = and i1 %556, %557, !dbg !1480
  %559 = select i1 %558, i64 %555, i64 512, !dbg !1480
  %560 = icmp sgt i64 %235, %559, !dbg !1481
  br i1 %560, label %732, label %561, !dbg !1482

; <label>:561:                                    ; preds = %554, %553
  call void @llvm.dbg.value(metadata i8* %206, i64 0, metadata !731, metadata !680) #10, !dbg !1483
  call void @llvm.dbg.value(metadata i32 %205, i64 0, metadata !732, metadata !680) #10, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !733, metadata !680) #10, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %234, i64 0, metadata !734, metadata !680) #10, !dbg !1486
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !735, metadata !680) #10, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %234, i64 0, metadata !736, metadata !680) #10, !dbg !1488
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !737, metadata !680) #10, !dbg !1489
  br i1 %172, label %563, label %562, !dbg !1490

; <label>:562:                                    ; preds = %561
  br label %619, !dbg !1491

; <label>:563:                                    ; preds = %561
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !741, metadata !680) #10, !dbg !1496
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !742, metadata !680) #10, !dbg !1497
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !743, metadata !680) #10, !dbg !1498
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %173) #10, !dbg !1499
  call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !1500, metadata !680) #10, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1505, metadata !680) #10, !dbg !1508
  br i1 %174, label %564, label %565, !dbg !1509

; <label>:564:                                    ; preds = %563
  call void @xalloc_die() #15, !dbg !1510
  unreachable, !dbg !1510

; <label>:565:                                    ; preds = %563
  %566 = call noalias i8* @xmalloc(i64 %175) #10, !dbg !1512
  store i8* %566, i8** %176, align 16, !dbg !1513, !tbaa !687
  %567 = getelementptr inbounds i8, i8* %566, i64 %171, !dbg !1514
  store i8* %567, i8** %177, align 8, !dbg !1515, !tbaa !687
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !744, metadata !680) #10, !dbg !1516
  call void @llvm.dbg.value(metadata i64 %234, i64 0, metadata !736, metadata !680) #10, !dbg !1488
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !737, metadata !680) #10, !dbg !1489
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !741, metadata !680) #10, !dbg !1496
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !742, metadata !680) #10, !dbg !1497
  br label %568, !dbg !1517

; <label>:568:                                    ; preds = %612, %565
  %569 = phi i8* [ %566, %565 ], [ %615, %612 ], !dbg !1518
  %570 = phi i64 [ %234, %565 ], [ %608, %612 ]
  %571 = phi i8 [ 1, %565 ], [ 0, %612 ]
  %572 = phi i8 [ 0, %565 ], [ %588, %612 ]
  %573 = phi i1 [ false, %565 ], [ %609, %612 ]
  call void @llvm.dbg.value(metadata i8 %572, i64 0, metadata !742, metadata !680) #10, !dbg !1497
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !741, metadata !680) #10, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !736, metadata !680) #10, !dbg !1488
  %574 = call i64 @full_read(i32 %205, i8* %569, i64 %171) #10, !dbg !1519
  call void @llvm.dbg.value(metadata i64 %574, i64 0, metadata !745, metadata !680) #10, !dbg !1520
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !749, metadata !680) #10, !dbg !1521
  %575 = icmp ult i64 %574, %171, !dbg !1522
  br i1 %575, label %576, label %586, !dbg !1524

; <label>:576:                                    ; preds = %568
  %577 = tail call i32* @__errno_location() #17, !dbg !1525
  %578 = load i32, i32* %577, align 4, !dbg !1525, !tbaa !1020
  %579 = icmp eq i32 %578, 0, !dbg !1528
  br i1 %579, label %580, label %604, !dbg !1529

; <label>:580:                                    ; preds = %576
  %581 = icmp ule i64 %574, %92, !dbg !1530
  %582 = icmp eq i8 %571, 0, !dbg !1532
  %583 = and i1 %582, %581, !dbg !1535
  %584 = sub i64 %92, %574, !dbg !1536
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !749, metadata !680) #10, !dbg !1521
  %585 = select i1 %583, i64 %584, i64 0, !dbg !1535
  br label %586, !dbg !1535

; <label>:586:                                    ; preds = %580, %568
  %587 = phi i64 [ 0, %568 ], [ %585, %580 ]
  %588 = phi i8 [ %572, %568 ], [ 1, %580 ]
  call void @llvm.dbg.value(metadata i8 %588, i64 0, metadata !742, metadata !680) #10, !dbg !1497
  call void @llvm.dbg.value(metadata i64 %587, i64 0, metadata !749, metadata !680) #10, !dbg !1521
  %589 = icmp eq i8 %571, 0, !dbg !1538
  br i1 %589, label %590, label %598, !dbg !1540

; <label>:590:                                    ; preds = %586
  %591 = sub i64 %92, %587, !dbg !1541
  %592 = add i64 %591, %570, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %592, i64 0, metadata !736, metadata !680) #10, !dbg !1488
  %593 = xor i1 %573, true, !dbg !1544
  %594 = zext i1 %593 to i64, !dbg !1545
  %595 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 %594, !dbg !1545
  %596 = load i8*, i8** %595, align 8, !dbg !1545, !tbaa !687
  %597 = getelementptr inbounds i8, i8* %596, i64 8192, !dbg !1546
  call fastcc void @xwrite_stdout(i8* %597, i64 %591) #10, !dbg !1547
  br label %598, !dbg !1548

; <label>:598:                                    ; preds = %590, %586
  %599 = phi i64 [ %570, %586 ], [ %592, %590 ]
  call void @llvm.dbg.value(metadata i64 %599, i64 0, metadata !736, metadata !680) #10, !dbg !1488
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !741, metadata !680) #10, !dbg !1496
  %600 = icmp ugt i64 %574, %92, !dbg !1549
  br i1 %600, label %601, label %607, !dbg !1551

; <label>:601:                                    ; preds = %598
  %602 = sub i64 %574, %92, !dbg !1552
  %603 = add i64 %599, %602, !dbg !1554
  call void @llvm.dbg.value(metadata i64 %603, i64 0, metadata !736, metadata !680) #10, !dbg !1488
  call fastcc void @xwrite_stdout(i8* %569, i64 %602) #10, !dbg !1555
  br label %607, !dbg !1556

; <label>:604:                                    ; preds = %576
  %605 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1557
  %606 = call i8* @quotearg_style(i32 4, i8* %206) #10, !dbg !1559
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %578, i8* %605, i8* %606) #10, !dbg !1560
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !737, metadata !680) #10, !dbg !1489
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !736, metadata !680) #10, !dbg !1488
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !737, metadata !680) #10, !dbg !1489
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !741, metadata !680) #10, !dbg !1496
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !742, metadata !680) #10, !dbg !1497
  br label %616

; <label>:607:                                    ; preds = %601, %598
  %608 = phi i64 [ %599, %598 ], [ %603, %601 ]
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !736, metadata !680) #10, !dbg !1488
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !737, metadata !680) #10, !dbg !1489
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !741, metadata !680) #10, !dbg !1496
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !742, metadata !680) #10, !dbg !1497
  %609 = xor i1 %573, true, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %608, i64 0, metadata !736, metadata !680) #10, !dbg !1488
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !737, metadata !680) #10, !dbg !1489
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !741, metadata !680) #10, !dbg !1496
  call void @llvm.dbg.value(metadata i8 %588, i64 0, metadata !742, metadata !680) #10, !dbg !1497
  %610 = and i8 %588, 1, !dbg !1562
  %611 = icmp eq i8 %610, 0, !dbg !1562
  br i1 %611, label %612, label %616, !dbg !1517, !llvm.loop !1563

; <label>:612:                                    ; preds = %607
  %613 = zext i1 %609 to i64
  %614 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 %613
  %615 = load i8*, i8** %614, align 8, !dbg !1518, !tbaa !687
  br label %568, !dbg !1517

; <label>:616:                                    ; preds = %607, %604
  %617 = phi i64 [ %570, %604 ], [ %608, %607 ]
  %618 = phi i8 [ 0, %604 ], [ 1, %607 ]
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !736, metadata !680) #10, !dbg !1488
  call void @llvm.dbg.value(metadata i8 %618, i64 0, metadata !737, metadata !680) #10, !dbg !1489
  call void @free(i8* %566) #10, !dbg !1566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %173) #10, !dbg !1567
  br label %720, !dbg !1568

; <label>:619:                                    ; preds = %562, %681
  %620 = phi i64 [ %682, %681 ], [ %234, %562 ]
  %621 = phi i64 [ %649, %681 ], [ 0, %562 ]
  %622 = phi i64 [ %661, %681 ], [ 0, %562 ]
  %623 = phi i8** [ %648, %681 ], [ null, %562 ]
  %624 = phi i8* [ %647, %681 ], [ null, %562 ]
  %625 = phi i8* [ %646, %681 ], [ null, %562 ]
  %626 = phi i64 [ %684, %681 ], [ 1, %562 ]
  %627 = phi i64 [ %626, %681 ], [ 0, %562 ]
  %628 = phi i8 [ %674, %681 ], [ 0, %562 ]
  %629 = phi i8 [ %672, %681 ], [ 0, %562 ]
  call void @llvm.dbg.value(metadata i8 %629, i64 0, metadata !750, metadata !680) #10, !dbg !1569
  call void @llvm.dbg.value(metadata i8 %628, i64 0, metadata !753, metadata !680) #10, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %627, i64 0, metadata !754, metadata !680) #10, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !755, metadata !680) #10, !dbg !1572
  call void @llvm.dbg.value(metadata i8** %623, i64 0, metadata !756, metadata !680) #10, !dbg !1573
  call void @llvm.dbg.value(metadata i64 %622, i64 0, metadata !760, metadata !680) #10, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !761, metadata !680) #10, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %620, i64 0, metadata !736, metadata !680) #10, !dbg !1488
  %630 = icmp eq i64 %621, %627, !dbg !1491
  br i1 %630, label %631, label %645, !dbg !1576

; <label>:631:                                    ; preds = %619
  %632 = icmp eq i64 %621, 0, !dbg !1577
  br i1 %632, label %637, label %633, !dbg !1580

; <label>:633:                                    ; preds = %631
  %634 = icmp ugt i64 %621, %185, !dbg !1581
  %635 = shl i64 %621, 1, !dbg !1583
  call void @llvm.dbg.value(metadata i64 %635, i64 0, metadata !761, metadata !680) #10, !dbg !1575
  %636 = select i1 %634, i64 %182, i64 %635, !dbg !1584
  br label %637, !dbg !1584

; <label>:637:                                    ; preds = %633, %631
  %638 = phi i64 [ %636, %633 ], [ %184, %631 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !761, metadata !680) #10, !dbg !1575
  call void @llvm.dbg.value(metadata i8* %624, i64 0, metadata !1585, metadata !680) #10, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1590, metadata !680) #10, !dbg !1594
  call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !1591, metadata !680) #10, !dbg !1595
  %639 = icmp ugt i64 %638, 1152921504606846975, !dbg !1596
  br i1 %639, label %640, label %641, !dbg !1598

; <label>:640:                                    ; preds = %637
  call void @xalloc_die() #15, !dbg !1599
  unreachable, !dbg !1599

; <label>:641:                                    ; preds = %637
  %642 = shl i64 %638, 3, !dbg !1600
  %643 = call i8* @xrealloc(i8* %624, i64 %642) #10, !dbg !1601
  %644 = bitcast i8* %643 to i8**, !dbg !1602
  call void @llvm.dbg.value(metadata i8** %644, i64 0, metadata !756, metadata !680) #10, !dbg !1573
  br label %645, !dbg !1603

; <label>:645:                                    ; preds = %641, %619
  %646 = phi i8* [ %643, %641 ], [ %625, %619 ]
  %647 = phi i8* [ %643, %641 ], [ %624, %619 ]
  %648 = phi i8** [ %644, %641 ], [ %623, %619 ]
  %649 = phi i64 [ %638, %641 ], [ %621, %619 ]
  call void @llvm.dbg.value(metadata i64 %649, i64 0, metadata !761, metadata !680) #10, !dbg !1575
  call void @llvm.dbg.value(metadata i8** %648, i64 0, metadata !756, metadata !680) #10, !dbg !1573
  %650 = and i8 %628, 1, !dbg !1604
  %651 = icmp eq i8 %650, 0, !dbg !1604
  br i1 %651, label %655, label %652, !dbg !1606

; <label>:652:                                    ; preds = %645
  %653 = getelementptr inbounds i8*, i8** %648, i64 %627
  %654 = load i8*, i8** %653, align 8, !dbg !1607, !tbaa !687
  br label %659, !dbg !1606

; <label>:655:                                    ; preds = %645
  %656 = call noalias i8* @xmalloc(i64 8192) #10, !dbg !1608
  %657 = getelementptr inbounds i8*, i8** %648, i64 %627, !dbg !1610
  store i8* %656, i8** %657, align 8, !dbg !1611, !tbaa !687
  %658 = add nsw i64 %627, 1, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %658, i64 0, metadata !760, metadata !680) #10, !dbg !1574
  br label %659, !dbg !1613

; <label>:659:                                    ; preds = %655, %652
  %660 = phi i8* [ %654, %652 ], [ %656, %655 ], !dbg !1607
  %661 = phi i64 [ %622, %652 ], [ %658, %655 ]
  call void @llvm.dbg.value(metadata i64 %661, i64 0, metadata !760, metadata !680) #10, !dbg !1574
  %662 = call i64 @full_read(i32 %205, i8* %660, i64 8192) #10, !dbg !1614
  call void @llvm.dbg.value(metadata i64 %662, i64 0, metadata !752, metadata !680) #10, !dbg !1615
  %663 = icmp ult i64 %662, 8192, !dbg !1616
  br i1 %663, label %664, label %671, !dbg !1618

; <label>:664:                                    ; preds = %659
  %665 = tail call i32* @__errno_location() #17, !dbg !1619
  %666 = load i32, i32* %665, align 4, !dbg !1619, !tbaa !1020
  %667 = icmp eq i32 %666, 0, !dbg !1622
  br i1 %667, label %671, label %668, !dbg !1623

; <label>:668:                                    ; preds = %664
  %669 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1624
  %670 = call i8* @quotearg_style(i32 4, i8* %206) #10, !dbg !1626
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %666, i8* %669, i8* %670) #10, !dbg !1627
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !737, metadata !680) #10, !dbg !1489
  br label %708, !dbg !1628

; <label>:671:                                    ; preds = %664, %659
  %672 = phi i8 [ %629, %659 ], [ 1, %664 ]
  call void @llvm.dbg.value(metadata i8 %672, i64 0, metadata !750, metadata !680) #10, !dbg !1569
  %673 = icmp eq i64 %627, %181, !dbg !1629
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !753, metadata !680) #10, !dbg !1570
  %674 = select i1 %673, i8 1, i8 %628, !dbg !1631
  call void @llvm.dbg.value(metadata i8 %674, i64 0, metadata !753, metadata !680) #10, !dbg !1570
  %675 = and i8 %674, 1, !dbg !1632
  %676 = icmp eq i8 %675, 0, !dbg !1632
  br i1 %676, label %681, label %677, !dbg !1634

; <label>:677:                                    ; preds = %671
  %678 = add i64 %662, %620, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %678, i64 0, metadata !736, metadata !680) #10, !dbg !1488
  %679 = getelementptr inbounds i8*, i8** %648, i64 %626, !dbg !1637
  %680 = load i8*, i8** %679, align 8, !dbg !1637, !tbaa !687
  call fastcc void @xwrite_stdout(i8* %680, i64 %662) #10, !dbg !1638
  br label %681, !dbg !1639

; <label>:681:                                    ; preds = %677, %671
  %682 = phi i64 [ %678, %677 ], [ %620, %671 ]
  call void @llvm.dbg.value(metadata i64 %682, i64 0, metadata !736, metadata !680) #10, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !754, metadata !680) #10, !dbg !1571
  %683 = add nsw i64 %626, 1, !dbg !1640
  %684 = urem i64 %683, %182, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %684, i64 0, metadata !755, metadata !680) #10, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %682, i64 0, metadata !736, metadata !680) #10, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %649, i64 0, metadata !761, metadata !680) #10, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %661, i64 0, metadata !760, metadata !680) #10, !dbg !1574
  call void @llvm.dbg.value(metadata i8** %648, i64 0, metadata !756, metadata !680) #10, !dbg !1573
  call void @llvm.dbg.value(metadata i64 %684, i64 0, metadata !755, metadata !680) #10, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !754, metadata !680) #10, !dbg !1571
  call void @llvm.dbg.value(metadata i8 %674, i64 0, metadata !753, metadata !680) #10, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %662, i64 0, metadata !752, metadata !680) #10, !dbg !1615
  call void @llvm.dbg.value(metadata i8 %672, i64 0, metadata !750, metadata !680) #10, !dbg !1569
  %685 = and i8 %672, 1, !dbg !1642
  %686 = icmp eq i8 %685, 0, !dbg !1642
  br i1 %686, label %619, label %687, !dbg !1643, !llvm.loop !1644

; <label>:687:                                    ; preds = %681
  br i1 %186, label %708, label %688, !dbg !1647

; <label>:688:                                    ; preds = %687
  br i1 %676, label %701, label %689, !dbg !1648

; <label>:689:                                    ; preds = %688
  %690 = sub i64 8192, %662, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %690, i64 0, metadata !762, metadata !680) #10, !dbg !1650
  %691 = add i64 %682, %179, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %691, i64 0, metadata !736, metadata !680) #10, !dbg !1488
  %692 = icmp ult i64 %179, %690, !dbg !1652
  %693 = getelementptr inbounds i8*, i8** %648, i64 %626
  %694 = load i8*, i8** %693, align 8, !tbaa !687
  %695 = getelementptr inbounds i8, i8* %694, i64 %662
  br i1 %692, label %696, label %697, !dbg !1654

; <label>:696:                                    ; preds = %689
  call fastcc void @xwrite_stdout(i8* %695, i64 %179) #10, !dbg !1655
  br label %708, !dbg !1657

; <label>:697:                                    ; preds = %689
  call fastcc void @xwrite_stdout(i8* %695, i64 %690) #10, !dbg !1658
  %698 = getelementptr inbounds i8*, i8** %648, i64 %684, !dbg !1660
  %699 = load i8*, i8** %698, align 8, !dbg !1660, !tbaa !687
  %700 = sub i64 %179, %690, !dbg !1661
  call fastcc void @xwrite_stdout(i8* %699, i64 %700) #10, !dbg !1662
  br label %708

; <label>:701:                                    ; preds = %688
  %702 = icmp eq i64 %626, %181, !dbg !1663
  br i1 %702, label %703, label %708, !dbg !1664

; <label>:703:                                    ; preds = %701
  call void @llvm.dbg.value(metadata i64 %178, i64 0, metadata !767, metadata !680) #10, !dbg !1665
  %704 = sub i64 %662, %178, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %704, i64 0, metadata !770, metadata !680) #10, !dbg !1667
  %705 = add i64 %682, %704, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %705, i64 0, metadata !736, metadata !680) #10, !dbg !1488
  %706 = getelementptr inbounds i8*, i8** %648, i64 %684, !dbg !1669
  %707 = load i8*, i8** %706, align 8, !dbg !1669, !tbaa !687
  call fastcc void @xwrite_stdout(i8* %707, i64 %704) #10, !dbg !1670
  br label %708, !dbg !1671

; <label>:708:                                    ; preds = %703, %701, %697, %696, %687, %668
  %709 = phi i8 [ 0, %668 ], [ 1, %703 ], [ 1, %701 ], [ 1, %687 ], [ 1, %697 ], [ 1, %696 ]
  %710 = phi i64 [ %620, %668 ], [ %705, %703 ], [ %682, %701 ], [ %682, %687 ], [ %691, %697 ], [ %691, %696 ]
  call void @llvm.dbg.value(metadata i64 %710, i64 0, metadata !736, metadata !680) #10, !dbg !1488
  call void @llvm.dbg.value(metadata i8 %709, i64 0, metadata !737, metadata !680) #10, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %661, i64 0, metadata !760, metadata !680) #10, !dbg !1574
  call void @llvm.dbg.value(metadata i8** %648, i64 0, metadata !756, metadata !680) #10, !dbg !1573
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !754, metadata !680) #10, !dbg !1571
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !754, metadata !680) #10, !dbg !1571
  %711 = icmp eq i64 %661, 0, !dbg !1672
  br i1 %711, label %719, label %712, !dbg !1675

; <label>:712:                                    ; preds = %708
  br label %713, !dbg !1676

; <label>:713:                                    ; preds = %712, %713
  %714 = phi i64 [ %717, %713 ], [ 0, %712 ]
  call void @llvm.dbg.value(metadata i64 %714, i64 0, metadata !754, metadata !680) #10, !dbg !1571
  %715 = getelementptr inbounds i8*, i8** %648, i64 %714, !dbg !1676
  %716 = load i8*, i8** %715, align 8, !dbg !1676, !tbaa !687
  call void @free(i8* %716) #10, !dbg !1677
  %717 = add nuw i64 %714, 1, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %717, i64 0, metadata !754, metadata !680) #10, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %717, i64 0, metadata !754, metadata !680) #10, !dbg !1571
  %718 = icmp eq i64 %717, %661, !dbg !1672
  br i1 %718, label %719, label %713, !dbg !1675, !llvm.loop !1679

; <label>:719:                                    ; preds = %713, %708
  call void @free(i8* %646) #10, !dbg !1682
  br label %720

; <label>:720:                                    ; preds = %719, %616
  %721 = phi i8 [ %618, %616 ], [ %709, %719 ]
  %722 = phi i64 [ %617, %616 ], [ %710, %719 ]
  call void @llvm.dbg.value(metadata i64 %722, i64 0, metadata !736, metadata !680) #10, !dbg !1488
  call void @llvm.dbg.value(metadata i8 %721, i64 0, metadata !737, metadata !680) #10, !dbg !1489
  %723 = icmp sgt i64 %234, -1, !dbg !1683
  br i1 %723, label %724, label %728, !dbg !1685

; <label>:724:                                    ; preds = %720
  %725 = call fastcc i64 @elseek(i32 %205, i64 %722, i32 0, i8* %206) #10, !dbg !1686
  %726 = icmp slt i64 %725, 0, !dbg !1687
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !737, metadata !680) #10, !dbg !1489
  %727 = select i1 %726, i8 0, i8 %721, !dbg !1688
  br label %728, !dbg !1688

; <label>:728:                                    ; preds = %724, %720
  %729 = phi i8 [ %721, %720 ], [ %727, %724 ]
  call void @llvm.dbg.value(metadata i8 %729, i64 0, metadata !737, metadata !680) #10, !dbg !1489
  %730 = and i8 %729, 1, !dbg !1689
  %731 = icmp ne i8 %730, 0, !dbg !1689
  br label %757, !dbg !1690

; <label>:732:                                    ; preds = %554
  %733 = sub nsw i64 %235, %234, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %733, i64 0, metadata !823, metadata !680) #10, !dbg !1692
  %734 = icmp sgt i64 %733, 0, !dbg !1693
  %735 = select i1 %734, i64 %733, i64 0, !dbg !1693
  call void @llvm.dbg.value(metadata i64 %735, i64 0, metadata !825, metadata !680) #10, !dbg !1694
  %736 = icmp ugt i64 %735, %92, !dbg !1695
  br i1 %736, label %737, label %757, !dbg !1697

; <label>:737:                                    ; preds = %732
  %738 = sub i64 %735, %92, !dbg !1698
  call void @llvm.dbg.value(metadata i32 %205, i64 0, metadata !903, metadata !680) #10, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %738, i64 0, metadata !904, metadata !680) #10, !dbg !1700
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %161) #10, !dbg !1701
  call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !905, metadata !680) #10, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %738, i64 0, metadata !904, metadata !680) #10, !dbg !1700
  %739 = icmp eq i64 %738, 0, !dbg !1703
  br i1 %739, label %754, label %740, !dbg !1704

; <label>:740:                                    ; preds = %737
  br label %741, !dbg !1705

; <label>:741:                                    ; preds = %740, %752
  %742 = phi i64 [ %748, %752 ], [ %738, %740 ]
  call void @llvm.dbg.value(metadata i64 %742, i64 0, metadata !904, metadata !680) #10, !dbg !1700
  %743 = icmp ult i64 %742, 8192, !dbg !1705
  %744 = select i1 %743, i64 %742, i64 8192, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %744, i64 0, metadata !907, metadata !680) #10, !dbg !1706
  %745 = call i64 @safe_read(i32 %205, i8* nonnull %161, i64 %744) #10, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %745, i64 0, metadata !909, metadata !680) #10, !dbg !1708
  %746 = icmp eq i64 %745, -1, !dbg !1709
  br i1 %746, label %755, label %747, !dbg !1710

; <label>:747:                                    ; preds = %741
  %748 = sub i64 %742, %745, !dbg !1711
  call void @llvm.dbg.value(metadata i64 %748, i64 0, metadata !904, metadata !680) #10, !dbg !1700
  %749 = icmp eq i64 %745, 0, !dbg !1712
  %750 = icmp ne i64 %748, 0, !dbg !1713
  %751 = and i1 %749, %750, !dbg !1714
  br i1 %751, label %755, label %752, !dbg !1714

; <label>:752:                                    ; preds = %747
  call fastcc void @xwrite_stdout(i8* nonnull %161, i64 %745) #10, !dbg !1715
  call void @llvm.dbg.value(metadata i64 %748, i64 0, metadata !904, metadata !680) #10, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %748, i64 0, metadata !904, metadata !680) #10, !dbg !1700
  %753 = icmp eq i64 %748, 0, !dbg !1703
  br i1 %753, label %754, label %741, !dbg !1704, !llvm.loop !1432

; <label>:754:                                    ; preds = %752, %737
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %161) #10, !dbg !1716
  br label %757, !dbg !1717

; <label>:755:                                    ; preds = %747, %741
  %756 = phi i32 [ 2, %747 ], [ 1, %741 ]
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %161) #10, !dbg !1716
  call void @llvm.dbg.value(metadata i32 %756, i64 0, metadata !826, metadata !680) #10, !dbg !1718
  call fastcc void @diagnose_copy_fd_failure(i32 %756, i8* %206) #10, !dbg !1719
  br label %757, !dbg !1720

; <label>:757:                                    ; preds = %755, %754, %732, %728, %551, %449, %445, %227, %216
  %758 = phi i1 [ false, %216 ], [ false, %227 ], [ %448, %445 ], [ true, %449 ], [ %552, %551 ], [ %731, %728 ], [ true, %732 ], [ false, %755 ], [ true, %754 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %165) #10, !dbg !1721
  br label %824

; <label>:759:                                    ; preds = %212
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %161) #10, !dbg !1722
  br i1 %141, label %760, label %806, !dbg !1723

; <label>:760:                                    ; preds = %759
  call void @llvm.dbg.value(metadata i8* %206, i64 0, metadata !1080, metadata !680) #10, !dbg !1724
  call void @llvm.dbg.value(metadata i32 %205, i64 0, metadata !1081, metadata !680) #10, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !1082, metadata !680) #10, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !1082, metadata !680) #10, !dbg !1726
  br i1 %162, label %804, label %761, !dbg !1727

; <label>:761:                                    ; preds = %760
  br label %762, !dbg !1728

; <label>:762:                                    ; preds = %761, %802
  %763 = phi i64 [ %799, %802 ], [ %92, %761 ]
  call void @llvm.dbg.value(metadata i64 %763, i64 0, metadata !1082, metadata !680) #10, !dbg !1726
  %764 = call i64 @safe_read(i32 %205, i8* nonnull %161, i64 8192) #10, !dbg !1728
  call void @llvm.dbg.value(metadata i64 %764, i64 0, metadata !1083, metadata !680) #10, !dbg !1729
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1085, metadata !680) #10, !dbg !1730
  switch i64 %764, label %770 [
    i64 -1, label %765
    i64 0, label %804
  ], !dbg !1731

; <label>:765:                                    ; preds = %762
  %766 = tail call i32* @__errno_location() #17, !dbg !1732
  %767 = load i32, i32* %766, align 4, !dbg !1732, !tbaa !1020
  %768 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1735
  %769 = call i8* @quotearg_style(i32 4, i8* %206) #10, !dbg !1736
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %767, i8* %768, i8* %769) #10, !dbg !1737
  br label %804

; <label>:770:                                    ; preds = %762
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1085, metadata !680) #10, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %763, i64 0, metadata !1082, metadata !680) #10, !dbg !1726
  %771 = load i1, i1* @line_end, align 1
  %772 = select i1 %771, i32 10, i32 0
  br label %773, !dbg !1738

; <label>:773:                                    ; preds = %798, %770
  %774 = phi i64 [ 0, %770 ], [ %776, %798 ]
  %775 = phi i64 [ %763, %770 ], [ %799, %798 ]
  call void @llvm.dbg.value(metadata i64 %775, i64 0, metadata !1082, metadata !680) #10, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %774, i64 0, metadata !1085, metadata !680) #10, !dbg !1730
  %776 = add nuw i64 %774, 1, !dbg !1739
  call void @llvm.dbg.value(metadata i64 %776, i64 0, metadata !1085, metadata !680) #10, !dbg !1730
  %777 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 %774, !dbg !1740
  %778 = load i8, i8* %777, align 1, !dbg !1740, !tbaa !928
  %779 = sext i8 %778 to i32, !dbg !1740
  %780 = icmp eq i32 %772, %779, !dbg !1741
  br i1 %780, label %781, label %798, !dbg !1742

; <label>:781:                                    ; preds = %773
  %782 = add i64 %775, -1, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %782, i64 0, metadata !1082, metadata !680) #10, !dbg !1726
  %783 = icmp eq i64 %782, 0, !dbg !1744
  br i1 %783, label %784, label %798, !dbg !1745

; <label>:784:                                    ; preds = %781
  %785 = sub i64 %776, %764, !dbg !1746
  %786 = call i64 @lseek(i32 %205, i64 %785, i32 1) #10, !dbg !1747
  %787 = icmp slt i64 %786, 0, !dbg !1748
  br i1 %787, label %788, label %801, !dbg !1749

; <label>:788:                                    ; preds = %784
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %163) #10, !dbg !1750
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1089, metadata !680) #10, !dbg !1751
  call void @llvm.dbg.value(metadata i32 %205, i64 0, metadata !1111, metadata !680) #10, !dbg !1752
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1118, metadata !680) #10, !dbg !1752
  %789 = call i32 @__fxstat(i32 1, i32 %205, %struct.stat* nonnull %3) #10, !dbg !1755
  %790 = icmp eq i32 %789, 0, !dbg !1756
  br i1 %790, label %791, label %795, !dbg !1757

; <label>:791:                                    ; preds = %788
  %792 = load i32, i32* %164, align 8, !dbg !1758, !tbaa !1141
  %793 = and i32 %792, 61440, !dbg !1758
  %794 = icmp eq i32 %793, 32768, !dbg !1758
  br i1 %794, label %795, label %797, !dbg !1759

; <label>:795:                                    ; preds = %791, %788
  %796 = call fastcc i64 @elseek(i32 %205, i64 %785, i32 1, i8* %206) #10, !dbg !1760
  br label %797, !dbg !1760

; <label>:797:                                    ; preds = %795, %791
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %163) #10, !dbg !1761
  br label %801, !dbg !1762

; <label>:798:                                    ; preds = %781, %773
  %799 = phi i64 [ %782, %781 ], [ %775, %773 ]
  call void @llvm.dbg.value(metadata i64 %799, i64 0, metadata !1082, metadata !680) #10, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %776, i64 0, metadata !1085, metadata !680) #10, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %799, i64 0, metadata !1082, metadata !680) #10, !dbg !1726
  %800 = icmp ult i64 %776, %764, !dbg !1763
  br i1 %800, label %773, label %802, !dbg !1738, !llvm.loop !1764

; <label>:801:                                    ; preds = %797, %784
  call void @llvm.dbg.value(metadata i64 %776, i64 0, metadata !1085, metadata !680) #10, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %799, i64 0, metadata !1082, metadata !680) #10, !dbg !1726
  call fastcc void @xwrite_stdout(i8* nonnull %161, i64 %776) #10, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %799, i64 0, metadata !1082, metadata !680) #10, !dbg !1726
  br label %804, !dbg !1727

; <label>:802:                                    ; preds = %798
  call void @llvm.dbg.value(metadata i64 %776, i64 0, metadata !1085, metadata !680) #10, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %799, i64 0, metadata !1082, metadata !680) #10, !dbg !1726
  call fastcc void @xwrite_stdout(i8* nonnull %161, i64 %776) #10, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %799, i64 0, metadata !1082, metadata !680) #10, !dbg !1726
  %803 = icmp eq i64 %799, 0, !dbg !1727
  br i1 %803, label %804, label %762, !dbg !1727, !llvm.loop !1768

; <label>:804:                                    ; preds = %802, %762, %801, %765, %760
  %805 = phi i1 [ false, %765 ], [ true, %760 ], [ true, %801 ], [ true, %762 ], [ true, %802 ]
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %161) #10, !dbg !1771
  br label %824, !dbg !1772

; <label>:806:                                    ; preds = %759
  call void @llvm.dbg.value(metadata i8* %206, i64 0, metadata !1046, metadata !680) #10, !dbg !1773
  call void @llvm.dbg.value(metadata i32 %205, i64 0, metadata !1047, metadata !680) #10, !dbg !1774
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !1048, metadata !680) #10, !dbg !1775
  call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !1049, metadata !680) #10, !dbg !1776
  call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !1049, metadata !680) #10, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !1048, metadata !680) #10, !dbg !1775
  br i1 %162, label %822, label %807, !dbg !1777

; <label>:807:                                    ; preds = %806
  br label %808, !dbg !1778

; <label>:808:                                    ; preds = %807, %819
  %809 = phi i64 [ %812, %819 ], [ 8192, %807 ]
  %810 = phi i64 [ %820, %819 ], [ %92, %807 ]
  call void @llvm.dbg.value(metadata i64 %810, i64 0, metadata !1048, metadata !680) #10, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %809, i64 0, metadata !1049, metadata !680) #10, !dbg !1776
  %811 = icmp ult i64 %810, %809, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %810, i64 0, metadata !1049, metadata !680) #10, !dbg !1776
  %812 = select i1 %811, i64 %810, i64 %809, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %812, i64 0, metadata !1049, metadata !680) #10, !dbg !1776
  %813 = call i64 @safe_read(i32 %205, i8* nonnull %161, i64 %812) #10, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %813, i64 0, metadata !1050, metadata !680) #10, !dbg !1782
  switch i64 %813, label %819 [
    i64 -1, label %814
    i64 0, label %822
  ], !dbg !1783

; <label>:814:                                    ; preds = %808
  %815 = tail call i32* @__errno_location() #17, !dbg !1784
  %816 = load i32, i32* %815, align 4, !dbg !1784, !tbaa !1020
  %817 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1787
  %818 = call i8* @quotearg_style(i32 4, i8* %206) #10, !dbg !1788
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %816, i8* %817, i8* %818) #10, !dbg !1789
  br label %822

; <label>:819:                                    ; preds = %808
  call fastcc void @xwrite_stdout(i8* nonnull %161, i64 %813) #10, !dbg !1790
  %820 = sub i64 %810, %813, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %820, i64 0, metadata !1048, metadata !680) #10, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %812, i64 0, metadata !1049, metadata !680) #10, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %820, i64 0, metadata !1048, metadata !680) #10, !dbg !1775
  %821 = icmp eq i64 %820, 0, !dbg !1777
  br i1 %821, label %822, label %808, !dbg !1777, !llvm.loop !1792

; <label>:822:                                    ; preds = %819, %808, %814, %806
  %823 = phi i1 [ false, %814 ], [ true, %806 ], [ true, %808 ], [ true, %819 ]
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %161) #10, !dbg !1795
  br label %824, !dbg !1796

; <label>:824:                                    ; preds = %822, %804, %757
  %825 = phi i1 [ %758, %757 ], [ %805, %804 ], [ %823, %822 ]
  br i1 %193, label %834, label %826, !dbg !1797

; <label>:826:                                    ; preds = %824
  %827 = call i32 @close(i32 %205) #10, !dbg !1799
  %828 = icmp eq i32 %827, 0, !dbg !1800
  br i1 %828, label %834, label %829, !dbg !1801

; <label>:829:                                    ; preds = %826
  %830 = tail call i32* @__errno_location() #17, !dbg !1802
  %831 = load i32, i32* %830, align 4, !dbg !1802, !tbaa !1020
  %832 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0), i32 5) #10, !dbg !1804
  %833 = call i8* @quotearg_style(i32 4, i8* %206) #10, !dbg !1805
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %831, i8* %832, i8* %833) #10, !dbg !1806
  br label %834, !dbg !1807

; <label>:834:                                    ; preds = %199, %824, %826, %829
  %835 = phi i1 [ false, %829 ], [ false, %199 ], [ %825, %826 ], [ %825, %824 ]
  %836 = and i1 %191, %835, !dbg !1808
  %837 = add i64 %190, 1, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %837, i64 0, metadata !61, metadata !680), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %837, i64 0, metadata !61, metadata !680), !dbg !1038
  %838 = getelementptr inbounds i8*, i8** %156, i64 %837, !dbg !1039
  %839 = load i8*, i8** %838, align 8, !dbg !1039, !tbaa !687
  %840 = icmp eq i8* %839, null, !dbg !1040
  br i1 %840, label %841, label %188, !dbg !1040, !llvm.loop !1810

; <label>:841:                                    ; preds = %834
  %842 = xor i1 %836, true
  %843 = zext i1 %842 to i32
  br label %844

; <label>:844:                                    ; preds = %841, %151
  %845 = phi i32 [ 0, %151 ], [ %843, %841 ]
  %846 = load i1, i1* @have_read_stdin, align 1
  br i1 %846, label %847, label %853, !dbg !1812

; <label>:847:                                    ; preds = %844
  %848 = call i32 @close(i32 0) #10, !dbg !1814
  %849 = icmp slt i32 %848, 0, !dbg !1815
  br i1 %849, label %850, label %853, !dbg !1816

; <label>:850:                                    ; preds = %847
  %851 = tail call i32* @__errno_location() #17, !dbg !1817
  %852 = load i32, i32* %851, align 4, !dbg !1817, !tbaa !1020
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %852, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !1817
  unreachable, !dbg !1817

; <label>:853:                                    ; preds = %847, %844
  ret i32 %845, !dbg !1818
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @elseek(i32, i64, i32, i8*) unnamed_addr #6 !dbg !1819 {
  %5 = alloca [21 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1823, metadata !680), !dbg !1829
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1824, metadata !680), !dbg !1830
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1825, metadata !680), !dbg !1831
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1826, metadata !680), !dbg !1832
  %6 = tail call i64 @lseek(i32 %0, i64 %1, i32 %2) #10, !dbg !1833
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1827, metadata !680), !dbg !1834
  %7 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0, !dbg !1835
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %7) #10, !dbg !1835
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %5, metadata !1828, metadata !680), !dbg !1836
  %8 = icmp slt i64 %6, 0, !dbg !1837
  br i1 %8, label %9, label %17, !dbg !1839

; <label>:9:                                      ; preds = %4
  %10 = tail call i32* @__errno_location() #17, !dbg !1840
  %11 = load i32, i32* %10, align 4, !dbg !1840, !tbaa !1020
  %12 = icmp eq i32 %2, 0, !dbg !1841
  %13 = select i1 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.56, i64 0, i64 0), !dbg !1841
  %14 = tail call i8* @dcgettext(i8* null, i8* %13, i32 5) #10, !dbg !1841
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %3) #10, !dbg !1842
  %16 = call i8* @offtostr(i64 %1, i8* nonnull %7) #10, !dbg !1843
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %11, i8* %14, i8* %15, i8* %16) #10, !dbg !1844
  br label %17, !dbg !1844

; <label>:17:                                     ; preds = %9, %4
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %7) #10, !dbg !1845
  ret i64 %6, !dbg !1846
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @xwrite_stdout(i8*, i64) unnamed_addr #6 !dbg !1847 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1851, metadata !680), !dbg !1853
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1852, metadata !680), !dbg !1854
  %3 = icmp eq i64 %1, 0, !dbg !1855
  br i1 %3, label %14, label %4, !dbg !1857

; <label>:4:                                      ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1858, !tbaa !687
  %6 = tail call i64 @fwrite_unlocked(i8* %0, i64 1, i64 %1, %struct._IO_FILE* %5) #10, !dbg !1858
  %7 = icmp ult i64 %6, %1, !dbg !1859
  br i1 %7, label %8, label %14, !dbg !1860

; <label>:8:                                      ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1861, !tbaa !687
  tail call void @clearerr_unlocked(%struct._IO_FILE* %9) #10, !dbg !1861
  %10 = tail call i32* @__errno_location() #17, !dbg !1863
  %11 = load i32, i32* %10, align 4, !dbg !1863, !tbaa !1020
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0), i32 5) #10, !dbg !1863
  %13 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0)) #10, !dbg !1863
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %11, i8* %12, i8* %13) #10, !dbg !1863
  unreachable, !dbg !1863

; <label>:14:                                     ; preds = %2, %4
  ret void, !dbg !1864
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @memrchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @diagnose_copy_fd_failure(i32, i8*) unnamed_addr #6 !dbg !1865 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1869, metadata !680), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1870, metadata !680), !dbg !1872
  switch i32 %0, label %13 [
    i32 1, label %3
    i32 2, label %8
  ], !dbg !1873

; <label>:3:                                      ; preds = %2
  %4 = tail call i32* @__errno_location() #17, !dbg !1874
  %5 = load i32, i32* %4, align 4, !dbg !1874, !tbaa !1020
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1876
  %7 = tail call i8* @quotearg_style(i32 4, i8* %1) #10, !dbg !1877
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %5, i8* %6, i8* %7) #10, !dbg !1878
  br label %14, !dbg !1879

; <label>:8:                                      ; preds = %2
  %9 = tail call i32* @__errno_location() #17, !dbg !1880
  %10 = load i32, i32* %9, align 4, !dbg !1880, !tbaa !1020
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.60, i64 0, i64 0), i32 5) #10, !dbg !1881
  %12 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #10, !dbg !1882
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %10, i8* %11, i8* %12) #10, !dbg !1883
  br label %14, !dbg !1884

; <label>:13:                                     ; preds = %2
  tail call void @abort() #15, !dbg !1885
  unreachable, !dbg !1885

; <label>:14:                                     ; preds = %8, %3
  ret void, !dbg !1886
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1887 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1889, metadata !680), !dbg !1890
  store i8* %0, i8** @file_name, align 8, !dbg !1891, !tbaa !687
  ret void, !dbg !1892
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1893 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1897, metadata !680), !dbg !1898
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1899, !tbaa !1900
  ret void, !dbg !1902
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1903 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1908, !tbaa !687
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1909
  %3 = icmp eq i32 %2, 0, !dbg !1910
  br i1 %3, label %21, label %4, !dbg !1911

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1912, !tbaa !1900, !range !1913
  %6 = icmp eq i8 %5, 0, !dbg !1912
  %7 = tail call i32* @__errno_location() #17, !dbg !1914
  br i1 %6, label %11, label %8, !dbg !1916

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1917, !tbaa !1020
  %10 = icmp eq i32 %9, 32, !dbg !1918
  br i1 %10, label %21, label %11, !dbg !1919

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !1920
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1905, metadata !680), !dbg !1921
  %13 = load i8*, i8** @file_name, align 8, !dbg !1922, !tbaa !687
  %14 = icmp eq i8* %13, null, !dbg !1922
  %15 = load i32, i32* %7, align 4, !tbaa !1020
  br i1 %14, label %18, label %16, !dbg !1923

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1924
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.27, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1925
  br label %19, !dbg !1925

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.28, i64 0, i64 0), i8* %12) #10, !dbg !1926
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1927, !tbaa !1020
  tail call void @_exit(i32 %20) #15, !dbg !1928
  unreachable, !dbg !1928

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1929, !tbaa !687
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1931
  %24 = icmp eq i32 %23, 0, !dbg !1932
  br i1 %24, label %27, label %25, !dbg !1933

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1934, !tbaa !1020
  tail call void @_exit(i32 %26) #15, !dbg !1935
  unreachable, !dbg !1935

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1936
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define i64 @full_read(i32, i8*, i64) local_unnamed_addr #6 !dbg !1937 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1940, metadata !680), !dbg !1947
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1941, metadata !680), !dbg !1948
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1942, metadata !680), !dbg !1949
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1943, metadata !680), !dbg !1950
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1944, metadata !680), !dbg !1951
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1942, metadata !680), !dbg !1949
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1944, metadata !680), !dbg !1951
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1943, metadata !680), !dbg !1950
  %4 = icmp eq i64 %2, 0, !dbg !1952
  br i1 %4, label %18, label %5, !dbg !1953

; <label>:5:                                      ; preds = %3
  br label %6, !dbg !1954

; <label>:6:                                      ; preds = %5, %13
  %7 = phi i64 [ %16, %13 ], [ %2, %5 ]
  %8 = phi i8* [ %15, %13 ], [ %1, %5 ]
  %9 = phi i64 [ %14, %13 ], [ 0, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1943, metadata !680), !dbg !1950
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1944, metadata !680), !dbg !1951
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1942, metadata !680), !dbg !1949
  %10 = tail call i64 @safe_read(i32 %0, i8* %8, i64 %7) #10, !dbg !1954
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1945, metadata !680), !dbg !1955
  switch i64 %10, label %13 [
    i64 -1, label %18
    i64 0, label %11
  ], !dbg !1956

; <label>:11:                                     ; preds = %6
  %12 = tail call i32* @__errno_location() #17, !dbg !1957
  store i32 0, i32* %12, align 4, !dbg !1960, !tbaa !1020
  br label %18, !dbg !1961

; <label>:13:                                     ; preds = %6
  %14 = add i64 %10, %9, !dbg !1962
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1943, metadata !680), !dbg !1950
  %15 = getelementptr inbounds i8, i8* %8, i64 %10, !dbg !1963
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1944, metadata !680), !dbg !1951
  %16 = sub i64 %7, %10, !dbg !1964
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !1942, metadata !680), !dbg !1949
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !1942, metadata !680), !dbg !1949
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1944, metadata !680), !dbg !1951
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1943, metadata !680), !dbg !1950
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !1942, metadata !680), !dbg !1949
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1944, metadata !680), !dbg !1951
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1943, metadata !680), !dbg !1950
  %17 = icmp eq i64 %16, 0, !dbg !1952
  br i1 %17, label %18, label %6, !dbg !1953, !llvm.loop !1965

; <label>:18:                                     ; preds = %13, %6, %3, %11
  %19 = phi i64 [ %9, %11 ], [ 0, %3 ], [ %14, %13 ], [ %9, %6 ]
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1943, metadata !680), !dbg !1950
  ret i64 %19, !dbg !1967
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @offtostr(i64, i8*) local_unnamed_addr #6 !dbg !1968 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1973, metadata !680), !dbg !1976
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1974, metadata !680), !dbg !1977
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1978
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1975, metadata !680), !dbg !1979
  store i8 0, i8* %3, align 1, !dbg !1980, !tbaa !928
  %4 = icmp slt i64 %0, 0, !dbg !1981
  br i1 %4, label %6, label %5, !dbg !1983, !llvm.loop !1984

; <label>:5:                                      ; preds = %2
  br label %19, !dbg !1988

; <label>:6:                                      ; preds = %2
  br label %7, !dbg !1989

; <label>:7:                                      ; preds = %6, %7
  %8 = phi i64 [ %14, %7 ], [ %0, %6 ]
  %9 = phi i8* [ %13, %7 ], [ %3, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !1975, metadata !680), !dbg !1979
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1973, metadata !680), !dbg !1976
  %10 = srem i64 %8, 10, !dbg !1989
  %11 = sub nsw i64 48, %10, !dbg !1991
  %12 = trunc i64 %11 to i8, !dbg !1992
  %13 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !1993
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !1975, metadata !680), !dbg !1979
  store i8 %12, i8* %13, align 1, !dbg !1994, !tbaa !928
  %14 = sdiv i64 %8, 10, !dbg !1995
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1973, metadata !680), !dbg !1976
  %15 = add i64 %8, 9, !dbg !1996
  %16 = icmp ugt i64 %15, 18, !dbg !1996
  br i1 %16, label %7, label %17, !dbg !1997, !llvm.loop !1998

; <label>:17:                                     ; preds = %7
  %18 = getelementptr inbounds i8, i8* %9, i64 -2, !dbg !2001
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1975, metadata !680), !dbg !1979
  store i8 45, i8* %18, align 1, !dbg !2002, !tbaa !928
  br label %29, !dbg !2003

; <label>:19:                                     ; preds = %5, %19
  %20 = phi i64 [ %26, %19 ], [ %0, %5 ]
  %21 = phi i8* [ %25, %19 ], [ %3, %5 ]
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1975, metadata !680), !dbg !1979
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1973, metadata !680), !dbg !1976
  %22 = srem i64 %20, 10, !dbg !1988
  %23 = add nsw i64 %22, 48, !dbg !2004
  %24 = trunc i64 %23 to i8, !dbg !2005
  %25 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !2006
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1975, metadata !680), !dbg !1979
  store i8 %24, i8* %25, align 1, !dbg !2007, !tbaa !928
  %26 = sdiv i64 %20, 10, !dbg !2008
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !1973, metadata !680), !dbg !1976
  %27 = add i64 %20, 9, !dbg !2009
  %28 = icmp ugt i64 %27, 18, !dbg !2009
  br i1 %28, label %19, label %29, !dbg !2010, !llvm.loop !1984

; <label>:29:                                     ; preds = %19, %17
  %30 = phi i8* [ %18, %17 ], [ %25, %19 ]
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1975, metadata !680), !dbg !1979
  ret i8* %30, !dbg !2011
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !2012 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2016, metadata !680), !dbg !2019
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2017, metadata !680), !dbg !2020
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2021
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2018, metadata !680), !dbg !2022
  store i8 0, i8* %3, align 1, !dbg !2023, !tbaa !928
  br label %4, !dbg !2024, !llvm.loop !2027

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2018, metadata !680), !dbg !2022
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2016, metadata !680), !dbg !2019
  %7 = urem i64 %5, 10, !dbg !2029
  %8 = trunc i64 %7 to i8, !dbg !2030
  %9 = or i8 %8, 48, !dbg !2030
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !2031
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2018, metadata !680), !dbg !2022
  store i8 %9, i8* %10, align 1, !dbg !2032, !tbaa !928
  %11 = udiv i64 %5, 10, !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2016, metadata !680), !dbg !2019
  %12 = icmp ugt i64 %5, 9, !dbg !2034
  br i1 %12, label %4, label %13, !dbg !2035, !llvm.loop !2027

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2018, metadata !680), !dbg !2022
  ret i8* %10, !dbg !2036
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2037 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2039, metadata !680), !dbg !2042
  %2 = icmp eq i8* %0, null, !dbg !2043
  br i1 %2, label %3, label %6, !dbg !2045

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2046, !tbaa !687
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.61, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !2048
  tail call void @abort() #15, !dbg !2049
  unreachable, !dbg !2049

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !2050
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2040, metadata !680), !dbg !2051
  %8 = icmp eq i8* %7, null, !dbg !2052
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2053
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2054
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2041, metadata !680), !dbg !2055
  %11 = ptrtoint i8* %10 to i64, !dbg !2056
  %12 = ptrtoint i8* %0 to i64, !dbg !2056
  %13 = sub i64 %11, %12, !dbg !2056
  %14 = icmp sgt i64 %13, 6, !dbg !2058
  br i1 %14, label %15, label %24, !dbg !2059

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2060
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.62, i64 0, i64 0), i64 7) #14, !dbg !2061
  %18 = icmp eq i32 %17, 0, !dbg !2062
  br i1 %18, label %19, label %24, !dbg !2063

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2039, metadata !680), !dbg !2042
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.63, i64 0, i64 0), i64 3) #14, !dbg !2064
  %21 = icmp eq i32 %20, 0, !dbg !2067
  br i1 %21, label %22, label %24, !dbg !2068

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2069
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2039, metadata !680), !dbg !2042
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2071, !tbaa !687
  br label %24, !dbg !2072

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2039, metadata !680), !dbg !2042
  store i8* %25, i8** @program_name, align 8, !dbg !2073, !tbaa !687
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2074, !tbaa !687
  ret void, !dbg !2075
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2076 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2081, metadata !680), !dbg !2084
  %2 = tail call i32* @__errno_location() #17, !dbg !2085
  %3 = load i32, i32* %2, align 4, !dbg !2085, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2082, metadata !680), !dbg !2086
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2087
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2087
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !2087
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !2088
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2088
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2083, metadata !680), !dbg !2089
  store i32 %3, i32* %2, align 4, !dbg !2090, !tbaa !1020
  ret %struct.quoting_options* %8, !dbg !2091
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !2092 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2098, metadata !680), !dbg !2099
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2100
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2100
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2101
  %5 = load i32, i32* %4, align 8, !dbg !2101, !tbaa !2102
  ret i32 %5, !dbg !2104
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2105 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2109, metadata !680), !dbg !2111
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2110, metadata !680), !dbg !2112
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2113
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2113
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2114
  store i32 %1, i32* %5, align 8, !dbg !2115, !tbaa !2102
  ret void, !dbg !2116
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2117 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2121, metadata !680), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2122, metadata !680), !dbg !2130
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2123, metadata !680), !dbg !2131
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2124, metadata !680), !dbg !2132
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2133
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2133
  %6 = lshr i8 %1, 5, !dbg !2134
  %7 = zext i8 %6 to i64, !dbg !2134
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2135
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2125, metadata !680), !dbg !2136
  %9 = and i8 %1, 31, !dbg !2137
  %10 = zext i8 %9 to i32, !dbg !2138
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2127, metadata !680), !dbg !2139
  %11 = load i32, i32* %8, align 4, !dbg !2140, !tbaa !1020
  %12 = lshr i32 %11, %10, !dbg !2141
  %13 = and i32 %12, 1, !dbg !2142
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2128, metadata !680), !dbg !2143
  %14 = and i32 %2, 1, !dbg !2144
  %15 = xor i32 %13, %14, !dbg !2145
  %16 = shl i32 %15, %10, !dbg !2146
  %17 = xor i32 %16, %11, !dbg !2147
  store i32 %17, i32* %8, align 4, !dbg !2147, !tbaa !1020
  ret i32 %13, !dbg !2148
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2149 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2153, metadata !680), !dbg !2156
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2154, metadata !680), !dbg !2157
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2158
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2153, metadata !680), !dbg !2156
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2160
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2153, metadata !680), !dbg !2156
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2161
  %6 = load i32, i32* %5, align 4, !dbg !2161, !tbaa !2162
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2155, metadata !680), !dbg !2163
  store i32 %1, i32* %5, align 4, !dbg !2164, !tbaa !2162
  ret i32 %6, !dbg !2165
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2166 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2170, metadata !680), !dbg !2173
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2171, metadata !680), !dbg !2174
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2172, metadata !680), !dbg !2175
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2176
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2170, metadata !680), !dbg !2173
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2178
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2170, metadata !680), !dbg !2173
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2179
  store i32 10, i32* %6, align 8, !dbg !2180, !tbaa !2102
  %7 = icmp ne i8* %1, null, !dbg !2181
  %8 = icmp ne i8* %2, null, !dbg !2183
  %9 = and i1 %7, %8, !dbg !2184
  br i1 %9, label %11, label %10, !dbg !2184

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2185
  unreachable, !dbg !2185

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2186
  store i8* %1, i8** %12, align 8, !dbg !2187, !tbaa !2188
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2189
  store i8* %2, i8** %13, align 8, !dbg !2190, !tbaa !2191
  ret void, !dbg !2192
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2193 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2197, metadata !680), !dbg !2205
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2198, metadata !680), !dbg !2206
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2199, metadata !680), !dbg !2207
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2200, metadata !680), !dbg !2208
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2201, metadata !680), !dbg !2209
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2210
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2210
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2202, metadata !680), !dbg !2211
  %8 = tail call i32* @__errno_location() #17, !dbg !2212
  %9 = load i32, i32* %8, align 4, !dbg !2212, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2203, metadata !680), !dbg !2213
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2214
  %11 = load i32, i32* %10, align 8, !dbg !2214, !tbaa !2102
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2215
  %13 = load i32, i32* %12, align 4, !dbg !2215, !tbaa !2162
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2216
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2217
  %16 = load i8*, i8** %15, align 8, !dbg !2217, !tbaa !2188
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2218
  %18 = load i8*, i8** %17, align 8, !dbg !2218, !tbaa !2191
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2219
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2204, metadata !680), !dbg !2220
  store i32 %9, i32* %8, align 4, !dbg !2221, !tbaa !1020
  ret i64 %19, !dbg !2222
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2223 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2229, metadata !680), !dbg !2293
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2230, metadata !680), !dbg !2294
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2231, metadata !680), !dbg !2295
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2232, metadata !680), !dbg !2296
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2233, metadata !680), !dbg !2297
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2234, metadata !680), !dbg !2298
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2235, metadata !680), !dbg !2299
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2236, metadata !680), !dbg !2300
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2237, metadata !680), !dbg !2301
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2239, metadata !680), !dbg !2302
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2240, metadata !680), !dbg !2303
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2241, metadata !680), !dbg !2304
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2242, metadata !680), !dbg !2305
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2243, metadata !680), !dbg !2306
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !2307
  %14 = icmp eq i64 %13, 1, !dbg !2308
  %15 = lshr i32 %5, 1, !dbg !2309
  %16 = trunc i32 %15 to i8, !dbg !2309
  %17 = and i8 %16, 1, !dbg !2309
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2245, metadata !680), !dbg !2309
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2246, metadata !680), !dbg !2310
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2247, metadata !680), !dbg !2311
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2248, metadata !680), !dbg !2312
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2313

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2230, metadata !680), !dbg !2294
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2248, metadata !680), !dbg !2312
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2247, metadata !680), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2246, metadata !680), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2245, metadata !680), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2232, metadata !680), !dbg !2296
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2243, metadata !680), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2242, metadata !680), !dbg !2305
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2241, metadata !680), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2240, metadata !680), !dbg !2303
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2237, metadata !680), !dbg !2301
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2236, metadata !680), !dbg !2300
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2233, metadata !680), !dbg !2297
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
  ], !dbg !2314

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2233, metadata !680), !dbg !2297
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2245, metadata !680), !dbg !2309
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2245, metadata !680), !dbg !2309
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2233, metadata !680), !dbg !2297
  br label %94, !dbg !2315

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2245, metadata !680), !dbg !2309
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2233, metadata !680), !dbg !2297
  %43 = and i8 %36, 1, !dbg !2317
  %44 = icmp eq i8 %43, 0, !dbg !2317
  br i1 %44, label %45, label %94, !dbg !2315

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2319
  br i1 %46, label %94, label %47, !dbg !2322

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2319, !tbaa !928
  br label %94, !dbg !2319

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), i32 %28), !dbg !2323
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2236, metadata !680), !dbg !2300
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), i32 %28), !dbg !2327
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2237, metadata !680), !dbg !2301
  br label %51, !dbg !2328

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2237, metadata !680), !dbg !2301
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2236, metadata !680), !dbg !2300
  %54 = and i8 %36, 1, !dbg !2329
  %55 = icmp eq i8 %54, 0, !dbg !2329
  br i1 %55, label %56, label %72, !dbg !2331

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2241, metadata !680), !dbg !2304
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2241, metadata !680), !dbg !2304
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2239, metadata !680), !dbg !2302
  %57 = load i8, i8* %52, align 1, !dbg !2332, !tbaa !928
  %58 = icmp eq i8 %57, 0, !dbg !2335
  br i1 %58, label %72, label %59, !dbg !2335

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2336

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !2241, metadata !680), !dbg !2304
  %64 = icmp ult i64 %63, %40, !dbg !2336
  br i1 %64, label %65, label %67, !dbg !2339

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2336
  store i8 %61, i8* %66, align 1, !dbg !2336, !tbaa !928
  br label %67, !dbg !2336

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2339
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2239, metadata !680), !dbg !2302
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2340
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2241, metadata !680), !dbg !2304
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2241, metadata !680), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2239, metadata !680), !dbg !2302
  %70 = load i8, i8* %69, align 1, !dbg !2332, !tbaa !928
  %71 = icmp eq i8 %70, 0, !dbg !2335
  br i1 %71, label %72, label %60, !dbg !2335, !llvm.loop !2341

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2243, metadata !680), !dbg !2306
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2241, metadata !680), !dbg !2304
  %74 = call i64 @strlen(i8* %53) #14, !dbg !2343
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2242, metadata !680), !dbg !2305
  br label %94, !dbg !2344

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2243, metadata !680), !dbg !2306
  br label %76, !dbg !2345

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !2243, metadata !680), !dbg !2306
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2245, metadata !680), !dbg !2309
  br label %78, !dbg !2346

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2245, metadata !680), !dbg !2309
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !2243, metadata !680), !dbg !2306
  %81 = and i8 %80, 1, !dbg !2347
  %82 = icmp eq i8 %81, 0, !dbg !2347
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2243, metadata !680), !dbg !2306
  %83 = select i1 %82, i8 1, i8 %79, !dbg !2349
  br label %84, !dbg !2349

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2245, metadata !680), !dbg !2309
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !2243, metadata !680), !dbg !2306
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2233, metadata !680), !dbg !2297
  %87 = and i8 %86, 1, !dbg !2350
  %88 = icmp eq i8 %87, 0, !dbg !2350
  br i1 %88, label %89, label %94, !dbg !2352

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !2353
  br i1 %90, label %94, label %91, !dbg !2356

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !2353, !tbaa !928
  br label %94, !dbg !2353

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2245, metadata !680), !dbg !2309
  br label %94, !dbg !2357

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !2358
  unreachable, !dbg !2358

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2245, metadata !680), !dbg !2309
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !2243, metadata !680), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !2242, metadata !680), !dbg !2305
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2241, metadata !680), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2237, metadata !680), !dbg !2301
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !2236, metadata !680), !dbg !2300
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !2233, metadata !680), !dbg !2297
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2238, metadata !680), !dbg !2359
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
  br label %122, !dbg !2360

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2230, metadata !680), !dbg !2294
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2248, metadata !680), !dbg !2312
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2247, metadata !680), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !2246, metadata !680), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2232, metadata !680), !dbg !2296
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2240, metadata !680), !dbg !2303
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !2238, metadata !680), !dbg !2359
  %131 = icmp eq i64 %126, -1, !dbg !2361
  br i1 %131, label %134, label %132, !dbg !2362

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !2363
  br i1 %133, label %590, label %138, !dbg !2364

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2365
  %136 = load i8, i8* %135, align 1, !dbg !2365, !tbaa !928
  %137 = icmp eq i8 %136, 0, !dbg !2366
  br i1 %137, label %590, label %138, !dbg !2364

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2254, metadata !680), !dbg !2367
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2255, metadata !680), !dbg !2368
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2256, metadata !680), !dbg !2369
  br i1 %108, label %139, label %154, !dbg !2370

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !2372
  %141 = and i1 %109, %131, !dbg !2373
  br i1 %141, label %142, label %144, !dbg !2373

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !2374
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !2232, metadata !680), !dbg !2296
  br label %144, !dbg !2375

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !2232, metadata !680), !dbg !2296
  %146 = icmp ugt i64 %140, %145, !dbg !2376
  br i1 %146, label %154, label %147, !dbg !2377

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2378
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !2379
  %150 = icmp ne i32 %149, 0, !dbg !2380
  %151 = or i1 %150, %111, !dbg !2381
  %152 = xor i1 %150, true, !dbg !2381
  %153 = zext i1 %152 to i8, !dbg !2381
  br i1 %151, label %154, label %635, !dbg !2381

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2254, metadata !680), !dbg !2367
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !2232, metadata !680), !dbg !2296
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2382
  %158 = load i8, i8* %157, align 1, !dbg !2382, !tbaa !928
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2249, metadata !680), !dbg !2383
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
  ], !dbg !2384

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !2385

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !2386

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2255, metadata !680), !dbg !2368
  %162 = and i8 %127, 1, !dbg !2390
  %163 = icmp eq i8 %162, 0, !dbg !2390
  %164 = and i1 %113, %163, !dbg !2390
  br i1 %164, label %165, label %181, !dbg !2390

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2392
  br i1 %166, label %167, label %169, !dbg !2396

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2392
  store i8 39, i8* %168, align 1, !dbg !2392, !tbaa !928
  br label %169, !dbg !2392

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !2239, metadata !680), !dbg !2302
  %171 = icmp ult i64 %170, %130, !dbg !2397
  br i1 %171, label %172, label %174, !dbg !2400

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2397
  store i8 36, i8* %173, align 1, !dbg !2397, !tbaa !928
  br label %174, !dbg !2397

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2400
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !2239, metadata !680), !dbg !2302
  %176 = icmp ult i64 %175, %130, !dbg !2401
  br i1 %176, label %177, label %179, !dbg !2404

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2401
  store i8 39, i8* %178, align 1, !dbg !2401, !tbaa !928
  br label %179, !dbg !2401

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2246, metadata !680), !dbg !2310
  br label %181, !dbg !2405

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !2246, metadata !680), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !2239, metadata !680), !dbg !2302
  %184 = icmp ult i64 %182, %130, !dbg !2406
  br i1 %184, label %185, label %187, !dbg !2409

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2406
  store i8 92, i8* %186, align 1, !dbg !2406, !tbaa !928
  br label %187, !dbg !2406

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2409
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !2239, metadata !680), !dbg !2302
  br i1 %105, label %189, label %470, !dbg !2410

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2412
  %191 = icmp ult i64 %190, %155, !dbg !2413
  br i1 %191, label %192, label %470, !dbg !2414

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2415
  %194 = load i8, i8* %193, align 1, !dbg !2415, !tbaa !928
  %195 = add i8 %194, -48, !dbg !2416
  %196 = icmp ult i8 %195, 10, !dbg !2416
  br i1 %196, label %197, label %470, !dbg !2416

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2417
  br i1 %198, label %199, label %201, !dbg !2421

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2417
  store i8 48, i8* %200, align 1, !dbg !2417, !tbaa !928
  br label %201, !dbg !2417

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2421
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !2239, metadata !680), !dbg !2302
  %203 = icmp ult i64 %202, %130, !dbg !2422
  br i1 %203, label %204, label %206, !dbg !2425

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2422
  store i8 48, i8* %205, align 1, !dbg !2422, !tbaa !928
  br label %206, !dbg !2422

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2425
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !2239, metadata !680), !dbg !2302
  br label %470, !dbg !2426

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2427

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2428

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2429

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2431

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2433
  %214 = icmp ult i64 %213, %155, !dbg !2434
  br i1 %214, label %215, label %470, !dbg !2435

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2436
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2437
  %218 = load i8, i8* %217, align 1, !dbg !2437, !tbaa !928
  %219 = icmp eq i8 %218, 63, !dbg !2438
  br i1 %219, label %220, label %470, !dbg !2439

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2440
  %222 = load i8, i8* %221, align 1, !dbg !2440, !tbaa !928
  %223 = sext i8 %222 to i32, !dbg !2440
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
  ], !dbg !2441

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2442

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !2249, metadata !680), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !2238, metadata !680), !dbg !2359
  %226 = icmp ult i64 %124, %130, !dbg !2444
  br i1 %226, label %227, label %229, !dbg !2447

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2444
  store i8 63, i8* %228, align 1, !dbg !2444, !tbaa !928
  br label %229, !dbg !2444

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !2239, metadata !680), !dbg !2302
  %231 = icmp ult i64 %230, %130, !dbg !2448
  br i1 %231, label %232, label %234, !dbg !2451

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2448
  store i8 34, i8* %233, align 1, !dbg !2448, !tbaa !928
  br label %234, !dbg !2448

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2451
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !2239, metadata !680), !dbg !2302
  %236 = icmp ult i64 %235, %130, !dbg !2452
  br i1 %236, label %237, label %239, !dbg !2455

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2452
  store i8 34, i8* %238, align 1, !dbg !2452, !tbaa !928
  br label %239, !dbg !2452

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2455
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !2239, metadata !680), !dbg !2302
  %241 = icmp ult i64 %240, %130, !dbg !2456
  br i1 %241, label %242, label %244, !dbg !2459

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2456
  store i8 63, i8* %243, align 1, !dbg !2456, !tbaa !928
  br label %244, !dbg !2456

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !2239, metadata !680), !dbg !2302
  br label %470, !dbg !2460

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2253, metadata !680), !dbg !2461
  br label %256, !dbg !2462

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2253, metadata !680), !dbg !2461
  br label %256, !dbg !2463

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2253, metadata !680), !dbg !2461
  br label %254, !dbg !2464

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2253, metadata !680), !dbg !2461
  br label %254, !dbg !2465

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2253, metadata !680), !dbg !2461
  br label %256, !dbg !2466

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2253, metadata !680), !dbg !2461
  br i1 %113, label %252, label %253, !dbg !2467

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2468

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2471

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !2253, metadata !680), !dbg !2461
  br i1 %117, label %256, label %635, !dbg !2473

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !2253, metadata !680), !dbg !2461
  br i1 %104, label %497, label %470, !dbg !2475

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2476
  br i1 %259, label %260, label %265, !dbg !2478

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2479, !tbaa !928
  %262 = icmp ne i8 %261, 0, !dbg !2480
  %263 = icmp ne i64 %123, 0, !dbg !2481
  %264 = or i1 %263, %262, !dbg !2483
  br i1 %264, label %470, label %271, !dbg !2483

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2484
  %267 = icmp ne i64 %123, 0, !dbg !2481
  %268 = or i1 %267, %266, !dbg !2478
  br i1 %268, label %470, label %271, !dbg !2478

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2481
  br i1 %270, label %271, label %470, !dbg !2485

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2256, metadata !680), !dbg !2369
  br label %272, !dbg !2486

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !2256, metadata !680), !dbg !2369
  br i1 %117, label %470, label %635, !dbg !2487

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2247, metadata !680), !dbg !2311
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2256, metadata !680), !dbg !2369
  br i1 %113, label %275, label %470, !dbg !2489

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2490

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2493
  %278 = icmp ne i64 %125, 0, !dbg !2495
  %279 = or i1 %278, %277, !dbg !2496
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2240, metadata !680), !dbg !2303
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2230, metadata !680), !dbg !2294
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2496
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2496
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2230, metadata !680), !dbg !2294
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !2240, metadata !680), !dbg !2303
  %282 = icmp ult i64 %124, %281, !dbg !2497
  br i1 %282, label %283, label %285, !dbg !2500

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2497
  store i8 39, i8* %284, align 1, !dbg !2497, !tbaa !928
  br label %285, !dbg !2497

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2500
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !2239, metadata !680), !dbg !2302
  %287 = icmp ult i64 %286, %281, !dbg !2501
  br i1 %287, label %288, label %290, !dbg !2504

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2501
  store i8 92, i8* %289, align 1, !dbg !2501, !tbaa !928
  br label %290, !dbg !2501

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2504
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !2239, metadata !680), !dbg !2302
  %292 = icmp ult i64 %291, %281, !dbg !2505
  br i1 %292, label %293, label %295, !dbg !2508

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2505
  store i8 39, i8* %294, align 1, !dbg !2505, !tbaa !928
  br label %295, !dbg !2505

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2508
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2246, metadata !680), !dbg !2310
  br label %470, !dbg !2509

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2510

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2257, metadata !680), !dbg !2511
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2512
  %300 = load i16*, i16** %299, align 8, !dbg !2512, !tbaa !687
  %301 = zext i8 %158 to i64, !dbg !2512
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2512
  %303 = load i16, i16* %302, align 2, !dbg !2512, !tbaa !2514
  %304 = lshr i16 %303, 14, !dbg !2516
  %305 = trunc i16 %304 to i8, !dbg !2516
  %306 = and i8 %305, 1, !dbg !2516
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !2260, metadata !680), !dbg !2517
  br label %362, !dbg !2518

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2519
  store i64 0, i64* %10, align 8, !dbg !2520
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2257, metadata !680), !dbg !2511
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2260, metadata !680), !dbg !2517
  %308 = icmp eq i64 %155, -1, !dbg !2521
  br i1 %308, label %309, label %311, !dbg !2523

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2524
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !2232, metadata !680), !dbg !2296
  br label %311, !dbg !2525

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !2232, metadata !680), !dbg !2296
  br label %313, !dbg !2526, !llvm.loop !2527

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !2260, metadata !680), !dbg !2517
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2257, metadata !680), !dbg !2511
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2529
  %316 = add i64 %314, %123, !dbg !2530
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2531
  %318 = sub i64 %312, %316, !dbg !2532
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2261, metadata !680), !dbg !2533
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2279, metadata !680), !dbg !2534
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !2535
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !2282, metadata !680), !dbg !2536
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2537

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2260, metadata !680), !dbg !2517
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2257, metadata !680), !dbg !2511
  %321 = icmp ugt i64 %312, %316, !dbg !2538
  br i1 %321, label %322, label %347, !dbg !2540

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2541

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !2257, metadata !680), !dbg !2511
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2541
  %327 = load i8, i8* %326, align 1, !dbg !2541, !tbaa !928
  %328 = icmp eq i8 %327, 0, !dbg !2540
  br i1 %328, label %347, label %329, !dbg !2542

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2543
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2257, metadata !680), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2257, metadata !680), !dbg !2511
  %331 = add i64 %330, %123, !dbg !2544
  %332 = icmp ult i64 %331, %312, !dbg !2538
  br i1 %332, label %323, label %347, !dbg !2540, !llvm.loop !2545

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2546
  %335 = and i1 %115, %334, !dbg !2549
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2283, metadata !680), !dbg !2550
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2283, metadata !680), !dbg !2550
  br i1 %335, label %336, label %350, !dbg !2549

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2551

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !2283, metadata !680), !dbg !2550
  %339 = add i64 %338, %316, !dbg !2551
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2552
  %341 = load i8, i8* %340, align 1, !dbg !2552, !tbaa !928
  %342 = sext i8 %341 to i32, !dbg !2552
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2553

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2554
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2283, metadata !680), !dbg !2550
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2283, metadata !680), !dbg !2550
  %345 = icmp ult i64 %344, %319, !dbg !2546
  br i1 %345, label %337, label %350, !dbg !2555, !llvm.loop !2556

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2558

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2260, metadata !680), !dbg !2517
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2257, metadata !680), !dbg !2511
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2558
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2559, !tbaa !1020
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !2279, metadata !680), !dbg !2534
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !2561
  %353 = icmp eq i32 %352, 0, !dbg !2561
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2260, metadata !680), !dbg !2517
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2562
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2260, metadata !680), !dbg !2517
  %355 = add i64 %319, %314, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2257, metadata !680), !dbg !2511
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2260, metadata !680), !dbg !2517
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2257, metadata !680), !dbg !2511
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2558
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2261, metadata !680), !dbg !2533
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2564
  %357 = icmp eq i32 %356, 0, !dbg !2565
  br i1 %357, label %313, label %358, !dbg !2566, !llvm.loop !2527

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2567
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2260, metadata !680), !dbg !2517
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2257, metadata !680), !dbg !2511
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2558
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2567
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !2260, metadata !680), !dbg !2517
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !2257, metadata !680), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !2232, metadata !680), !dbg !2296
  %366 = and i8 %365, 1, !dbg !2568
  %367 = icmp ne i8 %366, 0, !dbg !2568
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !2256, metadata !680), !dbg !2369
  %368 = icmp ult i64 %364, 2, !dbg !2569
  %369 = or i1 %367, %112, !dbg !2570
  %370 = and i1 %368, %369, !dbg !2571
  br i1 %370, label %470, label %371, !dbg !2571

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2572
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !2290, metadata !680), !dbg !2573
  br label %373, !dbg !2574

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !2255, metadata !680), !dbg !2368
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !2254, metadata !680), !dbg !2367
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !2249, metadata !680), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !2246, metadata !680), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !2238, metadata !680), !dbg !2359
  br i1 %369, label %426, label %380, !dbg !2575

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2580

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2255, metadata !680), !dbg !2368
  %382 = and i8 %376, 1, !dbg !2583
  %383 = icmp eq i8 %382, 0, !dbg !2583
  %384 = and i1 %113, %383, !dbg !2583
  br i1 %384, label %385, label %401, !dbg !2583

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2585
  br i1 %386, label %387, label %389, !dbg !2589

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2585
  store i8 39, i8* %388, align 1, !dbg !2585, !tbaa !928
  br label %389, !dbg !2585

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2589
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !2239, metadata !680), !dbg !2302
  %391 = icmp ult i64 %390, %130, !dbg !2590
  br i1 %391, label %392, label %394, !dbg !2593

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2590
  store i8 36, i8* %393, align 1, !dbg !2590, !tbaa !928
  br label %394, !dbg !2590

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2593
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !2239, metadata !680), !dbg !2302
  %396 = icmp ult i64 %395, %130, !dbg !2594
  br i1 %396, label %397, label %399, !dbg !2597

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2594
  store i8 39, i8* %398, align 1, !dbg !2594, !tbaa !928
  br label %399, !dbg !2594

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2597
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2246, metadata !680), !dbg !2310
  br label %401, !dbg !2598

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !2246, metadata !680), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !2239, metadata !680), !dbg !2302
  %404 = icmp ult i64 %402, %130, !dbg !2599
  br i1 %404, label %405, label %407, !dbg !2602

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2599
  store i8 92, i8* %406, align 1, !dbg !2599, !tbaa !928
  br label %407, !dbg !2599

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2239, metadata !680), !dbg !2302
  %409 = icmp ult i64 %408, %130, !dbg !2603
  br i1 %409, label %410, label %414, !dbg !2606

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2603
  %412 = or i8 %411, 48, !dbg !2603
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2603
  store i8 %412, i8* %413, align 1, !dbg !2603, !tbaa !928
  br label %414, !dbg !2603

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2606
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !2239, metadata !680), !dbg !2302
  %416 = icmp ult i64 %415, %130, !dbg !2607
  br i1 %416, label %417, label %422, !dbg !2610

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2607
  %419 = and i8 %418, 7, !dbg !2607
  %420 = or i8 %419, 48, !dbg !2607
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2607
  store i8 %420, i8* %421, align 1, !dbg !2607, !tbaa !928
  br label %422, !dbg !2607

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !2239, metadata !680), !dbg !2302
  %424 = and i8 %377, 7, !dbg !2611
  %425 = or i8 %424, 48, !dbg !2612
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !2249, metadata !680), !dbg !2383
  br label %435, !dbg !2613

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2614
  %428 = icmp eq i8 %427, 0, !dbg !2614
  br i1 %428, label %435, label %429, !dbg !2616

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2617
  br i1 %430, label %431, label %433, !dbg !2621

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2617
  store i8 92, i8* %432, align 1, !dbg !2617, !tbaa !928
  br label %433, !dbg !2617

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2621
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2254, metadata !680), !dbg !2367
  br label %435, !dbg !2622

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !2255, metadata !680), !dbg !2368
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !2254, metadata !680), !dbg !2367
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !2249, metadata !680), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !2246, metadata !680), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !2239, metadata !680), !dbg !2302
  %441 = add i64 %374, 1, !dbg !2623
  %442 = icmp ugt i64 %372, %441, !dbg !2625
  br i1 %442, label %443, label %535, !dbg !2626

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2627
  %445 = icmp ne i8 %444, 0, !dbg !2627
  %446 = and i8 %440, 1, !dbg !2627
  %447 = icmp eq i8 %446, 0, !dbg !2627
  %448 = and i1 %445, %447, !dbg !2627
  br i1 %448, label %449, label %460, !dbg !2627

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2630
  br i1 %450, label %451, label %453, !dbg !2634

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2630
  store i8 39, i8* %452, align 1, !dbg !2630, !tbaa !928
  br label %453, !dbg !2630

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2634
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !2239, metadata !680), !dbg !2302
  %455 = icmp ult i64 %454, %130, !dbg !2635
  br i1 %455, label %456, label %458, !dbg !2638

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2635
  store i8 39, i8* %457, align 1, !dbg !2635, !tbaa !928
  br label %458, !dbg !2635

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2638
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2246, metadata !680), !dbg !2310
  br label %460, !dbg !2639

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !2246, metadata !680), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !2239, metadata !680), !dbg !2302
  %463 = icmp ult i64 %461, %130, !dbg !2640
  br i1 %463, label %464, label %466, !dbg !2643

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2640
  store i8 %438, i8* %465, align 1, !dbg !2640, !tbaa !928
  br label %466, !dbg !2640

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2643
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !2238, metadata !680), !dbg !2359
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2644
  %469 = load i8, i8* %468, align 1, !dbg !2644, !tbaa !928
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !2249, metadata !680), !dbg !2383
  br label %373, !dbg !2645, !llvm.loop !2646

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2230, metadata !680), !dbg !2294
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !2256, metadata !680), !dbg !2369
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !2255, metadata !680), !dbg !2368
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2254, metadata !680), !dbg !2367
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !2249, metadata !680), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !2247, metadata !680), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2246, metadata !680), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !2232, metadata !680), !dbg !2296
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2240, metadata !680), !dbg !2303
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !2238, metadata !680), !dbg !2359
  br i1 %106, label %482, label %481, !dbg !2649

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2651

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2652

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2653
  %485 = zext i8 %484 to i64, !dbg !2653
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2654
  %487 = load i32, i32* %486, align 4, !dbg !2654, !tbaa !1020
  %488 = and i8 %477, 31, !dbg !2655
  %489 = zext i8 %488 to i32, !dbg !2656
  %490 = shl i32 1, %489, !dbg !2657
  %491 = and i32 %487, %490, !dbg !2657
  %492 = icmp eq i32 %491, 0, !dbg !2657
  %493 = icmp eq i8 %156, 0, !dbg !2658
  %494 = and i1 %493, %492, !dbg !2659
  br i1 %494, label %535, label %497, !dbg !2659

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2658
  br i1 %496, label %535, label %497, !dbg !2660

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2230, metadata !680), !dbg !2294
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !2256, metadata !680), !dbg !2369
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !2249, metadata !680), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !2247, metadata !680), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !2246, metadata !680), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !2232, metadata !680), !dbg !2296
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !2240, metadata !680), !dbg !2303
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !2238, metadata !680), !dbg !2359
  br i1 %111, label %507, label %635, !dbg !2661

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2255, metadata !680), !dbg !2368
  %508 = and i8 %502, 1, !dbg !2663
  %509 = icmp eq i8 %508, 0, !dbg !2663
  %510 = and i1 %113, %509, !dbg !2663
  br i1 %510, label %511, label %527, !dbg !2663

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2665
  br i1 %512, label %513, label %515, !dbg !2669

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2665
  store i8 39, i8* %514, align 1, !dbg !2665, !tbaa !928
  br label %515, !dbg !2665

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2669
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !2239, metadata !680), !dbg !2302
  %517 = icmp ult i64 %516, %506, !dbg !2670
  br i1 %517, label %518, label %520, !dbg !2673

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2670
  store i8 36, i8* %519, align 1, !dbg !2670, !tbaa !928
  br label %520, !dbg !2670

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2673
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !2239, metadata !680), !dbg !2302
  %522 = icmp ult i64 %521, %506, !dbg !2674
  br i1 %522, label %523, label %525, !dbg !2677

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2674
  store i8 39, i8* %524, align 1, !dbg !2674, !tbaa !928
  br label %525, !dbg !2674

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2677
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2246, metadata !680), !dbg !2310
  br label %527, !dbg !2678

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !2246, metadata !680), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !2239, metadata !680), !dbg !2302
  %530 = icmp ult i64 %528, %506, !dbg !2679
  br i1 %530, label %531, label %533, !dbg !2682

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2679
  store i8 92, i8* %532, align 1, !dbg !2679, !tbaa !928
  br label %533, !dbg !2679

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2682
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2230, metadata !680), !dbg !2294
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2256, metadata !680), !dbg !2369
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2255, metadata !680), !dbg !2368
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2249, metadata !680), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2247, metadata !680), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2246, metadata !680), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2232, metadata !680), !dbg !2296
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2240, metadata !680), !dbg !2303
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2238, metadata !680), !dbg !2359
  br label %562, !dbg !2683

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2230, metadata !680), !dbg !2294
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2256, metadata !680), !dbg !2369
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2255, metadata !680), !dbg !2368
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2249, metadata !680), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2247, metadata !680), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2246, metadata !680), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2232, metadata !680), !dbg !2296
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2240, metadata !680), !dbg !2303
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2238, metadata !680), !dbg !2359
  %546 = and i8 %540, 1, !dbg !2683
  %547 = icmp ne i8 %546, 0, !dbg !2683
  %548 = and i8 %543, 1, !dbg !2683
  %549 = icmp eq i8 %548, 0, !dbg !2683
  %550 = and i1 %547, %549, !dbg !2683
  br i1 %550, label %551, label %562, !dbg !2683

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2686
  br i1 %552, label %553, label %555, !dbg !2690

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2686
  store i8 39, i8* %554, align 1, !dbg !2686, !tbaa !928
  br label %555, !dbg !2686

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2690
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !2239, metadata !680), !dbg !2302
  %557 = icmp ult i64 %556, %545, !dbg !2691
  br i1 %557, label %558, label %560, !dbg !2694

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2691
  store i8 39, i8* %559, align 1, !dbg !2691, !tbaa !928
  br label %560, !dbg !2691

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2694
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2246, metadata !680), !dbg !2310
  br label %562, !dbg !2695

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !2246, metadata !680), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !2239, metadata !680), !dbg !2302
  %572 = icmp ult i64 %570, %563, !dbg !2696
  br i1 %572, label %573, label %575, !dbg !2699

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2696
  store i8 %565, i8* %574, align 1, !dbg !2696, !tbaa !928
  br label %575, !dbg !2696

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2699
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !2239, metadata !680), !dbg !2302
  %577 = and i8 %564, 1, !dbg !2700
  %578 = icmp eq i8 %577, 0, !dbg !2700
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2248, metadata !680), !dbg !2312
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2702
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !2248, metadata !680), !dbg !2312
  br label %580, !dbg !2703

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !2230, metadata !680), !dbg !2294
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !2248, metadata !680), !dbg !2312
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2247, metadata !680), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !2246, metadata !680), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !2232, metadata !680), !dbg !2296
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2240, metadata !680), !dbg !2303
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !2238, metadata !680), !dbg !2359
  %589 = add i64 %581, 1, !dbg !2704
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !2238, metadata !680), !dbg !2359
  br label %122, !dbg !2705, !llvm.loop !2706

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2708
  %593 = and i1 %113, %592, !dbg !2710
  %594 = xor i1 %593, true, !dbg !2710
  %595 = or i1 %111, %594, !dbg !2710
  br i1 %595, label %596, label %635, !dbg !2710

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2711
  %598 = xor i1 %597, true, !dbg !2711
  %599 = and i8 %128, 1, !dbg !2713
  %600 = icmp eq i8 %599, 0, !dbg !2713
  %601 = or i1 %600, %598, !dbg !2711
  br i1 %601, label %611, label %602, !dbg !2711

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2714
  %604 = icmp eq i8 %603, 0, !dbg !2714
  br i1 %604, label %607, label %605, !dbg !2717

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2718
  br label %645, !dbg !2719

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2720
  %609 = icmp ne i64 %125, 0, !dbg !2722
  %610 = and i1 %609, %608, !dbg !2723
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2230, metadata !680), !dbg !2294
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2239, metadata !680), !dbg !2302
  br i1 %610, label %27, label %611, !dbg !2723

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2724
  %613 = and i1 %612, %111, !dbg !2726
  br i1 %613, label %614, label %630, !dbg !2726

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2241, metadata !680), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2239, metadata !680), !dbg !2302
  %615 = load i8, i8* %99, align 1, !dbg !2727, !tbaa !928
  %616 = icmp eq i8 %615, 0, !dbg !2730
  br i1 %616, label %630, label %617, !dbg !2730

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2731

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !2239, metadata !680), !dbg !2302
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !2241, metadata !680), !dbg !2304
  %622 = icmp ult i64 %621, %130, !dbg !2731
  br i1 %622, label %623, label %625, !dbg !2734

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2731
  store i8 %619, i8* %624, align 1, !dbg !2731, !tbaa !928
  br label %625, !dbg !2731

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2734
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2239, metadata !680), !dbg !2302
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2241, metadata !680), !dbg !2304
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2241, metadata !680), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2239, metadata !680), !dbg !2302
  %628 = load i8, i8* %627, align 1, !dbg !2727, !tbaa !928
  %629 = icmp eq i8 %628, 0, !dbg !2730
  br i1 %629, label %630, label %618, !dbg !2730, !llvm.loop !2736

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !2239, metadata !680), !dbg !2302
  %632 = icmp ult i64 %631, %130, !dbg !2738
  br i1 %632, label %633, label %645, !dbg !2740

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2741
  store i8 0, i8* %634, align 1, !dbg !2742, !tbaa !928
  br label %645, !dbg !2741

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !2230, metadata !680), !dbg !2294
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !2232, metadata !680), !dbg !2296
  %639 = icmp ne i32 %636, 2, !dbg !2743
  %640 = icmp eq i8 %103, 0, !dbg !2745
  %641 = or i1 %639, %640, !dbg !2746
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2233, metadata !680), !dbg !2297
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2746
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !2233, metadata !680), !dbg !2297
  %643 = and i32 %5, -3, !dbg !2747
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2748
  br label %645, !dbg !2749

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2750
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2751 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2755, metadata !680), !dbg !2759
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2756, metadata !680), !dbg !2760
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2761
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2757, metadata !680), !dbg !2762
  %4 = icmp eq i8* %3, %0, !dbg !2763
  br i1 %4, label %5, label %75, !dbg !2765

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2766
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2758, metadata !680), !dbg !2767
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2768, metadata !680), !dbg !2784
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2782, metadata !680), !dbg !2787
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2783, metadata !680), !dbg !2788
  %7 = load i8, i8* %6, align 1, !dbg !2789, !tbaa !928
  %8 = sext i8 %7 to i32, !dbg !2789
  %9 = and i32 %8, -33, !dbg !2789
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2789

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2791, metadata !680), !dbg !2805
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2803, metadata !680), !dbg !2809
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2804, metadata !680), !dbg !2810
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2811
  %12 = load i8, i8* %11, align 1, !dbg !2811, !tbaa !928
  %13 = sext i8 %12 to i32, !dbg !2811
  %14 = and i32 %13, -33, !dbg !2811
  %15 = icmp eq i32 %14, 84, !dbg !2811
  br i1 %15, label %16, label %72, !dbg !2811

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2813, metadata !680), !dbg !2826
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2824, metadata !680), !dbg !2830
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2825, metadata !680), !dbg !2831
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2832
  %18 = load i8, i8* %17, align 1, !dbg !2832, !tbaa !928
  %19 = sext i8 %18 to i32, !dbg !2832
  %20 = and i32 %19, -33, !dbg !2832
  %21 = icmp eq i32 %20, 70, !dbg !2832
  br i1 %21, label %22, label %72, !dbg !2832

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2834, metadata !680), !dbg !2846
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2844, metadata !680), !dbg !2850
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2845, metadata !680), !dbg !2851
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2852
  %24 = load i8, i8* %23, align 1, !dbg !2852, !tbaa !928
  %25 = icmp eq i8 %24, 45, !dbg !2852
  br i1 %25, label %26, label %72, !dbg !2854

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2855, metadata !680), !dbg !2866
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2864, metadata !680), !dbg !2870
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2865, metadata !680), !dbg !2871
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2872
  %28 = load i8, i8* %27, align 1, !dbg !2872, !tbaa !928
  %29 = icmp eq i8 %28, 56, !dbg !2872
  br i1 %29, label %30, label %72, !dbg !2874

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2875, metadata !680), !dbg !2885
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2883, metadata !680), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2884, metadata !680), !dbg !2890
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2891
  %32 = load i8, i8* %31, align 1, !dbg !2891, !tbaa !928
  %33 = icmp eq i8 %32, 0, !dbg !2891
  br i1 %33, label %34, label %72, !dbg !2893

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2894, !tbaa !928
  %36 = icmp eq i8 %35, 96, !dbg !2895
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.77, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.78, i64 0, i64 0), !dbg !2894
  br label %75, !dbg !2896

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2791, metadata !680), !dbg !2897
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2803, metadata !680), !dbg !2901
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2804, metadata !680), !dbg !2902
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2903
  %40 = load i8, i8* %39, align 1, !dbg !2903, !tbaa !928
  %41 = sext i8 %40 to i32, !dbg !2903
  %42 = and i32 %41, -33, !dbg !2903
  %43 = icmp eq i32 %42, 66, !dbg !2903
  br i1 %43, label %44, label %72, !dbg !2903

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2813, metadata !680), !dbg !2904
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2824, metadata !680), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2825, metadata !680), !dbg !2907
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2908
  %46 = load i8, i8* %45, align 1, !dbg !2908, !tbaa !928
  %47 = icmp eq i8 %46, 49, !dbg !2908
  br i1 %47, label %48, label %72, !dbg !2909

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2834, metadata !680), !dbg !2910
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2844, metadata !680), !dbg !2912
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2845, metadata !680), !dbg !2913
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2914
  %50 = load i8, i8* %49, align 1, !dbg !2914, !tbaa !928
  %51 = icmp eq i8 %50, 56, !dbg !2914
  br i1 %51, label %52, label %72, !dbg !2915

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2855, metadata !680), !dbg !2916
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2864, metadata !680), !dbg !2918
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2865, metadata !680), !dbg !2919
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2920
  %54 = load i8, i8* %53, align 1, !dbg !2920, !tbaa !928
  %55 = icmp eq i8 %54, 48, !dbg !2920
  br i1 %55, label %56, label %72, !dbg !2921

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2875, metadata !680), !dbg !2922
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2883, metadata !680), !dbg !2924
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2884, metadata !680), !dbg !2925
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2926
  %58 = load i8, i8* %57, align 1, !dbg !2926, !tbaa !928
  %59 = icmp eq i8 %58, 51, !dbg !2926
  br i1 %59, label %60, label %72, !dbg !2927

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2928, metadata !680), !dbg !2937
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2935, metadata !680), !dbg !2941
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2936, metadata !680), !dbg !2942
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2943
  %62 = load i8, i8* %61, align 1, !dbg !2943, !tbaa !928
  %63 = icmp eq i8 %62, 48, !dbg !2943
  br i1 %63, label %64, label %72, !dbg !2945

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2946, metadata !680), !dbg !2954
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2952, metadata !680), !dbg !2958
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2953, metadata !680), !dbg !2959
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2960
  %66 = load i8, i8* %65, align 1, !dbg !2960, !tbaa !928
  %67 = icmp eq i8 %66, 0, !dbg !2960
  br i1 %67, label %68, label %72, !dbg !2962

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2963, !tbaa !928
  %70 = icmp eq i8 %69, 96, !dbg !2964
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.79, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.80, i64 0, i64 0), !dbg !2963
  br label %75, !dbg !2965

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2966
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), !dbg !2967
  br label %75, !dbg !2968

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2969
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2970 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2974, metadata !680), !dbg !2977
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2975, metadata !680), !dbg !2978
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2976, metadata !680), !dbg !2979
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2980, metadata !680) #10, !dbg !2993
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2985, metadata !680) #10, !dbg !2995
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2986, metadata !680) #10, !dbg !2996
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2987, metadata !680) #10, !dbg !2997
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2998
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2998
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2988, metadata !680) #10, !dbg !2999
  %6 = tail call i32* @__errno_location() #17, !dbg !3000
  %7 = load i32, i32* %6, align 4, !dbg !3000, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2989, metadata !680) #10, !dbg !3001
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3002
  %9 = load i32, i32* %8, align 4, !dbg !3002, !tbaa !2162
  %10 = or i32 %9, 1, !dbg !3003
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2990, metadata !680) #10, !dbg !3004
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3005
  %12 = load i32, i32* %11, align 8, !dbg !3005, !tbaa !2102
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3006
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3007
  %15 = load i8*, i8** %14, align 8, !dbg !3007, !tbaa !2188
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3008
  %17 = load i8*, i8** %16, align 8, !dbg !3008, !tbaa !2191
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !3009
  %19 = add i64 %18, 1, !dbg !3010
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2991, metadata !680) #10, !dbg !3011
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3012, metadata !680) #10, !dbg !3016
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !3018
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2992, metadata !680) #10, !dbg !3019
  %21 = load i32, i32* %11, align 8, !dbg !3020, !tbaa !2102
  %22 = load i8*, i8** %14, align 8, !dbg !3021, !tbaa !2188
  %23 = load i8*, i8** %16, align 8, !dbg !3022, !tbaa !2191
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !3023
  store i32 %7, i32* %6, align 4, !dbg !3024, !tbaa !1020
  ret i8* %20, !dbg !3025
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2981 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2980, metadata !680), !dbg !3026
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2985, metadata !680), !dbg !3027
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2986, metadata !680), !dbg !3028
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2987, metadata !680), !dbg !3029
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3030
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3030
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2988, metadata !680), !dbg !3031
  %7 = tail call i32* @__errno_location() #17, !dbg !3032
  %8 = load i32, i32* %7, align 4, !dbg !3032, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2989, metadata !680), !dbg !3033
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3034
  %10 = load i32, i32* %9, align 4, !dbg !3034, !tbaa !2162
  %11 = icmp ne i64* %2, null, !dbg !3035
  %12 = xor i1 %11, true, !dbg !3035
  %13 = zext i1 %12 to i32, !dbg !3035
  %14 = or i32 %10, %13, !dbg !3036
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2990, metadata !680), !dbg !3037
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3038
  %16 = load i32, i32* %15, align 8, !dbg !3038, !tbaa !2102
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3039
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3040
  %19 = load i8*, i8** %18, align 8, !dbg !3040, !tbaa !2188
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3041
  %21 = load i8*, i8** %20, align 8, !dbg !3041, !tbaa !2191
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3042
  %23 = add i64 %22, 1, !dbg !3043
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2991, metadata !680), !dbg !3044
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3012, metadata !680) #10, !dbg !3045
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !3047
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2992, metadata !680), !dbg !3048
  %25 = load i32, i32* %15, align 8, !dbg !3049, !tbaa !2102
  %26 = load i8*, i8** %18, align 8, !dbg !3050, !tbaa !2188
  %27 = load i8*, i8** %20, align 8, !dbg !3051, !tbaa !2191
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3052
  store i32 %8, i32* %7, align 4, !dbg !3053, !tbaa !1020
  br i1 %11, label %29, label %30, !dbg !3054

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3055, !tbaa !1252
  br label %30, !dbg !3057

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3058
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3059 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3063, !tbaa !687
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3061, metadata !680), !dbg !3064
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3062, metadata !680), !dbg !3065
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3062, metadata !680), !dbg !3065
  %2 = load i32, i32* @nslots, align 4, !dbg !3066, !tbaa !1020
  %3 = icmp sgt i32 %2, 1, !dbg !3069
  br i1 %3, label %4, label %13, !dbg !3070

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3071

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3062, metadata !680), !dbg !3065
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3071
  %8 = load i8*, i8** %7, align 8, !dbg !3071, !tbaa !3072
  tail call void @free(i8* %8) #10, !dbg !3074
  %9 = add nuw i64 %6, 1, !dbg !3075
  %10 = load i32, i32* @nslots, align 4, !dbg !3066, !tbaa !1020
  %11 = sext i32 %10 to i64, !dbg !3069
  %12 = icmp slt i64 %9, %11, !dbg !3069
  br i1 %12, label %5, label %13, !dbg !3070, !llvm.loop !3076

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3078
  %15 = load i8*, i8** %14, align 8, !dbg !3078, !tbaa !3072
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3080
  br i1 %16, label %18, label %17, !dbg !3081

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !3082
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3084, !tbaa !3085
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3086, !tbaa !3072
  br label %18, !dbg !3087

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3088
  br i1 %19, label %22, label %20, !dbg !3090

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !3091
  tail call void @free(i8* %21) #10, !dbg !3093
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3094, !tbaa !687
  br label %22, !dbg !3095

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !3096, !tbaa !1020
  ret void, !dbg !3097
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3098 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3102, metadata !680), !dbg !3104
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3103, metadata !680), !dbg !3105
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3106
  ret i8* %3, !dbg !3107
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3108 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3112, metadata !680), !dbg !3126
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3113, metadata !680), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3114, metadata !680), !dbg !3128
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3115, metadata !680), !dbg !3129
  %5 = tail call i32* @__errno_location() #17, !dbg !3130
  %6 = load i32, i32* %5, align 4, !dbg !3130, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3116, metadata !680), !dbg !3131
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3132, !tbaa !687
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3117, metadata !680), !dbg !3133
  %8 = icmp slt i32 %0, 0, !dbg !3134
  br i1 %8, label %9, label %10, !dbg !3136

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3137
  unreachable, !dbg !3137

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3138, !tbaa !1020
  %12 = icmp sgt i32 %11, %0, !dbg !3139
  br i1 %12, label %34, label %13, !dbg !3140

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3141
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3142
  br i1 %15, label %16, label %17, !dbg !3144

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3145
  unreachable, !dbg !3145

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3146
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3146
  %20 = add nsw i32 %0, 1, !dbg !3147
  %21 = sext i32 %20 to i64, !dbg !3148
  %22 = shl nsw i64 %21, 4, !dbg !3149
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3150
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3150
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3117, metadata !680), !dbg !3133
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3151, !tbaa !687
  br i1 %14, label %25, label %26, !dbg !3152

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3153, !tbaa.struct !3155
  br label %26, !dbg !3156

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3157, !tbaa !1020
  %28 = sext i32 %27 to i64, !dbg !3158
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3158
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3159
  %31 = sub nsw i32 %20, %27, !dbg !3160
  %32 = sext i32 %31 to i64, !dbg !3161
  %33 = shl nsw i64 %32, 4, !dbg !3162
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3159
  store i32 %20, i32* @nslots, align 4, !dbg !3163, !tbaa !1020
  br label %34, !dbg !3164

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3117, metadata !680), !dbg !3133
  %36 = sext i32 %0 to i64, !dbg !3165
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3166
  %38 = load i64, i64* %37, align 8, !dbg !3166, !tbaa !3085
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3121, metadata !680), !dbg !3167
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3168
  %40 = load i8*, i8** %39, align 8, !dbg !3168, !tbaa !3072
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3123, metadata !680), !dbg !3169
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3170
  %42 = load i32, i32* %41, align 4, !dbg !3170, !tbaa !2162
  %43 = or i32 %42, 1, !dbg !3171
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3124, metadata !680), !dbg !3172
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3173
  %45 = load i32, i32* %44, align 8, !dbg !3173, !tbaa !2102
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3174
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3175
  %48 = load i8*, i8** %47, align 8, !dbg !3175, !tbaa !2188
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3176
  %50 = load i8*, i8** %49, align 8, !dbg !3176, !tbaa !2191
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3177
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3125, metadata !680), !dbg !3178
  %52 = icmp ugt i64 %38, %51, !dbg !3179
  br i1 %52, label %63, label %53, !dbg !3181

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3121, metadata !680), !dbg !3167
  store i64 %54, i64* %37, align 8, !dbg !3184, !tbaa !3085
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3185
  br i1 %55, label %57, label %56, !dbg !3187

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3188
  br label %57, !dbg !3188

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3012, metadata !680) #10, !dbg !3189
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3191
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3123, metadata !680), !dbg !3169
  store i8* %58, i8** %39, align 8, !dbg !3192, !tbaa !3072
  %59 = load i32, i32* %44, align 8, !dbg !3193, !tbaa !2102
  %60 = load i8*, i8** %47, align 8, !dbg !3194, !tbaa !2188
  %61 = load i8*, i8** %49, align 8, !dbg !3195, !tbaa !2191
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3196
  br label %63, !dbg !3197

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3123, metadata !680), !dbg !3169
  store i32 %6, i32* %5, align 4, !dbg !3198, !tbaa !1020
  ret i8* %64, !dbg !3199
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3200 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3204, metadata !680), !dbg !3207
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3205, metadata !680), !dbg !3208
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3206, metadata !680), !dbg !3209
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3210
  ret i8* %4, !dbg !3211
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3212 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3216, metadata !680), !dbg !3217
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3102, metadata !680) #10, !dbg !3218
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3103, metadata !680) #10, !dbg !3220
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3221
  ret i8* %2, !dbg !3222
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3223 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3227, metadata !680), !dbg !3229
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3228, metadata !680), !dbg !3230
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3204, metadata !680) #10, !dbg !3231
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3205, metadata !680) #10, !dbg !3233
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3206, metadata !680) #10, !dbg !3234
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3235
  ret i8* %3, !dbg !3236
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3237 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3245, metadata !3251), !dbg !3252
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3241, metadata !680), !dbg !3254
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3242, metadata !680), !dbg !3255
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3243, metadata !680), !dbg !3256
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3257
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3257
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3244, metadata !680), !dbg !3258
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3250, metadata !680) #10, !dbg !3259
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3260
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3260
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3245, metadata !680) #10, !dbg !3252
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3245, metadata !3261) #10, !dbg !3252
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3252
  %8 = icmp eq i32 %1, 10, !dbg !3262
  br i1 %8, label %9, label %10, !dbg !3264

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3265, !noalias !3266
  unreachable, !dbg !3265

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3245, metadata !3261) #10, !dbg !3252
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3269
  store i32 %1, i32* %11, align 8, !dbg !3269, !alias.scope !3266
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3269
  %13 = bitcast i32* %12 to i8*, !dbg !3269
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3269
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3270
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3244, metadata !680), !dbg !3258
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3271
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3272
  ret i8* %14, !dbg !3273
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3274 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3245, metadata !3251), !dbg !3283
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3278, metadata !680), !dbg !3285
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3279, metadata !680), !dbg !3286
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3280, metadata !680), !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3281, metadata !680), !dbg !3288
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3289
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3289
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3282, metadata !680), !dbg !3290
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3250, metadata !680) #10, !dbg !3291
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3292
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3292
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3245, metadata !680) #10, !dbg !3283
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3245, metadata !3261) #10, !dbg !3283
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3283
  %9 = icmp eq i32 %1, 10, !dbg !3293
  br i1 %9, label %10, label %11, !dbg !3294

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3295, !noalias !3296
  unreachable, !dbg !3295

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3245, metadata !3261) #10, !dbg !3283
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3299
  store i32 %1, i32* %12, align 8, !dbg !3299, !alias.scope !3296
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3299
  %14 = bitcast i32* %13 to i8*, !dbg !3299
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !3299
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3300
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3282, metadata !680), !dbg !3290
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3301
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3302
  ret i8* %15, !dbg !3303
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3304 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3245, metadata !3251), !dbg !3310
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3308, metadata !680), !dbg !3313
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3309, metadata !680), !dbg !3314
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3241, metadata !680) #10, !dbg !3315
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3242, metadata !680) #10, !dbg !3316
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3243, metadata !680) #10, !dbg !3317
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3318
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3318
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3244, metadata !680) #10, !dbg !3319
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3250, metadata !680) #10, !dbg !3320
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3321
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !3321
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3245, metadata !680) #10, !dbg !3310
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3245, metadata !3261) #10, !dbg !3310
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3310
  %7 = icmp eq i32 %0, 10, !dbg !3322
  br i1 %7, label %8, label %9, !dbg !3323

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3324, !noalias !3325
  unreachable, !dbg !3324

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3245, metadata !3261) #10, !dbg !3310
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3328
  store i32 %0, i32* %10, align 8, !dbg !3328, !alias.scope !3325
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3328
  %12 = bitcast i32* %11 to i8*, !dbg !3328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !3328
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !3329
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3244, metadata !680) #10, !dbg !3319
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3330
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3331
  ret i8* %13, !dbg !3332
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3333 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3245, metadata !3251), !dbg !3340
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3337, metadata !680), !dbg !3343
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3338, metadata !680), !dbg !3344
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3339, metadata !680), !dbg !3345
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3278, metadata !680) #10, !dbg !3346
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3279, metadata !680) #10, !dbg !3347
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3280, metadata !680) #10, !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3281, metadata !680) #10, !dbg !3349
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3350
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3350
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3282, metadata !680) #10, !dbg !3351
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3250, metadata !680) #10, !dbg !3352
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3353
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3353
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3245, metadata !680) #10, !dbg !3340
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3245, metadata !3261) #10, !dbg !3340
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3340
  %8 = icmp eq i32 %0, 10, !dbg !3354
  br i1 %8, label %9, label %10, !dbg !3355

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3356, !noalias !3357
  unreachable, !dbg !3356

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3245, metadata !3261) #10, !dbg !3340
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3360
  store i32 %0, i32* %11, align 8, !dbg !3360, !alias.scope !3357
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3360
  %13 = bitcast i32* %12 to i8*, !dbg !3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3360
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3361
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3282, metadata !680) #10, !dbg !3351
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !3362
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3363
  ret i8* %14, !dbg !3364
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3365 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3369, metadata !680), !dbg !3373
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3370, metadata !680), !dbg !3374
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3371, metadata !680), !dbg !3375
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3376
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3376
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3377, !tbaa.struct !3378
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3372, metadata !680), !dbg !3379
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2121, metadata !680), !dbg !3380
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2122, metadata !680), !dbg !3382
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2123, metadata !680), !dbg !3383
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2124, metadata !680), !dbg !3384
  %6 = lshr i8 %2, 5, !dbg !3385
  %7 = zext i8 %6 to i64, !dbg !3385
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3386
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2125, metadata !680), !dbg !3387
  %9 = and i8 %2, 31, !dbg !3388
  %10 = zext i8 %9 to i32, !dbg !3389
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2127, metadata !680), !dbg !3390
  %11 = load i32, i32* %8, align 4, !dbg !3391, !tbaa !1020
  %12 = lshr i32 %11, %10, !dbg !3392
  %13 = and i32 %12, 1, !dbg !3393
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2128, metadata !680), !dbg !3394
  %14 = xor i32 %13, 1, !dbg !3395
  %15 = shl i32 %14, %10, !dbg !3396
  %16 = xor i32 %15, %11, !dbg !3397
  store i32 %16, i32* %8, align 4, !dbg !3397, !tbaa !1020
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3372, metadata !680), !dbg !3379
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3398
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3399
  ret i8* %17, !dbg !3400
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3401 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3405, metadata !680), !dbg !3407
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3406, metadata !680), !dbg !3408
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3369, metadata !680) #10, !dbg !3409
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3370, metadata !680) #10, !dbg !3411
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3371, metadata !680) #10, !dbg !3412
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3413
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3413
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3414, !tbaa.struct !3378
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3372, metadata !680) #10, !dbg !3415
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2121, metadata !680) #10, !dbg !3416
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2122, metadata !680) #10, !dbg !3418
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2123, metadata !680) #10, !dbg !3419
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2124, metadata !680) #10, !dbg !3420
  %5 = lshr i8 %1, 5, !dbg !3421
  %6 = zext i8 %5 to i64, !dbg !3421
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3422
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2125, metadata !680) #10, !dbg !3423
  %8 = and i8 %1, 31, !dbg !3424
  %9 = zext i8 %8 to i32, !dbg !3425
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2127, metadata !680) #10, !dbg !3426
  %10 = load i32, i32* %7, align 4, !dbg !3427, !tbaa !1020
  %11 = lshr i32 %10, %9, !dbg !3428
  %12 = and i32 %11, 1, !dbg !3429
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2128, metadata !680) #10, !dbg !3430
  %13 = xor i32 %12, 1, !dbg !3431
  %14 = shl i32 %13, %9, !dbg !3432
  %15 = xor i32 %14, %10, !dbg !3433
  store i32 %15, i32* %7, align 4, !dbg !3433, !tbaa !1020
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3372, metadata !680) #10, !dbg !3415
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3434
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3435
  ret i8* %16, !dbg !3436
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3437 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3439, metadata !680), !dbg !3440
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3405, metadata !680) #10, !dbg !3441
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3406, metadata !680) #10, !dbg !3443
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3369, metadata !680) #10, !dbg !3444
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3370, metadata !680) #10, !dbg !3446
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3371, metadata !680) #10, !dbg !3447
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3448
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3448
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3449, !tbaa.struct !3378
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3372, metadata !680) #10, !dbg !3450
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2121, metadata !680) #10, !dbg !3451
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2122, metadata !680) #10, !dbg !3453
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2123, metadata !680) #10, !dbg !3454
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2124, metadata !680) #10, !dbg !3455
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3456
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2125, metadata !680) #10, !dbg !3457
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2127, metadata !680) #10, !dbg !3458
  %5 = load i32, i32* %4, align 4, !dbg !3459, !tbaa !1020
  %6 = or i32 %5, 67108864, !dbg !3460
  store i32 %6, i32* %4, align 4, !dbg !3460, !tbaa !1020
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3372, metadata !680) #10, !dbg !3450
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3461
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3462
  ret i8* %7, !dbg !3463
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3464 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3466, metadata !680), !dbg !3468
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3467, metadata !680), !dbg !3469
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3369, metadata !680) #10, !dbg !3470
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3370, metadata !680) #10, !dbg !3472
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3371, metadata !680) #10, !dbg !3473
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3474
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3474
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3475, !tbaa.struct !3378
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3372, metadata !680) #10, !dbg !3476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2121, metadata !680) #10, !dbg !3477
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2122, metadata !680) #10, !dbg !3479
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2123, metadata !680) #10, !dbg !3480
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2124, metadata !680) #10, !dbg !3481
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3482
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2125, metadata !680) #10, !dbg !3483
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2127, metadata !680) #10, !dbg !3484
  %6 = load i32, i32* %5, align 4, !dbg !3485, !tbaa !1020
  %7 = or i32 %6, 67108864, !dbg !3486
  store i32 %7, i32* %5, align 4, !dbg !3486, !tbaa !1020
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3372, metadata !680) #10, !dbg !3476
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3487
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3488
  ret i8* %8, !dbg !3489
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3490 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3245, metadata !3251), !dbg !3496
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3492, metadata !680), !dbg !3498
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3493, metadata !680), !dbg !3499
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3494, metadata !680), !dbg !3500
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3501
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3250, metadata !680) #10, !dbg !3502
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3503
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3503
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3245, metadata !680) #10, !dbg !3496
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3245, metadata !3261) #10, !dbg !3496
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3496
  %9 = icmp eq i32 %1, 10, !dbg !3504
  br i1 %9, label %10, label %11, !dbg !3505

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3506, !noalias !3507
  unreachable, !dbg !3506

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3245, metadata !3261) #10, !dbg !3496
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3510
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3510
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3511
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3512
  store i32 %1, i32* %13, align 8, !dbg !3512
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3512
  %15 = bitcast i32* %14 to i8*, !dbg !3512
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3512
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3495, metadata !680), !dbg !3513
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2121, metadata !680), !dbg !3514
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2122, metadata !680), !dbg !3516
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2123, metadata !680), !dbg !3517
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2124, metadata !680), !dbg !3518
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3519
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2125, metadata !680), !dbg !3520
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2127, metadata !680), !dbg !3521
  %17 = load i32, i32* %16, align 4, !dbg !3522, !tbaa !1020
  %18 = or i32 %17, 67108864, !dbg !3523
  store i32 %18, i32* %16, align 4, !dbg !3523, !tbaa !1020
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3495, metadata !680), !dbg !3513
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3524
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3525
  ret i8* %19, !dbg !3526
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3527 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3531, metadata !680), !dbg !3535
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3532, metadata !680), !dbg !3536
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3533, metadata !680), !dbg !3537
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3534, metadata !680), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3539, metadata !680) #10, !dbg !3549
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3544, metadata !680) #10, !dbg !3551
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3545, metadata !680) #10, !dbg !3552
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3546, metadata !680) #10, !dbg !3553
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3547, metadata !680) #10, !dbg !3554
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3555
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3555
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3556, !tbaa.struct !3378
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3548, metadata !680) #10, !dbg !3557
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2170, metadata !680) #10, !dbg !3558
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2171, metadata !680) #10, !dbg !3560
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2172, metadata !680) #10, !dbg !3561
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2170, metadata !680) #10, !dbg !3558
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2170, metadata !680) #10, !dbg !3558
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3562
  store i32 10, i32* %7, align 8, !dbg !3563, !tbaa !2102
  %8 = icmp ne i8* %1, null, !dbg !3564
  %9 = icmp ne i8* %2, null, !dbg !3565
  %10 = and i1 %8, %9, !dbg !3566
  br i1 %10, label %12, label %11, !dbg !3566

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3567
  unreachable, !dbg !3567

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3568
  store i8* %1, i8** %13, align 8, !dbg !3569, !tbaa !2188
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3570
  store i8* %2, i8** %14, align 8, !dbg !3571, !tbaa !2191
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3548, metadata !680) #10, !dbg !3557
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3572
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3573
  ret i8* %15, !dbg !3574
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3540 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3539, metadata !680), !dbg !3575
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3544, metadata !680), !dbg !3576
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3545, metadata !680), !dbg !3577
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3546, metadata !680), !dbg !3578
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3547, metadata !680), !dbg !3579
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3580
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3580
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3581, !tbaa.struct !3378
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3548, metadata !680), !dbg !3582
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2170, metadata !680) #10, !dbg !3583
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2171, metadata !680) #10, !dbg !3585
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2172, metadata !680) #10, !dbg !3586
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2170, metadata !680) #10, !dbg !3583
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2170, metadata !680) #10, !dbg !3583
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3587
  store i32 10, i32* %8, align 8, !dbg !3588, !tbaa !2102
  %9 = icmp ne i8* %1, null, !dbg !3589
  %10 = icmp ne i8* %2, null, !dbg !3590
  %11 = and i1 %9, %10, !dbg !3591
  br i1 %11, label %13, label %12, !dbg !3591

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3592
  unreachable, !dbg !3592

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3593
  store i8* %1, i8** %14, align 8, !dbg !3594, !tbaa !2188
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3595
  store i8* %2, i8** %15, align 8, !dbg !3596, !tbaa !2191
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3548, metadata !680), !dbg !3582
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3597
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3598
  ret i8* %16, !dbg !3599
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3600 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3604, metadata !680), !dbg !3607
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3605, metadata !680), !dbg !3608
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3606, metadata !680), !dbg !3609
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3531, metadata !680) #10, !dbg !3610
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3532, metadata !680) #10, !dbg !3612
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3533, metadata !680) #10, !dbg !3613
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3534, metadata !680) #10, !dbg !3614
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3539, metadata !680) #10, !dbg !3615
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3544, metadata !680) #10, !dbg !3617
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3545, metadata !680) #10, !dbg !3618
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3546, metadata !680) #10, !dbg !3619
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3547, metadata !680) #10, !dbg !3620
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3621
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3621
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3622, !tbaa.struct !3378
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3548, metadata !680) #10, !dbg !3623
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2170, metadata !680) #10, !dbg !3624
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2171, metadata !680) #10, !dbg !3626
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2172, metadata !680) #10, !dbg !3627
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2170, metadata !680) #10, !dbg !3624
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2170, metadata !680) #10, !dbg !3624
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3628
  store i32 10, i32* %6, align 8, !dbg !3629, !tbaa !2102
  %7 = icmp ne i8* %0, null, !dbg !3630
  %8 = icmp ne i8* %1, null, !dbg !3631
  %9 = and i1 %7, %8, !dbg !3632
  br i1 %9, label %11, label %10, !dbg !3632

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3633
  unreachable, !dbg !3633

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3634
  store i8* %0, i8** %12, align 8, !dbg !3635, !tbaa !2188
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3636
  store i8* %1, i8** %13, align 8, !dbg !3637, !tbaa !2191
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3548, metadata !680) #10, !dbg !3623
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3638
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3639
  ret i8* %14, !dbg !3640
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3641 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3645, metadata !680), !dbg !3649
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3646, metadata !680), !dbg !3650
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3647, metadata !680), !dbg !3651
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3648, metadata !680), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3539, metadata !680) #10, !dbg !3653
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3544, metadata !680) #10, !dbg !3655
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3545, metadata !680) #10, !dbg !3656
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3546, metadata !680) #10, !dbg !3657
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3547, metadata !680) #10, !dbg !3658
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3659
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3659
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3660, !tbaa.struct !3378
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3548, metadata !680) #10, !dbg !3661
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2170, metadata !680) #10, !dbg !3662
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2171, metadata !680) #10, !dbg !3664
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2172, metadata !680) #10, !dbg !3665
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2170, metadata !680) #10, !dbg !3662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2170, metadata !680) #10, !dbg !3662
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3666
  store i32 10, i32* %7, align 8, !dbg !3667, !tbaa !2102
  %8 = icmp ne i8* %0, null, !dbg !3668
  %9 = icmp ne i8* %1, null, !dbg !3669
  %10 = and i1 %8, %9, !dbg !3670
  br i1 %10, label %12, label %11, !dbg !3670

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3671
  unreachable, !dbg !3671

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3672
  store i8* %0, i8** %13, align 8, !dbg !3673, !tbaa !2188
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3674
  store i8* %1, i8** %14, align 8, !dbg !3675, !tbaa !2191
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3548, metadata !680) #10, !dbg !3661
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3676
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3677
  ret i8* %15, !dbg !3678
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3679 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3683, metadata !680), !dbg !3686
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3684, metadata !680), !dbg !3687
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3685, metadata !680), !dbg !3688
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3689
  ret i8* %4, !dbg !3690
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3691 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3695, metadata !680), !dbg !3697
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3696, metadata !680), !dbg !3698
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3683, metadata !680) #10, !dbg !3699
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3684, metadata !680) #10, !dbg !3701
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3685, metadata !680) #10, !dbg !3702
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3703
  ret i8* %3, !dbg !3704
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3705 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3709, metadata !680), !dbg !3711
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3710, metadata !680), !dbg !3712
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3683, metadata !680) #10, !dbg !3713
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3684, metadata !680) #10, !dbg !3715
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3685, metadata !680) #10, !dbg !3716
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3717
  ret i8* %3, !dbg !3718
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3719 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3723, metadata !680), !dbg !3724
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3709, metadata !680) #10, !dbg !3725
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3710, metadata !680) #10, !dbg !3727
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3683, metadata !680) #10, !dbg !3728
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3684, metadata !680) #10, !dbg !3730
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3685, metadata !680) #10, !dbg !3731
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3732
  ret i8* %2, !dbg !3733
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #6 !dbg !597 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !601, metadata !680), !dbg !3734
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !602, metadata !680), !dbg !3735
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !603, metadata !680), !dbg !3736
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !603, metadata !680), !dbg !3736
  %4 = tail call i64 @read(i32 %0, i8* %1, i64 %2) #10, !dbg !3737
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !604, metadata !680), !dbg !3738
  %5 = icmp sgt i64 %4, -1, !dbg !3739
  br i1 %5, label %25, label %6, !dbg !3741

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #17, !dbg !3742
  br label %11, !dbg !3741

; <label>:8:                                      ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !603, metadata !680), !dbg !3736
  %9 = tail call i64 @read(i32 %0, i8* %1, i64 2147475456) #10, !dbg !3737
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !604, metadata !680), !dbg !3738
  %10 = icmp sgt i64 %9, -1, !dbg !3739
  br i1 %10, label %25, label %11, !dbg !3741, !llvm.loop !3744

; <label>:11:                                     ; preds = %6, %8
  %12 = phi i64 [ %4, %6 ], [ %9, %8 ]
  %13 = phi i64 [ %2, %6 ], [ 2147475456, %8 ]
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !603, metadata !680), !dbg !3736
  br label %17, !dbg !3741

; <label>:14:                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !603, metadata !680), !dbg !3736
  %15 = tail call i64 @read(i32 %0, i8* %1, i64 %13) #10, !dbg !3737
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !604, metadata !680), !dbg !3738
  %16 = icmp sgt i64 %15, -1, !dbg !3739
  br i1 %16, label %25, label %17, !dbg !3741

; <label>:17:                                     ; preds = %11, %14
  %18 = phi i64 [ %12, %11 ], [ %15, %14 ]
  %19 = load i32, i32* %7, align 4, !dbg !3742, !tbaa !1020
  %20 = icmp eq i32 %19, 4, !dbg !3742
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !603, metadata !680), !dbg !3736
  br i1 %20, label %14, label %21, !dbg !3747, !llvm.loop !3744

; <label>:21:                                     ; preds = %17
  %22 = icmp eq i32 %19, 22, !dbg !3748
  %23 = icmp ugt i64 %13, 2147475456, !dbg !3750
  %24 = and i1 %23, %22, !dbg !3751
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !603, metadata !680), !dbg !3736
  br i1 %24, label %8, label %25

; <label>:25:                                     ; preds = %21, %8, %14, %3
  %26 = phi i64 [ %4, %3 ], [ %15, %14 ], [ %9, %8 ], [ %18, %21 ]
  ret i64 %26, !dbg !3752
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3753 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3809, metadata !680), !dbg !3815
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3810, metadata !680), !dbg !3816
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3811, metadata !680), !dbg !3817
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3812, metadata !680), !dbg !3818
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3813, metadata !680), !dbg !3819
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3814, metadata !680), !dbg !3820
  %7 = icmp eq i8* %1, null, !dbg !3821
  br i1 %7, label %10, label %8, !dbg !3823

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3824
  br label %12, !dbg !3824

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.92, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3825
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.93, i64 0, i64 0), i32 5) #10, !dbg !3826
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3826
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.94, i64 0, i64 0), i32 5) #10, !dbg !3827
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3827
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
  ], !dbg !3828

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3829
  unreachable, !dbg !3829

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.95, i64 0, i64 0), i32 5) #10, !dbg !3831
  %20 = load i8*, i8** %4, align 8, !dbg !3831, !tbaa !687
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3831
  br label %146, !dbg !3832

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.96, i64 0, i64 0), i32 5) #10, !dbg !3833
  %24 = load i8*, i8** %4, align 8, !dbg !3833, !tbaa !687
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3833
  %26 = load i8*, i8** %25, align 8, !dbg !3833, !tbaa !687
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3833
  br label %146, !dbg !3834

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.97, i64 0, i64 0), i32 5) #10, !dbg !3835
  %30 = load i8*, i8** %4, align 8, !dbg !3835, !tbaa !687
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3835
  %32 = load i8*, i8** %31, align 8, !dbg !3835, !tbaa !687
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3835
  %34 = load i8*, i8** %33, align 8, !dbg !3835, !tbaa !687
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3835
  br label %146, !dbg !3836

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.98, i64 0, i64 0), i32 5) #10, !dbg !3837
  %38 = load i8*, i8** %4, align 8, !dbg !3837, !tbaa !687
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3837
  %40 = load i8*, i8** %39, align 8, !dbg !3837, !tbaa !687
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3837
  %42 = load i8*, i8** %41, align 8, !dbg !3837, !tbaa !687
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3837
  %44 = load i8*, i8** %43, align 8, !dbg !3837, !tbaa !687
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3837
  br label %146, !dbg !3838

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.99, i64 0, i64 0), i32 5) #10, !dbg !3839
  %48 = load i8*, i8** %4, align 8, !dbg !3839, !tbaa !687
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3839
  %50 = load i8*, i8** %49, align 8, !dbg !3839, !tbaa !687
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3839
  %52 = load i8*, i8** %51, align 8, !dbg !3839, !tbaa !687
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3839
  %54 = load i8*, i8** %53, align 8, !dbg !3839, !tbaa !687
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3839
  %56 = load i8*, i8** %55, align 8, !dbg !3839, !tbaa !687
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3839
  br label %146, !dbg !3840

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.100, i64 0, i64 0), i32 5) #10, !dbg !3841
  %60 = load i8*, i8** %4, align 8, !dbg !3841, !tbaa !687
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3841
  %62 = load i8*, i8** %61, align 8, !dbg !3841, !tbaa !687
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3841
  %64 = load i8*, i8** %63, align 8, !dbg !3841, !tbaa !687
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3841
  %66 = load i8*, i8** %65, align 8, !dbg !3841, !tbaa !687
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3841
  %68 = load i8*, i8** %67, align 8, !dbg !3841, !tbaa !687
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3841
  %70 = load i8*, i8** %69, align 8, !dbg !3841, !tbaa !687
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3841
  br label %146, !dbg !3842

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.101, i64 0, i64 0), i32 5) #10, !dbg !3843
  %74 = load i8*, i8** %4, align 8, !dbg !3843, !tbaa !687
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3843
  %76 = load i8*, i8** %75, align 8, !dbg !3843, !tbaa !687
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3843
  %78 = load i8*, i8** %77, align 8, !dbg !3843, !tbaa !687
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3843
  %80 = load i8*, i8** %79, align 8, !dbg !3843, !tbaa !687
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3843
  %82 = load i8*, i8** %81, align 8, !dbg !3843, !tbaa !687
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3843
  %84 = load i8*, i8** %83, align 8, !dbg !3843, !tbaa !687
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3843
  %86 = load i8*, i8** %85, align 8, !dbg !3843, !tbaa !687
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3843
  br label %146, !dbg !3844

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.102, i64 0, i64 0), i32 5) #10, !dbg !3845
  %90 = load i8*, i8** %4, align 8, !dbg !3845, !tbaa !687
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3845
  %92 = load i8*, i8** %91, align 8, !dbg !3845, !tbaa !687
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3845
  %94 = load i8*, i8** %93, align 8, !dbg !3845, !tbaa !687
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3845
  %96 = load i8*, i8** %95, align 8, !dbg !3845, !tbaa !687
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3845
  %98 = load i8*, i8** %97, align 8, !dbg !3845, !tbaa !687
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3845
  %100 = load i8*, i8** %99, align 8, !dbg !3845, !tbaa !687
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3845
  %102 = load i8*, i8** %101, align 8, !dbg !3845, !tbaa !687
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3845
  %104 = load i8*, i8** %103, align 8, !dbg !3845, !tbaa !687
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3845
  br label %146, !dbg !3846

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.103, i64 0, i64 0), i32 5) #10, !dbg !3847
  %108 = load i8*, i8** %4, align 8, !dbg !3847, !tbaa !687
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3847
  %110 = load i8*, i8** %109, align 8, !dbg !3847, !tbaa !687
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3847
  %112 = load i8*, i8** %111, align 8, !dbg !3847, !tbaa !687
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3847
  %114 = load i8*, i8** %113, align 8, !dbg !3847, !tbaa !687
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3847
  %116 = load i8*, i8** %115, align 8, !dbg !3847, !tbaa !687
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3847
  %118 = load i8*, i8** %117, align 8, !dbg !3847, !tbaa !687
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3847
  %120 = load i8*, i8** %119, align 8, !dbg !3847, !tbaa !687
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3847
  %122 = load i8*, i8** %121, align 8, !dbg !3847, !tbaa !687
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3847
  %124 = load i8*, i8** %123, align 8, !dbg !3847, !tbaa !687
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3847
  br label %146, !dbg !3848

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.104, i64 0, i64 0), i32 5) #10, !dbg !3849
  %128 = load i8*, i8** %4, align 8, !dbg !3849, !tbaa !687
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3849
  %130 = load i8*, i8** %129, align 8, !dbg !3849, !tbaa !687
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3849
  %132 = load i8*, i8** %131, align 8, !dbg !3849, !tbaa !687
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3849
  %134 = load i8*, i8** %133, align 8, !dbg !3849, !tbaa !687
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3849
  %136 = load i8*, i8** %135, align 8, !dbg !3849, !tbaa !687
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3849
  %138 = load i8*, i8** %137, align 8, !dbg !3849, !tbaa !687
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3849
  %140 = load i8*, i8** %139, align 8, !dbg !3849, !tbaa !687
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3849
  %142 = load i8*, i8** %141, align 8, !dbg !3849, !tbaa !687
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3849
  %144 = load i8*, i8** %143, align 8, !dbg !3849, !tbaa !687
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3849
  br label %146, !dbg !3850

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3851
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3852 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3856, metadata !680), !dbg !3862
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3857, metadata !680), !dbg !3863
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3858, metadata !680), !dbg !3864
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3859, metadata !680), !dbg !3865
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3860, metadata !680), !dbg !3866
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3861, metadata !680), !dbg !3867
  br label %6, !dbg !3868

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3861, metadata !680), !dbg !3867
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3870
  %9 = load i8*, i8** %8, align 8, !dbg !3870, !tbaa !687
  %10 = icmp eq i8* %9, null, !dbg !3872
  %11 = add i64 %7, 1, !dbg !3873
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3861, metadata !680), !dbg !3867
  br i1 %10, label %12, label %6, !dbg !3872, !llvm.loop !3874

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3876
  ret void, !dbg !3877
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3878 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3889, metadata !680), !dbg !3897
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3890, metadata !680), !dbg !3898
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3891, metadata !680), !dbg !3899
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3892, metadata !680), !dbg !3900
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3893, metadata !680), !dbg !3901
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3902
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3902
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3895, metadata !680), !dbg !3903
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3894, metadata !680), !dbg !3904
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3894, metadata !680), !dbg !3904
  %11 = load i32, i32* %8, align 8, !dbg !3905
  %12 = icmp ult i32 %11, 41, !dbg !3905
  br i1 %12, label %13, label %18, !dbg !3905

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3905
  %15 = sext i32 %11 to i64, !dbg !3905
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3905
  %17 = add i32 %11, 8, !dbg !3905
  store i32 %17, i32* %8, align 8, !dbg !3905
  br label %21, !dbg !3905

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3905
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3905
  store i8* %20, i8** %10, align 8, !dbg !3905
  br label %21, !dbg !3905

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3905
  %25 = load i8*, i8** %24, align 8, !dbg !3905
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3908
  store i8* %25, i8** %26, align 16, !dbg !3909, !tbaa !687
  %27 = icmp eq i8* %25, null, !dbg !3910
  br i1 %27, label %30, label %28, !dbg !3911

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3894, metadata !680), !dbg !3904
  %29 = icmp ult i32 %22, 41, !dbg !3905
  br i1 %29, label %35, label %32, !dbg !3905

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3912
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3913
  ret void, !dbg !3913

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3905
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3905
  store i8* %34, i8** %10, align 8, !dbg !3905
  br label %40, !dbg !3905

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3905
  %37 = sext i32 %22 to i64, !dbg !3905
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3905
  %39 = add i32 %22, 8, !dbg !3905
  store i32 %39, i32* %8, align 8, !dbg !3905
  br label %40, !dbg !3905

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3905
  %44 = load i8*, i8** %43, align 8, !dbg !3905
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3908
  store i8* %44, i8** %45, align 8, !dbg !3909, !tbaa !687
  %46 = icmp eq i8* %44, null, !dbg !3910
  br i1 %46, label %30, label %47, !dbg !3911

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3894, metadata !680), !dbg !3904
  %48 = icmp ult i32 %41, 41, !dbg !3905
  br i1 %48, label %52, label %49, !dbg !3905

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3905
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3905
  store i8* %51, i8** %10, align 8, !dbg !3905
  br label %57, !dbg !3905

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3905
  %54 = sext i32 %41 to i64, !dbg !3905
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3905
  %56 = add i32 %41, 8, !dbg !3905
  store i32 %56, i32* %8, align 8, !dbg !3905
  br label %57, !dbg !3905

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3905
  %61 = load i8*, i8** %60, align 8, !dbg !3905
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3908
  store i8* %61, i8** %62, align 16, !dbg !3909, !tbaa !687
  %63 = icmp eq i8* %61, null, !dbg !3910
  br i1 %63, label %30, label %64, !dbg !3911

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3894, metadata !680), !dbg !3904
  %65 = icmp ult i32 %58, 41, !dbg !3905
  br i1 %65, label %69, label %66, !dbg !3905

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3905
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3905
  store i8* %68, i8** %10, align 8, !dbg !3905
  br label %74, !dbg !3905

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3905
  %71 = sext i32 %58 to i64, !dbg !3905
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3905
  %73 = add i32 %58, 8, !dbg !3905
  store i32 %73, i32* %8, align 8, !dbg !3905
  br label %74, !dbg !3905

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3905
  %78 = load i8*, i8** %77, align 8, !dbg !3905
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3908
  store i8* %78, i8** %79, align 8, !dbg !3909, !tbaa !687
  %80 = icmp eq i8* %78, null, !dbg !3910
  br i1 %80, label %30, label %81, !dbg !3911

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3894, metadata !680), !dbg !3904
  %82 = icmp ult i32 %75, 41, !dbg !3905
  br i1 %82, label %86, label %83, !dbg !3905

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3905
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3905
  store i8* %85, i8** %10, align 8, !dbg !3905
  br label %91, !dbg !3905

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3905
  %88 = sext i32 %75 to i64, !dbg !3905
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3905
  %90 = add i32 %75, 8, !dbg !3905
  store i32 %90, i32* %8, align 8, !dbg !3905
  br label %91, !dbg !3905

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3905
  %95 = load i8*, i8** %94, align 8, !dbg !3905
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3908
  store i8* %95, i8** %96, align 16, !dbg !3909, !tbaa !687
  %97 = icmp eq i8* %95, null, !dbg !3910
  br i1 %97, label %30, label %98, !dbg !3911

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3894, metadata !680), !dbg !3904
  %99 = icmp ult i32 %92, 41, !dbg !3905
  br i1 %99, label %103, label %100, !dbg !3905

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3905
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3905
  store i8* %102, i8** %10, align 8, !dbg !3905
  br label %108, !dbg !3905

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3905
  %105 = sext i32 %92 to i64, !dbg !3905
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3905
  %107 = add i32 %92, 8, !dbg !3905
  store i32 %107, i32* %8, align 8, !dbg !3905
  br label %108, !dbg !3905

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3905
  %111 = load i8*, i8** %110, align 8, !dbg !3905
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3908
  store i8* %111, i8** %112, align 8, !dbg !3909, !tbaa !687
  %113 = icmp eq i8* %111, null, !dbg !3910
  br i1 %113, label %30, label %114, !dbg !3911

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3894, metadata !680), !dbg !3904
  %115 = load i8*, i8** %10, align 8, !dbg !3905
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3905
  store i8* %116, i8** %10, align 8, !dbg !3905
  %117 = bitcast i8* %115 to i8**, !dbg !3905
  %118 = load i8*, i8** %117, align 8, !dbg !3905
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3908
  store i8* %118, i8** %119, align 16, !dbg !3909, !tbaa !687
  %120 = icmp eq i8* %118, null, !dbg !3910
  br i1 %120, label %30, label %121, !dbg !3911

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3894, metadata !680), !dbg !3904
  %122 = load i8*, i8** %10, align 8, !dbg !3905
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3905
  store i8* %123, i8** %10, align 8, !dbg !3905
  %124 = bitcast i8* %122 to i8**, !dbg !3905
  %125 = load i8*, i8** %124, align 8, !dbg !3905
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3908
  store i8* %125, i8** %126, align 8, !dbg !3909, !tbaa !687
  %127 = icmp eq i8* %125, null, !dbg !3910
  br i1 %127, label %30, label %128, !dbg !3911

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3894, metadata !680), !dbg !3904
  %129 = load i8*, i8** %10, align 8, !dbg !3905
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3905
  store i8* %130, i8** %10, align 8, !dbg !3905
  %131 = bitcast i8* %129 to i8**, !dbg !3905
  %132 = load i8*, i8** %131, align 8, !dbg !3905
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3908
  store i8* %132, i8** %133, align 16, !dbg !3909, !tbaa !687
  %134 = icmp eq i8* %132, null, !dbg !3910
  br i1 %134, label %30, label %135, !dbg !3911

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3894, metadata !680), !dbg !3904
  %136 = load i8*, i8** %10, align 8, !dbg !3905
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3905
  store i8* %137, i8** %10, align 8, !dbg !3905
  %138 = bitcast i8* %136 to i8**, !dbg !3905
  %139 = load i8*, i8** %138, align 8, !dbg !3905
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3908
  store i8* %139, i8** %140, align 8, !dbg !3909, !tbaa !687
  %141 = icmp eq i8* %139, null, !dbg !3910
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3894, metadata !680), !dbg !3904
  %142 = select i1 %141, i64 9, i64 10, !dbg !3911
  br label %30, !dbg !3911
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3914 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3918, metadata !680), !dbg !3928
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3919, metadata !680), !dbg !3929
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3920, metadata !680), !dbg !3930
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3921, metadata !680), !dbg !3931
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3932
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3932
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3922, metadata !680), !dbg !3933
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3934
  call void @llvm.va_start(i8* nonnull %6), !dbg !3934
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3935
  call void @llvm.va_end(i8* nonnull %6), !dbg !3936
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3937
  ret void, !dbg !3937
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3938 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.107, i64 0, i64 0), i32 5) #10, !dbg !3939
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.108, i64 0, i64 0)) #10, !dbg !3939
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.109, i64 0, i64 0), i32 5) #10, !dbg !3940
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.110, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.111, i64 0, i64 0)) #10, !dbg !3940
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.112, i64 0, i64 0), i32 5) #10, !dbg !3941
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3941, !tbaa !687
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3941
  ret void, !dbg !3942
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3943 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3945, metadata !680), !dbg !3947
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3946, metadata !680), !dbg !3948
  %3 = udiv i64 9223372036854775807, %1, !dbg !3949
  %4 = icmp ult i64 %3, %0, !dbg !3949
  br i1 %4, label %5, label %6, !dbg !3951

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3952
  unreachable, !dbg !3952

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3953
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3954, metadata !680) #10, !dbg !3961
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3963
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3960, metadata !680) #10, !dbg !3964
  %9 = icmp eq i8* %8, null, !dbg !3965
  %10 = icmp ne i64 %7, 0, !dbg !3967
  %11 = and i1 %10, %9, !dbg !3968
  br i1 %11, label %12, label %13, !dbg !3968

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3969
  unreachable, !dbg !3969

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3970
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3955 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3954, metadata !680), !dbg !3971
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3972
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3960, metadata !680), !dbg !3973
  %3 = icmp eq i8* %2, null, !dbg !3974
  %4 = icmp ne i64 %0, 0, !dbg !3975
  %5 = and i1 %4, %3, !dbg !3976
  br i1 %5, label %6, label %7, !dbg !3976

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3977
  unreachable, !dbg !3977

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3978
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3979 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3981, metadata !680), !dbg !3984
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3982, metadata !680), !dbg !3985
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3983, metadata !680), !dbg !3986
  %4 = udiv i64 9223372036854775807, %2, !dbg !3987
  %5 = icmp ult i64 %4, %1, !dbg !3987
  br i1 %5, label %6, label %7, !dbg !3989

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3990
  unreachable, !dbg !3990

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3991
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3992, metadata !680) #10, !dbg !3998
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3997, metadata !680) #10, !dbg !4000
  %9 = icmp eq i64 %8, 0, !dbg !4001
  %10 = icmp ne i8* %0, null, !dbg !4003
  %11 = and i1 %10, %9, !dbg !4004
  br i1 %11, label %12, label %13, !dbg !4004

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !4005
  br label %19, !dbg !4007

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4008
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3992, metadata !680) #10, !dbg !3998
  %15 = icmp eq i8* %14, null, !dbg !4009
  %16 = icmp ne i64 %8, 0, !dbg !4011
  %17 = and i1 %16, %15, !dbg !4012
  br i1 %17, label %18, label %19, !dbg !4012

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4013
  unreachable, !dbg !4013

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4014
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3993 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3992, metadata !680), !dbg !4015
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3997, metadata !680), !dbg !4016
  %3 = icmp eq i64 %1, 0, !dbg !4017
  %4 = icmp ne i8* %0, null, !dbg !4018
  %5 = and i1 %4, %3, !dbg !4019
  br i1 %5, label %6, label %7, !dbg !4019

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4020
  br label %13, !dbg !4021

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4022
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3992, metadata !680), !dbg !4015
  %9 = icmp eq i8* %8, null, !dbg !4023
  %10 = icmp ne i64 %1, 0, !dbg !4024
  %11 = and i1 %10, %9, !dbg !4025
  br i1 %11, label %12, label %13, !dbg !4025

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4026
  unreachable, !dbg !4026

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4027
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !625 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !630, metadata !680), !dbg !4028
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !631, metadata !680), !dbg !4029
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !632, metadata !680), !dbg !4030
  %4 = load i64, i64* %1, align 8, !dbg !4031, !tbaa !1252
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !633, metadata !680), !dbg !4032
  %5 = icmp eq i8* %0, null, !dbg !4033
  br i1 %5, label %6, label %13, !dbg !4035

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4036
  br i1 %7, label %8, label %17, !dbg !4039

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4040
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !633, metadata !680), !dbg !4032
  %10 = icmp ugt i64 %2, 128, !dbg !4042
  %11 = zext i1 %10 to i64, !dbg !4042
  %12 = add nuw nsw i64 %9, %11, !dbg !4043
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !633, metadata !680), !dbg !4032
  br label %17, !dbg !4044

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4045
  %15 = icmp ugt i64 %14, %4, !dbg !4048
  br i1 %15, label %20, label %16, !dbg !4049

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4050
  unreachable, !dbg !4050

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !633, metadata !680), !dbg !4032
  store i64 %18, i64* %1, align 8, !dbg !4051, !tbaa !1252
  %19 = mul i64 %18, %2, !dbg !4052
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3992, metadata !680) #10, !dbg !4053
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3997, metadata !680) #10, !dbg !4055
  br label %27, !dbg !4056

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4057
  %22 = add i64 %4, 1, !dbg !4058
  %23 = add i64 %22, %21, !dbg !4059
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !633, metadata !680), !dbg !4032
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !633, metadata !680), !dbg !4032
  store i64 %23, i64* %1, align 8, !dbg !4051, !tbaa !1252
  %24 = mul i64 %23, %2, !dbg !4052
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3992, metadata !680) #10, !dbg !4053
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3997, metadata !680) #10, !dbg !4055
  %25 = icmp eq i64 %24, 0, !dbg !4060
  br i1 %25, label %26, label %27, !dbg !4056

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !4061
  br label %34, !dbg !4062

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !4063
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3992, metadata !680) #10, !dbg !4053
  %30 = icmp eq i8* %29, null, !dbg !4064
  %31 = icmp ne i64 %28, 0, !dbg !4065
  %32 = and i1 %31, %30, !dbg !4066
  br i1 %32, label %33, label %34, !dbg !4066

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !4067
  unreachable, !dbg !4067

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4068
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4069 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4071, metadata !680), !dbg !4072
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3954, metadata !680) #10, !dbg !4073
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4075
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3960, metadata !680) #10, !dbg !4076
  %3 = icmp eq i8* %2, null, !dbg !4077
  %4 = icmp ne i64 %0, 0, !dbg !4078
  %5 = and i1 %4, %3, !dbg !4079
  br i1 %5, label %6, label %7, !dbg !4079

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4080
  unreachable, !dbg !4080

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4081
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4082 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4086, metadata !680), !dbg !4088
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4087, metadata !680), !dbg !4089
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !630, metadata !680) #10, !dbg !4090
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !631, metadata !680) #10, !dbg !4092
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !632, metadata !680) #10, !dbg !4093
  %3 = load i64, i64* %1, align 8, !dbg !4094, !tbaa !1252
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !633, metadata !680) #10, !dbg !4095
  %4 = icmp eq i8* %0, null, !dbg !4096
  br i1 %4, label %5, label %8, !dbg !4097

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4098
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !633, metadata !680) #10, !dbg !4095
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !633, metadata !680) #10, !dbg !4095
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4099
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !633, metadata !680) #10, !dbg !4095
  store i64 %7, i64* %1, align 8, !dbg !4100, !tbaa !1252
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3992, metadata !680) #10, !dbg !4101
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3997, metadata !680) #10, !dbg !4103
  br label %17, !dbg !4104

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4105
  br i1 %9, label %11, label %10, !dbg !4106

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !4107
  unreachable, !dbg !4107

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4108
  %13 = add i64 %3, 1, !dbg !4109
  %14 = add i64 %13, %12, !dbg !4110
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !633, metadata !680) #10, !dbg !4095
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !633, metadata !680) #10, !dbg !4095
  store i64 %14, i64* %1, align 8, !dbg !4100, !tbaa !1252
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3992, metadata !680) #10, !dbg !4101
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3997, metadata !680) #10, !dbg !4103
  %15 = icmp eq i64 %14, 0, !dbg !4111
  br i1 %15, label %16, label %17, !dbg !4104

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !4112
  br label %24, !dbg !4113

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !4114
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3992, metadata !680) #10, !dbg !4101
  %20 = icmp eq i8* %19, null, !dbg !4115
  %21 = icmp ne i64 %18, 0, !dbg !4116
  %22 = and i1 %21, %20, !dbg !4117
  br i1 %22, label %23, label %24, !dbg !4117

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !4118
  unreachable, !dbg !4118

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4119
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4120 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4122, metadata !680), !dbg !4123
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3954, metadata !680) #10, !dbg !4124
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4126
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3960, metadata !680) #10, !dbg !4127
  %3 = icmp eq i8* %2, null, !dbg !4128
  %4 = icmp ne i64 %0, 0, !dbg !4129
  %5 = and i1 %4, %3, !dbg !4130
  br i1 %5, label %6, label %7, !dbg !4130

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4131
  unreachable, !dbg !4131

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4132
  ret i8* %2, !dbg !4133
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4134 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4136, metadata !680), !dbg !4139
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4137, metadata !680), !dbg !4140
  %3 = udiv i64 9223372036854775807, %1, !dbg !4141
  %4 = icmp ult i64 %3, %0, !dbg !4141
  br i1 %4, label %8, label %5, !dbg !4143

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4144
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4138, metadata !680), !dbg !4145
  %7 = icmp eq i8* %6, null, !dbg !4146
  br i1 %7, label %8, label %9, !dbg !4147

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4148
  unreachable, !dbg !4148

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4149
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4150 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4156, metadata !680), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4157, metadata !680), !dbg !4159
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3954, metadata !680) #10, !dbg !4160
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4162
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3960, metadata !680) #10, !dbg !4163
  %4 = icmp eq i8* %3, null, !dbg !4164
  %5 = icmp ne i64 %1, 0, !dbg !4165
  %6 = and i1 %5, %4, !dbg !4166
  br i1 %6, label %7, label %8, !dbg !4166

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4167
  unreachable, !dbg !4167

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4168
  ret i8* %3, !dbg !4169
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4170 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4172, metadata !680), !dbg !4173
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4174
  %3 = add i64 %2, 1, !dbg !4175
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4156, metadata !680) #10, !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4157, metadata !680) #10, !dbg !4178
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3954, metadata !680) #10, !dbg !4179
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4181
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3960, metadata !680) #10, !dbg !4182
  %5 = icmp eq i8* %4, null, !dbg !4183
  %6 = icmp ne i64 %3, 0, !dbg !4184
  %7 = and i1 %6, %5, !dbg !4185
  br i1 %7, label %8, label %9, !dbg !4185

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4186
  unreachable, !dbg !4186

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !4187
  ret i8* %4, !dbg !4188
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4189 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4191, !tbaa !1020
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.123, i64 0, i64 0), i32 5) #10, !dbg !4192
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i64 0, i64 0), i8* %2) #10, !dbg !4193
  tail call void @abort() #15, !dbg !4194
  unreachable, !dbg !4194
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !4195 {
  %8 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4200, metadata !680), !dbg !4210
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4201, metadata !680), !dbg !4211
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4202, metadata !680), !dbg !4212
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4203, metadata !680), !dbg !4213
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4204, metadata !680), !dbg !4214
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4205, metadata !680), !dbg !4215
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4206, metadata !680), !dbg !4216
  %9 = bitcast i64* %8 to i8*, !dbg !4217
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10, !dbg !4217
  tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !4209, metadata !680), !dbg !4218
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #10, !dbg !4219
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !4207, metadata !680), !dbg !4220
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %22
    i32 3, label %24
  ], !dbg !4221

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #17, !dbg !4222
  br label %26, !dbg !4221

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !4225, !tbaa !1252
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4209, metadata !680), !dbg !4218
  %15 = icmp ult i64 %14, %2, !dbg !4229
  %16 = icmp ugt i64 %14, %3, !dbg !4230
  %17 = or i1 %15, %16, !dbg !4231
  br i1 %17, label %18, label %35, !dbg !4231

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4207, metadata !680), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4209, metadata !680), !dbg !4218
  %19 = icmp ugt i64 %14, 1073741823, !dbg !4232
  %20 = tail call i32* @__errno_location() #17, !dbg !4235
  %21 = select i1 %19, i32 75, i32 34, !dbg !4236
  store i32 %21, i32* %20, align 4, !tbaa !1020
  br label %26, !dbg !4237

; <label>:22:                                     ; preds = %7
  %23 = tail call i32* @__errno_location() #17, !dbg !4238
  store i32 75, i32* %23, align 4, !dbg !4240, !tbaa !1020
  br label %26, !dbg !4238

; <label>:24:                                     ; preds = %7
  %25 = tail call i32* @__errno_location() #17, !dbg !4241
  store i32 0, i32* %25, align 4, !dbg !4243, !tbaa !1020
  br label %26, !dbg !4241

; <label>:26:                                     ; preds = %11, %18, %22, %24
  %27 = phi i32* [ %12, %11 ], [ %20, %18 ], [ %23, %22 ], [ %25, %24 ], !dbg !4222
  %28 = icmp eq i32 %6, 0, !dbg !4244
  %29 = select i1 %28, i32 1, i32 %6, !dbg !4244
  %30 = load i32, i32* %27, align 4, !dbg !4222, !tbaa !1020
  %31 = icmp eq i32 %30, 22, !dbg !4245
  %32 = select i1 %31, i32 0, i32 %30, !dbg !4222
  %33 = call i8* @quote(i8* %0) #10, !dbg !4246
  call void (i32, i32, i8*, ...) @error(i32 %29, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i64 0, i64 0), i8* %5, i8* %33) #10, !dbg !4247
  %34 = load i64, i64* %8, align 8, !dbg !4248, !tbaa !1252
  br label %35, !dbg !4249

; <label>:35:                                     ; preds = %13, %26
  %36 = phi i64 [ %14, %13 ], [ %34, %26 ], !dbg !4248
  call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !4209, metadata !680), !dbg !4218
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10, !dbg !4250
  ret i64 %36, !dbg !4251
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !4252 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4256, metadata !680), !dbg !4262
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4257, metadata !680), !dbg !4263
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4258, metadata !680), !dbg !4264
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4259, metadata !680), !dbg !4265
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4260, metadata !680), !dbg !4266
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !4261, metadata !680), !dbg !4267
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4268
  ret i64 %7, !dbg !4269
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !4270 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4276, metadata !680), !dbg !4294
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4277, metadata !680), !dbg !4295
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4278, metadata !680), !dbg !4296
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !4279, metadata !680), !dbg !4297
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4280, metadata !680), !dbg !4298
  %7 = bitcast i8** %6 to i8*, !dbg !4299
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !4299
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4284, metadata !680), !dbg !4300
  %8 = icmp ult i32 %2, 37, !dbg !4301
  br i1 %8, label %10, label %9, !dbg !4301

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.130, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.131, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15, !dbg !4301
  unreachable, !dbg !4301

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4304
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4282, metadata !680), !dbg !4305
  %12 = tail call i32* @__errno_location() #17, !dbg !4306
  store i32 0, i32* %12, align 4, !dbg !4307, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4285, metadata !680), !dbg !4308
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4288, metadata !4309), !dbg !4310
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !4311
  %14 = load i16*, i16** %13, align 8, !tbaa !687
  br label %15, !dbg !4312

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !928
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !4288, metadata !680), !dbg !4310
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4285, metadata !680), !dbg !4308
  %18 = zext i8 %17 to i64, !dbg !4311
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4311
  %20 = load i16, i16* %19, align 2, !dbg !4311, !tbaa !2514
  %21 = and i16 %20, 8192, !dbg !4311
  %22 = icmp eq i16 %21, 0, !dbg !4312
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4313
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4285, metadata !680), !dbg !4308
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4288, metadata !4309), !dbg !4310
  br i1 %22, label %24, label %15, !dbg !4312, !llvm.loop !4314

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4304
  %26 = icmp eq i8 %17, 45, !dbg !4316
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4318, metadata !680) #10, !dbg !4328
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4326, metadata !680) #10, !dbg !4328
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4327, metadata !680) #10, !dbg !4328
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #10, !dbg !4330
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4283, metadata !680), !dbg !4331
  %29 = load i8*, i8** %25, align 8, !dbg !4332, !tbaa !687
  %30 = icmp eq i8* %29, %0, !dbg !4334
  br i1 %30, label %31, label %40, !dbg !4335

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4336
  br i1 %32, label %265, label %33, !dbg !4339

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4340, !tbaa !928
  %35 = icmp eq i8 %34, 0, !dbg !4340
  br i1 %35, label %265, label %36, !dbg !4341

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4340
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !4342
  %39 = icmp eq i8* %38, null, !dbg !4342
  br i1 %39, label %265, label %47, !dbg !4343

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4344, !tbaa !1020
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4346

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4284, metadata !680), !dbg !4300
  br label %43, !dbg !4347

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !4284, metadata !680), !dbg !4300
  %45 = icmp eq i8* %4, null, !dbg !4349
  br i1 %45, label %46, label %47, !dbg !4351

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4283, metadata !680), !dbg !4331
  store i64 %28, i64* %3, align 8, !dbg !4352, !tbaa !1252
  br label %265, !dbg !4354

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4355, !tbaa !928
  %51 = sext i8 %50 to i32, !dbg !4355
  %52 = icmp eq i8 %50, 0, !dbg !4356
  br i1 %52, label %262, label %53, !dbg !4357

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4289, metadata !680), !dbg !4358
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4292, metadata !680), !dbg !4359
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #14, !dbg !4360
  %55 = icmp eq i8* %54, null, !dbg !4360
  br i1 %55, label %56, label %58, !dbg !4362

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4283, metadata !680), !dbg !4331
  store i64 %49, i64* %3, align 8, !dbg !4363, !tbaa !1252
  %57 = or i32 %48, 2, !dbg !4365
  br label %265, !dbg !4366

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
  ], !dbg !4367

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !4368
  %61 = icmp eq i8* %60, null, !dbg !4368
  br i1 %61, label %72, label %62, !dbg !4371

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4372
  %64 = load i8, i8* %63, align 1, !dbg !4372, !tbaa !928
  %65 = sext i8 %64 to i32, !dbg !4372
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4373

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4374
  %68 = load i8, i8* %67, align 1, !dbg !4374, !tbaa !928
  %69 = icmp eq i8 %68, 66, !dbg !4377
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4292, metadata !680), !dbg !4359
  %70 = select i1 %69, i64 3, i64 1, !dbg !4378
  br label %72, !dbg !4378

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !4289, metadata !680), !dbg !4358
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4292, metadata !680), !dbg !4359
  br label %72, !dbg !4379

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
  ], !dbg !4380

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !4381, metadata !680), !dbg !4387
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4390
  %77 = shl i64 %49, 9, !dbg !4392
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4393
  %79 = zext i1 %76 to i32, !dbg !4393
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !4293, metadata !680), !dbg !4394
  br label %253, !dbg !4395

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4381, metadata !680), !dbg !4396
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4398
  %82 = shl i64 %49, 10, !dbg !4399
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4400
  %84 = zext i1 %81 to i32, !dbg !4400
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !4293, metadata !680), !dbg !4394
  br label %253, !dbg !4401

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4412
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4412
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4410
  %86 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4412
  %87 = icmp ult i64 %86, %49, !dbg !4413
  %88 = mul i64 %49, %73, !dbg !4415
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4416
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4412
  %90 = icmp ult i64 %86, %89, !dbg !4413
  %91 = mul i64 %89, %73, !dbg !4415
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4416
  %93 = or i1 %87, %90, !dbg !4417
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4412
  %94 = icmp ult i64 %86, %92, !dbg !4413
  %95 = mul i64 %92, %73, !dbg !4415
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4416
  %97 = or i1 %93, %94, !dbg !4417
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4412
  %98 = icmp ult i64 %86, %96, !dbg !4413
  %99 = mul i64 %96, %73, !dbg !4415
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4416
  %101 = or i1 %97, %98, !dbg !4417
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4412
  %102 = icmp ult i64 %86, %100, !dbg !4413
  %103 = mul i64 %100, %73, !dbg !4415
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4416
  %105 = or i1 %101, %102, !dbg !4417
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4412
  %106 = icmp ult i64 %86, %104, !dbg !4413
  %107 = mul i64 %104, %73, !dbg !4415
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4416
  %109 = or i1 %105, %106, !dbg !4417
  %110 = zext i1 %109 to i32, !dbg !4417
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4410
  br label %253, !dbg !4418

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4402, metadata !680), !dbg !4419
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4421
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4421
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4402, metadata !680), !dbg !4419
  %112 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4402, metadata !680), !dbg !4419
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4421
  %113 = icmp ult i64 %112, %49, !dbg !4422
  %114 = mul i64 %49, %73, !dbg !4424
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4425
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4402, metadata !680), !dbg !4419
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4402, metadata !680), !dbg !4419
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4402, metadata !680), !dbg !4419
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4421
  %116 = icmp ult i64 %112, %115, !dbg !4422
  %117 = mul i64 %115, %73, !dbg !4424
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4425
  %119 = or i1 %113, %116, !dbg !4426
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4402, metadata !680), !dbg !4419
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4402, metadata !680), !dbg !4419
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4402, metadata !680), !dbg !4419
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4421
  %120 = icmp ult i64 %112, %118, !dbg !4422
  %121 = mul i64 %118, %73, !dbg !4424
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4425
  %123 = or i1 %119, %120, !dbg !4426
  %124 = zext i1 %123 to i32, !dbg !4426
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4402, metadata !680), !dbg !4419
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4402, metadata !680), !dbg !4419
  br label %253, !dbg !4418

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4402, metadata !680), !dbg !4427
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4429
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4429
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4402, metadata !680), !dbg !4427
  %126 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4402, metadata !680), !dbg !4427
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4429
  %127 = icmp ult i64 %126, %49, !dbg !4430
  %128 = mul i64 %49, %73, !dbg !4432
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4433
  %130 = zext i1 %127 to i32, !dbg !4433
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4409, metadata !680), !dbg !4429
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4409, metadata !680), !dbg !4429
  br label %253, !dbg !4418

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4402, metadata !680), !dbg !4434
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4436
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4436
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4402, metadata !680), !dbg !4434
  %132 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4402, metadata !680), !dbg !4434
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4436
  %133 = icmp ult i64 %132, %49, !dbg !4437
  %134 = mul i64 %49, %73, !dbg !4439
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4440
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4402, metadata !680), !dbg !4434
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4402, metadata !680), !dbg !4434
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4402, metadata !680), !dbg !4434
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4436
  %136 = icmp ult i64 %132, %135, !dbg !4437
  %137 = mul i64 %135, %73, !dbg !4439
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4440
  %139 = or i1 %133, %136, !dbg !4441
  %140 = zext i1 %139 to i32, !dbg !4441
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4402, metadata !680), !dbg !4434
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4402, metadata !680), !dbg !4434
  br label %253, !dbg !4418

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4444
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4444
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4442
  %142 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4444
  %143 = icmp ult i64 %142, %49, !dbg !4445
  %144 = mul i64 %49, %73, !dbg !4447
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4448
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4402, metadata !680), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4402, metadata !680), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4444
  %146 = icmp ult i64 %142, %145, !dbg !4445
  %147 = mul i64 %145, %73, !dbg !4447
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4448
  %149 = or i1 %143, %146, !dbg !4449
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4402, metadata !680), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4402, metadata !680), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4444
  %150 = icmp ult i64 %142, %148, !dbg !4445
  %151 = mul i64 %148, %73, !dbg !4447
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4448
  %153 = or i1 %149, %150, !dbg !4449
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4402, metadata !680), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4402, metadata !680), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4444
  %154 = icmp ult i64 %142, %152, !dbg !4445
  %155 = mul i64 %152, %73, !dbg !4447
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4448
  %157 = or i1 %153, %154, !dbg !4449
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4402, metadata !680), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4402, metadata !680), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4402, metadata !680), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4444
  %158 = icmp ult i64 %142, %156, !dbg !4445
  %159 = mul i64 %156, %73, !dbg !4447
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4448
  %161 = or i1 %157, %158, !dbg !4449
  %162 = zext i1 %161 to i32, !dbg !4449
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4402, metadata !680), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4402, metadata !680), !dbg !4442
  br label %253, !dbg !4418

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4402, metadata !680), !dbg !4450
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4452
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4452
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4402, metadata !680), !dbg !4450
  %164 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4402, metadata !680), !dbg !4450
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4452
  %165 = icmp ult i64 %164, %49, !dbg !4453
  %166 = mul i64 %49, %73, !dbg !4455
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4456
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4402, metadata !680), !dbg !4450
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4402, metadata !680), !dbg !4450
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4402, metadata !680), !dbg !4450
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4452
  %168 = icmp ult i64 %164, %167, !dbg !4453
  %169 = mul i64 %167, %73, !dbg !4455
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4456
  %171 = or i1 %165, %168, !dbg !4457
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4402, metadata !680), !dbg !4450
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4402, metadata !680), !dbg !4450
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4402, metadata !680), !dbg !4450
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4452
  %172 = icmp ult i64 %164, %170, !dbg !4453
  %173 = mul i64 %170, %73, !dbg !4455
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4456
  %175 = or i1 %171, %172, !dbg !4457
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4402, metadata !680), !dbg !4450
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4402, metadata !680), !dbg !4450
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4402, metadata !680), !dbg !4450
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4452
  %176 = icmp ult i64 %164, %174, !dbg !4453
  %177 = mul i64 %174, %73, !dbg !4455
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4456
  %179 = or i1 %175, %176, !dbg !4457
  %180 = zext i1 %179 to i32, !dbg !4457
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4402, metadata !680), !dbg !4450
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4402, metadata !680), !dbg !4450
  br label %253, !dbg !4418

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4381, metadata !680), !dbg !4458
  %182 = icmp slt i64 %49, 0, !dbg !4460
  %183 = shl i64 %49, 1, !dbg !4461
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4462
  %185 = lshr i64 %49, 63, !dbg !4462
  %186 = trunc i64 %185 to i32, !dbg !4462
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !4293, metadata !680), !dbg !4394
  br label %253, !dbg !4463

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4466
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4466
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4402, metadata !680), !dbg !4464
  %188 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4466
  %189 = icmp ult i64 %188, %49, !dbg !4467
  %190 = mul i64 %49, %73, !dbg !4469
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4470
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4466
  %192 = icmp ult i64 %188, %191, !dbg !4467
  %193 = mul i64 %191, %73, !dbg !4469
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4470
  %195 = or i1 %189, %192, !dbg !4471
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4466
  %196 = icmp ult i64 %188, %194, !dbg !4467
  %197 = mul i64 %194, %73, !dbg !4469
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4470
  %199 = or i1 %195, %196, !dbg !4471
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4466
  %200 = icmp ult i64 %188, %198, !dbg !4467
  %201 = mul i64 %198, %73, !dbg !4469
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4470
  %203 = or i1 %199, %200, !dbg !4471
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4466
  %204 = icmp ult i64 %188, %202, !dbg !4467
  %205 = mul i64 %202, %73, !dbg !4469
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4470
  %207 = or i1 %203, %204, !dbg !4471
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4466
  %208 = icmp ult i64 %188, %206, !dbg !4467
  %209 = mul i64 %206, %73, !dbg !4469
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4470
  %211 = or i1 %207, %208, !dbg !4471
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4466
  %212 = icmp ult i64 %188, %210, !dbg !4467
  %213 = mul i64 %210, %73, !dbg !4469
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4470
  %215 = or i1 %211, %212, !dbg !4471
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4466
  %216 = icmp ult i64 %188, %214, !dbg !4467
  %217 = mul i64 %214, %73, !dbg !4469
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4470
  %219 = or i1 %215, %216, !dbg !4471
  %220 = zext i1 %219 to i32, !dbg !4471
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4464
  br label %253, !dbg !4418

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4474
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4474
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4472
  %222 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4474
  %223 = icmp ult i64 %222, %49, !dbg !4475
  %224 = mul i64 %49, %73, !dbg !4477
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4478
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4474
  %226 = icmp ult i64 %222, %225, !dbg !4475
  %227 = mul i64 %225, %73, !dbg !4477
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4478
  %229 = or i1 %223, %226, !dbg !4479
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4474
  %230 = icmp ult i64 %222, %228, !dbg !4475
  %231 = mul i64 %228, %73, !dbg !4477
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4478
  %233 = or i1 %229, %230, !dbg !4479
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4474
  %234 = icmp ult i64 %222, %232, !dbg !4475
  %235 = mul i64 %232, %73, !dbg !4477
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4478
  %237 = or i1 %233, %234, !dbg !4479
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4474
  %238 = icmp ult i64 %222, %236, !dbg !4475
  %239 = mul i64 %236, %73, !dbg !4477
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4478
  %241 = or i1 %237, %238, !dbg !4479
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4474
  %242 = icmp ult i64 %222, %240, !dbg !4475
  %243 = mul i64 %240, %73, !dbg !4477
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4478
  %245 = or i1 %241, %242, !dbg !4479
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4409, metadata !680), !dbg !4474
  %246 = icmp ult i64 %222, %244, !dbg !4475
  %247 = mul i64 %244, %73, !dbg !4477
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4478
  %249 = or i1 %245, %246, !dbg !4479
  %250 = zext i1 %249 to i32, !dbg !4479
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4402, metadata !680), !dbg !4472
  br label %253, !dbg !4418

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4283, metadata !680), !dbg !4331
  store i64 %49, i64* %3, align 8, !dbg !4480, !tbaa !1252
  %252 = or i32 %48, 2, !dbg !4481
  br label %265, !dbg !4482

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !4293, metadata !680), !dbg !4394
  %256 = or i32 %255, %48, !dbg !4418
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !4284, metadata !680), !dbg !4300
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4483
  store i8* %257, i8** %25, align 8, !dbg !4483, !tbaa !687
  %258 = load i8, i8* %257, align 1, !dbg !4484, !tbaa !928
  %259 = icmp eq i8 %258, 0, !dbg !4484
  %260 = or i32 %256, 2, !dbg !4486
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !4284, metadata !680), !dbg !4300
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4487
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4284, metadata !680), !dbg !4300
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4284, metadata !680), !dbg !4300
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !4284, metadata !680), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !4283, metadata !680), !dbg !4331
  store i64 %263, i64* %3, align 8, !dbg !4488, !tbaa !1252
  br label %265, !dbg !4489

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !4490
  ret i32 %266, !dbg !4490
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4491 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4494, metadata !680), !dbg !4500
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4495, metadata !680), !dbg !4501
  %3 = icmp eq i64 %0, 0, !dbg !4502
  %4 = icmp eq i64 %1, 0, !dbg !4503
  %5 = or i1 %3, %4, !dbg !4504
  br i1 %5, label %12, label %6, !dbg !4504

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4505
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4497, metadata !680), !dbg !4506
  %8 = udiv i64 %7, %1, !dbg !4507
  %9 = icmp eq i64 %8, %0, !dbg !4509
  br i1 %9, label %12, label %10, !dbg !4510

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4511
  store i32 12, i32* %11, align 4, !dbg !4513, !tbaa !1020
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4494, metadata !680), !dbg !4500
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4495, metadata !680), !dbg !4501
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4514
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4496, metadata !680), !dbg !4515
  br label %16, !dbg !4516

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4517
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4518 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4535, metadata !680), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4536, metadata !680), !dbg !4545
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4537, metadata !680), !dbg !4546
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4538, metadata !680), !dbg !4547
  %6 = bitcast i32* %5 to i8*, !dbg !4548
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4548
  %7 = icmp eq i32* %0, null, !dbg !4549
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4535, metadata !680), !dbg !4544
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4551
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4535, metadata !680), !dbg !4544
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4552
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4539, metadata !680), !dbg !4553
  %10 = icmp ugt i64 %9, -3, !dbg !4554
  %11 = icmp ne i64 %2, 0, !dbg !4555
  %12 = and i1 %11, %10, !dbg !4556
  br i1 %12, label %13, label %18, !dbg !4556

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4557
  br i1 %14, label %18, label %15, !dbg !4558

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4559, !tbaa !928
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4541, metadata !680), !dbg !4560
  %17 = zext i8 %16 to i32, !dbg !4561
  store i32 %17, i32* %8, align 4, !dbg !4562, !tbaa !1020
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4563
  ret i64 %19, !dbg !4563
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4564 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4609, metadata !680), !dbg !4613
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4614
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4615, metadata !680), !dbg !4619
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4621
  %4 = load i32, i32* %3, align 8, !dbg !4621, !tbaa !4622
  %5 = and i32 %4, 32, !dbg !4621
  %6 = icmp eq i32 %5, 0, !dbg !4624
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4625
  %8 = icmp ne i32 %7, 0, !dbg !4626
  br i1 %6, label %9, label %19, !dbg !4627

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4629
  %11 = xor i1 %8, true, !dbg !4630
  %12 = or i1 %10, %11, !dbg !4630
  %13 = sext i1 %8 to i32, !dbg !4630
  br i1 %12, label %22, label %14, !dbg !4630

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4631
  %16 = load i32, i32* %15, align 4, !dbg !4631, !tbaa !1020
  %17 = icmp ne i32 %16, 9, !dbg !4632
  %18 = sext i1 %17 to i32, !dbg !4633
  br label %22, !dbg !4633

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4634

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4636
  store i32 0, i32* %21, align 4, !dbg !4638, !tbaa !1020
  br label %22, !dbg !4636

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4639
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4640 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4645, metadata !680), !dbg !4648
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4646, metadata !680), !dbg !4649
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4650
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4647, metadata !680), !dbg !4651
  %3 = icmp eq i8* %2, null, !dbg !4652
  br i1 %3, label %11, label %4, !dbg !4654

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i64 0, i64 0)) #14, !dbg !4655
  %6 = icmp eq i32 %5, 0, !dbg !4660
  br i1 %6, label %10, label %7, !dbg !4661

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i64 0, i64 0)) #14, !dbg !4662
  %9 = icmp eq i32 %8, 0, !dbg !4663
  br i1 %9, label %10, label %11, !dbg !4664

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4646, metadata !680), !dbg !4649
  br label %11, !dbg !4665

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4666
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4667 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4673, metadata !680), !dbg !4747
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4740, metadata !680), !dbg !4750
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4751
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4671, metadata !680), !dbg !4752
  %4 = icmp eq i8* %3, null, !dbg !4753
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.144, i64 0, i64 0), i8* %3, !dbg !4755
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4671, metadata !680), !dbg !4752
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4756, !tbaa !687
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4687, metadata !680) #10, !dbg !4757
  %7 = icmp eq i8* %6, null, !dbg !4758
  br i1 %7, label %8, label %123, !dbg !4759

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.145, i64 0, i64 0)) #10, !dbg !4760
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4688, metadata !680) #10, !dbg !4761
  %10 = icmp eq i8* %9, null, !dbg !4762
  br i1 %10, label %14, label %11, !dbg !4764

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4765, !tbaa !928
  %13 = icmp eq i8 %12, 0, !dbg !4766
  br i1 %13, label %14, label %15, !dbg !4767

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4768

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.146, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4688, metadata !680) #10, !dbg !4761
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4769
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4691, metadata !680) #10, !dbg !4770
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4693, metadata !680) #10, !dbg !4771
  %18 = icmp eq i64 %17, 0, !dbg !4772
  br i1 %18, label %24, label %19, !dbg !4773

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4774
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4774
  %22 = load i8, i8* %21, align 1, !dbg !4774, !tbaa !928
  %23 = icmp ne i8 %22, 47, !dbg !4774
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4775
  %27 = add i64 %17, 14, !dbg !4776
  %28 = add i64 %27, %26, !dbg !4777
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4778
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4690, metadata !680) #10, !dbg !4779
  %30 = icmp eq i8* %29, null, !dbg !4780
  br i1 %30, label %121, label %31, !dbg !4780

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4781
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4784

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4785, !tbaa !928
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4787
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.147, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4788
  br label %37, !dbg !4789

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4787
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.147, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4788
  br label %37, !dbg !4789

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4790
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4695, metadata !680) #10, !dbg !4791
  %39 = icmp slt i32 %38, 0, !dbg !4792
  br i1 %39, label %119, label %40, !dbg !4793

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.148, i64 0, i64 0)) #10, !dbg !4794
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4696, metadata !680) #10, !dbg !4795
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4796
  br i1 %42, label %43, label %45, !dbg !4797

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !4798
  br label %119, !dbg !4800

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4737, metadata !680) #10, !dbg !4801
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4738, metadata !680) #10, !dbg !4802
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4803

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4804

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4737, metadata !680) #10, !dbg !4801
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4738, metadata !680) #10, !dbg !4802
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4804
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4805
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4806, metadata !680) #10, !dbg !4811
  %54 = load i8*, i8** %48, align 8, !dbg !4813, !tbaa !4814
  %55 = load i8*, i8** %49, align 8, !dbg !4813, !tbaa !4815
  %56 = icmp ult i8* %54, %55, !dbg !4813
  br i1 %56, label %59, label %57, !dbg !4813, !prof !4816

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4813
  br label %63, !dbg !4813

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4813
  store i8* %60, i8** %48, align 8, !dbg !4813, !tbaa !4814
  %61 = load i8, i8* %54, align 1, !dbg !4813, !tbaa !928
  %62 = zext i8 %61 to i32, !dbg !4813
  br label %63, !dbg !4813

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4813
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4739, metadata !680) #10, !dbg !4817
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4818, !llvm.loop !4819

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4824

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4806, metadata !680) #10, !dbg !4826
  %67 = load i8*, i8** %48, align 8, !dbg !4824, !tbaa !4814
  %68 = load i8*, i8** %49, align 8, !dbg !4824, !tbaa !4815
  %69 = icmp ult i8* %67, %68, !dbg !4824
  br i1 %69, label %72, label %70, !dbg !4824, !prof !4816

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4824
  br label %76, !dbg !4824

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4824
  store i8* %73, i8** %48, align 8, !dbg !4824, !tbaa !4814
  %74 = load i8, i8* %67, align 1, !dbg !4824, !tbaa !928
  %75 = zext i8 %74 to i32, !dbg !4824
  br label %76, !dbg !4824

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4824
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4739, metadata !680) #10, !dbg !4817
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4827, !llvm.loop !4828

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !4831
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.149, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !4832
  %81 = icmp slt i32 %80, 2, !dbg !4834
  br i1 %81, label %112, label %82, !dbg !4835

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4836
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4744, metadata !680) #10, !dbg !4837
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4838
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4745, metadata !680) #10, !dbg !4839
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4746, metadata !680) #10, !dbg !4840
  %85 = icmp eq i64 %51, 0, !dbg !4841
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4843

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4738, metadata !680) #10, !dbg !4802
  %90 = add i64 %87, 2, !dbg !4844
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !4846
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4737, metadata !680) #10, !dbg !4801
  br label %96, !dbg !4847

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4848
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4738, metadata !680) #10, !dbg !4802
  %94 = add i64 %93, 1, !dbg !4850
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !4851
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4737, metadata !680) #10, !dbg !4801
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4737, metadata !680) #10, !dbg !4801
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4738, metadata !680) #10, !dbg !4802
  %99 = icmp eq i8* %98, null, !dbg !4852
  br i1 %99, label %100, label %102, !dbg !4854

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4738, metadata !680) #10, !dbg !4802
  call void @free(i8* %52) #10, !dbg !4855
  br label %112, !dbg !4857

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4858
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4858
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4859
  %104 = xor i64 %84, -1, !dbg !4860
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4860
  %106 = xor i64 %83, -1, !dbg !4861
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4861
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4862, metadata !680) #10, !dbg !4870
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4869, metadata !680) #10, !dbg !4870
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !4872
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !4873
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4862, metadata !680) #10, !dbg !4874
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4869, metadata !680) #10, !dbg !4874
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !4876
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !4877
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4737, metadata !680) #10, !dbg !4801
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4738, metadata !680) #10, !dbg !4802
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4858
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4858
  br label %50, !dbg !4878, !llvm.loop !4828

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4858
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4858
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4879
  %116 = icmp eq i64 %113, 0, !dbg !4880
  br i1 %116, label %119, label %117, !dbg !4882

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4883
  store i8 0, i8* %118, align 1, !dbg !4885, !tbaa !928
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.144, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.144, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.144, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4687, metadata !680) #10, !dbg !4757
  call void @free(i8* %29) #10, !dbg !4886
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.144, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4687, metadata !680) #10, !dbg !4757
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4887, !tbaa !687
  br label %123, !dbg !4888

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4687, metadata !680) #10, !dbg !4757
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4672, metadata !680), !dbg !4889
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4672, metadata !680), !dbg !4889
  %125 = load i8, i8* %124, align 1, !dbg !4890, !tbaa !928
  %126 = icmp eq i8 %125, 0, !dbg !4892
  br i1 %126, label %152, label %127, !dbg !4893

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4894

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4672, metadata !680), !dbg !4889
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4894
  %132 = icmp eq i32 %131, 0, !dbg !4896
  br i1 %132, label %139, label %133, !dbg !4897

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4898
  br i1 %134, label %135, label %143, !dbg !4899

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4900
  %137 = load i8, i8* %136, align 1, !dbg !4900, !tbaa !928
  %138 = icmp eq i8 %137, 0, !dbg !4901
  br i1 %138, label %139, label %143, !dbg !4902

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4903
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4905
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4906
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4671, metadata !680), !dbg !4752
  br label %152, !dbg !4907

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4908
  %145 = add i64 %144, 1, !dbg !4909
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4910
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4672, metadata !680), !dbg !4889
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4911
  %148 = add i64 %147, 1, !dbg !4912
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4913
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4672, metadata !680), !dbg !4889
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4672, metadata !680), !dbg !4889
  %150 = load i8, i8* %149, align 1, !dbg !4890, !tbaa !928
  %151 = icmp eq i8 %150, 0, !dbg !4892
  br i1 %151, label %152, label %128, !dbg !4893, !llvm.loop !4914

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4671, metadata !680), !dbg !4752
  %154 = load i8, i8* %153, align 1, !dbg !4916, !tbaa !928
  %155 = icmp eq i8 %154, 0, !dbg !4918
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.150, i64 0, i64 0), i8* %153, !dbg !4919
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4671, metadata !680), !dbg !4752
  ret i8* %156, !dbg !4920
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4921 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4966, metadata !680), !dbg !4970
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4967, metadata !680), !dbg !4971
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4969, metadata !680), !dbg !4972
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4973
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4968, metadata !680), !dbg !4974
  %3 = icmp slt i32 %2, 0, !dbg !4975
  br i1 %3, label %4, label %6, !dbg !4977

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4978
  br label %24, !dbg !4979

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4980
  %8 = icmp eq i32 %7, 0, !dbg !4980
  br i1 %8, label %13, label %9, !dbg !4982

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4983
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4984
  %12 = icmp eq i64 %11, -1, !dbg !4985
  br i1 %12, label %16, label %13, !dbg !4986

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4987
  %15 = icmp eq i32 %14, 0, !dbg !4987
  br i1 %15, label %16, label %18, !dbg !4988

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4967, metadata !680), !dbg !4971
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4989
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4969, metadata !680), !dbg !4972
  br label %24, !dbg !4990

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4991
  %20 = load i32, i32* %19, align 4, !dbg !4991, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4967, metadata !680), !dbg !4971
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4967, metadata !680), !dbg !4971
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4989
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4969, metadata !680), !dbg !4972
  %22 = icmp eq i32 %20, 0, !dbg !4992
  br i1 %22, label %24, label %23, !dbg !4990

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4994, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4969, metadata !680), !dbg !4972
  br label %24, !dbg !4996

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4997
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4998 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5043, metadata !680), !dbg !5044
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5045
  br i1 %2, label %6, label %3, !dbg !5047

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5048
  %5 = icmp eq i32 %4, 0, !dbg !5048
  br i1 %5, label %6, label %8, !dbg !5049

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5050
  br label %17, !dbg !5051

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5052, metadata !680) #10, !dbg !5057
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5059
  %10 = load i32, i32* %9, align 8, !dbg !5059, !tbaa !4622
  %11 = and i32 %10, 256, !dbg !5061
  %12 = icmp eq i32 %11, 0, !dbg !5061
  br i1 %12, label %15, label %13, !dbg !5062

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !5063
  br label %15, !dbg !5063

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5064
  br label %17, !dbg !5065

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5066
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5067 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5112, metadata !680), !dbg !5118
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5113, metadata !680), !dbg !5119
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5114, metadata !680), !dbg !5120
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5121
  %5 = load i8*, i8** %4, align 8, !dbg !5121, !tbaa !4815
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5122
  %7 = load i8*, i8** %6, align 8, !dbg !5122, !tbaa !4814
  %8 = icmp eq i8* %5, %7, !dbg !5123
  br i1 %8, label %9, label %28, !dbg !5124

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5125
  %11 = load i8*, i8** %10, align 8, !dbg !5125, !tbaa !5126
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5127
  %13 = load i8*, i8** %12, align 8, !dbg !5127, !tbaa !5128
  %14 = icmp eq i8* %11, %13, !dbg !5129
  br i1 %14, label %15, label %28, !dbg !5130

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5131
  %17 = load i8*, i8** %16, align 8, !dbg !5131, !tbaa !5132
  %18 = icmp eq i8* %17, null, !dbg !5133
  br i1 %18, label %19, label %28, !dbg !5134

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5135
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !5136
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5115, metadata !680), !dbg !5137
  %22 = icmp eq i64 %21, -1, !dbg !5138
  br i1 %22, label %30, label %23, !dbg !5140

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5141
  %25 = load i32, i32* %24, align 8, !dbg !5142, !tbaa !4622
  %26 = and i32 %25, -17, !dbg !5142
  store i32 %26, i32* %24, align 8, !dbg !5142, !tbaa !4622
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5143
  store i64 %21, i64* %27, align 8, !dbg !5144, !tbaa !5145
  br label %30, !dbg !5146

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5147
  br label %30, !dbg !5148

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5149
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

!llvm.dbg.cu = !{!2, !131, !137, !145, !581, !584, !589, !152, !159, !592, !612, !225, !620, !637, !639, !650, !654, !656, !659, !661, !234, !663, !665, !667}
!llvm.ident = !{!669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669}
!llvm.module.flags = !{!670, !671, !672, !673, !674}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 88, type: !117, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !46)
!3 = !DIFile(filename: "src/head.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !10, !24}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "header_mode", file: !3, line: 66, size: 32, elements: !6)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "multiple_files", value: 0)
!8 = !DIEnumerator(name: "always", value: 1)
!9 = !DIEnumerator(name: "never", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !11, line: 32, size: 32, elements: !12)
!11 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!13 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!14 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!15 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!16 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!17 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!18 = !DIEnumerator(name: "c_quoting_style", value: 5)
!19 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!20 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!21 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!22 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!23 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Copy_fd_status", file: !3, line: 74, size: 32, elements: !25)
!25 = !{!26, !27, !28}
!26 = !DIEnumerator(name: "COPY_FD_OK", value: 0)
!27 = !DIEnumerator(name: "COPY_FD_READ_ERROR", value: 1)
!28 = !DIEnumerator(name: "COPY_FD_UNEXPECTED_EOF", value: 2)
!29 = !{!30, !31, !33, !34, !39, !43}
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !35, line: 57, baseType: !36)
!35 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !37, line: 140, baseType: !38)
!37 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!38 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 62, baseType: !45)
!44 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!45 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !{!47, !84, !86, !88, !90, !92, !0, !112}
!47 = !DIGlobalVariableExpression(var: !48)
!48 = distinct !DIGlobalVariable(name: "default_file_list", scope: !49, file: !3, line: 937, type: !81, isLocal: true, isDefinition: true)
!49 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 917, type: !50, isLocal: false, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !54)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !52, !53}
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!54 = !{!55, !56, !57, !58, !60, !61, !62, !66, !67, !68, !69, !72, !73, !74, !75}
!55 = !DILocalVariable(name: "argc", arg: 1, scope: !49, file: !3, line: 917, type: !52)
!56 = !DILocalVariable(name: "argv", arg: 2, scope: !49, file: !3, line: 917, type: !53)
!57 = !DILocalVariable(name: "header_mode", scope: !49, file: !3, line: 919, type: !5)
!58 = !DILocalVariable(name: "ok", scope: !49, file: !3, line: 920, type: !59)
!59 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!60 = !DILocalVariable(name: "c", scope: !49, file: !3, line: 921, type: !52)
!61 = !DILocalVariable(name: "i", scope: !49, file: !3, line: 922, type: !43)
!62 = !DILocalVariable(name: "n_units", scope: !49, file: !3, line: 925, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !64, line: 112, baseType: !65)
!64 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !37, line: 62, baseType: !45)
!66 = !DILocalVariable(name: "count_lines", scope: !49, file: !3, line: 929, type: !59)
!67 = !DILocalVariable(name: "elide_from_end", scope: !49, file: !3, line: 933, type: !59)
!68 = !DILocalVariable(name: "file_list", scope: !49, file: !3, line: 938, type: !39)
!69 = !DILocalVariable(name: "a", scope: !70, file: !3, line: 956, type: !31)
!70 = distinct !DILexicalBlock(scope: !71, file: !3, line: 955, column: 5)
!71 = distinct !DILexicalBlock(scope: !49, file: !3, line: 954, column: 7)
!72 = !DILocalVariable(name: "n_string", scope: !70, file: !3, line: 957, type: !31)
!73 = !DILocalVariable(name: "end_n_string", scope: !70, file: !3, line: 958, type: !31)
!74 = !DILocalVariable(name: "multiplier_char", scope: !70, file: !3, line: 959, type: !32)
!75 = !DILocalVariable(name: "umax_buf", scope: !76, file: !3, line: 1076, type: !78)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 1075, column: 5)
!77 = distinct !DILexicalBlock(scope: !49, file: !3, line: 1074, column: 8)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 168, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 21)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 128, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 2)
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "presume_input_pipe", scope: !2, file: !3, line: 57, type: !59, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87)
!87 = distinct !DIGlobalVariable(name: "print_headers", scope: !2, file: !3, line: 60, type: !59, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89)
!89 = distinct !DIGlobalVariable(name: "line_end", scope: !2, file: !3, line: 63, type: !32, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91)
!91 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 72, type: !59, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93)
!93 = distinct !DIGlobalVariable(name: "infomap", scope: !94, file: !95, line: 632, type: !109, isLocal: true, isDefinition: true)
!94 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !95, file: !95, line: 630, type: !96, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !98)
!95 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!96 = !DISubroutineType(types: !97)
!97 = !{null, !41}
!98 = !{!99, !100, !101, !108}
!99 = !DILocalVariable(name: "program", arg: 1, scope: !94, file: !95, line: 630, type: !41)
!100 = !DILocalVariable(name: "node", scope: !94, file: !95, line: 642, type: !41)
!101 = !DILocalVariable(name: "map_prog", scope: !94, file: !95, line: 643, type: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !94, file: !95, line: 632, size: 128, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !104, file: !95, line: 632, baseType: !41, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !104, file: !95, line: 632, baseType: !41, size: 64, offset: 64)
!108 = !DILocalVariable(name: "lc_messages", scope: !94, file: !95, line: 655, type: !41)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 896, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 7)
!112 = !DIGlobalVariableExpression(var: !113)
!113 = distinct !DIGlobalVariable(name: "first_file", scope: !114, file: !3, line: 169, type: !59, isLocal: true, isDefinition: true)
!114 = distinct !DISubprogram(name: "write_header", scope: !3, file: !3, line: 167, type: !96, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !115)
!115 = !{!116}
!116 = !DILocalVariable(name: "filename", arg: 1, scope: !114, file: !3, line: 167, type: !41)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 2560, elements: !127)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !120, line: 50, size: 256, elements: !121)
!120 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!121 = !{!122, !123, !124, !126}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !119, file: !120, line: 52, baseType: !41, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !119, file: !120, line: 55, baseType: !52, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !119, file: !120, line: 56, baseType: !125, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !119, file: !120, line: 57, baseType: !52, size: 32, offset: 192)
!127 = !{!128}
!128 = !DISubrange(count: 10)
!129 = !DIGlobalVariableExpression(var: !130)
!130 = distinct !DIGlobalVariable(name: "Version", scope: !131, file: !132, line: 2, type: !41, isLocal: false, isDefinition: true)
!131 = distinct !DICompileUnit(language: DW_LANG_C99, file: !132, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133, globals: !134)
!132 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!133 = !{}
!134 = !{!129}
!135 = !DIGlobalVariableExpression(var: !136)
!136 = distinct !DIGlobalVariable(name: "file_name", scope: !137, file: !142, line: 36, type: !41, isLocal: true, isDefinition: true)
!137 = distinct !DICompileUnit(language: DW_LANG_C99, file: !138, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133, globals: !139)
!138 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!139 = !{!135, !140}
!140 = !DIGlobalVariableExpression(var: !141)
!141 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !137, file: !142, line: 46, type: !59, isLocal: true, isDefinition: true)
!142 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!143 = !DIGlobalVariableExpression(var: !144)
!144 = distinct !DIGlobalVariable(name: "exit_failure", scope: !145, file: !148, line: 24, type: !149, isLocal: false, isDefinition: true)
!145 = distinct !DICompileUnit(language: DW_LANG_C99, file: !146, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133, globals: !147)
!146 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!147 = !{!143}
!148 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!149 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !52)
!150 = !DIGlobalVariableExpression(var: !151)
!151 = distinct !DIGlobalVariable(name: "program_name", scope: !152, file: !156, line: 33, type: !41, isLocal: false, isDefinition: true)
!152 = distinct !DICompileUnit(language: DW_LANG_C99, file: !153, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133, retainedTypes: !154, globals: !155)
!153 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!154 = !{!33, !31}
!155 = !{!150}
!156 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!157 = !DIGlobalVariableExpression(var: !158)
!158 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !159, file: !187, line: 77, type: !220, isLocal: false, isDefinition: true)
!159 = distinct !DICompileUnit(language: DW_LANG_C99, file: !160, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !161, retainedTypes: !182, globals: !184)
!160 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!161 = !{!10, !162, !167}
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !11, line: 242, size: 32, elements: !163)
!163 = !{!164, !165, !166}
!164 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!165 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!166 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !168, line: 46, size: 32, elements: !169)
!168 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!170 = !DIEnumerator(name: "_ISupper", value: 256)
!171 = !DIEnumerator(name: "_ISlower", value: 512)
!172 = !DIEnumerator(name: "_ISalpha", value: 1024)
!173 = !DIEnumerator(name: "_ISdigit", value: 2048)
!174 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!175 = !DIEnumerator(name: "_ISspace", value: 8192)
!176 = !DIEnumerator(name: "_ISprint", value: 16384)
!177 = !DIEnumerator(name: "_ISgraph", value: 32768)
!178 = !DIEnumerator(name: "_ISblank", value: 1)
!179 = !DIEnumerator(name: "_IScntrl", value: 2)
!180 = !DIEnumerator(name: "_ISpunct", value: 4)
!181 = !DIEnumerator(name: "_ISalnum", value: 8)
!182 = !{!52, !183, !43, !31}
!183 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!184 = !{!157, !185, !190, !202, !204, !209, !216, !218}
!185 = !DIGlobalVariableExpression(var: !186)
!186 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !159, file: !187, line: 93, type: !188, isLocal: false, isDefinition: true)
!187 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 320, elements: !127)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!190 = !DIGlobalVariableExpression(var: !191)
!191 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !159, file: !187, line: 1043, type: !192, isLocal: false, isDefinition: true)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !187, line: 57, size: 448, elements: !193)
!193 = !{!194, !195, !196, !200, !201}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !192, file: !187, line: 60, baseType: !10, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !187, line: 63, baseType: !52, size: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !192, file: !187, line: 67, baseType: !197, size: 256, offset: 64)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 8)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !192, file: !187, line: 70, baseType: !41, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !192, file: !187, line: 73, baseType: !41, size: 64, offset: 384)
!202 = !DIGlobalVariableExpression(var: !203)
!203 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !159, file: !187, line: 108, type: !192, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205)
!205 = distinct !DIGlobalVariable(name: "slot0", scope: !159, file: !187, line: 834, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 256)
!209 = !DIGlobalVariableExpression(var: !210)
!210 = distinct !DIGlobalVariable(name: "slotvec", scope: !159, file: !187, line: 837, type: !211, isLocal: true, isDefinition: true)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !187, line: 826, size: 128, elements: !213)
!213 = !{!214, !215}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !212, file: !187, line: 828, baseType: !43, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !212, file: !187, line: 829, baseType: !31, size: 64, offset: 64)
!216 = !DIGlobalVariableExpression(var: !217)
!217 = distinct !DIGlobalVariable(name: "nslots", scope: !159, file: !187, line: 835, type: !52, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219)
!219 = distinct !DIGlobalVariable(name: "slotvec0", scope: !159, file: !187, line: 836, type: !212, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 704, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 11)
!223 = !DIGlobalVariableExpression(var: !224)
!224 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !225, file: !228, line: 26, type: !229, isLocal: false, isDefinition: true)
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133, globals: !227)
!226 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!227 = !{!223}
!228 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 376, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 47)
!232 = !DIGlobalVariableExpression(var: !233)
!233 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !234, file: !579, line: 120, type: !580, isLocal: true, isDefinition: true)
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !236, retainedTypes: !575, globals: !578)
!235 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!236 = !{!237}
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !238, line: 41, size: 32, elements: !239)
!238 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574}
!240 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!241 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!242 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!243 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!244 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!245 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!246 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!247 = !DIEnumerator(name: "DAY_1", value: 131079)
!248 = !DIEnumerator(name: "DAY_2", value: 131080)
!249 = !DIEnumerator(name: "DAY_3", value: 131081)
!250 = !DIEnumerator(name: "DAY_4", value: 131082)
!251 = !DIEnumerator(name: "DAY_5", value: 131083)
!252 = !DIEnumerator(name: "DAY_6", value: 131084)
!253 = !DIEnumerator(name: "DAY_7", value: 131085)
!254 = !DIEnumerator(name: "ABMON_1", value: 131086)
!255 = !DIEnumerator(name: "ABMON_2", value: 131087)
!256 = !DIEnumerator(name: "ABMON_3", value: 131088)
!257 = !DIEnumerator(name: "ABMON_4", value: 131089)
!258 = !DIEnumerator(name: "ABMON_5", value: 131090)
!259 = !DIEnumerator(name: "ABMON_6", value: 131091)
!260 = !DIEnumerator(name: "ABMON_7", value: 131092)
!261 = !DIEnumerator(name: "ABMON_8", value: 131093)
!262 = !DIEnumerator(name: "ABMON_9", value: 131094)
!263 = !DIEnumerator(name: "ABMON_10", value: 131095)
!264 = !DIEnumerator(name: "ABMON_11", value: 131096)
!265 = !DIEnumerator(name: "ABMON_12", value: 131097)
!266 = !DIEnumerator(name: "MON_1", value: 131098)
!267 = !DIEnumerator(name: "MON_2", value: 131099)
!268 = !DIEnumerator(name: "MON_3", value: 131100)
!269 = !DIEnumerator(name: "MON_4", value: 131101)
!270 = !DIEnumerator(name: "MON_5", value: 131102)
!271 = !DIEnumerator(name: "MON_6", value: 131103)
!272 = !DIEnumerator(name: "MON_7", value: 131104)
!273 = !DIEnumerator(name: "MON_8", value: 131105)
!274 = !DIEnumerator(name: "MON_9", value: 131106)
!275 = !DIEnumerator(name: "MON_10", value: 131107)
!276 = !DIEnumerator(name: "MON_11", value: 131108)
!277 = !DIEnumerator(name: "MON_12", value: 131109)
!278 = !DIEnumerator(name: "AM_STR", value: 131110)
!279 = !DIEnumerator(name: "PM_STR", value: 131111)
!280 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!281 = !DIEnumerator(name: "D_FMT", value: 131113)
!282 = !DIEnumerator(name: "T_FMT", value: 131114)
!283 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!284 = !DIEnumerator(name: "ERA", value: 131116)
!285 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!286 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!287 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!288 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!289 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!290 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!291 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!292 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!293 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!294 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!295 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!296 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!297 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!298 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!299 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!300 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!301 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!302 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!303 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!304 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!305 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!306 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!307 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!308 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!309 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!310 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!311 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!312 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!313 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!314 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!315 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!316 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!317 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!318 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!319 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!320 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!321 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!322 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!323 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!324 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!325 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!326 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!327 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!328 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!329 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!330 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!331 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!332 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!333 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!334 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!335 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!336 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!337 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!338 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!339 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!340 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!341 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!342 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!343 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!344 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!345 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!346 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!347 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!348 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!349 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!350 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!351 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!352 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!353 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!354 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!355 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!356 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!357 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!358 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!359 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!360 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!361 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!362 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!363 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!364 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!365 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!366 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!367 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!368 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!369 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!370 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!371 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!372 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!373 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!374 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!375 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!376 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!377 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!378 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!379 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!380 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!381 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!382 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!383 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!384 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!385 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!386 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!387 = !DIEnumerator(name: "CODESET", value: 14)
!388 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!389 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!390 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!391 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!434 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!435 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!436 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!437 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!438 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!439 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!440 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!441 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!442 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!443 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!444 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!445 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!446 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!447 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!448 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!449 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!450 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!451 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!452 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!455 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!456 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!457 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!458 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!459 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!460 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!461 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!462 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!463 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!464 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!465 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!466 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!467 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!468 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!469 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!470 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!471 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!472 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!473 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!474 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!475 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!476 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!477 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!478 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!479 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!480 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!481 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!498 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!499 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!502 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!503 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!504 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!505 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!506 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!507 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!508 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!509 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!510 = !DIEnumerator(name: "THOUSEP", value: 65537)
!511 = !DIEnumerator(name: "__GROUPING", value: 65538)
!512 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!513 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!514 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!515 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!516 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!517 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!518 = !DIEnumerator(name: "__YESSTR", value: 327682)
!519 = !DIEnumerator(name: "__NOSTR", value: 327683)
!520 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!521 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!522 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!523 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!524 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!525 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!526 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!527 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!528 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!529 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!530 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!531 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!532 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!533 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!534 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!535 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!536 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!537 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!538 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!539 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!540 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!541 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!542 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!543 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!544 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!545 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!546 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!547 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!548 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!549 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!550 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!551 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!552 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!553 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!554 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!555 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!556 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!557 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!558 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!559 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!561 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!562 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!563 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!573 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!574 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!575 = !{!33, !31, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!578 = !{!232}
!579 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!580 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !41)
!581 = distinct !DICompileUnit(language: DW_LANG_C99, file: !582, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133, retainedTypes: !583)
!582 = !DIFile(filename: "./lib/full-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!583 = !{!31, !43}
!584 = distinct !DICompileUnit(language: DW_LANG_C99, file: !585, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133, retainedTypes: !586)
!585 = !DIFile(filename: "./lib/offtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !588, line: 86, baseType: !36)
!588 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!589 = distinct !DICompileUnit(language: DW_LANG_C99, file: !590, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133, retainedTypes: !591)
!590 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!591 = !{!63}
!592 = distinct !DICompileUnit(language: DW_LANG_C99, file: !593, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !594)
!593 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!594 = !{!595}
!595 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !597, file: !596, line: 62, size: 32, elements: !610)
!596 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!597 = distinct !DISubprogram(name: "safe_read", scope: !596, file: !596, line: 56, type: !598, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !600)
!598 = !DISubroutineType(types: !599)
!599 = !{!43, !52, !33, !43}
!600 = !{!601, !602, !603, !604}
!601 = !DILocalVariable(name: "fd", arg: 1, scope: !597, file: !596, line: 56, type: !52)
!602 = !DILocalVariable(name: "buf", arg: 2, scope: !597, file: !596, line: 56, type: !33)
!603 = !DILocalVariable(name: "count", arg: 3, scope: !597, file: !596, line: 56, type: !43)
!604 = !DILocalVariable(name: "result", scope: !605, file: !596, line: 66, type: !608)
!605 = distinct !DILexicalBlock(scope: !606, file: !596, line: 65, column: 5)
!606 = distinct !DILexicalBlock(scope: !607, file: !596, line: 64, column: 3)
!607 = distinct !DILexicalBlock(scope: !597, file: !596, line: 64, column: 3)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !588, line: 109, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !37, line: 181, baseType: !38)
!610 = !{!611}
!611 = !DIEnumerator(name: "BUGGY_READ_MAXIMUM", value: 2147475456)
!612 = distinct !DICompileUnit(language: DW_LANG_C99, file: !613, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !614, retainedTypes: !619)
!613 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!614 = !{!615}
!615 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !616, line: 41, size: 32, elements: !617)
!616 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!617 = !{!618}
!618 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!619 = !{!33}
!620 = distinct !DICompileUnit(language: DW_LANG_C99, file: !621, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !622, retainedTypes: !636)
!621 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!622 = !{!623}
!623 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !625, file: !624, line: 192, size: 32, elements: !634)
!624 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!625 = distinct !DISubprogram(name: "x2nrealloc", scope: !624, file: !624, line: 180, type: !626, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !629)
!626 = !DISubroutineType(types: !627)
!627 = !{!33, !33, !628, !43}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!629 = !{!630, !631, !632, !633}
!630 = !DILocalVariable(name: "p", arg: 1, scope: !625, file: !624, line: 180, type: !33)
!631 = !DILocalVariable(name: "pn", arg: 2, scope: !625, file: !624, line: 180, type: !628)
!632 = !DILocalVariable(name: "s", arg: 3, scope: !625, file: !624, line: 180, type: !43)
!633 = !DILocalVariable(name: "n", scope: !625, file: !624, line: 182, type: !43)
!634 = !{!635}
!635 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!636 = !{!43, !31, !33}
!637 = distinct !DICompileUnit(language: DW_LANG_C99, file: !638, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133)
!638 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!639 = distinct !DICompileUnit(language: DW_LANG_C99, file: !640, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !641)
!640 = !DIFile(filename: "./lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!641 = !{!642}
!642 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !643, line: 26, size: 32, elements: !644)
!643 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!644 = !{!645, !646, !647, !648, !649}
!645 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!646 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!647 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!648 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!649 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!650 = distinct !DICompileUnit(language: DW_LANG_C99, file: !651, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !652, retainedTypes: !653)
!651 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!652 = !{!642, !167}
!653 = !{!52, !183}
!654 = distinct !DICompileUnit(language: DW_LANG_C99, file: !655, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133, retainedTypes: !619)
!655 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!656 = distinct !DICompileUnit(language: DW_LANG_C99, file: !657, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133, retainedTypes: !658)
!657 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!658 = !{!43}
!659 = distinct !DICompileUnit(language: DW_LANG_C99, file: !660, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133)
!660 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!661 = distinct !DICompileUnit(language: DW_LANG_C99, file: !662, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133)
!662 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!663 = distinct !DICompileUnit(language: DW_LANG_C99, file: !664, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133)
!664 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!665 = distinct !DICompileUnit(language: DW_LANG_C99, file: !666, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133, retainedTypes: !619)
!666 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!667 = distinct !DICompileUnit(language: DW_LANG_C99, file: !668, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133, retainedTypes: !619)
!668 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!669 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!670 = !{i32 2, !"Dwarf Version", i32 4}
!671 = !{i32 2, !"Debug Info Version", i32 3}
!672 = !{i32 1, !"wchar_size", i32 4}
!673 = !{i32 7, !"PIC Level", i32 2}
!674 = !{i32 7, !"PIE Level", i32 2}
!675 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 104, type: !676, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !678)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !52}
!678 = !{!679}
!679 = !DILocalVariable(name: "status", arg: 1, scope: !675, file: !3, line: 104, type: !52)
!680 = !DIExpression()
!681 = !DILocation(line: 104, column: 12, scope: !675)
!682 = !DILocation(line: 106, column: 14, scope: !683)
!683 = distinct !DILexicalBlock(scope: !675, file: !3, line: 106, column: 7)
!684 = !DILocation(line: 106, column: 7, scope: !675)
!685 = !DILocation(line: 107, column: 5, scope: !686)
!686 = distinct !DILexicalBlock(scope: !683, file: !3, line: 107, column: 5)
!687 = !{!688, !688, i64 0}
!688 = !{!"any pointer", !689, i64 0}
!689 = !{!"omnipotent char", !690, i64 0}
!690 = !{!"Simple C/C++ TBAA"}
!691 = !DILocation(line: 110, column: 7, scope: !692)
!692 = distinct !DILexicalBlock(scope: !683, file: !3, line: 109, column: 5)
!693 = !DILocation(line: 114, column: 7, scope: !692)
!694 = !DILocation(line: 580, column: 3, scope: !695, inlinedAt: !698)
!695 = distinct !DISubprogram(name: "emit_stdin_note", scope: !95, file: !95, line: 578, type: !696, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !133)
!696 = !DISubroutineType(types: !697)
!697 = !{null}
!698 = distinct !DILocation(line: 119, column: 7, scope: !692)
!699 = !DILocation(line: 587, column: 3, scope: !700, inlinedAt: !701)
!700 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !95, file: !95, line: 585, type: !696, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !133)
!701 = distinct !DILocation(line: 120, column: 7, scope: !692)
!702 = !DILocation(line: 122, column: 7, scope: !692)
!703 = !DILocation(line: 130, column: 7, scope: !692)
!704 = !DILocation(line: 134, column: 7, scope: !692)
!705 = !DILocation(line: 137, column: 7, scope: !692)
!706 = !DILocation(line: 138, column: 7, scope: !692)
!707 = !DILocation(line: 139, column: 7, scope: !692)
!708 = !DILocation(line: 642, column: 15, scope: !94, inlinedAt: !709)
!709 = distinct !DILocation(line: 145, column: 7, scope: !692)
!710 = !DILocation(line: 651, column: 3, scope: !94, inlinedAt: !709)
!711 = !DILocation(line: 655, column: 29, scope: !94, inlinedAt: !709)
!712 = !DILocation(line: 655, column: 15, scope: !94, inlinedAt: !709)
!713 = !DILocation(line: 656, column: 7, scope: !714, inlinedAt: !709)
!714 = distinct !DILexicalBlock(scope: !94, file: !95, line: 656, column: 7)
!715 = !DILocation(line: 656, column: 19, scope: !714, inlinedAt: !709)
!716 = !DILocation(line: 656, column: 22, scope: !714, inlinedAt: !709)
!717 = !DILocation(line: 656, column: 7, scope: !94, inlinedAt: !709)
!718 = !DILocation(line: 662, column: 7, scope: !719, inlinedAt: !709)
!719 = distinct !DILexicalBlock(scope: !714, file: !95, line: 657, column: 5)
!720 = !DILocation(line: 664, column: 5, scope: !719, inlinedAt: !709)
!721 = !DILocation(line: 665, column: 3, scope: !94, inlinedAt: !709)
!722 = !DILocation(line: 667, column: 3, scope: !94, inlinedAt: !709)
!723 = !DILocation(line: 147, column: 3, scope: !675)
!724 = !DILocalVariable(name: "b", scope: !725, file: !3, line: 295, type: !771)
!725 = distinct !DILexicalBlock(scope: !726, file: !3, line: 290, column: 5)
!726 = distinct !DILexicalBlock(scope: !727, file: !3, line: 289, column: 7)
!727 = distinct !DISubprogram(name: "elide_tail_bytes_pipe", scope: !3, file: !3, line: 247, type: !728, isLocal: true, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !730)
!728 = !DISubroutineType(types: !729)
!729 = !{!59, !41, !52, !63, !34}
!730 = !{!731, !732, !733, !734, !735, !736, !737, !738, !741, !742, !743, !744, !724, !745, !749, !750, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !767, !770}
!731 = !DILocalVariable(name: "filename", arg: 1, scope: !727, file: !3, line: 247, type: !41)
!732 = !DILocalVariable(name: "fd", arg: 2, scope: !727, file: !3, line: 247, type: !52)
!733 = !DILocalVariable(name: "n_elide_0", arg: 3, scope: !727, file: !3, line: 247, type: !63)
!734 = !DILocalVariable(name: "current_pos", arg: 4, scope: !727, file: !3, line: 248, type: !34)
!735 = !DILocalVariable(name: "n_elide", scope: !727, file: !3, line: 250, type: !43)
!736 = !DILocalVariable(name: "desired_pos", scope: !727, file: !3, line: 251, type: !63)
!737 = !DILocalVariable(name: "ok", scope: !727, file: !3, line: 252, type: !59)
!738 = !DILocalVariable(name: "umax_buf", scope: !739, file: !3, line: 273, type: !78)
!739 = distinct !DILexicalBlock(scope: !740, file: !3, line: 272, column: 5)
!740 = distinct !DILexicalBlock(scope: !727, file: !3, line: 271, column: 7)
!741 = !DILocalVariable(name: "first", scope: !725, file: !3, line: 291, type: !59)
!742 = !DILocalVariable(name: "eof", scope: !725, file: !3, line: 292, type: !59)
!743 = !DILocalVariable(name: "n_to_read", scope: !725, file: !3, line: 293, type: !43)
!744 = !DILocalVariable(name: "i", scope: !725, file: !3, line: 294, type: !59)
!745 = !DILocalVariable(name: "n_read", scope: !746, file: !3, line: 301, type: !43)
!746 = distinct !DILexicalBlock(scope: !747, file: !3, line: 300, column: 9)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 299, column: 7)
!748 = distinct !DILexicalBlock(scope: !725, file: !3, line: 299, column: 7)
!749 = !DILocalVariable(name: "delta", scope: !746, file: !3, line: 302, type: !43)
!750 = !DILocalVariable(name: "eof", scope: !751, file: !3, line: 352, type: !59)
!751 = distinct !DILexicalBlock(scope: !726, file: !3, line: 348, column: 5)
!752 = !DILocalVariable(name: "n_read", scope: !751, file: !3, line: 353, type: !43)
!753 = !DILocalVariable(name: "buffered_enough", scope: !751, file: !3, line: 354, type: !59)
!754 = !DILocalVariable(name: "i", scope: !751, file: !3, line: 355, type: !43)
!755 = !DILocalVariable(name: "i_next", scope: !751, file: !3, line: 355, type: !43)
!756 = !DILocalVariable(name: "b", scope: !751, file: !3, line: 356, type: !53)
!757 = !DILocalVariable(name: "rem", scope: !751, file: !3, line: 358, type: !43)
!758 = !DILocalVariable(name: "n_elide_round", scope: !751, file: !3, line: 359, type: !43)
!759 = !DILocalVariable(name: "n_bufs", scope: !751, file: !3, line: 360, type: !43)
!760 = !DILocalVariable(name: "n_alloc", scope: !751, file: !3, line: 361, type: !43)
!761 = !DILocalVariable(name: "n_array_alloc", scope: !751, file: !3, line: 362, type: !43)
!762 = !DILocalVariable(name: "n_bytes_left_in_b_i", scope: !763, file: !3, line: 411, type: !43)
!763 = distinct !DILexicalBlock(scope: !764, file: !3, line: 410, column: 13)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 409, column: 15)
!765 = distinct !DILexicalBlock(scope: !766, file: !3, line: 408, column: 9)
!766 = distinct !DILexicalBlock(scope: !751, file: !3, line: 407, column: 11)
!767 = !DILocalVariable(name: "y", scope: !768, file: !3, line: 437, type: !43)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 424, column: 13)
!769 = distinct !DILexicalBlock(scope: !764, file: !3, line: 423, column: 20)
!770 = !DILocalVariable(name: "x", scope: !768, file: !3, line: 438, type: !43)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !82)
!772 = !DILocation(line: 295, column: 13, scope: !725, inlinedAt: !773)
!773 = distinct !DILocation(line: 469, column: 12, scope: !774, inlinedAt: !827)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 468, column: 7)
!775 = distinct !DISubprogram(name: "elide_tail_bytes_file", scope: !3, file: !3, line: 464, type: !776, isLocal: true, isDefinition: true, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !816)
!776 = !DISubroutineType(types: !777)
!777 = !{!59, !41, !52, !63, !778, !34}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !781, line: 46, size: 1152, elements: !782)
!781 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!782 = !{!783, !785, !787, !789, !791, !793, !795, !796, !797, !798, !800, !802, !810, !811, !812}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !780, file: !781, line: 48, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !37, line: 133, baseType: !45)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !780, file: !781, line: 53, baseType: !786, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !37, line: 136, baseType: !45)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !780, file: !781, line: 61, baseType: !788, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !37, line: 139, baseType: !45)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !780, file: !781, line: 62, baseType: !790, size: 32, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !37, line: 138, baseType: !30)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !780, file: !781, line: 64, baseType: !792, size: 32, offset: 224)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !37, line: 134, baseType: !30)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !780, file: !781, line: 65, baseType: !794, size: 32, offset: 256)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !37, line: 135, baseType: !30)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !780, file: !781, line: 67, baseType: !52, size: 32, offset: 288)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !780, file: !781, line: 69, baseType: !784, size: 64, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !780, file: !781, line: 74, baseType: !36, size: 64, offset: 384)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !780, file: !781, line: 78, baseType: !799, size: 64, offset: 448)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !37, line: 162, baseType: !38)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !780, file: !781, line: 80, baseType: !801, size: 64, offset: 512)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !37, line: 167, baseType: !38)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !780, file: !781, line: 91, baseType: !803, size: 128, offset: 576)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !804, line: 8, size: 128, elements: !805)
!804 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!805 = !{!806, !808}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !803, file: !804, line: 10, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !37, line: 148, baseType: !38)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !803, file: !804, line: 11, baseType: !809, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !37, line: 184, baseType: !38)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !780, file: !781, line: 92, baseType: !803, size: 128, offset: 704)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !780, file: !781, line: 93, baseType: !803, size: 128, offset: 832)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !780, file: !781, line: 106, baseType: !813, size: 192, offset: 960)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, size: 192, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 3)
!816 = !{!817, !818, !819, !820, !821, !822, !823, !825, !826}
!817 = !DILocalVariable(name: "filename", arg: 1, scope: !775, file: !3, line: 464, type: !41)
!818 = !DILocalVariable(name: "fd", arg: 2, scope: !775, file: !3, line: 464, type: !52)
!819 = !DILocalVariable(name: "n_elide", arg: 3, scope: !775, file: !3, line: 464, type: !63)
!820 = !DILocalVariable(name: "st", arg: 4, scope: !775, file: !3, line: 465, type: !778)
!821 = !DILocalVariable(name: "current_pos", arg: 5, scope: !775, file: !3, line: 465, type: !34)
!822 = !DILocalVariable(name: "size", scope: !775, file: !3, line: 467, type: !34)
!823 = !DILocalVariable(name: "diff", scope: !824, file: !3, line: 474, type: !34)
!824 = distinct !DILexicalBlock(scope: !774, file: !3, line: 471, column: 5)
!825 = !DILocalVariable(name: "bytes_remaining", scope: !824, file: !3, line: 475, type: !34)
!826 = !DILocalVariable(name: "err", scope: !824, file: !3, line: 480, type: !24)
!827 = distinct !DILocation(line: 860, column: 16, scope: !828, inlinedAt: !842)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 857, column: 11)
!829 = distinct !DILexicalBlock(scope: !830, file: !3, line: 842, column: 5)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 841, column: 7)
!831 = distinct !DISubprogram(name: "head", scope: !3, file: !3, line: 835, type: !832, isLocal: true, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !834)
!832 = !DISubroutineType(types: !833)
!833 = !{!59, !41, !52, !63, !59, !59}
!834 = !{!835, !836, !837, !838, !839, !840, !841}
!835 = !DILocalVariable(name: "filename", arg: 1, scope: !831, file: !3, line: 835, type: !41)
!836 = !DILocalVariable(name: "fd", arg: 2, scope: !831, file: !3, line: 835, type: !52)
!837 = !DILocalVariable(name: "n_units", arg: 3, scope: !831, file: !3, line: 835, type: !63)
!838 = !DILocalVariable(name: "count_lines", arg: 4, scope: !831, file: !3, line: 835, type: !59)
!839 = !DILocalVariable(name: "elide_from_end", arg: 5, scope: !831, file: !3, line: 836, type: !59)
!840 = !DILocalVariable(name: "current_pos", scope: !829, file: !3, line: 843, type: !34)
!841 = !DILocalVariable(name: "st", scope: !829, file: !3, line: 844, type: !780)
!842 = distinct !DILocation(line: 893, column: 8, scope: !843, inlinedAt: !854)
!843 = distinct !DISubprogram(name: "head_file", scope: !3, file: !3, line: 869, type: !844, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !846)
!844 = !DISubroutineType(types: !845)
!845 = !{!59, !41, !63, !59, !59}
!846 = !{!847, !848, !849, !850, !851, !852, !853}
!847 = !DILocalVariable(name: "filename", arg: 1, scope: !843, file: !3, line: 869, type: !41)
!848 = !DILocalVariable(name: "n_units", arg: 2, scope: !843, file: !3, line: 869, type: !63)
!849 = !DILocalVariable(name: "count_lines", arg: 3, scope: !843, file: !3, line: 869, type: !59)
!850 = !DILocalVariable(name: "elide_from_end", arg: 4, scope: !843, file: !3, line: 870, type: !59)
!851 = !DILocalVariable(name: "fd", scope: !843, file: !3, line: 872, type: !52)
!852 = !DILocalVariable(name: "ok", scope: !843, file: !3, line: 873, type: !59)
!853 = !DILocalVariable(name: "is_stdin", scope: !843, file: !3, line: 874, type: !59)
!854 = distinct !DILocation(line: 1088, column: 11, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 1087, column: 3)
!856 = distinct !DILexicalBlock(scope: !49, file: !3, line: 1087, column: 3)
!857 = !DILocalVariable(name: "buffer", scope: !858, file: !3, line: 650, type: !882)
!858 = distinct !DISubprogram(name: "elide_tail_lines_seekable", scope: !3, file: !3, line: 646, type: !859, isLocal: true, isDefinition: true, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{!59, !41, !52, !63, !34, !34}
!861 = !{!862, !863, !864, !865, !866, !857, !867, !868, !869, !871, !873, !877}
!862 = !DILocalVariable(name: "pretty_filename", arg: 1, scope: !858, file: !3, line: 646, type: !41)
!863 = !DILocalVariable(name: "fd", arg: 2, scope: !858, file: !3, line: 646, type: !52)
!864 = !DILocalVariable(name: "n_lines", arg: 3, scope: !858, file: !3, line: 647, type: !63)
!865 = !DILocalVariable(name: "start_pos", arg: 4, scope: !858, file: !3, line: 648, type: !34)
!866 = !DILocalVariable(name: "size", arg: 5, scope: !858, file: !3, line: 648, type: !34)
!867 = !DILocalVariable(name: "bytes_read", scope: !858, file: !3, line: 651, type: !43)
!868 = !DILocalVariable(name: "pos", scope: !858, file: !3, line: 652, type: !34)
!869 = !DILocalVariable(name: "all_lines", scope: !858, file: !3, line: 672, type: !870)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!871 = !DILocalVariable(name: "n", scope: !872, file: !3, line: 682, type: !43)
!872 = distinct !DILexicalBlock(scope: !858, file: !3, line: 679, column: 5)
!873 = !DILocalVariable(name: "nl", scope: !874, file: !3, line: 689, type: !41)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 688, column: 13)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 685, column: 15)
!876 = distinct !DILexicalBlock(scope: !872, file: !3, line: 684, column: 9)
!877 = !DILocalVariable(name: "err", scope: !878, file: !3, line: 702, type: !24)
!878 = distinct !DILexicalBlock(scope: !879, file: !3, line: 701, column: 17)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 700, column: 19)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 696, column: 13)
!881 = distinct !DILexicalBlock(scope: !876, file: !3, line: 695, column: 15)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 65536, elements: !883)
!883 = !{!884}
!884 = !DISubrange(count: 8192)
!885 = !DILocation(line: 650, column: 8, scope: !858, inlinedAt: !886)
!886 = distinct !DILocation(line: 767, column: 18, scope: !887, inlinedAt: !897)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 760, column: 5)
!888 = distinct !DILexicalBlock(scope: !889, file: !3, line: 757, column: 7)
!889 = distinct !DISubprogram(name: "elide_tail_lines_file", scope: !3, file: !3, line: 753, type: !776, isLocal: true, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !890)
!890 = !{!891, !892, !893, !894, !895, !896}
!891 = !DILocalVariable(name: "filename", arg: 1, scope: !889, file: !3, line: 753, type: !41)
!892 = !DILocalVariable(name: "fd", arg: 2, scope: !889, file: !3, line: 753, type: !52)
!893 = !DILocalVariable(name: "n_elide", arg: 3, scope: !889, file: !3, line: 753, type: !63)
!894 = !DILocalVariable(name: "st", arg: 4, scope: !889, file: !3, line: 754, type: !778)
!895 = !DILocalVariable(name: "current_pos", arg: 5, scope: !889, file: !3, line: 754, type: !34)
!896 = !DILocalVariable(name: "size", scope: !889, file: !3, line: 756, type: !34)
!897 = distinct !DILocation(line: 858, column: 16, scope: !828, inlinedAt: !842)
!898 = !DILocalVariable(name: "buf", scope: !899, file: !3, line: 195, type: !882)
!899 = distinct !DISubprogram(name: "copy_fd", scope: !3, file: !3, line: 193, type: !900, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !902)
!900 = !DISubroutineType(types: !901)
!901 = !{!24, !52, !63}
!902 = !{!903, !904, !898, !905, !907, !909}
!903 = !DILocalVariable(name: "src_fd", arg: 1, scope: !899, file: !3, line: 193, type: !52)
!904 = !DILocalVariable(name: "n_bytes", arg: 2, scope: !899, file: !3, line: 193, type: !63)
!905 = !DILocalVariable(name: "buf_size", scope: !899, file: !3, line: 196, type: !906)
!906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!907 = !DILocalVariable(name: "n_to_read", scope: !908, file: !3, line: 201, type: !43)
!908 = distinct !DILexicalBlock(scope: !899, file: !3, line: 200, column: 5)
!909 = !DILocalVariable(name: "n_read", scope: !908, file: !3, line: 202, type: !43)
!910 = !DILocation(line: 195, column: 8, scope: !899, inlinedAt: !911)
!911 = distinct !DILocation(line: 706, column: 25, scope: !878, inlinedAt: !886)
!912 = !DILocation(line: 917, column: 11, scope: !49)
!913 = !DILocation(line: 917, column: 24, scope: !49)
!914 = !DILocation(line: 919, column: 20, scope: !49)
!915 = !DILocation(line: 920, column: 8, scope: !49)
!916 = !DILocation(line: 925, column: 13, scope: !49)
!917 = !DILocation(line: 929, column: 8, scope: !49)
!918 = !DILocation(line: 933, column: 8, scope: !49)
!919 = !DILocation(line: 941, column: 21, scope: !49)
!920 = !DILocation(line: 941, column: 3, scope: !49)
!921 = !DILocation(line: 942, column: 3, scope: !49)
!922 = !DILocation(line: 943, column: 3, scope: !49)
!923 = !DILocation(line: 944, column: 3, scope: !49)
!924 = !DILocation(line: 946, column: 3, scope: !49)
!925 = !DILocation(line: 954, column: 9, scope: !71)
!926 = !DILocation(line: 954, column: 16, scope: !71)
!927 = !DILocation(line: 954, column: 19, scope: !71)
!928 = !{!689, !689, i64 0}
!929 = !DILocation(line: 954, column: 30, scope: !71)
!930 = !DILocation(line: 954, column: 37, scope: !71)
!931 = !DILocation(line: 954, column: 40, scope: !71)
!932 = !DILocation(line: 954, column: 7, scope: !49)
!933 = distinct !{!933, !934, !935}
!934 = !DILocation(line: 963, column: 7, scope: !70)
!935 = !DILocation(line: 964, column: 26, scope: !70)
!936 = !DILocation(line: 963, column: 10, scope: !70)
!937 = !DILocation(line: 956, column: 13, scope: !70)
!938 = !DILocation(line: 964, column: 14, scope: !70)
!939 = !DILocation(line: 958, column: 13, scope: !70)
!940 = !DILocation(line: 959, column: 12, scope: !70)
!941 = !DILocation(line: 970, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !70, file: !3, line: 970, column: 7)
!943 = !DILocation(line: 972, column: 19, scope: !944)
!944 = distinct !DILexicalBlock(scope: !945, file: !3, line: 971, column: 9)
!945 = distinct !DILexicalBlock(scope: !942, file: !3, line: 970, column: 7)
!946 = !DILocation(line: 972, column: 11, scope: !944)
!947 = !DILocation(line: 984, column: 15, scope: !948)
!948 = distinct !DILexicalBlock(scope: !944, file: !3, line: 973, column: 13)
!949 = !DILocation(line: 988, column: 15, scope: !948)
!950 = !DILocation(line: 992, column: 15, scope: !948)
!951 = !DILocation(line: 996, column: 15, scope: !948)
!952 = !DILocation(line: 1000, column: 15, scope: !948)
!953 = !DILocation(line: 1003, column: 28, scope: !948)
!954 = !DILocation(line: 1003, column: 64, scope: !948)
!955 = !DILocation(line: 1003, column: 15, scope: !948)
!956 = !DILocation(line: 1004, column: 15, scope: !948)
!957 = !DILocation(line: 970, column: 19, scope: !945)
!958 = !DILocation(line: 970, column: 14, scope: !945)
!959 = distinct !{!959, !941, !960}
!960 = !DILocation(line: 1006, column: 9, scope: !942)
!961 = !DILocation(line: 1010, column: 21, scope: !70)
!962 = !DILocation(line: 1011, column: 11, scope: !963)
!963 = distinct !DILexicalBlock(scope: !70, file: !3, line: 1011, column: 11)
!964 = !DILocation(line: 1011, column: 11, scope: !70)
!965 = !DILocation(line: 1012, column: 11, scope: !963)
!966 = !DILocation(line: 1012, column: 9, scope: !963)
!967 = !DILocation(line: 1014, column: 36, scope: !70)
!968 = !DILocalVariable(name: "count_lines", arg: 1, scope: !969, file: !3, line: 909, type: !59)
!969 = distinct !DISubprogram(name: "string_to_integer", scope: !3, file: !3, line: 909, type: !970, isLocal: true, isDefinition: true, scopeLine: 910, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !972)
!970 = !DISubroutineType(types: !971)
!971 = !{!63, !59, !41}
!972 = !{!968, !973}
!973 = !DILocalVariable(name: "n_string", arg: 2, scope: !969, file: !3, line: 909, type: !41)
!974 = !DILocation(line: 909, column: 25, scope: !969, inlinedAt: !975)
!975 = distinct !DILocation(line: 1014, column: 17, scope: !70)
!976 = !DILocation(line: 909, column: 50, scope: !969, inlinedAt: !975)
!977 = !DILocation(line: 912, column: 22, scope: !969, inlinedAt: !975)
!978 = !DILocation(line: 913, column: 36, scope: !969, inlinedAt: !975)
!979 = !DILocation(line: 911, column: 10, scope: !969, inlinedAt: !975)
!980 = !DILocation(line: 1017, column: 17, scope: !70)
!981 = !DILocation(line: 1017, column: 15, scope: !70)
!982 = !DILocation(line: 1019, column: 11, scope: !70)
!983 = !DILocation(line: 1020, column: 5, scope: !70)
!984 = !DILocation(line: 1022, column: 3, scope: !49)
!985 = !DILocation(line: 1022, column: 15, scope: !49)
!986 = !DILocation(line: 921, column: 7, scope: !49)
!987 = distinct !{!987, !984, !988}
!988 = !DILocation(line: 1068, column: 5, scope: !49)
!989 = !DILocation(line: 1029, column: 11, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !3, line: 1026, column: 9)
!991 = distinct !DILexicalBlock(scope: !49, file: !3, line: 1024, column: 5)
!992 = !DILocation(line: 1033, column: 30, scope: !990)
!993 = !DILocation(line: 1033, column: 29, scope: !990)
!994 = !DILocation(line: 1033, column: 37, scope: !990)
!995 = !DILocation(line: 1034, column: 15, scope: !990)
!996 = !DILocation(line: 1035, column: 13, scope: !997)
!997 = distinct !DILexicalBlock(scope: !990, file: !3, line: 1034, column: 15)
!998 = !DILocation(line: 1041, column: 30, scope: !990)
!999 = !DILocation(line: 1041, column: 29, scope: !990)
!1000 = !DILocation(line: 1041, column: 37, scope: !990)
!1001 = !DILocation(line: 1042, column: 15, scope: !990)
!1002 = !DILocation(line: 1043, column: 13, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !990, file: !3, line: 1042, column: 15)
!1004 = !DILocation(line: 913, column: 36, scope: !969, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 1044, column: 21, scope: !990)
!1006 = !DILocation(line: 911, column: 10, scope: !969, inlinedAt: !1005)
!1007 = !DILocation(line: 1053, column: 11, scope: !990)
!1008 = !DILocation(line: 1057, column: 11, scope: !990)
!1009 = !DILocation(line: 1059, column: 9, scope: !990)
!1010 = !DILocation(line: 1061, column: 9, scope: !990)
!1011 = !DILocation(line: 1064, column: 15, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !990, file: !3, line: 1064, column: 15)
!1013 = !DILocation(line: 1064, column: 15, scope: !990)
!1014 = !DILocation(line: 1065, column: 26, scope: !1012)
!1015 = !DILocation(line: 1065, column: 13, scope: !1012)
!1016 = !DILocation(line: 1066, column: 11, scope: !990)
!1017 = !DILocation(line: 1071, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !49, file: !3, line: 1070, column: 7)
!1019 = !DILocation(line: 1071, column: 44, scope: !1018)
!1020 = !{!1021, !1021, i64 0}
!1021 = !{!"int", !689, i64 0}
!1022 = !DILocation(line: 1071, column: 58, scope: !1018)
!1023 = !DILocation(line: 1071, column: 51, scope: !1018)
!1024 = !DILocation(line: 1070, column: 7, scope: !49)
!1025 = !DILocation(line: 1072, column: 5, scope: !1018)
!1026 = !DILocation(line: 1074, column: 10, scope: !77)
!1027 = !DILocation(line: 1074, column: 22, scope: !77)
!1028 = !DILocation(line: 1074, column: 25, scope: !77)
!1029 = !DILocation(line: 1074, column: 53, scope: !77)
!1030 = !DILocation(line: 1074, column: 40, scope: !77)
!1031 = !DILocation(line: 1076, column: 7, scope: !76)
!1032 = !DILocation(line: 1076, column: 12, scope: !76)
!1033 = !DILocation(line: 1077, column: 7, scope: !76)
!1034 = !DILocation(line: 1081, column: 16, scope: !49)
!1035 = !DILocation(line: 1081, column: 23, scope: !49)
!1036 = !DILocation(line: 1082, column: 41, scope: !49)
!1037 = !DILocation(line: 938, column: 22, scope: !49)
!1038 = !DILocation(line: 922, column: 10, scope: !49)
!1039 = !DILocation(line: 1087, column: 15, scope: !855)
!1040 = !DILocation(line: 1087, column: 3, scope: !856)
!1041 = !DILocalVariable(name: "buffer", scope: !1042, file: !3, line: 775, type: !882)
!1042 = distinct !DISubprogram(name: "head_bytes", scope: !3, file: !3, line: 773, type: !1043, isLocal: true, isDefinition: true, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1045)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!59, !41, !52, !63}
!1045 = !{!1046, !1047, !1048, !1041, !1049, !1050}
!1046 = !DILocalVariable(name: "filename", arg: 1, scope: !1042, file: !3, line: 773, type: !41)
!1047 = !DILocalVariable(name: "fd", arg: 2, scope: !1042, file: !3, line: 773, type: !52)
!1048 = !DILocalVariable(name: "bytes_to_write", arg: 3, scope: !1042, file: !3, line: 773, type: !63)
!1049 = !DILocalVariable(name: "bytes_to_read", scope: !1042, file: !3, line: 776, type: !43)
!1050 = !DILocalVariable(name: "bytes_read", scope: !1051, file: !3, line: 780, type: !43)
!1051 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 779, column: 5)
!1052 = !DILocation(line: 775, column: 8, scope: !1042, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 865, column: 12, scope: !1054, inlinedAt: !842)
!1054 = distinct !DILexicalBlock(scope: !831, file: !3, line: 862, column: 7)
!1055 = !DILocation(line: 869, column: 24, scope: !843, inlinedAt: !854)
!1056 = !DILocation(line: 869, column: 44, scope: !843, inlinedAt: !854)
!1057 = !DILocation(line: 869, column: 58, scope: !843, inlinedAt: !854)
!1058 = !DILocation(line: 870, column: 17, scope: !843, inlinedAt: !854)
!1059 = !DILocation(line: 874, column: 19, scope: !843, inlinedAt: !854)
!1060 = !DILocation(line: 876, column: 7, scope: !843, inlinedAt: !854)
!1061 = !DILocation(line: 872, column: 7, scope: !843, inlinedAt: !854)
!1062 = !DILocation(line: 880, column: 18, scope: !1063, inlinedAt: !854)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 877, column: 5)
!1064 = distinct !DILexicalBlock(scope: !843, file: !3, line: 876, column: 7)
!1065 = !DILocation(line: 882, column: 5, scope: !1063, inlinedAt: !854)
!1066 = !DILocation(line: 885, column: 12, scope: !1067, inlinedAt: !854)
!1067 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 884, column: 5)
!1068 = !DILocation(line: 886, column: 14, scope: !1069, inlinedAt: !854)
!1069 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 886, column: 11)
!1070 = !DILocation(line: 886, column: 11, scope: !1067, inlinedAt: !854)
!1071 = !DILocation(line: 888, column: 21, scope: !1072, inlinedAt: !854)
!1072 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 887, column: 9)
!1073 = !DILocation(line: 888, column: 28, scope: !1072, inlinedAt: !854)
!1074 = !DILocation(line: 888, column: 61, scope: !1072, inlinedAt: !854)
!1075 = !DILocation(line: 888, column: 11, scope: !1072, inlinedAt: !854)
!1076 = !DILocation(line: 889, column: 11, scope: !1072, inlinedAt: !854)
!1077 = !DILocalVariable(name: "buffer", scope: !1078, file: !3, line: 800, type: !882)
!1078 = distinct !DISubprogram(name: "head_lines", scope: !3, file: !3, line: 798, type: !1043, isLocal: true, isDefinition: true, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1079)
!1079 = !{!1080, !1081, !1082, !1077, !1083, !1085, !1086, !1089}
!1080 = !DILocalVariable(name: "filename", arg: 1, scope: !1078, file: !3, line: 798, type: !41)
!1081 = !DILocalVariable(name: "fd", arg: 2, scope: !1078, file: !3, line: 798, type: !52)
!1082 = !DILocalVariable(name: "lines_to_write", arg: 3, scope: !1078, file: !3, line: 798, type: !63)
!1083 = !DILocalVariable(name: "bytes_read", scope: !1084, file: !3, line: 804, type: !43)
!1084 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 803, column: 5)
!1085 = !DILocalVariable(name: "bytes_to_write", scope: !1084, file: !3, line: 805, type: !43)
!1086 = !DILocalVariable(name: "n_bytes_past_EOL", scope: !1087, file: !3, line: 817, type: !34)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 816, column: 11)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 815, column: 13)
!1089 = !DILocalVariable(name: "st", scope: !1090, file: !3, line: 823, type: !780)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 822, column: 15)
!1091 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 821, column: 17)
!1092 = !DILocation(line: 800, column: 8, scope: !1078, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 863, column: 12, scope: !1054, inlinedAt: !842)
!1094 = !DILocation(line: 195, column: 8, scope: !899, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 480, column: 33, scope: !824, inlinedAt: !827)
!1096 = !DILocation(line: 835, column: 19, scope: !831, inlinedAt: !842)
!1097 = !DILocation(line: 835, column: 33, scope: !831, inlinedAt: !842)
!1098 = !DILocation(line: 835, column: 47, scope: !831, inlinedAt: !842)
!1099 = !DILocation(line: 835, column: 61, scope: !831, inlinedAt: !842)
!1100 = !DILocation(line: 836, column: 12, scope: !831, inlinedAt: !842)
!1101 = !DILocation(line: 838, column: 7, scope: !831, inlinedAt: !842)
!1102 = !DILocation(line: 167, column: 27, scope: !114, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 839, column: 5, scope: !1104, inlinedAt: !842)
!1104 = distinct !DILexicalBlock(scope: !831, file: !3, line: 838, column: 7)
!1105 = !DILocation(line: 171, column: 3, scope: !114, inlinedAt: !1103)
!1106 = !DILocation(line: 839, column: 5, scope: !1104, inlinedAt: !842)
!1107 = !DILocation(line: 841, column: 7, scope: !831, inlinedAt: !842)
!1108 = !DILocation(line: 843, column: 13, scope: !829, inlinedAt: !842)
!1109 = !DILocation(line: 844, column: 7, scope: !829, inlinedAt: !842)
!1110 = !DILocation(line: 844, column: 19, scope: !829, inlinedAt: !842)
!1111 = !DILocalVariable(name: "__fd", arg: 1, scope: !1112, file: !1113, line: 463, type: !52)
!1112 = distinct !DISubprogram(name: "fstat", scope: !1113, file: !1113, line: 463, type: !1114, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1117)
!1113 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!52, !52, !1116}
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!1117 = !{!1111, !1118}
!1118 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1112, file: !1113, line: 463, type: !1116)
!1119 = !DILocation(line: 463, column: 1, scope: !1112, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 845, column: 11, scope: !1121, inlinedAt: !842)
!1121 = distinct !DILexicalBlock(scope: !829, file: !3, line: 845, column: 11)
!1122 = !DILocation(line: 465, column: 10, scope: !1112, inlinedAt: !1120)
!1123 = !DILocation(line: 845, column: 27, scope: !1121, inlinedAt: !842)
!1124 = !DILocation(line: 845, column: 11, scope: !829, inlinedAt: !842)
!1125 = !DILocation(line: 847, column: 21, scope: !1126, inlinedAt: !842)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 846, column: 9)
!1127 = !DILocation(line: 847, column: 28, scope: !1126, inlinedAt: !842)
!1128 = !DILocation(line: 848, column: 18, scope: !1126, inlinedAt: !842)
!1129 = !DILocation(line: 847, column: 11, scope: !1126, inlinedAt: !842)
!1130 = !DILocation(line: 849, column: 11, scope: !1126, inlinedAt: !842)
!1131 = !DILocation(line: 851, column: 32, scope: !1132, inlinedAt: !842)
!1132 = distinct !DILexicalBlock(scope: !829, file: !3, line: 851, column: 11)
!1133 = !DILocalVariable(name: "sb", arg: 1, scope: !1134, file: !95, line: 701, type: !778)
!1134 = distinct !DISubprogram(name: "usable_st_size", scope: !95, file: !95, line: 701, type: !1135, isLocal: true, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1137)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!59, !778}
!1137 = !{!1133}
!1138 = !DILocation(line: 701, column: 36, scope: !1134, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 851, column: 35, scope: !1132, inlinedAt: !842)
!1140 = !DILocation(line: 703, column: 11, scope: !1134, inlinedAt: !1139)
!1141 = !{!1142, !1021, i64 24}
!1142 = !{!"stat", !1143, i64 0, !1143, i64 8, !1143, i64 16, !1021, i64 24, !1021, i64 28, !1021, i64 32, !1021, i64 36, !1143, i64 40, !1143, i64 48, !1143, i64 56, !1143, i64 64, !1144, i64 72, !1144, i64 88, !1144, i64 104, !689, i64 120}
!1143 = !{!"long", !689, i64 0}
!1144 = !{!"timespec", !1143, i64 0, !1143, i64 8}
!1145 = !DILocation(line: 703, column: 33, scope: !1134, inlinedAt: !1139)
!1146 = !DILocation(line: 853, column: 25, scope: !1147, inlinedAt: !842)
!1147 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 852, column: 9)
!1148 = !DILocation(line: 854, column: 27, scope: !1149, inlinedAt: !842)
!1149 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 854, column: 15)
!1150 = !DILocation(line: 854, column: 15, scope: !1147, inlinedAt: !842)
!1151 = !{!1142, !1143, i64 48}
!1152 = !DILocation(line: 857, column: 11, scope: !829, inlinedAt: !842)
!1153 = !DILocation(line: 753, column: 36, scope: !889, inlinedAt: !897)
!1154 = !DILocation(line: 753, column: 50, scope: !889, inlinedAt: !897)
!1155 = !DILocation(line: 753, column: 64, scope: !889, inlinedAt: !897)
!1156 = !DILocation(line: 754, column: 43, scope: !889, inlinedAt: !897)
!1157 = !DILocation(line: 754, column: 53, scope: !889, inlinedAt: !897)
!1158 = !DILocation(line: 756, column: 9, scope: !889, inlinedAt: !897)
!1159 = !DILocation(line: 757, column: 26, scope: !888, inlinedAt: !897)
!1160 = !DILocation(line: 757, column: 56, scope: !888, inlinedAt: !897)
!1161 = !{!1142, !1143, i64 56}
!1162 = !DILocation(line: 757, column: 53, scope: !888, inlinedAt: !897)
!1163 = !DILocation(line: 757, column: 7, scope: !889, inlinedAt: !897)
!1164 = !DILocalVariable(name: "filename", arg: 1, scope: !1165, file: !3, line: 497, type: !41)
!1165 = distinct !DISubprogram(name: "elide_tail_lines_pipe", scope: !3, file: !3, line: 497, type: !728, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1166)
!1166 = !{!1164, !1167, !1168, !1169, !1170, !1171, !1181, !1182, !1183, !1184, !1185, !1186, !1189, !1190, !1193, !1194}
!1167 = !DILocalVariable(name: "fd", arg: 2, scope: !1165, file: !3, line: 497, type: !52)
!1168 = !DILocalVariable(name: "n_elide", arg: 3, scope: !1165, file: !3, line: 497, type: !63)
!1169 = !DILocalVariable(name: "current_pos", arg: 4, scope: !1165, file: !3, line: 498, type: !34)
!1170 = !DILocalVariable(name: "desired_pos", scope: !1165, file: !3, line: 507, type: !63)
!1171 = !DILocalVariable(name: "first", scope: !1165, file: !3, line: 509, type: !1172)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "LBUFFER", scope: !1165, file: !3, line: 508, baseType: !1174)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", scope: !1165, file: !3, line: 500, size: 65728, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1174, file: !3, line: 502, baseType: !882, size: 65536)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !1174, file: !3, line: 503, baseType: !43, size: 64, offset: 65536)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "nlines", scope: !1174, file: !3, line: 504, baseType: !43, size: 64, offset: 65600)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1174, file: !3, line: 505, baseType: !1180, size: 64, offset: 65664)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1181 = !DILocalVariable(name: "last", scope: !1165, file: !3, line: 509, type: !1172)
!1182 = !DILocalVariable(name: "tmp", scope: !1165, file: !3, line: 509, type: !1172)
!1183 = !DILocalVariable(name: "total_lines", scope: !1165, file: !3, line: 510, type: !43)
!1184 = !DILocalVariable(name: "ok", scope: !1165, file: !3, line: 511, type: !59)
!1185 = !DILocalVariable(name: "n_read", scope: !1165, file: !3, line: 512, type: !43)
!1186 = !DILocalVariable(name: "buffer_end", scope: !1187, file: !3, line: 541, type: !41)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 540, column: 7)
!1188 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 523, column: 5)
!1189 = !DILocalVariable(name: "p", scope: !1187, file: !3, line: 542, type: !41)
!1190 = !DILocalVariable(name: "n", scope: !1191, file: !3, line: 608, type: !43)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 607, column: 5)
!1192 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 606, column: 7)
!1193 = !DILocalVariable(name: "buffer_end", scope: !1191, file: !3, line: 609, type: !41)
!1194 = !DILocalVariable(name: "p", scope: !1191, file: !3, line: 610, type: !41)
!1195 = !DILocation(line: 497, column: 36, scope: !1165, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 758, column: 12, scope: !888, inlinedAt: !897)
!1197 = !DILocation(line: 497, column: 50, scope: !1165, inlinedAt: !1196)
!1198 = !DILocation(line: 497, column: 64, scope: !1165, inlinedAt: !1196)
!1199 = !DILocation(line: 498, column: 30, scope: !1165, inlinedAt: !1196)
!1200 = !DILocation(line: 507, column: 13, scope: !1165, inlinedAt: !1196)
!1201 = !DILocation(line: 510, column: 10, scope: !1165, inlinedAt: !1196)
!1202 = !DILocation(line: 511, column: 8, scope: !1165, inlinedAt: !1196)
!1203 = !DILocation(line: 514, column: 18, scope: !1165, inlinedAt: !1196)
!1204 = !DILocation(line: 509, column: 20, scope: !1165, inlinedAt: !1196)
!1205 = !DILocation(line: 509, column: 12, scope: !1165, inlinedAt: !1196)
!1206 = !DILocation(line: 515, column: 10, scope: !1165, inlinedAt: !1196)
!1207 = !DILocation(line: 515, column: 17, scope: !1165, inlinedAt: !1196)
!1208 = !DILocation(line: 517, column: 9, scope: !1165, inlinedAt: !1196)
!1209 = !DILocation(line: 524, column: 16, scope: !1188, inlinedAt: !1196)
!1210 = !DILocation(line: 512, column: 10, scope: !1165, inlinedAt: !1196)
!1211 = !DILocation(line: 525, column: 23, scope: !1212, inlinedAt: !1196)
!1212 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 525, column: 11)
!1213 = !DILocation(line: 530, column: 23, scope: !1214, inlinedAt: !1196)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 529, column: 9)
!1215 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 528, column: 11)
!1216 = !DILocation(line: 509, column: 27, scope: !1165, inlinedAt: !1196)
!1217 = !DILocation(line: 535, column: 12, scope: !1188, inlinedAt: !1196)
!1218 = !DILocation(line: 535, column: 19, scope: !1188, inlinedAt: !1196)
!1219 = !{!1220, !1143, i64 8192}
!1220 = !{!"linebuffer", !689, i64 0, !1143, i64 8192, !1143, i64 8200, !688, i64 8208}
!1221 = !DILocation(line: 536, column: 12, scope: !1188, inlinedAt: !1196)
!1222 = !DILocation(line: 541, column: 46, scope: !1187, inlinedAt: !1196)
!1223 = !DILocation(line: 541, column: 21, scope: !1187, inlinedAt: !1196)
!1224 = !DILocation(line: 542, column: 21, scope: !1187, inlinedAt: !1196)
!1225 = !DILocation(line: 537, column: 17, scope: !1188, inlinedAt: !1196)
!1226 = !DILocation(line: 543, column: 32, scope: !1187, inlinedAt: !1196)
!1227 = !DILocation(line: 543, column: 53, scope: !1187, inlinedAt: !1196)
!1228 = !DILocation(line: 543, column: 21, scope: !1187, inlinedAt: !1196)
!1229 = !DILocation(line: 543, column: 9, scope: !1187, inlinedAt: !1196)
!1230 = !DILocation(line: 545, column: 13, scope: !1231, inlinedAt: !1196)
!1231 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 544, column: 11)
!1232 = !DILocation(line: 531, column: 11, scope: !1214, inlinedAt: !1196)
!1233 = distinct !{!1233, !1234, !1235}
!1234 = !DILocation(line: 522, column: 3, scope: !1165)
!1235 = !DILocation(line: 579, column: 5, scope: !1165)
!1236 = !DILocation(line: 546, column: 13, scope: !1231, inlinedAt: !1196)
!1237 = !{!1220, !1143, i64 8200}
!1238 = distinct !{!1238, !1239, !1240}
!1239 = !DILocation(line: 543, column: 9, scope: !1187)
!1240 = !DILocation(line: 547, column: 11, scope: !1187)
!1241 = !DILocation(line: 549, column: 27, scope: !1188, inlinedAt: !1196)
!1242 = !DILocation(line: 549, column: 19, scope: !1188, inlinedAt: !1196)
!1243 = !DILocation(line: 554, column: 31, scope: !1244, inlinedAt: !1196)
!1244 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 554, column: 11)
!1245 = !DILocation(line: 554, column: 23, scope: !1244, inlinedAt: !1196)
!1246 = !DILocation(line: 554, column: 38, scope: !1244, inlinedAt: !1196)
!1247 = !DILocation(line: 554, column: 11, scope: !1188, inlinedAt: !1196)
!1248 = !DILocation(line: 556, column: 20, scope: !1249, inlinedAt: !1196)
!1249 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 555, column: 9)
!1250 = !DILocation(line: 556, column: 11, scope: !1249, inlinedAt: !1196)
!1251 = !DILocation(line: 557, column: 32, scope: !1249, inlinedAt: !1196)
!1252 = !{!1143, !1143, i64 0}
!1253 = !DILocation(line: 557, column: 24, scope: !1249, inlinedAt: !1196)
!1254 = !DILocation(line: 559, column: 9, scope: !1249, inlinedAt: !1196)
!1255 = !DILocation(line: 567, column: 24, scope: !1256, inlinedAt: !1196)
!1256 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 561, column: 9)
!1257 = !DILocation(line: 567, column: 29, scope: !1256, inlinedAt: !1196)
!1258 = !{!1220, !688, i64 8208}
!1259 = !DILocation(line: 568, column: 46, scope: !1260, inlinedAt: !1196)
!1260 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 568, column: 15)
!1261 = !DILocation(line: 568, column: 37, scope: !1260, inlinedAt: !1196)
!1262 = !DILocation(line: 568, column: 23, scope: !1260, inlinedAt: !1196)
!1263 = !DILocation(line: 568, column: 15, scope: !1256, inlinedAt: !1196)
!1264 = !DILocation(line: 570, column: 37, scope: !1265, inlinedAt: !1196)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 569, column: 13)
!1266 = !DILocation(line: 570, column: 27, scope: !1265, inlinedAt: !1196)
!1267 = !DILocation(line: 571, column: 30, scope: !1265, inlinedAt: !1196)
!1268 = !DILocation(line: 571, column: 15, scope: !1265, inlinedAt: !1196)
!1269 = !DILocation(line: 573, column: 37, scope: !1265, inlinedAt: !1196)
!1270 = !DILocation(line: 573, column: 27, scope: !1265, inlinedAt: !1196)
!1271 = !DILocation(line: 574, column: 30, scope: !1265, inlinedAt: !1196)
!1272 = !DILocation(line: 575, column: 13, scope: !1265, inlinedAt: !1196)
!1273 = !DILocation(line: 577, column: 19, scope: !1260, inlinedAt: !1196)
!1274 = !DILocation(line: 524, column: 31, scope: !1188, inlinedAt: !1196)
!1275 = !DILocation(line: 525, column: 33, scope: !1212, inlinedAt: !1196)
!1276 = !DILocation(line: 581, column: 3, scope: !1165, inlinedAt: !1196)
!1277 = !DILocation(line: 583, column: 7, scope: !1165, inlinedAt: !1196)
!1278 = !DILocation(line: 585, column: 17, scope: !1279, inlinedAt: !1196)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 584, column: 5)
!1280 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 583, column: 7)
!1281 = !DILocation(line: 585, column: 24, scope: !1279, inlinedAt: !1196)
!1282 = !DILocation(line: 585, column: 47, scope: !1279, inlinedAt: !1196)
!1283 = !DILocation(line: 585, column: 7, scope: !1279, inlinedAt: !1196)
!1284 = !DILocation(line: 587, column: 7, scope: !1279, inlinedAt: !1196)
!1285 = !DILocation(line: 592, column: 13, scope: !1286, inlinedAt: !1196)
!1286 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 592, column: 7)
!1287 = !DILocation(line: 592, column: 7, scope: !1286, inlinedAt: !1196)
!1288 = !DILocation(line: 592, column: 20, scope: !1286, inlinedAt: !1196)
!1289 = !DILocation(line: 592, column: 49, scope: !1286, inlinedAt: !1196)
!1290 = !DILocation(line: 592, column: 23, scope: !1286, inlinedAt: !1196)
!1291 = !DILocation(line: 592, column: 57, scope: !1286, inlinedAt: !1196)
!1292 = !DILocation(line: 592, column: 54, scope: !1286, inlinedAt: !1196)
!1293 = !DILocation(line: 592, column: 7, scope: !1165, inlinedAt: !1196)
!1294 = !DILocation(line: 594, column: 15, scope: !1295, inlinedAt: !1196)
!1295 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 593, column: 5)
!1296 = !DILocation(line: 594, column: 7, scope: !1295, inlinedAt: !1196)
!1297 = !DILocation(line: 595, column: 7, scope: !1295, inlinedAt: !1196)
!1298 = !DILocation(line: 596, column: 5, scope: !1295, inlinedAt: !1196)
!1299 = !DILocation(line: 598, column: 50, scope: !1300, inlinedAt: !1196)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 598, column: 3)
!1301 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 598, column: 3)
!1302 = !DILocation(line: 598, column: 43, scope: !1300, inlinedAt: !1196)
!1303 = !DILocation(line: 598, column: 29, scope: !1300, inlinedAt: !1196)
!1304 = !DILocation(line: 598, column: 3, scope: !1301, inlinedAt: !1196)
!1305 = !DILocation(line: 600, column: 27, scope: !1306, inlinedAt: !1196)
!1306 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 599, column: 5)
!1307 = !DILocation(line: 600, column: 19, scope: !1306, inlinedAt: !1196)
!1308 = !DILocation(line: 601, column: 22, scope: !1306, inlinedAt: !1196)
!1309 = !DILocation(line: 601, column: 7, scope: !1306, inlinedAt: !1196)
!1310 = !DILocation(line: 602, column: 27, scope: !1306, inlinedAt: !1196)
!1311 = !DILocation(line: 602, column: 19, scope: !1306, inlinedAt: !1196)
!1312 = !DILocation(line: 598, column: 69, scope: !1300, inlinedAt: !1196)
!1313 = distinct !{!1313, !1314, !1315}
!1314 = !DILocation(line: 598, column: 3, scope: !1301)
!1315 = !DILocation(line: 603, column: 5, scope: !1301)
!1316 = !DILocation(line: 606, column: 15, scope: !1192, inlinedAt: !1196)
!1317 = !DILocation(line: 606, column: 7, scope: !1165, inlinedAt: !1196)
!1318 = !DILocation(line: 608, column: 30, scope: !1191, inlinedAt: !1196)
!1319 = !DILocation(line: 608, column: 14, scope: !1191, inlinedAt: !1196)
!1320 = !DILocation(line: 609, column: 32, scope: !1191, inlinedAt: !1196)
!1321 = !DILocation(line: 610, column: 19, scope: !1191, inlinedAt: !1196)
!1322 = !DILocation(line: 611, column: 14, scope: !1191, inlinedAt: !1196)
!1323 = !DILocation(line: 611, column: 16, scope: !1191, inlinedAt: !1196)
!1324 = !DILocation(line: 609, column: 51, scope: !1191, inlinedAt: !1196)
!1325 = !DILocation(line: 609, column: 44, scope: !1191, inlinedAt: !1196)
!1326 = !DILocation(line: 611, column: 56, scope: !1191, inlinedAt: !1196)
!1327 = !DILocation(line: 611, column: 24, scope: !1191, inlinedAt: !1196)
!1328 = !DILocation(line: 611, column: 7, scope: !1191, inlinedAt: !1196)
!1329 = !DILocation(line: 613, column: 11, scope: !1330, inlinedAt: !1196)
!1330 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 612, column: 9)
!1331 = !DILocation(line: 614, column: 11, scope: !1330, inlinedAt: !1196)
!1332 = !DILocation(line: 615, column: 11, scope: !1330, inlinedAt: !1196)
!1333 = distinct !{!1333, !1334, !1335}
!1334 = !DILocation(line: 611, column: 7, scope: !1191)
!1335 = !DILocation(line: 616, column: 9, scope: !1191)
!1336 = !DILocation(line: 617, column: 24, scope: !1191, inlinedAt: !1196)
!1337 = !DILocation(line: 617, column: 19, scope: !1191, inlinedAt: !1196)
!1338 = !DILocation(line: 618, column: 7, scope: !1191, inlinedAt: !1196)
!1339 = !DILocation(line: 619, column: 5, scope: !1191, inlinedAt: !1196)
!1340 = !DILocation(line: 622, column: 3, scope: !1165, inlinedAt: !1196)
!1341 = !DILocation(line: 624, column: 20, scope: !1342, inlinedAt: !1196)
!1342 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 623, column: 5)
!1343 = !DILocation(line: 625, column: 13, scope: !1342, inlinedAt: !1196)
!1344 = !DILocation(line: 625, column: 7, scope: !1342, inlinedAt: !1196)
!1345 = distinct !{!1345, !1346, !1347}
!1346 = !DILocation(line: 622, column: 3, scope: !1165)
!1347 = !DILocation(line: 627, column: 5, scope: !1165)
!1348 = !DILocation(line: 629, column: 9, scope: !1349, inlinedAt: !1196)
!1349 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 629, column: 7)
!1350 = !DILocation(line: 629, column: 24, scope: !1349, inlinedAt: !1196)
!1351 = !DILocation(line: 629, column: 27, scope: !1349, inlinedAt: !1196)
!1352 = !DILocation(line: 629, column: 72, scope: !1349, inlinedAt: !1196)
!1353 = !DILocation(line: 629, column: 7, scope: !1165, inlinedAt: !1196)
!1354 = !DILocation(line: 631, column: 10, scope: !1165, inlinedAt: !1196)
!1355 = !DILocation(line: 758, column: 5, scope: !888, inlinedAt: !897)
!1356 = !DILocation(line: 766, column: 20, scope: !887, inlinedAt: !897)
!1357 = !DILocation(line: 767, column: 15, scope: !887, inlinedAt: !897)
!1358 = !DILocation(line: 646, column: 40, scope: !858, inlinedAt: !886)
!1359 = !DILocation(line: 646, column: 61, scope: !858, inlinedAt: !886)
!1360 = !DILocation(line: 647, column: 38, scope: !858, inlinedAt: !886)
!1361 = !DILocation(line: 648, column: 34, scope: !858, inlinedAt: !886)
!1362 = !DILocation(line: 648, column: 51, scope: !858, inlinedAt: !886)
!1363 = !DILocation(line: 650, column: 3, scope: !858, inlinedAt: !886)
!1364 = !DILocation(line: 652, column: 9, scope: !858, inlinedAt: !886)
!1365 = !DILocation(line: 656, column: 21, scope: !858, inlinedAt: !886)
!1366 = !DILocation(line: 656, column: 34, scope: !858, inlinedAt: !886)
!1367 = !DILocation(line: 651, column: 10, scope: !858, inlinedAt: !886)
!1368 = !DILocation(line: 657, column: 18, scope: !1369, inlinedAt: !886)
!1369 = distinct !DILexicalBlock(scope: !858, file: !3, line: 657, column: 7)
!1370 = !DILocation(line: 657, column: 7, scope: !858, inlinedAt: !886)
!1371 = !DILocation(line: 661, column: 7, scope: !858, inlinedAt: !886)
!1372 = !DILocation(line: 662, column: 7, scope: !1373, inlinedAt: !886)
!1373 = distinct !DILexicalBlock(scope: !858, file: !3, line: 662, column: 7)
!1374 = !DILocation(line: 662, column: 51, scope: !1373, inlinedAt: !886)
!1375 = !DILocation(line: 662, column: 7, scope: !858, inlinedAt: !886)
!1376 = !DILocation(line: 664, column: 16, scope: !858, inlinedAt: !886)
!1377 = !DILocation(line: 665, column: 18, scope: !1378, inlinedAt: !886)
!1378 = distinct !DILexicalBlock(scope: !858, file: !3, line: 665, column: 7)
!1379 = !DILocation(line: 665, column: 7, scope: !858, inlinedAt: !886)
!1380 = !DILocation(line: 667, column: 17, scope: !1381, inlinedAt: !886)
!1381 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 666, column: 5)
!1382 = !DILocation(line: 667, column: 24, scope: !1381, inlinedAt: !886)
!1383 = !DILocation(line: 667, column: 47, scope: !1381, inlinedAt: !886)
!1384 = !DILocation(line: 667, column: 7, scope: !1381, inlinedAt: !886)
!1385 = !DILocation(line: 668, column: 7, scope: !1381, inlinedAt: !886)
!1386 = !DILocation(line: 675, column: 18, scope: !1387, inlinedAt: !886)
!1387 = distinct !DILexicalBlock(scope: !858, file: !3, line: 675, column: 7)
!1388 = !DILocation(line: 675, column: 15, scope: !1387, inlinedAt: !886)
!1389 = !DILocation(line: 675, column: 50, scope: !1387, inlinedAt: !886)
!1390 = !DILocation(line: 675, column: 32, scope: !1387, inlinedAt: !886)
!1391 = !DILocation(line: 675, column: 58, scope: !1387, inlinedAt: !886)
!1392 = !DILocation(line: 675, column: 55, scope: !1387, inlinedAt: !886)
!1393 = !DILocation(line: 675, column: 7, scope: !858, inlinedAt: !886)
!1394 = !DILocation(line: 683, column: 7, scope: !872, inlinedAt: !886)
!1395 = !DILocation(line: 682, column: 14, scope: !872, inlinedAt: !886)
!1396 = !DILocation(line: 685, column: 15, scope: !876, inlinedAt: !886)
!1397 = !DILocation(line: 686, column: 15, scope: !875, inlinedAt: !886)
!1398 = !DILocation(line: 686, column: 13, scope: !875, inlinedAt: !886)
!1399 = !DILocation(line: 690, column: 20, scope: !874, inlinedAt: !886)
!1400 = !DILocation(line: 689, column: 27, scope: !874, inlinedAt: !886)
!1401 = !DILocation(line: 691, column: 22, scope: !1402, inlinedAt: !886)
!1402 = distinct !DILexicalBlock(scope: !874, file: !3, line: 691, column: 19)
!1403 = !DILocation(line: 693, column: 22, scope: !874, inlinedAt: !886)
!1404 = !DILocation(line: 695, column: 25, scope: !881, inlinedAt: !886)
!1405 = !DILocation(line: 695, column: 15, scope: !876, inlinedAt: !886)
!1406 = !DILocation(line: 700, column: 29, scope: !879, inlinedAt: !886)
!1407 = !DILocation(line: 700, column: 19, scope: !880, inlinedAt: !886)
!1408 = !DILocation(line: 703, column: 23, scope: !1409, inlinedAt: !886)
!1409 = distinct !DILexicalBlock(scope: !878, file: !3, line: 703, column: 23)
!1410 = !DILocation(line: 703, column: 73, scope: !1409, inlinedAt: !886)
!1411 = !DILocation(line: 703, column: 23, scope: !878, inlinedAt: !886)
!1412 = !DILocation(line: 706, column: 42, scope: !878, inlinedAt: !886)
!1413 = !DILocation(line: 193, column: 14, scope: !899, inlinedAt: !911)
!1414 = !DILocation(line: 193, column: 32, scope: !899, inlinedAt: !911)
!1415 = !DILocation(line: 195, column: 3, scope: !899, inlinedAt: !911)
!1416 = !DILocation(line: 196, column: 16, scope: !899, inlinedAt: !911)
!1417 = !DILocation(line: 199, column: 12, scope: !899, inlinedAt: !911)
!1418 = !DILocation(line: 199, column: 3, scope: !899, inlinedAt: !911)
!1419 = !DILocation(line: 201, column: 26, scope: !908, inlinedAt: !911)
!1420 = !DILocation(line: 201, column: 14, scope: !908, inlinedAt: !911)
!1421 = !DILocation(line: 202, column: 23, scope: !908, inlinedAt: !911)
!1422 = !DILocation(line: 202, column: 14, scope: !908, inlinedAt: !911)
!1423 = !DILocation(line: 203, column: 18, scope: !1424, inlinedAt: !911)
!1424 = distinct !DILexicalBlock(scope: !908, file: !3, line: 203, column: 11)
!1425 = !DILocation(line: 203, column: 11, scope: !908, inlinedAt: !911)
!1426 = !DILocation(line: 206, column: 15, scope: !908, inlinedAt: !911)
!1427 = !DILocation(line: 208, column: 18, scope: !1428, inlinedAt: !911)
!1428 = distinct !DILexicalBlock(scope: !908, file: !3, line: 208, column: 11)
!1429 = !DILocation(line: 208, column: 34, scope: !1428, inlinedAt: !911)
!1430 = !DILocation(line: 208, column: 23, scope: !1428, inlinedAt: !911)
!1431 = !DILocation(line: 211, column: 7, scope: !908, inlinedAt: !911)
!1432 = distinct !{!1432, !1433, !1434}
!1433 = !DILocation(line: 199, column: 3, scope: !899)
!1434 = !DILocation(line: 212, column: 5, scope: !899)
!1435 = !DILocation(line: 215, column: 1, scope: !899, inlinedAt: !911)
!1436 = !DILocation(line: 702, column: 39, scope: !878, inlinedAt: !886)
!1437 = !DILocation(line: 709, column: 23, scope: !1438, inlinedAt: !886)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 708, column: 21)
!1439 = distinct !DILexicalBlock(scope: !878, file: !3, line: 707, column: 23)
!1440 = !DILocation(line: 710, column: 23, scope: !1438, inlinedAt: !886)
!1441 = !DILocation(line: 716, column: 40, scope: !880, inlinedAt: !886)
!1442 = !DILocation(line: 716, column: 15, scope: !880, inlinedAt: !886)
!1443 = !DILocation(line: 719, column: 43, scope: !880, inlinedAt: !886)
!1444 = !DILocation(line: 719, column: 47, scope: !880, inlinedAt: !886)
!1445 = !DILocation(line: 719, column: 27, scope: !880, inlinedAt: !886)
!1446 = !DILocation(line: 719, column: 24, scope: !880, inlinedAt: !886)
!1447 = !DILocation(line: 719, column: 15, scope: !880, inlinedAt: !886)
!1448 = !DILocation(line: 695, column: 22, scope: !881, inlinedAt: !886)
!1449 = distinct !{!1449, !1450, !1451}
!1450 = !DILocation(line: 683, column: 7, scope: !872)
!1451 = !DILocation(line: 721, column: 9, scope: !872)
!1452 = !DILocation(line: 724, column: 15, scope: !1453, inlinedAt: !886)
!1453 = distinct !DILexicalBlock(scope: !872, file: !3, line: 724, column: 11)
!1454 = !DILocation(line: 724, column: 11, scope: !872, inlinedAt: !886)
!1455 = !DILocation(line: 729, column: 11, scope: !872, inlinedAt: !886)
!1456 = !DILocation(line: 730, column: 11, scope: !1457, inlinedAt: !886)
!1457 = distinct !DILexicalBlock(scope: !872, file: !3, line: 730, column: 11)
!1458 = !DILocation(line: 730, column: 55, scope: !1457, inlinedAt: !886)
!1459 = !DILocation(line: 730, column: 11, scope: !872, inlinedAt: !886)
!1460 = !DILocation(line: 733, column: 20, scope: !872, inlinedAt: !886)
!1461 = !DILocation(line: 734, column: 11, scope: !872, inlinedAt: !886)
!1462 = distinct !{!1462, !1463, !1464}
!1463 = !DILocation(line: 678, column: 3, scope: !858)
!1464 = !DILocation(line: 744, column: 5, scope: !858)
!1465 = !DILocation(line: 736, column: 21, scope: !1466, inlinedAt: !886)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 735, column: 9)
!1467 = distinct !DILexicalBlock(scope: !872, file: !3, line: 734, column: 11)
!1468 = !DILocation(line: 736, column: 28, scope: !1466, inlinedAt: !886)
!1469 = !DILocation(line: 736, column: 51, scope: !1466, inlinedAt: !886)
!1470 = !DILocation(line: 736, column: 11, scope: !1466, inlinedAt: !886)
!1471 = !DILocation(line: 737, column: 11, scope: !1466, inlinedAt: !886)
!1472 = !DILocation(line: 745, column: 1, scope: !858, inlinedAt: !886)
!1473 = !DILocation(line: 464, column: 36, scope: !775, inlinedAt: !827)
!1474 = !DILocation(line: 464, column: 50, scope: !775, inlinedAt: !827)
!1475 = !DILocation(line: 464, column: 64, scope: !775, inlinedAt: !827)
!1476 = !DILocation(line: 465, column: 43, scope: !775, inlinedAt: !827)
!1477 = !DILocation(line: 465, column: 53, scope: !775, inlinedAt: !827)
!1478 = !DILocation(line: 467, column: 9, scope: !775, inlinedAt: !827)
!1479 = !DILocation(line: 468, column: 26, scope: !774, inlinedAt: !827)
!1480 = !DILocation(line: 468, column: 56, scope: !774, inlinedAt: !827)
!1481 = !DILocation(line: 468, column: 53, scope: !774, inlinedAt: !827)
!1482 = !DILocation(line: 468, column: 7, scope: !775, inlinedAt: !827)
!1483 = !DILocation(line: 247, column: 36, scope: !727, inlinedAt: !773)
!1484 = !DILocation(line: 247, column: 50, scope: !727, inlinedAt: !773)
!1485 = !DILocation(line: 247, column: 64, scope: !727, inlinedAt: !773)
!1486 = !DILocation(line: 248, column: 30, scope: !727, inlinedAt: !773)
!1487 = !DILocation(line: 250, column: 10, scope: !727, inlinedAt: !773)
!1488 = !DILocation(line: 251, column: 13, scope: !727, inlinedAt: !773)
!1489 = !DILocation(line: 252, column: 8, scope: !727, inlinedAt: !773)
!1490 = !DILocation(line: 289, column: 7, scope: !727, inlinedAt: !773)
!1491 = !DILocation(line: 367, column: 29, scope: !1492, inlinedAt: !773)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 367, column: 15)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 366, column: 9)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 365, column: 7)
!1495 = distinct !DILexicalBlock(scope: !751, file: !3, line: 365, column: 7)
!1496 = !DILocation(line: 291, column: 12, scope: !725, inlinedAt: !773)
!1497 = !DILocation(line: 292, column: 12, scope: !725, inlinedAt: !773)
!1498 = !DILocation(line: 293, column: 14, scope: !725, inlinedAt: !773)
!1499 = !DILocation(line: 295, column: 7, scope: !725, inlinedAt: !773)
!1500 = !DILocalVariable(name: "n", arg: 1, scope: !1501, file: !624, line: 105, type: !43)
!1501 = distinct !DISubprogram(name: "xnmalloc", scope: !624, file: !624, line: 105, type: !1502, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1504)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!33, !43, !43}
!1504 = !{!1500, !1505}
!1505 = !DILocalVariable(name: "s", arg: 2, scope: !1501, file: !624, line: 105, type: !43)
!1506 = !DILocation(line: 105, column: 18, scope: !1501, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 296, column: 14, scope: !725, inlinedAt: !773)
!1508 = !DILocation(line: 105, column: 28, scope: !1501, inlinedAt: !1507)
!1509 = !DILocation(line: 107, column: 7, scope: !1501, inlinedAt: !1507)
!1510 = !DILocation(line: 108, column: 5, scope: !1511, inlinedAt: !1507)
!1511 = distinct !DILexicalBlock(scope: !1501, file: !624, line: 107, column: 7)
!1512 = !DILocation(line: 109, column: 10, scope: !1501, inlinedAt: !1507)
!1513 = !DILocation(line: 296, column: 12, scope: !725, inlinedAt: !773)
!1514 = !DILocation(line: 297, column: 19, scope: !725, inlinedAt: !773)
!1515 = !DILocation(line: 297, column: 12, scope: !725, inlinedAt: !773)
!1516 = !DILocation(line: 294, column: 12, scope: !725, inlinedAt: !773)
!1517 = !DILocation(line: 299, column: 7, scope: !748, inlinedAt: !773)
!1518 = !DILocation(line: 301, column: 42, scope: !746, inlinedAt: !773)
!1519 = !DILocation(line: 301, column: 27, scope: !746, inlinedAt: !773)
!1520 = !DILocation(line: 301, column: 18, scope: !746, inlinedAt: !773)
!1521 = !DILocation(line: 302, column: 18, scope: !746, inlinedAt: !773)
!1522 = !DILocation(line: 303, column: 22, scope: !1523, inlinedAt: !773)
!1523 = distinct !DILexicalBlock(scope: !746, file: !3, line: 303, column: 15)
!1524 = !DILocation(line: 303, column: 15, scope: !746, inlinedAt: !773)
!1525 = !DILocation(line: 305, column: 19, scope: !1526, inlinedAt: !773)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 305, column: 19)
!1527 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 304, column: 13)
!1528 = !DILocation(line: 305, column: 25, scope: !1526, inlinedAt: !773)
!1529 = !DILocation(line: 305, column: 19, scope: !1527, inlinedAt: !773)
!1530 = !DILocation(line: 313, column: 26, scope: !1531, inlinedAt: !773)
!1531 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 313, column: 19)
!1532 = !DILocation(line: 315, column: 23, scope: !1533, inlinedAt: !773)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 315, column: 23)
!1534 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 314, column: 17)
!1535 = !DILocation(line: 313, column: 19, scope: !1527, inlinedAt: !773)
!1536 = !DILocation(line: 323, column: 39, scope: !1537, inlinedAt: !773)
!1537 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 322, column: 21)
!1538 = !DILocation(line: 331, column: 17, scope: !1539, inlinedAt: !773)
!1539 = distinct !DILexicalBlock(scope: !746, file: !3, line: 331, column: 15)
!1540 = !DILocation(line: 331, column: 15, scope: !746, inlinedAt: !773)
!1541 = !DILocation(line: 333, column: 38, scope: !1542, inlinedAt: !773)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 332, column: 13)
!1543 = !DILocation(line: 333, column: 27, scope: !1542, inlinedAt: !773)
!1544 = !DILocation(line: 334, column: 32, scope: !1542, inlinedAt: !773)
!1545 = !DILocation(line: 334, column: 30, scope: !1542, inlinedAt: !773)
!1546 = !DILocation(line: 334, column: 36, scope: !1542, inlinedAt: !773)
!1547 = !DILocation(line: 334, column: 15, scope: !1542, inlinedAt: !773)
!1548 = !DILocation(line: 335, column: 13, scope: !1542, inlinedAt: !773)
!1549 = !DILocation(line: 338, column: 23, scope: !1550, inlinedAt: !773)
!1550 = distinct !DILexicalBlock(scope: !746, file: !3, line: 338, column: 15)
!1551 = !DILocation(line: 338, column: 15, scope: !746, inlinedAt: !773)
!1552 = !DILocation(line: 340, column: 37, scope: !1553, inlinedAt: !773)
!1553 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 339, column: 13)
!1554 = !DILocation(line: 340, column: 27, scope: !1553, inlinedAt: !773)
!1555 = !DILocation(line: 341, column: 15, scope: !1553, inlinedAt: !773)
!1556 = !DILocation(line: 342, column: 13, scope: !1553, inlinedAt: !773)
!1557 = !DILocation(line: 307, column: 36, scope: !1558, inlinedAt: !773)
!1558 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 306, column: 17)
!1559 = !DILocation(line: 307, column: 59, scope: !1558, inlinedAt: !773)
!1560 = !DILocation(line: 307, column: 19, scope: !1558, inlinedAt: !773)
!1561 = !DILocation(line: 299, column: 35, scope: !747, inlinedAt: !773)
!1562 = !DILocation(line: 299, column: 25, scope: !747, inlinedAt: !773)
!1563 = distinct !{!1563, !1564, !1565}
!1564 = !DILocation(line: 299, column: 7, scope: !748)
!1565 = !DILocation(line: 343, column: 9, scope: !748)
!1566 = !DILocation(line: 345, column: 7, scope: !725, inlinedAt: !773)
!1567 = !DILocation(line: 346, column: 5, scope: !726, inlinedAt: !773)
!1568 = !DILocation(line: 346, column: 5, scope: !725, inlinedAt: !773)
!1569 = !DILocation(line: 352, column: 12, scope: !751, inlinedAt: !773)
!1570 = !DILocation(line: 354, column: 12, scope: !751, inlinedAt: !773)
!1571 = !DILocation(line: 355, column: 14, scope: !751, inlinedAt: !773)
!1572 = !DILocation(line: 355, column: 17, scope: !751, inlinedAt: !773)
!1573 = !DILocation(line: 356, column: 14, scope: !751, inlinedAt: !773)
!1574 = !DILocation(line: 361, column: 14, scope: !751, inlinedAt: !773)
!1575 = !DILocation(line: 362, column: 14, scope: !751, inlinedAt: !773)
!1576 = !DILocation(line: 367, column: 15, scope: !1493, inlinedAt: !773)
!1577 = !DILocation(line: 370, column: 33, scope: !1578, inlinedAt: !773)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 370, column: 19)
!1579 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 368, column: 13)
!1580 = !DILocation(line: 370, column: 19, scope: !1579, inlinedAt: !773)
!1581 = !DILocation(line: 372, column: 38, scope: !1582, inlinedAt: !773)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 372, column: 24)
!1583 = !DILocation(line: 373, column: 31, scope: !1582, inlinedAt: !773)
!1584 = !DILocation(line: 372, column: 24, scope: !1578, inlinedAt: !773)
!1585 = !DILocalVariable(name: "p", arg: 1, scope: !1586, file: !624, line: 118, type: !33)
!1586 = distinct !DISubprogram(name: "xnrealloc", scope: !624, file: !624, line: 118, type: !1587, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1589)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!33, !33, !43, !43}
!1589 = !{!1585, !1590, !1591}
!1590 = !DILocalVariable(name: "n", arg: 2, scope: !1586, file: !624, line: 118, type: !43)
!1591 = !DILocalVariable(name: "s", arg: 3, scope: !1586, file: !624, line: 118, type: !43)
!1592 = !DILocation(line: 118, column: 18, scope: !1586, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 376, column: 19, scope: !1579, inlinedAt: !773)
!1594 = !DILocation(line: 118, column: 28, scope: !1586, inlinedAt: !1593)
!1595 = !DILocation(line: 118, column: 38, scope: !1586, inlinedAt: !1593)
!1596 = !DILocation(line: 120, column: 7, scope: !1597, inlinedAt: !1593)
!1597 = distinct !DILexicalBlock(scope: !1586, file: !624, line: 120, column: 7)
!1598 = !DILocation(line: 120, column: 7, scope: !1586, inlinedAt: !1593)
!1599 = !DILocation(line: 121, column: 5, scope: !1597, inlinedAt: !1593)
!1600 = !DILocation(line: 122, column: 25, scope: !1586, inlinedAt: !1593)
!1601 = !DILocation(line: 122, column: 10, scope: !1586, inlinedAt: !1593)
!1602 = !DILocation(line: 376, column: 19, scope: !1579, inlinedAt: !773)
!1603 = !DILocation(line: 377, column: 13, scope: !1579, inlinedAt: !773)
!1604 = !DILocation(line: 379, column: 17, scope: !1605, inlinedAt: !773)
!1605 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 379, column: 15)
!1606 = !DILocation(line: 379, column: 15, scope: !1493, inlinedAt: !773)
!1607 = !DILocation(line: 384, column: 35, scope: !1493, inlinedAt: !773)
!1608 = !DILocation(line: 381, column: 22, scope: !1609, inlinedAt: !773)
!1609 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 380, column: 13)
!1610 = !DILocation(line: 381, column: 15, scope: !1609, inlinedAt: !773)
!1611 = !DILocation(line: 381, column: 20, scope: !1609, inlinedAt: !773)
!1612 = !DILocation(line: 382, column: 27, scope: !1609, inlinedAt: !773)
!1613 = !DILocation(line: 383, column: 13, scope: !1609, inlinedAt: !773)
!1614 = !DILocation(line: 384, column: 20, scope: !1493, inlinedAt: !773)
!1615 = !DILocation(line: 353, column: 14, scope: !751, inlinedAt: !773)
!1616 = !DILocation(line: 385, column: 22, scope: !1617, inlinedAt: !773)
!1617 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 385, column: 15)
!1618 = !DILocation(line: 385, column: 15, scope: !1493, inlinedAt: !773)
!1619 = !DILocation(line: 387, column: 19, scope: !1620, inlinedAt: !773)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 387, column: 19)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 386, column: 13)
!1622 = !DILocation(line: 387, column: 25, scope: !1620, inlinedAt: !773)
!1623 = !DILocation(line: 387, column: 19, scope: !1621, inlinedAt: !773)
!1624 = !DILocation(line: 389, column: 36, scope: !1625, inlinedAt: !773)
!1625 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 388, column: 17)
!1626 = !DILocation(line: 389, column: 59, scope: !1625, inlinedAt: !773)
!1627 = !DILocation(line: 389, column: 19, scope: !1625, inlinedAt: !773)
!1628 = !DILocation(line: 391, column: 19, scope: !1625, inlinedAt: !773)
!1629 = !DILocation(line: 396, column: 21, scope: !1630, inlinedAt: !773)
!1630 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 396, column: 15)
!1631 = !DILocation(line: 396, column: 15, scope: !1493, inlinedAt: !773)
!1632 = !DILocation(line: 399, column: 15, scope: !1633, inlinedAt: !773)
!1633 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 399, column: 15)
!1634 = !DILocation(line: 399, column: 15, scope: !1493, inlinedAt: !773)
!1635 = !DILocation(line: 401, column: 27, scope: !1636, inlinedAt: !773)
!1636 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 400, column: 13)
!1637 = !DILocation(line: 402, column: 30, scope: !1636, inlinedAt: !773)
!1638 = !DILocation(line: 402, column: 15, scope: !1636, inlinedAt: !773)
!1639 = !DILocation(line: 403, column: 13, scope: !1636, inlinedAt: !773)
!1640 = !DILocation(line: 365, column: 66, scope: !1494, inlinedAt: !773)
!1641 = !DILocation(line: 365, column: 71, scope: !1494, inlinedAt: !773)
!1642 = !DILocation(line: 365, column: 32, scope: !1494, inlinedAt: !773)
!1643 = !DILocation(line: 365, column: 7, scope: !1495, inlinedAt: !773)
!1644 = distinct !{!1644, !1645, !1646}
!1645 = !DILocation(line: 365, column: 7, scope: !1495)
!1646 = !DILocation(line: 404, column: 9, scope: !1495)
!1647 = !DILocation(line: 407, column: 11, scope: !751, inlinedAt: !773)
!1648 = !DILocation(line: 409, column: 15, scope: !765, inlinedAt: !773)
!1649 = !DILocation(line: 411, column: 57, scope: !763, inlinedAt: !773)
!1650 = !DILocation(line: 411, column: 22, scope: !763, inlinedAt: !773)
!1651 = !DILocation(line: 412, column: 27, scope: !763, inlinedAt: !773)
!1652 = !DILocation(line: 413, column: 23, scope: !1653, inlinedAt: !773)
!1653 = distinct !DILexicalBlock(scope: !763, file: !3, line: 413, column: 19)
!1654 = !DILocation(line: 413, column: 19, scope: !763, inlinedAt: !773)
!1655 = !DILocation(line: 415, column: 19, scope: !1656, inlinedAt: !773)
!1656 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 414, column: 17)
!1657 = !DILocation(line: 416, column: 17, scope: !1656, inlinedAt: !773)
!1658 = !DILocation(line: 419, column: 19, scope: !1659, inlinedAt: !773)
!1659 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 418, column: 17)
!1660 = !DILocation(line: 420, column: 34, scope: !1659, inlinedAt: !773)
!1661 = !DILocation(line: 420, column: 49, scope: !1659, inlinedAt: !773)
!1662 = !DILocation(line: 420, column: 19, scope: !1659, inlinedAt: !773)
!1663 = !DILocation(line: 423, column: 26, scope: !769, inlinedAt: !773)
!1664 = !DILocation(line: 423, column: 20, scope: !764, inlinedAt: !773)
!1665 = !DILocation(line: 437, column: 22, scope: !768, inlinedAt: !773)
!1666 = !DILocation(line: 438, column: 33, scope: !768, inlinedAt: !773)
!1667 = !DILocation(line: 438, column: 22, scope: !768, inlinedAt: !773)
!1668 = !DILocation(line: 439, column: 27, scope: !768, inlinedAt: !773)
!1669 = !DILocation(line: 440, column: 30, scope: !768, inlinedAt: !773)
!1670 = !DILocation(line: 440, column: 15, scope: !768, inlinedAt: !773)
!1671 = !DILocation(line: 441, column: 13, scope: !768, inlinedAt: !773)
!1672 = !DILocation(line: 445, column: 21, scope: !1673, inlinedAt: !773)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 445, column: 7)
!1674 = distinct !DILexicalBlock(scope: !751, file: !3, line: 445, column: 7)
!1675 = !DILocation(line: 445, column: 7, scope: !1674, inlinedAt: !773)
!1676 = !DILocation(line: 446, column: 15, scope: !1673, inlinedAt: !773)
!1677 = !DILocation(line: 446, column: 9, scope: !1673, inlinedAt: !773)
!1678 = !DILocation(line: 445, column: 33, scope: !1673, inlinedAt: !773)
!1679 = distinct !{!1679, !1680, !1681}
!1680 = !DILocation(line: 445, column: 7, scope: !1674)
!1681 = !DILocation(line: 446, column: 19, scope: !1674)
!1682 = !DILocation(line: 447, column: 7, scope: !751, inlinedAt: !773)
!1683 = !DILocation(line: 450, column: 9, scope: !1684, inlinedAt: !773)
!1684 = distinct !DILexicalBlock(scope: !727, file: !3, line: 450, column: 7)
!1685 = !DILocation(line: 450, column: 24, scope: !1684, inlinedAt: !773)
!1686 = !DILocation(line: 450, column: 27, scope: !1684, inlinedAt: !773)
!1687 = !DILocation(line: 450, column: 72, scope: !1684, inlinedAt: !773)
!1688 = !DILocation(line: 450, column: 7, scope: !727, inlinedAt: !773)
!1689 = !DILocation(line: 452, column: 10, scope: !727, inlinedAt: !773)
!1690 = !DILocation(line: 469, column: 5, scope: !774, inlinedAt: !827)
!1691 = !DILocation(line: 474, column: 25, scope: !824, inlinedAt: !827)
!1692 = !DILocation(line: 474, column: 13, scope: !824, inlinedAt: !827)
!1693 = !DILocation(line: 475, column: 31, scope: !824, inlinedAt: !827)
!1694 = !DILocation(line: 475, column: 13, scope: !824, inlinedAt: !827)
!1695 = !DILocation(line: 477, column: 27, scope: !1696, inlinedAt: !827)
!1696 = distinct !DILexicalBlock(scope: !824, file: !3, line: 477, column: 11)
!1697 = !DILocation(line: 477, column: 11, scope: !824, inlinedAt: !827)
!1698 = !DILocation(line: 480, column: 62, scope: !824, inlinedAt: !827)
!1699 = !DILocation(line: 193, column: 14, scope: !899, inlinedAt: !1095)
!1700 = !DILocation(line: 193, column: 32, scope: !899, inlinedAt: !1095)
!1701 = !DILocation(line: 195, column: 3, scope: !899, inlinedAt: !1095)
!1702 = !DILocation(line: 196, column: 16, scope: !899, inlinedAt: !1095)
!1703 = !DILocation(line: 199, column: 12, scope: !899, inlinedAt: !1095)
!1704 = !DILocation(line: 199, column: 3, scope: !899, inlinedAt: !1095)
!1705 = !DILocation(line: 201, column: 26, scope: !908, inlinedAt: !1095)
!1706 = !DILocation(line: 201, column: 14, scope: !908, inlinedAt: !1095)
!1707 = !DILocation(line: 202, column: 23, scope: !908, inlinedAt: !1095)
!1708 = !DILocation(line: 202, column: 14, scope: !908, inlinedAt: !1095)
!1709 = !DILocation(line: 203, column: 18, scope: !1424, inlinedAt: !1095)
!1710 = !DILocation(line: 203, column: 11, scope: !908, inlinedAt: !1095)
!1711 = !DILocation(line: 206, column: 15, scope: !908, inlinedAt: !1095)
!1712 = !DILocation(line: 208, column: 18, scope: !1428, inlinedAt: !1095)
!1713 = !DILocation(line: 208, column: 34, scope: !1428, inlinedAt: !1095)
!1714 = !DILocation(line: 208, column: 23, scope: !1428, inlinedAt: !1095)
!1715 = !DILocation(line: 211, column: 7, scope: !908, inlinedAt: !1095)
!1716 = !DILocation(line: 215, column: 1, scope: !899, inlinedAt: !1095)
!1717 = !DILocation(line: 481, column: 11, scope: !824, inlinedAt: !827)
!1718 = !DILocation(line: 480, column: 27, scope: !824, inlinedAt: !827)
!1719 = !DILocation(line: 484, column: 7, scope: !824, inlinedAt: !827)
!1720 = !DILocation(line: 485, column: 7, scope: !824, inlinedAt: !827)
!1721 = !DILocation(line: 861, column: 5, scope: !830, inlinedAt: !842)
!1722 = !DILocation(line: 800, column: 3, scope: !1078, inlinedAt: !1093)
!1723 = !DILocation(line: 862, column: 7, scope: !831, inlinedAt: !842)
!1724 = !DILocation(line: 798, column: 25, scope: !1078, inlinedAt: !1093)
!1725 = !DILocation(line: 798, column: 39, scope: !1078, inlinedAt: !1093)
!1726 = !DILocation(line: 798, column: 53, scope: !1078, inlinedAt: !1093)
!1727 = !DILocation(line: 802, column: 3, scope: !1078, inlinedAt: !1093)
!1728 = !DILocation(line: 804, column: 27, scope: !1084, inlinedAt: !1093)
!1729 = !DILocation(line: 804, column: 14, scope: !1084, inlinedAt: !1093)
!1730 = !DILocation(line: 805, column: 14, scope: !1084, inlinedAt: !1093)
!1731 = !DILocation(line: 807, column: 11, scope: !1084, inlinedAt: !1093)
!1732 = !DILocation(line: 809, column: 21, scope: !1733, inlinedAt: !1093)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 808, column: 9)
!1734 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 807, column: 11)
!1735 = !DILocation(line: 809, column: 28, scope: !1733, inlinedAt: !1093)
!1736 = !DILocation(line: 809, column: 51, scope: !1733, inlinedAt: !1093)
!1737 = !DILocation(line: 809, column: 11, scope: !1733, inlinedAt: !1093)
!1738 = !DILocation(line: 814, column: 7, scope: !1084, inlinedAt: !1093)
!1739 = !DILocation(line: 815, column: 34, scope: !1088, inlinedAt: !1093)
!1740 = !DILocation(line: 815, column: 13, scope: !1088, inlinedAt: !1093)
!1741 = !DILocation(line: 815, column: 38, scope: !1088, inlinedAt: !1093)
!1742 = !DILocation(line: 815, column: 50, scope: !1088, inlinedAt: !1093)
!1743 = !DILocation(line: 815, column: 53, scope: !1088, inlinedAt: !1093)
!1744 = !DILocation(line: 815, column: 70, scope: !1088, inlinedAt: !1093)
!1745 = !DILocation(line: 815, column: 13, scope: !1084, inlinedAt: !1093)
!1746 = !DILocation(line: 821, column: 28, scope: !1091, inlinedAt: !1093)
!1747 = !DILocation(line: 821, column: 17, scope: !1091, inlinedAt: !1093)
!1748 = !DILocation(line: 821, column: 57, scope: !1091, inlinedAt: !1093)
!1749 = !DILocation(line: 821, column: 17, scope: !1087, inlinedAt: !1093)
!1750 = !DILocation(line: 823, column: 17, scope: !1090, inlinedAt: !1093)
!1751 = !DILocation(line: 823, column: 29, scope: !1090, inlinedAt: !1093)
!1752 = !DILocation(line: 463, column: 1, scope: !1112, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 824, column: 21, scope: !1754, inlinedAt: !1093)
!1754 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 824, column: 21)
!1755 = !DILocation(line: 465, column: 10, scope: !1112, inlinedAt: !1753)
!1756 = !DILocation(line: 824, column: 37, scope: !1754, inlinedAt: !1093)
!1757 = !DILocation(line: 824, column: 42, scope: !1754, inlinedAt: !1093)
!1758 = !DILocation(line: 824, column: 45, scope: !1754, inlinedAt: !1093)
!1759 = !DILocation(line: 824, column: 21, scope: !1090, inlinedAt: !1093)
!1760 = !DILocation(line: 825, column: 19, scope: !1754, inlinedAt: !1093)
!1761 = !DILocation(line: 826, column: 15, scope: !1091, inlinedAt: !1093)
!1762 = !DILocation(line: 826, column: 15, scope: !1090, inlinedAt: !1093)
!1763 = !DILocation(line: 814, column: 29, scope: !1084, inlinedAt: !1093)
!1764 = distinct !{!1764, !1765, !1766}
!1765 = !DILocation(line: 814, column: 7, scope: !1084)
!1766 = !DILocation(line: 828, column: 11, scope: !1084)
!1767 = !DILocation(line: 829, column: 7, scope: !1084, inlinedAt: !1093)
!1768 = distinct !{!1768, !1769, !1770}
!1769 = !DILocation(line: 802, column: 3, scope: !1078)
!1770 = !DILocation(line: 830, column: 5, scope: !1078)
!1771 = !DILocation(line: 832, column: 1, scope: !1078, inlinedAt: !1093)
!1772 = !DILocation(line: 863, column: 5, scope: !1054, inlinedAt: !842)
!1773 = !DILocation(line: 773, column: 25, scope: !1042, inlinedAt: !1053)
!1774 = !DILocation(line: 773, column: 39, scope: !1042, inlinedAt: !1053)
!1775 = !DILocation(line: 773, column: 53, scope: !1042, inlinedAt: !1053)
!1776 = !DILocation(line: 776, column: 10, scope: !1042, inlinedAt: !1053)
!1777 = !DILocation(line: 778, column: 3, scope: !1042, inlinedAt: !1053)
!1778 = !DILocation(line: 781, column: 26, scope: !1779, inlinedAt: !1053)
!1779 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 781, column: 11)
!1780 = !DILocation(line: 781, column: 11, scope: !1051, inlinedAt: !1053)
!1781 = !DILocation(line: 783, column: 20, scope: !1051, inlinedAt: !1053)
!1782 = !DILocation(line: 780, column: 14, scope: !1051, inlinedAt: !1053)
!1783 = !DILocation(line: 784, column: 11, scope: !1051, inlinedAt: !1053)
!1784 = !DILocation(line: 786, column: 21, scope: !1785, inlinedAt: !1053)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 785, column: 9)
!1786 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 784, column: 11)
!1787 = !DILocation(line: 786, column: 28, scope: !1785, inlinedAt: !1053)
!1788 = !DILocation(line: 786, column: 51, scope: !1785, inlinedAt: !1053)
!1789 = !DILocation(line: 786, column: 11, scope: !1785, inlinedAt: !1053)
!1790 = !DILocation(line: 791, column: 7, scope: !1051, inlinedAt: !1053)
!1791 = !DILocation(line: 792, column: 22, scope: !1051, inlinedAt: !1053)
!1792 = distinct !{!1792, !1793, !1794}
!1793 = !DILocation(line: 778, column: 3, scope: !1042)
!1794 = !DILocation(line: 793, column: 5, scope: !1042)
!1795 = !DILocation(line: 795, column: 1, scope: !1042, inlinedAt: !1053)
!1796 = !DILocation(line: 865, column: 5, scope: !1054, inlinedAt: !842)
!1797 = !DILocation(line: 894, column: 17, scope: !1798, inlinedAt: !854)
!1798 = distinct !DILexicalBlock(scope: !843, file: !3, line: 894, column: 7)
!1799 = !DILocation(line: 894, column: 20, scope: !1798, inlinedAt: !854)
!1800 = !DILocation(line: 894, column: 31, scope: !1798, inlinedAt: !854)
!1801 = !DILocation(line: 894, column: 7, scope: !843, inlinedAt: !854)
!1802 = !DILocation(line: 896, column: 17, scope: !1803, inlinedAt: !854)
!1803 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 895, column: 5)
!1804 = !DILocation(line: 896, column: 24, scope: !1803, inlinedAt: !854)
!1805 = !DILocation(line: 896, column: 49, scope: !1803, inlinedAt: !854)
!1806 = !DILocation(line: 896, column: 7, scope: !1803, inlinedAt: !854)
!1807 = !DILocation(line: 897, column: 7, scope: !1803, inlinedAt: !854)
!1808 = !DILocation(line: 1088, column: 8, scope: !855)
!1809 = !DILocation(line: 1087, column: 29, scope: !855)
!1810 = distinct !{!1810, !1040, !1811}
!1811 = !DILocation(line: 1088, column: 72, scope: !856)
!1812 = !DILocation(line: 1090, column: 23, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !49, file: !3, line: 1090, column: 7)
!1814 = !DILocation(line: 1090, column: 26, scope: !1813)
!1815 = !DILocation(line: 1090, column: 47, scope: !1813)
!1816 = !DILocation(line: 1090, column: 7, scope: !49)
!1817 = !DILocation(line: 1091, column: 5, scope: !1813)
!1818 = !DILocation(line: 1094, column: 1, scope: !49)
!1819 = distinct !DISubprogram(name: "elseek", scope: !3, file: !3, line: 223, type: !1820, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1822)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!34, !52, !34, !52, !41}
!1822 = !{!1823, !1824, !1825, !1826, !1827, !1828}
!1823 = !DILocalVariable(name: "fd", arg: 1, scope: !1819, file: !3, line: 223, type: !52)
!1824 = !DILocalVariable(name: "offset", arg: 2, scope: !1819, file: !3, line: 223, type: !34)
!1825 = !DILocalVariable(name: "whence", arg: 3, scope: !1819, file: !3, line: 223, type: !52)
!1826 = !DILocalVariable(name: "filename", arg: 4, scope: !1819, file: !3, line: 223, type: !41)
!1827 = !DILocalVariable(name: "new_offset", scope: !1819, file: !3, line: 225, type: !34)
!1828 = !DILocalVariable(name: "buf", scope: !1819, file: !3, line: 226, type: !78)
!1829 = !DILocation(line: 223, column: 13, scope: !1819)
!1830 = !DILocation(line: 223, column: 23, scope: !1819)
!1831 = !DILocation(line: 223, column: 35, scope: !1819)
!1832 = !DILocation(line: 223, column: 55, scope: !1819)
!1833 = !DILocation(line: 225, column: 22, scope: !1819)
!1834 = !DILocation(line: 225, column: 9, scope: !1819)
!1835 = !DILocation(line: 226, column: 3, scope: !1819)
!1836 = !DILocation(line: 226, column: 8, scope: !1819)
!1837 = !DILocation(line: 228, column: 18, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 228, column: 7)
!1839 = !DILocation(line: 228, column: 7, scope: !1819)
!1840 = !DILocation(line: 229, column: 15, scope: !1838)
!1841 = !DILocation(line: 230, column: 12, scope: !1838)
!1842 = !DILocation(line: 233, column: 12, scope: !1838)
!1843 = !DILocation(line: 234, column: 12, scope: !1838)
!1844 = !DILocation(line: 229, column: 5, scope: !1838)
!1845 = !DILocation(line: 237, column: 1, scope: !1819)
!1846 = !DILocation(line: 236, column: 3, scope: !1819)
!1847 = distinct !DISubprogram(name: "xwrite_stdout", scope: !3, file: !3, line: 179, type: !1848, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1850)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !41, !43}
!1850 = !{!1851, !1852}
!1851 = !DILocalVariable(name: "buffer", arg: 1, scope: !1847, file: !3, line: 179, type: !41)
!1852 = !DILocalVariable(name: "n_bytes", arg: 2, scope: !1847, file: !3, line: 179, type: !43)
!1853 = !DILocation(line: 179, column: 28, scope: !1847)
!1854 = !DILocation(line: 179, column: 43, scope: !1847)
!1855 = !DILocation(line: 181, column: 15, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 181, column: 7)
!1857 = !DILocation(line: 181, column: 19, scope: !1856)
!1858 = !DILocation(line: 181, column: 22, scope: !1856)
!1859 = !DILocation(line: 181, column: 58, scope: !1856)
!1860 = !DILocation(line: 181, column: 7, scope: !1847)
!1861 = !DILocation(line: 183, column: 7, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 182, column: 5)
!1863 = !DILocation(line: 184, column: 7, scope: !1862)
!1864 = !DILocation(line: 187, column: 1, scope: !1847)
!1865 = distinct !DISubprogram(name: "diagnose_copy_fd_failure", scope: !3, file: !3, line: 151, type: !1866, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1868)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{null, !24, !41}
!1868 = !{!1869, !1870}
!1869 = !DILocalVariable(name: "err", arg: 1, scope: !1865, file: !3, line: 151, type: !24)
!1870 = !DILocalVariable(name: "filename", arg: 2, scope: !1865, file: !3, line: 151, type: !41)
!1871 = !DILocation(line: 151, column: 47, scope: !1865)
!1872 = !DILocation(line: 151, column: 64, scope: !1865)
!1873 = !DILocation(line: 153, column: 3, scope: !1865)
!1874 = !DILocation(line: 156, column: 17, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 154, column: 5)
!1876 = !DILocation(line: 156, column: 24, scope: !1875)
!1877 = !DILocation(line: 156, column: 47, scope: !1875)
!1878 = !DILocation(line: 156, column: 7, scope: !1875)
!1879 = !DILocation(line: 157, column: 7, scope: !1875)
!1880 = !DILocation(line: 159, column: 17, scope: !1875)
!1881 = !DILocation(line: 159, column: 24, scope: !1875)
!1882 = !DILocation(line: 159, column: 59, scope: !1875)
!1883 = !DILocation(line: 159, column: 7, scope: !1875)
!1884 = !DILocation(line: 160, column: 7, scope: !1875)
!1885 = !DILocation(line: 162, column: 7, scope: !1875)
!1886 = !DILocation(line: 164, column: 1, scope: !1865)
!1887 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !142, file: !142, line: 41, type: !96, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !1888)
!1888 = !{!1889}
!1889 = !DILocalVariable(name: "file", arg: 1, scope: !1887, file: !142, line: 41, type: !41)
!1890 = !DILocation(line: 41, column: 41, scope: !1887)
!1891 = !DILocation(line: 43, column: 13, scope: !1887)
!1892 = !DILocation(line: 44, column: 1, scope: !1887)
!1893 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !142, file: !142, line: 78, type: !1894, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !1896)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{null, !59}
!1896 = !{!1897}
!1897 = !DILocalVariable(name: "ignore", arg: 1, scope: !1893, file: !142, line: 78, type: !59)
!1898 = !DILocation(line: 78, column: 37, scope: !1893)
!1899 = !DILocation(line: 80, column: 16, scope: !1893)
!1900 = !{!1901, !1901, i64 0}
!1901 = !{!"_Bool", !689, i64 0}
!1902 = !DILocation(line: 81, column: 1, scope: !1893)
!1903 = distinct !DISubprogram(name: "close_stdout", scope: !142, file: !142, line: 107, type: !696, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !1904)
!1904 = !{!1905}
!1905 = !DILocalVariable(name: "write_error", scope: !1906, file: !142, line: 112, type: !41)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !142, line: 111, column: 5)
!1907 = distinct !DILexicalBlock(scope: !1903, file: !142, line: 109, column: 7)
!1908 = !DILocation(line: 109, column: 21, scope: !1907)
!1909 = !DILocation(line: 109, column: 7, scope: !1907)
!1910 = !DILocation(line: 109, column: 29, scope: !1907)
!1911 = !DILocation(line: 110, column: 7, scope: !1907)
!1912 = !DILocation(line: 110, column: 12, scope: !1907)
!1913 = !{i8 0, i8 2}
!1914 = !DILocation(line: 114, column: 19, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1906, file: !142, line: 113, column: 11)
!1916 = !DILocation(line: 110, column: 25, scope: !1907)
!1917 = !DILocation(line: 110, column: 28, scope: !1907)
!1918 = !DILocation(line: 110, column: 34, scope: !1907)
!1919 = !DILocation(line: 109, column: 7, scope: !1903)
!1920 = !DILocation(line: 112, column: 33, scope: !1906)
!1921 = !DILocation(line: 112, column: 19, scope: !1906)
!1922 = !DILocation(line: 113, column: 11, scope: !1915)
!1923 = !DILocation(line: 113, column: 11, scope: !1906)
!1924 = !DILocation(line: 114, column: 36, scope: !1915)
!1925 = !DILocation(line: 114, column: 9, scope: !1915)
!1926 = !DILocation(line: 117, column: 9, scope: !1915)
!1927 = !DILocation(line: 119, column: 14, scope: !1906)
!1928 = !DILocation(line: 119, column: 7, scope: !1906)
!1929 = !DILocation(line: 122, column: 22, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1903, file: !142, line: 122, column: 8)
!1931 = !DILocation(line: 122, column: 8, scope: !1930)
!1932 = !DILocation(line: 122, column: 30, scope: !1930)
!1933 = !DILocation(line: 122, column: 8, scope: !1903)
!1934 = !DILocation(line: 123, column: 13, scope: !1930)
!1935 = !DILocation(line: 123, column: 6, scope: !1930)
!1936 = !DILocation(line: 124, column: 1, scope: !1903)
!1937 = distinct !DISubprogram(name: "full_read", scope: !1938, file: !1938, line: 58, type: !598, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !581, variables: !1939)
!1938 = !DIFile(filename: "./lib/full-write.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1939 = !{!1940, !1941, !1942, !1943, !1944, !1945}
!1940 = !DILocalVariable(name: "fd", arg: 1, scope: !1937, file: !1938, line: 58, type: !52)
!1941 = !DILocalVariable(name: "buf", arg: 2, scope: !1937, file: !1938, line: 58, type: !33)
!1942 = !DILocalVariable(name: "count", arg: 3, scope: !1937, file: !1938, line: 58, type: !43)
!1943 = !DILocalVariable(name: "total", scope: !1937, file: !1938, line: 60, type: !43)
!1944 = !DILocalVariable(name: "ptr", scope: !1937, file: !1938, line: 61, type: !31)
!1945 = !DILocalVariable(name: "n_rw", scope: !1946, file: !1938, line: 65, type: !43)
!1946 = distinct !DILexicalBlock(scope: !1937, file: !1938, line: 64, column: 5)
!1947 = !DILocation(line: 58, column: 14, scope: !1937)
!1948 = !DILocation(line: 58, column: 30, scope: !1937)
!1949 = !DILocation(line: 58, column: 42, scope: !1937)
!1950 = !DILocation(line: 60, column: 10, scope: !1937)
!1951 = !DILocation(line: 61, column: 15, scope: !1937)
!1952 = !DILocation(line: 63, column: 16, scope: !1937)
!1953 = !DILocation(line: 63, column: 3, scope: !1937)
!1954 = !DILocation(line: 65, column: 21, scope: !1946)
!1955 = !DILocation(line: 65, column: 14, scope: !1946)
!1956 = !DILocation(line: 66, column: 11, scope: !1946)
!1957 = !DILocation(line: 70, column: 11, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !1938, line: 69, column: 9)
!1959 = distinct !DILexicalBlock(scope: !1946, file: !1938, line: 68, column: 11)
!1960 = !DILocation(line: 70, column: 17, scope: !1958)
!1961 = !DILocation(line: 71, column: 11, scope: !1958)
!1962 = !DILocation(line: 73, column: 13, scope: !1946)
!1963 = !DILocation(line: 74, column: 11, scope: !1946)
!1964 = !DILocation(line: 75, column: 13, scope: !1946)
!1965 = distinct !{!1965, !1953, !1966}
!1966 = !DILocation(line: 76, column: 5, scope: !1937)
!1967 = !DILocation(line: 78, column: 3, scope: !1937)
!1968 = distinct !DISubprogram(name: "offtostr", scope: !1969, file: !1969, line: 36, type: !1970, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !1972)
!1969 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!31, !587, !31}
!1972 = !{!1973, !1974, !1975}
!1973 = !DILocalVariable(name: "i", arg: 1, scope: !1968, file: !1969, line: 36, type: !587)
!1974 = !DILocalVariable(name: "buf", arg: 2, scope: !1968, file: !1969, line: 36, type: !31)
!1975 = !DILocalVariable(name: "p", scope: !1968, file: !1969, line: 38, type: !31)
!1976 = !DILocation(line: 36, column: 19, scope: !1968)
!1977 = !DILocation(line: 36, column: 28, scope: !1968)
!1978 = !DILocation(line: 38, column: 17, scope: !1968)
!1979 = !DILocation(line: 38, column: 9, scope: !1968)
!1980 = !DILocation(line: 39, column: 6, scope: !1968)
!1981 = !DILocation(line: 41, column: 9, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1968, file: !1969, line: 41, column: 7)
!1983 = !DILocation(line: 41, column: 7, scope: !1968)
!1984 = distinct !{!1984, !1985, !1987}
!1985 = !DILocation(line: 51, column: 7, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1982, file: !1969, line: 50, column: 5)
!1987 = !DILocation(line: 53, column: 28, scope: !1986)
!1988 = !DILocation(line: 52, column: 24, scope: !1986)
!1989 = !DILocation(line: 44, column: 24, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1982, file: !1969, line: 42, column: 5)
!1991 = !DILocation(line: 44, column: 20, scope: !1990)
!1992 = !DILocation(line: 44, column: 16, scope: !1990)
!1993 = !DILocation(line: 44, column: 10, scope: !1990)
!1994 = !DILocation(line: 44, column: 14, scope: !1990)
!1995 = !DILocation(line: 45, column: 17, scope: !1990)
!1996 = !DILocation(line: 45, column: 24, scope: !1990)
!1997 = !DILocation(line: 44, column: 9, scope: !1990)
!1998 = distinct !{!1998, !1999, !2000}
!1999 = !DILocation(line: 43, column: 7, scope: !1990)
!2000 = !DILocation(line: 45, column: 28, scope: !1990)
!2001 = !DILocation(line: 47, column: 8, scope: !1990)
!2002 = !DILocation(line: 47, column: 12, scope: !1990)
!2003 = !DILocation(line: 48, column: 5, scope: !1990)
!2004 = !DILocation(line: 52, column: 20, scope: !1986)
!2005 = !DILocation(line: 52, column: 16, scope: !1986)
!2006 = !DILocation(line: 52, column: 10, scope: !1986)
!2007 = !DILocation(line: 52, column: 14, scope: !1986)
!2008 = !DILocation(line: 53, column: 17, scope: !1986)
!2009 = !DILocation(line: 53, column: 24, scope: !1986)
!2010 = !DILocation(line: 52, column: 9, scope: !1986)
!2011 = !DILocation(line: 56, column: 3, scope: !1968)
!2012 = distinct !DISubprogram(name: "umaxtostr", scope: !1969, file: !1969, line: 36, type: !2013, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !2015)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!31, !63, !31}
!2015 = !{!2016, !2017, !2018}
!2016 = !DILocalVariable(name: "i", arg: 1, scope: !2012, file: !1969, line: 36, type: !63)
!2017 = !DILocalVariable(name: "buf", arg: 2, scope: !2012, file: !1969, line: 36, type: !31)
!2018 = !DILocalVariable(name: "p", scope: !2012, file: !1969, line: 38, type: !31)
!2019 = !DILocation(line: 36, column: 19, scope: !2012)
!2020 = !DILocation(line: 36, column: 28, scope: !2012)
!2021 = !DILocation(line: 38, column: 17, scope: !2012)
!2022 = !DILocation(line: 38, column: 9, scope: !2012)
!2023 = !DILocation(line: 39, column: 6, scope: !2012)
!2024 = !DILocation(line: 51, column: 7, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !1969, line: 50, column: 5)
!2026 = distinct !DILexicalBlock(scope: !2012, file: !1969, line: 41, column: 7)
!2027 = distinct !{!2027, !2024, !2028}
!2028 = !DILocation(line: 53, column: 28, scope: !2025)
!2029 = !DILocation(line: 52, column: 24, scope: !2025)
!2030 = !DILocation(line: 52, column: 16, scope: !2025)
!2031 = !DILocation(line: 52, column: 10, scope: !2025)
!2032 = !DILocation(line: 52, column: 14, scope: !2025)
!2033 = !DILocation(line: 53, column: 17, scope: !2025)
!2034 = !DILocation(line: 53, column: 24, scope: !2025)
!2035 = !DILocation(line: 52, column: 9, scope: !2025)
!2036 = !DILocation(line: 56, column: 3, scope: !2012)
!2037 = distinct !DISubprogram(name: "set_program_name", scope: !156, file: !156, line: 39, type: !96, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !152, variables: !2038)
!2038 = !{!2039, !2040, !2041}
!2039 = !DILocalVariable(name: "argv0", arg: 1, scope: !2037, file: !156, line: 39, type: !41)
!2040 = !DILocalVariable(name: "slash", scope: !2037, file: !156, line: 46, type: !41)
!2041 = !DILocalVariable(name: "base", scope: !2037, file: !156, line: 47, type: !41)
!2042 = !DILocation(line: 39, column: 31, scope: !2037)
!2043 = !DILocation(line: 51, column: 13, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2037, file: !156, line: 51, column: 7)
!2045 = !DILocation(line: 51, column: 7, scope: !2037)
!2046 = !DILocation(line: 55, column: 14, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2044, file: !156, line: 52, column: 5)
!2048 = !DILocation(line: 54, column: 7, scope: !2047)
!2049 = !DILocation(line: 56, column: 7, scope: !2047)
!2050 = !DILocation(line: 59, column: 11, scope: !2037)
!2051 = !DILocation(line: 46, column: 15, scope: !2037)
!2052 = !DILocation(line: 60, column: 17, scope: !2037)
!2053 = !DILocation(line: 60, column: 33, scope: !2037)
!2054 = !DILocation(line: 60, column: 11, scope: !2037)
!2055 = !DILocation(line: 47, column: 15, scope: !2037)
!2056 = !DILocation(line: 61, column: 12, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2037, file: !156, line: 61, column: 7)
!2058 = !DILocation(line: 61, column: 20, scope: !2057)
!2059 = !DILocation(line: 61, column: 25, scope: !2057)
!2060 = !DILocation(line: 61, column: 42, scope: !2057)
!2061 = !DILocation(line: 61, column: 28, scope: !2057)
!2062 = !DILocation(line: 61, column: 61, scope: !2057)
!2063 = !DILocation(line: 61, column: 7, scope: !2037)
!2064 = !DILocation(line: 64, column: 11, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !156, line: 64, column: 11)
!2066 = distinct !DILexicalBlock(scope: !2057, file: !156, line: 62, column: 5)
!2067 = !DILocation(line: 64, column: 36, scope: !2065)
!2068 = !DILocation(line: 64, column: 11, scope: !2066)
!2069 = !DILocation(line: 66, column: 24, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2065, file: !156, line: 65, column: 9)
!2071 = !DILocation(line: 70, column: 41, scope: !2070)
!2072 = !DILocation(line: 72, column: 9, scope: !2070)
!2073 = !DILocation(line: 84, column: 16, scope: !2037)
!2074 = !DILocation(line: 90, column: 27, scope: !2037)
!2075 = !DILocation(line: 92, column: 1, scope: !2037)
!2076 = distinct !DISubprogram(name: "clone_quoting_options", scope: !187, file: !187, line: 114, type: !2077, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2080)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!2079, !2079}
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!2080 = !{!2081, !2082, !2083}
!2081 = !DILocalVariable(name: "o", arg: 1, scope: !2076, file: !187, line: 114, type: !2079)
!2082 = !DILocalVariable(name: "e", scope: !2076, file: !187, line: 116, type: !52)
!2083 = !DILocalVariable(name: "p", scope: !2076, file: !187, line: 117, type: !2079)
!2084 = !DILocation(line: 114, column: 48, scope: !2076)
!2085 = !DILocation(line: 116, column: 11, scope: !2076)
!2086 = !DILocation(line: 116, column: 7, scope: !2076)
!2087 = !DILocation(line: 117, column: 40, scope: !2076)
!2088 = !DILocation(line: 117, column: 31, scope: !2076)
!2089 = !DILocation(line: 117, column: 27, scope: !2076)
!2090 = !DILocation(line: 119, column: 9, scope: !2076)
!2091 = !DILocation(line: 120, column: 3, scope: !2076)
!2092 = distinct !DISubprogram(name: "get_quoting_style", scope: !187, file: !187, line: 125, type: !2093, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2097)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!10, !2095}
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!2097 = !{!2098}
!2098 = !DILocalVariable(name: "o", arg: 1, scope: !2092, file: !187, line: 125, type: !2095)
!2099 = !DILocation(line: 125, column: 50, scope: !2092)
!2100 = !DILocation(line: 127, column: 11, scope: !2092)
!2101 = !DILocation(line: 127, column: 46, scope: !2092)
!2102 = !{!2103, !689, i64 0}
!2103 = !{!"quoting_options", !689, i64 0, !1021, i64 4, !689, i64 8, !688, i64 40, !688, i64 48}
!2104 = !DILocation(line: 127, column: 3, scope: !2092)
!2105 = distinct !DISubprogram(name: "set_quoting_style", scope: !187, file: !187, line: 133, type: !2106, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2108)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{null, !2079, !10}
!2108 = !{!2109, !2110}
!2109 = !DILocalVariable(name: "o", arg: 1, scope: !2105, file: !187, line: 133, type: !2079)
!2110 = !DILocalVariable(name: "s", arg: 2, scope: !2105, file: !187, line: 133, type: !10)
!2111 = !DILocation(line: 133, column: 44, scope: !2105)
!2112 = !DILocation(line: 133, column: 66, scope: !2105)
!2113 = !DILocation(line: 135, column: 4, scope: !2105)
!2114 = !DILocation(line: 135, column: 39, scope: !2105)
!2115 = !DILocation(line: 135, column: 45, scope: !2105)
!2116 = !DILocation(line: 136, column: 1, scope: !2105)
!2117 = distinct !DISubprogram(name: "set_char_quoting", scope: !187, file: !187, line: 144, type: !2118, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2120)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!52, !2079, !32, !52}
!2120 = !{!2121, !2122, !2123, !2124, !2125, !2127, !2128}
!2121 = !DILocalVariable(name: "o", arg: 1, scope: !2117, file: !187, line: 144, type: !2079)
!2122 = !DILocalVariable(name: "c", arg: 2, scope: !2117, file: !187, line: 144, type: !32)
!2123 = !DILocalVariable(name: "i", arg: 3, scope: !2117, file: !187, line: 144, type: !52)
!2124 = !DILocalVariable(name: "uc", scope: !2117, file: !187, line: 146, type: !577)
!2125 = !DILocalVariable(name: "p", scope: !2117, file: !187, line: 147, type: !2126)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!2127 = !DILocalVariable(name: "shift", scope: !2117, file: !187, line: 149, type: !52)
!2128 = !DILocalVariable(name: "r", scope: !2117, file: !187, line: 150, type: !52)
!2129 = !DILocation(line: 144, column: 43, scope: !2117)
!2130 = !DILocation(line: 144, column: 51, scope: !2117)
!2131 = !DILocation(line: 144, column: 58, scope: !2117)
!2132 = !DILocation(line: 146, column: 17, scope: !2117)
!2133 = !DILocation(line: 148, column: 6, scope: !2117)
!2134 = !DILocation(line: 148, column: 62, scope: !2117)
!2135 = !DILocation(line: 148, column: 57, scope: !2117)
!2136 = !DILocation(line: 147, column: 17, scope: !2117)
!2137 = !DILocation(line: 149, column: 18, scope: !2117)
!2138 = !DILocation(line: 149, column: 15, scope: !2117)
!2139 = !DILocation(line: 149, column: 7, scope: !2117)
!2140 = !DILocation(line: 150, column: 12, scope: !2117)
!2141 = !DILocation(line: 150, column: 15, scope: !2117)
!2142 = !DILocation(line: 150, column: 25, scope: !2117)
!2143 = !DILocation(line: 150, column: 7, scope: !2117)
!2144 = !DILocation(line: 151, column: 13, scope: !2117)
!2145 = !DILocation(line: 151, column: 18, scope: !2117)
!2146 = !DILocation(line: 151, column: 23, scope: !2117)
!2147 = !DILocation(line: 151, column: 6, scope: !2117)
!2148 = !DILocation(line: 152, column: 3, scope: !2117)
!2149 = distinct !DISubprogram(name: "set_quoting_flags", scope: !187, file: !187, line: 160, type: !2150, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2152)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!52, !2079, !52}
!2152 = !{!2153, !2154, !2155}
!2153 = !DILocalVariable(name: "o", arg: 1, scope: !2149, file: !187, line: 160, type: !2079)
!2154 = !DILocalVariable(name: "i", arg: 2, scope: !2149, file: !187, line: 160, type: !52)
!2155 = !DILocalVariable(name: "r", scope: !2149, file: !187, line: 162, type: !52)
!2156 = !DILocation(line: 160, column: 44, scope: !2149)
!2157 = !DILocation(line: 160, column: 51, scope: !2149)
!2158 = !DILocation(line: 163, column: 8, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2149, file: !187, line: 163, column: 7)
!2160 = !DILocation(line: 163, column: 7, scope: !2149)
!2161 = !DILocation(line: 165, column: 10, scope: !2149)
!2162 = !{!2103, !1021, i64 4}
!2163 = !DILocation(line: 162, column: 7, scope: !2149)
!2164 = !DILocation(line: 166, column: 12, scope: !2149)
!2165 = !DILocation(line: 167, column: 3, scope: !2149)
!2166 = distinct !DISubprogram(name: "set_custom_quoting", scope: !187, file: !187, line: 171, type: !2167, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2169)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{null, !2079, !41, !41}
!2169 = !{!2170, !2171, !2172}
!2170 = !DILocalVariable(name: "o", arg: 1, scope: !2166, file: !187, line: 171, type: !2079)
!2171 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2166, file: !187, line: 172, type: !41)
!2172 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2166, file: !187, line: 172, type: !41)
!2173 = !DILocation(line: 171, column: 45, scope: !2166)
!2174 = !DILocation(line: 172, column: 33, scope: !2166)
!2175 = !DILocation(line: 172, column: 57, scope: !2166)
!2176 = !DILocation(line: 174, column: 8, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2166, file: !187, line: 174, column: 7)
!2178 = !DILocation(line: 174, column: 7, scope: !2166)
!2179 = !DILocation(line: 176, column: 6, scope: !2166)
!2180 = !DILocation(line: 176, column: 12, scope: !2166)
!2181 = !DILocation(line: 177, column: 8, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2166, file: !187, line: 177, column: 7)
!2183 = !DILocation(line: 177, column: 23, scope: !2182)
!2184 = !DILocation(line: 177, column: 19, scope: !2182)
!2185 = !DILocation(line: 178, column: 5, scope: !2182)
!2186 = !DILocation(line: 179, column: 6, scope: !2166)
!2187 = !DILocation(line: 179, column: 17, scope: !2166)
!2188 = !{!2103, !688, i64 40}
!2189 = !DILocation(line: 180, column: 6, scope: !2166)
!2190 = !DILocation(line: 180, column: 18, scope: !2166)
!2191 = !{!2103, !688, i64 48}
!2192 = !DILocation(line: 181, column: 1, scope: !2166)
!2193 = distinct !DISubprogram(name: "quotearg_buffer", scope: !187, file: !187, line: 776, type: !2194, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2196)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!43, !31, !43, !41, !43, !2095}
!2196 = !{!2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204}
!2197 = !DILocalVariable(name: "buffer", arg: 1, scope: !2193, file: !187, line: 776, type: !31)
!2198 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2193, file: !187, line: 776, type: !43)
!2199 = !DILocalVariable(name: "arg", arg: 3, scope: !2193, file: !187, line: 777, type: !41)
!2200 = !DILocalVariable(name: "argsize", arg: 4, scope: !2193, file: !187, line: 777, type: !43)
!2201 = !DILocalVariable(name: "o", arg: 5, scope: !2193, file: !187, line: 778, type: !2095)
!2202 = !DILocalVariable(name: "p", scope: !2193, file: !187, line: 780, type: !2095)
!2203 = !DILocalVariable(name: "e", scope: !2193, file: !187, line: 781, type: !52)
!2204 = !DILocalVariable(name: "r", scope: !2193, file: !187, line: 782, type: !43)
!2205 = !DILocation(line: 776, column: 24, scope: !2193)
!2206 = !DILocation(line: 776, column: 39, scope: !2193)
!2207 = !DILocation(line: 777, column: 30, scope: !2193)
!2208 = !DILocation(line: 777, column: 42, scope: !2193)
!2209 = !DILocation(line: 778, column: 48, scope: !2193)
!2210 = !DILocation(line: 780, column: 37, scope: !2193)
!2211 = !DILocation(line: 780, column: 33, scope: !2193)
!2212 = !DILocation(line: 781, column: 11, scope: !2193)
!2213 = !DILocation(line: 781, column: 7, scope: !2193)
!2214 = !DILocation(line: 783, column: 43, scope: !2193)
!2215 = !DILocation(line: 783, column: 53, scope: !2193)
!2216 = !DILocation(line: 783, column: 60, scope: !2193)
!2217 = !DILocation(line: 784, column: 43, scope: !2193)
!2218 = !DILocation(line: 784, column: 58, scope: !2193)
!2219 = !DILocation(line: 782, column: 14, scope: !2193)
!2220 = !DILocation(line: 782, column: 10, scope: !2193)
!2221 = !DILocation(line: 785, column: 9, scope: !2193)
!2222 = !DILocation(line: 786, column: 3, scope: !2193)
!2223 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !187, file: !187, line: 248, type: !2224, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2228)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!43, !31, !43, !41, !43, !10, !52, !2226, !41, !41}
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!2228 = !{!2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2253, !2254, !2255, !2256, !2257, !2260, !2261, !2279, !2282, !2283, !2290}
!2229 = !DILocalVariable(name: "buffer", arg: 1, scope: !2223, file: !187, line: 248, type: !31)
!2230 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2223, file: !187, line: 248, type: !43)
!2231 = !DILocalVariable(name: "arg", arg: 3, scope: !2223, file: !187, line: 249, type: !41)
!2232 = !DILocalVariable(name: "argsize", arg: 4, scope: !2223, file: !187, line: 249, type: !43)
!2233 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2223, file: !187, line: 250, type: !10)
!2234 = !DILocalVariable(name: "flags", arg: 6, scope: !2223, file: !187, line: 250, type: !52)
!2235 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2223, file: !187, line: 251, type: !2226)
!2236 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2223, file: !187, line: 252, type: !41)
!2237 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2223, file: !187, line: 253, type: !41)
!2238 = !DILocalVariable(name: "i", scope: !2223, file: !187, line: 255, type: !43)
!2239 = !DILocalVariable(name: "len", scope: !2223, file: !187, line: 256, type: !43)
!2240 = !DILocalVariable(name: "orig_buffersize", scope: !2223, file: !187, line: 257, type: !43)
!2241 = !DILocalVariable(name: "quote_string", scope: !2223, file: !187, line: 258, type: !41)
!2242 = !DILocalVariable(name: "quote_string_len", scope: !2223, file: !187, line: 259, type: !43)
!2243 = !DILocalVariable(name: "backslash_escapes", scope: !2223, file: !187, line: 260, type: !59)
!2244 = !DILocalVariable(name: "unibyte_locale", scope: !2223, file: !187, line: 261, type: !59)
!2245 = !DILocalVariable(name: "elide_outer_quotes", scope: !2223, file: !187, line: 262, type: !59)
!2246 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2223, file: !187, line: 263, type: !59)
!2247 = !DILocalVariable(name: "encountered_single_quote", scope: !2223, file: !187, line: 264, type: !59)
!2248 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2223, file: !187, line: 265, type: !59)
!2249 = !DILocalVariable(name: "c", scope: !2250, file: !187, line: 394, type: !577)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !187, line: 393, column: 5)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !187, line: 392, column: 3)
!2252 = distinct !DILexicalBlock(scope: !2223, file: !187, line: 392, column: 3)
!2253 = !DILocalVariable(name: "esc", scope: !2250, file: !187, line: 395, type: !577)
!2254 = !DILocalVariable(name: "is_right_quote", scope: !2250, file: !187, line: 396, type: !59)
!2255 = !DILocalVariable(name: "escaping", scope: !2250, file: !187, line: 397, type: !59)
!2256 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2250, file: !187, line: 398, type: !59)
!2257 = !DILocalVariable(name: "m", scope: !2258, file: !187, line: 602, type: !43)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !187, line: 600, column: 11)
!2259 = distinct !DILexicalBlock(scope: !2250, file: !187, line: 418, column: 9)
!2260 = !DILocalVariable(name: "printable", scope: !2258, file: !187, line: 604, type: !59)
!2261 = !DILocalVariable(name: "mbstate", scope: !2262, file: !187, line: 613, type: !2264)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !187, line: 612, column: 15)
!2263 = distinct !DILexicalBlock(scope: !2258, file: !187, line: 606, column: 17)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2265, line: 6, baseType: !2266)
!2265 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2267, line: 21, baseType: !2268)
!2267 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2267, line: 13, size: 64, elements: !2269)
!2269 = !{!2270, !2271}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2268, file: !2267, line: 15, baseType: !52, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2268, file: !2267, line: 20, baseType: !2272, size: 32, offset: 32)
!2272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2268, file: !2267, line: 16, size: 32, elements: !2273)
!2273 = !{!2274, !2275}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2272, file: !2267, line: 18, baseType: !30, size: 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2272, file: !2267, line: 19, baseType: !2276, size: 32)
!2276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 32, elements: !2277)
!2277 = !{!2278}
!2278 = !DISubrange(count: 4)
!2279 = !DILocalVariable(name: "w", scope: !2280, file: !187, line: 623, type: !2281)
!2280 = distinct !DILexicalBlock(scope: !2262, file: !187, line: 622, column: 19)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !44, line: 90, baseType: !52)
!2282 = !DILocalVariable(name: "bytes", scope: !2280, file: !187, line: 624, type: !43)
!2283 = !DILocalVariable(name: "j", scope: !2284, file: !187, line: 649, type: !43)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !187, line: 648, column: 27)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !187, line: 646, column: 29)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !187, line: 641, column: 23)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !187, line: 633, column: 30)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !187, line: 628, column: 30)
!2289 = distinct !DILexicalBlock(scope: !2280, file: !187, line: 626, column: 25)
!2290 = !DILocalVariable(name: "ilim", scope: !2291, file: !187, line: 676, type: !43)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !187, line: 673, column: 15)
!2292 = distinct !DILexicalBlock(scope: !2258, file: !187, line: 672, column: 17)
!2293 = !DILocation(line: 248, column: 33, scope: !2223)
!2294 = !DILocation(line: 248, column: 48, scope: !2223)
!2295 = !DILocation(line: 249, column: 39, scope: !2223)
!2296 = !DILocation(line: 249, column: 51, scope: !2223)
!2297 = !DILocation(line: 250, column: 46, scope: !2223)
!2298 = !DILocation(line: 250, column: 65, scope: !2223)
!2299 = !DILocation(line: 251, column: 47, scope: !2223)
!2300 = !DILocation(line: 252, column: 39, scope: !2223)
!2301 = !DILocation(line: 253, column: 39, scope: !2223)
!2302 = !DILocation(line: 256, column: 10, scope: !2223)
!2303 = !DILocation(line: 257, column: 10, scope: !2223)
!2304 = !DILocation(line: 258, column: 15, scope: !2223)
!2305 = !DILocation(line: 259, column: 10, scope: !2223)
!2306 = !DILocation(line: 260, column: 8, scope: !2223)
!2307 = !DILocation(line: 261, column: 25, scope: !2223)
!2308 = !DILocation(line: 261, column: 36, scope: !2223)
!2309 = !DILocation(line: 262, column: 8, scope: !2223)
!2310 = !DILocation(line: 263, column: 8, scope: !2223)
!2311 = !DILocation(line: 264, column: 8, scope: !2223)
!2312 = !DILocation(line: 265, column: 8, scope: !2223)
!2313 = !DILocation(line: 265, column: 3, scope: !2223)
!2314 = !DILocation(line: 308, column: 3, scope: !2223)
!2315 = !DILocation(line: 315, column: 11, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2223, file: !187, line: 309, column: 5)
!2317 = !DILocation(line: 315, column: 12, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2316, file: !187, line: 315, column: 11)
!2319 = !DILocation(line: 316, column: 9, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !187, line: 316, column: 9)
!2321 = distinct !DILexicalBlock(scope: !2318, file: !187, line: 316, column: 9)
!2322 = !DILocation(line: 316, column: 9, scope: !2321)
!2323 = !DILocation(line: 354, column: 26, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !187, line: 332, column: 11)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !187, line: 331, column: 13)
!2326 = distinct !DILexicalBlock(scope: !2316, file: !187, line: 330, column: 7)
!2327 = !DILocation(line: 355, column: 27, scope: !2324)
!2328 = !DILocation(line: 356, column: 11, scope: !2324)
!2329 = !DILocation(line: 357, column: 14, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2326, file: !187, line: 357, column: 13)
!2331 = !DILocation(line: 357, column: 13, scope: !2326)
!2332 = !DILocation(line: 358, column: 43, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !187, line: 358, column: 11)
!2334 = distinct !DILexicalBlock(scope: !2330, file: !187, line: 358, column: 11)
!2335 = !DILocation(line: 358, column: 11, scope: !2334)
!2336 = !DILocation(line: 359, column: 13, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !187, line: 359, column: 13)
!2338 = distinct !DILexicalBlock(scope: !2333, file: !187, line: 359, column: 13)
!2339 = !DILocation(line: 359, column: 13, scope: !2338)
!2340 = !DILocation(line: 358, column: 70, scope: !2333)
!2341 = distinct !{!2341, !2335, !2342}
!2342 = !DILocation(line: 359, column: 13, scope: !2334)
!2343 = !DILocation(line: 362, column: 28, scope: !2326)
!2344 = !DILocation(line: 364, column: 7, scope: !2316)
!2345 = !DILocation(line: 367, column: 7, scope: !2316)
!2346 = !DILocation(line: 370, column: 7, scope: !2316)
!2347 = !DILocation(line: 373, column: 12, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2316, file: !187, line: 373, column: 11)
!2349 = !DILocation(line: 373, column: 11, scope: !2316)
!2350 = !DILocation(line: 378, column: 12, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2316, file: !187, line: 378, column: 11)
!2352 = !DILocation(line: 378, column: 11, scope: !2316)
!2353 = !DILocation(line: 379, column: 9, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !187, line: 379, column: 9)
!2355 = distinct !DILexicalBlock(scope: !2351, file: !187, line: 379, column: 9)
!2356 = !DILocation(line: 379, column: 9, scope: !2355)
!2357 = !DILocation(line: 386, column: 7, scope: !2316)
!2358 = !DILocation(line: 389, column: 7, scope: !2316)
!2359 = !DILocation(line: 255, column: 10, scope: !2223)
!2360 = !DILocation(line: 392, column: 8, scope: !2252)
!2361 = !DILocation(line: 392, column: 27, scope: !2251)
!2362 = !DILocation(line: 392, column: 19, scope: !2251)
!2363 = !DILocation(line: 392, column: 60, scope: !2251)
!2364 = !DILocation(line: 392, column: 3, scope: !2252)
!2365 = !DILocation(line: 392, column: 41, scope: !2251)
!2366 = !DILocation(line: 392, column: 48, scope: !2251)
!2367 = !DILocation(line: 396, column: 12, scope: !2250)
!2368 = !DILocation(line: 397, column: 12, scope: !2250)
!2369 = !DILocation(line: 398, column: 12, scope: !2250)
!2370 = !DILocation(line: 401, column: 11, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2250, file: !187, line: 400, column: 11)
!2372 = !DILocation(line: 403, column: 17, scope: !2371)
!2373 = !DILocation(line: 404, column: 39, scope: !2371)
!2374 = !DILocation(line: 408, column: 32, scope: !2371)
!2375 = !DILocation(line: 404, column: 19, scope: !2371)
!2376 = !DILocation(line: 404, column: 15, scope: !2371)
!2377 = !DILocation(line: 409, column: 11, scope: !2371)
!2378 = !DILocation(line: 409, column: 26, scope: !2371)
!2379 = !DILocation(line: 409, column: 14, scope: !2371)
!2380 = !DILocation(line: 409, column: 63, scope: !2371)
!2381 = !DILocation(line: 400, column: 11, scope: !2250)
!2382 = !DILocation(line: 416, column: 11, scope: !2250)
!2383 = !DILocation(line: 394, column: 21, scope: !2250)
!2384 = !DILocation(line: 417, column: 7, scope: !2250)
!2385 = !DILocation(line: 420, column: 15, scope: !2259)
!2386 = !DILocation(line: 422, column: 15, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !187, line: 422, column: 15)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !187, line: 421, column: 13)
!2389 = distinct !DILexicalBlock(scope: !2259, file: !187, line: 420, column: 15)
!2390 = !DILocation(line: 422, column: 15, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2387, file: !187, line: 422, column: 15)
!2392 = !DILocation(line: 422, column: 15, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !187, line: 422, column: 15)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !187, line: 422, column: 15)
!2395 = distinct !DILexicalBlock(scope: !2391, file: !187, line: 422, column: 15)
!2396 = !DILocation(line: 422, column: 15, scope: !2394)
!2397 = !DILocation(line: 422, column: 15, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !187, line: 422, column: 15)
!2399 = distinct !DILexicalBlock(scope: !2395, file: !187, line: 422, column: 15)
!2400 = !DILocation(line: 422, column: 15, scope: !2399)
!2401 = !DILocation(line: 422, column: 15, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !187, line: 422, column: 15)
!2403 = distinct !DILexicalBlock(scope: !2395, file: !187, line: 422, column: 15)
!2404 = !DILocation(line: 422, column: 15, scope: !2403)
!2405 = !DILocation(line: 422, column: 15, scope: !2395)
!2406 = !DILocation(line: 422, column: 15, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !187, line: 422, column: 15)
!2408 = distinct !DILexicalBlock(scope: !2387, file: !187, line: 422, column: 15)
!2409 = !DILocation(line: 422, column: 15, scope: !2408)
!2410 = !DILocation(line: 430, column: 19, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2388, file: !187, line: 429, column: 19)
!2412 = !DILocation(line: 430, column: 24, scope: !2411)
!2413 = !DILocation(line: 430, column: 28, scope: !2411)
!2414 = !DILocation(line: 430, column: 38, scope: !2411)
!2415 = !DILocation(line: 430, column: 48, scope: !2411)
!2416 = !DILocation(line: 430, column: 59, scope: !2411)
!2417 = !DILocation(line: 432, column: 19, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !187, line: 432, column: 19)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !187, line: 432, column: 19)
!2420 = distinct !DILexicalBlock(scope: !2411, file: !187, line: 431, column: 17)
!2421 = !DILocation(line: 432, column: 19, scope: !2419)
!2422 = !DILocation(line: 433, column: 19, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !187, line: 433, column: 19)
!2424 = distinct !DILexicalBlock(scope: !2420, file: !187, line: 433, column: 19)
!2425 = !DILocation(line: 433, column: 19, scope: !2424)
!2426 = !DILocation(line: 434, column: 17, scope: !2420)
!2427 = !DILocation(line: 441, column: 20, scope: !2389)
!2428 = !DILocation(line: 446, column: 11, scope: !2259)
!2429 = !DILocation(line: 449, column: 19, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2259, file: !187, line: 447, column: 13)
!2431 = !DILocation(line: 455, column: 19, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2430, file: !187, line: 454, column: 19)
!2433 = !DILocation(line: 455, column: 24, scope: !2432)
!2434 = !DILocation(line: 455, column: 28, scope: !2432)
!2435 = !DILocation(line: 455, column: 38, scope: !2432)
!2436 = !DILocation(line: 455, column: 47, scope: !2432)
!2437 = !DILocation(line: 455, column: 41, scope: !2432)
!2438 = !DILocation(line: 455, column: 52, scope: !2432)
!2439 = !DILocation(line: 454, column: 19, scope: !2430)
!2440 = !DILocation(line: 456, column: 25, scope: !2432)
!2441 = !DILocation(line: 456, column: 17, scope: !2432)
!2442 = !DILocation(line: 463, column: 25, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2432, file: !187, line: 457, column: 19)
!2444 = !DILocation(line: 467, column: 21, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !187, line: 467, column: 21)
!2446 = distinct !DILexicalBlock(scope: !2443, file: !187, line: 467, column: 21)
!2447 = !DILocation(line: 467, column: 21, scope: !2446)
!2448 = !DILocation(line: 468, column: 21, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !187, line: 468, column: 21)
!2450 = distinct !DILexicalBlock(scope: !2443, file: !187, line: 468, column: 21)
!2451 = !DILocation(line: 468, column: 21, scope: !2450)
!2452 = !DILocation(line: 469, column: 21, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !187, line: 469, column: 21)
!2454 = distinct !DILexicalBlock(scope: !2443, file: !187, line: 469, column: 21)
!2455 = !DILocation(line: 469, column: 21, scope: !2454)
!2456 = !DILocation(line: 470, column: 21, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !187, line: 470, column: 21)
!2458 = distinct !DILexicalBlock(scope: !2443, file: !187, line: 470, column: 21)
!2459 = !DILocation(line: 470, column: 21, scope: !2458)
!2460 = !DILocation(line: 471, column: 21, scope: !2443)
!2461 = !DILocation(line: 395, column: 21, scope: !2250)
!2462 = !DILocation(line: 484, column: 31, scope: !2259)
!2463 = !DILocation(line: 485, column: 31, scope: !2259)
!2464 = !DILocation(line: 487, column: 31, scope: !2259)
!2465 = !DILocation(line: 488, column: 31, scope: !2259)
!2466 = !DILocation(line: 489, column: 31, scope: !2259)
!2467 = !DILocation(line: 492, column: 15, scope: !2259)
!2468 = !DILocation(line: 494, column: 19, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !187, line: 493, column: 13)
!2470 = distinct !DILexicalBlock(scope: !2259, file: !187, line: 492, column: 15)
!2471 = !DILocation(line: 501, column: 33, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2259, file: !187, line: 501, column: 15)
!2473 = !DILocation(line: 506, column: 15, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2259, file: !187, line: 505, column: 15)
!2475 = !DILocation(line: 510, column: 15, scope: !2259)
!2476 = !DILocation(line: 518, column: 26, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2259, file: !187, line: 518, column: 15)
!2478 = !DILocation(line: 518, column: 15, scope: !2259)
!2479 = !DILocation(line: 518, column: 40, scope: !2477)
!2480 = !DILocation(line: 518, column: 47, scope: !2477)
!2481 = !DILocation(line: 522, column: 17, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2259, file: !187, line: 522, column: 15)
!2483 = !DILocation(line: 518, column: 18, scope: !2477)
!2484 = !DILocation(line: 518, column: 65, scope: !2477)
!2485 = !DILocation(line: 522, column: 15, scope: !2259)
!2486 = !DILocation(line: 526, column: 11, scope: !2259)
!2487 = !DILocation(line: 541, column: 15, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2259, file: !187, line: 540, column: 15)
!2489 = !DILocation(line: 548, column: 15, scope: !2259)
!2490 = !DILocation(line: 550, column: 19, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !187, line: 549, column: 13)
!2492 = distinct !DILexicalBlock(scope: !2259, file: !187, line: 548, column: 15)
!2493 = !DILocation(line: 553, column: 19, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2491, file: !187, line: 553, column: 19)
!2495 = !DILocation(line: 553, column: 35, scope: !2494)
!2496 = !DILocation(line: 553, column: 30, scope: !2494)
!2497 = !DILocation(line: 562, column: 15, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !187, line: 562, column: 15)
!2499 = distinct !DILexicalBlock(scope: !2491, file: !187, line: 562, column: 15)
!2500 = !DILocation(line: 562, column: 15, scope: !2499)
!2501 = !DILocation(line: 563, column: 15, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !187, line: 563, column: 15)
!2503 = distinct !DILexicalBlock(scope: !2491, file: !187, line: 563, column: 15)
!2504 = !DILocation(line: 563, column: 15, scope: !2503)
!2505 = !DILocation(line: 564, column: 15, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !187, line: 564, column: 15)
!2507 = distinct !DILexicalBlock(scope: !2491, file: !187, line: 564, column: 15)
!2508 = !DILocation(line: 564, column: 15, scope: !2507)
!2509 = !DILocation(line: 566, column: 13, scope: !2491)
!2510 = !DILocation(line: 606, column: 17, scope: !2258)
!2511 = !DILocation(line: 602, column: 20, scope: !2258)
!2512 = !DILocation(line: 609, column: 29, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2263, file: !187, line: 607, column: 15)
!2514 = !{!2515, !2515, i64 0}
!2515 = !{!"short", !689, i64 0}
!2516 = !DILocation(line: 609, column: 27, scope: !2513)
!2517 = !DILocation(line: 604, column: 18, scope: !2258)
!2518 = !DILocation(line: 610, column: 15, scope: !2513)
!2519 = !DILocation(line: 613, column: 17, scope: !2262)
!2520 = !DILocation(line: 614, column: 17, scope: !2262)
!2521 = !DILocation(line: 618, column: 29, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2262, file: !187, line: 618, column: 21)
!2523 = !DILocation(line: 618, column: 21, scope: !2262)
!2524 = !DILocation(line: 619, column: 29, scope: !2522)
!2525 = !DILocation(line: 619, column: 19, scope: !2522)
!2526 = !DILocation(line: 621, column: 17, scope: !2262)
!2527 = distinct !{!2527, !2526, !2528}
!2528 = !DILocation(line: 667, column: 44, scope: !2262)
!2529 = !DILocation(line: 623, column: 21, scope: !2280)
!2530 = !DILocation(line: 624, column: 56, scope: !2280)
!2531 = !DILocation(line: 624, column: 50, scope: !2280)
!2532 = !DILocation(line: 625, column: 53, scope: !2280)
!2533 = !DILocation(line: 613, column: 27, scope: !2262)
!2534 = !DILocation(line: 623, column: 29, scope: !2280)
!2535 = !DILocation(line: 624, column: 36, scope: !2280)
!2536 = !DILocation(line: 624, column: 28, scope: !2280)
!2537 = !DILocation(line: 626, column: 25, scope: !2280)
!2538 = !DILocation(line: 636, column: 38, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2287, file: !187, line: 634, column: 23)
!2540 = !DILocation(line: 636, column: 48, scope: !2539)
!2541 = !DILocation(line: 636, column: 51, scope: !2539)
!2542 = !DILocation(line: 636, column: 25, scope: !2539)
!2543 = !DILocation(line: 637, column: 28, scope: !2539)
!2544 = !DILocation(line: 636, column: 34, scope: !2539)
!2545 = distinct !{!2545, !2542, !2543}
!2546 = !DILocation(line: 650, column: 43, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !187, line: 650, column: 29)
!2548 = distinct !DILexicalBlock(scope: !2284, file: !187, line: 650, column: 29)
!2549 = !DILocation(line: 647, column: 29, scope: !2285)
!2550 = !DILocation(line: 649, column: 36, scope: !2284)
!2551 = !DILocation(line: 651, column: 49, scope: !2547)
!2552 = !DILocation(line: 651, column: 39, scope: !2547)
!2553 = !DILocation(line: 651, column: 31, scope: !2547)
!2554 = !DILocation(line: 650, column: 53, scope: !2547)
!2555 = !DILocation(line: 650, column: 29, scope: !2548)
!2556 = distinct !{!2556, !2555, !2557}
!2557 = !DILocation(line: 659, column: 33, scope: !2548)
!2558 = !DILocation(line: 666, column: 19, scope: !2262)
!2559 = !DILocation(line: 662, column: 41, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2286, file: !187, line: 662, column: 29)
!2561 = !DILocation(line: 662, column: 31, scope: !2560)
!2562 = !DILocation(line: 662, column: 29, scope: !2286)
!2563 = !DILocation(line: 664, column: 27, scope: !2286)
!2564 = !DILocation(line: 667, column: 26, scope: !2262)
!2565 = !DILocation(line: 667, column: 24, scope: !2262)
!2566 = !DILocation(line: 666, column: 19, scope: !2280)
!2567 = !DILocation(line: 668, column: 15, scope: !2263)
!2568 = !DILocation(line: 670, column: 40, scope: !2258)
!2569 = !DILocation(line: 672, column: 19, scope: !2292)
!2570 = !DILocation(line: 672, column: 45, scope: !2292)
!2571 = !DILocation(line: 672, column: 23, scope: !2292)
!2572 = !DILocation(line: 676, column: 33, scope: !2291)
!2573 = !DILocation(line: 676, column: 24, scope: !2291)
!2574 = !DILocation(line: 678, column: 17, scope: !2291)
!2575 = !DILocation(line: 680, column: 43, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !187, line: 680, column: 25)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !187, line: 679, column: 19)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !187, line: 678, column: 17)
!2579 = distinct !DILexicalBlock(scope: !2291, file: !187, line: 678, column: 17)
!2580 = !DILocation(line: 682, column: 25, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !187, line: 682, column: 25)
!2582 = distinct !DILexicalBlock(scope: !2576, file: !187, line: 681, column: 23)
!2583 = !DILocation(line: 682, column: 25, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2581, file: !187, line: 682, column: 25)
!2585 = !DILocation(line: 682, column: 25, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !187, line: 682, column: 25)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !187, line: 682, column: 25)
!2588 = distinct !DILexicalBlock(scope: !2584, file: !187, line: 682, column: 25)
!2589 = !DILocation(line: 682, column: 25, scope: !2587)
!2590 = !DILocation(line: 682, column: 25, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !187, line: 682, column: 25)
!2592 = distinct !DILexicalBlock(scope: !2588, file: !187, line: 682, column: 25)
!2593 = !DILocation(line: 682, column: 25, scope: !2592)
!2594 = !DILocation(line: 682, column: 25, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !187, line: 682, column: 25)
!2596 = distinct !DILexicalBlock(scope: !2588, file: !187, line: 682, column: 25)
!2597 = !DILocation(line: 682, column: 25, scope: !2596)
!2598 = !DILocation(line: 682, column: 25, scope: !2588)
!2599 = !DILocation(line: 682, column: 25, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !187, line: 682, column: 25)
!2601 = distinct !DILexicalBlock(scope: !2581, file: !187, line: 682, column: 25)
!2602 = !DILocation(line: 682, column: 25, scope: !2601)
!2603 = !DILocation(line: 683, column: 25, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !187, line: 683, column: 25)
!2605 = distinct !DILexicalBlock(scope: !2582, file: !187, line: 683, column: 25)
!2606 = !DILocation(line: 683, column: 25, scope: !2605)
!2607 = !DILocation(line: 684, column: 25, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !187, line: 684, column: 25)
!2609 = distinct !DILexicalBlock(scope: !2582, file: !187, line: 684, column: 25)
!2610 = !DILocation(line: 684, column: 25, scope: !2609)
!2611 = !DILocation(line: 685, column: 38, scope: !2582)
!2612 = !DILocation(line: 685, column: 33, scope: !2582)
!2613 = !DILocation(line: 686, column: 23, scope: !2582)
!2614 = !DILocation(line: 687, column: 30, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2576, file: !187, line: 687, column: 30)
!2616 = !DILocation(line: 687, column: 30, scope: !2576)
!2617 = !DILocation(line: 689, column: 25, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !187, line: 689, column: 25)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !187, line: 689, column: 25)
!2620 = distinct !DILexicalBlock(scope: !2615, file: !187, line: 688, column: 23)
!2621 = !DILocation(line: 689, column: 25, scope: !2619)
!2622 = !DILocation(line: 691, column: 23, scope: !2620)
!2623 = !DILocation(line: 692, column: 35, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2577, file: !187, line: 692, column: 25)
!2625 = !DILocation(line: 692, column: 30, scope: !2624)
!2626 = !DILocation(line: 692, column: 25, scope: !2577)
!2627 = !DILocation(line: 694, column: 21, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !187, line: 694, column: 21)
!2629 = distinct !DILexicalBlock(scope: !2577, file: !187, line: 694, column: 21)
!2630 = !DILocation(line: 694, column: 21, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !187, line: 694, column: 21)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !187, line: 694, column: 21)
!2633 = distinct !DILexicalBlock(scope: !2628, file: !187, line: 694, column: 21)
!2634 = !DILocation(line: 694, column: 21, scope: !2632)
!2635 = !DILocation(line: 694, column: 21, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !187, line: 694, column: 21)
!2637 = distinct !DILexicalBlock(scope: !2633, file: !187, line: 694, column: 21)
!2638 = !DILocation(line: 694, column: 21, scope: !2637)
!2639 = !DILocation(line: 694, column: 21, scope: !2633)
!2640 = !DILocation(line: 695, column: 21, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !187, line: 695, column: 21)
!2642 = distinct !DILexicalBlock(scope: !2577, file: !187, line: 695, column: 21)
!2643 = !DILocation(line: 695, column: 21, scope: !2642)
!2644 = !DILocation(line: 696, column: 25, scope: !2577)
!2645 = !DILocation(line: 678, column: 17, scope: !2578)
!2646 = distinct !{!2646, !2647, !2648}
!2647 = !DILocation(line: 678, column: 17, scope: !2579)
!2648 = !DILocation(line: 697, column: 19, scope: !2579)
!2649 = !DILocation(line: 704, column: 34, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2250, file: !187, line: 704, column: 11)
!2651 = !DILocation(line: 706, column: 14, scope: !2650)
!2652 = !DILocation(line: 707, column: 14, scope: !2650)
!2653 = !DILocation(line: 707, column: 35, scope: !2650)
!2654 = !DILocation(line: 707, column: 17, scope: !2650)
!2655 = !DILocation(line: 707, column: 53, scope: !2650)
!2656 = !DILocation(line: 707, column: 47, scope: !2650)
!2657 = !DILocation(line: 707, column: 65, scope: !2650)
!2658 = !DILocation(line: 708, column: 15, scope: !2650)
!2659 = !DILocation(line: 708, column: 11, scope: !2650)
!2660 = !DILocation(line: 704, column: 11, scope: !2250)
!2661 = !DILocation(line: 712, column: 7, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2250, file: !187, line: 712, column: 7)
!2663 = !DILocation(line: 712, column: 7, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2662, file: !187, line: 712, column: 7)
!2665 = !DILocation(line: 712, column: 7, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !187, line: 712, column: 7)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !187, line: 712, column: 7)
!2668 = distinct !DILexicalBlock(scope: !2664, file: !187, line: 712, column: 7)
!2669 = !DILocation(line: 712, column: 7, scope: !2667)
!2670 = !DILocation(line: 712, column: 7, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !187, line: 712, column: 7)
!2672 = distinct !DILexicalBlock(scope: !2668, file: !187, line: 712, column: 7)
!2673 = !DILocation(line: 712, column: 7, scope: !2672)
!2674 = !DILocation(line: 712, column: 7, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !187, line: 712, column: 7)
!2676 = distinct !DILexicalBlock(scope: !2668, file: !187, line: 712, column: 7)
!2677 = !DILocation(line: 712, column: 7, scope: !2676)
!2678 = !DILocation(line: 712, column: 7, scope: !2668)
!2679 = !DILocation(line: 712, column: 7, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !187, line: 712, column: 7)
!2681 = distinct !DILexicalBlock(scope: !2662, file: !187, line: 712, column: 7)
!2682 = !DILocation(line: 712, column: 7, scope: !2681)
!2683 = !DILocation(line: 715, column: 7, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !187, line: 715, column: 7)
!2685 = distinct !DILexicalBlock(scope: !2250, file: !187, line: 715, column: 7)
!2686 = !DILocation(line: 715, column: 7, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !187, line: 715, column: 7)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !187, line: 715, column: 7)
!2689 = distinct !DILexicalBlock(scope: !2684, file: !187, line: 715, column: 7)
!2690 = !DILocation(line: 715, column: 7, scope: !2688)
!2691 = !DILocation(line: 715, column: 7, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !187, line: 715, column: 7)
!2693 = distinct !DILexicalBlock(scope: !2689, file: !187, line: 715, column: 7)
!2694 = !DILocation(line: 715, column: 7, scope: !2693)
!2695 = !DILocation(line: 715, column: 7, scope: !2689)
!2696 = !DILocation(line: 716, column: 7, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !187, line: 716, column: 7)
!2698 = distinct !DILexicalBlock(scope: !2250, file: !187, line: 716, column: 7)
!2699 = !DILocation(line: 716, column: 7, scope: !2698)
!2700 = !DILocation(line: 718, column: 13, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2250, file: !187, line: 718, column: 11)
!2702 = !DILocation(line: 718, column: 11, scope: !2250)
!2703 = !DILocation(line: 720, column: 5, scope: !2251)
!2704 = !DILocation(line: 392, column: 75, scope: !2251)
!2705 = !DILocation(line: 392, column: 3, scope: !2251)
!2706 = distinct !{!2706, !2364, !2707}
!2707 = !DILocation(line: 720, column: 5, scope: !2252)
!2708 = !DILocation(line: 722, column: 11, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2223, file: !187, line: 722, column: 7)
!2710 = !DILocation(line: 722, column: 16, scope: !2709)
!2711 = !DILocation(line: 730, column: 51, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2223, file: !187, line: 730, column: 7)
!2713 = !DILocation(line: 731, column: 10, scope: !2712)
!2714 = !DILocation(line: 733, column: 11, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !187, line: 733, column: 11)
!2716 = distinct !DILexicalBlock(scope: !2712, file: !187, line: 732, column: 5)
!2717 = !DILocation(line: 733, column: 11, scope: !2716)
!2718 = !DILocation(line: 734, column: 16, scope: !2715)
!2719 = !DILocation(line: 734, column: 9, scope: !2715)
!2720 = !DILocation(line: 738, column: 18, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2715, file: !187, line: 738, column: 16)
!2722 = !DILocation(line: 738, column: 32, scope: !2721)
!2723 = !DILocation(line: 738, column: 29, scope: !2721)
!2724 = !DILocation(line: 747, column: 7, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2223, file: !187, line: 747, column: 7)
!2726 = !DILocation(line: 747, column: 20, scope: !2725)
!2727 = !DILocation(line: 748, column: 12, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !187, line: 748, column: 5)
!2729 = distinct !DILexicalBlock(scope: !2725, file: !187, line: 748, column: 5)
!2730 = !DILocation(line: 748, column: 5, scope: !2729)
!2731 = !DILocation(line: 749, column: 7, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !187, line: 749, column: 7)
!2733 = distinct !DILexicalBlock(scope: !2728, file: !187, line: 749, column: 7)
!2734 = !DILocation(line: 749, column: 7, scope: !2733)
!2735 = !DILocation(line: 748, column: 39, scope: !2728)
!2736 = distinct !{!2736, !2730, !2737}
!2737 = !DILocation(line: 749, column: 7, scope: !2729)
!2738 = !DILocation(line: 751, column: 11, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2223, file: !187, line: 751, column: 7)
!2740 = !DILocation(line: 751, column: 7, scope: !2223)
!2741 = !DILocation(line: 752, column: 5, scope: !2739)
!2742 = !DILocation(line: 752, column: 17, scope: !2739)
!2743 = !DILocation(line: 758, column: 21, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2223, file: !187, line: 758, column: 7)
!2745 = !DILocation(line: 758, column: 54, scope: !2744)
!2746 = !DILocation(line: 758, column: 51, scope: !2744)
!2747 = !DILocation(line: 762, column: 42, scope: !2223)
!2748 = !DILocation(line: 760, column: 10, scope: !2223)
!2749 = !DILocation(line: 760, column: 3, scope: !2223)
!2750 = !DILocation(line: 764, column: 1, scope: !2223)
!2751 = distinct !DISubprogram(name: "gettext_quote", scope: !187, file: !187, line: 199, type: !2752, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!41, !41, !10}
!2754 = !{!2755, !2756, !2757, !2758}
!2755 = !DILocalVariable(name: "msgid", arg: 1, scope: !2751, file: !187, line: 199, type: !41)
!2756 = !DILocalVariable(name: "s", arg: 2, scope: !2751, file: !187, line: 199, type: !10)
!2757 = !DILocalVariable(name: "translation", scope: !2751, file: !187, line: 201, type: !41)
!2758 = !DILocalVariable(name: "locale_code", scope: !2751, file: !187, line: 202, type: !41)
!2759 = !DILocation(line: 199, column: 28, scope: !2751)
!2760 = !DILocation(line: 199, column: 54, scope: !2751)
!2761 = !DILocation(line: 201, column: 29, scope: !2751)
!2762 = !DILocation(line: 201, column: 15, scope: !2751)
!2763 = !DILocation(line: 204, column: 19, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2751, file: !187, line: 204, column: 7)
!2765 = !DILocation(line: 204, column: 7, scope: !2751)
!2766 = !DILocation(line: 225, column: 17, scope: !2751)
!2767 = !DILocation(line: 202, column: 15, scope: !2751)
!2768 = !DILocalVariable(name: "s2", arg: 2, scope: !2769, file: !2770, line: 160, type: !41)
!2769 = distinct !DISubprogram(name: "strcaseeq0", scope: !2770, file: !2770, line: 160, type: !2771, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2773)
!2770 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!52, !41, !41, !32, !32, !32, !32, !32, !32, !32, !32, !32}
!2773 = !{!2774, !2768, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783}
!2774 = !DILocalVariable(name: "s1", arg: 1, scope: !2769, file: !2770, line: 160, type: !41)
!2775 = !DILocalVariable(name: "s20", arg: 3, scope: !2769, file: !2770, line: 160, type: !32)
!2776 = !DILocalVariable(name: "s21", arg: 4, scope: !2769, file: !2770, line: 160, type: !32)
!2777 = !DILocalVariable(name: "s22", arg: 5, scope: !2769, file: !2770, line: 160, type: !32)
!2778 = !DILocalVariable(name: "s23", arg: 6, scope: !2769, file: !2770, line: 160, type: !32)
!2779 = !DILocalVariable(name: "s24", arg: 7, scope: !2769, file: !2770, line: 160, type: !32)
!2780 = !DILocalVariable(name: "s25", arg: 8, scope: !2769, file: !2770, line: 160, type: !32)
!2781 = !DILocalVariable(name: "s26", arg: 9, scope: !2769, file: !2770, line: 160, type: !32)
!2782 = !DILocalVariable(name: "s27", arg: 10, scope: !2769, file: !2770, line: 160, type: !32)
!2783 = !DILocalVariable(name: "s28", arg: 11, scope: !2769, file: !2770, line: 160, type: !32)
!2784 = !DILocation(line: 160, column: 41, scope: !2769, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 226, column: 7, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2751, file: !187, line: 226, column: 7)
!2787 = !DILocation(line: 160, column: 120, scope: !2769, inlinedAt: !2785)
!2788 = !DILocation(line: 160, column: 130, scope: !2769, inlinedAt: !2785)
!2789 = !DILocation(line: 162, column: 7, scope: !2790, inlinedAt: !2785)
!2790 = distinct !DILexicalBlock(scope: !2769, file: !2770, line: 162, column: 7)
!2791 = !DILocalVariable(name: "s2", arg: 2, scope: !2792, file: !2770, line: 146, type: !41)
!2792 = distinct !DISubprogram(name: "strcaseeq1", scope: !2770, file: !2770, line: 146, type: !2793, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2795)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!52, !41, !41, !32, !32, !32, !32, !32, !32, !32, !32}
!2795 = !{!2796, !2791, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804}
!2796 = !DILocalVariable(name: "s1", arg: 1, scope: !2792, file: !2770, line: 146, type: !41)
!2797 = !DILocalVariable(name: "s21", arg: 3, scope: !2792, file: !2770, line: 146, type: !32)
!2798 = !DILocalVariable(name: "s22", arg: 4, scope: !2792, file: !2770, line: 146, type: !32)
!2799 = !DILocalVariable(name: "s23", arg: 5, scope: !2792, file: !2770, line: 146, type: !32)
!2800 = !DILocalVariable(name: "s24", arg: 6, scope: !2792, file: !2770, line: 146, type: !32)
!2801 = !DILocalVariable(name: "s25", arg: 7, scope: !2792, file: !2770, line: 146, type: !32)
!2802 = !DILocalVariable(name: "s26", arg: 8, scope: !2792, file: !2770, line: 146, type: !32)
!2803 = !DILocalVariable(name: "s27", arg: 9, scope: !2792, file: !2770, line: 146, type: !32)
!2804 = !DILocalVariable(name: "s28", arg: 10, scope: !2792, file: !2770, line: 146, type: !32)
!2805 = !DILocation(line: 146, column: 41, scope: !2792, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 167, column: 16, scope: !2807, inlinedAt: !2785)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !2770, line: 164, column: 11)
!2808 = distinct !DILexicalBlock(scope: !2790, file: !2770, line: 163, column: 5)
!2809 = !DILocation(line: 146, column: 110, scope: !2792, inlinedAt: !2806)
!2810 = !DILocation(line: 146, column: 120, scope: !2792, inlinedAt: !2806)
!2811 = !DILocation(line: 148, column: 7, scope: !2812, inlinedAt: !2806)
!2812 = distinct !DILexicalBlock(scope: !2792, file: !2770, line: 148, column: 7)
!2813 = !DILocalVariable(name: "s2", arg: 2, scope: !2814, file: !2770, line: 132, type: !41)
!2814 = distinct !DISubprogram(name: "strcaseeq2", scope: !2770, file: !2770, line: 132, type: !2815, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2817)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!52, !41, !41, !32, !32, !32, !32, !32, !32, !32}
!2817 = !{!2818, !2813, !2819, !2820, !2821, !2822, !2823, !2824, !2825}
!2818 = !DILocalVariable(name: "s1", arg: 1, scope: !2814, file: !2770, line: 132, type: !41)
!2819 = !DILocalVariable(name: "s22", arg: 3, scope: !2814, file: !2770, line: 132, type: !32)
!2820 = !DILocalVariable(name: "s23", arg: 4, scope: !2814, file: !2770, line: 132, type: !32)
!2821 = !DILocalVariable(name: "s24", arg: 5, scope: !2814, file: !2770, line: 132, type: !32)
!2822 = !DILocalVariable(name: "s25", arg: 6, scope: !2814, file: !2770, line: 132, type: !32)
!2823 = !DILocalVariable(name: "s26", arg: 7, scope: !2814, file: !2770, line: 132, type: !32)
!2824 = !DILocalVariable(name: "s27", arg: 8, scope: !2814, file: !2770, line: 132, type: !32)
!2825 = !DILocalVariable(name: "s28", arg: 9, scope: !2814, file: !2770, line: 132, type: !32)
!2826 = !DILocation(line: 132, column: 41, scope: !2814, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 153, column: 16, scope: !2828, inlinedAt: !2806)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !2770, line: 150, column: 11)
!2829 = distinct !DILexicalBlock(scope: !2812, file: !2770, line: 149, column: 5)
!2830 = !DILocation(line: 132, column: 100, scope: !2814, inlinedAt: !2827)
!2831 = !DILocation(line: 132, column: 110, scope: !2814, inlinedAt: !2827)
!2832 = !DILocation(line: 134, column: 7, scope: !2833, inlinedAt: !2827)
!2833 = distinct !DILexicalBlock(scope: !2814, file: !2770, line: 134, column: 7)
!2834 = !DILocalVariable(name: "s2", arg: 2, scope: !2835, file: !2770, line: 118, type: !41)
!2835 = distinct !DISubprogram(name: "strcaseeq3", scope: !2770, file: !2770, line: 118, type: !2836, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2838)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!52, !41, !41, !32, !32, !32, !32, !32, !32}
!2838 = !{!2839, !2834, !2840, !2841, !2842, !2843, !2844, !2845}
!2839 = !DILocalVariable(name: "s1", arg: 1, scope: !2835, file: !2770, line: 118, type: !41)
!2840 = !DILocalVariable(name: "s23", arg: 3, scope: !2835, file: !2770, line: 118, type: !32)
!2841 = !DILocalVariable(name: "s24", arg: 4, scope: !2835, file: !2770, line: 118, type: !32)
!2842 = !DILocalVariable(name: "s25", arg: 5, scope: !2835, file: !2770, line: 118, type: !32)
!2843 = !DILocalVariable(name: "s26", arg: 6, scope: !2835, file: !2770, line: 118, type: !32)
!2844 = !DILocalVariable(name: "s27", arg: 7, scope: !2835, file: !2770, line: 118, type: !32)
!2845 = !DILocalVariable(name: "s28", arg: 8, scope: !2835, file: !2770, line: 118, type: !32)
!2846 = !DILocation(line: 118, column: 41, scope: !2835, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 139, column: 16, scope: !2848, inlinedAt: !2827)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !2770, line: 136, column: 11)
!2849 = distinct !DILexicalBlock(scope: !2833, file: !2770, line: 135, column: 5)
!2850 = !DILocation(line: 118, column: 90, scope: !2835, inlinedAt: !2847)
!2851 = !DILocation(line: 118, column: 100, scope: !2835, inlinedAt: !2847)
!2852 = !DILocation(line: 120, column: 7, scope: !2853, inlinedAt: !2847)
!2853 = distinct !DILexicalBlock(scope: !2835, file: !2770, line: 120, column: 7)
!2854 = !DILocation(line: 120, column: 7, scope: !2835, inlinedAt: !2847)
!2855 = !DILocalVariable(name: "s2", arg: 2, scope: !2856, file: !2770, line: 104, type: !41)
!2856 = distinct !DISubprogram(name: "strcaseeq4", scope: !2770, file: !2770, line: 104, type: !2857, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!52, !41, !41, !32, !32, !32, !32, !32}
!2859 = !{!2860, !2855, !2861, !2862, !2863, !2864, !2865}
!2860 = !DILocalVariable(name: "s1", arg: 1, scope: !2856, file: !2770, line: 104, type: !41)
!2861 = !DILocalVariable(name: "s24", arg: 3, scope: !2856, file: !2770, line: 104, type: !32)
!2862 = !DILocalVariable(name: "s25", arg: 4, scope: !2856, file: !2770, line: 104, type: !32)
!2863 = !DILocalVariable(name: "s26", arg: 5, scope: !2856, file: !2770, line: 104, type: !32)
!2864 = !DILocalVariable(name: "s27", arg: 6, scope: !2856, file: !2770, line: 104, type: !32)
!2865 = !DILocalVariable(name: "s28", arg: 7, scope: !2856, file: !2770, line: 104, type: !32)
!2866 = !DILocation(line: 104, column: 41, scope: !2856, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 125, column: 16, scope: !2868, inlinedAt: !2847)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !2770, line: 122, column: 11)
!2869 = distinct !DILexicalBlock(scope: !2853, file: !2770, line: 121, column: 5)
!2870 = !DILocation(line: 104, column: 80, scope: !2856, inlinedAt: !2867)
!2871 = !DILocation(line: 104, column: 90, scope: !2856, inlinedAt: !2867)
!2872 = !DILocation(line: 106, column: 7, scope: !2873, inlinedAt: !2867)
!2873 = distinct !DILexicalBlock(scope: !2856, file: !2770, line: 106, column: 7)
!2874 = !DILocation(line: 106, column: 7, scope: !2856, inlinedAt: !2867)
!2875 = !DILocalVariable(name: "s2", arg: 2, scope: !2876, file: !2770, line: 90, type: !41)
!2876 = distinct !DISubprogram(name: "strcaseeq5", scope: !2770, file: !2770, line: 90, type: !2877, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2879)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!52, !41, !41, !32, !32, !32, !32}
!2879 = !{!2880, !2875, !2881, !2882, !2883, !2884}
!2880 = !DILocalVariable(name: "s1", arg: 1, scope: !2876, file: !2770, line: 90, type: !41)
!2881 = !DILocalVariable(name: "s25", arg: 3, scope: !2876, file: !2770, line: 90, type: !32)
!2882 = !DILocalVariable(name: "s26", arg: 4, scope: !2876, file: !2770, line: 90, type: !32)
!2883 = !DILocalVariable(name: "s27", arg: 5, scope: !2876, file: !2770, line: 90, type: !32)
!2884 = !DILocalVariable(name: "s28", arg: 6, scope: !2876, file: !2770, line: 90, type: !32)
!2885 = !DILocation(line: 90, column: 41, scope: !2876, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 111, column: 16, scope: !2887, inlinedAt: !2867)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !2770, line: 108, column: 11)
!2888 = distinct !DILexicalBlock(scope: !2873, file: !2770, line: 107, column: 5)
!2889 = !DILocation(line: 90, column: 70, scope: !2876, inlinedAt: !2886)
!2890 = !DILocation(line: 90, column: 80, scope: !2876, inlinedAt: !2886)
!2891 = !DILocation(line: 92, column: 7, scope: !2892, inlinedAt: !2886)
!2892 = distinct !DILexicalBlock(scope: !2876, file: !2770, line: 92, column: 7)
!2893 = !DILocation(line: 92, column: 7, scope: !2876, inlinedAt: !2886)
!2894 = !DILocation(line: 227, column: 12, scope: !2786)
!2895 = !DILocation(line: 227, column: 21, scope: !2786)
!2896 = !DILocation(line: 227, column: 5, scope: !2786)
!2897 = !DILocation(line: 146, column: 41, scope: !2792, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 167, column: 16, scope: !2807, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 228, column: 7, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2751, file: !187, line: 228, column: 7)
!2901 = !DILocation(line: 146, column: 110, scope: !2792, inlinedAt: !2898)
!2902 = !DILocation(line: 146, column: 120, scope: !2792, inlinedAt: !2898)
!2903 = !DILocation(line: 148, column: 7, scope: !2812, inlinedAt: !2898)
!2904 = !DILocation(line: 132, column: 41, scope: !2814, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 153, column: 16, scope: !2828, inlinedAt: !2898)
!2906 = !DILocation(line: 132, column: 100, scope: !2814, inlinedAt: !2905)
!2907 = !DILocation(line: 132, column: 110, scope: !2814, inlinedAt: !2905)
!2908 = !DILocation(line: 134, column: 7, scope: !2833, inlinedAt: !2905)
!2909 = !DILocation(line: 134, column: 7, scope: !2814, inlinedAt: !2905)
!2910 = !DILocation(line: 118, column: 41, scope: !2835, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 139, column: 16, scope: !2848, inlinedAt: !2905)
!2912 = !DILocation(line: 118, column: 90, scope: !2835, inlinedAt: !2911)
!2913 = !DILocation(line: 118, column: 100, scope: !2835, inlinedAt: !2911)
!2914 = !DILocation(line: 120, column: 7, scope: !2853, inlinedAt: !2911)
!2915 = !DILocation(line: 120, column: 7, scope: !2835, inlinedAt: !2911)
!2916 = !DILocation(line: 104, column: 41, scope: !2856, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 125, column: 16, scope: !2868, inlinedAt: !2911)
!2918 = !DILocation(line: 104, column: 80, scope: !2856, inlinedAt: !2917)
!2919 = !DILocation(line: 104, column: 90, scope: !2856, inlinedAt: !2917)
!2920 = !DILocation(line: 106, column: 7, scope: !2873, inlinedAt: !2917)
!2921 = !DILocation(line: 106, column: 7, scope: !2856, inlinedAt: !2917)
!2922 = !DILocation(line: 90, column: 41, scope: !2876, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 111, column: 16, scope: !2887, inlinedAt: !2917)
!2924 = !DILocation(line: 90, column: 70, scope: !2876, inlinedAt: !2923)
!2925 = !DILocation(line: 90, column: 80, scope: !2876, inlinedAt: !2923)
!2926 = !DILocation(line: 92, column: 7, scope: !2892, inlinedAt: !2923)
!2927 = !DILocation(line: 92, column: 7, scope: !2876, inlinedAt: !2923)
!2928 = !DILocalVariable(name: "s2", arg: 2, scope: !2929, file: !2770, line: 76, type: !41)
!2929 = distinct !DISubprogram(name: "strcaseeq6", scope: !2770, file: !2770, line: 76, type: !2930, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!52, !41, !41, !32, !32, !32}
!2932 = !{!2933, !2928, !2934, !2935, !2936}
!2933 = !DILocalVariable(name: "s1", arg: 1, scope: !2929, file: !2770, line: 76, type: !41)
!2934 = !DILocalVariable(name: "s26", arg: 3, scope: !2929, file: !2770, line: 76, type: !32)
!2935 = !DILocalVariable(name: "s27", arg: 4, scope: !2929, file: !2770, line: 76, type: !32)
!2936 = !DILocalVariable(name: "s28", arg: 5, scope: !2929, file: !2770, line: 76, type: !32)
!2937 = !DILocation(line: 76, column: 41, scope: !2929, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 97, column: 16, scope: !2939, inlinedAt: !2923)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !2770, line: 94, column: 11)
!2940 = distinct !DILexicalBlock(scope: !2892, file: !2770, line: 93, column: 5)
!2941 = !DILocation(line: 76, column: 60, scope: !2929, inlinedAt: !2938)
!2942 = !DILocation(line: 76, column: 70, scope: !2929, inlinedAt: !2938)
!2943 = !DILocation(line: 78, column: 7, scope: !2944, inlinedAt: !2938)
!2944 = distinct !DILexicalBlock(scope: !2929, file: !2770, line: 78, column: 7)
!2945 = !DILocation(line: 78, column: 7, scope: !2929, inlinedAt: !2938)
!2946 = !DILocalVariable(name: "s2", arg: 2, scope: !2947, file: !2770, line: 62, type: !41)
!2947 = distinct !DISubprogram(name: "strcaseeq7", scope: !2770, file: !2770, line: 62, type: !2948, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!52, !41, !41, !32, !32}
!2950 = !{!2951, !2946, !2952, !2953}
!2951 = !DILocalVariable(name: "s1", arg: 1, scope: !2947, file: !2770, line: 62, type: !41)
!2952 = !DILocalVariable(name: "s27", arg: 3, scope: !2947, file: !2770, line: 62, type: !32)
!2953 = !DILocalVariable(name: "s28", arg: 4, scope: !2947, file: !2770, line: 62, type: !32)
!2954 = !DILocation(line: 62, column: 41, scope: !2947, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 83, column: 16, scope: !2956, inlinedAt: !2938)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !2770, line: 80, column: 11)
!2957 = distinct !DILexicalBlock(scope: !2944, file: !2770, line: 79, column: 5)
!2958 = !DILocation(line: 62, column: 50, scope: !2947, inlinedAt: !2955)
!2959 = !DILocation(line: 62, column: 60, scope: !2947, inlinedAt: !2955)
!2960 = !DILocation(line: 64, column: 7, scope: !2961, inlinedAt: !2955)
!2961 = distinct !DILexicalBlock(scope: !2947, file: !2770, line: 64, column: 7)
!2962 = !DILocation(line: 228, column: 7, scope: !2751)
!2963 = !DILocation(line: 229, column: 12, scope: !2900)
!2964 = !DILocation(line: 229, column: 21, scope: !2900)
!2965 = !DILocation(line: 229, column: 5, scope: !2900)
!2966 = !DILocation(line: 231, column: 13, scope: !2751)
!2967 = !DILocation(line: 231, column: 11, scope: !2751)
!2968 = !DILocation(line: 231, column: 3, scope: !2751)
!2969 = !DILocation(line: 232, column: 1, scope: !2751)
!2970 = distinct !DISubprogram(name: "quotearg_alloc", scope: !187, file: !187, line: 791, type: !2971, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2973)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!31, !41, !43, !2095}
!2973 = !{!2974, !2975, !2976}
!2974 = !DILocalVariable(name: "arg", arg: 1, scope: !2970, file: !187, line: 791, type: !41)
!2975 = !DILocalVariable(name: "argsize", arg: 2, scope: !2970, file: !187, line: 791, type: !43)
!2976 = !DILocalVariable(name: "o", arg: 3, scope: !2970, file: !187, line: 792, type: !2095)
!2977 = !DILocation(line: 791, column: 29, scope: !2970)
!2978 = !DILocation(line: 791, column: 41, scope: !2970)
!2979 = !DILocation(line: 792, column: 47, scope: !2970)
!2980 = !DILocalVariable(name: "arg", arg: 1, scope: !2981, file: !187, line: 804, type: !41)
!2981 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !187, file: !187, line: 804, type: !2982, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!31, !41, !43, !628, !2095}
!2984 = !{!2980, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992}
!2985 = !DILocalVariable(name: "argsize", arg: 2, scope: !2981, file: !187, line: 804, type: !43)
!2986 = !DILocalVariable(name: "size", arg: 3, scope: !2981, file: !187, line: 804, type: !628)
!2987 = !DILocalVariable(name: "o", arg: 4, scope: !2981, file: !187, line: 805, type: !2095)
!2988 = !DILocalVariable(name: "p", scope: !2981, file: !187, line: 807, type: !2095)
!2989 = !DILocalVariable(name: "e", scope: !2981, file: !187, line: 808, type: !52)
!2990 = !DILocalVariable(name: "flags", scope: !2981, file: !187, line: 810, type: !52)
!2991 = !DILocalVariable(name: "bufsize", scope: !2981, file: !187, line: 811, type: !43)
!2992 = !DILocalVariable(name: "buf", scope: !2981, file: !187, line: 815, type: !31)
!2993 = !DILocation(line: 804, column: 33, scope: !2981, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 794, column: 10, scope: !2970)
!2995 = !DILocation(line: 804, column: 45, scope: !2981, inlinedAt: !2994)
!2996 = !DILocation(line: 804, column: 62, scope: !2981, inlinedAt: !2994)
!2997 = !DILocation(line: 805, column: 51, scope: !2981, inlinedAt: !2994)
!2998 = !DILocation(line: 807, column: 37, scope: !2981, inlinedAt: !2994)
!2999 = !DILocation(line: 807, column: 33, scope: !2981, inlinedAt: !2994)
!3000 = !DILocation(line: 808, column: 11, scope: !2981, inlinedAt: !2994)
!3001 = !DILocation(line: 808, column: 7, scope: !2981, inlinedAt: !2994)
!3002 = !DILocation(line: 810, column: 18, scope: !2981, inlinedAt: !2994)
!3003 = !DILocation(line: 810, column: 24, scope: !2981, inlinedAt: !2994)
!3004 = !DILocation(line: 810, column: 7, scope: !2981, inlinedAt: !2994)
!3005 = !DILocation(line: 811, column: 69, scope: !2981, inlinedAt: !2994)
!3006 = !DILocation(line: 812, column: 53, scope: !2981, inlinedAt: !2994)
!3007 = !DILocation(line: 813, column: 49, scope: !2981, inlinedAt: !2994)
!3008 = !DILocation(line: 814, column: 49, scope: !2981, inlinedAt: !2994)
!3009 = !DILocation(line: 811, column: 20, scope: !2981, inlinedAt: !2994)
!3010 = !DILocation(line: 814, column: 62, scope: !2981, inlinedAt: !2994)
!3011 = !DILocation(line: 811, column: 10, scope: !2981, inlinedAt: !2994)
!3012 = !DILocalVariable(name: "n", arg: 1, scope: !3013, file: !624, line: 220, type: !43)
!3013 = distinct !DISubprogram(name: "xcharalloc", scope: !624, file: !624, line: 220, type: !3014, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3015)
!3014 = !DISubroutineType(types: !583)
!3015 = !{!3012}
!3016 = !DILocation(line: 220, column: 20, scope: !3013, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 815, column: 15, scope: !2981, inlinedAt: !2994)
!3018 = !DILocation(line: 222, column: 10, scope: !3013, inlinedAt: !3017)
!3019 = !DILocation(line: 815, column: 9, scope: !2981, inlinedAt: !2994)
!3020 = !DILocation(line: 816, column: 60, scope: !2981, inlinedAt: !2994)
!3021 = !DILocation(line: 818, column: 32, scope: !2981, inlinedAt: !2994)
!3022 = !DILocation(line: 818, column: 47, scope: !2981, inlinedAt: !2994)
!3023 = !DILocation(line: 816, column: 3, scope: !2981, inlinedAt: !2994)
!3024 = !DILocation(line: 819, column: 9, scope: !2981, inlinedAt: !2994)
!3025 = !DILocation(line: 794, column: 3, scope: !2970)
!3026 = !DILocation(line: 804, column: 33, scope: !2981)
!3027 = !DILocation(line: 804, column: 45, scope: !2981)
!3028 = !DILocation(line: 804, column: 62, scope: !2981)
!3029 = !DILocation(line: 805, column: 51, scope: !2981)
!3030 = !DILocation(line: 807, column: 37, scope: !2981)
!3031 = !DILocation(line: 807, column: 33, scope: !2981)
!3032 = !DILocation(line: 808, column: 11, scope: !2981)
!3033 = !DILocation(line: 808, column: 7, scope: !2981)
!3034 = !DILocation(line: 810, column: 18, scope: !2981)
!3035 = !DILocation(line: 810, column: 27, scope: !2981)
!3036 = !DILocation(line: 810, column: 24, scope: !2981)
!3037 = !DILocation(line: 810, column: 7, scope: !2981)
!3038 = !DILocation(line: 811, column: 69, scope: !2981)
!3039 = !DILocation(line: 812, column: 53, scope: !2981)
!3040 = !DILocation(line: 813, column: 49, scope: !2981)
!3041 = !DILocation(line: 814, column: 49, scope: !2981)
!3042 = !DILocation(line: 811, column: 20, scope: !2981)
!3043 = !DILocation(line: 814, column: 62, scope: !2981)
!3044 = !DILocation(line: 811, column: 10, scope: !2981)
!3045 = !DILocation(line: 220, column: 20, scope: !3013, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 815, column: 15, scope: !2981)
!3047 = !DILocation(line: 222, column: 10, scope: !3013, inlinedAt: !3046)
!3048 = !DILocation(line: 815, column: 9, scope: !2981)
!3049 = !DILocation(line: 816, column: 60, scope: !2981)
!3050 = !DILocation(line: 818, column: 32, scope: !2981)
!3051 = !DILocation(line: 818, column: 47, scope: !2981)
!3052 = !DILocation(line: 816, column: 3, scope: !2981)
!3053 = !DILocation(line: 819, column: 9, scope: !2981)
!3054 = !DILocation(line: 820, column: 7, scope: !2981)
!3055 = !DILocation(line: 821, column: 11, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !2981, file: !187, line: 820, column: 7)
!3057 = !DILocation(line: 821, column: 5, scope: !3056)
!3058 = !DILocation(line: 822, column: 3, scope: !2981)
!3059 = distinct !DISubprogram(name: "quotearg_free", scope: !187, file: !187, line: 840, type: !696, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3060)
!3060 = !{!3061, !3062}
!3061 = !DILocalVariable(name: "sv", scope: !3059, file: !187, line: 842, type: !211)
!3062 = !DILocalVariable(name: "i", scope: !3059, file: !187, line: 843, type: !52)
!3063 = !DILocation(line: 842, column: 24, scope: !3059)
!3064 = !DILocation(line: 842, column: 19, scope: !3059)
!3065 = !DILocation(line: 843, column: 7, scope: !3059)
!3066 = !DILocation(line: 844, column: 19, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !187, line: 844, column: 3)
!3068 = distinct !DILexicalBlock(scope: !3059, file: !187, line: 844, column: 3)
!3069 = !DILocation(line: 844, column: 17, scope: !3067)
!3070 = !DILocation(line: 844, column: 3, scope: !3068)
!3071 = !DILocation(line: 845, column: 17, scope: !3067)
!3072 = !{!3073, !688, i64 8}
!3073 = !{!"slotvec", !1143, i64 0, !688, i64 8}
!3074 = !DILocation(line: 845, column: 5, scope: !3067)
!3075 = !DILocation(line: 844, column: 28, scope: !3067)
!3076 = distinct !{!3076, !3070, !3077}
!3077 = !DILocation(line: 845, column: 20, scope: !3068)
!3078 = !DILocation(line: 846, column: 13, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3059, file: !187, line: 846, column: 7)
!3080 = !DILocation(line: 846, column: 17, scope: !3079)
!3081 = !DILocation(line: 846, column: 7, scope: !3059)
!3082 = !DILocation(line: 848, column: 7, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3079, file: !187, line: 847, column: 5)
!3084 = !DILocation(line: 849, column: 21, scope: !3083)
!3085 = !{!3073, !1143, i64 0}
!3086 = !DILocation(line: 850, column: 20, scope: !3083)
!3087 = !DILocation(line: 851, column: 5, scope: !3083)
!3088 = !DILocation(line: 852, column: 10, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3059, file: !187, line: 852, column: 7)
!3090 = !DILocation(line: 852, column: 7, scope: !3059)
!3091 = !DILocation(line: 854, column: 13, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3089, file: !187, line: 853, column: 5)
!3093 = !DILocation(line: 854, column: 7, scope: !3092)
!3094 = !DILocation(line: 855, column: 15, scope: !3092)
!3095 = !DILocation(line: 856, column: 5, scope: !3092)
!3096 = !DILocation(line: 857, column: 10, scope: !3059)
!3097 = !DILocation(line: 858, column: 1, scope: !3059)
!3098 = distinct !DISubprogram(name: "quotearg_n", scope: !187, file: !187, line: 922, type: !3099, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!31, !52, !41}
!3101 = !{!3102, !3103}
!3102 = !DILocalVariable(name: "n", arg: 1, scope: !3098, file: !187, line: 922, type: !52)
!3103 = !DILocalVariable(name: "arg", arg: 2, scope: !3098, file: !187, line: 922, type: !41)
!3104 = !DILocation(line: 922, column: 17, scope: !3098)
!3105 = !DILocation(line: 922, column: 32, scope: !3098)
!3106 = !DILocation(line: 924, column: 10, scope: !3098)
!3107 = !DILocation(line: 924, column: 3, scope: !3098)
!3108 = distinct !DISubprogram(name: "quotearg_n_options", scope: !187, file: !187, line: 869, type: !3109, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3111)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!31, !52, !41, !43, !2095}
!3111 = !{!3112, !3113, !3114, !3115, !3116, !3117, !3118, !3121, !3123, !3124, !3125}
!3112 = !DILocalVariable(name: "n", arg: 1, scope: !3108, file: !187, line: 869, type: !52)
!3113 = !DILocalVariable(name: "arg", arg: 2, scope: !3108, file: !187, line: 869, type: !41)
!3114 = !DILocalVariable(name: "argsize", arg: 3, scope: !3108, file: !187, line: 869, type: !43)
!3115 = !DILocalVariable(name: "options", arg: 4, scope: !3108, file: !187, line: 870, type: !2095)
!3116 = !DILocalVariable(name: "e", scope: !3108, file: !187, line: 872, type: !52)
!3117 = !DILocalVariable(name: "sv", scope: !3108, file: !187, line: 874, type: !211)
!3118 = !DILocalVariable(name: "preallocated", scope: !3119, file: !187, line: 881, type: !59)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !187, line: 880, column: 5)
!3120 = distinct !DILexicalBlock(scope: !3108, file: !187, line: 879, column: 7)
!3121 = !DILocalVariable(name: "size", scope: !3122, file: !187, line: 894, type: !43)
!3122 = distinct !DILexicalBlock(scope: !3108, file: !187, line: 893, column: 3)
!3123 = !DILocalVariable(name: "val", scope: !3122, file: !187, line: 895, type: !31)
!3124 = !DILocalVariable(name: "flags", scope: !3122, file: !187, line: 897, type: !52)
!3125 = !DILocalVariable(name: "qsize", scope: !3122, file: !187, line: 898, type: !43)
!3126 = !DILocation(line: 869, column: 25, scope: !3108)
!3127 = !DILocation(line: 869, column: 40, scope: !3108)
!3128 = !DILocation(line: 869, column: 52, scope: !3108)
!3129 = !DILocation(line: 870, column: 51, scope: !3108)
!3130 = !DILocation(line: 872, column: 11, scope: !3108)
!3131 = !DILocation(line: 872, column: 7, scope: !3108)
!3132 = !DILocation(line: 874, column: 24, scope: !3108)
!3133 = !DILocation(line: 874, column: 19, scope: !3108)
!3134 = !DILocation(line: 876, column: 9, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3108, file: !187, line: 876, column: 7)
!3136 = !DILocation(line: 876, column: 7, scope: !3108)
!3137 = !DILocation(line: 877, column: 5, scope: !3135)
!3138 = !DILocation(line: 879, column: 7, scope: !3120)
!3139 = !DILocation(line: 879, column: 14, scope: !3120)
!3140 = !DILocation(line: 879, column: 7, scope: !3108)
!3141 = !DILocation(line: 881, column: 31, scope: !3119)
!3142 = !DILocation(line: 883, column: 67, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3119, file: !187, line: 883, column: 11)
!3144 = !DILocation(line: 883, column: 11, scope: !3119)
!3145 = !DILocation(line: 884, column: 9, scope: !3143)
!3146 = !DILocation(line: 886, column: 32, scope: !3119)
!3147 = !DILocation(line: 886, column: 61, scope: !3119)
!3148 = !DILocation(line: 886, column: 58, scope: !3119)
!3149 = !DILocation(line: 886, column: 66, scope: !3119)
!3150 = !DILocation(line: 886, column: 22, scope: !3119)
!3151 = !DILocation(line: 886, column: 15, scope: !3119)
!3152 = !DILocation(line: 887, column: 11, scope: !3119)
!3153 = !DILocation(line: 888, column: 15, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3119, file: !187, line: 887, column: 11)
!3155 = !{i64 0, i64 8, !1252, i64 8, i64 8, !687}
!3156 = !DILocation(line: 888, column: 9, scope: !3154)
!3157 = !DILocation(line: 889, column: 20, scope: !3119)
!3158 = !DILocation(line: 889, column: 18, scope: !3119)
!3159 = !DILocation(line: 889, column: 7, scope: !3119)
!3160 = !DILocation(line: 889, column: 38, scope: !3119)
!3161 = !DILocation(line: 889, column: 31, scope: !3119)
!3162 = !DILocation(line: 889, column: 48, scope: !3119)
!3163 = !DILocation(line: 890, column: 14, scope: !3119)
!3164 = !DILocation(line: 891, column: 5, scope: !3119)
!3165 = !DILocation(line: 894, column: 19, scope: !3122)
!3166 = !DILocation(line: 894, column: 25, scope: !3122)
!3167 = !DILocation(line: 894, column: 12, scope: !3122)
!3168 = !DILocation(line: 895, column: 23, scope: !3122)
!3169 = !DILocation(line: 895, column: 11, scope: !3122)
!3170 = !DILocation(line: 897, column: 26, scope: !3122)
!3171 = !DILocation(line: 897, column: 32, scope: !3122)
!3172 = !DILocation(line: 897, column: 9, scope: !3122)
!3173 = !DILocation(line: 899, column: 55, scope: !3122)
!3174 = !DILocation(line: 900, column: 46, scope: !3122)
!3175 = !DILocation(line: 901, column: 55, scope: !3122)
!3176 = !DILocation(line: 902, column: 55, scope: !3122)
!3177 = !DILocation(line: 898, column: 20, scope: !3122)
!3178 = !DILocation(line: 898, column: 12, scope: !3122)
!3179 = !DILocation(line: 904, column: 14, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3122, file: !187, line: 904, column: 9)
!3181 = !DILocation(line: 904, column: 9, scope: !3122)
!3182 = !DILocation(line: 906, column: 35, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3180, file: !187, line: 905, column: 7)
!3184 = !DILocation(line: 906, column: 20, scope: !3183)
!3185 = !DILocation(line: 907, column: 17, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3183, file: !187, line: 907, column: 13)
!3187 = !DILocation(line: 907, column: 13, scope: !3183)
!3188 = !DILocation(line: 908, column: 11, scope: !3186)
!3189 = !DILocation(line: 220, column: 20, scope: !3013, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 909, column: 27, scope: !3183)
!3191 = !DILocation(line: 222, column: 10, scope: !3013, inlinedAt: !3190)
!3192 = !DILocation(line: 909, column: 19, scope: !3183)
!3193 = !DILocation(line: 910, column: 69, scope: !3183)
!3194 = !DILocation(line: 912, column: 44, scope: !3183)
!3195 = !DILocation(line: 913, column: 44, scope: !3183)
!3196 = !DILocation(line: 910, column: 9, scope: !3183)
!3197 = !DILocation(line: 914, column: 7, scope: !3183)
!3198 = !DILocation(line: 916, column: 11, scope: !3122)
!3199 = !DILocation(line: 917, column: 5, scope: !3122)
!3200 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !187, file: !187, line: 928, type: !3201, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3203)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!31, !52, !41, !43}
!3203 = !{!3204, !3205, !3206}
!3204 = !DILocalVariable(name: "n", arg: 1, scope: !3200, file: !187, line: 928, type: !52)
!3205 = !DILocalVariable(name: "arg", arg: 2, scope: !3200, file: !187, line: 928, type: !41)
!3206 = !DILocalVariable(name: "argsize", arg: 3, scope: !3200, file: !187, line: 928, type: !43)
!3207 = !DILocation(line: 928, column: 21, scope: !3200)
!3208 = !DILocation(line: 928, column: 36, scope: !3200)
!3209 = !DILocation(line: 928, column: 48, scope: !3200)
!3210 = !DILocation(line: 930, column: 10, scope: !3200)
!3211 = !DILocation(line: 930, column: 3, scope: !3200)
!3212 = distinct !DISubprogram(name: "quotearg", scope: !187, file: !187, line: 934, type: !3213, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3215)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!31, !41}
!3215 = !{!3216}
!3216 = !DILocalVariable(name: "arg", arg: 1, scope: !3212, file: !187, line: 934, type: !41)
!3217 = !DILocation(line: 934, column: 23, scope: !3212)
!3218 = !DILocation(line: 922, column: 17, scope: !3098, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 936, column: 10, scope: !3212)
!3220 = !DILocation(line: 922, column: 32, scope: !3098, inlinedAt: !3219)
!3221 = !DILocation(line: 924, column: 10, scope: !3098, inlinedAt: !3219)
!3222 = !DILocation(line: 936, column: 3, scope: !3212)
!3223 = distinct !DISubprogram(name: "quotearg_mem", scope: !187, file: !187, line: 940, type: !3224, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3226)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!31, !41, !43}
!3226 = !{!3227, !3228}
!3227 = !DILocalVariable(name: "arg", arg: 1, scope: !3223, file: !187, line: 940, type: !41)
!3228 = !DILocalVariable(name: "argsize", arg: 2, scope: !3223, file: !187, line: 940, type: !43)
!3229 = !DILocation(line: 940, column: 27, scope: !3223)
!3230 = !DILocation(line: 940, column: 39, scope: !3223)
!3231 = !DILocation(line: 928, column: 21, scope: !3200, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 942, column: 10, scope: !3223)
!3233 = !DILocation(line: 928, column: 36, scope: !3200, inlinedAt: !3232)
!3234 = !DILocation(line: 928, column: 48, scope: !3200, inlinedAt: !3232)
!3235 = !DILocation(line: 930, column: 10, scope: !3200, inlinedAt: !3232)
!3236 = !DILocation(line: 942, column: 3, scope: !3223)
!3237 = distinct !DISubprogram(name: "quotearg_n_style", scope: !187, file: !187, line: 946, type: !3238, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3240)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!31, !52, !10, !41}
!3240 = !{!3241, !3242, !3243, !3244}
!3241 = !DILocalVariable(name: "n", arg: 1, scope: !3237, file: !187, line: 946, type: !52)
!3242 = !DILocalVariable(name: "s", arg: 2, scope: !3237, file: !187, line: 946, type: !10)
!3243 = !DILocalVariable(name: "arg", arg: 3, scope: !3237, file: !187, line: 946, type: !41)
!3244 = !DILocalVariable(name: "o", scope: !3237, file: !187, line: 948, type: !2096)
!3245 = !DILocalVariable(name: "o", scope: !3246, file: !187, line: 187, type: !192)
!3246 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !187, file: !187, line: 185, type: !3247, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3249)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!192, !10}
!3249 = !{!3250, !3245}
!3250 = !DILocalVariable(name: "style", arg: 1, scope: !3246, file: !187, line: 185, type: !10)
!3251 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3252 = !DILocation(line: 187, column: 26, scope: !3246, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 948, column: 36, scope: !3237)
!3254 = !DILocation(line: 946, column: 23, scope: !3237)
!3255 = !DILocation(line: 946, column: 45, scope: !3237)
!3256 = !DILocation(line: 946, column: 60, scope: !3237)
!3257 = !DILocation(line: 948, column: 3, scope: !3237)
!3258 = !DILocation(line: 948, column: 32, scope: !3237)
!3259 = !DILocation(line: 185, column: 48, scope: !3246, inlinedAt: !3253)
!3260 = !DILocation(line: 187, column: 3, scope: !3246, inlinedAt: !3253)
!3261 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3262 = !DILocation(line: 188, column: 13, scope: !3263, inlinedAt: !3253)
!3263 = distinct !DILexicalBlock(scope: !3246, file: !187, line: 188, column: 7)
!3264 = !DILocation(line: 188, column: 7, scope: !3246, inlinedAt: !3253)
!3265 = !DILocation(line: 189, column: 5, scope: !3263, inlinedAt: !3253)
!3266 = !{!3267}
!3267 = distinct !{!3267, !3268, !"quoting_options_from_style: argument 0"}
!3268 = distinct !{!3268, !"quoting_options_from_style"}
!3269 = !DILocation(line: 191, column: 10, scope: !3246, inlinedAt: !3253)
!3270 = !DILocation(line: 192, column: 1, scope: !3246, inlinedAt: !3253)
!3271 = !DILocation(line: 949, column: 10, scope: !3237)
!3272 = !DILocation(line: 950, column: 1, scope: !3237)
!3273 = !DILocation(line: 949, column: 3, scope: !3237)
!3274 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !187, file: !187, line: 953, type: !3275, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3277)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!31, !52, !10, !41, !43}
!3277 = !{!3278, !3279, !3280, !3281, !3282}
!3278 = !DILocalVariable(name: "n", arg: 1, scope: !3274, file: !187, line: 953, type: !52)
!3279 = !DILocalVariable(name: "s", arg: 2, scope: !3274, file: !187, line: 953, type: !10)
!3280 = !DILocalVariable(name: "arg", arg: 3, scope: !3274, file: !187, line: 954, type: !41)
!3281 = !DILocalVariable(name: "argsize", arg: 4, scope: !3274, file: !187, line: 954, type: !43)
!3282 = !DILocalVariable(name: "o", scope: !3274, file: !187, line: 956, type: !2096)
!3283 = !DILocation(line: 187, column: 26, scope: !3246, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 956, column: 36, scope: !3274)
!3285 = !DILocation(line: 953, column: 27, scope: !3274)
!3286 = !DILocation(line: 953, column: 49, scope: !3274)
!3287 = !DILocation(line: 954, column: 35, scope: !3274)
!3288 = !DILocation(line: 954, column: 47, scope: !3274)
!3289 = !DILocation(line: 956, column: 3, scope: !3274)
!3290 = !DILocation(line: 956, column: 32, scope: !3274)
!3291 = !DILocation(line: 185, column: 48, scope: !3246, inlinedAt: !3284)
!3292 = !DILocation(line: 187, column: 3, scope: !3246, inlinedAt: !3284)
!3293 = !DILocation(line: 188, column: 13, scope: !3263, inlinedAt: !3284)
!3294 = !DILocation(line: 188, column: 7, scope: !3246, inlinedAt: !3284)
!3295 = !DILocation(line: 189, column: 5, scope: !3263, inlinedAt: !3284)
!3296 = !{!3297}
!3297 = distinct !{!3297, !3298, !"quoting_options_from_style: argument 0"}
!3298 = distinct !{!3298, !"quoting_options_from_style"}
!3299 = !DILocation(line: 191, column: 10, scope: !3246, inlinedAt: !3284)
!3300 = !DILocation(line: 192, column: 1, scope: !3246, inlinedAt: !3284)
!3301 = !DILocation(line: 957, column: 10, scope: !3274)
!3302 = !DILocation(line: 958, column: 1, scope: !3274)
!3303 = !DILocation(line: 957, column: 3, scope: !3274)
!3304 = distinct !DISubprogram(name: "quotearg_style", scope: !187, file: !187, line: 961, type: !3305, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3307)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!31, !10, !41}
!3307 = !{!3308, !3309}
!3308 = !DILocalVariable(name: "s", arg: 1, scope: !3304, file: !187, line: 961, type: !10)
!3309 = !DILocalVariable(name: "arg", arg: 2, scope: !3304, file: !187, line: 961, type: !41)
!3310 = !DILocation(line: 187, column: 26, scope: !3246, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 948, column: 36, scope: !3237, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 963, column: 10, scope: !3304)
!3313 = !DILocation(line: 961, column: 36, scope: !3304)
!3314 = !DILocation(line: 961, column: 51, scope: !3304)
!3315 = !DILocation(line: 946, column: 23, scope: !3237, inlinedAt: !3312)
!3316 = !DILocation(line: 946, column: 45, scope: !3237, inlinedAt: !3312)
!3317 = !DILocation(line: 946, column: 60, scope: !3237, inlinedAt: !3312)
!3318 = !DILocation(line: 948, column: 3, scope: !3237, inlinedAt: !3312)
!3319 = !DILocation(line: 948, column: 32, scope: !3237, inlinedAt: !3312)
!3320 = !DILocation(line: 185, column: 48, scope: !3246, inlinedAt: !3311)
!3321 = !DILocation(line: 187, column: 3, scope: !3246, inlinedAt: !3311)
!3322 = !DILocation(line: 188, column: 13, scope: !3263, inlinedAt: !3311)
!3323 = !DILocation(line: 188, column: 7, scope: !3246, inlinedAt: !3311)
!3324 = !DILocation(line: 189, column: 5, scope: !3263, inlinedAt: !3311)
!3325 = !{!3326}
!3326 = distinct !{!3326, !3327, !"quoting_options_from_style: argument 0"}
!3327 = distinct !{!3327, !"quoting_options_from_style"}
!3328 = !DILocation(line: 191, column: 10, scope: !3246, inlinedAt: !3311)
!3329 = !DILocation(line: 192, column: 1, scope: !3246, inlinedAt: !3311)
!3330 = !DILocation(line: 949, column: 10, scope: !3237, inlinedAt: !3312)
!3331 = !DILocation(line: 950, column: 1, scope: !3237, inlinedAt: !3312)
!3332 = !DILocation(line: 963, column: 3, scope: !3304)
!3333 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !187, file: !187, line: 967, type: !3334, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3336)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!31, !10, !41, !43}
!3336 = !{!3337, !3338, !3339}
!3337 = !DILocalVariable(name: "s", arg: 1, scope: !3333, file: !187, line: 967, type: !10)
!3338 = !DILocalVariable(name: "arg", arg: 2, scope: !3333, file: !187, line: 967, type: !41)
!3339 = !DILocalVariable(name: "argsize", arg: 3, scope: !3333, file: !187, line: 967, type: !43)
!3340 = !DILocation(line: 187, column: 26, scope: !3246, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 956, column: 36, scope: !3274, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 969, column: 10, scope: !3333)
!3343 = !DILocation(line: 967, column: 40, scope: !3333)
!3344 = !DILocation(line: 967, column: 55, scope: !3333)
!3345 = !DILocation(line: 967, column: 67, scope: !3333)
!3346 = !DILocation(line: 953, column: 27, scope: !3274, inlinedAt: !3342)
!3347 = !DILocation(line: 953, column: 49, scope: !3274, inlinedAt: !3342)
!3348 = !DILocation(line: 954, column: 35, scope: !3274, inlinedAt: !3342)
!3349 = !DILocation(line: 954, column: 47, scope: !3274, inlinedAt: !3342)
!3350 = !DILocation(line: 956, column: 3, scope: !3274, inlinedAt: !3342)
!3351 = !DILocation(line: 956, column: 32, scope: !3274, inlinedAt: !3342)
!3352 = !DILocation(line: 185, column: 48, scope: !3246, inlinedAt: !3341)
!3353 = !DILocation(line: 187, column: 3, scope: !3246, inlinedAt: !3341)
!3354 = !DILocation(line: 188, column: 13, scope: !3263, inlinedAt: !3341)
!3355 = !DILocation(line: 188, column: 7, scope: !3246, inlinedAt: !3341)
!3356 = !DILocation(line: 189, column: 5, scope: !3263, inlinedAt: !3341)
!3357 = !{!3358}
!3358 = distinct !{!3358, !3359, !"quoting_options_from_style: argument 0"}
!3359 = distinct !{!3359, !"quoting_options_from_style"}
!3360 = !DILocation(line: 191, column: 10, scope: !3246, inlinedAt: !3341)
!3361 = !DILocation(line: 192, column: 1, scope: !3246, inlinedAt: !3341)
!3362 = !DILocation(line: 957, column: 10, scope: !3274, inlinedAt: !3342)
!3363 = !DILocation(line: 958, column: 1, scope: !3274, inlinedAt: !3342)
!3364 = !DILocation(line: 969, column: 3, scope: !3333)
!3365 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !187, file: !187, line: 973, type: !3366, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3368)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!31, !41, !43, !32}
!3368 = !{!3369, !3370, !3371, !3372}
!3369 = !DILocalVariable(name: "arg", arg: 1, scope: !3365, file: !187, line: 973, type: !41)
!3370 = !DILocalVariable(name: "argsize", arg: 2, scope: !3365, file: !187, line: 973, type: !43)
!3371 = !DILocalVariable(name: "ch", arg: 3, scope: !3365, file: !187, line: 973, type: !32)
!3372 = !DILocalVariable(name: "options", scope: !3365, file: !187, line: 975, type: !192)
!3373 = !DILocation(line: 973, column: 32, scope: !3365)
!3374 = !DILocation(line: 973, column: 44, scope: !3365)
!3375 = !DILocation(line: 973, column: 58, scope: !3365)
!3376 = !DILocation(line: 975, column: 3, scope: !3365)
!3377 = !DILocation(line: 976, column: 13, scope: !3365)
!3378 = !{i64 0, i64 4, !928, i64 4, i64 4, !1020, i64 8, i64 32, !928, i64 40, i64 8, !687, i64 48, i64 8, !687}
!3379 = !DILocation(line: 975, column: 26, scope: !3365)
!3380 = !DILocation(line: 144, column: 43, scope: !2117, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 977, column: 3, scope: !3365)
!3382 = !DILocation(line: 144, column: 51, scope: !2117, inlinedAt: !3381)
!3383 = !DILocation(line: 144, column: 58, scope: !2117, inlinedAt: !3381)
!3384 = !DILocation(line: 146, column: 17, scope: !2117, inlinedAt: !3381)
!3385 = !DILocation(line: 148, column: 62, scope: !2117, inlinedAt: !3381)
!3386 = !DILocation(line: 148, column: 57, scope: !2117, inlinedAt: !3381)
!3387 = !DILocation(line: 147, column: 17, scope: !2117, inlinedAt: !3381)
!3388 = !DILocation(line: 149, column: 18, scope: !2117, inlinedAt: !3381)
!3389 = !DILocation(line: 149, column: 15, scope: !2117, inlinedAt: !3381)
!3390 = !DILocation(line: 149, column: 7, scope: !2117, inlinedAt: !3381)
!3391 = !DILocation(line: 150, column: 12, scope: !2117, inlinedAt: !3381)
!3392 = !DILocation(line: 150, column: 15, scope: !2117, inlinedAt: !3381)
!3393 = !DILocation(line: 150, column: 25, scope: !2117, inlinedAt: !3381)
!3394 = !DILocation(line: 150, column: 7, scope: !2117, inlinedAt: !3381)
!3395 = !DILocation(line: 151, column: 18, scope: !2117, inlinedAt: !3381)
!3396 = !DILocation(line: 151, column: 23, scope: !2117, inlinedAt: !3381)
!3397 = !DILocation(line: 151, column: 6, scope: !2117, inlinedAt: !3381)
!3398 = !DILocation(line: 978, column: 10, scope: !3365)
!3399 = !DILocation(line: 979, column: 1, scope: !3365)
!3400 = !DILocation(line: 978, column: 3, scope: !3365)
!3401 = distinct !DISubprogram(name: "quotearg_char", scope: !187, file: !187, line: 982, type: !3402, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3404)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!31, !41, !32}
!3404 = !{!3405, !3406}
!3405 = !DILocalVariable(name: "arg", arg: 1, scope: !3401, file: !187, line: 982, type: !41)
!3406 = !DILocalVariable(name: "ch", arg: 2, scope: !3401, file: !187, line: 982, type: !32)
!3407 = !DILocation(line: 982, column: 28, scope: !3401)
!3408 = !DILocation(line: 982, column: 38, scope: !3401)
!3409 = !DILocation(line: 973, column: 32, scope: !3365, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 984, column: 10, scope: !3401)
!3411 = !DILocation(line: 973, column: 44, scope: !3365, inlinedAt: !3410)
!3412 = !DILocation(line: 973, column: 58, scope: !3365, inlinedAt: !3410)
!3413 = !DILocation(line: 975, column: 3, scope: !3365, inlinedAt: !3410)
!3414 = !DILocation(line: 976, column: 13, scope: !3365, inlinedAt: !3410)
!3415 = !DILocation(line: 975, column: 26, scope: !3365, inlinedAt: !3410)
!3416 = !DILocation(line: 144, column: 43, scope: !2117, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 977, column: 3, scope: !3365, inlinedAt: !3410)
!3418 = !DILocation(line: 144, column: 51, scope: !2117, inlinedAt: !3417)
!3419 = !DILocation(line: 144, column: 58, scope: !2117, inlinedAt: !3417)
!3420 = !DILocation(line: 146, column: 17, scope: !2117, inlinedAt: !3417)
!3421 = !DILocation(line: 148, column: 62, scope: !2117, inlinedAt: !3417)
!3422 = !DILocation(line: 148, column: 57, scope: !2117, inlinedAt: !3417)
!3423 = !DILocation(line: 147, column: 17, scope: !2117, inlinedAt: !3417)
!3424 = !DILocation(line: 149, column: 18, scope: !2117, inlinedAt: !3417)
!3425 = !DILocation(line: 149, column: 15, scope: !2117, inlinedAt: !3417)
!3426 = !DILocation(line: 149, column: 7, scope: !2117, inlinedAt: !3417)
!3427 = !DILocation(line: 150, column: 12, scope: !2117, inlinedAt: !3417)
!3428 = !DILocation(line: 150, column: 15, scope: !2117, inlinedAt: !3417)
!3429 = !DILocation(line: 150, column: 25, scope: !2117, inlinedAt: !3417)
!3430 = !DILocation(line: 150, column: 7, scope: !2117, inlinedAt: !3417)
!3431 = !DILocation(line: 151, column: 18, scope: !2117, inlinedAt: !3417)
!3432 = !DILocation(line: 151, column: 23, scope: !2117, inlinedAt: !3417)
!3433 = !DILocation(line: 151, column: 6, scope: !2117, inlinedAt: !3417)
!3434 = !DILocation(line: 978, column: 10, scope: !3365, inlinedAt: !3410)
!3435 = !DILocation(line: 979, column: 1, scope: !3365, inlinedAt: !3410)
!3436 = !DILocation(line: 984, column: 3, scope: !3401)
!3437 = distinct !DISubprogram(name: "quotearg_colon", scope: !187, file: !187, line: 988, type: !3213, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3438)
!3438 = !{!3439}
!3439 = !DILocalVariable(name: "arg", arg: 1, scope: !3437, file: !187, line: 988, type: !41)
!3440 = !DILocation(line: 988, column: 29, scope: !3437)
!3441 = !DILocation(line: 982, column: 28, scope: !3401, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 990, column: 10, scope: !3437)
!3443 = !DILocation(line: 982, column: 38, scope: !3401, inlinedAt: !3442)
!3444 = !DILocation(line: 973, column: 32, scope: !3365, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 984, column: 10, scope: !3401, inlinedAt: !3442)
!3446 = !DILocation(line: 973, column: 44, scope: !3365, inlinedAt: !3445)
!3447 = !DILocation(line: 973, column: 58, scope: !3365, inlinedAt: !3445)
!3448 = !DILocation(line: 975, column: 3, scope: !3365, inlinedAt: !3445)
!3449 = !DILocation(line: 976, column: 13, scope: !3365, inlinedAt: !3445)
!3450 = !DILocation(line: 975, column: 26, scope: !3365, inlinedAt: !3445)
!3451 = !DILocation(line: 144, column: 43, scope: !2117, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 977, column: 3, scope: !3365, inlinedAt: !3445)
!3453 = !DILocation(line: 144, column: 51, scope: !2117, inlinedAt: !3452)
!3454 = !DILocation(line: 144, column: 58, scope: !2117, inlinedAt: !3452)
!3455 = !DILocation(line: 146, column: 17, scope: !2117, inlinedAt: !3452)
!3456 = !DILocation(line: 148, column: 57, scope: !2117, inlinedAt: !3452)
!3457 = !DILocation(line: 147, column: 17, scope: !2117, inlinedAt: !3452)
!3458 = !DILocation(line: 149, column: 7, scope: !2117, inlinedAt: !3452)
!3459 = !DILocation(line: 150, column: 12, scope: !2117, inlinedAt: !3452)
!3460 = !DILocation(line: 151, column: 6, scope: !2117, inlinedAt: !3452)
!3461 = !DILocation(line: 978, column: 10, scope: !3365, inlinedAt: !3445)
!3462 = !DILocation(line: 979, column: 1, scope: !3365, inlinedAt: !3445)
!3463 = !DILocation(line: 990, column: 3, scope: !3437)
!3464 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !187, file: !187, line: 994, type: !3224, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3465)
!3465 = !{!3466, !3467}
!3466 = !DILocalVariable(name: "arg", arg: 1, scope: !3464, file: !187, line: 994, type: !41)
!3467 = !DILocalVariable(name: "argsize", arg: 2, scope: !3464, file: !187, line: 994, type: !43)
!3468 = !DILocation(line: 994, column: 33, scope: !3464)
!3469 = !DILocation(line: 994, column: 45, scope: !3464)
!3470 = !DILocation(line: 973, column: 32, scope: !3365, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 996, column: 10, scope: !3464)
!3472 = !DILocation(line: 973, column: 44, scope: !3365, inlinedAt: !3471)
!3473 = !DILocation(line: 973, column: 58, scope: !3365, inlinedAt: !3471)
!3474 = !DILocation(line: 975, column: 3, scope: !3365, inlinedAt: !3471)
!3475 = !DILocation(line: 976, column: 13, scope: !3365, inlinedAt: !3471)
!3476 = !DILocation(line: 975, column: 26, scope: !3365, inlinedAt: !3471)
!3477 = !DILocation(line: 144, column: 43, scope: !2117, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 977, column: 3, scope: !3365, inlinedAt: !3471)
!3479 = !DILocation(line: 144, column: 51, scope: !2117, inlinedAt: !3478)
!3480 = !DILocation(line: 144, column: 58, scope: !2117, inlinedAt: !3478)
!3481 = !DILocation(line: 146, column: 17, scope: !2117, inlinedAt: !3478)
!3482 = !DILocation(line: 148, column: 57, scope: !2117, inlinedAt: !3478)
!3483 = !DILocation(line: 147, column: 17, scope: !2117, inlinedAt: !3478)
!3484 = !DILocation(line: 149, column: 7, scope: !2117, inlinedAt: !3478)
!3485 = !DILocation(line: 150, column: 12, scope: !2117, inlinedAt: !3478)
!3486 = !DILocation(line: 151, column: 6, scope: !2117, inlinedAt: !3478)
!3487 = !DILocation(line: 978, column: 10, scope: !3365, inlinedAt: !3471)
!3488 = !DILocation(line: 979, column: 1, scope: !3365, inlinedAt: !3471)
!3489 = !DILocation(line: 996, column: 3, scope: !3464)
!3490 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !187, file: !187, line: 1000, type: !3238, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3491)
!3491 = !{!3492, !3493, !3494, !3495}
!3492 = !DILocalVariable(name: "n", arg: 1, scope: !3490, file: !187, line: 1000, type: !52)
!3493 = !DILocalVariable(name: "s", arg: 2, scope: !3490, file: !187, line: 1000, type: !10)
!3494 = !DILocalVariable(name: "arg", arg: 3, scope: !3490, file: !187, line: 1000, type: !41)
!3495 = !DILocalVariable(name: "options", scope: !3490, file: !187, line: 1002, type: !192)
!3496 = !DILocation(line: 187, column: 26, scope: !3246, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 1003, column: 13, scope: !3490)
!3498 = !DILocation(line: 1000, column: 29, scope: !3490)
!3499 = !DILocation(line: 1000, column: 51, scope: !3490)
!3500 = !DILocation(line: 1000, column: 66, scope: !3490)
!3501 = !DILocation(line: 1002, column: 3, scope: !3490)
!3502 = !DILocation(line: 185, column: 48, scope: !3246, inlinedAt: !3497)
!3503 = !DILocation(line: 187, column: 3, scope: !3246, inlinedAt: !3497)
!3504 = !DILocation(line: 188, column: 13, scope: !3263, inlinedAt: !3497)
!3505 = !DILocation(line: 188, column: 7, scope: !3246, inlinedAt: !3497)
!3506 = !DILocation(line: 189, column: 5, scope: !3263, inlinedAt: !3497)
!3507 = !{!3508}
!3508 = distinct !{!3508, !3509, !"quoting_options_from_style: argument 0"}
!3509 = distinct !{!3509, !"quoting_options_from_style"}
!3510 = !DILocation(line: 191, column: 10, scope: !3246, inlinedAt: !3497)
!3511 = !DILocation(line: 192, column: 1, scope: !3246, inlinedAt: !3497)
!3512 = !DILocation(line: 1003, column: 13, scope: !3490)
!3513 = !DILocation(line: 1002, column: 26, scope: !3490)
!3514 = !DILocation(line: 144, column: 43, scope: !2117, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 1004, column: 3, scope: !3490)
!3516 = !DILocation(line: 144, column: 51, scope: !2117, inlinedAt: !3515)
!3517 = !DILocation(line: 144, column: 58, scope: !2117, inlinedAt: !3515)
!3518 = !DILocation(line: 146, column: 17, scope: !2117, inlinedAt: !3515)
!3519 = !DILocation(line: 148, column: 57, scope: !2117, inlinedAt: !3515)
!3520 = !DILocation(line: 147, column: 17, scope: !2117, inlinedAt: !3515)
!3521 = !DILocation(line: 149, column: 7, scope: !2117, inlinedAt: !3515)
!3522 = !DILocation(line: 150, column: 12, scope: !2117, inlinedAt: !3515)
!3523 = !DILocation(line: 151, column: 6, scope: !2117, inlinedAt: !3515)
!3524 = !DILocation(line: 1005, column: 10, scope: !3490)
!3525 = !DILocation(line: 1006, column: 1, scope: !3490)
!3526 = !DILocation(line: 1005, column: 3, scope: !3490)
!3527 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !187, file: !187, line: 1009, type: !3528, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3530)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!31, !52, !41, !41, !41}
!3530 = !{!3531, !3532, !3533, !3534}
!3531 = !DILocalVariable(name: "n", arg: 1, scope: !3527, file: !187, line: 1009, type: !52)
!3532 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3527, file: !187, line: 1009, type: !41)
!3533 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3527, file: !187, line: 1010, type: !41)
!3534 = !DILocalVariable(name: "arg", arg: 4, scope: !3527, file: !187, line: 1010, type: !41)
!3535 = !DILocation(line: 1009, column: 24, scope: !3527)
!3536 = !DILocation(line: 1009, column: 39, scope: !3527)
!3537 = !DILocation(line: 1010, column: 32, scope: !3527)
!3538 = !DILocation(line: 1010, column: 57, scope: !3527)
!3539 = !DILocalVariable(name: "n", arg: 1, scope: !3540, file: !187, line: 1017, type: !52)
!3540 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !187, file: !187, line: 1017, type: !3541, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!31, !52, !41, !41, !41, !43}
!3543 = !{!3539, !3544, !3545, !3546, !3547, !3548}
!3544 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3540, file: !187, line: 1017, type: !41)
!3545 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3540, file: !187, line: 1018, type: !41)
!3546 = !DILocalVariable(name: "arg", arg: 4, scope: !3540, file: !187, line: 1019, type: !41)
!3547 = !DILocalVariable(name: "argsize", arg: 5, scope: !3540, file: !187, line: 1019, type: !43)
!3548 = !DILocalVariable(name: "o", scope: !3540, file: !187, line: 1021, type: !192)
!3549 = !DILocation(line: 1017, column: 28, scope: !3540, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 1012, column: 10, scope: !3527)
!3551 = !DILocation(line: 1017, column: 43, scope: !3540, inlinedAt: !3550)
!3552 = !DILocation(line: 1018, column: 36, scope: !3540, inlinedAt: !3550)
!3553 = !DILocation(line: 1019, column: 36, scope: !3540, inlinedAt: !3550)
!3554 = !DILocation(line: 1019, column: 48, scope: !3540, inlinedAt: !3550)
!3555 = !DILocation(line: 1021, column: 3, scope: !3540, inlinedAt: !3550)
!3556 = !DILocation(line: 1021, column: 30, scope: !3540, inlinedAt: !3550)
!3557 = !DILocation(line: 1021, column: 26, scope: !3540, inlinedAt: !3550)
!3558 = !DILocation(line: 171, column: 45, scope: !2166, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 1022, column: 3, scope: !3540, inlinedAt: !3550)
!3560 = !DILocation(line: 172, column: 33, scope: !2166, inlinedAt: !3559)
!3561 = !DILocation(line: 172, column: 57, scope: !2166, inlinedAt: !3559)
!3562 = !DILocation(line: 176, column: 6, scope: !2166, inlinedAt: !3559)
!3563 = !DILocation(line: 176, column: 12, scope: !2166, inlinedAt: !3559)
!3564 = !DILocation(line: 177, column: 8, scope: !2182, inlinedAt: !3559)
!3565 = !DILocation(line: 177, column: 23, scope: !2182, inlinedAt: !3559)
!3566 = !DILocation(line: 177, column: 19, scope: !2182, inlinedAt: !3559)
!3567 = !DILocation(line: 178, column: 5, scope: !2182, inlinedAt: !3559)
!3568 = !DILocation(line: 179, column: 6, scope: !2166, inlinedAt: !3559)
!3569 = !DILocation(line: 179, column: 17, scope: !2166, inlinedAt: !3559)
!3570 = !DILocation(line: 180, column: 6, scope: !2166, inlinedAt: !3559)
!3571 = !DILocation(line: 180, column: 18, scope: !2166, inlinedAt: !3559)
!3572 = !DILocation(line: 1023, column: 10, scope: !3540, inlinedAt: !3550)
!3573 = !DILocation(line: 1024, column: 1, scope: !3540, inlinedAt: !3550)
!3574 = !DILocation(line: 1012, column: 3, scope: !3527)
!3575 = !DILocation(line: 1017, column: 28, scope: !3540)
!3576 = !DILocation(line: 1017, column: 43, scope: !3540)
!3577 = !DILocation(line: 1018, column: 36, scope: !3540)
!3578 = !DILocation(line: 1019, column: 36, scope: !3540)
!3579 = !DILocation(line: 1019, column: 48, scope: !3540)
!3580 = !DILocation(line: 1021, column: 3, scope: !3540)
!3581 = !DILocation(line: 1021, column: 30, scope: !3540)
!3582 = !DILocation(line: 1021, column: 26, scope: !3540)
!3583 = !DILocation(line: 171, column: 45, scope: !2166, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 1022, column: 3, scope: !3540)
!3585 = !DILocation(line: 172, column: 33, scope: !2166, inlinedAt: !3584)
!3586 = !DILocation(line: 172, column: 57, scope: !2166, inlinedAt: !3584)
!3587 = !DILocation(line: 176, column: 6, scope: !2166, inlinedAt: !3584)
!3588 = !DILocation(line: 176, column: 12, scope: !2166, inlinedAt: !3584)
!3589 = !DILocation(line: 177, column: 8, scope: !2182, inlinedAt: !3584)
!3590 = !DILocation(line: 177, column: 23, scope: !2182, inlinedAt: !3584)
!3591 = !DILocation(line: 177, column: 19, scope: !2182, inlinedAt: !3584)
!3592 = !DILocation(line: 178, column: 5, scope: !2182, inlinedAt: !3584)
!3593 = !DILocation(line: 179, column: 6, scope: !2166, inlinedAt: !3584)
!3594 = !DILocation(line: 179, column: 17, scope: !2166, inlinedAt: !3584)
!3595 = !DILocation(line: 180, column: 6, scope: !2166, inlinedAt: !3584)
!3596 = !DILocation(line: 180, column: 18, scope: !2166, inlinedAt: !3584)
!3597 = !DILocation(line: 1023, column: 10, scope: !3540)
!3598 = !DILocation(line: 1024, column: 1, scope: !3540)
!3599 = !DILocation(line: 1023, column: 3, scope: !3540)
!3600 = distinct !DISubprogram(name: "quotearg_custom", scope: !187, file: !187, line: 1027, type: !3601, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3603)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!31, !41, !41, !41}
!3603 = !{!3604, !3605, !3606}
!3604 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3600, file: !187, line: 1027, type: !41)
!3605 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3600, file: !187, line: 1027, type: !41)
!3606 = !DILocalVariable(name: "arg", arg: 3, scope: !3600, file: !187, line: 1028, type: !41)
!3607 = !DILocation(line: 1027, column: 30, scope: !3600)
!3608 = !DILocation(line: 1027, column: 54, scope: !3600)
!3609 = !DILocation(line: 1028, column: 30, scope: !3600)
!3610 = !DILocation(line: 1009, column: 24, scope: !3527, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 1030, column: 10, scope: !3600)
!3612 = !DILocation(line: 1009, column: 39, scope: !3527, inlinedAt: !3611)
!3613 = !DILocation(line: 1010, column: 32, scope: !3527, inlinedAt: !3611)
!3614 = !DILocation(line: 1010, column: 57, scope: !3527, inlinedAt: !3611)
!3615 = !DILocation(line: 1017, column: 28, scope: !3540, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 1012, column: 10, scope: !3527, inlinedAt: !3611)
!3617 = !DILocation(line: 1017, column: 43, scope: !3540, inlinedAt: !3616)
!3618 = !DILocation(line: 1018, column: 36, scope: !3540, inlinedAt: !3616)
!3619 = !DILocation(line: 1019, column: 36, scope: !3540, inlinedAt: !3616)
!3620 = !DILocation(line: 1019, column: 48, scope: !3540, inlinedAt: !3616)
!3621 = !DILocation(line: 1021, column: 3, scope: !3540, inlinedAt: !3616)
!3622 = !DILocation(line: 1021, column: 30, scope: !3540, inlinedAt: !3616)
!3623 = !DILocation(line: 1021, column: 26, scope: !3540, inlinedAt: !3616)
!3624 = !DILocation(line: 171, column: 45, scope: !2166, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 1022, column: 3, scope: !3540, inlinedAt: !3616)
!3626 = !DILocation(line: 172, column: 33, scope: !2166, inlinedAt: !3625)
!3627 = !DILocation(line: 172, column: 57, scope: !2166, inlinedAt: !3625)
!3628 = !DILocation(line: 176, column: 6, scope: !2166, inlinedAt: !3625)
!3629 = !DILocation(line: 176, column: 12, scope: !2166, inlinedAt: !3625)
!3630 = !DILocation(line: 177, column: 8, scope: !2182, inlinedAt: !3625)
!3631 = !DILocation(line: 177, column: 23, scope: !2182, inlinedAt: !3625)
!3632 = !DILocation(line: 177, column: 19, scope: !2182, inlinedAt: !3625)
!3633 = !DILocation(line: 178, column: 5, scope: !2182, inlinedAt: !3625)
!3634 = !DILocation(line: 179, column: 6, scope: !2166, inlinedAt: !3625)
!3635 = !DILocation(line: 179, column: 17, scope: !2166, inlinedAt: !3625)
!3636 = !DILocation(line: 180, column: 6, scope: !2166, inlinedAt: !3625)
!3637 = !DILocation(line: 180, column: 18, scope: !2166, inlinedAt: !3625)
!3638 = !DILocation(line: 1023, column: 10, scope: !3540, inlinedAt: !3616)
!3639 = !DILocation(line: 1024, column: 1, scope: !3540, inlinedAt: !3616)
!3640 = !DILocation(line: 1030, column: 3, scope: !3600)
!3641 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !187, file: !187, line: 1034, type: !3642, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3644)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!31, !41, !41, !41, !43}
!3644 = !{!3645, !3646, !3647, !3648}
!3645 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3641, file: !187, line: 1034, type: !41)
!3646 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3641, file: !187, line: 1034, type: !41)
!3647 = !DILocalVariable(name: "arg", arg: 3, scope: !3641, file: !187, line: 1035, type: !41)
!3648 = !DILocalVariable(name: "argsize", arg: 4, scope: !3641, file: !187, line: 1035, type: !43)
!3649 = !DILocation(line: 1034, column: 34, scope: !3641)
!3650 = !DILocation(line: 1034, column: 58, scope: !3641)
!3651 = !DILocation(line: 1035, column: 34, scope: !3641)
!3652 = !DILocation(line: 1035, column: 46, scope: !3641)
!3653 = !DILocation(line: 1017, column: 28, scope: !3540, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 1037, column: 10, scope: !3641)
!3655 = !DILocation(line: 1017, column: 43, scope: !3540, inlinedAt: !3654)
!3656 = !DILocation(line: 1018, column: 36, scope: !3540, inlinedAt: !3654)
!3657 = !DILocation(line: 1019, column: 36, scope: !3540, inlinedAt: !3654)
!3658 = !DILocation(line: 1019, column: 48, scope: !3540, inlinedAt: !3654)
!3659 = !DILocation(line: 1021, column: 3, scope: !3540, inlinedAt: !3654)
!3660 = !DILocation(line: 1021, column: 30, scope: !3540, inlinedAt: !3654)
!3661 = !DILocation(line: 1021, column: 26, scope: !3540, inlinedAt: !3654)
!3662 = !DILocation(line: 171, column: 45, scope: !2166, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 1022, column: 3, scope: !3540, inlinedAt: !3654)
!3664 = !DILocation(line: 172, column: 33, scope: !2166, inlinedAt: !3663)
!3665 = !DILocation(line: 172, column: 57, scope: !2166, inlinedAt: !3663)
!3666 = !DILocation(line: 176, column: 6, scope: !2166, inlinedAt: !3663)
!3667 = !DILocation(line: 176, column: 12, scope: !2166, inlinedAt: !3663)
!3668 = !DILocation(line: 177, column: 8, scope: !2182, inlinedAt: !3663)
!3669 = !DILocation(line: 177, column: 23, scope: !2182, inlinedAt: !3663)
!3670 = !DILocation(line: 177, column: 19, scope: !2182, inlinedAt: !3663)
!3671 = !DILocation(line: 178, column: 5, scope: !2182, inlinedAt: !3663)
!3672 = !DILocation(line: 179, column: 6, scope: !2166, inlinedAt: !3663)
!3673 = !DILocation(line: 179, column: 17, scope: !2166, inlinedAt: !3663)
!3674 = !DILocation(line: 180, column: 6, scope: !2166, inlinedAt: !3663)
!3675 = !DILocation(line: 180, column: 18, scope: !2166, inlinedAt: !3663)
!3676 = !DILocation(line: 1023, column: 10, scope: !3540, inlinedAt: !3654)
!3677 = !DILocation(line: 1024, column: 1, scope: !3540, inlinedAt: !3654)
!3678 = !DILocation(line: 1037, column: 3, scope: !3641)
!3679 = distinct !DISubprogram(name: "quote_n_mem", scope: !187, file: !187, line: 1052, type: !3680, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3682)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!41, !52, !41, !43}
!3682 = !{!3683, !3684, !3685}
!3683 = !DILocalVariable(name: "n", arg: 1, scope: !3679, file: !187, line: 1052, type: !52)
!3684 = !DILocalVariable(name: "arg", arg: 2, scope: !3679, file: !187, line: 1052, type: !41)
!3685 = !DILocalVariable(name: "argsize", arg: 3, scope: !3679, file: !187, line: 1052, type: !43)
!3686 = !DILocation(line: 1052, column: 18, scope: !3679)
!3687 = !DILocation(line: 1052, column: 33, scope: !3679)
!3688 = !DILocation(line: 1052, column: 45, scope: !3679)
!3689 = !DILocation(line: 1054, column: 10, scope: !3679)
!3690 = !DILocation(line: 1054, column: 3, scope: !3679)
!3691 = distinct !DISubprogram(name: "quote_mem", scope: !187, file: !187, line: 1058, type: !3692, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3694)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!41, !41, !43}
!3694 = !{!3695, !3696}
!3695 = !DILocalVariable(name: "arg", arg: 1, scope: !3691, file: !187, line: 1058, type: !41)
!3696 = !DILocalVariable(name: "argsize", arg: 2, scope: !3691, file: !187, line: 1058, type: !43)
!3697 = !DILocation(line: 1058, column: 24, scope: !3691)
!3698 = !DILocation(line: 1058, column: 36, scope: !3691)
!3699 = !DILocation(line: 1052, column: 18, scope: !3679, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 1060, column: 10, scope: !3691)
!3701 = !DILocation(line: 1052, column: 33, scope: !3679, inlinedAt: !3700)
!3702 = !DILocation(line: 1052, column: 45, scope: !3679, inlinedAt: !3700)
!3703 = !DILocation(line: 1054, column: 10, scope: !3679, inlinedAt: !3700)
!3704 = !DILocation(line: 1060, column: 3, scope: !3691)
!3705 = distinct !DISubprogram(name: "quote_n", scope: !187, file: !187, line: 1064, type: !3706, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3708)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!41, !52, !41}
!3708 = !{!3709, !3710}
!3709 = !DILocalVariable(name: "n", arg: 1, scope: !3705, file: !187, line: 1064, type: !52)
!3710 = !DILocalVariable(name: "arg", arg: 2, scope: !3705, file: !187, line: 1064, type: !41)
!3711 = !DILocation(line: 1064, column: 14, scope: !3705)
!3712 = !DILocation(line: 1064, column: 29, scope: !3705)
!3713 = !DILocation(line: 1052, column: 18, scope: !3679, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 1066, column: 10, scope: !3705)
!3715 = !DILocation(line: 1052, column: 33, scope: !3679, inlinedAt: !3714)
!3716 = !DILocation(line: 1052, column: 45, scope: !3679, inlinedAt: !3714)
!3717 = !DILocation(line: 1054, column: 10, scope: !3679, inlinedAt: !3714)
!3718 = !DILocation(line: 1066, column: 3, scope: !3705)
!3719 = distinct !DISubprogram(name: "quote", scope: !187, file: !187, line: 1070, type: !3720, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !159, variables: !3722)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!41, !41}
!3722 = !{!3723}
!3723 = !DILocalVariable(name: "arg", arg: 1, scope: !3719, file: !187, line: 1070, type: !41)
!3724 = !DILocation(line: 1070, column: 20, scope: !3719)
!3725 = !DILocation(line: 1064, column: 14, scope: !3705, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 1072, column: 10, scope: !3719)
!3727 = !DILocation(line: 1064, column: 29, scope: !3705, inlinedAt: !3726)
!3728 = !DILocation(line: 1052, column: 18, scope: !3679, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 1066, column: 10, scope: !3705, inlinedAt: !3726)
!3730 = !DILocation(line: 1052, column: 33, scope: !3679, inlinedAt: !3729)
!3731 = !DILocation(line: 1052, column: 45, scope: !3679, inlinedAt: !3729)
!3732 = !DILocation(line: 1054, column: 10, scope: !3679, inlinedAt: !3729)
!3733 = !DILocation(line: 1072, column: 3, scope: !3719)
!3734 = !DILocation(line: 56, column: 14, scope: !597)
!3735 = !DILocation(line: 56, column: 30, scope: !597)
!3736 = !DILocation(line: 56, column: 42, scope: !597)
!3737 = !DILocation(line: 66, column: 24, scope: !605)
!3738 = !DILocation(line: 66, column: 15, scope: !605)
!3739 = !DILocation(line: 68, column: 13, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !605, file: !596, line: 68, column: 11)
!3741 = !DILocation(line: 68, column: 11, scope: !605)
!3742 = !DILocation(line: 70, column: 16, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3740, file: !596, line: 70, column: 16)
!3744 = distinct !{!3744, !3745, !3746}
!3745 = !DILocation(line: 64, column: 3, scope: !607)
!3746 = !DILocation(line: 76, column: 5, scope: !607)
!3747 = !DILocation(line: 70, column: 16, scope: !3740)
!3748 = !DILocation(line: 72, column: 22, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3743, file: !596, line: 72, column: 16)
!3750 = !DILocation(line: 72, column: 54, scope: !3749)
!3751 = !DILocation(line: 72, column: 32, scope: !3749)
!3752 = !DILocation(line: 77, column: 1, scope: !597)
!3753 = distinct !DISubprogram(name: "version_etc_arn", scope: !616, file: !616, line: 62, type: !3754, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !3808)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{null, !3756, !41, !41, !41, !39, !43}
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3758, line: 7, baseType: !3759)
!3758 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3760, line: 241, size: 1728, elements: !3761)
!3760 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3782, !3783, !3784, !3785, !3786, !3787, !3789, !3793, !3796, !3798, !3799, !3800, !3801, !3802, !3803, !3804}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3759, file: !3760, line: 242, baseType: !52, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3759, file: !3760, line: 247, baseType: !31, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3759, file: !3760, line: 248, baseType: !31, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3759, file: !3760, line: 249, baseType: !31, size: 64, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3759, file: !3760, line: 250, baseType: !31, size: 64, offset: 256)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3759, file: !3760, line: 251, baseType: !31, size: 64, offset: 320)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3759, file: !3760, line: 252, baseType: !31, size: 64, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3759, file: !3760, line: 253, baseType: !31, size: 64, offset: 448)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3759, file: !3760, line: 254, baseType: !31, size: 64, offset: 512)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3759, file: !3760, line: 256, baseType: !31, size: 64, offset: 576)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3759, file: !3760, line: 257, baseType: !31, size: 64, offset: 640)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3759, file: !3760, line: 258, baseType: !31, size: 64, offset: 704)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3759, file: !3760, line: 260, baseType: !3775, size: 64, offset: 768)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3760, line: 156, size: 192, elements: !3777)
!3777 = !{!3778, !3779, !3781}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3776, file: !3760, line: 157, baseType: !3775, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3776, file: !3760, line: 158, baseType: !3780, size: 64, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3776, file: !3760, line: 162, baseType: !52, size: 32, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3759, file: !3760, line: 262, baseType: !3780, size: 64, offset: 832)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3759, file: !3760, line: 264, baseType: !52, size: 32, offset: 896)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3759, file: !3760, line: 268, baseType: !52, size: 32, offset: 928)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3759, file: !3760, line: 270, baseType: !36, size: 64, offset: 960)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3759, file: !3760, line: 274, baseType: !183, size: 16, offset: 1024)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3759, file: !3760, line: 275, baseType: !3788, size: 8, offset: 1040)
!3788 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3759, file: !3760, line: 276, baseType: !3790, size: 8, offset: 1048)
!3790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 8, elements: !3791)
!3791 = !{!3792}
!3792 = !DISubrange(count: 1)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3759, file: !3760, line: 280, baseType: !3794, size: 64, offset: 1088)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3760, line: 150, baseType: null)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3759, file: !3760, line: 289, baseType: !3797, size: 64, offset: 1152)
!3797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !37, line: 141, baseType: !38)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3759, file: !3760, line: 297, baseType: !33, size: 64, offset: 1216)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3759, file: !3760, line: 298, baseType: !33, size: 64, offset: 1280)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3759, file: !3760, line: 299, baseType: !33, size: 64, offset: 1344)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3759, file: !3760, line: 300, baseType: !33, size: 64, offset: 1408)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3759, file: !3760, line: 302, baseType: !43, size: 64, offset: 1472)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3759, file: !3760, line: 303, baseType: !52, size: 32, offset: 1536)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3759, file: !3760, line: 305, baseType: !3805, size: 160, offset: 1568)
!3805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 160, elements: !3806)
!3806 = !{!3807}
!3807 = !DISubrange(count: 20)
!3808 = !{!3809, !3810, !3811, !3812, !3813, !3814}
!3809 = !DILocalVariable(name: "stream", arg: 1, scope: !3753, file: !616, line: 62, type: !3756)
!3810 = !DILocalVariable(name: "command_name", arg: 2, scope: !3753, file: !616, line: 63, type: !41)
!3811 = !DILocalVariable(name: "package", arg: 3, scope: !3753, file: !616, line: 63, type: !41)
!3812 = !DILocalVariable(name: "version", arg: 4, scope: !3753, file: !616, line: 64, type: !41)
!3813 = !DILocalVariable(name: "authors", arg: 5, scope: !3753, file: !616, line: 65, type: !39)
!3814 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3753, file: !616, line: 65, type: !43)
!3815 = !DILocation(line: 62, column: 24, scope: !3753)
!3816 = !DILocation(line: 63, column: 30, scope: !3753)
!3817 = !DILocation(line: 63, column: 56, scope: !3753)
!3818 = !DILocation(line: 64, column: 30, scope: !3753)
!3819 = !DILocation(line: 65, column: 39, scope: !3753)
!3820 = !DILocation(line: 65, column: 55, scope: !3753)
!3821 = !DILocation(line: 67, column: 7, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3753, file: !616, line: 67, column: 7)
!3823 = !DILocation(line: 67, column: 7, scope: !3753)
!3824 = !DILocation(line: 68, column: 5, scope: !3822)
!3825 = !DILocation(line: 70, column: 5, scope: !3822)
!3826 = !DILocation(line: 84, column: 3, scope: !3753)
!3827 = !DILocation(line: 86, column: 3, scope: !3753)
!3828 = !DILocation(line: 95, column: 3, scope: !3753)
!3829 = !DILocation(line: 99, column: 7, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3753, file: !616, line: 96, column: 5)
!3831 = !DILocation(line: 102, column: 7, scope: !3830)
!3832 = !DILocation(line: 103, column: 7, scope: !3830)
!3833 = !DILocation(line: 106, column: 7, scope: !3830)
!3834 = !DILocation(line: 107, column: 7, scope: !3830)
!3835 = !DILocation(line: 110, column: 7, scope: !3830)
!3836 = !DILocation(line: 112, column: 7, scope: !3830)
!3837 = !DILocation(line: 117, column: 7, scope: !3830)
!3838 = !DILocation(line: 119, column: 7, scope: !3830)
!3839 = !DILocation(line: 124, column: 7, scope: !3830)
!3840 = !DILocation(line: 126, column: 7, scope: !3830)
!3841 = !DILocation(line: 131, column: 7, scope: !3830)
!3842 = !DILocation(line: 134, column: 7, scope: !3830)
!3843 = !DILocation(line: 139, column: 7, scope: !3830)
!3844 = !DILocation(line: 142, column: 7, scope: !3830)
!3845 = !DILocation(line: 147, column: 7, scope: !3830)
!3846 = !DILocation(line: 151, column: 7, scope: !3830)
!3847 = !DILocation(line: 156, column: 7, scope: !3830)
!3848 = !DILocation(line: 160, column: 7, scope: !3830)
!3849 = !DILocation(line: 167, column: 7, scope: !3830)
!3850 = !DILocation(line: 171, column: 7, scope: !3830)
!3851 = !DILocation(line: 173, column: 1, scope: !3753)
!3852 = distinct !DISubprogram(name: "version_etc_ar", scope: !616, file: !616, line: 180, type: !3853, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !3855)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{null, !3756, !41, !41, !41, !39}
!3855 = !{!3856, !3857, !3858, !3859, !3860, !3861}
!3856 = !DILocalVariable(name: "stream", arg: 1, scope: !3852, file: !616, line: 180, type: !3756)
!3857 = !DILocalVariable(name: "command_name", arg: 2, scope: !3852, file: !616, line: 181, type: !41)
!3858 = !DILocalVariable(name: "package", arg: 3, scope: !3852, file: !616, line: 181, type: !41)
!3859 = !DILocalVariable(name: "version", arg: 4, scope: !3852, file: !616, line: 182, type: !41)
!3860 = !DILocalVariable(name: "authors", arg: 5, scope: !3852, file: !616, line: 182, type: !39)
!3861 = !DILocalVariable(name: "n_authors", scope: !3852, file: !616, line: 184, type: !43)
!3862 = !DILocation(line: 180, column: 23, scope: !3852)
!3863 = !DILocation(line: 181, column: 29, scope: !3852)
!3864 = !DILocation(line: 181, column: 55, scope: !3852)
!3865 = !DILocation(line: 182, column: 29, scope: !3852)
!3866 = !DILocation(line: 182, column: 59, scope: !3852)
!3867 = !DILocation(line: 184, column: 10, scope: !3852)
!3868 = !DILocation(line: 186, column: 8, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3852, file: !616, line: 186, column: 3)
!3870 = !DILocation(line: 186, column: 23, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3869, file: !616, line: 186, column: 3)
!3872 = !DILocation(line: 186, column: 3, scope: !3869)
!3873 = !DILocation(line: 186, column: 52, scope: !3871)
!3874 = distinct !{!3874, !3872, !3875}
!3875 = !DILocation(line: 187, column: 5, scope: !3869)
!3876 = !DILocation(line: 188, column: 3, scope: !3852)
!3877 = !DILocation(line: 189, column: 1, scope: !3852)
!3878 = distinct !DISubprogram(name: "version_etc_va", scope: !616, file: !616, line: 196, type: !3879, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !3888)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{null, !3756, !41, !41, !41, !3881}
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !613, line: 189, size: 192, elements: !3883)
!3883 = !{!3884, !3885, !3886, !3887}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3882, file: !613, line: 189, baseType: !30, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3882, file: !613, line: 189, baseType: !30, size: 32, offset: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3882, file: !613, line: 189, baseType: !33, size: 64, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3882, file: !613, line: 189, baseType: !33, size: 64, offset: 128)
!3888 = !{!3889, !3890, !3891, !3892, !3893, !3894, !3895}
!3889 = !DILocalVariable(name: "stream", arg: 1, scope: !3878, file: !616, line: 196, type: !3756)
!3890 = !DILocalVariable(name: "command_name", arg: 2, scope: !3878, file: !616, line: 197, type: !41)
!3891 = !DILocalVariable(name: "package", arg: 3, scope: !3878, file: !616, line: 197, type: !41)
!3892 = !DILocalVariable(name: "version", arg: 4, scope: !3878, file: !616, line: 198, type: !41)
!3893 = !DILocalVariable(name: "authors", arg: 5, scope: !3878, file: !616, line: 198, type: !3881)
!3894 = !DILocalVariable(name: "n_authors", scope: !3878, file: !616, line: 200, type: !43)
!3895 = !DILocalVariable(name: "authtab", scope: !3878, file: !616, line: 201, type: !3896)
!3896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 640, elements: !127)
!3897 = !DILocation(line: 196, column: 23, scope: !3878)
!3898 = !DILocation(line: 197, column: 29, scope: !3878)
!3899 = !DILocation(line: 197, column: 55, scope: !3878)
!3900 = !DILocation(line: 198, column: 29, scope: !3878)
!3901 = !DILocation(line: 198, column: 46, scope: !3878)
!3902 = !DILocation(line: 201, column: 3, scope: !3878)
!3903 = !DILocation(line: 201, column: 15, scope: !3878)
!3904 = !DILocation(line: 200, column: 10, scope: !3878)
!3905 = !DILocation(line: 205, column: 35, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3907, file: !616, line: 203, column: 3)
!3907 = distinct !DILexicalBlock(scope: !3878, file: !616, line: 203, column: 3)
!3908 = !DILocation(line: 205, column: 14, scope: !3906)
!3909 = !DILocation(line: 205, column: 33, scope: !3906)
!3910 = !DILocation(line: 205, column: 67, scope: !3906)
!3911 = !DILocation(line: 203, column: 3, scope: !3907)
!3912 = !DILocation(line: 208, column: 3, scope: !3878)
!3913 = !DILocation(line: 210, column: 1, scope: !3878)
!3914 = distinct !DISubprogram(name: "version_etc", scope: !616, file: !616, line: 227, type: !3915, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !3917)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{null, !3756, !41, !41, !41, null}
!3917 = !{!3918, !3919, !3920, !3921, !3922}
!3918 = !DILocalVariable(name: "stream", arg: 1, scope: !3914, file: !616, line: 227, type: !3756)
!3919 = !DILocalVariable(name: "command_name", arg: 2, scope: !3914, file: !616, line: 228, type: !41)
!3920 = !DILocalVariable(name: "package", arg: 3, scope: !3914, file: !616, line: 228, type: !41)
!3921 = !DILocalVariable(name: "version", arg: 4, scope: !3914, file: !616, line: 229, type: !41)
!3922 = !DILocalVariable(name: "authors", scope: !3914, file: !616, line: 231, type: !3923)
!3923 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !35, line: 46, baseType: !3924)
!3924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3925, line: 48, baseType: !3926)
!3925 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !613, line: 231, baseType: !3927)
!3927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3882, size: 192, elements: !3791)
!3928 = !DILocation(line: 227, column: 20, scope: !3914)
!3929 = !DILocation(line: 228, column: 26, scope: !3914)
!3930 = !DILocation(line: 228, column: 52, scope: !3914)
!3931 = !DILocation(line: 229, column: 26, scope: !3914)
!3932 = !DILocation(line: 231, column: 3, scope: !3914)
!3933 = !DILocation(line: 231, column: 11, scope: !3914)
!3934 = !DILocation(line: 233, column: 3, scope: !3914)
!3935 = !DILocation(line: 234, column: 3, scope: !3914)
!3936 = !DILocation(line: 235, column: 3, scope: !3914)
!3937 = !DILocation(line: 236, column: 1, scope: !3914)
!3938 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !616, file: !616, line: 239, type: !696, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !133)
!3939 = !DILocation(line: 245, column: 3, scope: !3938)
!3940 = !DILocation(line: 251, column: 3, scope: !3938)
!3941 = !DILocation(line: 256, column: 3, scope: !3938)
!3942 = !DILocation(line: 258, column: 1, scope: !3938)
!3943 = distinct !DISubprogram(name: "xnmalloc", scope: !624, file: !624, line: 105, type: !1502, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !3944)
!3944 = !{!3945, !3946}
!3945 = !DILocalVariable(name: "n", arg: 1, scope: !3943, file: !624, line: 105, type: !43)
!3946 = !DILocalVariable(name: "s", arg: 2, scope: !3943, file: !624, line: 105, type: !43)
!3947 = !DILocation(line: 105, column: 18, scope: !3943)
!3948 = !DILocation(line: 105, column: 28, scope: !3943)
!3949 = !DILocation(line: 107, column: 7, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3943, file: !624, line: 107, column: 7)
!3951 = !DILocation(line: 107, column: 7, scope: !3943)
!3952 = !DILocation(line: 108, column: 5, scope: !3950)
!3953 = !DILocation(line: 109, column: 21, scope: !3943)
!3954 = !DILocalVariable(name: "n", arg: 1, scope: !3955, file: !3956, line: 39, type: !43)
!3955 = distinct !DISubprogram(name: "xmalloc", scope: !3956, file: !3956, line: 39, type: !3957, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !3959)
!3956 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!33, !43}
!3959 = !{!3954, !3960}
!3960 = !DILocalVariable(name: "p", scope: !3955, file: !3956, line: 41, type: !33)
!3961 = !DILocation(line: 39, column: 17, scope: !3955, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 109, column: 10, scope: !3943)
!3963 = !DILocation(line: 41, column: 13, scope: !3955, inlinedAt: !3962)
!3964 = !DILocation(line: 41, column: 9, scope: !3955, inlinedAt: !3962)
!3965 = !DILocation(line: 42, column: 8, scope: !3966, inlinedAt: !3962)
!3966 = distinct !DILexicalBlock(scope: !3955, file: !3956, line: 42, column: 7)
!3967 = !DILocation(line: 42, column: 15, scope: !3966, inlinedAt: !3962)
!3968 = !DILocation(line: 42, column: 10, scope: !3966, inlinedAt: !3962)
!3969 = !DILocation(line: 43, column: 5, scope: !3966, inlinedAt: !3962)
!3970 = !DILocation(line: 109, column: 3, scope: !3943)
!3971 = !DILocation(line: 39, column: 17, scope: !3955)
!3972 = !DILocation(line: 41, column: 13, scope: !3955)
!3973 = !DILocation(line: 41, column: 9, scope: !3955)
!3974 = !DILocation(line: 42, column: 8, scope: !3966)
!3975 = !DILocation(line: 42, column: 15, scope: !3966)
!3976 = !DILocation(line: 42, column: 10, scope: !3966)
!3977 = !DILocation(line: 43, column: 5, scope: !3966)
!3978 = !DILocation(line: 44, column: 3, scope: !3955)
!3979 = distinct !DISubprogram(name: "xnrealloc", scope: !624, file: !624, line: 118, type: !1587, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !3980)
!3980 = !{!3981, !3982, !3983}
!3981 = !DILocalVariable(name: "p", arg: 1, scope: !3979, file: !624, line: 118, type: !33)
!3982 = !DILocalVariable(name: "n", arg: 2, scope: !3979, file: !624, line: 118, type: !43)
!3983 = !DILocalVariable(name: "s", arg: 3, scope: !3979, file: !624, line: 118, type: !43)
!3984 = !DILocation(line: 118, column: 18, scope: !3979)
!3985 = !DILocation(line: 118, column: 28, scope: !3979)
!3986 = !DILocation(line: 118, column: 38, scope: !3979)
!3987 = !DILocation(line: 120, column: 7, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3979, file: !624, line: 120, column: 7)
!3989 = !DILocation(line: 120, column: 7, scope: !3979)
!3990 = !DILocation(line: 121, column: 5, scope: !3988)
!3991 = !DILocation(line: 122, column: 25, scope: !3979)
!3992 = !DILocalVariable(name: "p", arg: 1, scope: !3993, file: !3956, line: 51, type: !33)
!3993 = distinct !DISubprogram(name: "xrealloc", scope: !3956, file: !3956, line: 51, type: !3994, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !3996)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!33, !33, !43}
!3996 = !{!3992, !3997}
!3997 = !DILocalVariable(name: "n", arg: 2, scope: !3993, file: !3956, line: 51, type: !43)
!3998 = !DILocation(line: 51, column: 17, scope: !3993, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 122, column: 10, scope: !3979)
!4000 = !DILocation(line: 51, column: 27, scope: !3993, inlinedAt: !3999)
!4001 = !DILocation(line: 53, column: 8, scope: !4002, inlinedAt: !3999)
!4002 = distinct !DILexicalBlock(scope: !3993, file: !3956, line: 53, column: 7)
!4003 = !DILocation(line: 53, column: 13, scope: !4002, inlinedAt: !3999)
!4004 = !DILocation(line: 53, column: 10, scope: !4002, inlinedAt: !3999)
!4005 = !DILocation(line: 57, column: 7, scope: !4006, inlinedAt: !3999)
!4006 = distinct !DILexicalBlock(scope: !4002, file: !3956, line: 54, column: 5)
!4007 = !DILocation(line: 58, column: 7, scope: !4006, inlinedAt: !3999)
!4008 = !DILocation(line: 61, column: 7, scope: !3993, inlinedAt: !3999)
!4009 = !DILocation(line: 62, column: 8, scope: !4010, inlinedAt: !3999)
!4010 = distinct !DILexicalBlock(scope: !3993, file: !3956, line: 62, column: 7)
!4011 = !DILocation(line: 62, column: 13, scope: !4010, inlinedAt: !3999)
!4012 = !DILocation(line: 62, column: 10, scope: !4010, inlinedAt: !3999)
!4013 = !DILocation(line: 63, column: 5, scope: !4010, inlinedAt: !3999)
!4014 = !DILocation(line: 122, column: 3, scope: !3979)
!4015 = !DILocation(line: 51, column: 17, scope: !3993)
!4016 = !DILocation(line: 51, column: 27, scope: !3993)
!4017 = !DILocation(line: 53, column: 8, scope: !4002)
!4018 = !DILocation(line: 53, column: 13, scope: !4002)
!4019 = !DILocation(line: 53, column: 10, scope: !4002)
!4020 = !DILocation(line: 57, column: 7, scope: !4006)
!4021 = !DILocation(line: 58, column: 7, scope: !4006)
!4022 = !DILocation(line: 61, column: 7, scope: !3993)
!4023 = !DILocation(line: 62, column: 8, scope: !4010)
!4024 = !DILocation(line: 62, column: 13, scope: !4010)
!4025 = !DILocation(line: 62, column: 10, scope: !4010)
!4026 = !DILocation(line: 63, column: 5, scope: !4010)
!4027 = !DILocation(line: 65, column: 1, scope: !3993)
!4028 = !DILocation(line: 180, column: 19, scope: !625)
!4029 = !DILocation(line: 180, column: 30, scope: !625)
!4030 = !DILocation(line: 180, column: 41, scope: !625)
!4031 = !DILocation(line: 182, column: 14, scope: !625)
!4032 = !DILocation(line: 182, column: 10, scope: !625)
!4033 = !DILocation(line: 184, column: 9, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !625, file: !624, line: 184, column: 7)
!4035 = !DILocation(line: 184, column: 7, scope: !625)
!4036 = !DILocation(line: 186, column: 13, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4038, file: !624, line: 186, column: 11)
!4038 = distinct !DILexicalBlock(scope: !4034, file: !624, line: 185, column: 5)
!4039 = !DILocation(line: 186, column: 11, scope: !4038)
!4040 = !DILocation(line: 194, column: 30, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4037, file: !624, line: 187, column: 9)
!4042 = !DILocation(line: 195, column: 16, scope: !4041)
!4043 = !DILocation(line: 195, column: 13, scope: !4041)
!4044 = !DILocation(line: 196, column: 9, scope: !4041)
!4045 = !DILocation(line: 204, column: 69, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4047, file: !624, line: 204, column: 11)
!4047 = distinct !DILexicalBlock(scope: !4034, file: !624, line: 199, column: 5)
!4048 = !DILocation(line: 205, column: 11, scope: !4046)
!4049 = !DILocation(line: 204, column: 11, scope: !4047)
!4050 = !DILocation(line: 206, column: 9, scope: !4046)
!4051 = !DILocation(line: 210, column: 7, scope: !625)
!4052 = !DILocation(line: 211, column: 25, scope: !625)
!4053 = !DILocation(line: 51, column: 17, scope: !3993, inlinedAt: !4054)
!4054 = distinct !DILocation(line: 211, column: 10, scope: !625)
!4055 = !DILocation(line: 51, column: 27, scope: !3993, inlinedAt: !4054)
!4056 = !DILocation(line: 53, column: 10, scope: !4002, inlinedAt: !4054)
!4057 = !DILocation(line: 207, column: 14, scope: !4047)
!4058 = !DILocation(line: 207, column: 18, scope: !4047)
!4059 = !DILocation(line: 207, column: 9, scope: !4047)
!4060 = !DILocation(line: 53, column: 8, scope: !4002, inlinedAt: !4054)
!4061 = !DILocation(line: 57, column: 7, scope: !4006, inlinedAt: !4054)
!4062 = !DILocation(line: 58, column: 7, scope: !4006, inlinedAt: !4054)
!4063 = !DILocation(line: 61, column: 7, scope: !3993, inlinedAt: !4054)
!4064 = !DILocation(line: 62, column: 8, scope: !4010, inlinedAt: !4054)
!4065 = !DILocation(line: 62, column: 13, scope: !4010, inlinedAt: !4054)
!4066 = !DILocation(line: 62, column: 10, scope: !4010, inlinedAt: !4054)
!4067 = !DILocation(line: 63, column: 5, scope: !4010, inlinedAt: !4054)
!4068 = !DILocation(line: 211, column: 3, scope: !625)
!4069 = distinct !DISubprogram(name: "xcharalloc", scope: !624, file: !624, line: 220, type: !3014, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !4070)
!4070 = !{!4071}
!4071 = !DILocalVariable(name: "n", arg: 1, scope: !4069, file: !624, line: 220, type: !43)
!4072 = !DILocation(line: 220, column: 20, scope: !4069)
!4073 = !DILocation(line: 39, column: 17, scope: !3955, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 222, column: 10, scope: !4069)
!4075 = !DILocation(line: 41, column: 13, scope: !3955, inlinedAt: !4074)
!4076 = !DILocation(line: 41, column: 9, scope: !3955, inlinedAt: !4074)
!4077 = !DILocation(line: 42, column: 8, scope: !3966, inlinedAt: !4074)
!4078 = !DILocation(line: 42, column: 15, scope: !3966, inlinedAt: !4074)
!4079 = !DILocation(line: 42, column: 10, scope: !3966, inlinedAt: !4074)
!4080 = !DILocation(line: 43, column: 5, scope: !3966, inlinedAt: !4074)
!4081 = !DILocation(line: 222, column: 3, scope: !4069)
!4082 = distinct !DISubprogram(name: "x2realloc", scope: !3956, file: !3956, line: 74, type: !4083, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !4085)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!33, !33, !628}
!4085 = !{!4086, !4087}
!4086 = !DILocalVariable(name: "p", arg: 1, scope: !4082, file: !3956, line: 74, type: !33)
!4087 = !DILocalVariable(name: "pn", arg: 2, scope: !4082, file: !3956, line: 74, type: !628)
!4088 = !DILocation(line: 74, column: 18, scope: !4082)
!4089 = !DILocation(line: 74, column: 29, scope: !4082)
!4090 = !DILocation(line: 180, column: 19, scope: !625, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 76, column: 10, scope: !4082)
!4092 = !DILocation(line: 180, column: 30, scope: !625, inlinedAt: !4091)
!4093 = !DILocation(line: 180, column: 41, scope: !625, inlinedAt: !4091)
!4094 = !DILocation(line: 182, column: 14, scope: !625, inlinedAt: !4091)
!4095 = !DILocation(line: 182, column: 10, scope: !625, inlinedAt: !4091)
!4096 = !DILocation(line: 184, column: 9, scope: !4034, inlinedAt: !4091)
!4097 = !DILocation(line: 184, column: 7, scope: !625, inlinedAt: !4091)
!4098 = !DILocation(line: 186, column: 13, scope: !4037, inlinedAt: !4091)
!4099 = !DILocation(line: 186, column: 11, scope: !4038, inlinedAt: !4091)
!4100 = !DILocation(line: 210, column: 7, scope: !625, inlinedAt: !4091)
!4101 = !DILocation(line: 51, column: 17, scope: !3993, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 211, column: 10, scope: !625, inlinedAt: !4091)
!4103 = !DILocation(line: 51, column: 27, scope: !3993, inlinedAt: !4102)
!4104 = !DILocation(line: 53, column: 10, scope: !4002, inlinedAt: !4102)
!4105 = !DILocation(line: 205, column: 11, scope: !4046, inlinedAt: !4091)
!4106 = !DILocation(line: 204, column: 11, scope: !4047, inlinedAt: !4091)
!4107 = !DILocation(line: 206, column: 9, scope: !4046, inlinedAt: !4091)
!4108 = !DILocation(line: 207, column: 14, scope: !4047, inlinedAt: !4091)
!4109 = !DILocation(line: 207, column: 18, scope: !4047, inlinedAt: !4091)
!4110 = !DILocation(line: 207, column: 9, scope: !4047, inlinedAt: !4091)
!4111 = !DILocation(line: 53, column: 8, scope: !4002, inlinedAt: !4102)
!4112 = !DILocation(line: 57, column: 7, scope: !4006, inlinedAt: !4102)
!4113 = !DILocation(line: 58, column: 7, scope: !4006, inlinedAt: !4102)
!4114 = !DILocation(line: 61, column: 7, scope: !3993, inlinedAt: !4102)
!4115 = !DILocation(line: 62, column: 8, scope: !4010, inlinedAt: !4102)
!4116 = !DILocation(line: 62, column: 13, scope: !4010, inlinedAt: !4102)
!4117 = !DILocation(line: 62, column: 10, scope: !4010, inlinedAt: !4102)
!4118 = !DILocation(line: 63, column: 5, scope: !4010, inlinedAt: !4102)
!4119 = !DILocation(line: 76, column: 3, scope: !4082)
!4120 = distinct !DISubprogram(name: "xzalloc", scope: !3956, file: !3956, line: 84, type: !3957, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !4121)
!4121 = !{!4122}
!4122 = !DILocalVariable(name: "s", arg: 1, scope: !4120, file: !3956, line: 84, type: !43)
!4123 = !DILocation(line: 84, column: 17, scope: !4120)
!4124 = !DILocation(line: 39, column: 17, scope: !3955, inlinedAt: !4125)
!4125 = distinct !DILocation(line: 86, column: 18, scope: !4120)
!4126 = !DILocation(line: 41, column: 13, scope: !3955, inlinedAt: !4125)
!4127 = !DILocation(line: 41, column: 9, scope: !3955, inlinedAt: !4125)
!4128 = !DILocation(line: 42, column: 8, scope: !3966, inlinedAt: !4125)
!4129 = !DILocation(line: 42, column: 15, scope: !3966, inlinedAt: !4125)
!4130 = !DILocation(line: 42, column: 10, scope: !3966, inlinedAt: !4125)
!4131 = !DILocation(line: 43, column: 5, scope: !3966, inlinedAt: !4125)
!4132 = !DILocation(line: 86, column: 10, scope: !4120)
!4133 = !DILocation(line: 86, column: 3, scope: !4120)
!4134 = distinct !DISubprogram(name: "xcalloc", scope: !3956, file: !3956, line: 93, type: !1502, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !4135)
!4135 = !{!4136, !4137, !4138}
!4136 = !DILocalVariable(name: "n", arg: 1, scope: !4134, file: !3956, line: 93, type: !43)
!4137 = !DILocalVariable(name: "s", arg: 2, scope: !4134, file: !3956, line: 93, type: !43)
!4138 = !DILocalVariable(name: "p", scope: !4134, file: !3956, line: 95, type: !33)
!4139 = !DILocation(line: 93, column: 17, scope: !4134)
!4140 = !DILocation(line: 93, column: 27, scope: !4134)
!4141 = !DILocation(line: 100, column: 7, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4134, file: !3956, line: 100, column: 7)
!4143 = !DILocation(line: 101, column: 7, scope: !4142)
!4144 = !DILocation(line: 101, column: 18, scope: !4142)
!4145 = !DILocation(line: 95, column: 9, scope: !4134)
!4146 = !DILocation(line: 101, column: 16, scope: !4142)
!4147 = !DILocation(line: 100, column: 7, scope: !4134)
!4148 = !DILocation(line: 102, column: 5, scope: !4142)
!4149 = !DILocation(line: 103, column: 3, scope: !4134)
!4150 = distinct !DISubprogram(name: "xmemdup", scope: !3956, file: !3956, line: 111, type: !4151, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !4155)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!33, !4153, !43}
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4155 = !{!4156, !4157}
!4156 = !DILocalVariable(name: "p", arg: 1, scope: !4150, file: !3956, line: 111, type: !4153)
!4157 = !DILocalVariable(name: "s", arg: 2, scope: !4150, file: !3956, line: 111, type: !43)
!4158 = !DILocation(line: 111, column: 22, scope: !4150)
!4159 = !DILocation(line: 111, column: 32, scope: !4150)
!4160 = !DILocation(line: 39, column: 17, scope: !3955, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 113, column: 18, scope: !4150)
!4162 = !DILocation(line: 41, column: 13, scope: !3955, inlinedAt: !4161)
!4163 = !DILocation(line: 41, column: 9, scope: !3955, inlinedAt: !4161)
!4164 = !DILocation(line: 42, column: 8, scope: !3966, inlinedAt: !4161)
!4165 = !DILocation(line: 42, column: 15, scope: !3966, inlinedAt: !4161)
!4166 = !DILocation(line: 42, column: 10, scope: !3966, inlinedAt: !4161)
!4167 = !DILocation(line: 43, column: 5, scope: !3966, inlinedAt: !4161)
!4168 = !DILocation(line: 113, column: 10, scope: !4150)
!4169 = !DILocation(line: 113, column: 3, scope: !4150)
!4170 = distinct !DISubprogram(name: "xstrdup", scope: !3956, file: !3956, line: 119, type: !3213, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !4171)
!4171 = !{!4172}
!4172 = !DILocalVariable(name: "string", arg: 1, scope: !4170, file: !3956, line: 119, type: !41)
!4173 = !DILocation(line: 119, column: 22, scope: !4170)
!4174 = !DILocation(line: 121, column: 27, scope: !4170)
!4175 = !DILocation(line: 121, column: 43, scope: !4170)
!4176 = !DILocation(line: 111, column: 22, scope: !4150, inlinedAt: !4177)
!4177 = distinct !DILocation(line: 121, column: 10, scope: !4170)
!4178 = !DILocation(line: 111, column: 32, scope: !4150, inlinedAt: !4177)
!4179 = !DILocation(line: 39, column: 17, scope: !3955, inlinedAt: !4180)
!4180 = distinct !DILocation(line: 113, column: 18, scope: !4150, inlinedAt: !4177)
!4181 = !DILocation(line: 41, column: 13, scope: !3955, inlinedAt: !4180)
!4182 = !DILocation(line: 41, column: 9, scope: !3955, inlinedAt: !4180)
!4183 = !DILocation(line: 42, column: 8, scope: !3966, inlinedAt: !4180)
!4184 = !DILocation(line: 42, column: 15, scope: !3966, inlinedAt: !4180)
!4185 = !DILocation(line: 42, column: 10, scope: !3966, inlinedAt: !4180)
!4186 = !DILocation(line: 43, column: 5, scope: !3966, inlinedAt: !4180)
!4187 = !DILocation(line: 113, column: 10, scope: !4150, inlinedAt: !4177)
!4188 = !DILocation(line: 121, column: 3, scope: !4170)
!4189 = distinct !DISubprogram(name: "xalloc_die", scope: !4190, file: !4190, line: 32, type: !696, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !637, variables: !133)
!4190 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4191 = !DILocation(line: 34, column: 10, scope: !4189)
!4192 = !DILocation(line: 34, column: 33, scope: !4189)
!4193 = !DILocation(line: 34, column: 3, scope: !4189)
!4194 = !DILocation(line: 40, column: 3, scope: !4189)
!4195 = distinct !DISubprogram(name: "xnumtoumax", scope: !4196, file: !4196, line: 36, type: !4197, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !4199)
!4196 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!63, !41, !52, !63, !63, !41, !41, !52}
!4199 = !{!4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4209}
!4200 = !DILocalVariable(name: "n_str", arg: 1, scope: !4195, file: !4196, line: 36, type: !41)
!4201 = !DILocalVariable(name: "base", arg: 2, scope: !4195, file: !4196, line: 36, type: !52)
!4202 = !DILocalVariable(name: "min", arg: 3, scope: !4195, file: !4196, line: 36, type: !63)
!4203 = !DILocalVariable(name: "max", arg: 4, scope: !4195, file: !4196, line: 36, type: !63)
!4204 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4195, file: !4196, line: 37, type: !41)
!4205 = !DILocalVariable(name: "err", arg: 6, scope: !4195, file: !4196, line: 37, type: !41)
!4206 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4195, file: !4196, line: 37, type: !52)
!4207 = !DILocalVariable(name: "s_err", scope: !4195, file: !4196, line: 39, type: !4208)
!4208 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !643, line: 39, baseType: !642)
!4209 = !DILocalVariable(name: "tnum", scope: !4195, file: !4196, line: 41, type: !63)
!4210 = !DILocation(line: 36, column: 26, scope: !4195)
!4211 = !DILocation(line: 36, column: 37, scope: !4195)
!4212 = !DILocation(line: 36, column: 57, scope: !4195)
!4213 = !DILocation(line: 36, column: 76, scope: !4195)
!4214 = !DILocation(line: 37, column: 26, scope: !4195)
!4215 = !DILocation(line: 37, column: 48, scope: !4195)
!4216 = !DILocation(line: 37, column: 57, scope: !4195)
!4217 = !DILocation(line: 41, column: 3, scope: !4195)
!4218 = !DILocation(line: 41, column: 17, scope: !4195)
!4219 = !DILocation(line: 42, column: 11, scope: !4195)
!4220 = !DILocation(line: 39, column: 16, scope: !4195)
!4221 = !DILocation(line: 44, column: 7, scope: !4195)
!4222 = !DILocation(line: 69, column: 50, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4224, file: !4196, line: 67, column: 5)
!4224 = distinct !DILexicalBlock(scope: !4195, file: !4196, line: 66, column: 7)
!4225 = !DILocation(line: 46, column: 11, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4227, file: !4196, line: 46, column: 11)
!4227 = distinct !DILexicalBlock(scope: !4228, file: !4196, line: 45, column: 5)
!4228 = distinct !DILexicalBlock(scope: !4195, file: !4196, line: 44, column: 7)
!4229 = !DILocation(line: 46, column: 16, scope: !4226)
!4230 = !DILocation(line: 46, column: 29, scope: !4226)
!4231 = !DILocation(line: 46, column: 22, scope: !4226)
!4232 = !DILocation(line: 51, column: 20, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4234, file: !4196, line: 51, column: 15)
!4234 = distinct !DILexicalBlock(scope: !4226, file: !4196, line: 47, column: 9)
!4235 = !DILocation(line: 52, column: 13, scope: !4233)
!4236 = !DILocation(line: 51, column: 15, scope: !4234)
!4237 = !DILocation(line: 59, column: 9, scope: !4234)
!4238 = !DILocation(line: 62, column: 5, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4228, file: !4196, line: 61, column: 12)
!4240 = !DILocation(line: 62, column: 11, scope: !4239)
!4241 = !DILocation(line: 64, column: 5, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4239, file: !4196, line: 63, column: 12)
!4243 = !DILocation(line: 64, column: 11, scope: !4242)
!4244 = !DILocation(line: 69, column: 14, scope: !4223)
!4245 = !DILocation(line: 69, column: 56, scope: !4223)
!4246 = !DILocation(line: 70, column: 29, scope: !4223)
!4247 = !DILocation(line: 69, column: 7, scope: !4223)
!4248 = !DILocation(line: 73, column: 10, scope: !4195)
!4249 = !DILocation(line: 71, column: 5, scope: !4223)
!4250 = !DILocation(line: 74, column: 1, scope: !4195)
!4251 = !DILocation(line: 73, column: 3, scope: !4195)
!4252 = distinct !DISubprogram(name: "xdectoumax", scope: !4196, file: !4196, line: 82, type: !4253, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !4255)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!63, !41, !63, !63, !41, !41, !52}
!4255 = !{!4256, !4257, !4258, !4259, !4260, !4261}
!4256 = !DILocalVariable(name: "n_str", arg: 1, scope: !4252, file: !4196, line: 82, type: !41)
!4257 = !DILocalVariable(name: "min", arg: 2, scope: !4252, file: !4196, line: 82, type: !63)
!4258 = !DILocalVariable(name: "max", arg: 3, scope: !4252, file: !4196, line: 82, type: !63)
!4259 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4252, file: !4196, line: 83, type: !41)
!4260 = !DILocalVariable(name: "err", arg: 5, scope: !4252, file: !4196, line: 83, type: !41)
!4261 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4252, file: !4196, line: 83, type: !52)
!4262 = !DILocation(line: 82, column: 26, scope: !4252)
!4263 = !DILocation(line: 82, column: 47, scope: !4252)
!4264 = !DILocation(line: 82, column: 66, scope: !4252)
!4265 = !DILocation(line: 83, column: 26, scope: !4252)
!4266 = !DILocation(line: 83, column: 48, scope: !4252)
!4267 = !DILocation(line: 83, column: 57, scope: !4252)
!4268 = !DILocation(line: 85, column: 10, scope: !4252)
!4269 = !DILocation(line: 85, column: 3, scope: !4252)
!4270 = distinct !DISubprogram(name: "xstrtoumax", scope: !4271, file: !4271, line: 88, type: !4272, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !4275)
!4271 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!4208, !41, !53, !52, !4274, !41}
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!4275 = !{!4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4288, !4289, !4292, !4293}
!4276 = !DILocalVariable(name: "s", arg: 1, scope: !4270, file: !4271, line: 88, type: !41)
!4277 = !DILocalVariable(name: "ptr", arg: 2, scope: !4270, file: !4271, line: 88, type: !53)
!4278 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4270, file: !4271, line: 88, type: !52)
!4279 = !DILocalVariable(name: "val", arg: 4, scope: !4270, file: !4271, line: 89, type: !4274)
!4280 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4270, file: !4271, line: 89, type: !41)
!4281 = !DILocalVariable(name: "t_ptr", scope: !4270, file: !4271, line: 91, type: !31)
!4282 = !DILocalVariable(name: "p", scope: !4270, file: !4271, line: 92, type: !53)
!4283 = !DILocalVariable(name: "tmp", scope: !4270, file: !4271, line: 93, type: !63)
!4284 = !DILocalVariable(name: "err", scope: !4270, file: !4271, line: 94, type: !4208)
!4285 = !DILocalVariable(name: "q", scope: !4286, file: !4271, line: 104, type: !41)
!4286 = distinct !DILexicalBlock(scope: !4287, file: !4271, line: 103, column: 5)
!4287 = distinct !DILexicalBlock(scope: !4270, file: !4271, line: 102, column: 7)
!4288 = !DILocalVariable(name: "ch", scope: !4286, file: !4271, line: 105, type: !577)
!4289 = !DILocalVariable(name: "base", scope: !4290, file: !4271, line: 141, type: !52)
!4290 = distinct !DILexicalBlock(scope: !4291, file: !4271, line: 140, column: 5)
!4291 = distinct !DILexicalBlock(scope: !4270, file: !4271, line: 139, column: 7)
!4292 = !DILocalVariable(name: "suffixes", scope: !4290, file: !4271, line: 142, type: !52)
!4293 = !DILocalVariable(name: "overflow", scope: !4290, file: !4271, line: 143, type: !4208)
!4294 = !DILocation(line: 88, column: 24, scope: !4270)
!4295 = !DILocation(line: 88, column: 34, scope: !4270)
!4296 = !DILocation(line: 88, column: 43, scope: !4270)
!4297 = !DILocation(line: 89, column: 24, scope: !4270)
!4298 = !DILocation(line: 89, column: 41, scope: !4270)
!4299 = !DILocation(line: 91, column: 3, scope: !4270)
!4300 = !DILocation(line: 94, column: 16, scope: !4270)
!4301 = !DILocation(line: 96, column: 3, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4303, file: !4271, line: 96, column: 3)
!4303 = distinct !DILexicalBlock(scope: !4270, file: !4271, line: 96, column: 3)
!4304 = !DILocation(line: 98, column: 8, scope: !4270)
!4305 = !DILocation(line: 92, column: 10, scope: !4270)
!4306 = !DILocation(line: 100, column: 3, scope: !4270)
!4307 = !DILocation(line: 100, column: 9, scope: !4270)
!4308 = !DILocation(line: 104, column: 19, scope: !4286)
!4309 = !DIExpression(DW_OP_deref)
!4310 = !DILocation(line: 105, column: 21, scope: !4286)
!4311 = !DILocation(line: 106, column: 14, scope: !4286)
!4312 = !DILocation(line: 106, column: 7, scope: !4286)
!4313 = !DILocation(line: 107, column: 15, scope: !4286)
!4314 = distinct !{!4314, !4312, !4315}
!4315 = !DILocation(line: 107, column: 17, scope: !4286)
!4316 = !DILocation(line: 108, column: 14, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4286, file: !4271, line: 108, column: 11)
!4318 = !DILocalVariable(name: "nptr", arg: 1, scope: !4319, file: !4320, line: 336, type: !4323)
!4319 = distinct !DISubprogram(name: "strtoumax", scope: !4320, file: !4320, line: 336, type: !4321, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !4325)
!4320 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!63, !4323, !4324, !52}
!4323 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!4324 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!4325 = !{!4318, !4326, !4327}
!4326 = !DILocalVariable(name: "endptr", arg: 2, scope: !4319, file: !4320, line: 336, type: !4324)
!4327 = !DILocalVariable(name: "base", arg: 3, scope: !4319, file: !4320, line: 336, type: !52)
!4328 = !DILocation(line: 336, column: 1, scope: !4319, inlinedAt: !4329)
!4329 = distinct !DILocation(line: 112, column: 9, scope: !4270)
!4330 = !DILocation(line: 339, column: 10, scope: !4319, inlinedAt: !4329)
!4331 = !DILocation(line: 93, column: 14, scope: !4270)
!4332 = !DILocation(line: 114, column: 7, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4270, file: !4271, line: 114, column: 7)
!4334 = !DILocation(line: 114, column: 10, scope: !4333)
!4335 = !DILocation(line: 114, column: 7, scope: !4270)
!4336 = !DILocation(line: 118, column: 11, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4338, file: !4271, line: 118, column: 11)
!4338 = distinct !DILexicalBlock(scope: !4333, file: !4271, line: 115, column: 5)
!4339 = !DILocation(line: 118, column: 26, scope: !4337)
!4340 = !DILocation(line: 118, column: 29, scope: !4337)
!4341 = !DILocation(line: 118, column: 33, scope: !4337)
!4342 = !DILocation(line: 118, column: 36, scope: !4337)
!4343 = !DILocation(line: 118, column: 11, scope: !4338)
!4344 = !DILocation(line: 123, column: 12, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4333, file: !4271, line: 123, column: 12)
!4346 = !DILocation(line: 123, column: 12, scope: !4333)
!4347 = !DILocation(line: 128, column: 5, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4345, file: !4271, line: 124, column: 5)
!4349 = !DILocation(line: 133, column: 8, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4270, file: !4271, line: 133, column: 7)
!4351 = !DILocation(line: 133, column: 7, scope: !4270)
!4352 = !DILocation(line: 135, column: 12, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4350, file: !4271, line: 134, column: 5)
!4354 = !DILocation(line: 136, column: 7, scope: !4353)
!4355 = !DILocation(line: 139, column: 7, scope: !4291)
!4356 = !DILocation(line: 139, column: 11, scope: !4291)
!4357 = !DILocation(line: 139, column: 7, scope: !4270)
!4358 = !DILocation(line: 141, column: 11, scope: !4290)
!4359 = !DILocation(line: 142, column: 11, scope: !4290)
!4360 = !DILocation(line: 145, column: 12, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4290, file: !4271, line: 145, column: 11)
!4362 = !DILocation(line: 145, column: 11, scope: !4290)
!4363 = !DILocation(line: 147, column: 16, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4361, file: !4271, line: 146, column: 9)
!4365 = !DILocation(line: 148, column: 22, scope: !4364)
!4366 = !DILocation(line: 148, column: 11, scope: !4364)
!4367 = !DILocation(line: 151, column: 7, scope: !4290)
!4368 = !DILocation(line: 163, column: 15, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4370, file: !4271, line: 163, column: 15)
!4370 = distinct !DILexicalBlock(scope: !4290, file: !4271, line: 152, column: 9)
!4371 = !DILocation(line: 163, column: 15, scope: !4370)
!4372 = !DILocation(line: 164, column: 21, scope: !4369)
!4373 = !DILocation(line: 164, column: 13, scope: !4369)
!4374 = !DILocation(line: 167, column: 21, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4376, file: !4271, line: 167, column: 21)
!4376 = distinct !DILexicalBlock(scope: !4369, file: !4271, line: 165, column: 15)
!4377 = !DILocation(line: 167, column: 29, scope: !4375)
!4378 = !DILocation(line: 167, column: 21, scope: !4376)
!4379 = !DILocation(line: 175, column: 17, scope: !4376)
!4380 = !DILocation(line: 179, column: 7, scope: !4290)
!4381 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4382, file: !4271, line: 60, type: !52)
!4382 = distinct !DISubprogram(name: "bkm_scale", scope: !4271, file: !4271, line: 60, type: !4383, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !4385)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!4208, !4274, !52}
!4385 = !{!4386, !4381}
!4386 = !DILocalVariable(name: "x", arg: 1, scope: !4382, file: !4271, line: 60, type: !4274)
!4387 = !DILocation(line: 60, column: 31, scope: !4382, inlinedAt: !4388)
!4388 = distinct !DILocation(line: 182, column: 22, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4290, file: !4271, line: 180, column: 9)
!4390 = !DILocation(line: 67, column: 39, scope: !4391, inlinedAt: !4388)
!4391 = distinct !DILexicalBlock(scope: !4382, file: !4271, line: 67, column: 7)
!4392 = !DILocation(line: 72, column: 6, scope: !4382, inlinedAt: !4388)
!4393 = !DILocation(line: 67, column: 7, scope: !4382, inlinedAt: !4388)
!4394 = !DILocation(line: 143, column: 20, scope: !4290)
!4395 = !DILocation(line: 183, column: 11, scope: !4389)
!4396 = !DILocation(line: 60, column: 31, scope: !4382, inlinedAt: !4397)
!4397 = distinct !DILocation(line: 189, column: 22, scope: !4389)
!4398 = !DILocation(line: 67, column: 39, scope: !4391, inlinedAt: !4397)
!4399 = !DILocation(line: 72, column: 6, scope: !4382, inlinedAt: !4397)
!4400 = !DILocation(line: 67, column: 7, scope: !4382, inlinedAt: !4397)
!4401 = !DILocation(line: 190, column: 11, scope: !4389)
!4402 = !DILocalVariable(name: "power", arg: 3, scope: !4403, file: !4271, line: 77, type: !52)
!4403 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4271, file: !4271, line: 77, type: !4404, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !4406)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!4208, !4274, !52, !52}
!4406 = !{!4407, !4408, !4402, !4409}
!4407 = !DILocalVariable(name: "x", arg: 1, scope: !4403, file: !4271, line: 77, type: !4274)
!4408 = !DILocalVariable(name: "base", arg: 2, scope: !4403, file: !4271, line: 77, type: !52)
!4409 = !DILocalVariable(name: "err", scope: !4403, file: !4271, line: 79, type: !4208)
!4410 = !DILocation(line: 77, column: 50, scope: !4403, inlinedAt: !4411)
!4411 = distinct !DILocation(line: 197, column: 22, scope: !4389)
!4412 = !DILocation(line: 79, column: 16, scope: !4403, inlinedAt: !4411)
!4413 = !DILocation(line: 67, column: 39, scope: !4391, inlinedAt: !4414)
!4414 = distinct !DILocation(line: 81, column: 12, scope: !4403, inlinedAt: !4411)
!4415 = !DILocation(line: 72, column: 6, scope: !4382, inlinedAt: !4414)
!4416 = !DILocation(line: 67, column: 7, scope: !4382, inlinedAt: !4414)
!4417 = !DILocation(line: 81, column: 9, scope: !4403, inlinedAt: !4411)
!4418 = !DILocation(line: 241, column: 11, scope: !4290)
!4419 = !DILocation(line: 77, column: 50, scope: !4403, inlinedAt: !4420)
!4420 = distinct !DILocation(line: 202, column: 22, scope: !4389)
!4421 = !DILocation(line: 79, column: 16, scope: !4403, inlinedAt: !4420)
!4422 = !DILocation(line: 67, column: 39, scope: !4391, inlinedAt: !4423)
!4423 = distinct !DILocation(line: 81, column: 12, scope: !4403, inlinedAt: !4420)
!4424 = !DILocation(line: 72, column: 6, scope: !4382, inlinedAt: !4423)
!4425 = !DILocation(line: 67, column: 7, scope: !4382, inlinedAt: !4423)
!4426 = !DILocation(line: 81, column: 9, scope: !4403, inlinedAt: !4420)
!4427 = !DILocation(line: 77, column: 50, scope: !4403, inlinedAt: !4428)
!4428 = distinct !DILocation(line: 207, column: 22, scope: !4389)
!4429 = !DILocation(line: 79, column: 16, scope: !4403, inlinedAt: !4428)
!4430 = !DILocation(line: 67, column: 39, scope: !4391, inlinedAt: !4431)
!4431 = distinct !DILocation(line: 81, column: 12, scope: !4403, inlinedAt: !4428)
!4432 = !DILocation(line: 72, column: 6, scope: !4382, inlinedAt: !4431)
!4433 = !DILocation(line: 67, column: 7, scope: !4382, inlinedAt: !4431)
!4434 = !DILocation(line: 77, column: 50, scope: !4403, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 212, column: 22, scope: !4389)
!4436 = !DILocation(line: 79, column: 16, scope: !4403, inlinedAt: !4435)
!4437 = !DILocation(line: 67, column: 39, scope: !4391, inlinedAt: !4438)
!4438 = distinct !DILocation(line: 81, column: 12, scope: !4403, inlinedAt: !4435)
!4439 = !DILocation(line: 72, column: 6, scope: !4382, inlinedAt: !4438)
!4440 = !DILocation(line: 67, column: 7, scope: !4382, inlinedAt: !4438)
!4441 = !DILocation(line: 81, column: 9, scope: !4403, inlinedAt: !4435)
!4442 = !DILocation(line: 77, column: 50, scope: !4403, inlinedAt: !4443)
!4443 = distinct !DILocation(line: 216, column: 22, scope: !4389)
!4444 = !DILocation(line: 79, column: 16, scope: !4403, inlinedAt: !4443)
!4445 = !DILocation(line: 67, column: 39, scope: !4391, inlinedAt: !4446)
!4446 = distinct !DILocation(line: 81, column: 12, scope: !4403, inlinedAt: !4443)
!4447 = !DILocation(line: 72, column: 6, scope: !4382, inlinedAt: !4446)
!4448 = !DILocation(line: 67, column: 7, scope: !4382, inlinedAt: !4446)
!4449 = !DILocation(line: 81, column: 9, scope: !4403, inlinedAt: !4443)
!4450 = !DILocation(line: 77, column: 50, scope: !4403, inlinedAt: !4451)
!4451 = distinct !DILocation(line: 221, column: 22, scope: !4389)
!4452 = !DILocation(line: 79, column: 16, scope: !4403, inlinedAt: !4451)
!4453 = !DILocation(line: 67, column: 39, scope: !4391, inlinedAt: !4454)
!4454 = distinct !DILocation(line: 81, column: 12, scope: !4403, inlinedAt: !4451)
!4455 = !DILocation(line: 72, column: 6, scope: !4382, inlinedAt: !4454)
!4456 = !DILocation(line: 67, column: 7, scope: !4382, inlinedAt: !4454)
!4457 = !DILocation(line: 81, column: 9, scope: !4403, inlinedAt: !4451)
!4458 = !DILocation(line: 60, column: 31, scope: !4382, inlinedAt: !4459)
!4459 = distinct !DILocation(line: 225, column: 22, scope: !4389)
!4460 = !DILocation(line: 67, column: 39, scope: !4391, inlinedAt: !4459)
!4461 = !DILocation(line: 72, column: 6, scope: !4382, inlinedAt: !4459)
!4462 = !DILocation(line: 67, column: 7, scope: !4382, inlinedAt: !4459)
!4463 = !DILocation(line: 226, column: 11, scope: !4389)
!4464 = !DILocation(line: 77, column: 50, scope: !4403, inlinedAt: !4465)
!4465 = distinct !DILocation(line: 229, column: 22, scope: !4389)
!4466 = !DILocation(line: 79, column: 16, scope: !4403, inlinedAt: !4465)
!4467 = !DILocation(line: 67, column: 39, scope: !4391, inlinedAt: !4468)
!4468 = distinct !DILocation(line: 81, column: 12, scope: !4403, inlinedAt: !4465)
!4469 = !DILocation(line: 72, column: 6, scope: !4382, inlinedAt: !4468)
!4470 = !DILocation(line: 67, column: 7, scope: !4382, inlinedAt: !4468)
!4471 = !DILocation(line: 81, column: 9, scope: !4403, inlinedAt: !4465)
!4472 = !DILocation(line: 77, column: 50, scope: !4403, inlinedAt: !4473)
!4473 = distinct !DILocation(line: 233, column: 22, scope: !4389)
!4474 = !DILocation(line: 79, column: 16, scope: !4403, inlinedAt: !4473)
!4475 = !DILocation(line: 67, column: 39, scope: !4391, inlinedAt: !4476)
!4476 = distinct !DILocation(line: 81, column: 12, scope: !4403, inlinedAt: !4473)
!4477 = !DILocation(line: 72, column: 6, scope: !4382, inlinedAt: !4476)
!4478 = !DILocation(line: 67, column: 7, scope: !4382, inlinedAt: !4476)
!4479 = !DILocation(line: 81, column: 9, scope: !4403, inlinedAt: !4473)
!4480 = !DILocation(line: 237, column: 16, scope: !4389)
!4481 = !DILocation(line: 238, column: 22, scope: !4389)
!4482 = !DILocation(line: 238, column: 11, scope: !4389)
!4483 = !DILocation(line: 242, column: 10, scope: !4290)
!4484 = !DILocation(line: 243, column: 11, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4290, file: !4271, line: 243, column: 11)
!4486 = !DILocation(line: 244, column: 13, scope: !4485)
!4487 = !DILocation(line: 243, column: 11, scope: !4290)
!4488 = !DILocation(line: 247, column: 8, scope: !4270)
!4489 = !DILocation(line: 248, column: 3, scope: !4270)
!4490 = !DILocation(line: 249, column: 1, scope: !4270)
!4491 = distinct !DISubprogram(name: "rpl_calloc", scope: !4492, file: !4492, line: 42, type: !1502, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !654, variables: !4493)
!4492 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4493 = !{!4494, !4495, !4496, !4497}
!4494 = !DILocalVariable(name: "n", arg: 1, scope: !4491, file: !4492, line: 42, type: !43)
!4495 = !DILocalVariable(name: "s", arg: 2, scope: !4491, file: !4492, line: 42, type: !43)
!4496 = !DILocalVariable(name: "result", scope: !4491, file: !4492, line: 44, type: !33)
!4497 = !DILocalVariable(name: "bytes", scope: !4498, file: !4492, line: 56, type: !43)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !4492, line: 53, column: 5)
!4499 = distinct !DILexicalBlock(scope: !4491, file: !4492, line: 47, column: 7)
!4500 = !DILocation(line: 42, column: 20, scope: !4491)
!4501 = !DILocation(line: 42, column: 30, scope: !4491)
!4502 = !DILocation(line: 47, column: 9, scope: !4499)
!4503 = !DILocation(line: 47, column: 19, scope: !4499)
!4504 = !DILocation(line: 47, column: 14, scope: !4499)
!4505 = !DILocation(line: 56, column: 24, scope: !4498)
!4506 = !DILocation(line: 56, column: 14, scope: !4498)
!4507 = !DILocation(line: 57, column: 17, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4498, file: !4492, line: 57, column: 11)
!4509 = !DILocation(line: 57, column: 21, scope: !4508)
!4510 = !DILocation(line: 57, column: 11, scope: !4498)
!4511 = !DILocation(line: 59, column: 11, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4508, file: !4492, line: 58, column: 9)
!4513 = !DILocation(line: 59, column: 17, scope: !4512)
!4514 = !DILocation(line: 65, column: 12, scope: !4491)
!4515 = !DILocation(line: 44, column: 9, scope: !4491)
!4516 = !DILocation(line: 72, column: 3, scope: !4491)
!4517 = !DILocation(line: 73, column: 1, scope: !4491)
!4518 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4519, file: !4519, line: 334, type: !4520, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !656, variables: !4534)
!4519 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!43, !4522, !41, !43, !4523}
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2265, line: 6, baseType: !4525)
!4525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2267, line: 21, baseType: !4526)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2267, line: 13, size: 64, elements: !4527)
!4527 = !{!4528, !4529}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4526, file: !2267, line: 15, baseType: !52, size: 32)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4526, file: !2267, line: 20, baseType: !4530, size: 32, offset: 32)
!4530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4526, file: !2267, line: 16, size: 32, elements: !4531)
!4531 = !{!4532, !4533}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4530, file: !2267, line: 18, baseType: !30, size: 32)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4530, file: !2267, line: 19, baseType: !2276, size: 32)
!4534 = !{!4535, !4536, !4537, !4538, !4539, !4540, !4541}
!4535 = !DILocalVariable(name: "pwc", arg: 1, scope: !4518, file: !4519, line: 334, type: !4522)
!4536 = !DILocalVariable(name: "s", arg: 2, scope: !4518, file: !4519, line: 334, type: !41)
!4537 = !DILocalVariable(name: "n", arg: 3, scope: !4518, file: !4519, line: 334, type: !43)
!4538 = !DILocalVariable(name: "ps", arg: 4, scope: !4518, file: !4519, line: 334, type: !4523)
!4539 = !DILocalVariable(name: "ret", scope: !4518, file: !4519, line: 336, type: !43)
!4540 = !DILocalVariable(name: "wc", scope: !4518, file: !4519, line: 337, type: !2281)
!4541 = !DILocalVariable(name: "uc", scope: !4542, file: !4519, line: 398, type: !577)
!4542 = distinct !DILexicalBlock(scope: !4543, file: !4519, line: 397, column: 5)
!4543 = distinct !DILexicalBlock(scope: !4518, file: !4519, line: 396, column: 7)
!4544 = !DILocation(line: 334, column: 23, scope: !4518)
!4545 = !DILocation(line: 334, column: 40, scope: !4518)
!4546 = !DILocation(line: 334, column: 50, scope: !4518)
!4547 = !DILocation(line: 334, column: 64, scope: !4518)
!4548 = !DILocation(line: 337, column: 3, scope: !4518)
!4549 = !DILocation(line: 353, column: 9, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4518, file: !4519, line: 353, column: 7)
!4551 = !DILocation(line: 353, column: 7, scope: !4518)
!4552 = !DILocation(line: 388, column: 9, scope: !4518)
!4553 = !DILocation(line: 336, column: 10, scope: !4518)
!4554 = !DILocation(line: 396, column: 19, scope: !4543)
!4555 = !DILocation(line: 396, column: 31, scope: !4543)
!4556 = !DILocation(line: 396, column: 26, scope: !4543)
!4557 = !DILocation(line: 396, column: 41, scope: !4543)
!4558 = !DILocation(line: 396, column: 7, scope: !4518)
!4559 = !DILocation(line: 398, column: 26, scope: !4542)
!4560 = !DILocation(line: 398, column: 21, scope: !4542)
!4561 = !DILocation(line: 399, column: 14, scope: !4542)
!4562 = !DILocation(line: 399, column: 12, scope: !4542)
!4563 = !DILocation(line: 405, column: 1, scope: !4518)
!4564 = distinct !DISubprogram(name: "close_stream", scope: !4565, file: !4565, line: 56, type: !4566, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !659, variables: !4608)
!4565 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!52, !4568}
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3758, line: 7, baseType: !4570)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3760, line: 241, size: 1728, elements: !4571)
!4571 = !{!4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4570, file: !3760, line: 242, baseType: !52, size: 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4570, file: !3760, line: 247, baseType: !31, size: 64, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4570, file: !3760, line: 248, baseType: !31, size: 64, offset: 128)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4570, file: !3760, line: 249, baseType: !31, size: 64, offset: 192)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4570, file: !3760, line: 250, baseType: !31, size: 64, offset: 256)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4570, file: !3760, line: 251, baseType: !31, size: 64, offset: 320)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4570, file: !3760, line: 252, baseType: !31, size: 64, offset: 384)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4570, file: !3760, line: 253, baseType: !31, size: 64, offset: 448)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4570, file: !3760, line: 254, baseType: !31, size: 64, offset: 512)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4570, file: !3760, line: 256, baseType: !31, size: 64, offset: 576)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4570, file: !3760, line: 257, baseType: !31, size: 64, offset: 640)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4570, file: !3760, line: 258, baseType: !31, size: 64, offset: 704)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4570, file: !3760, line: 260, baseType: !4585, size: 64, offset: 768)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3760, line: 156, size: 192, elements: !4587)
!4587 = !{!4588, !4589, !4591}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4586, file: !3760, line: 157, baseType: !4585, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4586, file: !3760, line: 158, baseType: !4590, size: 64, offset: 64)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4586, file: !3760, line: 162, baseType: !52, size: 32, offset: 128)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4570, file: !3760, line: 262, baseType: !4590, size: 64, offset: 832)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4570, file: !3760, line: 264, baseType: !52, size: 32, offset: 896)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4570, file: !3760, line: 268, baseType: !52, size: 32, offset: 928)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4570, file: !3760, line: 270, baseType: !36, size: 64, offset: 960)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4570, file: !3760, line: 274, baseType: !183, size: 16, offset: 1024)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4570, file: !3760, line: 275, baseType: !3788, size: 8, offset: 1040)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4570, file: !3760, line: 276, baseType: !3790, size: 8, offset: 1048)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4570, file: !3760, line: 280, baseType: !3794, size: 64, offset: 1088)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4570, file: !3760, line: 289, baseType: !3797, size: 64, offset: 1152)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4570, file: !3760, line: 297, baseType: !33, size: 64, offset: 1216)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4570, file: !3760, line: 298, baseType: !33, size: 64, offset: 1280)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4570, file: !3760, line: 299, baseType: !33, size: 64, offset: 1344)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4570, file: !3760, line: 300, baseType: !33, size: 64, offset: 1408)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4570, file: !3760, line: 302, baseType: !43, size: 64, offset: 1472)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4570, file: !3760, line: 303, baseType: !52, size: 32, offset: 1536)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4570, file: !3760, line: 305, baseType: !3805, size: 160, offset: 1568)
!4608 = !{!4609, !4610, !4611, !4612}
!4609 = !DILocalVariable(name: "stream", arg: 1, scope: !4564, file: !4565, line: 56, type: !4568)
!4610 = !DILocalVariable(name: "some_pending", scope: !4564, file: !4565, line: 58, type: !870)
!4611 = !DILocalVariable(name: "prev_fail", scope: !4564, file: !4565, line: 59, type: !870)
!4612 = !DILocalVariable(name: "fclose_fail", scope: !4564, file: !4565, line: 60, type: !870)
!4613 = !DILocation(line: 56, column: 21, scope: !4564)
!4614 = !DILocation(line: 58, column: 30, scope: !4564)
!4615 = !DILocalVariable(name: "__stream", arg: 1, scope: !4616, file: !4617, line: 132, type: !4568)
!4616 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4617, file: !4617, line: 132, type: !4566, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !659, variables: !4618)
!4617 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4618 = !{!4615}
!4619 = !DILocation(line: 132, column: 1, scope: !4616, inlinedAt: !4620)
!4620 = distinct !DILocation(line: 59, column: 27, scope: !4564)
!4621 = !DILocation(line: 134, column: 10, scope: !4616, inlinedAt: !4620)
!4622 = !{!4623, !1021, i64 0}
!4623 = !{!"_IO_FILE", !1021, i64 0, !688, i64 8, !688, i64 16, !688, i64 24, !688, i64 32, !688, i64 40, !688, i64 48, !688, i64 56, !688, i64 64, !688, i64 72, !688, i64 80, !688, i64 88, !688, i64 96, !688, i64 104, !1021, i64 112, !1021, i64 116, !1143, i64 120, !2515, i64 128, !689, i64 130, !689, i64 131, !688, i64 136, !1143, i64 144, !688, i64 152, !688, i64 160, !688, i64 168, !688, i64 176, !1143, i64 184, !1021, i64 192, !689, i64 196}
!4624 = !DILocation(line: 59, column: 43, scope: !4564)
!4625 = !DILocation(line: 60, column: 29, scope: !4564)
!4626 = !DILocation(line: 60, column: 45, scope: !4564)
!4627 = !DILocation(line: 70, column: 17, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4564, file: !4565, line: 70, column: 7)
!4629 = !DILocation(line: 58, column: 50, scope: !4564)
!4630 = !DILocation(line: 70, column: 33, scope: !4628)
!4631 = !DILocation(line: 70, column: 53, scope: !4628)
!4632 = !DILocation(line: 70, column: 59, scope: !4628)
!4633 = !DILocation(line: 70, column: 7, scope: !4564)
!4634 = !DILocation(line: 72, column: 11, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4628, file: !4565, line: 71, column: 5)
!4636 = !DILocation(line: 73, column: 9, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4635, file: !4565, line: 72, column: 11)
!4638 = !DILocation(line: 73, column: 15, scope: !4637)
!4639 = !DILocation(line: 78, column: 1, scope: !4564)
!4640 = distinct !DISubprogram(name: "hard_locale", scope: !4641, file: !4641, line: 38, type: !4642, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !661, variables: !4644)
!4641 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!59, !52}
!4644 = !{!4645, !4646, !4647}
!4645 = !DILocalVariable(name: "category", arg: 1, scope: !4640, file: !4641, line: 38, type: !52)
!4646 = !DILocalVariable(name: "hard", scope: !4640, file: !4641, line: 40, type: !59)
!4647 = !DILocalVariable(name: "p", scope: !4640, file: !4641, line: 41, type: !41)
!4648 = !DILocation(line: 38, column: 18, scope: !4640)
!4649 = !DILocation(line: 40, column: 8, scope: !4640)
!4650 = !DILocation(line: 41, column: 19, scope: !4640)
!4651 = !DILocation(line: 41, column: 15, scope: !4640)
!4652 = !DILocation(line: 43, column: 7, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4640, file: !4641, line: 43, column: 7)
!4654 = !DILocation(line: 43, column: 7, scope: !4640)
!4655 = !DILocation(line: 47, column: 15, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4657, file: !4641, line: 47, column: 15)
!4657 = distinct !DILexicalBlock(scope: !4658, file: !4641, line: 46, column: 9)
!4658 = distinct !DILexicalBlock(scope: !4659, file: !4641, line: 45, column: 11)
!4659 = distinct !DILexicalBlock(scope: !4653, file: !4641, line: 44, column: 5)
!4660 = !DILocation(line: 47, column: 31, scope: !4656)
!4661 = !DILocation(line: 47, column: 36, scope: !4656)
!4662 = !DILocation(line: 47, column: 39, scope: !4656)
!4663 = !DILocation(line: 47, column: 59, scope: !4656)
!4664 = !DILocation(line: 47, column: 15, scope: !4657)
!4665 = !DILocation(line: 48, column: 13, scope: !4656)
!4666 = !DILocation(line: 71, column: 3, scope: !4640)
!4667 = distinct !DISubprogram(name: "locale_charset", scope: !579, file: !579, line: 393, type: !4668, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !234, variables: !4670)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!41}
!4670 = !{!4671, !4672}
!4671 = !DILocalVariable(name: "codeset", scope: !4667, file: !579, line: 395, type: !41)
!4672 = !DILocalVariable(name: "aliases", scope: !4667, file: !579, line: 396, type: !41)
!4673 = !DILocalVariable(name: "buf1", scope: !4674, file: !579, line: 196, type: !4741)
!4674 = distinct !DILexicalBlock(scope: !4675, file: !579, line: 194, column: 21)
!4675 = distinct !DILexicalBlock(scope: !4676, file: !579, line: 193, column: 19)
!4676 = distinct !DILexicalBlock(scope: !4677, file: !579, line: 193, column: 19)
!4677 = distinct !DILexicalBlock(scope: !4678, file: !579, line: 188, column: 17)
!4678 = distinct !DILexicalBlock(scope: !4679, file: !579, line: 181, column: 19)
!4679 = distinct !DILexicalBlock(scope: !4680, file: !579, line: 177, column: 13)
!4680 = distinct !DILexicalBlock(scope: !4681, file: !579, line: 173, column: 15)
!4681 = distinct !DILexicalBlock(scope: !4682, file: !579, line: 161, column: 9)
!4682 = distinct !DILexicalBlock(scope: !4683, file: !579, line: 157, column: 11)
!4683 = distinct !DILexicalBlock(scope: !4684, file: !579, line: 130, column: 5)
!4684 = distinct !DILexicalBlock(scope: !4685, file: !579, line: 129, column: 7)
!4685 = distinct !DISubprogram(name: "get_charset_aliases", scope: !579, file: !579, line: 124, type: !4668, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !234, variables: !4686)
!4686 = !{!4687, !4688, !4689, !4690, !4691, !4693, !4694, !4695, !4696, !4737, !4738, !4739, !4673, !4740, !4744, !4745, !4746}
!4687 = !DILocalVariable(name: "cp", scope: !4685, file: !579, line: 126, type: !41)
!4688 = !DILocalVariable(name: "dir", scope: !4683, file: !579, line: 132, type: !41)
!4689 = !DILocalVariable(name: "base", scope: !4683, file: !579, line: 133, type: !41)
!4690 = !DILocalVariable(name: "file_name", scope: !4683, file: !579, line: 134, type: !31)
!4691 = !DILocalVariable(name: "dir_len", scope: !4692, file: !579, line: 144, type: !43)
!4692 = distinct !DILexicalBlock(scope: !4683, file: !579, line: 143, column: 7)
!4693 = !DILocalVariable(name: "base_len", scope: !4692, file: !579, line: 145, type: !43)
!4694 = !DILocalVariable(name: "add_slash", scope: !4692, file: !579, line: 146, type: !52)
!4695 = !DILocalVariable(name: "fd", scope: !4681, file: !579, line: 162, type: !52)
!4696 = !DILocalVariable(name: "fp", scope: !4679, file: !579, line: 178, type: !4697)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3758, line: 7, baseType: !4699)
!4699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3760, line: 241, size: 1728, elements: !4700)
!4700 = !{!4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4699, file: !3760, line: 242, baseType: !52, size: 32)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4699, file: !3760, line: 247, baseType: !31, size: 64, offset: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4699, file: !3760, line: 248, baseType: !31, size: 64, offset: 128)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4699, file: !3760, line: 249, baseType: !31, size: 64, offset: 192)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4699, file: !3760, line: 250, baseType: !31, size: 64, offset: 256)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4699, file: !3760, line: 251, baseType: !31, size: 64, offset: 320)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4699, file: !3760, line: 252, baseType: !31, size: 64, offset: 384)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4699, file: !3760, line: 253, baseType: !31, size: 64, offset: 448)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4699, file: !3760, line: 254, baseType: !31, size: 64, offset: 512)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4699, file: !3760, line: 256, baseType: !31, size: 64, offset: 576)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4699, file: !3760, line: 257, baseType: !31, size: 64, offset: 640)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4699, file: !3760, line: 258, baseType: !31, size: 64, offset: 704)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4699, file: !3760, line: 260, baseType: !4714, size: 64, offset: 768)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3760, line: 156, size: 192, elements: !4716)
!4716 = !{!4717, !4718, !4720}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4715, file: !3760, line: 157, baseType: !4714, size: 64)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4715, file: !3760, line: 158, baseType: !4719, size: 64, offset: 64)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4715, file: !3760, line: 162, baseType: !52, size: 32, offset: 128)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4699, file: !3760, line: 262, baseType: !4719, size: 64, offset: 832)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4699, file: !3760, line: 264, baseType: !52, size: 32, offset: 896)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4699, file: !3760, line: 268, baseType: !52, size: 32, offset: 928)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4699, file: !3760, line: 270, baseType: !36, size: 64, offset: 960)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4699, file: !3760, line: 274, baseType: !183, size: 16, offset: 1024)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4699, file: !3760, line: 275, baseType: !3788, size: 8, offset: 1040)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4699, file: !3760, line: 276, baseType: !3790, size: 8, offset: 1048)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4699, file: !3760, line: 280, baseType: !3794, size: 64, offset: 1088)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4699, file: !3760, line: 289, baseType: !3797, size: 64, offset: 1152)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4699, file: !3760, line: 297, baseType: !33, size: 64, offset: 1216)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4699, file: !3760, line: 298, baseType: !33, size: 64, offset: 1280)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4699, file: !3760, line: 299, baseType: !33, size: 64, offset: 1344)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4699, file: !3760, line: 300, baseType: !33, size: 64, offset: 1408)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4699, file: !3760, line: 302, baseType: !43, size: 64, offset: 1472)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4699, file: !3760, line: 303, baseType: !52, size: 32, offset: 1536)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4699, file: !3760, line: 305, baseType: !3805, size: 160, offset: 1568)
!4737 = !DILocalVariable(name: "res_ptr", scope: !4677, file: !579, line: 190, type: !31)
!4738 = !DILocalVariable(name: "res_size", scope: !4677, file: !579, line: 191, type: !43)
!4739 = !DILocalVariable(name: "c", scope: !4674, file: !579, line: 195, type: !52)
!4740 = !DILocalVariable(name: "buf2", scope: !4674, file: !579, line: 197, type: !4741)
!4741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 408, elements: !4742)
!4742 = !{!4743}
!4743 = !DISubrange(count: 51)
!4744 = !DILocalVariable(name: "l1", scope: !4674, file: !579, line: 198, type: !43)
!4745 = !DILocalVariable(name: "l2", scope: !4674, file: !579, line: 198, type: !43)
!4746 = !DILocalVariable(name: "old_res_ptr", scope: !4674, file: !579, line: 199, type: !31)
!4747 = !DILocation(line: 196, column: 28, scope: !4674, inlinedAt: !4748)
!4748 = distinct !DILocation(line: 589, column: 18, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4667, file: !579, line: 589, column: 3)
!4750 = !DILocation(line: 197, column: 28, scope: !4674, inlinedAt: !4748)
!4751 = !DILocation(line: 403, column: 13, scope: !4667)
!4752 = !DILocation(line: 395, column: 15, scope: !4667)
!4753 = !DILocation(line: 584, column: 15, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4667, file: !579, line: 584, column: 7)
!4755 = !DILocation(line: 584, column: 7, scope: !4667)
!4756 = !DILocation(line: 128, column: 8, scope: !4685, inlinedAt: !4748)
!4757 = !DILocation(line: 126, column: 15, scope: !4685, inlinedAt: !4748)
!4758 = !DILocation(line: 129, column: 10, scope: !4684, inlinedAt: !4748)
!4759 = !DILocation(line: 129, column: 7, scope: !4685, inlinedAt: !4748)
!4760 = !DILocation(line: 138, column: 13, scope: !4683, inlinedAt: !4748)
!4761 = !DILocation(line: 132, column: 19, scope: !4683, inlinedAt: !4748)
!4762 = !DILocation(line: 139, column: 15, scope: !4763, inlinedAt: !4748)
!4763 = distinct !DILexicalBlock(scope: !4683, file: !579, line: 139, column: 11)
!4764 = !DILocation(line: 139, column: 23, scope: !4763, inlinedAt: !4748)
!4765 = !DILocation(line: 139, column: 26, scope: !4763, inlinedAt: !4748)
!4766 = !DILocation(line: 139, column: 33, scope: !4763, inlinedAt: !4748)
!4767 = !DILocation(line: 139, column: 11, scope: !4683, inlinedAt: !4748)
!4768 = !DILocation(line: 140, column: 9, scope: !4763, inlinedAt: !4748)
!4769 = !DILocation(line: 144, column: 26, scope: !4692, inlinedAt: !4748)
!4770 = !DILocation(line: 144, column: 16, scope: !4692, inlinedAt: !4748)
!4771 = !DILocation(line: 145, column: 16, scope: !4692, inlinedAt: !4748)
!4772 = !DILocation(line: 146, column: 34, scope: !4692, inlinedAt: !4748)
!4773 = !DILocation(line: 146, column: 38, scope: !4692, inlinedAt: !4748)
!4774 = !DILocation(line: 146, column: 42, scope: !4692, inlinedAt: !4748)
!4775 = !DILocation(line: 147, column: 48, scope: !4692, inlinedAt: !4748)
!4776 = !DILocation(line: 147, column: 46, scope: !4692, inlinedAt: !4748)
!4777 = !DILocation(line: 147, column: 69, scope: !4692, inlinedAt: !4748)
!4778 = !DILocation(line: 147, column: 30, scope: !4692, inlinedAt: !4748)
!4779 = !DILocation(line: 134, column: 13, scope: !4683, inlinedAt: !4748)
!4780 = !DILocation(line: 148, column: 13, scope: !4692, inlinedAt: !4748)
!4781 = !DILocation(line: 150, column: 13, scope: !4782, inlinedAt: !4748)
!4782 = distinct !DILexicalBlock(scope: !4783, file: !579, line: 149, column: 11)
!4783 = distinct !DILexicalBlock(scope: !4692, file: !579, line: 148, column: 13)
!4784 = !DILocation(line: 151, column: 17, scope: !4782, inlinedAt: !4748)
!4785 = !DILocation(line: 152, column: 34, scope: !4786, inlinedAt: !4748)
!4786 = distinct !DILexicalBlock(scope: !4782, file: !579, line: 151, column: 17)
!4787 = !DILocation(line: 153, column: 41, scope: !4782, inlinedAt: !4748)
!4788 = !DILocation(line: 153, column: 13, scope: !4782, inlinedAt: !4748)
!4789 = !DILocation(line: 157, column: 11, scope: !4683, inlinedAt: !4748)
!4790 = !DILocation(line: 171, column: 16, scope: !4681, inlinedAt: !4748)
!4791 = !DILocation(line: 162, column: 15, scope: !4681, inlinedAt: !4748)
!4792 = !DILocation(line: 173, column: 18, scope: !4680, inlinedAt: !4748)
!4793 = !DILocation(line: 173, column: 15, scope: !4681, inlinedAt: !4748)
!4794 = !DILocation(line: 180, column: 20, scope: !4679, inlinedAt: !4748)
!4795 = !DILocation(line: 178, column: 21, scope: !4679, inlinedAt: !4748)
!4796 = !DILocation(line: 181, column: 22, scope: !4678, inlinedAt: !4748)
!4797 = !DILocation(line: 181, column: 19, scope: !4679, inlinedAt: !4748)
!4798 = !DILocation(line: 184, column: 19, scope: !4799, inlinedAt: !4748)
!4799 = distinct !DILexicalBlock(scope: !4678, file: !579, line: 182, column: 17)
!4800 = !DILocation(line: 186, column: 17, scope: !4799, inlinedAt: !4748)
!4801 = !DILocation(line: 190, column: 25, scope: !4677, inlinedAt: !4748)
!4802 = !DILocation(line: 191, column: 26, scope: !4677, inlinedAt: !4748)
!4803 = !DILocation(line: 193, column: 19, scope: !4677, inlinedAt: !4748)
!4804 = !DILocation(line: 196, column: 23, scope: !4674, inlinedAt: !4748)
!4805 = !DILocation(line: 197, column: 23, scope: !4674, inlinedAt: !4748)
!4806 = !DILocalVariable(name: "__fp", arg: 1, scope: !4807, file: !4617, line: 63, type: !4697)
!4807 = distinct !DISubprogram(name: "getc_unlocked", scope: !4617, file: !4617, line: 63, type: !4808, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !234, variables: !4810)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!52, !4697}
!4810 = !{!4806}
!4811 = !DILocation(line: 63, column: 22, scope: !4807, inlinedAt: !4812)
!4812 = distinct !DILocation(line: 201, column: 27, scope: !4674, inlinedAt: !4748)
!4813 = !DILocation(line: 65, column: 10, scope: !4807, inlinedAt: !4812)
!4814 = !{!4623, !688, i64 8}
!4815 = !{!4623, !688, i64 16}
!4816 = !{!"branch_weights", i32 2000, i32 1}
!4817 = !DILocation(line: 195, column: 27, scope: !4674, inlinedAt: !4748)
!4818 = !DILocation(line: 202, column: 27, scope: !4674, inlinedAt: !4748)
!4819 = distinct !{!4819, !4820, !4823}
!4820 = !DILocation(line: 209, column: 27, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4822, file: !579, line: 207, column: 25)
!4822 = distinct !DILexicalBlock(scope: !4674, file: !579, line: 206, column: 27)
!4823 = !DILocation(line: 211, column: 58, scope: !4821)
!4824 = !DILocation(line: 65, column: 10, scope: !4807, inlinedAt: !4825)
!4825 = distinct !DILocation(line: 210, column: 33, scope: !4821, inlinedAt: !4748)
!4826 = !DILocation(line: 63, column: 22, scope: !4807, inlinedAt: !4825)
!4827 = !DILocation(line: 210, column: 29, scope: !4821, inlinedAt: !4748)
!4828 = distinct !{!4828, !4829, !4830}
!4829 = !DILocation(line: 193, column: 19, scope: !4676)
!4830 = !DILocation(line: 241, column: 21, scope: !4676)
!4831 = !DILocation(line: 216, column: 23, scope: !4674, inlinedAt: !4748)
!4832 = !DILocation(line: 217, column: 27, scope: !4833, inlinedAt: !4748)
!4833 = distinct !DILexicalBlock(scope: !4674, file: !579, line: 217, column: 27)
!4834 = !DILocation(line: 217, column: 64, scope: !4833, inlinedAt: !4748)
!4835 = !DILocation(line: 217, column: 27, scope: !4674, inlinedAt: !4748)
!4836 = !DILocation(line: 219, column: 28, scope: !4674, inlinedAt: !4748)
!4837 = !DILocation(line: 198, column: 30, scope: !4674, inlinedAt: !4748)
!4838 = !DILocation(line: 220, column: 28, scope: !4674, inlinedAt: !4748)
!4839 = !DILocation(line: 198, column: 34, scope: !4674, inlinedAt: !4748)
!4840 = !DILocation(line: 199, column: 29, scope: !4674, inlinedAt: !4748)
!4841 = !DILocation(line: 222, column: 36, scope: !4842, inlinedAt: !4748)
!4842 = distinct !DILexicalBlock(scope: !4674, file: !579, line: 222, column: 27)
!4843 = !DILocation(line: 222, column: 27, scope: !4674, inlinedAt: !4748)
!4844 = !DILocation(line: 225, column: 63, scope: !4845, inlinedAt: !4748)
!4845 = distinct !DILexicalBlock(scope: !4842, file: !579, line: 223, column: 25)
!4846 = !DILocation(line: 225, column: 46, scope: !4845, inlinedAt: !4748)
!4847 = !DILocation(line: 226, column: 25, scope: !4845, inlinedAt: !4748)
!4848 = !DILocation(line: 229, column: 36, scope: !4849, inlinedAt: !4748)
!4849 = distinct !DILexicalBlock(scope: !4842, file: !579, line: 228, column: 25)
!4850 = !DILocation(line: 230, column: 73, scope: !4849, inlinedAt: !4748)
!4851 = !DILocation(line: 230, column: 46, scope: !4849, inlinedAt: !4748)
!4852 = !DILocation(line: 232, column: 35, scope: !4853, inlinedAt: !4748)
!4853 = distinct !DILexicalBlock(scope: !4674, file: !579, line: 232, column: 27)
!4854 = !DILocation(line: 232, column: 27, scope: !4674, inlinedAt: !4748)
!4855 = !DILocation(line: 236, column: 27, scope: !4856, inlinedAt: !4748)
!4856 = distinct !DILexicalBlock(scope: !4853, file: !579, line: 233, column: 25)
!4857 = !DILocation(line: 237, column: 27, scope: !4856, inlinedAt: !4748)
!4858 = !DILocation(line: 241, column: 21, scope: !4675, inlinedAt: !4748)
!4859 = !DILocation(line: 239, column: 39, scope: !4674, inlinedAt: !4748)
!4860 = !DILocation(line: 239, column: 50, scope: !4674, inlinedAt: !4748)
!4861 = !DILocation(line: 239, column: 61, scope: !4674, inlinedAt: !4748)
!4862 = !DILocalVariable(name: "__dest", arg: 1, scope: !4863, file: !4864, line: 88, type: !4867)
!4863 = distinct !DISubprogram(name: "strcpy", scope: !4864, file: !4864, line: 88, type: !4865, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !234, variables: !4868)
!4864 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!31, !4867, !4323}
!4867 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!4868 = !{!4862, !4869}
!4869 = !DILocalVariable(name: "__src", arg: 2, scope: !4863, file: !4864, line: 88, type: !4323)
!4870 = !DILocation(line: 88, column: 1, scope: !4863, inlinedAt: !4871)
!4871 = distinct !DILocation(line: 239, column: 23, scope: !4674, inlinedAt: !4748)
!4872 = !DILocation(line: 90, column: 49, scope: !4863, inlinedAt: !4871)
!4873 = !DILocation(line: 90, column: 10, scope: !4863, inlinedAt: !4871)
!4874 = !DILocation(line: 88, column: 1, scope: !4863, inlinedAt: !4875)
!4875 = distinct !DILocation(line: 240, column: 23, scope: !4674, inlinedAt: !4748)
!4876 = !DILocation(line: 90, column: 49, scope: !4863, inlinedAt: !4875)
!4877 = !DILocation(line: 90, column: 10, scope: !4863, inlinedAt: !4875)
!4878 = !DILocation(line: 193, column: 19, scope: !4675, inlinedAt: !4748)
!4879 = !DILocation(line: 242, column: 19, scope: !4677, inlinedAt: !4748)
!4880 = !DILocation(line: 243, column: 32, scope: !4881, inlinedAt: !4748)
!4881 = distinct !DILexicalBlock(scope: !4677, file: !579, line: 243, column: 23)
!4882 = !DILocation(line: 243, column: 23, scope: !4677, inlinedAt: !4748)
!4883 = !DILocation(line: 247, column: 33, scope: !4884, inlinedAt: !4748)
!4884 = distinct !DILexicalBlock(scope: !4881, file: !579, line: 246, column: 21)
!4885 = !DILocation(line: 247, column: 45, scope: !4884, inlinedAt: !4748)
!4886 = !DILocation(line: 253, column: 11, scope: !4681, inlinedAt: !4748)
!4887 = !DILocation(line: 377, column: 23, scope: !4683, inlinedAt: !4748)
!4888 = !DILocation(line: 378, column: 5, scope: !4683, inlinedAt: !4748)
!4889 = !DILocation(line: 396, column: 15, scope: !4667)
!4890 = !DILocation(line: 590, column: 8, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4749, file: !579, line: 589, column: 3)
!4892 = !DILocation(line: 590, column: 17, scope: !4891)
!4893 = !DILocation(line: 589, column: 3, scope: !4749)
!4894 = !DILocation(line: 592, column: 9, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4891, file: !579, line: 592, column: 9)
!4896 = !DILocation(line: 592, column: 35, scope: !4895)
!4897 = !DILocation(line: 593, column: 9, scope: !4895)
!4898 = !DILocation(line: 593, column: 24, scope: !4895)
!4899 = !DILocation(line: 593, column: 31, scope: !4895)
!4900 = !DILocation(line: 593, column: 34, scope: !4895)
!4901 = !DILocation(line: 593, column: 45, scope: !4895)
!4902 = !DILocation(line: 592, column: 9, scope: !4891)
!4903 = !DILocation(line: 595, column: 29, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4895, file: !579, line: 594, column: 7)
!4905 = !DILocation(line: 595, column: 27, scope: !4904)
!4906 = !DILocation(line: 595, column: 46, scope: !4904)
!4907 = !DILocation(line: 596, column: 9, scope: !4904)
!4908 = !DILocation(line: 591, column: 19, scope: !4891)
!4909 = !DILocation(line: 591, column: 36, scope: !4891)
!4910 = !DILocation(line: 591, column: 16, scope: !4891)
!4911 = !DILocation(line: 591, column: 52, scope: !4891)
!4912 = !DILocation(line: 591, column: 69, scope: !4891)
!4913 = !DILocation(line: 591, column: 49, scope: !4891)
!4914 = distinct !{!4914, !4893, !4915}
!4915 = !DILocation(line: 597, column: 7, scope: !4749)
!4916 = !DILocation(line: 602, column: 7, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4667, file: !579, line: 602, column: 7)
!4918 = !DILocation(line: 602, column: 18, scope: !4917)
!4919 = !DILocation(line: 602, column: 7, scope: !4667)
!4920 = !DILocation(line: 612, column: 3, scope: !4667)
!4921 = distinct !DISubprogram(name: "rpl_fclose", scope: !4922, file: !4922, line: 56, type: !4923, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !4965)
!4922 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4923 = !DISubroutineType(types: !4924)
!4924 = !{!52, !4925}
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3758, line: 7, baseType: !4927)
!4927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3760, line: 241, size: 1728, elements: !4928)
!4928 = !{!4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4927, file: !3760, line: 242, baseType: !52, size: 32)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4927, file: !3760, line: 247, baseType: !31, size: 64, offset: 64)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4927, file: !3760, line: 248, baseType: !31, size: 64, offset: 128)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4927, file: !3760, line: 249, baseType: !31, size: 64, offset: 192)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4927, file: !3760, line: 250, baseType: !31, size: 64, offset: 256)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4927, file: !3760, line: 251, baseType: !31, size: 64, offset: 320)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4927, file: !3760, line: 252, baseType: !31, size: 64, offset: 384)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4927, file: !3760, line: 253, baseType: !31, size: 64, offset: 448)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4927, file: !3760, line: 254, baseType: !31, size: 64, offset: 512)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4927, file: !3760, line: 256, baseType: !31, size: 64, offset: 576)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4927, file: !3760, line: 257, baseType: !31, size: 64, offset: 640)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4927, file: !3760, line: 258, baseType: !31, size: 64, offset: 704)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4927, file: !3760, line: 260, baseType: !4942, size: 64, offset: 768)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3760, line: 156, size: 192, elements: !4944)
!4944 = !{!4945, !4946, !4948}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4943, file: !3760, line: 157, baseType: !4942, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4943, file: !3760, line: 158, baseType: !4947, size: 64, offset: 64)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4943, file: !3760, line: 162, baseType: !52, size: 32, offset: 128)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4927, file: !3760, line: 262, baseType: !4947, size: 64, offset: 832)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4927, file: !3760, line: 264, baseType: !52, size: 32, offset: 896)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4927, file: !3760, line: 268, baseType: !52, size: 32, offset: 928)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4927, file: !3760, line: 270, baseType: !36, size: 64, offset: 960)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4927, file: !3760, line: 274, baseType: !183, size: 16, offset: 1024)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4927, file: !3760, line: 275, baseType: !3788, size: 8, offset: 1040)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4927, file: !3760, line: 276, baseType: !3790, size: 8, offset: 1048)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4927, file: !3760, line: 280, baseType: !3794, size: 64, offset: 1088)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4927, file: !3760, line: 289, baseType: !3797, size: 64, offset: 1152)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4927, file: !3760, line: 297, baseType: !33, size: 64, offset: 1216)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4927, file: !3760, line: 298, baseType: !33, size: 64, offset: 1280)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4927, file: !3760, line: 299, baseType: !33, size: 64, offset: 1344)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4927, file: !3760, line: 300, baseType: !33, size: 64, offset: 1408)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4927, file: !3760, line: 302, baseType: !43, size: 64, offset: 1472)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4927, file: !3760, line: 303, baseType: !52, size: 32, offset: 1536)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4927, file: !3760, line: 305, baseType: !3805, size: 160, offset: 1568)
!4965 = !{!4966, !4967, !4968, !4969}
!4966 = !DILocalVariable(name: "fp", arg: 1, scope: !4921, file: !4922, line: 56, type: !4925)
!4967 = !DILocalVariable(name: "saved_errno", scope: !4921, file: !4922, line: 58, type: !52)
!4968 = !DILocalVariable(name: "fd", scope: !4921, file: !4922, line: 59, type: !52)
!4969 = !DILocalVariable(name: "result", scope: !4921, file: !4922, line: 60, type: !52)
!4970 = !DILocation(line: 56, column: 19, scope: !4921)
!4971 = !DILocation(line: 58, column: 7, scope: !4921)
!4972 = !DILocation(line: 60, column: 7, scope: !4921)
!4973 = !DILocation(line: 63, column: 8, scope: !4921)
!4974 = !DILocation(line: 59, column: 7, scope: !4921)
!4975 = !DILocation(line: 64, column: 10, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4921, file: !4922, line: 64, column: 7)
!4977 = !DILocation(line: 64, column: 7, scope: !4921)
!4978 = !DILocation(line: 65, column: 12, scope: !4976)
!4979 = !DILocation(line: 65, column: 5, scope: !4976)
!4980 = !DILocation(line: 70, column: 9, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4921, file: !4922, line: 70, column: 7)
!4982 = !DILocation(line: 70, column: 23, scope: !4981)
!4983 = !DILocation(line: 70, column: 33, scope: !4981)
!4984 = !DILocation(line: 70, column: 26, scope: !4981)
!4985 = !DILocation(line: 70, column: 59, scope: !4981)
!4986 = !DILocation(line: 71, column: 7, scope: !4981)
!4987 = !DILocation(line: 71, column: 10, scope: !4981)
!4988 = !DILocation(line: 70, column: 7, scope: !4921)
!4989 = !DILocation(line: 98, column: 12, scope: !4921)
!4990 = !DILocation(line: 103, column: 7, scope: !4921)
!4991 = !DILocation(line: 72, column: 19, scope: !4981)
!4992 = !DILocation(line: 103, column: 19, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4921, file: !4922, line: 103, column: 7)
!4994 = !DILocation(line: 105, column: 13, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4993, file: !4922, line: 104, column: 5)
!4996 = !DILocation(line: 107, column: 5, scope: !4995)
!4997 = !DILocation(line: 110, column: 1, scope: !4921)
!4998 = distinct !DISubprogram(name: "rpl_fflush", scope: !4999, file: !4999, line: 127, type: !5000, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !665, variables: !5042)
!4999 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5000 = !DISubroutineType(types: !5001)
!5001 = !{!52, !5002}
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3758, line: 7, baseType: !5004)
!5004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3760, line: 241, size: 1728, elements: !5005)
!5005 = !{!5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5004, file: !3760, line: 242, baseType: !52, size: 32)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5004, file: !3760, line: 247, baseType: !31, size: 64, offset: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5004, file: !3760, line: 248, baseType: !31, size: 64, offset: 128)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5004, file: !3760, line: 249, baseType: !31, size: 64, offset: 192)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5004, file: !3760, line: 250, baseType: !31, size: 64, offset: 256)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5004, file: !3760, line: 251, baseType: !31, size: 64, offset: 320)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5004, file: !3760, line: 252, baseType: !31, size: 64, offset: 384)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5004, file: !3760, line: 253, baseType: !31, size: 64, offset: 448)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5004, file: !3760, line: 254, baseType: !31, size: 64, offset: 512)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5004, file: !3760, line: 256, baseType: !31, size: 64, offset: 576)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5004, file: !3760, line: 257, baseType: !31, size: 64, offset: 640)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5004, file: !3760, line: 258, baseType: !31, size: 64, offset: 704)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5004, file: !3760, line: 260, baseType: !5019, size: 64, offset: 768)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3760, line: 156, size: 192, elements: !5021)
!5021 = !{!5022, !5023, !5025}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5020, file: !3760, line: 157, baseType: !5019, size: 64)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5020, file: !3760, line: 158, baseType: !5024, size: 64, offset: 64)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5020, file: !3760, line: 162, baseType: !52, size: 32, offset: 128)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5004, file: !3760, line: 262, baseType: !5024, size: 64, offset: 832)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5004, file: !3760, line: 264, baseType: !52, size: 32, offset: 896)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5004, file: !3760, line: 268, baseType: !52, size: 32, offset: 928)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5004, file: !3760, line: 270, baseType: !36, size: 64, offset: 960)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5004, file: !3760, line: 274, baseType: !183, size: 16, offset: 1024)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5004, file: !3760, line: 275, baseType: !3788, size: 8, offset: 1040)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5004, file: !3760, line: 276, baseType: !3790, size: 8, offset: 1048)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5004, file: !3760, line: 280, baseType: !3794, size: 64, offset: 1088)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5004, file: !3760, line: 289, baseType: !3797, size: 64, offset: 1152)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5004, file: !3760, line: 297, baseType: !33, size: 64, offset: 1216)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5004, file: !3760, line: 298, baseType: !33, size: 64, offset: 1280)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5004, file: !3760, line: 299, baseType: !33, size: 64, offset: 1344)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5004, file: !3760, line: 300, baseType: !33, size: 64, offset: 1408)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5004, file: !3760, line: 302, baseType: !43, size: 64, offset: 1472)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5004, file: !3760, line: 303, baseType: !52, size: 32, offset: 1536)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5004, file: !3760, line: 305, baseType: !3805, size: 160, offset: 1568)
!5042 = !{!5043}
!5043 = !DILocalVariable(name: "stream", arg: 1, scope: !4998, file: !4999, line: 127, type: !5002)
!5044 = !DILocation(line: 127, column: 19, scope: !4998)
!5045 = !DILocation(line: 148, column: 14, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !4998, file: !4999, line: 148, column: 7)
!5047 = !DILocation(line: 148, column: 22, scope: !5046)
!5048 = !DILocation(line: 148, column: 27, scope: !5046)
!5049 = !DILocation(line: 148, column: 7, scope: !4998)
!5050 = !DILocation(line: 149, column: 12, scope: !5046)
!5051 = !DILocation(line: 149, column: 5, scope: !5046)
!5052 = !DILocalVariable(name: "fp", arg: 1, scope: !5053, file: !4999, line: 40, type: !5002)
!5053 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4999, file: !4999, line: 40, type: !5054, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !665, variables: !5056)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{null, !5002}
!5056 = !{!5052}
!5057 = !DILocation(line: 40, column: 48, scope: !5053, inlinedAt: !5058)
!5058 = distinct !DILocation(line: 153, column: 3, scope: !4998)
!5059 = !DILocation(line: 42, column: 11, scope: !5060, inlinedAt: !5058)
!5060 = distinct !DILexicalBlock(scope: !5053, file: !4999, line: 42, column: 7)
!5061 = !DILocation(line: 42, column: 18, scope: !5060, inlinedAt: !5058)
!5062 = !DILocation(line: 42, column: 7, scope: !5053, inlinedAt: !5058)
!5063 = !DILocation(line: 44, column: 5, scope: !5060, inlinedAt: !5058)
!5064 = !DILocation(line: 155, column: 10, scope: !4998)
!5065 = !DILocation(line: 155, column: 3, scope: !4998)
!5066 = !DILocation(line: 229, column: 1, scope: !4998)
!5067 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5068, file: !5068, line: 28, type: !5069, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !5111)
!5068 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5069 = !DISubroutineType(types: !5070)
!5070 = !{!52, !5071, !34, !52}
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3758, line: 7, baseType: !5073)
!5073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3760, line: 241, size: 1728, elements: !5074)
!5074 = !{!5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110}
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5073, file: !3760, line: 242, baseType: !52, size: 32)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5073, file: !3760, line: 247, baseType: !31, size: 64, offset: 64)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5073, file: !3760, line: 248, baseType: !31, size: 64, offset: 128)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5073, file: !3760, line: 249, baseType: !31, size: 64, offset: 192)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5073, file: !3760, line: 250, baseType: !31, size: 64, offset: 256)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5073, file: !3760, line: 251, baseType: !31, size: 64, offset: 320)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5073, file: !3760, line: 252, baseType: !31, size: 64, offset: 384)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5073, file: !3760, line: 253, baseType: !31, size: 64, offset: 448)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5073, file: !3760, line: 254, baseType: !31, size: 64, offset: 512)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5073, file: !3760, line: 256, baseType: !31, size: 64, offset: 576)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5073, file: !3760, line: 257, baseType: !31, size: 64, offset: 640)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5073, file: !3760, line: 258, baseType: !31, size: 64, offset: 704)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5073, file: !3760, line: 260, baseType: !5088, size: 64, offset: 768)
!5088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5089, size: 64)
!5089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3760, line: 156, size: 192, elements: !5090)
!5090 = !{!5091, !5092, !5094}
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5089, file: !3760, line: 157, baseType: !5088, size: 64)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5089, file: !3760, line: 158, baseType: !5093, size: 64, offset: 64)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5089, file: !3760, line: 162, baseType: !52, size: 32, offset: 128)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5073, file: !3760, line: 262, baseType: !5093, size: 64, offset: 832)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5073, file: !3760, line: 264, baseType: !52, size: 32, offset: 896)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5073, file: !3760, line: 268, baseType: !52, size: 32, offset: 928)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5073, file: !3760, line: 270, baseType: !36, size: 64, offset: 960)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5073, file: !3760, line: 274, baseType: !183, size: 16, offset: 1024)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5073, file: !3760, line: 275, baseType: !3788, size: 8, offset: 1040)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5073, file: !3760, line: 276, baseType: !3790, size: 8, offset: 1048)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5073, file: !3760, line: 280, baseType: !3794, size: 64, offset: 1088)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5073, file: !3760, line: 289, baseType: !3797, size: 64, offset: 1152)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5073, file: !3760, line: 297, baseType: !33, size: 64, offset: 1216)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5073, file: !3760, line: 298, baseType: !33, size: 64, offset: 1280)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5073, file: !3760, line: 299, baseType: !33, size: 64, offset: 1344)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5073, file: !3760, line: 300, baseType: !33, size: 64, offset: 1408)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5073, file: !3760, line: 302, baseType: !43, size: 64, offset: 1472)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5073, file: !3760, line: 303, baseType: !52, size: 32, offset: 1536)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5073, file: !3760, line: 305, baseType: !3805, size: 160, offset: 1568)
!5111 = !{!5112, !5113, !5114, !5115}
!5112 = !DILocalVariable(name: "fp", arg: 1, scope: !5067, file: !5068, line: 28, type: !5071)
!5113 = !DILocalVariable(name: "offset", arg: 2, scope: !5067, file: !5068, line: 28, type: !34)
!5114 = !DILocalVariable(name: "whence", arg: 3, scope: !5067, file: !5068, line: 28, type: !52)
!5115 = !DILocalVariable(name: "pos", scope: !5116, file: !5068, line: 116, type: !34)
!5116 = distinct !DILexicalBlock(scope: !5117, file: !5068, line: 112, column: 5)
!5117 = distinct !DILexicalBlock(scope: !5067, file: !5068, line: 51, column: 7)
!5118 = !DILocation(line: 28, column: 15, scope: !5067)
!5119 = !DILocation(line: 28, column: 25, scope: !5067)
!5120 = !DILocation(line: 28, column: 37, scope: !5067)
!5121 = !DILocation(line: 51, column: 11, scope: !5117)
!5122 = !DILocation(line: 51, column: 31, scope: !5117)
!5123 = !DILocation(line: 51, column: 24, scope: !5117)
!5124 = !DILocation(line: 52, column: 7, scope: !5117)
!5125 = !DILocation(line: 52, column: 14, scope: !5117)
!5126 = !{!4623, !688, i64 40}
!5127 = !DILocation(line: 52, column: 35, scope: !5117)
!5128 = !{!4623, !688, i64 32}
!5129 = !DILocation(line: 52, column: 28, scope: !5117)
!5130 = !DILocation(line: 53, column: 7, scope: !5117)
!5131 = !DILocation(line: 53, column: 14, scope: !5117)
!5132 = !{!4623, !688, i64 72}
!5133 = !DILocation(line: 53, column: 28, scope: !5117)
!5134 = !DILocation(line: 51, column: 7, scope: !5067)
!5135 = !DILocation(line: 116, column: 26, scope: !5116)
!5136 = !DILocation(line: 116, column: 19, scope: !5116)
!5137 = !DILocation(line: 116, column: 13, scope: !5116)
!5138 = !DILocation(line: 117, column: 15, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5116, file: !5068, line: 117, column: 11)
!5140 = !DILocation(line: 117, column: 11, scope: !5116)
!5141 = !DILocation(line: 127, column: 11, scope: !5116)
!5142 = !DILocation(line: 127, column: 18, scope: !5116)
!5143 = !DILocation(line: 128, column: 11, scope: !5116)
!5144 = !DILocation(line: 128, column: 19, scope: !5116)
!5145 = !{!4623, !1143, i64 144}
!5146 = !DILocation(line: 159, column: 7, scope: !5116)
!5147 = !DILocation(line: 161, column: 10, scope: !5067)
!5148 = !DILocation(line: 161, column: 3, scope: !5067)
!5149 = !DILocation(line: 162, column: 1, scope: !5067)
