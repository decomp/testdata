; ModuleID = 'coreutils-8.27/src/wc.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.Tokens = type { i64, i8**, i64*, %struct.obstack, %struct.obstack, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, %union.anon, i64, %union.anon.0, %union.anon.1, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [0 x i8] }
%union.anon = type { i64 }
%union.anon.0 = type { i8* (i64)* }
%union.anon.1 = type { void (i8*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.argv_iterator = type { %struct._IO_FILE*, i64, i8*, i64, i8**, i8** }
%struct.fstatus = type { i32, %struct.stat }
%struct.__mbstate_t = type { i32, %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.mbchar = type { i8*, i64, i8, i32, [24 x i8] }
%struct.sysinfo = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, i64, i64, i32, [0 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0A  or:  %s [OPTION]... --files0-from=F\0A\00", align 1
@.str.2 = private unnamed_addr constant [184 x i8] c"Print newline, word, and byte counts for each FILE, and a total line if\0Amore than one FILE is specified.  A word is a non-zero-length sequence of\0Acharacters delimited by white space.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.30 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.3 = private unnamed_addr constant [301 x i8] c"\0AThe options below may be used to select which counts are printed, always in\0Athe following order: newline, word, character, byte, maximum line length.\0A  -c, --bytes            print the byte counts\0A  -m, --chars            print the character counts\0A  -l, --lines            print the newline counts\0A\00", align 1
@.str.4 = private unnamed_addr constant [301 x i8] c"      --files0-from=F    read input from the files specified by\0A                           NUL-terminated names in file F;\0A                           If F is - then read names from standard input\0A  -L, --max-line-length  print the maximum display width\0A  -w, --words            print the word counts\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"wc\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.42 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@page_size = internal unnamed_addr global i64 0, align 8, !dbg !0
@print_bytes = internal unnamed_addr global i1 false, align 1
@print_chars = internal unnamed_addr global i1 false, align 1
@print_words = internal unnamed_addr global i1 false, align 1
@print_lines = internal unnamed_addr global i1 false, align 1
@print_linelength = internal unnamed_addr global i1 false, align 1
@max_line_length = internal unnamed_addr global i64 0, align 8, !dbg !266
@total_bytes = internal unnamed_addr global i64 0, align 8, !dbg !264
@total_chars = internal unnamed_addr global i64 0, align 8, !dbg !262
@total_words = internal unnamed_addr global i64 0, align 8, !dbg !260
@total_lines = internal unnamed_addr global i64 0, align 8, !dbg !255
@.str.11 = private unnamed_addr constant [6 x i8] c"clLmw\00", align 1
@longopts = internal constant [9 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !304
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"Paul Rubin\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"file operands cannot be combined with --files0-from\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"cannot read file names from %s\00", align 1
@main.stdin_only = internal global [1 x i8*] zeroinitializer, align 8, !dbg !61
@number_width = internal unnamed_addr global i32 0, align 4, !dbg !278
@.str.22 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"!\22unexpected error code from argv_iter\22\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"src/wc.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.25 = private unnamed_addr constant [63 x i8] c"when reading file names from stdin, no file name of %s allowed\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"invalid zero-length file name\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"%s:%lu: %s\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@write_counts.format_sp_int = internal constant [5 x i8] c" %*s\00", align 1, !dbg !318
@.str.55 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"chars\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"files0-from\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"max-line-length\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), align 8, !dbg !338
@.str.31 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !344
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !349
@.str.56 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.57 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !352
@is_basic_table = local_unnamed_addr constant [8 x i32] [i32 6656, i32 -17, i32 -2, i32 2147483646, i32 0, i32 0, i32 0, i32 0], align 16, !dbg !359
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !370
@.str.73 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.78, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.79, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.80, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.85, i32 0, i32 0), i8* null], align 16, !dbg !377
@.str.76 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.77 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.78 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.79 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.80 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.81 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.82 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.83 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.84 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.85 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !389
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !396
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !406
@.str.11.86 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.87 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.88 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.89 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.90 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.91 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.92 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !413
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !420
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !408
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !422
@.str.107 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.108 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.109 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.110 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.111 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.112 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.113 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.114 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.115 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.116 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.117 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.118 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.119 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.120 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.123 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.124 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.125 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.126 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.127 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.128 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !428
@.str.1.139 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@obstack_alloc_failed_handler = local_unnamed_addr global void ()* @print_and_abort, align 8, !dbg !437
@.str.1.151 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.163 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.164 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.167 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !447
@.str.3.168 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.169 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.170 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.171 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.172 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.173 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !1101 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1105, metadata !1106), !dbg !1107
  %2 = icmp eq i32 %0, 0, !dbg !1108
  br i1 %2, label %8, label %3, !dbg !1110

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1111, !tbaa !1113
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #13, !dbg !1111
  %6 = load i8*, i8** @program_name, align 8, !dbg !1111, !tbaa !1113
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #13, !dbg !1111
  br label %45, !dbg !1111

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #13, !dbg !1117
  %10 = load i8*, i8** @program_name, align 8, !dbg !1117, !tbaa !1113
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #13, !dbg !1117
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.2, i64 0, i64 0), i32 5) #13, !dbg !1119
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1119, !tbaa !1113
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #13, !dbg !1119
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0), i32 5) #13, !dbg !1120
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1120, !tbaa !1113
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #13, !dbg !1120
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([301 x i8], [301 x i8]* @.str.3, i64 0, i64 0), i32 5) #13, !dbg !1123
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1123, !tbaa !1113
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #13, !dbg !1123
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([301 x i8], [301 x i8]* @.str.4, i64 0, i64 0), i32 5) #13, !dbg !1124
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1124, !tbaa !1113
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #13, !dbg !1124
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #13, !dbg !1125
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1125, !tbaa !1113
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #13, !dbg !1125
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #13, !dbg !1126
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1126, !tbaa !1113
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #13, !dbg !1126
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !292, metadata !1106) #13, !dbg !1127
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !292, metadata !1106) #13, !dbg !1127
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 5) #13, !dbg !1129
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0)) #13, !dbg !1129
  %32 = tail call i8* @setlocale(i32 5, i8* null) #13, !dbg !1130
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !300, metadata !1106) #13, !dbg !1131
  %33 = icmp eq i8* %32, null, !dbg !1132
  br i1 %33, label %40, label %34, !dbg !1134

; <label>:34:                                     ; preds = %8
  %35 = tail call i32 @strncmp(i8* nonnull %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 3) #15, !dbg !1135
  %36 = icmp eq i32 %35, 0, !dbg !1135
  br i1 %36, label %40, label %37, !dbg !1136

; <label>:37:                                     ; preds = %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.42, i64 0, i64 0), i32 5) #13, !dbg !1137
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #13, !dbg !1137
  br label %40, !dbg !1139

; <label>:40:                                     ; preds = %8, %34, %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0), i32 5) #13, !dbg !1140
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #13, !dbg !1140
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0), i32 5) #13, !dbg !1141
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0)) #13, !dbg !1141
  br label %45

; <label>:45:                                     ; preds = %40, %3
  tail call void @exit(i32 %0) #16, !dbg !1142
  unreachable, !dbg !1142
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !63 {
  %3 = alloca %struct.Tokens, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !68, metadata !1106), !dbg !1143
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !69, metadata !1106), !dbg !1144
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !75, metadata !1106), !dbg !1145
  %6 = bitcast %struct.Tokens* %3 to i8*, !dbg !1146
  call void @llvm.lifetime.start.p0i8(i64 288, i8* nonnull %6) #13, !dbg !1146
  %7 = load i8*, i8** %1, align 8, !dbg !1147, !tbaa !1113
  tail call void @set_program_name(i8* %7) #13, !dbg !1148
  %8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #13, !dbg !1149
  %9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #13, !dbg !1150
  %10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #13, !dbg !1151
  %11 = tail call i32 @atexit(void ()* nonnull @close_stdout) #13, !dbg !1152
  %12 = tail call i32 @getpagesize() #17, !dbg !1153
  %13 = sext i32 %12 to i64, !dbg !1153
  store i64 %13, i64* @page_size, align 8, !dbg !1154, !tbaa !1155
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1157, !tbaa !1113
  %15 = tail call i32 @setvbuf(%struct._IO_FILE* %14, i8* null, i32 1, i64 0) #13, !dbg !1158
  store i1 false, i1* @print_bytes, align 1
  store i1 false, i1* @print_chars, align 1
  store i1 false, i1* @print_words, align 1
  store i1 false, i1* @print_lines, align 1
  store i1 false, i1* @print_linelength, align 1
  store i64 0, i64* @max_line_length, align 8, !dbg !1159, !tbaa !1155
  store i64 0, i64* @total_bytes, align 8, !dbg !1160, !tbaa !1155
  store i64 0, i64* @total_chars, align 8, !dbg !1161, !tbaa !1155
  store i64 0, i64* @total_words, align 8, !dbg !1162, !tbaa !1155
  store i64 0, i64* @total_lines, align 8, !dbg !1163, !tbaa !1155
  br label %16, !dbg !1164

; <label>:16:                                     ; preds = %26, %2
  %17 = phi i8* [ %27, %26 ], [ null, %2 ]
  br label %18, !dbg !1165

; <label>:18:                                     ; preds = %24, %16
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !75, metadata !1106), !dbg !1145
  %19 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([9 x %struct.option], [9 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #13, !dbg !1165
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !72, metadata !1106), !dbg !1166
  switch i32 %19, label %32 [
    i32 -1, label %33
    i32 99, label %20
    i32 109, label %24
    i32 108, label %21
    i32 119, label %22
    i32 76, label %23
    i32 128, label %26
    i32 -130, label %28
    i32 -131, label %29
  ], !dbg !1164

; <label>:20:                                     ; preds = %18
  br label %24, !dbg !1167

; <label>:21:                                     ; preds = %18
  br label %24, !dbg !1169

; <label>:22:                                     ; preds = %18
  br label %24, !dbg !1170

; <label>:23:                                     ; preds = %18
  br label %24, !dbg !1171

; <label>:24:                                     ; preds = %18, %23, %22, %21, %20
  %25 = phi i1* [ @print_linelength, %23 ], [ @print_words, %22 ], [ @print_lines, %21 ], [ @print_bytes, %20 ], [ @print_chars, %18 ]
  store i1 true, i1* %25, align 1
  br label %18, !dbg !1145, !llvm.loop !1172

; <label>:26:                                     ; preds = %18
  %27 = load i8*, i8** @optarg, align 8, !dbg !1174, !tbaa !1113
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !75, metadata !1106), !dbg !1145
  br label %16, !dbg !1175, !llvm.loop !1172

; <label>:28:                                     ; preds = %18
  tail call void @usage(i32 0) #18, !dbg !1176
  unreachable, !dbg !1176

; <label>:29:                                     ; preds = %18
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1177, !tbaa !1113
  %31 = load i8*, i8** @Version, align 8, !dbg !1177, !tbaa !1113
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* null) #13, !dbg !1177
  tail call void @exit(i32 0) #16, !dbg !1177
  unreachable, !dbg !1177

; <label>:32:                                     ; preds = %18
  tail call void @usage(i32 1) #18, !dbg !1178
  unreachable, !dbg !1178

; <label>:33:                                     ; preds = %18
  %34 = load i1, i1* @print_lines, align 1
  br i1 %34, label %44, label %35, !dbg !1179

; <label>:35:                                     ; preds = %33
  %36 = load i1, i1* @print_words, align 1
  br i1 %36, label %44, label %37, !dbg !1181

; <label>:37:                                     ; preds = %35
  %38 = load i1, i1* @print_chars, align 1
  br i1 %38, label %44, label %39, !dbg !1182

; <label>:39:                                     ; preds = %37
  %40 = load i1, i1* @print_bytes, align 1
  br i1 %40, label %44, label %41, !dbg !1183

; <label>:41:                                     ; preds = %39
  %42 = load i1, i1* @print_linelength, align 1
  br i1 %42, label %44, label %43, !dbg !1184

; <label>:43:                                     ; preds = %41
  store i1 true, i1* @print_bytes, align 1
  store i1 true, i1* @print_words, align 1
  store i1 true, i1* @print_lines, align 1
  br label %44, !dbg !1185

; <label>:44:                                     ; preds = %43, %41, %39, %37, %35, %33
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !182, metadata !1106), !dbg !1186
  %45 = icmp ne i8* %17, null, !dbg !1187
  %46 = load i32, i32* @optind, align 4, !tbaa !1188
  %47 = icmp slt i32 %46, %0
  br i1 %45, label %48, label %117, !dbg !1190

; <label>:48:                                     ; preds = %44
  br i1 %47, label %49, label %59, !dbg !1191

; <label>:49:                                     ; preds = %48
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 5) #13, !dbg !1192
  %51 = load i32, i32* @optind, align 4, !dbg !1195, !tbaa !1188
  %52 = sext i32 %51 to i64, !dbg !1195
  %53 = getelementptr inbounds i8*, i8** %1, i64 %52, !dbg !1195
  %54 = load i8*, i8** %53, align 8, !dbg !1195, !tbaa !1113
  %55 = tail call i8* @quotearg_style(i32 4, i8* %54) #13, !dbg !1195
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %50, i8* %55) #13, !dbg !1196
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1197, !tbaa !1113
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0), i32 5) #13, !dbg !1197
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %56, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* %57) #13, !dbg !1197
  tail call void @usage(i32 1) #18, !dbg !1198
  unreachable, !dbg !1198

; <label>:59:                                     ; preds = %48
  %60 = tail call i32 @strcmp(i8* nonnull %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #15, !dbg !1199
  %61 = icmp eq i32 %60, 0, !dbg !1199
  br i1 %61, label %62, label %64, !dbg !1201

; <label>:62:                                     ; preds = %59
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1202, !tbaa !1113
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, i64 0, metadata !186, metadata !1106), !dbg !1203
  br label %72, !dbg !1204

; <label>:64:                                     ; preds = %59
  %65 = tail call %struct._IO_FILE* @fopen(i8* nonnull %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)), !dbg !1205
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %65, i64 0, metadata !186, metadata !1106), !dbg !1203
  %66 = icmp eq %struct._IO_FILE* %65, null, !dbg !1207
  br i1 %66, label %67, label %72, !dbg !1209

; <label>:67:                                     ; preds = %64
  %68 = tail call i32* @__errno_location() #17, !dbg !1210
  %69 = load i32, i32* %68, align 4, !dbg !1210, !tbaa !1188
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i32 5) #13, !dbg !1210
  %71 = tail call i8* @quotearg_style(i32 4, i8* nonnull %17) #13, !dbg !1210
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %69, i8* %70, i8* %71) #13, !dbg !1210
  unreachable, !dbg !1210

; <label>:72:                                     ; preds = %64, %62
  %73 = phi %struct._IO_FILE* [ %63, %62 ], [ %65, %64 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %73, i64 0, metadata !186, metadata !1106), !dbg !1203
  %74 = bitcast %struct.stat* %4 to i8*, !dbg !1211
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %74) #13, !dbg !1211
  %75 = tail call i32 @fileno(%struct._IO_FILE* %73) #13, !dbg !1212
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !241, metadata !1106), !dbg !1214
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !1215, metadata !1106) #13, !dbg !1223
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !1222, metadata !1106) #13, !dbg !1223
  %76 = call i32 @__fxstat(i32 1, i32 %75, %struct.stat* nonnull %4) #13, !dbg !1225
  %77 = icmp eq i32 %76, 0, !dbg !1226
  br i1 %77, label %78, label %110, !dbg !1227

; <label>:78:                                     ; preds = %72
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 3, !dbg !1228
  %80 = load i32, i32* %79, align 8, !dbg !1228, !tbaa !1229
  %81 = and i32 %80, 61440, !dbg !1228
  %82 = icmp eq i32 %81, 32768, !dbg !1228
  br i1 %82, label %83, label %110, !dbg !1232

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 8, !dbg !1233
  %85 = load i64, i64* %84, align 8, !dbg !1233, !tbaa !1234
  %86 = sitofp i64 %85 to double, !dbg !1235
  %87 = call double @physmem_available() #13, !dbg !1236
  %88 = fmul double %87, 5.000000e-01, !dbg !1236
  %89 = fcmp ogt double %88, 0x4164000000000000, !dbg !1236
  br i1 %89, label %93, label %90, !dbg !1236

; <label>:90:                                     ; preds = %83
  %91 = call double @physmem_available() #13, !dbg !1236
  %92 = fmul double %91, 5.000000e-01, !dbg !1236
  br label %93, !dbg !1236

; <label>:93:                                     ; preds = %83, %90
  %94 = phi double [ %92, %90 ], [ 0x4164000000000000, %83 ], !dbg !1236
  %95 = fcmp ult double %94, %86, !dbg !1237
  br i1 %95, label %110, label %96, !dbg !1238

; <label>:96:                                     ; preds = %93
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !182, metadata !1106), !dbg !1186
  call void @llvm.dbg.value(metadata %struct.Tokens* %3, i64 0, metadata !122, metadata !1106), !dbg !1239
  call void @readtokens0_init(%struct.Tokens* nonnull %3) #13, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.Tokens* %3, i64 0, metadata !122, metadata !1106), !dbg !1239
  %97 = call zeroext i1 @readtokens0(%struct._IO_FILE* %73, %struct.Tokens* nonnull %3) #13, !dbg !1242
  br i1 %97, label %98, label %101, !dbg !1244

; <label>:98:                                     ; preds = %96
  %99 = call i32 @rpl_fclose(%struct._IO_FILE* %73) #13, !dbg !1245
  %100 = icmp eq i32 %99, 0, !dbg !1246
  br i1 %100, label %104, label %101, !dbg !1247

; <label>:101:                                    ; preds = %98, %96
  %102 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i32 5) #13, !dbg !1248
  %103 = call i8* @quotearg_style(i32 4, i8* nonnull %17) #13, !dbg !1248
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %102, i8* %103) #13, !dbg !1248
  unreachable, !dbg !1248

; <label>:104:                                    ; preds = %98
  %105 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %3, i64 0, i32 1, !dbg !1249
  %106 = load i8**, i8*** %105, align 8, !dbg !1249, !tbaa !1250
  call void @llvm.dbg.value(metadata i8** %106, i64 0, metadata !74, metadata !1106), !dbg !1253
  %107 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %3, i64 0, i32 0, !dbg !1254
  %108 = load i64, i64* %107, align 8, !dbg !1254, !tbaa !1255
  call void @llvm.dbg.value(metadata i64 %108, i64 0, metadata !73, metadata !1106), !dbg !1256
  %109 = call %struct.argv_iterator* @argv_iter_init_argv(i8** %106) #13, !dbg !1257
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %109, i64 0, metadata !183, metadata !1106), !dbg !1258
  br label %112, !dbg !1259

; <label>:110:                                    ; preds = %93, %78, %72
  call void @llvm.dbg.value(metadata i8** null, i64 0, metadata !74, metadata !1106), !dbg !1253
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !73, metadata !1106), !dbg !1256
  %111 = call %struct.argv_iterator* @argv_iter_init_stream(%struct._IO_FILE* %73) #13, !dbg !1260
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %111, i64 0, metadata !183, metadata !1106), !dbg !1258
  br label %112

; <label>:112:                                    ; preds = %110, %104
  %113 = phi i8** [ %106, %104 ], [ null, %110 ]
  %114 = phi i64 [ %108, %104 ], [ 0, %110 ]
  %115 = phi i1 [ true, %104 ], [ false, %110 ]
  %116 = phi %struct.argv_iterator* [ %109, %104 ], [ %111, %110 ]
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %116, i64 0, metadata !183, metadata !1106), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %114, i64 0, metadata !73, metadata !1106), !dbg !1256
  call void @llvm.dbg.value(metadata i8** %113, i64 0, metadata !74, metadata !1106), !dbg !1253
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %74) #13, !dbg !1262
  br label %125, !dbg !1263

; <label>:117:                                    ; preds = %44
  %118 = sext i32 %46 to i64, !dbg !1264
  %119 = getelementptr inbounds i8*, i8** %1, i64 %118, !dbg !1264
  %120 = select i1 %47, i8** %119, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @main.stdin_only, i64 0, i64 0), !dbg !1266
  tail call void @llvm.dbg.value(metadata i8** %120, i64 0, metadata !74, metadata !1106), !dbg !1253
  %121 = sub nsw i32 %0, %46, !dbg !1267
  %122 = sext i32 %121 to i64, !dbg !1268
  %123 = select i1 %47, i64 %122, i64 1, !dbg !1268
  tail call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !73, metadata !1106), !dbg !1256
  %124 = tail call %struct.argv_iterator* @argv_iter_init_argv(i8** %120) #13, !dbg !1269
  tail call void @llvm.dbg.value(metadata %struct.argv_iterator* %124, i64 0, metadata !183, metadata !1106), !dbg !1258
  br label %125

; <label>:125:                                    ; preds = %117, %112
  %126 = phi i8** [ %113, %112 ], [ %120, %117 ]
  %127 = phi i64 [ %114, %112 ], [ %123, %117 ]
  %128 = phi i1 [ %115, %112 ], [ false, %117 ]
  %129 = phi %struct.argv_iterator* [ %116, %112 ], [ %124, %117 ]
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %129, i64 0, metadata !183, metadata !1106), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !73, metadata !1106), !dbg !1256
  call void @llvm.dbg.value(metadata i8** %126, i64 0, metadata !74, metadata !1106), !dbg !1253
  %130 = icmp eq %struct.argv_iterator* %129, null, !dbg !1270
  br i1 %130, label %131, label %132, !dbg !1272

; <label>:131:                                    ; preds = %125
  call void @xalloc_die() #16, !dbg !1273
  unreachable, !dbg !1273

; <label>:132:                                    ; preds = %125
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1274, metadata !1106) #13, !dbg !1286
  call void @llvm.dbg.value(metadata i8** %126, i64 0, metadata !1281, metadata !1106) #13, !dbg !1288
  %133 = icmp eq i64 %127, 0, !dbg !1289
  %134 = select i1 %133, i64 1, i64 %127, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !1290, metadata !1106) #13, !dbg !1296
  call void @llvm.dbg.value(metadata i64 152, i64 0, metadata !1295, metadata !1106) #13, !dbg !1298
  %135 = icmp ugt i64 %134, 60680079189834051, !dbg !1299
  br i1 %135, label %136, label %137, !dbg !1301

; <label>:136:                                    ; preds = %132
  call void @xalloc_die() #16, !dbg !1302
  unreachable, !dbg !1302

; <label>:137:                                    ; preds = %132
  %138 = mul i64 %134, 152, !dbg !1303
  %139 = call noalias i8* @xmalloc(i64 %138) #13, !dbg !1304
  %140 = bitcast i8* %139 to %struct.fstatus*, !dbg !1305
  call void @llvm.dbg.value(metadata %struct.fstatus* %140, i64 0, metadata !1282, metadata !1106) #13, !dbg !1306
  switch i64 %127, label %141 [
    i64 0, label %158
    i64 1, label %142
  ], !dbg !1307

; <label>:141:                                    ; preds = %142, %137
  br label %160, !dbg !1308

; <label>:142:                                    ; preds = %137
  %143 = load i1, i1* @print_lines, align 1
  %144 = zext i1 %143 to i32, !dbg !1311
  %145 = load i1, i1* @print_words, align 1
  %146 = zext i1 %145 to i32, !dbg !1312
  %147 = add nuw nsw i32 %146, %144, !dbg !1313
  %148 = load i1, i1* @print_chars, align 1
  %149 = zext i1 %148 to i32, !dbg !1314
  %150 = add nuw nsw i32 %147, %149, !dbg !1315
  %151 = load i1, i1* @print_bytes, align 1
  %152 = zext i1 %151 to i32, !dbg !1316
  %153 = add nuw nsw i32 %150, %152, !dbg !1317
  %154 = load i1, i1* @print_linelength, align 1
  %155 = zext i1 %154 to i32, !dbg !1318
  %156 = add nuw nsw i32 %153, %155, !dbg !1319
  %157 = icmp eq i32 %156, 1, !dbg !1320
  br i1 %157, label %158, label %141, !dbg !1321

; <label>:158:                                    ; preds = %142, %137
  %159 = bitcast i8* %139 to i32*, !dbg !1322
  store i32 1, i32* %159, align 8, !dbg !1323, !tbaa !1324
  br label %179, !dbg !1326

; <label>:160:                                    ; preds = %141, %174
  %161 = phi i64 [ %177, %174 ], [ 0, %141 ]
  call void @llvm.dbg.value(metadata i64 %161, i64 0, metadata !1283, metadata !1106) #13, !dbg !1327
  %162 = getelementptr inbounds i8*, i8** %126, i64 %161, !dbg !1308
  %163 = load i8*, i8** %162, align 8, !dbg !1308, !tbaa !1113
  %164 = icmp eq i8* %163, null, !dbg !1308
  br i1 %164, label %168, label %165, !dbg !1328

; <label>:165:                                    ; preds = %160
  %166 = call i32 @strcmp(i8* nonnull %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #15, !dbg !1329
  %167 = icmp eq i32 %166, 0, !dbg !1329
  br i1 %167, label %168, label %171, !dbg !1330

; <label>:168:                                    ; preds = %165, %160
  %169 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %140, i64 %161, i32 1, !dbg !1331
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1215, metadata !1106) #13, !dbg !1332
  call void @llvm.dbg.value(metadata %struct.stat* %169, i64 0, metadata !1222, metadata !1106) #13, !dbg !1332
  %170 = call i32 @__fxstat(i32 1, i32 0, %struct.stat* nonnull %169) #13, !dbg !1334
  br label %174, !dbg !1330

; <label>:171:                                    ; preds = %165
  %172 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %140, i64 %161, i32 1, !dbg !1335
  call void @llvm.dbg.value(metadata i8* %163, i64 0, metadata !1336, metadata !1106) #13, !dbg !1342
  call void @llvm.dbg.value(metadata %struct.stat* %172, i64 0, metadata !1341, metadata !1106) #13, !dbg !1342
  %173 = call i32 @__xstat(i32 1, i8* nonnull %163, %struct.stat* nonnull %172) #13, !dbg !1344
  br label %174, !dbg !1330

; <label>:174:                                    ; preds = %171, %168
  %175 = phi i32 [ %170, %168 ], [ %173, %171 ], !dbg !1330
  %176 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %140, i64 %161, i32 0, !dbg !1345
  store i32 %175, i32* %176, align 8, !dbg !1346, !tbaa !1324
  %177 = add nuw i64 %161, 1, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %177, i64 0, metadata !1283, metadata !1106) #13, !dbg !1327
  call void @llvm.dbg.value(metadata i64 %177, i64 0, metadata !1283, metadata !1106) #13, !dbg !1327
  %178 = icmp eq i64 %177, %127, !dbg !1348
  br i1 %178, label %179, label %160, !dbg !1349, !llvm.loop !1350

; <label>:179:                                    ; preds = %174, %158
  call void @llvm.dbg.value(metadata %struct.fstatus* %140, i64 0, metadata !76, metadata !1106), !dbg !1353
  tail call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1354, metadata !1106), !dbg !1368
  tail call void @llvm.dbg.value(metadata %struct.fstatus* %140, i64 0, metadata !1361, metadata !1106), !dbg !1370
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1362, metadata !1106), !dbg !1371
  br i1 %133, label %221, label %180, !dbg !1372

; <label>:180:                                    ; preds = %179
  %181 = bitcast i8* %139 to i32*, !dbg !1373
  %182 = load i32, i32* %181, align 8, !dbg !1373, !tbaa !1324
  %183 = icmp slt i32 %182, 1, !dbg !1374
  br i1 %183, label %184, label %221, !dbg !1375

; <label>:184:                                    ; preds = %180
  br label %185, !dbg !1376

; <label>:185:                                    ; preds = %184, %205
  %186 = phi i32 [ %207, %205 ], [ %182, %184 ], !dbg !1380
  %187 = phi i64 [ %203, %205 ], [ 0, %184 ]
  %188 = phi i64 [ %202, %205 ], [ 0, %184 ]
  %189 = phi i32 [ %201, %205 ], [ 1, %184 ]
  tail call void @llvm.dbg.value(metadata i32 %189, i64 0, metadata !1363, metadata !1106), !dbg !1381
  tail call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1366, metadata !1106), !dbg !1382
  tail call void @llvm.dbg.value(metadata i64 %187, i64 0, metadata !1367, metadata !1106), !dbg !1383
  %190 = icmp eq i32 %186, 0, !dbg !1376
  br i1 %190, label %191, label %200, !dbg !1384

; <label>:191:                                    ; preds = %185
  %192 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %140, i64 %187, i32 1, i32 3, !dbg !1385
  %193 = load i32, i32* %192, align 8, !dbg !1385, !tbaa !1388
  %194 = and i32 %193, 61440, !dbg !1385
  %195 = icmp eq i32 %194, 32768, !dbg !1385
  br i1 %195, label %196, label %200, !dbg !1389

; <label>:196:                                    ; preds = %191
  %197 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %140, i64 %187, i32 1, i32 8, !dbg !1390
  %198 = load i64, i64* %197, align 8, !dbg !1390, !tbaa !1391
  %199 = add i64 %198, %188, !dbg !1392
  tail call void @llvm.dbg.value(metadata i64 %199, i64 0, metadata !1366, metadata !1106), !dbg !1382
  br label %200, !dbg !1393

; <label>:200:                                    ; preds = %196, %191, %185
  %201 = phi i32 [ %189, %185 ], [ %189, %196 ], [ 7, %191 ]
  %202 = phi i64 [ %188, %185 ], [ %199, %196 ], [ %188, %191 ]
  tail call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1366, metadata !1106), !dbg !1382
  tail call void @llvm.dbg.value(metadata i32 %201, i64 0, metadata !1363, metadata !1106), !dbg !1381
  %203 = add nuw i64 %187, 1, !dbg !1394
  tail call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1367, metadata !1106), !dbg !1383
  tail call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1367, metadata !1106), !dbg !1383
  tail call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1366, metadata !1106), !dbg !1382
  tail call void @llvm.dbg.value(metadata i32 %201, i64 0, metadata !1363, metadata !1106), !dbg !1381
  %204 = icmp eq i64 %203, %127, !dbg !1395
  br i1 %204, label %208, label %205, !dbg !1396, !llvm.loop !1397

; <label>:205:                                    ; preds = %200
  %206 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %140, i64 %203, i32 0
  %207 = load i32, i32* %206, align 8, !dbg !1380, !tbaa !1324
  br label %185, !dbg !1396

; <label>:208:                                    ; preds = %200
  tail call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1366, metadata !1106), !dbg !1382
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1362, metadata !1106), !dbg !1371
  %209 = icmp ugt i64 %202, 9, !dbg !1400
  br i1 %209, label %210, label %217, !dbg !1403

; <label>:210:                                    ; preds = %208
  br label %211, !dbg !1404

; <label>:211:                                    ; preds = %210, %211
  %212 = phi i64 [ %215, %211 ], [ %202, %210 ]
  %213 = phi i32 [ %214, %211 ], [ 1, %210 ]
  tail call void @llvm.dbg.value(metadata i32 %213, i64 0, metadata !1362, metadata !1106), !dbg !1371
  tail call void @llvm.dbg.value(metadata i64 %212, i64 0, metadata !1366, metadata !1106), !dbg !1382
  %214 = add nuw nsw i32 %213, 1, !dbg !1404
  tail call void @llvm.dbg.value(metadata i32 %214, i64 0, metadata !1362, metadata !1106), !dbg !1371
  %215 = udiv i64 %212, 10, !dbg !1405
  tail call void @llvm.dbg.value(metadata i64 %215, i64 0, metadata !1366, metadata !1106), !dbg !1382
  tail call void @llvm.dbg.value(metadata i64 %215, i64 0, metadata !1366, metadata !1106), !dbg !1382
  tail call void @llvm.dbg.value(metadata i32 %214, i64 0, metadata !1362, metadata !1106), !dbg !1371
  %216 = icmp ugt i64 %212, 99, !dbg !1400
  br i1 %216, label %211, label %217, !dbg !1403, !llvm.loop !1406

; <label>:217:                                    ; preds = %211, %208
  %218 = phi i32 [ 1, %208 ], [ %214, %211 ]
  %219 = icmp slt i32 %218, %201, !dbg !1409
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1362, metadata !1106), !dbg !1371
  %220 = select i1 %219, i32 %201, i32 %218, !dbg !1411
  tail call void @llvm.dbg.value(metadata i32 %220, i64 0, metadata !1362, metadata !1106), !dbg !1371
  br label %221, !dbg !1412

; <label>:221:                                    ; preds = %179, %180, %217
  %222 = phi i32 [ %220, %217 ], [ 1, %180 ], [ 1, %179 ]
  tail call void @llvm.dbg.value(metadata i32 %222, i64 0, metadata !1362, metadata !1106), !dbg !1371
  store i32 %222, i32* @number_width, align 4, !dbg !1413, !tbaa !1188
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !70, metadata !1106), !dbg !1414
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !242, metadata !1106), !dbg !1415
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !70, metadata !1106), !dbg !1414
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !242, metadata !1106), !dbg !1415
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !243, metadata !1106), !dbg !1416
  %223 = bitcast i32* %5 to i8*, !dbg !1417
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %223) #13, !dbg !1417
  call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !247, metadata !1106), !dbg !1418
  %224 = call i8* @argv_iter(%struct.argv_iterator* nonnull %129, i32* nonnull %5) #13, !dbg !1419
  call void @llvm.dbg.value(metadata i8* %224, i64 0, metadata !248, metadata !1106), !dbg !1420
  %225 = icmp eq i8* %224, null, !dbg !1421
  br i1 %225, label %229, label %226, !dbg !1423

; <label>:226:                                    ; preds = %221
  %227 = icmp eq i8* %17, null
  %228 = bitcast i8* %139 to i32*
  br label %239, !dbg !1423

; <label>:229:                                    ; preds = %293, %221
  %230 = phi i8 [ 1, %221 ], [ %291, %293 ]
  %231 = load i32, i32* %5, align 4, !dbg !1424, !tbaa !1426
  call void @llvm.dbg.value(metadata i32 %231, i64 0, metadata !247, metadata !1106), !dbg !1418
  switch i32 %231, label %238 [
    i32 2, label %297
    i32 4, label %232
    i32 3, label %237
  ], !dbg !1427

; <label>:232:                                    ; preds = %229
  %233 = tail call i32* @__errno_location() #17, !dbg !1428
  %234 = load i32, i32* %233, align 4, !dbg !1428, !tbaa !1188
  %235 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 5) #13, !dbg !1430
  %236 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %17) #13, !dbg !1431
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %234, i8* %235, i8* %236) #13, !dbg !1432
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !70, metadata !1106), !dbg !1414
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !70, metadata !1106), !dbg !1414
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %223) #13, !dbg !1433
  br label %308, !dbg !1434

; <label>:237:                                    ; preds = %229
  call void @xalloc_die() #16, !dbg !1436
  unreachable, !dbg !1436

; <label>:238:                                    ; preds = %229
  call void @__assert_fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 798, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #16, !dbg !1437
  unreachable, !dbg !1437

; <label>:239:                                    ; preds = %226, %293
  %240 = phi i64 [ 0, %226 ], [ %294, %293 ]
  %241 = phi i8* [ %224, %226 ], [ %295, %293 ]
  %242 = phi i8 [ 1, %226 ], [ %291, %293 ]
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !242, metadata !1106), !dbg !1415
  call void @llvm.dbg.value(metadata i8 %242, i64 0, metadata !70, metadata !1106), !dbg !1414
  br i1 %45, label %243, label %252, !dbg !1440

; <label>:243:                                    ; preds = %239
  %244 = call i32 @strcmp(i8* nonnull %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #15, !dbg !1442
  %245 = icmp eq i32 %244, 0, !dbg !1442
  br i1 %245, label %246, label %252, !dbg !1443

; <label>:246:                                    ; preds = %243
  %247 = call i32 @strcmp(i8* nonnull %241, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #15, !dbg !1444
  %248 = icmp eq i32 %247, 0, !dbg !1444
  br i1 %248, label %249, label %252, !dbg !1445

; <label>:249:                                    ; preds = %246
  %250 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.25, i64 0, i64 0), i32 5) #13, !dbg !1446
  %251 = call i8* @quotearg_style(i32 4, i8* nonnull %241) #13, !dbg !1448
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %250, i8* %251) #13, !dbg !1449
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !243, metadata !1106), !dbg !1416
  br label %252, !dbg !1450

; <label>:252:                                    ; preds = %249, %246, %243, %239
  %253 = phi i1 [ true, %249 ], [ false, %246 ], [ false, %243 ], [ false, %239 ]
  %254 = load i8, i8* %241, align 1, !dbg !1451, !tbaa !1426
  %255 = icmp eq i8 %254, 0, !dbg !1451
  br i1 %255, label %256, label %263, !dbg !1452

; <label>:256:                                    ; preds = %252
  br i1 %227, label %257, label %259, !dbg !1453

; <label>:257:                                    ; preds = %256
  %258 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i32 5) #13, !dbg !1454
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %258) #13, !dbg !1455
  br label %290

; <label>:259:                                    ; preds = %256
  %260 = call i64 @argv_iter_n_args(%struct.argv_iterator* nonnull %129) #15, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %260, i64 0, metadata !249, metadata !1106), !dbg !1457
  %261 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %17) #13, !dbg !1458
  %262 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i32 5) #13, !dbg !1459
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8* %261, i64 %260, i8* %262) #13, !dbg !1460
  br label %290

; <label>:263:                                    ; preds = %252
  br i1 %253, label %290, label %264, !dbg !1461

; <label>:264:                                    ; preds = %263
  %265 = select i1 %133, i64 0, i64 %240, !dbg !1462
  %266 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %140, i64 %265, !dbg !1462
  call void @llvm.dbg.value(metadata i8* %241, i64 0, metadata !1464, metadata !1106) #13, !dbg !1476
  call void @llvm.dbg.value(metadata %struct.fstatus* %266, i64 0, metadata !1469, metadata !1106) #13, !dbg !1478
  %267 = call i32 @strcmp(i8* nonnull %241, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #15, !dbg !1479
  %268 = icmp eq i32 %267, 0, !dbg !1479
  br i1 %268, label %269, label %271, !dbg !1480

; <label>:269:                                    ; preds = %264
  store i1 true, i1* @have_read_stdin, align 1
  %270 = call fastcc zeroext i1 @wc(i32 0, i8* nonnull %241, %struct.fstatus* %266, i64 -1) #13, !dbg !1481
  br label %286, !dbg !1483

; <label>:271:                                    ; preds = %264
  %272 = call i32 (i8*, i32, ...) @open(i8* nonnull %241, i32 0) #13, !dbg !1484
  call void @llvm.dbg.value(metadata i32 %272, i64 0, metadata !1470, metadata !1106) #13, !dbg !1485
  %273 = icmp eq i32 %272, -1, !dbg !1486
  br i1 %273, label %274, label %278, !dbg !1487

; <label>:274:                                    ; preds = %271
  %275 = tail call i32* @__errno_location() #17, !dbg !1488
  %276 = load i32, i32* %275, align 4, !dbg !1488, !tbaa !1188
  %277 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %241) #13, !dbg !1490
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %276, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %277) #13, !dbg !1491
  br label %286, !dbg !1492

; <label>:278:                                    ; preds = %271
  %279 = call fastcc zeroext i1 @wc(i32 %272, i8* nonnull %241, %struct.fstatus* %266, i64 0) #13, !dbg !1493
  %280 = call i32 @close(i32 %272) #13, !dbg !1494
  %281 = icmp eq i32 %280, 0, !dbg !1496
  br i1 %281, label %286, label %282, !dbg !1497

; <label>:282:                                    ; preds = %278
  %283 = tail call i32* @__errno_location() #17, !dbg !1498
  %284 = load i32, i32* %283, align 4, !dbg !1498, !tbaa !1188
  %285 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %241) #13, !dbg !1500
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %284, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %285) #13, !dbg !1501
  br label %286, !dbg !1502

; <label>:286:                                    ; preds = %269, %274, %278, %282
  %287 = phi i1 [ %270, %269 ], [ false, %274 ], [ false, %282 ], [ %279, %278 ]
  %288 = zext i1 %287 to i8, !dbg !1503
  %289 = and i8 %242, %288, !dbg !1504
  call void @llvm.dbg.value(metadata i8 %289, i64 0, metadata !70, metadata !1106), !dbg !1414
  br label %290

; <label>:290:                                    ; preds = %263, %259, %257, %286
  %291 = phi i8 [ %289, %286 ], [ 0, %257 ], [ 0, %259 ], [ 0, %263 ]
  call void @llvm.dbg.value(metadata i8 %291, i64 0, metadata !70, metadata !1106), !dbg !1414
  br i1 %133, label %292, label %293, !dbg !1505

; <label>:292:                                    ; preds = %290
  store i32 1, i32* %228, align 8, !dbg !1506, !tbaa !1324
  br label %293, !dbg !1508

; <label>:293:                                    ; preds = %290, %292
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !70, metadata !1106), !dbg !1414
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %223) #13, !dbg !1433
  %294 = add nuw i64 %240, 1, !dbg !1509
  call void @llvm.dbg.value(metadata i8 %291, i64 0, metadata !70, metadata !1106), !dbg !1414
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !243, metadata !1106), !dbg !1416
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %223) #13, !dbg !1417
  call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !247, metadata !1106), !dbg !1418
  %295 = call i8* @argv_iter(%struct.argv_iterator* nonnull %129, i32* nonnull %5) #13, !dbg !1419
  call void @llvm.dbg.value(metadata i8* %295, i64 0, metadata !248, metadata !1106), !dbg !1420
  %296 = icmp eq i8* %295, null, !dbg !1421
  br i1 %296, label %229, label %239, !dbg !1423, !llvm.loop !1510

; <label>:297:                                    ; preds = %229
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !70, metadata !1106), !dbg !1414
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %223) #13, !dbg !1433
  %298 = and i8 %230, 1, !dbg !1513
  %299 = icmp eq i8 %298, 0, !dbg !1513
  %300 = or i1 %45, %299, !dbg !1434
  br i1 %300, label %308, label %301, !dbg !1434

; <label>:301:                                    ; preds = %297
  %302 = call i64 @argv_iter_n_args(%struct.argv_iterator* nonnull %129) #15, !dbg !1514
  %303 = icmp eq i64 %302, 0, !dbg !1515
  br i1 %303, label %304, label %308, !dbg !1516

; <label>:304:                                    ; preds = %301
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1464, metadata !1106) #13, !dbg !1517
  call void @llvm.dbg.value(metadata %struct.fstatus* %140, i64 0, metadata !1469, metadata !1106) #13, !dbg !1519
  store i1 true, i1* @have_read_stdin, align 1
  %305 = call fastcc zeroext i1 @wc(i32 0, i8* null, %struct.fstatus* %140, i64 -1) #13, !dbg !1520
  %306 = zext i1 %305 to i8, !dbg !1521
  %307 = and i8 %230, %306, !dbg !1522
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !70, metadata !1106), !dbg !1414
  br label %308, !dbg !1523

; <label>:308:                                    ; preds = %232, %297, %304, %301
  %309 = phi i8 [ %230, %297 ], [ %307, %304 ], [ %230, %301 ], [ 0, %232 ]
  call void @llvm.dbg.value(metadata i8 %309, i64 0, metadata !70, metadata !1106), !dbg !1414
  br i1 %128, label %310, label %311, !dbg !1524

; <label>:310:                                    ; preds = %308
  call void @llvm.dbg.value(metadata %struct.Tokens* %3, i64 0, metadata !122, metadata !1106), !dbg !1239
  call void @readtokens0_free(%struct.Tokens* nonnull %3) #13, !dbg !1525
  br label %311, !dbg !1525

; <label>:311:                                    ; preds = %310, %308
  %312 = call i64 @argv_iter_n_args(%struct.argv_iterator* nonnull %129) #15, !dbg !1527
  %313 = icmp ugt i64 %312, 1, !dbg !1529
  br i1 %313, label %314, label %321, !dbg !1530

; <label>:314:                                    ; preds = %311
  %315 = load i64, i64* @total_lines, align 8, !dbg !1531, !tbaa !1155
  %316 = load i64, i64* @total_words, align 8, !dbg !1532, !tbaa !1155
  %317 = load i64, i64* @total_chars, align 8, !dbg !1533, !tbaa !1155
  %318 = load i64, i64* @total_bytes, align 8, !dbg !1534, !tbaa !1155
  %319 = load i64, i64* @max_line_length, align 8, !dbg !1535, !tbaa !1155
  %320 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i32 5) #13, !dbg !1536
  call fastcc void @write_counts(i64 %315, i64 %316, i64 %317, i64 %318, i64 %319, i8* %320), !dbg !1537
  br label %321, !dbg !1537

; <label>:321:                                    ; preds = %314, %311
  call void @argv_iter_free(%struct.argv_iterator* nonnull %129) #13, !dbg !1538
  call void @free(i8* %139) #13, !dbg !1539
  %322 = load i1, i1* @have_read_stdin, align 1
  br i1 %322, label %323, label %329, !dbg !1540

; <label>:323:                                    ; preds = %321
  %324 = call i32 @close(i32 0) #13, !dbg !1542
  %325 = icmp eq i32 %324, 0, !dbg !1543
  br i1 %325, label %329, label %326, !dbg !1544

; <label>:326:                                    ; preds = %323
  %327 = tail call i32* @__errno_location() #17, !dbg !1545
  %328 = load i32, i32* %327, align 4, !dbg !1545, !tbaa !1188
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %328, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #13, !dbg !1545
  unreachable, !dbg !1545

; <label>:329:                                    ; preds = %321, %323
  %330 = and i8 %309, 1, !dbg !1546
  %331 = xor i8 %330, 1, !dbg !1546
  %332 = zext i8 %331 to i32, !dbg !1546
  call void @llvm.lifetime.end.p0i8(i64 288, i8* nonnull %6) #13, !dbg !1547
  ret i32 %332, !dbg !1547
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32 @getpagesize() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @wc(i32, i8*, %struct.fstatus*, i64) unnamed_addr #6 !dbg !1548 {
  %5 = alloca [16385 x i8], align 16
  %6 = alloca i64, align 8
  %7 = bitcast i64* %6 to %struct.__mbstate_t*
  %8 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1554, metadata !1106), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1555, metadata !1106), !dbg !1628
  tail call void @llvm.dbg.value(metadata %struct.fstatus* %2, i64 0, metadata !1556, metadata !1106), !dbg !1629
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1557, metadata !1106), !dbg !1630
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1558, metadata !1106), !dbg !1631
  %9 = getelementptr inbounds [16385 x i8], [16385 x i8]* %5, i64 0, i64 0, !dbg !1632
  call void @llvm.lifetime.start.p0i8(i64 16385, i8* nonnull %9) #13, !dbg !1632
  tail call void @llvm.dbg.declare(metadata [16385 x i8]* %5, metadata !1559, metadata !1106), !dbg !1633
  %10 = icmp eq i8* %1, null, !dbg !1634
  br i1 %10, label %11, label %13, !dbg !1634

; <label>:11:                                     ; preds = %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i32 5) #13, !dbg !1635
  br label %13, !dbg !1634

; <label>:13:                                     ; preds = %4, %11
  %14 = phi i8* [ %12, %11 ], [ %1, %4 ], !dbg !1634
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1572, metadata !1106), !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1568, metadata !1106), !dbg !1637
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1567, metadata !1106), !dbg !1638
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1566, metadata !1106), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1565, metadata !1106), !dbg !1640
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1564, metadata !1106), !dbg !1641
  %15 = tail call i64 @__ctype_get_mb_cur_max() #13, !dbg !1642
  %16 = icmp ugt i64 %15, 1, !dbg !1644
  %17 = load i1, i1* @print_bytes, align 1
  %18 = load i1, i1* @print_chars, align 1
  br i1 %16, label %19, label %21, !dbg !1645

; <label>:19:                                     ; preds = %13
  %20 = zext i1 %18 to i8, !dbg !1646
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !1570, metadata !1106), !dbg !1648
  br label %23, !dbg !1649

; <label>:21:                                     ; preds = %13
  %22 = or i1 %17, %18, !dbg !1650
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1570, metadata !1106), !dbg !1648
  br label %23

; <label>:23:                                     ; preds = %21, %19
  %24 = phi i1 [ %17, %19 ], [ %22, %21 ]
  %25 = phi i8 [ %20, %19 ], [ 0, %21 ]
  tail call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !1570, metadata !1106), !dbg !1648
  %26 = load i1, i1* @print_words, align 1
  %27 = load i1, i1* @print_linelength, align 1
  %28 = or i1 %26, %27, !dbg !1652
  %29 = icmp eq i8 %25, 0, !dbg !1653
  %30 = and i1 %24, %29, !dbg !1655
  %31 = xor i1 %30, true, !dbg !1655
  %32 = load i1, i1* @print_lines, align 1
  %33 = or i1 %32, %28, !dbg !1656
  %34 = or i1 %33, %31, !dbg !1655
  br i1 %34, label %35, label %37, !dbg !1655

; <label>:35:                                     ; preds = %23
  tail call void @fdadvise(i32 %0, i64 0, i64 0, i32 2) #13, !dbg !1657
  %36 = load i1, i1* @print_lines, align 1
  br label %37, !dbg !1657

; <label>:37:                                     ; preds = %23, %35
  %38 = phi i1 [ false, %23 ], [ %36, %35 ]
  %39 = or i1 %28, %38, !dbg !1658
  %40 = or i1 %39, %31, !dbg !1659
  br i1 %40, label %102, label %41, !dbg !1659

; <label>:41:                                     ; preds = %37
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1573, metadata !1106), !dbg !1660
  %42 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 0, !dbg !1661
  %43 = load i32, i32* %42, align 8, !dbg !1661, !tbaa !1324
  %44 = icmp sgt i32 %43, 0, !dbg !1663
  br i1 %44, label %45, label %48, !dbg !1664

; <label>:45:                                     ; preds = %41
  %46 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, !dbg !1665
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1215, metadata !1106) #13, !dbg !1666
  tail call void @llvm.dbg.value(metadata %struct.stat* %46, i64 0, metadata !1222, metadata !1106) #13, !dbg !1666
  %47 = tail call i32 @__fxstat(i32 1, i32 %0, %struct.stat* nonnull %46) #13, !dbg !1668
  store i32 %47, i32* %42, align 8, !dbg !1669, !tbaa !1324
  br label %48, !dbg !1670

; <label>:48:                                     ; preds = %45, %41
  %49 = phi i32 [ %47, %45 ], [ %43, %41 ], !dbg !1671
  %50 = icmp eq i32 %49, 0, !dbg !1672
  br i1 %50, label %51, label %91, !dbg !1673

; <label>:51:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata %struct.fstatus* %2, i64 0, metadata !1674, metadata !1681), !dbg !1682
  %52 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, i32 3, !dbg !1684
  %53 = load i32, i32* %52, align 8, !dbg !1684, !tbaa !1229
  %54 = trunc i32 %53 to i16, !dbg !1685
  %55 = and i16 %54, -4096, !dbg !1685
  switch i16 %55, label %91 [
    i16 -32768, label %56
    i16 -24576, label %56
  ], !dbg !1685

; <label>:56:                                     ; preds = %51, %51
  %57 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, i32 8, !dbg !1686
  %58 = load i64, i64* %57, align 8, !dbg !1686, !tbaa !1391
  %59 = icmp sgt i64 %58, -1, !dbg !1687
  br i1 %59, label %60, label %91, !dbg !1688

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !1576, metadata !1106), !dbg !1689
  %61 = icmp slt i64 %3, 0, !dbg !1690
  br i1 %61, label %62, label %64, !dbg !1692

; <label>:62:                                     ; preds = %60
  %63 = tail call i64 @lseek(i32 %0, i64 0, i32 1) #13, !dbg !1693
  tail call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1557, metadata !1106), !dbg !1630
  br label %64, !dbg !1694

; <label>:64:                                     ; preds = %62, %60
  %65 = phi i64 [ %63, %62 ], [ %3, %60 ]
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !1557, metadata !1106), !dbg !1630
  %66 = load i64, i64* @page_size, align 8, !dbg !1695, !tbaa !1155
  %67 = urem i64 %58, %66, !dbg !1696
  %68 = icmp eq i64 %67, 0, !dbg !1696
  br i1 %68, label %69, label %87, !dbg !1697

; <label>:69:                                     ; preds = %64
  %70 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, i32 9, !dbg !1698
  %71 = load i64, i64* %70, align 8, !dbg !1698, !tbaa !1699
  %72 = icmp sgt i64 %71, 0, !dbg !1698
  %73 = icmp ult i64 %71, 2305843009213693953, !dbg !1698
  %74 = and i1 %72, %73, !dbg !1698
  %75 = add i64 %71, 1, !dbg !1698
  %76 = select i1 %74, i64 %75, i64 513, !dbg !1698
  %77 = urem i64 %58, %76, !dbg !1700
  %78 = sub i64 %58, %77, !dbg !1701
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !1579, metadata !1106), !dbg !1702
  %79 = icmp sgt i64 %65, -1, !dbg !1703
  %80 = icmp sgt i64 %78, %65, !dbg !1705
  %81 = and i1 %79, %80, !dbg !1706
  br i1 %81, label %82, label %91, !dbg !1706

; <label>:82:                                     ; preds = %69
  %83 = tail call i64 @lseek(i32 %0, i64 %78, i32 1) #13, !dbg !1707
  %84 = icmp sgt i64 %83, -1, !dbg !1708
  %85 = sub nsw i64 %78, %65, !dbg !1709
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !1567, metadata !1106), !dbg !1638
  %86 = select i1 %84, i64 %85, i64 0, !dbg !1710
  br label %91, !dbg !1710

; <label>:87:                                     ; preds = %64
  %88 = icmp ult i64 %58, %65, !dbg !1711
  %89 = sub i64 %58, %65, !dbg !1713
  %90 = select i1 %88, i64 0, i64 %89, !dbg !1714
  tail call void @llvm.dbg.value(metadata i64 %90, i64 0, metadata !1567, metadata !1106), !dbg !1638
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1573, metadata !1106), !dbg !1660
  tail call void @llvm.dbg.value(metadata i64 %90, i64 0, metadata !1567, metadata !1106), !dbg !1638
  br label %427, !dbg !1715

; <label>:91:                                     ; preds = %48, %56, %82, %69, %51
  %92 = phi i64 [ 0, %51 ], [ %86, %82 ], [ 0, %69 ], [ 0, %56 ], [ 0, %48 ]
  tail call void @llvm.dbg.value(metadata i64 %90, i64 0, metadata !1567, metadata !1106), !dbg !1638
  tail call void @fdadvise(i32 %0, i64 0, i64 0, i32 2) #13, !dbg !1716
  br label %93, !dbg !1719

; <label>:93:                                     ; preds = %100, %91
  %94 = phi i64 [ %92, %91 ], [ %101, %100 ]
  call void @llvm.dbg.value(metadata i64 %94, i64 0, metadata !1567, metadata !1106), !dbg !1638
  %95 = call i64 @safe_read(i32 %0, i8* nonnull %9, i64 16384) #13, !dbg !1720
  call void @llvm.dbg.value(metadata i64 %95, i64 0, metadata !1563, metadata !1106), !dbg !1721
  switch i64 %95, label %100 [
    i64 0, label %427
    i64 -1, label %96
  ], !dbg !1719

; <label>:96:                                     ; preds = %93
  %97 = tail call i32* @__errno_location() #17, !dbg !1722
  %98 = load i32, i32* %97, align 4, !dbg !1722, !tbaa !1188
  %99 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #13, !dbg !1726
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %99) #13, !dbg !1727
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1558, metadata !1106), !dbg !1631
  br label %427, !dbg !1728

; <label>:100:                                    ; preds = %93
  %101 = add i64 %95, %94, !dbg !1729
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1567, metadata !1106), !dbg !1638
  br label %93, !dbg !1719, !llvm.loop !1730

; <label>:102:                                    ; preds = %37
  %103 = xor i1 %29, true, !dbg !1732
  %104 = or i1 %28, %103, !dbg !1732
  br i1 %104, label %203, label %105, !dbg !1732

; <label>:105:                                    ; preds = %102
  br label %106, !dbg !1733

; <label>:106:                                    ; preds = %105, %198
  %107 = phi i64 [ %116, %198 ], [ 0, %105 ]
  %108 = phi i64 [ %199, %198 ], [ 0, %105 ]
  %109 = phi i1 [ %202, %198 ], [ false, %105 ]
  call void @llvm.dbg.value(metadata i64 %108, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %107, i64 0, metadata !1567, metadata !1106), !dbg !1638
  %110 = call i64 @safe_read(i32 %0, i8* nonnull %9, i64 16384) #13, !dbg !1733
  call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !1563, metadata !1106), !dbg !1721
  switch i64 %110, label %115 [
    i64 0, label %427
    i64 -1, label %111
  ], !dbg !1734

; <label>:111:                                    ; preds = %106
  %112 = tail call i32* @__errno_location() #17, !dbg !1735
  %113 = load i32, i32* %112, align 4, !dbg !1735, !tbaa !1188
  %114 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #13, !dbg !1738
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %114) #13, !dbg !1739
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1558, metadata !1106), !dbg !1631
  br label %427, !dbg !1740

; <label>:115:                                    ; preds = %106
  %116 = add i64 %110, %107, !dbg !1741
  call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !1567, metadata !1106), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %117 = getelementptr inbounds [16385 x i8], [16385 x i8]* %5, i64 0, i64 %110, !dbg !1743
  call void @llvm.dbg.value(metadata i8* %117, i64 0, metadata !1587, metadata !1106), !dbg !1744
  call void @llvm.dbg.value(metadata i64 %108, i64 0, metadata !1588, metadata !1106), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !1585, metadata !1106), !dbg !1742
  call void @llvm.dbg.value(metadata i64 %108, i64 0, metadata !1564, metadata !1106), !dbg !1641
  br i1 %109, label %184, label %118, !dbg !1746

; <label>:118:                                    ; preds = %115
  %119 = add i64 %110, -1, !dbg !1747
  %120 = and i64 %110, 7, !dbg !1747
  %121 = icmp eq i64 %120, 0, !dbg !1747
  br i1 %121, label %134, label %122, !dbg !1747

; <label>:122:                                    ; preds = %118
  br label %123, !dbg !1747

; <label>:123:                                    ; preds = %123, %122
  %124 = phi i8* [ %127, %123 ], [ %9, %122 ]
  %125 = phi i64 [ %131, %123 ], [ %108, %122 ]
  %126 = phi i64 [ %132, %123 ], [ %120, %122 ]
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %127 = getelementptr inbounds i8, i8* %124, i64 1, !dbg !1747
  call void @llvm.dbg.value(metadata i8* %127, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %128 = load i8, i8* %124, align 1, !dbg !1750, !tbaa !1426
  %129 = icmp eq i8 %128, 10, !dbg !1751
  %130 = zext i1 %129 to i64, !dbg !1750
  %131 = add i64 %125, %130, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %127, i64 0, metadata !1585, metadata !1106), !dbg !1742
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1564, metadata !1106), !dbg !1641
  %132 = add i64 %126, -1, !dbg !1753
  %133 = icmp eq i64 %132, 0, !dbg !1753
  br i1 %133, label %134, label %123, !dbg !1753, !llvm.loop !1754

; <label>:134:                                    ; preds = %123, %118
  %135 = phi i64 [ undef, %118 ], [ %131, %123 ]
  %136 = phi i8* [ %9, %118 ], [ %127, %123 ]
  %137 = phi i64 [ %108, %118 ], [ %131, %123 ]
  %138 = icmp ult i64 %119, 7, !dbg !1747
  br i1 %138, label %198, label %139, !dbg !1747

; <label>:139:                                    ; preds = %134
  br label %140, !dbg !1747

; <label>:140:                                    ; preds = %140, %139
  %141 = phi i8* [ %136, %139 ], [ %178, %140 ]
  %142 = phi i64 [ %137, %139 ], [ %182, %140 ]
  call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %143 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !1747
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %144 = load i8, i8* %141, align 1, !dbg !1750, !tbaa !1426
  %145 = icmp eq i8 %144, 10, !dbg !1751
  %146 = zext i1 %145 to i64, !dbg !1750
  %147 = add i64 %142, %146, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1585, metadata !1106), !dbg !1742
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %148 = getelementptr inbounds i8, i8* %141, i64 2, !dbg !1747
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %149 = load i8, i8* %143, align 1, !dbg !1750, !tbaa !1426
  %150 = icmp eq i8 %149, 10, !dbg !1751
  %151 = zext i1 %150 to i64, !dbg !1750
  %152 = add i64 %147, %151, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1585, metadata !1106), !dbg !1742
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %153 = getelementptr inbounds i8, i8* %141, i64 3, !dbg !1747
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %154 = load i8, i8* %148, align 1, !dbg !1750, !tbaa !1426
  %155 = icmp eq i8 %154, 10, !dbg !1751
  %156 = zext i1 %155 to i64, !dbg !1750
  %157 = add i64 %152, %156, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1585, metadata !1106), !dbg !1742
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %158 = getelementptr inbounds i8, i8* %141, i64 4, !dbg !1747
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %159 = load i8, i8* %153, align 1, !dbg !1750, !tbaa !1426
  %160 = icmp eq i8 %159, 10, !dbg !1751
  %161 = zext i1 %160 to i64, !dbg !1750
  %162 = add i64 %157, %161, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1585, metadata !1106), !dbg !1742
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %163 = getelementptr inbounds i8, i8* %141, i64 5, !dbg !1747
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %164 = load i8, i8* %158, align 1, !dbg !1750, !tbaa !1426
  %165 = icmp eq i8 %164, 10, !dbg !1751
  %166 = zext i1 %165 to i64, !dbg !1750
  %167 = add i64 %162, %166, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1585, metadata !1106), !dbg !1742
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %168 = getelementptr inbounds i8, i8* %141, i64 6, !dbg !1747
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %169 = load i8, i8* %163, align 1, !dbg !1750, !tbaa !1426
  %170 = icmp eq i8 %169, 10, !dbg !1751
  %171 = zext i1 %170 to i64, !dbg !1750
  %172 = add i64 %167, %171, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1585, metadata !1106), !dbg !1742
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %173 = getelementptr inbounds i8, i8* %141, i64 7, !dbg !1747
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %174 = load i8, i8* %168, align 1, !dbg !1750, !tbaa !1426
  %175 = icmp eq i8 %174, 10, !dbg !1751
  %176 = zext i1 %175 to i64, !dbg !1750
  %177 = add i64 %172, %176, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1585, metadata !1106), !dbg !1742
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %178 = getelementptr inbounds i8, i8* %141, i64 8, !dbg !1747
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %179 = load i8, i8* %173, align 1, !dbg !1750, !tbaa !1426
  %180 = icmp eq i8 %179, 10, !dbg !1751
  %181 = zext i1 %180 to i64, !dbg !1750
  %182 = add i64 %177, %181, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1585, metadata !1106), !dbg !1742
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !1564, metadata !1106), !dbg !1641
  %183 = icmp eq i8* %178, %117, !dbg !1756
  br i1 %183, label %198, label %140, !dbg !1753, !llvm.loop !1757

; <label>:184:                                    ; preds = %115
  %185 = ptrtoint i8* %117 to i64, !dbg !1759
  %186 = call i8* @memchr(i8* nonnull %9, i32 10, i64 %110) #15, !dbg !1761
  call void @llvm.dbg.value(metadata i8* %186, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %187 = icmp eq i8* %186, null, !dbg !1762
  br i1 %187, label %198, label %188, !dbg !1762

; <label>:188:                                    ; preds = %184
  br label %189, !dbg !1763

; <label>:189:                                    ; preds = %188, %189
  %190 = phi i8* [ %196, %189 ], [ %186, %188 ]
  %191 = phi i64 [ %193, %189 ], [ %108, %188 ]
  call void @llvm.dbg.value(metadata i64 %191, i64 0, metadata !1564, metadata !1106), !dbg !1641
  %192 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1763
  call void @llvm.dbg.value(metadata i8* %192, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %193 = add i64 %191, 1, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %193, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i8* %192, i64 0, metadata !1585, metadata !1106), !dbg !1742
  call void @llvm.dbg.value(metadata i64 %193, i64 0, metadata !1564, metadata !1106), !dbg !1641
  %194 = ptrtoint i8* %192 to i64, !dbg !1759
  %195 = sub i64 %185, %194, !dbg !1759
  %196 = call i8* @memchr(i8* %192, i32 10, i64 %195) #15, !dbg !1761
  call void @llvm.dbg.value(metadata i8* %196, i64 0, metadata !1585, metadata !1106), !dbg !1742
  %197 = icmp eq i8* %196, null, !dbg !1762
  br i1 %197, label %198, label %189, !dbg !1762, !llvm.loop !1766

; <label>:198:                                    ; preds = %134, %140, %189, %184
  %199 = phi i64 [ %108, %184 ], [ %193, %189 ], [ %135, %134 ], [ %182, %140 ]
  call void @llvm.dbg.value(metadata i64 %199, i64 0, metadata !1564, metadata !1106), !dbg !1641
  %200 = sub i64 %199, %108, !dbg !1768
  %201 = udiv i64 %110, 15, !dbg !1770
  %202 = icmp ule i64 %200, %201, !dbg !1771
  br label %106, !dbg !1734, !llvm.loop !1772

; <label>:203:                                    ; preds = %102
  %204 = tail call i64 @__ctype_get_mb_cur_max() #13, !dbg !1774
  %205 = icmp ugt i64 %204, 1, !dbg !1775
  br i1 %205, label %207, label %206, !dbg !1776

; <label>:206:                                    ; preds = %203
  br label %355, !dbg !1777

; <label>:207:                                    ; preds = %203
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1589, metadata !1106), !dbg !1778
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1592, metadata !1106), !dbg !1779
  %208 = bitcast i64* %6 to i8*, !dbg !1780
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %208) #13, !dbg !1780
  store i64 0, i64* %6, align 8, !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1609, metadata !1106), !dbg !1782
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1610, metadata !1106), !dbg !1783
  %209 = bitcast i32* %8 to i8*
  br label %210, !dbg !1784

; <label>:210:                                    ; preds = %256, %207
  %211 = phi i64 [ 0, %207 ], [ %257, %256 ]
  %212 = phi i64 [ 0, %207 ], [ %224, %256 ]
  %213 = phi i64 [ 0, %207 ], [ %258, %256 ]
  %214 = phi i64 [ 0, %207 ], [ %259, %256 ]
  %215 = phi i64 [ 0, %207 ], [ %260, %256 ]
  %216 = phi i8 [ 0, %207 ], [ %261, %256 ]
  %217 = phi i64 [ 0, %207 ], [ %262, %256 ]
  %218 = phi i8 [ 0, %207 ], [ %263, %256 ]
  %219 = phi i64 [ 0, %207 ], [ %264, %256 ]
  call void @llvm.dbg.value(metadata i64 %219, i64 0, metadata !1610, metadata !1106), !dbg !1783
  call void @llvm.dbg.value(metadata i8 %218, i64 0, metadata !1609, metadata !1106), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %217, i64 0, metadata !1592, metadata !1106), !dbg !1779
  call void @llvm.dbg.value(metadata i8 %216, i64 0, metadata !1589, metadata !1106), !dbg !1778
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1558, metadata !1106), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %215, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1565, metadata !1106), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1566, metadata !1106), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %212, i64 0, metadata !1567, metadata !1106), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %211, i64 0, metadata !1568, metadata !1106), !dbg !1637
  %220 = getelementptr inbounds [16385 x i8], [16385 x i8]* %5, i64 0, i64 %219, !dbg !1785
  %221 = sub i64 16384, %219, !dbg !1786
  %222 = call i64 @safe_read(i32 %0, i8* %220, i64 %221) #13, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %222, i64 0, metadata !1563, metadata !1106), !dbg !1721
  switch i64 %222, label %223 [
    i64 0, label %348
    i64 -1, label %344
  ], !dbg !1784

; <label>:223:                                    ; preds = %210
  %224 = add i64 %222, %212, !dbg !1788
  call void @llvm.dbg.value(metadata i64 %224, i64 0, metadata !1567, metadata !1106), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !1611, metadata !1106), !dbg !1789
  %225 = add i64 %222, %219, !dbg !1790
  call void @llvm.dbg.value(metadata i64 %225, i64 0, metadata !1563, metadata !1106), !dbg !1721
  br label %226, !dbg !1791, !llvm.loop !1792

; <label>:226:                                    ; preds = %327, %223
  %227 = phi i64 [ %211, %223 ], [ %328, %327 ]
  %228 = phi i64 [ %213, %223 ], [ %329, %327 ]
  %229 = phi i64 [ %214, %223 ], [ %330, %327 ]
  %230 = phi i64 [ %215, %223 ], [ %331, %327 ]
  %231 = phi i64 [ %225, %223 ], [ %332, %327 ]
  %232 = phi i8 [ %216, %223 ], [ %333, %327 ]
  %233 = phi i64 [ %217, %223 ], [ %334, %327 ]
  %234 = phi i8 [ %218, %223 ], [ %335, %327 ]
  %235 = phi i8* [ %9, %223 ], [ %336, %327 ]
  call void @llvm.dbg.value(metadata i8* %235, i64 0, metadata !1611, metadata !1106), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %234, i64 0, metadata !1609, metadata !1106), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %233, i64 0, metadata !1592, metadata !1106), !dbg !1779
  call void @llvm.dbg.value(metadata i8 %232, i64 0, metadata !1589, metadata !1106), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1563, metadata !1106), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %229, i64 0, metadata !1565, metadata !1106), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %228, i64 0, metadata !1566, metadata !1106), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %227, i64 0, metadata !1568, metadata !1106), !dbg !1637
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %209) #13, !dbg !1794
  %236 = and i8 %234, 1, !dbg !1795
  %237 = icmp eq i8 %236, 0, !dbg !1795
  br i1 %237, label %238, label %251, !dbg !1797

; <label>:238:                                    ; preds = %226
  %239 = load i8, i8* %235, align 1, !dbg !1798, !tbaa !1426
  tail call void @llvm.dbg.value(metadata i8 %239, i64 0, metadata !1799, metadata !1106), !dbg !1805
  %240 = zext i8 %239 to i32, !dbg !1807
  %241 = lshr i32 %240, 5, !dbg !1808
  %242 = zext i32 %241 to i64, !dbg !1809
  %243 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([8 x i32]* @is_basic_table to [0 x i32]*), i64 0, i64 %242, !dbg !1809
  %244 = load i32, i32* %243, align 4, !dbg !1809, !tbaa !1188
  %245 = and i32 %240, 31, !dbg !1810
  %246 = shl i32 1, %245, !dbg !1811
  %247 = and i32 %246, %244, !dbg !1811
  %248 = icmp eq i32 %247, 0, !dbg !1811
  br i1 %248, label %251, label %249, !dbg !1812

; <label>:249:                                    ; preds = %238
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1617, metadata !1106), !dbg !1813
  %250 = sext i8 %239 to i32, !dbg !1814
  call void @llvm.dbg.value(metadata i32 %250, i64 0, metadata !1614, metadata !1106), !dbg !1816
  store i32 %250, i32* %8, align 4, !dbg !1817, !tbaa !1188
  br label %279, !dbg !1818

; <label>:251:                                    ; preds = %238, %226
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1609, metadata !1106), !dbg !1782
  %252 = load i64, i64* %6, align 8, !dbg !1819
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %7, i64 0, metadata !1593, metadata !1106), !dbg !1781
  call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1614, metadata !1106), !dbg !1816
  %253 = call i64 @rpl_mbrtowc(i32* nonnull %8, i8* %235, i64 %231, %struct.__mbstate_t* nonnull %7) #13, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %253, i64 0, metadata !1617, metadata !1106), !dbg !1813
  switch i64 %253, label %268 [
    i64 -2, label %254
    i64 -1, label %265
  ], !dbg !1822

; <label>:254:                                    ; preds = %251
  store i64 %252, i64* %6, align 8, !dbg !1823
  call void @llvm.dbg.value(metadata i8* %336, i64 0, metadata !1611, metadata !1106), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %335, i64 0, metadata !1609, metadata !1106), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %334, i64 0, metadata !1592, metadata !1106), !dbg !1779
  call void @llvm.dbg.value(metadata i8 %333, i64 0, metadata !1589, metadata !1106), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %332, i64 0, metadata !1563, metadata !1106), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1565, metadata !1106), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %329, i64 0, metadata !1566, metadata !1106), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %328, i64 0, metadata !1568, metadata !1106), !dbg !1637
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %209) #13, !dbg !1826
  %255 = icmp eq i64 %231, 0, !dbg !1827
  br i1 %255, label %256, label %338, !dbg !1828

; <label>:256:                                    ; preds = %327, %254, %338
  %257 = phi i64 [ %227, %254 ], [ %227, %338 ], [ %328, %327 ]
  %258 = phi i64 [ %228, %254 ], [ %228, %338 ], [ %329, %327 ]
  %259 = phi i64 [ %229, %254 ], [ %229, %338 ], [ %330, %327 ]
  %260 = phi i64 [ %230, %254 ], [ %230, %338 ], [ %331, %327 ]
  %261 = phi i8 [ %232, %254 ], [ %232, %338 ], [ %333, %327 ]
  %262 = phi i64 [ %233, %254 ], [ %233, %338 ], [ %334, %327 ]
  %263 = phi i8 [ 1, %254 ], [ 1, %338 ], [ %335, %327 ]
  %264 = phi i64 [ 0, %254 ], [ %342, %338 ], [ 0, %327 ]
  br label %210, !dbg !1783, !llvm.loop !1829

; <label>:265:                                    ; preds = %251
  %266 = getelementptr inbounds i8, i8* %235, i64 1, !dbg !1831
  call void @llvm.dbg.value(metadata i8* %266, i64 0, metadata !1611, metadata !1106), !dbg !1789
  %267 = add i64 %231, -1, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %267, i64 0, metadata !1563, metadata !1106), !dbg !1721
  br label %327, !dbg !1835

; <label>:268:                                    ; preds = %251
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %7, i64 0, metadata !1593, metadata !1106), !dbg !1781
  %269 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %7) #15, !dbg !1836
  %270 = icmp eq i32 %269, 0, !dbg !1836
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1609, metadata !1106), !dbg !1782
  %271 = zext i1 %270 to i8, !dbg !1838
  call void @llvm.dbg.value(metadata i8 %271, i64 0, metadata !1609, metadata !1106), !dbg !1782
  %272 = icmp eq i64 %253, 0, !dbg !1839
  br i1 %272, label %273, label %277, !dbg !1841

; <label>:273:                                    ; preds = %268
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1614, metadata !1106), !dbg !1816
  store i32 0, i32* %8, align 4, !dbg !1842, !tbaa !1188
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1617, metadata !1106), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1617, metadata !1106), !dbg !1813
  call void @llvm.dbg.value(metadata i8 %281, i64 0, metadata !1609, metadata !1106), !dbg !1782
  %274 = getelementptr inbounds i8, i8* %235, i64 1, !dbg !1844
  call void @llvm.dbg.value(metadata i8* %283, i64 0, metadata !1611, metadata !1106), !dbg !1789
  %275 = add i64 %231, -1, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %284, i64 0, metadata !1563, metadata !1106), !dbg !1721
  %276 = add i64 %228, 1, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %285, i64 0, metadata !1566, metadata !1106), !dbg !1639
  call void @llvm.dbg.value(metadata i32 %280, i64 0, metadata !1614, metadata !1106), !dbg !1816
  br label %309, !dbg !1847

; <label>:277:                                    ; preds = %268
  %278 = load i32, i32* %8, align 4, !dbg !1848, !tbaa !1188
  br label %279, !dbg !1844

; <label>:279:                                    ; preds = %277, %249
  %280 = phi i32 [ %278, %277 ], [ %250, %249 ], !dbg !1848
  %281 = phi i8 [ %271, %277 ], [ %234, %249 ]
  %282 = phi i64 [ %253, %277 ], [ 1, %249 ]
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1617, metadata !1106), !dbg !1813
  call void @llvm.dbg.value(metadata i8 %281, i64 0, metadata !1609, metadata !1106), !dbg !1782
  %283 = getelementptr inbounds i8, i8* %235, i64 %282, !dbg !1844
  call void @llvm.dbg.value(metadata i8* %283, i64 0, metadata !1611, metadata !1106), !dbg !1789
  %284 = sub i64 %231, %282, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %284, i64 0, metadata !1563, metadata !1106), !dbg !1721
  %285 = add i64 %228, 1, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %285, i64 0, metadata !1566, metadata !1106), !dbg !1639
  call void @llvm.dbg.value(metadata i32 %280, i64 0, metadata !1614, metadata !1106), !dbg !1816
  switch i32 %280, label %309 [
    i32 10, label %286
    i32 13, label %288
    i32 12, label %288
    i32 9, label %292
    i32 32, label %296
    i32 11, label %298
  ], !dbg !1847

; <label>:286:                                    ; preds = %279
  %287 = add i64 %230, 1, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1564, metadata !1106), !dbg !1641
  br label %288, !dbg !1850

; <label>:288:                                    ; preds = %279, %279, %286
  %289 = phi i64 [ %230, %279 ], [ %230, %279 ], [ %287, %286 ]
  call void @llvm.dbg.value(metadata i64 %289, i64 0, metadata !1564, metadata !1106), !dbg !1641
  %290 = icmp ugt i64 %233, %227, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %233, i64 0, metadata !1568, metadata !1106), !dbg !1637
  %291 = select i1 %290, i64 %233, i64 %227, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1568, metadata !1106), !dbg !1637
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1592, metadata !1106), !dbg !1779
  br label %298, !dbg !1854

; <label>:292:                                    ; preds = %279
  %293 = and i64 %233, 7, !dbg !1855
  %294 = add i64 %233, 8, !dbg !1856
  %295 = sub i64 %294, %293, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %295, i64 0, metadata !1592, metadata !1106), !dbg !1779
  br label %298, !dbg !1858

; <label>:296:                                    ; preds = %279
  %297 = add i64 %233, 1, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1592, metadata !1106), !dbg !1779
  br label %298, !dbg !1860

; <label>:298:                                    ; preds = %317, %296, %279, %292, %288
  %299 = phi i64 [ %310, %317 ], [ %285, %279 ], [ %285, %296 ], [ %285, %292 ], [ %285, %288 ]
  %300 = phi i64 [ %311, %317 ], [ %284, %279 ], [ %284, %296 ], [ %284, %292 ], [ %284, %288 ]
  %301 = phi i8* [ %312, %317 ], [ %283, %279 ], [ %283, %296 ], [ %283, %292 ], [ %283, %288 ]
  %302 = phi i8 [ %313, %317 ], [ %281, %279 ], [ %281, %296 ], [ %281, %292 ], [ %281, %288 ]
  %303 = phi i64 [ %227, %317 ], [ %227, %279 ], [ %227, %296 ], [ %227, %292 ], [ %291, %288 ]
  %304 = phi i64 [ %230, %317 ], [ %230, %279 ], [ %230, %296 ], [ %230, %292 ], [ %289, %288 ]
  %305 = phi i64 [ %323, %317 ], [ %233, %279 ], [ %297, %296 ], [ %295, %292 ], [ 0, %288 ]
  call void @llvm.dbg.value(metadata i64 %305, i64 0, metadata !1592, metadata !1106), !dbg !1779
  call void @llvm.dbg.value(metadata i8 %232, i64 0, metadata !1589, metadata !1106), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %304, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %303, i64 0, metadata !1568, metadata !1106), !dbg !1637
  %306 = and i8 %232, 1, !dbg !1861
  %307 = zext i8 %306 to i64, !dbg !1861
  %308 = add i64 %229, %307, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %308, i64 0, metadata !1565, metadata !1106), !dbg !1640
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1589, metadata !1106), !dbg !1778
  br label %327, !dbg !1863

; <label>:309:                                    ; preds = %273, %279
  %310 = phi i64 [ %276, %273 ], [ %285, %279 ]
  %311 = phi i64 [ %275, %273 ], [ %284, %279 ]
  %312 = phi i8* [ %274, %273 ], [ %283, %279 ]
  %313 = phi i8 [ %271, %273 ], [ %281, %279 ]
  %314 = phi i32 [ 0, %273 ], [ %280, %279 ]
  %315 = call i32 @iswprint(i32 %314) #13, !dbg !1864
  %316 = icmp eq i32 %315, 0, !dbg !1864
  br i1 %316, label %327, label %317, !dbg !1865

; <label>:317:                                    ; preds = %309
  %318 = load i32, i32* %8, align 4, !dbg !1866, !tbaa !1188
  call void @llvm.dbg.value(metadata i32 %318, i64 0, metadata !1614, metadata !1106), !dbg !1816
  %319 = call i32 @wcwidth(i32 %318) #13, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %319, i64 0, metadata !1618, metadata !1106), !dbg !1868
  %320 = icmp sgt i32 %319, 0, !dbg !1869
  %321 = select i1 %320, i32 %319, i32 0, !dbg !1869
  %322 = zext i32 %321 to i64, !dbg !1869
  %323 = add i64 %233, %322, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %323, i64 0, metadata !1592, metadata !1106), !dbg !1779
  %324 = load i32, i32* %8, align 4, !dbg !1870, !tbaa !1188
  call void @llvm.dbg.value(metadata i32 %324, i64 0, metadata !1614, metadata !1106), !dbg !1816
  %325 = call i32 @iswspace(i32 %324) #13, !dbg !1872
  %326 = icmp eq i32 %325, 0, !dbg !1872
  br i1 %326, label %327, label %298

; <label>:327:                                    ; preds = %298, %317, %309, %265
  %328 = phi i64 [ %227, %265 ], [ %227, %317 ], [ %303, %298 ], [ %227, %309 ]
  %329 = phi i64 [ %228, %265 ], [ %310, %317 ], [ %299, %298 ], [ %310, %309 ]
  %330 = phi i64 [ %229, %265 ], [ %229, %317 ], [ %308, %298 ], [ %229, %309 ]
  %331 = phi i64 [ %230, %265 ], [ %230, %317 ], [ %304, %298 ], [ %230, %309 ]
  %332 = phi i64 [ %267, %265 ], [ %311, %317 ], [ %300, %298 ], [ %311, %309 ]
  %333 = phi i8 [ %232, %265 ], [ 1, %317 ], [ 0, %298 ], [ %232, %309 ]
  %334 = phi i64 [ %233, %265 ], [ %323, %317 ], [ %305, %298 ], [ %233, %309 ]
  %335 = phi i8 [ 1, %265 ], [ %313, %317 ], [ %302, %298 ], [ %313, %309 ]
  %336 = phi i8* [ %266, %265 ], [ %312, %317 ], [ %301, %298 ], [ %312, %309 ]
  call void @llvm.dbg.value(metadata i8* %336, i64 0, metadata !1611, metadata !1106), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %335, i64 0, metadata !1609, metadata !1106), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %334, i64 0, metadata !1592, metadata !1106), !dbg !1779
  call void @llvm.dbg.value(metadata i8 %333, i64 0, metadata !1589, metadata !1106), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %332, i64 0, metadata !1563, metadata !1106), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1565, metadata !1106), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %329, i64 0, metadata !1566, metadata !1106), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %328, i64 0, metadata !1568, metadata !1106), !dbg !1637
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %209) #13, !dbg !1826
  %337 = icmp eq i64 %332, 0, !dbg !1827
  br i1 %337, label %256, label %226, !llvm.loop !1829

; <label>:338:                                    ; preds = %254
  %339 = icmp eq i64 %231, 16384, !dbg !1873
  %340 = getelementptr inbounds i8, i8* %235, i64 1, !dbg !1877
  call void @llvm.dbg.value(metadata i8* %340, i64 0, metadata !1611, metadata !1106), !dbg !1789
  %341 = sext i1 %339 to i64, !dbg !1879
  %342 = add i64 %231, %341, !dbg !1879
  %343 = select i1 %339, i8* %340, i8* %235, !dbg !1879
  call void @llvm.dbg.value(metadata i8* %343, i64 0, metadata !1611, metadata !1106), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %342, i64 0, metadata !1563, metadata !1106), !dbg !1721
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %9, i8* %343, i64 %342, i32 1, i1 false), !dbg !1880
  br label %256, !dbg !1881

; <label>:344:                                    ; preds = %210
  %345 = tail call i32* @__errno_location() #17, !dbg !1882
  %346 = load i32, i32* %345, align 4, !dbg !1882, !tbaa !1188
  %347 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #13, !dbg !1885
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %346, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %347) #13, !dbg !1886
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1558, metadata !1106), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %219, i64 0, metadata !1610, metadata !1106), !dbg !1783
  call void @llvm.dbg.value(metadata i8 %218, i64 0, metadata !1609, metadata !1106), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %217, i64 0, metadata !1592, metadata !1106), !dbg !1779
  call void @llvm.dbg.value(metadata i8 %216, i64 0, metadata !1589, metadata !1106), !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1558, metadata !1106), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %215, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1565, metadata !1106), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1566, metadata !1106), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %212, i64 0, metadata !1567, metadata !1106), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %211, i64 0, metadata !1568, metadata !1106), !dbg !1637
  br label %348

; <label>:348:                                    ; preds = %210, %344
  %349 = phi i8 [ 0, %344 ], [ 1, %210 ]
  call void @llvm.dbg.value(metadata i64 %217, i64 0, metadata !1592, metadata !1106), !dbg !1779
  call void @llvm.dbg.value(metadata i8 %216, i64 0, metadata !1589, metadata !1106), !dbg !1778
  call void @llvm.dbg.value(metadata i8 %349, i64 0, metadata !1558, metadata !1106), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %215, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1565, metadata !1106), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1566, metadata !1106), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %212, i64 0, metadata !1567, metadata !1106), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %211, i64 0, metadata !1568, metadata !1106), !dbg !1637
  %350 = icmp ugt i64 %217, %211, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %217, i64 0, metadata !1568, metadata !1106), !dbg !1637
  %351 = select i1 %350, i64 %217, i64 %211, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %351, i64 0, metadata !1568, metadata !1106), !dbg !1637
  %352 = and i8 %216, 1, !dbg !1890
  %353 = zext i8 %352 to i64, !dbg !1890
  %354 = add i64 %214, %353, !dbg !1891
  call void @llvm.dbg.value(metadata i64 %354, i64 0, metadata !1565, metadata !1106), !dbg !1640
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %208) #13, !dbg !1892
  br label %427, !dbg !1893

; <label>:355:                                    ; preds = %206, %418
  %356 = phi i64 [ %407, %418 ], [ 0, %206 ]
  %357 = phi i64 [ %419, %418 ], [ 0, %206 ]
  %358 = phi i64 [ %408, %418 ], [ 0, %206 ]
  %359 = phi i64 [ %409, %418 ], [ 0, %206 ]
  %360 = phi i8 [ %410, %418 ], [ 0, %206 ]
  %361 = phi i64 [ %411, %418 ], [ 0, %206 ]
  call void @llvm.dbg.value(metadata i64 %361, i64 0, metadata !1624, metadata !1106), !dbg !1894
  call void @llvm.dbg.value(metadata i8 %360, i64 0, metadata !1622, metadata !1106), !dbg !1895
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1558, metadata !1106), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %359, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %358, i64 0, metadata !1565, metadata !1106), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %357, i64 0, metadata !1567, metadata !1106), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %356, i64 0, metadata !1568, metadata !1106), !dbg !1637
  %362 = call i64 @safe_read(i32 %0, i8* nonnull %9, i64 16384) #13, !dbg !1777
  call void @llvm.dbg.value(metadata i64 %362, i64 0, metadata !1563, metadata !1106), !dbg !1721
  switch i64 %362, label %363 [
    i64 0, label %420
    i64 -1, label %414
  ], !dbg !1896, !llvm.loop !1897

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1900

; <label>:364:                                    ; preds = %363, %406
  %365 = phi i64 [ %407, %406 ], [ %356, %363 ]
  %366 = phi i64 [ %408, %406 ], [ %358, %363 ]
  %367 = phi i64 [ %409, %406 ], [ %359, %363 ]
  %368 = phi i64 [ %412, %406 ], [ %362, %363 ]
  %369 = phi i8 [ %410, %406 ], [ %360, %363 ]
  %370 = phi i64 [ %411, %406 ], [ %361, %363 ]
  %371 = phi i8* [ %372, %406 ], [ %9, %363 ]
  call void @llvm.dbg.value(metadata i8* %371, i64 0, metadata !1625, metadata !1106), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1624, metadata !1106), !dbg !1894
  call void @llvm.dbg.value(metadata i8 %369, i64 0, metadata !1622, metadata !1106), !dbg !1895
  call void @llvm.dbg.value(metadata i64 %368, i64 0, metadata !1563, metadata !1106), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %367, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %366, i64 0, metadata !1565, metadata !1106), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %365, i64 0, metadata !1568, metadata !1106), !dbg !1637
  %372 = getelementptr inbounds i8, i8* %371, i64 1, !dbg !1900
  call void @llvm.dbg.value(metadata i8* %372, i64 0, metadata !1625, metadata !1106), !dbg !1902
  %373 = load i8, i8* %371, align 1, !dbg !1903, !tbaa !1426
  %374 = sext i8 %373 to i32, !dbg !1903
  switch i32 %374, label %394 [
    i32 10, label %375
    i32 13, label %377
    i32 12, label %377
    i32 9, label %381
    i32 32, label %385
    i32 11, label %387
  ], !dbg !1904

; <label>:375:                                    ; preds = %364
  %376 = add i64 %367, 1, !dbg !1905
  call void @llvm.dbg.value(metadata i64 %376, i64 0, metadata !1564, metadata !1106), !dbg !1641
  br label %377, !dbg !1907

; <label>:377:                                    ; preds = %364, %364, %375
  %378 = phi i64 [ %367, %364 ], [ %367, %364 ], [ %376, %375 ]
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1564, metadata !1106), !dbg !1641
  %379 = icmp ugt i64 %370, %365, !dbg !1908
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1568, metadata !1106), !dbg !1637
  %380 = select i1 %379, i64 %370, i64 %365, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1568, metadata !1106), !dbg !1637
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1624, metadata !1106), !dbg !1894
  br label %387, !dbg !1911

; <label>:381:                                    ; preds = %364
  %382 = and i64 %370, 7, !dbg !1912
  %383 = add i64 %370, 8, !dbg !1913
  %384 = sub i64 %383, %382, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %384, i64 0, metadata !1624, metadata !1106), !dbg !1894
  br label %387, !dbg !1915

; <label>:385:                                    ; preds = %364
  %386 = add i64 %370, 1, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %386, i64 0, metadata !1624, metadata !1106), !dbg !1894
  br label %387, !dbg !1917

; <label>:387:                                    ; preds = %402, %385, %364, %381, %377
  %388 = phi i64 [ %365, %402 ], [ %365, %364 ], [ %365, %385 ], [ %365, %381 ], [ %380, %377 ]
  %389 = phi i64 [ %367, %402 ], [ %367, %364 ], [ %367, %385 ], [ %367, %381 ], [ %378, %377 ]
  %390 = phi i64 [ %403, %402 ], [ %370, %364 ], [ %386, %385 ], [ %384, %381 ], [ 0, %377 ]
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1624, metadata !1106), !dbg !1894
  call void @llvm.dbg.value(metadata i64 %389, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %388, i64 0, metadata !1568, metadata !1106), !dbg !1637
  %391 = and i8 %369, 1, !dbg !1918
  %392 = zext i8 %391 to i64, !dbg !1918
  %393 = add i64 %366, %392, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %393, i64 0, metadata !1565, metadata !1106), !dbg !1640
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1622, metadata !1106), !dbg !1895
  br label %406, !dbg !1920

; <label>:394:                                    ; preds = %364
  %395 = tail call i16** @__ctype_b_loc() #17, !dbg !1921
  %396 = load i16*, i16** %395, align 8, !dbg !1921, !tbaa !1113
  %397 = zext i8 %373 to i64, !dbg !1921
  %398 = getelementptr inbounds i16, i16* %396, i64 %397, !dbg !1921
  %399 = load i16, i16* %398, align 2, !dbg !1921, !tbaa !1923
  %400 = and i16 %399, 16384, !dbg !1921
  %401 = icmp eq i16 %400, 0, !dbg !1921
  br i1 %401, label %406, label %402, !dbg !1925

; <label>:402:                                    ; preds = %394
  %403 = add i64 %370, 1, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %403, i64 0, metadata !1624, metadata !1106), !dbg !1894
  %404 = and i16 %399, 8192, !dbg !1928
  %405 = icmp eq i16 %404, 0, !dbg !1928
  br i1 %405, label %406, label %387, !dbg !1930

; <label>:406:                                    ; preds = %402, %394, %387
  %407 = phi i64 [ %388, %387 ], [ %365, %394 ], [ %365, %402 ]
  %408 = phi i64 [ %393, %387 ], [ %366, %394 ], [ %366, %402 ]
  %409 = phi i64 [ %389, %387 ], [ %367, %394 ], [ %367, %402 ]
  %410 = phi i8 [ 0, %387 ], [ %369, %394 ], [ 1, %402 ]
  %411 = phi i64 [ %390, %387 ], [ %370, %394 ], [ %403, %402 ]
  call void @llvm.dbg.value(metadata i64 %411, i64 0, metadata !1624, metadata !1106), !dbg !1894
  call void @llvm.dbg.value(metadata i8 %410, i64 0, metadata !1622, metadata !1106), !dbg !1895
  call void @llvm.dbg.value(metadata i64 %409, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1565, metadata !1106), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %407, i64 0, metadata !1568, metadata !1106), !dbg !1637
  %412 = add i64 %368, -1, !dbg !1931
  call void @llvm.dbg.value(metadata i64 %412, i64 0, metadata !1563, metadata !1106), !dbg !1721
  %413 = icmp eq i64 %412, 0, !dbg !1932
  br i1 %413, label %418, label %364, !dbg !1932, !llvm.loop !1897

; <label>:414:                                    ; preds = %355
  %415 = tail call i32* @__errno_location() #17, !dbg !1933
  %416 = load i32, i32* %415, align 4, !dbg !1933, !tbaa !1188
  %417 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #13, !dbg !1936
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %416, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %417) #13, !dbg !1937
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1558, metadata !1106), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %361, i64 0, metadata !1624, metadata !1106), !dbg !1894
  call void @llvm.dbg.value(metadata i8 %360, i64 0, metadata !1622, metadata !1106), !dbg !1895
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1558, metadata !1106), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %359, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %358, i64 0, metadata !1565, metadata !1106), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %357, i64 0, metadata !1567, metadata !1106), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %356, i64 0, metadata !1568, metadata !1106), !dbg !1637
  br label %420

; <label>:418:                                    ; preds = %406
  %419 = add i64 %362, %357, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %361, i64 0, metadata !1624, metadata !1106), !dbg !1894
  call void @llvm.dbg.value(metadata i8 %360, i64 0, metadata !1622, metadata !1106), !dbg !1895
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1558, metadata !1106), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %359, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %358, i64 0, metadata !1565, metadata !1106), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %357, i64 0, metadata !1567, metadata !1106), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %356, i64 0, metadata !1568, metadata !1106), !dbg !1637
  br label %355, !dbg !1896, !llvm.loop !1939

; <label>:420:                                    ; preds = %355, %414
  %421 = phi i8 [ 0, %414 ], [ 1, %355 ]
  call void @llvm.dbg.value(metadata i64 %361, i64 0, metadata !1624, metadata !1106), !dbg !1894
  call void @llvm.dbg.value(metadata i8 %360, i64 0, metadata !1622, metadata !1106), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %421, i64 0, metadata !1558, metadata !1106), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %359, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %358, i64 0, metadata !1565, metadata !1106), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %357, i64 0, metadata !1567, metadata !1106), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %356, i64 0, metadata !1568, metadata !1106), !dbg !1637
  %422 = icmp ugt i64 %361, %356, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %361, i64 0, metadata !1568, metadata !1106), !dbg !1637
  %423 = select i1 %422, i64 %361, i64 %356, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1568, metadata !1106), !dbg !1637
  %424 = and i8 %360, 1, !dbg !1944
  %425 = zext i8 %424 to i64, !dbg !1944
  %426 = add i64 %358, %425, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %426, i64 0, metadata !1565, metadata !1106), !dbg !1640
  br label %427

; <label>:427:                                    ; preds = %93, %106, %87, %111, %96, %420, %348
  %428 = phi i64 [ %351, %348 ], [ %423, %420 ], [ 0, %96 ], [ 0, %87 ], [ 0, %111 ], [ 0, %106 ], [ 0, %93 ]
  %429 = phi i64 [ %212, %348 ], [ %357, %420 ], [ %94, %96 ], [ %90, %87 ], [ %107, %111 ], [ %107, %106 ], [ %94, %93 ]
  %430 = phi i64 [ %213, %348 ], [ 0, %420 ], [ 0, %96 ], [ 0, %87 ], [ 0, %111 ], [ 0, %106 ], [ 0, %93 ]
  %431 = phi i64 [ %354, %348 ], [ %426, %420 ], [ 0, %96 ], [ 0, %87 ], [ 0, %111 ], [ 0, %106 ], [ 0, %93 ]
  %432 = phi i64 [ %215, %348 ], [ %359, %420 ], [ 0, %96 ], [ 0, %87 ], [ %108, %111 ], [ %108, %106 ], [ 0, %93 ]
  %433 = phi i8 [ %349, %348 ], [ %421, %420 ], [ 0, %96 ], [ 1, %87 ], [ 0, %111 ], [ 1, %106 ], [ 1, %93 ]
  call void @llvm.dbg.value(metadata i8 %433, i64 0, metadata !1558, metadata !1106), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %432, i64 0, metadata !1564, metadata !1106), !dbg !1641
  call void @llvm.dbg.value(metadata i64 %431, i64 0, metadata !1565, metadata !1106), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %430, i64 0, metadata !1566, metadata !1106), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1567, metadata !1106), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %428, i64 0, metadata !1568, metadata !1106), !dbg !1637
  %434 = zext i8 %25 to i32, !dbg !1946
  %435 = load i1, i1* @print_chars, align 1
  %436 = zext i1 %435 to i32, !dbg !1948
  %437 = icmp ult i32 %434, %436, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1566, metadata !1106), !dbg !1639
  %438 = select i1 %437, i64 %429, i64 %430, !dbg !1950
  call void @llvm.dbg.value(metadata i64 %438, i64 0, metadata !1566, metadata !1106), !dbg !1639
  call fastcc void @write_counts(i64 %432, i64 %431, i64 %438, i64 %429, i64 %428, i8* %1), !dbg !1951
  %439 = load i64, i64* @total_lines, align 8, !dbg !1952, !tbaa !1155
  %440 = add i64 %439, %432, !dbg !1952
  store i64 %440, i64* @total_lines, align 8, !dbg !1952, !tbaa !1155
  %441 = load i64, i64* @total_words, align 8, !dbg !1953, !tbaa !1155
  %442 = add i64 %441, %431, !dbg !1953
  store i64 %442, i64* @total_words, align 8, !dbg !1953, !tbaa !1155
  %443 = load i64, i64* @total_chars, align 8, !dbg !1954, !tbaa !1155
  %444 = add i64 %443, %438, !dbg !1954
  store i64 %444, i64* @total_chars, align 8, !dbg !1954, !tbaa !1155
  %445 = load i64, i64* @total_bytes, align 8, !dbg !1955, !tbaa !1155
  %446 = add i64 %445, %429, !dbg !1955
  store i64 %446, i64* @total_bytes, align 8, !dbg !1955, !tbaa !1155
  %447 = load i64, i64* @max_line_length, align 8, !dbg !1956, !tbaa !1155
  %448 = icmp ugt i64 %428, %447, !dbg !1958
  br i1 %448, label %449, label %450, !dbg !1959

; <label>:449:                                    ; preds = %427
  store i64 %428, i64* @max_line_length, align 8, !dbg !1960, !tbaa !1155
  br label %450, !dbg !1961

; <label>:450:                                    ; preds = %449, %427
  %451 = and i8 %433, 1, !dbg !1962
  %452 = icmp ne i8 %451, 0, !dbg !1962
  call void @llvm.lifetime.end.p0i8(i64 16385, i8* nonnull %9) #13, !dbg !1963
  ret i1 %452, !dbg !1964
}

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @write_counts(i64, i64, i64, i64, i64, i8*) unnamed_addr #6 !dbg !320 {
  %7 = alloca [21 x i8], align 16
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !324, metadata !1106), !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !325, metadata !1106), !dbg !1966
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !326, metadata !1106), !dbg !1967
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !327, metadata !1106), !dbg !1968
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !328, metadata !1106), !dbg !1969
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !329, metadata !1106), !dbg !1970
  %8 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0, !dbg !1971
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %8) #13, !dbg !1971
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %7, metadata !331, metadata !1106), !dbg !1972
  %9 = load i1, i1* @print_lines, align 1
  br i1 %9, label %10, label %14, !dbg !1973

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* @number_width, align 4, !dbg !1974, !tbaa !1188
  %12 = call i8* @umaxtostr(i64 %0, i8* nonnull %8) #13, !dbg !1974
  %13 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 1), i32 %11, i8* %12) #13, !dbg !1974
  br label %14, !dbg !1977

; <label>:14:                                     ; preds = %10, %6
  %15 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %10 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 1), %6 ]
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !330, metadata !1106), !dbg !1978
  %16 = load i1, i1* @print_words, align 1
  br i1 %16, label %17, label %21, !dbg !1979

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* @number_width, align 4, !dbg !1980, !tbaa !1188
  %19 = call i8* @umaxtostr(i64 %1, i8* nonnull %8) #13, !dbg !1980
  %20 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %15, i32 %18, i8* %19) #13, !dbg !1980
  br label %21, !dbg !1983

; <label>:21:                                     ; preds = %17, %14
  %22 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %17 ], [ %15, %14 ]
  call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !330, metadata !1106), !dbg !1978
  %23 = load i1, i1* @print_chars, align 1
  br i1 %23, label %24, label %28, !dbg !1984

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* @number_width, align 4, !dbg !1985, !tbaa !1188
  %26 = call i8* @umaxtostr(i64 %2, i8* nonnull %8) #13, !dbg !1985
  %27 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %22, i32 %25, i8* %26) #13, !dbg !1985
  br label %28, !dbg !1988

; <label>:28:                                     ; preds = %24, %21
  %29 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %24 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !330, metadata !1106), !dbg !1978
  %30 = load i1, i1* @print_bytes, align 1
  br i1 %30, label %31, label %35, !dbg !1989

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* @number_width, align 4, !dbg !1990, !tbaa !1188
  %33 = call i8* @umaxtostr(i64 %3, i8* nonnull %8) #13, !dbg !1990
  %34 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i32 %32, i8* %33) #13, !dbg !1990
  br label %35, !dbg !1993

; <label>:35:                                     ; preds = %31, %28
  %36 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %31 ], [ %29, %28 ]
  call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !330, metadata !1106), !dbg !1978
  %37 = load i1, i1* @print_linelength, align 1
  br i1 %37, label %38, label %42, !dbg !1994

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* @number_width, align 4, !dbg !1995, !tbaa !1188
  %40 = call i8* @umaxtostr(i64 %4, i8* nonnull %8) #13, !dbg !1995
  %41 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %36, i32 %39, i8* %40) #13, !dbg !1995
  br label %42, !dbg !1998

; <label>:42:                                     ; preds = %38, %35
  %43 = icmp eq i8* %5, null, !dbg !1999
  br i1 %43, label %52, label %44, !dbg !2001

; <label>:44:                                     ; preds = %42
  %45 = call i8* @strchr(i8* nonnull %5, i32 10) #15, !dbg !2002
  %46 = icmp eq i8* %45, null, !dbg !2002
  br i1 %46, label %49, label %47, !dbg !2002

; <label>:47:                                     ; preds = %44
  %48 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %5) #13, !dbg !2002
  br label %49, !dbg !2002

; <label>:49:                                     ; preds = %44, %47
  %50 = phi i8* [ %48, %47 ], [ %5, %44 ], !dbg !2002
  %51 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i8* %50) #13, !dbg !2002
  br label %52, !dbg !2002

; <label>:52:                                     ; preds = %42, %49
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !2003, metadata !1106) #13, !dbg !2009
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2011, !tbaa !1113
  %54 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %53, i64 0, i32 5, !dbg !2011
  %55 = load i8*, i8** %54, align 8, !dbg !2011, !tbaa !2012
  %56 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %53, i64 0, i32 6, !dbg !2011
  %57 = load i8*, i8** %56, align 8, !dbg !2011, !tbaa !2014
  %58 = icmp ult i8* %55, %57, !dbg !2011
  br i1 %58, label %61, label %59, !dbg !2011, !prof !2015

; <label>:59:                                     ; preds = %52
  %60 = call i32 @__overflow(%struct._IO_FILE* %53, i32 10) #13, !dbg !2011
  br label %63, !dbg !2011

; <label>:61:                                     ; preds = %52
  %62 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !2011
  store i8* %62, i8** %54, align 8, !dbg !2011, !tbaa !2012
  store i8 10, i8* %55, align 1, !dbg !2011, !tbaa !1426
  br label %63, !dbg !2011

; <label>:63:                                     ; preds = %59, %61
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %8) #13, !dbg !2016
  ret void, !dbg !2016
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @wcwidth(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @iswspace(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.argv_iterator* @argv_iter_init_argv(i8** nonnull) local_unnamed_addr #6 !dbg !2017 {
  tail call void @llvm.dbg.value(metadata i8** %0, i64 0, metadata !2071, metadata !1106), !dbg !2073
  %2 = tail call noalias i8* @malloc(i64 48) #13, !dbg !2074
  tail call void @llvm.dbg.value(metadata %struct.argv_iterator* %5, i64 0, metadata !2072, metadata !1106), !dbg !2075
  %3 = icmp eq i8* %2, null, !dbg !2076
  br i1 %3, label %11, label %4, !dbg !2078

; <label>:4:                                      ; preds = %1
  %5 = bitcast i8* %2 to %struct.argv_iterator*, !dbg !2074
  %6 = bitcast i8* %2 to %struct._IO_FILE**, !dbg !2079
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8, !dbg !2080, !tbaa !2081
  %7 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !2083
  %8 = bitcast i8* %7 to i8***, !dbg !2083
  store i8** %0, i8*** %8, align 8, !dbg !2084, !tbaa !2085
  %9 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !2086
  %10 = bitcast i8* %9 to i8***, !dbg !2086
  store i8** %0, i8*** %10, align 8, !dbg !2087, !tbaa !2088
  br label %11, !dbg !2089

; <label>:11:                                     ; preds = %1, %4
  %12 = phi %struct.argv_iterator* [ %5, %4 ], [ null, %1 ]
  ret %struct.argv_iterator* %12, !dbg !2090
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.argv_iterator* @argv_iter_init_stream(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !2091 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2095, metadata !1106), !dbg !2097
  %2 = tail call noalias i8* @malloc(i64 48) #13, !dbg !2098
  tail call void @llvm.dbg.value(metadata %struct.argv_iterator* %5, i64 0, metadata !2096, metadata !1106), !dbg !2099
  %3 = icmp eq i8* %2, null, !dbg !2100
  br i1 %3, label %8, label %4, !dbg !2102

; <label>:4:                                      ; preds = %1
  %5 = bitcast i8* %2 to %struct.argv_iterator*, !dbg !2098
  %6 = bitcast i8* %2 to %struct._IO_FILE**, !dbg !2103
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8, !dbg !2104, !tbaa !2081
  %7 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !2105
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 32, i32 8, i1 false), !dbg !2106
  br label %8, !dbg !2107

; <label>:8:                                      ; preds = %1, %4
  %9 = phi %struct.argv_iterator* [ %5, %4 ], [ null, %1 ]
  ret %struct.argv_iterator* %9, !dbg !2108
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @argv_iter(%struct.argv_iterator* nonnull, i32* nocapture nonnull) local_unnamed_addr #6 !dbg !2109 {
  tail call void @llvm.dbg.value(metadata %struct.argv_iterator* %0, i64 0, metadata !2114, metadata !1106), !dbg !2120
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !2115, metadata !1106), !dbg !2121
  %3 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 0, !dbg !2122
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2122, !tbaa !2081
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !2123
  br i1 %5, label %21, label %6, !dbg !2124

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 2, !dbg !2125
  %8 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 3, !dbg !2126
  %9 = tail call i64 @getdelim(i8** %7, i64* %8, i32 0, %struct._IO_FILE* nonnull %4) #13, !dbg !2127
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2116, metadata !1106), !dbg !2128
  %10 = icmp slt i64 %9, 0, !dbg !2129
  br i1 %10, label %11, label %16, !dbg !2131

; <label>:11:                                     ; preds = %6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2132, !tbaa !2081
  %13 = tail call i32 @feof(%struct._IO_FILE* %12) #13, !dbg !2134
  %14 = icmp eq i32 %13, 0, !dbg !2134
  %15 = select i1 %14, i32 4, i32 2, !dbg !2134
  store i32 %15, i32* %1, align 4, !dbg !2135, !tbaa !1426
  br label %31, !dbg !2136

; <label>:16:                                     ; preds = %6
  store i32 1, i32* %1, align 4, !dbg !2137, !tbaa !1426
  %17 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 1, !dbg !2138
  %18 = load i64, i64* %17, align 8, !dbg !2139, !tbaa !2140
  %19 = add i64 %18, 1, !dbg !2139
  store i64 %19, i64* %17, align 8, !dbg !2139, !tbaa !2140
  %20 = load i8*, i8** %7, align 8, !dbg !2141, !tbaa !2142
  br label %31, !dbg !2143

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 5, !dbg !2144
  %23 = load i8**, i8*** %22, align 8, !dbg !2144, !tbaa !2088
  %24 = load i8*, i8** %23, align 8, !dbg !2147, !tbaa !1113
  %25 = icmp eq i8* %24, null, !dbg !2148
  br i1 %25, label %26, label %27, !dbg !2149

; <label>:26:                                     ; preds = %21
  store i32 2, i32* %1, align 4, !dbg !2150, !tbaa !1426
  br label %31, !dbg !2152

; <label>:27:                                     ; preds = %21
  store i32 1, i32* %1, align 4, !dbg !2153, !tbaa !1426
  %28 = load i8**, i8*** %22, align 8, !dbg !2155, !tbaa !2088
  %29 = getelementptr inbounds i8*, i8** %28, i64 1, !dbg !2155
  store i8** %29, i8*** %22, align 8, !dbg !2155, !tbaa !2088
  %30 = load i8*, i8** %28, align 8, !dbg !2156, !tbaa !1113
  br label %31, !dbg !2157

; <label>:31:                                     ; preds = %11, %16, %27, %26
  %32 = phi i8* [ null, %26 ], [ %30, %27 ], [ null, %11 ], [ %20, %16 ]
  ret i8* %32, !dbg !2158
}

declare i64 @getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argv_iter_n_args(%struct.argv_iterator* nocapture nonnull readonly) local_unnamed_addr #9 !dbg !2159 {
  tail call void @llvm.dbg.value(metadata %struct.argv_iterator* %0, i64 0, metadata !2165, metadata !1106), !dbg !2166
  %2 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 0, !dbg !2167
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2167, !tbaa !2081
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !2168
  br i1 %4, label %8, label %5, !dbg !2168

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 1, !dbg !2169
  %7 = load i64, i64* %6, align 8, !dbg !2169, !tbaa !2140
  br label %17, !dbg !2168

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 5, !dbg !2170
  %10 = bitcast i8*** %9 to i64*, !dbg !2170
  %11 = load i64, i64* %10, align 8, !dbg !2170, !tbaa !2088
  %12 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 4, !dbg !2171
  %13 = bitcast i8*** %12 to i64*, !dbg !2171
  %14 = load i64, i64* %13, align 8, !dbg !2171, !tbaa !2085
  %15 = sub i64 %11, %14, !dbg !2172
  %16 = ashr exact i64 %15, 3, !dbg !2172
  br label %17, !dbg !2168

; <label>:17:                                     ; preds = %8, %5
  %18 = phi i64 [ %7, %5 ], [ %16, %8 ], !dbg !2168
  ret i64 %18, !dbg !2173
}

; Function Attrs: nounwind sspstrong uwtable
define void @argv_iter_free(%struct.argv_iterator* nocapture nonnull) local_unnamed_addr #6 !dbg !2174 {
  tail call void @llvm.dbg.value(metadata %struct.argv_iterator* %0, i64 0, metadata !2178, metadata !1106), !dbg !2179
  %2 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 0, !dbg !2180
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2180, !tbaa !2081
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !2182
  br i1 %4, label %8, label %5, !dbg !2183

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 2, !dbg !2184
  %7 = load i8*, i8** %6, align 8, !dbg !2184, !tbaa !2142
  tail call void @free(i8* %7) #13, !dbg !2185
  br label %8, !dbg !2185

; <label>:8:                                      ; preds = %1, %5
  %9 = bitcast %struct.argv_iterator* %0 to i8*, !dbg !2186
  tail call void @free(i8* nonnull %9) #13, !dbg !2187
  ret void, !dbg !2188
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !2189 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2191, metadata !1106), !dbg !2192
  store i8* %0, i8** @file_name, align 8, !dbg !2193, !tbaa !1113
  ret void, !dbg !2194
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !2195 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !2199, metadata !1106), !dbg !2200
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2201, !tbaa !2202
  ret void, !dbg !2204
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !2205 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2210, !tbaa !1113
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #13, !dbg !2211
  %3 = icmp eq i32 %2, 0, !dbg !2212
  br i1 %3, label %21, label %4, !dbg !2213

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2214, !tbaa !2202, !range !2215
  %6 = icmp eq i8 %5, 0, !dbg !2214
  %7 = tail call i32* @__errno_location() #17, !dbg !2216
  br i1 %6, label %11, label %8, !dbg !2218

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !2219, !tbaa !1188
  %10 = icmp eq i32 %9, 32, !dbg !2220
  br i1 %10, label %21, label %11, !dbg !2221

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i32 5) #13, !dbg !2222
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !2207, metadata !1106), !dbg !2223
  %13 = load i8*, i8** @file_name, align 8, !dbg !2224, !tbaa !1113
  %14 = icmp eq i8* %13, null, !dbg !2224
  %15 = load i32, i32* %7, align 4, !tbaa !1188
  br i1 %14, label %18, label %16, !dbg !2225

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #13, !dbg !2226
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.57, i64 0, i64 0), i8* %17, i8* %12) #13, !dbg !2227
  br label %19, !dbg !2227

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.58, i64 0, i64 0), i8* %12) #13, !dbg !2228
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !2229, !tbaa !1188
  tail call void @_exit(i32 %20) #16, !dbg !2230
  unreachable, !dbg !2230

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2231, !tbaa !1113
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #13, !dbg !2233
  %24 = icmp eq i32 %23, 0, !dbg !2234
  br i1 %24, label %27, label %25, !dbg !2235

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !2236, !tbaa !1188
  tail call void @_exit(i32 %26) #16, !dbg !2237
  unreachable, !dbg !2237

; <label>:27:                                     ; preds = %21
  ret void, !dbg !2238
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !2239 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2245, metadata !1106), !dbg !2251
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2246, metadata !1106), !dbg !2252
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2247, metadata !1106), !dbg !2253
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2248, metadata !1106), !dbg !2254
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #13, !dbg !2255
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2249, metadata !1106), !dbg !2255
  ret void, !dbg !2256
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !2257 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2301, metadata !1106), !dbg !2303
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2302, metadata !1106), !dbg !2304
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2305
  br i1 %3, label %7, label %4, !dbg !2307

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !2308
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2245, metadata !1106) #13, !dbg !2309
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2246, metadata !1106) #13, !dbg !2311
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2247, metadata !1106) #13, !dbg !2312
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2248, metadata !1106) #13, !dbg !2313
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #13, !dbg !2314
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2249, metadata !1106) #13, !dbg !2314
  br label %7, !dbg !2315

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !2316
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !2317 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2322, metadata !1106), !dbg !2325
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2323, metadata !1106), !dbg !2326
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2327
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2324, metadata !1106), !dbg !2328
  store i8 0, i8* %3, align 1, !dbg !2329, !tbaa !1426
  br label %4, !dbg !2330, !llvm.loop !2333

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2324, metadata !1106), !dbg !2328
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2322, metadata !1106), !dbg !2325
  %7 = urem i64 %5, 10, !dbg !2335
  %8 = trunc i64 %7 to i8, !dbg !2336
  %9 = or i8 %8, 48, !dbg !2336
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !2337
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2324, metadata !1106), !dbg !2328
  store i8 %9, i8* %10, align 1, !dbg !2338, !tbaa !1426
  %11 = udiv i64 %5, 10, !dbg !2339
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2322, metadata !1106), !dbg !2325
  %12 = icmp ugt i64 %5, 9, !dbg !2340
  br i1 %12, label %4, label %13, !dbg !2341, !llvm.loop !2333

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2324, metadata !1106), !dbg !2328
  ret i8* %10, !dbg !2342
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define i32 @mb_width_aux(i32) local_unnamed_addr #11 !dbg !2343 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2349, metadata !1106), !dbg !2351
  %2 = tail call i32 @wcwidth(i32 %0) #13, !dbg !2352
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2350, metadata !1106), !dbg !2353
  %3 = icmp sgt i32 %2, -1, !dbg !2354
  br i1 %3, label %8, label %4, !dbg !2355

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @iswcntrl(i32 %0) #13, !dbg !2356
  %6 = icmp eq i32 %5, 0, !dbg !2356
  %7 = zext i1 %6 to i32, !dbg !2356
  br label %8, !dbg !2355

; <label>:8:                                      ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ %2, %1 ], !dbg !2355
  ret i32 %9, !dbg !2357
}

; Function Attrs: nounwind
declare i32 @iswcntrl(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define void @mb_copy(%struct.mbchar*, %struct.mbchar* readonly) local_unnamed_addr #11 !dbg !2358 {
  tail call void @llvm.dbg.value(metadata %struct.mbchar* %0, i64 0, metadata !2376, metadata !1106), !dbg !2378
  tail call void @llvm.dbg.value(metadata %struct.mbchar* %1, i64 0, metadata !2377, metadata !1106), !dbg !2379
  %3 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 0, !dbg !2380
  %4 = load i8*, i8** %3, align 8, !dbg !2380, !tbaa !2382
  %5 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 4, i64 0, !dbg !2384
  %6 = icmp eq i8* %4, %5, !dbg !2385
  br i1 %6, label %9, label %7, !dbg !2386

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 1, !dbg !2387
  br label %13, !dbg !2386

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 4, i64 0, !dbg !2388
  %11 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 1, !dbg !2390
  %12 = load i64, i64* %11, align 8, !dbg !2390, !tbaa !2391
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %4, i64 %12, i32 8, i1 false), !dbg !2392
  br label %13, !dbg !2393

; <label>:13:                                     ; preds = %7, %9
  %14 = phi i64* [ %8, %7 ], [ %11, %9 ], !dbg !2387
  %15 = phi i8* [ %4, %7 ], [ %10, %9 ]
  %16 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 0
  store i8* %15, i8** %16, align 8, !tbaa !2382
  %17 = load i64, i64* %14, align 8, !dbg !2387, !tbaa !2391
  %18 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 1, !dbg !2394
  store i64 %17, i64* %18, align 8, !dbg !2395, !tbaa !2391
  %19 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 2, !dbg !2396
  %20 = load i8, i8* %19, align 8, !dbg !2396, !tbaa !2398, !range !2215
  %21 = icmp eq i8 %20, 0, !dbg !2396
  %22 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 2, !dbg !2399
  store i8 %20, i8* %22, align 8, !dbg !2400, !tbaa !2398
  br i1 %21, label %27, label %23, !dbg !2401

; <label>:23:                                     ; preds = %13
  %24 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 3, !dbg !2402
  %25 = load i32, i32* %24, align 4, !dbg !2402, !tbaa !2403
  %26 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 3, !dbg !2404
  store i32 %25, i32* %26, align 4, !dbg !2405, !tbaa !2403
  br label %27, !dbg !2406

; <label>:27:                                     ; preds = %13, %23
  ret void, !dbg !2407
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define zeroext i1 @is_basic(i8 signext) local_unnamed_addr #12 !dbg !2408 {
  tail call void @llvm.dbg.value(metadata i8 %0, i64 0, metadata !2410, metadata !1106), !dbg !2411
  %2 = zext i8 %0 to i32, !dbg !2412
  %3 = lshr i32 %2, 5, !dbg !2413
  %4 = zext i32 %3 to i64, !dbg !2414
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @is_basic_table, i64 0, i64 %4, !dbg !2414
  %6 = load i32, i32* %5, align 4, !dbg !2414, !tbaa !1188
  %7 = and i32 %2, 31, !dbg !2415
  %8 = shl i32 1, %7, !dbg !2416
  %9 = and i32 %6, %8, !dbg !2416
  %10 = icmp ne i32 %9, 0, !dbg !2416
  ret i1 %10, !dbg !2417
}

; Function Attrs: nounwind sspstrong uwtable
define double @physmem_total() local_unnamed_addr #6 !dbg !2418 {
  %1 = alloca %struct.sysinfo, align 8
  %2 = tail call i64 @sysconf(i32 85) #13, !dbg !2454
  tail call void @llvm.dbg.value(metadata double %23, i64 0, metadata !2422, metadata !1106), !dbg !2455
  %3 = tail call i64 @sysconf(i32 30) #13, !dbg !2456
  tail call void @llvm.dbg.value(metadata double %22, i64 0, metadata !2424, metadata !1106), !dbg !2457
  %4 = or i64 %3, %2, !dbg !2458
  %5 = icmp sgt i64 %4, -1, !dbg !2458
  br i1 %5, label %21, label %6, !dbg !2458

; <label>:6:                                      ; preds = %0
  %7 = bitcast %struct.sysinfo* %1 to i8*, !dbg !2460
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %7) #13, !dbg !2460
  tail call void @llvm.dbg.value(metadata %struct.sysinfo* %1, i64 0, metadata !2425, metadata !1106), !dbg !2461
  %8 = call i32 @sysinfo(%struct.sysinfo* nonnull %1) #13, !dbg !2462
  %9 = icmp eq i32 %8, 0, !dbg !2464
  br i1 %9, label %10, label %18, !dbg !2465

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 2, !dbg !2466
  %12 = load i64, i64* %11, align 8, !dbg !2466, !tbaa !2467
  %13 = uitofp i64 %12 to double, !dbg !2469
  %14 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 12, !dbg !2470
  %15 = load i32, i32* %14, align 8, !dbg !2470, !tbaa !2471
  %16 = uitofp i32 %15 to double, !dbg !2472
  %17 = fmul double %13, %16, !dbg !2473
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %7) #13, !dbg !2474
  br label %19

; <label>:18:                                     ; preds = %6
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %7) #13, !dbg !2474
  br label %19

; <label>:19:                                     ; preds = %10, %18
  %20 = phi double [ 0x4190000000000000, %18 ], [ %17, %10 ]
  ret double %20

; <label>:21:                                     ; preds = %0
  %22 = sitofp i64 %3 to double, !dbg !2456
  %23 = sitofp i64 %2 to double, !dbg !2454
  %24 = fmul double %23, %22, !dbg !2475
  ret double %24, !dbg !2476
}

; Function Attrs: nounwind
declare i64 @sysconf(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sysinfo(%struct.sysinfo*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define double @physmem_available() local_unnamed_addr #6 !dbg !2477 {
  %1 = alloca %struct.sysinfo, align 8
  %2 = alloca %struct.sysinfo, align 8
  %3 = tail call i64 @sysconf(i32 86) #13, !dbg !2484
  tail call void @llvm.dbg.value(metadata double %9, i64 0, metadata !2479, metadata !1106), !dbg !2485
  %4 = tail call i64 @sysconf(i32 30) #13, !dbg !2486
  tail call void @llvm.dbg.value(metadata double %8, i64 0, metadata !2481, metadata !1106), !dbg !2487
  %5 = or i64 %4, %3, !dbg !2488
  %6 = icmp sgt i64 %5, -1, !dbg !2488
  br i1 %6, label %7, label %11, !dbg !2488

; <label>:7:                                      ; preds = %0
  %8 = sitofp i64 %4 to double, !dbg !2486
  %9 = sitofp i64 %3 to double, !dbg !2484
  %10 = fmul double %9, %8, !dbg !2490
  br label %52

; <label>:11:                                     ; preds = %0
  %12 = bitcast %struct.sysinfo* %2 to i8*, !dbg !2491
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %12) #13, !dbg !2491
  tail call void @llvm.dbg.value(metadata %struct.sysinfo* %2, i64 0, metadata !2482, metadata !1106), !dbg !2492
  %13 = call i32 @sysinfo(%struct.sysinfo* nonnull %2) #13, !dbg !2493
  %14 = icmp eq i32 %13, 0, !dbg !2495
  br i1 %14, label %15, label %27, !dbg !2496

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %2, i64 0, i32 3, !dbg !2497
  %17 = load i64, i64* %16, align 8, !dbg !2497, !tbaa !2498
  %18 = uitofp i64 %17 to double, !dbg !2499
  %19 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %2, i64 0, i32 5, !dbg !2500
  %20 = load i64, i64* %19, align 8, !dbg !2500, !tbaa !2501
  %21 = uitofp i64 %20 to double, !dbg !2502
  %22 = fadd double %18, %21, !dbg !2503
  %23 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %2, i64 0, i32 12, !dbg !2504
  %24 = load i32, i32* %23, align 8, !dbg !2504, !tbaa !2471
  %25 = uitofp i32 %24 to double, !dbg !2505
  %26 = fmul double %22, %25, !dbg !2506
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %12) #13, !dbg !2507
  br label %52

; <label>:27:                                     ; preds = %11
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %12) #13, !dbg !2507
  %28 = call i64 @sysconf(i32 85) #13, !dbg !2508
  %29 = call i64 @sysconf(i32 30) #13, !dbg !2510
  %30 = or i64 %29, %28, !dbg !2511
  %31 = icmp sgt i64 %30, -1, !dbg !2511
  br i1 %31, label %45, label %32, !dbg !2511

; <label>:32:                                     ; preds = %27
  %33 = bitcast %struct.sysinfo* %1 to i8*, !dbg !2512
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %33) #13, !dbg !2512
  call void @llvm.dbg.value(metadata %struct.sysinfo* %1, i64 0, metadata !2425, metadata !1106) #13, !dbg !2513
  %34 = call i32 @sysinfo(%struct.sysinfo* nonnull %1) #13, !dbg !2514
  %35 = icmp eq i32 %34, 0, !dbg !2515
  br i1 %35, label %36, label %44, !dbg !2516

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 2, !dbg !2517
  %38 = load i64, i64* %37, align 8, !dbg !2517, !tbaa !2467
  %39 = uitofp i64 %38 to double, !dbg !2518
  %40 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 12, !dbg !2519
  %41 = load i32, i32* %40, align 8, !dbg !2519, !tbaa !2471
  %42 = uitofp i32 %41 to double, !dbg !2520
  %43 = fmul double %39, %42, !dbg !2521
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %33) #13, !dbg !2522
  br label %49

; <label>:44:                                     ; preds = %32
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %33) #13, !dbg !2522
  br label %49

; <label>:45:                                     ; preds = %27
  %46 = sitofp i64 %29 to double, !dbg !2510
  %47 = sitofp i64 %28 to double, !dbg !2508
  %48 = fmul double %47, %46, !dbg !2523
  br label %49, !dbg !2524

; <label>:49:                                     ; preds = %36, %44, %45
  %50 = phi double [ %48, %45 ], [ 0x4190000000000000, %44 ], [ %43, %36 ]
  %51 = fmul double %50, 2.500000e-01, !dbg !2525
  br label %52, !dbg !2526

; <label>:52:                                     ; preds = %15, %7, %49
  %53 = phi double [ %51, %49 ], [ %26, %15 ], [ %10, %7 ]
  ret double %53, !dbg !2527
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2528 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2530, metadata !1106), !dbg !2533
  %2 = icmp eq i8* %0, null, !dbg !2534
  br i1 %2, label %3, label %6, !dbg !2536

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2537, !tbaa !1113
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.73, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #19, !dbg !2539
  tail call void @abort() #16, !dbg !2540
  unreachable, !dbg !2540

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #15, !dbg !2541
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2531, metadata !1106), !dbg !2542
  %8 = icmp eq i8* %7, null, !dbg !2543
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2544
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2545
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2532, metadata !1106), !dbg !2546
  %11 = ptrtoint i8* %10 to i64, !dbg !2547
  %12 = ptrtoint i8* %0 to i64, !dbg !2547
  %13 = sub i64 %11, %12, !dbg !2547
  %14 = icmp sgt i64 %13, 6, !dbg !2549
  br i1 %14, label %15, label %24, !dbg !2550

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2551
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.74, i64 0, i64 0), i64 7) #15, !dbg !2552
  %18 = icmp eq i32 %17, 0, !dbg !2553
  br i1 %18, label %19, label %24, !dbg !2554

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2530, metadata !1106), !dbg !2533
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i64 3) #15, !dbg !2555
  %21 = icmp eq i32 %20, 0, !dbg !2558
  br i1 %21, label %22, label %24, !dbg !2559

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2560
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2530, metadata !1106), !dbg !2533
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2562, !tbaa !1113
  br label %24, !dbg !2563

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2530, metadata !1106), !dbg !2533
  store i8* %25, i8** @program_name, align 8, !dbg !2564, !tbaa !1113
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2565, !tbaa !1113
  ret void, !dbg !2566
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2567 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2572, metadata !1106), !dbg !2575
  %2 = tail call i32* @__errno_location() #17, !dbg !2576
  %3 = load i32, i32* %2, align 4, !dbg !2576, !tbaa !1188
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2573, metadata !1106), !dbg !2577
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2578
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2578
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !2578
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #13, !dbg !2579
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2579
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2574, metadata !1106), !dbg !2580
  store i32 %3, i32* %2, align 4, !dbg !2581, !tbaa !1188
  ret %struct.quoting_options* %8, !dbg !2582
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !2583 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2589, metadata !1106), !dbg !2590
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2591
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2591
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2592
  %5 = load i32, i32* %4, align 8, !dbg !2592, !tbaa !2593
  ret i32 %5, !dbg !2595
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2596 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2600, metadata !1106), !dbg !2602
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2601, metadata !1106), !dbg !2603
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2604
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2604
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2605
  store i32 %1, i32* %5, align 8, !dbg !2606, !tbaa !2593
  ret void, !dbg !2607
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2608 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2612, metadata !1106), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2613, metadata !1106), !dbg !2621
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2614, metadata !1106), !dbg !2622
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2615, metadata !1106), !dbg !2623
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2624
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2624
  %6 = lshr i8 %1, 5, !dbg !2625
  %7 = zext i8 %6 to i64, !dbg !2625
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2626
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2616, metadata !1106), !dbg !2627
  %9 = and i8 %1, 31, !dbg !2628
  %10 = zext i8 %9 to i32, !dbg !2629
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2618, metadata !1106), !dbg !2630
  %11 = load i32, i32* %8, align 4, !dbg !2631, !tbaa !1188
  %12 = lshr i32 %11, %10, !dbg !2632
  %13 = and i32 %12, 1, !dbg !2633
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2619, metadata !1106), !dbg !2634
  %14 = and i32 %2, 1, !dbg !2635
  %15 = xor i32 %13, %14, !dbg !2636
  %16 = shl i32 %15, %10, !dbg !2637
  %17 = xor i32 %16, %11, !dbg !2638
  store i32 %17, i32* %8, align 4, !dbg !2638, !tbaa !1188
  ret i32 %13, !dbg !2639
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2640 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2644, metadata !1106), !dbg !2647
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2645, metadata !1106), !dbg !2648
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2649
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2644, metadata !1106), !dbg !2647
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2651
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2644, metadata !1106), !dbg !2647
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2652
  %6 = load i32, i32* %5, align 4, !dbg !2652, !tbaa !2653
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2646, metadata !1106), !dbg !2654
  store i32 %1, i32* %5, align 4, !dbg !2655, !tbaa !2653
  ret i32 %6, !dbg !2656
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2657 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2661, metadata !1106), !dbg !2664
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2662, metadata !1106), !dbg !2665
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2663, metadata !1106), !dbg !2666
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2667
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2661, metadata !1106), !dbg !2664
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2669
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2661, metadata !1106), !dbg !2664
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2670
  store i32 10, i32* %6, align 8, !dbg !2671, !tbaa !2593
  %7 = icmp ne i8* %1, null, !dbg !2672
  %8 = icmp ne i8* %2, null, !dbg !2674
  %9 = and i1 %7, %8, !dbg !2675
  br i1 %9, label %11, label %10, !dbg !2675

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !2676
  unreachable, !dbg !2676

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2677
  store i8* %1, i8** %12, align 8, !dbg !2678, !tbaa !2679
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2680
  store i8* %2, i8** %13, align 8, !dbg !2681, !tbaa !2682
  ret void, !dbg !2683
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2684 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2688, metadata !1106), !dbg !2696
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2689, metadata !1106), !dbg !2697
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2690, metadata !1106), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2691, metadata !1106), !dbg !2699
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2692, metadata !1106), !dbg !2700
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2701
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2701
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2693, metadata !1106), !dbg !2702
  %8 = tail call i32* @__errno_location() #17, !dbg !2703
  %9 = load i32, i32* %8, align 4, !dbg !2703, !tbaa !1188
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2694, metadata !1106), !dbg !2704
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2705
  %11 = load i32, i32* %10, align 8, !dbg !2705, !tbaa !2593
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2706
  %13 = load i32, i32* %12, align 4, !dbg !2706, !tbaa !2653
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2707
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2708
  %16 = load i8*, i8** %15, align 8, !dbg !2708, !tbaa !2679
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2709
  %18 = load i8*, i8** %17, align 8, !dbg !2709, !tbaa !2682
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2710
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2695, metadata !1106), !dbg !2711
  store i32 %9, i32* %8, align 4, !dbg !2712, !tbaa !1188
  ret i64 %19, !dbg !2713
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2714 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2719, metadata !1106), !dbg !2777
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2720, metadata !1106), !dbg !2778
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2721, metadata !1106), !dbg !2779
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2722, metadata !1106), !dbg !2780
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2723, metadata !1106), !dbg !2781
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2724, metadata !1106), !dbg !2782
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2725, metadata !1106), !dbg !2783
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2726, metadata !1106), !dbg !2784
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2727, metadata !1106), !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2729, metadata !1106), !dbg !2786
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2730, metadata !1106), !dbg !2787
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2731, metadata !1106), !dbg !2788
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2732, metadata !1106), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2733, metadata !1106), !dbg !2790
  %13 = tail call i64 @__ctype_get_mb_cur_max() #13, !dbg !2791
  %14 = icmp eq i64 %13, 1, !dbg !2792
  %15 = lshr i32 %5, 1, !dbg !2793
  %16 = trunc i32 %15 to i8, !dbg !2793
  %17 = and i8 %16, 1, !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2735, metadata !1106), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2736, metadata !1106), !dbg !2794
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2737, metadata !1106), !dbg !2795
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2738, metadata !1106), !dbg !2796
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2797

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2720, metadata !1106), !dbg !2778
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2738, metadata !1106), !dbg !2796
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2737, metadata !1106), !dbg !2795
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2736, metadata !1106), !dbg !2794
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2735, metadata !1106), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2722, metadata !1106), !dbg !2780
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2733, metadata !1106), !dbg !2790
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2732, metadata !1106), !dbg !2789
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2731, metadata !1106), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2730, metadata !1106), !dbg !2787
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2727, metadata !1106), !dbg !2785
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2726, metadata !1106), !dbg !2784
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2723, metadata !1106), !dbg !2781
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
  ], !dbg !2798

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2723, metadata !1106), !dbg !2781
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2735, metadata !1106), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2735, metadata !1106), !dbg !2793
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2723, metadata !1106), !dbg !2781
  br label %94, !dbg !2799

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2735, metadata !1106), !dbg !2793
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2723, metadata !1106), !dbg !2781
  %43 = and i8 %36, 1, !dbg !2801
  %44 = icmp eq i8 %43, 0, !dbg !2801
  br i1 %44, label %45, label %94, !dbg !2799

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2803
  br i1 %46, label %94, label %47, !dbg !2806

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2803, !tbaa !1426
  br label %94, !dbg !2803

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.86, i64 0, i64 0), i32 %28), !dbg !2807
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2726, metadata !1106), !dbg !2784
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), i32 %28), !dbg !2811
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2727, metadata !1106), !dbg !2785
  br label %51, !dbg !2812

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2727, metadata !1106), !dbg !2785
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2726, metadata !1106), !dbg !2784
  %54 = and i8 %36, 1, !dbg !2813
  %55 = icmp eq i8 %54, 0, !dbg !2813
  br i1 %55, label %56, label %72, !dbg !2815

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2731, metadata !1106), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2731, metadata !1106), !dbg !2788
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %57 = load i8, i8* %52, align 1, !dbg !2816, !tbaa !1426
  %58 = icmp eq i8 %57, 0, !dbg !2819
  br i1 %58, label %72, label %59, !dbg !2819

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2820

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !2731, metadata !1106), !dbg !2788
  %64 = icmp ult i64 %63, %40, !dbg !2820
  br i1 %64, label %65, label %67, !dbg !2823

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2820
  store i8 %61, i8* %66, align 1, !dbg !2820, !tbaa !1426
  br label %67, !dbg !2820

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2823
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2824
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2731, metadata !1106), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2731, metadata !1106), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %70 = load i8, i8* %69, align 1, !dbg !2816, !tbaa !1426
  %71 = icmp eq i8 %70, 0, !dbg !2819
  br i1 %71, label %72, label %60, !dbg !2819, !llvm.loop !2825

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2733, metadata !1106), !dbg !2790
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2731, metadata !1106), !dbg !2788
  %74 = call i64 @strlen(i8* %53) #15, !dbg !2827
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2732, metadata !1106), !dbg !2789
  br label %94, !dbg !2828

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2733, metadata !1106), !dbg !2790
  br label %76, !dbg !2829

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !2733, metadata !1106), !dbg !2790
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2735, metadata !1106), !dbg !2793
  br label %78, !dbg !2830

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2735, metadata !1106), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !2733, metadata !1106), !dbg !2790
  %81 = and i8 %80, 1, !dbg !2831
  %82 = icmp eq i8 %81, 0, !dbg !2831
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2733, metadata !1106), !dbg !2790
  %83 = select i1 %82, i8 1, i8 %79, !dbg !2833
  br label %84, !dbg !2833

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2735, metadata !1106), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !2733, metadata !1106), !dbg !2790
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2723, metadata !1106), !dbg !2781
  %87 = and i8 %86, 1, !dbg !2834
  %88 = icmp eq i8 %87, 0, !dbg !2834
  br i1 %88, label %89, label %94, !dbg !2836

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !2837
  br i1 %90, label %94, label %91, !dbg !2840

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !2837, !tbaa !1426
  br label %94, !dbg !2837

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2735, metadata !1106), !dbg !2793
  br label %94, !dbg !2841

; <label>:93:                                     ; preds = %27
  call void @abort() #16, !dbg !2842
  unreachable, !dbg !2842

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2735, metadata !1106), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !2733, metadata !1106), !dbg !2790
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !2732, metadata !1106), !dbg !2789
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2731, metadata !1106), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2727, metadata !1106), !dbg !2785
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !2726, metadata !1106), !dbg !2784
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !2723, metadata !1106), !dbg !2781
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2728, metadata !1106), !dbg !2843
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
  br label %122, !dbg !2844

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2720, metadata !1106), !dbg !2778
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2738, metadata !1106), !dbg !2796
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2737, metadata !1106), !dbg !2795
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !2736, metadata !1106), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2722, metadata !1106), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2730, metadata !1106), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !2728, metadata !1106), !dbg !2843
  %131 = icmp eq i64 %126, -1, !dbg !2845
  br i1 %131, label %134, label %132, !dbg !2846

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !2847
  br i1 %133, label %590, label %138, !dbg !2848

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2849
  %136 = load i8, i8* %135, align 1, !dbg !2849, !tbaa !1426
  %137 = icmp eq i8 %136, 0, !dbg !2850
  br i1 %137, label %590, label %138, !dbg !2848

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2744, metadata !1106), !dbg !2851
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2745, metadata !1106), !dbg !2852
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2746, metadata !1106), !dbg !2853
  br i1 %108, label %139, label %154, !dbg !2854

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !2856
  %141 = and i1 %109, %131, !dbg !2857
  br i1 %141, label %142, label %144, !dbg !2857

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #15, !dbg !2858
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !2722, metadata !1106), !dbg !2780
  br label %144, !dbg !2859

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !2722, metadata !1106), !dbg !2780
  %146 = icmp ugt i64 %140, %145, !dbg !2860
  br i1 %146, label %154, label %147, !dbg !2861

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2862
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #15, !dbg !2863
  %150 = icmp ne i32 %149, 0, !dbg !2864
  %151 = or i1 %150, %111, !dbg !2865
  %152 = xor i1 %150, true, !dbg !2865
  %153 = zext i1 %152 to i8, !dbg !2865
  br i1 %151, label %154, label %635, !dbg !2865

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2744, metadata !1106), !dbg !2851
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !2722, metadata !1106), !dbg !2780
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2866
  %158 = load i8, i8* %157, align 1, !dbg !2866, !tbaa !1426
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2739, metadata !1106), !dbg !2867
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
  ], !dbg !2868

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !2869

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !2870

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2745, metadata !1106), !dbg !2852
  %162 = and i8 %127, 1, !dbg !2874
  %163 = icmp eq i8 %162, 0, !dbg !2874
  %164 = and i1 %113, %163, !dbg !2874
  br i1 %164, label %165, label %181, !dbg !2874

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2876
  br i1 %166, label %167, label %169, !dbg !2880

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2876
  store i8 39, i8* %168, align 1, !dbg !2876, !tbaa !1426
  br label %169, !dbg !2876

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %171 = icmp ult i64 %170, %130, !dbg !2881
  br i1 %171, label %172, label %174, !dbg !2884

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2881
  store i8 36, i8* %173, align 1, !dbg !2881, !tbaa !1426
  br label %174, !dbg !2881

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2884
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %176 = icmp ult i64 %175, %130, !dbg !2885
  br i1 %176, label %177, label %179, !dbg !2888

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2885
  store i8 39, i8* %178, align 1, !dbg !2885, !tbaa !1426
  br label %179, !dbg !2885

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2888
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2736, metadata !1106), !dbg !2794
  br label %181, !dbg !2889

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !2736, metadata !1106), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %184 = icmp ult i64 %182, %130, !dbg !2890
  br i1 %184, label %185, label %187, !dbg !2893

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2890
  store i8 92, i8* %186, align 1, !dbg !2890, !tbaa !1426
  br label %187, !dbg !2890

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2893
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !2729, metadata !1106), !dbg !2786
  br i1 %105, label %189, label %470, !dbg !2894

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2896
  %191 = icmp ult i64 %190, %155, !dbg !2897
  br i1 %191, label %192, label %470, !dbg !2898

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2899
  %194 = load i8, i8* %193, align 1, !dbg !2899, !tbaa !1426
  %195 = add i8 %194, -48, !dbg !2900
  %196 = icmp ult i8 %195, 10, !dbg !2900
  br i1 %196, label %197, label %470, !dbg !2900

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2901
  br i1 %198, label %199, label %201, !dbg !2905

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2901
  store i8 48, i8* %200, align 1, !dbg !2901, !tbaa !1426
  br label %201, !dbg !2901

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2905
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %203 = icmp ult i64 %202, %130, !dbg !2906
  br i1 %203, label %204, label %206, !dbg !2909

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2906
  store i8 48, i8* %205, align 1, !dbg !2906, !tbaa !1426
  br label %206, !dbg !2906

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !2729, metadata !1106), !dbg !2786
  br label %470, !dbg !2910

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2911

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2912

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2913

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2915

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2917
  %214 = icmp ult i64 %213, %155, !dbg !2918
  br i1 %214, label %215, label %470, !dbg !2919

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2920
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2921
  %218 = load i8, i8* %217, align 1, !dbg !2921, !tbaa !1426
  %219 = icmp eq i8 %218, 63, !dbg !2922
  br i1 %219, label %220, label %470, !dbg !2923

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2924
  %222 = load i8, i8* %221, align 1, !dbg !2924, !tbaa !1426
  %223 = sext i8 %222 to i32, !dbg !2924
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
  ], !dbg !2925

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2926

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !2739, metadata !1106), !dbg !2867
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !2728, metadata !1106), !dbg !2843
  %226 = icmp ult i64 %124, %130, !dbg !2928
  br i1 %226, label %227, label %229, !dbg !2931

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2928
  store i8 63, i8* %228, align 1, !dbg !2928, !tbaa !1426
  br label %229, !dbg !2928

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2931
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %231 = icmp ult i64 %230, %130, !dbg !2932
  br i1 %231, label %232, label %234, !dbg !2935

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2932
  store i8 34, i8* %233, align 1, !dbg !2932, !tbaa !1426
  br label %234, !dbg !2932

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2935
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %236 = icmp ult i64 %235, %130, !dbg !2936
  br i1 %236, label %237, label %239, !dbg !2939

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2936
  store i8 34, i8* %238, align 1, !dbg !2936, !tbaa !1426
  br label %239, !dbg !2936

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2939
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %241 = icmp ult i64 %240, %130, !dbg !2940
  br i1 %241, label %242, label %244, !dbg !2943

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2940
  store i8 63, i8* %243, align 1, !dbg !2940, !tbaa !1426
  br label %244, !dbg !2940

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2943
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !2729, metadata !1106), !dbg !2786
  br label %470, !dbg !2944

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2743, metadata !1106), !dbg !2945
  br label %256, !dbg !2946

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2743, metadata !1106), !dbg !2945
  br label %256, !dbg !2947

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2743, metadata !1106), !dbg !2945
  br label %254, !dbg !2948

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2743, metadata !1106), !dbg !2945
  br label %254, !dbg !2949

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2743, metadata !1106), !dbg !2945
  br label %256, !dbg !2950

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2743, metadata !1106), !dbg !2945
  br i1 %113, label %252, label %253, !dbg !2951

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2952

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2955

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !2743, metadata !1106), !dbg !2945
  br i1 %117, label %256, label %635, !dbg !2957

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !2743, metadata !1106), !dbg !2945
  br i1 %104, label %497, label %470, !dbg !2959

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2960
  br i1 %259, label %260, label %265, !dbg !2962

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2963, !tbaa !1426
  %262 = icmp ne i8 %261, 0, !dbg !2964
  %263 = icmp ne i64 %123, 0, !dbg !2965
  %264 = or i1 %263, %262, !dbg !2967
  br i1 %264, label %470, label %271, !dbg !2967

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2968
  %267 = icmp ne i64 %123, 0, !dbg !2965
  %268 = or i1 %267, %266, !dbg !2962
  br i1 %268, label %470, label %271, !dbg !2962

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2965
  br i1 %270, label %271, label %470, !dbg !2969

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2746, metadata !1106), !dbg !2853
  br label %272, !dbg !2970

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !2746, metadata !1106), !dbg !2853
  br i1 %117, label %470, label %635, !dbg !2971

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2737, metadata !1106), !dbg !2795
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2746, metadata !1106), !dbg !2853
  br i1 %113, label %275, label %470, !dbg !2973

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2974

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2977
  %278 = icmp ne i64 %125, 0, !dbg !2979
  %279 = or i1 %278, %277, !dbg !2980
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2730, metadata !1106), !dbg !2787
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2720, metadata !1106), !dbg !2778
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2980
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2980
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2720, metadata !1106), !dbg !2778
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !2730, metadata !1106), !dbg !2787
  %282 = icmp ult i64 %124, %281, !dbg !2981
  br i1 %282, label %283, label %285, !dbg !2984

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2981
  store i8 39, i8* %284, align 1, !dbg !2981, !tbaa !1426
  br label %285, !dbg !2981

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2984
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %287 = icmp ult i64 %286, %281, !dbg !2985
  br i1 %287, label %288, label %290, !dbg !2988

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2985
  store i8 92, i8* %289, align 1, !dbg !2985, !tbaa !1426
  br label %290, !dbg !2985

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %292 = icmp ult i64 %291, %281, !dbg !2989
  br i1 %292, label %293, label %295, !dbg !2992

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2989
  store i8 39, i8* %294, align 1, !dbg !2989, !tbaa !1426
  br label %295, !dbg !2989

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2992
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2736, metadata !1106), !dbg !2794
  br label %470, !dbg !2993

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2994

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2747, metadata !1106), !dbg !2995
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2996
  %300 = load i16*, i16** %299, align 8, !dbg !2996, !tbaa !1113
  %301 = zext i8 %158 to i64, !dbg !2996
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2996
  %303 = load i16, i16* %302, align 2, !dbg !2996, !tbaa !1923
  %304 = lshr i16 %303, 14, !dbg !2998
  %305 = trunc i16 %304 to i8, !dbg !2998
  %306 = and i8 %305, 1, !dbg !2998
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !2750, metadata !1106), !dbg !2999
  br label %362, !dbg !3000

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #13, !dbg !3001
  store i64 0, i64* %10, align 8, !dbg !3002
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2747, metadata !1106), !dbg !2995
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2750, metadata !1106), !dbg !2999
  %308 = icmp eq i64 %155, -1, !dbg !3003
  br i1 %308, label %309, label %311, !dbg !3005

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #15, !dbg !3006
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !2722, metadata !1106), !dbg !2780
  br label %311, !dbg !3007

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !2722, metadata !1106), !dbg !2780
  br label %313, !dbg !3008, !llvm.loop !3009

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !2750, metadata !1106), !dbg !2999
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2747, metadata !1106), !dbg !2995
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #13, !dbg !3011
  %316 = add i64 %314, %123, !dbg !3012
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !3013
  %318 = sub i64 %312, %316, !dbg !3014
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2751, metadata !1106), !dbg !3015
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2764, metadata !1106), !dbg !3016
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #13, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !2766, metadata !1106), !dbg !3018
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !3019

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2750, metadata !1106), !dbg !2999
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2747, metadata !1106), !dbg !2995
  %321 = icmp ugt i64 %312, %316, !dbg !3020
  br i1 %321, label %322, label %347, !dbg !3022

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !3023

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !2747, metadata !1106), !dbg !2995
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !3023
  %327 = load i8, i8* %326, align 1, !dbg !3023, !tbaa !1426
  %328 = icmp eq i8 %327, 0, !dbg !3022
  br i1 %328, label %347, label %329, !dbg !3024

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !3025
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2747, metadata !1106), !dbg !2995
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2747, metadata !1106), !dbg !2995
  %331 = add i64 %330, %123, !dbg !3026
  %332 = icmp ult i64 %331, %312, !dbg !3020
  br i1 %332, label %323, label %347, !dbg !3022, !llvm.loop !3027

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !3028
  %335 = and i1 %115, %334, !dbg !3031
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2767, metadata !1106), !dbg !3032
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2767, metadata !1106), !dbg !3032
  br i1 %335, label %336, label %350, !dbg !3031

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !3033

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !2767, metadata !1106), !dbg !3032
  %339 = add i64 %338, %316, !dbg !3033
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !3034
  %341 = load i8, i8* %340, align 1, !dbg !3034, !tbaa !1426
  %342 = sext i8 %341 to i32, !dbg !3034
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !3035

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2767, metadata !1106), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2767, metadata !1106), !dbg !3032
  %345 = icmp ult i64 %344, %319, !dbg !3028
  br i1 %345, label %337, label %350, !dbg !3037, !llvm.loop !3038

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !3040

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2750, metadata !1106), !dbg !2999
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2747, metadata !1106), !dbg !2995
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #13, !dbg !3040
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !3041, !tbaa !1188
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !2764, metadata !1106), !dbg !3016
  %352 = call i32 @iswprint(i32 %351) #13, !dbg !3043
  %353 = icmp eq i32 %352, 0, !dbg !3043
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2750, metadata !1106), !dbg !2999
  %354 = select i1 %353, i8 0, i8 %315, !dbg !3044
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2750, metadata !1106), !dbg !2999
  %355 = add i64 %319, %314, !dbg !3045
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2747, metadata !1106), !dbg !2995
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2750, metadata !1106), !dbg !2999
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2747, metadata !1106), !dbg !2995
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #13, !dbg !3040
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2751, metadata !1106), !dbg !3015
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #15, !dbg !3046
  %357 = icmp eq i32 %356, 0, !dbg !3047
  br i1 %357, label %313, label %358, !dbg !3048, !llvm.loop !3009

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #13, !dbg !3049
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2750, metadata !1106), !dbg !2999
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2747, metadata !1106), !dbg !2995
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #13, !dbg !3040
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #13, !dbg !3049
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !2750, metadata !1106), !dbg !2999
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !2747, metadata !1106), !dbg !2995
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !2722, metadata !1106), !dbg !2780
  %366 = and i8 %365, 1, !dbg !3050
  %367 = icmp ne i8 %366, 0, !dbg !3050
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !2746, metadata !1106), !dbg !2853
  %368 = icmp ult i64 %364, 2, !dbg !3051
  %369 = or i1 %367, %112, !dbg !3052
  %370 = and i1 %368, %369, !dbg !3053
  br i1 %370, label %470, label %371, !dbg !3053

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !3054
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !2774, metadata !1106), !dbg !3055
  br label %373, !dbg !3056

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !2745, metadata !1106), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !2744, metadata !1106), !dbg !2851
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !2739, metadata !1106), !dbg !2867
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !2736, metadata !1106), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !2728, metadata !1106), !dbg !2843
  br i1 %369, label %426, label %380, !dbg !3057

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !3062

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2745, metadata !1106), !dbg !2852
  %382 = and i8 %376, 1, !dbg !3065
  %383 = icmp eq i8 %382, 0, !dbg !3065
  %384 = and i1 %113, %383, !dbg !3065
  br i1 %384, label %385, label %401, !dbg !3065

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !3067
  br i1 %386, label %387, label %389, !dbg !3071

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !3067
  store i8 39, i8* %388, align 1, !dbg !3067, !tbaa !1426
  br label %389, !dbg !3067

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %391 = icmp ult i64 %390, %130, !dbg !3072
  br i1 %391, label %392, label %394, !dbg !3075

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !3072
  store i8 36, i8* %393, align 1, !dbg !3072, !tbaa !1426
  br label %394, !dbg !3072

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !3075
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %396 = icmp ult i64 %395, %130, !dbg !3076
  br i1 %396, label %397, label %399, !dbg !3079

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !3076
  store i8 39, i8* %398, align 1, !dbg !3076, !tbaa !1426
  br label %399, !dbg !3076

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !3079
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2736, metadata !1106), !dbg !2794
  br label %401, !dbg !3080

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !2736, metadata !1106), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %404 = icmp ult i64 %402, %130, !dbg !3081
  br i1 %404, label %405, label %407, !dbg !3084

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !3081
  store i8 92, i8* %406, align 1, !dbg !3081, !tbaa !1426
  br label %407, !dbg !3081

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !3084
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %409 = icmp ult i64 %408, %130, !dbg !3085
  br i1 %409, label %410, label %414, !dbg !3088

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !3085
  %412 = or i8 %411, 48, !dbg !3085
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3085
  store i8 %412, i8* %413, align 1, !dbg !3085, !tbaa !1426
  br label %414, !dbg !3085

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !3088
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %416 = icmp ult i64 %415, %130, !dbg !3089
  br i1 %416, label %417, label %422, !dbg !3092

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !3089
  %419 = and i8 %418, 7, !dbg !3089
  %420 = or i8 %419, 48, !dbg !3089
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !3089
  store i8 %420, i8* %421, align 1, !dbg !3089, !tbaa !1426
  br label %422, !dbg !3089

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !3092
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %424 = and i8 %377, 7, !dbg !3093
  %425 = or i8 %424, 48, !dbg !3094
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !2739, metadata !1106), !dbg !2867
  br label %435, !dbg !3095

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !3096
  %428 = icmp eq i8 %427, 0, !dbg !3096
  br i1 %428, label %435, label %429, !dbg !3098

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !3099
  br i1 %430, label %431, label %433, !dbg !3103

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !3099
  store i8 92, i8* %432, align 1, !dbg !3099, !tbaa !1426
  br label %433, !dbg !3099

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !3103
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2744, metadata !1106), !dbg !2851
  br label %435, !dbg !3104

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !2745, metadata !1106), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !2744, metadata !1106), !dbg !2851
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !2739, metadata !1106), !dbg !2867
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !2736, metadata !1106), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %441 = add i64 %374, 1, !dbg !3105
  %442 = icmp ugt i64 %372, %441, !dbg !3107
  br i1 %442, label %443, label %535, !dbg !3108

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !3109
  %445 = icmp ne i8 %444, 0, !dbg !3109
  %446 = and i8 %440, 1, !dbg !3109
  %447 = icmp eq i8 %446, 0, !dbg !3109
  %448 = and i1 %445, %447, !dbg !3109
  br i1 %448, label %449, label %460, !dbg !3109

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !3112
  br i1 %450, label %451, label %453, !dbg !3116

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !3112
  store i8 39, i8* %452, align 1, !dbg !3112, !tbaa !1426
  br label %453, !dbg !3112

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %455 = icmp ult i64 %454, %130, !dbg !3117
  br i1 %455, label %456, label %458, !dbg !3120

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !3117
  store i8 39, i8* %457, align 1, !dbg !3117, !tbaa !1426
  br label %458, !dbg !3117

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !3120
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2736, metadata !1106), !dbg !2794
  br label %460, !dbg !3121

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !2736, metadata !1106), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %463 = icmp ult i64 %461, %130, !dbg !3122
  br i1 %463, label %464, label %466, !dbg !3125

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !3122
  store i8 %438, i8* %465, align 1, !dbg !3122, !tbaa !1426
  br label %466, !dbg !3122

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !3125
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !2728, metadata !1106), !dbg !2843
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !3126
  %469 = load i8, i8* %468, align 1, !dbg !3126, !tbaa !1426
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !2739, metadata !1106), !dbg !2867
  br label %373, !dbg !3127, !llvm.loop !3128

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2720, metadata !1106), !dbg !2778
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !2746, metadata !1106), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !2745, metadata !1106), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2744, metadata !1106), !dbg !2851
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !2739, metadata !1106), !dbg !2867
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !2737, metadata !1106), !dbg !2795
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2736, metadata !1106), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !2722, metadata !1106), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2730, metadata !1106), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !2728, metadata !1106), !dbg !2843
  br i1 %106, label %482, label %481, !dbg !3131

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !3133

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !3134

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !3135
  %485 = zext i8 %484 to i64, !dbg !3135
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !3136
  %487 = load i32, i32* %486, align 4, !dbg !3136, !tbaa !1188
  %488 = and i8 %477, 31, !dbg !3137
  %489 = zext i8 %488 to i32, !dbg !3138
  %490 = shl i32 1, %489, !dbg !3139
  %491 = and i32 %487, %490, !dbg !3139
  %492 = icmp eq i32 %491, 0, !dbg !3139
  %493 = icmp eq i8 %156, 0, !dbg !3140
  %494 = and i1 %493, %492, !dbg !3141
  br i1 %494, label %535, label %497, !dbg !3141

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !3140
  br i1 %496, label %535, label %497, !dbg !3142

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2720, metadata !1106), !dbg !2778
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !2746, metadata !1106), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !2739, metadata !1106), !dbg !2867
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !2737, metadata !1106), !dbg !2795
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !2736, metadata !1106), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !2722, metadata !1106), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !2730, metadata !1106), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !2728, metadata !1106), !dbg !2843
  br i1 %111, label %507, label %635, !dbg !3143

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2745, metadata !1106), !dbg !2852
  %508 = and i8 %502, 1, !dbg !3145
  %509 = icmp eq i8 %508, 0, !dbg !3145
  %510 = and i1 %113, %509, !dbg !3145
  br i1 %510, label %511, label %527, !dbg !3145

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !3147
  br i1 %512, label %513, label %515, !dbg !3151

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !3147
  store i8 39, i8* %514, align 1, !dbg !3147, !tbaa !1426
  br label %515, !dbg !3147

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !3151
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %517 = icmp ult i64 %516, %506, !dbg !3152
  br i1 %517, label %518, label %520, !dbg !3155

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !3152
  store i8 36, i8* %519, align 1, !dbg !3152, !tbaa !1426
  br label %520, !dbg !3152

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !3155
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %522 = icmp ult i64 %521, %506, !dbg !3156
  br i1 %522, label %523, label %525, !dbg !3159

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !3156
  store i8 39, i8* %524, align 1, !dbg !3156, !tbaa !1426
  br label %525, !dbg !3156

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2736, metadata !1106), !dbg !2794
  br label %527, !dbg !3160

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !2736, metadata !1106), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %530 = icmp ult i64 %528, %506, !dbg !3161
  br i1 %530, label %531, label %533, !dbg !3164

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !3161
  store i8 92, i8* %532, align 1, !dbg !3161, !tbaa !1426
  br label %533, !dbg !3161

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !3164
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2720, metadata !1106), !dbg !2778
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2746, metadata !1106), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2745, metadata !1106), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2739, metadata !1106), !dbg !2867
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2737, metadata !1106), !dbg !2795
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2736, metadata !1106), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2722, metadata !1106), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2730, metadata !1106), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2728, metadata !1106), !dbg !2843
  br label %562, !dbg !3165

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2720, metadata !1106), !dbg !2778
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2746, metadata !1106), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2745, metadata !1106), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2739, metadata !1106), !dbg !2867
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2737, metadata !1106), !dbg !2795
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2736, metadata !1106), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2722, metadata !1106), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2730, metadata !1106), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2728, metadata !1106), !dbg !2843
  %546 = and i8 %540, 1, !dbg !3165
  %547 = icmp ne i8 %546, 0, !dbg !3165
  %548 = and i8 %543, 1, !dbg !3165
  %549 = icmp eq i8 %548, 0, !dbg !3165
  %550 = and i1 %547, %549, !dbg !3165
  br i1 %550, label %551, label %562, !dbg !3165

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !3168
  br i1 %552, label %553, label %555, !dbg !3172

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !3168
  store i8 39, i8* %554, align 1, !dbg !3168, !tbaa !1426
  br label %555, !dbg !3168

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !3172
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %557 = icmp ult i64 %556, %545, !dbg !3173
  br i1 %557, label %558, label %560, !dbg !3176

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !3173
  store i8 39, i8* %559, align 1, !dbg !3173, !tbaa !1426
  br label %560, !dbg !3173

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !3176
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2736, metadata !1106), !dbg !2794
  br label %562, !dbg !3177

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !2736, metadata !1106), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %572 = icmp ult i64 %570, %563, !dbg !3178
  br i1 %572, label %573, label %575, !dbg !3181

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !3178
  store i8 %565, i8* %574, align 1, !dbg !3178, !tbaa !1426
  br label %575, !dbg !3178

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !3181
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %577 = and i8 %564, 1, !dbg !3182
  %578 = icmp eq i8 %577, 0, !dbg !3182
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2738, metadata !1106), !dbg !2796
  %579 = select i1 %578, i8 0, i8 %129, !dbg !3184
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !2738, metadata !1106), !dbg !2796
  br label %580, !dbg !3185

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !2720, metadata !1106), !dbg !2778
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !2738, metadata !1106), !dbg !2796
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2737, metadata !1106), !dbg !2795
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !2736, metadata !1106), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !2722, metadata !1106), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2730, metadata !1106), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !2728, metadata !1106), !dbg !2843
  %589 = add i64 %581, 1, !dbg !3186
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !2728, metadata !1106), !dbg !2843
  br label %122, !dbg !3187, !llvm.loop !3188

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !3190
  %593 = and i1 %113, %592, !dbg !3192
  %594 = xor i1 %593, true, !dbg !3192
  %595 = or i1 %111, %594, !dbg !3192
  br i1 %595, label %596, label %635, !dbg !3192

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !3193
  %598 = xor i1 %597, true, !dbg !3193
  %599 = and i8 %128, 1, !dbg !3195
  %600 = icmp eq i8 %599, 0, !dbg !3195
  %601 = or i1 %600, %598, !dbg !3193
  br i1 %601, label %611, label %602, !dbg !3193

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !3196
  %604 = icmp eq i8 %603, 0, !dbg !3196
  br i1 %604, label %607, label %605, !dbg !3199

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !3200
  br label %645, !dbg !3201

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !3202
  %609 = icmp ne i64 %125, 0, !dbg !3204
  %610 = and i1 %609, %608, !dbg !3205
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2720, metadata !1106), !dbg !2778
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2729, metadata !1106), !dbg !2786
  br i1 %610, label %27, label %611, !dbg !3205

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !3206
  %613 = and i1 %612, %111, !dbg !3208
  br i1 %613, label %614, label %630, !dbg !3208

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2731, metadata !1106), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %615 = load i8, i8* %99, align 1, !dbg !3209, !tbaa !1426
  %616 = icmp eq i8 %615, 0, !dbg !3212
  br i1 %616, label %630, label %617, !dbg !3212

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !3213

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !2729, metadata !1106), !dbg !2786
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !2731, metadata !1106), !dbg !2788
  %622 = icmp ult i64 %621, %130, !dbg !3213
  br i1 %622, label %623, label %625, !dbg !3216

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !3213
  store i8 %619, i8* %624, align 1, !dbg !3213, !tbaa !1426
  br label %625, !dbg !3213

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !3216
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !3217
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2731, metadata !1106), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2731, metadata !1106), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %628 = load i8, i8* %627, align 1, !dbg !3209, !tbaa !1426
  %629 = icmp eq i8 %628, 0, !dbg !3212
  br i1 %629, label %630, label %618, !dbg !3212, !llvm.loop !3218

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !2729, metadata !1106), !dbg !2786
  %632 = icmp ult i64 %631, %130, !dbg !3220
  br i1 %632, label %633, label %645, !dbg !3222

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !3223
  store i8 0, i8* %634, align 1, !dbg !3224, !tbaa !1426
  br label %645, !dbg !3223

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !2720, metadata !1106), !dbg !2778
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !2722, metadata !1106), !dbg !2780
  %639 = icmp ne i32 %636, 2, !dbg !3225
  %640 = icmp eq i8 %103, 0, !dbg !3227
  %641 = or i1 %639, %640, !dbg !3228
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2723, metadata !1106), !dbg !2781
  %642 = select i1 %641, i32 %636, i32 4, !dbg !3228
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !2723, metadata !1106), !dbg !2781
  %643 = and i32 %5, -3, !dbg !3229
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !3230
  br label %645, !dbg !3231

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !3232
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !3233 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3237, metadata !1106), !dbg !3241
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3238, metadata !1106), !dbg !3242
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #13, !dbg !3243
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3239, metadata !1106), !dbg !3244
  %4 = icmp eq i8* %3, %0, !dbg !3245
  br i1 %4, label %5, label %75, !dbg !3247

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #13, !dbg !3248
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3240, metadata !1106), !dbg !3249
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3250, metadata !1106), !dbg !3266
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3264, metadata !1106), !dbg !3269
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3265, metadata !1106), !dbg !3270
  %7 = load i8, i8* %6, align 1, !dbg !3271, !tbaa !1426
  %8 = sext i8 %7 to i32, !dbg !3271
  %9 = and i32 %8, -33, !dbg !3271
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !3271

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3273, metadata !1106), !dbg !3287
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3285, metadata !1106), !dbg !3291
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3286, metadata !1106), !dbg !3292
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3293
  %12 = load i8, i8* %11, align 1, !dbg !3293, !tbaa !1426
  %13 = sext i8 %12 to i32, !dbg !3293
  %14 = and i32 %13, -33, !dbg !3293
  %15 = icmp eq i32 %14, 84, !dbg !3293
  br i1 %15, label %16, label %72, !dbg !3293

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3295, metadata !1106), !dbg !3308
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3306, metadata !1106), !dbg !3312
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3307, metadata !1106), !dbg !3313
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3314
  %18 = load i8, i8* %17, align 1, !dbg !3314, !tbaa !1426
  %19 = sext i8 %18 to i32, !dbg !3314
  %20 = and i32 %19, -33, !dbg !3314
  %21 = icmp eq i32 %20, 70, !dbg !3314
  br i1 %21, label %22, label %72, !dbg !3314

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3316, metadata !1106), !dbg !3328
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3326, metadata !1106), !dbg !3332
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3327, metadata !1106), !dbg !3333
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3334
  %24 = load i8, i8* %23, align 1, !dbg !3334, !tbaa !1426
  %25 = icmp eq i8 %24, 45, !dbg !3334
  br i1 %25, label %26, label %72, !dbg !3336

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3337, metadata !1106), !dbg !3348
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3346, metadata !1106), !dbg !3352
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3347, metadata !1106), !dbg !3353
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3354
  %28 = load i8, i8* %27, align 1, !dbg !3354, !tbaa !1426
  %29 = icmp eq i8 %28, 56, !dbg !3354
  br i1 %29, label %30, label %72, !dbg !3356

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3357, metadata !1106), !dbg !3367
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3365, metadata !1106), !dbg !3371
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3366, metadata !1106), !dbg !3372
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3373
  %32 = load i8, i8* %31, align 1, !dbg !3373, !tbaa !1426
  %33 = icmp eq i8 %32, 0, !dbg !3373
  br i1 %33, label %34, label %72, !dbg !3375

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3376, !tbaa !1426
  %36 = icmp eq i8 %35, 96, !dbg !3377
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.89, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.90, i64 0, i64 0), !dbg !3376
  br label %75, !dbg !3378

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3273, metadata !1106), !dbg !3379
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3285, metadata !1106), !dbg !3383
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3286, metadata !1106), !dbg !3384
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3385
  %40 = load i8, i8* %39, align 1, !dbg !3385, !tbaa !1426
  %41 = sext i8 %40 to i32, !dbg !3385
  %42 = and i32 %41, -33, !dbg !3385
  %43 = icmp eq i32 %42, 66, !dbg !3385
  br i1 %43, label %44, label %72, !dbg !3385

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3295, metadata !1106), !dbg !3386
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3306, metadata !1106), !dbg !3388
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3307, metadata !1106), !dbg !3389
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3390
  %46 = load i8, i8* %45, align 1, !dbg !3390, !tbaa !1426
  %47 = icmp eq i8 %46, 49, !dbg !3390
  br i1 %47, label %48, label %72, !dbg !3391

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3316, metadata !1106), !dbg !3392
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3326, metadata !1106), !dbg !3394
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3327, metadata !1106), !dbg !3395
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3396
  %50 = load i8, i8* %49, align 1, !dbg !3396, !tbaa !1426
  %51 = icmp eq i8 %50, 56, !dbg !3396
  br i1 %51, label %52, label %72, !dbg !3397

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3337, metadata !1106), !dbg !3398
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3346, metadata !1106), !dbg !3400
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3347, metadata !1106), !dbg !3401
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3402
  %54 = load i8, i8* %53, align 1, !dbg !3402, !tbaa !1426
  %55 = icmp eq i8 %54, 48, !dbg !3402
  br i1 %55, label %56, label %72, !dbg !3403

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3357, metadata !1106), !dbg !3404
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3365, metadata !1106), !dbg !3406
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3366, metadata !1106), !dbg !3407
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3408
  %58 = load i8, i8* %57, align 1, !dbg !3408, !tbaa !1426
  %59 = icmp eq i8 %58, 51, !dbg !3408
  br i1 %59, label %60, label %72, !dbg !3409

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3410, metadata !1106), !dbg !3419
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3417, metadata !1106), !dbg !3423
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3418, metadata !1106), !dbg !3424
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3425
  %62 = load i8, i8* %61, align 1, !dbg !3425, !tbaa !1426
  %63 = icmp eq i8 %62, 48, !dbg !3425
  br i1 %63, label %64, label %72, !dbg !3427

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3428, metadata !1106), !dbg !3436
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3434, metadata !1106), !dbg !3440
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3435, metadata !1106), !dbg !3441
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3442
  %66 = load i8, i8* %65, align 1, !dbg !3442, !tbaa !1426
  %67 = icmp eq i8 %66, 0, !dbg !3442
  br i1 %67, label %68, label %72, !dbg !3444

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3445, !tbaa !1426
  %70 = icmp eq i8 %69, 96, !dbg !3446
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.91, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.92, i64 0, i64 0), !dbg !3445
  br label %75, !dbg !3447

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3448
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), !dbg !3449
  br label %75, !dbg !3450

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3451
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #14

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3452 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3456, metadata !1106), !dbg !3459
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3457, metadata !1106), !dbg !3460
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3458, metadata !1106), !dbg !3461
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3462, metadata !1106) #13, !dbg !3475
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3467, metadata !1106) #13, !dbg !3477
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3468, metadata !1106) #13, !dbg !3478
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3469, metadata !1106) #13, !dbg !3479
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3480
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3480
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3470, metadata !1106) #13, !dbg !3481
  %6 = tail call i32* @__errno_location() #17, !dbg !3482
  %7 = load i32, i32* %6, align 4, !dbg !3482, !tbaa !1188
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3471, metadata !1106) #13, !dbg !3483
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3484
  %9 = load i32, i32* %8, align 4, !dbg !3484, !tbaa !2653
  %10 = or i32 %9, 1, !dbg !3485
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3472, metadata !1106) #13, !dbg !3486
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3487
  %12 = load i32, i32* %11, align 8, !dbg !3487, !tbaa !2593
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3488
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3489
  %15 = load i8*, i8** %14, align 8, !dbg !3489, !tbaa !2679
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3490
  %17 = load i8*, i8** %16, align 8, !dbg !3490, !tbaa !2682
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #13, !dbg !3491
  %19 = add i64 %18, 1, !dbg !3492
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3473, metadata !1106) #13, !dbg !3493
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3494, metadata !1106) #13, !dbg !3499
  %20 = tail call noalias i8* @xmalloc(i64 %19) #13, !dbg !3501
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3474, metadata !1106) #13, !dbg !3502
  %21 = load i32, i32* %11, align 8, !dbg !3503, !tbaa !2593
  %22 = load i8*, i8** %14, align 8, !dbg !3504, !tbaa !2679
  %23 = load i8*, i8** %16, align 8, !dbg !3505, !tbaa !2682
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #13, !dbg !3506
  store i32 %7, i32* %6, align 4, !dbg !3507, !tbaa !1188
  ret i8* %20, !dbg !3508
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3463 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3462, metadata !1106), !dbg !3509
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3467, metadata !1106), !dbg !3510
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3468, metadata !1106), !dbg !3511
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3469, metadata !1106), !dbg !3512
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3513
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3513
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3470, metadata !1106), !dbg !3514
  %7 = tail call i32* @__errno_location() #17, !dbg !3515
  %8 = load i32, i32* %7, align 4, !dbg !3515, !tbaa !1188
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3471, metadata !1106), !dbg !3516
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3517
  %10 = load i32, i32* %9, align 4, !dbg !3517, !tbaa !2653
  %11 = icmp ne i64* %2, null, !dbg !3518
  %12 = xor i1 %11, true, !dbg !3518
  %13 = zext i1 %12 to i32, !dbg !3518
  %14 = or i32 %10, %13, !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3472, metadata !1106), !dbg !3520
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3521
  %16 = load i32, i32* %15, align 8, !dbg !3521, !tbaa !2593
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3522
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3523
  %19 = load i8*, i8** %18, align 8, !dbg !3523, !tbaa !2679
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3524
  %21 = load i8*, i8** %20, align 8, !dbg !3524, !tbaa !2682
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3525
  %23 = add i64 %22, 1, !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3473, metadata !1106), !dbg !3527
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3494, metadata !1106) #13, !dbg !3528
  %24 = tail call noalias i8* @xmalloc(i64 %23) #13, !dbg !3530
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3474, metadata !1106), !dbg !3531
  %25 = load i32, i32* %15, align 8, !dbg !3532, !tbaa !2593
  %26 = load i8*, i8** %18, align 8, !dbg !3533, !tbaa !2679
  %27 = load i8*, i8** %20, align 8, !dbg !3534, !tbaa !2682
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3535
  store i32 %8, i32* %7, align 4, !dbg !3536, !tbaa !1188
  br i1 %11, label %29, label %30, !dbg !3537

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3538, !tbaa !1155
  br label %30, !dbg !3540

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3541
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3542 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3546, !tbaa !1113
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3544, metadata !1106), !dbg !3547
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3545, metadata !1106), !dbg !3548
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3545, metadata !1106), !dbg !3548
  %2 = load i32, i32* @nslots, align 4, !dbg !3549, !tbaa !1188
  %3 = icmp sgt i32 %2, 1, !dbg !3552
  br i1 %3, label %4, label %13, !dbg !3553

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3554

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3545, metadata !1106), !dbg !3548
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3554
  %8 = load i8*, i8** %7, align 8, !dbg !3554, !tbaa !3555
  tail call void @free(i8* %8) #13, !dbg !3557
  %9 = add nuw i64 %6, 1, !dbg !3558
  %10 = load i32, i32* @nslots, align 4, !dbg !3549, !tbaa !1188
  %11 = sext i32 %10 to i64, !dbg !3552
  %12 = icmp slt i64 %9, %11, !dbg !3552
  br i1 %12, label %5, label %13, !dbg !3553, !llvm.loop !3559

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3561
  %15 = load i8*, i8** %14, align 8, !dbg !3561, !tbaa !3555
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3563
  br i1 %16, label %18, label %17, !dbg !3564

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #13, !dbg !3565
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3567, !tbaa !3568
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3569, !tbaa !3555
  br label %18, !dbg !3570

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3571
  br i1 %19, label %22, label %20, !dbg !3573

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !3574
  tail call void @free(i8* %21) #13, !dbg !3576
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3577, !tbaa !1113
  br label %22, !dbg !3578

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !3579, !tbaa !1188
  ret void, !dbg !3580
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3581 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3585, metadata !1106), !dbg !3587
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3586, metadata !1106), !dbg !3588
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3589
  ret i8* %3, !dbg !3590
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3591 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3595, metadata !1106), !dbg !3609
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3596, metadata !1106), !dbg !3610
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3597, metadata !1106), !dbg !3611
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3598, metadata !1106), !dbg !3612
  %5 = tail call i32* @__errno_location() #17, !dbg !3613
  %6 = load i32, i32* %5, align 4, !dbg !3613, !tbaa !1188
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3599, metadata !1106), !dbg !3614
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3615, !tbaa !1113
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3600, metadata !1106), !dbg !3616
  %8 = icmp slt i32 %0, 0, !dbg !3617
  br i1 %8, label %9, label %10, !dbg !3619

; <label>:9:                                      ; preds = %4
  tail call void @abort() #16, !dbg !3620
  unreachable, !dbg !3620

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3621, !tbaa !1188
  %12 = icmp sgt i32 %11, %0, !dbg !3622
  br i1 %12, label %34, label %13, !dbg !3623

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3624
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3625
  br i1 %15, label %16, label %17, !dbg !3627

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3628
  unreachable, !dbg !3628

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3629
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3629
  %20 = add nsw i32 %0, 1, !dbg !3630
  %21 = sext i32 %20 to i64, !dbg !3631
  %22 = shl nsw i64 %21, 4, !dbg !3632
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #13, !dbg !3633
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3633
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3600, metadata !1106), !dbg !3616
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3634, !tbaa !1113
  br i1 %14, label %25, label %26, !dbg !3635

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3636, !tbaa.struct !3638
  br label %26, !dbg !3639

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3640, !tbaa !1188
  %28 = sext i32 %27 to i64, !dbg !3641
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3641
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3642
  %31 = sub nsw i32 %20, %27, !dbg !3643
  %32 = sext i32 %31 to i64, !dbg !3644
  %33 = shl nsw i64 %32, 4, !dbg !3645
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3642
  store i32 %20, i32* @nslots, align 4, !dbg !3646, !tbaa !1188
  br label %34, !dbg !3647

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3600, metadata !1106), !dbg !3616
  %36 = sext i32 %0 to i64, !dbg !3648
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3649
  %38 = load i64, i64* %37, align 8, !dbg !3649, !tbaa !3568
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3604, metadata !1106), !dbg !3650
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3651
  %40 = load i8*, i8** %39, align 8, !dbg !3651, !tbaa !3555
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3606, metadata !1106), !dbg !3652
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3653
  %42 = load i32, i32* %41, align 4, !dbg !3653, !tbaa !2653
  %43 = or i32 %42, 1, !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3607, metadata !1106), !dbg !3655
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3656
  %45 = load i32, i32* %44, align 8, !dbg !3656, !tbaa !2593
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3657
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3658
  %48 = load i8*, i8** %47, align 8, !dbg !3658, !tbaa !2679
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3659
  %50 = load i8*, i8** %49, align 8, !dbg !3659, !tbaa !2682
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3660
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3608, metadata !1106), !dbg !3661
  %52 = icmp ugt i64 %38, %51, !dbg !3662
  br i1 %52, label %63, label %53, !dbg !3664

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3665
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3604, metadata !1106), !dbg !3650
  store i64 %54, i64* %37, align 8, !dbg !3667, !tbaa !3568
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3668
  br i1 %55, label %57, label %56, !dbg !3670

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #13, !dbg !3671
  br label %57, !dbg !3671

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3494, metadata !1106) #13, !dbg !3672
  %58 = tail call noalias i8* @xmalloc(i64 %54) #13, !dbg !3674
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3606, metadata !1106), !dbg !3652
  store i8* %58, i8** %39, align 8, !dbg !3675, !tbaa !3555
  %59 = load i32, i32* %44, align 8, !dbg !3676, !tbaa !2593
  %60 = load i8*, i8** %47, align 8, !dbg !3677, !tbaa !2679
  %61 = load i8*, i8** %49, align 8, !dbg !3678, !tbaa !2682
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3679
  br label %63, !dbg !3680

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3606, metadata !1106), !dbg !3652
  store i32 %6, i32* %5, align 4, !dbg !3681, !tbaa !1188
  ret i8* %64, !dbg !3682
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3683 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3687, metadata !1106), !dbg !3690
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3688, metadata !1106), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3689, metadata !1106), !dbg !3692
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3693
  ret i8* %4, !dbg !3694
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3695 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3699, metadata !1106), !dbg !3700
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3585, metadata !1106) #13, !dbg !3701
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3586, metadata !1106) #13, !dbg !3703
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #13, !dbg !3704
  ret i8* %2, !dbg !3705
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3706 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3710, metadata !1106), !dbg !3712
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3711, metadata !1106), !dbg !3713
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3687, metadata !1106) #13, !dbg !3714
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3688, metadata !1106) #13, !dbg !3716
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3689, metadata !1106) #13, !dbg !3717
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #13, !dbg !3718
  ret i8* %3, !dbg !3719
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3720 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3728, metadata !3734), !dbg !3735
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3724, metadata !1106), !dbg !3737
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3725, metadata !1106), !dbg !3738
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3726, metadata !1106), !dbg !3739
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3740
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !3740
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3727, metadata !1106), !dbg !3741
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3733, metadata !1106) #13, !dbg !3742
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3743
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3743
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3728, metadata !1106) #13, !dbg !3735
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3728, metadata !3744) #13, !dbg !3735
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3735
  %8 = icmp eq i32 %1, 10, !dbg !3745
  br i1 %8, label %9, label %10, !dbg !3747

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3748, !noalias !3749
  unreachable, !dbg !3748

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3728, metadata !3744) #13, !dbg !3735
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3752
  store i32 %1, i32* %11, align 8, !dbg !3752, !alias.scope !3749
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3752
  %13 = bitcast i32* %12 to i8*, !dbg !3752
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #13, !dbg !3752
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3753
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3727, metadata !1106), !dbg !3741
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3754
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !3755
  ret i8* %14, !dbg !3756
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3757 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3728, metadata !3734), !dbg !3766
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3761, metadata !1106), !dbg !3768
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3762, metadata !1106), !dbg !3769
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3763, metadata !1106), !dbg !3770
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3764, metadata !1106), !dbg !3771
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3772
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #13, !dbg !3772
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3765, metadata !1106), !dbg !3773
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3733, metadata !1106) #13, !dbg !3774
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3775
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3775
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3728, metadata !1106) #13, !dbg !3766
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3728, metadata !3744) #13, !dbg !3766
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3766
  %9 = icmp eq i32 %1, 10, !dbg !3776
  br i1 %9, label %10, label %11, !dbg !3777

; <label>:10:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3778, !noalias !3779
  unreachable, !dbg !3778

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3728, metadata !3744) #13, !dbg !3766
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3782
  store i32 %1, i32* %12, align 8, !dbg !3782, !alias.scope !3779
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3782
  %14 = bitcast i32* %13 to i8*, !dbg !3782
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #13, !dbg !3782
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3783
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3765, metadata !1106), !dbg !3773
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3784
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #13, !dbg !3785
  ret i8* %15, !dbg !3786
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3787 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3728, metadata !3734), !dbg !3793
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3791, metadata !1106), !dbg !3796
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3792, metadata !1106), !dbg !3797
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3724, metadata !1106) #13, !dbg !3798
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3725, metadata !1106) #13, !dbg !3799
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3726, metadata !1106) #13, !dbg !3800
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3801
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !3801
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3727, metadata !1106) #13, !dbg !3802
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3733, metadata !1106) #13, !dbg !3803
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3804
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !3804
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3728, metadata !1106) #13, !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3728, metadata !3744) #13, !dbg !3793
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3793
  %7 = icmp eq i32 %0, 10, !dbg !3805
  br i1 %7, label %8, label %9, !dbg !3806

; <label>:8:                                      ; preds = %2
  tail call void @abort() #16, !dbg !3807, !noalias !3808
  unreachable, !dbg !3807

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3728, metadata !3744) #13, !dbg !3793
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3811
  store i32 %0, i32* %10, align 8, !dbg !3811, !alias.scope !3808
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3811
  %12 = bitcast i32* %11 to i8*, !dbg !3811
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #13, !dbg !3811
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !3812
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3727, metadata !1106) #13, !dbg !3802
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #13, !dbg !3813
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !3814
  ret i8* %13, !dbg !3815
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3816 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3728, metadata !3734), !dbg !3823
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3820, metadata !1106), !dbg !3826
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3821, metadata !1106), !dbg !3827
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3822, metadata !1106), !dbg !3828
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3761, metadata !1106) #13, !dbg !3829
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3762, metadata !1106) #13, !dbg !3830
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3763, metadata !1106) #13, !dbg !3831
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3764, metadata !1106) #13, !dbg !3832
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3833
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !3833
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3765, metadata !1106) #13, !dbg !3834
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3733, metadata !1106) #13, !dbg !3835
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3836
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3836
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3728, metadata !1106) #13, !dbg !3823
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3728, metadata !3744) #13, !dbg !3823
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3823
  %8 = icmp eq i32 %0, 10, !dbg !3837
  br i1 %8, label %9, label %10, !dbg !3838

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3839, !noalias !3840
  unreachable, !dbg !3839

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3728, metadata !3744) #13, !dbg !3823
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3843
  store i32 %0, i32* %11, align 8, !dbg !3843, !alias.scope !3840
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3843
  %13 = bitcast i32* %12 to i8*, !dbg !3843
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #13, !dbg !3843
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3765, metadata !1106) #13, !dbg !3834
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #13, !dbg !3845
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !3846
  ret i8* %14, !dbg !3847
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3848 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3852, metadata !1106), !dbg !3856
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3853, metadata !1106), !dbg !3857
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3854, metadata !1106), !dbg !3858
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3859
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !3859
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3860, !tbaa.struct !3861
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3855, metadata !1106), !dbg !3862
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2612, metadata !1106), !dbg !3863
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2613, metadata !1106), !dbg !3865
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2614, metadata !1106), !dbg !3866
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2615, metadata !1106), !dbg !3867
  %6 = lshr i8 %2, 5, !dbg !3868
  %7 = zext i8 %6 to i64, !dbg !3868
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3869
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2616, metadata !1106), !dbg !3870
  %9 = and i8 %2, 31, !dbg !3871
  %10 = zext i8 %9 to i32, !dbg !3872
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2618, metadata !1106), !dbg !3873
  %11 = load i32, i32* %8, align 4, !dbg !3874, !tbaa !1188
  %12 = lshr i32 %11, %10, !dbg !3875
  %13 = and i32 %12, 1, !dbg !3876
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2619, metadata !1106), !dbg !3877
  %14 = xor i32 %13, 1, !dbg !3878
  %15 = shl i32 %14, %10, !dbg !3879
  %16 = xor i32 %15, %11, !dbg !3880
  store i32 %16, i32* %8, align 4, !dbg !3880, !tbaa !1188
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3855, metadata !1106), !dbg !3862
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3881
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !3882
  ret i8* %17, !dbg !3883
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3884 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3888, metadata !1106), !dbg !3890
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3889, metadata !1106), !dbg !3891
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3852, metadata !1106) #13, !dbg !3892
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3853, metadata !1106) #13, !dbg !3894
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3854, metadata !1106) #13, !dbg !3895
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3896
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #13, !dbg !3896
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13, !dbg !3897, !tbaa.struct !3861
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3855, metadata !1106) #13, !dbg !3898
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2612, metadata !1106) #13, !dbg !3899
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2613, metadata !1106) #13, !dbg !3901
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2614, metadata !1106) #13, !dbg !3902
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2615, metadata !1106) #13, !dbg !3903
  %5 = lshr i8 %1, 5, !dbg !3904
  %6 = zext i8 %5 to i64, !dbg !3904
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3905
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2616, metadata !1106) #13, !dbg !3906
  %8 = and i8 %1, 31, !dbg !3907
  %9 = zext i8 %8 to i32, !dbg !3908
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2618, metadata !1106) #13, !dbg !3909
  %10 = load i32, i32* %7, align 4, !dbg !3910, !tbaa !1188
  %11 = lshr i32 %10, %9, !dbg !3911
  %12 = and i32 %11, 1, !dbg !3912
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2619, metadata !1106) #13, !dbg !3913
  %13 = xor i32 %12, 1, !dbg !3914
  %14 = shl i32 %13, %9, !dbg !3915
  %15 = xor i32 %14, %10, !dbg !3916
  store i32 %15, i32* %7, align 4, !dbg !3916, !tbaa !1188
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3855, metadata !1106) #13, !dbg !3898
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #13, !dbg !3917
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #13, !dbg !3918
  ret i8* %16, !dbg !3919
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3920 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3922, metadata !1106), !dbg !3923
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3888, metadata !1106) #13, !dbg !3924
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3889, metadata !1106) #13, !dbg !3926
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3852, metadata !1106) #13, !dbg !3927
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3853, metadata !1106) #13, !dbg !3929
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3854, metadata !1106) #13, !dbg !3930
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3931
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #13, !dbg !3931
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13, !dbg !3932, !tbaa.struct !3861
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3855, metadata !1106) #13, !dbg !3933
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2612, metadata !1106) #13, !dbg !3934
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2613, metadata !1106) #13, !dbg !3936
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2614, metadata !1106) #13, !dbg !3937
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2615, metadata !1106) #13, !dbg !3938
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3939
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2616, metadata !1106) #13, !dbg !3940
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2618, metadata !1106) #13, !dbg !3941
  %5 = load i32, i32* %4, align 4, !dbg !3942, !tbaa !1188
  %6 = or i32 %5, 67108864, !dbg !3943
  store i32 %6, i32* %4, align 4, !dbg !3943, !tbaa !1188
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3855, metadata !1106) #13, !dbg !3933
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #13, !dbg !3944
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #13, !dbg !3945
  ret i8* %7, !dbg !3946
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3947 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3949, metadata !1106), !dbg !3951
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3950, metadata !1106), !dbg !3952
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3852, metadata !1106) #13, !dbg !3953
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3853, metadata !1106) #13, !dbg !3955
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3854, metadata !1106) #13, !dbg !3956
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3957
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #13, !dbg !3957
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13, !dbg !3958, !tbaa.struct !3861
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3855, metadata !1106) #13, !dbg !3959
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2612, metadata !1106) #13, !dbg !3960
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2613, metadata !1106) #13, !dbg !3962
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2614, metadata !1106) #13, !dbg !3963
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2615, metadata !1106) #13, !dbg !3964
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3965
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2616, metadata !1106) #13, !dbg !3966
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2618, metadata !1106) #13, !dbg !3967
  %6 = load i32, i32* %5, align 4, !dbg !3968, !tbaa !1188
  %7 = or i32 %6, 67108864, !dbg !3969
  store i32 %7, i32* %5, align 4, !dbg !3969, !tbaa !1188
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3855, metadata !1106) #13, !dbg !3959
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #13, !dbg !3970
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #13, !dbg !3971
  ret i8* %8, !dbg !3972
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3973 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3728, metadata !3734), !dbg !3979
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3975, metadata !1106), !dbg !3981
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3976, metadata !1106), !dbg !3982
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3977, metadata !1106), !dbg !3983
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3984
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #13, !dbg !3984
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3733, metadata !1106) #13, !dbg !3985
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3986
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3986
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3728, metadata !1106) #13, !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3728, metadata !3744) #13, !dbg !3979
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3979
  %9 = icmp eq i32 %1, 10, !dbg !3987
  br i1 %9, label %10, label %11, !dbg !3988

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !3989, !noalias !3990
  unreachable, !dbg !3989

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3728, metadata !3744) #13, !dbg !3979
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3993
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3993
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3994
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3995
  store i32 %1, i32* %13, align 8, !dbg !3995
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3995
  %15 = bitcast i32* %14 to i8*, !dbg !3995
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3995
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3978, metadata !1106), !dbg !3996
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2612, metadata !1106), !dbg !3997
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2613, metadata !1106), !dbg !3999
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2614, metadata !1106), !dbg !4000
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2615, metadata !1106), !dbg !4001
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !4002
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2616, metadata !1106), !dbg !4003
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2618, metadata !1106), !dbg !4004
  %17 = load i32, i32* %16, align 4, !dbg !4005, !tbaa !1188
  %18 = or i32 %17, 67108864, !dbg !4006
  store i32 %18, i32* %16, align 4, !dbg !4006, !tbaa !1188
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3978, metadata !1106), !dbg !3996
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4007
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #13, !dbg !4008
  ret i8* %19, !dbg !4009
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4010 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4014, metadata !1106), !dbg !4018
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4015, metadata !1106), !dbg !4019
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4016, metadata !1106), !dbg !4020
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4017, metadata !1106), !dbg !4021
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4022, metadata !1106) #13, !dbg !4032
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4027, metadata !1106) #13, !dbg !4034
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4028, metadata !1106) #13, !dbg !4035
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4029, metadata !1106) #13, !dbg !4036
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4030, metadata !1106) #13, !dbg !4037
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4038
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4038
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13, !dbg !4039, !tbaa.struct !3861
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4031, metadata !1106) #13, !dbg !4040
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2661, metadata !1106) #13, !dbg !4041
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2662, metadata !1106) #13, !dbg !4043
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2663, metadata !1106) #13, !dbg !4044
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2661, metadata !1106) #13, !dbg !4041
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2661, metadata !1106) #13, !dbg !4041
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4045
  store i32 10, i32* %7, align 8, !dbg !4046, !tbaa !2593
  %8 = icmp ne i8* %1, null, !dbg !4047
  %9 = icmp ne i8* %2, null, !dbg !4048
  %10 = and i1 %8, %9, !dbg !4049
  br i1 %10, label %12, label %11, !dbg !4049

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !4050
  unreachable, !dbg !4050

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4051
  store i8* %1, i8** %13, align 8, !dbg !4052, !tbaa !2679
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4053
  store i8* %2, i8** %14, align 8, !dbg !4054, !tbaa !2682
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4031, metadata !1106) #13, !dbg !4040
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #13, !dbg !4055
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4056
  ret i8* %15, !dbg !4057
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4023 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4022, metadata !1106), !dbg !4058
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4027, metadata !1106), !dbg !4059
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4028, metadata !1106), !dbg !4060
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4029, metadata !1106), !dbg !4061
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4030, metadata !1106), !dbg !4062
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4063
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #13, !dbg !4063
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4064, !tbaa.struct !3861
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4031, metadata !1106), !dbg !4065
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2661, metadata !1106) #13, !dbg !4066
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2662, metadata !1106) #13, !dbg !4068
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2663, metadata !1106) #13, !dbg !4069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2661, metadata !1106) #13, !dbg !4066
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2661, metadata !1106) #13, !dbg !4066
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4070
  store i32 10, i32* %8, align 8, !dbg !4071, !tbaa !2593
  %9 = icmp ne i8* %1, null, !dbg !4072
  %10 = icmp ne i8* %2, null, !dbg !4073
  %11 = and i1 %9, %10, !dbg !4074
  br i1 %11, label %13, label %12, !dbg !4074

; <label>:12:                                     ; preds = %5
  tail call void @abort() #16, !dbg !4075
  unreachable, !dbg !4075

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4076
  store i8* %1, i8** %14, align 8, !dbg !4077, !tbaa !2679
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4078
  store i8* %2, i8** %15, align 8, !dbg !4079, !tbaa !2682
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4031, metadata !1106), !dbg !4065
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4080
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #13, !dbg !4081
  ret i8* %16, !dbg !4082
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4083 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4087, metadata !1106), !dbg !4090
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4088, metadata !1106), !dbg !4091
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4089, metadata !1106), !dbg !4092
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4014, metadata !1106) #13, !dbg !4093
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4015, metadata !1106) #13, !dbg !4095
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4016, metadata !1106) #13, !dbg !4096
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4017, metadata !1106) #13, !dbg !4097
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4022, metadata !1106) #13, !dbg !4098
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4027, metadata !1106) #13, !dbg !4100
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4028, metadata !1106) #13, !dbg !4101
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4029, metadata !1106) #13, !dbg !4102
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4030, metadata !1106) #13, !dbg !4103
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4104
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4104
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13, !dbg !4105, !tbaa.struct !3861
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4031, metadata !1106) #13, !dbg !4106
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2661, metadata !1106) #13, !dbg !4107
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2662, metadata !1106) #13, !dbg !4109
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2663, metadata !1106) #13, !dbg !4110
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2661, metadata !1106) #13, !dbg !4107
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2661, metadata !1106) #13, !dbg !4107
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4111
  store i32 10, i32* %6, align 8, !dbg !4112, !tbaa !2593
  %7 = icmp ne i8* %0, null, !dbg !4113
  %8 = icmp ne i8* %1, null, !dbg !4114
  %9 = and i1 %7, %8, !dbg !4115
  br i1 %9, label %11, label %10, !dbg !4115

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !4116
  unreachable, !dbg !4116

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4117
  store i8* %0, i8** %12, align 8, !dbg !4118, !tbaa !2679
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4119
  store i8* %1, i8** %13, align 8, !dbg !4120, !tbaa !2682
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4031, metadata !1106) #13, !dbg !4106
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #13, !dbg !4121
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4122
  ret i8* %14, !dbg !4123
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4124 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4128, metadata !1106), !dbg !4132
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4129, metadata !1106), !dbg !4133
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4130, metadata !1106), !dbg !4134
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4131, metadata !1106), !dbg !4135
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4022, metadata !1106) #13, !dbg !4136
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4027, metadata !1106) #13, !dbg !4138
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4028, metadata !1106) #13, !dbg !4139
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4029, metadata !1106) #13, !dbg !4140
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4030, metadata !1106) #13, !dbg !4141
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4142
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4142
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13, !dbg !4143, !tbaa.struct !3861
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4031, metadata !1106) #13, !dbg !4144
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2661, metadata !1106) #13, !dbg !4145
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2662, metadata !1106) #13, !dbg !4147
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2663, metadata !1106) #13, !dbg !4148
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2661, metadata !1106) #13, !dbg !4145
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2661, metadata !1106) #13, !dbg !4145
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4149
  store i32 10, i32* %7, align 8, !dbg !4150, !tbaa !2593
  %8 = icmp ne i8* %0, null, !dbg !4151
  %9 = icmp ne i8* %1, null, !dbg !4152
  %10 = and i1 %8, %9, !dbg !4153
  br i1 %10, label %12, label %11, !dbg !4153

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !4154
  unreachable, !dbg !4154

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4155
  store i8* %0, i8** %13, align 8, !dbg !4156, !tbaa !2679
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4157
  store i8* %1, i8** %14, align 8, !dbg !4158, !tbaa !2682
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4031, metadata !1106) #13, !dbg !4144
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #13, !dbg !4159
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4160
  ret i8* %15, !dbg !4161
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4162 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4166, metadata !1106), !dbg !4169
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4167, metadata !1106), !dbg !4170
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4168, metadata !1106), !dbg !4171
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4172
  ret i8* %4, !dbg !4173
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !4174 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4178, metadata !1106), !dbg !4180
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4179, metadata !1106), !dbg !4181
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4166, metadata !1106) #13, !dbg !4182
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4167, metadata !1106) #13, !dbg !4184
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4168, metadata !1106) #13, !dbg !4185
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !4186
  ret i8* %3, !dbg !4187
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !4188 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4192, metadata !1106), !dbg !4194
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4193, metadata !1106), !dbg !4195
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4166, metadata !1106) #13, !dbg !4196
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4167, metadata !1106) #13, !dbg !4198
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4168, metadata !1106) #13, !dbg !4199
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !4200
  ret i8* %3, !dbg !4201
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !4202 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4206, metadata !1106), !dbg !4207
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4192, metadata !1106) #13, !dbg !4208
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4193, metadata !1106) #13, !dbg !4210
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4166, metadata !1106) #13, !dbg !4211
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4167, metadata !1106) #13, !dbg !4213
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4168, metadata !1106) #13, !dbg !4214
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !4215
  ret i8* %2, !dbg !4216
}

; Function Attrs: nounwind sspstrong uwtable
define void @readtokens0_init(%struct.Tokens*) local_unnamed_addr #6 !dbg !4217 {
  tail call void @llvm.dbg.value(metadata %struct.Tokens* %0, i64 0, metadata !4264, metadata !1106), !dbg !4265
  %2 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, !dbg !4266
  %3 = bitcast %struct.Tokens* %0 to i8*, !dbg !4266
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 24, i32 8, i1 false), !dbg !4267
  %4 = tail call i32 @_obstack_begin(%struct.obstack* %2, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #13, !dbg !4266
  %5 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, !dbg !4268
  %6 = tail call i32 @_obstack_begin(%struct.obstack* %5, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #13, !dbg !4268
  %7 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, !dbg !4269
  %8 = tail call i32 @_obstack_begin(%struct.obstack* %7, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #13, !dbg !4269
  ret void, !dbg !4270
}

; Function Attrs: nounwind sspstrong uwtable
define void @readtokens0_free(%struct.Tokens*) local_unnamed_addr #6 !dbg !4271 {
  tail call void @llvm.dbg.value(metadata %struct.Tokens* %0, i64 0, metadata !4273, metadata !1106), !dbg !4284
  tail call void @llvm.dbg.value(metadata %struct.obstack* %2, i64 0, metadata !4274, metadata !1106), !dbg !4285
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4277, metadata !1106), !dbg !4285
  %2 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, !dbg !4285
  tail call void @_obstack_free(%struct.obstack* %2, i8* null) #13, !dbg !4286
  tail call void @llvm.dbg.value(metadata %struct.obstack* %3, i64 0, metadata !4278, metadata !1106), !dbg !4288
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4280, metadata !1106), !dbg !4288
  %3 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, !dbg !4288
  tail call void @_obstack_free(%struct.obstack* %3, i8* null) #13, !dbg !4289
  tail call void @llvm.dbg.value(metadata %struct.obstack* %4, i64 0, metadata !4281, metadata !1106), !dbg !4291
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4283, metadata !1106), !dbg !4291
  %4 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, !dbg !4291
  tail call void @_obstack_free(%struct.obstack* %4, i8* null) #13, !dbg !4292
  ret void, !dbg !4294
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @readtokens0(%struct._IO_FILE* nocapture, %struct.Tokens*) local_unnamed_addr #6 !dbg !4295 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4339, metadata !1106), !dbg !4376
  tail call void @llvm.dbg.value(metadata %struct.Tokens* %1, i64 0, metadata !4340, metadata !1106), !dbg !4377
  %3 = tail call i32 @fgetc(%struct._IO_FILE* %0), !dbg !4378
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !4341, metadata !1106), !dbg !4379
  %4 = icmp eq i32 %3, -1, !dbg !4380
  br i1 %4, label %5, label %9, !dbg !4381

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, !dbg !4382
  %7 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 3, !dbg !4382
  %8 = bitcast i8** %7 to i64*, !dbg !4382
  br label %15, !dbg !4381

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 4
  %11 = bitcast i8** %10 to i64*
  %12 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 3
  %13 = bitcast i8** %12 to i64*
  %14 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3
  br label %35, !dbg !4381

; <label>:15:                                     ; preds = %49, %5
  %16 = phi i64* [ %8, %5 ], [ %13, %49 ], !dbg !4382
  %17 = phi i8** [ %7, %5 ], [ %12, %49 ], !dbg !4382
  %18 = phi %struct.obstack* [ %6, %5 ], [ %14, %49 ], !dbg !4382
  tail call void @llvm.dbg.value(metadata %struct.obstack* %18, i64 0, metadata !4346, metadata !1106), !dbg !4382
  %19 = load i64, i64* %16, align 8, !dbg !4382, !tbaa !4383
  %20 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 2, !dbg !4382
  %21 = bitcast i8** %20 to i64*, !dbg !4382
  %22 = load i64, i64* %21, align 8, !dbg !4382, !tbaa !4384
  %23 = icmp eq i64 %19, %22, !dbg !4385
  br i1 %23, label %52, label %24, !dbg !4386

; <label>:24:                                     ; preds = %15
  %25 = inttoptr i64 %19 to i8*, !dbg !4386
  tail call void @llvm.dbg.value(metadata %struct.obstack* %18, i64 0, metadata !4350, metadata !1106), !dbg !4387
  tail call void @llvm.dbg.value(metadata %struct.obstack* %18, i64 0, metadata !4354, metadata !1106), !dbg !4388
  %26 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 4, !dbg !4388
  %27 = bitcast i8** %26 to i64*, !dbg !4388
  %28 = load i64, i64* %27, align 8, !dbg !4388, !tbaa !4389
  %29 = icmp eq i64 %28, %19, !dbg !4390
  br i1 %29, label %30, label %32, !dbg !4387

; <label>:30:                                     ; preds = %24
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %18, i64 1) #13, !dbg !4390
  %31 = load i8*, i8** %17, align 8, !dbg !4387, !tbaa !4383
  br label %32, !dbg !4390

; <label>:32:                                     ; preds = %30, %24
  %33 = phi i8* [ %31, %30 ], [ %25, %24 ], !dbg !4387
  %34 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !4387
  store i8* %34, i8** %17, align 8, !dbg !4387, !tbaa !4383
  store i8 0, i8* %33, align 1, !dbg !4387, !tbaa !1426
  tail call fastcc void @save_token(%struct.Tokens* nonnull %1), !dbg !4391
  br label %52

; <label>:35:                                     ; preds = %9, %49
  %36 = phi i32 [ %3, %9 ], [ %50, %49 ]
  tail call void @llvm.dbg.value(metadata %struct.obstack* %14, i64 0, metadata !4357, metadata !1106), !dbg !4392
  tail call void @llvm.dbg.value(metadata %struct.obstack* %14, i64 0, metadata !4359, metadata !1106), !dbg !4393
  %37 = load i64, i64* %11, align 8, !dbg !4393, !tbaa !4389
  %38 = load i64, i64* %13, align 8, !dbg !4393, !tbaa !4383
  %39 = icmp eq i64 %37, %38, !dbg !4394
  %40 = inttoptr i64 %38 to i8*, !dbg !4392
  br i1 %39, label %41, label %43, !dbg !4392

; <label>:41:                                     ; preds = %35
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %14, i64 1) #13, !dbg !4394
  %42 = load i8*, i8** %12, align 8, !dbg !4392, !tbaa !4383
  br label %43, !dbg !4394

; <label>:43:                                     ; preds = %41, %35
  %44 = phi i8* [ %42, %41 ], [ %40, %35 ], !dbg !4392
  %45 = trunc i32 %36 to i8, !dbg !4392
  %46 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !4392
  store i8* %46, i8** %12, align 8, !dbg !4392, !tbaa !4383
  store i8 %45, i8* %44, align 1, !dbg !4392, !tbaa !1426
  %47 = icmp eq i32 %36, 0, !dbg !4395
  br i1 %47, label %48, label %49, !dbg !4397

; <label>:48:                                     ; preds = %43
  tail call fastcc void @save_token(%struct.Tokens* nonnull %1), !dbg !4398
  br label %49, !dbg !4398

; <label>:49:                                     ; preds = %48, %43
  %50 = tail call i32 @fgetc(%struct._IO_FILE* %0), !dbg !4378
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !4341, metadata !1106), !dbg !4379
  %51 = icmp eq i32 %50, -1, !dbg !4380
  br i1 %51, label %15, label %35, !dbg !4381, !llvm.loop !4399

; <label>:52:                                     ; preds = %15, %32
  tail call void @llvm.dbg.value(metadata %struct.obstack* %64, i64 0, metadata !4362, metadata !1106), !dbg !4402
  tail call void @llvm.dbg.value(metadata %struct.obstack* %64, i64 0, metadata !4364, metadata !1106), !dbg !4403
  %53 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 4, !dbg !4403
  %54 = bitcast i8** %53 to i64*, !dbg !4403
  %55 = load i64, i64* %54, align 8, !dbg !4403, !tbaa !4389
  %56 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 3, !dbg !4403
  %57 = bitcast i8** %56 to i64*, !dbg !4403
  %58 = load i64, i64* %57, align 8, !dbg !4403, !tbaa !4383
  %59 = sub i64 %55, %58, !dbg !4403
  %60 = icmp ult i64 %59, 8, !dbg !4404
  br i1 %60, label %63, label %61, !dbg !4402

; <label>:61:                                     ; preds = %52
  %62 = inttoptr i64 %58 to i8**, !dbg !4402
  br label %67, !dbg !4402

; <label>:63:                                     ; preds = %52
  %64 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, !dbg !4402
  tail call void @_obstack_newchunk(%struct.obstack* %64, i64 8) #13, !dbg !4404
  %65 = bitcast i8** %56 to i8***
  %66 = load i8**, i8*** %65, align 8, !dbg !4405, !tbaa !4383
  br label %67, !dbg !4404

; <label>:67:                                     ; preds = %61, %63
  %68 = phi i8** [ %66, %63 ], [ %62, %61 ], !dbg !4405
  tail call void @llvm.dbg.value(metadata %struct.obstack* %64, i64 0, metadata !4367, metadata !1106), !dbg !4405
  tail call void @llvm.dbg.value(metadata i8** %56, i64 0, metadata !4369, metadata !4406), !dbg !4405
  store i8* null, i8** %68, align 8, !dbg !4405, !tbaa !1113
  %69 = load i8*, i8** %56, align 8, !dbg !4405, !tbaa !4383
  %70 = getelementptr inbounds i8, i8* %69, i64 8, !dbg !4405
  store i8* %70, i8** %56, align 8, !dbg !4405, !tbaa !4383
  tail call void @llvm.dbg.value(metadata %struct.obstack* %64, i64 0, metadata !4370, metadata !1106), !dbg !4407
  %71 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 2, !dbg !4407
  %72 = load i8*, i8** %71, align 8, !dbg !4407, !tbaa !4384
  tail call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !4372, metadata !1106), !dbg !4407
  %73 = icmp eq i8* %70, %72, !dbg !4408
  %74 = ptrtoint i8* %70 to i64, !dbg !4407
  br i1 %73, label %75, label %79, !dbg !4407

; <label>:75:                                     ; preds = %67
  %76 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 10, !dbg !4408
  %77 = load i8, i8* %76, align 8, !dbg !4408
  %78 = or i8 %77, 2, !dbg !4408
  store i8 %78, i8* %76, align 8, !dbg !4408
  br label %79, !dbg !4408

; <label>:79:                                     ; preds = %75, %67
  %80 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 6, !dbg !4407
  %81 = load i64, i64* %80, align 8, !dbg !4407, !tbaa !4410
  %82 = add i64 %81, %74, !dbg !4407
  %83 = xor i64 %81, -1, !dbg !4407
  %84 = and i64 %82, %83, !dbg !4407
  %85 = getelementptr inbounds i8, i8* null, i64 %84, !dbg !4407
  store i8* %85, i8** %56, align 8, !dbg !4407, !tbaa !4383
  %86 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 1, !dbg !4411
  %87 = bitcast %struct._obstack_chunk** %86 to i64*, !dbg !4411
  %88 = load i64, i64* %87, align 8, !dbg !4411, !tbaa !4413
  %89 = ptrtoint i8* %85 to i64, !dbg !4411
  %90 = sub i64 %89, %88, !dbg !4411
  %91 = load i8*, i8** %53, align 8, !dbg !4411, !tbaa !4389
  %92 = ptrtoint i8* %91 to i64, !dbg !4411
  %93 = sub i64 %92, %88, !dbg !4411
  %94 = icmp ugt i64 %90, %93, !dbg !4411
  br i1 %94, label %95, label %96, !dbg !4407

; <label>:95:                                     ; preds = %79
  store i8* %91, i8** %56, align 8, !dbg !4411, !tbaa !4383
  br label %96, !dbg !4411

; <label>:96:                                     ; preds = %95, %79
  %97 = phi i64 [ %92, %95 ], [ %89, %79 ], !dbg !4407
  %98 = bitcast i8** %71 to i64*, !dbg !4407
  store i64 %97, i64* %98, align 8, !dbg !4407, !tbaa !4384
  %99 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 1, !dbg !4414
  %100 = bitcast i8*** %99 to i8**, !dbg !4415
  store i8* %72, i8** %100, align 8, !dbg !4415, !tbaa !1250
  tail call void @llvm.dbg.value(metadata %struct.Tokens* %1, i64 0, metadata !4373, metadata !4416), !dbg !4417
  %101 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 2, !dbg !4417
  %102 = load i8*, i8** %101, align 8, !dbg !4417, !tbaa !4384
  tail call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !4375, metadata !1106), !dbg !4417
  %103 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 3, !dbg !4418
  %104 = load i8*, i8** %103, align 8, !dbg !4418, !tbaa !4383
  %105 = icmp eq i8* %104, %102, !dbg !4418
  %106 = ptrtoint i8* %104 to i64, !dbg !4417
  br i1 %105, label %107, label %111, !dbg !4417

; <label>:107:                                    ; preds = %96
  %108 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 10, !dbg !4418
  %109 = load i8, i8* %108, align 8, !dbg !4418
  %110 = or i8 %109, 2, !dbg !4418
  store i8 %110, i8* %108, align 8, !dbg !4418
  br label %111, !dbg !4418

; <label>:111:                                    ; preds = %107, %96
  %112 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 6, !dbg !4417
  %113 = load i64, i64* %112, align 8, !dbg !4417, !tbaa !4410
  %114 = add i64 %113, %106, !dbg !4417
  %115 = xor i64 %113, -1, !dbg !4417
  %116 = and i64 %114, %115, !dbg !4417
  %117 = getelementptr inbounds i8, i8* null, i64 %116, !dbg !4417
  store i8* %117, i8** %103, align 8, !dbg !4417, !tbaa !4383
  %118 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 1, !dbg !4420
  %119 = bitcast %struct._obstack_chunk** %118 to i64*, !dbg !4420
  %120 = load i64, i64* %119, align 8, !dbg !4420, !tbaa !4413
  %121 = ptrtoint i8* %117 to i64, !dbg !4420
  %122 = sub i64 %121, %120, !dbg !4420
  %123 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 4, !dbg !4420
  %124 = load i8*, i8** %123, align 8, !dbg !4420, !tbaa !4389
  %125 = ptrtoint i8* %124 to i64, !dbg !4420
  %126 = sub i64 %125, %120, !dbg !4420
  %127 = icmp ugt i64 %122, %126, !dbg !4420
  br i1 %127, label %128, label %129, !dbg !4417

; <label>:128:                                    ; preds = %111
  store i8* %124, i8** %103, align 8, !dbg !4420, !tbaa !4383
  br label %129, !dbg !4420

; <label>:129:                                    ; preds = %128, %111
  %130 = phi i64 [ %125, %128 ], [ %121, %111 ], !dbg !4417
  %131 = bitcast i8** %101 to i64*, !dbg !4417
  store i64 %130, i64* %131, align 8, !dbg !4417, !tbaa !4384
  %132 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 2, !dbg !4422
  %133 = bitcast i64** %132 to i8**, !dbg !4423
  store i8* %102, i8** %133, align 8, !dbg !4423, !tbaa !4424
  %134 = tail call i32 @ferror(%struct._IO_FILE* %0) #13, !dbg !4425
  %135 = icmp eq i32 %134, 0, !dbg !4426
  ret i1 %135, !dbg !4427
}

; Function Attrs: nounwind
declare i32 @fgetc(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @save_token(%struct.Tokens*) unnamed_addr #6 !dbg !4428 {
  tail call void @llvm.dbg.value(metadata %struct.Tokens* %0, i64 0, metadata !4430, metadata !1106), !dbg !4452
  tail call void @llvm.dbg.value(metadata %struct.Tokens* %0, i64 0, metadata !4432, metadata !4453), !dbg !4454
  %2 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 3, !dbg !4454
  %3 = bitcast i8** %2 to i64*, !dbg !4454
  %4 = load i64, i64* %3, align 8, !dbg !4454, !tbaa !4383
  %5 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 2, !dbg !4454
  %6 = bitcast i8** %5 to i64*, !dbg !4454
  %7 = load i64, i64* %6, align 8, !dbg !4454, !tbaa !4384
  %8 = add i64 %4, -1, !dbg !4454
  %9 = sub i64 %8, %7, !dbg !4455
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4431, metadata !1106), !dbg !4456
  tail call void @llvm.dbg.value(metadata %struct.Tokens* %0, i64 0, metadata !4435, metadata !4453), !dbg !4457
  %10 = inttoptr i64 %7 to i8*, !dbg !4457
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !4437, metadata !1106), !dbg !4457
  %11 = inttoptr i64 %4 to i8*, !dbg !4458
  %12 = icmp eq i8* %11, %10, !dbg !4458
  br i1 %12, label %13, label %17, !dbg !4457

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 10, !dbg !4458
  %15 = load i8, i8* %14, align 8, !dbg !4458
  %16 = or i8 %15, 2, !dbg !4458
  store i8 %16, i8* %14, align 8, !dbg !4458
  br label %17, !dbg !4458

; <label>:17:                                     ; preds = %13, %1
  %18 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 6, !dbg !4457
  %19 = load i64, i64* %18, align 8, !dbg !4457, !tbaa !4410
  %20 = add i64 %19, %4, !dbg !4457
  %21 = xor i64 %19, -1, !dbg !4457
  %22 = and i64 %20, %21, !dbg !4457
  %23 = getelementptr inbounds i8, i8* null, i64 %22, !dbg !4457
  store i8* %23, i8** %2, align 8, !dbg !4457, !tbaa !4383
  %24 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 1, !dbg !4460
  %25 = bitcast %struct._obstack_chunk** %24 to i64*, !dbg !4460
  %26 = load i64, i64* %25, align 8, !dbg !4460, !tbaa !4413
  %27 = ptrtoint i8* %23 to i64, !dbg !4460
  %28 = sub i64 %27, %26, !dbg !4460
  %29 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 4, !dbg !4460
  %30 = load i8*, i8** %29, align 8, !dbg !4460, !tbaa !4389
  %31 = ptrtoint i8* %30 to i64, !dbg !4460
  %32 = sub i64 %31, %26, !dbg !4460
  %33 = icmp ugt i64 %28, %32, !dbg !4460
  br i1 %33, label %34, label %35, !dbg !4457

; <label>:34:                                     ; preds = %17
  store i8* %30, i8** %2, align 8, !dbg !4460, !tbaa !4383
  br label %35, !dbg !4460

; <label>:35:                                     ; preds = %34, %17
  %36 = phi i64 [ %31, %34 ], [ %27, %17 ], !dbg !4457
  store i64 %36, i64* %6, align 8, !dbg !4457, !tbaa !4384
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !4434, metadata !1106), !dbg !4462
  tail call void @llvm.dbg.value(metadata %struct.obstack* %48, i64 0, metadata !4438, metadata !1106), !dbg !4463
  tail call void @llvm.dbg.value(metadata %struct.obstack* %48, i64 0, metadata !4440, metadata !1106), !dbg !4464
  %37 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, i32 4, !dbg !4464
  %38 = bitcast i8** %37 to i64*, !dbg !4464
  %39 = load i64, i64* %38, align 8, !dbg !4464, !tbaa !4389
  %40 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, i32 3, !dbg !4464
  %41 = bitcast i8** %40 to i64*, !dbg !4464
  %42 = load i64, i64* %41, align 8, !dbg !4464, !tbaa !4383
  %43 = sub i64 %39, %42, !dbg !4464
  %44 = icmp ult i64 %43, 8, !dbg !4465
  br i1 %44, label %47, label %45, !dbg !4463

; <label>:45:                                     ; preds = %35
  %46 = inttoptr i64 %42 to i8**, !dbg !4463
  br label %51, !dbg !4463

; <label>:47:                                     ; preds = %35
  %48 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, !dbg !4463
  tail call void @_obstack_newchunk(%struct.obstack* %48, i64 8) #13, !dbg !4465
  %49 = bitcast i8** %40 to i8***
  %50 = load i8**, i8*** %49, align 8, !dbg !4466, !tbaa !4383
  br label %51, !dbg !4465

; <label>:51:                                     ; preds = %45, %47
  %52 = phi i8** [ %50, %47 ], [ %46, %45 ], !dbg !4466
  tail call void @llvm.dbg.value(metadata %struct.obstack* %48, i64 0, metadata !4443, metadata !1106), !dbg !4466
  tail call void @llvm.dbg.value(metadata i8** %40, i64 0, metadata !4445, metadata !4406), !dbg !4466
  store i8* %10, i8** %52, align 8, !dbg !4466, !tbaa !1113
  %53 = load i8*, i8** %40, align 8, !dbg !4466, !tbaa !4383
  %54 = getelementptr inbounds i8, i8* %53, i64 8, !dbg !4466
  store i8* %54, i8** %40, align 8, !dbg !4466, !tbaa !4383
  tail call void @llvm.dbg.value(metadata %struct.obstack* %66, i64 0, metadata !4446, metadata !1106), !dbg !4467
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !4448, metadata !1106), !dbg !4467
  tail call void @llvm.dbg.value(metadata %struct.obstack* %66, i64 0, metadata !4449, metadata !1106), !dbg !4468
  %55 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, i32 4, !dbg !4468
  %56 = bitcast i8** %55 to i64*, !dbg !4468
  %57 = load i64, i64* %56, align 8, !dbg !4468, !tbaa !4389
  %58 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, i32 3, !dbg !4468
  %59 = bitcast i8** %58 to i64*, !dbg !4468
  %60 = load i64, i64* %59, align 8, !dbg !4468, !tbaa !4383
  %61 = sub i64 %57, %60, !dbg !4468
  %62 = icmp ult i64 %61, 8, !dbg !4469
  br i1 %62, label %65, label %63, !dbg !4467

; <label>:63:                                     ; preds = %51
  %64 = inttoptr i64 %60 to i64*, !dbg !4467
  br label %69, !dbg !4467

; <label>:65:                                     ; preds = %51
  %66 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, !dbg !4467
  tail call void @_obstack_newchunk(%struct.obstack* %66, i64 8) #13, !dbg !4469
  %67 = bitcast i8** %58 to i64**
  %68 = load i64*, i64** %67, align 8, !dbg !4467, !tbaa !4383
  br label %69, !dbg !4469

; <label>:69:                                     ; preds = %63, %65
  %70 = phi i64* [ %68, %65 ], [ %64, %63 ], !dbg !4467
  store i64 %9, i64* %70, align 1, !dbg !4467
  %71 = load i8*, i8** %58, align 8, !dbg !4467, !tbaa !4383
  %72 = getelementptr inbounds i8, i8* %71, i64 8, !dbg !4467
  store i8* %72, i8** %58, align 8, !dbg !4467, !tbaa !4383
  %73 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 0, !dbg !4470
  %74 = load i64, i64* %73, align 8, !dbg !4471, !tbaa !1255
  %75 = add i64 %74, 1, !dbg !4471
  store i64 %75, i64* %73, align 8, !dbg !4471, !tbaa !1255
  ret void, !dbg !4472
}

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #6 !dbg !1039 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1043, metadata !1106), !dbg !4473
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1044, metadata !1106), !dbg !4474
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1045, metadata !1106), !dbg !4475
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1045, metadata !1106), !dbg !4475
  %4 = tail call i64 @read(i32 %0, i8* %1, i64 %2) #13, !dbg !4476
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1046, metadata !1106), !dbg !4477
  %5 = icmp sgt i64 %4, -1, !dbg !4478
  br i1 %5, label %25, label %6, !dbg !4480

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #17, !dbg !4481
  br label %11, !dbg !4480

; <label>:8:                                      ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !1045, metadata !1106), !dbg !4475
  %9 = tail call i64 @read(i32 %0, i8* %1, i64 2147475456) #13, !dbg !4476
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1046, metadata !1106), !dbg !4477
  %10 = icmp sgt i64 %9, -1, !dbg !4478
  br i1 %10, label %25, label %11, !dbg !4480, !llvm.loop !4483

; <label>:11:                                     ; preds = %6, %8
  %12 = phi i64 [ %4, %6 ], [ %9, %8 ]
  %13 = phi i64 [ %2, %6 ], [ 2147475456, %8 ]
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1045, metadata !1106), !dbg !4475
  br label %17, !dbg !4480

; <label>:14:                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1045, metadata !1106), !dbg !4475
  %15 = tail call i64 @read(i32 %0, i8* %1, i64 %13) #13, !dbg !4476
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !1046, metadata !1106), !dbg !4477
  %16 = icmp sgt i64 %15, -1, !dbg !4478
  br i1 %16, label %25, label %17, !dbg !4480

; <label>:17:                                     ; preds = %11, %14
  %18 = phi i64 [ %12, %11 ], [ %15, %14 ]
  %19 = load i32, i32* %7, align 4, !dbg !4481, !tbaa !1188
  %20 = icmp eq i32 %19, 4, !dbg !4481
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !1045, metadata !1106), !dbg !4475
  br i1 %20, label %14, label %21, !dbg !4486, !llvm.loop !4483

; <label>:21:                                     ; preds = %17
  %22 = icmp eq i32 %19, 22, !dbg !4487
  %23 = icmp ugt i64 %13, 2147475456, !dbg !4489
  %24 = and i1 %23, %22, !dbg !4490
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !1045, metadata !1106), !dbg !4475
  br i1 %24, label %8, label %25

; <label>:25:                                     ; preds = %21, %8, %14, %3
  %26 = phi i64 [ %4, %3 ], [ %15, %14 ], [ %9, %8 ], [ %18, %21 ]
  ret i64 %26, !dbg !4491
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !4492 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4537, metadata !1106), !dbg !4543
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4538, metadata !1106), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4539, metadata !1106), !dbg !4545
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4540, metadata !1106), !dbg !4546
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4541, metadata !1106), !dbg !4547
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4542, metadata !1106), !dbg !4548
  %7 = icmp eq i8* %1, null, !dbg !4549
  br i1 %7, label %10, label %8, !dbg !4551

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.107, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #13, !dbg !4552
  br label %12, !dbg !4552

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.108, i64 0, i64 0), i8* %2, i8* %3) #13, !dbg !4553
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.109, i64 0, i64 0), i32 5) #13, !dbg !4554
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #13, !dbg !4554
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.110, i64 0, i64 0), i32 5) #13, !dbg !4555
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #13, !dbg !4555
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
  ], !dbg !4556

; <label>:17:                                     ; preds = %12
  tail call void @abort() #16, !dbg !4557
  unreachable, !dbg !4557

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.111, i64 0, i64 0), i32 5) #13, !dbg !4559
  %20 = load i8*, i8** %4, align 8, !dbg !4559, !tbaa !1113
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #13, !dbg !4559
  br label %146, !dbg !4560

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.112, i64 0, i64 0), i32 5) #13, !dbg !4561
  %24 = load i8*, i8** %4, align 8, !dbg !4561, !tbaa !1113
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4561
  %26 = load i8*, i8** %25, align 8, !dbg !4561, !tbaa !1113
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #13, !dbg !4561
  br label %146, !dbg !4562

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.113, i64 0, i64 0), i32 5) #13, !dbg !4563
  %30 = load i8*, i8** %4, align 8, !dbg !4563, !tbaa !1113
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4563
  %32 = load i8*, i8** %31, align 8, !dbg !4563, !tbaa !1113
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4563
  %34 = load i8*, i8** %33, align 8, !dbg !4563, !tbaa !1113
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #13, !dbg !4563
  br label %146, !dbg !4564

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.114, i64 0, i64 0), i32 5) #13, !dbg !4565
  %38 = load i8*, i8** %4, align 8, !dbg !4565, !tbaa !1113
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4565
  %40 = load i8*, i8** %39, align 8, !dbg !4565, !tbaa !1113
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4565
  %42 = load i8*, i8** %41, align 8, !dbg !4565, !tbaa !1113
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4565
  %44 = load i8*, i8** %43, align 8, !dbg !4565, !tbaa !1113
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #13, !dbg !4565
  br label %146, !dbg !4566

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.115, i64 0, i64 0), i32 5) #13, !dbg !4567
  %48 = load i8*, i8** %4, align 8, !dbg !4567, !tbaa !1113
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4567
  %50 = load i8*, i8** %49, align 8, !dbg !4567, !tbaa !1113
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4567
  %52 = load i8*, i8** %51, align 8, !dbg !4567, !tbaa !1113
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4567
  %54 = load i8*, i8** %53, align 8, !dbg !4567, !tbaa !1113
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4567
  %56 = load i8*, i8** %55, align 8, !dbg !4567, !tbaa !1113
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #13, !dbg !4567
  br label %146, !dbg !4568

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.116, i64 0, i64 0), i32 5) #13, !dbg !4569
  %60 = load i8*, i8** %4, align 8, !dbg !4569, !tbaa !1113
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4569
  %62 = load i8*, i8** %61, align 8, !dbg !4569, !tbaa !1113
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4569
  %64 = load i8*, i8** %63, align 8, !dbg !4569, !tbaa !1113
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4569
  %66 = load i8*, i8** %65, align 8, !dbg !4569, !tbaa !1113
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4569
  %68 = load i8*, i8** %67, align 8, !dbg !4569, !tbaa !1113
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4569
  %70 = load i8*, i8** %69, align 8, !dbg !4569, !tbaa !1113
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #13, !dbg !4569
  br label %146, !dbg !4570

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.117, i64 0, i64 0), i32 5) #13, !dbg !4571
  %74 = load i8*, i8** %4, align 8, !dbg !4571, !tbaa !1113
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4571
  %76 = load i8*, i8** %75, align 8, !dbg !4571, !tbaa !1113
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4571
  %78 = load i8*, i8** %77, align 8, !dbg !4571, !tbaa !1113
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4571
  %80 = load i8*, i8** %79, align 8, !dbg !4571, !tbaa !1113
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4571
  %82 = load i8*, i8** %81, align 8, !dbg !4571, !tbaa !1113
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4571
  %84 = load i8*, i8** %83, align 8, !dbg !4571, !tbaa !1113
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4571
  %86 = load i8*, i8** %85, align 8, !dbg !4571, !tbaa !1113
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #13, !dbg !4571
  br label %146, !dbg !4572

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.118, i64 0, i64 0), i32 5) #13, !dbg !4573
  %90 = load i8*, i8** %4, align 8, !dbg !4573, !tbaa !1113
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4573
  %92 = load i8*, i8** %91, align 8, !dbg !4573, !tbaa !1113
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4573
  %94 = load i8*, i8** %93, align 8, !dbg !4573, !tbaa !1113
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4573
  %96 = load i8*, i8** %95, align 8, !dbg !4573, !tbaa !1113
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4573
  %98 = load i8*, i8** %97, align 8, !dbg !4573, !tbaa !1113
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4573
  %100 = load i8*, i8** %99, align 8, !dbg !4573, !tbaa !1113
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4573
  %102 = load i8*, i8** %101, align 8, !dbg !4573, !tbaa !1113
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4573
  %104 = load i8*, i8** %103, align 8, !dbg !4573, !tbaa !1113
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #13, !dbg !4573
  br label %146, !dbg !4574

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.119, i64 0, i64 0), i32 5) #13, !dbg !4575
  %108 = load i8*, i8** %4, align 8, !dbg !4575, !tbaa !1113
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4575
  %110 = load i8*, i8** %109, align 8, !dbg !4575, !tbaa !1113
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4575
  %112 = load i8*, i8** %111, align 8, !dbg !4575, !tbaa !1113
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4575
  %114 = load i8*, i8** %113, align 8, !dbg !4575, !tbaa !1113
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4575
  %116 = load i8*, i8** %115, align 8, !dbg !4575, !tbaa !1113
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4575
  %118 = load i8*, i8** %117, align 8, !dbg !4575, !tbaa !1113
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4575
  %120 = load i8*, i8** %119, align 8, !dbg !4575, !tbaa !1113
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4575
  %122 = load i8*, i8** %121, align 8, !dbg !4575, !tbaa !1113
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4575
  %124 = load i8*, i8** %123, align 8, !dbg !4575, !tbaa !1113
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #13, !dbg !4575
  br label %146, !dbg !4576

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.120, i64 0, i64 0), i32 5) #13, !dbg !4577
  %128 = load i8*, i8** %4, align 8, !dbg !4577, !tbaa !1113
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4577
  %130 = load i8*, i8** %129, align 8, !dbg !4577, !tbaa !1113
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4577
  %132 = load i8*, i8** %131, align 8, !dbg !4577, !tbaa !1113
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4577
  %134 = load i8*, i8** %133, align 8, !dbg !4577, !tbaa !1113
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4577
  %136 = load i8*, i8** %135, align 8, !dbg !4577, !tbaa !1113
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4577
  %138 = load i8*, i8** %137, align 8, !dbg !4577, !tbaa !1113
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4577
  %140 = load i8*, i8** %139, align 8, !dbg !4577, !tbaa !1113
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4577
  %142 = load i8*, i8** %141, align 8, !dbg !4577, !tbaa !1113
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4577
  %144 = load i8*, i8** %143, align 8, !dbg !4577, !tbaa !1113
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #13, !dbg !4577
  br label %146, !dbg !4578

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4579
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4580 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4584, metadata !1106), !dbg !4590
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4585, metadata !1106), !dbg !4591
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4586, metadata !1106), !dbg !4592
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4587, metadata !1106), !dbg !4593
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4588, metadata !1106), !dbg !4594
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4589, metadata !1106), !dbg !4595
  br label %6, !dbg !4596

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4589, metadata !1106), !dbg !4595
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4598
  %9 = load i8*, i8** %8, align 8, !dbg !4598, !tbaa !1113
  %10 = icmp eq i8* %9, null, !dbg !4600
  %11 = add i64 %7, 1, !dbg !4601
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4589, metadata !1106), !dbg !4595
  br i1 %10, label %12, label %6, !dbg !4600, !llvm.loop !4602

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4604
  ret void, !dbg !4605
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4606 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4617, metadata !1106), !dbg !4625
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4618, metadata !1106), !dbg !4626
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4619, metadata !1106), !dbg !4627
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4620, metadata !1106), !dbg !4628
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4621, metadata !1106), !dbg !4629
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4630
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #13, !dbg !4630
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4623, metadata !1106), !dbg !4631
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4622, metadata !1106), !dbg !4632
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4622, metadata !1106), !dbg !4632
  %11 = load i32, i32* %8, align 8, !dbg !4633
  %12 = icmp ult i32 %11, 41, !dbg !4633
  br i1 %12, label %13, label %18, !dbg !4633

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4633
  %15 = sext i32 %11 to i64, !dbg !4633
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4633
  %17 = add i32 %11, 8, !dbg !4633
  store i32 %17, i32* %8, align 8, !dbg !4633
  br label %21, !dbg !4633

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4633
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4633
  store i8* %20, i8** %10, align 8, !dbg !4633
  br label %21, !dbg !4633

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4633
  %25 = load i8*, i8** %24, align 8, !dbg !4633
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4636
  store i8* %25, i8** %26, align 16, !dbg !4637, !tbaa !1113
  %27 = icmp eq i8* %25, null, !dbg !4638
  br i1 %27, label %30, label %28, !dbg !4639

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4622, metadata !1106), !dbg !4632
  %29 = icmp ult i32 %22, 41, !dbg !4633
  br i1 %29, label %35, label %32, !dbg !4633

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4640
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #13, !dbg !4641
  ret void, !dbg !4641

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4633
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4633
  store i8* %34, i8** %10, align 8, !dbg !4633
  br label %40, !dbg !4633

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4633
  %37 = sext i32 %22 to i64, !dbg !4633
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4633
  %39 = add i32 %22, 8, !dbg !4633
  store i32 %39, i32* %8, align 8, !dbg !4633
  br label %40, !dbg !4633

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4633
  %44 = load i8*, i8** %43, align 8, !dbg !4633
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4636
  store i8* %44, i8** %45, align 8, !dbg !4637, !tbaa !1113
  %46 = icmp eq i8* %44, null, !dbg !4638
  br i1 %46, label %30, label %47, !dbg !4639

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4622, metadata !1106), !dbg !4632
  %48 = icmp ult i32 %41, 41, !dbg !4633
  br i1 %48, label %52, label %49, !dbg !4633

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4633
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4633
  store i8* %51, i8** %10, align 8, !dbg !4633
  br label %57, !dbg !4633

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4633
  %54 = sext i32 %41 to i64, !dbg !4633
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4633
  %56 = add i32 %41, 8, !dbg !4633
  store i32 %56, i32* %8, align 8, !dbg !4633
  br label %57, !dbg !4633

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4633
  %61 = load i8*, i8** %60, align 8, !dbg !4633
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4636
  store i8* %61, i8** %62, align 16, !dbg !4637, !tbaa !1113
  %63 = icmp eq i8* %61, null, !dbg !4638
  br i1 %63, label %30, label %64, !dbg !4639

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4622, metadata !1106), !dbg !4632
  %65 = icmp ult i32 %58, 41, !dbg !4633
  br i1 %65, label %69, label %66, !dbg !4633

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4633
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4633
  store i8* %68, i8** %10, align 8, !dbg !4633
  br label %74, !dbg !4633

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4633
  %71 = sext i32 %58 to i64, !dbg !4633
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4633
  %73 = add i32 %58, 8, !dbg !4633
  store i32 %73, i32* %8, align 8, !dbg !4633
  br label %74, !dbg !4633

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4633
  %78 = load i8*, i8** %77, align 8, !dbg !4633
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4636
  store i8* %78, i8** %79, align 8, !dbg !4637, !tbaa !1113
  %80 = icmp eq i8* %78, null, !dbg !4638
  br i1 %80, label %30, label %81, !dbg !4639

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4622, metadata !1106), !dbg !4632
  %82 = icmp ult i32 %75, 41, !dbg !4633
  br i1 %82, label %86, label %83, !dbg !4633

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4633
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4633
  store i8* %85, i8** %10, align 8, !dbg !4633
  br label %91, !dbg !4633

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4633
  %88 = sext i32 %75 to i64, !dbg !4633
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4633
  %90 = add i32 %75, 8, !dbg !4633
  store i32 %90, i32* %8, align 8, !dbg !4633
  br label %91, !dbg !4633

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4633
  %95 = load i8*, i8** %94, align 8, !dbg !4633
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4636
  store i8* %95, i8** %96, align 16, !dbg !4637, !tbaa !1113
  %97 = icmp eq i8* %95, null, !dbg !4638
  br i1 %97, label %30, label %98, !dbg !4639

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4622, metadata !1106), !dbg !4632
  %99 = icmp ult i32 %92, 41, !dbg !4633
  br i1 %99, label %103, label %100, !dbg !4633

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4633
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4633
  store i8* %102, i8** %10, align 8, !dbg !4633
  br label %108, !dbg !4633

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4633
  %105 = sext i32 %92 to i64, !dbg !4633
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4633
  %107 = add i32 %92, 8, !dbg !4633
  store i32 %107, i32* %8, align 8, !dbg !4633
  br label %108, !dbg !4633

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4633
  %111 = load i8*, i8** %110, align 8, !dbg !4633
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4636
  store i8* %111, i8** %112, align 8, !dbg !4637, !tbaa !1113
  %113 = icmp eq i8* %111, null, !dbg !4638
  br i1 %113, label %30, label %114, !dbg !4639

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4622, metadata !1106), !dbg !4632
  %115 = load i8*, i8** %10, align 8, !dbg !4633
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4633
  store i8* %116, i8** %10, align 8, !dbg !4633
  %117 = bitcast i8* %115 to i8**, !dbg !4633
  %118 = load i8*, i8** %117, align 8, !dbg !4633
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4636
  store i8* %118, i8** %119, align 16, !dbg !4637, !tbaa !1113
  %120 = icmp eq i8* %118, null, !dbg !4638
  br i1 %120, label %30, label %121, !dbg !4639

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4622, metadata !1106), !dbg !4632
  %122 = load i8*, i8** %10, align 8, !dbg !4633
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4633
  store i8* %123, i8** %10, align 8, !dbg !4633
  %124 = bitcast i8* %122 to i8**, !dbg !4633
  %125 = load i8*, i8** %124, align 8, !dbg !4633
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4636
  store i8* %125, i8** %126, align 8, !dbg !4637, !tbaa !1113
  %127 = icmp eq i8* %125, null, !dbg !4638
  br i1 %127, label %30, label %128, !dbg !4639

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4622, metadata !1106), !dbg !4632
  %129 = load i8*, i8** %10, align 8, !dbg !4633
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4633
  store i8* %130, i8** %10, align 8, !dbg !4633
  %131 = bitcast i8* %129 to i8**, !dbg !4633
  %132 = load i8*, i8** %131, align 8, !dbg !4633
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4636
  store i8* %132, i8** %133, align 16, !dbg !4637, !tbaa !1113
  %134 = icmp eq i8* %132, null, !dbg !4638
  br i1 %134, label %30, label %135, !dbg !4639

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4622, metadata !1106), !dbg !4632
  %136 = load i8*, i8** %10, align 8, !dbg !4633
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4633
  store i8* %137, i8** %10, align 8, !dbg !4633
  %138 = bitcast i8* %136 to i8**, !dbg !4633
  %139 = load i8*, i8** %138, align 8, !dbg !4633
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4636
  store i8* %139, i8** %140, align 8, !dbg !4637, !tbaa !1113
  %141 = icmp eq i8* %139, null, !dbg !4638
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4622, metadata !1106), !dbg !4632
  %142 = select i1 %141, i64 9, i64 10, !dbg !4639
  br label %30, !dbg !4639
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4642 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4646, metadata !1106), !dbg !4656
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4647, metadata !1106), !dbg !4657
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4648, metadata !1106), !dbg !4658
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4649, metadata !1106), !dbg !4659
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4660
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #13, !dbg !4660
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4650, metadata !1106), !dbg !4661
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4662
  call void @llvm.va_start(i8* nonnull %6), !dbg !4662
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4663
  call void @llvm.va_end(i8* nonnull %6), !dbg !4664
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #13, !dbg !4665
  ret void, !dbg !4665
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #13

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #13

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4666 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.123, i64 0, i64 0), i32 5) #13, !dbg !4667
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.124, i64 0, i64 0)) #13, !dbg !4667
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.125, i64 0, i64 0), i32 5) #13, !dbg !4668
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.126, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.127, i64 0, i64 0)) #13, !dbg !4668
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.128, i64 0, i64 0), i32 5) #13, !dbg !4669
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4669, !tbaa !1113
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #13, !dbg !4669
  ret void, !dbg !4670
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #11 !dbg !4671 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4673, metadata !1106), !dbg !4675
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4674, metadata !1106), !dbg !4676
  %3 = udiv i64 9223372036854775807, %1, !dbg !4677
  %4 = icmp ult i64 %3, %0, !dbg !4677
  br i1 %4, label %5, label %6, !dbg !4679

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !4680
  unreachable, !dbg !4680

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4681
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4682, metadata !1106) #13, !dbg !4687
  %8 = tail call noalias i8* @malloc(i64 %7) #13, !dbg !4689
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4686, metadata !1106) #13, !dbg !4690
  %9 = icmp eq i8* %8, null, !dbg !4691
  %10 = icmp ne i64 %7, 0, !dbg !4693
  %11 = and i1 %10, %9, !dbg !4694
  br i1 %11, label %12, label %13, !dbg !4694

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #16, !dbg !4695
  unreachable, !dbg !4695

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4696
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4683 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4682, metadata !1106), !dbg !4697
  %2 = tail call noalias i8* @malloc(i64 %0) #13, !dbg !4698
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4686, metadata !1106), !dbg !4699
  %3 = icmp eq i8* %2, null, !dbg !4700
  %4 = icmp ne i64 %0, 0, !dbg !4701
  %5 = and i1 %4, %3, !dbg !4702
  br i1 %5, label %6, label %7, !dbg !4702

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !4703
  unreachable, !dbg !4703

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4704
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #11 !dbg !4705 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4709, metadata !1106), !dbg !4712
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4710, metadata !1106), !dbg !4713
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4711, metadata !1106), !dbg !4714
  %4 = udiv i64 9223372036854775807, %2, !dbg !4715
  %5 = icmp ult i64 %4, %1, !dbg !4715
  br i1 %5, label %6, label %7, !dbg !4717

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #16, !dbg !4718
  unreachable, !dbg !4718

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4719
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4720, metadata !1106) #13, !dbg !4724
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4723, metadata !1106) #13, !dbg !4726
  %9 = icmp eq i64 %8, 0, !dbg !4727
  %10 = icmp ne i8* %0, null, !dbg !4729
  %11 = and i1 %10, %9, !dbg !4730
  br i1 %11, label %12, label %13, !dbg !4730

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #13, !dbg !4731
  br label %19, !dbg !4733

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #13, !dbg !4734
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4720, metadata !1106) #13, !dbg !4724
  %15 = icmp eq i8* %14, null, !dbg !4735
  %16 = icmp ne i64 %8, 0, !dbg !4737
  %17 = and i1 %16, %15, !dbg !4738
  br i1 %17, label %18, label %19, !dbg !4738

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !4739
  unreachable, !dbg !4739

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4740
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4721 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4720, metadata !1106), !dbg !4741
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4723, metadata !1106), !dbg !4742
  %3 = icmp eq i64 %1, 0, !dbg !4743
  %4 = icmp ne i8* %0, null, !dbg !4744
  %5 = and i1 %4, %3, !dbg !4745
  br i1 %5, label %6, label %7, !dbg !4745

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #13, !dbg !4746
  br label %13, !dbg !4747

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #13, !dbg !4748
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4720, metadata !1106), !dbg !4741
  %9 = icmp eq i8* %8, null, !dbg !4749
  %10 = icmp ne i64 %1, 0, !dbg !4750
  %11 = and i1 %10, %9, !dbg !4751
  br i1 %11, label %12, label %13, !dbg !4751

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !4752
  unreachable, !dbg !4752

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4753
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #11 !dbg !1067 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1071, metadata !1106), !dbg !4754
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !1072, metadata !1106), !dbg !4755
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1073, metadata !1106), !dbg !4756
  %4 = load i64, i64* %1, align 8, !dbg !4757, !tbaa !1155
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1074, metadata !1106), !dbg !4758
  %5 = icmp eq i8* %0, null, !dbg !4759
  br i1 %5, label %6, label %13, !dbg !4761

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4762
  br i1 %7, label %8, label %17, !dbg !4765

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4766
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1074, metadata !1106), !dbg !4758
  %10 = icmp ugt i64 %2, 128, !dbg !4768
  %11 = zext i1 %10 to i64, !dbg !4768
  %12 = add nuw nsw i64 %9, %11, !dbg !4769
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !1074, metadata !1106), !dbg !4758
  br label %17, !dbg !4770

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4771
  %15 = icmp ugt i64 %14, %4, !dbg !4774
  br i1 %15, label %20, label %16, !dbg !4775

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !4776
  unreachable, !dbg !4776

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1074, metadata !1106), !dbg !4758
  store i64 %18, i64* %1, align 8, !dbg !4777, !tbaa !1155
  %19 = mul i64 %18, %2, !dbg !4778
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4720, metadata !1106) #13, !dbg !4779
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4723, metadata !1106) #13, !dbg !4781
  br label %27, !dbg !4782

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4783
  %22 = add i64 %4, 1, !dbg !4784
  %23 = add i64 %22, %21, !dbg !4785
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1074, metadata !1106), !dbg !4758
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1074, metadata !1106), !dbg !4758
  store i64 %23, i64* %1, align 8, !dbg !4777, !tbaa !1155
  %24 = mul i64 %23, %2, !dbg !4778
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4720, metadata !1106) #13, !dbg !4779
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4723, metadata !1106) #13, !dbg !4781
  %25 = icmp eq i64 %24, 0, !dbg !4786
  br i1 %25, label %26, label %27, !dbg !4782

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #13, !dbg !4787
  br label %34, !dbg !4788

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #13, !dbg !4789
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4720, metadata !1106) #13, !dbg !4779
  %30 = icmp eq i8* %29, null, !dbg !4790
  %31 = icmp ne i64 %28, 0, !dbg !4791
  %32 = and i1 %31, %30, !dbg !4792
  br i1 %32, label %33, label %34, !dbg !4792

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #16, !dbg !4793
  unreachable, !dbg !4793

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4794
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #11 !dbg !4795 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4797, metadata !1106), !dbg !4798
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4682, metadata !1106) #13, !dbg !4799
  %2 = tail call noalias i8* @malloc(i64 %0) #13, !dbg !4801
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4686, metadata !1106) #13, !dbg !4802
  %3 = icmp eq i8* %2, null, !dbg !4803
  %4 = icmp ne i64 %0, 0, !dbg !4804
  %5 = and i1 %4, %3, !dbg !4805
  br i1 %5, label %6, label %7, !dbg !4805

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !4806
  unreachable, !dbg !4806

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4807
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4808 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4812, metadata !1106), !dbg !4814
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4813, metadata !1106), !dbg !4815
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1071, metadata !1106) #13, !dbg !4816
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !1072, metadata !1106) #13, !dbg !4818
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1073, metadata !1106) #13, !dbg !4819
  %3 = load i64, i64* %1, align 8, !dbg !4820, !tbaa !1155
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1074, metadata !1106) #13, !dbg !4821
  %4 = icmp eq i8* %0, null, !dbg !4822
  br i1 %4, label %5, label %8, !dbg !4823

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4824
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !1074, metadata !1106) #13, !dbg !4821
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !1074, metadata !1106) #13, !dbg !4821
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4825
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1074, metadata !1106) #13, !dbg !4821
  store i64 %7, i64* %1, align 8, !dbg !4826, !tbaa !1155
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4720, metadata !1106) #13, !dbg !4827
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4723, metadata !1106) #13, !dbg !4829
  br label %17, !dbg !4830

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4831
  br i1 %9, label %11, label %10, !dbg !4832

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #16, !dbg !4833
  unreachable, !dbg !4833

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4834
  %13 = add i64 %3, 1, !dbg !4835
  %14 = add i64 %13, %12, !dbg !4836
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1074, metadata !1106) #13, !dbg !4821
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1074, metadata !1106) #13, !dbg !4821
  store i64 %14, i64* %1, align 8, !dbg !4826, !tbaa !1155
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4720, metadata !1106) #13, !dbg !4827
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4723, metadata !1106) #13, !dbg !4829
  %15 = icmp eq i64 %14, 0, !dbg !4837
  br i1 %15, label %16, label %17, !dbg !4830

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #13, !dbg !4838
  br label %24, !dbg !4839

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #13, !dbg !4840
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4720, metadata !1106) #13, !dbg !4827
  %20 = icmp eq i8* %19, null, !dbg !4841
  %21 = icmp ne i64 %18, 0, !dbg !4842
  %22 = and i1 %21, %20, !dbg !4843
  br i1 %22, label %23, label %24, !dbg !4843

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #16, !dbg !4844
  unreachable, !dbg !4844

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4845
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4846 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4848, metadata !1106), !dbg !4849
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4682, metadata !1106) #13, !dbg !4850
  %2 = tail call noalias i8* @malloc(i64 %0) #13, !dbg !4852
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4686, metadata !1106) #13, !dbg !4853
  %3 = icmp eq i8* %2, null, !dbg !4854
  %4 = icmp ne i64 %0, 0, !dbg !4855
  %5 = and i1 %4, %3, !dbg !4856
  br i1 %5, label %6, label %7, !dbg !4856

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !4857
  unreachable, !dbg !4857

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4858
  ret i8* %2, !dbg !4859
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4860 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4862, metadata !1106), !dbg !4865
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4863, metadata !1106), !dbg !4866
  %3 = udiv i64 9223372036854775807, %1, !dbg !4867
  %4 = icmp ult i64 %3, %0, !dbg !4867
  br i1 %4, label %8, label %5, !dbg !4869

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #13, !dbg !4870
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4864, metadata !1106), !dbg !4871
  %7 = icmp eq i8* %6, null, !dbg !4872
  br i1 %7, label %8, label %9, !dbg !4873

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #16, !dbg !4874
  unreachable, !dbg !4874

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4875
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4876 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4880, metadata !1106), !dbg !4882
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4881, metadata !1106), !dbg !4883
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4682, metadata !1106) #13, !dbg !4884
  %3 = tail call noalias i8* @malloc(i64 %1) #13, !dbg !4886
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4686, metadata !1106) #13, !dbg !4887
  %4 = icmp eq i8* %3, null, !dbg !4888
  %5 = icmp ne i64 %1, 0, !dbg !4889
  %6 = and i1 %5, %4, !dbg !4890
  br i1 %6, label %7, label %8, !dbg !4890

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !4891
  unreachable, !dbg !4891

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4892
  ret i8* %3, !dbg !4893
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4894 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4896, metadata !1106), !dbg !4897
  %2 = tail call i64 @strlen(i8* %0) #15, !dbg !4898
  %3 = add i64 %2, 1, !dbg !4899
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4880, metadata !1106) #13, !dbg !4900
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4881, metadata !1106) #13, !dbg !4902
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4682, metadata !1106) #13, !dbg !4903
  %4 = tail call noalias i8* @malloc(i64 %3) #13, !dbg !4905
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4686, metadata !1106) #13, !dbg !4906
  %5 = icmp eq i8* %4, null, !dbg !4907
  %6 = icmp ne i64 %3, 0, !dbg !4908
  %7 = and i1 %6, %5, !dbg !4909
  br i1 %7, label %8, label %9, !dbg !4909

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !4910
  unreachable, !dbg !4910

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #13, !dbg !4911
  ret i8* %4, !dbg !4912
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4913 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4915, !tbaa !1188
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.139, i64 0, i64 0), i32 5) #13, !dbg !4916
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), i8* %2) #13, !dbg !4917
  tail call void @abort() #16, !dbg !4918
  unreachable, !dbg !4918
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4919 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4922, metadata !1106), !dbg !4928
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4923, metadata !1106), !dbg !4929
  %3 = icmp eq i64 %0, 0, !dbg !4930
  %4 = icmp eq i64 %1, 0, !dbg !4931
  %5 = or i1 %3, %4, !dbg !4932
  br i1 %5, label %12, label %6, !dbg !4932

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4933
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4925, metadata !1106), !dbg !4934
  %8 = udiv i64 %7, %1, !dbg !4935
  %9 = icmp eq i64 %8, %0, !dbg !4937
  br i1 %9, label %12, label %10, !dbg !4938

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4939
  store i32 12, i32* %11, align 4, !dbg !4941, !tbaa !1188
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4922, metadata !1106), !dbg !4928
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4923, metadata !1106), !dbg !4929
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #13, !dbg !4942
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4924, metadata !1106), !dbg !4943
  br label %16, !dbg !4944

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4945
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4946 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4991, metadata !1106), !dbg !4995
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4992, metadata !1106), !dbg !4996
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4994, metadata !1106), !dbg !4997
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !4998
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4993, metadata !1106), !dbg !4999
  %3 = icmp slt i32 %2, 0, !dbg !5000
  br i1 %3, label %4, label %6, !dbg !5002

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5003
  br label %24, !dbg !5004

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #13, !dbg !5005
  %8 = icmp eq i32 %7, 0, !dbg !5005
  br i1 %8, label %13, label %9, !dbg !5007

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !5008
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #13, !dbg !5009
  %12 = icmp eq i64 %11, -1, !dbg !5010
  br i1 %12, label %16, label %13, !dbg !5011

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #13, !dbg !5012
  %15 = icmp eq i32 %14, 0, !dbg !5012
  br i1 %15, label %16, label %18, !dbg !5013

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4992, metadata !1106), !dbg !4996
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5014
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4994, metadata !1106), !dbg !4997
  br label %24, !dbg !5015

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !5016
  %20 = load i32, i32* %19, align 4, !dbg !5016, !tbaa !1188
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4992, metadata !1106), !dbg !4996
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4992, metadata !1106), !dbg !4996
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5014
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4994, metadata !1106), !dbg !4997
  %22 = icmp eq i32 %20, 0, !dbg !5017
  br i1 %22, label %24, label %23, !dbg !5015

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5019, !tbaa !1188
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4994, metadata !1106), !dbg !4997
  br label %24, !dbg !5021

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !5022
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5023 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5068, metadata !1106), !dbg !5069
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5070
  br i1 %2, label %6, label %3, !dbg !5072

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #13, !dbg !5073
  %5 = icmp eq i32 %4, 0, !dbg !5073
  br i1 %5, label %6, label %8, !dbg !5074

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5075
  br label %17, !dbg !5076

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5077, metadata !1106) #13, !dbg !5082
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5084
  %10 = load i32, i32* %9, align 8, !dbg !5084, !tbaa !5086
  %11 = and i32 %10, 256, !dbg !5087
  %12 = icmp eq i32 %11, 0, !dbg !5087
  br i1 %12, label %15, label %13, !dbg !5088

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #13, !dbg !5089
  br label %15, !dbg !5089

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5090
  br label %17, !dbg !5091

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5092
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5093 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5138, metadata !1106), !dbg !5144
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5139, metadata !1106), !dbg !5145
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5140, metadata !1106), !dbg !5146
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5147
  %5 = load i8*, i8** %4, align 8, !dbg !5147, !tbaa !5148
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5149
  %7 = load i8*, i8** %6, align 8, !dbg !5149, !tbaa !5150
  %8 = icmp eq i8* %5, %7, !dbg !5151
  br i1 %8, label %9, label %28, !dbg !5152

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5153
  %11 = load i8*, i8** %10, align 8, !dbg !5153, !tbaa !2012
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5154
  %13 = load i8*, i8** %12, align 8, !dbg !5154, !tbaa !5155
  %14 = icmp eq i8* %11, %13, !dbg !5156
  br i1 %14, label %15, label %28, !dbg !5157

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5158
  %17 = load i8*, i8** %16, align 8, !dbg !5158, !tbaa !5159
  %18 = icmp eq i8* %17, null, !dbg !5160
  br i1 %18, label %19, label %28, !dbg !5161

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !5162
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #13, !dbg !5163
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5141, metadata !1106), !dbg !5164
  %22 = icmp eq i64 %21, -1, !dbg !5165
  br i1 %22, label %30, label %23, !dbg !5167

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5168
  %25 = load i32, i32* %24, align 8, !dbg !5169, !tbaa !5086
  %26 = and i32 %25, -17, !dbg !5169
  store i32 %26, i32* %24, align 8, !dbg !5169, !tbaa !5086
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5170
  store i64 %21, i64* %27, align 8, !dbg !5171, !tbaa !5172
  br label %30, !dbg !5173

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5174
  br label %30, !dbg !5175

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5176
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !5177 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !5194, metadata !1106), !dbg !5203
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5195, metadata !1106), !dbg !5204
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5196, metadata !1106), !dbg !5205
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !5197, metadata !1106), !dbg !5206
  %6 = bitcast i32* %5 to i8*, !dbg !5207
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !5207
  %7 = icmp eq i32* %0, null, !dbg !5208
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !5194, metadata !1106), !dbg !5203
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5210
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !5194, metadata !1106), !dbg !5203
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #13, !dbg !5211
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5198, metadata !1106), !dbg !5212
  %10 = icmp ugt i64 %9, -3, !dbg !5213
  %11 = icmp ne i64 %2, 0, !dbg !5214
  %12 = and i1 %11, %10, !dbg !5215
  br i1 %12, label %13, label %18, !dbg !5215

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #13, !dbg !5216
  br i1 %14, label %18, label %15, !dbg !5217

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5218, !tbaa !1426
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !5200, metadata !1106), !dbg !5219
  %17 = zext i8 %16 to i32, !dbg !5220
  store i32 %17, i32* %8, align 4, !dbg !5221, !tbaa !1188
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !5222
  ret i64 %19, !dbg !5222
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @print_and_abort() #0 !dbg !5223 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !5224, !tbaa !1113
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.151, i64 0, i64 0), i32 5) #13, !dbg !5224
  %3 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152, i64 0, i64 0), i8* %2) #13, !dbg !5224
  %4 = load volatile i32, i32* @exit_failure, align 4, !dbg !5225, !tbaa !1188
  tail call void @exit(i32 %4) #16, !dbg !5226
  unreachable, !dbg !5226
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @_obstack_begin(%struct.obstack* nocapture, i64, i64, i8* (i64)*, void (i8*)*) local_unnamed_addr #6 !dbg !5227 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5265, metadata !1106), !dbg !5270
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5266, metadata !1106), !dbg !5271
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5267, metadata !1106), !dbg !5272
  tail call void @llvm.dbg.value(metadata i8* (i64)* %3, i64 0, metadata !5268, metadata !1106), !dbg !5273
  tail call void @llvm.dbg.value(metadata void (i8*)* %4, i64 0, metadata !5269, metadata !1106), !dbg !5274
  %6 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, i32 0, !dbg !5275
  store i8* (i64)* %3, i8* (i64)** %6, align 8, !dbg !5276, !tbaa !1426
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, i32 0, !dbg !5277
  store void (i8*)* %4, void (i8*)** %7, align 8, !dbg !5278, !tbaa !1426
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !5279
  %9 = load i8, i8* %8, align 8, !dbg !5280
  %10 = and i8 %9, -2, !dbg !5280
  store i8 %10, i8* %8, align 8, !dbg !5280
  %11 = icmp eq i64 %2, 0, !dbg !5281
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !5289, metadata !1106) #13, !dbg !5295
  %12 = select i1 %11, i64 16, i64 %2, !dbg !5296
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !5289, metadata !1106) #13, !dbg !5295
  %13 = icmp eq i64 %1, 0, !dbg !5297
  tail call void @llvm.dbg.value(metadata i64 4064, i64 0, metadata !5288, metadata !1106) #13, !dbg !5298
  %14 = select i1 %13, i64 4064, i64 %1, !dbg !5299
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5288, metadata !1106) #13, !dbg !5298
  %15 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !5300
  store i64 %14, i64* %15, align 8, !dbg !5301, !tbaa !5302
  %16 = add i64 %12, -1, !dbg !5303
  %17 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !5304
  store i64 %16, i64* %17, align 8, !dbg !5305, !tbaa !4410
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5306, metadata !1106) #13, !dbg !5312
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5311, metadata !1106) #13, !dbg !5314
  %18 = tail call i8* %3(i64 %14) #13, !dbg !5315
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5317
  %20 = bitcast %struct._obstack_chunk** %19 to i8**, !dbg !5318
  store i8* %18, i8** %20, align 8, !dbg !5318, !tbaa !4413
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !5290, metadata !1106) #13, !dbg !5319
  %21 = icmp eq i8* %18, null, !dbg !5320
  br i1 %21, label %22, label %24, !dbg !5322

; <label>:22:                                     ; preds = %5
  %23 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !5323, !tbaa !1113
  tail call void %23() #16, !dbg !5324
  unreachable, !dbg !5324

; <label>:24:                                     ; preds = %5
  %25 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !5325
  %26 = ptrtoint i8* %25 to i64, !dbg !5325
  %27 = add i64 %16, %26, !dbg !5325
  %28 = sub i64 0, %12, !dbg !5325
  %29 = and i64 %27, %28, !dbg !5325
  %30 = getelementptr inbounds i8, i8* null, i64 %29, !dbg !5325
  %31 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !5326
  store i8* %30, i8** %31, align 8, !dbg !5327, !tbaa !4384
  %32 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !5328
  store i8* %30, i8** %32, align 8, !dbg !5329, !tbaa !4383
  %33 = load i64, i64* %15, align 8, !dbg !5330, !tbaa !5302
  %34 = getelementptr inbounds i8, i8* %18, i64 %33, !dbg !5331
  %35 = bitcast i8* %18 to i8**, !dbg !5332
  store i8* %34, i8** %35, align 8, !dbg !5333, !tbaa !1113
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !5334
  store i8* %34, i8** %36, align 8, !dbg !5335, !tbaa !4389
  %37 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !5336
  %38 = bitcast i8* %37 to %struct._obstack_chunk**, !dbg !5336
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %38, align 8, !dbg !5337, !tbaa !1113
  %39 = load i8, i8* %8, align 8, !dbg !5338
  %40 = and i8 %39, -7, !dbg !5339
  store i8 %40, i8* %8, align 8, !dbg !5339
  ret i32 1, !dbg !5340
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @_obstack_begin_1(%struct.obstack* nocapture, i64, i64, i8* (i8*, i64)*, void (i8*, i8*)*, i8*) local_unnamed_addr #6 !dbg !5341 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5345, metadata !1106), !dbg !5351
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5346, metadata !1106), !dbg !5352
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5347, metadata !1106), !dbg !5353
  tail call void @llvm.dbg.value(metadata i8* (i8*, i64)* %3, i64 0, metadata !5348, metadata !1106), !dbg !5354
  tail call void @llvm.dbg.value(metadata void (i8*, i8*)* %4, i64 0, metadata !5349, metadata !1106), !dbg !5355
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5350, metadata !1106), !dbg !5356
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, !dbg !5357
  %8 = bitcast %union.anon.0* %7 to i8* (i8*, i64)**, !dbg !5358
  store i8* (i8*, i64)* %3, i8* (i8*, i64)** %8, align 8, !dbg !5359, !tbaa !1426
  %9 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, !dbg !5360
  %10 = bitcast %union.anon.1* %9 to void (i8*, i8*)**, !dbg !5361
  store void (i8*, i8*)* %4, void (i8*, i8*)** %10, align 8, !dbg !5362, !tbaa !1426
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !5363
  store i8* %5, i8** %11, align 8, !dbg !5364, !tbaa !5365
  %12 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !5366
  %13 = load i8, i8* %12, align 8, !dbg !5367
  %14 = or i8 %13, 1, !dbg !5367
  store i8 %14, i8* %12, align 8, !dbg !5367
  %15 = icmp eq i64 %2, 0, !dbg !5368
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !5289, metadata !1106) #13, !dbg !5370
  %16 = select i1 %15, i64 16, i64 %2, !dbg !5371
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !5289, metadata !1106) #13, !dbg !5370
  %17 = icmp eq i64 %1, 0, !dbg !5372
  tail call void @llvm.dbg.value(metadata i64 4064, i64 0, metadata !5288, metadata !1106) #13, !dbg !5373
  %18 = select i1 %17, i64 4064, i64 %1, !dbg !5374
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !5288, metadata !1106) #13, !dbg !5373
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !5375
  store i64 %18, i64* %19, align 8, !dbg !5376, !tbaa !5302
  %20 = add i64 %16, -1, !dbg !5377
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !5378
  store i64 %20, i64* %21, align 8, !dbg !5379, !tbaa !4410
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5306, metadata !1106) #13, !dbg !5380
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !5311, metadata !1106) #13, !dbg !5382
  %22 = tail call i8* %3(i8* %5, i64 %18) #13, !dbg !5383
  %23 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5384
  %24 = bitcast %struct._obstack_chunk** %23 to i8**, !dbg !5385
  store i8* %22, i8** %24, align 8, !dbg !5385, !tbaa !4413
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !5290, metadata !1106) #13, !dbg !5386
  %25 = icmp eq i8* %22, null, !dbg !5387
  br i1 %25, label %26, label %28, !dbg !5388

; <label>:26:                                     ; preds = %6
  %27 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !5389, !tbaa !1113
  tail call void %27() #16, !dbg !5390
  unreachable, !dbg !5390

; <label>:28:                                     ; preds = %6
  %29 = getelementptr inbounds i8, i8* %22, i64 16, !dbg !5391
  %30 = ptrtoint i8* %29 to i64, !dbg !5391
  %31 = add i64 %20, %30, !dbg !5391
  %32 = sub i64 0, %16, !dbg !5391
  %33 = and i64 %31, %32, !dbg !5391
  %34 = getelementptr inbounds i8, i8* null, i64 %33, !dbg !5391
  %35 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !5392
  store i8* %34, i8** %35, align 8, !dbg !5393, !tbaa !4384
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !5394
  store i8* %34, i8** %36, align 8, !dbg !5395, !tbaa !4383
  %37 = load i64, i64* %19, align 8, !dbg !5396, !tbaa !5302
  %38 = getelementptr inbounds i8, i8* %22, i64 %37, !dbg !5397
  %39 = bitcast i8* %22 to i8**, !dbg !5398
  store i8* %38, i8** %39, align 8, !dbg !5399, !tbaa !1113
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !5400
  store i8* %38, i8** %40, align 8, !dbg !5401, !tbaa !4389
  %41 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !5402
  %42 = bitcast i8* %41 to %struct._obstack_chunk**, !dbg !5402
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %42, align 8, !dbg !5403, !tbaa !1113
  %43 = load i8, i8* %12, align 8, !dbg !5404
  %44 = and i8 %43, -7, !dbg !5405
  store i8 %44, i8* %12, align 8, !dbg !5405
  ret i32 1, !dbg !5406
}

; Function Attrs: nounwind sspstrong uwtable
define void @_obstack_newchunk(%struct.obstack* nocapture, i64) local_unnamed_addr #6 !dbg !5407 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5411, metadata !1106), !dbg !5420
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5412, metadata !1106), !dbg !5421
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5422
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !5422, !tbaa !4413
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, i64 0, metadata !5413, metadata !1106), !dbg !5423
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* null, i64 0, metadata !5414, metadata !1106), !dbg !5424
  %5 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !5425
  %6 = bitcast i8** %5 to i64*, !dbg !5425
  %7 = load i64, i64* %6, align 8, !dbg !5425, !tbaa !4383
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !5426
  %9 = bitcast i8** %8 to i64*, !dbg !5426
  %10 = load i64, i64* %9, align 8, !dbg !5426, !tbaa !4384
  %11 = sub i64 %7, %10, !dbg !5427
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !5415, metadata !1106), !dbg !5428
  %12 = add i64 %11, %1, !dbg !5429
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !5417, metadata !1106), !dbg !5430
  %13 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !5431
  %14 = load i64, i64* %13, align 8, !dbg !5431, !tbaa !4410
  %15 = add i64 %12, %14, !dbg !5432
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !5418, metadata !1106), !dbg !5433
  %16 = lshr i64 %11, 3, !dbg !5434
  %17 = add nuw nsw i64 %16, 100, !dbg !5435
  %18 = add i64 %17, %15, !dbg !5436
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !5419, metadata !1106), !dbg !5437
  %19 = icmp ult i64 %18, %15, !dbg !5438
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !5419, metadata !1106), !dbg !5437
  %20 = select i1 %19, i64 %15, i64 %18, !dbg !5440
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !5419, metadata !1106), !dbg !5437
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !5441
  %22 = load i64, i64* %21, align 8, !dbg !5441, !tbaa !5302
  %23 = icmp ult i64 %20, %22, !dbg !5443
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !5419, metadata !1106), !dbg !5437
  %24 = select i1 %23, i64 %22, i64 %20, !dbg !5444
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5419, metadata !1106), !dbg !5437
  %25 = icmp ugt i64 %11, %12, !dbg !5445
  %26 = icmp ugt i64 %12, %15, !dbg !5447
  %27 = or i1 %25, %26, !dbg !5448
  br i1 %27, label %47, label %28, !dbg !5448

; <label>:28:                                     ; preds = %2
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5306, metadata !1106) #13, !dbg !5449
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5311, metadata !1106) #13, !dbg !5451
  %29 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !5452
  %30 = load i8, i8* %29, align 8, !dbg !5452
  %31 = and i8 %30, 1, !dbg !5452
  %32 = icmp eq i8 %31, 0, !dbg !5453
  %33 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7
  br i1 %32, label %40, label %34, !dbg !5454

; <label>:34:                                     ; preds = %28
  %35 = bitcast %union.anon.0* %33 to i8* (i8*, i64)**, !dbg !5455
  %36 = load i8* (i8*, i64)*, i8* (i8*, i64)** %35, align 8, !dbg !5455, !tbaa !1426
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !5456
  %38 = load i8*, i8** %37, align 8, !dbg !5456, !tbaa !5365
  %39 = tail call i8* %36(i8* %38, i64 %24) #13, !dbg !5457
  br label %44, !dbg !5458

; <label>:40:                                     ; preds = %28
  %41 = getelementptr inbounds %union.anon.0, %union.anon.0* %33, i64 0, i32 0, !dbg !5459
  %42 = load i8* (i64)*, i8* (i64)** %41, align 8, !dbg !5459, !tbaa !1426
  %43 = tail call i8* %42(i64 %24) #13, !dbg !5460
  br label %44, !dbg !5461

; <label>:44:                                     ; preds = %40, %34
  %45 = phi i8* [ %39, %34 ], [ %43, %40 ]
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5414, metadata !1106), !dbg !5424
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5414, metadata !1106), !dbg !5424
  %46 = icmp eq i8* %45, null, !dbg !5462
  br i1 %46, label %47, label %49, !dbg !5464

; <label>:47:                                     ; preds = %2, %44
  %48 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !5465, !tbaa !1113
  tail call void %48() #16, !dbg !5466
  unreachable, !dbg !5466

; <label>:49:                                     ; preds = %44
  %50 = bitcast %struct._obstack_chunk** %3 to i8**, !dbg !5467
  store i8* %45, i8** %50, align 8, !dbg !5467, !tbaa !4413
  %51 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !5468
  %52 = bitcast i8* %51 to %struct._obstack_chunk**, !dbg !5468
  store %struct._obstack_chunk* %4, %struct._obstack_chunk** %52, align 8, !dbg !5469, !tbaa !1113
  %53 = getelementptr inbounds i8, i8* %45, i64 %24, !dbg !5470
  %54 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !5471
  store i8* %53, i8** %54, align 8, !dbg !5472, !tbaa !4389
  %55 = bitcast i8* %45 to i8**, !dbg !5473
  store i8* %53, i8** %55, align 8, !dbg !5474, !tbaa !1113
  %56 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !5475
  %57 = ptrtoint i8* %56 to i64, !dbg !5475
  %58 = load i64, i64* %13, align 8, !dbg !5475, !tbaa !4410
  %59 = add i64 %58, %57, !dbg !5475
  %60 = xor i64 %58, -1, !dbg !5475
  %61 = and i64 %59, %60, !dbg !5475
  %62 = getelementptr inbounds i8, i8* null, i64 %61, !dbg !5475
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !5416, metadata !1106), !dbg !5476
  %63 = load i8*, i8** %8, align 8, !dbg !5477, !tbaa !4384
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 %11, i32 1, i1 false), !dbg !5478
  %64 = load i8, i8* %29, align 8, !dbg !5479
  %65 = and i8 %64, 2, !dbg !5479
  %66 = icmp eq i8 %65, 0, !dbg !5481
  br i1 %66, label %67, label %92, !dbg !5482

; <label>:67:                                     ; preds = %49
  %68 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 2, i64 0, !dbg !5483
  %69 = ptrtoint i8* %68 to i64, !dbg !5483
  %70 = add i64 %58, %69, !dbg !5483
  %71 = and i64 %70, %60, !dbg !5483
  %72 = getelementptr inbounds i8, i8* null, i64 %71, !dbg !5483
  %73 = icmp eq i8* %63, %72, !dbg !5484
  br i1 %73, label %74, label %92, !dbg !5485

; <label>:74:                                     ; preds = %67
  %75 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 1, !dbg !5486
  %76 = bitcast %struct._obstack_chunk** %75 to i64*, !dbg !5486
  %77 = load i64, i64* %76, align 8, !dbg !5486, !tbaa !1113
  %78 = bitcast i8* %51 to i64*, !dbg !5488
  store i64 %77, i64* %78, align 8, !dbg !5488, !tbaa !1113
  %79 = bitcast %struct._obstack_chunk* %4 to i8*, !dbg !5489
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5490, metadata !1106) #13, !dbg !5496
  tail call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !5495, metadata !1106) #13, !dbg !5498
  %80 = load i8, i8* %29, align 8, !dbg !5499
  %81 = and i8 %80, 1, !dbg !5499
  %82 = icmp eq i8 %81, 0, !dbg !5501
  %83 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8
  br i1 %82, label %89, label %84, !dbg !5502

; <label>:84:                                     ; preds = %74
  %85 = bitcast %union.anon.1* %83 to void (i8*, i8*)**, !dbg !5503
  %86 = load void (i8*, i8*)*, void (i8*, i8*)** %85, align 8, !dbg !5503, !tbaa !1426
  %87 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !5504
  %88 = load i8*, i8** %87, align 8, !dbg !5504, !tbaa !5365
  tail call void %86(i8* %88, i8* %79) #13, !dbg !5505
  br label %92, !dbg !5505

; <label>:89:                                     ; preds = %74
  %90 = getelementptr inbounds %union.anon.1, %union.anon.1* %83, i64 0, i32 0, !dbg !5506
  %91 = load void (i8*)*, void (i8*)** %90, align 8, !dbg !5506, !tbaa !1426
  tail call void %91(i8* %79) #13, !dbg !5507
  br label %92

; <label>:92:                                     ; preds = %89, %84, %49, %67
  store i8* %62, i8** %8, align 8, !dbg !5508, !tbaa !4384
  %93 = getelementptr inbounds i8, i8* %62, i64 %11, !dbg !5509
  store i8* %93, i8** %5, align 8, !dbg !5510, !tbaa !4383
  %94 = load i8, i8* %29, align 8, !dbg !5511
  %95 = and i8 %94, -3, !dbg !5511
  store i8 %95, i8* %29, align 8, !dbg !5511
  ret void, !dbg !5512
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @_obstack_allocated_p(%struct.obstack* nocapture readonly, i8* readnone) local_unnamed_addr #9 !dbg !5513 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5517, metadata !1106), !dbg !5521
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5518, metadata !1106), !dbg !5522
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5523
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk** %3, i64 0, metadata !5519, metadata !4406), !dbg !5524
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !tbaa !1113
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, i64 0, metadata !5519, metadata !1106), !dbg !5524
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !5525
  br i1 %5, label %19, label %6, !dbg !5526

; <label>:6:                                      ; preds = %2
  br label %7, !dbg !5527

; <label>:7:                                      ; preds = %6, %15
  %8 = phi %struct._obstack_chunk* [ %17, %15 ], [ %4, %6 ]
  %9 = bitcast %struct._obstack_chunk* %8 to i8*, !dbg !5527
  %10 = icmp ult i8* %9, %1, !dbg !5528
  br i1 %10, label %11, label %15, !dbg !5529

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %8, i64 0, i32 0, !dbg !5530
  %13 = load i8*, i8** %12, align 8, !dbg !5530, !tbaa !1113
  %14 = icmp ult i8* %13, %1, !dbg !5531
  br i1 %14, label %15, label %19, !dbg !5532

; <label>:15:                                     ; preds = %7, %11
  %16 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %8, i64 0, i32 1, !dbg !5533
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk** %16, i64 0, metadata !5520, metadata !4406), !dbg !5535
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk** %16, i64 0, metadata !5519, metadata !4406), !dbg !5524
  %17 = load %struct._obstack_chunk*, %struct._obstack_chunk** %16, align 8, !tbaa !1113
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %17, i64 0, metadata !5519, metadata !1106), !dbg !5524
  %18 = icmp eq %struct._obstack_chunk* %17, null, !dbg !5525
  br i1 %18, label %19, label %7, !dbg !5526, !llvm.loop !5536

; <label>:19:                                     ; preds = %11, %15, %2
  %20 = phi i32 [ 0, %2 ], [ 0, %15 ], [ 1, %11 ]
  ret i32 %20, !dbg !5538
}

; Function Attrs: nounwind sspstrong uwtable
define void @_obstack_free(%struct.obstack* nocapture, i8*) local_unnamed_addr #6 !dbg !5539 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5541, metadata !1106), !dbg !5545
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5542, metadata !1106), !dbg !5546
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5547
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !5547, !tbaa !4413
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, i64 0, metadata !5543, metadata !1106), !dbg !5548
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, i64 0, metadata !5543, metadata !1106), !dbg !5548
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !5549
  br i1 %5, label %42, label %6, !dbg !5550

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8
  %9 = getelementptr inbounds %union.anon.1, %union.anon.1* %8, i64 0, i32 0
  %10 = bitcast %union.anon.1* %8 to void (i8*, i8*)**
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9
  br label %12, !dbg !5550

; <label>:12:                                     ; preds = %6, %31
  %13 = phi %struct._obstack_chunk* [ %4, %6 ], [ %22, %31 ]
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, i64 0, metadata !5543, metadata !1106), !dbg !5548
  %14 = bitcast %struct._obstack_chunk* %13 to i8*, !dbg !5551
  %15 = icmp ult i8* %14, %1, !dbg !5552
  br i1 %15, label %16, label %20, !dbg !5553

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 0, !dbg !5554
  %18 = load i8*, i8** %17, align 8, !dbg !5554, !tbaa !1113
  %19 = icmp ult i8* %18, %1, !dbg !5555
  br i1 %19, label %20, label %35, !dbg !5556

; <label>:20:                                     ; preds = %12, %16
  %21 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 1, !dbg !5557
  %22 = load %struct._obstack_chunk*, %struct._obstack_chunk** %21, align 8, !dbg !5557, !tbaa !1113
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, i64 0, metadata !5544, metadata !1106), !dbg !5559
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5490, metadata !1106) #13, !dbg !5560
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !5495, metadata !1106) #13, !dbg !5562
  %23 = load i8, i8* %7, align 8, !dbg !5563
  %24 = and i8 %23, 1, !dbg !5563
  %25 = icmp eq i8 %24, 0, !dbg !5564
  br i1 %25, label %29, label %26, !dbg !5565

; <label>:26:                                     ; preds = %20
  %27 = load void (i8*, i8*)*, void (i8*, i8*)** %10, align 8, !dbg !5566, !tbaa !1426
  %28 = load i8*, i8** %11, align 8, !dbg !5567, !tbaa !5365
  tail call void %27(i8* %28, i8* nonnull %14) #13, !dbg !5568
  br label %31, !dbg !5568

; <label>:29:                                     ; preds = %20
  %30 = load void (i8*)*, void (i8*)** %9, align 8, !dbg !5569, !tbaa !1426
  tail call void %30(i8* nonnull %14) #13, !dbg !5570
  br label %31

; <label>:31:                                     ; preds = %26, %29
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, i64 0, metadata !5543, metadata !1106), !dbg !5548
  %32 = load i8, i8* %7, align 8, !dbg !5571
  %33 = or i8 %32, 2, !dbg !5571
  store i8 %33, i8* %7, align 8, !dbg !5571
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, i64 0, metadata !5543, metadata !1106), !dbg !5548
  %34 = icmp eq %struct._obstack_chunk* %22, null, !dbg !5549
  br i1 %34, label %42, label %12, !dbg !5550, !llvm.loop !5572

; <label>:35:                                     ; preds = %16
  %36 = bitcast %struct._obstack_chunk* %13 to i64*
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !5574
  store i8* %1, i8** %37, align 8, !dbg !5577, !tbaa !4383
  %38 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !5578
  store i8* %1, i8** %38, align 8, !dbg !5579, !tbaa !4384
  %39 = load i64, i64* %36, align 8, !dbg !5580, !tbaa !1113
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !5581
  %41 = bitcast i8** %40 to i64*, !dbg !5582
  store i64 %39, i64* %41, align 8, !dbg !5582, !tbaa !4389
  store %struct._obstack_chunk* %13, %struct._obstack_chunk** %3, align 8, !dbg !5583, !tbaa !4413
  br label %45, !dbg !5584

; <label>:42:                                     ; preds = %31, %2
  %43 = icmp eq i8* %1, null, !dbg !5585
  br i1 %43, label %45, label %44, !dbg !5587

; <label>:44:                                     ; preds = %42
  tail call void @abort() #16, !dbg !5588
  unreachable, !dbg !5588

; <label>:45:                                     ; preds = %42, %35
  ret void, !dbg !5589
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @_obstack_memory_used(%struct.obstack* nocapture readonly) local_unnamed_addr #9 !dbg !5590 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5594, metadata !1106), !dbg !5597
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5596, metadata !1106), !dbg !5598
  %2 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5599
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk** %2, i64 0, metadata !5595, metadata !4406), !dbg !5601
  %3 = load %struct._obstack_chunk*, %struct._obstack_chunk** %2, align 8, !tbaa !1113
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5596, metadata !1106), !dbg !5598
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %3, i64 0, metadata !5595, metadata !1106), !dbg !5601
  %4 = icmp eq %struct._obstack_chunk* %3, null, !dbg !5602
  br i1 %4, label %17, label %5, !dbg !5604

; <label>:5:                                      ; preds = %1
  br label %6, !dbg !5605

; <label>:6:                                      ; preds = %5, %6
  %7 = phi %struct._obstack_chunk* [ %15, %6 ], [ %3, %5 ]
  %8 = phi i64 [ %13, %6 ], [ 0, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5596, metadata !1106), !dbg !5598
  %9 = bitcast %struct._obstack_chunk* %7 to i64*, !dbg !5605
  %10 = load i64, i64* %9, align 8, !dbg !5605, !tbaa !1113
  %11 = ptrtoint %struct._obstack_chunk* %7 to i64, !dbg !5607
  %12 = sub i64 %8, %11, !dbg !5607
  %13 = add i64 %12, %10, !dbg !5608
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5596, metadata !1106), !dbg !5598
  %14 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %7, i64 0, i32 1, !dbg !5609
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk** %14, i64 0, metadata !5595, metadata !4406), !dbg !5601
  %15 = load %struct._obstack_chunk*, %struct._obstack_chunk** %14, align 8, !tbaa !1113
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5596, metadata !1106), !dbg !5598
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %15, i64 0, metadata !5595, metadata !1106), !dbg !5601
  %16 = icmp eq %struct._obstack_chunk* %15, null, !dbg !5602
  br i1 %16, label %17, label %6, !dbg !5604, !llvm.loop !5610

; <label>:17:                                     ; preds = %6, %1
  %18 = phi i64 [ 0, %1 ], [ %13, %6 ]
  ret i64 %18, !dbg !5612
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5613 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5658, metadata !1106), !dbg !5663
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #13, !dbg !5664
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5665, metadata !1106), !dbg !5668
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5670
  %4 = load i32, i32* %3, align 8, !dbg !5670, !tbaa !5086
  %5 = and i32 %4, 32, !dbg !5670
  %6 = icmp eq i32 %5, 0, !dbg !5671
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #13, !dbg !5672
  %8 = icmp ne i32 %7, 0, !dbg !5673
  br i1 %6, label %9, label %19, !dbg !5674

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !5676
  %11 = xor i1 %8, true, !dbg !5677
  %12 = or i1 %10, %11, !dbg !5677
  %13 = sext i1 %8 to i32, !dbg !5677
  br i1 %12, label %22, label %14, !dbg !5677

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !5678
  %16 = load i32, i32* %15, align 4, !dbg !5678, !tbaa !1188
  %17 = icmp ne i32 %16, 9, !dbg !5679
  %18 = sext i1 %17 to i32, !dbg !5680
  br label %22, !dbg !5680

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5681

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !5683
  store i32 0, i32* %21, align 4, !dbg !5685, !tbaa !1188
  br label %22, !dbg !5683

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !5686
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !5687 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5692, metadata !1106), !dbg !5695
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5693, metadata !1106), !dbg !5696
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #13, !dbg !5697
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5694, metadata !1106), !dbg !5698
  %3 = icmp eq i8* %2, null, !dbg !5699
  br i1 %3, label %11, label %4, !dbg !5701

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.163, i64 0, i64 0)) #15, !dbg !5702
  %6 = icmp eq i32 %5, 0, !dbg !5707
  br i1 %6, label %10, label %7, !dbg !5708

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.164, i64 0, i64 0)) #15, !dbg !5709
  %9 = icmp eq i32 %8, 0, !dbg !5710
  br i1 %9, label %10, label %11, !dbg !5711

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5693, metadata !1106), !dbg !5696
  br label %11, !dbg !5712

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !5713
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5714 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5720, metadata !1106), !dbg !5794
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5787, metadata !1106), !dbg !5797
  %3 = tail call i8* @nl_langinfo(i32 14) #13, !dbg !5798
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5718, metadata !1106), !dbg !5799
  %4 = icmp eq i8* %3, null, !dbg !5800
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.167, i64 0, i64 0), i8* %3, !dbg !5802
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5718, metadata !1106), !dbg !5799
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5803, !tbaa !1113
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5734, metadata !1106) #13, !dbg !5804
  %7 = icmp eq i8* %6, null, !dbg !5805
  br i1 %7, label %8, label %123, !dbg !5806

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.168, i64 0, i64 0)) #13, !dbg !5807
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5735, metadata !1106) #13, !dbg !5808
  %10 = icmp eq i8* %9, null, !dbg !5809
  br i1 %10, label %14, label %11, !dbg !5811

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5812, !tbaa !1426
  %13 = icmp eq i8 %12, 0, !dbg !5813
  br i1 %13, label %14, label %15, !dbg !5814

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5815

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.169, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5735, metadata !1106) #13, !dbg !5808
  %17 = tail call i64 @strlen(i8* nonnull %16) #15, !dbg !5816
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5738, metadata !1106) #13, !dbg !5817
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5740, metadata !1106) #13, !dbg !5818
  %18 = icmp eq i64 %17, 0, !dbg !5819
  br i1 %18, label %24, label %19, !dbg !5820

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5821
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5821
  %22 = load i8, i8* %21, align 1, !dbg !5821, !tbaa !1426
  %23 = icmp ne i8 %22, 47, !dbg !5821
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5822
  %27 = add i64 %17, 14, !dbg !5823
  %28 = add i64 %27, %26, !dbg !5824
  %29 = tail call noalias i8* @malloc(i64 %28) #13, !dbg !5825
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5737, metadata !1106) #13, !dbg !5826
  %30 = icmp eq i8* %29, null, !dbg !5827
  br i1 %30, label %121, label %31, !dbg !5827

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #13, !dbg !5828
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5831

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5832, !tbaa !1426
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5834
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.170, i64 0, i64 0), i64 14, i32 1, i1 false) #13, !dbg !5835
  br label %37, !dbg !5836

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5834
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.170, i64 0, i64 0), i64 14, i32 1, i1 false) #13, !dbg !5835
  br label %37, !dbg !5836

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #13, !dbg !5837
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5742, metadata !1106) #13, !dbg !5838
  %39 = icmp slt i32 %38, 0, !dbg !5839
  br i1 %39, label %119, label %40, !dbg !5840

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.171, i64 0, i64 0)) #13, !dbg !5841
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5743, metadata !1106) #13, !dbg !5842
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5843
  br i1 %42, label %43, label %45, !dbg !5844

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #13, !dbg !5845
  br label %119, !dbg !5847

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !5784, metadata !1106) #13, !dbg !5848
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5785, metadata !1106) #13, !dbg !5849
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5850

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !5851

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5784, metadata !1106) #13, !dbg !5848
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5785, metadata !1106) #13, !dbg !5849
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #13, !dbg !5851
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #13, !dbg !5852
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5853, metadata !1106) #13, !dbg !5858
  %54 = load i8*, i8** %48, align 8, !dbg !5860, !tbaa !5150
  %55 = load i8*, i8** %49, align 8, !dbg !5860, !tbaa !5148
  %56 = icmp ult i8* %54, %55, !dbg !5860
  br i1 %56, label %59, label %57, !dbg !5860, !prof !2015

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #13, !dbg !5860
  br label %63, !dbg !5860

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !5860
  store i8* %60, i8** %48, align 8, !dbg !5860, !tbaa !5150
  %61 = load i8, i8* %54, align 1, !dbg !5860, !tbaa !1426
  %62 = zext i8 %61 to i32, !dbg !5860
  br label %63, !dbg !5860

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !5860
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !5786, metadata !1106) #13, !dbg !5861
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !5862, !llvm.loop !5863

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !5868

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5853, metadata !1106) #13, !dbg !5870
  %67 = load i8*, i8** %48, align 8, !dbg !5868, !tbaa !5150
  %68 = load i8*, i8** %49, align 8, !dbg !5868, !tbaa !5148
  %69 = icmp ult i8* %67, %68, !dbg !5868
  br i1 %69, label %72, label %70, !dbg !5868, !prof !2015

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #13, !dbg !5868
  br label %76, !dbg !5868

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !5868
  store i8* %73, i8** %48, align 8, !dbg !5868, !tbaa !5150
  %74 = load i8, i8* %67, align 1, !dbg !5868, !tbaa !1426
  %75 = zext i8 %74 to i32, !dbg !5868
  br label %76, !dbg !5868

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !5868
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !5786, metadata !1106) #13, !dbg !5861
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !5871, !llvm.loop !5872

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #13, !dbg !5875
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.172, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #13, !dbg !5876
  %81 = icmp slt i32 %80, 2, !dbg !5878
  br i1 %81, label %112, label %82, !dbg !5879

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #15, !dbg !5880
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5791, metadata !1106) #13, !dbg !5881
  %84 = call i64 @strlen(i8* nonnull %47) #15, !dbg !5882
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !5792, metadata !1106) #13, !dbg !5883
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5793, metadata !1106) #13, !dbg !5884
  %85 = icmp eq i64 %51, 0, !dbg !5885
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !5887

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !5785, metadata !1106) #13, !dbg !5849
  %90 = add i64 %87, 2, !dbg !5888
  %91 = call noalias i8* @malloc(i64 %90) #13, !dbg !5890
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !5784, metadata !1106) #13, !dbg !5848
  br label %96, !dbg !5891

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !5892
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !5785, metadata !1106) #13, !dbg !5849
  %94 = add i64 %93, 1, !dbg !5894
  %95 = call i8* @realloc(i8* %52, i64 %94) #13, !dbg !5895
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !5784, metadata !1106) #13, !dbg !5848
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !5784, metadata !1106) #13, !dbg !5848
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !5785, metadata !1106) #13, !dbg !5849
  %99 = icmp eq i8* %98, null, !dbg !5896
  br i1 %99, label %100, label %102, !dbg !5898

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5785, metadata !1106) #13, !dbg !5849
  call void @free(i8* %52) #13, !dbg !5899
  br label %112, !dbg !5901

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #13, !dbg !5902
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #13, !dbg !5902
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !5903
  %104 = xor i64 %84, -1, !dbg !5904
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5904
  %106 = xor i64 %83, -1, !dbg !5905
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !5905
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !5906, metadata !1106) #13, !dbg !5915
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !5914, metadata !1106) #13, !dbg !5915
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #13, !dbg !5917
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #13, !dbg !5918
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5906, metadata !1106) #13, !dbg !5919
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !5914, metadata !1106) #13, !dbg !5919
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #13, !dbg !5921
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #13, !dbg !5922
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !5784, metadata !1106) #13, !dbg !5848
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !5785, metadata !1106) #13, !dbg !5849
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #13, !dbg !5902
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #13, !dbg !5902
  br label %50, !dbg !5923, !llvm.loop !5872

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #13, !dbg !5902
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #13, !dbg !5902
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #13, !dbg !5924
  %116 = icmp eq i64 %113, 0, !dbg !5925
  br i1 %116, label %119, label %117, !dbg !5927

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !5928
  store i8 0, i8* %118, align 1, !dbg !5930, !tbaa !1426
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.167, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.167, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.167, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !5734, metadata !1106) #13, !dbg !5804
  call void @free(i8* %29) #13, !dbg !5931
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.167, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !5734, metadata !1106) #13, !dbg !5804
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !5932, !tbaa !1113
  br label %123, !dbg !5933

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5734, metadata !1106) #13, !dbg !5804
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5719, metadata !1106), !dbg !5934
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5719, metadata !1106), !dbg !5934
  %125 = load i8, i8* %124, align 1, !dbg !5935, !tbaa !1426
  %126 = icmp eq i8 %125, 0, !dbg !5937
  br i1 %126, label %152, label %127, !dbg !5938

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !5939

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !5719, metadata !1106), !dbg !5934
  %131 = call i32 @strcmp(i8* %5, i8* %130) #15, !dbg !5939
  %132 = icmp eq i32 %131, 0, !dbg !5941
  br i1 %132, label %139, label %133, !dbg !5942

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !5943
  br i1 %134, label %135, label %143, !dbg !5944

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !5945
  %137 = load i8, i8* %136, align 1, !dbg !5945, !tbaa !1426
  %138 = icmp eq i8 %137, 0, !dbg !5946
  br i1 %138, label %139, label %143, !dbg !5947

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #15, !dbg !5948
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !5950
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !5951
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !5718, metadata !1106), !dbg !5799
  br label %152, !dbg !5952

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #15, !dbg !5953
  %145 = add i64 %144, 1, !dbg !5954
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !5955
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5719, metadata !1106), !dbg !5934
  %147 = call i64 @strlen(i8* %146) #15, !dbg !5956
  %148 = add i64 %147, 1, !dbg !5957
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !5958
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !5719, metadata !1106), !dbg !5934
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !5719, metadata !1106), !dbg !5934
  %150 = load i8, i8* %149, align 1, !dbg !5935, !tbaa !1426
  %151 = icmp eq i8 %150, 0, !dbg !5937
  br i1 %151, label %152, label %128, !dbg !5938, !llvm.loop !5959

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5718, metadata !1106), !dbg !5799
  %154 = load i8, i8* %153, align 1, !dbg !5961, !tbaa !1426
  %155 = icmp eq i8 %154, 0, !dbg !5963
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.173, i64 0, i64 0), i8* %153, !dbg !5964
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !5718, metadata !1106), !dbg !5799
  ret i8* %156, !dbg !5965
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

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind }
attributes #14 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { noreturn }
attributes #19 = { cold }

!llvm.dbg.cu = !{!2, !340, !795, !346, !354, !799, !802, !361, !805, !372, !379, !1028, !1034, !1055, !430, !1062, !1078, !1080, !1082, !1084, !1086, !1088, !439, !1091, !1093, !449}
!llvm.ident = !{!1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095}
!llvm.module.flags = !{!1096, !1097, !1098, !1099, !1100}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "page_size", scope: !2, file: !3, line: 75, type: !54, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !50, globals: !60)
!3 = !DIFile(filename: "src/wc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19, !26, !35}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "argv_iter_err", file: !20, line: 25, size: 32, elements: !21)
!20 = !DIFile(filename: "./lib/argv-iter.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "AI_ERR_OK", value: 1)
!23 = !DIEnumerator(name: "AI_ERR_EOF", value: 2)
!24 = !DIEnumerator(name: "AI_ERR_MEM", value: 3)
!25 = !DIEnumerator(name: "AI_ERR_READ", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 45, size: 32, elements: !28)
!27 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!28 = !{!29, !30, !31, !32, !33, !34}
!29 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!30 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!31 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!32 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!33 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!34 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 46, size: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!38 = !DIEnumerator(name: "_ISupper", value: 256)
!39 = !DIEnumerator(name: "_ISlower", value: 512)
!40 = !DIEnumerator(name: "_ISalpha", value: 1024)
!41 = !DIEnumerator(name: "_ISdigit", value: 2048)
!42 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!43 = !DIEnumerator(name: "_ISspace", value: 8192)
!44 = !DIEnumerator(name: "_ISprint", value: 16384)
!45 = !DIEnumerator(name: "_ISgraph", value: 32768)
!46 = !DIEnumerator(name: "_ISblank", value: 1)
!47 = !DIEnumerator(name: "_IScntrl", value: 2)
!48 = !DIEnumerator(name: "_ISpunct", value: 4)
!49 = !DIEnumerator(name: "_ISalnum", value: 8)
!50 = !{!51, !53, !54, !57, !58, !59}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 62, baseType: !56)
!55 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!56 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!60 = !{!61, !255, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !0, !282, !304, !318}
!61 = !DIGlobalVariableExpression(var: !62)
!62 = distinct !DIGlobalVariable(name: "stdin_only", scope: !63, file: !3, line: 765, type: !254, isLocal: true, isDefinition: true)
!63 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 648, type: !64, isLocal: false, isDefinition: true, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !67)
!64 = !DISubroutineType(types: !65)
!65 = !{!57, !57, !66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!67 = !{!68, !69, !70, !72, !73, !74, !75, !76, !122, !182, !183, !186, !241, !242, !243, !247, !248, !249}
!68 = !DILocalVariable(name: "argc", arg: 1, scope: !63, file: !3, line: 648, type: !57)
!69 = !DILocalVariable(name: "argv", arg: 2, scope: !63, file: !3, line: 648, type: !66)
!70 = !DILocalVariable(name: "ok", scope: !63, file: !3, line: 650, type: !71)
!71 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!72 = !DILocalVariable(name: "optc", scope: !63, file: !3, line: 651, type: !57)
!73 = !DILocalVariable(name: "nfiles", scope: !63, file: !3, line: 652, type: !54)
!74 = !DILocalVariable(name: "files", scope: !63, file: !3, line: 653, type: !66)
!75 = !DILocalVariable(name: "files_from", scope: !63, file: !3, line: 654, type: !51)
!76 = !DILocalVariable(name: "fstatus", scope: !63, file: !3, line: 655, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fstatus", file: !3, line: 78, size: 1216, elements: !79)
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !78, file: !3, line: 82, baseType: !57, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !78, file: !3, line: 85, baseType: !82, size: 1152, offset: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !83, line: 46, size: 1152, elements: !84)
!83 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!84 = !{!85, !88, !90, !92, !95, !97, !99, !100, !101, !104, !106, !108, !116, !117, !118}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !82, file: !83, line: 48, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !87, line: 133, baseType: !56)
!87 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!88 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !82, file: !83, line: 53, baseType: !89, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !87, line: 136, baseType: !56)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !82, file: !83, line: 61, baseType: !91, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !87, line: 139, baseType: !56)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !82, file: !83, line: 62, baseType: !93, size: 32, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !87, line: 138, baseType: !94)
!94 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !82, file: !83, line: 64, baseType: !96, size: 32, offset: 224)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !87, line: 134, baseType: !94)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !82, file: !83, line: 65, baseType: !98, size: 32, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !87, line: 135, baseType: !94)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !82, file: !83, line: 67, baseType: !57, size: 32, offset: 288)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !82, file: !83, line: 69, baseType: !86, size: 64, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !82, file: !83, line: 74, baseType: !102, size: 64, offset: 384)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !87, line: 140, baseType: !103)
!103 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !82, file: !83, line: 78, baseType: !105, size: 64, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !87, line: 162, baseType: !103)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !82, file: !83, line: 80, baseType: !107, size: 64, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !87, line: 167, baseType: !103)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !82, file: !83, line: 91, baseType: !109, size: 128, offset: 576)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !110, line: 8, size: 128, elements: !111)
!110 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!111 = !{!112, !114}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !109, file: !110, line: 10, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !87, line: 148, baseType: !103)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !109, file: !110, line: 11, baseType: !115, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !87, line: 184, baseType: !103)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !82, file: !83, line: 92, baseType: !109, size: 128, offset: 704)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !82, file: !83, line: 93, baseType: !109, size: 128, offset: 832)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !82, file: !83, line: 106, baseType: !119, size: 192, offset: 960)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 192, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 3)
!122 = !DILocalVariable(name: "tok", scope: !63, file: !3, line: 656, type: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Tokens", file: !124, line: 28, size: 2304, elements: !125)
!124 = !DIFile(filename: "./lib/readtokens0.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!125 = !{!126, !127, !128, !130, !180, !181}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "n_tok", scope: !123, file: !124, line: 30, baseType: !54, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tok", scope: !123, file: !124, line: 31, baseType: !66, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tok_len", scope: !123, file: !124, line: 32, baseType: !129, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "o_data", scope: !123, file: !124, line: 33, baseType: !131, size: 704, offset: 192)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !132, line: 174, size: 704, elements: !133)
!132 = !DIFile(filename: "./lib/obstack.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!133 = !{!134, !135, !145, !146, !147, !148, !153, !154, !165, !176, !177, !178, !179}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !131, file: !132, line: 176, baseType: !54, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !131, file: !132, line: 177, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !132, line: 167, size: 128, elements: !138)
!138 = !{!139, !140, !141}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !137, file: !132, line: 169, baseType: !51, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !137, file: !132, line: 170, baseType: !136, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !137, file: !132, line: 171, baseType: !142, offset: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: -1)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !131, file: !132, line: 178, baseType: !51, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !131, file: !132, line: 179, baseType: !51, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !131, file: !132, line: 180, baseType: !51, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !131, file: !132, line: 185, baseType: !149, size: 64, offset: 320)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !132, line: 181, size: 64, elements: !150)
!150 = !{!151, !152}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !149, file: !132, line: 183, baseType: !54, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !149, file: !132, line: 184, baseType: !53, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !131, file: !132, line: 186, baseType: !54, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !131, file: !132, line: 193, baseType: !155, size: 64, offset: 448)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !132, line: 189, size: 64, elements: !156)
!156 = !{!157, !161}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !155, file: !132, line: 191, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!53, !54}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !155, file: !132, line: 192, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!53, !53, !54}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !131, file: !132, line: 198, baseType: !166, size: 64, offset: 512)
!166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !132, line: 194, size: 64, elements: !167)
!167 = !{!168, !172}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !166, file: !132, line: 196, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !53}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !166, file: !132, line: 197, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !53, !53}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !131, file: !132, line: 200, baseType: !53, size: 64, offset: 576)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !131, file: !132, line: 201, baseType: !94, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !131, file: !132, line: 202, baseType: !94, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !131, file: !132, line: 206, baseType: !94, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "o_tok", scope: !123, file: !124, line: 34, baseType: !131, size: 704, offset: 896)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "o_tok_len", scope: !123, file: !124, line: 35, baseType: !131, size: 704, offset: 1600)
!182 = !DILocalVariable(name: "read_tokens", scope: !63, file: !3, line: 714, type: !71)
!183 = !DILocalVariable(name: "ai", scope: !63, file: !3, line: 715, type: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DICompositeType(tag: DW_TAG_structure_type, name: "argv_iterator", file: !20, line: 23, flags: DIFlagFwdDecl)
!186 = !DILocalVariable(name: "stream", scope: !187, file: !3, line: 718, type: !189)
!187 = distinct !DILexicalBlock(scope: !188, file: !3, line: 717, column: 5)
!188 = distinct !DILexicalBlock(scope: !63, file: !3, line: 716, column: 7)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !192)
!191 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 241, size: 1728, elements: !194)
!193 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !215, !216, !217, !218, !219, !220, !222, !226, !229, !231, !232, !233, !234, !235, !236, !237}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !192, file: !193, line: 242, baseType: !57, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !192, file: !193, line: 247, baseType: !51, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !192, file: !193, line: 248, baseType: !51, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !192, file: !193, line: 249, baseType: !51, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !192, file: !193, line: 250, baseType: !51, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !192, file: !193, line: 251, baseType: !51, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !192, file: !193, line: 252, baseType: !51, size: 64, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !192, file: !193, line: 253, baseType: !51, size: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !192, file: !193, line: 254, baseType: !51, size: 64, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !192, file: !193, line: 256, baseType: !51, size: 64, offset: 576)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !192, file: !193, line: 257, baseType: !51, size: 64, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !192, file: !193, line: 258, baseType: !51, size: 64, offset: 704)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !192, file: !193, line: 260, baseType: !208, size: 64, offset: 768)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !193, line: 156, size: 192, elements: !210)
!210 = !{!211, !212, !214}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !209, file: !193, line: 157, baseType: !208, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !209, file: !193, line: 158, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !209, file: !193, line: 162, baseType: !57, size: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !192, file: !193, line: 262, baseType: !213, size: 64, offset: 832)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !192, file: !193, line: 264, baseType: !57, size: 32, offset: 896)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !192, file: !193, line: 268, baseType: !57, size: 32, offset: 928)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !192, file: !193, line: 270, baseType: !102, size: 64, offset: 960)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !192, file: !193, line: 274, baseType: !58, size: 16, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !192, file: !193, line: 275, baseType: !221, size: 8, offset: 1040)
!221 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !192, file: !193, line: 276, baseType: !223, size: 8, offset: 1048)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 8, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 1)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !192, file: !193, line: 280, baseType: !227, size: 64, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !193, line: 150, baseType: null)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !192, file: !193, line: 289, baseType: !230, size: 64, offset: 1152)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !87, line: 141, baseType: !103)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !192, file: !193, line: 297, baseType: !53, size: 64, offset: 1216)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !192, file: !193, line: 298, baseType: !53, size: 64, offset: 1280)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !192, file: !193, line: 299, baseType: !53, size: 64, offset: 1344)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !192, file: !193, line: 300, baseType: !53, size: 64, offset: 1408)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !192, file: !193, line: 302, baseType: !54, size: 64, offset: 1472)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !192, file: !193, line: 303, baseType: !57, size: 32, offset: 1536)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !192, file: !193, line: 305, baseType: !238, size: 160, offset: 1568)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 160, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 20)
!241 = !DILocalVariable(name: "st", scope: !187, file: !3, line: 742, type: !82)
!242 = !DILocalVariable(name: "i", scope: !63, file: !3, line: 777, type: !57)
!243 = !DILocalVariable(name: "skip_file", scope: !244, file: !3, line: 781, type: !71)
!244 = distinct !DILexicalBlock(scope: !245, file: !3, line: 780, column: 5)
!245 = distinct !DILexicalBlock(scope: !246, file: !3, line: 779, column: 3)
!246 = distinct !DILexicalBlock(scope: !63, file: !3, line: 779, column: 3)
!247 = !DILocalVariable(name: "ai_err", scope: !244, file: !3, line: 782, type: !19)
!248 = !DILocalVariable(name: "file_name", scope: !244, file: !3, line: 783, type: !51)
!249 = !DILocalVariable(name: "file_number", scope: !250, file: !3, line: 824, type: !56)
!250 = distinct !DILexicalBlock(scope: !251, file: !3, line: 820, column: 13)
!251 = distinct !DILexicalBlock(scope: !252, file: !3, line: 817, column: 15)
!252 = distinct !DILexicalBlock(scope: !253, file: !3, line: 812, column: 9)
!253 = distinct !DILexicalBlock(scope: !244, file: !3, line: 811, column: 11)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !224)
!255 = !DIGlobalVariableExpression(var: !256)
!256 = distinct !DIGlobalVariable(name: "total_lines", scope: !2, file: !3, line: 58, type: !257, isLocal: true, isDefinition: true)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !258, line: 112, baseType: !259)
!258 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !87, line: 62, baseType: !56)
!260 = !DIGlobalVariableExpression(var: !261)
!261 = distinct !DIGlobalVariable(name: "total_words", scope: !2, file: !3, line: 59, type: !257, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263)
!263 = distinct !DIGlobalVariable(name: "total_chars", scope: !2, file: !3, line: 60, type: !257, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265)
!265 = distinct !DIGlobalVariable(name: "total_bytes", scope: !2, file: !3, line: 61, type: !257, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267)
!267 = distinct !DIGlobalVariable(name: "max_line_length", scope: !2, file: !3, line: 62, type: !257, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269)
!269 = distinct !DIGlobalVariable(name: "print_lines", scope: !2, file: !3, line: 65, type: !71, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271)
!271 = distinct !DIGlobalVariable(name: "print_words", scope: !2, file: !3, line: 65, type: !71, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273)
!273 = distinct !DIGlobalVariable(name: "print_chars", scope: !2, file: !3, line: 65, type: !71, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275)
!275 = distinct !DIGlobalVariable(name: "print_bytes", scope: !2, file: !3, line: 65, type: !71, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277)
!277 = distinct !DIGlobalVariable(name: "print_linelength", scope: !2, file: !3, line: 66, type: !71, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279)
!279 = distinct !DIGlobalVariable(name: "number_width", scope: !2, file: !3, line: 69, type: !57, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281)
!281 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 72, type: !71, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283)
!283 = distinct !DIGlobalVariable(name: "infomap", scope: !284, file: !285, line: 632, type: !301, isLocal: true, isDefinition: true)
!284 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !285, file: !285, line: 630, type: !286, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !290)
!285 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!286 = !DISubroutineType(types: !287)
!287 = !{null, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!290 = !{!291, !292, !293, !300}
!291 = !DILocalVariable(name: "program", arg: 1, scope: !284, file: !285, line: 630, type: !288)
!292 = !DILocalVariable(name: "node", scope: !284, file: !285, line: 642, type: !288)
!293 = !DILocalVariable(name: "map_prog", scope: !284, file: !285, line: 643, type: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !284, file: !285, line: 632, size: 128, elements: !297)
!297 = !{!298, !299}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !296, file: !285, line: 632, baseType: !288, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !296, file: !285, line: 632, baseType: !288, size: 64, offset: 64)
!300 = !DILocalVariable(name: "lc_messages", scope: !284, file: !285, line: 655, type: !288)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 896, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 7)
!304 = !DIGlobalVariableExpression(var: !305)
!305 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 95, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 2304, elements: !316)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !309, line: 50, size: 256, elements: !310)
!309 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!310 = !{!311, !312, !313, !315}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !308, file: !309, line: 52, baseType: !288, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !308, file: !309, line: 55, baseType: !57, size: 32, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !308, file: !309, line: 56, baseType: !314, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !308, file: !309, line: 57, baseType: !57, size: 32, offset: 192)
!316 = !{!317}
!317 = !DISubrange(count: 9)
!318 = !DIGlobalVariableExpression(var: !319)
!319 = distinct !DIGlobalVariable(name: "format_sp_int", scope: !320, file: !3, line: 160, type: !335, isLocal: true, isDefinition: true)
!320 = distinct !DISubprogram(name: "write_counts", scope: !3, file: !3, line: 153, type: !321, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !323)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !257, !257, !257, !257, !257, !288}
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331}
!324 = !DILocalVariable(name: "lines", arg: 1, scope: !320, file: !3, line: 153, type: !257)
!325 = !DILocalVariable(name: "words", arg: 2, scope: !320, file: !3, line: 154, type: !257)
!326 = !DILocalVariable(name: "chars", arg: 3, scope: !320, file: !3, line: 155, type: !257)
!327 = !DILocalVariable(name: "bytes", arg: 4, scope: !320, file: !3, line: 156, type: !257)
!328 = !DILocalVariable(name: "linelength", arg: 5, scope: !320, file: !3, line: 157, type: !257)
!329 = !DILocalVariable(name: "file", arg: 6, scope: !320, file: !3, line: 158, type: !288)
!330 = !DILocalVariable(name: "format_int", scope: !320, file: !3, line: 161, type: !288)
!331 = !DILocalVariable(name: "buf", scope: !320, file: !3, line: 162, type: !332)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 168, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 21)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 40, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 5)
!338 = !DIGlobalVariableExpression(var: !339)
!339 = distinct !DIGlobalVariable(name: "Version", scope: !340, file: !341, line: 2, type: !288, isLocal: false, isDefinition: true)
!340 = distinct !DICompileUnit(language: DW_LANG_C99, file: !341, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !342, globals: !343)
!341 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!342 = !{}
!343 = !{!338}
!344 = !DIGlobalVariableExpression(var: !345)
!345 = distinct !DIGlobalVariable(name: "file_name", scope: !346, file: !351, line: 36, type: !288, isLocal: true, isDefinition: true)
!346 = distinct !DICompileUnit(language: DW_LANG_C99, file: !347, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !342, globals: !348)
!347 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!348 = !{!344, !349}
!349 = !DIGlobalVariableExpression(var: !350)
!350 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !346, file: !351, line: 46, type: !71, isLocal: true, isDefinition: true)
!351 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!352 = !DIGlobalVariableExpression(var: !353)
!353 = distinct !DIGlobalVariable(name: "exit_failure", scope: !354, file: !357, line: 24, type: !358, isLocal: false, isDefinition: true)
!354 = distinct !DICompileUnit(language: DW_LANG_C99, file: !355, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !342, globals: !356)
!355 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!356 = !{!352}
!357 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!358 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !57)
!359 = !DIGlobalVariableExpression(var: !360)
!360 = distinct !DIGlobalVariable(name: "is_basic_table", scope: !361, file: !365, line: 28, type: !366, isLocal: false, isDefinition: true)
!361 = distinct !DICompileUnit(language: DW_LANG_C99, file: !362, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !342, retainedTypes: !363, globals: !364)
!362 = !DIFile(filename: "./lib/mbchar.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!363 = !{!59}
!364 = !{!359}
!365 = !DIFile(filename: "lib/mbchar.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 256, elements: !368)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!368 = !{!369}
!369 = !DISubrange(count: 8)
!370 = !DIGlobalVariableExpression(var: !371)
!371 = distinct !DIGlobalVariable(name: "program_name", scope: !372, file: !376, line: 33, type: !288, isLocal: false, isDefinition: true)
!372 = distinct !DICompileUnit(language: DW_LANG_C99, file: !373, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !342, retainedTypes: !374, globals: !375)
!373 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!374 = !{!53, !51}
!375 = !{!370}
!376 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!377 = !DIGlobalVariableExpression(var: !378)
!378 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !379, file: !391, line: 77, type: !424, isLocal: false, isDefinition: true)
!379 = distinct !DICompileUnit(language: DW_LANG_C99, file: !380, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !381, retainedTypes: !387, globals: !388)
!380 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!381 = !{!5, !382, !35}
!382 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !383)
!383 = !{!384, !385, !386}
!384 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!385 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!386 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!387 = !{!57, !58, !54, !51}
!388 = !{!377, !389, !396, !406, !408, !413, !420, !422}
!389 = !DIGlobalVariableExpression(var: !390)
!390 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !379, file: !391, line: 93, type: !392, isLocal: false, isDefinition: true)
!391 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 320, elements: !394)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!394 = !{!395}
!395 = !DISubrange(count: 10)
!396 = !DIGlobalVariableExpression(var: !397)
!397 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !379, file: !391, line: 1043, type: !398, isLocal: false, isDefinition: true)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !391, line: 57, size: 448, elements: !399)
!399 = !{!400, !401, !402, !404, !405}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !398, file: !391, line: 60, baseType: !5, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !398, file: !391, line: 63, baseType: !57, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !398, file: !391, line: 67, baseType: !403, size: 256, offset: 64)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 256, elements: !368)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !398, file: !391, line: 70, baseType: !288, size: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !398, file: !391, line: 73, baseType: !288, size: 64, offset: 384)
!406 = !DIGlobalVariableExpression(var: !407)
!407 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !379, file: !391, line: 108, type: !398, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409)
!409 = distinct !DIGlobalVariable(name: "slot0", scope: !379, file: !391, line: 834, type: !410, isLocal: true, isDefinition: true)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2048, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 256)
!413 = !DIGlobalVariableExpression(var: !414)
!414 = distinct !DIGlobalVariable(name: "slotvec", scope: !379, file: !391, line: 837, type: !415, isLocal: true, isDefinition: true)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !391, line: 826, size: 128, elements: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !416, file: !391, line: 828, baseType: !54, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !416, file: !391, line: 829, baseType: !51, size: 64, offset: 64)
!420 = !DIGlobalVariableExpression(var: !421)
!421 = distinct !DIGlobalVariable(name: "nslots", scope: !379, file: !391, line: 835, type: !57, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423)
!423 = distinct !DIGlobalVariable(name: "slotvec0", scope: !379, file: !391, line: 836, type: !416, isLocal: true, isDefinition: true)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 704, elements: !426)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!426 = !{!427}
!427 = !DISubrange(count: 11)
!428 = !DIGlobalVariableExpression(var: !429)
!429 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !430, file: !433, line: 26, type: !434, isLocal: false, isDefinition: true)
!430 = distinct !DICompileUnit(language: DW_LANG_C99, file: !431, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !342, globals: !432)
!431 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!432 = !{!428}
!433 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 376, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 47)
!437 = !DIGlobalVariableExpression(var: !438)
!438 = distinct !DIGlobalVariable(name: "obstack_alloc_failed_handler", scope: !439, file: !443, line: 351, type: !444, isLocal: false, isDefinition: true)
!439 = distinct !DICompileUnit(language: DW_LANG_C99, file: !440, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !342, retainedTypes: !441, globals: !442)
!440 = !DIFile(filename: "./lib/obstack.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!441 = !{!51, !53}
!442 = !{!437}
!443 = !DIFile(filename: "lib/obstack.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null}
!447 = !DIGlobalVariableExpression(var: !448)
!448 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !449, file: !793, line: 120, type: !794, isLocal: true, isDefinition: true)
!449 = distinct !DICompileUnit(language: DW_LANG_C99, file: !450, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !451, retainedTypes: !790, globals: !792)
!450 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!451 = !{!452}
!452 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !453, line: 41, size: 32, elements: !454)
!453 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!454 = !{!455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789}
!455 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!456 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!457 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!458 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!459 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!460 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!461 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!462 = !DIEnumerator(name: "DAY_1", value: 131079)
!463 = !DIEnumerator(name: "DAY_2", value: 131080)
!464 = !DIEnumerator(name: "DAY_3", value: 131081)
!465 = !DIEnumerator(name: "DAY_4", value: 131082)
!466 = !DIEnumerator(name: "DAY_5", value: 131083)
!467 = !DIEnumerator(name: "DAY_6", value: 131084)
!468 = !DIEnumerator(name: "DAY_7", value: 131085)
!469 = !DIEnumerator(name: "ABMON_1", value: 131086)
!470 = !DIEnumerator(name: "ABMON_2", value: 131087)
!471 = !DIEnumerator(name: "ABMON_3", value: 131088)
!472 = !DIEnumerator(name: "ABMON_4", value: 131089)
!473 = !DIEnumerator(name: "ABMON_5", value: 131090)
!474 = !DIEnumerator(name: "ABMON_6", value: 131091)
!475 = !DIEnumerator(name: "ABMON_7", value: 131092)
!476 = !DIEnumerator(name: "ABMON_8", value: 131093)
!477 = !DIEnumerator(name: "ABMON_9", value: 131094)
!478 = !DIEnumerator(name: "ABMON_10", value: 131095)
!479 = !DIEnumerator(name: "ABMON_11", value: 131096)
!480 = !DIEnumerator(name: "ABMON_12", value: 131097)
!481 = !DIEnumerator(name: "MON_1", value: 131098)
!482 = !DIEnumerator(name: "MON_2", value: 131099)
!483 = !DIEnumerator(name: "MON_3", value: 131100)
!484 = !DIEnumerator(name: "MON_4", value: 131101)
!485 = !DIEnumerator(name: "MON_5", value: 131102)
!486 = !DIEnumerator(name: "MON_6", value: 131103)
!487 = !DIEnumerator(name: "MON_7", value: 131104)
!488 = !DIEnumerator(name: "MON_8", value: 131105)
!489 = !DIEnumerator(name: "MON_9", value: 131106)
!490 = !DIEnumerator(name: "MON_10", value: 131107)
!491 = !DIEnumerator(name: "MON_11", value: 131108)
!492 = !DIEnumerator(name: "MON_12", value: 131109)
!493 = !DIEnumerator(name: "AM_STR", value: 131110)
!494 = !DIEnumerator(name: "PM_STR", value: 131111)
!495 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!496 = !DIEnumerator(name: "D_FMT", value: 131113)
!497 = !DIEnumerator(name: "T_FMT", value: 131114)
!498 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!499 = !DIEnumerator(name: "ERA", value: 131116)
!500 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!501 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!502 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!503 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!504 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!505 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!506 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!507 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!508 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!509 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!510 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!511 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!512 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!513 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!514 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!515 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!516 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!517 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!518 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!519 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!520 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!521 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!522 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!523 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!524 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!525 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!526 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!527 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!528 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!529 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!530 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!531 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!532 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!533 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!534 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!535 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!536 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!537 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!538 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!539 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!540 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!541 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!542 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!543 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!544 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!545 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!546 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!547 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!548 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!549 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!550 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!551 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!552 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!553 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!554 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!555 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!556 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!557 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!558 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!559 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!560 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!561 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!562 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!563 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!564 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!565 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!566 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!567 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!568 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!569 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!570 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!571 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!572 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!573 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!574 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!575 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!576 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!577 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!578 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!579 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!580 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!581 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!582 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!583 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!584 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!585 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!586 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!587 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!588 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!589 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!590 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!591 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!592 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!593 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!594 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!595 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!596 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!597 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!598 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!599 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!600 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!601 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!602 = !DIEnumerator(name: "CODESET", value: 14)
!603 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!604 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!605 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!606 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!607 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!608 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!609 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!610 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!611 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!612 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!613 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!614 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!615 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!616 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!617 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!618 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!619 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!620 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!621 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!622 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!623 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!624 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!625 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!626 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!627 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!628 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!629 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!630 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!631 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!632 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!633 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!634 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!635 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!636 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!637 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!638 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!639 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!640 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!641 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!642 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!643 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!644 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!645 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!646 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!647 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!648 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!649 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!650 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!651 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!652 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!653 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!654 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!655 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!656 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!657 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!658 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!659 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!660 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!661 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!662 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!663 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!664 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!665 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!666 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!667 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!668 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!669 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!670 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!671 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!672 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!673 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!674 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!675 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!676 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!677 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!678 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!679 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!680 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!681 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!682 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!683 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!684 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!685 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!686 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!687 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!688 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!689 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!690 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!691 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!692 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!693 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!694 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!695 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!696 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!697 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!698 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!699 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!700 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!701 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!702 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!703 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!704 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!705 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!706 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!707 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!708 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!709 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!710 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!711 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!712 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!713 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!714 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!715 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!716 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!717 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!718 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!719 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!720 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!721 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!722 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!723 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!724 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!725 = !DIEnumerator(name: "THOUSEP", value: 65537)
!726 = !DIEnumerator(name: "__GROUPING", value: 65538)
!727 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!728 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!729 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!730 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!731 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!732 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!733 = !DIEnumerator(name: "__YESSTR", value: 327682)
!734 = !DIEnumerator(name: "__NOSTR", value: 327683)
!735 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!736 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!737 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!738 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!739 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!740 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!741 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!742 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!743 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!744 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!745 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!746 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!747 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!748 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!749 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!750 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!751 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!752 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!753 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!754 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!755 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!756 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!757 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!758 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!759 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!760 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!761 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!762 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!763 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!764 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!765 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!766 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!767 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!768 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!769 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!770 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!771 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!772 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!773 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!774 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!775 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!776 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!777 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!778 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!779 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!780 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!781 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!782 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!783 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!784 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!785 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!786 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!787 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!788 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!789 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!790 = !{!53, !51, !791}
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!792 = !{!447}
!793 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!794 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !288)
!795 = distinct !DICompileUnit(language: DW_LANG_C99, file: !796, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !797, retainedTypes: !798)
!796 = !DIFile(filename: "./lib/argv-iter.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!797 = !{!19}
!798 = !{!53}
!799 = distinct !DICompileUnit(language: DW_LANG_C99, file: !800, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !801)
!800 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!801 = !{!26}
!802 = distinct !DICompileUnit(language: DW_LANG_C99, file: !803, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !342, retainedTypes: !804)
!803 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!804 = !{!257}
!805 = distinct !DICompileUnit(language: DW_LANG_C99, file: !806, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !807, retainedTypes: !1026)
!806 = !DIFile(filename: "./lib/physmem.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!807 = !{!808}
!808 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !809, line: 71, size: 32, elements: !810)
!809 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!810 = !{!811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025}
!811 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!812 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!813 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!814 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!815 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!816 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!817 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!818 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!819 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!820 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!821 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!822 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!823 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!824 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!825 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!826 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!827 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!828 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!829 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!830 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!831 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!832 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!833 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!834 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!835 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!836 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!837 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!838 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!839 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!840 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!841 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!842 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!843 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!844 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!845 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!846 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!847 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!848 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!849 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!850 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!851 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!852 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!853 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!854 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!855 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!856 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!857 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!858 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!859 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!860 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!861 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!862 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!863 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!864 = !DIEnumerator(name: "_SC_PII", value: 53)
!865 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!866 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!867 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!868 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!869 = !DIEnumerator(name: "_SC_POLL", value: 58)
!870 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!871 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!872 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!873 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!874 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!875 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!876 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!877 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!878 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!879 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!880 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!881 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!882 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!883 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!884 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!885 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!886 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!887 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!888 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!889 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!890 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!891 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!892 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!893 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!894 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!895 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!896 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!897 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!898 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!899 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!900 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!901 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!902 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!903 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!904 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!905 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!906 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!907 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!908 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!909 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!910 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!911 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!912 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!913 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!914 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!915 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!916 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!917 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!918 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!919 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!920 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!921 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!922 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!923 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!924 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!925 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!926 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!927 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!928 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!929 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!930 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!931 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!932 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!933 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!934 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!935 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!936 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!937 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!938 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!939 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!940 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!941 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!942 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!943 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!944 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!945 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!946 = !DIEnumerator(name: "_SC_BASE", value: 134)
!947 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!948 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!949 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!950 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!951 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!952 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!953 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!954 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!955 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!956 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!957 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!958 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!959 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!960 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!961 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!962 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!963 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!964 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!965 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!966 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!967 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!968 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!969 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!970 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!971 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!972 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!973 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!974 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!975 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!976 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!977 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!978 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!979 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!980 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!981 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!982 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!983 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!984 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!985 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!986 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!987 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!988 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!989 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!990 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!991 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!992 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!993 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!994 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!995 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!996 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!997 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!998 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!999 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!1000 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!1001 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!1002 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!1003 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!1004 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!1005 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!1006 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!1007 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!1008 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!1009 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!1010 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!1011 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!1012 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!1013 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!1014 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!1015 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!1016 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!1017 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!1018 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!1019 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!1020 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!1021 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!1022 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!1023 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!1024 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!1025 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!1026 = !{!1027}
!1027 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1028 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1029, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !342, retainedTypes: !1030)
!1029 = !DIFile(filename: "./lib/readtokens0.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1030 = !{!53, !51, !54, !1031}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1034 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1035, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1036)
!1035 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1036 = !{!1037}
!1037 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1039, file: !1038, line: 62, size: 32, elements: !1053)
!1038 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1039 = distinct !DISubprogram(name: "safe_read", scope: !1038, file: !1038, line: 56, type: !1040, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !1034, variables: !1042)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!54, !57, !53, !54}
!1042 = !{!1043, !1044, !1045, !1046}
!1043 = !DILocalVariable(name: "fd", arg: 1, scope: !1039, file: !1038, line: 56, type: !57)
!1044 = !DILocalVariable(name: "buf", arg: 2, scope: !1039, file: !1038, line: 56, type: !53)
!1045 = !DILocalVariable(name: "count", arg: 3, scope: !1039, file: !1038, line: 56, type: !54)
!1046 = !DILocalVariable(name: "result", scope: !1047, file: !1038, line: 66, type: !1050)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !1038, line: 65, column: 5)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !1038, line: 64, column: 3)
!1049 = distinct !DILexicalBlock(scope: !1039, file: !1038, line: 64, column: 3)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1051, line: 109, baseType: !1052)
!1051 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !87, line: 181, baseType: !103)
!1053 = !{!1054}
!1054 = !DIEnumerator(name: "BUGGY_READ_MAXIMUM", value: 2147475456)
!1055 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1056, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1057, retainedTypes: !798)
!1056 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1057 = !{!1058}
!1058 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1059, line: 41, size: 32, elements: !1060)
!1059 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1060 = !{!1061}
!1061 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!1062 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1063, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1064, retainedTypes: !1077)
!1063 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1064 = !{!1065}
!1065 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1067, file: !1066, line: 192, size: 32, elements: !1075)
!1066 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1067 = distinct !DISubprogram(name: "x2nrealloc", scope: !1066, file: !1066, line: 180, type: !1068, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !1062, variables: !1070)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!53, !53, !129, !54}
!1070 = !{!1071, !1072, !1073, !1074}
!1071 = !DILocalVariable(name: "p", arg: 1, scope: !1067, file: !1066, line: 180, type: !53)
!1072 = !DILocalVariable(name: "pn", arg: 2, scope: !1067, file: !1066, line: 180, type: !129)
!1073 = !DILocalVariable(name: "s", arg: 3, scope: !1067, file: !1066, line: 180, type: !54)
!1074 = !DILocalVariable(name: "n", scope: !1067, file: !1066, line: 182, type: !54)
!1075 = !{!1076}
!1076 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!1077 = !{!54, !51, !53}
!1078 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1079, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !342)
!1079 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1080 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1081, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !342, retainedTypes: !798)
!1081 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1082 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1083, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !342)
!1083 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1084 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1085, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !342, retainedTypes: !798)
!1085 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1086 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1087, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !342, retainedTypes: !798)
!1087 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1088 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1089, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !342, retainedTypes: !1090)
!1089 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1090 = !{!54}
!1091 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1092, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !342)
!1092 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1093 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1094, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !342)
!1094 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1095 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!1096 = !{i32 2, !"Dwarf Version", i32 4}
!1097 = !{i32 2, !"Debug Info Version", i32 3}
!1098 = !{i32 1, !"wchar_size", i32 4}
!1099 = !{i32 7, !"PIC Level", i32 2}
!1100 = !{i32 7, !"PIE Level", i32 2}
!1101 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 109, type: !1102, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !1104)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{null, !57}
!1104 = !{!1105}
!1105 = !DILocalVariable(name: "status", arg: 1, scope: !1101, file: !3, line: 109, type: !57)
!1106 = !DIExpression()
!1107 = !DILocation(line: 109, column: 12, scope: !1101)
!1108 = !DILocation(line: 111, column: 14, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 111, column: 7)
!1110 = !DILocation(line: 111, column: 7, scope: !1101)
!1111 = !DILocation(line: 112, column: 5, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 112, column: 5)
!1113 = !{!1114, !1114, i64 0}
!1114 = !{!"any pointer", !1115, i64 0}
!1115 = !{!"omnipotent char", !1116, i64 0}
!1116 = !{!"Simple C/C++ TBAA"}
!1117 = !DILocation(line: 115, column: 7, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 114, column: 5)
!1119 = !DILocation(line: 120, column: 7, scope: !1118)
!1120 = !DILocation(line: 580, column: 3, scope: !1121, inlinedAt: !1122)
!1121 = distinct !DISubprogram(name: "emit_stdin_note", scope: !285, file: !285, line: 578, type: !445, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !342)
!1122 = distinct !DILocation(line: 126, column: 7, scope: !1118)
!1123 = !DILocation(line: 128, column: 7, scope: !1118)
!1124 = !DILocation(line: 136, column: 7, scope: !1118)
!1125 = !DILocation(line: 143, column: 7, scope: !1118)
!1126 = !DILocation(line: 144, column: 7, scope: !1118)
!1127 = !DILocation(line: 642, column: 15, scope: !284, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 145, column: 7, scope: !1118)
!1129 = !DILocation(line: 651, column: 3, scope: !284, inlinedAt: !1128)
!1130 = !DILocation(line: 655, column: 29, scope: !284, inlinedAt: !1128)
!1131 = !DILocation(line: 655, column: 15, scope: !284, inlinedAt: !1128)
!1132 = !DILocation(line: 656, column: 7, scope: !1133, inlinedAt: !1128)
!1133 = distinct !DILexicalBlock(scope: !284, file: !285, line: 656, column: 7)
!1134 = !DILocation(line: 656, column: 19, scope: !1133, inlinedAt: !1128)
!1135 = !DILocation(line: 656, column: 22, scope: !1133, inlinedAt: !1128)
!1136 = !DILocation(line: 656, column: 7, scope: !284, inlinedAt: !1128)
!1137 = !DILocation(line: 662, column: 7, scope: !1138, inlinedAt: !1128)
!1138 = distinct !DILexicalBlock(scope: !1133, file: !285, line: 657, column: 5)
!1139 = !DILocation(line: 664, column: 5, scope: !1138, inlinedAt: !1128)
!1140 = !DILocation(line: 665, column: 3, scope: !284, inlinedAt: !1128)
!1141 = !DILocation(line: 667, column: 3, scope: !284, inlinedAt: !1128)
!1142 = !DILocation(line: 147, column: 3, scope: !1101)
!1143 = !DILocation(line: 648, column: 11, scope: !63)
!1144 = !DILocation(line: 648, column: 24, scope: !63)
!1145 = !DILocation(line: 654, column: 9, scope: !63)
!1146 = !DILocation(line: 656, column: 3, scope: !63)
!1147 = !DILocation(line: 659, column: 21, scope: !63)
!1148 = !DILocation(line: 659, column: 3, scope: !63)
!1149 = !DILocation(line: 660, column: 3, scope: !63)
!1150 = !DILocation(line: 661, column: 3, scope: !63)
!1151 = !DILocation(line: 662, column: 3, scope: !63)
!1152 = !DILocation(line: 664, column: 3, scope: !63)
!1153 = !DILocation(line: 666, column: 15, scope: !63)
!1154 = !DILocation(line: 666, column: 13, scope: !63)
!1155 = !{!1156, !1156, i64 0}
!1156 = !{!"long", !1115, i64 0}
!1157 = !DILocation(line: 669, column: 12, scope: !63)
!1158 = !DILocation(line: 669, column: 3, scope: !63)
!1159 = !DILocation(line: 673, column: 75, scope: !63)
!1160 = !DILocation(line: 673, column: 57, scope: !63)
!1161 = !DILocation(line: 673, column: 43, scope: !63)
!1162 = !DILocation(line: 673, column: 29, scope: !63)
!1163 = !DILocation(line: 673, column: 15, scope: !63)
!1164 = !DILocation(line: 675, column: 3, scope: !63)
!1165 = !DILocation(line: 675, column: 18, scope: !63)
!1166 = !DILocation(line: 651, column: 7, scope: !63)
!1167 = !DILocation(line: 680, column: 9, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !63, file: !3, line: 677, column: 7)
!1169 = !DILocation(line: 688, column: 9, scope: !1168)
!1170 = !DILocation(line: 692, column: 9, scope: !1168)
!1171 = !DILocation(line: 696, column: 9, scope: !1168)
!1172 = distinct !{!1172, !1164, !1173}
!1173 = !DILocation(line: 708, column: 7, scope: !63)
!1174 = !DILocation(line: 699, column: 22, scope: !1168)
!1175 = !DILocation(line: 700, column: 9, scope: !1168)
!1176 = !DILocation(line: 702, column: 7, scope: !1168)
!1177 = !DILocation(line: 704, column: 7, scope: !1168)
!1178 = !DILocation(line: 707, column: 9, scope: !1168)
!1179 = !DILocation(line: 710, column: 22, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !63, file: !3, line: 710, column: 7)
!1181 = !DILocation(line: 710, column: 37, scope: !1180)
!1182 = !DILocation(line: 710, column: 52, scope: !1180)
!1183 = !DILocation(line: 711, column: 10, scope: !1180)
!1184 = !DILocation(line: 710, column: 7, scope: !63)
!1185 = !DILocation(line: 712, column: 5, scope: !1180)
!1186 = !DILocation(line: 714, column: 8, scope: !63)
!1187 = !DILocation(line: 716, column: 7, scope: !188)
!1188 = !{!1189, !1189, i64 0}
!1189 = !{!"int", !1115, i64 0}
!1190 = !DILocation(line: 716, column: 7, scope: !63)
!1191 = !DILocation(line: 722, column: 11, scope: !187)
!1192 = !DILocation(line: 724, column: 24, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 723, column: 9)
!1194 = distinct !DILexicalBlock(scope: !187, file: !3, line: 722, column: 11)
!1195 = !DILocation(line: 724, column: 47, scope: !1193)
!1196 = !DILocation(line: 724, column: 11, scope: !1193)
!1197 = !DILocation(line: 725, column: 11, scope: !1193)
!1198 = !DILocation(line: 727, column: 11, scope: !1193)
!1199 = !DILocation(line: 730, column: 11, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !187, file: !3, line: 730, column: 11)
!1201 = !DILocation(line: 730, column: 11, scope: !187)
!1202 = !DILocation(line: 731, column: 18, scope: !1200)
!1203 = !DILocation(line: 718, column: 13, scope: !187)
!1204 = !DILocation(line: 731, column: 9, scope: !1200)
!1205 = !DILocation(line: 734, column: 20, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 733, column: 9)
!1207 = !DILocation(line: 735, column: 22, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 735, column: 15)
!1209 = !DILocation(line: 735, column: 15, scope: !1206)
!1210 = !DILocation(line: 736, column: 13, scope: !1208)
!1211 = !DILocation(line: 742, column: 7, scope: !187)
!1212 = !DILocation(line: 743, column: 18, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !187, file: !3, line: 743, column: 11)
!1214 = !DILocation(line: 742, column: 19, scope: !187)
!1215 = !DILocalVariable(name: "__fd", arg: 1, scope: !1216, file: !1217, line: 463, type: !57)
!1216 = distinct !DISubprogram(name: "fstat", scope: !1217, file: !1217, line: 463, type: !1218, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1221)
!1217 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!57, !57, !1220}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1221 = !{!1215, !1222}
!1222 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1216, file: !1217, line: 463, type: !1220)
!1223 = !DILocation(line: 463, column: 1, scope: !1216, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 743, column: 11, scope: !1213)
!1225 = !DILocation(line: 465, column: 10, scope: !1216, inlinedAt: !1224)
!1226 = !DILocation(line: 743, column: 40, scope: !1213)
!1227 = !DILocation(line: 744, column: 11, scope: !1213)
!1228 = !DILocation(line: 744, column: 14, scope: !1213)
!1229 = !{!1230, !1189, i64 24}
!1230 = !{!"stat", !1156, i64 0, !1156, i64 8, !1156, i64 16, !1189, i64 24, !1189, i64 28, !1189, i64 32, !1189, i64 36, !1156, i64 40, !1156, i64 48, !1156, i64 56, !1156, i64 64, !1231, i64 72, !1231, i64 88, !1231, i64 104, !1115, i64 120}
!1231 = !{!"timespec", !1156, i64 0, !1156, i64 8}
!1232 = !DILocation(line: 745, column: 11, scope: !1213)
!1233 = !DILocation(line: 745, column: 17, scope: !1213)
!1234 = !{!1230, !1156, i64 48}
!1235 = !DILocation(line: 745, column: 14, scope: !1213)
!1236 = !DILocation(line: 745, column: 28, scope: !1213)
!1237 = !DILocation(line: 745, column: 25, scope: !1213)
!1238 = !DILocation(line: 743, column: 11, scope: !187)
!1239 = !DILocation(line: 656, column: 17, scope: !63)
!1240 = !DILocation(line: 748, column: 11, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 746, column: 9)
!1242 = !DILocation(line: 749, column: 17, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 749, column: 15)
!1244 = !DILocation(line: 749, column: 44, scope: !1243)
!1245 = !DILocation(line: 749, column: 47, scope: !1243)
!1246 = !DILocation(line: 749, column: 63, scope: !1243)
!1247 = !DILocation(line: 749, column: 15, scope: !1241)
!1248 = !DILocation(line: 750, column: 13, scope: !1243)
!1249 = !DILocation(line: 752, column: 23, scope: !1241)
!1250 = !{!1251, !1114, i64 8}
!1251 = !{!"Tokens", !1156, i64 0, !1114, i64 8, !1114, i64 16, !1252, i64 24, !1252, i64 112, !1252, i64 200}
!1252 = !{!"obstack", !1156, i64 0, !1114, i64 8, !1114, i64 16, !1114, i64 24, !1114, i64 32, !1115, i64 40, !1156, i64 48, !1115, i64 56, !1115, i64 64, !1114, i64 72, !1189, i64 80, !1189, i64 80, !1189, i64 80}
!1253 = !DILocation(line: 653, column: 10, scope: !63)
!1254 = !DILocation(line: 753, column: 24, scope: !1241)
!1255 = !{!1251, !1156, i64 0}
!1256 = !DILocation(line: 652, column: 10, scope: !63)
!1257 = !DILocation(line: 754, column: 16, scope: !1241)
!1258 = !DILocation(line: 715, column: 25, scope: !63)
!1259 = !DILocation(line: 755, column: 9, scope: !1241)
!1260 = !DILocation(line: 760, column: 16, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 757, column: 9)
!1262 = !DILocation(line: 762, column: 5, scope: !188)
!1263 = !DILocation(line: 762, column: 5, scope: !187)
!1264 = !DILocation(line: 766, column: 37, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !188, file: !3, line: 764, column: 5)
!1266 = !DILocation(line: 766, column: 16, scope: !1265)
!1267 = !DILocation(line: 767, column: 38, scope: !1265)
!1268 = !DILocation(line: 767, column: 16, scope: !1265)
!1269 = !DILocation(line: 768, column: 12, scope: !1265)
!1270 = !DILocation(line: 771, column: 8, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !63, file: !3, line: 771, column: 7)
!1272 = !DILocation(line: 771, column: 7, scope: !63)
!1273 = !DILocation(line: 772, column: 5, scope: !1271)
!1274 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1275, file: !3, line: 590, type: !54)
!1275 = distinct !DISubprogram(name: "get_input_fstatus", scope: !3, file: !3, line: 590, type: !1276, isLocal: true, isDefinition: true, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1280)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!77, !54, !1278}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!1280 = !{!1274, !1281, !1282, !1283}
!1281 = !DILocalVariable(name: "file", arg: 2, scope: !1275, file: !3, line: 590, type: !1278)
!1282 = !DILocalVariable(name: "fstatus", scope: !1275, file: !3, line: 592, type: !77)
!1283 = !DILocalVariable(name: "i", scope: !1284, file: !3, line: 602, type: !54)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 601, column: 5)
!1285 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 594, column: 7)
!1286 = !DILocation(line: 590, column: 27, scope: !1275, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 774, column: 13, scope: !63)
!1288 = !DILocation(line: 590, column: 48, scope: !1275, inlinedAt: !1287)
!1289 = !DILocation(line: 592, column: 39, scope: !1275, inlinedAt: !1287)
!1290 = !DILocalVariable(name: "n", arg: 1, scope: !1291, file: !1066, line: 105, type: !54)
!1291 = distinct !DISubprogram(name: "xnmalloc", scope: !1066, file: !1066, line: 105, type: !1292, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1294)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!53, !54, !54}
!1294 = !{!1290, !1295}
!1295 = !DILocalVariable(name: "s", arg: 2, scope: !1291, file: !1066, line: 105, type: !54)
!1296 = !DILocation(line: 105, column: 18, scope: !1291, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 592, column: 29, scope: !1275, inlinedAt: !1287)
!1298 = !DILocation(line: 105, column: 28, scope: !1291, inlinedAt: !1297)
!1299 = !DILocation(line: 107, column: 7, scope: !1300, inlinedAt: !1297)
!1300 = distinct !DILexicalBlock(scope: !1291, file: !1066, line: 107, column: 7)
!1301 = !DILocation(line: 107, column: 7, scope: !1291, inlinedAt: !1297)
!1302 = !DILocation(line: 108, column: 5, scope: !1300, inlinedAt: !1297)
!1303 = !DILocation(line: 109, column: 21, scope: !1291, inlinedAt: !1297)
!1304 = !DILocation(line: 109, column: 10, scope: !1291, inlinedAt: !1297)
!1305 = !DILocation(line: 592, column: 29, scope: !1275, inlinedAt: !1287)
!1306 = !DILocation(line: 592, column: 19, scope: !1275, inlinedAt: !1287)
!1307 = !DILocation(line: 595, column: 7, scope: !1285, inlinedAt: !1287)
!1308 = !DILocation(line: 605, column: 32, scope: !1309, inlinedAt: !1287)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 604, column: 7)
!1310 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 604, column: 7)
!1311 = !DILocation(line: 596, column: 16, scope: !1285, inlinedAt: !1287)
!1312 = !DILocation(line: 596, column: 30, scope: !1285, inlinedAt: !1287)
!1313 = !DILocation(line: 596, column: 28, scope: !1285, inlinedAt: !1287)
!1314 = !DILocation(line: 596, column: 44, scope: !1285, inlinedAt: !1287)
!1315 = !DILocation(line: 596, column: 42, scope: !1285, inlinedAt: !1287)
!1316 = !DILocation(line: 597, column: 18, scope: !1285, inlinedAt: !1287)
!1317 = !DILocation(line: 597, column: 16, scope: !1285, inlinedAt: !1287)
!1318 = !DILocation(line: 597, column: 32, scope: !1285, inlinedAt: !1287)
!1319 = !DILocation(line: 597, column: 30, scope: !1285, inlinedAt: !1287)
!1320 = !DILocation(line: 598, column: 15, scope: !1285, inlinedAt: !1287)
!1321 = !DILocation(line: 594, column: 7, scope: !1275, inlinedAt: !1287)
!1322 = !DILocation(line: 599, column: 16, scope: !1285, inlinedAt: !1287)
!1323 = !DILocation(line: 599, column: 23, scope: !1285, inlinedAt: !1287)
!1324 = !{!1325, !1189, i64 0}
!1325 = !{!"fstatus", !1189, i64 0, !1230, i64 8}
!1326 = !DILocation(line: 599, column: 5, scope: !1285, inlinedAt: !1287)
!1327 = !DILocation(line: 602, column: 14, scope: !1284, inlinedAt: !1287)
!1328 = !DILocation(line: 605, column: 40, scope: !1309, inlinedAt: !1287)
!1329 = !DILocation(line: 605, column: 43, scope: !1309, inlinedAt: !1287)
!1330 = !DILocation(line: 605, column: 30, scope: !1309, inlinedAt: !1287)
!1331 = !DILocation(line: 606, column: 65, scope: !1309, inlinedAt: !1287)
!1332 = !DILocation(line: 463, column: 1, scope: !1216, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 606, column: 32, scope: !1309, inlinedAt: !1287)
!1334 = !DILocation(line: 465, column: 10, scope: !1216, inlinedAt: !1333)
!1335 = !DILocation(line: 607, column: 59, scope: !1309, inlinedAt: !1287)
!1336 = !DILocalVariable(name: "__path", arg: 1, scope: !1337, file: !1217, line: 449, type: !288)
!1337 = distinct !DISubprogram(name: "stat", scope: !1217, file: !1217, line: 449, type: !1338, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1340)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!57, !288, !1220}
!1340 = !{!1336, !1341}
!1341 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1337, file: !1217, line: 449, type: !1220)
!1342 = !DILocation(line: 449, column: 1, scope: !1337, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 607, column: 32, scope: !1309, inlinedAt: !1287)
!1344 = !DILocation(line: 451, column: 10, scope: !1337, inlinedAt: !1343)
!1345 = !DILocation(line: 605, column: 20, scope: !1309, inlinedAt: !1287)
!1346 = !DILocation(line: 605, column: 27, scope: !1309, inlinedAt: !1287)
!1347 = !DILocation(line: 604, column: 32, scope: !1309, inlinedAt: !1287)
!1348 = !DILocation(line: 604, column: 21, scope: !1309, inlinedAt: !1287)
!1349 = !DILocation(line: 604, column: 7, scope: !1310, inlinedAt: !1287)
!1350 = distinct !{!1350, !1351, !1352}
!1351 = !DILocation(line: 604, column: 7, scope: !1310)
!1352 = !DILocation(line: 607, column: 62, scope: !1310)
!1353 = !DILocation(line: 655, column: 19, scope: !63)
!1354 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1355, file: !3, line: 618, type: !54)
!1355 = distinct !DISubprogram(name: "compute_number_width", scope: !3, file: !3, line: 618, type: !1356, isLocal: true, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1360)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!57, !54, !1358}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!1360 = !{!1354, !1361, !1362, !1363, !1366, !1367}
!1361 = !DILocalVariable(name: "fstatus", arg: 2, scope: !1355, file: !3, line: 618, type: !1358)
!1362 = !DILocalVariable(name: "width", scope: !1355, file: !3, line: 620, type: !57)
!1363 = !DILocalVariable(name: "minimum_width", scope: !1364, file: !3, line: 624, type: !57)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 623, column: 5)
!1365 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 622, column: 7)
!1366 = !DILocalVariable(name: "regular_total", scope: !1364, file: !3, line: 625, type: !257)
!1367 = !DILocalVariable(name: "i", scope: !1364, file: !3, line: 626, type: !54)
!1368 = !DILocation(line: 618, column: 30, scope: !1355, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 775, column: 18, scope: !63)
!1370 = !DILocation(line: 618, column: 60, scope: !1355, inlinedAt: !1369)
!1371 = !DILocation(line: 620, column: 7, scope: !1355, inlinedAt: !1369)
!1372 = !DILocation(line: 622, column: 18, scope: !1365, inlinedAt: !1369)
!1373 = !DILocation(line: 622, column: 32, scope: !1365, inlinedAt: !1369)
!1374 = !DILocation(line: 622, column: 39, scope: !1365, inlinedAt: !1369)
!1375 = !DILocation(line: 622, column: 7, scope: !1355, inlinedAt: !1369)
!1376 = !DILocation(line: 629, column: 15, scope: !1377, inlinedAt: !1369)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 629, column: 13)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 628, column: 7)
!1379 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 628, column: 7)
!1380 = !DILocation(line: 629, column: 26, scope: !1377, inlinedAt: !1369)
!1381 = !DILocation(line: 624, column: 11, scope: !1364, inlinedAt: !1369)
!1382 = !DILocation(line: 625, column: 17, scope: !1364, inlinedAt: !1369)
!1383 = !DILocation(line: 626, column: 14, scope: !1364, inlinedAt: !1369)
!1384 = !DILocation(line: 629, column: 13, scope: !1378, inlinedAt: !1369)
!1385 = !DILocation(line: 631, column: 17, scope: !1386, inlinedAt: !1369)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 631, column: 17)
!1387 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 630, column: 11)
!1388 = !{!1325, !1189, i64 32}
!1389 = !DILocation(line: 631, column: 17, scope: !1387, inlinedAt: !1369)
!1390 = !DILocation(line: 632, column: 46, scope: !1386, inlinedAt: !1369)
!1391 = !{!1325, !1156, i64 56}
!1392 = !DILocation(line: 632, column: 29, scope: !1386, inlinedAt: !1369)
!1393 = !DILocation(line: 632, column: 15, scope: !1386, inlinedAt: !1369)
!1394 = !DILocation(line: 628, column: 32, scope: !1378, inlinedAt: !1369)
!1395 = !DILocation(line: 628, column: 21, scope: !1378, inlinedAt: !1369)
!1396 = !DILocation(line: 628, column: 7, scope: !1379, inlinedAt: !1369)
!1397 = distinct !{!1397, !1398, !1399}
!1398 = !DILocation(line: 628, column: 7, scope: !1379)
!1399 = !DILocation(line: 635, column: 11, scope: !1379)
!1400 = !DILocation(line: 637, column: 17, scope: !1401, inlinedAt: !1369)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 637, column: 7)
!1402 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 637, column: 7)
!1403 = !DILocation(line: 637, column: 7, scope: !1402, inlinedAt: !1369)
!1404 = !DILocation(line: 638, column: 14, scope: !1401, inlinedAt: !1369)
!1405 = !DILocation(line: 637, column: 49, scope: !1401, inlinedAt: !1369)
!1406 = distinct !{!1406, !1407, !1408}
!1407 = !DILocation(line: 637, column: 7, scope: !1402)
!1408 = !DILocation(line: 638, column: 14, scope: !1402)
!1409 = !DILocation(line: 639, column: 17, scope: !1410, inlinedAt: !1369)
!1410 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 639, column: 11)
!1411 = !DILocation(line: 639, column: 11, scope: !1364, inlinedAt: !1369)
!1412 = !DILocation(line: 641, column: 5, scope: !1364, inlinedAt: !1369)
!1413 = !DILocation(line: 775, column: 16, scope: !63)
!1414 = !DILocation(line: 650, column: 8, scope: !63)
!1415 = !DILocation(line: 777, column: 7, scope: !63)
!1416 = !DILocation(line: 781, column: 12, scope: !244)
!1417 = !DILocation(line: 782, column: 7, scope: !244)
!1418 = !DILocation(line: 782, column: 26, scope: !244)
!1419 = !DILocation(line: 783, column: 25, scope: !244)
!1420 = !DILocation(line: 783, column: 13, scope: !244)
!1421 = !DILocation(line: 784, column: 12, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !244, file: !3, line: 784, column: 11)
!1423 = !DILocation(line: 784, column: 11, scope: !244)
!1424 = !DILocation(line: 786, column: 19, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 785, column: 9)
!1426 = !{!1115, !1115, i64 0}
!1427 = !DILocation(line: 786, column: 11, scope: !1425)
!1428 = !DILocation(line: 791, column: 25, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 787, column: 13)
!1430 = !DILocation(line: 791, column: 32, scope: !1429)
!1431 = !DILocation(line: 792, column: 22, scope: !1429)
!1432 = !DILocation(line: 791, column: 15, scope: !1429)
!1433 = !DILocation(line: 838, column: 5, scope: !245)
!1434 = !DILocation(line: 844, column: 10, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !63, file: !3, line: 844, column: 7)
!1436 = !DILocation(line: 796, column: 15, scope: !1429)
!1437 = !DILocation(line: 798, column: 15, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 798, column: 15)
!1439 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 798, column: 15)
!1440 = !DILocation(line: 801, column: 22, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !244, file: !3, line: 801, column: 11)
!1442 = !DILocation(line: 801, column: 25, scope: !1441)
!1443 = !DILocation(line: 801, column: 49, scope: !1441)
!1444 = !DILocation(line: 801, column: 52, scope: !1441)
!1445 = !DILocation(line: 801, column: 11, scope: !244)
!1446 = !DILocation(line: 805, column: 24, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 802, column: 9)
!1448 = !DILocation(line: 807, column: 18, scope: !1447)
!1449 = !DILocation(line: 805, column: 11, scope: !1447)
!1450 = !DILocation(line: 809, column: 9, scope: !1447)
!1451 = !DILocation(line: 811, column: 12, scope: !253)
!1452 = !DILocation(line: 811, column: 11, scope: !244)
!1453 = !DILocation(line: 817, column: 15, scope: !252)
!1454 = !DILocation(line: 818, column: 32, scope: !251)
!1455 = !DILocation(line: 818, column: 13, scope: !251)
!1456 = !DILocation(line: 824, column: 47, scope: !250)
!1457 = !DILocation(line: 824, column: 33, scope: !250)
!1458 = !DILocation(line: 825, column: 42, scope: !250)
!1459 = !DILocation(line: 826, column: 35, scope: !250)
!1460 = !DILocation(line: 825, column: 15, scope: !250)
!1461 = !DILocation(line: 831, column: 11, scope: !244)
!1462 = !DILocation(line: 834, column: 36, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !244, file: !3, line: 831, column: 11)
!1464 = !DILocalVariable(name: "file", arg: 1, scope: !1465, file: !3, line: 554, type: !288)
!1465 = distinct !DISubprogram(name: "wc_file", scope: !3, file: !3, line: 554, type: !1466, isLocal: true, isDefinition: true, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!71, !288, !77}
!1468 = !{!1464, !1469, !1470, !1473}
!1469 = !DILocalVariable(name: "fstatus", arg: 2, scope: !1465, file: !3, line: 554, type: !77)
!1470 = !DILocalVariable(name: "fd", scope: !1471, file: !3, line: 564, type: !57)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 563, column: 5)
!1472 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 556, column: 7)
!1473 = !DILocalVariable(name: "ok", scope: !1474, file: !3, line: 572, type: !71)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 571, column: 9)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 565, column: 11)
!1476 = !DILocation(line: 554, column: 22, scope: !1465, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 834, column: 15, scope: !1463)
!1478 = !DILocation(line: 554, column: 44, scope: !1465, inlinedAt: !1477)
!1479 = !DILocation(line: 556, column: 17, scope: !1472, inlinedAt: !1477)
!1480 = !DILocation(line: 556, column: 7, scope: !1465, inlinedAt: !1477)
!1481 = !DILocation(line: 560, column: 14, scope: !1482, inlinedAt: !1477)
!1482 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 557, column: 5)
!1483 = !DILocation(line: 560, column: 7, scope: !1482, inlinedAt: !1477)
!1484 = !DILocation(line: 564, column: 16, scope: !1471, inlinedAt: !1477)
!1485 = !DILocation(line: 564, column: 11, scope: !1471, inlinedAt: !1477)
!1486 = !DILocation(line: 565, column: 14, scope: !1475, inlinedAt: !1477)
!1487 = !DILocation(line: 565, column: 11, scope: !1471, inlinedAt: !1477)
!1488 = !DILocation(line: 567, column: 21, scope: !1489, inlinedAt: !1477)
!1489 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 566, column: 9)
!1490 = !DILocation(line: 567, column: 34, scope: !1489, inlinedAt: !1477)
!1491 = !DILocation(line: 567, column: 11, scope: !1489, inlinedAt: !1477)
!1492 = !DILocation(line: 568, column: 11, scope: !1489, inlinedAt: !1477)
!1493 = !DILocation(line: 572, column: 21, scope: !1474, inlinedAt: !1477)
!1494 = !DILocation(line: 573, column: 15, scope: !1495, inlinedAt: !1477)
!1495 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 573, column: 15)
!1496 = !DILocation(line: 573, column: 26, scope: !1495, inlinedAt: !1477)
!1497 = !DILocation(line: 573, column: 15, scope: !1474, inlinedAt: !1477)
!1498 = !DILocation(line: 575, column: 25, scope: !1499, inlinedAt: !1477)
!1499 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 574, column: 13)
!1500 = !DILocation(line: 575, column: 38, scope: !1499, inlinedAt: !1477)
!1501 = !DILocation(line: 575, column: 15, scope: !1499, inlinedAt: !1477)
!1502 = !DILocation(line: 576, column: 15, scope: !1499, inlinedAt: !1477)
!1503 = !DILocation(line: 834, column: 15, scope: !1463)
!1504 = !DILocation(line: 834, column: 12, scope: !1463)
!1505 = !DILocation(line: 836, column: 11, scope: !244)
!1506 = !DILocation(line: 837, column: 27, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !244, file: !3, line: 836, column: 11)
!1508 = !DILocation(line: 837, column: 9, scope: !1507)
!1509 = !DILocation(line: 779, column: 23, scope: !245)
!1510 = distinct !{!1510, !1511, !1512}
!1511 = !DILocation(line: 779, column: 3, scope: !246)
!1512 = !DILocation(line: 838, column: 5, scope: !246)
!1513 = !DILocation(line: 844, column: 7, scope: !1435)
!1514 = !DILocation(line: 844, column: 28, scope: !1435)
!1515 = !DILocation(line: 844, column: 50, scope: !1435)
!1516 = !DILocation(line: 844, column: 7, scope: !63)
!1517 = !DILocation(line: 554, column: 22, scope: !1465, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 845, column: 11, scope: !1435)
!1519 = !DILocation(line: 554, column: 44, scope: !1465, inlinedAt: !1518)
!1520 = !DILocation(line: 560, column: 14, scope: !1482, inlinedAt: !1518)
!1521 = !DILocation(line: 845, column: 11, scope: !1435)
!1522 = !DILocation(line: 845, column: 8, scope: !1435)
!1523 = !DILocation(line: 845, column: 5, scope: !1435)
!1524 = !DILocation(line: 847, column: 7, scope: !63)
!1525 = !DILocation(line: 848, column: 5, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !63, file: !3, line: 847, column: 7)
!1527 = !DILocation(line: 850, column: 11, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !63, file: !3, line: 850, column: 7)
!1529 = !DILocation(line: 850, column: 9, scope: !1528)
!1530 = !DILocation(line: 850, column: 7, scope: !63)
!1531 = !DILocation(line: 851, column: 19, scope: !1528)
!1532 = !DILocation(line: 851, column: 32, scope: !1528)
!1533 = !DILocation(line: 851, column: 45, scope: !1528)
!1534 = !DILocation(line: 851, column: 58, scope: !1528)
!1535 = !DILocation(line: 852, column: 19, scope: !1528)
!1536 = !DILocation(line: 852, column: 36, scope: !1528)
!1537 = !DILocation(line: 851, column: 5, scope: !1528)
!1538 = !DILocation(line: 854, column: 3, scope: !63)
!1539 = !DILocation(line: 856, column: 3, scope: !63)
!1540 = !DILocation(line: 858, column: 23, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !63, file: !3, line: 858, column: 7)
!1542 = !DILocation(line: 858, column: 26, scope: !1541)
!1543 = !DILocation(line: 858, column: 47, scope: !1541)
!1544 = !DILocation(line: 858, column: 7, scope: !63)
!1545 = !DILocation(line: 859, column: 5, scope: !1541)
!1546 = !DILocation(line: 861, column: 10, scope: !63)
!1547 = !DILocation(line: 862, column: 1, scope: !63)
!1548 = distinct !DISubprogram(name: "wc", scope: !3, file: !3, line: 198, type: !1549, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1553)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!71, !57, !288, !77, !1551}
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1552, line: 57, baseType: !102)
!1552 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1576, !1579, !1582, !1585, !1587, !1588, !1589, !1592, !1593, !1609, !1610, !1611, !1613, !1614, !1617, !1618, !1622, !1624, !1625}
!1554 = !DILocalVariable(name: "fd", arg: 1, scope: !1548, file: !3, line: 198, type: !57)
!1555 = !DILocalVariable(name: "file_x", arg: 2, scope: !1548, file: !3, line: 198, type: !288)
!1556 = !DILocalVariable(name: "fstatus", arg: 3, scope: !1548, file: !3, line: 198, type: !77)
!1557 = !DILocalVariable(name: "current_pos", arg: 4, scope: !1548, file: !3, line: 198, type: !1551)
!1558 = !DILocalVariable(name: "ok", scope: !1548, file: !3, line: 200, type: !71)
!1559 = !DILocalVariable(name: "buf", scope: !1548, file: !3, line: 201, type: !1560)
!1560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 131080, elements: !1561)
!1561 = !{!1562}
!1562 = !DISubrange(count: 16385)
!1563 = !DILocalVariable(name: "bytes_read", scope: !1548, file: !3, line: 202, type: !54)
!1564 = !DILocalVariable(name: "lines", scope: !1548, file: !3, line: 203, type: !257)
!1565 = !DILocalVariable(name: "words", scope: !1548, file: !3, line: 203, type: !257)
!1566 = !DILocalVariable(name: "chars", scope: !1548, file: !3, line: 203, type: !257)
!1567 = !DILocalVariable(name: "bytes", scope: !1548, file: !3, line: 203, type: !257)
!1568 = !DILocalVariable(name: "linelength", scope: !1548, file: !3, line: 203, type: !257)
!1569 = !DILocalVariable(name: "count_bytes", scope: !1548, file: !3, line: 204, type: !71)
!1570 = !DILocalVariable(name: "count_chars", scope: !1548, file: !3, line: 204, type: !71)
!1571 = !DILocalVariable(name: "count_complicated", scope: !1548, file: !3, line: 204, type: !71)
!1572 = !DILocalVariable(name: "file", scope: !1548, file: !3, line: 205, type: !288)
!1573 = !DILocalVariable(name: "skip_read", scope: !1574, file: !3, line: 241, type: !71)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 240, column: 5)
!1575 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 239, column: 7)
!1576 = !DILocalVariable(name: "end_pos", scope: !1577, file: !3, line: 252, type: !54)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 251, column: 9)
!1578 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 249, column: 11)
!1579 = !DILocalVariable(name: "hi_pos", scope: !1580, file: !3, line: 271, type: !1551)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 270, column: 13)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 256, column: 15)
!1582 = !DILocalVariable(name: "long_lines", scope: !1583, file: !3, line: 297, type: !71)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 294, column: 5)
!1584 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 293, column: 12)
!1585 = !DILocalVariable(name: "p", scope: !1586, file: !3, line: 309, type: !51)
!1586 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 299, column: 9)
!1587 = !DILocalVariable(name: "end", scope: !1586, file: !3, line: 310, type: !51)
!1588 = !DILocalVariable(name: "plines", scope: !1586, file: !3, line: 311, type: !257)
!1589 = !DILocalVariable(name: "in_word", scope: !1590, file: !3, line: 345, type: !71)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 344, column: 5)
!1591 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 343, column: 12)
!1592 = !DILocalVariable(name: "linepos", scope: !1590, file: !3, line: 346, type: !257)
!1593 = !DILocalVariable(name: "state", scope: !1590, file: !3, line: 347, type: !1594)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1595, line: 6, baseType: !1596)
!1595 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1597, line: 21, baseType: !1598)
!1597 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1597, line: 13, size: 64, elements: !1599)
!1599 = !{!1600, !1601}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1598, file: !1597, line: 15, baseType: !57, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1598, file: !1597, line: 20, baseType: !1602, size: 32, offset: 32)
!1602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1598, file: !1597, line: 16, size: 32, elements: !1603)
!1603 = !{!1604, !1605}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1602, file: !1597, line: 18, baseType: !94, size: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1602, file: !1597, line: 19, baseType: !1606, size: 32)
!1606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 32, elements: !1607)
!1607 = !{!1608}
!1608 = !DISubrange(count: 4)
!1609 = !DILocalVariable(name: "in_shift", scope: !1590, file: !3, line: 348, type: !71)
!1610 = !DILocalVariable(name: "prev", scope: !1590, file: !3, line: 357, type: !54)
!1611 = !DILocalVariable(name: "p", scope: !1612, file: !3, line: 364, type: !288)
!1612 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 363, column: 9)
!1613 = !DILocalVariable(name: "backup_state", scope: !1612, file: !3, line: 366, type: !1594)
!1614 = !DILocalVariable(name: "wide_char", scope: !1615, file: !3, line: 380, type: !1616)
!1615 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 379, column: 13)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !55, line: 90, baseType: !57)
!1617 = !DILocalVariable(name: "n", scope: !1615, file: !3, line: 381, type: !54)
!1618 = !DILocalVariable(name: "width", scope: !1619, file: !3, line: 450, type: !57)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 449, column: 21)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 448, column: 23)
!1621 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 426, column: 17)
!1622 = !DILocalVariable(name: "in_word", scope: !1623, file: !3, line: 483, type: !71)
!1623 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 482, column: 5)
!1624 = !DILocalVariable(name: "linepos", scope: !1623, file: !3, line: 484, type: !257)
!1625 = !DILocalVariable(name: "p", scope: !1626, file: !3, line: 488, type: !288)
!1626 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 487, column: 9)
!1627 = !DILocation(line: 198, column: 9, scope: !1548)
!1628 = !DILocation(line: 198, column: 25, scope: !1548)
!1629 = !DILocation(line: 198, column: 49, scope: !1548)
!1630 = !DILocation(line: 198, column: 64, scope: !1548)
!1631 = !DILocation(line: 200, column: 8, scope: !1548)
!1632 = !DILocation(line: 201, column: 3, scope: !1548)
!1633 = !DILocation(line: 201, column: 8, scope: !1548)
!1634 = !DILocation(line: 205, column: 22, scope: !1548)
!1635 = !DILocation(line: 205, column: 40, scope: !1548)
!1636 = !DILocation(line: 205, column: 15, scope: !1548)
!1637 = !DILocation(line: 203, column: 41, scope: !1548)
!1638 = !DILocation(line: 203, column: 34, scope: !1548)
!1639 = !DILocation(line: 203, column: 27, scope: !1548)
!1640 = !DILocation(line: 203, column: 20, scope: !1548)
!1641 = !DILocation(line: 203, column: 13, scope: !1548)
!1642 = !DILocation(line: 212, column: 7, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 212, column: 7)
!1644 = !DILocation(line: 212, column: 18, scope: !1643)
!1645 = !DILocation(line: 212, column: 7, scope: !1548)
!1646 = !DILocation(line: 215, column: 19, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 213, column: 5)
!1648 = !DILocation(line: 204, column: 21, scope: !1548)
!1649 = !DILocation(line: 216, column: 5, scope: !1647)
!1650 = !DILocation(line: 220, column: 33, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 219, column: 5)
!1652 = !DILocation(line: 223, column: 35, scope: !1548)
!1653 = !DILocation(line: 226, column: 23, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 226, column: 7)
!1655 = !DILocation(line: 226, column: 20, scope: !1654)
!1656 = !DILocation(line: 226, column: 50, scope: !1654)
!1657 = !DILocation(line: 227, column: 5, scope: !1654)
!1658 = !DILocation(line: 239, column: 51, scope: !1575)
!1659 = !DILocation(line: 239, column: 19, scope: !1575)
!1660 = !DILocation(line: 241, column: 12, scope: !1574)
!1661 = !DILocation(line: 243, column: 24, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 243, column: 11)
!1663 = !DILocation(line: 243, column: 13, scope: !1662)
!1664 = !DILocation(line: 243, column: 11, scope: !1574)
!1665 = !DILocation(line: 244, column: 48, scope: !1662)
!1666 = !DILocation(line: 463, column: 1, scope: !1216, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 244, column: 27, scope: !1662)
!1668 = !DILocation(line: 465, column: 10, scope: !1216, inlinedAt: !1667)
!1669 = !DILocation(line: 244, column: 25, scope: !1662)
!1670 = !DILocation(line: 244, column: 9, scope: !1662)
!1671 = !DILocation(line: 249, column: 22, scope: !1578)
!1672 = !DILocation(line: 249, column: 13, scope: !1578)
!1673 = !DILocation(line: 249, column: 29, scope: !1578)
!1674 = !DILocalVariable(name: "sb", arg: 1, scope: !1675, file: !285, line: 701, type: !1678)
!1675 = distinct !DISubprogram(name: "usable_st_size", scope: !285, file: !285, line: 701, type: !1676, isLocal: true, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1680)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!71, !1678}
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!1680 = !{!1674}
!1681 = !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)
!1682 = !DILocation(line: 701, column: 36, scope: !1675, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 249, column: 32, scope: !1578)
!1684 = !DILocation(line: 703, column: 11, scope: !1675, inlinedAt: !1683)
!1685 = !DILocation(line: 703, column: 33, scope: !1675, inlinedAt: !1683)
!1686 = !DILocation(line: 250, column: 31, scope: !1578)
!1687 = !DILocation(line: 250, column: 16, scope: !1578)
!1688 = !DILocation(line: 249, column: 11, scope: !1574)
!1689 = !DILocation(line: 252, column: 18, scope: !1577)
!1690 = !DILocation(line: 253, column: 27, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 253, column: 15)
!1692 = !DILocation(line: 253, column: 15, scope: !1577)
!1693 = !DILocation(line: 254, column: 27, scope: !1691)
!1694 = !DILocation(line: 254, column: 13, scope: !1691)
!1695 = !DILocation(line: 256, column: 25, scope: !1581)
!1696 = !DILocation(line: 256, column: 23, scope: !1581)
!1697 = !DILocation(line: 256, column: 15, scope: !1577)
!1698 = !DILocation(line: 271, column: 51, scope: !1580)
!1699 = !{!1325, !1156, i64 64}
!1700 = !DILocation(line: 271, column: 48, scope: !1580)
!1701 = !DILocation(line: 271, column: 38, scope: !1580)
!1702 = !DILocation(line: 271, column: 21, scope: !1580)
!1703 = !DILocation(line: 272, column: 21, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 272, column: 19)
!1705 = !DILocation(line: 272, column: 51, scope: !1704)
!1706 = !DILocation(line: 272, column: 36, scope: !1704)
!1707 = !DILocation(line: 273, column: 27, scope: !1704)
!1708 = !DILocation(line: 273, column: 24, scope: !1704)
!1709 = !DILocation(line: 274, column: 32, scope: !1704)
!1710 = !DILocation(line: 272, column: 19, scope: !1580)
!1711 = !DILocation(line: 266, column: 31, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 257, column: 13)
!1713 = !DILocation(line: 266, column: 59, scope: !1712)
!1714 = !DILocation(line: 266, column: 23, scope: !1712)
!1715 = !DILocation(line: 278, column: 11, scope: !1574)
!1716 = !DILocation(line: 280, column: 11, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 279, column: 9)
!1718 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 278, column: 11)
!1719 = !DILocation(line: 281, column: 11, scope: !1717)
!1720 = !DILocation(line: 281, column: 32, scope: !1717)
!1721 = !DILocation(line: 202, column: 10, scope: !1548)
!1722 = !DILocation(line: 285, column: 29, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 284, column: 17)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 283, column: 19)
!1725 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 282, column: 13)
!1726 = !DILocation(line: 285, column: 42, scope: !1723)
!1727 = !DILocation(line: 285, column: 19, scope: !1723)
!1728 = !DILocation(line: 287, column: 19, scope: !1723)
!1729 = !DILocation(line: 289, column: 21, scope: !1725)
!1730 = distinct !{!1730, !1719, !1731}
!1731 = !DILocation(line: 290, column: 13, scope: !1717)
!1732 = !DILocation(line: 293, column: 25, scope: !1584)
!1733 = !DILocation(line: 298, column: 28, scope: !1583)
!1734 = !DILocation(line: 298, column: 7, scope: !1583)
!1735 = !DILocation(line: 302, column: 25, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 301, column: 13)
!1737 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 300, column: 15)
!1738 = !DILocation(line: 302, column: 38, scope: !1736)
!1739 = !DILocation(line: 302, column: 15, scope: !1736)
!1740 = !DILocation(line: 304, column: 15, scope: !1736)
!1741 = !DILocation(line: 307, column: 17, scope: !1586)
!1742 = !DILocation(line: 309, column: 17, scope: !1586)
!1743 = !DILocation(line: 310, column: 25, scope: !1586)
!1744 = !DILocation(line: 310, column: 17, scope: !1586)
!1745 = !DILocation(line: 311, column: 21, scope: !1586)
!1746 = !DILocation(line: 313, column: 15, scope: !1586)
!1747 = !DILocation(line: 317, column: 28, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 314, column: 13)
!1749 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 313, column: 15)
!1750 = !DILocation(line: 317, column: 26, scope: !1748)
!1751 = !DILocation(line: 317, column: 31, scope: !1748)
!1752 = !DILocation(line: 317, column: 23, scope: !1748)
!1753 = !DILocation(line: 316, column: 15, scope: !1748)
!1754 = distinct !{!1754, !1755}
!1755 = !{!"llvm.loop.unroll.disable"}
!1756 = !DILocation(line: 316, column: 24, scope: !1748)
!1757 = distinct !{!1757, !1753, !1758}
!1758 = !DILocation(line: 317, column: 34, scope: !1748)
!1759 = !DILocation(line: 322, column: 48, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 320, column: 13)
!1761 = !DILocation(line: 322, column: 27, scope: !1760)
!1762 = !DILocation(line: 322, column: 15, scope: !1760)
!1763 = !DILocation(line: 324, column: 19, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 323, column: 17)
!1765 = !DILocation(line: 325, column: 19, scope: !1764)
!1766 = distinct !{!1766, !1762, !1767}
!1767 = !DILocation(line: 326, column: 17, scope: !1760)
!1768 = !DILocation(line: 335, column: 21, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 335, column: 15)
!1770 = !DILocation(line: 335, column: 44, scope: !1769)
!1771 = !DILocation(line: 335, column: 30, scope: !1769)
!1772 = distinct !{!1772, !1734, !1773}
!1773 = !DILocation(line: 339, column: 9, scope: !1583)
!1774 = !DILocation(line: 343, column: 12, scope: !1591)
!1775 = !DILocation(line: 343, column: 23, scope: !1591)
!1776 = !DILocation(line: 343, column: 12, scope: !1584)
!1777 = !DILocation(line: 486, column: 28, scope: !1623)
!1778 = !DILocation(line: 345, column: 12, scope: !1590)
!1779 = !DILocation(line: 346, column: 17, scope: !1590)
!1780 = !DILocation(line: 347, column: 7, scope: !1590)
!1781 = !DILocation(line: 347, column: 17, scope: !1590)
!1782 = !DILocation(line: 348, column: 12, scope: !1590)
!1783 = !DILocation(line: 357, column: 14, scope: !1590)
!1784 = !DILocation(line: 362, column: 7, scope: !1590)
!1785 = !DILocation(line: 362, column: 47, scope: !1590)
!1786 = !DILocation(line: 362, column: 67, scope: !1590)
!1787 = !DILocation(line: 362, column: 28, scope: !1590)
!1788 = !DILocation(line: 375, column: 17, scope: !1612)
!1789 = !DILocation(line: 364, column: 23, scope: !1612)
!1790 = !DILocation(line: 377, column: 22, scope: !1612)
!1791 = !DILocation(line: 378, column: 11, scope: !1612)
!1792 = distinct !{!1792, !1791, !1793}
!1793 = !DILocation(line: 460, column: 32, scope: !1612)
!1794 = !DILocation(line: 380, column: 15, scope: !1615)
!1795 = !DILocation(line: 383, column: 20, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 383, column: 19)
!1797 = !DILocation(line: 383, column: 29, scope: !1796)
!1798 = !DILocation(line: 383, column: 42, scope: !1796)
!1799 = !DILocalVariable(name: "c", arg: 1, scope: !1800, file: !1801, line: 316, type: !52)
!1800 = distinct !DISubprogram(name: "is_basic", scope: !1801, file: !1801, line: 316, type: !1802, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1804)
!1801 = !DIFile(filename: "./lib/mbchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!71, !52}
!1804 = !{!1799}
!1805 = !DILocation(line: 316, column: 16, scope: !1800, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 383, column: 32, scope: !1796)
!1807 = !DILocation(line: 318, column: 27, scope: !1800, inlinedAt: !1806)
!1808 = !DILocation(line: 318, column: 45, scope: !1800, inlinedAt: !1806)
!1809 = !DILocation(line: 318, column: 11, scope: !1800, inlinedAt: !1806)
!1810 = !DILocation(line: 318, column: 73, scope: !1800, inlinedAt: !1806)
!1811 = !DILocation(line: 318, column: 10, scope: !1800, inlinedAt: !1806)
!1812 = !DILocation(line: 383, column: 19, scope: !1615)
!1813 = !DILocation(line: 381, column: 22, scope: !1615)
!1814 = !DILocation(line: 388, column: 31, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 384, column: 17)
!1816 = !DILocation(line: 380, column: 23, scope: !1615)
!1817 = !DILocation(line: 388, column: 29, scope: !1815)
!1818 = !DILocation(line: 389, column: 17, scope: !1815)
!1819 = !DILocation(line: 394, column: 34, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 391, column: 17)
!1821 = !DILocation(line: 396, column: 23, scope: !1820)
!1822 = !DILocation(line: 397, column: 23, scope: !1820)
!1823 = !DILocation(line: 400, column: 31, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 398, column: 21)
!1825 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 397, column: 23)
!1826 = !DILocation(line: 459, column: 13, scope: !1612)
!1827 = !DILocation(line: 460, column: 29, scope: !1612)
!1828 = !DILocation(line: 463, column: 15, scope: !1612)
!1829 = distinct !{!1829, !1784, !1830}
!1830 = !DILocation(line: 475, column: 9, scope: !1590)
!1831 = !DILocation(line: 410, column: 24, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 405, column: 21)
!1833 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 404, column: 23)
!1834 = !DILocation(line: 411, column: 33, scope: !1832)
!1835 = !DILocation(line: 412, column: 23, scope: !1832)
!1836 = !DILocation(line: 414, column: 23, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 414, column: 23)
!1838 = !DILocation(line: 414, column: 23, scope: !1820)
!1839 = !DILocation(line: 416, column: 25, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 416, column: 23)
!1841 = !DILocation(line: 416, column: 23, scope: !1820)
!1842 = !DILocation(line: 418, column: 33, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 417, column: 21)
!1844 = !DILocation(line: 422, column: 17, scope: !1615)
!1845 = !DILocation(line: 423, column: 26, scope: !1615)
!1846 = !DILocation(line: 424, column: 20, scope: !1615)
!1847 = !DILocation(line: 425, column: 15, scope: !1615)
!1848 = !DILocation(line: 425, column: 23, scope: !1615)
!1849 = !DILocation(line: 428, column: 24, scope: !1621)
!1850 = !DILocation(line: 428, column: 19, scope: !1621)
!1851 = !DILocation(line: 432, column: 31, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 432, column: 23)
!1853 = !DILocation(line: 432, column: 23, scope: !1621)
!1854 = !DILocation(line: 435, column: 19, scope: !1621)
!1855 = !DILocation(line: 437, column: 43, scope: !1621)
!1856 = !DILocation(line: 437, column: 32, scope: !1621)
!1857 = !DILocation(line: 437, column: 27, scope: !1621)
!1858 = !DILocation(line: 438, column: 19, scope: !1621)
!1859 = !DILocation(line: 440, column: 26, scope: !1621)
!1860 = !DILocation(line: 440, column: 19, scope: !1621)
!1861 = !DILocation(line: 444, column: 28, scope: !1621)
!1862 = !DILocation(line: 444, column: 25, scope: !1621)
!1863 = !DILocation(line: 446, column: 19, scope: !1621)
!1864 = !DILocation(line: 448, column: 23, scope: !1620)
!1865 = !DILocation(line: 448, column: 23, scope: !1621)
!1866 = !DILocation(line: 450, column: 44, scope: !1619)
!1867 = !DILocation(line: 450, column: 35, scope: !1619)
!1868 = !DILocation(line: 450, column: 27, scope: !1619)
!1869 = !DILocation(line: 451, column: 27, scope: !1619)
!1870 = !DILocation(line: 453, column: 37, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 453, column: 27)
!1872 = !DILocation(line: 453, column: 27, scope: !1871)
!1873 = !DILocation(line: 465, column: 30, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 465, column: 19)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 464, column: 13)
!1876 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 463, column: 15)
!1877 = !DILocation(line: 468, column: 20, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 466, column: 17)
!1879 = !DILocation(line: 465, column: 19, scope: !1875)
!1880 = !DILocation(line: 471, column: 15, scope: !1875)
!1881 = !DILocation(line: 472, column: 13, scope: !1875)
!1882 = !DILocation(line: 370, column: 25, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 369, column: 13)
!1884 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 368, column: 15)
!1885 = !DILocation(line: 370, column: 38, scope: !1883)
!1886 = !DILocation(line: 370, column: 15, scope: !1883)
!1887 = !DILocation(line: 476, column: 19, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 476, column: 11)
!1889 = !DILocation(line: 476, column: 11, scope: !1590)
!1890 = !DILocation(line: 478, column: 16, scope: !1590)
!1891 = !DILocation(line: 478, column: 13, scope: !1590)
!1892 = !DILocation(line: 479, column: 5, scope: !1591)
!1893 = !DILocation(line: 479, column: 5, scope: !1590)
!1894 = !DILocation(line: 484, column: 17, scope: !1623)
!1895 = !DILocation(line: 483, column: 12, scope: !1623)
!1896 = !DILocation(line: 486, column: 7, scope: !1623)
!1897 = distinct !{!1897, !1898, !1899}
!1898 = !DILocation(line: 497, column: 11, scope: !1626)
!1899 = !DILocation(line: 532, column: 30, scope: !1626)
!1900 = !DILocation(line: 499, column: 25, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 498, column: 13)
!1902 = !DILocation(line: 488, column: 23, scope: !1626)
!1903 = !DILocation(line: 499, column: 23, scope: !1901)
!1904 = !DILocation(line: 499, column: 15, scope: !1901)
!1905 = !DILocation(line: 502, column: 24, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 500, column: 17)
!1907 = !DILocation(line: 502, column: 19, scope: !1906)
!1908 = !DILocation(line: 506, column: 31, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 506, column: 23)
!1910 = !DILocation(line: 506, column: 23, scope: !1906)
!1911 = !DILocation(line: 509, column: 19, scope: !1906)
!1912 = !DILocation(line: 511, column: 43, scope: !1906)
!1913 = !DILocation(line: 511, column: 32, scope: !1906)
!1914 = !DILocation(line: 511, column: 27, scope: !1906)
!1915 = !DILocation(line: 512, column: 19, scope: !1906)
!1916 = !DILocation(line: 514, column: 26, scope: !1906)
!1917 = !DILocation(line: 514, column: 19, scope: !1906)
!1918 = !DILocation(line: 518, column: 28, scope: !1906)
!1919 = !DILocation(line: 518, column: 25, scope: !1906)
!1920 = !DILocation(line: 520, column: 19, scope: !1906)
!1921 = !DILocation(line: 522, column: 23, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 522, column: 23)
!1923 = !{!1924, !1924, i64 0}
!1924 = !{!"short", !1115, i64 0}
!1925 = !DILocation(line: 522, column: 23, scope: !1906)
!1926 = !DILocation(line: 524, column: 30, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 523, column: 21)
!1928 = !DILocation(line: 525, column: 27, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 525, column: 27)
!1930 = !DILocation(line: 525, column: 27, scope: !1927)
!1931 = !DILocation(line: 532, column: 18, scope: !1626)
!1932 = !DILocation(line: 531, column: 13, scope: !1901)
!1933 = !DILocation(line: 491, column: 25, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 490, column: 13)
!1935 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 489, column: 15)
!1936 = !DILocation(line: 491, column: 38, scope: !1934)
!1937 = !DILocation(line: 491, column: 15, scope: !1934)
!1938 = !DILocation(line: 496, column: 17, scope: !1626)
!1939 = distinct !{!1939, !1896, !1940}
!1940 = !DILocation(line: 533, column: 9, scope: !1623)
!1941 = !DILocation(line: 534, column: 19, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 534, column: 11)
!1943 = !DILocation(line: 534, column: 11, scope: !1623)
!1944 = !DILocation(line: 536, column: 16, scope: !1623)
!1945 = !DILocation(line: 536, column: 13, scope: !1623)
!1946 = !DILocation(line: 539, column: 7, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 539, column: 7)
!1948 = !DILocation(line: 539, column: 21, scope: !1947)
!1949 = !DILocation(line: 539, column: 19, scope: !1947)
!1950 = !DILocation(line: 539, column: 7, scope: !1548)
!1951 = !DILocation(line: 542, column: 3, scope: !1548)
!1952 = !DILocation(line: 543, column: 15, scope: !1548)
!1953 = !DILocation(line: 544, column: 15, scope: !1548)
!1954 = !DILocation(line: 545, column: 15, scope: !1548)
!1955 = !DILocation(line: 546, column: 15, scope: !1548)
!1956 = !DILocation(line: 547, column: 20, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 547, column: 7)
!1958 = !DILocation(line: 547, column: 18, scope: !1957)
!1959 = !DILocation(line: 547, column: 7, scope: !1548)
!1960 = !DILocation(line: 548, column: 21, scope: !1957)
!1961 = !DILocation(line: 548, column: 5, scope: !1957)
!1962 = !DILocation(line: 550, column: 10, scope: !1548)
!1963 = !DILocation(line: 551, column: 1, scope: !1548)
!1964 = !DILocation(line: 550, column: 3, scope: !1548)
!1965 = !DILocation(line: 153, column: 25, scope: !320)
!1966 = !DILocation(line: 154, column: 25, scope: !320)
!1967 = !DILocation(line: 155, column: 25, scope: !320)
!1968 = !DILocation(line: 156, column: 25, scope: !320)
!1969 = !DILocation(line: 157, column: 25, scope: !320)
!1970 = !DILocation(line: 158, column: 27, scope: !320)
!1971 = !DILocation(line: 162, column: 3, scope: !320)
!1972 = !DILocation(line: 162, column: 8, scope: !320)
!1973 = !DILocation(line: 164, column: 7, scope: !320)
!1974 = !DILocation(line: 166, column: 7, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 165, column: 5)
!1976 = distinct !DILexicalBlock(scope: !320, file: !3, line: 164, column: 7)
!1977 = !DILocation(line: 168, column: 5, scope: !1975)
!1978 = !DILocation(line: 161, column: 15, scope: !320)
!1979 = !DILocation(line: 169, column: 7, scope: !320)
!1980 = !DILocation(line: 171, column: 7, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 170, column: 5)
!1982 = distinct !DILexicalBlock(scope: !320, file: !3, line: 169, column: 7)
!1983 = !DILocation(line: 173, column: 5, scope: !1981)
!1984 = !DILocation(line: 174, column: 7, scope: !320)
!1985 = !DILocation(line: 176, column: 7, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 175, column: 5)
!1987 = distinct !DILexicalBlock(scope: !320, file: !3, line: 174, column: 7)
!1988 = !DILocation(line: 178, column: 5, scope: !1986)
!1989 = !DILocation(line: 179, column: 7, scope: !320)
!1990 = !DILocation(line: 181, column: 7, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 180, column: 5)
!1992 = distinct !DILexicalBlock(scope: !320, file: !3, line: 179, column: 7)
!1993 = !DILocation(line: 183, column: 5, scope: !1991)
!1994 = !DILocation(line: 184, column: 7, scope: !320)
!1995 = !DILocation(line: 186, column: 7, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 185, column: 5)
!1997 = distinct !DILexicalBlock(scope: !320, file: !3, line: 184, column: 7)
!1998 = !DILocation(line: 187, column: 5, scope: !1996)
!1999 = !DILocation(line: 188, column: 7, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !320, file: !3, line: 188, column: 7)
!2001 = !DILocation(line: 188, column: 7, scope: !320)
!2002 = !DILocation(line: 189, column: 5, scope: !2000)
!2003 = !DILocalVariable(name: "__c", arg: 1, scope: !2004, file: !2005, line: 105, type: !57)
!2004 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2005, file: !2005, line: 105, type: !2006, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2008)
!2005 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!57, !57}
!2008 = !{!2003}
!2009 = !DILocation(line: 105, column: 23, scope: !2004, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 190, column: 3, scope: !320)
!2011 = !DILocation(line: 107, column: 10, scope: !2004, inlinedAt: !2010)
!2012 = !{!2013, !1114, i64 40}
!2013 = !{!"_IO_FILE", !1189, i64 0, !1114, i64 8, !1114, i64 16, !1114, i64 24, !1114, i64 32, !1114, i64 40, !1114, i64 48, !1114, i64 56, !1114, i64 64, !1114, i64 72, !1114, i64 80, !1114, i64 88, !1114, i64 96, !1114, i64 104, !1189, i64 112, !1189, i64 116, !1156, i64 120, !1924, i64 128, !1115, i64 130, !1115, i64 131, !1114, i64 136, !1156, i64 144, !1114, i64 152, !1114, i64 160, !1114, i64 168, !1114, i64 176, !1156, i64 184, !1189, i64 192, !1115, i64 196}
!2014 = !{!2013, !1114, i64 48}
!2015 = !{!"branch_weights", i32 2000, i32 1}
!2016 = !DILocation(line: 191, column: 1, scope: !320)
!2017 = distinct !DISubprogram(name: "argv_iter_init_argv", scope: !2018, file: !2018, line: 40, type: !2019, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !795, variables: !2070)
!2018 = !DIFile(filename: "lib/argv-iter.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!2021, !66}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "argv_iterator", file: !2018, line: 25, size: 384, elements: !2023)
!2023 = !{!2024, !2065, !2066, !2067, !2068, !2069}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !2022, file: !2018, line: 29, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !2027)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 241, size: 1728, elements: !2028)
!2028 = !{!2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2027, file: !193, line: 242, baseType: !57, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2027, file: !193, line: 247, baseType: !51, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2027, file: !193, line: 248, baseType: !51, size: 64, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2027, file: !193, line: 249, baseType: !51, size: 64, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2027, file: !193, line: 250, baseType: !51, size: 64, offset: 256)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2027, file: !193, line: 251, baseType: !51, size: 64, offset: 320)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2027, file: !193, line: 252, baseType: !51, size: 64, offset: 384)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2027, file: !193, line: 253, baseType: !51, size: 64, offset: 448)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2027, file: !193, line: 254, baseType: !51, size: 64, offset: 512)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2027, file: !193, line: 256, baseType: !51, size: 64, offset: 576)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2027, file: !193, line: 257, baseType: !51, size: 64, offset: 640)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2027, file: !193, line: 258, baseType: !51, size: 64, offset: 704)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2027, file: !193, line: 260, baseType: !2042, size: 64, offset: 768)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !193, line: 156, size: 192, elements: !2044)
!2044 = !{!2045, !2046, !2048}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2043, file: !193, line: 157, baseType: !2042, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2043, file: !193, line: 158, baseType: !2047, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2043, file: !193, line: 162, baseType: !57, size: 32, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2027, file: !193, line: 262, baseType: !2047, size: 64, offset: 832)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2027, file: !193, line: 264, baseType: !57, size: 32, offset: 896)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2027, file: !193, line: 268, baseType: !57, size: 32, offset: 928)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2027, file: !193, line: 270, baseType: !102, size: 64, offset: 960)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2027, file: !193, line: 274, baseType: !58, size: 16, offset: 1024)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2027, file: !193, line: 275, baseType: !221, size: 8, offset: 1040)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2027, file: !193, line: 276, baseType: !223, size: 8, offset: 1048)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2027, file: !193, line: 280, baseType: !227, size: 64, offset: 1088)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2027, file: !193, line: 289, baseType: !230, size: 64, offset: 1152)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2027, file: !193, line: 297, baseType: !53, size: 64, offset: 1216)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2027, file: !193, line: 298, baseType: !53, size: 64, offset: 1280)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2027, file: !193, line: 299, baseType: !53, size: 64, offset: 1344)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2027, file: !193, line: 300, baseType: !53, size: 64, offset: 1408)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2027, file: !193, line: 302, baseType: !54, size: 64, offset: 1472)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2027, file: !193, line: 303, baseType: !57, size: 32, offset: 1536)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2027, file: !193, line: 305, baseType: !238, size: 160, offset: 1568)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "item_idx", scope: !2022, file: !2018, line: 30, baseType: !54, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "tok", scope: !2022, file: !2018, line: 31, baseType: !51, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "buf_len", scope: !2022, file: !2018, line: 32, baseType: !54, size: 64, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !2022, file: !2018, line: 35, baseType: !66, size: 64, offset: 256)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2022, file: !2018, line: 36, baseType: !66, size: 64, offset: 320)
!2070 = !{!2071, !2072}
!2071 = !DILocalVariable(name: "argv", arg: 1, scope: !2017, file: !2018, line: 40, type: !66)
!2072 = !DILocalVariable(name: "ai", scope: !2017, file: !2018, line: 42, type: !2021)
!2073 = !DILocation(line: 40, column: 29, scope: !2017)
!2074 = !DILocation(line: 42, column: 30, scope: !2017)
!2075 = !DILocation(line: 42, column: 25, scope: !2017)
!2076 = !DILocation(line: 43, column: 8, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2017, file: !2018, line: 43, column: 7)
!2078 = !DILocation(line: 43, column: 7, scope: !2017)
!2079 = !DILocation(line: 45, column: 7, scope: !2017)
!2080 = !DILocation(line: 45, column: 10, scope: !2017)
!2081 = !{!2082, !1114, i64 0}
!2082 = !{!"argv_iterator", !1114, i64 0, !1156, i64 8, !1114, i64 16, !1156, i64 24, !1114, i64 32, !1114, i64 40}
!2083 = !DILocation(line: 46, column: 7, scope: !2017)
!2084 = !DILocation(line: 46, column: 16, scope: !2017)
!2085 = !{!2082, !1114, i64 32}
!2086 = !DILocation(line: 47, column: 7, scope: !2017)
!2087 = !DILocation(line: 47, column: 9, scope: !2017)
!2088 = !{!2082, !1114, i64 40}
!2089 = !DILocation(line: 48, column: 3, scope: !2017)
!2090 = !DILocation(line: 49, column: 1, scope: !2017)
!2091 = distinct !DISubprogram(name: "argv_iter_init_stream", scope: !2018, file: !2018, line: 54, type: !2092, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !795, variables: !2094)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!2021, !2025}
!2094 = !{!2095, !2096}
!2095 = !DILocalVariable(name: "fp", arg: 1, scope: !2091, file: !2018, line: 54, type: !2025)
!2096 = !DILocalVariable(name: "ai", scope: !2091, file: !2018, line: 56, type: !2021)
!2097 = !DILocation(line: 54, column: 30, scope: !2091)
!2098 = !DILocation(line: 56, column: 30, scope: !2091)
!2099 = !DILocation(line: 56, column: 25, scope: !2091)
!2100 = !DILocation(line: 57, column: 8, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2091, file: !2018, line: 57, column: 7)
!2102 = !DILocation(line: 57, column: 7, scope: !2091)
!2103 = !DILocation(line: 59, column: 7, scope: !2091)
!2104 = !DILocation(line: 59, column: 10, scope: !2091)
!2105 = !DILocation(line: 63, column: 7, scope: !2091)
!2106 = !DILocation(line: 63, column: 16, scope: !2091)
!2107 = !DILocation(line: 65, column: 3, scope: !2091)
!2108 = !DILocation(line: 66, column: 1, scope: !2091)
!2109 = distinct !DISubprogram(name: "argv_iter", scope: !2018, file: !2018, line: 69, type: !2110, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !795, variables: !2113)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!51, !2021, !2112}
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!2113 = !{!2114, !2115, !2116}
!2114 = !DILocalVariable(name: "ai", arg: 1, scope: !2109, file: !2018, line: 69, type: !2021)
!2115 = !DILocalVariable(name: "err", arg: 2, scope: !2109, file: !2018, line: 69, type: !2112)
!2116 = !DILocalVariable(name: "len", scope: !2117, file: !2018, line: 73, type: !2119)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !2018, line: 72, column: 5)
!2118 = distinct !DILexicalBlock(scope: !2109, file: !2018, line: 71, column: 7)
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1552, line: 71, baseType: !1052)
!2120 = !DILocation(line: 69, column: 34, scope: !2109)
!2121 = !DILocation(line: 69, column: 58, scope: !2109)
!2122 = !DILocation(line: 71, column: 11, scope: !2118)
!2123 = !DILocation(line: 71, column: 7, scope: !2118)
!2124 = !DILocation(line: 71, column: 7, scope: !2109)
!2125 = !DILocation(line: 73, column: 36, scope: !2117)
!2126 = !DILocation(line: 73, column: 46, scope: !2117)
!2127 = !DILocation(line: 73, column: 21, scope: !2117)
!2128 = !DILocation(line: 73, column: 15, scope: !2117)
!2129 = !DILocation(line: 74, column: 15, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2117, file: !2018, line: 74, column: 11)
!2131 = !DILocation(line: 74, column: 11, scope: !2117)
!2132 = !DILocation(line: 76, column: 28, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2130, file: !2018, line: 75, column: 9)
!2134 = !DILocation(line: 76, column: 18, scope: !2133)
!2135 = !DILocation(line: 76, column: 16, scope: !2133)
!2136 = !DILocation(line: 77, column: 11, scope: !2133)
!2137 = !DILocation(line: 80, column: 12, scope: !2117)
!2138 = !DILocation(line: 81, column: 11, scope: !2117)
!2139 = !DILocation(line: 81, column: 19, scope: !2117)
!2140 = !{!2082, !1156, i64 8}
!2141 = !DILocation(line: 82, column: 18, scope: !2117)
!2142 = !{!2082, !1114, i64 16}
!2143 = !DILocation(line: 82, column: 7, scope: !2117)
!2144 = !DILocation(line: 86, column: 17, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !2018, line: 86, column: 11)
!2146 = distinct !DILexicalBlock(scope: !2118, file: !2018, line: 85, column: 5)
!2147 = !DILocation(line: 86, column: 11, scope: !2145)
!2148 = !DILocation(line: 86, column: 20, scope: !2145)
!2149 = !DILocation(line: 86, column: 11, scope: !2146)
!2150 = !DILocation(line: 88, column: 16, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2145, file: !2018, line: 87, column: 9)
!2152 = !DILocation(line: 89, column: 11, scope: !2151)
!2153 = !DILocation(line: 93, column: 16, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2145, file: !2018, line: 92, column: 9)
!2155 = !DILocation(line: 94, column: 25, scope: !2154)
!2156 = !DILocation(line: 94, column: 18, scope: !2154)
!2157 = !DILocation(line: 94, column: 11, scope: !2154)
!2158 = !DILocation(line: 97, column: 1, scope: !2109)
!2159 = distinct !DISubprogram(name: "argv_iter_n_args", scope: !2018, file: !2018, line: 100, type: !2160, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !795, variables: !2164)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!54, !2162}
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2022)
!2164 = !{!2165}
!2165 = !DILocalVariable(name: "ai", arg: 1, scope: !2159, file: !2018, line: 100, type: !2162)
!2166 = !DILocation(line: 100, column: 47, scope: !2159)
!2167 = !DILocation(line: 102, column: 14, scope: !2159)
!2168 = !DILocation(line: 102, column: 10, scope: !2159)
!2169 = !DILocation(line: 102, column: 23, scope: !2159)
!2170 = !DILocation(line: 102, column: 38, scope: !2159)
!2171 = !DILocation(line: 102, column: 46, scope: !2159)
!2172 = !DILocation(line: 102, column: 40, scope: !2159)
!2173 = !DILocation(line: 102, column: 3, scope: !2159)
!2174 = distinct !DISubprogram(name: "argv_iter_free", scope: !2018, file: !2018, line: 106, type: !2175, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !795, variables: !2177)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !2021}
!2177 = !{!2178}
!2178 = !DILocalVariable(name: "ai", arg: 1, scope: !2174, file: !2018, line: 106, type: !2021)
!2179 = !DILocation(line: 106, column: 39, scope: !2174)
!2180 = !DILocation(line: 108, column: 11, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2174, file: !2018, line: 108, column: 7)
!2182 = !DILocation(line: 108, column: 7, scope: !2181)
!2183 = !DILocation(line: 108, column: 7, scope: !2174)
!2184 = !DILocation(line: 109, column: 15, scope: !2181)
!2185 = !DILocation(line: 109, column: 5, scope: !2181)
!2186 = !DILocation(line: 110, column: 9, scope: !2174)
!2187 = !DILocation(line: 110, column: 3, scope: !2174)
!2188 = !DILocation(line: 111, column: 1, scope: !2174)
!2189 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !351, file: !351, line: 41, type: !286, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !346, variables: !2190)
!2190 = !{!2191}
!2191 = !DILocalVariable(name: "file", arg: 1, scope: !2189, file: !351, line: 41, type: !288)
!2192 = !DILocation(line: 41, column: 41, scope: !2189)
!2193 = !DILocation(line: 43, column: 13, scope: !2189)
!2194 = !DILocation(line: 44, column: 1, scope: !2189)
!2195 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !351, file: !351, line: 78, type: !2196, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !346, variables: !2198)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{null, !71}
!2198 = !{!2199}
!2199 = !DILocalVariable(name: "ignore", arg: 1, scope: !2195, file: !351, line: 78, type: !71)
!2200 = !DILocation(line: 78, column: 37, scope: !2195)
!2201 = !DILocation(line: 80, column: 16, scope: !2195)
!2202 = !{!2203, !2203, i64 0}
!2203 = !{!"_Bool", !1115, i64 0}
!2204 = !DILocation(line: 81, column: 1, scope: !2195)
!2205 = distinct !DISubprogram(name: "close_stdout", scope: !351, file: !351, line: 107, type: !445, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !346, variables: !2206)
!2206 = !{!2207}
!2207 = !DILocalVariable(name: "write_error", scope: !2208, file: !351, line: 112, type: !288)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !351, line: 111, column: 5)
!2209 = distinct !DILexicalBlock(scope: !2205, file: !351, line: 109, column: 7)
!2210 = !DILocation(line: 109, column: 21, scope: !2209)
!2211 = !DILocation(line: 109, column: 7, scope: !2209)
!2212 = !DILocation(line: 109, column: 29, scope: !2209)
!2213 = !DILocation(line: 110, column: 7, scope: !2209)
!2214 = !DILocation(line: 110, column: 12, scope: !2209)
!2215 = !{i8 0, i8 2}
!2216 = !DILocation(line: 114, column: 19, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2208, file: !351, line: 113, column: 11)
!2218 = !DILocation(line: 110, column: 25, scope: !2209)
!2219 = !DILocation(line: 110, column: 28, scope: !2209)
!2220 = !DILocation(line: 110, column: 34, scope: !2209)
!2221 = !DILocation(line: 109, column: 7, scope: !2205)
!2222 = !DILocation(line: 112, column: 33, scope: !2208)
!2223 = !DILocation(line: 112, column: 19, scope: !2208)
!2224 = !DILocation(line: 113, column: 11, scope: !2217)
!2225 = !DILocation(line: 113, column: 11, scope: !2208)
!2226 = !DILocation(line: 114, column: 36, scope: !2217)
!2227 = !DILocation(line: 114, column: 9, scope: !2217)
!2228 = !DILocation(line: 117, column: 9, scope: !2217)
!2229 = !DILocation(line: 119, column: 14, scope: !2208)
!2230 = !DILocation(line: 119, column: 7, scope: !2208)
!2231 = !DILocation(line: 122, column: 22, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2205, file: !351, line: 122, column: 8)
!2233 = !DILocation(line: 122, column: 8, scope: !2232)
!2234 = !DILocation(line: 122, column: 30, scope: !2232)
!2235 = !DILocation(line: 122, column: 8, scope: !2205)
!2236 = !DILocation(line: 123, column: 13, scope: !2232)
!2237 = !DILocation(line: 123, column: 6, scope: !2232)
!2238 = !DILocation(line: 124, column: 1, scope: !2205)
!2239 = distinct !DISubprogram(name: "fdadvise", scope: !2240, file: !2240, line: 31, type: !2241, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !799, variables: !2244)
!2240 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2241 = !DISubroutineType(types: !2242)
!2242 = !{null, !57, !1551, !1551, !2243}
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !27, line: 52, baseType: !26)
!2244 = !{!2245, !2246, !2247, !2248, !2249}
!2245 = !DILocalVariable(name: "fd", arg: 1, scope: !2239, file: !2240, line: 31, type: !57)
!2246 = !DILocalVariable(name: "offset", arg: 2, scope: !2239, file: !2240, line: 31, type: !1551)
!2247 = !DILocalVariable(name: "len", arg: 3, scope: !2239, file: !2240, line: 31, type: !1551)
!2248 = !DILocalVariable(name: "advice", arg: 4, scope: !2239, file: !2240, line: 31, type: !2243)
!2249 = !DILocalVariable(name: "__x", scope: !2250, file: !2240, line: 34, type: !57)
!2250 = distinct !DILexicalBlock(scope: !2239, file: !2240, line: 34, column: 3)
!2251 = !DILocation(line: 31, column: 15, scope: !2239)
!2252 = !DILocation(line: 31, column: 25, scope: !2239)
!2253 = !DILocation(line: 31, column: 39, scope: !2239)
!2254 = !DILocation(line: 31, column: 54, scope: !2239)
!2255 = !DILocation(line: 34, column: 3, scope: !2250)
!2256 = !DILocation(line: 36, column: 1, scope: !2239)
!2257 = distinct !DISubprogram(name: "fadvise", scope: !2240, file: !2240, line: 39, type: !2258, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !799, variables: !2300)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{null, !2260, !2243}
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !2262)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 241, size: 1728, elements: !2263)
!2263 = !{!2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2262, file: !193, line: 242, baseType: !57, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2262, file: !193, line: 247, baseType: !51, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2262, file: !193, line: 248, baseType: !51, size: 64, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2262, file: !193, line: 249, baseType: !51, size: 64, offset: 192)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2262, file: !193, line: 250, baseType: !51, size: 64, offset: 256)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2262, file: !193, line: 251, baseType: !51, size: 64, offset: 320)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2262, file: !193, line: 252, baseType: !51, size: 64, offset: 384)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2262, file: !193, line: 253, baseType: !51, size: 64, offset: 448)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2262, file: !193, line: 254, baseType: !51, size: 64, offset: 512)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2262, file: !193, line: 256, baseType: !51, size: 64, offset: 576)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2262, file: !193, line: 257, baseType: !51, size: 64, offset: 640)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2262, file: !193, line: 258, baseType: !51, size: 64, offset: 704)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2262, file: !193, line: 260, baseType: !2277, size: 64, offset: 768)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !193, line: 156, size: 192, elements: !2279)
!2279 = !{!2280, !2281, !2283}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2278, file: !193, line: 157, baseType: !2277, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2278, file: !193, line: 158, baseType: !2282, size: 64, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2278, file: !193, line: 162, baseType: !57, size: 32, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2262, file: !193, line: 262, baseType: !2282, size: 64, offset: 832)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2262, file: !193, line: 264, baseType: !57, size: 32, offset: 896)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2262, file: !193, line: 268, baseType: !57, size: 32, offset: 928)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2262, file: !193, line: 270, baseType: !102, size: 64, offset: 960)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2262, file: !193, line: 274, baseType: !58, size: 16, offset: 1024)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2262, file: !193, line: 275, baseType: !221, size: 8, offset: 1040)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2262, file: !193, line: 276, baseType: !223, size: 8, offset: 1048)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2262, file: !193, line: 280, baseType: !227, size: 64, offset: 1088)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2262, file: !193, line: 289, baseType: !230, size: 64, offset: 1152)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2262, file: !193, line: 297, baseType: !53, size: 64, offset: 1216)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2262, file: !193, line: 298, baseType: !53, size: 64, offset: 1280)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2262, file: !193, line: 299, baseType: !53, size: 64, offset: 1344)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2262, file: !193, line: 300, baseType: !53, size: 64, offset: 1408)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2262, file: !193, line: 302, baseType: !54, size: 64, offset: 1472)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2262, file: !193, line: 303, baseType: !57, size: 32, offset: 1536)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2262, file: !193, line: 305, baseType: !238, size: 160, offset: 1568)
!2300 = !{!2301, !2302}
!2301 = !DILocalVariable(name: "fp", arg: 1, scope: !2257, file: !2240, line: 39, type: !2260)
!2302 = !DILocalVariable(name: "advice", arg: 2, scope: !2257, file: !2240, line: 39, type: !2243)
!2303 = !DILocation(line: 39, column: 16, scope: !2257)
!2304 = !DILocation(line: 39, column: 30, scope: !2257)
!2305 = !DILocation(line: 41, column: 7, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2257, file: !2240, line: 41, column: 7)
!2307 = !DILocation(line: 41, column: 7, scope: !2257)
!2308 = !DILocation(line: 42, column: 15, scope: !2306)
!2309 = !DILocation(line: 31, column: 15, scope: !2239, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 42, column: 5, scope: !2306)
!2311 = !DILocation(line: 31, column: 25, scope: !2239, inlinedAt: !2310)
!2312 = !DILocation(line: 31, column: 39, scope: !2239, inlinedAt: !2310)
!2313 = !DILocation(line: 31, column: 54, scope: !2239, inlinedAt: !2310)
!2314 = !DILocation(line: 34, column: 3, scope: !2250, inlinedAt: !2310)
!2315 = !DILocation(line: 42, column: 5, scope: !2306)
!2316 = !DILocation(line: 43, column: 1, scope: !2257)
!2317 = distinct !DISubprogram(name: "umaxtostr", scope: !2318, file: !2318, line: 36, type: !2319, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !802, variables: !2321)
!2318 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!51, !257, !51}
!2321 = !{!2322, !2323, !2324}
!2322 = !DILocalVariable(name: "i", arg: 1, scope: !2317, file: !2318, line: 36, type: !257)
!2323 = !DILocalVariable(name: "buf", arg: 2, scope: !2317, file: !2318, line: 36, type: !51)
!2324 = !DILocalVariable(name: "p", scope: !2317, file: !2318, line: 38, type: !51)
!2325 = !DILocation(line: 36, column: 19, scope: !2317)
!2326 = !DILocation(line: 36, column: 28, scope: !2317)
!2327 = !DILocation(line: 38, column: 17, scope: !2317)
!2328 = !DILocation(line: 38, column: 9, scope: !2317)
!2329 = !DILocation(line: 39, column: 6, scope: !2317)
!2330 = !DILocation(line: 51, column: 7, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !2318, line: 50, column: 5)
!2332 = distinct !DILexicalBlock(scope: !2317, file: !2318, line: 41, column: 7)
!2333 = distinct !{!2333, !2330, !2334}
!2334 = !DILocation(line: 53, column: 28, scope: !2331)
!2335 = !DILocation(line: 52, column: 24, scope: !2331)
!2336 = !DILocation(line: 52, column: 16, scope: !2331)
!2337 = !DILocation(line: 52, column: 10, scope: !2331)
!2338 = !DILocation(line: 52, column: 14, scope: !2331)
!2339 = !DILocation(line: 53, column: 17, scope: !2331)
!2340 = !DILocation(line: 53, column: 24, scope: !2331)
!2341 = !DILocation(line: 52, column: 9, scope: !2331)
!2342 = !DILocation(line: 56, column: 3, scope: !2317)
!2343 = distinct !DISubprogram(name: "mb_width_aux", scope: !1801, file: !1801, line: 247, type: !2344, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !361, variables: !2348)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!57, !2346}
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2347, line: 20, baseType: !94)
!2347 = !DIFile(filename: "/usr/include/bits/types/wint_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2348 = !{!2349, !2350}
!2349 = !DILocalVariable(name: "wc", arg: 1, scope: !2343, file: !1801, line: 247, type: !2346)
!2350 = !DILocalVariable(name: "w", scope: !2343, file: !1801, line: 249, type: !57)
!2351 = !DILocation(line: 247, column: 22, scope: !2343)
!2352 = !DILocation(line: 249, column: 11, scope: !2343)
!2353 = !DILocation(line: 249, column: 7, scope: !2343)
!2354 = !DILocation(line: 252, column: 13, scope: !2343)
!2355 = !DILocation(line: 252, column: 11, scope: !2343)
!2356 = !DILocation(line: 252, column: 24, scope: !2343)
!2357 = !DILocation(line: 252, column: 3, scope: !2343)
!2358 = distinct !DISubprogram(name: "mb_copy", scope: !1801, file: !1801, line: 268, type: !2359, isLocal: false, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !361, variables: !2375)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{null, !2361, !2373}
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbchar_t", file: !1801, line: 181, baseType: !2363)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbchar", file: !1801, line: 169, size: 384, elements: !2364)
!2364 = !{!2365, !2366, !2367, !2368, !2369}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2363, file: !1801, line: 171, baseType: !288, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2363, file: !1801, line: 172, baseType: !54, size: 64, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "wc_valid", scope: !2363, file: !1801, line: 173, baseType: !71, size: 8, offset: 128)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "wc", scope: !2363, file: !1801, line: 174, baseType: !1616, size: 32, offset: 160)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2363, file: !1801, line: 175, baseType: !2370, size: 192, offset: 192)
!2370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 192, elements: !2371)
!2371 = !{!2372}
!2372 = !DISubrange(count: 24)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2362)
!2375 = !{!2376, !2377}
!2376 = !DILocalVariable(name: "new_mbc", arg: 1, scope: !2358, file: !1801, line: 268, type: !2361)
!2377 = !DILocalVariable(name: "old_mbc", arg: 2, scope: !2358, file: !1801, line: 268, type: !2373)
!2378 = !DILocation(line: 268, column: 20, scope: !2358)
!2379 = !DILocation(line: 268, column: 45, scope: !2358)
!2380 = !DILocation(line: 270, column: 16, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2358, file: !1801, line: 270, column: 7)
!2382 = !{!2383, !1114, i64 0}
!2383 = !{!"mbchar", !1114, i64 0, !1156, i64 8, !2203, i64 16, !1189, i64 20, !1115, i64 24}
!2384 = !DILocation(line: 270, column: 24, scope: !2381)
!2385 = !DILocation(line: 270, column: 20, scope: !2381)
!2386 = !DILocation(line: 270, column: 7, scope: !2358)
!2387 = !DILocation(line: 277, column: 29, scope: !2358)
!2388 = !DILocation(line: 272, column: 16, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2381, file: !1801, line: 271, column: 5)
!2390 = !DILocation(line: 272, column: 60, scope: !2389)
!2391 = !{!2383, !1156, i64 8}
!2392 = !DILocation(line: 272, column: 7, scope: !2389)
!2393 = !DILocation(line: 274, column: 5, scope: !2389)
!2394 = !DILocation(line: 277, column: 12, scope: !2358)
!2395 = !DILocation(line: 277, column: 18, scope: !2358)
!2396 = !DILocation(line: 278, column: 37, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2358, file: !1801, line: 278, column: 7)
!2398 = !{!2383, !2203, i64 16}
!2399 = !DILocation(line: 278, column: 17, scope: !2397)
!2400 = !DILocation(line: 278, column: 26, scope: !2397)
!2401 = !DILocation(line: 278, column: 7, scope: !2358)
!2402 = !DILocation(line: 279, column: 28, scope: !2397)
!2403 = !{!2383, !1189, i64 20}
!2404 = !DILocation(line: 279, column: 14, scope: !2397)
!2405 = !DILocation(line: 279, column: 17, scope: !2397)
!2406 = !DILocation(line: 279, column: 5, scope: !2397)
!2407 = !DILocation(line: 280, column: 1, scope: !2358)
!2408 = distinct !DISubprogram(name: "is_basic", scope: !1801, file: !1801, line: 316, type: !1802, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !361, variables: !2409)
!2409 = !{!2410}
!2410 = !DILocalVariable(name: "c", arg: 1, scope: !2408, file: !1801, line: 316, type: !52)
!2411 = !DILocation(line: 316, column: 16, scope: !2408)
!2412 = !DILocation(line: 318, column: 27, scope: !2408)
!2413 = !DILocation(line: 318, column: 45, scope: !2408)
!2414 = !DILocation(line: 318, column: 11, scope: !2408)
!2415 = !DILocation(line: 318, column: 73, scope: !2408)
!2416 = !DILocation(line: 318, column: 10, scope: !2408)
!2417 = !DILocation(line: 318, column: 3, scope: !2408)
!2418 = distinct !DISubprogram(name: "physmem_total", scope: !2419, file: !2419, line: 85, type: !2420, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !805, variables: !2421)
!2419 = !DIFile(filename: "lib/physmem.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2420 = !DISubroutineType(types: !1026)
!2421 = !{!2422, !2424, !2425}
!2422 = !DILocalVariable(name: "pages", scope: !2423, file: !2419, line: 89, type: !1027)
!2423 = distinct !DILexicalBlock(scope: !2418, file: !2419, line: 88, column: 3)
!2424 = !DILocalVariable(name: "pagesize", scope: !2423, file: !2419, line: 90, type: !1027)
!2425 = !DILocalVariable(name: "si", scope: !2426, file: !2419, line: 98, type: !2427)
!2426 = distinct !DILexicalBlock(scope: !2418, file: !2419, line: 97, column: 3)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysinfo", file: !2428, line: 8, size: 896, elements: !2429)
!2428 = !DIFile(filename: "/usr/include/linux/sysinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2429 = !{!2430, !2433, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2445, !2446, !2447, !2448, !2450}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "uptime", scope: !2427, file: !2428, line: 9, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !2432, line: 15, baseType: !103)
!2432 = !DIFile(filename: "/usr/include/asm-generic/posix_types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "loads", scope: !2427, file: !2428, line: 10, baseType: !2434, size: 192, offset: 64)
!2434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2435, size: 192, elements: !120)
!2435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !2432, line: 16, baseType: !56)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "totalram", scope: !2427, file: !2428, line: 11, baseType: !2435, size: 64, offset: 256)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "freeram", scope: !2427, file: !2428, line: 12, baseType: !2435, size: 64, offset: 320)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "sharedram", scope: !2427, file: !2428, line: 13, baseType: !2435, size: 64, offset: 384)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "bufferram", scope: !2427, file: !2428, line: 14, baseType: !2435, size: 64, offset: 448)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "totalswap", scope: !2427, file: !2428, line: 15, baseType: !2435, size: 64, offset: 512)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "freeswap", scope: !2427, file: !2428, line: 16, baseType: !2435, size: 64, offset: 576)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !2427, file: !2428, line: 17, baseType: !2443, size: 16, offset: 640)
!2443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !2444, line: 24, baseType: !58)
!2444 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !2427, file: !2428, line: 18, baseType: !2443, size: 16, offset: 656)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "totalhigh", scope: !2427, file: !2428, line: 19, baseType: !2435, size: 64, offset: 704)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "freehigh", scope: !2427, file: !2428, line: 20, baseType: !2435, size: 64, offset: 768)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "mem_unit", scope: !2427, file: !2428, line: 21, baseType: !2449, size: 32, offset: 832)
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !2444, line: 27, baseType: !94)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_f", scope: !2427, file: !2428, line: 22, baseType: !2451, offset: 864)
!2451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, elements: !2452)
!2452 = !{!2453}
!2453 = !DISubrange(count: 0)
!2454 = !DILocation(line: 89, column: 20, scope: !2423)
!2455 = !DILocation(line: 89, column: 12, scope: !2423)
!2456 = !DILocation(line: 90, column: 23, scope: !2423)
!2457 = !DILocation(line: 90, column: 12, scope: !2423)
!2458 = !DILocation(line: 91, column: 20, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2423, file: !2419, line: 91, column: 9)
!2460 = !DILocation(line: 98, column: 5, scope: !2426)
!2461 = !DILocation(line: 98, column: 20, scope: !2426)
!2462 = !DILocation(line: 99, column: 9, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2426, file: !2419, line: 99, column: 9)
!2464 = !DILocation(line: 99, column: 22, scope: !2463)
!2465 = !DILocation(line: 99, column: 9, scope: !2426)
!2466 = !DILocation(line: 100, column: 26, scope: !2463)
!2467 = !{!2468, !1156, i64 32}
!2468 = !{!"sysinfo", !1156, i64 0, !1115, i64 8, !1156, i64 32, !1156, i64 40, !1156, i64 48, !1156, i64 56, !1156, i64 64, !1156, i64 72, !1924, i64 80, !1924, i64 82, !1156, i64 88, !1156, i64 96, !1189, i64 104, !1115, i64 108}
!2469 = !DILocation(line: 100, column: 14, scope: !2463)
!2470 = !DILocation(line: 100, column: 40, scope: !2463)
!2471 = !{!2468, !1189, i64 104}
!2472 = !DILocation(line: 100, column: 37, scope: !2463)
!2473 = !DILocation(line: 100, column: 35, scope: !2463)
!2474 = !DILocation(line: 101, column: 3, scope: !2418)
!2475 = !DILocation(line: 92, column: 20, scope: !2459)
!2476 = !DILocation(line: 193, column: 1, scope: !2418)
!2477 = distinct !DISubprogram(name: "physmem_available", scope: !2419, file: !2419, line: 197, type: !2420, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, unit: !805, variables: !2478)
!2478 = !{!2479, !2481, !2482}
!2479 = !DILocalVariable(name: "pages", scope: !2480, file: !2419, line: 201, type: !1027)
!2480 = distinct !DILexicalBlock(scope: !2477, file: !2419, line: 200, column: 3)
!2481 = !DILocalVariable(name: "pagesize", scope: !2480, file: !2419, line: 202, type: !1027)
!2482 = !DILocalVariable(name: "si", scope: !2483, file: !2419, line: 210, type: !2427)
!2483 = distinct !DILexicalBlock(scope: !2477, file: !2419, line: 209, column: 3)
!2484 = !DILocation(line: 201, column: 20, scope: !2480)
!2485 = !DILocation(line: 201, column: 12, scope: !2480)
!2486 = !DILocation(line: 202, column: 23, scope: !2480)
!2487 = !DILocation(line: 202, column: 12, scope: !2480)
!2488 = !DILocation(line: 203, column: 20, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2480, file: !2419, line: 203, column: 9)
!2490 = !DILocation(line: 204, column: 20, scope: !2489)
!2491 = !DILocation(line: 210, column: 5, scope: !2483)
!2492 = !DILocation(line: 210, column: 20, scope: !2483)
!2493 = !DILocation(line: 211, column: 9, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2483, file: !2419, line: 211, column: 9)
!2495 = !DILocation(line: 211, column: 22, scope: !2494)
!2496 = !DILocation(line: 211, column: 9, scope: !2483)
!2497 = !DILocation(line: 212, column: 27, scope: !2494)
!2498 = !{!2468, !1156, i64 40}
!2499 = !DILocation(line: 212, column: 15, scope: !2494)
!2500 = !DILocation(line: 212, column: 40, scope: !2494)
!2501 = !{!2468, !1156, i64 56}
!2502 = !DILocation(line: 212, column: 37, scope: !2494)
!2503 = !DILocation(line: 212, column: 35, scope: !2494)
!2504 = !DILocation(line: 212, column: 56, scope: !2494)
!2505 = !DILocation(line: 212, column: 53, scope: !2494)
!2506 = !DILocation(line: 212, column: 51, scope: !2494)
!2507 = !DILocation(line: 213, column: 3, scope: !2477)
!2508 = !DILocation(line: 89, column: 20, scope: !2423, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 301, column: 10, scope: !2477)
!2510 = !DILocation(line: 90, column: 23, scope: !2423, inlinedAt: !2509)
!2511 = !DILocation(line: 91, column: 20, scope: !2459, inlinedAt: !2509)
!2512 = !DILocation(line: 98, column: 5, scope: !2426, inlinedAt: !2509)
!2513 = !DILocation(line: 98, column: 20, scope: !2426, inlinedAt: !2509)
!2514 = !DILocation(line: 99, column: 9, scope: !2463, inlinedAt: !2509)
!2515 = !DILocation(line: 99, column: 22, scope: !2463, inlinedAt: !2509)
!2516 = !DILocation(line: 99, column: 9, scope: !2426, inlinedAt: !2509)
!2517 = !DILocation(line: 100, column: 26, scope: !2463, inlinedAt: !2509)
!2518 = !DILocation(line: 100, column: 14, scope: !2463, inlinedAt: !2509)
!2519 = !DILocation(line: 100, column: 40, scope: !2463, inlinedAt: !2509)
!2520 = !DILocation(line: 100, column: 37, scope: !2463, inlinedAt: !2509)
!2521 = !DILocation(line: 100, column: 35, scope: !2463, inlinedAt: !2509)
!2522 = !DILocation(line: 101, column: 3, scope: !2418, inlinedAt: !2509)
!2523 = !DILocation(line: 92, column: 20, scope: !2459, inlinedAt: !2509)
!2524 = !DILocation(line: 193, column: 1, scope: !2418, inlinedAt: !2509)
!2525 = !DILocation(line: 301, column: 27, scope: !2477)
!2526 = !DILocation(line: 301, column: 3, scope: !2477)
!2527 = !DILocation(line: 302, column: 1, scope: !2477)
!2528 = distinct !DISubprogram(name: "set_program_name", scope: !376, file: !376, line: 39, type: !286, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !372, variables: !2529)
!2529 = !{!2530, !2531, !2532}
!2530 = !DILocalVariable(name: "argv0", arg: 1, scope: !2528, file: !376, line: 39, type: !288)
!2531 = !DILocalVariable(name: "slash", scope: !2528, file: !376, line: 46, type: !288)
!2532 = !DILocalVariable(name: "base", scope: !2528, file: !376, line: 47, type: !288)
!2533 = !DILocation(line: 39, column: 31, scope: !2528)
!2534 = !DILocation(line: 51, column: 13, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2528, file: !376, line: 51, column: 7)
!2536 = !DILocation(line: 51, column: 7, scope: !2528)
!2537 = !DILocation(line: 55, column: 14, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2535, file: !376, line: 52, column: 5)
!2539 = !DILocation(line: 54, column: 7, scope: !2538)
!2540 = !DILocation(line: 56, column: 7, scope: !2538)
!2541 = !DILocation(line: 59, column: 11, scope: !2528)
!2542 = !DILocation(line: 46, column: 15, scope: !2528)
!2543 = !DILocation(line: 60, column: 17, scope: !2528)
!2544 = !DILocation(line: 60, column: 33, scope: !2528)
!2545 = !DILocation(line: 60, column: 11, scope: !2528)
!2546 = !DILocation(line: 47, column: 15, scope: !2528)
!2547 = !DILocation(line: 61, column: 12, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2528, file: !376, line: 61, column: 7)
!2549 = !DILocation(line: 61, column: 20, scope: !2548)
!2550 = !DILocation(line: 61, column: 25, scope: !2548)
!2551 = !DILocation(line: 61, column: 42, scope: !2548)
!2552 = !DILocation(line: 61, column: 28, scope: !2548)
!2553 = !DILocation(line: 61, column: 61, scope: !2548)
!2554 = !DILocation(line: 61, column: 7, scope: !2528)
!2555 = !DILocation(line: 64, column: 11, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !376, line: 64, column: 11)
!2557 = distinct !DILexicalBlock(scope: !2548, file: !376, line: 62, column: 5)
!2558 = !DILocation(line: 64, column: 36, scope: !2556)
!2559 = !DILocation(line: 64, column: 11, scope: !2557)
!2560 = !DILocation(line: 66, column: 24, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2556, file: !376, line: 65, column: 9)
!2562 = !DILocation(line: 70, column: 41, scope: !2561)
!2563 = !DILocation(line: 72, column: 9, scope: !2561)
!2564 = !DILocation(line: 84, column: 16, scope: !2528)
!2565 = !DILocation(line: 90, column: 27, scope: !2528)
!2566 = !DILocation(line: 92, column: 1, scope: !2528)
!2567 = distinct !DISubprogram(name: "clone_quoting_options", scope: !391, file: !391, line: 114, type: !2568, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !2571)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!2570, !2570}
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!2571 = !{!2572, !2573, !2574}
!2572 = !DILocalVariable(name: "o", arg: 1, scope: !2567, file: !391, line: 114, type: !2570)
!2573 = !DILocalVariable(name: "e", scope: !2567, file: !391, line: 116, type: !57)
!2574 = !DILocalVariable(name: "p", scope: !2567, file: !391, line: 117, type: !2570)
!2575 = !DILocation(line: 114, column: 48, scope: !2567)
!2576 = !DILocation(line: 116, column: 11, scope: !2567)
!2577 = !DILocation(line: 116, column: 7, scope: !2567)
!2578 = !DILocation(line: 117, column: 40, scope: !2567)
!2579 = !DILocation(line: 117, column: 31, scope: !2567)
!2580 = !DILocation(line: 117, column: 27, scope: !2567)
!2581 = !DILocation(line: 119, column: 9, scope: !2567)
!2582 = !DILocation(line: 120, column: 3, scope: !2567)
!2583 = distinct !DISubprogram(name: "get_quoting_style", scope: !391, file: !391, line: 125, type: !2584, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !2588)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!5, !2586}
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!2588 = !{!2589}
!2589 = !DILocalVariable(name: "o", arg: 1, scope: !2583, file: !391, line: 125, type: !2586)
!2590 = !DILocation(line: 125, column: 50, scope: !2583)
!2591 = !DILocation(line: 127, column: 11, scope: !2583)
!2592 = !DILocation(line: 127, column: 46, scope: !2583)
!2593 = !{!2594, !1115, i64 0}
!2594 = !{!"quoting_options", !1115, i64 0, !1189, i64 4, !1115, i64 8, !1114, i64 40, !1114, i64 48}
!2595 = !DILocation(line: 127, column: 3, scope: !2583)
!2596 = distinct !DISubprogram(name: "set_quoting_style", scope: !391, file: !391, line: 133, type: !2597, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{null, !2570, !5}
!2599 = !{!2600, !2601}
!2600 = !DILocalVariable(name: "o", arg: 1, scope: !2596, file: !391, line: 133, type: !2570)
!2601 = !DILocalVariable(name: "s", arg: 2, scope: !2596, file: !391, line: 133, type: !5)
!2602 = !DILocation(line: 133, column: 44, scope: !2596)
!2603 = !DILocation(line: 133, column: 66, scope: !2596)
!2604 = !DILocation(line: 135, column: 4, scope: !2596)
!2605 = !DILocation(line: 135, column: 39, scope: !2596)
!2606 = !DILocation(line: 135, column: 45, scope: !2596)
!2607 = !DILocation(line: 136, column: 1, scope: !2596)
!2608 = distinct !DISubprogram(name: "set_char_quoting", scope: !391, file: !391, line: 144, type: !2609, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !2611)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!57, !2570, !52, !57}
!2611 = !{!2612, !2613, !2614, !2615, !2616, !2618, !2619}
!2612 = !DILocalVariable(name: "o", arg: 1, scope: !2608, file: !391, line: 144, type: !2570)
!2613 = !DILocalVariable(name: "c", arg: 2, scope: !2608, file: !391, line: 144, type: !52)
!2614 = !DILocalVariable(name: "i", arg: 3, scope: !2608, file: !391, line: 144, type: !57)
!2615 = !DILocalVariable(name: "uc", scope: !2608, file: !391, line: 146, type: !59)
!2616 = !DILocalVariable(name: "p", scope: !2608, file: !391, line: 147, type: !2617)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!2618 = !DILocalVariable(name: "shift", scope: !2608, file: !391, line: 149, type: !57)
!2619 = !DILocalVariable(name: "r", scope: !2608, file: !391, line: 150, type: !57)
!2620 = !DILocation(line: 144, column: 43, scope: !2608)
!2621 = !DILocation(line: 144, column: 51, scope: !2608)
!2622 = !DILocation(line: 144, column: 58, scope: !2608)
!2623 = !DILocation(line: 146, column: 17, scope: !2608)
!2624 = !DILocation(line: 148, column: 6, scope: !2608)
!2625 = !DILocation(line: 148, column: 62, scope: !2608)
!2626 = !DILocation(line: 148, column: 57, scope: !2608)
!2627 = !DILocation(line: 147, column: 17, scope: !2608)
!2628 = !DILocation(line: 149, column: 18, scope: !2608)
!2629 = !DILocation(line: 149, column: 15, scope: !2608)
!2630 = !DILocation(line: 149, column: 7, scope: !2608)
!2631 = !DILocation(line: 150, column: 12, scope: !2608)
!2632 = !DILocation(line: 150, column: 15, scope: !2608)
!2633 = !DILocation(line: 150, column: 25, scope: !2608)
!2634 = !DILocation(line: 150, column: 7, scope: !2608)
!2635 = !DILocation(line: 151, column: 13, scope: !2608)
!2636 = !DILocation(line: 151, column: 18, scope: !2608)
!2637 = !DILocation(line: 151, column: 23, scope: !2608)
!2638 = !DILocation(line: 151, column: 6, scope: !2608)
!2639 = !DILocation(line: 152, column: 3, scope: !2608)
!2640 = distinct !DISubprogram(name: "set_quoting_flags", scope: !391, file: !391, line: 160, type: !2641, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !2643)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!57, !2570, !57}
!2643 = !{!2644, !2645, !2646}
!2644 = !DILocalVariable(name: "o", arg: 1, scope: !2640, file: !391, line: 160, type: !2570)
!2645 = !DILocalVariable(name: "i", arg: 2, scope: !2640, file: !391, line: 160, type: !57)
!2646 = !DILocalVariable(name: "r", scope: !2640, file: !391, line: 162, type: !57)
!2647 = !DILocation(line: 160, column: 44, scope: !2640)
!2648 = !DILocation(line: 160, column: 51, scope: !2640)
!2649 = !DILocation(line: 163, column: 8, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2640, file: !391, line: 163, column: 7)
!2651 = !DILocation(line: 163, column: 7, scope: !2640)
!2652 = !DILocation(line: 165, column: 10, scope: !2640)
!2653 = !{!2594, !1189, i64 4}
!2654 = !DILocation(line: 162, column: 7, scope: !2640)
!2655 = !DILocation(line: 166, column: 12, scope: !2640)
!2656 = !DILocation(line: 167, column: 3, scope: !2640)
!2657 = distinct !DISubprogram(name: "set_custom_quoting", scope: !391, file: !391, line: 171, type: !2658, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{null, !2570, !288, !288}
!2660 = !{!2661, !2662, !2663}
!2661 = !DILocalVariable(name: "o", arg: 1, scope: !2657, file: !391, line: 171, type: !2570)
!2662 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2657, file: !391, line: 172, type: !288)
!2663 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2657, file: !391, line: 172, type: !288)
!2664 = !DILocation(line: 171, column: 45, scope: !2657)
!2665 = !DILocation(line: 172, column: 33, scope: !2657)
!2666 = !DILocation(line: 172, column: 57, scope: !2657)
!2667 = !DILocation(line: 174, column: 8, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2657, file: !391, line: 174, column: 7)
!2669 = !DILocation(line: 174, column: 7, scope: !2657)
!2670 = !DILocation(line: 176, column: 6, scope: !2657)
!2671 = !DILocation(line: 176, column: 12, scope: !2657)
!2672 = !DILocation(line: 177, column: 8, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2657, file: !391, line: 177, column: 7)
!2674 = !DILocation(line: 177, column: 23, scope: !2673)
!2675 = !DILocation(line: 177, column: 19, scope: !2673)
!2676 = !DILocation(line: 178, column: 5, scope: !2673)
!2677 = !DILocation(line: 179, column: 6, scope: !2657)
!2678 = !DILocation(line: 179, column: 17, scope: !2657)
!2679 = !{!2594, !1114, i64 40}
!2680 = !DILocation(line: 180, column: 6, scope: !2657)
!2681 = !DILocation(line: 180, column: 18, scope: !2657)
!2682 = !{!2594, !1114, i64 48}
!2683 = !DILocation(line: 181, column: 1, scope: !2657)
!2684 = distinct !DISubprogram(name: "quotearg_buffer", scope: !391, file: !391, line: 776, type: !2685, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !2687)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!54, !51, !54, !288, !54, !2586}
!2687 = !{!2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695}
!2688 = !DILocalVariable(name: "buffer", arg: 1, scope: !2684, file: !391, line: 776, type: !51)
!2689 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2684, file: !391, line: 776, type: !54)
!2690 = !DILocalVariable(name: "arg", arg: 3, scope: !2684, file: !391, line: 777, type: !288)
!2691 = !DILocalVariable(name: "argsize", arg: 4, scope: !2684, file: !391, line: 777, type: !54)
!2692 = !DILocalVariable(name: "o", arg: 5, scope: !2684, file: !391, line: 778, type: !2586)
!2693 = !DILocalVariable(name: "p", scope: !2684, file: !391, line: 780, type: !2586)
!2694 = !DILocalVariable(name: "e", scope: !2684, file: !391, line: 781, type: !57)
!2695 = !DILocalVariable(name: "r", scope: !2684, file: !391, line: 782, type: !54)
!2696 = !DILocation(line: 776, column: 24, scope: !2684)
!2697 = !DILocation(line: 776, column: 39, scope: !2684)
!2698 = !DILocation(line: 777, column: 30, scope: !2684)
!2699 = !DILocation(line: 777, column: 42, scope: !2684)
!2700 = !DILocation(line: 778, column: 48, scope: !2684)
!2701 = !DILocation(line: 780, column: 37, scope: !2684)
!2702 = !DILocation(line: 780, column: 33, scope: !2684)
!2703 = !DILocation(line: 781, column: 11, scope: !2684)
!2704 = !DILocation(line: 781, column: 7, scope: !2684)
!2705 = !DILocation(line: 783, column: 43, scope: !2684)
!2706 = !DILocation(line: 783, column: 53, scope: !2684)
!2707 = !DILocation(line: 783, column: 60, scope: !2684)
!2708 = !DILocation(line: 784, column: 43, scope: !2684)
!2709 = !DILocation(line: 784, column: 58, scope: !2684)
!2710 = !DILocation(line: 782, column: 14, scope: !2684)
!2711 = !DILocation(line: 782, column: 10, scope: !2684)
!2712 = !DILocation(line: 785, column: 9, scope: !2684)
!2713 = !DILocation(line: 786, column: 3, scope: !2684)
!2714 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !391, file: !391, line: 248, type: !2715, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !2718)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!54, !51, !54, !288, !54, !5, !57, !2717, !288, !288}
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2743, !2744, !2745, !2746, !2747, !2750, !2751, !2764, !2766, !2767, !2774}
!2719 = !DILocalVariable(name: "buffer", arg: 1, scope: !2714, file: !391, line: 248, type: !51)
!2720 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2714, file: !391, line: 248, type: !54)
!2721 = !DILocalVariable(name: "arg", arg: 3, scope: !2714, file: !391, line: 249, type: !288)
!2722 = !DILocalVariable(name: "argsize", arg: 4, scope: !2714, file: !391, line: 249, type: !54)
!2723 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2714, file: !391, line: 250, type: !5)
!2724 = !DILocalVariable(name: "flags", arg: 6, scope: !2714, file: !391, line: 250, type: !57)
!2725 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2714, file: !391, line: 251, type: !2717)
!2726 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2714, file: !391, line: 252, type: !288)
!2727 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2714, file: !391, line: 253, type: !288)
!2728 = !DILocalVariable(name: "i", scope: !2714, file: !391, line: 255, type: !54)
!2729 = !DILocalVariable(name: "len", scope: !2714, file: !391, line: 256, type: !54)
!2730 = !DILocalVariable(name: "orig_buffersize", scope: !2714, file: !391, line: 257, type: !54)
!2731 = !DILocalVariable(name: "quote_string", scope: !2714, file: !391, line: 258, type: !288)
!2732 = !DILocalVariable(name: "quote_string_len", scope: !2714, file: !391, line: 259, type: !54)
!2733 = !DILocalVariable(name: "backslash_escapes", scope: !2714, file: !391, line: 260, type: !71)
!2734 = !DILocalVariable(name: "unibyte_locale", scope: !2714, file: !391, line: 261, type: !71)
!2735 = !DILocalVariable(name: "elide_outer_quotes", scope: !2714, file: !391, line: 262, type: !71)
!2736 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2714, file: !391, line: 263, type: !71)
!2737 = !DILocalVariable(name: "encountered_single_quote", scope: !2714, file: !391, line: 264, type: !71)
!2738 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2714, file: !391, line: 265, type: !71)
!2739 = !DILocalVariable(name: "c", scope: !2740, file: !391, line: 394, type: !59)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !391, line: 393, column: 5)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !391, line: 392, column: 3)
!2742 = distinct !DILexicalBlock(scope: !2714, file: !391, line: 392, column: 3)
!2743 = !DILocalVariable(name: "esc", scope: !2740, file: !391, line: 395, type: !59)
!2744 = !DILocalVariable(name: "is_right_quote", scope: !2740, file: !391, line: 396, type: !71)
!2745 = !DILocalVariable(name: "escaping", scope: !2740, file: !391, line: 397, type: !71)
!2746 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2740, file: !391, line: 398, type: !71)
!2747 = !DILocalVariable(name: "m", scope: !2748, file: !391, line: 602, type: !54)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !391, line: 600, column: 11)
!2749 = distinct !DILexicalBlock(scope: !2740, file: !391, line: 418, column: 9)
!2750 = !DILocalVariable(name: "printable", scope: !2748, file: !391, line: 604, type: !71)
!2751 = !DILocalVariable(name: "mbstate", scope: !2752, file: !391, line: 613, type: !2754)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !391, line: 612, column: 15)
!2753 = distinct !DILexicalBlock(scope: !2748, file: !391, line: 606, column: 17)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1595, line: 6, baseType: !2755)
!2755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1597, line: 21, baseType: !2756)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1597, line: 13, size: 64, elements: !2757)
!2757 = !{!2758, !2759}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2756, file: !1597, line: 15, baseType: !57, size: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2756, file: !1597, line: 20, baseType: !2760, size: 32, offset: 32)
!2760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2756, file: !1597, line: 16, size: 32, elements: !2761)
!2761 = !{!2762, !2763}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2760, file: !1597, line: 18, baseType: !94, size: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2760, file: !1597, line: 19, baseType: !1606, size: 32)
!2764 = !DILocalVariable(name: "w", scope: !2765, file: !391, line: 623, type: !1616)
!2765 = distinct !DILexicalBlock(scope: !2752, file: !391, line: 622, column: 19)
!2766 = !DILocalVariable(name: "bytes", scope: !2765, file: !391, line: 624, type: !54)
!2767 = !DILocalVariable(name: "j", scope: !2768, file: !391, line: 649, type: !54)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !391, line: 648, column: 27)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !391, line: 646, column: 29)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !391, line: 641, column: 23)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !391, line: 633, column: 30)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !391, line: 628, column: 30)
!2773 = distinct !DILexicalBlock(scope: !2765, file: !391, line: 626, column: 25)
!2774 = !DILocalVariable(name: "ilim", scope: !2775, file: !391, line: 676, type: !54)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !391, line: 673, column: 15)
!2776 = distinct !DILexicalBlock(scope: !2748, file: !391, line: 672, column: 17)
!2777 = !DILocation(line: 248, column: 33, scope: !2714)
!2778 = !DILocation(line: 248, column: 48, scope: !2714)
!2779 = !DILocation(line: 249, column: 39, scope: !2714)
!2780 = !DILocation(line: 249, column: 51, scope: !2714)
!2781 = !DILocation(line: 250, column: 46, scope: !2714)
!2782 = !DILocation(line: 250, column: 65, scope: !2714)
!2783 = !DILocation(line: 251, column: 47, scope: !2714)
!2784 = !DILocation(line: 252, column: 39, scope: !2714)
!2785 = !DILocation(line: 253, column: 39, scope: !2714)
!2786 = !DILocation(line: 256, column: 10, scope: !2714)
!2787 = !DILocation(line: 257, column: 10, scope: !2714)
!2788 = !DILocation(line: 258, column: 15, scope: !2714)
!2789 = !DILocation(line: 259, column: 10, scope: !2714)
!2790 = !DILocation(line: 260, column: 8, scope: !2714)
!2791 = !DILocation(line: 261, column: 25, scope: !2714)
!2792 = !DILocation(line: 261, column: 36, scope: !2714)
!2793 = !DILocation(line: 262, column: 8, scope: !2714)
!2794 = !DILocation(line: 263, column: 8, scope: !2714)
!2795 = !DILocation(line: 264, column: 8, scope: !2714)
!2796 = !DILocation(line: 265, column: 8, scope: !2714)
!2797 = !DILocation(line: 265, column: 3, scope: !2714)
!2798 = !DILocation(line: 308, column: 3, scope: !2714)
!2799 = !DILocation(line: 315, column: 11, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2714, file: !391, line: 309, column: 5)
!2801 = !DILocation(line: 315, column: 12, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2800, file: !391, line: 315, column: 11)
!2803 = !DILocation(line: 316, column: 9, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !391, line: 316, column: 9)
!2805 = distinct !DILexicalBlock(scope: !2802, file: !391, line: 316, column: 9)
!2806 = !DILocation(line: 316, column: 9, scope: !2805)
!2807 = !DILocation(line: 354, column: 26, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !391, line: 332, column: 11)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !391, line: 331, column: 13)
!2810 = distinct !DILexicalBlock(scope: !2800, file: !391, line: 330, column: 7)
!2811 = !DILocation(line: 355, column: 27, scope: !2808)
!2812 = !DILocation(line: 356, column: 11, scope: !2808)
!2813 = !DILocation(line: 357, column: 14, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2810, file: !391, line: 357, column: 13)
!2815 = !DILocation(line: 357, column: 13, scope: !2810)
!2816 = !DILocation(line: 358, column: 43, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !391, line: 358, column: 11)
!2818 = distinct !DILexicalBlock(scope: !2814, file: !391, line: 358, column: 11)
!2819 = !DILocation(line: 358, column: 11, scope: !2818)
!2820 = !DILocation(line: 359, column: 13, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !391, line: 359, column: 13)
!2822 = distinct !DILexicalBlock(scope: !2817, file: !391, line: 359, column: 13)
!2823 = !DILocation(line: 359, column: 13, scope: !2822)
!2824 = !DILocation(line: 358, column: 70, scope: !2817)
!2825 = distinct !{!2825, !2819, !2826}
!2826 = !DILocation(line: 359, column: 13, scope: !2818)
!2827 = !DILocation(line: 362, column: 28, scope: !2810)
!2828 = !DILocation(line: 364, column: 7, scope: !2800)
!2829 = !DILocation(line: 367, column: 7, scope: !2800)
!2830 = !DILocation(line: 370, column: 7, scope: !2800)
!2831 = !DILocation(line: 373, column: 12, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2800, file: !391, line: 373, column: 11)
!2833 = !DILocation(line: 373, column: 11, scope: !2800)
!2834 = !DILocation(line: 378, column: 12, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2800, file: !391, line: 378, column: 11)
!2836 = !DILocation(line: 378, column: 11, scope: !2800)
!2837 = !DILocation(line: 379, column: 9, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !391, line: 379, column: 9)
!2839 = distinct !DILexicalBlock(scope: !2835, file: !391, line: 379, column: 9)
!2840 = !DILocation(line: 379, column: 9, scope: !2839)
!2841 = !DILocation(line: 386, column: 7, scope: !2800)
!2842 = !DILocation(line: 389, column: 7, scope: !2800)
!2843 = !DILocation(line: 255, column: 10, scope: !2714)
!2844 = !DILocation(line: 392, column: 8, scope: !2742)
!2845 = !DILocation(line: 392, column: 27, scope: !2741)
!2846 = !DILocation(line: 392, column: 19, scope: !2741)
!2847 = !DILocation(line: 392, column: 60, scope: !2741)
!2848 = !DILocation(line: 392, column: 3, scope: !2742)
!2849 = !DILocation(line: 392, column: 41, scope: !2741)
!2850 = !DILocation(line: 392, column: 48, scope: !2741)
!2851 = !DILocation(line: 396, column: 12, scope: !2740)
!2852 = !DILocation(line: 397, column: 12, scope: !2740)
!2853 = !DILocation(line: 398, column: 12, scope: !2740)
!2854 = !DILocation(line: 401, column: 11, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2740, file: !391, line: 400, column: 11)
!2856 = !DILocation(line: 403, column: 17, scope: !2855)
!2857 = !DILocation(line: 404, column: 39, scope: !2855)
!2858 = !DILocation(line: 408, column: 32, scope: !2855)
!2859 = !DILocation(line: 404, column: 19, scope: !2855)
!2860 = !DILocation(line: 404, column: 15, scope: !2855)
!2861 = !DILocation(line: 409, column: 11, scope: !2855)
!2862 = !DILocation(line: 409, column: 26, scope: !2855)
!2863 = !DILocation(line: 409, column: 14, scope: !2855)
!2864 = !DILocation(line: 409, column: 63, scope: !2855)
!2865 = !DILocation(line: 400, column: 11, scope: !2740)
!2866 = !DILocation(line: 416, column: 11, scope: !2740)
!2867 = !DILocation(line: 394, column: 21, scope: !2740)
!2868 = !DILocation(line: 417, column: 7, scope: !2740)
!2869 = !DILocation(line: 420, column: 15, scope: !2749)
!2870 = !DILocation(line: 422, column: 15, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !391, line: 422, column: 15)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !391, line: 421, column: 13)
!2873 = distinct !DILexicalBlock(scope: !2749, file: !391, line: 420, column: 15)
!2874 = !DILocation(line: 422, column: 15, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2871, file: !391, line: 422, column: 15)
!2876 = !DILocation(line: 422, column: 15, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !391, line: 422, column: 15)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !391, line: 422, column: 15)
!2879 = distinct !DILexicalBlock(scope: !2875, file: !391, line: 422, column: 15)
!2880 = !DILocation(line: 422, column: 15, scope: !2878)
!2881 = !DILocation(line: 422, column: 15, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !391, line: 422, column: 15)
!2883 = distinct !DILexicalBlock(scope: !2879, file: !391, line: 422, column: 15)
!2884 = !DILocation(line: 422, column: 15, scope: !2883)
!2885 = !DILocation(line: 422, column: 15, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !391, line: 422, column: 15)
!2887 = distinct !DILexicalBlock(scope: !2879, file: !391, line: 422, column: 15)
!2888 = !DILocation(line: 422, column: 15, scope: !2887)
!2889 = !DILocation(line: 422, column: 15, scope: !2879)
!2890 = !DILocation(line: 422, column: 15, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !391, line: 422, column: 15)
!2892 = distinct !DILexicalBlock(scope: !2871, file: !391, line: 422, column: 15)
!2893 = !DILocation(line: 422, column: 15, scope: !2892)
!2894 = !DILocation(line: 430, column: 19, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2872, file: !391, line: 429, column: 19)
!2896 = !DILocation(line: 430, column: 24, scope: !2895)
!2897 = !DILocation(line: 430, column: 28, scope: !2895)
!2898 = !DILocation(line: 430, column: 38, scope: !2895)
!2899 = !DILocation(line: 430, column: 48, scope: !2895)
!2900 = !DILocation(line: 430, column: 59, scope: !2895)
!2901 = !DILocation(line: 432, column: 19, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !391, line: 432, column: 19)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !391, line: 432, column: 19)
!2904 = distinct !DILexicalBlock(scope: !2895, file: !391, line: 431, column: 17)
!2905 = !DILocation(line: 432, column: 19, scope: !2903)
!2906 = !DILocation(line: 433, column: 19, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !391, line: 433, column: 19)
!2908 = distinct !DILexicalBlock(scope: !2904, file: !391, line: 433, column: 19)
!2909 = !DILocation(line: 433, column: 19, scope: !2908)
!2910 = !DILocation(line: 434, column: 17, scope: !2904)
!2911 = !DILocation(line: 441, column: 20, scope: !2873)
!2912 = !DILocation(line: 446, column: 11, scope: !2749)
!2913 = !DILocation(line: 449, column: 19, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2749, file: !391, line: 447, column: 13)
!2915 = !DILocation(line: 455, column: 19, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2914, file: !391, line: 454, column: 19)
!2917 = !DILocation(line: 455, column: 24, scope: !2916)
!2918 = !DILocation(line: 455, column: 28, scope: !2916)
!2919 = !DILocation(line: 455, column: 38, scope: !2916)
!2920 = !DILocation(line: 455, column: 47, scope: !2916)
!2921 = !DILocation(line: 455, column: 41, scope: !2916)
!2922 = !DILocation(line: 455, column: 52, scope: !2916)
!2923 = !DILocation(line: 454, column: 19, scope: !2914)
!2924 = !DILocation(line: 456, column: 25, scope: !2916)
!2925 = !DILocation(line: 456, column: 17, scope: !2916)
!2926 = !DILocation(line: 463, column: 25, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2916, file: !391, line: 457, column: 19)
!2928 = !DILocation(line: 467, column: 21, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !391, line: 467, column: 21)
!2930 = distinct !DILexicalBlock(scope: !2927, file: !391, line: 467, column: 21)
!2931 = !DILocation(line: 467, column: 21, scope: !2930)
!2932 = !DILocation(line: 468, column: 21, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !391, line: 468, column: 21)
!2934 = distinct !DILexicalBlock(scope: !2927, file: !391, line: 468, column: 21)
!2935 = !DILocation(line: 468, column: 21, scope: !2934)
!2936 = !DILocation(line: 469, column: 21, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !391, line: 469, column: 21)
!2938 = distinct !DILexicalBlock(scope: !2927, file: !391, line: 469, column: 21)
!2939 = !DILocation(line: 469, column: 21, scope: !2938)
!2940 = !DILocation(line: 470, column: 21, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !391, line: 470, column: 21)
!2942 = distinct !DILexicalBlock(scope: !2927, file: !391, line: 470, column: 21)
!2943 = !DILocation(line: 470, column: 21, scope: !2942)
!2944 = !DILocation(line: 471, column: 21, scope: !2927)
!2945 = !DILocation(line: 395, column: 21, scope: !2740)
!2946 = !DILocation(line: 484, column: 31, scope: !2749)
!2947 = !DILocation(line: 485, column: 31, scope: !2749)
!2948 = !DILocation(line: 487, column: 31, scope: !2749)
!2949 = !DILocation(line: 488, column: 31, scope: !2749)
!2950 = !DILocation(line: 489, column: 31, scope: !2749)
!2951 = !DILocation(line: 492, column: 15, scope: !2749)
!2952 = !DILocation(line: 494, column: 19, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !391, line: 493, column: 13)
!2954 = distinct !DILexicalBlock(scope: !2749, file: !391, line: 492, column: 15)
!2955 = !DILocation(line: 501, column: 33, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2749, file: !391, line: 501, column: 15)
!2957 = !DILocation(line: 506, column: 15, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2749, file: !391, line: 505, column: 15)
!2959 = !DILocation(line: 510, column: 15, scope: !2749)
!2960 = !DILocation(line: 518, column: 26, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2749, file: !391, line: 518, column: 15)
!2962 = !DILocation(line: 518, column: 15, scope: !2749)
!2963 = !DILocation(line: 518, column: 40, scope: !2961)
!2964 = !DILocation(line: 518, column: 47, scope: !2961)
!2965 = !DILocation(line: 522, column: 17, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2749, file: !391, line: 522, column: 15)
!2967 = !DILocation(line: 518, column: 18, scope: !2961)
!2968 = !DILocation(line: 518, column: 65, scope: !2961)
!2969 = !DILocation(line: 522, column: 15, scope: !2749)
!2970 = !DILocation(line: 526, column: 11, scope: !2749)
!2971 = !DILocation(line: 541, column: 15, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2749, file: !391, line: 540, column: 15)
!2973 = !DILocation(line: 548, column: 15, scope: !2749)
!2974 = !DILocation(line: 550, column: 19, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !391, line: 549, column: 13)
!2976 = distinct !DILexicalBlock(scope: !2749, file: !391, line: 548, column: 15)
!2977 = !DILocation(line: 553, column: 19, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2975, file: !391, line: 553, column: 19)
!2979 = !DILocation(line: 553, column: 35, scope: !2978)
!2980 = !DILocation(line: 553, column: 30, scope: !2978)
!2981 = !DILocation(line: 562, column: 15, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !391, line: 562, column: 15)
!2983 = distinct !DILexicalBlock(scope: !2975, file: !391, line: 562, column: 15)
!2984 = !DILocation(line: 562, column: 15, scope: !2983)
!2985 = !DILocation(line: 563, column: 15, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !391, line: 563, column: 15)
!2987 = distinct !DILexicalBlock(scope: !2975, file: !391, line: 563, column: 15)
!2988 = !DILocation(line: 563, column: 15, scope: !2987)
!2989 = !DILocation(line: 564, column: 15, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !391, line: 564, column: 15)
!2991 = distinct !DILexicalBlock(scope: !2975, file: !391, line: 564, column: 15)
!2992 = !DILocation(line: 564, column: 15, scope: !2991)
!2993 = !DILocation(line: 566, column: 13, scope: !2975)
!2994 = !DILocation(line: 606, column: 17, scope: !2748)
!2995 = !DILocation(line: 602, column: 20, scope: !2748)
!2996 = !DILocation(line: 609, column: 29, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2753, file: !391, line: 607, column: 15)
!2998 = !DILocation(line: 609, column: 27, scope: !2997)
!2999 = !DILocation(line: 604, column: 18, scope: !2748)
!3000 = !DILocation(line: 610, column: 15, scope: !2997)
!3001 = !DILocation(line: 613, column: 17, scope: !2752)
!3002 = !DILocation(line: 614, column: 17, scope: !2752)
!3003 = !DILocation(line: 618, column: 29, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2752, file: !391, line: 618, column: 21)
!3005 = !DILocation(line: 618, column: 21, scope: !2752)
!3006 = !DILocation(line: 619, column: 29, scope: !3004)
!3007 = !DILocation(line: 619, column: 19, scope: !3004)
!3008 = !DILocation(line: 621, column: 17, scope: !2752)
!3009 = distinct !{!3009, !3008, !3010}
!3010 = !DILocation(line: 667, column: 44, scope: !2752)
!3011 = !DILocation(line: 623, column: 21, scope: !2765)
!3012 = !DILocation(line: 624, column: 56, scope: !2765)
!3013 = !DILocation(line: 624, column: 50, scope: !2765)
!3014 = !DILocation(line: 625, column: 53, scope: !2765)
!3015 = !DILocation(line: 613, column: 27, scope: !2752)
!3016 = !DILocation(line: 623, column: 29, scope: !2765)
!3017 = !DILocation(line: 624, column: 36, scope: !2765)
!3018 = !DILocation(line: 624, column: 28, scope: !2765)
!3019 = !DILocation(line: 626, column: 25, scope: !2765)
!3020 = !DILocation(line: 636, column: 38, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2771, file: !391, line: 634, column: 23)
!3022 = !DILocation(line: 636, column: 48, scope: !3021)
!3023 = !DILocation(line: 636, column: 51, scope: !3021)
!3024 = !DILocation(line: 636, column: 25, scope: !3021)
!3025 = !DILocation(line: 637, column: 28, scope: !3021)
!3026 = !DILocation(line: 636, column: 34, scope: !3021)
!3027 = distinct !{!3027, !3024, !3025}
!3028 = !DILocation(line: 650, column: 43, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !391, line: 650, column: 29)
!3030 = distinct !DILexicalBlock(scope: !2768, file: !391, line: 650, column: 29)
!3031 = !DILocation(line: 647, column: 29, scope: !2769)
!3032 = !DILocation(line: 649, column: 36, scope: !2768)
!3033 = !DILocation(line: 651, column: 49, scope: !3029)
!3034 = !DILocation(line: 651, column: 39, scope: !3029)
!3035 = !DILocation(line: 651, column: 31, scope: !3029)
!3036 = !DILocation(line: 650, column: 53, scope: !3029)
!3037 = !DILocation(line: 650, column: 29, scope: !3030)
!3038 = distinct !{!3038, !3037, !3039}
!3039 = !DILocation(line: 659, column: 33, scope: !3030)
!3040 = !DILocation(line: 666, column: 19, scope: !2752)
!3041 = !DILocation(line: 662, column: 41, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !2770, file: !391, line: 662, column: 29)
!3043 = !DILocation(line: 662, column: 31, scope: !3042)
!3044 = !DILocation(line: 662, column: 29, scope: !2770)
!3045 = !DILocation(line: 664, column: 27, scope: !2770)
!3046 = !DILocation(line: 667, column: 26, scope: !2752)
!3047 = !DILocation(line: 667, column: 24, scope: !2752)
!3048 = !DILocation(line: 666, column: 19, scope: !2765)
!3049 = !DILocation(line: 668, column: 15, scope: !2753)
!3050 = !DILocation(line: 670, column: 40, scope: !2748)
!3051 = !DILocation(line: 672, column: 19, scope: !2776)
!3052 = !DILocation(line: 672, column: 45, scope: !2776)
!3053 = !DILocation(line: 672, column: 23, scope: !2776)
!3054 = !DILocation(line: 676, column: 33, scope: !2775)
!3055 = !DILocation(line: 676, column: 24, scope: !2775)
!3056 = !DILocation(line: 678, column: 17, scope: !2775)
!3057 = !DILocation(line: 680, column: 43, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !391, line: 680, column: 25)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !391, line: 679, column: 19)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !391, line: 678, column: 17)
!3061 = distinct !DILexicalBlock(scope: !2775, file: !391, line: 678, column: 17)
!3062 = !DILocation(line: 682, column: 25, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !391, line: 682, column: 25)
!3064 = distinct !DILexicalBlock(scope: !3058, file: !391, line: 681, column: 23)
!3065 = !DILocation(line: 682, column: 25, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3063, file: !391, line: 682, column: 25)
!3067 = !DILocation(line: 682, column: 25, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !391, line: 682, column: 25)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !391, line: 682, column: 25)
!3070 = distinct !DILexicalBlock(scope: !3066, file: !391, line: 682, column: 25)
!3071 = !DILocation(line: 682, column: 25, scope: !3069)
!3072 = !DILocation(line: 682, column: 25, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !391, line: 682, column: 25)
!3074 = distinct !DILexicalBlock(scope: !3070, file: !391, line: 682, column: 25)
!3075 = !DILocation(line: 682, column: 25, scope: !3074)
!3076 = !DILocation(line: 682, column: 25, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !391, line: 682, column: 25)
!3078 = distinct !DILexicalBlock(scope: !3070, file: !391, line: 682, column: 25)
!3079 = !DILocation(line: 682, column: 25, scope: !3078)
!3080 = !DILocation(line: 682, column: 25, scope: !3070)
!3081 = !DILocation(line: 682, column: 25, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !391, line: 682, column: 25)
!3083 = distinct !DILexicalBlock(scope: !3063, file: !391, line: 682, column: 25)
!3084 = !DILocation(line: 682, column: 25, scope: !3083)
!3085 = !DILocation(line: 683, column: 25, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !391, line: 683, column: 25)
!3087 = distinct !DILexicalBlock(scope: !3064, file: !391, line: 683, column: 25)
!3088 = !DILocation(line: 683, column: 25, scope: !3087)
!3089 = !DILocation(line: 684, column: 25, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !391, line: 684, column: 25)
!3091 = distinct !DILexicalBlock(scope: !3064, file: !391, line: 684, column: 25)
!3092 = !DILocation(line: 684, column: 25, scope: !3091)
!3093 = !DILocation(line: 685, column: 38, scope: !3064)
!3094 = !DILocation(line: 685, column: 33, scope: !3064)
!3095 = !DILocation(line: 686, column: 23, scope: !3064)
!3096 = !DILocation(line: 687, column: 30, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3058, file: !391, line: 687, column: 30)
!3098 = !DILocation(line: 687, column: 30, scope: !3058)
!3099 = !DILocation(line: 689, column: 25, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !391, line: 689, column: 25)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !391, line: 689, column: 25)
!3102 = distinct !DILexicalBlock(scope: !3097, file: !391, line: 688, column: 23)
!3103 = !DILocation(line: 689, column: 25, scope: !3101)
!3104 = !DILocation(line: 691, column: 23, scope: !3102)
!3105 = !DILocation(line: 692, column: 35, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3059, file: !391, line: 692, column: 25)
!3107 = !DILocation(line: 692, column: 30, scope: !3106)
!3108 = !DILocation(line: 692, column: 25, scope: !3059)
!3109 = !DILocation(line: 694, column: 21, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !391, line: 694, column: 21)
!3111 = distinct !DILexicalBlock(scope: !3059, file: !391, line: 694, column: 21)
!3112 = !DILocation(line: 694, column: 21, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !391, line: 694, column: 21)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !391, line: 694, column: 21)
!3115 = distinct !DILexicalBlock(scope: !3110, file: !391, line: 694, column: 21)
!3116 = !DILocation(line: 694, column: 21, scope: !3114)
!3117 = !DILocation(line: 694, column: 21, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !391, line: 694, column: 21)
!3119 = distinct !DILexicalBlock(scope: !3115, file: !391, line: 694, column: 21)
!3120 = !DILocation(line: 694, column: 21, scope: !3119)
!3121 = !DILocation(line: 694, column: 21, scope: !3115)
!3122 = !DILocation(line: 695, column: 21, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !391, line: 695, column: 21)
!3124 = distinct !DILexicalBlock(scope: !3059, file: !391, line: 695, column: 21)
!3125 = !DILocation(line: 695, column: 21, scope: !3124)
!3126 = !DILocation(line: 696, column: 25, scope: !3059)
!3127 = !DILocation(line: 678, column: 17, scope: !3060)
!3128 = distinct !{!3128, !3129, !3130}
!3129 = !DILocation(line: 678, column: 17, scope: !3061)
!3130 = !DILocation(line: 697, column: 19, scope: !3061)
!3131 = !DILocation(line: 704, column: 34, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !2740, file: !391, line: 704, column: 11)
!3133 = !DILocation(line: 706, column: 14, scope: !3132)
!3134 = !DILocation(line: 707, column: 14, scope: !3132)
!3135 = !DILocation(line: 707, column: 35, scope: !3132)
!3136 = !DILocation(line: 707, column: 17, scope: !3132)
!3137 = !DILocation(line: 707, column: 53, scope: !3132)
!3138 = !DILocation(line: 707, column: 47, scope: !3132)
!3139 = !DILocation(line: 707, column: 65, scope: !3132)
!3140 = !DILocation(line: 708, column: 15, scope: !3132)
!3141 = !DILocation(line: 708, column: 11, scope: !3132)
!3142 = !DILocation(line: 704, column: 11, scope: !2740)
!3143 = !DILocation(line: 712, column: 7, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !2740, file: !391, line: 712, column: 7)
!3145 = !DILocation(line: 712, column: 7, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3144, file: !391, line: 712, column: 7)
!3147 = !DILocation(line: 712, column: 7, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !391, line: 712, column: 7)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !391, line: 712, column: 7)
!3150 = distinct !DILexicalBlock(scope: !3146, file: !391, line: 712, column: 7)
!3151 = !DILocation(line: 712, column: 7, scope: !3149)
!3152 = !DILocation(line: 712, column: 7, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !391, line: 712, column: 7)
!3154 = distinct !DILexicalBlock(scope: !3150, file: !391, line: 712, column: 7)
!3155 = !DILocation(line: 712, column: 7, scope: !3154)
!3156 = !DILocation(line: 712, column: 7, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !391, line: 712, column: 7)
!3158 = distinct !DILexicalBlock(scope: !3150, file: !391, line: 712, column: 7)
!3159 = !DILocation(line: 712, column: 7, scope: !3158)
!3160 = !DILocation(line: 712, column: 7, scope: !3150)
!3161 = !DILocation(line: 712, column: 7, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !391, line: 712, column: 7)
!3163 = distinct !DILexicalBlock(scope: !3144, file: !391, line: 712, column: 7)
!3164 = !DILocation(line: 712, column: 7, scope: !3163)
!3165 = !DILocation(line: 715, column: 7, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !391, line: 715, column: 7)
!3167 = distinct !DILexicalBlock(scope: !2740, file: !391, line: 715, column: 7)
!3168 = !DILocation(line: 715, column: 7, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !391, line: 715, column: 7)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !391, line: 715, column: 7)
!3171 = distinct !DILexicalBlock(scope: !3166, file: !391, line: 715, column: 7)
!3172 = !DILocation(line: 715, column: 7, scope: !3170)
!3173 = !DILocation(line: 715, column: 7, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !391, line: 715, column: 7)
!3175 = distinct !DILexicalBlock(scope: !3171, file: !391, line: 715, column: 7)
!3176 = !DILocation(line: 715, column: 7, scope: !3175)
!3177 = !DILocation(line: 715, column: 7, scope: !3171)
!3178 = !DILocation(line: 716, column: 7, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !391, line: 716, column: 7)
!3180 = distinct !DILexicalBlock(scope: !2740, file: !391, line: 716, column: 7)
!3181 = !DILocation(line: 716, column: 7, scope: !3180)
!3182 = !DILocation(line: 718, column: 13, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !2740, file: !391, line: 718, column: 11)
!3184 = !DILocation(line: 718, column: 11, scope: !2740)
!3185 = !DILocation(line: 720, column: 5, scope: !2741)
!3186 = !DILocation(line: 392, column: 75, scope: !2741)
!3187 = !DILocation(line: 392, column: 3, scope: !2741)
!3188 = distinct !{!3188, !2848, !3189}
!3189 = !DILocation(line: 720, column: 5, scope: !2742)
!3190 = !DILocation(line: 722, column: 11, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !2714, file: !391, line: 722, column: 7)
!3192 = !DILocation(line: 722, column: 16, scope: !3191)
!3193 = !DILocation(line: 730, column: 51, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !2714, file: !391, line: 730, column: 7)
!3195 = !DILocation(line: 731, column: 10, scope: !3194)
!3196 = !DILocation(line: 733, column: 11, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !391, line: 733, column: 11)
!3198 = distinct !DILexicalBlock(scope: !3194, file: !391, line: 732, column: 5)
!3199 = !DILocation(line: 733, column: 11, scope: !3198)
!3200 = !DILocation(line: 734, column: 16, scope: !3197)
!3201 = !DILocation(line: 734, column: 9, scope: !3197)
!3202 = !DILocation(line: 738, column: 18, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3197, file: !391, line: 738, column: 16)
!3204 = !DILocation(line: 738, column: 32, scope: !3203)
!3205 = !DILocation(line: 738, column: 29, scope: !3203)
!3206 = !DILocation(line: 747, column: 7, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !2714, file: !391, line: 747, column: 7)
!3208 = !DILocation(line: 747, column: 20, scope: !3207)
!3209 = !DILocation(line: 748, column: 12, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !391, line: 748, column: 5)
!3211 = distinct !DILexicalBlock(scope: !3207, file: !391, line: 748, column: 5)
!3212 = !DILocation(line: 748, column: 5, scope: !3211)
!3213 = !DILocation(line: 749, column: 7, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !391, line: 749, column: 7)
!3215 = distinct !DILexicalBlock(scope: !3210, file: !391, line: 749, column: 7)
!3216 = !DILocation(line: 749, column: 7, scope: !3215)
!3217 = !DILocation(line: 748, column: 39, scope: !3210)
!3218 = distinct !{!3218, !3212, !3219}
!3219 = !DILocation(line: 749, column: 7, scope: !3211)
!3220 = !DILocation(line: 751, column: 11, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !2714, file: !391, line: 751, column: 7)
!3222 = !DILocation(line: 751, column: 7, scope: !2714)
!3223 = !DILocation(line: 752, column: 5, scope: !3221)
!3224 = !DILocation(line: 752, column: 17, scope: !3221)
!3225 = !DILocation(line: 758, column: 21, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !2714, file: !391, line: 758, column: 7)
!3227 = !DILocation(line: 758, column: 54, scope: !3226)
!3228 = !DILocation(line: 758, column: 51, scope: !3226)
!3229 = !DILocation(line: 762, column: 42, scope: !2714)
!3230 = !DILocation(line: 760, column: 10, scope: !2714)
!3231 = !DILocation(line: 760, column: 3, scope: !2714)
!3232 = !DILocation(line: 764, column: 1, scope: !2714)
!3233 = distinct !DISubprogram(name: "gettext_quote", scope: !391, file: !391, line: 199, type: !3234, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3236)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!288, !288, !5}
!3236 = !{!3237, !3238, !3239, !3240}
!3237 = !DILocalVariable(name: "msgid", arg: 1, scope: !3233, file: !391, line: 199, type: !288)
!3238 = !DILocalVariable(name: "s", arg: 2, scope: !3233, file: !391, line: 199, type: !5)
!3239 = !DILocalVariable(name: "translation", scope: !3233, file: !391, line: 201, type: !288)
!3240 = !DILocalVariable(name: "locale_code", scope: !3233, file: !391, line: 202, type: !288)
!3241 = !DILocation(line: 199, column: 28, scope: !3233)
!3242 = !DILocation(line: 199, column: 54, scope: !3233)
!3243 = !DILocation(line: 201, column: 29, scope: !3233)
!3244 = !DILocation(line: 201, column: 15, scope: !3233)
!3245 = !DILocation(line: 204, column: 19, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3233, file: !391, line: 204, column: 7)
!3247 = !DILocation(line: 204, column: 7, scope: !3233)
!3248 = !DILocation(line: 225, column: 17, scope: !3233)
!3249 = !DILocation(line: 202, column: 15, scope: !3233)
!3250 = !DILocalVariable(name: "s2", arg: 2, scope: !3251, file: !3252, line: 160, type: !288)
!3251 = distinct !DISubprogram(name: "strcaseeq0", scope: !3252, file: !3252, line: 160, type: !3253, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3255)
!3252 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!57, !288, !288, !52, !52, !52, !52, !52, !52, !52, !52, !52}
!3255 = !{!3256, !3250, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265}
!3256 = !DILocalVariable(name: "s1", arg: 1, scope: !3251, file: !3252, line: 160, type: !288)
!3257 = !DILocalVariable(name: "s20", arg: 3, scope: !3251, file: !3252, line: 160, type: !52)
!3258 = !DILocalVariable(name: "s21", arg: 4, scope: !3251, file: !3252, line: 160, type: !52)
!3259 = !DILocalVariable(name: "s22", arg: 5, scope: !3251, file: !3252, line: 160, type: !52)
!3260 = !DILocalVariable(name: "s23", arg: 6, scope: !3251, file: !3252, line: 160, type: !52)
!3261 = !DILocalVariable(name: "s24", arg: 7, scope: !3251, file: !3252, line: 160, type: !52)
!3262 = !DILocalVariable(name: "s25", arg: 8, scope: !3251, file: !3252, line: 160, type: !52)
!3263 = !DILocalVariable(name: "s26", arg: 9, scope: !3251, file: !3252, line: 160, type: !52)
!3264 = !DILocalVariable(name: "s27", arg: 10, scope: !3251, file: !3252, line: 160, type: !52)
!3265 = !DILocalVariable(name: "s28", arg: 11, scope: !3251, file: !3252, line: 160, type: !52)
!3266 = !DILocation(line: 160, column: 41, scope: !3251, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 226, column: 7, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3233, file: !391, line: 226, column: 7)
!3269 = !DILocation(line: 160, column: 120, scope: !3251, inlinedAt: !3267)
!3270 = !DILocation(line: 160, column: 130, scope: !3251, inlinedAt: !3267)
!3271 = !DILocation(line: 162, column: 7, scope: !3272, inlinedAt: !3267)
!3272 = distinct !DILexicalBlock(scope: !3251, file: !3252, line: 162, column: 7)
!3273 = !DILocalVariable(name: "s2", arg: 2, scope: !3274, file: !3252, line: 146, type: !288)
!3274 = distinct !DISubprogram(name: "strcaseeq1", scope: !3252, file: !3252, line: 146, type: !3275, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3277)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!57, !288, !288, !52, !52, !52, !52, !52, !52, !52, !52}
!3277 = !{!3278, !3273, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286}
!3278 = !DILocalVariable(name: "s1", arg: 1, scope: !3274, file: !3252, line: 146, type: !288)
!3279 = !DILocalVariable(name: "s21", arg: 3, scope: !3274, file: !3252, line: 146, type: !52)
!3280 = !DILocalVariable(name: "s22", arg: 4, scope: !3274, file: !3252, line: 146, type: !52)
!3281 = !DILocalVariable(name: "s23", arg: 5, scope: !3274, file: !3252, line: 146, type: !52)
!3282 = !DILocalVariable(name: "s24", arg: 6, scope: !3274, file: !3252, line: 146, type: !52)
!3283 = !DILocalVariable(name: "s25", arg: 7, scope: !3274, file: !3252, line: 146, type: !52)
!3284 = !DILocalVariable(name: "s26", arg: 8, scope: !3274, file: !3252, line: 146, type: !52)
!3285 = !DILocalVariable(name: "s27", arg: 9, scope: !3274, file: !3252, line: 146, type: !52)
!3286 = !DILocalVariable(name: "s28", arg: 10, scope: !3274, file: !3252, line: 146, type: !52)
!3287 = !DILocation(line: 146, column: 41, scope: !3274, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 167, column: 16, scope: !3289, inlinedAt: !3267)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !3252, line: 164, column: 11)
!3290 = distinct !DILexicalBlock(scope: !3272, file: !3252, line: 163, column: 5)
!3291 = !DILocation(line: 146, column: 110, scope: !3274, inlinedAt: !3288)
!3292 = !DILocation(line: 146, column: 120, scope: !3274, inlinedAt: !3288)
!3293 = !DILocation(line: 148, column: 7, scope: !3294, inlinedAt: !3288)
!3294 = distinct !DILexicalBlock(scope: !3274, file: !3252, line: 148, column: 7)
!3295 = !DILocalVariable(name: "s2", arg: 2, scope: !3296, file: !3252, line: 132, type: !288)
!3296 = distinct !DISubprogram(name: "strcaseeq2", scope: !3252, file: !3252, line: 132, type: !3297, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3299)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!57, !288, !288, !52, !52, !52, !52, !52, !52, !52}
!3299 = !{!3300, !3295, !3301, !3302, !3303, !3304, !3305, !3306, !3307}
!3300 = !DILocalVariable(name: "s1", arg: 1, scope: !3296, file: !3252, line: 132, type: !288)
!3301 = !DILocalVariable(name: "s22", arg: 3, scope: !3296, file: !3252, line: 132, type: !52)
!3302 = !DILocalVariable(name: "s23", arg: 4, scope: !3296, file: !3252, line: 132, type: !52)
!3303 = !DILocalVariable(name: "s24", arg: 5, scope: !3296, file: !3252, line: 132, type: !52)
!3304 = !DILocalVariable(name: "s25", arg: 6, scope: !3296, file: !3252, line: 132, type: !52)
!3305 = !DILocalVariable(name: "s26", arg: 7, scope: !3296, file: !3252, line: 132, type: !52)
!3306 = !DILocalVariable(name: "s27", arg: 8, scope: !3296, file: !3252, line: 132, type: !52)
!3307 = !DILocalVariable(name: "s28", arg: 9, scope: !3296, file: !3252, line: 132, type: !52)
!3308 = !DILocation(line: 132, column: 41, scope: !3296, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 153, column: 16, scope: !3310, inlinedAt: !3288)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !3252, line: 150, column: 11)
!3311 = distinct !DILexicalBlock(scope: !3294, file: !3252, line: 149, column: 5)
!3312 = !DILocation(line: 132, column: 100, scope: !3296, inlinedAt: !3309)
!3313 = !DILocation(line: 132, column: 110, scope: !3296, inlinedAt: !3309)
!3314 = !DILocation(line: 134, column: 7, scope: !3315, inlinedAt: !3309)
!3315 = distinct !DILexicalBlock(scope: !3296, file: !3252, line: 134, column: 7)
!3316 = !DILocalVariable(name: "s2", arg: 2, scope: !3317, file: !3252, line: 118, type: !288)
!3317 = distinct !DISubprogram(name: "strcaseeq3", scope: !3252, file: !3252, line: 118, type: !3318, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3320)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!57, !288, !288, !52, !52, !52, !52, !52, !52}
!3320 = !{!3321, !3316, !3322, !3323, !3324, !3325, !3326, !3327}
!3321 = !DILocalVariable(name: "s1", arg: 1, scope: !3317, file: !3252, line: 118, type: !288)
!3322 = !DILocalVariable(name: "s23", arg: 3, scope: !3317, file: !3252, line: 118, type: !52)
!3323 = !DILocalVariable(name: "s24", arg: 4, scope: !3317, file: !3252, line: 118, type: !52)
!3324 = !DILocalVariable(name: "s25", arg: 5, scope: !3317, file: !3252, line: 118, type: !52)
!3325 = !DILocalVariable(name: "s26", arg: 6, scope: !3317, file: !3252, line: 118, type: !52)
!3326 = !DILocalVariable(name: "s27", arg: 7, scope: !3317, file: !3252, line: 118, type: !52)
!3327 = !DILocalVariable(name: "s28", arg: 8, scope: !3317, file: !3252, line: 118, type: !52)
!3328 = !DILocation(line: 118, column: 41, scope: !3317, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 139, column: 16, scope: !3330, inlinedAt: !3309)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !3252, line: 136, column: 11)
!3331 = distinct !DILexicalBlock(scope: !3315, file: !3252, line: 135, column: 5)
!3332 = !DILocation(line: 118, column: 90, scope: !3317, inlinedAt: !3329)
!3333 = !DILocation(line: 118, column: 100, scope: !3317, inlinedAt: !3329)
!3334 = !DILocation(line: 120, column: 7, scope: !3335, inlinedAt: !3329)
!3335 = distinct !DILexicalBlock(scope: !3317, file: !3252, line: 120, column: 7)
!3336 = !DILocation(line: 120, column: 7, scope: !3317, inlinedAt: !3329)
!3337 = !DILocalVariable(name: "s2", arg: 2, scope: !3338, file: !3252, line: 104, type: !288)
!3338 = distinct !DISubprogram(name: "strcaseeq4", scope: !3252, file: !3252, line: 104, type: !3339, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3341)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!57, !288, !288, !52, !52, !52, !52, !52}
!3341 = !{!3342, !3337, !3343, !3344, !3345, !3346, !3347}
!3342 = !DILocalVariable(name: "s1", arg: 1, scope: !3338, file: !3252, line: 104, type: !288)
!3343 = !DILocalVariable(name: "s24", arg: 3, scope: !3338, file: !3252, line: 104, type: !52)
!3344 = !DILocalVariable(name: "s25", arg: 4, scope: !3338, file: !3252, line: 104, type: !52)
!3345 = !DILocalVariable(name: "s26", arg: 5, scope: !3338, file: !3252, line: 104, type: !52)
!3346 = !DILocalVariable(name: "s27", arg: 6, scope: !3338, file: !3252, line: 104, type: !52)
!3347 = !DILocalVariable(name: "s28", arg: 7, scope: !3338, file: !3252, line: 104, type: !52)
!3348 = !DILocation(line: 104, column: 41, scope: !3338, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 125, column: 16, scope: !3350, inlinedAt: !3329)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !3252, line: 122, column: 11)
!3351 = distinct !DILexicalBlock(scope: !3335, file: !3252, line: 121, column: 5)
!3352 = !DILocation(line: 104, column: 80, scope: !3338, inlinedAt: !3349)
!3353 = !DILocation(line: 104, column: 90, scope: !3338, inlinedAt: !3349)
!3354 = !DILocation(line: 106, column: 7, scope: !3355, inlinedAt: !3349)
!3355 = distinct !DILexicalBlock(scope: !3338, file: !3252, line: 106, column: 7)
!3356 = !DILocation(line: 106, column: 7, scope: !3338, inlinedAt: !3349)
!3357 = !DILocalVariable(name: "s2", arg: 2, scope: !3358, file: !3252, line: 90, type: !288)
!3358 = distinct !DISubprogram(name: "strcaseeq5", scope: !3252, file: !3252, line: 90, type: !3359, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3361)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!57, !288, !288, !52, !52, !52, !52}
!3361 = !{!3362, !3357, !3363, !3364, !3365, !3366}
!3362 = !DILocalVariable(name: "s1", arg: 1, scope: !3358, file: !3252, line: 90, type: !288)
!3363 = !DILocalVariable(name: "s25", arg: 3, scope: !3358, file: !3252, line: 90, type: !52)
!3364 = !DILocalVariable(name: "s26", arg: 4, scope: !3358, file: !3252, line: 90, type: !52)
!3365 = !DILocalVariable(name: "s27", arg: 5, scope: !3358, file: !3252, line: 90, type: !52)
!3366 = !DILocalVariable(name: "s28", arg: 6, scope: !3358, file: !3252, line: 90, type: !52)
!3367 = !DILocation(line: 90, column: 41, scope: !3358, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 111, column: 16, scope: !3369, inlinedAt: !3349)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !3252, line: 108, column: 11)
!3370 = distinct !DILexicalBlock(scope: !3355, file: !3252, line: 107, column: 5)
!3371 = !DILocation(line: 90, column: 70, scope: !3358, inlinedAt: !3368)
!3372 = !DILocation(line: 90, column: 80, scope: !3358, inlinedAt: !3368)
!3373 = !DILocation(line: 92, column: 7, scope: !3374, inlinedAt: !3368)
!3374 = distinct !DILexicalBlock(scope: !3358, file: !3252, line: 92, column: 7)
!3375 = !DILocation(line: 92, column: 7, scope: !3358, inlinedAt: !3368)
!3376 = !DILocation(line: 227, column: 12, scope: !3268)
!3377 = !DILocation(line: 227, column: 21, scope: !3268)
!3378 = !DILocation(line: 227, column: 5, scope: !3268)
!3379 = !DILocation(line: 146, column: 41, scope: !3274, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 167, column: 16, scope: !3289, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 228, column: 7, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3233, file: !391, line: 228, column: 7)
!3383 = !DILocation(line: 146, column: 110, scope: !3274, inlinedAt: !3380)
!3384 = !DILocation(line: 146, column: 120, scope: !3274, inlinedAt: !3380)
!3385 = !DILocation(line: 148, column: 7, scope: !3294, inlinedAt: !3380)
!3386 = !DILocation(line: 132, column: 41, scope: !3296, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 153, column: 16, scope: !3310, inlinedAt: !3380)
!3388 = !DILocation(line: 132, column: 100, scope: !3296, inlinedAt: !3387)
!3389 = !DILocation(line: 132, column: 110, scope: !3296, inlinedAt: !3387)
!3390 = !DILocation(line: 134, column: 7, scope: !3315, inlinedAt: !3387)
!3391 = !DILocation(line: 134, column: 7, scope: !3296, inlinedAt: !3387)
!3392 = !DILocation(line: 118, column: 41, scope: !3317, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 139, column: 16, scope: !3330, inlinedAt: !3387)
!3394 = !DILocation(line: 118, column: 90, scope: !3317, inlinedAt: !3393)
!3395 = !DILocation(line: 118, column: 100, scope: !3317, inlinedAt: !3393)
!3396 = !DILocation(line: 120, column: 7, scope: !3335, inlinedAt: !3393)
!3397 = !DILocation(line: 120, column: 7, scope: !3317, inlinedAt: !3393)
!3398 = !DILocation(line: 104, column: 41, scope: !3338, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 125, column: 16, scope: !3350, inlinedAt: !3393)
!3400 = !DILocation(line: 104, column: 80, scope: !3338, inlinedAt: !3399)
!3401 = !DILocation(line: 104, column: 90, scope: !3338, inlinedAt: !3399)
!3402 = !DILocation(line: 106, column: 7, scope: !3355, inlinedAt: !3399)
!3403 = !DILocation(line: 106, column: 7, scope: !3338, inlinedAt: !3399)
!3404 = !DILocation(line: 90, column: 41, scope: !3358, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 111, column: 16, scope: !3369, inlinedAt: !3399)
!3406 = !DILocation(line: 90, column: 70, scope: !3358, inlinedAt: !3405)
!3407 = !DILocation(line: 90, column: 80, scope: !3358, inlinedAt: !3405)
!3408 = !DILocation(line: 92, column: 7, scope: !3374, inlinedAt: !3405)
!3409 = !DILocation(line: 92, column: 7, scope: !3358, inlinedAt: !3405)
!3410 = !DILocalVariable(name: "s2", arg: 2, scope: !3411, file: !3252, line: 76, type: !288)
!3411 = distinct !DISubprogram(name: "strcaseeq6", scope: !3252, file: !3252, line: 76, type: !3412, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3414)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!57, !288, !288, !52, !52, !52}
!3414 = !{!3415, !3410, !3416, !3417, !3418}
!3415 = !DILocalVariable(name: "s1", arg: 1, scope: !3411, file: !3252, line: 76, type: !288)
!3416 = !DILocalVariable(name: "s26", arg: 3, scope: !3411, file: !3252, line: 76, type: !52)
!3417 = !DILocalVariable(name: "s27", arg: 4, scope: !3411, file: !3252, line: 76, type: !52)
!3418 = !DILocalVariable(name: "s28", arg: 5, scope: !3411, file: !3252, line: 76, type: !52)
!3419 = !DILocation(line: 76, column: 41, scope: !3411, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 97, column: 16, scope: !3421, inlinedAt: !3405)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !3252, line: 94, column: 11)
!3422 = distinct !DILexicalBlock(scope: !3374, file: !3252, line: 93, column: 5)
!3423 = !DILocation(line: 76, column: 60, scope: !3411, inlinedAt: !3420)
!3424 = !DILocation(line: 76, column: 70, scope: !3411, inlinedAt: !3420)
!3425 = !DILocation(line: 78, column: 7, scope: !3426, inlinedAt: !3420)
!3426 = distinct !DILexicalBlock(scope: !3411, file: !3252, line: 78, column: 7)
!3427 = !DILocation(line: 78, column: 7, scope: !3411, inlinedAt: !3420)
!3428 = !DILocalVariable(name: "s2", arg: 2, scope: !3429, file: !3252, line: 62, type: !288)
!3429 = distinct !DISubprogram(name: "strcaseeq7", scope: !3252, file: !3252, line: 62, type: !3430, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!57, !288, !288, !52, !52}
!3432 = !{!3433, !3428, !3434, !3435}
!3433 = !DILocalVariable(name: "s1", arg: 1, scope: !3429, file: !3252, line: 62, type: !288)
!3434 = !DILocalVariable(name: "s27", arg: 3, scope: !3429, file: !3252, line: 62, type: !52)
!3435 = !DILocalVariable(name: "s28", arg: 4, scope: !3429, file: !3252, line: 62, type: !52)
!3436 = !DILocation(line: 62, column: 41, scope: !3429, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 83, column: 16, scope: !3438, inlinedAt: !3420)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !3252, line: 80, column: 11)
!3439 = distinct !DILexicalBlock(scope: !3426, file: !3252, line: 79, column: 5)
!3440 = !DILocation(line: 62, column: 50, scope: !3429, inlinedAt: !3437)
!3441 = !DILocation(line: 62, column: 60, scope: !3429, inlinedAt: !3437)
!3442 = !DILocation(line: 64, column: 7, scope: !3443, inlinedAt: !3437)
!3443 = distinct !DILexicalBlock(scope: !3429, file: !3252, line: 64, column: 7)
!3444 = !DILocation(line: 228, column: 7, scope: !3233)
!3445 = !DILocation(line: 229, column: 12, scope: !3382)
!3446 = !DILocation(line: 229, column: 21, scope: !3382)
!3447 = !DILocation(line: 229, column: 5, scope: !3382)
!3448 = !DILocation(line: 231, column: 13, scope: !3233)
!3449 = !DILocation(line: 231, column: 11, scope: !3233)
!3450 = !DILocation(line: 231, column: 3, scope: !3233)
!3451 = !DILocation(line: 232, column: 1, scope: !3233)
!3452 = distinct !DISubprogram(name: "quotearg_alloc", scope: !391, file: !391, line: 791, type: !3453, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3455)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!51, !288, !54, !2586}
!3455 = !{!3456, !3457, !3458}
!3456 = !DILocalVariable(name: "arg", arg: 1, scope: !3452, file: !391, line: 791, type: !288)
!3457 = !DILocalVariable(name: "argsize", arg: 2, scope: !3452, file: !391, line: 791, type: !54)
!3458 = !DILocalVariable(name: "o", arg: 3, scope: !3452, file: !391, line: 792, type: !2586)
!3459 = !DILocation(line: 791, column: 29, scope: !3452)
!3460 = !DILocation(line: 791, column: 41, scope: !3452)
!3461 = !DILocation(line: 792, column: 47, scope: !3452)
!3462 = !DILocalVariable(name: "arg", arg: 1, scope: !3463, file: !391, line: 804, type: !288)
!3463 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !391, file: !391, line: 804, type: !3464, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3466)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!51, !288, !54, !129, !2586}
!3466 = !{!3462, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474}
!3467 = !DILocalVariable(name: "argsize", arg: 2, scope: !3463, file: !391, line: 804, type: !54)
!3468 = !DILocalVariable(name: "size", arg: 3, scope: !3463, file: !391, line: 804, type: !129)
!3469 = !DILocalVariable(name: "o", arg: 4, scope: !3463, file: !391, line: 805, type: !2586)
!3470 = !DILocalVariable(name: "p", scope: !3463, file: !391, line: 807, type: !2586)
!3471 = !DILocalVariable(name: "e", scope: !3463, file: !391, line: 808, type: !57)
!3472 = !DILocalVariable(name: "flags", scope: !3463, file: !391, line: 810, type: !57)
!3473 = !DILocalVariable(name: "bufsize", scope: !3463, file: !391, line: 811, type: !54)
!3474 = !DILocalVariable(name: "buf", scope: !3463, file: !391, line: 815, type: !51)
!3475 = !DILocation(line: 804, column: 33, scope: !3463, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 794, column: 10, scope: !3452)
!3477 = !DILocation(line: 804, column: 45, scope: !3463, inlinedAt: !3476)
!3478 = !DILocation(line: 804, column: 62, scope: !3463, inlinedAt: !3476)
!3479 = !DILocation(line: 805, column: 51, scope: !3463, inlinedAt: !3476)
!3480 = !DILocation(line: 807, column: 37, scope: !3463, inlinedAt: !3476)
!3481 = !DILocation(line: 807, column: 33, scope: !3463, inlinedAt: !3476)
!3482 = !DILocation(line: 808, column: 11, scope: !3463, inlinedAt: !3476)
!3483 = !DILocation(line: 808, column: 7, scope: !3463, inlinedAt: !3476)
!3484 = !DILocation(line: 810, column: 18, scope: !3463, inlinedAt: !3476)
!3485 = !DILocation(line: 810, column: 24, scope: !3463, inlinedAt: !3476)
!3486 = !DILocation(line: 810, column: 7, scope: !3463, inlinedAt: !3476)
!3487 = !DILocation(line: 811, column: 69, scope: !3463, inlinedAt: !3476)
!3488 = !DILocation(line: 812, column: 53, scope: !3463, inlinedAt: !3476)
!3489 = !DILocation(line: 813, column: 49, scope: !3463, inlinedAt: !3476)
!3490 = !DILocation(line: 814, column: 49, scope: !3463, inlinedAt: !3476)
!3491 = !DILocation(line: 811, column: 20, scope: !3463, inlinedAt: !3476)
!3492 = !DILocation(line: 814, column: 62, scope: !3463, inlinedAt: !3476)
!3493 = !DILocation(line: 811, column: 10, scope: !3463, inlinedAt: !3476)
!3494 = !DILocalVariable(name: "n", arg: 1, scope: !3495, file: !1066, line: 220, type: !54)
!3495 = distinct !DISubprogram(name: "xcharalloc", scope: !1066, file: !1066, line: 220, type: !3496, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3498)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!51, !54}
!3498 = !{!3494}
!3499 = !DILocation(line: 220, column: 20, scope: !3495, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 815, column: 15, scope: !3463, inlinedAt: !3476)
!3501 = !DILocation(line: 222, column: 10, scope: !3495, inlinedAt: !3500)
!3502 = !DILocation(line: 815, column: 9, scope: !3463, inlinedAt: !3476)
!3503 = !DILocation(line: 816, column: 60, scope: !3463, inlinedAt: !3476)
!3504 = !DILocation(line: 818, column: 32, scope: !3463, inlinedAt: !3476)
!3505 = !DILocation(line: 818, column: 47, scope: !3463, inlinedAt: !3476)
!3506 = !DILocation(line: 816, column: 3, scope: !3463, inlinedAt: !3476)
!3507 = !DILocation(line: 819, column: 9, scope: !3463, inlinedAt: !3476)
!3508 = !DILocation(line: 794, column: 3, scope: !3452)
!3509 = !DILocation(line: 804, column: 33, scope: !3463)
!3510 = !DILocation(line: 804, column: 45, scope: !3463)
!3511 = !DILocation(line: 804, column: 62, scope: !3463)
!3512 = !DILocation(line: 805, column: 51, scope: !3463)
!3513 = !DILocation(line: 807, column: 37, scope: !3463)
!3514 = !DILocation(line: 807, column: 33, scope: !3463)
!3515 = !DILocation(line: 808, column: 11, scope: !3463)
!3516 = !DILocation(line: 808, column: 7, scope: !3463)
!3517 = !DILocation(line: 810, column: 18, scope: !3463)
!3518 = !DILocation(line: 810, column: 27, scope: !3463)
!3519 = !DILocation(line: 810, column: 24, scope: !3463)
!3520 = !DILocation(line: 810, column: 7, scope: !3463)
!3521 = !DILocation(line: 811, column: 69, scope: !3463)
!3522 = !DILocation(line: 812, column: 53, scope: !3463)
!3523 = !DILocation(line: 813, column: 49, scope: !3463)
!3524 = !DILocation(line: 814, column: 49, scope: !3463)
!3525 = !DILocation(line: 811, column: 20, scope: !3463)
!3526 = !DILocation(line: 814, column: 62, scope: !3463)
!3527 = !DILocation(line: 811, column: 10, scope: !3463)
!3528 = !DILocation(line: 220, column: 20, scope: !3495, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 815, column: 15, scope: !3463)
!3530 = !DILocation(line: 222, column: 10, scope: !3495, inlinedAt: !3529)
!3531 = !DILocation(line: 815, column: 9, scope: !3463)
!3532 = !DILocation(line: 816, column: 60, scope: !3463)
!3533 = !DILocation(line: 818, column: 32, scope: !3463)
!3534 = !DILocation(line: 818, column: 47, scope: !3463)
!3535 = !DILocation(line: 816, column: 3, scope: !3463)
!3536 = !DILocation(line: 819, column: 9, scope: !3463)
!3537 = !DILocation(line: 820, column: 7, scope: !3463)
!3538 = !DILocation(line: 821, column: 11, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3463, file: !391, line: 820, column: 7)
!3540 = !DILocation(line: 821, column: 5, scope: !3539)
!3541 = !DILocation(line: 822, column: 3, scope: !3463)
!3542 = distinct !DISubprogram(name: "quotearg_free", scope: !391, file: !391, line: 840, type: !445, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3543)
!3543 = !{!3544, !3545}
!3544 = !DILocalVariable(name: "sv", scope: !3542, file: !391, line: 842, type: !415)
!3545 = !DILocalVariable(name: "i", scope: !3542, file: !391, line: 843, type: !57)
!3546 = !DILocation(line: 842, column: 24, scope: !3542)
!3547 = !DILocation(line: 842, column: 19, scope: !3542)
!3548 = !DILocation(line: 843, column: 7, scope: !3542)
!3549 = !DILocation(line: 844, column: 19, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !391, line: 844, column: 3)
!3551 = distinct !DILexicalBlock(scope: !3542, file: !391, line: 844, column: 3)
!3552 = !DILocation(line: 844, column: 17, scope: !3550)
!3553 = !DILocation(line: 844, column: 3, scope: !3551)
!3554 = !DILocation(line: 845, column: 17, scope: !3550)
!3555 = !{!3556, !1114, i64 8}
!3556 = !{!"slotvec", !1156, i64 0, !1114, i64 8}
!3557 = !DILocation(line: 845, column: 5, scope: !3550)
!3558 = !DILocation(line: 844, column: 28, scope: !3550)
!3559 = distinct !{!3559, !3553, !3560}
!3560 = !DILocation(line: 845, column: 20, scope: !3551)
!3561 = !DILocation(line: 846, column: 13, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3542, file: !391, line: 846, column: 7)
!3563 = !DILocation(line: 846, column: 17, scope: !3562)
!3564 = !DILocation(line: 846, column: 7, scope: !3542)
!3565 = !DILocation(line: 848, column: 7, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3562, file: !391, line: 847, column: 5)
!3567 = !DILocation(line: 849, column: 21, scope: !3566)
!3568 = !{!3556, !1156, i64 0}
!3569 = !DILocation(line: 850, column: 20, scope: !3566)
!3570 = !DILocation(line: 851, column: 5, scope: !3566)
!3571 = !DILocation(line: 852, column: 10, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3542, file: !391, line: 852, column: 7)
!3573 = !DILocation(line: 852, column: 7, scope: !3542)
!3574 = !DILocation(line: 854, column: 13, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3572, file: !391, line: 853, column: 5)
!3576 = !DILocation(line: 854, column: 7, scope: !3575)
!3577 = !DILocation(line: 855, column: 15, scope: !3575)
!3578 = !DILocation(line: 856, column: 5, scope: !3575)
!3579 = !DILocation(line: 857, column: 10, scope: !3542)
!3580 = !DILocation(line: 858, column: 1, scope: !3542)
!3581 = distinct !DISubprogram(name: "quotearg_n", scope: !391, file: !391, line: 922, type: !3582, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3584)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!51, !57, !288}
!3584 = !{!3585, !3586}
!3585 = !DILocalVariable(name: "n", arg: 1, scope: !3581, file: !391, line: 922, type: !57)
!3586 = !DILocalVariable(name: "arg", arg: 2, scope: !3581, file: !391, line: 922, type: !288)
!3587 = !DILocation(line: 922, column: 17, scope: !3581)
!3588 = !DILocation(line: 922, column: 32, scope: !3581)
!3589 = !DILocation(line: 924, column: 10, scope: !3581)
!3590 = !DILocation(line: 924, column: 3, scope: !3581)
!3591 = distinct !DISubprogram(name: "quotearg_n_options", scope: !391, file: !391, line: 869, type: !3592, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3594)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!51, !57, !288, !54, !2586}
!3594 = !{!3595, !3596, !3597, !3598, !3599, !3600, !3601, !3604, !3606, !3607, !3608}
!3595 = !DILocalVariable(name: "n", arg: 1, scope: !3591, file: !391, line: 869, type: !57)
!3596 = !DILocalVariable(name: "arg", arg: 2, scope: !3591, file: !391, line: 869, type: !288)
!3597 = !DILocalVariable(name: "argsize", arg: 3, scope: !3591, file: !391, line: 869, type: !54)
!3598 = !DILocalVariable(name: "options", arg: 4, scope: !3591, file: !391, line: 870, type: !2586)
!3599 = !DILocalVariable(name: "e", scope: !3591, file: !391, line: 872, type: !57)
!3600 = !DILocalVariable(name: "sv", scope: !3591, file: !391, line: 874, type: !415)
!3601 = !DILocalVariable(name: "preallocated", scope: !3602, file: !391, line: 881, type: !71)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !391, line: 880, column: 5)
!3603 = distinct !DILexicalBlock(scope: !3591, file: !391, line: 879, column: 7)
!3604 = !DILocalVariable(name: "size", scope: !3605, file: !391, line: 894, type: !54)
!3605 = distinct !DILexicalBlock(scope: !3591, file: !391, line: 893, column: 3)
!3606 = !DILocalVariable(name: "val", scope: !3605, file: !391, line: 895, type: !51)
!3607 = !DILocalVariable(name: "flags", scope: !3605, file: !391, line: 897, type: !57)
!3608 = !DILocalVariable(name: "qsize", scope: !3605, file: !391, line: 898, type: !54)
!3609 = !DILocation(line: 869, column: 25, scope: !3591)
!3610 = !DILocation(line: 869, column: 40, scope: !3591)
!3611 = !DILocation(line: 869, column: 52, scope: !3591)
!3612 = !DILocation(line: 870, column: 51, scope: !3591)
!3613 = !DILocation(line: 872, column: 11, scope: !3591)
!3614 = !DILocation(line: 872, column: 7, scope: !3591)
!3615 = !DILocation(line: 874, column: 24, scope: !3591)
!3616 = !DILocation(line: 874, column: 19, scope: !3591)
!3617 = !DILocation(line: 876, column: 9, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3591, file: !391, line: 876, column: 7)
!3619 = !DILocation(line: 876, column: 7, scope: !3591)
!3620 = !DILocation(line: 877, column: 5, scope: !3618)
!3621 = !DILocation(line: 879, column: 7, scope: !3603)
!3622 = !DILocation(line: 879, column: 14, scope: !3603)
!3623 = !DILocation(line: 879, column: 7, scope: !3591)
!3624 = !DILocation(line: 881, column: 31, scope: !3602)
!3625 = !DILocation(line: 883, column: 67, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3602, file: !391, line: 883, column: 11)
!3627 = !DILocation(line: 883, column: 11, scope: !3602)
!3628 = !DILocation(line: 884, column: 9, scope: !3626)
!3629 = !DILocation(line: 886, column: 32, scope: !3602)
!3630 = !DILocation(line: 886, column: 61, scope: !3602)
!3631 = !DILocation(line: 886, column: 58, scope: !3602)
!3632 = !DILocation(line: 886, column: 66, scope: !3602)
!3633 = !DILocation(line: 886, column: 22, scope: !3602)
!3634 = !DILocation(line: 886, column: 15, scope: !3602)
!3635 = !DILocation(line: 887, column: 11, scope: !3602)
!3636 = !DILocation(line: 888, column: 15, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3602, file: !391, line: 887, column: 11)
!3638 = !{i64 0, i64 8, !1155, i64 8, i64 8, !1113}
!3639 = !DILocation(line: 888, column: 9, scope: !3637)
!3640 = !DILocation(line: 889, column: 20, scope: !3602)
!3641 = !DILocation(line: 889, column: 18, scope: !3602)
!3642 = !DILocation(line: 889, column: 7, scope: !3602)
!3643 = !DILocation(line: 889, column: 38, scope: !3602)
!3644 = !DILocation(line: 889, column: 31, scope: !3602)
!3645 = !DILocation(line: 889, column: 48, scope: !3602)
!3646 = !DILocation(line: 890, column: 14, scope: !3602)
!3647 = !DILocation(line: 891, column: 5, scope: !3602)
!3648 = !DILocation(line: 894, column: 19, scope: !3605)
!3649 = !DILocation(line: 894, column: 25, scope: !3605)
!3650 = !DILocation(line: 894, column: 12, scope: !3605)
!3651 = !DILocation(line: 895, column: 23, scope: !3605)
!3652 = !DILocation(line: 895, column: 11, scope: !3605)
!3653 = !DILocation(line: 897, column: 26, scope: !3605)
!3654 = !DILocation(line: 897, column: 32, scope: !3605)
!3655 = !DILocation(line: 897, column: 9, scope: !3605)
!3656 = !DILocation(line: 899, column: 55, scope: !3605)
!3657 = !DILocation(line: 900, column: 46, scope: !3605)
!3658 = !DILocation(line: 901, column: 55, scope: !3605)
!3659 = !DILocation(line: 902, column: 55, scope: !3605)
!3660 = !DILocation(line: 898, column: 20, scope: !3605)
!3661 = !DILocation(line: 898, column: 12, scope: !3605)
!3662 = !DILocation(line: 904, column: 14, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3605, file: !391, line: 904, column: 9)
!3664 = !DILocation(line: 904, column: 9, scope: !3605)
!3665 = !DILocation(line: 906, column: 35, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3663, file: !391, line: 905, column: 7)
!3667 = !DILocation(line: 906, column: 20, scope: !3666)
!3668 = !DILocation(line: 907, column: 17, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3666, file: !391, line: 907, column: 13)
!3670 = !DILocation(line: 907, column: 13, scope: !3666)
!3671 = !DILocation(line: 908, column: 11, scope: !3669)
!3672 = !DILocation(line: 220, column: 20, scope: !3495, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 909, column: 27, scope: !3666)
!3674 = !DILocation(line: 222, column: 10, scope: !3495, inlinedAt: !3673)
!3675 = !DILocation(line: 909, column: 19, scope: !3666)
!3676 = !DILocation(line: 910, column: 69, scope: !3666)
!3677 = !DILocation(line: 912, column: 44, scope: !3666)
!3678 = !DILocation(line: 913, column: 44, scope: !3666)
!3679 = !DILocation(line: 910, column: 9, scope: !3666)
!3680 = !DILocation(line: 914, column: 7, scope: !3666)
!3681 = !DILocation(line: 916, column: 11, scope: !3605)
!3682 = !DILocation(line: 917, column: 5, scope: !3605)
!3683 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !391, file: !391, line: 928, type: !3684, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3686)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!51, !57, !288, !54}
!3686 = !{!3687, !3688, !3689}
!3687 = !DILocalVariable(name: "n", arg: 1, scope: !3683, file: !391, line: 928, type: !57)
!3688 = !DILocalVariable(name: "arg", arg: 2, scope: !3683, file: !391, line: 928, type: !288)
!3689 = !DILocalVariable(name: "argsize", arg: 3, scope: !3683, file: !391, line: 928, type: !54)
!3690 = !DILocation(line: 928, column: 21, scope: !3683)
!3691 = !DILocation(line: 928, column: 36, scope: !3683)
!3692 = !DILocation(line: 928, column: 48, scope: !3683)
!3693 = !DILocation(line: 930, column: 10, scope: !3683)
!3694 = !DILocation(line: 930, column: 3, scope: !3683)
!3695 = distinct !DISubprogram(name: "quotearg", scope: !391, file: !391, line: 934, type: !3696, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3698)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!51, !288}
!3698 = !{!3699}
!3699 = !DILocalVariable(name: "arg", arg: 1, scope: !3695, file: !391, line: 934, type: !288)
!3700 = !DILocation(line: 934, column: 23, scope: !3695)
!3701 = !DILocation(line: 922, column: 17, scope: !3581, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 936, column: 10, scope: !3695)
!3703 = !DILocation(line: 922, column: 32, scope: !3581, inlinedAt: !3702)
!3704 = !DILocation(line: 924, column: 10, scope: !3581, inlinedAt: !3702)
!3705 = !DILocation(line: 936, column: 3, scope: !3695)
!3706 = distinct !DISubprogram(name: "quotearg_mem", scope: !391, file: !391, line: 940, type: !3707, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3709)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!51, !288, !54}
!3709 = !{!3710, !3711}
!3710 = !DILocalVariable(name: "arg", arg: 1, scope: !3706, file: !391, line: 940, type: !288)
!3711 = !DILocalVariable(name: "argsize", arg: 2, scope: !3706, file: !391, line: 940, type: !54)
!3712 = !DILocation(line: 940, column: 27, scope: !3706)
!3713 = !DILocation(line: 940, column: 39, scope: !3706)
!3714 = !DILocation(line: 928, column: 21, scope: !3683, inlinedAt: !3715)
!3715 = distinct !DILocation(line: 942, column: 10, scope: !3706)
!3716 = !DILocation(line: 928, column: 36, scope: !3683, inlinedAt: !3715)
!3717 = !DILocation(line: 928, column: 48, scope: !3683, inlinedAt: !3715)
!3718 = !DILocation(line: 930, column: 10, scope: !3683, inlinedAt: !3715)
!3719 = !DILocation(line: 942, column: 3, scope: !3706)
!3720 = distinct !DISubprogram(name: "quotearg_n_style", scope: !391, file: !391, line: 946, type: !3721, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3723)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!51, !57, !5, !288}
!3723 = !{!3724, !3725, !3726, !3727}
!3724 = !DILocalVariable(name: "n", arg: 1, scope: !3720, file: !391, line: 946, type: !57)
!3725 = !DILocalVariable(name: "s", arg: 2, scope: !3720, file: !391, line: 946, type: !5)
!3726 = !DILocalVariable(name: "arg", arg: 3, scope: !3720, file: !391, line: 946, type: !288)
!3727 = !DILocalVariable(name: "o", scope: !3720, file: !391, line: 948, type: !2587)
!3728 = !DILocalVariable(name: "o", scope: !3729, file: !391, line: 187, type: !398)
!3729 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !391, file: !391, line: 185, type: !3730, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!398, !5}
!3732 = !{!3733, !3728}
!3733 = !DILocalVariable(name: "style", arg: 1, scope: !3729, file: !391, line: 185, type: !5)
!3734 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3735 = !DILocation(line: 187, column: 26, scope: !3729, inlinedAt: !3736)
!3736 = distinct !DILocation(line: 948, column: 36, scope: !3720)
!3737 = !DILocation(line: 946, column: 23, scope: !3720)
!3738 = !DILocation(line: 946, column: 45, scope: !3720)
!3739 = !DILocation(line: 946, column: 60, scope: !3720)
!3740 = !DILocation(line: 948, column: 3, scope: !3720)
!3741 = !DILocation(line: 948, column: 32, scope: !3720)
!3742 = !DILocation(line: 185, column: 48, scope: !3729, inlinedAt: !3736)
!3743 = !DILocation(line: 187, column: 3, scope: !3729, inlinedAt: !3736)
!3744 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3745 = !DILocation(line: 188, column: 13, scope: !3746, inlinedAt: !3736)
!3746 = distinct !DILexicalBlock(scope: !3729, file: !391, line: 188, column: 7)
!3747 = !DILocation(line: 188, column: 7, scope: !3729, inlinedAt: !3736)
!3748 = !DILocation(line: 189, column: 5, scope: !3746, inlinedAt: !3736)
!3749 = !{!3750}
!3750 = distinct !{!3750, !3751, !"quoting_options_from_style: argument 0"}
!3751 = distinct !{!3751, !"quoting_options_from_style"}
!3752 = !DILocation(line: 191, column: 10, scope: !3729, inlinedAt: !3736)
!3753 = !DILocation(line: 192, column: 1, scope: !3729, inlinedAt: !3736)
!3754 = !DILocation(line: 949, column: 10, scope: !3720)
!3755 = !DILocation(line: 950, column: 1, scope: !3720)
!3756 = !DILocation(line: 949, column: 3, scope: !3720)
!3757 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !391, file: !391, line: 953, type: !3758, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!51, !57, !5, !288, !54}
!3760 = !{!3761, !3762, !3763, !3764, !3765}
!3761 = !DILocalVariable(name: "n", arg: 1, scope: !3757, file: !391, line: 953, type: !57)
!3762 = !DILocalVariable(name: "s", arg: 2, scope: !3757, file: !391, line: 953, type: !5)
!3763 = !DILocalVariable(name: "arg", arg: 3, scope: !3757, file: !391, line: 954, type: !288)
!3764 = !DILocalVariable(name: "argsize", arg: 4, scope: !3757, file: !391, line: 954, type: !54)
!3765 = !DILocalVariable(name: "o", scope: !3757, file: !391, line: 956, type: !2587)
!3766 = !DILocation(line: 187, column: 26, scope: !3729, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 956, column: 36, scope: !3757)
!3768 = !DILocation(line: 953, column: 27, scope: !3757)
!3769 = !DILocation(line: 953, column: 49, scope: !3757)
!3770 = !DILocation(line: 954, column: 35, scope: !3757)
!3771 = !DILocation(line: 954, column: 47, scope: !3757)
!3772 = !DILocation(line: 956, column: 3, scope: !3757)
!3773 = !DILocation(line: 956, column: 32, scope: !3757)
!3774 = !DILocation(line: 185, column: 48, scope: !3729, inlinedAt: !3767)
!3775 = !DILocation(line: 187, column: 3, scope: !3729, inlinedAt: !3767)
!3776 = !DILocation(line: 188, column: 13, scope: !3746, inlinedAt: !3767)
!3777 = !DILocation(line: 188, column: 7, scope: !3729, inlinedAt: !3767)
!3778 = !DILocation(line: 189, column: 5, scope: !3746, inlinedAt: !3767)
!3779 = !{!3780}
!3780 = distinct !{!3780, !3781, !"quoting_options_from_style: argument 0"}
!3781 = distinct !{!3781, !"quoting_options_from_style"}
!3782 = !DILocation(line: 191, column: 10, scope: !3729, inlinedAt: !3767)
!3783 = !DILocation(line: 192, column: 1, scope: !3729, inlinedAt: !3767)
!3784 = !DILocation(line: 957, column: 10, scope: !3757)
!3785 = !DILocation(line: 958, column: 1, scope: !3757)
!3786 = !DILocation(line: 957, column: 3, scope: !3757)
!3787 = distinct !DISubprogram(name: "quotearg_style", scope: !391, file: !391, line: 961, type: !3788, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3790)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!51, !5, !288}
!3790 = !{!3791, !3792}
!3791 = !DILocalVariable(name: "s", arg: 1, scope: !3787, file: !391, line: 961, type: !5)
!3792 = !DILocalVariable(name: "arg", arg: 2, scope: !3787, file: !391, line: 961, type: !288)
!3793 = !DILocation(line: 187, column: 26, scope: !3729, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 948, column: 36, scope: !3720, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 963, column: 10, scope: !3787)
!3796 = !DILocation(line: 961, column: 36, scope: !3787)
!3797 = !DILocation(line: 961, column: 51, scope: !3787)
!3798 = !DILocation(line: 946, column: 23, scope: !3720, inlinedAt: !3795)
!3799 = !DILocation(line: 946, column: 45, scope: !3720, inlinedAt: !3795)
!3800 = !DILocation(line: 946, column: 60, scope: !3720, inlinedAt: !3795)
!3801 = !DILocation(line: 948, column: 3, scope: !3720, inlinedAt: !3795)
!3802 = !DILocation(line: 948, column: 32, scope: !3720, inlinedAt: !3795)
!3803 = !DILocation(line: 185, column: 48, scope: !3729, inlinedAt: !3794)
!3804 = !DILocation(line: 187, column: 3, scope: !3729, inlinedAt: !3794)
!3805 = !DILocation(line: 188, column: 13, scope: !3746, inlinedAt: !3794)
!3806 = !DILocation(line: 188, column: 7, scope: !3729, inlinedAt: !3794)
!3807 = !DILocation(line: 189, column: 5, scope: !3746, inlinedAt: !3794)
!3808 = !{!3809}
!3809 = distinct !{!3809, !3810, !"quoting_options_from_style: argument 0"}
!3810 = distinct !{!3810, !"quoting_options_from_style"}
!3811 = !DILocation(line: 191, column: 10, scope: !3729, inlinedAt: !3794)
!3812 = !DILocation(line: 192, column: 1, scope: !3729, inlinedAt: !3794)
!3813 = !DILocation(line: 949, column: 10, scope: !3720, inlinedAt: !3795)
!3814 = !DILocation(line: 950, column: 1, scope: !3720, inlinedAt: !3795)
!3815 = !DILocation(line: 963, column: 3, scope: !3787)
!3816 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !391, file: !391, line: 967, type: !3817, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3819)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!51, !5, !288, !54}
!3819 = !{!3820, !3821, !3822}
!3820 = !DILocalVariable(name: "s", arg: 1, scope: !3816, file: !391, line: 967, type: !5)
!3821 = !DILocalVariable(name: "arg", arg: 2, scope: !3816, file: !391, line: 967, type: !288)
!3822 = !DILocalVariable(name: "argsize", arg: 3, scope: !3816, file: !391, line: 967, type: !54)
!3823 = !DILocation(line: 187, column: 26, scope: !3729, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 956, column: 36, scope: !3757, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 969, column: 10, scope: !3816)
!3826 = !DILocation(line: 967, column: 40, scope: !3816)
!3827 = !DILocation(line: 967, column: 55, scope: !3816)
!3828 = !DILocation(line: 967, column: 67, scope: !3816)
!3829 = !DILocation(line: 953, column: 27, scope: !3757, inlinedAt: !3825)
!3830 = !DILocation(line: 953, column: 49, scope: !3757, inlinedAt: !3825)
!3831 = !DILocation(line: 954, column: 35, scope: !3757, inlinedAt: !3825)
!3832 = !DILocation(line: 954, column: 47, scope: !3757, inlinedAt: !3825)
!3833 = !DILocation(line: 956, column: 3, scope: !3757, inlinedAt: !3825)
!3834 = !DILocation(line: 956, column: 32, scope: !3757, inlinedAt: !3825)
!3835 = !DILocation(line: 185, column: 48, scope: !3729, inlinedAt: !3824)
!3836 = !DILocation(line: 187, column: 3, scope: !3729, inlinedAt: !3824)
!3837 = !DILocation(line: 188, column: 13, scope: !3746, inlinedAt: !3824)
!3838 = !DILocation(line: 188, column: 7, scope: !3729, inlinedAt: !3824)
!3839 = !DILocation(line: 189, column: 5, scope: !3746, inlinedAt: !3824)
!3840 = !{!3841}
!3841 = distinct !{!3841, !3842, !"quoting_options_from_style: argument 0"}
!3842 = distinct !{!3842, !"quoting_options_from_style"}
!3843 = !DILocation(line: 191, column: 10, scope: !3729, inlinedAt: !3824)
!3844 = !DILocation(line: 192, column: 1, scope: !3729, inlinedAt: !3824)
!3845 = !DILocation(line: 957, column: 10, scope: !3757, inlinedAt: !3825)
!3846 = !DILocation(line: 958, column: 1, scope: !3757, inlinedAt: !3825)
!3847 = !DILocation(line: 969, column: 3, scope: !3816)
!3848 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !391, file: !391, line: 973, type: !3849, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3851)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!51, !288, !54, !52}
!3851 = !{!3852, !3853, !3854, !3855}
!3852 = !DILocalVariable(name: "arg", arg: 1, scope: !3848, file: !391, line: 973, type: !288)
!3853 = !DILocalVariable(name: "argsize", arg: 2, scope: !3848, file: !391, line: 973, type: !54)
!3854 = !DILocalVariable(name: "ch", arg: 3, scope: !3848, file: !391, line: 973, type: !52)
!3855 = !DILocalVariable(name: "options", scope: !3848, file: !391, line: 975, type: !398)
!3856 = !DILocation(line: 973, column: 32, scope: !3848)
!3857 = !DILocation(line: 973, column: 44, scope: !3848)
!3858 = !DILocation(line: 973, column: 58, scope: !3848)
!3859 = !DILocation(line: 975, column: 3, scope: !3848)
!3860 = !DILocation(line: 976, column: 13, scope: !3848)
!3861 = !{i64 0, i64 4, !1426, i64 4, i64 4, !1188, i64 8, i64 32, !1426, i64 40, i64 8, !1113, i64 48, i64 8, !1113}
!3862 = !DILocation(line: 975, column: 26, scope: !3848)
!3863 = !DILocation(line: 144, column: 43, scope: !2608, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 977, column: 3, scope: !3848)
!3865 = !DILocation(line: 144, column: 51, scope: !2608, inlinedAt: !3864)
!3866 = !DILocation(line: 144, column: 58, scope: !2608, inlinedAt: !3864)
!3867 = !DILocation(line: 146, column: 17, scope: !2608, inlinedAt: !3864)
!3868 = !DILocation(line: 148, column: 62, scope: !2608, inlinedAt: !3864)
!3869 = !DILocation(line: 148, column: 57, scope: !2608, inlinedAt: !3864)
!3870 = !DILocation(line: 147, column: 17, scope: !2608, inlinedAt: !3864)
!3871 = !DILocation(line: 149, column: 18, scope: !2608, inlinedAt: !3864)
!3872 = !DILocation(line: 149, column: 15, scope: !2608, inlinedAt: !3864)
!3873 = !DILocation(line: 149, column: 7, scope: !2608, inlinedAt: !3864)
!3874 = !DILocation(line: 150, column: 12, scope: !2608, inlinedAt: !3864)
!3875 = !DILocation(line: 150, column: 15, scope: !2608, inlinedAt: !3864)
!3876 = !DILocation(line: 150, column: 25, scope: !2608, inlinedAt: !3864)
!3877 = !DILocation(line: 150, column: 7, scope: !2608, inlinedAt: !3864)
!3878 = !DILocation(line: 151, column: 18, scope: !2608, inlinedAt: !3864)
!3879 = !DILocation(line: 151, column: 23, scope: !2608, inlinedAt: !3864)
!3880 = !DILocation(line: 151, column: 6, scope: !2608, inlinedAt: !3864)
!3881 = !DILocation(line: 978, column: 10, scope: !3848)
!3882 = !DILocation(line: 979, column: 1, scope: !3848)
!3883 = !DILocation(line: 978, column: 3, scope: !3848)
!3884 = distinct !DISubprogram(name: "quotearg_char", scope: !391, file: !391, line: 982, type: !3885, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3887)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!51, !288, !52}
!3887 = !{!3888, !3889}
!3888 = !DILocalVariable(name: "arg", arg: 1, scope: !3884, file: !391, line: 982, type: !288)
!3889 = !DILocalVariable(name: "ch", arg: 2, scope: !3884, file: !391, line: 982, type: !52)
!3890 = !DILocation(line: 982, column: 28, scope: !3884)
!3891 = !DILocation(line: 982, column: 38, scope: !3884)
!3892 = !DILocation(line: 973, column: 32, scope: !3848, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 984, column: 10, scope: !3884)
!3894 = !DILocation(line: 973, column: 44, scope: !3848, inlinedAt: !3893)
!3895 = !DILocation(line: 973, column: 58, scope: !3848, inlinedAt: !3893)
!3896 = !DILocation(line: 975, column: 3, scope: !3848, inlinedAt: !3893)
!3897 = !DILocation(line: 976, column: 13, scope: !3848, inlinedAt: !3893)
!3898 = !DILocation(line: 975, column: 26, scope: !3848, inlinedAt: !3893)
!3899 = !DILocation(line: 144, column: 43, scope: !2608, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 977, column: 3, scope: !3848, inlinedAt: !3893)
!3901 = !DILocation(line: 144, column: 51, scope: !2608, inlinedAt: !3900)
!3902 = !DILocation(line: 144, column: 58, scope: !2608, inlinedAt: !3900)
!3903 = !DILocation(line: 146, column: 17, scope: !2608, inlinedAt: !3900)
!3904 = !DILocation(line: 148, column: 62, scope: !2608, inlinedAt: !3900)
!3905 = !DILocation(line: 148, column: 57, scope: !2608, inlinedAt: !3900)
!3906 = !DILocation(line: 147, column: 17, scope: !2608, inlinedAt: !3900)
!3907 = !DILocation(line: 149, column: 18, scope: !2608, inlinedAt: !3900)
!3908 = !DILocation(line: 149, column: 15, scope: !2608, inlinedAt: !3900)
!3909 = !DILocation(line: 149, column: 7, scope: !2608, inlinedAt: !3900)
!3910 = !DILocation(line: 150, column: 12, scope: !2608, inlinedAt: !3900)
!3911 = !DILocation(line: 150, column: 15, scope: !2608, inlinedAt: !3900)
!3912 = !DILocation(line: 150, column: 25, scope: !2608, inlinedAt: !3900)
!3913 = !DILocation(line: 150, column: 7, scope: !2608, inlinedAt: !3900)
!3914 = !DILocation(line: 151, column: 18, scope: !2608, inlinedAt: !3900)
!3915 = !DILocation(line: 151, column: 23, scope: !2608, inlinedAt: !3900)
!3916 = !DILocation(line: 151, column: 6, scope: !2608, inlinedAt: !3900)
!3917 = !DILocation(line: 978, column: 10, scope: !3848, inlinedAt: !3893)
!3918 = !DILocation(line: 979, column: 1, scope: !3848, inlinedAt: !3893)
!3919 = !DILocation(line: 984, column: 3, scope: !3884)
!3920 = distinct !DISubprogram(name: "quotearg_colon", scope: !391, file: !391, line: 988, type: !3696, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3921)
!3921 = !{!3922}
!3922 = !DILocalVariable(name: "arg", arg: 1, scope: !3920, file: !391, line: 988, type: !288)
!3923 = !DILocation(line: 988, column: 29, scope: !3920)
!3924 = !DILocation(line: 982, column: 28, scope: !3884, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 990, column: 10, scope: !3920)
!3926 = !DILocation(line: 982, column: 38, scope: !3884, inlinedAt: !3925)
!3927 = !DILocation(line: 973, column: 32, scope: !3848, inlinedAt: !3928)
!3928 = distinct !DILocation(line: 984, column: 10, scope: !3884, inlinedAt: !3925)
!3929 = !DILocation(line: 973, column: 44, scope: !3848, inlinedAt: !3928)
!3930 = !DILocation(line: 973, column: 58, scope: !3848, inlinedAt: !3928)
!3931 = !DILocation(line: 975, column: 3, scope: !3848, inlinedAt: !3928)
!3932 = !DILocation(line: 976, column: 13, scope: !3848, inlinedAt: !3928)
!3933 = !DILocation(line: 975, column: 26, scope: !3848, inlinedAt: !3928)
!3934 = !DILocation(line: 144, column: 43, scope: !2608, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 977, column: 3, scope: !3848, inlinedAt: !3928)
!3936 = !DILocation(line: 144, column: 51, scope: !2608, inlinedAt: !3935)
!3937 = !DILocation(line: 144, column: 58, scope: !2608, inlinedAt: !3935)
!3938 = !DILocation(line: 146, column: 17, scope: !2608, inlinedAt: !3935)
!3939 = !DILocation(line: 148, column: 57, scope: !2608, inlinedAt: !3935)
!3940 = !DILocation(line: 147, column: 17, scope: !2608, inlinedAt: !3935)
!3941 = !DILocation(line: 149, column: 7, scope: !2608, inlinedAt: !3935)
!3942 = !DILocation(line: 150, column: 12, scope: !2608, inlinedAt: !3935)
!3943 = !DILocation(line: 151, column: 6, scope: !2608, inlinedAt: !3935)
!3944 = !DILocation(line: 978, column: 10, scope: !3848, inlinedAt: !3928)
!3945 = !DILocation(line: 979, column: 1, scope: !3848, inlinedAt: !3928)
!3946 = !DILocation(line: 990, column: 3, scope: !3920)
!3947 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !391, file: !391, line: 994, type: !3707, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3948)
!3948 = !{!3949, !3950}
!3949 = !DILocalVariable(name: "arg", arg: 1, scope: !3947, file: !391, line: 994, type: !288)
!3950 = !DILocalVariable(name: "argsize", arg: 2, scope: !3947, file: !391, line: 994, type: !54)
!3951 = !DILocation(line: 994, column: 33, scope: !3947)
!3952 = !DILocation(line: 994, column: 45, scope: !3947)
!3953 = !DILocation(line: 973, column: 32, scope: !3848, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 996, column: 10, scope: !3947)
!3955 = !DILocation(line: 973, column: 44, scope: !3848, inlinedAt: !3954)
!3956 = !DILocation(line: 973, column: 58, scope: !3848, inlinedAt: !3954)
!3957 = !DILocation(line: 975, column: 3, scope: !3848, inlinedAt: !3954)
!3958 = !DILocation(line: 976, column: 13, scope: !3848, inlinedAt: !3954)
!3959 = !DILocation(line: 975, column: 26, scope: !3848, inlinedAt: !3954)
!3960 = !DILocation(line: 144, column: 43, scope: !2608, inlinedAt: !3961)
!3961 = distinct !DILocation(line: 977, column: 3, scope: !3848, inlinedAt: !3954)
!3962 = !DILocation(line: 144, column: 51, scope: !2608, inlinedAt: !3961)
!3963 = !DILocation(line: 144, column: 58, scope: !2608, inlinedAt: !3961)
!3964 = !DILocation(line: 146, column: 17, scope: !2608, inlinedAt: !3961)
!3965 = !DILocation(line: 148, column: 57, scope: !2608, inlinedAt: !3961)
!3966 = !DILocation(line: 147, column: 17, scope: !2608, inlinedAt: !3961)
!3967 = !DILocation(line: 149, column: 7, scope: !2608, inlinedAt: !3961)
!3968 = !DILocation(line: 150, column: 12, scope: !2608, inlinedAt: !3961)
!3969 = !DILocation(line: 151, column: 6, scope: !2608, inlinedAt: !3961)
!3970 = !DILocation(line: 978, column: 10, scope: !3848, inlinedAt: !3954)
!3971 = !DILocation(line: 979, column: 1, scope: !3848, inlinedAt: !3954)
!3972 = !DILocation(line: 996, column: 3, scope: !3947)
!3973 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !391, file: !391, line: 1000, type: !3721, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !3974)
!3974 = !{!3975, !3976, !3977, !3978}
!3975 = !DILocalVariable(name: "n", arg: 1, scope: !3973, file: !391, line: 1000, type: !57)
!3976 = !DILocalVariable(name: "s", arg: 2, scope: !3973, file: !391, line: 1000, type: !5)
!3977 = !DILocalVariable(name: "arg", arg: 3, scope: !3973, file: !391, line: 1000, type: !288)
!3978 = !DILocalVariable(name: "options", scope: !3973, file: !391, line: 1002, type: !398)
!3979 = !DILocation(line: 187, column: 26, scope: !3729, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 1003, column: 13, scope: !3973)
!3981 = !DILocation(line: 1000, column: 29, scope: !3973)
!3982 = !DILocation(line: 1000, column: 51, scope: !3973)
!3983 = !DILocation(line: 1000, column: 66, scope: !3973)
!3984 = !DILocation(line: 1002, column: 3, scope: !3973)
!3985 = !DILocation(line: 185, column: 48, scope: !3729, inlinedAt: !3980)
!3986 = !DILocation(line: 187, column: 3, scope: !3729, inlinedAt: !3980)
!3987 = !DILocation(line: 188, column: 13, scope: !3746, inlinedAt: !3980)
!3988 = !DILocation(line: 188, column: 7, scope: !3729, inlinedAt: !3980)
!3989 = !DILocation(line: 189, column: 5, scope: !3746, inlinedAt: !3980)
!3990 = !{!3991}
!3991 = distinct !{!3991, !3992, !"quoting_options_from_style: argument 0"}
!3992 = distinct !{!3992, !"quoting_options_from_style"}
!3993 = !DILocation(line: 191, column: 10, scope: !3729, inlinedAt: !3980)
!3994 = !DILocation(line: 192, column: 1, scope: !3729, inlinedAt: !3980)
!3995 = !DILocation(line: 1003, column: 13, scope: !3973)
!3996 = !DILocation(line: 1002, column: 26, scope: !3973)
!3997 = !DILocation(line: 144, column: 43, scope: !2608, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 1004, column: 3, scope: !3973)
!3999 = !DILocation(line: 144, column: 51, scope: !2608, inlinedAt: !3998)
!4000 = !DILocation(line: 144, column: 58, scope: !2608, inlinedAt: !3998)
!4001 = !DILocation(line: 146, column: 17, scope: !2608, inlinedAt: !3998)
!4002 = !DILocation(line: 148, column: 57, scope: !2608, inlinedAt: !3998)
!4003 = !DILocation(line: 147, column: 17, scope: !2608, inlinedAt: !3998)
!4004 = !DILocation(line: 149, column: 7, scope: !2608, inlinedAt: !3998)
!4005 = !DILocation(line: 150, column: 12, scope: !2608, inlinedAt: !3998)
!4006 = !DILocation(line: 151, column: 6, scope: !2608, inlinedAt: !3998)
!4007 = !DILocation(line: 1005, column: 10, scope: !3973)
!4008 = !DILocation(line: 1006, column: 1, scope: !3973)
!4009 = !DILocation(line: 1005, column: 3, scope: !3973)
!4010 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !391, file: !391, line: 1009, type: !4011, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !4013)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!51, !57, !288, !288, !288}
!4013 = !{!4014, !4015, !4016, !4017}
!4014 = !DILocalVariable(name: "n", arg: 1, scope: !4010, file: !391, line: 1009, type: !57)
!4015 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4010, file: !391, line: 1009, type: !288)
!4016 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4010, file: !391, line: 1010, type: !288)
!4017 = !DILocalVariable(name: "arg", arg: 4, scope: !4010, file: !391, line: 1010, type: !288)
!4018 = !DILocation(line: 1009, column: 24, scope: !4010)
!4019 = !DILocation(line: 1009, column: 39, scope: !4010)
!4020 = !DILocation(line: 1010, column: 32, scope: !4010)
!4021 = !DILocation(line: 1010, column: 57, scope: !4010)
!4022 = !DILocalVariable(name: "n", arg: 1, scope: !4023, file: !391, line: 1017, type: !57)
!4023 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !391, file: !391, line: 1017, type: !4024, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !4026)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!51, !57, !288, !288, !288, !54}
!4026 = !{!4022, !4027, !4028, !4029, !4030, !4031}
!4027 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4023, file: !391, line: 1017, type: !288)
!4028 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4023, file: !391, line: 1018, type: !288)
!4029 = !DILocalVariable(name: "arg", arg: 4, scope: !4023, file: !391, line: 1019, type: !288)
!4030 = !DILocalVariable(name: "argsize", arg: 5, scope: !4023, file: !391, line: 1019, type: !54)
!4031 = !DILocalVariable(name: "o", scope: !4023, file: !391, line: 1021, type: !398)
!4032 = !DILocation(line: 1017, column: 28, scope: !4023, inlinedAt: !4033)
!4033 = distinct !DILocation(line: 1012, column: 10, scope: !4010)
!4034 = !DILocation(line: 1017, column: 43, scope: !4023, inlinedAt: !4033)
!4035 = !DILocation(line: 1018, column: 36, scope: !4023, inlinedAt: !4033)
!4036 = !DILocation(line: 1019, column: 36, scope: !4023, inlinedAt: !4033)
!4037 = !DILocation(line: 1019, column: 48, scope: !4023, inlinedAt: !4033)
!4038 = !DILocation(line: 1021, column: 3, scope: !4023, inlinedAt: !4033)
!4039 = !DILocation(line: 1021, column: 30, scope: !4023, inlinedAt: !4033)
!4040 = !DILocation(line: 1021, column: 26, scope: !4023, inlinedAt: !4033)
!4041 = !DILocation(line: 171, column: 45, scope: !2657, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 1022, column: 3, scope: !4023, inlinedAt: !4033)
!4043 = !DILocation(line: 172, column: 33, scope: !2657, inlinedAt: !4042)
!4044 = !DILocation(line: 172, column: 57, scope: !2657, inlinedAt: !4042)
!4045 = !DILocation(line: 176, column: 6, scope: !2657, inlinedAt: !4042)
!4046 = !DILocation(line: 176, column: 12, scope: !2657, inlinedAt: !4042)
!4047 = !DILocation(line: 177, column: 8, scope: !2673, inlinedAt: !4042)
!4048 = !DILocation(line: 177, column: 23, scope: !2673, inlinedAt: !4042)
!4049 = !DILocation(line: 177, column: 19, scope: !2673, inlinedAt: !4042)
!4050 = !DILocation(line: 178, column: 5, scope: !2673, inlinedAt: !4042)
!4051 = !DILocation(line: 179, column: 6, scope: !2657, inlinedAt: !4042)
!4052 = !DILocation(line: 179, column: 17, scope: !2657, inlinedAt: !4042)
!4053 = !DILocation(line: 180, column: 6, scope: !2657, inlinedAt: !4042)
!4054 = !DILocation(line: 180, column: 18, scope: !2657, inlinedAt: !4042)
!4055 = !DILocation(line: 1023, column: 10, scope: !4023, inlinedAt: !4033)
!4056 = !DILocation(line: 1024, column: 1, scope: !4023, inlinedAt: !4033)
!4057 = !DILocation(line: 1012, column: 3, scope: !4010)
!4058 = !DILocation(line: 1017, column: 28, scope: !4023)
!4059 = !DILocation(line: 1017, column: 43, scope: !4023)
!4060 = !DILocation(line: 1018, column: 36, scope: !4023)
!4061 = !DILocation(line: 1019, column: 36, scope: !4023)
!4062 = !DILocation(line: 1019, column: 48, scope: !4023)
!4063 = !DILocation(line: 1021, column: 3, scope: !4023)
!4064 = !DILocation(line: 1021, column: 30, scope: !4023)
!4065 = !DILocation(line: 1021, column: 26, scope: !4023)
!4066 = !DILocation(line: 171, column: 45, scope: !2657, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 1022, column: 3, scope: !4023)
!4068 = !DILocation(line: 172, column: 33, scope: !2657, inlinedAt: !4067)
!4069 = !DILocation(line: 172, column: 57, scope: !2657, inlinedAt: !4067)
!4070 = !DILocation(line: 176, column: 6, scope: !2657, inlinedAt: !4067)
!4071 = !DILocation(line: 176, column: 12, scope: !2657, inlinedAt: !4067)
!4072 = !DILocation(line: 177, column: 8, scope: !2673, inlinedAt: !4067)
!4073 = !DILocation(line: 177, column: 23, scope: !2673, inlinedAt: !4067)
!4074 = !DILocation(line: 177, column: 19, scope: !2673, inlinedAt: !4067)
!4075 = !DILocation(line: 178, column: 5, scope: !2673, inlinedAt: !4067)
!4076 = !DILocation(line: 179, column: 6, scope: !2657, inlinedAt: !4067)
!4077 = !DILocation(line: 179, column: 17, scope: !2657, inlinedAt: !4067)
!4078 = !DILocation(line: 180, column: 6, scope: !2657, inlinedAt: !4067)
!4079 = !DILocation(line: 180, column: 18, scope: !2657, inlinedAt: !4067)
!4080 = !DILocation(line: 1023, column: 10, scope: !4023)
!4081 = !DILocation(line: 1024, column: 1, scope: !4023)
!4082 = !DILocation(line: 1023, column: 3, scope: !4023)
!4083 = distinct !DISubprogram(name: "quotearg_custom", scope: !391, file: !391, line: 1027, type: !4084, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !4086)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!51, !288, !288, !288}
!4086 = !{!4087, !4088, !4089}
!4087 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4083, file: !391, line: 1027, type: !288)
!4088 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4083, file: !391, line: 1027, type: !288)
!4089 = !DILocalVariable(name: "arg", arg: 3, scope: !4083, file: !391, line: 1028, type: !288)
!4090 = !DILocation(line: 1027, column: 30, scope: !4083)
!4091 = !DILocation(line: 1027, column: 54, scope: !4083)
!4092 = !DILocation(line: 1028, column: 30, scope: !4083)
!4093 = !DILocation(line: 1009, column: 24, scope: !4010, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 1030, column: 10, scope: !4083)
!4095 = !DILocation(line: 1009, column: 39, scope: !4010, inlinedAt: !4094)
!4096 = !DILocation(line: 1010, column: 32, scope: !4010, inlinedAt: !4094)
!4097 = !DILocation(line: 1010, column: 57, scope: !4010, inlinedAt: !4094)
!4098 = !DILocation(line: 1017, column: 28, scope: !4023, inlinedAt: !4099)
!4099 = distinct !DILocation(line: 1012, column: 10, scope: !4010, inlinedAt: !4094)
!4100 = !DILocation(line: 1017, column: 43, scope: !4023, inlinedAt: !4099)
!4101 = !DILocation(line: 1018, column: 36, scope: !4023, inlinedAt: !4099)
!4102 = !DILocation(line: 1019, column: 36, scope: !4023, inlinedAt: !4099)
!4103 = !DILocation(line: 1019, column: 48, scope: !4023, inlinedAt: !4099)
!4104 = !DILocation(line: 1021, column: 3, scope: !4023, inlinedAt: !4099)
!4105 = !DILocation(line: 1021, column: 30, scope: !4023, inlinedAt: !4099)
!4106 = !DILocation(line: 1021, column: 26, scope: !4023, inlinedAt: !4099)
!4107 = !DILocation(line: 171, column: 45, scope: !2657, inlinedAt: !4108)
!4108 = distinct !DILocation(line: 1022, column: 3, scope: !4023, inlinedAt: !4099)
!4109 = !DILocation(line: 172, column: 33, scope: !2657, inlinedAt: !4108)
!4110 = !DILocation(line: 172, column: 57, scope: !2657, inlinedAt: !4108)
!4111 = !DILocation(line: 176, column: 6, scope: !2657, inlinedAt: !4108)
!4112 = !DILocation(line: 176, column: 12, scope: !2657, inlinedAt: !4108)
!4113 = !DILocation(line: 177, column: 8, scope: !2673, inlinedAt: !4108)
!4114 = !DILocation(line: 177, column: 23, scope: !2673, inlinedAt: !4108)
!4115 = !DILocation(line: 177, column: 19, scope: !2673, inlinedAt: !4108)
!4116 = !DILocation(line: 178, column: 5, scope: !2673, inlinedAt: !4108)
!4117 = !DILocation(line: 179, column: 6, scope: !2657, inlinedAt: !4108)
!4118 = !DILocation(line: 179, column: 17, scope: !2657, inlinedAt: !4108)
!4119 = !DILocation(line: 180, column: 6, scope: !2657, inlinedAt: !4108)
!4120 = !DILocation(line: 180, column: 18, scope: !2657, inlinedAt: !4108)
!4121 = !DILocation(line: 1023, column: 10, scope: !4023, inlinedAt: !4099)
!4122 = !DILocation(line: 1024, column: 1, scope: !4023, inlinedAt: !4099)
!4123 = !DILocation(line: 1030, column: 3, scope: !4083)
!4124 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !391, file: !391, line: 1034, type: !4125, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !4127)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!51, !288, !288, !288, !54}
!4127 = !{!4128, !4129, !4130, !4131}
!4128 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4124, file: !391, line: 1034, type: !288)
!4129 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4124, file: !391, line: 1034, type: !288)
!4130 = !DILocalVariable(name: "arg", arg: 3, scope: !4124, file: !391, line: 1035, type: !288)
!4131 = !DILocalVariable(name: "argsize", arg: 4, scope: !4124, file: !391, line: 1035, type: !54)
!4132 = !DILocation(line: 1034, column: 34, scope: !4124)
!4133 = !DILocation(line: 1034, column: 58, scope: !4124)
!4134 = !DILocation(line: 1035, column: 34, scope: !4124)
!4135 = !DILocation(line: 1035, column: 46, scope: !4124)
!4136 = !DILocation(line: 1017, column: 28, scope: !4023, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 1037, column: 10, scope: !4124)
!4138 = !DILocation(line: 1017, column: 43, scope: !4023, inlinedAt: !4137)
!4139 = !DILocation(line: 1018, column: 36, scope: !4023, inlinedAt: !4137)
!4140 = !DILocation(line: 1019, column: 36, scope: !4023, inlinedAt: !4137)
!4141 = !DILocation(line: 1019, column: 48, scope: !4023, inlinedAt: !4137)
!4142 = !DILocation(line: 1021, column: 3, scope: !4023, inlinedAt: !4137)
!4143 = !DILocation(line: 1021, column: 30, scope: !4023, inlinedAt: !4137)
!4144 = !DILocation(line: 1021, column: 26, scope: !4023, inlinedAt: !4137)
!4145 = !DILocation(line: 171, column: 45, scope: !2657, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 1022, column: 3, scope: !4023, inlinedAt: !4137)
!4147 = !DILocation(line: 172, column: 33, scope: !2657, inlinedAt: !4146)
!4148 = !DILocation(line: 172, column: 57, scope: !2657, inlinedAt: !4146)
!4149 = !DILocation(line: 176, column: 6, scope: !2657, inlinedAt: !4146)
!4150 = !DILocation(line: 176, column: 12, scope: !2657, inlinedAt: !4146)
!4151 = !DILocation(line: 177, column: 8, scope: !2673, inlinedAt: !4146)
!4152 = !DILocation(line: 177, column: 23, scope: !2673, inlinedAt: !4146)
!4153 = !DILocation(line: 177, column: 19, scope: !2673, inlinedAt: !4146)
!4154 = !DILocation(line: 178, column: 5, scope: !2673, inlinedAt: !4146)
!4155 = !DILocation(line: 179, column: 6, scope: !2657, inlinedAt: !4146)
!4156 = !DILocation(line: 179, column: 17, scope: !2657, inlinedAt: !4146)
!4157 = !DILocation(line: 180, column: 6, scope: !2657, inlinedAt: !4146)
!4158 = !DILocation(line: 180, column: 18, scope: !2657, inlinedAt: !4146)
!4159 = !DILocation(line: 1023, column: 10, scope: !4023, inlinedAt: !4137)
!4160 = !DILocation(line: 1024, column: 1, scope: !4023, inlinedAt: !4137)
!4161 = !DILocation(line: 1037, column: 3, scope: !4124)
!4162 = distinct !DISubprogram(name: "quote_n_mem", scope: !391, file: !391, line: 1052, type: !4163, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !4165)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!288, !57, !288, !54}
!4165 = !{!4166, !4167, !4168}
!4166 = !DILocalVariable(name: "n", arg: 1, scope: !4162, file: !391, line: 1052, type: !57)
!4167 = !DILocalVariable(name: "arg", arg: 2, scope: !4162, file: !391, line: 1052, type: !288)
!4168 = !DILocalVariable(name: "argsize", arg: 3, scope: !4162, file: !391, line: 1052, type: !54)
!4169 = !DILocation(line: 1052, column: 18, scope: !4162)
!4170 = !DILocation(line: 1052, column: 33, scope: !4162)
!4171 = !DILocation(line: 1052, column: 45, scope: !4162)
!4172 = !DILocation(line: 1054, column: 10, scope: !4162)
!4173 = !DILocation(line: 1054, column: 3, scope: !4162)
!4174 = distinct !DISubprogram(name: "quote_mem", scope: !391, file: !391, line: 1058, type: !4175, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !4177)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!288, !288, !54}
!4177 = !{!4178, !4179}
!4178 = !DILocalVariable(name: "arg", arg: 1, scope: !4174, file: !391, line: 1058, type: !288)
!4179 = !DILocalVariable(name: "argsize", arg: 2, scope: !4174, file: !391, line: 1058, type: !54)
!4180 = !DILocation(line: 1058, column: 24, scope: !4174)
!4181 = !DILocation(line: 1058, column: 36, scope: !4174)
!4182 = !DILocation(line: 1052, column: 18, scope: !4162, inlinedAt: !4183)
!4183 = distinct !DILocation(line: 1060, column: 10, scope: !4174)
!4184 = !DILocation(line: 1052, column: 33, scope: !4162, inlinedAt: !4183)
!4185 = !DILocation(line: 1052, column: 45, scope: !4162, inlinedAt: !4183)
!4186 = !DILocation(line: 1054, column: 10, scope: !4162, inlinedAt: !4183)
!4187 = !DILocation(line: 1060, column: 3, scope: !4174)
!4188 = distinct !DISubprogram(name: "quote_n", scope: !391, file: !391, line: 1064, type: !4189, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !4191)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!288, !57, !288}
!4191 = !{!4192, !4193}
!4192 = !DILocalVariable(name: "n", arg: 1, scope: !4188, file: !391, line: 1064, type: !57)
!4193 = !DILocalVariable(name: "arg", arg: 2, scope: !4188, file: !391, line: 1064, type: !288)
!4194 = !DILocation(line: 1064, column: 14, scope: !4188)
!4195 = !DILocation(line: 1064, column: 29, scope: !4188)
!4196 = !DILocation(line: 1052, column: 18, scope: !4162, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 1066, column: 10, scope: !4188)
!4198 = !DILocation(line: 1052, column: 33, scope: !4162, inlinedAt: !4197)
!4199 = !DILocation(line: 1052, column: 45, scope: !4162, inlinedAt: !4197)
!4200 = !DILocation(line: 1054, column: 10, scope: !4162, inlinedAt: !4197)
!4201 = !DILocation(line: 1066, column: 3, scope: !4188)
!4202 = distinct !DISubprogram(name: "quote", scope: !391, file: !391, line: 1070, type: !4203, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !379, variables: !4205)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!288, !288}
!4205 = !{!4206}
!4206 = !DILocalVariable(name: "arg", arg: 1, scope: !4202, file: !391, line: 1070, type: !288)
!4207 = !DILocation(line: 1070, column: 20, scope: !4202)
!4208 = !DILocation(line: 1064, column: 14, scope: !4188, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 1072, column: 10, scope: !4202)
!4210 = !DILocation(line: 1064, column: 29, scope: !4188, inlinedAt: !4209)
!4211 = !DILocation(line: 1052, column: 18, scope: !4162, inlinedAt: !4212)
!4212 = distinct !DILocation(line: 1066, column: 10, scope: !4188, inlinedAt: !4209)
!4213 = !DILocation(line: 1052, column: 33, scope: !4162, inlinedAt: !4212)
!4214 = !DILocation(line: 1052, column: 45, scope: !4162, inlinedAt: !4212)
!4215 = !DILocation(line: 1054, column: 10, scope: !4162, inlinedAt: !4212)
!4216 = !DILocation(line: 1072, column: 3, scope: !4202)
!4217 = distinct !DISubprogram(name: "readtokens0_init", scope: !4218, file: !4218, line: 30, type: !4219, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !1028, variables: !4263)
!4218 = !DIFile(filename: "lib/readtokens0.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4219 = !DISubroutineType(types: !4220)
!4220 = !{null, !4221}
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Tokens", file: !124, line: 28, size: 2304, elements: !4223)
!4223 = !{!4224, !4225, !4226, !4227, !4261, !4262}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "n_tok", scope: !4222, file: !124, line: 30, baseType: !54, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "tok", scope: !4222, file: !124, line: 31, baseType: !66, size: 64, offset: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "tok_len", scope: !4222, file: !124, line: 32, baseType: !129, size: 64, offset: 128)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "o_data", scope: !4222, file: !124, line: 33, baseType: !4228, size: 704, offset: 192)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !132, line: 174, size: 704, elements: !4229)
!4229 = !{!4230, !4231, !4238, !4239, !4240, !4241, !4246, !4247, !4252, !4257, !4258, !4259, !4260}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !4228, file: !132, line: 176, baseType: !54, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !4228, file: !132, line: 177, baseType: !4232, size: 64, offset: 64)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !132, line: 167, size: 128, elements: !4234)
!4234 = !{!4235, !4236, !4237}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !4233, file: !132, line: 169, baseType: !51, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !4233, file: !132, line: 170, baseType: !4232, size: 64, offset: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !4233, file: !132, line: 171, baseType: !142, offset: 128)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !4228, file: !132, line: 178, baseType: !51, size: 64, offset: 128)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !4228, file: !132, line: 179, baseType: !51, size: 64, offset: 192)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !4228, file: !132, line: 180, baseType: !51, size: 64, offset: 256)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !4228, file: !132, line: 185, baseType: !4242, size: 64, offset: 320)
!4242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4228, file: !132, line: 181, size: 64, elements: !4243)
!4243 = !{!4244, !4245}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !4242, file: !132, line: 183, baseType: !54, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4242, file: !132, line: 184, baseType: !53, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !4228, file: !132, line: 186, baseType: !54, size: 64, offset: 384)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !4228, file: !132, line: 193, baseType: !4248, size: 64, offset: 448)
!4248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4228, file: !132, line: 189, size: 64, elements: !4249)
!4249 = !{!4250, !4251}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !4248, file: !132, line: 191, baseType: !158, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4248, file: !132, line: 192, baseType: !162, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !4228, file: !132, line: 198, baseType: !4253, size: 64, offset: 512)
!4253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4228, file: !132, line: 194, size: 64, elements: !4254)
!4254 = !{!4255, !4256}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !4253, file: !132, line: 196, baseType: !169, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4253, file: !132, line: 197, baseType: !173, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !4228, file: !132, line: 200, baseType: !53, size: 64, offset: 576)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !4228, file: !132, line: 201, baseType: !94, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !4228, file: !132, line: 202, baseType: !94, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !4228, file: !132, line: 206, baseType: !94, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "o_tok", scope: !4222, file: !124, line: 34, baseType: !4228, size: 704, offset: 896)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "o_tok_len", scope: !4222, file: !124, line: 35, baseType: !4228, size: 704, offset: 1600)
!4263 = !{!4264}
!4264 = !DILocalVariable(name: "t", arg: 1, scope: !4217, file: !4218, line: 30, type: !4221)
!4265 = !DILocation(line: 30, column: 34, scope: !4217)
!4266 = !DILocation(line: 35, column: 3, scope: !4217)
!4267 = !DILocation(line: 33, column: 10, scope: !4217)
!4268 = !DILocation(line: 36, column: 3, scope: !4217)
!4269 = !DILocation(line: 37, column: 3, scope: !4217)
!4270 = !DILocation(line: 38, column: 1, scope: !4217)
!4271 = distinct !DISubprogram(name: "readtokens0_free", scope: !4218, file: !4218, line: 41, type: !4219, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !1028, variables: !4272)
!4272 = !{!4273, !4274, !4277, !4278, !4280, !4281, !4283}
!4273 = !DILocalVariable(name: "t", arg: 1, scope: !4271, file: !4218, line: 41, type: !4221)
!4274 = !DILocalVariable(name: "__o", scope: !4275, file: !4218, line: 43, type: !4276)
!4275 = distinct !DILexicalBlock(scope: !4271, file: !4218, line: 43, column: 3)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4277 = !DILocalVariable(name: "__obj", scope: !4275, file: !4218, line: 43, type: !53)
!4278 = !DILocalVariable(name: "__o", scope: !4279, file: !4218, line: 44, type: !4276)
!4279 = distinct !DILexicalBlock(scope: !4271, file: !4218, line: 44, column: 3)
!4280 = !DILocalVariable(name: "__obj", scope: !4279, file: !4218, line: 44, type: !53)
!4281 = !DILocalVariable(name: "__o", scope: !4282, file: !4218, line: 45, type: !4276)
!4282 = distinct !DILexicalBlock(scope: !4271, file: !4218, line: 45, column: 3)
!4283 = !DILocalVariable(name: "__obj", scope: !4282, file: !4218, line: 45, type: !53)
!4284 = !DILocation(line: 41, column: 34, scope: !4271)
!4285 = !DILocation(line: 43, column: 3, scope: !4275)
!4286 = !DILocation(line: 43, column: 3, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4275, file: !4218, line: 43, column: 3)
!4288 = !DILocation(line: 44, column: 3, scope: !4279)
!4289 = !DILocation(line: 44, column: 3, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4279, file: !4218, line: 44, column: 3)
!4291 = !DILocation(line: 45, column: 3, scope: !4282)
!4292 = !DILocation(line: 45, column: 3, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4282, file: !4218, line: 45, column: 3)
!4294 = !DILocation(line: 46, column: 1, scope: !4271)
!4295 = distinct !DISubprogram(name: "readtokens0", scope: !4218, file: !4218, line: 66, type: !4296, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !1028, variables: !4338)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!71, !4298, !4221}
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !4300)
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 241, size: 1728, elements: !4301)
!4301 = !{!4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4300, file: !193, line: 242, baseType: !57, size: 32)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4300, file: !193, line: 247, baseType: !51, size: 64, offset: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4300, file: !193, line: 248, baseType: !51, size: 64, offset: 128)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4300, file: !193, line: 249, baseType: !51, size: 64, offset: 192)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4300, file: !193, line: 250, baseType: !51, size: 64, offset: 256)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4300, file: !193, line: 251, baseType: !51, size: 64, offset: 320)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4300, file: !193, line: 252, baseType: !51, size: 64, offset: 384)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4300, file: !193, line: 253, baseType: !51, size: 64, offset: 448)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4300, file: !193, line: 254, baseType: !51, size: 64, offset: 512)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4300, file: !193, line: 256, baseType: !51, size: 64, offset: 576)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4300, file: !193, line: 257, baseType: !51, size: 64, offset: 640)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4300, file: !193, line: 258, baseType: !51, size: 64, offset: 704)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4300, file: !193, line: 260, baseType: !4315, size: 64, offset: 768)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !193, line: 156, size: 192, elements: !4317)
!4317 = !{!4318, !4319, !4321}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4316, file: !193, line: 157, baseType: !4315, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4316, file: !193, line: 158, baseType: !4320, size: 64, offset: 64)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4316, file: !193, line: 162, baseType: !57, size: 32, offset: 128)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4300, file: !193, line: 262, baseType: !4320, size: 64, offset: 832)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4300, file: !193, line: 264, baseType: !57, size: 32, offset: 896)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4300, file: !193, line: 268, baseType: !57, size: 32, offset: 928)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4300, file: !193, line: 270, baseType: !102, size: 64, offset: 960)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4300, file: !193, line: 274, baseType: !58, size: 16, offset: 1024)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4300, file: !193, line: 275, baseType: !221, size: 8, offset: 1040)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4300, file: !193, line: 276, baseType: !223, size: 8, offset: 1048)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4300, file: !193, line: 280, baseType: !227, size: 64, offset: 1088)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4300, file: !193, line: 289, baseType: !230, size: 64, offset: 1152)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4300, file: !193, line: 297, baseType: !53, size: 64, offset: 1216)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4300, file: !193, line: 298, baseType: !53, size: 64, offset: 1280)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4300, file: !193, line: 299, baseType: !53, size: 64, offset: 1344)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4300, file: !193, line: 300, baseType: !53, size: 64, offset: 1408)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4300, file: !193, line: 302, baseType: !54, size: 64, offset: 1472)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4300, file: !193, line: 303, baseType: !57, size: 32, offset: 1536)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4300, file: !193, line: 305, baseType: !238, size: 160, offset: 1568)
!4338 = !{!4339, !4340, !4341, !4343, !4346, !4350, !4354, !4357, !4359, !4362, !4364, !4367, !4369, !4370, !4372, !4373, !4375}
!4339 = !DILocalVariable(name: "in", arg: 1, scope: !4295, file: !4218, line: 66, type: !4298)
!4340 = !DILocalVariable(name: "t", arg: 2, scope: !4295, file: !4218, line: 66, type: !4221)
!4341 = !DILocalVariable(name: "c", scope: !4342, file: !4218, line: 71, type: !57)
!4342 = distinct !DILexicalBlock(scope: !4295, file: !4218, line: 70, column: 5)
!4343 = !DILocalVariable(name: "len", scope: !4344, file: !4218, line: 74, type: !54)
!4344 = distinct !DILexicalBlock(scope: !4345, file: !4218, line: 73, column: 9)
!4345 = distinct !DILexicalBlock(scope: !4342, file: !4218, line: 72, column: 11)
!4346 = !DILocalVariable(name: "__o", scope: !4347, file: !4218, line: 74, type: !4348)
!4347 = distinct !DILexicalBlock(scope: !4344, file: !4218, line: 74, column: 24)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4228)
!4350 = !DILocalVariable(name: "__o", scope: !4351, file: !4218, line: 80, type: !4276)
!4351 = distinct !DILexicalBlock(scope: !4352, file: !4218, line: 80, column: 15)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !4218, line: 79, column: 13)
!4353 = distinct !DILexicalBlock(scope: !4344, file: !4218, line: 78, column: 15)
!4354 = !DILocalVariable(name: "__o1", scope: !4355, file: !4218, line: 80, type: !4348)
!4355 = distinct !DILexicalBlock(scope: !4356, file: !4218, line: 80, column: 15)
!4356 = distinct !DILexicalBlock(scope: !4351, file: !4218, line: 80, column: 15)
!4357 = !DILocalVariable(name: "__o", scope: !4358, file: !4218, line: 87, type: !4276)
!4358 = distinct !DILexicalBlock(scope: !4342, file: !4218, line: 87, column: 7)
!4359 = !DILocalVariable(name: "__o1", scope: !4360, file: !4218, line: 87, type: !4348)
!4360 = distinct !DILexicalBlock(scope: !4361, file: !4218, line: 87, column: 7)
!4361 = distinct !DILexicalBlock(scope: !4358, file: !4218, line: 87, column: 7)
!4362 = !DILocalVariable(name: "__o", scope: !4363, file: !4218, line: 94, type: !4276)
!4363 = distinct !DILexicalBlock(scope: !4295, file: !4218, line: 94, column: 3)
!4364 = !DILocalVariable(name: "__o1", scope: !4365, file: !4218, line: 94, type: !4348)
!4365 = distinct !DILexicalBlock(scope: !4366, file: !4218, line: 94, column: 3)
!4366 = distinct !DILexicalBlock(scope: !4363, file: !4218, line: 94, column: 3)
!4367 = !DILocalVariable(name: "__o1", scope: !4368, file: !4218, line: 94, type: !4276)
!4368 = distinct !DILexicalBlock(scope: !4363, file: !4218, line: 94, column: 3)
!4369 = !DILocalVariable(name: "__p1", scope: !4368, file: !4218, line: 94, type: !53)
!4370 = !DILocalVariable(name: "__o1", scope: !4371, file: !4218, line: 96, type: !4276)
!4371 = distinct !DILexicalBlock(scope: !4295, file: !4218, line: 96, column: 12)
!4372 = !DILocalVariable(name: "__value", scope: !4371, file: !4218, line: 96, type: !53)
!4373 = !DILocalVariable(name: "__o1", scope: !4374, file: !4218, line: 97, type: !4276)
!4374 = distinct !DILexicalBlock(scope: !4295, file: !4218, line: 97, column: 16)
!4375 = !DILocalVariable(name: "__value", scope: !4374, file: !4218, line: 97, type: !53)
!4376 = !DILocation(line: 66, column: 20, scope: !4295)
!4377 = !DILocation(line: 66, column: 39, scope: !4295)
!4378 = !DILocation(line: 71, column: 15, scope: !4342)
!4379 = !DILocation(line: 71, column: 11, scope: !4342)
!4380 = !DILocation(line: 72, column: 13, scope: !4345)
!4381 = !DILocation(line: 72, column: 11, scope: !4342)
!4382 = !DILocation(line: 74, column: 24, scope: !4347)
!4383 = !{!1252, !1114, i64 24}
!4384 = !{!1252, !1114, i64 16}
!4385 = !DILocation(line: 78, column: 15, scope: !4353)
!4386 = !DILocation(line: 78, column: 15, scope: !4344)
!4387 = !DILocation(line: 80, column: 15, scope: !4351)
!4388 = !DILocation(line: 80, column: 15, scope: !4355)
!4389 = !{!1252, !1114, i64 32}
!4390 = !DILocation(line: 80, column: 15, scope: !4356)
!4391 = !DILocation(line: 81, column: 15, scope: !4352)
!4392 = !DILocation(line: 87, column: 7, scope: !4358)
!4393 = !DILocation(line: 87, column: 7, scope: !4360)
!4394 = !DILocation(line: 87, column: 7, scope: !4361)
!4395 = !DILocation(line: 88, column: 13, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4342, file: !4218, line: 88, column: 11)
!4397 = !DILocation(line: 88, column: 11, scope: !4342)
!4398 = !DILocation(line: 89, column: 9, scope: !4396)
!4399 = distinct !{!4399, !4400, !4401}
!4400 = !DILocation(line: 69, column: 3, scope: !4295)
!4401 = !DILocation(line: 90, column: 5, scope: !4295)
!4402 = !DILocation(line: 94, column: 3, scope: !4363)
!4403 = !DILocation(line: 94, column: 3, scope: !4365)
!4404 = !DILocation(line: 94, column: 3, scope: !4366)
!4405 = !DILocation(line: 94, column: 3, scope: !4368)
!4406 = !DIExpression(DW_OP_deref)
!4407 = !DILocation(line: 96, column: 12, scope: !4371)
!4408 = !DILocation(line: 96, column: 12, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4371, file: !4218, line: 96, column: 12)
!4410 = !{!1252, !1156, i64 48}
!4411 = !DILocation(line: 96, column: 12, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4371, file: !4218, line: 96, column: 12)
!4413 = !{!1252, !1114, i64 8}
!4414 = !DILocation(line: 96, column: 6, scope: !4295)
!4415 = !DILocation(line: 96, column: 10, scope: !4295)
!4416 = !DIExpression(DW_OP_plus_uconst, 200, DW_OP_stack_value)
!4417 = !DILocation(line: 97, column: 16, scope: !4374)
!4418 = !DILocation(line: 97, column: 16, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4374, file: !4218, line: 97, column: 16)
!4420 = !DILocation(line: 97, column: 16, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4374, file: !4218, line: 97, column: 16)
!4422 = !DILocation(line: 97, column: 6, scope: !4295)
!4423 = !DILocation(line: 97, column: 14, scope: !4295)
!4424 = !{!1251, !1114, i64 16}
!4425 = !DILocation(line: 98, column: 12, scope: !4295)
!4426 = !DILocation(line: 98, column: 10, scope: !4295)
!4427 = !DILocation(line: 98, column: 3, scope: !4295)
!4428 = distinct !DISubprogram(name: "save_token", scope: !4218, file: !4218, line: 51, type: !4219, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !1028, variables: !4429)
!4429 = !{!4430, !4431, !4432, !4434, !4435, !4437, !4438, !4440, !4443, !4445, !4446, !4448, !4449}
!4430 = !DILocalVariable(name: "t", arg: 1, scope: !4428, file: !4218, line: 51, type: !4221)
!4431 = !DILocalVariable(name: "len", scope: !4428, file: !4218, line: 54, type: !54)
!4432 = !DILocalVariable(name: "__o", scope: !4433, file: !4218, line: 54, type: !4348)
!4433 = distinct !DILexicalBlock(scope: !4428, file: !4218, line: 54, column: 16)
!4434 = !DILocalVariable(name: "s", scope: !4428, file: !4218, line: 55, type: !288)
!4435 = !DILocalVariable(name: "__o1", scope: !4436, file: !4218, line: 55, type: !4276)
!4436 = distinct !DILexicalBlock(scope: !4428, file: !4218, line: 55, column: 19)
!4437 = !DILocalVariable(name: "__value", scope: !4436, file: !4218, line: 55, type: !53)
!4438 = !DILocalVariable(name: "__o", scope: !4439, file: !4218, line: 56, type: !4276)
!4439 = distinct !DILexicalBlock(scope: !4428, file: !4218, line: 56, column: 3)
!4440 = !DILocalVariable(name: "__o1", scope: !4441, file: !4218, line: 56, type: !4348)
!4441 = distinct !DILexicalBlock(scope: !4442, file: !4218, line: 56, column: 3)
!4442 = distinct !DILexicalBlock(scope: !4439, file: !4218, line: 56, column: 3)
!4443 = !DILocalVariable(name: "__o1", scope: !4444, file: !4218, line: 56, type: !4276)
!4444 = distinct !DILexicalBlock(scope: !4439, file: !4218, line: 56, column: 3)
!4445 = !DILocalVariable(name: "__p1", scope: !4444, file: !4218, line: 56, type: !53)
!4446 = !DILocalVariable(name: "__o", scope: !4447, file: !4218, line: 57, type: !4276)
!4447 = distinct !DILexicalBlock(scope: !4428, file: !4218, line: 57, column: 3)
!4448 = !DILocalVariable(name: "__len", scope: !4447, file: !4218, line: 57, type: !54)
!4449 = !DILocalVariable(name: "__o1", scope: !4450, file: !4218, line: 57, type: !4348)
!4450 = distinct !DILexicalBlock(scope: !4451, file: !4218, line: 57, column: 3)
!4451 = distinct !DILexicalBlock(scope: !4447, file: !4218, line: 57, column: 3)
!4452 = !DILocation(line: 51, column: 28, scope: !4428)
!4453 = !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)
!4454 = !DILocation(line: 54, column: 16, scope: !4433)
!4455 = !DILocation(line: 54, column: 49, scope: !4428)
!4456 = !DILocation(line: 54, column: 10, scope: !4428)
!4457 = !DILocation(line: 55, column: 19, scope: !4436)
!4458 = !DILocation(line: 55, column: 19, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4436, file: !4218, line: 55, column: 19)
!4460 = !DILocation(line: 55, column: 19, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4436, file: !4218, line: 55, column: 19)
!4462 = !DILocation(line: 55, column: 15, scope: !4428)
!4463 = !DILocation(line: 56, column: 3, scope: !4439)
!4464 = !DILocation(line: 56, column: 3, scope: !4441)
!4465 = !DILocation(line: 56, column: 3, scope: !4442)
!4466 = !DILocation(line: 56, column: 3, scope: !4444)
!4467 = !DILocation(line: 57, column: 3, scope: !4447)
!4468 = !DILocation(line: 57, column: 3, scope: !4450)
!4469 = !DILocation(line: 57, column: 3, scope: !4451)
!4470 = !DILocation(line: 58, column: 6, scope: !4428)
!4471 = !DILocation(line: 58, column: 11, scope: !4428)
!4472 = !DILocation(line: 59, column: 1, scope: !4428)
!4473 = !DILocation(line: 56, column: 14, scope: !1039)
!4474 = !DILocation(line: 56, column: 30, scope: !1039)
!4475 = !DILocation(line: 56, column: 42, scope: !1039)
!4476 = !DILocation(line: 66, column: 24, scope: !1047)
!4477 = !DILocation(line: 66, column: 15, scope: !1047)
!4478 = !DILocation(line: 68, column: 13, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !1047, file: !1038, line: 68, column: 11)
!4480 = !DILocation(line: 68, column: 11, scope: !1047)
!4481 = !DILocation(line: 70, column: 16, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4479, file: !1038, line: 70, column: 16)
!4483 = distinct !{!4483, !4484, !4485}
!4484 = !DILocation(line: 64, column: 3, scope: !1049)
!4485 = !DILocation(line: 76, column: 5, scope: !1049)
!4486 = !DILocation(line: 70, column: 16, scope: !4479)
!4487 = !DILocation(line: 72, column: 22, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4482, file: !1038, line: 72, column: 16)
!4489 = !DILocation(line: 72, column: 54, scope: !4488)
!4490 = !DILocation(line: 72, column: 32, scope: !4488)
!4491 = !DILocation(line: 77, column: 1, scope: !1039)
!4492 = distinct !DISubprogram(name: "version_etc_arn", scope: !1059, file: !1059, line: 62, type: !4493, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !1055, variables: !4536)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{null, !4495, !288, !288, !288, !4535, !54}
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !4497)
!4497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 241, size: 1728, elements: !4498)
!4498 = !{!4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4497, file: !193, line: 242, baseType: !57, size: 32)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4497, file: !193, line: 247, baseType: !51, size: 64, offset: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4497, file: !193, line: 248, baseType: !51, size: 64, offset: 128)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4497, file: !193, line: 249, baseType: !51, size: 64, offset: 192)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4497, file: !193, line: 250, baseType: !51, size: 64, offset: 256)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4497, file: !193, line: 251, baseType: !51, size: 64, offset: 320)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4497, file: !193, line: 252, baseType: !51, size: 64, offset: 384)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4497, file: !193, line: 253, baseType: !51, size: 64, offset: 448)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4497, file: !193, line: 254, baseType: !51, size: 64, offset: 512)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4497, file: !193, line: 256, baseType: !51, size: 64, offset: 576)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4497, file: !193, line: 257, baseType: !51, size: 64, offset: 640)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4497, file: !193, line: 258, baseType: !51, size: 64, offset: 704)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4497, file: !193, line: 260, baseType: !4512, size: 64, offset: 768)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !193, line: 156, size: 192, elements: !4514)
!4514 = !{!4515, !4516, !4518}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4513, file: !193, line: 157, baseType: !4512, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4513, file: !193, line: 158, baseType: !4517, size: 64, offset: 64)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4513, file: !193, line: 162, baseType: !57, size: 32, offset: 128)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4497, file: !193, line: 262, baseType: !4517, size: 64, offset: 832)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4497, file: !193, line: 264, baseType: !57, size: 32, offset: 896)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4497, file: !193, line: 268, baseType: !57, size: 32, offset: 928)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4497, file: !193, line: 270, baseType: !102, size: 64, offset: 960)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4497, file: !193, line: 274, baseType: !58, size: 16, offset: 1024)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4497, file: !193, line: 275, baseType: !221, size: 8, offset: 1040)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4497, file: !193, line: 276, baseType: !223, size: 8, offset: 1048)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4497, file: !193, line: 280, baseType: !227, size: 64, offset: 1088)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4497, file: !193, line: 289, baseType: !230, size: 64, offset: 1152)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4497, file: !193, line: 297, baseType: !53, size: 64, offset: 1216)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4497, file: !193, line: 298, baseType: !53, size: 64, offset: 1280)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4497, file: !193, line: 299, baseType: !53, size: 64, offset: 1344)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4497, file: !193, line: 300, baseType: !53, size: 64, offset: 1408)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4497, file: !193, line: 302, baseType: !54, size: 64, offset: 1472)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4497, file: !193, line: 303, baseType: !57, size: 32, offset: 1536)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4497, file: !193, line: 305, baseType: !238, size: 160, offset: 1568)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!4536 = !{!4537, !4538, !4539, !4540, !4541, !4542}
!4537 = !DILocalVariable(name: "stream", arg: 1, scope: !4492, file: !1059, line: 62, type: !4495)
!4538 = !DILocalVariable(name: "command_name", arg: 2, scope: !4492, file: !1059, line: 63, type: !288)
!4539 = !DILocalVariable(name: "package", arg: 3, scope: !4492, file: !1059, line: 63, type: !288)
!4540 = !DILocalVariable(name: "version", arg: 4, scope: !4492, file: !1059, line: 64, type: !288)
!4541 = !DILocalVariable(name: "authors", arg: 5, scope: !4492, file: !1059, line: 65, type: !4535)
!4542 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4492, file: !1059, line: 65, type: !54)
!4543 = !DILocation(line: 62, column: 24, scope: !4492)
!4544 = !DILocation(line: 63, column: 30, scope: !4492)
!4545 = !DILocation(line: 63, column: 56, scope: !4492)
!4546 = !DILocation(line: 64, column: 30, scope: !4492)
!4547 = !DILocation(line: 65, column: 39, scope: !4492)
!4548 = !DILocation(line: 65, column: 55, scope: !4492)
!4549 = !DILocation(line: 67, column: 7, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4492, file: !1059, line: 67, column: 7)
!4551 = !DILocation(line: 67, column: 7, scope: !4492)
!4552 = !DILocation(line: 68, column: 5, scope: !4550)
!4553 = !DILocation(line: 70, column: 5, scope: !4550)
!4554 = !DILocation(line: 84, column: 3, scope: !4492)
!4555 = !DILocation(line: 86, column: 3, scope: !4492)
!4556 = !DILocation(line: 95, column: 3, scope: !4492)
!4557 = !DILocation(line: 99, column: 7, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4492, file: !1059, line: 96, column: 5)
!4559 = !DILocation(line: 102, column: 7, scope: !4558)
!4560 = !DILocation(line: 103, column: 7, scope: !4558)
!4561 = !DILocation(line: 106, column: 7, scope: !4558)
!4562 = !DILocation(line: 107, column: 7, scope: !4558)
!4563 = !DILocation(line: 110, column: 7, scope: !4558)
!4564 = !DILocation(line: 112, column: 7, scope: !4558)
!4565 = !DILocation(line: 117, column: 7, scope: !4558)
!4566 = !DILocation(line: 119, column: 7, scope: !4558)
!4567 = !DILocation(line: 124, column: 7, scope: !4558)
!4568 = !DILocation(line: 126, column: 7, scope: !4558)
!4569 = !DILocation(line: 131, column: 7, scope: !4558)
!4570 = !DILocation(line: 134, column: 7, scope: !4558)
!4571 = !DILocation(line: 139, column: 7, scope: !4558)
!4572 = !DILocation(line: 142, column: 7, scope: !4558)
!4573 = !DILocation(line: 147, column: 7, scope: !4558)
!4574 = !DILocation(line: 151, column: 7, scope: !4558)
!4575 = !DILocation(line: 156, column: 7, scope: !4558)
!4576 = !DILocation(line: 160, column: 7, scope: !4558)
!4577 = !DILocation(line: 167, column: 7, scope: !4558)
!4578 = !DILocation(line: 171, column: 7, scope: !4558)
!4579 = !DILocation(line: 173, column: 1, scope: !4492)
!4580 = distinct !DISubprogram(name: "version_etc_ar", scope: !1059, file: !1059, line: 180, type: !4581, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !1055, variables: !4583)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{null, !4495, !288, !288, !288, !4535}
!4583 = !{!4584, !4585, !4586, !4587, !4588, !4589}
!4584 = !DILocalVariable(name: "stream", arg: 1, scope: !4580, file: !1059, line: 180, type: !4495)
!4585 = !DILocalVariable(name: "command_name", arg: 2, scope: !4580, file: !1059, line: 181, type: !288)
!4586 = !DILocalVariable(name: "package", arg: 3, scope: !4580, file: !1059, line: 181, type: !288)
!4587 = !DILocalVariable(name: "version", arg: 4, scope: !4580, file: !1059, line: 182, type: !288)
!4588 = !DILocalVariable(name: "authors", arg: 5, scope: !4580, file: !1059, line: 182, type: !4535)
!4589 = !DILocalVariable(name: "n_authors", scope: !4580, file: !1059, line: 184, type: !54)
!4590 = !DILocation(line: 180, column: 23, scope: !4580)
!4591 = !DILocation(line: 181, column: 29, scope: !4580)
!4592 = !DILocation(line: 181, column: 55, scope: !4580)
!4593 = !DILocation(line: 182, column: 29, scope: !4580)
!4594 = !DILocation(line: 182, column: 59, scope: !4580)
!4595 = !DILocation(line: 184, column: 10, scope: !4580)
!4596 = !DILocation(line: 186, column: 8, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4580, file: !1059, line: 186, column: 3)
!4598 = !DILocation(line: 186, column: 23, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4597, file: !1059, line: 186, column: 3)
!4600 = !DILocation(line: 186, column: 3, scope: !4597)
!4601 = !DILocation(line: 186, column: 52, scope: !4599)
!4602 = distinct !{!4602, !4600, !4603}
!4603 = !DILocation(line: 187, column: 5, scope: !4597)
!4604 = !DILocation(line: 188, column: 3, scope: !4580)
!4605 = !DILocation(line: 189, column: 1, scope: !4580)
!4606 = distinct !DISubprogram(name: "version_etc_va", scope: !1059, file: !1059, line: 196, type: !4607, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !1055, variables: !4616)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{null, !4495, !288, !288, !288, !4609}
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1056, line: 189, size: 192, elements: !4611)
!4611 = !{!4612, !4613, !4614, !4615}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4610, file: !1056, line: 189, baseType: !94, size: 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4610, file: !1056, line: 189, baseType: !94, size: 32, offset: 32)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4610, file: !1056, line: 189, baseType: !53, size: 64, offset: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4610, file: !1056, line: 189, baseType: !53, size: 64, offset: 128)
!4616 = !{!4617, !4618, !4619, !4620, !4621, !4622, !4623}
!4617 = !DILocalVariable(name: "stream", arg: 1, scope: !4606, file: !1059, line: 196, type: !4495)
!4618 = !DILocalVariable(name: "command_name", arg: 2, scope: !4606, file: !1059, line: 197, type: !288)
!4619 = !DILocalVariable(name: "package", arg: 3, scope: !4606, file: !1059, line: 197, type: !288)
!4620 = !DILocalVariable(name: "version", arg: 4, scope: !4606, file: !1059, line: 198, type: !288)
!4621 = !DILocalVariable(name: "authors", arg: 5, scope: !4606, file: !1059, line: 198, type: !4609)
!4622 = !DILocalVariable(name: "n_authors", scope: !4606, file: !1059, line: 200, type: !54)
!4623 = !DILocalVariable(name: "authtab", scope: !4606, file: !1059, line: 201, type: !4624)
!4624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 640, elements: !394)
!4625 = !DILocation(line: 196, column: 23, scope: !4606)
!4626 = !DILocation(line: 197, column: 29, scope: !4606)
!4627 = !DILocation(line: 197, column: 55, scope: !4606)
!4628 = !DILocation(line: 198, column: 29, scope: !4606)
!4629 = !DILocation(line: 198, column: 46, scope: !4606)
!4630 = !DILocation(line: 201, column: 3, scope: !4606)
!4631 = !DILocation(line: 201, column: 15, scope: !4606)
!4632 = !DILocation(line: 200, column: 10, scope: !4606)
!4633 = !DILocation(line: 205, column: 35, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4635, file: !1059, line: 203, column: 3)
!4635 = distinct !DILexicalBlock(scope: !4606, file: !1059, line: 203, column: 3)
!4636 = !DILocation(line: 205, column: 14, scope: !4634)
!4637 = !DILocation(line: 205, column: 33, scope: !4634)
!4638 = !DILocation(line: 205, column: 67, scope: !4634)
!4639 = !DILocation(line: 203, column: 3, scope: !4635)
!4640 = !DILocation(line: 208, column: 3, scope: !4606)
!4641 = !DILocation(line: 210, column: 1, scope: !4606)
!4642 = distinct !DISubprogram(name: "version_etc", scope: !1059, file: !1059, line: 227, type: !4643, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !1055, variables: !4645)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{null, !4495, !288, !288, !288, null}
!4645 = !{!4646, !4647, !4648, !4649, !4650}
!4646 = !DILocalVariable(name: "stream", arg: 1, scope: !4642, file: !1059, line: 227, type: !4495)
!4647 = !DILocalVariable(name: "command_name", arg: 2, scope: !4642, file: !1059, line: 228, type: !288)
!4648 = !DILocalVariable(name: "package", arg: 3, scope: !4642, file: !1059, line: 228, type: !288)
!4649 = !DILocalVariable(name: "version", arg: 4, scope: !4642, file: !1059, line: 229, type: !288)
!4650 = !DILocalVariable(name: "authors", scope: !4642, file: !1059, line: 231, type: !4651)
!4651 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1552, line: 46, baseType: !4652)
!4652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4653, line: 48, baseType: !4654)
!4653 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1056, line: 231, baseType: !4655)
!4655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4610, size: 192, elements: !224)
!4656 = !DILocation(line: 227, column: 20, scope: !4642)
!4657 = !DILocation(line: 228, column: 26, scope: !4642)
!4658 = !DILocation(line: 228, column: 52, scope: !4642)
!4659 = !DILocation(line: 229, column: 26, scope: !4642)
!4660 = !DILocation(line: 231, column: 3, scope: !4642)
!4661 = !DILocation(line: 231, column: 11, scope: !4642)
!4662 = !DILocation(line: 233, column: 3, scope: !4642)
!4663 = !DILocation(line: 234, column: 3, scope: !4642)
!4664 = !DILocation(line: 235, column: 3, scope: !4642)
!4665 = !DILocation(line: 236, column: 1, scope: !4642)
!4666 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !1059, file: !1059, line: 239, type: !445, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !1055, variables: !342)
!4667 = !DILocation(line: 245, column: 3, scope: !4666)
!4668 = !DILocation(line: 251, column: 3, scope: !4666)
!4669 = !DILocation(line: 256, column: 3, scope: !4666)
!4670 = !DILocation(line: 258, column: 1, scope: !4666)
!4671 = distinct !DISubprogram(name: "xnmalloc", scope: !1066, file: !1066, line: 105, type: !1292, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !1062, variables: !4672)
!4672 = !{!4673, !4674}
!4673 = !DILocalVariable(name: "n", arg: 1, scope: !4671, file: !1066, line: 105, type: !54)
!4674 = !DILocalVariable(name: "s", arg: 2, scope: !4671, file: !1066, line: 105, type: !54)
!4675 = !DILocation(line: 105, column: 18, scope: !4671)
!4676 = !DILocation(line: 105, column: 28, scope: !4671)
!4677 = !DILocation(line: 107, column: 7, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4671, file: !1066, line: 107, column: 7)
!4679 = !DILocation(line: 107, column: 7, scope: !4671)
!4680 = !DILocation(line: 108, column: 5, scope: !4678)
!4681 = !DILocation(line: 109, column: 21, scope: !4671)
!4682 = !DILocalVariable(name: "n", arg: 1, scope: !4683, file: !4684, line: 39, type: !54)
!4683 = distinct !DISubprogram(name: "xmalloc", scope: !4684, file: !4684, line: 39, type: !159, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !1062, variables: !4685)
!4684 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4685 = !{!4682, !4686}
!4686 = !DILocalVariable(name: "p", scope: !4683, file: !4684, line: 41, type: !53)
!4687 = !DILocation(line: 39, column: 17, scope: !4683, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 109, column: 10, scope: !4671)
!4689 = !DILocation(line: 41, column: 13, scope: !4683, inlinedAt: !4688)
!4690 = !DILocation(line: 41, column: 9, scope: !4683, inlinedAt: !4688)
!4691 = !DILocation(line: 42, column: 8, scope: !4692, inlinedAt: !4688)
!4692 = distinct !DILexicalBlock(scope: !4683, file: !4684, line: 42, column: 7)
!4693 = !DILocation(line: 42, column: 15, scope: !4692, inlinedAt: !4688)
!4694 = !DILocation(line: 42, column: 10, scope: !4692, inlinedAt: !4688)
!4695 = !DILocation(line: 43, column: 5, scope: !4692, inlinedAt: !4688)
!4696 = !DILocation(line: 109, column: 3, scope: !4671)
!4697 = !DILocation(line: 39, column: 17, scope: !4683)
!4698 = !DILocation(line: 41, column: 13, scope: !4683)
!4699 = !DILocation(line: 41, column: 9, scope: !4683)
!4700 = !DILocation(line: 42, column: 8, scope: !4692)
!4701 = !DILocation(line: 42, column: 15, scope: !4692)
!4702 = !DILocation(line: 42, column: 10, scope: !4692)
!4703 = !DILocation(line: 43, column: 5, scope: !4692)
!4704 = !DILocation(line: 44, column: 3, scope: !4683)
!4705 = distinct !DISubprogram(name: "xnrealloc", scope: !1066, file: !1066, line: 118, type: !4706, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !1062, variables: !4708)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!53, !53, !54, !54}
!4708 = !{!4709, !4710, !4711}
!4709 = !DILocalVariable(name: "p", arg: 1, scope: !4705, file: !1066, line: 118, type: !53)
!4710 = !DILocalVariable(name: "n", arg: 2, scope: !4705, file: !1066, line: 118, type: !54)
!4711 = !DILocalVariable(name: "s", arg: 3, scope: !4705, file: !1066, line: 118, type: !54)
!4712 = !DILocation(line: 118, column: 18, scope: !4705)
!4713 = !DILocation(line: 118, column: 28, scope: !4705)
!4714 = !DILocation(line: 118, column: 38, scope: !4705)
!4715 = !DILocation(line: 120, column: 7, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4705, file: !1066, line: 120, column: 7)
!4717 = !DILocation(line: 120, column: 7, scope: !4705)
!4718 = !DILocation(line: 121, column: 5, scope: !4716)
!4719 = !DILocation(line: 122, column: 25, scope: !4705)
!4720 = !DILocalVariable(name: "p", arg: 1, scope: !4721, file: !4684, line: 51, type: !53)
!4721 = distinct !DISubprogram(name: "xrealloc", scope: !4684, file: !4684, line: 51, type: !163, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !1062, variables: !4722)
!4722 = !{!4720, !4723}
!4723 = !DILocalVariable(name: "n", arg: 2, scope: !4721, file: !4684, line: 51, type: !54)
!4724 = !DILocation(line: 51, column: 17, scope: !4721, inlinedAt: !4725)
!4725 = distinct !DILocation(line: 122, column: 10, scope: !4705)
!4726 = !DILocation(line: 51, column: 27, scope: !4721, inlinedAt: !4725)
!4727 = !DILocation(line: 53, column: 8, scope: !4728, inlinedAt: !4725)
!4728 = distinct !DILexicalBlock(scope: !4721, file: !4684, line: 53, column: 7)
!4729 = !DILocation(line: 53, column: 13, scope: !4728, inlinedAt: !4725)
!4730 = !DILocation(line: 53, column: 10, scope: !4728, inlinedAt: !4725)
!4731 = !DILocation(line: 57, column: 7, scope: !4732, inlinedAt: !4725)
!4732 = distinct !DILexicalBlock(scope: !4728, file: !4684, line: 54, column: 5)
!4733 = !DILocation(line: 58, column: 7, scope: !4732, inlinedAt: !4725)
!4734 = !DILocation(line: 61, column: 7, scope: !4721, inlinedAt: !4725)
!4735 = !DILocation(line: 62, column: 8, scope: !4736, inlinedAt: !4725)
!4736 = distinct !DILexicalBlock(scope: !4721, file: !4684, line: 62, column: 7)
!4737 = !DILocation(line: 62, column: 13, scope: !4736, inlinedAt: !4725)
!4738 = !DILocation(line: 62, column: 10, scope: !4736, inlinedAt: !4725)
!4739 = !DILocation(line: 63, column: 5, scope: !4736, inlinedAt: !4725)
!4740 = !DILocation(line: 122, column: 3, scope: !4705)
!4741 = !DILocation(line: 51, column: 17, scope: !4721)
!4742 = !DILocation(line: 51, column: 27, scope: !4721)
!4743 = !DILocation(line: 53, column: 8, scope: !4728)
!4744 = !DILocation(line: 53, column: 13, scope: !4728)
!4745 = !DILocation(line: 53, column: 10, scope: !4728)
!4746 = !DILocation(line: 57, column: 7, scope: !4732)
!4747 = !DILocation(line: 58, column: 7, scope: !4732)
!4748 = !DILocation(line: 61, column: 7, scope: !4721)
!4749 = !DILocation(line: 62, column: 8, scope: !4736)
!4750 = !DILocation(line: 62, column: 13, scope: !4736)
!4751 = !DILocation(line: 62, column: 10, scope: !4736)
!4752 = !DILocation(line: 63, column: 5, scope: !4736)
!4753 = !DILocation(line: 65, column: 1, scope: !4721)
!4754 = !DILocation(line: 180, column: 19, scope: !1067)
!4755 = !DILocation(line: 180, column: 30, scope: !1067)
!4756 = !DILocation(line: 180, column: 41, scope: !1067)
!4757 = !DILocation(line: 182, column: 14, scope: !1067)
!4758 = !DILocation(line: 182, column: 10, scope: !1067)
!4759 = !DILocation(line: 184, column: 9, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !1067, file: !1066, line: 184, column: 7)
!4761 = !DILocation(line: 184, column: 7, scope: !1067)
!4762 = !DILocation(line: 186, column: 13, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4764, file: !1066, line: 186, column: 11)
!4764 = distinct !DILexicalBlock(scope: !4760, file: !1066, line: 185, column: 5)
!4765 = !DILocation(line: 186, column: 11, scope: !4764)
!4766 = !DILocation(line: 194, column: 30, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4763, file: !1066, line: 187, column: 9)
!4768 = !DILocation(line: 195, column: 16, scope: !4767)
!4769 = !DILocation(line: 195, column: 13, scope: !4767)
!4770 = !DILocation(line: 196, column: 9, scope: !4767)
!4771 = !DILocation(line: 204, column: 69, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4773, file: !1066, line: 204, column: 11)
!4773 = distinct !DILexicalBlock(scope: !4760, file: !1066, line: 199, column: 5)
!4774 = !DILocation(line: 205, column: 11, scope: !4772)
!4775 = !DILocation(line: 204, column: 11, scope: !4773)
!4776 = !DILocation(line: 206, column: 9, scope: !4772)
!4777 = !DILocation(line: 210, column: 7, scope: !1067)
!4778 = !DILocation(line: 211, column: 25, scope: !1067)
!4779 = !DILocation(line: 51, column: 17, scope: !4721, inlinedAt: !4780)
!4780 = distinct !DILocation(line: 211, column: 10, scope: !1067)
!4781 = !DILocation(line: 51, column: 27, scope: !4721, inlinedAt: !4780)
!4782 = !DILocation(line: 53, column: 10, scope: !4728, inlinedAt: !4780)
!4783 = !DILocation(line: 207, column: 14, scope: !4773)
!4784 = !DILocation(line: 207, column: 18, scope: !4773)
!4785 = !DILocation(line: 207, column: 9, scope: !4773)
!4786 = !DILocation(line: 53, column: 8, scope: !4728, inlinedAt: !4780)
!4787 = !DILocation(line: 57, column: 7, scope: !4732, inlinedAt: !4780)
!4788 = !DILocation(line: 58, column: 7, scope: !4732, inlinedAt: !4780)
!4789 = !DILocation(line: 61, column: 7, scope: !4721, inlinedAt: !4780)
!4790 = !DILocation(line: 62, column: 8, scope: !4736, inlinedAt: !4780)
!4791 = !DILocation(line: 62, column: 13, scope: !4736, inlinedAt: !4780)
!4792 = !DILocation(line: 62, column: 10, scope: !4736, inlinedAt: !4780)
!4793 = !DILocation(line: 63, column: 5, scope: !4736, inlinedAt: !4780)
!4794 = !DILocation(line: 211, column: 3, scope: !1067)
!4795 = distinct !DISubprogram(name: "xcharalloc", scope: !1066, file: !1066, line: 220, type: !3496, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !1062, variables: !4796)
!4796 = !{!4797}
!4797 = !DILocalVariable(name: "n", arg: 1, scope: !4795, file: !1066, line: 220, type: !54)
!4798 = !DILocation(line: 220, column: 20, scope: !4795)
!4799 = !DILocation(line: 39, column: 17, scope: !4683, inlinedAt: !4800)
!4800 = distinct !DILocation(line: 222, column: 10, scope: !4795)
!4801 = !DILocation(line: 41, column: 13, scope: !4683, inlinedAt: !4800)
!4802 = !DILocation(line: 41, column: 9, scope: !4683, inlinedAt: !4800)
!4803 = !DILocation(line: 42, column: 8, scope: !4692, inlinedAt: !4800)
!4804 = !DILocation(line: 42, column: 15, scope: !4692, inlinedAt: !4800)
!4805 = !DILocation(line: 42, column: 10, scope: !4692, inlinedAt: !4800)
!4806 = !DILocation(line: 43, column: 5, scope: !4692, inlinedAt: !4800)
!4807 = !DILocation(line: 222, column: 3, scope: !4795)
!4808 = distinct !DISubprogram(name: "x2realloc", scope: !4684, file: !4684, line: 74, type: !4809, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !1062, variables: !4811)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!53, !53, !129}
!4811 = !{!4812, !4813}
!4812 = !DILocalVariable(name: "p", arg: 1, scope: !4808, file: !4684, line: 74, type: !53)
!4813 = !DILocalVariable(name: "pn", arg: 2, scope: !4808, file: !4684, line: 74, type: !129)
!4814 = !DILocation(line: 74, column: 18, scope: !4808)
!4815 = !DILocation(line: 74, column: 29, scope: !4808)
!4816 = !DILocation(line: 180, column: 19, scope: !1067, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 76, column: 10, scope: !4808)
!4818 = !DILocation(line: 180, column: 30, scope: !1067, inlinedAt: !4817)
!4819 = !DILocation(line: 180, column: 41, scope: !1067, inlinedAt: !4817)
!4820 = !DILocation(line: 182, column: 14, scope: !1067, inlinedAt: !4817)
!4821 = !DILocation(line: 182, column: 10, scope: !1067, inlinedAt: !4817)
!4822 = !DILocation(line: 184, column: 9, scope: !4760, inlinedAt: !4817)
!4823 = !DILocation(line: 184, column: 7, scope: !1067, inlinedAt: !4817)
!4824 = !DILocation(line: 186, column: 13, scope: !4763, inlinedAt: !4817)
!4825 = !DILocation(line: 186, column: 11, scope: !4764, inlinedAt: !4817)
!4826 = !DILocation(line: 210, column: 7, scope: !1067, inlinedAt: !4817)
!4827 = !DILocation(line: 51, column: 17, scope: !4721, inlinedAt: !4828)
!4828 = distinct !DILocation(line: 211, column: 10, scope: !1067, inlinedAt: !4817)
!4829 = !DILocation(line: 51, column: 27, scope: !4721, inlinedAt: !4828)
!4830 = !DILocation(line: 53, column: 10, scope: !4728, inlinedAt: !4828)
!4831 = !DILocation(line: 205, column: 11, scope: !4772, inlinedAt: !4817)
!4832 = !DILocation(line: 204, column: 11, scope: !4773, inlinedAt: !4817)
!4833 = !DILocation(line: 206, column: 9, scope: !4772, inlinedAt: !4817)
!4834 = !DILocation(line: 207, column: 14, scope: !4773, inlinedAt: !4817)
!4835 = !DILocation(line: 207, column: 18, scope: !4773, inlinedAt: !4817)
!4836 = !DILocation(line: 207, column: 9, scope: !4773, inlinedAt: !4817)
!4837 = !DILocation(line: 53, column: 8, scope: !4728, inlinedAt: !4828)
!4838 = !DILocation(line: 57, column: 7, scope: !4732, inlinedAt: !4828)
!4839 = !DILocation(line: 58, column: 7, scope: !4732, inlinedAt: !4828)
!4840 = !DILocation(line: 61, column: 7, scope: !4721, inlinedAt: !4828)
!4841 = !DILocation(line: 62, column: 8, scope: !4736, inlinedAt: !4828)
!4842 = !DILocation(line: 62, column: 13, scope: !4736, inlinedAt: !4828)
!4843 = !DILocation(line: 62, column: 10, scope: !4736, inlinedAt: !4828)
!4844 = !DILocation(line: 63, column: 5, scope: !4736, inlinedAt: !4828)
!4845 = !DILocation(line: 76, column: 3, scope: !4808)
!4846 = distinct !DISubprogram(name: "xzalloc", scope: !4684, file: !4684, line: 84, type: !159, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !1062, variables: !4847)
!4847 = !{!4848}
!4848 = !DILocalVariable(name: "s", arg: 1, scope: !4846, file: !4684, line: 84, type: !54)
!4849 = !DILocation(line: 84, column: 17, scope: !4846)
!4850 = !DILocation(line: 39, column: 17, scope: !4683, inlinedAt: !4851)
!4851 = distinct !DILocation(line: 86, column: 18, scope: !4846)
!4852 = !DILocation(line: 41, column: 13, scope: !4683, inlinedAt: !4851)
!4853 = !DILocation(line: 41, column: 9, scope: !4683, inlinedAt: !4851)
!4854 = !DILocation(line: 42, column: 8, scope: !4692, inlinedAt: !4851)
!4855 = !DILocation(line: 42, column: 15, scope: !4692, inlinedAt: !4851)
!4856 = !DILocation(line: 42, column: 10, scope: !4692, inlinedAt: !4851)
!4857 = !DILocation(line: 43, column: 5, scope: !4692, inlinedAt: !4851)
!4858 = !DILocation(line: 86, column: 10, scope: !4846)
!4859 = !DILocation(line: 86, column: 3, scope: !4846)
!4860 = distinct !DISubprogram(name: "xcalloc", scope: !4684, file: !4684, line: 93, type: !1292, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !1062, variables: !4861)
!4861 = !{!4862, !4863, !4864}
!4862 = !DILocalVariable(name: "n", arg: 1, scope: !4860, file: !4684, line: 93, type: !54)
!4863 = !DILocalVariable(name: "s", arg: 2, scope: !4860, file: !4684, line: 93, type: !54)
!4864 = !DILocalVariable(name: "p", scope: !4860, file: !4684, line: 95, type: !53)
!4865 = !DILocation(line: 93, column: 17, scope: !4860)
!4866 = !DILocation(line: 93, column: 27, scope: !4860)
!4867 = !DILocation(line: 100, column: 7, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4860, file: !4684, line: 100, column: 7)
!4869 = !DILocation(line: 101, column: 7, scope: !4868)
!4870 = !DILocation(line: 101, column: 18, scope: !4868)
!4871 = !DILocation(line: 95, column: 9, scope: !4860)
!4872 = !DILocation(line: 101, column: 16, scope: !4868)
!4873 = !DILocation(line: 100, column: 7, scope: !4860)
!4874 = !DILocation(line: 102, column: 5, scope: !4868)
!4875 = !DILocation(line: 103, column: 3, scope: !4860)
!4876 = distinct !DISubprogram(name: "xmemdup", scope: !4684, file: !4684, line: 111, type: !4877, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !1062, variables: !4879)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!53, !1032, !54}
!4879 = !{!4880, !4881}
!4880 = !DILocalVariable(name: "p", arg: 1, scope: !4876, file: !4684, line: 111, type: !1032)
!4881 = !DILocalVariable(name: "s", arg: 2, scope: !4876, file: !4684, line: 111, type: !54)
!4882 = !DILocation(line: 111, column: 22, scope: !4876)
!4883 = !DILocation(line: 111, column: 32, scope: !4876)
!4884 = !DILocation(line: 39, column: 17, scope: !4683, inlinedAt: !4885)
!4885 = distinct !DILocation(line: 113, column: 18, scope: !4876)
!4886 = !DILocation(line: 41, column: 13, scope: !4683, inlinedAt: !4885)
!4887 = !DILocation(line: 41, column: 9, scope: !4683, inlinedAt: !4885)
!4888 = !DILocation(line: 42, column: 8, scope: !4692, inlinedAt: !4885)
!4889 = !DILocation(line: 42, column: 15, scope: !4692, inlinedAt: !4885)
!4890 = !DILocation(line: 42, column: 10, scope: !4692, inlinedAt: !4885)
!4891 = !DILocation(line: 43, column: 5, scope: !4692, inlinedAt: !4885)
!4892 = !DILocation(line: 113, column: 10, scope: !4876)
!4893 = !DILocation(line: 113, column: 3, scope: !4876)
!4894 = distinct !DISubprogram(name: "xstrdup", scope: !4684, file: !4684, line: 119, type: !3696, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !1062, variables: !4895)
!4895 = !{!4896}
!4896 = !DILocalVariable(name: "string", arg: 1, scope: !4894, file: !4684, line: 119, type: !288)
!4897 = !DILocation(line: 119, column: 22, scope: !4894)
!4898 = !DILocation(line: 121, column: 27, scope: !4894)
!4899 = !DILocation(line: 121, column: 43, scope: !4894)
!4900 = !DILocation(line: 111, column: 22, scope: !4876, inlinedAt: !4901)
!4901 = distinct !DILocation(line: 121, column: 10, scope: !4894)
!4902 = !DILocation(line: 111, column: 32, scope: !4876, inlinedAt: !4901)
!4903 = !DILocation(line: 39, column: 17, scope: !4683, inlinedAt: !4904)
!4904 = distinct !DILocation(line: 113, column: 18, scope: !4876, inlinedAt: !4901)
!4905 = !DILocation(line: 41, column: 13, scope: !4683, inlinedAt: !4904)
!4906 = !DILocation(line: 41, column: 9, scope: !4683, inlinedAt: !4904)
!4907 = !DILocation(line: 42, column: 8, scope: !4692, inlinedAt: !4904)
!4908 = !DILocation(line: 42, column: 15, scope: !4692, inlinedAt: !4904)
!4909 = !DILocation(line: 42, column: 10, scope: !4692, inlinedAt: !4904)
!4910 = !DILocation(line: 43, column: 5, scope: !4692, inlinedAt: !4904)
!4911 = !DILocation(line: 113, column: 10, scope: !4876, inlinedAt: !4901)
!4912 = !DILocation(line: 121, column: 3, scope: !4894)
!4913 = distinct !DISubprogram(name: "xalloc_die", scope: !4914, file: !4914, line: 32, type: !445, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !1078, variables: !342)
!4914 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4915 = !DILocation(line: 34, column: 10, scope: !4913)
!4916 = !DILocation(line: 34, column: 33, scope: !4913)
!4917 = !DILocation(line: 34, column: 3, scope: !4913)
!4918 = !DILocation(line: 40, column: 3, scope: !4913)
!4919 = distinct !DISubprogram(name: "rpl_calloc", scope: !4920, file: !4920, line: 42, type: !1292, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !1080, variables: !4921)
!4920 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4921 = !{!4922, !4923, !4924, !4925}
!4922 = !DILocalVariable(name: "n", arg: 1, scope: !4919, file: !4920, line: 42, type: !54)
!4923 = !DILocalVariable(name: "s", arg: 2, scope: !4919, file: !4920, line: 42, type: !54)
!4924 = !DILocalVariable(name: "result", scope: !4919, file: !4920, line: 44, type: !53)
!4925 = !DILocalVariable(name: "bytes", scope: !4926, file: !4920, line: 56, type: !54)
!4926 = distinct !DILexicalBlock(scope: !4927, file: !4920, line: 53, column: 5)
!4927 = distinct !DILexicalBlock(scope: !4919, file: !4920, line: 47, column: 7)
!4928 = !DILocation(line: 42, column: 20, scope: !4919)
!4929 = !DILocation(line: 42, column: 30, scope: !4919)
!4930 = !DILocation(line: 47, column: 9, scope: !4927)
!4931 = !DILocation(line: 47, column: 19, scope: !4927)
!4932 = !DILocation(line: 47, column: 14, scope: !4927)
!4933 = !DILocation(line: 56, column: 24, scope: !4926)
!4934 = !DILocation(line: 56, column: 14, scope: !4926)
!4935 = !DILocation(line: 57, column: 17, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4926, file: !4920, line: 57, column: 11)
!4937 = !DILocation(line: 57, column: 21, scope: !4936)
!4938 = !DILocation(line: 57, column: 11, scope: !4926)
!4939 = !DILocation(line: 59, column: 11, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4936, file: !4920, line: 58, column: 9)
!4941 = !DILocation(line: 59, column: 17, scope: !4940)
!4942 = !DILocation(line: 65, column: 12, scope: !4919)
!4943 = !DILocation(line: 44, column: 9, scope: !4919)
!4944 = !DILocation(line: 72, column: 3, scope: !4919)
!4945 = !DILocation(line: 73, column: 1, scope: !4919)
!4946 = distinct !DISubprogram(name: "rpl_fclose", scope: !4947, file: !4947, line: 56, type: !4948, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !1082, variables: !4990)
!4947 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4948 = !DISubroutineType(types: !4949)
!4949 = !{!57, !4950}
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !4952)
!4952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 241, size: 1728, elements: !4953)
!4953 = !{!4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4952, file: !193, line: 242, baseType: !57, size: 32)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4952, file: !193, line: 247, baseType: !51, size: 64, offset: 64)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4952, file: !193, line: 248, baseType: !51, size: 64, offset: 128)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4952, file: !193, line: 249, baseType: !51, size: 64, offset: 192)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4952, file: !193, line: 250, baseType: !51, size: 64, offset: 256)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4952, file: !193, line: 251, baseType: !51, size: 64, offset: 320)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4952, file: !193, line: 252, baseType: !51, size: 64, offset: 384)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4952, file: !193, line: 253, baseType: !51, size: 64, offset: 448)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4952, file: !193, line: 254, baseType: !51, size: 64, offset: 512)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4952, file: !193, line: 256, baseType: !51, size: 64, offset: 576)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4952, file: !193, line: 257, baseType: !51, size: 64, offset: 640)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4952, file: !193, line: 258, baseType: !51, size: 64, offset: 704)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4952, file: !193, line: 260, baseType: !4967, size: 64, offset: 768)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !193, line: 156, size: 192, elements: !4969)
!4969 = !{!4970, !4971, !4973}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4968, file: !193, line: 157, baseType: !4967, size: 64)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4968, file: !193, line: 158, baseType: !4972, size: 64, offset: 64)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4968, file: !193, line: 162, baseType: !57, size: 32, offset: 128)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4952, file: !193, line: 262, baseType: !4972, size: 64, offset: 832)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4952, file: !193, line: 264, baseType: !57, size: 32, offset: 896)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4952, file: !193, line: 268, baseType: !57, size: 32, offset: 928)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4952, file: !193, line: 270, baseType: !102, size: 64, offset: 960)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4952, file: !193, line: 274, baseType: !58, size: 16, offset: 1024)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4952, file: !193, line: 275, baseType: !221, size: 8, offset: 1040)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4952, file: !193, line: 276, baseType: !223, size: 8, offset: 1048)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4952, file: !193, line: 280, baseType: !227, size: 64, offset: 1088)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4952, file: !193, line: 289, baseType: !230, size: 64, offset: 1152)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4952, file: !193, line: 297, baseType: !53, size: 64, offset: 1216)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4952, file: !193, line: 298, baseType: !53, size: 64, offset: 1280)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4952, file: !193, line: 299, baseType: !53, size: 64, offset: 1344)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4952, file: !193, line: 300, baseType: !53, size: 64, offset: 1408)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4952, file: !193, line: 302, baseType: !54, size: 64, offset: 1472)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4952, file: !193, line: 303, baseType: !57, size: 32, offset: 1536)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4952, file: !193, line: 305, baseType: !238, size: 160, offset: 1568)
!4990 = !{!4991, !4992, !4993, !4994}
!4991 = !DILocalVariable(name: "fp", arg: 1, scope: !4946, file: !4947, line: 56, type: !4950)
!4992 = !DILocalVariable(name: "saved_errno", scope: !4946, file: !4947, line: 58, type: !57)
!4993 = !DILocalVariable(name: "fd", scope: !4946, file: !4947, line: 59, type: !57)
!4994 = !DILocalVariable(name: "result", scope: !4946, file: !4947, line: 60, type: !57)
!4995 = !DILocation(line: 56, column: 19, scope: !4946)
!4996 = !DILocation(line: 58, column: 7, scope: !4946)
!4997 = !DILocation(line: 60, column: 7, scope: !4946)
!4998 = !DILocation(line: 63, column: 8, scope: !4946)
!4999 = !DILocation(line: 59, column: 7, scope: !4946)
!5000 = !DILocation(line: 64, column: 10, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4946, file: !4947, line: 64, column: 7)
!5002 = !DILocation(line: 64, column: 7, scope: !4946)
!5003 = !DILocation(line: 65, column: 12, scope: !5001)
!5004 = !DILocation(line: 65, column: 5, scope: !5001)
!5005 = !DILocation(line: 70, column: 9, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4946, file: !4947, line: 70, column: 7)
!5007 = !DILocation(line: 70, column: 23, scope: !5006)
!5008 = !DILocation(line: 70, column: 33, scope: !5006)
!5009 = !DILocation(line: 70, column: 26, scope: !5006)
!5010 = !DILocation(line: 70, column: 59, scope: !5006)
!5011 = !DILocation(line: 71, column: 7, scope: !5006)
!5012 = !DILocation(line: 71, column: 10, scope: !5006)
!5013 = !DILocation(line: 70, column: 7, scope: !4946)
!5014 = !DILocation(line: 98, column: 12, scope: !4946)
!5015 = !DILocation(line: 103, column: 7, scope: !4946)
!5016 = !DILocation(line: 72, column: 19, scope: !5006)
!5017 = !DILocation(line: 103, column: 19, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !4946, file: !4947, line: 103, column: 7)
!5019 = !DILocation(line: 105, column: 13, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5018, file: !4947, line: 104, column: 5)
!5021 = !DILocation(line: 107, column: 5, scope: !5020)
!5022 = !DILocation(line: 110, column: 1, scope: !4946)
!5023 = distinct !DISubprogram(name: "rpl_fflush", scope: !5024, file: !5024, line: 127, type: !5025, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !1084, variables: !5067)
!5024 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!57, !5027}
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !5029)
!5029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 241, size: 1728, elements: !5030)
!5030 = !{!5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5029, file: !193, line: 242, baseType: !57, size: 32)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5029, file: !193, line: 247, baseType: !51, size: 64, offset: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5029, file: !193, line: 248, baseType: !51, size: 64, offset: 128)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5029, file: !193, line: 249, baseType: !51, size: 64, offset: 192)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5029, file: !193, line: 250, baseType: !51, size: 64, offset: 256)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5029, file: !193, line: 251, baseType: !51, size: 64, offset: 320)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5029, file: !193, line: 252, baseType: !51, size: 64, offset: 384)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5029, file: !193, line: 253, baseType: !51, size: 64, offset: 448)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5029, file: !193, line: 254, baseType: !51, size: 64, offset: 512)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5029, file: !193, line: 256, baseType: !51, size: 64, offset: 576)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5029, file: !193, line: 257, baseType: !51, size: 64, offset: 640)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5029, file: !193, line: 258, baseType: !51, size: 64, offset: 704)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5029, file: !193, line: 260, baseType: !5044, size: 64, offset: 768)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !193, line: 156, size: 192, elements: !5046)
!5046 = !{!5047, !5048, !5050}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5045, file: !193, line: 157, baseType: !5044, size: 64)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5045, file: !193, line: 158, baseType: !5049, size: 64, offset: 64)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5045, file: !193, line: 162, baseType: !57, size: 32, offset: 128)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5029, file: !193, line: 262, baseType: !5049, size: 64, offset: 832)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5029, file: !193, line: 264, baseType: !57, size: 32, offset: 896)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5029, file: !193, line: 268, baseType: !57, size: 32, offset: 928)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5029, file: !193, line: 270, baseType: !102, size: 64, offset: 960)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5029, file: !193, line: 274, baseType: !58, size: 16, offset: 1024)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5029, file: !193, line: 275, baseType: !221, size: 8, offset: 1040)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5029, file: !193, line: 276, baseType: !223, size: 8, offset: 1048)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5029, file: !193, line: 280, baseType: !227, size: 64, offset: 1088)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5029, file: !193, line: 289, baseType: !230, size: 64, offset: 1152)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5029, file: !193, line: 297, baseType: !53, size: 64, offset: 1216)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5029, file: !193, line: 298, baseType: !53, size: 64, offset: 1280)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5029, file: !193, line: 299, baseType: !53, size: 64, offset: 1344)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5029, file: !193, line: 300, baseType: !53, size: 64, offset: 1408)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5029, file: !193, line: 302, baseType: !54, size: 64, offset: 1472)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5029, file: !193, line: 303, baseType: !57, size: 32, offset: 1536)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5029, file: !193, line: 305, baseType: !238, size: 160, offset: 1568)
!5067 = !{!5068}
!5068 = !DILocalVariable(name: "stream", arg: 1, scope: !5023, file: !5024, line: 127, type: !5027)
!5069 = !DILocation(line: 127, column: 19, scope: !5023)
!5070 = !DILocation(line: 148, column: 14, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5023, file: !5024, line: 148, column: 7)
!5072 = !DILocation(line: 148, column: 22, scope: !5071)
!5073 = !DILocation(line: 148, column: 27, scope: !5071)
!5074 = !DILocation(line: 148, column: 7, scope: !5023)
!5075 = !DILocation(line: 149, column: 12, scope: !5071)
!5076 = !DILocation(line: 149, column: 5, scope: !5071)
!5077 = !DILocalVariable(name: "fp", arg: 1, scope: !5078, file: !5024, line: 40, type: !5027)
!5078 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5024, file: !5024, line: 40, type: !5079, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !1084, variables: !5081)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{null, !5027}
!5081 = !{!5077}
!5082 = !DILocation(line: 40, column: 48, scope: !5078, inlinedAt: !5083)
!5083 = distinct !DILocation(line: 153, column: 3, scope: !5023)
!5084 = !DILocation(line: 42, column: 11, scope: !5085, inlinedAt: !5083)
!5085 = distinct !DILexicalBlock(scope: !5078, file: !5024, line: 42, column: 7)
!5086 = !{!2013, !1189, i64 0}
!5087 = !DILocation(line: 42, column: 18, scope: !5085, inlinedAt: !5083)
!5088 = !DILocation(line: 42, column: 7, scope: !5078, inlinedAt: !5083)
!5089 = !DILocation(line: 44, column: 5, scope: !5085, inlinedAt: !5083)
!5090 = !DILocation(line: 155, column: 10, scope: !5023)
!5091 = !DILocation(line: 155, column: 3, scope: !5023)
!5092 = !DILocation(line: 229, column: 1, scope: !5023)
!5093 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5094, file: !5094, line: 28, type: !5095, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !1086, variables: !5137)
!5094 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!57, !5097, !1551, !57}
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !5099)
!5099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 241, size: 1728, elements: !5100)
!5100 = !{!5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5099, file: !193, line: 242, baseType: !57, size: 32)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5099, file: !193, line: 247, baseType: !51, size: 64, offset: 64)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5099, file: !193, line: 248, baseType: !51, size: 64, offset: 128)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5099, file: !193, line: 249, baseType: !51, size: 64, offset: 192)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5099, file: !193, line: 250, baseType: !51, size: 64, offset: 256)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5099, file: !193, line: 251, baseType: !51, size: 64, offset: 320)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5099, file: !193, line: 252, baseType: !51, size: 64, offset: 384)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5099, file: !193, line: 253, baseType: !51, size: 64, offset: 448)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5099, file: !193, line: 254, baseType: !51, size: 64, offset: 512)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5099, file: !193, line: 256, baseType: !51, size: 64, offset: 576)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5099, file: !193, line: 257, baseType: !51, size: 64, offset: 640)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5099, file: !193, line: 258, baseType: !51, size: 64, offset: 704)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5099, file: !193, line: 260, baseType: !5114, size: 64, offset: 768)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !193, line: 156, size: 192, elements: !5116)
!5116 = !{!5117, !5118, !5120}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5115, file: !193, line: 157, baseType: !5114, size: 64)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5115, file: !193, line: 158, baseType: !5119, size: 64, offset: 64)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5115, file: !193, line: 162, baseType: !57, size: 32, offset: 128)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5099, file: !193, line: 262, baseType: !5119, size: 64, offset: 832)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5099, file: !193, line: 264, baseType: !57, size: 32, offset: 896)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5099, file: !193, line: 268, baseType: !57, size: 32, offset: 928)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5099, file: !193, line: 270, baseType: !102, size: 64, offset: 960)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5099, file: !193, line: 274, baseType: !58, size: 16, offset: 1024)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5099, file: !193, line: 275, baseType: !221, size: 8, offset: 1040)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5099, file: !193, line: 276, baseType: !223, size: 8, offset: 1048)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5099, file: !193, line: 280, baseType: !227, size: 64, offset: 1088)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5099, file: !193, line: 289, baseType: !230, size: 64, offset: 1152)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5099, file: !193, line: 297, baseType: !53, size: 64, offset: 1216)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5099, file: !193, line: 298, baseType: !53, size: 64, offset: 1280)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5099, file: !193, line: 299, baseType: !53, size: 64, offset: 1344)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5099, file: !193, line: 300, baseType: !53, size: 64, offset: 1408)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5099, file: !193, line: 302, baseType: !54, size: 64, offset: 1472)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5099, file: !193, line: 303, baseType: !57, size: 32, offset: 1536)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5099, file: !193, line: 305, baseType: !238, size: 160, offset: 1568)
!5137 = !{!5138, !5139, !5140, !5141}
!5138 = !DILocalVariable(name: "fp", arg: 1, scope: !5093, file: !5094, line: 28, type: !5097)
!5139 = !DILocalVariable(name: "offset", arg: 2, scope: !5093, file: !5094, line: 28, type: !1551)
!5140 = !DILocalVariable(name: "whence", arg: 3, scope: !5093, file: !5094, line: 28, type: !57)
!5141 = !DILocalVariable(name: "pos", scope: !5142, file: !5094, line: 116, type: !1551)
!5142 = distinct !DILexicalBlock(scope: !5143, file: !5094, line: 112, column: 5)
!5143 = distinct !DILexicalBlock(scope: !5093, file: !5094, line: 51, column: 7)
!5144 = !DILocation(line: 28, column: 15, scope: !5093)
!5145 = !DILocation(line: 28, column: 25, scope: !5093)
!5146 = !DILocation(line: 28, column: 37, scope: !5093)
!5147 = !DILocation(line: 51, column: 11, scope: !5143)
!5148 = !{!2013, !1114, i64 16}
!5149 = !DILocation(line: 51, column: 31, scope: !5143)
!5150 = !{!2013, !1114, i64 8}
!5151 = !DILocation(line: 51, column: 24, scope: !5143)
!5152 = !DILocation(line: 52, column: 7, scope: !5143)
!5153 = !DILocation(line: 52, column: 14, scope: !5143)
!5154 = !DILocation(line: 52, column: 35, scope: !5143)
!5155 = !{!2013, !1114, i64 32}
!5156 = !DILocation(line: 52, column: 28, scope: !5143)
!5157 = !DILocation(line: 53, column: 7, scope: !5143)
!5158 = !DILocation(line: 53, column: 14, scope: !5143)
!5159 = !{!2013, !1114, i64 72}
!5160 = !DILocation(line: 53, column: 28, scope: !5143)
!5161 = !DILocation(line: 51, column: 7, scope: !5093)
!5162 = !DILocation(line: 116, column: 26, scope: !5142)
!5163 = !DILocation(line: 116, column: 19, scope: !5142)
!5164 = !DILocation(line: 116, column: 13, scope: !5142)
!5165 = !DILocation(line: 117, column: 15, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5142, file: !5094, line: 117, column: 11)
!5167 = !DILocation(line: 117, column: 11, scope: !5142)
!5168 = !DILocation(line: 127, column: 11, scope: !5142)
!5169 = !DILocation(line: 127, column: 18, scope: !5142)
!5170 = !DILocation(line: 128, column: 11, scope: !5142)
!5171 = !DILocation(line: 128, column: 19, scope: !5142)
!5172 = !{!2013, !1156, i64 144}
!5173 = !DILocation(line: 159, column: 7, scope: !5142)
!5174 = !DILocation(line: 161, column: 10, scope: !5093)
!5175 = !DILocation(line: 161, column: 3, scope: !5093)
!5176 = !DILocation(line: 162, column: 1, scope: !5093)
!5177 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5178, file: !5178, line: 334, type: !5179, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !1088, variables: !5193)
!5178 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5179 = !DISubroutineType(types: !5180)
!5180 = !{!54, !5181, !288, !54, !5182}
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1595, line: 6, baseType: !5184)
!5184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1597, line: 21, baseType: !5185)
!5185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1597, line: 13, size: 64, elements: !5186)
!5186 = !{!5187, !5188}
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5185, file: !1597, line: 15, baseType: !57, size: 32)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5185, file: !1597, line: 20, baseType: !5189, size: 32, offset: 32)
!5189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5185, file: !1597, line: 16, size: 32, elements: !5190)
!5190 = !{!5191, !5192}
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5189, file: !1597, line: 18, baseType: !94, size: 32)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5189, file: !1597, line: 19, baseType: !1606, size: 32)
!5193 = !{!5194, !5195, !5196, !5197, !5198, !5199, !5200}
!5194 = !DILocalVariable(name: "pwc", arg: 1, scope: !5177, file: !5178, line: 334, type: !5181)
!5195 = !DILocalVariable(name: "s", arg: 2, scope: !5177, file: !5178, line: 334, type: !288)
!5196 = !DILocalVariable(name: "n", arg: 3, scope: !5177, file: !5178, line: 334, type: !54)
!5197 = !DILocalVariable(name: "ps", arg: 4, scope: !5177, file: !5178, line: 334, type: !5182)
!5198 = !DILocalVariable(name: "ret", scope: !5177, file: !5178, line: 336, type: !54)
!5199 = !DILocalVariable(name: "wc", scope: !5177, file: !5178, line: 337, type: !1616)
!5200 = !DILocalVariable(name: "uc", scope: !5201, file: !5178, line: 398, type: !59)
!5201 = distinct !DILexicalBlock(scope: !5202, file: !5178, line: 397, column: 5)
!5202 = distinct !DILexicalBlock(scope: !5177, file: !5178, line: 396, column: 7)
!5203 = !DILocation(line: 334, column: 23, scope: !5177)
!5204 = !DILocation(line: 334, column: 40, scope: !5177)
!5205 = !DILocation(line: 334, column: 50, scope: !5177)
!5206 = !DILocation(line: 334, column: 64, scope: !5177)
!5207 = !DILocation(line: 337, column: 3, scope: !5177)
!5208 = !DILocation(line: 353, column: 9, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5177, file: !5178, line: 353, column: 7)
!5210 = !DILocation(line: 353, column: 7, scope: !5177)
!5211 = !DILocation(line: 388, column: 9, scope: !5177)
!5212 = !DILocation(line: 336, column: 10, scope: !5177)
!5213 = !DILocation(line: 396, column: 19, scope: !5202)
!5214 = !DILocation(line: 396, column: 31, scope: !5202)
!5215 = !DILocation(line: 396, column: 26, scope: !5202)
!5216 = !DILocation(line: 396, column: 41, scope: !5202)
!5217 = !DILocation(line: 396, column: 7, scope: !5177)
!5218 = !DILocation(line: 398, column: 26, scope: !5201)
!5219 = !DILocation(line: 398, column: 21, scope: !5201)
!5220 = !DILocation(line: 399, column: 14, scope: !5201)
!5221 = !DILocation(line: 399, column: 12, scope: !5201)
!5222 = !DILocation(line: 405, column: 1, scope: !5177)
!5223 = distinct !DISubprogram(name: "print_and_abort", scope: !443, file: !443, line: 330, type: !445, isLocal: true, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !439, variables: !342)
!5224 = !DILocation(line: 340, column: 3, scope: !5223)
!5225 = !DILocation(line: 342, column: 9, scope: !5223)
!5226 = !DILocation(line: 342, column: 3, scope: !5223)
!5227 = distinct !DISubprogram(name: "_obstack_begin", scope: !443, file: !443, line: 150, type: !5228, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !439, variables: !5264)
!5228 = !DISubroutineType(types: !5229)
!5229 = !{!57, !5230, !54, !54, !158, !169}
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !132, line: 174, size: 704, elements: !5232)
!5232 = !{!5233, !5234, !5241, !5242, !5243, !5244, !5249, !5250, !5255, !5260, !5261, !5262, !5263}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !5231, file: !132, line: 176, baseType: !54, size: 64)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !5231, file: !132, line: 177, baseType: !5235, size: 64, offset: 64)
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !132, line: 167, size: 128, elements: !5237)
!5237 = !{!5238, !5239, !5240}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !5236, file: !132, line: 169, baseType: !51, size: 64)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !5236, file: !132, line: 170, baseType: !5235, size: 64, offset: 64)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !5236, file: !132, line: 171, baseType: !142, offset: 128)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !5231, file: !132, line: 178, baseType: !51, size: 64, offset: 128)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !5231, file: !132, line: 179, baseType: !51, size: 64, offset: 192)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !5231, file: !132, line: 180, baseType: !51, size: 64, offset: 256)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !5231, file: !132, line: 185, baseType: !5245, size: 64, offset: 320)
!5245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5231, file: !132, line: 181, size: 64, elements: !5246)
!5246 = !{!5247, !5248}
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !5245, file: !132, line: 183, baseType: !54, size: 64)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5245, file: !132, line: 184, baseType: !53, size: 64)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !5231, file: !132, line: 186, baseType: !54, size: 64, offset: 384)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !5231, file: !132, line: 193, baseType: !5251, size: 64, offset: 448)
!5251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5231, file: !132, line: 189, size: 64, elements: !5252)
!5252 = !{!5253, !5254}
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !5251, file: !132, line: 191, baseType: !158, size: 64)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5251, file: !132, line: 192, baseType: !162, size: 64)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !5231, file: !132, line: 198, baseType: !5256, size: 64, offset: 512)
!5256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5231, file: !132, line: 194, size: 64, elements: !5257)
!5257 = !{!5258, !5259}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !5256, file: !132, line: 196, baseType: !169, size: 64)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5256, file: !132, line: 197, baseType: !173, size: 64)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !5231, file: !132, line: 200, baseType: !53, size: 64, offset: 576)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !5231, file: !132, line: 201, baseType: !94, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !5231, file: !132, line: 202, baseType: !94, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !5231, file: !132, line: 206, baseType: !94, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!5264 = !{!5265, !5266, !5267, !5268, !5269}
!5265 = !DILocalVariable(name: "h", arg: 1, scope: !5227, file: !443, line: 150, type: !5230)
!5266 = !DILocalVariable(name: "size", arg: 2, scope: !5227, file: !443, line: 151, type: !54)
!5267 = !DILocalVariable(name: "alignment", arg: 3, scope: !5227, file: !443, line: 151, type: !54)
!5268 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !5227, file: !443, line: 152, type: !158)
!5269 = !DILocalVariable(name: "freefun", arg: 5, scope: !5227, file: !443, line: 153, type: !169)
!5270 = !DILocation(line: 150, column: 33, scope: !5227)
!5271 = !DILocation(line: 151, column: 33, scope: !5227)
!5272 = !DILocation(line: 151, column: 55, scope: !5227)
!5273 = !DILocation(line: 152, column: 25, scope: !5227)
!5274 = !DILocation(line: 153, column: 24, scope: !5227)
!5275 = !DILocation(line: 155, column: 15, scope: !5227)
!5276 = !DILocation(line: 155, column: 21, scope: !5227)
!5277 = !DILocation(line: 156, column: 14, scope: !5227)
!5278 = !DILocation(line: 156, column: 20, scope: !5227)
!5279 = !DILocation(line: 157, column: 6, scope: !5227)
!5280 = !DILocation(line: 157, column: 20, scope: !5227)
!5281 = !DILocation(line: 114, column: 17, scope: !5282, inlinedAt: !5294)
!5282 = distinct !DILexicalBlock(scope: !5283, file: !443, line: 114, column: 7)
!5283 = distinct !DISubprogram(name: "_obstack_begin_worker", scope: !443, file: !443, line: 109, type: !5284, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !439, variables: !5286)
!5284 = !DISubroutineType(types: !5285)
!5285 = !{!57, !5230, !54, !54}
!5286 = !{!5287, !5288, !5289, !5290, !5291}
!5287 = !DILocalVariable(name: "h", arg: 1, scope: !5283, file: !443, line: 109, type: !5230)
!5288 = !DILocalVariable(name: "size", arg: 2, scope: !5283, file: !443, line: 110, type: !54)
!5289 = !DILocalVariable(name: "alignment", arg: 3, scope: !5283, file: !443, line: 110, type: !54)
!5290 = !DILocalVariable(name: "chunk", scope: !5283, file: !443, line: 112, type: !5235)
!5291 = !DILocalVariable(name: "extra", scope: !5292, file: !443, line: 127, type: !57)
!5292 = distinct !DILexicalBlock(scope: !5293, file: !443, line: 118, column: 5)
!5293 = distinct !DILexicalBlock(scope: !5283, file: !443, line: 116, column: 7)
!5294 = distinct !DILocation(line: 158, column: 10, scope: !5227)
!5295 = !DILocation(line: 110, column: 62, scope: !5283, inlinedAt: !5294)
!5296 = !DILocation(line: 114, column: 7, scope: !5283, inlinedAt: !5294)
!5297 = !DILocation(line: 116, column: 12, scope: !5293, inlinedAt: !5294)
!5298 = !DILocation(line: 110, column: 40, scope: !5283, inlinedAt: !5294)
!5299 = !DILocation(line: 116, column: 7, scope: !5283, inlinedAt: !5294)
!5300 = !DILocation(line: 133, column: 6, scope: !5283, inlinedAt: !5294)
!5301 = !DILocation(line: 133, column: 17, scope: !5283, inlinedAt: !5294)
!5302 = !{!1252, !1156, i64 0}
!5303 = !DILocation(line: 134, column: 33, scope: !5283, inlinedAt: !5294)
!5304 = !DILocation(line: 134, column: 6, scope: !5283, inlinedAt: !5294)
!5305 = !DILocation(line: 134, column: 21, scope: !5283, inlinedAt: !5294)
!5306 = !DILocalVariable(name: "h", arg: 1, scope: !5307, file: !443, line: 84, type: !5230)
!5307 = distinct !DISubprogram(name: "call_chunkfun", scope: !443, file: !443, line: 84, type: !5308, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !439, variables: !5310)
!5308 = !DISubroutineType(types: !5309)
!5309 = !{!53, !5230, !54}
!5310 = !{!5306, !5311}
!5311 = !DILocalVariable(name: "size", arg: 2, scope: !5307, file: !443, line: 84, type: !54)
!5312 = !DILocation(line: 84, column: 32, scope: !5307, inlinedAt: !5313)
!5313 = distinct !DILocation(line: 136, column: 22, scope: !5283, inlinedAt: !5294)
!5314 = !DILocation(line: 84, column: 42, scope: !5307, inlinedAt: !5313)
!5315 = !DILocation(line: 89, column: 12, scope: !5316, inlinedAt: !5313)
!5316 = distinct !DILexicalBlock(scope: !5307, file: !443, line: 86, column: 7)
!5317 = !DILocation(line: 136, column: 14, scope: !5283, inlinedAt: !5294)
!5318 = !DILocation(line: 136, column: 20, scope: !5283, inlinedAt: !5294)
!5319 = !DILocation(line: 112, column: 26, scope: !5283, inlinedAt: !5294)
!5320 = !DILocation(line: 137, column: 8, scope: !5321, inlinedAt: !5294)
!5321 = distinct !DILexicalBlock(scope: !5283, file: !443, line: 137, column: 7)
!5322 = !DILocation(line: 137, column: 7, scope: !5283, inlinedAt: !5294)
!5323 = !DILocation(line: 138, column: 7, scope: !5321, inlinedAt: !5294)
!5324 = !DILocation(line: 138, column: 5, scope: !5321, inlinedAt: !5294)
!5325 = !DILocation(line: 139, column: 35, scope: !5283, inlinedAt: !5294)
!5326 = !DILocation(line: 139, column: 21, scope: !5283, inlinedAt: !5294)
!5327 = !DILocation(line: 139, column: 33, scope: !5283, inlinedAt: !5294)
!5328 = !DILocation(line: 139, column: 6, scope: !5283, inlinedAt: !5294)
!5329 = !DILocation(line: 139, column: 16, scope: !5283, inlinedAt: !5294)
!5330 = !DILocation(line: 141, column: 55, scope: !5283, inlinedAt: !5294)
!5331 = !DILocation(line: 141, column: 50, scope: !5283, inlinedAt: !5294)
!5332 = !DILocation(line: 141, column: 27, scope: !5283, inlinedAt: !5294)
!5333 = !DILocation(line: 141, column: 33, scope: !5283, inlinedAt: !5294)
!5334 = !DILocation(line: 141, column: 6, scope: !5283, inlinedAt: !5294)
!5335 = !DILocation(line: 141, column: 18, scope: !5283, inlinedAt: !5294)
!5336 = !DILocation(line: 142, column: 10, scope: !5283, inlinedAt: !5294)
!5337 = !DILocation(line: 142, column: 15, scope: !5283, inlinedAt: !5294)
!5338 = !DILocation(line: 144, column: 25, scope: !5283, inlinedAt: !5294)
!5339 = !DILocation(line: 145, column: 19, scope: !5283, inlinedAt: !5294)
!5340 = !DILocation(line: 158, column: 3, scope: !5227)
!5341 = distinct !DISubprogram(name: "_obstack_begin_1", scope: !443, file: !443, line: 162, type: !5342, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !439, variables: !5344)
!5342 = !DISubroutineType(types: !5343)
!5343 = !{!57, !5230, !54, !54, !162, !173, !53}
!5344 = !{!5345, !5346, !5347, !5348, !5349, !5350}
!5345 = !DILocalVariable(name: "h", arg: 1, scope: !5341, file: !443, line: 162, type: !5230)
!5346 = !DILocalVariable(name: "size", arg: 2, scope: !5341, file: !443, line: 163, type: !54)
!5347 = !DILocalVariable(name: "alignment", arg: 3, scope: !5341, file: !443, line: 163, type: !54)
!5348 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !5341, file: !443, line: 164, type: !162)
!5349 = !DILocalVariable(name: "freefun", arg: 5, scope: !5341, file: !443, line: 165, type: !173)
!5350 = !DILocalVariable(name: "arg", arg: 6, scope: !5341, file: !443, line: 166, type: !53)
!5351 = !DILocation(line: 162, column: 35, scope: !5341)
!5352 = !DILocation(line: 163, column: 35, scope: !5341)
!5353 = !DILocation(line: 163, column: 57, scope: !5341)
!5354 = !DILocation(line: 164, column: 27, scope: !5341)
!5355 = !DILocation(line: 165, column: 26, scope: !5341)
!5356 = !DILocation(line: 166, column: 25, scope: !5341)
!5357 = !DILocation(line: 168, column: 6, scope: !5341)
!5358 = !DILocation(line: 168, column: 15, scope: !5341)
!5359 = !DILocation(line: 168, column: 21, scope: !5341)
!5360 = !DILocation(line: 169, column: 6, scope: !5341)
!5361 = !DILocation(line: 169, column: 14, scope: !5341)
!5362 = !DILocation(line: 169, column: 20, scope: !5341)
!5363 = !DILocation(line: 170, column: 6, scope: !5341)
!5364 = !DILocation(line: 170, column: 16, scope: !5341)
!5365 = !{!1252, !1114, i64 72}
!5366 = !DILocation(line: 171, column: 6, scope: !5341)
!5367 = !DILocation(line: 171, column: 20, scope: !5341)
!5368 = !DILocation(line: 114, column: 17, scope: !5282, inlinedAt: !5369)
!5369 = distinct !DILocation(line: 172, column: 10, scope: !5341)
!5370 = !DILocation(line: 110, column: 62, scope: !5283, inlinedAt: !5369)
!5371 = !DILocation(line: 114, column: 7, scope: !5283, inlinedAt: !5369)
!5372 = !DILocation(line: 116, column: 12, scope: !5293, inlinedAt: !5369)
!5373 = !DILocation(line: 110, column: 40, scope: !5283, inlinedAt: !5369)
!5374 = !DILocation(line: 116, column: 7, scope: !5283, inlinedAt: !5369)
!5375 = !DILocation(line: 133, column: 6, scope: !5283, inlinedAt: !5369)
!5376 = !DILocation(line: 133, column: 17, scope: !5283, inlinedAt: !5369)
!5377 = !DILocation(line: 134, column: 33, scope: !5283, inlinedAt: !5369)
!5378 = !DILocation(line: 134, column: 6, scope: !5283, inlinedAt: !5369)
!5379 = !DILocation(line: 134, column: 21, scope: !5283, inlinedAt: !5369)
!5380 = !DILocation(line: 84, column: 32, scope: !5307, inlinedAt: !5381)
!5381 = distinct !DILocation(line: 136, column: 22, scope: !5283, inlinedAt: !5369)
!5382 = !DILocation(line: 84, column: 42, scope: !5307, inlinedAt: !5381)
!5383 = !DILocation(line: 87, column: 12, scope: !5316, inlinedAt: !5381)
!5384 = !DILocation(line: 136, column: 14, scope: !5283, inlinedAt: !5369)
!5385 = !DILocation(line: 136, column: 20, scope: !5283, inlinedAt: !5369)
!5386 = !DILocation(line: 112, column: 26, scope: !5283, inlinedAt: !5369)
!5387 = !DILocation(line: 137, column: 8, scope: !5321, inlinedAt: !5369)
!5388 = !DILocation(line: 137, column: 7, scope: !5283, inlinedAt: !5369)
!5389 = !DILocation(line: 138, column: 7, scope: !5321, inlinedAt: !5369)
!5390 = !DILocation(line: 138, column: 5, scope: !5321, inlinedAt: !5369)
!5391 = !DILocation(line: 139, column: 35, scope: !5283, inlinedAt: !5369)
!5392 = !DILocation(line: 139, column: 21, scope: !5283, inlinedAt: !5369)
!5393 = !DILocation(line: 139, column: 33, scope: !5283, inlinedAt: !5369)
!5394 = !DILocation(line: 139, column: 6, scope: !5283, inlinedAt: !5369)
!5395 = !DILocation(line: 139, column: 16, scope: !5283, inlinedAt: !5369)
!5396 = !DILocation(line: 141, column: 55, scope: !5283, inlinedAt: !5369)
!5397 = !DILocation(line: 141, column: 50, scope: !5283, inlinedAt: !5369)
!5398 = !DILocation(line: 141, column: 27, scope: !5283, inlinedAt: !5369)
!5399 = !DILocation(line: 141, column: 33, scope: !5283, inlinedAt: !5369)
!5400 = !DILocation(line: 141, column: 6, scope: !5283, inlinedAt: !5369)
!5401 = !DILocation(line: 141, column: 18, scope: !5283, inlinedAt: !5369)
!5402 = !DILocation(line: 142, column: 10, scope: !5283, inlinedAt: !5369)
!5403 = !DILocation(line: 142, column: 15, scope: !5283, inlinedAt: !5369)
!5404 = !DILocation(line: 144, column: 25, scope: !5283, inlinedAt: !5369)
!5405 = !DILocation(line: 145, column: 19, scope: !5283, inlinedAt: !5369)
!5406 = !DILocation(line: 172, column: 3, scope: !5341)
!5407 = distinct !DISubprogram(name: "_obstack_newchunk", scope: !443, file: !443, line: 182, type: !5408, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !439, variables: !5410)
!5408 = !DISubroutineType(types: !5409)
!5409 = !{null, !5230, !54}
!5410 = !{!5411, !5412, !5413, !5414, !5415, !5416, !5417, !5418, !5419}
!5411 = !DILocalVariable(name: "h", arg: 1, scope: !5407, file: !443, line: 182, type: !5230)
!5412 = !DILocalVariable(name: "length", arg: 2, scope: !5407, file: !443, line: 182, type: !54)
!5413 = !DILocalVariable(name: "old_chunk", scope: !5407, file: !443, line: 184, type: !5235)
!5414 = !DILocalVariable(name: "new_chunk", scope: !5407, file: !443, line: 185, type: !5235)
!5415 = !DILocalVariable(name: "obj_size", scope: !5407, file: !443, line: 186, type: !54)
!5416 = !DILocalVariable(name: "object_base", scope: !5407, file: !443, line: 187, type: !51)
!5417 = !DILocalVariable(name: "sum1", scope: !5407, file: !443, line: 190, type: !54)
!5418 = !DILocalVariable(name: "sum2", scope: !5407, file: !443, line: 191, type: !54)
!5419 = !DILocalVariable(name: "new_size", scope: !5407, file: !443, line: 192, type: !54)
!5420 = !DILocation(line: 182, column: 36, scope: !5407)
!5421 = !DILocation(line: 182, column: 55, scope: !5407)
!5422 = !DILocation(line: 184, column: 41, scope: !5407)
!5423 = !DILocation(line: 184, column: 26, scope: !5407)
!5424 = !DILocation(line: 185, column: 26, scope: !5407)
!5425 = !DILocation(line: 186, column: 24, scope: !5407)
!5426 = !DILocation(line: 186, column: 39, scope: !5407)
!5427 = !DILocation(line: 186, column: 34, scope: !5407)
!5428 = !DILocation(line: 186, column: 10, scope: !5407)
!5429 = !DILocation(line: 190, column: 26, scope: !5407)
!5430 = !DILocation(line: 190, column: 10, scope: !5407)
!5431 = !DILocation(line: 191, column: 27, scope: !5407)
!5432 = !DILocation(line: 191, column: 22, scope: !5407)
!5433 = !DILocation(line: 191, column: 10, scope: !5407)
!5434 = !DILocation(line: 192, column: 38, scope: !5407)
!5435 = !DILocation(line: 192, column: 26, scope: !5407)
!5436 = !DILocation(line: 192, column: 44, scope: !5407)
!5437 = !DILocation(line: 192, column: 10, scope: !5407)
!5438 = !DILocation(line: 193, column: 16, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5407, file: !443, line: 193, column: 7)
!5440 = !DILocation(line: 193, column: 7, scope: !5407)
!5441 = !DILocation(line: 195, column: 21, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5407, file: !443, line: 195, column: 7)
!5443 = !DILocation(line: 195, column: 16, scope: !5442)
!5444 = !DILocation(line: 195, column: 7, scope: !5407)
!5445 = !DILocation(line: 199, column: 16, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5407, file: !443, line: 199, column: 7)
!5447 = !DILocation(line: 199, column: 32, scope: !5446)
!5448 = !DILocation(line: 199, column: 24, scope: !5446)
!5449 = !DILocation(line: 84, column: 32, scope: !5307, inlinedAt: !5450)
!5450 = distinct !DILocation(line: 200, column: 17, scope: !5446)
!5451 = !DILocation(line: 84, column: 42, scope: !5307, inlinedAt: !5450)
!5452 = !DILocation(line: 86, column: 10, scope: !5316, inlinedAt: !5450)
!5453 = !DILocation(line: 86, column: 7, scope: !5316, inlinedAt: !5450)
!5454 = !DILocation(line: 86, column: 7, scope: !5307, inlinedAt: !5450)
!5455 = !DILocation(line: 87, column: 24, scope: !5316, inlinedAt: !5450)
!5456 = !DILocation(line: 87, column: 34, scope: !5316, inlinedAt: !5450)
!5457 = !DILocation(line: 87, column: 12, scope: !5316, inlinedAt: !5450)
!5458 = !DILocation(line: 87, column: 5, scope: !5316, inlinedAt: !5450)
!5459 = !DILocation(line: 89, column: 24, scope: !5316, inlinedAt: !5450)
!5460 = !DILocation(line: 89, column: 12, scope: !5316, inlinedAt: !5450)
!5461 = !DILocation(line: 89, column: 5, scope: !5316, inlinedAt: !5450)
!5462 = !DILocation(line: 201, column: 8, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5407, file: !443, line: 201, column: 7)
!5464 = !DILocation(line: 201, column: 7, scope: !5407)
!5465 = !DILocation(line: 202, column: 7, scope: !5463)
!5466 = !DILocation(line: 202, column: 5, scope: !5463)
!5467 = !DILocation(line: 203, column: 12, scope: !5407)
!5468 = !DILocation(line: 204, column: 14, scope: !5407)
!5469 = !DILocation(line: 204, column: 19, scope: !5407)
!5470 = !DILocation(line: 205, column: 58, scope: !5407)
!5471 = !DILocation(line: 205, column: 25, scope: !5407)
!5472 = !DILocation(line: 205, column: 37, scope: !5407)
!5473 = !DILocation(line: 205, column: 14, scope: !5407)
!5474 = !DILocation(line: 205, column: 20, scope: !5407)
!5475 = !DILocation(line: 209, column: 5, scope: !5407)
!5476 = !DILocation(line: 187, column: 9, scope: !5407)
!5477 = !DILocation(line: 212, column: 27, scope: !5407)
!5478 = !DILocation(line: 212, column: 3, scope: !5407)
!5479 = !DILocation(line: 217, column: 11, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5407, file: !443, line: 217, column: 7)
!5481 = !DILocation(line: 217, column: 8, scope: !5480)
!5482 = !DILocation(line: 218, column: 7, scope: !5480)
!5483 = !DILocation(line: 219, column: 14, scope: !5480)
!5484 = !DILocation(line: 219, column: 11, scope: !5480)
!5485 = !DILocation(line: 217, column: 7, scope: !5407)
!5486 = !DILocation(line: 222, column: 36, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5480, file: !443, line: 221, column: 5)
!5488 = !DILocation(line: 222, column: 23, scope: !5487)
!5489 = !DILocation(line: 223, column: 24, scope: !5487)
!5490 = !DILocalVariable(name: "h", arg: 1, scope: !5491, file: !443, line: 93, type: !5230)
!5491 = distinct !DISubprogram(name: "call_freefun", scope: !443, file: !443, line: 93, type: !5492, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !439, variables: !5494)
!5492 = !DISubroutineType(types: !5493)
!5493 = !{null, !5230, !53}
!5494 = !{!5490, !5495}
!5495 = !DILocalVariable(name: "old_chunk", arg: 2, scope: !5491, file: !443, line: 93, type: !53)
!5496 = !DILocation(line: 93, column: 31, scope: !5491, inlinedAt: !5497)
!5497 = distinct !DILocation(line: 223, column: 7, scope: !5487)
!5498 = !DILocation(line: 93, column: 40, scope: !5491, inlinedAt: !5497)
!5499 = !DILocation(line: 95, column: 10, scope: !5500, inlinedAt: !5497)
!5500 = distinct !DILexicalBlock(scope: !5491, file: !443, line: 95, column: 7)
!5501 = !DILocation(line: 95, column: 7, scope: !5500, inlinedAt: !5497)
!5502 = !DILocation(line: 95, column: 7, scope: !5491, inlinedAt: !5497)
!5503 = !DILocation(line: 96, column: 16, scope: !5500, inlinedAt: !5497)
!5504 = !DILocation(line: 96, column: 26, scope: !5500, inlinedAt: !5497)
!5505 = !DILocation(line: 96, column: 5, scope: !5500, inlinedAt: !5497)
!5506 = !DILocation(line: 98, column: 16, scope: !5500, inlinedAt: !5497)
!5507 = !DILocation(line: 98, column: 5, scope: !5500, inlinedAt: !5497)
!5508 = !DILocation(line: 226, column: 18, scope: !5407)
!5509 = !DILocation(line: 227, column: 33, scope: !5407)
!5510 = !DILocation(line: 227, column: 16, scope: !5407)
!5511 = !DILocation(line: 229, column: 25, scope: !5407)
!5512 = !DILocation(line: 230, column: 1, scope: !5407)
!5513 = distinct !DISubprogram(name: "_obstack_allocated_p", scope: !443, file: !443, line: 241, type: !5514, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !439, variables: !5516)
!5514 = !DISubroutineType(types: !5515)
!5515 = !{!57, !5230, !53}
!5516 = !{!5517, !5518, !5519, !5520}
!5517 = !DILocalVariable(name: "h", arg: 1, scope: !5513, file: !443, line: 241, type: !5230)
!5518 = !DILocalVariable(name: "obj", arg: 2, scope: !5513, file: !443, line: 241, type: !53)
!5519 = !DILocalVariable(name: "lp", scope: !5513, file: !443, line: 243, type: !5235)
!5520 = !DILocalVariable(name: "plp", scope: !5513, file: !443, line: 244, type: !5235)
!5521 = !DILocation(line: 241, column: 39, scope: !5513)
!5522 = !DILocation(line: 241, column: 48, scope: !5513)
!5523 = !DILocation(line: 246, column: 13, scope: !5513)
!5524 = !DILocation(line: 243, column: 26, scope: !5513)
!5525 = !DILocation(line: 250, column: 13, scope: !5513)
!5526 = !DILocation(line: 250, column: 18, scope: !5513)
!5527 = !DILocation(line: 250, column: 22, scope: !5513)
!5528 = !DILocation(line: 250, column: 34, scope: !5513)
!5529 = !DILocation(line: 250, column: 41, scope: !5513)
!5530 = !DILocation(line: 250, column: 59, scope: !5513)
!5531 = !DILocation(line: 250, column: 65, scope: !5513)
!5532 = !DILocation(line: 250, column: 3, scope: !5513)
!5533 = !DILocation(line: 252, column: 17, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5513, file: !443, line: 251, column: 5)
!5535 = !DILocation(line: 244, column: 26, scope: !5513)
!5536 = distinct !{!5536, !5532, !5537}
!5537 = !DILocation(line: 254, column: 5, scope: !5513)
!5538 = !DILocation(line: 255, column: 3, scope: !5513)
!5539 = distinct !DISubprogram(name: "_obstack_free", scope: !443, file: !443, line: 262, type: !5492, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, unit: !439, variables: !5540)
!5540 = !{!5541, !5542, !5543, !5544}
!5541 = !DILocalVariable(name: "h", arg: 1, scope: !5539, file: !443, line: 262, type: !5230)
!5542 = !DILocalVariable(name: "obj", arg: 2, scope: !5539, file: !443, line: 262, type: !53)
!5543 = !DILocalVariable(name: "lp", scope: !5539, file: !443, line: 264, type: !5235)
!5544 = !DILocalVariable(name: "plp", scope: !5539, file: !443, line: 265, type: !5235)
!5545 = !DILocation(line: 262, column: 32, scope: !5539)
!5546 = !DILocation(line: 262, column: 41, scope: !5539)
!5547 = !DILocation(line: 267, column: 11, scope: !5539)
!5548 = !DILocation(line: 264, column: 26, scope: !5539)
!5549 = !DILocation(line: 271, column: 13, scope: !5539)
!5550 = !DILocation(line: 271, column: 18, scope: !5539)
!5551 = !DILocation(line: 271, column: 22, scope: !5539)
!5552 = !DILocation(line: 271, column: 34, scope: !5539)
!5553 = !DILocation(line: 271, column: 41, scope: !5539)
!5554 = !DILocation(line: 271, column: 59, scope: !5539)
!5555 = !DILocation(line: 271, column: 65, scope: !5539)
!5556 = !DILocation(line: 271, column: 3, scope: !5539)
!5557 = !DILocation(line: 273, column: 17, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5539, file: !443, line: 272, column: 5)
!5559 = !DILocation(line: 265, column: 26, scope: !5539)
!5560 = !DILocation(line: 93, column: 31, scope: !5491, inlinedAt: !5561)
!5561 = distinct !DILocation(line: 274, column: 7, scope: !5558)
!5562 = !DILocation(line: 93, column: 40, scope: !5491, inlinedAt: !5561)
!5563 = !DILocation(line: 95, column: 10, scope: !5500, inlinedAt: !5561)
!5564 = !DILocation(line: 95, column: 7, scope: !5500, inlinedAt: !5561)
!5565 = !DILocation(line: 95, column: 7, scope: !5491, inlinedAt: !5561)
!5566 = !DILocation(line: 96, column: 16, scope: !5500, inlinedAt: !5561)
!5567 = !DILocation(line: 96, column: 26, scope: !5500, inlinedAt: !5561)
!5568 = !DILocation(line: 96, column: 5, scope: !5500, inlinedAt: !5561)
!5569 = !DILocation(line: 98, column: 16, scope: !5500, inlinedAt: !5561)
!5570 = !DILocation(line: 98, column: 5, scope: !5500, inlinedAt: !5561)
!5571 = !DILocation(line: 278, column: 29, scope: !5558)
!5572 = distinct !{!5572, !5556, !5573}
!5573 = !DILocation(line: 279, column: 5, scope: !5539)
!5574 = !DILocation(line: 282, column: 27, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5576, file: !443, line: 281, column: 5)
!5576 = distinct !DILexicalBlock(scope: !5539, file: !443, line: 280, column: 7)
!5577 = !DILocation(line: 282, column: 37, scope: !5575)
!5578 = !DILocation(line: 282, column: 10, scope: !5575)
!5579 = !DILocation(line: 282, column: 22, scope: !5575)
!5580 = !DILocation(line: 283, column: 28, scope: !5575)
!5581 = !DILocation(line: 283, column: 10, scope: !5575)
!5582 = !DILocation(line: 283, column: 22, scope: !5575)
!5583 = !DILocation(line: 284, column: 16, scope: !5575)
!5584 = !DILocation(line: 285, column: 5, scope: !5575)
!5585 = !DILocation(line: 286, column: 16, scope: !5586)
!5586 = distinct !DILexicalBlock(scope: !5576, file: !443, line: 286, column: 12)
!5587 = !DILocation(line: 286, column: 12, scope: !5576)
!5588 = !DILocation(line: 288, column: 5, scope: !5586)
!5589 = !DILocation(line: 289, column: 1, scope: !5539)
!5590 = distinct !DISubprogram(name: "_obstack_memory_used", scope: !443, file: !443, line: 292, type: !5591, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !439, variables: !5593)
!5591 = !DISubroutineType(types: !5592)
!5592 = !{!54, !5230}
!5593 = !{!5594, !5595, !5596}
!5594 = !DILocalVariable(name: "h", arg: 1, scope: !5590, file: !443, line: 292, type: !5230)
!5595 = !DILocalVariable(name: "lp", scope: !5590, file: !443, line: 294, type: !5235)
!5596 = !DILocalVariable(name: "nbytes", scope: !5590, file: !443, line: 295, type: !54)
!5597 = !DILocation(line: 292, column: 39, scope: !5590)
!5598 = !DILocation(line: 295, column: 19, scope: !5590)
!5599 = !DILocation(line: 297, column: 16, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5590, file: !443, line: 297, column: 3)
!5601 = !DILocation(line: 294, column: 26, scope: !5590)
!5602 = !DILocation(line: 297, column: 26, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5600, file: !443, line: 297, column: 3)
!5604 = !DILocation(line: 297, column: 3, scope: !5600)
!5605 = !DILocation(line: 299, column: 21, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5603, file: !443, line: 298, column: 5)
!5607 = !DILocation(line: 299, column: 27, scope: !5606)
!5608 = !DILocation(line: 299, column: 14, scope: !5606)
!5609 = !DILocation(line: 297, column: 41, scope: !5603)
!5610 = distinct !{!5610, !5604, !5611}
!5611 = !DILocation(line: 300, column: 5, scope: !5600)
!5612 = !DILocation(line: 301, column: 3, scope: !5590)
!5613 = distinct !DISubprogram(name: "close_stream", scope: !5614, file: !5614, line: 56, type: !5615, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !1091, variables: !5657)
!5614 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5615 = !DISubroutineType(types: !5616)
!5616 = !{!57, !5617}
!5617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5618, size: 64)
!5618 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !5619)
!5619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 241, size: 1728, elements: !5620)
!5620 = !{!5621, !5622, !5623, !5624, !5625, !5626, !5627, !5628, !5629, !5630, !5631, !5632, !5633, !5641, !5642, !5643, !5644, !5645, !5646, !5647, !5648, !5649, !5650, !5651, !5652, !5653, !5654, !5655, !5656}
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5619, file: !193, line: 242, baseType: !57, size: 32)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5619, file: !193, line: 247, baseType: !51, size: 64, offset: 64)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5619, file: !193, line: 248, baseType: !51, size: 64, offset: 128)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5619, file: !193, line: 249, baseType: !51, size: 64, offset: 192)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5619, file: !193, line: 250, baseType: !51, size: 64, offset: 256)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5619, file: !193, line: 251, baseType: !51, size: 64, offset: 320)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5619, file: !193, line: 252, baseType: !51, size: 64, offset: 384)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5619, file: !193, line: 253, baseType: !51, size: 64, offset: 448)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5619, file: !193, line: 254, baseType: !51, size: 64, offset: 512)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5619, file: !193, line: 256, baseType: !51, size: 64, offset: 576)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5619, file: !193, line: 257, baseType: !51, size: 64, offset: 640)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5619, file: !193, line: 258, baseType: !51, size: 64, offset: 704)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5619, file: !193, line: 260, baseType: !5634, size: 64, offset: 768)
!5634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5635, size: 64)
!5635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !193, line: 156, size: 192, elements: !5636)
!5636 = !{!5637, !5638, !5640}
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5635, file: !193, line: 157, baseType: !5634, size: 64)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5635, file: !193, line: 158, baseType: !5639, size: 64, offset: 64)
!5639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5619, size: 64)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5635, file: !193, line: 162, baseType: !57, size: 32, offset: 128)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5619, file: !193, line: 262, baseType: !5639, size: 64, offset: 832)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5619, file: !193, line: 264, baseType: !57, size: 32, offset: 896)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5619, file: !193, line: 268, baseType: !57, size: 32, offset: 928)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5619, file: !193, line: 270, baseType: !102, size: 64, offset: 960)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5619, file: !193, line: 274, baseType: !58, size: 16, offset: 1024)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5619, file: !193, line: 275, baseType: !221, size: 8, offset: 1040)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5619, file: !193, line: 276, baseType: !223, size: 8, offset: 1048)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5619, file: !193, line: 280, baseType: !227, size: 64, offset: 1088)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5619, file: !193, line: 289, baseType: !230, size: 64, offset: 1152)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5619, file: !193, line: 297, baseType: !53, size: 64, offset: 1216)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5619, file: !193, line: 298, baseType: !53, size: 64, offset: 1280)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5619, file: !193, line: 299, baseType: !53, size: 64, offset: 1344)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5619, file: !193, line: 300, baseType: !53, size: 64, offset: 1408)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5619, file: !193, line: 302, baseType: !54, size: 64, offset: 1472)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5619, file: !193, line: 303, baseType: !57, size: 32, offset: 1536)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5619, file: !193, line: 305, baseType: !238, size: 160, offset: 1568)
!5657 = !{!5658, !5659, !5661, !5662}
!5658 = !DILocalVariable(name: "stream", arg: 1, scope: !5613, file: !5614, line: 56, type: !5617)
!5659 = !DILocalVariable(name: "some_pending", scope: !5613, file: !5614, line: 58, type: !5660)
!5660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!5661 = !DILocalVariable(name: "prev_fail", scope: !5613, file: !5614, line: 59, type: !5660)
!5662 = !DILocalVariable(name: "fclose_fail", scope: !5613, file: !5614, line: 60, type: !5660)
!5663 = !DILocation(line: 56, column: 21, scope: !5613)
!5664 = !DILocation(line: 58, column: 30, scope: !5613)
!5665 = !DILocalVariable(name: "__stream", arg: 1, scope: !5666, file: !2005, line: 132, type: !5617)
!5666 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2005, file: !2005, line: 132, type: !5615, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !1091, variables: !5667)
!5667 = !{!5665}
!5668 = !DILocation(line: 132, column: 1, scope: !5666, inlinedAt: !5669)
!5669 = distinct !DILocation(line: 59, column: 27, scope: !5613)
!5670 = !DILocation(line: 134, column: 10, scope: !5666, inlinedAt: !5669)
!5671 = !DILocation(line: 59, column: 43, scope: !5613)
!5672 = !DILocation(line: 60, column: 29, scope: !5613)
!5673 = !DILocation(line: 60, column: 45, scope: !5613)
!5674 = !DILocation(line: 70, column: 17, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5613, file: !5614, line: 70, column: 7)
!5676 = !DILocation(line: 58, column: 50, scope: !5613)
!5677 = !DILocation(line: 70, column: 33, scope: !5675)
!5678 = !DILocation(line: 70, column: 53, scope: !5675)
!5679 = !DILocation(line: 70, column: 59, scope: !5675)
!5680 = !DILocation(line: 70, column: 7, scope: !5613)
!5681 = !DILocation(line: 72, column: 11, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5675, file: !5614, line: 71, column: 5)
!5683 = !DILocation(line: 73, column: 9, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5682, file: !5614, line: 72, column: 11)
!5685 = !DILocation(line: 73, column: 15, scope: !5684)
!5686 = !DILocation(line: 78, column: 1, scope: !5613)
!5687 = distinct !DISubprogram(name: "hard_locale", scope: !5688, file: !5688, line: 38, type: !5689, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !1093, variables: !5691)
!5688 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5689 = !DISubroutineType(types: !5690)
!5690 = !{!71, !57}
!5691 = !{!5692, !5693, !5694}
!5692 = !DILocalVariable(name: "category", arg: 1, scope: !5687, file: !5688, line: 38, type: !57)
!5693 = !DILocalVariable(name: "hard", scope: !5687, file: !5688, line: 40, type: !71)
!5694 = !DILocalVariable(name: "p", scope: !5687, file: !5688, line: 41, type: !288)
!5695 = !DILocation(line: 38, column: 18, scope: !5687)
!5696 = !DILocation(line: 40, column: 8, scope: !5687)
!5697 = !DILocation(line: 41, column: 19, scope: !5687)
!5698 = !DILocation(line: 41, column: 15, scope: !5687)
!5699 = !DILocation(line: 43, column: 7, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5687, file: !5688, line: 43, column: 7)
!5701 = !DILocation(line: 43, column: 7, scope: !5687)
!5702 = !DILocation(line: 47, column: 15, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5704, file: !5688, line: 47, column: 15)
!5704 = distinct !DILexicalBlock(scope: !5705, file: !5688, line: 46, column: 9)
!5705 = distinct !DILexicalBlock(scope: !5706, file: !5688, line: 45, column: 11)
!5706 = distinct !DILexicalBlock(scope: !5700, file: !5688, line: 44, column: 5)
!5707 = !DILocation(line: 47, column: 31, scope: !5703)
!5708 = !DILocation(line: 47, column: 36, scope: !5703)
!5709 = !DILocation(line: 47, column: 39, scope: !5703)
!5710 = !DILocation(line: 47, column: 59, scope: !5703)
!5711 = !DILocation(line: 47, column: 15, scope: !5704)
!5712 = !DILocation(line: 48, column: 13, scope: !5703)
!5713 = !DILocation(line: 71, column: 3, scope: !5687)
!5714 = distinct !DISubprogram(name: "locale_charset", scope: !793, file: !793, line: 393, type: !5715, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !449, variables: !5717)
!5715 = !DISubroutineType(types: !5716)
!5716 = !{!288}
!5717 = !{!5718, !5719}
!5718 = !DILocalVariable(name: "codeset", scope: !5714, file: !793, line: 395, type: !288)
!5719 = !DILocalVariable(name: "aliases", scope: !5714, file: !793, line: 396, type: !288)
!5720 = !DILocalVariable(name: "buf1", scope: !5721, file: !793, line: 196, type: !5788)
!5721 = distinct !DILexicalBlock(scope: !5722, file: !793, line: 194, column: 21)
!5722 = distinct !DILexicalBlock(scope: !5723, file: !793, line: 193, column: 19)
!5723 = distinct !DILexicalBlock(scope: !5724, file: !793, line: 193, column: 19)
!5724 = distinct !DILexicalBlock(scope: !5725, file: !793, line: 188, column: 17)
!5725 = distinct !DILexicalBlock(scope: !5726, file: !793, line: 181, column: 19)
!5726 = distinct !DILexicalBlock(scope: !5727, file: !793, line: 177, column: 13)
!5727 = distinct !DILexicalBlock(scope: !5728, file: !793, line: 173, column: 15)
!5728 = distinct !DILexicalBlock(scope: !5729, file: !793, line: 161, column: 9)
!5729 = distinct !DILexicalBlock(scope: !5730, file: !793, line: 157, column: 11)
!5730 = distinct !DILexicalBlock(scope: !5731, file: !793, line: 130, column: 5)
!5731 = distinct !DILexicalBlock(scope: !5732, file: !793, line: 129, column: 7)
!5732 = distinct !DISubprogram(name: "get_charset_aliases", scope: !793, file: !793, line: 124, type: !5715, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !449, variables: !5733)
!5733 = !{!5734, !5735, !5736, !5737, !5738, !5740, !5741, !5742, !5743, !5784, !5785, !5786, !5720, !5787, !5791, !5792, !5793}
!5734 = !DILocalVariable(name: "cp", scope: !5732, file: !793, line: 126, type: !288)
!5735 = !DILocalVariable(name: "dir", scope: !5730, file: !793, line: 132, type: !288)
!5736 = !DILocalVariable(name: "base", scope: !5730, file: !793, line: 133, type: !288)
!5737 = !DILocalVariable(name: "file_name", scope: !5730, file: !793, line: 134, type: !51)
!5738 = !DILocalVariable(name: "dir_len", scope: !5739, file: !793, line: 144, type: !54)
!5739 = distinct !DILexicalBlock(scope: !5730, file: !793, line: 143, column: 7)
!5740 = !DILocalVariable(name: "base_len", scope: !5739, file: !793, line: 145, type: !54)
!5741 = !DILocalVariable(name: "add_slash", scope: !5739, file: !793, line: 146, type: !57)
!5742 = !DILocalVariable(name: "fd", scope: !5728, file: !793, line: 162, type: !57)
!5743 = !DILocalVariable(name: "fp", scope: !5726, file: !793, line: 178, type: !5744)
!5744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5745, size: 64)
!5745 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !5746)
!5746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 241, size: 1728, elements: !5747)
!5747 = !{!5748, !5749, !5750, !5751, !5752, !5753, !5754, !5755, !5756, !5757, !5758, !5759, !5760, !5768, !5769, !5770, !5771, !5772, !5773, !5774, !5775, !5776, !5777, !5778, !5779, !5780, !5781, !5782, !5783}
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5746, file: !193, line: 242, baseType: !57, size: 32)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5746, file: !193, line: 247, baseType: !51, size: 64, offset: 64)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5746, file: !193, line: 248, baseType: !51, size: 64, offset: 128)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5746, file: !193, line: 249, baseType: !51, size: 64, offset: 192)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5746, file: !193, line: 250, baseType: !51, size: 64, offset: 256)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5746, file: !193, line: 251, baseType: !51, size: 64, offset: 320)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5746, file: !193, line: 252, baseType: !51, size: 64, offset: 384)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5746, file: !193, line: 253, baseType: !51, size: 64, offset: 448)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5746, file: !193, line: 254, baseType: !51, size: 64, offset: 512)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5746, file: !193, line: 256, baseType: !51, size: 64, offset: 576)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5746, file: !193, line: 257, baseType: !51, size: 64, offset: 640)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5746, file: !193, line: 258, baseType: !51, size: 64, offset: 704)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5746, file: !193, line: 260, baseType: !5761, size: 64, offset: 768)
!5761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5762, size: 64)
!5762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !193, line: 156, size: 192, elements: !5763)
!5763 = !{!5764, !5765, !5767}
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5762, file: !193, line: 157, baseType: !5761, size: 64)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5762, file: !193, line: 158, baseType: !5766, size: 64, offset: 64)
!5766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5746, size: 64)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5762, file: !193, line: 162, baseType: !57, size: 32, offset: 128)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5746, file: !193, line: 262, baseType: !5766, size: 64, offset: 832)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5746, file: !193, line: 264, baseType: !57, size: 32, offset: 896)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5746, file: !193, line: 268, baseType: !57, size: 32, offset: 928)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5746, file: !193, line: 270, baseType: !102, size: 64, offset: 960)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5746, file: !193, line: 274, baseType: !58, size: 16, offset: 1024)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5746, file: !193, line: 275, baseType: !221, size: 8, offset: 1040)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5746, file: !193, line: 276, baseType: !223, size: 8, offset: 1048)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5746, file: !193, line: 280, baseType: !227, size: 64, offset: 1088)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5746, file: !193, line: 289, baseType: !230, size: 64, offset: 1152)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5746, file: !193, line: 297, baseType: !53, size: 64, offset: 1216)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5746, file: !193, line: 298, baseType: !53, size: 64, offset: 1280)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5746, file: !193, line: 299, baseType: !53, size: 64, offset: 1344)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5746, file: !193, line: 300, baseType: !53, size: 64, offset: 1408)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5746, file: !193, line: 302, baseType: !54, size: 64, offset: 1472)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5746, file: !193, line: 303, baseType: !57, size: 32, offset: 1536)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5746, file: !193, line: 305, baseType: !238, size: 160, offset: 1568)
!5784 = !DILocalVariable(name: "res_ptr", scope: !5724, file: !793, line: 190, type: !51)
!5785 = !DILocalVariable(name: "res_size", scope: !5724, file: !793, line: 191, type: !54)
!5786 = !DILocalVariable(name: "c", scope: !5721, file: !793, line: 195, type: !57)
!5787 = !DILocalVariable(name: "buf2", scope: !5721, file: !793, line: 197, type: !5788)
!5788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 408, elements: !5789)
!5789 = !{!5790}
!5790 = !DISubrange(count: 51)
!5791 = !DILocalVariable(name: "l1", scope: !5721, file: !793, line: 198, type: !54)
!5792 = !DILocalVariable(name: "l2", scope: !5721, file: !793, line: 198, type: !54)
!5793 = !DILocalVariable(name: "old_res_ptr", scope: !5721, file: !793, line: 199, type: !51)
!5794 = !DILocation(line: 196, column: 28, scope: !5721, inlinedAt: !5795)
!5795 = distinct !DILocation(line: 589, column: 18, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5714, file: !793, line: 589, column: 3)
!5797 = !DILocation(line: 197, column: 28, scope: !5721, inlinedAt: !5795)
!5798 = !DILocation(line: 403, column: 13, scope: !5714)
!5799 = !DILocation(line: 395, column: 15, scope: !5714)
!5800 = !DILocation(line: 584, column: 15, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5714, file: !793, line: 584, column: 7)
!5802 = !DILocation(line: 584, column: 7, scope: !5714)
!5803 = !DILocation(line: 128, column: 8, scope: !5732, inlinedAt: !5795)
!5804 = !DILocation(line: 126, column: 15, scope: !5732, inlinedAt: !5795)
!5805 = !DILocation(line: 129, column: 10, scope: !5731, inlinedAt: !5795)
!5806 = !DILocation(line: 129, column: 7, scope: !5732, inlinedAt: !5795)
!5807 = !DILocation(line: 138, column: 13, scope: !5730, inlinedAt: !5795)
!5808 = !DILocation(line: 132, column: 19, scope: !5730, inlinedAt: !5795)
!5809 = !DILocation(line: 139, column: 15, scope: !5810, inlinedAt: !5795)
!5810 = distinct !DILexicalBlock(scope: !5730, file: !793, line: 139, column: 11)
!5811 = !DILocation(line: 139, column: 23, scope: !5810, inlinedAt: !5795)
!5812 = !DILocation(line: 139, column: 26, scope: !5810, inlinedAt: !5795)
!5813 = !DILocation(line: 139, column: 33, scope: !5810, inlinedAt: !5795)
!5814 = !DILocation(line: 139, column: 11, scope: !5730, inlinedAt: !5795)
!5815 = !DILocation(line: 140, column: 9, scope: !5810, inlinedAt: !5795)
!5816 = !DILocation(line: 144, column: 26, scope: !5739, inlinedAt: !5795)
!5817 = !DILocation(line: 144, column: 16, scope: !5739, inlinedAt: !5795)
!5818 = !DILocation(line: 145, column: 16, scope: !5739, inlinedAt: !5795)
!5819 = !DILocation(line: 146, column: 34, scope: !5739, inlinedAt: !5795)
!5820 = !DILocation(line: 146, column: 38, scope: !5739, inlinedAt: !5795)
!5821 = !DILocation(line: 146, column: 42, scope: !5739, inlinedAt: !5795)
!5822 = !DILocation(line: 147, column: 48, scope: !5739, inlinedAt: !5795)
!5823 = !DILocation(line: 147, column: 46, scope: !5739, inlinedAt: !5795)
!5824 = !DILocation(line: 147, column: 69, scope: !5739, inlinedAt: !5795)
!5825 = !DILocation(line: 147, column: 30, scope: !5739, inlinedAt: !5795)
!5826 = !DILocation(line: 134, column: 13, scope: !5730, inlinedAt: !5795)
!5827 = !DILocation(line: 148, column: 13, scope: !5739, inlinedAt: !5795)
!5828 = !DILocation(line: 150, column: 13, scope: !5829, inlinedAt: !5795)
!5829 = distinct !DILexicalBlock(scope: !5830, file: !793, line: 149, column: 11)
!5830 = distinct !DILexicalBlock(scope: !5739, file: !793, line: 148, column: 13)
!5831 = !DILocation(line: 151, column: 17, scope: !5829, inlinedAt: !5795)
!5832 = !DILocation(line: 152, column: 34, scope: !5833, inlinedAt: !5795)
!5833 = distinct !DILexicalBlock(scope: !5829, file: !793, line: 151, column: 17)
!5834 = !DILocation(line: 153, column: 41, scope: !5829, inlinedAt: !5795)
!5835 = !DILocation(line: 153, column: 13, scope: !5829, inlinedAt: !5795)
!5836 = !DILocation(line: 157, column: 11, scope: !5730, inlinedAt: !5795)
!5837 = !DILocation(line: 171, column: 16, scope: !5728, inlinedAt: !5795)
!5838 = !DILocation(line: 162, column: 15, scope: !5728, inlinedAt: !5795)
!5839 = !DILocation(line: 173, column: 18, scope: !5727, inlinedAt: !5795)
!5840 = !DILocation(line: 173, column: 15, scope: !5728, inlinedAt: !5795)
!5841 = !DILocation(line: 180, column: 20, scope: !5726, inlinedAt: !5795)
!5842 = !DILocation(line: 178, column: 21, scope: !5726, inlinedAt: !5795)
!5843 = !DILocation(line: 181, column: 22, scope: !5725, inlinedAt: !5795)
!5844 = !DILocation(line: 181, column: 19, scope: !5726, inlinedAt: !5795)
!5845 = !DILocation(line: 184, column: 19, scope: !5846, inlinedAt: !5795)
!5846 = distinct !DILexicalBlock(scope: !5725, file: !793, line: 182, column: 17)
!5847 = !DILocation(line: 186, column: 17, scope: !5846, inlinedAt: !5795)
!5848 = !DILocation(line: 190, column: 25, scope: !5724, inlinedAt: !5795)
!5849 = !DILocation(line: 191, column: 26, scope: !5724, inlinedAt: !5795)
!5850 = !DILocation(line: 193, column: 19, scope: !5724, inlinedAt: !5795)
!5851 = !DILocation(line: 196, column: 23, scope: !5721, inlinedAt: !5795)
!5852 = !DILocation(line: 197, column: 23, scope: !5721, inlinedAt: !5795)
!5853 = !DILocalVariable(name: "__fp", arg: 1, scope: !5854, file: !2005, line: 63, type: !5744)
!5854 = distinct !DISubprogram(name: "getc_unlocked", scope: !2005, file: !2005, line: 63, type: !5855, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !449, variables: !5857)
!5855 = !DISubroutineType(types: !5856)
!5856 = !{!57, !5744}
!5857 = !{!5853}
!5858 = !DILocation(line: 63, column: 22, scope: !5854, inlinedAt: !5859)
!5859 = distinct !DILocation(line: 201, column: 27, scope: !5721, inlinedAt: !5795)
!5860 = !DILocation(line: 65, column: 10, scope: !5854, inlinedAt: !5859)
!5861 = !DILocation(line: 195, column: 27, scope: !5721, inlinedAt: !5795)
!5862 = !DILocation(line: 202, column: 27, scope: !5721, inlinedAt: !5795)
!5863 = distinct !{!5863, !5864, !5867}
!5864 = !DILocation(line: 209, column: 27, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5866, file: !793, line: 207, column: 25)
!5866 = distinct !DILexicalBlock(scope: !5721, file: !793, line: 206, column: 27)
!5867 = !DILocation(line: 211, column: 58, scope: !5865)
!5868 = !DILocation(line: 65, column: 10, scope: !5854, inlinedAt: !5869)
!5869 = distinct !DILocation(line: 210, column: 33, scope: !5865, inlinedAt: !5795)
!5870 = !DILocation(line: 63, column: 22, scope: !5854, inlinedAt: !5869)
!5871 = !DILocation(line: 210, column: 29, scope: !5865, inlinedAt: !5795)
!5872 = distinct !{!5872, !5873, !5874}
!5873 = !DILocation(line: 193, column: 19, scope: !5723)
!5874 = !DILocation(line: 241, column: 21, scope: !5723)
!5875 = !DILocation(line: 216, column: 23, scope: !5721, inlinedAt: !5795)
!5876 = !DILocation(line: 217, column: 27, scope: !5877, inlinedAt: !5795)
!5877 = distinct !DILexicalBlock(scope: !5721, file: !793, line: 217, column: 27)
!5878 = !DILocation(line: 217, column: 64, scope: !5877, inlinedAt: !5795)
!5879 = !DILocation(line: 217, column: 27, scope: !5721, inlinedAt: !5795)
!5880 = !DILocation(line: 219, column: 28, scope: !5721, inlinedAt: !5795)
!5881 = !DILocation(line: 198, column: 30, scope: !5721, inlinedAt: !5795)
!5882 = !DILocation(line: 220, column: 28, scope: !5721, inlinedAt: !5795)
!5883 = !DILocation(line: 198, column: 34, scope: !5721, inlinedAt: !5795)
!5884 = !DILocation(line: 199, column: 29, scope: !5721, inlinedAt: !5795)
!5885 = !DILocation(line: 222, column: 36, scope: !5886, inlinedAt: !5795)
!5886 = distinct !DILexicalBlock(scope: !5721, file: !793, line: 222, column: 27)
!5887 = !DILocation(line: 222, column: 27, scope: !5721, inlinedAt: !5795)
!5888 = !DILocation(line: 225, column: 63, scope: !5889, inlinedAt: !5795)
!5889 = distinct !DILexicalBlock(scope: !5886, file: !793, line: 223, column: 25)
!5890 = !DILocation(line: 225, column: 46, scope: !5889, inlinedAt: !5795)
!5891 = !DILocation(line: 226, column: 25, scope: !5889, inlinedAt: !5795)
!5892 = !DILocation(line: 229, column: 36, scope: !5893, inlinedAt: !5795)
!5893 = distinct !DILexicalBlock(scope: !5886, file: !793, line: 228, column: 25)
!5894 = !DILocation(line: 230, column: 73, scope: !5893, inlinedAt: !5795)
!5895 = !DILocation(line: 230, column: 46, scope: !5893, inlinedAt: !5795)
!5896 = !DILocation(line: 232, column: 35, scope: !5897, inlinedAt: !5795)
!5897 = distinct !DILexicalBlock(scope: !5721, file: !793, line: 232, column: 27)
!5898 = !DILocation(line: 232, column: 27, scope: !5721, inlinedAt: !5795)
!5899 = !DILocation(line: 236, column: 27, scope: !5900, inlinedAt: !5795)
!5900 = distinct !DILexicalBlock(scope: !5897, file: !793, line: 233, column: 25)
!5901 = !DILocation(line: 237, column: 27, scope: !5900, inlinedAt: !5795)
!5902 = !DILocation(line: 241, column: 21, scope: !5722, inlinedAt: !5795)
!5903 = !DILocation(line: 239, column: 39, scope: !5721, inlinedAt: !5795)
!5904 = !DILocation(line: 239, column: 50, scope: !5721, inlinedAt: !5795)
!5905 = !DILocation(line: 239, column: 61, scope: !5721, inlinedAt: !5795)
!5906 = !DILocalVariable(name: "__dest", arg: 1, scope: !5907, file: !5908, line: 88, type: !5911)
!5907 = distinct !DISubprogram(name: "strcpy", scope: !5908, file: !5908, line: 88, type: !5909, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !449, variables: !5913)
!5908 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5909 = !DISubroutineType(types: !5910)
!5910 = !{!51, !5911, !5912}
!5911 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!5912 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !288)
!5913 = !{!5906, !5914}
!5914 = !DILocalVariable(name: "__src", arg: 2, scope: !5907, file: !5908, line: 88, type: !5912)
!5915 = !DILocation(line: 88, column: 1, scope: !5907, inlinedAt: !5916)
!5916 = distinct !DILocation(line: 239, column: 23, scope: !5721, inlinedAt: !5795)
!5917 = !DILocation(line: 90, column: 49, scope: !5907, inlinedAt: !5916)
!5918 = !DILocation(line: 90, column: 10, scope: !5907, inlinedAt: !5916)
!5919 = !DILocation(line: 88, column: 1, scope: !5907, inlinedAt: !5920)
!5920 = distinct !DILocation(line: 240, column: 23, scope: !5721, inlinedAt: !5795)
!5921 = !DILocation(line: 90, column: 49, scope: !5907, inlinedAt: !5920)
!5922 = !DILocation(line: 90, column: 10, scope: !5907, inlinedAt: !5920)
!5923 = !DILocation(line: 193, column: 19, scope: !5722, inlinedAt: !5795)
!5924 = !DILocation(line: 242, column: 19, scope: !5724, inlinedAt: !5795)
!5925 = !DILocation(line: 243, column: 32, scope: !5926, inlinedAt: !5795)
!5926 = distinct !DILexicalBlock(scope: !5724, file: !793, line: 243, column: 23)
!5927 = !DILocation(line: 243, column: 23, scope: !5724, inlinedAt: !5795)
!5928 = !DILocation(line: 247, column: 33, scope: !5929, inlinedAt: !5795)
!5929 = distinct !DILexicalBlock(scope: !5926, file: !793, line: 246, column: 21)
!5930 = !DILocation(line: 247, column: 45, scope: !5929, inlinedAt: !5795)
!5931 = !DILocation(line: 253, column: 11, scope: !5728, inlinedAt: !5795)
!5932 = !DILocation(line: 377, column: 23, scope: !5730, inlinedAt: !5795)
!5933 = !DILocation(line: 378, column: 5, scope: !5730, inlinedAt: !5795)
!5934 = !DILocation(line: 396, column: 15, scope: !5714)
!5935 = !DILocation(line: 590, column: 8, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5796, file: !793, line: 589, column: 3)
!5937 = !DILocation(line: 590, column: 17, scope: !5936)
!5938 = !DILocation(line: 589, column: 3, scope: !5796)
!5939 = !DILocation(line: 592, column: 9, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5936, file: !793, line: 592, column: 9)
!5941 = !DILocation(line: 592, column: 35, scope: !5940)
!5942 = !DILocation(line: 593, column: 9, scope: !5940)
!5943 = !DILocation(line: 593, column: 24, scope: !5940)
!5944 = !DILocation(line: 593, column: 31, scope: !5940)
!5945 = !DILocation(line: 593, column: 34, scope: !5940)
!5946 = !DILocation(line: 593, column: 45, scope: !5940)
!5947 = !DILocation(line: 592, column: 9, scope: !5936)
!5948 = !DILocation(line: 595, column: 29, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5940, file: !793, line: 594, column: 7)
!5950 = !DILocation(line: 595, column: 27, scope: !5949)
!5951 = !DILocation(line: 595, column: 46, scope: !5949)
!5952 = !DILocation(line: 596, column: 9, scope: !5949)
!5953 = !DILocation(line: 591, column: 19, scope: !5936)
!5954 = !DILocation(line: 591, column: 36, scope: !5936)
!5955 = !DILocation(line: 591, column: 16, scope: !5936)
!5956 = !DILocation(line: 591, column: 52, scope: !5936)
!5957 = !DILocation(line: 591, column: 69, scope: !5936)
!5958 = !DILocation(line: 591, column: 49, scope: !5936)
!5959 = distinct !{!5959, !5938, !5960}
!5960 = !DILocation(line: 597, column: 7, scope: !5796)
!5961 = !DILocation(line: 602, column: 7, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5714, file: !793, line: 602, column: 7)
!5963 = !DILocation(line: 602, column: 18, scope: !5962)
!5964 = !DILocation(line: 602, column: 7, scope: !5714)
!5965 = !DILocation(line: 612, column: 3, scope: !5714)
