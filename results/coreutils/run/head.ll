; ModuleID = 'coreutils-8.30/src/head.bc'
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
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.23 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.34 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !0
@print_headers = internal unnamed_addr global i1 false, align 1, !dbg !112
@line_end = internal unnamed_addr global i1 false, align 1, !dbg !113
@.str.14 = private unnamed_addr constant [30 x i8] c"invalid trailing option -- %c\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"invalid number of bytes\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"invalid number of lines\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"bkKmMGTPEZY0\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"c:n:qvz0123456789\00", align 1
@long_options = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !91
@presume_input_pipe = internal unnamed_addr global i1 false, align 1, !dbg !114
@optarg = external local_unnamed_addr global i8*, align 8
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@main.default_file_list = internal unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16, !dbg !47
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@write_header.first_file = internal unnamed_addr global i1 false, align 1, !dbg !115
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), align 8, !dbg !116
@.str.61 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !122
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !127
@.str.64 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.65 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.66 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !130
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !137
@.str.79 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.80 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.81 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.85, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.87, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.91, i32 0, i32 0), i8* null], align 16, !dbg !144
@.str.82 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.83 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.84 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.85 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.86 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.87 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.88 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.89 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.90 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.91 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !172
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !177
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !189
@.str.11.92 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.93 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.95 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.96 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.97 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.98 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !196
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !203
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !191
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !205
@.str.109 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.110 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.111 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.112 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.113 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.114 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.115 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.116 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.117 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.118 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.119 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.120 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.121 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.122 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.125 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.126 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.127 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.128 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.129 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.130 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !210
@.str.1.141 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.148 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.149 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.158 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.159 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.162 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.163 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !689 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !694, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.value(metadata i32 %0, metadata !693, metadata !DIExpression()), !dbg !715
  %3 = icmp eq i32 %0, 0, !dbg !716
  br i1 %3, label %9, label %4, !dbg !717

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !718, !tbaa !720
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !718
  %7 = load i8*, i8** @program_name, align 8, !dbg !718, !tbaa !720
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !718
  br label %73, !dbg !718

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !724
  %11 = load i8*, i8** @program_name, align 8, !dbg !724, !tbaa !720
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !724
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !725
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i32 10) #10, !dbg !725
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !726
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !726, !tbaa !720
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !726
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !731
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !731, !tbaa !720
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !731
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([398 x i8], [398 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !734
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i32 10) #10, !dbg !734
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !735
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !735, !tbaa !720
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24), !dbg !735
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !736
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !736, !tbaa !720
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27), !dbg !736
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !737
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !737, !tbaa !720
  %31 = tail call i32 @fputs_unlocked(i8* %29, %struct._IO_FILE* %30), !dbg !737
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !738
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !738, !tbaa !720
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33), !dbg !738
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !739
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !739, !tbaa !720
  %37 = tail call i32 @fputs_unlocked(i8* %35, %struct._IO_FILE* %36), !dbg !739
  %38 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !740
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %38) #10, !dbg !740
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %38, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !711
  %39 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !741
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !700, metadata !DIExpression()) #10, !dbg !742
  br label %40, !dbg !743

; <label>:40:                                     ; preds = %45, %9
  %41 = phi i8* [ %48, %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), %9 ]
  %42 = phi %struct.infomap* [ %46, %45 ], [ %39, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !700, metadata !DIExpression()) #10, !dbg !742
  %43 = tail call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* nonnull %41) #14, !dbg !743
  %44 = icmp eq i32 %43, 0, !dbg !743
  br i1 %44, label %50, label %45, !dbg !744

; <label>:45:                                     ; preds = %40
  %46 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 1, !dbg !745
  call void @llvm.dbg.value(metadata %struct.infomap* %46, metadata !700, metadata !DIExpression()) #10, !dbg !742
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %46, i64 0, i32 0, !dbg !746
  %48 = load i8*, i8** %47, align 8, !dbg !746, !tbaa !747
  %49 = icmp eq i8* %48, null, !dbg !749
  br i1 %49, label %50, label %40, !dbg !750, !llvm.loop !751

; <label>:50:                                     ; preds = %45, %40
  %51 = phi %struct.infomap* [ %46, %45 ], [ %42, %40 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %51, metadata !700, metadata !DIExpression()) #10, !dbg !742
  call void @llvm.dbg.value(metadata %struct.infomap* %51, metadata !700, metadata !DIExpression()) #10, !dbg !742
  %52 = getelementptr inbounds %struct.infomap, %struct.infomap* %51, i64 0, i32 1, !dbg !754
  %53 = load i8*, i8** %52, align 8, !dbg !754, !tbaa !756
  %54 = icmp eq i8* %53, null, !dbg !757
  %55 = select i1 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %53, !dbg !758
  call void @llvm.dbg.value(metadata i8* %55, metadata !699, metadata !DIExpression()) #10, !dbg !759
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !760
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0)) #10, !dbg !760
  %58 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !761
  call void @llvm.dbg.value(metadata i8* %58, metadata !707, metadata !DIExpression()) #10, !dbg !762
  %59 = icmp eq i8* %58, null, !dbg !763
  br i1 %59, label %66, label %60, !dbg !765

; <label>:60:                                     ; preds = %50
  %61 = tail call i32 @strncmp(i8* nonnull %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i64 3) #14, !dbg !766
  %62 = icmp eq i32 %61, 0, !dbg !766
  br i1 %62, label %66, label %63, !dbg !767

; <label>:63:                                     ; preds = %60
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !768
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !768
  br label %66, !dbg !770

; <label>:66:                                     ; preds = %50, %60, %63
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !771
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !771
  %69 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !772
  %70 = icmp eq i8* %55, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), !dbg !772
  %71 = select i1 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !772
  %72 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %69, i8* %55, i8* %71) #10, !dbg !772
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %38) #10, !dbg !773
  br label %73

; <label>:73:                                     ; preds = %66, %4
  tail call void @exit(i32 %0) #15, !dbg !774
  unreachable, !dbg !774
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !49 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca [2 x i8*], align 16
  call void @llvm.dbg.declare(metadata [2 x i8*]* %4, metadata !775, metadata !DIExpression()), !dbg !823
  %5 = alloca [8192 x i8], align 16
  call void @llvm.dbg.declare(metadata [8192 x i8]* %5, metadata !908, metadata !DIExpression()), !dbg !936
  %6 = alloca [8192 x i8], align 16
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !949, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !969, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !969, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !985, metadata !DIExpression()), !dbg !994
  %7 = alloca %struct.stat, align 8
  %8 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !55, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i8** %1, metadata !56, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 0, metadata !57, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 1, metadata !58, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i64 10, metadata !62, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 1, metadata !66, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 0, metadata !67, metadata !DIExpression()), !dbg !1002
  %9 = load i8*, i8** %1, align 8, !dbg !1003, !tbaa !720
  tail call void @set_program_name(i8* %9) #10, !dbg !1004
  %10 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !1005
  %11 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !1006
  %12 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !1007
  %13 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !1008
  store i1 false, i1* @have_read_stdin, align 1
  store i1 false, i1* @print_headers, align 1
  store i1 true, i1* @line_end, align 1
  %14 = icmp sgt i32 %0, 1, !dbg !1009
  br i1 %14, label %15, label %77, !dbg !1010

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1011
  %17 = load i8*, i8** %16, align 8, !dbg !1011, !tbaa !720
  %18 = load i8, i8* %17, align 1, !dbg !1011, !tbaa !1012
  %19 = icmp eq i8 %18, 45, !dbg !1013
  br i1 %19, label %20, label %77, !dbg !1014

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1015
  %22 = load i8, i8* %21, align 1, !dbg !1015, !tbaa !1012
  %23 = sext i8 %22 to i32, !dbg !1015
  %24 = add nsw i32 %23, -48, !dbg !1015
  %25 = icmp ult i32 %24, 10, !dbg !1015
  br i1 %25, label %26, label %77, !dbg !1016

; <label>:26:                                     ; preds = %20, %26
  %27 = phi i8* [ %28, %26 ], [ %21, %20 ], !dbg !1017
  call void @llvm.dbg.value(metadata i8* %27, metadata !69, metadata !DIExpression()), !dbg !1018
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1019
  call void @llvm.dbg.value(metadata i8* %28, metadata !69, metadata !DIExpression()), !dbg !1018
  %29 = load i8, i8* %28, align 1, !dbg !1020, !tbaa !1012
  %30 = sext i8 %29 to i32, !dbg !1020
  %31 = add nsw i32 %30, -48, !dbg !1020
  %32 = icmp ult i32 %31, 10, !dbg !1020
  br i1 %32, label %26, label %33, !dbg !1019, !llvm.loop !1021

; <label>:33:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i8* %27, metadata !69, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8* %27, metadata !69, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8* %27, metadata !69, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8* %27, metadata !69, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8* %27, metadata !69, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8* %27, metadata !69, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8 0, metadata !74, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i8* %28, metadata !69, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8 1, metadata !66, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i32 0, metadata !57, metadata !DIExpression()), !dbg !998
  %34 = icmp eq i8 %29, 0, !dbg !1025
  br i1 %34, label %35, label %36, !dbg !1025

; <label>:35:                                     ; preds = %33
  call void @llvm.dbg.value(metadata i32 %53, metadata !57, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %54, metadata !66, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %55, metadata !74, metadata !DIExpression()), !dbg !1024
  store i8 0, i8* %28, align 1, !dbg !1027, !tbaa !1012
  call void @llvm.dbg.value(metadata i1 %65, metadata !1028, metadata !DIExpression()) #10, !dbg !1034
  call void @llvm.dbg.value(metadata i8* %21, metadata !1033, metadata !DIExpression()) #10, !dbg !1036
  br label %67, !dbg !1037

; <label>:36:                                     ; preds = %33, %52
  %37 = phi i8 [ %55, %52 ], [ 0, %33 ]
  %38 = phi i8* [ %56, %52 ], [ %28, %33 ]
  %39 = phi i8 [ %54, %52 ], [ 1, %33 ]
  %40 = phi i32 [ %53, %52 ], [ 0, %33 ]
  %41 = phi i8 [ %57, %52 ], [ %29, %33 ]
  call void @llvm.dbg.value(metadata i8 %37, metadata !74, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i8* %38, metadata !69, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8 %39, metadata !66, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i32 %40, metadata !57, metadata !DIExpression()), !dbg !998
  %42 = sext i8 %41 to i32, !dbg !1038
  switch i32 %42, label %48 [
    i32 99, label %52
    i32 98, label %43
    i32 107, label %43
    i32 109, label %43
    i32 108, label %44
    i32 113, label %45
    i32 118, label %46
    i32 122, label %47
  ], !dbg !1041

; <label>:43:                                     ; preds = %36, %36, %36
  call void @llvm.dbg.value(metadata i8 0, metadata !66, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %41, metadata !74, metadata !DIExpression()), !dbg !1024
  br label %52, !dbg !1042

; <label>:44:                                     ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !66, metadata !DIExpression()), !dbg !1001
  br label %52, !dbg !1044

; <label>:45:                                     ; preds = %36
  call void @llvm.dbg.value(metadata i32 2, metadata !57, metadata !DIExpression()), !dbg !998
  br label %52, !dbg !1045

; <label>:46:                                     ; preds = %36
  call void @llvm.dbg.value(metadata i32 1, metadata !57, metadata !DIExpression()), !dbg !998
  br label %52, !dbg !1046

; <label>:47:                                     ; preds = %36
  store i1 false, i1* @line_end, align 1
  br label %52, !dbg !1047

; <label>:48:                                     ; preds = %36
  call void @llvm.dbg.value(metadata i8* %38, metadata !69, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8* %38, metadata !69, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8* %38, metadata !69, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8* %38, metadata !69, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8* %38, metadata !69, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8* %38, metadata !69, metadata !DIExpression()), !dbg !1018
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !1048
  %50 = load i8, i8* %38, align 1, !dbg !1049, !tbaa !1012
  %51 = sext i8 %50 to i32, !dbg !1049
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %49, i32 %51) #10, !dbg !1050
  tail call void @usage(i32 1) #16, !dbg !1051
  unreachable, !dbg !1051

; <label>:52:                                     ; preds = %36, %43, %44, %45, %46, %47
  %53 = phi i32 [ %40, %47 ], [ 1, %46 ], [ 2, %45 ], [ %40, %44 ], [ %40, %43 ], [ %40, %36 ], !dbg !1052
  %54 = phi i8 [ %39, %47 ], [ %39, %46 ], [ %39, %45 ], [ 1, %44 ], [ 0, %43 ], [ 0, %36 ], !dbg !1053
  %55 = phi i8 [ %37, %47 ], [ %37, %46 ], [ %37, %45 ], [ %37, %44 ], [ %41, %43 ], [ 0, %36 ], !dbg !1053
  %56 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1054
  %57 = load i8, i8* %56, align 1, !dbg !1055, !tbaa !1012
  call void @llvm.dbg.value(metadata i8 %55, metadata !74, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i8* %56, metadata !69, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8 %54, metadata !66, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i32 %53, metadata !57, metadata !DIExpression()), !dbg !998
  %58 = icmp eq i8 %57, 0, !dbg !1025
  br i1 %58, label %59, label %36, !dbg !1025, !llvm.loop !1056

; <label>:59:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i32 %53, metadata !57, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %54, metadata !66, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %55, metadata !74, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i32 %53, metadata !57, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %54, metadata !66, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %55, metadata !74, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i32 %53, metadata !57, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %54, metadata !66, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %55, metadata !74, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i32 %53, metadata !57, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %54, metadata !66, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %55, metadata !74, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i32 %53, metadata !57, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %54, metadata !66, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %55, metadata !74, metadata !DIExpression()), !dbg !1024
  store i8 %55, i8* %28, align 1, !dbg !1027, !tbaa !1012
  %60 = icmp eq i8 %55, 0, !dbg !1058
  br i1 %60, label %63, label %61, !dbg !1060

; <label>:61:                                     ; preds = %59
  %62 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !1061
  call void @llvm.dbg.value(metadata i8* %62, metadata !73, metadata !DIExpression()), !dbg !1062
  store i8 0, i8* %62, align 1, !dbg !1063, !tbaa !1012
  br label %63, !dbg !1064

; <label>:63:                                     ; preds = %59, %61
  %64 = and i8 %54, 1, !dbg !1065
  %65 = icmp eq i8 %64, 0, !dbg !1065
  call void @llvm.dbg.value(metadata i1 %65, metadata !1028, metadata !DIExpression()) #10, !dbg !1034
  call void @llvm.dbg.value(metadata i8* %21, metadata !1033, metadata !DIExpression()) #10, !dbg !1036
  %66 = select i1 %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), !dbg !1037
  br label %67, !dbg !1037

; <label>:67:                                     ; preds = %63, %35
  %68 = phi i8* [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), %35 ], [ %66, %63 ]
  %69 = phi i32 [ 0, %35 ], [ %53, %63 ]
  %70 = phi i8 [ 1, %35 ], [ %54, %63 ]
  %71 = tail call i8* @dcgettext(i8* null, i8* %68, i32 5) #10, !dbg !1017
  %72 = tail call i64 @xdectoumax(i8* nonnull %21, i64 0, i64 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i8* %71, i32 0) #10, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %72, metadata !62, metadata !DIExpression()), !dbg !1000
  %73 = bitcast i8** %1 to i64*, !dbg !1067
  %74 = load i64, i64* %73, align 8, !dbg !1067, !tbaa !720
  %75 = bitcast i8** %16 to i64*, !dbg !1068
  store i64 %74, i64* %75, align 8, !dbg !1068, !tbaa !720
  call void @llvm.dbg.value(metadata i8** %16, metadata !56, metadata !DIExpression()), !dbg !997
  %76 = add nsw i32 %0, -1, !dbg !1069
  call void @llvm.dbg.value(metadata i32 %76, metadata !55, metadata !DIExpression()), !dbg !996
  br label %77, !dbg !1070

; <label>:77:                                     ; preds = %67, %20, %15, %2
  %78 = phi i32 [ %69, %67 ], [ 0, %20 ], [ 0, %15 ], [ 0, %2 ], !dbg !998
  %79 = phi i8** [ %16, %67 ], [ %1, %20 ], [ %1, %15 ], [ %1, %2 ]
  %80 = phi i64 [ %72, %67 ], [ 10, %20 ], [ 10, %15 ], [ 10, %2 ], !dbg !1052
  %81 = phi i8 [ %70, %67 ], [ 1, %20 ], [ 1, %15 ], [ 1, %2 ], !dbg !1001
  %82 = phi i32 [ %76, %67 ], [ %0, %20 ], [ %0, %15 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %82, metadata !55, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i8 %81, metadata !66, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i64 %80, metadata !62, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8** %79, metadata !56, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 %78, metadata !57, metadata !DIExpression()), !dbg !998
  br label %83, !dbg !1071

; <label>:83:                                     ; preds = %121, %77
  %84 = phi i32 [ %78, %77 ], [ %122, %121 ]
  %85 = phi i64 [ %80, %77 ], [ %89, %121 ]
  %86 = phi i8 [ %81, %77 ], [ %90, %121 ]
  %87 = phi i8 [ 0, %77 ], [ %91, %121 ]
  br label %88, !dbg !1072

; <label>:88:                                     ; preds = %115, %83
  %89 = phi i64 [ %85, %83 ], [ %116, %115 ]
  %90 = phi i8 [ %86, %83 ], [ %117, %115 ]
  %91 = phi i8 [ %87, %83 ], [ %119, %115 ]
  br label %92, !dbg !1072

; <label>:92:                                     ; preds = %124, %88
  call void @llvm.dbg.value(metadata i8 %91, metadata !67, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i8 %90, metadata !66, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i64 %89, metadata !62, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i32 %84, metadata !57, metadata !DIExpression()), !dbg !998
  %93 = tail call i32 @getopt_long(i32 %82, i8** %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %93, metadata !60, metadata !DIExpression()), !dbg !1073
  switch i32 %93, label %129 [
    i32 -1, label %135
    i32 128, label %94
    i32 99, label %95
    i32 110, label %105
    i32 113, label %121
    i32 118, label %120
    i32 122, label %123
    i32 -130, label %125
    i32 -131, label %126
  ], !dbg !1071, !llvm.loop !1074

; <label>:94:                                     ; preds = %92
  store i1 true, i1* @presume_input_pipe, align 1
  br label %124, !dbg !1076

; <label>:95:                                     ; preds = %92
  call void @llvm.dbg.value(metadata i8 0, metadata !66, metadata !DIExpression()), !dbg !1001
  %96 = load i8*, i8** @optarg, align 8, !dbg !1079, !tbaa !720
  %97 = load i8, i8* %96, align 1, !dbg !1080, !tbaa !1012
  %98 = icmp eq i8 %97, 45, !dbg !1081
  br i1 %98, label %99, label %101, !dbg !1082

; <label>:99:                                     ; preds = %95
  %100 = getelementptr inbounds i8, i8* %96, i64 1, !dbg !1083
  store i8* %100, i8** @optarg, align 8, !dbg !1083, !tbaa !720
  br label %101, !dbg !1083

; <label>:101:                                    ; preds = %99, %95
  %102 = phi i8* [ %100, %99 ], [ %96, %95 ], !dbg !1085
  call void @llvm.dbg.value(metadata i1 false, metadata !1028, metadata !DIExpression()) #10, !dbg !1086
  call void @llvm.dbg.value(metadata i8* %102, metadata !1033, metadata !DIExpression()) #10, !dbg !1088
  %103 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !1089
  %104 = tail call i64 @xdectoumax(i8* %102, i64 0, i64 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i8* %103, i32 0) #10, !dbg !1090
  call void @llvm.dbg.value(metadata i64 %104, metadata !62, metadata !DIExpression()), !dbg !1000
  br label %115, !dbg !1091

; <label>:105:                                    ; preds = %92
  call void @llvm.dbg.value(metadata i8 1, metadata !66, metadata !DIExpression()), !dbg !1001
  %106 = load i8*, i8** @optarg, align 8, !dbg !1092, !tbaa !720
  %107 = load i8, i8* %106, align 1, !dbg !1093, !tbaa !1012
  %108 = icmp eq i8 %107, 45, !dbg !1094
  br i1 %108, label %109, label %111, !dbg !1095

; <label>:109:                                    ; preds = %105
  %110 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !1096
  store i8* %110, i8** @optarg, align 8, !dbg !1096, !tbaa !720
  br label %111, !dbg !1096

; <label>:111:                                    ; preds = %109, %105
  %112 = phi i8* [ %110, %109 ], [ %106, %105 ], !dbg !1098
  call void @llvm.dbg.value(metadata i1 true, metadata !1028, metadata !DIExpression()) #10, !dbg !1099
  call void @llvm.dbg.value(metadata i8* %112, metadata !1033, metadata !DIExpression()) #10, !dbg !1101
  %113 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i32 5) #10, !dbg !1102
  %114 = tail call i64 @xdectoumax(i8* %112, i64 0, i64 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i8* %113, i32 0) #10, !dbg !1103
  call void @llvm.dbg.value(metadata i64 %114, metadata !62, metadata !DIExpression()), !dbg !1000
  br label %115, !dbg !1104

; <label>:115:                                    ; preds = %111, %101
  %116 = phi i64 [ %104, %101 ], [ %114, %111 ]
  %117 = phi i8 [ 0, %101 ], [ 1, %111 ]
  %118 = phi i1 [ %98, %101 ], [ %108, %111 ]
  %119 = zext i1 %118 to i8, !dbg !1105
  br label %88, !dbg !1072, !llvm.loop !1074

; <label>:120:                                    ; preds = %92
  call void @llvm.dbg.value(metadata i32 1, metadata !57, metadata !DIExpression()), !dbg !998
  br label %121, !dbg !1106

; <label>:121:                                    ; preds = %92, %120
  %122 = phi i32 [ 1, %120 ], [ 2, %92 ]
  br label %83, !dbg !1072, !llvm.loop !1074

; <label>:123:                                    ; preds = %92
  store i1 false, i1* @line_end, align 1
  br label %124, !dbg !1107

; <label>:124:                                    ; preds = %123, %94
  br label %92, !dbg !1002, !llvm.loop !1074

; <label>:125:                                    ; preds = %92
  tail call void @usage(i32 0) #16, !dbg !1108
  unreachable, !dbg !1108

; <label>:126:                                    ; preds = %92
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1109, !tbaa !720
  %128 = load i8*, i8** @Version, align 8, !dbg !1109, !tbaa !720
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* null) #10, !dbg !1109
  tail call void @exit(i32 0) #15, !dbg !1109
  unreachable, !dbg !1109

; <label>:129:                                    ; preds = %92
  %130 = add i32 %93, -48, !dbg !1110
  %131 = icmp ult i32 %130, 10, !dbg !1110
  br i1 %131, label %132, label %134, !dbg !1112

; <label>:132:                                    ; preds = %129
  %133 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !1113
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %133, i32 %93) #10, !dbg !1114
  br label %134, !dbg !1114

; <label>:134:                                    ; preds = %132, %129
  tail call void @usage(i32 1) #16, !dbg !1115
  unreachable, !dbg !1115

; <label>:135:                                    ; preds = %92
  call void @llvm.dbg.value(metadata i32 %84, metadata !57, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %89, metadata !62, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %90, metadata !66, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %91, metadata !67, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i32 %84, metadata !57, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %89, metadata !62, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %90, metadata !66, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %91, metadata !67, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i32 %84, metadata !57, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %89, metadata !62, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %90, metadata !66, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %91, metadata !67, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i32 %84, metadata !57, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %89, metadata !62, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %90, metadata !66, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %91, metadata !67, metadata !DIExpression()), !dbg !1002
  switch i32 %84, label %141 [
    i32 1, label %140
    i32 0, label %136
  ], !dbg !1116

; <label>:136:                                    ; preds = %135
  %137 = load i32, i32* @optind, align 4, !dbg !1118, !tbaa !1119
  %138 = add nsw i32 %82, -1, !dbg !1121
  %139 = icmp slt i32 %137, %138, !dbg !1122
  br i1 %139, label %140, label %141, !dbg !1123

; <label>:140:                                    ; preds = %135, %136
  store i1 true, i1* @print_headers, align 1
  br label %141, !dbg !1124

; <label>:141:                                    ; preds = %135, %140, %136
  %142 = and i8 %90, 1, !dbg !1125
  %143 = icmp ne i8 %142, 0, !dbg !1125
  br i1 %143, label %153, label %144, !dbg !1126

; <label>:144:                                    ; preds = %141
  %145 = icmp ne i8 %91, 0, !dbg !1127
  %146 = icmp slt i64 %89, 0, !dbg !1128
  %147 = and i1 %146, %145, !dbg !1129
  br i1 %147, label %148, label %153, !dbg !1129

; <label>:148:                                    ; preds = %144
  %149 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !1130
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %149) #10, !dbg !1130
  call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !75, metadata !DIExpression()), !dbg !1131
  %150 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !1132
  %151 = call i8* @umaxtostr(i64 %89, i8* nonnull %149) #10, !dbg !1132
  %152 = call i8* @quote(i8* %151) #10, !dbg !1132
  call void (i32, i32, i8*, ...) @error(i32 1, i32 75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* %150, i8* %152) #10, !dbg !1132
  unreachable, !dbg !1132

; <label>:153:                                    ; preds = %144, %141
  %154 = load i32, i32* @optind, align 4, !dbg !1133, !tbaa !1119
  %155 = icmp slt i32 %154, %82, !dbg !1134
  %156 = sext i32 %154 to i64, !dbg !1135
  %157 = getelementptr inbounds i8*, i8** %79, i64 %156, !dbg !1135
  %158 = select i1 %155, i8** %157, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @main.default_file_list, i64 0, i64 0), !dbg !1133
  call void @llvm.dbg.value(metadata i8** %158, metadata !68, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i64 0, metadata !61, metadata !DIExpression()), !dbg !1137
  %159 = load i8*, i8** %158, align 8, !dbg !1138, !tbaa !720
  %160 = icmp eq i8* %159, null, !dbg !1139
  br i1 %160, label %832, label %161, !dbg !1139

; <label>:161:                                    ; preds = %153
  %162 = icmp eq i8 %91, 0
  %163 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %164 = icmp eq i64 %89, 0
  %165 = bitcast %struct.stat* %7 to i8*
  %166 = bitcast %struct.stat* %3 to i8*
  %167 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
  %168 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 8
  %169 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 3
  %170 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 9
  %171 = add i64 %89, 8192
  %172 = icmp ult i64 %89, 1048577
  %173 = bitcast [2 x i8*]* %4 to i8*
  %174 = icmp ugt i64 %171, 4611686018427387903
  %175 = and i64 %89, 8191
  %176 = sub nsw i64 8192, %175
  %177 = add i64 %176, %89
  %178 = lshr i64 %177, 13
  %179 = add nuw nsw i64 %178, 1
  %180 = icmp ult i64 %179, 16
  %181 = select i1 %180, i64 %179, i64 16
  %182 = lshr i64 %179, 1
  %183 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %184 = shl i64 %171, 1
  %185 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %186 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1
  %187 = icmp ne i64 %89, 0
  %188 = ptrtoint [8192 x i8]* %5 to i64
  %189 = icmp eq i64 %176, 0
  br label %190, !dbg !1139

; <label>:190:                                    ; preds = %161, %822
  %191 = phi i8* [ %159, %161 ], [ %827, %822 ]
  %192 = phi i64 [ 0, %161 ], [ %825, %822 ]
  %193 = phi i1 [ true, %161 ], [ %824, %822 ]
  call void @llvm.dbg.value(metadata i64 %192, metadata !61, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.value(metadata i8* %191, metadata !898, metadata !DIExpression()) #10, !dbg !1140
  call void @llvm.dbg.value(metadata i64 %89, metadata !899, metadata !DIExpression()) #10, !dbg !1141
  call void @llvm.dbg.value(metadata i1 %143, metadata !900, metadata !DIExpression()) #10, !dbg !1142
  call void @llvm.dbg.value(metadata i1 %162, metadata !901, metadata !DIExpression()) #10, !dbg !1143
  %194 = call i32 @strcmp(i8* nonnull %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #14, !dbg !1144
  %195 = icmp eq i32 %194, 0, !dbg !1144
  br i1 %195, label %196, label %198, !dbg !1145

; <label>:196:                                    ; preds = %190
  store i1 true, i1* @have_read_stdin, align 1
  call void @llvm.dbg.value(metadata i32 0, metadata !902, metadata !DIExpression()) #10, !dbg !1146
  %197 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i32 5) #10, !dbg !1147
  call void @llvm.dbg.value(metadata i8* %197, metadata !898, metadata !DIExpression()) #10, !dbg !1140
  br label %206, !dbg !1150

; <label>:198:                                    ; preds = %190
  %199 = call i32 (i8*, i32, ...) @open(i8* nonnull %191, i32 0) #10, !dbg !1151
  call void @llvm.dbg.value(metadata i32 %199, metadata !902, metadata !DIExpression()) #10, !dbg !1146
  %200 = icmp slt i32 %199, 0, !dbg !1153
  br i1 %200, label %201, label %206, !dbg !1155

; <label>:201:                                    ; preds = %198
  %202 = tail call i32* @__errno_location() #17, !dbg !1156
  %203 = load i32, i32* %202, align 4, !dbg !1156, !tbaa !1119
  %204 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i32 5) #10, !dbg !1158
  %205 = call i8* @quotearg_style(i32 4, i8* nonnull %191) #10, !dbg !1159
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %203, i8* %204, i8* %205) #10, !dbg !1160
  br label %822, !dbg !1161

; <label>:206:                                    ; preds = %198, %196
  %207 = phi i32 [ 0, %196 ], [ %199, %198 ], !dbg !1162
  %208 = phi i8* [ %197, %196 ], [ %191, %198 ]
  call void @llvm.dbg.value(metadata i8* %208, metadata !898, metadata !DIExpression()) #10, !dbg !1140
  call void @llvm.dbg.value(metadata i32 %207, metadata !902, metadata !DIExpression()) #10, !dbg !1146
  call void @llvm.dbg.value(metadata i8* %208, metadata !886, metadata !DIExpression()) #10, !dbg !1163
  call void @llvm.dbg.value(metadata i32 %207, metadata !887, metadata !DIExpression()) #10, !dbg !1164
  call void @llvm.dbg.value(metadata i64 %89, metadata !888, metadata !DIExpression()) #10, !dbg !1165
  call void @llvm.dbg.value(metadata i1 %143, metadata !889, metadata !DIExpression()) #10, !dbg !1166
  call void @llvm.dbg.value(metadata i1 %162, metadata !890, metadata !DIExpression()) #10, !dbg !1167
  %209 = load i1, i1* @print_headers, align 1
  br i1 %209, label %210, label %214, !dbg !1168

; <label>:210:                                    ; preds = %206
  call void @llvm.dbg.value(metadata i8* %208, metadata !111, metadata !DIExpression()) #10, !dbg !1169
  %211 = load i1, i1* @write_header.first_file, align 1
  %212 = select i1 %211, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !1172
  %213 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i64 0, i64 0), i8* %212, i8* %208) #10, !dbg !1172
  store i1 true, i1* @write_header.first_file, align 1
  br label %214, !dbg !1173

; <label>:214:                                    ; preds = %210, %206
  br i1 %162, label %749, label %215, !dbg !1174

; <label>:215:                                    ; preds = %214
  call void @llvm.dbg.value(metadata i64 -1, metadata !891, metadata !DIExpression()) #10, !dbg !1175
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %165) #10, !dbg !1176
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !892, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1177
  call void @llvm.dbg.value(metadata i32 %207, metadata !1178, metadata !DIExpression()) #10, !dbg !1186
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !1185, metadata !DIExpression()) #10, !dbg !1186
  %216 = call i32 @__fxstat(i32 1, i32 %207, %struct.stat* nonnull %7) #10, !dbg !1189
  %217 = icmp eq i32 %216, 0, !dbg !1190
  br i1 %217, label %223, label %218, !dbg !1191

; <label>:218:                                    ; preds = %215
  %219 = tail call i32* @__errno_location() #17, !dbg !1192
  %220 = load i32, i32* %219, align 4, !dbg !1192, !tbaa !1119
  %221 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i32 5) #10, !dbg !1194
  %222 = call i8* @quotearg_style(i32 4, i8* %208) #10, !dbg !1195
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %220, i8* %221, i8* %222) #10, !dbg !1196
  br label %747, !dbg !1197

; <label>:223:                                    ; preds = %215
  %224 = load i1, i1* @presume_input_pipe, align 1
  br i1 %224, label %234, label %225, !dbg !1198

; <label>:225:                                    ; preds = %223
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !892, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1177
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !1200, metadata !DIExpression()) #10, !dbg !1205
  %226 = load i32, i32* %169, align 8, !dbg !1207, !tbaa !1208
  %227 = trunc i32 %226 to i16, !dbg !1212
  %228 = and i16 %227, -4096, !dbg !1212
  switch i16 %228, label %234 [
    i16 -32768, label %229
    i16 -24576, label %229
  ], !dbg !1212

; <label>:229:                                    ; preds = %225, %225
  %230 = call fastcc i64 @elseek(i32 %207, i64 0, i32 1, i8* %208) #10, !dbg !1213
  call void @llvm.dbg.value(metadata i64 %230, metadata !891, metadata !DIExpression()) #10, !dbg !1175
  %231 = icmp slt i64 %230, 0, !dbg !1215
  br i1 %231, label %747, label %232, !dbg !1217

; <label>:232:                                    ; preds = %229
  %233 = load i1, i1* @presume_input_pipe, align 1
  br label %234, !dbg !1217

; <label>:234:                                    ; preds = %232, %225, %223
  %235 = phi i1 [ true, %223 ], [ %233, %232 ], [ false, %225 ]
  %236 = phi i64 [ -1, %223 ], [ %230, %232 ], [ -1, %225 ], !dbg !1218
  call void @llvm.dbg.value(metadata i64 %236, metadata !891, metadata !DIExpression()) #10, !dbg !1175
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !892, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1177
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !892, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1177
  %237 = load i64, i64* %168, align 8, !dbg !1219, !tbaa !1220
  %238 = icmp slt i64 %236, 0, !dbg !1219
  %239 = or i1 %235, %238, !dbg !1219
  br i1 %143, label %240, label %546, !dbg !1221

; <label>:240:                                    ; preds = %234
  call void @llvm.dbg.value(metadata i8* %208, metadata !942, metadata !DIExpression()) #10, !dbg !1222
  call void @llvm.dbg.value(metadata i32 %207, metadata !943, metadata !DIExpression()) #10, !dbg !1223
  call void @llvm.dbg.value(metadata i64 %89, metadata !944, metadata !DIExpression()) #10, !dbg !1224
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !945, metadata !DIExpression()) #10, !dbg !1225
  call void @llvm.dbg.value(metadata i64 %236, metadata !946, metadata !DIExpression()) #10, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %237, metadata !947, metadata !DIExpression()) #10, !dbg !1227
  br i1 %239, label %248, label %241, !dbg !1228

; <label>:241:                                    ; preds = %240
  %242 = load i64, i64* %170, align 8, !dbg !1229, !tbaa !1230
  %243 = icmp sgt i64 %242, 0, !dbg !1229
  %244 = icmp ult i64 %242, 2305843009213693953, !dbg !1229
  %245 = and i1 %243, %244, !dbg !1229
  %246 = select i1 %245, i64 %242, i64 512, !dbg !1229
  %247 = icmp sgt i64 %237, %246, !dbg !1231
  br i1 %247, label %447, label %248, !dbg !1232

; <label>:248:                                    ; preds = %241, %240
  call void @llvm.dbg.value(metadata i8* %208, metadata !1233, metadata !DIExpression()) #10, !dbg !1264
  call void @llvm.dbg.value(metadata i32 %207, metadata !1236, metadata !DIExpression()) #10, !dbg !1266
  call void @llvm.dbg.value(metadata i64 %89, metadata !1237, metadata !DIExpression()) #10, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %236, metadata !1238, metadata !DIExpression()) #10, !dbg !1268
  call void @llvm.dbg.value(metadata i64 %236, metadata !1239, metadata !DIExpression()) #10, !dbg !1269
  call void @llvm.dbg.value(metadata i64 0, metadata !1252, metadata !DIExpression()) #10, !dbg !1270
  call void @llvm.dbg.value(metadata i8 1, metadata !1253, metadata !DIExpression()) #10, !dbg !1271
  %249 = call noalias i8* @xmalloc(i64 8216) #10, !dbg !1272
  %250 = bitcast i8* %249 to %struct.linebuffer*, !dbg !1272
  call void @llvm.dbg.value(metadata %struct.linebuffer* %250, metadata !1250, metadata !DIExpression()) #10, !dbg !1273
  call void @llvm.dbg.value(metadata %struct.linebuffer* %250, metadata !1240, metadata !DIExpression()) #10, !dbg !1274
  %251 = getelementptr inbounds i8, i8* %249, i64 8192, !dbg !1275
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %251, i8 0, i64 24, i1 false) #10, !dbg !1276
  %252 = call noalias i8* @xmalloc(i64 8216) #10, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %236, metadata !1239, metadata !DIExpression()) #10, !dbg !1269
  call void @llvm.dbg.value(metadata %struct.linebuffer* %250, metadata !1240, metadata !DIExpression()) #10, !dbg !1274
  call void @llvm.dbg.value(metadata %struct.linebuffer* %250, metadata !1250, metadata !DIExpression()) #10, !dbg !1273
  call void @llvm.dbg.value(metadata i64 0, metadata !1252, metadata !DIExpression()) #10, !dbg !1270
  %253 = call i64 @safe_read(i32 %207, i8* %252, i64 8192) #10, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %253, metadata !1254, metadata !DIExpression()) #10, !dbg !1279
  %254 = add i64 %253, 1, !dbg !1280
  %255 = icmp ult i64 %254, 2, !dbg !1280
  br i1 %255, label %337, label %256, !dbg !1280

; <label>:256:                                    ; preds = %248
  br i1 %164, label %278, label %257, !dbg !1280

; <label>:257:                                    ; preds = %256
  %258 = bitcast i8* %252 to %struct.linebuffer*, !dbg !1277
  call void @llvm.dbg.value(metadata %struct.linebuffer* %258, metadata !1251, metadata !DIExpression()) #10, !dbg !1282
  br label %259, !dbg !1283

; <label>:259:                                    ; preds = %327, %257
  %260 = phi i64 [ %334, %327 ], [ %253, %257 ]
  %261 = phi i8* [ %333, %327 ], [ %252, %257 ]
  %262 = phi i64 [ %332, %327 ], [ %236, %257 ]
  %263 = phi %struct.linebuffer* [ %331, %327 ], [ %250, %257 ]
  %264 = phi %struct.linebuffer* [ %330, %327 ], [ %250, %257 ]
  %265 = phi i64 [ %329, %327 ], [ 0, %257 ]
  %266 = phi %struct.linebuffer* [ %328, %327 ], [ %258, %257 ]
  call void @llvm.dbg.value(metadata i64 %262, metadata !1239, metadata !DIExpression()) #10, !dbg !1269
  call void @llvm.dbg.value(metadata %struct.linebuffer* %263, metadata !1240, metadata !DIExpression()) #10, !dbg !1274
  call void @llvm.dbg.value(metadata %struct.linebuffer* %264, metadata !1250, metadata !DIExpression()) #10, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %265, metadata !1252, metadata !DIExpression()) #10, !dbg !1270
  call void @llvm.dbg.value(metadata %struct.linebuffer* %266, metadata !1251, metadata !DIExpression()) #10, !dbg !1282
  call void @llvm.dbg.value(metadata i64 %262, metadata !1239, metadata !DIExpression()) #10, !dbg !1269
  %267 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %266, i64 0, i32 1, !dbg !1283
  store i64 %260, i64* %267, align 8, !dbg !1284, !tbaa !1285
  %268 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %266, i64 0, i32 2, !dbg !1287
  %269 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %266, i64 0, i32 0, i64 %260, !dbg !1288
  call void @llvm.dbg.value(metadata i8* %269, metadata !1255, metadata !DIExpression()) #10, !dbg !1289
  call void @llvm.dbg.value(metadata i8* undef, metadata !1258, metadata !DIExpression()) #10, !dbg !1290
  call void @llvm.dbg.value(metadata i8* %261, metadata !1258, metadata !DIExpression()) #10, !dbg !1290
  %270 = bitcast i64* %268 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %270, i8 0, i64 16, i1 false) #10, !dbg !1291
  %271 = load i1, i1* @line_end, align 1
  %272 = select i1 %271, i32 10, i32 0, !dbg !1292
  %273 = ptrtoint i8* %269 to i64, !dbg !1293
  %274 = ptrtoint i8* %261 to i64, !dbg !1293
  %275 = sub i64 %273, %274, !dbg !1293
  %276 = call i8* @memchr(i8* nonnull %261, i32 %272, i64 %275) #14, !dbg !1294
  call void @llvm.dbg.value(metadata i8* %276, metadata !1258, metadata !DIExpression()) #10, !dbg !1290
  %277 = icmp eq i8* %276, null, !dbg !1295
  br i1 %277, label %294, label %285, !dbg !1295

; <label>:278:                                    ; preds = %256, %278
  %279 = phi i64 [ %282, %278 ], [ %253, %256 ]
  %280 = phi i64 [ %281, %278 ], [ %236, %256 ]
  call void @llvm.dbg.value(metadata i64 %280, metadata !1239, metadata !DIExpression()) #10, !dbg !1269
  %281 = add i64 %280, %279, !dbg !1296
  call fastcc void @xwrite_stdout(i8* %252, i64 %279) #10, !dbg !1299
  call void @llvm.dbg.value(metadata i64 %281, metadata !1239, metadata !DIExpression()) #10, !dbg !1269
  call void @llvm.dbg.value(metadata %struct.linebuffer* %263, metadata !1240, metadata !DIExpression()) #10, !dbg !1274
  call void @llvm.dbg.value(metadata %struct.linebuffer* %264, metadata !1250, metadata !DIExpression()) #10, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %265, metadata !1252, metadata !DIExpression()) #10, !dbg !1270
  call void @llvm.dbg.value(metadata %struct.linebuffer* undef, metadata !1251, metadata !DIExpression()) #10, !dbg !1282
  %282 = call i64 @safe_read(i32 %207, i8* %252, i64 8192) #10, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %282, metadata !1254, metadata !DIExpression()) #10, !dbg !1279
  %283 = add i64 %282, 1, !dbg !1280
  %284 = icmp ult i64 %283, 2, !dbg !1280
  br i1 %284, label %337, label %278, !dbg !1280, !llvm.loop !1300

; <label>:285:                                    ; preds = %259, %285
  %286 = phi i64 [ %289, %285 ], [ 0, %259 ], !dbg !1303
  %287 = phi i8* [ %292, %285 ], [ %276, %259 ]
  %288 = getelementptr inbounds i8, i8* %287, i64 1, !dbg !1305
  %289 = add i64 %286, 1, !dbg !1303
  store i64 %289, i64* %268, align 8, !dbg !1303, !tbaa !1306
  call void @llvm.dbg.value(metadata i8* %288, metadata !1258, metadata !DIExpression()) #10, !dbg !1290
  %290 = ptrtoint i8* %288 to i64, !dbg !1293
  %291 = sub i64 %273, %290, !dbg !1293
  %292 = call i8* @memchr(i8* nonnull %288, i32 %272, i64 %291) #14, !dbg !1294
  call void @llvm.dbg.value(metadata i8* %292, metadata !1258, metadata !DIExpression()) #10, !dbg !1290
  %293 = icmp eq i8* %292, null, !dbg !1295
  br i1 %293, label %294, label %285, !dbg !1295, !llvm.loop !1307

; <label>:294:                                    ; preds = %285, %259
  %295 = phi i64 [ 0, %259 ], [ %289, %285 ], !dbg !1310
  %296 = add i64 %295, %265, !dbg !1311
  call void @llvm.dbg.value(metadata i64 %296, metadata !1252, metadata !DIExpression()) #10, !dbg !1270
  %297 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %264, i64 0, i32 1, !dbg !1312
  %298 = load i64, i64* %297, align 8, !dbg !1312, !tbaa !1285
  %299 = add i64 %298, %260, !dbg !1314
  %300 = icmp ult i64 %299, 8192, !dbg !1315
  br i1 %300, label %301, label %309, !dbg !1316

; <label>:301:                                    ; preds = %294
  %302 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %264, i64 0, i32 0, i64 %298, !dbg !1317
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %302, i8* nonnull align 8 %261, i64 %260, i1 false) #10, !dbg !1319
  %303 = bitcast i64* %267 to <2 x i64>*, !dbg !1320
  %304 = load <2 x i64>, <2 x i64>* %303, align 8, !dbg !1320, !tbaa !1321
  %305 = bitcast i64* %297 to <2 x i64>*, !dbg !1322
  %306 = load <2 x i64>, <2 x i64>* %305, align 8, !dbg !1322, !tbaa !1321
  %307 = add <2 x i64> %306, %304, !dbg !1322
  %308 = bitcast i64* %297 to <2 x i64>*, !dbg !1322
  store <2 x i64> %307, <2 x i64>* %308, align 8, !dbg !1322, !tbaa !1321
  br label %327, !dbg !1323

; <label>:309:                                    ; preds = %294
  %310 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %264, i64 0, i32 3, !dbg !1324
  store %struct.linebuffer* %266, %struct.linebuffer** %310, align 8, !dbg !1326, !tbaa !1327
  call void @llvm.dbg.value(metadata %struct.linebuffer* %266, metadata !1250, metadata !DIExpression()) #10, !dbg !1273
  %311 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %263, i64 0, i32 2, !dbg !1328
  %312 = load i64, i64* %311, align 8, !dbg !1328, !tbaa !1306
  %313 = sub i64 %296, %312, !dbg !1330
  %314 = icmp ugt i64 %313, %89, !dbg !1331
  br i1 %314, label %315, label %324, !dbg !1332

; <label>:315:                                    ; preds = %309
  %316 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %263, i64 0, i32 1, !dbg !1333
  %317 = load i64, i64* %316, align 8, !dbg !1333, !tbaa !1285
  %318 = add i64 %317, %262, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %318, metadata !1239, metadata !DIExpression()) #10, !dbg !1269
  %319 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %263, i64 0, i32 0, i64 0, !dbg !1336
  call fastcc void @xwrite_stdout(i8* %319, i64 %317) #10, !dbg !1337
  call void @llvm.dbg.value(metadata %struct.linebuffer* %263, metadata !1251, metadata !DIExpression()) #10, !dbg !1282
  %320 = load i64, i64* %311, align 8, !dbg !1338, !tbaa !1306
  %321 = sub i64 %296, %320, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %321, metadata !1252, metadata !DIExpression()) #10, !dbg !1270
  %322 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %263, i64 0, i32 3, !dbg !1340
  %323 = load %struct.linebuffer*, %struct.linebuffer** %322, align 8, !dbg !1340, !tbaa !1327
  call void @llvm.dbg.value(metadata %struct.linebuffer* %323, metadata !1240, metadata !DIExpression()) #10, !dbg !1274
  br label %327, !dbg !1341

; <label>:324:                                    ; preds = %309
  %325 = call noalias i8* @xmalloc(i64 8216) #10, !dbg !1342
  %326 = bitcast i8* %325 to %struct.linebuffer*, !dbg !1342
  call void @llvm.dbg.value(metadata %struct.linebuffer* %326, metadata !1251, metadata !DIExpression()) #10, !dbg !1282
  br label %327

; <label>:327:                                    ; preds = %324, %315, %301
  %328 = phi %struct.linebuffer* [ %266, %301 ], [ %263, %315 ], [ %326, %324 ], !dbg !1343
  %329 = phi i64 [ %296, %301 ], [ %321, %315 ], [ %296, %324 ], !dbg !1344
  %330 = phi %struct.linebuffer* [ %264, %301 ], [ %266, %315 ], [ %266, %324 ], !dbg !1345
  %331 = phi %struct.linebuffer* [ %263, %301 ], [ %323, %315 ], [ %263, %324 ], !dbg !1346
  %332 = phi i64 [ %262, %301 ], [ %318, %315 ], [ %262, %324 ], !dbg !1346
  call void @llvm.dbg.value(metadata i64 %332, metadata !1239, metadata !DIExpression()) #10, !dbg !1269
  call void @llvm.dbg.value(metadata %struct.linebuffer* %331, metadata !1240, metadata !DIExpression()) #10, !dbg !1274
  call void @llvm.dbg.value(metadata %struct.linebuffer* %330, metadata !1250, metadata !DIExpression()) #10, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %329, metadata !1252, metadata !DIExpression()) #10, !dbg !1270
  call void @llvm.dbg.value(metadata %struct.linebuffer* %328, metadata !1251, metadata !DIExpression()) #10, !dbg !1282
  %333 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %328, i64 0, i32 0, i64 0, !dbg !1347
  %334 = call i64 @safe_read(i32 %207, i8* %333, i64 8192) #10, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %334, metadata !1254, metadata !DIExpression()) #10, !dbg !1279
  %335 = add i64 %334, 1, !dbg !1280
  %336 = icmp ult i64 %335, 2, !dbg !1280
  br i1 %336, label %337, label %259, !dbg !1280, !llvm.loop !1300

; <label>:337:                                    ; preds = %327, %278, %248
  %338 = phi i64 [ 0, %248 ], [ 0, %278 ], [ %329, %327 ]
  %339 = phi %struct.linebuffer* [ %250, %248 ], [ %250, %278 ], [ %330, %327 ]
  %340 = phi %struct.linebuffer* [ %250, %248 ], [ %250, %278 ], [ %331, %327 ]
  %341 = phi i64 [ %236, %248 ], [ %281, %278 ], [ %332, %327 ], !dbg !1348
  %342 = phi i8* [ %252, %248 ], [ %252, %278 ], [ %333, %327 ], !dbg !1347
  %343 = phi i64 [ %253, %248 ], [ %282, %278 ], [ %334, %327 ], !dbg !1278
  call void @llvm.dbg.value(metadata i64 %341, metadata !1239, metadata !DIExpression()) #10, !dbg !1269
  %344 = icmp eq i64 %343, -1, !dbg !1349
  call void @free(i8* %342) #10, !dbg !1350
  br i1 %344, label %345, label %350, !dbg !1351

; <label>:345:                                    ; preds = %337
  %346 = tail call i32* @__errno_location() #17, !dbg !1352
  %347 = load i32, i32* %346, align 4, !dbg !1352, !tbaa !1119
  %348 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1355
  %349 = call i8* @quotearg_style(i32 4, i8* %208) #10, !dbg !1356
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %347, i8* %348, i8* %349) #10, !dbg !1357
  call void @llvm.dbg.value(metadata i8 0, metadata !1253, metadata !DIExpression()) #10, !dbg !1271
  br label %427, !dbg !1358

; <label>:350:                                    ; preds = %337
  %351 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %339, i64 0, i32 1, !dbg !1359
  %352 = load i64, i64* %351, align 8, !dbg !1359, !tbaa !1285
  %353 = icmp eq i64 %352, 0, !dbg !1361
  br i1 %353, label %367, label %354, !dbg !1362

; <label>:354:                                    ; preds = %350
  %355 = add i64 %352, -1, !dbg !1363
  %356 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %339, i64 0, i32 0, i64 %355, !dbg !1364
  %357 = load i8, i8* %356, align 1, !dbg !1364, !tbaa !1012
  %358 = sext i8 %357 to i32, !dbg !1364
  %359 = load i1, i1* @line_end, align 1
  %360 = select i1 %359, i32 10, i32 0, !dbg !1365
  %361 = icmp eq i32 %360, %358, !dbg !1366
  br i1 %361, label %367, label %362, !dbg !1367

; <label>:362:                                    ; preds = %354
  %363 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %339, i64 0, i32 2, !dbg !1368
  %364 = load i64, i64* %363, align 8, !dbg !1370, !tbaa !1306
  %365 = add i64 %364, 1, !dbg !1370
  store i64 %365, i64* %363, align 8, !dbg !1370, !tbaa !1306
  %366 = add i64 %338, 1, !dbg !1371
  call void @llvm.dbg.value(metadata i64 %366, metadata !1252, metadata !DIExpression()) #10, !dbg !1270
  br label %367, !dbg !1372

; <label>:367:                                    ; preds = %362, %354, %350
  %368 = phi i64 [ %366, %362 ], [ %338, %354 ], [ %338, %350 ], !dbg !1346
  call void @llvm.dbg.value(metadata i64 %368, metadata !1252, metadata !DIExpression()) #10, !dbg !1270
  call void @llvm.dbg.value(metadata %struct.linebuffer* undef, metadata !1251, metadata !DIExpression()) #10, !dbg !1282
  call void @llvm.dbg.value(metadata i64 %341, metadata !1239, metadata !DIExpression()) #10, !dbg !1269
  call void @llvm.dbg.value(metadata %struct.linebuffer* %340, metadata !1251, metadata !DIExpression()) #10, !dbg !1282
  %369 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %340, i64 0, i32 2, !dbg !1373
  %370 = load i64, i64* %369, align 8, !dbg !1373, !tbaa !1306
  %371 = sub i64 %368, %370, !dbg !1376
  %372 = icmp ugt i64 %371, %89, !dbg !1377
  br i1 %372, label %373, label %390, !dbg !1378

; <label>:373:                                    ; preds = %367, %373
  %374 = phi i64* [ %386, %373 ], [ %369, %367 ]
  %375 = phi i64 [ %380, %373 ], [ %341, %367 ]
  %376 = phi i64 [ %383, %373 ], [ %368, %367 ]
  %377 = phi %struct.linebuffer* [ %385, %373 ], [ %340, %367 ]
  call void @llvm.dbg.value(metadata i64 %375, metadata !1239, metadata !DIExpression()) #10, !dbg !1269
  call void @llvm.dbg.value(metadata i64 %376, metadata !1252, metadata !DIExpression()) #10, !dbg !1270
  call void @llvm.dbg.value(metadata %struct.linebuffer* %377, metadata !1251, metadata !DIExpression()) #10, !dbg !1282
  %378 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %377, i64 0, i32 1, !dbg !1379
  %379 = load i64, i64* %378, align 8, !dbg !1379, !tbaa !1285
  %380 = add i64 %379, %375, !dbg !1381
  %381 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %377, i64 0, i32 0, i64 0, !dbg !1382
  call fastcc void @xwrite_stdout(i8* %381, i64 %379) #10, !dbg !1383
  %382 = load i64, i64* %374, align 8, !dbg !1384, !tbaa !1306
  %383 = sub i64 %376, %382, !dbg !1385
  %384 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %377, i64 0, i32 3, !dbg !1386
  %385 = load %struct.linebuffer*, %struct.linebuffer** %384, align 8, !dbg !1386, !tbaa !1327
  call void @llvm.dbg.value(metadata i64 %380, metadata !1239, metadata !DIExpression()) #10, !dbg !1269
  call void @llvm.dbg.value(metadata i64 %383, metadata !1252, metadata !DIExpression()) #10, !dbg !1270
  call void @llvm.dbg.value(metadata %struct.linebuffer* %385, metadata !1251, metadata !DIExpression()) #10, !dbg !1282
  %386 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %385, i64 0, i32 2, !dbg !1373
  %387 = load i64, i64* %386, align 8, !dbg !1373, !tbaa !1306
  %388 = sub i64 %383, %387, !dbg !1376
  %389 = icmp ugt i64 %388, %89, !dbg !1377
  br i1 %389, label %373, label %390, !dbg !1378, !llvm.loop !1387

; <label>:390:                                    ; preds = %373, %367
  %391 = phi i64 [ %370, %367 ], [ %387, %373 ]
  %392 = phi %struct.linebuffer* [ %340, %367 ], [ %385, %373 ], !dbg !1390
  %393 = phi i64 [ %368, %367 ], [ %383, %373 ], !dbg !1391
  %394 = phi i64 [ %341, %367 ], [ %380, %373 ], !dbg !1391
  %395 = phi i64* [ %369, %367 ], [ %386, %373 ], !dbg !1373
  call void @llvm.dbg.value(metadata %struct.linebuffer* %392, metadata !1251, metadata !DIExpression()) #10, !dbg !1282
  call void @llvm.dbg.value(metadata i64 %393, metadata !1252, metadata !DIExpression()) #10, !dbg !1270
  call void @llvm.dbg.value(metadata i64 %394, metadata !1239, metadata !DIExpression()) #10, !dbg !1269
  %396 = icmp ugt i64 %393, %89, !dbg !1392
  br i1 %396, label %397, label %427, !dbg !1393

; <label>:397:                                    ; preds = %390
  %398 = sub i64 %393, %89, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %398, metadata !1259, metadata !DIExpression()) #10, !dbg !1395
  %399 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %392, i64 0, i32 0, i64 0, !dbg !1396
  call void @llvm.dbg.value(metadata i8* %399, metadata !1263, metadata !DIExpression()) #10, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %398, metadata !1259, metadata !DIExpression()) #10, !dbg !1395
  %400 = icmp eq i64 %398, 0, !dbg !1398
  br i1 %400, label %421, label %401, !dbg !1399

; <label>:401:                                    ; preds = %397
  %402 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %392, i64 0, i32 1, !dbg !1400
  %403 = load i64, i64* %402, align 8, !dbg !1400, !tbaa !1285
  %404 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %392, i64 0, i32 0, i64 %403, !dbg !1401
  call void @llvm.dbg.value(metadata i8* %404, metadata !1262, metadata !DIExpression()) #10, !dbg !1402
  %405 = ptrtoint i8* %404 to i64
  %406 = load i1, i1* @line_end, align 1
  %407 = select i1 %406, i32 10, i32 0
  br label %408, !dbg !1399

; <label>:408:                                    ; preds = %416, %401
  %409 = phi i64 [ %391, %401 ], [ %418, %416 ]
  %410 = phi i8* [ %399, %401 ], [ %417, %416 ]
  %411 = phi i64 [ %398, %401 ], [ %419, %416 ]
  call void @llvm.dbg.value(metadata i8* %410, metadata !1263, metadata !DIExpression()) #10, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %411, metadata !1259, metadata !DIExpression()) #10, !dbg !1395
  %412 = ptrtoint i8* %410 to i64, !dbg !1403
  %413 = sub i64 %405, %412, !dbg !1403
  %414 = call i8* @memchr(i8* nonnull %410, i32 %407, i64 %413) #14, !dbg !1404
  call void @llvm.dbg.value(metadata i8* %414, metadata !1263, metadata !DIExpression()) #10, !dbg !1397
  %415 = icmp eq i8* %414, null, !dbg !1399
  call void @llvm.dbg.value(metadata i8* %414, metadata !1263, metadata !DIExpression()) #10, !dbg !1397
  br i1 %415, label %421, label %416, !dbg !1405

; <label>:416:                                    ; preds = %408
  %417 = getelementptr inbounds i8, i8* %414, i64 1, !dbg !1406
  %418 = add i64 %409, 1, !dbg !1408
  store i64 %418, i64* %395, align 8, !dbg !1408, !tbaa !1306
  %419 = add i64 %411, -1, !dbg !1409
  call void @llvm.dbg.value(metadata i8* %417, metadata !1263, metadata !DIExpression()) #10, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %419, metadata !1259, metadata !DIExpression()) #10, !dbg !1395
  %420 = icmp eq i64 %419, 0, !dbg !1398
  br i1 %420, label %421, label %408, !dbg !1399, !llvm.loop !1410

; <label>:421:                                    ; preds = %416, %408, %397
  %422 = phi i8* [ %399, %397 ], [ null, %408 ], [ %417, %416 ]
  %423 = ptrtoint i8* %422 to i64, !dbg !1413
  %424 = ptrtoint %struct.linebuffer* %392 to i64, !dbg !1413
  %425 = sub i64 %423, %424, !dbg !1413
  %426 = add i64 %425, %394, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %426, metadata !1239, metadata !DIExpression()) #10, !dbg !1269
  call fastcc void @xwrite_stdout(i8* %399, i64 %425) #10, !dbg !1415
  br label %427, !dbg !1416

; <label>:427:                                    ; preds = %421, %390, %345
  %428 = phi i8 [ 0, %345 ], [ 1, %421 ], [ 1, %390 ], !dbg !1346
  %429 = phi i64 [ %341, %345 ], [ %426, %421 ], [ %394, %390 ], !dbg !1346
  call void @llvm.dbg.value(metadata i64 %429, metadata !1239, metadata !DIExpression()) #10, !dbg !1269
  call void @llvm.dbg.value(metadata i8 %428, metadata !1253, metadata !DIExpression()) #10, !dbg !1271
  call void @llvm.dbg.value(metadata %struct.linebuffer* %340, metadata !1240, metadata !DIExpression()) #10, !dbg !1274
  %430 = icmp eq %struct.linebuffer* %340, null, !dbg !1417
  br i1 %430, label %437, label %431, !dbg !1417

; <label>:431:                                    ; preds = %427, %431
  %432 = phi %struct.linebuffer* [ %434, %431 ], [ %340, %427 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %432, metadata !1240, metadata !DIExpression()) #10, !dbg !1274
  %433 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %432, i64 0, i32 3, !dbg !1418
  %434 = load %struct.linebuffer*, %struct.linebuffer** %433, align 8, !dbg !1418, !tbaa !1327
  call void @llvm.dbg.value(metadata %struct.linebuffer* %434, metadata !1251, metadata !DIExpression()) #10, !dbg !1282
  %435 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %432, i64 0, i32 0, i64 0, !dbg !1420
  call void @free(i8* %435) #10, !dbg !1421
  call void @llvm.dbg.value(metadata %struct.linebuffer* %434, metadata !1240, metadata !DIExpression()) #10, !dbg !1274
  %436 = icmp eq %struct.linebuffer* %434, null, !dbg !1417
  br i1 %436, label %437, label %431, !dbg !1417, !llvm.loop !1422

; <label>:437:                                    ; preds = %431, %427
  %438 = icmp sgt i64 %236, -1, !dbg !1425
  br i1 %438, label %439, label %443, !dbg !1427

; <label>:439:                                    ; preds = %437
  %440 = call fastcc i64 @elseek(i32 %207, i64 %429, i32 0, i8* %208) #10, !dbg !1428
  %441 = icmp slt i64 %440, 0, !dbg !1429
  %442 = select i1 %441, i8 0, i8 %428, !dbg !1430
  br label %443, !dbg !1430

; <label>:443:                                    ; preds = %439, %437
  %444 = phi i8 [ %428, %437 ], [ %442, %439 ], !dbg !1431
  call void @llvm.dbg.value(metadata i8 %444, metadata !1253, metadata !DIExpression()) #10, !dbg !1271
  %445 = and i8 %444, 1, !dbg !1432
  %446 = icmp ne i8 %445, 0, !dbg !1432
  br label %747, !dbg !1433

; <label>:447:                                    ; preds = %241
  %448 = icmp sgt i64 %237, %236, !dbg !1434
  br i1 %448, label %449, label %747, !dbg !1435

; <label>:449:                                    ; preds = %447
  call void @llvm.dbg.value(metadata i8* %208, metadata !913, metadata !DIExpression()) #10, !dbg !1436
  call void @llvm.dbg.value(metadata i32 %207, metadata !914, metadata !DIExpression()) #10, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %89, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %236, metadata !916, metadata !DIExpression()) #10, !dbg !1439
  call void @llvm.dbg.value(metadata i64 %237, metadata !917, metadata !DIExpression()) #10, !dbg !1440
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %183) #10, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %237, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  %450 = sub nsw i64 %237, %236, !dbg !1443
  %451 = srem i64 %450, 8192, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %451, metadata !918, metadata !DIExpression()) #10, !dbg !1445
  %452 = icmp eq i64 %451, 0, !dbg !1446
  %453 = select i1 %452, i64 8192, i64 %451, !dbg !1448
  call void @llvm.dbg.value(metadata i64 %453, metadata !918, metadata !DIExpression()) #10, !dbg !1445
  %454 = sub i64 %237, %453, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %454, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  %455 = call fastcc i64 @elseek(i32 %207, i64 %454, i32 0, i8* %208) #10, !dbg !1450
  %456 = icmp slt i64 %455, 0, !dbg !1452
  br i1 %456, label %544, label %457, !dbg !1453

; <label>:457:                                    ; preds = %449
  %458 = call i64 @safe_read(i32 %207, i8* nonnull %183, i64 %453) #10, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %458, metadata !918, metadata !DIExpression()) #10, !dbg !1445
  %459 = icmp eq i64 %458, -1, !dbg !1455
  br i1 %459, label %460, label %465, !dbg !1457

; <label>:460:                                    ; preds = %457
  %461 = tail call i32* @__errno_location() #17, !dbg !1458
  %462 = load i32, i32* %461, align 4, !dbg !1458, !tbaa !1119
  %463 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1460
  %464 = call i8* @quotearg_style(i32 4, i8* %208) #10, !dbg !1461
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %462, i8* %463, i8* %464) #10, !dbg !1462
  br label %544, !dbg !1463

; <label>:465:                                    ; preds = %457
  %466 = icmp ne i64 %458, 0, !dbg !1464
  %467 = and i1 %187, %466, !dbg !1466
  br i1 %467, label %468, label %478, !dbg !1466

; <label>:468:                                    ; preds = %465
  %469 = add i64 %458, -1, !dbg !1467
  %470 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 %469, !dbg !1468
  %471 = load i8, i8* %470, align 1, !dbg !1468, !tbaa !1012
  %472 = sext i8 %471 to i32, !dbg !1468
  %473 = load i1, i1* @line_end, align 1
  %474 = select i1 %473, i32 10, i32 0, !dbg !1469
  %475 = icmp ne i32 %474, %472, !dbg !1470
  %476 = sext i1 %475 to i64, !dbg !1471
  %477 = add i64 %89, %476, !dbg !1471
  br label %478, !dbg !1471

; <label>:478:                                    ; preds = %468, %465
  %479 = phi i64 [ %89, %465 ], [ %477, %468 ]
  br label %480

; <label>:480:                                    ; preds = %478, %537
  %481 = phi i64 [ %534, %537 ], [ %454, %478 ], !dbg !1449
  %482 = phi i64 [ %538, %537 ], [ %458, %478 ], !dbg !1472
  %483 = phi i64 [ %488, %537 ], [ %479, %478 ], !dbg !1473
  call void @llvm.dbg.value(metadata i64 %483, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %482, metadata !918, metadata !DIExpression()) #10, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %482, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  %484 = load i1, i1* @line_end, align 1
  %485 = select i1 %484, i32 10, i32 0
  br label %486, !dbg !1475

; <label>:486:                                    ; preds = %498, %480
  %487 = phi i64 [ %482, %480 ], [ %499, %498 ], !dbg !1476
  %488 = phi i64 [ %483, %480 ], [ %500, %498 ], !dbg !1473
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %487, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  %489 = icmp eq i64 %487, 0, !dbg !1475
  br i1 %489, label %531, label %490, !dbg !1475

; <label>:490:                                    ; preds = %486
  br i1 %187, label %493, label %491, !dbg !1477

; <label>:491:                                    ; preds = %490
  %492 = add i64 %487, -1, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %492, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  br label %498, !dbg !1479

; <label>:493:                                    ; preds = %490
  %494 = call i8* @memrchr(i8* nonnull %183, i32 %485, i64 %487) #14, !dbg !1480
  call void @llvm.dbg.value(metadata i8* %494, metadata !924, metadata !DIExpression()) #10, !dbg !1481
  %495 = icmp eq i8* %494, null, !dbg !1482
  %496 = ptrtoint i8* %494 to i64, !dbg !1484
  %497 = sub i64 %496, %188, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %497, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  br i1 %495, label %531, label %498

; <label>:498:                                    ; preds = %493, %491
  %499 = phi i64 [ %492, %491 ], [ %497, %493 ], !dbg !1485
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  %500 = add i64 %488, -1, !dbg !1486
  call void @llvm.dbg.value(metadata i64 %500, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  %501 = icmp eq i64 %488, 0, !dbg !1487
  br i1 %501, label %502, label %486, !dbg !1488, !llvm.loop !1489

; <label>:502:                                    ; preds = %498
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %481, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %499, metadata !922, metadata !DIExpression()) #10, !dbg !1474
  %503 = icmp sgt i64 %481, %236, !dbg !1492
  br i1 %503, label %504, label %526, !dbg !1493

; <label>:504:                                    ; preds = %502
  %505 = call fastcc i64 @elseek(i32 %207, i64 %236, i32 0, i8* %208) #10, !dbg !1494
  %506 = icmp slt i64 %505, 0, !dbg !1496
  br i1 %506, label %544, label %507, !dbg !1497

; <label>:507:                                    ; preds = %504
  %508 = sub nsw i64 %481, %236, !dbg !1498
  call void @llvm.dbg.value(metadata i32 %207, metadata !974, metadata !DIExpression()) #10, !dbg !1499
  call void @llvm.dbg.value(metadata i64 %508, metadata !975, metadata !DIExpression()) #10, !dbg !1500
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %163) #10, !dbg !1501
  call void @llvm.dbg.value(metadata i64 8192, metadata !976, metadata !DIExpression()) #10, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %508, metadata !975, metadata !DIExpression()) #10, !dbg !1500
  %509 = icmp eq i64 %508, 0, !dbg !1503
  br i1 %509, label %525, label %510, !dbg !1504

; <label>:510:                                    ; preds = %507, %521
  %511 = phi i64 [ %517, %521 ], [ %508, %507 ]
  call void @llvm.dbg.value(metadata i64 %511, metadata !975, metadata !DIExpression()) #10, !dbg !1500
  %512 = icmp ult i64 %511, 8192, !dbg !1505
  %513 = select i1 %512, i64 %511, i64 8192, !dbg !1505
  call void @llvm.dbg.value(metadata i64 %513, metadata !978, metadata !DIExpression()) #10, !dbg !1506
  %514 = call i64 @safe_read(i32 %207, i8* nonnull %163, i64 %513) #10, !dbg !1507
  call void @llvm.dbg.value(metadata i64 %514, metadata !980, metadata !DIExpression()) #10, !dbg !1508
  %515 = icmp eq i64 %514, -1, !dbg !1509
  br i1 %515, label %523, label %516, !dbg !1511

; <label>:516:                                    ; preds = %510
  %517 = sub i64 %511, %514, !dbg !1512
  %518 = icmp eq i64 %514, 0, !dbg !1513
  %519 = icmp ne i64 %517, 0, !dbg !1515
  %520 = and i1 %518, %519, !dbg !1516
  br i1 %520, label %523, label %521, !dbg !1516

; <label>:521:                                    ; preds = %516
  call fastcc void @xwrite_stdout(i8* nonnull %163, i64 %514) #10, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %517, metadata !975, metadata !DIExpression()) #10, !dbg !1500
  %522 = icmp eq i64 %517, 0, !dbg !1503
  br i1 %522, label %525, label %510, !dbg !1504

; <label>:523:                                    ; preds = %516, %510
  %524 = phi i32 [ 2, %516 ], [ 1, %510 ], !dbg !1518
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %163) #10, !dbg !1519
  call void @llvm.dbg.value(metadata i32 %524, metadata !928, metadata !DIExpression()) #10, !dbg !1520
  call fastcc void @diagnose_copy_fd_failure(i32 %524, i8* %208) #10, !dbg !1521
  br label %544, !dbg !1524

; <label>:525:                                    ; preds = %521, %507
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %163) #10, !dbg !1519
  br label %526

; <label>:526:                                    ; preds = %525, %502
  %527 = add i64 %499, 1, !dbg !1525
  call fastcc void @xwrite_stdout(i8* nonnull %183, i64 %527) #10, !dbg !1526
  %528 = add i64 %527, %481, !dbg !1527
  %529 = call fastcc i64 @elseek(i32 %207, i64 %528, i32 0, i8* %208) #10, !dbg !1528
  %530 = icmp sgt i64 %529, -1, !dbg !1529
  br label %544, !dbg !1530

; <label>:531:                                    ; preds = %493, %486
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %488, metadata !915, metadata !DIExpression()) #10, !dbg !1438
  %532 = icmp eq i64 %481, %236, !dbg !1531
  br i1 %532, label %544, label %533, !dbg !1533

; <label>:533:                                    ; preds = %531
  %534 = add nsw i64 %481, -8192, !dbg !1534
  call void @llvm.dbg.value(metadata i64 %534, metadata !919, metadata !DIExpression()) #10, !dbg !1442
  %535 = call fastcc i64 @elseek(i32 %207, i64 %534, i32 0, i8* %208) #10, !dbg !1535
  %536 = icmp slt i64 %535, 0, !dbg !1537
  br i1 %536, label %544, label %537, !dbg !1538

; <label>:537:                                    ; preds = %533
  %538 = call i64 @safe_read(i32 %207, i8* nonnull %183, i64 8192) #10, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %538, metadata !918, metadata !DIExpression()) #10, !dbg !1445
  switch i64 %538, label %480 [
    i64 -1, label %539
    i64 0, label %544
  ], !dbg !1540

; <label>:539:                                    ; preds = %537
  %540 = tail call i32* @__errno_location() #17, !dbg !1541
  %541 = load i32, i32* %540, align 4, !dbg !1541, !tbaa !1119
  %542 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1544
  %543 = call i8* @quotearg_style(i32 4, i8* %208) #10, !dbg !1545
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %541, i8* %542, i8* %543) #10, !dbg !1546
  br label %544, !dbg !1547

; <label>:544:                                    ; preds = %537, %533, %531, %539, %526, %523, %504, %460, %449
  %545 = phi i1 [ false, %460 ], [ false, %449 ], [ false, %539 ], [ %530, %526 ], [ false, %523 ], [ false, %504 ], [ true, %531 ], [ false, %533 ], [ true, %537 ], !dbg !1548
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %183) #10, !dbg !1549
  br label %747, !dbg !1435

; <label>:546:                                    ; preds = %234
  call void @llvm.dbg.value(metadata i8* %208, metadata !868, metadata !DIExpression()) #10, !dbg !1550
  call void @llvm.dbg.value(metadata i32 %207, metadata !869, metadata !DIExpression()) #10, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %89, metadata !870, metadata !DIExpression()) #10, !dbg !1552
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !871, metadata !DIExpression()) #10, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %236, metadata !872, metadata !DIExpression()) #10, !dbg !1554
  call void @llvm.dbg.value(metadata i64 %237, metadata !873, metadata !DIExpression()) #10, !dbg !1555
  br i1 %239, label %554, label %547, !dbg !1556

; <label>:547:                                    ; preds = %546
  %548 = load i64, i64* %170, align 8, !dbg !1557, !tbaa !1230
  %549 = icmp sgt i64 %548, 0, !dbg !1557
  %550 = icmp ult i64 %548, 2305843009213693953, !dbg !1557
  %551 = and i1 %549, %550, !dbg !1557
  %552 = select i1 %551, i64 %548, i64 512, !dbg !1557
  %553 = icmp sgt i64 %237, %552, !dbg !1558
  br i1 %553, label %723, label %554, !dbg !1559

; <label>:554:                                    ; preds = %547, %546
  call void @llvm.dbg.value(metadata i8* %208, metadata !782, metadata !DIExpression()) #10, !dbg !1560
  call void @llvm.dbg.value(metadata i32 %207, metadata !783, metadata !DIExpression()) #10, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %89, metadata !784, metadata !DIExpression()) #10, !dbg !1562
  call void @llvm.dbg.value(metadata i64 %236, metadata !785, metadata !DIExpression()) #10, !dbg !1563
  call void @llvm.dbg.value(metadata i64 %89, metadata !786, metadata !DIExpression()) #10, !dbg !1564
  call void @llvm.dbg.value(metadata i64 %236, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i8 1, metadata !788, metadata !DIExpression()) #10, !dbg !1566
  br i1 %172, label %555, label %611, !dbg !1567

; <label>:555:                                    ; preds = %554
  call void @llvm.dbg.value(metadata i8 1, metadata !792, metadata !DIExpression()) #10, !dbg !1568
  call void @llvm.dbg.value(metadata i8 0, metadata !793, metadata !DIExpression()) #10, !dbg !1569
  call void @llvm.dbg.value(metadata i64 %171, metadata !794, metadata !DIExpression()) #10, !dbg !1570
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %173) #10, !dbg !1571
  call void @llvm.dbg.value(metadata i64 2, metadata !1572, metadata !DIExpression()) #10, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %171, metadata !1577, metadata !DIExpression()) #10, !dbg !1580
  br i1 %174, label %556, label %557, !dbg !1581

; <label>:556:                                    ; preds = %555
  call void @xalloc_die() #15, !dbg !1582
  unreachable, !dbg !1582

; <label>:557:                                    ; preds = %555
  %558 = call noalias i8* @xmalloc(i64 %184) #10, !dbg !1584
  store i8* %558, i8** %185, align 16, !dbg !1585, !tbaa !720
  %559 = getelementptr inbounds i8, i8* %558, i64 %171, !dbg !1586
  store i8* %559, i8** %186, align 8, !dbg !1587, !tbaa !720
  call void @llvm.dbg.value(metadata i8 0, metadata !795, metadata !DIExpression()) #10, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %236, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i8 1, metadata !788, metadata !DIExpression()) #10, !dbg !1566
  call void @llvm.dbg.value(metadata i8 1, metadata !792, metadata !DIExpression()) #10, !dbg !1568
  call void @llvm.dbg.value(metadata i8 0, metadata !793, metadata !DIExpression()) #10, !dbg !1569
  br label %560, !dbg !1589

; <label>:560:                                    ; preds = %604, %557
  %561 = phi i8* [ %558, %557 ], [ %607, %604 ], !dbg !1590
  %562 = phi i64 [ %236, %557 ], [ %600, %604 ]
  %563 = phi i8 [ 1, %557 ], [ 0, %604 ]
  %564 = phi i8 [ 0, %557 ], [ %580, %604 ]
  %565 = phi i1 [ false, %557 ], [ %601, %604 ]
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i8 %563, metadata !792, metadata !DIExpression()) #10, !dbg !1568
  call void @llvm.dbg.value(metadata i8 %564, metadata !793, metadata !DIExpression()) #10, !dbg !1569
  %566 = call i64 @full_read(i32 %207, i8* %561, i64 %171) #10, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %566, metadata !796, metadata !DIExpression()) #10, !dbg !1592
  call void @llvm.dbg.value(metadata i64 0, metadata !800, metadata !DIExpression()) #10, !dbg !1593
  %567 = icmp ult i64 %566, %171, !dbg !1594
  br i1 %567, label %568, label %578, !dbg !1596

; <label>:568:                                    ; preds = %560
  %569 = tail call i32* @__errno_location() #17, !dbg !1597
  %570 = load i32, i32* %569, align 4, !dbg !1597, !tbaa !1119
  %571 = icmp eq i32 %570, 0, !dbg !1600
  br i1 %571, label %572, label %596, !dbg !1601

; <label>:572:                                    ; preds = %568
  %573 = icmp ule i64 %566, %89, !dbg !1602
  %574 = icmp eq i8 %563, 0, !dbg !1604
  %575 = and i1 %574, %573, !dbg !1607
  %576 = sub i64 %89, %566, !dbg !1608
  call void @llvm.dbg.value(metadata i64 %576, metadata !800, metadata !DIExpression()) #10, !dbg !1593
  %577 = select i1 %575, i64 %576, i64 0, !dbg !1607
  br label %578, !dbg !1607

; <label>:578:                                    ; preds = %572, %560
  %579 = phi i64 [ 0, %560 ], [ %577, %572 ], !dbg !1593
  %580 = phi i8 [ %564, %560 ], [ 1, %572 ], !dbg !1610
  call void @llvm.dbg.value(metadata i64 %579, metadata !800, metadata !DIExpression()) #10, !dbg !1593
  %581 = icmp eq i8 %563, 0, !dbg !1611
  br i1 %581, label %582, label %590, !dbg !1613

; <label>:582:                                    ; preds = %578
  %583 = sub i64 %89, %579, !dbg !1614
  %584 = add i64 %583, %562, !dbg !1616
  call void @llvm.dbg.value(metadata i64 %584, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  %585 = xor i1 %565, true, !dbg !1617
  %586 = zext i1 %585 to i64, !dbg !1618
  %587 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 %586, !dbg !1618
  %588 = load i8*, i8** %587, align 8, !dbg !1618, !tbaa !720
  %589 = getelementptr inbounds i8, i8* %588, i64 8192, !dbg !1619
  call fastcc void @xwrite_stdout(i8* nonnull %589, i64 %583) #10, !dbg !1620
  br label %590, !dbg !1621

; <label>:590:                                    ; preds = %582, %578
  %591 = phi i64 [ %562, %578 ], [ %584, %582 ], !dbg !1622
  call void @llvm.dbg.value(metadata i64 %591, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i8 0, metadata !792, metadata !DIExpression()) #10, !dbg !1568
  %592 = icmp ugt i64 %566, %89, !dbg !1623
  br i1 %592, label %593, label %599, !dbg !1625

; <label>:593:                                    ; preds = %590
  %594 = sub i64 %566, %89, !dbg !1626
  %595 = add i64 %591, %594, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %595, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call fastcc void @xwrite_stdout(i8* %561, i64 %594) #10, !dbg !1629
  br label %599, !dbg !1630

; <label>:596:                                    ; preds = %568
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %562, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  %597 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1631
  %598 = call i8* @quotearg_style(i32 4, i8* %208) #10, !dbg !1633
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %570, i8* %597, i8* %598) #10, !dbg !1634
  call void @llvm.dbg.value(metadata i8 0, metadata !788, metadata !DIExpression()) #10, !dbg !1566
  call void @llvm.dbg.value(metadata i64 undef, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i8 0, metadata !788, metadata !DIExpression()) #10, !dbg !1566
  call void @llvm.dbg.value(metadata i8 undef, metadata !792, metadata !DIExpression()) #10, !dbg !1568
  call void @llvm.dbg.value(metadata i8 undef, metadata !793, metadata !DIExpression()) #10, !dbg !1569
  br label %608

; <label>:599:                                    ; preds = %593, %590
  %600 = phi i64 [ %591, %590 ], [ %595, %593 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i8 0, metadata !788, metadata !DIExpression()) #10, !dbg !1566
  call void @llvm.dbg.value(metadata i8 undef, metadata !792, metadata !DIExpression()) #10, !dbg !1568
  call void @llvm.dbg.value(metadata i8 undef, metadata !793, metadata !DIExpression()) #10, !dbg !1569
  %601 = xor i1 %565, true, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %600, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i8 1, metadata !788, metadata !DIExpression()) #10, !dbg !1566
  call void @llvm.dbg.value(metadata i8 0, metadata !792, metadata !DIExpression()) #10, !dbg !1568
  call void @llvm.dbg.value(metadata i8 %580, metadata !793, metadata !DIExpression()) #10, !dbg !1569
  %602 = and i8 %580, 1, !dbg !1636
  %603 = icmp eq i8 %602, 0, !dbg !1636
  br i1 %603, label %604, label %608, !dbg !1589, !llvm.loop !1637

; <label>:604:                                    ; preds = %599
  %605 = zext i1 %601 to i64
  %606 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 %605
  %607 = load i8*, i8** %606, align 8, !dbg !1590, !tbaa !720
  br label %560, !dbg !1589

; <label>:608:                                    ; preds = %599, %596
  %609 = phi i64 [ %562, %596 ], [ %600, %599 ]
  %610 = phi i8 [ 0, %596 ], [ 1, %599 ], !dbg !1640
  call void @llvm.dbg.value(metadata i64 undef, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i8 %610, metadata !788, metadata !DIExpression()) #10, !dbg !1566
  call void @free(i8* %558) #10, !dbg !1641
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %173) #10, !dbg !1642
  br label %711, !dbg !1643

; <label>:611:                                    ; preds = %554, %673
  %612 = phi i64 [ %674, %673 ], [ %236, %554 ]
  %613 = phi i64 [ %641, %673 ], [ 0, %554 ]
  %614 = phi i64 [ %653, %673 ], [ 0, %554 ]
  %615 = phi i8** [ %640, %673 ], [ null, %554 ]
  %616 = phi i8* [ %639, %673 ], [ null, %554 ]
  %617 = phi i8* [ %638, %673 ], [ null, %554 ]
  %618 = phi i64 [ %676, %673 ], [ 1, %554 ]
  %619 = phi i64 [ %618, %673 ], [ 0, %554 ]
  %620 = phi i8 [ %666, %673 ], [ 0, %554 ]
  %621 = phi i8 [ %664, %673 ], [ 0, %554 ]
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %613, metadata !812, metadata !DIExpression()) #10, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %614, metadata !811, metadata !DIExpression()) #10, !dbg !1645
  call void @llvm.dbg.value(metadata i8** %615, metadata !807, metadata !DIExpression()) #10, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %618, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %619, metadata !805, metadata !DIExpression()) #10, !dbg !1648
  call void @llvm.dbg.value(metadata i8 %620, metadata !804, metadata !DIExpression()) #10, !dbg !1649
  call void @llvm.dbg.value(metadata i8 %621, metadata !801, metadata !DIExpression()) #10, !dbg !1650
  %622 = icmp eq i64 %613, %619, !dbg !1651
  br i1 %622, label %623, label %637, !dbg !1656

; <label>:623:                                    ; preds = %611
  %624 = icmp eq i64 %613, 0, !dbg !1657
  br i1 %624, label %629, label %625, !dbg !1660

; <label>:625:                                    ; preds = %623
  %626 = icmp ugt i64 %613, %182, !dbg !1661
  %627 = shl i64 %613, 1, !dbg !1663
  %628 = select i1 %626, i64 %179, i64 %627, !dbg !1664
  br label %629, !dbg !1664

; <label>:629:                                    ; preds = %625, %623
  %630 = phi i64 [ %628, %625 ], [ %181, %623 ], !dbg !1665
  call void @llvm.dbg.value(metadata i64 %630, metadata !812, metadata !DIExpression()) #10, !dbg !1644
  call void @llvm.dbg.value(metadata i8* %616, metadata !1666, metadata !DIExpression()) #10, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %630, metadata !1671, metadata !DIExpression()) #10, !dbg !1675
  call void @llvm.dbg.value(metadata i64 8, metadata !1672, metadata !DIExpression()) #10, !dbg !1676
  %631 = icmp ugt i64 %630, 1152921504606846975, !dbg !1677
  br i1 %631, label %632, label %633, !dbg !1679

; <label>:632:                                    ; preds = %629
  call void @xalloc_die() #15, !dbg !1680
  unreachable, !dbg !1680

; <label>:633:                                    ; preds = %629
  %634 = shl i64 %630, 3, !dbg !1681
  %635 = call i8* @xrealloc(i8* %616, i64 %634) #10, !dbg !1682
  %636 = bitcast i8* %635 to i8**, !dbg !1683
  call void @llvm.dbg.value(metadata i8** %636, metadata !807, metadata !DIExpression()) #10, !dbg !1646
  br label %637, !dbg !1684

; <label>:637:                                    ; preds = %633, %611
  %638 = phi i8* [ %635, %633 ], [ %617, %611 ], !dbg !1685
  %639 = phi i8* [ %635, %633 ], [ %616, %611 ], !dbg !1685
  %640 = phi i8** [ %636, %633 ], [ %615, %611 ], !dbg !1685
  %641 = phi i64 [ %630, %633 ], [ %613, %611 ], !dbg !1685
  %642 = and i8 %620, 1, !dbg !1686
  %643 = icmp eq i8 %642, 0, !dbg !1686
  br i1 %643, label %647, label %644, !dbg !1688

; <label>:644:                                    ; preds = %637
  %645 = getelementptr inbounds i8*, i8** %640, i64 %619
  %646 = load i8*, i8** %645, align 8, !dbg !1689, !tbaa !720
  br label %651, !dbg !1688

; <label>:647:                                    ; preds = %637
  %648 = call noalias i8* @xmalloc(i64 8192) #10, !dbg !1690
  %649 = getelementptr inbounds i8*, i8** %640, i64 %619, !dbg !1692
  store i8* %648, i8** %649, align 8, !dbg !1693, !tbaa !720
  %650 = add nsw i64 %619, 1, !dbg !1694
  call void @llvm.dbg.value(metadata i64 %650, metadata !811, metadata !DIExpression()) #10, !dbg !1645
  br label %651, !dbg !1695

; <label>:651:                                    ; preds = %647, %644
  %652 = phi i8* [ %646, %644 ], [ %648, %647 ], !dbg !1689
  %653 = phi i64 [ %614, %644 ], [ %650, %647 ], !dbg !1696
  %654 = call i64 @full_read(i32 %207, i8* %652, i64 8192) #10, !dbg !1697
  %655 = icmp ult i64 %654, 8192, !dbg !1698
  br i1 %655, label %656, label %663, !dbg !1700

; <label>:656:                                    ; preds = %651
  %657 = tail call i32* @__errno_location() #17, !dbg !1701
  %658 = load i32, i32* %657, align 4, !dbg !1701, !tbaa !1119
  %659 = icmp eq i32 %658, 0, !dbg !1704
  br i1 %659, label %663, label %660, !dbg !1705

; <label>:660:                                    ; preds = %656
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %653, metadata !811, metadata !DIExpression()) #10, !dbg !1645
  call void @llvm.dbg.value(metadata i8** %640, metadata !807, metadata !DIExpression()) #10, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %612, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  %661 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1706
  %662 = call i8* @quotearg_style(i32 4, i8* %208) #10, !dbg !1708
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %658, i8* %661, i8* %662) #10, !dbg !1709
  call void @llvm.dbg.value(metadata i8 0, metadata !788, metadata !DIExpression()) #10, !dbg !1566
  br label %700, !dbg !1710

; <label>:663:                                    ; preds = %656, %651
  %664 = phi i8 [ %621, %651 ], [ 1, %656 ], !dbg !1685
  %665 = icmp eq i64 %619, %178, !dbg !1711
  %666 = select i1 %665, i8 1, i8 %620, !dbg !1713
  %667 = and i8 %666, 1, !dbg !1714
  %668 = icmp eq i8 %667, 0, !dbg !1714
  br i1 %668, label %673, label %669, !dbg !1716

; <label>:669:                                    ; preds = %663
  %670 = add i64 %654, %612, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %670, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  %671 = getelementptr inbounds i8*, i8** %640, i64 %618, !dbg !1719
  %672 = load i8*, i8** %671, align 8, !dbg !1719, !tbaa !720
  call fastcc void @xwrite_stdout(i8* %672, i64 %654) #10, !dbg !1720
  br label %673, !dbg !1721

; <label>:673:                                    ; preds = %669, %663
  %674 = phi i64 [ %670, %669 ], [ %612, %663 ], !dbg !1640
  %675 = add nsw i64 %618, 1, !dbg !1722
  %676 = urem i64 %675, %179, !dbg !1723
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %641, metadata !812, metadata !DIExpression()) #10, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %653, metadata !811, metadata !DIExpression()) #10, !dbg !1645
  call void @llvm.dbg.value(metadata i8** %640, metadata !807, metadata !DIExpression()) #10, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %676, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %618, metadata !805, metadata !DIExpression()) #10, !dbg !1648
  call void @llvm.dbg.value(metadata i8 %666, metadata !804, metadata !DIExpression()) #10, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %654, metadata !803, metadata !DIExpression()) #10, !dbg !1724
  call void @llvm.dbg.value(metadata i8 %664, metadata !801, metadata !DIExpression()) #10, !dbg !1650
  %677 = and i8 %664, 1, !dbg !1725
  %678 = icmp eq i8 %677, 0, !dbg !1725
  br i1 %678, label %611, label %679, !dbg !1726, !llvm.loop !1727

; <label>:679:                                    ; preds = %673
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %618, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %618, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %618, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %618, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %618, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %618, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %618, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %618, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %618, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %618, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %618, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %618, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %618, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %618, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %618, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %618, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %618, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %654, metadata !803, metadata !DIExpression()) #10, !dbg !1724
  call void @llvm.dbg.value(metadata i8 %666, metadata !804, metadata !DIExpression()) #10, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %618, metadata !805, metadata !DIExpression()) #10, !dbg !1648
  call void @llvm.dbg.value(metadata i64 %676, metadata !806, metadata !DIExpression()) #10, !dbg !1647
  call void @llvm.dbg.value(metadata i8** %640, metadata !807, metadata !DIExpression()) #10, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %653, metadata !811, metadata !DIExpression()) #10, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %674, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  br i1 %189, label %700, label %680, !dbg !1730

; <label>:680:                                    ; preds = %679
  br i1 %668, label %693, label %681, !dbg !1731

; <label>:681:                                    ; preds = %680
  %682 = sub i64 8192, %654, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %682, metadata !813, metadata !DIExpression()) #10, !dbg !1733
  %683 = add i64 %674, %176, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %683, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  %684 = icmp ult i64 %176, %682, !dbg !1735
  %685 = getelementptr inbounds i8*, i8** %640, i64 %618, !dbg !1737
  %686 = load i8*, i8** %685, align 8, !dbg !1737, !tbaa !720
  %687 = getelementptr inbounds i8, i8* %686, i64 %654, !dbg !1737
  br i1 %684, label %688, label %689, !dbg !1739

; <label>:688:                                    ; preds = %681
  call fastcc void @xwrite_stdout(i8* %687, i64 %176) #10, !dbg !1740
  br label %700, !dbg !1742

; <label>:689:                                    ; preds = %681
  call fastcc void @xwrite_stdout(i8* %687, i64 %682) #10, !dbg !1743
  %690 = getelementptr inbounds i8*, i8** %640, i64 %676, !dbg !1744
  %691 = load i8*, i8** %690, align 8, !dbg !1744, !tbaa !720
  %692 = sub i64 %176, %682, !dbg !1745
  call fastcc void @xwrite_stdout(i8* %691, i64 %692) #10, !dbg !1746
  br label %700

; <label>:693:                                    ; preds = %680
  %694 = icmp eq i64 %618, %178, !dbg !1747
  br i1 %694, label %695, label %700, !dbg !1748

; <label>:695:                                    ; preds = %693
  call void @llvm.dbg.value(metadata i64 %175, metadata !818, metadata !DIExpression()) #10, !dbg !1749
  %696 = sub i64 %654, %175, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %696, metadata !821, metadata !DIExpression()) #10, !dbg !1751
  %697 = add i64 %674, %696, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %697, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  %698 = getelementptr inbounds i8*, i8** %640, i64 %676, !dbg !1753
  %699 = load i8*, i8** %698, align 8, !dbg !1753, !tbaa !720
  call fastcc void @xwrite_stdout(i8* %699, i64 %696) #10, !dbg !1754
  br label %700, !dbg !1755

; <label>:700:                                    ; preds = %695, %693, %689, %688, %679, %660
  %701 = phi i8 [ 0, %660 ], [ 1, %695 ], [ 1, %693 ], [ 1, %679 ], [ 1, %689 ], [ 1, %688 ], !dbg !1640
  %702 = phi i64 [ %612, %660 ], [ %697, %695 ], [ %674, %693 ], [ %674, %679 ], [ %683, %689 ], [ %683, %688 ], !dbg !1640
  call void @llvm.dbg.value(metadata i64 %702, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i8 %701, metadata !788, metadata !DIExpression()) #10, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %653, metadata !811, metadata !DIExpression()) #10, !dbg !1645
  call void @llvm.dbg.value(metadata i8** %640, metadata !807, metadata !DIExpression()) #10, !dbg !1646
  call void @llvm.dbg.value(metadata i64 0, metadata !805, metadata !DIExpression()) #10, !dbg !1648
  %703 = icmp eq i64 %653, 0, !dbg !1756
  br i1 %703, label %710, label %704, !dbg !1759

; <label>:704:                                    ; preds = %700, %704
  %705 = phi i64 [ %708, %704 ], [ 0, %700 ]
  call void @llvm.dbg.value(metadata i64 %705, metadata !805, metadata !DIExpression()) #10, !dbg !1648
  %706 = getelementptr inbounds i8*, i8** %640, i64 %705, !dbg !1760
  %707 = load i8*, i8** %706, align 8, !dbg !1760, !tbaa !720
  call void @free(i8* %707) #10, !dbg !1761
  %708 = add nuw i64 %705, 1, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %708, metadata !805, metadata !DIExpression()) #10, !dbg !1648
  %709 = icmp eq i64 %708, %653, !dbg !1756
  br i1 %709, label %710, label %704, !dbg !1759, !llvm.loop !1763

; <label>:710:                                    ; preds = %704, %700
  call void @free(i8* %638) #10, !dbg !1766
  br label %711

; <label>:711:                                    ; preds = %710, %608
  %712 = phi i8 [ %610, %608 ], [ %701, %710 ], !dbg !1767
  %713 = phi i64 [ %609, %608 ], [ %702, %710 ], !dbg !1565
  call void @llvm.dbg.value(metadata i64 %713, metadata !787, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i8 %712, metadata !788, metadata !DIExpression()) #10, !dbg !1566
  %714 = icmp sgt i64 %236, -1, !dbg !1768
  br i1 %714, label %715, label %719, !dbg !1770

; <label>:715:                                    ; preds = %711
  %716 = call fastcc i64 @elseek(i32 %207, i64 %713, i32 0, i8* %208) #10, !dbg !1771
  %717 = icmp slt i64 %716, 0, !dbg !1772
  %718 = select i1 %717, i8 0, i8 %712, !dbg !1773
  br label %719, !dbg !1773

; <label>:719:                                    ; preds = %715, %711
  %720 = phi i8 [ %712, %711 ], [ %718, %715 ], !dbg !1774
  call void @llvm.dbg.value(metadata i8 %720, metadata !788, metadata !DIExpression()) #10, !dbg !1566
  %721 = and i8 %720, 1, !dbg !1775
  %722 = icmp ne i8 %721, 0, !dbg !1775
  br label %747, !dbg !1776

; <label>:723:                                    ; preds = %547
  %724 = sub nsw i64 %237, %236, !dbg !1777
  call void @llvm.dbg.value(metadata i64 %724, metadata !874, metadata !DIExpression()) #10, !dbg !1778
  %725 = icmp sgt i64 %724, 0, !dbg !1779
  %726 = select i1 %725, i64 %724, i64 0, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %726, metadata !876, metadata !DIExpression()) #10, !dbg !1780
  %727 = icmp ugt i64 %726, %89, !dbg !1781
  br i1 %727, label %728, label %747, !dbg !1783

; <label>:728:                                    ; preds = %723
  %729 = sub i64 %726, %89, !dbg !1784
  call void @llvm.dbg.value(metadata i32 %207, metadata !974, metadata !DIExpression()) #10, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %729, metadata !975, metadata !DIExpression()) #10, !dbg !1786
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %163) #10, !dbg !1787
  call void @llvm.dbg.value(metadata i64 8192, metadata !976, metadata !DIExpression()) #10, !dbg !1788
  call void @llvm.dbg.value(metadata i64 %729, metadata !975, metadata !DIExpression()) #10, !dbg !1786
  %730 = icmp eq i64 %729, 0, !dbg !1789
  br i1 %730, label %744, label %731, !dbg !1790

; <label>:731:                                    ; preds = %728, %742
  %732 = phi i64 [ %738, %742 ], [ %729, %728 ]
  call void @llvm.dbg.value(metadata i64 %732, metadata !975, metadata !DIExpression()) #10, !dbg !1786
  %733 = icmp ult i64 %732, 8192, !dbg !1791
  %734 = select i1 %733, i64 %732, i64 8192, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %734, metadata !978, metadata !DIExpression()) #10, !dbg !1792
  %735 = call i64 @safe_read(i32 %207, i8* nonnull %163, i64 %734) #10, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %735, metadata !980, metadata !DIExpression()) #10, !dbg !1794
  %736 = icmp eq i64 %735, -1, !dbg !1795
  br i1 %736, label %745, label %737, !dbg !1796

; <label>:737:                                    ; preds = %731
  %738 = sub i64 %732, %735, !dbg !1797
  %739 = icmp eq i64 %735, 0, !dbg !1798
  %740 = icmp ne i64 %738, 0, !dbg !1799
  %741 = and i1 %739, %740, !dbg !1800
  br i1 %741, label %745, label %742, !dbg !1800

; <label>:742:                                    ; preds = %737
  call fastcc void @xwrite_stdout(i8* nonnull %163, i64 %735) #10, !dbg !1801
  call void @llvm.dbg.value(metadata i64 %738, metadata !975, metadata !DIExpression()) #10, !dbg !1786
  %743 = icmp eq i64 %738, 0, !dbg !1789
  br i1 %743, label %744, label %731, !dbg !1790

; <label>:744:                                    ; preds = %742, %728
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %163) #10, !dbg !1802
  br label %747, !dbg !1803

; <label>:745:                                    ; preds = %737, %731
  %746 = phi i32 [ 2, %737 ], [ 1, %731 ], !dbg !1804
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %163) #10, !dbg !1802
  call void @llvm.dbg.value(metadata i32 %746, metadata !877, metadata !DIExpression()) #10, !dbg !1805
  call fastcc void @diagnose_copy_fd_failure(i32 %746, i8* %208) #10, !dbg !1806
  br label %747, !dbg !1807

; <label>:747:                                    ; preds = %745, %744, %723, %719, %544, %447, %443, %229, %218
  %748 = phi i1 [ false, %218 ], [ false, %229 ], [ %446, %443 ], [ true, %447 ], [ %545, %544 ], [ %722, %719 ], [ true, %723 ], [ false, %745 ], [ true, %744 ], !dbg !1808
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %165) #10, !dbg !1809
  br label %812

; <label>:749:                                    ; preds = %214
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %163) #10, !dbg !1810
  br i1 %143, label %750, label %795, !dbg !1811

; <label>:750:                                    ; preds = %749
  call void @llvm.dbg.value(metadata i8* %208, metadata !954, metadata !DIExpression()) #10, !dbg !1812
  call void @llvm.dbg.value(metadata i32 %207, metadata !955, metadata !DIExpression()) #10, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %89, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %89, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  br i1 %164, label %793, label %751, !dbg !1815

; <label>:751:                                    ; preds = %750, %791
  %752 = phi i64 [ %788, %791 ], [ %89, %750 ]
  call void @llvm.dbg.value(metadata i64 %752, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  %753 = call i64 @safe_read(i32 %207, i8* nonnull %163, i64 8192) #10, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %753, metadata !957, metadata !DIExpression()) #10, !dbg !1817
  call void @llvm.dbg.value(metadata i64 0, metadata !959, metadata !DIExpression()) #10, !dbg !1818
  switch i64 %753, label %754 [
    i64 -1, label %757
    i64 0, label %793
  ], !dbg !1819

; <label>:754:                                    ; preds = %751
  call void @llvm.dbg.value(metadata i64 0, metadata !959, metadata !DIExpression()) #10, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %752, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  %755 = load i1, i1* @line_end, align 1
  %756 = select i1 %755, i32 10, i32 0
  br label %762, !dbg !1820

; <label>:757:                                    ; preds = %751
  %758 = tail call i32* @__errno_location() #17, !dbg !1821
  %759 = load i32, i32* %758, align 4, !dbg !1821, !tbaa !1119
  %760 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1824
  %761 = call i8* @quotearg_style(i32 4, i8* %208) #10, !dbg !1825
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %759, i8* %760, i8* %761) #10, !dbg !1826
  br label %793

; <label>:762:                                    ; preds = %787, %754
  %763 = phi i64 [ 0, %754 ], [ %765, %787 ]
  %764 = phi i64 [ %752, %754 ], [ %788, %787 ]
  call void @llvm.dbg.value(metadata i64 %763, metadata !959, metadata !DIExpression()) #10, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %764, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  %765 = add nuw i64 %763, 1, !dbg !1827
  %766 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 %763, !dbg !1828
  %767 = load i8, i8* %766, align 1, !dbg !1828, !tbaa !1012
  %768 = sext i8 %767 to i32, !dbg !1828
  %769 = icmp eq i32 %756, %768, !dbg !1829
  br i1 %769, label %770, label %787, !dbg !1830

; <label>:770:                                    ; preds = %762
  %771 = add i64 %764, -1, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %771, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  %772 = icmp eq i64 %771, 0, !dbg !1832
  br i1 %772, label %773, label %787, !dbg !1833

; <label>:773:                                    ; preds = %770
  %774 = sub i64 %765, %753, !dbg !1834
  %775 = call i64 @lseek(i32 %207, i64 %774, i32 1) #10, !dbg !1835
  %776 = icmp slt i64 %775, 0, !dbg !1836
  br i1 %776, label %777, label %790, !dbg !1837

; <label>:777:                                    ; preds = %773
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %166) #10, !dbg !1838
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !963, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1839
  call void @llvm.dbg.value(metadata i32 %207, metadata !1178, metadata !DIExpression()) #10, !dbg !1840
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1185, metadata !DIExpression()) #10, !dbg !1840
  %778 = call i32 @__fxstat(i32 1, i32 %207, %struct.stat* nonnull %3) #10, !dbg !1843
  %779 = icmp eq i32 %778, 0, !dbg !1844
  br i1 %779, label %780, label %784, !dbg !1845

; <label>:780:                                    ; preds = %777
  %781 = load i32, i32* %167, align 8, !dbg !1846, !tbaa !1208
  %782 = and i32 %781, 61440, !dbg !1846
  %783 = icmp eq i32 %782, 32768, !dbg !1846
  br i1 %783, label %784, label %786, !dbg !1847

; <label>:784:                                    ; preds = %780, %777
  %785 = call fastcc i64 @elseek(i32 %207, i64 %774, i32 1, i8* %208) #10, !dbg !1848
  br label %786, !dbg !1848

; <label>:786:                                    ; preds = %784, %780
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %166) #10, !dbg !1849
  br label %790, !dbg !1850

; <label>:787:                                    ; preds = %770, %762
  %788 = phi i64 [ %771, %770 ], [ %764, %762 ]
  call void @llvm.dbg.value(metadata i64 %765, metadata !959, metadata !DIExpression()) #10, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %788, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  %789 = icmp ult i64 %765, %753, !dbg !1851
  br i1 %789, label %762, label %791, !dbg !1820, !llvm.loop !1852

; <label>:790:                                    ; preds = %786, %773
  call void @llvm.dbg.value(metadata i64 %765, metadata !959, metadata !DIExpression()) #10, !dbg !1818
  call fastcc void @xwrite_stdout(i8* nonnull %163, i64 %765) #10, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %788, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  br label %793, !dbg !1815

; <label>:791:                                    ; preds = %787
  call void @llvm.dbg.value(metadata i64 %788, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %788, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %788, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %788, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %788, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %788, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %788, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %788, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %788, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %788, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %788, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %788, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %788, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %765, metadata !959, metadata !DIExpression()) #10, !dbg !1818
  call fastcc void @xwrite_stdout(i8* nonnull %163, i64 %765) #10, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %788, metadata !956, metadata !DIExpression()) #10, !dbg !1814
  %792 = icmp eq i64 %788, 0, !dbg !1815
  br i1 %792, label %793, label %751, !dbg !1815

; <label>:793:                                    ; preds = %791, %751, %790, %757, %750
  %794 = phi i1 [ false, %757 ], [ true, %750 ], [ true, %790 ], [ true, %751 ], [ true, %791 ], !dbg !1856
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %163) #10, !dbg !1857
  br label %812, !dbg !1858

; <label>:795:                                    ; preds = %749
  call void @llvm.dbg.value(metadata i8* %208, metadata !988, metadata !DIExpression()) #10, !dbg !1859
  call void @llvm.dbg.value(metadata i32 %207, metadata !989, metadata !DIExpression()) #10, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %89, metadata !990, metadata !DIExpression()) #10, !dbg !1861
  call void @llvm.dbg.value(metadata i64 8192, metadata !991, metadata !DIExpression()) #10, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %89, metadata !990, metadata !DIExpression()) #10, !dbg !1861
  br i1 %164, label %810, label %796, !dbg !1863

; <label>:796:                                    ; preds = %795, %807
  %797 = phi i64 [ %800, %807 ], [ 8192, %795 ]
  %798 = phi i64 [ %808, %807 ], [ %89, %795 ]
  call void @llvm.dbg.value(metadata i64 %797, metadata !991, metadata !DIExpression()) #10, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %798, metadata !990, metadata !DIExpression()) #10, !dbg !1861
  %799 = icmp ult i64 %798, %797, !dbg !1864
  %800 = select i1 %799, i64 %798, i64 %797, !dbg !1866
  %801 = call i64 @safe_read(i32 %207, i8* nonnull %163, i64 %800) #10, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %801, metadata !992, metadata !DIExpression()) #10, !dbg !1868
  switch i64 %801, label %807 [
    i64 -1, label %802
    i64 0, label %810
  ], !dbg !1869

; <label>:802:                                    ; preds = %796
  %803 = tail call i32* @__errno_location() #17, !dbg !1870
  %804 = load i32, i32* %803, align 4, !dbg !1870, !tbaa !1119
  %805 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1873
  %806 = call i8* @quotearg_style(i32 4, i8* %208) #10, !dbg !1874
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %804, i8* %805, i8* %806) #10, !dbg !1875
  br label %810

; <label>:807:                                    ; preds = %796
  call fastcc void @xwrite_stdout(i8* nonnull %163, i64 %801) #10, !dbg !1876
  %808 = sub i64 %798, %801, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %800, metadata !991, metadata !DIExpression()) #10, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %808, metadata !990, metadata !DIExpression()) #10, !dbg !1861
  %809 = icmp eq i64 %808, 0, !dbg !1863
  br i1 %809, label %810, label %796, !dbg !1863

; <label>:810:                                    ; preds = %807, %796, %802, %795
  %811 = phi i1 [ false, %802 ], [ true, %795 ], [ true, %796 ], [ true, %807 ], !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %163) #10, !dbg !1879
  br label %812, !dbg !1880

; <label>:812:                                    ; preds = %810, %793, %747
  %813 = phi i1 [ %748, %747 ], [ %794, %793 ], [ %811, %810 ], !dbg !1810
  br i1 %195, label %822, label %814, !dbg !1881

; <label>:814:                                    ; preds = %812
  %815 = call i32 @close(i32 %207) #10, !dbg !1883
  %816 = icmp eq i32 %815, 0, !dbg !1884
  br i1 %816, label %822, label %817, !dbg !1885

; <label>:817:                                    ; preds = %814
  %818 = tail call i32* @__errno_location() #17, !dbg !1886
  %819 = load i32, i32* %818, align 4, !dbg !1886, !tbaa !1119
  %820 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0), i32 5) #10, !dbg !1888
  %821 = call i8* @quotearg_style(i32 4, i8* %208) #10, !dbg !1889
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %819, i8* %820, i8* %821) #10, !dbg !1890
  br label %822, !dbg !1891

; <label>:822:                                    ; preds = %201, %812, %814, %817
  %823 = phi i1 [ false, %817 ], [ false, %201 ], [ %813, %814 ], [ %813, %812 ], !dbg !1892
  %824 = and i1 %193, %823, !dbg !1893
  %825 = add i64 %192, 1, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %825, metadata !61, metadata !DIExpression()), !dbg !1137
  %826 = getelementptr inbounds i8*, i8** %158, i64 %825, !dbg !1138
  %827 = load i8*, i8** %826, align 8, !dbg !1138, !tbaa !720
  %828 = icmp eq i8* %827, null, !dbg !1139
  br i1 %828, label %829, label %190, !dbg !1139, !llvm.loop !1895

; <label>:829:                                    ; preds = %822
  %830 = xor i1 %824, true
  %831 = zext i1 %830 to i32
  br label %832

; <label>:832:                                    ; preds = %829, %153
  %833 = phi i32 [ 0, %153 ], [ %831, %829 ]
  %834 = load i1, i1* @have_read_stdin, align 1
  br i1 %834, label %835, label %841, !dbg !1897

; <label>:835:                                    ; preds = %832
  %836 = call i32 @close(i32 0) #10, !dbg !1899
  %837 = icmp slt i32 %836, 0, !dbg !1900
  br i1 %837, label %838, label %841, !dbg !1901

; <label>:838:                                    ; preds = %835
  %839 = tail call i32* @__errno_location() #17, !dbg !1902
  %840 = load i32, i32* %839, align 4, !dbg !1902, !tbaa !1119
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %840, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !1902
  unreachable, !dbg !1902

; <label>:841:                                    ; preds = %835, %832
  ret i32 %833, !dbg !1903
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @elseek(i32, i64, i32, i8*) unnamed_addr #7 !dbg !1904 {
  %5 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1908, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %1, metadata !1909, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i32 %2, metadata !1910, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8* %3, metadata !1911, metadata !DIExpression()), !dbg !1917
  %6 = tail call i64 @lseek(i32 %0, i64 %1, i32 %2) #10, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %6, metadata !1912, metadata !DIExpression()), !dbg !1919
  %7 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0, !dbg !1920
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %7) #10, !dbg !1920
  call void @llvm.dbg.declare(metadata [21 x i8]* %5, metadata !1913, metadata !DIExpression()), !dbg !1921
  %8 = icmp slt i64 %6, 0, !dbg !1922
  br i1 %8, label %9, label %17, !dbg !1924

; <label>:9:                                      ; preds = %4
  %10 = tail call i32* @__errno_location() #17, !dbg !1925
  %11 = load i32, i32* %10, align 4, !dbg !1925, !tbaa !1119
  %12 = icmp eq i32 %2, 0, !dbg !1926
  %13 = select i1 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.56, i64 0, i64 0), !dbg !1926
  %14 = tail call i8* @dcgettext(i8* null, i8* %13, i32 5) #10, !dbg !1926
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %3) #10, !dbg !1927
  %16 = call i8* @offtostr(i64 %1, i8* nonnull %7) #10, !dbg !1928
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %11, i8* %14, i8* %15, i8* %16) #10, !dbg !1929
  br label %17, !dbg !1929

; <label>:17:                                     ; preds = %9, %4
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %7) #10, !dbg !1930
  ret i64 %6, !dbg !1931
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @xwrite_stdout(i8* nocapture, i64) unnamed_addr #7 !dbg !1932 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1936, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %1, metadata !1937, metadata !DIExpression()), !dbg !1939
  %3 = icmp eq i64 %1, 0, !dbg !1940
  br i1 %3, label %14, label %4, !dbg !1942

; <label>:4:                                      ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1943, !tbaa !720
  %6 = tail call i64 @fwrite_unlocked(i8* %0, i64 1, i64 %1, %struct._IO_FILE* %5), !dbg !1943
  %7 = icmp ult i64 %6, %1, !dbg !1944
  br i1 %7, label %8, label %14, !dbg !1945

; <label>:8:                                      ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1946, !tbaa !720
  tail call void @clearerr_unlocked(%struct._IO_FILE* %9) #10, !dbg !1946
  %10 = tail call i32* @__errno_location() #17, !dbg !1948
  %11 = load i32, i32* %10, align 4, !dbg !1948, !tbaa !1119
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0), i32 5) #10, !dbg !1948
  %13 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0)) #10, !dbg !1948
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %11, i8* %12, i8* %13) #10, !dbg !1948
  unreachable, !dbg !1948

; <label>:14:                                     ; preds = %2, %4
  ret void, !dbg !1949
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @memrchr(i8*, i32, i64) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @diagnose_copy_fd_failure(i32, i8*) unnamed_addr #7 !dbg !1950 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1954, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8* %1, metadata !1955, metadata !DIExpression()), !dbg !1957
  switch i32 %0, label %13 [
    i32 1, label %3
    i32 2, label %8
  ], !dbg !1958

; <label>:3:                                      ; preds = %2
  %4 = tail call i32* @__errno_location() #17, !dbg !1959
  %5 = load i32, i32* %4, align 4, !dbg !1959, !tbaa !1119
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1961
  %7 = tail call i8* @quotearg_style(i32 4, i8* %1) #10, !dbg !1962
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %5, i8* %6, i8* %7) #10, !dbg !1963
  br label %14, !dbg !1964

; <label>:8:                                      ; preds = %2
  %9 = tail call i32* @__errno_location() #17, !dbg !1965
  %10 = load i32, i32* %9, align 4, !dbg !1965, !tbaa !1119
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.60, i64 0, i64 0), i32 5) #10, !dbg !1966
  %12 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #10, !dbg !1967
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %10, i8* %11, i8* %12) #10, !dbg !1968
  br label %14, !dbg !1969

; <label>:13:                                     ; preds = %2
  tail call void @abort() #15, !dbg !1970
  unreachable, !dbg !1970

; <label>:14:                                     ; preds = %8, %3
  ret void, !dbg !1971
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1972 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1974, metadata !DIExpression()), !dbg !1975
  store i8* %0, i8** @file_name, align 8, !dbg !1976, !tbaa !720
  ret void, !dbg !1977
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1978 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1982, metadata !DIExpression()), !dbg !1983
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1984, !tbaa !1985
  ret void, !dbg !1987
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1988 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1993, !tbaa !720
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1994
  %3 = icmp eq i32 %2, 0, !dbg !1995
  br i1 %3, label %22, label %4, !dbg !1996

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1997, !tbaa !1985, !range !1998
  %6 = icmp eq i8 %5, 0, !dbg !1997
  br i1 %6, label %11, label %7, !dbg !1999

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !2000
  %9 = load i32, i32* %8, align 4, !dbg !2000, !tbaa !1119
  %10 = icmp eq i32 %9, 32, !dbg !2001
  br i1 %10, label %22, label %11, !dbg !2002

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i32 5) #10, !dbg !2003
  call void @llvm.dbg.value(metadata i8* %12, metadata !1990, metadata !DIExpression()), !dbg !2004
  %13 = load i8*, i8** @file_name, align 8, !dbg !2005, !tbaa !720
  %14 = icmp eq i8* %13, null, !dbg !2005
  %15 = tail call i32* @__errno_location() #17, !dbg !2007
  %16 = load i32, i32* %15, align 4, !dbg !2007, !tbaa !1119
  br i1 %14, label %19, label %17, !dbg !2008

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !2009
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.65, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !2010
  br label %20, !dbg !2010

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.66, i64 0, i64 0), i8* %12) #10, !dbg !2011
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2012, !tbaa !1119
  tail call void @_exit(i32 %21) #15, !dbg !2013
  unreachable, !dbg !2013

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2014, !tbaa !720
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !2016
  %25 = icmp eq i32 %24, 0, !dbg !2017
  br i1 %25, label %28, label %26, !dbg !2018

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2019, !tbaa !1119
  tail call void @_exit(i32 %27) #15, !dbg !2020
  unreachable, !dbg !2020

; <label>:28:                                     ; preds = %22
  ret void, !dbg !2021
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @full_read(i32, i8*, i64) local_unnamed_addr #7 !dbg !2022 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2027, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i8* %1, metadata !2028, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %2, metadata !2029, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 0, metadata !2030, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i8* %1, metadata !2031, metadata !DIExpression()), !dbg !2038
  %4 = icmp eq i64 %2, 0, !dbg !2039
  br i1 %4, label %17, label %5, !dbg !2040

; <label>:5:                                      ; preds = %3, %12
  %6 = phi i64 [ %13, %12 ], [ 0, %3 ], !dbg !2037
  %7 = phi i8* [ %14, %12 ], [ %1, %3 ], !dbg !2038
  %8 = phi i64 [ %15, %12 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i64 %8, metadata !2029, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8* %7, metadata !2031, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i64 %6, metadata !2030, metadata !DIExpression()), !dbg !2037
  %9 = tail call i64 @safe_read(i32 %0, i8* %7, i64 %8) #10, !dbg !2041
  call void @llvm.dbg.value(metadata i64 %9, metadata !2032, metadata !DIExpression()), !dbg !2042
  switch i64 %9, label %12 [
    i64 -1, label %17
    i64 0, label %10
  ], !dbg !2043

; <label>:10:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i64 %6, metadata !2030, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i64 %6, metadata !2030, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i64 %6, metadata !2030, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i64 %6, metadata !2030, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i64 %6, metadata !2030, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i64 %6, metadata !2030, metadata !DIExpression()), !dbg !2037
  %11 = tail call i32* @__errno_location() #17, !dbg !2044
  store i32 0, i32* %11, align 4, !dbg !2047, !tbaa !1119
  br label %17, !dbg !2048

; <label>:12:                                     ; preds = %5
  %13 = add i64 %9, %6, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %13, metadata !2030, metadata !DIExpression()), !dbg !2037
  %14 = getelementptr inbounds i8, i8* %7, i64 %9, !dbg !2050
  call void @llvm.dbg.value(metadata i8* %14, metadata !2031, metadata !DIExpression()), !dbg !2038
  %15 = sub i64 %8, %9, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %15, metadata !2029, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %15, metadata !2029, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8* %14, metadata !2031, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i64 %13, metadata !2030, metadata !DIExpression()), !dbg !2037
  %16 = icmp eq i64 %15, 0, !dbg !2039
  br i1 %16, label %17, label %5, !llvm.loop !2052

; <label>:17:                                     ; preds = %12, %5, %10, %3
  %18 = phi i64 [ 0, %3 ], [ %6, %10 ], [ %6, %5 ], [ %13, %12 ], !dbg !2037
  call void @llvm.dbg.value(metadata i64 %18, metadata !2030, metadata !DIExpression()), !dbg !2037
  ret i64 %18, !dbg !2054
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull i8* @offtostr(i64, i8*) local_unnamed_addr #7 !dbg !2055 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2060, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %1, metadata !2061, metadata !DIExpression()), !dbg !2064
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2065
  call void @llvm.dbg.value(metadata i8* %3, metadata !2062, metadata !DIExpression()), !dbg !2066
  store i8 0, i8* %3, align 1, !dbg !2067, !tbaa !1012
  %4 = icmp slt i64 %0, 0, !dbg !2068
  br i1 %4, label %5, label %17, !dbg !2070

; <label>:5:                                      ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %0, %2 ]
  %7 = phi i8* [ %11, %5 ], [ %3, %2 ], !dbg !2071
  call void @llvm.dbg.value(metadata i8* %7, metadata !2062, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i64 %6, metadata !2060, metadata !DIExpression()), !dbg !2063
  %8 = srem i64 %6, 10, !dbg !2073
  %9 = trunc i64 %8 to i8, !dbg !2074
  %10 = sub i8 48, %9, !dbg !2074
  %11 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !2075
  call void @llvm.dbg.value(metadata i8* %11, metadata !2062, metadata !DIExpression()), !dbg !2066
  store i8 %10, i8* %11, align 1, !dbg !2076, !tbaa !1012
  %12 = sdiv i64 %6, 10, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %12, metadata !2060, metadata !DIExpression()), !dbg !2063
  %13 = add i64 %6, 9, !dbg !2078
  %14 = icmp ugt i64 %13, 18, !dbg !2078
  br i1 %14, label %5, label %15, !dbg !2079, !llvm.loop !2080

; <label>:15:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %7, metadata !2062, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i8* %7, metadata !2062, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i8* %7, metadata !2062, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i8* %7, metadata !2062, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i8* %7, metadata !2062, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i8* %7, metadata !2062, metadata !DIExpression()), !dbg !2066
  %16 = getelementptr inbounds i8, i8* %7, i64 -2, !dbg !2083
  call void @llvm.dbg.value(metadata i8* %16, metadata !2062, metadata !DIExpression()), !dbg !2066
  store i8 45, i8* %16, align 1, !dbg !2084, !tbaa !1012
  br label %27, !dbg !2085

; <label>:17:                                     ; preds = %2, %17
  %18 = phi i64 [ %24, %17 ], [ %0, %2 ]
  %19 = phi i8* [ %23, %17 ], [ %3, %2 ], !dbg !2086
  call void @llvm.dbg.value(metadata i8* %19, metadata !2062, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i64 %18, metadata !2060, metadata !DIExpression()), !dbg !2063
  %20 = srem i64 %18, 10, !dbg !2088
  %21 = trunc i64 %20 to i8, !dbg !2089
  %22 = add i8 %21, 48, !dbg !2089
  %23 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !2090
  call void @llvm.dbg.value(metadata i8* %23, metadata !2062, metadata !DIExpression()), !dbg !2066
  store i8 %22, i8* %23, align 1, !dbg !2091, !tbaa !1012
  %24 = sdiv i64 %18, 10, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %24, metadata !2060, metadata !DIExpression()), !dbg !2063
  %25 = add i64 %18, 9, !dbg !2093
  %26 = icmp ugt i64 %25, 18, !dbg !2093
  br i1 %26, label %17, label %27, !dbg !2094, !llvm.loop !2095

; <label>:27:                                     ; preds = %17, %15
  %28 = phi i8* [ %16, %15 ], [ %23, %17 ], !dbg !2086
  call void @llvm.dbg.value(metadata i8* %28, metadata !2062, metadata !DIExpression()), !dbg !2066
  ret i8* %28, !dbg !2098
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull i8* @umaxtostr(i64, i8*) local_unnamed_addr #7 !dbg !2099 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2103, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %1, metadata !2104, metadata !DIExpression()), !dbg !2107
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2108
  call void @llvm.dbg.value(metadata i8* %3, metadata !2105, metadata !DIExpression()), !dbg !2109
  store i8 0, i8* %3, align 1, !dbg !2110, !tbaa !1012
  br label %4, !dbg !2111

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !2112
  call void @llvm.dbg.value(metadata i8* %6, metadata !2105, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %5, metadata !2103, metadata !DIExpression()), !dbg !2106
  %7 = urem i64 %5, 10, !dbg !2115
  %8 = trunc i64 %7 to i8, !dbg !2116
  %9 = or i8 %8, 48, !dbg !2116
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !2117
  call void @llvm.dbg.value(metadata i8* %10, metadata !2105, metadata !DIExpression()), !dbg !2109
  store i8 %9, i8* %10, align 1, !dbg !2118, !tbaa !1012
  %11 = udiv i64 %5, 10, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %11, metadata !2103, metadata !DIExpression()), !dbg !2106
  %12 = icmp ugt i64 %5, 9, !dbg !2120
  br i1 %12, label %4, label %13, !dbg !2121, !llvm.loop !2122

; <label>:13:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !2105, metadata !DIExpression()), !dbg !2109
  ret i8* %10, !dbg !2125
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !2126 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2128, metadata !DIExpression()), !dbg !2131
  %2 = icmp eq i8* %0, null, !dbg !2132
  br i1 %2, label %3, label %6, !dbg !2134

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2135, !tbaa !720
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.79, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !2137
  tail call void @abort() #15, !dbg !2138
  unreachable, !dbg !2138

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !2139
  call void @llvm.dbg.value(metadata i8* %7, metadata !2129, metadata !DIExpression()), !dbg !2140
  %8 = icmp eq i8* %7, null, !dbg !2141
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2142
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2143
  call void @llvm.dbg.value(metadata i8* %10, metadata !2130, metadata !DIExpression()), !dbg !2144
  %11 = ptrtoint i8* %10 to i64, !dbg !2145
  %12 = ptrtoint i8* %0 to i64, !dbg !2145
  %13 = sub i64 %11, %12, !dbg !2145
  %14 = icmp sgt i64 %13, 6, !dbg !2147
  br i1 %14, label %15, label %24, !dbg !2148

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2149
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.80, i64 0, i64 0), i64 7) #14, !dbg !2150
  %18 = icmp eq i32 %17, 0, !dbg !2151
  br i1 %18, label %19, label %24, !dbg !2152

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2128, metadata !DIExpression()), !dbg !2131
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.81, i64 0, i64 0), i64 3) #14, !dbg !2153
  %21 = icmp eq i32 %20, 0, !dbg !2156
  br i1 %21, label %22, label %24, !dbg !2157

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2158
  call void @llvm.dbg.value(metadata i8* %23, metadata !2128, metadata !DIExpression()), !dbg !2131
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2160, !tbaa !720
  br label %24, !dbg !2161

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2128, metadata !DIExpression()), !dbg !2131
  store i8* %25, i8** @program_name, align 8, !dbg !2162, !tbaa !720
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2163, !tbaa !720
  ret void, !dbg !2164
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !2165 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2170, metadata !DIExpression()), !dbg !2173
  %2 = tail call i32* @__errno_location() #17, !dbg !2174
  %3 = load i32, i32* %2, align 4, !dbg !2174, !tbaa !1119
  call void @llvm.dbg.value(metadata i32 %3, metadata !2171, metadata !DIExpression()), !dbg !2175
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2176
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2176
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2176
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !2177
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2172, metadata !DIExpression()), !dbg !2178
  store i32 %3, i32* %2, align 4, !dbg !2179, !tbaa !1119
  ret %struct.quoting_options* %8, !dbg !2180
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !2181 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2187, metadata !DIExpression()), !dbg !2188
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2189
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2189
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2190
  %5 = load i32, i32* %4, align 8, !dbg !2190, !tbaa !2191
  ret i32 %5, !dbg !2193
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2194 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2198, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32 %1, metadata !2199, metadata !DIExpression()), !dbg !2201
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2202
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2202
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2203
  store i32 %1, i32* %5, align 8, !dbg !2204, !tbaa !2191
  ret void, !dbg !2205
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !2206 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2210, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i8 %1, metadata !2211, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i32 %2, metadata !2212, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i8 %1, metadata !2213, metadata !DIExpression()), !dbg !2222
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2223
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2223
  %6 = lshr i8 %1, 5, !dbg !2224
  %7 = zext i8 %6 to i64, !dbg !2224
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2225
  call void @llvm.dbg.value(metadata i32* %8, metadata !2215, metadata !DIExpression()), !dbg !2226
  %9 = and i8 %1, 31, !dbg !2227
  %10 = zext i8 %9 to i32, !dbg !2227
  call void @llvm.dbg.value(metadata i32 %10, metadata !2217, metadata !DIExpression()), !dbg !2228
  %11 = load i32, i32* %8, align 4, !dbg !2229, !tbaa !1119
  %12 = lshr i32 %11, %10, !dbg !2230
  %13 = and i32 %12, 1, !dbg !2231
  call void @llvm.dbg.value(metadata i32 %13, metadata !2218, metadata !DIExpression()), !dbg !2232
  %14 = and i32 %2, 1, !dbg !2233
  %15 = xor i32 %13, %14, !dbg !2234
  %16 = shl i32 %15, %10, !dbg !2235
  %17 = xor i32 %16, %11, !dbg !2236
  store i32 %17, i32* %8, align 4, !dbg !2236, !tbaa !1119
  ret i32 %13, !dbg !2237
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2238 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2242, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 %1, metadata !2243, metadata !DIExpression()), !dbg !2246
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2247
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2249
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2242, metadata !DIExpression()), !dbg !2245
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2250
  %6 = load i32, i32* %5, align 4, !dbg !2250, !tbaa !2251
  call void @llvm.dbg.value(metadata i32 %6, metadata !2244, metadata !DIExpression()), !dbg !2252
  store i32 %1, i32* %5, align 4, !dbg !2253, !tbaa !2251
  ret i32 %6, !dbg !2254
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !2255 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2259, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i8* %1, metadata !2260, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i8* %2, metadata !2261, metadata !DIExpression()), !dbg !2264
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2265
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2267
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2259, metadata !DIExpression()), !dbg !2262
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2268
  store i32 10, i32* %6, align 8, !dbg !2269, !tbaa !2191
  %7 = icmp ne i8* %1, null, !dbg !2270
  %8 = icmp ne i8* %2, null, !dbg !2272
  %9 = and i1 %7, %8, !dbg !2273
  br i1 %9, label %11, label %10, !dbg !2273

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2274
  unreachable, !dbg !2274

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2275
  store i8* %1, i8** %12, align 8, !dbg !2276, !tbaa !2277
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2278
  store i8* %2, i8** %13, align 8, !dbg !2279, !tbaa !2280
  ret void, !dbg !2281
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !2282 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2286, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i64 %1, metadata !2287, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %2, metadata !2288, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i64 %3, metadata !2289, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2290, metadata !DIExpression()), !dbg !2298
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2299
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2299
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2291, metadata !DIExpression()), !dbg !2300
  %8 = tail call i32* @__errno_location() #17, !dbg !2301
  %9 = load i32, i32* %8, align 4, !dbg !2301, !tbaa !1119
  call void @llvm.dbg.value(metadata i32 %9, metadata !2292, metadata !DIExpression()), !dbg !2302
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2303
  %11 = load i32, i32* %10, align 8, !dbg !2303, !tbaa !2191
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2304
  %13 = load i32, i32* %12, align 4, !dbg !2304, !tbaa !2251
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2305
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2306
  %16 = load i8*, i8** %15, align 8, !dbg !2306, !tbaa !2277
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2307
  %18 = load i8*, i8** %17, align 8, !dbg !2307, !tbaa !2280
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2308
  call void @llvm.dbg.value(metadata i64 %19, metadata !2293, metadata !DIExpression()), !dbg !2309
  store i32 %9, i32* %8, align 4, !dbg !2310, !tbaa !1119
  ret i64 %19, !dbg !2311
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !2312 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2318, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i64 %1, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %2, metadata !2320, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i64 %3, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i32 %4, metadata !2322, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 %5, metadata !2323, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32* %6, metadata !2324, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %7, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %8, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 0, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 0, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i8* null, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 0, metadata !2331, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8 0, metadata !2332, metadata !DIExpression()), !dbg !2395
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !2396
  %14 = icmp eq i64 %13, 1, !dbg !2397
  %15 = lshr i32 %5, 1, !dbg !2398
  %16 = trunc i32 %15 to i8, !dbg !2398
  %17 = and i8 %16, 1, !dbg !2398
  call void @llvm.dbg.value(metadata i8 %17, metadata !2334, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8 0, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 0, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 1, metadata !2337, metadata !DIExpression()), !dbg !2401
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !2402

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !2392
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !2393
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !2394
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !2395
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !2403
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !2399
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !2400
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !2401
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %39, metadata !2337, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 %38, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %37, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 %36, metadata !2334, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i64 %35, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8 %34, metadata !2332, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64 %33, metadata !2331, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %32, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 %31, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 0, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8* %30, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %29, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i32 %28, metadata !2322, metadata !DIExpression()), !dbg !2386
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
  ], !dbg !2405

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !2322, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 1, metadata !2334, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8 %36, metadata !2334, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i32 5, metadata !2322, metadata !DIExpression()), !dbg !2386
  br label %93, !dbg !2406

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !2334, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i32 5, metadata !2322, metadata !DIExpression()), !dbg !2386
  %43 = and i8 %36, 1, !dbg !2407
  %44 = icmp eq i8 %43, 0, !dbg !2407
  br i1 %44, label %45, label %93, !dbg !2406

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2409
  br i1 %46, label %93, label %47, !dbg !2412

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2409, !tbaa !1012
  br label %93, !dbg !2409

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.92, i64 0, i64 0), i32 %28), !dbg !2413
  call void @llvm.dbg.value(metadata i8* %49, metadata !2325, metadata !DIExpression()), !dbg !2389
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), i32 %28), !dbg !2417
  call void @llvm.dbg.value(metadata i8* %50, metadata !2326, metadata !DIExpression()), !dbg !2390
  br label %51, !dbg !2418

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %52, metadata !2325, metadata !DIExpression()), !dbg !2389
  %54 = and i8 %36, 1, !dbg !2419
  %55 = icmp eq i8 %54, 0, !dbg !2419
  br i1 %55, label %56, label %71, !dbg !2421

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 0, metadata !2328, metadata !DIExpression()), !dbg !2391
  %57 = load i8, i8* %52, align 1, !dbg !2422, !tbaa !1012
  %58 = icmp eq i8 %57, 0, !dbg !2425
  br i1 %58, label %71, label %59, !dbg !2425

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 %62, metadata !2328, metadata !DIExpression()), !dbg !2391
  %63 = icmp ult i64 %62, %40, !dbg !2426
  br i1 %63, label %64, label %66, !dbg !2429

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2426
  store i8 %60, i8* %65, align 1, !dbg !2426, !tbaa !1012
  br label %66, !dbg !2426

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2429
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2430
  call void @llvm.dbg.value(metadata i8* %68, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 %67, metadata !2328, metadata !DIExpression()), !dbg !2391
  %69 = load i8, i8* %68, align 1, !dbg !2422, !tbaa !1012
  %70 = icmp eq i8 %69, 0, !dbg !2425
  br i1 %70, label %71, label %59, !dbg !2425, !llvm.loop !2431

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !2391
  call void @llvm.dbg.value(metadata i64 %72, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 1, metadata !2332, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8* %53, metadata !2330, metadata !DIExpression()), !dbg !2393
  %73 = call i64 @strlen(i8* %53) #14, !dbg !2433
  call void @llvm.dbg.value(metadata i64 %73, metadata !2331, metadata !DIExpression()), !dbg !2394
  br label %93, !dbg !2434

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2332, metadata !DIExpression()), !dbg !2395
  br label %75, !dbg !2435

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !2403
  call void @llvm.dbg.value(metadata i8 %76, metadata !2332, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 1, metadata !2334, metadata !DIExpression()), !dbg !2398
  br label %77, !dbg !2436

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !2395
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !2403
  call void @llvm.dbg.value(metadata i8 %79, metadata !2334, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8 %78, metadata !2332, metadata !DIExpression()), !dbg !2395
  %80 = and i8 %79, 1, !dbg !2437
  %81 = icmp eq i8 %80, 0, !dbg !2437
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2439
  br label %83, !dbg !2439

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2440
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !2398
  call void @llvm.dbg.value(metadata i8 %85, metadata !2334, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8 %84, metadata !2332, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i32 2, metadata !2322, metadata !DIExpression()), !dbg !2386
  %86 = and i8 %85, 1, !dbg !2441
  %87 = icmp eq i8 %86, 0, !dbg !2441
  br i1 %87, label %88, label %93, !dbg !2443

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2444
  br i1 %89, label %93, label %90, !dbg !2447

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2444, !tbaa !1012
  br label %93, !dbg !2444

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2334, metadata !DIExpression()), !dbg !2398
  br label %93, !dbg !2448

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !2449
  unreachable, !dbg !2449

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !2391
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %41 ], !dbg !2403
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !2403
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !2403
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2450
  call void @llvm.dbg.value(metadata i8 %101, metadata !2334, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8 %100, metadata !2332, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64 %99, metadata !2331, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %98, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 %97, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i32 %94, metadata !2322, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 0, metadata !2327, metadata !DIExpression()), !dbg !2451
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
  br label %121, !dbg !2452

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2453
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !2391
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !2392
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !2399
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !2400
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !2401
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %128, metadata !2337, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 %127, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %126, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %125, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %122, metadata !2327, metadata !DIExpression()), !dbg !2451
  %130 = icmp eq i64 %125, -1, !dbg !2454
  br i1 %130, label %131, label %135, !dbg !2455

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2456
  %133 = load i8, i8* %132, align 1, !dbg !2456, !tbaa !1012
  %134 = icmp eq i8 %133, 0, !dbg !2457
  br i1 %134, label %617, label %137, !dbg !2458

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2459
  br i1 %136, label %617, label %137, !dbg !2458

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2343, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8 0, metadata !2344, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8 0, metadata !2345, metadata !DIExpression()), !dbg !2462
  br i1 %107, label %138, label %153, !dbg !2463

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2465
  %140 = and i1 %108, %130, !dbg !2466
  br i1 %140, label %141, label %143, !dbg !2466

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !2467
  call void @llvm.dbg.value(metadata i64 %142, metadata !2321, metadata !DIExpression()), !dbg !2385
  br label %143, !dbg !2468

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2321, metadata !DIExpression()), !dbg !2385
  %145 = icmp ugt i64 %139, %144, !dbg !2469
  br i1 %145, label %153, label %146, !dbg !2470

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2471
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !2472
  %149 = icmp ne i32 %148, 0, !dbg !2473
  %150 = or i1 %149, %110, !dbg !2474
  %151 = xor i1 %149, true, !dbg !2474
  %152 = zext i1 %151 to i8, !dbg !2474
  br i1 %150, label %153, label %661, !dbg !2474

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2475
  call void @llvm.dbg.value(metadata i8 %155, metadata !2343, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i64 %154, metadata !2321, metadata !DIExpression()), !dbg !2385
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2476
  %157 = load i8, i8* %156, align 1, !dbg !2476, !tbaa !1012
  call void @llvm.dbg.value(metadata i8 %157, metadata !2338, metadata !DIExpression()), !dbg !2477
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
  ], !dbg !2478

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2479

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2480

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !2344, metadata !DIExpression()), !dbg !2461
  %161 = and i8 %126, 1, !dbg !2484
  %162 = icmp eq i8 %161, 0, !dbg !2484
  %163 = and i1 %114, %162, !dbg !2484
  br i1 %163, label %164, label %180, !dbg !2484

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2486
  br i1 %165, label %166, label %168, !dbg !2490

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2486
  store i8 39, i8* %167, align 1, !dbg !2486, !tbaa !1012
  br label %168, !dbg !2486

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2490
  call void @llvm.dbg.value(metadata i64 %169, metadata !2328, metadata !DIExpression()), !dbg !2391
  %170 = icmp ult i64 %169, %129, !dbg !2491
  br i1 %170, label %171, label %173, !dbg !2494

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2491
  store i8 36, i8* %172, align 1, !dbg !2491, !tbaa !1012
  br label %173, !dbg !2491

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2494
  call void @llvm.dbg.value(metadata i64 %174, metadata !2328, metadata !DIExpression()), !dbg !2391
  %175 = icmp ult i64 %174, %129, !dbg !2495
  br i1 %175, label %176, label %178, !dbg !2498

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2495
  store i8 39, i8* %177, align 1, !dbg !2495, !tbaa !1012
  br label %178, !dbg !2495

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2498
  call void @llvm.dbg.value(metadata i64 %179, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 1, metadata !2335, metadata !DIExpression()), !dbg !2399
  br label %180, !dbg !2499

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2450
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2450
  call void @llvm.dbg.value(metadata i8 %182, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %181, metadata !2328, metadata !DIExpression()), !dbg !2391
  %183 = icmp ult i64 %181, %129, !dbg !2500
  br i1 %183, label %184, label %186, !dbg !2503

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2500
  store i8 92, i8* %185, align 1, !dbg !2500, !tbaa !1012
  br label %186, !dbg !2500

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %187, metadata !2328, metadata !DIExpression()), !dbg !2391
  br i1 %104, label %188, label %478, !dbg !2504

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2506
  %190 = icmp ult i64 %189, %154, !dbg !2507
  br i1 %190, label %191, label %467, !dbg !2508

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2509
  %193 = load i8, i8* %192, align 1, !dbg !2509, !tbaa !1012
  %194 = add i8 %193, -48, !dbg !2510
  %195 = icmp ult i8 %194, 10, !dbg !2510
  br i1 %195, label %196, label %467, !dbg !2510

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2511
  br i1 %197, label %198, label %200, !dbg !2515

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2511
  store i8 48, i8* %199, align 1, !dbg !2511, !tbaa !1012
  br label %200, !dbg !2511

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2515
  call void @llvm.dbg.value(metadata i64 %201, metadata !2328, metadata !DIExpression()), !dbg !2391
  %202 = icmp ult i64 %201, %129, !dbg !2516
  br i1 %202, label %203, label %205, !dbg !2519

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2516
  store i8 48, i8* %204, align 1, !dbg !2516, !tbaa !1012
  br label %205, !dbg !2516

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2519
  call void @llvm.dbg.value(metadata i64 %206, metadata !2328, metadata !DIExpression()), !dbg !2391
  br label %467, !dbg !2520

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2521

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2522

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2523

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2525

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2527
  %213 = icmp ult i64 %212, %154, !dbg !2528
  br i1 %213, label %214, label %467, !dbg !2529

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2530
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2531
  %217 = load i8, i8* %216, align 1, !dbg !2531, !tbaa !1012
  %218 = icmp eq i8 %217, 63, !dbg !2532
  br i1 %218, label %219, label %467, !dbg !2533

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2534
  %221 = load i8, i8* %220, align 1, !dbg !2534, !tbaa !1012
  %222 = sext i8 %221 to i32, !dbg !2534
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
  ], !dbg !2535

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2536

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !2338, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 %212, metadata !2327, metadata !DIExpression()), !dbg !2451
  %225 = icmp ult i64 %123, %129, !dbg !2538
  br i1 %225, label %226, label %228, !dbg !2541

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2538
  store i8 63, i8* %227, align 1, !dbg !2538, !tbaa !1012
  br label %228, !dbg !2538

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2541
  call void @llvm.dbg.value(metadata i64 %229, metadata !2328, metadata !DIExpression()), !dbg !2391
  %230 = icmp ult i64 %229, %129, !dbg !2542
  br i1 %230, label %231, label %233, !dbg !2545

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2542
  store i8 34, i8* %232, align 1, !dbg !2542, !tbaa !1012
  br label %233, !dbg !2542

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2545
  call void @llvm.dbg.value(metadata i64 %234, metadata !2328, metadata !DIExpression()), !dbg !2391
  %235 = icmp ult i64 %234, %129, !dbg !2546
  br i1 %235, label %236, label %238, !dbg !2549

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2546
  store i8 34, i8* %237, align 1, !dbg !2546, !tbaa !1012
  br label %238, !dbg !2546

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2549
  call void @llvm.dbg.value(metadata i64 %239, metadata !2328, metadata !DIExpression()), !dbg !2391
  %240 = icmp ult i64 %239, %129, !dbg !2550
  br i1 %240, label %241, label %243, !dbg !2553

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2550
  store i8 63, i8* %242, align 1, !dbg !2550, !tbaa !1012
  br label %243, !dbg !2550

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2553
  call void @llvm.dbg.value(metadata i64 %244, metadata !2328, metadata !DIExpression()), !dbg !2391
  br label %467, !dbg !2554

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2342, metadata !DIExpression()), !dbg !2555
  br label %255, !dbg !2556

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2342, metadata !DIExpression()), !dbg !2555
  br label %255, !dbg !2557

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2342, metadata !DIExpression()), !dbg !2555
  br label %253, !dbg !2558

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2342, metadata !DIExpression()), !dbg !2555
  br label %253, !dbg !2559

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2342, metadata !DIExpression()), !dbg !2555
  br label %255, !dbg !2560

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !2342, metadata !DIExpression()), !dbg !2555
  br i1 %114, label %251, label %252, !dbg !2561

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2562

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2565

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2567
  call void @llvm.dbg.value(metadata i8 %254, metadata !2342, metadata !DIExpression()), !dbg !2555
  br i1 %113, label %255, label %661, !dbg !2568

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2567
  call void @llvm.dbg.value(metadata i8 %256, metadata !2342, metadata !DIExpression()), !dbg !2555
  br i1 %103, label %524, label %478, !dbg !2570

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2571
  br i1 %258, label %259, label %264, !dbg !2573

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2574, !tbaa !1012
  %261 = icmp ne i8 %260, 0, !dbg !2575
  %262 = icmp ne i64 %122, 0, !dbg !2576
  %263 = or i1 %262, %261, !dbg !2578
  br i1 %263, label %467, label %270, !dbg !2578

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2579
  %266 = icmp ne i64 %122, 0, !dbg !2576
  %267 = or i1 %266, %265, !dbg !2573
  br i1 %267, label %467, label %270, !dbg !2573

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2576
  br i1 %269, label %270, label %467, !dbg !2580

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2345, metadata !DIExpression()), !dbg !2462
  br label %271, !dbg !2581

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2567
  call void @llvm.dbg.value(metadata i8 %272, metadata !2345, metadata !DIExpression()), !dbg !2462
  br i1 %113, label %467, label %661, !dbg !2582

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 1, metadata !2345, metadata !DIExpression()), !dbg !2462
  br i1 %114, label %274, label %467, !dbg !2584

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2585

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2588
  %277 = icmp ne i64 %124, 0, !dbg !2590
  %278 = or i1 %277, %276, !dbg !2591
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2591
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2591
  call void @llvm.dbg.value(metadata i64 %280, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %279, metadata !2329, metadata !DIExpression()), !dbg !2392
  %281 = icmp ult i64 %123, %280, !dbg !2592
  br i1 %281, label %282, label %284, !dbg !2595

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2592
  store i8 39, i8* %283, align 1, !dbg !2592, !tbaa !1012
  br label %284, !dbg !2592

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2595
  call void @llvm.dbg.value(metadata i64 %285, metadata !2328, metadata !DIExpression()), !dbg !2391
  %286 = icmp ult i64 %285, %280, !dbg !2596
  br i1 %286, label %287, label %289, !dbg !2599

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2596
  store i8 92, i8* %288, align 1, !dbg !2596, !tbaa !1012
  br label %289, !dbg !2596

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2599
  call void @llvm.dbg.value(metadata i64 %290, metadata !2328, metadata !DIExpression()), !dbg !2391
  %291 = icmp ult i64 %290, %280, !dbg !2600
  br i1 %291, label %292, label %294, !dbg !2603

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2600
  store i8 39, i8* %293, align 1, !dbg !2600, !tbaa !1012
  br label %294, !dbg !2600

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2603
  call void @llvm.dbg.value(metadata i64 %295, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2335, metadata !DIExpression()), !dbg !2399
  br label %467, !dbg !2604

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2605

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !2346, metadata !DIExpression()), !dbg !2606
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2607
  %299 = load i16*, i16** %298, align 8, !dbg !2607, !tbaa !720
  %300 = zext i8 %157 to i64, !dbg !2607
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2607
  %302 = load i16, i16* %301, align 2, !dbg !2607, !tbaa !2609
  %303 = lshr i16 %302, 14, !dbg !2611
  %304 = trunc i16 %303 to i8, !dbg !2611
  %305 = and i8 %304, 1, !dbg !2611
  call void @llvm.dbg.value(metadata i8 %305, metadata !2349, metadata !DIExpression()), !dbg !2612
  br label %359, !dbg !2613

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !2614
  store i64 0, i64* %10, align 8, !dbg !2615
  call void @llvm.dbg.value(metadata i64 0, metadata !2346, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 1, metadata !2349, metadata !DIExpression()), !dbg !2612
  %307 = icmp eq i64 %154, -1, !dbg !2616
  br i1 %307, label %308, label %310, !dbg !2618

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2619
  call void @llvm.dbg.value(metadata i64 %309, metadata !2321, metadata !DIExpression()), !dbg !2385
  br label %310, !dbg !2620

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2621
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  br label %312, !dbg !2622

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2623
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2624
  call void @llvm.dbg.value(metadata i8 %314, metadata !2349, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i64 %313, metadata !2346, metadata !DIExpression()), !dbg !2606
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2625
  %315 = add i64 %313, %122, !dbg !2626
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2627
  %317 = sub i64 %311, %315, !dbg !2628
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2350, metadata !DIExpression(DW_OP_deref)), !dbg !2629
  call void @llvm.dbg.value(metadata i32* %12, metadata !2368, metadata !DIExpression(DW_OP_deref)), !dbg !2630
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !2631
  call void @llvm.dbg.value(metadata i64 %318, metadata !2371, metadata !DIExpression()), !dbg !2632
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2633

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2346, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 %313, metadata !2346, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 %313, metadata !2346, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 %313, metadata !2346, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 %313, metadata !2346, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 %313, metadata !2346, metadata !DIExpression()), !dbg !2606
  %320 = icmp ugt i64 %311, %315, !dbg !2634
  br i1 %320, label %321, label %344, !dbg !2636

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !2346, metadata !DIExpression()), !dbg !2606
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2637
  %325 = load i8, i8* %324, align 1, !dbg !2637, !tbaa !1012
  %326 = icmp eq i8 %325, 0, !dbg !2636
  br i1 %326, label %344, label %327, !dbg !2638

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2639
  call void @llvm.dbg.value(metadata i64 %328, metadata !2346, metadata !DIExpression()), !dbg !2606
  %329 = add i64 %328, %122, !dbg !2640
  %330 = icmp ult i64 %329, %311, !dbg !2634
  br i1 %330, label %321, label %344, !dbg !2636, !llvm.loop !2641

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2642
  %333 = and i1 %116, %332, !dbg !2645
  call void @llvm.dbg.value(metadata i64 1, metadata !2372, metadata !DIExpression()), !dbg !2646
  br i1 %333, label %334, label %347, !dbg !2645

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !2372, metadata !DIExpression()), !dbg !2646
  %336 = add i64 %335, %315, !dbg !2647
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2648
  %338 = load i8, i8* %337, align 1, !dbg !2648, !tbaa !1012
  %339 = sext i8 %338 to i32, !dbg !2648
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2649

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2650
  call void @llvm.dbg.value(metadata i64 %341, metadata !2372, metadata !DIExpression()), !dbg !2646
  %342 = icmp ult i64 %341, %318, !dbg !2642
  br i1 %342, label %334, label %347, !dbg !2651, !llvm.loop !2652

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2346, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 %314, metadata !2349, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i64 %313, metadata !2346, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 %314, metadata !2349, metadata !DIExpression()), !dbg !2612
  br label %344, !dbg !2654

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !2349, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i64 %352, metadata !2346, metadata !DIExpression()), !dbg !2606
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2654
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2655, !tbaa !1119
  call void @llvm.dbg.value(metadata i32 %348, metadata !2368, metadata !DIExpression()), !dbg !2630
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !2657
  %350 = icmp eq i32 %349, 0, !dbg !2657
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2658
  call void @llvm.dbg.value(metadata i8 %351, metadata !2349, metadata !DIExpression()), !dbg !2612
  %352 = add i64 %318, %313, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %352, metadata !2346, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 %351, metadata !2349, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i64 %352, metadata !2346, metadata !DIExpression()), !dbg !2606
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2654
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2350, metadata !DIExpression(DW_OP_deref)), !dbg !2629
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2660
  %354 = icmp eq i32 %353, 0, !dbg !2661
  br i1 %354, label %312, label %355, !dbg !2662, !llvm.loop !2663

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !2665
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i32 2, metadata !2322, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 2, metadata !2322, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 2, metadata !2322, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 2, metadata !2322, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 2, metadata !2322, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 %100, metadata !2332, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 %100, metadata !2332, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 %100, metadata !2332, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 %100, metadata !2332, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 %100, metadata !2332, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i32 %94, metadata !2322, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 %94, metadata !2322, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 %94, metadata !2322, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 %94, metadata !2322, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 %94, metadata !2322, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 %100, metadata !2332, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 %100, metadata !2332, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 %100, metadata !2332, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 %100, metadata !2332, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 %100, metadata !2332, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %311, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8 %351, metadata !2349, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i64 %352, metadata !2346, metadata !DIExpression()), !dbg !2606
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2654
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !2665
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2666
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2667
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2667
  call void @llvm.dbg.value(metadata i8 %362, metadata !2349, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i64 %361, metadata !2346, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 %360, metadata !2321, metadata !DIExpression()), !dbg !2385
  %363 = and i8 %362, 1, !dbg !2668
  %364 = icmp ne i8 %363, 0, !dbg !2668
  call void @llvm.dbg.value(metadata i8 %363, metadata !2345, metadata !DIExpression()), !dbg !2462
  %365 = icmp ult i64 %361, 2, !dbg !2669
  %366 = or i1 %364, %115, !dbg !2670
  %367 = and i1 %365, %366, !dbg !2671
  br i1 %367, label %467, label %368, !dbg !2671

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2672
  call void @llvm.dbg.value(metadata i64 %369, metadata !2379, metadata !DIExpression()), !dbg !2673
  br label %370, !dbg !2674

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2675
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2679
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !2399
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2675
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2681
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2461
  call void @llvm.dbg.value(metadata i8 %376, metadata !2344, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8 %375, metadata !2343, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8 %374, metadata !2338, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 %373, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %372, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %371, metadata !2327, metadata !DIExpression()), !dbg !2451
  br i1 %366, label %423, label %377, !dbg !2685

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2686

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !2344, metadata !DIExpression()), !dbg !2461
  %379 = and i8 %373, 1, !dbg !2689
  %380 = icmp eq i8 %379, 0, !dbg !2689
  %381 = and i1 %114, %380, !dbg !2689
  br i1 %381, label %382, label %398, !dbg !2689

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2691
  br i1 %383, label %384, label %386, !dbg !2695

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2691
  store i8 39, i8* %385, align 1, !dbg !2691, !tbaa !1012
  br label %386, !dbg !2691

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2695
  call void @llvm.dbg.value(metadata i64 %387, metadata !2328, metadata !DIExpression()), !dbg !2391
  %388 = icmp ult i64 %387, %129, !dbg !2696
  br i1 %388, label %389, label %391, !dbg !2699

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2696
  store i8 36, i8* %390, align 1, !dbg !2696, !tbaa !1012
  br label %391, !dbg !2696

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2699
  call void @llvm.dbg.value(metadata i64 %392, metadata !2328, metadata !DIExpression()), !dbg !2391
  %393 = icmp ult i64 %392, %129, !dbg !2700
  br i1 %393, label %394, label %396, !dbg !2703

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2700
  store i8 39, i8* %395, align 1, !dbg !2700, !tbaa !1012
  br label %396, !dbg !2700

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2703
  call void @llvm.dbg.value(metadata i64 %397, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 1, metadata !2335, metadata !DIExpression()), !dbg !2399
  br label %398, !dbg !2704

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2450
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2450
  call void @llvm.dbg.value(metadata i8 %400, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %399, metadata !2328, metadata !DIExpression()), !dbg !2391
  %401 = icmp ult i64 %399, %129, !dbg !2705
  br i1 %401, label %402, label %404, !dbg !2708

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2705
  store i8 92, i8* %403, align 1, !dbg !2705, !tbaa !1012
  br label %404, !dbg !2705

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2708
  call void @llvm.dbg.value(metadata i64 %405, metadata !2328, metadata !DIExpression()), !dbg !2391
  %406 = icmp ult i64 %405, %129, !dbg !2709
  br i1 %406, label %407, label %411, !dbg !2712

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2709
  %409 = or i8 %408, 48, !dbg !2709
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2709
  store i8 %409, i8* %410, align 1, !dbg !2709, !tbaa !1012
  br label %411, !dbg !2709

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2712
  call void @llvm.dbg.value(metadata i64 %412, metadata !2328, metadata !DIExpression()), !dbg !2391
  %413 = icmp ult i64 %412, %129, !dbg !2713
  br i1 %413, label %414, label %419, !dbg !2716

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2713
  %416 = and i8 %415, 7, !dbg !2713
  %417 = or i8 %416, 48, !dbg !2713
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2713
  store i8 %417, i8* %418, align 1, !dbg !2713, !tbaa !1012
  br label %419, !dbg !2713

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2716
  call void @llvm.dbg.value(metadata i64 %420, metadata !2328, metadata !DIExpression()), !dbg !2391
  %421 = and i8 %374, 7, !dbg !2717
  %422 = or i8 %421, 48, !dbg !2718
  call void @llvm.dbg.value(metadata i8 %422, metadata !2338, metadata !DIExpression()), !dbg !2477
  br label %432, !dbg !2719

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2720
  %425 = icmp eq i8 %424, 0, !dbg !2720
  br i1 %425, label %432, label %426, !dbg !2721

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2722
  br i1 %427, label %428, label %430, !dbg !2725

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2722
  store i8 92, i8* %429, align 1, !dbg !2722, !tbaa !1012
  br label %430, !dbg !2722

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2725
  call void @llvm.dbg.value(metadata i64 %431, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2343, metadata !DIExpression()), !dbg !2460
  br label %432, !dbg !2726

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2727
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !2399
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2728
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2729
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2731
  call void @llvm.dbg.value(metadata i8 %437, metadata !2344, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8 %436, metadata !2343, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8 %435, metadata !2338, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 %434, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %433, metadata !2328, metadata !DIExpression()), !dbg !2391
  %438 = add i64 %371, 1, !dbg !2732
  %439 = icmp ugt i64 %369, %438, !dbg !2734
  br i1 %439, label %440, label %562, !dbg !2735

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2736
  %442 = icmp ne i8 %441, 0, !dbg !2736
  %443 = and i8 %437, 1, !dbg !2736
  %444 = icmp eq i8 %443, 0, !dbg !2736
  %445 = and i1 %442, %444, !dbg !2736
  br i1 %445, label %446, label %457, !dbg !2736

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2739
  br i1 %447, label %448, label %450, !dbg !2743

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2739
  store i8 39, i8* %449, align 1, !dbg !2739, !tbaa !1012
  br label %450, !dbg !2739

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %451, metadata !2328, metadata !DIExpression()), !dbg !2391
  %452 = icmp ult i64 %451, %129, !dbg !2744
  br i1 %452, label %453, label %455, !dbg !2747

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2744
  store i8 39, i8* %454, align 1, !dbg !2744, !tbaa !1012
  br label %455, !dbg !2744

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2747
  call void @llvm.dbg.value(metadata i64 %456, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2335, metadata !DIExpression()), !dbg !2399
  br label %457, !dbg !2748

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2749
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2450
  call void @llvm.dbg.value(metadata i8 %459, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %458, metadata !2328, metadata !DIExpression()), !dbg !2391
  %460 = icmp ult i64 %458, %129, !dbg !2750
  br i1 %460, label %461, label %463, !dbg !2752

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2750
  store i8 %435, i8* %462, align 1, !dbg !2750, !tbaa !1012
  br label %463, !dbg !2750

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2752
  call void @llvm.dbg.value(metadata i64 %464, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %438, metadata !2327, metadata !DIExpression()), !dbg !2451
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2753
  %466 = load i8, i8* %465, align 1, !dbg !2753, !tbaa !1012
  call void @llvm.dbg.value(metadata i8 %466, metadata !2338, metadata !DIExpression()), !dbg !2477
  br label %370, !dbg !2754, !llvm.loop !2755

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2758
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2450
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !2392
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2759
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2450
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2450
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2475
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2475
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2475
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %476, metadata !2345, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8 %475, metadata !2344, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8 %155, metadata !2343, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8 %474, metadata !2338, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 %473, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %472, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %471, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %470, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %469, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %468, metadata !2327, metadata !DIExpression()), !dbg !2451
  br i1 %105, label %489, label %478, !dbg !2760

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
  br i1 %112, label %490, label %512, !dbg !2762

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2763

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
  %501 = lshr i8 %494, 5, !dbg !2764
  %502 = zext i8 %501 to i64, !dbg !2764
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2765
  %504 = load i32, i32* %503, align 4, !dbg !2765, !tbaa !1119
  %505 = and i8 %494, 31, !dbg !2766
  %506 = zext i8 %505 to i32, !dbg !2766
  %507 = shl i32 1, %506, !dbg !2767
  %508 = and i32 %504, %507, !dbg !2767
  %509 = icmp eq i32 %508, 0, !dbg !2767
  %510 = icmp eq i8 %155, 0, !dbg !2768
  %511 = and i1 %510, %509, !dbg !2769
  br i1 %511, label %562, label %524, !dbg !2769

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
  %523 = icmp eq i8 %155, 0, !dbg !2768
  br i1 %523, label %562, label %524, !dbg !2770

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2771
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2450
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !2392
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2759
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !2399
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !2400
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2772
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2475
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %532, metadata !2345, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8 %531, metadata !2338, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 %530, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %529, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %528, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %527, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %526, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %525, metadata !2327, metadata !DIExpression()), !dbg !2451
  br i1 %110, label %534, label %661, !dbg !2775

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !2344, metadata !DIExpression()), !dbg !2461
  %535 = and i8 %529, 1, !dbg !2777
  %536 = icmp eq i8 %535, 0, !dbg !2777
  %537 = and i1 %114, %536, !dbg !2777
  br i1 %537, label %538, label %554, !dbg !2777

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2779
  br i1 %539, label %540, label %542, !dbg !2783

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2779
  store i8 39, i8* %541, align 1, !dbg !2779, !tbaa !1012
  br label %542, !dbg !2779

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2783
  call void @llvm.dbg.value(metadata i64 %543, metadata !2328, metadata !DIExpression()), !dbg !2391
  %544 = icmp ult i64 %543, %533, !dbg !2784
  br i1 %544, label %545, label %547, !dbg !2787

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2784
  store i8 36, i8* %546, align 1, !dbg !2784, !tbaa !1012
  br label %547, !dbg !2784

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2787
  call void @llvm.dbg.value(metadata i64 %548, metadata !2328, metadata !DIExpression()), !dbg !2391
  %549 = icmp ult i64 %548, %533, !dbg !2788
  br i1 %549, label %550, label %552, !dbg !2791

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2788
  store i8 39, i8* %551, align 1, !dbg !2788, !tbaa !1012
  br label %552, !dbg !2788

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2791
  call void @llvm.dbg.value(metadata i64 %553, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 1, metadata !2335, metadata !DIExpression()), !dbg !2399
  br label %554, !dbg !2792

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2749
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2450
  call void @llvm.dbg.value(metadata i8 %556, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %555, metadata !2328, metadata !DIExpression()), !dbg !2391
  %557 = icmp ult i64 %555, %533, !dbg !2793
  br i1 %557, label %558, label %560, !dbg !2796

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2793
  store i8 92, i8* %559, align 1, !dbg !2793, !tbaa !1012
  br label %560, !dbg !2793

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %561, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %572, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %571, metadata !2345, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8 %570, metadata !2344, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8 %569, metadata !2338, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 %568, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %567, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %566, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %565, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %564, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %563, metadata !2327, metadata !DIExpression()), !dbg !2451
  br label %589, !dbg !2797

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2771
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2450
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !2392
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2759
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !2399
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !2400
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2800
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2475
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2475
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %571, metadata !2345, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8 %570, metadata !2344, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8 %569, metadata !2338, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 %568, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %567, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %566, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %565, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %564, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %563, metadata !2327, metadata !DIExpression()), !dbg !2451
  %573 = and i8 %567, 1, !dbg !2797
  %574 = icmp ne i8 %573, 0, !dbg !2797
  %575 = and i8 %570, 1, !dbg !2797
  %576 = icmp eq i8 %575, 0, !dbg !2797
  %577 = and i1 %574, %576, !dbg !2797
  br i1 %577, label %578, label %589, !dbg !2797

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2801
  br i1 %579, label %580, label %582, !dbg !2805

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2801
  store i8 39, i8* %581, align 1, !dbg !2801, !tbaa !1012
  br label %582, !dbg !2801

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %583, metadata !2328, metadata !DIExpression()), !dbg !2391
  %584 = icmp ult i64 %583, %572, !dbg !2806
  br i1 %584, label %585, label %587, !dbg !2809

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2806
  store i8 39, i8* %586, align 1, !dbg !2806, !tbaa !1012
  br label %587, !dbg !2806

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2809
  call void @llvm.dbg.value(metadata i64 %588, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2335, metadata !DIExpression()), !dbg !2399
  br label %589, !dbg !2810

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2749
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2450
  call void @llvm.dbg.value(metadata i8 %598, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %597, metadata !2328, metadata !DIExpression()), !dbg !2391
  %599 = icmp ult i64 %597, %590, !dbg !2811
  br i1 %599, label %600, label %602, !dbg !2814

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2811
  store i8 %592, i8* %601, align 1, !dbg !2811, !tbaa !1012
  br label %602, !dbg !2811

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2814
  call void @llvm.dbg.value(metadata i64 %603, metadata !2328, metadata !DIExpression()), !dbg !2391
  %604 = and i8 %591, 1, !dbg !2815
  %605 = icmp eq i8 %604, 0, !dbg !2815
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2817
  call void @llvm.dbg.value(metadata i8 %606, metadata !2337, metadata !DIExpression()), !dbg !2401
  br label %607, !dbg !2818

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2771
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2450
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !2392
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2759
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !2399
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2450
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !2401
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %614, metadata !2337, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 %613, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %612, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %611, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %610, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %609, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %608, metadata !2327, metadata !DIExpression()), !dbg !2451
  %616 = add i64 %608, 1, !dbg !2819
  call void @llvm.dbg.value(metadata i64 %616, metadata !2327, metadata !DIExpression()), !dbg !2451
  br label %121, !dbg !2820, !llvm.loop !2821

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i8 %126, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 %126, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 %127, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %127, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %128, metadata !2337, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 %128, metadata !2337, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i8 %126, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 %126, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 %127, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %127, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %128, metadata !2337, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 %128, metadata !2337, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i8 %126, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 %126, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 %127, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %127, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %128, metadata !2337, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 %128, metadata !2337, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i8 %126, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 %126, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 %127, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %127, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %128, metadata !2337, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 %128, metadata !2337, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %618, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %618, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8 %126, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 %126, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 %127, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %127, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %128, metadata !2337, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 %128, metadata !2337, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %125, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %125, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8 %126, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 %126, metadata !2335, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 %127, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %127, metadata !2336, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %128, metadata !2337, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 %128, metadata !2337, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  %619 = icmp eq i64 %123, 0, !dbg !2823
  %620 = and i1 %114, %619, !dbg !2825
  %621 = xor i1 %620, true, !dbg !2825
  %622 = or i1 %110, %621, !dbg !2825
  br i1 %622, label %623, label %661, !dbg !2825

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2826
  %625 = xor i1 %624, true, !dbg !2826
  %626 = and i8 %127, 1, !dbg !2828
  %627 = icmp eq i8 %626, 0, !dbg !2828
  %628 = or i1 %627, %625, !dbg !2826
  br i1 %628, label %638, label %629, !dbg !2826

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2829
  %631 = icmp eq i8 %630, 0, !dbg !2829
  br i1 %631, label %634, label %632, !dbg !2832

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %618, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %618, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %618, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %618, metadata !2321, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8* %95, metadata !2325, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %96, metadata !2326, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %125, metadata !2321, metadata !DIExpression()), !dbg !2385
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2833
  br label %671, !dbg !2834

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2835
  %636 = icmp ne i64 %124, 0, !dbg !2837
  %637 = and i1 %636, %635, !dbg !2838
  br i1 %637, label %27, label %638, !dbg !2838

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i8* %98, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %98, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i8* %98, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %98, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i8* %98, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %98, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i8* %98, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %98, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i8* %98, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %98, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i8* %98, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2383
  %639 = icmp ne i8* %98, null, !dbg !2839
  %640 = and i1 %639, %110, !dbg !2841
  br i1 %640, label %641, label %656, !dbg !2841

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2391
  %642 = load i8, i8* %98, align 1, !dbg !2842, !tbaa !1012
  %643 = icmp eq i8 %642, 0, !dbg !2845
  br i1 %643, label %656, label %644, !dbg !2845

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 %647, metadata !2328, metadata !DIExpression()), !dbg !2391
  %648 = icmp ult i64 %647, %129, !dbg !2846
  br i1 %648, label %649, label %651, !dbg !2849

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2846
  store i8 %645, i8* %650, align 1, !dbg !2846, !tbaa !1012
  br label %651, !dbg !2846

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2849
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2850
  call void @llvm.dbg.value(metadata i8* %653, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 %652, metadata !2328, metadata !DIExpression()), !dbg !2391
  %654 = load i8, i8* %653, align 1, !dbg !2842, !tbaa !1012
  %655 = icmp eq i8 %654, 0, !dbg !2845
  br i1 %655, label %656, label %644, !dbg !2845, !llvm.loop !2851

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !2391
  call void @llvm.dbg.value(metadata i64 %657, metadata !2328, metadata !DIExpression()), !dbg !2391
  %658 = icmp ult i64 %657, %129, !dbg !2853
  br i1 %658, label %659, label %671, !dbg !2855

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2856
  store i8 0, i8* %660, align 1, !dbg !2857, !tbaa !1012
  br label %671, !dbg !2856

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !2319, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %663, metadata !2321, metadata !DIExpression()), !dbg !2385
  %665 = icmp ne i32 %662, 2, !dbg !2858
  %666 = icmp eq i8 %102, 0, !dbg !2860
  %667 = or i1 %665, %666, !dbg !2861
  call void @llvm.dbg.value(metadata i32 4, metadata !2322, metadata !DIExpression()), !dbg !2386
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2861
  call void @llvm.dbg.value(metadata i32 %668, metadata !2322, metadata !DIExpression()), !dbg !2386
  %669 = and i32 %5, -3, !dbg !2862
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2863
  br label %671, !dbg !2864

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2865
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2866 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2870, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i32 %1, metadata !2871, metadata !DIExpression()), !dbg !2875
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2876
  call void @llvm.dbg.value(metadata i8* %3, metadata !2872, metadata !DIExpression()), !dbg !2877
  %4 = icmp eq i8* %3, %0, !dbg !2878
  br i1 %4, label %5, label %71, !dbg !2880

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2881
  call void @llvm.dbg.value(metadata i8* %6, metadata !2873, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8* %6, metadata !2883, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i8* null, metadata !2889, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 85, metadata !2890, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i8 84, metadata !2891, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8 70, metadata !2892, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8 45, metadata !2893, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8 56, metadata !2894, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8 0, metadata !2895, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8 0, metadata !2896, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i8 0, metadata !2897, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8 0, metadata !2898, metadata !DIExpression()), !dbg !2911
  %7 = load i8, i8* %6, align 1, !dbg !2912, !tbaa !1012
  %8 = and i8 %7, -33, !dbg !2912
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2912

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2914, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i8* null, metadata !2919, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 84, metadata !2920, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8 70, metadata !2921, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8 45, metadata !2922, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 56, metadata !2923, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 0, metadata !2924, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8 0, metadata !2925, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8 0, metadata !2926, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8 0, metadata !2927, metadata !DIExpression()), !dbg !2940
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2941
  %11 = load i8, i8* %10, align 1, !dbg !2941, !tbaa !1012
  %12 = and i8 %11, -33, !dbg !2941
  %13 = icmp eq i8 %12, 84, !dbg !2941
  br i1 %13, label %14, label %68, !dbg !2941

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2943, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i8* null, metadata !2948, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 70, metadata !2949, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i8 45, metadata !2950, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i8 56, metadata !2951, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 0, metadata !2952, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i8 0, metadata !2953, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 0, metadata !2954, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 0, metadata !2955, metadata !DIExpression()), !dbg !2967
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2968
  %16 = load i8, i8* %15, align 1, !dbg !2968, !tbaa !1012
  %17 = and i8 %16, -33, !dbg !2968
  %18 = icmp eq i8 %17, 70, !dbg !2968
  br i1 %18, label %19, label %68, !dbg !2968

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2970, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8* null, metadata !2975, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 45, metadata !2976, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i8 56, metadata !2977, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i8 0, metadata !2978, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8 0, metadata !2979, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i8 0, metadata !2980, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i8 0, metadata !2981, metadata !DIExpression()), !dbg !2992
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2993
  %21 = load i8, i8* %20, align 1, !dbg !2993, !tbaa !1012
  %22 = icmp eq i8 %21, 45, !dbg !2993
  br i1 %22, label %23, label %68, !dbg !2995

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2996, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i8* null, metadata !3001, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i8 56, metadata !3002, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8 0, metadata !3003, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i8 0, metadata !3004, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i8 0, metadata !3005, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8 0, metadata !3006, metadata !DIExpression()), !dbg !3016
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3017
  %25 = load i8, i8* %24, align 1, !dbg !3017, !tbaa !1012
  %26 = icmp eq i8 %25, 56, !dbg !3017
  br i1 %26, label %27, label %68, !dbg !3019

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3020, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i8* null, metadata !3025, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 0, metadata !3026, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i8 0, metadata !3027, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i8 0, metadata !3028, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i8 0, metadata !3029, metadata !DIExpression()), !dbg !3038
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3039
  %29 = load i8, i8* %28, align 1, !dbg !3039, !tbaa !1012
  %30 = icmp eq i8 %29, 0, !dbg !3039
  br i1 %30, label %31, label %68, !dbg !3041

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3042, !tbaa !1012
  %33 = icmp eq i8 %32, 96, !dbg !3043
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.95, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.96, i64 0, i64 0), !dbg !3042
  br label %71, !dbg !3044

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2914, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8* null, metadata !2919, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i8 66, metadata !2920, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i8 49, metadata !2921, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8 56, metadata !2922, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i8 48, metadata !2923, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8 51, metadata !2924, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i8 48, metadata !2925, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8 0, metadata !2926, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i8 0, metadata !2927, metadata !DIExpression()), !dbg !3057
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3058
  %37 = load i8, i8* %36, align 1, !dbg !3058, !tbaa !1012
  %38 = and i8 %37, -33, !dbg !3058
  %39 = icmp eq i8 %38, 66, !dbg !3058
  br i1 %39, label %40, label %68, !dbg !3058

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2943, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8* null, metadata !2948, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i8 49, metadata !2949, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i8 56, metadata !2950, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i8 48, metadata !2951, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i8 51, metadata !2952, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i8 48, metadata !2953, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i8 0, metadata !2954, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i8 0, metadata !2955, metadata !DIExpression()), !dbg !3068
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3069
  %42 = load i8, i8* %41, align 1, !dbg !3069, !tbaa !1012
  %43 = icmp eq i8 %42, 49, !dbg !3069
  br i1 %43, label %44, label %68, !dbg !3070

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2970, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i8* null, metadata !2975, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 56, metadata !2976, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i8 48, metadata !2977, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i8 51, metadata !2978, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i8 48, metadata !2979, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8 0, metadata !2980, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8 0, metadata !2981, metadata !DIExpression()), !dbg !3079
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3080
  %46 = load i8, i8* %45, align 1, !dbg !3080, !tbaa !1012
  %47 = icmp eq i8 %46, 56, !dbg !3080
  br i1 %47, label %48, label %68, !dbg !3081

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2996, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i8* null, metadata !3001, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i8 48, metadata !3002, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i8 51, metadata !3003, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i8 48, metadata !3004, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 0, metadata !3005, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i8 0, metadata !3006, metadata !DIExpression()), !dbg !3089
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3090
  %50 = load i8, i8* %49, align 1, !dbg !3090, !tbaa !1012
  %51 = icmp eq i8 %50, 48, !dbg !3090
  br i1 %51, label %52, label %68, !dbg !3091

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3020, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8* null, metadata !3025, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i8 51, metadata !3026, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8 48, metadata !3027, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 0, metadata !3028, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i8 0, metadata !3029, metadata !DIExpression()), !dbg !3098
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3099
  %54 = load i8, i8* %53, align 1, !dbg !3099, !tbaa !1012
  %55 = icmp eq i8 %54, 51, !dbg !3099
  br i1 %55, label %56, label %68, !dbg !3100

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3101, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8* null, metadata !3106, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8 48, metadata !3107, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i8 0, metadata !3108, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i8 0, metadata !3109, metadata !DIExpression()), !dbg !3117
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3118
  %58 = load i8, i8* %57, align 1, !dbg !3118, !tbaa !1012
  %59 = icmp eq i8 %58, 48, !dbg !3118
  br i1 %59, label %60, label %68, !dbg !3120

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3121, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i8* null, metadata !3126, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 0, metadata !3127, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i8 0, metadata !3128, metadata !DIExpression()), !dbg !3135
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3136
  %62 = load i8, i8* %61, align 1, !dbg !3136, !tbaa !1012
  %63 = icmp eq i8 %62, 0, !dbg !3136
  br i1 %63, label %64, label %68, !dbg !3138

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3139, !tbaa !1012
  %66 = icmp eq i8 %65, 96, !dbg !3140
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.97, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.98, i64 0, i64 0), !dbg !3139
  br label %71, !dbg !3141

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3142
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), !dbg !3143
  br label %71, !dbg !3144

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3145
  ret i8* %72, !dbg !3146
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3147 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3151, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i64 %1, metadata !3152, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3153, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i8* %0, metadata !3157, metadata !DIExpression()) #10, !dbg !3170
  call void @llvm.dbg.value(metadata i64 %1, metadata !3162, metadata !DIExpression()) #10, !dbg !3172
  call void @llvm.dbg.value(metadata i64* null, metadata !3163, metadata !DIExpression()) #10, !dbg !3173
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3164, metadata !DIExpression()) #10, !dbg !3174
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3175
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3175
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3165, metadata !DIExpression()) #10, !dbg !3176
  %6 = tail call i32* @__errno_location() #17, !dbg !3177
  %7 = load i32, i32* %6, align 4, !dbg !3177, !tbaa !1119
  call void @llvm.dbg.value(metadata i32 %7, metadata !3166, metadata !DIExpression()) #10, !dbg !3178
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3179
  %9 = load i32, i32* %8, align 4, !dbg !3179, !tbaa !2251
  %10 = or i32 %9, 1, !dbg !3180
  call void @llvm.dbg.value(metadata i32 %10, metadata !3167, metadata !DIExpression()) #10, !dbg !3181
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3182
  %12 = load i32, i32* %11, align 8, !dbg !3182, !tbaa !2191
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3183
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3184
  %15 = load i8*, i8** %14, align 8, !dbg !3184, !tbaa !2277
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3185
  %17 = load i8*, i8** %16, align 8, !dbg !3185, !tbaa !2280
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !3186
  %19 = add i64 %18, 1, !dbg !3187
  call void @llvm.dbg.value(metadata i64 %19, metadata !3168, metadata !DIExpression()) #10, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %19, metadata !3189, metadata !DIExpression()) #10, !dbg !3193
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !3195
  call void @llvm.dbg.value(metadata i8* %20, metadata !3169, metadata !DIExpression()) #10, !dbg !3196
  %21 = load i32, i32* %11, align 8, !dbg !3197, !tbaa !2191
  %22 = load i8*, i8** %14, align 8, !dbg !3198, !tbaa !2277
  %23 = load i8*, i8** %16, align 8, !dbg !3199, !tbaa !2280
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !3200
  store i32 %7, i32* %6, align 4, !dbg !3201, !tbaa !1119
  ret i8* %20, !dbg !3202
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3158 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3157, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %1, metadata !3162, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i64* %2, metadata !3163, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3164, metadata !DIExpression()), !dbg !3206
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3207
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3207
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3165, metadata !DIExpression()), !dbg !3208
  %7 = tail call i32* @__errno_location() #17, !dbg !3209
  %8 = load i32, i32* %7, align 4, !dbg !3209, !tbaa !1119
  call void @llvm.dbg.value(metadata i32 %8, metadata !3166, metadata !DIExpression()), !dbg !3210
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3211
  %10 = load i32, i32* %9, align 4, !dbg !3211, !tbaa !2251
  %11 = icmp ne i64* %2, null, !dbg !3212
  %12 = xor i1 %11, true, !dbg !3212
  %13 = zext i1 %12 to i32, !dbg !3212
  %14 = or i32 %10, %13, !dbg !3213
  call void @llvm.dbg.value(metadata i32 %14, metadata !3167, metadata !DIExpression()), !dbg !3214
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3215
  %16 = load i32, i32* %15, align 8, !dbg !3215, !tbaa !2191
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3216
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3217
  %19 = load i8*, i8** %18, align 8, !dbg !3217, !tbaa !2277
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3218
  %21 = load i8*, i8** %20, align 8, !dbg !3218, !tbaa !2280
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3219
  %23 = add i64 %22, 1, !dbg !3220
  call void @llvm.dbg.value(metadata i64 %23, metadata !3168, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 %23, metadata !3189, metadata !DIExpression()) #10, !dbg !3222
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !3224
  call void @llvm.dbg.value(metadata i8* %24, metadata !3169, metadata !DIExpression()), !dbg !3225
  %25 = load i32, i32* %15, align 8, !dbg !3226, !tbaa !2191
  %26 = load i8*, i8** %18, align 8, !dbg !3227, !tbaa !2277
  %27 = load i8*, i8** %20, align 8, !dbg !3228, !tbaa !2280
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3229
  store i32 %8, i32* %7, align 4, !dbg !3230, !tbaa !1119
  br i1 %11, label %29, label %30, !dbg !3231

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3232, !tbaa !1321
  br label %30, !dbg !3234

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3235
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !3236 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3240, !tbaa !720
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3238, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i32 1, metadata !3239, metadata !DIExpression()), !dbg !3242
  %2 = load i32, i32* @nslots, align 4, !dbg !3243, !tbaa !1119
  %3 = icmp sgt i32 %2, 1, !dbg !3246
  br i1 %3, label %4, label %12, !dbg !3247

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3239, metadata !DIExpression()), !dbg !3242
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3248
  %7 = load i8*, i8** %6, align 8, !dbg !3248, !tbaa !3249
  tail call void @free(i8* %7) #10, !dbg !3251
  %8 = add nuw nsw i64 %5, 1, !dbg !3252
  call void @llvm.dbg.value(metadata i32 undef, metadata !3239, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3242
  %9 = load i32, i32* @nslots, align 4, !dbg !3243, !tbaa !1119
  %10 = sext i32 %9 to i64, !dbg !3246
  %11 = icmp slt i64 %8, %10, !dbg !3246
  br i1 %11, label %4, label %12, !dbg !3247, !llvm.loop !3253

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3255
  %14 = load i8*, i8** %13, align 8, !dbg !3255, !tbaa !3249
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3257
  br i1 %15, label %17, label %16, !dbg !3258

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !3259
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3261, !tbaa !3262
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3263, !tbaa !3249
  br label %17, !dbg !3264

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3265
  br i1 %18, label %21, label %19, !dbg !3267

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3268
  tail call void @free(i8* %20) #10, !dbg !3270
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3271, !tbaa !720
  br label %21, !dbg !3272

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3273, !tbaa !1119
  ret void, !dbg !3274
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !3275 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3279, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8* %1, metadata !3280, metadata !DIExpression()), !dbg !3282
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3283
  ret i8* %3, !dbg !3284
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !3285 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3289, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8* %1, metadata !3290, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i64 %2, metadata !3291, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3292, metadata !DIExpression()), !dbg !3307
  %5 = tail call i32* @__errno_location() #17, !dbg !3308
  %6 = load i32, i32* %5, align 4, !dbg !3308, !tbaa !1119
  call void @llvm.dbg.value(metadata i32 %6, metadata !3293, metadata !DIExpression()), !dbg !3309
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3310, !tbaa !720
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3294, metadata !DIExpression()), !dbg !3311
  %8 = icmp slt i32 %0, 0, !dbg !3312
  br i1 %8, label %9, label %10, !dbg !3314

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3315
  unreachable, !dbg !3315

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3316, !tbaa !1119
  %12 = icmp sgt i32 %11, %0, !dbg !3317
  br i1 %12, label %34, label %13, !dbg !3318

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3319
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3298, metadata !DIExpression()), !dbg !3320
  %15 = icmp eq i32 %0, 2147483647, !dbg !3321
  br i1 %15, label %16, label %17, !dbg !3323

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3324
  unreachable, !dbg !3324

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3325
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3325
  %20 = add nsw i32 %0, 1, !dbg !3326
  %21 = sext i32 %20 to i64, !dbg !3327
  %22 = shl nsw i64 %21, 4, !dbg !3328
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3329
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3329
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3294, metadata !DIExpression()), !dbg !3311
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3330, !tbaa !720
  br i1 %14, label %25, label %26, !dbg !3331

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3332, !tbaa.struct !3334
  br label %26, !dbg !3335

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3336, !tbaa !1119
  %28 = sext i32 %27 to i64, !dbg !3337
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3337
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3338
  %31 = sub nsw i32 %20, %27, !dbg !3339
  %32 = sext i32 %31 to i64, !dbg !3340
  %33 = shl nsw i64 %32, 4, !dbg !3341
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !3338
  store i32 %20, i32* @nslots, align 4, !dbg !3342, !tbaa !1119
  br label %34, !dbg !3343

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3344
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3294, metadata !DIExpression()), !dbg !3311
  %36 = sext i32 %0 to i64, !dbg !3345
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3346
  %38 = load i64, i64* %37, align 8, !dbg !3346, !tbaa !3262
  call void @llvm.dbg.value(metadata i64 %38, metadata !3299, metadata !DIExpression()), !dbg !3347
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3348
  %40 = load i8*, i8** %39, align 8, !dbg !3348, !tbaa !3249
  call void @llvm.dbg.value(metadata i8* %40, metadata !3301, metadata !DIExpression()), !dbg !3349
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3350
  %42 = load i32, i32* %41, align 4, !dbg !3350, !tbaa !2251
  %43 = or i32 %42, 1, !dbg !3351
  call void @llvm.dbg.value(metadata i32 %43, metadata !3302, metadata !DIExpression()), !dbg !3352
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3353
  %45 = load i32, i32* %44, align 8, !dbg !3353, !tbaa !2191
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3354
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3355
  %48 = load i8*, i8** %47, align 8, !dbg !3355, !tbaa !2277
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3356
  %50 = load i8*, i8** %49, align 8, !dbg !3356, !tbaa !2280
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3357
  call void @llvm.dbg.value(metadata i64 %51, metadata !3303, metadata !DIExpression()), !dbg !3358
  %52 = icmp ugt i64 %38, %51, !dbg !3359
  br i1 %52, label %63, label %53, !dbg !3361

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3362
  call void @llvm.dbg.value(metadata i64 %54, metadata !3299, metadata !DIExpression()), !dbg !3347
  store i64 %54, i64* %37, align 8, !dbg !3364, !tbaa !3262
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3365
  br i1 %55, label %57, label %56, !dbg !3367

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3368
  br label %57, !dbg !3368

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3189, metadata !DIExpression()) #10, !dbg !3369
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3371
  call void @llvm.dbg.value(metadata i8* %58, metadata !3301, metadata !DIExpression()), !dbg !3349
  store i8* %58, i8** %39, align 8, !dbg !3372, !tbaa !3249
  %59 = load i32, i32* %44, align 8, !dbg !3373, !tbaa !2191
  %60 = load i8*, i8** %47, align 8, !dbg !3374, !tbaa !2277
  %61 = load i8*, i8** %49, align 8, !dbg !3375, !tbaa !2280
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3376
  br label %63, !dbg !3377

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3378
  call void @llvm.dbg.value(metadata i8* %64, metadata !3301, metadata !DIExpression()), !dbg !3349
  store i32 %6, i32* %5, align 4, !dbg !3379, !tbaa !1119
  ret i8* %64, !dbg !3380
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3381 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3385, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i8* %1, metadata !3386, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i64 %2, metadata !3387, metadata !DIExpression()), !dbg !3390
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3391
  ret i8* %4, !dbg !3392
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !3393 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i32 0, metadata !3279, metadata !DIExpression()) #10, !dbg !3399
  call void @llvm.dbg.value(metadata i8* %0, metadata !3280, metadata !DIExpression()) #10, !dbg !3401
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3402
  ret i8* %2, !dbg !3403
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !3404 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3408, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 %1, metadata !3409, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i32 0, metadata !3385, metadata !DIExpression()) #10, !dbg !3412
  call void @llvm.dbg.value(metadata i8* %0, metadata !3386, metadata !DIExpression()) #10, !dbg !3414
  call void @llvm.dbg.value(metadata i64 %1, metadata !3387, metadata !DIExpression()) #10, !dbg !3415
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3416
  ret i8* %3, !dbg !3417
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !3418 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3422, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i32 %1, metadata !3423, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i8* %2, metadata !3424, metadata !DIExpression()), !dbg !3428
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3429
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3429
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3425, metadata !DIExpression(DW_OP_deref)), !dbg !3430
  call void @llvm.dbg.value(metadata i32 %1, metadata !3431, metadata !DIExpression()) #10, !dbg !3437
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !3439, !alias.scope !3440
  %6 = icmp eq i32 %1, 10, !dbg !3443
  br i1 %6, label %7, label %8, !dbg !3445

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3446, !noalias !3440
  unreachable, !dbg !3446

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3447
  store i32 %1, i32* %9, align 8, !dbg !3448, !tbaa !2191, !alias.scope !3440
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3425, metadata !DIExpression(DW_OP_deref)), !dbg !3430
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3436, metadata !DIExpression(DW_OP_deref)), !dbg !3439
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3449
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3450
  ret i8* %10, !dbg !3451
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3452 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3456, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i32 %1, metadata !3457, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i8* %2, metadata !3458, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i64 %3, metadata !3459, metadata !DIExpression()), !dbg !3464
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3465
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3465
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3460, metadata !DIExpression(DW_OP_deref)), !dbg !3466
  call void @llvm.dbg.value(metadata i32 %1, metadata !3431, metadata !DIExpression()) #10, !dbg !3467
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !3469, !alias.scope !3470
  %7 = icmp eq i32 %1, 10, !dbg !3473
  br i1 %7, label %8, label %9, !dbg !3474

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3475, !noalias !3470
  unreachable, !dbg !3475

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3476
  store i32 %1, i32* %10, align 8, !dbg !3477, !tbaa !2191, !alias.scope !3470
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3460, metadata !DIExpression(DW_OP_deref)), !dbg !3466
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3436, metadata !DIExpression(DW_OP_deref)), !dbg !3469
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3478
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3479
  ret i8* %11, !dbg !3480
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3481 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3485, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i8* %1, metadata !3486, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i32 0, metadata !3422, metadata !DIExpression()) #10, !dbg !3489
  call void @llvm.dbg.value(metadata i32 %0, metadata !3423, metadata !DIExpression()) #10, !dbg !3491
  call void @llvm.dbg.value(metadata i8* %1, metadata !3424, metadata !DIExpression()) #10, !dbg !3492
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3493
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3493
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3425, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3494
  call void @llvm.dbg.value(metadata i32 %0, metadata !3431, metadata !DIExpression()) #10, !dbg !3495
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !3497, !alias.scope !3498
  %5 = icmp eq i32 %0, 10, !dbg !3501
  br i1 %5, label %6, label %7, !dbg !3502

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3503, !noalias !3498
  unreachable, !dbg !3503

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3504
  store i32 %0, i32* %8, align 8, !dbg !3505, !tbaa !2191, !alias.scope !3498
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3425, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3494
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3436, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3497
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3506
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3507
  ret i8* %9, !dbg !3508
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3509 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3513, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i8* %1, metadata !3514, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i64 %2, metadata !3515, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i32 0, metadata !3456, metadata !DIExpression()) #10, !dbg !3519
  call void @llvm.dbg.value(metadata i32 %0, metadata !3457, metadata !DIExpression()) #10, !dbg !3521
  call void @llvm.dbg.value(metadata i8* %1, metadata !3458, metadata !DIExpression()) #10, !dbg !3522
  call void @llvm.dbg.value(metadata i64 %2, metadata !3459, metadata !DIExpression()) #10, !dbg !3523
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3524
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3524
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3460, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3525
  call void @llvm.dbg.value(metadata i32 %0, metadata !3431, metadata !DIExpression()) #10, !dbg !3526
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !3528, !alias.scope !3529
  %6 = icmp eq i32 %0, 10, !dbg !3532
  br i1 %6, label %7, label %8, !dbg !3533

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3534, !noalias !3529
  unreachable, !dbg !3534

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3535
  store i32 %0, i32* %9, align 8, !dbg !3536, !tbaa !2191, !alias.scope !3529
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3460, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3525
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3436, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3528
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !3537
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3538
  ret i8* %10, !dbg !3539
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3540 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3544, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i64 %1, metadata !3545, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i8 %2, metadata !3546, metadata !DIExpression()), !dbg !3550
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3551
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3551
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3552, !tbaa.struct !3553
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3547, metadata !DIExpression(DW_OP_deref)), !dbg !3554
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2210, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i8 %2, metadata !2211, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i32 1, metadata !2212, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i8 %2, metadata !2213, metadata !DIExpression()), !dbg !3559
  %6 = lshr i8 %2, 5, !dbg !3560
  %7 = zext i8 %6 to i64, !dbg !3560
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3561
  call void @llvm.dbg.value(metadata i32* %8, metadata !2215, metadata !DIExpression()), !dbg !3562
  %9 = and i8 %2, 31, !dbg !3563
  %10 = zext i8 %9 to i32, !dbg !3563
  call void @llvm.dbg.value(metadata i32 %10, metadata !2217, metadata !DIExpression()), !dbg !3564
  %11 = load i32, i32* %8, align 4, !dbg !3565, !tbaa !1119
  %12 = lshr i32 %11, %10, !dbg !3566
  %13 = and i32 %12, 1, !dbg !3567
  call void @llvm.dbg.value(metadata i32 %13, metadata !2218, metadata !DIExpression()), !dbg !3568
  %14 = xor i32 %13, 1, !dbg !3569
  %15 = shl i32 %14, %10, !dbg !3570
  %16 = xor i32 %15, %11, !dbg !3571
  store i32 %16, i32* %8, align 4, !dbg !3571, !tbaa !1119
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3547, metadata !DIExpression(DW_OP_deref)), !dbg !3554
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3572
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3573
  ret i8* %17, !dbg !3574
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3575 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3579, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i8 %1, metadata !3580, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i8* %0, metadata !3544, metadata !DIExpression()) #10, !dbg !3583
  call void @llvm.dbg.value(metadata i64 -1, metadata !3545, metadata !DIExpression()) #10, !dbg !3585
  call void @llvm.dbg.value(metadata i8 %1, metadata !3546, metadata !DIExpression()) #10, !dbg !3586
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3587
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3587
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3588, !tbaa.struct !3553
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3547, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3589
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2210, metadata !DIExpression()) #10, !dbg !3590
  call void @llvm.dbg.value(metadata i8 %1, metadata !2211, metadata !DIExpression()) #10, !dbg !3592
  call void @llvm.dbg.value(metadata i32 1, metadata !2212, metadata !DIExpression()) #10, !dbg !3593
  call void @llvm.dbg.value(metadata i8 %1, metadata !2213, metadata !DIExpression()) #10, !dbg !3594
  %5 = lshr i8 %1, 5, !dbg !3595
  %6 = zext i8 %5 to i64, !dbg !3595
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3596
  call void @llvm.dbg.value(metadata i32* %7, metadata !2215, metadata !DIExpression()) #10, !dbg !3597
  %8 = and i8 %1, 31, !dbg !3598
  %9 = zext i8 %8 to i32, !dbg !3598
  call void @llvm.dbg.value(metadata i32 %9, metadata !2217, metadata !DIExpression()) #10, !dbg !3599
  %10 = load i32, i32* %7, align 4, !dbg !3600, !tbaa !1119
  %11 = lshr i32 %10, %9, !dbg !3601
  %12 = and i32 %11, 1, !dbg !3602
  call void @llvm.dbg.value(metadata i32 %12, metadata !2218, metadata !DIExpression()) #10, !dbg !3603
  %13 = xor i32 %12, 1, !dbg !3604
  %14 = shl i32 %13, %9, !dbg !3605
  %15 = xor i32 %14, %10, !dbg !3606
  store i32 %15, i32* %7, align 4, !dbg !3606, !tbaa !1119
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3547, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3589
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3607
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3608
  ret i8* %16, !dbg !3609
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3610 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3612, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i8* %0, metadata !3579, metadata !DIExpression()) #10, !dbg !3614
  call void @llvm.dbg.value(metadata i8 58, metadata !3580, metadata !DIExpression()) #10, !dbg !3616
  call void @llvm.dbg.value(metadata i8* %0, metadata !3544, metadata !DIExpression()) #10, !dbg !3617
  call void @llvm.dbg.value(metadata i64 -1, metadata !3545, metadata !DIExpression()) #10, !dbg !3619
  call void @llvm.dbg.value(metadata i8 58, metadata !3546, metadata !DIExpression()) #10, !dbg !3620
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3621
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3621
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3622, !tbaa.struct !3553
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3547, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3623
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2210, metadata !DIExpression()) #10, !dbg !3624
  call void @llvm.dbg.value(metadata i8 58, metadata !2211, metadata !DIExpression()) #10, !dbg !3626
  call void @llvm.dbg.value(metadata i32 1, metadata !2212, metadata !DIExpression()) #10, !dbg !3627
  call void @llvm.dbg.value(metadata i8 58, metadata !2213, metadata !DIExpression()) #10, !dbg !3628
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3629
  call void @llvm.dbg.value(metadata i32* %4, metadata !2215, metadata !DIExpression()) #10, !dbg !3630
  call void @llvm.dbg.value(metadata i32 26, metadata !2217, metadata !DIExpression()) #10, !dbg !3631
  %5 = load i32, i32* %4, align 4, !dbg !3632, !tbaa !1119
  %6 = or i32 %5, 67108864, !dbg !3633
  store i32 %6, i32* %4, align 4, !dbg !3633, !tbaa !1119
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3547, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3623
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3634
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3635
  ret i8* %7, !dbg !3636
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3637 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3639, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i64 %1, metadata !3640, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata i8* %0, metadata !3544, metadata !DIExpression()) #10, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %1, metadata !3545, metadata !DIExpression()) #10, !dbg !3645
  call void @llvm.dbg.value(metadata i8 58, metadata !3546, metadata !DIExpression()) #10, !dbg !3646
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3647
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3647
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3648, !tbaa.struct !3553
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3547, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3649
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2210, metadata !DIExpression()) #10, !dbg !3650
  call void @llvm.dbg.value(metadata i8 58, metadata !2211, metadata !DIExpression()) #10, !dbg !3652
  call void @llvm.dbg.value(metadata i32 1, metadata !2212, metadata !DIExpression()) #10, !dbg !3653
  call void @llvm.dbg.value(metadata i8 58, metadata !2213, metadata !DIExpression()) #10, !dbg !3654
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3655
  call void @llvm.dbg.value(metadata i32* %5, metadata !2215, metadata !DIExpression()) #10, !dbg !3656
  call void @llvm.dbg.value(metadata i32 26, metadata !2217, metadata !DIExpression()) #10, !dbg !3657
  %6 = load i32, i32* %5, align 4, !dbg !3658, !tbaa !1119
  %7 = or i32 %6, 67108864, !dbg !3659
  store i32 %7, i32* %5, align 4, !dbg !3659, !tbaa !1119
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3547, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3649
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3660
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3661
  ret i8* %8, !dbg !3662
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3663 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3436, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3669
  call void @llvm.dbg.value(metadata i32 %0, metadata !3665, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i32 %1, metadata !3666, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i8* %2, metadata !3667, metadata !DIExpression()), !dbg !3673
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3674
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3674
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3675
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3675
  call void @llvm.dbg.value(metadata i32 %1, metadata !3431, metadata !DIExpression()) #10, !dbg !3676
  call void @llvm.dbg.value(metadata i32 0, metadata !3436, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3669
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3669, !alias.scope !3677
  %8 = icmp eq i32 %1, 10, !dbg !3680
  br i1 %8, label %9, label %10, !dbg !3681

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3682, !noalias !3677
  unreachable, !dbg !3682

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3436, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3669
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3675
  store i32 %1, i32* %11, align 8, !dbg !3675
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3675
  %13 = bitcast i32* %12 to i8*, !dbg !3675
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3675
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3675
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3668, metadata !DIExpression(DW_OP_deref)), !dbg !3683
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2210, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i8 58, metadata !2211, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 1, metadata !2212, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i8 58, metadata !2213, metadata !DIExpression()), !dbg !3688
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3689
  call void @llvm.dbg.value(metadata i32* %14, metadata !2215, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i32 26, metadata !2217, metadata !DIExpression()), !dbg !3691
  %15 = load i32, i32* %14, align 4, !dbg !3692, !tbaa !1119
  %16 = or i32 %15, 67108864, !dbg !3693
  store i32 %16, i32* %14, align 4, !dbg !3693, !tbaa !1119
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3668, metadata !DIExpression(DW_OP_deref)), !dbg !3683
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3694
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3695
  ret i8* %17, !dbg !3696
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3697 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3701, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i8* %1, metadata !3702, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i8* %2, metadata !3703, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i8* %3, metadata !3704, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i32 %0, metadata !3709, metadata !DIExpression()) #10, !dbg !3719
  call void @llvm.dbg.value(metadata i8* %1, metadata !3714, metadata !DIExpression()) #10, !dbg !3721
  call void @llvm.dbg.value(metadata i8* %2, metadata !3715, metadata !DIExpression()) #10, !dbg !3722
  call void @llvm.dbg.value(metadata i8* %3, metadata !3716, metadata !DIExpression()) #10, !dbg !3723
  call void @llvm.dbg.value(metadata i64 -1, metadata !3717, metadata !DIExpression()) #10, !dbg !3724
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3725
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3725
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3726, !tbaa.struct !3553
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3718, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3727
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2259, metadata !DIExpression()) #10, !dbg !3728
  call void @llvm.dbg.value(metadata i8* %1, metadata !2260, metadata !DIExpression()) #10, !dbg !3730
  call void @llvm.dbg.value(metadata i8* %2, metadata !2261, metadata !DIExpression()) #10, !dbg !3731
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2259, metadata !DIExpression()) #10, !dbg !3728
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3732
  store i32 10, i32* %7, align 8, !dbg !3733, !tbaa !2191
  %8 = icmp ne i8* %1, null, !dbg !3734
  %9 = icmp ne i8* %2, null, !dbg !3735
  %10 = and i1 %8, %9, !dbg !3736
  br i1 %10, label %12, label %11, !dbg !3736

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3737
  unreachable, !dbg !3737

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3738
  store i8* %1, i8** %13, align 8, !dbg !3739, !tbaa !2277
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3740
  store i8* %2, i8** %14, align 8, !dbg !3741, !tbaa !2280
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3718, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3727
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3742
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3743
  ret i8* %15, !dbg !3744
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3710 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3709, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i8* %1, metadata !3714, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i8* %2, metadata !3715, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i8* %3, metadata !3716, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i64 %4, metadata !3717, metadata !DIExpression()), !dbg !3749
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3750
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3750
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3751, !tbaa.struct !3553
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3718, metadata !DIExpression(DW_OP_deref)), !dbg !3752
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2259, metadata !DIExpression()) #10, !dbg !3753
  call void @llvm.dbg.value(metadata i8* %1, metadata !2260, metadata !DIExpression()) #10, !dbg !3755
  call void @llvm.dbg.value(metadata i8* %2, metadata !2261, metadata !DIExpression()) #10, !dbg !3756
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2259, metadata !DIExpression()) #10, !dbg !3753
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3757
  store i32 10, i32* %8, align 8, !dbg !3758, !tbaa !2191
  %9 = icmp ne i8* %1, null, !dbg !3759
  %10 = icmp ne i8* %2, null, !dbg !3760
  %11 = and i1 %9, %10, !dbg !3761
  br i1 %11, label %13, label %12, !dbg !3761

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3762
  unreachable, !dbg !3762

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3763
  store i8* %1, i8** %14, align 8, !dbg !3764, !tbaa !2277
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3765
  store i8* %2, i8** %15, align 8, !dbg !3766, !tbaa !2280
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3718, metadata !DIExpression(DW_OP_deref)), !dbg !3752
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3767
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3768
  ret i8* %16, !dbg !3769
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3770 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3774, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i8* %1, metadata !3775, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i8* %2, metadata !3776, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i32 0, metadata !3701, metadata !DIExpression()) #10, !dbg !3780
  call void @llvm.dbg.value(metadata i8* %0, metadata !3702, metadata !DIExpression()) #10, !dbg !3782
  call void @llvm.dbg.value(metadata i8* %1, metadata !3703, metadata !DIExpression()) #10, !dbg !3783
  call void @llvm.dbg.value(metadata i8* %2, metadata !3704, metadata !DIExpression()) #10, !dbg !3784
  call void @llvm.dbg.value(metadata i32 0, metadata !3709, metadata !DIExpression()) #10, !dbg !3785
  call void @llvm.dbg.value(metadata i8* %0, metadata !3714, metadata !DIExpression()) #10, !dbg !3787
  call void @llvm.dbg.value(metadata i8* %1, metadata !3715, metadata !DIExpression()) #10, !dbg !3788
  call void @llvm.dbg.value(metadata i8* %2, metadata !3716, metadata !DIExpression()) #10, !dbg !3789
  call void @llvm.dbg.value(metadata i64 -1, metadata !3717, metadata !DIExpression()) #10, !dbg !3790
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3791
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3791
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3792, !tbaa.struct !3553
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3718, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3793
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2259, metadata !DIExpression()) #10, !dbg !3794
  call void @llvm.dbg.value(metadata i8* %0, metadata !2260, metadata !DIExpression()) #10, !dbg !3796
  call void @llvm.dbg.value(metadata i8* %1, metadata !2261, metadata !DIExpression()) #10, !dbg !3797
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2259, metadata !DIExpression()) #10, !dbg !3794
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3798
  store i32 10, i32* %6, align 8, !dbg !3799, !tbaa !2191
  %7 = icmp ne i8* %0, null, !dbg !3800
  %8 = icmp ne i8* %1, null, !dbg !3801
  %9 = and i1 %7, %8, !dbg !3802
  br i1 %9, label %11, label %10, !dbg !3802

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3803
  unreachable, !dbg !3803

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3804
  store i8* %0, i8** %12, align 8, !dbg !3805, !tbaa !2277
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3806
  store i8* %1, i8** %13, align 8, !dbg !3807, !tbaa !2280
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3718, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3793
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3808
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3809
  ret i8* %14, !dbg !3810
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3811 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3815, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i8* %1, metadata !3816, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i8* %2, metadata !3817, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i64 %3, metadata !3818, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i32 0, metadata !3709, metadata !DIExpression()) #10, !dbg !3823
  call void @llvm.dbg.value(metadata i8* %0, metadata !3714, metadata !DIExpression()) #10, !dbg !3825
  call void @llvm.dbg.value(metadata i8* %1, metadata !3715, metadata !DIExpression()) #10, !dbg !3826
  call void @llvm.dbg.value(metadata i8* %2, metadata !3716, metadata !DIExpression()) #10, !dbg !3827
  call void @llvm.dbg.value(metadata i64 %3, metadata !3717, metadata !DIExpression()) #10, !dbg !3828
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3829
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3829
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3830, !tbaa.struct !3553
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3718, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3831
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2259, metadata !DIExpression()) #10, !dbg !3832
  call void @llvm.dbg.value(metadata i8* %0, metadata !2260, metadata !DIExpression()) #10, !dbg !3834
  call void @llvm.dbg.value(metadata i8* %1, metadata !2261, metadata !DIExpression()) #10, !dbg !3835
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2259, metadata !DIExpression()) #10, !dbg !3832
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3836
  store i32 10, i32* %7, align 8, !dbg !3837, !tbaa !2191
  %8 = icmp ne i8* %0, null, !dbg !3838
  %9 = icmp ne i8* %1, null, !dbg !3839
  %10 = and i1 %8, %9, !dbg !3840
  br i1 %10, label %12, label %11, !dbg !3840

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3841
  unreachable, !dbg !3841

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3842
  store i8* %0, i8** %13, align 8, !dbg !3843, !tbaa !2277
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3844
  store i8* %1, i8** %14, align 8, !dbg !3845, !tbaa !2280
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3718, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3831
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3846
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3847
  ret i8* %15, !dbg !3848
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3849 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3853, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i8* %1, metadata !3854, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i64 %2, metadata !3855, metadata !DIExpression()), !dbg !3858
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3859
  ret i8* %4, !dbg !3860
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3861 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3865, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64 %1, metadata !3866, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i32 0, metadata !3853, metadata !DIExpression()) #10, !dbg !3869
  call void @llvm.dbg.value(metadata i8* %0, metadata !3854, metadata !DIExpression()) #10, !dbg !3871
  call void @llvm.dbg.value(metadata i64 %1, metadata !3855, metadata !DIExpression()) #10, !dbg !3872
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3873
  ret i8* %3, !dbg !3874
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3875 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3879, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i8* %1, metadata !3880, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata i32 %0, metadata !3853, metadata !DIExpression()) #10, !dbg !3883
  call void @llvm.dbg.value(metadata i8* %1, metadata !3854, metadata !DIExpression()) #10, !dbg !3885
  call void @llvm.dbg.value(metadata i64 -1, metadata !3855, metadata !DIExpression()) #10, !dbg !3886
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3887
  ret i8* %3, !dbg !3888
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3889 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3893, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i32 0, metadata !3879, metadata !DIExpression()) #10, !dbg !3895
  call void @llvm.dbg.value(metadata i8* %0, metadata !3880, metadata !DIExpression()) #10, !dbg !3897
  call void @llvm.dbg.value(metadata i32 0, metadata !3853, metadata !DIExpression()) #10, !dbg !3898
  call void @llvm.dbg.value(metadata i8* %0, metadata !3854, metadata !DIExpression()) #10, !dbg !3900
  call void @llvm.dbg.value(metadata i64 -1, metadata !3855, metadata !DIExpression()) #10, !dbg !3901
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3902
  ret i8* %2, !dbg !3903
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #7 !dbg !3904 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3907, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata i8* %1, metadata !3908, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i64 %2, metadata !3909, metadata !DIExpression()), !dbg !3918
  br label %4, !dbg !3919

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3920

; <label>:6:                                      ; preds = %4, %9
  call void @llvm.dbg.value(metadata i64 %5, metadata !3909, metadata !DIExpression()), !dbg !3918
  %7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #10, !dbg !3920
  call void @llvm.dbg.value(metadata i64 %7, metadata !3910, metadata !DIExpression()), !dbg !3921
  %8 = icmp sgt i64 %7, -1, !dbg !3922
  br i1 %8, label %17, label %9, !dbg !3924

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #17, !dbg !3925
  %11 = load i32, i32* %10, align 4, !dbg !3925, !tbaa !1119
  %12 = icmp eq i32 %11, 4, !dbg !3925
  br i1 %12, label %6, label %13, !dbg !3927, !llvm.loop !3928

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !3931
  %15 = icmp ugt i64 %5, 2146435072, !dbg !3933
  %16 = and i1 %15, %14, !dbg !3934
  call void @llvm.dbg.value(metadata i64 %5, metadata !3909, metadata !DIExpression()), !dbg !3918
  br i1 %16, label %4, label %17

; <label>:17:                                     ; preds = %13, %6
  ret i64 %7, !dbg !3935
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3936 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3992, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i8* %1, metadata !3993, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i8* %2, metadata !3994, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i8* %3, metadata !3995, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i8** %4, metadata !3996, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i64 %5, metadata !3997, metadata !DIExpression()), !dbg !4003
  %7 = icmp eq i8* %1, null, !dbg !4004
  br i1 %7, label %10, label %8, !dbg !4006

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.109, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !4007
  br label %12, !dbg !4007

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.110, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !4008
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.111, i64 0, i64 0), i32 5) #10, !dbg !4009
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !4009
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.112, i64 0, i64 0), i32 5) #10, !dbg !4010
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !4010
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
  ], !dbg !4011

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !4012
  unreachable, !dbg !4012

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.113, i64 0, i64 0), i32 5) #10, !dbg !4014
  %20 = load i8*, i8** %4, align 8, !dbg !4014, !tbaa !720
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !4014
  br label %146, !dbg !4015

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.114, i64 0, i64 0), i32 5) #10, !dbg !4016
  %24 = load i8*, i8** %4, align 8, !dbg !4016, !tbaa !720
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4016
  %26 = load i8*, i8** %25, align 8, !dbg !4016, !tbaa !720
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !4016
  br label %146, !dbg !4017

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.115, i64 0, i64 0), i32 5) #10, !dbg !4018
  %30 = load i8*, i8** %4, align 8, !dbg !4018, !tbaa !720
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4018
  %32 = load i8*, i8** %31, align 8, !dbg !4018, !tbaa !720
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4018
  %34 = load i8*, i8** %33, align 8, !dbg !4018, !tbaa !720
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !4018
  br label %146, !dbg !4019

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.116, i64 0, i64 0), i32 5) #10, !dbg !4020
  %38 = load i8*, i8** %4, align 8, !dbg !4020, !tbaa !720
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4020
  %40 = load i8*, i8** %39, align 8, !dbg !4020, !tbaa !720
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4020
  %42 = load i8*, i8** %41, align 8, !dbg !4020, !tbaa !720
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4020
  %44 = load i8*, i8** %43, align 8, !dbg !4020, !tbaa !720
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !4020
  br label %146, !dbg !4021

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.117, i64 0, i64 0), i32 5) #10, !dbg !4022
  %48 = load i8*, i8** %4, align 8, !dbg !4022, !tbaa !720
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4022
  %50 = load i8*, i8** %49, align 8, !dbg !4022, !tbaa !720
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4022
  %52 = load i8*, i8** %51, align 8, !dbg !4022, !tbaa !720
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4022
  %54 = load i8*, i8** %53, align 8, !dbg !4022, !tbaa !720
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4022
  %56 = load i8*, i8** %55, align 8, !dbg !4022, !tbaa !720
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !4022
  br label %146, !dbg !4023

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.118, i64 0, i64 0), i32 5) #10, !dbg !4024
  %60 = load i8*, i8** %4, align 8, !dbg !4024, !tbaa !720
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4024
  %62 = load i8*, i8** %61, align 8, !dbg !4024, !tbaa !720
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4024
  %64 = load i8*, i8** %63, align 8, !dbg !4024, !tbaa !720
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4024
  %66 = load i8*, i8** %65, align 8, !dbg !4024, !tbaa !720
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4024
  %68 = load i8*, i8** %67, align 8, !dbg !4024, !tbaa !720
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4024
  %70 = load i8*, i8** %69, align 8, !dbg !4024, !tbaa !720
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !4024
  br label %146, !dbg !4025

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.119, i64 0, i64 0), i32 5) #10, !dbg !4026
  %74 = load i8*, i8** %4, align 8, !dbg !4026, !tbaa !720
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4026
  %76 = load i8*, i8** %75, align 8, !dbg !4026, !tbaa !720
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4026
  %78 = load i8*, i8** %77, align 8, !dbg !4026, !tbaa !720
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4026
  %80 = load i8*, i8** %79, align 8, !dbg !4026, !tbaa !720
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4026
  %82 = load i8*, i8** %81, align 8, !dbg !4026, !tbaa !720
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4026
  %84 = load i8*, i8** %83, align 8, !dbg !4026, !tbaa !720
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4026
  %86 = load i8*, i8** %85, align 8, !dbg !4026, !tbaa !720
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !4026
  br label %146, !dbg !4027

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.120, i64 0, i64 0), i32 5) #10, !dbg !4028
  %90 = load i8*, i8** %4, align 8, !dbg !4028, !tbaa !720
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4028
  %92 = load i8*, i8** %91, align 8, !dbg !4028, !tbaa !720
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4028
  %94 = load i8*, i8** %93, align 8, !dbg !4028, !tbaa !720
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4028
  %96 = load i8*, i8** %95, align 8, !dbg !4028, !tbaa !720
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4028
  %98 = load i8*, i8** %97, align 8, !dbg !4028, !tbaa !720
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4028
  %100 = load i8*, i8** %99, align 8, !dbg !4028, !tbaa !720
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4028
  %102 = load i8*, i8** %101, align 8, !dbg !4028, !tbaa !720
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4028
  %104 = load i8*, i8** %103, align 8, !dbg !4028, !tbaa !720
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !4028
  br label %146, !dbg !4029

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.121, i64 0, i64 0), i32 5) #10, !dbg !4030
  %108 = load i8*, i8** %4, align 8, !dbg !4030, !tbaa !720
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4030
  %110 = load i8*, i8** %109, align 8, !dbg !4030, !tbaa !720
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4030
  %112 = load i8*, i8** %111, align 8, !dbg !4030, !tbaa !720
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4030
  %114 = load i8*, i8** %113, align 8, !dbg !4030, !tbaa !720
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4030
  %116 = load i8*, i8** %115, align 8, !dbg !4030, !tbaa !720
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4030
  %118 = load i8*, i8** %117, align 8, !dbg !4030, !tbaa !720
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4030
  %120 = load i8*, i8** %119, align 8, !dbg !4030, !tbaa !720
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4030
  %122 = load i8*, i8** %121, align 8, !dbg !4030, !tbaa !720
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4030
  %124 = load i8*, i8** %123, align 8, !dbg !4030, !tbaa !720
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !4030
  br label %146, !dbg !4031

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.122, i64 0, i64 0), i32 5) #10, !dbg !4032
  %128 = load i8*, i8** %4, align 8, !dbg !4032, !tbaa !720
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4032
  %130 = load i8*, i8** %129, align 8, !dbg !4032, !tbaa !720
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4032
  %132 = load i8*, i8** %131, align 8, !dbg !4032, !tbaa !720
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4032
  %134 = load i8*, i8** %133, align 8, !dbg !4032, !tbaa !720
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4032
  %136 = load i8*, i8** %135, align 8, !dbg !4032, !tbaa !720
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4032
  %138 = load i8*, i8** %137, align 8, !dbg !4032, !tbaa !720
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4032
  %140 = load i8*, i8** %139, align 8, !dbg !4032, !tbaa !720
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4032
  %142 = load i8*, i8** %141, align 8, !dbg !4032, !tbaa !720
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4032
  %144 = load i8*, i8** %143, align 8, !dbg !4032, !tbaa !720
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !4032
  br label %146, !dbg !4033

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4034
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !4035 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4039, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i8* %1, metadata !4040, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i8* %2, metadata !4041, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata i8* %3, metadata !4042, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i8** %4, metadata !4043, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i64 0, metadata !4044, metadata !DIExpression()), !dbg !4050
  br label %6, !dbg !4051

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4053
  call void @llvm.dbg.value(metadata i64 %7, metadata !4044, metadata !DIExpression()), !dbg !4050
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4055
  %9 = load i8*, i8** %8, align 8, !dbg !4055, !tbaa !720
  %10 = icmp eq i8* %9, null, !dbg !4056
  %11 = add i64 %7, 1, !dbg !4057
  call void @llvm.dbg.value(metadata i64 %11, metadata !4044, metadata !DIExpression()), !dbg !4050
  br i1 %10, label %12, label %6, !dbg !4056, !llvm.loop !4058

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4044, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i64 %7, metadata !4044, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i64 %7, metadata !4044, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i64 %7, metadata !4044, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i64 %7, metadata !4044, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i64 %7, metadata !4044, metadata !DIExpression()), !dbg !4050
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4060
  ret void, !dbg !4061
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !4062 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4073, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i8* %1, metadata !4074, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i8* %2, metadata !4075, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i8* %3, metadata !4076, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4077, metadata !DIExpression()), !dbg !4085
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4086
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !4086
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4079, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 0, metadata !4078, metadata !DIExpression()), !dbg !4088
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !4078, metadata !DIExpression()), !dbg !4088
  %11 = load i32, i32* %8, align 8, !dbg !4089
  %12 = icmp ult i32 %11, 41, !dbg !4089
  br i1 %12, label %13, label %18, !dbg !4089

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4089
  %15 = sext i32 %11 to i64, !dbg !4089
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4089
  %17 = add i32 %11, 8, !dbg !4089
  store i32 %17, i32* %8, align 8, !dbg !4089
  br label %21, !dbg !4089

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4089
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4089
  store i8* %20, i8** %10, align 8, !dbg !4089
  br label %21, !dbg !4089

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4089
  %25 = load i8*, i8** %24, align 8, !dbg !4089
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4092
  store i8* %25, i8** %26, align 16, !dbg !4093, !tbaa !720
  %27 = icmp eq i8* %25, null, !dbg !4094
  br i1 %27, label %30, label %28, !dbg !4095

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4078, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 1, metadata !4078, metadata !DIExpression()), !dbg !4088
  %29 = icmp ult i32 %22, 41, !dbg !4089
  br i1 %29, label %35, label %32, !dbg !4089

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4096
  call void @llvm.dbg.value(metadata i64 %31, metadata !4078, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 %31, metadata !4078, metadata !DIExpression()), !dbg !4088
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4097
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !4098
  ret void, !dbg !4098

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4089
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4089
  store i8* %34, i8** %10, align 8, !dbg !4089
  br label %40, !dbg !4089

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4089
  %37 = sext i32 %22 to i64, !dbg !4089
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4089
  %39 = add i32 %22, 8, !dbg !4089
  store i32 %39, i32* %8, align 8, !dbg !4089
  br label %40, !dbg !4089

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4089
  %44 = load i8*, i8** %43, align 8, !dbg !4089
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4092
  store i8* %44, i8** %45, align 8, !dbg !4093, !tbaa !720
  %46 = icmp eq i8* %44, null, !dbg !4094
  br i1 %46, label %30, label %47, !dbg !4095

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4078, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 2, metadata !4078, metadata !DIExpression()), !dbg !4088
  %48 = icmp ult i32 %41, 41, !dbg !4089
  br i1 %48, label %52, label %49, !dbg !4089

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4089
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4089
  store i8* %51, i8** %10, align 8, !dbg !4089
  br label %57, !dbg !4089

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4089
  %54 = sext i32 %41 to i64, !dbg !4089
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4089
  %56 = add i32 %41, 8, !dbg !4089
  store i32 %56, i32* %8, align 8, !dbg !4089
  br label %57, !dbg !4089

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4089
  %61 = load i8*, i8** %60, align 8, !dbg !4089
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4092
  store i8* %61, i8** %62, align 16, !dbg !4093, !tbaa !720
  %63 = icmp eq i8* %61, null, !dbg !4094
  br i1 %63, label %30, label %64, !dbg !4095

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4078, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 3, metadata !4078, metadata !DIExpression()), !dbg !4088
  %65 = icmp ult i32 %58, 41, !dbg !4089
  br i1 %65, label %69, label %66, !dbg !4089

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4089
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4089
  store i8* %68, i8** %10, align 8, !dbg !4089
  br label %74, !dbg !4089

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4089
  %71 = sext i32 %58 to i64, !dbg !4089
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4089
  %73 = add i32 %58, 8, !dbg !4089
  store i32 %73, i32* %8, align 8, !dbg !4089
  br label %74, !dbg !4089

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4089
  %78 = load i8*, i8** %77, align 8, !dbg !4089
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4092
  store i8* %78, i8** %79, align 8, !dbg !4093, !tbaa !720
  %80 = icmp eq i8* %78, null, !dbg !4094
  br i1 %80, label %30, label %81, !dbg !4095

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4078, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 4, metadata !4078, metadata !DIExpression()), !dbg !4088
  %82 = icmp ult i32 %75, 41, !dbg !4089
  br i1 %82, label %86, label %83, !dbg !4089

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4089
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4089
  store i8* %85, i8** %10, align 8, !dbg !4089
  br label %91, !dbg !4089

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4089
  %88 = sext i32 %75 to i64, !dbg !4089
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4089
  %90 = add i32 %75, 8, !dbg !4089
  store i32 %90, i32* %8, align 8, !dbg !4089
  br label %91, !dbg !4089

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4089
  %95 = load i8*, i8** %94, align 8, !dbg !4089
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4092
  store i8* %95, i8** %96, align 16, !dbg !4093, !tbaa !720
  %97 = icmp eq i8* %95, null, !dbg !4094
  br i1 %97, label %30, label %98, !dbg !4095

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4078, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 5, metadata !4078, metadata !DIExpression()), !dbg !4088
  %99 = icmp ult i32 %92, 41, !dbg !4089
  br i1 %99, label %103, label %100, !dbg !4089

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4089
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4089
  store i8* %102, i8** %10, align 8, !dbg !4089
  br label %108, !dbg !4089

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4089
  %105 = sext i32 %92 to i64, !dbg !4089
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4089
  %107 = add i32 %92, 8, !dbg !4089
  store i32 %107, i32* %8, align 8, !dbg !4089
  br label %108, !dbg !4089

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4089
  %111 = load i8*, i8** %110, align 8, !dbg !4089
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4092
  store i8* %111, i8** %112, align 8, !dbg !4093, !tbaa !720
  %113 = icmp eq i8* %111, null, !dbg !4094
  br i1 %113, label %30, label %114, !dbg !4095

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4078, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 6, metadata !4078, metadata !DIExpression()), !dbg !4088
  %115 = load i8*, i8** %10, align 8, !dbg !4089
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4089
  store i8* %116, i8** %10, align 8, !dbg !4089
  %117 = bitcast i8* %115 to i8**, !dbg !4089
  %118 = load i8*, i8** %117, align 8, !dbg !4089
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4092
  store i8* %118, i8** %119, align 16, !dbg !4093, !tbaa !720
  %120 = icmp eq i8* %118, null, !dbg !4094
  br i1 %120, label %30, label %121, !dbg !4095

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4078, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 7, metadata !4078, metadata !DIExpression()), !dbg !4088
  %122 = load i8*, i8** %10, align 8, !dbg !4089
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4089
  store i8* %123, i8** %10, align 8, !dbg !4089
  %124 = bitcast i8* %122 to i8**, !dbg !4089
  %125 = load i8*, i8** %124, align 8, !dbg !4089
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4092
  store i8* %125, i8** %126, align 8, !dbg !4093, !tbaa !720
  %127 = icmp eq i8* %125, null, !dbg !4094
  br i1 %127, label %30, label %128, !dbg !4095

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4078, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 8, metadata !4078, metadata !DIExpression()), !dbg !4088
  %129 = load i8*, i8** %10, align 8, !dbg !4089
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4089
  store i8* %130, i8** %10, align 8, !dbg !4089
  %131 = bitcast i8* %129 to i8**, !dbg !4089
  %132 = load i8*, i8** %131, align 8, !dbg !4089
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4092
  store i8* %132, i8** %133, align 16, !dbg !4093, !tbaa !720
  %134 = icmp eq i8* %132, null, !dbg !4094
  br i1 %134, label %30, label %135, !dbg !4095

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4078, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 9, metadata !4078, metadata !DIExpression()), !dbg !4088
  %136 = load i8*, i8** %10, align 8, !dbg !4089
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4089
  store i8* %137, i8** %10, align 8, !dbg !4089
  %138 = bitcast i8* %136 to i8**, !dbg !4089
  %139 = load i8*, i8** %138, align 8, !dbg !4089
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4092
  store i8* %139, i8** %140, align 8, !dbg !4093, !tbaa !720
  %141 = icmp eq i8* %139, null, !dbg !4094
  %142 = select i1 %141, i64 9, i64 10, !dbg !4095
  br label %30, !dbg !4095
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !4099 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4103, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i8* %1, metadata !4104, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i8* %2, metadata !4105, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i8* %3, metadata !4106, metadata !DIExpression()), !dbg !4116
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4117
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !4117
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4107, metadata !DIExpression()), !dbg !4118
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4119
  call void @llvm.va_start(i8* nonnull %6), !dbg !4119
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4120
  call void @llvm.va_end(i8* nonnull %6), !dbg !4121
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !4122
  ret void, !dbg !4122
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !4123 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.125, i64 0, i64 0), i32 5) #10, !dbg !4124
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.126, i64 0, i64 0)) #10, !dbg !4124
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.127, i64 0, i64 0), i32 5) #10, !dbg !4125
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.128, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.129, i64 0, i64 0)) #10, !dbg !4125
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.130, i64 0, i64 0), i32 5) #10, !dbg !4126
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4126, !tbaa !720
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !4126
  ret void, !dbg !4127
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4128 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4130, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i64 %1, metadata !4131, metadata !DIExpression()), !dbg !4133
  %3 = udiv i64 9223372036854775807, %1, !dbg !4134
  %4 = icmp ult i64 %3, %0, !dbg !4134
  br i1 %4, label %5, label %6, !dbg !4136

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4137
  unreachable, !dbg !4137

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4138
  call void @llvm.dbg.value(metadata i64 %7, metadata !4139, metadata !DIExpression()) #10, !dbg !4146
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !4148
  call void @llvm.dbg.value(metadata i8* %8, metadata !4145, metadata !DIExpression()) #10, !dbg !4149
  %9 = icmp eq i8* %8, null, !dbg !4150
  %10 = icmp ne i64 %7, 0, !dbg !4152
  %11 = and i1 %10, %9, !dbg !4153
  br i1 %11, label %12, label %13, !dbg !4153

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4154
  unreachable, !dbg !4154

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4155
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !4140 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4139, metadata !DIExpression()), !dbg !4156
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4157
  call void @llvm.dbg.value(metadata i8* %2, metadata !4145, metadata !DIExpression()), !dbg !4158
  %3 = icmp eq i8* %2, null, !dbg !4159
  %4 = icmp ne i64 %0, 0, !dbg !4160
  %5 = and i1 %4, %3, !dbg !4161
  br i1 %5, label %6, label %7, !dbg !4161

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4162
  unreachable, !dbg !4162

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4163
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4164 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4166, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata i64 %1, metadata !4167, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata i64 %2, metadata !4168, metadata !DIExpression()), !dbg !4171
  %4 = udiv i64 9223372036854775807, %2, !dbg !4172
  %5 = icmp ult i64 %4, %1, !dbg !4172
  br i1 %5, label %6, label %7, !dbg !4174

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4175
  unreachable, !dbg !4175

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4176
  call void @llvm.dbg.value(metadata i8* %0, metadata !4177, metadata !DIExpression()) #10, !dbg !4183
  call void @llvm.dbg.value(metadata i64 %8, metadata !4182, metadata !DIExpression()) #10, !dbg !4185
  %9 = icmp eq i64 %8, 0, !dbg !4186
  %10 = icmp ne i8* %0, null, !dbg !4188
  %11 = and i1 %10, %9, !dbg !4189
  br i1 %11, label %12, label %13, !dbg !4189

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !4190
  br label %19, !dbg !4192

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4193
  call void @llvm.dbg.value(metadata i8* %14, metadata !4177, metadata !DIExpression()) #10, !dbg !4183
  %15 = icmp eq i8* %14, null, !dbg !4194
  %16 = icmp ne i64 %8, 0, !dbg !4196
  %17 = and i1 %16, %15, !dbg !4197
  br i1 %17, label %18, label %19, !dbg !4197

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4198
  unreachable, !dbg !4198

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4199
  ret i8* %20, !dbg !4200
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !4178 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4177, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 %1, metadata !4182, metadata !DIExpression()), !dbg !4202
  %3 = icmp eq i64 %1, 0, !dbg !4203
  %4 = icmp ne i8* %0, null, !dbg !4204
  %5 = and i1 %4, %3, !dbg !4205
  br i1 %5, label %6, label %7, !dbg !4205

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4206
  br label %13, !dbg !4207

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4208
  call void @llvm.dbg.value(metadata i8* %8, metadata !4177, metadata !DIExpression()), !dbg !4201
  %9 = icmp eq i8* %8, null, !dbg !4209
  %10 = icmp ne i64 %1, 0, !dbg !4210
  %11 = and i1 %10, %9, !dbg !4211
  br i1 %11, label %12, label %13, !dbg !4211

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4212
  unreachable, !dbg !4212

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4213
  ret i8* %14, !dbg !4214
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !250 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !255, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i64* %1, metadata !256, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata i64 %2, metadata !257, metadata !DIExpression()), !dbg !4217
  %4 = load i64, i64* %1, align 8, !dbg !4218, !tbaa !1321
  call void @llvm.dbg.value(metadata i64 %4, metadata !258, metadata !DIExpression()), !dbg !4219
  %5 = icmp eq i8* %0, null, !dbg !4220
  br i1 %5, label %6, label %20, !dbg !4222

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4223
  br i1 %7, label %8, label %13, !dbg !4226

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4227
  call void @llvm.dbg.value(metadata i64 %9, metadata !258, metadata !DIExpression()), !dbg !4219
  %10 = icmp ugt i64 %2, 128, !dbg !4229
  %11 = zext i1 %10 to i64, !dbg !4229
  %12 = add nuw nsw i64 %9, %11, !dbg !4230
  call void @llvm.dbg.value(metadata i64 %12, metadata !258, metadata !DIExpression()), !dbg !4219
  br label %13, !dbg !4231

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4232
  call void @llvm.dbg.value(metadata i64 %14, metadata !258, metadata !DIExpression()), !dbg !4219
  %15 = udiv i64 9223372036854775807, %2, !dbg !4233
  %16 = icmp ult i64 %15, %14, !dbg !4233
  br i1 %16, label %19, label %17, !dbg !4235

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !258, metadata !DIExpression()), !dbg !4219
  store i64 %14, i64* %1, align 8, !dbg !4236, !tbaa !1321
  %18 = mul i64 %14, %2, !dbg !4237
  call void @llvm.dbg.value(metadata i8* %0, metadata !4177, metadata !DIExpression()) #10, !dbg !4238
  call void @llvm.dbg.value(metadata i64 %28, metadata !4182, metadata !DIExpression()) #10, !dbg !4240
  br label %31, !dbg !4241

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4242
  unreachable, !dbg !4242

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4243
  %22 = icmp ugt i64 %21, %4, !dbg !4246
  br i1 %22, label %24, label %23, !dbg !4247

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !4248
  unreachable, !dbg !4248

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4249
  %26 = add i64 %4, 1, !dbg !4250
  %27 = add i64 %26, %25, !dbg !4251
  call void @llvm.dbg.value(metadata i64 %27, metadata !258, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i64 %27, metadata !258, metadata !DIExpression()), !dbg !4219
  store i64 %27, i64* %1, align 8, !dbg !4236, !tbaa !1321
  %28 = mul i64 %27, %2, !dbg !4237
  call void @llvm.dbg.value(metadata i8* %0, metadata !4177, metadata !DIExpression()) #10, !dbg !4238
  call void @llvm.dbg.value(metadata i64 %28, metadata !4182, metadata !DIExpression()) #10, !dbg !4240
  %29 = icmp eq i64 %28, 0, !dbg !4252
  br i1 %29, label %30, label %31, !dbg !4241

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !4253
  br label %38, !dbg !4254

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !4255
  call void @llvm.dbg.value(metadata i8* %33, metadata !4177, metadata !DIExpression()) #10, !dbg !4238
  %34 = icmp eq i8* %33, null, !dbg !4256
  %35 = icmp ne i64 %32, 0, !dbg !4257
  %36 = and i1 %35, %34, !dbg !4258
  br i1 %36, label %37, label %38, !dbg !4258

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !4259
  unreachable, !dbg !4259

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4260
  ret i8* %39, !dbg !4261
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4262 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4264, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i64 %0, metadata !4139, metadata !DIExpression()) #10, !dbg !4266
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4268
  call void @llvm.dbg.value(metadata i8* %2, metadata !4145, metadata !DIExpression()) #10, !dbg !4269
  %3 = icmp eq i8* %2, null, !dbg !4270
  %4 = icmp ne i64 %0, 0, !dbg !4271
  %5 = and i1 %4, %3, !dbg !4272
  br i1 %5, label %6, label %7, !dbg !4272

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4273
  unreachable, !dbg !4273

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4274
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !4275 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4279, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64* %1, metadata !4280, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i8* %0, metadata !255, metadata !DIExpression()) #10, !dbg !4283
  call void @llvm.dbg.value(metadata i64* %1, metadata !256, metadata !DIExpression()) #10, !dbg !4285
  call void @llvm.dbg.value(metadata i64 1, metadata !257, metadata !DIExpression()) #10, !dbg !4286
  %3 = load i64, i64* %1, align 8, !dbg !4287, !tbaa !1321
  call void @llvm.dbg.value(metadata i64 %3, metadata !258, metadata !DIExpression()) #10, !dbg !4288
  %4 = icmp eq i8* %0, null, !dbg !4289
  br i1 %4, label %5, label %12, !dbg !4290

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4291
  br i1 %6, label %9, label %7, !dbg !4292

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !258, metadata !DIExpression()) #10, !dbg !4288
  %8 = icmp slt i64 %3, 0, !dbg !4293
  br i1 %8, label %11, label %9, !dbg !4294

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !258, metadata !DIExpression()) #10, !dbg !4288
  store i64 %10, i64* %1, align 8, !dbg !4295, !tbaa !1321
  call void @llvm.dbg.value(metadata i8* %0, metadata !4177, metadata !DIExpression()) #10, !dbg !4296
  call void @llvm.dbg.value(metadata i64 %18, metadata !4182, metadata !DIExpression()) #10, !dbg !4298
  br label %21, !dbg !4299

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4300
  unreachable, !dbg !4300

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4301
  br i1 %13, label %15, label %14, !dbg !4302

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !4303
  unreachable, !dbg !4303

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4304
  %17 = add i64 %3, 1, !dbg !4305
  %18 = add i64 %17, %16, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %18, metadata !258, metadata !DIExpression()) #10, !dbg !4288
  call void @llvm.dbg.value(metadata i64 %18, metadata !258, metadata !DIExpression()) #10, !dbg !4288
  store i64 %18, i64* %1, align 8, !dbg !4295, !tbaa !1321
  call void @llvm.dbg.value(metadata i8* %0, metadata !4177, metadata !DIExpression()) #10, !dbg !4296
  call void @llvm.dbg.value(metadata i64 %18, metadata !4182, metadata !DIExpression()) #10, !dbg !4298
  %19 = icmp eq i64 %18, 0, !dbg !4307
  br i1 %19, label %20, label %21, !dbg !4299

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !4308
  br label %28, !dbg !4309

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !4310
  call void @llvm.dbg.value(metadata i8* %23, metadata !4177, metadata !DIExpression()) #10, !dbg !4296
  %24 = icmp eq i8* %23, null, !dbg !4311
  %25 = icmp ne i64 %22, 0, !dbg !4312
  %26 = and i1 %25, %24, !dbg !4313
  br i1 %26, label %27, label %28, !dbg !4313

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !4314
  unreachable, !dbg !4314

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4315
  ret i8* %29, !dbg !4316
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !4317 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4319, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i64 %0, metadata !4139, metadata !DIExpression()) #10, !dbg !4321
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4323
  call void @llvm.dbg.value(metadata i8* %2, metadata !4145, metadata !DIExpression()) #10, !dbg !4324
  %3 = icmp eq i8* %2, null, !dbg !4325
  %4 = icmp ne i64 %0, 0, !dbg !4326
  %5 = and i1 %4, %3, !dbg !4327
  br i1 %5, label %6, label %7, !dbg !4327

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4328
  unreachable, !dbg !4328

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !4329
  ret i8* %2, !dbg !4330
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !4331 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4333, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i64 %1, metadata !4334, metadata !DIExpression()), !dbg !4337
  %3 = udiv i64 9223372036854775807, %1, !dbg !4338
  %4 = icmp ult i64 %3, %0, !dbg !4338
  br i1 %4, label %8, label %5, !dbg !4340

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4341
  call void @llvm.dbg.value(metadata i8* %6, metadata !4335, metadata !DIExpression()), !dbg !4342
  %7 = icmp eq i8* %6, null, !dbg !4343
  br i1 %7, label %8, label %9, !dbg !4344

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4345
  unreachable, !dbg !4345

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4346
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4347 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4353, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %1, metadata !4354, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.value(metadata i64 %1, metadata !4139, metadata !DIExpression()) #10, !dbg !4357
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4359
  call void @llvm.dbg.value(metadata i8* %3, metadata !4145, metadata !DIExpression()) #10, !dbg !4360
  %4 = icmp eq i8* %3, null, !dbg !4361
  %5 = icmp ne i64 %1, 0, !dbg !4362
  %6 = and i1 %5, %4, !dbg !4363
  br i1 %6, label %7, label %8, !dbg !4363

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4364
  unreachable, !dbg !4364

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !4365
  ret i8* %3, !dbg !4366
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !4367 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4369, metadata !DIExpression()), !dbg !4370
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4371
  %3 = add i64 %2, 1, !dbg !4372
  call void @llvm.dbg.value(metadata i8* %0, metadata !4353, metadata !DIExpression()) #10, !dbg !4373
  call void @llvm.dbg.value(metadata i64 %3, metadata !4354, metadata !DIExpression()) #10, !dbg !4375
  call void @llvm.dbg.value(metadata i64 %3, metadata !4139, metadata !DIExpression()) #10, !dbg !4376
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4378
  call void @llvm.dbg.value(metadata i8* %4, metadata !4145, metadata !DIExpression()) #10, !dbg !4379
  %5 = icmp eq i8* %4, null, !dbg !4380
  %6 = icmp ne i64 %3, 0, !dbg !4381
  %7 = and i1 %6, %5, !dbg !4382
  br i1 %7, label %8, label %9, !dbg !4382

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4383
  unreachable, !dbg !4383

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !4384
  ret i8* %4, !dbg !4385
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4386 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4388, !tbaa !1119
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.141, i64 0, i64 0), i32 5) #10, !dbg !4389
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i64 0, i64 0), i8* %2) #10, !dbg !4390
  tail call void @abort() #15, !dbg !4391
  unreachable, !dbg !4391
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #7 !dbg !4392 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4397, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata i32 %1, metadata !4398, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64 %2, metadata !4399, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i64 %3, metadata !4400, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata i8* %4, metadata !4401, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata i8* %5, metadata !4402, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata i32 %6, metadata !4403, metadata !DIExpression()), !dbg !4413
  %9 = bitcast i64* %8 to i8*, !dbg !4414
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10, !dbg !4414
  call void @llvm.dbg.value(metadata i64* %8, metadata !4406, metadata !DIExpression(DW_OP_deref)), !dbg !4415
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #10, !dbg !4416
  call void @llvm.dbg.value(metadata i32 %10, metadata !4404, metadata !DIExpression()), !dbg !4417
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %23
    i32 3, label %25
  ], !dbg !4418

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #17, !dbg !4419
  br label %27, !dbg !4418

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !4422, !tbaa !1321
  call void @llvm.dbg.value(metadata i64 %14, metadata !4406, metadata !DIExpression()), !dbg !4415
  %15 = icmp ult i64 %14, %2, !dbg !4426
  %16 = icmp ugt i64 %14, %3, !dbg !4427
  %17 = or i1 %15, %16, !dbg !4428
  br i1 %17, label %18, label %36, !dbg !4428

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !4404, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.value(metadata i64 %14, metadata !4406, metadata !DIExpression()), !dbg !4415
  %19 = icmp ugt i64 %14, 1073741823, !dbg !4429
  %20 = tail call i32* @__errno_location() #17, !dbg !4432
  br i1 %19, label %21, label %22, !dbg !4433

; <label>:21:                                     ; preds = %18
  store i32 75, i32* %20, align 4, !dbg !4434, !tbaa !1119
  br label %27, !dbg !4435

; <label>:22:                                     ; preds = %18
  store i32 34, i32* %20, align 4, !dbg !4436, !tbaa !1119
  br label %27

; <label>:23:                                     ; preds = %7
  %24 = tail call i32* @__errno_location() #17, !dbg !4437
  store i32 75, i32* %24, align 4, !dbg !4439, !tbaa !1119
  br label %27, !dbg !4437

; <label>:25:                                     ; preds = %7
  %26 = tail call i32* @__errno_location() #17, !dbg !4440
  store i32 0, i32* %26, align 4, !dbg !4442, !tbaa !1119
  br label %27, !dbg !4440

; <label>:27:                                     ; preds = %11, %21, %22, %23, %25
  %28 = phi i32* [ %12, %11 ], [ %20, %21 ], [ %20, %22 ], [ %24, %23 ], [ %26, %25 ], !dbg !4419
  %29 = icmp eq i32 %6, 0, !dbg !4443
  %30 = select i1 %29, i32 1, i32 %6, !dbg !4443
  %31 = load i32, i32* %28, align 4, !dbg !4419, !tbaa !1119
  %32 = icmp eq i32 %31, 22, !dbg !4444
  %33 = select i1 %32, i32 0, i32 %31, !dbg !4419
  %34 = call i8* @quote(i8* %0) #10, !dbg !4445
  call void (i32, i32, i8*, ...) @error(i32 %30, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.143, i64 0, i64 0), i8* %5, i8* %34) #10, !dbg !4446
  %35 = load i64, i64* %8, align 8, !dbg !4447, !tbaa !1321
  br label %36, !dbg !4448

; <label>:36:                                     ; preds = %13, %27
  %37 = phi i64 [ %14, %13 ], [ %35, %27 ], !dbg !4447
  call void @llvm.dbg.value(metadata i64 %37, metadata !4406, metadata !DIExpression()), !dbg !4415
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10, !dbg !4449
  ret i64 %37, !dbg !4450
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #7 !dbg !4451 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4455, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 %1, metadata !4456, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 %2, metadata !4457, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.value(metadata i8* %3, metadata !4458, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.value(metadata i8* %4, metadata !4459, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i32 %5, metadata !4460, metadata !DIExpression()), !dbg !4466
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4467
  ret i64 %7, !dbg !4468
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #7 !dbg !4469 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4475, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i8** %1, metadata !4476, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i32 %2, metadata !4477, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.value(metadata i64* %3, metadata !4478, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata i8* %4, metadata !4479, metadata !DIExpression()), !dbg !4497
  %7 = bitcast i8** %6 to i8*, !dbg !4498
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !4498
  call void @llvm.dbg.value(metadata i32 0, metadata !4483, metadata !DIExpression()), !dbg !4499
  %8 = icmp ult i32 %2, 37, !dbg !4500
  br i1 %8, label %10, label %9, !dbg !4500

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.148, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.149, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15, !dbg !4500
  unreachable, !dbg !4500

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4503
  call void @llvm.dbg.value(metadata i8** %25, metadata !4481, metadata !DIExpression()), !dbg !4504
  %12 = tail call i32* @__errno_location() #17, !dbg !4505
  store i32 0, i32* %12, align 4, !dbg !4506, !tbaa !1119
  call void @llvm.dbg.value(metadata i8* %0, metadata !4484, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i8* %0, metadata !4487, metadata !DIExpression(DW_OP_deref)), !dbg !4508
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !4509
  %14 = load i16*, i16** %13, align 8, !tbaa !720
  br label %15, !dbg !4510

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !4511
  %17 = load i8, i8* %16, align 1, !dbg !4511, !tbaa !1012
  call void @llvm.dbg.value(metadata i8 %17, metadata !4487, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i8* %16, metadata !4484, metadata !DIExpression()), !dbg !4507
  %18 = zext i8 %17 to i64, !dbg !4509
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4509
  %20 = load i16, i16* %19, align 2, !dbg !4509, !tbaa !2609
  %21 = and i16 %20, 8192, !dbg !4509
  %22 = icmp eq i16 %21, 0, !dbg !4510
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4512
  call void @llvm.dbg.value(metadata i8* %23, metadata !4484, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i8* %23, metadata !4487, metadata !DIExpression(DW_OP_deref)), !dbg !4508
  br i1 %22, label %24, label %15, !dbg !4510, !llvm.loop !4513

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4503
  %26 = icmp eq i8 %17, 45, !dbg !4515
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !4517, metadata !DIExpression()) #10, !dbg !4527
  call void @llvm.dbg.value(metadata i8** %25, metadata !4525, metadata !DIExpression()) #10, !dbg !4527
  call void @llvm.dbg.value(metadata i32 %2, metadata !4526, metadata !DIExpression()) #10, !dbg !4527
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #10, !dbg !4529
  call void @llvm.dbg.value(metadata i64 %28, metadata !4482, metadata !DIExpression()), !dbg !4530
  %29 = load i8*, i8** %25, align 8, !dbg !4531, !tbaa !720
  %30 = icmp eq i8* %29, %0, !dbg !4533
  br i1 %30, label %31, label %40, !dbg !4534

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4535
  br i1 %32, label %265, label %33, !dbg !4538

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4539, !tbaa !1012
  %35 = icmp eq i8 %34, 0, !dbg !4539
  br i1 %35, label %265, label %36, !dbg !4540

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4539
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !4541
  %39 = icmp eq i8* %38, null, !dbg !4541
  br i1 %39, label %265, label %47, !dbg !4542

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4543, !tbaa !1119
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4545

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !4483, metadata !DIExpression()), !dbg !4499
  br label %43, !dbg !4546

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !4548
  call void @llvm.dbg.value(metadata i32 %44, metadata !4483, metadata !DIExpression()), !dbg !4499
  %45 = icmp eq i8* %4, null, !dbg !4549
  br i1 %45, label %46, label %47, !dbg !4551

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !4482, metadata !DIExpression()), !dbg !4530
  store i64 %28, i64* %3, align 8, !dbg !4552, !tbaa !1321
  br label %265, !dbg !4554

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4555, !tbaa !1012
  %51 = sext i8 %50 to i32, !dbg !4555
  %52 = icmp eq i8 %50, 0, !dbg !4556
  br i1 %52, label %262, label %53, !dbg !4557

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !4488, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4559
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #14, !dbg !4560
  %55 = icmp eq i8* %54, null, !dbg !4560
  br i1 %55, label %56, label %58, !dbg !4562

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !4482, metadata !DIExpression()), !dbg !4530
  store i64 %49, i64* %3, align 8, !dbg !4563, !tbaa !1321
  %57 = or i32 %48, 2, !dbg !4565
  br label %265, !dbg !4566

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
  ], !dbg !4567

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !4568
  %61 = icmp eq i8* %60, null, !dbg !4568
  br i1 %61, label %72, label %62, !dbg !4571

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4572
  %64 = load i8, i8* %63, align 1, !dbg !4572, !tbaa !1012
  %65 = sext i8 %64 to i32, !dbg !4572
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4573

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4574
  %68 = load i8, i8* %67, align 1, !dbg !4574, !tbaa !1012
  %69 = icmp eq i8 %68, 66, !dbg !4577
  %70 = select i1 %69, i64 3, i64 1, !dbg !4578
  br label %72, !dbg !4578

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !4488, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4559
  br label %72, !dbg !4579

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
  ], !dbg !4580

; <label>:75:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !4581, metadata !DIExpression()), !dbg !4587
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4590
  %77 = shl i64 %49, 9, !dbg !4592
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4593
  %79 = zext i1 %76 to i32, !dbg !4593
  call void @llvm.dbg.value(metadata i32 %79, metadata !4492, metadata !DIExpression()), !dbg !4594
  br label %253, !dbg !4595

; <label>:80:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !4581, metadata !DIExpression()), !dbg !4596
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4598
  %82 = shl i64 %49, 10, !dbg !4599
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4600
  %84 = zext i1 %81 to i32, !dbg !4600
  call void @llvm.dbg.value(metadata i32 %84, metadata !4492, metadata !DIExpression()), !dbg !4594
  br label %253, !dbg !4601

; <label>:85:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 6, metadata !4602, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()), !dbg !4612
  %86 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.value(metadata i32 6, metadata !4602, metadata !DIExpression()), !dbg !4610
  %87 = icmp ult i64 %86, %49, !dbg !4613
  %88 = mul i64 %49, %73, !dbg !4615
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4616
  call void @llvm.dbg.value(metadata i32 5, metadata !4602, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata i32 5, metadata !4602, metadata !DIExpression()), !dbg !4610
  %90 = icmp ult i64 %86, %89, !dbg !4613
  %91 = mul i64 %89, %73, !dbg !4615
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4616
  %93 = or i1 %87, %90, !dbg !4617
  call void @llvm.dbg.value(metadata i32 4, metadata !4602, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata i32 4, metadata !4602, metadata !DIExpression()), !dbg !4610
  %94 = icmp ult i64 %86, %92, !dbg !4613
  %95 = mul i64 %92, %73, !dbg !4615
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4616
  %97 = or i1 %93, %94, !dbg !4617
  call void @llvm.dbg.value(metadata i32 3, metadata !4602, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata i32 3, metadata !4602, metadata !DIExpression()), !dbg !4610
  %98 = icmp ult i64 %86, %96, !dbg !4613
  %99 = mul i64 %96, %73, !dbg !4615
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4616
  %101 = or i1 %97, %98, !dbg !4617
  call void @llvm.dbg.value(metadata i32 2, metadata !4602, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata i32 2, metadata !4602, metadata !DIExpression()), !dbg !4610
  %102 = icmp ult i64 %86, %100, !dbg !4613
  %103 = mul i64 %100, %73, !dbg !4615
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4616
  %105 = or i1 %101, %102, !dbg !4617
  call void @llvm.dbg.value(metadata i32 1, metadata !4602, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata i32 1, metadata !4602, metadata !DIExpression()), !dbg !4610
  %106 = icmp ult i64 %86, %104, !dbg !4613
  %107 = mul i64 %104, %73, !dbg !4615
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4616
  %109 = or i1 %105, %106, !dbg !4617
  %110 = zext i1 %109 to i32, !dbg !4617
  call void @llvm.dbg.value(metadata i32 %110, metadata !4609, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.value(metadata i32 0, metadata !4602, metadata !DIExpression()), !dbg !4610
  br label %253, !dbg !4618

; <label>:111:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 3, metadata !4602, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()), !dbg !4621
  %112 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i32 3, metadata !4602, metadata !DIExpression()), !dbg !4619
  %113 = icmp ult i64 %112, %49, !dbg !4622
  %114 = mul i64 %49, %73, !dbg !4624
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4625
  call void @llvm.dbg.value(metadata i32 2, metadata !4602, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.value(metadata i32 2, metadata !4602, metadata !DIExpression()), !dbg !4619
  %116 = icmp ult i64 %112, %115, !dbg !4622
  %117 = mul i64 %115, %73, !dbg !4624
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4625
  %119 = or i1 %113, %116, !dbg !4626
  call void @llvm.dbg.value(metadata i32 1, metadata !4602, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.value(metadata i32 1, metadata !4602, metadata !DIExpression()), !dbg !4619
  %120 = icmp ult i64 %112, %118, !dbg !4622
  %121 = mul i64 %118, %73, !dbg !4624
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4625
  %123 = or i1 %119, %120, !dbg !4626
  %124 = zext i1 %123 to i32, !dbg !4626
  call void @llvm.dbg.value(metadata i32 %124, metadata !4609, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i32 0, metadata !4602, metadata !DIExpression()), !dbg !4619
  br label %253, !dbg !4618

; <label>:125:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 1, metadata !4602, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()), !dbg !4629
  %126 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i32 undef, metadata !4602, metadata !DIExpression()), !dbg !4627
  %127 = icmp ult i64 %126, %49, !dbg !4630
  %128 = mul i64 %49, %73, !dbg !4632
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4633
  %130 = zext i1 %127 to i32, !dbg !4633
  call void @llvm.dbg.value(metadata i32 %130, metadata !4609, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i32 undef, metadata !4602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4627
  br label %253, !dbg !4618

; <label>:131:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4602, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()), !dbg !4636
  %132 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()), !dbg !4636
  call void @llvm.dbg.value(metadata i32 2, metadata !4602, metadata !DIExpression()), !dbg !4634
  %133 = icmp ult i64 %132, %49, !dbg !4637
  %134 = mul i64 %49, %73, !dbg !4639
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4640
  call void @llvm.dbg.value(metadata i32 1, metadata !4602, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata i32 1, metadata !4602, metadata !DIExpression()), !dbg !4634
  %136 = icmp ult i64 %132, %135, !dbg !4637
  %137 = mul i64 %135, %73, !dbg !4639
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4640
  %139 = or i1 %133, %136, !dbg !4641
  %140 = zext i1 %139 to i32, !dbg !4641
  call void @llvm.dbg.value(metadata i32 %140, metadata !4609, metadata !DIExpression()), !dbg !4636
  call void @llvm.dbg.value(metadata i32 0, metadata !4602, metadata !DIExpression()), !dbg !4634
  br label %253, !dbg !4618

; <label>:141:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 5, metadata !4602, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()), !dbg !4644
  %142 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i32 5, metadata !4602, metadata !DIExpression()), !dbg !4642
  %143 = icmp ult i64 %142, %49, !dbg !4645
  %144 = mul i64 %49, %73, !dbg !4647
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4648
  call void @llvm.dbg.value(metadata i32 4, metadata !4602, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i32 4, metadata !4602, metadata !DIExpression()), !dbg !4642
  %146 = icmp ult i64 %142, %145, !dbg !4645
  %147 = mul i64 %145, %73, !dbg !4647
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4648
  %149 = or i1 %143, %146, !dbg !4649
  call void @llvm.dbg.value(metadata i32 3, metadata !4602, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i32 3, metadata !4602, metadata !DIExpression()), !dbg !4642
  %150 = icmp ult i64 %142, %148, !dbg !4645
  %151 = mul i64 %148, %73, !dbg !4647
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4648
  %153 = or i1 %149, %150, !dbg !4649
  call void @llvm.dbg.value(metadata i32 2, metadata !4602, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i32 2, metadata !4602, metadata !DIExpression()), !dbg !4642
  %154 = icmp ult i64 %142, %152, !dbg !4645
  %155 = mul i64 %152, %73, !dbg !4647
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4648
  %157 = or i1 %153, %154, !dbg !4649
  call void @llvm.dbg.value(metadata i32 1, metadata !4602, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i32 1, metadata !4602, metadata !DIExpression()), !dbg !4642
  %158 = icmp ult i64 %142, %156, !dbg !4645
  %159 = mul i64 %156, %73, !dbg !4647
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4648
  %161 = or i1 %157, %158, !dbg !4649
  %162 = zext i1 %161 to i32, !dbg !4649
  call void @llvm.dbg.value(metadata i32 %162, metadata !4609, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i32 0, metadata !4602, metadata !DIExpression()), !dbg !4642
  br label %253, !dbg !4618

; <label>:163:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 4, metadata !4602, metadata !DIExpression()), !dbg !4650
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()), !dbg !4652
  %164 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.value(metadata i32 4, metadata !4602, metadata !DIExpression()), !dbg !4650
  %165 = icmp ult i64 %164, %49, !dbg !4653
  %166 = mul i64 %49, %73, !dbg !4655
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4656
  call void @llvm.dbg.value(metadata i32 3, metadata !4602, metadata !DIExpression()), !dbg !4650
  call void @llvm.dbg.value(metadata i32 3, metadata !4602, metadata !DIExpression()), !dbg !4650
  %168 = icmp ult i64 %164, %167, !dbg !4653
  %169 = mul i64 %167, %73, !dbg !4655
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4656
  %171 = or i1 %165, %168, !dbg !4657
  call void @llvm.dbg.value(metadata i32 2, metadata !4602, metadata !DIExpression()), !dbg !4650
  call void @llvm.dbg.value(metadata i32 2, metadata !4602, metadata !DIExpression()), !dbg !4650
  %172 = icmp ult i64 %164, %170, !dbg !4653
  %173 = mul i64 %170, %73, !dbg !4655
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4656
  %175 = or i1 %171, %172, !dbg !4657
  call void @llvm.dbg.value(metadata i32 1, metadata !4602, metadata !DIExpression()), !dbg !4650
  call void @llvm.dbg.value(metadata i32 1, metadata !4602, metadata !DIExpression()), !dbg !4650
  %176 = icmp ult i64 %164, %174, !dbg !4653
  %177 = mul i64 %174, %73, !dbg !4655
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4656
  %179 = or i1 %175, %176, !dbg !4657
  %180 = zext i1 %179 to i32, !dbg !4657
  call void @llvm.dbg.value(metadata i32 %180, metadata !4609, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.value(metadata i32 0, metadata !4602, metadata !DIExpression()), !dbg !4650
  br label %253, !dbg !4618

; <label>:181:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4581, metadata !DIExpression()), !dbg !4658
  %182 = icmp slt i64 %49, 0, !dbg !4660
  %183 = shl i64 %49, 1, !dbg !4661
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4662
  %185 = lshr i64 %49, 63, !dbg !4662
  %186 = trunc i64 %185 to i32, !dbg !4662
  call void @llvm.dbg.value(metadata i32 %186, metadata !4492, metadata !DIExpression()), !dbg !4594
  br label %253, !dbg !4663

; <label>:187:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 8, metadata !4602, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()), !dbg !4666
  %188 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i32 8, metadata !4602, metadata !DIExpression()), !dbg !4664
  %189 = icmp ult i64 %188, %49, !dbg !4667
  %190 = mul i64 %49, %73, !dbg !4669
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4670
  call void @llvm.dbg.value(metadata i32 7, metadata !4602, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.value(metadata i32 7, metadata !4602, metadata !DIExpression()), !dbg !4664
  %192 = icmp ult i64 %188, %191, !dbg !4667
  %193 = mul i64 %191, %73, !dbg !4669
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4670
  %195 = or i1 %189, %192, !dbg !4671
  call void @llvm.dbg.value(metadata i32 6, metadata !4602, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.value(metadata i32 6, metadata !4602, metadata !DIExpression()), !dbg !4664
  %196 = icmp ult i64 %188, %194, !dbg !4667
  %197 = mul i64 %194, %73, !dbg !4669
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4670
  %199 = or i1 %195, %196, !dbg !4671
  call void @llvm.dbg.value(metadata i32 5, metadata !4602, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.value(metadata i32 5, metadata !4602, metadata !DIExpression()), !dbg !4664
  %200 = icmp ult i64 %188, %198, !dbg !4667
  %201 = mul i64 %198, %73, !dbg !4669
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4670
  %203 = or i1 %199, %200, !dbg !4671
  call void @llvm.dbg.value(metadata i32 4, metadata !4602, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.value(metadata i32 4, metadata !4602, metadata !DIExpression()), !dbg !4664
  %204 = icmp ult i64 %188, %202, !dbg !4667
  %205 = mul i64 %202, %73, !dbg !4669
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4670
  %207 = or i1 %203, %204, !dbg !4671
  call void @llvm.dbg.value(metadata i32 3, metadata !4602, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.value(metadata i32 3, metadata !4602, metadata !DIExpression()), !dbg !4664
  %208 = icmp ult i64 %188, %206, !dbg !4667
  %209 = mul i64 %206, %73, !dbg !4669
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4670
  %211 = or i1 %207, %208, !dbg !4671
  call void @llvm.dbg.value(metadata i32 2, metadata !4602, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.value(metadata i32 2, metadata !4602, metadata !DIExpression()), !dbg !4664
  %212 = icmp ult i64 %188, %210, !dbg !4667
  %213 = mul i64 %210, %73, !dbg !4669
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4670
  %215 = or i1 %211, %212, !dbg !4671
  call void @llvm.dbg.value(metadata i32 1, metadata !4602, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.value(metadata i32 1, metadata !4602, metadata !DIExpression()), !dbg !4664
  %216 = icmp ult i64 %188, %214, !dbg !4667
  %217 = mul i64 %214, %73, !dbg !4669
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4670
  %219 = or i1 %215, %216, !dbg !4671
  %220 = zext i1 %219 to i32, !dbg !4671
  call void @llvm.dbg.value(metadata i32 %220, metadata !4609, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i32 0, metadata !4602, metadata !DIExpression()), !dbg !4664
  br label %253, !dbg !4618

; <label>:221:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !4602, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()), !dbg !4674
  %222 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i32 7, metadata !4602, metadata !DIExpression()), !dbg !4672
  %223 = icmp ult i64 %222, %49, !dbg !4675
  %224 = mul i64 %49, %73, !dbg !4677
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4678
  call void @llvm.dbg.value(metadata i32 6, metadata !4602, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i32 6, metadata !4602, metadata !DIExpression()), !dbg !4672
  %226 = icmp ult i64 %222, %225, !dbg !4675
  %227 = mul i64 %225, %73, !dbg !4677
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4678
  %229 = or i1 %223, %226, !dbg !4679
  call void @llvm.dbg.value(metadata i32 5, metadata !4602, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i32 5, metadata !4602, metadata !DIExpression()), !dbg !4672
  %230 = icmp ult i64 %222, %228, !dbg !4675
  %231 = mul i64 %228, %73, !dbg !4677
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4678
  %233 = or i1 %229, %230, !dbg !4679
  call void @llvm.dbg.value(metadata i32 4, metadata !4602, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i32 4, metadata !4602, metadata !DIExpression()), !dbg !4672
  %234 = icmp ult i64 %222, %232, !dbg !4675
  %235 = mul i64 %232, %73, !dbg !4677
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4678
  %237 = or i1 %233, %234, !dbg !4679
  call void @llvm.dbg.value(metadata i32 3, metadata !4602, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i32 3, metadata !4602, metadata !DIExpression()), !dbg !4672
  %238 = icmp ult i64 %222, %236, !dbg !4675
  %239 = mul i64 %236, %73, !dbg !4677
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4678
  %241 = or i1 %237, %238, !dbg !4679
  call void @llvm.dbg.value(metadata i32 2, metadata !4602, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i32 2, metadata !4602, metadata !DIExpression()), !dbg !4672
  %242 = icmp ult i64 %222, %240, !dbg !4675
  %243 = mul i64 %240, %73, !dbg !4677
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4678
  %245 = or i1 %241, %242, !dbg !4679
  call void @llvm.dbg.value(metadata i32 1, metadata !4602, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i32 1, metadata !4602, metadata !DIExpression()), !dbg !4672
  %246 = icmp ult i64 %222, %244, !dbg !4675
  %247 = mul i64 %244, %73, !dbg !4677
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4678
  %249 = or i1 %245, %246, !dbg !4679
  %250 = zext i1 %249 to i32, !dbg !4679
  call void @llvm.dbg.value(metadata i32 %250, metadata !4609, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i32 0, metadata !4602, metadata !DIExpression()), !dbg !4672
  br label %253, !dbg !4618

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !4482, metadata !DIExpression()), !dbg !4530
  store i64 %49, i64* %3, align 8, !dbg !4680, !tbaa !1321
  %252 = or i32 %48, 2, !dbg !4681
  br label %265, !dbg !4682

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ], !dbg !4683
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ], !dbg !4684
  call void @llvm.dbg.value(metadata i32 %255, metadata !4492, metadata !DIExpression()), !dbg !4594
  %256 = or i32 %255, %48, !dbg !4618
  call void @llvm.dbg.value(metadata i32 %256, metadata !4483, metadata !DIExpression()), !dbg !4499
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4685
  store i8* %257, i8** %25, align 8, !dbg !4685, !tbaa !720
  %258 = load i8, i8* %257, align 1, !dbg !4686, !tbaa !1012
  %259 = icmp eq i8 %258, 0, !dbg !4686
  %260 = or i32 %256, 2, !dbg !4688
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4689
  call void @llvm.dbg.value(metadata i32 %261, metadata !4483, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i32 %261, metadata !4483, metadata !DIExpression()), !dbg !4499
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ], !dbg !4690
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ], !dbg !4499
  call void @llvm.dbg.value(metadata i32 %264, metadata !4483, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i64 %263, metadata !4482, metadata !DIExpression()), !dbg !4530
  store i64 %263, i64* %3, align 8, !dbg !4691, !tbaa !1321
  br label %265, !dbg !4692

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ], !dbg !4693
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !4694
  ret i32 %266, !dbg !4694
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4695 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4698, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.value(metadata i64 %1, metadata !4699, metadata !DIExpression()), !dbg !4705
  %3 = icmp eq i64 %0, 0, !dbg !4706
  %4 = icmp eq i64 %1, 0, !dbg !4707
  %5 = or i1 %3, %4, !dbg !4708
  br i1 %5, label %12, label %6, !dbg !4708

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4709
  call void @llvm.dbg.value(metadata i64 %7, metadata !4701, metadata !DIExpression()), !dbg !4710
  %8 = udiv i64 %7, %1, !dbg !4711
  %9 = icmp eq i64 %8, %0, !dbg !4713
  br i1 %9, label %12, label %10, !dbg !4714

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4715
  store i32 12, i32* %11, align 4, !dbg !4717, !tbaa !1119
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4698, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.value(metadata i64 %13, metadata !4699, metadata !DIExpression()), !dbg !4705
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4718
  call void @llvm.dbg.value(metadata i8* %15, metadata !4700, metadata !DIExpression()), !dbg !4719
  br label %16, !dbg !4720

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4721
  ret i8* %17, !dbg !4722
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4723 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4740, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i8* %1, metadata !4741, metadata !DIExpression()), !dbg !4750
  call void @llvm.dbg.value(metadata i64 %2, metadata !4742, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4743, metadata !DIExpression()), !dbg !4752
  %6 = bitcast i32* %5 to i8*, !dbg !4753
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4753
  %7 = icmp eq i32* %0, null, !dbg !4754
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4756
  call void @llvm.dbg.value(metadata i32* %8, metadata !4740, metadata !DIExpression()), !dbg !4749
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4757
  call void @llvm.dbg.value(metadata i64 %9, metadata !4744, metadata !DIExpression()), !dbg !4758
  %10 = icmp ugt i64 %9, -3, !dbg !4759
  %11 = icmp ne i64 %2, 0, !dbg !4760
  %12 = and i1 %11, %10, !dbg !4761
  br i1 %12, label %13, label %18, !dbg !4761

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4762
  br i1 %14, label %18, label %15, !dbg !4763

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4764, !tbaa !1012
  call void @llvm.dbg.value(metadata i8 %16, metadata !4746, metadata !DIExpression()), !dbg !4765
  %17 = zext i8 %16 to i32, !dbg !4766
  store i32 %17, i32* %8, align 4, !dbg !4767, !tbaa !1119
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4768
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4769
  ret i64 %19, !dbg !4769
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4770 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4809, metadata !DIExpression()), !dbg !4813
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4814
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4815, metadata !DIExpression()), !dbg !4819
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4821
  %4 = load i32, i32* %3, align 8, !dbg !4821, !tbaa !4822
  %5 = and i32 %4, 32, !dbg !4821
  %6 = icmp eq i32 %5, 0, !dbg !4824
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4825
  %8 = icmp ne i32 %7, 0, !dbg !4826
  br i1 %6, label %9, label %19, !dbg !4827

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4829
  %11 = xor i1 %8, true, !dbg !4830
  %12 = or i1 %10, %11, !dbg !4830
  %13 = sext i1 %8 to i32, !dbg !4830
  br i1 %12, label %22, label %14, !dbg !4830

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4831
  %16 = load i32, i32* %15, align 4, !dbg !4831, !tbaa !1119
  %17 = icmp ne i32 %16, 9, !dbg !4832
  %18 = sext i1 %17 to i32, !dbg !4833
  br label %22, !dbg !4833

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4834

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4836
  store i32 0, i32* %21, align 4, !dbg !4838, !tbaa !1119
  br label %22, !dbg !4836

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4839
  ret i32 %23, !dbg !4840
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4841 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4846, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata i8 1, metadata !4847, metadata !DIExpression()), !dbg !4850
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4851
  call void @llvm.dbg.value(metadata i8* %2, metadata !4848, metadata !DIExpression()), !dbg !4852
  %3 = icmp eq i8* %2, null, !dbg !4853
  br i1 %3, label %11, label %4, !dbg !4855

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.158, i64 0, i64 0)) #14, !dbg !4856
  %6 = icmp eq i32 %5, 0, !dbg !4861
  br i1 %6, label %10, label %7, !dbg !4862

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.159, i64 0, i64 0)) #14, !dbg !4863
  %9 = icmp eq i32 %8, 0, !dbg !4864
  br i1 %9, label %10, label %11, !dbg !4865

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4847, metadata !DIExpression()), !dbg !4850
  br label %11, !dbg !4866

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4867
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4868 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4874
  call void @llvm.dbg.value(metadata i8* %1, metadata !4873, metadata !DIExpression()), !dbg !4875
  %2 = icmp eq i8* %1, null, !dbg !4876
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.162, i64 0, i64 0), i8* %1, !dbg !4878
  call void @llvm.dbg.value(metadata i8* %3, metadata !4873, metadata !DIExpression()), !dbg !4875
  %4 = load i8, i8* %3, align 1, !dbg !4879, !tbaa !1012
  %5 = icmp eq i8 %4, 0, !dbg !4883
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.163, i64 0, i64 0), i8* %3, !dbg !4884
  call void @llvm.dbg.value(metadata i8* %6, metadata !4873, metadata !DIExpression()), !dbg !4875
  ret i8* %6, !dbg !4885
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4886 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4925, metadata !DIExpression()), !dbg !4929
  call void @llvm.dbg.value(metadata i32 0, metadata !4926, metadata !DIExpression()), !dbg !4930
  call void @llvm.dbg.value(metadata i32 0, metadata !4928, metadata !DIExpression()), !dbg !4931
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4932
  call void @llvm.dbg.value(metadata i32 %2, metadata !4927, metadata !DIExpression()), !dbg !4933
  %3 = icmp slt i32 %2, 0, !dbg !4934
  br i1 %3, label %4, label %6, !dbg !4936

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4937
  br label %24, !dbg !4938

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4939
  %8 = icmp eq i32 %7, 0, !dbg !4939
  br i1 %8, label %13, label %9, !dbg !4941

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4942
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4943
  %12 = icmp eq i64 %11, -1, !dbg !4944
  br i1 %12, label %16, label %13, !dbg !4945

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4946
  %15 = icmp eq i32 %14, 0, !dbg !4946
  br i1 %15, label %16, label %18, !dbg !4947

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4926, metadata !DIExpression()), !dbg !4930
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4948
  call void @llvm.dbg.value(metadata i32 %21, metadata !4928, metadata !DIExpression()), !dbg !4931
  br label %24, !dbg !4949

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4950
  %20 = load i32, i32* %19, align 4, !dbg !4950, !tbaa !1119
  call void @llvm.dbg.value(metadata i32 %20, metadata !4926, metadata !DIExpression()), !dbg !4930
  call void @llvm.dbg.value(metadata i32 %20, metadata !4926, metadata !DIExpression()), !dbg !4930
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4948
  call void @llvm.dbg.value(metadata i32 %21, metadata !4928, metadata !DIExpression()), !dbg !4931
  %22 = icmp eq i32 %20, 0, !dbg !4951
  br i1 %22, label %24, label %23, !dbg !4949

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4953, !tbaa !1119
  call void @llvm.dbg.value(metadata i32 -1, metadata !4928, metadata !DIExpression()), !dbg !4931
  br label %24, !dbg !4955

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4956
  ret i32 %25, !dbg !4957
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4958 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4997, metadata !DIExpression()), !dbg !4998
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4999
  br i1 %2, label %6, label %3, !dbg !5001

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5002
  %5 = icmp eq i32 %4, 0, !dbg !5002
  br i1 %5, label %6, label %8, !dbg !5003

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5004
  br label %17, !dbg !5005

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5006, metadata !DIExpression()) #10, !dbg !5011
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5013
  %10 = load i32, i32* %9, align 8, !dbg !5013, !tbaa !4822
  %11 = and i32 %10, 256, !dbg !5015
  %12 = icmp eq i32 %11, 0, !dbg !5015
  br i1 %12, label %15, label %13, !dbg !5016

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !5017
  br label %15, !dbg !5017

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5018
  br label %17, !dbg !5019

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !5020
  ret i32 %18, !dbg !5021
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !5022 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5061, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.value(metadata i64 %1, metadata !5062, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.value(metadata i32 %2, metadata !5063, metadata !DIExpression()), !dbg !5069
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5070
  %5 = load i8*, i8** %4, align 8, !dbg !5070, !tbaa !5071
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5072
  %7 = load i8*, i8** %6, align 8, !dbg !5072, !tbaa !5073
  %8 = icmp eq i8* %5, %7, !dbg !5074
  br i1 %8, label %9, label %28, !dbg !5075

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5076
  %11 = load i8*, i8** %10, align 8, !dbg !5076, !tbaa !5077
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5078
  %13 = load i8*, i8** %12, align 8, !dbg !5078, !tbaa !5079
  %14 = icmp eq i8* %11, %13, !dbg !5080
  br i1 %14, label %15, label %28, !dbg !5081

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5082
  %17 = load i8*, i8** %16, align 8, !dbg !5082, !tbaa !5083
  %18 = icmp eq i8* %17, null, !dbg !5084
  br i1 %18, label %19, label %28, !dbg !5085

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5086
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !5087
  call void @llvm.dbg.value(metadata i64 %21, metadata !5064, metadata !DIExpression()), !dbg !5088
  %22 = icmp eq i64 %21, -1, !dbg !5089
  br i1 %22, label %30, label %23, !dbg !5091

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5092
  %25 = load i32, i32* %24, align 8, !dbg !5093, !tbaa !4822
  %26 = and i32 %25, -17, !dbg !5093
  store i32 %26, i32* %24, align 8, !dbg !5093, !tbaa !4822
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5094
  store i64 %21, i64* %27, align 8, !dbg !5095, !tbaa !5096
  br label %30, !dbg !5097

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5098
  br label %30, !dbg !5099

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !5100
  ret i32 %31, !dbg !5101
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

!llvm.dbg.cu = !{!2, !118, !124, !132, !219, !222, !227, !139, !146, !230, !237, !212, !245, !262, !264, !275, !279, !281, !284, !286, !288, !677, !679, !681}
!llvm.ident = !{!683, !683, !683, !683, !683, !683, !683, !683, !683, !683, !683, !683, !683, !683, !683, !683, !683, !683, !683, !683, !683, !683, !683, !683}
!llvm.module.flags = !{!684, !685, !686, !687, !688}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 72, type: !59, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !46)
!3 = !DIFile(filename: "src/head.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !11, !25}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "header_mode", file: !3, line: 66, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "multiple_files", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "always", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "never", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !12, line: 32, baseType: !6, size: 32, elements: !13)
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
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Copy_fd_status", file: !3, line: 74, baseType: !6, size: 32, elements: !26)
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "COPY_FD_OK", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "COPY_FD_READ_ERROR", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "COPY_FD_UNEXPECTED_EOF", value: 2, isUnsigned: true)
!30 = !{!6, !31, !33, !34, !39, !43}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !35, line: 63, baseType: !36)
!35 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !37, line: 150, baseType: !38)
!37 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!38 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 62, baseType: !45)
!44 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!45 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !{!47, !84, !86, !88, !90, !91, !105}
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "default_file_list", scope: !49, file: !3, line: 937, type: !81, isLocal: true, isDefinition: true)
!49 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 917, type: !50, isLocal: false, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !54)
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
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !64, line: 102, baseType: !65)
!64 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !37, line: 72, baseType: !45)
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
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "presume_input_pipe", scope: !2, file: !3, line: 57, type: !59, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "print_headers", scope: !2, file: !3, line: 60, type: !59, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "line_end", scope: !2, file: !3, line: 63, type: !32, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 88, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2560, elements: !103)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !96, line: 50, size: 256, elements: !97)
!96 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!97 = !{!98, !99, !100, !102}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !95, file: !96, line: 52, baseType: !41, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !95, file: !96, line: 55, baseType: !52, size: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !95, file: !96, line: 56, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !95, file: !96, line: 57, baseType: !52, size: 32, offset: 192)
!103 = !{!104}
!104 = !DISubrange(count: 10)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "first_file", scope: !107, file: !3, line: 169, type: !59, isLocal: true, isDefinition: true)
!107 = distinct !DISubprogram(name: "write_header", scope: !3, file: !3, line: 167, type: !108, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !41}
!110 = !{!111}
!111 = !DILocalVariable(name: "filename", arg: 1, scope: !107, file: !3, line: 167, type: !41)
!112 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!113 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 10, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!114 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!115 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "Version", scope: !118, file: !119, line: 2, type: !41, isLocal: false, isDefinition: true)
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, globals: !121)
!119 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!120 = !{}
!121 = !{!116}
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "file_name", scope: !124, file: !129, line: 46, type: !41, isLocal: true, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, globals: !126)
!125 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!126 = !{!122, !127}
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !124, file: !129, line: 56, type: !59, isLocal: true, isDefinition: true)
!129 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "exit_failure", scope: !132, file: !135, line: 24, type: !136, isLocal: false, isDefinition: true)
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, globals: !134)
!133 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!134 = !{!130}
!135 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!136 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !52)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "program_name", scope: !139, file: !143, line: 33, type: !41, isLocal: false, isDefinition: true)
!139 = distinct !DICompileUnit(language: DW_LANG_C99, file: !140, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, retainedTypes: !141, globals: !142)
!140 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!141 = !{!33, !31}
!142 = !{!137}
!143 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !146, file: !174, line: 85, type: !207, isLocal: false, isDefinition: true)
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !169, globals: !171)
!147 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!148 = !{!11, !149, !154}
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !12, line: 242, baseType: !6, size: 32, elements: !150)
!150 = !{!151, !152, !153}
!151 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!152 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!153 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 46, baseType: !6, size: 32, elements: !156)
!155 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!157 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!158 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!159 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!160 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!161 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!162 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!163 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!164 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!165 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!166 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!167 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!168 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!169 = !{!52, !170, !43, !31}
!170 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!171 = !{!144, !172, !177, !189, !191, !196, !203, !205}
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !146, file: !174, line: 101, type: !175, isLocal: false, isDefinition: true)
!174 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 320, elements: !103)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !146, file: !174, line: 1052, type: !179, isLocal: false, isDefinition: true)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !174, line: 65, size: 448, elements: !180)
!180 = !{!181, !182, !183, !187, !188}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !179, file: !174, line: 68, baseType: !11, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !179, file: !174, line: 71, baseType: !52, size: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !179, file: !174, line: 75, baseType: !184, size: 256, offset: 64)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !179, file: !174, line: 78, baseType: !41, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !179, file: !174, line: 81, baseType: !41, size: 64, offset: 384)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !146, file: !174, line: 116, type: !179, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "slot0", scope: !146, file: !174, line: 842, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 256)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "slotvec", scope: !146, file: !174, line: 845, type: !198, isLocal: true, isDefinition: true)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !174, line: 834, size: 128, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !199, file: !174, line: 836, baseType: !43, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !199, file: !174, line: 837, baseType: !31, size: 64, offset: 64)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "nslots", scope: !146, file: !174, line: 843, type: !52, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "slotvec0", scope: !146, file: !174, line: 844, type: !199, isLocal: true, isDefinition: true)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 704, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 11)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !212, file: !215, line: 26, type: !216, isLocal: false, isDefinition: true)
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, globals: !214)
!213 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!214 = !{!210}
!215 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 376, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 47)
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, retainedTypes: !221)
!220 = !DIFile(filename: "./lib/full-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!221 = !{!31, !43}
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !223, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, retainedTypes: !224)
!223 = !DIFile(filename: "./lib/offtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !226, line: 85, baseType: !36)
!226 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, retainedTypes: !229)
!228 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!229 = !{!63}
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232)
!231 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!232 = !{!233}
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !234, line: 40, baseType: !6, size: 32, elements: !235)
!234 = !DIFile(filename: "./lib/sys-limits.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!235 = !{!236}
!236 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072, isUnsigned: true)
!237 = distinct !DICompileUnit(language: DW_LANG_C99, file: !238, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !239, retainedTypes: !244)
!238 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!239 = !{!240}
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !241, line: 41, baseType: !6, size: 32, elements: !242)
!241 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!242 = !{!243}
!243 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!244 = !{!33}
!245 = distinct !DICompileUnit(language: DW_LANG_C99, file: !246, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !247, retainedTypes: !261)
!246 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!247 = !{!248}
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !250, file: !249, line: 186, baseType: !6, size: 32, elements: !259)
!249 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!250 = distinct !DISubprogram(name: "x2nrealloc", scope: !249, file: !249, line: 174, type: !251, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !254)
!251 = !DISubroutineType(types: !252)
!252 = !{!33, !33, !253, !43}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!254 = !{!255, !256, !257, !258}
!255 = !DILocalVariable(name: "p", arg: 1, scope: !250, file: !249, line: 174, type: !33)
!256 = !DILocalVariable(name: "pn", arg: 2, scope: !250, file: !249, line: 174, type: !253)
!257 = !DILocalVariable(name: "s", arg: 3, scope: !250, file: !249, line: 174, type: !43)
!258 = !DILocalVariable(name: "n", scope: !250, file: !249, line: 176, type: !43)
!259 = !{!260}
!260 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!261 = !{!43, !31, !33}
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120)
!263 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !266)
!265 = !DIFile(filename: "./lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!266 = !{!267}
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !268, line: 26, baseType: !6, size: 32, elements: !269)
!268 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!269 = !{!270, !271, !272, !273, !274}
!270 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!271 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!272 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!273 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!274 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!275 = distinct !DICompileUnit(language: DW_LANG_C99, file: !276, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !277, retainedTypes: !278)
!276 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!277 = !{!267, !154}
!278 = !{!52, !170}
!279 = distinct !DICompileUnit(language: DW_LANG_C99, file: !280, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, retainedTypes: !244)
!280 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!281 = distinct !DICompileUnit(language: DW_LANG_C99, file: !282, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, retainedTypes: !283)
!282 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!283 = !{!43}
!284 = distinct !DICompileUnit(language: DW_LANG_C99, file: !285, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120)
!285 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120)
!287 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !290, retainedTypes: !244)
!289 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!290 = !{!291}
!291 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !292, line: 41, baseType: !6, size: 32, elements: !293)
!292 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!293 = !{!294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676}
!294 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!295 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!296 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!297 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!298 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!299 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!300 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!301 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!302 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!303 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!304 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!305 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!306 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!307 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!308 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!309 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!310 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!311 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!312 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!313 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!314 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!315 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!316 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!317 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!318 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!319 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!320 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!321 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!322 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!323 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!324 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!325 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!326 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!327 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!328 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!329 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!330 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!331 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!332 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!333 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!334 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!335 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!336 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!337 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!338 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!339 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!340 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!341 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!342 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!343 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!402 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!405 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!406 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!407 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!408 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!409 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!410 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!411 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!412 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!413 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!414 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!415 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!416 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!489 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!562 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!563 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!564 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!565 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!566 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!567 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!568 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!569 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!570 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!571 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!572 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!573 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!574 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!575 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!576 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!578 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!579 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!580 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!581 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!582 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!583 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!609 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!610 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!611 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!612 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!613 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!618 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!619 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!620 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!621 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!677 = distinct !DICompileUnit(language: DW_LANG_C99, file: !678, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120)
!678 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!679 = distinct !DICompileUnit(language: DW_LANG_C99, file: !680, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, retainedTypes: !244)
!680 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!681 = distinct !DICompileUnit(language: DW_LANG_C99, file: !682, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, retainedTypes: !244)
!682 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!683 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!684 = !{i32 2, !"Dwarf Version", i32 4}
!685 = !{i32 2, !"Debug Info Version", i32 3}
!686 = !{i32 1, !"wchar_size", i32 4}
!687 = !{i32 7, !"PIC Level", i32 2}
!688 = !{i32 7, !"PIE Level", i32 2}
!689 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 104, type: !690, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !52}
!692 = !{!693}
!693 = !DILocalVariable(name: "status", arg: 1, scope: !689, file: !3, line: 104, type: !52)
!694 = !DILocalVariable(name: "infomap", scope: !695, file: !696, line: 632, type: !708)
!695 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !696, file: !696, line: 630, type: !108, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !697)
!696 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!697 = !{!698, !694, !699, !700, !707}
!698 = !DILocalVariable(name: "program", arg: 1, scope: !695, file: !696, line: 630, type: !41)
!699 = !DILocalVariable(name: "node", scope: !695, file: !696, line: 642, type: !41)
!700 = !DILocalVariable(name: "map_prog", scope: !695, file: !696, line: 643, type: !701)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !695, file: !696, line: 632, size: 128, elements: !704)
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !703, file: !696, line: 632, baseType: !41, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !703, file: !696, line: 632, baseType: !41, size: 64, offset: 64)
!707 = !DILocalVariable(name: "lc_messages", scope: !695, file: !696, line: 655, type: !41)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !702, size: 896, elements: !709)
!709 = !{!710}
!710 = !DISubrange(count: 7)
!711 = !DILocation(line: 632, column: 67, scope: !695, inlinedAt: !712)
!712 = distinct !DILocation(line: 145, column: 7, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 109, column: 5)
!714 = distinct !DILexicalBlock(scope: !689, file: !3, line: 106, column: 7)
!715 = !DILocation(line: 104, column: 12, scope: !689)
!716 = !DILocation(line: 106, column: 14, scope: !714)
!717 = !DILocation(line: 106, column: 7, scope: !689)
!718 = !DILocation(line: 107, column: 5, scope: !719)
!719 = distinct !DILexicalBlock(scope: !714, file: !3, line: 107, column: 5)
!720 = !{!721, !721, i64 0}
!721 = !{!"any pointer", !722, i64 0}
!722 = !{!"omnipotent char", !723, i64 0}
!723 = !{!"Simple C/C++ TBAA"}
!724 = !DILocation(line: 110, column: 7, scope: !713)
!725 = !DILocation(line: 114, column: 7, scope: !713)
!726 = !DILocation(line: 580, column: 3, scope: !727, inlinedAt: !730)
!727 = distinct !DISubprogram(name: "emit_stdin_note", scope: !696, file: !696, line: 578, type: !728, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !120)
!728 = !DISubroutineType(types: !729)
!729 = !{null}
!730 = distinct !DILocation(line: 119, column: 7, scope: !713)
!731 = !DILocation(line: 587, column: 3, scope: !732, inlinedAt: !733)
!732 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !696, file: !696, line: 585, type: !728, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !120)
!733 = distinct !DILocation(line: 120, column: 7, scope: !713)
!734 = !DILocation(line: 122, column: 7, scope: !713)
!735 = !DILocation(line: 130, column: 7, scope: !713)
!736 = !DILocation(line: 134, column: 7, scope: !713)
!737 = !DILocation(line: 137, column: 7, scope: !713)
!738 = !DILocation(line: 138, column: 7, scope: !713)
!739 = !DILocation(line: 139, column: 7, scope: !713)
!740 = !DILocation(line: 632, column: 3, scope: !695, inlinedAt: !712)
!741 = !DILocation(line: 643, column: 36, scope: !695, inlinedAt: !712)
!742 = !DILocation(line: 643, column: 25, scope: !695, inlinedAt: !712)
!743 = !DILocation(line: 645, column: 33, scope: !695, inlinedAt: !712)
!744 = !DILocation(line: 645, column: 3, scope: !695, inlinedAt: !712)
!745 = !DILocation(line: 646, column: 13, scope: !695, inlinedAt: !712)
!746 = !DILocation(line: 645, column: 20, scope: !695, inlinedAt: !712)
!747 = !{!748, !721, i64 0}
!748 = !{!"infomap", !721, i64 0, !721, i64 8}
!749 = !DILocation(line: 645, column: 10, scope: !695, inlinedAt: !712)
!750 = !DILocation(line: 645, column: 28, scope: !695, inlinedAt: !712)
!751 = distinct !{!751, !752, !753}
!752 = !DILocation(line: 645, column: 3, scope: !695)
!753 = !DILocation(line: 646, column: 13, scope: !695)
!754 = !DILocation(line: 648, column: 17, scope: !755, inlinedAt: !712)
!755 = distinct !DILexicalBlock(scope: !695, file: !696, line: 648, column: 7)
!756 = !{!748, !721, i64 8}
!757 = !DILocation(line: 648, column: 7, scope: !755, inlinedAt: !712)
!758 = !DILocation(line: 648, column: 7, scope: !695, inlinedAt: !712)
!759 = !DILocation(line: 642, column: 15, scope: !695, inlinedAt: !712)
!760 = !DILocation(line: 651, column: 3, scope: !695, inlinedAt: !712)
!761 = !DILocation(line: 655, column: 29, scope: !695, inlinedAt: !712)
!762 = !DILocation(line: 655, column: 15, scope: !695, inlinedAt: !712)
!763 = !DILocation(line: 656, column: 7, scope: !764, inlinedAt: !712)
!764 = distinct !DILexicalBlock(scope: !695, file: !696, line: 656, column: 7)
!765 = !DILocation(line: 656, column: 19, scope: !764, inlinedAt: !712)
!766 = !DILocation(line: 656, column: 22, scope: !764, inlinedAt: !712)
!767 = !DILocation(line: 656, column: 7, scope: !695, inlinedAt: !712)
!768 = !DILocation(line: 662, column: 7, scope: !769, inlinedAt: !712)
!769 = distinct !DILexicalBlock(scope: !764, file: !696, line: 657, column: 5)
!770 = !DILocation(line: 664, column: 5, scope: !769, inlinedAt: !712)
!771 = !DILocation(line: 665, column: 3, scope: !695, inlinedAt: !712)
!772 = !DILocation(line: 667, column: 3, scope: !695, inlinedAt: !712)
!773 = !DILocation(line: 669, column: 1, scope: !695, inlinedAt: !712)
!774 = !DILocation(line: 147, column: 3, scope: !689)
!775 = !DILocalVariable(name: "b", scope: !776, file: !3, line: 295, type: !822)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 290, column: 5)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 289, column: 7)
!778 = distinct !DISubprogram(name: "elide_tail_bytes_pipe", scope: !3, file: !3, line: 247, type: !779, isLocal: true, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !781)
!779 = !DISubroutineType(types: !780)
!780 = !{!59, !41, !52, !63, !34}
!781 = !{!782, !783, !784, !785, !786, !787, !788, !789, !792, !793, !794, !795, !775, !796, !800, !801, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !818, !821}
!782 = !DILocalVariable(name: "filename", arg: 1, scope: !778, file: !3, line: 247, type: !41)
!783 = !DILocalVariable(name: "fd", arg: 2, scope: !778, file: !3, line: 247, type: !52)
!784 = !DILocalVariable(name: "n_elide_0", arg: 3, scope: !778, file: !3, line: 247, type: !63)
!785 = !DILocalVariable(name: "current_pos", arg: 4, scope: !778, file: !3, line: 248, type: !34)
!786 = !DILocalVariable(name: "n_elide", scope: !778, file: !3, line: 250, type: !43)
!787 = !DILocalVariable(name: "desired_pos", scope: !778, file: !3, line: 251, type: !63)
!788 = !DILocalVariable(name: "ok", scope: !778, file: !3, line: 252, type: !59)
!789 = !DILocalVariable(name: "umax_buf", scope: !790, file: !3, line: 273, type: !78)
!790 = distinct !DILexicalBlock(scope: !791, file: !3, line: 272, column: 5)
!791 = distinct !DILexicalBlock(scope: !778, file: !3, line: 271, column: 7)
!792 = !DILocalVariable(name: "first", scope: !776, file: !3, line: 291, type: !59)
!793 = !DILocalVariable(name: "eof", scope: !776, file: !3, line: 292, type: !59)
!794 = !DILocalVariable(name: "n_to_read", scope: !776, file: !3, line: 293, type: !43)
!795 = !DILocalVariable(name: "i", scope: !776, file: !3, line: 294, type: !59)
!796 = !DILocalVariable(name: "n_read", scope: !797, file: !3, line: 301, type: !43)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 300, column: 9)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 299, column: 7)
!799 = distinct !DILexicalBlock(scope: !776, file: !3, line: 299, column: 7)
!800 = !DILocalVariable(name: "delta", scope: !797, file: !3, line: 302, type: !43)
!801 = !DILocalVariable(name: "eof", scope: !802, file: !3, line: 352, type: !59)
!802 = distinct !DILexicalBlock(scope: !777, file: !3, line: 348, column: 5)
!803 = !DILocalVariable(name: "n_read", scope: !802, file: !3, line: 353, type: !43)
!804 = !DILocalVariable(name: "buffered_enough", scope: !802, file: !3, line: 354, type: !59)
!805 = !DILocalVariable(name: "i", scope: !802, file: !3, line: 355, type: !43)
!806 = !DILocalVariable(name: "i_next", scope: !802, file: !3, line: 355, type: !43)
!807 = !DILocalVariable(name: "b", scope: !802, file: !3, line: 356, type: !53)
!808 = !DILocalVariable(name: "rem", scope: !802, file: !3, line: 358, type: !43)
!809 = !DILocalVariable(name: "n_elide_round", scope: !802, file: !3, line: 359, type: !43)
!810 = !DILocalVariable(name: "n_bufs", scope: !802, file: !3, line: 360, type: !43)
!811 = !DILocalVariable(name: "n_alloc", scope: !802, file: !3, line: 361, type: !43)
!812 = !DILocalVariable(name: "n_array_alloc", scope: !802, file: !3, line: 362, type: !43)
!813 = !DILocalVariable(name: "n_bytes_left_in_b_i", scope: !814, file: !3, line: 411, type: !43)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 410, column: 13)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 409, column: 15)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 408, column: 9)
!817 = distinct !DILexicalBlock(scope: !802, file: !3, line: 407, column: 11)
!818 = !DILocalVariable(name: "y", scope: !819, file: !3, line: 437, type: !43)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 424, column: 13)
!820 = distinct !DILexicalBlock(scope: !815, file: !3, line: 423, column: 20)
!821 = !DILocalVariable(name: "x", scope: !819, file: !3, line: 438, type: !43)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !82)
!823 = !DILocation(line: 295, column: 13, scope: !776, inlinedAt: !824)
!824 = distinct !DILocation(line: 469, column: 12, scope: !825, inlinedAt: !878)
!825 = distinct !DILexicalBlock(scope: !826, file: !3, line: 468, column: 7)
!826 = distinct !DISubprogram(name: "elide_tail_bytes_file", scope: !3, file: !3, line: 464, type: !827, isLocal: true, isDefinition: true, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !867)
!827 = !DISubroutineType(types: !828)
!828 = !{!59, !41, !52, !63, !829, !34}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !832, line: 46, size: 1152, elements: !833)
!832 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!833 = !{!834, !836, !838, !840, !842, !844, !846, !847, !848, !849, !851, !853, !861, !862, !863}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !831, file: !832, line: 48, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !37, line: 143, baseType: !45)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !831, file: !832, line: 53, baseType: !837, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !37, line: 146, baseType: !45)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !831, file: !832, line: 61, baseType: !839, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !37, line: 149, baseType: !45)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !831, file: !832, line: 62, baseType: !841, size: 32, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !37, line: 148, baseType: !6)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !831, file: !832, line: 64, baseType: !843, size: 32, offset: 224)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !37, line: 144, baseType: !6)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !831, file: !832, line: 65, baseType: !845, size: 32, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !37, line: 145, baseType: !6)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !831, file: !832, line: 67, baseType: !52, size: 32, offset: 288)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !831, file: !832, line: 69, baseType: !835, size: 64, offset: 320)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !831, file: !832, line: 74, baseType: !36, size: 64, offset: 384)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !831, file: !832, line: 78, baseType: !850, size: 64, offset: 448)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !37, line: 172, baseType: !38)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !831, file: !832, line: 80, baseType: !852, size: 64, offset: 512)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !37, line: 177, baseType: !38)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !831, file: !832, line: 91, baseType: !854, size: 128, offset: 576)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !855, line: 9, size: 128, elements: !856)
!855 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!856 = !{!857, !859}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !854, file: !855, line: 11, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !37, line: 158, baseType: !38)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !854, file: !855, line: 12, baseType: !860, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !37, line: 194, baseType: !38)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !831, file: !832, line: 92, baseType: !854, size: 128, offset: 704)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !831, file: !832, line: 93, baseType: !854, size: 128, offset: 832)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !831, file: !832, line: 106, baseType: !864, size: 192, offset: 960)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !860, size: 192, elements: !865)
!865 = !{!866}
!866 = !DISubrange(count: 3)
!867 = !{!868, !869, !870, !871, !872, !873, !874, !876, !877}
!868 = !DILocalVariable(name: "filename", arg: 1, scope: !826, file: !3, line: 464, type: !41)
!869 = !DILocalVariable(name: "fd", arg: 2, scope: !826, file: !3, line: 464, type: !52)
!870 = !DILocalVariable(name: "n_elide", arg: 3, scope: !826, file: !3, line: 464, type: !63)
!871 = !DILocalVariable(name: "st", arg: 4, scope: !826, file: !3, line: 465, type: !829)
!872 = !DILocalVariable(name: "current_pos", arg: 5, scope: !826, file: !3, line: 465, type: !34)
!873 = !DILocalVariable(name: "size", scope: !826, file: !3, line: 467, type: !34)
!874 = !DILocalVariable(name: "diff", scope: !875, file: !3, line: 474, type: !34)
!875 = distinct !DILexicalBlock(scope: !825, file: !3, line: 471, column: 5)
!876 = !DILocalVariable(name: "bytes_remaining", scope: !875, file: !3, line: 475, type: !34)
!877 = !DILocalVariable(name: "err", scope: !875, file: !3, line: 480, type: !25)
!878 = distinct !DILocation(line: 860, column: 16, scope: !879, inlinedAt: !893)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 857, column: 11)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 842, column: 5)
!881 = distinct !DILexicalBlock(scope: !882, file: !3, line: 841, column: 7)
!882 = distinct !DISubprogram(name: "head", scope: !3, file: !3, line: 835, type: !883, isLocal: true, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !885)
!883 = !DISubroutineType(types: !884)
!884 = !{!59, !41, !52, !63, !59, !59}
!885 = !{!886, !887, !888, !889, !890, !891, !892}
!886 = !DILocalVariable(name: "filename", arg: 1, scope: !882, file: !3, line: 835, type: !41)
!887 = !DILocalVariable(name: "fd", arg: 2, scope: !882, file: !3, line: 835, type: !52)
!888 = !DILocalVariable(name: "n_units", arg: 3, scope: !882, file: !3, line: 835, type: !63)
!889 = !DILocalVariable(name: "count_lines", arg: 4, scope: !882, file: !3, line: 835, type: !59)
!890 = !DILocalVariable(name: "elide_from_end", arg: 5, scope: !882, file: !3, line: 836, type: !59)
!891 = !DILocalVariable(name: "current_pos", scope: !880, file: !3, line: 843, type: !34)
!892 = !DILocalVariable(name: "st", scope: !880, file: !3, line: 844, type: !831)
!893 = distinct !DILocation(line: 893, column: 8, scope: !894, inlinedAt: !905)
!894 = distinct !DISubprogram(name: "head_file", scope: !3, file: !3, line: 869, type: !895, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !897)
!895 = !DISubroutineType(types: !896)
!896 = !{!59, !41, !63, !59, !59}
!897 = !{!898, !899, !900, !901, !902, !903, !904}
!898 = !DILocalVariable(name: "filename", arg: 1, scope: !894, file: !3, line: 869, type: !41)
!899 = !DILocalVariable(name: "n_units", arg: 2, scope: !894, file: !3, line: 869, type: !63)
!900 = !DILocalVariable(name: "count_lines", arg: 3, scope: !894, file: !3, line: 869, type: !59)
!901 = !DILocalVariable(name: "elide_from_end", arg: 4, scope: !894, file: !3, line: 870, type: !59)
!902 = !DILocalVariable(name: "fd", scope: !894, file: !3, line: 872, type: !52)
!903 = !DILocalVariable(name: "ok", scope: !894, file: !3, line: 873, type: !59)
!904 = !DILocalVariable(name: "is_stdin", scope: !894, file: !3, line: 874, type: !59)
!905 = distinct !DILocation(line: 1088, column: 11, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 1087, column: 3)
!907 = distinct !DILexicalBlock(scope: !49, file: !3, line: 1087, column: 3)
!908 = !DILocalVariable(name: "buffer", scope: !909, file: !3, line: 650, type: !933)
!909 = distinct !DISubprogram(name: "elide_tail_lines_seekable", scope: !3, file: !3, line: 646, type: !910, isLocal: true, isDefinition: true, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !912)
!910 = !DISubroutineType(types: !911)
!911 = !{!59, !41, !52, !63, !34, !34}
!912 = !{!913, !914, !915, !916, !917, !908, !918, !919, !920, !922, !924, !928}
!913 = !DILocalVariable(name: "pretty_filename", arg: 1, scope: !909, file: !3, line: 646, type: !41)
!914 = !DILocalVariable(name: "fd", arg: 2, scope: !909, file: !3, line: 646, type: !52)
!915 = !DILocalVariable(name: "n_lines", arg: 3, scope: !909, file: !3, line: 647, type: !63)
!916 = !DILocalVariable(name: "start_pos", arg: 4, scope: !909, file: !3, line: 648, type: !34)
!917 = !DILocalVariable(name: "size", arg: 5, scope: !909, file: !3, line: 648, type: !34)
!918 = !DILocalVariable(name: "bytes_read", scope: !909, file: !3, line: 651, type: !43)
!919 = !DILocalVariable(name: "pos", scope: !909, file: !3, line: 652, type: !34)
!920 = !DILocalVariable(name: "all_lines", scope: !909, file: !3, line: 672, type: !921)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!922 = !DILocalVariable(name: "n", scope: !923, file: !3, line: 682, type: !43)
!923 = distinct !DILexicalBlock(scope: !909, file: !3, line: 679, column: 5)
!924 = !DILocalVariable(name: "nl", scope: !925, file: !3, line: 689, type: !41)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 688, column: 13)
!926 = distinct !DILexicalBlock(scope: !927, file: !3, line: 685, column: 15)
!927 = distinct !DILexicalBlock(scope: !923, file: !3, line: 684, column: 9)
!928 = !DILocalVariable(name: "err", scope: !929, file: !3, line: 702, type: !25)
!929 = distinct !DILexicalBlock(scope: !930, file: !3, line: 701, column: 17)
!930 = distinct !DILexicalBlock(scope: !931, file: !3, line: 700, column: 19)
!931 = distinct !DILexicalBlock(scope: !932, file: !3, line: 696, column: 13)
!932 = distinct !DILexicalBlock(scope: !927, file: !3, line: 695, column: 15)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 65536, elements: !934)
!934 = !{!935}
!935 = !DISubrange(count: 8192)
!936 = !DILocation(line: 650, column: 8, scope: !909, inlinedAt: !937)
!937 = distinct !DILocation(line: 767, column: 18, scope: !938, inlinedAt: !948)
!938 = distinct !DILexicalBlock(scope: !939, file: !3, line: 760, column: 5)
!939 = distinct !DILexicalBlock(scope: !940, file: !3, line: 757, column: 7)
!940 = distinct !DISubprogram(name: "elide_tail_lines_file", scope: !3, file: !3, line: 753, type: !827, isLocal: true, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !941)
!941 = !{!942, !943, !944, !945, !946, !947}
!942 = !DILocalVariable(name: "filename", arg: 1, scope: !940, file: !3, line: 753, type: !41)
!943 = !DILocalVariable(name: "fd", arg: 2, scope: !940, file: !3, line: 753, type: !52)
!944 = !DILocalVariable(name: "n_elide", arg: 3, scope: !940, file: !3, line: 753, type: !63)
!945 = !DILocalVariable(name: "st", arg: 4, scope: !940, file: !3, line: 754, type: !829)
!946 = !DILocalVariable(name: "current_pos", arg: 5, scope: !940, file: !3, line: 754, type: !34)
!947 = !DILocalVariable(name: "size", scope: !940, file: !3, line: 756, type: !34)
!948 = distinct !DILocation(line: 858, column: 16, scope: !879, inlinedAt: !893)
!949 = !DILocalVariable(name: "buffer", scope: !950, file: !3, line: 800, type: !933)
!950 = distinct !DISubprogram(name: "head_lines", scope: !3, file: !3, line: 798, type: !951, isLocal: true, isDefinition: true, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !953)
!951 = !DISubroutineType(types: !952)
!952 = !{!59, !41, !52, !63}
!953 = !{!954, !955, !956, !949, !957, !959, !960, !963}
!954 = !DILocalVariable(name: "filename", arg: 1, scope: !950, file: !3, line: 798, type: !41)
!955 = !DILocalVariable(name: "fd", arg: 2, scope: !950, file: !3, line: 798, type: !52)
!956 = !DILocalVariable(name: "lines_to_write", arg: 3, scope: !950, file: !3, line: 798, type: !63)
!957 = !DILocalVariable(name: "bytes_read", scope: !958, file: !3, line: 804, type: !43)
!958 = distinct !DILexicalBlock(scope: !950, file: !3, line: 803, column: 5)
!959 = !DILocalVariable(name: "bytes_to_write", scope: !958, file: !3, line: 805, type: !43)
!960 = !DILocalVariable(name: "n_bytes_past_EOL", scope: !961, file: !3, line: 817, type: !34)
!961 = distinct !DILexicalBlock(scope: !962, file: !3, line: 816, column: 11)
!962 = distinct !DILexicalBlock(scope: !958, file: !3, line: 815, column: 13)
!963 = !DILocalVariable(name: "st", scope: !964, file: !3, line: 823, type: !831)
!964 = distinct !DILexicalBlock(scope: !965, file: !3, line: 822, column: 15)
!965 = distinct !DILexicalBlock(scope: !961, file: !3, line: 821, column: 17)
!966 = !DILocation(line: 800, column: 8, scope: !950, inlinedAt: !967)
!967 = distinct !DILocation(line: 863, column: 12, scope: !968, inlinedAt: !893)
!968 = distinct !DILexicalBlock(scope: !882, file: !3, line: 862, column: 7)
!969 = !DILocalVariable(name: "buf", scope: !970, file: !3, line: 195, type: !933)
!970 = distinct !DISubprogram(name: "copy_fd", scope: !3, file: !3, line: 193, type: !971, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !973)
!971 = !DISubroutineType(types: !972)
!972 = !{!25, !52, !63}
!973 = !{!974, !975, !969, !976, !978, !980}
!974 = !DILocalVariable(name: "src_fd", arg: 1, scope: !970, file: !3, line: 193, type: !52)
!975 = !DILocalVariable(name: "n_bytes", arg: 2, scope: !970, file: !3, line: 193, type: !63)
!976 = !DILocalVariable(name: "buf_size", scope: !970, file: !3, line: 196, type: !977)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!978 = !DILocalVariable(name: "n_to_read", scope: !979, file: !3, line: 201, type: !43)
!979 = distinct !DILexicalBlock(scope: !970, file: !3, line: 200, column: 5)
!980 = !DILocalVariable(name: "n_read", scope: !979, file: !3, line: 202, type: !43)
!981 = !DILocation(line: 195, column: 8, scope: !970, inlinedAt: !982)
!982 = distinct !DILocation(line: 480, column: 33, scope: !875, inlinedAt: !878)
!983 = !DILocation(line: 195, column: 8, scope: !970, inlinedAt: !984)
!984 = distinct !DILocation(line: 706, column: 25, scope: !929, inlinedAt: !937)
!985 = !DILocalVariable(name: "buffer", scope: !986, file: !3, line: 775, type: !933)
!986 = distinct !DISubprogram(name: "head_bytes", scope: !3, file: !3, line: 773, type: !951, isLocal: true, isDefinition: true, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !987)
!987 = !{!988, !989, !990, !985, !991, !992}
!988 = !DILocalVariable(name: "filename", arg: 1, scope: !986, file: !3, line: 773, type: !41)
!989 = !DILocalVariable(name: "fd", arg: 2, scope: !986, file: !3, line: 773, type: !52)
!990 = !DILocalVariable(name: "bytes_to_write", arg: 3, scope: !986, file: !3, line: 773, type: !63)
!991 = !DILocalVariable(name: "bytes_to_read", scope: !986, file: !3, line: 776, type: !43)
!992 = !DILocalVariable(name: "bytes_read", scope: !993, file: !3, line: 780, type: !43)
!993 = distinct !DILexicalBlock(scope: !986, file: !3, line: 779, column: 5)
!994 = !DILocation(line: 775, column: 8, scope: !986, inlinedAt: !995)
!995 = distinct !DILocation(line: 865, column: 12, scope: !968, inlinedAt: !893)
!996 = !DILocation(line: 917, column: 11, scope: !49)
!997 = !DILocation(line: 917, column: 24, scope: !49)
!998 = !DILocation(line: 919, column: 20, scope: !49)
!999 = !DILocation(line: 920, column: 8, scope: !49)
!1000 = !DILocation(line: 925, column: 13, scope: !49)
!1001 = !DILocation(line: 929, column: 8, scope: !49)
!1002 = !DILocation(line: 933, column: 8, scope: !49)
!1003 = !DILocation(line: 941, column: 21, scope: !49)
!1004 = !DILocation(line: 941, column: 3, scope: !49)
!1005 = !DILocation(line: 942, column: 3, scope: !49)
!1006 = !DILocation(line: 943, column: 3, scope: !49)
!1007 = !DILocation(line: 944, column: 3, scope: !49)
!1008 = !DILocation(line: 946, column: 3, scope: !49)
!1009 = !DILocation(line: 954, column: 9, scope: !71)
!1010 = !DILocation(line: 954, column: 16, scope: !71)
!1011 = !DILocation(line: 954, column: 19, scope: !71)
!1012 = !{!722, !722, i64 0}
!1013 = !DILocation(line: 954, column: 30, scope: !71)
!1014 = !DILocation(line: 954, column: 37, scope: !71)
!1015 = !DILocation(line: 954, column: 40, scope: !71)
!1016 = !DILocation(line: 954, column: 7, scope: !49)
!1017 = !DILocation(line: 0, scope: !70)
!1018 = !DILocation(line: 956, column: 13, scope: !70)
!1019 = !DILocation(line: 963, column: 10, scope: !70)
!1020 = !DILocation(line: 964, column: 14, scope: !70)
!1021 = distinct !{!1021, !1022, !1023}
!1022 = !DILocation(line: 963, column: 7, scope: !70)
!1023 = !DILocation(line: 964, column: 26, scope: !70)
!1024 = !DILocation(line: 959, column: 12, scope: !70)
!1025 = !DILocation(line: 970, column: 7, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !70, file: !3, line: 970, column: 7)
!1027 = !DILocation(line: 1010, column: 21, scope: !70)
!1028 = !DILocalVariable(name: "count_lines", arg: 1, scope: !1029, file: !3, line: 909, type: !59)
!1029 = distinct !DISubprogram(name: "string_to_integer", scope: !3, file: !3, line: 909, type: !1030, isLocal: true, isDefinition: true, scopeLine: 910, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!63, !59, !41}
!1032 = !{!1028, !1033}
!1033 = !DILocalVariable(name: "n_string", arg: 2, scope: !1029, file: !3, line: 909, type: !41)
!1034 = !DILocation(line: 909, column: 25, scope: !1029, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 1014, column: 17, scope: !70)
!1036 = !DILocation(line: 909, column: 50, scope: !1029, inlinedAt: !1035)
!1037 = !DILocation(line: 912, column: 22, scope: !1029, inlinedAt: !1035)
!1038 = !DILocation(line: 972, column: 19, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 971, column: 9)
!1040 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 970, column: 7)
!1041 = !DILocation(line: 972, column: 11, scope: !1039)
!1042 = !DILocation(line: 984, column: 15, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 973, column: 13)
!1044 = !DILocation(line: 988, column: 15, scope: !1043)
!1045 = !DILocation(line: 992, column: 15, scope: !1043)
!1046 = !DILocation(line: 996, column: 15, scope: !1043)
!1047 = !DILocation(line: 1000, column: 15, scope: !1043)
!1048 = !DILocation(line: 1003, column: 28, scope: !1043)
!1049 = !DILocation(line: 1003, column: 64, scope: !1043)
!1050 = !DILocation(line: 1003, column: 15, scope: !1043)
!1051 = !DILocation(line: 1004, column: 15, scope: !1043)
!1052 = !DILocation(line: 0, scope: !49)
!1053 = !DILocation(line: 0, scope: !1043)
!1054 = !DILocation(line: 970, column: 19, scope: !1040)
!1055 = !DILocation(line: 970, column: 14, scope: !1040)
!1056 = distinct !{!1056, !1025, !1057}
!1057 = !DILocation(line: 1006, column: 9, scope: !1026)
!1058 = !DILocation(line: 1011, column: 11, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !70, file: !3, line: 1011, column: 11)
!1060 = !DILocation(line: 1011, column: 11, scope: !70)
!1061 = !DILocation(line: 1012, column: 11, scope: !1059)
!1062 = !DILocation(line: 958, column: 13, scope: !70)
!1063 = !DILocation(line: 1012, column: 27, scope: !1059)
!1064 = !DILocation(line: 1012, column: 9, scope: !1059)
!1065 = !DILocation(line: 1014, column: 36, scope: !70)
!1066 = !DILocation(line: 911, column: 10, scope: !1029, inlinedAt: !1035)
!1067 = !DILocation(line: 1017, column: 17, scope: !70)
!1068 = !DILocation(line: 1017, column: 15, scope: !70)
!1069 = !DILocation(line: 1019, column: 11, scope: !70)
!1070 = !DILocation(line: 1020, column: 5, scope: !70)
!1071 = !DILocation(line: 1022, column: 3, scope: !49)
!1072 = !DILocation(line: 1022, column: 15, scope: !49)
!1073 = !DILocation(line: 921, column: 7, scope: !49)
!1074 = distinct !{!1074, !1071, !1075}
!1075 = !DILocation(line: 1068, column: 5, scope: !49)
!1076 = !DILocation(line: 1029, column: 11, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 1026, column: 9)
!1078 = distinct !DILexicalBlock(scope: !49, file: !3, line: 1024, column: 5)
!1079 = !DILocation(line: 1033, column: 30, scope: !1077)
!1080 = !DILocation(line: 1033, column: 29, scope: !1077)
!1081 = !DILocation(line: 1033, column: 37, scope: !1077)
!1082 = !DILocation(line: 1034, column: 15, scope: !1077)
!1083 = !DILocation(line: 1035, column: 13, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 1034, column: 15)
!1085 = !DILocation(line: 1036, column: 53, scope: !1077)
!1086 = !DILocation(line: 909, column: 25, scope: !1029, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 1036, column: 21, scope: !1077)
!1088 = !DILocation(line: 909, column: 50, scope: !1029, inlinedAt: !1087)
!1089 = !DILocation(line: 913, column: 36, scope: !1029, inlinedAt: !1087)
!1090 = !DILocation(line: 911, column: 10, scope: !1029, inlinedAt: !1087)
!1091 = !DILocation(line: 1037, column: 11, scope: !1077)
!1092 = !DILocation(line: 1041, column: 30, scope: !1077)
!1093 = !DILocation(line: 1041, column: 29, scope: !1077)
!1094 = !DILocation(line: 1041, column: 37, scope: !1077)
!1095 = !DILocation(line: 1042, column: 15, scope: !1077)
!1096 = !DILocation(line: 1043, column: 13, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 1042, column: 15)
!1098 = !DILocation(line: 1044, column: 53, scope: !1077)
!1099 = !DILocation(line: 909, column: 25, scope: !1029, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 1044, column: 21, scope: !1077)
!1101 = !DILocation(line: 909, column: 50, scope: !1029, inlinedAt: !1100)
!1102 = !DILocation(line: 912, column: 36, scope: !1029, inlinedAt: !1100)
!1103 = !DILocation(line: 911, column: 10, scope: !1029, inlinedAt: !1100)
!1104 = !DILocation(line: 1045, column: 11, scope: !1077)
!1105 = !DILocation(line: 0, scope: !1077)
!1106 = !DILocation(line: 1053, column: 11, scope: !1077)
!1107 = !DILocation(line: 1057, column: 11, scope: !1077)
!1108 = !DILocation(line: 1059, column: 9, scope: !1077)
!1109 = !DILocation(line: 1061, column: 9, scope: !1077)
!1110 = !DILocation(line: 1064, column: 15, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 1064, column: 15)
!1112 = !DILocation(line: 1064, column: 15, scope: !1077)
!1113 = !DILocation(line: 1065, column: 26, scope: !1111)
!1114 = !DILocation(line: 1065, column: 13, scope: !1111)
!1115 = !DILocation(line: 1066, column: 11, scope: !1077)
!1116 = !DILocation(line: 1071, column: 7, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !49, file: !3, line: 1070, column: 7)
!1118 = !DILocation(line: 1071, column: 44, scope: !1117)
!1119 = !{!1120, !1120, i64 0}
!1120 = !{!"int", !722, i64 0}
!1121 = !DILocation(line: 1071, column: 58, scope: !1117)
!1122 = !DILocation(line: 1071, column: 51, scope: !1117)
!1123 = !DILocation(line: 1070, column: 7, scope: !49)
!1124 = !DILocation(line: 1072, column: 5, scope: !1117)
!1125 = !DILocation(line: 1074, column: 10, scope: !77)
!1126 = !DILocation(line: 1074, column: 22, scope: !77)
!1127 = !DILocation(line: 1074, column: 25, scope: !77)
!1128 = !DILocation(line: 1074, column: 53, scope: !77)
!1129 = !DILocation(line: 1074, column: 40, scope: !77)
!1130 = !DILocation(line: 1076, column: 7, scope: !76)
!1131 = !DILocation(line: 1076, column: 12, scope: !76)
!1132 = !DILocation(line: 1077, column: 7, scope: !76)
!1133 = !DILocation(line: 1081, column: 16, scope: !49)
!1134 = !DILocation(line: 1081, column: 23, scope: !49)
!1135 = !DILocation(line: 1082, column: 41, scope: !49)
!1136 = !DILocation(line: 938, column: 22, scope: !49)
!1137 = !DILocation(line: 922, column: 10, scope: !49)
!1138 = !DILocation(line: 1087, column: 15, scope: !906)
!1139 = !DILocation(line: 1087, column: 3, scope: !907)
!1140 = !DILocation(line: 869, column: 24, scope: !894, inlinedAt: !905)
!1141 = !DILocation(line: 869, column: 44, scope: !894, inlinedAt: !905)
!1142 = !DILocation(line: 869, column: 58, scope: !894, inlinedAt: !905)
!1143 = !DILocation(line: 870, column: 17, scope: !894, inlinedAt: !905)
!1144 = !DILocation(line: 874, column: 19, scope: !894, inlinedAt: !905)
!1145 = !DILocation(line: 876, column: 7, scope: !894, inlinedAt: !905)
!1146 = !DILocation(line: 872, column: 7, scope: !894, inlinedAt: !905)
!1147 = !DILocation(line: 880, column: 18, scope: !1148, inlinedAt: !905)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 877, column: 5)
!1149 = distinct !DILexicalBlock(scope: !894, file: !3, line: 876, column: 7)
!1150 = !DILocation(line: 882, column: 5, scope: !1148, inlinedAt: !905)
!1151 = !DILocation(line: 885, column: 12, scope: !1152, inlinedAt: !905)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 884, column: 5)
!1153 = !DILocation(line: 886, column: 14, scope: !1154, inlinedAt: !905)
!1154 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 886, column: 11)
!1155 = !DILocation(line: 886, column: 11, scope: !1152, inlinedAt: !905)
!1156 = !DILocation(line: 888, column: 21, scope: !1157, inlinedAt: !905)
!1157 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 887, column: 9)
!1158 = !DILocation(line: 888, column: 28, scope: !1157, inlinedAt: !905)
!1159 = !DILocation(line: 888, column: 61, scope: !1157, inlinedAt: !905)
!1160 = !DILocation(line: 888, column: 11, scope: !1157, inlinedAt: !905)
!1161 = !DILocation(line: 889, column: 11, scope: !1157, inlinedAt: !905)
!1162 = !DILocation(line: 0, scope: !1152, inlinedAt: !905)
!1163 = !DILocation(line: 835, column: 19, scope: !882, inlinedAt: !893)
!1164 = !DILocation(line: 835, column: 33, scope: !882, inlinedAt: !893)
!1165 = !DILocation(line: 835, column: 47, scope: !882, inlinedAt: !893)
!1166 = !DILocation(line: 835, column: 61, scope: !882, inlinedAt: !893)
!1167 = !DILocation(line: 836, column: 12, scope: !882, inlinedAt: !893)
!1168 = !DILocation(line: 838, column: 7, scope: !882, inlinedAt: !893)
!1169 = !DILocation(line: 167, column: 27, scope: !107, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 839, column: 5, scope: !1171, inlinedAt: !893)
!1171 = distinct !DILexicalBlock(scope: !882, file: !3, line: 838, column: 7)
!1172 = !DILocation(line: 171, column: 3, scope: !107, inlinedAt: !1170)
!1173 = !DILocation(line: 839, column: 5, scope: !1171, inlinedAt: !893)
!1174 = !DILocation(line: 841, column: 7, scope: !882, inlinedAt: !893)
!1175 = !DILocation(line: 843, column: 13, scope: !880, inlinedAt: !893)
!1176 = !DILocation(line: 844, column: 7, scope: !880, inlinedAt: !893)
!1177 = !DILocation(line: 844, column: 19, scope: !880, inlinedAt: !893)
!1178 = !DILocalVariable(name: "__fd", arg: 1, scope: !1179, file: !1180, line: 467, type: !52)
!1179 = distinct !DISubprogram(name: "fstat", scope: !1180, file: !1180, line: 467, type: !1181, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1184)
!1180 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!52, !52, !1183}
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!1184 = !{!1178, !1185}
!1185 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1179, file: !1180, line: 467, type: !1183)
!1186 = !DILocation(line: 467, column: 1, scope: !1179, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 845, column: 11, scope: !1188, inlinedAt: !893)
!1188 = distinct !DILexicalBlock(scope: !880, file: !3, line: 845, column: 11)
!1189 = !DILocation(line: 469, column: 10, scope: !1179, inlinedAt: !1187)
!1190 = !DILocation(line: 845, column: 27, scope: !1188, inlinedAt: !893)
!1191 = !DILocation(line: 845, column: 11, scope: !880, inlinedAt: !893)
!1192 = !DILocation(line: 847, column: 21, scope: !1193, inlinedAt: !893)
!1193 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 846, column: 9)
!1194 = !DILocation(line: 847, column: 28, scope: !1193, inlinedAt: !893)
!1195 = !DILocation(line: 848, column: 18, scope: !1193, inlinedAt: !893)
!1196 = !DILocation(line: 847, column: 11, scope: !1193, inlinedAt: !893)
!1197 = !DILocation(line: 849, column: 11, scope: !1193, inlinedAt: !893)
!1198 = !DILocation(line: 851, column: 32, scope: !1199, inlinedAt: !893)
!1199 = distinct !DILexicalBlock(scope: !880, file: !3, line: 851, column: 11)
!1200 = !DILocalVariable(name: "sb", arg: 1, scope: !1201, file: !696, line: 701, type: !829)
!1201 = distinct !DISubprogram(name: "usable_st_size", scope: !696, file: !696, line: 701, type: !1202, isLocal: true, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1204)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!59, !829}
!1204 = !{!1200}
!1205 = !DILocation(line: 701, column: 36, scope: !1201, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 851, column: 35, scope: !1199, inlinedAt: !893)
!1207 = !DILocation(line: 703, column: 11, scope: !1201, inlinedAt: !1206)
!1208 = !{!1209, !1120, i64 24}
!1209 = !{!"stat", !1210, i64 0, !1210, i64 8, !1210, i64 16, !1120, i64 24, !1120, i64 28, !1120, i64 32, !1120, i64 36, !1210, i64 40, !1210, i64 48, !1210, i64 56, !1210, i64 64, !1211, i64 72, !1211, i64 88, !1211, i64 104, !722, i64 120}
!1210 = !{!"long", !722, i64 0}
!1211 = !{!"timespec", !1210, i64 0, !1210, i64 8}
!1212 = !DILocation(line: 703, column: 33, scope: !1201, inlinedAt: !1206)
!1213 = !DILocation(line: 853, column: 25, scope: !1214, inlinedAt: !893)
!1214 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 852, column: 9)
!1215 = !DILocation(line: 854, column: 27, scope: !1216, inlinedAt: !893)
!1216 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 854, column: 15)
!1217 = !DILocation(line: 854, column: 15, scope: !1214, inlinedAt: !893)
!1218 = !DILocation(line: 0, scope: !880, inlinedAt: !893)
!1219 = !DILocation(line: 0, scope: !879, inlinedAt: !893)
!1220 = !{!1209, !1210, i64 48}
!1221 = !DILocation(line: 857, column: 11, scope: !880, inlinedAt: !893)
!1222 = !DILocation(line: 753, column: 36, scope: !940, inlinedAt: !948)
!1223 = !DILocation(line: 753, column: 50, scope: !940, inlinedAt: !948)
!1224 = !DILocation(line: 753, column: 64, scope: !940, inlinedAt: !948)
!1225 = !DILocation(line: 754, column: 43, scope: !940, inlinedAt: !948)
!1226 = !DILocation(line: 754, column: 53, scope: !940, inlinedAt: !948)
!1227 = !DILocation(line: 756, column: 9, scope: !940, inlinedAt: !948)
!1228 = !DILocation(line: 757, column: 26, scope: !939, inlinedAt: !948)
!1229 = !DILocation(line: 757, column: 56, scope: !939, inlinedAt: !948)
!1230 = !{!1209, !1210, i64 56}
!1231 = !DILocation(line: 757, column: 53, scope: !939, inlinedAt: !948)
!1232 = !DILocation(line: 757, column: 7, scope: !940, inlinedAt: !948)
!1233 = !DILocalVariable(name: "filename", arg: 1, scope: !1234, file: !3, line: 497, type: !41)
!1234 = distinct !DISubprogram(name: "elide_tail_lines_pipe", scope: !3, file: !3, line: 497, type: !779, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1235)
!1235 = !{!1233, !1236, !1237, !1238, !1239, !1240, !1250, !1251, !1252, !1253, !1254, !1255, !1258, !1259, !1262, !1263}
!1236 = !DILocalVariable(name: "fd", arg: 2, scope: !1234, file: !3, line: 497, type: !52)
!1237 = !DILocalVariable(name: "n_elide", arg: 3, scope: !1234, file: !3, line: 497, type: !63)
!1238 = !DILocalVariable(name: "current_pos", arg: 4, scope: !1234, file: !3, line: 498, type: !34)
!1239 = !DILocalVariable(name: "desired_pos", scope: !1234, file: !3, line: 507, type: !63)
!1240 = !DILocalVariable(name: "first", scope: !1234, file: !3, line: 509, type: !1241)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "LBUFFER", scope: !1234, file: !3, line: 508, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", scope: !1234, file: !3, line: 500, size: 65728, elements: !1244)
!1244 = !{!1245, !1246, !1247, !1248}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1243, file: !3, line: 502, baseType: !933, size: 65536)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !1243, file: !3, line: 503, baseType: !43, size: 64, offset: 65536)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "nlines", scope: !1243, file: !3, line: 504, baseType: !43, size: 64, offset: 65600)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1243, file: !3, line: 505, baseType: !1249, size: 64, offset: 65664)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1250 = !DILocalVariable(name: "last", scope: !1234, file: !3, line: 509, type: !1241)
!1251 = !DILocalVariable(name: "tmp", scope: !1234, file: !3, line: 509, type: !1241)
!1252 = !DILocalVariable(name: "total_lines", scope: !1234, file: !3, line: 510, type: !43)
!1253 = !DILocalVariable(name: "ok", scope: !1234, file: !3, line: 511, type: !59)
!1254 = !DILocalVariable(name: "n_read", scope: !1234, file: !3, line: 512, type: !43)
!1255 = !DILocalVariable(name: "buffer_end", scope: !1256, file: !3, line: 541, type: !41)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 540, column: 7)
!1257 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 523, column: 5)
!1258 = !DILocalVariable(name: "p", scope: !1256, file: !3, line: 542, type: !41)
!1259 = !DILocalVariable(name: "n", scope: !1260, file: !3, line: 608, type: !43)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 607, column: 5)
!1261 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 606, column: 7)
!1262 = !DILocalVariable(name: "buffer_end", scope: !1260, file: !3, line: 609, type: !41)
!1263 = !DILocalVariable(name: "p", scope: !1260, file: !3, line: 610, type: !41)
!1264 = !DILocation(line: 497, column: 36, scope: !1234, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 758, column: 12, scope: !939, inlinedAt: !948)
!1266 = !DILocation(line: 497, column: 50, scope: !1234, inlinedAt: !1265)
!1267 = !DILocation(line: 497, column: 64, scope: !1234, inlinedAt: !1265)
!1268 = !DILocation(line: 498, column: 30, scope: !1234, inlinedAt: !1265)
!1269 = !DILocation(line: 507, column: 13, scope: !1234, inlinedAt: !1265)
!1270 = !DILocation(line: 510, column: 10, scope: !1234, inlinedAt: !1265)
!1271 = !DILocation(line: 511, column: 8, scope: !1234, inlinedAt: !1265)
!1272 = !DILocation(line: 514, column: 18, scope: !1234, inlinedAt: !1265)
!1273 = !DILocation(line: 509, column: 20, scope: !1234, inlinedAt: !1265)
!1274 = !DILocation(line: 509, column: 12, scope: !1234, inlinedAt: !1265)
!1275 = !DILocation(line: 515, column: 10, scope: !1234, inlinedAt: !1265)
!1276 = !DILocation(line: 515, column: 17, scope: !1234, inlinedAt: !1265)
!1277 = !DILocation(line: 517, column: 9, scope: !1234, inlinedAt: !1265)
!1278 = !DILocation(line: 524, column: 16, scope: !1257, inlinedAt: !1265)
!1279 = !DILocation(line: 512, column: 10, scope: !1234, inlinedAt: !1265)
!1280 = !DILocation(line: 525, column: 23, scope: !1281, inlinedAt: !1265)
!1281 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 525, column: 11)
!1282 = !DILocation(line: 509, column: 27, scope: !1234, inlinedAt: !1265)
!1283 = !DILocation(line: 535, column: 12, scope: !1257, inlinedAt: !1265)
!1284 = !DILocation(line: 535, column: 19, scope: !1257, inlinedAt: !1265)
!1285 = !{!1286, !1210, i64 8192}
!1286 = !{!"linebuffer", !722, i64 0, !1210, i64 8192, !1210, i64 8200, !721, i64 8208}
!1287 = !DILocation(line: 536, column: 12, scope: !1257, inlinedAt: !1265)
!1288 = !DILocation(line: 541, column: 46, scope: !1256, inlinedAt: !1265)
!1289 = !DILocation(line: 541, column: 21, scope: !1256, inlinedAt: !1265)
!1290 = !DILocation(line: 542, column: 21, scope: !1256, inlinedAt: !1265)
!1291 = !DILocation(line: 537, column: 17, scope: !1257, inlinedAt: !1265)
!1292 = !DILocation(line: 543, column: 32, scope: !1256, inlinedAt: !1265)
!1293 = !DILocation(line: 543, column: 53, scope: !1256, inlinedAt: !1265)
!1294 = !DILocation(line: 543, column: 21, scope: !1256, inlinedAt: !1265)
!1295 = !DILocation(line: 543, column: 9, scope: !1256, inlinedAt: !1265)
!1296 = !DILocation(line: 530, column: 23, scope: !1297, inlinedAt: !1265)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 529, column: 9)
!1298 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 528, column: 11)
!1299 = !DILocation(line: 531, column: 11, scope: !1297, inlinedAt: !1265)
!1300 = distinct !{!1300, !1301, !1302}
!1301 = !DILocation(line: 522, column: 3, scope: !1234)
!1302 = !DILocation(line: 579, column: 5, scope: !1234)
!1303 = !DILocation(line: 546, column: 13, scope: !1304, inlinedAt: !1265)
!1304 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 544, column: 11)
!1305 = !DILocation(line: 545, column: 13, scope: !1304, inlinedAt: !1265)
!1306 = !{!1286, !1210, i64 8200}
!1307 = distinct !{!1307, !1308, !1309}
!1308 = !DILocation(line: 543, column: 9, scope: !1256)
!1309 = !DILocation(line: 547, column: 11, scope: !1256)
!1310 = !DILocation(line: 549, column: 27, scope: !1257, inlinedAt: !1265)
!1311 = !DILocation(line: 549, column: 19, scope: !1257, inlinedAt: !1265)
!1312 = !DILocation(line: 554, column: 31, scope: !1313, inlinedAt: !1265)
!1313 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 554, column: 11)
!1314 = !DILocation(line: 554, column: 23, scope: !1313, inlinedAt: !1265)
!1315 = !DILocation(line: 554, column: 38, scope: !1313, inlinedAt: !1265)
!1316 = !DILocation(line: 554, column: 11, scope: !1257, inlinedAt: !1265)
!1317 = !DILocation(line: 556, column: 20, scope: !1318, inlinedAt: !1265)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 555, column: 9)
!1319 = !DILocation(line: 556, column: 11, scope: !1318, inlinedAt: !1265)
!1320 = !DILocation(line: 557, column: 32, scope: !1318, inlinedAt: !1265)
!1321 = !{!1210, !1210, i64 0}
!1322 = !DILocation(line: 557, column: 24, scope: !1318, inlinedAt: !1265)
!1323 = !DILocation(line: 559, column: 9, scope: !1318, inlinedAt: !1265)
!1324 = !DILocation(line: 567, column: 24, scope: !1325, inlinedAt: !1265)
!1325 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 561, column: 9)
!1326 = !DILocation(line: 567, column: 29, scope: !1325, inlinedAt: !1265)
!1327 = !{!1286, !721, i64 8208}
!1328 = !DILocation(line: 568, column: 46, scope: !1329, inlinedAt: !1265)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 568, column: 15)
!1330 = !DILocation(line: 568, column: 37, scope: !1329, inlinedAt: !1265)
!1331 = !DILocation(line: 568, column: 23, scope: !1329, inlinedAt: !1265)
!1332 = !DILocation(line: 568, column: 15, scope: !1325, inlinedAt: !1265)
!1333 = !DILocation(line: 570, column: 37, scope: !1334, inlinedAt: !1265)
!1334 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 569, column: 13)
!1335 = !DILocation(line: 570, column: 27, scope: !1334, inlinedAt: !1265)
!1336 = !DILocation(line: 571, column: 30, scope: !1334, inlinedAt: !1265)
!1337 = !DILocation(line: 571, column: 15, scope: !1334, inlinedAt: !1265)
!1338 = !DILocation(line: 573, column: 37, scope: !1334, inlinedAt: !1265)
!1339 = !DILocation(line: 573, column: 27, scope: !1334, inlinedAt: !1265)
!1340 = !DILocation(line: 574, column: 30, scope: !1334, inlinedAt: !1265)
!1341 = !DILocation(line: 575, column: 13, scope: !1334, inlinedAt: !1265)
!1342 = !DILocation(line: 577, column: 19, scope: !1329, inlinedAt: !1265)
!1343 = !DILocation(line: 0, scope: !1329, inlinedAt: !1265)
!1344 = !DILocation(line: 0, scope: !1257, inlinedAt: !1265)
!1345 = !DILocation(line: 0, scope: !1325, inlinedAt: !1265)
!1346 = !DILocation(line: 0, scope: !1234, inlinedAt: !1265)
!1347 = !DILocation(line: 524, column: 31, scope: !1257, inlinedAt: !1265)
!1348 = !DILocation(line: 0, scope: !1297, inlinedAt: !1265)
!1349 = !DILocation(line: 525, column: 33, scope: !1281, inlinedAt: !1265)
!1350 = !DILocation(line: 581, column: 3, scope: !1234, inlinedAt: !1265)
!1351 = !DILocation(line: 583, column: 7, scope: !1234, inlinedAt: !1265)
!1352 = !DILocation(line: 585, column: 17, scope: !1353, inlinedAt: !1265)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 584, column: 5)
!1354 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 583, column: 7)
!1355 = !DILocation(line: 585, column: 24, scope: !1353, inlinedAt: !1265)
!1356 = !DILocation(line: 585, column: 47, scope: !1353, inlinedAt: !1265)
!1357 = !DILocation(line: 585, column: 7, scope: !1353, inlinedAt: !1265)
!1358 = !DILocation(line: 587, column: 7, scope: !1353, inlinedAt: !1265)
!1359 = !DILocation(line: 592, column: 13, scope: !1360, inlinedAt: !1265)
!1360 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 592, column: 7)
!1361 = !DILocation(line: 592, column: 7, scope: !1360, inlinedAt: !1265)
!1362 = !DILocation(line: 592, column: 20, scope: !1360, inlinedAt: !1265)
!1363 = !DILocation(line: 592, column: 49, scope: !1360, inlinedAt: !1265)
!1364 = !DILocation(line: 592, column: 23, scope: !1360, inlinedAt: !1265)
!1365 = !DILocation(line: 592, column: 57, scope: !1360, inlinedAt: !1265)
!1366 = !DILocation(line: 592, column: 54, scope: !1360, inlinedAt: !1265)
!1367 = !DILocation(line: 592, column: 7, scope: !1234, inlinedAt: !1265)
!1368 = !DILocation(line: 594, column: 15, scope: !1369, inlinedAt: !1265)
!1369 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 593, column: 5)
!1370 = !DILocation(line: 594, column: 7, scope: !1369, inlinedAt: !1265)
!1371 = !DILocation(line: 595, column: 7, scope: !1369, inlinedAt: !1265)
!1372 = !DILocation(line: 596, column: 5, scope: !1369, inlinedAt: !1265)
!1373 = !DILocation(line: 598, column: 50, scope: !1374, inlinedAt: !1265)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 598, column: 3)
!1375 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 598, column: 3)
!1376 = !DILocation(line: 598, column: 43, scope: !1374, inlinedAt: !1265)
!1377 = !DILocation(line: 598, column: 29, scope: !1374, inlinedAt: !1265)
!1378 = !DILocation(line: 598, column: 3, scope: !1375, inlinedAt: !1265)
!1379 = !DILocation(line: 600, column: 27, scope: !1380, inlinedAt: !1265)
!1380 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 599, column: 5)
!1381 = !DILocation(line: 600, column: 19, scope: !1380, inlinedAt: !1265)
!1382 = !DILocation(line: 601, column: 22, scope: !1380, inlinedAt: !1265)
!1383 = !DILocation(line: 601, column: 7, scope: !1380, inlinedAt: !1265)
!1384 = !DILocation(line: 602, column: 27, scope: !1380, inlinedAt: !1265)
!1385 = !DILocation(line: 602, column: 19, scope: !1380, inlinedAt: !1265)
!1386 = !DILocation(line: 598, column: 69, scope: !1374, inlinedAt: !1265)
!1387 = distinct !{!1387, !1388, !1389}
!1388 = !DILocation(line: 598, column: 3, scope: !1375)
!1389 = !DILocation(line: 603, column: 5, scope: !1375)
!1390 = !DILocation(line: 0, scope: !1374, inlinedAt: !1265)
!1391 = !DILocation(line: 0, scope: !1380, inlinedAt: !1265)
!1392 = !DILocation(line: 606, column: 15, scope: !1261, inlinedAt: !1265)
!1393 = !DILocation(line: 606, column: 7, scope: !1234, inlinedAt: !1265)
!1394 = !DILocation(line: 608, column: 30, scope: !1260, inlinedAt: !1265)
!1395 = !DILocation(line: 608, column: 14, scope: !1260, inlinedAt: !1265)
!1396 = !DILocation(line: 609, column: 32, scope: !1260, inlinedAt: !1265)
!1397 = !DILocation(line: 610, column: 19, scope: !1260, inlinedAt: !1265)
!1398 = !DILocation(line: 611, column: 14, scope: !1260, inlinedAt: !1265)
!1399 = !DILocation(line: 611, column: 16, scope: !1260, inlinedAt: !1265)
!1400 = !DILocation(line: 609, column: 51, scope: !1260, inlinedAt: !1265)
!1401 = !DILocation(line: 609, column: 44, scope: !1260, inlinedAt: !1265)
!1402 = !DILocation(line: 609, column: 19, scope: !1260, inlinedAt: !1265)
!1403 = !DILocation(line: 611, column: 56, scope: !1260, inlinedAt: !1265)
!1404 = !DILocation(line: 611, column: 24, scope: !1260, inlinedAt: !1265)
!1405 = !DILocation(line: 611, column: 7, scope: !1260, inlinedAt: !1265)
!1406 = !DILocation(line: 613, column: 11, scope: !1407, inlinedAt: !1265)
!1407 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 612, column: 9)
!1408 = !DILocation(line: 614, column: 11, scope: !1407, inlinedAt: !1265)
!1409 = !DILocation(line: 615, column: 11, scope: !1407, inlinedAt: !1265)
!1410 = distinct !{!1410, !1411, !1412}
!1411 = !DILocation(line: 611, column: 7, scope: !1260)
!1412 = !DILocation(line: 616, column: 9, scope: !1260)
!1413 = !DILocation(line: 617, column: 24, scope: !1260, inlinedAt: !1265)
!1414 = !DILocation(line: 617, column: 19, scope: !1260, inlinedAt: !1265)
!1415 = !DILocation(line: 618, column: 7, scope: !1260, inlinedAt: !1265)
!1416 = !DILocation(line: 619, column: 5, scope: !1260, inlinedAt: !1265)
!1417 = !DILocation(line: 622, column: 3, scope: !1234, inlinedAt: !1265)
!1418 = !DILocation(line: 624, column: 20, scope: !1419, inlinedAt: !1265)
!1419 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 623, column: 5)
!1420 = !DILocation(line: 625, column: 13, scope: !1419, inlinedAt: !1265)
!1421 = !DILocation(line: 625, column: 7, scope: !1419, inlinedAt: !1265)
!1422 = distinct !{!1422, !1423, !1424}
!1423 = !DILocation(line: 622, column: 3, scope: !1234)
!1424 = !DILocation(line: 627, column: 5, scope: !1234)
!1425 = !DILocation(line: 629, column: 9, scope: !1426, inlinedAt: !1265)
!1426 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 629, column: 7)
!1427 = !DILocation(line: 629, column: 24, scope: !1426, inlinedAt: !1265)
!1428 = !DILocation(line: 629, column: 27, scope: !1426, inlinedAt: !1265)
!1429 = !DILocation(line: 629, column: 72, scope: !1426, inlinedAt: !1265)
!1430 = !DILocation(line: 629, column: 7, scope: !1234, inlinedAt: !1265)
!1431 = !DILocation(line: 0, scope: !1353, inlinedAt: !1265)
!1432 = !DILocation(line: 631, column: 10, scope: !1234, inlinedAt: !1265)
!1433 = !DILocation(line: 758, column: 5, scope: !939, inlinedAt: !948)
!1434 = !DILocation(line: 766, column: 20, scope: !938, inlinedAt: !948)
!1435 = !DILocation(line: 767, column: 15, scope: !938, inlinedAt: !948)
!1436 = !DILocation(line: 646, column: 40, scope: !909, inlinedAt: !937)
!1437 = !DILocation(line: 646, column: 61, scope: !909, inlinedAt: !937)
!1438 = !DILocation(line: 647, column: 38, scope: !909, inlinedAt: !937)
!1439 = !DILocation(line: 648, column: 34, scope: !909, inlinedAt: !937)
!1440 = !DILocation(line: 648, column: 51, scope: !909, inlinedAt: !937)
!1441 = !DILocation(line: 650, column: 3, scope: !909, inlinedAt: !937)
!1442 = !DILocation(line: 652, column: 9, scope: !909, inlinedAt: !937)
!1443 = !DILocation(line: 656, column: 21, scope: !909, inlinedAt: !937)
!1444 = !DILocation(line: 656, column: 34, scope: !909, inlinedAt: !937)
!1445 = !DILocation(line: 651, column: 10, scope: !909, inlinedAt: !937)
!1446 = !DILocation(line: 657, column: 18, scope: !1447, inlinedAt: !937)
!1447 = distinct !DILexicalBlock(scope: !909, file: !3, line: 657, column: 7)
!1448 = !DILocation(line: 657, column: 7, scope: !909, inlinedAt: !937)
!1449 = !DILocation(line: 661, column: 7, scope: !909, inlinedAt: !937)
!1450 = !DILocation(line: 662, column: 7, scope: !1451, inlinedAt: !937)
!1451 = distinct !DILexicalBlock(scope: !909, file: !3, line: 662, column: 7)
!1452 = !DILocation(line: 662, column: 51, scope: !1451, inlinedAt: !937)
!1453 = !DILocation(line: 662, column: 7, scope: !909, inlinedAt: !937)
!1454 = !DILocation(line: 664, column: 16, scope: !909, inlinedAt: !937)
!1455 = !DILocation(line: 665, column: 18, scope: !1456, inlinedAt: !937)
!1456 = distinct !DILexicalBlock(scope: !909, file: !3, line: 665, column: 7)
!1457 = !DILocation(line: 665, column: 7, scope: !909, inlinedAt: !937)
!1458 = !DILocation(line: 667, column: 17, scope: !1459, inlinedAt: !937)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 666, column: 5)
!1460 = !DILocation(line: 667, column: 24, scope: !1459, inlinedAt: !937)
!1461 = !DILocation(line: 667, column: 47, scope: !1459, inlinedAt: !937)
!1462 = !DILocation(line: 667, column: 7, scope: !1459, inlinedAt: !937)
!1463 = !DILocation(line: 668, column: 7, scope: !1459, inlinedAt: !937)
!1464 = !DILocation(line: 675, column: 18, scope: !1465, inlinedAt: !937)
!1465 = distinct !DILexicalBlock(scope: !909, file: !3, line: 675, column: 7)
!1466 = !DILocation(line: 675, column: 15, scope: !1465, inlinedAt: !937)
!1467 = !DILocation(line: 675, column: 50, scope: !1465, inlinedAt: !937)
!1468 = !DILocation(line: 675, column: 32, scope: !1465, inlinedAt: !937)
!1469 = !DILocation(line: 675, column: 58, scope: !1465, inlinedAt: !937)
!1470 = !DILocation(line: 675, column: 55, scope: !1465, inlinedAt: !937)
!1471 = !DILocation(line: 675, column: 7, scope: !909, inlinedAt: !937)
!1472 = !DILocation(line: 664, column: 14, scope: !909, inlinedAt: !937)
!1473 = !DILocation(line: 0, scope: !932, inlinedAt: !937)
!1474 = !DILocation(line: 682, column: 14, scope: !923, inlinedAt: !937)
!1475 = !DILocation(line: 683, column: 7, scope: !923, inlinedAt: !937)
!1476 = !DILocation(line: 0, scope: !926, inlinedAt: !937)
!1477 = !DILocation(line: 685, column: 15, scope: !927, inlinedAt: !937)
!1478 = !DILocation(line: 686, column: 15, scope: !926, inlinedAt: !937)
!1479 = !DILocation(line: 686, column: 13, scope: !926, inlinedAt: !937)
!1480 = !DILocation(line: 690, column: 20, scope: !925, inlinedAt: !937)
!1481 = !DILocation(line: 689, column: 27, scope: !925, inlinedAt: !937)
!1482 = !DILocation(line: 691, column: 22, scope: !1483, inlinedAt: !937)
!1483 = distinct !DILexicalBlock(scope: !925, file: !3, line: 691, column: 19)
!1484 = !DILocation(line: 693, column: 22, scope: !925, inlinedAt: !937)
!1485 = !DILocation(line: 0, scope: !923, inlinedAt: !937)
!1486 = !DILocation(line: 695, column: 22, scope: !932, inlinedAt: !937)
!1487 = !DILocation(line: 695, column: 25, scope: !932, inlinedAt: !937)
!1488 = !DILocation(line: 695, column: 15, scope: !927, inlinedAt: !937)
!1489 = distinct !{!1489, !1490, !1491}
!1490 = !DILocation(line: 683, column: 7, scope: !923)
!1491 = !DILocation(line: 721, column: 9, scope: !923)
!1492 = !DILocation(line: 700, column: 29, scope: !930, inlinedAt: !937)
!1493 = !DILocation(line: 700, column: 19, scope: !931, inlinedAt: !937)
!1494 = !DILocation(line: 703, column: 23, scope: !1495, inlinedAt: !937)
!1495 = distinct !DILexicalBlock(scope: !929, file: !3, line: 703, column: 23)
!1496 = !DILocation(line: 703, column: 73, scope: !1495, inlinedAt: !937)
!1497 = !DILocation(line: 703, column: 23, scope: !929, inlinedAt: !937)
!1498 = !DILocation(line: 706, column: 42, scope: !929, inlinedAt: !937)
!1499 = !DILocation(line: 193, column: 14, scope: !970, inlinedAt: !984)
!1500 = !DILocation(line: 193, column: 32, scope: !970, inlinedAt: !984)
!1501 = !DILocation(line: 195, column: 3, scope: !970, inlinedAt: !984)
!1502 = !DILocation(line: 196, column: 16, scope: !970, inlinedAt: !984)
!1503 = !DILocation(line: 199, column: 12, scope: !970, inlinedAt: !984)
!1504 = !DILocation(line: 199, column: 3, scope: !970, inlinedAt: !984)
!1505 = !DILocation(line: 201, column: 26, scope: !979, inlinedAt: !984)
!1506 = !DILocation(line: 201, column: 14, scope: !979, inlinedAt: !984)
!1507 = !DILocation(line: 202, column: 23, scope: !979, inlinedAt: !984)
!1508 = !DILocation(line: 202, column: 14, scope: !979, inlinedAt: !984)
!1509 = !DILocation(line: 203, column: 18, scope: !1510, inlinedAt: !984)
!1510 = distinct !DILexicalBlock(scope: !979, file: !3, line: 203, column: 11)
!1511 = !DILocation(line: 203, column: 11, scope: !979, inlinedAt: !984)
!1512 = !DILocation(line: 206, column: 15, scope: !979, inlinedAt: !984)
!1513 = !DILocation(line: 208, column: 18, scope: !1514, inlinedAt: !984)
!1514 = distinct !DILexicalBlock(scope: !979, file: !3, line: 208, column: 11)
!1515 = !DILocation(line: 208, column: 34, scope: !1514, inlinedAt: !984)
!1516 = !DILocation(line: 208, column: 23, scope: !1514, inlinedAt: !984)
!1517 = !DILocation(line: 211, column: 7, scope: !979, inlinedAt: !984)
!1518 = !DILocation(line: 0, scope: !970, inlinedAt: !984)
!1519 = !DILocation(line: 215, column: 1, scope: !970, inlinedAt: !984)
!1520 = !DILocation(line: 702, column: 39, scope: !929, inlinedAt: !937)
!1521 = !DILocation(line: 709, column: 23, scope: !1522, inlinedAt: !937)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 708, column: 21)
!1523 = distinct !DILexicalBlock(scope: !929, file: !3, line: 707, column: 23)
!1524 = !DILocation(line: 710, column: 23, scope: !1522, inlinedAt: !937)
!1525 = !DILocation(line: 716, column: 40, scope: !931, inlinedAt: !937)
!1526 = !DILocation(line: 716, column: 15, scope: !931, inlinedAt: !937)
!1527 = !DILocation(line: 719, column: 47, scope: !931, inlinedAt: !937)
!1528 = !DILocation(line: 719, column: 27, scope: !931, inlinedAt: !937)
!1529 = !DILocation(line: 719, column: 24, scope: !931, inlinedAt: !937)
!1530 = !DILocation(line: 719, column: 15, scope: !931, inlinedAt: !937)
!1531 = !DILocation(line: 724, column: 15, scope: !1532, inlinedAt: !937)
!1532 = distinct !DILexicalBlock(scope: !923, file: !3, line: 724, column: 11)
!1533 = !DILocation(line: 724, column: 11, scope: !923, inlinedAt: !937)
!1534 = !DILocation(line: 729, column: 11, scope: !923, inlinedAt: !937)
!1535 = !DILocation(line: 730, column: 11, scope: !1536, inlinedAt: !937)
!1536 = distinct !DILexicalBlock(scope: !923, file: !3, line: 730, column: 11)
!1537 = !DILocation(line: 730, column: 55, scope: !1536, inlinedAt: !937)
!1538 = !DILocation(line: 730, column: 11, scope: !923, inlinedAt: !937)
!1539 = !DILocation(line: 733, column: 20, scope: !923, inlinedAt: !937)
!1540 = !DILocation(line: 734, column: 11, scope: !923, inlinedAt: !937)
!1541 = !DILocation(line: 736, column: 21, scope: !1542, inlinedAt: !937)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 735, column: 9)
!1543 = distinct !DILexicalBlock(scope: !923, file: !3, line: 734, column: 11)
!1544 = !DILocation(line: 736, column: 28, scope: !1542, inlinedAt: !937)
!1545 = !DILocation(line: 736, column: 51, scope: !1542, inlinedAt: !937)
!1546 = !DILocation(line: 736, column: 11, scope: !1542, inlinedAt: !937)
!1547 = !DILocation(line: 737, column: 11, scope: !1542, inlinedAt: !937)
!1548 = !DILocation(line: 0, scope: !931, inlinedAt: !937)
!1549 = !DILocation(line: 745, column: 1, scope: !909, inlinedAt: !937)
!1550 = !DILocation(line: 464, column: 36, scope: !826, inlinedAt: !878)
!1551 = !DILocation(line: 464, column: 50, scope: !826, inlinedAt: !878)
!1552 = !DILocation(line: 464, column: 64, scope: !826, inlinedAt: !878)
!1553 = !DILocation(line: 465, column: 43, scope: !826, inlinedAt: !878)
!1554 = !DILocation(line: 465, column: 53, scope: !826, inlinedAt: !878)
!1555 = !DILocation(line: 467, column: 9, scope: !826, inlinedAt: !878)
!1556 = !DILocation(line: 468, column: 26, scope: !825, inlinedAt: !878)
!1557 = !DILocation(line: 468, column: 56, scope: !825, inlinedAt: !878)
!1558 = !DILocation(line: 468, column: 53, scope: !825, inlinedAt: !878)
!1559 = !DILocation(line: 468, column: 7, scope: !826, inlinedAt: !878)
!1560 = !DILocation(line: 247, column: 36, scope: !778, inlinedAt: !824)
!1561 = !DILocation(line: 247, column: 50, scope: !778, inlinedAt: !824)
!1562 = !DILocation(line: 247, column: 64, scope: !778, inlinedAt: !824)
!1563 = !DILocation(line: 248, column: 30, scope: !778, inlinedAt: !824)
!1564 = !DILocation(line: 250, column: 10, scope: !778, inlinedAt: !824)
!1565 = !DILocation(line: 251, column: 13, scope: !778, inlinedAt: !824)
!1566 = !DILocation(line: 252, column: 8, scope: !778, inlinedAt: !824)
!1567 = !DILocation(line: 289, column: 7, scope: !778, inlinedAt: !824)
!1568 = !DILocation(line: 291, column: 12, scope: !776, inlinedAt: !824)
!1569 = !DILocation(line: 292, column: 12, scope: !776, inlinedAt: !824)
!1570 = !DILocation(line: 293, column: 14, scope: !776, inlinedAt: !824)
!1571 = !DILocation(line: 295, column: 7, scope: !776, inlinedAt: !824)
!1572 = !DILocalVariable(name: "n", arg: 1, scope: !1573, file: !249, line: 99, type: !43)
!1573 = distinct !DISubprogram(name: "xnmalloc", scope: !249, file: !249, line: 99, type: !1574, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1576)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!33, !43, !43}
!1576 = !{!1572, !1577}
!1577 = !DILocalVariable(name: "s", arg: 2, scope: !1573, file: !249, line: 99, type: !43)
!1578 = !DILocation(line: 99, column: 18, scope: !1573, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 296, column: 14, scope: !776, inlinedAt: !824)
!1580 = !DILocation(line: 99, column: 28, scope: !1573, inlinedAt: !1579)
!1581 = !DILocation(line: 101, column: 7, scope: !1573, inlinedAt: !1579)
!1582 = !DILocation(line: 102, column: 5, scope: !1583, inlinedAt: !1579)
!1583 = distinct !DILexicalBlock(scope: !1573, file: !249, line: 101, column: 7)
!1584 = !DILocation(line: 103, column: 10, scope: !1573, inlinedAt: !1579)
!1585 = !DILocation(line: 296, column: 12, scope: !776, inlinedAt: !824)
!1586 = !DILocation(line: 297, column: 19, scope: !776, inlinedAt: !824)
!1587 = !DILocation(line: 297, column: 12, scope: !776, inlinedAt: !824)
!1588 = !DILocation(line: 294, column: 12, scope: !776, inlinedAt: !824)
!1589 = !DILocation(line: 299, column: 7, scope: !799, inlinedAt: !824)
!1590 = !DILocation(line: 301, column: 42, scope: !797, inlinedAt: !824)
!1591 = !DILocation(line: 301, column: 27, scope: !797, inlinedAt: !824)
!1592 = !DILocation(line: 301, column: 18, scope: !797, inlinedAt: !824)
!1593 = !DILocation(line: 302, column: 18, scope: !797, inlinedAt: !824)
!1594 = !DILocation(line: 303, column: 22, scope: !1595, inlinedAt: !824)
!1595 = distinct !DILexicalBlock(scope: !797, file: !3, line: 303, column: 15)
!1596 = !DILocation(line: 303, column: 15, scope: !797, inlinedAt: !824)
!1597 = !DILocation(line: 305, column: 19, scope: !1598, inlinedAt: !824)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 305, column: 19)
!1599 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 304, column: 13)
!1600 = !DILocation(line: 305, column: 25, scope: !1598, inlinedAt: !824)
!1601 = !DILocation(line: 305, column: 19, scope: !1599, inlinedAt: !824)
!1602 = !DILocation(line: 313, column: 26, scope: !1603, inlinedAt: !824)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 313, column: 19)
!1604 = !DILocation(line: 315, column: 23, scope: !1605, inlinedAt: !824)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 315, column: 23)
!1606 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 314, column: 17)
!1607 = !DILocation(line: 313, column: 19, scope: !1599, inlinedAt: !824)
!1608 = !DILocation(line: 323, column: 39, scope: !1609, inlinedAt: !824)
!1609 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 322, column: 21)
!1610 = !DILocation(line: 0, scope: !776, inlinedAt: !824)
!1611 = !DILocation(line: 331, column: 17, scope: !1612, inlinedAt: !824)
!1612 = distinct !DILexicalBlock(scope: !797, file: !3, line: 331, column: 15)
!1613 = !DILocation(line: 331, column: 15, scope: !797, inlinedAt: !824)
!1614 = !DILocation(line: 333, column: 38, scope: !1615, inlinedAt: !824)
!1615 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 332, column: 13)
!1616 = !DILocation(line: 333, column: 27, scope: !1615, inlinedAt: !824)
!1617 = !DILocation(line: 334, column: 32, scope: !1615, inlinedAt: !824)
!1618 = !DILocation(line: 334, column: 30, scope: !1615, inlinedAt: !824)
!1619 = !DILocation(line: 334, column: 36, scope: !1615, inlinedAt: !824)
!1620 = !DILocation(line: 334, column: 15, scope: !1615, inlinedAt: !824)
!1621 = !DILocation(line: 335, column: 13, scope: !1615, inlinedAt: !824)
!1622 = !DILocation(line: 0, scope: !1615, inlinedAt: !824)
!1623 = !DILocation(line: 338, column: 23, scope: !1624, inlinedAt: !824)
!1624 = distinct !DILexicalBlock(scope: !797, file: !3, line: 338, column: 15)
!1625 = !DILocation(line: 338, column: 15, scope: !797, inlinedAt: !824)
!1626 = !DILocation(line: 340, column: 37, scope: !1627, inlinedAt: !824)
!1627 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 339, column: 13)
!1628 = !DILocation(line: 340, column: 27, scope: !1627, inlinedAt: !824)
!1629 = !DILocation(line: 341, column: 15, scope: !1627, inlinedAt: !824)
!1630 = !DILocation(line: 342, column: 13, scope: !1627, inlinedAt: !824)
!1631 = !DILocation(line: 307, column: 36, scope: !1632, inlinedAt: !824)
!1632 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 306, column: 17)
!1633 = !DILocation(line: 307, column: 59, scope: !1632, inlinedAt: !824)
!1634 = !DILocation(line: 307, column: 19, scope: !1632, inlinedAt: !824)
!1635 = !DILocation(line: 299, column: 35, scope: !798, inlinedAt: !824)
!1636 = !DILocation(line: 299, column: 25, scope: !798, inlinedAt: !824)
!1637 = distinct !{!1637, !1638, !1639}
!1638 = !DILocation(line: 299, column: 7, scope: !799)
!1639 = !DILocation(line: 343, column: 9, scope: !799)
!1640 = !DILocation(line: 0, scope: !778, inlinedAt: !824)
!1641 = !DILocation(line: 345, column: 7, scope: !776, inlinedAt: !824)
!1642 = !DILocation(line: 346, column: 5, scope: !777, inlinedAt: !824)
!1643 = !DILocation(line: 346, column: 5, scope: !776, inlinedAt: !824)
!1644 = !DILocation(line: 362, column: 14, scope: !802, inlinedAt: !824)
!1645 = !DILocation(line: 361, column: 14, scope: !802, inlinedAt: !824)
!1646 = !DILocation(line: 356, column: 14, scope: !802, inlinedAt: !824)
!1647 = !DILocation(line: 355, column: 17, scope: !802, inlinedAt: !824)
!1648 = !DILocation(line: 355, column: 14, scope: !802, inlinedAt: !824)
!1649 = !DILocation(line: 354, column: 12, scope: !802, inlinedAt: !824)
!1650 = !DILocation(line: 352, column: 12, scope: !802, inlinedAt: !824)
!1651 = !DILocation(line: 367, column: 29, scope: !1652, inlinedAt: !824)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 367, column: 15)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 366, column: 9)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 365, column: 7)
!1655 = distinct !DILexicalBlock(scope: !802, file: !3, line: 365, column: 7)
!1656 = !DILocation(line: 367, column: 15, scope: !1653, inlinedAt: !824)
!1657 = !DILocation(line: 370, column: 33, scope: !1658, inlinedAt: !824)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 370, column: 19)
!1659 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 368, column: 13)
!1660 = !DILocation(line: 370, column: 19, scope: !1659, inlinedAt: !824)
!1661 = !DILocation(line: 372, column: 38, scope: !1662, inlinedAt: !824)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 372, column: 24)
!1663 = !DILocation(line: 373, column: 31, scope: !1662, inlinedAt: !824)
!1664 = !DILocation(line: 372, column: 24, scope: !1658, inlinedAt: !824)
!1665 = !DILocation(line: 0, scope: !1662, inlinedAt: !824)
!1666 = !DILocalVariable(name: "p", arg: 1, scope: !1667, file: !249, line: 112, type: !33)
!1667 = distinct !DISubprogram(name: "xnrealloc", scope: !249, file: !249, line: 112, type: !1668, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1670)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!33, !33, !43, !43}
!1670 = !{!1666, !1671, !1672}
!1671 = !DILocalVariable(name: "n", arg: 2, scope: !1667, file: !249, line: 112, type: !43)
!1672 = !DILocalVariable(name: "s", arg: 3, scope: !1667, file: !249, line: 112, type: !43)
!1673 = !DILocation(line: 112, column: 18, scope: !1667, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 376, column: 19, scope: !1659, inlinedAt: !824)
!1675 = !DILocation(line: 112, column: 28, scope: !1667, inlinedAt: !1674)
!1676 = !DILocation(line: 112, column: 38, scope: !1667, inlinedAt: !1674)
!1677 = !DILocation(line: 114, column: 7, scope: !1678, inlinedAt: !1674)
!1678 = distinct !DILexicalBlock(scope: !1667, file: !249, line: 114, column: 7)
!1679 = !DILocation(line: 114, column: 7, scope: !1667, inlinedAt: !1674)
!1680 = !DILocation(line: 115, column: 5, scope: !1678, inlinedAt: !1674)
!1681 = !DILocation(line: 116, column: 25, scope: !1667, inlinedAt: !1674)
!1682 = !DILocation(line: 116, column: 10, scope: !1667, inlinedAt: !1674)
!1683 = !DILocation(line: 376, column: 19, scope: !1659, inlinedAt: !824)
!1684 = !DILocation(line: 377, column: 13, scope: !1659, inlinedAt: !824)
!1685 = !DILocation(line: 0, scope: !802, inlinedAt: !824)
!1686 = !DILocation(line: 379, column: 17, scope: !1687, inlinedAt: !824)
!1687 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 379, column: 15)
!1688 = !DILocation(line: 379, column: 15, scope: !1653, inlinedAt: !824)
!1689 = !DILocation(line: 384, column: 35, scope: !1653, inlinedAt: !824)
!1690 = !DILocation(line: 381, column: 22, scope: !1691, inlinedAt: !824)
!1691 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 380, column: 13)
!1692 = !DILocation(line: 381, column: 15, scope: !1691, inlinedAt: !824)
!1693 = !DILocation(line: 381, column: 20, scope: !1691, inlinedAt: !824)
!1694 = !DILocation(line: 382, column: 27, scope: !1691, inlinedAt: !824)
!1695 = !DILocation(line: 383, column: 13, scope: !1691, inlinedAt: !824)
!1696 = !DILocation(line: 0, scope: !1691, inlinedAt: !824)
!1697 = !DILocation(line: 384, column: 20, scope: !1653, inlinedAt: !824)
!1698 = !DILocation(line: 385, column: 22, scope: !1699, inlinedAt: !824)
!1699 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 385, column: 15)
!1700 = !DILocation(line: 385, column: 15, scope: !1653, inlinedAt: !824)
!1701 = !DILocation(line: 387, column: 19, scope: !1702, inlinedAt: !824)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 387, column: 19)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 386, column: 13)
!1704 = !DILocation(line: 387, column: 25, scope: !1702, inlinedAt: !824)
!1705 = !DILocation(line: 387, column: 19, scope: !1703, inlinedAt: !824)
!1706 = !DILocation(line: 389, column: 36, scope: !1707, inlinedAt: !824)
!1707 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 388, column: 17)
!1708 = !DILocation(line: 389, column: 59, scope: !1707, inlinedAt: !824)
!1709 = !DILocation(line: 389, column: 19, scope: !1707, inlinedAt: !824)
!1710 = !DILocation(line: 391, column: 19, scope: !1707, inlinedAt: !824)
!1711 = !DILocation(line: 396, column: 21, scope: !1712, inlinedAt: !824)
!1712 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 396, column: 15)
!1713 = !DILocation(line: 396, column: 15, scope: !1653, inlinedAt: !824)
!1714 = !DILocation(line: 399, column: 15, scope: !1715, inlinedAt: !824)
!1715 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 399, column: 15)
!1716 = !DILocation(line: 399, column: 15, scope: !1653, inlinedAt: !824)
!1717 = !DILocation(line: 401, column: 27, scope: !1718, inlinedAt: !824)
!1718 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 400, column: 13)
!1719 = !DILocation(line: 402, column: 30, scope: !1718, inlinedAt: !824)
!1720 = !DILocation(line: 402, column: 15, scope: !1718, inlinedAt: !824)
!1721 = !DILocation(line: 403, column: 13, scope: !1718, inlinedAt: !824)
!1722 = !DILocation(line: 365, column: 66, scope: !1654, inlinedAt: !824)
!1723 = !DILocation(line: 365, column: 71, scope: !1654, inlinedAt: !824)
!1724 = !DILocation(line: 353, column: 14, scope: !802, inlinedAt: !824)
!1725 = !DILocation(line: 365, column: 32, scope: !1654, inlinedAt: !824)
!1726 = !DILocation(line: 365, column: 7, scope: !1655, inlinedAt: !824)
!1727 = distinct !{!1727, !1728, !1729}
!1728 = !DILocation(line: 365, column: 7, scope: !1655)
!1729 = !DILocation(line: 404, column: 9, scope: !1655)
!1730 = !DILocation(line: 407, column: 11, scope: !802, inlinedAt: !824)
!1731 = !DILocation(line: 409, column: 15, scope: !816, inlinedAt: !824)
!1732 = !DILocation(line: 411, column: 57, scope: !814, inlinedAt: !824)
!1733 = !DILocation(line: 411, column: 22, scope: !814, inlinedAt: !824)
!1734 = !DILocation(line: 412, column: 27, scope: !814, inlinedAt: !824)
!1735 = !DILocation(line: 413, column: 23, scope: !1736, inlinedAt: !824)
!1736 = distinct !DILexicalBlock(scope: !814, file: !3, line: 413, column: 19)
!1737 = !DILocation(line: 0, scope: !1738, inlinedAt: !824)
!1738 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 418, column: 17)
!1739 = !DILocation(line: 413, column: 19, scope: !814, inlinedAt: !824)
!1740 = !DILocation(line: 415, column: 19, scope: !1741, inlinedAt: !824)
!1741 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 414, column: 17)
!1742 = !DILocation(line: 416, column: 17, scope: !1741, inlinedAt: !824)
!1743 = !DILocation(line: 419, column: 19, scope: !1738, inlinedAt: !824)
!1744 = !DILocation(line: 420, column: 34, scope: !1738, inlinedAt: !824)
!1745 = !DILocation(line: 420, column: 49, scope: !1738, inlinedAt: !824)
!1746 = !DILocation(line: 420, column: 19, scope: !1738, inlinedAt: !824)
!1747 = !DILocation(line: 423, column: 26, scope: !820, inlinedAt: !824)
!1748 = !DILocation(line: 423, column: 20, scope: !815, inlinedAt: !824)
!1749 = !DILocation(line: 437, column: 22, scope: !819, inlinedAt: !824)
!1750 = !DILocation(line: 438, column: 33, scope: !819, inlinedAt: !824)
!1751 = !DILocation(line: 438, column: 22, scope: !819, inlinedAt: !824)
!1752 = !DILocation(line: 439, column: 27, scope: !819, inlinedAt: !824)
!1753 = !DILocation(line: 440, column: 30, scope: !819, inlinedAt: !824)
!1754 = !DILocation(line: 440, column: 15, scope: !819, inlinedAt: !824)
!1755 = !DILocation(line: 441, column: 13, scope: !819, inlinedAt: !824)
!1756 = !DILocation(line: 445, column: 21, scope: !1757, inlinedAt: !824)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 445, column: 7)
!1758 = distinct !DILexicalBlock(scope: !802, file: !3, line: 445, column: 7)
!1759 = !DILocation(line: 445, column: 7, scope: !1758, inlinedAt: !824)
!1760 = !DILocation(line: 446, column: 15, scope: !1757, inlinedAt: !824)
!1761 = !DILocation(line: 446, column: 9, scope: !1757, inlinedAt: !824)
!1762 = !DILocation(line: 445, column: 33, scope: !1757, inlinedAt: !824)
!1763 = distinct !{!1763, !1764, !1765}
!1764 = !DILocation(line: 445, column: 7, scope: !1758)
!1765 = !DILocation(line: 446, column: 19, scope: !1758)
!1766 = !DILocation(line: 447, column: 7, scope: !802, inlinedAt: !824)
!1767 = !DILocation(line: 0, scope: !1707, inlinedAt: !824)
!1768 = !DILocation(line: 450, column: 9, scope: !1769, inlinedAt: !824)
!1769 = distinct !DILexicalBlock(scope: !778, file: !3, line: 450, column: 7)
!1770 = !DILocation(line: 450, column: 24, scope: !1769, inlinedAt: !824)
!1771 = !DILocation(line: 450, column: 27, scope: !1769, inlinedAt: !824)
!1772 = !DILocation(line: 450, column: 72, scope: !1769, inlinedAt: !824)
!1773 = !DILocation(line: 450, column: 7, scope: !778, inlinedAt: !824)
!1774 = !DILocation(line: 0, scope: !1632, inlinedAt: !824)
!1775 = !DILocation(line: 452, column: 10, scope: !778, inlinedAt: !824)
!1776 = !DILocation(line: 469, column: 5, scope: !825, inlinedAt: !878)
!1777 = !DILocation(line: 474, column: 25, scope: !875, inlinedAt: !878)
!1778 = !DILocation(line: 474, column: 13, scope: !875, inlinedAt: !878)
!1779 = !DILocation(line: 475, column: 31, scope: !875, inlinedAt: !878)
!1780 = !DILocation(line: 475, column: 13, scope: !875, inlinedAt: !878)
!1781 = !DILocation(line: 477, column: 27, scope: !1782, inlinedAt: !878)
!1782 = distinct !DILexicalBlock(scope: !875, file: !3, line: 477, column: 11)
!1783 = !DILocation(line: 477, column: 11, scope: !875, inlinedAt: !878)
!1784 = !DILocation(line: 480, column: 62, scope: !875, inlinedAt: !878)
!1785 = !DILocation(line: 193, column: 14, scope: !970, inlinedAt: !982)
!1786 = !DILocation(line: 193, column: 32, scope: !970, inlinedAt: !982)
!1787 = !DILocation(line: 195, column: 3, scope: !970, inlinedAt: !982)
!1788 = !DILocation(line: 196, column: 16, scope: !970, inlinedAt: !982)
!1789 = !DILocation(line: 199, column: 12, scope: !970, inlinedAt: !982)
!1790 = !DILocation(line: 199, column: 3, scope: !970, inlinedAt: !982)
!1791 = !DILocation(line: 201, column: 26, scope: !979, inlinedAt: !982)
!1792 = !DILocation(line: 201, column: 14, scope: !979, inlinedAt: !982)
!1793 = !DILocation(line: 202, column: 23, scope: !979, inlinedAt: !982)
!1794 = !DILocation(line: 202, column: 14, scope: !979, inlinedAt: !982)
!1795 = !DILocation(line: 203, column: 18, scope: !1510, inlinedAt: !982)
!1796 = !DILocation(line: 203, column: 11, scope: !979, inlinedAt: !982)
!1797 = !DILocation(line: 206, column: 15, scope: !979, inlinedAt: !982)
!1798 = !DILocation(line: 208, column: 18, scope: !1514, inlinedAt: !982)
!1799 = !DILocation(line: 208, column: 34, scope: !1514, inlinedAt: !982)
!1800 = !DILocation(line: 208, column: 23, scope: !1514, inlinedAt: !982)
!1801 = !DILocation(line: 211, column: 7, scope: !979, inlinedAt: !982)
!1802 = !DILocation(line: 215, column: 1, scope: !970, inlinedAt: !982)
!1803 = !DILocation(line: 481, column: 11, scope: !875, inlinedAt: !878)
!1804 = !DILocation(line: 0, scope: !970, inlinedAt: !982)
!1805 = !DILocation(line: 480, column: 27, scope: !875, inlinedAt: !878)
!1806 = !DILocation(line: 484, column: 7, scope: !875, inlinedAt: !878)
!1807 = !DILocation(line: 485, column: 7, scope: !875, inlinedAt: !878)
!1808 = !DILocation(line: 0, scope: !1216, inlinedAt: !893)
!1809 = !DILocation(line: 861, column: 5, scope: !881, inlinedAt: !893)
!1810 = !DILocation(line: 0, scope: !968, inlinedAt: !893)
!1811 = !DILocation(line: 862, column: 7, scope: !882, inlinedAt: !893)
!1812 = !DILocation(line: 798, column: 25, scope: !950, inlinedAt: !967)
!1813 = !DILocation(line: 798, column: 39, scope: !950, inlinedAt: !967)
!1814 = !DILocation(line: 798, column: 53, scope: !950, inlinedAt: !967)
!1815 = !DILocation(line: 802, column: 3, scope: !950, inlinedAt: !967)
!1816 = !DILocation(line: 804, column: 27, scope: !958, inlinedAt: !967)
!1817 = !DILocation(line: 804, column: 14, scope: !958, inlinedAt: !967)
!1818 = !DILocation(line: 805, column: 14, scope: !958, inlinedAt: !967)
!1819 = !DILocation(line: 807, column: 11, scope: !958, inlinedAt: !967)
!1820 = !DILocation(line: 814, column: 7, scope: !958, inlinedAt: !967)
!1821 = !DILocation(line: 809, column: 21, scope: !1822, inlinedAt: !967)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 808, column: 9)
!1823 = distinct !DILexicalBlock(scope: !958, file: !3, line: 807, column: 11)
!1824 = !DILocation(line: 809, column: 28, scope: !1822, inlinedAt: !967)
!1825 = !DILocation(line: 809, column: 51, scope: !1822, inlinedAt: !967)
!1826 = !DILocation(line: 809, column: 11, scope: !1822, inlinedAt: !967)
!1827 = !DILocation(line: 815, column: 34, scope: !962, inlinedAt: !967)
!1828 = !DILocation(line: 815, column: 13, scope: !962, inlinedAt: !967)
!1829 = !DILocation(line: 815, column: 38, scope: !962, inlinedAt: !967)
!1830 = !DILocation(line: 815, column: 50, scope: !962, inlinedAt: !967)
!1831 = !DILocation(line: 815, column: 53, scope: !962, inlinedAt: !967)
!1832 = !DILocation(line: 815, column: 70, scope: !962, inlinedAt: !967)
!1833 = !DILocation(line: 815, column: 13, scope: !958, inlinedAt: !967)
!1834 = !DILocation(line: 821, column: 28, scope: !965, inlinedAt: !967)
!1835 = !DILocation(line: 821, column: 17, scope: !965, inlinedAt: !967)
!1836 = !DILocation(line: 821, column: 57, scope: !965, inlinedAt: !967)
!1837 = !DILocation(line: 821, column: 17, scope: !961, inlinedAt: !967)
!1838 = !DILocation(line: 823, column: 17, scope: !964, inlinedAt: !967)
!1839 = !DILocation(line: 823, column: 29, scope: !964, inlinedAt: !967)
!1840 = !DILocation(line: 467, column: 1, scope: !1179, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 824, column: 21, scope: !1842, inlinedAt: !967)
!1842 = distinct !DILexicalBlock(scope: !964, file: !3, line: 824, column: 21)
!1843 = !DILocation(line: 469, column: 10, scope: !1179, inlinedAt: !1841)
!1844 = !DILocation(line: 824, column: 37, scope: !1842, inlinedAt: !967)
!1845 = !DILocation(line: 824, column: 42, scope: !1842, inlinedAt: !967)
!1846 = !DILocation(line: 824, column: 45, scope: !1842, inlinedAt: !967)
!1847 = !DILocation(line: 824, column: 21, scope: !964, inlinedAt: !967)
!1848 = !DILocation(line: 825, column: 19, scope: !1842, inlinedAt: !967)
!1849 = !DILocation(line: 826, column: 15, scope: !965, inlinedAt: !967)
!1850 = !DILocation(line: 826, column: 15, scope: !964, inlinedAt: !967)
!1851 = !DILocation(line: 814, column: 29, scope: !958, inlinedAt: !967)
!1852 = distinct !{!1852, !1853, !1854}
!1853 = !DILocation(line: 814, column: 7, scope: !958)
!1854 = !DILocation(line: 828, column: 11, scope: !958)
!1855 = !DILocation(line: 829, column: 7, scope: !958, inlinedAt: !967)
!1856 = !DILocation(line: 0, scope: !950, inlinedAt: !967)
!1857 = !DILocation(line: 832, column: 1, scope: !950, inlinedAt: !967)
!1858 = !DILocation(line: 863, column: 5, scope: !968, inlinedAt: !893)
!1859 = !DILocation(line: 773, column: 25, scope: !986, inlinedAt: !995)
!1860 = !DILocation(line: 773, column: 39, scope: !986, inlinedAt: !995)
!1861 = !DILocation(line: 773, column: 53, scope: !986, inlinedAt: !995)
!1862 = !DILocation(line: 776, column: 10, scope: !986, inlinedAt: !995)
!1863 = !DILocation(line: 778, column: 3, scope: !986, inlinedAt: !995)
!1864 = !DILocation(line: 781, column: 26, scope: !1865, inlinedAt: !995)
!1865 = distinct !DILexicalBlock(scope: !993, file: !3, line: 781, column: 11)
!1866 = !DILocation(line: 781, column: 11, scope: !993, inlinedAt: !995)
!1867 = !DILocation(line: 783, column: 20, scope: !993, inlinedAt: !995)
!1868 = !DILocation(line: 780, column: 14, scope: !993, inlinedAt: !995)
!1869 = !DILocation(line: 784, column: 11, scope: !993, inlinedAt: !995)
!1870 = !DILocation(line: 786, column: 21, scope: !1871, inlinedAt: !995)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 785, column: 9)
!1872 = distinct !DILexicalBlock(scope: !993, file: !3, line: 784, column: 11)
!1873 = !DILocation(line: 786, column: 28, scope: !1871, inlinedAt: !995)
!1874 = !DILocation(line: 786, column: 51, scope: !1871, inlinedAt: !995)
!1875 = !DILocation(line: 786, column: 11, scope: !1871, inlinedAt: !995)
!1876 = !DILocation(line: 791, column: 7, scope: !993, inlinedAt: !995)
!1877 = !DILocation(line: 792, column: 22, scope: !993, inlinedAt: !995)
!1878 = !DILocation(line: 0, scope: !986, inlinedAt: !995)
!1879 = !DILocation(line: 795, column: 1, scope: !986, inlinedAt: !995)
!1880 = !DILocation(line: 865, column: 5, scope: !968, inlinedAt: !893)
!1881 = !DILocation(line: 894, column: 17, scope: !1882, inlinedAt: !905)
!1882 = distinct !DILexicalBlock(scope: !894, file: !3, line: 894, column: 7)
!1883 = !DILocation(line: 894, column: 20, scope: !1882, inlinedAt: !905)
!1884 = !DILocation(line: 894, column: 31, scope: !1882, inlinedAt: !905)
!1885 = !DILocation(line: 894, column: 7, scope: !894, inlinedAt: !905)
!1886 = !DILocation(line: 896, column: 17, scope: !1887, inlinedAt: !905)
!1887 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 895, column: 5)
!1888 = !DILocation(line: 896, column: 24, scope: !1887, inlinedAt: !905)
!1889 = !DILocation(line: 896, column: 49, scope: !1887, inlinedAt: !905)
!1890 = !DILocation(line: 896, column: 7, scope: !1887, inlinedAt: !905)
!1891 = !DILocation(line: 897, column: 7, scope: !1887, inlinedAt: !905)
!1892 = !DILocation(line: 0, scope: !1157, inlinedAt: !905)
!1893 = !DILocation(line: 1088, column: 8, scope: !906)
!1894 = !DILocation(line: 1087, column: 29, scope: !906)
!1895 = distinct !{!1895, !1139, !1896}
!1896 = !DILocation(line: 1088, column: 72, scope: !907)
!1897 = !DILocation(line: 1090, column: 23, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !49, file: !3, line: 1090, column: 7)
!1899 = !DILocation(line: 1090, column: 26, scope: !1898)
!1900 = !DILocation(line: 1090, column: 47, scope: !1898)
!1901 = !DILocation(line: 1090, column: 7, scope: !49)
!1902 = !DILocation(line: 1091, column: 5, scope: !1898)
!1903 = !DILocation(line: 1094, column: 1, scope: !49)
!1904 = distinct !DISubprogram(name: "elseek", scope: !3, file: !3, line: 223, type: !1905, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!34, !52, !34, !52, !41}
!1907 = !{!1908, !1909, !1910, !1911, !1912, !1913}
!1908 = !DILocalVariable(name: "fd", arg: 1, scope: !1904, file: !3, line: 223, type: !52)
!1909 = !DILocalVariable(name: "offset", arg: 2, scope: !1904, file: !3, line: 223, type: !34)
!1910 = !DILocalVariable(name: "whence", arg: 3, scope: !1904, file: !3, line: 223, type: !52)
!1911 = !DILocalVariable(name: "filename", arg: 4, scope: !1904, file: !3, line: 223, type: !41)
!1912 = !DILocalVariable(name: "new_offset", scope: !1904, file: !3, line: 225, type: !34)
!1913 = !DILocalVariable(name: "buf", scope: !1904, file: !3, line: 226, type: !78)
!1914 = !DILocation(line: 223, column: 13, scope: !1904)
!1915 = !DILocation(line: 223, column: 23, scope: !1904)
!1916 = !DILocation(line: 223, column: 35, scope: !1904)
!1917 = !DILocation(line: 223, column: 55, scope: !1904)
!1918 = !DILocation(line: 225, column: 22, scope: !1904)
!1919 = !DILocation(line: 225, column: 9, scope: !1904)
!1920 = !DILocation(line: 226, column: 3, scope: !1904)
!1921 = !DILocation(line: 226, column: 8, scope: !1904)
!1922 = !DILocation(line: 228, column: 18, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 228, column: 7)
!1924 = !DILocation(line: 228, column: 7, scope: !1904)
!1925 = !DILocation(line: 229, column: 15, scope: !1923)
!1926 = !DILocation(line: 230, column: 12, scope: !1923)
!1927 = !DILocation(line: 233, column: 12, scope: !1923)
!1928 = !DILocation(line: 234, column: 12, scope: !1923)
!1929 = !DILocation(line: 229, column: 5, scope: !1923)
!1930 = !DILocation(line: 237, column: 1, scope: !1904)
!1931 = !DILocation(line: 236, column: 3, scope: !1904)
!1932 = distinct !DISubprogram(name: "xwrite_stdout", scope: !3, file: !3, line: 179, type: !1933, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1935)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{null, !41, !43}
!1935 = !{!1936, !1937}
!1936 = !DILocalVariable(name: "buffer", arg: 1, scope: !1932, file: !3, line: 179, type: !41)
!1937 = !DILocalVariable(name: "n_bytes", arg: 2, scope: !1932, file: !3, line: 179, type: !43)
!1938 = !DILocation(line: 179, column: 28, scope: !1932)
!1939 = !DILocation(line: 179, column: 43, scope: !1932)
!1940 = !DILocation(line: 181, column: 15, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 181, column: 7)
!1942 = !DILocation(line: 181, column: 19, scope: !1941)
!1943 = !DILocation(line: 181, column: 22, scope: !1941)
!1944 = !DILocation(line: 181, column: 58, scope: !1941)
!1945 = !DILocation(line: 181, column: 7, scope: !1932)
!1946 = !DILocation(line: 183, column: 7, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 182, column: 5)
!1948 = !DILocation(line: 184, column: 7, scope: !1947)
!1949 = !DILocation(line: 187, column: 1, scope: !1932)
!1950 = distinct !DISubprogram(name: "diagnose_copy_fd_failure", scope: !3, file: !3, line: 151, type: !1951, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1953)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{null, !25, !41}
!1953 = !{!1954, !1955}
!1954 = !DILocalVariable(name: "err", arg: 1, scope: !1950, file: !3, line: 151, type: !25)
!1955 = !DILocalVariable(name: "filename", arg: 2, scope: !1950, file: !3, line: 151, type: !41)
!1956 = !DILocation(line: 151, column: 47, scope: !1950)
!1957 = !DILocation(line: 151, column: 64, scope: !1950)
!1958 = !DILocation(line: 153, column: 3, scope: !1950)
!1959 = !DILocation(line: 156, column: 17, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 154, column: 5)
!1961 = !DILocation(line: 156, column: 24, scope: !1960)
!1962 = !DILocation(line: 156, column: 47, scope: !1960)
!1963 = !DILocation(line: 156, column: 7, scope: !1960)
!1964 = !DILocation(line: 157, column: 7, scope: !1960)
!1965 = !DILocation(line: 159, column: 17, scope: !1960)
!1966 = !DILocation(line: 159, column: 24, scope: !1960)
!1967 = !DILocation(line: 159, column: 59, scope: !1960)
!1968 = !DILocation(line: 159, column: 7, scope: !1960)
!1969 = !DILocation(line: 160, column: 7, scope: !1960)
!1970 = !DILocation(line: 162, column: 7, scope: !1960)
!1971 = !DILocation(line: 164, column: 1, scope: !1950)
!1972 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !129, file: !129, line: 51, type: !108, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !124, retainedNodes: !1973)
!1973 = !{!1974}
!1974 = !DILocalVariable(name: "file", arg: 1, scope: !1972, file: !129, line: 51, type: !41)
!1975 = !DILocation(line: 51, column: 41, scope: !1972)
!1976 = !DILocation(line: 53, column: 13, scope: !1972)
!1977 = !DILocation(line: 54, column: 1, scope: !1972)
!1978 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !129, file: !129, line: 88, type: !1979, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !124, retainedNodes: !1981)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !59}
!1981 = !{!1982}
!1982 = !DILocalVariable(name: "ignore", arg: 1, scope: !1978, file: !129, line: 88, type: !59)
!1983 = !DILocation(line: 88, column: 37, scope: !1978)
!1984 = !DILocation(line: 90, column: 16, scope: !1978)
!1985 = !{!1986, !1986, i64 0}
!1986 = !{!"_Bool", !722, i64 0}
!1987 = !DILocation(line: 91, column: 1, scope: !1978)
!1988 = distinct !DISubprogram(name: "close_stdout", scope: !129, file: !129, line: 117, type: !728, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !124, retainedNodes: !1989)
!1989 = !{!1990}
!1990 = !DILocalVariable(name: "write_error", scope: !1991, file: !129, line: 122, type: !41)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !129, line: 121, column: 5)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !129, line: 119, column: 7)
!1993 = !DILocation(line: 119, column: 21, scope: !1992)
!1994 = !DILocation(line: 119, column: 7, scope: !1992)
!1995 = !DILocation(line: 119, column: 29, scope: !1992)
!1996 = !DILocation(line: 120, column: 7, scope: !1992)
!1997 = !DILocation(line: 120, column: 12, scope: !1992)
!1998 = !{i8 0, i8 2}
!1999 = !DILocation(line: 120, column: 25, scope: !1992)
!2000 = !DILocation(line: 120, column: 28, scope: !1992)
!2001 = !DILocation(line: 120, column: 34, scope: !1992)
!2002 = !DILocation(line: 119, column: 7, scope: !1988)
!2003 = !DILocation(line: 122, column: 33, scope: !1991)
!2004 = !DILocation(line: 122, column: 19, scope: !1991)
!2005 = !DILocation(line: 123, column: 11, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1991, file: !129, line: 123, column: 11)
!2007 = !DILocation(line: 0, scope: !2006)
!2008 = !DILocation(line: 123, column: 11, scope: !1991)
!2009 = !DILocation(line: 124, column: 36, scope: !2006)
!2010 = !DILocation(line: 124, column: 9, scope: !2006)
!2011 = !DILocation(line: 127, column: 9, scope: !2006)
!2012 = !DILocation(line: 129, column: 14, scope: !1991)
!2013 = !DILocation(line: 129, column: 7, scope: !1991)
!2014 = !DILocation(line: 134, column: 42, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1988, file: !129, line: 134, column: 7)
!2016 = !DILocation(line: 134, column: 28, scope: !2015)
!2017 = !DILocation(line: 134, column: 50, scope: !2015)
!2018 = !DILocation(line: 134, column: 7, scope: !1988)
!2019 = !DILocation(line: 135, column: 12, scope: !2015)
!2020 = !DILocation(line: 135, column: 5, scope: !2015)
!2021 = !DILocation(line: 136, column: 1, scope: !1988)
!2022 = distinct !DISubprogram(name: "full_read", scope: !2023, file: !2023, line: 58, type: !2024, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !2026)
!2023 = !DIFile(filename: "./lib/full-write.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!43, !52, !33, !43}
!2026 = !{!2027, !2028, !2029, !2030, !2031, !2032}
!2027 = !DILocalVariable(name: "fd", arg: 1, scope: !2022, file: !2023, line: 58, type: !52)
!2028 = !DILocalVariable(name: "buf", arg: 2, scope: !2022, file: !2023, line: 58, type: !33)
!2029 = !DILocalVariable(name: "count", arg: 3, scope: !2022, file: !2023, line: 58, type: !43)
!2030 = !DILocalVariable(name: "total", scope: !2022, file: !2023, line: 60, type: !43)
!2031 = !DILocalVariable(name: "ptr", scope: !2022, file: !2023, line: 61, type: !31)
!2032 = !DILocalVariable(name: "n_rw", scope: !2033, file: !2023, line: 65, type: !43)
!2033 = distinct !DILexicalBlock(scope: !2022, file: !2023, line: 64, column: 5)
!2034 = !DILocation(line: 58, column: 14, scope: !2022)
!2035 = !DILocation(line: 58, column: 30, scope: !2022)
!2036 = !DILocation(line: 58, column: 42, scope: !2022)
!2037 = !DILocation(line: 60, column: 10, scope: !2022)
!2038 = !DILocation(line: 61, column: 15, scope: !2022)
!2039 = !DILocation(line: 63, column: 16, scope: !2022)
!2040 = !DILocation(line: 63, column: 3, scope: !2022)
!2041 = !DILocation(line: 65, column: 21, scope: !2033)
!2042 = !DILocation(line: 65, column: 14, scope: !2033)
!2043 = !DILocation(line: 66, column: 11, scope: !2033)
!2044 = !DILocation(line: 70, column: 11, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !2023, line: 69, column: 9)
!2046 = distinct !DILexicalBlock(scope: !2033, file: !2023, line: 68, column: 11)
!2047 = !DILocation(line: 70, column: 17, scope: !2045)
!2048 = !DILocation(line: 71, column: 11, scope: !2045)
!2049 = !DILocation(line: 73, column: 13, scope: !2033)
!2050 = !DILocation(line: 74, column: 11, scope: !2033)
!2051 = !DILocation(line: 75, column: 13, scope: !2033)
!2052 = distinct !{!2052, !2040, !2053}
!2053 = !DILocation(line: 76, column: 5, scope: !2022)
!2054 = !DILocation(line: 78, column: 3, scope: !2022)
!2055 = distinct !DISubprogram(name: "offtostr", scope: !2056, file: !2056, line: 36, type: !2057, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !222, retainedNodes: !2059)
!2056 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!31, !225, !31}
!2059 = !{!2060, !2061, !2062}
!2060 = !DILocalVariable(name: "i", arg: 1, scope: !2055, file: !2056, line: 36, type: !225)
!2061 = !DILocalVariable(name: "buf", arg: 2, scope: !2055, file: !2056, line: 36, type: !31)
!2062 = !DILocalVariable(name: "p", scope: !2055, file: !2056, line: 38, type: !31)
!2063 = !DILocation(line: 36, column: 19, scope: !2055)
!2064 = !DILocation(line: 36, column: 28, scope: !2055)
!2065 = !DILocation(line: 38, column: 17, scope: !2055)
!2066 = !DILocation(line: 38, column: 9, scope: !2055)
!2067 = !DILocation(line: 39, column: 6, scope: !2055)
!2068 = !DILocation(line: 41, column: 9, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2055, file: !2056, line: 41, column: 7)
!2070 = !DILocation(line: 41, column: 7, scope: !2055)
!2071 = !DILocation(line: 0, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2069, file: !2056, line: 42, column: 5)
!2073 = !DILocation(line: 44, column: 24, scope: !2072)
!2074 = !DILocation(line: 44, column: 16, scope: !2072)
!2075 = !DILocation(line: 44, column: 10, scope: !2072)
!2076 = !DILocation(line: 44, column: 14, scope: !2072)
!2077 = !DILocation(line: 45, column: 17, scope: !2072)
!2078 = !DILocation(line: 45, column: 24, scope: !2072)
!2079 = !DILocation(line: 44, column: 9, scope: !2072)
!2080 = distinct !{!2080, !2081, !2082}
!2081 = !DILocation(line: 43, column: 7, scope: !2072)
!2082 = !DILocation(line: 45, column: 28, scope: !2072)
!2083 = !DILocation(line: 47, column: 8, scope: !2072)
!2084 = !DILocation(line: 47, column: 12, scope: !2072)
!2085 = !DILocation(line: 48, column: 5, scope: !2072)
!2086 = !DILocation(line: 0, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2069, file: !2056, line: 50, column: 5)
!2088 = !DILocation(line: 52, column: 24, scope: !2087)
!2089 = !DILocation(line: 52, column: 16, scope: !2087)
!2090 = !DILocation(line: 52, column: 10, scope: !2087)
!2091 = !DILocation(line: 52, column: 14, scope: !2087)
!2092 = !DILocation(line: 53, column: 17, scope: !2087)
!2093 = !DILocation(line: 53, column: 24, scope: !2087)
!2094 = !DILocation(line: 52, column: 9, scope: !2087)
!2095 = distinct !{!2095, !2096, !2097}
!2096 = !DILocation(line: 51, column: 7, scope: !2087)
!2097 = !DILocation(line: 53, column: 28, scope: !2087)
!2098 = !DILocation(line: 56, column: 3, scope: !2055)
!2099 = distinct !DISubprogram(name: "umaxtostr", scope: !2056, file: !2056, line: 36, type: !2100, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !2102)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!31, !63, !31}
!2102 = !{!2103, !2104, !2105}
!2103 = !DILocalVariable(name: "i", arg: 1, scope: !2099, file: !2056, line: 36, type: !63)
!2104 = !DILocalVariable(name: "buf", arg: 2, scope: !2099, file: !2056, line: 36, type: !31)
!2105 = !DILocalVariable(name: "p", scope: !2099, file: !2056, line: 38, type: !31)
!2106 = !DILocation(line: 36, column: 19, scope: !2099)
!2107 = !DILocation(line: 36, column: 28, scope: !2099)
!2108 = !DILocation(line: 38, column: 17, scope: !2099)
!2109 = !DILocation(line: 38, column: 9, scope: !2099)
!2110 = !DILocation(line: 39, column: 6, scope: !2099)
!2111 = !DILocation(line: 41, column: 7, scope: !2099)
!2112 = !DILocation(line: 0, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !2056, line: 50, column: 5)
!2114 = distinct !DILexicalBlock(scope: !2099, file: !2056, line: 41, column: 7)
!2115 = !DILocation(line: 52, column: 24, scope: !2113)
!2116 = !DILocation(line: 52, column: 16, scope: !2113)
!2117 = !DILocation(line: 52, column: 10, scope: !2113)
!2118 = !DILocation(line: 52, column: 14, scope: !2113)
!2119 = !DILocation(line: 53, column: 17, scope: !2113)
!2120 = !DILocation(line: 53, column: 24, scope: !2113)
!2121 = !DILocation(line: 52, column: 9, scope: !2113)
!2122 = distinct !{!2122, !2123, !2124}
!2123 = !DILocation(line: 51, column: 7, scope: !2113)
!2124 = !DILocation(line: 53, column: 28, scope: !2113)
!2125 = !DILocation(line: 56, column: 3, scope: !2099)
!2126 = distinct !DISubprogram(name: "set_program_name", scope: !143, file: !143, line: 39, type: !108, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !139, retainedNodes: !2127)
!2127 = !{!2128, !2129, !2130}
!2128 = !DILocalVariable(name: "argv0", arg: 1, scope: !2126, file: !143, line: 39, type: !41)
!2129 = !DILocalVariable(name: "slash", scope: !2126, file: !143, line: 46, type: !41)
!2130 = !DILocalVariable(name: "base", scope: !2126, file: !143, line: 47, type: !41)
!2131 = !DILocation(line: 39, column: 31, scope: !2126)
!2132 = !DILocation(line: 51, column: 13, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2126, file: !143, line: 51, column: 7)
!2134 = !DILocation(line: 51, column: 7, scope: !2126)
!2135 = !DILocation(line: 55, column: 14, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2133, file: !143, line: 52, column: 5)
!2137 = !DILocation(line: 54, column: 7, scope: !2136)
!2138 = !DILocation(line: 56, column: 7, scope: !2136)
!2139 = !DILocation(line: 59, column: 11, scope: !2126)
!2140 = !DILocation(line: 46, column: 15, scope: !2126)
!2141 = !DILocation(line: 60, column: 17, scope: !2126)
!2142 = !DILocation(line: 60, column: 33, scope: !2126)
!2143 = !DILocation(line: 60, column: 11, scope: !2126)
!2144 = !DILocation(line: 47, column: 15, scope: !2126)
!2145 = !DILocation(line: 61, column: 12, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2126, file: !143, line: 61, column: 7)
!2147 = !DILocation(line: 61, column: 20, scope: !2146)
!2148 = !DILocation(line: 61, column: 25, scope: !2146)
!2149 = !DILocation(line: 61, column: 42, scope: !2146)
!2150 = !DILocation(line: 61, column: 28, scope: !2146)
!2151 = !DILocation(line: 61, column: 61, scope: !2146)
!2152 = !DILocation(line: 61, column: 7, scope: !2126)
!2153 = !DILocation(line: 64, column: 11, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !143, line: 64, column: 11)
!2155 = distinct !DILexicalBlock(scope: !2146, file: !143, line: 62, column: 5)
!2156 = !DILocation(line: 64, column: 36, scope: !2154)
!2157 = !DILocation(line: 64, column: 11, scope: !2155)
!2158 = !DILocation(line: 66, column: 24, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2154, file: !143, line: 65, column: 9)
!2160 = !DILocation(line: 70, column: 41, scope: !2159)
!2161 = !DILocation(line: 72, column: 9, scope: !2159)
!2162 = !DILocation(line: 84, column: 16, scope: !2126)
!2163 = !DILocation(line: 90, column: 27, scope: !2126)
!2164 = !DILocation(line: 92, column: 1, scope: !2126)
!2165 = distinct !DISubprogram(name: "clone_quoting_options", scope: !174, file: !174, line: 122, type: !2166, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2169)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!2168, !2168}
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!2169 = !{!2170, !2171, !2172}
!2170 = !DILocalVariable(name: "o", arg: 1, scope: !2165, file: !174, line: 122, type: !2168)
!2171 = !DILocalVariable(name: "e", scope: !2165, file: !174, line: 124, type: !52)
!2172 = !DILocalVariable(name: "p", scope: !2165, file: !174, line: 125, type: !2168)
!2173 = !DILocation(line: 122, column: 48, scope: !2165)
!2174 = !DILocation(line: 124, column: 11, scope: !2165)
!2175 = !DILocation(line: 124, column: 7, scope: !2165)
!2176 = !DILocation(line: 125, column: 40, scope: !2165)
!2177 = !DILocation(line: 125, column: 31, scope: !2165)
!2178 = !DILocation(line: 125, column: 27, scope: !2165)
!2179 = !DILocation(line: 127, column: 9, scope: !2165)
!2180 = !DILocation(line: 128, column: 3, scope: !2165)
!2181 = distinct !DISubprogram(name: "get_quoting_style", scope: !174, file: !174, line: 133, type: !2182, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2186)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!11, !2184}
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!2186 = !{!2187}
!2187 = !DILocalVariable(name: "o", arg: 1, scope: !2181, file: !174, line: 133, type: !2184)
!2188 = !DILocation(line: 133, column: 50, scope: !2181)
!2189 = !DILocation(line: 135, column: 11, scope: !2181)
!2190 = !DILocation(line: 135, column: 46, scope: !2181)
!2191 = !{!2192, !722, i64 0}
!2192 = !{!"quoting_options", !722, i64 0, !1120, i64 4, !722, i64 8, !721, i64 40, !721, i64 48}
!2193 = !DILocation(line: 135, column: 3, scope: !2181)
!2194 = distinct !DISubprogram(name: "set_quoting_style", scope: !174, file: !174, line: 141, type: !2195, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2197)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{null, !2168, !11}
!2197 = !{!2198, !2199}
!2198 = !DILocalVariable(name: "o", arg: 1, scope: !2194, file: !174, line: 141, type: !2168)
!2199 = !DILocalVariable(name: "s", arg: 2, scope: !2194, file: !174, line: 141, type: !11)
!2200 = !DILocation(line: 141, column: 44, scope: !2194)
!2201 = !DILocation(line: 141, column: 66, scope: !2194)
!2202 = !DILocation(line: 143, column: 4, scope: !2194)
!2203 = !DILocation(line: 143, column: 39, scope: !2194)
!2204 = !DILocation(line: 143, column: 45, scope: !2194)
!2205 = !DILocation(line: 144, column: 1, scope: !2194)
!2206 = distinct !DISubprogram(name: "set_char_quoting", scope: !174, file: !174, line: 152, type: !2207, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2209)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!52, !2168, !32, !52}
!2209 = !{!2210, !2211, !2212, !2213, !2215, !2217, !2218}
!2210 = !DILocalVariable(name: "o", arg: 1, scope: !2206, file: !174, line: 152, type: !2168)
!2211 = !DILocalVariable(name: "c", arg: 2, scope: !2206, file: !174, line: 152, type: !32)
!2212 = !DILocalVariable(name: "i", arg: 3, scope: !2206, file: !174, line: 152, type: !52)
!2213 = !DILocalVariable(name: "uc", scope: !2206, file: !174, line: 154, type: !2214)
!2214 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!2215 = !DILocalVariable(name: "p", scope: !2206, file: !174, line: 155, type: !2216)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2217 = !DILocalVariable(name: "shift", scope: !2206, file: !174, line: 157, type: !52)
!2218 = !DILocalVariable(name: "r", scope: !2206, file: !174, line: 158, type: !52)
!2219 = !DILocation(line: 152, column: 43, scope: !2206)
!2220 = !DILocation(line: 152, column: 51, scope: !2206)
!2221 = !DILocation(line: 152, column: 58, scope: !2206)
!2222 = !DILocation(line: 154, column: 17, scope: !2206)
!2223 = !DILocation(line: 156, column: 6, scope: !2206)
!2224 = !DILocation(line: 156, column: 62, scope: !2206)
!2225 = !DILocation(line: 156, column: 57, scope: !2206)
!2226 = !DILocation(line: 155, column: 17, scope: !2206)
!2227 = !DILocation(line: 157, column: 15, scope: !2206)
!2228 = !DILocation(line: 157, column: 7, scope: !2206)
!2229 = !DILocation(line: 158, column: 12, scope: !2206)
!2230 = !DILocation(line: 158, column: 15, scope: !2206)
!2231 = !DILocation(line: 158, column: 25, scope: !2206)
!2232 = !DILocation(line: 158, column: 7, scope: !2206)
!2233 = !DILocation(line: 159, column: 13, scope: !2206)
!2234 = !DILocation(line: 159, column: 18, scope: !2206)
!2235 = !DILocation(line: 159, column: 23, scope: !2206)
!2236 = !DILocation(line: 159, column: 6, scope: !2206)
!2237 = !DILocation(line: 160, column: 3, scope: !2206)
!2238 = distinct !DISubprogram(name: "set_quoting_flags", scope: !174, file: !174, line: 168, type: !2239, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!52, !2168, !52}
!2241 = !{!2242, !2243, !2244}
!2242 = !DILocalVariable(name: "o", arg: 1, scope: !2238, file: !174, line: 168, type: !2168)
!2243 = !DILocalVariable(name: "i", arg: 2, scope: !2238, file: !174, line: 168, type: !52)
!2244 = !DILocalVariable(name: "r", scope: !2238, file: !174, line: 170, type: !52)
!2245 = !DILocation(line: 168, column: 44, scope: !2238)
!2246 = !DILocation(line: 168, column: 51, scope: !2238)
!2247 = !DILocation(line: 171, column: 8, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2238, file: !174, line: 171, column: 7)
!2249 = !DILocation(line: 171, column: 7, scope: !2238)
!2250 = !DILocation(line: 173, column: 10, scope: !2238)
!2251 = !{!2192, !1120, i64 4}
!2252 = !DILocation(line: 170, column: 7, scope: !2238)
!2253 = !DILocation(line: 174, column: 12, scope: !2238)
!2254 = !DILocation(line: 175, column: 3, scope: !2238)
!2255 = distinct !DISubprogram(name: "set_custom_quoting", scope: !174, file: !174, line: 179, type: !2256, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{null, !2168, !41, !41}
!2258 = !{!2259, !2260, !2261}
!2259 = !DILocalVariable(name: "o", arg: 1, scope: !2255, file: !174, line: 179, type: !2168)
!2260 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2255, file: !174, line: 180, type: !41)
!2261 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2255, file: !174, line: 180, type: !41)
!2262 = !DILocation(line: 179, column: 45, scope: !2255)
!2263 = !DILocation(line: 180, column: 33, scope: !2255)
!2264 = !DILocation(line: 180, column: 57, scope: !2255)
!2265 = !DILocation(line: 182, column: 8, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2255, file: !174, line: 182, column: 7)
!2267 = !DILocation(line: 182, column: 7, scope: !2255)
!2268 = !DILocation(line: 184, column: 6, scope: !2255)
!2269 = !DILocation(line: 184, column: 12, scope: !2255)
!2270 = !DILocation(line: 185, column: 8, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2255, file: !174, line: 185, column: 7)
!2272 = !DILocation(line: 185, column: 23, scope: !2271)
!2273 = !DILocation(line: 185, column: 19, scope: !2271)
!2274 = !DILocation(line: 186, column: 5, scope: !2271)
!2275 = !DILocation(line: 187, column: 6, scope: !2255)
!2276 = !DILocation(line: 187, column: 17, scope: !2255)
!2277 = !{!2192, !721, i64 40}
!2278 = !DILocation(line: 188, column: 6, scope: !2255)
!2279 = !DILocation(line: 188, column: 18, scope: !2255)
!2280 = !{!2192, !721, i64 48}
!2281 = !DILocation(line: 189, column: 1, scope: !2255)
!2282 = distinct !DISubprogram(name: "quotearg_buffer", scope: !174, file: !174, line: 784, type: !2283, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2285)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!43, !31, !43, !41, !43, !2184}
!2285 = !{!2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293}
!2286 = !DILocalVariable(name: "buffer", arg: 1, scope: !2282, file: !174, line: 784, type: !31)
!2287 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2282, file: !174, line: 784, type: !43)
!2288 = !DILocalVariable(name: "arg", arg: 3, scope: !2282, file: !174, line: 785, type: !41)
!2289 = !DILocalVariable(name: "argsize", arg: 4, scope: !2282, file: !174, line: 785, type: !43)
!2290 = !DILocalVariable(name: "o", arg: 5, scope: !2282, file: !174, line: 786, type: !2184)
!2291 = !DILocalVariable(name: "p", scope: !2282, file: !174, line: 788, type: !2184)
!2292 = !DILocalVariable(name: "e", scope: !2282, file: !174, line: 789, type: !52)
!2293 = !DILocalVariable(name: "r", scope: !2282, file: !174, line: 790, type: !43)
!2294 = !DILocation(line: 784, column: 24, scope: !2282)
!2295 = !DILocation(line: 784, column: 39, scope: !2282)
!2296 = !DILocation(line: 785, column: 30, scope: !2282)
!2297 = !DILocation(line: 785, column: 42, scope: !2282)
!2298 = !DILocation(line: 786, column: 48, scope: !2282)
!2299 = !DILocation(line: 788, column: 37, scope: !2282)
!2300 = !DILocation(line: 788, column: 33, scope: !2282)
!2301 = !DILocation(line: 789, column: 11, scope: !2282)
!2302 = !DILocation(line: 789, column: 7, scope: !2282)
!2303 = !DILocation(line: 791, column: 43, scope: !2282)
!2304 = !DILocation(line: 791, column: 53, scope: !2282)
!2305 = !DILocation(line: 791, column: 60, scope: !2282)
!2306 = !DILocation(line: 792, column: 43, scope: !2282)
!2307 = !DILocation(line: 792, column: 58, scope: !2282)
!2308 = !DILocation(line: 790, column: 14, scope: !2282)
!2309 = !DILocation(line: 790, column: 10, scope: !2282)
!2310 = !DILocation(line: 793, column: 9, scope: !2282)
!2311 = !DILocation(line: 794, column: 3, scope: !2282)
!2312 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !174, file: !174, line: 256, type: !2313, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2317)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!43, !31, !43, !41, !43, !11, !52, !2315, !41, !41}
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2342, !2343, !2344, !2345, !2346, !2349, !2350, !2368, !2371, !2372, !2379}
!2318 = !DILocalVariable(name: "buffer", arg: 1, scope: !2312, file: !174, line: 256, type: !31)
!2319 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2312, file: !174, line: 256, type: !43)
!2320 = !DILocalVariable(name: "arg", arg: 3, scope: !2312, file: !174, line: 257, type: !41)
!2321 = !DILocalVariable(name: "argsize", arg: 4, scope: !2312, file: !174, line: 257, type: !43)
!2322 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2312, file: !174, line: 258, type: !11)
!2323 = !DILocalVariable(name: "flags", arg: 6, scope: !2312, file: !174, line: 258, type: !52)
!2324 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2312, file: !174, line: 259, type: !2315)
!2325 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2312, file: !174, line: 260, type: !41)
!2326 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2312, file: !174, line: 261, type: !41)
!2327 = !DILocalVariable(name: "i", scope: !2312, file: !174, line: 263, type: !43)
!2328 = !DILocalVariable(name: "len", scope: !2312, file: !174, line: 264, type: !43)
!2329 = !DILocalVariable(name: "orig_buffersize", scope: !2312, file: !174, line: 265, type: !43)
!2330 = !DILocalVariable(name: "quote_string", scope: !2312, file: !174, line: 266, type: !41)
!2331 = !DILocalVariable(name: "quote_string_len", scope: !2312, file: !174, line: 267, type: !43)
!2332 = !DILocalVariable(name: "backslash_escapes", scope: !2312, file: !174, line: 268, type: !59)
!2333 = !DILocalVariable(name: "unibyte_locale", scope: !2312, file: !174, line: 269, type: !59)
!2334 = !DILocalVariable(name: "elide_outer_quotes", scope: !2312, file: !174, line: 270, type: !59)
!2335 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2312, file: !174, line: 271, type: !59)
!2336 = !DILocalVariable(name: "encountered_single_quote", scope: !2312, file: !174, line: 272, type: !59)
!2337 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2312, file: !174, line: 273, type: !59)
!2338 = !DILocalVariable(name: "c", scope: !2339, file: !174, line: 402, type: !2214)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !174, line: 401, column: 5)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !174, line: 400, column: 3)
!2341 = distinct !DILexicalBlock(scope: !2312, file: !174, line: 400, column: 3)
!2342 = !DILocalVariable(name: "esc", scope: !2339, file: !174, line: 403, type: !2214)
!2343 = !DILocalVariable(name: "is_right_quote", scope: !2339, file: !174, line: 404, type: !59)
!2344 = !DILocalVariable(name: "escaping", scope: !2339, file: !174, line: 405, type: !59)
!2345 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2339, file: !174, line: 406, type: !59)
!2346 = !DILocalVariable(name: "m", scope: !2347, file: !174, line: 610, type: !43)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !174, line: 608, column: 11)
!2348 = distinct !DILexicalBlock(scope: !2339, file: !174, line: 426, column: 9)
!2349 = !DILocalVariable(name: "printable", scope: !2347, file: !174, line: 612, type: !59)
!2350 = !DILocalVariable(name: "mbstate", scope: !2351, file: !174, line: 621, type: !2353)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !174, line: 620, column: 15)
!2352 = distinct !DILexicalBlock(scope: !2347, file: !174, line: 614, column: 17)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2354, line: 6, baseType: !2355)
!2354 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2356, line: 21, baseType: !2357)
!2356 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2356, line: 13, size: 64, elements: !2358)
!2358 = !{!2359, !2360}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2357, file: !2356, line: 15, baseType: !52, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2357, file: !2356, line: 20, baseType: !2361, size: 32, offset: 32)
!2361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2357, file: !2356, line: 16, size: 32, elements: !2362)
!2362 = !{!2363, !2364}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2361, file: !2356, line: 18, baseType: !6, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2361, file: !2356, line: 19, baseType: !2365, size: 32)
!2365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 32, elements: !2366)
!2366 = !{!2367}
!2367 = !DISubrange(count: 4)
!2368 = !DILocalVariable(name: "w", scope: !2369, file: !174, line: 631, type: !2370)
!2369 = distinct !DILexicalBlock(scope: !2351, file: !174, line: 630, column: 19)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !44, line: 90, baseType: !52)
!2371 = !DILocalVariable(name: "bytes", scope: !2369, file: !174, line: 632, type: !43)
!2372 = !DILocalVariable(name: "j", scope: !2373, file: !174, line: 657, type: !43)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !174, line: 656, column: 27)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !174, line: 654, column: 29)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !174, line: 649, column: 23)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !174, line: 641, column: 30)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !174, line: 636, column: 30)
!2378 = distinct !DILexicalBlock(scope: !2369, file: !174, line: 634, column: 25)
!2379 = !DILocalVariable(name: "ilim", scope: !2380, file: !174, line: 684, type: !43)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !174, line: 681, column: 15)
!2381 = distinct !DILexicalBlock(scope: !2347, file: !174, line: 680, column: 17)
!2382 = !DILocation(line: 256, column: 33, scope: !2312)
!2383 = !DILocation(line: 256, column: 48, scope: !2312)
!2384 = !DILocation(line: 257, column: 39, scope: !2312)
!2385 = !DILocation(line: 257, column: 51, scope: !2312)
!2386 = !DILocation(line: 258, column: 46, scope: !2312)
!2387 = !DILocation(line: 258, column: 65, scope: !2312)
!2388 = !DILocation(line: 259, column: 47, scope: !2312)
!2389 = !DILocation(line: 260, column: 39, scope: !2312)
!2390 = !DILocation(line: 261, column: 39, scope: !2312)
!2391 = !DILocation(line: 264, column: 10, scope: !2312)
!2392 = !DILocation(line: 265, column: 10, scope: !2312)
!2393 = !DILocation(line: 266, column: 15, scope: !2312)
!2394 = !DILocation(line: 267, column: 10, scope: !2312)
!2395 = !DILocation(line: 268, column: 8, scope: !2312)
!2396 = !DILocation(line: 269, column: 25, scope: !2312)
!2397 = !DILocation(line: 269, column: 36, scope: !2312)
!2398 = !DILocation(line: 270, column: 8, scope: !2312)
!2399 = !DILocation(line: 271, column: 8, scope: !2312)
!2400 = !DILocation(line: 272, column: 8, scope: !2312)
!2401 = !DILocation(line: 273, column: 8, scope: !2312)
!2402 = !DILocation(line: 273, column: 3, scope: !2312)
!2403 = !DILocation(line: 0, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2312, file: !174, line: 317, column: 5)
!2405 = !DILocation(line: 316, column: 3, scope: !2312)
!2406 = !DILocation(line: 323, column: 11, scope: !2404)
!2407 = !DILocation(line: 323, column: 12, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2404, file: !174, line: 323, column: 11)
!2409 = !DILocation(line: 324, column: 9, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !174, line: 324, column: 9)
!2411 = distinct !DILexicalBlock(scope: !2408, file: !174, line: 324, column: 9)
!2412 = !DILocation(line: 324, column: 9, scope: !2411)
!2413 = !DILocation(line: 362, column: 26, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !174, line: 340, column: 11)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !174, line: 339, column: 13)
!2416 = distinct !DILexicalBlock(scope: !2404, file: !174, line: 338, column: 7)
!2417 = !DILocation(line: 363, column: 27, scope: !2414)
!2418 = !DILocation(line: 364, column: 11, scope: !2414)
!2419 = !DILocation(line: 365, column: 14, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2416, file: !174, line: 365, column: 13)
!2421 = !DILocation(line: 365, column: 13, scope: !2416)
!2422 = !DILocation(line: 366, column: 43, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !174, line: 366, column: 11)
!2424 = distinct !DILexicalBlock(scope: !2420, file: !174, line: 366, column: 11)
!2425 = !DILocation(line: 366, column: 11, scope: !2424)
!2426 = !DILocation(line: 367, column: 13, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !174, line: 367, column: 13)
!2428 = distinct !DILexicalBlock(scope: !2423, file: !174, line: 367, column: 13)
!2429 = !DILocation(line: 367, column: 13, scope: !2428)
!2430 = !DILocation(line: 366, column: 70, scope: !2423)
!2431 = distinct !{!2431, !2425, !2432}
!2432 = !DILocation(line: 367, column: 13, scope: !2424)
!2433 = !DILocation(line: 370, column: 28, scope: !2416)
!2434 = !DILocation(line: 372, column: 7, scope: !2404)
!2435 = !DILocation(line: 376, column: 7, scope: !2404)
!2436 = !DILocation(line: 379, column: 7, scope: !2404)
!2437 = !DILocation(line: 381, column: 12, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2404, file: !174, line: 381, column: 11)
!2439 = !DILocation(line: 381, column: 11, scope: !2404)
!2440 = !DILocation(line: 0, scope: !2438)
!2441 = !DILocation(line: 386, column: 12, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2404, file: !174, line: 386, column: 11)
!2443 = !DILocation(line: 386, column: 11, scope: !2404)
!2444 = !DILocation(line: 387, column: 9, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !174, line: 387, column: 9)
!2446 = distinct !DILexicalBlock(scope: !2442, file: !174, line: 387, column: 9)
!2447 = !DILocation(line: 387, column: 9, scope: !2446)
!2448 = !DILocation(line: 394, column: 7, scope: !2404)
!2449 = !DILocation(line: 397, column: 7, scope: !2404)
!2450 = !DILocation(line: 0, scope: !2312)
!2451 = !DILocation(line: 263, column: 10, scope: !2312)
!2452 = !DILocation(line: 400, column: 8, scope: !2341)
!2453 = !DILocation(line: 0, scope: !2340)
!2454 = !DILocation(line: 400, column: 27, scope: !2340)
!2455 = !DILocation(line: 400, column: 19, scope: !2340)
!2456 = !DILocation(line: 400, column: 41, scope: !2340)
!2457 = !DILocation(line: 400, column: 48, scope: !2340)
!2458 = !DILocation(line: 400, column: 3, scope: !2341)
!2459 = !DILocation(line: 400, column: 60, scope: !2340)
!2460 = !DILocation(line: 404, column: 12, scope: !2339)
!2461 = !DILocation(line: 405, column: 12, scope: !2339)
!2462 = !DILocation(line: 406, column: 12, scope: !2339)
!2463 = !DILocation(line: 409, column: 11, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2339, file: !174, line: 408, column: 11)
!2465 = !DILocation(line: 411, column: 17, scope: !2464)
!2466 = !DILocation(line: 412, column: 39, scope: !2464)
!2467 = !DILocation(line: 416, column: 32, scope: !2464)
!2468 = !DILocation(line: 412, column: 19, scope: !2464)
!2469 = !DILocation(line: 412, column: 15, scope: !2464)
!2470 = !DILocation(line: 417, column: 11, scope: !2464)
!2471 = !DILocation(line: 417, column: 26, scope: !2464)
!2472 = !DILocation(line: 417, column: 14, scope: !2464)
!2473 = !DILocation(line: 417, column: 63, scope: !2464)
!2474 = !DILocation(line: 408, column: 11, scope: !2339)
!2475 = !DILocation(line: 0, scope: !2339)
!2476 = !DILocation(line: 424, column: 11, scope: !2339)
!2477 = !DILocation(line: 402, column: 21, scope: !2339)
!2478 = !DILocation(line: 425, column: 7, scope: !2339)
!2479 = !DILocation(line: 428, column: 15, scope: !2348)
!2480 = !DILocation(line: 430, column: 15, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !174, line: 430, column: 15)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !174, line: 429, column: 13)
!2483 = distinct !DILexicalBlock(scope: !2348, file: !174, line: 428, column: 15)
!2484 = !DILocation(line: 430, column: 15, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2481, file: !174, line: 430, column: 15)
!2486 = !DILocation(line: 430, column: 15, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !174, line: 430, column: 15)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !174, line: 430, column: 15)
!2489 = distinct !DILexicalBlock(scope: !2485, file: !174, line: 430, column: 15)
!2490 = !DILocation(line: 430, column: 15, scope: !2488)
!2491 = !DILocation(line: 430, column: 15, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !174, line: 430, column: 15)
!2493 = distinct !DILexicalBlock(scope: !2489, file: !174, line: 430, column: 15)
!2494 = !DILocation(line: 430, column: 15, scope: !2493)
!2495 = !DILocation(line: 430, column: 15, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !174, line: 430, column: 15)
!2497 = distinct !DILexicalBlock(scope: !2489, file: !174, line: 430, column: 15)
!2498 = !DILocation(line: 430, column: 15, scope: !2497)
!2499 = !DILocation(line: 430, column: 15, scope: !2489)
!2500 = !DILocation(line: 430, column: 15, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !174, line: 430, column: 15)
!2502 = distinct !DILexicalBlock(scope: !2481, file: !174, line: 430, column: 15)
!2503 = !DILocation(line: 430, column: 15, scope: !2502)
!2504 = !DILocation(line: 438, column: 19, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2482, file: !174, line: 437, column: 19)
!2506 = !DILocation(line: 438, column: 24, scope: !2505)
!2507 = !DILocation(line: 438, column: 28, scope: !2505)
!2508 = !DILocation(line: 438, column: 38, scope: !2505)
!2509 = !DILocation(line: 438, column: 48, scope: !2505)
!2510 = !DILocation(line: 438, column: 59, scope: !2505)
!2511 = !DILocation(line: 440, column: 19, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !174, line: 440, column: 19)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !174, line: 440, column: 19)
!2514 = distinct !DILexicalBlock(scope: !2505, file: !174, line: 439, column: 17)
!2515 = !DILocation(line: 440, column: 19, scope: !2513)
!2516 = !DILocation(line: 441, column: 19, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !174, line: 441, column: 19)
!2518 = distinct !DILexicalBlock(scope: !2514, file: !174, line: 441, column: 19)
!2519 = !DILocation(line: 441, column: 19, scope: !2518)
!2520 = !DILocation(line: 442, column: 17, scope: !2514)
!2521 = !DILocation(line: 449, column: 20, scope: !2483)
!2522 = !DILocation(line: 454, column: 11, scope: !2348)
!2523 = !DILocation(line: 457, column: 19, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2348, file: !174, line: 455, column: 13)
!2525 = !DILocation(line: 463, column: 19, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2524, file: !174, line: 462, column: 19)
!2527 = !DILocation(line: 463, column: 24, scope: !2526)
!2528 = !DILocation(line: 463, column: 28, scope: !2526)
!2529 = !DILocation(line: 463, column: 38, scope: !2526)
!2530 = !DILocation(line: 463, column: 47, scope: !2526)
!2531 = !DILocation(line: 463, column: 41, scope: !2526)
!2532 = !DILocation(line: 463, column: 52, scope: !2526)
!2533 = !DILocation(line: 462, column: 19, scope: !2524)
!2534 = !DILocation(line: 464, column: 25, scope: !2526)
!2535 = !DILocation(line: 464, column: 17, scope: !2526)
!2536 = !DILocation(line: 471, column: 25, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2526, file: !174, line: 465, column: 19)
!2538 = !DILocation(line: 475, column: 21, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !174, line: 475, column: 21)
!2540 = distinct !DILexicalBlock(scope: !2537, file: !174, line: 475, column: 21)
!2541 = !DILocation(line: 475, column: 21, scope: !2540)
!2542 = !DILocation(line: 476, column: 21, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !174, line: 476, column: 21)
!2544 = distinct !DILexicalBlock(scope: !2537, file: !174, line: 476, column: 21)
!2545 = !DILocation(line: 476, column: 21, scope: !2544)
!2546 = !DILocation(line: 477, column: 21, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !174, line: 477, column: 21)
!2548 = distinct !DILexicalBlock(scope: !2537, file: !174, line: 477, column: 21)
!2549 = !DILocation(line: 477, column: 21, scope: !2548)
!2550 = !DILocation(line: 478, column: 21, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !174, line: 478, column: 21)
!2552 = distinct !DILexicalBlock(scope: !2537, file: !174, line: 478, column: 21)
!2553 = !DILocation(line: 478, column: 21, scope: !2552)
!2554 = !DILocation(line: 479, column: 21, scope: !2537)
!2555 = !DILocation(line: 403, column: 21, scope: !2339)
!2556 = !DILocation(line: 492, column: 31, scope: !2348)
!2557 = !DILocation(line: 493, column: 31, scope: !2348)
!2558 = !DILocation(line: 495, column: 31, scope: !2348)
!2559 = !DILocation(line: 496, column: 31, scope: !2348)
!2560 = !DILocation(line: 497, column: 31, scope: !2348)
!2561 = !DILocation(line: 500, column: 15, scope: !2348)
!2562 = !DILocation(line: 502, column: 19, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !174, line: 501, column: 13)
!2564 = distinct !DILexicalBlock(scope: !2348, file: !174, line: 500, column: 15)
!2565 = !DILocation(line: 509, column: 33, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2348, file: !174, line: 509, column: 15)
!2567 = !DILocation(line: 0, scope: !2348)
!2568 = !DILocation(line: 514, column: 15, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2348, file: !174, line: 513, column: 15)
!2570 = !DILocation(line: 518, column: 15, scope: !2348)
!2571 = !DILocation(line: 526, column: 26, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2348, file: !174, line: 526, column: 15)
!2573 = !DILocation(line: 526, column: 15, scope: !2348)
!2574 = !DILocation(line: 526, column: 40, scope: !2572)
!2575 = !DILocation(line: 526, column: 47, scope: !2572)
!2576 = !DILocation(line: 530, column: 17, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2348, file: !174, line: 530, column: 15)
!2578 = !DILocation(line: 526, column: 18, scope: !2572)
!2579 = !DILocation(line: 526, column: 65, scope: !2572)
!2580 = !DILocation(line: 530, column: 15, scope: !2348)
!2581 = !DILocation(line: 535, column: 11, scope: !2348)
!2582 = !DILocation(line: 549, column: 15, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2348, file: !174, line: 548, column: 15)
!2584 = !DILocation(line: 556, column: 15, scope: !2348)
!2585 = !DILocation(line: 558, column: 19, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !174, line: 557, column: 13)
!2587 = distinct !DILexicalBlock(scope: !2348, file: !174, line: 556, column: 15)
!2588 = !DILocation(line: 561, column: 19, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2586, file: !174, line: 561, column: 19)
!2590 = !DILocation(line: 561, column: 35, scope: !2589)
!2591 = !DILocation(line: 561, column: 30, scope: !2589)
!2592 = !DILocation(line: 570, column: 15, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !174, line: 570, column: 15)
!2594 = distinct !DILexicalBlock(scope: !2586, file: !174, line: 570, column: 15)
!2595 = !DILocation(line: 570, column: 15, scope: !2594)
!2596 = !DILocation(line: 571, column: 15, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !174, line: 571, column: 15)
!2598 = distinct !DILexicalBlock(scope: !2586, file: !174, line: 571, column: 15)
!2599 = !DILocation(line: 571, column: 15, scope: !2598)
!2600 = !DILocation(line: 572, column: 15, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !174, line: 572, column: 15)
!2602 = distinct !DILexicalBlock(scope: !2586, file: !174, line: 572, column: 15)
!2603 = !DILocation(line: 572, column: 15, scope: !2602)
!2604 = !DILocation(line: 574, column: 13, scope: !2586)
!2605 = !DILocation(line: 614, column: 17, scope: !2347)
!2606 = !DILocation(line: 610, column: 20, scope: !2347)
!2607 = !DILocation(line: 617, column: 29, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2352, file: !174, line: 615, column: 15)
!2609 = !{!2610, !2610, i64 0}
!2610 = !{!"short", !722, i64 0}
!2611 = !DILocation(line: 617, column: 27, scope: !2608)
!2612 = !DILocation(line: 612, column: 18, scope: !2347)
!2613 = !DILocation(line: 618, column: 15, scope: !2608)
!2614 = !DILocation(line: 621, column: 17, scope: !2351)
!2615 = !DILocation(line: 622, column: 17, scope: !2351)
!2616 = !DILocation(line: 626, column: 29, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2351, file: !174, line: 626, column: 21)
!2618 = !DILocation(line: 626, column: 21, scope: !2351)
!2619 = !DILocation(line: 627, column: 29, scope: !2617)
!2620 = !DILocation(line: 627, column: 19, scope: !2617)
!2621 = !DILocation(line: 0, scope: !2464)
!2622 = !DILocation(line: 629, column: 17, scope: !2351)
!2623 = !DILocation(line: 624, column: 19, scope: !2351)
!2624 = !DILocation(line: 625, column: 27, scope: !2351)
!2625 = !DILocation(line: 631, column: 21, scope: !2369)
!2626 = !DILocation(line: 632, column: 56, scope: !2369)
!2627 = !DILocation(line: 632, column: 50, scope: !2369)
!2628 = !DILocation(line: 633, column: 53, scope: !2369)
!2629 = !DILocation(line: 621, column: 27, scope: !2351)
!2630 = !DILocation(line: 631, column: 29, scope: !2369)
!2631 = !DILocation(line: 632, column: 36, scope: !2369)
!2632 = !DILocation(line: 632, column: 28, scope: !2369)
!2633 = !DILocation(line: 634, column: 25, scope: !2369)
!2634 = !DILocation(line: 644, column: 38, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2376, file: !174, line: 642, column: 23)
!2636 = !DILocation(line: 644, column: 48, scope: !2635)
!2637 = !DILocation(line: 644, column: 51, scope: !2635)
!2638 = !DILocation(line: 644, column: 25, scope: !2635)
!2639 = !DILocation(line: 645, column: 28, scope: !2635)
!2640 = !DILocation(line: 644, column: 34, scope: !2635)
!2641 = distinct !{!2641, !2638, !2639}
!2642 = !DILocation(line: 658, column: 43, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !174, line: 658, column: 29)
!2644 = distinct !DILexicalBlock(scope: !2373, file: !174, line: 658, column: 29)
!2645 = !DILocation(line: 655, column: 29, scope: !2374)
!2646 = !DILocation(line: 657, column: 36, scope: !2373)
!2647 = !DILocation(line: 659, column: 49, scope: !2643)
!2648 = !DILocation(line: 659, column: 39, scope: !2643)
!2649 = !DILocation(line: 659, column: 31, scope: !2643)
!2650 = !DILocation(line: 658, column: 53, scope: !2643)
!2651 = !DILocation(line: 658, column: 29, scope: !2644)
!2652 = distinct !{!2652, !2651, !2653}
!2653 = !DILocation(line: 667, column: 33, scope: !2644)
!2654 = !DILocation(line: 674, column: 19, scope: !2351)
!2655 = !DILocation(line: 670, column: 41, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2375, file: !174, line: 670, column: 29)
!2657 = !DILocation(line: 670, column: 31, scope: !2656)
!2658 = !DILocation(line: 670, column: 29, scope: !2375)
!2659 = !DILocation(line: 672, column: 27, scope: !2375)
!2660 = !DILocation(line: 675, column: 26, scope: !2351)
!2661 = !DILocation(line: 675, column: 24, scope: !2351)
!2662 = !DILocation(line: 674, column: 19, scope: !2369)
!2663 = distinct !{!2663, !2622, !2664}
!2664 = !DILocation(line: 675, column: 44, scope: !2351)
!2665 = !DILocation(line: 676, column: 15, scope: !2352)
!2666 = !DILocation(line: 0, scope: !2617)
!2667 = !DILocation(line: 0, scope: !2351)
!2668 = !DILocation(line: 678, column: 40, scope: !2347)
!2669 = !DILocation(line: 680, column: 19, scope: !2381)
!2670 = !DILocation(line: 680, column: 45, scope: !2381)
!2671 = !DILocation(line: 680, column: 23, scope: !2381)
!2672 = !DILocation(line: 684, column: 33, scope: !2380)
!2673 = !DILocation(line: 684, column: 24, scope: !2380)
!2674 = !DILocation(line: 686, column: 17, scope: !2380)
!2675 = !DILocation(line: 0, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !174, line: 687, column: 19)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !174, line: 686, column: 17)
!2678 = distinct !DILexicalBlock(scope: !2380, file: !174, line: 686, column: 17)
!2679 = !DILocation(line: 0, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2676, file: !174, line: 703, column: 21)
!2681 = !DILocation(line: 0, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !174, line: 696, column: 23)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !174, line: 695, column: 30)
!2684 = distinct !DILexicalBlock(scope: !2676, file: !174, line: 688, column: 25)
!2685 = !DILocation(line: 688, column: 43, scope: !2684)
!2686 = !DILocation(line: 690, column: 25, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !174, line: 690, column: 25)
!2688 = distinct !DILexicalBlock(scope: !2684, file: !174, line: 689, column: 23)
!2689 = !DILocation(line: 690, column: 25, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2687, file: !174, line: 690, column: 25)
!2691 = !DILocation(line: 690, column: 25, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !174, line: 690, column: 25)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !174, line: 690, column: 25)
!2694 = distinct !DILexicalBlock(scope: !2690, file: !174, line: 690, column: 25)
!2695 = !DILocation(line: 690, column: 25, scope: !2693)
!2696 = !DILocation(line: 690, column: 25, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !174, line: 690, column: 25)
!2698 = distinct !DILexicalBlock(scope: !2694, file: !174, line: 690, column: 25)
!2699 = !DILocation(line: 690, column: 25, scope: !2698)
!2700 = !DILocation(line: 690, column: 25, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !174, line: 690, column: 25)
!2702 = distinct !DILexicalBlock(scope: !2694, file: !174, line: 690, column: 25)
!2703 = !DILocation(line: 690, column: 25, scope: !2702)
!2704 = !DILocation(line: 690, column: 25, scope: !2694)
!2705 = !DILocation(line: 690, column: 25, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !174, line: 690, column: 25)
!2707 = distinct !DILexicalBlock(scope: !2687, file: !174, line: 690, column: 25)
!2708 = !DILocation(line: 690, column: 25, scope: !2707)
!2709 = !DILocation(line: 691, column: 25, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !174, line: 691, column: 25)
!2711 = distinct !DILexicalBlock(scope: !2688, file: !174, line: 691, column: 25)
!2712 = !DILocation(line: 691, column: 25, scope: !2711)
!2713 = !DILocation(line: 692, column: 25, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !174, line: 692, column: 25)
!2715 = distinct !DILexicalBlock(scope: !2688, file: !174, line: 692, column: 25)
!2716 = !DILocation(line: 692, column: 25, scope: !2715)
!2717 = !DILocation(line: 693, column: 38, scope: !2688)
!2718 = !DILocation(line: 693, column: 33, scope: !2688)
!2719 = !DILocation(line: 694, column: 23, scope: !2688)
!2720 = !DILocation(line: 695, column: 30, scope: !2683)
!2721 = !DILocation(line: 695, column: 30, scope: !2684)
!2722 = !DILocation(line: 697, column: 25, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !174, line: 697, column: 25)
!2724 = distinct !DILexicalBlock(scope: !2682, file: !174, line: 697, column: 25)
!2725 = !DILocation(line: 697, column: 25, scope: !2724)
!2726 = !DILocation(line: 699, column: 23, scope: !2682)
!2727 = !DILocation(line: 0, scope: !2715)
!2728 = !DILocation(line: 0, scope: !2688)
!2729 = !DILocation(line: 0, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2464, file: !174, line: 418, column: 9)
!2731 = !DILocation(line: 0, scope: !2687)
!2732 = !DILocation(line: 700, column: 35, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2676, file: !174, line: 700, column: 25)
!2734 = !DILocation(line: 700, column: 30, scope: !2733)
!2735 = !DILocation(line: 700, column: 25, scope: !2676)
!2736 = !DILocation(line: 702, column: 21, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !174, line: 702, column: 21)
!2738 = distinct !DILexicalBlock(scope: !2676, file: !174, line: 702, column: 21)
!2739 = !DILocation(line: 702, column: 21, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !174, line: 702, column: 21)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !174, line: 702, column: 21)
!2742 = distinct !DILexicalBlock(scope: !2737, file: !174, line: 702, column: 21)
!2743 = !DILocation(line: 702, column: 21, scope: !2741)
!2744 = !DILocation(line: 702, column: 21, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !174, line: 702, column: 21)
!2746 = distinct !DILexicalBlock(scope: !2742, file: !174, line: 702, column: 21)
!2747 = !DILocation(line: 702, column: 21, scope: !2746)
!2748 = !DILocation(line: 702, column: 21, scope: !2742)
!2749 = !DILocation(line: 0, scope: !2724)
!2750 = !DILocation(line: 703, column: 21, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2680, file: !174, line: 703, column: 21)
!2752 = !DILocation(line: 703, column: 21, scope: !2680)
!2753 = !DILocation(line: 704, column: 25, scope: !2676)
!2754 = !DILocation(line: 686, column: 17, scope: !2677)
!2755 = distinct !{!2755, !2756, !2757}
!2756 = !DILocation(line: 686, column: 17, scope: !2678)
!2757 = !DILocation(line: 705, column: 19, scope: !2678)
!2758 = !DILocation(line: 0, scope: !2341)
!2759 = !DILocation(line: 416, column: 30, scope: !2464)
!2760 = !DILocation(line: 712, column: 34, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2339, file: !174, line: 712, column: 11)
!2762 = !DILocation(line: 714, column: 14, scope: !2761)
!2763 = !DILocation(line: 715, column: 14, scope: !2761)
!2764 = !DILocation(line: 715, column: 35, scope: !2761)
!2765 = !DILocation(line: 715, column: 17, scope: !2761)
!2766 = !DILocation(line: 715, column: 47, scope: !2761)
!2767 = !DILocation(line: 715, column: 65, scope: !2761)
!2768 = !DILocation(line: 716, column: 15, scope: !2761)
!2769 = !DILocation(line: 716, column: 11, scope: !2761)
!2770 = !DILocation(line: 712, column: 11, scope: !2339)
!2771 = !DILocation(line: 400, column: 10, scope: !2341)
!2772 = !DILocation(line: 0, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !174, line: 519, column: 13)
!2774 = distinct !DILexicalBlock(scope: !2348, file: !174, line: 518, column: 15)
!2775 = !DILocation(line: 720, column: 7, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2339, file: !174, line: 720, column: 7)
!2777 = !DILocation(line: 720, column: 7, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2776, file: !174, line: 720, column: 7)
!2779 = !DILocation(line: 720, column: 7, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !174, line: 720, column: 7)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !174, line: 720, column: 7)
!2782 = distinct !DILexicalBlock(scope: !2778, file: !174, line: 720, column: 7)
!2783 = !DILocation(line: 720, column: 7, scope: !2781)
!2784 = !DILocation(line: 720, column: 7, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !174, line: 720, column: 7)
!2786 = distinct !DILexicalBlock(scope: !2782, file: !174, line: 720, column: 7)
!2787 = !DILocation(line: 720, column: 7, scope: !2786)
!2788 = !DILocation(line: 720, column: 7, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !174, line: 720, column: 7)
!2790 = distinct !DILexicalBlock(scope: !2782, file: !174, line: 720, column: 7)
!2791 = !DILocation(line: 720, column: 7, scope: !2790)
!2792 = !DILocation(line: 720, column: 7, scope: !2782)
!2793 = !DILocation(line: 720, column: 7, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !174, line: 720, column: 7)
!2795 = distinct !DILexicalBlock(scope: !2776, file: !174, line: 720, column: 7)
!2796 = !DILocation(line: 720, column: 7, scope: !2795)
!2797 = !DILocation(line: 723, column: 7, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !174, line: 723, column: 7)
!2799 = distinct !DILexicalBlock(scope: !2339, file: !174, line: 723, column: 7)
!2800 = !DILocation(line: 424, column: 9, scope: !2339)
!2801 = !DILocation(line: 723, column: 7, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !174, line: 723, column: 7)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !174, line: 723, column: 7)
!2804 = distinct !DILexicalBlock(scope: !2798, file: !174, line: 723, column: 7)
!2805 = !DILocation(line: 723, column: 7, scope: !2803)
!2806 = !DILocation(line: 723, column: 7, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !174, line: 723, column: 7)
!2808 = distinct !DILexicalBlock(scope: !2804, file: !174, line: 723, column: 7)
!2809 = !DILocation(line: 723, column: 7, scope: !2808)
!2810 = !DILocation(line: 723, column: 7, scope: !2804)
!2811 = !DILocation(line: 724, column: 7, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !174, line: 724, column: 7)
!2813 = distinct !DILexicalBlock(scope: !2339, file: !174, line: 724, column: 7)
!2814 = !DILocation(line: 724, column: 7, scope: !2813)
!2815 = !DILocation(line: 726, column: 13, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2339, file: !174, line: 726, column: 11)
!2817 = !DILocation(line: 726, column: 11, scope: !2339)
!2818 = !DILocation(line: 728, column: 5, scope: !2340)
!2819 = !DILocation(line: 400, column: 75, scope: !2340)
!2820 = !DILocation(line: 400, column: 3, scope: !2340)
!2821 = distinct !{!2821, !2458, !2822}
!2822 = !DILocation(line: 728, column: 5, scope: !2341)
!2823 = !DILocation(line: 730, column: 11, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2312, file: !174, line: 730, column: 7)
!2825 = !DILocation(line: 730, column: 16, scope: !2824)
!2826 = !DILocation(line: 738, column: 51, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2312, file: !174, line: 738, column: 7)
!2828 = !DILocation(line: 739, column: 10, scope: !2827)
!2829 = !DILocation(line: 741, column: 11, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !174, line: 741, column: 11)
!2831 = distinct !DILexicalBlock(scope: !2827, file: !174, line: 740, column: 5)
!2832 = !DILocation(line: 741, column: 11, scope: !2831)
!2833 = !DILocation(line: 742, column: 16, scope: !2830)
!2834 = !DILocation(line: 742, column: 9, scope: !2830)
!2835 = !DILocation(line: 746, column: 18, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2830, file: !174, line: 746, column: 16)
!2837 = !DILocation(line: 746, column: 32, scope: !2836)
!2838 = !DILocation(line: 746, column: 29, scope: !2836)
!2839 = !DILocation(line: 755, column: 7, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2312, file: !174, line: 755, column: 7)
!2841 = !DILocation(line: 755, column: 20, scope: !2840)
!2842 = !DILocation(line: 756, column: 12, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !174, line: 756, column: 5)
!2844 = distinct !DILexicalBlock(scope: !2840, file: !174, line: 756, column: 5)
!2845 = !DILocation(line: 756, column: 5, scope: !2844)
!2846 = !DILocation(line: 757, column: 7, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !174, line: 757, column: 7)
!2848 = distinct !DILexicalBlock(scope: !2843, file: !174, line: 757, column: 7)
!2849 = !DILocation(line: 757, column: 7, scope: !2848)
!2850 = !DILocation(line: 756, column: 39, scope: !2843)
!2851 = distinct !{!2851, !2845, !2852}
!2852 = !DILocation(line: 757, column: 7, scope: !2844)
!2853 = !DILocation(line: 759, column: 11, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2312, file: !174, line: 759, column: 7)
!2855 = !DILocation(line: 759, column: 7, scope: !2312)
!2856 = !DILocation(line: 760, column: 5, scope: !2854)
!2857 = !DILocation(line: 760, column: 17, scope: !2854)
!2858 = !DILocation(line: 766, column: 21, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2312, file: !174, line: 766, column: 7)
!2860 = !DILocation(line: 766, column: 54, scope: !2859)
!2861 = !DILocation(line: 766, column: 51, scope: !2859)
!2862 = !DILocation(line: 770, column: 42, scope: !2312)
!2863 = !DILocation(line: 768, column: 10, scope: !2312)
!2864 = !DILocation(line: 768, column: 3, scope: !2312)
!2865 = !DILocation(line: 772, column: 1, scope: !2312)
!2866 = distinct !DISubprogram(name: "gettext_quote", scope: !174, file: !174, line: 207, type: !2867, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2869)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!41, !41, !11}
!2869 = !{!2870, !2871, !2872, !2873}
!2870 = !DILocalVariable(name: "msgid", arg: 1, scope: !2866, file: !174, line: 207, type: !41)
!2871 = !DILocalVariable(name: "s", arg: 2, scope: !2866, file: !174, line: 207, type: !11)
!2872 = !DILocalVariable(name: "translation", scope: !2866, file: !174, line: 209, type: !41)
!2873 = !DILocalVariable(name: "locale_code", scope: !2866, file: !174, line: 210, type: !41)
!2874 = !DILocation(line: 207, column: 28, scope: !2866)
!2875 = !DILocation(line: 207, column: 54, scope: !2866)
!2876 = !DILocation(line: 209, column: 29, scope: !2866)
!2877 = !DILocation(line: 209, column: 15, scope: !2866)
!2878 = !DILocation(line: 212, column: 19, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2866, file: !174, line: 212, column: 7)
!2880 = !DILocation(line: 212, column: 7, scope: !2866)
!2881 = !DILocation(line: 233, column: 17, scope: !2866)
!2882 = !DILocation(line: 210, column: 15, scope: !2866)
!2883 = !DILocalVariable(name: "s1", arg: 1, scope: !2884, file: !2885, line: 160, type: !41)
!2884 = distinct !DISubprogram(name: "strcaseeq0", scope: !2885, file: !2885, line: 160, type: !2886, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2888)
!2885 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!52, !41, !41, !32, !32, !32, !32, !32, !32, !32, !32, !32}
!2888 = !{!2883, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898}
!2889 = !DILocalVariable(name: "s2", arg: 2, scope: !2884, file: !2885, line: 160, type: !41)
!2890 = !DILocalVariable(name: "s20", arg: 3, scope: !2884, file: !2885, line: 160, type: !32)
!2891 = !DILocalVariable(name: "s21", arg: 4, scope: !2884, file: !2885, line: 160, type: !32)
!2892 = !DILocalVariable(name: "s22", arg: 5, scope: !2884, file: !2885, line: 160, type: !32)
!2893 = !DILocalVariable(name: "s23", arg: 6, scope: !2884, file: !2885, line: 160, type: !32)
!2894 = !DILocalVariable(name: "s24", arg: 7, scope: !2884, file: !2885, line: 160, type: !32)
!2895 = !DILocalVariable(name: "s25", arg: 8, scope: !2884, file: !2885, line: 160, type: !32)
!2896 = !DILocalVariable(name: "s26", arg: 9, scope: !2884, file: !2885, line: 160, type: !32)
!2897 = !DILocalVariable(name: "s27", arg: 10, scope: !2884, file: !2885, line: 160, type: !32)
!2898 = !DILocalVariable(name: "s28", arg: 11, scope: !2884, file: !2885, line: 160, type: !32)
!2899 = !DILocation(line: 160, column: 25, scope: !2884, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 234, column: 7, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2866, file: !174, line: 234, column: 7)
!2902 = !DILocation(line: 160, column: 41, scope: !2884, inlinedAt: !2900)
!2903 = !DILocation(line: 160, column: 50, scope: !2884, inlinedAt: !2900)
!2904 = !DILocation(line: 160, column: 60, scope: !2884, inlinedAt: !2900)
!2905 = !DILocation(line: 160, column: 70, scope: !2884, inlinedAt: !2900)
!2906 = !DILocation(line: 160, column: 80, scope: !2884, inlinedAt: !2900)
!2907 = !DILocation(line: 160, column: 90, scope: !2884, inlinedAt: !2900)
!2908 = !DILocation(line: 160, column: 100, scope: !2884, inlinedAt: !2900)
!2909 = !DILocation(line: 160, column: 110, scope: !2884, inlinedAt: !2900)
!2910 = !DILocation(line: 160, column: 120, scope: !2884, inlinedAt: !2900)
!2911 = !DILocation(line: 160, column: 130, scope: !2884, inlinedAt: !2900)
!2912 = !DILocation(line: 162, column: 7, scope: !2913, inlinedAt: !2900)
!2913 = distinct !DILexicalBlock(scope: !2884, file: !2885, line: 162, column: 7)
!2914 = !DILocalVariable(name: "s1", arg: 1, scope: !2915, file: !2885, line: 146, type: !41)
!2915 = distinct !DISubprogram(name: "strcaseeq1", scope: !2885, file: !2885, line: 146, type: !2916, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2918)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!52, !41, !41, !32, !32, !32, !32, !32, !32, !32, !32}
!2918 = !{!2914, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927}
!2919 = !DILocalVariable(name: "s2", arg: 2, scope: !2915, file: !2885, line: 146, type: !41)
!2920 = !DILocalVariable(name: "s21", arg: 3, scope: !2915, file: !2885, line: 146, type: !32)
!2921 = !DILocalVariable(name: "s22", arg: 4, scope: !2915, file: !2885, line: 146, type: !32)
!2922 = !DILocalVariable(name: "s23", arg: 5, scope: !2915, file: !2885, line: 146, type: !32)
!2923 = !DILocalVariable(name: "s24", arg: 6, scope: !2915, file: !2885, line: 146, type: !32)
!2924 = !DILocalVariable(name: "s25", arg: 7, scope: !2915, file: !2885, line: 146, type: !32)
!2925 = !DILocalVariable(name: "s26", arg: 8, scope: !2915, file: !2885, line: 146, type: !32)
!2926 = !DILocalVariable(name: "s27", arg: 9, scope: !2915, file: !2885, line: 146, type: !32)
!2927 = !DILocalVariable(name: "s28", arg: 10, scope: !2915, file: !2885, line: 146, type: !32)
!2928 = !DILocation(line: 146, column: 25, scope: !2915, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 167, column: 16, scope: !2930, inlinedAt: !2900)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !2885, line: 164, column: 11)
!2931 = distinct !DILexicalBlock(scope: !2913, file: !2885, line: 163, column: 5)
!2932 = !DILocation(line: 146, column: 41, scope: !2915, inlinedAt: !2929)
!2933 = !DILocation(line: 146, column: 50, scope: !2915, inlinedAt: !2929)
!2934 = !DILocation(line: 146, column: 60, scope: !2915, inlinedAt: !2929)
!2935 = !DILocation(line: 146, column: 70, scope: !2915, inlinedAt: !2929)
!2936 = !DILocation(line: 146, column: 80, scope: !2915, inlinedAt: !2929)
!2937 = !DILocation(line: 146, column: 90, scope: !2915, inlinedAt: !2929)
!2938 = !DILocation(line: 146, column: 100, scope: !2915, inlinedAt: !2929)
!2939 = !DILocation(line: 146, column: 110, scope: !2915, inlinedAt: !2929)
!2940 = !DILocation(line: 146, column: 120, scope: !2915, inlinedAt: !2929)
!2941 = !DILocation(line: 148, column: 7, scope: !2942, inlinedAt: !2929)
!2942 = distinct !DILexicalBlock(scope: !2915, file: !2885, line: 148, column: 7)
!2943 = !DILocalVariable(name: "s1", arg: 1, scope: !2944, file: !2885, line: 132, type: !41)
!2944 = distinct !DISubprogram(name: "strcaseeq2", scope: !2885, file: !2885, line: 132, type: !2945, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2947)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!52, !41, !41, !32, !32, !32, !32, !32, !32, !32}
!2947 = !{!2943, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955}
!2948 = !DILocalVariable(name: "s2", arg: 2, scope: !2944, file: !2885, line: 132, type: !41)
!2949 = !DILocalVariable(name: "s22", arg: 3, scope: !2944, file: !2885, line: 132, type: !32)
!2950 = !DILocalVariable(name: "s23", arg: 4, scope: !2944, file: !2885, line: 132, type: !32)
!2951 = !DILocalVariable(name: "s24", arg: 5, scope: !2944, file: !2885, line: 132, type: !32)
!2952 = !DILocalVariable(name: "s25", arg: 6, scope: !2944, file: !2885, line: 132, type: !32)
!2953 = !DILocalVariable(name: "s26", arg: 7, scope: !2944, file: !2885, line: 132, type: !32)
!2954 = !DILocalVariable(name: "s27", arg: 8, scope: !2944, file: !2885, line: 132, type: !32)
!2955 = !DILocalVariable(name: "s28", arg: 9, scope: !2944, file: !2885, line: 132, type: !32)
!2956 = !DILocation(line: 132, column: 25, scope: !2944, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 153, column: 16, scope: !2958, inlinedAt: !2929)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !2885, line: 150, column: 11)
!2959 = distinct !DILexicalBlock(scope: !2942, file: !2885, line: 149, column: 5)
!2960 = !DILocation(line: 132, column: 41, scope: !2944, inlinedAt: !2957)
!2961 = !DILocation(line: 132, column: 50, scope: !2944, inlinedAt: !2957)
!2962 = !DILocation(line: 132, column: 60, scope: !2944, inlinedAt: !2957)
!2963 = !DILocation(line: 132, column: 70, scope: !2944, inlinedAt: !2957)
!2964 = !DILocation(line: 132, column: 80, scope: !2944, inlinedAt: !2957)
!2965 = !DILocation(line: 132, column: 90, scope: !2944, inlinedAt: !2957)
!2966 = !DILocation(line: 132, column: 100, scope: !2944, inlinedAt: !2957)
!2967 = !DILocation(line: 132, column: 110, scope: !2944, inlinedAt: !2957)
!2968 = !DILocation(line: 134, column: 7, scope: !2969, inlinedAt: !2957)
!2969 = distinct !DILexicalBlock(scope: !2944, file: !2885, line: 134, column: 7)
!2970 = !DILocalVariable(name: "s1", arg: 1, scope: !2971, file: !2885, line: 118, type: !41)
!2971 = distinct !DISubprogram(name: "strcaseeq3", scope: !2885, file: !2885, line: 118, type: !2972, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!52, !41, !41, !32, !32, !32, !32, !32, !32}
!2974 = !{!2970, !2975, !2976, !2977, !2978, !2979, !2980, !2981}
!2975 = !DILocalVariable(name: "s2", arg: 2, scope: !2971, file: !2885, line: 118, type: !41)
!2976 = !DILocalVariable(name: "s23", arg: 3, scope: !2971, file: !2885, line: 118, type: !32)
!2977 = !DILocalVariable(name: "s24", arg: 4, scope: !2971, file: !2885, line: 118, type: !32)
!2978 = !DILocalVariable(name: "s25", arg: 5, scope: !2971, file: !2885, line: 118, type: !32)
!2979 = !DILocalVariable(name: "s26", arg: 6, scope: !2971, file: !2885, line: 118, type: !32)
!2980 = !DILocalVariable(name: "s27", arg: 7, scope: !2971, file: !2885, line: 118, type: !32)
!2981 = !DILocalVariable(name: "s28", arg: 8, scope: !2971, file: !2885, line: 118, type: !32)
!2982 = !DILocation(line: 118, column: 25, scope: !2971, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 139, column: 16, scope: !2984, inlinedAt: !2957)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !2885, line: 136, column: 11)
!2985 = distinct !DILexicalBlock(scope: !2969, file: !2885, line: 135, column: 5)
!2986 = !DILocation(line: 118, column: 41, scope: !2971, inlinedAt: !2983)
!2987 = !DILocation(line: 118, column: 50, scope: !2971, inlinedAt: !2983)
!2988 = !DILocation(line: 118, column: 60, scope: !2971, inlinedAt: !2983)
!2989 = !DILocation(line: 118, column: 70, scope: !2971, inlinedAt: !2983)
!2990 = !DILocation(line: 118, column: 80, scope: !2971, inlinedAt: !2983)
!2991 = !DILocation(line: 118, column: 90, scope: !2971, inlinedAt: !2983)
!2992 = !DILocation(line: 118, column: 100, scope: !2971, inlinedAt: !2983)
!2993 = !DILocation(line: 120, column: 7, scope: !2994, inlinedAt: !2983)
!2994 = distinct !DILexicalBlock(scope: !2971, file: !2885, line: 120, column: 7)
!2995 = !DILocation(line: 120, column: 7, scope: !2971, inlinedAt: !2983)
!2996 = !DILocalVariable(name: "s1", arg: 1, scope: !2997, file: !2885, line: 104, type: !41)
!2997 = distinct !DISubprogram(name: "strcaseeq4", scope: !2885, file: !2885, line: 104, type: !2998, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3000)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!52, !41, !41, !32, !32, !32, !32, !32}
!3000 = !{!2996, !3001, !3002, !3003, !3004, !3005, !3006}
!3001 = !DILocalVariable(name: "s2", arg: 2, scope: !2997, file: !2885, line: 104, type: !41)
!3002 = !DILocalVariable(name: "s24", arg: 3, scope: !2997, file: !2885, line: 104, type: !32)
!3003 = !DILocalVariable(name: "s25", arg: 4, scope: !2997, file: !2885, line: 104, type: !32)
!3004 = !DILocalVariable(name: "s26", arg: 5, scope: !2997, file: !2885, line: 104, type: !32)
!3005 = !DILocalVariable(name: "s27", arg: 6, scope: !2997, file: !2885, line: 104, type: !32)
!3006 = !DILocalVariable(name: "s28", arg: 7, scope: !2997, file: !2885, line: 104, type: !32)
!3007 = !DILocation(line: 104, column: 25, scope: !2997, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 125, column: 16, scope: !3009, inlinedAt: !2983)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !2885, line: 122, column: 11)
!3010 = distinct !DILexicalBlock(scope: !2994, file: !2885, line: 121, column: 5)
!3011 = !DILocation(line: 104, column: 41, scope: !2997, inlinedAt: !3008)
!3012 = !DILocation(line: 104, column: 50, scope: !2997, inlinedAt: !3008)
!3013 = !DILocation(line: 104, column: 60, scope: !2997, inlinedAt: !3008)
!3014 = !DILocation(line: 104, column: 70, scope: !2997, inlinedAt: !3008)
!3015 = !DILocation(line: 104, column: 80, scope: !2997, inlinedAt: !3008)
!3016 = !DILocation(line: 104, column: 90, scope: !2997, inlinedAt: !3008)
!3017 = !DILocation(line: 106, column: 7, scope: !3018, inlinedAt: !3008)
!3018 = distinct !DILexicalBlock(scope: !2997, file: !2885, line: 106, column: 7)
!3019 = !DILocation(line: 106, column: 7, scope: !2997, inlinedAt: !3008)
!3020 = !DILocalVariable(name: "s1", arg: 1, scope: !3021, file: !2885, line: 90, type: !41)
!3021 = distinct !DISubprogram(name: "strcaseeq5", scope: !2885, file: !2885, line: 90, type: !3022, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3024)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!52, !41, !41, !32, !32, !32, !32}
!3024 = !{!3020, !3025, !3026, !3027, !3028, !3029}
!3025 = !DILocalVariable(name: "s2", arg: 2, scope: !3021, file: !2885, line: 90, type: !41)
!3026 = !DILocalVariable(name: "s25", arg: 3, scope: !3021, file: !2885, line: 90, type: !32)
!3027 = !DILocalVariable(name: "s26", arg: 4, scope: !3021, file: !2885, line: 90, type: !32)
!3028 = !DILocalVariable(name: "s27", arg: 5, scope: !3021, file: !2885, line: 90, type: !32)
!3029 = !DILocalVariable(name: "s28", arg: 6, scope: !3021, file: !2885, line: 90, type: !32)
!3030 = !DILocation(line: 90, column: 25, scope: !3021, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 111, column: 16, scope: !3032, inlinedAt: !3008)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !2885, line: 108, column: 11)
!3033 = distinct !DILexicalBlock(scope: !3018, file: !2885, line: 107, column: 5)
!3034 = !DILocation(line: 90, column: 41, scope: !3021, inlinedAt: !3031)
!3035 = !DILocation(line: 90, column: 50, scope: !3021, inlinedAt: !3031)
!3036 = !DILocation(line: 90, column: 60, scope: !3021, inlinedAt: !3031)
!3037 = !DILocation(line: 90, column: 70, scope: !3021, inlinedAt: !3031)
!3038 = !DILocation(line: 90, column: 80, scope: !3021, inlinedAt: !3031)
!3039 = !DILocation(line: 92, column: 7, scope: !3040, inlinedAt: !3031)
!3040 = distinct !DILexicalBlock(scope: !3021, file: !2885, line: 92, column: 7)
!3041 = !DILocation(line: 92, column: 7, scope: !3021, inlinedAt: !3031)
!3042 = !DILocation(line: 235, column: 12, scope: !2901)
!3043 = !DILocation(line: 235, column: 21, scope: !2901)
!3044 = !DILocation(line: 235, column: 5, scope: !2901)
!3045 = !DILocation(line: 146, column: 25, scope: !2915, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 167, column: 16, scope: !2930, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 236, column: 7, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2866, file: !174, line: 236, column: 7)
!3049 = !DILocation(line: 146, column: 41, scope: !2915, inlinedAt: !3046)
!3050 = !DILocation(line: 146, column: 50, scope: !2915, inlinedAt: !3046)
!3051 = !DILocation(line: 146, column: 60, scope: !2915, inlinedAt: !3046)
!3052 = !DILocation(line: 146, column: 70, scope: !2915, inlinedAt: !3046)
!3053 = !DILocation(line: 146, column: 80, scope: !2915, inlinedAt: !3046)
!3054 = !DILocation(line: 146, column: 90, scope: !2915, inlinedAt: !3046)
!3055 = !DILocation(line: 146, column: 100, scope: !2915, inlinedAt: !3046)
!3056 = !DILocation(line: 146, column: 110, scope: !2915, inlinedAt: !3046)
!3057 = !DILocation(line: 146, column: 120, scope: !2915, inlinedAt: !3046)
!3058 = !DILocation(line: 148, column: 7, scope: !2942, inlinedAt: !3046)
!3059 = !DILocation(line: 132, column: 25, scope: !2944, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 153, column: 16, scope: !2958, inlinedAt: !3046)
!3061 = !DILocation(line: 132, column: 41, scope: !2944, inlinedAt: !3060)
!3062 = !DILocation(line: 132, column: 50, scope: !2944, inlinedAt: !3060)
!3063 = !DILocation(line: 132, column: 60, scope: !2944, inlinedAt: !3060)
!3064 = !DILocation(line: 132, column: 70, scope: !2944, inlinedAt: !3060)
!3065 = !DILocation(line: 132, column: 80, scope: !2944, inlinedAt: !3060)
!3066 = !DILocation(line: 132, column: 90, scope: !2944, inlinedAt: !3060)
!3067 = !DILocation(line: 132, column: 100, scope: !2944, inlinedAt: !3060)
!3068 = !DILocation(line: 132, column: 110, scope: !2944, inlinedAt: !3060)
!3069 = !DILocation(line: 134, column: 7, scope: !2969, inlinedAt: !3060)
!3070 = !DILocation(line: 134, column: 7, scope: !2944, inlinedAt: !3060)
!3071 = !DILocation(line: 118, column: 25, scope: !2971, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 139, column: 16, scope: !2984, inlinedAt: !3060)
!3073 = !DILocation(line: 118, column: 41, scope: !2971, inlinedAt: !3072)
!3074 = !DILocation(line: 118, column: 50, scope: !2971, inlinedAt: !3072)
!3075 = !DILocation(line: 118, column: 60, scope: !2971, inlinedAt: !3072)
!3076 = !DILocation(line: 118, column: 70, scope: !2971, inlinedAt: !3072)
!3077 = !DILocation(line: 118, column: 80, scope: !2971, inlinedAt: !3072)
!3078 = !DILocation(line: 118, column: 90, scope: !2971, inlinedAt: !3072)
!3079 = !DILocation(line: 118, column: 100, scope: !2971, inlinedAt: !3072)
!3080 = !DILocation(line: 120, column: 7, scope: !2994, inlinedAt: !3072)
!3081 = !DILocation(line: 120, column: 7, scope: !2971, inlinedAt: !3072)
!3082 = !DILocation(line: 104, column: 25, scope: !2997, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 125, column: 16, scope: !3009, inlinedAt: !3072)
!3084 = !DILocation(line: 104, column: 41, scope: !2997, inlinedAt: !3083)
!3085 = !DILocation(line: 104, column: 50, scope: !2997, inlinedAt: !3083)
!3086 = !DILocation(line: 104, column: 60, scope: !2997, inlinedAt: !3083)
!3087 = !DILocation(line: 104, column: 70, scope: !2997, inlinedAt: !3083)
!3088 = !DILocation(line: 104, column: 80, scope: !2997, inlinedAt: !3083)
!3089 = !DILocation(line: 104, column: 90, scope: !2997, inlinedAt: !3083)
!3090 = !DILocation(line: 106, column: 7, scope: !3018, inlinedAt: !3083)
!3091 = !DILocation(line: 106, column: 7, scope: !2997, inlinedAt: !3083)
!3092 = !DILocation(line: 90, column: 25, scope: !3021, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 111, column: 16, scope: !3032, inlinedAt: !3083)
!3094 = !DILocation(line: 90, column: 41, scope: !3021, inlinedAt: !3093)
!3095 = !DILocation(line: 90, column: 50, scope: !3021, inlinedAt: !3093)
!3096 = !DILocation(line: 90, column: 60, scope: !3021, inlinedAt: !3093)
!3097 = !DILocation(line: 90, column: 70, scope: !3021, inlinedAt: !3093)
!3098 = !DILocation(line: 90, column: 80, scope: !3021, inlinedAt: !3093)
!3099 = !DILocation(line: 92, column: 7, scope: !3040, inlinedAt: !3093)
!3100 = !DILocation(line: 92, column: 7, scope: !3021, inlinedAt: !3093)
!3101 = !DILocalVariable(name: "s1", arg: 1, scope: !3102, file: !2885, line: 76, type: !41)
!3102 = distinct !DISubprogram(name: "strcaseeq6", scope: !2885, file: !2885, line: 76, type: !3103, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3105)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!52, !41, !41, !32, !32, !32}
!3105 = !{!3101, !3106, !3107, !3108, !3109}
!3106 = !DILocalVariable(name: "s2", arg: 2, scope: !3102, file: !2885, line: 76, type: !41)
!3107 = !DILocalVariable(name: "s26", arg: 3, scope: !3102, file: !2885, line: 76, type: !32)
!3108 = !DILocalVariable(name: "s27", arg: 4, scope: !3102, file: !2885, line: 76, type: !32)
!3109 = !DILocalVariable(name: "s28", arg: 5, scope: !3102, file: !2885, line: 76, type: !32)
!3110 = !DILocation(line: 76, column: 25, scope: !3102, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 97, column: 16, scope: !3112, inlinedAt: !3093)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !2885, line: 94, column: 11)
!3113 = distinct !DILexicalBlock(scope: !3040, file: !2885, line: 93, column: 5)
!3114 = !DILocation(line: 76, column: 41, scope: !3102, inlinedAt: !3111)
!3115 = !DILocation(line: 76, column: 50, scope: !3102, inlinedAt: !3111)
!3116 = !DILocation(line: 76, column: 60, scope: !3102, inlinedAt: !3111)
!3117 = !DILocation(line: 76, column: 70, scope: !3102, inlinedAt: !3111)
!3118 = !DILocation(line: 78, column: 7, scope: !3119, inlinedAt: !3111)
!3119 = distinct !DILexicalBlock(scope: !3102, file: !2885, line: 78, column: 7)
!3120 = !DILocation(line: 78, column: 7, scope: !3102, inlinedAt: !3111)
!3121 = !DILocalVariable(name: "s1", arg: 1, scope: !3122, file: !2885, line: 62, type: !41)
!3122 = distinct !DISubprogram(name: "strcaseeq7", scope: !2885, file: !2885, line: 62, type: !3123, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3125)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!52, !41, !41, !32, !32}
!3125 = !{!3121, !3126, !3127, !3128}
!3126 = !DILocalVariable(name: "s2", arg: 2, scope: !3122, file: !2885, line: 62, type: !41)
!3127 = !DILocalVariable(name: "s27", arg: 3, scope: !3122, file: !2885, line: 62, type: !32)
!3128 = !DILocalVariable(name: "s28", arg: 4, scope: !3122, file: !2885, line: 62, type: !32)
!3129 = !DILocation(line: 62, column: 25, scope: !3122, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 83, column: 16, scope: !3131, inlinedAt: !3111)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !2885, line: 80, column: 11)
!3132 = distinct !DILexicalBlock(scope: !3119, file: !2885, line: 79, column: 5)
!3133 = !DILocation(line: 62, column: 41, scope: !3122, inlinedAt: !3130)
!3134 = !DILocation(line: 62, column: 50, scope: !3122, inlinedAt: !3130)
!3135 = !DILocation(line: 62, column: 60, scope: !3122, inlinedAt: !3130)
!3136 = !DILocation(line: 64, column: 7, scope: !3137, inlinedAt: !3130)
!3137 = distinct !DILexicalBlock(scope: !3122, file: !2885, line: 64, column: 7)
!3138 = !DILocation(line: 236, column: 7, scope: !2866)
!3139 = !DILocation(line: 237, column: 12, scope: !3048)
!3140 = !DILocation(line: 237, column: 21, scope: !3048)
!3141 = !DILocation(line: 237, column: 5, scope: !3048)
!3142 = !DILocation(line: 239, column: 13, scope: !2866)
!3143 = !DILocation(line: 239, column: 11, scope: !2866)
!3144 = !DILocation(line: 239, column: 3, scope: !2866)
!3145 = !DILocation(line: 0, scope: !2866)
!3146 = !DILocation(line: 240, column: 1, scope: !2866)
!3147 = distinct !DISubprogram(name: "quotearg_alloc", scope: !174, file: !174, line: 799, type: !3148, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3150)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!31, !41, !43, !2184}
!3150 = !{!3151, !3152, !3153}
!3151 = !DILocalVariable(name: "arg", arg: 1, scope: !3147, file: !174, line: 799, type: !41)
!3152 = !DILocalVariable(name: "argsize", arg: 2, scope: !3147, file: !174, line: 799, type: !43)
!3153 = !DILocalVariable(name: "o", arg: 3, scope: !3147, file: !174, line: 800, type: !2184)
!3154 = !DILocation(line: 799, column: 29, scope: !3147)
!3155 = !DILocation(line: 799, column: 41, scope: !3147)
!3156 = !DILocation(line: 800, column: 47, scope: !3147)
!3157 = !DILocalVariable(name: "arg", arg: 1, scope: !3158, file: !174, line: 812, type: !41)
!3158 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !174, file: !174, line: 812, type: !3159, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3161)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!31, !41, !43, !253, !2184}
!3161 = !{!3157, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169}
!3162 = !DILocalVariable(name: "argsize", arg: 2, scope: !3158, file: !174, line: 812, type: !43)
!3163 = !DILocalVariable(name: "size", arg: 3, scope: !3158, file: !174, line: 812, type: !253)
!3164 = !DILocalVariable(name: "o", arg: 4, scope: !3158, file: !174, line: 813, type: !2184)
!3165 = !DILocalVariable(name: "p", scope: !3158, file: !174, line: 815, type: !2184)
!3166 = !DILocalVariable(name: "e", scope: !3158, file: !174, line: 816, type: !52)
!3167 = !DILocalVariable(name: "flags", scope: !3158, file: !174, line: 818, type: !52)
!3168 = !DILocalVariable(name: "bufsize", scope: !3158, file: !174, line: 819, type: !43)
!3169 = !DILocalVariable(name: "buf", scope: !3158, file: !174, line: 823, type: !31)
!3170 = !DILocation(line: 812, column: 33, scope: !3158, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 802, column: 10, scope: !3147)
!3172 = !DILocation(line: 812, column: 45, scope: !3158, inlinedAt: !3171)
!3173 = !DILocation(line: 812, column: 62, scope: !3158, inlinedAt: !3171)
!3174 = !DILocation(line: 813, column: 51, scope: !3158, inlinedAt: !3171)
!3175 = !DILocation(line: 815, column: 37, scope: !3158, inlinedAt: !3171)
!3176 = !DILocation(line: 815, column: 33, scope: !3158, inlinedAt: !3171)
!3177 = !DILocation(line: 816, column: 11, scope: !3158, inlinedAt: !3171)
!3178 = !DILocation(line: 816, column: 7, scope: !3158, inlinedAt: !3171)
!3179 = !DILocation(line: 818, column: 18, scope: !3158, inlinedAt: !3171)
!3180 = !DILocation(line: 818, column: 24, scope: !3158, inlinedAt: !3171)
!3181 = !DILocation(line: 818, column: 7, scope: !3158, inlinedAt: !3171)
!3182 = !DILocation(line: 819, column: 69, scope: !3158, inlinedAt: !3171)
!3183 = !DILocation(line: 820, column: 53, scope: !3158, inlinedAt: !3171)
!3184 = !DILocation(line: 821, column: 49, scope: !3158, inlinedAt: !3171)
!3185 = !DILocation(line: 822, column: 49, scope: !3158, inlinedAt: !3171)
!3186 = !DILocation(line: 819, column: 20, scope: !3158, inlinedAt: !3171)
!3187 = !DILocation(line: 822, column: 62, scope: !3158, inlinedAt: !3171)
!3188 = !DILocation(line: 819, column: 10, scope: !3158, inlinedAt: !3171)
!3189 = !DILocalVariable(name: "n", arg: 1, scope: !3190, file: !249, line: 216, type: !43)
!3190 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !3191, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3192)
!3191 = !DISubroutineType(types: !221)
!3192 = !{!3189}
!3193 = !DILocation(line: 216, column: 20, scope: !3190, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 823, column: 15, scope: !3158, inlinedAt: !3171)
!3195 = !DILocation(line: 218, column: 10, scope: !3190, inlinedAt: !3194)
!3196 = !DILocation(line: 823, column: 9, scope: !3158, inlinedAt: !3171)
!3197 = !DILocation(line: 824, column: 60, scope: !3158, inlinedAt: !3171)
!3198 = !DILocation(line: 826, column: 32, scope: !3158, inlinedAt: !3171)
!3199 = !DILocation(line: 826, column: 47, scope: !3158, inlinedAt: !3171)
!3200 = !DILocation(line: 824, column: 3, scope: !3158, inlinedAt: !3171)
!3201 = !DILocation(line: 827, column: 9, scope: !3158, inlinedAt: !3171)
!3202 = !DILocation(line: 802, column: 3, scope: !3147)
!3203 = !DILocation(line: 812, column: 33, scope: !3158)
!3204 = !DILocation(line: 812, column: 45, scope: !3158)
!3205 = !DILocation(line: 812, column: 62, scope: !3158)
!3206 = !DILocation(line: 813, column: 51, scope: !3158)
!3207 = !DILocation(line: 815, column: 37, scope: !3158)
!3208 = !DILocation(line: 815, column: 33, scope: !3158)
!3209 = !DILocation(line: 816, column: 11, scope: !3158)
!3210 = !DILocation(line: 816, column: 7, scope: !3158)
!3211 = !DILocation(line: 818, column: 18, scope: !3158)
!3212 = !DILocation(line: 818, column: 27, scope: !3158)
!3213 = !DILocation(line: 818, column: 24, scope: !3158)
!3214 = !DILocation(line: 818, column: 7, scope: !3158)
!3215 = !DILocation(line: 819, column: 69, scope: !3158)
!3216 = !DILocation(line: 820, column: 53, scope: !3158)
!3217 = !DILocation(line: 821, column: 49, scope: !3158)
!3218 = !DILocation(line: 822, column: 49, scope: !3158)
!3219 = !DILocation(line: 819, column: 20, scope: !3158)
!3220 = !DILocation(line: 822, column: 62, scope: !3158)
!3221 = !DILocation(line: 819, column: 10, scope: !3158)
!3222 = !DILocation(line: 216, column: 20, scope: !3190, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 823, column: 15, scope: !3158)
!3224 = !DILocation(line: 218, column: 10, scope: !3190, inlinedAt: !3223)
!3225 = !DILocation(line: 823, column: 9, scope: !3158)
!3226 = !DILocation(line: 824, column: 60, scope: !3158)
!3227 = !DILocation(line: 826, column: 32, scope: !3158)
!3228 = !DILocation(line: 826, column: 47, scope: !3158)
!3229 = !DILocation(line: 824, column: 3, scope: !3158)
!3230 = !DILocation(line: 827, column: 9, scope: !3158)
!3231 = !DILocation(line: 828, column: 7, scope: !3158)
!3232 = !DILocation(line: 829, column: 11, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3158, file: !174, line: 828, column: 7)
!3234 = !DILocation(line: 829, column: 5, scope: !3233)
!3235 = !DILocation(line: 830, column: 3, scope: !3158)
!3236 = distinct !DISubprogram(name: "quotearg_free", scope: !174, file: !174, line: 848, type: !728, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3237)
!3237 = !{!3238, !3239}
!3238 = !DILocalVariable(name: "sv", scope: !3236, file: !174, line: 850, type: !198)
!3239 = !DILocalVariable(name: "i", scope: !3236, file: !174, line: 851, type: !52)
!3240 = !DILocation(line: 850, column: 24, scope: !3236)
!3241 = !DILocation(line: 850, column: 19, scope: !3236)
!3242 = !DILocation(line: 851, column: 7, scope: !3236)
!3243 = !DILocation(line: 852, column: 19, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !174, line: 852, column: 3)
!3245 = distinct !DILexicalBlock(scope: !3236, file: !174, line: 852, column: 3)
!3246 = !DILocation(line: 852, column: 17, scope: !3244)
!3247 = !DILocation(line: 852, column: 3, scope: !3245)
!3248 = !DILocation(line: 853, column: 17, scope: !3244)
!3249 = !{!3250, !721, i64 8}
!3250 = !{!"slotvec", !1210, i64 0, !721, i64 8}
!3251 = !DILocation(line: 853, column: 5, scope: !3244)
!3252 = !DILocation(line: 852, column: 28, scope: !3244)
!3253 = distinct !{!3253, !3247, !3254}
!3254 = !DILocation(line: 853, column: 20, scope: !3245)
!3255 = !DILocation(line: 854, column: 13, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3236, file: !174, line: 854, column: 7)
!3257 = !DILocation(line: 854, column: 17, scope: !3256)
!3258 = !DILocation(line: 854, column: 7, scope: !3236)
!3259 = !DILocation(line: 856, column: 7, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3256, file: !174, line: 855, column: 5)
!3261 = !DILocation(line: 857, column: 21, scope: !3260)
!3262 = !{!3250, !1210, i64 0}
!3263 = !DILocation(line: 858, column: 20, scope: !3260)
!3264 = !DILocation(line: 859, column: 5, scope: !3260)
!3265 = !DILocation(line: 860, column: 10, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3236, file: !174, line: 860, column: 7)
!3267 = !DILocation(line: 860, column: 7, scope: !3236)
!3268 = !DILocation(line: 862, column: 13, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3266, file: !174, line: 861, column: 5)
!3270 = !DILocation(line: 862, column: 7, scope: !3269)
!3271 = !DILocation(line: 863, column: 15, scope: !3269)
!3272 = !DILocation(line: 864, column: 5, scope: !3269)
!3273 = !DILocation(line: 865, column: 10, scope: !3236)
!3274 = !DILocation(line: 866, column: 1, scope: !3236)
!3275 = distinct !DISubprogram(name: "quotearg_n", scope: !174, file: !174, line: 931, type: !3276, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!31, !52, !41}
!3278 = !{!3279, !3280}
!3279 = !DILocalVariable(name: "n", arg: 1, scope: !3275, file: !174, line: 931, type: !52)
!3280 = !DILocalVariable(name: "arg", arg: 2, scope: !3275, file: !174, line: 931, type: !41)
!3281 = !DILocation(line: 931, column: 17, scope: !3275)
!3282 = !DILocation(line: 931, column: 32, scope: !3275)
!3283 = !DILocation(line: 933, column: 10, scope: !3275)
!3284 = !DILocation(line: 933, column: 3, scope: !3275)
!3285 = distinct !DISubprogram(name: "quotearg_n_options", scope: !174, file: !174, line: 877, type: !3286, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3288)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!31, !52, !41, !43, !2184}
!3288 = !{!3289, !3290, !3291, !3292, !3293, !3294, !3295, !3298, !3299, !3301, !3302, !3303}
!3289 = !DILocalVariable(name: "n", arg: 1, scope: !3285, file: !174, line: 877, type: !52)
!3290 = !DILocalVariable(name: "arg", arg: 2, scope: !3285, file: !174, line: 877, type: !41)
!3291 = !DILocalVariable(name: "argsize", arg: 3, scope: !3285, file: !174, line: 877, type: !43)
!3292 = !DILocalVariable(name: "options", arg: 4, scope: !3285, file: !174, line: 878, type: !2184)
!3293 = !DILocalVariable(name: "e", scope: !3285, file: !174, line: 880, type: !52)
!3294 = !DILocalVariable(name: "sv", scope: !3285, file: !174, line: 882, type: !198)
!3295 = !DILocalVariable(name: "preallocated", scope: !3296, file: !174, line: 889, type: !59)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !174, line: 888, column: 5)
!3297 = distinct !DILexicalBlock(scope: !3285, file: !174, line: 887, column: 7)
!3298 = !DILocalVariable(name: "nmax", scope: !3296, file: !174, line: 890, type: !52)
!3299 = !DILocalVariable(name: "size", scope: !3300, file: !174, line: 903, type: !43)
!3300 = distinct !DILexicalBlock(scope: !3285, file: !174, line: 902, column: 3)
!3301 = !DILocalVariable(name: "val", scope: !3300, file: !174, line: 904, type: !31)
!3302 = !DILocalVariable(name: "flags", scope: !3300, file: !174, line: 906, type: !52)
!3303 = !DILocalVariable(name: "qsize", scope: !3300, file: !174, line: 907, type: !43)
!3304 = !DILocation(line: 877, column: 25, scope: !3285)
!3305 = !DILocation(line: 877, column: 40, scope: !3285)
!3306 = !DILocation(line: 877, column: 52, scope: !3285)
!3307 = !DILocation(line: 878, column: 51, scope: !3285)
!3308 = !DILocation(line: 880, column: 11, scope: !3285)
!3309 = !DILocation(line: 880, column: 7, scope: !3285)
!3310 = !DILocation(line: 882, column: 24, scope: !3285)
!3311 = !DILocation(line: 882, column: 19, scope: !3285)
!3312 = !DILocation(line: 884, column: 9, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3285, file: !174, line: 884, column: 7)
!3314 = !DILocation(line: 884, column: 7, scope: !3285)
!3315 = !DILocation(line: 885, column: 5, scope: !3313)
!3316 = !DILocation(line: 887, column: 7, scope: !3297)
!3317 = !DILocation(line: 887, column: 14, scope: !3297)
!3318 = !DILocation(line: 887, column: 7, scope: !3285)
!3319 = !DILocation(line: 889, column: 31, scope: !3296)
!3320 = !DILocation(line: 890, column: 11, scope: !3296)
!3321 = !DILocation(line: 892, column: 16, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3296, file: !174, line: 892, column: 11)
!3323 = !DILocation(line: 892, column: 11, scope: !3296)
!3324 = !DILocation(line: 893, column: 9, scope: !3322)
!3325 = !DILocation(line: 895, column: 32, scope: !3296)
!3326 = !DILocation(line: 895, column: 61, scope: !3296)
!3327 = !DILocation(line: 895, column: 58, scope: !3296)
!3328 = !DILocation(line: 895, column: 66, scope: !3296)
!3329 = !DILocation(line: 895, column: 22, scope: !3296)
!3330 = !DILocation(line: 895, column: 15, scope: !3296)
!3331 = !DILocation(line: 896, column: 11, scope: !3296)
!3332 = !DILocation(line: 897, column: 15, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3296, file: !174, line: 896, column: 11)
!3334 = !{i64 0, i64 8, !1321, i64 8, i64 8, !720}
!3335 = !DILocation(line: 897, column: 9, scope: !3333)
!3336 = !DILocation(line: 898, column: 20, scope: !3296)
!3337 = !DILocation(line: 898, column: 18, scope: !3296)
!3338 = !DILocation(line: 898, column: 7, scope: !3296)
!3339 = !DILocation(line: 898, column: 38, scope: !3296)
!3340 = !DILocation(line: 898, column: 31, scope: !3296)
!3341 = !DILocation(line: 898, column: 48, scope: !3296)
!3342 = !DILocation(line: 899, column: 14, scope: !3296)
!3343 = !DILocation(line: 900, column: 5, scope: !3296)
!3344 = !DILocation(line: 0, scope: !3285)
!3345 = !DILocation(line: 903, column: 19, scope: !3300)
!3346 = !DILocation(line: 903, column: 25, scope: !3300)
!3347 = !DILocation(line: 903, column: 12, scope: !3300)
!3348 = !DILocation(line: 904, column: 23, scope: !3300)
!3349 = !DILocation(line: 904, column: 11, scope: !3300)
!3350 = !DILocation(line: 906, column: 26, scope: !3300)
!3351 = !DILocation(line: 906, column: 32, scope: !3300)
!3352 = !DILocation(line: 906, column: 9, scope: !3300)
!3353 = !DILocation(line: 908, column: 55, scope: !3300)
!3354 = !DILocation(line: 909, column: 46, scope: !3300)
!3355 = !DILocation(line: 910, column: 55, scope: !3300)
!3356 = !DILocation(line: 911, column: 55, scope: !3300)
!3357 = !DILocation(line: 907, column: 20, scope: !3300)
!3358 = !DILocation(line: 907, column: 12, scope: !3300)
!3359 = !DILocation(line: 913, column: 14, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3300, file: !174, line: 913, column: 9)
!3361 = !DILocation(line: 913, column: 9, scope: !3300)
!3362 = !DILocation(line: 915, column: 35, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3360, file: !174, line: 914, column: 7)
!3364 = !DILocation(line: 915, column: 20, scope: !3363)
!3365 = !DILocation(line: 916, column: 17, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3363, file: !174, line: 916, column: 13)
!3367 = !DILocation(line: 916, column: 13, scope: !3363)
!3368 = !DILocation(line: 917, column: 11, scope: !3366)
!3369 = !DILocation(line: 216, column: 20, scope: !3190, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 918, column: 27, scope: !3363)
!3371 = !DILocation(line: 218, column: 10, scope: !3190, inlinedAt: !3370)
!3372 = !DILocation(line: 918, column: 19, scope: !3363)
!3373 = !DILocation(line: 919, column: 69, scope: !3363)
!3374 = !DILocation(line: 921, column: 44, scope: !3363)
!3375 = !DILocation(line: 922, column: 44, scope: !3363)
!3376 = !DILocation(line: 919, column: 9, scope: !3363)
!3377 = !DILocation(line: 923, column: 7, scope: !3363)
!3378 = !DILocation(line: 0, scope: !3300)
!3379 = !DILocation(line: 925, column: 11, scope: !3300)
!3380 = !DILocation(line: 926, column: 5, scope: !3300)
!3381 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !174, file: !174, line: 937, type: !3382, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3384)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!31, !52, !41, !43}
!3384 = !{!3385, !3386, !3387}
!3385 = !DILocalVariable(name: "n", arg: 1, scope: !3381, file: !174, line: 937, type: !52)
!3386 = !DILocalVariable(name: "arg", arg: 2, scope: !3381, file: !174, line: 937, type: !41)
!3387 = !DILocalVariable(name: "argsize", arg: 3, scope: !3381, file: !174, line: 937, type: !43)
!3388 = !DILocation(line: 937, column: 21, scope: !3381)
!3389 = !DILocation(line: 937, column: 36, scope: !3381)
!3390 = !DILocation(line: 937, column: 48, scope: !3381)
!3391 = !DILocation(line: 939, column: 10, scope: !3381)
!3392 = !DILocation(line: 939, column: 3, scope: !3381)
!3393 = distinct !DISubprogram(name: "quotearg", scope: !174, file: !174, line: 943, type: !3394, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3396)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!31, !41}
!3396 = !{!3397}
!3397 = !DILocalVariable(name: "arg", arg: 1, scope: !3393, file: !174, line: 943, type: !41)
!3398 = !DILocation(line: 943, column: 23, scope: !3393)
!3399 = !DILocation(line: 931, column: 17, scope: !3275, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 945, column: 10, scope: !3393)
!3401 = !DILocation(line: 931, column: 32, scope: !3275, inlinedAt: !3400)
!3402 = !DILocation(line: 933, column: 10, scope: !3275, inlinedAt: !3400)
!3403 = !DILocation(line: 945, column: 3, scope: !3393)
!3404 = distinct !DISubprogram(name: "quotearg_mem", scope: !174, file: !174, line: 949, type: !3405, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3407)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!31, !41, !43}
!3407 = !{!3408, !3409}
!3408 = !DILocalVariable(name: "arg", arg: 1, scope: !3404, file: !174, line: 949, type: !41)
!3409 = !DILocalVariable(name: "argsize", arg: 2, scope: !3404, file: !174, line: 949, type: !43)
!3410 = !DILocation(line: 949, column: 27, scope: !3404)
!3411 = !DILocation(line: 949, column: 39, scope: !3404)
!3412 = !DILocation(line: 937, column: 21, scope: !3381, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 951, column: 10, scope: !3404)
!3414 = !DILocation(line: 937, column: 36, scope: !3381, inlinedAt: !3413)
!3415 = !DILocation(line: 937, column: 48, scope: !3381, inlinedAt: !3413)
!3416 = !DILocation(line: 939, column: 10, scope: !3381, inlinedAt: !3413)
!3417 = !DILocation(line: 951, column: 3, scope: !3404)
!3418 = distinct !DISubprogram(name: "quotearg_n_style", scope: !174, file: !174, line: 955, type: !3419, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3421)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!31, !52, !11, !41}
!3421 = !{!3422, !3423, !3424, !3425}
!3422 = !DILocalVariable(name: "n", arg: 1, scope: !3418, file: !174, line: 955, type: !52)
!3423 = !DILocalVariable(name: "s", arg: 2, scope: !3418, file: !174, line: 955, type: !11)
!3424 = !DILocalVariable(name: "arg", arg: 3, scope: !3418, file: !174, line: 955, type: !41)
!3425 = !DILocalVariable(name: "o", scope: !3418, file: !174, line: 957, type: !2185)
!3426 = !DILocation(line: 955, column: 23, scope: !3418)
!3427 = !DILocation(line: 955, column: 45, scope: !3418)
!3428 = !DILocation(line: 955, column: 60, scope: !3418)
!3429 = !DILocation(line: 957, column: 3, scope: !3418)
!3430 = !DILocation(line: 957, column: 32, scope: !3418)
!3431 = !DILocalVariable(name: "style", arg: 1, scope: !3432, file: !174, line: 193, type: !11)
!3432 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !174, file: !174, line: 193, type: !3433, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3435)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!179, !11}
!3435 = !{!3431, !3436}
!3436 = !DILocalVariable(name: "o", scope: !3432, file: !174, line: 195, type: !179)
!3437 = !DILocation(line: 193, column: 48, scope: !3432, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 957, column: 36, scope: !3418)
!3439 = !DILocation(line: 195, column: 26, scope: !3432, inlinedAt: !3438)
!3440 = !{!3441}
!3441 = distinct !{!3441, !3442, !"quoting_options_from_style: argument 0"}
!3442 = distinct !{!3442, !"quoting_options_from_style"}
!3443 = !DILocation(line: 196, column: 13, scope: !3444, inlinedAt: !3438)
!3444 = distinct !DILexicalBlock(scope: !3432, file: !174, line: 196, column: 7)
!3445 = !DILocation(line: 196, column: 7, scope: !3432, inlinedAt: !3438)
!3446 = !DILocation(line: 197, column: 5, scope: !3444, inlinedAt: !3438)
!3447 = !DILocation(line: 198, column: 5, scope: !3432, inlinedAt: !3438)
!3448 = !DILocation(line: 198, column: 11, scope: !3432, inlinedAt: !3438)
!3449 = !DILocation(line: 958, column: 10, scope: !3418)
!3450 = !DILocation(line: 959, column: 1, scope: !3418)
!3451 = !DILocation(line: 958, column: 3, scope: !3418)
!3452 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !174, file: !174, line: 962, type: !3453, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3455)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!31, !52, !11, !41, !43}
!3455 = !{!3456, !3457, !3458, !3459, !3460}
!3456 = !DILocalVariable(name: "n", arg: 1, scope: !3452, file: !174, line: 962, type: !52)
!3457 = !DILocalVariable(name: "s", arg: 2, scope: !3452, file: !174, line: 962, type: !11)
!3458 = !DILocalVariable(name: "arg", arg: 3, scope: !3452, file: !174, line: 963, type: !41)
!3459 = !DILocalVariable(name: "argsize", arg: 4, scope: !3452, file: !174, line: 963, type: !43)
!3460 = !DILocalVariable(name: "o", scope: !3452, file: !174, line: 965, type: !2185)
!3461 = !DILocation(line: 962, column: 27, scope: !3452)
!3462 = !DILocation(line: 962, column: 49, scope: !3452)
!3463 = !DILocation(line: 963, column: 35, scope: !3452)
!3464 = !DILocation(line: 963, column: 47, scope: !3452)
!3465 = !DILocation(line: 965, column: 3, scope: !3452)
!3466 = !DILocation(line: 965, column: 32, scope: !3452)
!3467 = !DILocation(line: 193, column: 48, scope: !3432, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 965, column: 36, scope: !3452)
!3469 = !DILocation(line: 195, column: 26, scope: !3432, inlinedAt: !3468)
!3470 = !{!3471}
!3471 = distinct !{!3471, !3472, !"quoting_options_from_style: argument 0"}
!3472 = distinct !{!3472, !"quoting_options_from_style"}
!3473 = !DILocation(line: 196, column: 13, scope: !3444, inlinedAt: !3468)
!3474 = !DILocation(line: 196, column: 7, scope: !3432, inlinedAt: !3468)
!3475 = !DILocation(line: 197, column: 5, scope: !3444, inlinedAt: !3468)
!3476 = !DILocation(line: 198, column: 5, scope: !3432, inlinedAt: !3468)
!3477 = !DILocation(line: 198, column: 11, scope: !3432, inlinedAt: !3468)
!3478 = !DILocation(line: 966, column: 10, scope: !3452)
!3479 = !DILocation(line: 967, column: 1, scope: !3452)
!3480 = !DILocation(line: 966, column: 3, scope: !3452)
!3481 = distinct !DISubprogram(name: "quotearg_style", scope: !174, file: !174, line: 970, type: !3482, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3484)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!31, !11, !41}
!3484 = !{!3485, !3486}
!3485 = !DILocalVariable(name: "s", arg: 1, scope: !3481, file: !174, line: 970, type: !11)
!3486 = !DILocalVariable(name: "arg", arg: 2, scope: !3481, file: !174, line: 970, type: !41)
!3487 = !DILocation(line: 970, column: 36, scope: !3481)
!3488 = !DILocation(line: 970, column: 51, scope: !3481)
!3489 = !DILocation(line: 955, column: 23, scope: !3418, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 972, column: 10, scope: !3481)
!3491 = !DILocation(line: 955, column: 45, scope: !3418, inlinedAt: !3490)
!3492 = !DILocation(line: 955, column: 60, scope: !3418, inlinedAt: !3490)
!3493 = !DILocation(line: 957, column: 3, scope: !3418, inlinedAt: !3490)
!3494 = !DILocation(line: 957, column: 32, scope: !3418, inlinedAt: !3490)
!3495 = !DILocation(line: 193, column: 48, scope: !3432, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 957, column: 36, scope: !3418, inlinedAt: !3490)
!3497 = !DILocation(line: 195, column: 26, scope: !3432, inlinedAt: !3496)
!3498 = !{!3499}
!3499 = distinct !{!3499, !3500, !"quoting_options_from_style: argument 0"}
!3500 = distinct !{!3500, !"quoting_options_from_style"}
!3501 = !DILocation(line: 196, column: 13, scope: !3444, inlinedAt: !3496)
!3502 = !DILocation(line: 196, column: 7, scope: !3432, inlinedAt: !3496)
!3503 = !DILocation(line: 197, column: 5, scope: !3444, inlinedAt: !3496)
!3504 = !DILocation(line: 198, column: 5, scope: !3432, inlinedAt: !3496)
!3505 = !DILocation(line: 198, column: 11, scope: !3432, inlinedAt: !3496)
!3506 = !DILocation(line: 958, column: 10, scope: !3418, inlinedAt: !3490)
!3507 = !DILocation(line: 959, column: 1, scope: !3418, inlinedAt: !3490)
!3508 = !DILocation(line: 972, column: 3, scope: !3481)
!3509 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !174, file: !174, line: 976, type: !3510, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3512)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!31, !11, !41, !43}
!3512 = !{!3513, !3514, !3515}
!3513 = !DILocalVariable(name: "s", arg: 1, scope: !3509, file: !174, line: 976, type: !11)
!3514 = !DILocalVariable(name: "arg", arg: 2, scope: !3509, file: !174, line: 976, type: !41)
!3515 = !DILocalVariable(name: "argsize", arg: 3, scope: !3509, file: !174, line: 976, type: !43)
!3516 = !DILocation(line: 976, column: 40, scope: !3509)
!3517 = !DILocation(line: 976, column: 55, scope: !3509)
!3518 = !DILocation(line: 976, column: 67, scope: !3509)
!3519 = !DILocation(line: 962, column: 27, scope: !3452, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 978, column: 10, scope: !3509)
!3521 = !DILocation(line: 962, column: 49, scope: !3452, inlinedAt: !3520)
!3522 = !DILocation(line: 963, column: 35, scope: !3452, inlinedAt: !3520)
!3523 = !DILocation(line: 963, column: 47, scope: !3452, inlinedAt: !3520)
!3524 = !DILocation(line: 965, column: 3, scope: !3452, inlinedAt: !3520)
!3525 = !DILocation(line: 965, column: 32, scope: !3452, inlinedAt: !3520)
!3526 = !DILocation(line: 193, column: 48, scope: !3432, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 965, column: 36, scope: !3452, inlinedAt: !3520)
!3528 = !DILocation(line: 195, column: 26, scope: !3432, inlinedAt: !3527)
!3529 = !{!3530}
!3530 = distinct !{!3530, !3531, !"quoting_options_from_style: argument 0"}
!3531 = distinct !{!3531, !"quoting_options_from_style"}
!3532 = !DILocation(line: 196, column: 13, scope: !3444, inlinedAt: !3527)
!3533 = !DILocation(line: 196, column: 7, scope: !3432, inlinedAt: !3527)
!3534 = !DILocation(line: 197, column: 5, scope: !3444, inlinedAt: !3527)
!3535 = !DILocation(line: 198, column: 5, scope: !3432, inlinedAt: !3527)
!3536 = !DILocation(line: 198, column: 11, scope: !3432, inlinedAt: !3527)
!3537 = !DILocation(line: 966, column: 10, scope: !3452, inlinedAt: !3520)
!3538 = !DILocation(line: 967, column: 1, scope: !3452, inlinedAt: !3520)
!3539 = !DILocation(line: 978, column: 3, scope: !3509)
!3540 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !174, file: !174, line: 982, type: !3541, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!31, !41, !43, !32}
!3543 = !{!3544, !3545, !3546, !3547}
!3544 = !DILocalVariable(name: "arg", arg: 1, scope: !3540, file: !174, line: 982, type: !41)
!3545 = !DILocalVariable(name: "argsize", arg: 2, scope: !3540, file: !174, line: 982, type: !43)
!3546 = !DILocalVariable(name: "ch", arg: 3, scope: !3540, file: !174, line: 982, type: !32)
!3547 = !DILocalVariable(name: "options", scope: !3540, file: !174, line: 984, type: !179)
!3548 = !DILocation(line: 982, column: 32, scope: !3540)
!3549 = !DILocation(line: 982, column: 44, scope: !3540)
!3550 = !DILocation(line: 982, column: 58, scope: !3540)
!3551 = !DILocation(line: 984, column: 3, scope: !3540)
!3552 = !DILocation(line: 985, column: 13, scope: !3540)
!3553 = !{i64 0, i64 4, !1012, i64 4, i64 4, !1119, i64 8, i64 32, !1012, i64 40, i64 8, !720, i64 48, i64 8, !720}
!3554 = !DILocation(line: 984, column: 26, scope: !3540)
!3555 = !DILocation(line: 152, column: 43, scope: !2206, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 986, column: 3, scope: !3540)
!3557 = !DILocation(line: 152, column: 51, scope: !2206, inlinedAt: !3556)
!3558 = !DILocation(line: 152, column: 58, scope: !2206, inlinedAt: !3556)
!3559 = !DILocation(line: 154, column: 17, scope: !2206, inlinedAt: !3556)
!3560 = !DILocation(line: 156, column: 62, scope: !2206, inlinedAt: !3556)
!3561 = !DILocation(line: 156, column: 57, scope: !2206, inlinedAt: !3556)
!3562 = !DILocation(line: 155, column: 17, scope: !2206, inlinedAt: !3556)
!3563 = !DILocation(line: 157, column: 15, scope: !2206, inlinedAt: !3556)
!3564 = !DILocation(line: 157, column: 7, scope: !2206, inlinedAt: !3556)
!3565 = !DILocation(line: 158, column: 12, scope: !2206, inlinedAt: !3556)
!3566 = !DILocation(line: 158, column: 15, scope: !2206, inlinedAt: !3556)
!3567 = !DILocation(line: 158, column: 25, scope: !2206, inlinedAt: !3556)
!3568 = !DILocation(line: 158, column: 7, scope: !2206, inlinedAt: !3556)
!3569 = !DILocation(line: 159, column: 18, scope: !2206, inlinedAt: !3556)
!3570 = !DILocation(line: 159, column: 23, scope: !2206, inlinedAt: !3556)
!3571 = !DILocation(line: 159, column: 6, scope: !2206, inlinedAt: !3556)
!3572 = !DILocation(line: 987, column: 10, scope: !3540)
!3573 = !DILocation(line: 988, column: 1, scope: !3540)
!3574 = !DILocation(line: 987, column: 3, scope: !3540)
!3575 = distinct !DISubprogram(name: "quotearg_char", scope: !174, file: !174, line: 991, type: !3576, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3578)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!31, !41, !32}
!3578 = !{!3579, !3580}
!3579 = !DILocalVariable(name: "arg", arg: 1, scope: !3575, file: !174, line: 991, type: !41)
!3580 = !DILocalVariable(name: "ch", arg: 2, scope: !3575, file: !174, line: 991, type: !32)
!3581 = !DILocation(line: 991, column: 28, scope: !3575)
!3582 = !DILocation(line: 991, column: 38, scope: !3575)
!3583 = !DILocation(line: 982, column: 32, scope: !3540, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 993, column: 10, scope: !3575)
!3585 = !DILocation(line: 982, column: 44, scope: !3540, inlinedAt: !3584)
!3586 = !DILocation(line: 982, column: 58, scope: !3540, inlinedAt: !3584)
!3587 = !DILocation(line: 984, column: 3, scope: !3540, inlinedAt: !3584)
!3588 = !DILocation(line: 985, column: 13, scope: !3540, inlinedAt: !3584)
!3589 = !DILocation(line: 984, column: 26, scope: !3540, inlinedAt: !3584)
!3590 = !DILocation(line: 152, column: 43, scope: !2206, inlinedAt: !3591)
!3591 = distinct !DILocation(line: 986, column: 3, scope: !3540, inlinedAt: !3584)
!3592 = !DILocation(line: 152, column: 51, scope: !2206, inlinedAt: !3591)
!3593 = !DILocation(line: 152, column: 58, scope: !2206, inlinedAt: !3591)
!3594 = !DILocation(line: 154, column: 17, scope: !2206, inlinedAt: !3591)
!3595 = !DILocation(line: 156, column: 62, scope: !2206, inlinedAt: !3591)
!3596 = !DILocation(line: 156, column: 57, scope: !2206, inlinedAt: !3591)
!3597 = !DILocation(line: 155, column: 17, scope: !2206, inlinedAt: !3591)
!3598 = !DILocation(line: 157, column: 15, scope: !2206, inlinedAt: !3591)
!3599 = !DILocation(line: 157, column: 7, scope: !2206, inlinedAt: !3591)
!3600 = !DILocation(line: 158, column: 12, scope: !2206, inlinedAt: !3591)
!3601 = !DILocation(line: 158, column: 15, scope: !2206, inlinedAt: !3591)
!3602 = !DILocation(line: 158, column: 25, scope: !2206, inlinedAt: !3591)
!3603 = !DILocation(line: 158, column: 7, scope: !2206, inlinedAt: !3591)
!3604 = !DILocation(line: 159, column: 18, scope: !2206, inlinedAt: !3591)
!3605 = !DILocation(line: 159, column: 23, scope: !2206, inlinedAt: !3591)
!3606 = !DILocation(line: 159, column: 6, scope: !2206, inlinedAt: !3591)
!3607 = !DILocation(line: 987, column: 10, scope: !3540, inlinedAt: !3584)
!3608 = !DILocation(line: 988, column: 1, scope: !3540, inlinedAt: !3584)
!3609 = !DILocation(line: 993, column: 3, scope: !3575)
!3610 = distinct !DISubprogram(name: "quotearg_colon", scope: !174, file: !174, line: 997, type: !3394, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3611)
!3611 = !{!3612}
!3612 = !DILocalVariable(name: "arg", arg: 1, scope: !3610, file: !174, line: 997, type: !41)
!3613 = !DILocation(line: 997, column: 29, scope: !3610)
!3614 = !DILocation(line: 991, column: 28, scope: !3575, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 999, column: 10, scope: !3610)
!3616 = !DILocation(line: 991, column: 38, scope: !3575, inlinedAt: !3615)
!3617 = !DILocation(line: 982, column: 32, scope: !3540, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 993, column: 10, scope: !3575, inlinedAt: !3615)
!3619 = !DILocation(line: 982, column: 44, scope: !3540, inlinedAt: !3618)
!3620 = !DILocation(line: 982, column: 58, scope: !3540, inlinedAt: !3618)
!3621 = !DILocation(line: 984, column: 3, scope: !3540, inlinedAt: !3618)
!3622 = !DILocation(line: 985, column: 13, scope: !3540, inlinedAt: !3618)
!3623 = !DILocation(line: 984, column: 26, scope: !3540, inlinedAt: !3618)
!3624 = !DILocation(line: 152, column: 43, scope: !2206, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 986, column: 3, scope: !3540, inlinedAt: !3618)
!3626 = !DILocation(line: 152, column: 51, scope: !2206, inlinedAt: !3625)
!3627 = !DILocation(line: 152, column: 58, scope: !2206, inlinedAt: !3625)
!3628 = !DILocation(line: 154, column: 17, scope: !2206, inlinedAt: !3625)
!3629 = !DILocation(line: 156, column: 57, scope: !2206, inlinedAt: !3625)
!3630 = !DILocation(line: 155, column: 17, scope: !2206, inlinedAt: !3625)
!3631 = !DILocation(line: 157, column: 7, scope: !2206, inlinedAt: !3625)
!3632 = !DILocation(line: 158, column: 12, scope: !2206, inlinedAt: !3625)
!3633 = !DILocation(line: 159, column: 6, scope: !2206, inlinedAt: !3625)
!3634 = !DILocation(line: 987, column: 10, scope: !3540, inlinedAt: !3618)
!3635 = !DILocation(line: 988, column: 1, scope: !3540, inlinedAt: !3618)
!3636 = !DILocation(line: 999, column: 3, scope: !3610)
!3637 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !174, file: !174, line: 1003, type: !3405, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3638)
!3638 = !{!3639, !3640}
!3639 = !DILocalVariable(name: "arg", arg: 1, scope: !3637, file: !174, line: 1003, type: !41)
!3640 = !DILocalVariable(name: "argsize", arg: 2, scope: !3637, file: !174, line: 1003, type: !43)
!3641 = !DILocation(line: 1003, column: 33, scope: !3637)
!3642 = !DILocation(line: 1003, column: 45, scope: !3637)
!3643 = !DILocation(line: 982, column: 32, scope: !3540, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 1005, column: 10, scope: !3637)
!3645 = !DILocation(line: 982, column: 44, scope: !3540, inlinedAt: !3644)
!3646 = !DILocation(line: 982, column: 58, scope: !3540, inlinedAt: !3644)
!3647 = !DILocation(line: 984, column: 3, scope: !3540, inlinedAt: !3644)
!3648 = !DILocation(line: 985, column: 13, scope: !3540, inlinedAt: !3644)
!3649 = !DILocation(line: 984, column: 26, scope: !3540, inlinedAt: !3644)
!3650 = !DILocation(line: 152, column: 43, scope: !2206, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 986, column: 3, scope: !3540, inlinedAt: !3644)
!3652 = !DILocation(line: 152, column: 51, scope: !2206, inlinedAt: !3651)
!3653 = !DILocation(line: 152, column: 58, scope: !2206, inlinedAt: !3651)
!3654 = !DILocation(line: 154, column: 17, scope: !2206, inlinedAt: !3651)
!3655 = !DILocation(line: 156, column: 57, scope: !2206, inlinedAt: !3651)
!3656 = !DILocation(line: 155, column: 17, scope: !2206, inlinedAt: !3651)
!3657 = !DILocation(line: 157, column: 7, scope: !2206, inlinedAt: !3651)
!3658 = !DILocation(line: 158, column: 12, scope: !2206, inlinedAt: !3651)
!3659 = !DILocation(line: 159, column: 6, scope: !2206, inlinedAt: !3651)
!3660 = !DILocation(line: 987, column: 10, scope: !3540, inlinedAt: !3644)
!3661 = !DILocation(line: 988, column: 1, scope: !3540, inlinedAt: !3644)
!3662 = !DILocation(line: 1005, column: 3, scope: !3637)
!3663 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !174, file: !174, line: 1009, type: !3419, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3664)
!3664 = !{!3665, !3666, !3667, !3668}
!3665 = !DILocalVariable(name: "n", arg: 1, scope: !3663, file: !174, line: 1009, type: !52)
!3666 = !DILocalVariable(name: "s", arg: 2, scope: !3663, file: !174, line: 1009, type: !11)
!3667 = !DILocalVariable(name: "arg", arg: 3, scope: !3663, file: !174, line: 1009, type: !41)
!3668 = !DILocalVariable(name: "options", scope: !3663, file: !174, line: 1011, type: !179)
!3669 = !DILocation(line: 195, column: 26, scope: !3432, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 1012, column: 13, scope: !3663)
!3671 = !DILocation(line: 1009, column: 29, scope: !3663)
!3672 = !DILocation(line: 1009, column: 51, scope: !3663)
!3673 = !DILocation(line: 1009, column: 66, scope: !3663)
!3674 = !DILocation(line: 1011, column: 3, scope: !3663)
!3675 = !DILocation(line: 1012, column: 13, scope: !3663)
!3676 = !DILocation(line: 193, column: 48, scope: !3432, inlinedAt: !3670)
!3677 = !{!3678}
!3678 = distinct !{!3678, !3679, !"quoting_options_from_style: argument 0"}
!3679 = distinct !{!3679, !"quoting_options_from_style"}
!3680 = !DILocation(line: 196, column: 13, scope: !3444, inlinedAt: !3670)
!3681 = !DILocation(line: 196, column: 7, scope: !3432, inlinedAt: !3670)
!3682 = !DILocation(line: 197, column: 5, scope: !3444, inlinedAt: !3670)
!3683 = !DILocation(line: 1011, column: 26, scope: !3663)
!3684 = !DILocation(line: 152, column: 43, scope: !2206, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 1013, column: 3, scope: !3663)
!3686 = !DILocation(line: 152, column: 51, scope: !2206, inlinedAt: !3685)
!3687 = !DILocation(line: 152, column: 58, scope: !2206, inlinedAt: !3685)
!3688 = !DILocation(line: 154, column: 17, scope: !2206, inlinedAt: !3685)
!3689 = !DILocation(line: 156, column: 57, scope: !2206, inlinedAt: !3685)
!3690 = !DILocation(line: 155, column: 17, scope: !2206, inlinedAt: !3685)
!3691 = !DILocation(line: 157, column: 7, scope: !2206, inlinedAt: !3685)
!3692 = !DILocation(line: 158, column: 12, scope: !2206, inlinedAt: !3685)
!3693 = !DILocation(line: 159, column: 6, scope: !2206, inlinedAt: !3685)
!3694 = !DILocation(line: 1014, column: 10, scope: !3663)
!3695 = !DILocation(line: 1015, column: 1, scope: !3663)
!3696 = !DILocation(line: 1014, column: 3, scope: !3663)
!3697 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !174, file: !174, line: 1018, type: !3698, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3700)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!31, !52, !41, !41, !41}
!3700 = !{!3701, !3702, !3703, !3704}
!3701 = !DILocalVariable(name: "n", arg: 1, scope: !3697, file: !174, line: 1018, type: !52)
!3702 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3697, file: !174, line: 1018, type: !41)
!3703 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3697, file: !174, line: 1019, type: !41)
!3704 = !DILocalVariable(name: "arg", arg: 4, scope: !3697, file: !174, line: 1019, type: !41)
!3705 = !DILocation(line: 1018, column: 24, scope: !3697)
!3706 = !DILocation(line: 1018, column: 39, scope: !3697)
!3707 = !DILocation(line: 1019, column: 32, scope: !3697)
!3708 = !DILocation(line: 1019, column: 57, scope: !3697)
!3709 = !DILocalVariable(name: "n", arg: 1, scope: !3710, file: !174, line: 1026, type: !52)
!3710 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !174, file: !174, line: 1026, type: !3711, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3713)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!31, !52, !41, !41, !41, !43}
!3713 = !{!3709, !3714, !3715, !3716, !3717, !3718}
!3714 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3710, file: !174, line: 1026, type: !41)
!3715 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3710, file: !174, line: 1027, type: !41)
!3716 = !DILocalVariable(name: "arg", arg: 4, scope: !3710, file: !174, line: 1028, type: !41)
!3717 = !DILocalVariable(name: "argsize", arg: 5, scope: !3710, file: !174, line: 1028, type: !43)
!3718 = !DILocalVariable(name: "o", scope: !3710, file: !174, line: 1030, type: !179)
!3719 = !DILocation(line: 1026, column: 28, scope: !3710, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 1021, column: 10, scope: !3697)
!3721 = !DILocation(line: 1026, column: 43, scope: !3710, inlinedAt: !3720)
!3722 = !DILocation(line: 1027, column: 36, scope: !3710, inlinedAt: !3720)
!3723 = !DILocation(line: 1028, column: 36, scope: !3710, inlinedAt: !3720)
!3724 = !DILocation(line: 1028, column: 48, scope: !3710, inlinedAt: !3720)
!3725 = !DILocation(line: 1030, column: 3, scope: !3710, inlinedAt: !3720)
!3726 = !DILocation(line: 1030, column: 30, scope: !3710, inlinedAt: !3720)
!3727 = !DILocation(line: 1030, column: 26, scope: !3710, inlinedAt: !3720)
!3728 = !DILocation(line: 179, column: 45, scope: !2255, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 1031, column: 3, scope: !3710, inlinedAt: !3720)
!3730 = !DILocation(line: 180, column: 33, scope: !2255, inlinedAt: !3729)
!3731 = !DILocation(line: 180, column: 57, scope: !2255, inlinedAt: !3729)
!3732 = !DILocation(line: 184, column: 6, scope: !2255, inlinedAt: !3729)
!3733 = !DILocation(line: 184, column: 12, scope: !2255, inlinedAt: !3729)
!3734 = !DILocation(line: 185, column: 8, scope: !2271, inlinedAt: !3729)
!3735 = !DILocation(line: 185, column: 23, scope: !2271, inlinedAt: !3729)
!3736 = !DILocation(line: 185, column: 19, scope: !2271, inlinedAt: !3729)
!3737 = !DILocation(line: 186, column: 5, scope: !2271, inlinedAt: !3729)
!3738 = !DILocation(line: 187, column: 6, scope: !2255, inlinedAt: !3729)
!3739 = !DILocation(line: 187, column: 17, scope: !2255, inlinedAt: !3729)
!3740 = !DILocation(line: 188, column: 6, scope: !2255, inlinedAt: !3729)
!3741 = !DILocation(line: 188, column: 18, scope: !2255, inlinedAt: !3729)
!3742 = !DILocation(line: 1032, column: 10, scope: !3710, inlinedAt: !3720)
!3743 = !DILocation(line: 1033, column: 1, scope: !3710, inlinedAt: !3720)
!3744 = !DILocation(line: 1021, column: 3, scope: !3697)
!3745 = !DILocation(line: 1026, column: 28, scope: !3710)
!3746 = !DILocation(line: 1026, column: 43, scope: !3710)
!3747 = !DILocation(line: 1027, column: 36, scope: !3710)
!3748 = !DILocation(line: 1028, column: 36, scope: !3710)
!3749 = !DILocation(line: 1028, column: 48, scope: !3710)
!3750 = !DILocation(line: 1030, column: 3, scope: !3710)
!3751 = !DILocation(line: 1030, column: 30, scope: !3710)
!3752 = !DILocation(line: 1030, column: 26, scope: !3710)
!3753 = !DILocation(line: 179, column: 45, scope: !2255, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 1031, column: 3, scope: !3710)
!3755 = !DILocation(line: 180, column: 33, scope: !2255, inlinedAt: !3754)
!3756 = !DILocation(line: 180, column: 57, scope: !2255, inlinedAt: !3754)
!3757 = !DILocation(line: 184, column: 6, scope: !2255, inlinedAt: !3754)
!3758 = !DILocation(line: 184, column: 12, scope: !2255, inlinedAt: !3754)
!3759 = !DILocation(line: 185, column: 8, scope: !2271, inlinedAt: !3754)
!3760 = !DILocation(line: 185, column: 23, scope: !2271, inlinedAt: !3754)
!3761 = !DILocation(line: 185, column: 19, scope: !2271, inlinedAt: !3754)
!3762 = !DILocation(line: 186, column: 5, scope: !2271, inlinedAt: !3754)
!3763 = !DILocation(line: 187, column: 6, scope: !2255, inlinedAt: !3754)
!3764 = !DILocation(line: 187, column: 17, scope: !2255, inlinedAt: !3754)
!3765 = !DILocation(line: 188, column: 6, scope: !2255, inlinedAt: !3754)
!3766 = !DILocation(line: 188, column: 18, scope: !2255, inlinedAt: !3754)
!3767 = !DILocation(line: 1032, column: 10, scope: !3710)
!3768 = !DILocation(line: 1033, column: 1, scope: !3710)
!3769 = !DILocation(line: 1032, column: 3, scope: !3710)
!3770 = distinct !DISubprogram(name: "quotearg_custom", scope: !174, file: !174, line: 1036, type: !3771, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3773)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!31, !41, !41, !41}
!3773 = !{!3774, !3775, !3776}
!3774 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3770, file: !174, line: 1036, type: !41)
!3775 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3770, file: !174, line: 1036, type: !41)
!3776 = !DILocalVariable(name: "arg", arg: 3, scope: !3770, file: !174, line: 1037, type: !41)
!3777 = !DILocation(line: 1036, column: 30, scope: !3770)
!3778 = !DILocation(line: 1036, column: 54, scope: !3770)
!3779 = !DILocation(line: 1037, column: 30, scope: !3770)
!3780 = !DILocation(line: 1018, column: 24, scope: !3697, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 1039, column: 10, scope: !3770)
!3782 = !DILocation(line: 1018, column: 39, scope: !3697, inlinedAt: !3781)
!3783 = !DILocation(line: 1019, column: 32, scope: !3697, inlinedAt: !3781)
!3784 = !DILocation(line: 1019, column: 57, scope: !3697, inlinedAt: !3781)
!3785 = !DILocation(line: 1026, column: 28, scope: !3710, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 1021, column: 10, scope: !3697, inlinedAt: !3781)
!3787 = !DILocation(line: 1026, column: 43, scope: !3710, inlinedAt: !3786)
!3788 = !DILocation(line: 1027, column: 36, scope: !3710, inlinedAt: !3786)
!3789 = !DILocation(line: 1028, column: 36, scope: !3710, inlinedAt: !3786)
!3790 = !DILocation(line: 1028, column: 48, scope: !3710, inlinedAt: !3786)
!3791 = !DILocation(line: 1030, column: 3, scope: !3710, inlinedAt: !3786)
!3792 = !DILocation(line: 1030, column: 30, scope: !3710, inlinedAt: !3786)
!3793 = !DILocation(line: 1030, column: 26, scope: !3710, inlinedAt: !3786)
!3794 = !DILocation(line: 179, column: 45, scope: !2255, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 1031, column: 3, scope: !3710, inlinedAt: !3786)
!3796 = !DILocation(line: 180, column: 33, scope: !2255, inlinedAt: !3795)
!3797 = !DILocation(line: 180, column: 57, scope: !2255, inlinedAt: !3795)
!3798 = !DILocation(line: 184, column: 6, scope: !2255, inlinedAt: !3795)
!3799 = !DILocation(line: 184, column: 12, scope: !2255, inlinedAt: !3795)
!3800 = !DILocation(line: 185, column: 8, scope: !2271, inlinedAt: !3795)
!3801 = !DILocation(line: 185, column: 23, scope: !2271, inlinedAt: !3795)
!3802 = !DILocation(line: 185, column: 19, scope: !2271, inlinedAt: !3795)
!3803 = !DILocation(line: 186, column: 5, scope: !2271, inlinedAt: !3795)
!3804 = !DILocation(line: 187, column: 6, scope: !2255, inlinedAt: !3795)
!3805 = !DILocation(line: 187, column: 17, scope: !2255, inlinedAt: !3795)
!3806 = !DILocation(line: 188, column: 6, scope: !2255, inlinedAt: !3795)
!3807 = !DILocation(line: 188, column: 18, scope: !2255, inlinedAt: !3795)
!3808 = !DILocation(line: 1032, column: 10, scope: !3710, inlinedAt: !3786)
!3809 = !DILocation(line: 1033, column: 1, scope: !3710, inlinedAt: !3786)
!3810 = !DILocation(line: 1039, column: 3, scope: !3770)
!3811 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !174, file: !174, line: 1043, type: !3812, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3814)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!31, !41, !41, !41, !43}
!3814 = !{!3815, !3816, !3817, !3818}
!3815 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3811, file: !174, line: 1043, type: !41)
!3816 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3811, file: !174, line: 1043, type: !41)
!3817 = !DILocalVariable(name: "arg", arg: 3, scope: !3811, file: !174, line: 1044, type: !41)
!3818 = !DILocalVariable(name: "argsize", arg: 4, scope: !3811, file: !174, line: 1044, type: !43)
!3819 = !DILocation(line: 1043, column: 34, scope: !3811)
!3820 = !DILocation(line: 1043, column: 58, scope: !3811)
!3821 = !DILocation(line: 1044, column: 34, scope: !3811)
!3822 = !DILocation(line: 1044, column: 46, scope: !3811)
!3823 = !DILocation(line: 1026, column: 28, scope: !3710, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 1046, column: 10, scope: !3811)
!3825 = !DILocation(line: 1026, column: 43, scope: !3710, inlinedAt: !3824)
!3826 = !DILocation(line: 1027, column: 36, scope: !3710, inlinedAt: !3824)
!3827 = !DILocation(line: 1028, column: 36, scope: !3710, inlinedAt: !3824)
!3828 = !DILocation(line: 1028, column: 48, scope: !3710, inlinedAt: !3824)
!3829 = !DILocation(line: 1030, column: 3, scope: !3710, inlinedAt: !3824)
!3830 = !DILocation(line: 1030, column: 30, scope: !3710, inlinedAt: !3824)
!3831 = !DILocation(line: 1030, column: 26, scope: !3710, inlinedAt: !3824)
!3832 = !DILocation(line: 179, column: 45, scope: !2255, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 1031, column: 3, scope: !3710, inlinedAt: !3824)
!3834 = !DILocation(line: 180, column: 33, scope: !2255, inlinedAt: !3833)
!3835 = !DILocation(line: 180, column: 57, scope: !2255, inlinedAt: !3833)
!3836 = !DILocation(line: 184, column: 6, scope: !2255, inlinedAt: !3833)
!3837 = !DILocation(line: 184, column: 12, scope: !2255, inlinedAt: !3833)
!3838 = !DILocation(line: 185, column: 8, scope: !2271, inlinedAt: !3833)
!3839 = !DILocation(line: 185, column: 23, scope: !2271, inlinedAt: !3833)
!3840 = !DILocation(line: 185, column: 19, scope: !2271, inlinedAt: !3833)
!3841 = !DILocation(line: 186, column: 5, scope: !2271, inlinedAt: !3833)
!3842 = !DILocation(line: 187, column: 6, scope: !2255, inlinedAt: !3833)
!3843 = !DILocation(line: 187, column: 17, scope: !2255, inlinedAt: !3833)
!3844 = !DILocation(line: 188, column: 6, scope: !2255, inlinedAt: !3833)
!3845 = !DILocation(line: 188, column: 18, scope: !2255, inlinedAt: !3833)
!3846 = !DILocation(line: 1032, column: 10, scope: !3710, inlinedAt: !3824)
!3847 = !DILocation(line: 1033, column: 1, scope: !3710, inlinedAt: !3824)
!3848 = !DILocation(line: 1046, column: 3, scope: !3811)
!3849 = distinct !DISubprogram(name: "quote_n_mem", scope: !174, file: !174, line: 1061, type: !3850, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3852)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!41, !52, !41, !43}
!3852 = !{!3853, !3854, !3855}
!3853 = !DILocalVariable(name: "n", arg: 1, scope: !3849, file: !174, line: 1061, type: !52)
!3854 = !DILocalVariable(name: "arg", arg: 2, scope: !3849, file: !174, line: 1061, type: !41)
!3855 = !DILocalVariable(name: "argsize", arg: 3, scope: !3849, file: !174, line: 1061, type: !43)
!3856 = !DILocation(line: 1061, column: 18, scope: !3849)
!3857 = !DILocation(line: 1061, column: 33, scope: !3849)
!3858 = !DILocation(line: 1061, column: 45, scope: !3849)
!3859 = !DILocation(line: 1063, column: 10, scope: !3849)
!3860 = !DILocation(line: 1063, column: 3, scope: !3849)
!3861 = distinct !DISubprogram(name: "quote_mem", scope: !174, file: !174, line: 1067, type: !3862, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3864)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!41, !41, !43}
!3864 = !{!3865, !3866}
!3865 = !DILocalVariable(name: "arg", arg: 1, scope: !3861, file: !174, line: 1067, type: !41)
!3866 = !DILocalVariable(name: "argsize", arg: 2, scope: !3861, file: !174, line: 1067, type: !43)
!3867 = !DILocation(line: 1067, column: 24, scope: !3861)
!3868 = !DILocation(line: 1067, column: 36, scope: !3861)
!3869 = !DILocation(line: 1061, column: 18, scope: !3849, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 1069, column: 10, scope: !3861)
!3871 = !DILocation(line: 1061, column: 33, scope: !3849, inlinedAt: !3870)
!3872 = !DILocation(line: 1061, column: 45, scope: !3849, inlinedAt: !3870)
!3873 = !DILocation(line: 1063, column: 10, scope: !3849, inlinedAt: !3870)
!3874 = !DILocation(line: 1069, column: 3, scope: !3861)
!3875 = distinct !DISubprogram(name: "quote_n", scope: !174, file: !174, line: 1073, type: !3876, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3878)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!41, !52, !41}
!3878 = !{!3879, !3880}
!3879 = !DILocalVariable(name: "n", arg: 1, scope: !3875, file: !174, line: 1073, type: !52)
!3880 = !DILocalVariable(name: "arg", arg: 2, scope: !3875, file: !174, line: 1073, type: !41)
!3881 = !DILocation(line: 1073, column: 14, scope: !3875)
!3882 = !DILocation(line: 1073, column: 29, scope: !3875)
!3883 = !DILocation(line: 1061, column: 18, scope: !3849, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 1075, column: 10, scope: !3875)
!3885 = !DILocation(line: 1061, column: 33, scope: !3849, inlinedAt: !3884)
!3886 = !DILocation(line: 1061, column: 45, scope: !3849, inlinedAt: !3884)
!3887 = !DILocation(line: 1063, column: 10, scope: !3849, inlinedAt: !3884)
!3888 = !DILocation(line: 1075, column: 3, scope: !3875)
!3889 = distinct !DISubprogram(name: "quote", scope: !174, file: !174, line: 1079, type: !3890, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !146, retainedNodes: !3892)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!41, !41}
!3892 = !{!3893}
!3893 = !DILocalVariable(name: "arg", arg: 1, scope: !3889, file: !174, line: 1079, type: !41)
!3894 = !DILocation(line: 1079, column: 20, scope: !3889)
!3895 = !DILocation(line: 1073, column: 14, scope: !3875, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 1081, column: 10, scope: !3889)
!3897 = !DILocation(line: 1073, column: 29, scope: !3875, inlinedAt: !3896)
!3898 = !DILocation(line: 1061, column: 18, scope: !3849, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 1075, column: 10, scope: !3875, inlinedAt: !3896)
!3900 = !DILocation(line: 1061, column: 33, scope: !3849, inlinedAt: !3899)
!3901 = !DILocation(line: 1061, column: 45, scope: !3849, inlinedAt: !3899)
!3902 = !DILocation(line: 1063, column: 10, scope: !3849, inlinedAt: !3899)
!3903 = !DILocation(line: 1081, column: 3, scope: !3889)
!3904 = distinct !DISubprogram(name: "safe_read", scope: !3905, file: !3905, line: 56, type: !2024, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !3906)
!3905 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3906 = !{!3907, !3908, !3909, !3910}
!3907 = !DILocalVariable(name: "fd", arg: 1, scope: !3904, file: !3905, line: 56, type: !52)
!3908 = !DILocalVariable(name: "buf", arg: 2, scope: !3904, file: !3905, line: 56, type: !33)
!3909 = !DILocalVariable(name: "count", arg: 3, scope: !3904, file: !3905, line: 56, type: !43)
!3910 = !DILocalVariable(name: "result", scope: !3911, file: !3905, line: 60, type: !3914)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !3905, line: 59, column: 5)
!3912 = distinct !DILexicalBlock(scope: !3913, file: !3905, line: 58, column: 3)
!3913 = distinct !DILexicalBlock(scope: !3904, file: !3905, line: 58, column: 3)
!3914 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !226, line: 108, baseType: !3915)
!3915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !37, line: 191, baseType: !38)
!3916 = !DILocation(line: 56, column: 14, scope: !3904)
!3917 = !DILocation(line: 56, column: 30, scope: !3904)
!3918 = !DILocation(line: 56, column: 42, scope: !3904)
!3919 = !DILocation(line: 58, column: 3, scope: !3904)
!3920 = !DILocation(line: 60, column: 24, scope: !3911)
!3921 = !DILocation(line: 60, column: 15, scope: !3911)
!3922 = !DILocation(line: 62, column: 13, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3911, file: !3905, line: 62, column: 11)
!3924 = !DILocation(line: 62, column: 11, scope: !3911)
!3925 = !DILocation(line: 64, column: 16, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3923, file: !3905, line: 64, column: 16)
!3927 = !DILocation(line: 64, column: 16, scope: !3923)
!3928 = distinct !{!3928, !3929, !3930}
!3929 = !DILocation(line: 58, column: 3, scope: !3913)
!3930 = !DILocation(line: 70, column: 5, scope: !3913)
!3931 = !DILocation(line: 66, column: 22, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3926, file: !3905, line: 66, column: 16)
!3933 = !DILocation(line: 66, column: 51, scope: !3932)
!3934 = !DILocation(line: 66, column: 32, scope: !3932)
!3935 = !DILocation(line: 71, column: 1, scope: !3904)
!3936 = distinct !DISubprogram(name: "version_etc_arn", scope: !241, file: !241, line: 62, type: !3937, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !237, retainedNodes: !3991)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{null, !3939, !41, !41, !41, !39, !43}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3941, line: 7, baseType: !3942)
!3941 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3943, line: 49, size: 1728, elements: !3944)
!3943 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3944 = !{!3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3960, !3962, !3963, !3964, !3965, !3966, !3968, !3972, !3975, !3977, !3980, !3983, !3984, !3985, !3986, !3987}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3942, file: !3943, line: 51, baseType: !52, size: 32)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3942, file: !3943, line: 54, baseType: !31, size: 64, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3942, file: !3943, line: 55, baseType: !31, size: 64, offset: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3942, file: !3943, line: 56, baseType: !31, size: 64, offset: 192)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3942, file: !3943, line: 57, baseType: !31, size: 64, offset: 256)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3942, file: !3943, line: 58, baseType: !31, size: 64, offset: 320)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3942, file: !3943, line: 59, baseType: !31, size: 64, offset: 384)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3942, file: !3943, line: 60, baseType: !31, size: 64, offset: 448)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3942, file: !3943, line: 61, baseType: !31, size: 64, offset: 512)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3942, file: !3943, line: 64, baseType: !31, size: 64, offset: 576)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3942, file: !3943, line: 65, baseType: !31, size: 64, offset: 640)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3942, file: !3943, line: 66, baseType: !31, size: 64, offset: 704)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3942, file: !3943, line: 68, baseType: !3958, size: 64, offset: 768)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3943, line: 36, flags: DIFlagFwdDecl)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3942, file: !3943, line: 70, baseType: !3961, size: 64, offset: 832)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3942, file: !3943, line: 72, baseType: !52, size: 32, offset: 896)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3942, file: !3943, line: 73, baseType: !52, size: 32, offset: 928)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3942, file: !3943, line: 74, baseType: !36, size: 64, offset: 960)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3942, file: !3943, line: 77, baseType: !170, size: 16, offset: 1024)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3942, file: !3943, line: 78, baseType: !3967, size: 8, offset: 1040)
!3967 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3942, file: !3943, line: 79, baseType: !3969, size: 8, offset: 1048)
!3969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 8, elements: !3970)
!3970 = !{!3971}
!3971 = !DISubrange(count: 1)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3942, file: !3943, line: 81, baseType: !3973, size: 64, offset: 1088)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3943, line: 43, baseType: null)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3942, file: !3943, line: 89, baseType: !3976, size: 64, offset: 1152)
!3976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !37, line: 151, baseType: !38)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3942, file: !3943, line: 91, baseType: !3978, size: 64, offset: 1216)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3943, line: 37, flags: DIFlagFwdDecl)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3942, file: !3943, line: 92, baseType: !3981, size: 64, offset: 1280)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3943, line: 38, flags: DIFlagFwdDecl)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3942, file: !3943, line: 93, baseType: !3961, size: 64, offset: 1344)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3942, file: !3943, line: 94, baseType: !33, size: 64, offset: 1408)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3942, file: !3943, line: 95, baseType: !43, size: 64, offset: 1472)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3942, file: !3943, line: 96, baseType: !52, size: 32, offset: 1536)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3942, file: !3943, line: 98, baseType: !3988, size: 160, offset: 1568)
!3988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 160, elements: !3989)
!3989 = !{!3990}
!3990 = !DISubrange(count: 20)
!3991 = !{!3992, !3993, !3994, !3995, !3996, !3997}
!3992 = !DILocalVariable(name: "stream", arg: 1, scope: !3936, file: !241, line: 62, type: !3939)
!3993 = !DILocalVariable(name: "command_name", arg: 2, scope: !3936, file: !241, line: 63, type: !41)
!3994 = !DILocalVariable(name: "package", arg: 3, scope: !3936, file: !241, line: 63, type: !41)
!3995 = !DILocalVariable(name: "version", arg: 4, scope: !3936, file: !241, line: 64, type: !41)
!3996 = !DILocalVariable(name: "authors", arg: 5, scope: !3936, file: !241, line: 65, type: !39)
!3997 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3936, file: !241, line: 65, type: !43)
!3998 = !DILocation(line: 62, column: 24, scope: !3936)
!3999 = !DILocation(line: 63, column: 30, scope: !3936)
!4000 = !DILocation(line: 63, column: 56, scope: !3936)
!4001 = !DILocation(line: 64, column: 30, scope: !3936)
!4002 = !DILocation(line: 65, column: 39, scope: !3936)
!4003 = !DILocation(line: 65, column: 55, scope: !3936)
!4004 = !DILocation(line: 67, column: 7, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3936, file: !241, line: 67, column: 7)
!4006 = !DILocation(line: 67, column: 7, scope: !3936)
!4007 = !DILocation(line: 68, column: 5, scope: !4005)
!4008 = !DILocation(line: 70, column: 5, scope: !4005)
!4009 = !DILocation(line: 84, column: 3, scope: !3936)
!4010 = !DILocation(line: 86, column: 3, scope: !3936)
!4011 = !DILocation(line: 95, column: 3, scope: !3936)
!4012 = !DILocation(line: 99, column: 7, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3936, file: !241, line: 96, column: 5)
!4014 = !DILocation(line: 102, column: 7, scope: !4013)
!4015 = !DILocation(line: 103, column: 7, scope: !4013)
!4016 = !DILocation(line: 106, column: 7, scope: !4013)
!4017 = !DILocation(line: 107, column: 7, scope: !4013)
!4018 = !DILocation(line: 110, column: 7, scope: !4013)
!4019 = !DILocation(line: 112, column: 7, scope: !4013)
!4020 = !DILocation(line: 117, column: 7, scope: !4013)
!4021 = !DILocation(line: 119, column: 7, scope: !4013)
!4022 = !DILocation(line: 124, column: 7, scope: !4013)
!4023 = !DILocation(line: 126, column: 7, scope: !4013)
!4024 = !DILocation(line: 131, column: 7, scope: !4013)
!4025 = !DILocation(line: 134, column: 7, scope: !4013)
!4026 = !DILocation(line: 139, column: 7, scope: !4013)
!4027 = !DILocation(line: 142, column: 7, scope: !4013)
!4028 = !DILocation(line: 147, column: 7, scope: !4013)
!4029 = !DILocation(line: 151, column: 7, scope: !4013)
!4030 = !DILocation(line: 156, column: 7, scope: !4013)
!4031 = !DILocation(line: 160, column: 7, scope: !4013)
!4032 = !DILocation(line: 167, column: 7, scope: !4013)
!4033 = !DILocation(line: 171, column: 7, scope: !4013)
!4034 = !DILocation(line: 173, column: 1, scope: !3936)
!4035 = distinct !DISubprogram(name: "version_etc_ar", scope: !241, file: !241, line: 180, type: !4036, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !237, retainedNodes: !4038)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{null, !3939, !41, !41, !41, !39}
!4038 = !{!4039, !4040, !4041, !4042, !4043, !4044}
!4039 = !DILocalVariable(name: "stream", arg: 1, scope: !4035, file: !241, line: 180, type: !3939)
!4040 = !DILocalVariable(name: "command_name", arg: 2, scope: !4035, file: !241, line: 181, type: !41)
!4041 = !DILocalVariable(name: "package", arg: 3, scope: !4035, file: !241, line: 181, type: !41)
!4042 = !DILocalVariable(name: "version", arg: 4, scope: !4035, file: !241, line: 182, type: !41)
!4043 = !DILocalVariable(name: "authors", arg: 5, scope: !4035, file: !241, line: 182, type: !39)
!4044 = !DILocalVariable(name: "n_authors", scope: !4035, file: !241, line: 184, type: !43)
!4045 = !DILocation(line: 180, column: 23, scope: !4035)
!4046 = !DILocation(line: 181, column: 29, scope: !4035)
!4047 = !DILocation(line: 181, column: 55, scope: !4035)
!4048 = !DILocation(line: 182, column: 29, scope: !4035)
!4049 = !DILocation(line: 182, column: 59, scope: !4035)
!4050 = !DILocation(line: 184, column: 10, scope: !4035)
!4051 = !DILocation(line: 186, column: 8, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4035, file: !241, line: 186, column: 3)
!4053 = !DILocation(line: 0, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4052, file: !241, line: 186, column: 3)
!4055 = !DILocation(line: 186, column: 23, scope: !4054)
!4056 = !DILocation(line: 186, column: 3, scope: !4052)
!4057 = !DILocation(line: 186, column: 52, scope: !4054)
!4058 = distinct !{!4058, !4056, !4059}
!4059 = !DILocation(line: 187, column: 5, scope: !4052)
!4060 = !DILocation(line: 188, column: 3, scope: !4035)
!4061 = !DILocation(line: 189, column: 1, scope: !4035)
!4062 = distinct !DISubprogram(name: "version_etc_va", scope: !241, file: !241, line: 196, type: !4063, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !237, retainedNodes: !4072)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{null, !3939, !41, !41, !41, !4065}
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !238, line: 189, size: 192, elements: !4067)
!4067 = !{!4068, !4069, !4070, !4071}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4066, file: !238, line: 189, baseType: !6, size: 32)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4066, file: !238, line: 189, baseType: !6, size: 32, offset: 32)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4066, file: !238, line: 189, baseType: !33, size: 64, offset: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4066, file: !238, line: 189, baseType: !33, size: 64, offset: 128)
!4072 = !{!4073, !4074, !4075, !4076, !4077, !4078, !4079}
!4073 = !DILocalVariable(name: "stream", arg: 1, scope: !4062, file: !241, line: 196, type: !3939)
!4074 = !DILocalVariable(name: "command_name", arg: 2, scope: !4062, file: !241, line: 197, type: !41)
!4075 = !DILocalVariable(name: "package", arg: 3, scope: !4062, file: !241, line: 197, type: !41)
!4076 = !DILocalVariable(name: "version", arg: 4, scope: !4062, file: !241, line: 198, type: !41)
!4077 = !DILocalVariable(name: "authors", arg: 5, scope: !4062, file: !241, line: 198, type: !4065)
!4078 = !DILocalVariable(name: "n_authors", scope: !4062, file: !241, line: 200, type: !43)
!4079 = !DILocalVariable(name: "authtab", scope: !4062, file: !241, line: 201, type: !4080)
!4080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 640, elements: !103)
!4081 = !DILocation(line: 196, column: 23, scope: !4062)
!4082 = !DILocation(line: 197, column: 29, scope: !4062)
!4083 = !DILocation(line: 197, column: 55, scope: !4062)
!4084 = !DILocation(line: 198, column: 29, scope: !4062)
!4085 = !DILocation(line: 198, column: 46, scope: !4062)
!4086 = !DILocation(line: 201, column: 3, scope: !4062)
!4087 = !DILocation(line: 201, column: 15, scope: !4062)
!4088 = !DILocation(line: 200, column: 10, scope: !4062)
!4089 = !DILocation(line: 205, column: 35, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4091, file: !241, line: 203, column: 3)
!4091 = distinct !DILexicalBlock(scope: !4062, file: !241, line: 203, column: 3)
!4092 = !DILocation(line: 205, column: 14, scope: !4090)
!4093 = !DILocation(line: 205, column: 33, scope: !4090)
!4094 = !DILocation(line: 205, column: 67, scope: !4090)
!4095 = !DILocation(line: 203, column: 3, scope: !4091)
!4096 = !DILocation(line: 0, scope: !4090)
!4097 = !DILocation(line: 208, column: 3, scope: !4062)
!4098 = !DILocation(line: 210, column: 1, scope: !4062)
!4099 = distinct !DISubprogram(name: "version_etc", scope: !241, file: !241, line: 227, type: !4100, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !237, retainedNodes: !4102)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{null, !3939, !41, !41, !41, null}
!4102 = !{!4103, !4104, !4105, !4106, !4107}
!4103 = !DILocalVariable(name: "stream", arg: 1, scope: !4099, file: !241, line: 227, type: !3939)
!4104 = !DILocalVariable(name: "command_name", arg: 2, scope: !4099, file: !241, line: 228, type: !41)
!4105 = !DILocalVariable(name: "package", arg: 3, scope: !4099, file: !241, line: 228, type: !41)
!4106 = !DILocalVariable(name: "version", arg: 4, scope: !4099, file: !241, line: 229, type: !41)
!4107 = !DILocalVariable(name: "authors", scope: !4099, file: !241, line: 231, type: !4108)
!4108 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !35, line: 52, baseType: !4109)
!4109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4110, line: 48, baseType: !4111)
!4110 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !238, line: 231, baseType: !4112)
!4112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4066, size: 192, elements: !3970)
!4113 = !DILocation(line: 227, column: 20, scope: !4099)
!4114 = !DILocation(line: 228, column: 26, scope: !4099)
!4115 = !DILocation(line: 228, column: 52, scope: !4099)
!4116 = !DILocation(line: 229, column: 26, scope: !4099)
!4117 = !DILocation(line: 231, column: 3, scope: !4099)
!4118 = !DILocation(line: 231, column: 11, scope: !4099)
!4119 = !DILocation(line: 233, column: 3, scope: !4099)
!4120 = !DILocation(line: 234, column: 3, scope: !4099)
!4121 = !DILocation(line: 235, column: 3, scope: !4099)
!4122 = !DILocation(line: 236, column: 1, scope: !4099)
!4123 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !241, file: !241, line: 239, type: !728, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !237, retainedNodes: !120)
!4124 = !DILocation(line: 245, column: 3, scope: !4123)
!4125 = !DILocation(line: 251, column: 3, scope: !4123)
!4126 = !DILocation(line: 256, column: 3, scope: !4123)
!4127 = !DILocation(line: 258, column: 1, scope: !4123)
!4128 = distinct !DISubprogram(name: "xnmalloc", scope: !249, file: !249, line: 99, type: !1574, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !4129)
!4129 = !{!4130, !4131}
!4130 = !DILocalVariable(name: "n", arg: 1, scope: !4128, file: !249, line: 99, type: !43)
!4131 = !DILocalVariable(name: "s", arg: 2, scope: !4128, file: !249, line: 99, type: !43)
!4132 = !DILocation(line: 99, column: 18, scope: !4128)
!4133 = !DILocation(line: 99, column: 28, scope: !4128)
!4134 = !DILocation(line: 101, column: 7, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4128, file: !249, line: 101, column: 7)
!4136 = !DILocation(line: 101, column: 7, scope: !4128)
!4137 = !DILocation(line: 102, column: 5, scope: !4135)
!4138 = !DILocation(line: 103, column: 21, scope: !4128)
!4139 = !DILocalVariable(name: "n", arg: 1, scope: !4140, file: !4141, line: 39, type: !43)
!4140 = distinct !DISubprogram(name: "xmalloc", scope: !4141, file: !4141, line: 39, type: !4142, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !4144)
!4141 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!33, !43}
!4144 = !{!4139, !4145}
!4145 = !DILocalVariable(name: "p", scope: !4140, file: !4141, line: 41, type: !33)
!4146 = !DILocation(line: 39, column: 17, scope: !4140, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 103, column: 10, scope: !4128)
!4148 = !DILocation(line: 41, column: 13, scope: !4140, inlinedAt: !4147)
!4149 = !DILocation(line: 41, column: 9, scope: !4140, inlinedAt: !4147)
!4150 = !DILocation(line: 42, column: 8, scope: !4151, inlinedAt: !4147)
!4151 = distinct !DILexicalBlock(scope: !4140, file: !4141, line: 42, column: 7)
!4152 = !DILocation(line: 42, column: 15, scope: !4151, inlinedAt: !4147)
!4153 = !DILocation(line: 42, column: 10, scope: !4151, inlinedAt: !4147)
!4154 = !DILocation(line: 43, column: 5, scope: !4151, inlinedAt: !4147)
!4155 = !DILocation(line: 103, column: 3, scope: !4128)
!4156 = !DILocation(line: 39, column: 17, scope: !4140)
!4157 = !DILocation(line: 41, column: 13, scope: !4140)
!4158 = !DILocation(line: 41, column: 9, scope: !4140)
!4159 = !DILocation(line: 42, column: 8, scope: !4151)
!4160 = !DILocation(line: 42, column: 15, scope: !4151)
!4161 = !DILocation(line: 42, column: 10, scope: !4151)
!4162 = !DILocation(line: 43, column: 5, scope: !4151)
!4163 = !DILocation(line: 44, column: 3, scope: !4140)
!4164 = distinct !DISubprogram(name: "xnrealloc", scope: !249, file: !249, line: 112, type: !1668, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !4165)
!4165 = !{!4166, !4167, !4168}
!4166 = !DILocalVariable(name: "p", arg: 1, scope: !4164, file: !249, line: 112, type: !33)
!4167 = !DILocalVariable(name: "n", arg: 2, scope: !4164, file: !249, line: 112, type: !43)
!4168 = !DILocalVariable(name: "s", arg: 3, scope: !4164, file: !249, line: 112, type: !43)
!4169 = !DILocation(line: 112, column: 18, scope: !4164)
!4170 = !DILocation(line: 112, column: 28, scope: !4164)
!4171 = !DILocation(line: 112, column: 38, scope: !4164)
!4172 = !DILocation(line: 114, column: 7, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4164, file: !249, line: 114, column: 7)
!4174 = !DILocation(line: 114, column: 7, scope: !4164)
!4175 = !DILocation(line: 115, column: 5, scope: !4173)
!4176 = !DILocation(line: 116, column: 25, scope: !4164)
!4177 = !DILocalVariable(name: "p", arg: 1, scope: !4178, file: !4141, line: 51, type: !33)
!4178 = distinct !DISubprogram(name: "xrealloc", scope: !4141, file: !4141, line: 51, type: !4179, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !4181)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!33, !33, !43}
!4181 = !{!4177, !4182}
!4182 = !DILocalVariable(name: "n", arg: 2, scope: !4178, file: !4141, line: 51, type: !43)
!4183 = !DILocation(line: 51, column: 17, scope: !4178, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 116, column: 10, scope: !4164)
!4185 = !DILocation(line: 51, column: 27, scope: !4178, inlinedAt: !4184)
!4186 = !DILocation(line: 53, column: 8, scope: !4187, inlinedAt: !4184)
!4187 = distinct !DILexicalBlock(scope: !4178, file: !4141, line: 53, column: 7)
!4188 = !DILocation(line: 53, column: 13, scope: !4187, inlinedAt: !4184)
!4189 = !DILocation(line: 53, column: 10, scope: !4187, inlinedAt: !4184)
!4190 = !DILocation(line: 57, column: 7, scope: !4191, inlinedAt: !4184)
!4191 = distinct !DILexicalBlock(scope: !4187, file: !4141, line: 54, column: 5)
!4192 = !DILocation(line: 58, column: 7, scope: !4191, inlinedAt: !4184)
!4193 = !DILocation(line: 61, column: 7, scope: !4178, inlinedAt: !4184)
!4194 = !DILocation(line: 62, column: 8, scope: !4195, inlinedAt: !4184)
!4195 = distinct !DILexicalBlock(scope: !4178, file: !4141, line: 62, column: 7)
!4196 = !DILocation(line: 62, column: 13, scope: !4195, inlinedAt: !4184)
!4197 = !DILocation(line: 62, column: 10, scope: !4195, inlinedAt: !4184)
!4198 = !DILocation(line: 63, column: 5, scope: !4195, inlinedAt: !4184)
!4199 = !DILocation(line: 0, scope: !4178, inlinedAt: !4184)
!4200 = !DILocation(line: 116, column: 3, scope: !4164)
!4201 = !DILocation(line: 51, column: 17, scope: !4178)
!4202 = !DILocation(line: 51, column: 27, scope: !4178)
!4203 = !DILocation(line: 53, column: 8, scope: !4187)
!4204 = !DILocation(line: 53, column: 13, scope: !4187)
!4205 = !DILocation(line: 53, column: 10, scope: !4187)
!4206 = !DILocation(line: 57, column: 7, scope: !4191)
!4207 = !DILocation(line: 58, column: 7, scope: !4191)
!4208 = !DILocation(line: 61, column: 7, scope: !4178)
!4209 = !DILocation(line: 62, column: 8, scope: !4195)
!4210 = !DILocation(line: 62, column: 13, scope: !4195)
!4211 = !DILocation(line: 62, column: 10, scope: !4195)
!4212 = !DILocation(line: 63, column: 5, scope: !4195)
!4213 = !DILocation(line: 0, scope: !4178)
!4214 = !DILocation(line: 65, column: 1, scope: !4178)
!4215 = !DILocation(line: 174, column: 19, scope: !250)
!4216 = !DILocation(line: 174, column: 30, scope: !250)
!4217 = !DILocation(line: 174, column: 41, scope: !250)
!4218 = !DILocation(line: 176, column: 14, scope: !250)
!4219 = !DILocation(line: 176, column: 10, scope: !250)
!4220 = !DILocation(line: 178, column: 9, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !250, file: !249, line: 178, column: 7)
!4222 = !DILocation(line: 178, column: 7, scope: !250)
!4223 = !DILocation(line: 180, column: 13, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4225, file: !249, line: 180, column: 11)
!4225 = distinct !DILexicalBlock(scope: !4221, file: !249, line: 179, column: 5)
!4226 = !DILocation(line: 180, column: 11, scope: !4225)
!4227 = !DILocation(line: 188, column: 30, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4224, file: !249, line: 181, column: 9)
!4229 = !DILocation(line: 189, column: 16, scope: !4228)
!4230 = !DILocation(line: 189, column: 13, scope: !4228)
!4231 = !DILocation(line: 190, column: 9, scope: !4228)
!4232 = !DILocation(line: 0, scope: !4228)
!4233 = !DILocation(line: 191, column: 11, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4225, file: !249, line: 191, column: 11)
!4235 = !DILocation(line: 191, column: 11, scope: !4225)
!4236 = !DILocation(line: 206, column: 7, scope: !250)
!4237 = !DILocation(line: 207, column: 25, scope: !250)
!4238 = !DILocation(line: 51, column: 17, scope: !4178, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 207, column: 10, scope: !250)
!4240 = !DILocation(line: 51, column: 27, scope: !4178, inlinedAt: !4239)
!4241 = !DILocation(line: 53, column: 10, scope: !4187, inlinedAt: !4239)
!4242 = !DILocation(line: 192, column: 9, scope: !4234)
!4243 = !DILocation(line: 200, column: 69, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4245, file: !249, line: 200, column: 11)
!4245 = distinct !DILexicalBlock(scope: !4221, file: !249, line: 195, column: 5)
!4246 = !DILocation(line: 201, column: 11, scope: !4244)
!4247 = !DILocation(line: 200, column: 11, scope: !4245)
!4248 = !DILocation(line: 202, column: 9, scope: !4244)
!4249 = !DILocation(line: 203, column: 14, scope: !4245)
!4250 = !DILocation(line: 203, column: 18, scope: !4245)
!4251 = !DILocation(line: 203, column: 9, scope: !4245)
!4252 = !DILocation(line: 53, column: 8, scope: !4187, inlinedAt: !4239)
!4253 = !DILocation(line: 57, column: 7, scope: !4191, inlinedAt: !4239)
!4254 = !DILocation(line: 58, column: 7, scope: !4191, inlinedAt: !4239)
!4255 = !DILocation(line: 61, column: 7, scope: !4178, inlinedAt: !4239)
!4256 = !DILocation(line: 62, column: 8, scope: !4195, inlinedAt: !4239)
!4257 = !DILocation(line: 62, column: 13, scope: !4195, inlinedAt: !4239)
!4258 = !DILocation(line: 62, column: 10, scope: !4195, inlinedAt: !4239)
!4259 = !DILocation(line: 63, column: 5, scope: !4195, inlinedAt: !4239)
!4260 = !DILocation(line: 0, scope: !4178, inlinedAt: !4239)
!4261 = !DILocation(line: 207, column: 3, scope: !250)
!4262 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !3191, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !4263)
!4263 = !{!4264}
!4264 = !DILocalVariable(name: "n", arg: 1, scope: !4262, file: !249, line: 216, type: !43)
!4265 = !DILocation(line: 216, column: 20, scope: !4262)
!4266 = !DILocation(line: 39, column: 17, scope: !4140, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 218, column: 10, scope: !4262)
!4268 = !DILocation(line: 41, column: 13, scope: !4140, inlinedAt: !4267)
!4269 = !DILocation(line: 41, column: 9, scope: !4140, inlinedAt: !4267)
!4270 = !DILocation(line: 42, column: 8, scope: !4151, inlinedAt: !4267)
!4271 = !DILocation(line: 42, column: 15, scope: !4151, inlinedAt: !4267)
!4272 = !DILocation(line: 42, column: 10, scope: !4151, inlinedAt: !4267)
!4273 = !DILocation(line: 43, column: 5, scope: !4151, inlinedAt: !4267)
!4274 = !DILocation(line: 218, column: 3, scope: !4262)
!4275 = distinct !DISubprogram(name: "x2realloc", scope: !4141, file: !4141, line: 74, type: !4276, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !4278)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!33, !33, !253}
!4278 = !{!4279, !4280}
!4279 = !DILocalVariable(name: "p", arg: 1, scope: !4275, file: !4141, line: 74, type: !33)
!4280 = !DILocalVariable(name: "pn", arg: 2, scope: !4275, file: !4141, line: 74, type: !253)
!4281 = !DILocation(line: 74, column: 18, scope: !4275)
!4282 = !DILocation(line: 74, column: 29, scope: !4275)
!4283 = !DILocation(line: 174, column: 19, scope: !250, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 76, column: 10, scope: !4275)
!4285 = !DILocation(line: 174, column: 30, scope: !250, inlinedAt: !4284)
!4286 = !DILocation(line: 174, column: 41, scope: !250, inlinedAt: !4284)
!4287 = !DILocation(line: 176, column: 14, scope: !250, inlinedAt: !4284)
!4288 = !DILocation(line: 176, column: 10, scope: !250, inlinedAt: !4284)
!4289 = !DILocation(line: 178, column: 9, scope: !4221, inlinedAt: !4284)
!4290 = !DILocation(line: 178, column: 7, scope: !250, inlinedAt: !4284)
!4291 = !DILocation(line: 180, column: 13, scope: !4224, inlinedAt: !4284)
!4292 = !DILocation(line: 180, column: 11, scope: !4225, inlinedAt: !4284)
!4293 = !DILocation(line: 191, column: 11, scope: !4234, inlinedAt: !4284)
!4294 = !DILocation(line: 191, column: 11, scope: !4225, inlinedAt: !4284)
!4295 = !DILocation(line: 206, column: 7, scope: !250, inlinedAt: !4284)
!4296 = !DILocation(line: 51, column: 17, scope: !4178, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 207, column: 10, scope: !250, inlinedAt: !4284)
!4298 = !DILocation(line: 51, column: 27, scope: !4178, inlinedAt: !4297)
!4299 = !DILocation(line: 53, column: 10, scope: !4187, inlinedAt: !4297)
!4300 = !DILocation(line: 192, column: 9, scope: !4234, inlinedAt: !4284)
!4301 = !DILocation(line: 201, column: 11, scope: !4244, inlinedAt: !4284)
!4302 = !DILocation(line: 200, column: 11, scope: !4245, inlinedAt: !4284)
!4303 = !DILocation(line: 202, column: 9, scope: !4244, inlinedAt: !4284)
!4304 = !DILocation(line: 203, column: 14, scope: !4245, inlinedAt: !4284)
!4305 = !DILocation(line: 203, column: 18, scope: !4245, inlinedAt: !4284)
!4306 = !DILocation(line: 203, column: 9, scope: !4245, inlinedAt: !4284)
!4307 = !DILocation(line: 53, column: 8, scope: !4187, inlinedAt: !4297)
!4308 = !DILocation(line: 57, column: 7, scope: !4191, inlinedAt: !4297)
!4309 = !DILocation(line: 58, column: 7, scope: !4191, inlinedAt: !4297)
!4310 = !DILocation(line: 61, column: 7, scope: !4178, inlinedAt: !4297)
!4311 = !DILocation(line: 62, column: 8, scope: !4195, inlinedAt: !4297)
!4312 = !DILocation(line: 62, column: 13, scope: !4195, inlinedAt: !4297)
!4313 = !DILocation(line: 62, column: 10, scope: !4195, inlinedAt: !4297)
!4314 = !DILocation(line: 63, column: 5, scope: !4195, inlinedAt: !4297)
!4315 = !DILocation(line: 0, scope: !4178, inlinedAt: !4297)
!4316 = !DILocation(line: 76, column: 3, scope: !4275)
!4317 = distinct !DISubprogram(name: "xzalloc", scope: !4141, file: !4141, line: 84, type: !4142, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !4318)
!4318 = !{!4319}
!4319 = !DILocalVariable(name: "s", arg: 1, scope: !4317, file: !4141, line: 84, type: !43)
!4320 = !DILocation(line: 84, column: 17, scope: !4317)
!4321 = !DILocation(line: 39, column: 17, scope: !4140, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 86, column: 18, scope: !4317)
!4323 = !DILocation(line: 41, column: 13, scope: !4140, inlinedAt: !4322)
!4324 = !DILocation(line: 41, column: 9, scope: !4140, inlinedAt: !4322)
!4325 = !DILocation(line: 42, column: 8, scope: !4151, inlinedAt: !4322)
!4326 = !DILocation(line: 42, column: 15, scope: !4151, inlinedAt: !4322)
!4327 = !DILocation(line: 42, column: 10, scope: !4151, inlinedAt: !4322)
!4328 = !DILocation(line: 43, column: 5, scope: !4151, inlinedAt: !4322)
!4329 = !DILocation(line: 86, column: 10, scope: !4317)
!4330 = !DILocation(line: 86, column: 3, scope: !4317)
!4331 = distinct !DISubprogram(name: "xcalloc", scope: !4141, file: !4141, line: 93, type: !1574, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !4332)
!4332 = !{!4333, !4334, !4335}
!4333 = !DILocalVariable(name: "n", arg: 1, scope: !4331, file: !4141, line: 93, type: !43)
!4334 = !DILocalVariable(name: "s", arg: 2, scope: !4331, file: !4141, line: 93, type: !43)
!4335 = !DILocalVariable(name: "p", scope: !4331, file: !4141, line: 95, type: !33)
!4336 = !DILocation(line: 93, column: 17, scope: !4331)
!4337 = !DILocation(line: 93, column: 27, scope: !4331)
!4338 = !DILocation(line: 100, column: 7, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4331, file: !4141, line: 100, column: 7)
!4340 = !DILocation(line: 101, column: 7, scope: !4339)
!4341 = !DILocation(line: 101, column: 18, scope: !4339)
!4342 = !DILocation(line: 95, column: 9, scope: !4331)
!4343 = !DILocation(line: 101, column: 16, scope: !4339)
!4344 = !DILocation(line: 100, column: 7, scope: !4331)
!4345 = !DILocation(line: 102, column: 5, scope: !4339)
!4346 = !DILocation(line: 103, column: 3, scope: !4331)
!4347 = distinct !DISubprogram(name: "xmemdup", scope: !4141, file: !4141, line: 111, type: !4348, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !4352)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!33, !4350, !43}
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4352 = !{!4353, !4354}
!4353 = !DILocalVariable(name: "p", arg: 1, scope: !4347, file: !4141, line: 111, type: !4350)
!4354 = !DILocalVariable(name: "s", arg: 2, scope: !4347, file: !4141, line: 111, type: !43)
!4355 = !DILocation(line: 111, column: 22, scope: !4347)
!4356 = !DILocation(line: 111, column: 32, scope: !4347)
!4357 = !DILocation(line: 39, column: 17, scope: !4140, inlinedAt: !4358)
!4358 = distinct !DILocation(line: 113, column: 18, scope: !4347)
!4359 = !DILocation(line: 41, column: 13, scope: !4140, inlinedAt: !4358)
!4360 = !DILocation(line: 41, column: 9, scope: !4140, inlinedAt: !4358)
!4361 = !DILocation(line: 42, column: 8, scope: !4151, inlinedAt: !4358)
!4362 = !DILocation(line: 42, column: 15, scope: !4151, inlinedAt: !4358)
!4363 = !DILocation(line: 42, column: 10, scope: !4151, inlinedAt: !4358)
!4364 = !DILocation(line: 43, column: 5, scope: !4151, inlinedAt: !4358)
!4365 = !DILocation(line: 113, column: 10, scope: !4347)
!4366 = !DILocation(line: 113, column: 3, scope: !4347)
!4367 = distinct !DISubprogram(name: "xstrdup", scope: !4141, file: !4141, line: 119, type: !3394, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !4368)
!4368 = !{!4369}
!4369 = !DILocalVariable(name: "string", arg: 1, scope: !4367, file: !4141, line: 119, type: !41)
!4370 = !DILocation(line: 119, column: 22, scope: !4367)
!4371 = !DILocation(line: 121, column: 27, scope: !4367)
!4372 = !DILocation(line: 121, column: 43, scope: !4367)
!4373 = !DILocation(line: 111, column: 22, scope: !4347, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 121, column: 10, scope: !4367)
!4375 = !DILocation(line: 111, column: 32, scope: !4347, inlinedAt: !4374)
!4376 = !DILocation(line: 39, column: 17, scope: !4140, inlinedAt: !4377)
!4377 = distinct !DILocation(line: 113, column: 18, scope: !4347, inlinedAt: !4374)
!4378 = !DILocation(line: 41, column: 13, scope: !4140, inlinedAt: !4377)
!4379 = !DILocation(line: 41, column: 9, scope: !4140, inlinedAt: !4377)
!4380 = !DILocation(line: 42, column: 8, scope: !4151, inlinedAt: !4377)
!4381 = !DILocation(line: 42, column: 15, scope: !4151, inlinedAt: !4377)
!4382 = !DILocation(line: 42, column: 10, scope: !4151, inlinedAt: !4377)
!4383 = !DILocation(line: 43, column: 5, scope: !4151, inlinedAt: !4377)
!4384 = !DILocation(line: 113, column: 10, scope: !4347, inlinedAt: !4374)
!4385 = !DILocation(line: 121, column: 3, scope: !4367)
!4386 = distinct !DISubprogram(name: "xalloc_die", scope: !4387, file: !4387, line: 32, type: !728, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !262, retainedNodes: !120)
!4387 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4388 = !DILocation(line: 34, column: 10, scope: !4386)
!4389 = !DILocation(line: 34, column: 33, scope: !4386)
!4390 = !DILocation(line: 34, column: 3, scope: !4386)
!4391 = !DILocation(line: 40, column: 3, scope: !4386)
!4392 = distinct !DISubprogram(name: "xnumtoumax", scope: !4393, file: !4393, line: 36, type: !4394, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4396)
!4393 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!63, !41, !52, !63, !63, !41, !41, !52}
!4396 = !{!4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4406}
!4397 = !DILocalVariable(name: "n_str", arg: 1, scope: !4392, file: !4393, line: 36, type: !41)
!4398 = !DILocalVariable(name: "base", arg: 2, scope: !4392, file: !4393, line: 36, type: !52)
!4399 = !DILocalVariable(name: "min", arg: 3, scope: !4392, file: !4393, line: 36, type: !63)
!4400 = !DILocalVariable(name: "max", arg: 4, scope: !4392, file: !4393, line: 36, type: !63)
!4401 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4392, file: !4393, line: 37, type: !41)
!4402 = !DILocalVariable(name: "err", arg: 6, scope: !4392, file: !4393, line: 37, type: !41)
!4403 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4392, file: !4393, line: 37, type: !52)
!4404 = !DILocalVariable(name: "s_err", scope: !4392, file: !4393, line: 39, type: !4405)
!4405 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !268, line: 39, baseType: !267)
!4406 = !DILocalVariable(name: "tnum", scope: !4392, file: !4393, line: 41, type: !63)
!4407 = !DILocation(line: 36, column: 26, scope: !4392)
!4408 = !DILocation(line: 36, column: 37, scope: !4392)
!4409 = !DILocation(line: 36, column: 57, scope: !4392)
!4410 = !DILocation(line: 36, column: 76, scope: !4392)
!4411 = !DILocation(line: 37, column: 26, scope: !4392)
!4412 = !DILocation(line: 37, column: 48, scope: !4392)
!4413 = !DILocation(line: 37, column: 57, scope: !4392)
!4414 = !DILocation(line: 41, column: 3, scope: !4392)
!4415 = !DILocation(line: 41, column: 17, scope: !4392)
!4416 = !DILocation(line: 42, column: 11, scope: !4392)
!4417 = !DILocation(line: 39, column: 16, scope: !4392)
!4418 = !DILocation(line: 44, column: 7, scope: !4392)
!4419 = !DILocation(line: 69, column: 50, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4421, file: !4393, line: 67, column: 5)
!4421 = distinct !DILexicalBlock(scope: !4392, file: !4393, line: 66, column: 7)
!4422 = !DILocation(line: 46, column: 11, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4424, file: !4393, line: 46, column: 11)
!4424 = distinct !DILexicalBlock(scope: !4425, file: !4393, line: 45, column: 5)
!4425 = distinct !DILexicalBlock(scope: !4392, file: !4393, line: 44, column: 7)
!4426 = !DILocation(line: 46, column: 16, scope: !4423)
!4427 = !DILocation(line: 46, column: 29, scope: !4423)
!4428 = !DILocation(line: 46, column: 22, scope: !4423)
!4429 = !DILocation(line: 51, column: 20, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4431, file: !4393, line: 51, column: 15)
!4431 = distinct !DILexicalBlock(scope: !4423, file: !4393, line: 47, column: 9)
!4432 = !DILocation(line: 0, scope: !4430)
!4433 = !DILocation(line: 51, column: 15, scope: !4431)
!4434 = !DILocation(line: 52, column: 19, scope: !4430)
!4435 = !DILocation(line: 52, column: 13, scope: !4430)
!4436 = !DILocation(line: 58, column: 19, scope: !4430)
!4437 = !DILocation(line: 62, column: 5, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4425, file: !4393, line: 61, column: 12)
!4439 = !DILocation(line: 62, column: 11, scope: !4438)
!4440 = !DILocation(line: 64, column: 5, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4438, file: !4393, line: 63, column: 12)
!4442 = !DILocation(line: 64, column: 11, scope: !4441)
!4443 = !DILocation(line: 69, column: 14, scope: !4420)
!4444 = !DILocation(line: 69, column: 56, scope: !4420)
!4445 = !DILocation(line: 70, column: 29, scope: !4420)
!4446 = !DILocation(line: 69, column: 7, scope: !4420)
!4447 = !DILocation(line: 73, column: 10, scope: !4392)
!4448 = !DILocation(line: 71, column: 5, scope: !4420)
!4449 = !DILocation(line: 74, column: 1, scope: !4392)
!4450 = !DILocation(line: 73, column: 3, scope: !4392)
!4451 = distinct !DISubprogram(name: "xdectoumax", scope: !4393, file: !4393, line: 82, type: !4452, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4454)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!63, !41, !63, !63, !41, !41, !52}
!4454 = !{!4455, !4456, !4457, !4458, !4459, !4460}
!4455 = !DILocalVariable(name: "n_str", arg: 1, scope: !4451, file: !4393, line: 82, type: !41)
!4456 = !DILocalVariable(name: "min", arg: 2, scope: !4451, file: !4393, line: 82, type: !63)
!4457 = !DILocalVariable(name: "max", arg: 3, scope: !4451, file: !4393, line: 82, type: !63)
!4458 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4451, file: !4393, line: 83, type: !41)
!4459 = !DILocalVariable(name: "err", arg: 5, scope: !4451, file: !4393, line: 83, type: !41)
!4460 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4451, file: !4393, line: 83, type: !52)
!4461 = !DILocation(line: 82, column: 26, scope: !4451)
!4462 = !DILocation(line: 82, column: 47, scope: !4451)
!4463 = !DILocation(line: 82, column: 66, scope: !4451)
!4464 = !DILocation(line: 83, column: 26, scope: !4451)
!4465 = !DILocation(line: 83, column: 48, scope: !4451)
!4466 = !DILocation(line: 83, column: 57, scope: !4451)
!4467 = !DILocation(line: 85, column: 10, scope: !4451)
!4468 = !DILocation(line: 85, column: 3, scope: !4451)
!4469 = distinct !DISubprogram(name: "xstrtoumax", scope: !4470, file: !4470, line: 88, type: !4471, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !275, retainedNodes: !4474)
!4470 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!4405, !41, !53, !52, !4473, !41}
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!4474 = !{!4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4487, !4488, !4491, !4492}
!4475 = !DILocalVariable(name: "s", arg: 1, scope: !4469, file: !4470, line: 88, type: !41)
!4476 = !DILocalVariable(name: "ptr", arg: 2, scope: !4469, file: !4470, line: 88, type: !53)
!4477 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4469, file: !4470, line: 88, type: !52)
!4478 = !DILocalVariable(name: "val", arg: 4, scope: !4469, file: !4470, line: 89, type: !4473)
!4479 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4469, file: !4470, line: 89, type: !41)
!4480 = !DILocalVariable(name: "t_ptr", scope: !4469, file: !4470, line: 91, type: !31)
!4481 = !DILocalVariable(name: "p", scope: !4469, file: !4470, line: 92, type: !53)
!4482 = !DILocalVariable(name: "tmp", scope: !4469, file: !4470, line: 93, type: !63)
!4483 = !DILocalVariable(name: "err", scope: !4469, file: !4470, line: 94, type: !4405)
!4484 = !DILocalVariable(name: "q", scope: !4485, file: !4470, line: 104, type: !41)
!4485 = distinct !DILexicalBlock(scope: !4486, file: !4470, line: 103, column: 5)
!4486 = distinct !DILexicalBlock(scope: !4469, file: !4470, line: 102, column: 7)
!4487 = !DILocalVariable(name: "ch", scope: !4485, file: !4470, line: 105, type: !2214)
!4488 = !DILocalVariable(name: "base", scope: !4489, file: !4470, line: 141, type: !52)
!4489 = distinct !DILexicalBlock(scope: !4490, file: !4470, line: 140, column: 5)
!4490 = distinct !DILexicalBlock(scope: !4469, file: !4470, line: 139, column: 7)
!4491 = !DILocalVariable(name: "suffixes", scope: !4489, file: !4470, line: 142, type: !52)
!4492 = !DILocalVariable(name: "overflow", scope: !4489, file: !4470, line: 143, type: !4405)
!4493 = !DILocation(line: 88, column: 24, scope: !4469)
!4494 = !DILocation(line: 88, column: 34, scope: !4469)
!4495 = !DILocation(line: 88, column: 43, scope: !4469)
!4496 = !DILocation(line: 89, column: 24, scope: !4469)
!4497 = !DILocation(line: 89, column: 41, scope: !4469)
!4498 = !DILocation(line: 91, column: 3, scope: !4469)
!4499 = !DILocation(line: 94, column: 16, scope: !4469)
!4500 = !DILocation(line: 96, column: 3, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4502, file: !4470, line: 96, column: 3)
!4502 = distinct !DILexicalBlock(scope: !4469, file: !4470, line: 96, column: 3)
!4503 = !DILocation(line: 98, column: 8, scope: !4469)
!4504 = !DILocation(line: 92, column: 10, scope: !4469)
!4505 = !DILocation(line: 100, column: 3, scope: !4469)
!4506 = !DILocation(line: 100, column: 9, scope: !4469)
!4507 = !DILocation(line: 104, column: 19, scope: !4485)
!4508 = !DILocation(line: 105, column: 21, scope: !4485)
!4509 = !DILocation(line: 106, column: 14, scope: !4485)
!4510 = !DILocation(line: 106, column: 7, scope: !4485)
!4511 = !DILocation(line: 0, scope: !4485)
!4512 = !DILocation(line: 107, column: 15, scope: !4485)
!4513 = distinct !{!4513, !4510, !4514}
!4514 = !DILocation(line: 107, column: 17, scope: !4485)
!4515 = !DILocation(line: 108, column: 14, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4485, file: !4470, line: 108, column: 11)
!4517 = !DILocalVariable(name: "nptr", arg: 1, scope: !4518, file: !4519, line: 336, type: !4522)
!4518 = distinct !DISubprogram(name: "strtoumax", scope: !4519, file: !4519, line: 336, type: !4520, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !275, retainedNodes: !4524)
!4519 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!63, !4522, !4523, !52}
!4522 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!4523 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!4524 = !{!4517, !4525, !4526}
!4525 = !DILocalVariable(name: "endptr", arg: 2, scope: !4518, file: !4519, line: 336, type: !4523)
!4526 = !DILocalVariable(name: "base", arg: 3, scope: !4518, file: !4519, line: 336, type: !52)
!4527 = !DILocation(line: 336, column: 1, scope: !4518, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 112, column: 9, scope: !4469)
!4529 = !DILocation(line: 339, column: 10, scope: !4518, inlinedAt: !4528)
!4530 = !DILocation(line: 93, column: 14, scope: !4469)
!4531 = !DILocation(line: 114, column: 7, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4469, file: !4470, line: 114, column: 7)
!4533 = !DILocation(line: 114, column: 10, scope: !4532)
!4534 = !DILocation(line: 114, column: 7, scope: !4469)
!4535 = !DILocation(line: 118, column: 11, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4537, file: !4470, line: 118, column: 11)
!4537 = distinct !DILexicalBlock(scope: !4532, file: !4470, line: 115, column: 5)
!4538 = !DILocation(line: 118, column: 26, scope: !4536)
!4539 = !DILocation(line: 118, column: 29, scope: !4536)
!4540 = !DILocation(line: 118, column: 33, scope: !4536)
!4541 = !DILocation(line: 118, column: 36, scope: !4536)
!4542 = !DILocation(line: 118, column: 11, scope: !4537)
!4543 = !DILocation(line: 123, column: 12, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4532, file: !4470, line: 123, column: 12)
!4545 = !DILocation(line: 123, column: 12, scope: !4532)
!4546 = !DILocation(line: 128, column: 5, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4544, file: !4470, line: 124, column: 5)
!4548 = !DILocation(line: 0, scope: !4469)
!4549 = !DILocation(line: 133, column: 8, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4469, file: !4470, line: 133, column: 7)
!4551 = !DILocation(line: 133, column: 7, scope: !4469)
!4552 = !DILocation(line: 135, column: 12, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4550, file: !4470, line: 134, column: 5)
!4554 = !DILocation(line: 136, column: 7, scope: !4553)
!4555 = !DILocation(line: 139, column: 7, scope: !4490)
!4556 = !DILocation(line: 139, column: 11, scope: !4490)
!4557 = !DILocation(line: 139, column: 7, scope: !4469)
!4558 = !DILocation(line: 141, column: 11, scope: !4489)
!4559 = !DILocation(line: 142, column: 11, scope: !4489)
!4560 = !DILocation(line: 145, column: 12, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4489, file: !4470, line: 145, column: 11)
!4562 = !DILocation(line: 145, column: 11, scope: !4489)
!4563 = !DILocation(line: 147, column: 16, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4561, file: !4470, line: 146, column: 9)
!4565 = !DILocation(line: 148, column: 22, scope: !4564)
!4566 = !DILocation(line: 148, column: 11, scope: !4564)
!4567 = !DILocation(line: 151, column: 7, scope: !4489)
!4568 = !DILocation(line: 163, column: 15, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4570, file: !4470, line: 163, column: 15)
!4570 = distinct !DILexicalBlock(scope: !4489, file: !4470, line: 152, column: 9)
!4571 = !DILocation(line: 163, column: 15, scope: !4570)
!4572 = !DILocation(line: 164, column: 21, scope: !4569)
!4573 = !DILocation(line: 164, column: 13, scope: !4569)
!4574 = !DILocation(line: 167, column: 21, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4576, file: !4470, line: 167, column: 21)
!4576 = distinct !DILexicalBlock(scope: !4569, file: !4470, line: 165, column: 15)
!4577 = !DILocation(line: 167, column: 29, scope: !4575)
!4578 = !DILocation(line: 167, column: 21, scope: !4576)
!4579 = !DILocation(line: 175, column: 17, scope: !4576)
!4580 = !DILocation(line: 179, column: 7, scope: !4489)
!4581 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4582, file: !4470, line: 60, type: !52)
!4582 = distinct !DISubprogram(name: "bkm_scale", scope: !4470, file: !4470, line: 60, type: !4583, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !275, retainedNodes: !4585)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!4405, !4473, !52}
!4585 = !{!4586, !4581}
!4586 = !DILocalVariable(name: "x", arg: 1, scope: !4582, file: !4470, line: 60, type: !4473)
!4587 = !DILocation(line: 60, column: 31, scope: !4582, inlinedAt: !4588)
!4588 = distinct !DILocation(line: 182, column: 22, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4489, file: !4470, line: 180, column: 9)
!4590 = !DILocation(line: 67, column: 39, scope: !4591, inlinedAt: !4588)
!4591 = distinct !DILexicalBlock(scope: !4582, file: !4470, line: 67, column: 7)
!4592 = !DILocation(line: 72, column: 6, scope: !4582, inlinedAt: !4588)
!4593 = !DILocation(line: 67, column: 7, scope: !4582, inlinedAt: !4588)
!4594 = !DILocation(line: 143, column: 20, scope: !4489)
!4595 = !DILocation(line: 183, column: 11, scope: !4589)
!4596 = !DILocation(line: 60, column: 31, scope: !4582, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 189, column: 22, scope: !4589)
!4598 = !DILocation(line: 67, column: 39, scope: !4591, inlinedAt: !4597)
!4599 = !DILocation(line: 72, column: 6, scope: !4582, inlinedAt: !4597)
!4600 = !DILocation(line: 67, column: 7, scope: !4582, inlinedAt: !4597)
!4601 = !DILocation(line: 190, column: 11, scope: !4589)
!4602 = !DILocalVariable(name: "power", arg: 3, scope: !4603, file: !4470, line: 77, type: !52)
!4603 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4470, file: !4470, line: 77, type: !4604, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !275, retainedNodes: !4606)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!4405, !4473, !52, !52}
!4606 = !{!4607, !4608, !4602, !4609}
!4607 = !DILocalVariable(name: "x", arg: 1, scope: !4603, file: !4470, line: 77, type: !4473)
!4608 = !DILocalVariable(name: "base", arg: 2, scope: !4603, file: !4470, line: 77, type: !52)
!4609 = !DILocalVariable(name: "err", scope: !4603, file: !4470, line: 79, type: !4405)
!4610 = !DILocation(line: 77, column: 50, scope: !4603, inlinedAt: !4611)
!4611 = distinct !DILocation(line: 197, column: 22, scope: !4589)
!4612 = !DILocation(line: 79, column: 16, scope: !4603, inlinedAt: !4611)
!4613 = !DILocation(line: 67, column: 39, scope: !4591, inlinedAt: !4614)
!4614 = distinct !DILocation(line: 81, column: 12, scope: !4603, inlinedAt: !4611)
!4615 = !DILocation(line: 72, column: 6, scope: !4582, inlinedAt: !4614)
!4616 = !DILocation(line: 67, column: 7, scope: !4582, inlinedAt: !4614)
!4617 = !DILocation(line: 81, column: 9, scope: !4603, inlinedAt: !4611)
!4618 = !DILocation(line: 241, column: 11, scope: !4489)
!4619 = !DILocation(line: 77, column: 50, scope: !4603, inlinedAt: !4620)
!4620 = distinct !DILocation(line: 202, column: 22, scope: !4589)
!4621 = !DILocation(line: 79, column: 16, scope: !4603, inlinedAt: !4620)
!4622 = !DILocation(line: 67, column: 39, scope: !4591, inlinedAt: !4623)
!4623 = distinct !DILocation(line: 81, column: 12, scope: !4603, inlinedAt: !4620)
!4624 = !DILocation(line: 72, column: 6, scope: !4582, inlinedAt: !4623)
!4625 = !DILocation(line: 67, column: 7, scope: !4582, inlinedAt: !4623)
!4626 = !DILocation(line: 81, column: 9, scope: !4603, inlinedAt: !4620)
!4627 = !DILocation(line: 77, column: 50, scope: !4603, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 207, column: 22, scope: !4589)
!4629 = !DILocation(line: 79, column: 16, scope: !4603, inlinedAt: !4628)
!4630 = !DILocation(line: 67, column: 39, scope: !4591, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 81, column: 12, scope: !4603, inlinedAt: !4628)
!4632 = !DILocation(line: 72, column: 6, scope: !4582, inlinedAt: !4631)
!4633 = !DILocation(line: 67, column: 7, scope: !4582, inlinedAt: !4631)
!4634 = !DILocation(line: 77, column: 50, scope: !4603, inlinedAt: !4635)
!4635 = distinct !DILocation(line: 212, column: 22, scope: !4589)
!4636 = !DILocation(line: 79, column: 16, scope: !4603, inlinedAt: !4635)
!4637 = !DILocation(line: 67, column: 39, scope: !4591, inlinedAt: !4638)
!4638 = distinct !DILocation(line: 81, column: 12, scope: !4603, inlinedAt: !4635)
!4639 = !DILocation(line: 72, column: 6, scope: !4582, inlinedAt: !4638)
!4640 = !DILocation(line: 67, column: 7, scope: !4582, inlinedAt: !4638)
!4641 = !DILocation(line: 81, column: 9, scope: !4603, inlinedAt: !4635)
!4642 = !DILocation(line: 77, column: 50, scope: !4603, inlinedAt: !4643)
!4643 = distinct !DILocation(line: 216, column: 22, scope: !4589)
!4644 = !DILocation(line: 79, column: 16, scope: !4603, inlinedAt: !4643)
!4645 = !DILocation(line: 67, column: 39, scope: !4591, inlinedAt: !4646)
!4646 = distinct !DILocation(line: 81, column: 12, scope: !4603, inlinedAt: !4643)
!4647 = !DILocation(line: 72, column: 6, scope: !4582, inlinedAt: !4646)
!4648 = !DILocation(line: 67, column: 7, scope: !4582, inlinedAt: !4646)
!4649 = !DILocation(line: 81, column: 9, scope: !4603, inlinedAt: !4643)
!4650 = !DILocation(line: 77, column: 50, scope: !4603, inlinedAt: !4651)
!4651 = distinct !DILocation(line: 221, column: 22, scope: !4589)
!4652 = !DILocation(line: 79, column: 16, scope: !4603, inlinedAt: !4651)
!4653 = !DILocation(line: 67, column: 39, scope: !4591, inlinedAt: !4654)
!4654 = distinct !DILocation(line: 81, column: 12, scope: !4603, inlinedAt: !4651)
!4655 = !DILocation(line: 72, column: 6, scope: !4582, inlinedAt: !4654)
!4656 = !DILocation(line: 67, column: 7, scope: !4582, inlinedAt: !4654)
!4657 = !DILocation(line: 81, column: 9, scope: !4603, inlinedAt: !4651)
!4658 = !DILocation(line: 60, column: 31, scope: !4582, inlinedAt: !4659)
!4659 = distinct !DILocation(line: 225, column: 22, scope: !4589)
!4660 = !DILocation(line: 67, column: 39, scope: !4591, inlinedAt: !4659)
!4661 = !DILocation(line: 72, column: 6, scope: !4582, inlinedAt: !4659)
!4662 = !DILocation(line: 67, column: 7, scope: !4582, inlinedAt: !4659)
!4663 = !DILocation(line: 226, column: 11, scope: !4589)
!4664 = !DILocation(line: 77, column: 50, scope: !4603, inlinedAt: !4665)
!4665 = distinct !DILocation(line: 229, column: 22, scope: !4589)
!4666 = !DILocation(line: 79, column: 16, scope: !4603, inlinedAt: !4665)
!4667 = !DILocation(line: 67, column: 39, scope: !4591, inlinedAt: !4668)
!4668 = distinct !DILocation(line: 81, column: 12, scope: !4603, inlinedAt: !4665)
!4669 = !DILocation(line: 72, column: 6, scope: !4582, inlinedAt: !4668)
!4670 = !DILocation(line: 67, column: 7, scope: !4582, inlinedAt: !4668)
!4671 = !DILocation(line: 81, column: 9, scope: !4603, inlinedAt: !4665)
!4672 = !DILocation(line: 77, column: 50, scope: !4603, inlinedAt: !4673)
!4673 = distinct !DILocation(line: 233, column: 22, scope: !4589)
!4674 = !DILocation(line: 79, column: 16, scope: !4603, inlinedAt: !4673)
!4675 = !DILocation(line: 67, column: 39, scope: !4591, inlinedAt: !4676)
!4676 = distinct !DILocation(line: 81, column: 12, scope: !4603, inlinedAt: !4673)
!4677 = !DILocation(line: 72, column: 6, scope: !4582, inlinedAt: !4676)
!4678 = !DILocation(line: 67, column: 7, scope: !4582, inlinedAt: !4676)
!4679 = !DILocation(line: 81, column: 9, scope: !4603, inlinedAt: !4673)
!4680 = !DILocation(line: 237, column: 16, scope: !4589)
!4681 = !DILocation(line: 238, column: 22, scope: !4589)
!4682 = !DILocation(line: 238, column: 11, scope: !4589)
!4683 = !DILocation(line: 0, scope: !4536)
!4684 = !DILocation(line: 0, scope: !4589)
!4685 = !DILocation(line: 242, column: 10, scope: !4489)
!4686 = !DILocation(line: 243, column: 11, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4489, file: !4470, line: 243, column: 11)
!4688 = !DILocation(line: 244, column: 13, scope: !4687)
!4689 = !DILocation(line: 243, column: 11, scope: !4489)
!4690 = !DILocation(line: 119, column: 13, scope: !4536)
!4691 = !DILocation(line: 247, column: 8, scope: !4469)
!4692 = !DILocation(line: 248, column: 3, scope: !4469)
!4693 = !DILocation(line: 0, scope: !4516)
!4694 = !DILocation(line: 249, column: 1, scope: !4469)
!4695 = distinct !DISubprogram(name: "rpl_calloc", scope: !4696, file: !4696, line: 42, type: !1574, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !279, retainedNodes: !4697)
!4696 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4697 = !{!4698, !4699, !4700, !4701}
!4698 = !DILocalVariable(name: "n", arg: 1, scope: !4695, file: !4696, line: 42, type: !43)
!4699 = !DILocalVariable(name: "s", arg: 2, scope: !4695, file: !4696, line: 42, type: !43)
!4700 = !DILocalVariable(name: "result", scope: !4695, file: !4696, line: 44, type: !33)
!4701 = !DILocalVariable(name: "bytes", scope: !4702, file: !4696, line: 56, type: !43)
!4702 = distinct !DILexicalBlock(scope: !4703, file: !4696, line: 53, column: 5)
!4703 = distinct !DILexicalBlock(scope: !4695, file: !4696, line: 47, column: 7)
!4704 = !DILocation(line: 42, column: 20, scope: !4695)
!4705 = !DILocation(line: 42, column: 30, scope: !4695)
!4706 = !DILocation(line: 47, column: 9, scope: !4703)
!4707 = !DILocation(line: 47, column: 19, scope: !4703)
!4708 = !DILocation(line: 47, column: 14, scope: !4703)
!4709 = !DILocation(line: 56, column: 24, scope: !4702)
!4710 = !DILocation(line: 56, column: 14, scope: !4702)
!4711 = !DILocation(line: 57, column: 17, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4702, file: !4696, line: 57, column: 11)
!4713 = !DILocation(line: 57, column: 21, scope: !4712)
!4714 = !DILocation(line: 57, column: 11, scope: !4702)
!4715 = !DILocation(line: 59, column: 11, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4712, file: !4696, line: 58, column: 9)
!4717 = !DILocation(line: 59, column: 17, scope: !4716)
!4718 = !DILocation(line: 65, column: 12, scope: !4695)
!4719 = !DILocation(line: 44, column: 9, scope: !4695)
!4720 = !DILocation(line: 72, column: 3, scope: !4695)
!4721 = !DILocation(line: 0, scope: !4716)
!4722 = !DILocation(line: 73, column: 1, scope: !4695)
!4723 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4724, file: !4724, line: 385, type: !4725, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !281, retainedNodes: !4739)
!4724 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!43, !4727, !41, !43, !4728}
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2354, line: 6, baseType: !4730)
!4730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2356, line: 21, baseType: !4731)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2356, line: 13, size: 64, elements: !4732)
!4732 = !{!4733, !4734}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4731, file: !2356, line: 15, baseType: !52, size: 32)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4731, file: !2356, line: 20, baseType: !4735, size: 32, offset: 32)
!4735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4731, file: !2356, line: 16, size: 32, elements: !4736)
!4736 = !{!4737, !4738}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4735, file: !2356, line: 18, baseType: !6, size: 32)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4735, file: !2356, line: 19, baseType: !2365, size: 32)
!4739 = !{!4740, !4741, !4742, !4743, !4744, !4745, !4746}
!4740 = !DILocalVariable(name: "pwc", arg: 1, scope: !4723, file: !4724, line: 385, type: !4727)
!4741 = !DILocalVariable(name: "s", arg: 2, scope: !4723, file: !4724, line: 385, type: !41)
!4742 = !DILocalVariable(name: "n", arg: 3, scope: !4723, file: !4724, line: 385, type: !43)
!4743 = !DILocalVariable(name: "ps", arg: 4, scope: !4723, file: !4724, line: 385, type: !4728)
!4744 = !DILocalVariable(name: "ret", scope: !4723, file: !4724, line: 387, type: !43)
!4745 = !DILocalVariable(name: "wc", scope: !4723, file: !4724, line: 388, type: !2370)
!4746 = !DILocalVariable(name: "uc", scope: !4747, file: !4724, line: 449, type: !2214)
!4747 = distinct !DILexicalBlock(scope: !4748, file: !4724, line: 448, column: 5)
!4748 = distinct !DILexicalBlock(scope: !4723, file: !4724, line: 447, column: 7)
!4749 = !DILocation(line: 385, column: 23, scope: !4723)
!4750 = !DILocation(line: 385, column: 40, scope: !4723)
!4751 = !DILocation(line: 385, column: 50, scope: !4723)
!4752 = !DILocation(line: 385, column: 64, scope: !4723)
!4753 = !DILocation(line: 388, column: 3, scope: !4723)
!4754 = !DILocation(line: 404, column: 9, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4723, file: !4724, line: 404, column: 7)
!4756 = !DILocation(line: 404, column: 7, scope: !4723)
!4757 = !DILocation(line: 439, column: 9, scope: !4723)
!4758 = !DILocation(line: 387, column: 10, scope: !4723)
!4759 = !DILocation(line: 447, column: 19, scope: !4748)
!4760 = !DILocation(line: 447, column: 31, scope: !4748)
!4761 = !DILocation(line: 447, column: 26, scope: !4748)
!4762 = !DILocation(line: 447, column: 41, scope: !4748)
!4763 = !DILocation(line: 447, column: 7, scope: !4723)
!4764 = !DILocation(line: 449, column: 26, scope: !4747)
!4765 = !DILocation(line: 449, column: 21, scope: !4747)
!4766 = !DILocation(line: 450, column: 14, scope: !4747)
!4767 = !DILocation(line: 450, column: 12, scope: !4747)
!4768 = !DILocation(line: 0, scope: !4747)
!4769 = !DILocation(line: 456, column: 1, scope: !4723)
!4770 = distinct !DISubprogram(name: "close_stream", scope: !4771, file: !4771, line: 56, type: !4772, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !284, retainedNodes: !4808)
!4771 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!52, !4774}
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3941, line: 7, baseType: !4776)
!4776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3943, line: 49, size: 1728, elements: !4777)
!4777 = !{!4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4776, file: !3943, line: 51, baseType: !52, size: 32)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4776, file: !3943, line: 54, baseType: !31, size: 64, offset: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4776, file: !3943, line: 55, baseType: !31, size: 64, offset: 128)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4776, file: !3943, line: 56, baseType: !31, size: 64, offset: 192)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4776, file: !3943, line: 57, baseType: !31, size: 64, offset: 256)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4776, file: !3943, line: 58, baseType: !31, size: 64, offset: 320)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4776, file: !3943, line: 59, baseType: !31, size: 64, offset: 384)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4776, file: !3943, line: 60, baseType: !31, size: 64, offset: 448)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4776, file: !3943, line: 61, baseType: !31, size: 64, offset: 512)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4776, file: !3943, line: 64, baseType: !31, size: 64, offset: 576)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4776, file: !3943, line: 65, baseType: !31, size: 64, offset: 640)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4776, file: !3943, line: 66, baseType: !31, size: 64, offset: 704)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4776, file: !3943, line: 68, baseType: !3958, size: 64, offset: 768)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4776, file: !3943, line: 70, baseType: !4792, size: 64, offset: 832)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4776, file: !3943, line: 72, baseType: !52, size: 32, offset: 896)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4776, file: !3943, line: 73, baseType: !52, size: 32, offset: 928)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4776, file: !3943, line: 74, baseType: !36, size: 64, offset: 960)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4776, file: !3943, line: 77, baseType: !170, size: 16, offset: 1024)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4776, file: !3943, line: 78, baseType: !3967, size: 8, offset: 1040)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4776, file: !3943, line: 79, baseType: !3969, size: 8, offset: 1048)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4776, file: !3943, line: 81, baseType: !3973, size: 64, offset: 1088)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4776, file: !3943, line: 89, baseType: !3976, size: 64, offset: 1152)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4776, file: !3943, line: 91, baseType: !3978, size: 64, offset: 1216)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4776, file: !3943, line: 92, baseType: !3981, size: 64, offset: 1280)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4776, file: !3943, line: 93, baseType: !4792, size: 64, offset: 1344)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4776, file: !3943, line: 94, baseType: !33, size: 64, offset: 1408)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4776, file: !3943, line: 95, baseType: !43, size: 64, offset: 1472)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4776, file: !3943, line: 96, baseType: !52, size: 32, offset: 1536)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4776, file: !3943, line: 98, baseType: !3988, size: 160, offset: 1568)
!4808 = !{!4809, !4810, !4811, !4812}
!4809 = !DILocalVariable(name: "stream", arg: 1, scope: !4770, file: !4771, line: 56, type: !4774)
!4810 = !DILocalVariable(name: "some_pending", scope: !4770, file: !4771, line: 58, type: !921)
!4811 = !DILocalVariable(name: "prev_fail", scope: !4770, file: !4771, line: 59, type: !921)
!4812 = !DILocalVariable(name: "fclose_fail", scope: !4770, file: !4771, line: 60, type: !921)
!4813 = !DILocation(line: 56, column: 21, scope: !4770)
!4814 = !DILocation(line: 58, column: 30, scope: !4770)
!4815 = !DILocalVariable(name: "__stream", arg: 1, scope: !4816, file: !4817, line: 135, type: !4774)
!4816 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4817, file: !4817, line: 135, type: !4772, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !284, retainedNodes: !4818)
!4817 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4818 = !{!4815}
!4819 = !DILocation(line: 135, column: 1, scope: !4816, inlinedAt: !4820)
!4820 = distinct !DILocation(line: 59, column: 27, scope: !4770)
!4821 = !DILocation(line: 137, column: 10, scope: !4816, inlinedAt: !4820)
!4822 = !{!4823, !1120, i64 0}
!4823 = !{!"_IO_FILE", !1120, i64 0, !721, i64 8, !721, i64 16, !721, i64 24, !721, i64 32, !721, i64 40, !721, i64 48, !721, i64 56, !721, i64 64, !721, i64 72, !721, i64 80, !721, i64 88, !721, i64 96, !721, i64 104, !1120, i64 112, !1120, i64 116, !1210, i64 120, !2610, i64 128, !722, i64 130, !722, i64 131, !721, i64 136, !1210, i64 144, !721, i64 152, !721, i64 160, !721, i64 168, !721, i64 176, !1210, i64 184, !1120, i64 192, !722, i64 196}
!4824 = !DILocation(line: 59, column: 43, scope: !4770)
!4825 = !DILocation(line: 60, column: 29, scope: !4770)
!4826 = !DILocation(line: 60, column: 45, scope: !4770)
!4827 = !DILocation(line: 70, column: 17, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4770, file: !4771, line: 70, column: 7)
!4829 = !DILocation(line: 58, column: 50, scope: !4770)
!4830 = !DILocation(line: 70, column: 33, scope: !4828)
!4831 = !DILocation(line: 70, column: 53, scope: !4828)
!4832 = !DILocation(line: 70, column: 59, scope: !4828)
!4833 = !DILocation(line: 70, column: 7, scope: !4770)
!4834 = !DILocation(line: 72, column: 11, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4828, file: !4771, line: 71, column: 5)
!4836 = !DILocation(line: 73, column: 9, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4835, file: !4771, line: 72, column: 11)
!4838 = !DILocation(line: 73, column: 15, scope: !4837)
!4839 = !DILocation(line: 0, scope: !4770)
!4840 = !DILocation(line: 78, column: 1, scope: !4770)
!4841 = distinct !DISubprogram(name: "hard_locale", scope: !4842, file: !4842, line: 38, type: !4843, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !4845)
!4842 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!59, !52}
!4845 = !{!4846, !4847, !4848}
!4846 = !DILocalVariable(name: "category", arg: 1, scope: !4841, file: !4842, line: 38, type: !52)
!4847 = !DILocalVariable(name: "hard", scope: !4841, file: !4842, line: 40, type: !59)
!4848 = !DILocalVariable(name: "p", scope: !4841, file: !4842, line: 41, type: !41)
!4849 = !DILocation(line: 38, column: 18, scope: !4841)
!4850 = !DILocation(line: 40, column: 8, scope: !4841)
!4851 = !DILocation(line: 41, column: 19, scope: !4841)
!4852 = !DILocation(line: 41, column: 15, scope: !4841)
!4853 = !DILocation(line: 43, column: 7, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4841, file: !4842, line: 43, column: 7)
!4855 = !DILocation(line: 43, column: 7, scope: !4841)
!4856 = !DILocation(line: 47, column: 15, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4858, file: !4842, line: 47, column: 15)
!4858 = distinct !DILexicalBlock(scope: !4859, file: !4842, line: 46, column: 9)
!4859 = distinct !DILexicalBlock(scope: !4860, file: !4842, line: 45, column: 11)
!4860 = distinct !DILexicalBlock(scope: !4854, file: !4842, line: 44, column: 5)
!4861 = !DILocation(line: 47, column: 31, scope: !4857)
!4862 = !DILocation(line: 47, column: 36, scope: !4857)
!4863 = !DILocation(line: 47, column: 39, scope: !4857)
!4864 = !DILocation(line: 47, column: 59, scope: !4857)
!4865 = !DILocation(line: 47, column: 15, scope: !4858)
!4866 = !DILocation(line: 48, column: 13, scope: !4857)
!4867 = !DILocation(line: 71, column: 3, scope: !4841)
!4868 = distinct !DISubprogram(name: "locale_charset", scope: !4869, file: !4869, line: 687, type: !4870, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !4872)
!4869 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!41}
!4872 = !{!4873}
!4873 = !DILocalVariable(name: "codeset", scope: !4868, file: !4869, line: 689, type: !41)
!4874 = !DILocation(line: 696, column: 13, scope: !4868)
!4875 = !DILocation(line: 689, column: 15, scope: !4868)
!4876 = !DILocation(line: 754, column: 15, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4868, file: !4869, line: 754, column: 7)
!4878 = !DILocation(line: 754, column: 7, scope: !4868)
!4879 = !DILocation(line: 907, column: 13, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4881, file: !4869, line: 907, column: 13)
!4881 = distinct !DILexicalBlock(scope: !4882, file: !4869, line: 897, column: 7)
!4882 = distinct !DILexicalBlock(scope: !4868, file: !4869, line: 856, column: 3)
!4883 = !DILocation(line: 907, column: 24, scope: !4880)
!4884 = !DILocation(line: 907, column: 13, scope: !4881)
!4885 = !DILocation(line: 995, column: 3, scope: !4868)
!4886 = distinct !DISubprogram(name: "rpl_fclose", scope: !4887, file: !4887, line: 58, type: !4888, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !677, retainedNodes: !4924)
!4887 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!52, !4890}
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3941, line: 7, baseType: !4892)
!4892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3943, line: 49, size: 1728, elements: !4893)
!4893 = !{!4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4892, file: !3943, line: 51, baseType: !52, size: 32)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4892, file: !3943, line: 54, baseType: !31, size: 64, offset: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4892, file: !3943, line: 55, baseType: !31, size: 64, offset: 128)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4892, file: !3943, line: 56, baseType: !31, size: 64, offset: 192)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4892, file: !3943, line: 57, baseType: !31, size: 64, offset: 256)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4892, file: !3943, line: 58, baseType: !31, size: 64, offset: 320)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4892, file: !3943, line: 59, baseType: !31, size: 64, offset: 384)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4892, file: !3943, line: 60, baseType: !31, size: 64, offset: 448)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4892, file: !3943, line: 61, baseType: !31, size: 64, offset: 512)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4892, file: !3943, line: 64, baseType: !31, size: 64, offset: 576)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4892, file: !3943, line: 65, baseType: !31, size: 64, offset: 640)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4892, file: !3943, line: 66, baseType: !31, size: 64, offset: 704)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4892, file: !3943, line: 68, baseType: !3958, size: 64, offset: 768)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4892, file: !3943, line: 70, baseType: !4908, size: 64, offset: 832)
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4892, file: !3943, line: 72, baseType: !52, size: 32, offset: 896)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4892, file: !3943, line: 73, baseType: !52, size: 32, offset: 928)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4892, file: !3943, line: 74, baseType: !36, size: 64, offset: 960)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4892, file: !3943, line: 77, baseType: !170, size: 16, offset: 1024)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4892, file: !3943, line: 78, baseType: !3967, size: 8, offset: 1040)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4892, file: !3943, line: 79, baseType: !3969, size: 8, offset: 1048)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4892, file: !3943, line: 81, baseType: !3973, size: 64, offset: 1088)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4892, file: !3943, line: 89, baseType: !3976, size: 64, offset: 1152)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4892, file: !3943, line: 91, baseType: !3978, size: 64, offset: 1216)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4892, file: !3943, line: 92, baseType: !3981, size: 64, offset: 1280)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4892, file: !3943, line: 93, baseType: !4908, size: 64, offset: 1344)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4892, file: !3943, line: 94, baseType: !33, size: 64, offset: 1408)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4892, file: !3943, line: 95, baseType: !43, size: 64, offset: 1472)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4892, file: !3943, line: 96, baseType: !52, size: 32, offset: 1536)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4892, file: !3943, line: 98, baseType: !3988, size: 160, offset: 1568)
!4924 = !{!4925, !4926, !4927, !4928}
!4925 = !DILocalVariable(name: "fp", arg: 1, scope: !4886, file: !4887, line: 58, type: !4890)
!4926 = !DILocalVariable(name: "saved_errno", scope: !4886, file: !4887, line: 60, type: !52)
!4927 = !DILocalVariable(name: "fd", scope: !4886, file: !4887, line: 61, type: !52)
!4928 = !DILocalVariable(name: "result", scope: !4886, file: !4887, line: 62, type: !52)
!4929 = !DILocation(line: 58, column: 19, scope: !4886)
!4930 = !DILocation(line: 60, column: 7, scope: !4886)
!4931 = !DILocation(line: 62, column: 7, scope: !4886)
!4932 = !DILocation(line: 65, column: 8, scope: !4886)
!4933 = !DILocation(line: 61, column: 7, scope: !4886)
!4934 = !DILocation(line: 66, column: 10, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4886, file: !4887, line: 66, column: 7)
!4936 = !DILocation(line: 66, column: 7, scope: !4886)
!4937 = !DILocation(line: 67, column: 12, scope: !4935)
!4938 = !DILocation(line: 67, column: 5, scope: !4935)
!4939 = !DILocation(line: 72, column: 9, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4886, file: !4887, line: 72, column: 7)
!4941 = !DILocation(line: 72, column: 23, scope: !4940)
!4942 = !DILocation(line: 72, column: 33, scope: !4940)
!4943 = !DILocation(line: 72, column: 26, scope: !4940)
!4944 = !DILocation(line: 72, column: 59, scope: !4940)
!4945 = !DILocation(line: 73, column: 7, scope: !4940)
!4946 = !DILocation(line: 73, column: 10, scope: !4940)
!4947 = !DILocation(line: 72, column: 7, scope: !4886)
!4948 = !DILocation(line: 100, column: 12, scope: !4886)
!4949 = !DILocation(line: 105, column: 7, scope: !4886)
!4950 = !DILocation(line: 74, column: 19, scope: !4940)
!4951 = !DILocation(line: 105, column: 19, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4886, file: !4887, line: 105, column: 7)
!4953 = !DILocation(line: 107, column: 13, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4952, file: !4887, line: 106, column: 5)
!4955 = !DILocation(line: 109, column: 5, scope: !4954)
!4956 = !DILocation(line: 0, scope: !4886)
!4957 = !DILocation(line: 112, column: 1, scope: !4886)
!4958 = distinct !DISubprogram(name: "rpl_fflush", scope: !4959, file: !4959, line: 129, type: !4960, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !679, retainedNodes: !4996)
!4959 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!52, !4962}
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3941, line: 7, baseType: !4964)
!4964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3943, line: 49, size: 1728, elements: !4965)
!4965 = !{!4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4964, file: !3943, line: 51, baseType: !52, size: 32)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4964, file: !3943, line: 54, baseType: !31, size: 64, offset: 64)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4964, file: !3943, line: 55, baseType: !31, size: 64, offset: 128)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4964, file: !3943, line: 56, baseType: !31, size: 64, offset: 192)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4964, file: !3943, line: 57, baseType: !31, size: 64, offset: 256)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4964, file: !3943, line: 58, baseType: !31, size: 64, offset: 320)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4964, file: !3943, line: 59, baseType: !31, size: 64, offset: 384)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4964, file: !3943, line: 60, baseType: !31, size: 64, offset: 448)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4964, file: !3943, line: 61, baseType: !31, size: 64, offset: 512)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4964, file: !3943, line: 64, baseType: !31, size: 64, offset: 576)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4964, file: !3943, line: 65, baseType: !31, size: 64, offset: 640)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4964, file: !3943, line: 66, baseType: !31, size: 64, offset: 704)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4964, file: !3943, line: 68, baseType: !3958, size: 64, offset: 768)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4964, file: !3943, line: 70, baseType: !4980, size: 64, offset: 832)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4964, file: !3943, line: 72, baseType: !52, size: 32, offset: 896)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4964, file: !3943, line: 73, baseType: !52, size: 32, offset: 928)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4964, file: !3943, line: 74, baseType: !36, size: 64, offset: 960)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4964, file: !3943, line: 77, baseType: !170, size: 16, offset: 1024)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4964, file: !3943, line: 78, baseType: !3967, size: 8, offset: 1040)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4964, file: !3943, line: 79, baseType: !3969, size: 8, offset: 1048)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4964, file: !3943, line: 81, baseType: !3973, size: 64, offset: 1088)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4964, file: !3943, line: 89, baseType: !3976, size: 64, offset: 1152)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4964, file: !3943, line: 91, baseType: !3978, size: 64, offset: 1216)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4964, file: !3943, line: 92, baseType: !3981, size: 64, offset: 1280)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4964, file: !3943, line: 93, baseType: !4980, size: 64, offset: 1344)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4964, file: !3943, line: 94, baseType: !33, size: 64, offset: 1408)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4964, file: !3943, line: 95, baseType: !43, size: 64, offset: 1472)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4964, file: !3943, line: 96, baseType: !52, size: 32, offset: 1536)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4964, file: !3943, line: 98, baseType: !3988, size: 160, offset: 1568)
!4996 = !{!4997}
!4997 = !DILocalVariable(name: "stream", arg: 1, scope: !4958, file: !4959, line: 129, type: !4962)
!4998 = !DILocation(line: 129, column: 19, scope: !4958)
!4999 = !DILocation(line: 150, column: 14, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4958, file: !4959, line: 150, column: 7)
!5001 = !DILocation(line: 150, column: 22, scope: !5000)
!5002 = !DILocation(line: 150, column: 27, scope: !5000)
!5003 = !DILocation(line: 150, column: 7, scope: !4958)
!5004 = !DILocation(line: 151, column: 12, scope: !5000)
!5005 = !DILocation(line: 151, column: 5, scope: !5000)
!5006 = !DILocalVariable(name: "fp", arg: 1, scope: !5007, file: !4959, line: 41, type: !4962)
!5007 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4959, file: !4959, line: 41, type: !5008, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !679, retainedNodes: !5010)
!5008 = !DISubroutineType(types: !5009)
!5009 = !{null, !4962}
!5010 = !{!5006}
!5011 = !DILocation(line: 41, column: 48, scope: !5007, inlinedAt: !5012)
!5012 = distinct !DILocation(line: 156, column: 3, scope: !4958)
!5013 = !DILocation(line: 43, column: 11, scope: !5014, inlinedAt: !5012)
!5014 = distinct !DILexicalBlock(scope: !5007, file: !4959, line: 43, column: 7)
!5015 = !DILocation(line: 43, column: 18, scope: !5014, inlinedAt: !5012)
!5016 = !DILocation(line: 43, column: 7, scope: !5007, inlinedAt: !5012)
!5017 = !DILocation(line: 45, column: 5, scope: !5014, inlinedAt: !5012)
!5018 = !DILocation(line: 158, column: 10, scope: !4958)
!5019 = !DILocation(line: 158, column: 3, scope: !4958)
!5020 = !DILocation(line: 0, scope: !4958)
!5021 = !DILocation(line: 232, column: 1, scope: !4958)
!5022 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5023, file: !5023, line: 28, type: !5024, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !681, retainedNodes: !5060)
!5023 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!52, !5026, !34, !52}
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3941, line: 7, baseType: !5028)
!5028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3943, line: 49, size: 1728, elements: !5029)
!5029 = !{!5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5028, file: !3943, line: 51, baseType: !52, size: 32)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5028, file: !3943, line: 54, baseType: !31, size: 64, offset: 64)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5028, file: !3943, line: 55, baseType: !31, size: 64, offset: 128)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5028, file: !3943, line: 56, baseType: !31, size: 64, offset: 192)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5028, file: !3943, line: 57, baseType: !31, size: 64, offset: 256)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5028, file: !3943, line: 58, baseType: !31, size: 64, offset: 320)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5028, file: !3943, line: 59, baseType: !31, size: 64, offset: 384)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5028, file: !3943, line: 60, baseType: !31, size: 64, offset: 448)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5028, file: !3943, line: 61, baseType: !31, size: 64, offset: 512)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5028, file: !3943, line: 64, baseType: !31, size: 64, offset: 576)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5028, file: !3943, line: 65, baseType: !31, size: 64, offset: 640)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5028, file: !3943, line: 66, baseType: !31, size: 64, offset: 704)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5028, file: !3943, line: 68, baseType: !3958, size: 64, offset: 768)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5028, file: !3943, line: 70, baseType: !5044, size: 64, offset: 832)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5028, file: !3943, line: 72, baseType: !52, size: 32, offset: 896)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5028, file: !3943, line: 73, baseType: !52, size: 32, offset: 928)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5028, file: !3943, line: 74, baseType: !36, size: 64, offset: 960)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5028, file: !3943, line: 77, baseType: !170, size: 16, offset: 1024)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5028, file: !3943, line: 78, baseType: !3967, size: 8, offset: 1040)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5028, file: !3943, line: 79, baseType: !3969, size: 8, offset: 1048)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5028, file: !3943, line: 81, baseType: !3973, size: 64, offset: 1088)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5028, file: !3943, line: 89, baseType: !3976, size: 64, offset: 1152)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5028, file: !3943, line: 91, baseType: !3978, size: 64, offset: 1216)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5028, file: !3943, line: 92, baseType: !3981, size: 64, offset: 1280)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5028, file: !3943, line: 93, baseType: !5044, size: 64, offset: 1344)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5028, file: !3943, line: 94, baseType: !33, size: 64, offset: 1408)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5028, file: !3943, line: 95, baseType: !43, size: 64, offset: 1472)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5028, file: !3943, line: 96, baseType: !52, size: 32, offset: 1536)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5028, file: !3943, line: 98, baseType: !3988, size: 160, offset: 1568)
!5060 = !{!5061, !5062, !5063, !5064}
!5061 = !DILocalVariable(name: "fp", arg: 1, scope: !5022, file: !5023, line: 28, type: !5026)
!5062 = !DILocalVariable(name: "offset", arg: 2, scope: !5022, file: !5023, line: 28, type: !34)
!5063 = !DILocalVariable(name: "whence", arg: 3, scope: !5022, file: !5023, line: 28, type: !52)
!5064 = !DILocalVariable(name: "pos", scope: !5065, file: !5023, line: 117, type: !34)
!5065 = distinct !DILexicalBlock(scope: !5066, file: !5023, line: 113, column: 5)
!5066 = distinct !DILexicalBlock(scope: !5022, file: !5023, line: 52, column: 7)
!5067 = !DILocation(line: 28, column: 15, scope: !5022)
!5068 = !DILocation(line: 28, column: 25, scope: !5022)
!5069 = !DILocation(line: 28, column: 37, scope: !5022)
!5070 = !DILocation(line: 52, column: 11, scope: !5066)
!5071 = !{!4823, !721, i64 16}
!5072 = !DILocation(line: 52, column: 31, scope: !5066)
!5073 = !{!4823, !721, i64 8}
!5074 = !DILocation(line: 52, column: 24, scope: !5066)
!5075 = !DILocation(line: 53, column: 7, scope: !5066)
!5076 = !DILocation(line: 53, column: 14, scope: !5066)
!5077 = !{!4823, !721, i64 40}
!5078 = !DILocation(line: 53, column: 35, scope: !5066)
!5079 = !{!4823, !721, i64 32}
!5080 = !DILocation(line: 53, column: 28, scope: !5066)
!5081 = !DILocation(line: 54, column: 7, scope: !5066)
!5082 = !DILocation(line: 54, column: 14, scope: !5066)
!5083 = !{!4823, !721, i64 72}
!5084 = !DILocation(line: 54, column: 28, scope: !5066)
!5085 = !DILocation(line: 52, column: 7, scope: !5022)
!5086 = !DILocation(line: 117, column: 26, scope: !5065)
!5087 = !DILocation(line: 117, column: 19, scope: !5065)
!5088 = !DILocation(line: 117, column: 13, scope: !5065)
!5089 = !DILocation(line: 118, column: 15, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5065, file: !5023, line: 118, column: 11)
!5091 = !DILocation(line: 118, column: 11, scope: !5065)
!5092 = !DILocation(line: 129, column: 11, scope: !5065)
!5093 = !DILocation(line: 129, column: 18, scope: !5065)
!5094 = !DILocation(line: 130, column: 11, scope: !5065)
!5095 = !DILocation(line: 130, column: 19, scope: !5065)
!5096 = !{!4823, !1210, i64 144}
!5097 = !DILocation(line: 161, column: 7, scope: !5065)
!5098 = !DILocation(line: 163, column: 10, scope: !5022)
!5099 = !DILocation(line: 163, column: 3, scope: !5022)
!5100 = !DILocation(line: 0, scope: !5022)
!5101 = !DILocation(line: 164, column: 1, scope: !5022)
