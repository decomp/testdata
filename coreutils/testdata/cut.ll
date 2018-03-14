; ModuleID = 'coreutils-8.27/src/cut.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.field_range_pair = type { i64, i64 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s OPTION... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Print selected parts of lines from each FILE to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.28 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [177 x i8] c"  -b, --bytes=LIST        select only these bytes\0A  -c, --characters=LIST   select only these characters\0A  -d, --delimiter=DELIM   use DELIM instead of TAB for field delimiter\0A\00", align 1
@.str.4 = private unnamed_addr constant [238 x i8] c"  -f, --fields=LIST       select only these fields;  also print any line\0A                            that contains no delimiter character, unless\0A                            the -s option is specified\0A  -n                      (ignored)\0A\00", align 1
@.str.5 = private unnamed_addr constant [114 x i8] c"      --complement        complement the set of selected bytes, characters\0A                            or fields\0A\00", align 1
@.str.6 = private unnamed_addr constant [210 x i8] c"  -s, --only-delimited    do not print lines not containing delimiters\0A      --output-delimiter=STRING  use STRING as the output delimiter\0A                            the default is to use the input delimiter\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [204 x i8] c"\0AUse one, and only one of -b, -c or -f.  Each LIST is made up of one\0Arange, or many ranges separated by commas.  Selected input is written\0Ain the same order that it is read, and is written exactly once.\0A\00", align 1
@.str.11 = private unnamed_addr constant [262 x i8] c"Each range is one of:\0A\0A  N     N'th byte, character or field, counted from 1\0A  N-    from N'th byte, character or field, to end of line\0A  N-M   from N'th to M'th (included) byte, character or field\0A  -M    from first to M'th (included) byte, character or field\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"cut\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.40 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@operating_mode = internal unnamed_addr global i32 0, align 4, !dbg !0
@suppress_non_delimited = internal unnamed_addr global i1 false, align 1
@delim = internal unnamed_addr global i8 0, align 1, !dbg !71
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"b:c:d:f:nsz\00", align 1
@longopts = internal constant [11 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !103
@.str.17 = private unnamed_addr constant [39 x i8] c"only one type of list may be specified\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.18 = private unnamed_addr constant [41 x i8] c"the delimiter must be a single character\00", align 1
@output_delimiter_specified = internal unnamed_addr global i1 false, align 1
@output_delimiter_length = internal unnamed_addr global i64 0, align 8, !dbg !75
@output_delimiter_string = internal unnamed_addr global i8* null, align 8, !dbg !77
@line_delim = internal unnamed_addr global i1 false, align 1
@complement = internal unnamed_addr global i1 false, align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"you must specify a list of bytes, characters, or fields\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c"an input delimiter may be specified only when operating on fields\00", align 1
@.str.25 = private unnamed_addr constant [75 x i8] c"suppressing non-delimited lines makes sense\0A\09only when operating on fields\00", align 1
@main.dummy = internal global [2 x i8] zeroinitializer, align 1, !dbg !49
@optind = external local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.54 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@current_rp = internal unnamed_addr global %struct.field_range_pair* null, align 8, !dbg !119
@field_1_buffer = internal global i8* null, align 8, !dbg !126
@field_1_bufsize = internal global i64 0, align 8, !dbg !128
@.str.56 = private unnamed_addr constant [13 x i8] c"n_bytes != 0\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"src/cut.c\00", align 1
@__PRETTY_FUNCTION__.cut_fields = private unnamed_addr constant [24 x i8] c"void cut_fields(FILE *)\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"characters\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"delimiter\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"only-delimited\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"output-delimiter\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"complement\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@n_frp = common local_unnamed_addr global i64 0, align 8, !dbg !130
@frp = common local_unnamed_addr global %struct.field_range_pair* null, align 8, !dbg !202
@.str.29 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2.30 = private unnamed_addr constant [20 x i8] c"invalid field range\00", align 1
@.str.1.31 = private unnamed_addr constant [32 x i8] c"invalid byte or character range\00", align 1
@.str.4.32 = private unnamed_addr constant [27 x i8] c"fields are numbered from 1\00", align 1
@.str.3.33 = private unnamed_addr constant [45 x i8] c"byte/character positions are numbered from 1\00", align 1
@.str.5.34 = private unnamed_addr constant [34 x i8] c"invalid range with no endpoint: -\00", align 1
@n_frp_allocated = internal global i64 0, align 8, !dbg !205
@.str.6.35 = private unnamed_addr constant [25 x i8] c"invalid decreasing range\00", align 1
@set_fields.num_start = internal unnamed_addr global i8* null, align 8, !dbg !173
@.str.7.36 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.9.37 = private unnamed_addr constant [29 x i8] c"field number %s is too large\00", align 1
@.str.8.38 = private unnamed_addr constant [38 x i8] c"byte/character offset %s is too large\00", align 1
@.str.11.39 = private unnamed_addr constant [23 x i8] c"invalid field value %s\00", align 1
@.str.10.40 = private unnamed_addr constant [35 x i8] c"invalid byte/character position %s\00", align 1
@.str.13.41 = private unnamed_addr constant [23 x i8] c"missing list of fields\00", align 1
@.str.12.42 = private unnamed_addr constant [41 x i8] c"missing list of byte/character positions\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), align 8, !dbg !207
@.str.58 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !213
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !218
@.str.61 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.62 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.63 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !221
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !228
@.str.76 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.77 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.78 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.80, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.81, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.82, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.83, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.85, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.86, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.87, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.88, i32 0, i32 0), i8* null], align 16, !dbg !235
@.str.79 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.80 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.81 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.82 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.83 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.84 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.85 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.86 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.87 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.88 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !247
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !254
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !266
@.str.11.89 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.90 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.91 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.92 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.93 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.94 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.95 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !273
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !280
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !268
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !282
@.str.102 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.103 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.104 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.105 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.106 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.107 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.108 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.109 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.110 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.111 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.112 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.113 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.114 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.115 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.118 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.119 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.120 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.121 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.122 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.123 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !286
@.str.1.136 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.158 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.159 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.162 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !295
@.str.3.163 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.164 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.165 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.166 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.167 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.168 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !706 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !710, metadata !711), !dbg !712
  %2 = icmp eq i32 %0, 0, !dbg !713
  br i1 %2, label %8, label %3, !dbg !715

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !716, !tbaa !718
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !716
  %6 = load i8*, i8** @program_name, align 8, !dbg !716, !tbaa !718
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12, !dbg !716
  br label %63, !dbg !716

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !722
  %10 = load i8*, i8** @program_name, align 8, !dbg !722, !tbaa !718
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #12, !dbg !722
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !724
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !724, !tbaa !718
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12, !dbg !724
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.27, i64 0, i64 0), i32 5) #12, !dbg !725
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !725, !tbaa !718
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12, !dbg !725
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.28, i64 0, i64 0), i32 5) #12, !dbg !730
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !730, !tbaa !718
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #12, !dbg !730
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !733
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !733, !tbaa !718
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #12, !dbg !733
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([238 x i8], [238 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !734
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !734, !tbaa !718
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #12, !dbg !734
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !735
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !735, !tbaa !718
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #12, !dbg !735
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !736
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !736, !tbaa !718
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #12, !dbg !736
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 5) #12, !dbg !737
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !737, !tbaa !718
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #12, !dbg !737
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #12, !dbg !738
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !738, !tbaa !718
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #12, !dbg !738
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #12, !dbg !739
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !739, !tbaa !718
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #12, !dbg !739
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.10, i64 0, i64 0), i32 5) #12, !dbg !740
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !740, !tbaa !718
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #12, !dbg !740
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([262 x i8], [262 x i8]* @.str.11, i64 0, i64 0), i32 5) #12, !dbg !741
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !741, !tbaa !718
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #12, !dbg !741
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !91, metadata !711) #12, !dbg !742
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 0, metadata !91, metadata !711) #12, !dbg !742
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0), i32 5) #12, !dbg !744
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0)) #12, !dbg !744
  %50 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !745
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !99, metadata !711) #12, !dbg !746
  %51 = icmp eq i8* %50, null, !dbg !747
  br i1 %51, label %58, label %52, !dbg !749

; <label>:52:                                     ; preds = %8
  %53 = tail call i32 @strncmp(i8* nonnull %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i64 3) #14, !dbg !750
  %54 = icmp eq i32 %53, 0, !dbg !750
  br i1 %54, label %58, label %55, !dbg !751

; <label>:55:                                     ; preds = %52
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.40, i64 0, i64 0), i32 5) #12, !dbg !752
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !752
  br label %58, !dbg !754

; <label>:58:                                     ; preds = %8, %52, %55
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i64 0, i64 0), i32 5) #12, !dbg !755
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !755
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i64 0, i64 0), i32 5) #12, !dbg !756
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0)) #12, !dbg !756
  br label %63

; <label>:63:                                     ; preds = %58, %3
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !51 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !57, metadata !711), !dbg !758
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !58, metadata !711), !dbg !759
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !62, metadata !711), !dbg !760
  %3 = load i8*, i8** %1, align 8, !dbg !761, !tbaa !718
  tail call void @set_program_name(i8* %3) #12, !dbg !762
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #12, !dbg !763
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #12, !dbg !764
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !765
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !766
  store i32 0, i32* @operating_mode, align 4, !dbg !767, !tbaa !768
  store i1 false, i1* @suppress_non_delimited, align 1
  store i8 0, i8* @delim, align 1, !dbg !769, !tbaa !768
  store i1 false, i1* @have_read_stdin, align 1
  br label %8, !dbg !770

; <label>:8:                                      ; preds = %12, %2
  %9 = phi i8 [ 0, %2 ], [ %13, %12 ]
  %10 = phi i8* [ undef, %2 ], [ %14, %12 ]
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !63, metadata !711), !dbg !771
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !62, metadata !711), !dbg !760
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), %struct.option* getelementptr inbounds ([11 x %struct.option], [11 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #12, !dbg !772
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !59, metadata !711), !dbg !773
  switch i32 %11, label %56 [
    i32 -1, label %57
    i32 98, label %15
    i32 99, label %15
    i32 102, label %22
    i32 100, label %29
    i32 128, label %40
    i32 110, label %12
    i32 115, label %49
    i32 122, label %50
    i32 129, label %51
    i32 -130, label %52
    i32 -131, label %53
  ], !dbg !770

; <label>:12:                                     ; preds = %8, %51, %50, %49, %46, %39, %27, %20
  %13 = phi i8 [ %9, %51 ], [ %9, %50 ], [ %9, %49 ], [ %9, %46 ], [ 1, %39 ], [ %9, %27 ], [ %9, %20 ], [ %9, %8 ]
  %14 = phi i8* [ %10, %51 ], [ %10, %50 ], [ %10, %49 ], [ %10, %46 ], [ %10, %39 ], [ %28, %27 ], [ %21, %20 ], [ %10, %8 ]
  br label %8, !dbg !771, !llvm.loop !774

; <label>:15:                                     ; preds = %8, %8
  %16 = load i32, i32* @operating_mode, align 4, !dbg !776, !tbaa !768
  %17 = icmp eq i32 %16, 0, !dbg !780
  br i1 %17, label %20, label %18, !dbg !781

; <label>:18:                                     ; preds = %15
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i32 5) #12, !dbg !782
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %19) #12, !dbg !782
  tail call void @usage(i32 1) #16, !dbg !782
  unreachable, !dbg !782

; <label>:20:                                     ; preds = %15
  store i32 1, i32* @operating_mode, align 4, !dbg !784, !tbaa !768
  %21 = load i8*, i8** @optarg, align 8, !dbg !785, !tbaa !718
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !63, metadata !711), !dbg !771
  br label %12, !dbg !786

; <label>:22:                                     ; preds = %8
  %23 = load i32, i32* @operating_mode, align 4, !dbg !787, !tbaa !768
  %24 = icmp eq i32 %23, 0, !dbg !789
  br i1 %24, label %27, label %25, !dbg !790

; <label>:25:                                     ; preds = %22
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i32 5) #12, !dbg !791
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %26) #12, !dbg !791
  tail call void @usage(i32 1) #16, !dbg !791
  unreachable, !dbg !791

; <label>:27:                                     ; preds = %22
  store i32 2, i32* @operating_mode, align 4, !dbg !793, !tbaa !768
  %28 = load i8*, i8** @optarg, align 8, !dbg !794, !tbaa !718
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !63, metadata !711), !dbg !771
  br label %12, !dbg !795

; <label>:29:                                     ; preds = %8
  %30 = load i8*, i8** @optarg, align 8, !dbg !796, !tbaa !718
  %31 = load i8, i8* %30, align 1, !dbg !796, !tbaa !768
  %32 = icmp eq i8 %31, 0, !dbg !798
  br i1 %32, label %39, label %33, !dbg !799

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !800
  %35 = load i8, i8* %34, align 1, !dbg !800, !tbaa !768
  %36 = icmp eq i8 %35, 0, !dbg !801
  br i1 %36, label %39, label %37, !dbg !802

; <label>:37:                                     ; preds = %33
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i32 5) #12, !dbg !803
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %38) #12, !dbg !803
  tail call void @usage(i32 1) #16, !dbg !803
  unreachable, !dbg !803

; <label>:39:                                     ; preds = %33, %29
  store i8 %31, i8* @delim, align 1, !dbg !805, !tbaa !768
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !62, metadata !711), !dbg !760
  br label %12, !dbg !806

; <label>:40:                                     ; preds = %8
  store i1 true, i1* @output_delimiter_specified, align 1
  %41 = load i8*, i8** @optarg, align 8, !dbg !807, !tbaa !718
  %42 = load i8, i8* %41, align 1, !dbg !807, !tbaa !768
  %43 = icmp eq i8 %42, 0, !dbg !808
  br i1 %43, label %46, label %44, !dbg !807

; <label>:44:                                     ; preds = %40
  %45 = tail call i64 @strlen(i8* %41) #14, !dbg !809
  br label %46, !dbg !807

; <label>:46:                                     ; preds = %40, %44
  %47 = phi i64 [ %45, %44 ], [ 1, %40 ], !dbg !807
  store i64 %47, i64* @output_delimiter_length, align 8, !dbg !810, !tbaa !811
  %48 = tail call noalias i8* @xstrdup(i8* %41) #12, !dbg !813
  store i8* %48, i8** @output_delimiter_string, align 8, !dbg !814, !tbaa !718
  br label %12, !dbg !815

; <label>:49:                                     ; preds = %8
  store i1 true, i1* @suppress_non_delimited, align 1
  br label %12, !dbg !816

; <label>:50:                                     ; preds = %8
  store i1 true, i1* @line_delim, align 1
  br label %12, !dbg !817

; <label>:51:                                     ; preds = %8
  store i1 true, i1* @complement, align 1
  br label %12, !dbg !818

; <label>:52:                                     ; preds = %8
  tail call void @usage(i32 0) #16, !dbg !819
  unreachable, !dbg !819

; <label>:53:                                     ; preds = %8
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !820, !tbaa !718
  %55 = load i8*, i8** @Version, align 8, !dbg !820, !tbaa !718
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* null) #12, !dbg !820
  tail call void @exit(i32 0) #15, !dbg !820
  unreachable, !dbg !820

; <label>:56:                                     ; preds = %8
  tail call void @usage(i32 1) #16, !dbg !821
  unreachable, !dbg !821

; <label>:57:                                     ; preds = %8
  %58 = load i32, i32* @operating_mode, align 4, !dbg !822, !tbaa !768
  %59 = icmp eq i32 %58, 0, !dbg !824
  br i1 %59, label %60, label %62, !dbg !825

; <label>:60:                                     ; preds = %57
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i64 0, i64 0), i32 5) #12, !dbg !826
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %61) #12, !dbg !826
  tail call void @usage(i32 1) #16, !dbg !826
  unreachable, !dbg !826

; <label>:62:                                     ; preds = %57
  %63 = icmp ne i8 %9, 0, !dbg !828
  %64 = icmp ne i32 %58, 2, !dbg !830
  %65 = and i1 %63, %64, !dbg !831
  br i1 %65, label %66, label %68, !dbg !831

; <label>:66:                                     ; preds = %62
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.24, i64 0, i64 0), i32 5) #12, !dbg !832
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %67) #12, !dbg !832
  tail call void @usage(i32 1) #16, !dbg !832
  unreachable, !dbg !832

; <label>:68:                                     ; preds = %62
  %69 = load i1, i1* @suppress_non_delimited, align 1
  %70 = and i1 %64, %69, !dbg !834
  br i1 %70, label %71, label %73, !dbg !834

; <label>:71:                                     ; preds = %68
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !836
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %72) #12, !dbg !836
  tail call void @usage(i32 1) #16, !dbg !836
  unreachable, !dbg !836

; <label>:73:                                     ; preds = %68
  %74 = icmp eq i32 %58, 2, !dbg !838
  %75 = select i1 %74, i32 0, i32 4, !dbg !839
  %76 = load i1, i1* @complement, align 1
  %77 = select i1 %76, i32 2, i32 0, !dbg !840
  %78 = or i32 %77, %75, !dbg !841
  tail call void @set_fields(i8* %10, i32 %78) #12, !dbg !842
  br i1 %63, label %80, label %79, !dbg !843

; <label>:79:                                     ; preds = %73
  store i8 9, i8* @delim, align 1, !dbg !844, !tbaa !768
  br label %80, !dbg !846

; <label>:80:                                     ; preds = %79, %73
  %81 = load i8*, i8** @output_delimiter_string, align 8, !dbg !847, !tbaa !718
  %82 = icmp eq i8* %81, null, !dbg !849
  br i1 %82, label %83, label %85, !dbg !850

; <label>:83:                                     ; preds = %80
  %84 = load i8, i8* @delim, align 1, !dbg !851, !tbaa !768
  store i8 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dummy, i64 0, i64 0), align 1, !dbg !853, !tbaa !768
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dummy, i64 0, i64 1), align 1, !dbg !854, !tbaa !768
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dummy, i64 0, i64 0), i8** @output_delimiter_string, align 8, !dbg !855, !tbaa !718
  store i64 1, i64* @output_delimiter_length, align 8, !dbg !856, !tbaa !811
  br label %85, !dbg !857

; <label>:85:                                     ; preds = %83, %80
  %86 = load i32, i32* @optind, align 4, !dbg !858, !tbaa !860
  %87 = icmp eq i32 %86, %0, !dbg !862
  br i1 %87, label %88, label %91, !dbg !863

; <label>:88:                                     ; preds = %85
  %89 = tail call fastcc zeroext i1 @cut_file(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)), !dbg !864
  %90 = zext i1 %89 to i8, !dbg !865
  tail call void @llvm.dbg.value(metadata i8 %90, i64 0, metadata !60, metadata !711), !dbg !866
  br label %106, !dbg !867

; <label>:91:                                     ; preds = %85
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !60, metadata !711), !dbg !866
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !60, metadata !711), !dbg !866
  %92 = icmp slt i32 %86, %0, !dbg !868
  br i1 %92, label %93, label %106, !dbg !871

; <label>:93:                                     ; preds = %91
  br label %94, !dbg !872

; <label>:94:                                     ; preds = %93, %94
  %95 = phi i32 [ %104, %94 ], [ %86, %93 ]
  %96 = phi i8 [ %102, %94 ], [ 1, %93 ]
  tail call void @llvm.dbg.value(metadata i8 %96, i64 0, metadata !60, metadata !711), !dbg !866
  %97 = sext i32 %95 to i64, !dbg !872
  %98 = getelementptr inbounds i8*, i8** %1, i64 %97, !dbg !872
  %99 = load i8*, i8** %98, align 8, !dbg !872, !tbaa !718
  %100 = tail call fastcc zeroext i1 @cut_file(i8* %99), !dbg !873
  %101 = zext i1 %100 to i8, !dbg !873
  %102 = and i8 %96, %101, !dbg !874
  tail call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !60, metadata !711), !dbg !866
  %103 = load i32, i32* @optind, align 4, !dbg !875, !tbaa !860
  %104 = add nsw i32 %103, 1, !dbg !875
  store i32 %104, i32* @optind, align 4, !dbg !875, !tbaa !860
  tail call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !60, metadata !711), !dbg !866
  %105 = icmp slt i32 %104, %0, !dbg !868
  br i1 %105, label %94, label %106, !dbg !871, !llvm.loop !876

; <label>:106:                                    ; preds = %94, %91, %88
  %107 = phi i8 [ %90, %88 ], [ 1, %91 ], [ %102, %94 ]
  tail call void @llvm.dbg.value(metadata i8 %107, i64 0, metadata !60, metadata !711), !dbg !866
  %108 = load i1, i1* @have_read_stdin, align 1
  br i1 %108, label %109, label %116, !dbg !878

; <label>:109:                                    ; preds = %106
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !880, !tbaa !718
  %111 = tail call i32 @rpl_fclose(%struct._IO_FILE* %110) #12, !dbg !881
  %112 = icmp eq i32 %111, -1, !dbg !882
  br i1 %112, label %113, label %116, !dbg !883

; <label>:113:                                    ; preds = %109
  %114 = tail call i32* @__errno_location() #17, !dbg !884
  %115 = load i32, i32* %114, align 4, !dbg !884, !tbaa !860
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !886
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !60, metadata !711), !dbg !866
  br label %116, !dbg !887

; <label>:116:                                    ; preds = %113, %109, %106
  %117 = phi i8 [ 0, %113 ], [ %107, %109 ], [ %107, %106 ]
  tail call void @llvm.dbg.value(metadata i8 %117, i64 0, metadata !60, metadata !711), !dbg !866
  %118 = and i8 %117, 1, !dbg !888
  %119 = xor i8 %118, 1, !dbg !888
  %120 = zext i8 %119 to i32, !dbg !888
  ret i32 %120, !dbg !889
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

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @cut_file(i8*) unnamed_addr #6 !dbg !890 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !894, metadata !711), !dbg !951
  %2 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #14, !dbg !952
  %3 = icmp eq i32 %2, 0, !dbg !952
  br i1 %3, label %4, label %6, !dbg !954

; <label>:4:                                      ; preds = %1
  store i1 true, i1* @have_read_stdin, align 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !955, !tbaa !718
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %5, i64 0, metadata !895, metadata !711), !dbg !957
  br label %13, !dbg !958

; <label>:6:                                      ; preds = %1
  %7 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)), !dbg !959
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, i64 0, metadata !895, metadata !711), !dbg !957
  %8 = icmp eq %struct._IO_FILE* %7, null, !dbg !961
  br i1 %8, label %9, label %13, !dbg !963

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #17, !dbg !964
  %11 = load i32, i32* %10, align 4, !dbg !964, !tbaa !860
  %12 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #12, !dbg !966
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %12) #12, !dbg !967
  br label %416, !dbg !968

; <label>:13:                                     ; preds = %6, %4
  %14 = phi %struct._IO_FILE* [ %5, %4 ], [ %7, %6 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !895, metadata !711), !dbg !957
  tail call void @fadvise(%struct._IO_FILE* %14, i32 2) #12, !dbg !969
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !970, metadata !711) #12, !dbg !975
  %15 = load i32, i32* @operating_mode, align 4, !dbg !977, !tbaa !768
  %16 = icmp eq i32 %15, 1, !dbg !979
  %17 = load i64, i64* bitcast (%struct.field_range_pair** @frp to i64*), align 8, !tbaa !718
  store i64 %17, i64* bitcast (%struct.field_range_pair** @current_rp to i64*), align 8, !tbaa !718
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 1
  br i1 %16, label %19, label %113, !dbg !980

; <label>:19:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !981, metadata !711) #12, !dbg !988
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !984, metadata !711) #12, !dbg !990
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !985, metadata !711) #12, !dbg !991
  %20 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 2
  br label %21, !dbg !992

; <label>:21:                                     ; preds = %110, %19
  %22 = phi i64 [ 0, %19 ], [ %111, %110 ]
  %23 = phi i8 [ 0, %19 ], [ %112, %110 ]
  br label %24, !dbg !993

; <label>:24:                                     ; preds = %21, %79
  %25 = phi i64 [ %72, %79 ], [ %22, %21 ]
  tail call void @llvm.dbg.value(metadata i8 %23, i64 0, metadata !985, metadata !711) #12, !dbg !991
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !999, metadata !711) #12, !dbg !1001
  %26 = load i8*, i8** %18, align 8, !dbg !993, !tbaa !1002
  %27 = load i8*, i8** %20, align 8, !dbg !993, !tbaa !1005
  %28 = icmp ult i8* %26, %27, !dbg !993
  br i1 %28, label %31, label %29, !dbg !993, !prof !1006

; <label>:29:                                     ; preds = %24
  %30 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #12, !dbg !993
  br label %35, !dbg !993

; <label>:31:                                     ; preds = %24
  %32 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !993
  store i8* %32, i8** %18, align 8, !dbg !993, !tbaa !1002
  %33 = load i8, i8* %26, align 1, !dbg !993, !tbaa !768
  %34 = zext i8 %33 to i32, !dbg !993
  br label %35, !dbg !993

; <label>:35:                                     ; preds = %31, %29
  %36 = phi i32 [ %30, %29 ], [ %34, %31 ], !dbg !993
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !986, metadata !711) #12, !dbg !1007
  %37 = load i1, i1* @line_delim, align 1
  %38 = select i1 %37, i32 0, i32 10, !dbg !1008
  %39 = icmp eq i32 %36, %38, !dbg !1010
  br i1 %39, label %40, label %55, !dbg !1011

; <label>:40:                                     ; preds = %35
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !1012, metadata !711) #12, !dbg !1017
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1020, !tbaa !718
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 5, !dbg !1020
  %43 = load i8*, i8** %42, align 8, !dbg !1020, !tbaa !1021
  %44 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 6, !dbg !1020
  %45 = load i8*, i8** %44, align 8, !dbg !1020, !tbaa !1022
  %46 = icmp ult i8* %43, %45, !dbg !1020
  br i1 %46, label %50, label %47, !dbg !1020, !prof !1006

; <label>:47:                                     ; preds = %40
  %48 = and i32 %36, 255, !dbg !1020
  %49 = tail call i32 @__overflow(%struct._IO_FILE* %41, i32 %48) #12, !dbg !1020
  br label %53, !dbg !1020

; <label>:50:                                     ; preds = %40
  %51 = trunc i32 %36 to i8, !dbg !1020
  %52 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !1020
  store i8* %52, i8** %42, align 8, !dbg !1020, !tbaa !1021
  store i8 %51, i8* %43, align 1, !dbg !1020, !tbaa !768
  br label %53, !dbg !1020

; <label>:53:                                     ; preds = %50, %47
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !984, metadata !711) #12, !dbg !990
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !985, metadata !711) #12, !dbg !991
  %54 = load i64, i64* bitcast (%struct.field_range_pair** @frp to i64*), align 8, !dbg !1023, !tbaa !718
  store i64 %54, i64* bitcast (%struct.field_range_pair** @current_rp to i64*), align 8, !dbg !1024, !tbaa !718
  br label %110, !dbg !1025

; <label>:55:                                     ; preds = %35
  %56 = icmp eq i32 %36, -1, !dbg !1026
  br i1 %56, label %57, label %71, !dbg !1028

; <label>:57:                                     ; preds = %55
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !984, metadata !711) #12, !dbg !990
  %58 = icmp eq i64 %25, 0, !dbg !1029
  br i1 %58, label %396, label %59, !dbg !1032

; <label>:59:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !1012, metadata !711) #12, !dbg !1033
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1035, !tbaa !718
  %61 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %60, i64 0, i32 5, !dbg !1035
  %62 = load i8*, i8** %61, align 8, !dbg !1035, !tbaa !1021
  %63 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %60, i64 0, i32 6, !dbg !1035
  %64 = load i8*, i8** %63, align 8, !dbg !1035, !tbaa !1022
  %65 = icmp ult i8* %62, %64, !dbg !1035
  br i1 %65, label %68, label %66, !dbg !1035, !prof !1006

; <label>:66:                                     ; preds = %59
  %67 = tail call i32 @__overflow(%struct._IO_FILE* %60, i32 %38) #12, !dbg !1035
  br label %396, !dbg !1035

; <label>:68:                                     ; preds = %59
  %69 = trunc i32 %38 to i8, !dbg !1035
  %70 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1035
  store i8* %70, i8** %61, align 8, !dbg !1035, !tbaa !1021
  store i8 %69, i8* %62, align 1, !dbg !1035, !tbaa !768
  br label %396, !dbg !1035

; <label>:71:                                     ; preds = %55
  %72 = add i64 %25, 1, !dbg !1036
  %73 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1044, !tbaa !718
  %74 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %73, i64 0, i32 1, !dbg !1046
  %75 = load i64, i64* %74, align 8, !dbg !1046, !tbaa !1047
  %76 = icmp ugt i64 %72, %75, !dbg !1049
  br i1 %76, label %77, label %79, !dbg !1050

; <label>:77:                                     ; preds = %71
  %78 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %73, i64 1, !dbg !1051
  store %struct.field_range_pair* %78, %struct.field_range_pair** @current_rp, align 8, !dbg !1051, !tbaa !718
  br label %79, !dbg !1052

; <label>:79:                                     ; preds = %77, %71
  %80 = phi %struct.field_range_pair* [ %73, %71 ], [ %78, %77 ], !dbg !1053
  tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !984, metadata !711) #12, !dbg !990
  tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !1058, metadata !711) #12, !dbg !1061
  %81 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %80, i64 0, i32 0, !dbg !1062
  %82 = load i64, i64* %81, align 8, !dbg !1062, !tbaa !1063
  %83 = icmp ugt i64 %82, %72, !dbg !1064
  br i1 %83, label %24, label %84, !dbg !1065, !llvm.loop !1066

; <label>:84:                                     ; preds = %79
  %85 = load i1, i1* @output_delimiter_specified, align 1
  br i1 %85, label %86, label %96, !dbg !1069

; <label>:86:                                     ; preds = %84
  %87 = and i8 %23, 1, !dbg !1071
  %88 = icmp ne i8 %87, 0, !dbg !1071
  %89 = icmp eq i64 %82, %72, !dbg !1075
  %90 = and i1 %88, %89, !dbg !1080
  tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !984, metadata !711) #12, !dbg !990
  tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !1078, metadata !711) #12, !dbg !1081
  br i1 %90, label %91, label %96, !dbg !1080

; <label>:91:                                     ; preds = %86
  %92 = load i8*, i8** @output_delimiter_string, align 8, !dbg !1082, !tbaa !718
  %93 = load i64, i64* @output_delimiter_length, align 8, !dbg !1082, !tbaa !811
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1082, !tbaa !718
  %95 = tail call i64 @fwrite_unlocked(i8* %92, i64 1, i64 %93, %struct._IO_FILE* %94) #12, !dbg !1082
  br label %96, !dbg !1084

; <label>:96:                                     ; preds = %91, %86, %84
  %97 = phi i8 [ %23, %84 ], [ 1, %86 ], [ 1, %91 ]
  tail call void @llvm.dbg.value(metadata i8 %97, i64 0, metadata !985, metadata !711) #12, !dbg !991
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !1012, metadata !711) #12, !dbg !1085
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1087, !tbaa !718
  %99 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %98, i64 0, i32 5, !dbg !1087
  %100 = load i8*, i8** %99, align 8, !dbg !1087, !tbaa !1021
  %101 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %98, i64 0, i32 6, !dbg !1087
  %102 = load i8*, i8** %101, align 8, !dbg !1087, !tbaa !1022
  %103 = icmp ult i8* %100, %102, !dbg !1087
  br i1 %103, label %107, label %104, !dbg !1087, !prof !1006

; <label>:104:                                    ; preds = %96
  %105 = and i32 %36, 255, !dbg !1087
  %106 = tail call i32 @__overflow(%struct._IO_FILE* %98, i32 %105) #12, !dbg !1087
  br label %110, !dbg !1087

; <label>:107:                                    ; preds = %96
  %108 = trunc i32 %36 to i8, !dbg !1087
  %109 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !1087
  store i8* %109, i8** %99, align 8, !dbg !1087, !tbaa !1021
  store i8 %108, i8* %100, align 1, !dbg !1087, !tbaa !768
  br label %110, !dbg !1087

; <label>:110:                                    ; preds = %107, %104, %53
  %111 = phi i64 [ 0, %53 ], [ %72, %104 ], [ %72, %107 ]
  %112 = phi i8 [ 0, %53 ], [ %97, %104 ], [ %97, %107 ]
  br label %21, !dbg !993, !llvm.loop !1066

; <label>:113:                                    ; preds = %13
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !1088, metadata !711) #12, !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1092, metadata !711) #12, !dbg !1114
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1093, metadata !711) #12, !dbg !1115
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !999, metadata !711) #12, !dbg !1116
  %114 = load i8*, i8** %18, align 8, !dbg !1118, !tbaa !1002
  %115 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 2, !dbg !1118
  %116 = load i8*, i8** %115, align 8, !dbg !1118, !tbaa !1005
  %117 = icmp ult i8* %114, %116, !dbg !1118
  br i1 %117, label %118, label %122, !dbg !1118, !prof !1006

; <label>:118:                                    ; preds = %113
  %119 = getelementptr inbounds i8, i8* %114, i64 1, !dbg !1118
  store i8* %119, i8** %18, align 8, !dbg !1118, !tbaa !1002
  %120 = load i8, i8* %114, align 1, !dbg !1118, !tbaa !768
  %121 = zext i8 %120 to i32, !dbg !1118
  tail call void @llvm.dbg.value(metadata i32 %123, i64 0, metadata !1091, metadata !711) #12, !dbg !1119
  br label %125, !dbg !1120

; <label>:122:                                    ; preds = %113
  %123 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #12, !dbg !1118
  tail call void @llvm.dbg.value(metadata i32 %123, i64 0, metadata !1091, metadata !711) #12, !dbg !1119
  %124 = icmp eq i32 %123, -1, !dbg !1121
  br i1 %124, label %396, label %125, !dbg !1120

; <label>:125:                                    ; preds = %122, %118
  %126 = phi i32 [ %121, %118 ], [ %123, %122 ]
  %127 = tail call i32 @ungetc(i32 %126, %struct._IO_FILE* nonnull %14) #12, !dbg !1123
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1091, metadata !711) #12, !dbg !1119
  %128 = load i1, i1* @suppress_non_delimited, align 1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1058, metadata !711) #12, !dbg !1124
  %129 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1126, !tbaa !718
  %130 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %129, i64 0, i32 0, !dbg !1127
  %131 = load i64, i64* %130, align 8, !dbg !1127, !tbaa !1063
  %132 = icmp ugt i64 %131, 1, !dbg !1128
  %133 = xor i1 %128, %132, !dbg !1129
  %134 = xor i1 %133, true
  br label %135, !dbg !1130

; <label>:135:                                    ; preds = %392, %125
  %136 = phi i64 [ 1, %125 ], [ %393, %392 ]
  %137 = phi i8 [ 0, %125 ], [ %394, %392 ]
  %138 = phi i32 [ 0, %125 ], [ %395, %392 ]
  tail call void @llvm.dbg.value(metadata i32 %138, i64 0, metadata !1091, metadata !711) #12, !dbg !1119
  tail call void @llvm.dbg.value(metadata i8 %137, i64 0, metadata !1093, metadata !711) #12, !dbg !1115
  tail call void @llvm.dbg.value(metadata i64 %136, i64 0, metadata !1092, metadata !711) #12, !dbg !1114
  %139 = icmp ne i64 %136, 1, !dbg !1131
  %140 = or i1 %139, %134, !dbg !1132
  br i1 %140, label %141, label %143, !dbg !1132

; <label>:141:                                    ; preds = %135
  %142 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1133, !tbaa !718
  br label %235, !dbg !1132

; <label>:143:                                    ; preds = %135
  %144 = load i8, i8* @delim, align 1, !dbg !1136, !tbaa !768
  %145 = zext i8 %144 to i32, !dbg !1136
  %146 = load i1, i1* @line_delim, align 1
  %147 = select i1 %146, i32 0, i32 10, !dbg !1137
  %148 = tail call i64 @getndelim2(i8** nonnull @field_1_buffer, i64* nonnull @field_1_bufsize, i64 0, i64 -1, i32 %145, i32 %147, %struct._IO_FILE* nonnull %14) #12, !dbg !1138
  tail call void @llvm.dbg.value(metadata i64 %148, i64 0, metadata !1095, metadata !711) #12, !dbg !1139
  %149 = icmp slt i64 %148, 0, !dbg !1140
  br i1 %149, label %151, label %150, !dbg !1142

; <label>:150:                                    ; preds = %143
  br label %158, !dbg !1143

; <label>:151:                                    ; preds = %143, %228
  %152 = load i8*, i8** @field_1_buffer, align 8, !dbg !1146, !tbaa !718
  tail call void @free(i8* %152) #12, !dbg !1148
  store i8* null, i8** @field_1_buffer, align 8, !dbg !1149, !tbaa !718
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !1150, metadata !711) #12, !dbg !1153
  %153 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 0, !dbg !1156
  %154 = load i32, i32* %153, align 8, !dbg !1156, !tbaa !1157
  %155 = and i32 %154, 48, !dbg !1158
  %156 = icmp eq i32 %155, 0, !dbg !1158
  br i1 %156, label %157, label %396, !dbg !1158

; <label>:157:                                    ; preds = %151
  tail call void @xalloc_die() #15, !dbg !1159
  unreachable, !dbg !1159

; <label>:158:                                    ; preds = %150, %228
  %159 = phi i64 [ %233, %228 ], [ %148, %150 ]
  tail call void @llvm.dbg.value(metadata i64 %159, i64 0, metadata !1102, metadata !711) #12, !dbg !1160
  %160 = icmp eq i64 %159, 0, !dbg !1143
  br i1 %160, label %161, label %162, !dbg !1161

; <label>:161:                                    ; preds = %158
  tail call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i32 329, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.cut_fields, i64 0, i64 0)) #15, !dbg !1143
  unreachable, !dbg !1143

; <label>:162:                                    ; preds = %158
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1091, metadata !711) #12, !dbg !1119
  %163 = load i8*, i8** @field_1_buffer, align 8, !dbg !1162, !tbaa !718
  %164 = add i64 %159, -1, !dbg !1164
  %165 = getelementptr inbounds i8, i8* %163, i64 %164, !dbg !1162
  %166 = load i8, i8* %165, align 1, !dbg !1162, !tbaa !768
  %167 = load i8, i8* @delim, align 1, !dbg !1165, !tbaa !768
  %168 = icmp eq i8 %166, %167, !dbg !1166
  br i1 %168, label %193, label %169, !dbg !1167

; <label>:169:                                    ; preds = %162
  %170 = load i1, i1* @suppress_non_delimited, align 1
  br i1 %170, label %228, label %171, !dbg !1168, !llvm.loop !1170

; <label>:171:                                    ; preds = %169
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1173, !tbaa !718
  %173 = tail call i64 @fwrite_unlocked(i8* %163, i64 1, i64 %159, %struct._IO_FILE* %172) #12, !dbg !1173
  %174 = load i8*, i8** @field_1_buffer, align 8, !dbg !1176, !tbaa !718
  %175 = getelementptr inbounds i8, i8* %174, i64 %164, !dbg !1176
  %176 = load i8, i8* %175, align 1, !dbg !1176, !tbaa !768
  %177 = sext i8 %176 to i32, !dbg !1176
  %178 = load i1, i1* @line_delim, align 1
  %179 = select i1 %178, i32 0, i32 10, !dbg !1178
  %180 = icmp eq i32 %179, %177, !dbg !1179
  br i1 %180, label %228, label %181, !dbg !1180, !llvm.loop !1170

; <label>:181:                                    ; preds = %171
  tail call void @llvm.dbg.value(metadata i32 %179, i64 0, metadata !1012, metadata !711) #12, !dbg !1181
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1183, !tbaa !718
  %183 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %182, i64 0, i32 5, !dbg !1183
  %184 = load i8*, i8** %183, align 8, !dbg !1183, !tbaa !1021
  %185 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %182, i64 0, i32 6, !dbg !1183
  %186 = load i8*, i8** %185, align 8, !dbg !1183, !tbaa !1022
  %187 = icmp ult i8* %184, %186, !dbg !1183
  br i1 %187, label %190, label %188, !dbg !1183, !prof !1006

; <label>:188:                                    ; preds = %181
  %189 = tail call i32 @__overflow(%struct._IO_FILE* %182, i32 %179) #12, !dbg !1183
  br label %228, !dbg !1183, !llvm.loop !1170

; <label>:190:                                    ; preds = %181
  %191 = trunc i32 %179 to i8, !dbg !1183
  %192 = getelementptr inbounds i8, i8* %184, i64 1, !dbg !1183
  store i8* %192, i8** %183, align 8, !dbg !1183, !tbaa !1021
  store i8 %191, i8* %184, align 1, !dbg !1183, !tbaa !768
  br label %228, !dbg !1183, !llvm.loop !1170

; <label>:193:                                    ; preds = %162
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1058, metadata !711) #12, !dbg !1184
  %194 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1186, !tbaa !718
  %195 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %194, i64 0, i32 0, !dbg !1187
  %196 = load i64, i64* %195, align 8, !dbg !1187, !tbaa !1063
  %197 = icmp ult i64 %196, 2, !dbg !1188
  br i1 %197, label %198, label %220, !dbg !1189

; <label>:198:                                    ; preds = %193
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1190, !tbaa !718
  %200 = tail call i64 @fwrite_unlocked(i8* %163, i64 1, i64 %164, %struct._IO_FILE* %199) #12, !dbg !1190
  %201 = load i8, i8* @delim, align 1, !dbg !1191, !tbaa !768
  %202 = zext i8 %201 to i32, !dbg !1191
  %203 = load i1, i1* @line_delim, align 1
  %204 = select i1 %203, i32 0, i32 10, !dbg !1192
  %205 = icmp eq i32 %204, %202, !dbg !1193
  br i1 %205, label %206, label %220, !dbg !1194

; <label>:206:                                    ; preds = %198
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !999, metadata !711) #12, !dbg !1195
  %207 = load i8*, i8** %18, align 8, !dbg !1197, !tbaa !1002
  %208 = load i8*, i8** %115, align 8, !dbg !1197, !tbaa !1005
  %209 = icmp ult i8* %207, %208, !dbg !1197
  br i1 %209, label %210, label %214, !dbg !1197, !prof !1006

; <label>:210:                                    ; preds = %206
  %211 = getelementptr inbounds i8, i8* %207, i64 1, !dbg !1197
  store i8* %211, i8** %18, align 8, !dbg !1197, !tbaa !1002
  %212 = load i8, i8* %207, align 1, !dbg !1197, !tbaa !768
  %213 = zext i8 %212 to i32, !dbg !1197
  tail call void @llvm.dbg.value(metadata i32 %215, i64 0, metadata !1103, metadata !711) #12, !dbg !1198
  br label %217, !dbg !1199

; <label>:214:                                    ; preds = %206
  %215 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #12, !dbg !1197
  tail call void @llvm.dbg.value(metadata i32 %215, i64 0, metadata !1103, metadata !711) #12, !dbg !1198
  %216 = icmp eq i32 %215, -1, !dbg !1200
  br i1 %216, label %220, label %217, !dbg !1199

; <label>:217:                                    ; preds = %214, %210
  %218 = phi i32 [ %213, %210 ], [ %215, %214 ]
  %219 = tail call i32 @ungetc(i32 %218, %struct._IO_FILE* nonnull %14) #12, !dbg !1202
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1093, metadata !711) #12, !dbg !1115
  br label %220, !dbg !1204

; <label>:220:                                    ; preds = %217, %214, %198, %193
  %221 = phi i8 [ %137, %193 ], [ 1, %217 ], [ %137, %214 ], [ 1, %198 ]
  tail call void @llvm.dbg.value(metadata i8 %221, i64 0, metadata !1093, metadata !711) #12, !dbg !1115
  %222 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1205, !tbaa !718
  %223 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %222, i64 0, i32 1, !dbg !1207
  %224 = load i64, i64* %223, align 8, !dbg !1207, !tbaa !1047
  %225 = icmp ult i64 %224, 2, !dbg !1208
  br i1 %225, label %226, label %235, !dbg !1209

; <label>:226:                                    ; preds = %220
  %227 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %222, i64 1, !dbg !1210
  store %struct.field_range_pair* %227, %struct.field_range_pair** @current_rp, align 8, !dbg !1210, !tbaa !718
  br label %235, !dbg !1211

; <label>:228:                                    ; preds = %190, %188, %171, %169
  tail call void @llvm.dbg.value(metadata i8 %137, i64 0, metadata !1093, metadata !711) #12, !dbg !1115
  tail call void @llvm.dbg.value(metadata i8 %137, i64 0, metadata !1093, metadata !711) #12, !dbg !1115
  tail call void @llvm.dbg.value(metadata i64 %136, i64 0, metadata !1092, metadata !711) #12, !dbg !1114
  %229 = load i8, i8* @delim, align 1, !dbg !1136, !tbaa !768
  %230 = zext i8 %229 to i32, !dbg !1136
  %231 = load i1, i1* @line_delim, align 1
  %232 = select i1 %231, i32 0, i32 10, !dbg !1137
  %233 = tail call i64 @getndelim2(i8** nonnull @field_1_buffer, i64* nonnull @field_1_bufsize, i64 0, i64 -1, i32 %230, i32 %232, %struct._IO_FILE* %14) #12, !dbg !1138
  tail call void @llvm.dbg.value(metadata i64 %233, i64 0, metadata !1095, metadata !711) #12, !dbg !1139
  %234 = icmp slt i64 %233, 0, !dbg !1140
  br i1 %234, label %151, label %158, !dbg !1142

; <label>:235:                                    ; preds = %226, %220, %141
  %236 = phi %struct.field_range_pair* [ %222, %220 ], [ %227, %226 ], [ %142, %141 ], !dbg !1133
  %237 = phi i64 [ 2, %220 ], [ 2, %226 ], [ %136, %141 ]
  %238 = phi i8 [ %221, %220 ], [ %221, %226 ], [ %137, %141 ]
  %239 = phi i32 [ 0, %220 ], [ 0, %226 ], [ %138, %141 ]
  tail call void @llvm.dbg.value(metadata i32 %239, i64 0, metadata !1091, metadata !711) #12, !dbg !1119
  tail call void @llvm.dbg.value(metadata i8 %238, i64 0, metadata !1093, metadata !711) #12, !dbg !1115
  tail call void @llvm.dbg.value(metadata i32 %239, i64 0, metadata !1108, metadata !711) #12, !dbg !1212
  tail call void @llvm.dbg.value(metadata i64 %237, i64 0, metadata !1092, metadata !711) #12, !dbg !1114
  tail call void @llvm.dbg.value(metadata i64 %237, i64 0, metadata !1058, metadata !711) #12, !dbg !1213
  %240 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %236, i64 0, i32 0, !dbg !1214
  %241 = load i64, i64* %240, align 8, !dbg !1214, !tbaa !1063
  %242 = icmp ugt i64 %241, %237, !dbg !1215
  br i1 %242, label %243, label %244, !dbg !1216

; <label>:243:                                    ; preds = %235
  br label %289, !dbg !1217

; <label>:244:                                    ; preds = %235
  %245 = and i8 %238, 1, !dbg !1220
  %246 = icmp eq i8 %245, 0, !dbg !1220
  br i1 %246, label %252, label %247, !dbg !1223

; <label>:247:                                    ; preds = %244
  %248 = load i8*, i8** @output_delimiter_string, align 8, !dbg !1224, !tbaa !718
  %249 = load i64, i64* @output_delimiter_length, align 8, !dbg !1224, !tbaa !811
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1224, !tbaa !718
  %251 = tail call i64 @fwrite_unlocked(i8* %248, i64 1, i64 %249, %struct._IO_FILE* %250) #12, !dbg !1224
  br label %252, !dbg !1226

; <label>:252:                                    ; preds = %247, %244
  br label %253, !dbg !1227

; <label>:253:                                    ; preds = %288, %252
  %254 = phi i32 [ %239, %252 ], [ %265, %288 ]
  tail call void @llvm.dbg.value(metadata i32 %254, i64 0, metadata !1108, metadata !711) #12, !dbg !1212
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !999, metadata !711) #12, !dbg !1229
  %255 = load i8*, i8** %18, align 8, !dbg !1227, !tbaa !1002
  %256 = load i8*, i8** %115, align 8, !dbg !1227, !tbaa !1005
  %257 = icmp ult i8* %255, %256, !dbg !1227
  br i1 %257, label %260, label %258, !dbg !1227, !prof !1006

; <label>:258:                                    ; preds = %253
  %259 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #12, !dbg !1227
  br label %264, !dbg !1227

; <label>:260:                                    ; preds = %253
  %261 = getelementptr inbounds i8, i8* %255, i64 1, !dbg !1227
  store i8* %261, i8** %18, align 8, !dbg !1227, !tbaa !1002
  %262 = load i8, i8* %255, align 1, !dbg !1227, !tbaa !768
  %263 = zext i8 %262 to i32, !dbg !1227
  br label %264, !dbg !1227

; <label>:264:                                    ; preds = %260, %258
  %265 = phi i32 [ %259, %258 ], [ %263, %260 ], !dbg !1227
  tail call void @llvm.dbg.value(metadata i32 %265, i64 0, metadata !1091, metadata !711) #12, !dbg !1119
  %266 = load i8, i8* @delim, align 1, !dbg !1230, !tbaa !768
  %267 = zext i8 %266 to i32, !dbg !1230
  %268 = icmp eq i32 %265, %267, !dbg !1231
  br i1 %268, label %311, label %269, !dbg !1232

; <label>:269:                                    ; preds = %264
  %270 = load i1, i1* @line_delim, align 1
  %271 = select i1 %270, i32 0, i32 10, !dbg !1233
  %272 = icmp ne i32 %265, %271, !dbg !1234
  %273 = icmp ne i32 %265, -1, !dbg !1235
  %274 = and i1 %273, %272, !dbg !1236
  br i1 %274, label %275, label %311, !dbg !1236

; <label>:275:                                    ; preds = %269
  tail call void @llvm.dbg.value(metadata i32 %265, i64 0, metadata !1012, metadata !711) #12, !dbg !1237
  %276 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1240, !tbaa !718
  %277 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %276, i64 0, i32 5, !dbg !1240
  %278 = load i8*, i8** %277, align 8, !dbg !1240, !tbaa !1021
  %279 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %276, i64 0, i32 6, !dbg !1240
  %280 = load i8*, i8** %279, align 8, !dbg !1240, !tbaa !1022
  %281 = icmp ult i8* %278, %280, !dbg !1240
  br i1 %281, label %285, label %282, !dbg !1240, !prof !1006

; <label>:282:                                    ; preds = %275
  %283 = and i32 %265, 255, !dbg !1240
  %284 = tail call i32 @__overflow(%struct._IO_FILE* %276, i32 %283) #12, !dbg !1240
  br label %288, !dbg !1240

; <label>:285:                                    ; preds = %275
  %286 = trunc i32 %265 to i8, !dbg !1240
  %287 = getelementptr inbounds i8, i8* %278, i64 1, !dbg !1240
  store i8* %287, i8** %277, align 8, !dbg !1240, !tbaa !1021
  store i8 %286, i8* %278, align 1, !dbg !1240, !tbaa !768
  br label %288, !dbg !1240

; <label>:288:                                    ; preds = %285, %282
  br label %253, !dbg !1212, !llvm.loop !1241

; <label>:289:                                    ; preds = %243, %305
  %290 = phi i32 [ %301, %305 ], [ %239, %243 ]
  tail call void @llvm.dbg.value(metadata i32 %290, i64 0, metadata !1108, metadata !711) #12, !dbg !1212
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !999, metadata !711) #12, !dbg !1244
  %291 = load i8*, i8** %18, align 8, !dbg !1217, !tbaa !1002
  %292 = load i8*, i8** %115, align 8, !dbg !1217, !tbaa !1005
  %293 = icmp ult i8* %291, %292, !dbg !1217
  br i1 %293, label %296, label %294, !dbg !1217, !prof !1006

; <label>:294:                                    ; preds = %289
  %295 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #12, !dbg !1217
  br label %300, !dbg !1217

; <label>:296:                                    ; preds = %289
  %297 = getelementptr inbounds i8, i8* %291, i64 1, !dbg !1217
  store i8* %297, i8** %18, align 8, !dbg !1217, !tbaa !1002
  %298 = load i8, i8* %291, align 1, !dbg !1217, !tbaa !768
  %299 = zext i8 %298 to i32, !dbg !1217
  br label %300, !dbg !1217

; <label>:300:                                    ; preds = %296, %294
  %301 = phi i32 [ %295, %294 ], [ %299, %296 ], !dbg !1217
  tail call void @llvm.dbg.value(metadata i32 %301, i64 0, metadata !1091, metadata !711) #12, !dbg !1119
  %302 = load i8, i8* @delim, align 1, !dbg !1245, !tbaa !768
  %303 = zext i8 %302 to i32, !dbg !1245
  %304 = icmp eq i32 %301, %303, !dbg !1246
  br i1 %304, label %311, label %305, !dbg !1247

; <label>:305:                                    ; preds = %300
  %306 = load i1, i1* @line_delim, align 1
  %307 = select i1 %306, i32 0, i32 10, !dbg !1248
  %308 = icmp ne i32 %301, %307, !dbg !1249
  %309 = icmp ne i32 %301, -1, !dbg !1250
  %310 = and i1 %309, %308, !dbg !1251
  tail call void @llvm.dbg.value(metadata i32 %301, i64 0, metadata !1108, metadata !711) #12, !dbg !1212
  br i1 %310, label %289, label %311, !dbg !1251, !llvm.loop !1252

; <label>:311:                                    ; preds = %269, %264, %305, %300
  %312 = phi i8 [ %302, %300 ], [ %302, %305 ], [ %266, %264 ], [ %266, %269 ], !dbg !1255
  %313 = phi i8 [ %238, %300 ], [ %238, %305 ], [ 1, %264 ], [ 1, %269 ]
  %314 = phi i32 [ %290, %300 ], [ %290, %305 ], [ %254, %264 ], [ %254, %269 ]
  %315 = phi i32 [ %301, %300 ], [ %301, %305 ], [ %265, %264 ], [ %265, %269 ]
  tail call void @llvm.dbg.value(metadata i32 %315, i64 0, metadata !1091, metadata !711) #12, !dbg !1119
  tail call void @llvm.dbg.value(metadata i32 %314, i64 0, metadata !1108, metadata !711) #12, !dbg !1212
  tail call void @llvm.dbg.value(metadata i8 %313, i64 0, metadata !1093, metadata !711) #12, !dbg !1115
  %316 = zext i8 %312 to i32, !dbg !1255
  %317 = load i1, i1* @line_delim, align 1
  %318 = select i1 %317, i32 0, i32 10, !dbg !1256
  %319 = icmp eq i32 %318, %316, !dbg !1257
  %320 = icmp eq i32 %315, %316, !dbg !1258
  %321 = and i1 %320, %319, !dbg !1259
  br i1 %321, label %322, label %342, !dbg !1259

; <label>:322:                                    ; preds = %311
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !999, metadata !711) #12, !dbg !1260
  %323 = load i8*, i8** %18, align 8, !dbg !1262, !tbaa !1002
  %324 = load i8*, i8** %115, align 8, !dbg !1262, !tbaa !1005
  %325 = icmp ult i8* %323, %324, !dbg !1262
  br i1 %325, label %326, label %330, !dbg !1262, !prof !1006

; <label>:326:                                    ; preds = %322
  %327 = getelementptr inbounds i8, i8* %323, i64 1, !dbg !1262
  store i8* %327, i8** %18, align 8, !dbg !1262, !tbaa !1002
  %328 = load i8, i8* %323, align 1, !dbg !1262, !tbaa !768
  %329 = zext i8 %328 to i32, !dbg !1262
  tail call void @llvm.dbg.value(metadata i32 %331, i64 0, metadata !1109, metadata !711) #12, !dbg !1263
  br label %338, !dbg !1264

; <label>:330:                                    ; preds = %322
  %331 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #12, !dbg !1262
  tail call void @llvm.dbg.value(metadata i32 %331, i64 0, metadata !1109, metadata !711) #12, !dbg !1263
  %332 = icmp eq i32 %331, -1, !dbg !1265
  br i1 %332, label %333, label %338, !dbg !1264

; <label>:333:                                    ; preds = %330
  tail call void @llvm.dbg.value(metadata i32 %315, i64 0, metadata !1091, metadata !711) #12, !dbg !1119
  %334 = load i8, i8* @delim, align 1, !dbg !1267, !tbaa !768
  %335 = zext i8 %334 to i32, !dbg !1267
  %336 = load i1, i1* @line_delim, align 1
  %337 = select i1 %336, i32 0, i32 10, !dbg !1269
  br label %360, !dbg !1271

; <label>:338:                                    ; preds = %330, %326
  %339 = phi i32 [ %329, %326 ], [ %331, %330 ]
  %340 = tail call i32 @ungetc(i32 %339, %struct._IO_FILE* nonnull %14) #12, !dbg !1272
  %341 = load i8, i8* @delim, align 1, !dbg !1267, !tbaa !768
  br label %342, !dbg !1272

; <label>:342:                                    ; preds = %338, %311
  %343 = phi i8 [ %341, %338 ], [ %312, %311 ], !dbg !1267
  tail call void @llvm.dbg.value(metadata i32 %315, i64 0, metadata !1091, metadata !711) #12, !dbg !1119
  %344 = zext i8 %343 to i32, !dbg !1267
  %345 = icmp eq i32 %315, %344, !dbg !1273
  br i1 %345, label %346, label %354, !dbg !1274

; <label>:346:                                    ; preds = %342
  %347 = add i64 %237, 1, !dbg !1275
  %348 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1277, !tbaa !718
  %349 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %348, i64 0, i32 1, !dbg !1278
  %350 = load i64, i64* %349, align 8, !dbg !1278, !tbaa !1047
  %351 = icmp ugt i64 %347, %350, !dbg !1279
  br i1 %351, label %352, label %392, !dbg !1280

; <label>:352:                                    ; preds = %346
  %353 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %348, i64 1, !dbg !1281
  store %struct.field_range_pair* %353, %struct.field_range_pair** @current_rp, align 8, !dbg !1281, !tbaa !718
  br label %392, !dbg !1282

; <label>:354:                                    ; preds = %342
  %355 = load i1, i1* @line_delim, align 1
  %356 = select i1 %355, i32 0, i32 10, !dbg !1269
  %357 = icmp eq i32 %315, %356, !dbg !1283
  %358 = icmp eq i32 %315, -1, !dbg !1284
  %359 = or i1 %358, %357, !dbg !1271
  br i1 %359, label %360, label %392, !dbg !1271

; <label>:360:                                    ; preds = %354, %333
  %361 = phi i1 [ true, %333 ], [ %358, %354 ]
  %362 = phi i1 [ false, %333 ], [ %357, %354 ]
  %363 = phi i32 [ %337, %333 ], [ %356, %354 ]
  %364 = phi i32 [ -1, %333 ], [ %315, %354 ]
  %365 = phi i32 [ %335, %333 ], [ %344, %354 ]
  %366 = and i8 %313, 1, !dbg !1285
  %367 = icmp eq i8 %366, 0, !dbg !1285
  br i1 %367, label %368, label %372, !dbg !1288

; <label>:368:                                    ; preds = %360
  %369 = load i1, i1* @suppress_non_delimited, align 1
  tail call void @llvm.dbg.value(metadata i64 %237, i64 0, metadata !1092, metadata !711) #12, !dbg !1114
  %370 = icmp eq i64 %237, 1, !dbg !1289
  %371 = and i1 %370, %369, !dbg !1290
  br i1 %371, label %389, label %372, !dbg !1290

; <label>:372:                                    ; preds = %368, %360
  %373 = icmp ne i32 %314, %363, !dbg !1291
  %374 = or i1 %362, %373, !dbg !1294
  %375 = icmp eq i32 %363, %365, !dbg !1295
  %376 = or i1 %374, %375, !dbg !1294
  br i1 %376, label %377, label %389, !dbg !1294

; <label>:377:                                    ; preds = %372
  tail call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1012, metadata !711) #12, !dbg !1296
  %378 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1298, !tbaa !718
  %379 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %378, i64 0, i32 5, !dbg !1298
  %380 = load i8*, i8** %379, align 8, !dbg !1298, !tbaa !1021
  %381 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %378, i64 0, i32 6, !dbg !1298
  %382 = load i8*, i8** %381, align 8, !dbg !1298, !tbaa !1022
  %383 = icmp ult i8* %380, %382, !dbg !1298
  br i1 %383, label %386, label %384, !dbg !1298, !prof !1006

; <label>:384:                                    ; preds = %377
  %385 = tail call i32 @__overflow(%struct._IO_FILE* %378, i32 %363) #12, !dbg !1298
  br label %389, !dbg !1298

; <label>:386:                                    ; preds = %377
  %387 = trunc i32 %363 to i8, !dbg !1298
  %388 = getelementptr inbounds i8, i8* %380, i64 1, !dbg !1298
  store i8* %388, i8** %379, align 8, !dbg !1298, !tbaa !1021
  store i8 %387, i8* %380, align 1, !dbg !1298, !tbaa !768
  br label %389, !dbg !1298

; <label>:389:                                    ; preds = %386, %384, %372, %368
  br i1 %361, label %396, label %390, !dbg !1299

; <label>:390:                                    ; preds = %389
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1092, metadata !711) #12, !dbg !1114
  %391 = load i64, i64* bitcast (%struct.field_range_pair** @frp to i64*), align 8, !dbg !1300, !tbaa !718
  store i64 %391, i64* bitcast (%struct.field_range_pair** @current_rp to i64*), align 8, !dbg !1301, !tbaa !718
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1093, metadata !711) #12, !dbg !1115
  br label %392, !dbg !1302

; <label>:392:                                    ; preds = %390, %354, %352, %346
  %393 = phi i64 [ %347, %352 ], [ %347, %346 ], [ %237, %354 ], [ 1, %390 ]
  %394 = phi i8 [ %313, %352 ], [ %313, %346 ], [ %313, %354 ], [ 0, %390 ]
  %395 = phi i32 [ %315, %352 ], [ %315, %346 ], [ %315, %354 ], [ %364, %390 ]
  br label %135, !dbg !1119, !llvm.loop !1170

; <label>:396:                                    ; preds = %389, %57, %66, %68, %122, %151
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !1150, metadata !711), !dbg !1303
  %397 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 0, !dbg !1306
  %398 = load i32, i32* %397, align 8, !dbg !1306, !tbaa !1157
  %399 = and i32 %398, 32, !dbg !1306
  %400 = icmp eq i32 %399, 0, !dbg !1307
  br i1 %400, label %405, label %401, !dbg !1308

; <label>:401:                                    ; preds = %396
  %402 = tail call i32* @__errno_location() #17, !dbg !1309
  %403 = load i32, i32* %402, align 4, !dbg !1309, !tbaa !860
  %404 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #12, !dbg !1311
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %403, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %404) #12, !dbg !1312
  br label %416, !dbg !1313

; <label>:405:                                    ; preds = %396
  %406 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #14, !dbg !1314
  %407 = icmp eq i32 %406, 0, !dbg !1314
  br i1 %407, label %408, label %409, !dbg !1316

; <label>:408:                                    ; preds = %405
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %14) #12, !dbg !1317
  br label %416, !dbg !1317

; <label>:409:                                    ; preds = %405
  %410 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %14) #12, !dbg !1318
  %411 = icmp eq i32 %410, -1, !dbg !1320
  br i1 %411, label %412, label %416, !dbg !1321

; <label>:412:                                    ; preds = %409
  %413 = tail call i32* @__errno_location() #17, !dbg !1322
  %414 = load i32, i32* %413, align 4, !dbg !1322, !tbaa !860
  %415 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #12, !dbg !1324
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %414, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %415) #12, !dbg !1325
  br label %416, !dbg !1326

; <label>:416:                                    ; preds = %408, %409, %412, %401, %9
  %417 = phi i1 [ false, %401 ], [ false, %412 ], [ false, %9 ], [ true, %409 ], [ true, %408 ]
  ret i1 %417, !dbg !1327
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_fields(i8*, i32) local_unnamed_addr #6 !dbg !175 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !179, metadata !711), !dbg !1328
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !180, metadata !711), !dbg !1329
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !181, metadata !711), !dbg !1330
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !182, metadata !711), !dbg !1331
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !183, metadata !711), !dbg !1332
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !184, metadata !711), !dbg !1333
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !185, metadata !711), !dbg !1334
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !187, metadata !711), !dbg !1335
  %3 = and i32 %1, 1, !dbg !1336
  %4 = icmp ne i32 %3, 0, !dbg !1336
  br i1 %4, label %5, label %12, !dbg !1338

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #14, !dbg !1339
  %7 = icmp eq i32 %6, 0, !dbg !1339
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !182, metadata !711), !dbg !1331
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !183, metadata !711), !dbg !1332
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !185, metadata !711), !dbg !1334
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1340
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !179, metadata !711), !dbg !1328
  %9 = zext i1 %7 to i64, !dbg !1342
  %10 = zext i1 %7 to i8, !dbg !1342
  %11 = select i1 %7, i8* %8, i8* %0, !dbg !1342
  br label %12, !dbg !1342

; <label>:12:                                     ; preds = %5, %2
  %13 = phi i64 [ %9, %5 ], [ 0, %2 ]
  %14 = phi i8 [ %10, %5 ], [ 0, %2 ]
  %15 = phi i8* [ %11, %5 ], [ %0, %2 ]
  br label %16, !dbg !1343

; <label>:16:                                     ; preds = %12, %229
  %17 = phi i64 [ %230, %229 ], [ %13, %12 ]
  %18 = phi i8 [ %231, %229 ], [ %14, %12 ]
  %19 = phi i8 [ %232, %229 ], [ 0, %12 ]
  %20 = phi i8 [ %233, %229 ], [ %14, %12 ]
  %21 = phi i1 [ %234, %229 ], [ false, %12 ]
  %22 = phi i64 [ %235, %229 ], [ 1, %12 ]
  %23 = phi i8* [ %236, %229 ], [ %15, %12 ]
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !182, metadata !711), !dbg !1331
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !179, metadata !711), !dbg !1328
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !181, metadata !711), !dbg !1330
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !185, metadata !711), !dbg !1334
  tail call void @llvm.dbg.value(metadata i8 %19, i64 0, metadata !184, metadata !711), !dbg !1333
  tail call void @llvm.dbg.value(metadata i8 %18, i64 0, metadata !183, metadata !711), !dbg !1332
  %24 = load i8, i8* %23, align 1, !dbg !1343, !tbaa !768
  switch i8 %24, label %46 [
    i8 45, label %25
    i8 44, label %56
  ], !dbg !1344

; <label>:25:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !187, metadata !711), !dbg !1335
  %26 = and i8 %20, 1, !dbg !1345
  %27 = icmp eq i8 %26, 0, !dbg !1345
  br i1 %27, label %33, label %28, !dbg !1348

; <label>:28:                                     ; preds = %25
  %29 = and i32 %1, 4, !dbg !1349
  %30 = icmp eq i32 %29, 0, !dbg !1349
  %31 = select i1 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2.30, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.31, i64 0, i64 0), !dbg !1349
  %32 = tail call i8* @dcgettext(i8* null, i8* %31, i32 5) #12, !dbg !1349
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %32) #12, !dbg !1349
  tail call void @usage(i32 1) #15, !dbg !1349
  unreachable, !dbg !1349

; <label>:33:                                     ; preds = %25
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !185, metadata !711), !dbg !1334
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !179, metadata !1351), !dbg !1328
  %34 = and i8 %18, 1, !dbg !1352
  %35 = icmp ne i8 %34, 0, !dbg !1352
  %36 = xor i1 %35, true, !dbg !1354
  %37 = icmp ne i64 %17, 0, !dbg !1355
  %38 = or i1 %37, %36, !dbg !1354
  br i1 %38, label %44, label %39, !dbg !1354

; <label>:39:                                     ; preds = %33
  %40 = and i32 %1, 4, !dbg !1356
  %41 = icmp eq i32 %40, 0, !dbg !1356
  %42 = select i1 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.32, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.33, i64 0, i64 0), !dbg !1356
  %43 = tail call i8* @dcgettext(i8* null, i8* %42, i32 5) #12, !dbg !1356
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %43) #12, !dbg !1356
  tail call void @usage(i32 1) #15, !dbg !1356
  unreachable, !dbg !1356

; <label>:44:                                     ; preds = %33
  %45 = select i1 %35, i64 %17, i64 1, !dbg !1358
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !181, metadata !711), !dbg !1330
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !182, metadata !711), !dbg !1331
  br label %229, !dbg !1359

; <label>:46:                                     ; preds = %16
  %47 = tail call i16** @__ctype_b_loc() #17, !dbg !1360
  %48 = load i16*, i16** %47, align 8, !dbg !1360, !tbaa !718
  %49 = zext i8 %24 to i64, !dbg !1360
  %50 = getelementptr inbounds i16, i16* %48, i64 %49, !dbg !1360
  %51 = load i16, i16* %50, align 2, !dbg !1360, !tbaa !1361
  %52 = and i16 %51, 1, !dbg !1360
  %53 = icmp ne i16 %52, 0, !dbg !1360
  %54 = icmp eq i8 %24, 0, !dbg !1362
  %55 = or i1 %54, %53, !dbg !1363
  br i1 %55, label %56, label %190, !dbg !1363

; <label>:56:                                     ; preds = %46, %16
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !187, metadata !711), !dbg !1335
  %57 = and i8 %20, 1, !dbg !1364
  %58 = icmp eq i8 %57, 0, !dbg !1364
  br i1 %58, label %140, label %59, !dbg !1367

; <label>:59:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !185, metadata !711), !dbg !1334
  %60 = or i8 %19, %18, !dbg !1368
  %61 = and i8 %60, 1, !dbg !1368
  %62 = icmp ne i8 %61, 0, !dbg !1368
  %63 = or i1 %4, %62, !dbg !1368
  %64 = select i1 %62, i64 %22, i64 1, !dbg !1368
  br i1 %63, label %67, label %65, !dbg !1368

; <label>:65:                                     ; preds = %59
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.34, i64 0, i64 0), i32 5) #12, !dbg !1371
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %66) #12, !dbg !1371
  tail call void @usage(i32 1) #15, !dbg !1371
  unreachable, !dbg !1371

; <label>:67:                                     ; preds = %59
  %68 = and i8 %19, 1, !dbg !1375
  %69 = icmp eq i8 %68, 0, !dbg !1375
  tail call void @llvm.dbg.value(metadata i64 %64, i64 0, metadata !181, metadata !711), !dbg !1330
  br i1 %69, label %70, label %103, !dbg !1376

; <label>:70:                                     ; preds = %67
  tail call void @llvm.dbg.value(metadata i64 %64, i64 0, metadata !1377, metadata !711) #12, !dbg !1383
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1382, metadata !711) #12, !dbg !1387
  %71 = load i64, i64* @n_frp, align 8, !dbg !1388, !tbaa !811
  %72 = load i64, i64* @n_frp_allocated, align 8, !dbg !1390, !tbaa !811
  %73 = icmp eq i64 %71, %72, !dbg !1391
  br i1 %73, label %77, label %74, !dbg !1392

; <label>:74:                                     ; preds = %70
  %75 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1393, !tbaa !718
  %76 = bitcast %struct.field_range_pair* %75 to i8*, !dbg !1392
  br label %96, !dbg !1392

; <label>:77:                                     ; preds = %70
  %78 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1394, !tbaa !718
  tail call void @llvm.dbg.value(metadata i8* %78, i64 0, metadata !157, metadata !711) #12, !dbg !1395
  tail call void @llvm.dbg.value(metadata i64* @n_frp_allocated, i64 0, metadata !158, metadata !711) #12, !dbg !1397
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !159, metadata !711) #12, !dbg !1398
  tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !160, metadata !711) #12, !dbg !1399
  %79 = icmp eq i8* %78, null, !dbg !1400
  br i1 %79, label %80, label %83, !dbg !1402

; <label>:80:                                     ; preds = %77
  %81 = icmp eq i64 %71, 0, !dbg !1403
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !160, metadata !711) #12, !dbg !1399
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !160, metadata !711) #12, !dbg !1399
  %82 = select i1 %81, i64 8, i64 %71, !dbg !1406
  br label %90, !dbg !1406

; <label>:83:                                     ; preds = %77
  %84 = icmp ult i64 %71, 384307168202282325, !dbg !1407
  br i1 %84, label %86, label %85, !dbg !1410

; <label>:85:                                     ; preds = %83
  tail call void @xalloc_die() #15, !dbg !1411
  unreachable, !dbg !1411

; <label>:86:                                     ; preds = %83
  %87 = lshr i64 %71, 1, !dbg !1412
  %88 = add i64 %71, 1, !dbg !1413
  %89 = add i64 %88, %87, !dbg !1414
  tail call void @llvm.dbg.value(metadata i64 %89, i64 0, metadata !160, metadata !711) #12, !dbg !1399
  br label %90

; <label>:90:                                     ; preds = %86, %80
  %91 = phi i64 [ %89, %86 ], [ %82, %80 ]
  tail call void @llvm.dbg.value(metadata i64 %91, i64 0, metadata !160, metadata !711) #12, !dbg !1399
  store i64 %91, i64* @n_frp_allocated, align 8, !dbg !1415, !tbaa !811
  %92 = shl i64 %91, 4, !dbg !1416
  %93 = tail call i8* @xrealloc(i8* %78, i64 %92) #12, !dbg !1417
  store i8* %93, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1418, !tbaa !718
  %94 = bitcast i8* %93 to %struct.field_range_pair*, !dbg !1419
  %95 = load i64, i64* @n_frp, align 8, !dbg !1420, !tbaa !811
  br label %96, !dbg !1419

; <label>:96:                                     ; preds = %74, %90
  %97 = phi i8* [ %76, %74 ], [ %93, %90 ]
  %98 = phi i64 [ %71, %74 ], [ %95, %90 ], !dbg !1420
  %99 = phi %struct.field_range_pair* [ %75, %74 ], [ %94, %90 ], !dbg !1393
  %100 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %99, i64 %98, i32 0, !dbg !1421
  store i64 %64, i64* %100, align 8, !dbg !1422, !tbaa !1063
  %101 = load i64, i64* @n_frp, align 8, !dbg !1423, !tbaa !811
  %102 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %99, i64 %101, i32 1, !dbg !1424
  br label %180, !dbg !1425

; <label>:103:                                    ; preds = %67
  %104 = icmp ult i64 %17, %64, !dbg !1426
  br i1 %104, label %105, label %107, !dbg !1429

; <label>:105:                                    ; preds = %103
  %106 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6.35, i64 0, i64 0), i32 5) #12, !dbg !1430
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %106) #12, !dbg !1430
  tail call void @usage(i32 1) #15, !dbg !1430
  unreachable, !dbg !1430

; <label>:107:                                    ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 %64, i64 0, metadata !1377, metadata !711) #12, !dbg !1432
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1382, metadata !711) #12, !dbg !1434
  %108 = load i64, i64* @n_frp, align 8, !dbg !1435, !tbaa !811
  %109 = load i64, i64* @n_frp_allocated, align 8, !dbg !1436, !tbaa !811
  %110 = icmp eq i64 %108, %109, !dbg !1437
  br i1 %110, label %114, label %111, !dbg !1438

; <label>:111:                                    ; preds = %107
  %112 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1439, !tbaa !718
  %113 = bitcast %struct.field_range_pair* %112 to i8*, !dbg !1438
  br label %133, !dbg !1438

; <label>:114:                                    ; preds = %107
  %115 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1440, !tbaa !718
  tail call void @llvm.dbg.value(metadata i8* %115, i64 0, metadata !157, metadata !711) #12, !dbg !1441
  tail call void @llvm.dbg.value(metadata i64* @n_frp_allocated, i64 0, metadata !158, metadata !711) #12, !dbg !1443
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !159, metadata !711) #12, !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %109, i64 0, metadata !160, metadata !711) #12, !dbg !1445
  %116 = icmp eq i8* %115, null, !dbg !1446
  br i1 %116, label %117, label %120, !dbg !1447

; <label>:117:                                    ; preds = %114
  %118 = icmp eq i64 %108, 0, !dbg !1448
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !160, metadata !711) #12, !dbg !1445
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !160, metadata !711) #12, !dbg !1445
  %119 = select i1 %118, i64 8, i64 %108, !dbg !1449
  br label %127, !dbg !1449

; <label>:120:                                    ; preds = %114
  %121 = icmp ult i64 %108, 384307168202282325, !dbg !1450
  br i1 %121, label %123, label %122, !dbg !1451

; <label>:122:                                    ; preds = %120
  tail call void @xalloc_die() #15, !dbg !1452
  unreachable, !dbg !1452

; <label>:123:                                    ; preds = %120
  %124 = lshr i64 %108, 1, !dbg !1453
  %125 = add i64 %108, 1, !dbg !1454
  %126 = add i64 %125, %124, !dbg !1455
  tail call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !160, metadata !711) #12, !dbg !1445
  br label %127

; <label>:127:                                    ; preds = %123, %117
  %128 = phi i64 [ %126, %123 ], [ %119, %117 ]
  tail call void @llvm.dbg.value(metadata i64 %128, i64 0, metadata !160, metadata !711) #12, !dbg !1445
  store i64 %128, i64* @n_frp_allocated, align 8, !dbg !1456, !tbaa !811
  %129 = shl i64 %128, 4, !dbg !1457
  %130 = tail call i8* @xrealloc(i8* %115, i64 %129) #12, !dbg !1458
  store i8* %130, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1459, !tbaa !718
  %131 = bitcast i8* %130 to %struct.field_range_pair*, !dbg !1460
  %132 = load i64, i64* @n_frp, align 8, !dbg !1461, !tbaa !811
  br label %133, !dbg !1460

; <label>:133:                                    ; preds = %111, %127
  %134 = phi i8* [ %113, %111 ], [ %130, %127 ]
  %135 = phi i64 [ %108, %111 ], [ %132, %127 ], !dbg !1461
  %136 = phi %struct.field_range_pair* [ %112, %111 ], [ %131, %127 ], !dbg !1439
  %137 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %136, i64 %135, i32 0, !dbg !1462
  store i64 %64, i64* %137, align 8, !dbg !1463, !tbaa !1063
  %138 = load i64, i64* @n_frp, align 8, !dbg !1464, !tbaa !811
  %139 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %136, i64 %138, i32 1, !dbg !1465
  br label %180

; <label>:140:                                    ; preds = %56
  %141 = icmp eq i64 %17, 0, !dbg !1466
  br i1 %141, label %142, label %147, !dbg !1469

; <label>:142:                                    ; preds = %140
  %143 = and i32 %1, 4, !dbg !1470
  %144 = icmp eq i32 %143, 0, !dbg !1470
  %145 = select i1 %144, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.32, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.33, i64 0, i64 0), !dbg !1470
  %146 = tail call i8* @dcgettext(i8* null, i8* %145, i32 5) #12, !dbg !1470
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %146) #12, !dbg !1470
  tail call void @usage(i32 1) #15, !dbg !1470
  unreachable, !dbg !1470

; <label>:147:                                    ; preds = %140
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1377, metadata !711) #12, !dbg !1472
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1382, metadata !711) #12, !dbg !1474
  %148 = load i64, i64* @n_frp, align 8, !dbg !1475, !tbaa !811
  %149 = load i64, i64* @n_frp_allocated, align 8, !dbg !1476, !tbaa !811
  %150 = icmp eq i64 %148, %149, !dbg !1477
  br i1 %150, label %154, label %151, !dbg !1478

; <label>:151:                                    ; preds = %147
  %152 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1479, !tbaa !718
  %153 = bitcast %struct.field_range_pair* %152 to i8*, !dbg !1478
  br label %173, !dbg !1478

; <label>:154:                                    ; preds = %147
  %155 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1480, !tbaa !718
  tail call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !157, metadata !711) #12, !dbg !1481
  tail call void @llvm.dbg.value(metadata i64* @n_frp_allocated, i64 0, metadata !158, metadata !711) #12, !dbg !1483
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !159, metadata !711) #12, !dbg !1484
  tail call void @llvm.dbg.value(metadata i64 %149, i64 0, metadata !160, metadata !711) #12, !dbg !1485
  %156 = icmp eq i8* %155, null, !dbg !1486
  br i1 %156, label %157, label %160, !dbg !1487

; <label>:157:                                    ; preds = %154
  %158 = icmp eq i64 %148, 0, !dbg !1488
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !160, metadata !711) #12, !dbg !1485
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !160, metadata !711) #12, !dbg !1485
  %159 = select i1 %158, i64 8, i64 %148, !dbg !1489
  br label %167, !dbg !1489

; <label>:160:                                    ; preds = %154
  %161 = icmp ult i64 %148, 384307168202282325, !dbg !1490
  br i1 %161, label %163, label %162, !dbg !1491

; <label>:162:                                    ; preds = %160
  tail call void @xalloc_die() #15, !dbg !1492
  unreachable, !dbg !1492

; <label>:163:                                    ; preds = %160
  %164 = lshr i64 %148, 1, !dbg !1493
  %165 = add i64 %148, 1, !dbg !1494
  %166 = add i64 %165, %164, !dbg !1495
  tail call void @llvm.dbg.value(metadata i64 %166, i64 0, metadata !160, metadata !711) #12, !dbg !1485
  br label %167

; <label>:167:                                    ; preds = %163, %157
  %168 = phi i64 [ %166, %163 ], [ %159, %157 ]
  tail call void @llvm.dbg.value(metadata i64 %168, i64 0, metadata !160, metadata !711) #12, !dbg !1485
  store i64 %168, i64* @n_frp_allocated, align 8, !dbg !1496, !tbaa !811
  %169 = shl i64 %168, 4, !dbg !1497
  %170 = tail call i8* @xrealloc(i8* %155, i64 %169) #12, !dbg !1498
  store i8* %170, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1499, !tbaa !718
  %171 = bitcast i8* %170 to %struct.field_range_pair*, !dbg !1500
  %172 = load i64, i64* @n_frp, align 8, !dbg !1501, !tbaa !811
  br label %173, !dbg !1500

; <label>:173:                                    ; preds = %151, %167
  %174 = phi i8* [ %153, %151 ], [ %170, %167 ]
  %175 = phi i64 [ %148, %151 ], [ %172, %167 ], !dbg !1501
  %176 = phi %struct.field_range_pair* [ %152, %151 ], [ %171, %167 ], !dbg !1479
  %177 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %176, i64 %175, i32 0, !dbg !1502
  store i64 %17, i64* %177, align 8, !dbg !1503, !tbaa !1063
  %178 = load i64, i64* @n_frp, align 8, !dbg !1504, !tbaa !811
  %179 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %176, i64 %178, i32 1, !dbg !1505
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !182, metadata !711), !dbg !1331
  br label %180

; <label>:180:                                    ; preds = %96, %133, %173
  %181 = phi i8* [ %97, %96 ], [ %134, %133 ], [ %174, %173 ]
  %182 = phi i64* [ %102, %96 ], [ %139, %133 ], [ %179, %173 ]
  %183 = phi i64 [ -1, %96 ], [ %17, %133 ], [ %17, %173 ]
  %184 = phi i64 [ %101, %96 ], [ %138, %133 ], [ %178, %173 ]
  %185 = phi i8 [ 0, %96 ], [ 0, %133 ], [ %20, %173 ]
  %186 = phi i64 [ %64, %96 ], [ %64, %133 ], [ %22, %173 ]
  store i64 %183, i64* %182, align 8, !dbg !1506, !tbaa !1047
  %187 = add i64 %184, 1, !dbg !1507
  store i64 %187, i64* @n_frp, align 8, !dbg !1507, !tbaa !811
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !182, metadata !711), !dbg !1331
  tail call void @llvm.dbg.value(metadata i64 %186, i64 0, metadata !181, metadata !711), !dbg !1330
  tail call void @llvm.dbg.value(metadata i8 %185, i64 0, metadata !185, metadata !711), !dbg !1334
  %188 = load i8, i8* %23, align 1, !dbg !1508, !tbaa !768
  %189 = icmp eq i8 %188, 0, !dbg !1510
  br i1 %189, label %237, label %229, !dbg !1511

; <label>:190:                                    ; preds = %46
  %191 = sext i8 %24 to i32, !dbg !1512
  %192 = add nsw i32 %191, -48, !dbg !1513
  %193 = icmp ult i32 %192, 10, !dbg !1513
  br i1 %193, label %194, label %223, !dbg !1514

; <label>:194:                                    ; preds = %190
  %195 = load i8*, i8** @set_fields.num_start, align 8, !dbg !1515
  %196 = icmp ne i8* %195, null, !dbg !1515
  %197 = and i1 %21, %196, !dbg !1517
  br i1 %197, label %199, label %198, !dbg !1517

; <label>:198:                                    ; preds = %194
  store i8* %23, i8** @set_fields.num_start, align 8, !dbg !1518, !tbaa !718
  br label %199, !dbg !1519

; <label>:199:                                    ; preds = %194, %198
  %200 = phi i8* [ %195, %194 ], [ %23, %198 ]
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !187, metadata !711), !dbg !1335
  %201 = and i8 %20, 1, !dbg !1520
  %202 = icmp eq i8 %201, 0, !dbg !1520
  tail call void @llvm.dbg.value(metadata i8 %205, i64 0, metadata !184, metadata !711), !dbg !1333
  tail call void @llvm.dbg.value(metadata i8 %206, i64 0, metadata !183, metadata !711), !dbg !1332
  %203 = icmp ugt i64 %17, 1844674407370955161, !dbg !1522
  br i1 %203, label %215, label %204, !dbg !1522

; <label>:204:                                    ; preds = %199
  %205 = select i1 %202, i8 %19, i8 1
  %206 = select i1 %202, i8 1, i8 %18
  %207 = mul i64 %17, 10, !dbg !1522
  %208 = sext i8 %24 to i64, !dbg !1522
  %209 = add i64 %207, -48, !dbg !1522
  %210 = add i64 %209, %208, !dbg !1522
  %211 = icmp ult i64 %210, %17, !dbg !1522
  tail call void @llvm.dbg.value(metadata i64 %210, i64 0, metadata !182, metadata !711), !dbg !1331
  %212 = select i1 %211, i64 %17, i64 %210, !dbg !1522
  tail call void @llvm.dbg.value(metadata i64 %212, i64 0, metadata !182, metadata !711), !dbg !1331
  %213 = icmp eq i64 %212, -1, !dbg !1523
  %214 = or i1 %211, %213, !dbg !1524
  br i1 %214, label %215, label %229, !dbg !1524

; <label>:215:                                    ; preds = %199, %204
  %216 = tail call i64 @strspn(i8* %200, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7.36, i64 0, i64 0)) #14, !dbg !1525
  tail call void @llvm.dbg.value(metadata i64 %216, i64 0, metadata !188, metadata !711), !dbg !1526
  %217 = tail call i8* @xstrndup(i8* %200, i64 %216) #12, !dbg !1527
  tail call void @llvm.dbg.value(metadata i8* %217, i64 0, metadata !196, metadata !711), !dbg !1528
  %218 = and i32 %1, 4, !dbg !1529
  %219 = icmp eq i32 %218, 0, !dbg !1529
  %220 = select i1 %219, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9.37, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8.38, i64 0, i64 0), !dbg !1530
  %221 = tail call i8* @dcgettext(i8* null, i8* %220, i32 5) #12, !dbg !1531
  %222 = tail call i8* @quote(i8* %217) #12, !dbg !1532
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %221, i8* %222) #12, !dbg !1533
  tail call void @free(i8* %217) #12, !dbg !1534
  tail call void @usage(i32 1) #15, !dbg !1535
  unreachable, !dbg !1535

; <label>:223:                                    ; preds = %190
  %224 = and i32 %1, 4, !dbg !1536
  %225 = icmp eq i32 %224, 0, !dbg !1536
  %226 = select i1 %225, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11.39, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10.40, i64 0, i64 0), !dbg !1538
  %227 = tail call i8* @dcgettext(i8* null, i8* %226, i32 5) #12, !dbg !1539
  %228 = tail call i8* @quote(i8* %23) #12, !dbg !1540
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %227, i8* %228) #12, !dbg !1541
  tail call void @usage(i32 1) #15, !dbg !1542
  unreachable, !dbg !1542

; <label>:229:                                    ; preds = %204, %180, %44
  %230 = phi i64 [ 0, %44 ], [ 0, %180 ], [ %212, %204 ]
  %231 = phi i8 [ %18, %44 ], [ 0, %180 ], [ %206, %204 ]
  %232 = phi i8 [ %19, %44 ], [ 0, %180 ], [ %205, %204 ]
  %233 = phi i8 [ 1, %44 ], [ %185, %180 ], [ %20, %204 ]
  %234 = phi i1 [ false, %44 ], [ false, %180 ], [ true, %204 ]
  %235 = phi i64 [ %45, %44 ], [ %186, %180 ], [ %22, %204 ]
  %236 = getelementptr inbounds i8, i8* %23, i64 1
  tail call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !182, metadata !711), !dbg !1331
  tail call void @llvm.dbg.value(metadata i8* %236, i64 0, metadata !179, metadata !711), !dbg !1328
  tail call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !181, metadata !711), !dbg !1330
  tail call void @llvm.dbg.value(metadata i8 %233, i64 0, metadata !185, metadata !711), !dbg !1334
  tail call void @llvm.dbg.value(metadata i8 %232, i64 0, metadata !184, metadata !711), !dbg !1333
  tail call void @llvm.dbg.value(metadata i8 %231, i64 0, metadata !183, metadata !711), !dbg !1332
  br label %16, !dbg !1543, !llvm.loop !1544

; <label>:237:                                    ; preds = %180
  %238 = icmp eq i64 %187, 0, !dbg !1546
  br i1 %238, label %239, label %244, !dbg !1548

; <label>:239:                                    ; preds = %237
  %240 = and i32 %1, 4, !dbg !1549
  %241 = icmp eq i32 %240, 0, !dbg !1549
  %242 = select i1 %241, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13.41, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12.42, i64 0, i64 0), !dbg !1549
  %243 = tail call i8* @dcgettext(i8* null, i8* %242, i32 5) #12, !dbg !1549
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %243) #12, !dbg !1549
  tail call void @usage(i32 1) #15, !dbg !1549
  unreachable, !dbg !1549

; <label>:244:                                    ; preds = %237
  tail call void @qsort(i8* %181, i64 %187, i64 16, i32 (i8*, i8*)* nonnull @compare_ranges) #12, !dbg !1551
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !186, metadata !711), !dbg !1552
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !186, metadata !711), !dbg !1552
  %245 = load i64, i64* @n_frp, align 8, !dbg !1553, !tbaa !811
  %246 = icmp eq i64 %245, 0, !dbg !1554
  br i1 %246, label %282, label %247, !dbg !1555

; <label>:247:                                    ; preds = %244
  br label %248, !dbg !1556

; <label>:248:                                    ; preds = %247, %279
  %249 = phi i64 [ %280, %279 ], [ %245, %247 ], !dbg !1557
  %250 = phi i64 [ %251, %279 ], [ 0, %247 ]
  tail call void @llvm.dbg.value(metadata i64 %250, i64 0, metadata !186, metadata !711), !dbg !1552
  %251 = add i64 %250, 1, !dbg !1556
  tail call void @llvm.dbg.value(metadata i64 %251, i64 0, metadata !197, metadata !711), !dbg !1559
  tail call void @llvm.dbg.value(metadata i64 %251, i64 0, metadata !197, metadata !711), !dbg !1559
  %252 = icmp ugt i64 %249, %251, !dbg !1560
  br i1 %252, label %253, label %279, !dbg !1561

; <label>:253:                                    ; preds = %248
  br label %254, !dbg !1562

; <label>:254:                                    ; preds = %253, %262
  %255 = phi i64 [ %277, %262 ], [ %249, %253 ]
  %256 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1562, !tbaa !718
  %257 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %256, i64 %251, i32 0, !dbg !1565
  %258 = load i64, i64* %257, align 8, !dbg !1565, !tbaa !1063
  %259 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %256, i64 %250, i32 1, !dbg !1566
  %260 = load i64, i64* %259, align 8, !dbg !1566, !tbaa !1047
  %261 = icmp ugt i64 %258, %260, !dbg !1567
  br i1 %261, label %279, label %262, !dbg !1568

; <label>:262:                                    ; preds = %254
  %263 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %256, i64 %251, i32 1, !dbg !1569
  %264 = load i64, i64* %263, align 8, !dbg !1569, !tbaa !1047
  %265 = icmp ugt i64 %264, %260, !dbg !1569
  %266 = select i1 %265, i64 %251, i64 %250, !dbg !1569
  %267 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %256, i64 %266, i32 1, !dbg !1569
  %268 = load i64, i64* %267, align 8, !dbg !1569, !tbaa !1047
  store i64 %268, i64* %259, align 8, !dbg !1571, !tbaa !1047
  %269 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %256, i64 %251, !dbg !1572
  %270 = bitcast %struct.field_range_pair* %269 to i8*, !dbg !1573
  %271 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %269, i64 1, !dbg !1574
  %272 = bitcast %struct.field_range_pair* %271 to i8*, !dbg !1573
  %273 = sub i64 %255, %251, !dbg !1575
  %274 = shl i64 %273, 4, !dbg !1576
  %275 = add i64 %274, -16, !dbg !1576
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %270, i8* %272, i64 %275, i32 8, i1 false), !dbg !1573
  %276 = load i64, i64* @n_frp, align 8, !dbg !1577, !tbaa !811
  %277 = add i64 %276, -1, !dbg !1577
  store i64 %277, i64* @n_frp, align 8, !dbg !1577, !tbaa !811
  tail call void @llvm.dbg.value(metadata i64 %251, i64 0, metadata !197, metadata !711), !dbg !1559
  tail call void @llvm.dbg.value(metadata i64 %251, i64 0, metadata !197, metadata !711), !dbg !1559
  %278 = icmp ugt i64 %277, %251, !dbg !1560
  br i1 %278, label %254, label %279, !dbg !1561, !llvm.loop !1578

; <label>:279:                                    ; preds = %262, %254, %248
  %280 = phi i64 [ %249, %248 ], [ %277, %262 ], [ %255, %254 ], !dbg !1553
  tail call void @llvm.dbg.value(metadata i64 %251, i64 0, metadata !186, metadata !711), !dbg !1552
  tail call void @llvm.dbg.value(metadata i64 %251, i64 0, metadata !186, metadata !711), !dbg !1552
  %281 = icmp ult i64 %251, %280, !dbg !1554
  br i1 %281, label %248, label %282, !dbg !1555, !llvm.loop !1580

; <label>:282:                                    ; preds = %279, %244
  %283 = phi i64 [ 0, %244 ], [ %280, %279 ]
  %284 = and i32 %1, 2, !dbg !1582
  %285 = icmp eq i32 %284, 0, !dbg !1582
  br i1 %285, label %397, label %286, !dbg !1584

; <label>:286:                                    ; preds = %282
  %287 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1585, !tbaa !718
  tail call void @llvm.dbg.value(metadata %struct.field_range_pair* %287, i64 0, metadata !1588, metadata !711) #12, !dbg !1592
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1589, metadata !711) #12, !dbg !1593
  store %struct.field_range_pair* null, %struct.field_range_pair** @frp, align 8, !dbg !1594, !tbaa !718
  store i64 0, i64* @n_frp, align 8, !dbg !1595, !tbaa !811
  store i64 0, i64* @n_frp_allocated, align 8, !dbg !1596, !tbaa !811
  %288 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %287, i64 0, i32 0, !dbg !1597
  %289 = load i64, i64* %288, align 8, !dbg !1597, !tbaa !1063
  %290 = icmp ugt i64 %289, 1, !dbg !1599
  br i1 %290, label %291, label %300, !dbg !1600

; <label>:291:                                    ; preds = %286
  %292 = add i64 %289, -1, !dbg !1601
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1377, metadata !711) #12, !dbg !1602
  tail call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1382, metadata !711) #12, !dbg !1604
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !157, metadata !711) #12, !dbg !1605
  tail call void @llvm.dbg.value(metadata i64* @n_frp_allocated, i64 0, metadata !158, metadata !711) #12, !dbg !1607
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !159, metadata !711) #12, !dbg !1608
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !160, metadata !711) #12, !dbg !1609
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !160, metadata !711) #12, !dbg !1609
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !160, metadata !711) #12, !dbg !1609
  store i64 8, i64* @n_frp_allocated, align 8, !dbg !1610, !tbaa !811
  %293 = tail call i8* @xrealloc(i8* null, i64 128) #12, !dbg !1611
  store i8* %293, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1612, !tbaa !718
  %294 = bitcast i8* %293 to %struct.field_range_pair*, !dbg !1613
  %295 = load i64, i64* @n_frp, align 8, !dbg !1614, !tbaa !811
  %296 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %294, i64 %295, i32 0, !dbg !1615
  store i64 1, i64* %296, align 8, !dbg !1616, !tbaa !1063
  %297 = load i64, i64* @n_frp, align 8, !dbg !1617, !tbaa !811
  %298 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %294, i64 %297, i32 1, !dbg !1618
  store i64 %292, i64* %298, align 8, !dbg !1619, !tbaa !1047
  %299 = add i64 %297, 1, !dbg !1620
  store i64 %299, i64* @n_frp, align 8, !dbg !1620, !tbaa !811
  br label %300, !dbg !1621

; <label>:300:                                    ; preds = %291, %286
  %301 = phi %struct.field_range_pair* [ %294, %291 ], [ null, %286 ]
  %302 = phi i8* [ %293, %291 ], [ null, %286 ]
  %303 = phi i64 [ %299, %291 ], [ 0, %286 ]
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1590, metadata !711) #12, !dbg !1622
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1590, metadata !711) #12, !dbg !1622
  %304 = icmp ugt i64 %283, 1, !dbg !1623
  br i1 %304, label %305, label %357, !dbg !1626

; <label>:305:                                    ; preds = %300
  br label %306, !dbg !1627

; <label>:306:                                    ; preds = %305, %350
  %307 = phi %struct.field_range_pair* [ %351, %350 ], [ %301, %305 ]
  %308 = phi i8* [ %352, %350 ], [ %302, %305 ]
  %309 = phi %struct.field_range_pair* [ %353, %350 ], [ %301, %305 ]
  %310 = phi i64 [ %354, %350 ], [ %303, %305 ]
  %311 = phi i64 [ %355, %350 ], [ 1, %305 ]
  tail call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1590, metadata !711) #12, !dbg !1622
  %312 = add i64 %311, -1, !dbg !1627
  %313 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %287, i64 %312, i32 1, !dbg !1630
  %314 = load i64, i64* %313, align 8, !dbg !1630, !tbaa !1047
  %315 = add i64 %314, 1, !dbg !1631
  %316 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %287, i64 %311, i32 0, !dbg !1632
  %317 = load i64, i64* %316, align 8, !dbg !1632, !tbaa !1063
  %318 = icmp eq i64 %315, %317, !dbg !1633
  br i1 %318, label %350, label %319, !dbg !1634

; <label>:319:                                    ; preds = %306
  %320 = add i64 %317, -1, !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1377, metadata !711) #12, !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1382, metadata !711) #12, !dbg !1638
  %321 = load i64, i64* @n_frp_allocated, align 8, !dbg !1639, !tbaa !811
  %322 = icmp eq i64 %310, %321, !dbg !1640
  br i1 %322, label %323, label %341, !dbg !1641

; <label>:323:                                    ; preds = %319
  tail call void @llvm.dbg.value(metadata i8* %308, i64 0, metadata !157, metadata !711) #12, !dbg !1642
  tail call void @llvm.dbg.value(metadata i64* @n_frp_allocated, i64 0, metadata !158, metadata !711) #12, !dbg !1644
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !159, metadata !711) #12, !dbg !1645
  tail call void @llvm.dbg.value(metadata i64 %321, i64 0, metadata !160, metadata !711) #12, !dbg !1646
  %324 = icmp eq i8* %308, null, !dbg !1647
  br i1 %324, label %325, label %328, !dbg !1648

; <label>:325:                                    ; preds = %323
  %326 = icmp eq i64 %310, 0, !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !160, metadata !711) #12, !dbg !1646
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !160, metadata !711) #12, !dbg !1646
  %327 = select i1 %326, i64 8, i64 %310, !dbg !1650
  br label %335, !dbg !1650

; <label>:328:                                    ; preds = %323
  %329 = icmp ult i64 %310, 384307168202282325, !dbg !1651
  br i1 %329, label %331, label %330, !dbg !1652

; <label>:330:                                    ; preds = %328
  tail call void @xalloc_die() #15, !dbg !1653
  unreachable, !dbg !1653

; <label>:331:                                    ; preds = %328
  %332 = lshr i64 %310, 1, !dbg !1654
  %333 = add i64 %310, 1, !dbg !1655
  %334 = add i64 %333, %332, !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %334, i64 0, metadata !160, metadata !711) #12, !dbg !1646
  br label %335

; <label>:335:                                    ; preds = %331, %325
  %336 = phi i64 [ %334, %331 ], [ %327, %325 ]
  tail call void @llvm.dbg.value(metadata i64 %336, i64 0, metadata !160, metadata !711) #12, !dbg !1646
  store i64 %336, i64* @n_frp_allocated, align 8, !dbg !1657, !tbaa !811
  %337 = shl i64 %336, 4, !dbg !1658
  %338 = tail call i8* @xrealloc(i8* %308, i64 %337) #12, !dbg !1659
  store i8* %338, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1660, !tbaa !718
  %339 = bitcast i8* %338 to %struct.field_range_pair*, !dbg !1661
  %340 = load i64, i64* @n_frp, align 8, !dbg !1662, !tbaa !811
  br label %341, !dbg !1661

; <label>:341:                                    ; preds = %335, %319
  %342 = phi %struct.field_range_pair* [ %339, %335 ], [ %307, %319 ]
  %343 = phi i8* [ %338, %335 ], [ %308, %319 ]
  %344 = phi %struct.field_range_pair* [ %339, %335 ], [ %309, %319 ]
  %345 = phi i64 [ %340, %335 ], [ %310, %319 ], !dbg !1662
  %346 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %344, i64 %345, i32 0, !dbg !1663
  store i64 %315, i64* %346, align 8, !dbg !1664, !tbaa !1063
  %347 = load i64, i64* @n_frp, align 8, !dbg !1665, !tbaa !811
  %348 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %344, i64 %347, i32 1, !dbg !1666
  store i64 %320, i64* %348, align 8, !dbg !1667, !tbaa !1047
  %349 = add i64 %347, 1, !dbg !1668
  store i64 %349, i64* @n_frp, align 8, !dbg !1668, !tbaa !811
  br label %350, !dbg !1669

; <label>:350:                                    ; preds = %341, %306
  %351 = phi %struct.field_range_pair* [ %307, %306 ], [ %342, %341 ]
  %352 = phi i8* [ %308, %306 ], [ %343, %341 ]
  %353 = phi %struct.field_range_pair* [ %309, %306 ], [ %344, %341 ]
  %354 = phi i64 [ %310, %306 ], [ %349, %341 ]
  %355 = add nuw i64 %311, 1, !dbg !1670
  tail call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1590, metadata !711) #12, !dbg !1622
  tail call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1590, metadata !711) #12, !dbg !1622
  %356 = icmp ult i64 %355, %283, !dbg !1623
  br i1 %356, label %306, label %357, !dbg !1626, !llvm.loop !1671

; <label>:357:                                    ; preds = %350, %300
  %358 = phi i8* [ %302, %300 ], [ %352, %350 ]
  %359 = phi %struct.field_range_pair* [ %301, %300 ], [ %351, %350 ]
  %360 = phi i64 [ %303, %300 ], [ %354, %350 ]
  %361 = add i64 %283, -1, !dbg !1674
  %362 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %287, i64 %361, i32 1, !dbg !1676
  %363 = load i64, i64* %362, align 8, !dbg !1676, !tbaa !1047
  %364 = icmp eq i64 %363, -1, !dbg !1677
  br i1 %364, label %394, label %365, !dbg !1678

; <label>:365:                                    ; preds = %357
  %366 = add i64 %363, 1, !dbg !1679
  tail call void @llvm.dbg.value(metadata i64 %366, i64 0, metadata !1377, metadata !711) #12, !dbg !1680
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1382, metadata !711) #12, !dbg !1682
  %367 = load i64, i64* @n_frp_allocated, align 8, !dbg !1683, !tbaa !811
  %368 = icmp eq i64 %360, %367, !dbg !1684
  br i1 %368, label %369, label %387, !dbg !1685

; <label>:369:                                    ; preds = %365
  tail call void @llvm.dbg.value(metadata i8* %358, i64 0, metadata !157, metadata !711) #12, !dbg !1686
  tail call void @llvm.dbg.value(metadata i64* @n_frp_allocated, i64 0, metadata !158, metadata !711) #12, !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !159, metadata !711) #12, !dbg !1689
  tail call void @llvm.dbg.value(metadata i64 %367, i64 0, metadata !160, metadata !711) #12, !dbg !1690
  %370 = icmp eq i8* %358, null, !dbg !1691
  br i1 %370, label %371, label %374, !dbg !1692

; <label>:371:                                    ; preds = %369
  %372 = icmp eq i64 %360, 0, !dbg !1693
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !160, metadata !711) #12, !dbg !1690
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !160, metadata !711) #12, !dbg !1690
  %373 = select i1 %372, i64 8, i64 %360, !dbg !1694
  br label %381, !dbg !1694

; <label>:374:                                    ; preds = %369
  %375 = icmp ult i64 %360, 384307168202282325, !dbg !1695
  br i1 %375, label %377, label %376, !dbg !1696

; <label>:376:                                    ; preds = %374
  tail call void @xalloc_die() #15, !dbg !1697
  unreachable, !dbg !1697

; <label>:377:                                    ; preds = %374
  %378 = lshr i64 %360, 1, !dbg !1698
  %379 = add i64 %360, 1, !dbg !1699
  %380 = add i64 %379, %378, !dbg !1700
  tail call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !160, metadata !711) #12, !dbg !1690
  br label %381

; <label>:381:                                    ; preds = %377, %371
  %382 = phi i64 [ %380, %377 ], [ %373, %371 ]
  tail call void @llvm.dbg.value(metadata i64 %382, i64 0, metadata !160, metadata !711) #12, !dbg !1690
  store i64 %382, i64* @n_frp_allocated, align 8, !dbg !1701, !tbaa !811
  %383 = shl i64 %382, 4, !dbg !1702
  %384 = tail call i8* @xrealloc(i8* %358, i64 %383) #12, !dbg !1703
  store i8* %384, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1704, !tbaa !718
  %385 = bitcast i8* %384 to %struct.field_range_pair*, !dbg !1705
  %386 = load i64, i64* @n_frp, align 8, !dbg !1706, !tbaa !811
  br label %387, !dbg !1705

; <label>:387:                                    ; preds = %381, %365
  %388 = phi i64 [ %386, %381 ], [ %360, %365 ], !dbg !1706
  %389 = phi %struct.field_range_pair* [ %385, %381 ], [ %359, %365 ], !dbg !1707
  %390 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %389, i64 %388, i32 0, !dbg !1708
  store i64 %366, i64* %390, align 8, !dbg !1709, !tbaa !1063
  %391 = load i64, i64* @n_frp, align 8, !dbg !1710, !tbaa !811
  %392 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %389, i64 %391, i32 1, !dbg !1711
  store i64 -1, i64* %392, align 8, !dbg !1712, !tbaa !1047
  %393 = add i64 %391, 1, !dbg !1713
  store i64 %393, i64* @n_frp, align 8, !dbg !1713, !tbaa !811
  br label %394, !dbg !1714

; <label>:394:                                    ; preds = %357, %387
  %395 = bitcast %struct.field_range_pair* %287 to i8*, !dbg !1715
  tail call void @free(i8* %395) #12, !dbg !1716
  %396 = load i64, i64* @n_frp, align 8, !dbg !1717, !tbaa !811
  br label %397, !dbg !1718

; <label>:397:                                    ; preds = %282, %394
  %398 = phi i64 [ %283, %282 ], [ %396, %394 ], !dbg !1717
  %399 = add i64 %398, 1, !dbg !1717
  store i64 %399, i64* @n_frp, align 8, !dbg !1717, !tbaa !811
  %400 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1719, !tbaa !718
  %401 = shl i64 %399, 4, !dbg !1720
  %402 = tail call i8* @xrealloc(i8* %400, i64 %401) #12, !dbg !1721
  %403 = bitcast i8* %402 to %struct.field_range_pair*, !dbg !1721
  store i8* %402, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1722, !tbaa !718
  %404 = load i64, i64* @n_frp, align 8, !dbg !1723, !tbaa !811
  %405 = add i64 %404, -1, !dbg !1724
  %406 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %403, i64 %405, i32 0, !dbg !1725
  %407 = bitcast i64* %406 to i8*, !dbg !1726
  call void @llvm.memset.p0i8.i64(i8* %407, i8 -1, i64 16, i32 8, i1 false), !dbg !1727
  ret void, !dbg !1726
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i32 @compare_ranges(i8* nocapture readonly, i8* nocapture readonly) #9 !dbg !1728 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1734, metadata !711), !dbg !1738
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1735, metadata !711), !dbg !1739
  %3 = bitcast i8* %0 to i64*, !dbg !1740
  %4 = load i64, i64* %3, align 8, !dbg !1740, !tbaa !1063
  %5 = trunc i64 %4 to i32, !dbg !1741
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1736, metadata !711), !dbg !1742
  %6 = bitcast i8* %1 to i64*, !dbg !1743
  %7 = load i64, i64* %6, align 8, !dbg !1743, !tbaa !1063
  %8 = trunc i64 %7 to i32, !dbg !1744
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1737, metadata !711), !dbg !1745
  %9 = icmp slt i32 %5, %8, !dbg !1746
  %10 = icmp sgt i32 %5, %8, !dbg !1747
  %11 = zext i1 %10 to i32, !dbg !1747
  %12 = select i1 %9, i32 -1, i32 %11, !dbg !1748
  ret i32 %12, !dbg !1749
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #10

; Function Attrs: nounwind sspstrong uwtable
define void @reset_fields() local_unnamed_addr #6 !dbg !1750 {
  store i64 0, i64* @n_frp, align 8, !dbg !1751, !tbaa !811
  store i64 0, i64* @n_frp_allocated, align 8, !dbg !1752, !tbaa !811
  %1 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1753, !tbaa !718
  tail call void @free(i8* %1) #12, !dbg !1754
  store %struct.field_range_pair* null, %struct.field_range_pair** @frp, align 8, !dbg !1755, !tbaa !718
  ret void, !dbg !1756
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1757 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1759, metadata !711), !dbg !1760
  store i8* %0, i8** @file_name, align 8, !dbg !1761, !tbaa !718
  ret void, !dbg !1762
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1763 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1767, metadata !711), !dbg !1768
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1769, !tbaa !1770
  ret void, !dbg !1772
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1773 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1778, !tbaa !718
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1779
  %3 = icmp eq i32 %2, 0, !dbg !1780
  br i1 %3, label %21, label %4, !dbg !1781

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1782, !tbaa !1770, !range !1783
  %6 = icmp eq i8 %5, 0, !dbg !1782
  %7 = tail call i32* @__errno_location() #17, !dbg !1784
  br i1 %6, label %11, label %8, !dbg !1786

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1787, !tbaa !860
  %10 = icmp eq i32 %9, 32, !dbg !1788
  br i1 %10, label %21, label %11, !dbg !1789

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0), i32 5) #12, !dbg !1790
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1775, metadata !711), !dbg !1791
  %13 = load i8*, i8** @file_name, align 8, !dbg !1792, !tbaa !718
  %14 = icmp eq i8* %13, null, !dbg !1792
  %15 = load i32, i32* %7, align 4, !tbaa !860
  br i1 %14, label %18, label %16, !dbg !1793

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1794
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.62, i64 0, i64 0), i8* %17, i8* %12) #12, !dbg !1795
  br label %19, !dbg !1795

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.63, i64 0, i64 0), i8* %12) #12, !dbg !1796
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1797, !tbaa !860
  tail call void @_exit(i32 %20) #15, !dbg !1798
  unreachable, !dbg !1798

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1799, !tbaa !718
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #12, !dbg !1801
  %24 = icmp eq i32 %23, 0, !dbg !1802
  br i1 %24, label %27, label %25, !dbg !1803

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1804, !tbaa !860
  tail call void @_exit(i32 %26) #15, !dbg !1805
  unreachable, !dbg !1805

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1806
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1807 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1814, metadata !711), !dbg !1820
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1815, metadata !711), !dbg !1821
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1816, metadata !711), !dbg !1822
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1817, metadata !711), !dbg !1823
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #12, !dbg !1824
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1818, metadata !711), !dbg !1824
  ret void, !dbg !1825
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1826 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1870, metadata !711), !dbg !1872
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1871, metadata !711), !dbg !1873
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1874
  br i1 %3, label %7, label %4, !dbg !1876

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !1877
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1814, metadata !711) #12, !dbg !1878
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1815, metadata !711) #12, !dbg !1880
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1816, metadata !711) #12, !dbg !1881
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1817, metadata !711) #12, !dbg !1882
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #12, !dbg !1883
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1818, metadata !711) #12, !dbg !1883
  br label %7, !dbg !1884

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1885
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @getndelim2(i8** nocapture, i64* nocapture, i64, i64, i32, i32, %struct._IO_FILE*) local_unnamed_addr #6 !dbg !1886 {
  %8 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8** %0, i64 0, metadata !1931, metadata !711), !dbg !1963
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !1932, metadata !711), !dbg !1964
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1933, metadata !711), !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1934, metadata !711), !dbg !1966
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1935, metadata !711), !dbg !1967
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1936, metadata !711), !dbg !1968
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %6, i64 0, metadata !1937, metadata !711), !dbg !1969
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1940, metadata !711), !dbg !1970
  %9 = load i8*, i8** %0, align 8, !dbg !1971, !tbaa !718
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !1941, metadata !711), !dbg !1972
  %10 = load i64, i64* %1, align 8, !dbg !1973, !tbaa !811
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1942, metadata !711), !dbg !1974
  %11 = icmp eq i8* %9, null, !dbg !1975
  br i1 %11, label %12, label %17, !dbg !1977

; <label>:12:                                     ; preds = %7
  %13 = icmp ult i64 %3, 64, !dbg !1978
  %14 = select i1 %13, i64 %3, i64 64, !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1942, metadata !711), !dbg !1974
  %15 = tail call noalias i8* @malloc(i64 %14) #12, !dbg !1981
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1941, metadata !711), !dbg !1972
  %16 = icmp eq i8* %15, null, !dbg !1982
  br i1 %16, label %154, label %17, !dbg !1984

; <label>:17:                                     ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ]
  %19 = phi i64 [ %10, %7 ], [ %14, %12 ]
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1942, metadata !711), !dbg !1974
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1941, metadata !711), !dbg !1972
  %20 = icmp ult i64 %19, %2, !dbg !1985
  br i1 %20, label %141, label %21, !dbg !1987

; <label>:21:                                     ; preds = %17
  %22 = sub i64 %19, %2, !dbg !1988
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !1938, metadata !711), !dbg !1989
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1939, metadata !711), !dbg !1990
  %23 = icmp ne i64 %22, 0, !dbg !1991
  %24 = icmp ult i64 %19, %3, !dbg !1993
  %25 = or i1 %24, %23, !dbg !1994
  br i1 %25, label %26, label %141, !dbg !1994

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds i8, i8* %18, i64 %2, !dbg !1995
  %28 = icmp eq i32 %4, -1, !dbg !1996
  %29 = icmp eq i32 %5, -1, !dbg !1998
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1936, metadata !711), !dbg !1968
  %30 = select i1 %29, i32 %4, i32 %5, !dbg !2000
  %31 = select i1 %28, i32 %5, i32 %30, !dbg !2001
  %32 = select i1 %28, i32 %5, i32 %4, !dbg !2001
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !1935, metadata !711), !dbg !1967
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !1936, metadata !711), !dbg !1968
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1943, metadata !711), !dbg !2002
  %33 = bitcast i64* %8 to i8*
  %34 = icmp eq i32 %32, -1
  %35 = xor i64 %2, -9223372036854775808
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i64 0, i32 1
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i64 0, i32 2
  br label %38, !dbg !2003, !llvm.loop !2004

; <label>:38:                                     ; preds = %136, %26
  %39 = phi i8* [ %27, %26 ], [ %129, %136 ]
  %40 = phi i8* [ %18, %26 ], [ %113, %136 ]
  %41 = phi i64 [ %19, %26 ], [ %114, %136 ]
  %42 = phi i8 [ 0, %26 ], [ %76, %136 ]
  %43 = phi i32 [ undef, %26 ], [ %77, %136 ]
  %44 = phi i64 [ %22, %26 ], [ %130, %136 ]
  call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1938, metadata !711), !dbg !1989
  call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1944, metadata !711), !dbg !2006
  call void @llvm.dbg.value(metadata i8 %42, i64 0, metadata !1943, metadata !711), !dbg !2002
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !1942, metadata !711), !dbg !1974
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1941, metadata !711), !dbg !1972
  call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !1939, metadata !711), !dbg !1990
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #12, !dbg !2007
  call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !1947, metadata !711), !dbg !2008
  %45 = call i8* @freadptr(%struct._IO_FILE* %6, i64* nonnull %8) #12, !dbg !2009
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !1946, metadata !711), !dbg !2010
  %46 = icmp ne i8* %45, null, !dbg !2011
  br i1 %46, label %47, label %57, !dbg !2012

; <label>:47:                                     ; preds = %38
  %48 = load i64, i64* %8, align 8, !tbaa !811
  br i1 %34, label %74, label %49, !dbg !2013

; <label>:49:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !1947, metadata !711), !dbg !2008
  %50 = call i8* @memchr2(i8* nonnull %45, i32 %32, i32 %31, i64 %48) #14, !dbg !2014
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1948, metadata !711), !dbg !2015
  %51 = icmp eq i8* %50, null, !dbg !2016
  br i1 %51, label %74, label %52, !dbg !2018

; <label>:52:                                     ; preds = %49
  %53 = ptrtoint i8* %50 to i64, !dbg !2019
  %54 = ptrtoint i8* %45 to i64, !dbg !2019
  %55 = sub i64 1, %54, !dbg !2019
  %56 = add i64 %55, %53, !dbg !2021
  call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !1947, metadata !711), !dbg !2008
  store i64 %56, i64* %8, align 8, !dbg !2022, !tbaa !811
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1943, metadata !711), !dbg !2002
  br label %74, !dbg !2023

; <label>:57:                                     ; preds = %38
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %6, i64 0, metadata !2024, metadata !711) #12, !dbg !2029
  %58 = load i8*, i8** %36, align 8, !dbg !2032, !tbaa !1002
  %59 = load i8*, i8** %37, align 8, !dbg !2032, !tbaa !1005
  %60 = icmp ult i8* %58, %59, !dbg !2032
  br i1 %60, label %61, label %65, !dbg !2032, !prof !1006

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !2032
  store i8* %62, i8** %36, align 8, !dbg !2032, !tbaa !1002
  %63 = load i8, i8* %58, align 1, !dbg !2032, !tbaa !768
  %64 = zext i8 %63 to i32, !dbg !2032
  call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !1944, metadata !711), !dbg !2006
  br label %68, !dbg !2033

; <label>:65:                                     ; preds = %57
  %66 = call i32 @__uflow(%struct._IO_FILE* nonnull %6) #12, !dbg !2032
  call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !1944, metadata !711), !dbg !2006
  %67 = icmp eq i32 %66, -1, !dbg !2034
  br i1 %67, label %139, label %68, !dbg !2033

; <label>:68:                                     ; preds = %61, %65
  %69 = phi i32 [ %64, %61 ], [ %66, %65 ]
  %70 = icmp eq i32 %69, %32, !dbg !2036
  %71 = icmp eq i32 %69, %31, !dbg !2038
  %72 = or i1 %70, %71, !dbg !2039
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1943, metadata !711), !dbg !2002
  %73 = select i1 %72, i8 1, i8 %42, !dbg !2039
  call void @llvm.dbg.value(metadata i8 %73, i64 0, metadata !1943, metadata !711), !dbg !2002
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1947, metadata !711), !dbg !2008
  store i64 1, i64* %8, align 8, !dbg !2040, !tbaa !811
  br label %74

; <label>:74:                                     ; preds = %47, %52, %49, %68
  %75 = phi i64 [ 1, %68 ], [ %56, %52 ], [ %48, %49 ], [ %48, %47 ], !dbg !2041
  %76 = phi i8 [ %73, %68 ], [ 1, %52 ], [ %42, %49 ], [ %42, %47 ]
  %77 = phi i32 [ %69, %68 ], [ %43, %52 ], [ %43, %49 ], [ %43, %47 ]
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !1944, metadata !711), !dbg !2006
  call void @llvm.dbg.value(metadata i8 %76, i64 0, metadata !1943, metadata !711), !dbg !2002
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1947, metadata !711), !dbg !2008
  %78 = add i64 %75, 1, !dbg !2042
  %79 = icmp ult i64 %44, %78, !dbg !2043
  %80 = icmp ult i64 %41, %3, !dbg !2044
  %81 = and i1 %80, %79, !dbg !2045
  br i1 %81, label %82, label %111, !dbg !2045

; <label>:82:                                     ; preds = %74
  %83 = icmp ult i64 %41, 64, !dbg !2046
  %84 = add i64 %41, 64, !dbg !2047
  %85 = shl i64 %41, 1, !dbg !2048
  %86 = select i1 %83, i64 %84, i64 %85, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %86, i64 0, metadata !1953, metadata !711), !dbg !2050
  %87 = ptrtoint i8* %39 to i64, !dbg !2051
  %88 = ptrtoint i8* %40 to i64, !dbg !2051
  %89 = sub i64 %87, %88, !dbg !2051
  %90 = sub i64 %86, %89, !dbg !2053
  %91 = icmp ult i64 %90, %78, !dbg !2054
  %92 = add i64 %89, 1, !dbg !2055
  %93 = add i64 %92, %75, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !1953, metadata !711), !dbg !2050
  %94 = select i1 %91, i64 %93, i64 %86, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %94, i64 0, metadata !1953, metadata !711), !dbg !2050
  %95 = icmp uge i64 %41, %94, !dbg !2058
  %96 = icmp ugt i64 %94, %3, !dbg !2060
  %97 = or i1 %95, %96, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1953, metadata !711), !dbg !2050
  %98 = select i1 %97, i64 %3, i64 %94, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1953, metadata !711), !dbg !2050
  %99 = sub i64 %98, %2, !dbg !2062
  %100 = icmp slt i64 %99, 0, !dbg !2063
  br i1 %100, label %101, label %104, !dbg !2064

; <label>:101:                                    ; preds = %82
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1957, metadata !711), !dbg !2065
  %102 = icmp eq i64 %41, %35, !dbg !2066
  br i1 %102, label %103, label %104

; <label>:103:                                    ; preds = %101
  call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1938, metadata !711), !dbg !1989
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !1942, metadata !711), !dbg !1974
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1941, metadata !711), !dbg !1972
  call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !1939, metadata !711), !dbg !1990
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #12, !dbg !2068
  br label %141

; <label>:104:                                    ; preds = %101, %82
  %105 = phi i64 [ %35, %101 ], [ %98, %82 ]
  call void @llvm.dbg.value(metadata i64 %105, i64 0, metadata !1953, metadata !711), !dbg !2050
  %106 = sub i64 %105, %89, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %106, i64 0, metadata !1938, metadata !711), !dbg !1989
  %107 = call i8* @realloc(i8* %40, i64 %105) #12, !dbg !2070
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !1956, metadata !711), !dbg !2071
  %108 = icmp eq i8* %107, null, !dbg !2072
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !1941, metadata !711), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %105, i64 0, metadata !1942, metadata !711), !dbg !1974
  %109 = getelementptr inbounds i8, i8* %107, i64 %89, !dbg !2074
  call void @llvm.dbg.value(metadata i8* %109, i64 0, metadata !1939, metadata !711), !dbg !1990
  br i1 %108, label %110, label %111

; <label>:110:                                    ; preds = %104
  call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1938, metadata !711), !dbg !1989
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !1942, metadata !711), !dbg !1974
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1941, metadata !711), !dbg !1972
  call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !1939, metadata !711), !dbg !1990
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #12, !dbg !2068
  br label %141

; <label>:111:                                    ; preds = %104, %74
  %112 = phi i8* [ %39, %74 ], [ %109, %104 ]
  %113 = phi i8* [ %40, %74 ], [ %107, %104 ]
  %114 = phi i64 [ %41, %74 ], [ %105, %104 ]
  %115 = phi i64 [ %44, %74 ], [ %106, %104 ]
  call void @llvm.dbg.value(metadata i64 %115, i64 0, metadata !1938, metadata !711), !dbg !1989
  call void @llvm.dbg.value(metadata i64 %114, i64 0, metadata !1942, metadata !711), !dbg !1974
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !1941, metadata !711), !dbg !1972
  call void @llvm.dbg.value(metadata i8* %112, i64 0, metadata !1939, metadata !711), !dbg !1990
  %116 = icmp ugt i64 %115, 1, !dbg !2075
  br i1 %116, label %117, label %128, !dbg !2076

; <label>:117:                                    ; preds = %111
  %118 = add i64 %115, -1, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %118, i64 0, metadata !1960, metadata !711), !dbg !2078
  %119 = load i64, i64* %8, align 8, !dbg !2079, !tbaa !811
  call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !1947, metadata !711), !dbg !2008
  %120 = icmp ult i64 %119, %118, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !1960, metadata !711), !dbg !2078
  %121 = select i1 %120, i64 %119, i64 %118, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %121, i64 0, metadata !1960, metadata !711), !dbg !2078
  br i1 %46, label %122, label %123, !dbg !2083

; <label>:122:                                    ; preds = %117
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* nonnull %45, i64 %121, i32 1, i1 false), !dbg !2084
  br label %125, !dbg !2084

; <label>:123:                                    ; preds = %117
  %124 = trunc i32 %77 to i8, !dbg !2086
  store i8 %124, i8* %112, align 1, !dbg !2087, !tbaa !768
  br label %125

; <label>:125:                                    ; preds = %123, %122
  %126 = getelementptr inbounds i8, i8* %112, i64 %121, !dbg !2088
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !1939, metadata !711), !dbg !1990
  %127 = sub i64 %115, %121, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1938, metadata !711), !dbg !1989
  br label %128, !dbg !2090

; <label>:128:                                    ; preds = %125, %111
  %129 = phi i8* [ %126, %125 ], [ %112, %111 ]
  %130 = phi i64 [ %127, %125 ], [ %115, %111 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1938, metadata !711), !dbg !1989
  call void @llvm.dbg.value(metadata i8* %129, i64 0, metadata !1939, metadata !711), !dbg !1990
  br i1 %46, label %131, label %136, !dbg !2091

; <label>:131:                                    ; preds = %128
  %132 = load i64, i64* %8, align 8, !dbg !2093, !tbaa !811
  call void @llvm.dbg.value(metadata i64 %132, i64 0, metadata !1947, metadata !711), !dbg !2008
  %133 = call i32 @freadseek(%struct._IO_FILE* %6, i64 %132) #12, !dbg !2094
  %134 = icmp eq i32 %133, 0, !dbg !2094
  br i1 %134, label %136, label %135, !dbg !2095

; <label>:135:                                    ; preds = %131
  call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1938, metadata !711), !dbg !1989
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !1942, metadata !711), !dbg !1974
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1941, metadata !711), !dbg !1972
  call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !1939, metadata !711), !dbg !1990
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #12, !dbg !2068
  br label %141

; <label>:136:                                    ; preds = %128, %131
  call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1938, metadata !711), !dbg !1989
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !1942, metadata !711), !dbg !1974
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1941, metadata !711), !dbg !1972
  call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !1939, metadata !711), !dbg !1990
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #12, !dbg !2068
  %137 = and i8 %76, 1, !dbg !2096
  %138 = icmp eq i8 %137, 0, !dbg !2096
  br i1 %138, label %38, label %144, !dbg !2097, !llvm.loop !2004

; <label>:139:                                    ; preds = %65
  %140 = icmp eq i8* %39, %40, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1938, metadata !711), !dbg !1989
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !1942, metadata !711), !dbg !1974
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1941, metadata !711), !dbg !1972
  call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !1939, metadata !711), !dbg !1990
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #12, !dbg !2068
  br i1 %140, label %141, label %144

; <label>:141:                                    ; preds = %139, %103, %17, %21, %135, %110
  %142 = phi i8* [ %113, %135 ], [ %18, %21 ], [ %40, %139 ], [ %18, %17 ], [ %40, %110 ], [ %40, %103 ]
  %143 = phi i64 [ %114, %135 ], [ %19, %21 ], [ %41, %139 ], [ %19, %17 ], [ %41, %110 ], [ %35, %103 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1942, metadata !711), !dbg !1974
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !1941, metadata !711), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %151, i64 0, metadata !1940, metadata !711), !dbg !1970
  store i8* %142, i8** %0, align 8, !dbg !2101, !tbaa !718
  store i64 %143, i64* %1, align 8, !dbg !2102, !tbaa !811
  br label %154, !dbg !2103

; <label>:144:                                    ; preds = %136, %139
  %145 = phi i64 [ %41, %139 ], [ %114, %136 ]
  %146 = phi i8* [ %40, %139 ], [ %113, %136 ]
  %147 = phi i8* [ %39, %139 ], [ %129, %136 ]
  store i8 0, i8* %147, align 1, !dbg !2104, !tbaa !768
  %148 = getelementptr inbounds i8, i8* %146, i64 %2, !dbg !2105
  %149 = ptrtoint i8* %147 to i64, !dbg !2106
  %150 = ptrtoint i8* %148 to i64, !dbg !2106
  %151 = sub i64 %149, %150, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %151, i64 0, metadata !1940, metadata !711), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1942, metadata !711), !dbg !1974
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !1941, metadata !711), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %151, i64 0, metadata !1940, metadata !711), !dbg !1970
  store i8* %146, i8** %0, align 8, !dbg !2101, !tbaa !718
  store i64 %145, i64* %1, align 8, !dbg !2102, !tbaa !811
  %152 = icmp eq i64 %151, 0, !dbg !2103
  %153 = select i1 %152, i64 -1, i64 %151, !dbg !2103
  ret i64 %153, !dbg !2103

; <label>:154:                                    ; preds = %141, %12
  ret i64 -1, !dbg !2107
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #10

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #10

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @memchr2(i8*, i32, i32, i64) local_unnamed_addr #9 !dbg !2108 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2113, metadata !711), !dbg !2131
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2114, metadata !711), !dbg !2132
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2115, metadata !711), !dbg !2133
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2116, metadata !711), !dbg !2134
  %5 = insertelement <2 x i32> undef, i32 %1, i32 0, !dbg !2135
  %6 = insertelement <2 x i32> %5, i32 %2, i32 1, !dbg !2135
  %7 = and <2 x i32> %6, <i32 255, i32 255>, !dbg !2135
  %8 = extractelement <2 x i32> %7, i32 0, !dbg !2137
  %9 = extractelement <2 x i32> %7, i32 1, !dbg !2137
  %10 = icmp eq i32 %8, %9, !dbg !2137
  br i1 %10, label %11, label %13, !dbg !2138

; <label>:11:                                     ; preds = %4
  %12 = tail call i8* @memchr(i8* %0, i32 %8, i64 %3) #14, !dbg !2139
  br label %88, !dbg !2140

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2118, metadata !711), !dbg !2141
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2116, metadata !711), !dbg !2134
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2118, metadata !711), !dbg !2141
  %14 = icmp ne i64 %3, 0, !dbg !2142
  %15 = ptrtoint i8* %0 to i64, !dbg !2145
  %16 = and i64 %15, 7, !dbg !2146
  %17 = icmp ne i64 %16, 0, !dbg !2147
  %18 = and i1 %14, %17, !dbg !2148
  br i1 %18, label %19, label %36, !dbg !2149

; <label>:19:                                     ; preds = %13
  br label %20, !dbg !2150

; <label>:20:                                     ; preds = %19, %28
  %21 = phi i64 [ %30, %28 ], [ %3, %19 ]
  %22 = phi i8* [ %29, %28 ], [ %0, %19 ]
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !2117, metadata !711), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !2118, metadata !711), !dbg !2141
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !2116, metadata !711), !dbg !2134
  %23 = load i8, i8* %22, align 1, !dbg !2150, !tbaa !768
  %24 = zext i8 %23 to i32, !dbg !2150
  %25 = icmp eq i32 %8, %24, !dbg !2154
  %26 = icmp eq i32 %9, %24, !dbg !2155
  %27 = or i1 %25, %26, !dbg !2156
  br i1 %27, label %88, label %28, !dbg !2156

; <label>:28:                                     ; preds = %20
  %29 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !2157
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2118, metadata !711), !dbg !2141
  %30 = add i64 %21, -1, !dbg !2158
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !2116, metadata !711), !dbg !2134
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !2116, metadata !711), !dbg !2134
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2118, metadata !711), !dbg !2141
  %31 = icmp ne i64 %30, 0, !dbg !2142
  %32 = ptrtoint i8* %29 to i64, !dbg !2145
  %33 = and i64 %32, 7, !dbg !2146
  %34 = icmp ne i64 %33, 0, !dbg !2147
  %35 = and i1 %31, %34, !dbg !2148
  br i1 %35, label %20, label %36, !dbg !2149, !llvm.loop !2159

; <label>:36:                                     ; preds = %28, %13
  %37 = phi i8* [ %0, %13 ], [ %29, %28 ]
  %38 = phi i64 [ %3, %13 ], [ %30, %28 ]
  %39 = bitcast i8* %37 to i64*, !dbg !2161
  tail call void @llvm.dbg.value(metadata i64* %39, i64 0, metadata !2119, metadata !711), !dbg !2162
  tail call void @llvm.dbg.value(metadata i64 16843009, i64 0, metadata !2123, metadata !711), !dbg !2163
  %40 = shl nuw nsw <2 x i32> %7, <i32 8, i32 8>, !dbg !2164
  %41 = or <2 x i32> %40, %7, !dbg !2165
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !2124, metadata !711), !dbg !2166
  %42 = shl nuw <2 x i32> %41, <i32 16, i32 16>, !dbg !2167
  %43 = or <2 x i32> %42, %41, !dbg !2168
  %44 = zext <2 x i32> %43 to <2 x i64>, !dbg !2168
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !2125, metadata !711), !dbg !2169
  tail call void @llvm.dbg.value(metadata i64 72340172838076673, i64 0, metadata !2123, metadata !711), !dbg !2163
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !2124, metadata !711), !dbg !2166
  %45 = shl nuw <2 x i64> %44, <i64 32, i64 32>, !dbg !2170
  %46 = or <2 x i64> %45, %44, !dbg !2173
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !2125, metadata !711), !dbg !2169
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2116, metadata !711), !dbg !2134
  tail call void @llvm.dbg.value(metadata i64* %39, i64 0, metadata !2119, metadata !711), !dbg !2162
  %47 = icmp ugt i64 %38, 7, !dbg !2174
  br i1 %47, label %48, label %70, !dbg !2175

; <label>:48:                                     ; preds = %36
  br label %49, !dbg !2176

; <label>:49:                                     ; preds = %48, %49
  %50 = phi i64 [ %67, %49 ], [ %38, %48 ]
  %51 = phi i64* [ %66, %49 ], [ %39, %48 ]
  tail call void @llvm.dbg.value(metadata i64* %51, i64 0, metadata !2119, metadata !711), !dbg !2162
  tail call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !2116, metadata !711), !dbg !2134
  %52 = load i64, i64* %51, align 8, !dbg !2176, !tbaa !811
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !2128, metadata !711), !dbg !2177
  %53 = insertelement <2 x i64> undef, i64 %52, i32 0
  %54 = shufflevector <2 x i64> %53, <2 x i64> undef, <2 x i32> zeroinitializer, !dbg !2178
  %55 = xor <2 x i64> %54, %46, !dbg !2178
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !2130, metadata !711), !dbg !2179
  %56 = add <2 x i64> %55, <i64 -72340172838076673, i64 -72340172838076673>, !dbg !2180
  %57 = xor <2 x i64> %55, <i64 -9187201950435737472, i64 -9187201950435737472>, !dbg !2182
  %58 = and <2 x i64> %56, %57, !dbg !2183
  %59 = extractelement <2 x i64> %58, i32 0, !dbg !2184
  %60 = extractelement <2 x i64> %58, i32 1, !dbg !2184
  %61 = or i64 %59, %60, !dbg !2184
  %62 = and i64 %61, -9187201950435737472, !dbg !2185
  %63 = icmp eq i64 %62, 0, !dbg !2186
  %64 = getelementptr inbounds i64, i64* %51, i64 1, !dbg !2187
  tail call void @llvm.dbg.value(metadata i64* %64, i64 0, metadata !2119, metadata !711), !dbg !2162
  %65 = add i64 %50, -8, !dbg !2188
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !2116, metadata !711), !dbg !2134
  %66 = select i1 %63, i64* %64, i64* %51, !dbg !2189
  %67 = select i1 %63, i64 %65, i64 %50, !dbg !2189
  tail call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !2116, metadata !711), !dbg !2134
  tail call void @llvm.dbg.value(metadata i64* %66, i64 0, metadata !2119, metadata !711), !dbg !2162
  %68 = icmp ugt i64 %67, 7, !dbg !2174
  %69 = and i1 %63, %68
  tail call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !2116, metadata !711), !dbg !2134
  tail call void @llvm.dbg.value(metadata i64* %66, i64 0, metadata !2119, metadata !711), !dbg !2162
  br i1 %69, label %49, label %70, !llvm.loop !2190

; <label>:70:                                     ; preds = %49, %36
  %71 = phi i64* [ %39, %36 ], [ %66, %49 ]
  %72 = phi i64 [ %38, %36 ], [ %67, %49 ]
  tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !2116, metadata !711), !dbg !2134
  tail call void @llvm.dbg.value(metadata i64* %71, i64 0, metadata !2119, metadata !711), !dbg !2162
  tail call void @llvm.dbg.value(metadata i8* %75, i64 0, metadata !2117, metadata !711), !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !2116, metadata !711), !dbg !2134
  tail call void @llvm.dbg.value(metadata i8* %75, i64 0, metadata !2117, metadata !711), !dbg !2153
  %73 = icmp eq i64 %72, 0, !dbg !2192
  br i1 %73, label %88, label %74, !dbg !2195

; <label>:74:                                     ; preds = %70
  %75 = bitcast i64* %71 to i8*, !dbg !2196
  br label %76, !dbg !2195

; <label>:76:                                     ; preds = %74, %84
  %77 = phi i64 [ %72, %74 ], [ %85, %84 ]
  %78 = phi i8* [ %75, %74 ], [ %86, %84 ]
  tail call void @llvm.dbg.value(metadata i8* %78, i64 0, metadata !2117, metadata !711), !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %77, i64 0, metadata !2116, metadata !711), !dbg !2134
  %79 = load i8, i8* %78, align 1, !dbg !2197, !tbaa !768
  %80 = zext i8 %79 to i32, !dbg !2197
  %81 = icmp eq i32 %8, %80, !dbg !2200
  %82 = icmp eq i32 %9, %80, !dbg !2201
  %83 = or i1 %81, %82, !dbg !2202
  br i1 %83, label %88, label %84, !dbg !2202

; <label>:84:                                     ; preds = %76
  %85 = add i64 %77, -1, !dbg !2203
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !2116, metadata !711), !dbg !2134
  %86 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !2204
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !2117, metadata !711), !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !2116, metadata !711), !dbg !2134
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !2117, metadata !711), !dbg !2153
  %87 = icmp eq i64 %85, 0, !dbg !2192
  br i1 %87, label %88, label %76, !dbg !2195, !llvm.loop !2205

; <label>:88:                                     ; preds = %20, %76, %84, %70, %11
  %89 = phi i8* [ %12, %11 ], [ null, %70 ], [ %78, %76 ], [ null, %84 ], [ %22, %20 ]
  ret i8* %89, !dbg !2207
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2208 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2210, metadata !711), !dbg !2213
  %2 = icmp eq i8* %0, null, !dbg !2214
  br i1 %2, label %3, label %6, !dbg !2216

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2217, !tbaa !718
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.76, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !2219
  tail call void @abort() #15, !dbg !2220
  unreachable, !dbg !2220

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !2221
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2211, metadata !711), !dbg !2222
  %8 = icmp eq i8* %7, null, !dbg !2223
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2224
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2225
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2212, metadata !711), !dbg !2226
  %11 = ptrtoint i8* %10 to i64, !dbg !2227
  %12 = ptrtoint i8* %0 to i64, !dbg !2227
  %13 = sub i64 %11, %12, !dbg !2227
  %14 = icmp sgt i64 %13, 6, !dbg !2229
  br i1 %14, label %15, label %24, !dbg !2230

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2231
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.77, i64 0, i64 0), i64 7) #14, !dbg !2232
  %18 = icmp eq i32 %17, 0, !dbg !2233
  br i1 %18, label %19, label %24, !dbg !2234

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2210, metadata !711), !dbg !2213
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i64 3) #14, !dbg !2235
  %21 = icmp eq i32 %20, 0, !dbg !2238
  br i1 %21, label %22, label %24, !dbg !2239

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2240
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2210, metadata !711), !dbg !2213
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2242, !tbaa !718
  br label %24, !dbg !2243

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2210, metadata !711), !dbg !2213
  store i8* %25, i8** @program_name, align 8, !dbg !2244, !tbaa !718
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2245, !tbaa !718
  ret void, !dbg !2246
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2247 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2252, metadata !711), !dbg !2255
  %2 = tail call i32* @__errno_location() #17, !dbg !2256
  %3 = load i32, i32* %2, align 4, !dbg !2256, !tbaa !860
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2253, metadata !711), !dbg !2257
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2258
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2258
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !2258
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !2259
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2259
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2254, metadata !711), !dbg !2260
  store i32 %3, i32* %2, align 4, !dbg !2261, !tbaa !860
  ret %struct.quoting_options* %8, !dbg !2262
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !2263 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2269, metadata !711), !dbg !2270
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2271
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2271
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2272
  %5 = load i32, i32* %4, align 8, !dbg !2272, !tbaa !2273
  ret i32 %5, !dbg !2275
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2276 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2280, metadata !711), !dbg !2282
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2281, metadata !711), !dbg !2283
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2284
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2284
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2285
  store i32 %1, i32* %5, align 8, !dbg !2286, !tbaa !2273
  ret void, !dbg !2287
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2288 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2292, metadata !711), !dbg !2300
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2293, metadata !711), !dbg !2301
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2294, metadata !711), !dbg !2302
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2295, metadata !711), !dbg !2303
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2304
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2304
  %6 = lshr i8 %1, 5, !dbg !2305
  %7 = zext i8 %6 to i64, !dbg !2305
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2306
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2296, metadata !711), !dbg !2307
  %9 = and i8 %1, 31, !dbg !2308
  %10 = zext i8 %9 to i32, !dbg !2309
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2298, metadata !711), !dbg !2310
  %11 = load i32, i32* %8, align 4, !dbg !2311, !tbaa !860
  %12 = lshr i32 %11, %10, !dbg !2312
  %13 = and i32 %12, 1, !dbg !2313
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2299, metadata !711), !dbg !2314
  %14 = and i32 %2, 1, !dbg !2315
  %15 = xor i32 %13, %14, !dbg !2316
  %16 = shl i32 %15, %10, !dbg !2317
  %17 = xor i32 %16, %11, !dbg !2318
  store i32 %17, i32* %8, align 4, !dbg !2318, !tbaa !860
  ret i32 %13, !dbg !2319
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2320 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2324, metadata !711), !dbg !2327
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2325, metadata !711), !dbg !2328
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2329
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2324, metadata !711), !dbg !2327
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2331
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2324, metadata !711), !dbg !2327
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2332
  %6 = load i32, i32* %5, align 4, !dbg !2332, !tbaa !2333
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2326, metadata !711), !dbg !2334
  store i32 %1, i32* %5, align 4, !dbg !2335, !tbaa !2333
  ret i32 %6, !dbg !2336
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2337 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2341, metadata !711), !dbg !2344
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2342, metadata !711), !dbg !2345
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2343, metadata !711), !dbg !2346
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2347
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2341, metadata !711), !dbg !2344
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2349
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2341, metadata !711), !dbg !2344
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2350
  store i32 10, i32* %6, align 8, !dbg !2351, !tbaa !2273
  %7 = icmp ne i8* %1, null, !dbg !2352
  %8 = icmp ne i8* %2, null, !dbg !2354
  %9 = and i1 %7, %8, !dbg !2355
  br i1 %9, label %11, label %10, !dbg !2355

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2356
  unreachable, !dbg !2356

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2357
  store i8* %1, i8** %12, align 8, !dbg !2358, !tbaa !2359
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2360
  store i8* %2, i8** %13, align 8, !dbg !2361, !tbaa !2362
  ret void, !dbg !2363
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2364 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2368, metadata !711), !dbg !2376
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2369, metadata !711), !dbg !2377
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2370, metadata !711), !dbg !2378
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2371, metadata !711), !dbg !2379
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2372, metadata !711), !dbg !2380
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2381
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2381
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2373, metadata !711), !dbg !2382
  %8 = tail call i32* @__errno_location() #17, !dbg !2383
  %9 = load i32, i32* %8, align 4, !dbg !2383, !tbaa !860
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2374, metadata !711), !dbg !2384
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2385
  %11 = load i32, i32* %10, align 8, !dbg !2385, !tbaa !2273
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2386
  %13 = load i32, i32* %12, align 4, !dbg !2386, !tbaa !2333
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2387
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2388
  %16 = load i8*, i8** %15, align 8, !dbg !2388, !tbaa !2359
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2389
  %18 = load i8*, i8** %17, align 8, !dbg !2389, !tbaa !2362
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2375, metadata !711), !dbg !2391
  store i32 %9, i32* %8, align 4, !dbg !2392, !tbaa !860
  ret i64 %19, !dbg !2393
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2394 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2400, metadata !711), !dbg !2464
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2401, metadata !711), !dbg !2465
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2402, metadata !711), !dbg !2466
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2403, metadata !711), !dbg !2467
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2404, metadata !711), !dbg !2468
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2405, metadata !711), !dbg !2469
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2406, metadata !711), !dbg !2470
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2407, metadata !711), !dbg !2471
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2408, metadata !711), !dbg !2472
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2410, metadata !711), !dbg !2473
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2411, metadata !711), !dbg !2474
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2412, metadata !711), !dbg !2475
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2413, metadata !711), !dbg !2476
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2414, metadata !711), !dbg !2477
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !2478
  %14 = icmp eq i64 %13, 1, !dbg !2479
  %15 = lshr i32 %5, 1, !dbg !2480
  %16 = trunc i32 %15 to i8, !dbg !2480
  %17 = and i8 %16, 1, !dbg !2480
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2416, metadata !711), !dbg !2480
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2417, metadata !711), !dbg !2481
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2418, metadata !711), !dbg !2482
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2419, metadata !711), !dbg !2483
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2484

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2401, metadata !711), !dbg !2465
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2419, metadata !711), !dbg !2483
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2418, metadata !711), !dbg !2482
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2417, metadata !711), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2416, metadata !711), !dbg !2480
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2403, metadata !711), !dbg !2467
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2414, metadata !711), !dbg !2477
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2413, metadata !711), !dbg !2476
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2412, metadata !711), !dbg !2475
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2411, metadata !711), !dbg !2474
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2408, metadata !711), !dbg !2472
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2407, metadata !711), !dbg !2471
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2404, metadata !711), !dbg !2468
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
  ], !dbg !2485

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2404, metadata !711), !dbg !2468
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2416, metadata !711), !dbg !2480
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2416, metadata !711), !dbg !2480
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2404, metadata !711), !dbg !2468
  br label %94, !dbg !2486

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2416, metadata !711), !dbg !2480
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2404, metadata !711), !dbg !2468
  %43 = and i8 %36, 1, !dbg !2488
  %44 = icmp eq i8 %43, 0, !dbg !2488
  br i1 %44, label %45, label %94, !dbg !2486

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2490
  br i1 %46, label %94, label %47, !dbg !2493

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2490, !tbaa !768
  br label %94, !dbg !2490

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.89, i64 0, i64 0), i32 %28), !dbg !2494
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2407, metadata !711), !dbg !2471
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), i32 %28), !dbg !2498
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2408, metadata !711), !dbg !2472
  br label %51, !dbg !2499

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2408, metadata !711), !dbg !2472
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2407, metadata !711), !dbg !2471
  %54 = and i8 %36, 1, !dbg !2500
  %55 = icmp eq i8 %54, 0, !dbg !2500
  br i1 %55, label %56, label %72, !dbg !2502

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2412, metadata !711), !dbg !2475
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2412, metadata !711), !dbg !2475
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2410, metadata !711), !dbg !2473
  %57 = load i8, i8* %52, align 1, !dbg !2503, !tbaa !768
  %58 = icmp eq i8 %57, 0, !dbg !2506
  br i1 %58, label %72, label %59, !dbg !2506

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2507

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !2412, metadata !711), !dbg !2475
  %64 = icmp ult i64 %63, %40, !dbg !2507
  br i1 %64, label %65, label %67, !dbg !2510

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2507
  store i8 %61, i8* %66, align 1, !dbg !2507, !tbaa !768
  br label %67, !dbg !2507

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2510
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2410, metadata !711), !dbg !2473
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2511
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2412, metadata !711), !dbg !2475
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2412, metadata !711), !dbg !2475
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2410, metadata !711), !dbg !2473
  %70 = load i8, i8* %69, align 1, !dbg !2503, !tbaa !768
  %71 = icmp eq i8 %70, 0, !dbg !2506
  br i1 %71, label %72, label %60, !dbg !2506, !llvm.loop !2512

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2414, metadata !711), !dbg !2477
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2412, metadata !711), !dbg !2475
  %74 = call i64 @strlen(i8* %53) #14, !dbg !2514
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2413, metadata !711), !dbg !2476
  br label %94, !dbg !2515

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2414, metadata !711), !dbg !2477
  br label %76, !dbg !2516

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !2414, metadata !711), !dbg !2477
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2416, metadata !711), !dbg !2480
  br label %78, !dbg !2517

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2416, metadata !711), !dbg !2480
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !2414, metadata !711), !dbg !2477
  %81 = and i8 %80, 1, !dbg !2518
  %82 = icmp eq i8 %81, 0, !dbg !2518
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2414, metadata !711), !dbg !2477
  %83 = select i1 %82, i8 1, i8 %79, !dbg !2520
  br label %84, !dbg !2520

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2416, metadata !711), !dbg !2480
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !2414, metadata !711), !dbg !2477
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2404, metadata !711), !dbg !2468
  %87 = and i8 %86, 1, !dbg !2521
  %88 = icmp eq i8 %87, 0, !dbg !2521
  br i1 %88, label %89, label %94, !dbg !2523

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !2524
  br i1 %90, label %94, label %91, !dbg !2527

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !2524, !tbaa !768
  br label %94, !dbg !2524

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2416, metadata !711), !dbg !2480
  br label %94, !dbg !2528

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !2529
  unreachable, !dbg !2529

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.91, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.91, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.91, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.91, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2416, metadata !711), !dbg !2480
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !2414, metadata !711), !dbg !2477
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !2413, metadata !711), !dbg !2476
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2412, metadata !711), !dbg !2475
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2408, metadata !711), !dbg !2472
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !2407, metadata !711), !dbg !2471
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !2404, metadata !711), !dbg !2468
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2409, metadata !711), !dbg !2530
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
  br label %122, !dbg !2531

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2401, metadata !711), !dbg !2465
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2419, metadata !711), !dbg !2483
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2418, metadata !711), !dbg !2482
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !2417, metadata !711), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2403, metadata !711), !dbg !2467
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2411, metadata !711), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !2409, metadata !711), !dbg !2530
  %131 = icmp eq i64 %126, -1, !dbg !2532
  br i1 %131, label %134, label %132, !dbg !2533

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !2534
  br i1 %133, label %590, label %138, !dbg !2535

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2536
  %136 = load i8, i8* %135, align 1, !dbg !2536, !tbaa !768
  %137 = icmp eq i8 %136, 0, !dbg !2537
  br i1 %137, label %590, label %138, !dbg !2535

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2425, metadata !711), !dbg !2538
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2426, metadata !711), !dbg !2539
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2427, metadata !711), !dbg !2540
  br i1 %108, label %139, label %154, !dbg !2541

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !2543
  %141 = and i1 %109, %131, !dbg !2544
  br i1 %141, label %142, label %144, !dbg !2544

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !2545
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !2403, metadata !711), !dbg !2467
  br label %144, !dbg !2546

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !2403, metadata !711), !dbg !2467
  %146 = icmp ugt i64 %140, %145, !dbg !2547
  br i1 %146, label %154, label %147, !dbg !2548

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2549
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !2550
  %150 = icmp ne i32 %149, 0, !dbg !2551
  %151 = or i1 %150, %111, !dbg !2552
  %152 = xor i1 %150, true, !dbg !2552
  %153 = zext i1 %152 to i8, !dbg !2552
  br i1 %151, label %154, label %635, !dbg !2552

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2425, metadata !711), !dbg !2538
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !2403, metadata !711), !dbg !2467
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2553
  %158 = load i8, i8* %157, align 1, !dbg !2553, !tbaa !768
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2420, metadata !711), !dbg !2554
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
  ], !dbg !2555

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !2556

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !2557

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2426, metadata !711), !dbg !2539
  %162 = and i8 %127, 1, !dbg !2561
  %163 = icmp eq i8 %162, 0, !dbg !2561
  %164 = and i1 %113, %163, !dbg !2561
  br i1 %164, label %165, label %181, !dbg !2561

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2563
  br i1 %166, label %167, label %169, !dbg !2567

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2563
  store i8 39, i8* %168, align 1, !dbg !2563, !tbaa !768
  br label %169, !dbg !2563

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2567
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !2410, metadata !711), !dbg !2473
  %171 = icmp ult i64 %170, %130, !dbg !2568
  br i1 %171, label %172, label %174, !dbg !2571

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2568
  store i8 36, i8* %173, align 1, !dbg !2568, !tbaa !768
  br label %174, !dbg !2568

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2571
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !2410, metadata !711), !dbg !2473
  %176 = icmp ult i64 %175, %130, !dbg !2572
  br i1 %176, label %177, label %179, !dbg !2575

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2572
  store i8 39, i8* %178, align 1, !dbg !2572, !tbaa !768
  br label %179, !dbg !2572

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2575
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2417, metadata !711), !dbg !2481
  br label %181, !dbg !2576

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !2417, metadata !711), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !2410, metadata !711), !dbg !2473
  %184 = icmp ult i64 %182, %130, !dbg !2577
  br i1 %184, label %185, label %187, !dbg !2580

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2577
  store i8 92, i8* %186, align 1, !dbg !2577, !tbaa !768
  br label %187, !dbg !2577

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2580
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !2410, metadata !711), !dbg !2473
  br i1 %105, label %189, label %470, !dbg !2581

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2583
  %191 = icmp ult i64 %190, %155, !dbg !2584
  br i1 %191, label %192, label %470, !dbg !2585

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2586
  %194 = load i8, i8* %193, align 1, !dbg !2586, !tbaa !768
  %195 = add i8 %194, -48, !dbg !2587
  %196 = icmp ult i8 %195, 10, !dbg !2587
  br i1 %196, label %197, label %470, !dbg !2587

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2588
  br i1 %198, label %199, label %201, !dbg !2592

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2588
  store i8 48, i8* %200, align 1, !dbg !2588, !tbaa !768
  br label %201, !dbg !2588

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2592
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !2410, metadata !711), !dbg !2473
  %203 = icmp ult i64 %202, %130, !dbg !2593
  br i1 %203, label %204, label %206, !dbg !2596

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2593
  store i8 48, i8* %205, align 1, !dbg !2593, !tbaa !768
  br label %206, !dbg !2593

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2596
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !2410, metadata !711), !dbg !2473
  br label %470, !dbg !2597

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2598

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2599

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2600

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2602

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2604
  %214 = icmp ult i64 %213, %155, !dbg !2605
  br i1 %214, label %215, label %470, !dbg !2606

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2607
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2608
  %218 = load i8, i8* %217, align 1, !dbg !2608, !tbaa !768
  %219 = icmp eq i8 %218, 63, !dbg !2609
  br i1 %219, label %220, label %470, !dbg !2610

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2611
  %222 = load i8, i8* %221, align 1, !dbg !2611, !tbaa !768
  %223 = sext i8 %222 to i32, !dbg !2611
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
  ], !dbg !2612

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2613

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !2420, metadata !711), !dbg !2554
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !2409, metadata !711), !dbg !2530
  %226 = icmp ult i64 %124, %130, !dbg !2615
  br i1 %226, label %227, label %229, !dbg !2618

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2615
  store i8 63, i8* %228, align 1, !dbg !2615, !tbaa !768
  br label %229, !dbg !2615

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2618
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !2410, metadata !711), !dbg !2473
  %231 = icmp ult i64 %230, %130, !dbg !2619
  br i1 %231, label %232, label %234, !dbg !2622

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2619
  store i8 34, i8* %233, align 1, !dbg !2619, !tbaa !768
  br label %234, !dbg !2619

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2622
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !2410, metadata !711), !dbg !2473
  %236 = icmp ult i64 %235, %130, !dbg !2623
  br i1 %236, label %237, label %239, !dbg !2626

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2623
  store i8 34, i8* %238, align 1, !dbg !2623, !tbaa !768
  br label %239, !dbg !2623

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2626
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !2410, metadata !711), !dbg !2473
  %241 = icmp ult i64 %240, %130, !dbg !2627
  br i1 %241, label %242, label %244, !dbg !2630

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2627
  store i8 63, i8* %243, align 1, !dbg !2627, !tbaa !768
  br label %244, !dbg !2627

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2630
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !2410, metadata !711), !dbg !2473
  br label %470, !dbg !2631

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2424, metadata !711), !dbg !2632
  br label %256, !dbg !2633

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2424, metadata !711), !dbg !2632
  br label %256, !dbg !2634

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2424, metadata !711), !dbg !2632
  br label %254, !dbg !2635

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2424, metadata !711), !dbg !2632
  br label %254, !dbg !2636

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2424, metadata !711), !dbg !2632
  br label %256, !dbg !2637

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2424, metadata !711), !dbg !2632
  br i1 %113, label %252, label %253, !dbg !2638

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2639

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2642

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !2424, metadata !711), !dbg !2632
  br i1 %117, label %256, label %635, !dbg !2644

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !2424, metadata !711), !dbg !2632
  br i1 %104, label %497, label %470, !dbg !2646

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2647
  br i1 %259, label %260, label %265, !dbg !2649

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2650, !tbaa !768
  %262 = icmp ne i8 %261, 0, !dbg !2651
  %263 = icmp ne i64 %123, 0, !dbg !2652
  %264 = or i1 %263, %262, !dbg !2654
  br i1 %264, label %470, label %271, !dbg !2654

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2655
  %267 = icmp ne i64 %123, 0, !dbg !2652
  %268 = or i1 %267, %266, !dbg !2649
  br i1 %268, label %470, label %271, !dbg !2649

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2652
  br i1 %270, label %271, label %470, !dbg !2656

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2427, metadata !711), !dbg !2540
  br label %272, !dbg !2657

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !2427, metadata !711), !dbg !2540
  br i1 %117, label %470, label %635, !dbg !2658

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2418, metadata !711), !dbg !2482
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2427, metadata !711), !dbg !2540
  br i1 %113, label %275, label %470, !dbg !2660

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2661

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2664
  %278 = icmp ne i64 %125, 0, !dbg !2666
  %279 = or i1 %278, %277, !dbg !2667
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2411, metadata !711), !dbg !2474
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2401, metadata !711), !dbg !2465
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2667
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2667
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2401, metadata !711), !dbg !2465
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !2411, metadata !711), !dbg !2474
  %282 = icmp ult i64 %124, %281, !dbg !2668
  br i1 %282, label %283, label %285, !dbg !2671

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2668
  store i8 39, i8* %284, align 1, !dbg !2668, !tbaa !768
  br label %285, !dbg !2668

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2671
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !2410, metadata !711), !dbg !2473
  %287 = icmp ult i64 %286, %281, !dbg !2672
  br i1 %287, label %288, label %290, !dbg !2675

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2672
  store i8 92, i8* %289, align 1, !dbg !2672, !tbaa !768
  br label %290, !dbg !2672

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2675
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !2410, metadata !711), !dbg !2473
  %292 = icmp ult i64 %291, %281, !dbg !2676
  br i1 %292, label %293, label %295, !dbg !2679

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2676
  store i8 39, i8* %294, align 1, !dbg !2676, !tbaa !768
  br label %295, !dbg !2676

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2679
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2417, metadata !711), !dbg !2481
  br label %470, !dbg !2680

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2681

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2428, metadata !711), !dbg !2682
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2683
  %300 = load i16*, i16** %299, align 8, !dbg !2683, !tbaa !718
  %301 = zext i8 %158 to i64, !dbg !2683
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2683
  %303 = load i16, i16* %302, align 2, !dbg !2683, !tbaa !1361
  %304 = lshr i16 %303, 14, !dbg !2685
  %305 = trunc i16 %304 to i8, !dbg !2685
  %306 = and i8 %305, 1, !dbg !2685
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !2431, metadata !711), !dbg !2686
  br label %362, !dbg !2687

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2688
  store i64 0, i64* %10, align 8, !dbg !2689
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2428, metadata !711), !dbg !2682
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2431, metadata !711), !dbg !2686
  %308 = icmp eq i64 %155, -1, !dbg !2690
  br i1 %308, label %309, label %311, !dbg !2692

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2693
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !2403, metadata !711), !dbg !2467
  br label %311, !dbg !2694

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !2403, metadata !711), !dbg !2467
  br label %313, !dbg !2695, !llvm.loop !2696

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !2431, metadata !711), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2428, metadata !711), !dbg !2682
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2698
  %316 = add i64 %314, %123, !dbg !2699
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2700
  %318 = sub i64 %312, %316, !dbg !2701
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2432, metadata !711), !dbg !2702
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2450, metadata !711), !dbg !2703
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #12, !dbg !2704
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !2453, metadata !711), !dbg !2705
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2706

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2431, metadata !711), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2428, metadata !711), !dbg !2682
  %321 = icmp ugt i64 %312, %316, !dbg !2707
  br i1 %321, label %322, label %347, !dbg !2709

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2710

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !2428, metadata !711), !dbg !2682
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2710
  %327 = load i8, i8* %326, align 1, !dbg !2710, !tbaa !768
  %328 = icmp eq i8 %327, 0, !dbg !2709
  br i1 %328, label %347, label %329, !dbg !2711

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2712
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2428, metadata !711), !dbg !2682
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2428, metadata !711), !dbg !2682
  %331 = add i64 %330, %123, !dbg !2713
  %332 = icmp ult i64 %331, %312, !dbg !2707
  br i1 %332, label %323, label %347, !dbg !2709, !llvm.loop !2714

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2715
  %335 = and i1 %115, %334, !dbg !2718
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2454, metadata !711), !dbg !2719
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2454, metadata !711), !dbg !2719
  br i1 %335, label %336, label %350, !dbg !2718

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2720

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !2454, metadata !711), !dbg !2719
  %339 = add i64 %338, %316, !dbg !2720
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2721
  %341 = load i8, i8* %340, align 1, !dbg !2721, !tbaa !768
  %342 = sext i8 %341 to i32, !dbg !2721
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2722

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2723
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2454, metadata !711), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2454, metadata !711), !dbg !2719
  %345 = icmp ult i64 %344, %319, !dbg !2715
  br i1 %345, label %337, label %350, !dbg !2724, !llvm.loop !2725

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2727

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2431, metadata !711), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2428, metadata !711), !dbg !2682
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2727
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2728, !tbaa !860
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !2450, metadata !711), !dbg !2703
  %352 = call i32 @iswprint(i32 %351) #12, !dbg !2730
  %353 = icmp eq i32 %352, 0, !dbg !2730
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2431, metadata !711), !dbg !2686
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2731
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2431, metadata !711), !dbg !2686
  %355 = add i64 %319, %314, !dbg !2732
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2428, metadata !711), !dbg !2682
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2431, metadata !711), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2428, metadata !711), !dbg !2682
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2727
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2432, metadata !711), !dbg !2702
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2733
  %357 = icmp eq i32 %356, 0, !dbg !2734
  br i1 %357, label %313, label %358, !dbg !2735, !llvm.loop !2696

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2736
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2431, metadata !711), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2428, metadata !711), !dbg !2682
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2727
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2736
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !2431, metadata !711), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !2428, metadata !711), !dbg !2682
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !2403, metadata !711), !dbg !2467
  %366 = and i8 %365, 1, !dbg !2737
  %367 = icmp ne i8 %366, 0, !dbg !2737
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !2427, metadata !711), !dbg !2540
  %368 = icmp ult i64 %364, 2, !dbg !2738
  %369 = or i1 %367, %112, !dbg !2739
  %370 = and i1 %368, %369, !dbg !2740
  br i1 %370, label %470, label %371, !dbg !2740

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2741
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !2461, metadata !711), !dbg !2742
  br label %373, !dbg !2743

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !2426, metadata !711), !dbg !2539
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !2425, metadata !711), !dbg !2538
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !2420, metadata !711), !dbg !2554
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !2417, metadata !711), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !2409, metadata !711), !dbg !2530
  br i1 %369, label %426, label %380, !dbg !2744

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2749

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2426, metadata !711), !dbg !2539
  %382 = and i8 %376, 1, !dbg !2752
  %383 = icmp eq i8 %382, 0, !dbg !2752
  %384 = and i1 %113, %383, !dbg !2752
  br i1 %384, label %385, label %401, !dbg !2752

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2754
  br i1 %386, label %387, label %389, !dbg !2758

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2754
  store i8 39, i8* %388, align 1, !dbg !2754, !tbaa !768
  br label %389, !dbg !2754

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !2410, metadata !711), !dbg !2473
  %391 = icmp ult i64 %390, %130, !dbg !2759
  br i1 %391, label %392, label %394, !dbg !2762

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2759
  store i8 36, i8* %393, align 1, !dbg !2759, !tbaa !768
  br label %394, !dbg !2759

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2762
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !2410, metadata !711), !dbg !2473
  %396 = icmp ult i64 %395, %130, !dbg !2763
  br i1 %396, label %397, label %399, !dbg !2766

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2763
  store i8 39, i8* %398, align 1, !dbg !2763, !tbaa !768
  br label %399, !dbg !2763

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2766
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2417, metadata !711), !dbg !2481
  br label %401, !dbg !2767

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !2417, metadata !711), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !2410, metadata !711), !dbg !2473
  %404 = icmp ult i64 %402, %130, !dbg !2768
  br i1 %404, label %405, label %407, !dbg !2771

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2768
  store i8 92, i8* %406, align 1, !dbg !2768, !tbaa !768
  br label %407, !dbg !2768

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2771
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2410, metadata !711), !dbg !2473
  %409 = icmp ult i64 %408, %130, !dbg !2772
  br i1 %409, label %410, label %414, !dbg !2775

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2772
  %412 = or i8 %411, 48, !dbg !2772
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2772
  store i8 %412, i8* %413, align 1, !dbg !2772, !tbaa !768
  br label %414, !dbg !2772

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2775
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !2410, metadata !711), !dbg !2473
  %416 = icmp ult i64 %415, %130, !dbg !2776
  br i1 %416, label %417, label %422, !dbg !2779

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2776
  %419 = and i8 %418, 7, !dbg !2776
  %420 = or i8 %419, 48, !dbg !2776
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2776
  store i8 %420, i8* %421, align 1, !dbg !2776, !tbaa !768
  br label %422, !dbg !2776

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2779
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !2410, metadata !711), !dbg !2473
  %424 = and i8 %377, 7, !dbg !2780
  %425 = or i8 %424, 48, !dbg !2781
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !2420, metadata !711), !dbg !2554
  br label %435, !dbg !2782

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2783
  %428 = icmp eq i8 %427, 0, !dbg !2783
  br i1 %428, label %435, label %429, !dbg !2785

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2786
  br i1 %430, label %431, label %433, !dbg !2790

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2786
  store i8 92, i8* %432, align 1, !dbg !2786, !tbaa !768
  br label %433, !dbg !2786

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2790
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2425, metadata !711), !dbg !2538
  br label %435, !dbg !2791

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !2426, metadata !711), !dbg !2539
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !2425, metadata !711), !dbg !2538
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !2420, metadata !711), !dbg !2554
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !2417, metadata !711), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !2410, metadata !711), !dbg !2473
  %441 = add i64 %374, 1, !dbg !2792
  %442 = icmp ugt i64 %372, %441, !dbg !2794
  br i1 %442, label %443, label %535, !dbg !2795

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2796
  %445 = icmp ne i8 %444, 0, !dbg !2796
  %446 = and i8 %440, 1, !dbg !2796
  %447 = icmp eq i8 %446, 0, !dbg !2796
  %448 = and i1 %445, %447, !dbg !2796
  br i1 %448, label %449, label %460, !dbg !2796

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2799
  br i1 %450, label %451, label %453, !dbg !2803

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2799
  store i8 39, i8* %452, align 1, !dbg !2799, !tbaa !768
  br label %453, !dbg !2799

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2803
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !2410, metadata !711), !dbg !2473
  %455 = icmp ult i64 %454, %130, !dbg !2804
  br i1 %455, label %456, label %458, !dbg !2807

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2804
  store i8 39, i8* %457, align 1, !dbg !2804, !tbaa !768
  br label %458, !dbg !2804

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2417, metadata !711), !dbg !2481
  br label %460, !dbg !2808

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !2417, metadata !711), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !2410, metadata !711), !dbg !2473
  %463 = icmp ult i64 %461, %130, !dbg !2809
  br i1 %463, label %464, label %466, !dbg !2812

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2809
  store i8 %438, i8* %465, align 1, !dbg !2809, !tbaa !768
  br label %466, !dbg !2809

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2812
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !2409, metadata !711), !dbg !2530
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2813
  %469 = load i8, i8* %468, align 1, !dbg !2813, !tbaa !768
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !2420, metadata !711), !dbg !2554
  br label %373, !dbg !2814, !llvm.loop !2815

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2401, metadata !711), !dbg !2465
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !2427, metadata !711), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !2426, metadata !711), !dbg !2539
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2425, metadata !711), !dbg !2538
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !2420, metadata !711), !dbg !2554
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !2418, metadata !711), !dbg !2482
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2417, metadata !711), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !2403, metadata !711), !dbg !2467
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2411, metadata !711), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !2409, metadata !711), !dbg !2530
  br i1 %106, label %482, label %481, !dbg !2818

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2820

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2821

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2822
  %485 = zext i8 %484 to i64, !dbg !2822
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2823
  %487 = load i32, i32* %486, align 4, !dbg !2823, !tbaa !860
  %488 = and i8 %477, 31, !dbg !2824
  %489 = zext i8 %488 to i32, !dbg !2825
  %490 = shl i32 1, %489, !dbg !2826
  %491 = and i32 %487, %490, !dbg !2826
  %492 = icmp eq i32 %491, 0, !dbg !2826
  %493 = icmp eq i8 %156, 0, !dbg !2827
  %494 = and i1 %493, %492, !dbg !2828
  br i1 %494, label %535, label %497, !dbg !2828

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2827
  br i1 %496, label %535, label %497, !dbg !2829

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2401, metadata !711), !dbg !2465
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !2427, metadata !711), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !2420, metadata !711), !dbg !2554
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !2418, metadata !711), !dbg !2482
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !2417, metadata !711), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !2403, metadata !711), !dbg !2467
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !2411, metadata !711), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !2409, metadata !711), !dbg !2530
  br i1 %111, label %507, label %635, !dbg !2830

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2426, metadata !711), !dbg !2539
  %508 = and i8 %502, 1, !dbg !2832
  %509 = icmp eq i8 %508, 0, !dbg !2832
  %510 = and i1 %113, %509, !dbg !2832
  br i1 %510, label %511, label %527, !dbg !2832

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2834
  br i1 %512, label %513, label %515, !dbg !2838

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2834
  store i8 39, i8* %514, align 1, !dbg !2834, !tbaa !768
  br label %515, !dbg !2834

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2838
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !2410, metadata !711), !dbg !2473
  %517 = icmp ult i64 %516, %506, !dbg !2839
  br i1 %517, label %518, label %520, !dbg !2842

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2839
  store i8 36, i8* %519, align 1, !dbg !2839, !tbaa !768
  br label %520, !dbg !2839

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2842
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !2410, metadata !711), !dbg !2473
  %522 = icmp ult i64 %521, %506, !dbg !2843
  br i1 %522, label %523, label %525, !dbg !2846

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2843
  store i8 39, i8* %524, align 1, !dbg !2843, !tbaa !768
  br label %525, !dbg !2843

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2846
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2417, metadata !711), !dbg !2481
  br label %527, !dbg !2847

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !2417, metadata !711), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !2410, metadata !711), !dbg !2473
  %530 = icmp ult i64 %528, %506, !dbg !2848
  br i1 %530, label %531, label %533, !dbg !2851

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2848
  store i8 92, i8* %532, align 1, !dbg !2848, !tbaa !768
  br label %533, !dbg !2848

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2851
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2401, metadata !711), !dbg !2465
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2427, metadata !711), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2426, metadata !711), !dbg !2539
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2420, metadata !711), !dbg !2554
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2418, metadata !711), !dbg !2482
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2417, metadata !711), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2403, metadata !711), !dbg !2467
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2411, metadata !711), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2409, metadata !711), !dbg !2530
  br label %562, !dbg !2852

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2401, metadata !711), !dbg !2465
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2427, metadata !711), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2426, metadata !711), !dbg !2539
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2420, metadata !711), !dbg !2554
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2418, metadata !711), !dbg !2482
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2417, metadata !711), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2403, metadata !711), !dbg !2467
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2411, metadata !711), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2409, metadata !711), !dbg !2530
  %546 = and i8 %540, 1, !dbg !2852
  %547 = icmp ne i8 %546, 0, !dbg !2852
  %548 = and i8 %543, 1, !dbg !2852
  %549 = icmp eq i8 %548, 0, !dbg !2852
  %550 = and i1 %547, %549, !dbg !2852
  br i1 %550, label %551, label %562, !dbg !2852

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2855
  br i1 %552, label %553, label %555, !dbg !2859

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2855
  store i8 39, i8* %554, align 1, !dbg !2855, !tbaa !768
  br label %555, !dbg !2855

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2859
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !2410, metadata !711), !dbg !2473
  %557 = icmp ult i64 %556, %545, !dbg !2860
  br i1 %557, label %558, label %560, !dbg !2863

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2860
  store i8 39, i8* %559, align 1, !dbg !2860, !tbaa !768
  br label %560, !dbg !2860

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2863
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2417, metadata !711), !dbg !2481
  br label %562, !dbg !2864

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !2417, metadata !711), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !2410, metadata !711), !dbg !2473
  %572 = icmp ult i64 %570, %563, !dbg !2865
  br i1 %572, label %573, label %575, !dbg !2868

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2865
  store i8 %565, i8* %574, align 1, !dbg !2865, !tbaa !768
  br label %575, !dbg !2865

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2868
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !2410, metadata !711), !dbg !2473
  %577 = and i8 %564, 1, !dbg !2869
  %578 = icmp eq i8 %577, 0, !dbg !2869
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2419, metadata !711), !dbg !2483
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2871
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !2419, metadata !711), !dbg !2483
  br label %580, !dbg !2872

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !2401, metadata !711), !dbg !2465
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !2419, metadata !711), !dbg !2483
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2418, metadata !711), !dbg !2482
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !2417, metadata !711), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !2403, metadata !711), !dbg !2467
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2411, metadata !711), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !2409, metadata !711), !dbg !2530
  %589 = add i64 %581, 1, !dbg !2873
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !2409, metadata !711), !dbg !2530
  br label %122, !dbg !2874, !llvm.loop !2875

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2877
  %593 = and i1 %113, %592, !dbg !2879
  %594 = xor i1 %593, true, !dbg !2879
  %595 = or i1 %111, %594, !dbg !2879
  br i1 %595, label %596, label %635, !dbg !2879

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2880
  %598 = xor i1 %597, true, !dbg !2880
  %599 = and i8 %128, 1, !dbg !2882
  %600 = icmp eq i8 %599, 0, !dbg !2882
  %601 = or i1 %600, %598, !dbg !2880
  br i1 %601, label %611, label %602, !dbg !2880

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2883
  %604 = icmp eq i8 %603, 0, !dbg !2883
  br i1 %604, label %607, label %605, !dbg !2886

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2887
  br label %645, !dbg !2888

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2889
  %609 = icmp ne i64 %125, 0, !dbg !2891
  %610 = and i1 %609, %608, !dbg !2892
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2401, metadata !711), !dbg !2465
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2410, metadata !711), !dbg !2473
  br i1 %610, label %27, label %611, !dbg !2892

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2893
  %613 = and i1 %612, %111, !dbg !2895
  br i1 %613, label %614, label %630, !dbg !2895

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2412, metadata !711), !dbg !2475
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2410, metadata !711), !dbg !2473
  %615 = load i8, i8* %99, align 1, !dbg !2896, !tbaa !768
  %616 = icmp eq i8 %615, 0, !dbg !2899
  br i1 %616, label %630, label %617, !dbg !2899

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2900

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !2410, metadata !711), !dbg !2473
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !2412, metadata !711), !dbg !2475
  %622 = icmp ult i64 %621, %130, !dbg !2900
  br i1 %622, label %623, label %625, !dbg !2903

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2900
  store i8 %619, i8* %624, align 1, !dbg !2900, !tbaa !768
  br label %625, !dbg !2900

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2410, metadata !711), !dbg !2473
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2904
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2412, metadata !711), !dbg !2475
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2412, metadata !711), !dbg !2475
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2410, metadata !711), !dbg !2473
  %628 = load i8, i8* %627, align 1, !dbg !2896, !tbaa !768
  %629 = icmp eq i8 %628, 0, !dbg !2899
  br i1 %629, label %630, label %618, !dbg !2899, !llvm.loop !2905

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !2410, metadata !711), !dbg !2473
  %632 = icmp ult i64 %631, %130, !dbg !2907
  br i1 %632, label %633, label %645, !dbg !2909

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2910
  store i8 0, i8* %634, align 1, !dbg !2911, !tbaa !768
  br label %645, !dbg !2910

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !2401, metadata !711), !dbg !2465
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !2403, metadata !711), !dbg !2467
  %639 = icmp ne i32 %636, 2, !dbg !2912
  %640 = icmp eq i8 %103, 0, !dbg !2914
  %641 = or i1 %639, %640, !dbg !2915
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2404, metadata !711), !dbg !2468
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2915
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !2404, metadata !711), !dbg !2468
  %643 = and i32 %5, -3, !dbg !2916
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2917
  br label %645, !dbg !2918

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2919
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2920 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2924, metadata !711), !dbg !2928
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2925, metadata !711), !dbg !2929
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2930
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2926, metadata !711), !dbg !2931
  %4 = icmp eq i8* %3, %0, !dbg !2932
  br i1 %4, label %5, label %75, !dbg !2934

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2935
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2927, metadata !711), !dbg !2936
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2937, metadata !711), !dbg !2953
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2951, metadata !711), !dbg !2956
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2952, metadata !711), !dbg !2957
  %7 = load i8, i8* %6, align 1, !dbg !2958, !tbaa !768
  %8 = sext i8 %7 to i32, !dbg !2958
  %9 = and i32 %8, -33, !dbg !2958
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2958

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2960, metadata !711), !dbg !2974
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2972, metadata !711), !dbg !2978
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2973, metadata !711), !dbg !2979
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2980
  %12 = load i8, i8* %11, align 1, !dbg !2980, !tbaa !768
  %13 = sext i8 %12 to i32, !dbg !2980
  %14 = and i32 %13, -33, !dbg !2980
  %15 = icmp eq i32 %14, 84, !dbg !2980
  br i1 %15, label %16, label %72, !dbg !2980

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2982, metadata !711), !dbg !2995
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2993, metadata !711), !dbg !2999
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2994, metadata !711), !dbg !3000
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3001
  %18 = load i8, i8* %17, align 1, !dbg !3001, !tbaa !768
  %19 = sext i8 %18 to i32, !dbg !3001
  %20 = and i32 %19, -33, !dbg !3001
  %21 = icmp eq i32 %20, 70, !dbg !3001
  br i1 %21, label %22, label %72, !dbg !3001

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3003, metadata !711), !dbg !3015
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3013, metadata !711), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3014, metadata !711), !dbg !3020
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3021
  %24 = load i8, i8* %23, align 1, !dbg !3021, !tbaa !768
  %25 = icmp eq i8 %24, 45, !dbg !3021
  br i1 %25, label %26, label %72, !dbg !3023

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3024, metadata !711), !dbg !3035
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3033, metadata !711), !dbg !3039
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3034, metadata !711), !dbg !3040
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3041
  %28 = load i8, i8* %27, align 1, !dbg !3041, !tbaa !768
  %29 = icmp eq i8 %28, 56, !dbg !3041
  br i1 %29, label %30, label %72, !dbg !3043

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3044, metadata !711), !dbg !3054
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3052, metadata !711), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3053, metadata !711), !dbg !3059
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3060
  %32 = load i8, i8* %31, align 1, !dbg !3060, !tbaa !768
  %33 = icmp eq i8 %32, 0, !dbg !3060
  br i1 %33, label %34, label %72, !dbg !3062

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3063, !tbaa !768
  %36 = icmp eq i8 %35, 96, !dbg !3064
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.92, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.93, i64 0, i64 0), !dbg !3063
  br label %75, !dbg !3065

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2960, metadata !711), !dbg !3066
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2972, metadata !711), !dbg !3070
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2973, metadata !711), !dbg !3071
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3072
  %40 = load i8, i8* %39, align 1, !dbg !3072, !tbaa !768
  %41 = sext i8 %40 to i32, !dbg !3072
  %42 = and i32 %41, -33, !dbg !3072
  %43 = icmp eq i32 %42, 66, !dbg !3072
  br i1 %43, label %44, label %72, !dbg !3072

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2982, metadata !711), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2993, metadata !711), !dbg !3075
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2994, metadata !711), !dbg !3076
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3077
  %46 = load i8, i8* %45, align 1, !dbg !3077, !tbaa !768
  %47 = icmp eq i8 %46, 49, !dbg !3077
  br i1 %47, label %48, label %72, !dbg !3078

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3003, metadata !711), !dbg !3079
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3013, metadata !711), !dbg !3081
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3014, metadata !711), !dbg !3082
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3083
  %50 = load i8, i8* %49, align 1, !dbg !3083, !tbaa !768
  %51 = icmp eq i8 %50, 56, !dbg !3083
  br i1 %51, label %52, label %72, !dbg !3084

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3024, metadata !711), !dbg !3085
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3033, metadata !711), !dbg !3087
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3034, metadata !711), !dbg !3088
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3089
  %54 = load i8, i8* %53, align 1, !dbg !3089, !tbaa !768
  %55 = icmp eq i8 %54, 48, !dbg !3089
  br i1 %55, label %56, label %72, !dbg !3090

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3044, metadata !711), !dbg !3091
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3052, metadata !711), !dbg !3093
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3053, metadata !711), !dbg !3094
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3095
  %58 = load i8, i8* %57, align 1, !dbg !3095, !tbaa !768
  %59 = icmp eq i8 %58, 51, !dbg !3095
  br i1 %59, label %60, label %72, !dbg !3096

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3097, metadata !711), !dbg !3106
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3104, metadata !711), !dbg !3110
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3105, metadata !711), !dbg !3111
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3112
  %62 = load i8, i8* %61, align 1, !dbg !3112, !tbaa !768
  %63 = icmp eq i8 %62, 48, !dbg !3112
  br i1 %63, label %64, label %72, !dbg !3114

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3115, metadata !711), !dbg !3123
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3121, metadata !711), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3122, metadata !711), !dbg !3128
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3129
  %66 = load i8, i8* %65, align 1, !dbg !3129, !tbaa !768
  %67 = icmp eq i8 %66, 0, !dbg !3129
  br i1 %67, label %68, label %72, !dbg !3131

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3132, !tbaa !768
  %70 = icmp eq i8 %69, 96, !dbg !3133
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.94, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.95, i64 0, i64 0), !dbg !3132
  br label %75, !dbg !3134

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3135
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.91, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), !dbg !3136
  br label %75, !dbg !3137

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3138
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3139 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3143, metadata !711), !dbg !3146
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3144, metadata !711), !dbg !3147
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3145, metadata !711), !dbg !3148
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3149, metadata !711) #12, !dbg !3162
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3154, metadata !711) #12, !dbg !3164
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3155, metadata !711) #12, !dbg !3165
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3156, metadata !711) #12, !dbg !3166
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3167
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3167
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3157, metadata !711) #12, !dbg !3168
  %6 = tail call i32* @__errno_location() #17, !dbg !3169
  %7 = load i32, i32* %6, align 4, !dbg !3169, !tbaa !860
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3158, metadata !711) #12, !dbg !3170
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3171
  %9 = load i32, i32* %8, align 4, !dbg !3171, !tbaa !2333
  %10 = or i32 %9, 1, !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3159, metadata !711) #12, !dbg !3173
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3174
  %12 = load i32, i32* %11, align 8, !dbg !3174, !tbaa !2273
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3175
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3176
  %15 = load i8*, i8** %14, align 8, !dbg !3176, !tbaa !2359
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3177
  %17 = load i8*, i8** %16, align 8, !dbg !3177, !tbaa !2362
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #12, !dbg !3178
  %19 = add i64 %18, 1, !dbg !3179
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3160, metadata !711) #12, !dbg !3180
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3181, metadata !711) #12, !dbg !3186
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !3188
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3161, metadata !711) #12, !dbg !3189
  %21 = load i32, i32* %11, align 8, !dbg !3190, !tbaa !2273
  %22 = load i8*, i8** %14, align 8, !dbg !3191, !tbaa !2359
  %23 = load i8*, i8** %16, align 8, !dbg !3192, !tbaa !2362
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #12, !dbg !3193
  store i32 %7, i32* %6, align 4, !dbg !3194, !tbaa !860
  ret i8* %20, !dbg !3195
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3150 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3149, metadata !711), !dbg !3196
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3154, metadata !711), !dbg !3197
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3155, metadata !711), !dbg !3198
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3156, metadata !711), !dbg !3199
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3200
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3200
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3157, metadata !711), !dbg !3201
  %7 = tail call i32* @__errno_location() #17, !dbg !3202
  %8 = load i32, i32* %7, align 4, !dbg !3202, !tbaa !860
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3158, metadata !711), !dbg !3203
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3204
  %10 = load i32, i32* %9, align 4, !dbg !3204, !tbaa !2333
  %11 = icmp ne i64* %2, null, !dbg !3205
  %12 = xor i1 %11, true, !dbg !3205
  %13 = zext i1 %12 to i32, !dbg !3205
  %14 = or i32 %10, %13, !dbg !3206
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3159, metadata !711), !dbg !3207
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3208
  %16 = load i32, i32* %15, align 8, !dbg !3208, !tbaa !2273
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3209
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3210
  %19 = load i8*, i8** %18, align 8, !dbg !3210, !tbaa !2359
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3211
  %21 = load i8*, i8** %20, align 8, !dbg !3211, !tbaa !2362
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3212
  %23 = add i64 %22, 1, !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3160, metadata !711), !dbg !3214
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3181, metadata !711) #12, !dbg !3215
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !3217
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3161, metadata !711), !dbg !3218
  %25 = load i32, i32* %15, align 8, !dbg !3219, !tbaa !2273
  %26 = load i8*, i8** %18, align 8, !dbg !3220, !tbaa !2359
  %27 = load i8*, i8** %20, align 8, !dbg !3221, !tbaa !2362
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3222
  store i32 %8, i32* %7, align 4, !dbg !3223, !tbaa !860
  br i1 %11, label %29, label %30, !dbg !3224

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3225, !tbaa !811
  br label %30, !dbg !3227

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3228
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3229 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3233, !tbaa !718
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3231, metadata !711), !dbg !3234
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3232, metadata !711), !dbg !3235
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3232, metadata !711), !dbg !3235
  %2 = load i32, i32* @nslots, align 4, !dbg !3236, !tbaa !860
  %3 = icmp sgt i32 %2, 1, !dbg !3239
  br i1 %3, label %4, label %13, !dbg !3240

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3241

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3232, metadata !711), !dbg !3235
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3241
  %8 = load i8*, i8** %7, align 8, !dbg !3241, !tbaa !3242
  tail call void @free(i8* %8) #12, !dbg !3244
  %9 = add nuw i64 %6, 1, !dbg !3245
  %10 = load i32, i32* @nslots, align 4, !dbg !3236, !tbaa !860
  %11 = sext i32 %10 to i64, !dbg !3239
  %12 = icmp slt i64 %9, %11, !dbg !3239
  br i1 %12, label %5, label %13, !dbg !3240, !llvm.loop !3246

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3248
  %15 = load i8*, i8** %14, align 8, !dbg !3248, !tbaa !3242
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3250
  br i1 %16, label %18, label %17, !dbg !3251

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #12, !dbg !3252
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3254, !tbaa !3255
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3256, !tbaa !3242
  br label %18, !dbg !3257

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3258
  br i1 %19, label %22, label %20, !dbg !3260

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !3261
  tail call void @free(i8* %21) #12, !dbg !3263
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3264, !tbaa !718
  br label %22, !dbg !3265

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !3266, !tbaa !860
  ret void, !dbg !3267
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3268 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3272, metadata !711), !dbg !3274
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3273, metadata !711), !dbg !3275
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3276
  ret i8* %3, !dbg !3277
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3278 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3282, metadata !711), !dbg !3296
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3283, metadata !711), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3284, metadata !711), !dbg !3298
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3285, metadata !711), !dbg !3299
  %5 = tail call i32* @__errno_location() #17, !dbg !3300
  %6 = load i32, i32* %5, align 4, !dbg !3300, !tbaa !860
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3286, metadata !711), !dbg !3301
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3302, !tbaa !718
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3287, metadata !711), !dbg !3303
  %8 = icmp slt i32 %0, 0, !dbg !3304
  br i1 %8, label %9, label %10, !dbg !3306

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3307
  unreachable, !dbg !3307

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3308, !tbaa !860
  %12 = icmp sgt i32 %11, %0, !dbg !3309
  br i1 %12, label %34, label %13, !dbg !3310

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3311
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3312
  br i1 %15, label %16, label %17, !dbg !3314

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3315
  unreachable, !dbg !3315

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3316
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3316
  %20 = add nsw i32 %0, 1, !dbg !3317
  %21 = sext i32 %20 to i64, !dbg !3318
  %22 = shl nsw i64 %21, 4, !dbg !3319
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !3320
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3320
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3287, metadata !711), !dbg !3303
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3321, !tbaa !718
  br i1 %14, label %25, label %26, !dbg !3322

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3323, !tbaa.struct !3325
  br label %26, !dbg !3326

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3327, !tbaa !860
  %28 = sext i32 %27 to i64, !dbg !3328
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3328
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3329
  %31 = sub nsw i32 %20, %27, !dbg !3330
  %32 = sext i32 %31 to i64, !dbg !3331
  %33 = shl nsw i64 %32, 4, !dbg !3332
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3329
  store i32 %20, i32* @nslots, align 4, !dbg !3333, !tbaa !860
  br label %34, !dbg !3334

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3287, metadata !711), !dbg !3303
  %36 = sext i32 %0 to i64, !dbg !3335
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3336
  %38 = load i64, i64* %37, align 8, !dbg !3336, !tbaa !3255
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3291, metadata !711), !dbg !3337
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3338
  %40 = load i8*, i8** %39, align 8, !dbg !3338, !tbaa !3242
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3293, metadata !711), !dbg !3339
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3340
  %42 = load i32, i32* %41, align 4, !dbg !3340, !tbaa !2333
  %43 = or i32 %42, 1, !dbg !3341
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3294, metadata !711), !dbg !3342
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3343
  %45 = load i32, i32* %44, align 8, !dbg !3343, !tbaa !2273
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3344
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3345
  %48 = load i8*, i8** %47, align 8, !dbg !3345, !tbaa !2359
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3346
  %50 = load i8*, i8** %49, align 8, !dbg !3346, !tbaa !2362
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3347
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3295, metadata !711), !dbg !3348
  %52 = icmp ugt i64 %38, %51, !dbg !3349
  br i1 %52, label %63, label %53, !dbg !3351

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3352
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3291, metadata !711), !dbg !3337
  store i64 %54, i64* %37, align 8, !dbg !3354, !tbaa !3255
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3355
  br i1 %55, label %57, label %56, !dbg !3357

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !3358
  br label %57, !dbg !3358

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3181, metadata !711) #12, !dbg !3359
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !3361
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3293, metadata !711), !dbg !3339
  store i8* %58, i8** %39, align 8, !dbg !3362, !tbaa !3242
  %59 = load i32, i32* %44, align 8, !dbg !3363, !tbaa !2273
  %60 = load i8*, i8** %47, align 8, !dbg !3364, !tbaa !2359
  %61 = load i8*, i8** %49, align 8, !dbg !3365, !tbaa !2362
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3366
  br label %63, !dbg !3367

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3293, metadata !711), !dbg !3339
  store i32 %6, i32* %5, align 4, !dbg !3368, !tbaa !860
  ret i8* %64, !dbg !3369
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3370 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3374, metadata !711), !dbg !3377
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3375, metadata !711), !dbg !3378
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3376, metadata !711), !dbg !3379
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3380
  ret i8* %4, !dbg !3381
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3382 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3386, metadata !711), !dbg !3387
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3272, metadata !711) #12, !dbg !3388
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3273, metadata !711) #12, !dbg !3390
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !3391
  ret i8* %2, !dbg !3392
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3393 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3397, metadata !711), !dbg !3399
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3398, metadata !711), !dbg !3400
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3374, metadata !711) #12, !dbg !3401
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3375, metadata !711) #12, !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3376, metadata !711) #12, !dbg !3404
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !3405
  ret i8* %3, !dbg !3406
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3407 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3415, metadata !3421), !dbg !3422
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3411, metadata !711), !dbg !3424
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3412, metadata !711), !dbg !3425
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3413, metadata !711), !dbg !3426
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3427
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3427
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3414, metadata !711), !dbg !3428
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3420, metadata !711) #12, !dbg !3429
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3430
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3430
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3415, metadata !711) #12, !dbg !3422
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3415, metadata !3431) #12, !dbg !3422
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3422
  %8 = icmp eq i32 %1, 10, !dbg !3432
  br i1 %8, label %9, label %10, !dbg !3434

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3435, !noalias !3436
  unreachable, !dbg !3435

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3415, metadata !3431) #12, !dbg !3422
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3439
  store i32 %1, i32* %11, align 8, !dbg !3439, !alias.scope !3436
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3439
  %13 = bitcast i32* %12 to i8*, !dbg !3439
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !3439
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3440
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3414, metadata !711), !dbg !3428
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3441
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3442
  ret i8* %14, !dbg !3443
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3444 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3415, metadata !3421), !dbg !3453
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3448, metadata !711), !dbg !3455
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3449, metadata !711), !dbg !3456
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3450, metadata !711), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3451, metadata !711), !dbg !3458
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3459
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3459
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3452, metadata !711), !dbg !3460
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3420, metadata !711) #12, !dbg !3461
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3462
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3462
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3415, metadata !711) #12, !dbg !3453
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3415, metadata !3431) #12, !dbg !3453
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3453
  %9 = icmp eq i32 %1, 10, !dbg !3463
  br i1 %9, label %10, label %11, !dbg !3464

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3465, !noalias !3466
  unreachable, !dbg !3465

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3415, metadata !3431) #12, !dbg !3453
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3469
  store i32 %1, i32* %12, align 8, !dbg !3469, !alias.scope !3466
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3469
  %14 = bitcast i32* %13 to i8*, !dbg !3469
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #12, !dbg !3469
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3470
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3452, metadata !711), !dbg !3460
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3471
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3472
  ret i8* %15, !dbg !3473
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3474 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3415, metadata !3421), !dbg !3480
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3478, metadata !711), !dbg !3483
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3479, metadata !711), !dbg !3484
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3411, metadata !711) #12, !dbg !3485
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3412, metadata !711) #12, !dbg !3486
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3413, metadata !711) #12, !dbg !3487
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3488
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3488
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3414, metadata !711) #12, !dbg !3489
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3420, metadata !711) #12, !dbg !3490
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3491
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !3491
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3415, metadata !711) #12, !dbg !3480
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3415, metadata !3431) #12, !dbg !3480
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3480
  %7 = icmp eq i32 %0, 10, !dbg !3492
  br i1 %7, label %8, label %9, !dbg !3493

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3494, !noalias !3495
  unreachable, !dbg !3494

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3415, metadata !3431) #12, !dbg !3480
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3498
  store i32 %0, i32* %10, align 8, !dbg !3498, !alias.scope !3495
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3498
  %12 = bitcast i32* %11 to i8*, !dbg !3498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #12, !dbg !3498
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !3499
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3414, metadata !711) #12, !dbg !3489
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3500
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3501
  ret i8* %13, !dbg !3502
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3503 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3415, metadata !3421), !dbg !3510
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3507, metadata !711), !dbg !3513
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3508, metadata !711), !dbg !3514
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3509, metadata !711), !dbg !3515
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3448, metadata !711) #12, !dbg !3516
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3449, metadata !711) #12, !dbg !3517
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3450, metadata !711) #12, !dbg !3518
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3451, metadata !711) #12, !dbg !3519
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3520
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3520
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3452, metadata !711) #12, !dbg !3521
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3420, metadata !711) #12, !dbg !3522
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3523
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3523
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3415, metadata !711) #12, !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3415, metadata !3431) #12, !dbg !3510
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3510
  %8 = icmp eq i32 %0, 10, !dbg !3524
  br i1 %8, label %9, label %10, !dbg !3525

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3526, !noalias !3527
  unreachable, !dbg !3526

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3415, metadata !3431) #12, !dbg !3510
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3530
  store i32 %0, i32* %11, align 8, !dbg !3530, !alias.scope !3527
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3530
  %13 = bitcast i32* %12 to i8*, !dbg !3530
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !3530
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3531
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3452, metadata !711) #12, !dbg !3521
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #12, !dbg !3532
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3533
  ret i8* %14, !dbg !3534
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3535 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3539, metadata !711), !dbg !3543
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3540, metadata !711), !dbg !3544
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3541, metadata !711), !dbg !3545
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3546
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3546
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3547, !tbaa.struct !3548
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3542, metadata !711), !dbg !3549
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2292, metadata !711), !dbg !3550
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2293, metadata !711), !dbg !3552
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2294, metadata !711), !dbg !3553
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2295, metadata !711), !dbg !3554
  %6 = lshr i8 %2, 5, !dbg !3555
  %7 = zext i8 %6 to i64, !dbg !3555
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3556
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2296, metadata !711), !dbg !3557
  %9 = and i8 %2, 31, !dbg !3558
  %10 = zext i8 %9 to i32, !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2298, metadata !711), !dbg !3560
  %11 = load i32, i32* %8, align 4, !dbg !3561, !tbaa !860
  %12 = lshr i32 %11, %10, !dbg !3562
  %13 = and i32 %12, 1, !dbg !3563
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2299, metadata !711), !dbg !3564
  %14 = xor i32 %13, 1, !dbg !3565
  %15 = shl i32 %14, %10, !dbg !3566
  %16 = xor i32 %15, %11, !dbg !3567
  store i32 %16, i32* %8, align 4, !dbg !3567, !tbaa !860
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3542, metadata !711), !dbg !3549
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3568
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3569
  ret i8* %17, !dbg !3570
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3571 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3575, metadata !711), !dbg !3577
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3576, metadata !711), !dbg !3578
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3539, metadata !711) #12, !dbg !3579
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3540, metadata !711) #12, !dbg !3581
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3541, metadata !711) #12, !dbg !3582
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3583
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3583
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3584, !tbaa.struct !3548
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3542, metadata !711) #12, !dbg !3585
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2292, metadata !711) #12, !dbg !3586
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2293, metadata !711) #12, !dbg !3588
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2294, metadata !711) #12, !dbg !3589
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2295, metadata !711) #12, !dbg !3590
  %5 = lshr i8 %1, 5, !dbg !3591
  %6 = zext i8 %5 to i64, !dbg !3591
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3592
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2296, metadata !711) #12, !dbg !3593
  %8 = and i8 %1, 31, !dbg !3594
  %9 = zext i8 %8 to i32, !dbg !3595
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2298, metadata !711) #12, !dbg !3596
  %10 = load i32, i32* %7, align 4, !dbg !3597, !tbaa !860
  %11 = lshr i32 %10, %9, !dbg !3598
  %12 = and i32 %11, 1, !dbg !3599
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2299, metadata !711) #12, !dbg !3600
  %13 = xor i32 %12, 1, !dbg !3601
  %14 = shl i32 %13, %9, !dbg !3602
  %15 = xor i32 %14, %10, !dbg !3603
  store i32 %15, i32* %7, align 4, !dbg !3603, !tbaa !860
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3542, metadata !711) #12, !dbg !3585
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3604
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3605
  ret i8* %16, !dbg !3606
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3607 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3609, metadata !711), !dbg !3610
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3575, metadata !711) #12, !dbg !3611
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3576, metadata !711) #12, !dbg !3613
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3539, metadata !711) #12, !dbg !3614
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3540, metadata !711) #12, !dbg !3616
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3541, metadata !711) #12, !dbg !3617
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3618
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3618
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3619, !tbaa.struct !3548
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3542, metadata !711) #12, !dbg !3620
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2292, metadata !711) #12, !dbg !3621
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2293, metadata !711) #12, !dbg !3623
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2294, metadata !711) #12, !dbg !3624
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2295, metadata !711) #12, !dbg !3625
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3626
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2296, metadata !711) #12, !dbg !3627
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2298, metadata !711) #12, !dbg !3628
  %5 = load i32, i32* %4, align 4, !dbg !3629, !tbaa !860
  %6 = or i32 %5, 67108864, !dbg !3630
  store i32 %6, i32* %4, align 4, !dbg !3630, !tbaa !860
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3542, metadata !711) #12, !dbg !3620
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !3631
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3632
  ret i8* %7, !dbg !3633
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3634 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3636, metadata !711), !dbg !3638
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3637, metadata !711), !dbg !3639
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3539, metadata !711) #12, !dbg !3640
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3540, metadata !711) #12, !dbg !3642
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3541, metadata !711) #12, !dbg !3643
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3644
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3644
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3645, !tbaa.struct !3548
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3542, metadata !711) #12, !dbg !3646
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2292, metadata !711) #12, !dbg !3647
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2293, metadata !711) #12, !dbg !3649
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2294, metadata !711) #12, !dbg !3650
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2295, metadata !711) #12, !dbg !3651
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3652
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2296, metadata !711) #12, !dbg !3653
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2298, metadata !711) #12, !dbg !3654
  %6 = load i32, i32* %5, align 4, !dbg !3655, !tbaa !860
  %7 = or i32 %6, 67108864, !dbg !3656
  store i32 %7, i32* %5, align 4, !dbg !3656, !tbaa !860
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3542, metadata !711) #12, !dbg !3646
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !3657
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3658
  ret i8* %8, !dbg !3659
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3660 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3415, metadata !3421), !dbg !3666
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3662, metadata !711), !dbg !3668
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3663, metadata !711), !dbg !3669
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3664, metadata !711), !dbg !3670
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3671
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3671
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3420, metadata !711) #12, !dbg !3672
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3673
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3673
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3415, metadata !711) #12, !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3415, metadata !3431) #12, !dbg !3666
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3666
  %9 = icmp eq i32 %1, 10, !dbg !3674
  br i1 %9, label %10, label %11, !dbg !3675

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3676, !noalias !3677
  unreachable, !dbg !3676

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3415, metadata !3431) #12, !dbg !3666
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3680
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3681
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3682
  store i32 %1, i32* %13, align 8, !dbg !3682
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3682
  %15 = bitcast i32* %14 to i8*, !dbg !3682
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3682
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3665, metadata !711), !dbg !3683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2292, metadata !711), !dbg !3684
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2293, metadata !711), !dbg !3686
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2294, metadata !711), !dbg !3687
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2295, metadata !711), !dbg !3688
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3689
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2296, metadata !711), !dbg !3690
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2298, metadata !711), !dbg !3691
  %17 = load i32, i32* %16, align 4, !dbg !3692, !tbaa !860
  %18 = or i32 %17, 67108864, !dbg !3693
  store i32 %18, i32* %16, align 4, !dbg !3693, !tbaa !860
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3665, metadata !711), !dbg !3683
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3694
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3695
  ret i8* %19, !dbg !3696
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3697 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3701, metadata !711), !dbg !3705
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3702, metadata !711), !dbg !3706
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3703, metadata !711), !dbg !3707
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3704, metadata !711), !dbg !3708
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3709, metadata !711) #12, !dbg !3719
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3714, metadata !711) #12, !dbg !3721
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3715, metadata !711) #12, !dbg !3722
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3716, metadata !711) #12, !dbg !3723
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3717, metadata !711) #12, !dbg !3724
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3725
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3725
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3726, !tbaa.struct !3548
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3718, metadata !711) #12, !dbg !3727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2341, metadata !711) #12, !dbg !3728
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2342, metadata !711) #12, !dbg !3730
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2343, metadata !711) #12, !dbg !3731
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2341, metadata !711) #12, !dbg !3728
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2341, metadata !711) #12, !dbg !3728
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3732
  store i32 10, i32* %7, align 8, !dbg !3733, !tbaa !2273
  %8 = icmp ne i8* %1, null, !dbg !3734
  %9 = icmp ne i8* %2, null, !dbg !3735
  %10 = and i1 %8, %9, !dbg !3736
  br i1 %10, label %12, label %11, !dbg !3736

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3737
  unreachable, !dbg !3737

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3738
  store i8* %1, i8** %13, align 8, !dbg !3739, !tbaa !2359
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3740
  store i8* %2, i8** %14, align 8, !dbg !3741, !tbaa !2362
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3718, metadata !711) #12, !dbg !3727
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3742
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3743
  ret i8* %15, !dbg !3744
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3710 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3709, metadata !711), !dbg !3745
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3714, metadata !711), !dbg !3746
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3715, metadata !711), !dbg !3747
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3716, metadata !711), !dbg !3748
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3717, metadata !711), !dbg !3749
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3750
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3750
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3751, !tbaa.struct !3548
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3718, metadata !711), !dbg !3752
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2341, metadata !711) #12, !dbg !3753
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2342, metadata !711) #12, !dbg !3755
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2343, metadata !711) #12, !dbg !3756
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2341, metadata !711) #12, !dbg !3753
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2341, metadata !711) #12, !dbg !3753
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3757
  store i32 10, i32* %8, align 8, !dbg !3758, !tbaa !2273
  %9 = icmp ne i8* %1, null, !dbg !3759
  %10 = icmp ne i8* %2, null, !dbg !3760
  %11 = and i1 %9, %10, !dbg !3761
  br i1 %11, label %13, label %12, !dbg !3761

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3762
  unreachable, !dbg !3762

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3763
  store i8* %1, i8** %14, align 8, !dbg !3764, !tbaa !2359
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3765
  store i8* %2, i8** %15, align 8, !dbg !3766, !tbaa !2362
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3718, metadata !711), !dbg !3752
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3767
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3768
  ret i8* %16, !dbg !3769
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3770 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3774, metadata !711), !dbg !3777
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3775, metadata !711), !dbg !3778
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3776, metadata !711), !dbg !3779
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3701, metadata !711) #12, !dbg !3780
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3702, metadata !711) #12, !dbg !3782
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3703, metadata !711) #12, !dbg !3783
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3704, metadata !711) #12, !dbg !3784
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3709, metadata !711) #12, !dbg !3785
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3714, metadata !711) #12, !dbg !3787
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3715, metadata !711) #12, !dbg !3788
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3716, metadata !711) #12, !dbg !3789
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3717, metadata !711) #12, !dbg !3790
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3791
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3791
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3792, !tbaa.struct !3548
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3718, metadata !711) #12, !dbg !3793
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2341, metadata !711) #12, !dbg !3794
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2342, metadata !711) #12, !dbg !3796
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2343, metadata !711) #12, !dbg !3797
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2341, metadata !711) #12, !dbg !3794
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2341, metadata !711) #12, !dbg !3794
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3798
  store i32 10, i32* %6, align 8, !dbg !3799, !tbaa !2273
  %7 = icmp ne i8* %0, null, !dbg !3800
  %8 = icmp ne i8* %1, null, !dbg !3801
  %9 = and i1 %7, %8, !dbg !3802
  br i1 %9, label %11, label %10, !dbg !3802

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3803
  unreachable, !dbg !3803

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3804
  store i8* %0, i8** %12, align 8, !dbg !3805, !tbaa !2359
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3806
  store i8* %1, i8** %13, align 8, !dbg !3807, !tbaa !2362
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3718, metadata !711) #12, !dbg !3793
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3808
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3809
  ret i8* %14, !dbg !3810
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3811 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3815, metadata !711), !dbg !3819
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3816, metadata !711), !dbg !3820
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3817, metadata !711), !dbg !3821
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3818, metadata !711), !dbg !3822
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3709, metadata !711) #12, !dbg !3823
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3714, metadata !711) #12, !dbg !3825
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3715, metadata !711) #12, !dbg !3826
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3716, metadata !711) #12, !dbg !3827
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3717, metadata !711) #12, !dbg !3828
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3829
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3829
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3830, !tbaa.struct !3548
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3718, metadata !711) #12, !dbg !3831
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2341, metadata !711) #12, !dbg !3832
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2342, metadata !711) #12, !dbg !3834
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2343, metadata !711) #12, !dbg !3835
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2341, metadata !711) #12, !dbg !3832
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2341, metadata !711) #12, !dbg !3832
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3836
  store i32 10, i32* %7, align 8, !dbg !3837, !tbaa !2273
  %8 = icmp ne i8* %0, null, !dbg !3838
  %9 = icmp ne i8* %1, null, !dbg !3839
  %10 = and i1 %8, %9, !dbg !3840
  br i1 %10, label %12, label %11, !dbg !3840

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3841
  unreachable, !dbg !3841

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3842
  store i8* %0, i8** %13, align 8, !dbg !3843, !tbaa !2359
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3844
  store i8* %1, i8** %14, align 8, !dbg !3845, !tbaa !2362
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3718, metadata !711) #12, !dbg !3831
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3846
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3847
  ret i8* %15, !dbg !3848
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3849 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3853, metadata !711), !dbg !3856
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3854, metadata !711), !dbg !3857
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3855, metadata !711), !dbg !3858
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3859
  ret i8* %4, !dbg !3860
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3861 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3865, metadata !711), !dbg !3867
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3866, metadata !711), !dbg !3868
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3853, metadata !711) #12, !dbg !3869
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3854, metadata !711) #12, !dbg !3871
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3855, metadata !711) #12, !dbg !3872
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3873
  ret i8* %3, !dbg !3874
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3875 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3879, metadata !711), !dbg !3881
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3880, metadata !711), !dbg !3882
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3853, metadata !711) #12, !dbg !3883
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3854, metadata !711) #12, !dbg !3885
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3855, metadata !711) #12, !dbg !3886
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3887
  ret i8* %3, !dbg !3888
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3889 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3893, metadata !711), !dbg !3894
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3879, metadata !711) #12, !dbg !3895
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3880, metadata !711) #12, !dbg !3897
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3853, metadata !711) #12, !dbg !3898
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3854, metadata !711) #12, !dbg !3900
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3855, metadata !711) #12, !dbg !3901
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3902
  ret i8* %2, !dbg !3903
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3904 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3949, metadata !711), !dbg !3955
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3950, metadata !711), !dbg !3956
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3951, metadata !711), !dbg !3957
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3952, metadata !711), !dbg !3958
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3953, metadata !711), !dbg !3959
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3954, metadata !711), !dbg !3960
  %7 = icmp eq i8* %1, null, !dbg !3961
  br i1 %7, label %10, label %8, !dbg !3963

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3964
  br label %12, !dbg !3964

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.103, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3965
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.104, i64 0, i64 0), i32 5) #12, !dbg !3966
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12, !dbg !3966
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.105, i64 0, i64 0), i32 5) #12, !dbg !3967
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #12, !dbg !3967
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
  ], !dbg !3968

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3969
  unreachable, !dbg !3969

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.106, i64 0, i64 0), i32 5) #12, !dbg !3971
  %20 = load i8*, i8** %4, align 8, !dbg !3971, !tbaa !718
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3971
  br label %146, !dbg !3972

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.107, i64 0, i64 0), i32 5) #12, !dbg !3973
  %24 = load i8*, i8** %4, align 8, !dbg !3973, !tbaa !718
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3973
  %26 = load i8*, i8** %25, align 8, !dbg !3973, !tbaa !718
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3973
  br label %146, !dbg !3974

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.108, i64 0, i64 0), i32 5) #12, !dbg !3975
  %30 = load i8*, i8** %4, align 8, !dbg !3975, !tbaa !718
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3975
  %32 = load i8*, i8** %31, align 8, !dbg !3975, !tbaa !718
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3975
  %34 = load i8*, i8** %33, align 8, !dbg !3975, !tbaa !718
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3975
  br label %146, !dbg !3976

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.109, i64 0, i64 0), i32 5) #12, !dbg !3977
  %38 = load i8*, i8** %4, align 8, !dbg !3977, !tbaa !718
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3977
  %40 = load i8*, i8** %39, align 8, !dbg !3977, !tbaa !718
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3977
  %42 = load i8*, i8** %41, align 8, !dbg !3977, !tbaa !718
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3977
  %44 = load i8*, i8** %43, align 8, !dbg !3977, !tbaa !718
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3977
  br label %146, !dbg !3978

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.110, i64 0, i64 0), i32 5) #12, !dbg !3979
  %48 = load i8*, i8** %4, align 8, !dbg !3979, !tbaa !718
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3979
  %50 = load i8*, i8** %49, align 8, !dbg !3979, !tbaa !718
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3979
  %52 = load i8*, i8** %51, align 8, !dbg !3979, !tbaa !718
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3979
  %54 = load i8*, i8** %53, align 8, !dbg !3979, !tbaa !718
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3979
  %56 = load i8*, i8** %55, align 8, !dbg !3979, !tbaa !718
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3979
  br label %146, !dbg !3980

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.111, i64 0, i64 0), i32 5) #12, !dbg !3981
  %60 = load i8*, i8** %4, align 8, !dbg !3981, !tbaa !718
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3981
  %62 = load i8*, i8** %61, align 8, !dbg !3981, !tbaa !718
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3981
  %64 = load i8*, i8** %63, align 8, !dbg !3981, !tbaa !718
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3981
  %66 = load i8*, i8** %65, align 8, !dbg !3981, !tbaa !718
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3981
  %68 = load i8*, i8** %67, align 8, !dbg !3981, !tbaa !718
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3981
  %70 = load i8*, i8** %69, align 8, !dbg !3981, !tbaa !718
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3981
  br label %146, !dbg !3982

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.112, i64 0, i64 0), i32 5) #12, !dbg !3983
  %74 = load i8*, i8** %4, align 8, !dbg !3983, !tbaa !718
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3983
  %76 = load i8*, i8** %75, align 8, !dbg !3983, !tbaa !718
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3983
  %78 = load i8*, i8** %77, align 8, !dbg !3983, !tbaa !718
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3983
  %80 = load i8*, i8** %79, align 8, !dbg !3983, !tbaa !718
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3983
  %82 = load i8*, i8** %81, align 8, !dbg !3983, !tbaa !718
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3983
  %84 = load i8*, i8** %83, align 8, !dbg !3983, !tbaa !718
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3983
  %86 = load i8*, i8** %85, align 8, !dbg !3983, !tbaa !718
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3983
  br label %146, !dbg !3984

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.113, i64 0, i64 0), i32 5) #12, !dbg !3985
  %90 = load i8*, i8** %4, align 8, !dbg !3985, !tbaa !718
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3985
  %92 = load i8*, i8** %91, align 8, !dbg !3985, !tbaa !718
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3985
  %94 = load i8*, i8** %93, align 8, !dbg !3985, !tbaa !718
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3985
  %96 = load i8*, i8** %95, align 8, !dbg !3985, !tbaa !718
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3985
  %98 = load i8*, i8** %97, align 8, !dbg !3985, !tbaa !718
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3985
  %100 = load i8*, i8** %99, align 8, !dbg !3985, !tbaa !718
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3985
  %102 = load i8*, i8** %101, align 8, !dbg !3985, !tbaa !718
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3985
  %104 = load i8*, i8** %103, align 8, !dbg !3985, !tbaa !718
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3985
  br label %146, !dbg !3986

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.114, i64 0, i64 0), i32 5) #12, !dbg !3987
  %108 = load i8*, i8** %4, align 8, !dbg !3987, !tbaa !718
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3987
  %110 = load i8*, i8** %109, align 8, !dbg !3987, !tbaa !718
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3987
  %112 = load i8*, i8** %111, align 8, !dbg !3987, !tbaa !718
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3987
  %114 = load i8*, i8** %113, align 8, !dbg !3987, !tbaa !718
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3987
  %116 = load i8*, i8** %115, align 8, !dbg !3987, !tbaa !718
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3987
  %118 = load i8*, i8** %117, align 8, !dbg !3987, !tbaa !718
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3987
  %120 = load i8*, i8** %119, align 8, !dbg !3987, !tbaa !718
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3987
  %122 = load i8*, i8** %121, align 8, !dbg !3987, !tbaa !718
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3987
  %124 = load i8*, i8** %123, align 8, !dbg !3987, !tbaa !718
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3987
  br label %146, !dbg !3988

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.115, i64 0, i64 0), i32 5) #12, !dbg !3989
  %128 = load i8*, i8** %4, align 8, !dbg !3989, !tbaa !718
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3989
  %130 = load i8*, i8** %129, align 8, !dbg !3989, !tbaa !718
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3989
  %132 = load i8*, i8** %131, align 8, !dbg !3989, !tbaa !718
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3989
  %134 = load i8*, i8** %133, align 8, !dbg !3989, !tbaa !718
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3989
  %136 = load i8*, i8** %135, align 8, !dbg !3989, !tbaa !718
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3989
  %138 = load i8*, i8** %137, align 8, !dbg !3989, !tbaa !718
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3989
  %140 = load i8*, i8** %139, align 8, !dbg !3989, !tbaa !718
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3989
  %142 = load i8*, i8** %141, align 8, !dbg !3989, !tbaa !718
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3989
  %144 = load i8*, i8** %143, align 8, !dbg !3989, !tbaa !718
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3989
  br label %146, !dbg !3990

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3991
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3992 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3996, metadata !711), !dbg !4002
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3997, metadata !711), !dbg !4003
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3998, metadata !711), !dbg !4004
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3999, metadata !711), !dbg !4005
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4000, metadata !711), !dbg !4006
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4001, metadata !711), !dbg !4007
  br label %6, !dbg !4008

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4001, metadata !711), !dbg !4007
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4010
  %9 = load i8*, i8** %8, align 8, !dbg !4010, !tbaa !718
  %10 = icmp eq i8* %9, null, !dbg !4012
  %11 = add i64 %7, 1, !dbg !4013
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4001, metadata !711), !dbg !4007
  br i1 %10, label %12, label %6, !dbg !4012, !llvm.loop !4014

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4016
  ret void, !dbg !4017
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4018 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4029, metadata !711), !dbg !4037
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4030, metadata !711), !dbg !4038
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4031, metadata !711), !dbg !4039
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4032, metadata !711), !dbg !4040
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4033, metadata !711), !dbg !4041
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4042
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !4042
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4035, metadata !711), !dbg !4043
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4034, metadata !711), !dbg !4044
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4034, metadata !711), !dbg !4044
  %11 = load i32, i32* %8, align 8, !dbg !4045
  %12 = icmp ult i32 %11, 41, !dbg !4045
  br i1 %12, label %13, label %18, !dbg !4045

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4045
  %15 = sext i32 %11 to i64, !dbg !4045
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4045
  %17 = add i32 %11, 8, !dbg !4045
  store i32 %17, i32* %8, align 8, !dbg !4045
  br label %21, !dbg !4045

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4045
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4045
  store i8* %20, i8** %10, align 8, !dbg !4045
  br label %21, !dbg !4045

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4045
  %25 = load i8*, i8** %24, align 8, !dbg !4045
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4048
  store i8* %25, i8** %26, align 16, !dbg !4049, !tbaa !718
  %27 = icmp eq i8* %25, null, !dbg !4050
  br i1 %27, label %30, label %28, !dbg !4051

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4034, metadata !711), !dbg !4044
  %29 = icmp ult i32 %22, 41, !dbg !4045
  br i1 %29, label %35, label %32, !dbg !4045

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4052
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !4053
  ret void, !dbg !4053

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4045
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4045
  store i8* %34, i8** %10, align 8, !dbg !4045
  br label %40, !dbg !4045

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4045
  %37 = sext i32 %22 to i64, !dbg !4045
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4045
  %39 = add i32 %22, 8, !dbg !4045
  store i32 %39, i32* %8, align 8, !dbg !4045
  br label %40, !dbg !4045

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4045
  %44 = load i8*, i8** %43, align 8, !dbg !4045
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4048
  store i8* %44, i8** %45, align 8, !dbg !4049, !tbaa !718
  %46 = icmp eq i8* %44, null, !dbg !4050
  br i1 %46, label %30, label %47, !dbg !4051

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4034, metadata !711), !dbg !4044
  %48 = icmp ult i32 %41, 41, !dbg !4045
  br i1 %48, label %52, label %49, !dbg !4045

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4045
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4045
  store i8* %51, i8** %10, align 8, !dbg !4045
  br label %57, !dbg !4045

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4045
  %54 = sext i32 %41 to i64, !dbg !4045
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4045
  %56 = add i32 %41, 8, !dbg !4045
  store i32 %56, i32* %8, align 8, !dbg !4045
  br label %57, !dbg !4045

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4045
  %61 = load i8*, i8** %60, align 8, !dbg !4045
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4048
  store i8* %61, i8** %62, align 16, !dbg !4049, !tbaa !718
  %63 = icmp eq i8* %61, null, !dbg !4050
  br i1 %63, label %30, label %64, !dbg !4051

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4034, metadata !711), !dbg !4044
  %65 = icmp ult i32 %58, 41, !dbg !4045
  br i1 %65, label %69, label %66, !dbg !4045

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4045
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4045
  store i8* %68, i8** %10, align 8, !dbg !4045
  br label %74, !dbg !4045

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4045
  %71 = sext i32 %58 to i64, !dbg !4045
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4045
  %73 = add i32 %58, 8, !dbg !4045
  store i32 %73, i32* %8, align 8, !dbg !4045
  br label %74, !dbg !4045

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4045
  %78 = load i8*, i8** %77, align 8, !dbg !4045
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4048
  store i8* %78, i8** %79, align 8, !dbg !4049, !tbaa !718
  %80 = icmp eq i8* %78, null, !dbg !4050
  br i1 %80, label %30, label %81, !dbg !4051

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4034, metadata !711), !dbg !4044
  %82 = icmp ult i32 %75, 41, !dbg !4045
  br i1 %82, label %86, label %83, !dbg !4045

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4045
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4045
  store i8* %85, i8** %10, align 8, !dbg !4045
  br label %91, !dbg !4045

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4045
  %88 = sext i32 %75 to i64, !dbg !4045
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4045
  %90 = add i32 %75, 8, !dbg !4045
  store i32 %90, i32* %8, align 8, !dbg !4045
  br label %91, !dbg !4045

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4045
  %95 = load i8*, i8** %94, align 8, !dbg !4045
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4048
  store i8* %95, i8** %96, align 16, !dbg !4049, !tbaa !718
  %97 = icmp eq i8* %95, null, !dbg !4050
  br i1 %97, label %30, label %98, !dbg !4051

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4034, metadata !711), !dbg !4044
  %99 = icmp ult i32 %92, 41, !dbg !4045
  br i1 %99, label %103, label %100, !dbg !4045

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4045
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4045
  store i8* %102, i8** %10, align 8, !dbg !4045
  br label %108, !dbg !4045

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4045
  %105 = sext i32 %92 to i64, !dbg !4045
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4045
  %107 = add i32 %92, 8, !dbg !4045
  store i32 %107, i32* %8, align 8, !dbg !4045
  br label %108, !dbg !4045

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4045
  %111 = load i8*, i8** %110, align 8, !dbg !4045
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4048
  store i8* %111, i8** %112, align 8, !dbg !4049, !tbaa !718
  %113 = icmp eq i8* %111, null, !dbg !4050
  br i1 %113, label %30, label %114, !dbg !4051

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4034, metadata !711), !dbg !4044
  %115 = load i8*, i8** %10, align 8, !dbg !4045
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4045
  store i8* %116, i8** %10, align 8, !dbg !4045
  %117 = bitcast i8* %115 to i8**, !dbg !4045
  %118 = load i8*, i8** %117, align 8, !dbg !4045
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4048
  store i8* %118, i8** %119, align 16, !dbg !4049, !tbaa !718
  %120 = icmp eq i8* %118, null, !dbg !4050
  br i1 %120, label %30, label %121, !dbg !4051

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4034, metadata !711), !dbg !4044
  %122 = load i8*, i8** %10, align 8, !dbg !4045
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4045
  store i8* %123, i8** %10, align 8, !dbg !4045
  %124 = bitcast i8* %122 to i8**, !dbg !4045
  %125 = load i8*, i8** %124, align 8, !dbg !4045
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4048
  store i8* %125, i8** %126, align 8, !dbg !4049, !tbaa !718
  %127 = icmp eq i8* %125, null, !dbg !4050
  br i1 %127, label %30, label %128, !dbg !4051

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4034, metadata !711), !dbg !4044
  %129 = load i8*, i8** %10, align 8, !dbg !4045
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4045
  store i8* %130, i8** %10, align 8, !dbg !4045
  %131 = bitcast i8* %129 to i8**, !dbg !4045
  %132 = load i8*, i8** %131, align 8, !dbg !4045
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4048
  store i8* %132, i8** %133, align 16, !dbg !4049, !tbaa !718
  %134 = icmp eq i8* %132, null, !dbg !4050
  br i1 %134, label %30, label %135, !dbg !4051

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4034, metadata !711), !dbg !4044
  %136 = load i8*, i8** %10, align 8, !dbg !4045
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4045
  store i8* %137, i8** %10, align 8, !dbg !4045
  %138 = bitcast i8* %136 to i8**, !dbg !4045
  %139 = load i8*, i8** %138, align 8, !dbg !4045
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4048
  store i8* %139, i8** %140, align 8, !dbg !4049, !tbaa !718
  %141 = icmp eq i8* %139, null, !dbg !4050
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4034, metadata !711), !dbg !4044
  %142 = select i1 %141, i64 9, i64 10, !dbg !4051
  br label %30, !dbg !4051
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4054 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4058, metadata !711), !dbg !4068
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4059, metadata !711), !dbg !4069
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4060, metadata !711), !dbg !4070
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4061, metadata !711), !dbg !4071
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4072
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !4072
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4062, metadata !711), !dbg !4073
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4074
  call void @llvm.va_start(i8* nonnull %6), !dbg !4074
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4075
  call void @llvm.va_end(i8* nonnull %6), !dbg !4076
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !4077
  ret void, !dbg !4077
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4078 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.118, i64 0, i64 0), i32 5) #12, !dbg !4079
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.119, i64 0, i64 0)) #12, !dbg !4079
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.120, i64 0, i64 0), i32 5) #12, !dbg !4080
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.121, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.122, i64 0, i64 0)) #12, !dbg !4080
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.123, i64 0, i64 0), i32 5) #12, !dbg !4081
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4081, !tbaa !718
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #12, !dbg !4081
  ret void, !dbg !4082
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4083 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4087, metadata !711), !dbg !4089
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4088, metadata !711), !dbg !4090
  %3 = udiv i64 9223372036854775807, %1, !dbg !4091
  %4 = icmp ult i64 %3, %0, !dbg !4091
  br i1 %4, label %5, label %6, !dbg !4093

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4094
  unreachable, !dbg !4094

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4095
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4096, metadata !711) #12, !dbg !4103
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !4105
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4102, metadata !711) #12, !dbg !4106
  %9 = icmp eq i8* %8, null, !dbg !4107
  %10 = icmp ne i64 %7, 0, !dbg !4109
  %11 = and i1 %10, %9, !dbg !4110
  br i1 %11, label %12, label %13, !dbg !4110

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4111
  unreachable, !dbg !4111

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4112
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4097 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4096, metadata !711), !dbg !4113
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !4114
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4102, metadata !711), !dbg !4115
  %3 = icmp eq i8* %2, null, !dbg !4116
  %4 = icmp ne i64 %0, 0, !dbg !4117
  %5 = and i1 %4, %3, !dbg !4118
  br i1 %5, label %6, label %7, !dbg !4118

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4119
  unreachable, !dbg !4119

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4120
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4121 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4125, metadata !711), !dbg !4128
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4126, metadata !711), !dbg !4129
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4127, metadata !711), !dbg !4130
  %4 = udiv i64 9223372036854775807, %2, !dbg !4131
  %5 = icmp ult i64 %4, %1, !dbg !4131
  br i1 %5, label %6, label %7, !dbg !4133

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4134
  unreachable, !dbg !4134

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4135
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4136, metadata !711) #12, !dbg !4142
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4141, metadata !711) #12, !dbg !4144
  %9 = icmp eq i64 %8, 0, !dbg !4145
  %10 = icmp ne i8* %0, null, !dbg !4147
  %11 = and i1 %10, %9, !dbg !4148
  br i1 %11, label %12, label %13, !dbg !4148

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !4149
  br label %19, !dbg !4151

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !4152
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4136, metadata !711) #12, !dbg !4142
  %15 = icmp eq i8* %14, null, !dbg !4153
  %16 = icmp ne i64 %8, 0, !dbg !4155
  %17 = and i1 %16, %15, !dbg !4156
  br i1 %17, label %18, label %19, !dbg !4156

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4157
  unreachable, !dbg !4157

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4158
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4137 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4136, metadata !711), !dbg !4159
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4141, metadata !711), !dbg !4160
  %3 = icmp eq i64 %1, 0, !dbg !4161
  %4 = icmp ne i8* %0, null, !dbg !4162
  %5 = and i1 %4, %3, !dbg !4163
  br i1 %5, label %6, label %7, !dbg !4163

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !4164
  br label %13, !dbg !4165

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !4166
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4136, metadata !711), !dbg !4159
  %9 = icmp eq i8* %8, null, !dbg !4167
  %10 = icmp ne i64 %1, 0, !dbg !4168
  %11 = and i1 %10, %9, !dbg !4169
  br i1 %11, label %12, label %13, !dbg !4169

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4170
  unreachable, !dbg !4170

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4171
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !667 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !669, metadata !711), !dbg !4172
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !670, metadata !711), !dbg !4173
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !671, metadata !711), !dbg !4174
  %4 = load i64, i64* %1, align 8, !dbg !4175, !tbaa !811
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !672, metadata !711), !dbg !4176
  %5 = icmp eq i8* %0, null, !dbg !4177
  br i1 %5, label %6, label %13, !dbg !4179

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4180
  br i1 %7, label %8, label %17, !dbg !4183

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4184
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !672, metadata !711), !dbg !4176
  %10 = icmp ugt i64 %2, 128, !dbg !4186
  %11 = zext i1 %10 to i64, !dbg !4186
  %12 = add nuw nsw i64 %9, %11, !dbg !4187
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !672, metadata !711), !dbg !4176
  br label %17, !dbg !4188

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4189
  %15 = icmp ugt i64 %14, %4, !dbg !4192
  br i1 %15, label %20, label %16, !dbg !4193

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4194
  unreachable, !dbg !4194

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !672, metadata !711), !dbg !4176
  store i64 %18, i64* %1, align 8, !dbg !4195, !tbaa !811
  %19 = mul i64 %18, %2, !dbg !4196
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4136, metadata !711) #12, !dbg !4197
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4141, metadata !711) #12, !dbg !4199
  br label %27, !dbg !4200

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4201
  %22 = add i64 %4, 1, !dbg !4202
  %23 = add i64 %22, %21, !dbg !4203
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !672, metadata !711), !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !672, metadata !711), !dbg !4176
  store i64 %23, i64* %1, align 8, !dbg !4195, !tbaa !811
  %24 = mul i64 %23, %2, !dbg !4196
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4136, metadata !711) #12, !dbg !4197
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4141, metadata !711) #12, !dbg !4199
  %25 = icmp eq i64 %24, 0, !dbg !4204
  br i1 %25, label %26, label %27, !dbg !4200

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #12, !dbg !4205
  br label %34, !dbg !4206

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #12, !dbg !4207
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4136, metadata !711) #12, !dbg !4197
  %30 = icmp eq i8* %29, null, !dbg !4208
  %31 = icmp ne i64 %28, 0, !dbg !4209
  %32 = and i1 %31, %30, !dbg !4210
  br i1 %32, label %33, label %34, !dbg !4210

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !4211
  unreachable, !dbg !4211

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4212
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4213 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4215, metadata !711), !dbg !4216
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4096, metadata !711) #12, !dbg !4217
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !4219
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4102, metadata !711) #12, !dbg !4220
  %3 = icmp eq i8* %2, null, !dbg !4221
  %4 = icmp ne i64 %0, 0, !dbg !4222
  %5 = and i1 %4, %3, !dbg !4223
  br i1 %5, label %6, label %7, !dbg !4223

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4224
  unreachable, !dbg !4224

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4225
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4226 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4230, metadata !711), !dbg !4232
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4231, metadata !711), !dbg !4233
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !669, metadata !711) #12, !dbg !4234
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !670, metadata !711) #12, !dbg !4236
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !671, metadata !711) #12, !dbg !4237
  %3 = load i64, i64* %1, align 8, !dbg !4238, !tbaa !811
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !672, metadata !711) #12, !dbg !4239
  %4 = icmp eq i8* %0, null, !dbg !4240
  br i1 %4, label %5, label %8, !dbg !4241

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4242
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !672, metadata !711) #12, !dbg !4239
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !672, metadata !711) #12, !dbg !4239
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4243
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !672, metadata !711) #12, !dbg !4239
  store i64 %7, i64* %1, align 8, !dbg !4244, !tbaa !811
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4136, metadata !711) #12, !dbg !4245
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4141, metadata !711) #12, !dbg !4247
  br label %17, !dbg !4248

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4249
  br i1 %9, label %11, label %10, !dbg !4250

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !4251
  unreachable, !dbg !4251

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4252
  %13 = add i64 %3, 1, !dbg !4253
  %14 = add i64 %13, %12, !dbg !4254
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !672, metadata !711) #12, !dbg !4239
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !672, metadata !711) #12, !dbg !4239
  store i64 %14, i64* %1, align 8, !dbg !4244, !tbaa !811
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4136, metadata !711) #12, !dbg !4245
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4141, metadata !711) #12, !dbg !4247
  %15 = icmp eq i64 %14, 0, !dbg !4255
  br i1 %15, label %16, label %17, !dbg !4248

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #12, !dbg !4256
  br label %24, !dbg !4257

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #12, !dbg !4258
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4136, metadata !711) #12, !dbg !4245
  %20 = icmp eq i8* %19, null, !dbg !4259
  %21 = icmp ne i64 %18, 0, !dbg !4260
  %22 = and i1 %21, %20, !dbg !4261
  br i1 %22, label %23, label %24, !dbg !4261

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !4262
  unreachable, !dbg !4262

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4263
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4264 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4266, metadata !711), !dbg !4267
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4096, metadata !711) #12, !dbg !4268
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !4270
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4102, metadata !711) #12, !dbg !4271
  %3 = icmp eq i8* %2, null, !dbg !4272
  %4 = icmp ne i64 %0, 0, !dbg !4273
  %5 = and i1 %4, %3, !dbg !4274
  br i1 %5, label %6, label %7, !dbg !4274

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4275
  unreachable, !dbg !4275

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4276
  ret i8* %2, !dbg !4277
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4278 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4280, metadata !711), !dbg !4283
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4281, metadata !711), !dbg !4284
  %3 = udiv i64 9223372036854775807, %1, !dbg !4285
  %4 = icmp ult i64 %3, %0, !dbg !4285
  br i1 %4, label %8, label %5, !dbg !4287

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !4288
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4282, metadata !711), !dbg !4289
  %7 = icmp eq i8* %6, null, !dbg !4290
  br i1 %7, label %8, label %9, !dbg !4291

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4292
  unreachable, !dbg !4292

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4293
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4294 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4298, metadata !711), !dbg !4300
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4299, metadata !711), !dbg !4301
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4096, metadata !711) #12, !dbg !4302
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !4304
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4102, metadata !711) #12, !dbg !4305
  %4 = icmp eq i8* %3, null, !dbg !4306
  %5 = icmp ne i64 %1, 0, !dbg !4307
  %6 = and i1 %5, %4, !dbg !4308
  br i1 %6, label %7, label %8, !dbg !4308

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4309
  unreachable, !dbg !4309

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4310
  ret i8* %3, !dbg !4311
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4312 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4314, metadata !711), !dbg !4315
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4316
  %3 = add i64 %2, 1, !dbg !4317
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4298, metadata !711) #12, !dbg !4318
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4299, metadata !711) #12, !dbg !4320
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4096, metadata !711) #12, !dbg !4321
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !4323
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4102, metadata !711) #12, !dbg !4324
  %5 = icmp eq i8* %4, null, !dbg !4325
  %6 = icmp ne i64 %3, 0, !dbg !4326
  %7 = and i1 %6, %5, !dbg !4327
  br i1 %7, label %8, label %9, !dbg !4327

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4328
  unreachable, !dbg !4328

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #12, !dbg !4329
  ret i8* %4, !dbg !4330
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4331 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4333, !tbaa !860
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.136, i64 0, i64 0), i32 5) #12, !dbg !4334
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.137, i64 0, i64 0), i8* %2) #12, !dbg !4335
  tail call void @abort() #15, !dbg !4336
  unreachable, !dbg !4336
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrndup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4337 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4340, metadata !711), !dbg !4343
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4341, metadata !711), !dbg !4344
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #12, !dbg !4345
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4342, metadata !711), !dbg !4346
  %4 = icmp eq i8* %3, null, !dbg !4347
  br i1 %4, label %5, label %6, !dbg !4349

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4350
  unreachable, !dbg !4350

; <label>:6:                                      ; preds = %2
  ret i8* %3, !dbg !4351
}

; Function Attrs: nounwind
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4352 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4355, metadata !711), !dbg !4361
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4356, metadata !711), !dbg !4362
  %3 = icmp eq i64 %0, 0, !dbg !4363
  %4 = icmp eq i64 %1, 0, !dbg !4364
  %5 = or i1 %3, %4, !dbg !4365
  br i1 %5, label %12, label %6, !dbg !4365

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4366
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4358, metadata !711), !dbg !4367
  %8 = udiv i64 %7, %1, !dbg !4368
  %9 = icmp eq i64 %8, %0, !dbg !4370
  br i1 %9, label %12, label %10, !dbg !4371

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4372
  store i32 12, i32* %11, align 4, !dbg !4374, !tbaa !860
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4355, metadata !711), !dbg !4361
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4356, metadata !711), !dbg !4362
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !4375
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4357, metadata !711), !dbg !4376
  br label %16, !dbg !4377

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4378
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4379 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4424, metadata !711), !dbg !4428
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4425, metadata !711), !dbg !4429
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4427, metadata !711), !dbg !4430
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4431
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4426, metadata !711), !dbg !4432
  %3 = icmp slt i32 %2, 0, !dbg !4433
  br i1 %3, label %4, label %6, !dbg !4435

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4436
  br label %24, !dbg !4437

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4438
  %8 = icmp eq i32 %7, 0, !dbg !4438
  br i1 %8, label %13, label %9, !dbg !4440

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4441
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !4442
  %12 = icmp eq i64 %11, -1, !dbg !4443
  br i1 %12, label %16, label %13, !dbg !4444

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !4445
  %15 = icmp eq i32 %14, 0, !dbg !4445
  br i1 %15, label %16, label %18, !dbg !4446

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4425, metadata !711), !dbg !4429
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4447
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4427, metadata !711), !dbg !4430
  br label %24, !dbg !4448

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4449
  %20 = load i32, i32* %19, align 4, !dbg !4449, !tbaa !860
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4425, metadata !711), !dbg !4429
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4425, metadata !711), !dbg !4429
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4447
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4427, metadata !711), !dbg !4430
  %22 = icmp eq i32 %20, 0, !dbg !4450
  br i1 %22, label %24, label %23, !dbg !4448

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4452, !tbaa !860
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4427, metadata !711), !dbg !4430
  br label %24, !dbg !4454

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4455
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4456 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4501, metadata !711), !dbg !4502
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4503
  br i1 %2, label %6, label %3, !dbg !4505

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4506
  %5 = icmp eq i32 %4, 0, !dbg !4506
  br i1 %5, label %6, label %8, !dbg !4507

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4508
  br label %17, !dbg !4509

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4510, metadata !711) #12, !dbg !4515
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4517
  %10 = load i32, i32* %9, align 8, !dbg !4517, !tbaa !1157
  %11 = and i32 %10, 256, !dbg !4519
  %12 = icmp eq i32 %11, 0, !dbg !4519
  br i1 %12, label %15, label %13, !dbg !4520

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4521
  br label %15, !dbg !4521

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4522
  br label %17, !dbg !4523

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4524
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @freadptr(%struct._IO_FILE* nocapture readonly, i64* nocapture) local_unnamed_addr #6 !dbg !4525 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4570, metadata !711), !dbg !4573
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4571, metadata !711), !dbg !4574
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4575
  %4 = load i8*, i8** %3, align 8, !dbg !4575, !tbaa !1021
  %5 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4577
  %6 = load i8*, i8** %5, align 8, !dbg !4577, !tbaa !4578
  %7 = icmp ugt i8* %4, %6, !dbg !4579
  br i1 %7, label %19, label %8, !dbg !4580

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4581
  %10 = bitcast i8** %9 to i64*, !dbg !4581
  %11 = load i64, i64* %10, align 8, !dbg !4581, !tbaa !1005
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4582
  %13 = bitcast i8** %12 to i64*, !dbg !4582
  %14 = load i64, i64* %13, align 8, !dbg !4582, !tbaa !1002
  %15 = sub i64 %11, %14, !dbg !4583
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !4572, metadata !711), !dbg !4584
  %16 = icmp eq i64 %15, 0, !dbg !4585
  br i1 %16, label %19, label %17, !dbg !4587

; <label>:17:                                     ; preds = %8
  %18 = inttoptr i64 %14 to i8*, !dbg !4587
  store i64 %15, i64* %1, align 8, !dbg !4588, !tbaa !811
  br label %19, !dbg !4589

; <label>:19:                                     ; preds = %8, %2, %17
  %20 = phi i8* [ %18, %17 ], [ null, %2 ], [ null, %8 ]
  ret i8* %20, !dbg !4590
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4591 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4636, metadata !711), !dbg !4642
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4637, metadata !711), !dbg !4643
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4638, metadata !711), !dbg !4644
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4645
  %5 = load i8*, i8** %4, align 8, !dbg !4645, !tbaa !1005
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4646
  %7 = load i8*, i8** %6, align 8, !dbg !4646, !tbaa !1002
  %8 = icmp eq i8* %5, %7, !dbg !4647
  br i1 %8, label %9, label %28, !dbg !4648

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4649
  %11 = load i8*, i8** %10, align 8, !dbg !4649, !tbaa !1021
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4650
  %13 = load i8*, i8** %12, align 8, !dbg !4650, !tbaa !4578
  %14 = icmp eq i8* %11, %13, !dbg !4651
  br i1 %14, label %15, label %28, !dbg !4652

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4653
  %17 = load i8*, i8** %16, align 8, !dbg !4653, !tbaa !4654
  %18 = icmp eq i8* %17, null, !dbg !4655
  br i1 %18, label %19, label %28, !dbg !4656

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4657
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !4658
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4639, metadata !711), !dbg !4659
  %22 = icmp eq i64 %21, -1, !dbg !4660
  br i1 %22, label %30, label %23, !dbg !4662

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4663
  %25 = load i32, i32* %24, align 8, !dbg !4664, !tbaa !1157
  %26 = and i32 %25, -17, !dbg !4664
  store i32 %26, i32* %24, align 8, !dbg !4664, !tbaa !1157
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4665
  store i64 %21, i64* %27, align 8, !dbg !4666, !tbaa !4667
  br label %30, !dbg !4668

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4669
  br label %30, !dbg !4670

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4671
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4672 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4689, metadata !711), !dbg !4698
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4690, metadata !711), !dbg !4699
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4691, metadata !711), !dbg !4700
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4692, metadata !711), !dbg !4701
  %6 = bitcast i32* %5 to i8*, !dbg !4702
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4702
  %7 = icmp eq i32* %0, null, !dbg !4703
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4689, metadata !711), !dbg !4698
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4705
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4689, metadata !711), !dbg !4698
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !4706
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4693, metadata !711), !dbg !4707
  %10 = icmp ugt i64 %9, -3, !dbg !4708
  %11 = icmp ne i64 %2, 0, !dbg !4709
  %12 = and i1 %11, %10, !dbg !4710
  br i1 %12, label %13, label %18, !dbg !4710

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !4711
  br i1 %14, label %18, label %15, !dbg !4712

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4713, !tbaa !768
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4695, metadata !711), !dbg !4714
  %17 = zext i8 %16 to i32, !dbg !4715
  store i32 %17, i32* %8, align 4, !dbg !4716, !tbaa !860
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4717
  ret i64 %19, !dbg !4717
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4718 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4763, metadata !711), !dbg !4768
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !4769
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4770, metadata !711), !dbg !4773
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4775
  %4 = load i32, i32* %3, align 8, !dbg !4775, !tbaa !1157
  %5 = and i32 %4, 32, !dbg !4775
  %6 = icmp eq i32 %5, 0, !dbg !4776
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !4777
  %8 = icmp ne i32 %7, 0, !dbg !4778
  br i1 %6, label %9, label %19, !dbg !4779

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4781
  %11 = xor i1 %8, true, !dbg !4782
  %12 = or i1 %10, %11, !dbg !4782
  %13 = sext i1 %8 to i32, !dbg !4782
  br i1 %12, label %22, label %14, !dbg !4782

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4783
  %16 = load i32, i32* %15, align 4, !dbg !4783, !tbaa !860
  %17 = icmp ne i32 %16, 9, !dbg !4784
  %18 = sext i1 %17 to i32, !dbg !4785
  br label %22, !dbg !4785

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4786

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4788
  store i32 0, i32* %21, align 4, !dbg !4790, !tbaa !860
  br label %22, !dbg !4788

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4791
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @freadseek(%struct._IO_FILE*, i64) local_unnamed_addr #6 !dbg !4792 {
  %3 = alloca i64, align 8
  %4 = alloca [4096 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4837, metadata !711), !dbg !4854
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4838, metadata !711), !dbg !4855
  %5 = icmp eq i64 %1, 0, !dbg !4856
  br i1 %5, label %71, label %6, !dbg !4858

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @freadahead(%struct._IO_FILE* %0) #14, !dbg !4859
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4839, metadata !711), !dbg !4860
  call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4838, metadata !711), !dbg !4855
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4839, metadata !711), !dbg !4860
  %8 = icmp eq i64 %7, 0, !dbg !4861
  br i1 %8, label %44, label %9, !dbg !4862

; <label>:9:                                      ; preds = %6
  %10 = bitcast i64* %3 to i8*
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  br label %12, !dbg !4862

; <label>:12:                                     ; preds = %9, %41
  %13 = phi i64 [ %1, %9 ], [ %39, %41 ]
  %14 = phi i64 [ %7, %9 ], [ %42, %41 ]
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4839, metadata !711), !dbg !4860
  call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4838, metadata !711), !dbg !4855
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #12, !dbg !4863
  call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !4841, metadata !711), !dbg !4864
  %15 = call i8* @freadptr(%struct._IO_FILE* %0, i64* nonnull %3) #12, !dbg !4865
  %16 = icmp ne i8* %15, null, !dbg !4866
  %17 = load i64, i64* %3, align 8, !dbg !4867
  call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4841, metadata !711), !dbg !4864
  %18 = icmp ne i64 %17, 0, !dbg !4868
  %19 = and i1 %16, %18, !dbg !4869
  br i1 %19, label %20, label %32, !dbg !4869

; <label>:20:                                     ; preds = %12
  %21 = icmp ult i64 %17, %13, !dbg !4870
  %22 = select i1 %21, i64 %17, i64 %13, !dbg !4871
  call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !4843, metadata !711), !dbg !4872
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4873, metadata !711), !dbg !4879
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !4878, metadata !711), !dbg !4881
  %23 = load i8*, i8** %11, align 8, !dbg !4882, !tbaa !1002
  %24 = getelementptr inbounds i8, i8* %23, i64 %22, !dbg !4882
  store i8* %24, i8** %11, align 8, !dbg !4882, !tbaa !1002
  %25 = sub i64 %13, %22, !dbg !4883
  call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !4838, metadata !711), !dbg !4855
  %26 = icmp eq i64 %25, 0, !dbg !4884
  br i1 %26, label %27, label %28, !dbg !4886

; <label>:27:                                     ; preds = %20
  call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !4838, metadata !711), !dbg !4855
  call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !4839, metadata !711), !dbg !4860
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #12, !dbg !4887
  br label %71

; <label>:28:                                     ; preds = %20
  %29 = sub i64 %14, %22, !dbg !4888
  call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !4839, metadata !711), !dbg !4860
  %30 = icmp eq i64 %29, 0, !dbg !4889
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !4838, metadata !711), !dbg !4855
  call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !4839, metadata !711), !dbg !4860
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #12, !dbg !4887
  br label %44

; <label>:32:                                     ; preds = %28, %12
  %33 = phi i64 [ %14, %12 ], [ %29, %28 ]
  %34 = phi i64 [ %13, %12 ], [ %25, %28 ]
  call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !4838, metadata !711), !dbg !4855
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !4839, metadata !711), !dbg !4860
  %35 = call i32 @fgetc(%struct._IO_FILE* %0), !dbg !4891
  %36 = icmp eq i32 %35, -1, !dbg !4893
  br i1 %36, label %37, label %38, !dbg !4894

; <label>:37:                                     ; preds = %32
  call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !4838, metadata !711), !dbg !4855
  call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !4839, metadata !711), !dbg !4860
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #12, !dbg !4887
  br label %67

; <label>:38:                                     ; preds = %32
  %39 = add i64 %34, -1, !dbg !4895
  call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !4838, metadata !711), !dbg !4855
  %40 = icmp eq i64 %39, 0, !dbg !4896
  call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !4838, metadata !711), !dbg !4855
  call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !4839, metadata !711), !dbg !4860
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #12, !dbg !4887
  br i1 %40, label %71, label %41

; <label>:41:                                     ; preds = %38
  %42 = add i64 %33, -1, !dbg !4898
  call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !4838, metadata !711), !dbg !4855
  call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !4839, metadata !711), !dbg !4860
  %43 = icmp eq i64 %42, 0, !dbg !4861
  br i1 %43, label %44, label %12, !dbg !4862, !llvm.loop !4899

; <label>:44:                                     ; preds = %41, %6, %31
  %45 = phi i64 [ %25, %31 ], [ %1, %6 ], [ %39, %41 ]
  call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !4838, metadata !711), !dbg !4855
  %46 = call i32 @fileno(%struct._IO_FILE* %0) #12, !dbg !4900
  call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !4840, metadata !711), !dbg !4901
  %47 = icmp sgt i32 %46, -1, !dbg !4902
  br i1 %47, label %48, label %53, !dbg !4903

; <label>:48:                                     ; preds = %44
  %49 = call i64 @lseek(i32 %46, i64 0, i32 1) #12, !dbg !4904
  %50 = icmp sgt i64 %49, -1, !dbg !4905
  br i1 %50, label %51, label %53, !dbg !4906

; <label>:51:                                     ; preds = %48
  %52 = call i32 @rpl_fseeko(%struct._IO_FILE* %0, i64 %45, i32 1) #12, !dbg !4907
  br label %71, !dbg !4909

; <label>:53:                                     ; preds = %48, %44
  %54 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0, !dbg !4910
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %54) #12, !dbg !4910
  call void @llvm.dbg.declare(metadata [4096 x i8]* %4, metadata !4846, metadata !711), !dbg !4911
  br label %55, !dbg !4912, !llvm.loop !4913

; <label>:55:                                     ; preds = %63, %53
  %56 = phi i64 [ %45, %53 ], [ %62, %63 ]
  call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !4838, metadata !711), !dbg !4855
  %57 = icmp ult i64 %56, 4096, !dbg !4915
  %58 = select i1 %57, i64 %56, i64 4096, !dbg !4915
  call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !4852, metadata !711), !dbg !4916
  %59 = call i64 @fread(i8* nonnull %54, i64 1, i64 %58, %struct._IO_FILE* %0), !dbg !4917
  %60 = icmp ult i64 %59, %58, !dbg !4919
  %61 = select i1 %60, i64 0, i64 %58, !dbg !4920
  %62 = sub i64 %56, %61, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %62, i64 0, metadata !4838, metadata !711), !dbg !4855
  br i1 %60, label %66, label %63

; <label>:63:                                     ; preds = %55
  %64 = icmp eq i64 %62, 0, !dbg !4921
  br i1 %64, label %65, label %55, !dbg !4922, !llvm.loop !4913

; <label>:65:                                     ; preds = %63
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %54) #12, !dbg !4923
  br label %71

; <label>:66:                                     ; preds = %55
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %54) #12, !dbg !4923
  br label %67

; <label>:67:                                     ; preds = %66, %37
  %68 = call i32 @ferror(%struct._IO_FILE* %0) #12, !dbg !4924
  %69 = icmp ne i32 %68, 0, !dbg !4924
  %70 = sext i1 %69 to i32, !dbg !4926
  br label %71, !dbg !4926

; <label>:71:                                     ; preds = %38, %27, %65, %67, %2, %51
  %72 = phi i32 [ %52, %51 ], [ 0, %2 ], [ %70, %67 ], [ 0, %65 ], [ 0, %27 ], [ 0, %38 ]
  ret i32 %72, !dbg !4927
}

; Function Attrs: nounwind
declare i32 @fgetc(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4928 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4933, metadata !711), !dbg !4936
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4934, metadata !711), !dbg !4937
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !4938
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4935, metadata !711), !dbg !4939
  %3 = icmp eq i8* %2, null, !dbg !4940
  br i1 %3, label %11, label %4, !dbg !4942

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.158, i64 0, i64 0)) #14, !dbg !4943
  %6 = icmp eq i32 %5, 0, !dbg !4948
  br i1 %6, label %10, label %7, !dbg !4949

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.159, i64 0, i64 0)) #14, !dbg !4950
  %9 = icmp eq i32 %8, 0, !dbg !4951
  br i1 %9, label %10, label %11, !dbg !4952

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4934, metadata !711), !dbg !4937
  br label %11, !dbg !4953

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4954
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4955 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4960, metadata !711), !dbg !5034
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5027, metadata !711), !dbg !5037
  %3 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !5038
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4958, metadata !711), !dbg !5039
  %4 = icmp eq i8* %3, null, !dbg !5040
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.162, i64 0, i64 0), i8* %3, !dbg !5042
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4958, metadata !711), !dbg !5039
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5043, !tbaa !718
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4974, metadata !711) #12, !dbg !5044
  %7 = icmp eq i8* %6, null, !dbg !5045
  br i1 %7, label %8, label %123, !dbg !5046

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.163, i64 0, i64 0)) #12, !dbg !5047
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4975, metadata !711) #12, !dbg !5048
  %10 = icmp eq i8* %9, null, !dbg !5049
  br i1 %10, label %14, label %11, !dbg !5051

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5052, !tbaa !768
  %13 = icmp eq i8 %12, 0, !dbg !5053
  br i1 %13, label %14, label %15, !dbg !5054

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5055

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.164, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4975, metadata !711) #12, !dbg !5048
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !5056
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4978, metadata !711) #12, !dbg !5057
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4980, metadata !711) #12, !dbg !5058
  %18 = icmp eq i64 %17, 0, !dbg !5059
  br i1 %18, label %24, label %19, !dbg !5060

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5061
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5061
  %22 = load i8, i8* %21, align 1, !dbg !5061, !tbaa !768
  %23 = icmp ne i8 %22, 47, !dbg !5061
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5062
  %27 = add i64 %17, 14, !dbg !5063
  %28 = add i64 %27, %26, !dbg !5064
  %29 = tail call noalias i8* @malloc(i64 %28) #12, !dbg !5065
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4977, metadata !711) #12, !dbg !5066
  %30 = icmp eq i8* %29, null, !dbg !5067
  br i1 %30, label %121, label %31, !dbg !5067

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #12, !dbg !5068
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5071

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5072, !tbaa !768
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5074
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.165, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !5075
  br label %37, !dbg !5076

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5074
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.165, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !5075
  br label %37, !dbg !5076

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12, !dbg !5077
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4982, metadata !711) #12, !dbg !5078
  %39 = icmp slt i32 %38, 0, !dbg !5079
  br i1 %39, label %119, label %40, !dbg !5080

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.166, i64 0, i64 0)) #12, !dbg !5081
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4983, metadata !711) #12, !dbg !5082
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5083
  br i1 %42, label %43, label %45, !dbg !5084

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #12, !dbg !5085
  br label %119, !dbg !5087

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !5024, metadata !711) #12, !dbg !5088
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5025, metadata !711) #12, !dbg !5089
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5090

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !5091

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5024, metadata !711) #12, !dbg !5088
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5025, metadata !711) #12, !dbg !5089
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #12, !dbg !5091
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #12, !dbg !5092
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5093, metadata !711) #12, !dbg !5098
  %54 = load i8*, i8** %48, align 8, !dbg !5100, !tbaa !1002
  %55 = load i8*, i8** %49, align 8, !dbg !5100, !tbaa !1005
  %56 = icmp ult i8* %54, %55, !dbg !5100
  br i1 %56, label %59, label %57, !dbg !5100, !prof !1006

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !5100
  br label %63, !dbg !5100

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !5100
  store i8* %60, i8** %48, align 8, !dbg !5100, !tbaa !1002
  %61 = load i8, i8* %54, align 1, !dbg !5100, !tbaa !768
  %62 = zext i8 %61 to i32, !dbg !5100
  br label %63, !dbg !5100

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !5100
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !5026, metadata !711) #12, !dbg !5101
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !5102, !llvm.loop !5103

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !5108

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5093, metadata !711) #12, !dbg !5110
  %67 = load i8*, i8** %48, align 8, !dbg !5108, !tbaa !1002
  %68 = load i8*, i8** %49, align 8, !dbg !5108, !tbaa !1005
  %69 = icmp ult i8* %67, %68, !dbg !5108
  br i1 %69, label %72, label %70, !dbg !5108, !prof !1006

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !5108
  br label %76, !dbg !5108

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !5108
  store i8* %73, i8** %48, align 8, !dbg !5108, !tbaa !1002
  %74 = load i8, i8* %67, align 1, !dbg !5108, !tbaa !768
  %75 = zext i8 %74 to i32, !dbg !5108
  br label %76, !dbg !5108

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !5108
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !5026, metadata !711) #12, !dbg !5101
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !5111, !llvm.loop !5112

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #12, !dbg !5115
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.167, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #12, !dbg !5116
  %81 = icmp slt i32 %80, 2, !dbg !5118
  br i1 %81, label %112, label %82, !dbg !5119

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !5120
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5031, metadata !711) #12, !dbg !5121
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !5122
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !5032, metadata !711) #12, !dbg !5123
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5033, metadata !711) #12, !dbg !5124
  %85 = icmp eq i64 %51, 0, !dbg !5125
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !5127

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !5025, metadata !711) #12, !dbg !5089
  %90 = add i64 %87, 2, !dbg !5128
  %91 = call noalias i8* @malloc(i64 %90) #12, !dbg !5130
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !5024, metadata !711) #12, !dbg !5088
  br label %96, !dbg !5131

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !5132
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !5025, metadata !711) #12, !dbg !5089
  %94 = add i64 %93, 1, !dbg !5134
  %95 = call i8* @realloc(i8* %52, i64 %94) #12, !dbg !5135
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !5024, metadata !711) #12, !dbg !5088
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !5024, metadata !711) #12, !dbg !5088
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !5025, metadata !711) #12, !dbg !5089
  %99 = icmp eq i8* %98, null, !dbg !5136
  br i1 %99, label %100, label %102, !dbg !5138

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5025, metadata !711) #12, !dbg !5089
  call void @free(i8* %52) #12, !dbg !5139
  br label %112, !dbg !5141

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !5142
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !5142
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !5143
  %104 = xor i64 %84, -1, !dbg !5144
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5144
  %106 = xor i64 %83, -1, !dbg !5145
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !5145
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !5146, metadata !711) #12, !dbg !5155
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !5154, metadata !711) #12, !dbg !5155
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #12, !dbg !5157
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #12, !dbg !5158
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5146, metadata !711) #12, !dbg !5159
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !5154, metadata !711) #12, !dbg !5159
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #12, !dbg !5161
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #12, !dbg !5162
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !5024, metadata !711) #12, !dbg !5088
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !5025, metadata !711) #12, !dbg !5089
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !5142
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !5142
  br label %50, !dbg !5163, !llvm.loop !5112

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !5142
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !5142
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #12, !dbg !5164
  %116 = icmp eq i64 %113, 0, !dbg !5165
  br i1 %116, label %119, label %117, !dbg !5167

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !5168
  store i8 0, i8* %118, align 1, !dbg !5170, !tbaa !768
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.162, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.162, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.162, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4974, metadata !711) #12, !dbg !5044
  call void @free(i8* %29) #12, !dbg !5171
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.162, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4974, metadata !711) #12, !dbg !5044
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !5172, !tbaa !718
  br label %123, !dbg !5173

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4974, metadata !711) #12, !dbg !5044
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4959, metadata !711), !dbg !5174
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4959, metadata !711), !dbg !5174
  %125 = load i8, i8* %124, align 1, !dbg !5175, !tbaa !768
  %126 = icmp eq i8 %125, 0, !dbg !5177
  br i1 %126, label %152, label %127, !dbg !5178

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !5179

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4959, metadata !711), !dbg !5174
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !5179
  %132 = icmp eq i32 %131, 0, !dbg !5181
  br i1 %132, label %139, label %133, !dbg !5182

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !5183
  br i1 %134, label %135, label %143, !dbg !5184

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !5185
  %137 = load i8, i8* %136, align 1, !dbg !5185, !tbaa !768
  %138 = icmp eq i8 %137, 0, !dbg !5186
  br i1 %138, label %139, label %143, !dbg !5187

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !5188
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !5190
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !5191
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4958, metadata !711), !dbg !5039
  br label %152, !dbg !5192

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !5193
  %145 = add i64 %144, 1, !dbg !5194
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !5195
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4959, metadata !711), !dbg !5174
  %147 = call i64 @strlen(i8* %146) #14, !dbg !5196
  %148 = add i64 %147, 1, !dbg !5197
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !5198
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4959, metadata !711), !dbg !5174
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4959, metadata !711), !dbg !5174
  %150 = load i8, i8* %149, align 1, !dbg !5175, !tbaa !768
  %151 = icmp eq i8 %150, 0, !dbg !5177
  br i1 %151, label %152, label %128, !dbg !5178, !llvm.loop !5199

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4958, metadata !711), !dbg !5039
  %154 = load i8, i8* %153, align 1, !dbg !5201, !tbaa !768
  %155 = icmp eq i8 %154, 0, !dbg !5203
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.168, i64 0, i64 0), i8* %153, !dbg !5204
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4958, metadata !711), !dbg !5039
  ret i8* %156, !dbg !5205
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
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @freadahead(%struct._IO_FILE* nocapture readonly) local_unnamed_addr #9 !dbg !5206 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5251, metadata !711), !dbg !5252
  %2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5253
  %3 = load i8*, i8** %2, align 8, !dbg !5253, !tbaa !1021
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5255
  %5 = load i8*, i8** %4, align 8, !dbg !5255, !tbaa !4578
  %6 = icmp ugt i8* %3, %5, !dbg !5256
  br i1 %6, label %30, label %7, !dbg !5257

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5258
  %9 = bitcast i8** %8 to i64*, !dbg !5258
  %10 = load i64, i64* %9, align 8, !dbg !5258, !tbaa !1005
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5259
  %12 = bitcast i8** %11 to i64*, !dbg !5259
  %13 = load i64, i64* %12, align 8, !dbg !5259, !tbaa !1002
  %14 = sub i64 %10, %13, !dbg !5260
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5261
  %16 = load i32, i32* %15, align 8, !dbg !5261, !tbaa !1157
  %17 = and i32 %16, 256, !dbg !5262
  %18 = icmp eq i32 %17, 0, !dbg !5262
  br i1 %18, label %27, label %19, !dbg !5263

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 11, !dbg !5264
  %21 = bitcast i8** %20 to i64*, !dbg !5264
  %22 = load i64, i64* %21, align 8, !dbg !5264, !tbaa !5265
  %23 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5266
  %24 = bitcast i8** %23 to i64*, !dbg !5266
  %25 = load i64, i64* %24, align 8, !dbg !5266, !tbaa !4654
  %26 = sub i64 %22, %25, !dbg !5267
  br label %27, !dbg !5263

; <label>:27:                                     ; preds = %7, %19
  %28 = phi i64 [ %26, %19 ], [ 0, %7 ], !dbg !5263
  %29 = add nsw i64 %14, %28, !dbg !5268
  br label %30, !dbg !5269

; <label>:30:                                     ; preds = %1, %27
  %31 = phi i64 [ %29, %27 ], [ 0, %1 ]
  ret i64 %31, !dbg !5270
}

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !132, !209, !215, !223, !642, !645, !648, !230, !237, !655, !288, !663, !674, !676, !678, !680, !682, !684, !687, !689, !692, !694, !696, !297, !698}
!llvm.ident = !{!700, !700, !700, !700, !700, !700, !700, !700, !700, !700, !700, !700, !700, !700, !700, !700, !700, !700, !700, !700, !700, !700, !700, !700, !700, !700}
!llvm.module.flags = !{!701, !702, !703, !704, !705}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "operating_mode", scope: !2, file: !3, line: 87, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !39, globals: !48)
!3 = !DIFile(filename: "src/cut.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !10, !16, !30}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "operating_mode", file: !3, line: 76, size: 32, elements: !6)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "undefined_mode", value: 0)
!8 = !DIEnumerator(name: "byte_mode", value: 1)
!9 = !DIEnumerator(name: "field_mode", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 33, size: 32, elements: !12)
!11 = !DIFile(filename: "src/set-fields.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!12 = !{!13, !14, !15}
!13 = !DIEnumerator(name: "SETFLD_ALLOW_DASH", value: 1)
!14 = !DIEnumerator(name: "SETFLD_COMPLEMENT", value: 2)
!15 = !DIEnumerator(name: "SETFLD_ERRMSG_USE_POS", value: 4)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !17, line: 32, size: 32, elements: !18)
!17 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!19 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!20 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!21 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!22 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!23 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!24 = !DIEnumerator(name: "c_quoting_style", value: 5)
!25 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!26 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!27 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!28 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!29 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 45, size: 32, elements: !32)
!31 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!32 = !{!33, !34, !35, !36, !37, !38}
!33 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!34 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!35 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!36 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!37 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!38 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!39 = !{!40, !42, !43, !44, !45}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 62, baseType: !47)
!46 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!47 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!48 = !{!49, !0, !67, !69, !71, !73, !75, !77, !79, !81, !103, !117, !119, !126, !128}
!49 = !DIGlobalVariableExpression(var: !50)
!50 = distinct !DIGlobalVariable(name: "dummy", scope: !51, file: !3, line: 586, type: !64, isLocal: true, isDefinition: true)
!51 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 480, type: !52, isLocal: false, isDefinition: true, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !56)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !54, !55}
!54 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!56 = !{!57, !58, !59, !60, !62, !63}
!57 = !DILocalVariable(name: "argc", arg: 1, scope: !51, file: !3, line: 480, type: !54)
!58 = !DILocalVariable(name: "argv", arg: 2, scope: !51, file: !3, line: 480, type: !55)
!59 = !DILocalVariable(name: "optc", scope: !51, file: !3, line: 482, type: !54)
!60 = !DILocalVariable(name: "ok", scope: !51, file: !3, line: 483, type: !61)
!61 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!62 = !DILocalVariable(name: "delim_specified", scope: !51, file: !3, line: 484, type: !61)
!63 = !DILocalVariable(name: "spec_list_string", scope: !51, file: !3, line: 485, type: !40)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 16, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 2)
!67 = !DIGlobalVariableExpression(var: !68)
!68 = distinct !DIGlobalVariable(name: "suppress_non_delimited", scope: !2, file: !3, line: 92, type: !61, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70)
!70 = distinct !DIGlobalVariable(name: "complement", scope: !2, file: !3, line: 96, type: !61, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72)
!72 = distinct !DIGlobalVariable(name: "delim", scope: !2, file: !3, line: 99, type: !44, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74)
!74 = distinct !DIGlobalVariable(name: "output_delimiter_specified", scope: !2, file: !3, line: 105, type: !61, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76)
!76 = distinct !DIGlobalVariable(name: "output_delimiter_length", scope: !2, file: !3, line: 108, type: !45, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78)
!78 = distinct !DIGlobalVariable(name: "output_delimiter_string", scope: !2, file: !3, line: 112, type: !40, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80)
!80 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 115, type: !61, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82)
!82 = distinct !DIGlobalVariable(name: "infomap", scope: !83, file: !84, line: 632, type: !100, isLocal: true, isDefinition: true)
!83 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !84, file: !84, line: 630, type: !85, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !89)
!84 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!85 = !DISubroutineType(types: !86)
!86 = !{null, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!89 = !{!90, !91, !92, !99}
!90 = !DILocalVariable(name: "program", arg: 1, scope: !83, file: !84, line: 630, type: !87)
!91 = !DILocalVariable(name: "node", scope: !83, file: !84, line: 642, type: !87)
!92 = !DILocalVariable(name: "map_prog", scope: !83, file: !84, line: 643, type: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !83, file: !84, line: 632, size: 128, elements: !96)
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !95, file: !84, line: 632, baseType: !87, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !95, file: !84, line: 632, baseType: !87, size: 64, offset: 64)
!99 = !DILocalVariable(name: "lc_messages", scope: !83, file: !84, line: 655, type: !87)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 896, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 7)
!103 = !DIGlobalVariableExpression(var: !104)
!104 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 125, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 2816, elements: !115)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !108, line: 50, size: 256, elements: !109)
!108 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !{!110, !111, !112, !114}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !107, file: !108, line: 52, baseType: !87, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !107, file: !108, line: 55, baseType: !54, size: 32, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !107, file: !108, line: 56, baseType: !113, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !107, file: !108, line: 57, baseType: !54, size: 32, offset: 192)
!115 = !{!116}
!116 = !DISubrange(count: 11)
!117 = !DIGlobalVariableExpression(var: !118)
!118 = distinct !DIGlobalVariable(name: "line_delim", scope: !2, file: !3, line: 102, type: !44, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120)
!120 = distinct !DIGlobalVariable(name: "current_rp", scope: !2, file: !3, line: 62, type: !121, isLocal: true, isDefinition: true)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "field_range_pair", file: !11, line: 20, size: 128, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !122, file: !11, line: 22, baseType: !45, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !122, file: !11, line: 23, baseType: !45, size: 64, offset: 64)
!126 = !DIGlobalVariableExpression(var: !127)
!127 = distinct !DIGlobalVariable(name: "field_1_buffer", scope: !2, file: !3, line: 71, type: !40, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129)
!129 = distinct !DIGlobalVariable(name: "field_1_bufsize", scope: !2, file: !3, line: 74, type: !45, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131)
!131 = distinct !DIGlobalVariable(name: "n_frp", scope: !132, file: !133, line: 31, type: !45, isLocal: false, isDefinition: true)
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !134, retainedTypes: !163, globals: !172)
!133 = !DIFile(filename: "src/set-fields.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!134 = !{!10, !135, !150}
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !136, line: 46, size: 32, elements: !137)
!136 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!138 = !DIEnumerator(name: "_ISupper", value: 256)
!139 = !DIEnumerator(name: "_ISlower", value: 512)
!140 = !DIEnumerator(name: "_ISalpha", value: 1024)
!141 = !DIEnumerator(name: "_ISdigit", value: 2048)
!142 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!143 = !DIEnumerator(name: "_ISspace", value: 8192)
!144 = !DIEnumerator(name: "_ISprint", value: 16384)
!145 = !DIEnumerator(name: "_ISgraph", value: 32768)
!146 = !DIEnumerator(name: "_ISblank", value: 1)
!147 = !DIEnumerator(name: "_IScntrl", value: 2)
!148 = !DIEnumerator(name: "_ISpunct", value: 4)
!149 = !DIEnumerator(name: "_ISalnum", value: 8)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !152, file: !151, line: 192, size: 32, elements: !161)
!151 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!152 = distinct !DISubprogram(name: "x2nrealloc", scope: !151, file: !151, line: 180, type: !153, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !156)
!153 = !DISubroutineType(types: !154)
!154 = !{!42, !42, !155, !45}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!156 = !{!157, !158, !159, !160}
!157 = !DILocalVariable(name: "p", arg: 1, scope: !152, file: !151, line: 180, type: !42)
!158 = !DILocalVariable(name: "pn", arg: 2, scope: !152, file: !151, line: 180, type: !155)
!159 = !DILocalVariable(name: "s", arg: 3, scope: !152, file: !151, line: 180, type: !45)
!160 = !DILocalVariable(name: "n", scope: !152, file: !151, line: 182, type: !45)
!161 = !{!162}
!162 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!163 = !{!54, !164, !165, !155, !42, !45, !166}
!164 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!165 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "field_range_pair", file: !11, line: 20, size: 128, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !168, file: !11, line: 22, baseType: !45, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !168, file: !11, line: 23, baseType: !45, size: 64, offset: 64)
!172 = !{!173, !202, !130, !205}
!173 = !DIGlobalVariableExpression(var: !174)
!174 = distinct !DIGlobalVariable(name: "num_start", scope: !175, file: !133, line: 241, type: !87, isLocal: true, isDefinition: true)
!175 = distinct !DISubprogram(name: "set_fields", scope: !133, file: !133, line: 139, type: !176, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !178)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !87, !165}
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !196, !197}
!179 = !DILocalVariable(name: "fieldstr", arg: 1, scope: !175, file: !133, line: 139, type: !87)
!180 = !DILocalVariable(name: "options", arg: 2, scope: !175, file: !133, line: 139, type: !165)
!181 = !DILocalVariable(name: "initial", scope: !175, file: !133, line: 141, type: !45)
!182 = !DILocalVariable(name: "value", scope: !175, file: !133, line: 142, type: !45)
!183 = !DILocalVariable(name: "lhs_specified", scope: !175, file: !133, line: 143, type: !61)
!184 = !DILocalVariable(name: "rhs_specified", scope: !175, file: !133, line: 144, type: !61)
!185 = !DILocalVariable(name: "dash_found", scope: !175, file: !133, line: 145, type: !61)
!186 = !DILocalVariable(name: "i", scope: !175, file: !133, line: 147, type: !45)
!187 = !DILocalVariable(name: "in_digits", scope: !175, file: !133, line: 148, type: !61)
!188 = !DILocalVariable(name: "len", scope: !189, file: !133, line: 258, type: !45)
!189 = distinct !DILexicalBlock(scope: !190, file: !133, line: 254, column: 13)
!190 = distinct !DILexicalBlock(scope: !191, file: !133, line: 252, column: 15)
!191 = distinct !DILexicalBlock(scope: !192, file: !133, line: 238, column: 9)
!192 = distinct !DILexicalBlock(scope: !193, file: !133, line: 237, column: 16)
!193 = distinct !DILexicalBlock(scope: !194, file: !133, line: 183, column: 16)
!194 = distinct !DILexicalBlock(scope: !195, file: !133, line: 163, column: 11)
!195 = distinct !DILexicalBlock(scope: !175, file: !133, line: 162, column: 5)
!196 = !DILocalVariable(name: "bad_num", scope: !189, file: !133, line: 259, type: !40)
!197 = !DILocalVariable(name: "j", scope: !198, file: !133, line: 290, type: !45)
!198 = distinct !DILexicalBlock(scope: !199, file: !133, line: 290, column: 7)
!199 = distinct !DILexicalBlock(scope: !200, file: !133, line: 289, column: 5)
!200 = distinct !DILexicalBlock(scope: !201, file: !133, line: 288, column: 3)
!201 = distinct !DILexicalBlock(scope: !175, file: !133, line: 288, column: 3)
!202 = !DIGlobalVariableExpression(var: !203)
!203 = distinct !DIGlobalVariable(name: "frp", scope: !132, file: !133, line: 28, type: !204, isLocal: false, isDefinition: true)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!205 = !DIGlobalVariableExpression(var: !206)
!206 = distinct !DIGlobalVariable(name: "n_frp_allocated", scope: !132, file: !133, line: 34, type: !45, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208)
!208 = distinct !DIGlobalVariable(name: "Version", scope: !209, file: !210, line: 2, type: !87, isLocal: false, isDefinition: true)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, globals: !212)
!210 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!211 = !{}
!212 = !{!207}
!213 = !DIGlobalVariableExpression(var: !214)
!214 = distinct !DIGlobalVariable(name: "file_name", scope: !215, file: !220, line: 36, type: !87, isLocal: true, isDefinition: true)
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, globals: !217)
!216 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!217 = !{!213, !218}
!218 = !DIGlobalVariableExpression(var: !219)
!219 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !215, file: !220, line: 46, type: !61, isLocal: true, isDefinition: true)
!220 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!221 = !DIGlobalVariableExpression(var: !222)
!222 = distinct !DIGlobalVariable(name: "exit_failure", scope: !223, file: !226, line: 24, type: !227, isLocal: false, isDefinition: true)
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !224, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, globals: !225)
!224 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!225 = !{!221}
!226 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!227 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !54)
!228 = !DIGlobalVariableExpression(var: !229)
!229 = distinct !DIGlobalVariable(name: "program_name", scope: !230, file: !234, line: 33, type: !87, isLocal: false, isDefinition: true)
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !232, globals: !233)
!231 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!232 = !{!42, !40}
!233 = !{!228}
!234 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!235 = !DIGlobalVariableExpression(var: !236)
!236 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !237, file: !249, line: 77, type: !284, isLocal: false, isDefinition: true)
!237 = distinct !DICompileUnit(language: DW_LANG_C99, file: !238, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !239, retainedTypes: !245, globals: !246)
!238 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!239 = !{!16, !240, !135}
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !17, line: 242, size: 32, elements: !241)
!241 = !{!242, !243, !244}
!242 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!243 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!244 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!245 = !{!54, !164, !45, !40}
!246 = !{!235, !247, !254, !266, !268, !273, !280, !282}
!247 = !DIGlobalVariableExpression(var: !248)
!248 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !237, file: !249, line: 93, type: !250, isLocal: false, isDefinition: true)
!249 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 320, elements: !252)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!252 = !{!253}
!253 = !DISubrange(count: 10)
!254 = !DIGlobalVariableExpression(var: !255)
!255 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !237, file: !249, line: 1043, type: !256, isLocal: false, isDefinition: true)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !249, line: 57, size: 448, elements: !257)
!257 = !{!258, !259, !260, !264, !265}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !256, file: !249, line: 60, baseType: !16, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !256, file: !249, line: 63, baseType: !54, size: 32, offset: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !256, file: !249, line: 67, baseType: !261, size: 256, offset: 64)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 256, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 8)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !256, file: !249, line: 70, baseType: !87, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !256, file: !249, line: 73, baseType: !87, size: 64, offset: 384)
!266 = !DIGlobalVariableExpression(var: !267)
!267 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !237, file: !249, line: 108, type: !256, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269)
!269 = distinct !DIGlobalVariable(name: "slot0", scope: !237, file: !249, line: 834, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2048, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 256)
!273 = !DIGlobalVariableExpression(var: !274)
!274 = distinct !DIGlobalVariable(name: "slotvec", scope: !237, file: !249, line: 837, type: !275, isLocal: true, isDefinition: true)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !249, line: 826, size: 128, elements: !277)
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !276, file: !249, line: 828, baseType: !45, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !276, file: !249, line: 829, baseType: !40, size: 64, offset: 64)
!280 = !DIGlobalVariableExpression(var: !281)
!281 = distinct !DIGlobalVariable(name: "nslots", scope: !237, file: !249, line: 835, type: !54, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283)
!283 = distinct !DIGlobalVariable(name: "slotvec0", scope: !237, file: !249, line: 836, type: !276, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 704, elements: !115)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!286 = !DIGlobalVariableExpression(var: !287)
!287 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !288, file: !291, line: 26, type: !292, isLocal: false, isDefinition: true)
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, globals: !290)
!289 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!290 = !{!286}
!291 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 376, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 47)
!295 = !DIGlobalVariableExpression(var: !296)
!296 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !297, file: !640, line: 120, type: !641, isLocal: true, isDefinition: true)
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !299, retainedTypes: !638, globals: !639)
!298 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!299 = !{!300}
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !301, line: 41, size: 32, elements: !302)
!301 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!302 = !{!303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!303 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!304 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!305 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!306 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!307 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!308 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!309 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!310 = !DIEnumerator(name: "DAY_1", value: 131079)
!311 = !DIEnumerator(name: "DAY_2", value: 131080)
!312 = !DIEnumerator(name: "DAY_3", value: 131081)
!313 = !DIEnumerator(name: "DAY_4", value: 131082)
!314 = !DIEnumerator(name: "DAY_5", value: 131083)
!315 = !DIEnumerator(name: "DAY_6", value: 131084)
!316 = !DIEnumerator(name: "DAY_7", value: 131085)
!317 = !DIEnumerator(name: "ABMON_1", value: 131086)
!318 = !DIEnumerator(name: "ABMON_2", value: 131087)
!319 = !DIEnumerator(name: "ABMON_3", value: 131088)
!320 = !DIEnumerator(name: "ABMON_4", value: 131089)
!321 = !DIEnumerator(name: "ABMON_5", value: 131090)
!322 = !DIEnumerator(name: "ABMON_6", value: 131091)
!323 = !DIEnumerator(name: "ABMON_7", value: 131092)
!324 = !DIEnumerator(name: "ABMON_8", value: 131093)
!325 = !DIEnumerator(name: "ABMON_9", value: 131094)
!326 = !DIEnumerator(name: "ABMON_10", value: 131095)
!327 = !DIEnumerator(name: "ABMON_11", value: 131096)
!328 = !DIEnumerator(name: "ABMON_12", value: 131097)
!329 = !DIEnumerator(name: "MON_1", value: 131098)
!330 = !DIEnumerator(name: "MON_2", value: 131099)
!331 = !DIEnumerator(name: "MON_3", value: 131100)
!332 = !DIEnumerator(name: "MON_4", value: 131101)
!333 = !DIEnumerator(name: "MON_5", value: 131102)
!334 = !DIEnumerator(name: "MON_6", value: 131103)
!335 = !DIEnumerator(name: "MON_7", value: 131104)
!336 = !DIEnumerator(name: "MON_8", value: 131105)
!337 = !DIEnumerator(name: "MON_9", value: 131106)
!338 = !DIEnumerator(name: "MON_10", value: 131107)
!339 = !DIEnumerator(name: "MON_11", value: 131108)
!340 = !DIEnumerator(name: "MON_12", value: 131109)
!341 = !DIEnumerator(name: "AM_STR", value: 131110)
!342 = !DIEnumerator(name: "PM_STR", value: 131111)
!343 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!344 = !DIEnumerator(name: "D_FMT", value: 131113)
!345 = !DIEnumerator(name: "T_FMT", value: 131114)
!346 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!347 = !DIEnumerator(name: "ERA", value: 131116)
!348 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!349 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!350 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!351 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!352 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!353 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!354 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!355 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!356 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!357 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!358 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!359 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!360 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!361 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!362 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!363 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!364 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!365 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!366 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!367 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!368 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!369 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!370 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!371 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!372 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!373 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!374 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!375 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!376 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!377 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!378 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!379 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!380 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!381 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!382 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!383 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!384 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!385 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!386 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!387 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!388 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!389 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!390 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!391 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!392 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!393 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!394 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!395 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!396 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!397 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!398 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!399 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!400 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!401 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!402 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!403 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!404 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!405 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!406 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!407 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!408 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!409 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!410 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!411 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!412 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!413 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!414 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!415 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!416 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!417 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!418 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!419 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!420 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!421 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!422 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!423 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!424 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!425 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!426 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!427 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!428 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!429 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!430 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!431 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!432 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!433 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!434 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!435 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!436 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!437 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!438 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!439 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!440 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!441 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!442 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!443 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!444 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!445 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!446 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!447 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!448 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!449 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!450 = !DIEnumerator(name: "CODESET", value: 14)
!451 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!452 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!453 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!454 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!455 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!458 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!459 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!460 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!461 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!462 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!463 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!464 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!465 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!466 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!467 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!468 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!469 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!470 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!477 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!478 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!479 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!480 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!481 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!482 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!483 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!484 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!485 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!486 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!487 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!488 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!489 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!490 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!491 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!492 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!493 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!494 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!495 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!496 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!497 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!498 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!499 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!500 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!501 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!502 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!503 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!504 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!505 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!506 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!507 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!508 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!509 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!510 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!511 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!512 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!513 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!514 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!515 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!516 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!517 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!518 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!519 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!520 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!521 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!522 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!523 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!524 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!525 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!526 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!527 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!528 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!529 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!530 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!531 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!532 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!533 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!534 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!535 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!536 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!537 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!538 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!539 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!540 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!541 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!542 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!543 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!544 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!545 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!546 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!547 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!548 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!549 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!550 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!551 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!552 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!553 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!554 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!555 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!556 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!557 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!558 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!559 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!560 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!561 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!562 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!563 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!564 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!565 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!566 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!567 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!568 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!569 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!570 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!571 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!572 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!573 = !DIEnumerator(name: "THOUSEP", value: 65537)
!574 = !DIEnumerator(name: "__GROUPING", value: 65538)
!575 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!576 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!577 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!578 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!579 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!580 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!581 = !DIEnumerator(name: "__YESSTR", value: 327682)
!582 = !DIEnumerator(name: "__NOSTR", value: 327683)
!583 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!584 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!585 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!586 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!587 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!588 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!589 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!590 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!591 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!592 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!593 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!594 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!595 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!596 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!597 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!598 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!599 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!600 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!601 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!602 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!603 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!604 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!605 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!606 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!607 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!608 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!609 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!610 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!611 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!612 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!613 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!614 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!615 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!616 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!617 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!618 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!619 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!620 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!621 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!622 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!623 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!624 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!625 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!626 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!627 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!628 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!629 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!630 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!631 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!632 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!633 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!634 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!635 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!636 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!637 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!638 = !{!42, !40, !43}
!639 = !{!295}
!640 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!641 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !87)
!642 = distinct !DICompileUnit(language: DW_LANG_C99, file: !643, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !644)
!643 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!644 = !{!30}
!645 = distinct !DICompileUnit(language: DW_LANG_C99, file: !646, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !647)
!646 = !DIFile(filename: "./lib/getndelim2.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!647 = !{!43}
!648 = distinct !DICompileUnit(language: DW_LANG_C99, file: !649, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !650)
!649 = !DIFile(filename: "./lib/memchr2.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!650 = !{!44, !651, !42, !653}
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !652, line: 100, baseType: !47)
!652 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!655 = distinct !DICompileUnit(language: DW_LANG_C99, file: !656, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !657, retainedTypes: !662)
!656 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!657 = !{!658}
!658 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !659, line: 41, size: 32, elements: !660)
!659 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!660 = !{!661}
!661 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!662 = !{!42}
!663 = distinct !DICompileUnit(language: DW_LANG_C99, file: !664, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !665, retainedTypes: !673)
!664 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!665 = !{!666}
!666 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !667, file: !151, line: 192, size: 32, elements: !161)
!667 = distinct !DISubprogram(name: "x2nrealloc", scope: !151, file: !151, line: 180, type: !153, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !668)
!668 = !{!669, !670, !671, !672}
!669 = !DILocalVariable(name: "p", arg: 1, scope: !667, file: !151, line: 180, type: !42)
!670 = !DILocalVariable(name: "pn", arg: 2, scope: !667, file: !151, line: 180, type: !155)
!671 = !DILocalVariable(name: "s", arg: 3, scope: !667, file: !151, line: 180, type: !45)
!672 = !DILocalVariable(name: "n", scope: !667, file: !151, line: 182, type: !45)
!673 = !{!45, !40, !42}
!674 = distinct !DICompileUnit(language: DW_LANG_C99, file: !675, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211)
!675 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!676 = distinct !DICompileUnit(language: DW_LANG_C99, file: !677, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211)
!677 = !DIFile(filename: "./lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!678 = distinct !DICompileUnit(language: DW_LANG_C99, file: !679, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !662)
!679 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!680 = distinct !DICompileUnit(language: DW_LANG_C99, file: !681, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211)
!681 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!682 = distinct !DICompileUnit(language: DW_LANG_C99, file: !683, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !662)
!683 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!684 = distinct !DICompileUnit(language: DW_LANG_C99, file: !685, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !686)
!685 = !DIFile(filename: "./lib/freadptr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!686 = !{!87}
!687 = distinct !DICompileUnit(language: DW_LANG_C99, file: !688, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !662)
!688 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!689 = distinct !DICompileUnit(language: DW_LANG_C99, file: !690, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !691)
!690 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!691 = !{!45}
!692 = distinct !DICompileUnit(language: DW_LANG_C99, file: !693, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211)
!693 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!694 = distinct !DICompileUnit(language: DW_LANG_C99, file: !695, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !662)
!695 = !DIFile(filename: "./lib/freadseek.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!696 = distinct !DICompileUnit(language: DW_LANG_C99, file: !697, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211)
!697 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!698 = distinct !DICompileUnit(language: DW_LANG_C99, file: !699, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211)
!699 = !DIFile(filename: "./lib/freadahead.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!700 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!701 = !{i32 2, !"Dwarf Version", i32 4}
!702 = !{i32 2, !"Debug Info Version", i32 3}
!703 = !{i32 1, !"wchar_size", i32 4}
!704 = !{i32 7, !"PIC Level", i32 2}
!705 = !{i32 7, !"PIE Level", i32 2}
!706 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 141, type: !707, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !709)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !54}
!709 = !{!710}
!710 = !DILocalVariable(name: "status", arg: 1, scope: !706, file: !3, line: 141, type: !54)
!711 = !DIExpression()
!712 = !DILocation(line: 141, column: 12, scope: !706)
!713 = !DILocation(line: 143, column: 14, scope: !714)
!714 = distinct !DILexicalBlock(scope: !706, file: !3, line: 143, column: 7)
!715 = !DILocation(line: 143, column: 7, scope: !706)
!716 = !DILocation(line: 144, column: 5, scope: !717)
!717 = distinct !DILexicalBlock(scope: !714, file: !3, line: 144, column: 5)
!718 = !{!719, !719, i64 0}
!719 = !{!"any pointer", !720, i64 0}
!720 = !{!"omnipotent char", !721, i64 0}
!721 = !{!"Simple C/C++ TBAA"}
!722 = !DILocation(line: 147, column: 7, scope: !723)
!723 = distinct !DILexicalBlock(scope: !714, file: !3, line: 146, column: 5)
!724 = !DILocation(line: 151, column: 7, scope: !723)
!725 = !DILocation(line: 580, column: 3, scope: !726, inlinedAt: !729)
!726 = distinct !DISubprogram(name: "emit_stdin_note", scope: !84, file: !84, line: 578, type: !727, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !211)
!727 = !DISubroutineType(types: !728)
!728 = !{null}
!729 = distinct !DILocation(line: 155, column: 7, scope: !723)
!730 = !DILocation(line: 587, column: 3, scope: !731, inlinedAt: !732)
!731 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !84, file: !84, line: 585, type: !727, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !211)
!732 = distinct !DILocation(line: 156, column: 7, scope: !723)
!733 = !DILocation(line: 158, column: 7, scope: !723)
!734 = !DILocation(line: 163, column: 7, scope: !723)
!735 = !DILocation(line: 169, column: 7, scope: !723)
!736 = !DILocation(line: 173, column: 7, scope: !723)
!737 = !DILocation(line: 178, column: 7, scope: !723)
!738 = !DILocation(line: 181, column: 7, scope: !723)
!739 = !DILocation(line: 182, column: 7, scope: !723)
!740 = !DILocation(line: 183, column: 7, scope: !723)
!741 = !DILocation(line: 189, column: 7, scope: !723)
!742 = !DILocation(line: 642, column: 15, scope: !83, inlinedAt: !743)
!743 = distinct !DILocation(line: 197, column: 7, scope: !723)
!744 = !DILocation(line: 651, column: 3, scope: !83, inlinedAt: !743)
!745 = !DILocation(line: 655, column: 29, scope: !83, inlinedAt: !743)
!746 = !DILocation(line: 655, column: 15, scope: !83, inlinedAt: !743)
!747 = !DILocation(line: 656, column: 7, scope: !748, inlinedAt: !743)
!748 = distinct !DILexicalBlock(scope: !83, file: !84, line: 656, column: 7)
!749 = !DILocation(line: 656, column: 19, scope: !748, inlinedAt: !743)
!750 = !DILocation(line: 656, column: 22, scope: !748, inlinedAt: !743)
!751 = !DILocation(line: 656, column: 7, scope: !83, inlinedAt: !743)
!752 = !DILocation(line: 662, column: 7, scope: !753, inlinedAt: !743)
!753 = distinct !DILexicalBlock(scope: !748, file: !84, line: 657, column: 5)
!754 = !DILocation(line: 664, column: 5, scope: !753, inlinedAt: !743)
!755 = !DILocation(line: 665, column: 3, scope: !83, inlinedAt: !743)
!756 = !DILocation(line: 667, column: 3, scope: !83, inlinedAt: !743)
!757 = !DILocation(line: 199, column: 3, scope: !706)
!758 = !DILocation(line: 480, column: 11, scope: !51)
!759 = !DILocation(line: 480, column: 24, scope: !51)
!760 = !DILocation(line: 484, column: 8, scope: !51)
!761 = !DILocation(line: 488, column: 21, scope: !51)
!762 = !DILocation(line: 488, column: 3, scope: !51)
!763 = !DILocation(line: 489, column: 3, scope: !51)
!764 = !DILocation(line: 490, column: 3, scope: !51)
!765 = !DILocation(line: 491, column: 3, scope: !51)
!766 = !DILocation(line: 493, column: 3, scope: !51)
!767 = !DILocation(line: 495, column: 18, scope: !51)
!768 = !{!720, !720, i64 0}
!769 = !DILocation(line: 500, column: 9, scope: !51)
!770 = !DILocation(line: 503, column: 3, scope: !51)
!771 = !DILocation(line: 485, column: 9, scope: !51)
!772 = !DILocation(line: 503, column: 18, scope: !51)
!773 = !DILocation(line: 482, column: 7, scope: !51)
!774 = distinct !{!774, !770, !775}
!775 = !DILocation(line: 564, column: 5, scope: !51)
!776 = !DILocation(line: 510, column: 15, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 510, column: 15)
!778 = distinct !DILexicalBlock(scope: !779, file: !3, line: 506, column: 9)
!779 = distinct !DILexicalBlock(scope: !51, file: !3, line: 504, column: 5)
!780 = !DILocation(line: 510, column: 30, scope: !777)
!781 = !DILocation(line: 510, column: 15, scope: !778)
!782 = !DILocation(line: 511, column: 13, scope: !783)
!783 = distinct !DILexicalBlock(scope: !777, file: !3, line: 511, column: 13)
!784 = !DILocation(line: 512, column: 26, scope: !778)
!785 = !DILocation(line: 513, column: 30, scope: !778)
!786 = !DILocation(line: 514, column: 11, scope: !778)
!787 = !DILocation(line: 518, column: 15, scope: !788)
!788 = distinct !DILexicalBlock(scope: !778, file: !3, line: 518, column: 15)
!789 = !DILocation(line: 518, column: 30, scope: !788)
!790 = !DILocation(line: 518, column: 15, scope: !778)
!791 = !DILocation(line: 519, column: 13, scope: !792)
!792 = distinct !DILexicalBlock(scope: !788, file: !3, line: 519, column: 13)
!793 = !DILocation(line: 520, column: 26, scope: !778)
!794 = !DILocation(line: 521, column: 30, scope: !778)
!795 = !DILocation(line: 522, column: 11, scope: !778)
!796 = !DILocation(line: 527, column: 15, scope: !797)
!797 = distinct !DILexicalBlock(scope: !778, file: !3, line: 527, column: 15)
!798 = !DILocation(line: 527, column: 25, scope: !797)
!799 = !DILocation(line: 527, column: 33, scope: !797)
!800 = !DILocation(line: 527, column: 36, scope: !797)
!801 = !DILocation(line: 527, column: 46, scope: !797)
!802 = !DILocation(line: 527, column: 15, scope: !778)
!803 = !DILocation(line: 528, column: 13, scope: !804)
!804 = distinct !DILexicalBlock(scope: !797, file: !3, line: 528, column: 13)
!805 = !DILocation(line: 529, column: 17, scope: !778)
!806 = !DILocation(line: 531, column: 11, scope: !778)
!807 = !DILocation(line: 537, column: 38, scope: !778)
!808 = !DILocation(line: 537, column: 48, scope: !778)
!809 = !DILocation(line: 538, column: 44, scope: !778)
!810 = !DILocation(line: 537, column: 35, scope: !778)
!811 = !{!812, !812, i64 0}
!812 = !{!"long", !720, i64 0}
!813 = !DILocation(line: 539, column: 37, scope: !778)
!814 = !DILocation(line: 539, column: 35, scope: !778)
!815 = !DILocation(line: 540, column: 11, scope: !778)
!816 = !DILocation(line: 547, column: 11, scope: !778)
!817 = !DILocation(line: 551, column: 11, scope: !778)
!818 = !DILocation(line: 555, column: 11, scope: !778)
!819 = !DILocation(line: 557, column: 9, scope: !778)
!820 = !DILocation(line: 559, column: 9, scope: !778)
!821 = !DILocation(line: 562, column: 11, scope: !778)
!822 = !DILocation(line: 566, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !51, file: !3, line: 566, column: 7)
!824 = !DILocation(line: 566, column: 22, scope: !823)
!825 = !DILocation(line: 566, column: 7, scope: !51)
!826 = !DILocation(line: 567, column: 5, scope: !827)
!827 = distinct !DILexicalBlock(scope: !823, file: !3, line: 567, column: 5)
!828 = !DILocation(line: 569, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !51, file: !3, line: 569, column: 7)
!830 = !DILocation(line: 569, column: 41, scope: !829)
!831 = !DILocation(line: 569, column: 23, scope: !829)
!832 = !DILocation(line: 570, column: 5, scope: !833)
!833 = distinct !DILexicalBlock(scope: !829, file: !3, line: 570, column: 5)
!834 = !DILocation(line: 573, column: 30, scope: !835)
!835 = distinct !DILexicalBlock(scope: !51, file: !3, line: 573, column: 7)
!836 = !DILocation(line: 574, column: 5, scope: !837)
!837 = distinct !DILexicalBlock(scope: !835, file: !3, line: 574, column: 5)
!838 = !DILocation(line: 578, column: 33, scope: !51)
!839 = !DILocation(line: 578, column: 17, scope: !51)
!840 = !DILocation(line: 579, column: 18, scope: !51)
!841 = !DILocation(line: 579, column: 15, scope: !51)
!842 = !DILocation(line: 577, column: 3, scope: !51)
!843 = !DILocation(line: 581, column: 7, scope: !51)
!844 = !DILocation(line: 582, column: 11, scope: !845)
!845 = distinct !DILexicalBlock(scope: !51, file: !3, line: 581, column: 7)
!846 = !DILocation(line: 582, column: 5, scope: !845)
!847 = !DILocation(line: 584, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !51, file: !3, line: 584, column: 7)
!849 = !DILocation(line: 584, column: 31, scope: !848)
!850 = !DILocation(line: 584, column: 7, scope: !51)
!851 = !DILocation(line: 587, column: 18, scope: !852)
!852 = distinct !DILexicalBlock(scope: !848, file: !3, line: 585, column: 5)
!853 = !DILocation(line: 587, column: 16, scope: !852)
!854 = !DILocation(line: 588, column: 16, scope: !852)
!855 = !DILocation(line: 589, column: 31, scope: !852)
!856 = !DILocation(line: 590, column: 31, scope: !852)
!857 = !DILocation(line: 591, column: 5, scope: !852)
!858 = !DILocation(line: 593, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !51, file: !3, line: 593, column: 7)
!860 = !{!861, !861, i64 0}
!861 = !{!"int", !720, i64 0}
!862 = !DILocation(line: 593, column: 14, scope: !859)
!863 = !DILocation(line: 593, column: 7, scope: !51)
!864 = !DILocation(line: 594, column: 10, scope: !859)
!865 = !DILocation(line: 594, column: 8, scope: !859)
!866 = !DILocation(line: 483, column: 8, scope: !51)
!867 = !DILocation(line: 594, column: 5, scope: !859)
!868 = !DILocation(line: 596, column: 28, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 596, column: 5)
!870 = distinct !DILexicalBlock(scope: !859, file: !3, line: 596, column: 5)
!871 = !DILocation(line: 596, column: 5, scope: !870)
!872 = !DILocation(line: 597, column: 23, scope: !869)
!873 = !DILocation(line: 597, column: 13, scope: !869)
!874 = !DILocation(line: 597, column: 10, scope: !869)
!875 = !DILocation(line: 596, column: 42, scope: !869)
!876 = distinct !{!876, !871, !877}
!877 = !DILocation(line: 597, column: 35, scope: !870)
!878 = !DILocation(line: 600, column: 23, scope: !879)
!879 = distinct !DILexicalBlock(scope: !51, file: !3, line: 600, column: 7)
!880 = !DILocation(line: 600, column: 34, scope: !879)
!881 = !DILocation(line: 600, column: 26, scope: !879)
!882 = !DILocation(line: 600, column: 41, scope: !879)
!883 = !DILocation(line: 600, column: 7, scope: !51)
!884 = !DILocation(line: 602, column: 17, scope: !885)
!885 = distinct !DILexicalBlock(scope: !879, file: !3, line: 601, column: 5)
!886 = !DILocation(line: 602, column: 7, scope: !885)
!887 = !DILocation(line: 604, column: 5, scope: !885)
!888 = !DILocation(line: 608, column: 10, scope: !51)
!889 = !DILocation(line: 609, column: 1, scope: !51)
!890 = distinct !DISubprogram(name: "cut_file", scope: !3, file: !3, line: 441, type: !891, isLocal: true, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !893)
!891 = !DISubroutineType(types: !892)
!892 = !{!61, !87}
!893 = !{!894, !895}
!894 = !DILocalVariable(name: "file", arg: 1, scope: !890, file: !3, line: 441, type: !87)
!895 = !DILocalVariable(name: "stream", scope: !890, file: !3, line: 443, type: !896)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !898, line: 7, baseType: !899)
!898 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !900, line: 241, size: 1728, elements: !901)
!900 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!901 = !{!902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !922, !923, !924, !925, !929, !930, !932, !936, !939, !941, !942, !943, !944, !945, !946, !947}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !899, file: !900, line: 242, baseType: !54, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !899, file: !900, line: 247, baseType: !40, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !899, file: !900, line: 248, baseType: !40, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !899, file: !900, line: 249, baseType: !40, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !899, file: !900, line: 250, baseType: !40, size: 64, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !899, file: !900, line: 251, baseType: !40, size: 64, offset: 320)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !899, file: !900, line: 252, baseType: !40, size: 64, offset: 384)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !899, file: !900, line: 253, baseType: !40, size: 64, offset: 448)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !899, file: !900, line: 254, baseType: !40, size: 64, offset: 512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !899, file: !900, line: 256, baseType: !40, size: 64, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !899, file: !900, line: 257, baseType: !40, size: 64, offset: 640)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !899, file: !900, line: 258, baseType: !40, size: 64, offset: 704)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !899, file: !900, line: 260, baseType: !915, size: 64, offset: 768)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !900, line: 156, size: 192, elements: !917)
!917 = !{!918, !919, !921}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !916, file: !900, line: 157, baseType: !915, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !916, file: !900, line: 158, baseType: !920, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !916, file: !900, line: 162, baseType: !54, size: 32, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !899, file: !900, line: 262, baseType: !920, size: 64, offset: 832)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !899, file: !900, line: 264, baseType: !54, size: 32, offset: 896)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !899, file: !900, line: 268, baseType: !54, size: 32, offset: 928)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !899, file: !900, line: 270, baseType: !926, size: 64, offset: 960)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !927, line: 140, baseType: !928)
!927 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!928 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !899, file: !900, line: 274, baseType: !164, size: 16, offset: 1024)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !899, file: !900, line: 275, baseType: !931, size: 8, offset: 1040)
!931 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !899, file: !900, line: 276, baseType: !933, size: 8, offset: 1048)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, elements: !934)
!934 = !{!935}
!935 = !DISubrange(count: 1)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !899, file: !900, line: 280, baseType: !937, size: 64, offset: 1088)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !900, line: 150, baseType: null)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !899, file: !900, line: 289, baseType: !940, size: 64, offset: 1152)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !927, line: 141, baseType: !928)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !899, file: !900, line: 297, baseType: !42, size: 64, offset: 1216)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !899, file: !900, line: 298, baseType: !42, size: 64, offset: 1280)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !899, file: !900, line: 299, baseType: !42, size: 64, offset: 1344)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !899, file: !900, line: 300, baseType: !42, size: 64, offset: 1408)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !899, file: !900, line: 302, baseType: !45, size: 64, offset: 1472)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !899, file: !900, line: 303, baseType: !54, size: 32, offset: 1536)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !899, file: !900, line: 305, baseType: !948, size: 160, offset: 1568)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 160, elements: !949)
!949 = !{!950}
!950 = !DISubrange(count: 20)
!951 = !DILocation(line: 441, column: 23, scope: !890)
!952 = !DILocation(line: 445, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !890, file: !3, line: 445, column: 7)
!954 = !DILocation(line: 445, column: 7, scope: !890)
!955 = !DILocation(line: 448, column: 16, scope: !956)
!956 = distinct !DILexicalBlock(scope: !953, file: !3, line: 446, column: 5)
!957 = !DILocation(line: 443, column: 9, scope: !890)
!958 = !DILocation(line: 449, column: 5, scope: !956)
!959 = !DILocation(line: 452, column: 16, scope: !960)
!960 = distinct !DILexicalBlock(scope: !953, file: !3, line: 451, column: 5)
!961 = !DILocation(line: 453, column: 18, scope: !962)
!962 = distinct !DILexicalBlock(scope: !960, file: !3, line: 453, column: 11)
!963 = !DILocation(line: 453, column: 11, scope: !960)
!964 = !DILocation(line: 455, column: 21, scope: !965)
!965 = distinct !DILexicalBlock(scope: !962, file: !3, line: 454, column: 9)
!966 = !DILocation(line: 455, column: 34, scope: !965)
!967 = !DILocation(line: 455, column: 11, scope: !965)
!968 = !DILocation(line: 456, column: 11, scope: !965)
!969 = !DILocation(line: 460, column: 3, scope: !890)
!970 = !DILocalVariable(name: "stream", arg: 1, scope: !971, file: !3, line: 429, type: !896)
!971 = distinct !DISubprogram(name: "cut_stream", scope: !3, file: !3, line: 429, type: !972, isLocal: true, isDefinition: true, scopeLine: 430, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !974)
!972 = !DISubroutineType(types: !973)
!973 = !{null, !896}
!974 = !{!970}
!975 = !DILocation(line: 429, column: 19, scope: !971, inlinedAt: !976)
!976 = distinct !DILocation(line: 462, column: 3, scope: !890)
!977 = !DILocation(line: 431, column: 7, scope: !978, inlinedAt: !976)
!978 = distinct !DILexicalBlock(scope: !971, file: !3, line: 431, column: 7)
!979 = !DILocation(line: 431, column: 22, scope: !978, inlinedAt: !976)
!980 = !DILocation(line: 431, column: 7, scope: !971, inlinedAt: !976)
!981 = !DILocalVariable(name: "stream", arg: 1, scope: !982, file: !3, line: 233, type: !896)
!982 = distinct !DISubprogram(name: "cut_bytes", scope: !3, file: !3, line: 233, type: !972, isLocal: true, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !983)
!983 = !{!981, !984, !985, !986}
!984 = !DILocalVariable(name: "byte_idx", scope: !982, file: !3, line: 235, type: !45)
!985 = !DILocalVariable(name: "print_delimiter", scope: !982, file: !3, line: 238, type: !61)
!986 = !DILocalVariable(name: "c", scope: !987, file: !3, line: 245, type: !54)
!987 = distinct !DILexicalBlock(scope: !982, file: !3, line: 244, column: 5)
!988 = !DILocation(line: 233, column: 18, scope: !982, inlinedAt: !989)
!989 = distinct !DILocation(line: 432, column: 5, scope: !978, inlinedAt: !976)
!990 = !DILocation(line: 235, column: 10, scope: !982, inlinedAt: !989)
!991 = !DILocation(line: 238, column: 8, scope: !982, inlinedAt: !989)
!992 = !DILocation(line: 243, column: 3, scope: !982, inlinedAt: !989)
!993 = !DILocation(line: 65, column: 10, scope: !994, inlinedAt: !1000)
!994 = distinct !DISubprogram(name: "getc_unlocked", scope: !995, file: !995, line: 63, type: !996, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !998)
!995 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!996 = !DISubroutineType(types: !997)
!997 = !{!54, !896}
!998 = !{!999}
!999 = !DILocalVariable(name: "__fp", arg: 1, scope: !994, file: !995, line: 63, type: !896)
!1000 = distinct !DILocation(line: 247, column: 11, scope: !987, inlinedAt: !989)
!1001 = !DILocation(line: 63, column: 22, scope: !994, inlinedAt: !1000)
!1002 = !{!1003, !719, i64 8}
!1003 = !{!"_IO_FILE", !861, i64 0, !719, i64 8, !719, i64 16, !719, i64 24, !719, i64 32, !719, i64 40, !719, i64 48, !719, i64 56, !719, i64 64, !719, i64 72, !719, i64 80, !719, i64 88, !719, i64 96, !719, i64 104, !861, i64 112, !861, i64 116, !812, i64 120, !1004, i64 128, !720, i64 130, !720, i64 131, !719, i64 136, !812, i64 144, !719, i64 152, !719, i64 160, !719, i64 168, !719, i64 176, !812, i64 184, !861, i64 192, !720, i64 196}
!1004 = !{!"short", !720, i64 0}
!1005 = !{!1003, !719, i64 16}
!1006 = !{!"branch_weights", i32 2000, i32 1}
!1007 = !DILocation(line: 245, column: 11, scope: !987, inlinedAt: !989)
!1008 = !DILocation(line: 249, column: 16, scope: !1009, inlinedAt: !989)
!1009 = distinct !DILexicalBlock(scope: !987, file: !3, line: 249, column: 11)
!1010 = !DILocation(line: 249, column: 13, scope: !1009, inlinedAt: !989)
!1011 = !DILocation(line: 249, column: 11, scope: !987, inlinedAt: !989)
!1012 = !DILocalVariable(name: "__c", arg: 1, scope: !1013, file: !995, line: 105, type: !54)
!1013 = distinct !DISubprogram(name: "putchar_unlocked", scope: !995, file: !995, line: 105, type: !1014, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1016)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!54, !54}
!1016 = !{!1012}
!1017 = !DILocation(line: 105, column: 23, scope: !1013, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 251, column: 11, scope: !1019, inlinedAt: !989)
!1019 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 250, column: 9)
!1020 = !DILocation(line: 107, column: 10, scope: !1013, inlinedAt: !1018)
!1021 = !{!1003, !719, i64 40}
!1022 = !{!1003, !719, i64 48}
!1023 = !DILocation(line: 254, column: 24, scope: !1019, inlinedAt: !989)
!1024 = !DILocation(line: 254, column: 22, scope: !1019, inlinedAt: !989)
!1025 = !DILocation(line: 255, column: 9, scope: !1019, inlinedAt: !989)
!1026 = !DILocation(line: 256, column: 18, scope: !1027, inlinedAt: !989)
!1027 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 256, column: 16)
!1028 = !DILocation(line: 256, column: 16, scope: !1009, inlinedAt: !989)
!1029 = !DILocation(line: 258, column: 24, scope: !1030, inlinedAt: !989)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 258, column: 15)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 257, column: 9)
!1032 = !DILocation(line: 258, column: 15, scope: !1031, inlinedAt: !989)
!1033 = !DILocation(line: 105, column: 23, scope: !1013, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 259, column: 13, scope: !1030, inlinedAt: !989)
!1035 = !DILocation(line: 107, column: 10, scope: !1013, inlinedAt: !1034)
!1036 = !DILocation(line: 209, column: 14, scope: !1037, inlinedAt: !1042)
!1037 = distinct !DISubprogram(name: "next_item", scope: !3, file: !3, line: 207, type: !1038, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1040)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null, !155}
!1040 = !{!1041}
!1041 = !DILocalVariable(name: "item_idx", arg: 1, scope: !1037, file: !3, line: 207, type: !155)
!1042 = distinct !DILocation(line: 264, column: 11, scope: !1043, inlinedAt: !989)
!1043 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 263, column: 9)
!1044 = !DILocation(line: 210, column: 21, scope: !1045, inlinedAt: !1042)
!1045 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 210, column: 7)
!1046 = !DILocation(line: 210, column: 33, scope: !1045, inlinedAt: !1042)
!1047 = !{!1048, !812, i64 8}
!1048 = !{!"field_range_pair", !812, i64 0, !812, i64 8}
!1049 = !DILocation(line: 210, column: 19, scope: !1045, inlinedAt: !1042)
!1050 = !DILocation(line: 210, column: 7, scope: !1037, inlinedAt: !1042)
!1051 = !DILocation(line: 211, column: 15, scope: !1045, inlinedAt: !1042)
!1052 = !DILocation(line: 211, column: 5, scope: !1045, inlinedAt: !1042)
!1053 = !DILocation(line: 219, column: 10, scope: !1054, inlinedAt: !1059)
!1054 = distinct !DISubprogram(name: "print_kth", scope: !3, file: !3, line: 217, type: !1055, isLocal: true, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1057)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!61, !45}
!1057 = !{!1058}
!1058 = !DILocalVariable(name: "k", arg: 1, scope: !1054, file: !3, line: 217, type: !45)
!1059 = distinct !DILocation(line: 265, column: 15, scope: !1060, inlinedAt: !989)
!1060 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 265, column: 15)
!1061 = !DILocation(line: 217, column: 19, scope: !1054, inlinedAt: !1059)
!1062 = !DILocation(line: 219, column: 22, scope: !1054, inlinedAt: !1059)
!1063 = !{!1048, !812, i64 0}
!1064 = !DILocation(line: 219, column: 25, scope: !1054, inlinedAt: !1059)
!1065 = !DILocation(line: 265, column: 15, scope: !1043, inlinedAt: !989)
!1066 = distinct !{!1066, !1067, !1068}
!1067 = !DILocation(line: 243, column: 3, scope: !982)
!1068 = !DILocation(line: 280, column: 5, scope: !982)
!1069 = !DILocation(line: 267, column: 19, scope: !1070, inlinedAt: !989)
!1070 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 266, column: 13)
!1071 = !DILocation(line: 269, column: 23, scope: !1072, inlinedAt: !989)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 269, column: 23)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 268, column: 17)
!1074 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 267, column: 19)
!1075 = !DILocation(line: 227, column: 12, scope: !1076, inlinedAt: !1079)
!1076 = distinct !DISubprogram(name: "is_range_start_index", scope: !3, file: !3, line: 225, type: !1055, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1077)
!1077 = !{!1078}
!1078 = !DILocalVariable(name: "k", arg: 1, scope: !1076, file: !3, line: 225, type: !45)
!1079 = distinct !DILocation(line: 269, column: 42, scope: !1072, inlinedAt: !989)
!1080 = !DILocation(line: 269, column: 39, scope: !1072, inlinedAt: !989)
!1081 = !DILocation(line: 225, column: 30, scope: !1076, inlinedAt: !1079)
!1082 = !DILocation(line: 271, column: 23, scope: !1083, inlinedAt: !989)
!1083 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 270, column: 21)
!1084 = !DILocation(line: 273, column: 21, scope: !1083, inlinedAt: !989)
!1085 = !DILocation(line: 105, column: 23, scope: !1013, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 277, column: 15, scope: !1070, inlinedAt: !989)
!1087 = !DILocation(line: 107, column: 10, scope: !1013, inlinedAt: !1086)
!1088 = !DILocalVariable(name: "stream", arg: 1, scope: !1089, file: !3, line: 286, type: !896)
!1089 = distinct !DISubprogram(name: "cut_fields", scope: !3, file: !3, line: 286, type: !972, isLocal: true, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1090)
!1090 = !{!1088, !1091, !1092, !1093, !1094, !1095, !1102, !1103, !1108, !1109}
!1091 = !DILocalVariable(name: "c", scope: !1089, file: !3, line: 288, type: !54)
!1092 = !DILocalVariable(name: "field_idx", scope: !1089, file: !3, line: 289, type: !45)
!1093 = !DILocalVariable(name: "found_any_selected_field", scope: !1089, file: !3, line: 290, type: !61)
!1094 = !DILocalVariable(name: "buffer_first_field", scope: !1089, file: !3, line: 291, type: !61)
!1095 = !DILocalVariable(name: "len", scope: !1096, file: !3, line: 314, type: !1099)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 313, column: 9)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 312, column: 11)
!1098 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 311, column: 5)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1100, line: 71, baseType: !1101)
!1100 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !927, line: 181, baseType: !928)
!1102 = !DILocalVariable(name: "n_bytes", scope: !1096, file: !3, line: 315, type: !45)
!1103 = !DILocalVariable(name: "last_c", scope: !1104, file: !3, line: 360, type: !54)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 359, column: 17)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 358, column: 19)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 353, column: 13)
!1107 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 352, column: 15)
!1108 = !DILocalVariable(name: "prev_c", scope: !1098, file: !3, line: 373, type: !54)
!1109 = !DILocalVariable(name: "last_c", scope: !1110, file: !3, line: 401, type: !54)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 400, column: 9)
!1111 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 399, column: 11)
!1112 = !DILocation(line: 286, column: 19, scope: !1089, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 434, column: 5, scope: !978, inlinedAt: !976)
!1114 = !DILocation(line: 289, column: 10, scope: !1089, inlinedAt: !1113)
!1115 = !DILocation(line: 290, column: 8, scope: !1089, inlinedAt: !1113)
!1116 = !DILocation(line: 63, column: 22, scope: !994, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 295, column: 7, scope: !1089, inlinedAt: !1113)
!1118 = !DILocation(line: 65, column: 10, scope: !994, inlinedAt: !1117)
!1119 = !DILocation(line: 288, column: 7, scope: !1089, inlinedAt: !1113)
!1120 = !DILocation(line: 296, column: 7, scope: !1089, inlinedAt: !1113)
!1121 = !DILocation(line: 296, column: 9, scope: !1122, inlinedAt: !1113)
!1122 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 296, column: 7)
!1123 = !DILocation(line: 299, column: 3, scope: !1089, inlinedAt: !1113)
!1124 = !DILocation(line: 217, column: 19, scope: !1054, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 308, column: 51, scope: !1089, inlinedAt: !1113)
!1126 = !DILocation(line: 219, column: 10, scope: !1054, inlinedAt: !1125)
!1127 = !DILocation(line: 219, column: 22, scope: !1054, inlinedAt: !1125)
!1128 = !DILocation(line: 219, column: 25, scope: !1054, inlinedAt: !1125)
!1129 = !DILocation(line: 308, column: 48, scope: !1089, inlinedAt: !1113)
!1130 = !DILocation(line: 310, column: 3, scope: !1089, inlinedAt: !1113)
!1131 = !DILocation(line: 312, column: 21, scope: !1097, inlinedAt: !1113)
!1132 = !DILocation(line: 312, column: 26, scope: !1097, inlinedAt: !1113)
!1133 = !DILocation(line: 219, column: 10, scope: !1054, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 375, column: 11, scope: !1135, inlinedAt: !1113)
!1135 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 375, column: 11)
!1136 = !DILocation(line: 318, column: 48, scope: !1096, inlinedAt: !1113)
!1137 = !DILocation(line: 318, column: 55, scope: !1096, inlinedAt: !1113)
!1138 = !DILocation(line: 317, column: 17, scope: !1096, inlinedAt: !1113)
!1139 = !DILocation(line: 314, column: 19, scope: !1096, inlinedAt: !1113)
!1140 = !DILocation(line: 319, column: 19, scope: !1141, inlinedAt: !1113)
!1141 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 319, column: 15)
!1142 = !DILocation(line: 319, column: 15, scope: !1096, inlinedAt: !1113)
!1143 = !DILocation(line: 329, column: 11, scope: !1144, inlinedAt: !1113)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 329, column: 11)
!1145 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 329, column: 11)
!1146 = !DILocation(line: 321, column: 21, scope: !1147, inlinedAt: !1113)
!1147 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 320, column: 13)
!1148 = !DILocation(line: 321, column: 15, scope: !1147, inlinedAt: !1113)
!1149 = !DILocation(line: 322, column: 30, scope: !1147, inlinedAt: !1113)
!1150 = !DILocalVariable(name: "__stream", arg: 1, scope: !1151, file: !995, line: 132, type: !896)
!1151 = distinct !DISubprogram(name: "ferror_unlocked", scope: !995, file: !995, line: 132, type: !996, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1152)
!1152 = !{!1150}
!1153 = !DILocation(line: 132, column: 1, scope: !1151, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 323, column: 19, scope: !1155, inlinedAt: !1113)
!1155 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 323, column: 19)
!1156 = !DILocation(line: 134, column: 10, scope: !1151, inlinedAt: !1154)
!1157 = !{!1003, !861, i64 0}
!1158 = !DILocation(line: 323, column: 35, scope: !1155, inlinedAt: !1113)
!1159 = !DILocation(line: 325, column: 15, scope: !1147, inlinedAt: !1113)
!1160 = !DILocation(line: 315, column: 18, scope: !1096, inlinedAt: !1113)
!1161 = !DILocation(line: 329, column: 11, scope: !1145, inlinedAt: !1113)
!1162 = !DILocation(line: 336, column: 25, scope: !1163, inlinedAt: !1113)
!1163 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 336, column: 15)
!1164 = !DILocation(line: 336, column: 48, scope: !1163, inlinedAt: !1113)
!1165 = !DILocation(line: 336, column: 57, scope: !1163, inlinedAt: !1113)
!1166 = !DILocation(line: 336, column: 54, scope: !1163, inlinedAt: !1113)
!1167 = !DILocation(line: 336, column: 15, scope: !1096, inlinedAt: !1113)
!1168 = !DILocation(line: 338, column: 19, scope: !1169, inlinedAt: !1113)
!1169 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 337, column: 13)
!1170 = distinct !{!1170, !1171, !1172}
!1171 = !DILocation(line: 310, column: 3, scope: !1089)
!1172 = !DILocation(line: 425, column: 5, scope: !1089)
!1173 = !DILocation(line: 344, column: 19, scope: !1174, inlinedAt: !1113)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 343, column: 17)
!1175 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 338, column: 19)
!1176 = !DILocation(line: 346, column: 23, scope: !1177, inlinedAt: !1113)
!1177 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 346, column: 23)
!1178 = !DILocation(line: 346, column: 54, scope: !1177, inlinedAt: !1113)
!1179 = !DILocation(line: 346, column: 51, scope: !1177, inlinedAt: !1113)
!1180 = !DILocation(line: 346, column: 23, scope: !1174, inlinedAt: !1113)
!1181 = !DILocation(line: 105, column: 23, scope: !1013, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 347, column: 21, scope: !1177, inlinedAt: !1113)
!1183 = !DILocation(line: 107, column: 10, scope: !1013, inlinedAt: !1182)
!1184 = !DILocation(line: 217, column: 19, scope: !1054, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 352, column: 15, scope: !1107, inlinedAt: !1113)
!1186 = !DILocation(line: 219, column: 10, scope: !1054, inlinedAt: !1185)
!1187 = !DILocation(line: 219, column: 22, scope: !1054, inlinedAt: !1185)
!1188 = !DILocation(line: 219, column: 25, scope: !1054, inlinedAt: !1185)
!1189 = !DILocation(line: 352, column: 15, scope: !1096, inlinedAt: !1113)
!1190 = !DILocation(line: 355, column: 15, scope: !1106, inlinedAt: !1113)
!1191 = !DILocation(line: 358, column: 19, scope: !1105, inlinedAt: !1113)
!1192 = !DILocation(line: 358, column: 28, scope: !1105, inlinedAt: !1113)
!1193 = !DILocation(line: 358, column: 25, scope: !1105, inlinedAt: !1113)
!1194 = !DILocation(line: 358, column: 19, scope: !1106, inlinedAt: !1113)
!1195 = !DILocation(line: 63, column: 22, scope: !994, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 360, column: 32, scope: !1104, inlinedAt: !1113)
!1197 = !DILocation(line: 65, column: 10, scope: !994, inlinedAt: !1196)
!1198 = !DILocation(line: 360, column: 23, scope: !1104, inlinedAt: !1113)
!1199 = !DILocation(line: 361, column: 23, scope: !1104, inlinedAt: !1113)
!1200 = !DILocation(line: 361, column: 30, scope: !1201, inlinedAt: !1113)
!1201 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 361, column: 23)
!1202 = !DILocation(line: 363, column: 23, scope: !1203, inlinedAt: !1113)
!1203 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 362, column: 21)
!1204 = !DILocation(line: 365, column: 21, scope: !1203, inlinedAt: !1113)
!1205 = !DILocation(line: 210, column: 21, scope: !1045, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 370, column: 11, scope: !1096, inlinedAt: !1113)
!1207 = !DILocation(line: 210, column: 33, scope: !1045, inlinedAt: !1206)
!1208 = !DILocation(line: 210, column: 19, scope: !1045, inlinedAt: !1206)
!1209 = !DILocation(line: 210, column: 7, scope: !1037, inlinedAt: !1206)
!1210 = !DILocation(line: 211, column: 15, scope: !1045, inlinedAt: !1206)
!1211 = !DILocation(line: 211, column: 5, scope: !1045, inlinedAt: !1206)
!1212 = !DILocation(line: 373, column: 11, scope: !1098, inlinedAt: !1113)
!1213 = !DILocation(line: 217, column: 19, scope: !1054, inlinedAt: !1134)
!1214 = !DILocation(line: 219, column: 22, scope: !1054, inlinedAt: !1134)
!1215 = !DILocation(line: 219, column: 25, scope: !1054, inlinedAt: !1134)
!1216 = !DILocation(line: 375, column: 11, scope: !1098, inlinedAt: !1113)
!1217 = !DILocation(line: 65, column: 10, scope: !994, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 392, column: 23, scope: !1219, inlinedAt: !1113)
!1219 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 391, column: 9)
!1220 = !DILocation(line: 377, column: 15, scope: !1221, inlinedAt: !1113)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 377, column: 15)
!1222 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 376, column: 9)
!1223 = !DILocation(line: 377, column: 15, scope: !1222, inlinedAt: !1113)
!1224 = !DILocation(line: 379, column: 15, scope: !1225, inlinedAt: !1113)
!1225 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 378, column: 13)
!1226 = !DILocation(line: 381, column: 13, scope: !1225, inlinedAt: !1113)
!1227 = !DILocation(line: 65, column: 10, scope: !994, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 384, column: 23, scope: !1222, inlinedAt: !1113)
!1229 = !DILocation(line: 63, column: 22, scope: !994, inlinedAt: !1228)
!1230 = !DILocation(line: 384, column: 41, scope: !1222, inlinedAt: !1113)
!1231 = !DILocation(line: 384, column: 38, scope: !1222, inlinedAt: !1113)
!1232 = !DILocation(line: 384, column: 47, scope: !1222, inlinedAt: !1113)
!1233 = !DILocation(line: 384, column: 55, scope: !1222, inlinedAt: !1113)
!1234 = !DILocation(line: 384, column: 52, scope: !1222, inlinedAt: !1113)
!1235 = !DILocation(line: 384, column: 71, scope: !1222, inlinedAt: !1113)
!1236 = !DILocation(line: 384, column: 66, scope: !1222, inlinedAt: !1113)
!1237 = !DILocation(line: 105, column: 23, scope: !1013, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 386, column: 15, scope: !1239, inlinedAt: !1113)
!1239 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 385, column: 13)
!1240 = !DILocation(line: 107, column: 10, scope: !1013, inlinedAt: !1238)
!1241 = distinct !{!1241, !1242, !1243}
!1242 = !DILocation(line: 384, column: 11, scope: !1222)
!1243 = !DILocation(line: 388, column: 13, scope: !1222)
!1244 = !DILocation(line: 63, column: 22, scope: !994, inlinedAt: !1218)
!1245 = !DILocation(line: 392, column: 41, scope: !1219, inlinedAt: !1113)
!1246 = !DILocation(line: 392, column: 38, scope: !1219, inlinedAt: !1113)
!1247 = !DILocation(line: 392, column: 47, scope: !1219, inlinedAt: !1113)
!1248 = !DILocation(line: 392, column: 55, scope: !1219, inlinedAt: !1113)
!1249 = !DILocation(line: 392, column: 52, scope: !1219, inlinedAt: !1113)
!1250 = !DILocation(line: 392, column: 71, scope: !1219, inlinedAt: !1113)
!1251 = !DILocation(line: 392, column: 66, scope: !1219, inlinedAt: !1113)
!1252 = distinct !{!1252, !1253, !1254}
!1253 = !DILocation(line: 392, column: 11, scope: !1219)
!1254 = !DILocation(line: 395, column: 13, scope: !1219)
!1255 = !DILocation(line: 399, column: 11, scope: !1111, inlinedAt: !1113)
!1256 = !DILocation(line: 399, column: 20, scope: !1111, inlinedAt: !1113)
!1257 = !DILocation(line: 399, column: 17, scope: !1111, inlinedAt: !1113)
!1258 = !DILocation(line: 399, column: 36, scope: !1111, inlinedAt: !1113)
!1259 = !DILocation(line: 399, column: 31, scope: !1111, inlinedAt: !1113)
!1260 = !DILocation(line: 63, column: 22, scope: !994, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 401, column: 24, scope: !1110, inlinedAt: !1113)
!1262 = !DILocation(line: 65, column: 10, scope: !994, inlinedAt: !1261)
!1263 = !DILocation(line: 401, column: 15, scope: !1110, inlinedAt: !1113)
!1264 = !DILocation(line: 402, column: 15, scope: !1110, inlinedAt: !1113)
!1265 = !DILocation(line: 402, column: 22, scope: !1266, inlinedAt: !1113)
!1266 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 402, column: 15)
!1267 = !DILocation(line: 408, column: 16, scope: !1268, inlinedAt: !1113)
!1268 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 408, column: 11)
!1269 = !DILocation(line: 410, column: 21, scope: !1270, inlinedAt: !1113)
!1270 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 410, column: 16)
!1271 = !DILocation(line: 410, column: 32, scope: !1270, inlinedAt: !1113)
!1272 = !DILocation(line: 403, column: 13, scope: !1266, inlinedAt: !1113)
!1273 = !DILocation(line: 408, column: 13, scope: !1268, inlinedAt: !1113)
!1274 = !DILocation(line: 408, column: 11, scope: !1098, inlinedAt: !1113)
!1275 = !DILocation(line: 209, column: 14, scope: !1037, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 409, column: 9, scope: !1268, inlinedAt: !1113)
!1277 = !DILocation(line: 210, column: 21, scope: !1045, inlinedAt: !1276)
!1278 = !DILocation(line: 210, column: 33, scope: !1045, inlinedAt: !1276)
!1279 = !DILocation(line: 210, column: 19, scope: !1045, inlinedAt: !1276)
!1280 = !DILocation(line: 210, column: 7, scope: !1037, inlinedAt: !1276)
!1281 = !DILocation(line: 211, column: 15, scope: !1045, inlinedAt: !1276)
!1282 = !DILocation(line: 211, column: 5, scope: !1045, inlinedAt: !1276)
!1283 = !DILocation(line: 410, column: 18, scope: !1270, inlinedAt: !1113)
!1284 = !DILocation(line: 410, column: 37, scope: !1270, inlinedAt: !1113)
!1285 = !DILocation(line: 412, column: 15, scope: !1286, inlinedAt: !1113)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 412, column: 15)
!1287 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 411, column: 9)
!1288 = !DILocation(line: 413, column: 15, scope: !1286, inlinedAt: !1113)
!1289 = !DILocation(line: 413, column: 56, scope: !1286, inlinedAt: !1113)
!1290 = !DILocation(line: 413, column: 43, scope: !1286, inlinedAt: !1113)
!1291 = !DILocation(line: 415, column: 45, scope: !1292, inlinedAt: !1113)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 415, column: 19)
!1293 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 414, column: 13)
!1294 = !DILocation(line: 415, column: 35, scope: !1292, inlinedAt: !1113)
!1295 = !DILocation(line: 416, column: 28, scope: !1292, inlinedAt: !1113)
!1296 = !DILocation(line: 105, column: 23, scope: !1013, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 417, column: 17, scope: !1292, inlinedAt: !1113)
!1298 = !DILocation(line: 107, column: 10, scope: !1013, inlinedAt: !1297)
!1299 = !DILocation(line: 419, column: 15, scope: !1287, inlinedAt: !1113)
!1300 = !DILocation(line: 422, column: 24, scope: !1287, inlinedAt: !1113)
!1301 = !DILocation(line: 422, column: 22, scope: !1287, inlinedAt: !1113)
!1302 = !DILocation(line: 424, column: 9, scope: !1287, inlinedAt: !1113)
!1303 = !DILocation(line: 132, column: 1, scope: !1151, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 464, column: 7, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !890, file: !3, line: 464, column: 7)
!1306 = !DILocation(line: 134, column: 10, scope: !1151, inlinedAt: !1304)
!1307 = !DILocation(line: 464, column: 7, scope: !1305)
!1308 = !DILocation(line: 464, column: 7, scope: !890)
!1309 = !DILocation(line: 466, column: 17, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 465, column: 5)
!1311 = !DILocation(line: 466, column: 30, scope: !1310)
!1312 = !DILocation(line: 466, column: 7, scope: !1310)
!1313 = !DILocation(line: 467, column: 7, scope: !1310)
!1314 = !DILocation(line: 469, column: 7, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !890, file: !3, line: 469, column: 7)
!1316 = !DILocation(line: 469, column: 7, scope: !890)
!1317 = !DILocation(line: 470, column: 5, scope: !1315)
!1318 = !DILocation(line: 471, column: 12, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 471, column: 12)
!1320 = !DILocation(line: 471, column: 28, scope: !1319)
!1321 = !DILocation(line: 471, column: 12, scope: !1315)
!1322 = !DILocation(line: 473, column: 17, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 472, column: 5)
!1324 = !DILocation(line: 473, column: 30, scope: !1323)
!1325 = !DILocation(line: 473, column: 7, scope: !1323)
!1326 = !DILocation(line: 474, column: 7, scope: !1323)
!1327 = !DILocation(line: 477, column: 1, scope: !890)
!1328 = !DILocation(line: 139, column: 25, scope: !175)
!1329 = !DILocation(line: 139, column: 48, scope: !175)
!1330 = !DILocation(line: 141, column: 10, scope: !175)
!1331 = !DILocation(line: 142, column: 10, scope: !175)
!1332 = !DILocation(line: 143, column: 8, scope: !175)
!1333 = !DILocation(line: 144, column: 8, scope: !175)
!1334 = !DILocation(line: 145, column: 8, scope: !175)
!1335 = !DILocation(line: 148, column: 8, scope: !175)
!1336 = !DILocation(line: 153, column: 16, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !175, file: !133, line: 153, column: 7)
!1338 = !DILocation(line: 153, column: 37, scope: !1337)
!1339 = !DILocation(line: 153, column: 40, scope: !1337)
!1340 = !DILocation(line: 158, column: 15, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !133, line: 154, column: 5)
!1342 = !DILocation(line: 153, column: 7, scope: !175)
!1343 = !DILocation(line: 163, column: 11, scope: !194)
!1344 = !DILocation(line: 163, column: 11, scope: !195)
!1345 = !DILocation(line: 167, column: 15, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !133, line: 167, column: 15)
!1347 = distinct !DILexicalBlock(scope: !194, file: !133, line: 164, column: 9)
!1348 = !DILocation(line: 167, column: 15, scope: !1347)
!1349 = !DILocation(line: 168, column: 13, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1346, file: !133, line: 168, column: 13)
!1351 = !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)
!1352 = !DILocation(line: 175, column: 15, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1347, file: !133, line: 175, column: 15)
!1354 = !DILocation(line: 175, column: 29, scope: !1353)
!1355 = !DILocation(line: 175, column: 33, scope: !1353)
!1356 = !DILocation(line: 176, column: 13, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !133, line: 176, column: 13)
!1358 = !DILocation(line: 180, column: 22, scope: !1347)
!1359 = !DILocation(line: 182, column: 9, scope: !1347)
!1360 = !DILocation(line: 184, column: 19, scope: !193)
!1361 = !{!1004, !1004, i64 0}
!1362 = !DILocation(line: 184, column: 63, scope: !193)
!1363 = !DILocation(line: 184, column: 50, scope: !193)
!1364 = !DILocation(line: 188, column: 15, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !133, line: 188, column: 15)
!1366 = distinct !DILexicalBlock(scope: !193, file: !133, line: 185, column: 9)
!1367 = !DILocation(line: 188, column: 15, scope: !1366)
!1368 = !DILocation(line: 192, column: 34, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !133, line: 192, column: 19)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !133, line: 189, column: 13)
!1371 = !DILocation(line: 198, column: 21, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !133, line: 198, column: 21)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !133, line: 195, column: 23)
!1374 = distinct !DILexicalBlock(scope: !1369, file: !133, line: 193, column: 17)
!1375 = !DILocation(line: 192, column: 38, scope: !1369)
!1376 = !DILocation(line: 203, column: 19, scope: !1370)
!1377 = !DILocalVariable(name: "lo", arg: 1, scope: !1378, file: !133, line: 48, type: !45)
!1378 = distinct !DISubprogram(name: "add_range_pair", scope: !133, file: !133, line: 48, type: !1379, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1381)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !45, !45}
!1381 = !{!1377, !1382}
!1382 = !DILocalVariable(name: "hi", arg: 2, scope: !1378, file: !133, line: 48, type: !45)
!1383 = !DILocation(line: 48, column: 24, scope: !1378, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 206, column: 19, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !133, line: 204, column: 17)
!1386 = distinct !DILexicalBlock(scope: !1370, file: !133, line: 203, column: 19)
!1387 = !DILocation(line: 48, column: 35, scope: !1378, inlinedAt: !1384)
!1388 = !DILocation(line: 50, column: 7, scope: !1389, inlinedAt: !1384)
!1389 = distinct !DILexicalBlock(scope: !1378, file: !133, line: 50, column: 7)
!1390 = !DILocation(line: 50, column: 16, scope: !1389, inlinedAt: !1384)
!1391 = !DILocation(line: 50, column: 13, scope: !1389, inlinedAt: !1384)
!1392 = !DILocation(line: 50, column: 7, scope: !1378, inlinedAt: !1384)
!1393 = !DILocation(line: 52, column: 3, scope: !1378, inlinedAt: !1384)
!1394 = !DILocation(line: 51, column: 11, scope: !1389, inlinedAt: !1384)
!1395 = !DILocation(line: 180, column: 19, scope: !152, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 51, column: 11, scope: !1389, inlinedAt: !1384)
!1397 = !DILocation(line: 180, column: 30, scope: !152, inlinedAt: !1396)
!1398 = !DILocation(line: 180, column: 41, scope: !152, inlinedAt: !1396)
!1399 = !DILocation(line: 182, column: 10, scope: !152, inlinedAt: !1396)
!1400 = !DILocation(line: 184, column: 9, scope: !1401, inlinedAt: !1396)
!1401 = distinct !DILexicalBlock(scope: !152, file: !151, line: 184, column: 7)
!1402 = !DILocation(line: 184, column: 7, scope: !152, inlinedAt: !1396)
!1403 = !DILocation(line: 186, column: 13, scope: !1404, inlinedAt: !1396)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !151, line: 186, column: 11)
!1405 = distinct !DILexicalBlock(scope: !1401, file: !151, line: 185, column: 5)
!1406 = !DILocation(line: 186, column: 11, scope: !1405, inlinedAt: !1396)
!1407 = !DILocation(line: 205, column: 11, scope: !1408, inlinedAt: !1396)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !151, line: 204, column: 11)
!1409 = distinct !DILexicalBlock(scope: !1401, file: !151, line: 199, column: 5)
!1410 = !DILocation(line: 204, column: 11, scope: !1409, inlinedAt: !1396)
!1411 = !DILocation(line: 206, column: 9, scope: !1408, inlinedAt: !1396)
!1412 = !DILocation(line: 207, column: 14, scope: !1409, inlinedAt: !1396)
!1413 = !DILocation(line: 207, column: 18, scope: !1409, inlinedAt: !1396)
!1414 = !DILocation(line: 207, column: 9, scope: !1409, inlinedAt: !1396)
!1415 = !DILocation(line: 210, column: 7, scope: !152, inlinedAt: !1396)
!1416 = !DILocation(line: 211, column: 25, scope: !152, inlinedAt: !1396)
!1417 = !DILocation(line: 211, column: 10, scope: !152, inlinedAt: !1396)
!1418 = !DILocation(line: 51, column: 9, scope: !1389, inlinedAt: !1384)
!1419 = !DILocation(line: 51, column: 5, scope: !1389, inlinedAt: !1384)
!1420 = !DILocation(line: 52, column: 7, scope: !1378, inlinedAt: !1384)
!1421 = !DILocation(line: 52, column: 14, scope: !1378, inlinedAt: !1384)
!1422 = !DILocation(line: 52, column: 17, scope: !1378, inlinedAt: !1384)
!1423 = !DILocation(line: 53, column: 7, scope: !1378, inlinedAt: !1384)
!1424 = !DILocation(line: 53, column: 14, scope: !1378, inlinedAt: !1384)
!1425 = !DILocation(line: 207, column: 17, scope: !1385)
!1426 = !DILocation(line: 211, column: 29, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !133, line: 211, column: 23)
!1428 = distinct !DILexicalBlock(scope: !1386, file: !133, line: 209, column: 17)
!1429 = !DILocation(line: 211, column: 23, scope: !1428)
!1430 = !DILocation(line: 212, column: 21, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1427, file: !133, line: 212, column: 21)
!1432 = !DILocation(line: 48, column: 24, scope: !1378, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 214, column: 19, scope: !1428)
!1434 = !DILocation(line: 48, column: 35, scope: !1378, inlinedAt: !1433)
!1435 = !DILocation(line: 50, column: 7, scope: !1389, inlinedAt: !1433)
!1436 = !DILocation(line: 50, column: 16, scope: !1389, inlinedAt: !1433)
!1437 = !DILocation(line: 50, column: 13, scope: !1389, inlinedAt: !1433)
!1438 = !DILocation(line: 50, column: 7, scope: !1378, inlinedAt: !1433)
!1439 = !DILocation(line: 52, column: 3, scope: !1378, inlinedAt: !1433)
!1440 = !DILocation(line: 51, column: 11, scope: !1389, inlinedAt: !1433)
!1441 = !DILocation(line: 180, column: 19, scope: !152, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 51, column: 11, scope: !1389, inlinedAt: !1433)
!1443 = !DILocation(line: 180, column: 30, scope: !152, inlinedAt: !1442)
!1444 = !DILocation(line: 180, column: 41, scope: !152, inlinedAt: !1442)
!1445 = !DILocation(line: 182, column: 10, scope: !152, inlinedAt: !1442)
!1446 = !DILocation(line: 184, column: 9, scope: !1401, inlinedAt: !1442)
!1447 = !DILocation(line: 184, column: 7, scope: !152, inlinedAt: !1442)
!1448 = !DILocation(line: 186, column: 13, scope: !1404, inlinedAt: !1442)
!1449 = !DILocation(line: 186, column: 11, scope: !1405, inlinedAt: !1442)
!1450 = !DILocation(line: 205, column: 11, scope: !1408, inlinedAt: !1442)
!1451 = !DILocation(line: 204, column: 11, scope: !1409, inlinedAt: !1442)
!1452 = !DILocation(line: 206, column: 9, scope: !1408, inlinedAt: !1442)
!1453 = !DILocation(line: 207, column: 14, scope: !1409, inlinedAt: !1442)
!1454 = !DILocation(line: 207, column: 18, scope: !1409, inlinedAt: !1442)
!1455 = !DILocation(line: 207, column: 9, scope: !1409, inlinedAt: !1442)
!1456 = !DILocation(line: 210, column: 7, scope: !152, inlinedAt: !1442)
!1457 = !DILocation(line: 211, column: 25, scope: !152, inlinedAt: !1442)
!1458 = !DILocation(line: 211, column: 10, scope: !152, inlinedAt: !1442)
!1459 = !DILocation(line: 51, column: 9, scope: !1389, inlinedAt: !1433)
!1460 = !DILocation(line: 51, column: 5, scope: !1389, inlinedAt: !1433)
!1461 = !DILocation(line: 52, column: 7, scope: !1378, inlinedAt: !1433)
!1462 = !DILocation(line: 52, column: 14, scope: !1378, inlinedAt: !1433)
!1463 = !DILocation(line: 52, column: 17, scope: !1378, inlinedAt: !1433)
!1464 = !DILocation(line: 53, column: 7, scope: !1378, inlinedAt: !1433)
!1465 = !DILocation(line: 53, column: 14, scope: !1378, inlinedAt: !1433)
!1466 = !DILocation(line: 221, column: 25, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !133, line: 221, column: 19)
!1468 = distinct !DILexicalBlock(scope: !1365, file: !133, line: 219, column: 13)
!1469 = !DILocation(line: 221, column: 19, scope: !1468)
!1470 = !DILocation(line: 222, column: 17, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !133, line: 222, column: 17)
!1472 = !DILocation(line: 48, column: 24, scope: !1378, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 226, column: 15, scope: !1468)
!1474 = !DILocation(line: 48, column: 35, scope: !1378, inlinedAt: !1473)
!1475 = !DILocation(line: 50, column: 7, scope: !1389, inlinedAt: !1473)
!1476 = !DILocation(line: 50, column: 16, scope: !1389, inlinedAt: !1473)
!1477 = !DILocation(line: 50, column: 13, scope: !1389, inlinedAt: !1473)
!1478 = !DILocation(line: 50, column: 7, scope: !1378, inlinedAt: !1473)
!1479 = !DILocation(line: 52, column: 3, scope: !1378, inlinedAt: !1473)
!1480 = !DILocation(line: 51, column: 11, scope: !1389, inlinedAt: !1473)
!1481 = !DILocation(line: 180, column: 19, scope: !152, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 51, column: 11, scope: !1389, inlinedAt: !1473)
!1483 = !DILocation(line: 180, column: 30, scope: !152, inlinedAt: !1482)
!1484 = !DILocation(line: 180, column: 41, scope: !152, inlinedAt: !1482)
!1485 = !DILocation(line: 182, column: 10, scope: !152, inlinedAt: !1482)
!1486 = !DILocation(line: 184, column: 9, scope: !1401, inlinedAt: !1482)
!1487 = !DILocation(line: 184, column: 7, scope: !152, inlinedAt: !1482)
!1488 = !DILocation(line: 186, column: 13, scope: !1404, inlinedAt: !1482)
!1489 = !DILocation(line: 186, column: 11, scope: !1405, inlinedAt: !1482)
!1490 = !DILocation(line: 205, column: 11, scope: !1408, inlinedAt: !1482)
!1491 = !DILocation(line: 204, column: 11, scope: !1409, inlinedAt: !1482)
!1492 = !DILocation(line: 206, column: 9, scope: !1408, inlinedAt: !1482)
!1493 = !DILocation(line: 207, column: 14, scope: !1409, inlinedAt: !1482)
!1494 = !DILocation(line: 207, column: 18, scope: !1409, inlinedAt: !1482)
!1495 = !DILocation(line: 207, column: 9, scope: !1409, inlinedAt: !1482)
!1496 = !DILocation(line: 210, column: 7, scope: !152, inlinedAt: !1482)
!1497 = !DILocation(line: 211, column: 25, scope: !152, inlinedAt: !1482)
!1498 = !DILocation(line: 211, column: 10, scope: !152, inlinedAt: !1482)
!1499 = !DILocation(line: 51, column: 9, scope: !1389, inlinedAt: !1473)
!1500 = !DILocation(line: 51, column: 5, scope: !1389, inlinedAt: !1473)
!1501 = !DILocation(line: 52, column: 7, scope: !1378, inlinedAt: !1473)
!1502 = !DILocation(line: 52, column: 14, scope: !1378, inlinedAt: !1473)
!1503 = !DILocation(line: 52, column: 17, scope: !1378, inlinedAt: !1473)
!1504 = !DILocation(line: 53, column: 7, scope: !1378, inlinedAt: !1473)
!1505 = !DILocation(line: 53, column: 14, scope: !1378, inlinedAt: !1473)
!1506 = !DILocation(line: 53, column: 17, scope: !1378, inlinedAt: !1384)
!1507 = !DILocation(line: 54, column: 3, scope: !1378, inlinedAt: !1384)
!1508 = !DILocation(line: 230, column: 15, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1366, file: !133, line: 230, column: 15)
!1510 = !DILocation(line: 230, column: 25, scope: !1509)
!1511 = !DILocation(line: 230, column: 15, scope: !1366)
!1512 = !DILocation(line: 184, column: 53, scope: !193)
!1513 = !DILocation(line: 237, column: 16, scope: !192)
!1514 = !DILocation(line: 237, column: 16, scope: !193)
!1515 = !DILocation(line: 242, column: 30, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !191, file: !133, line: 242, column: 15)
!1517 = !DILocation(line: 242, column: 26, scope: !1516)
!1518 = !DILocation(line: 243, column: 23, scope: !1516)
!1519 = !DILocation(line: 243, column: 13, scope: !1516)
!1520 = !DILocation(line: 246, column: 15, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !191, file: !133, line: 246, column: 15)
!1522 = !DILocation(line: 252, column: 16, scope: !190)
!1523 = !DILocation(line: 253, column: 24, scope: !190)
!1524 = !DILocation(line: 253, column: 15, scope: !190)
!1525 = !DILocation(line: 258, column: 28, scope: !189)
!1526 = !DILocation(line: 258, column: 22, scope: !189)
!1527 = !DILocation(line: 259, column: 31, scope: !189)
!1528 = !DILocation(line: 259, column: 21, scope: !189)
!1529 = !DILocation(line: 260, column: 37, scope: !189)
!1530 = !DILocation(line: 260, column: 28, scope: !189)
!1531 = !DILocation(line: 262, column: 29, scope: !189)
!1532 = !DILocation(line: 263, column: 28, scope: !189)
!1533 = !DILocation(line: 260, column: 15, scope: !189)
!1534 = !DILocation(line: 264, column: 15, scope: !189)
!1535 = !DILocation(line: 265, column: 15, scope: !189)
!1536 = !DILocation(line: 272, column: 33, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !192, file: !133, line: 271, column: 9)
!1538 = !DILocation(line: 272, column: 24, scope: !1537)
!1539 = !DILocation(line: 274, column: 25, scope: !1537)
!1540 = !DILocation(line: 275, column: 24, scope: !1537)
!1541 = !DILocation(line: 272, column: 11, scope: !1537)
!1542 = !DILocation(line: 276, column: 11, scope: !1537)
!1543 = !DILocation(line: 161, column: 3, scope: !175)
!1544 = distinct !{!1544, !1543, !1545}
!1545 = !DILocation(line: 278, column: 5, scope: !175)
!1546 = !DILocation(line: 280, column: 8, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !175, file: !133, line: 280, column: 7)
!1548 = !DILocation(line: 280, column: 7, scope: !175)
!1549 = !DILocation(line: 281, column: 5, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1547, file: !133, line: 281, column: 5)
!1551 = !DILocation(line: 285, column: 3, scope: !175)
!1552 = !DILocation(line: 147, column: 10, scope: !175)
!1553 = !DILocation(line: 288, column: 19, scope: !200)
!1554 = !DILocation(line: 288, column: 17, scope: !200)
!1555 = !DILocation(line: 288, column: 3, scope: !201)
!1556 = !DILocation(line: 290, column: 25, scope: !198)
!1557 = !DILocation(line: 290, column: 34, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !198, file: !133, line: 290, column: 7)
!1559 = !DILocation(line: 290, column: 19, scope: !198)
!1560 = !DILocation(line: 290, column: 32, scope: !1558)
!1561 = !DILocation(line: 290, column: 7, scope: !198)
!1562 = !DILocation(line: 292, column: 15, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !133, line: 292, column: 15)
!1564 = distinct !DILexicalBlock(scope: !1558, file: !133, line: 291, column: 9)
!1565 = !DILocation(line: 292, column: 22, scope: !1563)
!1566 = !DILocation(line: 292, column: 35, scope: !1563)
!1567 = !DILocation(line: 292, column: 25, scope: !1563)
!1568 = !DILocation(line: 292, column: 15, scope: !1564)
!1569 = !DILocation(line: 294, column: 27, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1563, file: !133, line: 293, column: 13)
!1571 = !DILocation(line: 294, column: 25, scope: !1570)
!1572 = !DILocation(line: 295, column: 28, scope: !1570)
!1573 = !DILocation(line: 295, column: 15, scope: !1570)
!1574 = !DILocation(line: 295, column: 41, scope: !1570)
!1575 = !DILocation(line: 295, column: 53, scope: !1570)
!1576 = !DILocation(line: 295, column: 62, scope: !1570)
!1577 = !DILocation(line: 296, column: 20, scope: !1570)
!1578 = distinct !{!1578, !1561, !1579}
!1579 = !DILocation(line: 301, column: 9, scope: !198)
!1580 = distinct !{!1580, !1555, !1581}
!1581 = !DILocation(line: 302, column: 5, scope: !201)
!1582 = !DILocation(line: 304, column: 15, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !175, file: !133, line: 304, column: 7)
!1584 = !DILocation(line: 304, column: 7, scope: !175)
!1585 = !DILocation(line: 74, column: 32, scope: !1586, inlinedAt: !1591)
!1586 = distinct !DISubprogram(name: "complement_rp", scope: !133, file: !133, line: 72, type: !727, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1587)
!1587 = !{!1588, !1589, !1590}
!1588 = !DILocalVariable(name: "c", scope: !1586, file: !133, line: 74, type: !204)
!1589 = !DILocalVariable(name: "n", scope: !1586, file: !133, line: 75, type: !45)
!1590 = !DILocalVariable(name: "i", scope: !1586, file: !133, line: 76, type: !45)
!1591 = distinct !DILocation(line: 305, column: 5, scope: !1583)
!1592 = !DILocation(line: 74, column: 28, scope: !1586, inlinedAt: !1591)
!1593 = !DILocation(line: 75, column: 10, scope: !1586, inlinedAt: !1591)
!1594 = !DILocation(line: 78, column: 7, scope: !1586, inlinedAt: !1591)
!1595 = !DILocation(line: 79, column: 9, scope: !1586, inlinedAt: !1591)
!1596 = !DILocation(line: 80, column: 19, scope: !1586, inlinedAt: !1591)
!1597 = !DILocation(line: 82, column: 12, scope: !1598, inlinedAt: !1591)
!1598 = distinct !DILexicalBlock(scope: !1586, file: !133, line: 82, column: 7)
!1599 = !DILocation(line: 82, column: 15, scope: !1598, inlinedAt: !1591)
!1600 = !DILocation(line: 82, column: 7, scope: !1586, inlinedAt: !1591)
!1601 = !DILocation(line: 83, column: 32, scope: !1598, inlinedAt: !1591)
!1602 = !DILocation(line: 48, column: 24, scope: !1378, inlinedAt: !1603)
!1603 = distinct !DILocation(line: 83, column: 5, scope: !1598, inlinedAt: !1591)
!1604 = !DILocation(line: 48, column: 35, scope: !1378, inlinedAt: !1603)
!1605 = !DILocation(line: 180, column: 19, scope: !152, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 51, column: 11, scope: !1389, inlinedAt: !1603)
!1607 = !DILocation(line: 180, column: 30, scope: !152, inlinedAt: !1606)
!1608 = !DILocation(line: 180, column: 41, scope: !152, inlinedAt: !1606)
!1609 = !DILocation(line: 182, column: 10, scope: !152, inlinedAt: !1606)
!1610 = !DILocation(line: 210, column: 7, scope: !152, inlinedAt: !1606)
!1611 = !DILocation(line: 211, column: 10, scope: !152, inlinedAt: !1606)
!1612 = !DILocation(line: 51, column: 9, scope: !1389, inlinedAt: !1603)
!1613 = !DILocation(line: 51, column: 5, scope: !1389, inlinedAt: !1603)
!1614 = !DILocation(line: 52, column: 7, scope: !1378, inlinedAt: !1603)
!1615 = !DILocation(line: 52, column: 14, scope: !1378, inlinedAt: !1603)
!1616 = !DILocation(line: 52, column: 17, scope: !1378, inlinedAt: !1603)
!1617 = !DILocation(line: 53, column: 7, scope: !1378, inlinedAt: !1603)
!1618 = !DILocation(line: 53, column: 14, scope: !1378, inlinedAt: !1603)
!1619 = !DILocation(line: 53, column: 17, scope: !1378, inlinedAt: !1603)
!1620 = !DILocation(line: 54, column: 3, scope: !1378, inlinedAt: !1603)
!1621 = !DILocation(line: 83, column: 5, scope: !1598, inlinedAt: !1591)
!1622 = !DILocation(line: 76, column: 10, scope: !1586, inlinedAt: !1591)
!1623 = !DILocation(line: 85, column: 17, scope: !1624, inlinedAt: !1591)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !133, line: 85, column: 3)
!1625 = distinct !DILexicalBlock(scope: !1586, file: !133, line: 85, column: 3)
!1626 = !DILocation(line: 85, column: 3, scope: !1625, inlinedAt: !1591)
!1627 = !DILocation(line: 87, column: 14, scope: !1628, inlinedAt: !1591)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !133, line: 87, column: 11)
!1629 = distinct !DILexicalBlock(scope: !1624, file: !133, line: 86, column: 5)
!1630 = !DILocation(line: 87, column: 18, scope: !1628, inlinedAt: !1591)
!1631 = !DILocation(line: 87, column: 21, scope: !1628, inlinedAt: !1591)
!1632 = !DILocation(line: 87, column: 33, scope: !1628, inlinedAt: !1591)
!1633 = !DILocation(line: 87, column: 25, scope: !1628, inlinedAt: !1591)
!1634 = !DILocation(line: 87, column: 11, scope: !1629, inlinedAt: !1591)
!1635 = !DILocation(line: 90, column: 46, scope: !1629, inlinedAt: !1591)
!1636 = !DILocation(line: 48, column: 24, scope: !1378, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 90, column: 7, scope: !1629, inlinedAt: !1591)
!1638 = !DILocation(line: 48, column: 35, scope: !1378, inlinedAt: !1637)
!1639 = !DILocation(line: 50, column: 16, scope: !1389, inlinedAt: !1637)
!1640 = !DILocation(line: 50, column: 13, scope: !1389, inlinedAt: !1637)
!1641 = !DILocation(line: 50, column: 7, scope: !1378, inlinedAt: !1637)
!1642 = !DILocation(line: 180, column: 19, scope: !152, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 51, column: 11, scope: !1389, inlinedAt: !1637)
!1644 = !DILocation(line: 180, column: 30, scope: !152, inlinedAt: !1643)
!1645 = !DILocation(line: 180, column: 41, scope: !152, inlinedAt: !1643)
!1646 = !DILocation(line: 182, column: 10, scope: !152, inlinedAt: !1643)
!1647 = !DILocation(line: 184, column: 9, scope: !1401, inlinedAt: !1643)
!1648 = !DILocation(line: 184, column: 7, scope: !152, inlinedAt: !1643)
!1649 = !DILocation(line: 186, column: 13, scope: !1404, inlinedAt: !1643)
!1650 = !DILocation(line: 186, column: 11, scope: !1405, inlinedAt: !1643)
!1651 = !DILocation(line: 205, column: 11, scope: !1408, inlinedAt: !1643)
!1652 = !DILocation(line: 204, column: 11, scope: !1409, inlinedAt: !1643)
!1653 = !DILocation(line: 206, column: 9, scope: !1408, inlinedAt: !1643)
!1654 = !DILocation(line: 207, column: 14, scope: !1409, inlinedAt: !1643)
!1655 = !DILocation(line: 207, column: 18, scope: !1409, inlinedAt: !1643)
!1656 = !DILocation(line: 207, column: 9, scope: !1409, inlinedAt: !1643)
!1657 = !DILocation(line: 210, column: 7, scope: !152, inlinedAt: !1643)
!1658 = !DILocation(line: 211, column: 25, scope: !152, inlinedAt: !1643)
!1659 = !DILocation(line: 211, column: 10, scope: !152, inlinedAt: !1643)
!1660 = !DILocation(line: 51, column: 9, scope: !1389, inlinedAt: !1637)
!1661 = !DILocation(line: 51, column: 5, scope: !1389, inlinedAt: !1637)
!1662 = !DILocation(line: 52, column: 7, scope: !1378, inlinedAt: !1637)
!1663 = !DILocation(line: 52, column: 14, scope: !1378, inlinedAt: !1637)
!1664 = !DILocation(line: 52, column: 17, scope: !1378, inlinedAt: !1637)
!1665 = !DILocation(line: 53, column: 7, scope: !1378, inlinedAt: !1637)
!1666 = !DILocation(line: 53, column: 14, scope: !1378, inlinedAt: !1637)
!1667 = !DILocation(line: 53, column: 17, scope: !1378, inlinedAt: !1637)
!1668 = !DILocation(line: 54, column: 3, scope: !1378, inlinedAt: !1637)
!1669 = !DILocation(line: 91, column: 5, scope: !1629, inlinedAt: !1591)
!1670 = !DILocation(line: 85, column: 22, scope: !1624, inlinedAt: !1591)
!1671 = distinct !{!1671, !1672, !1673}
!1672 = !DILocation(line: 85, column: 3, scope: !1625)
!1673 = !DILocation(line: 91, column: 5, scope: !1625)
!1674 = !DILocation(line: 93, column: 10, scope: !1675, inlinedAt: !1591)
!1675 = distinct !DILexicalBlock(scope: !1586, file: !133, line: 93, column: 7)
!1676 = !DILocation(line: 93, column: 14, scope: !1675, inlinedAt: !1591)
!1677 = !DILocation(line: 93, column: 17, scope: !1675, inlinedAt: !1591)
!1678 = !DILocation(line: 93, column: 7, scope: !1586, inlinedAt: !1591)
!1679 = !DILocation(line: 94, column: 31, scope: !1675, inlinedAt: !1591)
!1680 = !DILocation(line: 48, column: 24, scope: !1378, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 94, column: 5, scope: !1675, inlinedAt: !1591)
!1682 = !DILocation(line: 48, column: 35, scope: !1378, inlinedAt: !1681)
!1683 = !DILocation(line: 50, column: 16, scope: !1389, inlinedAt: !1681)
!1684 = !DILocation(line: 50, column: 13, scope: !1389, inlinedAt: !1681)
!1685 = !DILocation(line: 50, column: 7, scope: !1378, inlinedAt: !1681)
!1686 = !DILocation(line: 180, column: 19, scope: !152, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 51, column: 11, scope: !1389, inlinedAt: !1681)
!1688 = !DILocation(line: 180, column: 30, scope: !152, inlinedAt: !1687)
!1689 = !DILocation(line: 180, column: 41, scope: !152, inlinedAt: !1687)
!1690 = !DILocation(line: 182, column: 10, scope: !152, inlinedAt: !1687)
!1691 = !DILocation(line: 184, column: 9, scope: !1401, inlinedAt: !1687)
!1692 = !DILocation(line: 184, column: 7, scope: !152, inlinedAt: !1687)
!1693 = !DILocation(line: 186, column: 13, scope: !1404, inlinedAt: !1687)
!1694 = !DILocation(line: 186, column: 11, scope: !1405, inlinedAt: !1687)
!1695 = !DILocation(line: 205, column: 11, scope: !1408, inlinedAt: !1687)
!1696 = !DILocation(line: 204, column: 11, scope: !1409, inlinedAt: !1687)
!1697 = !DILocation(line: 206, column: 9, scope: !1408, inlinedAt: !1687)
!1698 = !DILocation(line: 207, column: 14, scope: !1409, inlinedAt: !1687)
!1699 = !DILocation(line: 207, column: 18, scope: !1409, inlinedAt: !1687)
!1700 = !DILocation(line: 207, column: 9, scope: !1409, inlinedAt: !1687)
!1701 = !DILocation(line: 210, column: 7, scope: !152, inlinedAt: !1687)
!1702 = !DILocation(line: 211, column: 25, scope: !152, inlinedAt: !1687)
!1703 = !DILocation(line: 211, column: 10, scope: !152, inlinedAt: !1687)
!1704 = !DILocation(line: 51, column: 9, scope: !1389, inlinedAt: !1681)
!1705 = !DILocation(line: 51, column: 5, scope: !1389, inlinedAt: !1681)
!1706 = !DILocation(line: 52, column: 7, scope: !1378, inlinedAt: !1681)
!1707 = !DILocation(line: 52, column: 3, scope: !1378, inlinedAt: !1681)
!1708 = !DILocation(line: 52, column: 14, scope: !1378, inlinedAt: !1681)
!1709 = !DILocation(line: 52, column: 17, scope: !1378, inlinedAt: !1681)
!1710 = !DILocation(line: 53, column: 7, scope: !1378, inlinedAt: !1681)
!1711 = !DILocation(line: 53, column: 14, scope: !1378, inlinedAt: !1681)
!1712 = !DILocation(line: 53, column: 17, scope: !1378, inlinedAt: !1681)
!1713 = !DILocation(line: 54, column: 3, scope: !1378, inlinedAt: !1681)
!1714 = !DILocation(line: 94, column: 5, scope: !1675, inlinedAt: !1591)
!1715 = !DILocation(line: 96, column: 9, scope: !1586, inlinedAt: !1591)
!1716 = !DILocation(line: 96, column: 3, scope: !1586, inlinedAt: !1591)
!1717 = !DILocation(line: 310, column: 3, scope: !175)
!1718 = !DILocation(line: 305, column: 5, scope: !1583)
!1719 = !DILocation(line: 311, column: 19, scope: !175)
!1720 = !DILocation(line: 311, column: 30, scope: !175)
!1721 = !DILocation(line: 311, column: 9, scope: !175)
!1722 = !DILocation(line: 311, column: 7, scope: !175)
!1723 = !DILocation(line: 312, column: 27, scope: !175)
!1724 = !DILocation(line: 312, column: 33, scope: !175)
!1725 = !DILocation(line: 312, column: 18, scope: !175)
!1726 = !DILocation(line: 313, column: 1, scope: !175)
!1727 = !DILocation(line: 312, column: 21, scope: !175)
!1728 = distinct !DISubprogram(name: "compare_ranges", scope: !133, file: !133, line: 61, type: !1729, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !1733)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!54, !1731, !1731}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1733 = !{!1734, !1735, !1736, !1737}
!1734 = !DILocalVariable(name: "a", arg: 1, scope: !1728, file: !133, line: 61, type: !1731)
!1735 = !DILocalVariable(name: "b", arg: 2, scope: !1728, file: !133, line: 61, type: !1731)
!1736 = !DILocalVariable(name: "a_start", scope: !1728, file: !133, line: 63, type: !54)
!1737 = !DILocalVariable(name: "b_start", scope: !1728, file: !133, line: 64, type: !54)
!1738 = !DILocation(line: 61, column: 29, scope: !1728)
!1739 = !DILocation(line: 61, column: 44, scope: !1728)
!1740 = !DILocation(line: 63, column: 56, scope: !1728)
!1741 = !DILocation(line: 63, column: 17, scope: !1728)
!1742 = !DILocation(line: 63, column: 7, scope: !1728)
!1743 = !DILocation(line: 64, column: 56, scope: !1728)
!1744 = !DILocation(line: 64, column: 17, scope: !1728)
!1745 = !DILocation(line: 64, column: 7, scope: !1728)
!1746 = !DILocation(line: 65, column: 18, scope: !1728)
!1747 = !DILocation(line: 65, column: 43, scope: !1728)
!1748 = !DILocation(line: 65, column: 10, scope: !1728)
!1749 = !DILocation(line: 65, column: 3, scope: !1728)
!1750 = distinct !DISubprogram(name: "reset_fields", scope: !133, file: !133, line: 316, type: !727, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !132, variables: !211)
!1751 = !DILocation(line: 318, column: 9, scope: !1750)
!1752 = !DILocation(line: 319, column: 19, scope: !1750)
!1753 = !DILocation(line: 320, column: 9, scope: !1750)
!1754 = !DILocation(line: 320, column: 3, scope: !1750)
!1755 = !DILocation(line: 321, column: 7, scope: !1750)
!1756 = !DILocation(line: 322, column: 1, scope: !1750)
!1757 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !220, file: !220, line: 41, type: !85, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !215, variables: !1758)
!1758 = !{!1759}
!1759 = !DILocalVariable(name: "file", arg: 1, scope: !1757, file: !220, line: 41, type: !87)
!1760 = !DILocation(line: 41, column: 41, scope: !1757)
!1761 = !DILocation(line: 43, column: 13, scope: !1757)
!1762 = !DILocation(line: 44, column: 1, scope: !1757)
!1763 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !220, file: !220, line: 78, type: !1764, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !215, variables: !1766)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{null, !61}
!1766 = !{!1767}
!1767 = !DILocalVariable(name: "ignore", arg: 1, scope: !1763, file: !220, line: 78, type: !61)
!1768 = !DILocation(line: 78, column: 37, scope: !1763)
!1769 = !DILocation(line: 80, column: 16, scope: !1763)
!1770 = !{!1771, !1771, i64 0}
!1771 = !{!"_Bool", !720, i64 0}
!1772 = !DILocation(line: 81, column: 1, scope: !1763)
!1773 = distinct !DISubprogram(name: "close_stdout", scope: !220, file: !220, line: 107, type: !727, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !215, variables: !1774)
!1774 = !{!1775}
!1775 = !DILocalVariable(name: "write_error", scope: !1776, file: !220, line: 112, type: !87)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !220, line: 111, column: 5)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !220, line: 109, column: 7)
!1778 = !DILocation(line: 109, column: 21, scope: !1777)
!1779 = !DILocation(line: 109, column: 7, scope: !1777)
!1780 = !DILocation(line: 109, column: 29, scope: !1777)
!1781 = !DILocation(line: 110, column: 7, scope: !1777)
!1782 = !DILocation(line: 110, column: 12, scope: !1777)
!1783 = !{i8 0, i8 2}
!1784 = !DILocation(line: 114, column: 19, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1776, file: !220, line: 113, column: 11)
!1786 = !DILocation(line: 110, column: 25, scope: !1777)
!1787 = !DILocation(line: 110, column: 28, scope: !1777)
!1788 = !DILocation(line: 110, column: 34, scope: !1777)
!1789 = !DILocation(line: 109, column: 7, scope: !1773)
!1790 = !DILocation(line: 112, column: 33, scope: !1776)
!1791 = !DILocation(line: 112, column: 19, scope: !1776)
!1792 = !DILocation(line: 113, column: 11, scope: !1785)
!1793 = !DILocation(line: 113, column: 11, scope: !1776)
!1794 = !DILocation(line: 114, column: 36, scope: !1785)
!1795 = !DILocation(line: 114, column: 9, scope: !1785)
!1796 = !DILocation(line: 117, column: 9, scope: !1785)
!1797 = !DILocation(line: 119, column: 14, scope: !1776)
!1798 = !DILocation(line: 119, column: 7, scope: !1776)
!1799 = !DILocation(line: 122, column: 22, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1773, file: !220, line: 122, column: 8)
!1801 = !DILocation(line: 122, column: 8, scope: !1800)
!1802 = !DILocation(line: 122, column: 30, scope: !1800)
!1803 = !DILocation(line: 122, column: 8, scope: !1773)
!1804 = !DILocation(line: 123, column: 13, scope: !1800)
!1805 = !DILocation(line: 123, column: 6, scope: !1800)
!1806 = !DILocation(line: 124, column: 1, scope: !1773)
!1807 = distinct !DISubprogram(name: "fdadvise", scope: !1808, file: !1808, line: 31, type: !1809, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !642, variables: !1813)
!1808 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1809 = !DISubroutineType(types: !1810)
!1810 = !{null, !54, !1811, !1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1100, line: 57, baseType: !926)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !31, line: 52, baseType: !30)
!1813 = !{!1814, !1815, !1816, !1817, !1818}
!1814 = !DILocalVariable(name: "fd", arg: 1, scope: !1807, file: !1808, line: 31, type: !54)
!1815 = !DILocalVariable(name: "offset", arg: 2, scope: !1807, file: !1808, line: 31, type: !1811)
!1816 = !DILocalVariable(name: "len", arg: 3, scope: !1807, file: !1808, line: 31, type: !1811)
!1817 = !DILocalVariable(name: "advice", arg: 4, scope: !1807, file: !1808, line: 31, type: !1812)
!1818 = !DILocalVariable(name: "__x", scope: !1819, file: !1808, line: 34, type: !54)
!1819 = distinct !DILexicalBlock(scope: !1807, file: !1808, line: 34, column: 3)
!1820 = !DILocation(line: 31, column: 15, scope: !1807)
!1821 = !DILocation(line: 31, column: 25, scope: !1807)
!1822 = !DILocation(line: 31, column: 39, scope: !1807)
!1823 = !DILocation(line: 31, column: 54, scope: !1807)
!1824 = !DILocation(line: 34, column: 3, scope: !1819)
!1825 = !DILocation(line: 36, column: 1, scope: !1807)
!1826 = distinct !DISubprogram(name: "fadvise", scope: !1808, file: !1808, line: 39, type: !1827, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !642, variables: !1869)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null, !1829, !1812}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !898, line: 7, baseType: !1831)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !900, line: 241, size: 1728, elements: !1832)
!1832 = !{!1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1831, file: !900, line: 242, baseType: !54, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1831, file: !900, line: 247, baseType: !40, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1831, file: !900, line: 248, baseType: !40, size: 64, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1831, file: !900, line: 249, baseType: !40, size: 64, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1831, file: !900, line: 250, baseType: !40, size: 64, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1831, file: !900, line: 251, baseType: !40, size: 64, offset: 320)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1831, file: !900, line: 252, baseType: !40, size: 64, offset: 384)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1831, file: !900, line: 253, baseType: !40, size: 64, offset: 448)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1831, file: !900, line: 254, baseType: !40, size: 64, offset: 512)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1831, file: !900, line: 256, baseType: !40, size: 64, offset: 576)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1831, file: !900, line: 257, baseType: !40, size: 64, offset: 640)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1831, file: !900, line: 258, baseType: !40, size: 64, offset: 704)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1831, file: !900, line: 260, baseType: !1846, size: 64, offset: 768)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !900, line: 156, size: 192, elements: !1848)
!1848 = !{!1849, !1850, !1852}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1847, file: !900, line: 157, baseType: !1846, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1847, file: !900, line: 158, baseType: !1851, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1847, file: !900, line: 162, baseType: !54, size: 32, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1831, file: !900, line: 262, baseType: !1851, size: 64, offset: 832)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1831, file: !900, line: 264, baseType: !54, size: 32, offset: 896)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1831, file: !900, line: 268, baseType: !54, size: 32, offset: 928)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1831, file: !900, line: 270, baseType: !926, size: 64, offset: 960)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1831, file: !900, line: 274, baseType: !164, size: 16, offset: 1024)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1831, file: !900, line: 275, baseType: !931, size: 8, offset: 1040)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1831, file: !900, line: 276, baseType: !933, size: 8, offset: 1048)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1831, file: !900, line: 280, baseType: !937, size: 64, offset: 1088)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1831, file: !900, line: 289, baseType: !940, size: 64, offset: 1152)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1831, file: !900, line: 297, baseType: !42, size: 64, offset: 1216)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1831, file: !900, line: 298, baseType: !42, size: 64, offset: 1280)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1831, file: !900, line: 299, baseType: !42, size: 64, offset: 1344)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1831, file: !900, line: 300, baseType: !42, size: 64, offset: 1408)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1831, file: !900, line: 302, baseType: !45, size: 64, offset: 1472)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1831, file: !900, line: 303, baseType: !54, size: 32, offset: 1536)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1831, file: !900, line: 305, baseType: !948, size: 160, offset: 1568)
!1869 = !{!1870, !1871}
!1870 = !DILocalVariable(name: "fp", arg: 1, scope: !1826, file: !1808, line: 39, type: !1829)
!1871 = !DILocalVariable(name: "advice", arg: 2, scope: !1826, file: !1808, line: 39, type: !1812)
!1872 = !DILocation(line: 39, column: 16, scope: !1826)
!1873 = !DILocation(line: 39, column: 30, scope: !1826)
!1874 = !DILocation(line: 41, column: 7, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1826, file: !1808, line: 41, column: 7)
!1876 = !DILocation(line: 41, column: 7, scope: !1826)
!1877 = !DILocation(line: 42, column: 15, scope: !1875)
!1878 = !DILocation(line: 31, column: 15, scope: !1807, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 42, column: 5, scope: !1875)
!1880 = !DILocation(line: 31, column: 25, scope: !1807, inlinedAt: !1879)
!1881 = !DILocation(line: 31, column: 39, scope: !1807, inlinedAt: !1879)
!1882 = !DILocation(line: 31, column: 54, scope: !1807, inlinedAt: !1879)
!1883 = !DILocation(line: 34, column: 3, scope: !1819, inlinedAt: !1879)
!1884 = !DILocation(line: 42, column: 5, scope: !1875)
!1885 = !DILocation(line: 43, column: 1, scope: !1826)
!1886 = distinct !DISubprogram(name: "getndelim2", scope: !1887, file: !1887, line: 71, type: !1888, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !645, variables: !1930)
!1887 = !DIFile(filename: "lib/getndelim2.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!1099, !55, !155, !45, !45, !54, !54, !1890}
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !898, line: 7, baseType: !1892)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !900, line: 241, size: 1728, elements: !1893)
!1893 = !{!1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1892, file: !900, line: 242, baseType: !54, size: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1892, file: !900, line: 247, baseType: !40, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1892, file: !900, line: 248, baseType: !40, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1892, file: !900, line: 249, baseType: !40, size: 64, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1892, file: !900, line: 250, baseType: !40, size: 64, offset: 256)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1892, file: !900, line: 251, baseType: !40, size: 64, offset: 320)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1892, file: !900, line: 252, baseType: !40, size: 64, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1892, file: !900, line: 253, baseType: !40, size: 64, offset: 448)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1892, file: !900, line: 254, baseType: !40, size: 64, offset: 512)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1892, file: !900, line: 256, baseType: !40, size: 64, offset: 576)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1892, file: !900, line: 257, baseType: !40, size: 64, offset: 640)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1892, file: !900, line: 258, baseType: !40, size: 64, offset: 704)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1892, file: !900, line: 260, baseType: !1907, size: 64, offset: 768)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !900, line: 156, size: 192, elements: !1909)
!1909 = !{!1910, !1911, !1913}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1908, file: !900, line: 157, baseType: !1907, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1908, file: !900, line: 158, baseType: !1912, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1908, file: !900, line: 162, baseType: !54, size: 32, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1892, file: !900, line: 262, baseType: !1912, size: 64, offset: 832)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1892, file: !900, line: 264, baseType: !54, size: 32, offset: 896)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1892, file: !900, line: 268, baseType: !54, size: 32, offset: 928)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1892, file: !900, line: 270, baseType: !926, size: 64, offset: 960)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1892, file: !900, line: 274, baseType: !164, size: 16, offset: 1024)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1892, file: !900, line: 275, baseType: !931, size: 8, offset: 1040)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1892, file: !900, line: 276, baseType: !933, size: 8, offset: 1048)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1892, file: !900, line: 280, baseType: !937, size: 64, offset: 1088)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1892, file: !900, line: 289, baseType: !940, size: 64, offset: 1152)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1892, file: !900, line: 297, baseType: !42, size: 64, offset: 1216)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1892, file: !900, line: 298, baseType: !42, size: 64, offset: 1280)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1892, file: !900, line: 299, baseType: !42, size: 64, offset: 1344)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1892, file: !900, line: 300, baseType: !42, size: 64, offset: 1408)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1892, file: !900, line: 302, baseType: !45, size: 64, offset: 1472)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1892, file: !900, line: 303, baseType: !54, size: 32, offset: 1536)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1892, file: !900, line: 305, baseType: !948, size: 160, offset: 1568)
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1946, !1947, !1948, !1953, !1956, !1957, !1960}
!1931 = !DILocalVariable(name: "lineptr", arg: 1, scope: !1886, file: !1887, line: 71, type: !55)
!1932 = !DILocalVariable(name: "linesize", arg: 2, scope: !1886, file: !1887, line: 71, type: !155)
!1933 = !DILocalVariable(name: "offset", arg: 3, scope: !1886, file: !1887, line: 71, type: !45)
!1934 = !DILocalVariable(name: "nmax", arg: 4, scope: !1886, file: !1887, line: 71, type: !45)
!1935 = !DILocalVariable(name: "delim1", arg: 5, scope: !1886, file: !1887, line: 72, type: !54)
!1936 = !DILocalVariable(name: "delim2", arg: 6, scope: !1886, file: !1887, line: 72, type: !54)
!1937 = !DILocalVariable(name: "stream", arg: 7, scope: !1886, file: !1887, line: 72, type: !1890)
!1938 = !DILocalVariable(name: "nbytes_avail", scope: !1886, file: !1887, line: 74, type: !45)
!1939 = !DILocalVariable(name: "read_pos", scope: !1886, file: !1887, line: 75, type: !40)
!1940 = !DILocalVariable(name: "bytes_stored", scope: !1886, file: !1887, line: 76, type: !1099)
!1941 = !DILocalVariable(name: "ptr", scope: !1886, file: !1887, line: 77, type: !40)
!1942 = !DILocalVariable(name: "size", scope: !1886, file: !1887, line: 78, type: !45)
!1943 = !DILocalVariable(name: "found_delimiter", scope: !1886, file: !1887, line: 79, type: !61)
!1944 = !DILocalVariable(name: "c", scope: !1945, file: !1887, line: 112, type: !54)
!1945 = distinct !DILexicalBlock(scope: !1886, file: !1887, line: 108, column: 5)
!1946 = !DILocalVariable(name: "buffer", scope: !1945, file: !1887, line: 113, type: !87)
!1947 = !DILocalVariable(name: "buffer_len", scope: !1945, file: !1887, line: 114, type: !45)
!1948 = !DILocalVariable(name: "end", scope: !1949, file: !1887, line: 121, type: !87)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !1887, line: 120, column: 13)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !1887, line: 119, column: 15)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !1887, line: 118, column: 9)
!1952 = distinct !DILexicalBlock(scope: !1945, file: !1887, line: 117, column: 11)
!1953 = !DILocalVariable(name: "newsize", scope: !1954, file: !1887, line: 153, type: !45)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !1887, line: 150, column: 9)
!1955 = distinct !DILexicalBlock(scope: !1945, file: !1887, line: 149, column: 11)
!1956 = !DILocalVariable(name: "newptr", scope: !1954, file: !1887, line: 154, type: !40)
!1957 = !DILocalVariable(name: "newsizemax", scope: !1958, file: !1887, line: 166, type: !45)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !1887, line: 165, column: 13)
!1959 = distinct !DILexicalBlock(scope: !1954, file: !1887, line: 164, column: 15)
!1960 = !DILocalVariable(name: "copy_len", scope: !1961, file: !1887, line: 186, type: !45)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !1887, line: 185, column: 9)
!1962 = distinct !DILexicalBlock(scope: !1945, file: !1887, line: 184, column: 11)
!1963 = !DILocation(line: 71, column: 20, scope: !1886)
!1964 = !DILocation(line: 71, column: 37, scope: !1886)
!1965 = !DILocation(line: 71, column: 54, scope: !1886)
!1966 = !DILocation(line: 71, column: 69, scope: !1886)
!1967 = !DILocation(line: 72, column: 17, scope: !1886)
!1968 = !DILocation(line: 72, column: 29, scope: !1886)
!1969 = !DILocation(line: 72, column: 43, scope: !1886)
!1970 = !DILocation(line: 76, column: 11, scope: !1886)
!1971 = !DILocation(line: 77, column: 15, scope: !1886)
!1972 = !DILocation(line: 77, column: 9, scope: !1886)
!1973 = !DILocation(line: 78, column: 17, scope: !1886)
!1974 = !DILocation(line: 78, column: 10, scope: !1886)
!1975 = !DILocation(line: 81, column: 8, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1886, file: !1887, line: 81, column: 7)
!1977 = !DILocation(line: 81, column: 7, scope: !1886)
!1978 = !DILocation(line: 83, column: 19, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1976, file: !1887, line: 82, column: 5)
!1980 = !DILocation(line: 83, column: 14, scope: !1979)
!1981 = !DILocation(line: 84, column: 13, scope: !1979)
!1982 = !DILocation(line: 85, column: 12, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !1887, line: 85, column: 11)
!1984 = !DILocation(line: 85, column: 11, scope: !1979)
!1985 = !DILocation(line: 89, column: 12, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1886, file: !1887, line: 89, column: 7)
!1987 = !DILocation(line: 89, column: 7, scope: !1886)
!1988 = !DILocation(line: 92, column: 23, scope: !1886)
!1989 = !DILocation(line: 74, column: 10, scope: !1886)
!1990 = !DILocation(line: 75, column: 9, scope: !1886)
!1991 = !DILocation(line: 95, column: 20, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1886, file: !1887, line: 95, column: 7)
!1993 = !DILocation(line: 95, column: 33, scope: !1992)
!1994 = !DILocation(line: 95, column: 25, scope: !1992)
!1995 = !DILocation(line: 93, column: 18, scope: !1886)
!1996 = !DILocation(line: 99, column: 14, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1886, file: !1887, line: 99, column: 7)
!1998 = !DILocation(line: 101, column: 19, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1997, file: !1887, line: 101, column: 12)
!2000 = !DILocation(line: 101, column: 12, scope: !1997)
!2001 = !DILocation(line: 99, column: 7, scope: !1886)
!2002 = !DILocation(line: 79, column: 8, scope: !1886)
!2003 = !DILocation(line: 107, column: 3, scope: !1886)
!2004 = distinct !{!2004, !2003, !2005}
!2005 = !DILocation(line: 202, column: 26, scope: !1886)
!2006 = !DILocation(line: 112, column: 11, scope: !1945)
!2007 = !DILocation(line: 114, column: 7, scope: !1945)
!2008 = !DILocation(line: 114, column: 14, scope: !1945)
!2009 = !DILocation(line: 116, column: 16, scope: !1945)
!2010 = !DILocation(line: 113, column: 19, scope: !1945)
!2011 = !DILocation(line: 117, column: 11, scope: !1952)
!2012 = !DILocation(line: 117, column: 11, scope: !1945)
!2013 = !DILocation(line: 119, column: 15, scope: !1951)
!2014 = !DILocation(line: 121, column: 33, scope: !1949)
!2015 = !DILocation(line: 121, column: 27, scope: !1949)
!2016 = !DILocation(line: 122, column: 19, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1949, file: !1887, line: 122, column: 19)
!2018 = !DILocation(line: 122, column: 19, scope: !1949)
!2019 = !DILocation(line: 124, column: 36, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2017, file: !1887, line: 123, column: 17)
!2021 = !DILocation(line: 124, column: 45, scope: !2020)
!2022 = !DILocation(line: 124, column: 30, scope: !2020)
!2023 = !DILocation(line: 126, column: 17, scope: !2020)
!2024 = !DILocalVariable(name: "__fp", arg: 1, scope: !2025, file: !995, line: 63, type: !1890)
!2025 = distinct !DISubprogram(name: "getc_unlocked", scope: !995, file: !995, line: 63, type: !2026, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !645, variables: !2028)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!54, !1890}
!2028 = !{!2024}
!2029 = !DILocation(line: 63, column: 22, scope: !2025, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 131, column: 15, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1952, file: !1887, line: 130, column: 9)
!2032 = !DILocation(line: 65, column: 10, scope: !2025, inlinedAt: !2030)
!2033 = !DILocation(line: 132, column: 15, scope: !2031)
!2034 = !DILocation(line: 132, column: 17, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2031, file: !1887, line: 132, column: 15)
!2036 = !DILocation(line: 140, column: 17, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2031, file: !1887, line: 140, column: 15)
!2038 = !DILocation(line: 140, column: 32, scope: !2037)
!2039 = !DILocation(line: 140, column: 27, scope: !2037)
!2040 = !DILocation(line: 142, column: 22, scope: !2031)
!2041 = !DILocation(line: 149, column: 26, scope: !1955)
!2042 = !DILocation(line: 149, column: 37, scope: !1955)
!2043 = !DILocation(line: 149, column: 24, scope: !1955)
!2044 = !DILocation(line: 149, column: 49, scope: !1955)
!2045 = !DILocation(line: 149, column: 41, scope: !1955)
!2046 = !DILocation(line: 153, column: 33, scope: !1954)
!2047 = !DILocation(line: 153, column: 52, scope: !1954)
!2048 = !DILocation(line: 153, column: 68, scope: !1954)
!2049 = !DILocation(line: 153, column: 28, scope: !1954)
!2050 = !DILocation(line: 153, column: 18, scope: !1954)
!2051 = !DILocation(line: 158, column: 35, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1954, file: !1887, line: 158, column: 15)
!2053 = !DILocation(line: 158, column: 23, scope: !2052)
!2054 = !DILocation(line: 158, column: 42, scope: !2052)
!2055 = !DILocation(line: 159, column: 40, scope: !2052)
!2056 = !DILocation(line: 159, column: 53, scope: !2052)
!2057 = !DILocation(line: 158, column: 15, scope: !1954)
!2058 = !DILocation(line: 161, column: 23, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !1954, file: !1887, line: 161, column: 15)
!2060 = !DILocation(line: 161, column: 44, scope: !2059)
!2061 = !DILocation(line: 161, column: 33, scope: !2059)
!2062 = !DILocation(line: 164, column: 44, scope: !1959)
!2063 = !DILocation(line: 164, column: 34, scope: !1959)
!2064 = !DILocation(line: 164, column: 15, scope: !1954)
!2065 = !DILocation(line: 166, column: 22, scope: !1958)
!2066 = !DILocation(line: 167, column: 24, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1958, file: !1887, line: 167, column: 19)
!2068 = !DILocation(line: 201, column: 5, scope: !1886)
!2069 = !DILocation(line: 172, column: 34, scope: !1954)
!2070 = !DILocation(line: 173, column: 20, scope: !1954)
!2071 = !DILocation(line: 154, column: 17, scope: !1954)
!2072 = !DILocation(line: 174, column: 16, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !1954, file: !1887, line: 174, column: 15)
!2074 = !DILocation(line: 178, column: 42, scope: !1954)
!2075 = !DILocation(line: 184, column: 13, scope: !1962)
!2076 = !DILocation(line: 184, column: 11, scope: !1945)
!2077 = !DILocation(line: 186, column: 42, scope: !1961)
!2078 = !DILocation(line: 186, column: 18, scope: !1961)
!2079 = !DILocation(line: 187, column: 15, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1961, file: !1887, line: 187, column: 15)
!2081 = !DILocation(line: 187, column: 26, scope: !2080)
!2082 = !DILocation(line: 187, column: 15, scope: !1961)
!2083 = !DILocation(line: 189, column: 15, scope: !1961)
!2084 = !DILocation(line: 190, column: 13, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1961, file: !1887, line: 189, column: 15)
!2086 = !DILocation(line: 192, column: 25, scope: !2085)
!2087 = !DILocation(line: 192, column: 23, scope: !2085)
!2088 = !DILocation(line: 193, column: 20, scope: !1961)
!2089 = !DILocation(line: 194, column: 24, scope: !1961)
!2090 = !DILocation(line: 195, column: 9, scope: !1961)
!2091 = !DILocation(line: 199, column: 18, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !1945, file: !1887, line: 199, column: 11)
!2093 = !DILocation(line: 199, column: 40, scope: !2092)
!2094 = !DILocation(line: 199, column: 21, scope: !2092)
!2095 = !DILocation(line: 199, column: 11, scope: !1945)
!2096 = !DILocation(line: 202, column: 11, scope: !1886)
!2097 = !DILocation(line: 201, column: 5, scope: !1945)
!2098 = !DILocation(line: 135, column: 28, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !1887, line: 135, column: 19)
!2100 = distinct !DILexicalBlock(scope: !2035, file: !1887, line: 133, column: 13)
!2101 = !DILocation(line: 214, column: 12, scope: !1886)
!2102 = !DILocation(line: 215, column: 13, scope: !1886)
!2103 = !DILocation(line: 216, column: 10, scope: !1886)
!2104 = !DILocation(line: 206, column: 13, scope: !1886)
!2105 = !DILocation(line: 208, column: 34, scope: !1886)
!2106 = !DILocation(line: 208, column: 27, scope: !1886)
!2107 = !DILocation(line: 217, column: 1, scope: !1886)
!2108 = distinct !DISubprogram(name: "memchr2", scope: !2109, file: !2109, line: 36, type: !2110, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !648, variables: !2112)
!2109 = !DIFile(filename: "lib/memchr2.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!42, !1731, !54, !54, !45}
!2112 = !{!2113, !2114, !2115, !2116, !2117, !2118, !2119, !2123, !2124, !2125, !2126, !2127, !2128, !2130}
!2113 = !DILocalVariable(name: "s", arg: 1, scope: !2108, file: !2109, line: 36, type: !1731)
!2114 = !DILocalVariable(name: "c1_in", arg: 2, scope: !2108, file: !2109, line: 36, type: !54)
!2115 = !DILocalVariable(name: "c2_in", arg: 3, scope: !2108, file: !2109, line: 36, type: !54)
!2116 = !DILocalVariable(name: "n", arg: 4, scope: !2108, file: !2109, line: 36, type: !45)
!2117 = !DILocalVariable(name: "char_ptr", scope: !2108, file: !2109, line: 45, type: !653)
!2118 = !DILocalVariable(name: "void_ptr", scope: !2108, file: !2109, line: 46, type: !1731)
!2119 = !DILocalVariable(name: "longword_ptr", scope: !2108, file: !2109, line: 47, type: !2120)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2122)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "longword", scope: !2108, file: !2109, line: 43, baseType: !47)
!2123 = !DILocalVariable(name: "repeated_one", scope: !2108, file: !2109, line: 48, type: !2122)
!2124 = !DILocalVariable(name: "repeated_c1", scope: !2108, file: !2109, line: 49, type: !2122)
!2125 = !DILocalVariable(name: "repeated_c2", scope: !2108, file: !2109, line: 50, type: !2122)
!2126 = !DILocalVariable(name: "c1", scope: !2108, file: !2109, line: 51, type: !44)
!2127 = !DILocalVariable(name: "c2", scope: !2108, file: !2109, line: 52, type: !44)
!2128 = !DILocalVariable(name: "longword1", scope: !2129, file: !2109, line: 142, type: !2122)
!2129 = distinct !DILexicalBlock(scope: !2108, file: !2109, line: 141, column: 5)
!2130 = !DILocalVariable(name: "longword2", scope: !2129, file: !2109, line: 143, type: !2122)
!2131 = !DILocation(line: 36, column: 22, scope: !2108)
!2132 = !DILocation(line: 36, column: 29, scope: !2108)
!2133 = !DILocation(line: 36, column: 40, scope: !2108)
!2134 = !DILocation(line: 36, column: 54, scope: !2108)
!2135 = !DILocation(line: 57, column: 7, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2108, file: !2109, line: 57, column: 7)
!2137 = !DILocation(line: 57, column: 10, scope: !2136)
!2138 = !DILocation(line: 57, column: 7, scope: !2108)
!2139 = !DILocation(line: 58, column: 12, scope: !2136)
!2140 = !DILocation(line: 58, column: 5, scope: !2136)
!2141 = !DILocation(line: 46, column: 15, scope: !2108)
!2142 = !DILocation(line: 63, column: 10, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !2109, line: 62, column: 3)
!2144 = distinct !DILexicalBlock(scope: !2108, file: !2109, line: 62, column: 3)
!2145 = !DILocation(line: 63, column: 17, scope: !2143)
!2146 = !DILocation(line: 63, column: 38, scope: !2143)
!2147 = !DILocation(line: 63, column: 58, scope: !2143)
!2148 = !DILocation(line: 63, column: 14, scope: !2143)
!2149 = !DILocation(line: 62, column: 3, scope: !2144)
!2150 = !DILocation(line: 67, column: 11, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !2109, line: 67, column: 11)
!2152 = distinct !DILexicalBlock(scope: !2143, file: !2109, line: 65, column: 5)
!2153 = !DILocation(line: 45, column: 24, scope: !2108)
!2154 = !DILocation(line: 67, column: 21, scope: !2151)
!2155 = !DILocation(line: 67, column: 40, scope: !2151)
!2156 = !DILocation(line: 67, column: 27, scope: !2151)
!2157 = !DILocation(line: 69, column: 27, scope: !2152)
!2158 = !DILocation(line: 64, column: 8, scope: !2143)
!2159 = distinct !{!2159, !2149, !2160}
!2160 = !DILocation(line: 70, column: 5, scope: !2144)
!2161 = !DILocation(line: 72, column: 18, scope: !2108)
!2162 = !DILocation(line: 47, column: 19, scope: !2108)
!2163 = !DILocation(line: 48, column: 12, scope: !2108)
!2164 = !DILocation(line: 82, column: 26, scope: !2108)
!2165 = !DILocation(line: 82, column: 20, scope: !2108)
!2166 = !DILocation(line: 49, column: 12, scope: !2108)
!2167 = !DILocation(line: 84, column: 30, scope: !2108)
!2168 = !DILocation(line: 84, column: 15, scope: !2108)
!2169 = !DILocation(line: 50, column: 12, scope: !2108)
!2170 = !DILocation(line: 89, column: 34, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !2109, line: 87, column: 5)
!2172 = distinct !DILexicalBlock(scope: !2108, file: !2109, line: 86, column: 7)
!2173 = !DILocation(line: 89, column: 19, scope: !2171)
!2174 = !DILocation(line: 140, column: 12, scope: !2108)
!2175 = !DILocation(line: 140, column: 3, scope: !2108)
!2176 = !DILocation(line: 142, column: 28, scope: !2129)
!2177 = !DILocation(line: 142, column: 16, scope: !2129)
!2178 = !DILocation(line: 142, column: 42, scope: !2129)
!2179 = !DILocation(line: 143, column: 16, scope: !2129)
!2180 = !DILocation(line: 145, column: 25, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2129, file: !2109, line: 145, column: 11)
!2182 = !DILocation(line: 145, column: 43, scope: !2181)
!2183 = !DILocation(line: 145, column: 41, scope: !2181)
!2184 = !DILocation(line: 146, column: 13, scope: !2181)
!2185 = !DILocation(line: 147, column: 12, scope: !2181)
!2186 = !DILocation(line: 147, column: 35, scope: !2181)
!2187 = !DILocation(line: 149, column: 19, scope: !2129)
!2188 = !DILocation(line: 150, column: 9, scope: !2129)
!2189 = !DILocation(line: 145, column: 11, scope: !2129)
!2190 = distinct !{!2190, !2175, !2191}
!2191 = !DILocation(line: 151, column: 5, scope: !2108)
!2192 = !DILocation(line: 162, column: 12, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !2109, line: 162, column: 3)
!2194 = distinct !DILexicalBlock(scope: !2108, file: !2109, line: 162, column: 3)
!2195 = !DILocation(line: 162, column: 3, scope: !2194)
!2196 = !DILocation(line: 153, column: 14, scope: !2108)
!2197 = !DILocation(line: 164, column: 11, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !2109, line: 164, column: 11)
!2199 = distinct !DILexicalBlock(scope: !2193, file: !2109, line: 163, column: 5)
!2200 = !DILocation(line: 164, column: 21, scope: !2198)
!2201 = !DILocation(line: 164, column: 40, scope: !2198)
!2202 = !DILocation(line: 164, column: 27, scope: !2198)
!2203 = !DILocation(line: 162, column: 17, scope: !2193)
!2204 = !DILocation(line: 162, column: 22, scope: !2193)
!2205 = distinct !{!2205, !2195, !2206}
!2206 = !DILocation(line: 166, column: 5, scope: !2194)
!2207 = !DILocation(line: 169, column: 1, scope: !2108)
!2208 = distinct !DISubprogram(name: "set_program_name", scope: !234, file: !234, line: 39, type: !85, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !230, variables: !2209)
!2209 = !{!2210, !2211, !2212}
!2210 = !DILocalVariable(name: "argv0", arg: 1, scope: !2208, file: !234, line: 39, type: !87)
!2211 = !DILocalVariable(name: "slash", scope: !2208, file: !234, line: 46, type: !87)
!2212 = !DILocalVariable(name: "base", scope: !2208, file: !234, line: 47, type: !87)
!2213 = !DILocation(line: 39, column: 31, scope: !2208)
!2214 = !DILocation(line: 51, column: 13, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2208, file: !234, line: 51, column: 7)
!2216 = !DILocation(line: 51, column: 7, scope: !2208)
!2217 = !DILocation(line: 55, column: 14, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2215, file: !234, line: 52, column: 5)
!2219 = !DILocation(line: 54, column: 7, scope: !2218)
!2220 = !DILocation(line: 56, column: 7, scope: !2218)
!2221 = !DILocation(line: 59, column: 11, scope: !2208)
!2222 = !DILocation(line: 46, column: 15, scope: !2208)
!2223 = !DILocation(line: 60, column: 17, scope: !2208)
!2224 = !DILocation(line: 60, column: 33, scope: !2208)
!2225 = !DILocation(line: 60, column: 11, scope: !2208)
!2226 = !DILocation(line: 47, column: 15, scope: !2208)
!2227 = !DILocation(line: 61, column: 12, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2208, file: !234, line: 61, column: 7)
!2229 = !DILocation(line: 61, column: 20, scope: !2228)
!2230 = !DILocation(line: 61, column: 25, scope: !2228)
!2231 = !DILocation(line: 61, column: 42, scope: !2228)
!2232 = !DILocation(line: 61, column: 28, scope: !2228)
!2233 = !DILocation(line: 61, column: 61, scope: !2228)
!2234 = !DILocation(line: 61, column: 7, scope: !2208)
!2235 = !DILocation(line: 64, column: 11, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !234, line: 64, column: 11)
!2237 = distinct !DILexicalBlock(scope: !2228, file: !234, line: 62, column: 5)
!2238 = !DILocation(line: 64, column: 36, scope: !2236)
!2239 = !DILocation(line: 64, column: 11, scope: !2237)
!2240 = !DILocation(line: 66, column: 24, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2236, file: !234, line: 65, column: 9)
!2242 = !DILocation(line: 70, column: 41, scope: !2241)
!2243 = !DILocation(line: 72, column: 9, scope: !2241)
!2244 = !DILocation(line: 84, column: 16, scope: !2208)
!2245 = !DILocation(line: 90, column: 27, scope: !2208)
!2246 = !DILocation(line: 92, column: 1, scope: !2208)
!2247 = distinct !DISubprogram(name: "clone_quoting_options", scope: !249, file: !249, line: 114, type: !2248, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2251)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!2250, !2250}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!2251 = !{!2252, !2253, !2254}
!2252 = !DILocalVariable(name: "o", arg: 1, scope: !2247, file: !249, line: 114, type: !2250)
!2253 = !DILocalVariable(name: "e", scope: !2247, file: !249, line: 116, type: !54)
!2254 = !DILocalVariable(name: "p", scope: !2247, file: !249, line: 117, type: !2250)
!2255 = !DILocation(line: 114, column: 48, scope: !2247)
!2256 = !DILocation(line: 116, column: 11, scope: !2247)
!2257 = !DILocation(line: 116, column: 7, scope: !2247)
!2258 = !DILocation(line: 117, column: 40, scope: !2247)
!2259 = !DILocation(line: 117, column: 31, scope: !2247)
!2260 = !DILocation(line: 117, column: 27, scope: !2247)
!2261 = !DILocation(line: 119, column: 9, scope: !2247)
!2262 = !DILocation(line: 120, column: 3, scope: !2247)
!2263 = distinct !DISubprogram(name: "get_quoting_style", scope: !249, file: !249, line: 125, type: !2264, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2268)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!16, !2266}
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!2268 = !{!2269}
!2269 = !DILocalVariable(name: "o", arg: 1, scope: !2263, file: !249, line: 125, type: !2266)
!2270 = !DILocation(line: 125, column: 50, scope: !2263)
!2271 = !DILocation(line: 127, column: 11, scope: !2263)
!2272 = !DILocation(line: 127, column: 46, scope: !2263)
!2273 = !{!2274, !720, i64 0}
!2274 = !{!"quoting_options", !720, i64 0, !861, i64 4, !720, i64 8, !719, i64 40, !719, i64 48}
!2275 = !DILocation(line: 127, column: 3, scope: !2263)
!2276 = distinct !DISubprogram(name: "set_quoting_style", scope: !249, file: !249, line: 133, type: !2277, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2279)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{null, !2250, !16}
!2279 = !{!2280, !2281}
!2280 = !DILocalVariable(name: "o", arg: 1, scope: !2276, file: !249, line: 133, type: !2250)
!2281 = !DILocalVariable(name: "s", arg: 2, scope: !2276, file: !249, line: 133, type: !16)
!2282 = !DILocation(line: 133, column: 44, scope: !2276)
!2283 = !DILocation(line: 133, column: 66, scope: !2276)
!2284 = !DILocation(line: 135, column: 4, scope: !2276)
!2285 = !DILocation(line: 135, column: 39, scope: !2276)
!2286 = !DILocation(line: 135, column: 45, scope: !2276)
!2287 = !DILocation(line: 136, column: 1, scope: !2276)
!2288 = distinct !DISubprogram(name: "set_char_quoting", scope: !249, file: !249, line: 144, type: !2289, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2291)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!54, !2250, !41, !54}
!2291 = !{!2292, !2293, !2294, !2295, !2296, !2298, !2299}
!2292 = !DILocalVariable(name: "o", arg: 1, scope: !2288, file: !249, line: 144, type: !2250)
!2293 = !DILocalVariable(name: "c", arg: 2, scope: !2288, file: !249, line: 144, type: !41)
!2294 = !DILocalVariable(name: "i", arg: 3, scope: !2288, file: !249, line: 144, type: !54)
!2295 = !DILocalVariable(name: "uc", scope: !2288, file: !249, line: 146, type: !44)
!2296 = !DILocalVariable(name: "p", scope: !2288, file: !249, line: 147, type: !2297)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!2298 = !DILocalVariable(name: "shift", scope: !2288, file: !249, line: 149, type: !54)
!2299 = !DILocalVariable(name: "r", scope: !2288, file: !249, line: 150, type: !54)
!2300 = !DILocation(line: 144, column: 43, scope: !2288)
!2301 = !DILocation(line: 144, column: 51, scope: !2288)
!2302 = !DILocation(line: 144, column: 58, scope: !2288)
!2303 = !DILocation(line: 146, column: 17, scope: !2288)
!2304 = !DILocation(line: 148, column: 6, scope: !2288)
!2305 = !DILocation(line: 148, column: 62, scope: !2288)
!2306 = !DILocation(line: 148, column: 57, scope: !2288)
!2307 = !DILocation(line: 147, column: 17, scope: !2288)
!2308 = !DILocation(line: 149, column: 18, scope: !2288)
!2309 = !DILocation(line: 149, column: 15, scope: !2288)
!2310 = !DILocation(line: 149, column: 7, scope: !2288)
!2311 = !DILocation(line: 150, column: 12, scope: !2288)
!2312 = !DILocation(line: 150, column: 15, scope: !2288)
!2313 = !DILocation(line: 150, column: 25, scope: !2288)
!2314 = !DILocation(line: 150, column: 7, scope: !2288)
!2315 = !DILocation(line: 151, column: 13, scope: !2288)
!2316 = !DILocation(line: 151, column: 18, scope: !2288)
!2317 = !DILocation(line: 151, column: 23, scope: !2288)
!2318 = !DILocation(line: 151, column: 6, scope: !2288)
!2319 = !DILocation(line: 152, column: 3, scope: !2288)
!2320 = distinct !DISubprogram(name: "set_quoting_flags", scope: !249, file: !249, line: 160, type: !2321, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!54, !2250, !54}
!2323 = !{!2324, !2325, !2326}
!2324 = !DILocalVariable(name: "o", arg: 1, scope: !2320, file: !249, line: 160, type: !2250)
!2325 = !DILocalVariable(name: "i", arg: 2, scope: !2320, file: !249, line: 160, type: !54)
!2326 = !DILocalVariable(name: "r", scope: !2320, file: !249, line: 162, type: !54)
!2327 = !DILocation(line: 160, column: 44, scope: !2320)
!2328 = !DILocation(line: 160, column: 51, scope: !2320)
!2329 = !DILocation(line: 163, column: 8, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2320, file: !249, line: 163, column: 7)
!2331 = !DILocation(line: 163, column: 7, scope: !2320)
!2332 = !DILocation(line: 165, column: 10, scope: !2320)
!2333 = !{!2274, !861, i64 4}
!2334 = !DILocation(line: 162, column: 7, scope: !2320)
!2335 = !DILocation(line: 166, column: 12, scope: !2320)
!2336 = !DILocation(line: 167, column: 3, scope: !2320)
!2337 = distinct !DISubprogram(name: "set_custom_quoting", scope: !249, file: !249, line: 171, type: !2338, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{null, !2250, !87, !87}
!2340 = !{!2341, !2342, !2343}
!2341 = !DILocalVariable(name: "o", arg: 1, scope: !2337, file: !249, line: 171, type: !2250)
!2342 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2337, file: !249, line: 172, type: !87)
!2343 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2337, file: !249, line: 172, type: !87)
!2344 = !DILocation(line: 171, column: 45, scope: !2337)
!2345 = !DILocation(line: 172, column: 33, scope: !2337)
!2346 = !DILocation(line: 172, column: 57, scope: !2337)
!2347 = !DILocation(line: 174, column: 8, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2337, file: !249, line: 174, column: 7)
!2349 = !DILocation(line: 174, column: 7, scope: !2337)
!2350 = !DILocation(line: 176, column: 6, scope: !2337)
!2351 = !DILocation(line: 176, column: 12, scope: !2337)
!2352 = !DILocation(line: 177, column: 8, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2337, file: !249, line: 177, column: 7)
!2354 = !DILocation(line: 177, column: 23, scope: !2353)
!2355 = !DILocation(line: 177, column: 19, scope: !2353)
!2356 = !DILocation(line: 178, column: 5, scope: !2353)
!2357 = !DILocation(line: 179, column: 6, scope: !2337)
!2358 = !DILocation(line: 179, column: 17, scope: !2337)
!2359 = !{!2274, !719, i64 40}
!2360 = !DILocation(line: 180, column: 6, scope: !2337)
!2361 = !DILocation(line: 180, column: 18, scope: !2337)
!2362 = !{!2274, !719, i64 48}
!2363 = !DILocation(line: 181, column: 1, scope: !2337)
!2364 = distinct !DISubprogram(name: "quotearg_buffer", scope: !249, file: !249, line: 776, type: !2365, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2367)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!45, !40, !45, !87, !45, !2266}
!2367 = !{!2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375}
!2368 = !DILocalVariable(name: "buffer", arg: 1, scope: !2364, file: !249, line: 776, type: !40)
!2369 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2364, file: !249, line: 776, type: !45)
!2370 = !DILocalVariable(name: "arg", arg: 3, scope: !2364, file: !249, line: 777, type: !87)
!2371 = !DILocalVariable(name: "argsize", arg: 4, scope: !2364, file: !249, line: 777, type: !45)
!2372 = !DILocalVariable(name: "o", arg: 5, scope: !2364, file: !249, line: 778, type: !2266)
!2373 = !DILocalVariable(name: "p", scope: !2364, file: !249, line: 780, type: !2266)
!2374 = !DILocalVariable(name: "e", scope: !2364, file: !249, line: 781, type: !54)
!2375 = !DILocalVariable(name: "r", scope: !2364, file: !249, line: 782, type: !45)
!2376 = !DILocation(line: 776, column: 24, scope: !2364)
!2377 = !DILocation(line: 776, column: 39, scope: !2364)
!2378 = !DILocation(line: 777, column: 30, scope: !2364)
!2379 = !DILocation(line: 777, column: 42, scope: !2364)
!2380 = !DILocation(line: 778, column: 48, scope: !2364)
!2381 = !DILocation(line: 780, column: 37, scope: !2364)
!2382 = !DILocation(line: 780, column: 33, scope: !2364)
!2383 = !DILocation(line: 781, column: 11, scope: !2364)
!2384 = !DILocation(line: 781, column: 7, scope: !2364)
!2385 = !DILocation(line: 783, column: 43, scope: !2364)
!2386 = !DILocation(line: 783, column: 53, scope: !2364)
!2387 = !DILocation(line: 783, column: 60, scope: !2364)
!2388 = !DILocation(line: 784, column: 43, scope: !2364)
!2389 = !DILocation(line: 784, column: 58, scope: !2364)
!2390 = !DILocation(line: 782, column: 14, scope: !2364)
!2391 = !DILocation(line: 782, column: 10, scope: !2364)
!2392 = !DILocation(line: 785, column: 9, scope: !2364)
!2393 = !DILocation(line: 786, column: 3, scope: !2364)
!2394 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !249, file: !249, line: 248, type: !2395, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2399)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!45, !40, !45, !87, !45, !16, !54, !2397, !87, !87}
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!2399 = !{!2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2424, !2425, !2426, !2427, !2428, !2431, !2432, !2450, !2453, !2454, !2461}
!2400 = !DILocalVariable(name: "buffer", arg: 1, scope: !2394, file: !249, line: 248, type: !40)
!2401 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2394, file: !249, line: 248, type: !45)
!2402 = !DILocalVariable(name: "arg", arg: 3, scope: !2394, file: !249, line: 249, type: !87)
!2403 = !DILocalVariable(name: "argsize", arg: 4, scope: !2394, file: !249, line: 249, type: !45)
!2404 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2394, file: !249, line: 250, type: !16)
!2405 = !DILocalVariable(name: "flags", arg: 6, scope: !2394, file: !249, line: 250, type: !54)
!2406 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2394, file: !249, line: 251, type: !2397)
!2407 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2394, file: !249, line: 252, type: !87)
!2408 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2394, file: !249, line: 253, type: !87)
!2409 = !DILocalVariable(name: "i", scope: !2394, file: !249, line: 255, type: !45)
!2410 = !DILocalVariable(name: "len", scope: !2394, file: !249, line: 256, type: !45)
!2411 = !DILocalVariable(name: "orig_buffersize", scope: !2394, file: !249, line: 257, type: !45)
!2412 = !DILocalVariable(name: "quote_string", scope: !2394, file: !249, line: 258, type: !87)
!2413 = !DILocalVariable(name: "quote_string_len", scope: !2394, file: !249, line: 259, type: !45)
!2414 = !DILocalVariable(name: "backslash_escapes", scope: !2394, file: !249, line: 260, type: !61)
!2415 = !DILocalVariable(name: "unibyte_locale", scope: !2394, file: !249, line: 261, type: !61)
!2416 = !DILocalVariable(name: "elide_outer_quotes", scope: !2394, file: !249, line: 262, type: !61)
!2417 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2394, file: !249, line: 263, type: !61)
!2418 = !DILocalVariable(name: "encountered_single_quote", scope: !2394, file: !249, line: 264, type: !61)
!2419 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2394, file: !249, line: 265, type: !61)
!2420 = !DILocalVariable(name: "c", scope: !2421, file: !249, line: 394, type: !44)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !249, line: 393, column: 5)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !249, line: 392, column: 3)
!2423 = distinct !DILexicalBlock(scope: !2394, file: !249, line: 392, column: 3)
!2424 = !DILocalVariable(name: "esc", scope: !2421, file: !249, line: 395, type: !44)
!2425 = !DILocalVariable(name: "is_right_quote", scope: !2421, file: !249, line: 396, type: !61)
!2426 = !DILocalVariable(name: "escaping", scope: !2421, file: !249, line: 397, type: !61)
!2427 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2421, file: !249, line: 398, type: !61)
!2428 = !DILocalVariable(name: "m", scope: !2429, file: !249, line: 602, type: !45)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !249, line: 600, column: 11)
!2430 = distinct !DILexicalBlock(scope: !2421, file: !249, line: 418, column: 9)
!2431 = !DILocalVariable(name: "printable", scope: !2429, file: !249, line: 604, type: !61)
!2432 = !DILocalVariable(name: "mbstate", scope: !2433, file: !249, line: 613, type: !2435)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !249, line: 612, column: 15)
!2434 = distinct !DILexicalBlock(scope: !2429, file: !249, line: 606, column: 17)
!2435 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2436, line: 6, baseType: !2437)
!2436 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2438, line: 21, baseType: !2439)
!2438 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2438, line: 13, size: 64, elements: !2440)
!2440 = !{!2441, !2442}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2439, file: !2438, line: 15, baseType: !54, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2439, file: !2438, line: 20, baseType: !2443, size: 32, offset: 32)
!2443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2439, file: !2438, line: 16, size: 32, elements: !2444)
!2444 = !{!2445, !2446}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2443, file: !2438, line: 18, baseType: !165, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2443, file: !2438, line: 19, baseType: !2447, size: 32)
!2447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 32, elements: !2448)
!2448 = !{!2449}
!2449 = !DISubrange(count: 4)
!2450 = !DILocalVariable(name: "w", scope: !2451, file: !249, line: 623, type: !2452)
!2451 = distinct !DILexicalBlock(scope: !2433, file: !249, line: 622, column: 19)
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !46, line: 90, baseType: !54)
!2453 = !DILocalVariable(name: "bytes", scope: !2451, file: !249, line: 624, type: !45)
!2454 = !DILocalVariable(name: "j", scope: !2455, file: !249, line: 649, type: !45)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !249, line: 648, column: 27)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !249, line: 646, column: 29)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !249, line: 641, column: 23)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !249, line: 633, column: 30)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !249, line: 628, column: 30)
!2460 = distinct !DILexicalBlock(scope: !2451, file: !249, line: 626, column: 25)
!2461 = !DILocalVariable(name: "ilim", scope: !2462, file: !249, line: 676, type: !45)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !249, line: 673, column: 15)
!2463 = distinct !DILexicalBlock(scope: !2429, file: !249, line: 672, column: 17)
!2464 = !DILocation(line: 248, column: 33, scope: !2394)
!2465 = !DILocation(line: 248, column: 48, scope: !2394)
!2466 = !DILocation(line: 249, column: 39, scope: !2394)
!2467 = !DILocation(line: 249, column: 51, scope: !2394)
!2468 = !DILocation(line: 250, column: 46, scope: !2394)
!2469 = !DILocation(line: 250, column: 65, scope: !2394)
!2470 = !DILocation(line: 251, column: 47, scope: !2394)
!2471 = !DILocation(line: 252, column: 39, scope: !2394)
!2472 = !DILocation(line: 253, column: 39, scope: !2394)
!2473 = !DILocation(line: 256, column: 10, scope: !2394)
!2474 = !DILocation(line: 257, column: 10, scope: !2394)
!2475 = !DILocation(line: 258, column: 15, scope: !2394)
!2476 = !DILocation(line: 259, column: 10, scope: !2394)
!2477 = !DILocation(line: 260, column: 8, scope: !2394)
!2478 = !DILocation(line: 261, column: 25, scope: !2394)
!2479 = !DILocation(line: 261, column: 36, scope: !2394)
!2480 = !DILocation(line: 262, column: 8, scope: !2394)
!2481 = !DILocation(line: 263, column: 8, scope: !2394)
!2482 = !DILocation(line: 264, column: 8, scope: !2394)
!2483 = !DILocation(line: 265, column: 8, scope: !2394)
!2484 = !DILocation(line: 265, column: 3, scope: !2394)
!2485 = !DILocation(line: 308, column: 3, scope: !2394)
!2486 = !DILocation(line: 315, column: 11, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2394, file: !249, line: 309, column: 5)
!2488 = !DILocation(line: 315, column: 12, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2487, file: !249, line: 315, column: 11)
!2490 = !DILocation(line: 316, column: 9, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !249, line: 316, column: 9)
!2492 = distinct !DILexicalBlock(scope: !2489, file: !249, line: 316, column: 9)
!2493 = !DILocation(line: 316, column: 9, scope: !2492)
!2494 = !DILocation(line: 354, column: 26, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !249, line: 332, column: 11)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !249, line: 331, column: 13)
!2497 = distinct !DILexicalBlock(scope: !2487, file: !249, line: 330, column: 7)
!2498 = !DILocation(line: 355, column: 27, scope: !2495)
!2499 = !DILocation(line: 356, column: 11, scope: !2495)
!2500 = !DILocation(line: 357, column: 14, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2497, file: !249, line: 357, column: 13)
!2502 = !DILocation(line: 357, column: 13, scope: !2497)
!2503 = !DILocation(line: 358, column: 43, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !249, line: 358, column: 11)
!2505 = distinct !DILexicalBlock(scope: !2501, file: !249, line: 358, column: 11)
!2506 = !DILocation(line: 358, column: 11, scope: !2505)
!2507 = !DILocation(line: 359, column: 13, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !249, line: 359, column: 13)
!2509 = distinct !DILexicalBlock(scope: !2504, file: !249, line: 359, column: 13)
!2510 = !DILocation(line: 359, column: 13, scope: !2509)
!2511 = !DILocation(line: 358, column: 70, scope: !2504)
!2512 = distinct !{!2512, !2506, !2513}
!2513 = !DILocation(line: 359, column: 13, scope: !2505)
!2514 = !DILocation(line: 362, column: 28, scope: !2497)
!2515 = !DILocation(line: 364, column: 7, scope: !2487)
!2516 = !DILocation(line: 367, column: 7, scope: !2487)
!2517 = !DILocation(line: 370, column: 7, scope: !2487)
!2518 = !DILocation(line: 373, column: 12, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2487, file: !249, line: 373, column: 11)
!2520 = !DILocation(line: 373, column: 11, scope: !2487)
!2521 = !DILocation(line: 378, column: 12, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2487, file: !249, line: 378, column: 11)
!2523 = !DILocation(line: 378, column: 11, scope: !2487)
!2524 = !DILocation(line: 379, column: 9, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !249, line: 379, column: 9)
!2526 = distinct !DILexicalBlock(scope: !2522, file: !249, line: 379, column: 9)
!2527 = !DILocation(line: 379, column: 9, scope: !2526)
!2528 = !DILocation(line: 386, column: 7, scope: !2487)
!2529 = !DILocation(line: 389, column: 7, scope: !2487)
!2530 = !DILocation(line: 255, column: 10, scope: !2394)
!2531 = !DILocation(line: 392, column: 8, scope: !2423)
!2532 = !DILocation(line: 392, column: 27, scope: !2422)
!2533 = !DILocation(line: 392, column: 19, scope: !2422)
!2534 = !DILocation(line: 392, column: 60, scope: !2422)
!2535 = !DILocation(line: 392, column: 3, scope: !2423)
!2536 = !DILocation(line: 392, column: 41, scope: !2422)
!2537 = !DILocation(line: 392, column: 48, scope: !2422)
!2538 = !DILocation(line: 396, column: 12, scope: !2421)
!2539 = !DILocation(line: 397, column: 12, scope: !2421)
!2540 = !DILocation(line: 398, column: 12, scope: !2421)
!2541 = !DILocation(line: 401, column: 11, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2421, file: !249, line: 400, column: 11)
!2543 = !DILocation(line: 403, column: 17, scope: !2542)
!2544 = !DILocation(line: 404, column: 39, scope: !2542)
!2545 = !DILocation(line: 408, column: 32, scope: !2542)
!2546 = !DILocation(line: 404, column: 19, scope: !2542)
!2547 = !DILocation(line: 404, column: 15, scope: !2542)
!2548 = !DILocation(line: 409, column: 11, scope: !2542)
!2549 = !DILocation(line: 409, column: 26, scope: !2542)
!2550 = !DILocation(line: 409, column: 14, scope: !2542)
!2551 = !DILocation(line: 409, column: 63, scope: !2542)
!2552 = !DILocation(line: 400, column: 11, scope: !2421)
!2553 = !DILocation(line: 416, column: 11, scope: !2421)
!2554 = !DILocation(line: 394, column: 21, scope: !2421)
!2555 = !DILocation(line: 417, column: 7, scope: !2421)
!2556 = !DILocation(line: 420, column: 15, scope: !2430)
!2557 = !DILocation(line: 422, column: 15, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !249, line: 422, column: 15)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !249, line: 421, column: 13)
!2560 = distinct !DILexicalBlock(scope: !2430, file: !249, line: 420, column: 15)
!2561 = !DILocation(line: 422, column: 15, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2558, file: !249, line: 422, column: 15)
!2563 = !DILocation(line: 422, column: 15, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !249, line: 422, column: 15)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !249, line: 422, column: 15)
!2566 = distinct !DILexicalBlock(scope: !2562, file: !249, line: 422, column: 15)
!2567 = !DILocation(line: 422, column: 15, scope: !2565)
!2568 = !DILocation(line: 422, column: 15, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !249, line: 422, column: 15)
!2570 = distinct !DILexicalBlock(scope: !2566, file: !249, line: 422, column: 15)
!2571 = !DILocation(line: 422, column: 15, scope: !2570)
!2572 = !DILocation(line: 422, column: 15, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !249, line: 422, column: 15)
!2574 = distinct !DILexicalBlock(scope: !2566, file: !249, line: 422, column: 15)
!2575 = !DILocation(line: 422, column: 15, scope: !2574)
!2576 = !DILocation(line: 422, column: 15, scope: !2566)
!2577 = !DILocation(line: 422, column: 15, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !249, line: 422, column: 15)
!2579 = distinct !DILexicalBlock(scope: !2558, file: !249, line: 422, column: 15)
!2580 = !DILocation(line: 422, column: 15, scope: !2579)
!2581 = !DILocation(line: 430, column: 19, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2559, file: !249, line: 429, column: 19)
!2583 = !DILocation(line: 430, column: 24, scope: !2582)
!2584 = !DILocation(line: 430, column: 28, scope: !2582)
!2585 = !DILocation(line: 430, column: 38, scope: !2582)
!2586 = !DILocation(line: 430, column: 48, scope: !2582)
!2587 = !DILocation(line: 430, column: 59, scope: !2582)
!2588 = !DILocation(line: 432, column: 19, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !249, line: 432, column: 19)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !249, line: 432, column: 19)
!2591 = distinct !DILexicalBlock(scope: !2582, file: !249, line: 431, column: 17)
!2592 = !DILocation(line: 432, column: 19, scope: !2590)
!2593 = !DILocation(line: 433, column: 19, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !249, line: 433, column: 19)
!2595 = distinct !DILexicalBlock(scope: !2591, file: !249, line: 433, column: 19)
!2596 = !DILocation(line: 433, column: 19, scope: !2595)
!2597 = !DILocation(line: 434, column: 17, scope: !2591)
!2598 = !DILocation(line: 441, column: 20, scope: !2560)
!2599 = !DILocation(line: 446, column: 11, scope: !2430)
!2600 = !DILocation(line: 449, column: 19, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2430, file: !249, line: 447, column: 13)
!2602 = !DILocation(line: 455, column: 19, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2601, file: !249, line: 454, column: 19)
!2604 = !DILocation(line: 455, column: 24, scope: !2603)
!2605 = !DILocation(line: 455, column: 28, scope: !2603)
!2606 = !DILocation(line: 455, column: 38, scope: !2603)
!2607 = !DILocation(line: 455, column: 47, scope: !2603)
!2608 = !DILocation(line: 455, column: 41, scope: !2603)
!2609 = !DILocation(line: 455, column: 52, scope: !2603)
!2610 = !DILocation(line: 454, column: 19, scope: !2601)
!2611 = !DILocation(line: 456, column: 25, scope: !2603)
!2612 = !DILocation(line: 456, column: 17, scope: !2603)
!2613 = !DILocation(line: 463, column: 25, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2603, file: !249, line: 457, column: 19)
!2615 = !DILocation(line: 467, column: 21, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !249, line: 467, column: 21)
!2617 = distinct !DILexicalBlock(scope: !2614, file: !249, line: 467, column: 21)
!2618 = !DILocation(line: 467, column: 21, scope: !2617)
!2619 = !DILocation(line: 468, column: 21, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !249, line: 468, column: 21)
!2621 = distinct !DILexicalBlock(scope: !2614, file: !249, line: 468, column: 21)
!2622 = !DILocation(line: 468, column: 21, scope: !2621)
!2623 = !DILocation(line: 469, column: 21, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !249, line: 469, column: 21)
!2625 = distinct !DILexicalBlock(scope: !2614, file: !249, line: 469, column: 21)
!2626 = !DILocation(line: 469, column: 21, scope: !2625)
!2627 = !DILocation(line: 470, column: 21, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !249, line: 470, column: 21)
!2629 = distinct !DILexicalBlock(scope: !2614, file: !249, line: 470, column: 21)
!2630 = !DILocation(line: 470, column: 21, scope: !2629)
!2631 = !DILocation(line: 471, column: 21, scope: !2614)
!2632 = !DILocation(line: 395, column: 21, scope: !2421)
!2633 = !DILocation(line: 484, column: 31, scope: !2430)
!2634 = !DILocation(line: 485, column: 31, scope: !2430)
!2635 = !DILocation(line: 487, column: 31, scope: !2430)
!2636 = !DILocation(line: 488, column: 31, scope: !2430)
!2637 = !DILocation(line: 489, column: 31, scope: !2430)
!2638 = !DILocation(line: 492, column: 15, scope: !2430)
!2639 = !DILocation(line: 494, column: 19, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !249, line: 493, column: 13)
!2641 = distinct !DILexicalBlock(scope: !2430, file: !249, line: 492, column: 15)
!2642 = !DILocation(line: 501, column: 33, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2430, file: !249, line: 501, column: 15)
!2644 = !DILocation(line: 506, column: 15, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2430, file: !249, line: 505, column: 15)
!2646 = !DILocation(line: 510, column: 15, scope: !2430)
!2647 = !DILocation(line: 518, column: 26, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2430, file: !249, line: 518, column: 15)
!2649 = !DILocation(line: 518, column: 15, scope: !2430)
!2650 = !DILocation(line: 518, column: 40, scope: !2648)
!2651 = !DILocation(line: 518, column: 47, scope: !2648)
!2652 = !DILocation(line: 522, column: 17, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2430, file: !249, line: 522, column: 15)
!2654 = !DILocation(line: 518, column: 18, scope: !2648)
!2655 = !DILocation(line: 518, column: 65, scope: !2648)
!2656 = !DILocation(line: 522, column: 15, scope: !2430)
!2657 = !DILocation(line: 526, column: 11, scope: !2430)
!2658 = !DILocation(line: 541, column: 15, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2430, file: !249, line: 540, column: 15)
!2660 = !DILocation(line: 548, column: 15, scope: !2430)
!2661 = !DILocation(line: 550, column: 19, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !249, line: 549, column: 13)
!2663 = distinct !DILexicalBlock(scope: !2430, file: !249, line: 548, column: 15)
!2664 = !DILocation(line: 553, column: 19, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2662, file: !249, line: 553, column: 19)
!2666 = !DILocation(line: 553, column: 35, scope: !2665)
!2667 = !DILocation(line: 553, column: 30, scope: !2665)
!2668 = !DILocation(line: 562, column: 15, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !249, line: 562, column: 15)
!2670 = distinct !DILexicalBlock(scope: !2662, file: !249, line: 562, column: 15)
!2671 = !DILocation(line: 562, column: 15, scope: !2670)
!2672 = !DILocation(line: 563, column: 15, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !249, line: 563, column: 15)
!2674 = distinct !DILexicalBlock(scope: !2662, file: !249, line: 563, column: 15)
!2675 = !DILocation(line: 563, column: 15, scope: !2674)
!2676 = !DILocation(line: 564, column: 15, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !249, line: 564, column: 15)
!2678 = distinct !DILexicalBlock(scope: !2662, file: !249, line: 564, column: 15)
!2679 = !DILocation(line: 564, column: 15, scope: !2678)
!2680 = !DILocation(line: 566, column: 13, scope: !2662)
!2681 = !DILocation(line: 606, column: 17, scope: !2429)
!2682 = !DILocation(line: 602, column: 20, scope: !2429)
!2683 = !DILocation(line: 609, column: 29, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2434, file: !249, line: 607, column: 15)
!2685 = !DILocation(line: 609, column: 27, scope: !2684)
!2686 = !DILocation(line: 604, column: 18, scope: !2429)
!2687 = !DILocation(line: 610, column: 15, scope: !2684)
!2688 = !DILocation(line: 613, column: 17, scope: !2433)
!2689 = !DILocation(line: 614, column: 17, scope: !2433)
!2690 = !DILocation(line: 618, column: 29, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2433, file: !249, line: 618, column: 21)
!2692 = !DILocation(line: 618, column: 21, scope: !2433)
!2693 = !DILocation(line: 619, column: 29, scope: !2691)
!2694 = !DILocation(line: 619, column: 19, scope: !2691)
!2695 = !DILocation(line: 621, column: 17, scope: !2433)
!2696 = distinct !{!2696, !2695, !2697}
!2697 = !DILocation(line: 667, column: 44, scope: !2433)
!2698 = !DILocation(line: 623, column: 21, scope: !2451)
!2699 = !DILocation(line: 624, column: 56, scope: !2451)
!2700 = !DILocation(line: 624, column: 50, scope: !2451)
!2701 = !DILocation(line: 625, column: 53, scope: !2451)
!2702 = !DILocation(line: 613, column: 27, scope: !2433)
!2703 = !DILocation(line: 623, column: 29, scope: !2451)
!2704 = !DILocation(line: 624, column: 36, scope: !2451)
!2705 = !DILocation(line: 624, column: 28, scope: !2451)
!2706 = !DILocation(line: 626, column: 25, scope: !2451)
!2707 = !DILocation(line: 636, column: 38, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2458, file: !249, line: 634, column: 23)
!2709 = !DILocation(line: 636, column: 48, scope: !2708)
!2710 = !DILocation(line: 636, column: 51, scope: !2708)
!2711 = !DILocation(line: 636, column: 25, scope: !2708)
!2712 = !DILocation(line: 637, column: 28, scope: !2708)
!2713 = !DILocation(line: 636, column: 34, scope: !2708)
!2714 = distinct !{!2714, !2711, !2712}
!2715 = !DILocation(line: 650, column: 43, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !249, line: 650, column: 29)
!2717 = distinct !DILexicalBlock(scope: !2455, file: !249, line: 650, column: 29)
!2718 = !DILocation(line: 647, column: 29, scope: !2456)
!2719 = !DILocation(line: 649, column: 36, scope: !2455)
!2720 = !DILocation(line: 651, column: 49, scope: !2716)
!2721 = !DILocation(line: 651, column: 39, scope: !2716)
!2722 = !DILocation(line: 651, column: 31, scope: !2716)
!2723 = !DILocation(line: 650, column: 53, scope: !2716)
!2724 = !DILocation(line: 650, column: 29, scope: !2717)
!2725 = distinct !{!2725, !2724, !2726}
!2726 = !DILocation(line: 659, column: 33, scope: !2717)
!2727 = !DILocation(line: 666, column: 19, scope: !2433)
!2728 = !DILocation(line: 662, column: 41, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2457, file: !249, line: 662, column: 29)
!2730 = !DILocation(line: 662, column: 31, scope: !2729)
!2731 = !DILocation(line: 662, column: 29, scope: !2457)
!2732 = !DILocation(line: 664, column: 27, scope: !2457)
!2733 = !DILocation(line: 667, column: 26, scope: !2433)
!2734 = !DILocation(line: 667, column: 24, scope: !2433)
!2735 = !DILocation(line: 666, column: 19, scope: !2451)
!2736 = !DILocation(line: 668, column: 15, scope: !2434)
!2737 = !DILocation(line: 670, column: 40, scope: !2429)
!2738 = !DILocation(line: 672, column: 19, scope: !2463)
!2739 = !DILocation(line: 672, column: 45, scope: !2463)
!2740 = !DILocation(line: 672, column: 23, scope: !2463)
!2741 = !DILocation(line: 676, column: 33, scope: !2462)
!2742 = !DILocation(line: 676, column: 24, scope: !2462)
!2743 = !DILocation(line: 678, column: 17, scope: !2462)
!2744 = !DILocation(line: 680, column: 43, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !249, line: 680, column: 25)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !249, line: 679, column: 19)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !249, line: 678, column: 17)
!2748 = distinct !DILexicalBlock(scope: !2462, file: !249, line: 678, column: 17)
!2749 = !DILocation(line: 682, column: 25, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !249, line: 682, column: 25)
!2751 = distinct !DILexicalBlock(scope: !2745, file: !249, line: 681, column: 23)
!2752 = !DILocation(line: 682, column: 25, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2750, file: !249, line: 682, column: 25)
!2754 = !DILocation(line: 682, column: 25, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !249, line: 682, column: 25)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !249, line: 682, column: 25)
!2757 = distinct !DILexicalBlock(scope: !2753, file: !249, line: 682, column: 25)
!2758 = !DILocation(line: 682, column: 25, scope: !2756)
!2759 = !DILocation(line: 682, column: 25, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !249, line: 682, column: 25)
!2761 = distinct !DILexicalBlock(scope: !2757, file: !249, line: 682, column: 25)
!2762 = !DILocation(line: 682, column: 25, scope: !2761)
!2763 = !DILocation(line: 682, column: 25, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !249, line: 682, column: 25)
!2765 = distinct !DILexicalBlock(scope: !2757, file: !249, line: 682, column: 25)
!2766 = !DILocation(line: 682, column: 25, scope: !2765)
!2767 = !DILocation(line: 682, column: 25, scope: !2757)
!2768 = !DILocation(line: 682, column: 25, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !249, line: 682, column: 25)
!2770 = distinct !DILexicalBlock(scope: !2750, file: !249, line: 682, column: 25)
!2771 = !DILocation(line: 682, column: 25, scope: !2770)
!2772 = !DILocation(line: 683, column: 25, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !249, line: 683, column: 25)
!2774 = distinct !DILexicalBlock(scope: !2751, file: !249, line: 683, column: 25)
!2775 = !DILocation(line: 683, column: 25, scope: !2774)
!2776 = !DILocation(line: 684, column: 25, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !249, line: 684, column: 25)
!2778 = distinct !DILexicalBlock(scope: !2751, file: !249, line: 684, column: 25)
!2779 = !DILocation(line: 684, column: 25, scope: !2778)
!2780 = !DILocation(line: 685, column: 38, scope: !2751)
!2781 = !DILocation(line: 685, column: 33, scope: !2751)
!2782 = !DILocation(line: 686, column: 23, scope: !2751)
!2783 = !DILocation(line: 687, column: 30, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2745, file: !249, line: 687, column: 30)
!2785 = !DILocation(line: 687, column: 30, scope: !2745)
!2786 = !DILocation(line: 689, column: 25, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !249, line: 689, column: 25)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !249, line: 689, column: 25)
!2789 = distinct !DILexicalBlock(scope: !2784, file: !249, line: 688, column: 23)
!2790 = !DILocation(line: 689, column: 25, scope: !2788)
!2791 = !DILocation(line: 691, column: 23, scope: !2789)
!2792 = !DILocation(line: 692, column: 35, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2746, file: !249, line: 692, column: 25)
!2794 = !DILocation(line: 692, column: 30, scope: !2793)
!2795 = !DILocation(line: 692, column: 25, scope: !2746)
!2796 = !DILocation(line: 694, column: 21, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !249, line: 694, column: 21)
!2798 = distinct !DILexicalBlock(scope: !2746, file: !249, line: 694, column: 21)
!2799 = !DILocation(line: 694, column: 21, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !249, line: 694, column: 21)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !249, line: 694, column: 21)
!2802 = distinct !DILexicalBlock(scope: !2797, file: !249, line: 694, column: 21)
!2803 = !DILocation(line: 694, column: 21, scope: !2801)
!2804 = !DILocation(line: 694, column: 21, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !249, line: 694, column: 21)
!2806 = distinct !DILexicalBlock(scope: !2802, file: !249, line: 694, column: 21)
!2807 = !DILocation(line: 694, column: 21, scope: !2806)
!2808 = !DILocation(line: 694, column: 21, scope: !2802)
!2809 = !DILocation(line: 695, column: 21, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !249, line: 695, column: 21)
!2811 = distinct !DILexicalBlock(scope: !2746, file: !249, line: 695, column: 21)
!2812 = !DILocation(line: 695, column: 21, scope: !2811)
!2813 = !DILocation(line: 696, column: 25, scope: !2746)
!2814 = !DILocation(line: 678, column: 17, scope: !2747)
!2815 = distinct !{!2815, !2816, !2817}
!2816 = !DILocation(line: 678, column: 17, scope: !2748)
!2817 = !DILocation(line: 697, column: 19, scope: !2748)
!2818 = !DILocation(line: 704, column: 34, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2421, file: !249, line: 704, column: 11)
!2820 = !DILocation(line: 706, column: 14, scope: !2819)
!2821 = !DILocation(line: 707, column: 14, scope: !2819)
!2822 = !DILocation(line: 707, column: 35, scope: !2819)
!2823 = !DILocation(line: 707, column: 17, scope: !2819)
!2824 = !DILocation(line: 707, column: 53, scope: !2819)
!2825 = !DILocation(line: 707, column: 47, scope: !2819)
!2826 = !DILocation(line: 707, column: 65, scope: !2819)
!2827 = !DILocation(line: 708, column: 15, scope: !2819)
!2828 = !DILocation(line: 708, column: 11, scope: !2819)
!2829 = !DILocation(line: 704, column: 11, scope: !2421)
!2830 = !DILocation(line: 712, column: 7, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2421, file: !249, line: 712, column: 7)
!2832 = !DILocation(line: 712, column: 7, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2831, file: !249, line: 712, column: 7)
!2834 = !DILocation(line: 712, column: 7, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !249, line: 712, column: 7)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !249, line: 712, column: 7)
!2837 = distinct !DILexicalBlock(scope: !2833, file: !249, line: 712, column: 7)
!2838 = !DILocation(line: 712, column: 7, scope: !2836)
!2839 = !DILocation(line: 712, column: 7, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !249, line: 712, column: 7)
!2841 = distinct !DILexicalBlock(scope: !2837, file: !249, line: 712, column: 7)
!2842 = !DILocation(line: 712, column: 7, scope: !2841)
!2843 = !DILocation(line: 712, column: 7, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !249, line: 712, column: 7)
!2845 = distinct !DILexicalBlock(scope: !2837, file: !249, line: 712, column: 7)
!2846 = !DILocation(line: 712, column: 7, scope: !2845)
!2847 = !DILocation(line: 712, column: 7, scope: !2837)
!2848 = !DILocation(line: 712, column: 7, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !249, line: 712, column: 7)
!2850 = distinct !DILexicalBlock(scope: !2831, file: !249, line: 712, column: 7)
!2851 = !DILocation(line: 712, column: 7, scope: !2850)
!2852 = !DILocation(line: 715, column: 7, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !249, line: 715, column: 7)
!2854 = distinct !DILexicalBlock(scope: !2421, file: !249, line: 715, column: 7)
!2855 = !DILocation(line: 715, column: 7, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !249, line: 715, column: 7)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !249, line: 715, column: 7)
!2858 = distinct !DILexicalBlock(scope: !2853, file: !249, line: 715, column: 7)
!2859 = !DILocation(line: 715, column: 7, scope: !2857)
!2860 = !DILocation(line: 715, column: 7, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !249, line: 715, column: 7)
!2862 = distinct !DILexicalBlock(scope: !2858, file: !249, line: 715, column: 7)
!2863 = !DILocation(line: 715, column: 7, scope: !2862)
!2864 = !DILocation(line: 715, column: 7, scope: !2858)
!2865 = !DILocation(line: 716, column: 7, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !249, line: 716, column: 7)
!2867 = distinct !DILexicalBlock(scope: !2421, file: !249, line: 716, column: 7)
!2868 = !DILocation(line: 716, column: 7, scope: !2867)
!2869 = !DILocation(line: 718, column: 13, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2421, file: !249, line: 718, column: 11)
!2871 = !DILocation(line: 718, column: 11, scope: !2421)
!2872 = !DILocation(line: 720, column: 5, scope: !2422)
!2873 = !DILocation(line: 392, column: 75, scope: !2422)
!2874 = !DILocation(line: 392, column: 3, scope: !2422)
!2875 = distinct !{!2875, !2535, !2876}
!2876 = !DILocation(line: 720, column: 5, scope: !2423)
!2877 = !DILocation(line: 722, column: 11, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2394, file: !249, line: 722, column: 7)
!2879 = !DILocation(line: 722, column: 16, scope: !2878)
!2880 = !DILocation(line: 730, column: 51, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2394, file: !249, line: 730, column: 7)
!2882 = !DILocation(line: 731, column: 10, scope: !2881)
!2883 = !DILocation(line: 733, column: 11, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !249, line: 733, column: 11)
!2885 = distinct !DILexicalBlock(scope: !2881, file: !249, line: 732, column: 5)
!2886 = !DILocation(line: 733, column: 11, scope: !2885)
!2887 = !DILocation(line: 734, column: 16, scope: !2884)
!2888 = !DILocation(line: 734, column: 9, scope: !2884)
!2889 = !DILocation(line: 738, column: 18, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2884, file: !249, line: 738, column: 16)
!2891 = !DILocation(line: 738, column: 32, scope: !2890)
!2892 = !DILocation(line: 738, column: 29, scope: !2890)
!2893 = !DILocation(line: 747, column: 7, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2394, file: !249, line: 747, column: 7)
!2895 = !DILocation(line: 747, column: 20, scope: !2894)
!2896 = !DILocation(line: 748, column: 12, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !249, line: 748, column: 5)
!2898 = distinct !DILexicalBlock(scope: !2894, file: !249, line: 748, column: 5)
!2899 = !DILocation(line: 748, column: 5, scope: !2898)
!2900 = !DILocation(line: 749, column: 7, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !249, line: 749, column: 7)
!2902 = distinct !DILexicalBlock(scope: !2897, file: !249, line: 749, column: 7)
!2903 = !DILocation(line: 749, column: 7, scope: !2902)
!2904 = !DILocation(line: 748, column: 39, scope: !2897)
!2905 = distinct !{!2905, !2899, !2906}
!2906 = !DILocation(line: 749, column: 7, scope: !2898)
!2907 = !DILocation(line: 751, column: 11, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2394, file: !249, line: 751, column: 7)
!2909 = !DILocation(line: 751, column: 7, scope: !2394)
!2910 = !DILocation(line: 752, column: 5, scope: !2908)
!2911 = !DILocation(line: 752, column: 17, scope: !2908)
!2912 = !DILocation(line: 758, column: 21, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2394, file: !249, line: 758, column: 7)
!2914 = !DILocation(line: 758, column: 54, scope: !2913)
!2915 = !DILocation(line: 758, column: 51, scope: !2913)
!2916 = !DILocation(line: 762, column: 42, scope: !2394)
!2917 = !DILocation(line: 760, column: 10, scope: !2394)
!2918 = !DILocation(line: 760, column: 3, scope: !2394)
!2919 = !DILocation(line: 764, column: 1, scope: !2394)
!2920 = distinct !DISubprogram(name: "gettext_quote", scope: !249, file: !249, line: 199, type: !2921, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!87, !87, !16}
!2923 = !{!2924, !2925, !2926, !2927}
!2924 = !DILocalVariable(name: "msgid", arg: 1, scope: !2920, file: !249, line: 199, type: !87)
!2925 = !DILocalVariable(name: "s", arg: 2, scope: !2920, file: !249, line: 199, type: !16)
!2926 = !DILocalVariable(name: "translation", scope: !2920, file: !249, line: 201, type: !87)
!2927 = !DILocalVariable(name: "locale_code", scope: !2920, file: !249, line: 202, type: !87)
!2928 = !DILocation(line: 199, column: 28, scope: !2920)
!2929 = !DILocation(line: 199, column: 54, scope: !2920)
!2930 = !DILocation(line: 201, column: 29, scope: !2920)
!2931 = !DILocation(line: 201, column: 15, scope: !2920)
!2932 = !DILocation(line: 204, column: 19, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2920, file: !249, line: 204, column: 7)
!2934 = !DILocation(line: 204, column: 7, scope: !2920)
!2935 = !DILocation(line: 225, column: 17, scope: !2920)
!2936 = !DILocation(line: 202, column: 15, scope: !2920)
!2937 = !DILocalVariable(name: "s2", arg: 2, scope: !2938, file: !2939, line: 160, type: !87)
!2938 = distinct !DISubprogram(name: "strcaseeq0", scope: !2939, file: !2939, line: 160, type: !2940, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2942)
!2939 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!54, !87, !87, !41, !41, !41, !41, !41, !41, !41, !41, !41}
!2942 = !{!2943, !2937, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952}
!2943 = !DILocalVariable(name: "s1", arg: 1, scope: !2938, file: !2939, line: 160, type: !87)
!2944 = !DILocalVariable(name: "s20", arg: 3, scope: !2938, file: !2939, line: 160, type: !41)
!2945 = !DILocalVariable(name: "s21", arg: 4, scope: !2938, file: !2939, line: 160, type: !41)
!2946 = !DILocalVariable(name: "s22", arg: 5, scope: !2938, file: !2939, line: 160, type: !41)
!2947 = !DILocalVariable(name: "s23", arg: 6, scope: !2938, file: !2939, line: 160, type: !41)
!2948 = !DILocalVariable(name: "s24", arg: 7, scope: !2938, file: !2939, line: 160, type: !41)
!2949 = !DILocalVariable(name: "s25", arg: 8, scope: !2938, file: !2939, line: 160, type: !41)
!2950 = !DILocalVariable(name: "s26", arg: 9, scope: !2938, file: !2939, line: 160, type: !41)
!2951 = !DILocalVariable(name: "s27", arg: 10, scope: !2938, file: !2939, line: 160, type: !41)
!2952 = !DILocalVariable(name: "s28", arg: 11, scope: !2938, file: !2939, line: 160, type: !41)
!2953 = !DILocation(line: 160, column: 41, scope: !2938, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 226, column: 7, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2920, file: !249, line: 226, column: 7)
!2956 = !DILocation(line: 160, column: 120, scope: !2938, inlinedAt: !2954)
!2957 = !DILocation(line: 160, column: 130, scope: !2938, inlinedAt: !2954)
!2958 = !DILocation(line: 162, column: 7, scope: !2959, inlinedAt: !2954)
!2959 = distinct !DILexicalBlock(scope: !2938, file: !2939, line: 162, column: 7)
!2960 = !DILocalVariable(name: "s2", arg: 2, scope: !2961, file: !2939, line: 146, type: !87)
!2961 = distinct !DISubprogram(name: "strcaseeq1", scope: !2939, file: !2939, line: 146, type: !2962, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2964)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!54, !87, !87, !41, !41, !41, !41, !41, !41, !41, !41}
!2964 = !{!2965, !2960, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973}
!2965 = !DILocalVariable(name: "s1", arg: 1, scope: !2961, file: !2939, line: 146, type: !87)
!2966 = !DILocalVariable(name: "s21", arg: 3, scope: !2961, file: !2939, line: 146, type: !41)
!2967 = !DILocalVariable(name: "s22", arg: 4, scope: !2961, file: !2939, line: 146, type: !41)
!2968 = !DILocalVariable(name: "s23", arg: 5, scope: !2961, file: !2939, line: 146, type: !41)
!2969 = !DILocalVariable(name: "s24", arg: 6, scope: !2961, file: !2939, line: 146, type: !41)
!2970 = !DILocalVariable(name: "s25", arg: 7, scope: !2961, file: !2939, line: 146, type: !41)
!2971 = !DILocalVariable(name: "s26", arg: 8, scope: !2961, file: !2939, line: 146, type: !41)
!2972 = !DILocalVariable(name: "s27", arg: 9, scope: !2961, file: !2939, line: 146, type: !41)
!2973 = !DILocalVariable(name: "s28", arg: 10, scope: !2961, file: !2939, line: 146, type: !41)
!2974 = !DILocation(line: 146, column: 41, scope: !2961, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 167, column: 16, scope: !2976, inlinedAt: !2954)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !2939, line: 164, column: 11)
!2977 = distinct !DILexicalBlock(scope: !2959, file: !2939, line: 163, column: 5)
!2978 = !DILocation(line: 146, column: 110, scope: !2961, inlinedAt: !2975)
!2979 = !DILocation(line: 146, column: 120, scope: !2961, inlinedAt: !2975)
!2980 = !DILocation(line: 148, column: 7, scope: !2981, inlinedAt: !2975)
!2981 = distinct !DILexicalBlock(scope: !2961, file: !2939, line: 148, column: 7)
!2982 = !DILocalVariable(name: "s2", arg: 2, scope: !2983, file: !2939, line: 132, type: !87)
!2983 = distinct !DISubprogram(name: "strcaseeq2", scope: !2939, file: !2939, line: 132, type: !2984, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!54, !87, !87, !41, !41, !41, !41, !41, !41, !41}
!2986 = !{!2987, !2982, !2988, !2989, !2990, !2991, !2992, !2993, !2994}
!2987 = !DILocalVariable(name: "s1", arg: 1, scope: !2983, file: !2939, line: 132, type: !87)
!2988 = !DILocalVariable(name: "s22", arg: 3, scope: !2983, file: !2939, line: 132, type: !41)
!2989 = !DILocalVariable(name: "s23", arg: 4, scope: !2983, file: !2939, line: 132, type: !41)
!2990 = !DILocalVariable(name: "s24", arg: 5, scope: !2983, file: !2939, line: 132, type: !41)
!2991 = !DILocalVariable(name: "s25", arg: 6, scope: !2983, file: !2939, line: 132, type: !41)
!2992 = !DILocalVariable(name: "s26", arg: 7, scope: !2983, file: !2939, line: 132, type: !41)
!2993 = !DILocalVariable(name: "s27", arg: 8, scope: !2983, file: !2939, line: 132, type: !41)
!2994 = !DILocalVariable(name: "s28", arg: 9, scope: !2983, file: !2939, line: 132, type: !41)
!2995 = !DILocation(line: 132, column: 41, scope: !2983, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 153, column: 16, scope: !2997, inlinedAt: !2975)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !2939, line: 150, column: 11)
!2998 = distinct !DILexicalBlock(scope: !2981, file: !2939, line: 149, column: 5)
!2999 = !DILocation(line: 132, column: 100, scope: !2983, inlinedAt: !2996)
!3000 = !DILocation(line: 132, column: 110, scope: !2983, inlinedAt: !2996)
!3001 = !DILocation(line: 134, column: 7, scope: !3002, inlinedAt: !2996)
!3002 = distinct !DILexicalBlock(scope: !2983, file: !2939, line: 134, column: 7)
!3003 = !DILocalVariable(name: "s2", arg: 2, scope: !3004, file: !2939, line: 118, type: !87)
!3004 = distinct !DISubprogram(name: "strcaseeq3", scope: !2939, file: !2939, line: 118, type: !3005, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3007)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!54, !87, !87, !41, !41, !41, !41, !41, !41}
!3007 = !{!3008, !3003, !3009, !3010, !3011, !3012, !3013, !3014}
!3008 = !DILocalVariable(name: "s1", arg: 1, scope: !3004, file: !2939, line: 118, type: !87)
!3009 = !DILocalVariable(name: "s23", arg: 3, scope: !3004, file: !2939, line: 118, type: !41)
!3010 = !DILocalVariable(name: "s24", arg: 4, scope: !3004, file: !2939, line: 118, type: !41)
!3011 = !DILocalVariable(name: "s25", arg: 5, scope: !3004, file: !2939, line: 118, type: !41)
!3012 = !DILocalVariable(name: "s26", arg: 6, scope: !3004, file: !2939, line: 118, type: !41)
!3013 = !DILocalVariable(name: "s27", arg: 7, scope: !3004, file: !2939, line: 118, type: !41)
!3014 = !DILocalVariable(name: "s28", arg: 8, scope: !3004, file: !2939, line: 118, type: !41)
!3015 = !DILocation(line: 118, column: 41, scope: !3004, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 139, column: 16, scope: !3017, inlinedAt: !2996)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !2939, line: 136, column: 11)
!3018 = distinct !DILexicalBlock(scope: !3002, file: !2939, line: 135, column: 5)
!3019 = !DILocation(line: 118, column: 90, scope: !3004, inlinedAt: !3016)
!3020 = !DILocation(line: 118, column: 100, scope: !3004, inlinedAt: !3016)
!3021 = !DILocation(line: 120, column: 7, scope: !3022, inlinedAt: !3016)
!3022 = distinct !DILexicalBlock(scope: !3004, file: !2939, line: 120, column: 7)
!3023 = !DILocation(line: 120, column: 7, scope: !3004, inlinedAt: !3016)
!3024 = !DILocalVariable(name: "s2", arg: 2, scope: !3025, file: !2939, line: 104, type: !87)
!3025 = distinct !DISubprogram(name: "strcaseeq4", scope: !2939, file: !2939, line: 104, type: !3026, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3028)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!54, !87, !87, !41, !41, !41, !41, !41}
!3028 = !{!3029, !3024, !3030, !3031, !3032, !3033, !3034}
!3029 = !DILocalVariable(name: "s1", arg: 1, scope: !3025, file: !2939, line: 104, type: !87)
!3030 = !DILocalVariable(name: "s24", arg: 3, scope: !3025, file: !2939, line: 104, type: !41)
!3031 = !DILocalVariable(name: "s25", arg: 4, scope: !3025, file: !2939, line: 104, type: !41)
!3032 = !DILocalVariable(name: "s26", arg: 5, scope: !3025, file: !2939, line: 104, type: !41)
!3033 = !DILocalVariable(name: "s27", arg: 6, scope: !3025, file: !2939, line: 104, type: !41)
!3034 = !DILocalVariable(name: "s28", arg: 7, scope: !3025, file: !2939, line: 104, type: !41)
!3035 = !DILocation(line: 104, column: 41, scope: !3025, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 125, column: 16, scope: !3037, inlinedAt: !3016)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !2939, line: 122, column: 11)
!3038 = distinct !DILexicalBlock(scope: !3022, file: !2939, line: 121, column: 5)
!3039 = !DILocation(line: 104, column: 80, scope: !3025, inlinedAt: !3036)
!3040 = !DILocation(line: 104, column: 90, scope: !3025, inlinedAt: !3036)
!3041 = !DILocation(line: 106, column: 7, scope: !3042, inlinedAt: !3036)
!3042 = distinct !DILexicalBlock(scope: !3025, file: !2939, line: 106, column: 7)
!3043 = !DILocation(line: 106, column: 7, scope: !3025, inlinedAt: !3036)
!3044 = !DILocalVariable(name: "s2", arg: 2, scope: !3045, file: !2939, line: 90, type: !87)
!3045 = distinct !DISubprogram(name: "strcaseeq5", scope: !2939, file: !2939, line: 90, type: !3046, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!54, !87, !87, !41, !41, !41, !41}
!3048 = !{!3049, !3044, !3050, !3051, !3052, !3053}
!3049 = !DILocalVariable(name: "s1", arg: 1, scope: !3045, file: !2939, line: 90, type: !87)
!3050 = !DILocalVariable(name: "s25", arg: 3, scope: !3045, file: !2939, line: 90, type: !41)
!3051 = !DILocalVariable(name: "s26", arg: 4, scope: !3045, file: !2939, line: 90, type: !41)
!3052 = !DILocalVariable(name: "s27", arg: 5, scope: !3045, file: !2939, line: 90, type: !41)
!3053 = !DILocalVariable(name: "s28", arg: 6, scope: !3045, file: !2939, line: 90, type: !41)
!3054 = !DILocation(line: 90, column: 41, scope: !3045, inlinedAt: !3055)
!3055 = distinct !DILocation(line: 111, column: 16, scope: !3056, inlinedAt: !3036)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !2939, line: 108, column: 11)
!3057 = distinct !DILexicalBlock(scope: !3042, file: !2939, line: 107, column: 5)
!3058 = !DILocation(line: 90, column: 70, scope: !3045, inlinedAt: !3055)
!3059 = !DILocation(line: 90, column: 80, scope: !3045, inlinedAt: !3055)
!3060 = !DILocation(line: 92, column: 7, scope: !3061, inlinedAt: !3055)
!3061 = distinct !DILexicalBlock(scope: !3045, file: !2939, line: 92, column: 7)
!3062 = !DILocation(line: 92, column: 7, scope: !3045, inlinedAt: !3055)
!3063 = !DILocation(line: 227, column: 12, scope: !2955)
!3064 = !DILocation(line: 227, column: 21, scope: !2955)
!3065 = !DILocation(line: 227, column: 5, scope: !2955)
!3066 = !DILocation(line: 146, column: 41, scope: !2961, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 167, column: 16, scope: !2976, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 228, column: 7, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !2920, file: !249, line: 228, column: 7)
!3070 = !DILocation(line: 146, column: 110, scope: !2961, inlinedAt: !3067)
!3071 = !DILocation(line: 146, column: 120, scope: !2961, inlinedAt: !3067)
!3072 = !DILocation(line: 148, column: 7, scope: !2981, inlinedAt: !3067)
!3073 = !DILocation(line: 132, column: 41, scope: !2983, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 153, column: 16, scope: !2997, inlinedAt: !3067)
!3075 = !DILocation(line: 132, column: 100, scope: !2983, inlinedAt: !3074)
!3076 = !DILocation(line: 132, column: 110, scope: !2983, inlinedAt: !3074)
!3077 = !DILocation(line: 134, column: 7, scope: !3002, inlinedAt: !3074)
!3078 = !DILocation(line: 134, column: 7, scope: !2983, inlinedAt: !3074)
!3079 = !DILocation(line: 118, column: 41, scope: !3004, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 139, column: 16, scope: !3017, inlinedAt: !3074)
!3081 = !DILocation(line: 118, column: 90, scope: !3004, inlinedAt: !3080)
!3082 = !DILocation(line: 118, column: 100, scope: !3004, inlinedAt: !3080)
!3083 = !DILocation(line: 120, column: 7, scope: !3022, inlinedAt: !3080)
!3084 = !DILocation(line: 120, column: 7, scope: !3004, inlinedAt: !3080)
!3085 = !DILocation(line: 104, column: 41, scope: !3025, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 125, column: 16, scope: !3037, inlinedAt: !3080)
!3087 = !DILocation(line: 104, column: 80, scope: !3025, inlinedAt: !3086)
!3088 = !DILocation(line: 104, column: 90, scope: !3025, inlinedAt: !3086)
!3089 = !DILocation(line: 106, column: 7, scope: !3042, inlinedAt: !3086)
!3090 = !DILocation(line: 106, column: 7, scope: !3025, inlinedAt: !3086)
!3091 = !DILocation(line: 90, column: 41, scope: !3045, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 111, column: 16, scope: !3056, inlinedAt: !3086)
!3093 = !DILocation(line: 90, column: 70, scope: !3045, inlinedAt: !3092)
!3094 = !DILocation(line: 90, column: 80, scope: !3045, inlinedAt: !3092)
!3095 = !DILocation(line: 92, column: 7, scope: !3061, inlinedAt: !3092)
!3096 = !DILocation(line: 92, column: 7, scope: !3045, inlinedAt: !3092)
!3097 = !DILocalVariable(name: "s2", arg: 2, scope: !3098, file: !2939, line: 76, type: !87)
!3098 = distinct !DISubprogram(name: "strcaseeq6", scope: !2939, file: !2939, line: 76, type: !3099, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!54, !87, !87, !41, !41, !41}
!3101 = !{!3102, !3097, !3103, !3104, !3105}
!3102 = !DILocalVariable(name: "s1", arg: 1, scope: !3098, file: !2939, line: 76, type: !87)
!3103 = !DILocalVariable(name: "s26", arg: 3, scope: !3098, file: !2939, line: 76, type: !41)
!3104 = !DILocalVariable(name: "s27", arg: 4, scope: !3098, file: !2939, line: 76, type: !41)
!3105 = !DILocalVariable(name: "s28", arg: 5, scope: !3098, file: !2939, line: 76, type: !41)
!3106 = !DILocation(line: 76, column: 41, scope: !3098, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 97, column: 16, scope: !3108, inlinedAt: !3092)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !2939, line: 94, column: 11)
!3109 = distinct !DILexicalBlock(scope: !3061, file: !2939, line: 93, column: 5)
!3110 = !DILocation(line: 76, column: 60, scope: !3098, inlinedAt: !3107)
!3111 = !DILocation(line: 76, column: 70, scope: !3098, inlinedAt: !3107)
!3112 = !DILocation(line: 78, column: 7, scope: !3113, inlinedAt: !3107)
!3113 = distinct !DILexicalBlock(scope: !3098, file: !2939, line: 78, column: 7)
!3114 = !DILocation(line: 78, column: 7, scope: !3098, inlinedAt: !3107)
!3115 = !DILocalVariable(name: "s2", arg: 2, scope: !3116, file: !2939, line: 62, type: !87)
!3116 = distinct !DISubprogram(name: "strcaseeq7", scope: !2939, file: !2939, line: 62, type: !3117, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3119)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!54, !87, !87, !41, !41}
!3119 = !{!3120, !3115, !3121, !3122}
!3120 = !DILocalVariable(name: "s1", arg: 1, scope: !3116, file: !2939, line: 62, type: !87)
!3121 = !DILocalVariable(name: "s27", arg: 3, scope: !3116, file: !2939, line: 62, type: !41)
!3122 = !DILocalVariable(name: "s28", arg: 4, scope: !3116, file: !2939, line: 62, type: !41)
!3123 = !DILocation(line: 62, column: 41, scope: !3116, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 83, column: 16, scope: !3125, inlinedAt: !3107)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !2939, line: 80, column: 11)
!3126 = distinct !DILexicalBlock(scope: !3113, file: !2939, line: 79, column: 5)
!3127 = !DILocation(line: 62, column: 50, scope: !3116, inlinedAt: !3124)
!3128 = !DILocation(line: 62, column: 60, scope: !3116, inlinedAt: !3124)
!3129 = !DILocation(line: 64, column: 7, scope: !3130, inlinedAt: !3124)
!3130 = distinct !DILexicalBlock(scope: !3116, file: !2939, line: 64, column: 7)
!3131 = !DILocation(line: 228, column: 7, scope: !2920)
!3132 = !DILocation(line: 229, column: 12, scope: !3069)
!3133 = !DILocation(line: 229, column: 21, scope: !3069)
!3134 = !DILocation(line: 229, column: 5, scope: !3069)
!3135 = !DILocation(line: 231, column: 13, scope: !2920)
!3136 = !DILocation(line: 231, column: 11, scope: !2920)
!3137 = !DILocation(line: 231, column: 3, scope: !2920)
!3138 = !DILocation(line: 232, column: 1, scope: !2920)
!3139 = distinct !DISubprogram(name: "quotearg_alloc", scope: !249, file: !249, line: 791, type: !3140, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3142)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!40, !87, !45, !2266}
!3142 = !{!3143, !3144, !3145}
!3143 = !DILocalVariable(name: "arg", arg: 1, scope: !3139, file: !249, line: 791, type: !87)
!3144 = !DILocalVariable(name: "argsize", arg: 2, scope: !3139, file: !249, line: 791, type: !45)
!3145 = !DILocalVariable(name: "o", arg: 3, scope: !3139, file: !249, line: 792, type: !2266)
!3146 = !DILocation(line: 791, column: 29, scope: !3139)
!3147 = !DILocation(line: 791, column: 41, scope: !3139)
!3148 = !DILocation(line: 792, column: 47, scope: !3139)
!3149 = !DILocalVariable(name: "arg", arg: 1, scope: !3150, file: !249, line: 804, type: !87)
!3150 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !249, file: !249, line: 804, type: !3151, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!40, !87, !45, !155, !2266}
!3153 = !{!3149, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161}
!3154 = !DILocalVariable(name: "argsize", arg: 2, scope: !3150, file: !249, line: 804, type: !45)
!3155 = !DILocalVariable(name: "size", arg: 3, scope: !3150, file: !249, line: 804, type: !155)
!3156 = !DILocalVariable(name: "o", arg: 4, scope: !3150, file: !249, line: 805, type: !2266)
!3157 = !DILocalVariable(name: "p", scope: !3150, file: !249, line: 807, type: !2266)
!3158 = !DILocalVariable(name: "e", scope: !3150, file: !249, line: 808, type: !54)
!3159 = !DILocalVariable(name: "flags", scope: !3150, file: !249, line: 810, type: !54)
!3160 = !DILocalVariable(name: "bufsize", scope: !3150, file: !249, line: 811, type: !45)
!3161 = !DILocalVariable(name: "buf", scope: !3150, file: !249, line: 815, type: !40)
!3162 = !DILocation(line: 804, column: 33, scope: !3150, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 794, column: 10, scope: !3139)
!3164 = !DILocation(line: 804, column: 45, scope: !3150, inlinedAt: !3163)
!3165 = !DILocation(line: 804, column: 62, scope: !3150, inlinedAt: !3163)
!3166 = !DILocation(line: 805, column: 51, scope: !3150, inlinedAt: !3163)
!3167 = !DILocation(line: 807, column: 37, scope: !3150, inlinedAt: !3163)
!3168 = !DILocation(line: 807, column: 33, scope: !3150, inlinedAt: !3163)
!3169 = !DILocation(line: 808, column: 11, scope: !3150, inlinedAt: !3163)
!3170 = !DILocation(line: 808, column: 7, scope: !3150, inlinedAt: !3163)
!3171 = !DILocation(line: 810, column: 18, scope: !3150, inlinedAt: !3163)
!3172 = !DILocation(line: 810, column: 24, scope: !3150, inlinedAt: !3163)
!3173 = !DILocation(line: 810, column: 7, scope: !3150, inlinedAt: !3163)
!3174 = !DILocation(line: 811, column: 69, scope: !3150, inlinedAt: !3163)
!3175 = !DILocation(line: 812, column: 53, scope: !3150, inlinedAt: !3163)
!3176 = !DILocation(line: 813, column: 49, scope: !3150, inlinedAt: !3163)
!3177 = !DILocation(line: 814, column: 49, scope: !3150, inlinedAt: !3163)
!3178 = !DILocation(line: 811, column: 20, scope: !3150, inlinedAt: !3163)
!3179 = !DILocation(line: 814, column: 62, scope: !3150, inlinedAt: !3163)
!3180 = !DILocation(line: 811, column: 10, scope: !3150, inlinedAt: !3163)
!3181 = !DILocalVariable(name: "n", arg: 1, scope: !3182, file: !151, line: 220, type: !45)
!3182 = distinct !DISubprogram(name: "xcharalloc", scope: !151, file: !151, line: 220, type: !3183, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3185)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!40, !45}
!3185 = !{!3181}
!3186 = !DILocation(line: 220, column: 20, scope: !3182, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 815, column: 15, scope: !3150, inlinedAt: !3163)
!3188 = !DILocation(line: 222, column: 10, scope: !3182, inlinedAt: !3187)
!3189 = !DILocation(line: 815, column: 9, scope: !3150, inlinedAt: !3163)
!3190 = !DILocation(line: 816, column: 60, scope: !3150, inlinedAt: !3163)
!3191 = !DILocation(line: 818, column: 32, scope: !3150, inlinedAt: !3163)
!3192 = !DILocation(line: 818, column: 47, scope: !3150, inlinedAt: !3163)
!3193 = !DILocation(line: 816, column: 3, scope: !3150, inlinedAt: !3163)
!3194 = !DILocation(line: 819, column: 9, scope: !3150, inlinedAt: !3163)
!3195 = !DILocation(line: 794, column: 3, scope: !3139)
!3196 = !DILocation(line: 804, column: 33, scope: !3150)
!3197 = !DILocation(line: 804, column: 45, scope: !3150)
!3198 = !DILocation(line: 804, column: 62, scope: !3150)
!3199 = !DILocation(line: 805, column: 51, scope: !3150)
!3200 = !DILocation(line: 807, column: 37, scope: !3150)
!3201 = !DILocation(line: 807, column: 33, scope: !3150)
!3202 = !DILocation(line: 808, column: 11, scope: !3150)
!3203 = !DILocation(line: 808, column: 7, scope: !3150)
!3204 = !DILocation(line: 810, column: 18, scope: !3150)
!3205 = !DILocation(line: 810, column: 27, scope: !3150)
!3206 = !DILocation(line: 810, column: 24, scope: !3150)
!3207 = !DILocation(line: 810, column: 7, scope: !3150)
!3208 = !DILocation(line: 811, column: 69, scope: !3150)
!3209 = !DILocation(line: 812, column: 53, scope: !3150)
!3210 = !DILocation(line: 813, column: 49, scope: !3150)
!3211 = !DILocation(line: 814, column: 49, scope: !3150)
!3212 = !DILocation(line: 811, column: 20, scope: !3150)
!3213 = !DILocation(line: 814, column: 62, scope: !3150)
!3214 = !DILocation(line: 811, column: 10, scope: !3150)
!3215 = !DILocation(line: 220, column: 20, scope: !3182, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 815, column: 15, scope: !3150)
!3217 = !DILocation(line: 222, column: 10, scope: !3182, inlinedAt: !3216)
!3218 = !DILocation(line: 815, column: 9, scope: !3150)
!3219 = !DILocation(line: 816, column: 60, scope: !3150)
!3220 = !DILocation(line: 818, column: 32, scope: !3150)
!3221 = !DILocation(line: 818, column: 47, scope: !3150)
!3222 = !DILocation(line: 816, column: 3, scope: !3150)
!3223 = !DILocation(line: 819, column: 9, scope: !3150)
!3224 = !DILocation(line: 820, column: 7, scope: !3150)
!3225 = !DILocation(line: 821, column: 11, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3150, file: !249, line: 820, column: 7)
!3227 = !DILocation(line: 821, column: 5, scope: !3226)
!3228 = !DILocation(line: 822, column: 3, scope: !3150)
!3229 = distinct !DISubprogram(name: "quotearg_free", scope: !249, file: !249, line: 840, type: !727, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3230)
!3230 = !{!3231, !3232}
!3231 = !DILocalVariable(name: "sv", scope: !3229, file: !249, line: 842, type: !275)
!3232 = !DILocalVariable(name: "i", scope: !3229, file: !249, line: 843, type: !54)
!3233 = !DILocation(line: 842, column: 24, scope: !3229)
!3234 = !DILocation(line: 842, column: 19, scope: !3229)
!3235 = !DILocation(line: 843, column: 7, scope: !3229)
!3236 = !DILocation(line: 844, column: 19, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3238, file: !249, line: 844, column: 3)
!3238 = distinct !DILexicalBlock(scope: !3229, file: !249, line: 844, column: 3)
!3239 = !DILocation(line: 844, column: 17, scope: !3237)
!3240 = !DILocation(line: 844, column: 3, scope: !3238)
!3241 = !DILocation(line: 845, column: 17, scope: !3237)
!3242 = !{!3243, !719, i64 8}
!3243 = !{!"slotvec", !812, i64 0, !719, i64 8}
!3244 = !DILocation(line: 845, column: 5, scope: !3237)
!3245 = !DILocation(line: 844, column: 28, scope: !3237)
!3246 = distinct !{!3246, !3240, !3247}
!3247 = !DILocation(line: 845, column: 20, scope: !3238)
!3248 = !DILocation(line: 846, column: 13, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3229, file: !249, line: 846, column: 7)
!3250 = !DILocation(line: 846, column: 17, scope: !3249)
!3251 = !DILocation(line: 846, column: 7, scope: !3229)
!3252 = !DILocation(line: 848, column: 7, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3249, file: !249, line: 847, column: 5)
!3254 = !DILocation(line: 849, column: 21, scope: !3253)
!3255 = !{!3243, !812, i64 0}
!3256 = !DILocation(line: 850, column: 20, scope: !3253)
!3257 = !DILocation(line: 851, column: 5, scope: !3253)
!3258 = !DILocation(line: 852, column: 10, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3229, file: !249, line: 852, column: 7)
!3260 = !DILocation(line: 852, column: 7, scope: !3229)
!3261 = !DILocation(line: 854, column: 13, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3259, file: !249, line: 853, column: 5)
!3263 = !DILocation(line: 854, column: 7, scope: !3262)
!3264 = !DILocation(line: 855, column: 15, scope: !3262)
!3265 = !DILocation(line: 856, column: 5, scope: !3262)
!3266 = !DILocation(line: 857, column: 10, scope: !3229)
!3267 = !DILocation(line: 858, column: 1, scope: !3229)
!3268 = distinct !DISubprogram(name: "quotearg_n", scope: !249, file: !249, line: 922, type: !3269, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!40, !54, !87}
!3271 = !{!3272, !3273}
!3272 = !DILocalVariable(name: "n", arg: 1, scope: !3268, file: !249, line: 922, type: !54)
!3273 = !DILocalVariable(name: "arg", arg: 2, scope: !3268, file: !249, line: 922, type: !87)
!3274 = !DILocation(line: 922, column: 17, scope: !3268)
!3275 = !DILocation(line: 922, column: 32, scope: !3268)
!3276 = !DILocation(line: 924, column: 10, scope: !3268)
!3277 = !DILocation(line: 924, column: 3, scope: !3268)
!3278 = distinct !DISubprogram(name: "quotearg_n_options", scope: !249, file: !249, line: 869, type: !3279, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!40, !54, !87, !45, !2266}
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287, !3288, !3291, !3293, !3294, !3295}
!3282 = !DILocalVariable(name: "n", arg: 1, scope: !3278, file: !249, line: 869, type: !54)
!3283 = !DILocalVariable(name: "arg", arg: 2, scope: !3278, file: !249, line: 869, type: !87)
!3284 = !DILocalVariable(name: "argsize", arg: 3, scope: !3278, file: !249, line: 869, type: !45)
!3285 = !DILocalVariable(name: "options", arg: 4, scope: !3278, file: !249, line: 870, type: !2266)
!3286 = !DILocalVariable(name: "e", scope: !3278, file: !249, line: 872, type: !54)
!3287 = !DILocalVariable(name: "sv", scope: !3278, file: !249, line: 874, type: !275)
!3288 = !DILocalVariable(name: "preallocated", scope: !3289, file: !249, line: 881, type: !61)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !249, line: 880, column: 5)
!3290 = distinct !DILexicalBlock(scope: !3278, file: !249, line: 879, column: 7)
!3291 = !DILocalVariable(name: "size", scope: !3292, file: !249, line: 894, type: !45)
!3292 = distinct !DILexicalBlock(scope: !3278, file: !249, line: 893, column: 3)
!3293 = !DILocalVariable(name: "val", scope: !3292, file: !249, line: 895, type: !40)
!3294 = !DILocalVariable(name: "flags", scope: !3292, file: !249, line: 897, type: !54)
!3295 = !DILocalVariable(name: "qsize", scope: !3292, file: !249, line: 898, type: !45)
!3296 = !DILocation(line: 869, column: 25, scope: !3278)
!3297 = !DILocation(line: 869, column: 40, scope: !3278)
!3298 = !DILocation(line: 869, column: 52, scope: !3278)
!3299 = !DILocation(line: 870, column: 51, scope: !3278)
!3300 = !DILocation(line: 872, column: 11, scope: !3278)
!3301 = !DILocation(line: 872, column: 7, scope: !3278)
!3302 = !DILocation(line: 874, column: 24, scope: !3278)
!3303 = !DILocation(line: 874, column: 19, scope: !3278)
!3304 = !DILocation(line: 876, column: 9, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3278, file: !249, line: 876, column: 7)
!3306 = !DILocation(line: 876, column: 7, scope: !3278)
!3307 = !DILocation(line: 877, column: 5, scope: !3305)
!3308 = !DILocation(line: 879, column: 7, scope: !3290)
!3309 = !DILocation(line: 879, column: 14, scope: !3290)
!3310 = !DILocation(line: 879, column: 7, scope: !3278)
!3311 = !DILocation(line: 881, column: 31, scope: !3289)
!3312 = !DILocation(line: 883, column: 67, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3289, file: !249, line: 883, column: 11)
!3314 = !DILocation(line: 883, column: 11, scope: !3289)
!3315 = !DILocation(line: 884, column: 9, scope: !3313)
!3316 = !DILocation(line: 886, column: 32, scope: !3289)
!3317 = !DILocation(line: 886, column: 61, scope: !3289)
!3318 = !DILocation(line: 886, column: 58, scope: !3289)
!3319 = !DILocation(line: 886, column: 66, scope: !3289)
!3320 = !DILocation(line: 886, column: 22, scope: !3289)
!3321 = !DILocation(line: 886, column: 15, scope: !3289)
!3322 = !DILocation(line: 887, column: 11, scope: !3289)
!3323 = !DILocation(line: 888, column: 15, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3289, file: !249, line: 887, column: 11)
!3325 = !{i64 0, i64 8, !811, i64 8, i64 8, !718}
!3326 = !DILocation(line: 888, column: 9, scope: !3324)
!3327 = !DILocation(line: 889, column: 20, scope: !3289)
!3328 = !DILocation(line: 889, column: 18, scope: !3289)
!3329 = !DILocation(line: 889, column: 7, scope: !3289)
!3330 = !DILocation(line: 889, column: 38, scope: !3289)
!3331 = !DILocation(line: 889, column: 31, scope: !3289)
!3332 = !DILocation(line: 889, column: 48, scope: !3289)
!3333 = !DILocation(line: 890, column: 14, scope: !3289)
!3334 = !DILocation(line: 891, column: 5, scope: !3289)
!3335 = !DILocation(line: 894, column: 19, scope: !3292)
!3336 = !DILocation(line: 894, column: 25, scope: !3292)
!3337 = !DILocation(line: 894, column: 12, scope: !3292)
!3338 = !DILocation(line: 895, column: 23, scope: !3292)
!3339 = !DILocation(line: 895, column: 11, scope: !3292)
!3340 = !DILocation(line: 897, column: 26, scope: !3292)
!3341 = !DILocation(line: 897, column: 32, scope: !3292)
!3342 = !DILocation(line: 897, column: 9, scope: !3292)
!3343 = !DILocation(line: 899, column: 55, scope: !3292)
!3344 = !DILocation(line: 900, column: 46, scope: !3292)
!3345 = !DILocation(line: 901, column: 55, scope: !3292)
!3346 = !DILocation(line: 902, column: 55, scope: !3292)
!3347 = !DILocation(line: 898, column: 20, scope: !3292)
!3348 = !DILocation(line: 898, column: 12, scope: !3292)
!3349 = !DILocation(line: 904, column: 14, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3292, file: !249, line: 904, column: 9)
!3351 = !DILocation(line: 904, column: 9, scope: !3292)
!3352 = !DILocation(line: 906, column: 35, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3350, file: !249, line: 905, column: 7)
!3354 = !DILocation(line: 906, column: 20, scope: !3353)
!3355 = !DILocation(line: 907, column: 17, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3353, file: !249, line: 907, column: 13)
!3357 = !DILocation(line: 907, column: 13, scope: !3353)
!3358 = !DILocation(line: 908, column: 11, scope: !3356)
!3359 = !DILocation(line: 220, column: 20, scope: !3182, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 909, column: 27, scope: !3353)
!3361 = !DILocation(line: 222, column: 10, scope: !3182, inlinedAt: !3360)
!3362 = !DILocation(line: 909, column: 19, scope: !3353)
!3363 = !DILocation(line: 910, column: 69, scope: !3353)
!3364 = !DILocation(line: 912, column: 44, scope: !3353)
!3365 = !DILocation(line: 913, column: 44, scope: !3353)
!3366 = !DILocation(line: 910, column: 9, scope: !3353)
!3367 = !DILocation(line: 914, column: 7, scope: !3353)
!3368 = !DILocation(line: 916, column: 11, scope: !3292)
!3369 = !DILocation(line: 917, column: 5, scope: !3292)
!3370 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !249, file: !249, line: 928, type: !3371, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3373)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!40, !54, !87, !45}
!3373 = !{!3374, !3375, !3376}
!3374 = !DILocalVariable(name: "n", arg: 1, scope: !3370, file: !249, line: 928, type: !54)
!3375 = !DILocalVariable(name: "arg", arg: 2, scope: !3370, file: !249, line: 928, type: !87)
!3376 = !DILocalVariable(name: "argsize", arg: 3, scope: !3370, file: !249, line: 928, type: !45)
!3377 = !DILocation(line: 928, column: 21, scope: !3370)
!3378 = !DILocation(line: 928, column: 36, scope: !3370)
!3379 = !DILocation(line: 928, column: 48, scope: !3370)
!3380 = !DILocation(line: 930, column: 10, scope: !3370)
!3381 = !DILocation(line: 930, column: 3, scope: !3370)
!3382 = distinct !DISubprogram(name: "quotearg", scope: !249, file: !249, line: 934, type: !3383, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!40, !87}
!3385 = !{!3386}
!3386 = !DILocalVariable(name: "arg", arg: 1, scope: !3382, file: !249, line: 934, type: !87)
!3387 = !DILocation(line: 934, column: 23, scope: !3382)
!3388 = !DILocation(line: 922, column: 17, scope: !3268, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 936, column: 10, scope: !3382)
!3390 = !DILocation(line: 922, column: 32, scope: !3268, inlinedAt: !3389)
!3391 = !DILocation(line: 924, column: 10, scope: !3268, inlinedAt: !3389)
!3392 = !DILocation(line: 936, column: 3, scope: !3382)
!3393 = distinct !DISubprogram(name: "quotearg_mem", scope: !249, file: !249, line: 940, type: !3394, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3396)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!40, !87, !45}
!3396 = !{!3397, !3398}
!3397 = !DILocalVariable(name: "arg", arg: 1, scope: !3393, file: !249, line: 940, type: !87)
!3398 = !DILocalVariable(name: "argsize", arg: 2, scope: !3393, file: !249, line: 940, type: !45)
!3399 = !DILocation(line: 940, column: 27, scope: !3393)
!3400 = !DILocation(line: 940, column: 39, scope: !3393)
!3401 = !DILocation(line: 928, column: 21, scope: !3370, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 942, column: 10, scope: !3393)
!3403 = !DILocation(line: 928, column: 36, scope: !3370, inlinedAt: !3402)
!3404 = !DILocation(line: 928, column: 48, scope: !3370, inlinedAt: !3402)
!3405 = !DILocation(line: 930, column: 10, scope: !3370, inlinedAt: !3402)
!3406 = !DILocation(line: 942, column: 3, scope: !3393)
!3407 = distinct !DISubprogram(name: "quotearg_n_style", scope: !249, file: !249, line: 946, type: !3408, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3410)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!40, !54, !16, !87}
!3410 = !{!3411, !3412, !3413, !3414}
!3411 = !DILocalVariable(name: "n", arg: 1, scope: !3407, file: !249, line: 946, type: !54)
!3412 = !DILocalVariable(name: "s", arg: 2, scope: !3407, file: !249, line: 946, type: !16)
!3413 = !DILocalVariable(name: "arg", arg: 3, scope: !3407, file: !249, line: 946, type: !87)
!3414 = !DILocalVariable(name: "o", scope: !3407, file: !249, line: 948, type: !2267)
!3415 = !DILocalVariable(name: "o", scope: !3416, file: !249, line: 187, type: !256)
!3416 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !249, file: !249, line: 185, type: !3417, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!256, !16}
!3419 = !{!3420, !3415}
!3420 = !DILocalVariable(name: "style", arg: 1, scope: !3416, file: !249, line: 185, type: !16)
!3421 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3422 = !DILocation(line: 187, column: 26, scope: !3416, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 948, column: 36, scope: !3407)
!3424 = !DILocation(line: 946, column: 23, scope: !3407)
!3425 = !DILocation(line: 946, column: 45, scope: !3407)
!3426 = !DILocation(line: 946, column: 60, scope: !3407)
!3427 = !DILocation(line: 948, column: 3, scope: !3407)
!3428 = !DILocation(line: 948, column: 32, scope: !3407)
!3429 = !DILocation(line: 185, column: 48, scope: !3416, inlinedAt: !3423)
!3430 = !DILocation(line: 187, column: 3, scope: !3416, inlinedAt: !3423)
!3431 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3432 = !DILocation(line: 188, column: 13, scope: !3433, inlinedAt: !3423)
!3433 = distinct !DILexicalBlock(scope: !3416, file: !249, line: 188, column: 7)
!3434 = !DILocation(line: 188, column: 7, scope: !3416, inlinedAt: !3423)
!3435 = !DILocation(line: 189, column: 5, scope: !3433, inlinedAt: !3423)
!3436 = !{!3437}
!3437 = distinct !{!3437, !3438, !"quoting_options_from_style: argument 0"}
!3438 = distinct !{!3438, !"quoting_options_from_style"}
!3439 = !DILocation(line: 191, column: 10, scope: !3416, inlinedAt: !3423)
!3440 = !DILocation(line: 192, column: 1, scope: !3416, inlinedAt: !3423)
!3441 = !DILocation(line: 949, column: 10, scope: !3407)
!3442 = !DILocation(line: 950, column: 1, scope: !3407)
!3443 = !DILocation(line: 949, column: 3, scope: !3407)
!3444 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !249, file: !249, line: 953, type: !3445, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3447)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!40, !54, !16, !87, !45}
!3447 = !{!3448, !3449, !3450, !3451, !3452}
!3448 = !DILocalVariable(name: "n", arg: 1, scope: !3444, file: !249, line: 953, type: !54)
!3449 = !DILocalVariable(name: "s", arg: 2, scope: !3444, file: !249, line: 953, type: !16)
!3450 = !DILocalVariable(name: "arg", arg: 3, scope: !3444, file: !249, line: 954, type: !87)
!3451 = !DILocalVariable(name: "argsize", arg: 4, scope: !3444, file: !249, line: 954, type: !45)
!3452 = !DILocalVariable(name: "o", scope: !3444, file: !249, line: 956, type: !2267)
!3453 = !DILocation(line: 187, column: 26, scope: !3416, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 956, column: 36, scope: !3444)
!3455 = !DILocation(line: 953, column: 27, scope: !3444)
!3456 = !DILocation(line: 953, column: 49, scope: !3444)
!3457 = !DILocation(line: 954, column: 35, scope: !3444)
!3458 = !DILocation(line: 954, column: 47, scope: !3444)
!3459 = !DILocation(line: 956, column: 3, scope: !3444)
!3460 = !DILocation(line: 956, column: 32, scope: !3444)
!3461 = !DILocation(line: 185, column: 48, scope: !3416, inlinedAt: !3454)
!3462 = !DILocation(line: 187, column: 3, scope: !3416, inlinedAt: !3454)
!3463 = !DILocation(line: 188, column: 13, scope: !3433, inlinedAt: !3454)
!3464 = !DILocation(line: 188, column: 7, scope: !3416, inlinedAt: !3454)
!3465 = !DILocation(line: 189, column: 5, scope: !3433, inlinedAt: !3454)
!3466 = !{!3467}
!3467 = distinct !{!3467, !3468, !"quoting_options_from_style: argument 0"}
!3468 = distinct !{!3468, !"quoting_options_from_style"}
!3469 = !DILocation(line: 191, column: 10, scope: !3416, inlinedAt: !3454)
!3470 = !DILocation(line: 192, column: 1, scope: !3416, inlinedAt: !3454)
!3471 = !DILocation(line: 957, column: 10, scope: !3444)
!3472 = !DILocation(line: 958, column: 1, scope: !3444)
!3473 = !DILocation(line: 957, column: 3, scope: !3444)
!3474 = distinct !DISubprogram(name: "quotearg_style", scope: !249, file: !249, line: 961, type: !3475, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!40, !16, !87}
!3477 = !{!3478, !3479}
!3478 = !DILocalVariable(name: "s", arg: 1, scope: !3474, file: !249, line: 961, type: !16)
!3479 = !DILocalVariable(name: "arg", arg: 2, scope: !3474, file: !249, line: 961, type: !87)
!3480 = !DILocation(line: 187, column: 26, scope: !3416, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 948, column: 36, scope: !3407, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 963, column: 10, scope: !3474)
!3483 = !DILocation(line: 961, column: 36, scope: !3474)
!3484 = !DILocation(line: 961, column: 51, scope: !3474)
!3485 = !DILocation(line: 946, column: 23, scope: !3407, inlinedAt: !3482)
!3486 = !DILocation(line: 946, column: 45, scope: !3407, inlinedAt: !3482)
!3487 = !DILocation(line: 946, column: 60, scope: !3407, inlinedAt: !3482)
!3488 = !DILocation(line: 948, column: 3, scope: !3407, inlinedAt: !3482)
!3489 = !DILocation(line: 948, column: 32, scope: !3407, inlinedAt: !3482)
!3490 = !DILocation(line: 185, column: 48, scope: !3416, inlinedAt: !3481)
!3491 = !DILocation(line: 187, column: 3, scope: !3416, inlinedAt: !3481)
!3492 = !DILocation(line: 188, column: 13, scope: !3433, inlinedAt: !3481)
!3493 = !DILocation(line: 188, column: 7, scope: !3416, inlinedAt: !3481)
!3494 = !DILocation(line: 189, column: 5, scope: !3433, inlinedAt: !3481)
!3495 = !{!3496}
!3496 = distinct !{!3496, !3497, !"quoting_options_from_style: argument 0"}
!3497 = distinct !{!3497, !"quoting_options_from_style"}
!3498 = !DILocation(line: 191, column: 10, scope: !3416, inlinedAt: !3481)
!3499 = !DILocation(line: 192, column: 1, scope: !3416, inlinedAt: !3481)
!3500 = !DILocation(line: 949, column: 10, scope: !3407, inlinedAt: !3482)
!3501 = !DILocation(line: 950, column: 1, scope: !3407, inlinedAt: !3482)
!3502 = !DILocation(line: 963, column: 3, scope: !3474)
!3503 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !249, file: !249, line: 967, type: !3504, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!40, !16, !87, !45}
!3506 = !{!3507, !3508, !3509}
!3507 = !DILocalVariable(name: "s", arg: 1, scope: !3503, file: !249, line: 967, type: !16)
!3508 = !DILocalVariable(name: "arg", arg: 2, scope: !3503, file: !249, line: 967, type: !87)
!3509 = !DILocalVariable(name: "argsize", arg: 3, scope: !3503, file: !249, line: 967, type: !45)
!3510 = !DILocation(line: 187, column: 26, scope: !3416, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 956, column: 36, scope: !3444, inlinedAt: !3512)
!3512 = distinct !DILocation(line: 969, column: 10, scope: !3503)
!3513 = !DILocation(line: 967, column: 40, scope: !3503)
!3514 = !DILocation(line: 967, column: 55, scope: !3503)
!3515 = !DILocation(line: 967, column: 67, scope: !3503)
!3516 = !DILocation(line: 953, column: 27, scope: !3444, inlinedAt: !3512)
!3517 = !DILocation(line: 953, column: 49, scope: !3444, inlinedAt: !3512)
!3518 = !DILocation(line: 954, column: 35, scope: !3444, inlinedAt: !3512)
!3519 = !DILocation(line: 954, column: 47, scope: !3444, inlinedAt: !3512)
!3520 = !DILocation(line: 956, column: 3, scope: !3444, inlinedAt: !3512)
!3521 = !DILocation(line: 956, column: 32, scope: !3444, inlinedAt: !3512)
!3522 = !DILocation(line: 185, column: 48, scope: !3416, inlinedAt: !3511)
!3523 = !DILocation(line: 187, column: 3, scope: !3416, inlinedAt: !3511)
!3524 = !DILocation(line: 188, column: 13, scope: !3433, inlinedAt: !3511)
!3525 = !DILocation(line: 188, column: 7, scope: !3416, inlinedAt: !3511)
!3526 = !DILocation(line: 189, column: 5, scope: !3433, inlinedAt: !3511)
!3527 = !{!3528}
!3528 = distinct !{!3528, !3529, !"quoting_options_from_style: argument 0"}
!3529 = distinct !{!3529, !"quoting_options_from_style"}
!3530 = !DILocation(line: 191, column: 10, scope: !3416, inlinedAt: !3511)
!3531 = !DILocation(line: 192, column: 1, scope: !3416, inlinedAt: !3511)
!3532 = !DILocation(line: 957, column: 10, scope: !3444, inlinedAt: !3512)
!3533 = !DILocation(line: 958, column: 1, scope: !3444, inlinedAt: !3512)
!3534 = !DILocation(line: 969, column: 3, scope: !3503)
!3535 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !249, file: !249, line: 973, type: !3536, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3538)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!40, !87, !45, !41}
!3538 = !{!3539, !3540, !3541, !3542}
!3539 = !DILocalVariable(name: "arg", arg: 1, scope: !3535, file: !249, line: 973, type: !87)
!3540 = !DILocalVariable(name: "argsize", arg: 2, scope: !3535, file: !249, line: 973, type: !45)
!3541 = !DILocalVariable(name: "ch", arg: 3, scope: !3535, file: !249, line: 973, type: !41)
!3542 = !DILocalVariable(name: "options", scope: !3535, file: !249, line: 975, type: !256)
!3543 = !DILocation(line: 973, column: 32, scope: !3535)
!3544 = !DILocation(line: 973, column: 44, scope: !3535)
!3545 = !DILocation(line: 973, column: 58, scope: !3535)
!3546 = !DILocation(line: 975, column: 3, scope: !3535)
!3547 = !DILocation(line: 976, column: 13, scope: !3535)
!3548 = !{i64 0, i64 4, !768, i64 4, i64 4, !860, i64 8, i64 32, !768, i64 40, i64 8, !718, i64 48, i64 8, !718}
!3549 = !DILocation(line: 975, column: 26, scope: !3535)
!3550 = !DILocation(line: 144, column: 43, scope: !2288, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 977, column: 3, scope: !3535)
!3552 = !DILocation(line: 144, column: 51, scope: !2288, inlinedAt: !3551)
!3553 = !DILocation(line: 144, column: 58, scope: !2288, inlinedAt: !3551)
!3554 = !DILocation(line: 146, column: 17, scope: !2288, inlinedAt: !3551)
!3555 = !DILocation(line: 148, column: 62, scope: !2288, inlinedAt: !3551)
!3556 = !DILocation(line: 148, column: 57, scope: !2288, inlinedAt: !3551)
!3557 = !DILocation(line: 147, column: 17, scope: !2288, inlinedAt: !3551)
!3558 = !DILocation(line: 149, column: 18, scope: !2288, inlinedAt: !3551)
!3559 = !DILocation(line: 149, column: 15, scope: !2288, inlinedAt: !3551)
!3560 = !DILocation(line: 149, column: 7, scope: !2288, inlinedAt: !3551)
!3561 = !DILocation(line: 150, column: 12, scope: !2288, inlinedAt: !3551)
!3562 = !DILocation(line: 150, column: 15, scope: !2288, inlinedAt: !3551)
!3563 = !DILocation(line: 150, column: 25, scope: !2288, inlinedAt: !3551)
!3564 = !DILocation(line: 150, column: 7, scope: !2288, inlinedAt: !3551)
!3565 = !DILocation(line: 151, column: 18, scope: !2288, inlinedAt: !3551)
!3566 = !DILocation(line: 151, column: 23, scope: !2288, inlinedAt: !3551)
!3567 = !DILocation(line: 151, column: 6, scope: !2288, inlinedAt: !3551)
!3568 = !DILocation(line: 978, column: 10, scope: !3535)
!3569 = !DILocation(line: 979, column: 1, scope: !3535)
!3570 = !DILocation(line: 978, column: 3, scope: !3535)
!3571 = distinct !DISubprogram(name: "quotearg_char", scope: !249, file: !249, line: 982, type: !3572, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3574)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!40, !87, !41}
!3574 = !{!3575, !3576}
!3575 = !DILocalVariable(name: "arg", arg: 1, scope: !3571, file: !249, line: 982, type: !87)
!3576 = !DILocalVariable(name: "ch", arg: 2, scope: !3571, file: !249, line: 982, type: !41)
!3577 = !DILocation(line: 982, column: 28, scope: !3571)
!3578 = !DILocation(line: 982, column: 38, scope: !3571)
!3579 = !DILocation(line: 973, column: 32, scope: !3535, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 984, column: 10, scope: !3571)
!3581 = !DILocation(line: 973, column: 44, scope: !3535, inlinedAt: !3580)
!3582 = !DILocation(line: 973, column: 58, scope: !3535, inlinedAt: !3580)
!3583 = !DILocation(line: 975, column: 3, scope: !3535, inlinedAt: !3580)
!3584 = !DILocation(line: 976, column: 13, scope: !3535, inlinedAt: !3580)
!3585 = !DILocation(line: 975, column: 26, scope: !3535, inlinedAt: !3580)
!3586 = !DILocation(line: 144, column: 43, scope: !2288, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 977, column: 3, scope: !3535, inlinedAt: !3580)
!3588 = !DILocation(line: 144, column: 51, scope: !2288, inlinedAt: !3587)
!3589 = !DILocation(line: 144, column: 58, scope: !2288, inlinedAt: !3587)
!3590 = !DILocation(line: 146, column: 17, scope: !2288, inlinedAt: !3587)
!3591 = !DILocation(line: 148, column: 62, scope: !2288, inlinedAt: !3587)
!3592 = !DILocation(line: 148, column: 57, scope: !2288, inlinedAt: !3587)
!3593 = !DILocation(line: 147, column: 17, scope: !2288, inlinedAt: !3587)
!3594 = !DILocation(line: 149, column: 18, scope: !2288, inlinedAt: !3587)
!3595 = !DILocation(line: 149, column: 15, scope: !2288, inlinedAt: !3587)
!3596 = !DILocation(line: 149, column: 7, scope: !2288, inlinedAt: !3587)
!3597 = !DILocation(line: 150, column: 12, scope: !2288, inlinedAt: !3587)
!3598 = !DILocation(line: 150, column: 15, scope: !2288, inlinedAt: !3587)
!3599 = !DILocation(line: 150, column: 25, scope: !2288, inlinedAt: !3587)
!3600 = !DILocation(line: 150, column: 7, scope: !2288, inlinedAt: !3587)
!3601 = !DILocation(line: 151, column: 18, scope: !2288, inlinedAt: !3587)
!3602 = !DILocation(line: 151, column: 23, scope: !2288, inlinedAt: !3587)
!3603 = !DILocation(line: 151, column: 6, scope: !2288, inlinedAt: !3587)
!3604 = !DILocation(line: 978, column: 10, scope: !3535, inlinedAt: !3580)
!3605 = !DILocation(line: 979, column: 1, scope: !3535, inlinedAt: !3580)
!3606 = !DILocation(line: 984, column: 3, scope: !3571)
!3607 = distinct !DISubprogram(name: "quotearg_colon", scope: !249, file: !249, line: 988, type: !3383, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3608)
!3608 = !{!3609}
!3609 = !DILocalVariable(name: "arg", arg: 1, scope: !3607, file: !249, line: 988, type: !87)
!3610 = !DILocation(line: 988, column: 29, scope: !3607)
!3611 = !DILocation(line: 982, column: 28, scope: !3571, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 990, column: 10, scope: !3607)
!3613 = !DILocation(line: 982, column: 38, scope: !3571, inlinedAt: !3612)
!3614 = !DILocation(line: 973, column: 32, scope: !3535, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 984, column: 10, scope: !3571, inlinedAt: !3612)
!3616 = !DILocation(line: 973, column: 44, scope: !3535, inlinedAt: !3615)
!3617 = !DILocation(line: 973, column: 58, scope: !3535, inlinedAt: !3615)
!3618 = !DILocation(line: 975, column: 3, scope: !3535, inlinedAt: !3615)
!3619 = !DILocation(line: 976, column: 13, scope: !3535, inlinedAt: !3615)
!3620 = !DILocation(line: 975, column: 26, scope: !3535, inlinedAt: !3615)
!3621 = !DILocation(line: 144, column: 43, scope: !2288, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 977, column: 3, scope: !3535, inlinedAt: !3615)
!3623 = !DILocation(line: 144, column: 51, scope: !2288, inlinedAt: !3622)
!3624 = !DILocation(line: 144, column: 58, scope: !2288, inlinedAt: !3622)
!3625 = !DILocation(line: 146, column: 17, scope: !2288, inlinedAt: !3622)
!3626 = !DILocation(line: 148, column: 57, scope: !2288, inlinedAt: !3622)
!3627 = !DILocation(line: 147, column: 17, scope: !2288, inlinedAt: !3622)
!3628 = !DILocation(line: 149, column: 7, scope: !2288, inlinedAt: !3622)
!3629 = !DILocation(line: 150, column: 12, scope: !2288, inlinedAt: !3622)
!3630 = !DILocation(line: 151, column: 6, scope: !2288, inlinedAt: !3622)
!3631 = !DILocation(line: 978, column: 10, scope: !3535, inlinedAt: !3615)
!3632 = !DILocation(line: 979, column: 1, scope: !3535, inlinedAt: !3615)
!3633 = !DILocation(line: 990, column: 3, scope: !3607)
!3634 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !249, file: !249, line: 994, type: !3394, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3635)
!3635 = !{!3636, !3637}
!3636 = !DILocalVariable(name: "arg", arg: 1, scope: !3634, file: !249, line: 994, type: !87)
!3637 = !DILocalVariable(name: "argsize", arg: 2, scope: !3634, file: !249, line: 994, type: !45)
!3638 = !DILocation(line: 994, column: 33, scope: !3634)
!3639 = !DILocation(line: 994, column: 45, scope: !3634)
!3640 = !DILocation(line: 973, column: 32, scope: !3535, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 996, column: 10, scope: !3634)
!3642 = !DILocation(line: 973, column: 44, scope: !3535, inlinedAt: !3641)
!3643 = !DILocation(line: 973, column: 58, scope: !3535, inlinedAt: !3641)
!3644 = !DILocation(line: 975, column: 3, scope: !3535, inlinedAt: !3641)
!3645 = !DILocation(line: 976, column: 13, scope: !3535, inlinedAt: !3641)
!3646 = !DILocation(line: 975, column: 26, scope: !3535, inlinedAt: !3641)
!3647 = !DILocation(line: 144, column: 43, scope: !2288, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 977, column: 3, scope: !3535, inlinedAt: !3641)
!3649 = !DILocation(line: 144, column: 51, scope: !2288, inlinedAt: !3648)
!3650 = !DILocation(line: 144, column: 58, scope: !2288, inlinedAt: !3648)
!3651 = !DILocation(line: 146, column: 17, scope: !2288, inlinedAt: !3648)
!3652 = !DILocation(line: 148, column: 57, scope: !2288, inlinedAt: !3648)
!3653 = !DILocation(line: 147, column: 17, scope: !2288, inlinedAt: !3648)
!3654 = !DILocation(line: 149, column: 7, scope: !2288, inlinedAt: !3648)
!3655 = !DILocation(line: 150, column: 12, scope: !2288, inlinedAt: !3648)
!3656 = !DILocation(line: 151, column: 6, scope: !2288, inlinedAt: !3648)
!3657 = !DILocation(line: 978, column: 10, scope: !3535, inlinedAt: !3641)
!3658 = !DILocation(line: 979, column: 1, scope: !3535, inlinedAt: !3641)
!3659 = !DILocation(line: 996, column: 3, scope: !3634)
!3660 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !249, file: !249, line: 1000, type: !3408, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3661)
!3661 = !{!3662, !3663, !3664, !3665}
!3662 = !DILocalVariable(name: "n", arg: 1, scope: !3660, file: !249, line: 1000, type: !54)
!3663 = !DILocalVariable(name: "s", arg: 2, scope: !3660, file: !249, line: 1000, type: !16)
!3664 = !DILocalVariable(name: "arg", arg: 3, scope: !3660, file: !249, line: 1000, type: !87)
!3665 = !DILocalVariable(name: "options", scope: !3660, file: !249, line: 1002, type: !256)
!3666 = !DILocation(line: 187, column: 26, scope: !3416, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 1003, column: 13, scope: !3660)
!3668 = !DILocation(line: 1000, column: 29, scope: !3660)
!3669 = !DILocation(line: 1000, column: 51, scope: !3660)
!3670 = !DILocation(line: 1000, column: 66, scope: !3660)
!3671 = !DILocation(line: 1002, column: 3, scope: !3660)
!3672 = !DILocation(line: 185, column: 48, scope: !3416, inlinedAt: !3667)
!3673 = !DILocation(line: 187, column: 3, scope: !3416, inlinedAt: !3667)
!3674 = !DILocation(line: 188, column: 13, scope: !3433, inlinedAt: !3667)
!3675 = !DILocation(line: 188, column: 7, scope: !3416, inlinedAt: !3667)
!3676 = !DILocation(line: 189, column: 5, scope: !3433, inlinedAt: !3667)
!3677 = !{!3678}
!3678 = distinct !{!3678, !3679, !"quoting_options_from_style: argument 0"}
!3679 = distinct !{!3679, !"quoting_options_from_style"}
!3680 = !DILocation(line: 191, column: 10, scope: !3416, inlinedAt: !3667)
!3681 = !DILocation(line: 192, column: 1, scope: !3416, inlinedAt: !3667)
!3682 = !DILocation(line: 1003, column: 13, scope: !3660)
!3683 = !DILocation(line: 1002, column: 26, scope: !3660)
!3684 = !DILocation(line: 144, column: 43, scope: !2288, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 1004, column: 3, scope: !3660)
!3686 = !DILocation(line: 144, column: 51, scope: !2288, inlinedAt: !3685)
!3687 = !DILocation(line: 144, column: 58, scope: !2288, inlinedAt: !3685)
!3688 = !DILocation(line: 146, column: 17, scope: !2288, inlinedAt: !3685)
!3689 = !DILocation(line: 148, column: 57, scope: !2288, inlinedAt: !3685)
!3690 = !DILocation(line: 147, column: 17, scope: !2288, inlinedAt: !3685)
!3691 = !DILocation(line: 149, column: 7, scope: !2288, inlinedAt: !3685)
!3692 = !DILocation(line: 150, column: 12, scope: !2288, inlinedAt: !3685)
!3693 = !DILocation(line: 151, column: 6, scope: !2288, inlinedAt: !3685)
!3694 = !DILocation(line: 1005, column: 10, scope: !3660)
!3695 = !DILocation(line: 1006, column: 1, scope: !3660)
!3696 = !DILocation(line: 1005, column: 3, scope: !3660)
!3697 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !249, file: !249, line: 1009, type: !3698, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3700)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!40, !54, !87, !87, !87}
!3700 = !{!3701, !3702, !3703, !3704}
!3701 = !DILocalVariable(name: "n", arg: 1, scope: !3697, file: !249, line: 1009, type: !54)
!3702 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3697, file: !249, line: 1009, type: !87)
!3703 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3697, file: !249, line: 1010, type: !87)
!3704 = !DILocalVariable(name: "arg", arg: 4, scope: !3697, file: !249, line: 1010, type: !87)
!3705 = !DILocation(line: 1009, column: 24, scope: !3697)
!3706 = !DILocation(line: 1009, column: 39, scope: !3697)
!3707 = !DILocation(line: 1010, column: 32, scope: !3697)
!3708 = !DILocation(line: 1010, column: 57, scope: !3697)
!3709 = !DILocalVariable(name: "n", arg: 1, scope: !3710, file: !249, line: 1017, type: !54)
!3710 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !249, file: !249, line: 1017, type: !3711, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3713)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!40, !54, !87, !87, !87, !45}
!3713 = !{!3709, !3714, !3715, !3716, !3717, !3718}
!3714 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3710, file: !249, line: 1017, type: !87)
!3715 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3710, file: !249, line: 1018, type: !87)
!3716 = !DILocalVariable(name: "arg", arg: 4, scope: !3710, file: !249, line: 1019, type: !87)
!3717 = !DILocalVariable(name: "argsize", arg: 5, scope: !3710, file: !249, line: 1019, type: !45)
!3718 = !DILocalVariable(name: "o", scope: !3710, file: !249, line: 1021, type: !256)
!3719 = !DILocation(line: 1017, column: 28, scope: !3710, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 1012, column: 10, scope: !3697)
!3721 = !DILocation(line: 1017, column: 43, scope: !3710, inlinedAt: !3720)
!3722 = !DILocation(line: 1018, column: 36, scope: !3710, inlinedAt: !3720)
!3723 = !DILocation(line: 1019, column: 36, scope: !3710, inlinedAt: !3720)
!3724 = !DILocation(line: 1019, column: 48, scope: !3710, inlinedAt: !3720)
!3725 = !DILocation(line: 1021, column: 3, scope: !3710, inlinedAt: !3720)
!3726 = !DILocation(line: 1021, column: 30, scope: !3710, inlinedAt: !3720)
!3727 = !DILocation(line: 1021, column: 26, scope: !3710, inlinedAt: !3720)
!3728 = !DILocation(line: 171, column: 45, scope: !2337, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 1022, column: 3, scope: !3710, inlinedAt: !3720)
!3730 = !DILocation(line: 172, column: 33, scope: !2337, inlinedAt: !3729)
!3731 = !DILocation(line: 172, column: 57, scope: !2337, inlinedAt: !3729)
!3732 = !DILocation(line: 176, column: 6, scope: !2337, inlinedAt: !3729)
!3733 = !DILocation(line: 176, column: 12, scope: !2337, inlinedAt: !3729)
!3734 = !DILocation(line: 177, column: 8, scope: !2353, inlinedAt: !3729)
!3735 = !DILocation(line: 177, column: 23, scope: !2353, inlinedAt: !3729)
!3736 = !DILocation(line: 177, column: 19, scope: !2353, inlinedAt: !3729)
!3737 = !DILocation(line: 178, column: 5, scope: !2353, inlinedAt: !3729)
!3738 = !DILocation(line: 179, column: 6, scope: !2337, inlinedAt: !3729)
!3739 = !DILocation(line: 179, column: 17, scope: !2337, inlinedAt: !3729)
!3740 = !DILocation(line: 180, column: 6, scope: !2337, inlinedAt: !3729)
!3741 = !DILocation(line: 180, column: 18, scope: !2337, inlinedAt: !3729)
!3742 = !DILocation(line: 1023, column: 10, scope: !3710, inlinedAt: !3720)
!3743 = !DILocation(line: 1024, column: 1, scope: !3710, inlinedAt: !3720)
!3744 = !DILocation(line: 1012, column: 3, scope: !3697)
!3745 = !DILocation(line: 1017, column: 28, scope: !3710)
!3746 = !DILocation(line: 1017, column: 43, scope: !3710)
!3747 = !DILocation(line: 1018, column: 36, scope: !3710)
!3748 = !DILocation(line: 1019, column: 36, scope: !3710)
!3749 = !DILocation(line: 1019, column: 48, scope: !3710)
!3750 = !DILocation(line: 1021, column: 3, scope: !3710)
!3751 = !DILocation(line: 1021, column: 30, scope: !3710)
!3752 = !DILocation(line: 1021, column: 26, scope: !3710)
!3753 = !DILocation(line: 171, column: 45, scope: !2337, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 1022, column: 3, scope: !3710)
!3755 = !DILocation(line: 172, column: 33, scope: !2337, inlinedAt: !3754)
!3756 = !DILocation(line: 172, column: 57, scope: !2337, inlinedAt: !3754)
!3757 = !DILocation(line: 176, column: 6, scope: !2337, inlinedAt: !3754)
!3758 = !DILocation(line: 176, column: 12, scope: !2337, inlinedAt: !3754)
!3759 = !DILocation(line: 177, column: 8, scope: !2353, inlinedAt: !3754)
!3760 = !DILocation(line: 177, column: 23, scope: !2353, inlinedAt: !3754)
!3761 = !DILocation(line: 177, column: 19, scope: !2353, inlinedAt: !3754)
!3762 = !DILocation(line: 178, column: 5, scope: !2353, inlinedAt: !3754)
!3763 = !DILocation(line: 179, column: 6, scope: !2337, inlinedAt: !3754)
!3764 = !DILocation(line: 179, column: 17, scope: !2337, inlinedAt: !3754)
!3765 = !DILocation(line: 180, column: 6, scope: !2337, inlinedAt: !3754)
!3766 = !DILocation(line: 180, column: 18, scope: !2337, inlinedAt: !3754)
!3767 = !DILocation(line: 1023, column: 10, scope: !3710)
!3768 = !DILocation(line: 1024, column: 1, scope: !3710)
!3769 = !DILocation(line: 1023, column: 3, scope: !3710)
!3770 = distinct !DISubprogram(name: "quotearg_custom", scope: !249, file: !249, line: 1027, type: !3771, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3773)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!40, !87, !87, !87}
!3773 = !{!3774, !3775, !3776}
!3774 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3770, file: !249, line: 1027, type: !87)
!3775 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3770, file: !249, line: 1027, type: !87)
!3776 = !DILocalVariable(name: "arg", arg: 3, scope: !3770, file: !249, line: 1028, type: !87)
!3777 = !DILocation(line: 1027, column: 30, scope: !3770)
!3778 = !DILocation(line: 1027, column: 54, scope: !3770)
!3779 = !DILocation(line: 1028, column: 30, scope: !3770)
!3780 = !DILocation(line: 1009, column: 24, scope: !3697, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 1030, column: 10, scope: !3770)
!3782 = !DILocation(line: 1009, column: 39, scope: !3697, inlinedAt: !3781)
!3783 = !DILocation(line: 1010, column: 32, scope: !3697, inlinedAt: !3781)
!3784 = !DILocation(line: 1010, column: 57, scope: !3697, inlinedAt: !3781)
!3785 = !DILocation(line: 1017, column: 28, scope: !3710, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 1012, column: 10, scope: !3697, inlinedAt: !3781)
!3787 = !DILocation(line: 1017, column: 43, scope: !3710, inlinedAt: !3786)
!3788 = !DILocation(line: 1018, column: 36, scope: !3710, inlinedAt: !3786)
!3789 = !DILocation(line: 1019, column: 36, scope: !3710, inlinedAt: !3786)
!3790 = !DILocation(line: 1019, column: 48, scope: !3710, inlinedAt: !3786)
!3791 = !DILocation(line: 1021, column: 3, scope: !3710, inlinedAt: !3786)
!3792 = !DILocation(line: 1021, column: 30, scope: !3710, inlinedAt: !3786)
!3793 = !DILocation(line: 1021, column: 26, scope: !3710, inlinedAt: !3786)
!3794 = !DILocation(line: 171, column: 45, scope: !2337, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 1022, column: 3, scope: !3710, inlinedAt: !3786)
!3796 = !DILocation(line: 172, column: 33, scope: !2337, inlinedAt: !3795)
!3797 = !DILocation(line: 172, column: 57, scope: !2337, inlinedAt: !3795)
!3798 = !DILocation(line: 176, column: 6, scope: !2337, inlinedAt: !3795)
!3799 = !DILocation(line: 176, column: 12, scope: !2337, inlinedAt: !3795)
!3800 = !DILocation(line: 177, column: 8, scope: !2353, inlinedAt: !3795)
!3801 = !DILocation(line: 177, column: 23, scope: !2353, inlinedAt: !3795)
!3802 = !DILocation(line: 177, column: 19, scope: !2353, inlinedAt: !3795)
!3803 = !DILocation(line: 178, column: 5, scope: !2353, inlinedAt: !3795)
!3804 = !DILocation(line: 179, column: 6, scope: !2337, inlinedAt: !3795)
!3805 = !DILocation(line: 179, column: 17, scope: !2337, inlinedAt: !3795)
!3806 = !DILocation(line: 180, column: 6, scope: !2337, inlinedAt: !3795)
!3807 = !DILocation(line: 180, column: 18, scope: !2337, inlinedAt: !3795)
!3808 = !DILocation(line: 1023, column: 10, scope: !3710, inlinedAt: !3786)
!3809 = !DILocation(line: 1024, column: 1, scope: !3710, inlinedAt: !3786)
!3810 = !DILocation(line: 1030, column: 3, scope: !3770)
!3811 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !249, file: !249, line: 1034, type: !3812, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3814)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!40, !87, !87, !87, !45}
!3814 = !{!3815, !3816, !3817, !3818}
!3815 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3811, file: !249, line: 1034, type: !87)
!3816 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3811, file: !249, line: 1034, type: !87)
!3817 = !DILocalVariable(name: "arg", arg: 3, scope: !3811, file: !249, line: 1035, type: !87)
!3818 = !DILocalVariable(name: "argsize", arg: 4, scope: !3811, file: !249, line: 1035, type: !45)
!3819 = !DILocation(line: 1034, column: 34, scope: !3811)
!3820 = !DILocation(line: 1034, column: 58, scope: !3811)
!3821 = !DILocation(line: 1035, column: 34, scope: !3811)
!3822 = !DILocation(line: 1035, column: 46, scope: !3811)
!3823 = !DILocation(line: 1017, column: 28, scope: !3710, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 1037, column: 10, scope: !3811)
!3825 = !DILocation(line: 1017, column: 43, scope: !3710, inlinedAt: !3824)
!3826 = !DILocation(line: 1018, column: 36, scope: !3710, inlinedAt: !3824)
!3827 = !DILocation(line: 1019, column: 36, scope: !3710, inlinedAt: !3824)
!3828 = !DILocation(line: 1019, column: 48, scope: !3710, inlinedAt: !3824)
!3829 = !DILocation(line: 1021, column: 3, scope: !3710, inlinedAt: !3824)
!3830 = !DILocation(line: 1021, column: 30, scope: !3710, inlinedAt: !3824)
!3831 = !DILocation(line: 1021, column: 26, scope: !3710, inlinedAt: !3824)
!3832 = !DILocation(line: 171, column: 45, scope: !2337, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 1022, column: 3, scope: !3710, inlinedAt: !3824)
!3834 = !DILocation(line: 172, column: 33, scope: !2337, inlinedAt: !3833)
!3835 = !DILocation(line: 172, column: 57, scope: !2337, inlinedAt: !3833)
!3836 = !DILocation(line: 176, column: 6, scope: !2337, inlinedAt: !3833)
!3837 = !DILocation(line: 176, column: 12, scope: !2337, inlinedAt: !3833)
!3838 = !DILocation(line: 177, column: 8, scope: !2353, inlinedAt: !3833)
!3839 = !DILocation(line: 177, column: 23, scope: !2353, inlinedAt: !3833)
!3840 = !DILocation(line: 177, column: 19, scope: !2353, inlinedAt: !3833)
!3841 = !DILocation(line: 178, column: 5, scope: !2353, inlinedAt: !3833)
!3842 = !DILocation(line: 179, column: 6, scope: !2337, inlinedAt: !3833)
!3843 = !DILocation(line: 179, column: 17, scope: !2337, inlinedAt: !3833)
!3844 = !DILocation(line: 180, column: 6, scope: !2337, inlinedAt: !3833)
!3845 = !DILocation(line: 180, column: 18, scope: !2337, inlinedAt: !3833)
!3846 = !DILocation(line: 1023, column: 10, scope: !3710, inlinedAt: !3824)
!3847 = !DILocation(line: 1024, column: 1, scope: !3710, inlinedAt: !3824)
!3848 = !DILocation(line: 1037, column: 3, scope: !3811)
!3849 = distinct !DISubprogram(name: "quote_n_mem", scope: !249, file: !249, line: 1052, type: !3850, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3852)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!87, !54, !87, !45}
!3852 = !{!3853, !3854, !3855}
!3853 = !DILocalVariable(name: "n", arg: 1, scope: !3849, file: !249, line: 1052, type: !54)
!3854 = !DILocalVariable(name: "arg", arg: 2, scope: !3849, file: !249, line: 1052, type: !87)
!3855 = !DILocalVariable(name: "argsize", arg: 3, scope: !3849, file: !249, line: 1052, type: !45)
!3856 = !DILocation(line: 1052, column: 18, scope: !3849)
!3857 = !DILocation(line: 1052, column: 33, scope: !3849)
!3858 = !DILocation(line: 1052, column: 45, scope: !3849)
!3859 = !DILocation(line: 1054, column: 10, scope: !3849)
!3860 = !DILocation(line: 1054, column: 3, scope: !3849)
!3861 = distinct !DISubprogram(name: "quote_mem", scope: !249, file: !249, line: 1058, type: !3862, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3864)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!87, !87, !45}
!3864 = !{!3865, !3866}
!3865 = !DILocalVariable(name: "arg", arg: 1, scope: !3861, file: !249, line: 1058, type: !87)
!3866 = !DILocalVariable(name: "argsize", arg: 2, scope: !3861, file: !249, line: 1058, type: !45)
!3867 = !DILocation(line: 1058, column: 24, scope: !3861)
!3868 = !DILocation(line: 1058, column: 36, scope: !3861)
!3869 = !DILocation(line: 1052, column: 18, scope: !3849, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 1060, column: 10, scope: !3861)
!3871 = !DILocation(line: 1052, column: 33, scope: !3849, inlinedAt: !3870)
!3872 = !DILocation(line: 1052, column: 45, scope: !3849, inlinedAt: !3870)
!3873 = !DILocation(line: 1054, column: 10, scope: !3849, inlinedAt: !3870)
!3874 = !DILocation(line: 1060, column: 3, scope: !3861)
!3875 = distinct !DISubprogram(name: "quote_n", scope: !249, file: !249, line: 1064, type: !3876, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3878)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!87, !54, !87}
!3878 = !{!3879, !3880}
!3879 = !DILocalVariable(name: "n", arg: 1, scope: !3875, file: !249, line: 1064, type: !54)
!3880 = !DILocalVariable(name: "arg", arg: 2, scope: !3875, file: !249, line: 1064, type: !87)
!3881 = !DILocation(line: 1064, column: 14, scope: !3875)
!3882 = !DILocation(line: 1064, column: 29, scope: !3875)
!3883 = !DILocation(line: 1052, column: 18, scope: !3849, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 1066, column: 10, scope: !3875)
!3885 = !DILocation(line: 1052, column: 33, scope: !3849, inlinedAt: !3884)
!3886 = !DILocation(line: 1052, column: 45, scope: !3849, inlinedAt: !3884)
!3887 = !DILocation(line: 1054, column: 10, scope: !3849, inlinedAt: !3884)
!3888 = !DILocation(line: 1066, column: 3, scope: !3875)
!3889 = distinct !DISubprogram(name: "quote", scope: !249, file: !249, line: 1070, type: !3890, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3892)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!87, !87}
!3892 = !{!3893}
!3893 = !DILocalVariable(name: "arg", arg: 1, scope: !3889, file: !249, line: 1070, type: !87)
!3894 = !DILocation(line: 1070, column: 20, scope: !3889)
!3895 = !DILocation(line: 1064, column: 14, scope: !3875, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 1072, column: 10, scope: !3889)
!3897 = !DILocation(line: 1064, column: 29, scope: !3875, inlinedAt: !3896)
!3898 = !DILocation(line: 1052, column: 18, scope: !3849, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 1066, column: 10, scope: !3875, inlinedAt: !3896)
!3900 = !DILocation(line: 1052, column: 33, scope: !3849, inlinedAt: !3899)
!3901 = !DILocation(line: 1052, column: 45, scope: !3849, inlinedAt: !3899)
!3902 = !DILocation(line: 1054, column: 10, scope: !3849, inlinedAt: !3899)
!3903 = !DILocation(line: 1072, column: 3, scope: !3889)
!3904 = distinct !DISubprogram(name: "version_etc_arn", scope: !659, file: !659, line: 62, type: !3905, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !3948)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{null, !3907, !87, !87, !87, !3947, !45}
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !898, line: 7, baseType: !3909)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !900, line: 241, size: 1728, elements: !3910)
!3910 = !{!3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3909, file: !900, line: 242, baseType: !54, size: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3909, file: !900, line: 247, baseType: !40, size: 64, offset: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3909, file: !900, line: 248, baseType: !40, size: 64, offset: 128)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3909, file: !900, line: 249, baseType: !40, size: 64, offset: 192)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3909, file: !900, line: 250, baseType: !40, size: 64, offset: 256)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3909, file: !900, line: 251, baseType: !40, size: 64, offset: 320)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3909, file: !900, line: 252, baseType: !40, size: 64, offset: 384)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3909, file: !900, line: 253, baseType: !40, size: 64, offset: 448)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3909, file: !900, line: 254, baseType: !40, size: 64, offset: 512)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3909, file: !900, line: 256, baseType: !40, size: 64, offset: 576)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3909, file: !900, line: 257, baseType: !40, size: 64, offset: 640)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3909, file: !900, line: 258, baseType: !40, size: 64, offset: 704)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3909, file: !900, line: 260, baseType: !3924, size: 64, offset: 768)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !900, line: 156, size: 192, elements: !3926)
!3926 = !{!3927, !3928, !3930}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3925, file: !900, line: 157, baseType: !3924, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3925, file: !900, line: 158, baseType: !3929, size: 64, offset: 64)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3925, file: !900, line: 162, baseType: !54, size: 32, offset: 128)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3909, file: !900, line: 262, baseType: !3929, size: 64, offset: 832)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3909, file: !900, line: 264, baseType: !54, size: 32, offset: 896)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3909, file: !900, line: 268, baseType: !54, size: 32, offset: 928)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3909, file: !900, line: 270, baseType: !926, size: 64, offset: 960)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3909, file: !900, line: 274, baseType: !164, size: 16, offset: 1024)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3909, file: !900, line: 275, baseType: !931, size: 8, offset: 1040)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3909, file: !900, line: 276, baseType: !933, size: 8, offset: 1048)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3909, file: !900, line: 280, baseType: !937, size: 64, offset: 1088)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3909, file: !900, line: 289, baseType: !940, size: 64, offset: 1152)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3909, file: !900, line: 297, baseType: !42, size: 64, offset: 1216)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3909, file: !900, line: 298, baseType: !42, size: 64, offset: 1280)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3909, file: !900, line: 299, baseType: !42, size: 64, offset: 1344)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3909, file: !900, line: 300, baseType: !42, size: 64, offset: 1408)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3909, file: !900, line: 302, baseType: !45, size: 64, offset: 1472)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3909, file: !900, line: 303, baseType: !54, size: 32, offset: 1536)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3909, file: !900, line: 305, baseType: !948, size: 160, offset: 1568)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!3948 = !{!3949, !3950, !3951, !3952, !3953, !3954}
!3949 = !DILocalVariable(name: "stream", arg: 1, scope: !3904, file: !659, line: 62, type: !3907)
!3950 = !DILocalVariable(name: "command_name", arg: 2, scope: !3904, file: !659, line: 63, type: !87)
!3951 = !DILocalVariable(name: "package", arg: 3, scope: !3904, file: !659, line: 63, type: !87)
!3952 = !DILocalVariable(name: "version", arg: 4, scope: !3904, file: !659, line: 64, type: !87)
!3953 = !DILocalVariable(name: "authors", arg: 5, scope: !3904, file: !659, line: 65, type: !3947)
!3954 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3904, file: !659, line: 65, type: !45)
!3955 = !DILocation(line: 62, column: 24, scope: !3904)
!3956 = !DILocation(line: 63, column: 30, scope: !3904)
!3957 = !DILocation(line: 63, column: 56, scope: !3904)
!3958 = !DILocation(line: 64, column: 30, scope: !3904)
!3959 = !DILocation(line: 65, column: 39, scope: !3904)
!3960 = !DILocation(line: 65, column: 55, scope: !3904)
!3961 = !DILocation(line: 67, column: 7, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3904, file: !659, line: 67, column: 7)
!3963 = !DILocation(line: 67, column: 7, scope: !3904)
!3964 = !DILocation(line: 68, column: 5, scope: !3962)
!3965 = !DILocation(line: 70, column: 5, scope: !3962)
!3966 = !DILocation(line: 84, column: 3, scope: !3904)
!3967 = !DILocation(line: 86, column: 3, scope: !3904)
!3968 = !DILocation(line: 95, column: 3, scope: !3904)
!3969 = !DILocation(line: 99, column: 7, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3904, file: !659, line: 96, column: 5)
!3971 = !DILocation(line: 102, column: 7, scope: !3970)
!3972 = !DILocation(line: 103, column: 7, scope: !3970)
!3973 = !DILocation(line: 106, column: 7, scope: !3970)
!3974 = !DILocation(line: 107, column: 7, scope: !3970)
!3975 = !DILocation(line: 110, column: 7, scope: !3970)
!3976 = !DILocation(line: 112, column: 7, scope: !3970)
!3977 = !DILocation(line: 117, column: 7, scope: !3970)
!3978 = !DILocation(line: 119, column: 7, scope: !3970)
!3979 = !DILocation(line: 124, column: 7, scope: !3970)
!3980 = !DILocation(line: 126, column: 7, scope: !3970)
!3981 = !DILocation(line: 131, column: 7, scope: !3970)
!3982 = !DILocation(line: 134, column: 7, scope: !3970)
!3983 = !DILocation(line: 139, column: 7, scope: !3970)
!3984 = !DILocation(line: 142, column: 7, scope: !3970)
!3985 = !DILocation(line: 147, column: 7, scope: !3970)
!3986 = !DILocation(line: 151, column: 7, scope: !3970)
!3987 = !DILocation(line: 156, column: 7, scope: !3970)
!3988 = !DILocation(line: 160, column: 7, scope: !3970)
!3989 = !DILocation(line: 167, column: 7, scope: !3970)
!3990 = !DILocation(line: 171, column: 7, scope: !3970)
!3991 = !DILocation(line: 173, column: 1, scope: !3904)
!3992 = distinct !DISubprogram(name: "version_etc_ar", scope: !659, file: !659, line: 180, type: !3993, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !3995)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{null, !3907, !87, !87, !87, !3947}
!3995 = !{!3996, !3997, !3998, !3999, !4000, !4001}
!3996 = !DILocalVariable(name: "stream", arg: 1, scope: !3992, file: !659, line: 180, type: !3907)
!3997 = !DILocalVariable(name: "command_name", arg: 2, scope: !3992, file: !659, line: 181, type: !87)
!3998 = !DILocalVariable(name: "package", arg: 3, scope: !3992, file: !659, line: 181, type: !87)
!3999 = !DILocalVariable(name: "version", arg: 4, scope: !3992, file: !659, line: 182, type: !87)
!4000 = !DILocalVariable(name: "authors", arg: 5, scope: !3992, file: !659, line: 182, type: !3947)
!4001 = !DILocalVariable(name: "n_authors", scope: !3992, file: !659, line: 184, type: !45)
!4002 = !DILocation(line: 180, column: 23, scope: !3992)
!4003 = !DILocation(line: 181, column: 29, scope: !3992)
!4004 = !DILocation(line: 181, column: 55, scope: !3992)
!4005 = !DILocation(line: 182, column: 29, scope: !3992)
!4006 = !DILocation(line: 182, column: 59, scope: !3992)
!4007 = !DILocation(line: 184, column: 10, scope: !3992)
!4008 = !DILocation(line: 186, column: 8, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3992, file: !659, line: 186, column: 3)
!4010 = !DILocation(line: 186, column: 23, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !4009, file: !659, line: 186, column: 3)
!4012 = !DILocation(line: 186, column: 3, scope: !4009)
!4013 = !DILocation(line: 186, column: 52, scope: !4011)
!4014 = distinct !{!4014, !4012, !4015}
!4015 = !DILocation(line: 187, column: 5, scope: !4009)
!4016 = !DILocation(line: 188, column: 3, scope: !3992)
!4017 = !DILocation(line: 189, column: 1, scope: !3992)
!4018 = distinct !DISubprogram(name: "version_etc_va", scope: !659, file: !659, line: 196, type: !4019, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !4028)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{null, !3907, !87, !87, !87, !4021}
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !656, line: 189, size: 192, elements: !4023)
!4023 = !{!4024, !4025, !4026, !4027}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4022, file: !656, line: 189, baseType: !165, size: 32)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4022, file: !656, line: 189, baseType: !165, size: 32, offset: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4022, file: !656, line: 189, baseType: !42, size: 64, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4022, file: !656, line: 189, baseType: !42, size: 64, offset: 128)
!4028 = !{!4029, !4030, !4031, !4032, !4033, !4034, !4035}
!4029 = !DILocalVariable(name: "stream", arg: 1, scope: !4018, file: !659, line: 196, type: !3907)
!4030 = !DILocalVariable(name: "command_name", arg: 2, scope: !4018, file: !659, line: 197, type: !87)
!4031 = !DILocalVariable(name: "package", arg: 3, scope: !4018, file: !659, line: 197, type: !87)
!4032 = !DILocalVariable(name: "version", arg: 4, scope: !4018, file: !659, line: 198, type: !87)
!4033 = !DILocalVariable(name: "authors", arg: 5, scope: !4018, file: !659, line: 198, type: !4021)
!4034 = !DILocalVariable(name: "n_authors", scope: !4018, file: !659, line: 200, type: !45)
!4035 = !DILocalVariable(name: "authtab", scope: !4018, file: !659, line: 201, type: !4036)
!4036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 640, elements: !252)
!4037 = !DILocation(line: 196, column: 23, scope: !4018)
!4038 = !DILocation(line: 197, column: 29, scope: !4018)
!4039 = !DILocation(line: 197, column: 55, scope: !4018)
!4040 = !DILocation(line: 198, column: 29, scope: !4018)
!4041 = !DILocation(line: 198, column: 46, scope: !4018)
!4042 = !DILocation(line: 201, column: 3, scope: !4018)
!4043 = !DILocation(line: 201, column: 15, scope: !4018)
!4044 = !DILocation(line: 200, column: 10, scope: !4018)
!4045 = !DILocation(line: 205, column: 35, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4047, file: !659, line: 203, column: 3)
!4047 = distinct !DILexicalBlock(scope: !4018, file: !659, line: 203, column: 3)
!4048 = !DILocation(line: 205, column: 14, scope: !4046)
!4049 = !DILocation(line: 205, column: 33, scope: !4046)
!4050 = !DILocation(line: 205, column: 67, scope: !4046)
!4051 = !DILocation(line: 203, column: 3, scope: !4047)
!4052 = !DILocation(line: 208, column: 3, scope: !4018)
!4053 = !DILocation(line: 210, column: 1, scope: !4018)
!4054 = distinct !DISubprogram(name: "version_etc", scope: !659, file: !659, line: 227, type: !4055, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !4057)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{null, !3907, !87, !87, !87, null}
!4057 = !{!4058, !4059, !4060, !4061, !4062}
!4058 = !DILocalVariable(name: "stream", arg: 1, scope: !4054, file: !659, line: 227, type: !3907)
!4059 = !DILocalVariable(name: "command_name", arg: 2, scope: !4054, file: !659, line: 228, type: !87)
!4060 = !DILocalVariable(name: "package", arg: 3, scope: !4054, file: !659, line: 228, type: !87)
!4061 = !DILocalVariable(name: "version", arg: 4, scope: !4054, file: !659, line: 229, type: !87)
!4062 = !DILocalVariable(name: "authors", scope: !4054, file: !659, line: 231, type: !4063)
!4063 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1100, line: 46, baseType: !4064)
!4064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4065, line: 48, baseType: !4066)
!4065 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !656, line: 231, baseType: !4067)
!4067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4022, size: 192, elements: !934)
!4068 = !DILocation(line: 227, column: 20, scope: !4054)
!4069 = !DILocation(line: 228, column: 26, scope: !4054)
!4070 = !DILocation(line: 228, column: 52, scope: !4054)
!4071 = !DILocation(line: 229, column: 26, scope: !4054)
!4072 = !DILocation(line: 231, column: 3, scope: !4054)
!4073 = !DILocation(line: 231, column: 11, scope: !4054)
!4074 = !DILocation(line: 233, column: 3, scope: !4054)
!4075 = !DILocation(line: 234, column: 3, scope: !4054)
!4076 = !DILocation(line: 235, column: 3, scope: !4054)
!4077 = !DILocation(line: 236, column: 1, scope: !4054)
!4078 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !659, file: !659, line: 239, type: !727, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !211)
!4079 = !DILocation(line: 245, column: 3, scope: !4078)
!4080 = !DILocation(line: 251, column: 3, scope: !4078)
!4081 = !DILocation(line: 256, column: 3, scope: !4078)
!4082 = !DILocation(line: 258, column: 1, scope: !4078)
!4083 = distinct !DISubprogram(name: "xnmalloc", scope: !151, file: !151, line: 105, type: !4084, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !4086)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!42, !45, !45}
!4086 = !{!4087, !4088}
!4087 = !DILocalVariable(name: "n", arg: 1, scope: !4083, file: !151, line: 105, type: !45)
!4088 = !DILocalVariable(name: "s", arg: 2, scope: !4083, file: !151, line: 105, type: !45)
!4089 = !DILocation(line: 105, column: 18, scope: !4083)
!4090 = !DILocation(line: 105, column: 28, scope: !4083)
!4091 = !DILocation(line: 107, column: 7, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4083, file: !151, line: 107, column: 7)
!4093 = !DILocation(line: 107, column: 7, scope: !4083)
!4094 = !DILocation(line: 108, column: 5, scope: !4092)
!4095 = !DILocation(line: 109, column: 21, scope: !4083)
!4096 = !DILocalVariable(name: "n", arg: 1, scope: !4097, file: !4098, line: 39, type: !45)
!4097 = distinct !DISubprogram(name: "xmalloc", scope: !4098, file: !4098, line: 39, type: !4099, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !4101)
!4098 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!42, !45}
!4101 = !{!4096, !4102}
!4102 = !DILocalVariable(name: "p", scope: !4097, file: !4098, line: 41, type: !42)
!4103 = !DILocation(line: 39, column: 17, scope: !4097, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 109, column: 10, scope: !4083)
!4105 = !DILocation(line: 41, column: 13, scope: !4097, inlinedAt: !4104)
!4106 = !DILocation(line: 41, column: 9, scope: !4097, inlinedAt: !4104)
!4107 = !DILocation(line: 42, column: 8, scope: !4108, inlinedAt: !4104)
!4108 = distinct !DILexicalBlock(scope: !4097, file: !4098, line: 42, column: 7)
!4109 = !DILocation(line: 42, column: 15, scope: !4108, inlinedAt: !4104)
!4110 = !DILocation(line: 42, column: 10, scope: !4108, inlinedAt: !4104)
!4111 = !DILocation(line: 43, column: 5, scope: !4108, inlinedAt: !4104)
!4112 = !DILocation(line: 109, column: 3, scope: !4083)
!4113 = !DILocation(line: 39, column: 17, scope: !4097)
!4114 = !DILocation(line: 41, column: 13, scope: !4097)
!4115 = !DILocation(line: 41, column: 9, scope: !4097)
!4116 = !DILocation(line: 42, column: 8, scope: !4108)
!4117 = !DILocation(line: 42, column: 15, scope: !4108)
!4118 = !DILocation(line: 42, column: 10, scope: !4108)
!4119 = !DILocation(line: 43, column: 5, scope: !4108)
!4120 = !DILocation(line: 44, column: 3, scope: !4097)
!4121 = distinct !DISubprogram(name: "xnrealloc", scope: !151, file: !151, line: 118, type: !4122, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !4124)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!42, !42, !45, !45}
!4124 = !{!4125, !4126, !4127}
!4125 = !DILocalVariable(name: "p", arg: 1, scope: !4121, file: !151, line: 118, type: !42)
!4126 = !DILocalVariable(name: "n", arg: 2, scope: !4121, file: !151, line: 118, type: !45)
!4127 = !DILocalVariable(name: "s", arg: 3, scope: !4121, file: !151, line: 118, type: !45)
!4128 = !DILocation(line: 118, column: 18, scope: !4121)
!4129 = !DILocation(line: 118, column: 28, scope: !4121)
!4130 = !DILocation(line: 118, column: 38, scope: !4121)
!4131 = !DILocation(line: 120, column: 7, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4121, file: !151, line: 120, column: 7)
!4133 = !DILocation(line: 120, column: 7, scope: !4121)
!4134 = !DILocation(line: 121, column: 5, scope: !4132)
!4135 = !DILocation(line: 122, column: 25, scope: !4121)
!4136 = !DILocalVariable(name: "p", arg: 1, scope: !4137, file: !4098, line: 51, type: !42)
!4137 = distinct !DISubprogram(name: "xrealloc", scope: !4098, file: !4098, line: 51, type: !4138, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !4140)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!42, !42, !45}
!4140 = !{!4136, !4141}
!4141 = !DILocalVariable(name: "n", arg: 2, scope: !4137, file: !4098, line: 51, type: !45)
!4142 = !DILocation(line: 51, column: 17, scope: !4137, inlinedAt: !4143)
!4143 = distinct !DILocation(line: 122, column: 10, scope: !4121)
!4144 = !DILocation(line: 51, column: 27, scope: !4137, inlinedAt: !4143)
!4145 = !DILocation(line: 53, column: 8, scope: !4146, inlinedAt: !4143)
!4146 = distinct !DILexicalBlock(scope: !4137, file: !4098, line: 53, column: 7)
!4147 = !DILocation(line: 53, column: 13, scope: !4146, inlinedAt: !4143)
!4148 = !DILocation(line: 53, column: 10, scope: !4146, inlinedAt: !4143)
!4149 = !DILocation(line: 57, column: 7, scope: !4150, inlinedAt: !4143)
!4150 = distinct !DILexicalBlock(scope: !4146, file: !4098, line: 54, column: 5)
!4151 = !DILocation(line: 58, column: 7, scope: !4150, inlinedAt: !4143)
!4152 = !DILocation(line: 61, column: 7, scope: !4137, inlinedAt: !4143)
!4153 = !DILocation(line: 62, column: 8, scope: !4154, inlinedAt: !4143)
!4154 = distinct !DILexicalBlock(scope: !4137, file: !4098, line: 62, column: 7)
!4155 = !DILocation(line: 62, column: 13, scope: !4154, inlinedAt: !4143)
!4156 = !DILocation(line: 62, column: 10, scope: !4154, inlinedAt: !4143)
!4157 = !DILocation(line: 63, column: 5, scope: !4154, inlinedAt: !4143)
!4158 = !DILocation(line: 122, column: 3, scope: !4121)
!4159 = !DILocation(line: 51, column: 17, scope: !4137)
!4160 = !DILocation(line: 51, column: 27, scope: !4137)
!4161 = !DILocation(line: 53, column: 8, scope: !4146)
!4162 = !DILocation(line: 53, column: 13, scope: !4146)
!4163 = !DILocation(line: 53, column: 10, scope: !4146)
!4164 = !DILocation(line: 57, column: 7, scope: !4150)
!4165 = !DILocation(line: 58, column: 7, scope: !4150)
!4166 = !DILocation(line: 61, column: 7, scope: !4137)
!4167 = !DILocation(line: 62, column: 8, scope: !4154)
!4168 = !DILocation(line: 62, column: 13, scope: !4154)
!4169 = !DILocation(line: 62, column: 10, scope: !4154)
!4170 = !DILocation(line: 63, column: 5, scope: !4154)
!4171 = !DILocation(line: 65, column: 1, scope: !4137)
!4172 = !DILocation(line: 180, column: 19, scope: !667)
!4173 = !DILocation(line: 180, column: 30, scope: !667)
!4174 = !DILocation(line: 180, column: 41, scope: !667)
!4175 = !DILocation(line: 182, column: 14, scope: !667)
!4176 = !DILocation(line: 182, column: 10, scope: !667)
!4177 = !DILocation(line: 184, column: 9, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !667, file: !151, line: 184, column: 7)
!4179 = !DILocation(line: 184, column: 7, scope: !667)
!4180 = !DILocation(line: 186, column: 13, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4182, file: !151, line: 186, column: 11)
!4182 = distinct !DILexicalBlock(scope: !4178, file: !151, line: 185, column: 5)
!4183 = !DILocation(line: 186, column: 11, scope: !4182)
!4184 = !DILocation(line: 194, column: 30, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4181, file: !151, line: 187, column: 9)
!4186 = !DILocation(line: 195, column: 16, scope: !4185)
!4187 = !DILocation(line: 195, column: 13, scope: !4185)
!4188 = !DILocation(line: 196, column: 9, scope: !4185)
!4189 = !DILocation(line: 204, column: 69, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4191, file: !151, line: 204, column: 11)
!4191 = distinct !DILexicalBlock(scope: !4178, file: !151, line: 199, column: 5)
!4192 = !DILocation(line: 205, column: 11, scope: !4190)
!4193 = !DILocation(line: 204, column: 11, scope: !4191)
!4194 = !DILocation(line: 206, column: 9, scope: !4190)
!4195 = !DILocation(line: 210, column: 7, scope: !667)
!4196 = !DILocation(line: 211, column: 25, scope: !667)
!4197 = !DILocation(line: 51, column: 17, scope: !4137, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 211, column: 10, scope: !667)
!4199 = !DILocation(line: 51, column: 27, scope: !4137, inlinedAt: !4198)
!4200 = !DILocation(line: 53, column: 10, scope: !4146, inlinedAt: !4198)
!4201 = !DILocation(line: 207, column: 14, scope: !4191)
!4202 = !DILocation(line: 207, column: 18, scope: !4191)
!4203 = !DILocation(line: 207, column: 9, scope: !4191)
!4204 = !DILocation(line: 53, column: 8, scope: !4146, inlinedAt: !4198)
!4205 = !DILocation(line: 57, column: 7, scope: !4150, inlinedAt: !4198)
!4206 = !DILocation(line: 58, column: 7, scope: !4150, inlinedAt: !4198)
!4207 = !DILocation(line: 61, column: 7, scope: !4137, inlinedAt: !4198)
!4208 = !DILocation(line: 62, column: 8, scope: !4154, inlinedAt: !4198)
!4209 = !DILocation(line: 62, column: 13, scope: !4154, inlinedAt: !4198)
!4210 = !DILocation(line: 62, column: 10, scope: !4154, inlinedAt: !4198)
!4211 = !DILocation(line: 63, column: 5, scope: !4154, inlinedAt: !4198)
!4212 = !DILocation(line: 211, column: 3, scope: !667)
!4213 = distinct !DISubprogram(name: "xcharalloc", scope: !151, file: !151, line: 220, type: !3183, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !4214)
!4214 = !{!4215}
!4215 = !DILocalVariable(name: "n", arg: 1, scope: !4213, file: !151, line: 220, type: !45)
!4216 = !DILocation(line: 220, column: 20, scope: !4213)
!4217 = !DILocation(line: 39, column: 17, scope: !4097, inlinedAt: !4218)
!4218 = distinct !DILocation(line: 222, column: 10, scope: !4213)
!4219 = !DILocation(line: 41, column: 13, scope: !4097, inlinedAt: !4218)
!4220 = !DILocation(line: 41, column: 9, scope: !4097, inlinedAt: !4218)
!4221 = !DILocation(line: 42, column: 8, scope: !4108, inlinedAt: !4218)
!4222 = !DILocation(line: 42, column: 15, scope: !4108, inlinedAt: !4218)
!4223 = !DILocation(line: 42, column: 10, scope: !4108, inlinedAt: !4218)
!4224 = !DILocation(line: 43, column: 5, scope: !4108, inlinedAt: !4218)
!4225 = !DILocation(line: 222, column: 3, scope: !4213)
!4226 = distinct !DISubprogram(name: "x2realloc", scope: !4098, file: !4098, line: 74, type: !4227, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !4229)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!42, !42, !155}
!4229 = !{!4230, !4231}
!4230 = !DILocalVariable(name: "p", arg: 1, scope: !4226, file: !4098, line: 74, type: !42)
!4231 = !DILocalVariable(name: "pn", arg: 2, scope: !4226, file: !4098, line: 74, type: !155)
!4232 = !DILocation(line: 74, column: 18, scope: !4226)
!4233 = !DILocation(line: 74, column: 29, scope: !4226)
!4234 = !DILocation(line: 180, column: 19, scope: !667, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 76, column: 10, scope: !4226)
!4236 = !DILocation(line: 180, column: 30, scope: !667, inlinedAt: !4235)
!4237 = !DILocation(line: 180, column: 41, scope: !667, inlinedAt: !4235)
!4238 = !DILocation(line: 182, column: 14, scope: !667, inlinedAt: !4235)
!4239 = !DILocation(line: 182, column: 10, scope: !667, inlinedAt: !4235)
!4240 = !DILocation(line: 184, column: 9, scope: !4178, inlinedAt: !4235)
!4241 = !DILocation(line: 184, column: 7, scope: !667, inlinedAt: !4235)
!4242 = !DILocation(line: 186, column: 13, scope: !4181, inlinedAt: !4235)
!4243 = !DILocation(line: 186, column: 11, scope: !4182, inlinedAt: !4235)
!4244 = !DILocation(line: 210, column: 7, scope: !667, inlinedAt: !4235)
!4245 = !DILocation(line: 51, column: 17, scope: !4137, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 211, column: 10, scope: !667, inlinedAt: !4235)
!4247 = !DILocation(line: 51, column: 27, scope: !4137, inlinedAt: !4246)
!4248 = !DILocation(line: 53, column: 10, scope: !4146, inlinedAt: !4246)
!4249 = !DILocation(line: 205, column: 11, scope: !4190, inlinedAt: !4235)
!4250 = !DILocation(line: 204, column: 11, scope: !4191, inlinedAt: !4235)
!4251 = !DILocation(line: 206, column: 9, scope: !4190, inlinedAt: !4235)
!4252 = !DILocation(line: 207, column: 14, scope: !4191, inlinedAt: !4235)
!4253 = !DILocation(line: 207, column: 18, scope: !4191, inlinedAt: !4235)
!4254 = !DILocation(line: 207, column: 9, scope: !4191, inlinedAt: !4235)
!4255 = !DILocation(line: 53, column: 8, scope: !4146, inlinedAt: !4246)
!4256 = !DILocation(line: 57, column: 7, scope: !4150, inlinedAt: !4246)
!4257 = !DILocation(line: 58, column: 7, scope: !4150, inlinedAt: !4246)
!4258 = !DILocation(line: 61, column: 7, scope: !4137, inlinedAt: !4246)
!4259 = !DILocation(line: 62, column: 8, scope: !4154, inlinedAt: !4246)
!4260 = !DILocation(line: 62, column: 13, scope: !4154, inlinedAt: !4246)
!4261 = !DILocation(line: 62, column: 10, scope: !4154, inlinedAt: !4246)
!4262 = !DILocation(line: 63, column: 5, scope: !4154, inlinedAt: !4246)
!4263 = !DILocation(line: 76, column: 3, scope: !4226)
!4264 = distinct !DISubprogram(name: "xzalloc", scope: !4098, file: !4098, line: 84, type: !4099, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !4265)
!4265 = !{!4266}
!4266 = !DILocalVariable(name: "s", arg: 1, scope: !4264, file: !4098, line: 84, type: !45)
!4267 = !DILocation(line: 84, column: 17, scope: !4264)
!4268 = !DILocation(line: 39, column: 17, scope: !4097, inlinedAt: !4269)
!4269 = distinct !DILocation(line: 86, column: 18, scope: !4264)
!4270 = !DILocation(line: 41, column: 13, scope: !4097, inlinedAt: !4269)
!4271 = !DILocation(line: 41, column: 9, scope: !4097, inlinedAt: !4269)
!4272 = !DILocation(line: 42, column: 8, scope: !4108, inlinedAt: !4269)
!4273 = !DILocation(line: 42, column: 15, scope: !4108, inlinedAt: !4269)
!4274 = !DILocation(line: 42, column: 10, scope: !4108, inlinedAt: !4269)
!4275 = !DILocation(line: 43, column: 5, scope: !4108, inlinedAt: !4269)
!4276 = !DILocation(line: 86, column: 10, scope: !4264)
!4277 = !DILocation(line: 86, column: 3, scope: !4264)
!4278 = distinct !DISubprogram(name: "xcalloc", scope: !4098, file: !4098, line: 93, type: !4084, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !4279)
!4279 = !{!4280, !4281, !4282}
!4280 = !DILocalVariable(name: "n", arg: 1, scope: !4278, file: !4098, line: 93, type: !45)
!4281 = !DILocalVariable(name: "s", arg: 2, scope: !4278, file: !4098, line: 93, type: !45)
!4282 = !DILocalVariable(name: "p", scope: !4278, file: !4098, line: 95, type: !42)
!4283 = !DILocation(line: 93, column: 17, scope: !4278)
!4284 = !DILocation(line: 93, column: 27, scope: !4278)
!4285 = !DILocation(line: 100, column: 7, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4278, file: !4098, line: 100, column: 7)
!4287 = !DILocation(line: 101, column: 7, scope: !4286)
!4288 = !DILocation(line: 101, column: 18, scope: !4286)
!4289 = !DILocation(line: 95, column: 9, scope: !4278)
!4290 = !DILocation(line: 101, column: 16, scope: !4286)
!4291 = !DILocation(line: 100, column: 7, scope: !4278)
!4292 = !DILocation(line: 102, column: 5, scope: !4286)
!4293 = !DILocation(line: 103, column: 3, scope: !4278)
!4294 = distinct !DISubprogram(name: "xmemdup", scope: !4098, file: !4098, line: 111, type: !4295, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !4297)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!42, !1731, !45}
!4297 = !{!4298, !4299}
!4298 = !DILocalVariable(name: "p", arg: 1, scope: !4294, file: !4098, line: 111, type: !1731)
!4299 = !DILocalVariable(name: "s", arg: 2, scope: !4294, file: !4098, line: 111, type: !45)
!4300 = !DILocation(line: 111, column: 22, scope: !4294)
!4301 = !DILocation(line: 111, column: 32, scope: !4294)
!4302 = !DILocation(line: 39, column: 17, scope: !4097, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 113, column: 18, scope: !4294)
!4304 = !DILocation(line: 41, column: 13, scope: !4097, inlinedAt: !4303)
!4305 = !DILocation(line: 41, column: 9, scope: !4097, inlinedAt: !4303)
!4306 = !DILocation(line: 42, column: 8, scope: !4108, inlinedAt: !4303)
!4307 = !DILocation(line: 42, column: 15, scope: !4108, inlinedAt: !4303)
!4308 = !DILocation(line: 42, column: 10, scope: !4108, inlinedAt: !4303)
!4309 = !DILocation(line: 43, column: 5, scope: !4108, inlinedAt: !4303)
!4310 = !DILocation(line: 113, column: 10, scope: !4294)
!4311 = !DILocation(line: 113, column: 3, scope: !4294)
!4312 = distinct !DISubprogram(name: "xstrdup", scope: !4098, file: !4098, line: 119, type: !3383, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !4313)
!4313 = !{!4314}
!4314 = !DILocalVariable(name: "string", arg: 1, scope: !4312, file: !4098, line: 119, type: !87)
!4315 = !DILocation(line: 119, column: 22, scope: !4312)
!4316 = !DILocation(line: 121, column: 27, scope: !4312)
!4317 = !DILocation(line: 121, column: 43, scope: !4312)
!4318 = !DILocation(line: 111, column: 22, scope: !4294, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 121, column: 10, scope: !4312)
!4320 = !DILocation(line: 111, column: 32, scope: !4294, inlinedAt: !4319)
!4321 = !DILocation(line: 39, column: 17, scope: !4097, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 113, column: 18, scope: !4294, inlinedAt: !4319)
!4323 = !DILocation(line: 41, column: 13, scope: !4097, inlinedAt: !4322)
!4324 = !DILocation(line: 41, column: 9, scope: !4097, inlinedAt: !4322)
!4325 = !DILocation(line: 42, column: 8, scope: !4108, inlinedAt: !4322)
!4326 = !DILocation(line: 42, column: 15, scope: !4108, inlinedAt: !4322)
!4327 = !DILocation(line: 42, column: 10, scope: !4108, inlinedAt: !4322)
!4328 = !DILocation(line: 43, column: 5, scope: !4108, inlinedAt: !4322)
!4329 = !DILocation(line: 113, column: 10, scope: !4294, inlinedAt: !4319)
!4330 = !DILocation(line: 121, column: 3, scope: !4312)
!4331 = distinct !DISubprogram(name: "xalloc_die", scope: !4332, file: !4332, line: 32, type: !727, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !674, variables: !211)
!4332 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4333 = !DILocation(line: 34, column: 10, scope: !4331)
!4334 = !DILocation(line: 34, column: 33, scope: !4331)
!4335 = !DILocation(line: 34, column: 3, scope: !4331)
!4336 = !DILocation(line: 40, column: 3, scope: !4331)
!4337 = distinct !DISubprogram(name: "xstrndup", scope: !4338, file: !4338, line: 30, type: !3394, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !4339)
!4338 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4339 = !{!4340, !4341, !4342}
!4340 = !DILocalVariable(name: "string", arg: 1, scope: !4337, file: !4338, line: 30, type: !87)
!4341 = !DILocalVariable(name: "n", arg: 2, scope: !4337, file: !4338, line: 30, type: !45)
!4342 = !DILocalVariable(name: "s", scope: !4337, file: !4338, line: 32, type: !40)
!4343 = !DILocation(line: 30, column: 23, scope: !4337)
!4344 = !DILocation(line: 30, column: 38, scope: !4337)
!4345 = !DILocation(line: 32, column: 13, scope: !4337)
!4346 = !DILocation(line: 32, column: 9, scope: !4337)
!4347 = !DILocation(line: 33, column: 9, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4337, file: !4338, line: 33, column: 7)
!4349 = !DILocation(line: 33, column: 7, scope: !4337)
!4350 = !DILocation(line: 34, column: 5, scope: !4348)
!4351 = !DILocation(line: 35, column: 3, scope: !4337)
!4352 = distinct !DISubprogram(name: "rpl_calloc", scope: !4353, file: !4353, line: 42, type: !4084, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !678, variables: !4354)
!4353 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4354 = !{!4355, !4356, !4357, !4358}
!4355 = !DILocalVariable(name: "n", arg: 1, scope: !4352, file: !4353, line: 42, type: !45)
!4356 = !DILocalVariable(name: "s", arg: 2, scope: !4352, file: !4353, line: 42, type: !45)
!4357 = !DILocalVariable(name: "result", scope: !4352, file: !4353, line: 44, type: !42)
!4358 = !DILocalVariable(name: "bytes", scope: !4359, file: !4353, line: 56, type: !45)
!4359 = distinct !DILexicalBlock(scope: !4360, file: !4353, line: 53, column: 5)
!4360 = distinct !DILexicalBlock(scope: !4352, file: !4353, line: 47, column: 7)
!4361 = !DILocation(line: 42, column: 20, scope: !4352)
!4362 = !DILocation(line: 42, column: 30, scope: !4352)
!4363 = !DILocation(line: 47, column: 9, scope: !4360)
!4364 = !DILocation(line: 47, column: 19, scope: !4360)
!4365 = !DILocation(line: 47, column: 14, scope: !4360)
!4366 = !DILocation(line: 56, column: 24, scope: !4359)
!4367 = !DILocation(line: 56, column: 14, scope: !4359)
!4368 = !DILocation(line: 57, column: 17, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4359, file: !4353, line: 57, column: 11)
!4370 = !DILocation(line: 57, column: 21, scope: !4369)
!4371 = !DILocation(line: 57, column: 11, scope: !4359)
!4372 = !DILocation(line: 59, column: 11, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4369, file: !4353, line: 58, column: 9)
!4374 = !DILocation(line: 59, column: 17, scope: !4373)
!4375 = !DILocation(line: 65, column: 12, scope: !4352)
!4376 = !DILocation(line: 44, column: 9, scope: !4352)
!4377 = !DILocation(line: 72, column: 3, scope: !4352)
!4378 = !DILocation(line: 73, column: 1, scope: !4352)
!4379 = distinct !DISubprogram(name: "rpl_fclose", scope: !4380, file: !4380, line: 56, type: !4381, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !680, variables: !4423)
!4380 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!54, !4383}
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !898, line: 7, baseType: !4385)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !900, line: 241, size: 1728, elements: !4386)
!4386 = !{!4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4385, file: !900, line: 242, baseType: !54, size: 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4385, file: !900, line: 247, baseType: !40, size: 64, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4385, file: !900, line: 248, baseType: !40, size: 64, offset: 128)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4385, file: !900, line: 249, baseType: !40, size: 64, offset: 192)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4385, file: !900, line: 250, baseType: !40, size: 64, offset: 256)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4385, file: !900, line: 251, baseType: !40, size: 64, offset: 320)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4385, file: !900, line: 252, baseType: !40, size: 64, offset: 384)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4385, file: !900, line: 253, baseType: !40, size: 64, offset: 448)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4385, file: !900, line: 254, baseType: !40, size: 64, offset: 512)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4385, file: !900, line: 256, baseType: !40, size: 64, offset: 576)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4385, file: !900, line: 257, baseType: !40, size: 64, offset: 640)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4385, file: !900, line: 258, baseType: !40, size: 64, offset: 704)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4385, file: !900, line: 260, baseType: !4400, size: 64, offset: 768)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !900, line: 156, size: 192, elements: !4402)
!4402 = !{!4403, !4404, !4406}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4401, file: !900, line: 157, baseType: !4400, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4401, file: !900, line: 158, baseType: !4405, size: 64, offset: 64)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4401, file: !900, line: 162, baseType: !54, size: 32, offset: 128)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4385, file: !900, line: 262, baseType: !4405, size: 64, offset: 832)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4385, file: !900, line: 264, baseType: !54, size: 32, offset: 896)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4385, file: !900, line: 268, baseType: !54, size: 32, offset: 928)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4385, file: !900, line: 270, baseType: !926, size: 64, offset: 960)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4385, file: !900, line: 274, baseType: !164, size: 16, offset: 1024)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4385, file: !900, line: 275, baseType: !931, size: 8, offset: 1040)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4385, file: !900, line: 276, baseType: !933, size: 8, offset: 1048)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4385, file: !900, line: 280, baseType: !937, size: 64, offset: 1088)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4385, file: !900, line: 289, baseType: !940, size: 64, offset: 1152)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4385, file: !900, line: 297, baseType: !42, size: 64, offset: 1216)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4385, file: !900, line: 298, baseType: !42, size: 64, offset: 1280)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4385, file: !900, line: 299, baseType: !42, size: 64, offset: 1344)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4385, file: !900, line: 300, baseType: !42, size: 64, offset: 1408)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4385, file: !900, line: 302, baseType: !45, size: 64, offset: 1472)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4385, file: !900, line: 303, baseType: !54, size: 32, offset: 1536)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4385, file: !900, line: 305, baseType: !948, size: 160, offset: 1568)
!4423 = !{!4424, !4425, !4426, !4427}
!4424 = !DILocalVariable(name: "fp", arg: 1, scope: !4379, file: !4380, line: 56, type: !4383)
!4425 = !DILocalVariable(name: "saved_errno", scope: !4379, file: !4380, line: 58, type: !54)
!4426 = !DILocalVariable(name: "fd", scope: !4379, file: !4380, line: 59, type: !54)
!4427 = !DILocalVariable(name: "result", scope: !4379, file: !4380, line: 60, type: !54)
!4428 = !DILocation(line: 56, column: 19, scope: !4379)
!4429 = !DILocation(line: 58, column: 7, scope: !4379)
!4430 = !DILocation(line: 60, column: 7, scope: !4379)
!4431 = !DILocation(line: 63, column: 8, scope: !4379)
!4432 = !DILocation(line: 59, column: 7, scope: !4379)
!4433 = !DILocation(line: 64, column: 10, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4379, file: !4380, line: 64, column: 7)
!4435 = !DILocation(line: 64, column: 7, scope: !4379)
!4436 = !DILocation(line: 65, column: 12, scope: !4434)
!4437 = !DILocation(line: 65, column: 5, scope: !4434)
!4438 = !DILocation(line: 70, column: 9, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4379, file: !4380, line: 70, column: 7)
!4440 = !DILocation(line: 70, column: 23, scope: !4439)
!4441 = !DILocation(line: 70, column: 33, scope: !4439)
!4442 = !DILocation(line: 70, column: 26, scope: !4439)
!4443 = !DILocation(line: 70, column: 59, scope: !4439)
!4444 = !DILocation(line: 71, column: 7, scope: !4439)
!4445 = !DILocation(line: 71, column: 10, scope: !4439)
!4446 = !DILocation(line: 70, column: 7, scope: !4379)
!4447 = !DILocation(line: 98, column: 12, scope: !4379)
!4448 = !DILocation(line: 103, column: 7, scope: !4379)
!4449 = !DILocation(line: 72, column: 19, scope: !4439)
!4450 = !DILocation(line: 103, column: 19, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4379, file: !4380, line: 103, column: 7)
!4452 = !DILocation(line: 105, column: 13, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4451, file: !4380, line: 104, column: 5)
!4454 = !DILocation(line: 107, column: 5, scope: !4453)
!4455 = !DILocation(line: 110, column: 1, scope: !4379)
!4456 = distinct !DISubprogram(name: "rpl_fflush", scope: !4457, file: !4457, line: 127, type: !4458, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !4500)
!4457 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!54, !4460}
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !898, line: 7, baseType: !4462)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !900, line: 241, size: 1728, elements: !4463)
!4463 = !{!4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4462, file: !900, line: 242, baseType: !54, size: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4462, file: !900, line: 247, baseType: !40, size: 64, offset: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4462, file: !900, line: 248, baseType: !40, size: 64, offset: 128)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4462, file: !900, line: 249, baseType: !40, size: 64, offset: 192)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4462, file: !900, line: 250, baseType: !40, size: 64, offset: 256)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4462, file: !900, line: 251, baseType: !40, size: 64, offset: 320)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4462, file: !900, line: 252, baseType: !40, size: 64, offset: 384)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4462, file: !900, line: 253, baseType: !40, size: 64, offset: 448)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4462, file: !900, line: 254, baseType: !40, size: 64, offset: 512)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4462, file: !900, line: 256, baseType: !40, size: 64, offset: 576)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4462, file: !900, line: 257, baseType: !40, size: 64, offset: 640)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4462, file: !900, line: 258, baseType: !40, size: 64, offset: 704)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4462, file: !900, line: 260, baseType: !4477, size: 64, offset: 768)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !900, line: 156, size: 192, elements: !4479)
!4479 = !{!4480, !4481, !4483}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4478, file: !900, line: 157, baseType: !4477, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4478, file: !900, line: 158, baseType: !4482, size: 64, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4478, file: !900, line: 162, baseType: !54, size: 32, offset: 128)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4462, file: !900, line: 262, baseType: !4482, size: 64, offset: 832)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4462, file: !900, line: 264, baseType: !54, size: 32, offset: 896)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4462, file: !900, line: 268, baseType: !54, size: 32, offset: 928)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4462, file: !900, line: 270, baseType: !926, size: 64, offset: 960)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4462, file: !900, line: 274, baseType: !164, size: 16, offset: 1024)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4462, file: !900, line: 275, baseType: !931, size: 8, offset: 1040)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4462, file: !900, line: 276, baseType: !933, size: 8, offset: 1048)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4462, file: !900, line: 280, baseType: !937, size: 64, offset: 1088)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4462, file: !900, line: 289, baseType: !940, size: 64, offset: 1152)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4462, file: !900, line: 297, baseType: !42, size: 64, offset: 1216)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4462, file: !900, line: 298, baseType: !42, size: 64, offset: 1280)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4462, file: !900, line: 299, baseType: !42, size: 64, offset: 1344)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4462, file: !900, line: 300, baseType: !42, size: 64, offset: 1408)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4462, file: !900, line: 302, baseType: !45, size: 64, offset: 1472)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4462, file: !900, line: 303, baseType: !54, size: 32, offset: 1536)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4462, file: !900, line: 305, baseType: !948, size: 160, offset: 1568)
!4500 = !{!4501}
!4501 = !DILocalVariable(name: "stream", arg: 1, scope: !4456, file: !4457, line: 127, type: !4460)
!4502 = !DILocation(line: 127, column: 19, scope: !4456)
!4503 = !DILocation(line: 148, column: 14, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4456, file: !4457, line: 148, column: 7)
!4505 = !DILocation(line: 148, column: 22, scope: !4504)
!4506 = !DILocation(line: 148, column: 27, scope: !4504)
!4507 = !DILocation(line: 148, column: 7, scope: !4456)
!4508 = !DILocation(line: 149, column: 12, scope: !4504)
!4509 = !DILocation(line: 149, column: 5, scope: !4504)
!4510 = !DILocalVariable(name: "fp", arg: 1, scope: !4511, file: !4457, line: 40, type: !4460)
!4511 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4457, file: !4457, line: 40, type: !4512, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !4514)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{null, !4460}
!4514 = !{!4510}
!4515 = !DILocation(line: 40, column: 48, scope: !4511, inlinedAt: !4516)
!4516 = distinct !DILocation(line: 153, column: 3, scope: !4456)
!4517 = !DILocation(line: 42, column: 11, scope: !4518, inlinedAt: !4516)
!4518 = distinct !DILexicalBlock(scope: !4511, file: !4457, line: 42, column: 7)
!4519 = !DILocation(line: 42, column: 18, scope: !4518, inlinedAt: !4516)
!4520 = !DILocation(line: 42, column: 7, scope: !4511, inlinedAt: !4516)
!4521 = !DILocation(line: 44, column: 5, scope: !4518, inlinedAt: !4516)
!4522 = !DILocation(line: 155, column: 10, scope: !4456)
!4523 = !DILocation(line: 155, column: 3, scope: !4456)
!4524 = !DILocation(line: 229, column: 1, scope: !4456)
!4525 = distinct !DISubprogram(name: "freadptr", scope: !4526, file: !4526, line: 27, type: !4527, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !684, variables: !4569)
!4526 = !DIFile(filename: "lib/freadptr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!87, !4529, !155}
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !898, line: 7, baseType: !4531)
!4531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !900, line: 241, size: 1728, elements: !4532)
!4532 = !{!4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4531, file: !900, line: 242, baseType: !54, size: 32)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4531, file: !900, line: 247, baseType: !40, size: 64, offset: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4531, file: !900, line: 248, baseType: !40, size: 64, offset: 128)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4531, file: !900, line: 249, baseType: !40, size: 64, offset: 192)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4531, file: !900, line: 250, baseType: !40, size: 64, offset: 256)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4531, file: !900, line: 251, baseType: !40, size: 64, offset: 320)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4531, file: !900, line: 252, baseType: !40, size: 64, offset: 384)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4531, file: !900, line: 253, baseType: !40, size: 64, offset: 448)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4531, file: !900, line: 254, baseType: !40, size: 64, offset: 512)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4531, file: !900, line: 256, baseType: !40, size: 64, offset: 576)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4531, file: !900, line: 257, baseType: !40, size: 64, offset: 640)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4531, file: !900, line: 258, baseType: !40, size: 64, offset: 704)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4531, file: !900, line: 260, baseType: !4546, size: 64, offset: 768)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !900, line: 156, size: 192, elements: !4548)
!4548 = !{!4549, !4550, !4552}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4547, file: !900, line: 157, baseType: !4546, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4547, file: !900, line: 158, baseType: !4551, size: 64, offset: 64)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4547, file: !900, line: 162, baseType: !54, size: 32, offset: 128)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4531, file: !900, line: 262, baseType: !4551, size: 64, offset: 832)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4531, file: !900, line: 264, baseType: !54, size: 32, offset: 896)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4531, file: !900, line: 268, baseType: !54, size: 32, offset: 928)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4531, file: !900, line: 270, baseType: !926, size: 64, offset: 960)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4531, file: !900, line: 274, baseType: !164, size: 16, offset: 1024)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4531, file: !900, line: 275, baseType: !931, size: 8, offset: 1040)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4531, file: !900, line: 276, baseType: !933, size: 8, offset: 1048)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4531, file: !900, line: 280, baseType: !937, size: 64, offset: 1088)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4531, file: !900, line: 289, baseType: !940, size: 64, offset: 1152)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4531, file: !900, line: 297, baseType: !42, size: 64, offset: 1216)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4531, file: !900, line: 298, baseType: !42, size: 64, offset: 1280)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4531, file: !900, line: 299, baseType: !42, size: 64, offset: 1344)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4531, file: !900, line: 300, baseType: !42, size: 64, offset: 1408)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4531, file: !900, line: 302, baseType: !45, size: 64, offset: 1472)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4531, file: !900, line: 303, baseType: !54, size: 32, offset: 1536)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4531, file: !900, line: 305, baseType: !948, size: 160, offset: 1568)
!4569 = !{!4570, !4571, !4572}
!4570 = !DILocalVariable(name: "fp", arg: 1, scope: !4525, file: !4526, line: 27, type: !4529)
!4571 = !DILocalVariable(name: "sizep", arg: 2, scope: !4525, file: !4526, line: 27, type: !155)
!4572 = !DILocalVariable(name: "size", scope: !4525, file: !4526, line: 29, type: !45)
!4573 = !DILocation(line: 27, column: 17, scope: !4525)
!4574 = !DILocation(line: 27, column: 29, scope: !4525)
!4575 = !DILocation(line: 33, column: 11, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4525, file: !4526, line: 33, column: 7)
!4577 = !DILocation(line: 33, column: 31, scope: !4576)
!4578 = !{!1003, !719, i64 32}
!4579 = !DILocation(line: 33, column: 25, scope: !4576)
!4580 = !DILocation(line: 33, column: 7, scope: !4525)
!4581 = !DILocation(line: 35, column: 14, scope: !4525)
!4582 = !DILocation(line: 35, column: 33, scope: !4525)
!4583 = !DILocation(line: 35, column: 27, scope: !4525)
!4584 = !DILocation(line: 29, column: 10, scope: !4525)
!4585 = !DILocation(line: 36, column: 12, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4525, file: !4526, line: 36, column: 7)
!4587 = !DILocation(line: 36, column: 7, scope: !4525)
!4588 = !DILocation(line: 38, column: 10, scope: !4525)
!4589 = !DILocation(line: 39, column: 3, scope: !4525)
!4590 = !DILocation(line: 121, column: 1, scope: !4525)
!4591 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4592, file: !4592, line: 28, type: !4593, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !687, variables: !4635)
!4592 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!54, !4595, !1811, !54}
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !898, line: 7, baseType: !4597)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !900, line: 241, size: 1728, elements: !4598)
!4598 = !{!4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4597, file: !900, line: 242, baseType: !54, size: 32)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4597, file: !900, line: 247, baseType: !40, size: 64, offset: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4597, file: !900, line: 248, baseType: !40, size: 64, offset: 128)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4597, file: !900, line: 249, baseType: !40, size: 64, offset: 192)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4597, file: !900, line: 250, baseType: !40, size: 64, offset: 256)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4597, file: !900, line: 251, baseType: !40, size: 64, offset: 320)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4597, file: !900, line: 252, baseType: !40, size: 64, offset: 384)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4597, file: !900, line: 253, baseType: !40, size: 64, offset: 448)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4597, file: !900, line: 254, baseType: !40, size: 64, offset: 512)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4597, file: !900, line: 256, baseType: !40, size: 64, offset: 576)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4597, file: !900, line: 257, baseType: !40, size: 64, offset: 640)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4597, file: !900, line: 258, baseType: !40, size: 64, offset: 704)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4597, file: !900, line: 260, baseType: !4612, size: 64, offset: 768)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !900, line: 156, size: 192, elements: !4614)
!4614 = !{!4615, !4616, !4618}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4613, file: !900, line: 157, baseType: !4612, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4613, file: !900, line: 158, baseType: !4617, size: 64, offset: 64)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4613, file: !900, line: 162, baseType: !54, size: 32, offset: 128)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4597, file: !900, line: 262, baseType: !4617, size: 64, offset: 832)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4597, file: !900, line: 264, baseType: !54, size: 32, offset: 896)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4597, file: !900, line: 268, baseType: !54, size: 32, offset: 928)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4597, file: !900, line: 270, baseType: !926, size: 64, offset: 960)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4597, file: !900, line: 274, baseType: !164, size: 16, offset: 1024)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4597, file: !900, line: 275, baseType: !931, size: 8, offset: 1040)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4597, file: !900, line: 276, baseType: !933, size: 8, offset: 1048)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4597, file: !900, line: 280, baseType: !937, size: 64, offset: 1088)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4597, file: !900, line: 289, baseType: !940, size: 64, offset: 1152)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4597, file: !900, line: 297, baseType: !42, size: 64, offset: 1216)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4597, file: !900, line: 298, baseType: !42, size: 64, offset: 1280)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4597, file: !900, line: 299, baseType: !42, size: 64, offset: 1344)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4597, file: !900, line: 300, baseType: !42, size: 64, offset: 1408)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4597, file: !900, line: 302, baseType: !45, size: 64, offset: 1472)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4597, file: !900, line: 303, baseType: !54, size: 32, offset: 1536)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4597, file: !900, line: 305, baseType: !948, size: 160, offset: 1568)
!4635 = !{!4636, !4637, !4638, !4639}
!4636 = !DILocalVariable(name: "fp", arg: 1, scope: !4591, file: !4592, line: 28, type: !4595)
!4637 = !DILocalVariable(name: "offset", arg: 2, scope: !4591, file: !4592, line: 28, type: !1811)
!4638 = !DILocalVariable(name: "whence", arg: 3, scope: !4591, file: !4592, line: 28, type: !54)
!4639 = !DILocalVariable(name: "pos", scope: !4640, file: !4592, line: 116, type: !1811)
!4640 = distinct !DILexicalBlock(scope: !4641, file: !4592, line: 112, column: 5)
!4641 = distinct !DILexicalBlock(scope: !4591, file: !4592, line: 51, column: 7)
!4642 = !DILocation(line: 28, column: 15, scope: !4591)
!4643 = !DILocation(line: 28, column: 25, scope: !4591)
!4644 = !DILocation(line: 28, column: 37, scope: !4591)
!4645 = !DILocation(line: 51, column: 11, scope: !4641)
!4646 = !DILocation(line: 51, column: 31, scope: !4641)
!4647 = !DILocation(line: 51, column: 24, scope: !4641)
!4648 = !DILocation(line: 52, column: 7, scope: !4641)
!4649 = !DILocation(line: 52, column: 14, scope: !4641)
!4650 = !DILocation(line: 52, column: 35, scope: !4641)
!4651 = !DILocation(line: 52, column: 28, scope: !4641)
!4652 = !DILocation(line: 53, column: 7, scope: !4641)
!4653 = !DILocation(line: 53, column: 14, scope: !4641)
!4654 = !{!1003, !719, i64 72}
!4655 = !DILocation(line: 53, column: 28, scope: !4641)
!4656 = !DILocation(line: 51, column: 7, scope: !4591)
!4657 = !DILocation(line: 116, column: 26, scope: !4640)
!4658 = !DILocation(line: 116, column: 19, scope: !4640)
!4659 = !DILocation(line: 116, column: 13, scope: !4640)
!4660 = !DILocation(line: 117, column: 15, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4640, file: !4592, line: 117, column: 11)
!4662 = !DILocation(line: 117, column: 11, scope: !4640)
!4663 = !DILocation(line: 127, column: 11, scope: !4640)
!4664 = !DILocation(line: 127, column: 18, scope: !4640)
!4665 = !DILocation(line: 128, column: 11, scope: !4640)
!4666 = !DILocation(line: 128, column: 19, scope: !4640)
!4667 = !{!1003, !812, i64 144}
!4668 = !DILocation(line: 159, column: 7, scope: !4640)
!4669 = !DILocation(line: 161, column: 10, scope: !4591)
!4670 = !DILocation(line: 161, column: 3, scope: !4591)
!4671 = !DILocation(line: 162, column: 1, scope: !4591)
!4672 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4673, file: !4673, line: 334, type: !4674, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !689, variables: !4688)
!4673 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!45, !4676, !87, !45, !4677}
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2436, line: 6, baseType: !4679)
!4679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2438, line: 21, baseType: !4680)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2438, line: 13, size: 64, elements: !4681)
!4681 = !{!4682, !4683}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4680, file: !2438, line: 15, baseType: !54, size: 32)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4680, file: !2438, line: 20, baseType: !4684, size: 32, offset: 32)
!4684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4680, file: !2438, line: 16, size: 32, elements: !4685)
!4685 = !{!4686, !4687}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4684, file: !2438, line: 18, baseType: !165, size: 32)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4684, file: !2438, line: 19, baseType: !2447, size: 32)
!4688 = !{!4689, !4690, !4691, !4692, !4693, !4694, !4695}
!4689 = !DILocalVariable(name: "pwc", arg: 1, scope: !4672, file: !4673, line: 334, type: !4676)
!4690 = !DILocalVariable(name: "s", arg: 2, scope: !4672, file: !4673, line: 334, type: !87)
!4691 = !DILocalVariable(name: "n", arg: 3, scope: !4672, file: !4673, line: 334, type: !45)
!4692 = !DILocalVariable(name: "ps", arg: 4, scope: !4672, file: !4673, line: 334, type: !4677)
!4693 = !DILocalVariable(name: "ret", scope: !4672, file: !4673, line: 336, type: !45)
!4694 = !DILocalVariable(name: "wc", scope: !4672, file: !4673, line: 337, type: !2452)
!4695 = !DILocalVariable(name: "uc", scope: !4696, file: !4673, line: 398, type: !44)
!4696 = distinct !DILexicalBlock(scope: !4697, file: !4673, line: 397, column: 5)
!4697 = distinct !DILexicalBlock(scope: !4672, file: !4673, line: 396, column: 7)
!4698 = !DILocation(line: 334, column: 23, scope: !4672)
!4699 = !DILocation(line: 334, column: 40, scope: !4672)
!4700 = !DILocation(line: 334, column: 50, scope: !4672)
!4701 = !DILocation(line: 334, column: 64, scope: !4672)
!4702 = !DILocation(line: 337, column: 3, scope: !4672)
!4703 = !DILocation(line: 353, column: 9, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4672, file: !4673, line: 353, column: 7)
!4705 = !DILocation(line: 353, column: 7, scope: !4672)
!4706 = !DILocation(line: 388, column: 9, scope: !4672)
!4707 = !DILocation(line: 336, column: 10, scope: !4672)
!4708 = !DILocation(line: 396, column: 19, scope: !4697)
!4709 = !DILocation(line: 396, column: 31, scope: !4697)
!4710 = !DILocation(line: 396, column: 26, scope: !4697)
!4711 = !DILocation(line: 396, column: 41, scope: !4697)
!4712 = !DILocation(line: 396, column: 7, scope: !4672)
!4713 = !DILocation(line: 398, column: 26, scope: !4696)
!4714 = !DILocation(line: 398, column: 21, scope: !4696)
!4715 = !DILocation(line: 399, column: 14, scope: !4696)
!4716 = !DILocation(line: 399, column: 12, scope: !4696)
!4717 = !DILocation(line: 405, column: 1, scope: !4672)
!4718 = distinct !DISubprogram(name: "close_stream", scope: !4719, file: !4719, line: 56, type: !4720, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !692, variables: !4762)
!4719 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!54, !4722}
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !898, line: 7, baseType: !4724)
!4724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !900, line: 241, size: 1728, elements: !4725)
!4725 = !{!4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4724, file: !900, line: 242, baseType: !54, size: 32)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4724, file: !900, line: 247, baseType: !40, size: 64, offset: 64)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4724, file: !900, line: 248, baseType: !40, size: 64, offset: 128)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4724, file: !900, line: 249, baseType: !40, size: 64, offset: 192)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4724, file: !900, line: 250, baseType: !40, size: 64, offset: 256)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4724, file: !900, line: 251, baseType: !40, size: 64, offset: 320)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4724, file: !900, line: 252, baseType: !40, size: 64, offset: 384)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4724, file: !900, line: 253, baseType: !40, size: 64, offset: 448)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4724, file: !900, line: 254, baseType: !40, size: 64, offset: 512)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4724, file: !900, line: 256, baseType: !40, size: 64, offset: 576)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4724, file: !900, line: 257, baseType: !40, size: 64, offset: 640)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4724, file: !900, line: 258, baseType: !40, size: 64, offset: 704)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4724, file: !900, line: 260, baseType: !4739, size: 64, offset: 768)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !900, line: 156, size: 192, elements: !4741)
!4741 = !{!4742, !4743, !4745}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4740, file: !900, line: 157, baseType: !4739, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4740, file: !900, line: 158, baseType: !4744, size: 64, offset: 64)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4740, file: !900, line: 162, baseType: !54, size: 32, offset: 128)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4724, file: !900, line: 262, baseType: !4744, size: 64, offset: 832)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4724, file: !900, line: 264, baseType: !54, size: 32, offset: 896)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4724, file: !900, line: 268, baseType: !54, size: 32, offset: 928)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4724, file: !900, line: 270, baseType: !926, size: 64, offset: 960)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4724, file: !900, line: 274, baseType: !164, size: 16, offset: 1024)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4724, file: !900, line: 275, baseType: !931, size: 8, offset: 1040)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4724, file: !900, line: 276, baseType: !933, size: 8, offset: 1048)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4724, file: !900, line: 280, baseType: !937, size: 64, offset: 1088)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4724, file: !900, line: 289, baseType: !940, size: 64, offset: 1152)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4724, file: !900, line: 297, baseType: !42, size: 64, offset: 1216)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4724, file: !900, line: 298, baseType: !42, size: 64, offset: 1280)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4724, file: !900, line: 299, baseType: !42, size: 64, offset: 1344)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4724, file: !900, line: 300, baseType: !42, size: 64, offset: 1408)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4724, file: !900, line: 302, baseType: !45, size: 64, offset: 1472)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4724, file: !900, line: 303, baseType: !54, size: 32, offset: 1536)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4724, file: !900, line: 305, baseType: !948, size: 160, offset: 1568)
!4762 = !{!4763, !4764, !4766, !4767}
!4763 = !DILocalVariable(name: "stream", arg: 1, scope: !4718, file: !4719, line: 56, type: !4722)
!4764 = !DILocalVariable(name: "some_pending", scope: !4718, file: !4719, line: 58, type: !4765)
!4765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!4766 = !DILocalVariable(name: "prev_fail", scope: !4718, file: !4719, line: 59, type: !4765)
!4767 = !DILocalVariable(name: "fclose_fail", scope: !4718, file: !4719, line: 60, type: !4765)
!4768 = !DILocation(line: 56, column: 21, scope: !4718)
!4769 = !DILocation(line: 58, column: 30, scope: !4718)
!4770 = !DILocalVariable(name: "__stream", arg: 1, scope: !4771, file: !995, line: 132, type: !4722)
!4771 = distinct !DISubprogram(name: "ferror_unlocked", scope: !995, file: !995, line: 132, type: !4720, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !692, variables: !4772)
!4772 = !{!4770}
!4773 = !DILocation(line: 132, column: 1, scope: !4771, inlinedAt: !4774)
!4774 = distinct !DILocation(line: 59, column: 27, scope: !4718)
!4775 = !DILocation(line: 134, column: 10, scope: !4771, inlinedAt: !4774)
!4776 = !DILocation(line: 59, column: 43, scope: !4718)
!4777 = !DILocation(line: 60, column: 29, scope: !4718)
!4778 = !DILocation(line: 60, column: 45, scope: !4718)
!4779 = !DILocation(line: 70, column: 17, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4718, file: !4719, line: 70, column: 7)
!4781 = !DILocation(line: 58, column: 50, scope: !4718)
!4782 = !DILocation(line: 70, column: 33, scope: !4780)
!4783 = !DILocation(line: 70, column: 53, scope: !4780)
!4784 = !DILocation(line: 70, column: 59, scope: !4780)
!4785 = !DILocation(line: 70, column: 7, scope: !4718)
!4786 = !DILocation(line: 72, column: 11, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4780, file: !4719, line: 71, column: 5)
!4788 = !DILocation(line: 73, column: 9, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4787, file: !4719, line: 72, column: 11)
!4790 = !DILocation(line: 73, column: 15, scope: !4789)
!4791 = !DILocation(line: 78, column: 1, scope: !4718)
!4792 = distinct !DISubprogram(name: "freadseek", scope: !4793, file: !4793, line: 73, type: !4794, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !694, variables: !4836)
!4793 = !DIFile(filename: "lib/freadseek.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!54, !4796, !45}
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !898, line: 7, baseType: !4798)
!4798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !900, line: 241, size: 1728, elements: !4799)
!4799 = !{!4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4798, file: !900, line: 242, baseType: !54, size: 32)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4798, file: !900, line: 247, baseType: !40, size: 64, offset: 64)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4798, file: !900, line: 248, baseType: !40, size: 64, offset: 128)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4798, file: !900, line: 249, baseType: !40, size: 64, offset: 192)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4798, file: !900, line: 250, baseType: !40, size: 64, offset: 256)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4798, file: !900, line: 251, baseType: !40, size: 64, offset: 320)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4798, file: !900, line: 252, baseType: !40, size: 64, offset: 384)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4798, file: !900, line: 253, baseType: !40, size: 64, offset: 448)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4798, file: !900, line: 254, baseType: !40, size: 64, offset: 512)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4798, file: !900, line: 256, baseType: !40, size: 64, offset: 576)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4798, file: !900, line: 257, baseType: !40, size: 64, offset: 640)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4798, file: !900, line: 258, baseType: !40, size: 64, offset: 704)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4798, file: !900, line: 260, baseType: !4813, size: 64, offset: 768)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !900, line: 156, size: 192, elements: !4815)
!4815 = !{!4816, !4817, !4819}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4814, file: !900, line: 157, baseType: !4813, size: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4814, file: !900, line: 158, baseType: !4818, size: 64, offset: 64)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4814, file: !900, line: 162, baseType: !54, size: 32, offset: 128)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4798, file: !900, line: 262, baseType: !4818, size: 64, offset: 832)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4798, file: !900, line: 264, baseType: !54, size: 32, offset: 896)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4798, file: !900, line: 268, baseType: !54, size: 32, offset: 928)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4798, file: !900, line: 270, baseType: !926, size: 64, offset: 960)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4798, file: !900, line: 274, baseType: !164, size: 16, offset: 1024)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4798, file: !900, line: 275, baseType: !931, size: 8, offset: 1040)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4798, file: !900, line: 276, baseType: !933, size: 8, offset: 1048)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4798, file: !900, line: 280, baseType: !937, size: 64, offset: 1088)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4798, file: !900, line: 289, baseType: !940, size: 64, offset: 1152)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4798, file: !900, line: 297, baseType: !42, size: 64, offset: 1216)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4798, file: !900, line: 298, baseType: !42, size: 64, offset: 1280)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4798, file: !900, line: 299, baseType: !42, size: 64, offset: 1344)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4798, file: !900, line: 300, baseType: !42, size: 64, offset: 1408)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4798, file: !900, line: 302, baseType: !45, size: 64, offset: 1472)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4798, file: !900, line: 303, baseType: !54, size: 32, offset: 1536)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4798, file: !900, line: 305, baseType: !948, size: 160, offset: 1568)
!4836 = !{!4837, !4838, !4839, !4840, !4841, !4843, !4846, !4852}
!4837 = !DILocalVariable(name: "fp", arg: 1, scope: !4792, file: !4793, line: 73, type: !4796)
!4838 = !DILocalVariable(name: "offset", arg: 2, scope: !4792, file: !4793, line: 73, type: !45)
!4839 = !DILocalVariable(name: "total_buffered", scope: !4792, file: !4793, line: 75, type: !45)
!4840 = !DILocalVariable(name: "fd", scope: !4792, file: !4793, line: 76, type: !54)
!4841 = !DILocalVariable(name: "buffered", scope: !4842, file: !4793, line: 88, type: !45)
!4842 = distinct !DILexicalBlock(scope: !4792, file: !4793, line: 87, column: 5)
!4843 = !DILocalVariable(name: "increment", scope: !4844, file: !4793, line: 92, type: !45)
!4844 = distinct !DILexicalBlock(scope: !4845, file: !4793, line: 91, column: 9)
!4845 = distinct !DILexicalBlock(scope: !4842, file: !4793, line: 90, column: 11)
!4846 = !DILocalVariable(name: "buf", scope: !4847, file: !4793, line: 123, type: !4849)
!4847 = distinct !DILexicalBlock(scope: !4848, file: !4793, line: 120, column: 5)
!4848 = distinct !DILexicalBlock(scope: !4792, file: !4793, line: 114, column: 7)
!4849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 32768, elements: !4850)
!4850 = !{!4851}
!4851 = !DISubrange(count: 4096)
!4852 = !DILocalVariable(name: "count", scope: !4853, file: !4793, line: 127, type: !45)
!4853 = distinct !DILexicalBlock(scope: !4847, file: !4793, line: 126, column: 9)
!4854 = !DILocation(line: 73, column: 18, scope: !4792)
!4855 = !DILocation(line: 73, column: 29, scope: !4792)
!4856 = !DILocation(line: 78, column: 14, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4792, file: !4793, line: 78, column: 7)
!4858 = !DILocation(line: 78, column: 7, scope: !4792)
!4859 = !DILocation(line: 83, column: 20, scope: !4792)
!4860 = !DILocation(line: 75, column: 10, scope: !4792)
!4861 = !DILocation(line: 86, column: 25, scope: !4792)
!4862 = !DILocation(line: 86, column: 3, scope: !4792)
!4863 = !DILocation(line: 88, column: 7, scope: !4842)
!4864 = !DILocation(line: 88, column: 14, scope: !4842)
!4865 = !DILocation(line: 90, column: 11, scope: !4845)
!4866 = !DILocation(line: 90, column: 36, scope: !4845)
!4867 = !DILocation(line: 90, column: 47, scope: !4845)
!4868 = !DILocation(line: 90, column: 56, scope: !4845)
!4869 = !DILocation(line: 90, column: 44, scope: !4845)
!4870 = !DILocation(line: 92, column: 40, scope: !4844)
!4871 = !DILocation(line: 92, column: 31, scope: !4844)
!4872 = !DILocation(line: 92, column: 18, scope: !4844)
!4873 = !DILocalVariable(name: "fp", arg: 1, scope: !4874, file: !4793, line: 34, type: !4796)
!4874 = distinct !DISubprogram(name: "freadptrinc", scope: !4793, file: !4793, line: 34, type: !4875, isLocal: true, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, unit: !694, variables: !4877)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{null, !4796, !45}
!4877 = !{!4873, !4878}
!4878 = !DILocalVariable(name: "increment", arg: 2, scope: !4874, file: !4793, line: 34, type: !45)
!4879 = !DILocation(line: 34, column: 20, scope: !4874, inlinedAt: !4880)
!4880 = distinct !DILocation(line: 94, column: 11, scope: !4844)
!4881 = !DILocation(line: 34, column: 31, scope: !4874, inlinedAt: !4880)
!4882 = !DILocation(line: 40, column: 20, scope: !4874, inlinedAt: !4880)
!4883 = !DILocation(line: 95, column: 18, scope: !4844)
!4884 = !DILocation(line: 96, column: 22, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4844, file: !4793, line: 96, column: 15)
!4886 = !DILocation(line: 96, column: 15, scope: !4844)
!4887 = !DILocation(line: 110, column: 5, scope: !4792)
!4888 = !DILocation(line: 98, column: 26, scope: !4844)
!4889 = !DILocation(line: 99, column: 30, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4844, file: !4793, line: 99, column: 15)
!4891 = !DILocation(line: 104, column: 11, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4842, file: !4793, line: 104, column: 11)
!4893 = !DILocation(line: 104, column: 22, scope: !4892)
!4894 = !DILocation(line: 104, column: 11, scope: !4842)
!4895 = !DILocation(line: 106, column: 13, scope: !4842)
!4896 = !DILocation(line: 107, column: 18, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4842, file: !4793, line: 107, column: 11)
!4898 = !DILocation(line: 107, column: 11, scope: !4842)
!4899 = distinct !{!4899, !4862, !4887}
!4900 = !DILocation(line: 113, column: 8, scope: !4792)
!4901 = !DILocation(line: 76, column: 7, scope: !4792)
!4902 = !DILocation(line: 114, column: 10, scope: !4848)
!4903 = !DILocation(line: 114, column: 15, scope: !4848)
!4904 = !DILocation(line: 114, column: 18, scope: !4848)
!4905 = !DILocation(line: 114, column: 42, scope: !4848)
!4906 = !DILocation(line: 114, column: 7, scope: !4792)
!4907 = !DILocation(line: 117, column: 14, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4848, file: !4793, line: 115, column: 5)
!4909 = !DILocation(line: 117, column: 7, scope: !4908)
!4910 = !DILocation(line: 123, column: 7, scope: !4847)
!4911 = !DILocation(line: 123, column: 12, scope: !4847)
!4912 = !DILocation(line: 125, column: 7, scope: !4847)
!4913 = distinct !{!4913, !4912, !4914}
!4914 = !DILocation(line: 132, column: 24, scope: !4847)
!4915 = !DILocation(line: 127, column: 27, scope: !4853)
!4916 = !DILocation(line: 127, column: 18, scope: !4853)
!4917 = !DILocation(line: 128, column: 15, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4853, file: !4793, line: 128, column: 15)
!4919 = !DILocation(line: 128, column: 41, scope: !4918)
!4920 = !DILocation(line: 128, column: 15, scope: !4853)
!4921 = !DILocation(line: 132, column: 21, scope: !4847)
!4922 = !DILocation(line: 131, column: 9, scope: !4853)
!4923 = !DILocation(line: 135, column: 4, scope: !4848)
!4924 = !DILocation(line: 139, column: 7, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4792, file: !4793, line: 139, column: 7)
!4926 = !DILocation(line: 143, column: 5, scope: !4925)
!4927 = !DILocation(line: 144, column: 1, scope: !4792)
!4928 = distinct !DISubprogram(name: "hard_locale", scope: !4929, file: !4929, line: 38, type: !4930, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !696, variables: !4932)
!4929 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!61, !54}
!4932 = !{!4933, !4934, !4935}
!4933 = !DILocalVariable(name: "category", arg: 1, scope: !4928, file: !4929, line: 38, type: !54)
!4934 = !DILocalVariable(name: "hard", scope: !4928, file: !4929, line: 40, type: !61)
!4935 = !DILocalVariable(name: "p", scope: !4928, file: !4929, line: 41, type: !87)
!4936 = !DILocation(line: 38, column: 18, scope: !4928)
!4937 = !DILocation(line: 40, column: 8, scope: !4928)
!4938 = !DILocation(line: 41, column: 19, scope: !4928)
!4939 = !DILocation(line: 41, column: 15, scope: !4928)
!4940 = !DILocation(line: 43, column: 7, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4928, file: !4929, line: 43, column: 7)
!4942 = !DILocation(line: 43, column: 7, scope: !4928)
!4943 = !DILocation(line: 47, column: 15, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4945, file: !4929, line: 47, column: 15)
!4945 = distinct !DILexicalBlock(scope: !4946, file: !4929, line: 46, column: 9)
!4946 = distinct !DILexicalBlock(scope: !4947, file: !4929, line: 45, column: 11)
!4947 = distinct !DILexicalBlock(scope: !4941, file: !4929, line: 44, column: 5)
!4948 = !DILocation(line: 47, column: 31, scope: !4944)
!4949 = !DILocation(line: 47, column: 36, scope: !4944)
!4950 = !DILocation(line: 47, column: 39, scope: !4944)
!4951 = !DILocation(line: 47, column: 59, scope: !4944)
!4952 = !DILocation(line: 47, column: 15, scope: !4945)
!4953 = !DILocation(line: 48, column: 13, scope: !4944)
!4954 = !DILocation(line: 71, column: 3, scope: !4928)
!4955 = distinct !DISubprogram(name: "locale_charset", scope: !640, file: !640, line: 393, type: !4956, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !297, variables: !4957)
!4956 = !DISubroutineType(types: !686)
!4957 = !{!4958, !4959}
!4958 = !DILocalVariable(name: "codeset", scope: !4955, file: !640, line: 395, type: !87)
!4959 = !DILocalVariable(name: "aliases", scope: !4955, file: !640, line: 396, type: !87)
!4960 = !DILocalVariable(name: "buf1", scope: !4961, file: !640, line: 196, type: !5028)
!4961 = distinct !DILexicalBlock(scope: !4962, file: !640, line: 194, column: 21)
!4962 = distinct !DILexicalBlock(scope: !4963, file: !640, line: 193, column: 19)
!4963 = distinct !DILexicalBlock(scope: !4964, file: !640, line: 193, column: 19)
!4964 = distinct !DILexicalBlock(scope: !4965, file: !640, line: 188, column: 17)
!4965 = distinct !DILexicalBlock(scope: !4966, file: !640, line: 181, column: 19)
!4966 = distinct !DILexicalBlock(scope: !4967, file: !640, line: 177, column: 13)
!4967 = distinct !DILexicalBlock(scope: !4968, file: !640, line: 173, column: 15)
!4968 = distinct !DILexicalBlock(scope: !4969, file: !640, line: 161, column: 9)
!4969 = distinct !DILexicalBlock(scope: !4970, file: !640, line: 157, column: 11)
!4970 = distinct !DILexicalBlock(scope: !4971, file: !640, line: 130, column: 5)
!4971 = distinct !DILexicalBlock(scope: !4972, file: !640, line: 129, column: 7)
!4972 = distinct !DISubprogram(name: "get_charset_aliases", scope: !640, file: !640, line: 124, type: !4956, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !297, variables: !4973)
!4973 = !{!4974, !4975, !4976, !4977, !4978, !4980, !4981, !4982, !4983, !5024, !5025, !5026, !4960, !5027, !5031, !5032, !5033}
!4974 = !DILocalVariable(name: "cp", scope: !4972, file: !640, line: 126, type: !87)
!4975 = !DILocalVariable(name: "dir", scope: !4970, file: !640, line: 132, type: !87)
!4976 = !DILocalVariable(name: "base", scope: !4970, file: !640, line: 133, type: !87)
!4977 = !DILocalVariable(name: "file_name", scope: !4970, file: !640, line: 134, type: !40)
!4978 = !DILocalVariable(name: "dir_len", scope: !4979, file: !640, line: 144, type: !45)
!4979 = distinct !DILexicalBlock(scope: !4970, file: !640, line: 143, column: 7)
!4980 = !DILocalVariable(name: "base_len", scope: !4979, file: !640, line: 145, type: !45)
!4981 = !DILocalVariable(name: "add_slash", scope: !4979, file: !640, line: 146, type: !54)
!4982 = !DILocalVariable(name: "fd", scope: !4968, file: !640, line: 162, type: !54)
!4983 = !DILocalVariable(name: "fp", scope: !4966, file: !640, line: 178, type: !4984)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !898, line: 7, baseType: !4986)
!4986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !900, line: 241, size: 1728, elements: !4987)
!4987 = !{!4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023}
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4986, file: !900, line: 242, baseType: !54, size: 32)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4986, file: !900, line: 247, baseType: !40, size: 64, offset: 64)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4986, file: !900, line: 248, baseType: !40, size: 64, offset: 128)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4986, file: !900, line: 249, baseType: !40, size: 64, offset: 192)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4986, file: !900, line: 250, baseType: !40, size: 64, offset: 256)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4986, file: !900, line: 251, baseType: !40, size: 64, offset: 320)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4986, file: !900, line: 252, baseType: !40, size: 64, offset: 384)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4986, file: !900, line: 253, baseType: !40, size: 64, offset: 448)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4986, file: !900, line: 254, baseType: !40, size: 64, offset: 512)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4986, file: !900, line: 256, baseType: !40, size: 64, offset: 576)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4986, file: !900, line: 257, baseType: !40, size: 64, offset: 640)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4986, file: !900, line: 258, baseType: !40, size: 64, offset: 704)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4986, file: !900, line: 260, baseType: !5001, size: 64, offset: 768)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !900, line: 156, size: 192, elements: !5003)
!5003 = !{!5004, !5005, !5007}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5002, file: !900, line: 157, baseType: !5001, size: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5002, file: !900, line: 158, baseType: !5006, size: 64, offset: 64)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4986, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5002, file: !900, line: 162, baseType: !54, size: 32, offset: 128)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4986, file: !900, line: 262, baseType: !5006, size: 64, offset: 832)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4986, file: !900, line: 264, baseType: !54, size: 32, offset: 896)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4986, file: !900, line: 268, baseType: !54, size: 32, offset: 928)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4986, file: !900, line: 270, baseType: !926, size: 64, offset: 960)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4986, file: !900, line: 274, baseType: !164, size: 16, offset: 1024)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4986, file: !900, line: 275, baseType: !931, size: 8, offset: 1040)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4986, file: !900, line: 276, baseType: !933, size: 8, offset: 1048)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4986, file: !900, line: 280, baseType: !937, size: 64, offset: 1088)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4986, file: !900, line: 289, baseType: !940, size: 64, offset: 1152)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4986, file: !900, line: 297, baseType: !42, size: 64, offset: 1216)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4986, file: !900, line: 298, baseType: !42, size: 64, offset: 1280)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4986, file: !900, line: 299, baseType: !42, size: 64, offset: 1344)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4986, file: !900, line: 300, baseType: !42, size: 64, offset: 1408)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4986, file: !900, line: 302, baseType: !45, size: 64, offset: 1472)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4986, file: !900, line: 303, baseType: !54, size: 32, offset: 1536)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4986, file: !900, line: 305, baseType: !948, size: 160, offset: 1568)
!5024 = !DILocalVariable(name: "res_ptr", scope: !4964, file: !640, line: 190, type: !40)
!5025 = !DILocalVariable(name: "res_size", scope: !4964, file: !640, line: 191, type: !45)
!5026 = !DILocalVariable(name: "c", scope: !4961, file: !640, line: 195, type: !54)
!5027 = !DILocalVariable(name: "buf2", scope: !4961, file: !640, line: 197, type: !5028)
!5028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 408, elements: !5029)
!5029 = !{!5030}
!5030 = !DISubrange(count: 51)
!5031 = !DILocalVariable(name: "l1", scope: !4961, file: !640, line: 198, type: !45)
!5032 = !DILocalVariable(name: "l2", scope: !4961, file: !640, line: 198, type: !45)
!5033 = !DILocalVariable(name: "old_res_ptr", scope: !4961, file: !640, line: 199, type: !40)
!5034 = !DILocation(line: 196, column: 28, scope: !4961, inlinedAt: !5035)
!5035 = distinct !DILocation(line: 589, column: 18, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !4955, file: !640, line: 589, column: 3)
!5037 = !DILocation(line: 197, column: 28, scope: !4961, inlinedAt: !5035)
!5038 = !DILocation(line: 403, column: 13, scope: !4955)
!5039 = !DILocation(line: 395, column: 15, scope: !4955)
!5040 = !DILocation(line: 584, column: 15, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !4955, file: !640, line: 584, column: 7)
!5042 = !DILocation(line: 584, column: 7, scope: !4955)
!5043 = !DILocation(line: 128, column: 8, scope: !4972, inlinedAt: !5035)
!5044 = !DILocation(line: 126, column: 15, scope: !4972, inlinedAt: !5035)
!5045 = !DILocation(line: 129, column: 10, scope: !4971, inlinedAt: !5035)
!5046 = !DILocation(line: 129, column: 7, scope: !4972, inlinedAt: !5035)
!5047 = !DILocation(line: 138, column: 13, scope: !4970, inlinedAt: !5035)
!5048 = !DILocation(line: 132, column: 19, scope: !4970, inlinedAt: !5035)
!5049 = !DILocation(line: 139, column: 15, scope: !5050, inlinedAt: !5035)
!5050 = distinct !DILexicalBlock(scope: !4970, file: !640, line: 139, column: 11)
!5051 = !DILocation(line: 139, column: 23, scope: !5050, inlinedAt: !5035)
!5052 = !DILocation(line: 139, column: 26, scope: !5050, inlinedAt: !5035)
!5053 = !DILocation(line: 139, column: 33, scope: !5050, inlinedAt: !5035)
!5054 = !DILocation(line: 139, column: 11, scope: !4970, inlinedAt: !5035)
!5055 = !DILocation(line: 140, column: 9, scope: !5050, inlinedAt: !5035)
!5056 = !DILocation(line: 144, column: 26, scope: !4979, inlinedAt: !5035)
!5057 = !DILocation(line: 144, column: 16, scope: !4979, inlinedAt: !5035)
!5058 = !DILocation(line: 145, column: 16, scope: !4979, inlinedAt: !5035)
!5059 = !DILocation(line: 146, column: 34, scope: !4979, inlinedAt: !5035)
!5060 = !DILocation(line: 146, column: 38, scope: !4979, inlinedAt: !5035)
!5061 = !DILocation(line: 146, column: 42, scope: !4979, inlinedAt: !5035)
!5062 = !DILocation(line: 147, column: 48, scope: !4979, inlinedAt: !5035)
!5063 = !DILocation(line: 147, column: 46, scope: !4979, inlinedAt: !5035)
!5064 = !DILocation(line: 147, column: 69, scope: !4979, inlinedAt: !5035)
!5065 = !DILocation(line: 147, column: 30, scope: !4979, inlinedAt: !5035)
!5066 = !DILocation(line: 134, column: 13, scope: !4970, inlinedAt: !5035)
!5067 = !DILocation(line: 148, column: 13, scope: !4979, inlinedAt: !5035)
!5068 = !DILocation(line: 150, column: 13, scope: !5069, inlinedAt: !5035)
!5069 = distinct !DILexicalBlock(scope: !5070, file: !640, line: 149, column: 11)
!5070 = distinct !DILexicalBlock(scope: !4979, file: !640, line: 148, column: 13)
!5071 = !DILocation(line: 151, column: 17, scope: !5069, inlinedAt: !5035)
!5072 = !DILocation(line: 152, column: 34, scope: !5073, inlinedAt: !5035)
!5073 = distinct !DILexicalBlock(scope: !5069, file: !640, line: 151, column: 17)
!5074 = !DILocation(line: 153, column: 41, scope: !5069, inlinedAt: !5035)
!5075 = !DILocation(line: 153, column: 13, scope: !5069, inlinedAt: !5035)
!5076 = !DILocation(line: 157, column: 11, scope: !4970, inlinedAt: !5035)
!5077 = !DILocation(line: 171, column: 16, scope: !4968, inlinedAt: !5035)
!5078 = !DILocation(line: 162, column: 15, scope: !4968, inlinedAt: !5035)
!5079 = !DILocation(line: 173, column: 18, scope: !4967, inlinedAt: !5035)
!5080 = !DILocation(line: 173, column: 15, scope: !4968, inlinedAt: !5035)
!5081 = !DILocation(line: 180, column: 20, scope: !4966, inlinedAt: !5035)
!5082 = !DILocation(line: 178, column: 21, scope: !4966, inlinedAt: !5035)
!5083 = !DILocation(line: 181, column: 22, scope: !4965, inlinedAt: !5035)
!5084 = !DILocation(line: 181, column: 19, scope: !4966, inlinedAt: !5035)
!5085 = !DILocation(line: 184, column: 19, scope: !5086, inlinedAt: !5035)
!5086 = distinct !DILexicalBlock(scope: !4965, file: !640, line: 182, column: 17)
!5087 = !DILocation(line: 186, column: 17, scope: !5086, inlinedAt: !5035)
!5088 = !DILocation(line: 190, column: 25, scope: !4964, inlinedAt: !5035)
!5089 = !DILocation(line: 191, column: 26, scope: !4964, inlinedAt: !5035)
!5090 = !DILocation(line: 193, column: 19, scope: !4964, inlinedAt: !5035)
!5091 = !DILocation(line: 196, column: 23, scope: !4961, inlinedAt: !5035)
!5092 = !DILocation(line: 197, column: 23, scope: !4961, inlinedAt: !5035)
!5093 = !DILocalVariable(name: "__fp", arg: 1, scope: !5094, file: !995, line: 63, type: !4984)
!5094 = distinct !DISubprogram(name: "getc_unlocked", scope: !995, file: !995, line: 63, type: !5095, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !297, variables: !5097)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!54, !4984}
!5097 = !{!5093}
!5098 = !DILocation(line: 63, column: 22, scope: !5094, inlinedAt: !5099)
!5099 = distinct !DILocation(line: 201, column: 27, scope: !4961, inlinedAt: !5035)
!5100 = !DILocation(line: 65, column: 10, scope: !5094, inlinedAt: !5099)
!5101 = !DILocation(line: 195, column: 27, scope: !4961, inlinedAt: !5035)
!5102 = !DILocation(line: 202, column: 27, scope: !4961, inlinedAt: !5035)
!5103 = distinct !{!5103, !5104, !5107}
!5104 = !DILocation(line: 209, column: 27, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5106, file: !640, line: 207, column: 25)
!5106 = distinct !DILexicalBlock(scope: !4961, file: !640, line: 206, column: 27)
!5107 = !DILocation(line: 211, column: 58, scope: !5105)
!5108 = !DILocation(line: 65, column: 10, scope: !5094, inlinedAt: !5109)
!5109 = distinct !DILocation(line: 210, column: 33, scope: !5105, inlinedAt: !5035)
!5110 = !DILocation(line: 63, column: 22, scope: !5094, inlinedAt: !5109)
!5111 = !DILocation(line: 210, column: 29, scope: !5105, inlinedAt: !5035)
!5112 = distinct !{!5112, !5113, !5114}
!5113 = !DILocation(line: 193, column: 19, scope: !4963)
!5114 = !DILocation(line: 241, column: 21, scope: !4963)
!5115 = !DILocation(line: 216, column: 23, scope: !4961, inlinedAt: !5035)
!5116 = !DILocation(line: 217, column: 27, scope: !5117, inlinedAt: !5035)
!5117 = distinct !DILexicalBlock(scope: !4961, file: !640, line: 217, column: 27)
!5118 = !DILocation(line: 217, column: 64, scope: !5117, inlinedAt: !5035)
!5119 = !DILocation(line: 217, column: 27, scope: !4961, inlinedAt: !5035)
!5120 = !DILocation(line: 219, column: 28, scope: !4961, inlinedAt: !5035)
!5121 = !DILocation(line: 198, column: 30, scope: !4961, inlinedAt: !5035)
!5122 = !DILocation(line: 220, column: 28, scope: !4961, inlinedAt: !5035)
!5123 = !DILocation(line: 198, column: 34, scope: !4961, inlinedAt: !5035)
!5124 = !DILocation(line: 199, column: 29, scope: !4961, inlinedAt: !5035)
!5125 = !DILocation(line: 222, column: 36, scope: !5126, inlinedAt: !5035)
!5126 = distinct !DILexicalBlock(scope: !4961, file: !640, line: 222, column: 27)
!5127 = !DILocation(line: 222, column: 27, scope: !4961, inlinedAt: !5035)
!5128 = !DILocation(line: 225, column: 63, scope: !5129, inlinedAt: !5035)
!5129 = distinct !DILexicalBlock(scope: !5126, file: !640, line: 223, column: 25)
!5130 = !DILocation(line: 225, column: 46, scope: !5129, inlinedAt: !5035)
!5131 = !DILocation(line: 226, column: 25, scope: !5129, inlinedAt: !5035)
!5132 = !DILocation(line: 229, column: 36, scope: !5133, inlinedAt: !5035)
!5133 = distinct !DILexicalBlock(scope: !5126, file: !640, line: 228, column: 25)
!5134 = !DILocation(line: 230, column: 73, scope: !5133, inlinedAt: !5035)
!5135 = !DILocation(line: 230, column: 46, scope: !5133, inlinedAt: !5035)
!5136 = !DILocation(line: 232, column: 35, scope: !5137, inlinedAt: !5035)
!5137 = distinct !DILexicalBlock(scope: !4961, file: !640, line: 232, column: 27)
!5138 = !DILocation(line: 232, column: 27, scope: !4961, inlinedAt: !5035)
!5139 = !DILocation(line: 236, column: 27, scope: !5140, inlinedAt: !5035)
!5140 = distinct !DILexicalBlock(scope: !5137, file: !640, line: 233, column: 25)
!5141 = !DILocation(line: 237, column: 27, scope: !5140, inlinedAt: !5035)
!5142 = !DILocation(line: 241, column: 21, scope: !4962, inlinedAt: !5035)
!5143 = !DILocation(line: 239, column: 39, scope: !4961, inlinedAt: !5035)
!5144 = !DILocation(line: 239, column: 50, scope: !4961, inlinedAt: !5035)
!5145 = !DILocation(line: 239, column: 61, scope: !4961, inlinedAt: !5035)
!5146 = !DILocalVariable(name: "__dest", arg: 1, scope: !5147, file: !5148, line: 88, type: !5151)
!5147 = distinct !DISubprogram(name: "strcpy", scope: !5148, file: !5148, line: 88, type: !5149, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !297, variables: !5153)
!5148 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5149 = !DISubroutineType(types: !5150)
!5150 = !{!40, !5151, !5152}
!5151 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!5152 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!5153 = !{!5146, !5154}
!5154 = !DILocalVariable(name: "__src", arg: 2, scope: !5147, file: !5148, line: 88, type: !5152)
!5155 = !DILocation(line: 88, column: 1, scope: !5147, inlinedAt: !5156)
!5156 = distinct !DILocation(line: 239, column: 23, scope: !4961, inlinedAt: !5035)
!5157 = !DILocation(line: 90, column: 49, scope: !5147, inlinedAt: !5156)
!5158 = !DILocation(line: 90, column: 10, scope: !5147, inlinedAt: !5156)
!5159 = !DILocation(line: 88, column: 1, scope: !5147, inlinedAt: !5160)
!5160 = distinct !DILocation(line: 240, column: 23, scope: !4961, inlinedAt: !5035)
!5161 = !DILocation(line: 90, column: 49, scope: !5147, inlinedAt: !5160)
!5162 = !DILocation(line: 90, column: 10, scope: !5147, inlinedAt: !5160)
!5163 = !DILocation(line: 193, column: 19, scope: !4962, inlinedAt: !5035)
!5164 = !DILocation(line: 242, column: 19, scope: !4964, inlinedAt: !5035)
!5165 = !DILocation(line: 243, column: 32, scope: !5166, inlinedAt: !5035)
!5166 = distinct !DILexicalBlock(scope: !4964, file: !640, line: 243, column: 23)
!5167 = !DILocation(line: 243, column: 23, scope: !4964, inlinedAt: !5035)
!5168 = !DILocation(line: 247, column: 33, scope: !5169, inlinedAt: !5035)
!5169 = distinct !DILexicalBlock(scope: !5166, file: !640, line: 246, column: 21)
!5170 = !DILocation(line: 247, column: 45, scope: !5169, inlinedAt: !5035)
!5171 = !DILocation(line: 253, column: 11, scope: !4968, inlinedAt: !5035)
!5172 = !DILocation(line: 377, column: 23, scope: !4970, inlinedAt: !5035)
!5173 = !DILocation(line: 378, column: 5, scope: !4970, inlinedAt: !5035)
!5174 = !DILocation(line: 396, column: 15, scope: !4955)
!5175 = !DILocation(line: 590, column: 8, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5036, file: !640, line: 589, column: 3)
!5177 = !DILocation(line: 590, column: 17, scope: !5176)
!5178 = !DILocation(line: 589, column: 3, scope: !5036)
!5179 = !DILocation(line: 592, column: 9, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5176, file: !640, line: 592, column: 9)
!5181 = !DILocation(line: 592, column: 35, scope: !5180)
!5182 = !DILocation(line: 593, column: 9, scope: !5180)
!5183 = !DILocation(line: 593, column: 24, scope: !5180)
!5184 = !DILocation(line: 593, column: 31, scope: !5180)
!5185 = !DILocation(line: 593, column: 34, scope: !5180)
!5186 = !DILocation(line: 593, column: 45, scope: !5180)
!5187 = !DILocation(line: 592, column: 9, scope: !5176)
!5188 = !DILocation(line: 595, column: 29, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5180, file: !640, line: 594, column: 7)
!5190 = !DILocation(line: 595, column: 27, scope: !5189)
!5191 = !DILocation(line: 595, column: 46, scope: !5189)
!5192 = !DILocation(line: 596, column: 9, scope: !5189)
!5193 = !DILocation(line: 591, column: 19, scope: !5176)
!5194 = !DILocation(line: 591, column: 36, scope: !5176)
!5195 = !DILocation(line: 591, column: 16, scope: !5176)
!5196 = !DILocation(line: 591, column: 52, scope: !5176)
!5197 = !DILocation(line: 591, column: 69, scope: !5176)
!5198 = !DILocation(line: 591, column: 49, scope: !5176)
!5199 = distinct !{!5199, !5178, !5200}
!5200 = !DILocation(line: 597, column: 7, scope: !5036)
!5201 = !DILocation(line: 602, column: 7, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !4955, file: !640, line: 602, column: 7)
!5203 = !DILocation(line: 602, column: 18, scope: !5202)
!5204 = !DILocation(line: 602, column: 7, scope: !4955)
!5205 = !DILocation(line: 612, column: 3, scope: !4955)
!5206 = distinct !DISubprogram(name: "freadahead", scope: !5207, file: !5207, line: 26, type: !5208, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: true, unit: !698, variables: !5250)
!5207 = !DIFile(filename: "lib/freadahead.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!45, !5210}
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!5211 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !898, line: 7, baseType: !5212)
!5212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !900, line: 241, size: 1728, elements: !5213)
!5213 = !{!5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5212, file: !900, line: 242, baseType: !54, size: 32)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5212, file: !900, line: 247, baseType: !40, size: 64, offset: 64)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5212, file: !900, line: 248, baseType: !40, size: 64, offset: 128)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5212, file: !900, line: 249, baseType: !40, size: 64, offset: 192)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5212, file: !900, line: 250, baseType: !40, size: 64, offset: 256)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5212, file: !900, line: 251, baseType: !40, size: 64, offset: 320)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5212, file: !900, line: 252, baseType: !40, size: 64, offset: 384)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5212, file: !900, line: 253, baseType: !40, size: 64, offset: 448)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5212, file: !900, line: 254, baseType: !40, size: 64, offset: 512)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5212, file: !900, line: 256, baseType: !40, size: 64, offset: 576)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5212, file: !900, line: 257, baseType: !40, size: 64, offset: 640)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5212, file: !900, line: 258, baseType: !40, size: 64, offset: 704)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5212, file: !900, line: 260, baseType: !5227, size: 64, offset: 768)
!5227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5228, size: 64)
!5228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !900, line: 156, size: 192, elements: !5229)
!5229 = !{!5230, !5231, !5233}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5228, file: !900, line: 157, baseType: !5227, size: 64)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5228, file: !900, line: 158, baseType: !5232, size: 64, offset: 64)
!5232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5212, size: 64)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5228, file: !900, line: 162, baseType: !54, size: 32, offset: 128)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5212, file: !900, line: 262, baseType: !5232, size: 64, offset: 832)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5212, file: !900, line: 264, baseType: !54, size: 32, offset: 896)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5212, file: !900, line: 268, baseType: !54, size: 32, offset: 928)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5212, file: !900, line: 270, baseType: !926, size: 64, offset: 960)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5212, file: !900, line: 274, baseType: !164, size: 16, offset: 1024)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5212, file: !900, line: 275, baseType: !931, size: 8, offset: 1040)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5212, file: !900, line: 276, baseType: !933, size: 8, offset: 1048)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5212, file: !900, line: 280, baseType: !937, size: 64, offset: 1088)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5212, file: !900, line: 289, baseType: !940, size: 64, offset: 1152)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5212, file: !900, line: 297, baseType: !42, size: 64, offset: 1216)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5212, file: !900, line: 298, baseType: !42, size: 64, offset: 1280)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5212, file: !900, line: 299, baseType: !42, size: 64, offset: 1344)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5212, file: !900, line: 300, baseType: !42, size: 64, offset: 1408)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5212, file: !900, line: 302, baseType: !45, size: 64, offset: 1472)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5212, file: !900, line: 303, baseType: !54, size: 32, offset: 1536)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5212, file: !900, line: 305, baseType: !948, size: 160, offset: 1568)
!5250 = !{!5251}
!5251 = !DILocalVariable(name: "fp", arg: 1, scope: !5206, file: !5207, line: 26, type: !5210)
!5252 = !DILocation(line: 26, column: 19, scope: !5206)
!5253 = !DILocation(line: 29, column: 11, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5206, file: !5207, line: 29, column: 7)
!5255 = !DILocation(line: 29, column: 31, scope: !5254)
!5256 = !DILocation(line: 29, column: 25, scope: !5254)
!5257 = !DILocation(line: 29, column: 7, scope: !5206)
!5258 = !DILocation(line: 31, column: 15, scope: !5206)
!5259 = !DILocation(line: 31, column: 34, scope: !5206)
!5260 = !DILocation(line: 31, column: 28, scope: !5206)
!5261 = !DILocation(line: 32, column: 17, scope: !5206)
!5262 = !DILocation(line: 32, column: 24, scope: !5206)
!5263 = !DILocation(line: 32, column: 13, scope: !5206)
!5264 = !DILocation(line: 32, column: 46, scope: !5206)
!5265 = !{!1003, !719, i64 88}
!5266 = !DILocation(line: 32, column: 65, scope: !5206)
!5267 = !DILocation(line: 32, column: 59, scope: !5206)
!5268 = !DILocation(line: 32, column: 10, scope: !5206)
!5269 = !DILocation(line: 31, column: 3, scope: !5206)
!5270 = !DILocation(line: 94, column: 1, scope: !5206)
