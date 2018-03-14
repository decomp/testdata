; ModuleID = 'coreutils-8.27/src/nl.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.re_pattern_buffer = type { %struct.re_dfa_t*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.re_dfa_t = type opaque
%struct.linebuffer = type { i64, i64, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.re_registers = type { i32, i32*, i32* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Write each FILE to standard output, with line numbers added.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.30 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.31 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [210 x i8] c"  -b, --body-numbering=STYLE      use STYLE for numbering body lines\0A  -d, --section-delimiter=CC      use CC for logical page delimiters\0A  -f, --footer-numbering=STYLE    use STYLE for numbering footer lines\0A\00", align 1
@.str.4 = private unnamed_addr constant [443 x i8] c"  -h, --header-numbering=STYLE    use STYLE for numbering header lines\0A  -i, --line-increment=NUMBER     line number increment at each line\0A  -l, --join-blank-lines=NUMBER   group of NUMBER empty lines counted as one\0A  -n, --number-format=FORMAT      insert line numbers according to FORMAT\0A  -p, --no-renumber               do not reset line numbers for each section\0A  -s, --number-separator=STRING   add STRING after (possible) line number\0A\00", align 1
@.str.5 = private unnamed_addr constant [143 x i8] c"  -v, --starting-line-number=NUMBER  first line number for each section\0A  -w, --number-width=NUMBER       use NUMBER columns for line numbers\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [209 x i8] c"\0ABy default, selects -v1 -i1 -l1 -sTAB -w6 -nrn -hn -bt -fn.\0ACC are two delimiter characters used to construct logical page delimiters,\0Aa missing second character implies :.  Type \5C\5C for \5C.  STYLE is one of:\0A\00", align 1
@.str.9 = private unnamed_addr constant [339 x i8] c"\0A  a         number all lines\0A  t         number only nonempty lines\0A  n         number no lines\0A  pBRE      number only lines that contain a match for the basic regular\0A            expression, BRE\0A\0AFORMAT is one of:\0A\0A  ln   left justified, no leading zeros\0A  rn   right justified, no leading zeros\0A  rz   right justified, leading zeros\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"nl\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.43 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"h:b:f:v:i:pl:s:w:n:d:\00", align 1
@longopts = internal constant [14 x %struct.option] [%struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), i32 1, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@header_type = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), align 8, !dbg !129
@header_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !72
@header_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !81
@.str.15 = private unnamed_addr constant [35 x i8] c"invalid header numbering style: %s\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@body_type = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), align 8, !dbg !131
@body_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !45
@body_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !76
@.str.16 = private unnamed_addr constant [33 x i8] c"invalid body numbering style: %s\00", align 1
@footer_type = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), align 8, !dbg !133
@footer_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !74
@footer_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !83
@.str.17 = private unnamed_addr constant [35 x i8] c"invalid footer numbering style: %s\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"invalid starting line number\00", align 1
@starting_line_number = internal unnamed_addr global i64 1, align 8, !dbg !135
@.str.19 = private unnamed_addr constant [30 x i8] c"invalid line number increment\00", align 1
@page_incr = internal unnamed_addr global i64 1, align 8, !dbg !137
@reset_numbers = internal unnamed_addr global i1 false, align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"invalid line number of blank lines\00", align 1
@blank_join = internal unnamed_addr global i64 1, align 8, !dbg !141
@separator_str = internal unnamed_addr global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), align 8, !dbg !143
@.str.21 = private unnamed_addr constant [32 x i8] c"invalid line number field width\00", align 1
@lineno_width = internal unnamed_addr global i32 6, align 4, !dbg !145
@.str.22 = private unnamed_addr constant [3 x i8] c"ln\00", align 1
@FORMAT_LEFT = internal constant [8 x i8] c"%-*ld%s\00", align 1, !dbg !148
@lineno_format = internal unnamed_addr global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @FORMAT_RIGHT_NOLZ, i64 0, i64 0), align 8, !dbg !153
@.str.23 = private unnamed_addr constant [3 x i8] c"rn\00", align 1
@FORMAT_RIGHT_NOLZ = internal constant [7 x i8] c"%*ld%s\00", align 1, !dbg !155
@.str.24 = private unnamed_addr constant [3 x i8] c"rz\00", align 1
@FORMAT_RIGHT_LZ = internal constant [8 x i8] c"%0*ld%s\00", align 1, !dbg !158
@.str.25 = private unnamed_addr constant [34 x i8] c"invalid line numbering format: %s\00", align 1
@section_del = internal unnamed_addr global i8* getelementptr inbounds ([3 x i8], [3 x i8]* @DEFAULT_SECTION_DELIMITERS, i64 0, i64 0), align 8, !dbg !160
@.str.27 = private unnamed_addr constant [14 x i8] c"Scott Bartram\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@header_del_len = internal unnamed_addr global i64 0, align 8, !dbg !85
@header_del = internal unnamed_addr global i8* null, align 8, !dbg !167
@body_del_len = internal unnamed_addr global i64 0, align 8, !dbg !87
@body_del = internal unnamed_addr global i8* null, align 8, !dbg !169
@footer_del_len = internal unnamed_addr global i64 0, align 8, !dbg !89
@footer_del = internal unnamed_addr global i8* null, align 8, !dbg !171
@line_buf = internal global %struct.linebuffer zeroinitializer, align 8, !dbg !91
@print_no_line_fmt = internal unnamed_addr global i8* null, align 8, !dbg !173
@line_no = internal unnamed_addr global i64 0, align 8, !dbg !99
@current_type = internal unnamed_addr global i8* null, align 8, !dbg !41
@current_regex = internal unnamed_addr global %struct.re_pattern_buffer* null, align 8, !dbg !175
@optind = external local_unnamed_addr global i32, align 4
@.str.29 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.64 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@proc_text.blank_lines = internal unnamed_addr global i64 0, align 8, !dbg !178
@.str.66 = private unnamed_addr constant [21 x i8] c"line number overflow\00", align 1
@.str.65 = private unnamed_addr constant [35 x i8] c"error in regular expression search\00", align 1
@DEFAULT_SECTION_DELIMITERS = internal constant [3 x i8] c"\5C:\00", align 1, !dbg !162
@.str.63 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@re_syntax_options = external local_unnamed_addr global i64, align 8
@.str.47 = private unnamed_addr constant [17 x i8] c"header-numbering\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"body-numbering\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"footer-numbering\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"starting-line-number\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"line-increment\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"no-renumber\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"join-blank-lines\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"number-separator\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"number-width\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"number-format\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"section-delimiter\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), align 8, !dbg !196
@.str.32 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !201
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !206
@.str.35 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.36 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !209
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !216
@.str.67 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.68 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.69 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.72, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.73, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.74, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.77, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.79, i32 0, i32 0), i8* null], align 16, !dbg !223
@.str.70 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.71 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.72 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.73 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.74 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.75 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.76 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.77 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.78 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.79 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !251
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !258
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !268
@.str.11.80 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.81 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.82 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.83 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.84 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.85 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.86 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !272
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !279
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !270
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !281
@.str.93 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.94 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.95 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.96 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.97 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.98 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.99 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.100 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.101 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.102 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.103 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.104 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.105 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.106 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.109 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.110 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.111 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.112 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.113 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.114 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !287
@.str.1.127 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.134 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.135 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoimax = private unnamed_addr constant [78 x i8] c"strtol_error xstrtoimax(const char *, char **, int, intmax_t *, const char *)\00", align 1
@.str.150 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.151 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.154 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !296
@.str.3.155 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.156 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.157 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.158 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.159 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.160 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !710 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !714, metadata !715), !dbg !716
  %2 = icmp eq i32 %0, 0, !dbg !717
  br i1 %2, label %8, label %3, !dbg !719

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !720, !tbaa !722
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !720
  %6 = load i8*, i8** @program_name, align 8, !dbg !720, !tbaa !722
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !720
  br label %57, !dbg !720

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !726
  %10 = load i8*, i8** @program_name, align 8, !dbg !726, !tbaa !722
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !726
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !728
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !728, !tbaa !722
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !728
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !729
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !729, !tbaa !722
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !729
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.31, i64 0, i64 0), i32 5) #11, !dbg !732
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !732, !tbaa !722
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !732
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !735
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !735, !tbaa !722
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !735
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([443 x i8], [443 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !736
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !736, !tbaa !722
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !736
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !737
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !737, !tbaa !722
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11, !dbg !737
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !738
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !738, !tbaa !722
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11, !dbg !738
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !739
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !739, !tbaa !722
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #11, !dbg !739
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([209 x i8], [209 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !740
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !740, !tbaa !722
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #11, !dbg !740
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([339 x i8], [339 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !741
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !741, !tbaa !722
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #11, !dbg !741
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !117, metadata !715) #11, !dbg !742
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 0, metadata !117, metadata !715) #11, !dbg !742
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0), i32 5) #11, !dbg !744
  %43 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41, i64 0, i64 0)) #11, !dbg !744
  %44 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !745
  tail call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !125, metadata !715) #11, !dbg !746
  %45 = icmp eq i8* %44, null, !dbg !747
  br i1 %45, label %52, label %46, !dbg !749

; <label>:46:                                     ; preds = %8
  %47 = tail call i32 @strncmp(i8* nonnull %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i64 3) #14, !dbg !750
  %48 = icmp eq i32 %47, 0, !dbg !750
  br i1 %48, label %52, label %49, !dbg !751

; <label>:49:                                     ; preds = %46
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !752
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !752
  br label %52, !dbg !754

; <label>:52:                                     ; preds = %8, %46, %49
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i64 0, i64 0), i32 5) #11, !dbg !755
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !755
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0), i32 5) #11, !dbg !756
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #11, !dbg !756
  br label %57

; <label>:57:                                     ; preds = %52, %3
  tail call void @exit(i32 %0) #15, !dbg !757
  unreachable, !dbg !757
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !758 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !763, metadata !715), !dbg !768
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !764, metadata !715), !dbg !769
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !767, metadata !715), !dbg !770
  %3 = load i8*, i8** %1, align 8, !dbg !771, !tbaa !722
  tail call void @set_program_name(i8* %3) #11, !dbg !772
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !773
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !774
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !775
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !776
  store i1 false, i1* @have_read_stdin, align 1
  br label %8, !dbg !777

; <label>:8:                                      ; preds = %11, %2
  %9 = phi i8 [ 1, %2 ], [ %12, %11 ]
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !767, metadata !715), !dbg !770
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([14 x %struct.option], [14 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !778
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !765, metadata !715), !dbg !779
  switch i32 %10, label %11 [
    i32 -1, label %74
    i32 104, label %13
    i32 98, label %19
    i32 102, label %25
    i32 118, label %31
    i32 105, label %35
    i32 112, label %39
    i32 108, label %40
    i32 115, label %44
    i32 119, label %46
    i32 110, label %51
    i32 100, label %68
    i32 -130, label %70
    i32 -131, label %71
  ], !dbg !777

; <label>:11:                                     ; preds = %8, %55, %63, %64, %59, %25, %27, %19, %21, %13, %15, %68, %46, %44, %40, %39, %35, %31
  %12 = phi i8 [ %9, %68 ], [ %9, %55 ], [ %9, %59 ], [ %9, %63 ], [ 0, %64 ], [ %9, %46 ], [ %9, %44 ], [ %9, %40 ], [ %9, %39 ], [ %9, %35 ], [ %9, %31 ], [ %9, %25 ], [ 0, %27 ], [ %9, %19 ], [ 0, %21 ], [ %9, %13 ], [ 0, %15 ], [ 0, %8 ]
  br label %8, !dbg !770, !llvm.loop !780

; <label>:13:                                     ; preds = %8
  %14 = tail call fastcc zeroext i1 @build_type_arg(i8** nonnull @header_type, %struct.re_pattern_buffer* nonnull @header_regex, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @header_fastmap, i64 0, i64 0)), !dbg !782
  br i1 %14, label %11, label %15, !dbg !786

; <label>:15:                                     ; preds = %13
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i32 5) #11, !dbg !787
  %17 = load i8*, i8** @optarg, align 8, !dbg !789, !tbaa !722
  %18 = tail call i8* @quote(i8* %17) #11, !dbg !790
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %16, i8* %18) #11, !dbg !791
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !767, metadata !715), !dbg !770
  br label %11, !dbg !792

; <label>:19:                                     ; preds = %8
  %20 = tail call fastcc zeroext i1 @build_type_arg(i8** nonnull @body_type, %struct.re_pattern_buffer* nonnull @body_regex, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @body_fastmap, i64 0, i64 0)), !dbg !793
  br i1 %20, label %11, label %21, !dbg !795

; <label>:21:                                     ; preds = %19
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !796
  %23 = load i8*, i8** @optarg, align 8, !dbg !798, !tbaa !722
  %24 = tail call i8* @quote(i8* %23) #11, !dbg !799
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %22, i8* %24) #11, !dbg !800
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !767, metadata !715), !dbg !770
  br label %11, !dbg !801

; <label>:25:                                     ; preds = %8
  %26 = tail call fastcc zeroext i1 @build_type_arg(i8** nonnull @footer_type, %struct.re_pattern_buffer* nonnull @footer_regex, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @footer_fastmap, i64 0, i64 0)), !dbg !802
  br i1 %26, label %11, label %27, !dbg !804

; <label>:27:                                     ; preds = %25
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !805
  %29 = load i8*, i8** @optarg, align 8, !dbg !807, !tbaa !722
  %30 = tail call i8* @quote(i8* %29) #11, !dbg !808
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %28, i8* %30) #11, !dbg !809
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !767, metadata !715), !dbg !770
  br label %11, !dbg !810

; <label>:31:                                     ; preds = %8
  %32 = load i8*, i8** @optarg, align 8, !dbg !811, !tbaa !722
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !812
  %34 = tail call i64 @xdectoimax(i8* %32, i64 -9223372036854775808, i64 9223372036854775807, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* %33, i32 0) #11, !dbg !813
  store i64 %34, i64* @starting_line_number, align 8, !dbg !814, !tbaa !815
  br label %11, !dbg !817

; <label>:35:                                     ; preds = %8
  %36 = load i8*, i8** @optarg, align 8, !dbg !818, !tbaa !722
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !819
  %38 = tail call i64 @xdectoimax(i8* %36, i64 1, i64 9223372036854775807, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* %37, i32 0) #11, !dbg !820
  store i64 %38, i64* @page_incr, align 8, !dbg !821, !tbaa !815
  br label %11, !dbg !822

; <label>:39:                                     ; preds = %8
  store i1 true, i1* @reset_numbers, align 1
  br label %11, !dbg !823

; <label>:40:                                     ; preds = %8
  %41 = load i8*, i8** @optarg, align 8, !dbg !824, !tbaa !722
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !825
  %43 = tail call i64 @xdectoimax(i8* %41, i64 1, i64 9223372036854775807, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* %42, i32 0) #11, !dbg !826
  store i64 %43, i64* @blank_join, align 8, !dbg !827, !tbaa !815
  br label %11, !dbg !828

; <label>:44:                                     ; preds = %8
  %45 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !829, !tbaa !722
  store i64 %45, i64* bitcast (i8** @separator_str to i64*), align 8, !dbg !830, !tbaa !722
  br label %11, !dbg !831

; <label>:46:                                     ; preds = %8
  %47 = load i8*, i8** @optarg, align 8, !dbg !832, !tbaa !722
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i32 5) #11, !dbg !833
  %49 = tail call i64 @xdectoimax(i8* %47, i64 1, i64 2147483647, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* %48, i32 0) #11, !dbg !834
  %50 = trunc i64 %49 to i32, !dbg !834
  store i32 %50, i32* @lineno_width, align 4, !dbg !835, !tbaa !836
  br label %11, !dbg !838

; <label>:51:                                     ; preds = %8
  %52 = load i8*, i8** @optarg, align 8, !dbg !839, !tbaa !722
  %53 = tail call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0)) #14, !dbg !839
  %54 = icmp eq i32 %53, 0, !dbg !839
  br i1 %54, label %55, label %56, !dbg !841

; <label>:55:                                     ; preds = %51
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @FORMAT_LEFT, i64 0, i64 0), i8** @lineno_format, align 8, !dbg !842, !tbaa !722
  br label %11, !dbg !843

; <label>:56:                                     ; preds = %51
  %57 = tail call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #14, !dbg !844
  %58 = icmp eq i32 %57, 0, !dbg !844
  br i1 %58, label %59, label %60, !dbg !846

; <label>:59:                                     ; preds = %56
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @FORMAT_RIGHT_NOLZ, i64 0, i64 0), i8** @lineno_format, align 8, !dbg !847, !tbaa !722
  br label %11, !dbg !848

; <label>:60:                                     ; preds = %56
  %61 = tail call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0)) #14, !dbg !849
  %62 = icmp eq i32 %61, 0, !dbg !849
  br i1 %62, label %63, label %64, !dbg !851

; <label>:63:                                     ; preds = %60
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @FORMAT_RIGHT_LZ, i64 0, i64 0), i8** @lineno_format, align 8, !dbg !852, !tbaa !722
  br label %11, !dbg !853

; <label>:64:                                     ; preds = %60
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !854
  %66 = load i8*, i8** @optarg, align 8, !dbg !856, !tbaa !722
  %67 = tail call i8* @quote(i8* %66) #11, !dbg !857
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %65, i8* %67) #11, !dbg !858
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !767, metadata !715), !dbg !770
  br label %11

; <label>:68:                                     ; preds = %8
  %69 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !859, !tbaa !722
  store i64 %69, i64* bitcast (i8** @section_del to i64*), align 8, !dbg !860, !tbaa !722
  br label %11, !dbg !861

; <label>:70:                                     ; preds = %8
  tail call void @usage(i32 0) #16, !dbg !862
  unreachable, !dbg !862

; <label>:71:                                     ; preds = %8
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !863, !tbaa !722
  %73 = load i8*, i8** @Version, align 8, !dbg !863, !tbaa !722
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* null) #11, !dbg !863
  tail call void @exit(i32 0) #15, !dbg !863
  unreachable, !dbg !863

; <label>:74:                                     ; preds = %8
  %75 = icmp eq i8 %9, 0, !dbg !864
  br i1 %75, label %76, label %77, !dbg !866

; <label>:76:                                     ; preds = %74
  tail call void @usage(i32 1) #16, !dbg !867
  unreachable, !dbg !867

; <label>:77:                                     ; preds = %74
  %78 = load i8*, i8** @section_del, align 8, !dbg !868, !tbaa !722
  %79 = tail call i64 @strlen(i8* %78) #14, !dbg !869
  tail call void @llvm.dbg.value(metadata i64 %79, i64 0, metadata !766, metadata !715), !dbg !870
  %80 = mul i64 %79, 3, !dbg !871
  store i64 %80, i64* @header_del_len, align 8, !dbg !872, !tbaa !815
  %81 = add i64 %80, 1, !dbg !873
  %82 = tail call noalias i8* @xmalloc(i64 %81) #11, !dbg !874
  store i8* %82, i8** @header_del, align 8, !dbg !875, !tbaa !722
  %83 = load i8*, i8** @section_del, align 8, !dbg !876, !tbaa !722
  tail call void @llvm.dbg.value(metadata i8* %82, i64 0, metadata !877, metadata !715) #11, !dbg !886
  tail call void @llvm.dbg.value(metadata i8* %83, i64 0, metadata !885, metadata !715) #11, !dbg !886
  %84 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %82, i1 false, i1 true) #11, !dbg !888
  %85 = tail call i8* @__stpcpy_chk(i8* nonnull %82, i8* nonnull %83, i64 %84) #11, !dbg !889
  %86 = load i8*, i8** @section_del, align 8, !dbg !890, !tbaa !722
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !877, metadata !715) #11, !dbg !891
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !885, metadata !715) #11, !dbg !891
  %87 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %85, i1 false, i1 true) #11, !dbg !893
  %88 = tail call i8* @__stpcpy_chk(i8* nonnull %85, i8* nonnull %86, i64 %87) #11, !dbg !894
  %89 = load i8*, i8** @section_del, align 8, !dbg !895, !tbaa !722
  tail call void @llvm.dbg.value(metadata i8* %88, i64 0, metadata !877, metadata !715) #11, !dbg !896
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !885, metadata !715) #11, !dbg !896
  %90 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %88, i1 false, i1 true) #11, !dbg !898
  %91 = tail call i8* @__stpcpy_chk(i8* nonnull %88, i8* nonnull %89, i64 %90) #11, !dbg !899
  %92 = shl i64 %79, 1, !dbg !900
  store i64 %92, i64* @body_del_len, align 8, !dbg !901, !tbaa !815
  %93 = or i64 %92, 1, !dbg !902
  %94 = tail call noalias i8* @xmalloc(i64 %93) #11, !dbg !903
  store i8* %94, i8** @body_del, align 8, !dbg !904, !tbaa !722
  %95 = load i8*, i8** @section_del, align 8, !dbg !905, !tbaa !722
  tail call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !877, metadata !715) #11, !dbg !906
  tail call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !885, metadata !715) #11, !dbg !906
  %96 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %94, i1 false, i1 true) #11, !dbg !908
  %97 = tail call i8* @__stpcpy_chk(i8* nonnull %94, i8* nonnull %95, i64 %96) #11, !dbg !909
  %98 = load i8*, i8** @section_del, align 8, !dbg !910, !tbaa !722
  tail call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !877, metadata !715) #11, !dbg !911
  tail call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !885, metadata !715) #11, !dbg !911
  %99 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %97, i1 false, i1 true) #11, !dbg !913
  %100 = tail call i8* @__stpcpy_chk(i8* nonnull %97, i8* nonnull %98, i64 %99) #11, !dbg !914
  store i64 %79, i64* @footer_del_len, align 8, !dbg !915, !tbaa !815
  %101 = add i64 %79, 1, !dbg !916
  %102 = tail call noalias i8* @xmalloc(i64 %101) #11, !dbg !917
  store i8* %102, i8** @footer_del, align 8, !dbg !918, !tbaa !722
  %103 = load i8*, i8** @section_del, align 8, !dbg !919, !tbaa !722
  tail call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !877, metadata !715) #11, !dbg !920
  tail call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !885, metadata !715) #11, !dbg !920
  %104 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %102, i1 false, i1 true) #11, !dbg !922
  %105 = tail call i8* @__stpcpy_chk(i8* nonnull %102, i8* nonnull %103, i64 %104) #11, !dbg !923
  tail call void @initbuffer(%struct.linebuffer* nonnull @line_buf) #11, !dbg !924
  %106 = load i8*, i8** @separator_str, align 8, !dbg !925, !tbaa !722
  %107 = tail call i64 @strlen(i8* %106) #14, !dbg !926
  tail call void @llvm.dbg.value(metadata i64 %107, i64 0, metadata !766, metadata !715), !dbg !870
  %108 = load i32, i32* @lineno_width, align 4, !dbg !927, !tbaa !836
  %109 = sext i32 %108 to i64, !dbg !927
  %110 = add i64 %107, 1, !dbg !928
  %111 = add i64 %110, %109, !dbg !929
  %112 = tail call noalias i8* @xmalloc(i64 %111) #11, !dbg !930
  store i8* %112, i8** @print_no_line_fmt, align 8, !dbg !931, !tbaa !722
  %113 = load i32, i32* @lineno_width, align 4, !dbg !932, !tbaa !836
  %114 = sext i32 %113 to i64, !dbg !932
  %115 = add i64 %107, %114, !dbg !933
  tail call void @llvm.memset.p0i8.i64(i8* %112, i8 32, i64 %115, i32 1, i1 false), !dbg !934
  %116 = getelementptr inbounds i8, i8* %112, i64 %115, !dbg !935
  store i8 0, i8* %116, align 1, !dbg !936, !tbaa !937
  %117 = load i64, i64* @starting_line_number, align 8, !dbg !938, !tbaa !815
  store i64 %117, i64* @line_no, align 8, !dbg !939, !tbaa !815
  %118 = load i64, i64* bitcast (i8** @body_type to i64*), align 8, !dbg !940, !tbaa !722
  store i64 %118, i64* bitcast (i8** @current_type to i64*), align 8, !dbg !941, !tbaa !722
  store %struct.re_pattern_buffer* @body_regex, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !942, !tbaa !722
  %119 = load i32, i32* @optind, align 4, !dbg !943, !tbaa !836
  %120 = icmp eq i32 %119, %0, !dbg !945
  br i1 %120, label %121, label %124, !dbg !946

; <label>:121:                                    ; preds = %77
  %122 = tail call fastcc zeroext i1 @nl_file(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)), !dbg !947
  %123 = zext i1 %122 to i8, !dbg !948
  tail call void @llvm.dbg.value(metadata i8 %123, i64 0, metadata !767, metadata !715), !dbg !770
  br label %139, !dbg !949

; <label>:124:                                    ; preds = %77
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !767, metadata !715), !dbg !770
  %125 = icmp slt i32 %119, %0, !dbg !950
  br i1 %125, label %126, label %139, !dbg !953

; <label>:126:                                    ; preds = %124
  br label %127, !dbg !954

; <label>:127:                                    ; preds = %126, %127
  %128 = phi i32 [ %137, %127 ], [ %119, %126 ]
  %129 = phi i8 [ %135, %127 ], [ %9, %126 ]
  tail call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !767, metadata !715), !dbg !770
  %130 = sext i32 %128 to i64, !dbg !954
  %131 = getelementptr inbounds i8*, i8** %1, i64 %130, !dbg !954
  %132 = load i8*, i8** %131, align 8, !dbg !954, !tbaa !722
  %133 = tail call fastcc zeroext i1 @nl_file(i8* %132), !dbg !955
  %134 = zext i1 %133 to i8, !dbg !955
  %135 = and i8 %129, %134, !dbg !956
  tail call void @llvm.dbg.value(metadata i8 %135, i64 0, metadata !767, metadata !715), !dbg !770
  %136 = load i32, i32* @optind, align 4, !dbg !957, !tbaa !836
  %137 = add nsw i32 %136, 1, !dbg !957
  store i32 %137, i32* @optind, align 4, !dbg !957, !tbaa !836
  tail call void @llvm.dbg.value(metadata i8 %135, i64 0, metadata !767, metadata !715), !dbg !770
  %138 = icmp slt i32 %137, %0, !dbg !950
  br i1 %138, label %127, label %139, !dbg !953, !llvm.loop !958

; <label>:139:                                    ; preds = %127, %124, %121
  %140 = phi i8 [ %123, %121 ], [ %9, %124 ], [ %135, %127 ]
  tail call void @llvm.dbg.value(metadata i8 %140, i64 0, metadata !767, metadata !715), !dbg !770
  %141 = load i1, i1* @have_read_stdin, align 1
  br i1 %141, label %142, label %149, !dbg !960

; <label>:142:                                    ; preds = %139
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !962, !tbaa !722
  %144 = tail call i32 @rpl_fclose(%struct._IO_FILE* %143) #11, !dbg !963
  %145 = icmp eq i32 %144, -1, !dbg !964
  br i1 %145, label %146, label %149, !dbg !965

; <label>:146:                                    ; preds = %142
  %147 = tail call i32* @__errno_location() #17, !dbg !966
  %148 = load i32, i32* %147, align 4, !dbg !966, !tbaa !836
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #11, !dbg !966
  unreachable, !dbg !966

; <label>:149:                                    ; preds = %142, %139
  %150 = and i8 %140, 1, !dbg !967
  %151 = xor i8 %150, 1, !dbg !967
  %152 = zext i8 %151 to i32, !dbg !967
  ret i32 %152, !dbg !968
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
define internal fastcc zeroext i1 @build_type_arg(i8** nocapture, %struct.re_pattern_buffer*, i8*) unnamed_addr #6 !dbg !969 {
  tail call void @llvm.dbg.value(metadata i8** %0, i64 0, metadata !974, metadata !715), !dbg !979
  tail call void @llvm.dbg.value(metadata %struct.re_pattern_buffer* %1, i64 0, metadata !975, metadata !715), !dbg !980
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !976, metadata !715), !dbg !981
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !978, metadata !715), !dbg !982
  %4 = load i8*, i8** @optarg, align 8, !dbg !983, !tbaa !722
  %5 = load i8, i8* %4, align 1, !dbg !984, !tbaa !937
  %6 = sext i8 %5 to i32, !dbg !984
  switch i32 %6, label %20 [
    i32 97, label %7
    i32 116, label %7
    i32 110, label %7
    i32 112, label %10
  ], !dbg !985

; <label>:7:                                      ; preds = %3, %3, %3
  %8 = ptrtoint i8* %4 to i64, !dbg !985
  %9 = bitcast i8** %0 to i64*, !dbg !986
  store i64 %8, i64* %9, align 8, !dbg !986, !tbaa !722
  br label %20, !dbg !988

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !989
  store i8* %11, i8** @optarg, align 8, !dbg !989, !tbaa !722
  store i8* %4, i8** %0, align 8, !dbg !990, !tbaa !722
  %12 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1, i64 0, i32 4, !dbg !991
  %13 = bitcast %struct.re_pattern_buffer* %1 to i8*, !dbg !992
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 16, i32 8, i1 false), !dbg !993
  store i8* %2, i8** %12, align 8, !dbg !992, !tbaa !994
  %14 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1, i64 0, i32 5, !dbg !996
  store i8* null, i8** %14, align 8, !dbg !997, !tbaa !998
  store i64 710, i64* @re_syntax_options, align 8, !dbg !999, !tbaa !815
  %15 = load i8*, i8** @optarg, align 8, !dbg !1000, !tbaa !722
  %16 = tail call i64 @strlen(i8* %15) #14, !dbg !1001
  %17 = tail call i8* @re_compile_pattern(i8* %15, i64 %16, %struct.re_pattern_buffer* %1) #11, !dbg !1002
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !977, metadata !715), !dbg !1003
  %18 = icmp eq i8* %17, null, !dbg !1004
  br i1 %18, label %20, label %19, !dbg !1006

; <label>:19:                                     ; preds = %10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i8* nonnull %17) #11, !dbg !1007
  unreachable, !dbg !1007

; <label>:20:                                     ; preds = %3, %10, %7
  %21 = phi i1 [ true, %10 ], [ true, %7 ], [ false, %3 ]
  ret i1 %21, !dbg !1008
}

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #7

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__stpcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @nl_file(i8*) unnamed_addr #6 !dbg !1009 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1013, metadata !715), !dbg !1068
  %2 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #14, !dbg !1069
  %3 = icmp eq i32 %2, 0, !dbg !1069
  br i1 %3, label %4, label %6, !dbg !1071

; <label>:4:                                      ; preds = %1
  store i1 true, i1* @have_read_stdin, align 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1072, !tbaa !722
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %5, i64 0, metadata !1014, metadata !715), !dbg !1074
  br label %13, !dbg !1075

; <label>:6:                                      ; preds = %1
  %7 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)), !dbg !1076
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, i64 0, metadata !1014, metadata !715), !dbg !1074
  %8 = icmp eq %struct._IO_FILE* %7, null, !dbg !1078
  br i1 %8, label %9, label %13, !dbg !1080

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #17, !dbg !1081
  %11 = load i32, i32* %10, align 4, !dbg !1081, !tbaa !836
  %12 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !1083
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i8* %12) #11, !dbg !1084
  br label %217, !dbg !1085

; <label>:13:                                     ; preds = %6, %4
  %14 = phi %struct._IO_FILE* [ %5, %4 ], [ %7, %6 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !1014, metadata !715), !dbg !1074
  tail call void @fadvise(%struct._IO_FILE* %14, i32 2) #11, !dbg !1086
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !1087, metadata !715) #11, !dbg !1092
  %15 = tail call %struct.linebuffer* @readlinebuffer(%struct.linebuffer* nonnull @line_buf, %struct._IO_FILE* %14) #11, !dbg !1094
  %16 = icmp eq %struct.linebuffer* %15, null, !dbg !1095
  br i1 %16, label %197, label %17, !dbg !1095

; <label>:17:                                     ; preds = %13
  br label %18, !dbg !1096

; <label>:18:                                     ; preds = %17, %194
  %19 = load i64, i64* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 1), align 8, !dbg !1096, !tbaa !1104
  %20 = add i64 %19, -1, !dbg !1106
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1101, metadata !715) #11, !dbg !1107
  %21 = icmp ult i64 %20, 2, !dbg !1108
  br i1 %21, label %96, label %22, !dbg !1110

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 2), align 8, !dbg !1111, !tbaa !1112
  %24 = load i8*, i8** @section_del, align 8, !dbg !1113, !tbaa !722
  %25 = tail call i32 @memcmp(i8* %23, i8* %24, i64 2) #14, !dbg !1114
  %26 = icmp eq i32 %25, 0, !dbg !1114
  br i1 %26, label %27, label %96, !dbg !1115

; <label>:27:                                     ; preds = %22
  %28 = load i64, i64* @header_del_len, align 8, !dbg !1116, !tbaa !815
  %29 = icmp eq i64 %20, %28, !dbg !1118
  br i1 %29, label %30, label %34, !dbg !1119

; <label>:30:                                     ; preds = %27
  %31 = load i8*, i8** @header_del, align 8, !dbg !1120, !tbaa !722
  %32 = tail call i32 @memcmp(i8* %23, i8* %31, i64 %20) #14, !dbg !1121
  %33 = icmp eq i32 %32, 0, !dbg !1121
  br i1 %33, label %48, label %34, !dbg !1122

; <label>:34:                                     ; preds = %30, %27
  %35 = load i64, i64* @body_del_len, align 8, !dbg !1123, !tbaa !815
  %36 = icmp eq i64 %20, %35, !dbg !1125
  br i1 %36, label %37, label %41, !dbg !1126

; <label>:37:                                     ; preds = %34
  %38 = load i8*, i8** @body_del, align 8, !dbg !1127, !tbaa !722
  %39 = tail call i32 @memcmp(i8* %23, i8* %38, i64 %20) #14, !dbg !1128
  %40 = icmp eq i32 %39, 0, !dbg !1128
  br i1 %40, label %64, label %41, !dbg !1129

; <label>:41:                                     ; preds = %37, %34
  %42 = load i64, i64* @footer_del_len, align 8, !dbg !1130, !tbaa !815
  %43 = icmp eq i64 %20, %42, !dbg !1132
  br i1 %43, label %44, label %96, !dbg !1133

; <label>:44:                                     ; preds = %41
  %45 = load i8*, i8** @footer_del, align 8, !dbg !1134, !tbaa !722
  %46 = tail call i32 @memcmp(i8* %23, i8* %45, i64 %20) #14, !dbg !1135
  %47 = icmp eq i32 %46, 0, !dbg !1135
  br i1 %47, label %80, label %96, !dbg !1136

; <label>:48:                                     ; preds = %30
  %49 = load i64, i64* bitcast (i8** @header_type to i64*), align 8, !dbg !1137, !tbaa !722
  store i64 %49, i64* bitcast (i8** @current_type to i64*), align 8, !dbg !1141, !tbaa !722
  store %struct.re_pattern_buffer* @header_regex, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1142, !tbaa !722
  %50 = load i1, i1* @reset_numbers, align 1
  br i1 %50, label %53, label %51, !dbg !1143

; <label>:51:                                     ; preds = %48
  %52 = load i64, i64* @starting_line_number, align 8, !dbg !1144, !tbaa !815
  store i64 %52, i64* @line_no, align 8, !dbg !1146, !tbaa !815
  br label %53, !dbg !1147

; <label>:53:                                     ; preds = %51, %48
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1148, metadata !715) #11, !dbg !1154
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1156, !tbaa !722
  %55 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %54, i64 0, i32 5, !dbg !1156
  %56 = load i8*, i8** %55, align 8, !dbg !1156, !tbaa !1157
  %57 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %54, i64 0, i32 6, !dbg !1156
  %58 = load i8*, i8** %57, align 8, !dbg !1156, !tbaa !1160
  %59 = icmp ult i8* %56, %58, !dbg !1156
  br i1 %59, label %62, label %60, !dbg !1156, !prof !1161

; <label>:60:                                     ; preds = %53
  %61 = tail call i32 @__overflow(%struct._IO_FILE* %54, i32 10) #11, !dbg !1156
  br label %194, !dbg !1156

; <label>:62:                                     ; preds = %53
  %63 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !1156
  store i8* %63, i8** %55, align 8, !dbg !1156, !tbaa !1157
  store i8 10, i8* %56, align 1, !dbg !1156, !tbaa !937
  br label %194, !dbg !1156

; <label>:64:                                     ; preds = %37
  %65 = load i64, i64* bitcast (i8** @body_type to i64*), align 8, !dbg !1162, !tbaa !722
  store i64 %65, i64* bitcast (i8** @current_type to i64*), align 8, !dbg !1165, !tbaa !722
  store %struct.re_pattern_buffer* @body_regex, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1166, !tbaa !722
  %66 = load i1, i1* @reset_numbers, align 1
  br i1 %66, label %69, label %67, !dbg !1167

; <label>:67:                                     ; preds = %64
  %68 = load i64, i64* @starting_line_number, align 8, !dbg !1168, !tbaa !815
  store i64 %68, i64* @line_no, align 8, !dbg !1170, !tbaa !815
  br label %69, !dbg !1171

; <label>:69:                                     ; preds = %67, %64
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1148, metadata !715) #11, !dbg !1172
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1174, !tbaa !722
  %71 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %70, i64 0, i32 5, !dbg !1174
  %72 = load i8*, i8** %71, align 8, !dbg !1174, !tbaa !1157
  %73 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %70, i64 0, i32 6, !dbg !1174
  %74 = load i8*, i8** %73, align 8, !dbg !1174, !tbaa !1160
  %75 = icmp ult i8* %72, %74, !dbg !1174
  br i1 %75, label %78, label %76, !dbg !1174, !prof !1161

; <label>:76:                                     ; preds = %69
  %77 = tail call i32 @__overflow(%struct._IO_FILE* %70, i32 10) #11, !dbg !1174
  br label %194, !dbg !1174

; <label>:78:                                     ; preds = %69
  %79 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !1174
  store i8* %79, i8** %71, align 8, !dbg !1174, !tbaa !1157
  store i8 10, i8* %72, align 1, !dbg !1174, !tbaa !937
  br label %194, !dbg !1174

; <label>:80:                                     ; preds = %44
  %81 = load i64, i64* bitcast (i8** @footer_type to i64*), align 8, !dbg !1175, !tbaa !722
  store i64 %81, i64* bitcast (i8** @current_type to i64*), align 8, !dbg !1178, !tbaa !722
  store %struct.re_pattern_buffer* @footer_regex, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1179, !tbaa !722
  %82 = load i1, i1* @reset_numbers, align 1
  br i1 %82, label %85, label %83, !dbg !1180

; <label>:83:                                     ; preds = %80
  %84 = load i64, i64* @starting_line_number, align 8, !dbg !1181, !tbaa !815
  store i64 %84, i64* @line_no, align 8, !dbg !1183, !tbaa !815
  br label %85, !dbg !1184

; <label>:85:                                     ; preds = %83, %80
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1148, metadata !715) #11, !dbg !1185
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1187, !tbaa !722
  %87 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %86, i64 0, i32 5, !dbg !1187
  %88 = load i8*, i8** %87, align 8, !dbg !1187, !tbaa !1157
  %89 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %86, i64 0, i32 6, !dbg !1187
  %90 = load i8*, i8** %89, align 8, !dbg !1187, !tbaa !1160
  %91 = icmp ult i8* %88, %90, !dbg !1187
  br i1 %91, label %94, label %92, !dbg !1187, !prof !1161

; <label>:92:                                     ; preds = %85
  %93 = tail call i32 @__overflow(%struct._IO_FILE* %86, i32 10) #11, !dbg !1187
  br label %194, !dbg !1187

; <label>:94:                                     ; preds = %85
  %95 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !1187
  store i8* %95, i8** %87, align 8, !dbg !1187, !tbaa !1157
  store i8 10, i8* %88, align 1, !dbg !1187, !tbaa !937
  br label %194, !dbg !1187

; <label>:96:                                     ; preds = %44, %41, %22, %18
  %97 = load i8*, i8** @current_type, align 8, !dbg !1188, !tbaa !722
  %98 = load i8, i8* %97, align 1, !dbg !1190, !tbaa !937
  %99 = sext i8 %98 to i32, !dbg !1190
  switch i32 %99, label %189 [
    i32 97, label %100
    i32 116, label %139
    i32 110, label %158
    i32 112, label %162
  ], !dbg !1191

; <label>:100:                                    ; preds = %96
  %101 = load i64, i64* @blank_join, align 8, !dbg !1192, !tbaa !815
  %102 = icmp sgt i64 %101, 1, !dbg !1195
  br i1 %102, label %103, label %126, !dbg !1196

; <label>:103:                                    ; preds = %100
  %104 = icmp ugt i64 %19, 1, !dbg !1197
  br i1 %104, label %109, label %105, !dbg !1200

; <label>:105:                                    ; preds = %103
  %106 = load i64, i64* @proc_text.blank_lines, align 8, !dbg !1201, !tbaa !815
  %107 = add nsw i64 %106, 1, !dbg !1201
  store i64 %107, i64* @proc_text.blank_lines, align 8, !dbg !1201, !tbaa !815
  %108 = icmp eq i64 %107, %101, !dbg !1202
  br i1 %108, label %109, label %122, !dbg !1203

; <label>:109:                                    ; preds = %105, %103
  %110 = load i8*, i8** @lineno_format, align 8, !dbg !1204, !tbaa !722
  %111 = load i32, i32* @lineno_width, align 4, !dbg !1204, !tbaa !836
  %112 = load i64, i64* @line_no, align 8, !dbg !1204, !tbaa !815
  %113 = load i8*, i8** @separator_str, align 8, !dbg !1204, !tbaa !722
  %114 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %110, i32 %111, i64 %112, i8* %113) #11, !dbg !1204
  %115 = load i64, i64* @page_incr, align 8, !dbg !1210, !tbaa !815
  %116 = icmp slt i64 %115, 0, !dbg !1211
  br i1 %116, label %117, label %119, !dbg !1213

; <label>:117:                                    ; preds = %109
  %118 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i64 0, i64 0), i32 5) #11, !dbg !1214
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %118) #11, !dbg !1214
  unreachable, !dbg !1214

; <label>:119:                                    ; preds = %109
  %120 = load i64, i64* @line_no, align 8, !dbg !1215, !tbaa !815
  %121 = add nsw i64 %120, %115, !dbg !1216
  store i64 %121, i64* @line_no, align 8, !dbg !1217, !tbaa !815
  store i64 0, i64* @proc_text.blank_lines, align 8, !dbg !1218, !tbaa !815
  br label %189, !dbg !1219

; <label>:122:                                    ; preds = %105
  %123 = load i8*, i8** @print_no_line_fmt, align 8, !dbg !1220, !tbaa !722
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1220, !tbaa !722
  %125 = tail call i32 @fputs_unlocked(i8* %123, %struct._IO_FILE* %124) #11, !dbg !1220
  br label %189

; <label>:126:                                    ; preds = %100
  %127 = load i8*, i8** @lineno_format, align 8, !dbg !1221, !tbaa !722
  %128 = load i32, i32* @lineno_width, align 4, !dbg !1221, !tbaa !836
  %129 = load i64, i64* @line_no, align 8, !dbg !1221, !tbaa !815
  %130 = load i8*, i8** @separator_str, align 8, !dbg !1221, !tbaa !722
  %131 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %127, i32 %128, i64 %129, i8* %130) #11, !dbg !1221
  %132 = load i64, i64* @page_incr, align 8, !dbg !1223, !tbaa !815
  %133 = icmp slt i64 %132, 0, !dbg !1224
  br i1 %133, label %134, label %136, !dbg !1225

; <label>:134:                                    ; preds = %126
  %135 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i64 0, i64 0), i32 5) #11, !dbg !1226
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %135) #11, !dbg !1226
  unreachable, !dbg !1226

; <label>:136:                                    ; preds = %126
  %137 = load i64, i64* @line_no, align 8, !dbg !1227, !tbaa !815
  %138 = add nsw i64 %137, %132, !dbg !1228
  store i64 %138, i64* @line_no, align 8, !dbg !1229, !tbaa !815
  br label %189

; <label>:139:                                    ; preds = %96
  %140 = icmp ugt i64 %19, 1, !dbg !1230
  br i1 %140, label %141, label %154, !dbg !1232

; <label>:141:                                    ; preds = %139
  %142 = load i8*, i8** @lineno_format, align 8, !dbg !1233, !tbaa !722
  %143 = load i32, i32* @lineno_width, align 4, !dbg !1233, !tbaa !836
  %144 = load i64, i64* @line_no, align 8, !dbg !1233, !tbaa !815
  %145 = load i8*, i8** @separator_str, align 8, !dbg !1233, !tbaa !722
  %146 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %142, i32 %143, i64 %144, i8* %145) #11, !dbg !1233
  %147 = load i64, i64* @page_incr, align 8, !dbg !1235, !tbaa !815
  %148 = icmp slt i64 %147, 0, !dbg !1236
  br i1 %148, label %149, label %151, !dbg !1237

; <label>:149:                                    ; preds = %141
  %150 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i64 0, i64 0), i32 5) #11, !dbg !1238
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %150) #11, !dbg !1238
  unreachable, !dbg !1238

; <label>:151:                                    ; preds = %141
  %152 = load i64, i64* @line_no, align 8, !dbg !1239, !tbaa !815
  %153 = add nsw i64 %152, %147, !dbg !1240
  store i64 %153, i64* @line_no, align 8, !dbg !1241, !tbaa !815
  br label %189, !dbg !1242

; <label>:154:                                    ; preds = %139
  %155 = load i8*, i8** @print_no_line_fmt, align 8, !dbg !1243, !tbaa !722
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1243, !tbaa !722
  %157 = tail call i32 @fputs_unlocked(i8* %155, %struct._IO_FILE* %156) #11, !dbg !1243
  br label %189

; <label>:158:                                    ; preds = %96
  %159 = load i8*, i8** @print_no_line_fmt, align 8, !dbg !1244, !tbaa !722
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1244, !tbaa !722
  %161 = tail call i32 @fputs_unlocked(i8* %159, %struct._IO_FILE* %160) #11, !dbg !1244
  br label %189, !dbg !1245

; <label>:162:                                    ; preds = %96
  %163 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1246, !tbaa !722
  %164 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 2), align 8, !dbg !1247, !tbaa !1112
  %165 = add i64 %19, 4294967295, !dbg !1248
  %166 = trunc i64 %165 to i32, !dbg !1249
  %167 = tail call i32 @re_search(%struct.re_pattern_buffer* %163, i8* %164, i32 %166, i32 0, i32 %166, %struct.re_registers* null) #11, !dbg !1250
  switch i32 %167, label %176 [
    i32 -2, label %168
    i32 -1, label %172
  ], !dbg !1251

; <label>:168:                                    ; preds = %162
  %169 = tail call i32* @__errno_location() #17, !dbg !1252
  %170 = load i32, i32* %169, align 4, !dbg !1252, !tbaa !836
  %171 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.65, i64 0, i64 0), i32 5) #11, !dbg !1252
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %170, i8* %171) #11, !dbg !1252
  unreachable, !dbg !1252

; <label>:172:                                    ; preds = %162
  %173 = load i8*, i8** @print_no_line_fmt, align 8, !dbg !1254, !tbaa !722
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1254, !tbaa !722
  %175 = tail call i32 @fputs_unlocked(i8* %173, %struct._IO_FILE* %174) #11, !dbg !1254
  br label %189, !dbg !1255

; <label>:176:                                    ; preds = %162
  %177 = load i8*, i8** @lineno_format, align 8, !dbg !1256, !tbaa !722
  %178 = load i32, i32* @lineno_width, align 4, !dbg !1256, !tbaa !836
  %179 = load i64, i64* @line_no, align 8, !dbg !1256, !tbaa !815
  %180 = load i8*, i8** @separator_str, align 8, !dbg !1256, !tbaa !722
  %181 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %177, i32 %178, i64 %179, i8* %180) #11, !dbg !1256
  %182 = load i64, i64* @page_incr, align 8, !dbg !1258, !tbaa !815
  %183 = icmp slt i64 %182, 0, !dbg !1259
  br i1 %183, label %184, label %186, !dbg !1260

; <label>:184:                                    ; preds = %176
  %185 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i64 0, i64 0), i32 5) #11, !dbg !1261
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %185) #11, !dbg !1261
  unreachable, !dbg !1261

; <label>:186:                                    ; preds = %176
  %187 = load i64, i64* @line_no, align 8, !dbg !1262, !tbaa !815
  %188 = add nsw i64 %187, %182, !dbg !1263
  store i64 %188, i64* @line_no, align 8, !dbg !1264, !tbaa !815
  br label %189, !dbg !1265

; <label>:189:                                    ; preds = %186, %172, %158, %154, %151, %136, %122, %119, %96
  %190 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 2), align 8, !dbg !1266, !tbaa !1112
  %191 = load i64, i64* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 1), align 8, !dbg !1266, !tbaa !1104
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1266, !tbaa !722
  %193 = tail call i64 @fwrite_unlocked(i8* %190, i64 1, i64 %191, %struct._IO_FILE* %192) #11, !dbg !1266
  br label %194, !dbg !1267

; <label>:194:                                    ; preds = %189, %94, %92, %78, %76, %62, %60
  %195 = tail call %struct.linebuffer* @readlinebuffer(%struct.linebuffer* nonnull @line_buf, %struct._IO_FILE* %14) #11, !dbg !1094
  %196 = icmp eq %struct.linebuffer* %195, null, !dbg !1095
  br i1 %196, label %197, label %18, !dbg !1095, !llvm.loop !1268

; <label>:197:                                    ; preds = %194, %13
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !1271, metadata !715), !dbg !1276
  %198 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 0, !dbg !1279
  %199 = load i32, i32* %198, align 8, !dbg !1279, !tbaa !1280
  %200 = and i32 %199, 32, !dbg !1279
  %201 = icmp eq i32 %200, 0, !dbg !1281
  br i1 %201, label %206, label %202, !dbg !1282

; <label>:202:                                    ; preds = %197
  %203 = tail call i32* @__errno_location() #17, !dbg !1283
  %204 = load i32, i32* %203, align 4, !dbg !1283, !tbaa !836
  %205 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !1285
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i8* %205) #11, !dbg !1286
  br label %217, !dbg !1287

; <label>:206:                                    ; preds = %197
  %207 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #14, !dbg !1288
  %208 = icmp eq i32 %207, 0, !dbg !1288
  br i1 %208, label %209, label %210, !dbg !1290

; <label>:209:                                    ; preds = %206
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %14) #11, !dbg !1291
  br label %217, !dbg !1291

; <label>:210:                                    ; preds = %206
  %211 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %14) #11, !dbg !1292
  %212 = icmp eq i32 %211, -1, !dbg !1294
  br i1 %212, label %213, label %217, !dbg !1295

; <label>:213:                                    ; preds = %210
  %214 = tail call i32* @__errno_location() #17, !dbg !1296
  %215 = load i32, i32* %214, align 4, !dbg !1296, !tbaa !836
  %216 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !1298
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i8* %216) #11, !dbg !1299
  br label %217, !dbg !1300

; <label>:217:                                    ; preds = %209, %210, %213, %202, %9
  %218 = phi i1 [ false, %202 ], [ false, %213 ], [ false, %9 ], [ true, %210 ], [ true, %209 ]
  ret i1 %218, !dbg !1301
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

declare i32 @re_search(%struct.re_pattern_buffer*, i8*, i32, i32, i32, %struct.re_registers*) local_unnamed_addr #3

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

declare i8* @re_compile_pattern(i8*, i64, %struct.re_pattern_buffer*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1302 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1304, metadata !715), !dbg !1305
  store i8* %0, i8** @file_name, align 8, !dbg !1306, !tbaa !722
  ret void, !dbg !1307
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1308 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1312, metadata !715), !dbg !1313
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1314, !tbaa !1315
  ret void, !dbg !1317
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1318 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1323, !tbaa !722
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1324
  %3 = icmp eq i32 %2, 0, !dbg !1325
  br i1 %3, label %21, label %4, !dbg !1326

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1327, !tbaa !1315, !range !1328
  %6 = icmp eq i8 %5, 0, !dbg !1327
  %7 = tail call i32* @__errno_location() #17, !dbg !1329
  br i1 %6, label %11, label %8, !dbg !1331

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1332, !tbaa !836
  %10 = icmp eq i32 %9, 32, !dbg !1333
  br i1 %10, label %21, label %11, !dbg !1334

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i32 5) #11, !dbg !1335
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1320, metadata !715), !dbg !1336
  %13 = load i8*, i8** @file_name, align 8, !dbg !1337, !tbaa !722
  %14 = icmp eq i8* %13, null, !dbg !1337
  %15 = load i32, i32* %7, align 4, !tbaa !836
  br i1 %14, label %18, label %16, !dbg !1338

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1339
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.36, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1340
  br label %19, !dbg !1340

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.37, i64 0, i64 0), i8* %12) #11, !dbg !1341
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1342, !tbaa !836
  tail call void @_exit(i32 %20) #15, !dbg !1343
  unreachable, !dbg !1343

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1344, !tbaa !722
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1346
  %24 = icmp eq i32 %23, 0, !dbg !1347
  br i1 %24, label %27, label %25, !dbg !1348

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1349, !tbaa !836
  tail call void @_exit(i32 %26) #15, !dbg !1350
  unreachable, !dbg !1350

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1351
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1352 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1360, metadata !715), !dbg !1366
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1361, metadata !715), !dbg !1367
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1362, metadata !715), !dbg !1368
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1363, metadata !715), !dbg !1369
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11, !dbg !1370
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1364, metadata !715), !dbg !1370
  ret void, !dbg !1371
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1372 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1416, metadata !715), !dbg !1418
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1417, metadata !715), !dbg !1419
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1420
  br i1 %3, label %7, label %4, !dbg !1422

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !1423
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1360, metadata !715) #11, !dbg !1424
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1361, metadata !715) #11, !dbg !1426
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1362, metadata !715) #11, !dbg !1427
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1363, metadata !715) #11, !dbg !1428
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #11, !dbg !1429
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1364, metadata !715) #11, !dbg !1429
  br label %7, !dbg !1430

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1431
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @initbuffer(%struct.linebuffer* nocapture) local_unnamed_addr #6 !dbg !1432 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1443, metadata !715), !dbg !1444
  %2 = bitcast %struct.linebuffer* %0 to i8*, !dbg !1445
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 24, i32 8, i1 false), !dbg !1445
  ret void, !dbg !1446
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.linebuffer* @readlinebuffer(%struct.linebuffer*, %struct._IO_FILE*) local_unnamed_addr #6 !dbg !1447 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1491, metadata !715), !dbg !1493
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1492, metadata !715), !dbg !1494
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1495, metadata !715) #11, !dbg !1510
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1500, metadata !715) #11, !dbg !1512
  tail call void @llvm.dbg.value(metadata i8 10, i64 0, metadata !1501, metadata !715) #11, !dbg !1513
  %3 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1514
  %4 = load i8*, i8** %3, align 8, !dbg !1514, !tbaa !1112
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1503, metadata !715) #11, !dbg !1515
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1504, metadata !715) #11, !dbg !1516
  %5 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !1517
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1518, metadata !715) #11, !dbg !1523
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !1526
  %7 = load i32, i32* %6, align 8, !dbg !1526, !tbaa !1280
  %8 = and i32 %7, 16, !dbg !1526
  %9 = icmp eq i32 %8, 0, !dbg !1527
  br i1 %9, label %10, label %62, !dbg !1528

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %5, align 8, !dbg !1517, !tbaa !1529
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !1530
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  br label %15, !dbg !1531, !llvm.loop !1532

; <label>:15:                                     ; preds = %48, %10
  %16 = phi i8* [ %4, %10 ], [ %49, %48 ]
  %17 = phi i8* [ %4, %10 ], [ %53, %48 ]
  %18 = phi i8* [ %12, %10 ], [ %51, %48 ]
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1505, metadata !715) #11, !dbg !1535
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1504, metadata !715) #11, !dbg !1516
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !1503, metadata !715) #11, !dbg !1515
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1536, metadata !715) #11, !dbg !1539
  %19 = load i8*, i8** %13, align 8, !dbg !1541, !tbaa !1542
  %20 = load i8*, i8** %14, align 8, !dbg !1541, !tbaa !1543
  %21 = icmp ult i8* %19, %20, !dbg !1541
  br i1 %21, label %22, label %26, !dbg !1541, !prof !1161

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1541
  store i8* %23, i8** %13, align 8, !dbg !1541, !tbaa !1542
  %24 = load i8, i8* %19, align 1, !dbg !1541, !tbaa !937
  %25 = zext i8 %24 to i32, !dbg !1541
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !1502, metadata !715) #11, !dbg !1544
  br label %39, !dbg !1545

; <label>:26:                                     ; preds = %15
  %27 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #11, !dbg !1541
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !1502, metadata !715) #11, !dbg !1544
  %28 = icmp eq i32 %27, -1, !dbg !1546
  br i1 %28, label %29, label %39, !dbg !1545

; <label>:29:                                     ; preds = %26
  %30 = icmp eq i8* %17, %16, !dbg !1548
  br i1 %30, label %62, label %31, !dbg !1551

; <label>:31:                                     ; preds = %29
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1552, metadata !715) #11, !dbg !1555
  %32 = load i32, i32* %6, align 8, !dbg !1557, !tbaa !1280
  %33 = and i32 %32, 32, !dbg !1557
  %34 = icmp eq i32 %33, 0, !dbg !1558
  br i1 %34, label %35, label %62, !dbg !1559

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !1560
  %37 = load i8, i8* %36, align 1, !dbg !1560, !tbaa !937
  %38 = icmp eq i8 %37, 10, !dbg !1562
  br i1 %38, label %55, label %39, !dbg !1563

; <label>:39:                                     ; preds = %35, %26, %22
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ 10, %35 ]
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !1502, metadata !715) #11, !dbg !1544
  %41 = icmp eq i8* %17, %18, !dbg !1564
  br i1 %41, label %42, label %48, !dbg !1565

; <label>:42:                                     ; preds = %39
  %43 = load i64, i64* %5, align 8, !dbg !1566, !tbaa !1529
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1506, metadata !715) #11, !dbg !1567
  %44 = tail call i8* @x2realloc(i8* %16, i64* %5) #11, !dbg !1568
  tail call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !1503, metadata !715) #11, !dbg !1515
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !1569
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !1504, metadata !715) #11, !dbg !1516
  store i8* %44, i8** %3, align 8, !dbg !1570, !tbaa !1112
  %46 = load i64, i64* %5, align 8, !dbg !1571, !tbaa !1529
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !1572
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1505, metadata !715) #11, !dbg !1535
  br label %48, !dbg !1573

; <label>:48:                                     ; preds = %42, %39
  %49 = phi i8* [ %44, %42 ], [ %16, %39 ]
  %50 = phi i8* [ %45, %42 ], [ %17, %39 ]
  %51 = phi i8* [ %47, %42 ], [ %18, %39 ]
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1505, metadata !715) #11, !dbg !1535
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1504, metadata !715) #11, !dbg !1516
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1503, metadata !715) #11, !dbg !1515
  %52 = trunc i32 %40 to i8, !dbg !1574
  %53 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !1575
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1504, metadata !715) #11, !dbg !1516
  store i8 %52, i8* %50, align 1, !dbg !1576, !tbaa !937
  %54 = icmp eq i32 %40, 10, !dbg !1577
  br i1 %54, label %55, label %15, !dbg !1578, !llvm.loop !1532

; <label>:55:                                     ; preds = %48, %35
  %56 = phi i8* [ %16, %35 ], [ %49, %48 ]
  %57 = phi i8* [ %17, %35 ], [ %53, %48 ]
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !1504, metadata !715) #11, !dbg !1516
  tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !1503, metadata !715) #11, !dbg !1515
  %58 = ptrtoint i8* %57 to i64, !dbg !1579
  %59 = ptrtoint i8* %56 to i64, !dbg !1579
  %60 = sub i64 %58, %59, !dbg !1579
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1580
  store i64 %60, i64* %61, align 8, !dbg !1581, !tbaa !1104
  br label %62, !dbg !1582

; <label>:62:                                     ; preds = %29, %31, %2, %55
  %63 = phi %struct.linebuffer* [ %0, %55 ], [ null, %2 ], [ null, %31 ], [ null, %29 ]
  ret %struct.linebuffer* %63, !dbg !1583
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer*, %struct._IO_FILE*, i8 signext) local_unnamed_addr #6 !dbg !1496 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1495, metadata !715), !dbg !1584
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1500, metadata !715), !dbg !1585
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1501, metadata !715), !dbg !1586
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1587
  %5 = load i8*, i8** %4, align 8, !dbg !1587, !tbaa !1112
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1503, metadata !715), !dbg !1588
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1504, metadata !715), !dbg !1589
  %6 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !1590
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !1505, metadata !715), !dbg !1591
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1518, metadata !715), !dbg !1592
  %7 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !1594
  %8 = load i32, i32* %7, align 8, !dbg !1594, !tbaa !1280
  %9 = and i32 %8, 16, !dbg !1594
  %10 = icmp eq i32 %9, 0, !dbg !1595
  br i1 %10, label %11, label %64, !dbg !1596

; <label>:11:                                     ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !1590, !tbaa !1529
  %13 = getelementptr inbounds i8, i8* %5, i64 %12, !dbg !1597
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  %16 = sext i8 %2 to i32
  br label %17, !dbg !1533, !llvm.loop !1532

; <label>:17:                                     ; preds = %50, %11
  %18 = phi i8* [ %5, %11 ], [ %51, %50 ]
  %19 = phi i8* [ %5, %11 ], [ %55, %50 ]
  %20 = phi i8* [ %13, %11 ], [ %53, %50 ]
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1505, metadata !715), !dbg !1591
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1504, metadata !715), !dbg !1589
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1503, metadata !715), !dbg !1588
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1536, metadata !715) #11, !dbg !1598
  %21 = load i8*, i8** %14, align 8, !dbg !1600, !tbaa !1542
  %22 = load i8*, i8** %15, align 8, !dbg !1600, !tbaa !1543
  %23 = icmp ult i8* %21, %22, !dbg !1600
  br i1 %23, label %24, label %28, !dbg !1600, !prof !1161

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !1600
  store i8* %25, i8** %14, align 8, !dbg !1600, !tbaa !1542
  %26 = load i8, i8* %21, align 1, !dbg !1600, !tbaa !937
  %27 = zext i8 %26 to i32, !dbg !1600
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1502, metadata !715), !dbg !1601
  br label %41, !dbg !1602

; <label>:28:                                     ; preds = %17
  %29 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #11, !dbg !1600
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1502, metadata !715), !dbg !1601
  %30 = icmp eq i32 %29, -1, !dbg !1603
  br i1 %30, label %31, label %41, !dbg !1602

; <label>:31:                                     ; preds = %28
  %32 = icmp eq i8* %19, %18, !dbg !1604
  br i1 %32, label %64, label %33, !dbg !1605

; <label>:33:                                     ; preds = %31
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1552, metadata !715), !dbg !1606
  %34 = load i32, i32* %7, align 8, !dbg !1608, !tbaa !1280
  %35 = and i32 %34, 32, !dbg !1608
  %36 = icmp eq i32 %35, 0, !dbg !1609
  br i1 %36, label %37, label %64, !dbg !1610

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !1611
  %39 = load i8, i8* %38, align 1, !dbg !1611, !tbaa !937
  %40 = icmp eq i8 %39, %2, !dbg !1612
  br i1 %40, label %57, label %41, !dbg !1613

; <label>:41:                                     ; preds = %37, %24, %28
  %42 = phi i32 [ %29, %28 ], [ %27, %24 ], [ %16, %37 ]
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !1502, metadata !715), !dbg !1601
  %43 = icmp eq i8* %19, %20, !dbg !1614
  br i1 %43, label %44, label %50, !dbg !1615

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %6, align 8, !dbg !1616, !tbaa !1529
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !1506, metadata !715), !dbg !1617
  %46 = tail call i8* @x2realloc(i8* %18, i64* %6) #11, !dbg !1618
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !1503, metadata !715), !dbg !1588
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !1619
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1504, metadata !715), !dbg !1589
  store i8* %46, i8** %4, align 8, !dbg !1620, !tbaa !1112
  %48 = load i64, i64* %6, align 8, !dbg !1621, !tbaa !1529
  %49 = getelementptr inbounds i8, i8* %46, i64 %48, !dbg !1622
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1505, metadata !715), !dbg !1591
  br label %50, !dbg !1623

; <label>:50:                                     ; preds = %44, %41
  %51 = phi i8* [ %46, %44 ], [ %18, %41 ]
  %52 = phi i8* [ %47, %44 ], [ %19, %41 ]
  %53 = phi i8* [ %49, %44 ], [ %20, %41 ]
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1505, metadata !715), !dbg !1591
  tail call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1504, metadata !715), !dbg !1589
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1503, metadata !715), !dbg !1588
  %54 = trunc i32 %42 to i8, !dbg !1624
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !1625
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !1504, metadata !715), !dbg !1589
  store i8 %54, i8* %52, align 1, !dbg !1626, !tbaa !937
  %56 = icmp eq i32 %42, %16, !dbg !1627
  br i1 %56, label %57, label %17, !dbg !1628, !llvm.loop !1532

; <label>:57:                                     ; preds = %50, %37
  %58 = phi i8* [ %18, %37 ], [ %51, %50 ]
  %59 = phi i8* [ %19, %37 ], [ %55, %50 ]
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !1504, metadata !715), !dbg !1589
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1503, metadata !715), !dbg !1588
  %60 = ptrtoint i8* %59 to i64, !dbg !1629
  %61 = ptrtoint i8* %58 to i64, !dbg !1629
  %62 = sub i64 %60, %61, !dbg !1629
  %63 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1630
  store i64 %62, i64* %63, align 8, !dbg !1631, !tbaa !1104
  br label %64, !dbg !1632

; <label>:64:                                     ; preds = %31, %33, %3, %57
  %65 = phi %struct.linebuffer* [ %0, %57 ], [ null, %3 ], [ null, %33 ], [ null, %31 ]
  ret %struct.linebuffer* %65, !dbg !1633
}

; Function Attrs: nounwind sspstrong uwtable
define void @freebuffer(%struct.linebuffer* nocapture readonly) local_unnamed_addr #6 !dbg !1634 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1636, metadata !715), !dbg !1637
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1638
  %3 = load i8*, i8** %2, align 8, !dbg !1638, !tbaa !1112
  tail call void @free(i8* %3) #11, !dbg !1639
  ret void, !dbg !1640
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1641 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1643, metadata !715), !dbg !1646
  %2 = icmp eq i8* %0, null, !dbg !1647
  br i1 %2, label %3, label %6, !dbg !1649

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1650, !tbaa !722
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.67, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1652
  tail call void @abort() #15, !dbg !1653
  unreachable, !dbg !1653

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1654
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1644, metadata !715), !dbg !1655
  %8 = icmp eq i8* %7, null, !dbg !1656
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1657
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1658
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1645, metadata !715), !dbg !1659
  %11 = ptrtoint i8* %10 to i64, !dbg !1660
  %12 = ptrtoint i8* %0 to i64, !dbg !1660
  %13 = sub i64 %11, %12, !dbg !1660
  %14 = icmp sgt i64 %13, 6, !dbg !1662
  br i1 %14, label %15, label %24, !dbg !1663

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1664
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.68, i64 0, i64 0), i64 7) #14, !dbg !1665
  %18 = icmp eq i32 %17, 0, !dbg !1666
  br i1 %18, label %19, label %24, !dbg !1667

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1643, metadata !715), !dbg !1646
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.69, i64 0, i64 0), i64 3) #14, !dbg !1668
  %21 = icmp eq i32 %20, 0, !dbg !1671
  br i1 %21, label %22, label %24, !dbg !1672

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1673
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1643, metadata !715), !dbg !1646
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1675, !tbaa !722
  br label %24, !dbg !1676

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1643, metadata !715), !dbg !1646
  store i8* %25, i8** @program_name, align 8, !dbg !1677, !tbaa !722
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1678, !tbaa !722
  ret void, !dbg !1679
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1680 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1685, metadata !715), !dbg !1688
  %2 = tail call i32* @__errno_location() #17, !dbg !1689
  %3 = load i32, i32* %2, align 4, !dbg !1689, !tbaa !836
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1686, metadata !715), !dbg !1690
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1691
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1691
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1691
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1692
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1692
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1687, metadata !715), !dbg !1693
  store i32 %3, i32* %2, align 4, !dbg !1694, !tbaa !836
  ret %struct.quoting_options* %8, !dbg !1695
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1696 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1702, metadata !715), !dbg !1703
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1704
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1704
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1705
  %5 = load i32, i32* %4, align 8, !dbg !1705, !tbaa !1706
  ret i32 %5, !dbg !1708
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1709 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1713, metadata !715), !dbg !1715
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1714, metadata !715), !dbg !1716
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1717
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1717
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1718
  store i32 %1, i32* %5, align 8, !dbg !1719, !tbaa !1706
  ret void, !dbg !1720
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1721 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1725, metadata !715), !dbg !1733
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1726, metadata !715), !dbg !1734
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1727, metadata !715), !dbg !1735
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1728, metadata !715), !dbg !1736
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1737
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1737
  %6 = lshr i8 %1, 5, !dbg !1738
  %7 = zext i8 %6 to i64, !dbg !1738
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1739
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1729, metadata !715), !dbg !1740
  %9 = and i8 %1, 31, !dbg !1741
  %10 = zext i8 %9 to i32, !dbg !1742
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1731, metadata !715), !dbg !1743
  %11 = load i32, i32* %8, align 4, !dbg !1744, !tbaa !836
  %12 = lshr i32 %11, %10, !dbg !1745
  %13 = and i32 %12, 1, !dbg !1746
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1732, metadata !715), !dbg !1747
  %14 = and i32 %2, 1, !dbg !1748
  %15 = xor i32 %13, %14, !dbg !1749
  %16 = shl i32 %15, %10, !dbg !1750
  %17 = xor i32 %16, %11, !dbg !1751
  store i32 %17, i32* %8, align 4, !dbg !1751, !tbaa !836
  ret i32 %13, !dbg !1752
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1753 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1757, metadata !715), !dbg !1760
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1758, metadata !715), !dbg !1761
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1762
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1757, metadata !715), !dbg !1760
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1757, metadata !715), !dbg !1760
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1765
  %6 = load i32, i32* %5, align 4, !dbg !1765, !tbaa !1766
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1759, metadata !715), !dbg !1767
  store i32 %1, i32* %5, align 4, !dbg !1768, !tbaa !1766
  ret i32 %6, !dbg !1769
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1770 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1774, metadata !715), !dbg !1777
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1775, metadata !715), !dbg !1778
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1776, metadata !715), !dbg !1779
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1780
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1774, metadata !715), !dbg !1777
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1782
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1774, metadata !715), !dbg !1777
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1783
  store i32 10, i32* %6, align 8, !dbg !1784, !tbaa !1706
  %7 = icmp ne i8* %1, null, !dbg !1785
  %8 = icmp ne i8* %2, null, !dbg !1787
  %9 = and i1 %7, %8, !dbg !1788
  br i1 %9, label %11, label %10, !dbg !1788

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1789
  unreachable, !dbg !1789

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1790
  store i8* %1, i8** %12, align 8, !dbg !1791, !tbaa !1792
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1793
  store i8* %2, i8** %13, align 8, !dbg !1794, !tbaa !1795
  ret void, !dbg !1796
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1797 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1801, metadata !715), !dbg !1809
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1802, metadata !715), !dbg !1810
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1803, metadata !715), !dbg !1811
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1804, metadata !715), !dbg !1812
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1805, metadata !715), !dbg !1813
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1814
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1814
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1806, metadata !715), !dbg !1815
  %8 = tail call i32* @__errno_location() #17, !dbg !1816
  %9 = load i32, i32* %8, align 4, !dbg !1816, !tbaa !836
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1807, metadata !715), !dbg !1817
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1818
  %11 = load i32, i32* %10, align 8, !dbg !1818, !tbaa !1706
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1819
  %13 = load i32, i32* %12, align 4, !dbg !1819, !tbaa !1766
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1820
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1821
  %16 = load i8*, i8** %15, align 8, !dbg !1821, !tbaa !1792
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1822
  %18 = load i8*, i8** %17, align 8, !dbg !1822, !tbaa !1795
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1808, metadata !715), !dbg !1824
  store i32 %9, i32* %8, align 4, !dbg !1825, !tbaa !836
  ret i64 %19, !dbg !1826
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1827 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1833, metadata !715), !dbg !1897
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1834, metadata !715), !dbg !1898
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1835, metadata !715), !dbg !1899
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1836, metadata !715), !dbg !1900
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1837, metadata !715), !dbg !1901
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1838, metadata !715), !dbg !1902
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1839, metadata !715), !dbg !1903
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1840, metadata !715), !dbg !1904
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1841, metadata !715), !dbg !1905
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1843, metadata !715), !dbg !1906
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1844, metadata !715), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1845, metadata !715), !dbg !1908
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1846, metadata !715), !dbg !1909
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1847, metadata !715), !dbg !1910
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1911
  %14 = icmp eq i64 %13, 1, !dbg !1912
  %15 = lshr i32 %5, 1, !dbg !1913
  %16 = trunc i32 %15 to i8, !dbg !1913
  %17 = and i8 %16, 1, !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1849, metadata !715), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1850, metadata !715), !dbg !1914
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1851, metadata !715), !dbg !1915
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1852, metadata !715), !dbg !1916
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1917

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1834, metadata !715), !dbg !1898
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1852, metadata !715), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1851, metadata !715), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1850, metadata !715), !dbg !1914
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1849, metadata !715), !dbg !1913
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1836, metadata !715), !dbg !1900
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1847, metadata !715), !dbg !1910
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1846, metadata !715), !dbg !1909
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1845, metadata !715), !dbg !1908
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1844, metadata !715), !dbg !1907
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1841, metadata !715), !dbg !1905
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1840, metadata !715), !dbg !1904
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1837, metadata !715), !dbg !1901
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
  ], !dbg !1918

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1837, metadata !715), !dbg !1901
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1849, metadata !715), !dbg !1913
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1849, metadata !715), !dbg !1913
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1837, metadata !715), !dbg !1901
  br label %94, !dbg !1919

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1849, metadata !715), !dbg !1913
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1837, metadata !715), !dbg !1901
  %43 = and i8 %36, 1, !dbg !1921
  %44 = icmp eq i8 %43, 0, !dbg !1921
  br i1 %44, label %45, label %94, !dbg !1919

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1923
  br i1 %46, label %94, label %47, !dbg !1926

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1923, !tbaa !937
  br label %94, !dbg !1923

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.80, i64 0, i64 0), i32 %28), !dbg !1927
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1840, metadata !715), !dbg !1904
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), i32 %28), !dbg !1931
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1841, metadata !715), !dbg !1905
  br label %51, !dbg !1932

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1841, metadata !715), !dbg !1905
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1840, metadata !715), !dbg !1904
  %54 = and i8 %36, 1, !dbg !1933
  %55 = icmp eq i8 %54, 0, !dbg !1933
  br i1 %55, label %56, label %72, !dbg !1935

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1845, metadata !715), !dbg !1908
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1845, metadata !715), !dbg !1908
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1843, metadata !715), !dbg !1906
  %57 = load i8, i8* %52, align 1, !dbg !1936, !tbaa !937
  %58 = icmp eq i8 %57, 0, !dbg !1939
  br i1 %58, label %72, label %59, !dbg !1939

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1940

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1845, metadata !715), !dbg !1908
  %64 = icmp ult i64 %63, %40, !dbg !1940
  br i1 %64, label %65, label %67, !dbg !1943

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1940
  store i8 %61, i8* %66, align 1, !dbg !1940, !tbaa !937
  br label %67, !dbg !1940

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1843, metadata !715), !dbg !1906
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1944
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1845, metadata !715), !dbg !1908
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1845, metadata !715), !dbg !1908
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1843, metadata !715), !dbg !1906
  %70 = load i8, i8* %69, align 1, !dbg !1936, !tbaa !937
  %71 = icmp eq i8 %70, 0, !dbg !1939
  br i1 %71, label %72, label %60, !dbg !1939, !llvm.loop !1945

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1847, metadata !715), !dbg !1910
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1845, metadata !715), !dbg !1908
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1846, metadata !715), !dbg !1909
  br label %94, !dbg !1948

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1847, metadata !715), !dbg !1910
  br label %76, !dbg !1949

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1847, metadata !715), !dbg !1910
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1849, metadata !715), !dbg !1913
  br label %78, !dbg !1950

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1849, metadata !715), !dbg !1913
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1847, metadata !715), !dbg !1910
  %81 = and i8 %80, 1, !dbg !1951
  %82 = icmp eq i8 %81, 0, !dbg !1951
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1847, metadata !715), !dbg !1910
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1953
  br label %84, !dbg !1953

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1849, metadata !715), !dbg !1913
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1847, metadata !715), !dbg !1910
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1837, metadata !715), !dbg !1901
  %87 = and i8 %86, 1, !dbg !1954
  %88 = icmp eq i8 %87, 0, !dbg !1954
  br i1 %88, label %89, label %94, !dbg !1956

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1957
  br i1 %90, label %94, label %91, !dbg !1960

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1957, !tbaa !937
  br label %94, !dbg !1957

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1849, metadata !715), !dbg !1913
  br label %94, !dbg !1961

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1962
  unreachable, !dbg !1962

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1849, metadata !715), !dbg !1913
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1847, metadata !715), !dbg !1910
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1846, metadata !715), !dbg !1909
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1845, metadata !715), !dbg !1908
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1841, metadata !715), !dbg !1905
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1840, metadata !715), !dbg !1904
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1837, metadata !715), !dbg !1901
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1842, metadata !715), !dbg !1963
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
  br label %122, !dbg !1964

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1834, metadata !715), !dbg !1898
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1852, metadata !715), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1851, metadata !715), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1850, metadata !715), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1836, metadata !715), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1844, metadata !715), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1842, metadata !715), !dbg !1963
  %131 = icmp eq i64 %126, -1, !dbg !1965
  br i1 %131, label %134, label %132, !dbg !1966

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1967
  br i1 %133, label %590, label %138, !dbg !1968

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1969
  %136 = load i8, i8* %135, align 1, !dbg !1969, !tbaa !937
  %137 = icmp eq i8 %136, 0, !dbg !1970
  br i1 %137, label %590, label %138, !dbg !1968

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1858, metadata !715), !dbg !1971
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1859, metadata !715), !dbg !1972
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1860, metadata !715), !dbg !1973
  br i1 %108, label %139, label %154, !dbg !1974

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1976
  %141 = and i1 %109, %131, !dbg !1977
  br i1 %141, label %142, label %144, !dbg !1977

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1836, metadata !715), !dbg !1900
  br label %144, !dbg !1979

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1836, metadata !715), !dbg !1900
  %146 = icmp ugt i64 %140, %145, !dbg !1980
  br i1 %146, label %154, label %147, !dbg !1981

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1982
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1983
  %150 = icmp ne i32 %149, 0, !dbg !1984
  %151 = or i1 %150, %111, !dbg !1985
  %152 = xor i1 %150, true, !dbg !1985
  %153 = zext i1 %152 to i8, !dbg !1985
  br i1 %151, label %154, label %635, !dbg !1985

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1858, metadata !715), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1836, metadata !715), !dbg !1900
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1986
  %158 = load i8, i8* %157, align 1, !dbg !1986, !tbaa !937
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1853, metadata !715), !dbg !1987
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
  ], !dbg !1988

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1989

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1990

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1859, metadata !715), !dbg !1972
  %162 = and i8 %127, 1, !dbg !1994
  %163 = icmp eq i8 %162, 0, !dbg !1994
  %164 = and i1 %113, %163, !dbg !1994
  br i1 %164, label %165, label %181, !dbg !1994

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1996
  br i1 %166, label %167, label %169, !dbg !2000

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1996
  store i8 39, i8* %168, align 1, !dbg !1996, !tbaa !937
  br label %169, !dbg !1996

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1843, metadata !715), !dbg !1906
  %171 = icmp ult i64 %170, %130, !dbg !2001
  br i1 %171, label %172, label %174, !dbg !2004

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2001
  store i8 36, i8* %173, align 1, !dbg !2001, !tbaa !937
  br label %174, !dbg !2001

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1843, metadata !715), !dbg !1906
  %176 = icmp ult i64 %175, %130, !dbg !2005
  br i1 %176, label %177, label %179, !dbg !2008

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2005
  store i8 39, i8* %178, align 1, !dbg !2005, !tbaa !937
  br label %179, !dbg !2005

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2008
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1850, metadata !715), !dbg !1914
  br label %181, !dbg !2009

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1850, metadata !715), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1843, metadata !715), !dbg !1906
  %184 = icmp ult i64 %182, %130, !dbg !2010
  br i1 %184, label %185, label %187, !dbg !2013

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2010
  store i8 92, i8* %186, align 1, !dbg !2010, !tbaa !937
  br label %187, !dbg !2010

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2013
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1843, metadata !715), !dbg !1906
  br i1 %105, label %189, label %470, !dbg !2014

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2016
  %191 = icmp ult i64 %190, %155, !dbg !2017
  br i1 %191, label %192, label %470, !dbg !2018

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2019
  %194 = load i8, i8* %193, align 1, !dbg !2019, !tbaa !937
  %195 = add i8 %194, -48, !dbg !2020
  %196 = icmp ult i8 %195, 10, !dbg !2020
  br i1 %196, label %197, label %470, !dbg !2020

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2021
  br i1 %198, label %199, label %201, !dbg !2025

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2021
  store i8 48, i8* %200, align 1, !dbg !2021, !tbaa !937
  br label %201, !dbg !2021

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2025
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1843, metadata !715), !dbg !1906
  %203 = icmp ult i64 %202, %130, !dbg !2026
  br i1 %203, label %204, label %206, !dbg !2029

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2026
  store i8 48, i8* %205, align 1, !dbg !2026, !tbaa !937
  br label %206, !dbg !2026

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2029
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1843, metadata !715), !dbg !1906
  br label %470, !dbg !2030

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2031

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2032

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2033

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2035

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2037
  %214 = icmp ult i64 %213, %155, !dbg !2038
  br i1 %214, label %215, label %470, !dbg !2039

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2040
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2041
  %218 = load i8, i8* %217, align 1, !dbg !2041, !tbaa !937
  %219 = icmp eq i8 %218, 63, !dbg !2042
  br i1 %219, label %220, label %470, !dbg !2043

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2044
  %222 = load i8, i8* %221, align 1, !dbg !2044, !tbaa !937
  %223 = sext i8 %222 to i32, !dbg !2044
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
  ], !dbg !2045

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2046

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1853, metadata !715), !dbg !1987
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1842, metadata !715), !dbg !1963
  %226 = icmp ult i64 %124, %130, !dbg !2048
  br i1 %226, label %227, label %229, !dbg !2051

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2048
  store i8 63, i8* %228, align 1, !dbg !2048, !tbaa !937
  br label %229, !dbg !2048

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1843, metadata !715), !dbg !1906
  %231 = icmp ult i64 %230, %130, !dbg !2052
  br i1 %231, label %232, label %234, !dbg !2055

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2052
  store i8 34, i8* %233, align 1, !dbg !2052, !tbaa !937
  br label %234, !dbg !2052

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1843, metadata !715), !dbg !1906
  %236 = icmp ult i64 %235, %130, !dbg !2056
  br i1 %236, label %237, label %239, !dbg !2059

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2056
  store i8 34, i8* %238, align 1, !dbg !2056, !tbaa !937
  br label %239, !dbg !2056

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2059
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1843, metadata !715), !dbg !1906
  %241 = icmp ult i64 %240, %130, !dbg !2060
  br i1 %241, label %242, label %244, !dbg !2063

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2060
  store i8 63, i8* %243, align 1, !dbg !2060, !tbaa !937
  br label %244, !dbg !2060

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2063
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1843, metadata !715), !dbg !1906
  br label %470, !dbg !2064

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1857, metadata !715), !dbg !2065
  br label %256, !dbg !2066

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1857, metadata !715), !dbg !2065
  br label %256, !dbg !2067

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1857, metadata !715), !dbg !2065
  br label %254, !dbg !2068

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1857, metadata !715), !dbg !2065
  br label %254, !dbg !2069

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1857, metadata !715), !dbg !2065
  br label %256, !dbg !2070

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1857, metadata !715), !dbg !2065
  br i1 %113, label %252, label %253, !dbg !2071

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2072

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2075

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1857, metadata !715), !dbg !2065
  br i1 %117, label %256, label %635, !dbg !2077

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1857, metadata !715), !dbg !2065
  br i1 %104, label %497, label %470, !dbg !2079

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2080
  br i1 %259, label %260, label %265, !dbg !2082

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2083, !tbaa !937
  %262 = icmp ne i8 %261, 0, !dbg !2084
  %263 = icmp ne i64 %123, 0, !dbg !2085
  %264 = or i1 %263, %262, !dbg !2087
  br i1 %264, label %470, label %271, !dbg !2087

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2088
  %267 = icmp ne i64 %123, 0, !dbg !2085
  %268 = or i1 %267, %266, !dbg !2082
  br i1 %268, label %470, label %271, !dbg !2082

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2085
  br i1 %270, label %271, label %470, !dbg !2089

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1860, metadata !715), !dbg !1973
  br label %272, !dbg !2090

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1860, metadata !715), !dbg !1973
  br i1 %117, label %470, label %635, !dbg !2091

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1851, metadata !715), !dbg !1915
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1860, metadata !715), !dbg !1973
  br i1 %113, label %275, label %470, !dbg !2093

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2094

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2097
  %278 = icmp ne i64 %125, 0, !dbg !2099
  %279 = or i1 %278, %277, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1844, metadata !715), !dbg !1907
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1834, metadata !715), !dbg !1898
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2100
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1834, metadata !715), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1844, metadata !715), !dbg !1907
  %282 = icmp ult i64 %124, %281, !dbg !2101
  br i1 %282, label %283, label %285, !dbg !2104

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2101
  store i8 39, i8* %284, align 1, !dbg !2101, !tbaa !937
  br label %285, !dbg !2101

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1843, metadata !715), !dbg !1906
  %287 = icmp ult i64 %286, %281, !dbg !2105
  br i1 %287, label %288, label %290, !dbg !2108

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2105
  store i8 92, i8* %289, align 1, !dbg !2105, !tbaa !937
  br label %290, !dbg !2105

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1843, metadata !715), !dbg !1906
  %292 = icmp ult i64 %291, %281, !dbg !2109
  br i1 %292, label %293, label %295, !dbg !2112

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2109
  store i8 39, i8* %294, align 1, !dbg !2109, !tbaa !937
  br label %295, !dbg !2109

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2112
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1850, metadata !715), !dbg !1914
  br label %470, !dbg !2113

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2114

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1861, metadata !715), !dbg !2115
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2116
  %300 = load i16*, i16** %299, align 8, !dbg !2116, !tbaa !722
  %301 = zext i8 %158 to i64, !dbg !2116
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2116
  %303 = load i16, i16* %302, align 2, !dbg !2116, !tbaa !2118
  %304 = lshr i16 %303, 14, !dbg !2119
  %305 = trunc i16 %304 to i8, !dbg !2119
  %306 = and i8 %305, 1, !dbg !2119
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1864, metadata !715), !dbg !2120
  br label %362, !dbg !2121

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2122
  store i64 0, i64* %10, align 8, !dbg !2123
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1861, metadata !715), !dbg !2115
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1864, metadata !715), !dbg !2120
  %308 = icmp eq i64 %155, -1, !dbg !2124
  br i1 %308, label %309, label %311, !dbg !2126

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1836, metadata !715), !dbg !1900
  br label %311, !dbg !2128

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1836, metadata !715), !dbg !1900
  br label %313, !dbg !2129, !llvm.loop !2130

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1864, metadata !715), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1861, metadata !715), !dbg !2115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2132
  %316 = add i64 %314, %123, !dbg !2133
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2134
  %318 = sub i64 %312, %316, !dbg !2135
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1865, metadata !715), !dbg !2136
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1883, metadata !715), !dbg !2137
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #11, !dbg !2138
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1886, metadata !715), !dbg !2139
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2140

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1864, metadata !715), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1861, metadata !715), !dbg !2115
  %321 = icmp ugt i64 %312, %316, !dbg !2141
  br i1 %321, label %322, label %347, !dbg !2143

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2144

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1861, metadata !715), !dbg !2115
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2144
  %327 = load i8, i8* %326, align 1, !dbg !2144, !tbaa !937
  %328 = icmp eq i8 %327, 0, !dbg !2143
  br i1 %328, label %347, label %329, !dbg !2145

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1861, metadata !715), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1861, metadata !715), !dbg !2115
  %331 = add i64 %330, %123, !dbg !2147
  %332 = icmp ult i64 %331, %312, !dbg !2141
  br i1 %332, label %323, label %347, !dbg !2143, !llvm.loop !2148

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2149
  %335 = and i1 %115, %334, !dbg !2152
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1887, metadata !715), !dbg !2153
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1887, metadata !715), !dbg !2153
  br i1 %335, label %336, label %350, !dbg !2152

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2154

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1887, metadata !715), !dbg !2153
  %339 = add i64 %338, %316, !dbg !2154
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2155
  %341 = load i8, i8* %340, align 1, !dbg !2155, !tbaa !937
  %342 = sext i8 %341 to i32, !dbg !2155
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2156

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2157
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1887, metadata !715), !dbg !2153
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1887, metadata !715), !dbg !2153
  %345 = icmp ult i64 %344, %319, !dbg !2149
  br i1 %345, label %337, label %350, !dbg !2158, !llvm.loop !2159

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2161

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1864, metadata !715), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1861, metadata !715), !dbg !2115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2161
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2162, !tbaa !836
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1883, metadata !715), !dbg !2137
  %352 = call i32 @iswprint(i32 %351) #11, !dbg !2164
  %353 = icmp eq i32 %352, 0, !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1864, metadata !715), !dbg !2120
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2165
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1864, metadata !715), !dbg !2120
  %355 = add i64 %319, %314, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1861, metadata !715), !dbg !2115
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1864, metadata !715), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1861, metadata !715), !dbg !2115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2161
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1865, metadata !715), !dbg !2136
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2167
  %357 = icmp eq i32 %356, 0, !dbg !2168
  br i1 %357, label %313, label %358, !dbg !2169, !llvm.loop !2130

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2170
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1864, metadata !715), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1861, metadata !715), !dbg !2115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2161
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2170
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1864, metadata !715), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1861, metadata !715), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1836, metadata !715), !dbg !1900
  %366 = and i8 %365, 1, !dbg !2171
  %367 = icmp ne i8 %366, 0, !dbg !2171
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1860, metadata !715), !dbg !1973
  %368 = icmp ult i64 %364, 2, !dbg !2172
  %369 = or i1 %367, %112, !dbg !2173
  %370 = and i1 %368, %369, !dbg !2174
  br i1 %370, label %470, label %371, !dbg !2174

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1894, metadata !715), !dbg !2176
  br label %373, !dbg !2177

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1859, metadata !715), !dbg !1972
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1858, metadata !715), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1853, metadata !715), !dbg !1987
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1850, metadata !715), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1842, metadata !715), !dbg !1963
  br i1 %369, label %426, label %380, !dbg !2178

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2183

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1859, metadata !715), !dbg !1972
  %382 = and i8 %376, 1, !dbg !2186
  %383 = icmp eq i8 %382, 0, !dbg !2186
  %384 = and i1 %113, %383, !dbg !2186
  br i1 %384, label %385, label %401, !dbg !2186

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2188
  br i1 %386, label %387, label %389, !dbg !2192

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2188
  store i8 39, i8* %388, align 1, !dbg !2188, !tbaa !937
  br label %389, !dbg !2188

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1843, metadata !715), !dbg !1906
  %391 = icmp ult i64 %390, %130, !dbg !2193
  br i1 %391, label %392, label %394, !dbg !2196

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2193
  store i8 36, i8* %393, align 1, !dbg !2193, !tbaa !937
  br label %394, !dbg !2193

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2196
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1843, metadata !715), !dbg !1906
  %396 = icmp ult i64 %395, %130, !dbg !2197
  br i1 %396, label %397, label %399, !dbg !2200

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2197
  store i8 39, i8* %398, align 1, !dbg !2197, !tbaa !937
  br label %399, !dbg !2197

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1850, metadata !715), !dbg !1914
  br label %401, !dbg !2201

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1850, metadata !715), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1843, metadata !715), !dbg !1906
  %404 = icmp ult i64 %402, %130, !dbg !2202
  br i1 %404, label %405, label %407, !dbg !2205

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2202
  store i8 92, i8* %406, align 1, !dbg !2202, !tbaa !937
  br label %407, !dbg !2202

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1843, metadata !715), !dbg !1906
  %409 = icmp ult i64 %408, %130, !dbg !2206
  br i1 %409, label %410, label %414, !dbg !2209

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2206
  %412 = or i8 %411, 48, !dbg !2206
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2206
  store i8 %412, i8* %413, align 1, !dbg !2206, !tbaa !937
  br label %414, !dbg !2206

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1843, metadata !715), !dbg !1906
  %416 = icmp ult i64 %415, %130, !dbg !2210
  br i1 %416, label %417, label %422, !dbg !2213

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2210
  %419 = and i8 %418, 7, !dbg !2210
  %420 = or i8 %419, 48, !dbg !2210
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2210
  store i8 %420, i8* %421, align 1, !dbg !2210, !tbaa !937
  br label %422, !dbg !2210

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1843, metadata !715), !dbg !1906
  %424 = and i8 %377, 7, !dbg !2214
  %425 = or i8 %424, 48, !dbg !2215
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1853, metadata !715), !dbg !1987
  br label %435, !dbg !2216

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2217
  %428 = icmp eq i8 %427, 0, !dbg !2217
  br i1 %428, label %435, label %429, !dbg !2219

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2220
  br i1 %430, label %431, label %433, !dbg !2224

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2220
  store i8 92, i8* %432, align 1, !dbg !2220, !tbaa !937
  br label %433, !dbg !2220

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1858, metadata !715), !dbg !1971
  br label %435, !dbg !2225

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1859, metadata !715), !dbg !1972
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1858, metadata !715), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1853, metadata !715), !dbg !1987
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1850, metadata !715), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1843, metadata !715), !dbg !1906
  %441 = add i64 %374, 1, !dbg !2226
  %442 = icmp ugt i64 %372, %441, !dbg !2228
  br i1 %442, label %443, label %535, !dbg !2229

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2230
  %445 = icmp ne i8 %444, 0, !dbg !2230
  %446 = and i8 %440, 1, !dbg !2230
  %447 = icmp eq i8 %446, 0, !dbg !2230
  %448 = and i1 %445, %447, !dbg !2230
  br i1 %448, label %449, label %460, !dbg !2230

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2233
  br i1 %450, label %451, label %453, !dbg !2237

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2233
  store i8 39, i8* %452, align 1, !dbg !2233, !tbaa !937
  br label %453, !dbg !2233

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1843, metadata !715), !dbg !1906
  %455 = icmp ult i64 %454, %130, !dbg !2238
  br i1 %455, label %456, label %458, !dbg !2241

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2238
  store i8 39, i8* %457, align 1, !dbg !2238, !tbaa !937
  br label %458, !dbg !2238

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2241
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1850, metadata !715), !dbg !1914
  br label %460, !dbg !2242

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1850, metadata !715), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1843, metadata !715), !dbg !1906
  %463 = icmp ult i64 %461, %130, !dbg !2243
  br i1 %463, label %464, label %466, !dbg !2246

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2243
  store i8 %438, i8* %465, align 1, !dbg !2243, !tbaa !937
  br label %466, !dbg !2243

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1842, metadata !715), !dbg !1963
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2247
  %469 = load i8, i8* %468, align 1, !dbg !2247, !tbaa !937
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1853, metadata !715), !dbg !1987
  br label %373, !dbg !2248, !llvm.loop !2249

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1834, metadata !715), !dbg !1898
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1860, metadata !715), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1859, metadata !715), !dbg !1972
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1858, metadata !715), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1853, metadata !715), !dbg !1987
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1851, metadata !715), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1850, metadata !715), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1836, metadata !715), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1844, metadata !715), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1842, metadata !715), !dbg !1963
  br i1 %106, label %482, label %481, !dbg !2252

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2254

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2255

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2256
  %485 = zext i8 %484 to i64, !dbg !2256
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2257
  %487 = load i32, i32* %486, align 4, !dbg !2257, !tbaa !836
  %488 = and i8 %477, 31, !dbg !2258
  %489 = zext i8 %488 to i32, !dbg !2259
  %490 = shl i32 1, %489, !dbg !2260
  %491 = and i32 %487, %490, !dbg !2260
  %492 = icmp eq i32 %491, 0, !dbg !2260
  %493 = icmp eq i8 %156, 0, !dbg !2261
  %494 = and i1 %493, %492, !dbg !2262
  br i1 %494, label %535, label %497, !dbg !2262

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2261
  br i1 %496, label %535, label %497, !dbg !2263

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1834, metadata !715), !dbg !1898
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1860, metadata !715), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1853, metadata !715), !dbg !1987
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1851, metadata !715), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1850, metadata !715), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1836, metadata !715), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1844, metadata !715), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1842, metadata !715), !dbg !1963
  br i1 %111, label %507, label %635, !dbg !2264

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1859, metadata !715), !dbg !1972
  %508 = and i8 %502, 1, !dbg !2266
  %509 = icmp eq i8 %508, 0, !dbg !2266
  %510 = and i1 %113, %509, !dbg !2266
  br i1 %510, label %511, label %527, !dbg !2266

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2268
  br i1 %512, label %513, label %515, !dbg !2272

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2268
  store i8 39, i8* %514, align 1, !dbg !2268, !tbaa !937
  br label %515, !dbg !2268

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2272
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1843, metadata !715), !dbg !1906
  %517 = icmp ult i64 %516, %506, !dbg !2273
  br i1 %517, label %518, label %520, !dbg !2276

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2273
  store i8 36, i8* %519, align 1, !dbg !2273, !tbaa !937
  br label %520, !dbg !2273

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1843, metadata !715), !dbg !1906
  %522 = icmp ult i64 %521, %506, !dbg !2277
  br i1 %522, label %523, label %525, !dbg !2280

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2277
  store i8 39, i8* %524, align 1, !dbg !2277, !tbaa !937
  br label %525, !dbg !2277

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2280
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1850, metadata !715), !dbg !1914
  br label %527, !dbg !2281

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1850, metadata !715), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1843, metadata !715), !dbg !1906
  %530 = icmp ult i64 %528, %506, !dbg !2282
  br i1 %530, label %531, label %533, !dbg !2285

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2282
  store i8 92, i8* %532, align 1, !dbg !2282, !tbaa !937
  br label %533, !dbg !2282

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2285
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1834, metadata !715), !dbg !1898
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1860, metadata !715), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1859, metadata !715), !dbg !1972
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1853, metadata !715), !dbg !1987
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1851, metadata !715), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1850, metadata !715), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1836, metadata !715), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1844, metadata !715), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1842, metadata !715), !dbg !1963
  br label %562, !dbg !2286

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1834, metadata !715), !dbg !1898
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1860, metadata !715), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1859, metadata !715), !dbg !1972
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1853, metadata !715), !dbg !1987
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1851, metadata !715), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1850, metadata !715), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1836, metadata !715), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1844, metadata !715), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1842, metadata !715), !dbg !1963
  %546 = and i8 %540, 1, !dbg !2286
  %547 = icmp ne i8 %546, 0, !dbg !2286
  %548 = and i8 %543, 1, !dbg !2286
  %549 = icmp eq i8 %548, 0, !dbg !2286
  %550 = and i1 %547, %549, !dbg !2286
  br i1 %550, label %551, label %562, !dbg !2286

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2289
  br i1 %552, label %553, label %555, !dbg !2293

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2289
  store i8 39, i8* %554, align 1, !dbg !2289, !tbaa !937
  br label %555, !dbg !2289

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1843, metadata !715), !dbg !1906
  %557 = icmp ult i64 %556, %545, !dbg !2294
  br i1 %557, label %558, label %560, !dbg !2297

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2294
  store i8 39, i8* %559, align 1, !dbg !2294, !tbaa !937
  br label %560, !dbg !2294

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2297
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1850, metadata !715), !dbg !1914
  br label %562, !dbg !2298

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1850, metadata !715), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1843, metadata !715), !dbg !1906
  %572 = icmp ult i64 %570, %563, !dbg !2299
  br i1 %572, label %573, label %575, !dbg !2302

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2299
  store i8 %565, i8* %574, align 1, !dbg !2299, !tbaa !937
  br label %575, !dbg !2299

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2302
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1843, metadata !715), !dbg !1906
  %577 = and i8 %564, 1, !dbg !2303
  %578 = icmp eq i8 %577, 0, !dbg !2303
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1852, metadata !715), !dbg !1916
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2305
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1852, metadata !715), !dbg !1916
  br label %580, !dbg !2306

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1834, metadata !715), !dbg !1898
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1852, metadata !715), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1851, metadata !715), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1850, metadata !715), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1836, metadata !715), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1844, metadata !715), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1842, metadata !715), !dbg !1963
  %589 = add i64 %581, 1, !dbg !2307
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1842, metadata !715), !dbg !1963
  br label %122, !dbg !2308, !llvm.loop !2309

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2311
  %593 = and i1 %113, %592, !dbg !2313
  %594 = xor i1 %593, true, !dbg !2313
  %595 = or i1 %111, %594, !dbg !2313
  br i1 %595, label %596, label %635, !dbg !2313

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2314
  %598 = xor i1 %597, true, !dbg !2314
  %599 = and i8 %128, 1, !dbg !2316
  %600 = icmp eq i8 %599, 0, !dbg !2316
  %601 = or i1 %600, %598, !dbg !2314
  br i1 %601, label %611, label %602, !dbg !2314

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2317
  %604 = icmp eq i8 %603, 0, !dbg !2317
  br i1 %604, label %607, label %605, !dbg !2320

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2321
  br label %645, !dbg !2322

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2323
  %609 = icmp ne i64 %125, 0, !dbg !2325
  %610 = and i1 %609, %608, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1834, metadata !715), !dbg !1898
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1843, metadata !715), !dbg !1906
  br i1 %610, label %27, label %611, !dbg !2326

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2327
  %613 = and i1 %612, %111, !dbg !2329
  br i1 %613, label %614, label %630, !dbg !2329

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1845, metadata !715), !dbg !1908
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1843, metadata !715), !dbg !1906
  %615 = load i8, i8* %99, align 1, !dbg !2330, !tbaa !937
  %616 = icmp eq i8 %615, 0, !dbg !2333
  br i1 %616, label %630, label %617, !dbg !2333

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2334

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1843, metadata !715), !dbg !1906
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1845, metadata !715), !dbg !1908
  %622 = icmp ult i64 %621, %130, !dbg !2334
  br i1 %622, label %623, label %625, !dbg !2337

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2334
  store i8 %619, i8* %624, align 1, !dbg !2334, !tbaa !937
  br label %625, !dbg !2334

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1843, metadata !715), !dbg !1906
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2338
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1845, metadata !715), !dbg !1908
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1845, metadata !715), !dbg !1908
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1843, metadata !715), !dbg !1906
  %628 = load i8, i8* %627, align 1, !dbg !2330, !tbaa !937
  %629 = icmp eq i8 %628, 0, !dbg !2333
  br i1 %629, label %630, label %618, !dbg !2333, !llvm.loop !2339

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1843, metadata !715), !dbg !1906
  %632 = icmp ult i64 %631, %130, !dbg !2341
  br i1 %632, label %633, label %645, !dbg !2343

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2344
  store i8 0, i8* %634, align 1, !dbg !2345, !tbaa !937
  br label %645, !dbg !2344

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1834, metadata !715), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1836, metadata !715), !dbg !1900
  %639 = icmp ne i32 %636, 2, !dbg !2346
  %640 = icmp eq i8 %103, 0, !dbg !2348
  %641 = or i1 %639, %640, !dbg !2349
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1837, metadata !715), !dbg !1901
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2349
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1837, metadata !715), !dbg !1901
  %643 = and i32 %5, -3, !dbg !2350
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2351
  br label %645, !dbg !2352

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2353
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2354 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2358, metadata !715), !dbg !2362
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2359, metadata !715), !dbg !2363
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2364
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2360, metadata !715), !dbg !2365
  %4 = icmp eq i8* %3, %0, !dbg !2366
  br i1 %4, label %5, label %75, !dbg !2368

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2369
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2361, metadata !715), !dbg !2370
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2371, metadata !715), !dbg !2387
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2385, metadata !715), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2386, metadata !715), !dbg !2391
  %7 = load i8, i8* %6, align 1, !dbg !2392, !tbaa !937
  %8 = sext i8 %7 to i32, !dbg !2392
  %9 = and i32 %8, -33, !dbg !2392
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2392

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2394, metadata !715), !dbg !2408
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2406, metadata !715), !dbg !2412
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2407, metadata !715), !dbg !2413
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2414
  %12 = load i8, i8* %11, align 1, !dbg !2414, !tbaa !937
  %13 = sext i8 %12 to i32, !dbg !2414
  %14 = and i32 %13, -33, !dbg !2414
  %15 = icmp eq i32 %14, 84, !dbg !2414
  br i1 %15, label %16, label %72, !dbg !2414

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2416, metadata !715), !dbg !2429
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2427, metadata !715), !dbg !2433
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2428, metadata !715), !dbg !2434
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2435
  %18 = load i8, i8* %17, align 1, !dbg !2435, !tbaa !937
  %19 = sext i8 %18 to i32, !dbg !2435
  %20 = and i32 %19, -33, !dbg !2435
  %21 = icmp eq i32 %20, 70, !dbg !2435
  br i1 %21, label %22, label %72, !dbg !2435

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2437, metadata !715), !dbg !2449
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2447, metadata !715), !dbg !2453
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2448, metadata !715), !dbg !2454
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2455
  %24 = load i8, i8* %23, align 1, !dbg !2455, !tbaa !937
  %25 = icmp eq i8 %24, 45, !dbg !2455
  br i1 %25, label %26, label %72, !dbg !2457

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2458, metadata !715), !dbg !2469
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2467, metadata !715), !dbg !2473
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2468, metadata !715), !dbg !2474
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2475
  %28 = load i8, i8* %27, align 1, !dbg !2475, !tbaa !937
  %29 = icmp eq i8 %28, 56, !dbg !2475
  br i1 %29, label %30, label %72, !dbg !2477

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2478, metadata !715), !dbg !2488
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2486, metadata !715), !dbg !2492
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2487, metadata !715), !dbg !2493
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2494
  %32 = load i8, i8* %31, align 1, !dbg !2494, !tbaa !937
  %33 = icmp eq i8 %32, 0, !dbg !2494
  br i1 %33, label %34, label %72, !dbg !2496

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2497, !tbaa !937
  %36 = icmp eq i8 %35, 96, !dbg !2498
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.83, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.84, i64 0, i64 0), !dbg !2497
  br label %75, !dbg !2499

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2394, metadata !715), !dbg !2500
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2406, metadata !715), !dbg !2504
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2407, metadata !715), !dbg !2505
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2506
  %40 = load i8, i8* %39, align 1, !dbg !2506, !tbaa !937
  %41 = sext i8 %40 to i32, !dbg !2506
  %42 = and i32 %41, -33, !dbg !2506
  %43 = icmp eq i32 %42, 66, !dbg !2506
  br i1 %43, label %44, label %72, !dbg !2506

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2416, metadata !715), !dbg !2507
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2427, metadata !715), !dbg !2509
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2428, metadata !715), !dbg !2510
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2511
  %46 = load i8, i8* %45, align 1, !dbg !2511, !tbaa !937
  %47 = icmp eq i8 %46, 49, !dbg !2511
  br i1 %47, label %48, label %72, !dbg !2512

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2437, metadata !715), !dbg !2513
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2447, metadata !715), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2448, metadata !715), !dbg !2516
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2517
  %50 = load i8, i8* %49, align 1, !dbg !2517, !tbaa !937
  %51 = icmp eq i8 %50, 56, !dbg !2517
  br i1 %51, label %52, label %72, !dbg !2518

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2458, metadata !715), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2467, metadata !715), !dbg !2521
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2468, metadata !715), !dbg !2522
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2523
  %54 = load i8, i8* %53, align 1, !dbg !2523, !tbaa !937
  %55 = icmp eq i8 %54, 48, !dbg !2523
  br i1 %55, label %56, label %72, !dbg !2524

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2478, metadata !715), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2486, metadata !715), !dbg !2527
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2487, metadata !715), !dbg !2528
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2529
  %58 = load i8, i8* %57, align 1, !dbg !2529, !tbaa !937
  %59 = icmp eq i8 %58, 51, !dbg !2529
  br i1 %59, label %60, label %72, !dbg !2530

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2531, metadata !715), !dbg !2540
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2538, metadata !715), !dbg !2544
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2539, metadata !715), !dbg !2545
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2546
  %62 = load i8, i8* %61, align 1, !dbg !2546, !tbaa !937
  %63 = icmp eq i8 %62, 48, !dbg !2546
  br i1 %63, label %64, label %72, !dbg !2548

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2549, metadata !715), !dbg !2557
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2555, metadata !715), !dbg !2561
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2556, metadata !715), !dbg !2562
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2563
  %66 = load i8, i8* %65, align 1, !dbg !2563, !tbaa !937
  %67 = icmp eq i8 %66, 0, !dbg !2563
  br i1 %67, label %68, label %72, !dbg !2565

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2566, !tbaa !937
  %70 = icmp eq i8 %69, 96, !dbg !2567
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.85, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.86, i64 0, i64 0), !dbg !2566
  br label %75, !dbg !2568

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2569
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), !dbg !2570
  br label %75, !dbg !2571

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2572
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2573 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2577, metadata !715), !dbg !2580
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2578, metadata !715), !dbg !2581
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2579, metadata !715), !dbg !2582
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2583, metadata !715) #11, !dbg !2596
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2588, metadata !715) #11, !dbg !2598
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2589, metadata !715) #11, !dbg !2599
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2590, metadata !715) #11, !dbg !2600
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2601
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2601
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2591, metadata !715) #11, !dbg !2602
  %6 = tail call i32* @__errno_location() #17, !dbg !2603
  %7 = load i32, i32* %6, align 4, !dbg !2603, !tbaa !836
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2592, metadata !715) #11, !dbg !2604
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2605
  %9 = load i32, i32* %8, align 4, !dbg !2605, !tbaa !1766
  %10 = or i32 %9, 1, !dbg !2606
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2593, metadata !715) #11, !dbg !2607
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2608
  %12 = load i32, i32* %11, align 8, !dbg !2608, !tbaa !1706
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2609
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2610
  %15 = load i8*, i8** %14, align 8, !dbg !2610, !tbaa !1792
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2611
  %17 = load i8*, i8** %16, align 8, !dbg !2611, !tbaa !1795
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2612
  %19 = add i64 %18, 1, !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2594, metadata !715) #11, !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2615, metadata !715) #11, !dbg !2620
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2622
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2595, metadata !715) #11, !dbg !2623
  %21 = load i32, i32* %11, align 8, !dbg !2624, !tbaa !1706
  %22 = load i8*, i8** %14, align 8, !dbg !2625, !tbaa !1792
  %23 = load i8*, i8** %16, align 8, !dbg !2626, !tbaa !1795
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2627
  store i32 %7, i32* %6, align 4, !dbg !2628, !tbaa !836
  ret i8* %20, !dbg !2629
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2584 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2583, metadata !715), !dbg !2630
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2588, metadata !715), !dbg !2631
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2589, metadata !715), !dbg !2632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2590, metadata !715), !dbg !2633
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2634
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2634
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2591, metadata !715), !dbg !2635
  %7 = tail call i32* @__errno_location() #17, !dbg !2636
  %8 = load i32, i32* %7, align 4, !dbg !2636, !tbaa !836
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2592, metadata !715), !dbg !2637
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2638
  %10 = load i32, i32* %9, align 4, !dbg !2638, !tbaa !1766
  %11 = icmp ne i64* %2, null, !dbg !2639
  %12 = xor i1 %11, true, !dbg !2639
  %13 = zext i1 %12 to i32, !dbg !2639
  %14 = or i32 %10, %13, !dbg !2640
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2593, metadata !715), !dbg !2641
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2642
  %16 = load i32, i32* %15, align 8, !dbg !2642, !tbaa !1706
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2643
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2644
  %19 = load i8*, i8** %18, align 8, !dbg !2644, !tbaa !1792
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2645
  %21 = load i8*, i8** %20, align 8, !dbg !2645, !tbaa !1795
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2646
  %23 = add i64 %22, 1, !dbg !2647
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2594, metadata !715), !dbg !2648
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2615, metadata !715) #11, !dbg !2649
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2651
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2595, metadata !715), !dbg !2652
  %25 = load i32, i32* %15, align 8, !dbg !2653, !tbaa !1706
  %26 = load i8*, i8** %18, align 8, !dbg !2654, !tbaa !1792
  %27 = load i8*, i8** %20, align 8, !dbg !2655, !tbaa !1795
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2656
  store i32 %8, i32* %7, align 4, !dbg !2657, !tbaa !836
  br i1 %11, label %29, label %30, !dbg !2658

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2659, !tbaa !815
  br label %30, !dbg !2661

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2662
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2663 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2667, !tbaa !722
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2665, metadata !715), !dbg !2668
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2666, metadata !715), !dbg !2669
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2666, metadata !715), !dbg !2669
  %2 = load i32, i32* @nslots, align 4, !dbg !2670, !tbaa !836
  %3 = icmp sgt i32 %2, 1, !dbg !2673
  br i1 %3, label %4, label %13, !dbg !2674

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2675

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2666, metadata !715), !dbg !2669
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2675
  %8 = load i8*, i8** %7, align 8, !dbg !2675, !tbaa !2676
  tail call void @free(i8* %8) #11, !dbg !2678
  %9 = add nuw i64 %6, 1, !dbg !2679
  %10 = load i32, i32* @nslots, align 4, !dbg !2670, !tbaa !836
  %11 = sext i32 %10 to i64, !dbg !2673
  %12 = icmp slt i64 %9, %11, !dbg !2673
  br i1 %12, label %5, label %13, !dbg !2674, !llvm.loop !2680

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2682
  %15 = load i8*, i8** %14, align 8, !dbg !2682, !tbaa !2676
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2684
  br i1 %16, label %18, label %17, !dbg !2685

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #11, !dbg !2686
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2688, !tbaa !2689
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2690, !tbaa !2676
  br label %18, !dbg !2691

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2692
  br i1 %19, label %22, label %20, !dbg !2694

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2695
  tail call void @free(i8* %21) #11, !dbg !2697
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2698, !tbaa !722
  br label %22, !dbg !2699

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2700, !tbaa !836
  ret void, !dbg !2701
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2702 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2706, metadata !715), !dbg !2708
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2707, metadata !715), !dbg !2709
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2710
  ret i8* %3, !dbg !2711
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2712 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2716, metadata !715), !dbg !2730
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2717, metadata !715), !dbg !2731
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2718, metadata !715), !dbg !2732
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2719, metadata !715), !dbg !2733
  %5 = tail call i32* @__errno_location() #17, !dbg !2734
  %6 = load i32, i32* %5, align 4, !dbg !2734, !tbaa !836
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2720, metadata !715), !dbg !2735
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2736, !tbaa !722
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2721, metadata !715), !dbg !2737
  %8 = icmp slt i32 %0, 0, !dbg !2738
  br i1 %8, label %9, label %10, !dbg !2740

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2741
  unreachable, !dbg !2741

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2742, !tbaa !836
  %12 = icmp sgt i32 %11, %0, !dbg !2743
  br i1 %12, label %34, label %13, !dbg !2744

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2745
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2746
  br i1 %15, label %16, label %17, !dbg !2748

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2749
  unreachable, !dbg !2749

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2750
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2750
  %20 = add nsw i32 %0, 1, !dbg !2751
  %21 = sext i32 %20 to i64, !dbg !2752
  %22 = shl nsw i64 %21, 4, !dbg !2753
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2754
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2754
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2721, metadata !715), !dbg !2737
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2755, !tbaa !722
  br i1 %14, label %25, label %26, !dbg !2756

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2757, !tbaa.struct !2759
  br label %26, !dbg !2760

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2761, !tbaa !836
  %28 = sext i32 %27 to i64, !dbg !2762
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2762
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2763
  %31 = sub nsw i32 %20, %27, !dbg !2764
  %32 = sext i32 %31 to i64, !dbg !2765
  %33 = shl nsw i64 %32, 4, !dbg !2766
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2763
  store i32 %20, i32* @nslots, align 4, !dbg !2767, !tbaa !836
  br label %34, !dbg !2768

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2721, metadata !715), !dbg !2737
  %36 = sext i32 %0 to i64, !dbg !2769
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2770
  %38 = load i64, i64* %37, align 8, !dbg !2770, !tbaa !2689
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2725, metadata !715), !dbg !2771
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2772
  %40 = load i8*, i8** %39, align 8, !dbg !2772, !tbaa !2676
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2727, metadata !715), !dbg !2773
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2774
  %42 = load i32, i32* %41, align 4, !dbg !2774, !tbaa !1766
  %43 = or i32 %42, 1, !dbg !2775
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2728, metadata !715), !dbg !2776
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2777
  %45 = load i32, i32* %44, align 8, !dbg !2777, !tbaa !1706
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2778
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2779
  %48 = load i8*, i8** %47, align 8, !dbg !2779, !tbaa !1792
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2780
  %50 = load i8*, i8** %49, align 8, !dbg !2780, !tbaa !1795
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2781
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2729, metadata !715), !dbg !2782
  %52 = icmp ugt i64 %38, %51, !dbg !2783
  br i1 %52, label %63, label %53, !dbg !2785

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2786
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2725, metadata !715), !dbg !2771
  store i64 %54, i64* %37, align 8, !dbg !2788, !tbaa !2689
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2789
  br i1 %55, label %57, label %56, !dbg !2791

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2792
  br label %57, !dbg !2792

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2615, metadata !715) #11, !dbg !2793
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2795
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2727, metadata !715), !dbg !2773
  store i8* %58, i8** %39, align 8, !dbg !2796, !tbaa !2676
  %59 = load i32, i32* %44, align 8, !dbg !2797, !tbaa !1706
  %60 = load i8*, i8** %47, align 8, !dbg !2798, !tbaa !1792
  %61 = load i8*, i8** %49, align 8, !dbg !2799, !tbaa !1795
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2800
  br label %63, !dbg !2801

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2727, metadata !715), !dbg !2773
  store i32 %6, i32* %5, align 4, !dbg !2802, !tbaa !836
  ret i8* %64, !dbg !2803
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2804 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2808, metadata !715), !dbg !2811
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2809, metadata !715), !dbg !2812
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2810, metadata !715), !dbg !2813
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2814
  ret i8* %4, !dbg !2815
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2816 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2820, metadata !715), !dbg !2821
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2706, metadata !715) #11, !dbg !2822
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2707, metadata !715) #11, !dbg !2824
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2825
  ret i8* %2, !dbg !2826
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2827 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2831, metadata !715), !dbg !2833
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2832, metadata !715), !dbg !2834
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2808, metadata !715) #11, !dbg !2835
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2809, metadata !715) #11, !dbg !2837
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2810, metadata !715) #11, !dbg !2838
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2839
  ret i8* %3, !dbg !2840
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2841 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2849, metadata !2855), !dbg !2856
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2845, metadata !715), !dbg !2858
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2846, metadata !715), !dbg !2859
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2847, metadata !715), !dbg !2860
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2861
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2861
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2848, metadata !715), !dbg !2862
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2854, metadata !715) #11, !dbg !2863
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2864
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2864
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2849, metadata !715) #11, !dbg !2856
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2849, metadata !2865) #11, !dbg !2856
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2856
  %8 = icmp eq i32 %1, 10, !dbg !2866
  br i1 %8, label %9, label %10, !dbg !2868

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2869, !noalias !2870
  unreachable, !dbg !2869

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2849, metadata !2865) #11, !dbg !2856
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2873
  store i32 %1, i32* %11, align 8, !dbg !2873, !alias.scope !2870
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2873
  %13 = bitcast i32* %12 to i8*, !dbg !2873
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2873
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2874
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2848, metadata !715), !dbg !2862
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2875
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2876
  ret i8* %14, !dbg !2877
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2878 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2849, metadata !2855), !dbg !2887
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2882, metadata !715), !dbg !2889
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2883, metadata !715), !dbg !2890
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2884, metadata !715), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2885, metadata !715), !dbg !2892
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2893
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2893
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2886, metadata !715), !dbg !2894
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2854, metadata !715) #11, !dbg !2895
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2896
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2896
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2849, metadata !715) #11, !dbg !2887
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2849, metadata !2865) #11, !dbg !2887
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2887
  %9 = icmp eq i32 %1, 10, !dbg !2897
  br i1 %9, label %10, label %11, !dbg !2898

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2899, !noalias !2900
  unreachable, !dbg !2899

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2849, metadata !2865) #11, !dbg !2887
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2903
  store i32 %1, i32* %12, align 8, !dbg !2903, !alias.scope !2900
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2903
  %14 = bitcast i32* %13 to i8*, !dbg !2903
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !2903
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2904
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2886, metadata !715), !dbg !2894
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2905
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2906
  ret i8* %15, !dbg !2907
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2908 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2849, metadata !2855), !dbg !2914
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2912, metadata !715), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2913, metadata !715), !dbg !2918
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2845, metadata !715) #11, !dbg !2919
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2846, metadata !715) #11, !dbg !2920
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2847, metadata !715) #11, !dbg !2921
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2922
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2922
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2848, metadata !715) #11, !dbg !2923
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2854, metadata !715) #11, !dbg !2924
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2925
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2925
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2849, metadata !715) #11, !dbg !2914
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2849, metadata !2865) #11, !dbg !2914
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2914
  %7 = icmp eq i32 %0, 10, !dbg !2926
  br i1 %7, label %8, label %9, !dbg !2927

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2928, !noalias !2929
  unreachable, !dbg !2928

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2849, metadata !2865) #11, !dbg !2914
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2932
  store i32 %0, i32* %10, align 8, !dbg !2932, !alias.scope !2929
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2932
  %12 = bitcast i32* %11 to i8*, !dbg !2932
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !2932
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2933
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2848, metadata !715) #11, !dbg !2923
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2934
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2935
  ret i8* %13, !dbg !2936
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2937 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2849, metadata !2855), !dbg !2944
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2941, metadata !715), !dbg !2947
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2942, metadata !715), !dbg !2948
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2943, metadata !715), !dbg !2949
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2882, metadata !715) #11, !dbg !2950
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2883, metadata !715) #11, !dbg !2951
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2884, metadata !715) #11, !dbg !2952
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2885, metadata !715) #11, !dbg !2953
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2954
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2954
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2886, metadata !715) #11, !dbg !2955
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2854, metadata !715) #11, !dbg !2956
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2957
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2957
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2849, metadata !715) #11, !dbg !2944
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2849, metadata !2865) #11, !dbg !2944
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2944
  %8 = icmp eq i32 %0, 10, !dbg !2958
  br i1 %8, label %9, label %10, !dbg !2959

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2960, !noalias !2961
  unreachable, !dbg !2960

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2849, metadata !2865) #11, !dbg !2944
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2964
  store i32 %0, i32* %11, align 8, !dbg !2964, !alias.scope !2961
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2964
  %13 = bitcast i32* %12 to i8*, !dbg !2964
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2964
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2965
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2886, metadata !715) #11, !dbg !2955
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !2966
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2967
  ret i8* %14, !dbg !2968
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2969 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2973, metadata !715), !dbg !2977
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2974, metadata !715), !dbg !2978
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2975, metadata !715), !dbg !2979
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2980
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2980
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2981, !tbaa.struct !2982
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2976, metadata !715), !dbg !2983
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1725, metadata !715), !dbg !2984
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1726, metadata !715), !dbg !2986
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1727, metadata !715), !dbg !2987
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1728, metadata !715), !dbg !2988
  %6 = lshr i8 %2, 5, !dbg !2989
  %7 = zext i8 %6 to i64, !dbg !2989
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2990
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1729, metadata !715), !dbg !2991
  %9 = and i8 %2, 31, !dbg !2992
  %10 = zext i8 %9 to i32, !dbg !2993
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1731, metadata !715), !dbg !2994
  %11 = load i32, i32* %8, align 4, !dbg !2995, !tbaa !836
  %12 = lshr i32 %11, %10, !dbg !2996
  %13 = and i32 %12, 1, !dbg !2997
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1732, metadata !715), !dbg !2998
  %14 = xor i32 %13, 1, !dbg !2999
  %15 = shl i32 %14, %10, !dbg !3000
  %16 = xor i32 %15, %11, !dbg !3001
  store i32 %16, i32* %8, align 4, !dbg !3001, !tbaa !836
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2976, metadata !715), !dbg !2983
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3002
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3003
  ret i8* %17, !dbg !3004
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3005 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3009, metadata !715), !dbg !3011
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3010, metadata !715), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2973, metadata !715) #11, !dbg !3013
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2974, metadata !715) #11, !dbg !3015
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2975, metadata !715) #11, !dbg !3016
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3017
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3017
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3018, !tbaa.struct !2982
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2976, metadata !715) #11, !dbg !3019
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1725, metadata !715) #11, !dbg !3020
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1726, metadata !715) #11, !dbg !3022
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1727, metadata !715) #11, !dbg !3023
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1728, metadata !715) #11, !dbg !3024
  %5 = lshr i8 %1, 5, !dbg !3025
  %6 = zext i8 %5 to i64, !dbg !3025
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3026
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1729, metadata !715) #11, !dbg !3027
  %8 = and i8 %1, 31, !dbg !3028
  %9 = zext i8 %8 to i32, !dbg !3029
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1731, metadata !715) #11, !dbg !3030
  %10 = load i32, i32* %7, align 4, !dbg !3031, !tbaa !836
  %11 = lshr i32 %10, %9, !dbg !3032
  %12 = and i32 %11, 1, !dbg !3033
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1732, metadata !715) #11, !dbg !3034
  %13 = xor i32 %12, 1, !dbg !3035
  %14 = shl i32 %13, %9, !dbg !3036
  %15 = xor i32 %14, %10, !dbg !3037
  store i32 %15, i32* %7, align 4, !dbg !3037, !tbaa !836
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2976, metadata !715) #11, !dbg !3019
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3038
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3039
  ret i8* %16, !dbg !3040
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3041 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3043, metadata !715), !dbg !3044
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3009, metadata !715) #11, !dbg !3045
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3010, metadata !715) #11, !dbg !3047
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2973, metadata !715) #11, !dbg !3048
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2974, metadata !715) #11, !dbg !3050
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2975, metadata !715) #11, !dbg !3051
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3052
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3052
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3053, !tbaa.struct !2982
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2976, metadata !715) #11, !dbg !3054
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1725, metadata !715) #11, !dbg !3055
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1726, metadata !715) #11, !dbg !3057
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1727, metadata !715) #11, !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1728, metadata !715) #11, !dbg !3059
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3060
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1729, metadata !715) #11, !dbg !3061
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1731, metadata !715) #11, !dbg !3062
  %5 = load i32, i32* %4, align 4, !dbg !3063, !tbaa !836
  %6 = or i32 %5, 67108864, !dbg !3064
  store i32 %6, i32* %4, align 4, !dbg !3064, !tbaa !836
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2976, metadata !715) #11, !dbg !3054
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3065
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3066
  ret i8* %7, !dbg !3067
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3068 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3070, metadata !715), !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3071, metadata !715), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2973, metadata !715) #11, !dbg !3074
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2974, metadata !715) #11, !dbg !3076
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2975, metadata !715) #11, !dbg !3077
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3078
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3078
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3079, !tbaa.struct !2982
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2976, metadata !715) #11, !dbg !3080
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1725, metadata !715) #11, !dbg !3081
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1726, metadata !715) #11, !dbg !3083
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1727, metadata !715) #11, !dbg !3084
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1728, metadata !715) #11, !dbg !3085
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3086
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1729, metadata !715) #11, !dbg !3087
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1731, metadata !715) #11, !dbg !3088
  %6 = load i32, i32* %5, align 4, !dbg !3089, !tbaa !836
  %7 = or i32 %6, 67108864, !dbg !3090
  store i32 %7, i32* %5, align 4, !dbg !3090, !tbaa !836
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2976, metadata !715) #11, !dbg !3080
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3091
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3092
  ret i8* %8, !dbg !3093
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3094 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2849, metadata !2855), !dbg !3100
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3096, metadata !715), !dbg !3102
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3097, metadata !715), !dbg !3103
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3098, metadata !715), !dbg !3104
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3105
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3105
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2854, metadata !715) #11, !dbg !3106
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3107
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3107
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2849, metadata !715) #11, !dbg !3100
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2849, metadata !2865) #11, !dbg !3100
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3100
  %9 = icmp eq i32 %1, 10, !dbg !3108
  br i1 %9, label %10, label %11, !dbg !3109

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3110, !noalias !3111
  unreachable, !dbg !3110

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2849, metadata !2865) #11, !dbg !3100
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3114
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3114
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3115
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3116
  store i32 %1, i32* %13, align 8, !dbg !3116
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3116
  %15 = bitcast i32* %14 to i8*, !dbg !3116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3116
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3099, metadata !715), !dbg !3117
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1725, metadata !715), !dbg !3118
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1726, metadata !715), !dbg !3120
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1727, metadata !715), !dbg !3121
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1728, metadata !715), !dbg !3122
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3123
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1729, metadata !715), !dbg !3124
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1731, metadata !715), !dbg !3125
  %17 = load i32, i32* %16, align 4, !dbg !3126, !tbaa !836
  %18 = or i32 %17, 67108864, !dbg !3127
  store i32 %18, i32* %16, align 4, !dbg !3127, !tbaa !836
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3099, metadata !715), !dbg !3117
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3128
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3129
  ret i8* %19, !dbg !3130
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3131 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3135, metadata !715), !dbg !3139
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3136, metadata !715), !dbg !3140
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3137, metadata !715), !dbg !3141
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3138, metadata !715), !dbg !3142
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3143, metadata !715) #11, !dbg !3153
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3148, metadata !715) #11, !dbg !3155
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3149, metadata !715) #11, !dbg !3156
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3150, metadata !715) #11, !dbg !3157
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3151, metadata !715) #11, !dbg !3158
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3159
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3159
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3160, !tbaa.struct !2982
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3152, metadata !715) #11, !dbg !3161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1774, metadata !715) #11, !dbg !3162
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1775, metadata !715) #11, !dbg !3164
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1776, metadata !715) #11, !dbg !3165
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1774, metadata !715) #11, !dbg !3162
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1774, metadata !715) #11, !dbg !3162
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3166
  store i32 10, i32* %7, align 8, !dbg !3167, !tbaa !1706
  %8 = icmp ne i8* %1, null, !dbg !3168
  %9 = icmp ne i8* %2, null, !dbg !3169
  %10 = and i1 %8, %9, !dbg !3170
  br i1 %10, label %12, label %11, !dbg !3170

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3171
  unreachable, !dbg !3171

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3172
  store i8* %1, i8** %13, align 8, !dbg !3173, !tbaa !1792
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3174
  store i8* %2, i8** %14, align 8, !dbg !3175, !tbaa !1795
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3152, metadata !715) #11, !dbg !3161
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3176
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3177
  ret i8* %15, !dbg !3178
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3144 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3143, metadata !715), !dbg !3179
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3148, metadata !715), !dbg !3180
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3149, metadata !715), !dbg !3181
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3150, metadata !715), !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3151, metadata !715), !dbg !3183
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3184
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3184
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3185, !tbaa.struct !2982
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3152, metadata !715), !dbg !3186
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1774, metadata !715) #11, !dbg !3187
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1775, metadata !715) #11, !dbg !3189
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1776, metadata !715) #11, !dbg !3190
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1774, metadata !715) #11, !dbg !3187
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1774, metadata !715) #11, !dbg !3187
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3191
  store i32 10, i32* %8, align 8, !dbg !3192, !tbaa !1706
  %9 = icmp ne i8* %1, null, !dbg !3193
  %10 = icmp ne i8* %2, null, !dbg !3194
  %11 = and i1 %9, %10, !dbg !3195
  br i1 %11, label %13, label %12, !dbg !3195

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3196
  unreachable, !dbg !3196

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3197
  store i8* %1, i8** %14, align 8, !dbg !3198, !tbaa !1792
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3199
  store i8* %2, i8** %15, align 8, !dbg !3200, !tbaa !1795
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3152, metadata !715), !dbg !3186
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3201
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3202
  ret i8* %16, !dbg !3203
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3204 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3208, metadata !715), !dbg !3211
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3209, metadata !715), !dbg !3212
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3210, metadata !715), !dbg !3213
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3135, metadata !715) #11, !dbg !3214
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3136, metadata !715) #11, !dbg !3216
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3137, metadata !715) #11, !dbg !3217
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3138, metadata !715) #11, !dbg !3218
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3143, metadata !715) #11, !dbg !3219
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3148, metadata !715) #11, !dbg !3221
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3149, metadata !715) #11, !dbg !3222
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3150, metadata !715) #11, !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3151, metadata !715) #11, !dbg !3224
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3225
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3225
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3226, !tbaa.struct !2982
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3152, metadata !715) #11, !dbg !3227
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1774, metadata !715) #11, !dbg !3228
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1775, metadata !715) #11, !dbg !3230
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1776, metadata !715) #11, !dbg !3231
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1774, metadata !715) #11, !dbg !3228
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1774, metadata !715) #11, !dbg !3228
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3232
  store i32 10, i32* %6, align 8, !dbg !3233, !tbaa !1706
  %7 = icmp ne i8* %0, null, !dbg !3234
  %8 = icmp ne i8* %1, null, !dbg !3235
  %9 = and i1 %7, %8, !dbg !3236
  br i1 %9, label %11, label %10, !dbg !3236

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3237
  unreachable, !dbg !3237

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3238
  store i8* %0, i8** %12, align 8, !dbg !3239, !tbaa !1792
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3240
  store i8* %1, i8** %13, align 8, !dbg !3241, !tbaa !1795
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3152, metadata !715) #11, !dbg !3227
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3242
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3243
  ret i8* %14, !dbg !3244
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3245 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3249, metadata !715), !dbg !3253
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3250, metadata !715), !dbg !3254
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3251, metadata !715), !dbg !3255
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3252, metadata !715), !dbg !3256
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3143, metadata !715) #11, !dbg !3257
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3148, metadata !715) #11, !dbg !3259
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3149, metadata !715) #11, !dbg !3260
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3150, metadata !715) #11, !dbg !3261
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3151, metadata !715) #11, !dbg !3262
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3263
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3263
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3264, !tbaa.struct !2982
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3152, metadata !715) #11, !dbg !3265
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1774, metadata !715) #11, !dbg !3266
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1775, metadata !715) #11, !dbg !3268
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1776, metadata !715) #11, !dbg !3269
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1774, metadata !715) #11, !dbg !3266
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1774, metadata !715) #11, !dbg !3266
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3270
  store i32 10, i32* %7, align 8, !dbg !3271, !tbaa !1706
  %8 = icmp ne i8* %0, null, !dbg !3272
  %9 = icmp ne i8* %1, null, !dbg !3273
  %10 = and i1 %8, %9, !dbg !3274
  br i1 %10, label %12, label %11, !dbg !3274

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3275
  unreachable, !dbg !3275

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3276
  store i8* %0, i8** %13, align 8, !dbg !3277, !tbaa !1792
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3278
  store i8* %1, i8** %14, align 8, !dbg !3279, !tbaa !1795
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3152, metadata !715) #11, !dbg !3265
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3280
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3281
  ret i8* %15, !dbg !3282
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3283 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3287, metadata !715), !dbg !3290
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3288, metadata !715), !dbg !3291
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3289, metadata !715), !dbg !3292
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3293
  ret i8* %4, !dbg !3294
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3295 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3299, metadata !715), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3300, metadata !715), !dbg !3302
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3287, metadata !715) #11, !dbg !3303
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3288, metadata !715) #11, !dbg !3305
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3289, metadata !715) #11, !dbg !3306
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3307
  ret i8* %3, !dbg !3308
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3309 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3313, metadata !715), !dbg !3315
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3314, metadata !715), !dbg !3316
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3287, metadata !715) #11, !dbg !3317
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3288, metadata !715) #11, !dbg !3319
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3289, metadata !715) #11, !dbg !3320
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3321
  ret i8* %3, !dbg !3322
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3323 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3327, metadata !715), !dbg !3328
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3313, metadata !715) #11, !dbg !3329
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3314, metadata !715) #11, !dbg !3331
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3287, metadata !715) #11, !dbg !3332
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3288, metadata !715) #11, !dbg !3334
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3289, metadata !715) #11, !dbg !3335
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3336
  ret i8* %2, !dbg !3337
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3338 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3383, metadata !715), !dbg !3389
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3384, metadata !715), !dbg !3390
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3385, metadata !715), !dbg !3391
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3386, metadata !715), !dbg !3392
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3387, metadata !715), !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3388, metadata !715), !dbg !3394
  %7 = icmp eq i8* %1, null, !dbg !3395
  br i1 %7, label %10, label %8, !dbg !3397

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3398
  br label %12, !dbg !3398

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.94, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3399
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.95, i64 0, i64 0), i32 5) #11, !dbg !3400
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3400
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.96, i64 0, i64 0), i32 5) #11, !dbg !3401
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3401
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
  ], !dbg !3402

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3403
  unreachable, !dbg !3403

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.97, i64 0, i64 0), i32 5) #11, !dbg !3405
  %20 = load i8*, i8** %4, align 8, !dbg !3405, !tbaa !722
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3405
  br label %146, !dbg !3406

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.98, i64 0, i64 0), i32 5) #11, !dbg !3407
  %24 = load i8*, i8** %4, align 8, !dbg !3407, !tbaa !722
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3407
  %26 = load i8*, i8** %25, align 8, !dbg !3407, !tbaa !722
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3407
  br label %146, !dbg !3408

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.99, i64 0, i64 0), i32 5) #11, !dbg !3409
  %30 = load i8*, i8** %4, align 8, !dbg !3409, !tbaa !722
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3409
  %32 = load i8*, i8** %31, align 8, !dbg !3409, !tbaa !722
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3409
  %34 = load i8*, i8** %33, align 8, !dbg !3409, !tbaa !722
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3409
  br label %146, !dbg !3410

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.100, i64 0, i64 0), i32 5) #11, !dbg !3411
  %38 = load i8*, i8** %4, align 8, !dbg !3411, !tbaa !722
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3411
  %40 = load i8*, i8** %39, align 8, !dbg !3411, !tbaa !722
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3411
  %42 = load i8*, i8** %41, align 8, !dbg !3411, !tbaa !722
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3411
  %44 = load i8*, i8** %43, align 8, !dbg !3411, !tbaa !722
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3411
  br label %146, !dbg !3412

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.101, i64 0, i64 0), i32 5) #11, !dbg !3413
  %48 = load i8*, i8** %4, align 8, !dbg !3413, !tbaa !722
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3413
  %50 = load i8*, i8** %49, align 8, !dbg !3413, !tbaa !722
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3413
  %52 = load i8*, i8** %51, align 8, !dbg !3413, !tbaa !722
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3413
  %54 = load i8*, i8** %53, align 8, !dbg !3413, !tbaa !722
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3413
  %56 = load i8*, i8** %55, align 8, !dbg !3413, !tbaa !722
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3413
  br label %146, !dbg !3414

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.102, i64 0, i64 0), i32 5) #11, !dbg !3415
  %60 = load i8*, i8** %4, align 8, !dbg !3415, !tbaa !722
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3415
  %62 = load i8*, i8** %61, align 8, !dbg !3415, !tbaa !722
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3415
  %64 = load i8*, i8** %63, align 8, !dbg !3415, !tbaa !722
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3415
  %66 = load i8*, i8** %65, align 8, !dbg !3415, !tbaa !722
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3415
  %68 = load i8*, i8** %67, align 8, !dbg !3415, !tbaa !722
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3415
  %70 = load i8*, i8** %69, align 8, !dbg !3415, !tbaa !722
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3415
  br label %146, !dbg !3416

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.103, i64 0, i64 0), i32 5) #11, !dbg !3417
  %74 = load i8*, i8** %4, align 8, !dbg !3417, !tbaa !722
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3417
  %76 = load i8*, i8** %75, align 8, !dbg !3417, !tbaa !722
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3417
  %78 = load i8*, i8** %77, align 8, !dbg !3417, !tbaa !722
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3417
  %80 = load i8*, i8** %79, align 8, !dbg !3417, !tbaa !722
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3417
  %82 = load i8*, i8** %81, align 8, !dbg !3417, !tbaa !722
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3417
  %84 = load i8*, i8** %83, align 8, !dbg !3417, !tbaa !722
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3417
  %86 = load i8*, i8** %85, align 8, !dbg !3417, !tbaa !722
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3417
  br label %146, !dbg !3418

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.104, i64 0, i64 0), i32 5) #11, !dbg !3419
  %90 = load i8*, i8** %4, align 8, !dbg !3419, !tbaa !722
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3419
  %92 = load i8*, i8** %91, align 8, !dbg !3419, !tbaa !722
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3419
  %94 = load i8*, i8** %93, align 8, !dbg !3419, !tbaa !722
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3419
  %96 = load i8*, i8** %95, align 8, !dbg !3419, !tbaa !722
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3419
  %98 = load i8*, i8** %97, align 8, !dbg !3419, !tbaa !722
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3419
  %100 = load i8*, i8** %99, align 8, !dbg !3419, !tbaa !722
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3419
  %102 = load i8*, i8** %101, align 8, !dbg !3419, !tbaa !722
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3419
  %104 = load i8*, i8** %103, align 8, !dbg !3419, !tbaa !722
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3419
  br label %146, !dbg !3420

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.105, i64 0, i64 0), i32 5) #11, !dbg !3421
  %108 = load i8*, i8** %4, align 8, !dbg !3421, !tbaa !722
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3421
  %110 = load i8*, i8** %109, align 8, !dbg !3421, !tbaa !722
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3421
  %112 = load i8*, i8** %111, align 8, !dbg !3421, !tbaa !722
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3421
  %114 = load i8*, i8** %113, align 8, !dbg !3421, !tbaa !722
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3421
  %116 = load i8*, i8** %115, align 8, !dbg !3421, !tbaa !722
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3421
  %118 = load i8*, i8** %117, align 8, !dbg !3421, !tbaa !722
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3421
  %120 = load i8*, i8** %119, align 8, !dbg !3421, !tbaa !722
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3421
  %122 = load i8*, i8** %121, align 8, !dbg !3421, !tbaa !722
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3421
  %124 = load i8*, i8** %123, align 8, !dbg !3421, !tbaa !722
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3421
  br label %146, !dbg !3422

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.106, i64 0, i64 0), i32 5) #11, !dbg !3423
  %128 = load i8*, i8** %4, align 8, !dbg !3423, !tbaa !722
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3423
  %130 = load i8*, i8** %129, align 8, !dbg !3423, !tbaa !722
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3423
  %132 = load i8*, i8** %131, align 8, !dbg !3423, !tbaa !722
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3423
  %134 = load i8*, i8** %133, align 8, !dbg !3423, !tbaa !722
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3423
  %136 = load i8*, i8** %135, align 8, !dbg !3423, !tbaa !722
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3423
  %138 = load i8*, i8** %137, align 8, !dbg !3423, !tbaa !722
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3423
  %140 = load i8*, i8** %139, align 8, !dbg !3423, !tbaa !722
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3423
  %142 = load i8*, i8** %141, align 8, !dbg !3423, !tbaa !722
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3423
  %144 = load i8*, i8** %143, align 8, !dbg !3423, !tbaa !722
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3423
  br label %146, !dbg !3424

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3425
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3426 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3430, metadata !715), !dbg !3436
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3431, metadata !715), !dbg !3437
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3432, metadata !715), !dbg !3438
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3433, metadata !715), !dbg !3439
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3434, metadata !715), !dbg !3440
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3435, metadata !715), !dbg !3441
  br label %6, !dbg !3442

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3435, metadata !715), !dbg !3441
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3444
  %9 = load i8*, i8** %8, align 8, !dbg !3444, !tbaa !722
  %10 = icmp eq i8* %9, null, !dbg !3446
  %11 = add i64 %7, 1, !dbg !3447
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3435, metadata !715), !dbg !3441
  br i1 %10, label %12, label %6, !dbg !3446, !llvm.loop !3448

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3450
  ret void, !dbg !3451
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3452 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3463, metadata !715), !dbg !3471
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3464, metadata !715), !dbg !3472
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3465, metadata !715), !dbg !3473
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3466, metadata !715), !dbg !3474
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3467, metadata !715), !dbg !3475
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3476
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3476
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3469, metadata !715), !dbg !3477
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3468, metadata !715), !dbg !3478
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3468, metadata !715), !dbg !3478
  %11 = load i32, i32* %8, align 8, !dbg !3479
  %12 = icmp ult i32 %11, 41, !dbg !3479
  br i1 %12, label %13, label %18, !dbg !3479

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3479
  %15 = sext i32 %11 to i64, !dbg !3479
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3479
  %17 = add i32 %11, 8, !dbg !3479
  store i32 %17, i32* %8, align 8, !dbg !3479
  br label %21, !dbg !3479

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3479
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3479
  store i8* %20, i8** %10, align 8, !dbg !3479
  br label %21, !dbg !3479

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3479
  %25 = load i8*, i8** %24, align 8, !dbg !3479
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3482
  store i8* %25, i8** %26, align 16, !dbg !3483, !tbaa !722
  %27 = icmp eq i8* %25, null, !dbg !3484
  br i1 %27, label %30, label %28, !dbg !3485

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3468, metadata !715), !dbg !3478
  %29 = icmp ult i32 %22, 41, !dbg !3479
  br i1 %29, label %35, label %32, !dbg !3479

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3486
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3487
  ret void, !dbg !3487

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3479
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3479
  store i8* %34, i8** %10, align 8, !dbg !3479
  br label %40, !dbg !3479

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3479
  %37 = sext i32 %22 to i64, !dbg !3479
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3479
  %39 = add i32 %22, 8, !dbg !3479
  store i32 %39, i32* %8, align 8, !dbg !3479
  br label %40, !dbg !3479

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3479
  %44 = load i8*, i8** %43, align 8, !dbg !3479
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3482
  store i8* %44, i8** %45, align 8, !dbg !3483, !tbaa !722
  %46 = icmp eq i8* %44, null, !dbg !3484
  br i1 %46, label %30, label %47, !dbg !3485

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3468, metadata !715), !dbg !3478
  %48 = icmp ult i32 %41, 41, !dbg !3479
  br i1 %48, label %52, label %49, !dbg !3479

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3479
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3479
  store i8* %51, i8** %10, align 8, !dbg !3479
  br label %57, !dbg !3479

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3479
  %54 = sext i32 %41 to i64, !dbg !3479
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3479
  %56 = add i32 %41, 8, !dbg !3479
  store i32 %56, i32* %8, align 8, !dbg !3479
  br label %57, !dbg !3479

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3479
  %61 = load i8*, i8** %60, align 8, !dbg !3479
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3482
  store i8* %61, i8** %62, align 16, !dbg !3483, !tbaa !722
  %63 = icmp eq i8* %61, null, !dbg !3484
  br i1 %63, label %30, label %64, !dbg !3485

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3468, metadata !715), !dbg !3478
  %65 = icmp ult i32 %58, 41, !dbg !3479
  br i1 %65, label %69, label %66, !dbg !3479

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3479
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3479
  store i8* %68, i8** %10, align 8, !dbg !3479
  br label %74, !dbg !3479

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3479
  %71 = sext i32 %58 to i64, !dbg !3479
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3479
  %73 = add i32 %58, 8, !dbg !3479
  store i32 %73, i32* %8, align 8, !dbg !3479
  br label %74, !dbg !3479

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3479
  %78 = load i8*, i8** %77, align 8, !dbg !3479
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3482
  store i8* %78, i8** %79, align 8, !dbg !3483, !tbaa !722
  %80 = icmp eq i8* %78, null, !dbg !3484
  br i1 %80, label %30, label %81, !dbg !3485

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3468, metadata !715), !dbg !3478
  %82 = icmp ult i32 %75, 41, !dbg !3479
  br i1 %82, label %86, label %83, !dbg !3479

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3479
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3479
  store i8* %85, i8** %10, align 8, !dbg !3479
  br label %91, !dbg !3479

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3479
  %88 = sext i32 %75 to i64, !dbg !3479
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3479
  %90 = add i32 %75, 8, !dbg !3479
  store i32 %90, i32* %8, align 8, !dbg !3479
  br label %91, !dbg !3479

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3479
  %95 = load i8*, i8** %94, align 8, !dbg !3479
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3482
  store i8* %95, i8** %96, align 16, !dbg !3483, !tbaa !722
  %97 = icmp eq i8* %95, null, !dbg !3484
  br i1 %97, label %30, label %98, !dbg !3485

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3468, metadata !715), !dbg !3478
  %99 = icmp ult i32 %92, 41, !dbg !3479
  br i1 %99, label %103, label %100, !dbg !3479

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3479
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3479
  store i8* %102, i8** %10, align 8, !dbg !3479
  br label %108, !dbg !3479

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3479
  %105 = sext i32 %92 to i64, !dbg !3479
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3479
  %107 = add i32 %92, 8, !dbg !3479
  store i32 %107, i32* %8, align 8, !dbg !3479
  br label %108, !dbg !3479

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3479
  %111 = load i8*, i8** %110, align 8, !dbg !3479
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3482
  store i8* %111, i8** %112, align 8, !dbg !3483, !tbaa !722
  %113 = icmp eq i8* %111, null, !dbg !3484
  br i1 %113, label %30, label %114, !dbg !3485

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3468, metadata !715), !dbg !3478
  %115 = load i8*, i8** %10, align 8, !dbg !3479
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3479
  store i8* %116, i8** %10, align 8, !dbg !3479
  %117 = bitcast i8* %115 to i8**, !dbg !3479
  %118 = load i8*, i8** %117, align 8, !dbg !3479
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3482
  store i8* %118, i8** %119, align 16, !dbg !3483, !tbaa !722
  %120 = icmp eq i8* %118, null, !dbg !3484
  br i1 %120, label %30, label %121, !dbg !3485

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3468, metadata !715), !dbg !3478
  %122 = load i8*, i8** %10, align 8, !dbg !3479
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3479
  store i8* %123, i8** %10, align 8, !dbg !3479
  %124 = bitcast i8* %122 to i8**, !dbg !3479
  %125 = load i8*, i8** %124, align 8, !dbg !3479
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3482
  store i8* %125, i8** %126, align 8, !dbg !3483, !tbaa !722
  %127 = icmp eq i8* %125, null, !dbg !3484
  br i1 %127, label %30, label %128, !dbg !3485

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3468, metadata !715), !dbg !3478
  %129 = load i8*, i8** %10, align 8, !dbg !3479
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3479
  store i8* %130, i8** %10, align 8, !dbg !3479
  %131 = bitcast i8* %129 to i8**, !dbg !3479
  %132 = load i8*, i8** %131, align 8, !dbg !3479
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3482
  store i8* %132, i8** %133, align 16, !dbg !3483, !tbaa !722
  %134 = icmp eq i8* %132, null, !dbg !3484
  br i1 %134, label %30, label %135, !dbg !3485

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3468, metadata !715), !dbg !3478
  %136 = load i8*, i8** %10, align 8, !dbg !3479
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3479
  store i8* %137, i8** %10, align 8, !dbg !3479
  %138 = bitcast i8* %136 to i8**, !dbg !3479
  %139 = load i8*, i8** %138, align 8, !dbg !3479
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3482
  store i8* %139, i8** %140, align 8, !dbg !3483, !tbaa !722
  %141 = icmp eq i8* %139, null, !dbg !3484
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3468, metadata !715), !dbg !3478
  %142 = select i1 %141, i64 9, i64 10, !dbg !3485
  br label %30, !dbg !3485
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3488 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3492, metadata !715), !dbg !3502
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3493, metadata !715), !dbg !3503
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3494, metadata !715), !dbg !3504
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3495, metadata !715), !dbg !3505
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3506
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3506
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3496, metadata !715), !dbg !3507
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3508
  call void @llvm.va_start(i8* nonnull %6), !dbg !3508
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3509
  call void @llvm.va_end(i8* nonnull %6), !dbg !3510
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3511
  ret void, !dbg !3511
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3512 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.109, i64 0, i64 0), i32 5) #11, !dbg !3513
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.110, i64 0, i64 0)) #11, !dbg !3513
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.111, i64 0, i64 0), i32 5) #11, !dbg !3514
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.112, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.113, i64 0, i64 0)) #11, !dbg !3514
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.114, i64 0, i64 0), i32 5) #11, !dbg !3515
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3515, !tbaa !722
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !3515
  ret void, !dbg !3516
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3517 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3521, metadata !715), !dbg !3523
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3522, metadata !715), !dbg !3524
  %3 = udiv i64 9223372036854775807, %1, !dbg !3525
  %4 = icmp ult i64 %3, %0, !dbg !3525
  br i1 %4, label %5, label %6, !dbg !3527

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3528
  unreachable, !dbg !3528

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3529
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3530, metadata !715) #11, !dbg !3537
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3539
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3536, metadata !715) #11, !dbg !3540
  %9 = icmp eq i8* %8, null, !dbg !3541
  %10 = icmp ne i64 %7, 0, !dbg !3543
  %11 = and i1 %10, %9, !dbg !3544
  br i1 %11, label %12, label %13, !dbg !3544

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3545
  unreachable, !dbg !3545

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3546
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3531 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3530, metadata !715), !dbg !3547
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3548
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3536, metadata !715), !dbg !3549
  %3 = icmp eq i8* %2, null, !dbg !3550
  %4 = icmp ne i64 %0, 0, !dbg !3551
  %5 = and i1 %4, %3, !dbg !3552
  br i1 %5, label %6, label %7, !dbg !3552

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3553
  unreachable, !dbg !3553

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3554
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3555 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3559, metadata !715), !dbg !3562
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3560, metadata !715), !dbg !3563
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3561, metadata !715), !dbg !3564
  %4 = udiv i64 9223372036854775807, %2, !dbg !3565
  %5 = icmp ult i64 %4, %1, !dbg !3565
  br i1 %5, label %6, label %7, !dbg !3567

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3568
  unreachable, !dbg !3568

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3569
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3570, metadata !715) #11, !dbg !3576
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3575, metadata !715) #11, !dbg !3578
  %9 = icmp eq i64 %8, 0, !dbg !3579
  %10 = icmp ne i8* %0, null, !dbg !3581
  %11 = and i1 %10, %9, !dbg !3582
  br i1 %11, label %12, label %13, !dbg !3582

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3583
  br label %19, !dbg !3585

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3586
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3570, metadata !715) #11, !dbg !3576
  %15 = icmp eq i8* %14, null, !dbg !3587
  %16 = icmp ne i64 %8, 0, !dbg !3589
  %17 = and i1 %16, %15, !dbg !3590
  br i1 %17, label %18, label %19, !dbg !3590

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3591
  unreachable, !dbg !3591

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3592
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3571 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3570, metadata !715), !dbg !3593
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3575, metadata !715), !dbg !3594
  %3 = icmp eq i64 %1, 0, !dbg !3595
  %4 = icmp ne i8* %0, null, !dbg !3596
  %5 = and i1 %4, %3, !dbg !3597
  br i1 %5, label %6, label %7, !dbg !3597

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3598
  br label %13, !dbg !3599

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3600
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3570, metadata !715), !dbg !3593
  %9 = icmp eq i8* %8, null, !dbg !3601
  %10 = icmp ne i64 %1, 0, !dbg !3602
  %11 = and i1 %10, %9, !dbg !3603
  br i1 %11, label %12, label %13, !dbg !3603

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3604
  unreachable, !dbg !3604

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3605
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !662 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !667, metadata !715), !dbg !3606
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !668, metadata !715), !dbg !3607
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !669, metadata !715), !dbg !3608
  %4 = load i64, i64* %1, align 8, !dbg !3609, !tbaa !815
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !670, metadata !715), !dbg !3610
  %5 = icmp eq i8* %0, null, !dbg !3611
  br i1 %5, label %6, label %13, !dbg !3613

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3614
  br i1 %7, label %8, label %17, !dbg !3617

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3618
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !670, metadata !715), !dbg !3610
  %10 = icmp ugt i64 %2, 128, !dbg !3620
  %11 = zext i1 %10 to i64, !dbg !3620
  %12 = add nuw nsw i64 %9, %11, !dbg !3621
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !670, metadata !715), !dbg !3610
  br label %17, !dbg !3622

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3623
  %15 = icmp ugt i64 %14, %4, !dbg !3626
  br i1 %15, label %20, label %16, !dbg !3627

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3628
  unreachable, !dbg !3628

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !670, metadata !715), !dbg !3610
  store i64 %18, i64* %1, align 8, !dbg !3629, !tbaa !815
  %19 = mul i64 %18, %2, !dbg !3630
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3570, metadata !715) #11, !dbg !3631
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3575, metadata !715) #11, !dbg !3633
  br label %27, !dbg !3634

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3635
  %22 = add i64 %4, 1, !dbg !3636
  %23 = add i64 %22, %21, !dbg !3637
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !670, metadata !715), !dbg !3610
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !670, metadata !715), !dbg !3610
  store i64 %23, i64* %1, align 8, !dbg !3629, !tbaa !815
  %24 = mul i64 %23, %2, !dbg !3630
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3570, metadata !715) #11, !dbg !3631
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3575, metadata !715) #11, !dbg !3633
  %25 = icmp eq i64 %24, 0, !dbg !3638
  br i1 %25, label %26, label %27, !dbg !3634

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !3639
  br label %34, !dbg !3640

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !3641
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3570, metadata !715) #11, !dbg !3631
  %30 = icmp eq i8* %29, null, !dbg !3642
  %31 = icmp ne i64 %28, 0, !dbg !3643
  %32 = and i1 %31, %30, !dbg !3644
  br i1 %32, label %33, label %34, !dbg !3644

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3645
  unreachable, !dbg !3645

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3646
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3647 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3649, metadata !715), !dbg !3650
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3530, metadata !715) #11, !dbg !3651
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3653
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3536, metadata !715) #11, !dbg !3654
  %3 = icmp eq i8* %2, null, !dbg !3655
  %4 = icmp ne i64 %0, 0, !dbg !3656
  %5 = and i1 %4, %3, !dbg !3657
  br i1 %5, label %6, label %7, !dbg !3657

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3658
  unreachable, !dbg !3658

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3659
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3660 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3664, metadata !715), !dbg !3666
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3665, metadata !715), !dbg !3667
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !667, metadata !715) #11, !dbg !3668
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !668, metadata !715) #11, !dbg !3670
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !669, metadata !715) #11, !dbg !3671
  %3 = load i64, i64* %1, align 8, !dbg !3672, !tbaa !815
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !670, metadata !715) #11, !dbg !3673
  %4 = icmp eq i8* %0, null, !dbg !3674
  br i1 %4, label %5, label %8, !dbg !3675

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3676
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !670, metadata !715) #11, !dbg !3673
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !670, metadata !715) #11, !dbg !3673
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3677
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !670, metadata !715) #11, !dbg !3673
  store i64 %7, i64* %1, align 8, !dbg !3678, !tbaa !815
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3570, metadata !715) #11, !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3575, metadata !715) #11, !dbg !3681
  br label %17, !dbg !3682

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3683
  br i1 %9, label %11, label %10, !dbg !3684

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3685
  unreachable, !dbg !3685

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3686
  %13 = add i64 %3, 1, !dbg !3687
  %14 = add i64 %13, %12, !dbg !3688
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !670, metadata !715) #11, !dbg !3673
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !670, metadata !715) #11, !dbg !3673
  store i64 %14, i64* %1, align 8, !dbg !3678, !tbaa !815
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3570, metadata !715) #11, !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3575, metadata !715) #11, !dbg !3681
  %15 = icmp eq i64 %14, 0, !dbg !3689
  br i1 %15, label %16, label %17, !dbg !3682

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3690
  br label %24, !dbg !3691

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3692
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3570, metadata !715) #11, !dbg !3679
  %20 = icmp eq i8* %19, null, !dbg !3693
  %21 = icmp ne i64 %18, 0, !dbg !3694
  %22 = and i1 %21, %20, !dbg !3695
  br i1 %22, label %23, label %24, !dbg !3695

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3696
  unreachable, !dbg !3696

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3697
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3698 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3700, metadata !715), !dbg !3701
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3530, metadata !715) #11, !dbg !3702
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3704
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3536, metadata !715) #11, !dbg !3705
  %3 = icmp eq i8* %2, null, !dbg !3706
  %4 = icmp ne i64 %0, 0, !dbg !3707
  %5 = and i1 %4, %3, !dbg !3708
  br i1 %5, label %6, label %7, !dbg !3708

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3709
  unreachable, !dbg !3709

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3710
  ret i8* %2, !dbg !3711
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3712 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3714, metadata !715), !dbg !3717
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3715, metadata !715), !dbg !3718
  %3 = udiv i64 9223372036854775807, %1, !dbg !3719
  %4 = icmp ult i64 %3, %0, !dbg !3719
  br i1 %4, label %8, label %5, !dbg !3721

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3722
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3716, metadata !715), !dbg !3723
  %7 = icmp eq i8* %6, null, !dbg !3724
  br i1 %7, label %8, label %9, !dbg !3725

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3726
  unreachable, !dbg !3726

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3727
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3728 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3734, metadata !715), !dbg !3736
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3735, metadata !715), !dbg !3737
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3530, metadata !715) #11, !dbg !3738
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3740
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3536, metadata !715) #11, !dbg !3741
  %4 = icmp eq i8* %3, null, !dbg !3742
  %5 = icmp ne i64 %1, 0, !dbg !3743
  %6 = and i1 %5, %4, !dbg !3744
  br i1 %6, label %7, label %8, !dbg !3744

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3745
  unreachable, !dbg !3745

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3746
  ret i8* %3, !dbg !3747
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3748 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3750, metadata !715), !dbg !3751
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3752
  %3 = add i64 %2, 1, !dbg !3753
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3734, metadata !715) #11, !dbg !3754
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3735, metadata !715) #11, !dbg !3756
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3530, metadata !715) #11, !dbg !3757
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3759
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3536, metadata !715) #11, !dbg !3760
  %5 = icmp eq i8* %4, null, !dbg !3761
  %6 = icmp ne i64 %3, 0, !dbg !3762
  %7 = and i1 %6, %5, !dbg !3763
  br i1 %7, label %8, label %9, !dbg !3763

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3764
  unreachable, !dbg !3764

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3765
  ret i8* %4, !dbg !3766
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3767 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3769, !tbaa !836
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.127, i64 0, i64 0), i32 5) #11, !dbg !3770
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i64 0, i64 0), i8* %2) #11, !dbg !3771
  tail call void @abort() #15, !dbg !3772
  unreachable, !dbg !3772
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoimax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !3773 {
  %8 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3778, metadata !715), !dbg !3788
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3779, metadata !715), !dbg !3789
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3780, metadata !715), !dbg !3790
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3781, metadata !715), !dbg !3791
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3782, metadata !715), !dbg !3792
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3783, metadata !715), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3784, metadata !715), !dbg !3794
  %9 = bitcast i64* %8 to i8*, !dbg !3795
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #11, !dbg !3795
  tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !3787, metadata !715), !dbg !3796
  %10 = call i32 @xstrtoimax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #11, !dbg !3797
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3785, metadata !715), !dbg !3798
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %26
    i32 3, label %28
  ], !dbg !3799

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #17, !dbg !3800
  br label %30, !dbg !3799

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3803, !tbaa !815
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3787, metadata !715), !dbg !3796
  %15 = icmp slt i64 %14, %2, !dbg !3807
  %16 = icmp sgt i64 %14, %3, !dbg !3808
  %17 = or i1 %15, %16, !dbg !3809
  br i1 %17, label %18, label %39, !dbg !3809

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3785, metadata !715), !dbg !3798
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3787, metadata !715), !dbg !3796
  %19 = icmp sgt i64 %14, 1073741823, !dbg !3810
  br i1 %19, label %20, label %22, !dbg !3813

; <label>:20:                                     ; preds = %18
  %21 = tail call i32* @__errno_location() #17, !dbg !3814
  store i32 75, i32* %21, align 4, !dbg !3815, !tbaa !836
  br label %30, !dbg !3814

; <label>:22:                                     ; preds = %18
  %23 = icmp slt i64 %14, -1073741824, !dbg !3816
  %24 = tail call i32* @__errno_location() #17, !dbg !3818
  %25 = select i1 %23, i32 75, i32 34, !dbg !3819
  store i32 %25, i32* %24, align 4, !tbaa !836
  br label %30

; <label>:26:                                     ; preds = %7
  %27 = tail call i32* @__errno_location() #17, !dbg !3820
  store i32 75, i32* %27, align 4, !dbg !3822, !tbaa !836
  br label %30, !dbg !3820

; <label>:28:                                     ; preds = %7
  %29 = tail call i32* @__errno_location() #17, !dbg !3823
  store i32 0, i32* %29, align 4, !dbg !3825, !tbaa !836
  br label %30, !dbg !3823

; <label>:30:                                     ; preds = %11, %20, %22, %26, %28
  %31 = phi i32* [ %12, %11 ], [ %21, %20 ], [ %24, %22 ], [ %27, %26 ], [ %29, %28 ], !dbg !3800
  %32 = icmp eq i32 %6, 0, !dbg !3826
  %33 = select i1 %32, i32 1, i32 %6, !dbg !3826
  %34 = load i32, i32* %31, align 4, !dbg !3800, !tbaa !836
  %35 = icmp eq i32 %34, 22, !dbg !3827
  %36 = select i1 %35, i32 0, i32 %34, !dbg !3800
  %37 = call i8* @quote(i8* %0) #11, !dbg !3828
  call void (i32, i32, i8*, ...) @error(i32 %33, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i64 0, i64 0), i8* %5, i8* %37) #11, !dbg !3829
  %38 = load i64, i64* %8, align 8, !dbg !3830, !tbaa !815
  br label %39, !dbg !3831

; <label>:39:                                     ; preds = %13, %30
  %40 = phi i64 [ %14, %13 ], [ %38, %30 ], !dbg !3830
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !3787, metadata !715), !dbg !3796
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #11, !dbg !3832
  ret i64 %40, !dbg !3833
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoimax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !3834 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3838, metadata !715), !dbg !3844
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3839, metadata !715), !dbg !3845
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3840, metadata !715), !dbg !3846
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3841, metadata !715), !dbg !3847
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3842, metadata !715), !dbg !3848
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3843, metadata !715), !dbg !3849
  %7 = tail call i64 @xnumtoimax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3850
  ret i64 %7, !dbg !3851
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoimax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !3852 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3858, metadata !715), !dbg !3872
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3859, metadata !715), !dbg !3873
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3860, metadata !715), !dbg !3874
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !3861, metadata !715), !dbg !3875
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3862, metadata !715), !dbg !3876
  %7 = bitcast i8** %6 to i8*, !dbg !3877
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #11, !dbg !3877
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3866, metadata !715), !dbg !3878
  %8 = icmp ult i32 %2, 37, !dbg !3879
  br i1 %8, label %10, label %9, !dbg !3879

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.134, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.135, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.xstrtoimax, i64 0, i64 0)) #15, !dbg !3879
  unreachable, !dbg !3879

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3882
  %12 = select i1 %11, i8** %6, i8** %1, !dbg !3882
  tail call void @llvm.dbg.value(metadata i8** %12, i64 0, metadata !3864, metadata !715), !dbg !3883
  %13 = tail call i32* @__errno_location() #17, !dbg !3884
  store i32 0, i32* %13, align 4, !dbg !3885, !tbaa !836
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3886, metadata !715) #11, !dbg !3895
  tail call void @llvm.dbg.value(metadata i8** %12, i64 0, metadata !3893, metadata !715) #11, !dbg !3895
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3894, metadata !715) #11, !dbg !3895
  %14 = call i64 @__strtol_internal(i8* %0, i8** %12, i32 %2, i32 0) #11, !dbg !3897
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3865, metadata !715), !dbg !3898
  %15 = load i8*, i8** %12, align 8, !dbg !3899, !tbaa !722
  %16 = icmp eq i8* %15, %0, !dbg !3901
  br i1 %16, label %17, label %26, !dbg !3902

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i8* %4, null, !dbg !3903
  br i1 %18, label %196, label %19, !dbg !3906

; <label>:19:                                     ; preds = %17
  %20 = load i8, i8* %0, align 1, !dbg !3907, !tbaa !937
  %21 = icmp eq i8 %20, 0, !dbg !3907
  br i1 %21, label %196, label %22, !dbg !3908

; <label>:22:                                     ; preds = %19
  %23 = sext i8 %20 to i32, !dbg !3907
  %24 = call i8* @strchr(i8* nonnull %4, i32 %23) #14, !dbg !3909
  %25 = icmp eq i8* %24, null, !dbg !3909
  br i1 %25, label %196, label %33, !dbg !3910

; <label>:26:                                     ; preds = %10
  %27 = load i32, i32* %13, align 4, !dbg !3911, !tbaa !836
  switch i32 %27, label %196 [
    i32 0, label %29
    i32 34, label %28
  ], !dbg !3913

; <label>:28:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3866, metadata !715), !dbg !3878
  br label %29, !dbg !3914

; <label>:29:                                     ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ 0, %26 ]
  call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !3866, metadata !715), !dbg !3878
  %31 = icmp eq i8* %4, null, !dbg !3916
  br i1 %31, label %32, label %33, !dbg !3918

; <label>:32:                                     ; preds = %29
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3865, metadata !715), !dbg !3898
  store i64 %14, i64* %3, align 8, !dbg !3919, !tbaa !815
  br label %196, !dbg !3921

; <label>:33:                                     ; preds = %22, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %35 = phi i64 [ %14, %29 ], [ 1, %22 ]
  %36 = load i8, i8* %15, align 1, !dbg !3922, !tbaa !937
  %37 = sext i8 %36 to i32, !dbg !3922
  %38 = icmp eq i8 %36, 0, !dbg !3923
  br i1 %38, label %193, label %39, !dbg !3924

; <label>:39:                                     ; preds = %33
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3867, metadata !715), !dbg !3925
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3870, metadata !715), !dbg !3926
  %40 = call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !3927
  %41 = icmp eq i8* %40, null, !dbg !3927
  br i1 %41, label %42, label %44, !dbg !3929

; <label>:42:                                     ; preds = %39
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3865, metadata !715), !dbg !3898
  store i64 %35, i64* %3, align 8, !dbg !3930, !tbaa !815
  %43 = or i32 %34, 2, !dbg !3932
  br label %196, !dbg !3933

; <label>:44:                                     ; preds = %39
  switch i32 %37, label %58 [
    i32 69, label %45
    i32 71, label %45
    i32 103, label %45
    i32 107, label %45
    i32 75, label %45
    i32 77, label %45
    i32 109, label %45
    i32 80, label %45
    i32 84, label %45
    i32 116, label %45
    i32 89, label %45
    i32 90, label %45
  ], !dbg !3934

; <label>:45:                                     ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %46 = call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !3935
  %47 = icmp eq i8* %46, null, !dbg !3935
  br i1 %47, label %58, label %48, !dbg !3938

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !3939
  %50 = load i8, i8* %49, align 1, !dbg !3939, !tbaa !937
  %51 = sext i8 %50 to i32, !dbg !3939
  switch i32 %51, label %58 [
    i32 105, label %52
    i32 66, label %57
    i32 68, label %57
  ], !dbg !3940

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !3941
  %54 = load i8, i8* %53, align 1, !dbg !3941, !tbaa !937
  %55 = icmp eq i8 %54, 66, !dbg !3944
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3870, metadata !715), !dbg !3926
  %56 = select i1 %55, i64 3, i64 1, !dbg !3945
  br label %58, !dbg !3945

; <label>:57:                                     ; preds = %48, %48
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !3867, metadata !715), !dbg !3925
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3870, metadata !715), !dbg !3926
  br label %58, !dbg !3946

; <label>:58:                                     ; preds = %52, %45, %48, %57, %44
  %59 = phi i64 [ 1024, %44 ], [ 1024, %48 ], [ 1000, %57 ], [ 1024, %45 ], [ 1024, %52 ]
  %60 = phi i64 [ 1, %44 ], [ 1, %48 ], [ 2, %57 ], [ 1, %45 ], [ %56, %52 ]
  switch i32 %37, label %182 [
    i32 98, label %61
    i32 66, label %68
    i32 99, label %184
    i32 69, label %75
    i32 71, label %88
    i32 103, label %88
    i32 107, label %101
    i32 75, label %101
    i32 77, label %110
    i32 109, label %110
    i32 80, label %123
    i32 84, label %136
    i32 116, label %136
    i32 119, label %149
    i32 89, label %156
    i32 90, label %169
  ], !dbg !3947

; <label>:61:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !3948, metadata !715), !dbg !3954
  %62 = icmp slt i64 %35, -18014398509481984, !dbg !3957
  br i1 %62, label %184, label %63, !dbg !3959

; <label>:63:                                     ; preds = %61
  %64 = icmp sgt i64 %35, 18014398509481983, !dbg !3960
  %65 = shl nsw i64 %35, 9, !dbg !3962
  %66 = select i1 %64, i64 9223372036854775807, i64 %65, !dbg !3963
  %67 = zext i1 %64 to i32, !dbg !3963
  br label %184, !dbg !3963

; <label>:68:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3948, metadata !715), !dbg !3964
  %69 = icmp slt i64 %35, -9007199254740992, !dbg !3966
  br i1 %69, label %184, label %70, !dbg !3967

; <label>:70:                                     ; preds = %68
  %71 = icmp sgt i64 %35, 9007199254740991, !dbg !3968
  %72 = shl nsw i64 %35, 10, !dbg !3969
  %73 = select i1 %71, i64 9223372036854775807, i64 %72, !dbg !3970
  %74 = zext i1 %71 to i32, !dbg !3970
  br label %184, !dbg !3970

; <label>:75:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !3981
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !3981
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !3979
  %76 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !3981
  %77 = icmp slt i64 %35, %76, !dbg !3982
  br i1 %77, label %84, label %78, !dbg !3984

; <label>:78:                                     ; preds = %75
  %79 = udiv i64 9223372036854775807, %59, !dbg !3985
  %80 = icmp slt i64 %79, %35, !dbg !3986
  %81 = mul nsw i64 %35, %59, !dbg !3987
  %82 = select i1 %80, i64 9223372036854775807, i64 %81, !dbg !3988
  %83 = zext i1 %80 to i32, !dbg !3988
  br label %84, !dbg !3988

; <label>:84:                                     ; preds = %78, %75
  %85 = phi i64 [ -9223372036854775808, %75 ], [ %82, %78 ]
  %86 = phi i32 [ 1, %75 ], [ %83, %78 ]
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3978, metadata !715), !dbg !3981
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3978, metadata !715), !dbg !3981
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !3981
  %87 = icmp slt i64 %85, %76, !dbg !3982
  br i1 %87, label %204, label %198, !dbg !3984

; <label>:88:                                     ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3971, metadata !715), !dbg !3989
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !3991
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !3991
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3971, metadata !715), !dbg !3989
  %89 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3971, metadata !715), !dbg !3989
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !3991
  %90 = icmp slt i64 %35, %89, !dbg !3992
  br i1 %90, label %97, label %91, !dbg !3994

; <label>:91:                                     ; preds = %88
  %92 = udiv i64 9223372036854775807, %59, !dbg !3995
  %93 = icmp slt i64 %92, %35, !dbg !3996
  %94 = mul nsw i64 %35, %59, !dbg !3997
  %95 = select i1 %93, i64 9223372036854775807, i64 %94, !dbg !3998
  %96 = zext i1 %93 to i32, !dbg !3998
  br label %97, !dbg !3998

; <label>:97:                                     ; preds = %91, %88
  %98 = phi i64 [ -9223372036854775808, %88 ], [ %95, %91 ]
  %99 = phi i32 [ 1, %88 ], [ %96, %91 ]
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3978, metadata !715), !dbg !3991
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3978, metadata !715), !dbg !3991
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3971, metadata !715), !dbg !3989
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3971, metadata !715), !dbg !3989
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3971, metadata !715), !dbg !3989
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !3991
  %100 = icmp slt i64 %98, %89, !dbg !3992
  br i1 %100, label %258, label %252, !dbg !3994

; <label>:101:                                    ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3971, metadata !715), !dbg !3999
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4001
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4001
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3971, metadata !715), !dbg !3999
  %102 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3971, metadata !715), !dbg !3999
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4001
  %103 = icmp slt i64 %35, %102, !dbg !4002
  br i1 %103, label %184, label %104, !dbg !4004

; <label>:104:                                    ; preds = %101
  %105 = udiv i64 9223372036854775807, %59, !dbg !4005
  %106 = icmp slt i64 %105, %35, !dbg !4006
  %107 = mul nsw i64 %35, %59, !dbg !4007
  %108 = select i1 %106, i64 9223372036854775807, i64 %107, !dbg !4008
  %109 = zext i1 %106 to i32, !dbg !4008
  br label %184, !dbg !4008

; <label>:110:                                    ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3971, metadata !715), !dbg !4009
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4011
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4011
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3971, metadata !715), !dbg !4009
  %111 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3971, metadata !715), !dbg !4009
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4011
  %112 = icmp slt i64 %35, %111, !dbg !4012
  br i1 %112, label %119, label %113, !dbg !4014

; <label>:113:                                    ; preds = %110
  %114 = udiv i64 9223372036854775807, %59, !dbg !4015
  %115 = icmp slt i64 %114, %35, !dbg !4016
  %116 = mul nsw i64 %35, %59, !dbg !4017
  %117 = select i1 %115, i64 9223372036854775807, i64 %116, !dbg !4018
  %118 = zext i1 %115 to i32, !dbg !4018
  br label %119, !dbg !4018

; <label>:119:                                    ; preds = %113, %110
  %120 = phi i64 [ -9223372036854775808, %110 ], [ %117, %113 ]
  %121 = phi i32 [ 1, %110 ], [ %118, %113 ]
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3978, metadata !715), !dbg !4011
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3978, metadata !715), !dbg !4011
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3971, metadata !715), !dbg !4009
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3971, metadata !715), !dbg !4009
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3971, metadata !715), !dbg !4009
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4011
  %122 = icmp slt i64 %120, %111, !dbg !4012
  br i1 %122, label %279, label %273, !dbg !4014

; <label>:123:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4021
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4021
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !4019
  %124 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4021
  %125 = icmp slt i64 %35, %124, !dbg !4022
  br i1 %125, label %132, label %126, !dbg !4024

; <label>:126:                                    ; preds = %123
  %127 = udiv i64 9223372036854775807, %59, !dbg !4025
  %128 = icmp slt i64 %127, %35, !dbg !4026
  %129 = mul nsw i64 %35, %59, !dbg !4027
  %130 = select i1 %128, i64 9223372036854775807, i64 %129, !dbg !4028
  %131 = zext i1 %128 to i32, !dbg !4028
  br label %132, !dbg !4028

; <label>:132:                                    ; preds = %126, %123
  %133 = phi i64 [ -9223372036854775808, %123 ], [ %130, %126 ]
  %134 = phi i32 [ 1, %123 ], [ %131, %126 ]
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3978, metadata !715), !dbg !4021
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3978, metadata !715), !dbg !4021
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3971, metadata !715), !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3971, metadata !715), !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4021
  %135 = icmp slt i64 %133, %124, !dbg !4022
  br i1 %135, label %289, label %283, !dbg !4024

; <label>:136:                                    ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3971, metadata !715), !dbg !4029
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4031
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4031
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3971, metadata !715), !dbg !4029
  %137 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3971, metadata !715), !dbg !4029
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4031
  %138 = icmp slt i64 %35, %137, !dbg !4032
  br i1 %138, label %145, label %139, !dbg !4034

; <label>:139:                                    ; preds = %136
  %140 = udiv i64 9223372036854775807, %59, !dbg !4035
  %141 = icmp slt i64 %140, %35, !dbg !4036
  %142 = mul nsw i64 %35, %59, !dbg !4037
  %143 = select i1 %141, i64 9223372036854775807, i64 %142, !dbg !4038
  %144 = zext i1 %141 to i32, !dbg !4038
  br label %145, !dbg !4038

; <label>:145:                                    ; preds = %139, %136
  %146 = phi i64 [ -9223372036854775808, %136 ], [ %143, %139 ]
  %147 = phi i32 [ 1, %136 ], [ %144, %139 ]
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3978, metadata !715), !dbg !4031
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3978, metadata !715), !dbg !4031
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3971, metadata !715), !dbg !4029
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3971, metadata !715), !dbg !4029
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3971, metadata !715), !dbg !4029
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4031
  %148 = icmp slt i64 %146, %137, !dbg !4032
  br i1 %148, label %332, label %326, !dbg !4034

; <label>:149:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3948, metadata !715), !dbg !4039
  %150 = icmp slt i64 %35, -4611686018427387904, !dbg !4041
  br i1 %150, label %184, label %151, !dbg !4042

; <label>:151:                                    ; preds = %149
  %152 = icmp sgt i64 %35, 4611686018427387903, !dbg !4043
  %153 = shl nsw i64 %35, 1, !dbg !4044
  %154 = select i1 %152, i64 9223372036854775807, i64 %153, !dbg !4045
  %155 = zext i1 %152 to i32, !dbg !4045
  br label %184, !dbg !4045

; <label>:156:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3971, metadata !715), !dbg !4046
  %157 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4048
  %158 = icmp slt i64 %35, %157, !dbg !4049
  br i1 %158, label %165, label %159, !dbg !4051

; <label>:159:                                    ; preds = %156
  %160 = udiv i64 9223372036854775807, %59, !dbg !4052
  %161 = icmp slt i64 %160, %35, !dbg !4053
  %162 = mul nsw i64 %35, %59, !dbg !4054
  %163 = select i1 %161, i64 9223372036854775807, i64 %162, !dbg !4055
  %164 = zext i1 %161 to i32, !dbg !4055
  br label %165, !dbg !4055

; <label>:165:                                    ; preds = %159, %156
  %166 = phi i64 [ -9223372036854775808, %156 ], [ %163, %159 ]
  %167 = phi i32 [ 1, %156 ], [ %164, %159 ]
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3978, metadata !715), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3978, metadata !715), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4048
  %168 = icmp slt i64 %166, %157, !dbg !4049
  br i1 %168, label %364, label %358, !dbg !4051

; <label>:169:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4056
  %170 = sdiv i64 -9223372036854775808, %59
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4058
  %171 = icmp slt i64 %35, %170, !dbg !4059
  br i1 %171, label %178, label %172, !dbg !4061

; <label>:172:                                    ; preds = %169
  %173 = udiv i64 9223372036854775807, %59, !dbg !4062
  %174 = icmp slt i64 %173, %35, !dbg !4063
  %175 = mul nsw i64 %35, %59, !dbg !4064
  %176 = select i1 %174, i64 9223372036854775807, i64 %175, !dbg !4065
  %177 = zext i1 %174 to i32, !dbg !4065
  br label %178, !dbg !4065

; <label>:178:                                    ; preds = %172, %169
  %179 = phi i64 [ -9223372036854775808, %169 ], [ %176, %172 ]
  %180 = phi i32 [ 1, %169 ], [ %177, %172 ]
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3978, metadata !715), !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3978, metadata !715), !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4058
  %181 = icmp slt i64 %179, %170, !dbg !4059
  br i1 %181, label %440, label %434, !dbg !4061

; <label>:182:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3865, metadata !715), !dbg !3898
  store i64 %35, i64* %3, align 8, !dbg !4066, !tbaa !815
  %183 = or i32 %34, 2, !dbg !4067
  br label %196, !dbg !4068

; <label>:184:                                    ; preds = %101, %104, %495, %430, %354, %322, %279, %269, %248, %58, %61, %63, %68, %70, %149, %151
  %185 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ %66, %63 ], [ -9223372036854775808, %68 ], [ %73, %70 ], [ -9223372036854775808, %149 ], [ %154, %151 ], [ %249, %248 ], [ %270, %269 ], [ %280, %279 ], [ %323, %322 ], [ %355, %354 ], [ %431, %430 ], [ %496, %495 ], [ -9223372036854775808, %101 ], [ %108, %104 ]
  %186 = phi i32 [ 0, %58 ], [ 1, %61 ], [ %67, %63 ], [ 1, %68 ], [ %74, %70 ], [ 1, %149 ], [ %155, %151 ], [ %251, %248 ], [ %272, %269 ], [ %282, %279 ], [ %325, %322 ], [ %357, %354 ], [ %433, %430 ], [ %498, %495 ], [ 1, %101 ], [ %109, %104 ]
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !3871, metadata !715), !dbg !4069
  %187 = or i32 %186, %34, !dbg !4070
  call void @llvm.dbg.value(metadata i32 %187, i64 0, metadata !3866, metadata !715), !dbg !3878
  %188 = getelementptr inbounds i8, i8* %15, i64 %60, !dbg !4071
  store i8* %188, i8** %12, align 8, !dbg !4071, !tbaa !722
  %189 = load i8, i8* %188, align 1, !dbg !4072, !tbaa !937
  %190 = icmp eq i8 %189, 0, !dbg !4072
  %191 = or i32 %187, 2, !dbg !4074
  call void @llvm.dbg.value(metadata i32 %191, i64 0, metadata !3866, metadata !715), !dbg !3878
  %192 = select i1 %190, i32 %187, i32 %191, !dbg !4075
  call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !3866, metadata !715), !dbg !3878
  call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !3866, metadata !715), !dbg !3878
  br label %193

; <label>:193:                                    ; preds = %184, %33
  %194 = phi i64 [ %35, %33 ], [ %185, %184 ]
  %195 = phi i32 [ %34, %33 ], [ %192, %184 ]
  call void @llvm.dbg.value(metadata i32 %195, i64 0, metadata !3866, metadata !715), !dbg !3878
  call void @llvm.dbg.value(metadata i64 %194, i64 0, metadata !3865, metadata !715), !dbg !3898
  store i64 %194, i64* %3, align 8, !dbg !4076, !tbaa !815
  br label %196, !dbg !4077

; <label>:196:                                    ; preds = %42, %182, %26, %17, %19, %22, %193, %32
  %197 = phi i32 [ %195, %193 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %183, %182 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #11, !dbg !4078
  ret i32 %197, !dbg !4078

; <label>:198:                                    ; preds = %84
  %199 = udiv i64 9223372036854775807, %59, !dbg !3985
  %200 = icmp slt i64 %199, %85, !dbg !3986
  %201 = mul nsw i64 %85, %59, !dbg !3987
  %202 = select i1 %200, i64 9223372036854775807, i64 %201, !dbg !3988
  %203 = zext i1 %200 to i32, !dbg !3988
  br label %204, !dbg !3988

; <label>:204:                                    ; preds = %198, %84
  %205 = phi i64 [ -9223372036854775808, %84 ], [ %202, %198 ]
  %206 = phi i32 [ 1, %84 ], [ %203, %198 ]
  %207 = or i32 %206, %86, !dbg !4079
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3978, metadata !715), !dbg !3981
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3978, metadata !715), !dbg !3981
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !3981
  %208 = icmp slt i64 %205, %76, !dbg !3982
  br i1 %208, label %215, label %209, !dbg !3984

; <label>:209:                                    ; preds = %204
  %210 = udiv i64 9223372036854775807, %59, !dbg !3985
  %211 = icmp slt i64 %210, %205, !dbg !3986
  %212 = mul nsw i64 %205, %59, !dbg !3987
  %213 = select i1 %211, i64 9223372036854775807, i64 %212, !dbg !3988
  %214 = zext i1 %211 to i32, !dbg !3988
  br label %215, !dbg !3988

; <label>:215:                                    ; preds = %209, %204
  %216 = phi i64 [ -9223372036854775808, %204 ], [ %213, %209 ]
  %217 = phi i32 [ 1, %204 ], [ %214, %209 ]
  %218 = or i32 %217, %207, !dbg !4079
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3978, metadata !715), !dbg !3981
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3978, metadata !715), !dbg !3981
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !3981
  %219 = icmp slt i64 %216, %76, !dbg !3982
  br i1 %219, label %226, label %220, !dbg !3984

; <label>:220:                                    ; preds = %215
  %221 = udiv i64 9223372036854775807, %59, !dbg !3985
  %222 = icmp slt i64 %221, %216, !dbg !3986
  %223 = mul nsw i64 %216, %59, !dbg !3987
  %224 = select i1 %222, i64 9223372036854775807, i64 %223, !dbg !3988
  %225 = zext i1 %222 to i32, !dbg !3988
  br label %226, !dbg !3988

; <label>:226:                                    ; preds = %220, %215
  %227 = phi i64 [ -9223372036854775808, %215 ], [ %224, %220 ]
  %228 = phi i32 [ 1, %215 ], [ %225, %220 ]
  %229 = or i32 %228, %218, !dbg !4079
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3978, metadata !715), !dbg !3981
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3978, metadata !715), !dbg !3981
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !3981
  %230 = icmp slt i64 %227, %76, !dbg !3982
  br i1 %230, label %237, label %231, !dbg !3984

; <label>:231:                                    ; preds = %226
  %232 = udiv i64 9223372036854775807, %59, !dbg !3985
  %233 = icmp slt i64 %232, %227, !dbg !3986
  %234 = mul nsw i64 %227, %59, !dbg !3987
  %235 = select i1 %233, i64 9223372036854775807, i64 %234, !dbg !3988
  %236 = zext i1 %233 to i32, !dbg !3988
  br label %237, !dbg !3988

; <label>:237:                                    ; preds = %231, %226
  %238 = phi i64 [ -9223372036854775808, %226 ], [ %235, %231 ]
  %239 = phi i32 [ 1, %226 ], [ %236, %231 ]
  %240 = or i32 %239, %229, !dbg !4079
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3978, metadata !715), !dbg !3981
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3978, metadata !715), !dbg !3981
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !3981
  %241 = icmp slt i64 %238, %76, !dbg !3982
  br i1 %241, label %248, label %242, !dbg !3984

; <label>:242:                                    ; preds = %237
  %243 = udiv i64 9223372036854775807, %59, !dbg !3985
  %244 = icmp slt i64 %243, %238, !dbg !3986
  %245 = mul nsw i64 %238, %59, !dbg !3987
  %246 = select i1 %244, i64 9223372036854775807, i64 %245, !dbg !3988
  %247 = zext i1 %244 to i32, !dbg !3988
  br label %248, !dbg !3988

; <label>:248:                                    ; preds = %242, %237
  %249 = phi i64 [ -9223372036854775808, %237 ], [ %246, %242 ]
  %250 = phi i32 [ 1, %237 ], [ %247, %242 ]
  %251 = or i32 %250, %240, !dbg !4079
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3978, metadata !715), !dbg !3981
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3978, metadata !715), !dbg !3981
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !3979
  br label %184, !dbg !4070

; <label>:252:                                    ; preds = %97
  %253 = udiv i64 9223372036854775807, %59, !dbg !3995
  %254 = icmp slt i64 %253, %98, !dbg !3996
  %255 = mul nsw i64 %98, %59, !dbg !3997
  %256 = select i1 %254, i64 9223372036854775807, i64 %255, !dbg !3998
  %257 = zext i1 %254 to i32, !dbg !3998
  br label %258, !dbg !3998

; <label>:258:                                    ; preds = %252, %97
  %259 = phi i64 [ -9223372036854775808, %97 ], [ %256, %252 ]
  %260 = phi i32 [ 1, %97 ], [ %257, %252 ]
  %261 = or i32 %260, %99, !dbg !4080
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3978, metadata !715), !dbg !3991
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3978, metadata !715), !dbg !3991
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3971, metadata !715), !dbg !3989
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3971, metadata !715), !dbg !3989
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3971, metadata !715), !dbg !3989
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !3991
  %262 = icmp slt i64 %259, %89, !dbg !3992
  br i1 %262, label %269, label %263, !dbg !3994

; <label>:263:                                    ; preds = %258
  %264 = udiv i64 9223372036854775807, %59, !dbg !3995
  %265 = icmp slt i64 %264, %259, !dbg !3996
  %266 = mul nsw i64 %259, %59, !dbg !3997
  %267 = select i1 %265, i64 9223372036854775807, i64 %266, !dbg !3998
  %268 = zext i1 %265 to i32, !dbg !3998
  br label %269, !dbg !3998

; <label>:269:                                    ; preds = %263, %258
  %270 = phi i64 [ -9223372036854775808, %258 ], [ %267, %263 ]
  %271 = phi i32 [ 1, %258 ], [ %268, %263 ]
  %272 = or i32 %271, %261, !dbg !4080
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3978, metadata !715), !dbg !3991
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3978, metadata !715), !dbg !3991
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3971, metadata !715), !dbg !3989
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3971, metadata !715), !dbg !3989
  br label %184, !dbg !4070

; <label>:273:                                    ; preds = %119
  %274 = udiv i64 9223372036854775807, %59, !dbg !4015
  %275 = icmp slt i64 %274, %120, !dbg !4016
  %276 = mul nsw i64 %120, %59, !dbg !4017
  %277 = select i1 %275, i64 9223372036854775807, i64 %276, !dbg !4018
  %278 = zext i1 %275 to i32, !dbg !4018
  br label %279, !dbg !4018

; <label>:279:                                    ; preds = %273, %119
  %280 = phi i64 [ -9223372036854775808, %119 ], [ %277, %273 ]
  %281 = phi i32 [ 1, %119 ], [ %278, %273 ]
  %282 = or i32 %281, %121, !dbg !4081
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3978, metadata !715), !dbg !4011
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3978, metadata !715), !dbg !4011
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3971, metadata !715), !dbg !4009
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3971, metadata !715), !dbg !4009
  br label %184, !dbg !4070

; <label>:283:                                    ; preds = %132
  %284 = udiv i64 9223372036854775807, %59, !dbg !4025
  %285 = icmp slt i64 %284, %133, !dbg !4026
  %286 = mul nsw i64 %133, %59, !dbg !4027
  %287 = select i1 %285, i64 9223372036854775807, i64 %286, !dbg !4028
  %288 = zext i1 %285 to i32, !dbg !4028
  br label %289, !dbg !4028

; <label>:289:                                    ; preds = %283, %132
  %290 = phi i64 [ -9223372036854775808, %132 ], [ %287, %283 ]
  %291 = phi i32 [ 1, %132 ], [ %288, %283 ]
  %292 = or i32 %291, %134, !dbg !4082
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3978, metadata !715), !dbg !4021
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3978, metadata !715), !dbg !4021
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3971, metadata !715), !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3971, metadata !715), !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4021
  %293 = icmp slt i64 %290, %124, !dbg !4022
  br i1 %293, label %300, label %294, !dbg !4024

; <label>:294:                                    ; preds = %289
  %295 = udiv i64 9223372036854775807, %59, !dbg !4025
  %296 = icmp slt i64 %295, %290, !dbg !4026
  %297 = mul nsw i64 %290, %59, !dbg !4027
  %298 = select i1 %296, i64 9223372036854775807, i64 %297, !dbg !4028
  %299 = zext i1 %296 to i32, !dbg !4028
  br label %300, !dbg !4028

; <label>:300:                                    ; preds = %294, %289
  %301 = phi i64 [ -9223372036854775808, %289 ], [ %298, %294 ]
  %302 = phi i32 [ 1, %289 ], [ %299, %294 ]
  %303 = or i32 %302, %292, !dbg !4082
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3978, metadata !715), !dbg !4021
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3978, metadata !715), !dbg !4021
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3971, metadata !715), !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3971, metadata !715), !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4021
  %304 = icmp slt i64 %301, %124, !dbg !4022
  br i1 %304, label %311, label %305, !dbg !4024

; <label>:305:                                    ; preds = %300
  %306 = udiv i64 9223372036854775807, %59, !dbg !4025
  %307 = icmp slt i64 %306, %301, !dbg !4026
  %308 = mul nsw i64 %301, %59, !dbg !4027
  %309 = select i1 %307, i64 9223372036854775807, i64 %308, !dbg !4028
  %310 = zext i1 %307 to i32, !dbg !4028
  br label %311, !dbg !4028

; <label>:311:                                    ; preds = %305, %300
  %312 = phi i64 [ -9223372036854775808, %300 ], [ %309, %305 ]
  %313 = phi i32 [ 1, %300 ], [ %310, %305 ]
  %314 = or i32 %313, %303, !dbg !4082
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3978, metadata !715), !dbg !4021
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3978, metadata !715), !dbg !4021
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3971, metadata !715), !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3971, metadata !715), !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3971, metadata !715), !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4021
  %315 = icmp slt i64 %312, %124, !dbg !4022
  br i1 %315, label %322, label %316, !dbg !4024

; <label>:316:                                    ; preds = %311
  %317 = udiv i64 9223372036854775807, %59, !dbg !4025
  %318 = icmp slt i64 %317, %312, !dbg !4026
  %319 = mul nsw i64 %312, %59, !dbg !4027
  %320 = select i1 %318, i64 9223372036854775807, i64 %319, !dbg !4028
  %321 = zext i1 %318 to i32, !dbg !4028
  br label %322, !dbg !4028

; <label>:322:                                    ; preds = %316, %311
  %323 = phi i64 [ -9223372036854775808, %311 ], [ %320, %316 ]
  %324 = phi i32 [ 1, %311 ], [ %321, %316 ]
  %325 = or i32 %324, %314, !dbg !4082
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3978, metadata !715), !dbg !4021
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3978, metadata !715), !dbg !4021
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3971, metadata !715), !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3971, metadata !715), !dbg !4019
  br label %184, !dbg !4070

; <label>:326:                                    ; preds = %145
  %327 = udiv i64 9223372036854775807, %59, !dbg !4035
  %328 = icmp slt i64 %327, %146, !dbg !4036
  %329 = mul nsw i64 %146, %59, !dbg !4037
  %330 = select i1 %328, i64 9223372036854775807, i64 %329, !dbg !4038
  %331 = zext i1 %328 to i32, !dbg !4038
  br label %332, !dbg !4038

; <label>:332:                                    ; preds = %326, %145
  %333 = phi i64 [ -9223372036854775808, %145 ], [ %330, %326 ]
  %334 = phi i32 [ 1, %145 ], [ %331, %326 ]
  %335 = or i32 %334, %147, !dbg !4083
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3978, metadata !715), !dbg !4031
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3978, metadata !715), !dbg !4031
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3971, metadata !715), !dbg !4029
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3971, metadata !715), !dbg !4029
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3971, metadata !715), !dbg !4029
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4031
  %336 = icmp slt i64 %333, %137, !dbg !4032
  br i1 %336, label %343, label %337, !dbg !4034

; <label>:337:                                    ; preds = %332
  %338 = udiv i64 9223372036854775807, %59, !dbg !4035
  %339 = icmp slt i64 %338, %333, !dbg !4036
  %340 = mul nsw i64 %333, %59, !dbg !4037
  %341 = select i1 %339, i64 9223372036854775807, i64 %340, !dbg !4038
  %342 = zext i1 %339 to i32, !dbg !4038
  br label %343, !dbg !4038

; <label>:343:                                    ; preds = %337, %332
  %344 = phi i64 [ -9223372036854775808, %332 ], [ %341, %337 ]
  %345 = phi i32 [ 1, %332 ], [ %342, %337 ]
  %346 = or i32 %345, %335, !dbg !4083
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3978, metadata !715), !dbg !4031
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3978, metadata !715), !dbg !4031
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3971, metadata !715), !dbg !4029
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3971, metadata !715), !dbg !4029
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3971, metadata !715), !dbg !4029
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4031
  %347 = icmp slt i64 %344, %137, !dbg !4032
  br i1 %347, label %354, label %348, !dbg !4034

; <label>:348:                                    ; preds = %343
  %349 = udiv i64 9223372036854775807, %59, !dbg !4035
  %350 = icmp slt i64 %349, %344, !dbg !4036
  %351 = mul nsw i64 %344, %59, !dbg !4037
  %352 = select i1 %350, i64 9223372036854775807, i64 %351, !dbg !4038
  %353 = zext i1 %350 to i32, !dbg !4038
  br label %354, !dbg !4038

; <label>:354:                                    ; preds = %348, %343
  %355 = phi i64 [ -9223372036854775808, %343 ], [ %352, %348 ]
  %356 = phi i32 [ 1, %343 ], [ %353, %348 ]
  %357 = or i32 %356, %346, !dbg !4083
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3978, metadata !715), !dbg !4031
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3978, metadata !715), !dbg !4031
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3971, metadata !715), !dbg !4029
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3971, metadata !715), !dbg !4029
  br label %184, !dbg !4070

; <label>:358:                                    ; preds = %165
  %359 = udiv i64 9223372036854775807, %59, !dbg !4052
  %360 = icmp slt i64 %359, %166, !dbg !4053
  %361 = mul nsw i64 %166, %59, !dbg !4054
  %362 = select i1 %360, i64 9223372036854775807, i64 %361, !dbg !4055
  %363 = zext i1 %360 to i32, !dbg !4055
  br label %364, !dbg !4055

; <label>:364:                                    ; preds = %358, %165
  %365 = phi i64 [ -9223372036854775808, %165 ], [ %362, %358 ]
  %366 = phi i32 [ 1, %165 ], [ %363, %358 ]
  %367 = or i32 %366, %167, !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3978, metadata !715), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3978, metadata !715), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4048
  %368 = icmp slt i64 %365, %157, !dbg !4049
  br i1 %368, label %375, label %369, !dbg !4051

; <label>:369:                                    ; preds = %364
  %370 = udiv i64 9223372036854775807, %59, !dbg !4052
  %371 = icmp slt i64 %370, %365, !dbg !4053
  %372 = mul nsw i64 %365, %59, !dbg !4054
  %373 = select i1 %371, i64 9223372036854775807, i64 %372, !dbg !4055
  %374 = zext i1 %371 to i32, !dbg !4055
  br label %375, !dbg !4055

; <label>:375:                                    ; preds = %369, %364
  %376 = phi i64 [ -9223372036854775808, %364 ], [ %373, %369 ]
  %377 = phi i32 [ 1, %364 ], [ %374, %369 ]
  %378 = or i32 %377, %367, !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3978, metadata !715), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3978, metadata !715), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4048
  %379 = icmp slt i64 %376, %157, !dbg !4049
  br i1 %379, label %386, label %380, !dbg !4051

; <label>:380:                                    ; preds = %375
  %381 = udiv i64 9223372036854775807, %59, !dbg !4052
  %382 = icmp slt i64 %381, %376, !dbg !4053
  %383 = mul nsw i64 %376, %59, !dbg !4054
  %384 = select i1 %382, i64 9223372036854775807, i64 %383, !dbg !4055
  %385 = zext i1 %382 to i32, !dbg !4055
  br label %386, !dbg !4055

; <label>:386:                                    ; preds = %380, %375
  %387 = phi i64 [ -9223372036854775808, %375 ], [ %384, %380 ]
  %388 = phi i32 [ 1, %375 ], [ %385, %380 ]
  %389 = or i32 %388, %378, !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3978, metadata !715), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3978, metadata !715), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4048
  %390 = icmp slt i64 %387, %157, !dbg !4049
  br i1 %390, label %397, label %391, !dbg !4051

; <label>:391:                                    ; preds = %386
  %392 = udiv i64 9223372036854775807, %59, !dbg !4052
  %393 = icmp slt i64 %392, %387, !dbg !4053
  %394 = mul nsw i64 %387, %59, !dbg !4054
  %395 = select i1 %393, i64 9223372036854775807, i64 %394, !dbg !4055
  %396 = zext i1 %393 to i32, !dbg !4055
  br label %397, !dbg !4055

; <label>:397:                                    ; preds = %391, %386
  %398 = phi i64 [ -9223372036854775808, %386 ], [ %395, %391 ]
  %399 = phi i32 [ 1, %386 ], [ %396, %391 ]
  %400 = or i32 %399, %389, !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3978, metadata !715), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3978, metadata !715), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4048
  %401 = icmp slt i64 %398, %157, !dbg !4049
  br i1 %401, label %408, label %402, !dbg !4051

; <label>:402:                                    ; preds = %397
  %403 = udiv i64 9223372036854775807, %59, !dbg !4052
  %404 = icmp slt i64 %403, %398, !dbg !4053
  %405 = mul nsw i64 %398, %59, !dbg !4054
  %406 = select i1 %404, i64 9223372036854775807, i64 %405, !dbg !4055
  %407 = zext i1 %404 to i32, !dbg !4055
  br label %408, !dbg !4055

; <label>:408:                                    ; preds = %402, %397
  %409 = phi i64 [ -9223372036854775808, %397 ], [ %406, %402 ]
  %410 = phi i32 [ 1, %397 ], [ %407, %402 ]
  %411 = or i32 %410, %400, !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3978, metadata !715), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3978, metadata !715), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4048
  %412 = icmp slt i64 %409, %157, !dbg !4049
  br i1 %412, label %419, label %413, !dbg !4051

; <label>:413:                                    ; preds = %408
  %414 = udiv i64 9223372036854775807, %59, !dbg !4052
  %415 = icmp slt i64 %414, %409, !dbg !4053
  %416 = mul nsw i64 %409, %59, !dbg !4054
  %417 = select i1 %415, i64 9223372036854775807, i64 %416, !dbg !4055
  %418 = zext i1 %415 to i32, !dbg !4055
  br label %419, !dbg !4055

; <label>:419:                                    ; preds = %413, %408
  %420 = phi i64 [ -9223372036854775808, %408 ], [ %417, %413 ]
  %421 = phi i32 [ 1, %408 ], [ %418, %413 ]
  %422 = or i32 %421, %411, !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3978, metadata !715), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3978, metadata !715), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4048
  %423 = icmp slt i64 %420, %157, !dbg !4049
  br i1 %423, label %430, label %424, !dbg !4051

; <label>:424:                                    ; preds = %419
  %425 = udiv i64 9223372036854775807, %59, !dbg !4052
  %426 = icmp slt i64 %425, %420, !dbg !4053
  %427 = mul nsw i64 %420, %59, !dbg !4054
  %428 = select i1 %426, i64 9223372036854775807, i64 %427, !dbg !4055
  %429 = zext i1 %426 to i32, !dbg !4055
  br label %430, !dbg !4055

; <label>:430:                                    ; preds = %424, %419
  %431 = phi i64 [ -9223372036854775808, %419 ], [ %428, %424 ]
  %432 = phi i32 [ 1, %419 ], [ %429, %424 ]
  %433 = or i32 %432, %422, !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3978, metadata !715), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3978, metadata !715), !dbg !4048
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4046
  br label %184, !dbg !4070

; <label>:434:                                    ; preds = %178
  %435 = udiv i64 9223372036854775807, %59, !dbg !4062
  %436 = icmp slt i64 %435, %179, !dbg !4063
  %437 = mul nsw i64 %179, %59, !dbg !4064
  %438 = select i1 %436, i64 9223372036854775807, i64 %437, !dbg !4065
  %439 = zext i1 %436 to i32, !dbg !4065
  br label %440, !dbg !4065

; <label>:440:                                    ; preds = %434, %178
  %441 = phi i64 [ -9223372036854775808, %178 ], [ %438, %434 ]
  %442 = phi i32 [ 1, %178 ], [ %439, %434 ]
  %443 = or i32 %442, %180, !dbg !4085
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3978, metadata !715), !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3978, metadata !715), !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4058
  %444 = icmp slt i64 %441, %170, !dbg !4059
  br i1 %444, label %451, label %445, !dbg !4061

; <label>:445:                                    ; preds = %440
  %446 = udiv i64 9223372036854775807, %59, !dbg !4062
  %447 = icmp slt i64 %446, %441, !dbg !4063
  %448 = mul nsw i64 %441, %59, !dbg !4064
  %449 = select i1 %447, i64 9223372036854775807, i64 %448, !dbg !4065
  %450 = zext i1 %447 to i32, !dbg !4065
  br label %451, !dbg !4065

; <label>:451:                                    ; preds = %445, %440
  %452 = phi i64 [ -9223372036854775808, %440 ], [ %449, %445 ]
  %453 = phi i32 [ 1, %440 ], [ %450, %445 ]
  %454 = or i32 %453, %443, !dbg !4085
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3978, metadata !715), !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3978, metadata !715), !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4058
  %455 = icmp slt i64 %452, %170, !dbg !4059
  br i1 %455, label %462, label %456, !dbg !4061

; <label>:456:                                    ; preds = %451
  %457 = udiv i64 9223372036854775807, %59, !dbg !4062
  %458 = icmp slt i64 %457, %452, !dbg !4063
  %459 = mul nsw i64 %452, %59, !dbg !4064
  %460 = select i1 %458, i64 9223372036854775807, i64 %459, !dbg !4065
  %461 = zext i1 %458 to i32, !dbg !4065
  br label %462, !dbg !4065

; <label>:462:                                    ; preds = %456, %451
  %463 = phi i64 [ -9223372036854775808, %451 ], [ %460, %456 ]
  %464 = phi i32 [ 1, %451 ], [ %461, %456 ]
  %465 = or i32 %464, %454, !dbg !4085
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3978, metadata !715), !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3978, metadata !715), !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4058
  %466 = icmp slt i64 %463, %170, !dbg !4059
  br i1 %466, label %473, label %467, !dbg !4061

; <label>:467:                                    ; preds = %462
  %468 = udiv i64 9223372036854775807, %59, !dbg !4062
  %469 = icmp slt i64 %468, %463, !dbg !4063
  %470 = mul nsw i64 %463, %59, !dbg !4064
  %471 = select i1 %469, i64 9223372036854775807, i64 %470, !dbg !4065
  %472 = zext i1 %469 to i32, !dbg !4065
  br label %473, !dbg !4065

; <label>:473:                                    ; preds = %467, %462
  %474 = phi i64 [ -9223372036854775808, %462 ], [ %471, %467 ]
  %475 = phi i32 [ 1, %462 ], [ %472, %467 ]
  %476 = or i32 %475, %465, !dbg !4085
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3978, metadata !715), !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3978, metadata !715), !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4058
  %477 = icmp slt i64 %474, %170, !dbg !4059
  br i1 %477, label %484, label %478, !dbg !4061

; <label>:478:                                    ; preds = %473
  %479 = udiv i64 9223372036854775807, %59, !dbg !4062
  %480 = icmp slt i64 %479, %474, !dbg !4063
  %481 = mul nsw i64 %474, %59, !dbg !4064
  %482 = select i1 %480, i64 9223372036854775807, i64 %481, !dbg !4065
  %483 = zext i1 %480 to i32, !dbg !4065
  br label %484, !dbg !4065

; <label>:484:                                    ; preds = %478, %473
  %485 = phi i64 [ -9223372036854775808, %473 ], [ %482, %478 ]
  %486 = phi i32 [ 1, %473 ], [ %483, %478 ]
  %487 = or i32 %486, %476, !dbg !4085
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3978, metadata !715), !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3978, metadata !715), !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3978, metadata !715), !dbg !4058
  %488 = icmp slt i64 %485, %170, !dbg !4059
  br i1 %488, label %495, label %489, !dbg !4061

; <label>:489:                                    ; preds = %484
  %490 = udiv i64 9223372036854775807, %59, !dbg !4062
  %491 = icmp slt i64 %490, %485, !dbg !4063
  %492 = mul nsw i64 %485, %59, !dbg !4064
  %493 = select i1 %491, i64 9223372036854775807, i64 %492, !dbg !4065
  %494 = zext i1 %491 to i32, !dbg !4065
  br label %495, !dbg !4065

; <label>:495:                                    ; preds = %489, %484
  %496 = phi i64 [ -9223372036854775808, %484 ], [ %493, %489 ]
  %497 = phi i32 [ 1, %484 ], [ %494, %489 ]
  %498 = or i32 %497, %487, !dbg !4085
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3978, metadata !715), !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3978, metadata !715), !dbg !4058
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3971, metadata !715), !dbg !4056
  br label %184, !dbg !4070
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4086 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4089, metadata !715), !dbg !4095
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4090, metadata !715), !dbg !4096
  %3 = icmp eq i64 %0, 0, !dbg !4097
  %4 = icmp eq i64 %1, 0, !dbg !4098
  %5 = or i1 %3, %4, !dbg !4099
  br i1 %5, label %12, label %6, !dbg !4099

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4100
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4092, metadata !715), !dbg !4101
  %8 = udiv i64 %7, %1, !dbg !4102
  %9 = icmp eq i64 %8, %0, !dbg !4104
  br i1 %9, label %12, label %10, !dbg !4105

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4106
  store i32 12, i32* %11, align 4, !dbg !4108, !tbaa !836
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4089, metadata !715), !dbg !4095
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4090, metadata !715), !dbg !4096
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4109
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4091, metadata !715), !dbg !4110
  br label %16, !dbg !4111

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4112
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4113 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4158, metadata !715), !dbg !4162
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4159, metadata !715), !dbg !4163
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4161, metadata !715), !dbg !4164
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4165
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4160, metadata !715), !dbg !4166
  %3 = icmp slt i32 %2, 0, !dbg !4167
  br i1 %3, label %4, label %6, !dbg !4169

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4170
  br label %24, !dbg !4171

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4172
  %8 = icmp eq i32 %7, 0, !dbg !4172
  br i1 %8, label %13, label %9, !dbg !4174

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4175
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4176
  %12 = icmp eq i64 %11, -1, !dbg !4177
  br i1 %12, label %16, label %13, !dbg !4178

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4179
  %15 = icmp eq i32 %14, 0, !dbg !4179
  br i1 %15, label %16, label %18, !dbg !4180

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4159, metadata !715), !dbg !4163
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4181
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4161, metadata !715), !dbg !4164
  br label %24, !dbg !4182

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4183
  %20 = load i32, i32* %19, align 4, !dbg !4183, !tbaa !836
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4159, metadata !715), !dbg !4163
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4159, metadata !715), !dbg !4163
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4181
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4161, metadata !715), !dbg !4164
  %22 = icmp eq i32 %20, 0, !dbg !4184
  br i1 %22, label %24, label %23, !dbg !4182

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4186, !tbaa !836
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4161, metadata !715), !dbg !4164
  br label %24, !dbg !4188

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4189
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4190 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4235, metadata !715), !dbg !4236
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4237
  br i1 %2, label %6, label %3, !dbg !4239

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4240
  %5 = icmp eq i32 %4, 0, !dbg !4240
  br i1 %5, label %6, label %8, !dbg !4241

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4242
  br label %17, !dbg !4243

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4244, metadata !715) #11, !dbg !4249
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4251
  %10 = load i32, i32* %9, align 8, !dbg !4251, !tbaa !1280
  %11 = and i32 %10, 256, !dbg !4253
  %12 = icmp eq i32 %11, 0, !dbg !4253
  br i1 %12, label %15, label %13, !dbg !4254

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4255
  br label %15, !dbg !4255

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4256
  br label %17, !dbg !4257

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4258
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4259 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4304, metadata !715), !dbg !4310
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4305, metadata !715), !dbg !4311
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4306, metadata !715), !dbg !4312
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4313
  %5 = load i8*, i8** %4, align 8, !dbg !4313, !tbaa !1543
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4314
  %7 = load i8*, i8** %6, align 8, !dbg !4314, !tbaa !1542
  %8 = icmp eq i8* %5, %7, !dbg !4315
  br i1 %8, label %9, label %28, !dbg !4316

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4317
  %11 = load i8*, i8** %10, align 8, !dbg !4317, !tbaa !1157
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4318
  %13 = load i8*, i8** %12, align 8, !dbg !4318, !tbaa !4319
  %14 = icmp eq i8* %11, %13, !dbg !4320
  br i1 %14, label %15, label %28, !dbg !4321

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4322
  %17 = load i8*, i8** %16, align 8, !dbg !4322, !tbaa !4323
  %18 = icmp eq i8* %17, null, !dbg !4324
  br i1 %18, label %19, label %28, !dbg !4325

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4326
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4327
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4307, metadata !715), !dbg !4328
  %22 = icmp eq i64 %21, -1, !dbg !4329
  br i1 %22, label %30, label %23, !dbg !4331

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4332
  %25 = load i32, i32* %24, align 8, !dbg !4333, !tbaa !1280
  %26 = and i32 %25, -17, !dbg !4333
  store i32 %26, i32* %24, align 8, !dbg !4333, !tbaa !1280
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4334
  store i64 %21, i64* %27, align 8, !dbg !4335, !tbaa !4336
  br label %30, !dbg !4337

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4338
  br label %30, !dbg !4339

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4340
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4341 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4358, metadata !715), !dbg !4367
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4359, metadata !715), !dbg !4368
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4360, metadata !715), !dbg !4369
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4361, metadata !715), !dbg !4370
  %6 = bitcast i32* %5 to i8*, !dbg !4371
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4371
  %7 = icmp eq i32* %0, null, !dbg !4372
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4358, metadata !715), !dbg !4367
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4374
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4358, metadata !715), !dbg !4367
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4375
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4362, metadata !715), !dbg !4376
  %10 = icmp ugt i64 %9, -3, !dbg !4377
  %11 = icmp ne i64 %2, 0, !dbg !4378
  %12 = and i1 %11, %10, !dbg !4379
  br i1 %12, label %13, label %18, !dbg !4379

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4380
  br i1 %14, label %18, label %15, !dbg !4381

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4382, !tbaa !937
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4364, metadata !715), !dbg !4383
  %17 = zext i8 %16 to i32, !dbg !4384
  store i32 %17, i32* %8, align 4, !dbg !4385, !tbaa !836
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4386
  ret i64 %19, !dbg !4386
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4387 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4432, metadata !715), !dbg !4437
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4438
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4439, metadata !715), !dbg !4442
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4444
  %4 = load i32, i32* %3, align 8, !dbg !4444, !tbaa !1280
  %5 = and i32 %4, 32, !dbg !4444
  %6 = icmp eq i32 %5, 0, !dbg !4445
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4446
  %8 = icmp ne i32 %7, 0, !dbg !4447
  br i1 %6, label %9, label %19, !dbg !4448

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4450
  %11 = xor i1 %8, true, !dbg !4451
  %12 = or i1 %10, %11, !dbg !4451
  %13 = sext i1 %8 to i32, !dbg !4451
  br i1 %12, label %22, label %14, !dbg !4451

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4452
  %16 = load i32, i32* %15, align 4, !dbg !4452, !tbaa !836
  %17 = icmp ne i32 %16, 9, !dbg !4453
  %18 = sext i1 %17 to i32, !dbg !4454
  br label %22, !dbg !4454

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4455

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4457
  store i32 0, i32* %21, align 4, !dbg !4459, !tbaa !836
  br label %22, !dbg !4457

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4460
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4461 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4466, metadata !715), !dbg !4469
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4467, metadata !715), !dbg !4470
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4471
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4468, metadata !715), !dbg !4472
  %3 = icmp eq i8* %2, null, !dbg !4473
  br i1 %3, label %11, label %4, !dbg !4475

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.150, i64 0, i64 0)) #14, !dbg !4476
  %6 = icmp eq i32 %5, 0, !dbg !4481
  br i1 %6, label %10, label %7, !dbg !4482

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.151, i64 0, i64 0)) #14, !dbg !4483
  %9 = icmp eq i32 %8, 0, !dbg !4484
  br i1 %9, label %10, label %11, !dbg !4485

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4467, metadata !715), !dbg !4470
  br label %11, !dbg !4486

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4487
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4488 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4494, metadata !715), !dbg !4568
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4561, metadata !715), !dbg !4571
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4572
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4492, metadata !715), !dbg !4573
  %4 = icmp eq i8* %3, null, !dbg !4574
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), i8* %3, !dbg !4576
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4492, metadata !715), !dbg !4573
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4577, !tbaa !722
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4508, metadata !715) #11, !dbg !4578
  %7 = icmp eq i8* %6, null, !dbg !4579
  br i1 %7, label %8, label %123, !dbg !4580

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.155, i64 0, i64 0)) #11, !dbg !4581
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4509, metadata !715) #11, !dbg !4582
  %10 = icmp eq i8* %9, null, !dbg !4583
  br i1 %10, label %14, label %11, !dbg !4585

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4586, !tbaa !937
  %13 = icmp eq i8 %12, 0, !dbg !4587
  br i1 %13, label %14, label %15, !dbg !4588

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4589

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.156, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4509, metadata !715) #11, !dbg !4582
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4590
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4512, metadata !715) #11, !dbg !4591
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4514, metadata !715) #11, !dbg !4592
  %18 = icmp eq i64 %17, 0, !dbg !4593
  br i1 %18, label %24, label %19, !dbg !4594

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4595
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4595
  %22 = load i8, i8* %21, align 1, !dbg !4595, !tbaa !937
  %23 = icmp ne i8 %22, 47, !dbg !4595
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4596
  %27 = add i64 %17, 14, !dbg !4597
  %28 = add i64 %27, %26, !dbg !4598
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !4599
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4511, metadata !715) #11, !dbg !4600
  %30 = icmp eq i8* %29, null, !dbg !4601
  br i1 %30, label %121, label %31, !dbg !4601

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !4602
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4605

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4606, !tbaa !937
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4608
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.157, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4609
  br label %37, !dbg !4610

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4608
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.157, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4609
  br label %37, !dbg !4610

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !4611
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4516, metadata !715) #11, !dbg !4612
  %39 = icmp slt i32 %38, 0, !dbg !4613
  br i1 %39, label %119, label %40, !dbg !4614

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.158, i64 0, i64 0)) #11, !dbg !4615
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4517, metadata !715) #11, !dbg !4616
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4617
  br i1 %42, label %43, label %45, !dbg !4618

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #11, !dbg !4619
  br label %119, !dbg !4621

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4558, metadata !715) #11, !dbg !4622
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4559, metadata !715) #11, !dbg !4623
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4624

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4625

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4558, metadata !715) #11, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4559, metadata !715) #11, !dbg !4623
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4625
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4626
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4627, metadata !715) #11, !dbg !4632
  %54 = load i8*, i8** %48, align 8, !dbg !4634, !tbaa !1542
  %55 = load i8*, i8** %49, align 8, !dbg !4634, !tbaa !1543
  %56 = icmp ult i8* %54, %55, !dbg !4634
  br i1 %56, label %59, label %57, !dbg !4634, !prof !1161

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4634
  br label %63, !dbg !4634

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4634
  store i8* %60, i8** %48, align 8, !dbg !4634, !tbaa !1542
  %61 = load i8, i8* %54, align 1, !dbg !4634, !tbaa !937
  %62 = zext i8 %61 to i32, !dbg !4634
  br label %63, !dbg !4634

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4634
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4560, metadata !715) #11, !dbg !4635
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4636, !llvm.loop !4637

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4642

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4627, metadata !715) #11, !dbg !4644
  %67 = load i8*, i8** %48, align 8, !dbg !4642, !tbaa !1542
  %68 = load i8*, i8** %49, align 8, !dbg !4642, !tbaa !1543
  %69 = icmp ult i8* %67, %68, !dbg !4642
  br i1 %69, label %72, label %70, !dbg !4642, !prof !1161

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4642
  br label %76, !dbg !4642

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4642
  store i8* %73, i8** %48, align 8, !dbg !4642, !tbaa !1542
  %74 = load i8, i8* %67, align 1, !dbg !4642, !tbaa !937
  %75 = zext i8 %74 to i32, !dbg !4642
  br label %76, !dbg !4642

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4642
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4560, metadata !715) #11, !dbg !4635
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4645, !llvm.loop !4646

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #11, !dbg !4649
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.159, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #11, !dbg !4650
  %81 = icmp slt i32 %80, 2, !dbg !4652
  br i1 %81, label %112, label %82, !dbg !4653

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4654
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4565, metadata !715) #11, !dbg !4655
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4656
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4566, metadata !715) #11, !dbg !4657
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4567, metadata !715) #11, !dbg !4658
  %85 = icmp eq i64 %51, 0, !dbg !4659
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4661

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4559, metadata !715) #11, !dbg !4623
  %90 = add i64 %87, 2, !dbg !4662
  %91 = call noalias i8* @malloc(i64 %90) #11, !dbg !4664
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4558, metadata !715) #11, !dbg !4622
  br label %96, !dbg !4665

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4666
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4559, metadata !715) #11, !dbg !4623
  %94 = add i64 %93, 1, !dbg !4668
  %95 = call i8* @realloc(i8* %52, i64 %94) #11, !dbg !4669
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4558, metadata !715) #11, !dbg !4622
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4558, metadata !715) #11, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4559, metadata !715) #11, !dbg !4623
  %99 = icmp eq i8* %98, null, !dbg !4670
  br i1 %99, label %100, label %102, !dbg !4672

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4559, metadata !715) #11, !dbg !4623
  call void @free(i8* %52) #11, !dbg !4673
  br label %112, !dbg !4675

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4676
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4676
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4677
  %104 = xor i64 %84, -1, !dbg !4678
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4678
  %106 = xor i64 %83, -1, !dbg !4679
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4679
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4680, metadata !715) #11, !dbg !4684
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4683, metadata !715) #11, !dbg !4684
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #11, !dbg !4686
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #11, !dbg !4687
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4680, metadata !715) #11, !dbg !4688
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4683, metadata !715) #11, !dbg !4688
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #11, !dbg !4690
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #11, !dbg !4691
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4558, metadata !715) #11, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4559, metadata !715) #11, !dbg !4623
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4676
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4676
  br label %50, !dbg !4692, !llvm.loop !4646

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4676
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4676
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !4693
  %116 = icmp eq i64 %113, 0, !dbg !4694
  br i1 %116, label %119, label %117, !dbg !4696

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4697
  store i8 0, i8* %118, align 1, !dbg !4699, !tbaa !937
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4508, metadata !715) #11, !dbg !4578
  call void @free(i8* %29) #11, !dbg !4700
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4508, metadata !715) #11, !dbg !4578
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4701, !tbaa !722
  br label %123, !dbg !4702

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4508, metadata !715) #11, !dbg !4578
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4493, metadata !715), !dbg !4703
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4493, metadata !715), !dbg !4703
  %125 = load i8, i8* %124, align 1, !dbg !4704, !tbaa !937
  %126 = icmp eq i8 %125, 0, !dbg !4706
  br i1 %126, label %152, label %127, !dbg !4707

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4708

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4493, metadata !715), !dbg !4703
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4708
  %132 = icmp eq i32 %131, 0, !dbg !4710
  br i1 %132, label %139, label %133, !dbg !4711

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4712
  br i1 %134, label %135, label %143, !dbg !4713

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4714
  %137 = load i8, i8* %136, align 1, !dbg !4714, !tbaa !937
  %138 = icmp eq i8 %137, 0, !dbg !4715
  br i1 %138, label %139, label %143, !dbg !4716

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4717
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4719
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4720
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4492, metadata !715), !dbg !4573
  br label %152, !dbg !4721

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4722
  %145 = add i64 %144, 1, !dbg !4723
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4724
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4493, metadata !715), !dbg !4703
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4725
  %148 = add i64 %147, 1, !dbg !4726
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4727
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4493, metadata !715), !dbg !4703
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4493, metadata !715), !dbg !4703
  %150 = load i8, i8* %149, align 1, !dbg !4704, !tbaa !937
  %151 = icmp eq i8 %150, 0, !dbg !4706
  br i1 %151, label %152, label %128, !dbg !4707, !llvm.loop !4728

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4492, metadata !715), !dbg !4573
  %154 = load i8, i8* %153, align 1, !dbg !4730, !tbaa !937
  %155 = icmp eq i8 %154, 0, !dbg !4732
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.160, i64 0, i64 0), i8* %153, !dbg !4733
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4492, metadata !715), !dbg !4573
  ret i8* %156, !dbg !4734
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

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
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

!llvm.dbg.cu = !{!2, !198, !203, !211, !643, !646, !218, !225, !649, !289, !657, !674, !676, !687, !689, !691, !693, !695, !697, !700, !702, !298}
!llvm.ident = !{!704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704}
!llvm.module.flags = !{!705, !706, !707, !708, !709}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 149, type: !184, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !34, globals: !40)
!3 = !DIFile(filename: "src/nl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "section", file: !3, line: 61, size: 32, elements: !29)
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "Header", value: 0)
!31 = !DIEnumerator(name: "Body", value: 1)
!32 = !DIEnumerator(name: "Footer", value: 2)
!33 = !DIEnumerator(name: "Text", value: 3)
!34 = !{!35, !37, !38, !39}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !{!41, !45, !72, !74, !76, !81, !83, !85, !87, !89, !91, !99, !106, !109, !0, !129, !131, !133, !135, !137, !139, !141, !143, !145, !148, !153, !155, !158, !160, !162, !167, !169, !171, !173, !175, !178}
!41 = !DIGlobalVariableExpression(var: !42)
!42 = distinct !DIGlobalVariable(name: "current_type", scope: !2, file: !3, line: 76, type: !43, isLocal: true, isDefinition: true)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!45 = !DIGlobalVariableExpression(var: !46)
!46 = distinct !DIGlobalVariable(name: "body_regex", scope: !2, file: !3, line: 79, type: !47, isLocal: true, isDefinition: true)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !48, line: 414, size: 512, elements: !49)
!48 = !DIFile(filename: "./lib/regex.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!49 = !{!50, !53, !55, !56, !58, !59, !61, !64, !66, !67, !68, !69, !70, !71}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !47, file: !48, line: 418, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !48, line: 418, flags: DIFlagFwdDecl)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !47, file: !48, line: 421, baseType: !54, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !48, line: 57, baseType: !38)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !47, file: !48, line: 424, baseType: !54, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !47, file: !48, line: 427, baseType: !57, size: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !48, line: 73, baseType: !38)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !47, file: !48, line: 432, baseType: !35, size: 64, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !47, file: !48, line: 438, baseType: !60, size: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !47, file: !48, line: 441, baseType: !62, size: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 62, baseType: !38)
!63 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!64 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !47, file: !48, line: 447, baseType: !65, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!65 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !47, file: !48, line: 458, baseType: !65, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !47, file: !48, line: 462, baseType: !65, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !47, file: !48, line: 466, baseType: !65, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !47, file: !48, line: 470, baseType: !65, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !47, file: !48, line: 473, baseType: !65, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !47, file: !48, line: 476, baseType: !65, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!72 = !DIGlobalVariableExpression(var: !73)
!73 = distinct !DIGlobalVariable(name: "header_regex", scope: !2, file: !3, line: 82, type: !47, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75)
!75 = distinct !DIGlobalVariable(name: "footer_regex", scope: !2, file: !3, line: 85, type: !47, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77)
!77 = distinct !DIGlobalVariable(name: "body_fastmap", scope: !2, file: !3, line: 88, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2048, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 256)
!81 = !DIGlobalVariableExpression(var: !82)
!82 = distinct !DIGlobalVariable(name: "header_fastmap", scope: !2, file: !3, line: 89, type: !78, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84)
!84 = distinct !DIGlobalVariable(name: "footer_fastmap", scope: !2, file: !3, line: 90, type: !78, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86)
!86 = distinct !DIGlobalVariable(name: "header_del_len", scope: !2, file: !3, line: 105, type: !62, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88)
!88 = distinct !DIGlobalVariable(name: "body_del_len", scope: !2, file: !3, line: 111, type: !62, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90)
!90 = distinct !DIGlobalVariable(name: "footer_del_len", scope: !2, file: !3, line: 117, type: !62, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92)
!92 = distinct !DIGlobalVariable(name: "line_buf", scope: !2, file: !3, line: 120, type: !93, isLocal: true, isDefinition: true)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !94, line: 26, size: 192, elements: !95)
!94 = !DIFile(filename: "./lib/linebuffer.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!95 = !{!96, !97, !98}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !93, file: !94, line: 28, baseType: !62, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !93, file: !94, line: 29, baseType: !62, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !93, file: !94, line: 30, baseType: !35, size: 64, offset: 128)
!99 = !DIGlobalVariableExpression(var: !100)
!100 = distinct !DIGlobalVariable(name: "line_no", scope: !2, file: !3, line: 144, type: !101, isLocal: true, isDefinition: true)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !102, line: 111, baseType: !103)
!102 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !104, line: 61, baseType: !105)
!104 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!105 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!106 = !DIGlobalVariableExpression(var: !107)
!107 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 147, type: !108, isLocal: true, isDefinition: true)
!108 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!109 = !DIGlobalVariableExpression(var: !110)
!110 = distinct !DIGlobalVariable(name: "infomap", scope: !111, file: !112, line: 632, type: !126, isLocal: true, isDefinition: true)
!111 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !112, file: !112, line: 630, type: !113, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !115)
!112 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!113 = !DISubroutineType(types: !114)
!114 = !{null, !43}
!115 = !{!116, !117, !118, !125}
!116 = !DILocalVariable(name: "program", arg: 1, scope: !111, file: !112, line: 630, type: !43)
!117 = !DILocalVariable(name: "node", scope: !111, file: !112, line: 642, type: !43)
!118 = !DILocalVariable(name: "map_prog", scope: !111, file: !112, line: 643, type: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !111, file: !112, line: 632, size: 128, elements: !122)
!122 = !{!123, !124}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !121, file: !112, line: 632, baseType: !43, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !121, file: !112, line: 632, baseType: !43, size: 64, offset: 64)
!125 = !DILocalVariable(name: "lc_messages", scope: !111, file: !112, line: 655, type: !43)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 896, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 7)
!129 = !DIGlobalVariableExpression(var: !130)
!130 = distinct !DIGlobalVariable(name: "header_type", scope: !2, file: !3, line: 70, type: !43, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132)
!132 = distinct !DIGlobalVariable(name: "body_type", scope: !2, file: !3, line: 67, type: !43, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134)
!134 = distinct !DIGlobalVariable(name: "footer_type", scope: !2, file: !3, line: 73, type: !43, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136)
!136 = distinct !DIGlobalVariable(name: "starting_line_number", scope: !2, file: !3, line: 126, type: !101, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138)
!138 = distinct !DIGlobalVariable(name: "page_incr", scope: !2, file: !3, line: 129, type: !101, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140)
!140 = distinct !DIGlobalVariable(name: "reset_numbers", scope: !2, file: !3, line: 132, type: !108, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142)
!142 = distinct !DIGlobalVariable(name: "blank_join", scope: !2, file: !3, line: 135, type: !101, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144)
!144 = distinct !DIGlobalVariable(name: "separator_str", scope: !2, file: !3, line: 96, type: !43, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146)
!146 = distinct !DIGlobalVariable(name: "lineno_width", scope: !2, file: !3, line: 138, type: !147, isLocal: true, isDefinition: true)
!147 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!148 = !DIGlobalVariableExpression(var: !149)
!149 = distinct !DIGlobalVariable(name: "FORMAT_LEFT", scope: !2, file: !3, line: 54, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 8)
!153 = !DIGlobalVariableExpression(var: !154)
!154 = distinct !DIGlobalVariable(name: "lineno_format", scope: !2, file: !3, line: 141, type: !43, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156)
!156 = distinct !DIGlobalVariable(name: "FORMAT_RIGHT_NOLZ", scope: !2, file: !3, line: 48, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 56, elements: !127)
!158 = !DIGlobalVariableExpression(var: !159)
!159 = distinct !DIGlobalVariable(name: "FORMAT_RIGHT_LZ", scope: !2, file: !3, line: 51, type: !150, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161)
!161 = distinct !DIGlobalVariable(name: "section_del", scope: !2, file: !3, line: 99, type: !43, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163)
!163 = distinct !DIGlobalVariable(name: "DEFAULT_SECTION_DELIMITERS", scope: !2, file: !3, line: 57, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 24, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 3)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "header_del", scope: !2, file: !3, line: 102, type: !35, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170)
!170 = distinct !DIGlobalVariable(name: "body_del", scope: !2, file: !3, line: 108, type: !35, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172)
!172 = distinct !DIGlobalVariable(name: "footer_del", scope: !2, file: !3, line: 114, type: !35, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174)
!174 = distinct !DIGlobalVariable(name: "print_no_line_fmt", scope: !2, file: !3, line: 123, type: !35, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176)
!176 = distinct !DIGlobalVariable(name: "current_regex", scope: !2, file: !3, line: 93, type: !177, isLocal: true, isDefinition: true)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!178 = !DIGlobalVariableExpression(var: !179)
!179 = distinct !DIGlobalVariable(name: "blank_lines", scope: !180, file: !3, line: 324, type: !101, isLocal: true, isDefinition: true)
!180 = distinct !DISubprogram(name: "proc_text", scope: !3, file: !3, line: 322, type: !181, isLocal: true, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !183)
!181 = !DISubroutineType(types: !182)
!182 = !{null}
!183 = !{}
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 3584, elements: !194)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !187, line: 50, size: 256, elements: !188)
!187 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!188 = !{!189, !190, !191, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !186, file: !187, line: 52, baseType: !43, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !186, file: !187, line: 55, baseType: !147, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !186, file: !187, line: 56, baseType: !192, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !186, file: !187, line: 57, baseType: !147, size: 32, offset: 192)
!194 = !{!195}
!195 = !DISubrange(count: 14)
!196 = !DIGlobalVariableExpression(var: !197)
!197 = distinct !DIGlobalVariable(name: "Version", scope: !198, file: !199, line: 2, type: !43, isLocal: false, isDefinition: true)
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183, globals: !200)
!199 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!200 = !{!196}
!201 = !DIGlobalVariableExpression(var: !202)
!202 = distinct !DIGlobalVariable(name: "file_name", scope: !203, file: !208, line: 36, type: !43, isLocal: true, isDefinition: true)
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183, globals: !205)
!204 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!205 = !{!201, !206}
!206 = !DIGlobalVariableExpression(var: !207)
!207 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !203, file: !208, line: 46, type: !108, isLocal: true, isDefinition: true)
!208 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!209 = !DIGlobalVariableExpression(var: !210)
!210 = distinct !DIGlobalVariable(name: "exit_failure", scope: !211, file: !214, line: 24, type: !215, isLocal: false, isDefinition: true)
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183, globals: !213)
!212 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!213 = !{!209}
!214 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!215 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !147)
!216 = !DIGlobalVariableExpression(var: !217)
!217 = distinct !DIGlobalVariable(name: "program_name", scope: !218, file: !222, line: 33, type: !43, isLocal: false, isDefinition: true)
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183, retainedTypes: !220, globals: !221)
!219 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!220 = !{!37, !35}
!221 = !{!216}
!222 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!223 = !DIGlobalVariableExpression(var: !224)
!224 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !225, file: !253, line: 77, type: !283, isLocal: false, isDefinition: true)
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !227, retainedTypes: !248, globals: !250)
!226 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!227 = !{!5, !228, !233}
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !229)
!229 = !{!230, !231, !232}
!230 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!231 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!232 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !234, line: 46, size: 32, elements: !235)
!234 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247}
!236 = !DIEnumerator(name: "_ISupper", value: 256)
!237 = !DIEnumerator(name: "_ISlower", value: 512)
!238 = !DIEnumerator(name: "_ISalpha", value: 1024)
!239 = !DIEnumerator(name: "_ISdigit", value: 2048)
!240 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!241 = !DIEnumerator(name: "_ISspace", value: 8192)
!242 = !DIEnumerator(name: "_ISprint", value: 16384)
!243 = !DIEnumerator(name: "_ISgraph", value: 32768)
!244 = !DIEnumerator(name: "_ISblank", value: 1)
!245 = !DIEnumerator(name: "_IScntrl", value: 2)
!246 = !DIEnumerator(name: "_ISpunct", value: 4)
!247 = !DIEnumerator(name: "_ISalnum", value: 8)
!248 = !{!147, !249, !62, !35}
!249 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!250 = !{!223, !251, !258, !268, !270, !272, !279, !281}
!251 = !DIGlobalVariableExpression(var: !252)
!252 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !225, file: !253, line: 93, type: !254, isLocal: false, isDefinition: true)
!253 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 320, elements: !256)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!256 = !{!257}
!257 = !DISubrange(count: 10)
!258 = !DIGlobalVariableExpression(var: !259)
!259 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !225, file: !253, line: 1043, type: !260, isLocal: false, isDefinition: true)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !253, line: 57, size: 448, elements: !261)
!261 = !{!262, !263, !264, !266, !267}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !260, file: !253, line: 60, baseType: !5, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !260, file: !253, line: 63, baseType: !147, size: 32, offset: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !260, file: !253, line: 67, baseType: !265, size: 256, offset: 64)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 256, elements: !151)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !260, file: !253, line: 70, baseType: !43, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !260, file: !253, line: 73, baseType: !43, size: 64, offset: 384)
!268 = !DIGlobalVariableExpression(var: !269)
!269 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !225, file: !253, line: 108, type: !260, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271)
!271 = distinct !DIGlobalVariable(name: "slot0", scope: !225, file: !253, line: 834, type: !78, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273)
!273 = distinct !DIGlobalVariable(name: "slotvec", scope: !225, file: !253, line: 837, type: !274, isLocal: true, isDefinition: true)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !253, line: 826, size: 128, elements: !276)
!276 = !{!277, !278}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !275, file: !253, line: 828, baseType: !62, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !275, file: !253, line: 829, baseType: !35, size: 64, offset: 64)
!279 = !DIGlobalVariableExpression(var: !280)
!280 = distinct !DIGlobalVariable(name: "nslots", scope: !225, file: !253, line: 835, type: !147, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282)
!282 = distinct !DIGlobalVariable(name: "slotvec0", scope: !225, file: !253, line: 836, type: !275, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 704, elements: !285)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!285 = !{!286}
!286 = !DISubrange(count: 11)
!287 = !DIGlobalVariableExpression(var: !288)
!288 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !289, file: !292, line: 26, type: !293, isLocal: false, isDefinition: true)
!289 = distinct !DICompileUnit(language: DW_LANG_C99, file: !290, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183, globals: !291)
!290 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!291 = !{!287}
!292 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 376, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 47)
!296 = !DIGlobalVariableExpression(var: !297)
!297 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !298, file: !641, line: 120, type: !642, isLocal: true, isDefinition: true)
!298 = distinct !DICompileUnit(language: DW_LANG_C99, file: !299, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !300, retainedTypes: !639, globals: !640)
!299 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!300 = !{!301}
!301 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !302, line: 41, size: 32, elements: !303)
!302 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!303 = !{!304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638}
!304 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!305 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!306 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!307 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!308 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!309 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!310 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!311 = !DIEnumerator(name: "DAY_1", value: 131079)
!312 = !DIEnumerator(name: "DAY_2", value: 131080)
!313 = !DIEnumerator(name: "DAY_3", value: 131081)
!314 = !DIEnumerator(name: "DAY_4", value: 131082)
!315 = !DIEnumerator(name: "DAY_5", value: 131083)
!316 = !DIEnumerator(name: "DAY_6", value: 131084)
!317 = !DIEnumerator(name: "DAY_7", value: 131085)
!318 = !DIEnumerator(name: "ABMON_1", value: 131086)
!319 = !DIEnumerator(name: "ABMON_2", value: 131087)
!320 = !DIEnumerator(name: "ABMON_3", value: 131088)
!321 = !DIEnumerator(name: "ABMON_4", value: 131089)
!322 = !DIEnumerator(name: "ABMON_5", value: 131090)
!323 = !DIEnumerator(name: "ABMON_6", value: 131091)
!324 = !DIEnumerator(name: "ABMON_7", value: 131092)
!325 = !DIEnumerator(name: "ABMON_8", value: 131093)
!326 = !DIEnumerator(name: "ABMON_9", value: 131094)
!327 = !DIEnumerator(name: "ABMON_10", value: 131095)
!328 = !DIEnumerator(name: "ABMON_11", value: 131096)
!329 = !DIEnumerator(name: "ABMON_12", value: 131097)
!330 = !DIEnumerator(name: "MON_1", value: 131098)
!331 = !DIEnumerator(name: "MON_2", value: 131099)
!332 = !DIEnumerator(name: "MON_3", value: 131100)
!333 = !DIEnumerator(name: "MON_4", value: 131101)
!334 = !DIEnumerator(name: "MON_5", value: 131102)
!335 = !DIEnumerator(name: "MON_6", value: 131103)
!336 = !DIEnumerator(name: "MON_7", value: 131104)
!337 = !DIEnumerator(name: "MON_8", value: 131105)
!338 = !DIEnumerator(name: "MON_9", value: 131106)
!339 = !DIEnumerator(name: "MON_10", value: 131107)
!340 = !DIEnumerator(name: "MON_11", value: 131108)
!341 = !DIEnumerator(name: "MON_12", value: 131109)
!342 = !DIEnumerator(name: "AM_STR", value: 131110)
!343 = !DIEnumerator(name: "PM_STR", value: 131111)
!344 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!345 = !DIEnumerator(name: "D_FMT", value: 131113)
!346 = !DIEnumerator(name: "T_FMT", value: 131114)
!347 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!348 = !DIEnumerator(name: "ERA", value: 131116)
!349 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!350 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!351 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!352 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!353 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!354 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!355 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!356 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!357 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!358 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!359 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!360 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!361 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!362 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!363 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!364 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!365 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!366 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!367 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!368 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!369 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!370 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!371 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!372 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!373 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!374 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!375 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!376 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!377 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!378 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!379 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!380 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!381 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!382 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!383 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!384 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!385 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!386 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!387 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!388 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!389 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!390 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!391 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!392 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!393 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!394 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!395 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!396 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!397 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!398 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!399 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!400 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!401 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!402 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!403 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!404 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!405 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!406 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!407 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!408 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!409 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!410 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!411 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!412 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!413 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!414 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!415 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!416 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!417 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!418 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!419 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!420 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!421 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!422 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!423 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!424 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!425 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!426 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!427 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!428 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!429 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!430 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!431 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!432 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!433 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!434 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!435 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!436 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!437 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!438 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!439 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!440 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!441 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!442 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!443 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!444 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!445 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!446 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!447 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!448 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!449 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!450 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!451 = !DIEnumerator(name: "CODESET", value: 14)
!452 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!453 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!454 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!455 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!458 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!459 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!460 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!461 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!462 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!463 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!464 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!465 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!466 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!467 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!468 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!469 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!470 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!478 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!479 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!480 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!481 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!482 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!483 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!484 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!485 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!486 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!487 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!488 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!489 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!490 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!491 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!492 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!493 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!494 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!495 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!496 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!497 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!498 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!499 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!500 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!501 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!502 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!503 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!504 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!505 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!506 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!507 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!508 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!509 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!510 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!511 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!512 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!513 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!514 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!515 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!516 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!517 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!518 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!519 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!520 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!521 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!522 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!523 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!524 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!525 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!526 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!527 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!528 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!529 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!530 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!531 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!532 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!533 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!534 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!535 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!536 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!537 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!538 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!539 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!540 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!541 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!542 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!543 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!544 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!545 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!546 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!547 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!548 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!549 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!550 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!551 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!552 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!553 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!554 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!555 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!556 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!557 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!558 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!559 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!560 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!561 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!562 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!563 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!564 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!565 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!566 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!567 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!568 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!569 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!570 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!571 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!572 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!573 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!574 = !DIEnumerator(name: "THOUSEP", value: 65537)
!575 = !DIEnumerator(name: "__GROUPING", value: 65538)
!576 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!577 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!578 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!579 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!580 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!581 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!582 = !DIEnumerator(name: "__YESSTR", value: 327682)
!583 = !DIEnumerator(name: "__NOSTR", value: 327683)
!584 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!585 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!586 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!587 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!588 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!589 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!590 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!591 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!592 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!593 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!594 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!595 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!596 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!597 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!598 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!599 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!600 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!601 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!602 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!603 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!604 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!605 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!606 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!607 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!608 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!609 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!610 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!611 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!612 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!613 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!614 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!615 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!616 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!617 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!618 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!619 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!620 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!621 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!622 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!623 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!624 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!625 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!626 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!627 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!628 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!629 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!630 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!631 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!632 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!633 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!634 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!635 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!636 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!637 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!638 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!639 = !{!37, !35, !60}
!640 = !{!296}
!641 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!642 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!643 = distinct !DICompileUnit(language: DW_LANG_C99, file: !644, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !645)
!644 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!645 = !{!19}
!646 = distinct !DICompileUnit(language: DW_LANG_C99, file: !647, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183, retainedTypes: !648)
!647 = !DIFile(filename: "./lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!648 = !{!60}
!649 = distinct !DICompileUnit(language: DW_LANG_C99, file: !650, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !651, retainedTypes: !656)
!650 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!651 = !{!652}
!652 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !653, line: 41, size: 32, elements: !654)
!653 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!654 = !{!655}
!655 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!656 = !{!37}
!657 = distinct !DICompileUnit(language: DW_LANG_C99, file: !658, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !659, retainedTypes: !673)
!658 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!659 = !{!660}
!660 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !662, file: !661, line: 192, size: 32, elements: !671)
!661 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!662 = distinct !DISubprogram(name: "x2nrealloc", scope: !661, file: !661, line: 180, type: !663, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !666)
!663 = !DISubroutineType(types: !664)
!664 = !{!37, !37, !665, !62}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!666 = !{!667, !668, !669, !670}
!667 = !DILocalVariable(name: "p", arg: 1, scope: !662, file: !661, line: 180, type: !37)
!668 = !DILocalVariable(name: "pn", arg: 2, scope: !662, file: !661, line: 180, type: !665)
!669 = !DILocalVariable(name: "s", arg: 3, scope: !662, file: !661, line: 180, type: !62)
!670 = !DILocalVariable(name: "n", scope: !662, file: !661, line: 182, type: !62)
!671 = !{!672}
!672 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!673 = !{!62, !35, !37}
!674 = distinct !DICompileUnit(language: DW_LANG_C99, file: !675, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183)
!675 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!676 = distinct !DICompileUnit(language: DW_LANG_C99, file: !677, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !678)
!677 = !DIFile(filename: "./lib/xdectoimax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!678 = !{!679}
!679 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !680, line: 26, size: 32, elements: !681)
!680 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!681 = !{!682, !683, !684, !685, !686}
!682 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!683 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!684 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!685 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!686 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!687 = distinct !DICompileUnit(language: DW_LANG_C99, file: !688, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !678)
!688 = !DIFile(filename: "./lib/xstrtoimax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!689 = distinct !DICompileUnit(language: DW_LANG_C99, file: !690, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183, retainedTypes: !656)
!690 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!691 = distinct !DICompileUnit(language: DW_LANG_C99, file: !692, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183)
!692 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!693 = distinct !DICompileUnit(language: DW_LANG_C99, file: !694, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183, retainedTypes: !656)
!694 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!695 = distinct !DICompileUnit(language: DW_LANG_C99, file: !696, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183, retainedTypes: !656)
!696 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!697 = distinct !DICompileUnit(language: DW_LANG_C99, file: !698, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183, retainedTypes: !699)
!698 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!699 = !{!62}
!700 = distinct !DICompileUnit(language: DW_LANG_C99, file: !701, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183)
!701 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!702 = distinct !DICompileUnit(language: DW_LANG_C99, file: !703, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183)
!703 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!704 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!705 = !{i32 2, !"Dwarf Version", i32 4}
!706 = !{i32 2, !"Debug Info Version", i32 3}
!707 = !{i32 1, !"wchar_size", i32 4}
!708 = !{i32 7, !"PIC Level", i32 2}
!709 = !{i32 7, !"PIE Level", i32 2}
!710 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 170, type: !711, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !713)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !147}
!713 = !{!714}
!714 = !DILocalVariable(name: "status", arg: 1, scope: !710, file: !3, line: 170, type: !147)
!715 = !DIExpression()
!716 = !DILocation(line: 170, column: 12, scope: !710)
!717 = !DILocation(line: 172, column: 14, scope: !718)
!718 = distinct !DILexicalBlock(scope: !710, file: !3, line: 172, column: 7)
!719 = !DILocation(line: 172, column: 7, scope: !710)
!720 = !DILocation(line: 173, column: 5, scope: !721)
!721 = distinct !DILexicalBlock(scope: !718, file: !3, line: 173, column: 5)
!722 = !{!723, !723, i64 0}
!723 = !{!"any pointer", !724, i64 0}
!724 = !{!"omnipotent char", !725, i64 0}
!725 = !{!"Simple C/C++ TBAA"}
!726 = !DILocation(line: 176, column: 7, scope: !727)
!727 = distinct !DILexicalBlock(scope: !718, file: !3, line: 175, column: 5)
!728 = !DILocation(line: 180, column: 7, scope: !727)
!729 = !DILocation(line: 580, column: 3, scope: !730, inlinedAt: !731)
!730 = distinct !DISubprogram(name: "emit_stdin_note", scope: !112, file: !112, line: 578, type: !181, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !183)
!731 = distinct !DILocation(line: 184, column: 7, scope: !727)
!732 = !DILocation(line: 587, column: 3, scope: !733, inlinedAt: !734)
!733 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !112, file: !112, line: 585, type: !181, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !183)
!734 = distinct !DILocation(line: 185, column: 7, scope: !727)
!735 = !DILocation(line: 187, column: 7, scope: !727)
!736 = !DILocation(line: 192, column: 7, scope: !727)
!737 = !DILocation(line: 200, column: 7, scope: !727)
!738 = !DILocation(line: 204, column: 7, scope: !727)
!739 = !DILocation(line: 205, column: 7, scope: !727)
!740 = !DILocation(line: 206, column: 7, scope: !727)
!741 = !DILocation(line: 212, column: 7, scope: !727)
!742 = !DILocation(line: 642, column: 15, scope: !111, inlinedAt: !743)
!743 = distinct !DILocation(line: 227, column: 7, scope: !727)
!744 = !DILocation(line: 651, column: 3, scope: !111, inlinedAt: !743)
!745 = !DILocation(line: 655, column: 29, scope: !111, inlinedAt: !743)
!746 = !DILocation(line: 655, column: 15, scope: !111, inlinedAt: !743)
!747 = !DILocation(line: 656, column: 7, scope: !748, inlinedAt: !743)
!748 = distinct !DILexicalBlock(scope: !111, file: !112, line: 656, column: 7)
!749 = !DILocation(line: 656, column: 19, scope: !748, inlinedAt: !743)
!750 = !DILocation(line: 656, column: 22, scope: !748, inlinedAt: !743)
!751 = !DILocation(line: 656, column: 7, scope: !111, inlinedAt: !743)
!752 = !DILocation(line: 662, column: 7, scope: !753, inlinedAt: !743)
!753 = distinct !DILexicalBlock(scope: !748, file: !112, line: 657, column: 5)
!754 = !DILocation(line: 664, column: 5, scope: !753, inlinedAt: !743)
!755 = !DILocation(line: 665, column: 3, scope: !111, inlinedAt: !743)
!756 = !DILocation(line: 667, column: 3, scope: !111, inlinedAt: !743)
!757 = !DILocation(line: 229, column: 3, scope: !710)
!758 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 459, type: !759, isLocal: false, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !762)
!759 = !DISubroutineType(types: !760)
!760 = !{!147, !147, !761}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!762 = !{!763, !764, !765, !766, !767}
!763 = !DILocalVariable(name: "argc", arg: 1, scope: !758, file: !3, line: 459, type: !147)
!764 = !DILocalVariable(name: "argv", arg: 2, scope: !758, file: !3, line: 459, type: !761)
!765 = !DILocalVariable(name: "c", scope: !758, file: !3, line: 461, type: !147)
!766 = !DILocalVariable(name: "len", scope: !758, file: !3, line: 462, type: !62)
!767 = !DILocalVariable(name: "ok", scope: !758, file: !3, line: 463, type: !108)
!768 = !DILocation(line: 459, column: 11, scope: !758)
!769 = !DILocation(line: 459, column: 24, scope: !758)
!770 = !DILocation(line: 463, column: 8, scope: !758)
!771 = !DILocation(line: 466, column: 21, scope: !758)
!772 = !DILocation(line: 466, column: 3, scope: !758)
!773 = !DILocation(line: 467, column: 3, scope: !758)
!774 = !DILocation(line: 468, column: 3, scope: !758)
!775 = !DILocation(line: 469, column: 3, scope: !758)
!776 = !DILocation(line: 471, column: 3, scope: !758)
!777 = !DILocation(line: 475, column: 3, scope: !758)
!778 = !DILocation(line: 475, column: 15, scope: !758)
!779 = !DILocation(line: 461, column: 7, scope: !758)
!780 = distinct !{!780, !777, !781}
!781 = !DILocation(line: 550, column: 5, scope: !758)
!782 = !DILocation(line: 481, column: 17, scope: !783)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 481, column: 15)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 479, column: 9)
!785 = distinct !DILexicalBlock(scope: !758, file: !3, line: 477, column: 5)
!786 = !DILocation(line: 481, column: 15, scope: !784)
!787 = !DILocation(line: 483, column: 28, scope: !788)
!788 = distinct !DILexicalBlock(scope: !783, file: !3, line: 482, column: 13)
!789 = !DILocation(line: 484, column: 29, scope: !788)
!790 = !DILocation(line: 484, column: 22, scope: !788)
!791 = !DILocation(line: 483, column: 15, scope: !788)
!792 = !DILocation(line: 486, column: 13, scope: !788)
!793 = !DILocation(line: 489, column: 17, scope: !794)
!794 = distinct !DILexicalBlock(scope: !784, file: !3, line: 489, column: 15)
!795 = !DILocation(line: 489, column: 15, scope: !784)
!796 = !DILocation(line: 491, column: 28, scope: !797)
!797 = distinct !DILexicalBlock(scope: !794, file: !3, line: 490, column: 13)
!798 = !DILocation(line: 492, column: 29, scope: !797)
!799 = !DILocation(line: 492, column: 22, scope: !797)
!800 = !DILocation(line: 491, column: 15, scope: !797)
!801 = !DILocation(line: 494, column: 13, scope: !797)
!802 = !DILocation(line: 497, column: 17, scope: !803)
!803 = distinct !DILexicalBlock(scope: !784, file: !3, line: 497, column: 15)
!804 = !DILocation(line: 497, column: 15, scope: !784)
!805 = !DILocation(line: 499, column: 28, scope: !806)
!806 = distinct !DILexicalBlock(scope: !803, file: !3, line: 498, column: 13)
!807 = !DILocation(line: 500, column: 29, scope: !806)
!808 = !DILocation(line: 500, column: 22, scope: !806)
!809 = !DILocation(line: 499, column: 15, scope: !806)
!810 = !DILocation(line: 502, column: 13, scope: !806)
!811 = !DILocation(line: 505, column: 46, scope: !784)
!812 = !DILocation(line: 506, column: 46, scope: !784)
!813 = !DILocation(line: 505, column: 34, scope: !784)
!814 = !DILocation(line: 505, column: 32, scope: !784)
!815 = !{!816, !816, i64 0}
!816 = !{!"long", !724, i64 0}
!817 = !DILocation(line: 508, column: 11, scope: !784)
!818 = !DILocation(line: 510, column: 35, scope: !784)
!819 = !DILocation(line: 511, column: 35, scope: !784)
!820 = !DILocation(line: 510, column: 23, scope: !784)
!821 = !DILocation(line: 510, column: 21, scope: !784)
!822 = !DILocation(line: 512, column: 11, scope: !784)
!823 = !DILocation(line: 515, column: 11, scope: !784)
!824 = !DILocation(line: 517, column: 36, scope: !784)
!825 = !DILocation(line: 518, column: 36, scope: !784)
!826 = !DILocation(line: 517, column: 24, scope: !784)
!827 = !DILocation(line: 517, column: 22, scope: !784)
!828 = !DILocation(line: 519, column: 11, scope: !784)
!829 = !DILocation(line: 521, column: 27, scope: !784)
!830 = !DILocation(line: 521, column: 25, scope: !784)
!831 = !DILocation(line: 522, column: 11, scope: !784)
!832 = !DILocation(line: 524, column: 38, scope: !784)
!833 = !DILocation(line: 525, column: 38, scope: !784)
!834 = !DILocation(line: 524, column: 26, scope: !784)
!835 = !DILocation(line: 524, column: 24, scope: !784)
!836 = !{!837, !837, i64 0}
!837 = !{!"int", !724, i64 0}
!838 = !DILocation(line: 526, column: 11, scope: !784)
!839 = !DILocation(line: 528, column: 15, scope: !840)
!840 = distinct !DILexicalBlock(scope: !784, file: !3, line: 528, column: 15)
!841 = !DILocation(line: 528, column: 15, scope: !784)
!842 = !DILocation(line: 529, column: 27, scope: !840)
!843 = !DILocation(line: 529, column: 13, scope: !840)
!844 = !DILocation(line: 530, column: 20, scope: !845)
!845 = distinct !DILexicalBlock(scope: !840, file: !3, line: 530, column: 20)
!846 = !DILocation(line: 530, column: 20, scope: !840)
!847 = !DILocation(line: 531, column: 27, scope: !845)
!848 = !DILocation(line: 531, column: 13, scope: !845)
!849 = !DILocation(line: 532, column: 20, scope: !850)
!850 = distinct !DILexicalBlock(scope: !845, file: !3, line: 532, column: 20)
!851 = !DILocation(line: 532, column: 20, scope: !845)
!852 = !DILocation(line: 533, column: 27, scope: !850)
!853 = !DILocation(line: 533, column: 13, scope: !850)
!854 = !DILocation(line: 536, column: 28, scope: !855)
!855 = distinct !DILexicalBlock(scope: !850, file: !3, line: 535, column: 13)
!856 = !DILocation(line: 537, column: 29, scope: !855)
!857 = !DILocation(line: 537, column: 22, scope: !855)
!858 = !DILocation(line: 536, column: 15, scope: !855)
!859 = !DILocation(line: 542, column: 25, scope: !784)
!860 = !DILocation(line: 542, column: 23, scope: !784)
!861 = !DILocation(line: 543, column: 11, scope: !784)
!862 = !DILocation(line: 544, column: 9, scope: !784)
!863 = !DILocation(line: 545, column: 9, scope: !784)
!864 = !DILocation(line: 552, column: 8, scope: !865)
!865 = distinct !DILexicalBlock(scope: !758, file: !3, line: 552, column: 7)
!866 = !DILocation(line: 552, column: 7, scope: !758)
!867 = !DILocation(line: 553, column: 5, scope: !865)
!868 = !DILocation(line: 556, column: 17, scope: !758)
!869 = !DILocation(line: 556, column: 9, scope: !758)
!870 = !DILocation(line: 462, column: 10, scope: !758)
!871 = !DILocation(line: 558, column: 24, scope: !758)
!872 = !DILocation(line: 558, column: 18, scope: !758)
!873 = !DILocation(line: 559, column: 40, scope: !758)
!874 = !DILocation(line: 559, column: 16, scope: !758)
!875 = !DILocation(line: 559, column: 14, scope: !758)
!876 = !DILocation(line: 560, column: 39, scope: !758)
!877 = !DILocalVariable(name: "__dest", arg: 1, scope: !878, file: !879, line: 95, type: !882)
!878 = distinct !DISubprogram(name: "stpcpy", scope: !879, file: !879, line: 95, type: !880, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !884)
!879 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!880 = !DISubroutineType(types: !881)
!881 = !{!35, !882, !883}
!882 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!883 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!884 = !{!877, !885}
!885 = !DILocalVariable(name: "__src", arg: 2, scope: !878, file: !879, line: 95, type: !883)
!886 = !DILocation(line: 95, column: 1, scope: !878, inlinedAt: !887)
!887 = distinct !DILocation(line: 560, column: 19, scope: !758)
!888 = !DILocation(line: 97, column: 49, scope: !878, inlinedAt: !887)
!889 = !DILocation(line: 97, column: 10, scope: !878, inlinedAt: !887)
!890 = !DILocation(line: 560, column: 53, scope: !758)
!891 = !DILocation(line: 95, column: 1, scope: !878, inlinedAt: !892)
!892 = distinct !DILocation(line: 560, column: 11, scope: !758)
!893 = !DILocation(line: 97, column: 49, scope: !878, inlinedAt: !892)
!894 = !DILocation(line: 97, column: 10, scope: !878, inlinedAt: !892)
!895 = !DILocation(line: 560, column: 67, scope: !758)
!896 = !DILocation(line: 95, column: 1, scope: !878, inlinedAt: !897)
!897 = distinct !DILocation(line: 560, column: 3, scope: !758)
!898 = !DILocation(line: 97, column: 49, scope: !878, inlinedAt: !897)
!899 = !DILocation(line: 97, column: 10, scope: !878, inlinedAt: !897)
!900 = !DILocation(line: 562, column: 22, scope: !758)
!901 = !DILocation(line: 562, column: 16, scope: !758)
!902 = !DILocation(line: 563, column: 36, scope: !758)
!903 = !DILocation(line: 563, column: 14, scope: !758)
!904 = !DILocation(line: 563, column: 12, scope: !758)
!905 = !DILocation(line: 564, column: 29, scope: !758)
!906 = !DILocation(line: 95, column: 1, scope: !878, inlinedAt: !907)
!907 = distinct !DILocation(line: 564, column: 11, scope: !758)
!908 = !DILocation(line: 97, column: 49, scope: !878, inlinedAt: !907)
!909 = !DILocation(line: 97, column: 10, scope: !878, inlinedAt: !907)
!910 = !DILocation(line: 564, column: 43, scope: !758)
!911 = !DILocation(line: 95, column: 1, scope: !878, inlinedAt: !912)
!912 = distinct !DILocation(line: 564, column: 3, scope: !758)
!913 = !DILocation(line: 97, column: 49, scope: !878, inlinedAt: !912)
!914 = !DILocation(line: 97, column: 10, scope: !878, inlinedAt: !912)
!915 = !DILocation(line: 566, column: 18, scope: !758)
!916 = !DILocation(line: 567, column: 40, scope: !758)
!917 = !DILocation(line: 567, column: 16, scope: !758)
!918 = !DILocation(line: 567, column: 14, scope: !758)
!919 = !DILocation(line: 568, column: 23, scope: !758)
!920 = !DILocation(line: 95, column: 1, scope: !878, inlinedAt: !921)
!921 = distinct !DILocation(line: 568, column: 3, scope: !758)
!922 = !DILocation(line: 97, column: 49, scope: !878, inlinedAt: !921)
!923 = !DILocation(line: 97, column: 10, scope: !878, inlinedAt: !921)
!924 = !DILocation(line: 571, column: 3, scope: !758)
!925 = !DILocation(line: 574, column: 17, scope: !758)
!926 = !DILocation(line: 574, column: 9, scope: !758)
!927 = !DILocation(line: 575, column: 32, scope: !758)
!928 = !DILocation(line: 575, column: 45, scope: !758)
!929 = !DILocation(line: 575, column: 51, scope: !758)
!930 = !DILocation(line: 575, column: 23, scope: !758)
!931 = !DILocation(line: 575, column: 21, scope: !758)
!932 = !DILocation(line: 576, column: 35, scope: !758)
!933 = !DILocation(line: 576, column: 48, scope: !758)
!934 = !DILocation(line: 576, column: 3, scope: !758)
!935 = !DILocation(line: 577, column: 3, scope: !758)
!936 = !DILocation(line: 577, column: 41, scope: !758)
!937 = !{!724, !724, i64 0}
!938 = !DILocation(line: 579, column: 13, scope: !758)
!939 = !DILocation(line: 579, column: 11, scope: !758)
!940 = !DILocation(line: 580, column: 18, scope: !758)
!941 = !DILocation(line: 580, column: 16, scope: !758)
!942 = !DILocation(line: 581, column: 17, scope: !758)
!943 = !DILocation(line: 585, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !758, file: !3, line: 585, column: 7)
!945 = !DILocation(line: 585, column: 14, scope: !944)
!946 = !DILocation(line: 585, column: 7, scope: !758)
!947 = !DILocation(line: 586, column: 10, scope: !944)
!948 = !DILocation(line: 586, column: 8, scope: !944)
!949 = !DILocation(line: 586, column: 5, scope: !944)
!950 = !DILocation(line: 588, column: 19, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 588, column: 5)
!952 = distinct !DILexicalBlock(scope: !944, file: !3, line: 588, column: 5)
!953 = !DILocation(line: 588, column: 5, scope: !952)
!954 = !DILocation(line: 589, column: 22, scope: !951)
!955 = !DILocation(line: 589, column: 13, scope: !951)
!956 = !DILocation(line: 589, column: 10, scope: !951)
!957 = !DILocation(line: 588, column: 33, scope: !951)
!958 = distinct !{!958, !953, !959}
!959 = !DILocation(line: 589, column: 34, scope: !952)
!960 = !DILocation(line: 591, column: 23, scope: !961)
!961 = distinct !DILexicalBlock(scope: !758, file: !3, line: 591, column: 7)
!962 = !DILocation(line: 591, column: 34, scope: !961)
!963 = !DILocation(line: 591, column: 26, scope: !961)
!964 = !DILocation(line: 591, column: 41, scope: !961)
!965 = !DILocation(line: 591, column: 7, scope: !758)
!966 = !DILocation(line: 592, column: 5, scope: !961)
!967 = !DILocation(line: 594, column: 10, scope: !758)
!968 = !DILocation(line: 594, column: 3, scope: !758)
!969 = distinct !DISubprogram(name: "build_type_arg", scope: !3, file: !3, line: 236, type: !970, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !973)
!970 = !DISubroutineType(types: !971)
!971 = !{!108, !972, !177, !35}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!973 = !{!974, !975, !976, !977, !978}
!974 = !DILocalVariable(name: "typep", arg: 1, scope: !969, file: !3, line: 236, type: !972)
!975 = !DILocalVariable(name: "regexp", arg: 2, scope: !969, file: !3, line: 237, type: !177)
!976 = !DILocalVariable(name: "fastmap", arg: 3, scope: !969, file: !3, line: 237, type: !35)
!977 = !DILocalVariable(name: "errmsg", scope: !969, file: !3, line: 239, type: !43)
!978 = !DILocalVariable(name: "rval", scope: !969, file: !3, line: 240, type: !108)
!979 = !DILocation(line: 236, column: 30, scope: !969)
!980 = !DILocation(line: 237, column: 43, scope: !969)
!981 = !DILocation(line: 237, column: 57, scope: !969)
!982 = !DILocation(line: 240, column: 8, scope: !969)
!983 = !DILocation(line: 242, column: 12, scope: !969)
!984 = !DILocation(line: 242, column: 11, scope: !969)
!985 = !DILocation(line: 242, column: 3, scope: !969)
!986 = !DILocation(line: 247, column: 14, scope: !987)
!987 = distinct !DILexicalBlock(scope: !969, file: !3, line: 243, column: 5)
!988 = !DILocation(line: 248, column: 7, scope: !987)
!989 = !DILocation(line: 250, column: 22, scope: !987)
!990 = !DILocation(line: 250, column: 14, scope: !987)
!991 = !DILocation(line: 253, column: 15, scope: !987)
!992 = !DILocation(line: 253, column: 23, scope: !987)
!993 = !DILocation(line: 252, column: 25, scope: !987)
!994 = !{!995, !723, i64 32}
!995 = !{!"re_pattern_buffer", !723, i64 0, !816, i64 8, !816, i64 16, !816, i64 24, !723, i64 32, !723, i64 40, !816, i64 48, !837, i64 56, !837, i64 56, !837, i64 56, !837, i64 56, !837, i64 56, !837, i64 56, !837, i64 56}
!996 = !DILocation(line: 254, column: 15, scope: !987)
!997 = !DILocation(line: 254, column: 25, scope: !987)
!998 = !{!995, !723, i64 40}
!999 = !DILocation(line: 255, column: 25, scope: !987)
!1000 = !DILocation(line: 257, column: 36, scope: !987)
!1001 = !DILocation(line: 257, column: 44, scope: !987)
!1002 = !DILocation(line: 257, column: 16, scope: !987)
!1003 = !DILocation(line: 239, column: 15, scope: !969)
!1004 = !DILocation(line: 258, column: 11, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !987, file: !3, line: 258, column: 11)
!1006 = !DILocation(line: 258, column: 11, scope: !987)
!1007 = !DILocation(line: 259, column: 9, scope: !1005)
!1008 = !DILocation(line: 265, column: 3, scope: !969)
!1009 = distinct !DISubprogram(name: "nl_file", scope: !3, file: !3, line: 420, type: !1010, isLocal: true, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1012)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!108, !43}
!1012 = !{!1013, !1014}
!1013 = !DILocalVariable(name: "file", arg: 1, scope: !1009, file: !3, line: 420, type: !43)
!1014 = !DILocalVariable(name: "stream", scope: !1009, file: !3, line: 422, type: !1015)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1017, line: 7, baseType: !1018)
!1017 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1019, line: 241, size: 1728, elements: !1020)
!1019 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1041, !1042, !1043, !1044, !1046, !1047, !1049, !1053, !1056, !1058, !1059, !1060, !1061, !1062, !1063, !1064}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1018, file: !1019, line: 242, baseType: !147, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1018, file: !1019, line: 247, baseType: !35, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1018, file: !1019, line: 248, baseType: !35, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1018, file: !1019, line: 249, baseType: !35, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1018, file: !1019, line: 250, baseType: !35, size: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1018, file: !1019, line: 251, baseType: !35, size: 64, offset: 320)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1018, file: !1019, line: 252, baseType: !35, size: 64, offset: 384)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1018, file: !1019, line: 253, baseType: !35, size: 64, offset: 448)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1018, file: !1019, line: 254, baseType: !35, size: 64, offset: 512)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1018, file: !1019, line: 256, baseType: !35, size: 64, offset: 576)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1018, file: !1019, line: 257, baseType: !35, size: 64, offset: 640)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1018, file: !1019, line: 258, baseType: !35, size: 64, offset: 704)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1018, file: !1019, line: 260, baseType: !1034, size: 64, offset: 768)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1019, line: 156, size: 192, elements: !1036)
!1036 = !{!1037, !1038, !1040}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1035, file: !1019, line: 157, baseType: !1034, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1035, file: !1019, line: 158, baseType: !1039, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1035, file: !1019, line: 162, baseType: !147, size: 32, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1018, file: !1019, line: 262, baseType: !1039, size: 64, offset: 832)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1018, file: !1019, line: 264, baseType: !147, size: 32, offset: 896)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1018, file: !1019, line: 268, baseType: !147, size: 32, offset: 928)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1018, file: !1019, line: 270, baseType: !1045, size: 64, offset: 960)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !104, line: 140, baseType: !105)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1018, file: !1019, line: 274, baseType: !249, size: 16, offset: 1024)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1018, file: !1019, line: 275, baseType: !1048, size: 8, offset: 1040)
!1048 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1018, file: !1019, line: 276, baseType: !1050, size: 8, offset: 1048)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, elements: !1051)
!1051 = !{!1052}
!1052 = !DISubrange(count: 1)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1018, file: !1019, line: 280, baseType: !1054, size: 64, offset: 1088)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1019, line: 150, baseType: null)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1018, file: !1019, line: 289, baseType: !1057, size: 64, offset: 1152)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !104, line: 141, baseType: !105)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1018, file: !1019, line: 297, baseType: !37, size: 64, offset: 1216)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1018, file: !1019, line: 298, baseType: !37, size: 64, offset: 1280)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1018, file: !1019, line: 299, baseType: !37, size: 64, offset: 1344)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1018, file: !1019, line: 300, baseType: !37, size: 64, offset: 1408)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1018, file: !1019, line: 302, baseType: !62, size: 64, offset: 1472)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1018, file: !1019, line: 303, baseType: !147, size: 32, offset: 1536)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1018, file: !1019, line: 305, baseType: !1065, size: 160, offset: 1568)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, elements: !1066)
!1066 = !{!1067}
!1067 = !DISubrange(count: 20)
!1068 = !DILocation(line: 420, column: 22, scope: !1009)
!1069 = !DILocation(line: 424, column: 7, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 424, column: 7)
!1071 = !DILocation(line: 424, column: 7, scope: !1009)
!1072 = !DILocation(line: 427, column: 16, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 425, column: 5)
!1074 = !DILocation(line: 422, column: 9, scope: !1009)
!1075 = !DILocation(line: 428, column: 5, scope: !1073)
!1076 = !DILocation(line: 431, column: 16, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 430, column: 5)
!1078 = !DILocation(line: 432, column: 18, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 432, column: 11)
!1080 = !DILocation(line: 432, column: 11, scope: !1077)
!1081 = !DILocation(line: 434, column: 21, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 433, column: 9)
!1083 = !DILocation(line: 434, column: 34, scope: !1082)
!1084 = !DILocation(line: 434, column: 11, scope: !1082)
!1085 = !DILocation(line: 435, column: 11, scope: !1082)
!1086 = !DILocation(line: 439, column: 3, scope: !1009)
!1087 = !DILocalVariable(name: "fp", arg: 1, scope: !1088, file: !3, line: 394, type: !1015)
!1088 = distinct !DISubprogram(name: "process_file", scope: !3, file: !3, line: 394, type: !1089, isLocal: true, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1091)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !1015}
!1091 = !{!1087}
!1092 = !DILocation(line: 394, column: 21, scope: !1088, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 441, column: 3, scope: !1009)
!1094 = !DILocation(line: 396, column: 10, scope: !1088, inlinedAt: !1093)
!1095 = !DILocation(line: 396, column: 3, scope: !1088, inlinedAt: !1093)
!1096 = !DILocation(line: 375, column: 25, scope: !1097, inlinedAt: !1102)
!1097 = distinct !DISubprogram(name: "check_section", scope: !3, file: !3, line: 373, type: !1098, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1100)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!28}
!1100 = !{!1101}
!1101 = !DILocalVariable(name: "len", scope: !1097, file: !3, line: 375, type: !62)
!1102 = distinct !DILocation(line: 398, column: 15, scope: !1103, inlinedAt: !1093)
!1103 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 397, column: 5)
!1104 = !{!1105, !816, i64 8}
!1105 = !{!"linebuffer", !816, i64 0, !816, i64 8, !723, i64 16}
!1106 = !DILocation(line: 375, column: 32, scope: !1097, inlinedAt: !1102)
!1107 = !DILocation(line: 375, column: 10, scope: !1097, inlinedAt: !1102)
!1108 = !DILocation(line: 377, column: 11, scope: !1109, inlinedAt: !1102)
!1109 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 377, column: 7)
!1110 = !DILocation(line: 377, column: 15, scope: !1109, inlinedAt: !1102)
!1111 = !DILocation(line: 377, column: 35, scope: !1109, inlinedAt: !1102)
!1112 = !{!1105, !723, i64 16}
!1113 = !DILocation(line: 377, column: 43, scope: !1109, inlinedAt: !1102)
!1114 = !DILocation(line: 377, column: 18, scope: !1109, inlinedAt: !1102)
!1115 = !DILocation(line: 377, column: 7, scope: !1097, inlinedAt: !1102)
!1116 = !DILocation(line: 379, column: 14, scope: !1117, inlinedAt: !1102)
!1117 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 379, column: 7)
!1118 = !DILocation(line: 379, column: 11, scope: !1117, inlinedAt: !1102)
!1119 = !DILocation(line: 380, column: 7, scope: !1117, inlinedAt: !1102)
!1120 = !DILocation(line: 380, column: 36, scope: !1117, inlinedAt: !1102)
!1121 = !DILocation(line: 380, column: 11, scope: !1117, inlinedAt: !1102)
!1122 = !DILocation(line: 379, column: 7, scope: !1097, inlinedAt: !1102)
!1123 = !DILocation(line: 382, column: 14, scope: !1124, inlinedAt: !1102)
!1124 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 382, column: 7)
!1125 = !DILocation(line: 382, column: 11, scope: !1124, inlinedAt: !1102)
!1126 = !DILocation(line: 383, column: 7, scope: !1124, inlinedAt: !1102)
!1127 = !DILocation(line: 383, column: 36, scope: !1124, inlinedAt: !1102)
!1128 = !DILocation(line: 383, column: 11, scope: !1124, inlinedAt: !1102)
!1129 = !DILocation(line: 382, column: 7, scope: !1097, inlinedAt: !1102)
!1130 = !DILocation(line: 385, column: 14, scope: !1131, inlinedAt: !1102)
!1131 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 385, column: 7)
!1132 = !DILocation(line: 385, column: 11, scope: !1131, inlinedAt: !1102)
!1133 = !DILocation(line: 386, column: 7, scope: !1131, inlinedAt: !1102)
!1134 = !DILocation(line: 386, column: 36, scope: !1131, inlinedAt: !1102)
!1135 = !DILocation(line: 386, column: 11, scope: !1131, inlinedAt: !1102)
!1136 = !DILocation(line: 385, column: 7, scope: !1097, inlinedAt: !1102)
!1137 = !DILocation(line: 288, column: 18, scope: !1138, inlinedAt: !1139)
!1138 = distinct !DISubprogram(name: "proc_header", scope: !3, file: !3, line: 286, type: !181, isLocal: true, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !183)
!1139 = distinct !DILocation(line: 401, column: 11, scope: !1140, inlinedAt: !1093)
!1140 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 399, column: 9)
!1141 = !DILocation(line: 288, column: 16, scope: !1138, inlinedAt: !1139)
!1142 = !DILocation(line: 289, column: 17, scope: !1138, inlinedAt: !1139)
!1143 = !DILocation(line: 290, column: 7, scope: !1138, inlinedAt: !1139)
!1144 = !DILocation(line: 291, column: 15, scope: !1145, inlinedAt: !1139)
!1145 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 290, column: 7)
!1146 = !DILocation(line: 291, column: 13, scope: !1145, inlinedAt: !1139)
!1147 = !DILocation(line: 291, column: 5, scope: !1145, inlinedAt: !1139)
!1148 = !DILocalVariable(name: "__c", arg: 1, scope: !1149, file: !1150, line: 105, type: !147)
!1149 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1150, file: !1150, line: 105, type: !1151, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1153)
!1150 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!147, !147}
!1153 = !{!1148}
!1154 = !DILocation(line: 105, column: 23, scope: !1149, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 292, column: 3, scope: !1138, inlinedAt: !1139)
!1156 = !DILocation(line: 107, column: 10, scope: !1149, inlinedAt: !1155)
!1157 = !{!1158, !723, i64 40}
!1158 = !{!"_IO_FILE", !837, i64 0, !723, i64 8, !723, i64 16, !723, i64 24, !723, i64 32, !723, i64 40, !723, i64 48, !723, i64 56, !723, i64 64, !723, i64 72, !723, i64 80, !723, i64 88, !723, i64 96, !723, i64 104, !837, i64 112, !837, i64 116, !816, i64 120, !1159, i64 128, !724, i64 130, !724, i64 131, !723, i64 136, !816, i64 144, !723, i64 152, !723, i64 160, !723, i64 168, !723, i64 176, !816, i64 184, !837, i64 192, !724, i64 196}
!1159 = !{!"short", !724, i64 0}
!1160 = !{!1158, !723, i64 48}
!1161 = !{!"branch_weights", i32 2000, i32 1}
!1162 = !DILocation(line: 300, column: 18, scope: !1163, inlinedAt: !1164)
!1163 = distinct !DISubprogram(name: "proc_body", scope: !3, file: !3, line: 298, type: !181, isLocal: true, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !183)
!1164 = distinct !DILocation(line: 404, column: 11, scope: !1140, inlinedAt: !1093)
!1165 = !DILocation(line: 300, column: 16, scope: !1163, inlinedAt: !1164)
!1166 = !DILocation(line: 301, column: 17, scope: !1163, inlinedAt: !1164)
!1167 = !DILocation(line: 302, column: 7, scope: !1163, inlinedAt: !1164)
!1168 = !DILocation(line: 303, column: 15, scope: !1169, inlinedAt: !1164)
!1169 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 302, column: 7)
!1170 = !DILocation(line: 303, column: 13, scope: !1169, inlinedAt: !1164)
!1171 = !DILocation(line: 303, column: 5, scope: !1169, inlinedAt: !1164)
!1172 = !DILocation(line: 105, column: 23, scope: !1149, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 304, column: 3, scope: !1163, inlinedAt: !1164)
!1174 = !DILocation(line: 107, column: 10, scope: !1149, inlinedAt: !1173)
!1175 = !DILocation(line: 312, column: 18, scope: !1176, inlinedAt: !1177)
!1176 = distinct !DISubprogram(name: "proc_footer", scope: !3, file: !3, line: 310, type: !181, isLocal: true, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !183)
!1177 = distinct !DILocation(line: 407, column: 11, scope: !1140, inlinedAt: !1093)
!1178 = !DILocation(line: 312, column: 16, scope: !1176, inlinedAt: !1177)
!1179 = !DILocation(line: 313, column: 17, scope: !1176, inlinedAt: !1177)
!1180 = !DILocation(line: 314, column: 7, scope: !1176, inlinedAt: !1177)
!1181 = !DILocation(line: 315, column: 15, scope: !1182, inlinedAt: !1177)
!1182 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 314, column: 7)
!1183 = !DILocation(line: 315, column: 13, scope: !1182, inlinedAt: !1177)
!1184 = !DILocation(line: 315, column: 5, scope: !1182, inlinedAt: !1177)
!1185 = !DILocation(line: 105, column: 23, scope: !1149, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 316, column: 3, scope: !1176, inlinedAt: !1177)
!1187 = !DILocation(line: 107, column: 10, scope: !1149, inlinedAt: !1186)
!1188 = !DILocation(line: 326, column: 12, scope: !180, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 410, column: 11, scope: !1140, inlinedAt: !1093)
!1190 = !DILocation(line: 326, column: 11, scope: !180, inlinedAt: !1189)
!1191 = !DILocation(line: 326, column: 3, scope: !180, inlinedAt: !1189)
!1192 = !DILocation(line: 329, column: 11, scope: !1193, inlinedAt: !1189)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 329, column: 11)
!1194 = distinct !DILexicalBlock(scope: !180, file: !3, line: 327, column: 5)
!1195 = !DILocation(line: 329, column: 22, scope: !1193, inlinedAt: !1189)
!1196 = !DILocation(line: 329, column: 11, scope: !1194, inlinedAt: !1189)
!1197 = !DILocation(line: 331, column: 17, scope: !1198, inlinedAt: !1189)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 331, column: 15)
!1199 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 330, column: 9)
!1200 = !DILocation(line: 331, column: 35, scope: !1198, inlinedAt: !1189)
!1201 = !DILocation(line: 331, column: 38, scope: !1198, inlinedAt: !1189)
!1202 = !DILocation(line: 331, column: 52, scope: !1198, inlinedAt: !1189)
!1203 = !DILocation(line: 331, column: 15, scope: !1199, inlinedAt: !1189)
!1204 = !DILocation(line: 275, column: 3, scope: !1205, inlinedAt: !1208)
!1205 = distinct !DISubprogram(name: "print_lineno", scope: !3, file: !3, line: 271, type: !181, isLocal: true, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1206)
!1206 = !{!1207}
!1207 = !DILocalVariable(name: "next_line_no", scope: !1205, file: !3, line: 273, type: !101)
!1208 = distinct !DILocation(line: 333, column: 15, scope: !1209, inlinedAt: !1189)
!1209 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 332, column: 13)
!1210 = !DILocation(line: 277, column: 28, scope: !1205, inlinedAt: !1208)
!1211 = !DILocation(line: 278, column: 20, scope: !1212, inlinedAt: !1208)
!1212 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 278, column: 7)
!1213 = !DILocation(line: 278, column: 7, scope: !1205, inlinedAt: !1208)
!1214 = !DILocation(line: 279, column: 5, scope: !1212, inlinedAt: !1208)
!1215 = !DILocation(line: 277, column: 18, scope: !1205, inlinedAt: !1208)
!1216 = !DILocation(line: 277, column: 26, scope: !1205, inlinedAt: !1208)
!1217 = !DILocation(line: 280, column: 11, scope: !1205, inlinedAt: !1208)
!1218 = !DILocation(line: 334, column: 27, scope: !1209, inlinedAt: !1189)
!1219 = !DILocation(line: 335, column: 13, scope: !1209, inlinedAt: !1189)
!1220 = !DILocation(line: 337, column: 13, scope: !1198, inlinedAt: !1189)
!1221 = !DILocation(line: 275, column: 3, scope: !1205, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 340, column: 9, scope: !1193, inlinedAt: !1189)
!1223 = !DILocation(line: 277, column: 28, scope: !1205, inlinedAt: !1222)
!1224 = !DILocation(line: 278, column: 20, scope: !1212, inlinedAt: !1222)
!1225 = !DILocation(line: 278, column: 7, scope: !1205, inlinedAt: !1222)
!1226 = !DILocation(line: 279, column: 5, scope: !1212, inlinedAt: !1222)
!1227 = !DILocation(line: 277, column: 18, scope: !1205, inlinedAt: !1222)
!1228 = !DILocation(line: 277, column: 26, scope: !1205, inlinedAt: !1222)
!1229 = !DILocation(line: 280, column: 11, scope: !1205, inlinedAt: !1222)
!1230 = !DILocation(line: 343, column: 13, scope: !1231, inlinedAt: !1189)
!1231 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 343, column: 11)
!1232 = !DILocation(line: 343, column: 11, scope: !1194, inlinedAt: !1189)
!1233 = !DILocation(line: 275, column: 3, scope: !1205, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 344, column: 9, scope: !1231, inlinedAt: !1189)
!1235 = !DILocation(line: 277, column: 28, scope: !1205, inlinedAt: !1234)
!1236 = !DILocation(line: 278, column: 20, scope: !1212, inlinedAt: !1234)
!1237 = !DILocation(line: 278, column: 7, scope: !1205, inlinedAt: !1234)
!1238 = !DILocation(line: 279, column: 5, scope: !1212, inlinedAt: !1234)
!1239 = !DILocation(line: 277, column: 18, scope: !1205, inlinedAt: !1234)
!1240 = !DILocation(line: 277, column: 26, scope: !1205, inlinedAt: !1234)
!1241 = !DILocation(line: 280, column: 11, scope: !1205, inlinedAt: !1234)
!1242 = !DILocation(line: 344, column: 9, scope: !1231, inlinedAt: !1189)
!1243 = !DILocation(line: 346, column: 9, scope: !1231, inlinedAt: !1189)
!1244 = !DILocation(line: 349, column: 7, scope: !1194, inlinedAt: !1189)
!1245 = !DILocation(line: 350, column: 7, scope: !1194, inlinedAt: !1189)
!1246 = !DILocation(line: 352, column: 26, scope: !1194, inlinedAt: !1189)
!1247 = !DILocation(line: 352, column: 50, scope: !1194, inlinedAt: !1189)
!1248 = !DILocation(line: 352, column: 74, scope: !1194, inlinedAt: !1189)
!1249 = !DILocation(line: 352, column: 58, scope: !1194, inlinedAt: !1189)
!1250 = !DILocation(line: 352, column: 15, scope: !1194, inlinedAt: !1189)
!1251 = !DILocation(line: 352, column: 7, scope: !1194, inlinedAt: !1189)
!1252 = !DILocation(line: 356, column: 11, scope: !1253, inlinedAt: !1189)
!1253 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 354, column: 9)
!1254 = !DILocation(line: 359, column: 11, scope: !1253, inlinedAt: !1189)
!1255 = !DILocation(line: 360, column: 11, scope: !1253, inlinedAt: !1189)
!1256 = !DILocation(line: 275, column: 3, scope: !1205, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 363, column: 11, scope: !1253, inlinedAt: !1189)
!1258 = !DILocation(line: 277, column: 28, scope: !1205, inlinedAt: !1257)
!1259 = !DILocation(line: 278, column: 20, scope: !1212, inlinedAt: !1257)
!1260 = !DILocation(line: 278, column: 7, scope: !1205, inlinedAt: !1257)
!1261 = !DILocation(line: 279, column: 5, scope: !1212, inlinedAt: !1257)
!1262 = !DILocation(line: 277, column: 18, scope: !1205, inlinedAt: !1257)
!1263 = !DILocation(line: 277, column: 26, scope: !1205, inlinedAt: !1257)
!1264 = !DILocation(line: 280, column: 11, scope: !1205, inlinedAt: !1257)
!1265 = !DILocation(line: 364, column: 11, scope: !1253, inlinedAt: !1189)
!1266 = !DILocation(line: 367, column: 3, scope: !180, inlinedAt: !1189)
!1267 = !DILocation(line: 411, column: 11, scope: !1140, inlinedAt: !1093)
!1268 = distinct !{!1268, !1269, !1270}
!1269 = !DILocation(line: 396, column: 3, scope: !1088)
!1270 = !DILocation(line: 413, column: 5, scope: !1088)
!1271 = !DILocalVariable(name: "__stream", arg: 1, scope: !1272, file: !1150, line: 132, type: !1015)
!1272 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1150, file: !1150, line: 132, type: !1273, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1275)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!147, !1015}
!1275 = !{!1271}
!1276 = !DILocation(line: 132, column: 1, scope: !1272, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 443, column: 7, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 443, column: 7)
!1279 = !DILocation(line: 134, column: 10, scope: !1272, inlinedAt: !1277)
!1280 = !{!1158, !837, i64 0}
!1281 = !DILocation(line: 443, column: 7, scope: !1278)
!1282 = !DILocation(line: 443, column: 7, scope: !1009)
!1283 = !DILocation(line: 445, column: 17, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 444, column: 5)
!1285 = !DILocation(line: 445, column: 30, scope: !1284)
!1286 = !DILocation(line: 445, column: 7, scope: !1284)
!1287 = !DILocation(line: 446, column: 7, scope: !1284)
!1288 = !DILocation(line: 448, column: 7, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 448, column: 7)
!1290 = !DILocation(line: 448, column: 7, scope: !1009)
!1291 = !DILocation(line: 449, column: 5, scope: !1289)
!1292 = !DILocation(line: 450, column: 12, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 450, column: 12)
!1294 = !DILocation(line: 450, column: 28, scope: !1293)
!1295 = !DILocation(line: 450, column: 12, scope: !1289)
!1296 = !DILocation(line: 452, column: 17, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 451, column: 5)
!1298 = !DILocation(line: 452, column: 30, scope: !1297)
!1299 = !DILocation(line: 452, column: 7, scope: !1297)
!1300 = !DILocation(line: 453, column: 7, scope: !1297)
!1301 = !DILocation(line: 456, column: 1, scope: !1009)
!1302 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !208, file: !208, line: 41, type: !113, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !1303)
!1303 = !{!1304}
!1304 = !DILocalVariable(name: "file", arg: 1, scope: !1302, file: !208, line: 41, type: !43)
!1305 = !DILocation(line: 41, column: 41, scope: !1302)
!1306 = !DILocation(line: 43, column: 13, scope: !1302)
!1307 = !DILocation(line: 44, column: 1, scope: !1302)
!1308 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !208, file: !208, line: 78, type: !1309, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !1311)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{null, !108}
!1311 = !{!1312}
!1312 = !DILocalVariable(name: "ignore", arg: 1, scope: !1308, file: !208, line: 78, type: !108)
!1313 = !DILocation(line: 78, column: 37, scope: !1308)
!1314 = !DILocation(line: 80, column: 16, scope: !1308)
!1315 = !{!1316, !1316, i64 0}
!1316 = !{!"_Bool", !724, i64 0}
!1317 = !DILocation(line: 81, column: 1, scope: !1308)
!1318 = distinct !DISubprogram(name: "close_stdout", scope: !208, file: !208, line: 107, type: !181, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !1319)
!1319 = !{!1320}
!1320 = !DILocalVariable(name: "write_error", scope: !1321, file: !208, line: 112, type: !43)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !208, line: 111, column: 5)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !208, line: 109, column: 7)
!1323 = !DILocation(line: 109, column: 21, scope: !1322)
!1324 = !DILocation(line: 109, column: 7, scope: !1322)
!1325 = !DILocation(line: 109, column: 29, scope: !1322)
!1326 = !DILocation(line: 110, column: 7, scope: !1322)
!1327 = !DILocation(line: 110, column: 12, scope: !1322)
!1328 = !{i8 0, i8 2}
!1329 = !DILocation(line: 114, column: 19, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1321, file: !208, line: 113, column: 11)
!1331 = !DILocation(line: 110, column: 25, scope: !1322)
!1332 = !DILocation(line: 110, column: 28, scope: !1322)
!1333 = !DILocation(line: 110, column: 34, scope: !1322)
!1334 = !DILocation(line: 109, column: 7, scope: !1318)
!1335 = !DILocation(line: 112, column: 33, scope: !1321)
!1336 = !DILocation(line: 112, column: 19, scope: !1321)
!1337 = !DILocation(line: 113, column: 11, scope: !1330)
!1338 = !DILocation(line: 113, column: 11, scope: !1321)
!1339 = !DILocation(line: 114, column: 36, scope: !1330)
!1340 = !DILocation(line: 114, column: 9, scope: !1330)
!1341 = !DILocation(line: 117, column: 9, scope: !1330)
!1342 = !DILocation(line: 119, column: 14, scope: !1321)
!1343 = !DILocation(line: 119, column: 7, scope: !1321)
!1344 = !DILocation(line: 122, column: 22, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1318, file: !208, line: 122, column: 8)
!1346 = !DILocation(line: 122, column: 8, scope: !1345)
!1347 = !DILocation(line: 122, column: 30, scope: !1345)
!1348 = !DILocation(line: 122, column: 8, scope: !1318)
!1349 = !DILocation(line: 123, column: 13, scope: !1345)
!1350 = !DILocation(line: 123, column: 6, scope: !1345)
!1351 = !DILocation(line: 124, column: 1, scope: !1318)
!1352 = distinct !DISubprogram(name: "fdadvise", scope: !1353, file: !1353, line: 31, type: !1354, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !643, variables: !1359)
!1353 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1354 = !DISubroutineType(types: !1355)
!1355 = !{null, !147, !1356, !1356, !1358}
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1357, line: 57, baseType: !1045)
!1357 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !20, line: 52, baseType: !19)
!1359 = !{!1360, !1361, !1362, !1363, !1364}
!1360 = !DILocalVariable(name: "fd", arg: 1, scope: !1352, file: !1353, line: 31, type: !147)
!1361 = !DILocalVariable(name: "offset", arg: 2, scope: !1352, file: !1353, line: 31, type: !1356)
!1362 = !DILocalVariable(name: "len", arg: 3, scope: !1352, file: !1353, line: 31, type: !1356)
!1363 = !DILocalVariable(name: "advice", arg: 4, scope: !1352, file: !1353, line: 31, type: !1358)
!1364 = !DILocalVariable(name: "__x", scope: !1365, file: !1353, line: 34, type: !147)
!1365 = distinct !DILexicalBlock(scope: !1352, file: !1353, line: 34, column: 3)
!1366 = !DILocation(line: 31, column: 15, scope: !1352)
!1367 = !DILocation(line: 31, column: 25, scope: !1352)
!1368 = !DILocation(line: 31, column: 39, scope: !1352)
!1369 = !DILocation(line: 31, column: 54, scope: !1352)
!1370 = !DILocation(line: 34, column: 3, scope: !1365)
!1371 = !DILocation(line: 36, column: 1, scope: !1352)
!1372 = distinct !DISubprogram(name: "fadvise", scope: !1353, file: !1353, line: 39, type: !1373, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !643, variables: !1415)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{null, !1375, !1358}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1017, line: 7, baseType: !1377)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1019, line: 241, size: 1728, elements: !1378)
!1378 = !{!1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1377, file: !1019, line: 242, baseType: !147, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1377, file: !1019, line: 247, baseType: !35, size: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1377, file: !1019, line: 248, baseType: !35, size: 64, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1377, file: !1019, line: 249, baseType: !35, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1377, file: !1019, line: 250, baseType: !35, size: 64, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1377, file: !1019, line: 251, baseType: !35, size: 64, offset: 320)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1377, file: !1019, line: 252, baseType: !35, size: 64, offset: 384)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1377, file: !1019, line: 253, baseType: !35, size: 64, offset: 448)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1377, file: !1019, line: 254, baseType: !35, size: 64, offset: 512)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1377, file: !1019, line: 256, baseType: !35, size: 64, offset: 576)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1377, file: !1019, line: 257, baseType: !35, size: 64, offset: 640)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1377, file: !1019, line: 258, baseType: !35, size: 64, offset: 704)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1377, file: !1019, line: 260, baseType: !1392, size: 64, offset: 768)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1019, line: 156, size: 192, elements: !1394)
!1394 = !{!1395, !1396, !1398}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1393, file: !1019, line: 157, baseType: !1392, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1393, file: !1019, line: 158, baseType: !1397, size: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1393, file: !1019, line: 162, baseType: !147, size: 32, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1377, file: !1019, line: 262, baseType: !1397, size: 64, offset: 832)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1377, file: !1019, line: 264, baseType: !147, size: 32, offset: 896)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1377, file: !1019, line: 268, baseType: !147, size: 32, offset: 928)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1377, file: !1019, line: 270, baseType: !1045, size: 64, offset: 960)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1377, file: !1019, line: 274, baseType: !249, size: 16, offset: 1024)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1377, file: !1019, line: 275, baseType: !1048, size: 8, offset: 1040)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1377, file: !1019, line: 276, baseType: !1050, size: 8, offset: 1048)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1377, file: !1019, line: 280, baseType: !1054, size: 64, offset: 1088)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1377, file: !1019, line: 289, baseType: !1057, size: 64, offset: 1152)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1377, file: !1019, line: 297, baseType: !37, size: 64, offset: 1216)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1377, file: !1019, line: 298, baseType: !37, size: 64, offset: 1280)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1377, file: !1019, line: 299, baseType: !37, size: 64, offset: 1344)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1377, file: !1019, line: 300, baseType: !37, size: 64, offset: 1408)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1377, file: !1019, line: 302, baseType: !62, size: 64, offset: 1472)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1377, file: !1019, line: 303, baseType: !147, size: 32, offset: 1536)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1377, file: !1019, line: 305, baseType: !1065, size: 160, offset: 1568)
!1415 = !{!1416, !1417}
!1416 = !DILocalVariable(name: "fp", arg: 1, scope: !1372, file: !1353, line: 39, type: !1375)
!1417 = !DILocalVariable(name: "advice", arg: 2, scope: !1372, file: !1353, line: 39, type: !1358)
!1418 = !DILocation(line: 39, column: 16, scope: !1372)
!1419 = !DILocation(line: 39, column: 30, scope: !1372)
!1420 = !DILocation(line: 41, column: 7, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1372, file: !1353, line: 41, column: 7)
!1422 = !DILocation(line: 41, column: 7, scope: !1372)
!1423 = !DILocation(line: 42, column: 15, scope: !1421)
!1424 = !DILocation(line: 31, column: 15, scope: !1352, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 42, column: 5, scope: !1421)
!1426 = !DILocation(line: 31, column: 25, scope: !1352, inlinedAt: !1425)
!1427 = !DILocation(line: 31, column: 39, scope: !1352, inlinedAt: !1425)
!1428 = !DILocation(line: 31, column: 54, scope: !1352, inlinedAt: !1425)
!1429 = !DILocation(line: 34, column: 3, scope: !1365, inlinedAt: !1425)
!1430 = !DILocation(line: 42, column: 5, scope: !1421)
!1431 = !DILocation(line: 43, column: 1, scope: !1372)
!1432 = distinct !DISubprogram(name: "initbuffer", scope: !1433, file: !1433, line: 37, type: !1434, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !1442)
!1433 = !DIFile(filename: "lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !1436}
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !94, line: 26, size: 192, elements: !1438)
!1438 = !{!1439, !1440, !1441}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1437, file: !94, line: 28, baseType: !62, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1437, file: !94, line: 29, baseType: !62, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1437, file: !94, line: 30, baseType: !35, size: 64, offset: 128)
!1442 = !{!1443}
!1443 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1432, file: !1433, line: 37, type: !1436)
!1444 = !DILocation(line: 37, column: 32, scope: !1432)
!1445 = !DILocation(line: 39, column: 3, scope: !1432)
!1446 = !DILocation(line: 40, column: 1, scope: !1432)
!1447 = distinct !DISubprogram(name: "readlinebuffer", scope: !1433, file: !1433, line: 43, type: !1448, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !1490)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!1436, !1436, !1450}
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1017, line: 7, baseType: !1452)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1019, line: 241, size: 1728, elements: !1453)
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1452, file: !1019, line: 242, baseType: !147, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1452, file: !1019, line: 247, baseType: !35, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1452, file: !1019, line: 248, baseType: !35, size: 64, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1452, file: !1019, line: 249, baseType: !35, size: 64, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1452, file: !1019, line: 250, baseType: !35, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1452, file: !1019, line: 251, baseType: !35, size: 64, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1452, file: !1019, line: 252, baseType: !35, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1452, file: !1019, line: 253, baseType: !35, size: 64, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1452, file: !1019, line: 254, baseType: !35, size: 64, offset: 512)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1452, file: !1019, line: 256, baseType: !35, size: 64, offset: 576)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1452, file: !1019, line: 257, baseType: !35, size: 64, offset: 640)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1452, file: !1019, line: 258, baseType: !35, size: 64, offset: 704)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1452, file: !1019, line: 260, baseType: !1467, size: 64, offset: 768)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1019, line: 156, size: 192, elements: !1469)
!1469 = !{!1470, !1471, !1473}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1468, file: !1019, line: 157, baseType: !1467, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1468, file: !1019, line: 158, baseType: !1472, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1468, file: !1019, line: 162, baseType: !147, size: 32, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1452, file: !1019, line: 262, baseType: !1472, size: 64, offset: 832)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1452, file: !1019, line: 264, baseType: !147, size: 32, offset: 896)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1452, file: !1019, line: 268, baseType: !147, size: 32, offset: 928)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1452, file: !1019, line: 270, baseType: !1045, size: 64, offset: 960)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1452, file: !1019, line: 274, baseType: !249, size: 16, offset: 1024)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1452, file: !1019, line: 275, baseType: !1048, size: 8, offset: 1040)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1452, file: !1019, line: 276, baseType: !1050, size: 8, offset: 1048)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1452, file: !1019, line: 280, baseType: !1054, size: 64, offset: 1088)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1452, file: !1019, line: 289, baseType: !1057, size: 64, offset: 1152)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1452, file: !1019, line: 297, baseType: !37, size: 64, offset: 1216)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1452, file: !1019, line: 298, baseType: !37, size: 64, offset: 1280)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1452, file: !1019, line: 299, baseType: !37, size: 64, offset: 1344)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1452, file: !1019, line: 300, baseType: !37, size: 64, offset: 1408)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1452, file: !1019, line: 302, baseType: !62, size: 64, offset: 1472)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1452, file: !1019, line: 303, baseType: !147, size: 32, offset: 1536)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1452, file: !1019, line: 305, baseType: !1065, size: 160, offset: 1568)
!1490 = !{!1491, !1492}
!1491 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1447, file: !1433, line: 43, type: !1436)
!1492 = !DILocalVariable(name: "stream", arg: 2, scope: !1447, file: !1433, line: 43, type: !1450)
!1493 = !DILocation(line: 43, column: 36, scope: !1447)
!1494 = !DILocation(line: 43, column: 54, scope: !1447)
!1495 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1496, file: !1433, line: 59, type: !1436)
!1496 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !1433, file: !1433, line: 59, type: !1497, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !1499)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!1436, !1436, !1450, !36}
!1499 = !{!1495, !1500, !1501, !1502, !1503, !1504, !1505, !1506}
!1500 = !DILocalVariable(name: "stream", arg: 2, scope: !1496, file: !1433, line: 59, type: !1450)
!1501 = !DILocalVariable(name: "delimiter", arg: 3, scope: !1496, file: !1433, line: 60, type: !36)
!1502 = !DILocalVariable(name: "c", scope: !1496, file: !1433, line: 62, type: !147)
!1503 = !DILocalVariable(name: "buffer", scope: !1496, file: !1433, line: 63, type: !35)
!1504 = !DILocalVariable(name: "p", scope: !1496, file: !1433, line: 64, type: !35)
!1505 = !DILocalVariable(name: "end", scope: !1496, file: !1433, line: 65, type: !35)
!1506 = !DILocalVariable(name: "oldsize", scope: !1507, file: !1433, line: 83, type: !62)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !1433, line: 82, column: 9)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !1433, line: 81, column: 11)
!1509 = distinct !DILexicalBlock(scope: !1496, file: !1433, line: 71, column: 5)
!1510 = !DILocation(line: 59, column: 42, scope: !1496, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 45, column: 10, scope: !1447)
!1512 = !DILocation(line: 59, column: 60, scope: !1496, inlinedAt: !1511)
!1513 = !DILocation(line: 60, column: 28, scope: !1496, inlinedAt: !1511)
!1514 = !DILocation(line: 63, column: 30, scope: !1496, inlinedAt: !1511)
!1515 = !DILocation(line: 63, column: 9, scope: !1496, inlinedAt: !1511)
!1516 = !DILocation(line: 64, column: 9, scope: !1496, inlinedAt: !1511)
!1517 = !DILocation(line: 65, column: 36, scope: !1496, inlinedAt: !1511)
!1518 = !DILocalVariable(name: "__stream", arg: 1, scope: !1519, file: !1150, line: 125, type: !1450)
!1519 = distinct !DISubprogram(name: "feof_unlocked", scope: !1150, file: !1150, line: 125, type: !1520, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !1522)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!147, !1450}
!1522 = !{!1518}
!1523 = !DILocation(line: 125, column: 1, scope: !1519, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 67, column: 7, scope: !1525, inlinedAt: !1511)
!1525 = distinct !DILexicalBlock(scope: !1496, file: !1433, line: 67, column: 7)
!1526 = !DILocation(line: 127, column: 10, scope: !1519, inlinedAt: !1524)
!1527 = !DILocation(line: 67, column: 7, scope: !1525, inlinedAt: !1511)
!1528 = !DILocation(line: 67, column: 7, scope: !1496, inlinedAt: !1511)
!1529 = !{!1105, !816, i64 0}
!1530 = !DILocation(line: 65, column: 22, scope: !1496, inlinedAt: !1511)
!1531 = !DILocation(line: 70, column: 3, scope: !1496, inlinedAt: !1511)
!1532 = distinct !{!1532, !1533, !1534}
!1533 = !DILocation(line: 70, column: 3, scope: !1496)
!1534 = !DILocation(line: 91, column: 24, scope: !1496)
!1535 = !DILocation(line: 65, column: 9, scope: !1496, inlinedAt: !1511)
!1536 = !DILocalVariable(name: "__fp", arg: 1, scope: !1537, file: !1150, line: 63, type: !1450)
!1537 = distinct !DISubprogram(name: "getc_unlocked", scope: !1150, file: !1150, line: 63, type: !1520, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !1538)
!1538 = !{!1536}
!1539 = !DILocation(line: 63, column: 22, scope: !1537, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 72, column: 11, scope: !1509, inlinedAt: !1511)
!1541 = !DILocation(line: 65, column: 10, scope: !1537, inlinedAt: !1540)
!1542 = !{!1158, !723, i64 8}
!1543 = !{!1158, !723, i64 16}
!1544 = !DILocation(line: 62, column: 7, scope: !1496, inlinedAt: !1511)
!1545 = !DILocation(line: 73, column: 11, scope: !1509, inlinedAt: !1511)
!1546 = !DILocation(line: 73, column: 13, scope: !1547, inlinedAt: !1511)
!1547 = distinct !DILexicalBlock(scope: !1509, file: !1433, line: 73, column: 11)
!1548 = !DILocation(line: 75, column: 17, scope: !1549, inlinedAt: !1511)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !1433, line: 75, column: 15)
!1550 = distinct !DILexicalBlock(scope: !1547, file: !1433, line: 74, column: 9)
!1551 = !DILocation(line: 75, column: 27, scope: !1549, inlinedAt: !1511)
!1552 = !DILocalVariable(name: "__stream", arg: 1, scope: !1553, file: !1150, line: 132, type: !1450)
!1553 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1150, file: !1150, line: 132, type: !1520, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !1554)
!1554 = !{!1552}
!1555 = !DILocation(line: 132, column: 1, scope: !1553, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 75, column: 30, scope: !1549, inlinedAt: !1511)
!1557 = !DILocation(line: 134, column: 10, scope: !1553, inlinedAt: !1556)
!1558 = !DILocation(line: 75, column: 30, scope: !1549, inlinedAt: !1511)
!1559 = !DILocation(line: 75, column: 15, scope: !1550, inlinedAt: !1511)
!1560 = !DILocation(line: 77, column: 15, scope: !1561, inlinedAt: !1511)
!1561 = distinct !DILexicalBlock(scope: !1550, file: !1433, line: 77, column: 15)
!1562 = !DILocation(line: 77, column: 21, scope: !1561, inlinedAt: !1511)
!1563 = !DILocation(line: 77, column: 15, scope: !1550, inlinedAt: !1511)
!1564 = !DILocation(line: 81, column: 13, scope: !1508, inlinedAt: !1511)
!1565 = !DILocation(line: 81, column: 11, scope: !1509, inlinedAt: !1511)
!1566 = !DILocation(line: 83, column: 40, scope: !1507, inlinedAt: !1511)
!1567 = !DILocation(line: 83, column: 18, scope: !1507, inlinedAt: !1511)
!1568 = !DILocation(line: 84, column: 20, scope: !1507, inlinedAt: !1511)
!1569 = !DILocation(line: 85, column: 22, scope: !1507, inlinedAt: !1511)
!1570 = !DILocation(line: 86, column: 30, scope: !1507, inlinedAt: !1511)
!1571 = !DILocation(line: 87, column: 38, scope: !1507, inlinedAt: !1511)
!1572 = !DILocation(line: 87, column: 24, scope: !1507, inlinedAt: !1511)
!1573 = !DILocation(line: 88, column: 9, scope: !1507, inlinedAt: !1511)
!1574 = !DILocation(line: 89, column: 14, scope: !1509, inlinedAt: !1511)
!1575 = !DILocation(line: 89, column: 9, scope: !1509, inlinedAt: !1511)
!1576 = !DILocation(line: 89, column: 12, scope: !1509, inlinedAt: !1511)
!1577 = !DILocation(line: 91, column: 12, scope: !1496, inlinedAt: !1511)
!1578 = !DILocation(line: 90, column: 5, scope: !1509, inlinedAt: !1511)
!1579 = !DILocation(line: 93, column: 26, scope: !1496, inlinedAt: !1511)
!1580 = !DILocation(line: 93, column: 15, scope: !1496, inlinedAt: !1511)
!1581 = !DILocation(line: 93, column: 22, scope: !1496, inlinedAt: !1511)
!1582 = !DILocation(line: 94, column: 3, scope: !1496, inlinedAt: !1511)
!1583 = !DILocation(line: 45, column: 3, scope: !1447)
!1584 = !DILocation(line: 59, column: 42, scope: !1496)
!1585 = !DILocation(line: 59, column: 60, scope: !1496)
!1586 = !DILocation(line: 60, column: 28, scope: !1496)
!1587 = !DILocation(line: 63, column: 30, scope: !1496)
!1588 = !DILocation(line: 63, column: 9, scope: !1496)
!1589 = !DILocation(line: 64, column: 9, scope: !1496)
!1590 = !DILocation(line: 65, column: 36, scope: !1496)
!1591 = !DILocation(line: 65, column: 9, scope: !1496)
!1592 = !DILocation(line: 125, column: 1, scope: !1519, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 67, column: 7, scope: !1525)
!1594 = !DILocation(line: 127, column: 10, scope: !1519, inlinedAt: !1593)
!1595 = !DILocation(line: 67, column: 7, scope: !1525)
!1596 = !DILocation(line: 67, column: 7, scope: !1496)
!1597 = !DILocation(line: 65, column: 22, scope: !1496)
!1598 = !DILocation(line: 63, column: 22, scope: !1537, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 72, column: 11, scope: !1509)
!1600 = !DILocation(line: 65, column: 10, scope: !1537, inlinedAt: !1599)
!1601 = !DILocation(line: 62, column: 7, scope: !1496)
!1602 = !DILocation(line: 73, column: 11, scope: !1509)
!1603 = !DILocation(line: 73, column: 13, scope: !1547)
!1604 = !DILocation(line: 75, column: 17, scope: !1549)
!1605 = !DILocation(line: 75, column: 27, scope: !1549)
!1606 = !DILocation(line: 132, column: 1, scope: !1553, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 75, column: 30, scope: !1549)
!1608 = !DILocation(line: 134, column: 10, scope: !1553, inlinedAt: !1607)
!1609 = !DILocation(line: 75, column: 30, scope: !1549)
!1610 = !DILocation(line: 75, column: 15, scope: !1550)
!1611 = !DILocation(line: 77, column: 15, scope: !1561)
!1612 = !DILocation(line: 77, column: 21, scope: !1561)
!1613 = !DILocation(line: 77, column: 15, scope: !1550)
!1614 = !DILocation(line: 81, column: 13, scope: !1508)
!1615 = !DILocation(line: 81, column: 11, scope: !1509)
!1616 = !DILocation(line: 83, column: 40, scope: !1507)
!1617 = !DILocation(line: 83, column: 18, scope: !1507)
!1618 = !DILocation(line: 84, column: 20, scope: !1507)
!1619 = !DILocation(line: 85, column: 22, scope: !1507)
!1620 = !DILocation(line: 86, column: 30, scope: !1507)
!1621 = !DILocation(line: 87, column: 38, scope: !1507)
!1622 = !DILocation(line: 87, column: 24, scope: !1507)
!1623 = !DILocation(line: 88, column: 9, scope: !1507)
!1624 = !DILocation(line: 89, column: 14, scope: !1509)
!1625 = !DILocation(line: 89, column: 9, scope: !1509)
!1626 = !DILocation(line: 89, column: 12, scope: !1509)
!1627 = !DILocation(line: 91, column: 12, scope: !1496)
!1628 = !DILocation(line: 90, column: 5, scope: !1509)
!1629 = !DILocation(line: 93, column: 26, scope: !1496)
!1630 = !DILocation(line: 93, column: 15, scope: !1496)
!1631 = !DILocation(line: 93, column: 22, scope: !1496)
!1632 = !DILocation(line: 94, column: 3, scope: !1496)
!1633 = !DILocation(line: 95, column: 1, scope: !1496)
!1634 = distinct !DISubprogram(name: "freebuffer", scope: !1433, file: !1433, line: 100, type: !1434, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !1635)
!1635 = !{!1636}
!1636 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1634, file: !1433, line: 100, type: !1436)
!1637 = !DILocation(line: 100, column: 32, scope: !1634)
!1638 = !DILocation(line: 102, column: 21, scope: !1634)
!1639 = !DILocation(line: 102, column: 3, scope: !1634)
!1640 = !DILocation(line: 103, column: 1, scope: !1634)
!1641 = distinct !DISubprogram(name: "set_program_name", scope: !222, file: !222, line: 39, type: !113, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !218, variables: !1642)
!1642 = !{!1643, !1644, !1645}
!1643 = !DILocalVariable(name: "argv0", arg: 1, scope: !1641, file: !222, line: 39, type: !43)
!1644 = !DILocalVariable(name: "slash", scope: !1641, file: !222, line: 46, type: !43)
!1645 = !DILocalVariable(name: "base", scope: !1641, file: !222, line: 47, type: !43)
!1646 = !DILocation(line: 39, column: 31, scope: !1641)
!1647 = !DILocation(line: 51, column: 13, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1641, file: !222, line: 51, column: 7)
!1649 = !DILocation(line: 51, column: 7, scope: !1641)
!1650 = !DILocation(line: 55, column: 14, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1648, file: !222, line: 52, column: 5)
!1652 = !DILocation(line: 54, column: 7, scope: !1651)
!1653 = !DILocation(line: 56, column: 7, scope: !1651)
!1654 = !DILocation(line: 59, column: 11, scope: !1641)
!1655 = !DILocation(line: 46, column: 15, scope: !1641)
!1656 = !DILocation(line: 60, column: 17, scope: !1641)
!1657 = !DILocation(line: 60, column: 33, scope: !1641)
!1658 = !DILocation(line: 60, column: 11, scope: !1641)
!1659 = !DILocation(line: 47, column: 15, scope: !1641)
!1660 = !DILocation(line: 61, column: 12, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1641, file: !222, line: 61, column: 7)
!1662 = !DILocation(line: 61, column: 20, scope: !1661)
!1663 = !DILocation(line: 61, column: 25, scope: !1661)
!1664 = !DILocation(line: 61, column: 42, scope: !1661)
!1665 = !DILocation(line: 61, column: 28, scope: !1661)
!1666 = !DILocation(line: 61, column: 61, scope: !1661)
!1667 = !DILocation(line: 61, column: 7, scope: !1641)
!1668 = !DILocation(line: 64, column: 11, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !222, line: 64, column: 11)
!1670 = distinct !DILexicalBlock(scope: !1661, file: !222, line: 62, column: 5)
!1671 = !DILocation(line: 64, column: 36, scope: !1669)
!1672 = !DILocation(line: 64, column: 11, scope: !1670)
!1673 = !DILocation(line: 66, column: 24, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1669, file: !222, line: 65, column: 9)
!1675 = !DILocation(line: 70, column: 41, scope: !1674)
!1676 = !DILocation(line: 72, column: 9, scope: !1674)
!1677 = !DILocation(line: 84, column: 16, scope: !1641)
!1678 = !DILocation(line: 90, column: 27, scope: !1641)
!1679 = !DILocation(line: 92, column: 1, scope: !1641)
!1680 = distinct !DISubprogram(name: "clone_quoting_options", scope: !253, file: !253, line: 114, type: !1681, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !1684)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!1683, !1683}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1684 = !{!1685, !1686, !1687}
!1685 = !DILocalVariable(name: "o", arg: 1, scope: !1680, file: !253, line: 114, type: !1683)
!1686 = !DILocalVariable(name: "e", scope: !1680, file: !253, line: 116, type: !147)
!1687 = !DILocalVariable(name: "p", scope: !1680, file: !253, line: 117, type: !1683)
!1688 = !DILocation(line: 114, column: 48, scope: !1680)
!1689 = !DILocation(line: 116, column: 11, scope: !1680)
!1690 = !DILocation(line: 116, column: 7, scope: !1680)
!1691 = !DILocation(line: 117, column: 40, scope: !1680)
!1692 = !DILocation(line: 117, column: 31, scope: !1680)
!1693 = !DILocation(line: 117, column: 27, scope: !1680)
!1694 = !DILocation(line: 119, column: 9, scope: !1680)
!1695 = !DILocation(line: 120, column: 3, scope: !1680)
!1696 = distinct !DISubprogram(name: "get_quoting_style", scope: !253, file: !253, line: 125, type: !1697, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !1701)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!5, !1699}
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!1701 = !{!1702}
!1702 = !DILocalVariable(name: "o", arg: 1, scope: !1696, file: !253, line: 125, type: !1699)
!1703 = !DILocation(line: 125, column: 50, scope: !1696)
!1704 = !DILocation(line: 127, column: 11, scope: !1696)
!1705 = !DILocation(line: 127, column: 46, scope: !1696)
!1706 = !{!1707, !724, i64 0}
!1707 = !{!"quoting_options", !724, i64 0, !837, i64 4, !724, i64 8, !723, i64 40, !723, i64 48}
!1708 = !DILocation(line: 127, column: 3, scope: !1696)
!1709 = distinct !DISubprogram(name: "set_quoting_style", scope: !253, file: !253, line: 133, type: !1710, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !1712)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{null, !1683, !5}
!1712 = !{!1713, !1714}
!1713 = !DILocalVariable(name: "o", arg: 1, scope: !1709, file: !253, line: 133, type: !1683)
!1714 = !DILocalVariable(name: "s", arg: 2, scope: !1709, file: !253, line: 133, type: !5)
!1715 = !DILocation(line: 133, column: 44, scope: !1709)
!1716 = !DILocation(line: 133, column: 66, scope: !1709)
!1717 = !DILocation(line: 135, column: 4, scope: !1709)
!1718 = !DILocation(line: 135, column: 39, scope: !1709)
!1719 = !DILocation(line: 135, column: 45, scope: !1709)
!1720 = !DILocation(line: 136, column: 1, scope: !1709)
!1721 = distinct !DISubprogram(name: "set_char_quoting", scope: !253, file: !253, line: 144, type: !1722, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !1724)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!147, !1683, !36, !147}
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1731, !1732}
!1725 = !DILocalVariable(name: "o", arg: 1, scope: !1721, file: !253, line: 144, type: !1683)
!1726 = !DILocalVariable(name: "c", arg: 2, scope: !1721, file: !253, line: 144, type: !36)
!1727 = !DILocalVariable(name: "i", arg: 3, scope: !1721, file: !253, line: 144, type: !147)
!1728 = !DILocalVariable(name: "uc", scope: !1721, file: !253, line: 146, type: !39)
!1729 = !DILocalVariable(name: "p", scope: !1721, file: !253, line: 147, type: !1730)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!1731 = !DILocalVariable(name: "shift", scope: !1721, file: !253, line: 149, type: !147)
!1732 = !DILocalVariable(name: "r", scope: !1721, file: !253, line: 150, type: !147)
!1733 = !DILocation(line: 144, column: 43, scope: !1721)
!1734 = !DILocation(line: 144, column: 51, scope: !1721)
!1735 = !DILocation(line: 144, column: 58, scope: !1721)
!1736 = !DILocation(line: 146, column: 17, scope: !1721)
!1737 = !DILocation(line: 148, column: 6, scope: !1721)
!1738 = !DILocation(line: 148, column: 62, scope: !1721)
!1739 = !DILocation(line: 148, column: 57, scope: !1721)
!1740 = !DILocation(line: 147, column: 17, scope: !1721)
!1741 = !DILocation(line: 149, column: 18, scope: !1721)
!1742 = !DILocation(line: 149, column: 15, scope: !1721)
!1743 = !DILocation(line: 149, column: 7, scope: !1721)
!1744 = !DILocation(line: 150, column: 12, scope: !1721)
!1745 = !DILocation(line: 150, column: 15, scope: !1721)
!1746 = !DILocation(line: 150, column: 25, scope: !1721)
!1747 = !DILocation(line: 150, column: 7, scope: !1721)
!1748 = !DILocation(line: 151, column: 13, scope: !1721)
!1749 = !DILocation(line: 151, column: 18, scope: !1721)
!1750 = !DILocation(line: 151, column: 23, scope: !1721)
!1751 = !DILocation(line: 151, column: 6, scope: !1721)
!1752 = !DILocation(line: 152, column: 3, scope: !1721)
!1753 = distinct !DISubprogram(name: "set_quoting_flags", scope: !253, file: !253, line: 160, type: !1754, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !1756)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!147, !1683, !147}
!1756 = !{!1757, !1758, !1759}
!1757 = !DILocalVariable(name: "o", arg: 1, scope: !1753, file: !253, line: 160, type: !1683)
!1758 = !DILocalVariable(name: "i", arg: 2, scope: !1753, file: !253, line: 160, type: !147)
!1759 = !DILocalVariable(name: "r", scope: !1753, file: !253, line: 162, type: !147)
!1760 = !DILocation(line: 160, column: 44, scope: !1753)
!1761 = !DILocation(line: 160, column: 51, scope: !1753)
!1762 = !DILocation(line: 163, column: 8, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1753, file: !253, line: 163, column: 7)
!1764 = !DILocation(line: 163, column: 7, scope: !1753)
!1765 = !DILocation(line: 165, column: 10, scope: !1753)
!1766 = !{!1707, !837, i64 4}
!1767 = !DILocation(line: 162, column: 7, scope: !1753)
!1768 = !DILocation(line: 166, column: 12, scope: !1753)
!1769 = !DILocation(line: 167, column: 3, scope: !1753)
!1770 = distinct !DISubprogram(name: "set_custom_quoting", scope: !253, file: !253, line: 171, type: !1771, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !1773)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !1683, !43, !43}
!1773 = !{!1774, !1775, !1776}
!1774 = !DILocalVariable(name: "o", arg: 1, scope: !1770, file: !253, line: 171, type: !1683)
!1775 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1770, file: !253, line: 172, type: !43)
!1776 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1770, file: !253, line: 172, type: !43)
!1777 = !DILocation(line: 171, column: 45, scope: !1770)
!1778 = !DILocation(line: 172, column: 33, scope: !1770)
!1779 = !DILocation(line: 172, column: 57, scope: !1770)
!1780 = !DILocation(line: 174, column: 8, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1770, file: !253, line: 174, column: 7)
!1782 = !DILocation(line: 174, column: 7, scope: !1770)
!1783 = !DILocation(line: 176, column: 6, scope: !1770)
!1784 = !DILocation(line: 176, column: 12, scope: !1770)
!1785 = !DILocation(line: 177, column: 8, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1770, file: !253, line: 177, column: 7)
!1787 = !DILocation(line: 177, column: 23, scope: !1786)
!1788 = !DILocation(line: 177, column: 19, scope: !1786)
!1789 = !DILocation(line: 178, column: 5, scope: !1786)
!1790 = !DILocation(line: 179, column: 6, scope: !1770)
!1791 = !DILocation(line: 179, column: 17, scope: !1770)
!1792 = !{!1707, !723, i64 40}
!1793 = !DILocation(line: 180, column: 6, scope: !1770)
!1794 = !DILocation(line: 180, column: 18, scope: !1770)
!1795 = !{!1707, !723, i64 48}
!1796 = !DILocation(line: 181, column: 1, scope: !1770)
!1797 = distinct !DISubprogram(name: "quotearg_buffer", scope: !253, file: !253, line: 776, type: !1798, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !1800)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!62, !35, !62, !43, !62, !1699}
!1800 = !{!1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808}
!1801 = !DILocalVariable(name: "buffer", arg: 1, scope: !1797, file: !253, line: 776, type: !35)
!1802 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1797, file: !253, line: 776, type: !62)
!1803 = !DILocalVariable(name: "arg", arg: 3, scope: !1797, file: !253, line: 777, type: !43)
!1804 = !DILocalVariable(name: "argsize", arg: 4, scope: !1797, file: !253, line: 777, type: !62)
!1805 = !DILocalVariable(name: "o", arg: 5, scope: !1797, file: !253, line: 778, type: !1699)
!1806 = !DILocalVariable(name: "p", scope: !1797, file: !253, line: 780, type: !1699)
!1807 = !DILocalVariable(name: "e", scope: !1797, file: !253, line: 781, type: !147)
!1808 = !DILocalVariable(name: "r", scope: !1797, file: !253, line: 782, type: !62)
!1809 = !DILocation(line: 776, column: 24, scope: !1797)
!1810 = !DILocation(line: 776, column: 39, scope: !1797)
!1811 = !DILocation(line: 777, column: 30, scope: !1797)
!1812 = !DILocation(line: 777, column: 42, scope: !1797)
!1813 = !DILocation(line: 778, column: 48, scope: !1797)
!1814 = !DILocation(line: 780, column: 37, scope: !1797)
!1815 = !DILocation(line: 780, column: 33, scope: !1797)
!1816 = !DILocation(line: 781, column: 11, scope: !1797)
!1817 = !DILocation(line: 781, column: 7, scope: !1797)
!1818 = !DILocation(line: 783, column: 43, scope: !1797)
!1819 = !DILocation(line: 783, column: 53, scope: !1797)
!1820 = !DILocation(line: 783, column: 60, scope: !1797)
!1821 = !DILocation(line: 784, column: 43, scope: !1797)
!1822 = !DILocation(line: 784, column: 58, scope: !1797)
!1823 = !DILocation(line: 782, column: 14, scope: !1797)
!1824 = !DILocation(line: 782, column: 10, scope: !1797)
!1825 = !DILocation(line: 785, column: 9, scope: !1797)
!1826 = !DILocation(line: 786, column: 3, scope: !1797)
!1827 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !253, file: !253, line: 248, type: !1828, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !1832)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!62, !35, !62, !43, !62, !5, !147, !1830, !43, !43}
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!1832 = !{!1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1857, !1858, !1859, !1860, !1861, !1864, !1865, !1883, !1886, !1887, !1894}
!1833 = !DILocalVariable(name: "buffer", arg: 1, scope: !1827, file: !253, line: 248, type: !35)
!1834 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1827, file: !253, line: 248, type: !62)
!1835 = !DILocalVariable(name: "arg", arg: 3, scope: !1827, file: !253, line: 249, type: !43)
!1836 = !DILocalVariable(name: "argsize", arg: 4, scope: !1827, file: !253, line: 249, type: !62)
!1837 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1827, file: !253, line: 250, type: !5)
!1838 = !DILocalVariable(name: "flags", arg: 6, scope: !1827, file: !253, line: 250, type: !147)
!1839 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1827, file: !253, line: 251, type: !1830)
!1840 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1827, file: !253, line: 252, type: !43)
!1841 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1827, file: !253, line: 253, type: !43)
!1842 = !DILocalVariable(name: "i", scope: !1827, file: !253, line: 255, type: !62)
!1843 = !DILocalVariable(name: "len", scope: !1827, file: !253, line: 256, type: !62)
!1844 = !DILocalVariable(name: "orig_buffersize", scope: !1827, file: !253, line: 257, type: !62)
!1845 = !DILocalVariable(name: "quote_string", scope: !1827, file: !253, line: 258, type: !43)
!1846 = !DILocalVariable(name: "quote_string_len", scope: !1827, file: !253, line: 259, type: !62)
!1847 = !DILocalVariable(name: "backslash_escapes", scope: !1827, file: !253, line: 260, type: !108)
!1848 = !DILocalVariable(name: "unibyte_locale", scope: !1827, file: !253, line: 261, type: !108)
!1849 = !DILocalVariable(name: "elide_outer_quotes", scope: !1827, file: !253, line: 262, type: !108)
!1850 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1827, file: !253, line: 263, type: !108)
!1851 = !DILocalVariable(name: "encountered_single_quote", scope: !1827, file: !253, line: 264, type: !108)
!1852 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1827, file: !253, line: 265, type: !108)
!1853 = !DILocalVariable(name: "c", scope: !1854, file: !253, line: 394, type: !39)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !253, line: 393, column: 5)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !253, line: 392, column: 3)
!1856 = distinct !DILexicalBlock(scope: !1827, file: !253, line: 392, column: 3)
!1857 = !DILocalVariable(name: "esc", scope: !1854, file: !253, line: 395, type: !39)
!1858 = !DILocalVariable(name: "is_right_quote", scope: !1854, file: !253, line: 396, type: !108)
!1859 = !DILocalVariable(name: "escaping", scope: !1854, file: !253, line: 397, type: !108)
!1860 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1854, file: !253, line: 398, type: !108)
!1861 = !DILocalVariable(name: "m", scope: !1862, file: !253, line: 602, type: !62)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !253, line: 600, column: 11)
!1863 = distinct !DILexicalBlock(scope: !1854, file: !253, line: 418, column: 9)
!1864 = !DILocalVariable(name: "printable", scope: !1862, file: !253, line: 604, type: !108)
!1865 = !DILocalVariable(name: "mbstate", scope: !1866, file: !253, line: 613, type: !1868)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !253, line: 612, column: 15)
!1867 = distinct !DILexicalBlock(scope: !1862, file: !253, line: 606, column: 17)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1869, line: 6, baseType: !1870)
!1869 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1871, line: 21, baseType: !1872)
!1871 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1871, line: 13, size: 64, elements: !1873)
!1873 = !{!1874, !1875}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1872, file: !1871, line: 15, baseType: !147, size: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1872, file: !1871, line: 20, baseType: !1876, size: 32, offset: 32)
!1876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1872, file: !1871, line: 16, size: 32, elements: !1877)
!1877 = !{!1878, !1879}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1876, file: !1871, line: 18, baseType: !65, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1876, file: !1871, line: 19, baseType: !1880, size: 32)
!1880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32, elements: !1881)
!1881 = !{!1882}
!1882 = !DISubrange(count: 4)
!1883 = !DILocalVariable(name: "w", scope: !1884, file: !253, line: 623, type: !1885)
!1884 = distinct !DILexicalBlock(scope: !1866, file: !253, line: 622, column: 19)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !63, line: 90, baseType: !147)
!1886 = !DILocalVariable(name: "bytes", scope: !1884, file: !253, line: 624, type: !62)
!1887 = !DILocalVariable(name: "j", scope: !1888, file: !253, line: 649, type: !62)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !253, line: 648, column: 27)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !253, line: 646, column: 29)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !253, line: 641, column: 23)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !253, line: 633, column: 30)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !253, line: 628, column: 30)
!1893 = distinct !DILexicalBlock(scope: !1884, file: !253, line: 626, column: 25)
!1894 = !DILocalVariable(name: "ilim", scope: !1895, file: !253, line: 676, type: !62)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !253, line: 673, column: 15)
!1896 = distinct !DILexicalBlock(scope: !1862, file: !253, line: 672, column: 17)
!1897 = !DILocation(line: 248, column: 33, scope: !1827)
!1898 = !DILocation(line: 248, column: 48, scope: !1827)
!1899 = !DILocation(line: 249, column: 39, scope: !1827)
!1900 = !DILocation(line: 249, column: 51, scope: !1827)
!1901 = !DILocation(line: 250, column: 46, scope: !1827)
!1902 = !DILocation(line: 250, column: 65, scope: !1827)
!1903 = !DILocation(line: 251, column: 47, scope: !1827)
!1904 = !DILocation(line: 252, column: 39, scope: !1827)
!1905 = !DILocation(line: 253, column: 39, scope: !1827)
!1906 = !DILocation(line: 256, column: 10, scope: !1827)
!1907 = !DILocation(line: 257, column: 10, scope: !1827)
!1908 = !DILocation(line: 258, column: 15, scope: !1827)
!1909 = !DILocation(line: 259, column: 10, scope: !1827)
!1910 = !DILocation(line: 260, column: 8, scope: !1827)
!1911 = !DILocation(line: 261, column: 25, scope: !1827)
!1912 = !DILocation(line: 261, column: 36, scope: !1827)
!1913 = !DILocation(line: 262, column: 8, scope: !1827)
!1914 = !DILocation(line: 263, column: 8, scope: !1827)
!1915 = !DILocation(line: 264, column: 8, scope: !1827)
!1916 = !DILocation(line: 265, column: 8, scope: !1827)
!1917 = !DILocation(line: 265, column: 3, scope: !1827)
!1918 = !DILocation(line: 308, column: 3, scope: !1827)
!1919 = !DILocation(line: 315, column: 11, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1827, file: !253, line: 309, column: 5)
!1921 = !DILocation(line: 315, column: 12, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1920, file: !253, line: 315, column: 11)
!1923 = !DILocation(line: 316, column: 9, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !253, line: 316, column: 9)
!1925 = distinct !DILexicalBlock(scope: !1922, file: !253, line: 316, column: 9)
!1926 = !DILocation(line: 316, column: 9, scope: !1925)
!1927 = !DILocation(line: 354, column: 26, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !253, line: 332, column: 11)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !253, line: 331, column: 13)
!1930 = distinct !DILexicalBlock(scope: !1920, file: !253, line: 330, column: 7)
!1931 = !DILocation(line: 355, column: 27, scope: !1928)
!1932 = !DILocation(line: 356, column: 11, scope: !1928)
!1933 = !DILocation(line: 357, column: 14, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1930, file: !253, line: 357, column: 13)
!1935 = !DILocation(line: 357, column: 13, scope: !1930)
!1936 = !DILocation(line: 358, column: 43, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !253, line: 358, column: 11)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !253, line: 358, column: 11)
!1939 = !DILocation(line: 358, column: 11, scope: !1938)
!1940 = !DILocation(line: 359, column: 13, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !253, line: 359, column: 13)
!1942 = distinct !DILexicalBlock(scope: !1937, file: !253, line: 359, column: 13)
!1943 = !DILocation(line: 359, column: 13, scope: !1942)
!1944 = !DILocation(line: 358, column: 70, scope: !1937)
!1945 = distinct !{!1945, !1939, !1946}
!1946 = !DILocation(line: 359, column: 13, scope: !1938)
!1947 = !DILocation(line: 362, column: 28, scope: !1930)
!1948 = !DILocation(line: 364, column: 7, scope: !1920)
!1949 = !DILocation(line: 367, column: 7, scope: !1920)
!1950 = !DILocation(line: 370, column: 7, scope: !1920)
!1951 = !DILocation(line: 373, column: 12, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1920, file: !253, line: 373, column: 11)
!1953 = !DILocation(line: 373, column: 11, scope: !1920)
!1954 = !DILocation(line: 378, column: 12, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1920, file: !253, line: 378, column: 11)
!1956 = !DILocation(line: 378, column: 11, scope: !1920)
!1957 = !DILocation(line: 379, column: 9, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !253, line: 379, column: 9)
!1959 = distinct !DILexicalBlock(scope: !1955, file: !253, line: 379, column: 9)
!1960 = !DILocation(line: 379, column: 9, scope: !1959)
!1961 = !DILocation(line: 386, column: 7, scope: !1920)
!1962 = !DILocation(line: 389, column: 7, scope: !1920)
!1963 = !DILocation(line: 255, column: 10, scope: !1827)
!1964 = !DILocation(line: 392, column: 8, scope: !1856)
!1965 = !DILocation(line: 392, column: 27, scope: !1855)
!1966 = !DILocation(line: 392, column: 19, scope: !1855)
!1967 = !DILocation(line: 392, column: 60, scope: !1855)
!1968 = !DILocation(line: 392, column: 3, scope: !1856)
!1969 = !DILocation(line: 392, column: 41, scope: !1855)
!1970 = !DILocation(line: 392, column: 48, scope: !1855)
!1971 = !DILocation(line: 396, column: 12, scope: !1854)
!1972 = !DILocation(line: 397, column: 12, scope: !1854)
!1973 = !DILocation(line: 398, column: 12, scope: !1854)
!1974 = !DILocation(line: 401, column: 11, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1854, file: !253, line: 400, column: 11)
!1976 = !DILocation(line: 403, column: 17, scope: !1975)
!1977 = !DILocation(line: 404, column: 39, scope: !1975)
!1978 = !DILocation(line: 408, column: 32, scope: !1975)
!1979 = !DILocation(line: 404, column: 19, scope: !1975)
!1980 = !DILocation(line: 404, column: 15, scope: !1975)
!1981 = !DILocation(line: 409, column: 11, scope: !1975)
!1982 = !DILocation(line: 409, column: 26, scope: !1975)
!1983 = !DILocation(line: 409, column: 14, scope: !1975)
!1984 = !DILocation(line: 409, column: 63, scope: !1975)
!1985 = !DILocation(line: 400, column: 11, scope: !1854)
!1986 = !DILocation(line: 416, column: 11, scope: !1854)
!1987 = !DILocation(line: 394, column: 21, scope: !1854)
!1988 = !DILocation(line: 417, column: 7, scope: !1854)
!1989 = !DILocation(line: 420, column: 15, scope: !1863)
!1990 = !DILocation(line: 422, column: 15, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !253, line: 422, column: 15)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !253, line: 421, column: 13)
!1993 = distinct !DILexicalBlock(scope: !1863, file: !253, line: 420, column: 15)
!1994 = !DILocation(line: 422, column: 15, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1991, file: !253, line: 422, column: 15)
!1996 = !DILocation(line: 422, column: 15, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !253, line: 422, column: 15)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !253, line: 422, column: 15)
!1999 = distinct !DILexicalBlock(scope: !1995, file: !253, line: 422, column: 15)
!2000 = !DILocation(line: 422, column: 15, scope: !1998)
!2001 = !DILocation(line: 422, column: 15, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !253, line: 422, column: 15)
!2003 = distinct !DILexicalBlock(scope: !1999, file: !253, line: 422, column: 15)
!2004 = !DILocation(line: 422, column: 15, scope: !2003)
!2005 = !DILocation(line: 422, column: 15, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !253, line: 422, column: 15)
!2007 = distinct !DILexicalBlock(scope: !1999, file: !253, line: 422, column: 15)
!2008 = !DILocation(line: 422, column: 15, scope: !2007)
!2009 = !DILocation(line: 422, column: 15, scope: !1999)
!2010 = !DILocation(line: 422, column: 15, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !253, line: 422, column: 15)
!2012 = distinct !DILexicalBlock(scope: !1991, file: !253, line: 422, column: 15)
!2013 = !DILocation(line: 422, column: 15, scope: !2012)
!2014 = !DILocation(line: 430, column: 19, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1992, file: !253, line: 429, column: 19)
!2016 = !DILocation(line: 430, column: 24, scope: !2015)
!2017 = !DILocation(line: 430, column: 28, scope: !2015)
!2018 = !DILocation(line: 430, column: 38, scope: !2015)
!2019 = !DILocation(line: 430, column: 48, scope: !2015)
!2020 = !DILocation(line: 430, column: 59, scope: !2015)
!2021 = !DILocation(line: 432, column: 19, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !253, line: 432, column: 19)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !253, line: 432, column: 19)
!2024 = distinct !DILexicalBlock(scope: !2015, file: !253, line: 431, column: 17)
!2025 = !DILocation(line: 432, column: 19, scope: !2023)
!2026 = !DILocation(line: 433, column: 19, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !253, line: 433, column: 19)
!2028 = distinct !DILexicalBlock(scope: !2024, file: !253, line: 433, column: 19)
!2029 = !DILocation(line: 433, column: 19, scope: !2028)
!2030 = !DILocation(line: 434, column: 17, scope: !2024)
!2031 = !DILocation(line: 441, column: 20, scope: !1993)
!2032 = !DILocation(line: 446, column: 11, scope: !1863)
!2033 = !DILocation(line: 449, column: 19, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1863, file: !253, line: 447, column: 13)
!2035 = !DILocation(line: 455, column: 19, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2034, file: !253, line: 454, column: 19)
!2037 = !DILocation(line: 455, column: 24, scope: !2036)
!2038 = !DILocation(line: 455, column: 28, scope: !2036)
!2039 = !DILocation(line: 455, column: 38, scope: !2036)
!2040 = !DILocation(line: 455, column: 47, scope: !2036)
!2041 = !DILocation(line: 455, column: 41, scope: !2036)
!2042 = !DILocation(line: 455, column: 52, scope: !2036)
!2043 = !DILocation(line: 454, column: 19, scope: !2034)
!2044 = !DILocation(line: 456, column: 25, scope: !2036)
!2045 = !DILocation(line: 456, column: 17, scope: !2036)
!2046 = !DILocation(line: 463, column: 25, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2036, file: !253, line: 457, column: 19)
!2048 = !DILocation(line: 467, column: 21, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !253, line: 467, column: 21)
!2050 = distinct !DILexicalBlock(scope: !2047, file: !253, line: 467, column: 21)
!2051 = !DILocation(line: 467, column: 21, scope: !2050)
!2052 = !DILocation(line: 468, column: 21, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !253, line: 468, column: 21)
!2054 = distinct !DILexicalBlock(scope: !2047, file: !253, line: 468, column: 21)
!2055 = !DILocation(line: 468, column: 21, scope: !2054)
!2056 = !DILocation(line: 469, column: 21, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !253, line: 469, column: 21)
!2058 = distinct !DILexicalBlock(scope: !2047, file: !253, line: 469, column: 21)
!2059 = !DILocation(line: 469, column: 21, scope: !2058)
!2060 = !DILocation(line: 470, column: 21, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !253, line: 470, column: 21)
!2062 = distinct !DILexicalBlock(scope: !2047, file: !253, line: 470, column: 21)
!2063 = !DILocation(line: 470, column: 21, scope: !2062)
!2064 = !DILocation(line: 471, column: 21, scope: !2047)
!2065 = !DILocation(line: 395, column: 21, scope: !1854)
!2066 = !DILocation(line: 484, column: 31, scope: !1863)
!2067 = !DILocation(line: 485, column: 31, scope: !1863)
!2068 = !DILocation(line: 487, column: 31, scope: !1863)
!2069 = !DILocation(line: 488, column: 31, scope: !1863)
!2070 = !DILocation(line: 489, column: 31, scope: !1863)
!2071 = !DILocation(line: 492, column: 15, scope: !1863)
!2072 = !DILocation(line: 494, column: 19, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !253, line: 493, column: 13)
!2074 = distinct !DILexicalBlock(scope: !1863, file: !253, line: 492, column: 15)
!2075 = !DILocation(line: 501, column: 33, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1863, file: !253, line: 501, column: 15)
!2077 = !DILocation(line: 506, column: 15, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1863, file: !253, line: 505, column: 15)
!2079 = !DILocation(line: 510, column: 15, scope: !1863)
!2080 = !DILocation(line: 518, column: 26, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !1863, file: !253, line: 518, column: 15)
!2082 = !DILocation(line: 518, column: 15, scope: !1863)
!2083 = !DILocation(line: 518, column: 40, scope: !2081)
!2084 = !DILocation(line: 518, column: 47, scope: !2081)
!2085 = !DILocation(line: 522, column: 17, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !1863, file: !253, line: 522, column: 15)
!2087 = !DILocation(line: 518, column: 18, scope: !2081)
!2088 = !DILocation(line: 518, column: 65, scope: !2081)
!2089 = !DILocation(line: 522, column: 15, scope: !1863)
!2090 = !DILocation(line: 526, column: 11, scope: !1863)
!2091 = !DILocation(line: 541, column: 15, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !1863, file: !253, line: 540, column: 15)
!2093 = !DILocation(line: 548, column: 15, scope: !1863)
!2094 = !DILocation(line: 550, column: 19, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !253, line: 549, column: 13)
!2096 = distinct !DILexicalBlock(scope: !1863, file: !253, line: 548, column: 15)
!2097 = !DILocation(line: 553, column: 19, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2095, file: !253, line: 553, column: 19)
!2099 = !DILocation(line: 553, column: 35, scope: !2098)
!2100 = !DILocation(line: 553, column: 30, scope: !2098)
!2101 = !DILocation(line: 562, column: 15, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !253, line: 562, column: 15)
!2103 = distinct !DILexicalBlock(scope: !2095, file: !253, line: 562, column: 15)
!2104 = !DILocation(line: 562, column: 15, scope: !2103)
!2105 = !DILocation(line: 563, column: 15, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !253, line: 563, column: 15)
!2107 = distinct !DILexicalBlock(scope: !2095, file: !253, line: 563, column: 15)
!2108 = !DILocation(line: 563, column: 15, scope: !2107)
!2109 = !DILocation(line: 564, column: 15, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !253, line: 564, column: 15)
!2111 = distinct !DILexicalBlock(scope: !2095, file: !253, line: 564, column: 15)
!2112 = !DILocation(line: 564, column: 15, scope: !2111)
!2113 = !DILocation(line: 566, column: 13, scope: !2095)
!2114 = !DILocation(line: 606, column: 17, scope: !1862)
!2115 = !DILocation(line: 602, column: 20, scope: !1862)
!2116 = !DILocation(line: 609, column: 29, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !1867, file: !253, line: 607, column: 15)
!2118 = !{!1159, !1159, i64 0}
!2119 = !DILocation(line: 609, column: 27, scope: !2117)
!2120 = !DILocation(line: 604, column: 18, scope: !1862)
!2121 = !DILocation(line: 610, column: 15, scope: !2117)
!2122 = !DILocation(line: 613, column: 17, scope: !1866)
!2123 = !DILocation(line: 614, column: 17, scope: !1866)
!2124 = !DILocation(line: 618, column: 29, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !1866, file: !253, line: 618, column: 21)
!2126 = !DILocation(line: 618, column: 21, scope: !1866)
!2127 = !DILocation(line: 619, column: 29, scope: !2125)
!2128 = !DILocation(line: 619, column: 19, scope: !2125)
!2129 = !DILocation(line: 621, column: 17, scope: !1866)
!2130 = distinct !{!2130, !2129, !2131}
!2131 = !DILocation(line: 667, column: 44, scope: !1866)
!2132 = !DILocation(line: 623, column: 21, scope: !1884)
!2133 = !DILocation(line: 624, column: 56, scope: !1884)
!2134 = !DILocation(line: 624, column: 50, scope: !1884)
!2135 = !DILocation(line: 625, column: 53, scope: !1884)
!2136 = !DILocation(line: 613, column: 27, scope: !1866)
!2137 = !DILocation(line: 623, column: 29, scope: !1884)
!2138 = !DILocation(line: 624, column: 36, scope: !1884)
!2139 = !DILocation(line: 624, column: 28, scope: !1884)
!2140 = !DILocation(line: 626, column: 25, scope: !1884)
!2141 = !DILocation(line: 636, column: 38, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1891, file: !253, line: 634, column: 23)
!2143 = !DILocation(line: 636, column: 48, scope: !2142)
!2144 = !DILocation(line: 636, column: 51, scope: !2142)
!2145 = !DILocation(line: 636, column: 25, scope: !2142)
!2146 = !DILocation(line: 637, column: 28, scope: !2142)
!2147 = !DILocation(line: 636, column: 34, scope: !2142)
!2148 = distinct !{!2148, !2145, !2146}
!2149 = !DILocation(line: 650, column: 43, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !253, line: 650, column: 29)
!2151 = distinct !DILexicalBlock(scope: !1888, file: !253, line: 650, column: 29)
!2152 = !DILocation(line: 647, column: 29, scope: !1889)
!2153 = !DILocation(line: 649, column: 36, scope: !1888)
!2154 = !DILocation(line: 651, column: 49, scope: !2150)
!2155 = !DILocation(line: 651, column: 39, scope: !2150)
!2156 = !DILocation(line: 651, column: 31, scope: !2150)
!2157 = !DILocation(line: 650, column: 53, scope: !2150)
!2158 = !DILocation(line: 650, column: 29, scope: !2151)
!2159 = distinct !{!2159, !2158, !2160}
!2160 = !DILocation(line: 659, column: 33, scope: !2151)
!2161 = !DILocation(line: 666, column: 19, scope: !1866)
!2162 = !DILocation(line: 662, column: 41, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !1890, file: !253, line: 662, column: 29)
!2164 = !DILocation(line: 662, column: 31, scope: !2163)
!2165 = !DILocation(line: 662, column: 29, scope: !1890)
!2166 = !DILocation(line: 664, column: 27, scope: !1890)
!2167 = !DILocation(line: 667, column: 26, scope: !1866)
!2168 = !DILocation(line: 667, column: 24, scope: !1866)
!2169 = !DILocation(line: 666, column: 19, scope: !1884)
!2170 = !DILocation(line: 668, column: 15, scope: !1867)
!2171 = !DILocation(line: 670, column: 40, scope: !1862)
!2172 = !DILocation(line: 672, column: 19, scope: !1896)
!2173 = !DILocation(line: 672, column: 45, scope: !1896)
!2174 = !DILocation(line: 672, column: 23, scope: !1896)
!2175 = !DILocation(line: 676, column: 33, scope: !1895)
!2176 = !DILocation(line: 676, column: 24, scope: !1895)
!2177 = !DILocation(line: 678, column: 17, scope: !1895)
!2178 = !DILocation(line: 680, column: 43, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !253, line: 680, column: 25)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !253, line: 679, column: 19)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !253, line: 678, column: 17)
!2182 = distinct !DILexicalBlock(scope: !1895, file: !253, line: 678, column: 17)
!2183 = !DILocation(line: 682, column: 25, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !253, line: 682, column: 25)
!2185 = distinct !DILexicalBlock(scope: !2179, file: !253, line: 681, column: 23)
!2186 = !DILocation(line: 682, column: 25, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2184, file: !253, line: 682, column: 25)
!2188 = !DILocation(line: 682, column: 25, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !253, line: 682, column: 25)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !253, line: 682, column: 25)
!2191 = distinct !DILexicalBlock(scope: !2187, file: !253, line: 682, column: 25)
!2192 = !DILocation(line: 682, column: 25, scope: !2190)
!2193 = !DILocation(line: 682, column: 25, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !253, line: 682, column: 25)
!2195 = distinct !DILexicalBlock(scope: !2191, file: !253, line: 682, column: 25)
!2196 = !DILocation(line: 682, column: 25, scope: !2195)
!2197 = !DILocation(line: 682, column: 25, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !253, line: 682, column: 25)
!2199 = distinct !DILexicalBlock(scope: !2191, file: !253, line: 682, column: 25)
!2200 = !DILocation(line: 682, column: 25, scope: !2199)
!2201 = !DILocation(line: 682, column: 25, scope: !2191)
!2202 = !DILocation(line: 682, column: 25, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !253, line: 682, column: 25)
!2204 = distinct !DILexicalBlock(scope: !2184, file: !253, line: 682, column: 25)
!2205 = !DILocation(line: 682, column: 25, scope: !2204)
!2206 = !DILocation(line: 683, column: 25, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !253, line: 683, column: 25)
!2208 = distinct !DILexicalBlock(scope: !2185, file: !253, line: 683, column: 25)
!2209 = !DILocation(line: 683, column: 25, scope: !2208)
!2210 = !DILocation(line: 684, column: 25, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !253, line: 684, column: 25)
!2212 = distinct !DILexicalBlock(scope: !2185, file: !253, line: 684, column: 25)
!2213 = !DILocation(line: 684, column: 25, scope: !2212)
!2214 = !DILocation(line: 685, column: 38, scope: !2185)
!2215 = !DILocation(line: 685, column: 33, scope: !2185)
!2216 = !DILocation(line: 686, column: 23, scope: !2185)
!2217 = !DILocation(line: 687, column: 30, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2179, file: !253, line: 687, column: 30)
!2219 = !DILocation(line: 687, column: 30, scope: !2179)
!2220 = !DILocation(line: 689, column: 25, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !253, line: 689, column: 25)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !253, line: 689, column: 25)
!2223 = distinct !DILexicalBlock(scope: !2218, file: !253, line: 688, column: 23)
!2224 = !DILocation(line: 689, column: 25, scope: !2222)
!2225 = !DILocation(line: 691, column: 23, scope: !2223)
!2226 = !DILocation(line: 692, column: 35, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2180, file: !253, line: 692, column: 25)
!2228 = !DILocation(line: 692, column: 30, scope: !2227)
!2229 = !DILocation(line: 692, column: 25, scope: !2180)
!2230 = !DILocation(line: 694, column: 21, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !253, line: 694, column: 21)
!2232 = distinct !DILexicalBlock(scope: !2180, file: !253, line: 694, column: 21)
!2233 = !DILocation(line: 694, column: 21, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !253, line: 694, column: 21)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !253, line: 694, column: 21)
!2236 = distinct !DILexicalBlock(scope: !2231, file: !253, line: 694, column: 21)
!2237 = !DILocation(line: 694, column: 21, scope: !2235)
!2238 = !DILocation(line: 694, column: 21, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !253, line: 694, column: 21)
!2240 = distinct !DILexicalBlock(scope: !2236, file: !253, line: 694, column: 21)
!2241 = !DILocation(line: 694, column: 21, scope: !2240)
!2242 = !DILocation(line: 694, column: 21, scope: !2236)
!2243 = !DILocation(line: 695, column: 21, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !253, line: 695, column: 21)
!2245 = distinct !DILexicalBlock(scope: !2180, file: !253, line: 695, column: 21)
!2246 = !DILocation(line: 695, column: 21, scope: !2245)
!2247 = !DILocation(line: 696, column: 25, scope: !2180)
!2248 = !DILocation(line: 678, column: 17, scope: !2181)
!2249 = distinct !{!2249, !2250, !2251}
!2250 = !DILocation(line: 678, column: 17, scope: !2182)
!2251 = !DILocation(line: 697, column: 19, scope: !2182)
!2252 = !DILocation(line: 704, column: 34, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !1854, file: !253, line: 704, column: 11)
!2254 = !DILocation(line: 706, column: 14, scope: !2253)
!2255 = !DILocation(line: 707, column: 14, scope: !2253)
!2256 = !DILocation(line: 707, column: 35, scope: !2253)
!2257 = !DILocation(line: 707, column: 17, scope: !2253)
!2258 = !DILocation(line: 707, column: 53, scope: !2253)
!2259 = !DILocation(line: 707, column: 47, scope: !2253)
!2260 = !DILocation(line: 707, column: 65, scope: !2253)
!2261 = !DILocation(line: 708, column: 15, scope: !2253)
!2262 = !DILocation(line: 708, column: 11, scope: !2253)
!2263 = !DILocation(line: 704, column: 11, scope: !1854)
!2264 = !DILocation(line: 712, column: 7, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !1854, file: !253, line: 712, column: 7)
!2266 = !DILocation(line: 712, column: 7, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2265, file: !253, line: 712, column: 7)
!2268 = !DILocation(line: 712, column: 7, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !253, line: 712, column: 7)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !253, line: 712, column: 7)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !253, line: 712, column: 7)
!2272 = !DILocation(line: 712, column: 7, scope: !2270)
!2273 = !DILocation(line: 712, column: 7, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !253, line: 712, column: 7)
!2275 = distinct !DILexicalBlock(scope: !2271, file: !253, line: 712, column: 7)
!2276 = !DILocation(line: 712, column: 7, scope: !2275)
!2277 = !DILocation(line: 712, column: 7, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !253, line: 712, column: 7)
!2279 = distinct !DILexicalBlock(scope: !2271, file: !253, line: 712, column: 7)
!2280 = !DILocation(line: 712, column: 7, scope: !2279)
!2281 = !DILocation(line: 712, column: 7, scope: !2271)
!2282 = !DILocation(line: 712, column: 7, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !253, line: 712, column: 7)
!2284 = distinct !DILexicalBlock(scope: !2265, file: !253, line: 712, column: 7)
!2285 = !DILocation(line: 712, column: 7, scope: !2284)
!2286 = !DILocation(line: 715, column: 7, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !253, line: 715, column: 7)
!2288 = distinct !DILexicalBlock(scope: !1854, file: !253, line: 715, column: 7)
!2289 = !DILocation(line: 715, column: 7, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !253, line: 715, column: 7)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !253, line: 715, column: 7)
!2292 = distinct !DILexicalBlock(scope: !2287, file: !253, line: 715, column: 7)
!2293 = !DILocation(line: 715, column: 7, scope: !2291)
!2294 = !DILocation(line: 715, column: 7, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !253, line: 715, column: 7)
!2296 = distinct !DILexicalBlock(scope: !2292, file: !253, line: 715, column: 7)
!2297 = !DILocation(line: 715, column: 7, scope: !2296)
!2298 = !DILocation(line: 715, column: 7, scope: !2292)
!2299 = !DILocation(line: 716, column: 7, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !253, line: 716, column: 7)
!2301 = distinct !DILexicalBlock(scope: !1854, file: !253, line: 716, column: 7)
!2302 = !DILocation(line: 716, column: 7, scope: !2301)
!2303 = !DILocation(line: 718, column: 13, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !1854, file: !253, line: 718, column: 11)
!2305 = !DILocation(line: 718, column: 11, scope: !1854)
!2306 = !DILocation(line: 720, column: 5, scope: !1855)
!2307 = !DILocation(line: 392, column: 75, scope: !1855)
!2308 = !DILocation(line: 392, column: 3, scope: !1855)
!2309 = distinct !{!2309, !1968, !2310}
!2310 = !DILocation(line: 720, column: 5, scope: !1856)
!2311 = !DILocation(line: 722, column: 11, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !1827, file: !253, line: 722, column: 7)
!2313 = !DILocation(line: 722, column: 16, scope: !2312)
!2314 = !DILocation(line: 730, column: 51, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !1827, file: !253, line: 730, column: 7)
!2316 = !DILocation(line: 731, column: 10, scope: !2315)
!2317 = !DILocation(line: 733, column: 11, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !253, line: 733, column: 11)
!2319 = distinct !DILexicalBlock(scope: !2315, file: !253, line: 732, column: 5)
!2320 = !DILocation(line: 733, column: 11, scope: !2319)
!2321 = !DILocation(line: 734, column: 16, scope: !2318)
!2322 = !DILocation(line: 734, column: 9, scope: !2318)
!2323 = !DILocation(line: 738, column: 18, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2318, file: !253, line: 738, column: 16)
!2325 = !DILocation(line: 738, column: 32, scope: !2324)
!2326 = !DILocation(line: 738, column: 29, scope: !2324)
!2327 = !DILocation(line: 747, column: 7, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !1827, file: !253, line: 747, column: 7)
!2329 = !DILocation(line: 747, column: 20, scope: !2328)
!2330 = !DILocation(line: 748, column: 12, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !253, line: 748, column: 5)
!2332 = distinct !DILexicalBlock(scope: !2328, file: !253, line: 748, column: 5)
!2333 = !DILocation(line: 748, column: 5, scope: !2332)
!2334 = !DILocation(line: 749, column: 7, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !253, line: 749, column: 7)
!2336 = distinct !DILexicalBlock(scope: !2331, file: !253, line: 749, column: 7)
!2337 = !DILocation(line: 749, column: 7, scope: !2336)
!2338 = !DILocation(line: 748, column: 39, scope: !2331)
!2339 = distinct !{!2339, !2333, !2340}
!2340 = !DILocation(line: 749, column: 7, scope: !2332)
!2341 = !DILocation(line: 751, column: 11, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !1827, file: !253, line: 751, column: 7)
!2343 = !DILocation(line: 751, column: 7, scope: !1827)
!2344 = !DILocation(line: 752, column: 5, scope: !2342)
!2345 = !DILocation(line: 752, column: 17, scope: !2342)
!2346 = !DILocation(line: 758, column: 21, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !1827, file: !253, line: 758, column: 7)
!2348 = !DILocation(line: 758, column: 54, scope: !2347)
!2349 = !DILocation(line: 758, column: 51, scope: !2347)
!2350 = !DILocation(line: 762, column: 42, scope: !1827)
!2351 = !DILocation(line: 760, column: 10, scope: !1827)
!2352 = !DILocation(line: 760, column: 3, scope: !1827)
!2353 = !DILocation(line: 764, column: 1, scope: !1827)
!2354 = distinct !DISubprogram(name: "gettext_quote", scope: !253, file: !253, line: 199, type: !2355, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!43, !43, !5}
!2357 = !{!2358, !2359, !2360, !2361}
!2358 = !DILocalVariable(name: "msgid", arg: 1, scope: !2354, file: !253, line: 199, type: !43)
!2359 = !DILocalVariable(name: "s", arg: 2, scope: !2354, file: !253, line: 199, type: !5)
!2360 = !DILocalVariable(name: "translation", scope: !2354, file: !253, line: 201, type: !43)
!2361 = !DILocalVariable(name: "locale_code", scope: !2354, file: !253, line: 202, type: !43)
!2362 = !DILocation(line: 199, column: 28, scope: !2354)
!2363 = !DILocation(line: 199, column: 54, scope: !2354)
!2364 = !DILocation(line: 201, column: 29, scope: !2354)
!2365 = !DILocation(line: 201, column: 15, scope: !2354)
!2366 = !DILocation(line: 204, column: 19, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2354, file: !253, line: 204, column: 7)
!2368 = !DILocation(line: 204, column: 7, scope: !2354)
!2369 = !DILocation(line: 225, column: 17, scope: !2354)
!2370 = !DILocation(line: 202, column: 15, scope: !2354)
!2371 = !DILocalVariable(name: "s2", arg: 2, scope: !2372, file: !2373, line: 160, type: !43)
!2372 = distinct !DISubprogram(name: "strcaseeq0", scope: !2373, file: !2373, line: 160, type: !2374, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2376)
!2373 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!147, !43, !43, !36, !36, !36, !36, !36, !36, !36, !36, !36}
!2376 = !{!2377, !2371, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386}
!2377 = !DILocalVariable(name: "s1", arg: 1, scope: !2372, file: !2373, line: 160, type: !43)
!2378 = !DILocalVariable(name: "s20", arg: 3, scope: !2372, file: !2373, line: 160, type: !36)
!2379 = !DILocalVariable(name: "s21", arg: 4, scope: !2372, file: !2373, line: 160, type: !36)
!2380 = !DILocalVariable(name: "s22", arg: 5, scope: !2372, file: !2373, line: 160, type: !36)
!2381 = !DILocalVariable(name: "s23", arg: 6, scope: !2372, file: !2373, line: 160, type: !36)
!2382 = !DILocalVariable(name: "s24", arg: 7, scope: !2372, file: !2373, line: 160, type: !36)
!2383 = !DILocalVariable(name: "s25", arg: 8, scope: !2372, file: !2373, line: 160, type: !36)
!2384 = !DILocalVariable(name: "s26", arg: 9, scope: !2372, file: !2373, line: 160, type: !36)
!2385 = !DILocalVariable(name: "s27", arg: 10, scope: !2372, file: !2373, line: 160, type: !36)
!2386 = !DILocalVariable(name: "s28", arg: 11, scope: !2372, file: !2373, line: 160, type: !36)
!2387 = !DILocation(line: 160, column: 41, scope: !2372, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 226, column: 7, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2354, file: !253, line: 226, column: 7)
!2390 = !DILocation(line: 160, column: 120, scope: !2372, inlinedAt: !2388)
!2391 = !DILocation(line: 160, column: 130, scope: !2372, inlinedAt: !2388)
!2392 = !DILocation(line: 162, column: 7, scope: !2393, inlinedAt: !2388)
!2393 = distinct !DILexicalBlock(scope: !2372, file: !2373, line: 162, column: 7)
!2394 = !DILocalVariable(name: "s2", arg: 2, scope: !2395, file: !2373, line: 146, type: !43)
!2395 = distinct !DISubprogram(name: "strcaseeq1", scope: !2373, file: !2373, line: 146, type: !2396, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2398)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!147, !43, !43, !36, !36, !36, !36, !36, !36, !36, !36}
!2398 = !{!2399, !2394, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407}
!2399 = !DILocalVariable(name: "s1", arg: 1, scope: !2395, file: !2373, line: 146, type: !43)
!2400 = !DILocalVariable(name: "s21", arg: 3, scope: !2395, file: !2373, line: 146, type: !36)
!2401 = !DILocalVariable(name: "s22", arg: 4, scope: !2395, file: !2373, line: 146, type: !36)
!2402 = !DILocalVariable(name: "s23", arg: 5, scope: !2395, file: !2373, line: 146, type: !36)
!2403 = !DILocalVariable(name: "s24", arg: 6, scope: !2395, file: !2373, line: 146, type: !36)
!2404 = !DILocalVariable(name: "s25", arg: 7, scope: !2395, file: !2373, line: 146, type: !36)
!2405 = !DILocalVariable(name: "s26", arg: 8, scope: !2395, file: !2373, line: 146, type: !36)
!2406 = !DILocalVariable(name: "s27", arg: 9, scope: !2395, file: !2373, line: 146, type: !36)
!2407 = !DILocalVariable(name: "s28", arg: 10, scope: !2395, file: !2373, line: 146, type: !36)
!2408 = !DILocation(line: 146, column: 41, scope: !2395, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 167, column: 16, scope: !2410, inlinedAt: !2388)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !2373, line: 164, column: 11)
!2411 = distinct !DILexicalBlock(scope: !2393, file: !2373, line: 163, column: 5)
!2412 = !DILocation(line: 146, column: 110, scope: !2395, inlinedAt: !2409)
!2413 = !DILocation(line: 146, column: 120, scope: !2395, inlinedAt: !2409)
!2414 = !DILocation(line: 148, column: 7, scope: !2415, inlinedAt: !2409)
!2415 = distinct !DILexicalBlock(scope: !2395, file: !2373, line: 148, column: 7)
!2416 = !DILocalVariable(name: "s2", arg: 2, scope: !2417, file: !2373, line: 132, type: !43)
!2417 = distinct !DISubprogram(name: "strcaseeq2", scope: !2373, file: !2373, line: 132, type: !2418, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2420)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!147, !43, !43, !36, !36, !36, !36, !36, !36, !36}
!2420 = !{!2421, !2416, !2422, !2423, !2424, !2425, !2426, !2427, !2428}
!2421 = !DILocalVariable(name: "s1", arg: 1, scope: !2417, file: !2373, line: 132, type: !43)
!2422 = !DILocalVariable(name: "s22", arg: 3, scope: !2417, file: !2373, line: 132, type: !36)
!2423 = !DILocalVariable(name: "s23", arg: 4, scope: !2417, file: !2373, line: 132, type: !36)
!2424 = !DILocalVariable(name: "s24", arg: 5, scope: !2417, file: !2373, line: 132, type: !36)
!2425 = !DILocalVariable(name: "s25", arg: 6, scope: !2417, file: !2373, line: 132, type: !36)
!2426 = !DILocalVariable(name: "s26", arg: 7, scope: !2417, file: !2373, line: 132, type: !36)
!2427 = !DILocalVariable(name: "s27", arg: 8, scope: !2417, file: !2373, line: 132, type: !36)
!2428 = !DILocalVariable(name: "s28", arg: 9, scope: !2417, file: !2373, line: 132, type: !36)
!2429 = !DILocation(line: 132, column: 41, scope: !2417, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 153, column: 16, scope: !2431, inlinedAt: !2409)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !2373, line: 150, column: 11)
!2432 = distinct !DILexicalBlock(scope: !2415, file: !2373, line: 149, column: 5)
!2433 = !DILocation(line: 132, column: 100, scope: !2417, inlinedAt: !2430)
!2434 = !DILocation(line: 132, column: 110, scope: !2417, inlinedAt: !2430)
!2435 = !DILocation(line: 134, column: 7, scope: !2436, inlinedAt: !2430)
!2436 = distinct !DILexicalBlock(scope: !2417, file: !2373, line: 134, column: 7)
!2437 = !DILocalVariable(name: "s2", arg: 2, scope: !2438, file: !2373, line: 118, type: !43)
!2438 = distinct !DISubprogram(name: "strcaseeq3", scope: !2373, file: !2373, line: 118, type: !2439, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2441)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!147, !43, !43, !36, !36, !36, !36, !36, !36}
!2441 = !{!2442, !2437, !2443, !2444, !2445, !2446, !2447, !2448}
!2442 = !DILocalVariable(name: "s1", arg: 1, scope: !2438, file: !2373, line: 118, type: !43)
!2443 = !DILocalVariable(name: "s23", arg: 3, scope: !2438, file: !2373, line: 118, type: !36)
!2444 = !DILocalVariable(name: "s24", arg: 4, scope: !2438, file: !2373, line: 118, type: !36)
!2445 = !DILocalVariable(name: "s25", arg: 5, scope: !2438, file: !2373, line: 118, type: !36)
!2446 = !DILocalVariable(name: "s26", arg: 6, scope: !2438, file: !2373, line: 118, type: !36)
!2447 = !DILocalVariable(name: "s27", arg: 7, scope: !2438, file: !2373, line: 118, type: !36)
!2448 = !DILocalVariable(name: "s28", arg: 8, scope: !2438, file: !2373, line: 118, type: !36)
!2449 = !DILocation(line: 118, column: 41, scope: !2438, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 139, column: 16, scope: !2451, inlinedAt: !2430)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !2373, line: 136, column: 11)
!2452 = distinct !DILexicalBlock(scope: !2436, file: !2373, line: 135, column: 5)
!2453 = !DILocation(line: 118, column: 90, scope: !2438, inlinedAt: !2450)
!2454 = !DILocation(line: 118, column: 100, scope: !2438, inlinedAt: !2450)
!2455 = !DILocation(line: 120, column: 7, scope: !2456, inlinedAt: !2450)
!2456 = distinct !DILexicalBlock(scope: !2438, file: !2373, line: 120, column: 7)
!2457 = !DILocation(line: 120, column: 7, scope: !2438, inlinedAt: !2450)
!2458 = !DILocalVariable(name: "s2", arg: 2, scope: !2459, file: !2373, line: 104, type: !43)
!2459 = distinct !DISubprogram(name: "strcaseeq4", scope: !2373, file: !2373, line: 104, type: !2460, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2462)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!147, !43, !43, !36, !36, !36, !36, !36}
!2462 = !{!2463, !2458, !2464, !2465, !2466, !2467, !2468}
!2463 = !DILocalVariable(name: "s1", arg: 1, scope: !2459, file: !2373, line: 104, type: !43)
!2464 = !DILocalVariable(name: "s24", arg: 3, scope: !2459, file: !2373, line: 104, type: !36)
!2465 = !DILocalVariable(name: "s25", arg: 4, scope: !2459, file: !2373, line: 104, type: !36)
!2466 = !DILocalVariable(name: "s26", arg: 5, scope: !2459, file: !2373, line: 104, type: !36)
!2467 = !DILocalVariable(name: "s27", arg: 6, scope: !2459, file: !2373, line: 104, type: !36)
!2468 = !DILocalVariable(name: "s28", arg: 7, scope: !2459, file: !2373, line: 104, type: !36)
!2469 = !DILocation(line: 104, column: 41, scope: !2459, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 125, column: 16, scope: !2471, inlinedAt: !2450)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !2373, line: 122, column: 11)
!2472 = distinct !DILexicalBlock(scope: !2456, file: !2373, line: 121, column: 5)
!2473 = !DILocation(line: 104, column: 80, scope: !2459, inlinedAt: !2470)
!2474 = !DILocation(line: 104, column: 90, scope: !2459, inlinedAt: !2470)
!2475 = !DILocation(line: 106, column: 7, scope: !2476, inlinedAt: !2470)
!2476 = distinct !DILexicalBlock(scope: !2459, file: !2373, line: 106, column: 7)
!2477 = !DILocation(line: 106, column: 7, scope: !2459, inlinedAt: !2470)
!2478 = !DILocalVariable(name: "s2", arg: 2, scope: !2479, file: !2373, line: 90, type: !43)
!2479 = distinct !DISubprogram(name: "strcaseeq5", scope: !2373, file: !2373, line: 90, type: !2480, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2482)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!147, !43, !43, !36, !36, !36, !36}
!2482 = !{!2483, !2478, !2484, !2485, !2486, !2487}
!2483 = !DILocalVariable(name: "s1", arg: 1, scope: !2479, file: !2373, line: 90, type: !43)
!2484 = !DILocalVariable(name: "s25", arg: 3, scope: !2479, file: !2373, line: 90, type: !36)
!2485 = !DILocalVariable(name: "s26", arg: 4, scope: !2479, file: !2373, line: 90, type: !36)
!2486 = !DILocalVariable(name: "s27", arg: 5, scope: !2479, file: !2373, line: 90, type: !36)
!2487 = !DILocalVariable(name: "s28", arg: 6, scope: !2479, file: !2373, line: 90, type: !36)
!2488 = !DILocation(line: 90, column: 41, scope: !2479, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 111, column: 16, scope: !2490, inlinedAt: !2470)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !2373, line: 108, column: 11)
!2491 = distinct !DILexicalBlock(scope: !2476, file: !2373, line: 107, column: 5)
!2492 = !DILocation(line: 90, column: 70, scope: !2479, inlinedAt: !2489)
!2493 = !DILocation(line: 90, column: 80, scope: !2479, inlinedAt: !2489)
!2494 = !DILocation(line: 92, column: 7, scope: !2495, inlinedAt: !2489)
!2495 = distinct !DILexicalBlock(scope: !2479, file: !2373, line: 92, column: 7)
!2496 = !DILocation(line: 92, column: 7, scope: !2479, inlinedAt: !2489)
!2497 = !DILocation(line: 227, column: 12, scope: !2389)
!2498 = !DILocation(line: 227, column: 21, scope: !2389)
!2499 = !DILocation(line: 227, column: 5, scope: !2389)
!2500 = !DILocation(line: 146, column: 41, scope: !2395, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 167, column: 16, scope: !2410, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 228, column: 7, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2354, file: !253, line: 228, column: 7)
!2504 = !DILocation(line: 146, column: 110, scope: !2395, inlinedAt: !2501)
!2505 = !DILocation(line: 146, column: 120, scope: !2395, inlinedAt: !2501)
!2506 = !DILocation(line: 148, column: 7, scope: !2415, inlinedAt: !2501)
!2507 = !DILocation(line: 132, column: 41, scope: !2417, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 153, column: 16, scope: !2431, inlinedAt: !2501)
!2509 = !DILocation(line: 132, column: 100, scope: !2417, inlinedAt: !2508)
!2510 = !DILocation(line: 132, column: 110, scope: !2417, inlinedAt: !2508)
!2511 = !DILocation(line: 134, column: 7, scope: !2436, inlinedAt: !2508)
!2512 = !DILocation(line: 134, column: 7, scope: !2417, inlinedAt: !2508)
!2513 = !DILocation(line: 118, column: 41, scope: !2438, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 139, column: 16, scope: !2451, inlinedAt: !2508)
!2515 = !DILocation(line: 118, column: 90, scope: !2438, inlinedAt: !2514)
!2516 = !DILocation(line: 118, column: 100, scope: !2438, inlinedAt: !2514)
!2517 = !DILocation(line: 120, column: 7, scope: !2456, inlinedAt: !2514)
!2518 = !DILocation(line: 120, column: 7, scope: !2438, inlinedAt: !2514)
!2519 = !DILocation(line: 104, column: 41, scope: !2459, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 125, column: 16, scope: !2471, inlinedAt: !2514)
!2521 = !DILocation(line: 104, column: 80, scope: !2459, inlinedAt: !2520)
!2522 = !DILocation(line: 104, column: 90, scope: !2459, inlinedAt: !2520)
!2523 = !DILocation(line: 106, column: 7, scope: !2476, inlinedAt: !2520)
!2524 = !DILocation(line: 106, column: 7, scope: !2459, inlinedAt: !2520)
!2525 = !DILocation(line: 90, column: 41, scope: !2479, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 111, column: 16, scope: !2490, inlinedAt: !2520)
!2527 = !DILocation(line: 90, column: 70, scope: !2479, inlinedAt: !2526)
!2528 = !DILocation(line: 90, column: 80, scope: !2479, inlinedAt: !2526)
!2529 = !DILocation(line: 92, column: 7, scope: !2495, inlinedAt: !2526)
!2530 = !DILocation(line: 92, column: 7, scope: !2479, inlinedAt: !2526)
!2531 = !DILocalVariable(name: "s2", arg: 2, scope: !2532, file: !2373, line: 76, type: !43)
!2532 = distinct !DISubprogram(name: "strcaseeq6", scope: !2373, file: !2373, line: 76, type: !2533, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2535)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!147, !43, !43, !36, !36, !36}
!2535 = !{!2536, !2531, !2537, !2538, !2539}
!2536 = !DILocalVariable(name: "s1", arg: 1, scope: !2532, file: !2373, line: 76, type: !43)
!2537 = !DILocalVariable(name: "s26", arg: 3, scope: !2532, file: !2373, line: 76, type: !36)
!2538 = !DILocalVariable(name: "s27", arg: 4, scope: !2532, file: !2373, line: 76, type: !36)
!2539 = !DILocalVariable(name: "s28", arg: 5, scope: !2532, file: !2373, line: 76, type: !36)
!2540 = !DILocation(line: 76, column: 41, scope: !2532, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 97, column: 16, scope: !2542, inlinedAt: !2526)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !2373, line: 94, column: 11)
!2543 = distinct !DILexicalBlock(scope: !2495, file: !2373, line: 93, column: 5)
!2544 = !DILocation(line: 76, column: 60, scope: !2532, inlinedAt: !2541)
!2545 = !DILocation(line: 76, column: 70, scope: !2532, inlinedAt: !2541)
!2546 = !DILocation(line: 78, column: 7, scope: !2547, inlinedAt: !2541)
!2547 = distinct !DILexicalBlock(scope: !2532, file: !2373, line: 78, column: 7)
!2548 = !DILocation(line: 78, column: 7, scope: !2532, inlinedAt: !2541)
!2549 = !DILocalVariable(name: "s2", arg: 2, scope: !2550, file: !2373, line: 62, type: !43)
!2550 = distinct !DISubprogram(name: "strcaseeq7", scope: !2373, file: !2373, line: 62, type: !2551, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!147, !43, !43, !36, !36}
!2553 = !{!2554, !2549, !2555, !2556}
!2554 = !DILocalVariable(name: "s1", arg: 1, scope: !2550, file: !2373, line: 62, type: !43)
!2555 = !DILocalVariable(name: "s27", arg: 3, scope: !2550, file: !2373, line: 62, type: !36)
!2556 = !DILocalVariable(name: "s28", arg: 4, scope: !2550, file: !2373, line: 62, type: !36)
!2557 = !DILocation(line: 62, column: 41, scope: !2550, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 83, column: 16, scope: !2559, inlinedAt: !2541)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !2373, line: 80, column: 11)
!2560 = distinct !DILexicalBlock(scope: !2547, file: !2373, line: 79, column: 5)
!2561 = !DILocation(line: 62, column: 50, scope: !2550, inlinedAt: !2558)
!2562 = !DILocation(line: 62, column: 60, scope: !2550, inlinedAt: !2558)
!2563 = !DILocation(line: 64, column: 7, scope: !2564, inlinedAt: !2558)
!2564 = distinct !DILexicalBlock(scope: !2550, file: !2373, line: 64, column: 7)
!2565 = !DILocation(line: 228, column: 7, scope: !2354)
!2566 = !DILocation(line: 229, column: 12, scope: !2503)
!2567 = !DILocation(line: 229, column: 21, scope: !2503)
!2568 = !DILocation(line: 229, column: 5, scope: !2503)
!2569 = !DILocation(line: 231, column: 13, scope: !2354)
!2570 = !DILocation(line: 231, column: 11, scope: !2354)
!2571 = !DILocation(line: 231, column: 3, scope: !2354)
!2572 = !DILocation(line: 232, column: 1, scope: !2354)
!2573 = distinct !DISubprogram(name: "quotearg_alloc", scope: !253, file: !253, line: 791, type: !2574, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2576)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!35, !43, !62, !1699}
!2576 = !{!2577, !2578, !2579}
!2577 = !DILocalVariable(name: "arg", arg: 1, scope: !2573, file: !253, line: 791, type: !43)
!2578 = !DILocalVariable(name: "argsize", arg: 2, scope: !2573, file: !253, line: 791, type: !62)
!2579 = !DILocalVariable(name: "o", arg: 3, scope: !2573, file: !253, line: 792, type: !1699)
!2580 = !DILocation(line: 791, column: 29, scope: !2573)
!2581 = !DILocation(line: 791, column: 41, scope: !2573)
!2582 = !DILocation(line: 792, column: 47, scope: !2573)
!2583 = !DILocalVariable(name: "arg", arg: 1, scope: !2584, file: !253, line: 804, type: !43)
!2584 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !253, file: !253, line: 804, type: !2585, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2587)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!35, !43, !62, !665, !1699}
!2587 = !{!2583, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595}
!2588 = !DILocalVariable(name: "argsize", arg: 2, scope: !2584, file: !253, line: 804, type: !62)
!2589 = !DILocalVariable(name: "size", arg: 3, scope: !2584, file: !253, line: 804, type: !665)
!2590 = !DILocalVariable(name: "o", arg: 4, scope: !2584, file: !253, line: 805, type: !1699)
!2591 = !DILocalVariable(name: "p", scope: !2584, file: !253, line: 807, type: !1699)
!2592 = !DILocalVariable(name: "e", scope: !2584, file: !253, line: 808, type: !147)
!2593 = !DILocalVariable(name: "flags", scope: !2584, file: !253, line: 810, type: !147)
!2594 = !DILocalVariable(name: "bufsize", scope: !2584, file: !253, line: 811, type: !62)
!2595 = !DILocalVariable(name: "buf", scope: !2584, file: !253, line: 815, type: !35)
!2596 = !DILocation(line: 804, column: 33, scope: !2584, inlinedAt: !2597)
!2597 = distinct !DILocation(line: 794, column: 10, scope: !2573)
!2598 = !DILocation(line: 804, column: 45, scope: !2584, inlinedAt: !2597)
!2599 = !DILocation(line: 804, column: 62, scope: !2584, inlinedAt: !2597)
!2600 = !DILocation(line: 805, column: 51, scope: !2584, inlinedAt: !2597)
!2601 = !DILocation(line: 807, column: 37, scope: !2584, inlinedAt: !2597)
!2602 = !DILocation(line: 807, column: 33, scope: !2584, inlinedAt: !2597)
!2603 = !DILocation(line: 808, column: 11, scope: !2584, inlinedAt: !2597)
!2604 = !DILocation(line: 808, column: 7, scope: !2584, inlinedAt: !2597)
!2605 = !DILocation(line: 810, column: 18, scope: !2584, inlinedAt: !2597)
!2606 = !DILocation(line: 810, column: 24, scope: !2584, inlinedAt: !2597)
!2607 = !DILocation(line: 810, column: 7, scope: !2584, inlinedAt: !2597)
!2608 = !DILocation(line: 811, column: 69, scope: !2584, inlinedAt: !2597)
!2609 = !DILocation(line: 812, column: 53, scope: !2584, inlinedAt: !2597)
!2610 = !DILocation(line: 813, column: 49, scope: !2584, inlinedAt: !2597)
!2611 = !DILocation(line: 814, column: 49, scope: !2584, inlinedAt: !2597)
!2612 = !DILocation(line: 811, column: 20, scope: !2584, inlinedAt: !2597)
!2613 = !DILocation(line: 814, column: 62, scope: !2584, inlinedAt: !2597)
!2614 = !DILocation(line: 811, column: 10, scope: !2584, inlinedAt: !2597)
!2615 = !DILocalVariable(name: "n", arg: 1, scope: !2616, file: !661, line: 220, type: !62)
!2616 = distinct !DISubprogram(name: "xcharalloc", scope: !661, file: !661, line: 220, type: !2617, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2619)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!35, !62}
!2619 = !{!2615}
!2620 = !DILocation(line: 220, column: 20, scope: !2616, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 815, column: 15, scope: !2584, inlinedAt: !2597)
!2622 = !DILocation(line: 222, column: 10, scope: !2616, inlinedAt: !2621)
!2623 = !DILocation(line: 815, column: 9, scope: !2584, inlinedAt: !2597)
!2624 = !DILocation(line: 816, column: 60, scope: !2584, inlinedAt: !2597)
!2625 = !DILocation(line: 818, column: 32, scope: !2584, inlinedAt: !2597)
!2626 = !DILocation(line: 818, column: 47, scope: !2584, inlinedAt: !2597)
!2627 = !DILocation(line: 816, column: 3, scope: !2584, inlinedAt: !2597)
!2628 = !DILocation(line: 819, column: 9, scope: !2584, inlinedAt: !2597)
!2629 = !DILocation(line: 794, column: 3, scope: !2573)
!2630 = !DILocation(line: 804, column: 33, scope: !2584)
!2631 = !DILocation(line: 804, column: 45, scope: !2584)
!2632 = !DILocation(line: 804, column: 62, scope: !2584)
!2633 = !DILocation(line: 805, column: 51, scope: !2584)
!2634 = !DILocation(line: 807, column: 37, scope: !2584)
!2635 = !DILocation(line: 807, column: 33, scope: !2584)
!2636 = !DILocation(line: 808, column: 11, scope: !2584)
!2637 = !DILocation(line: 808, column: 7, scope: !2584)
!2638 = !DILocation(line: 810, column: 18, scope: !2584)
!2639 = !DILocation(line: 810, column: 27, scope: !2584)
!2640 = !DILocation(line: 810, column: 24, scope: !2584)
!2641 = !DILocation(line: 810, column: 7, scope: !2584)
!2642 = !DILocation(line: 811, column: 69, scope: !2584)
!2643 = !DILocation(line: 812, column: 53, scope: !2584)
!2644 = !DILocation(line: 813, column: 49, scope: !2584)
!2645 = !DILocation(line: 814, column: 49, scope: !2584)
!2646 = !DILocation(line: 811, column: 20, scope: !2584)
!2647 = !DILocation(line: 814, column: 62, scope: !2584)
!2648 = !DILocation(line: 811, column: 10, scope: !2584)
!2649 = !DILocation(line: 220, column: 20, scope: !2616, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 815, column: 15, scope: !2584)
!2651 = !DILocation(line: 222, column: 10, scope: !2616, inlinedAt: !2650)
!2652 = !DILocation(line: 815, column: 9, scope: !2584)
!2653 = !DILocation(line: 816, column: 60, scope: !2584)
!2654 = !DILocation(line: 818, column: 32, scope: !2584)
!2655 = !DILocation(line: 818, column: 47, scope: !2584)
!2656 = !DILocation(line: 816, column: 3, scope: !2584)
!2657 = !DILocation(line: 819, column: 9, scope: !2584)
!2658 = !DILocation(line: 820, column: 7, scope: !2584)
!2659 = !DILocation(line: 821, column: 11, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2584, file: !253, line: 820, column: 7)
!2661 = !DILocation(line: 821, column: 5, scope: !2660)
!2662 = !DILocation(line: 822, column: 3, scope: !2584)
!2663 = distinct !DISubprogram(name: "quotearg_free", scope: !253, file: !253, line: 840, type: !181, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2664)
!2664 = !{!2665, !2666}
!2665 = !DILocalVariable(name: "sv", scope: !2663, file: !253, line: 842, type: !274)
!2666 = !DILocalVariable(name: "i", scope: !2663, file: !253, line: 843, type: !147)
!2667 = !DILocation(line: 842, column: 24, scope: !2663)
!2668 = !DILocation(line: 842, column: 19, scope: !2663)
!2669 = !DILocation(line: 843, column: 7, scope: !2663)
!2670 = !DILocation(line: 844, column: 19, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !253, line: 844, column: 3)
!2672 = distinct !DILexicalBlock(scope: !2663, file: !253, line: 844, column: 3)
!2673 = !DILocation(line: 844, column: 17, scope: !2671)
!2674 = !DILocation(line: 844, column: 3, scope: !2672)
!2675 = !DILocation(line: 845, column: 17, scope: !2671)
!2676 = !{!2677, !723, i64 8}
!2677 = !{!"slotvec", !816, i64 0, !723, i64 8}
!2678 = !DILocation(line: 845, column: 5, scope: !2671)
!2679 = !DILocation(line: 844, column: 28, scope: !2671)
!2680 = distinct !{!2680, !2674, !2681}
!2681 = !DILocation(line: 845, column: 20, scope: !2672)
!2682 = !DILocation(line: 846, column: 13, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2663, file: !253, line: 846, column: 7)
!2684 = !DILocation(line: 846, column: 17, scope: !2683)
!2685 = !DILocation(line: 846, column: 7, scope: !2663)
!2686 = !DILocation(line: 848, column: 7, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2683, file: !253, line: 847, column: 5)
!2688 = !DILocation(line: 849, column: 21, scope: !2687)
!2689 = !{!2677, !816, i64 0}
!2690 = !DILocation(line: 850, column: 20, scope: !2687)
!2691 = !DILocation(line: 851, column: 5, scope: !2687)
!2692 = !DILocation(line: 852, column: 10, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2663, file: !253, line: 852, column: 7)
!2694 = !DILocation(line: 852, column: 7, scope: !2663)
!2695 = !DILocation(line: 854, column: 13, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2693, file: !253, line: 853, column: 5)
!2697 = !DILocation(line: 854, column: 7, scope: !2696)
!2698 = !DILocation(line: 855, column: 15, scope: !2696)
!2699 = !DILocation(line: 856, column: 5, scope: !2696)
!2700 = !DILocation(line: 857, column: 10, scope: !2663)
!2701 = !DILocation(line: 858, column: 1, scope: !2663)
!2702 = distinct !DISubprogram(name: "quotearg_n", scope: !253, file: !253, line: 922, type: !2703, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!35, !147, !43}
!2705 = !{!2706, !2707}
!2706 = !DILocalVariable(name: "n", arg: 1, scope: !2702, file: !253, line: 922, type: !147)
!2707 = !DILocalVariable(name: "arg", arg: 2, scope: !2702, file: !253, line: 922, type: !43)
!2708 = !DILocation(line: 922, column: 17, scope: !2702)
!2709 = !DILocation(line: 922, column: 32, scope: !2702)
!2710 = !DILocation(line: 924, column: 10, scope: !2702)
!2711 = !DILocation(line: 924, column: 3, scope: !2702)
!2712 = distinct !DISubprogram(name: "quotearg_n_options", scope: !253, file: !253, line: 869, type: !2713, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2715)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!35, !147, !43, !62, !1699}
!2715 = !{!2716, !2717, !2718, !2719, !2720, !2721, !2722, !2725, !2727, !2728, !2729}
!2716 = !DILocalVariable(name: "n", arg: 1, scope: !2712, file: !253, line: 869, type: !147)
!2717 = !DILocalVariable(name: "arg", arg: 2, scope: !2712, file: !253, line: 869, type: !43)
!2718 = !DILocalVariable(name: "argsize", arg: 3, scope: !2712, file: !253, line: 869, type: !62)
!2719 = !DILocalVariable(name: "options", arg: 4, scope: !2712, file: !253, line: 870, type: !1699)
!2720 = !DILocalVariable(name: "e", scope: !2712, file: !253, line: 872, type: !147)
!2721 = !DILocalVariable(name: "sv", scope: !2712, file: !253, line: 874, type: !274)
!2722 = !DILocalVariable(name: "preallocated", scope: !2723, file: !253, line: 881, type: !108)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !253, line: 880, column: 5)
!2724 = distinct !DILexicalBlock(scope: !2712, file: !253, line: 879, column: 7)
!2725 = !DILocalVariable(name: "size", scope: !2726, file: !253, line: 894, type: !62)
!2726 = distinct !DILexicalBlock(scope: !2712, file: !253, line: 893, column: 3)
!2727 = !DILocalVariable(name: "val", scope: !2726, file: !253, line: 895, type: !35)
!2728 = !DILocalVariable(name: "flags", scope: !2726, file: !253, line: 897, type: !147)
!2729 = !DILocalVariable(name: "qsize", scope: !2726, file: !253, line: 898, type: !62)
!2730 = !DILocation(line: 869, column: 25, scope: !2712)
!2731 = !DILocation(line: 869, column: 40, scope: !2712)
!2732 = !DILocation(line: 869, column: 52, scope: !2712)
!2733 = !DILocation(line: 870, column: 51, scope: !2712)
!2734 = !DILocation(line: 872, column: 11, scope: !2712)
!2735 = !DILocation(line: 872, column: 7, scope: !2712)
!2736 = !DILocation(line: 874, column: 24, scope: !2712)
!2737 = !DILocation(line: 874, column: 19, scope: !2712)
!2738 = !DILocation(line: 876, column: 9, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2712, file: !253, line: 876, column: 7)
!2740 = !DILocation(line: 876, column: 7, scope: !2712)
!2741 = !DILocation(line: 877, column: 5, scope: !2739)
!2742 = !DILocation(line: 879, column: 7, scope: !2724)
!2743 = !DILocation(line: 879, column: 14, scope: !2724)
!2744 = !DILocation(line: 879, column: 7, scope: !2712)
!2745 = !DILocation(line: 881, column: 31, scope: !2723)
!2746 = !DILocation(line: 883, column: 67, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2723, file: !253, line: 883, column: 11)
!2748 = !DILocation(line: 883, column: 11, scope: !2723)
!2749 = !DILocation(line: 884, column: 9, scope: !2747)
!2750 = !DILocation(line: 886, column: 32, scope: !2723)
!2751 = !DILocation(line: 886, column: 61, scope: !2723)
!2752 = !DILocation(line: 886, column: 58, scope: !2723)
!2753 = !DILocation(line: 886, column: 66, scope: !2723)
!2754 = !DILocation(line: 886, column: 22, scope: !2723)
!2755 = !DILocation(line: 886, column: 15, scope: !2723)
!2756 = !DILocation(line: 887, column: 11, scope: !2723)
!2757 = !DILocation(line: 888, column: 15, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2723, file: !253, line: 887, column: 11)
!2759 = !{i64 0, i64 8, !815, i64 8, i64 8, !722}
!2760 = !DILocation(line: 888, column: 9, scope: !2758)
!2761 = !DILocation(line: 889, column: 20, scope: !2723)
!2762 = !DILocation(line: 889, column: 18, scope: !2723)
!2763 = !DILocation(line: 889, column: 7, scope: !2723)
!2764 = !DILocation(line: 889, column: 38, scope: !2723)
!2765 = !DILocation(line: 889, column: 31, scope: !2723)
!2766 = !DILocation(line: 889, column: 48, scope: !2723)
!2767 = !DILocation(line: 890, column: 14, scope: !2723)
!2768 = !DILocation(line: 891, column: 5, scope: !2723)
!2769 = !DILocation(line: 894, column: 19, scope: !2726)
!2770 = !DILocation(line: 894, column: 25, scope: !2726)
!2771 = !DILocation(line: 894, column: 12, scope: !2726)
!2772 = !DILocation(line: 895, column: 23, scope: !2726)
!2773 = !DILocation(line: 895, column: 11, scope: !2726)
!2774 = !DILocation(line: 897, column: 26, scope: !2726)
!2775 = !DILocation(line: 897, column: 32, scope: !2726)
!2776 = !DILocation(line: 897, column: 9, scope: !2726)
!2777 = !DILocation(line: 899, column: 55, scope: !2726)
!2778 = !DILocation(line: 900, column: 46, scope: !2726)
!2779 = !DILocation(line: 901, column: 55, scope: !2726)
!2780 = !DILocation(line: 902, column: 55, scope: !2726)
!2781 = !DILocation(line: 898, column: 20, scope: !2726)
!2782 = !DILocation(line: 898, column: 12, scope: !2726)
!2783 = !DILocation(line: 904, column: 14, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2726, file: !253, line: 904, column: 9)
!2785 = !DILocation(line: 904, column: 9, scope: !2726)
!2786 = !DILocation(line: 906, column: 35, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2784, file: !253, line: 905, column: 7)
!2788 = !DILocation(line: 906, column: 20, scope: !2787)
!2789 = !DILocation(line: 907, column: 17, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2787, file: !253, line: 907, column: 13)
!2791 = !DILocation(line: 907, column: 13, scope: !2787)
!2792 = !DILocation(line: 908, column: 11, scope: !2790)
!2793 = !DILocation(line: 220, column: 20, scope: !2616, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 909, column: 27, scope: !2787)
!2795 = !DILocation(line: 222, column: 10, scope: !2616, inlinedAt: !2794)
!2796 = !DILocation(line: 909, column: 19, scope: !2787)
!2797 = !DILocation(line: 910, column: 69, scope: !2787)
!2798 = !DILocation(line: 912, column: 44, scope: !2787)
!2799 = !DILocation(line: 913, column: 44, scope: !2787)
!2800 = !DILocation(line: 910, column: 9, scope: !2787)
!2801 = !DILocation(line: 914, column: 7, scope: !2787)
!2802 = !DILocation(line: 916, column: 11, scope: !2726)
!2803 = !DILocation(line: 917, column: 5, scope: !2726)
!2804 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !253, file: !253, line: 928, type: !2805, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2807)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!35, !147, !43, !62}
!2807 = !{!2808, !2809, !2810}
!2808 = !DILocalVariable(name: "n", arg: 1, scope: !2804, file: !253, line: 928, type: !147)
!2809 = !DILocalVariable(name: "arg", arg: 2, scope: !2804, file: !253, line: 928, type: !43)
!2810 = !DILocalVariable(name: "argsize", arg: 3, scope: !2804, file: !253, line: 928, type: !62)
!2811 = !DILocation(line: 928, column: 21, scope: !2804)
!2812 = !DILocation(line: 928, column: 36, scope: !2804)
!2813 = !DILocation(line: 928, column: 48, scope: !2804)
!2814 = !DILocation(line: 930, column: 10, scope: !2804)
!2815 = !DILocation(line: 930, column: 3, scope: !2804)
!2816 = distinct !DISubprogram(name: "quotearg", scope: !253, file: !253, line: 934, type: !2817, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!35, !43}
!2819 = !{!2820}
!2820 = !DILocalVariable(name: "arg", arg: 1, scope: !2816, file: !253, line: 934, type: !43)
!2821 = !DILocation(line: 934, column: 23, scope: !2816)
!2822 = !DILocation(line: 922, column: 17, scope: !2702, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 936, column: 10, scope: !2816)
!2824 = !DILocation(line: 922, column: 32, scope: !2702, inlinedAt: !2823)
!2825 = !DILocation(line: 924, column: 10, scope: !2702, inlinedAt: !2823)
!2826 = !DILocation(line: 936, column: 3, scope: !2816)
!2827 = distinct !DISubprogram(name: "quotearg_mem", scope: !253, file: !253, line: 940, type: !2828, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2830)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!35, !43, !62}
!2830 = !{!2831, !2832}
!2831 = !DILocalVariable(name: "arg", arg: 1, scope: !2827, file: !253, line: 940, type: !43)
!2832 = !DILocalVariable(name: "argsize", arg: 2, scope: !2827, file: !253, line: 940, type: !62)
!2833 = !DILocation(line: 940, column: 27, scope: !2827)
!2834 = !DILocation(line: 940, column: 39, scope: !2827)
!2835 = !DILocation(line: 928, column: 21, scope: !2804, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 942, column: 10, scope: !2827)
!2837 = !DILocation(line: 928, column: 36, scope: !2804, inlinedAt: !2836)
!2838 = !DILocation(line: 928, column: 48, scope: !2804, inlinedAt: !2836)
!2839 = !DILocation(line: 930, column: 10, scope: !2804, inlinedAt: !2836)
!2840 = !DILocation(line: 942, column: 3, scope: !2827)
!2841 = distinct !DISubprogram(name: "quotearg_n_style", scope: !253, file: !253, line: 946, type: !2842, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!35, !147, !5, !43}
!2844 = !{!2845, !2846, !2847, !2848}
!2845 = !DILocalVariable(name: "n", arg: 1, scope: !2841, file: !253, line: 946, type: !147)
!2846 = !DILocalVariable(name: "s", arg: 2, scope: !2841, file: !253, line: 946, type: !5)
!2847 = !DILocalVariable(name: "arg", arg: 3, scope: !2841, file: !253, line: 946, type: !43)
!2848 = !DILocalVariable(name: "o", scope: !2841, file: !253, line: 948, type: !1700)
!2849 = !DILocalVariable(name: "o", scope: !2850, file: !253, line: 187, type: !260)
!2850 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !253, file: !253, line: 185, type: !2851, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!260, !5}
!2853 = !{!2854, !2849}
!2854 = !DILocalVariable(name: "style", arg: 1, scope: !2850, file: !253, line: 185, type: !5)
!2855 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2856 = !DILocation(line: 187, column: 26, scope: !2850, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 948, column: 36, scope: !2841)
!2858 = !DILocation(line: 946, column: 23, scope: !2841)
!2859 = !DILocation(line: 946, column: 45, scope: !2841)
!2860 = !DILocation(line: 946, column: 60, scope: !2841)
!2861 = !DILocation(line: 948, column: 3, scope: !2841)
!2862 = !DILocation(line: 948, column: 32, scope: !2841)
!2863 = !DILocation(line: 185, column: 48, scope: !2850, inlinedAt: !2857)
!2864 = !DILocation(line: 187, column: 3, scope: !2850, inlinedAt: !2857)
!2865 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2866 = !DILocation(line: 188, column: 13, scope: !2867, inlinedAt: !2857)
!2867 = distinct !DILexicalBlock(scope: !2850, file: !253, line: 188, column: 7)
!2868 = !DILocation(line: 188, column: 7, scope: !2850, inlinedAt: !2857)
!2869 = !DILocation(line: 189, column: 5, scope: !2867, inlinedAt: !2857)
!2870 = !{!2871}
!2871 = distinct !{!2871, !2872, !"quoting_options_from_style: argument 0"}
!2872 = distinct !{!2872, !"quoting_options_from_style"}
!2873 = !DILocation(line: 191, column: 10, scope: !2850, inlinedAt: !2857)
!2874 = !DILocation(line: 192, column: 1, scope: !2850, inlinedAt: !2857)
!2875 = !DILocation(line: 949, column: 10, scope: !2841)
!2876 = !DILocation(line: 950, column: 1, scope: !2841)
!2877 = !DILocation(line: 949, column: 3, scope: !2841)
!2878 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !253, file: !253, line: 953, type: !2879, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2881)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!35, !147, !5, !43, !62}
!2881 = !{!2882, !2883, !2884, !2885, !2886}
!2882 = !DILocalVariable(name: "n", arg: 1, scope: !2878, file: !253, line: 953, type: !147)
!2883 = !DILocalVariable(name: "s", arg: 2, scope: !2878, file: !253, line: 953, type: !5)
!2884 = !DILocalVariable(name: "arg", arg: 3, scope: !2878, file: !253, line: 954, type: !43)
!2885 = !DILocalVariable(name: "argsize", arg: 4, scope: !2878, file: !253, line: 954, type: !62)
!2886 = !DILocalVariable(name: "o", scope: !2878, file: !253, line: 956, type: !1700)
!2887 = !DILocation(line: 187, column: 26, scope: !2850, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 956, column: 36, scope: !2878)
!2889 = !DILocation(line: 953, column: 27, scope: !2878)
!2890 = !DILocation(line: 953, column: 49, scope: !2878)
!2891 = !DILocation(line: 954, column: 35, scope: !2878)
!2892 = !DILocation(line: 954, column: 47, scope: !2878)
!2893 = !DILocation(line: 956, column: 3, scope: !2878)
!2894 = !DILocation(line: 956, column: 32, scope: !2878)
!2895 = !DILocation(line: 185, column: 48, scope: !2850, inlinedAt: !2888)
!2896 = !DILocation(line: 187, column: 3, scope: !2850, inlinedAt: !2888)
!2897 = !DILocation(line: 188, column: 13, scope: !2867, inlinedAt: !2888)
!2898 = !DILocation(line: 188, column: 7, scope: !2850, inlinedAt: !2888)
!2899 = !DILocation(line: 189, column: 5, scope: !2867, inlinedAt: !2888)
!2900 = !{!2901}
!2901 = distinct !{!2901, !2902, !"quoting_options_from_style: argument 0"}
!2902 = distinct !{!2902, !"quoting_options_from_style"}
!2903 = !DILocation(line: 191, column: 10, scope: !2850, inlinedAt: !2888)
!2904 = !DILocation(line: 192, column: 1, scope: !2850, inlinedAt: !2888)
!2905 = !DILocation(line: 957, column: 10, scope: !2878)
!2906 = !DILocation(line: 958, column: 1, scope: !2878)
!2907 = !DILocation(line: 957, column: 3, scope: !2878)
!2908 = distinct !DISubprogram(name: "quotearg_style", scope: !253, file: !253, line: 961, type: !2909, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!35, !5, !43}
!2911 = !{!2912, !2913}
!2912 = !DILocalVariable(name: "s", arg: 1, scope: !2908, file: !253, line: 961, type: !5)
!2913 = !DILocalVariable(name: "arg", arg: 2, scope: !2908, file: !253, line: 961, type: !43)
!2914 = !DILocation(line: 187, column: 26, scope: !2850, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 948, column: 36, scope: !2841, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 963, column: 10, scope: !2908)
!2917 = !DILocation(line: 961, column: 36, scope: !2908)
!2918 = !DILocation(line: 961, column: 51, scope: !2908)
!2919 = !DILocation(line: 946, column: 23, scope: !2841, inlinedAt: !2916)
!2920 = !DILocation(line: 946, column: 45, scope: !2841, inlinedAt: !2916)
!2921 = !DILocation(line: 946, column: 60, scope: !2841, inlinedAt: !2916)
!2922 = !DILocation(line: 948, column: 3, scope: !2841, inlinedAt: !2916)
!2923 = !DILocation(line: 948, column: 32, scope: !2841, inlinedAt: !2916)
!2924 = !DILocation(line: 185, column: 48, scope: !2850, inlinedAt: !2915)
!2925 = !DILocation(line: 187, column: 3, scope: !2850, inlinedAt: !2915)
!2926 = !DILocation(line: 188, column: 13, scope: !2867, inlinedAt: !2915)
!2927 = !DILocation(line: 188, column: 7, scope: !2850, inlinedAt: !2915)
!2928 = !DILocation(line: 189, column: 5, scope: !2867, inlinedAt: !2915)
!2929 = !{!2930}
!2930 = distinct !{!2930, !2931, !"quoting_options_from_style: argument 0"}
!2931 = distinct !{!2931, !"quoting_options_from_style"}
!2932 = !DILocation(line: 191, column: 10, scope: !2850, inlinedAt: !2915)
!2933 = !DILocation(line: 192, column: 1, scope: !2850, inlinedAt: !2915)
!2934 = !DILocation(line: 949, column: 10, scope: !2841, inlinedAt: !2916)
!2935 = !DILocation(line: 950, column: 1, scope: !2841, inlinedAt: !2916)
!2936 = !DILocation(line: 963, column: 3, scope: !2908)
!2937 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !253, file: !253, line: 967, type: !2938, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!35, !5, !43, !62}
!2940 = !{!2941, !2942, !2943}
!2941 = !DILocalVariable(name: "s", arg: 1, scope: !2937, file: !253, line: 967, type: !5)
!2942 = !DILocalVariable(name: "arg", arg: 2, scope: !2937, file: !253, line: 967, type: !43)
!2943 = !DILocalVariable(name: "argsize", arg: 3, scope: !2937, file: !253, line: 967, type: !62)
!2944 = !DILocation(line: 187, column: 26, scope: !2850, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 956, column: 36, scope: !2878, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 969, column: 10, scope: !2937)
!2947 = !DILocation(line: 967, column: 40, scope: !2937)
!2948 = !DILocation(line: 967, column: 55, scope: !2937)
!2949 = !DILocation(line: 967, column: 67, scope: !2937)
!2950 = !DILocation(line: 953, column: 27, scope: !2878, inlinedAt: !2946)
!2951 = !DILocation(line: 953, column: 49, scope: !2878, inlinedAt: !2946)
!2952 = !DILocation(line: 954, column: 35, scope: !2878, inlinedAt: !2946)
!2953 = !DILocation(line: 954, column: 47, scope: !2878, inlinedAt: !2946)
!2954 = !DILocation(line: 956, column: 3, scope: !2878, inlinedAt: !2946)
!2955 = !DILocation(line: 956, column: 32, scope: !2878, inlinedAt: !2946)
!2956 = !DILocation(line: 185, column: 48, scope: !2850, inlinedAt: !2945)
!2957 = !DILocation(line: 187, column: 3, scope: !2850, inlinedAt: !2945)
!2958 = !DILocation(line: 188, column: 13, scope: !2867, inlinedAt: !2945)
!2959 = !DILocation(line: 188, column: 7, scope: !2850, inlinedAt: !2945)
!2960 = !DILocation(line: 189, column: 5, scope: !2867, inlinedAt: !2945)
!2961 = !{!2962}
!2962 = distinct !{!2962, !2963, !"quoting_options_from_style: argument 0"}
!2963 = distinct !{!2963, !"quoting_options_from_style"}
!2964 = !DILocation(line: 191, column: 10, scope: !2850, inlinedAt: !2945)
!2965 = !DILocation(line: 192, column: 1, scope: !2850, inlinedAt: !2945)
!2966 = !DILocation(line: 957, column: 10, scope: !2878, inlinedAt: !2946)
!2967 = !DILocation(line: 958, column: 1, scope: !2878, inlinedAt: !2946)
!2968 = !DILocation(line: 969, column: 3, scope: !2937)
!2969 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !253, file: !253, line: 973, type: !2970, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !2972)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!35, !43, !62, !36}
!2972 = !{!2973, !2974, !2975, !2976}
!2973 = !DILocalVariable(name: "arg", arg: 1, scope: !2969, file: !253, line: 973, type: !43)
!2974 = !DILocalVariable(name: "argsize", arg: 2, scope: !2969, file: !253, line: 973, type: !62)
!2975 = !DILocalVariable(name: "ch", arg: 3, scope: !2969, file: !253, line: 973, type: !36)
!2976 = !DILocalVariable(name: "options", scope: !2969, file: !253, line: 975, type: !260)
!2977 = !DILocation(line: 973, column: 32, scope: !2969)
!2978 = !DILocation(line: 973, column: 44, scope: !2969)
!2979 = !DILocation(line: 973, column: 58, scope: !2969)
!2980 = !DILocation(line: 975, column: 3, scope: !2969)
!2981 = !DILocation(line: 976, column: 13, scope: !2969)
!2982 = !{i64 0, i64 4, !937, i64 4, i64 4, !836, i64 8, i64 32, !937, i64 40, i64 8, !722, i64 48, i64 8, !722}
!2983 = !DILocation(line: 975, column: 26, scope: !2969)
!2984 = !DILocation(line: 144, column: 43, scope: !1721, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 977, column: 3, scope: !2969)
!2986 = !DILocation(line: 144, column: 51, scope: !1721, inlinedAt: !2985)
!2987 = !DILocation(line: 144, column: 58, scope: !1721, inlinedAt: !2985)
!2988 = !DILocation(line: 146, column: 17, scope: !1721, inlinedAt: !2985)
!2989 = !DILocation(line: 148, column: 62, scope: !1721, inlinedAt: !2985)
!2990 = !DILocation(line: 148, column: 57, scope: !1721, inlinedAt: !2985)
!2991 = !DILocation(line: 147, column: 17, scope: !1721, inlinedAt: !2985)
!2992 = !DILocation(line: 149, column: 18, scope: !1721, inlinedAt: !2985)
!2993 = !DILocation(line: 149, column: 15, scope: !1721, inlinedAt: !2985)
!2994 = !DILocation(line: 149, column: 7, scope: !1721, inlinedAt: !2985)
!2995 = !DILocation(line: 150, column: 12, scope: !1721, inlinedAt: !2985)
!2996 = !DILocation(line: 150, column: 15, scope: !1721, inlinedAt: !2985)
!2997 = !DILocation(line: 150, column: 25, scope: !1721, inlinedAt: !2985)
!2998 = !DILocation(line: 150, column: 7, scope: !1721, inlinedAt: !2985)
!2999 = !DILocation(line: 151, column: 18, scope: !1721, inlinedAt: !2985)
!3000 = !DILocation(line: 151, column: 23, scope: !1721, inlinedAt: !2985)
!3001 = !DILocation(line: 151, column: 6, scope: !1721, inlinedAt: !2985)
!3002 = !DILocation(line: 978, column: 10, scope: !2969)
!3003 = !DILocation(line: 979, column: 1, scope: !2969)
!3004 = !DILocation(line: 978, column: 3, scope: !2969)
!3005 = distinct !DISubprogram(name: "quotearg_char", scope: !253, file: !253, line: 982, type: !3006, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!35, !43, !36}
!3008 = !{!3009, !3010}
!3009 = !DILocalVariable(name: "arg", arg: 1, scope: !3005, file: !253, line: 982, type: !43)
!3010 = !DILocalVariable(name: "ch", arg: 2, scope: !3005, file: !253, line: 982, type: !36)
!3011 = !DILocation(line: 982, column: 28, scope: !3005)
!3012 = !DILocation(line: 982, column: 38, scope: !3005)
!3013 = !DILocation(line: 973, column: 32, scope: !2969, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 984, column: 10, scope: !3005)
!3015 = !DILocation(line: 973, column: 44, scope: !2969, inlinedAt: !3014)
!3016 = !DILocation(line: 973, column: 58, scope: !2969, inlinedAt: !3014)
!3017 = !DILocation(line: 975, column: 3, scope: !2969, inlinedAt: !3014)
!3018 = !DILocation(line: 976, column: 13, scope: !2969, inlinedAt: !3014)
!3019 = !DILocation(line: 975, column: 26, scope: !2969, inlinedAt: !3014)
!3020 = !DILocation(line: 144, column: 43, scope: !1721, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 977, column: 3, scope: !2969, inlinedAt: !3014)
!3022 = !DILocation(line: 144, column: 51, scope: !1721, inlinedAt: !3021)
!3023 = !DILocation(line: 144, column: 58, scope: !1721, inlinedAt: !3021)
!3024 = !DILocation(line: 146, column: 17, scope: !1721, inlinedAt: !3021)
!3025 = !DILocation(line: 148, column: 62, scope: !1721, inlinedAt: !3021)
!3026 = !DILocation(line: 148, column: 57, scope: !1721, inlinedAt: !3021)
!3027 = !DILocation(line: 147, column: 17, scope: !1721, inlinedAt: !3021)
!3028 = !DILocation(line: 149, column: 18, scope: !1721, inlinedAt: !3021)
!3029 = !DILocation(line: 149, column: 15, scope: !1721, inlinedAt: !3021)
!3030 = !DILocation(line: 149, column: 7, scope: !1721, inlinedAt: !3021)
!3031 = !DILocation(line: 150, column: 12, scope: !1721, inlinedAt: !3021)
!3032 = !DILocation(line: 150, column: 15, scope: !1721, inlinedAt: !3021)
!3033 = !DILocation(line: 150, column: 25, scope: !1721, inlinedAt: !3021)
!3034 = !DILocation(line: 150, column: 7, scope: !1721, inlinedAt: !3021)
!3035 = !DILocation(line: 151, column: 18, scope: !1721, inlinedAt: !3021)
!3036 = !DILocation(line: 151, column: 23, scope: !1721, inlinedAt: !3021)
!3037 = !DILocation(line: 151, column: 6, scope: !1721, inlinedAt: !3021)
!3038 = !DILocation(line: 978, column: 10, scope: !2969, inlinedAt: !3014)
!3039 = !DILocation(line: 979, column: 1, scope: !2969, inlinedAt: !3014)
!3040 = !DILocation(line: 984, column: 3, scope: !3005)
!3041 = distinct !DISubprogram(name: "quotearg_colon", scope: !253, file: !253, line: 988, type: !2817, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !3042)
!3042 = !{!3043}
!3043 = !DILocalVariable(name: "arg", arg: 1, scope: !3041, file: !253, line: 988, type: !43)
!3044 = !DILocation(line: 988, column: 29, scope: !3041)
!3045 = !DILocation(line: 982, column: 28, scope: !3005, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 990, column: 10, scope: !3041)
!3047 = !DILocation(line: 982, column: 38, scope: !3005, inlinedAt: !3046)
!3048 = !DILocation(line: 973, column: 32, scope: !2969, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 984, column: 10, scope: !3005, inlinedAt: !3046)
!3050 = !DILocation(line: 973, column: 44, scope: !2969, inlinedAt: !3049)
!3051 = !DILocation(line: 973, column: 58, scope: !2969, inlinedAt: !3049)
!3052 = !DILocation(line: 975, column: 3, scope: !2969, inlinedAt: !3049)
!3053 = !DILocation(line: 976, column: 13, scope: !2969, inlinedAt: !3049)
!3054 = !DILocation(line: 975, column: 26, scope: !2969, inlinedAt: !3049)
!3055 = !DILocation(line: 144, column: 43, scope: !1721, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 977, column: 3, scope: !2969, inlinedAt: !3049)
!3057 = !DILocation(line: 144, column: 51, scope: !1721, inlinedAt: !3056)
!3058 = !DILocation(line: 144, column: 58, scope: !1721, inlinedAt: !3056)
!3059 = !DILocation(line: 146, column: 17, scope: !1721, inlinedAt: !3056)
!3060 = !DILocation(line: 148, column: 57, scope: !1721, inlinedAt: !3056)
!3061 = !DILocation(line: 147, column: 17, scope: !1721, inlinedAt: !3056)
!3062 = !DILocation(line: 149, column: 7, scope: !1721, inlinedAt: !3056)
!3063 = !DILocation(line: 150, column: 12, scope: !1721, inlinedAt: !3056)
!3064 = !DILocation(line: 151, column: 6, scope: !1721, inlinedAt: !3056)
!3065 = !DILocation(line: 978, column: 10, scope: !2969, inlinedAt: !3049)
!3066 = !DILocation(line: 979, column: 1, scope: !2969, inlinedAt: !3049)
!3067 = !DILocation(line: 990, column: 3, scope: !3041)
!3068 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !253, file: !253, line: 994, type: !2828, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !3069)
!3069 = !{!3070, !3071}
!3070 = !DILocalVariable(name: "arg", arg: 1, scope: !3068, file: !253, line: 994, type: !43)
!3071 = !DILocalVariable(name: "argsize", arg: 2, scope: !3068, file: !253, line: 994, type: !62)
!3072 = !DILocation(line: 994, column: 33, scope: !3068)
!3073 = !DILocation(line: 994, column: 45, scope: !3068)
!3074 = !DILocation(line: 973, column: 32, scope: !2969, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 996, column: 10, scope: !3068)
!3076 = !DILocation(line: 973, column: 44, scope: !2969, inlinedAt: !3075)
!3077 = !DILocation(line: 973, column: 58, scope: !2969, inlinedAt: !3075)
!3078 = !DILocation(line: 975, column: 3, scope: !2969, inlinedAt: !3075)
!3079 = !DILocation(line: 976, column: 13, scope: !2969, inlinedAt: !3075)
!3080 = !DILocation(line: 975, column: 26, scope: !2969, inlinedAt: !3075)
!3081 = !DILocation(line: 144, column: 43, scope: !1721, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 977, column: 3, scope: !2969, inlinedAt: !3075)
!3083 = !DILocation(line: 144, column: 51, scope: !1721, inlinedAt: !3082)
!3084 = !DILocation(line: 144, column: 58, scope: !1721, inlinedAt: !3082)
!3085 = !DILocation(line: 146, column: 17, scope: !1721, inlinedAt: !3082)
!3086 = !DILocation(line: 148, column: 57, scope: !1721, inlinedAt: !3082)
!3087 = !DILocation(line: 147, column: 17, scope: !1721, inlinedAt: !3082)
!3088 = !DILocation(line: 149, column: 7, scope: !1721, inlinedAt: !3082)
!3089 = !DILocation(line: 150, column: 12, scope: !1721, inlinedAt: !3082)
!3090 = !DILocation(line: 151, column: 6, scope: !1721, inlinedAt: !3082)
!3091 = !DILocation(line: 978, column: 10, scope: !2969, inlinedAt: !3075)
!3092 = !DILocation(line: 979, column: 1, scope: !2969, inlinedAt: !3075)
!3093 = !DILocation(line: 996, column: 3, scope: !3068)
!3094 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !253, file: !253, line: 1000, type: !2842, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !3095)
!3095 = !{!3096, !3097, !3098, !3099}
!3096 = !DILocalVariable(name: "n", arg: 1, scope: !3094, file: !253, line: 1000, type: !147)
!3097 = !DILocalVariable(name: "s", arg: 2, scope: !3094, file: !253, line: 1000, type: !5)
!3098 = !DILocalVariable(name: "arg", arg: 3, scope: !3094, file: !253, line: 1000, type: !43)
!3099 = !DILocalVariable(name: "options", scope: !3094, file: !253, line: 1002, type: !260)
!3100 = !DILocation(line: 187, column: 26, scope: !2850, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 1003, column: 13, scope: !3094)
!3102 = !DILocation(line: 1000, column: 29, scope: !3094)
!3103 = !DILocation(line: 1000, column: 51, scope: !3094)
!3104 = !DILocation(line: 1000, column: 66, scope: !3094)
!3105 = !DILocation(line: 1002, column: 3, scope: !3094)
!3106 = !DILocation(line: 185, column: 48, scope: !2850, inlinedAt: !3101)
!3107 = !DILocation(line: 187, column: 3, scope: !2850, inlinedAt: !3101)
!3108 = !DILocation(line: 188, column: 13, scope: !2867, inlinedAt: !3101)
!3109 = !DILocation(line: 188, column: 7, scope: !2850, inlinedAt: !3101)
!3110 = !DILocation(line: 189, column: 5, scope: !2867, inlinedAt: !3101)
!3111 = !{!3112}
!3112 = distinct !{!3112, !3113, !"quoting_options_from_style: argument 0"}
!3113 = distinct !{!3113, !"quoting_options_from_style"}
!3114 = !DILocation(line: 191, column: 10, scope: !2850, inlinedAt: !3101)
!3115 = !DILocation(line: 192, column: 1, scope: !2850, inlinedAt: !3101)
!3116 = !DILocation(line: 1003, column: 13, scope: !3094)
!3117 = !DILocation(line: 1002, column: 26, scope: !3094)
!3118 = !DILocation(line: 144, column: 43, scope: !1721, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 1004, column: 3, scope: !3094)
!3120 = !DILocation(line: 144, column: 51, scope: !1721, inlinedAt: !3119)
!3121 = !DILocation(line: 144, column: 58, scope: !1721, inlinedAt: !3119)
!3122 = !DILocation(line: 146, column: 17, scope: !1721, inlinedAt: !3119)
!3123 = !DILocation(line: 148, column: 57, scope: !1721, inlinedAt: !3119)
!3124 = !DILocation(line: 147, column: 17, scope: !1721, inlinedAt: !3119)
!3125 = !DILocation(line: 149, column: 7, scope: !1721, inlinedAt: !3119)
!3126 = !DILocation(line: 150, column: 12, scope: !1721, inlinedAt: !3119)
!3127 = !DILocation(line: 151, column: 6, scope: !1721, inlinedAt: !3119)
!3128 = !DILocation(line: 1005, column: 10, scope: !3094)
!3129 = !DILocation(line: 1006, column: 1, scope: !3094)
!3130 = !DILocation(line: 1005, column: 3, scope: !3094)
!3131 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !253, file: !253, line: 1009, type: !3132, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !3134)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!35, !147, !43, !43, !43}
!3134 = !{!3135, !3136, !3137, !3138}
!3135 = !DILocalVariable(name: "n", arg: 1, scope: !3131, file: !253, line: 1009, type: !147)
!3136 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3131, file: !253, line: 1009, type: !43)
!3137 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3131, file: !253, line: 1010, type: !43)
!3138 = !DILocalVariable(name: "arg", arg: 4, scope: !3131, file: !253, line: 1010, type: !43)
!3139 = !DILocation(line: 1009, column: 24, scope: !3131)
!3140 = !DILocation(line: 1009, column: 39, scope: !3131)
!3141 = !DILocation(line: 1010, column: 32, scope: !3131)
!3142 = !DILocation(line: 1010, column: 57, scope: !3131)
!3143 = !DILocalVariable(name: "n", arg: 1, scope: !3144, file: !253, line: 1017, type: !147)
!3144 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !253, file: !253, line: 1017, type: !3145, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !3147)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!35, !147, !43, !43, !43, !62}
!3147 = !{!3143, !3148, !3149, !3150, !3151, !3152}
!3148 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3144, file: !253, line: 1017, type: !43)
!3149 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3144, file: !253, line: 1018, type: !43)
!3150 = !DILocalVariable(name: "arg", arg: 4, scope: !3144, file: !253, line: 1019, type: !43)
!3151 = !DILocalVariable(name: "argsize", arg: 5, scope: !3144, file: !253, line: 1019, type: !62)
!3152 = !DILocalVariable(name: "o", scope: !3144, file: !253, line: 1021, type: !260)
!3153 = !DILocation(line: 1017, column: 28, scope: !3144, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 1012, column: 10, scope: !3131)
!3155 = !DILocation(line: 1017, column: 43, scope: !3144, inlinedAt: !3154)
!3156 = !DILocation(line: 1018, column: 36, scope: !3144, inlinedAt: !3154)
!3157 = !DILocation(line: 1019, column: 36, scope: !3144, inlinedAt: !3154)
!3158 = !DILocation(line: 1019, column: 48, scope: !3144, inlinedAt: !3154)
!3159 = !DILocation(line: 1021, column: 3, scope: !3144, inlinedAt: !3154)
!3160 = !DILocation(line: 1021, column: 30, scope: !3144, inlinedAt: !3154)
!3161 = !DILocation(line: 1021, column: 26, scope: !3144, inlinedAt: !3154)
!3162 = !DILocation(line: 171, column: 45, scope: !1770, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 1022, column: 3, scope: !3144, inlinedAt: !3154)
!3164 = !DILocation(line: 172, column: 33, scope: !1770, inlinedAt: !3163)
!3165 = !DILocation(line: 172, column: 57, scope: !1770, inlinedAt: !3163)
!3166 = !DILocation(line: 176, column: 6, scope: !1770, inlinedAt: !3163)
!3167 = !DILocation(line: 176, column: 12, scope: !1770, inlinedAt: !3163)
!3168 = !DILocation(line: 177, column: 8, scope: !1786, inlinedAt: !3163)
!3169 = !DILocation(line: 177, column: 23, scope: !1786, inlinedAt: !3163)
!3170 = !DILocation(line: 177, column: 19, scope: !1786, inlinedAt: !3163)
!3171 = !DILocation(line: 178, column: 5, scope: !1786, inlinedAt: !3163)
!3172 = !DILocation(line: 179, column: 6, scope: !1770, inlinedAt: !3163)
!3173 = !DILocation(line: 179, column: 17, scope: !1770, inlinedAt: !3163)
!3174 = !DILocation(line: 180, column: 6, scope: !1770, inlinedAt: !3163)
!3175 = !DILocation(line: 180, column: 18, scope: !1770, inlinedAt: !3163)
!3176 = !DILocation(line: 1023, column: 10, scope: !3144, inlinedAt: !3154)
!3177 = !DILocation(line: 1024, column: 1, scope: !3144, inlinedAt: !3154)
!3178 = !DILocation(line: 1012, column: 3, scope: !3131)
!3179 = !DILocation(line: 1017, column: 28, scope: !3144)
!3180 = !DILocation(line: 1017, column: 43, scope: !3144)
!3181 = !DILocation(line: 1018, column: 36, scope: !3144)
!3182 = !DILocation(line: 1019, column: 36, scope: !3144)
!3183 = !DILocation(line: 1019, column: 48, scope: !3144)
!3184 = !DILocation(line: 1021, column: 3, scope: !3144)
!3185 = !DILocation(line: 1021, column: 30, scope: !3144)
!3186 = !DILocation(line: 1021, column: 26, scope: !3144)
!3187 = !DILocation(line: 171, column: 45, scope: !1770, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 1022, column: 3, scope: !3144)
!3189 = !DILocation(line: 172, column: 33, scope: !1770, inlinedAt: !3188)
!3190 = !DILocation(line: 172, column: 57, scope: !1770, inlinedAt: !3188)
!3191 = !DILocation(line: 176, column: 6, scope: !1770, inlinedAt: !3188)
!3192 = !DILocation(line: 176, column: 12, scope: !1770, inlinedAt: !3188)
!3193 = !DILocation(line: 177, column: 8, scope: !1786, inlinedAt: !3188)
!3194 = !DILocation(line: 177, column: 23, scope: !1786, inlinedAt: !3188)
!3195 = !DILocation(line: 177, column: 19, scope: !1786, inlinedAt: !3188)
!3196 = !DILocation(line: 178, column: 5, scope: !1786, inlinedAt: !3188)
!3197 = !DILocation(line: 179, column: 6, scope: !1770, inlinedAt: !3188)
!3198 = !DILocation(line: 179, column: 17, scope: !1770, inlinedAt: !3188)
!3199 = !DILocation(line: 180, column: 6, scope: !1770, inlinedAt: !3188)
!3200 = !DILocation(line: 180, column: 18, scope: !1770, inlinedAt: !3188)
!3201 = !DILocation(line: 1023, column: 10, scope: !3144)
!3202 = !DILocation(line: 1024, column: 1, scope: !3144)
!3203 = !DILocation(line: 1023, column: 3, scope: !3144)
!3204 = distinct !DISubprogram(name: "quotearg_custom", scope: !253, file: !253, line: 1027, type: !3205, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !3207)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!35, !43, !43, !43}
!3207 = !{!3208, !3209, !3210}
!3208 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3204, file: !253, line: 1027, type: !43)
!3209 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3204, file: !253, line: 1027, type: !43)
!3210 = !DILocalVariable(name: "arg", arg: 3, scope: !3204, file: !253, line: 1028, type: !43)
!3211 = !DILocation(line: 1027, column: 30, scope: !3204)
!3212 = !DILocation(line: 1027, column: 54, scope: !3204)
!3213 = !DILocation(line: 1028, column: 30, scope: !3204)
!3214 = !DILocation(line: 1009, column: 24, scope: !3131, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 1030, column: 10, scope: !3204)
!3216 = !DILocation(line: 1009, column: 39, scope: !3131, inlinedAt: !3215)
!3217 = !DILocation(line: 1010, column: 32, scope: !3131, inlinedAt: !3215)
!3218 = !DILocation(line: 1010, column: 57, scope: !3131, inlinedAt: !3215)
!3219 = !DILocation(line: 1017, column: 28, scope: !3144, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 1012, column: 10, scope: !3131, inlinedAt: !3215)
!3221 = !DILocation(line: 1017, column: 43, scope: !3144, inlinedAt: !3220)
!3222 = !DILocation(line: 1018, column: 36, scope: !3144, inlinedAt: !3220)
!3223 = !DILocation(line: 1019, column: 36, scope: !3144, inlinedAt: !3220)
!3224 = !DILocation(line: 1019, column: 48, scope: !3144, inlinedAt: !3220)
!3225 = !DILocation(line: 1021, column: 3, scope: !3144, inlinedAt: !3220)
!3226 = !DILocation(line: 1021, column: 30, scope: !3144, inlinedAt: !3220)
!3227 = !DILocation(line: 1021, column: 26, scope: !3144, inlinedAt: !3220)
!3228 = !DILocation(line: 171, column: 45, scope: !1770, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 1022, column: 3, scope: !3144, inlinedAt: !3220)
!3230 = !DILocation(line: 172, column: 33, scope: !1770, inlinedAt: !3229)
!3231 = !DILocation(line: 172, column: 57, scope: !1770, inlinedAt: !3229)
!3232 = !DILocation(line: 176, column: 6, scope: !1770, inlinedAt: !3229)
!3233 = !DILocation(line: 176, column: 12, scope: !1770, inlinedAt: !3229)
!3234 = !DILocation(line: 177, column: 8, scope: !1786, inlinedAt: !3229)
!3235 = !DILocation(line: 177, column: 23, scope: !1786, inlinedAt: !3229)
!3236 = !DILocation(line: 177, column: 19, scope: !1786, inlinedAt: !3229)
!3237 = !DILocation(line: 178, column: 5, scope: !1786, inlinedAt: !3229)
!3238 = !DILocation(line: 179, column: 6, scope: !1770, inlinedAt: !3229)
!3239 = !DILocation(line: 179, column: 17, scope: !1770, inlinedAt: !3229)
!3240 = !DILocation(line: 180, column: 6, scope: !1770, inlinedAt: !3229)
!3241 = !DILocation(line: 180, column: 18, scope: !1770, inlinedAt: !3229)
!3242 = !DILocation(line: 1023, column: 10, scope: !3144, inlinedAt: !3220)
!3243 = !DILocation(line: 1024, column: 1, scope: !3144, inlinedAt: !3220)
!3244 = !DILocation(line: 1030, column: 3, scope: !3204)
!3245 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !253, file: !253, line: 1034, type: !3246, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!35, !43, !43, !43, !62}
!3248 = !{!3249, !3250, !3251, !3252}
!3249 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3245, file: !253, line: 1034, type: !43)
!3250 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3245, file: !253, line: 1034, type: !43)
!3251 = !DILocalVariable(name: "arg", arg: 3, scope: !3245, file: !253, line: 1035, type: !43)
!3252 = !DILocalVariable(name: "argsize", arg: 4, scope: !3245, file: !253, line: 1035, type: !62)
!3253 = !DILocation(line: 1034, column: 34, scope: !3245)
!3254 = !DILocation(line: 1034, column: 58, scope: !3245)
!3255 = !DILocation(line: 1035, column: 34, scope: !3245)
!3256 = !DILocation(line: 1035, column: 46, scope: !3245)
!3257 = !DILocation(line: 1017, column: 28, scope: !3144, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 1037, column: 10, scope: !3245)
!3259 = !DILocation(line: 1017, column: 43, scope: !3144, inlinedAt: !3258)
!3260 = !DILocation(line: 1018, column: 36, scope: !3144, inlinedAt: !3258)
!3261 = !DILocation(line: 1019, column: 36, scope: !3144, inlinedAt: !3258)
!3262 = !DILocation(line: 1019, column: 48, scope: !3144, inlinedAt: !3258)
!3263 = !DILocation(line: 1021, column: 3, scope: !3144, inlinedAt: !3258)
!3264 = !DILocation(line: 1021, column: 30, scope: !3144, inlinedAt: !3258)
!3265 = !DILocation(line: 1021, column: 26, scope: !3144, inlinedAt: !3258)
!3266 = !DILocation(line: 171, column: 45, scope: !1770, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 1022, column: 3, scope: !3144, inlinedAt: !3258)
!3268 = !DILocation(line: 172, column: 33, scope: !1770, inlinedAt: !3267)
!3269 = !DILocation(line: 172, column: 57, scope: !1770, inlinedAt: !3267)
!3270 = !DILocation(line: 176, column: 6, scope: !1770, inlinedAt: !3267)
!3271 = !DILocation(line: 176, column: 12, scope: !1770, inlinedAt: !3267)
!3272 = !DILocation(line: 177, column: 8, scope: !1786, inlinedAt: !3267)
!3273 = !DILocation(line: 177, column: 23, scope: !1786, inlinedAt: !3267)
!3274 = !DILocation(line: 177, column: 19, scope: !1786, inlinedAt: !3267)
!3275 = !DILocation(line: 178, column: 5, scope: !1786, inlinedAt: !3267)
!3276 = !DILocation(line: 179, column: 6, scope: !1770, inlinedAt: !3267)
!3277 = !DILocation(line: 179, column: 17, scope: !1770, inlinedAt: !3267)
!3278 = !DILocation(line: 180, column: 6, scope: !1770, inlinedAt: !3267)
!3279 = !DILocation(line: 180, column: 18, scope: !1770, inlinedAt: !3267)
!3280 = !DILocation(line: 1023, column: 10, scope: !3144, inlinedAt: !3258)
!3281 = !DILocation(line: 1024, column: 1, scope: !3144, inlinedAt: !3258)
!3282 = !DILocation(line: 1037, column: 3, scope: !3245)
!3283 = distinct !DISubprogram(name: "quote_n_mem", scope: !253, file: !253, line: 1052, type: !3284, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!43, !147, !43, !62}
!3286 = !{!3287, !3288, !3289}
!3287 = !DILocalVariable(name: "n", arg: 1, scope: !3283, file: !253, line: 1052, type: !147)
!3288 = !DILocalVariable(name: "arg", arg: 2, scope: !3283, file: !253, line: 1052, type: !43)
!3289 = !DILocalVariable(name: "argsize", arg: 3, scope: !3283, file: !253, line: 1052, type: !62)
!3290 = !DILocation(line: 1052, column: 18, scope: !3283)
!3291 = !DILocation(line: 1052, column: 33, scope: !3283)
!3292 = !DILocation(line: 1052, column: 45, scope: !3283)
!3293 = !DILocation(line: 1054, column: 10, scope: !3283)
!3294 = !DILocation(line: 1054, column: 3, scope: !3283)
!3295 = distinct !DISubprogram(name: "quote_mem", scope: !253, file: !253, line: 1058, type: !3296, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !3298)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!43, !43, !62}
!3298 = !{!3299, !3300}
!3299 = !DILocalVariable(name: "arg", arg: 1, scope: !3295, file: !253, line: 1058, type: !43)
!3300 = !DILocalVariable(name: "argsize", arg: 2, scope: !3295, file: !253, line: 1058, type: !62)
!3301 = !DILocation(line: 1058, column: 24, scope: !3295)
!3302 = !DILocation(line: 1058, column: 36, scope: !3295)
!3303 = !DILocation(line: 1052, column: 18, scope: !3283, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 1060, column: 10, scope: !3295)
!3305 = !DILocation(line: 1052, column: 33, scope: !3283, inlinedAt: !3304)
!3306 = !DILocation(line: 1052, column: 45, scope: !3283, inlinedAt: !3304)
!3307 = !DILocation(line: 1054, column: 10, scope: !3283, inlinedAt: !3304)
!3308 = !DILocation(line: 1060, column: 3, scope: !3295)
!3309 = distinct !DISubprogram(name: "quote_n", scope: !253, file: !253, line: 1064, type: !3310, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !3312)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!43, !147, !43}
!3312 = !{!3313, !3314}
!3313 = !DILocalVariable(name: "n", arg: 1, scope: !3309, file: !253, line: 1064, type: !147)
!3314 = !DILocalVariable(name: "arg", arg: 2, scope: !3309, file: !253, line: 1064, type: !43)
!3315 = !DILocation(line: 1064, column: 14, scope: !3309)
!3316 = !DILocation(line: 1064, column: 29, scope: !3309)
!3317 = !DILocation(line: 1052, column: 18, scope: !3283, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 1066, column: 10, scope: !3309)
!3319 = !DILocation(line: 1052, column: 33, scope: !3283, inlinedAt: !3318)
!3320 = !DILocation(line: 1052, column: 45, scope: !3283, inlinedAt: !3318)
!3321 = !DILocation(line: 1054, column: 10, scope: !3283, inlinedAt: !3318)
!3322 = !DILocation(line: 1066, column: 3, scope: !3309)
!3323 = distinct !DISubprogram(name: "quote", scope: !253, file: !253, line: 1070, type: !3324, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !3326)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!43, !43}
!3326 = !{!3327}
!3327 = !DILocalVariable(name: "arg", arg: 1, scope: !3323, file: !253, line: 1070, type: !43)
!3328 = !DILocation(line: 1070, column: 20, scope: !3323)
!3329 = !DILocation(line: 1064, column: 14, scope: !3309, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 1072, column: 10, scope: !3323)
!3331 = !DILocation(line: 1064, column: 29, scope: !3309, inlinedAt: !3330)
!3332 = !DILocation(line: 1052, column: 18, scope: !3283, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 1066, column: 10, scope: !3309, inlinedAt: !3330)
!3334 = !DILocation(line: 1052, column: 33, scope: !3283, inlinedAt: !3333)
!3335 = !DILocation(line: 1052, column: 45, scope: !3283, inlinedAt: !3333)
!3336 = !DILocation(line: 1054, column: 10, scope: !3283, inlinedAt: !3333)
!3337 = !DILocation(line: 1072, column: 3, scope: !3323)
!3338 = distinct !DISubprogram(name: "version_etc_arn", scope: !653, file: !653, line: 62, type: !3339, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !3382)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{null, !3341, !43, !43, !43, !3381, !62}
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1017, line: 7, baseType: !3343)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1019, line: 241, size: 1728, elements: !3344)
!3344 = !{!3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3343, file: !1019, line: 242, baseType: !147, size: 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3343, file: !1019, line: 247, baseType: !35, size: 64, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3343, file: !1019, line: 248, baseType: !35, size: 64, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3343, file: !1019, line: 249, baseType: !35, size: 64, offset: 192)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3343, file: !1019, line: 250, baseType: !35, size: 64, offset: 256)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3343, file: !1019, line: 251, baseType: !35, size: 64, offset: 320)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3343, file: !1019, line: 252, baseType: !35, size: 64, offset: 384)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3343, file: !1019, line: 253, baseType: !35, size: 64, offset: 448)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3343, file: !1019, line: 254, baseType: !35, size: 64, offset: 512)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3343, file: !1019, line: 256, baseType: !35, size: 64, offset: 576)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3343, file: !1019, line: 257, baseType: !35, size: 64, offset: 640)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3343, file: !1019, line: 258, baseType: !35, size: 64, offset: 704)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3343, file: !1019, line: 260, baseType: !3358, size: 64, offset: 768)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1019, line: 156, size: 192, elements: !3360)
!3360 = !{!3361, !3362, !3364}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3359, file: !1019, line: 157, baseType: !3358, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3359, file: !1019, line: 158, baseType: !3363, size: 64, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3359, file: !1019, line: 162, baseType: !147, size: 32, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3343, file: !1019, line: 262, baseType: !3363, size: 64, offset: 832)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3343, file: !1019, line: 264, baseType: !147, size: 32, offset: 896)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3343, file: !1019, line: 268, baseType: !147, size: 32, offset: 928)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3343, file: !1019, line: 270, baseType: !1045, size: 64, offset: 960)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3343, file: !1019, line: 274, baseType: !249, size: 16, offset: 1024)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3343, file: !1019, line: 275, baseType: !1048, size: 8, offset: 1040)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3343, file: !1019, line: 276, baseType: !1050, size: 8, offset: 1048)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3343, file: !1019, line: 280, baseType: !1054, size: 64, offset: 1088)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3343, file: !1019, line: 289, baseType: !1057, size: 64, offset: 1152)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3343, file: !1019, line: 297, baseType: !37, size: 64, offset: 1216)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3343, file: !1019, line: 298, baseType: !37, size: 64, offset: 1280)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3343, file: !1019, line: 299, baseType: !37, size: 64, offset: 1344)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3343, file: !1019, line: 300, baseType: !37, size: 64, offset: 1408)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3343, file: !1019, line: 302, baseType: !62, size: 64, offset: 1472)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3343, file: !1019, line: 303, baseType: !147, size: 32, offset: 1536)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3343, file: !1019, line: 305, baseType: !1065, size: 160, offset: 1568)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!3382 = !{!3383, !3384, !3385, !3386, !3387, !3388}
!3383 = !DILocalVariable(name: "stream", arg: 1, scope: !3338, file: !653, line: 62, type: !3341)
!3384 = !DILocalVariable(name: "command_name", arg: 2, scope: !3338, file: !653, line: 63, type: !43)
!3385 = !DILocalVariable(name: "package", arg: 3, scope: !3338, file: !653, line: 63, type: !43)
!3386 = !DILocalVariable(name: "version", arg: 4, scope: !3338, file: !653, line: 64, type: !43)
!3387 = !DILocalVariable(name: "authors", arg: 5, scope: !3338, file: !653, line: 65, type: !3381)
!3388 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3338, file: !653, line: 65, type: !62)
!3389 = !DILocation(line: 62, column: 24, scope: !3338)
!3390 = !DILocation(line: 63, column: 30, scope: !3338)
!3391 = !DILocation(line: 63, column: 56, scope: !3338)
!3392 = !DILocation(line: 64, column: 30, scope: !3338)
!3393 = !DILocation(line: 65, column: 39, scope: !3338)
!3394 = !DILocation(line: 65, column: 55, scope: !3338)
!3395 = !DILocation(line: 67, column: 7, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3338, file: !653, line: 67, column: 7)
!3397 = !DILocation(line: 67, column: 7, scope: !3338)
!3398 = !DILocation(line: 68, column: 5, scope: !3396)
!3399 = !DILocation(line: 70, column: 5, scope: !3396)
!3400 = !DILocation(line: 84, column: 3, scope: !3338)
!3401 = !DILocation(line: 86, column: 3, scope: !3338)
!3402 = !DILocation(line: 95, column: 3, scope: !3338)
!3403 = !DILocation(line: 99, column: 7, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3338, file: !653, line: 96, column: 5)
!3405 = !DILocation(line: 102, column: 7, scope: !3404)
!3406 = !DILocation(line: 103, column: 7, scope: !3404)
!3407 = !DILocation(line: 106, column: 7, scope: !3404)
!3408 = !DILocation(line: 107, column: 7, scope: !3404)
!3409 = !DILocation(line: 110, column: 7, scope: !3404)
!3410 = !DILocation(line: 112, column: 7, scope: !3404)
!3411 = !DILocation(line: 117, column: 7, scope: !3404)
!3412 = !DILocation(line: 119, column: 7, scope: !3404)
!3413 = !DILocation(line: 124, column: 7, scope: !3404)
!3414 = !DILocation(line: 126, column: 7, scope: !3404)
!3415 = !DILocation(line: 131, column: 7, scope: !3404)
!3416 = !DILocation(line: 134, column: 7, scope: !3404)
!3417 = !DILocation(line: 139, column: 7, scope: !3404)
!3418 = !DILocation(line: 142, column: 7, scope: !3404)
!3419 = !DILocation(line: 147, column: 7, scope: !3404)
!3420 = !DILocation(line: 151, column: 7, scope: !3404)
!3421 = !DILocation(line: 156, column: 7, scope: !3404)
!3422 = !DILocation(line: 160, column: 7, scope: !3404)
!3423 = !DILocation(line: 167, column: 7, scope: !3404)
!3424 = !DILocation(line: 171, column: 7, scope: !3404)
!3425 = !DILocation(line: 173, column: 1, scope: !3338)
!3426 = distinct !DISubprogram(name: "version_etc_ar", scope: !653, file: !653, line: 180, type: !3427, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{null, !3341, !43, !43, !43, !3381}
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3435}
!3430 = !DILocalVariable(name: "stream", arg: 1, scope: !3426, file: !653, line: 180, type: !3341)
!3431 = !DILocalVariable(name: "command_name", arg: 2, scope: !3426, file: !653, line: 181, type: !43)
!3432 = !DILocalVariable(name: "package", arg: 3, scope: !3426, file: !653, line: 181, type: !43)
!3433 = !DILocalVariable(name: "version", arg: 4, scope: !3426, file: !653, line: 182, type: !43)
!3434 = !DILocalVariable(name: "authors", arg: 5, scope: !3426, file: !653, line: 182, type: !3381)
!3435 = !DILocalVariable(name: "n_authors", scope: !3426, file: !653, line: 184, type: !62)
!3436 = !DILocation(line: 180, column: 23, scope: !3426)
!3437 = !DILocation(line: 181, column: 29, scope: !3426)
!3438 = !DILocation(line: 181, column: 55, scope: !3426)
!3439 = !DILocation(line: 182, column: 29, scope: !3426)
!3440 = !DILocation(line: 182, column: 59, scope: !3426)
!3441 = !DILocation(line: 184, column: 10, scope: !3426)
!3442 = !DILocation(line: 186, column: 8, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3426, file: !653, line: 186, column: 3)
!3444 = !DILocation(line: 186, column: 23, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3443, file: !653, line: 186, column: 3)
!3446 = !DILocation(line: 186, column: 3, scope: !3443)
!3447 = !DILocation(line: 186, column: 52, scope: !3445)
!3448 = distinct !{!3448, !3446, !3449}
!3449 = !DILocation(line: 187, column: 5, scope: !3443)
!3450 = !DILocation(line: 188, column: 3, scope: !3426)
!3451 = !DILocation(line: 189, column: 1, scope: !3426)
!3452 = distinct !DISubprogram(name: "version_etc_va", scope: !653, file: !653, line: 196, type: !3453, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !3462)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{null, !3341, !43, !43, !43, !3455}
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !650, line: 189, size: 192, elements: !3457)
!3457 = !{!3458, !3459, !3460, !3461}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3456, file: !650, line: 189, baseType: !65, size: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3456, file: !650, line: 189, baseType: !65, size: 32, offset: 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3456, file: !650, line: 189, baseType: !37, size: 64, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3456, file: !650, line: 189, baseType: !37, size: 64, offset: 128)
!3462 = !{!3463, !3464, !3465, !3466, !3467, !3468, !3469}
!3463 = !DILocalVariable(name: "stream", arg: 1, scope: !3452, file: !653, line: 196, type: !3341)
!3464 = !DILocalVariable(name: "command_name", arg: 2, scope: !3452, file: !653, line: 197, type: !43)
!3465 = !DILocalVariable(name: "package", arg: 3, scope: !3452, file: !653, line: 197, type: !43)
!3466 = !DILocalVariable(name: "version", arg: 4, scope: !3452, file: !653, line: 198, type: !43)
!3467 = !DILocalVariable(name: "authors", arg: 5, scope: !3452, file: !653, line: 198, type: !3455)
!3468 = !DILocalVariable(name: "n_authors", scope: !3452, file: !653, line: 200, type: !62)
!3469 = !DILocalVariable(name: "authtab", scope: !3452, file: !653, line: 201, type: !3470)
!3470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 640, elements: !256)
!3471 = !DILocation(line: 196, column: 23, scope: !3452)
!3472 = !DILocation(line: 197, column: 29, scope: !3452)
!3473 = !DILocation(line: 197, column: 55, scope: !3452)
!3474 = !DILocation(line: 198, column: 29, scope: !3452)
!3475 = !DILocation(line: 198, column: 46, scope: !3452)
!3476 = !DILocation(line: 201, column: 3, scope: !3452)
!3477 = !DILocation(line: 201, column: 15, scope: !3452)
!3478 = !DILocation(line: 200, column: 10, scope: !3452)
!3479 = !DILocation(line: 205, column: 35, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !653, line: 203, column: 3)
!3481 = distinct !DILexicalBlock(scope: !3452, file: !653, line: 203, column: 3)
!3482 = !DILocation(line: 205, column: 14, scope: !3480)
!3483 = !DILocation(line: 205, column: 33, scope: !3480)
!3484 = !DILocation(line: 205, column: 67, scope: !3480)
!3485 = !DILocation(line: 203, column: 3, scope: !3481)
!3486 = !DILocation(line: 208, column: 3, scope: !3452)
!3487 = !DILocation(line: 210, column: 1, scope: !3452)
!3488 = distinct !DISubprogram(name: "version_etc", scope: !653, file: !653, line: 227, type: !3489, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !3491)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{null, !3341, !43, !43, !43, null}
!3491 = !{!3492, !3493, !3494, !3495, !3496}
!3492 = !DILocalVariable(name: "stream", arg: 1, scope: !3488, file: !653, line: 227, type: !3341)
!3493 = !DILocalVariable(name: "command_name", arg: 2, scope: !3488, file: !653, line: 228, type: !43)
!3494 = !DILocalVariable(name: "package", arg: 3, scope: !3488, file: !653, line: 228, type: !43)
!3495 = !DILocalVariable(name: "version", arg: 4, scope: !3488, file: !653, line: 229, type: !43)
!3496 = !DILocalVariable(name: "authors", scope: !3488, file: !653, line: 231, type: !3497)
!3497 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1357, line: 46, baseType: !3498)
!3498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3499, line: 48, baseType: !3500)
!3499 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !650, line: 231, baseType: !3501)
!3501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3456, size: 192, elements: !1051)
!3502 = !DILocation(line: 227, column: 20, scope: !3488)
!3503 = !DILocation(line: 228, column: 26, scope: !3488)
!3504 = !DILocation(line: 228, column: 52, scope: !3488)
!3505 = !DILocation(line: 229, column: 26, scope: !3488)
!3506 = !DILocation(line: 231, column: 3, scope: !3488)
!3507 = !DILocation(line: 231, column: 11, scope: !3488)
!3508 = !DILocation(line: 233, column: 3, scope: !3488)
!3509 = !DILocation(line: 234, column: 3, scope: !3488)
!3510 = !DILocation(line: 235, column: 3, scope: !3488)
!3511 = !DILocation(line: 236, column: 1, scope: !3488)
!3512 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !653, file: !653, line: 239, type: !181, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !183)
!3513 = !DILocation(line: 245, column: 3, scope: !3512)
!3514 = !DILocation(line: 251, column: 3, scope: !3512)
!3515 = !DILocation(line: 256, column: 3, scope: !3512)
!3516 = !DILocation(line: 258, column: 1, scope: !3512)
!3517 = distinct !DISubprogram(name: "xnmalloc", scope: !661, file: !661, line: 105, type: !3518, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !3520)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!37, !62, !62}
!3520 = !{!3521, !3522}
!3521 = !DILocalVariable(name: "n", arg: 1, scope: !3517, file: !661, line: 105, type: !62)
!3522 = !DILocalVariable(name: "s", arg: 2, scope: !3517, file: !661, line: 105, type: !62)
!3523 = !DILocation(line: 105, column: 18, scope: !3517)
!3524 = !DILocation(line: 105, column: 28, scope: !3517)
!3525 = !DILocation(line: 107, column: 7, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3517, file: !661, line: 107, column: 7)
!3527 = !DILocation(line: 107, column: 7, scope: !3517)
!3528 = !DILocation(line: 108, column: 5, scope: !3526)
!3529 = !DILocation(line: 109, column: 21, scope: !3517)
!3530 = !DILocalVariable(name: "n", arg: 1, scope: !3531, file: !3532, line: 39, type: !62)
!3531 = distinct !DISubprogram(name: "xmalloc", scope: !3532, file: !3532, line: 39, type: !3533, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !3535)
!3532 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!37, !62}
!3535 = !{!3530, !3536}
!3536 = !DILocalVariable(name: "p", scope: !3531, file: !3532, line: 41, type: !37)
!3537 = !DILocation(line: 39, column: 17, scope: !3531, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 109, column: 10, scope: !3517)
!3539 = !DILocation(line: 41, column: 13, scope: !3531, inlinedAt: !3538)
!3540 = !DILocation(line: 41, column: 9, scope: !3531, inlinedAt: !3538)
!3541 = !DILocation(line: 42, column: 8, scope: !3542, inlinedAt: !3538)
!3542 = distinct !DILexicalBlock(scope: !3531, file: !3532, line: 42, column: 7)
!3543 = !DILocation(line: 42, column: 15, scope: !3542, inlinedAt: !3538)
!3544 = !DILocation(line: 42, column: 10, scope: !3542, inlinedAt: !3538)
!3545 = !DILocation(line: 43, column: 5, scope: !3542, inlinedAt: !3538)
!3546 = !DILocation(line: 109, column: 3, scope: !3517)
!3547 = !DILocation(line: 39, column: 17, scope: !3531)
!3548 = !DILocation(line: 41, column: 13, scope: !3531)
!3549 = !DILocation(line: 41, column: 9, scope: !3531)
!3550 = !DILocation(line: 42, column: 8, scope: !3542)
!3551 = !DILocation(line: 42, column: 15, scope: !3542)
!3552 = !DILocation(line: 42, column: 10, scope: !3542)
!3553 = !DILocation(line: 43, column: 5, scope: !3542)
!3554 = !DILocation(line: 44, column: 3, scope: !3531)
!3555 = distinct !DISubprogram(name: "xnrealloc", scope: !661, file: !661, line: 118, type: !3556, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !3558)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!37, !37, !62, !62}
!3558 = !{!3559, !3560, !3561}
!3559 = !DILocalVariable(name: "p", arg: 1, scope: !3555, file: !661, line: 118, type: !37)
!3560 = !DILocalVariable(name: "n", arg: 2, scope: !3555, file: !661, line: 118, type: !62)
!3561 = !DILocalVariable(name: "s", arg: 3, scope: !3555, file: !661, line: 118, type: !62)
!3562 = !DILocation(line: 118, column: 18, scope: !3555)
!3563 = !DILocation(line: 118, column: 28, scope: !3555)
!3564 = !DILocation(line: 118, column: 38, scope: !3555)
!3565 = !DILocation(line: 120, column: 7, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3555, file: !661, line: 120, column: 7)
!3567 = !DILocation(line: 120, column: 7, scope: !3555)
!3568 = !DILocation(line: 121, column: 5, scope: !3566)
!3569 = !DILocation(line: 122, column: 25, scope: !3555)
!3570 = !DILocalVariable(name: "p", arg: 1, scope: !3571, file: !3532, line: 51, type: !37)
!3571 = distinct !DISubprogram(name: "xrealloc", scope: !3532, file: !3532, line: 51, type: !3572, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !3574)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!37, !37, !62}
!3574 = !{!3570, !3575}
!3575 = !DILocalVariable(name: "n", arg: 2, scope: !3571, file: !3532, line: 51, type: !62)
!3576 = !DILocation(line: 51, column: 17, scope: !3571, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 122, column: 10, scope: !3555)
!3578 = !DILocation(line: 51, column: 27, scope: !3571, inlinedAt: !3577)
!3579 = !DILocation(line: 53, column: 8, scope: !3580, inlinedAt: !3577)
!3580 = distinct !DILexicalBlock(scope: !3571, file: !3532, line: 53, column: 7)
!3581 = !DILocation(line: 53, column: 13, scope: !3580, inlinedAt: !3577)
!3582 = !DILocation(line: 53, column: 10, scope: !3580, inlinedAt: !3577)
!3583 = !DILocation(line: 57, column: 7, scope: !3584, inlinedAt: !3577)
!3584 = distinct !DILexicalBlock(scope: !3580, file: !3532, line: 54, column: 5)
!3585 = !DILocation(line: 58, column: 7, scope: !3584, inlinedAt: !3577)
!3586 = !DILocation(line: 61, column: 7, scope: !3571, inlinedAt: !3577)
!3587 = !DILocation(line: 62, column: 8, scope: !3588, inlinedAt: !3577)
!3588 = distinct !DILexicalBlock(scope: !3571, file: !3532, line: 62, column: 7)
!3589 = !DILocation(line: 62, column: 13, scope: !3588, inlinedAt: !3577)
!3590 = !DILocation(line: 62, column: 10, scope: !3588, inlinedAt: !3577)
!3591 = !DILocation(line: 63, column: 5, scope: !3588, inlinedAt: !3577)
!3592 = !DILocation(line: 122, column: 3, scope: !3555)
!3593 = !DILocation(line: 51, column: 17, scope: !3571)
!3594 = !DILocation(line: 51, column: 27, scope: !3571)
!3595 = !DILocation(line: 53, column: 8, scope: !3580)
!3596 = !DILocation(line: 53, column: 13, scope: !3580)
!3597 = !DILocation(line: 53, column: 10, scope: !3580)
!3598 = !DILocation(line: 57, column: 7, scope: !3584)
!3599 = !DILocation(line: 58, column: 7, scope: !3584)
!3600 = !DILocation(line: 61, column: 7, scope: !3571)
!3601 = !DILocation(line: 62, column: 8, scope: !3588)
!3602 = !DILocation(line: 62, column: 13, scope: !3588)
!3603 = !DILocation(line: 62, column: 10, scope: !3588)
!3604 = !DILocation(line: 63, column: 5, scope: !3588)
!3605 = !DILocation(line: 65, column: 1, scope: !3571)
!3606 = !DILocation(line: 180, column: 19, scope: !662)
!3607 = !DILocation(line: 180, column: 30, scope: !662)
!3608 = !DILocation(line: 180, column: 41, scope: !662)
!3609 = !DILocation(line: 182, column: 14, scope: !662)
!3610 = !DILocation(line: 182, column: 10, scope: !662)
!3611 = !DILocation(line: 184, column: 9, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !662, file: !661, line: 184, column: 7)
!3613 = !DILocation(line: 184, column: 7, scope: !662)
!3614 = !DILocation(line: 186, column: 13, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !661, line: 186, column: 11)
!3616 = distinct !DILexicalBlock(scope: !3612, file: !661, line: 185, column: 5)
!3617 = !DILocation(line: 186, column: 11, scope: !3616)
!3618 = !DILocation(line: 194, column: 30, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3615, file: !661, line: 187, column: 9)
!3620 = !DILocation(line: 195, column: 16, scope: !3619)
!3621 = !DILocation(line: 195, column: 13, scope: !3619)
!3622 = !DILocation(line: 196, column: 9, scope: !3619)
!3623 = !DILocation(line: 204, column: 69, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !661, line: 204, column: 11)
!3625 = distinct !DILexicalBlock(scope: !3612, file: !661, line: 199, column: 5)
!3626 = !DILocation(line: 205, column: 11, scope: !3624)
!3627 = !DILocation(line: 204, column: 11, scope: !3625)
!3628 = !DILocation(line: 206, column: 9, scope: !3624)
!3629 = !DILocation(line: 210, column: 7, scope: !662)
!3630 = !DILocation(line: 211, column: 25, scope: !662)
!3631 = !DILocation(line: 51, column: 17, scope: !3571, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 211, column: 10, scope: !662)
!3633 = !DILocation(line: 51, column: 27, scope: !3571, inlinedAt: !3632)
!3634 = !DILocation(line: 53, column: 10, scope: !3580, inlinedAt: !3632)
!3635 = !DILocation(line: 207, column: 14, scope: !3625)
!3636 = !DILocation(line: 207, column: 18, scope: !3625)
!3637 = !DILocation(line: 207, column: 9, scope: !3625)
!3638 = !DILocation(line: 53, column: 8, scope: !3580, inlinedAt: !3632)
!3639 = !DILocation(line: 57, column: 7, scope: !3584, inlinedAt: !3632)
!3640 = !DILocation(line: 58, column: 7, scope: !3584, inlinedAt: !3632)
!3641 = !DILocation(line: 61, column: 7, scope: !3571, inlinedAt: !3632)
!3642 = !DILocation(line: 62, column: 8, scope: !3588, inlinedAt: !3632)
!3643 = !DILocation(line: 62, column: 13, scope: !3588, inlinedAt: !3632)
!3644 = !DILocation(line: 62, column: 10, scope: !3588, inlinedAt: !3632)
!3645 = !DILocation(line: 63, column: 5, scope: !3588, inlinedAt: !3632)
!3646 = !DILocation(line: 211, column: 3, scope: !662)
!3647 = distinct !DISubprogram(name: "xcharalloc", scope: !661, file: !661, line: 220, type: !2617, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !3648)
!3648 = !{!3649}
!3649 = !DILocalVariable(name: "n", arg: 1, scope: !3647, file: !661, line: 220, type: !62)
!3650 = !DILocation(line: 220, column: 20, scope: !3647)
!3651 = !DILocation(line: 39, column: 17, scope: !3531, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 222, column: 10, scope: !3647)
!3653 = !DILocation(line: 41, column: 13, scope: !3531, inlinedAt: !3652)
!3654 = !DILocation(line: 41, column: 9, scope: !3531, inlinedAt: !3652)
!3655 = !DILocation(line: 42, column: 8, scope: !3542, inlinedAt: !3652)
!3656 = !DILocation(line: 42, column: 15, scope: !3542, inlinedAt: !3652)
!3657 = !DILocation(line: 42, column: 10, scope: !3542, inlinedAt: !3652)
!3658 = !DILocation(line: 43, column: 5, scope: !3542, inlinedAt: !3652)
!3659 = !DILocation(line: 222, column: 3, scope: !3647)
!3660 = distinct !DISubprogram(name: "x2realloc", scope: !3532, file: !3532, line: 74, type: !3661, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !3663)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!37, !37, !665}
!3663 = !{!3664, !3665}
!3664 = !DILocalVariable(name: "p", arg: 1, scope: !3660, file: !3532, line: 74, type: !37)
!3665 = !DILocalVariable(name: "pn", arg: 2, scope: !3660, file: !3532, line: 74, type: !665)
!3666 = !DILocation(line: 74, column: 18, scope: !3660)
!3667 = !DILocation(line: 74, column: 29, scope: !3660)
!3668 = !DILocation(line: 180, column: 19, scope: !662, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 76, column: 10, scope: !3660)
!3670 = !DILocation(line: 180, column: 30, scope: !662, inlinedAt: !3669)
!3671 = !DILocation(line: 180, column: 41, scope: !662, inlinedAt: !3669)
!3672 = !DILocation(line: 182, column: 14, scope: !662, inlinedAt: !3669)
!3673 = !DILocation(line: 182, column: 10, scope: !662, inlinedAt: !3669)
!3674 = !DILocation(line: 184, column: 9, scope: !3612, inlinedAt: !3669)
!3675 = !DILocation(line: 184, column: 7, scope: !662, inlinedAt: !3669)
!3676 = !DILocation(line: 186, column: 13, scope: !3615, inlinedAt: !3669)
!3677 = !DILocation(line: 186, column: 11, scope: !3616, inlinedAt: !3669)
!3678 = !DILocation(line: 210, column: 7, scope: !662, inlinedAt: !3669)
!3679 = !DILocation(line: 51, column: 17, scope: !3571, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 211, column: 10, scope: !662, inlinedAt: !3669)
!3681 = !DILocation(line: 51, column: 27, scope: !3571, inlinedAt: !3680)
!3682 = !DILocation(line: 53, column: 10, scope: !3580, inlinedAt: !3680)
!3683 = !DILocation(line: 205, column: 11, scope: !3624, inlinedAt: !3669)
!3684 = !DILocation(line: 204, column: 11, scope: !3625, inlinedAt: !3669)
!3685 = !DILocation(line: 206, column: 9, scope: !3624, inlinedAt: !3669)
!3686 = !DILocation(line: 207, column: 14, scope: !3625, inlinedAt: !3669)
!3687 = !DILocation(line: 207, column: 18, scope: !3625, inlinedAt: !3669)
!3688 = !DILocation(line: 207, column: 9, scope: !3625, inlinedAt: !3669)
!3689 = !DILocation(line: 53, column: 8, scope: !3580, inlinedAt: !3680)
!3690 = !DILocation(line: 57, column: 7, scope: !3584, inlinedAt: !3680)
!3691 = !DILocation(line: 58, column: 7, scope: !3584, inlinedAt: !3680)
!3692 = !DILocation(line: 61, column: 7, scope: !3571, inlinedAt: !3680)
!3693 = !DILocation(line: 62, column: 8, scope: !3588, inlinedAt: !3680)
!3694 = !DILocation(line: 62, column: 13, scope: !3588, inlinedAt: !3680)
!3695 = !DILocation(line: 62, column: 10, scope: !3588, inlinedAt: !3680)
!3696 = !DILocation(line: 63, column: 5, scope: !3588, inlinedAt: !3680)
!3697 = !DILocation(line: 76, column: 3, scope: !3660)
!3698 = distinct !DISubprogram(name: "xzalloc", scope: !3532, file: !3532, line: 84, type: !3533, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !3699)
!3699 = !{!3700}
!3700 = !DILocalVariable(name: "s", arg: 1, scope: !3698, file: !3532, line: 84, type: !62)
!3701 = !DILocation(line: 84, column: 17, scope: !3698)
!3702 = !DILocation(line: 39, column: 17, scope: !3531, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 86, column: 18, scope: !3698)
!3704 = !DILocation(line: 41, column: 13, scope: !3531, inlinedAt: !3703)
!3705 = !DILocation(line: 41, column: 9, scope: !3531, inlinedAt: !3703)
!3706 = !DILocation(line: 42, column: 8, scope: !3542, inlinedAt: !3703)
!3707 = !DILocation(line: 42, column: 15, scope: !3542, inlinedAt: !3703)
!3708 = !DILocation(line: 42, column: 10, scope: !3542, inlinedAt: !3703)
!3709 = !DILocation(line: 43, column: 5, scope: !3542, inlinedAt: !3703)
!3710 = !DILocation(line: 86, column: 10, scope: !3698)
!3711 = !DILocation(line: 86, column: 3, scope: !3698)
!3712 = distinct !DISubprogram(name: "xcalloc", scope: !3532, file: !3532, line: 93, type: !3518, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !3713)
!3713 = !{!3714, !3715, !3716}
!3714 = !DILocalVariable(name: "n", arg: 1, scope: !3712, file: !3532, line: 93, type: !62)
!3715 = !DILocalVariable(name: "s", arg: 2, scope: !3712, file: !3532, line: 93, type: !62)
!3716 = !DILocalVariable(name: "p", scope: !3712, file: !3532, line: 95, type: !37)
!3717 = !DILocation(line: 93, column: 17, scope: !3712)
!3718 = !DILocation(line: 93, column: 27, scope: !3712)
!3719 = !DILocation(line: 100, column: 7, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3712, file: !3532, line: 100, column: 7)
!3721 = !DILocation(line: 101, column: 7, scope: !3720)
!3722 = !DILocation(line: 101, column: 18, scope: !3720)
!3723 = !DILocation(line: 95, column: 9, scope: !3712)
!3724 = !DILocation(line: 101, column: 16, scope: !3720)
!3725 = !DILocation(line: 100, column: 7, scope: !3712)
!3726 = !DILocation(line: 102, column: 5, scope: !3720)
!3727 = !DILocation(line: 103, column: 3, scope: !3712)
!3728 = distinct !DISubprogram(name: "xmemdup", scope: !3532, file: !3532, line: 111, type: !3729, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !3733)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!37, !3731, !62}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3733 = !{!3734, !3735}
!3734 = !DILocalVariable(name: "p", arg: 1, scope: !3728, file: !3532, line: 111, type: !3731)
!3735 = !DILocalVariable(name: "s", arg: 2, scope: !3728, file: !3532, line: 111, type: !62)
!3736 = !DILocation(line: 111, column: 22, scope: !3728)
!3737 = !DILocation(line: 111, column: 32, scope: !3728)
!3738 = !DILocation(line: 39, column: 17, scope: !3531, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 113, column: 18, scope: !3728)
!3740 = !DILocation(line: 41, column: 13, scope: !3531, inlinedAt: !3739)
!3741 = !DILocation(line: 41, column: 9, scope: !3531, inlinedAt: !3739)
!3742 = !DILocation(line: 42, column: 8, scope: !3542, inlinedAt: !3739)
!3743 = !DILocation(line: 42, column: 15, scope: !3542, inlinedAt: !3739)
!3744 = !DILocation(line: 42, column: 10, scope: !3542, inlinedAt: !3739)
!3745 = !DILocation(line: 43, column: 5, scope: !3542, inlinedAt: !3739)
!3746 = !DILocation(line: 113, column: 10, scope: !3728)
!3747 = !DILocation(line: 113, column: 3, scope: !3728)
!3748 = distinct !DISubprogram(name: "xstrdup", scope: !3532, file: !3532, line: 119, type: !2817, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !3749)
!3749 = !{!3750}
!3750 = !DILocalVariable(name: "string", arg: 1, scope: !3748, file: !3532, line: 119, type: !43)
!3751 = !DILocation(line: 119, column: 22, scope: !3748)
!3752 = !DILocation(line: 121, column: 27, scope: !3748)
!3753 = !DILocation(line: 121, column: 43, scope: !3748)
!3754 = !DILocation(line: 111, column: 22, scope: !3728, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 121, column: 10, scope: !3748)
!3756 = !DILocation(line: 111, column: 32, scope: !3728, inlinedAt: !3755)
!3757 = !DILocation(line: 39, column: 17, scope: !3531, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 113, column: 18, scope: !3728, inlinedAt: !3755)
!3759 = !DILocation(line: 41, column: 13, scope: !3531, inlinedAt: !3758)
!3760 = !DILocation(line: 41, column: 9, scope: !3531, inlinedAt: !3758)
!3761 = !DILocation(line: 42, column: 8, scope: !3542, inlinedAt: !3758)
!3762 = !DILocation(line: 42, column: 15, scope: !3542, inlinedAt: !3758)
!3763 = !DILocation(line: 42, column: 10, scope: !3542, inlinedAt: !3758)
!3764 = !DILocation(line: 43, column: 5, scope: !3542, inlinedAt: !3758)
!3765 = !DILocation(line: 113, column: 10, scope: !3728, inlinedAt: !3755)
!3766 = !DILocation(line: 121, column: 3, scope: !3748)
!3767 = distinct !DISubprogram(name: "xalloc_die", scope: !3768, file: !3768, line: 32, type: !181, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !674, variables: !183)
!3768 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3769 = !DILocation(line: 34, column: 10, scope: !3767)
!3770 = !DILocation(line: 34, column: 33, scope: !3767)
!3771 = !DILocation(line: 34, column: 3, scope: !3767)
!3772 = !DILocation(line: 40, column: 3, scope: !3767)
!3773 = distinct !DISubprogram(name: "xnumtoimax", scope: !3774, file: !3774, line: 36, type: !3775, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !3777)
!3774 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!101, !43, !147, !101, !101, !43, !43, !147}
!3777 = !{!3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3787}
!3778 = !DILocalVariable(name: "n_str", arg: 1, scope: !3773, file: !3774, line: 36, type: !43)
!3779 = !DILocalVariable(name: "base", arg: 2, scope: !3773, file: !3774, line: 36, type: !147)
!3780 = !DILocalVariable(name: "min", arg: 3, scope: !3773, file: !3774, line: 36, type: !101)
!3781 = !DILocalVariable(name: "max", arg: 4, scope: !3773, file: !3774, line: 36, type: !101)
!3782 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3773, file: !3774, line: 37, type: !43)
!3783 = !DILocalVariable(name: "err", arg: 6, scope: !3773, file: !3774, line: 37, type: !43)
!3784 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3773, file: !3774, line: 37, type: !147)
!3785 = !DILocalVariable(name: "s_err", scope: !3773, file: !3774, line: 39, type: !3786)
!3786 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !680, line: 39, baseType: !679)
!3787 = !DILocalVariable(name: "tnum", scope: !3773, file: !3774, line: 41, type: !101)
!3788 = !DILocation(line: 36, column: 26, scope: !3773)
!3789 = !DILocation(line: 36, column: 37, scope: !3773)
!3790 = !DILocation(line: 36, column: 57, scope: !3773)
!3791 = !DILocation(line: 36, column: 76, scope: !3773)
!3792 = !DILocation(line: 37, column: 26, scope: !3773)
!3793 = !DILocation(line: 37, column: 48, scope: !3773)
!3794 = !DILocation(line: 37, column: 57, scope: !3773)
!3795 = !DILocation(line: 41, column: 3, scope: !3773)
!3796 = !DILocation(line: 41, column: 17, scope: !3773)
!3797 = !DILocation(line: 42, column: 11, scope: !3773)
!3798 = !DILocation(line: 39, column: 16, scope: !3773)
!3799 = !DILocation(line: 44, column: 7, scope: !3773)
!3800 = !DILocation(line: 69, column: 50, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3802, file: !3774, line: 67, column: 5)
!3802 = distinct !DILexicalBlock(scope: !3773, file: !3774, line: 66, column: 7)
!3803 = !DILocation(line: 46, column: 11, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3805, file: !3774, line: 46, column: 11)
!3805 = distinct !DILexicalBlock(scope: !3806, file: !3774, line: 45, column: 5)
!3806 = distinct !DILexicalBlock(scope: !3773, file: !3774, line: 44, column: 7)
!3807 = !DILocation(line: 46, column: 16, scope: !3804)
!3808 = !DILocation(line: 46, column: 29, scope: !3804)
!3809 = !DILocation(line: 46, column: 22, scope: !3804)
!3810 = !DILocation(line: 51, column: 20, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3812, file: !3774, line: 51, column: 15)
!3812 = distinct !DILexicalBlock(scope: !3804, file: !3774, line: 47, column: 9)
!3813 = !DILocation(line: 51, column: 15, scope: !3812)
!3814 = !DILocation(line: 52, column: 13, scope: !3811)
!3815 = !DILocation(line: 52, column: 19, scope: !3811)
!3816 = !DILocation(line: 54, column: 25, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3811, file: !3774, line: 54, column: 20)
!3818 = !DILocation(line: 55, column: 13, scope: !3817)
!3819 = !DILocation(line: 54, column: 20, scope: !3811)
!3820 = !DILocation(line: 62, column: 5, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3806, file: !3774, line: 61, column: 12)
!3822 = !DILocation(line: 62, column: 11, scope: !3821)
!3823 = !DILocation(line: 64, column: 5, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3821, file: !3774, line: 63, column: 12)
!3825 = !DILocation(line: 64, column: 11, scope: !3824)
!3826 = !DILocation(line: 69, column: 14, scope: !3801)
!3827 = !DILocation(line: 69, column: 56, scope: !3801)
!3828 = !DILocation(line: 70, column: 29, scope: !3801)
!3829 = !DILocation(line: 69, column: 7, scope: !3801)
!3830 = !DILocation(line: 73, column: 10, scope: !3773)
!3831 = !DILocation(line: 71, column: 5, scope: !3801)
!3832 = !DILocation(line: 74, column: 1, scope: !3773)
!3833 = !DILocation(line: 73, column: 3, scope: !3773)
!3834 = distinct !DISubprogram(name: "xdectoimax", scope: !3774, file: !3774, line: 82, type: !3835, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !3837)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!101, !43, !101, !101, !43, !43, !147}
!3837 = !{!3838, !3839, !3840, !3841, !3842, !3843}
!3838 = !DILocalVariable(name: "n_str", arg: 1, scope: !3834, file: !3774, line: 82, type: !43)
!3839 = !DILocalVariable(name: "min", arg: 2, scope: !3834, file: !3774, line: 82, type: !101)
!3840 = !DILocalVariable(name: "max", arg: 3, scope: !3834, file: !3774, line: 82, type: !101)
!3841 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3834, file: !3774, line: 83, type: !43)
!3842 = !DILocalVariable(name: "err", arg: 5, scope: !3834, file: !3774, line: 83, type: !43)
!3843 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3834, file: !3774, line: 83, type: !147)
!3844 = !DILocation(line: 82, column: 26, scope: !3834)
!3845 = !DILocation(line: 82, column: 47, scope: !3834)
!3846 = !DILocation(line: 82, column: 66, scope: !3834)
!3847 = !DILocation(line: 83, column: 26, scope: !3834)
!3848 = !DILocation(line: 83, column: 48, scope: !3834)
!3849 = !DILocation(line: 83, column: 57, scope: !3834)
!3850 = !DILocation(line: 85, column: 10, scope: !3834)
!3851 = !DILocation(line: 85, column: 3, scope: !3834)
!3852 = distinct !DISubprogram(name: "xstrtoimax", scope: !3853, file: !3853, line: 88, type: !3854, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !687, variables: !3857)
!3853 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!3786, !43, !761, !147, !3856, !43}
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!3857 = !{!3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3870, !3871}
!3858 = !DILocalVariable(name: "s", arg: 1, scope: !3852, file: !3853, line: 88, type: !43)
!3859 = !DILocalVariable(name: "ptr", arg: 2, scope: !3852, file: !3853, line: 88, type: !761)
!3860 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3852, file: !3853, line: 88, type: !147)
!3861 = !DILocalVariable(name: "val", arg: 4, scope: !3852, file: !3853, line: 89, type: !3856)
!3862 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3852, file: !3853, line: 89, type: !43)
!3863 = !DILocalVariable(name: "t_ptr", scope: !3852, file: !3853, line: 91, type: !35)
!3864 = !DILocalVariable(name: "p", scope: !3852, file: !3853, line: 92, type: !761)
!3865 = !DILocalVariable(name: "tmp", scope: !3852, file: !3853, line: 93, type: !101)
!3866 = !DILocalVariable(name: "err", scope: !3852, file: !3853, line: 94, type: !3786)
!3867 = !DILocalVariable(name: "base", scope: !3868, file: !3853, line: 141, type: !147)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !3853, line: 140, column: 5)
!3869 = distinct !DILexicalBlock(scope: !3852, file: !3853, line: 139, column: 7)
!3870 = !DILocalVariable(name: "suffixes", scope: !3868, file: !3853, line: 142, type: !147)
!3871 = !DILocalVariable(name: "overflow", scope: !3868, file: !3853, line: 143, type: !3786)
!3872 = !DILocation(line: 88, column: 24, scope: !3852)
!3873 = !DILocation(line: 88, column: 34, scope: !3852)
!3874 = !DILocation(line: 88, column: 43, scope: !3852)
!3875 = !DILocation(line: 89, column: 24, scope: !3852)
!3876 = !DILocation(line: 89, column: 41, scope: !3852)
!3877 = !DILocation(line: 91, column: 3, scope: !3852)
!3878 = !DILocation(line: 94, column: 16, scope: !3852)
!3879 = !DILocation(line: 96, column: 3, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !3853, line: 96, column: 3)
!3881 = distinct !DILexicalBlock(scope: !3852, file: !3853, line: 96, column: 3)
!3882 = !DILocation(line: 98, column: 8, scope: !3852)
!3883 = !DILocation(line: 92, column: 10, scope: !3852)
!3884 = !DILocation(line: 100, column: 3, scope: !3852)
!3885 = !DILocation(line: 100, column: 9, scope: !3852)
!3886 = !DILocalVariable(name: "nptr", arg: 1, scope: !3887, file: !3888, line: 324, type: !883)
!3887 = distinct !DISubprogram(name: "strtoimax", scope: !3888, file: !3888, line: 324, type: !3889, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !687, variables: !3892)
!3888 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!101, !883, !3891, !147}
!3891 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !761)
!3892 = !{!3886, !3893, !3894}
!3893 = !DILocalVariable(name: "endptr", arg: 2, scope: !3887, file: !3888, line: 324, type: !3891)
!3894 = !DILocalVariable(name: "base", arg: 3, scope: !3887, file: !3888, line: 324, type: !147)
!3895 = !DILocation(line: 324, column: 1, scope: !3887, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 112, column: 9, scope: !3852)
!3897 = !DILocation(line: 327, column: 10, scope: !3887, inlinedAt: !3896)
!3898 = !DILocation(line: 93, column: 14, scope: !3852)
!3899 = !DILocation(line: 114, column: 7, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3852, file: !3853, line: 114, column: 7)
!3901 = !DILocation(line: 114, column: 10, scope: !3900)
!3902 = !DILocation(line: 114, column: 7, scope: !3852)
!3903 = !DILocation(line: 118, column: 11, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !3853, line: 118, column: 11)
!3905 = distinct !DILexicalBlock(scope: !3900, file: !3853, line: 115, column: 5)
!3906 = !DILocation(line: 118, column: 26, scope: !3904)
!3907 = !DILocation(line: 118, column: 29, scope: !3904)
!3908 = !DILocation(line: 118, column: 33, scope: !3904)
!3909 = !DILocation(line: 118, column: 36, scope: !3904)
!3910 = !DILocation(line: 118, column: 11, scope: !3905)
!3911 = !DILocation(line: 123, column: 12, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3900, file: !3853, line: 123, column: 12)
!3913 = !DILocation(line: 123, column: 12, scope: !3900)
!3914 = !DILocation(line: 128, column: 5, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3912, file: !3853, line: 124, column: 5)
!3916 = !DILocation(line: 133, column: 8, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3852, file: !3853, line: 133, column: 7)
!3918 = !DILocation(line: 133, column: 7, scope: !3852)
!3919 = !DILocation(line: 135, column: 12, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3917, file: !3853, line: 134, column: 5)
!3921 = !DILocation(line: 136, column: 7, scope: !3920)
!3922 = !DILocation(line: 139, column: 7, scope: !3869)
!3923 = !DILocation(line: 139, column: 11, scope: !3869)
!3924 = !DILocation(line: 139, column: 7, scope: !3852)
!3925 = !DILocation(line: 141, column: 11, scope: !3868)
!3926 = !DILocation(line: 142, column: 11, scope: !3868)
!3927 = !DILocation(line: 145, column: 12, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3868, file: !3853, line: 145, column: 11)
!3929 = !DILocation(line: 145, column: 11, scope: !3868)
!3930 = !DILocation(line: 147, column: 16, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3928, file: !3853, line: 146, column: 9)
!3932 = !DILocation(line: 148, column: 22, scope: !3931)
!3933 = !DILocation(line: 148, column: 11, scope: !3931)
!3934 = !DILocation(line: 151, column: 7, scope: !3868)
!3935 = !DILocation(line: 163, column: 15, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3937, file: !3853, line: 163, column: 15)
!3937 = distinct !DILexicalBlock(scope: !3868, file: !3853, line: 152, column: 9)
!3938 = !DILocation(line: 163, column: 15, scope: !3937)
!3939 = !DILocation(line: 164, column: 21, scope: !3936)
!3940 = !DILocation(line: 164, column: 13, scope: !3936)
!3941 = !DILocation(line: 167, column: 21, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3943, file: !3853, line: 167, column: 21)
!3943 = distinct !DILexicalBlock(scope: !3936, file: !3853, line: 165, column: 15)
!3944 = !DILocation(line: 167, column: 29, scope: !3942)
!3945 = !DILocation(line: 167, column: 21, scope: !3943)
!3946 = !DILocation(line: 175, column: 17, scope: !3943)
!3947 = !DILocation(line: 179, column: 7, scope: !3868)
!3948 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3949, file: !3853, line: 60, type: !147)
!3949 = distinct !DISubprogram(name: "bkm_scale", scope: !3853, file: !3853, line: 60, type: !3950, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !687, variables: !3952)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!3786, !3856, !147}
!3952 = !{!3953, !3948}
!3953 = !DILocalVariable(name: "x", arg: 1, scope: !3949, file: !3853, line: 60, type: !3856)
!3954 = !DILocation(line: 60, column: 31, scope: !3949, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 182, column: 22, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3868, file: !3853, line: 180, column: 9)
!3957 = !DILocation(line: 62, column: 38, scope: !3958, inlinedAt: !3955)
!3958 = distinct !DILexicalBlock(scope: !3949, file: !3853, line: 62, column: 7)
!3959 = !DILocation(line: 62, column: 7, scope: !3949, inlinedAt: !3955)
!3960 = !DILocation(line: 67, column: 39, scope: !3961, inlinedAt: !3955)
!3961 = distinct !DILexicalBlock(scope: !3949, file: !3853, line: 67, column: 7)
!3962 = !DILocation(line: 72, column: 6, scope: !3949, inlinedAt: !3955)
!3963 = !DILocation(line: 67, column: 7, scope: !3949, inlinedAt: !3955)
!3964 = !DILocation(line: 60, column: 31, scope: !3949, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 189, column: 22, scope: !3956)
!3966 = !DILocation(line: 62, column: 38, scope: !3958, inlinedAt: !3965)
!3967 = !DILocation(line: 62, column: 7, scope: !3949, inlinedAt: !3965)
!3968 = !DILocation(line: 67, column: 39, scope: !3961, inlinedAt: !3965)
!3969 = !DILocation(line: 72, column: 6, scope: !3949, inlinedAt: !3965)
!3970 = !DILocation(line: 67, column: 7, scope: !3949, inlinedAt: !3965)
!3971 = !DILocalVariable(name: "power", arg: 3, scope: !3972, file: !3853, line: 77, type: !147)
!3972 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3853, file: !3853, line: 77, type: !3973, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !687, variables: !3975)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!3786, !3856, !147, !147}
!3975 = !{!3976, !3977, !3971, !3978}
!3976 = !DILocalVariable(name: "x", arg: 1, scope: !3972, file: !3853, line: 77, type: !3856)
!3977 = !DILocalVariable(name: "base", arg: 2, scope: !3972, file: !3853, line: 77, type: !147)
!3978 = !DILocalVariable(name: "err", scope: !3972, file: !3853, line: 79, type: !3786)
!3979 = !DILocation(line: 77, column: 50, scope: !3972, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 197, column: 22, scope: !3956)
!3981 = !DILocation(line: 79, column: 16, scope: !3972, inlinedAt: !3980)
!3982 = !DILocation(line: 62, column: 38, scope: !3958, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 81, column: 12, scope: !3972, inlinedAt: !3980)
!3984 = !DILocation(line: 62, column: 7, scope: !3949, inlinedAt: !3983)
!3985 = !DILocation(line: 67, column: 24, scope: !3961, inlinedAt: !3983)
!3986 = !DILocation(line: 67, column: 39, scope: !3961, inlinedAt: !3983)
!3987 = !DILocation(line: 72, column: 6, scope: !3949, inlinedAt: !3983)
!3988 = !DILocation(line: 67, column: 7, scope: !3949, inlinedAt: !3983)
!3989 = !DILocation(line: 77, column: 50, scope: !3972, inlinedAt: !3990)
!3990 = distinct !DILocation(line: 202, column: 22, scope: !3956)
!3991 = !DILocation(line: 79, column: 16, scope: !3972, inlinedAt: !3990)
!3992 = !DILocation(line: 62, column: 38, scope: !3958, inlinedAt: !3993)
!3993 = distinct !DILocation(line: 81, column: 12, scope: !3972, inlinedAt: !3990)
!3994 = !DILocation(line: 62, column: 7, scope: !3949, inlinedAt: !3993)
!3995 = !DILocation(line: 67, column: 24, scope: !3961, inlinedAt: !3993)
!3996 = !DILocation(line: 67, column: 39, scope: !3961, inlinedAt: !3993)
!3997 = !DILocation(line: 72, column: 6, scope: !3949, inlinedAt: !3993)
!3998 = !DILocation(line: 67, column: 7, scope: !3949, inlinedAt: !3993)
!3999 = !DILocation(line: 77, column: 50, scope: !3972, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 207, column: 22, scope: !3956)
!4001 = !DILocation(line: 79, column: 16, scope: !3972, inlinedAt: !4000)
!4002 = !DILocation(line: 62, column: 38, scope: !3958, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 81, column: 12, scope: !3972, inlinedAt: !4000)
!4004 = !DILocation(line: 62, column: 7, scope: !3949, inlinedAt: !4003)
!4005 = !DILocation(line: 67, column: 24, scope: !3961, inlinedAt: !4003)
!4006 = !DILocation(line: 67, column: 39, scope: !3961, inlinedAt: !4003)
!4007 = !DILocation(line: 72, column: 6, scope: !3949, inlinedAt: !4003)
!4008 = !DILocation(line: 67, column: 7, scope: !3949, inlinedAt: !4003)
!4009 = !DILocation(line: 77, column: 50, scope: !3972, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 212, column: 22, scope: !3956)
!4011 = !DILocation(line: 79, column: 16, scope: !3972, inlinedAt: !4010)
!4012 = !DILocation(line: 62, column: 38, scope: !3958, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 81, column: 12, scope: !3972, inlinedAt: !4010)
!4014 = !DILocation(line: 62, column: 7, scope: !3949, inlinedAt: !4013)
!4015 = !DILocation(line: 67, column: 24, scope: !3961, inlinedAt: !4013)
!4016 = !DILocation(line: 67, column: 39, scope: !3961, inlinedAt: !4013)
!4017 = !DILocation(line: 72, column: 6, scope: !3949, inlinedAt: !4013)
!4018 = !DILocation(line: 67, column: 7, scope: !3949, inlinedAt: !4013)
!4019 = !DILocation(line: 77, column: 50, scope: !3972, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 216, column: 22, scope: !3956)
!4021 = !DILocation(line: 79, column: 16, scope: !3972, inlinedAt: !4020)
!4022 = !DILocation(line: 62, column: 38, scope: !3958, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 81, column: 12, scope: !3972, inlinedAt: !4020)
!4024 = !DILocation(line: 62, column: 7, scope: !3949, inlinedAt: !4023)
!4025 = !DILocation(line: 67, column: 24, scope: !3961, inlinedAt: !4023)
!4026 = !DILocation(line: 67, column: 39, scope: !3961, inlinedAt: !4023)
!4027 = !DILocation(line: 72, column: 6, scope: !3949, inlinedAt: !4023)
!4028 = !DILocation(line: 67, column: 7, scope: !3949, inlinedAt: !4023)
!4029 = !DILocation(line: 77, column: 50, scope: !3972, inlinedAt: !4030)
!4030 = distinct !DILocation(line: 221, column: 22, scope: !3956)
!4031 = !DILocation(line: 79, column: 16, scope: !3972, inlinedAt: !4030)
!4032 = !DILocation(line: 62, column: 38, scope: !3958, inlinedAt: !4033)
!4033 = distinct !DILocation(line: 81, column: 12, scope: !3972, inlinedAt: !4030)
!4034 = !DILocation(line: 62, column: 7, scope: !3949, inlinedAt: !4033)
!4035 = !DILocation(line: 67, column: 24, scope: !3961, inlinedAt: !4033)
!4036 = !DILocation(line: 67, column: 39, scope: !3961, inlinedAt: !4033)
!4037 = !DILocation(line: 72, column: 6, scope: !3949, inlinedAt: !4033)
!4038 = !DILocation(line: 67, column: 7, scope: !3949, inlinedAt: !4033)
!4039 = !DILocation(line: 60, column: 31, scope: !3949, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 225, column: 22, scope: !3956)
!4041 = !DILocation(line: 62, column: 38, scope: !3958, inlinedAt: !4040)
!4042 = !DILocation(line: 62, column: 7, scope: !3949, inlinedAt: !4040)
!4043 = !DILocation(line: 67, column: 39, scope: !3961, inlinedAt: !4040)
!4044 = !DILocation(line: 72, column: 6, scope: !3949, inlinedAt: !4040)
!4045 = !DILocation(line: 67, column: 7, scope: !3949, inlinedAt: !4040)
!4046 = !DILocation(line: 77, column: 50, scope: !3972, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 229, column: 22, scope: !3956)
!4048 = !DILocation(line: 79, column: 16, scope: !3972, inlinedAt: !4047)
!4049 = !DILocation(line: 62, column: 38, scope: !3958, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 81, column: 12, scope: !3972, inlinedAt: !4047)
!4051 = !DILocation(line: 62, column: 7, scope: !3949, inlinedAt: !4050)
!4052 = !DILocation(line: 67, column: 24, scope: !3961, inlinedAt: !4050)
!4053 = !DILocation(line: 67, column: 39, scope: !3961, inlinedAt: !4050)
!4054 = !DILocation(line: 72, column: 6, scope: !3949, inlinedAt: !4050)
!4055 = !DILocation(line: 67, column: 7, scope: !3949, inlinedAt: !4050)
!4056 = !DILocation(line: 77, column: 50, scope: !3972, inlinedAt: !4057)
!4057 = distinct !DILocation(line: 233, column: 22, scope: !3956)
!4058 = !DILocation(line: 79, column: 16, scope: !3972, inlinedAt: !4057)
!4059 = !DILocation(line: 62, column: 38, scope: !3958, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 81, column: 12, scope: !3972, inlinedAt: !4057)
!4061 = !DILocation(line: 62, column: 7, scope: !3949, inlinedAt: !4060)
!4062 = !DILocation(line: 67, column: 24, scope: !3961, inlinedAt: !4060)
!4063 = !DILocation(line: 67, column: 39, scope: !3961, inlinedAt: !4060)
!4064 = !DILocation(line: 72, column: 6, scope: !3949, inlinedAt: !4060)
!4065 = !DILocation(line: 67, column: 7, scope: !3949, inlinedAt: !4060)
!4066 = !DILocation(line: 237, column: 16, scope: !3956)
!4067 = !DILocation(line: 238, column: 22, scope: !3956)
!4068 = !DILocation(line: 238, column: 11, scope: !3956)
!4069 = !DILocation(line: 143, column: 20, scope: !3868)
!4070 = !DILocation(line: 241, column: 11, scope: !3868)
!4071 = !DILocation(line: 242, column: 10, scope: !3868)
!4072 = !DILocation(line: 243, column: 11, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !3868, file: !3853, line: 243, column: 11)
!4074 = !DILocation(line: 244, column: 13, scope: !4073)
!4075 = !DILocation(line: 243, column: 11, scope: !3868)
!4076 = !DILocation(line: 247, column: 8, scope: !3852)
!4077 = !DILocation(line: 248, column: 3, scope: !3852)
!4078 = !DILocation(line: 249, column: 1, scope: !3852)
!4079 = !DILocation(line: 81, column: 9, scope: !3972, inlinedAt: !3980)
!4080 = !DILocation(line: 81, column: 9, scope: !3972, inlinedAt: !3990)
!4081 = !DILocation(line: 81, column: 9, scope: !3972, inlinedAt: !4010)
!4082 = !DILocation(line: 81, column: 9, scope: !3972, inlinedAt: !4020)
!4083 = !DILocation(line: 81, column: 9, scope: !3972, inlinedAt: !4030)
!4084 = !DILocation(line: 81, column: 9, scope: !3972, inlinedAt: !4047)
!4085 = !DILocation(line: 81, column: 9, scope: !3972, inlinedAt: !4057)
!4086 = distinct !DISubprogram(name: "rpl_calloc", scope: !4087, file: !4087, line: 42, type: !3518, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !689, variables: !4088)
!4087 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4088 = !{!4089, !4090, !4091, !4092}
!4089 = !DILocalVariable(name: "n", arg: 1, scope: !4086, file: !4087, line: 42, type: !62)
!4090 = !DILocalVariable(name: "s", arg: 2, scope: !4086, file: !4087, line: 42, type: !62)
!4091 = !DILocalVariable(name: "result", scope: !4086, file: !4087, line: 44, type: !37)
!4092 = !DILocalVariable(name: "bytes", scope: !4093, file: !4087, line: 56, type: !62)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !4087, line: 53, column: 5)
!4094 = distinct !DILexicalBlock(scope: !4086, file: !4087, line: 47, column: 7)
!4095 = !DILocation(line: 42, column: 20, scope: !4086)
!4096 = !DILocation(line: 42, column: 30, scope: !4086)
!4097 = !DILocation(line: 47, column: 9, scope: !4094)
!4098 = !DILocation(line: 47, column: 19, scope: !4094)
!4099 = !DILocation(line: 47, column: 14, scope: !4094)
!4100 = !DILocation(line: 56, column: 24, scope: !4093)
!4101 = !DILocation(line: 56, column: 14, scope: !4093)
!4102 = !DILocation(line: 57, column: 17, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4093, file: !4087, line: 57, column: 11)
!4104 = !DILocation(line: 57, column: 21, scope: !4103)
!4105 = !DILocation(line: 57, column: 11, scope: !4093)
!4106 = !DILocation(line: 59, column: 11, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4103, file: !4087, line: 58, column: 9)
!4108 = !DILocation(line: 59, column: 17, scope: !4107)
!4109 = !DILocation(line: 65, column: 12, scope: !4086)
!4110 = !DILocation(line: 44, column: 9, scope: !4086)
!4111 = !DILocation(line: 72, column: 3, scope: !4086)
!4112 = !DILocation(line: 73, column: 1, scope: !4086)
!4113 = distinct !DISubprogram(name: "rpl_fclose", scope: !4114, file: !4114, line: 56, type: !4115, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !691, variables: !4157)
!4114 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!147, !4117}
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1017, line: 7, baseType: !4119)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1019, line: 241, size: 1728, elements: !4120)
!4120 = !{!4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4119, file: !1019, line: 242, baseType: !147, size: 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4119, file: !1019, line: 247, baseType: !35, size: 64, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4119, file: !1019, line: 248, baseType: !35, size: 64, offset: 128)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4119, file: !1019, line: 249, baseType: !35, size: 64, offset: 192)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4119, file: !1019, line: 250, baseType: !35, size: 64, offset: 256)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4119, file: !1019, line: 251, baseType: !35, size: 64, offset: 320)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4119, file: !1019, line: 252, baseType: !35, size: 64, offset: 384)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4119, file: !1019, line: 253, baseType: !35, size: 64, offset: 448)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4119, file: !1019, line: 254, baseType: !35, size: 64, offset: 512)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4119, file: !1019, line: 256, baseType: !35, size: 64, offset: 576)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4119, file: !1019, line: 257, baseType: !35, size: 64, offset: 640)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4119, file: !1019, line: 258, baseType: !35, size: 64, offset: 704)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4119, file: !1019, line: 260, baseType: !4134, size: 64, offset: 768)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1019, line: 156, size: 192, elements: !4136)
!4136 = !{!4137, !4138, !4140}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4135, file: !1019, line: 157, baseType: !4134, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4135, file: !1019, line: 158, baseType: !4139, size: 64, offset: 64)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4135, file: !1019, line: 162, baseType: !147, size: 32, offset: 128)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4119, file: !1019, line: 262, baseType: !4139, size: 64, offset: 832)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4119, file: !1019, line: 264, baseType: !147, size: 32, offset: 896)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4119, file: !1019, line: 268, baseType: !147, size: 32, offset: 928)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4119, file: !1019, line: 270, baseType: !1045, size: 64, offset: 960)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4119, file: !1019, line: 274, baseType: !249, size: 16, offset: 1024)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4119, file: !1019, line: 275, baseType: !1048, size: 8, offset: 1040)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4119, file: !1019, line: 276, baseType: !1050, size: 8, offset: 1048)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4119, file: !1019, line: 280, baseType: !1054, size: 64, offset: 1088)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4119, file: !1019, line: 289, baseType: !1057, size: 64, offset: 1152)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4119, file: !1019, line: 297, baseType: !37, size: 64, offset: 1216)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4119, file: !1019, line: 298, baseType: !37, size: 64, offset: 1280)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4119, file: !1019, line: 299, baseType: !37, size: 64, offset: 1344)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4119, file: !1019, line: 300, baseType: !37, size: 64, offset: 1408)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4119, file: !1019, line: 302, baseType: !62, size: 64, offset: 1472)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4119, file: !1019, line: 303, baseType: !147, size: 32, offset: 1536)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4119, file: !1019, line: 305, baseType: !1065, size: 160, offset: 1568)
!4157 = !{!4158, !4159, !4160, !4161}
!4158 = !DILocalVariable(name: "fp", arg: 1, scope: !4113, file: !4114, line: 56, type: !4117)
!4159 = !DILocalVariable(name: "saved_errno", scope: !4113, file: !4114, line: 58, type: !147)
!4160 = !DILocalVariable(name: "fd", scope: !4113, file: !4114, line: 59, type: !147)
!4161 = !DILocalVariable(name: "result", scope: !4113, file: !4114, line: 60, type: !147)
!4162 = !DILocation(line: 56, column: 19, scope: !4113)
!4163 = !DILocation(line: 58, column: 7, scope: !4113)
!4164 = !DILocation(line: 60, column: 7, scope: !4113)
!4165 = !DILocation(line: 63, column: 8, scope: !4113)
!4166 = !DILocation(line: 59, column: 7, scope: !4113)
!4167 = !DILocation(line: 64, column: 10, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4113, file: !4114, line: 64, column: 7)
!4169 = !DILocation(line: 64, column: 7, scope: !4113)
!4170 = !DILocation(line: 65, column: 12, scope: !4168)
!4171 = !DILocation(line: 65, column: 5, scope: !4168)
!4172 = !DILocation(line: 70, column: 9, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4113, file: !4114, line: 70, column: 7)
!4174 = !DILocation(line: 70, column: 23, scope: !4173)
!4175 = !DILocation(line: 70, column: 33, scope: !4173)
!4176 = !DILocation(line: 70, column: 26, scope: !4173)
!4177 = !DILocation(line: 70, column: 59, scope: !4173)
!4178 = !DILocation(line: 71, column: 7, scope: !4173)
!4179 = !DILocation(line: 71, column: 10, scope: !4173)
!4180 = !DILocation(line: 70, column: 7, scope: !4113)
!4181 = !DILocation(line: 98, column: 12, scope: !4113)
!4182 = !DILocation(line: 103, column: 7, scope: !4113)
!4183 = !DILocation(line: 72, column: 19, scope: !4173)
!4184 = !DILocation(line: 103, column: 19, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4113, file: !4114, line: 103, column: 7)
!4186 = !DILocation(line: 105, column: 13, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4185, file: !4114, line: 104, column: 5)
!4188 = !DILocation(line: 107, column: 5, scope: !4187)
!4189 = !DILocation(line: 110, column: 1, scope: !4113)
!4190 = distinct !DISubprogram(name: "rpl_fflush", scope: !4191, file: !4191, line: 127, type: !4192, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !693, variables: !4234)
!4191 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!147, !4194}
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1017, line: 7, baseType: !4196)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1019, line: 241, size: 1728, elements: !4197)
!4197 = !{!4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4196, file: !1019, line: 242, baseType: !147, size: 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4196, file: !1019, line: 247, baseType: !35, size: 64, offset: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4196, file: !1019, line: 248, baseType: !35, size: 64, offset: 128)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4196, file: !1019, line: 249, baseType: !35, size: 64, offset: 192)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4196, file: !1019, line: 250, baseType: !35, size: 64, offset: 256)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4196, file: !1019, line: 251, baseType: !35, size: 64, offset: 320)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4196, file: !1019, line: 252, baseType: !35, size: 64, offset: 384)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4196, file: !1019, line: 253, baseType: !35, size: 64, offset: 448)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4196, file: !1019, line: 254, baseType: !35, size: 64, offset: 512)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4196, file: !1019, line: 256, baseType: !35, size: 64, offset: 576)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4196, file: !1019, line: 257, baseType: !35, size: 64, offset: 640)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4196, file: !1019, line: 258, baseType: !35, size: 64, offset: 704)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4196, file: !1019, line: 260, baseType: !4211, size: 64, offset: 768)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1019, line: 156, size: 192, elements: !4213)
!4213 = !{!4214, !4215, !4217}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4212, file: !1019, line: 157, baseType: !4211, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4212, file: !1019, line: 158, baseType: !4216, size: 64, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4212, file: !1019, line: 162, baseType: !147, size: 32, offset: 128)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4196, file: !1019, line: 262, baseType: !4216, size: 64, offset: 832)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4196, file: !1019, line: 264, baseType: !147, size: 32, offset: 896)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4196, file: !1019, line: 268, baseType: !147, size: 32, offset: 928)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4196, file: !1019, line: 270, baseType: !1045, size: 64, offset: 960)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4196, file: !1019, line: 274, baseType: !249, size: 16, offset: 1024)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4196, file: !1019, line: 275, baseType: !1048, size: 8, offset: 1040)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4196, file: !1019, line: 276, baseType: !1050, size: 8, offset: 1048)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4196, file: !1019, line: 280, baseType: !1054, size: 64, offset: 1088)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4196, file: !1019, line: 289, baseType: !1057, size: 64, offset: 1152)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4196, file: !1019, line: 297, baseType: !37, size: 64, offset: 1216)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4196, file: !1019, line: 298, baseType: !37, size: 64, offset: 1280)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4196, file: !1019, line: 299, baseType: !37, size: 64, offset: 1344)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4196, file: !1019, line: 300, baseType: !37, size: 64, offset: 1408)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4196, file: !1019, line: 302, baseType: !62, size: 64, offset: 1472)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4196, file: !1019, line: 303, baseType: !147, size: 32, offset: 1536)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4196, file: !1019, line: 305, baseType: !1065, size: 160, offset: 1568)
!4234 = !{!4235}
!4235 = !DILocalVariable(name: "stream", arg: 1, scope: !4190, file: !4191, line: 127, type: !4194)
!4236 = !DILocation(line: 127, column: 19, scope: !4190)
!4237 = !DILocation(line: 148, column: 14, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4190, file: !4191, line: 148, column: 7)
!4239 = !DILocation(line: 148, column: 22, scope: !4238)
!4240 = !DILocation(line: 148, column: 27, scope: !4238)
!4241 = !DILocation(line: 148, column: 7, scope: !4190)
!4242 = !DILocation(line: 149, column: 12, scope: !4238)
!4243 = !DILocation(line: 149, column: 5, scope: !4238)
!4244 = !DILocalVariable(name: "fp", arg: 1, scope: !4245, file: !4191, line: 40, type: !4194)
!4245 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4191, file: !4191, line: 40, type: !4246, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !693, variables: !4248)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{null, !4194}
!4248 = !{!4244}
!4249 = !DILocation(line: 40, column: 48, scope: !4245, inlinedAt: !4250)
!4250 = distinct !DILocation(line: 153, column: 3, scope: !4190)
!4251 = !DILocation(line: 42, column: 11, scope: !4252, inlinedAt: !4250)
!4252 = distinct !DILexicalBlock(scope: !4245, file: !4191, line: 42, column: 7)
!4253 = !DILocation(line: 42, column: 18, scope: !4252, inlinedAt: !4250)
!4254 = !DILocation(line: 42, column: 7, scope: !4245, inlinedAt: !4250)
!4255 = !DILocation(line: 44, column: 5, scope: !4252, inlinedAt: !4250)
!4256 = !DILocation(line: 155, column: 10, scope: !4190)
!4257 = !DILocation(line: 155, column: 3, scope: !4190)
!4258 = !DILocation(line: 229, column: 1, scope: !4190)
!4259 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4260, file: !4260, line: 28, type: !4261, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !695, variables: !4303)
!4260 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!147, !4263, !1356, !147}
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1017, line: 7, baseType: !4265)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1019, line: 241, size: 1728, elements: !4266)
!4266 = !{!4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4265, file: !1019, line: 242, baseType: !147, size: 32)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4265, file: !1019, line: 247, baseType: !35, size: 64, offset: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4265, file: !1019, line: 248, baseType: !35, size: 64, offset: 128)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4265, file: !1019, line: 249, baseType: !35, size: 64, offset: 192)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4265, file: !1019, line: 250, baseType: !35, size: 64, offset: 256)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4265, file: !1019, line: 251, baseType: !35, size: 64, offset: 320)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4265, file: !1019, line: 252, baseType: !35, size: 64, offset: 384)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4265, file: !1019, line: 253, baseType: !35, size: 64, offset: 448)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4265, file: !1019, line: 254, baseType: !35, size: 64, offset: 512)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4265, file: !1019, line: 256, baseType: !35, size: 64, offset: 576)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4265, file: !1019, line: 257, baseType: !35, size: 64, offset: 640)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4265, file: !1019, line: 258, baseType: !35, size: 64, offset: 704)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4265, file: !1019, line: 260, baseType: !4280, size: 64, offset: 768)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1019, line: 156, size: 192, elements: !4282)
!4282 = !{!4283, !4284, !4286}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4281, file: !1019, line: 157, baseType: !4280, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4281, file: !1019, line: 158, baseType: !4285, size: 64, offset: 64)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4281, file: !1019, line: 162, baseType: !147, size: 32, offset: 128)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4265, file: !1019, line: 262, baseType: !4285, size: 64, offset: 832)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4265, file: !1019, line: 264, baseType: !147, size: 32, offset: 896)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4265, file: !1019, line: 268, baseType: !147, size: 32, offset: 928)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4265, file: !1019, line: 270, baseType: !1045, size: 64, offset: 960)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4265, file: !1019, line: 274, baseType: !249, size: 16, offset: 1024)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4265, file: !1019, line: 275, baseType: !1048, size: 8, offset: 1040)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4265, file: !1019, line: 276, baseType: !1050, size: 8, offset: 1048)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4265, file: !1019, line: 280, baseType: !1054, size: 64, offset: 1088)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4265, file: !1019, line: 289, baseType: !1057, size: 64, offset: 1152)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4265, file: !1019, line: 297, baseType: !37, size: 64, offset: 1216)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4265, file: !1019, line: 298, baseType: !37, size: 64, offset: 1280)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4265, file: !1019, line: 299, baseType: !37, size: 64, offset: 1344)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4265, file: !1019, line: 300, baseType: !37, size: 64, offset: 1408)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4265, file: !1019, line: 302, baseType: !62, size: 64, offset: 1472)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4265, file: !1019, line: 303, baseType: !147, size: 32, offset: 1536)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4265, file: !1019, line: 305, baseType: !1065, size: 160, offset: 1568)
!4303 = !{!4304, !4305, !4306, !4307}
!4304 = !DILocalVariable(name: "fp", arg: 1, scope: !4259, file: !4260, line: 28, type: !4263)
!4305 = !DILocalVariable(name: "offset", arg: 2, scope: !4259, file: !4260, line: 28, type: !1356)
!4306 = !DILocalVariable(name: "whence", arg: 3, scope: !4259, file: !4260, line: 28, type: !147)
!4307 = !DILocalVariable(name: "pos", scope: !4308, file: !4260, line: 116, type: !1356)
!4308 = distinct !DILexicalBlock(scope: !4309, file: !4260, line: 112, column: 5)
!4309 = distinct !DILexicalBlock(scope: !4259, file: !4260, line: 51, column: 7)
!4310 = !DILocation(line: 28, column: 15, scope: !4259)
!4311 = !DILocation(line: 28, column: 25, scope: !4259)
!4312 = !DILocation(line: 28, column: 37, scope: !4259)
!4313 = !DILocation(line: 51, column: 11, scope: !4309)
!4314 = !DILocation(line: 51, column: 31, scope: !4309)
!4315 = !DILocation(line: 51, column: 24, scope: !4309)
!4316 = !DILocation(line: 52, column: 7, scope: !4309)
!4317 = !DILocation(line: 52, column: 14, scope: !4309)
!4318 = !DILocation(line: 52, column: 35, scope: !4309)
!4319 = !{!1158, !723, i64 32}
!4320 = !DILocation(line: 52, column: 28, scope: !4309)
!4321 = !DILocation(line: 53, column: 7, scope: !4309)
!4322 = !DILocation(line: 53, column: 14, scope: !4309)
!4323 = !{!1158, !723, i64 72}
!4324 = !DILocation(line: 53, column: 28, scope: !4309)
!4325 = !DILocation(line: 51, column: 7, scope: !4259)
!4326 = !DILocation(line: 116, column: 26, scope: !4308)
!4327 = !DILocation(line: 116, column: 19, scope: !4308)
!4328 = !DILocation(line: 116, column: 13, scope: !4308)
!4329 = !DILocation(line: 117, column: 15, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4308, file: !4260, line: 117, column: 11)
!4331 = !DILocation(line: 117, column: 11, scope: !4308)
!4332 = !DILocation(line: 127, column: 11, scope: !4308)
!4333 = !DILocation(line: 127, column: 18, scope: !4308)
!4334 = !DILocation(line: 128, column: 11, scope: !4308)
!4335 = !DILocation(line: 128, column: 19, scope: !4308)
!4336 = !{!1158, !816, i64 144}
!4337 = !DILocation(line: 159, column: 7, scope: !4308)
!4338 = !DILocation(line: 161, column: 10, scope: !4259)
!4339 = !DILocation(line: 161, column: 3, scope: !4259)
!4340 = !DILocation(line: 162, column: 1, scope: !4259)
!4341 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4342, file: !4342, line: 334, type: !4343, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !697, variables: !4357)
!4342 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!62, !4345, !43, !62, !4346}
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1869, line: 6, baseType: !4348)
!4348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1871, line: 21, baseType: !4349)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1871, line: 13, size: 64, elements: !4350)
!4350 = !{!4351, !4352}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4349, file: !1871, line: 15, baseType: !147, size: 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4349, file: !1871, line: 20, baseType: !4353, size: 32, offset: 32)
!4353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4349, file: !1871, line: 16, size: 32, elements: !4354)
!4354 = !{!4355, !4356}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4353, file: !1871, line: 18, baseType: !65, size: 32)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4353, file: !1871, line: 19, baseType: !1880, size: 32)
!4357 = !{!4358, !4359, !4360, !4361, !4362, !4363, !4364}
!4358 = !DILocalVariable(name: "pwc", arg: 1, scope: !4341, file: !4342, line: 334, type: !4345)
!4359 = !DILocalVariable(name: "s", arg: 2, scope: !4341, file: !4342, line: 334, type: !43)
!4360 = !DILocalVariable(name: "n", arg: 3, scope: !4341, file: !4342, line: 334, type: !62)
!4361 = !DILocalVariable(name: "ps", arg: 4, scope: !4341, file: !4342, line: 334, type: !4346)
!4362 = !DILocalVariable(name: "ret", scope: !4341, file: !4342, line: 336, type: !62)
!4363 = !DILocalVariable(name: "wc", scope: !4341, file: !4342, line: 337, type: !1885)
!4364 = !DILocalVariable(name: "uc", scope: !4365, file: !4342, line: 398, type: !39)
!4365 = distinct !DILexicalBlock(scope: !4366, file: !4342, line: 397, column: 5)
!4366 = distinct !DILexicalBlock(scope: !4341, file: !4342, line: 396, column: 7)
!4367 = !DILocation(line: 334, column: 23, scope: !4341)
!4368 = !DILocation(line: 334, column: 40, scope: !4341)
!4369 = !DILocation(line: 334, column: 50, scope: !4341)
!4370 = !DILocation(line: 334, column: 64, scope: !4341)
!4371 = !DILocation(line: 337, column: 3, scope: !4341)
!4372 = !DILocation(line: 353, column: 9, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4341, file: !4342, line: 353, column: 7)
!4374 = !DILocation(line: 353, column: 7, scope: !4341)
!4375 = !DILocation(line: 388, column: 9, scope: !4341)
!4376 = !DILocation(line: 336, column: 10, scope: !4341)
!4377 = !DILocation(line: 396, column: 19, scope: !4366)
!4378 = !DILocation(line: 396, column: 31, scope: !4366)
!4379 = !DILocation(line: 396, column: 26, scope: !4366)
!4380 = !DILocation(line: 396, column: 41, scope: !4366)
!4381 = !DILocation(line: 396, column: 7, scope: !4341)
!4382 = !DILocation(line: 398, column: 26, scope: !4365)
!4383 = !DILocation(line: 398, column: 21, scope: !4365)
!4384 = !DILocation(line: 399, column: 14, scope: !4365)
!4385 = !DILocation(line: 399, column: 12, scope: !4365)
!4386 = !DILocation(line: 405, column: 1, scope: !4341)
!4387 = distinct !DISubprogram(name: "close_stream", scope: !4388, file: !4388, line: 56, type: !4389, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !700, variables: !4431)
!4388 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!147, !4391}
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1017, line: 7, baseType: !4393)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1019, line: 241, size: 1728, elements: !4394)
!4394 = !{!4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4393, file: !1019, line: 242, baseType: !147, size: 32)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4393, file: !1019, line: 247, baseType: !35, size: 64, offset: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4393, file: !1019, line: 248, baseType: !35, size: 64, offset: 128)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4393, file: !1019, line: 249, baseType: !35, size: 64, offset: 192)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4393, file: !1019, line: 250, baseType: !35, size: 64, offset: 256)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4393, file: !1019, line: 251, baseType: !35, size: 64, offset: 320)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4393, file: !1019, line: 252, baseType: !35, size: 64, offset: 384)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4393, file: !1019, line: 253, baseType: !35, size: 64, offset: 448)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4393, file: !1019, line: 254, baseType: !35, size: 64, offset: 512)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4393, file: !1019, line: 256, baseType: !35, size: 64, offset: 576)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4393, file: !1019, line: 257, baseType: !35, size: 64, offset: 640)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4393, file: !1019, line: 258, baseType: !35, size: 64, offset: 704)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4393, file: !1019, line: 260, baseType: !4408, size: 64, offset: 768)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1019, line: 156, size: 192, elements: !4410)
!4410 = !{!4411, !4412, !4414}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4409, file: !1019, line: 157, baseType: !4408, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4409, file: !1019, line: 158, baseType: !4413, size: 64, offset: 64)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4409, file: !1019, line: 162, baseType: !147, size: 32, offset: 128)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4393, file: !1019, line: 262, baseType: !4413, size: 64, offset: 832)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4393, file: !1019, line: 264, baseType: !147, size: 32, offset: 896)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4393, file: !1019, line: 268, baseType: !147, size: 32, offset: 928)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4393, file: !1019, line: 270, baseType: !1045, size: 64, offset: 960)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4393, file: !1019, line: 274, baseType: !249, size: 16, offset: 1024)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4393, file: !1019, line: 275, baseType: !1048, size: 8, offset: 1040)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4393, file: !1019, line: 276, baseType: !1050, size: 8, offset: 1048)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4393, file: !1019, line: 280, baseType: !1054, size: 64, offset: 1088)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4393, file: !1019, line: 289, baseType: !1057, size: 64, offset: 1152)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4393, file: !1019, line: 297, baseType: !37, size: 64, offset: 1216)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4393, file: !1019, line: 298, baseType: !37, size: 64, offset: 1280)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4393, file: !1019, line: 299, baseType: !37, size: 64, offset: 1344)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4393, file: !1019, line: 300, baseType: !37, size: 64, offset: 1408)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4393, file: !1019, line: 302, baseType: !62, size: 64, offset: 1472)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4393, file: !1019, line: 303, baseType: !147, size: 32, offset: 1536)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4393, file: !1019, line: 305, baseType: !1065, size: 160, offset: 1568)
!4431 = !{!4432, !4433, !4435, !4436}
!4432 = !DILocalVariable(name: "stream", arg: 1, scope: !4387, file: !4388, line: 56, type: !4391)
!4433 = !DILocalVariable(name: "some_pending", scope: !4387, file: !4388, line: 58, type: !4434)
!4434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!4435 = !DILocalVariable(name: "prev_fail", scope: !4387, file: !4388, line: 59, type: !4434)
!4436 = !DILocalVariable(name: "fclose_fail", scope: !4387, file: !4388, line: 60, type: !4434)
!4437 = !DILocation(line: 56, column: 21, scope: !4387)
!4438 = !DILocation(line: 58, column: 30, scope: !4387)
!4439 = !DILocalVariable(name: "__stream", arg: 1, scope: !4440, file: !1150, line: 132, type: !4391)
!4440 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1150, file: !1150, line: 132, type: !4389, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !700, variables: !4441)
!4441 = !{!4439}
!4442 = !DILocation(line: 132, column: 1, scope: !4440, inlinedAt: !4443)
!4443 = distinct !DILocation(line: 59, column: 27, scope: !4387)
!4444 = !DILocation(line: 134, column: 10, scope: !4440, inlinedAt: !4443)
!4445 = !DILocation(line: 59, column: 43, scope: !4387)
!4446 = !DILocation(line: 60, column: 29, scope: !4387)
!4447 = !DILocation(line: 60, column: 45, scope: !4387)
!4448 = !DILocation(line: 70, column: 17, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4387, file: !4388, line: 70, column: 7)
!4450 = !DILocation(line: 58, column: 50, scope: !4387)
!4451 = !DILocation(line: 70, column: 33, scope: !4449)
!4452 = !DILocation(line: 70, column: 53, scope: !4449)
!4453 = !DILocation(line: 70, column: 59, scope: !4449)
!4454 = !DILocation(line: 70, column: 7, scope: !4387)
!4455 = !DILocation(line: 72, column: 11, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4449, file: !4388, line: 71, column: 5)
!4457 = !DILocation(line: 73, column: 9, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4456, file: !4388, line: 72, column: 11)
!4459 = !DILocation(line: 73, column: 15, scope: !4458)
!4460 = !DILocation(line: 78, column: 1, scope: !4387)
!4461 = distinct !DISubprogram(name: "hard_locale", scope: !4462, file: !4462, line: 38, type: !4463, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !702, variables: !4465)
!4462 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!108, !147}
!4465 = !{!4466, !4467, !4468}
!4466 = !DILocalVariable(name: "category", arg: 1, scope: !4461, file: !4462, line: 38, type: !147)
!4467 = !DILocalVariable(name: "hard", scope: !4461, file: !4462, line: 40, type: !108)
!4468 = !DILocalVariable(name: "p", scope: !4461, file: !4462, line: 41, type: !43)
!4469 = !DILocation(line: 38, column: 18, scope: !4461)
!4470 = !DILocation(line: 40, column: 8, scope: !4461)
!4471 = !DILocation(line: 41, column: 19, scope: !4461)
!4472 = !DILocation(line: 41, column: 15, scope: !4461)
!4473 = !DILocation(line: 43, column: 7, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4461, file: !4462, line: 43, column: 7)
!4475 = !DILocation(line: 43, column: 7, scope: !4461)
!4476 = !DILocation(line: 47, column: 15, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4478, file: !4462, line: 47, column: 15)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !4462, line: 46, column: 9)
!4479 = distinct !DILexicalBlock(scope: !4480, file: !4462, line: 45, column: 11)
!4480 = distinct !DILexicalBlock(scope: !4474, file: !4462, line: 44, column: 5)
!4481 = !DILocation(line: 47, column: 31, scope: !4477)
!4482 = !DILocation(line: 47, column: 36, scope: !4477)
!4483 = !DILocation(line: 47, column: 39, scope: !4477)
!4484 = !DILocation(line: 47, column: 59, scope: !4477)
!4485 = !DILocation(line: 47, column: 15, scope: !4478)
!4486 = !DILocation(line: 48, column: 13, scope: !4477)
!4487 = !DILocation(line: 71, column: 3, scope: !4461)
!4488 = distinct !DISubprogram(name: "locale_charset", scope: !641, file: !641, line: 393, type: !4489, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !298, variables: !4491)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!43}
!4491 = !{!4492, !4493}
!4492 = !DILocalVariable(name: "codeset", scope: !4488, file: !641, line: 395, type: !43)
!4493 = !DILocalVariable(name: "aliases", scope: !4488, file: !641, line: 396, type: !43)
!4494 = !DILocalVariable(name: "buf1", scope: !4495, file: !641, line: 196, type: !4562)
!4495 = distinct !DILexicalBlock(scope: !4496, file: !641, line: 194, column: 21)
!4496 = distinct !DILexicalBlock(scope: !4497, file: !641, line: 193, column: 19)
!4497 = distinct !DILexicalBlock(scope: !4498, file: !641, line: 193, column: 19)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !641, line: 188, column: 17)
!4499 = distinct !DILexicalBlock(scope: !4500, file: !641, line: 181, column: 19)
!4500 = distinct !DILexicalBlock(scope: !4501, file: !641, line: 177, column: 13)
!4501 = distinct !DILexicalBlock(scope: !4502, file: !641, line: 173, column: 15)
!4502 = distinct !DILexicalBlock(scope: !4503, file: !641, line: 161, column: 9)
!4503 = distinct !DILexicalBlock(scope: !4504, file: !641, line: 157, column: 11)
!4504 = distinct !DILexicalBlock(scope: !4505, file: !641, line: 130, column: 5)
!4505 = distinct !DILexicalBlock(scope: !4506, file: !641, line: 129, column: 7)
!4506 = distinct !DISubprogram(name: "get_charset_aliases", scope: !641, file: !641, line: 124, type: !4489, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !298, variables: !4507)
!4507 = !{!4508, !4509, !4510, !4511, !4512, !4514, !4515, !4516, !4517, !4558, !4559, !4560, !4494, !4561, !4565, !4566, !4567}
!4508 = !DILocalVariable(name: "cp", scope: !4506, file: !641, line: 126, type: !43)
!4509 = !DILocalVariable(name: "dir", scope: !4504, file: !641, line: 132, type: !43)
!4510 = !DILocalVariable(name: "base", scope: !4504, file: !641, line: 133, type: !43)
!4511 = !DILocalVariable(name: "file_name", scope: !4504, file: !641, line: 134, type: !35)
!4512 = !DILocalVariable(name: "dir_len", scope: !4513, file: !641, line: 144, type: !62)
!4513 = distinct !DILexicalBlock(scope: !4504, file: !641, line: 143, column: 7)
!4514 = !DILocalVariable(name: "base_len", scope: !4513, file: !641, line: 145, type: !62)
!4515 = !DILocalVariable(name: "add_slash", scope: !4513, file: !641, line: 146, type: !147)
!4516 = !DILocalVariable(name: "fd", scope: !4502, file: !641, line: 162, type: !147)
!4517 = !DILocalVariable(name: "fp", scope: !4500, file: !641, line: 178, type: !4518)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1017, line: 7, baseType: !4520)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1019, line: 241, size: 1728, elements: !4521)
!4521 = !{!4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4520, file: !1019, line: 242, baseType: !147, size: 32)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4520, file: !1019, line: 247, baseType: !35, size: 64, offset: 64)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4520, file: !1019, line: 248, baseType: !35, size: 64, offset: 128)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4520, file: !1019, line: 249, baseType: !35, size: 64, offset: 192)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4520, file: !1019, line: 250, baseType: !35, size: 64, offset: 256)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4520, file: !1019, line: 251, baseType: !35, size: 64, offset: 320)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4520, file: !1019, line: 252, baseType: !35, size: 64, offset: 384)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4520, file: !1019, line: 253, baseType: !35, size: 64, offset: 448)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4520, file: !1019, line: 254, baseType: !35, size: 64, offset: 512)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4520, file: !1019, line: 256, baseType: !35, size: 64, offset: 576)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4520, file: !1019, line: 257, baseType: !35, size: 64, offset: 640)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4520, file: !1019, line: 258, baseType: !35, size: 64, offset: 704)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4520, file: !1019, line: 260, baseType: !4535, size: 64, offset: 768)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1019, line: 156, size: 192, elements: !4537)
!4537 = !{!4538, !4539, !4541}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4536, file: !1019, line: 157, baseType: !4535, size: 64)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4536, file: !1019, line: 158, baseType: !4540, size: 64, offset: 64)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4536, file: !1019, line: 162, baseType: !147, size: 32, offset: 128)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4520, file: !1019, line: 262, baseType: !4540, size: 64, offset: 832)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4520, file: !1019, line: 264, baseType: !147, size: 32, offset: 896)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4520, file: !1019, line: 268, baseType: !147, size: 32, offset: 928)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4520, file: !1019, line: 270, baseType: !1045, size: 64, offset: 960)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4520, file: !1019, line: 274, baseType: !249, size: 16, offset: 1024)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4520, file: !1019, line: 275, baseType: !1048, size: 8, offset: 1040)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4520, file: !1019, line: 276, baseType: !1050, size: 8, offset: 1048)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4520, file: !1019, line: 280, baseType: !1054, size: 64, offset: 1088)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4520, file: !1019, line: 289, baseType: !1057, size: 64, offset: 1152)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4520, file: !1019, line: 297, baseType: !37, size: 64, offset: 1216)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4520, file: !1019, line: 298, baseType: !37, size: 64, offset: 1280)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4520, file: !1019, line: 299, baseType: !37, size: 64, offset: 1344)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4520, file: !1019, line: 300, baseType: !37, size: 64, offset: 1408)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4520, file: !1019, line: 302, baseType: !62, size: 64, offset: 1472)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4520, file: !1019, line: 303, baseType: !147, size: 32, offset: 1536)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4520, file: !1019, line: 305, baseType: !1065, size: 160, offset: 1568)
!4558 = !DILocalVariable(name: "res_ptr", scope: !4498, file: !641, line: 190, type: !35)
!4559 = !DILocalVariable(name: "res_size", scope: !4498, file: !641, line: 191, type: !62)
!4560 = !DILocalVariable(name: "c", scope: !4495, file: !641, line: 195, type: !147)
!4561 = !DILocalVariable(name: "buf2", scope: !4495, file: !641, line: 197, type: !4562)
!4562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 408, elements: !4563)
!4563 = !{!4564}
!4564 = !DISubrange(count: 51)
!4565 = !DILocalVariable(name: "l1", scope: !4495, file: !641, line: 198, type: !62)
!4566 = !DILocalVariable(name: "l2", scope: !4495, file: !641, line: 198, type: !62)
!4567 = !DILocalVariable(name: "old_res_ptr", scope: !4495, file: !641, line: 199, type: !35)
!4568 = !DILocation(line: 196, column: 28, scope: !4495, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 589, column: 18, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4488, file: !641, line: 589, column: 3)
!4571 = !DILocation(line: 197, column: 28, scope: !4495, inlinedAt: !4569)
!4572 = !DILocation(line: 403, column: 13, scope: !4488)
!4573 = !DILocation(line: 395, column: 15, scope: !4488)
!4574 = !DILocation(line: 584, column: 15, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4488, file: !641, line: 584, column: 7)
!4576 = !DILocation(line: 584, column: 7, scope: !4488)
!4577 = !DILocation(line: 128, column: 8, scope: !4506, inlinedAt: !4569)
!4578 = !DILocation(line: 126, column: 15, scope: !4506, inlinedAt: !4569)
!4579 = !DILocation(line: 129, column: 10, scope: !4505, inlinedAt: !4569)
!4580 = !DILocation(line: 129, column: 7, scope: !4506, inlinedAt: !4569)
!4581 = !DILocation(line: 138, column: 13, scope: !4504, inlinedAt: !4569)
!4582 = !DILocation(line: 132, column: 19, scope: !4504, inlinedAt: !4569)
!4583 = !DILocation(line: 139, column: 15, scope: !4584, inlinedAt: !4569)
!4584 = distinct !DILexicalBlock(scope: !4504, file: !641, line: 139, column: 11)
!4585 = !DILocation(line: 139, column: 23, scope: !4584, inlinedAt: !4569)
!4586 = !DILocation(line: 139, column: 26, scope: !4584, inlinedAt: !4569)
!4587 = !DILocation(line: 139, column: 33, scope: !4584, inlinedAt: !4569)
!4588 = !DILocation(line: 139, column: 11, scope: !4504, inlinedAt: !4569)
!4589 = !DILocation(line: 140, column: 9, scope: !4584, inlinedAt: !4569)
!4590 = !DILocation(line: 144, column: 26, scope: !4513, inlinedAt: !4569)
!4591 = !DILocation(line: 144, column: 16, scope: !4513, inlinedAt: !4569)
!4592 = !DILocation(line: 145, column: 16, scope: !4513, inlinedAt: !4569)
!4593 = !DILocation(line: 146, column: 34, scope: !4513, inlinedAt: !4569)
!4594 = !DILocation(line: 146, column: 38, scope: !4513, inlinedAt: !4569)
!4595 = !DILocation(line: 146, column: 42, scope: !4513, inlinedAt: !4569)
!4596 = !DILocation(line: 147, column: 48, scope: !4513, inlinedAt: !4569)
!4597 = !DILocation(line: 147, column: 46, scope: !4513, inlinedAt: !4569)
!4598 = !DILocation(line: 147, column: 69, scope: !4513, inlinedAt: !4569)
!4599 = !DILocation(line: 147, column: 30, scope: !4513, inlinedAt: !4569)
!4600 = !DILocation(line: 134, column: 13, scope: !4504, inlinedAt: !4569)
!4601 = !DILocation(line: 148, column: 13, scope: !4513, inlinedAt: !4569)
!4602 = !DILocation(line: 150, column: 13, scope: !4603, inlinedAt: !4569)
!4603 = distinct !DILexicalBlock(scope: !4604, file: !641, line: 149, column: 11)
!4604 = distinct !DILexicalBlock(scope: !4513, file: !641, line: 148, column: 13)
!4605 = !DILocation(line: 151, column: 17, scope: !4603, inlinedAt: !4569)
!4606 = !DILocation(line: 152, column: 34, scope: !4607, inlinedAt: !4569)
!4607 = distinct !DILexicalBlock(scope: !4603, file: !641, line: 151, column: 17)
!4608 = !DILocation(line: 153, column: 41, scope: !4603, inlinedAt: !4569)
!4609 = !DILocation(line: 153, column: 13, scope: !4603, inlinedAt: !4569)
!4610 = !DILocation(line: 157, column: 11, scope: !4504, inlinedAt: !4569)
!4611 = !DILocation(line: 171, column: 16, scope: !4502, inlinedAt: !4569)
!4612 = !DILocation(line: 162, column: 15, scope: !4502, inlinedAt: !4569)
!4613 = !DILocation(line: 173, column: 18, scope: !4501, inlinedAt: !4569)
!4614 = !DILocation(line: 173, column: 15, scope: !4502, inlinedAt: !4569)
!4615 = !DILocation(line: 180, column: 20, scope: !4500, inlinedAt: !4569)
!4616 = !DILocation(line: 178, column: 21, scope: !4500, inlinedAt: !4569)
!4617 = !DILocation(line: 181, column: 22, scope: !4499, inlinedAt: !4569)
!4618 = !DILocation(line: 181, column: 19, scope: !4500, inlinedAt: !4569)
!4619 = !DILocation(line: 184, column: 19, scope: !4620, inlinedAt: !4569)
!4620 = distinct !DILexicalBlock(scope: !4499, file: !641, line: 182, column: 17)
!4621 = !DILocation(line: 186, column: 17, scope: !4620, inlinedAt: !4569)
!4622 = !DILocation(line: 190, column: 25, scope: !4498, inlinedAt: !4569)
!4623 = !DILocation(line: 191, column: 26, scope: !4498, inlinedAt: !4569)
!4624 = !DILocation(line: 193, column: 19, scope: !4498, inlinedAt: !4569)
!4625 = !DILocation(line: 196, column: 23, scope: !4495, inlinedAt: !4569)
!4626 = !DILocation(line: 197, column: 23, scope: !4495, inlinedAt: !4569)
!4627 = !DILocalVariable(name: "__fp", arg: 1, scope: !4628, file: !1150, line: 63, type: !4518)
!4628 = distinct !DISubprogram(name: "getc_unlocked", scope: !1150, file: !1150, line: 63, type: !4629, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !298, variables: !4631)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!147, !4518}
!4631 = !{!4627}
!4632 = !DILocation(line: 63, column: 22, scope: !4628, inlinedAt: !4633)
!4633 = distinct !DILocation(line: 201, column: 27, scope: !4495, inlinedAt: !4569)
!4634 = !DILocation(line: 65, column: 10, scope: !4628, inlinedAt: !4633)
!4635 = !DILocation(line: 195, column: 27, scope: !4495, inlinedAt: !4569)
!4636 = !DILocation(line: 202, column: 27, scope: !4495, inlinedAt: !4569)
!4637 = distinct !{!4637, !4638, !4641}
!4638 = !DILocation(line: 209, column: 27, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4640, file: !641, line: 207, column: 25)
!4640 = distinct !DILexicalBlock(scope: !4495, file: !641, line: 206, column: 27)
!4641 = !DILocation(line: 211, column: 58, scope: !4639)
!4642 = !DILocation(line: 65, column: 10, scope: !4628, inlinedAt: !4643)
!4643 = distinct !DILocation(line: 210, column: 33, scope: !4639, inlinedAt: !4569)
!4644 = !DILocation(line: 63, column: 22, scope: !4628, inlinedAt: !4643)
!4645 = !DILocation(line: 210, column: 29, scope: !4639, inlinedAt: !4569)
!4646 = distinct !{!4646, !4647, !4648}
!4647 = !DILocation(line: 193, column: 19, scope: !4497)
!4648 = !DILocation(line: 241, column: 21, scope: !4497)
!4649 = !DILocation(line: 216, column: 23, scope: !4495, inlinedAt: !4569)
!4650 = !DILocation(line: 217, column: 27, scope: !4651, inlinedAt: !4569)
!4651 = distinct !DILexicalBlock(scope: !4495, file: !641, line: 217, column: 27)
!4652 = !DILocation(line: 217, column: 64, scope: !4651, inlinedAt: !4569)
!4653 = !DILocation(line: 217, column: 27, scope: !4495, inlinedAt: !4569)
!4654 = !DILocation(line: 219, column: 28, scope: !4495, inlinedAt: !4569)
!4655 = !DILocation(line: 198, column: 30, scope: !4495, inlinedAt: !4569)
!4656 = !DILocation(line: 220, column: 28, scope: !4495, inlinedAt: !4569)
!4657 = !DILocation(line: 198, column: 34, scope: !4495, inlinedAt: !4569)
!4658 = !DILocation(line: 199, column: 29, scope: !4495, inlinedAt: !4569)
!4659 = !DILocation(line: 222, column: 36, scope: !4660, inlinedAt: !4569)
!4660 = distinct !DILexicalBlock(scope: !4495, file: !641, line: 222, column: 27)
!4661 = !DILocation(line: 222, column: 27, scope: !4495, inlinedAt: !4569)
!4662 = !DILocation(line: 225, column: 63, scope: !4663, inlinedAt: !4569)
!4663 = distinct !DILexicalBlock(scope: !4660, file: !641, line: 223, column: 25)
!4664 = !DILocation(line: 225, column: 46, scope: !4663, inlinedAt: !4569)
!4665 = !DILocation(line: 226, column: 25, scope: !4663, inlinedAt: !4569)
!4666 = !DILocation(line: 229, column: 36, scope: !4667, inlinedAt: !4569)
!4667 = distinct !DILexicalBlock(scope: !4660, file: !641, line: 228, column: 25)
!4668 = !DILocation(line: 230, column: 73, scope: !4667, inlinedAt: !4569)
!4669 = !DILocation(line: 230, column: 46, scope: !4667, inlinedAt: !4569)
!4670 = !DILocation(line: 232, column: 35, scope: !4671, inlinedAt: !4569)
!4671 = distinct !DILexicalBlock(scope: !4495, file: !641, line: 232, column: 27)
!4672 = !DILocation(line: 232, column: 27, scope: !4495, inlinedAt: !4569)
!4673 = !DILocation(line: 236, column: 27, scope: !4674, inlinedAt: !4569)
!4674 = distinct !DILexicalBlock(scope: !4671, file: !641, line: 233, column: 25)
!4675 = !DILocation(line: 237, column: 27, scope: !4674, inlinedAt: !4569)
!4676 = !DILocation(line: 241, column: 21, scope: !4496, inlinedAt: !4569)
!4677 = !DILocation(line: 239, column: 39, scope: !4495, inlinedAt: !4569)
!4678 = !DILocation(line: 239, column: 50, scope: !4495, inlinedAt: !4569)
!4679 = !DILocation(line: 239, column: 61, scope: !4495, inlinedAt: !4569)
!4680 = !DILocalVariable(name: "__dest", arg: 1, scope: !4681, file: !879, line: 88, type: !882)
!4681 = distinct !DISubprogram(name: "strcpy", scope: !879, file: !879, line: 88, type: !880, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !298, variables: !4682)
!4682 = !{!4680, !4683}
!4683 = !DILocalVariable(name: "__src", arg: 2, scope: !4681, file: !879, line: 88, type: !883)
!4684 = !DILocation(line: 88, column: 1, scope: !4681, inlinedAt: !4685)
!4685 = distinct !DILocation(line: 239, column: 23, scope: !4495, inlinedAt: !4569)
!4686 = !DILocation(line: 90, column: 49, scope: !4681, inlinedAt: !4685)
!4687 = !DILocation(line: 90, column: 10, scope: !4681, inlinedAt: !4685)
!4688 = !DILocation(line: 88, column: 1, scope: !4681, inlinedAt: !4689)
!4689 = distinct !DILocation(line: 240, column: 23, scope: !4495, inlinedAt: !4569)
!4690 = !DILocation(line: 90, column: 49, scope: !4681, inlinedAt: !4689)
!4691 = !DILocation(line: 90, column: 10, scope: !4681, inlinedAt: !4689)
!4692 = !DILocation(line: 193, column: 19, scope: !4496, inlinedAt: !4569)
!4693 = !DILocation(line: 242, column: 19, scope: !4498, inlinedAt: !4569)
!4694 = !DILocation(line: 243, column: 32, scope: !4695, inlinedAt: !4569)
!4695 = distinct !DILexicalBlock(scope: !4498, file: !641, line: 243, column: 23)
!4696 = !DILocation(line: 243, column: 23, scope: !4498, inlinedAt: !4569)
!4697 = !DILocation(line: 247, column: 33, scope: !4698, inlinedAt: !4569)
!4698 = distinct !DILexicalBlock(scope: !4695, file: !641, line: 246, column: 21)
!4699 = !DILocation(line: 247, column: 45, scope: !4698, inlinedAt: !4569)
!4700 = !DILocation(line: 253, column: 11, scope: !4502, inlinedAt: !4569)
!4701 = !DILocation(line: 377, column: 23, scope: !4504, inlinedAt: !4569)
!4702 = !DILocation(line: 378, column: 5, scope: !4504, inlinedAt: !4569)
!4703 = !DILocation(line: 396, column: 15, scope: !4488)
!4704 = !DILocation(line: 590, column: 8, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4570, file: !641, line: 589, column: 3)
!4706 = !DILocation(line: 590, column: 17, scope: !4705)
!4707 = !DILocation(line: 589, column: 3, scope: !4570)
!4708 = !DILocation(line: 592, column: 9, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4705, file: !641, line: 592, column: 9)
!4710 = !DILocation(line: 592, column: 35, scope: !4709)
!4711 = !DILocation(line: 593, column: 9, scope: !4709)
!4712 = !DILocation(line: 593, column: 24, scope: !4709)
!4713 = !DILocation(line: 593, column: 31, scope: !4709)
!4714 = !DILocation(line: 593, column: 34, scope: !4709)
!4715 = !DILocation(line: 593, column: 45, scope: !4709)
!4716 = !DILocation(line: 592, column: 9, scope: !4705)
!4717 = !DILocation(line: 595, column: 29, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4709, file: !641, line: 594, column: 7)
!4719 = !DILocation(line: 595, column: 27, scope: !4718)
!4720 = !DILocation(line: 595, column: 46, scope: !4718)
!4721 = !DILocation(line: 596, column: 9, scope: !4718)
!4722 = !DILocation(line: 591, column: 19, scope: !4705)
!4723 = !DILocation(line: 591, column: 36, scope: !4705)
!4724 = !DILocation(line: 591, column: 16, scope: !4705)
!4725 = !DILocation(line: 591, column: 52, scope: !4705)
!4726 = !DILocation(line: 591, column: 69, scope: !4705)
!4727 = !DILocation(line: 591, column: 49, scope: !4705)
!4728 = distinct !{!4728, !4707, !4729}
!4729 = !DILocation(line: 597, column: 7, scope: !4570)
!4730 = !DILocation(line: 602, column: 7, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4488, file: !641, line: 602, column: 7)
!4732 = !DILocation(line: 602, column: 18, scope: !4731)
!4733 = !DILocation(line: 602, column: 7, scope: !4488)
!4734 = !DILocation(line: 612, column: 3, scope: !4488)
