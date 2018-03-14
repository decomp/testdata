; ModuleID = 'coreutils-8.27/src/uniq.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.linebuffer = type { i64, i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [OPTION]... [INPUT [OUTPUT]]\0A\00", align 1
@.str.2 = private unnamed_addr constant [173 x i8] c"Filter adjacent matching lines from INPUT (or standard input),\0Awriting to OUTPUT (or standard output).\0A\0AWith no options, matching lines are merged to the first occurrence.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.33 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [138 x i8] c"  -c, --count           prefix lines by the number of occurrences\0A  -d, --repeated        only print duplicate lines, one for each group\0A\00", align 1
@.str.4 = private unnamed_addr constant [245 x i8] c"  -D                    print all duplicate lines\0A      --all-repeated[=METHOD]  like -D, but allow separating groups\0A                                 with an empty line;\0A                                 METHOD={none(default),prepend,separate}\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"  -f, --skip-fields=N   avoid comparing the first N fields\0A\00", align 1
@.str.6 = private unnamed_addr constant [152 x i8] c"      --group[=METHOD]  show all items, separating groups with an empty line;\0A                          METHOD={separate(default),prepend,append,both}\0A\00", align 1
@.str.7 = private unnamed_addr constant [178 x i8] c"  -i, --ignore-case     ignore differences in case when comparing\0A  -s, --skip-chars=N    avoid comparing the first N characters\0A  -u, --unique          only print unique lines\0A\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"  -z, --zero-terminated     line delimiter is NUL, not newline\0A\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"  -w, --check-chars=N   compare no more than N characters in lines\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.12 = private unnamed_addr constant [120 x i8] c"\0AA field is a run of blanks (usually spaces and/or TABs), then non-blank\0Acharacters.  Fields are skipped before chars.\0A\00", align 1
@.str.13 = private unnamed_addr constant [204 x i8] c"\0ANote: 'uniq' does not detect repeated lines unless they are adjacent.\0AYou may want to sort the input first, or use 'sort -u' without 'uniq'.\0AAlso, comparisons honor the rules specified by 'LC_COLLATE'.\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"uniq\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.45 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@hard_LC_COLLATE = internal unnamed_addr global i8 0, align 1, !dbg !0
@skip_chars = internal unnamed_addr global i64 0, align 8, !dbg !88
@skip_fields = internal unnamed_addr global i64 0, align 8, !dbg !86
@check_chars = internal unnamed_addr global i64 0, align 8, !dbg !90
@output_first_repeated = internal unnamed_addr global i1 false, align 1
@output_unique = internal unnamed_addr global i1 false, align 1
@output_later_repeated = internal unnamed_addr global i1 false, align 1
@countmode = internal unnamed_addr global i1 false, align 4
@delimit_groups = internal unnamed_addr global i32 0, align 4, !dbg !103
@.str.20 = private unnamed_addr constant [24 x i8] c"-0123456789Dcdf:is:uw:z\00", align 1
@longopts = internal constant [13 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), i32 2, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 2, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !125
@optind = external local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.22 = private unnamed_addr constant [15 x i8] c"--all-repeated\00", align 1
@delimit_method_string = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* null], align 16, !dbg !145
@delimit_method_map = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4, !dbg !139
@.str.23 = private unnamed_addr constant [8 x i8] c"--group\00", align 1
@grouping_method_string = internal constant [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* null], align 16, !dbg !157
@grouping_method_map = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16, !dbg !153
@grouping = internal unnamed_addr global i32 0, align 4, !dbg !151
@.str.24 = private unnamed_addr constant [33 x i8] c"invalid number of fields to skip\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@ignore_case = internal unnamed_addr global i1 false, align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"invalid number of bytes to skip\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"invalid number of bytes to compare\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"--group is mutually exclusive with -c/-d/-D/-u\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"grouping and printing repeat counts is meaningless\00", align 1
@.str.32 = private unnamed_addr constant [63 x i8] c"printing all duplicated lines and repeat counts is meaningless\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.67 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"%7lu \00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"prepend\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"separate\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"repeated\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"all-repeated\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"ignore-case\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"skip-fields\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"skip-chars\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"check-chars\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), align 8, !dbg !162
@.str.34 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8, !dbg !168
@.str.37 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.38 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.39 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.40 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.41 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !181
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !186
@.str.72 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.73 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.74 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !189
@.str.81 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.85 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"_POSIX2_VERSION\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !196
@.str.99 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.100 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.101 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.103, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.104, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.105, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.106, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.107, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.108, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.109, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.110, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.111, i32 0, i32 0), i8* null], align 16, !dbg !203
@.str.102 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.103 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.104 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.105 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.106 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.107 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.108 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.109 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.110 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.111 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !215
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !222
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !235
@.str.11.112 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.113 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.114 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.115 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.116 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.117 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.118 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !242
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !249
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !237
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !251
@.str.131 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.132 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.133 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.134 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.135 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.136 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.137 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.138 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.139 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.140 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.141 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.142 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.143 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.144 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.147 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.148 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.149 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.150 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.151 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.152 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !256
@.str.1.165 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.169 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1
@.str.1.170 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1
@.str.2.171 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1
@.str.174 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.175 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@.str.190 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !265
@.str.3.191 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.192 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.193 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.194 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.195 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.196 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !681 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !685, metadata !686), !dbg !687
  %2 = icmp eq i32 %0, 0, !dbg !688
  br i1 %2, label %8, label %3, !dbg !690

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !691, !tbaa !693
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !691
  %6 = load i8*, i8** @program_name, align 8, !dbg !691, !tbaa !693
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12, !dbg !691
  br label %66, !dbg !691

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !697
  %10 = load i8*, i8** @program_name, align 8, !dbg !697, !tbaa !693
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #12, !dbg !697
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !699
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !699, !tbaa !693
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12, !dbg !699
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.33, i64 0, i64 0), i32 5) #12, !dbg !700
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !700, !tbaa !693
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12, !dbg !700
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !703
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !703, !tbaa !693
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #12, !dbg !703
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([245 x i8], [245 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !704
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !704, !tbaa !693
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #12, !dbg !704
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !705
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !705, !tbaa !693
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #12, !dbg !705
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !706
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !706, !tbaa !693
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #12, !dbg !706
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str.7, i64 0, i64 0), i32 5) #12, !dbg !707
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !707, !tbaa !693
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #12, !dbg !707
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i32 5) #12, !dbg !708
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !708, !tbaa !693
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #12, !dbg !708
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), i32 5) #12, !dbg !709
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !709, !tbaa !693
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #12, !dbg !709
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 5) #12, !dbg !710
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !693
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #12, !dbg !710
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 5) #12, !dbg !711
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !711, !tbaa !693
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #12, !dbg !711
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.12, i64 0, i64 0), i32 5) #12, !dbg !712
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !712, !tbaa !693
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #12, !dbg !712
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.13, i64 0, i64 0), i32 5) #12, !dbg !713
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !713, !tbaa !693
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #12, !dbg !713
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !113, metadata !686) #12, !dbg !714
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 0, metadata !113, metadata !686) #12, !dbg !714
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0), i32 5) #12, !dbg !716
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0)) #12, !dbg !716
  %53 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !717
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !121, metadata !686) #12, !dbg !718
  %54 = icmp eq i8* %53, null, !dbg !719
  br i1 %54, label %61, label %55, !dbg !721

; <label>:55:                                     ; preds = %8
  %56 = tail call i32 @strncmp(i8* nonnull %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i64 3) #14, !dbg !722
  %57 = icmp eq i32 %56, 0, !dbg !722
  br i1 %57, label %61, label %58, !dbg !723

; <label>:58:                                     ; preds = %55
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.45, i64 0, i64 0), i32 5) #12, !dbg !724
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !724
  br label %61, !dbg !726

; <label>:61:                                     ; preds = %8, %55, %58
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i64 0, i64 0), i32 5) #12, !dbg !727
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !727
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i64 0, i64 0), i32 5) #12, !dbg !728
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0)) #12, !dbg !728
  br label %66

; <label>:66:                                     ; preds = %61, %3
  tail call void @exit(i32 %0) #15, !dbg !729
  unreachable, !dbg !729
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !730 {
  %3 = alloca %struct.linebuffer, align 8
  %4 = alloca %struct.linebuffer, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca <2 x i8*>, align 16
  %9 = bitcast <2 x i8*>* %8 to [2 x i8*]*
  %10 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !735, metadata !686), !dbg !752
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !736, metadata !686), !dbg !753
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !737, metadata !686), !dbg !754
  %11 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #12, !dbg !755
  %12 = icmp ne i8* %11, null, !dbg !756
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !739, metadata !686), !dbg !757
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !740, metadata !686), !dbg !758
  %13 = bitcast <2 x i8*>* %8 to i8*, !dbg !759
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #12, !dbg !759
  tail call void @llvm.dbg.declare(metadata [2 x i8*]* %9, metadata !741, metadata !686), !dbg !760
  tail call void @llvm.dbg.value(metadata i8 10, i64 0, metadata !745, metadata !686), !dbg !761
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !746, metadata !686), !dbg !762
  %14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 1, !dbg !763
  %15 = getelementptr inbounds <2 x i8*>, <2 x i8*>* %8, i64 0, i64 0, !dbg !764
  store <2 x i8*> <i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)>, <2 x i8*>* %8, align 16, !dbg !765, !tbaa !693
  %16 = load i8*, i8** %1, align 8, !dbg !766, !tbaa !693
  tail call void @set_program_name(i8* %16) #12, !dbg !767
  %17 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #12, !dbg !768
  %18 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0)) #12, !dbg !769
  %19 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #12, !dbg !770
  %20 = tail call zeroext i1 @hard_locale(i32 3) #12, !dbg !771
  %21 = zext i1 %20 to i8, !dbg !772
  store i8 %21, i8* @hard_LC_COLLATE, align 1, !dbg !772, !tbaa !773
  %22 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !775
  store i64 0, i64* @skip_chars, align 8, !dbg !776, !tbaa !777
  store i64 0, i64* @skip_fields, align 8, !dbg !779, !tbaa !777
  store i64 -1, i64* @check_chars, align 8, !dbg !780, !tbaa !777
  store i1 true, i1* @output_first_repeated, align 1
  store i1 true, i1* @output_unique, align 1
  store i1 false, i1* @output_later_repeated, align 1
  store i1 true, i1* @countmode, align 4
  store i32 0, i32* @delimit_groups, align 4, !dbg !781, !tbaa !782
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i64* %7 to i8*
  %25 = bitcast i64* %6 to i8*
  %26 = bitcast i64* %5 to i8*
  br label %27, !dbg !783

; <label>:27:                                     ; preds = %39, %2
  %28 = phi i32 [ 0, %2 ], [ %40, %39 ]
  %29 = phi i32 [ 0, %2 ], [ %41, %39 ]
  %30 = phi i32 [ 0, %2 ], [ %42, %39 ]
  %31 = phi i8 [ 10, %2 ], [ %43, %39 ]
  %32 = phi i8 [ 0, %2 ], [ %44, %39 ]
  call void @llvm.dbg.value(metadata i8 %32, i64 0, metadata !746, metadata !686), !dbg !762
  call void @llvm.dbg.value(metadata i8 %31, i64 0, metadata !745, metadata !686), !dbg !761
  call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !740, metadata !686), !dbg !758
  call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !739, metadata !686), !dbg !757
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !737, metadata !686), !dbg !754
  %33 = icmp eq i32 %28, -1, !dbg !784
  %34 = icmp ne i32 %30, 0, !dbg !785
  %35 = and i1 %12, %34, !dbg !786
  %36 = or i1 %33, %35, !dbg !787
  br i1 %36, label %45, label %37, !dbg !787

; <label>:37:                                     ; preds = %27
  %38 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), %struct.option* getelementptr inbounds ([13 x %struct.option], [13 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #12, !dbg !788
  call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !737, metadata !686), !dbg !754
  switch i32 %38, label %163 [
    i32 -1, label %45
    i32 1, label %68
    i32 48, label %96
    i32 49, label %96
    i32 50, label %96
    i32 51, label %96
    i32 52, label %96
    i32 53, label %96
    i32 54, label %96
    i32 55, label %96
    i32 56, label %96
    i32 57, label %96
    i32 99, label %111
    i32 100, label %112
    i32 68, label %113
    i32 128, label %123
    i32 102, label %133
    i32 105, label %141
    i32 115, label %142
    i32 117, label %150
    i32 119, label %151
    i32 122, label %39
    i32 -130, label %159
    i32 -131, label %160
  ], !dbg !789

; <label>:39:                                     ; preds = %37, %110, %109, %94, %111, %112, %121, %131, %139, %141, %148, %150, %157, %58
  %40 = phi i32 [ %46, %58 ], [ 119, %157 ], [ 117, %150 ], [ 115, %148 ], [ 105, %141 ], [ 102, %139 ], [ 128, %131 ], [ 68, %121 ], [ 100, %112 ], [ 99, %111 ], [ 1, %94 ], [ %38, %109 ], [ %38, %110 ], [ 122, %37 ]
  %41 = phi i32 [ %29, %58 ], [ %29, %157 ], [ %29, %150 ], [ %29, %148 ], [ %29, %141 ], [ 2, %139 ], [ %29, %131 ], [ %29, %121 ], [ %29, %112 ], [ %29, %111 ], [ %29, %94 ], [ 1, %109 ], [ 1, %110 ], [ %29, %37 ]
  %42 = phi i32 [ %64, %58 ], [ %30, %157 ], [ %30, %150 ], [ %30, %148 ], [ %30, %141 ], [ %30, %139 ], [ %30, %131 ], [ %30, %121 ], [ %30, %112 ], [ %30, %111 ], [ %95, %94 ], [ %30, %109 ], [ %30, %110 ], [ %30, %37 ]
  %43 = phi i8 [ %31, %58 ], [ %31, %157 ], [ %31, %150 ], [ %31, %148 ], [ %31, %141 ], [ %31, %139 ], [ %31, %131 ], [ %31, %121 ], [ %31, %112 ], [ %31, %111 ], [ %31, %94 ], [ %31, %109 ], [ %31, %110 ], [ 0, %37 ]
  %44 = phi i8 [ %32, %58 ], [ %32, %157 ], [ 1, %150 ], [ %32, %148 ], [ %32, %141 ], [ %32, %139 ], [ %32, %131 ], [ 1, %121 ], [ 1, %112 ], [ 1, %111 ], [ %32, %94 ], [ %32, %109 ], [ %32, %110 ], [ %32, %37 ]
  br label %27, !dbg !762, !llvm.loop !790

; <label>:45:                                     ; preds = %37, %27
  %46 = phi i32 [ %28, %27 ], [ -1, %37 ]
  call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !737, metadata !686), !dbg !754
  %47 = load i32, i32* @optind, align 4, !dbg !792, !tbaa !795
  %48 = icmp slt i32 %47, %0, !dbg !797
  br i1 %48, label %49, label %164, !dbg !798

; <label>:49:                                     ; preds = %45
  %50 = icmp eq i32 %30, 2, !dbg !799
  br i1 %50, label %51, label %58, !dbg !801

; <label>:51:                                     ; preds = %49
  %52 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 5) #12, !dbg !802
  %53 = load i32, i32* @optind, align 4, !dbg !804, !tbaa !795
  %54 = sext i32 %53 to i64, !dbg !805
  %55 = getelementptr inbounds i8*, i8** %1, i64 %54, !dbg !805
  %56 = load i8*, i8** %55, align 8, !dbg !805, !tbaa !693
  %57 = call i8* @quote(i8* %56) #12, !dbg !806
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %52, i8* %57) #12, !dbg !807
  call void @usage(i32 1) #16, !dbg !808
  unreachable, !dbg !808

; <label>:58:                                     ; preds = %49
  %59 = add nsw i32 %47, 1, !dbg !809
  store i32 %59, i32* @optind, align 4, !dbg !809, !tbaa !795
  %60 = sext i32 %47 to i64, !dbg !810
  %61 = getelementptr inbounds i8*, i8** %1, i64 %60, !dbg !810
  %62 = bitcast i8** %61 to i64*, !dbg !810
  %63 = load i64, i64* %62, align 8, !dbg !810, !tbaa !693
  %64 = add i32 %30, 1, !dbg !811
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !740, metadata !686), !dbg !758
  %65 = zext i32 %30 to i64, !dbg !812
  %66 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 %65, !dbg !812
  %67 = bitcast i8** %66 to i64*, !dbg !813
  store i64 %63, i64* %67, align 8, !dbg !813, !tbaa !693
  br label %39, !dbg !814

; <label>:68:                                     ; preds = %37
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #12, !dbg !815
  %69 = load i8*, i8** @optarg, align 8, !dbg !816, !tbaa !693
  %70 = load i8, i8* %69, align 1, !dbg !816, !tbaa !782
  %71 = icmp eq i8 %70, 43, !dbg !818
  br i1 %71, label %72, label %82, !dbg !819

; <label>:72:                                     ; preds = %68
  %73 = call i32 @posix2_version() #12, !dbg !820
  call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !825, metadata !686) #12, !dbg !827
  %74 = add i32 %73, -200112, !dbg !828
  %75 = icmp ult i32 %74, 697, !dbg !828
  br i1 %75, label %82, label %76, !dbg !829

; <label>:76:                                     ; preds = %72
  %77 = load i8*, i8** @optarg, align 8, !dbg !830, !tbaa !693
  call void @llvm.dbg.value(metadata i64* %10, i64 0, metadata !747, metadata !686), !dbg !831
  %78 = call i32 @xstrtoul(i8* %77, i8** null, i32 10, i64* nonnull %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #12, !dbg !832
  %79 = icmp eq i32 %78, 0, !dbg !833
  call void @llvm.dbg.value(metadata i64 %81, i64 0, metadata !747, metadata !686), !dbg !831
  br i1 %79, label %80, label %82, !dbg !834

; <label>:80:                                     ; preds = %76
  %81 = load i64, i64* %10, align 8, !dbg !835
  store i64 %81, i64* @skip_chars, align 8, !dbg !836, !tbaa !777
  br label %94, !dbg !837

; <label>:82:                                     ; preds = %76, %72, %68
  %83 = icmp eq i32 %30, 2, !dbg !838
  br i1 %83, label %84, label %88, !dbg !840

; <label>:84:                                     ; preds = %82
  %85 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 5) #12, !dbg !841
  %86 = load i8*, i8** @optarg, align 8, !dbg !843, !tbaa !693
  %87 = call i8* @quote(i8* %86) #12, !dbg !844
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %85, i8* %87) #12, !dbg !845
  call void @usage(i32 1) #16, !dbg !846
  unreachable, !dbg !846

; <label>:88:                                     ; preds = %82
  %89 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !847, !tbaa !693
  %90 = add i32 %30, 1, !dbg !848
  call void @llvm.dbg.value(metadata i32 %90, i64 0, metadata !740, metadata !686), !dbg !758
  %91 = zext i32 %30 to i64, !dbg !849
  %92 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 %91, !dbg !849
  %93 = bitcast i8** %92 to i64*, !dbg !850
  store i64 %89, i64* %93, align 8, !dbg !850, !tbaa !693
  br label %94

; <label>:94:                                     ; preds = %88, %80
  %95 = phi i32 [ %90, %88 ], [ %30, %80 ]
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !740, metadata !686), !dbg !758
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12, !dbg !851
  br label %39, !dbg !852

; <label>:96:                                     ; preds = %37, %37, %37, %37, %37, %37, %37, %37, %37, %37
  %97 = icmp eq i32 %29, 2, !dbg !853
  br i1 %97, label %98, label %99, !dbg !856

; <label>:98:                                     ; preds = %96
  store i64 0, i64* @skip_fields, align 8, !dbg !857, !tbaa !777
  br label %102, !dbg !858

; <label>:99:                                     ; preds = %96
  %100 = load i64, i64* @skip_fields, align 8, !dbg !858, !tbaa !777
  %101 = icmp ugt i64 %100, 1844674407370955161, !dbg !858
  br i1 %101, label %110, label %102, !dbg !858

; <label>:102:                                    ; preds = %98, %99
  %103 = phi i64 [ 0, %98 ], [ %100, %99 ]
  %104 = mul i64 %103, 10, !dbg !858
  %105 = add nsw i32 %38, -48, !dbg !858
  %106 = sext i32 %105 to i64, !dbg !858
  %107 = add i64 %104, %106, !dbg !858
  %108 = icmp ult i64 %107, %103, !dbg !858
  br i1 %108, label %110, label %109, !dbg !858

; <label>:109:                                    ; preds = %102
  store i64 %107, i64* @skip_fields, align 8, !dbg !858, !tbaa !777
  br label %39

; <label>:110:                                    ; preds = %102, %99
  store i64 -1, i64* @skip_fields, align 8, !dbg !860, !tbaa !777
  br label %39, !dbg !861

; <label>:111:                                    ; preds = %37
  store i1 false, i1* @countmode, align 4
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !746, metadata !686), !dbg !762
  br label %39, !dbg !862

; <label>:112:                                    ; preds = %37
  store i1 false, i1* @output_unique, align 1
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !746, metadata !686), !dbg !762
  br label %39, !dbg !863

; <label>:113:                                    ; preds = %37
  store i1 false, i1* @output_unique, align 1
  store i1 true, i1* @output_later_repeated, align 1
  %114 = load i8*, i8** @optarg, align 8, !dbg !864, !tbaa !693
  %115 = icmp eq i8* %114, null, !dbg !866
  br i1 %115, label %121, label %116, !dbg !867

; <label>:116:                                    ; preds = %113
  %117 = load void ()*, void ()** @argmatch_die, align 8, !dbg !868, !tbaa !693
  %118 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* nonnull %114, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @delimit_method_string, i64 0, i64 0), i8* bitcast ([3 x i32]* @delimit_method_map to i8*), i64 4, void ()* %117) #12, !dbg !868
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* @delimit_method_map, i64 0, i64 %118, !dbg !868
  %120 = load i32, i32* %119, align 4, !dbg !868, !tbaa !782
  br label %121

; <label>:121:                                    ; preds = %113, %116
  %122 = phi i32 [ %120, %116 ], [ 0, %113 ]
  store i32 %122, i32* @delimit_groups, align 4, !tbaa !782
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !746, metadata !686), !dbg !762
  br label %39, !dbg !869

; <label>:123:                                    ; preds = %37
  %124 = load i8*, i8** @optarg, align 8, !dbg !870, !tbaa !693
  %125 = icmp eq i8* %124, null, !dbg !872
  br i1 %125, label %131, label %126, !dbg !873

; <label>:126:                                    ; preds = %123
  %127 = load void ()*, void ()** @argmatch_die, align 8, !dbg !874, !tbaa !693
  %128 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* nonnull %124, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @grouping_method_string, i64 0, i64 0), i8* bitcast ([4 x i32]* @grouping_method_map to i8*), i64 4, void ()* %127) #12, !dbg !874
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* @grouping_method_map, i64 0, i64 %128, !dbg !874
  %130 = load i32, i32* %129, align 4, !dbg !874, !tbaa !782
  br label %131

; <label>:131:                                    ; preds = %123, %126
  %132 = phi i32 [ %130, %126 ], [ 3, %123 ]
  store i32 %132, i32* @grouping, align 4, !tbaa !782
  br label %39, !dbg !875

; <label>:133:                                    ; preds = %37
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !739, metadata !686), !dbg !757
  %134 = load i8*, i8** @optarg, align 8, !dbg !876, !tbaa !693
  call void @llvm.dbg.value(metadata i8* %134, i64 0, metadata !877, metadata !686) #12, !dbg !884
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i64 0, metadata !882, metadata !686) #12, !dbg !886
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #12, !dbg !887
  call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !883, metadata !686) #12, !dbg !888
  %135 = call i32 @xstrtoul(i8* %134, i8** null, i32 10, i64* nonnull %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #12, !dbg !889
  %136 = icmp ult i32 %135, 2, !dbg !890
  br i1 %136, label %139, label %137, !dbg !890

; <label>:137:                                    ; preds = %133
  %138 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i32 5) #12, !dbg !891
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* %134, i8* %138) #12, !dbg !891
  unreachable, !dbg !891

; <label>:139:                                    ; preds = %133
  %140 = load i64, i64* %7, align 8, !dbg !893, !tbaa !777
  call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !883, metadata !686) #12, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #12, !dbg !894
  store i64 %140, i64* @skip_fields, align 8, !dbg !895, !tbaa !777
  br label %39, !dbg !896

; <label>:141:                                    ; preds = %37
  store i1 true, i1* @ignore_case, align 1
  br label %39, !dbg !897

; <label>:142:                                    ; preds = %37
  %143 = load i8*, i8** @optarg, align 8, !dbg !898, !tbaa !693
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !877, metadata !686) #12, !dbg !899
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i64 0, metadata !882, metadata !686) #12, !dbg !901
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #12, !dbg !902
  call void @llvm.dbg.value(metadata i64* %6, i64 0, metadata !883, metadata !686) #12, !dbg !903
  %144 = call i32 @xstrtoul(i8* %143, i8** null, i32 10, i64* nonnull %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #12, !dbg !904
  %145 = icmp ult i32 %144, 2, !dbg !905
  br i1 %145, label %148, label %146, !dbg !905

; <label>:146:                                    ; preds = %142
  %147 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !906
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* %143, i8* %147) #12, !dbg !906
  unreachable, !dbg !906

; <label>:148:                                    ; preds = %142
  %149 = load i64, i64* %6, align 8, !dbg !907, !tbaa !777
  call void @llvm.dbg.value(metadata i64 %149, i64 0, metadata !883, metadata !686) #12, !dbg !903
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #12, !dbg !908
  store i64 %149, i64* @skip_chars, align 8, !dbg !909, !tbaa !777
  br label %39, !dbg !910

; <label>:150:                                    ; preds = %37
  store i1 false, i1* @output_first_repeated, align 1
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !746, metadata !686), !dbg !762
  br label %39, !dbg !911

; <label>:151:                                    ; preds = %37
  %152 = load i8*, i8** @optarg, align 8, !dbg !912, !tbaa !693
  call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !877, metadata !686) #12, !dbg !913
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i64 0, metadata !882, metadata !686) #12, !dbg !915
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #12, !dbg !916
  call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !883, metadata !686) #12, !dbg !917
  %153 = call i32 @xstrtoul(i8* %152, i8** null, i32 10, i64* nonnull %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #12, !dbg !918
  %154 = icmp ult i32 %153, 2, !dbg !919
  br i1 %154, label %157, label %155, !dbg !919

; <label>:155:                                    ; preds = %151
  %156 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i32 5) #12, !dbg !920
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* %152, i8* %156) #12, !dbg !920
  unreachable, !dbg !920

; <label>:157:                                    ; preds = %151
  %158 = load i64, i64* %5, align 8, !dbg !921, !tbaa !777
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !883, metadata !686) #12, !dbg !917
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #12, !dbg !922
  store i64 %158, i64* @check_chars, align 8, !dbg !923, !tbaa !777
  br label %39, !dbg !924

; <label>:159:                                    ; preds = %37
  call void @usage(i32 0) #16, !dbg !925
  unreachable, !dbg !925

; <label>:160:                                    ; preds = %37
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !926, !tbaa !693
  %162 = load i8*, i8** @Version, align 8, !dbg !926, !tbaa !693
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %162, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i8* null) #12, !dbg !926
  call void @exit(i32 0) #15, !dbg !926
  unreachable, !dbg !926

; <label>:163:                                    ; preds = %37
  call void @usage(i32 1) #16, !dbg !927
  unreachable, !dbg !927

; <label>:164:                                    ; preds = %45
  %165 = load i32, i32* @grouping, align 4, !dbg !928, !tbaa !782
  %166 = icmp eq i32 %165, 0, !dbg !930
  %167 = icmp eq i8 %32, 0, !dbg !931
  %168 = or i1 %167, %166, !dbg !932
  br i1 %168, label %171, label %169, !dbg !932

; <label>:169:                                    ; preds = %164
  %170 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i64 0, i64 0), i32 5) #12, !dbg !933
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %170) #12, !dbg !935
  call void @usage(i32 1) #16, !dbg !936
  unreachable, !dbg !936

; <label>:171:                                    ; preds = %164
  %172 = icmp ne i32 %165, 0, !dbg !937
  %173 = load i1, i1* @countmode, align 4
  %174 = xor i1 %173, true, !dbg !939
  %175 = and i1 %172, %174, !dbg !940
  br i1 %175, label %176, label %178, !dbg !940

; <label>:176:                                    ; preds = %171
  %177 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 5) #12, !dbg !941
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %177) #12, !dbg !943
  call void @usage(i32 1) #16, !dbg !944
  unreachable, !dbg !944

; <label>:178:                                    ; preds = %171
  br i1 %173, label %183, label %179, !dbg !945

; <label>:179:                                    ; preds = %178
  %180 = load i1, i1* @output_later_repeated, align 1
  br i1 %180, label %181, label %183, !dbg !947

; <label>:181:                                    ; preds = %179
  %182 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.32, i64 0, i64 0), i32 5) #12, !dbg !948
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %182) #12, !dbg !950
  call void @usage(i32 1) #16, !dbg !951
  unreachable, !dbg !951

; <label>:183:                                    ; preds = %178, %179
  %184 = load i8*, i8** %15, align 16, !dbg !952, !tbaa !693
  %185 = load i8*, i8** %14, align 8, !dbg !953, !tbaa !693
  call void @llvm.dbg.value(metadata i8* %184, i64 0, metadata !954, metadata !686) #12, !dbg !1002
  call void @llvm.dbg.value(metadata i8* %185, i64 0, metadata !959, metadata !686) #12, !dbg !1004
  call void @llvm.dbg.value(metadata i8 %31, i64 0, metadata !960, metadata !686) #12, !dbg !1005
  %186 = bitcast %struct.linebuffer* %3 to i8*, !dbg !1006
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %186) #12, !dbg !1006
  %187 = bitcast %struct.linebuffer* %4 to i8*, !dbg !1006
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %187) #12, !dbg !1006
  %188 = call i32 @strcmp(i8* %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #14, !dbg !1007
  %189 = icmp eq i32 %188, 0, !dbg !1007
  br i1 %189, label %198, label %190, !dbg !1009

; <label>:190:                                    ; preds = %183
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1010, !tbaa !693
  %192 = call %struct._IO_FILE* @freopen_safer(i8* %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), %struct._IO_FILE* %191) #12, !dbg !1011
  %193 = icmp eq %struct._IO_FILE* %192, null, !dbg !1011
  br i1 %193, label %194, label %198, !dbg !1012

; <label>:194:                                    ; preds = %190
  %195 = tail call i32* @__errno_location() #17, !dbg !1013
  %196 = load i32, i32* %195, align 4, !dbg !1013, !tbaa !795
  %197 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %184) #12, !dbg !1013
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i8* %197) #12, !dbg !1013
  unreachable, !dbg !1013

; <label>:198:                                    ; preds = %190, %183
  %199 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #14, !dbg !1014
  %200 = icmp eq i32 %199, 0, !dbg !1014
  br i1 %200, label %209, label %201, !dbg !1016

; <label>:201:                                    ; preds = %198
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1017, !tbaa !693
  %203 = call %struct._IO_FILE* @freopen_safer(i8* %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), %struct._IO_FILE* %202) #12, !dbg !1018
  %204 = icmp eq %struct._IO_FILE* %203, null, !dbg !1018
  br i1 %204, label %205, label %209, !dbg !1019

; <label>:205:                                    ; preds = %201
  %206 = tail call i32* @__errno_location() #17, !dbg !1020
  %207 = load i32, i32* %206, align 4, !dbg !1020, !tbaa !795
  %208 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %185) #12, !dbg !1020
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %207, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i8* %208) #12, !dbg !1020
  unreachable, !dbg !1020

; <label>:209:                                    ; preds = %201, %198
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1021, !tbaa !693
  call void @fadvise(%struct._IO_FILE* %210, i32 2) #12, !dbg !1022
  call void @llvm.dbg.value(metadata %struct.linebuffer* %3, i64 0, metadata !969, metadata !686) #12, !dbg !1023
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, i64 0, metadata !971, metadata !686) #12, !dbg !1024
  call void @llvm.dbg.value(metadata %struct.linebuffer* %3, i64 0, metadata !961, metadata !686) #12, !dbg !1025
  call void @initbuffer(%struct.linebuffer* nonnull %3) #12, !dbg !1026
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, i64 0, metadata !968, metadata !686) #12, !dbg !1027
  call void @initbuffer(%struct.linebuffer* nonnull %4) #12, !dbg !1028
  %211 = load i1, i1* @output_unique, align 1
  br i1 %211, label %212, label %332, !dbg !1029

; <label>:212:                                    ; preds = %209
  %213 = load i1, i1* @output_first_repeated, align 1
  %214 = load i1, i1* @countmode, align 4
  %215 = and i1 %213, %214, !dbg !1030
  br i1 %215, label %216, label %332, !dbg !1030

; <label>:216:                                    ; preds = %212
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !976, metadata !686) #12, !dbg !1031
  call void @llvm.dbg.value(metadata %struct.linebuffer* %3, i64 0, metadata !969, metadata !686) #12, !dbg !1023
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, i64 0, metadata !971, metadata !686) #12, !dbg !1024
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !972, metadata !686) #12, !dbg !1032
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !975, metadata !686) #12, !dbg !1033
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !976, metadata !686) #12, !dbg !1031
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1034, !tbaa !693
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %217, i64 0, metadata !1035, metadata !686) #12, !dbg !1095
  %218 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %217, i64 0, i32 0, !dbg !1097
  %219 = load i32, i32* %218, align 8, !dbg !1097, !tbaa !1098
  %220 = and i32 %219, 16, !dbg !1097
  %221 = icmp eq i32 %220, 0, !dbg !1101
  br i1 %221, label %222, label %314, !dbg !1102

; <label>:222:                                    ; preds = %216
  %223 = zext i8 %31 to i32
  br label %224, !dbg !1102

; <label>:224:                                    ; preds = %303, %222
  %225 = phi %struct._IO_FILE* [ %217, %222 ], [ %309, %303 ]
  %226 = phi %struct.linebuffer* [ %3, %222 ], [ %308, %303 ]
  %227 = phi %struct.linebuffer* [ %4, %222 ], [ %307, %303 ]
  %228 = phi i8* [ undef, %222 ], [ %306, %303 ]
  %229 = phi i64 [ undef, %222 ], [ %305, %303 ]
  %230 = phi i8 [ 0, %222 ], [ %304, %303 ]
  call void @llvm.dbg.value(metadata i8 %230, i64 0, metadata !976, metadata !686) #12, !dbg !1031
  call void @llvm.dbg.value(metadata i64 %229, i64 0, metadata !975, metadata !686) #12, !dbg !1033
  call void @llvm.dbg.value(metadata i8* %228, i64 0, metadata !972, metadata !686) #12, !dbg !1032
  call void @llvm.dbg.value(metadata %struct.linebuffer* %227, i64 0, metadata !971, metadata !686) #12, !dbg !1024
  call void @llvm.dbg.value(metadata %struct.linebuffer* %226, i64 0, metadata !969, metadata !686) #12, !dbg !1023
  %231 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %226, %struct._IO_FILE* %225, i8 signext %31) #12, !dbg !1103
  %232 = icmp eq %struct.linebuffer* %231, null, !dbg !1105
  br i1 %232, label %314, label %233, !dbg !1106

; <label>:233:                                    ; preds = %224
  %234 = call fastcc i8* @find_field(%struct.linebuffer* %226) #14, !dbg !1107
  call void @llvm.dbg.value(metadata i8* %234, i64 0, metadata !977, metadata !686) #12, !dbg !1108
  %235 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %226, i64 0, i32 1, !dbg !1109
  %236 = load i64, i64* %235, align 8, !dbg !1109, !tbaa !1110
  %237 = add i64 %236, -1, !dbg !1112
  %238 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %226, i64 0, i32 2, !dbg !1113
  %239 = bitcast i8** %238 to i64*, !dbg !1113
  %240 = load i64, i64* %239, align 8, !dbg !1113, !tbaa !1114
  %241 = ptrtoint i8* %234 to i64, !dbg !1115
  %242 = sub i64 %240, %241, !dbg !1116
  %243 = add i64 %237, %242, !dbg !1116
  call void @llvm.dbg.value(metadata i64 %243, i64 0, metadata !979, metadata !686) #12, !dbg !1117
  %244 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %227, i64 0, i32 1, !dbg !1118
  %245 = load i64, i64* %244, align 8, !dbg !1118, !tbaa !1110
  %246 = icmp eq i64 %245, 0, !dbg !1119
  br i1 %246, label %270, label %247, !dbg !1120

; <label>:247:                                    ; preds = %233
  call void @llvm.dbg.value(metadata i8* %234, i64 0, metadata !1121, metadata !686) #12, !dbg !1129
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !1126, metadata !686) #12, !dbg !1131
  call void @llvm.dbg.value(metadata i64 %243, i64 0, metadata !1127, metadata !686) #12, !dbg !1132
  call void @llvm.dbg.value(metadata i64 %229, i64 0, metadata !1128, metadata !686) #12, !dbg !1133
  %248 = load i64, i64* @check_chars, align 8, !dbg !1134, !tbaa !777
  %249 = icmp ult i64 %248, %243, !dbg !1136
  call void @llvm.dbg.value(metadata i64 %248, i64 0, metadata !1127, metadata !686) #12, !dbg !1132
  %250 = select i1 %249, i64 %248, i64 %243, !dbg !1137
  call void @llvm.dbg.value(metadata i64 %250, i64 0, metadata !1127, metadata !686) #12, !dbg !1132
  %251 = icmp ult i64 %248, %229, !dbg !1138
  call void @llvm.dbg.value(metadata i64 %248, i64 0, metadata !1128, metadata !686) #12, !dbg !1133
  %252 = select i1 %251, i64 %248, i64 %229, !dbg !1140
  call void @llvm.dbg.value(metadata i64 %252, i64 0, metadata !1128, metadata !686) #12, !dbg !1133
  %253 = load i1, i1* @ignore_case, align 1
  br i1 %253, label %254, label %259, !dbg !1141

; <label>:254:                                    ; preds = %247
  %255 = icmp eq i64 %250, %252, !dbg !1142
  br i1 %255, label %256, label %270, !dbg !1145

; <label>:256:                                    ; preds = %254
  %257 = call i32 @memcasecmp(i8* %234, i8* %228, i64 %250) #14, !dbg !1146
  %258 = icmp ne i32 %257, 0, !dbg !1145
  br label %270, !dbg !1145

; <label>:259:                                    ; preds = %247
  %260 = load i8, i8* @hard_LC_COLLATE, align 1, !dbg !1147, !tbaa !773, !range !1149
  %261 = icmp eq i8 %260, 0, !dbg !1147
  br i1 %261, label %265, label %262, !dbg !1150

; <label>:262:                                    ; preds = %259
  %263 = call i32 @xmemcoll(i8* %234, i64 %250, i8* %228, i64 %252) #12, !dbg !1151
  %264 = icmp ne i32 %263, 0, !dbg !1152
  br label %270, !dbg !1153

; <label>:265:                                    ; preds = %259
  %266 = icmp eq i64 %250, %252, !dbg !1154
  br i1 %266, label %267, label %270, !dbg !1155

; <label>:267:                                    ; preds = %265
  %268 = call i32 @memcmp(i8* %234, i8* %228, i64 %250) #14, !dbg !1156
  %269 = icmp ne i32 %268, 0, !dbg !1155
  br label %270, !dbg !1155

; <label>:270:                                    ; preds = %267, %265, %262, %256, %254, %233
  %271 = phi i1 [ true, %233 ], [ %264, %262 ], [ true, %254 ], [ %258, %256 ], [ true, %265 ], [ %269, %267 ]
  %272 = load i32, i32* @grouping, align 4, !dbg !1157
  %273 = icmp ne i32 %272, 0, !dbg !1159
  %274 = and i1 %271, %273, !dbg !1160
  br i1 %274, label %275, label %294, !dbg !1160

; <label>:275:                                    ; preds = %270
  switch i32 %272, label %276 [
    i32 4, label %282
    i32 1, label %282
  ], !dbg !1161

; <label>:276:                                    ; preds = %275
  %277 = and i8 %230, 1, !dbg !1162
  %278 = icmp ne i8 %277, 0, !dbg !1162
  %279 = or i32 %272, 1, !dbg !1163
  %280 = icmp eq i32 %279, 3, !dbg !1163
  %281 = and i1 %278, %280, !dbg !1164
  br i1 %281, label %282, label %298, !dbg !1164

; <label>:282:                                    ; preds = %276, %275, %275
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1165, !tbaa !693
  %284 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %283, i64 0, i32 5, !dbg !1165
  %285 = load i8*, i8** %284, align 8, !dbg !1165, !tbaa !1172
  %286 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %283, i64 0, i32 6, !dbg !1165
  %287 = load i8*, i8** %286, align 8, !dbg !1165, !tbaa !1173
  %288 = icmp ult i8* %285, %287, !dbg !1165
  br i1 %288, label %292, label %289, !dbg !1165, !prof !1174

; <label>:289:                                    ; preds = %282
  %290 = call i32 @__overflow(%struct._IO_FILE* %283, i32 %223) #12, !dbg !1165
  %291 = load i32, i32* @grouping, align 4, !dbg !1175
  br label %294, !dbg !1165

; <label>:292:                                    ; preds = %282
  %293 = getelementptr inbounds i8, i8* %285, i64 1, !dbg !1165
  store i8* %293, i8** %284, align 8, !dbg !1165, !tbaa !1172
  store i8 %31, i8* %285, align 1, !dbg !1165, !tbaa !782
  br label %298, !dbg !1165

; <label>:294:                                    ; preds = %289, %270
  %295 = phi i32 [ %291, %289 ], [ %272, %270 ], !dbg !1175
  %296 = icmp ne i32 %295, 0, !dbg !1176
  %297 = or i1 %271, %296, !dbg !1177
  br i1 %297, label %298, label %303, !dbg !1177

; <label>:298:                                    ; preds = %294, %292, %276
  %299 = load i8*, i8** %238, align 8, !dbg !1178, !tbaa !1114
  %300 = load i64, i64* %235, align 8, !dbg !1178, !tbaa !1110
  %301 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1178, !tbaa !693
  %302 = call i64 @fwrite_unlocked(i8* %299, i64 1, i64 %300, %struct._IO_FILE* %301) #12, !dbg !1178
  call void @llvm.dbg.value(metadata %struct.linebuffer* %226, i64 0, metadata !971, metadata !686) #12, !dbg !1024
  call void @llvm.dbg.value(metadata %struct.linebuffer* %227, i64 0, metadata !969, metadata !686) #12, !dbg !1023
  call void @llvm.dbg.value(metadata i8* %234, i64 0, metadata !972, metadata !686) #12, !dbg !1032
  call void @llvm.dbg.value(metadata i64 %243, i64 0, metadata !975, metadata !686) #12, !dbg !1033
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !976, metadata !686) #12, !dbg !1031
  br label %303, !dbg !1179

; <label>:303:                                    ; preds = %298, %294
  %304 = phi i8 [ %230, %294 ], [ 1, %298 ]
  %305 = phi i64 [ %229, %294 ], [ %243, %298 ]
  %306 = phi i8* [ %228, %294 ], [ %234, %298 ]
  %307 = phi %struct.linebuffer* [ %227, %294 ], [ %226, %298 ]
  %308 = phi %struct.linebuffer* [ %226, %294 ], [ %227, %298 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %308, i64 0, metadata !969, metadata !686) #12, !dbg !1023
  call void @llvm.dbg.value(metadata %struct.linebuffer* %307, i64 0, metadata !971, metadata !686) #12, !dbg !1024
  call void @llvm.dbg.value(metadata i8* %306, i64 0, metadata !972, metadata !686) #12, !dbg !1032
  call void @llvm.dbg.value(metadata i64 %305, i64 0, metadata !975, metadata !686) #12, !dbg !1033
  call void @llvm.dbg.value(metadata i8 %304, i64 0, metadata !976, metadata !686) #12, !dbg !1031
  %309 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1034, !tbaa !693
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %309, i64 0, metadata !1035, metadata !686) #12, !dbg !1095
  %310 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %309, i64 0, i32 0, !dbg !1097
  %311 = load i32, i32* %310, align 8, !dbg !1097, !tbaa !1098
  %312 = and i32 %311, 16, !dbg !1097
  %313 = icmp eq i32 %312, 0, !dbg !1101
  br i1 %313, label %224, label %314, !dbg !1102, !llvm.loop !1180

; <label>:314:                                    ; preds = %303, %224, %216
  %315 = phi i8 [ 0, %216 ], [ %304, %303 ], [ %230, %224 ]
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !976, metadata !686) #12, !dbg !1031
  %316 = load i32, i32* @grouping, align 4, !dbg !1183, !tbaa !782
  switch i32 %316, label %496 [
    i32 4, label %317
    i32 2, label %317
  ], !dbg !1185

; <label>:317:                                    ; preds = %314, %314
  %318 = and i8 %315, 1, !dbg !1186
  %319 = icmp eq i8 %318, 0, !dbg !1186
  br i1 %319, label %496, label %320, !dbg !1187

; <label>:320:                                    ; preds = %317
  %321 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1188, !tbaa !693
  %322 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %321, i64 0, i32 5, !dbg !1188
  %323 = load i8*, i8** %322, align 8, !dbg !1188, !tbaa !1172
  %324 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %321, i64 0, i32 6, !dbg !1188
  %325 = load i8*, i8** %324, align 8, !dbg !1188, !tbaa !1173
  %326 = icmp ult i8* %323, %325, !dbg !1188
  br i1 %326, label %330, label %327, !dbg !1188, !prof !1174

; <label>:327:                                    ; preds = %320
  %328 = zext i8 %31 to i32, !dbg !1190
  %329 = call i32 @__overflow(%struct._IO_FILE* %321, i32 %328) #12, !dbg !1188
  br label %496, !dbg !1188

; <label>:330:                                    ; preds = %320
  %331 = getelementptr inbounds i8, i8* %323, i64 1, !dbg !1188
  store i8* %331, i8** %322, align 8, !dbg !1188, !tbaa !1172
  store i8 %31, i8* %323, align 1, !dbg !1188, !tbaa !782
  br label %496, !dbg !1188

; <label>:332:                                    ; preds = %212, %209
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !988, metadata !686) #12, !dbg !1191
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !993, metadata !686) #12, !dbg !1192
  %333 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1193, !tbaa !693
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, i64 0, metadata !968, metadata !686) #12, !dbg !1027
  %334 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* nonnull %4, %struct._IO_FILE* %333, i8 signext %31) #12, !dbg !1195
  %335 = icmp eq %struct.linebuffer* %334, null, !dbg !1196
  br i1 %335, label %496, label %336, !dbg !1197

; <label>:336:                                    ; preds = %332
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, i64 0, metadata !968, metadata !686) #12, !dbg !1027
  %337 = call fastcc i8* @find_field(%struct.linebuffer* nonnull %4) #14, !dbg !1198
  call void @llvm.dbg.value(metadata i8* %337, i64 0, metadata !985, metadata !686) #12, !dbg !1199
  call void @llvm.dbg.value(metadata %struct.linebuffer* %3, i64 0, metadata !969, metadata !686) #12, !dbg !1023
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, i64 0, metadata !971, metadata !686) #12, !dbg !1024
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !993, metadata !686) #12, !dbg !1192
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !988, metadata !686) #12, !dbg !1191
  call void @llvm.dbg.value(metadata i8* %337, i64 0, metadata !985, metadata !686) #12, !dbg !1199
  %338 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1200, !tbaa !693
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %338, i64 0, metadata !1035, metadata !686) #12, !dbg !1201
  %339 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %338, i64 0, i32 0, !dbg !1203
  %340 = load i32, i32* %339, align 8, !dbg !1203, !tbaa !1098
  %341 = and i32 %340, 16, !dbg !1203
  %342 = icmp eq i32 %341, 0, !dbg !1204
  br i1 %342, label %343, label %477, !dbg !1205

; <label>:343:                                    ; preds = %336
  %344 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %4, i64 0, i32 1, !dbg !1206
  %345 = load i64, i64* %344, align 8, !dbg !1206, !tbaa !1110
  %346 = ptrtoint i8* %337 to i64, !dbg !1207
  %347 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %4, i64 0, i32 2, !dbg !1208
  %348 = bitcast i8** %347 to i64*, !dbg !1208
  %349 = load i64, i64* %348, align 8, !dbg !1208, !tbaa !1114
  %350 = xor i64 %346, -1, !dbg !1209
  %351 = add i64 %345, %350, !dbg !1210
  %352 = add i64 %351, %349, !dbg !1209
  %353 = zext i8 %31 to i32
  br label %354, !dbg !1205

; <label>:354:                                    ; preds = %461, %343
  %355 = phi %struct._IO_FILE* [ %338, %343 ], [ %468, %461 ]
  %356 = phi %struct.linebuffer* [ %3, %343 ], [ %462, %461 ]
  %357 = phi %struct.linebuffer* [ %4, %343 ], [ %463, %461 ]
  %358 = phi i8 [ 1, %343 ], [ %464, %461 ]
  %359 = phi i64 [ 0, %343 ], [ %465, %461 ]
  %360 = phi i64 [ %352, %343 ], [ %466, %461 ]
  %361 = phi i8* [ %337, %343 ], [ %467, %461 ]
  call void @llvm.dbg.value(metadata i8* %361, i64 0, metadata !985, metadata !686) #12, !dbg !1199
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !987, metadata !686) #12, !dbg !1211
  call void @llvm.dbg.value(metadata i64 %359, i64 0, metadata !988, metadata !686) #12, !dbg !1191
  call void @llvm.dbg.value(metadata i8 %358, i64 0, metadata !993, metadata !686) #12, !dbg !1192
  call void @llvm.dbg.value(metadata %struct.linebuffer* %357, i64 0, metadata !971, metadata !686) #12, !dbg !1024
  call void @llvm.dbg.value(metadata %struct.linebuffer* %356, i64 0, metadata !969, metadata !686) #12, !dbg !1023
  %362 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %356, %struct._IO_FILE* %355, i8 signext %31) #12, !dbg !1212
  %363 = icmp eq %struct.linebuffer* %362, null, !dbg !1214
  br i1 %363, label %455, label %364, !dbg !1215

; <label>:364:                                    ; preds = %354
  %365 = call fastcc i8* @find_field(%struct.linebuffer* %356) #14, !dbg !1216
  call void @llvm.dbg.value(metadata i8* %365, i64 0, metadata !996, metadata !686) #12, !dbg !1217
  %366 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %356, i64 0, i32 1, !dbg !1218
  %367 = load i64, i64* %366, align 8, !dbg !1218, !tbaa !1110
  %368 = add i64 %367, -1, !dbg !1219
  %369 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %356, i64 0, i32 2, !dbg !1220
  %370 = bitcast i8** %369 to i64*, !dbg !1220
  %371 = load i64, i64* %370, align 8, !dbg !1220, !tbaa !1114
  %372 = ptrtoint i8* %365 to i64, !dbg !1221
  %373 = sub i64 %371, %372, !dbg !1222
  %374 = add i64 %368, %373, !dbg !1222
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !997, metadata !686) #12, !dbg !1223
  call void @llvm.dbg.value(metadata i8* %365, i64 0, metadata !1121, metadata !686) #12, !dbg !1224
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !1126, metadata !686) #12, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1127, metadata !686) #12, !dbg !1227
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1128, metadata !686) #12, !dbg !1228
  %375 = load i64, i64* @check_chars, align 8, !dbg !1229, !tbaa !777
  %376 = icmp ult i64 %375, %374, !dbg !1230
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1127, metadata !686) #12, !dbg !1227
  %377 = select i1 %376, i64 %375, i64 %374, !dbg !1231
  call void @llvm.dbg.value(metadata i64 %377, i64 0, metadata !1127, metadata !686) #12, !dbg !1227
  %378 = icmp ult i64 %375, %360, !dbg !1232
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1128, metadata !686) #12, !dbg !1228
  %379 = select i1 %378, i64 %375, i64 %360, !dbg !1233
  call void @llvm.dbg.value(metadata i64 %379, i64 0, metadata !1128, metadata !686) #12, !dbg !1228
  %380 = load i1, i1* @ignore_case, align 1
  br i1 %380, label %381, label %386, !dbg !1234

; <label>:381:                                    ; preds = %364
  %382 = icmp eq i64 %377, %379, !dbg !1235
  br i1 %382, label %383, label %397, !dbg !1236

; <label>:383:                                    ; preds = %381
  %384 = call i32 @memcasecmp(i8* %365, i8* %361, i64 %377) #14, !dbg !1237
  %385 = icmp ne i32 %384, 0, !dbg !1236
  br label %397, !dbg !1236

; <label>:386:                                    ; preds = %364
  %387 = load i8, i8* @hard_LC_COLLATE, align 1, !dbg !1238, !tbaa !773, !range !1149
  %388 = icmp eq i8 %387, 0, !dbg !1238
  br i1 %388, label %392, label %389, !dbg !1239

; <label>:389:                                    ; preds = %386
  %390 = call i32 @xmemcoll(i8* %365, i64 %377, i8* %361, i64 %379) #12, !dbg !1240
  %391 = icmp ne i32 %390, 0, !dbg !1241
  br label %397, !dbg !1242

; <label>:392:                                    ; preds = %386
  %393 = icmp eq i64 %377, %379, !dbg !1243
  br i1 %393, label %394, label %397, !dbg !1244

; <label>:394:                                    ; preds = %392
  %395 = call i32 @memcmp(i8* %365, i8* %361, i64 %377) #14, !dbg !1245
  %396 = icmp ne i32 %395, 0, !dbg !1244
  br label %397, !dbg !1244

; <label>:397:                                    ; preds = %394, %392, %389, %383, %381
  %398 = phi i1 [ %391, %389 ], [ true, %381 ], [ %385, %383 ], [ true, %392 ], [ %396, %394 ]
  %399 = xor i1 %398, true, !dbg !1246
  %400 = zext i1 %399 to i64, !dbg !1247
  %401 = add i64 %359, %400, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !988, metadata !686) #12, !dbg !1191
  %402 = icmp eq i64 %401, -1, !dbg !1249
  %403 = sext i1 %402 to i64, !dbg !1251
  %404 = add i64 %401, %403, !dbg !1251
  call void @llvm.dbg.value(metadata i64 %404, i64 0, metadata !988, metadata !686) #12, !dbg !1191
  %405 = load i32, i32* @delimit_groups, align 4, !dbg !1252, !tbaa !782
  %406 = icmp eq i32 %405, 0, !dbg !1254
  br i1 %406, label %428, label %407, !dbg !1255

; <label>:407:                                    ; preds = %397
  br i1 %398, label %408, label %411, !dbg !1256

; <label>:408:                                    ; preds = %407
  %409 = icmp eq i64 %404, 0, !dbg !1258
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !993, metadata !686) #12, !dbg !1192
  %410 = select i1 %409, i8 %358, i8 0, !dbg !1262
  call void @llvm.dbg.value(metadata i8 %358, i64 0, metadata !993, metadata !686) #12, !dbg !1192
  br label %431, !dbg !1263

; <label>:411:                                    ; preds = %407
  %412 = icmp eq i64 %404, 1, !dbg !1264
  br i1 %412, label %413, label %429, !dbg !1266

; <label>:413:                                    ; preds = %411
  switch i32 %405, label %429 [
    i32 1, label %417
    i32 2, label %414
  ], !dbg !1267

; <label>:414:                                    ; preds = %413
  %415 = and i8 %358, 1, !dbg !1270
  %416 = icmp eq i8 %415, 0, !dbg !1270
  br i1 %416, label %417, label %429, !dbg !1271

; <label>:417:                                    ; preds = %414, %413
  %418 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1272, !tbaa !693
  %419 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %418, i64 0, i32 5, !dbg !1272
  %420 = load i8*, i8** %419, align 8, !dbg !1272, !tbaa !1172
  %421 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %418, i64 0, i32 6, !dbg !1272
  %422 = load i8*, i8** %421, align 8, !dbg !1272, !tbaa !1173
  %423 = icmp ult i8* %420, %422, !dbg !1272
  br i1 %423, label %426, label %424, !dbg !1272, !prof !1174

; <label>:424:                                    ; preds = %417
  %425 = call i32 @__overflow(%struct._IO_FILE* %418, i32 %353) #12, !dbg !1272
  br label %429, !dbg !1272

; <label>:426:                                    ; preds = %417
  %427 = getelementptr inbounds i8, i8* %420, i64 1, !dbg !1272
  store i8* %427, i8** %419, align 8, !dbg !1272, !tbaa !1172
  store i8 %31, i8* %420, align 1, !dbg !1272, !tbaa !782
  br label %429, !dbg !1272

; <label>:428:                                    ; preds = %397
  call void @llvm.dbg.value(metadata i8 %358, i64 0, metadata !993, metadata !686) #12, !dbg !1192
  br i1 %398, label %431, label %429, !dbg !1263

; <label>:429:                                    ; preds = %428, %426, %424, %414, %413, %411
  %430 = load i1, i1* @output_later_repeated, align 1
  br i1 %430, label %431, label %461, !dbg !1274

; <label>:431:                                    ; preds = %429, %428, %408
  %432 = phi i8 [ %358, %428 ], [ %358, %429 ], [ %410, %408 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %357, i64 0, metadata !1275, metadata !686) #12, !dbg !1284
  call void @llvm.dbg.value(metadata i1 %399, i64 0, metadata !1282, metadata !686) #12, !dbg !1286
  call void @llvm.dbg.value(metadata i64 %404, i64 0, metadata !1283, metadata !686) #12, !dbg !1287
  %433 = icmp eq i64 %404, 0, !dbg !1288
  br i1 %433, label %434, label %436, !dbg !1290

; <label>:434:                                    ; preds = %431
  %435 = load i1, i1* @output_unique, align 1
  br i1 %435, label %441, label %453, !dbg !1291

; <label>:436:                                    ; preds = %431
  br i1 %398, label %437, label %439, !dbg !1290

; <label>:437:                                    ; preds = %436
  %438 = load i1, i1* @output_first_repeated, align 1
  br i1 %438, label %441, label %453, !dbg !1292

; <label>:439:                                    ; preds = %436
  %440 = load i1, i1* @output_later_repeated, align 1
  br i1 %440, label %441, label %453, !dbg !1290

; <label>:441:                                    ; preds = %439, %437, %434
  %442 = load i1, i1* @countmode, align 4
  br i1 %442, label %446, label %443, !dbg !1293

; <label>:443:                                    ; preds = %441
  %444 = add i64 %404, 1, !dbg !1294
  %445 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0), i64 %444) #12, !dbg !1294
  br label %446, !dbg !1294

; <label>:446:                                    ; preds = %443, %441
  %447 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %357, i64 0, i32 2, !dbg !1296
  %448 = load i8*, i8** %447, align 8, !dbg !1296, !tbaa !1114
  %449 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %357, i64 0, i32 1, !dbg !1296
  %450 = load i64, i64* %449, align 8, !dbg !1296, !tbaa !1110
  %451 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1296, !tbaa !693
  %452 = call i64 @fwrite_unlocked(i8* %448, i64 1, i64 %450, %struct._IO_FILE* %451) #12, !dbg !1296
  br label %453, !dbg !1297

; <label>:453:                                    ; preds = %446, %439, %437, %434
  call void @llvm.dbg.value(metadata %struct.linebuffer* %356, i64 0, metadata !971, metadata !686) #12, !dbg !1024
  call void @llvm.dbg.value(metadata %struct.linebuffer* %357, i64 0, metadata !969, metadata !686) #12, !dbg !1023
  call void @llvm.dbg.value(metadata i8* %365, i64 0, metadata !985, metadata !686) #12, !dbg !1199
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !987, metadata !686) #12, !dbg !1211
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !988, metadata !686) #12, !dbg !1191
  %454 = select i1 %398, i64 0, i64 %404, !dbg !1298
  br label %461, !dbg !1298

; <label>:455:                                    ; preds = %354
  %456 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1299, !tbaa !693
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %456, i64 0, metadata !1302, metadata !686) #12, !dbg !1305
  %457 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %456, i64 0, i32 0, !dbg !1307
  %458 = load i32, i32* %457, align 8, !dbg !1307, !tbaa !1098
  %459 = and i32 %458, 32, !dbg !1307
  %460 = icmp eq i32 %459, 0, !dbg !1299
  call void @llvm.dbg.value(metadata %struct.linebuffer* undef, i64 0, metadata !969, metadata !686) #12, !dbg !1023
  call void @llvm.dbg.value(metadata %struct.linebuffer* undef, i64 0, metadata !971, metadata !686) #12, !dbg !1024
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !993, metadata !686) #12, !dbg !1192
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !988, metadata !686) #12, !dbg !1191
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !987, metadata !686) #12, !dbg !1211
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !985, metadata !686) #12, !dbg !1199
  br i1 %460, label %473, label %496

; <label>:461:                                    ; preds = %453, %429
  %462 = phi %struct.linebuffer* [ %357, %453 ], [ %356, %429 ]
  %463 = phi %struct.linebuffer* [ %356, %453 ], [ %357, %429 ]
  %464 = phi i8 [ %432, %453 ], [ %358, %429 ]
  %465 = phi i64 [ %454, %453 ], [ %404, %429 ]
  %466 = phi i64 [ %374, %453 ], [ %360, %429 ]
  %467 = phi i8* [ %365, %453 ], [ %361, %429 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %462, i64 0, metadata !969, metadata !686) #12, !dbg !1023
  call void @llvm.dbg.value(metadata %struct.linebuffer* %463, i64 0, metadata !971, metadata !686) #12, !dbg !1024
  call void @llvm.dbg.value(metadata i8 %464, i64 0, metadata !993, metadata !686) #12, !dbg !1192
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !988, metadata !686) #12, !dbg !1191
  call void @llvm.dbg.value(metadata i64 %466, i64 0, metadata !987, metadata !686) #12, !dbg !1211
  call void @llvm.dbg.value(metadata i8* %467, i64 0, metadata !985, metadata !686) #12, !dbg !1199
  %468 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1200, !tbaa !693
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %468, i64 0, metadata !1035, metadata !686) #12, !dbg !1201
  %469 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %468, i64 0, i32 0, !dbg !1203
  %470 = load i32, i32* %469, align 8, !dbg !1203, !tbaa !1098
  %471 = and i32 %470, 16, !dbg !1203
  %472 = icmp eq i32 %471, 0, !dbg !1204
  br i1 %472, label %354, label %473, !dbg !1205, !llvm.loop !1308

; <label>:473:                                    ; preds = %461, %455
  %474 = phi i64 [ %359, %455 ], [ %465, %461 ]
  %475 = phi %struct.linebuffer* [ %357, %455 ], [ %463, %461 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* undef, i64 0, metadata !971, metadata !686) #12, !dbg !1024
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !988, metadata !686) #12, !dbg !1191
  call void @llvm.dbg.value(metadata %struct.linebuffer* undef, i64 0, metadata !1275, metadata !686) #12, !dbg !1311
  call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !1282, metadata !686) #12, !dbg !1313
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1283, metadata !686) #12, !dbg !1314
  %476 = icmp eq i64 %474, 0, !dbg !1315
  br i1 %476, label %477, label %480, !dbg !1316

; <label>:477:                                    ; preds = %473, %336
  %478 = phi %struct.linebuffer* [ %475, %473 ], [ %4, %336 ]
  %479 = load i1, i1* @output_unique, align 1
  br i1 %479, label %482, label %496, !dbg !1317

; <label>:480:                                    ; preds = %473
  %481 = load i1, i1* @output_first_repeated, align 1
  br i1 %481, label %482, label %496, !dbg !1318

; <label>:482:                                    ; preds = %480, %477
  %483 = phi %struct.linebuffer* [ %475, %480 ], [ %478, %477 ]
  %484 = phi i64 [ %474, %480 ], [ 0, %477 ]
  %485 = load i1, i1* @countmode, align 4
  br i1 %485, label %489, label %486, !dbg !1319

; <label>:486:                                    ; preds = %482
  %487 = add i64 %484, 1, !dbg !1320
  %488 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0), i64 %487) #12, !dbg !1320
  br label %489, !dbg !1320

; <label>:489:                                    ; preds = %486, %482
  %490 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %483, i64 0, i32 2, !dbg !1321
  %491 = load i8*, i8** %490, align 8, !dbg !1321, !tbaa !1114
  %492 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %483, i64 0, i32 1, !dbg !1321
  %493 = load i64, i64* %492, align 8, !dbg !1321, !tbaa !1110
  %494 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1321, !tbaa !693
  %495 = call i64 @fwrite_unlocked(i8* %491, i64 1, i64 %493, %struct._IO_FILE* %494) #12, !dbg !1321
  br label %496, !dbg !1322

; <label>:496:                                    ; preds = %489, %480, %477, %455, %332, %330, %327, %317, %314
  %497 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1323, !tbaa !693
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %497, i64 0, metadata !1302, metadata !686) #12, !dbg !1325
  %498 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %497, i64 0, i32 0, !dbg !1327
  %499 = load i32, i32* %498, align 8, !dbg !1327, !tbaa !1098
  %500 = and i32 %499, 32, !dbg !1327
  %501 = icmp eq i32 %500, 0, !dbg !1323
  br i1 %501, label %502, label %505, !dbg !1328

; <label>:502:                                    ; preds = %496
  %503 = call i32 @rpl_fclose(%struct._IO_FILE* %497) #12, !dbg !1329
  %504 = icmp eq i32 %503, 0, !dbg !1330
  br i1 %504, label %508, label %505, !dbg !1331

; <label>:505:                                    ; preds = %502, %496
  %506 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i64 0, i64 0), i32 5) #12, !dbg !1332
  %507 = call i8* @quotearg_style(i32 4, i8* %184) #12, !dbg !1332
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %506, i8* %507) #12, !dbg !1332
  unreachable, !dbg !1332

; <label>:508:                                    ; preds = %502
  %509 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %3, i64 0, i32 2, !dbg !1333
  %510 = load i8*, i8** %509, align 8, !dbg !1333, !tbaa !1114
  call void @free(i8* %510) #12, !dbg !1334
  %511 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %4, i64 0, i32 2, !dbg !1335
  %512 = load i8*, i8** %511, align 8, !dbg !1335, !tbaa !1114
  call void @free(i8* %512) #12, !dbg !1336
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %187) #12, !dbg !1337
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %186) #12, !dbg !1337
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #12, !dbg !1338
  ret i32 0, !dbg !1338
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

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
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind readonly sspstrong uwtable
define internal fastcc i8* @find_field(%struct.linebuffer* nocapture readonly) unnamed_addr #9 !dbg !1339 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1343, metadata !686), !dbg !1348
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1349
  %3 = load i8*, i8** %2, align 8, !dbg !1349, !tbaa !1114
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1345, metadata !686), !dbg !1350
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1351
  %5 = load i64, i64* %4, align 8, !dbg !1351, !tbaa !1110
  %6 = add i64 %5, -1, !dbg !1352
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1346, metadata !686), !dbg !1353
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1347, metadata !686), !dbg !1354
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1344, metadata !686), !dbg !1355
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1347, metadata !686), !dbg !1354
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1344, metadata !686), !dbg !1355
  %7 = load i64, i64* @skip_fields, align 8, !dbg !1356, !tbaa !777
  %8 = icmp ne i64 %7, 0, !dbg !1359
  %9 = icmp ne i64 %6, 0, !dbg !1360
  %10 = and i1 %9, %8, !dbg !1361
  br i1 %10, label %11, label %59, !dbg !1361

; <label>:11:                                     ; preds = %1
  br label %12, !dbg !1362

; <label>:12:                                     ; preds = %11, %53
  %13 = phi i64 [ %54, %53 ], [ 0, %11 ]
  %14 = phi i64 [ %55, %53 ], [ 0, %11 ]
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1347, metadata !686), !dbg !1354
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1344, metadata !686), !dbg !1355
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1347, metadata !686), !dbg !1354
  %15 = icmp ult i64 %13, %6, !dbg !1362
  br i1 %15, label %16, label %33, !dbg !1364

; <label>:16:                                     ; preds = %12
  %17 = tail call i16** @__ctype_b_loc() #17, !dbg !1365
  %18 = load i16*, i16** %17, align 8, !tbaa !693
  br label %19, !dbg !1364

; <label>:19:                                     ; preds = %16, %30
  %20 = phi i64 [ %13, %16 ], [ %31, %30 ]
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1347, metadata !686), !dbg !1354
  %21 = getelementptr inbounds i8, i8* %3, i64 %20, !dbg !1372
  %22 = load i8, i8* %21, align 1, !dbg !1372, !tbaa !782
  tail call void @llvm.dbg.value(metadata i8 %22, i64 0, metadata !1370, metadata !686) #12, !dbg !1373
  %23 = zext i8 %22 to i64, !dbg !1365
  %24 = getelementptr inbounds i16, i16* %18, i64 %23, !dbg !1365
  %25 = load i16, i16* %24, align 2, !dbg !1365, !tbaa !1374
  %26 = and i16 %25, 1, !dbg !1365
  %27 = icmp ne i16 %26, 0, !dbg !1365
  %28 = icmp eq i8 %22, 10, !dbg !1375
  %29 = or i1 %28, %27, !dbg !1376
  br i1 %29, label %30, label %33, !dbg !1377

; <label>:30:                                     ; preds = %19
  %31 = add nuw i64 %20, 1, !dbg !1378
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1347, metadata !686), !dbg !1354
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1347, metadata !686), !dbg !1354
  %32 = icmp ult i64 %31, %6, !dbg !1362
  br i1 %32, label %19, label %33, !dbg !1364, !llvm.loop !1379

; <label>:33:                                     ; preds = %19, %30, %12
  %34 = phi i64 [ %13, %12 ], [ %31, %30 ], [ %20, %19 ]
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !1347, metadata !686), !dbg !1354
  %35 = icmp ult i64 %34, %6, !dbg !1380
  br i1 %35, label %36, label %53, !dbg !1381

; <label>:36:                                     ; preds = %33
  %37 = tail call i16** @__ctype_b_loc() #17, !dbg !1382
  %38 = load i16*, i16** %37, align 8, !tbaa !693
  br label %39, !dbg !1381

; <label>:39:                                     ; preds = %36, %50
  %40 = phi i64 [ %34, %36 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1347, metadata !686), !dbg !1354
  %41 = getelementptr inbounds i8, i8* %3, i64 %40, !dbg !1384
  %42 = load i8, i8* %41, align 1, !dbg !1384, !tbaa !782
  tail call void @llvm.dbg.value(metadata i8 %42, i64 0, metadata !1370, metadata !686) #12, !dbg !1385
  %43 = zext i8 %42 to i64, !dbg !1382
  %44 = getelementptr inbounds i16, i16* %38, i64 %43, !dbg !1382
  %45 = load i16, i16* %44, align 2, !dbg !1382, !tbaa !1374
  %46 = and i16 %45, 1, !dbg !1382
  %47 = icmp ne i16 %46, 0, !dbg !1382
  %48 = icmp eq i8 %42, 10, !dbg !1386
  %49 = or i1 %48, %47, !dbg !1387
  br i1 %49, label %53, label %50, !dbg !1388

; <label>:50:                                     ; preds = %39
  %51 = add nuw i64 %40, 1, !dbg !1389
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1347, metadata !686), !dbg !1354
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1347, metadata !686), !dbg !1354
  %52 = icmp ult i64 %51, %6, !dbg !1380
  br i1 %52, label %39, label %53, !dbg !1381, !llvm.loop !1390

; <label>:53:                                     ; preds = %50, %39, %33
  %54 = phi i64 [ %34, %33 ], [ %40, %39 ], [ %51, %50 ]
  %55 = add nuw i64 %14, 1, !dbg !1391
  tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !1344, metadata !686), !dbg !1355
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1347, metadata !686), !dbg !1354
  tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !1344, metadata !686), !dbg !1355
  %56 = icmp ult i64 %55, %7, !dbg !1359
  %57 = icmp ugt i64 %6, %54, !dbg !1360
  %58 = and i1 %57, %56, !dbg !1361
  br i1 %58, label %12, label %59, !dbg !1361, !llvm.loop !1392

; <label>:59:                                     ; preds = %53, %1
  %60 = phi i64 [ 0, %1 ], [ %54, %53 ]
  %61 = load i64, i64* @skip_chars, align 8, !dbg !1395, !tbaa !777
  %62 = sub i64 %6, %60, !dbg !1395
  %63 = icmp ult i64 %61, %62, !dbg !1395
  %64 = select i1 %63, i64 %61, i64 %62, !dbg !1395
  %65 = add i64 %64, %60, !dbg !1396
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !1347, metadata !686), !dbg !1354
  %66 = getelementptr inbounds i8, i8* %3, i64 %65, !dbg !1397
  ret i8* %66, !dbg !1398
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #6 !dbg !1399 {
  tail call void @usage(i32 1) #12, !dbg !1400
  ret void, !dbg !1401
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #9 !dbg !1402 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1408, metadata !686), !dbg !1416
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1409, metadata !686), !dbg !1417
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1410, metadata !686), !dbg !1418
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1411, metadata !686), !dbg !1419
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1414, metadata !686), !dbg !1420
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1415, metadata !686), !dbg !1421
  %5 = tail call i64 @strlen(i8* %0) #14, !dbg !1422
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1413, metadata !686), !dbg !1423
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1412, metadata !686), !dbg !1424
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1415, metadata !686), !dbg !1421
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1414, metadata !686), !dbg !1420
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1412, metadata !686), !dbg !1424
  %6 = load i8*, i8** %1, align 8, !dbg !1425, !tbaa !693
  %7 = icmp eq i8* %6, null, !dbg !1428
  br i1 %7, label %38, label %8, !dbg !1428

; <label>:8:                                      ; preds = %4
  %9 = icmp eq i8* %2, null
  br label %10, !dbg !1428

; <label>:10:                                     ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %13 = phi i64 [ -1, %8 ], [ %32, %31 ]
  %14 = phi i64 [ 0, %8 ], [ %34, %31 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1412, metadata !686), !dbg !1424
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1414, metadata !686), !dbg !1420
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !1415, metadata !686), !dbg !1421
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #14, !dbg !1429
  %16 = icmp eq i32 %15, 0, !dbg !1429
  br i1 %16, label %17, label %31, !dbg !1432

; <label>:17:                                     ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #14, !dbg !1433
  %19 = icmp eq i64 %18, %5, !dbg !1436
  br i1 %19, label %44, label %20, !dbg !1437

; <label>:20:                                     ; preds = %17
  %21 = icmp eq i64 %13, -1, !dbg !1438
  br i1 %21, label %31, label %22, !dbg !1440

; <label>:22:                                     ; preds = %20
  br i1 %9, label %30, label %23, !dbg !1441

; <label>:23:                                     ; preds = %22
  %24 = mul i64 %13, %3, !dbg !1444
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !1445
  %26 = mul i64 %14, %3, !dbg !1446
  %27 = getelementptr inbounds i8, i8* %2, i64 %26, !dbg !1447
  %28 = tail call i32 @memcmp(i8* %25, i8* %27, i64 %3) #14, !dbg !1448
  %29 = icmp eq i32 %28, 0, !dbg !1448
  br i1 %29, label %31, label %30, !dbg !1449

; <label>:30:                                     ; preds = %23, %22
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1415, metadata !686), !dbg !1421
  br label %31, !dbg !1450

; <label>:31:                                     ; preds = %20, %23, %10, %30
  %32 = phi i64 [ %13, %10 ], [ %13, %30 ], [ %13, %23 ], [ %14, %20 ]
  %33 = phi i8 [ %12, %10 ], [ 1, %30 ], [ %12, %23 ], [ %12, %20 ]
  tail call void @llvm.dbg.value(metadata i8 %33, i64 0, metadata !1415, metadata !686), !dbg !1421
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !1414, metadata !686), !dbg !1420
  %34 = add i64 %14, 1, !dbg !1452
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !1412, metadata !686), !dbg !1424
  tail call void @llvm.dbg.value(metadata i8 %33, i64 0, metadata !1415, metadata !686), !dbg !1421
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !1414, metadata !686), !dbg !1420
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !1412, metadata !686), !dbg !1424
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !1425
  %36 = load i8*, i8** %35, align 8, !dbg !1425, !tbaa !693
  %37 = icmp eq i8* %36, null, !dbg !1428
  br i1 %37, label %38, label %10, !dbg !1428, !llvm.loop !1453

; <label>:38:                                     ; preds = %31, %4
  %39 = phi i64 [ -1, %4 ], [ %32, %31 ]
  %40 = phi i8 [ 0, %4 ], [ %33, %31 ]
  %41 = and i8 %40, 1, !dbg !1455
  %42 = icmp eq i8 %41, 0, !dbg !1455
  %43 = select i1 %42, i64 %39, i64 -2, !dbg !1457
  br label %44, !dbg !1457

; <label>:44:                                     ; preds = %17, %38
  %45 = phi i64 [ %43, %38 ], [ %14, %17 ]
  ret i64 %45, !dbg !1458
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_invalid(i8*, i8*, i64) local_unnamed_addr #6 !dbg !1459 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1463, metadata !686), !dbg !1467
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1464, metadata !686), !dbg !1468
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1465, metadata !686), !dbg !1469
  %4 = icmp eq i64 %2, -1, !dbg !1470
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.38, i64 0, i64 0), !dbg !1471
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #12, !dbg !1472
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1466, metadata !686), !dbg !1473
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #12, !dbg !1474
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #12, !dbg !1475
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #12, !dbg !1476
  ret void, !dbg !1477
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !1478 {
  tail call void @llvm.dbg.value(metadata i8** %0, i64 0, metadata !1482, metadata !686), !dbg !1487
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1483, metadata !686), !dbg !1488
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1484, metadata !686), !dbg !1489
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1486, metadata !686), !dbg !1490
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.39, i64 0, i64 0), i32 5) #12, !dbg !1491
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1491, !tbaa !693
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5) #12, !dbg !1491
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1485, metadata !686), !dbg !1492
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1486, metadata !686), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1485, metadata !686), !dbg !1492
  %7 = load i8*, i8** %0, align 8, !dbg !1493, !tbaa !693
  %8 = icmp eq i8* %7, null, !dbg !1496
  br i1 %8, label %34, label %9, !dbg !1496

; <label>:9:                                      ; preds = %3
  br label %10, !dbg !1497

; <label>:10:                                     ; preds = %9, %28
  %11 = phi i8* [ %32, %28 ], [ %7, %9 ]
  %12 = phi i8* [ %29, %28 ], [ null, %9 ]
  %13 = phi i64 [ %30, %28 ], [ 0, %9 ]
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1485, metadata !686), !dbg !1492
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1486, metadata !686), !dbg !1490
  %14 = icmp eq i64 %13, 0, !dbg !1497
  %15 = mul i64 %13, %2
  %16 = getelementptr inbounds i8, i8* %1, i64 %15
  br i1 %14, label %20, label %17, !dbg !1499

; <label>:17:                                     ; preds = %10
  %18 = tail call i32 @memcmp(i8* %12, i8* %16, i64 %2) #14, !dbg !1500
  %19 = icmp eq i32 %18, 0, !dbg !1500
  br i1 %19, label %24, label %20, !dbg !1501

; <label>:20:                                     ; preds = %10, %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1502, !tbaa !693
  %22 = tail call i8* @quote(i8* nonnull %11) #12, !dbg !1502
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.40, i64 0, i64 0), i8* %22) #12, !dbg !1502
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !1486, metadata !686), !dbg !1490
  br label %28, !dbg !1504

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1505, !tbaa !693
  %26 = tail call i8* @quote(i8* nonnull %11) #12, !dbg !1505
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.41, i64 0, i64 0), i8* %26) #12, !dbg !1505
  br label %28

; <label>:28:                                     ; preds = %20, %24
  %29 = phi i8* [ %16, %20 ], [ %12, %24 ]
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1486, metadata !686), !dbg !1490
  %30 = add i64 %13, 1, !dbg !1507
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !1485, metadata !686), !dbg !1492
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1486, metadata !686), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !1485, metadata !686), !dbg !1492
  %31 = getelementptr inbounds i8*, i8** %0, i64 %30, !dbg !1493
  %32 = load i8*, i8** %31, align 8, !dbg !1493, !tbaa !693
  %33 = icmp eq i8* %32, null, !dbg !1496
  br i1 %33, label %34, label %10, !dbg !1496, !llvm.loop !1508

; <label>:34:                                     ; preds = %28, %3
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1510, !tbaa !693
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1511, metadata !686) #12, !dbg !1557
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %35, i64 0, metadata !1556, metadata !686) #12, !dbg !1559
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %35, i64 0, i32 5, !dbg !1560
  %37 = load i8*, i8** %36, align 8, !dbg !1560, !tbaa !1172
  %38 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %35, i64 0, i32 6, !dbg !1560
  %39 = load i8*, i8** %38, align 8, !dbg !1560, !tbaa !1173
  %40 = icmp ult i8* %37, %39, !dbg !1560
  br i1 %40, label %43, label %41, !dbg !1560, !prof !1174

; <label>:41:                                     ; preds = %34
  %42 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %35, i32 10) #12, !dbg !1560
  br label %45, !dbg !1560

; <label>:43:                                     ; preds = %34
  %44 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1560
  store i8* %44, i8** %36, align 8, !dbg !1560, !tbaa !1172
  store i8 10, i8* %37, align 1, !dbg !1560, !tbaa !782
  br label %45, !dbg !1560

; <label>:45:                                     ; preds = %41, %43
  ret void, !dbg !1561
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @__xargmatch_internal(i8*, i8*, i8** nocapture readonly, i8* readonly, i64, void ()* nocapture) local_unnamed_addr #6 !dbg !1562 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1566, metadata !686), !dbg !1573
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1567, metadata !686), !dbg !1574
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1568, metadata !686), !dbg !1575
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1569, metadata !686), !dbg !1576
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1570, metadata !686), !dbg !1577
  tail call void @llvm.dbg.value(metadata void ()* %5, i64 0, metadata !1571, metadata !686), !dbg !1578
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1408, metadata !686) #12, !dbg !1579
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1409, metadata !686) #12, !dbg !1581
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1410, metadata !686) #12, !dbg !1582
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1411, metadata !686) #12, !dbg !1583
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1414, metadata !686) #12, !dbg !1584
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1415, metadata !686) #12, !dbg !1585
  %7 = tail call i64 @strlen(i8* %1) #14, !dbg !1586
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1413, metadata !686) #12, !dbg !1587
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1412, metadata !686) #12, !dbg !1588
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1415, metadata !686) #12, !dbg !1585
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1414, metadata !686) #12, !dbg !1584
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1412, metadata !686) #12, !dbg !1588
  %8 = load i8*, i8** %2, align 8, !dbg !1589, !tbaa !693
  %9 = icmp eq i8* %8, null, !dbg !1590
  br i1 %9, label %48, label %10, !dbg !1590

; <label>:10:                                     ; preds = %6
  %11 = icmp eq i8* %3, null
  br label %12, !dbg !1590

; <label>:12:                                     ; preds = %33, %10
  %13 = phi i8* [ %8, %10 ], [ %38, %33 ]
  %14 = phi i8 [ 0, %10 ], [ %35, %33 ]
  %15 = phi i64 [ -1, %10 ], [ %34, %33 ]
  %16 = phi i64 [ 0, %10 ], [ %36, %33 ]
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !1412, metadata !686) #12, !dbg !1588
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !1414, metadata !686) #12, !dbg !1584
  tail call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !1415, metadata !686) #12, !dbg !1585
  %17 = tail call i32 @strncmp(i8* nonnull %13, i8* %1, i64 %7) #14, !dbg !1591
  %18 = icmp eq i32 %17, 0, !dbg !1591
  br i1 %18, label %19, label %33, !dbg !1592

; <label>:19:                                     ; preds = %12
  %20 = tail call i64 @strlen(i8* nonnull %13) #14, !dbg !1593
  %21 = icmp eq i64 %20, %7, !dbg !1594
  br i1 %21, label %43, label %22, !dbg !1595

; <label>:22:                                     ; preds = %19
  %23 = icmp eq i64 %15, -1, !dbg !1596
  br i1 %23, label %33, label %24, !dbg !1597

; <label>:24:                                     ; preds = %22
  br i1 %11, label %32, label %25, !dbg !1598

; <label>:25:                                     ; preds = %24
  %26 = mul i64 %15, %4, !dbg !1599
  %27 = getelementptr inbounds i8, i8* %3, i64 %26, !dbg !1600
  %28 = mul i64 %16, %4, !dbg !1601
  %29 = getelementptr inbounds i8, i8* %3, i64 %28, !dbg !1602
  %30 = tail call i32 @memcmp(i8* %27, i8* %29, i64 %4) #14, !dbg !1603
  %31 = icmp eq i32 %30, 0, !dbg !1603
  br i1 %31, label %33, label %32, !dbg !1604

; <label>:32:                                     ; preds = %25, %24
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1415, metadata !686) #12, !dbg !1585
  br label %33, !dbg !1605

; <label>:33:                                     ; preds = %32, %25, %22, %12
  %34 = phi i64 [ %15, %12 ], [ %15, %32 ], [ %15, %25 ], [ %16, %22 ]
  %35 = phi i8 [ %14, %12 ], [ 1, %32 ], [ %14, %25 ], [ %14, %22 ]
  tail call void @llvm.dbg.value(metadata i8 %35, i64 0, metadata !1415, metadata !686) #12, !dbg !1585
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !1414, metadata !686) #12, !dbg !1584
  %36 = add i64 %16, 1, !dbg !1606
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1412, metadata !686) #12, !dbg !1588
  tail call void @llvm.dbg.value(metadata i8 %35, i64 0, metadata !1415, metadata !686) #12, !dbg !1585
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !1414, metadata !686) #12, !dbg !1584
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1412, metadata !686) #12, !dbg !1588
  %37 = getelementptr inbounds i8*, i8** %2, i64 %36, !dbg !1589
  %38 = load i8*, i8** %37, align 8, !dbg !1589, !tbaa !693
  %39 = icmp eq i8* %38, null, !dbg !1590
  br i1 %39, label %40, label %12, !dbg !1590, !llvm.loop !1453

; <label>:40:                                     ; preds = %33
  %41 = and i8 %35, 1, !dbg !1607
  %42 = icmp eq i8 %41, 0, !dbg !1607
  br i1 %42, label %43, label %49

; <label>:43:                                     ; preds = %19, %40
  %44 = phi i64 [ %34, %40 ], [ %16, %19 ]
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1572, metadata !686), !dbg !1608
  %45 = icmp sgt i64 %44, -1, !dbg !1609
  br i1 %45, label %54, label %46, !dbg !1611

; <label>:46:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1463, metadata !686) #12, !dbg !1612
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1464, metadata !686) #12, !dbg !1614
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1465, metadata !686) #12, !dbg !1615
  %47 = icmp eq i64 %44, -1, !dbg !1616
  br i1 %47, label %48, label %49, !dbg !1617

; <label>:48:                                     ; preds = %6, %46
  br label %49, !dbg !1617

; <label>:49:                                     ; preds = %40, %46, %48
  %50 = phi i8* [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), %48 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.38, i64 0, i64 0), %46 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.38, i64 0, i64 0), %40 ]
  %51 = tail call i8* @dcgettext(i8* null, i8* nonnull %50, i32 5) #12, !dbg !1618
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1466, metadata !686) #12, !dbg !1619
  %52 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #12, !dbg !1620
  %53 = tail call i8* @quote_n(i32 1, i8* %0) #12, !dbg !1621
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %51, i8* %52, i8* %53) #12, !dbg !1622
  tail call void @argmatch_valid(i8** %2, i8* %3, i64 %4), !dbg !1623
  tail call void %5() #12, !dbg !1624
  br label %54, !dbg !1625

; <label>:54:                                     ; preds = %43, %49
  %55 = phi i64 [ -1, %49 ], [ %44, %43 ]
  ret i64 %55, !dbg !1626
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @argmatch_to_argument(i8* nocapture readonly, i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #9 !dbg !1627 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1631, metadata !686), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1632, metadata !686), !dbg !1637
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1633, metadata !686), !dbg !1638
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1634, metadata !686), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1635, metadata !686), !dbg !1640
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1635, metadata !686), !dbg !1640
  %5 = load i8*, i8** %1, align 8, !dbg !1641, !tbaa !693
  %6 = icmp eq i8* %5, null, !dbg !1644
  br i1 %6, label %20, label %7, !dbg !1644

; <label>:7:                                      ; preds = %4
  br label %12, !dbg !1645

; <label>:8:                                      ; preds = %12
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1635, metadata !686), !dbg !1640
  %9 = getelementptr inbounds i8*, i8** %1, i64 %19, !dbg !1641
  %10 = load i8*, i8** %9, align 8, !dbg !1641, !tbaa !693
  %11 = icmp eq i8* %10, null, !dbg !1644
  br i1 %11, label %20, label %12, !dbg !1644, !llvm.loop !1647

; <label>:12:                                     ; preds = %7, %8
  %13 = phi i8* [ %10, %8 ], [ %5, %7 ]
  %14 = phi i64 [ %19, %8 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1635, metadata !686), !dbg !1640
  %15 = mul i64 %14, %3, !dbg !1645
  %16 = getelementptr inbounds i8, i8* %2, i64 %15, !dbg !1649
  %17 = tail call i32 @memcmp(i8* %0, i8* %16, i64 %3) #14, !dbg !1650
  %18 = icmp eq i32 %17, 0, !dbg !1650
  %19 = add i64 %14, 1, !dbg !1651
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1635, metadata !686), !dbg !1640
  br i1 %18, label %20, label %8, !dbg !1652

; <label>:20:                                     ; preds = %12, %8, %4
  %21 = phi i8* [ null, %4 ], [ null, %8 ], [ %13, %12 ]
  ret i8* %21, !dbg !1653
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1654 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1656, metadata !686), !dbg !1657
  store i8* %0, i8** @file_name, align 8, !dbg !1658, !tbaa !693
  ret void, !dbg !1659
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1660 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1664, metadata !686), !dbg !1665
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1666, !tbaa !773
  ret void, !dbg !1667
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1668 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1673, !tbaa !693
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1674
  %3 = icmp eq i32 %2, 0, !dbg !1675
  br i1 %3, label %21, label %4, !dbg !1676

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1677, !tbaa !773, !range !1149
  %6 = icmp eq i8 %5, 0, !dbg !1677
  %7 = tail call i32* @__errno_location() #17, !dbg !1678
  br i1 %6, label %11, label %8, !dbg !1680

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1681, !tbaa !795
  %10 = icmp eq i32 %9, 32, !dbg !1682
  br i1 %10, label %21, label %11, !dbg !1683

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i64 0, i64 0), i32 5) #12, !dbg !1684
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1670, metadata !686), !dbg !1685
  %13 = load i8*, i8** @file_name, align 8, !dbg !1686, !tbaa !693
  %14 = icmp eq i8* %13, null, !dbg !1686
  %15 = load i32, i32* %7, align 4, !tbaa !795
  br i1 %14, label %18, label %16, !dbg !1687

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1688
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.73, i64 0, i64 0), i8* %17, i8* %12) #12, !dbg !1689
  br label %19, !dbg !1689

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.74, i64 0, i64 0), i8* %12) #12, !dbg !1690
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1691, !tbaa !795
  tail call void @_exit(i32 %20) #15, !dbg !1692
  unreachable, !dbg !1692

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1693, !tbaa !693
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #12, !dbg !1695
  %24 = icmp eq i32 %23, 0, !dbg !1696
  br i1 %24, label %27, label %25, !dbg !1697

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1698, !tbaa !795
  tail call void @_exit(i32 %26) #15, !dbg !1699
  unreachable, !dbg !1699

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1700
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1701 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1709, metadata !686), !dbg !1715
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1710, metadata !686), !dbg !1716
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1711, metadata !686), !dbg !1717
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1712, metadata !686), !dbg !1718
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #12, !dbg !1719
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1713, metadata !686), !dbg !1719
  ret void, !dbg !1720
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1721 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1765, metadata !686), !dbg !1767
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1766, metadata !686), !dbg !1768
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1769
  br i1 %3, label %7, label %4, !dbg !1771

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !1772
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1709, metadata !686) #12, !dbg !1773
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1710, metadata !686) #12, !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1711, metadata !686) #12, !dbg !1776
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1712, metadata !686) #12, !dbg !1777
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #12, !dbg !1778
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1713, metadata !686) #12, !dbg !1778
  br label %7, !dbg !1779

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1780
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @freopen_safer(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #6 !dbg !1781 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1826, metadata !686), !dbg !1833
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1827, metadata !686), !dbg !1834
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, i64 0, metadata !1828, metadata !686), !dbg !1835
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1829, metadata !686), !dbg !1836
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1830, metadata !686), !dbg !1837
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1831, metadata !686), !dbg !1838
  %4 = tail call i32 @fileno(%struct._IO_FILE* %2) #12, !dbg !1839
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %49
  ], !dbg !1840

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @dup2(i32 2, i32 2) #12, !dbg !1841
  %7 = icmp ne i32 %6, 2, !dbg !1844
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1831, metadata !686), !dbg !1838
  %8 = zext i1 %7 to i8, !dbg !1845
  br label %9, !dbg !1845

; <label>:9:                                      ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ]
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !1831, metadata !686), !dbg !1838
  %11 = tail call i32 @dup2(i32 1, i32 1) #12, !dbg !1846
  %12 = icmp ne i32 %11, 1, !dbg !1848
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1830, metadata !686), !dbg !1837
  %13 = zext i1 %12 to i8, !dbg !1849
  br label %14, !dbg !1849

; <label>:14:                                     ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ]
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ]
  tail call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !1831, metadata !686), !dbg !1838
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !1830, metadata !686), !dbg !1837
  %17 = tail call i32 @dup2(i32 0, i32 0) #12, !dbg !1850
  %18 = icmp eq i32 %17, 0, !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1829, metadata !686), !dbg !1836
  tail call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !1831, metadata !686), !dbg !1838
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !1830, metadata !686), !dbg !1837
  br i1 %18, label %27, label %19, !dbg !1853

; <label>:19:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1855, metadata !686) #12, !dbg !1861
  %20 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i64 0, i64 0), i32 0) #12, !dbg !1863
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !1860, metadata !686) #12, !dbg !1864
  %21 = icmp eq i32 %20, 0, !dbg !1865
  br i1 %21, label %27, label %22, !dbg !1867

; <label>:22:                                     ; preds = %19
  %23 = icmp sgt i32 %20, -1, !dbg !1868
  br i1 %23, label %24, label %54, !dbg !1871

; <label>:24:                                     ; preds = %22
  %25 = tail call i32 @close(i32 %20) #12, !dbg !1872
  %26 = tail call i32* @__errno_location() #17, !dbg !1874
  store i32 9, i32* %26, align 4, !dbg !1875, !tbaa !795
  br label %54, !dbg !1876

; <label>:27:                                     ; preds = %14, %19
  %28 = phi i1 [ false, %14 ], [ true, %19 ]
  %29 = icmp eq i8 %15, 0, !dbg !1877
  br i1 %29, label %38, label %30, !dbg !1879

; <label>:30:                                     ; preds = %27
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1855, metadata !686) #12, !dbg !1880
  %31 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i64 0, i64 0), i32 0) #12, !dbg !1882
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !1860, metadata !686) #12, !dbg !1883
  %32 = icmp eq i32 %31, 1, !dbg !1884
  br i1 %32, label %38, label %33, !dbg !1885

; <label>:33:                                     ; preds = %30
  %34 = icmp sgt i32 %31, -1, !dbg !1886
  br i1 %34, label %35, label %54, !dbg !1887

; <label>:35:                                     ; preds = %33
  %36 = tail call i32 @close(i32 %31) #12, !dbg !1888
  %37 = tail call i32* @__errno_location() #17, !dbg !1889
  store i32 9, i32* %37, align 4, !dbg !1890, !tbaa !795
  br label %54, !dbg !1891

; <label>:38:                                     ; preds = %30, %27
  %39 = and i8 %16, 1, !dbg !1892
  %40 = icmp eq i8 %39, 0, !dbg !1892
  br i1 %40, label %49, label %41, !dbg !1894

; <label>:41:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1855, metadata !686) #12, !dbg !1895
  %42 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i64 0, i64 0), i32 0) #12, !dbg !1897
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !1860, metadata !686) #12, !dbg !1898
  %43 = icmp eq i32 %42, 2, !dbg !1899
  br i1 %43, label %49, label %44, !dbg !1900

; <label>:44:                                     ; preds = %41
  %45 = icmp sgt i32 %42, -1, !dbg !1901
  br i1 %45, label %46, label %54, !dbg !1902

; <label>:46:                                     ; preds = %44
  %47 = tail call i32 @close(i32 %42) #12, !dbg !1903
  %48 = tail call i32* @__errno_location() #17, !dbg !1904
  store i32 9, i32* %48, align 4, !dbg !1905, !tbaa !795
  br label %54, !dbg !1906

; <label>:49:                                     ; preds = %3, %41, %38
  %50 = phi i8 [ %16, %38 ], [ %16, %41 ], [ 0, %3 ]
  %51 = phi i8 [ %15, %38 ], [ %15, %41 ], [ 0, %3 ]
  %52 = phi i1 [ %28, %38 ], [ %28, %41 ], [ false, %3 ]
  %53 = tail call %struct._IO_FILE* @freopen(i8* %0, i8* %1, %struct._IO_FILE* %2) #12, !dbg !1907
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %53, i64 0, metadata !1828, metadata !686), !dbg !1835
  br label %54

; <label>:54:                                     ; preds = %44, %46, %33, %35, %22, %24, %49
  %55 = phi i8 [ %50, %49 ], [ %16, %24 ], [ %16, %22 ], [ %16, %35 ], [ %16, %33 ], [ %16, %46 ], [ %16, %44 ]
  %56 = phi i8 [ %51, %49 ], [ %15, %24 ], [ %15, %22 ], [ 1, %35 ], [ 1, %33 ], [ %15, %46 ], [ %15, %44 ]
  %57 = phi i1 [ %52, %49 ], [ true, %24 ], [ true, %22 ], [ %28, %35 ], [ %28, %33 ], [ %28, %46 ], [ %28, %44 ]
  %58 = phi %struct._IO_FILE* [ %53, %49 ], [ null, %24 ], [ null, %22 ], [ null, %35 ], [ null, %33 ], [ null, %46 ], [ null, %44 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %58, i64 0, metadata !1828, metadata !686), !dbg !1835
  %59 = tail call i32* @__errno_location() #17, !dbg !1908
  %60 = load i32, i32* %59, align 4, !dbg !1908, !tbaa !795
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !1832, metadata !686), !dbg !1909
  %61 = and i8 %55, 1, !dbg !1910
  %62 = icmp eq i8 %61, 0, !dbg !1910
  br i1 %62, label %65, label %63, !dbg !1912

; <label>:63:                                     ; preds = %54
  %64 = tail call i32 @close(i32 2) #12, !dbg !1913
  br label %65, !dbg !1913

; <label>:65:                                     ; preds = %54, %63
  %66 = and i8 %56, 1, !dbg !1914
  %67 = icmp eq i8 %66, 0, !dbg !1914
  br i1 %67, label %70, label %68, !dbg !1916

; <label>:68:                                     ; preds = %65
  %69 = tail call i32 @close(i32 1) #12, !dbg !1917
  br label %70, !dbg !1917

; <label>:70:                                     ; preds = %65, %68
  br i1 %57, label %71, label %73, !dbg !1918

; <label>:71:                                     ; preds = %70
  %72 = tail call i32 @close(i32 0) #12, !dbg !1919
  br label %73, !dbg !1919

; <label>:73:                                     ; preds = %71, %70
  %74 = icmp eq %struct._IO_FILE* %58, null, !dbg !1921
  br i1 %74, label %75, label %76, !dbg !1923

; <label>:75:                                     ; preds = %73
  store i32 %60, i32* %59, align 4, !dbg !1924, !tbaa !795
  br label %76, !dbg !1925

; <label>:76:                                     ; preds = %73, %75
  ret %struct._IO_FILE* %58, !dbg !1926
}

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !1927 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1930, metadata !686), !dbg !1933
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1931, metadata !686), !dbg !1934
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !1935
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1932, metadata !686), !dbg !1936
  %3 = icmp eq i8* %2, null, !dbg !1937
  br i1 %3, label %11, label %4, !dbg !1939

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0)) #14, !dbg !1940
  %6 = icmp eq i32 %5, 0, !dbg !1945
  br i1 %6, label %10, label %7, !dbg !1946

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.85, i64 0, i64 0)) #14, !dbg !1947
  %9 = icmp eq i32 %8, 0, !dbg !1948
  br i1 %9, label %10, label %11, !dbg !1949

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1931, metadata !686), !dbg !1934
  br label %11, !dbg !1950

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !1951
}

; Function Attrs: nounwind sspstrong uwtable
define void @initbuffer(%struct.linebuffer* nocapture) local_unnamed_addr #6 !dbg !1952 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1963, metadata !686), !dbg !1964
  %2 = bitcast %struct.linebuffer* %0 to i8*, !dbg !1965
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 24, i32 8, i1 false), !dbg !1965
  ret void, !dbg !1966
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define %struct.linebuffer* @readlinebuffer(%struct.linebuffer*, %struct._IO_FILE*) local_unnamed_addr #6 !dbg !1967 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !2011, metadata !686), !dbg !2013
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !2012, metadata !686), !dbg !2014
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !2015, metadata !686) #12, !dbg !2030
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !2020, metadata !686) #12, !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 10, i64 0, metadata !2021, metadata !686) #12, !dbg !2033
  %3 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2034
  %4 = load i8*, i8** %3, align 8, !dbg !2034, !tbaa !1114
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2023, metadata !686) #12, !dbg !2035
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2024, metadata !686) #12, !dbg !2036
  %5 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !2037
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !2038, metadata !686) #12, !dbg !2043
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !2046
  %7 = load i32, i32* %6, align 8, !dbg !2046, !tbaa !1098
  %8 = and i32 %7, 16, !dbg !2046
  %9 = icmp eq i32 %8, 0, !dbg !2047
  br i1 %9, label %10, label %62, !dbg !2048

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %5, align 8, !dbg !2037, !tbaa !2049
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !2050
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  br label %15, !dbg !2051, !llvm.loop !2052

; <label>:15:                                     ; preds = %48, %10
  %16 = phi i8* [ %4, %10 ], [ %49, %48 ]
  %17 = phi i8* [ %4, %10 ], [ %53, %48 ]
  %18 = phi i8* [ %12, %10 ], [ %51, %48 ]
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !2025, metadata !686) #12, !dbg !2055
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !2024, metadata !686) #12, !dbg !2036
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !2023, metadata !686) #12, !dbg !2035
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !2056, metadata !686) #12, !dbg !2059
  %19 = load i8*, i8** %13, align 8, !dbg !2061, !tbaa !2062
  %20 = load i8*, i8** %14, align 8, !dbg !2061, !tbaa !2063
  %21 = icmp ult i8* %19, %20, !dbg !2061
  br i1 %21, label %22, label %26, !dbg !2061, !prof !1174

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !2061
  store i8* %23, i8** %13, align 8, !dbg !2061, !tbaa !2062
  %24 = load i8, i8* %19, align 1, !dbg !2061, !tbaa !782
  %25 = zext i8 %24 to i32, !dbg !2061
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !2022, metadata !686) #12, !dbg !2064
  br label %39, !dbg !2065

; <label>:26:                                     ; preds = %15
  %27 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #12, !dbg !2061
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !2022, metadata !686) #12, !dbg !2064
  %28 = icmp eq i32 %27, -1, !dbg !2066
  br i1 %28, label %29, label %39, !dbg !2065

; <label>:29:                                     ; preds = %26
  %30 = icmp eq i8* %17, %16, !dbg !2068
  br i1 %30, label %62, label %31, !dbg !2071

; <label>:31:                                     ; preds = %29
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !2072, metadata !686) #12, !dbg !2075
  %32 = load i32, i32* %6, align 8, !dbg !2077, !tbaa !1098
  %33 = and i32 %32, 32, !dbg !2077
  %34 = icmp eq i32 %33, 0, !dbg !2078
  br i1 %34, label %35, label %62, !dbg !2079

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !2080
  %37 = load i8, i8* %36, align 1, !dbg !2080, !tbaa !782
  %38 = icmp eq i8 %37, 10, !dbg !2082
  br i1 %38, label %55, label %39, !dbg !2083

; <label>:39:                                     ; preds = %35, %26, %22
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ 10, %35 ]
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !2022, metadata !686) #12, !dbg !2064
  %41 = icmp eq i8* %17, %18, !dbg !2084
  br i1 %41, label %42, label %48, !dbg !2085

; <label>:42:                                     ; preds = %39
  %43 = load i64, i64* %5, align 8, !dbg !2086, !tbaa !2049
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !2026, metadata !686) #12, !dbg !2087
  %44 = tail call i8* @x2realloc(i8* %16, i64* %5) #12, !dbg !2088
  tail call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !2023, metadata !686) #12, !dbg !2035
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !2089
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !2024, metadata !686) #12, !dbg !2036
  store i8* %44, i8** %3, align 8, !dbg !2090, !tbaa !1114
  %46 = load i64, i64* %5, align 8, !dbg !2091, !tbaa !2049
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !2092
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !2025, metadata !686) #12, !dbg !2055
  br label %48, !dbg !2093

; <label>:48:                                     ; preds = %42, %39
  %49 = phi i8* [ %44, %42 ], [ %16, %39 ]
  %50 = phi i8* [ %45, %42 ], [ %17, %39 ]
  %51 = phi i8* [ %47, %42 ], [ %18, %39 ]
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !2025, metadata !686) #12, !dbg !2055
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2024, metadata !686) #12, !dbg !2036
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2023, metadata !686) #12, !dbg !2035
  %52 = trunc i32 %40 to i8, !dbg !2094
  %53 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !2095
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2024, metadata !686) #12, !dbg !2036
  store i8 %52, i8* %50, align 1, !dbg !2096, !tbaa !782
  %54 = icmp eq i32 %40, 10, !dbg !2097
  br i1 %54, label %55, label %15, !dbg !2098, !llvm.loop !2052

; <label>:55:                                     ; preds = %48, %35
  %56 = phi i8* [ %16, %35 ], [ %49, %48 ]
  %57 = phi i8* [ %17, %35 ], [ %53, %48 ]
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !2024, metadata !686) #12, !dbg !2036
  tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !2023, metadata !686) #12, !dbg !2035
  %58 = ptrtoint i8* %57 to i64, !dbg !2099
  %59 = ptrtoint i8* %56 to i64, !dbg !2099
  %60 = sub i64 %58, %59, !dbg !2099
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !2100
  store i64 %60, i64* %61, align 8, !dbg !2101, !tbaa !1110
  br label %62, !dbg !2102

; <label>:62:                                     ; preds = %29, %31, %2, %55
  %63 = phi %struct.linebuffer* [ %0, %55 ], [ null, %2 ], [ null, %31 ], [ null, %29 ]
  ret %struct.linebuffer* %63, !dbg !2103
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer*, %struct._IO_FILE*, i8 signext) local_unnamed_addr #6 !dbg !2016 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !2015, metadata !686), !dbg !2104
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !2020, metadata !686), !dbg !2105
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2021, metadata !686), !dbg !2106
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2107
  %5 = load i8*, i8** %4, align 8, !dbg !2107, !tbaa !1114
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !2023, metadata !686), !dbg !2108
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !2024, metadata !686), !dbg !2109
  %6 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !2110
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !2025, metadata !686), !dbg !2111
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !2038, metadata !686), !dbg !2112
  %7 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !2114
  %8 = load i32, i32* %7, align 8, !dbg !2114, !tbaa !1098
  %9 = and i32 %8, 16, !dbg !2114
  %10 = icmp eq i32 %9, 0, !dbg !2115
  br i1 %10, label %11, label %64, !dbg !2116

; <label>:11:                                     ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !2110, !tbaa !2049
  %13 = getelementptr inbounds i8, i8* %5, i64 %12, !dbg !2117
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  %16 = sext i8 %2 to i32
  br label %17, !dbg !2053, !llvm.loop !2052

; <label>:17:                                     ; preds = %50, %11
  %18 = phi i8* [ %5, %11 ], [ %51, %50 ]
  %19 = phi i8* [ %5, %11 ], [ %55, %50 ]
  %20 = phi i8* [ %13, %11 ], [ %53, %50 ]
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2025, metadata !686), !dbg !2111
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2024, metadata !686), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !2023, metadata !686), !dbg !2108
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !2056, metadata !686) #12, !dbg !2118
  %21 = load i8*, i8** %14, align 8, !dbg !2120, !tbaa !2062
  %22 = load i8*, i8** %15, align 8, !dbg !2120, !tbaa !2063
  %23 = icmp ult i8* %21, %22, !dbg !2120
  br i1 %23, label %24, label %28, !dbg !2120, !prof !1174

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !2120
  store i8* %25, i8** %14, align 8, !dbg !2120, !tbaa !2062
  %26 = load i8, i8* %21, align 1, !dbg !2120, !tbaa !782
  %27 = zext i8 %26 to i32, !dbg !2120
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !2022, metadata !686), !dbg !2121
  br label %41, !dbg !2122

; <label>:28:                                     ; preds = %17
  %29 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #12, !dbg !2120
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !2022, metadata !686), !dbg !2121
  %30 = icmp eq i32 %29, -1, !dbg !2123
  br i1 %30, label %31, label %41, !dbg !2122

; <label>:31:                                     ; preds = %28
  %32 = icmp eq i8* %19, %18, !dbg !2124
  br i1 %32, label %64, label %33, !dbg !2125

; <label>:33:                                     ; preds = %31
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !2072, metadata !686), !dbg !2126
  %34 = load i32, i32* %7, align 8, !dbg !2128, !tbaa !1098
  %35 = and i32 %34, 32, !dbg !2128
  %36 = icmp eq i32 %35, 0, !dbg !2129
  br i1 %36, label %37, label %64, !dbg !2130

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !2131
  %39 = load i8, i8* %38, align 1, !dbg !2131, !tbaa !782
  %40 = icmp eq i8 %39, %2, !dbg !2132
  br i1 %40, label %57, label %41, !dbg !2133

; <label>:41:                                     ; preds = %37, %24, %28
  %42 = phi i32 [ %29, %28 ], [ %27, %24 ], [ %16, %37 ]
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !2022, metadata !686), !dbg !2121
  %43 = icmp eq i8* %19, %20, !dbg !2134
  br i1 %43, label %44, label %50, !dbg !2135

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %6, align 8, !dbg !2136, !tbaa !2049
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !2026, metadata !686), !dbg !2137
  %46 = tail call i8* @x2realloc(i8* %18, i64* %6) #12, !dbg !2138
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !2023, metadata !686), !dbg !2108
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !2139
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !2024, metadata !686), !dbg !2109
  store i8* %46, i8** %4, align 8, !dbg !2140, !tbaa !1114
  %48 = load i64, i64* %6, align 8, !dbg !2141, !tbaa !2049
  %49 = getelementptr inbounds i8, i8* %46, i64 %48, !dbg !2142
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2025, metadata !686), !dbg !2111
  br label %50, !dbg !2143

; <label>:50:                                     ; preds = %44, %41
  %51 = phi i8* [ %46, %44 ], [ %18, %41 ]
  %52 = phi i8* [ %47, %44 ], [ %19, %41 ]
  %53 = phi i8* [ %49, %44 ], [ %20, %41 ]
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2025, metadata !686), !dbg !2111
  tail call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2024, metadata !686), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !2023, metadata !686), !dbg !2108
  %54 = trunc i32 %42 to i8, !dbg !2144
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !2145
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !2024, metadata !686), !dbg !2109
  store i8 %54, i8* %52, align 1, !dbg !2146, !tbaa !782
  %56 = icmp eq i32 %42, %16, !dbg !2147
  br i1 %56, label %57, label %17, !dbg !2148, !llvm.loop !2052

; <label>:57:                                     ; preds = %50, %37
  %58 = phi i8* [ %18, %37 ], [ %51, %50 ]
  %59 = phi i8* [ %19, %37 ], [ %55, %50 ]
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !2024, metadata !686), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2023, metadata !686), !dbg !2108
  %60 = ptrtoint i8* %59 to i64, !dbg !2149
  %61 = ptrtoint i8* %58 to i64, !dbg !2149
  %62 = sub i64 %60, %61, !dbg !2149
  %63 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !2150
  store i64 %62, i64* %63, align 8, !dbg !2151, !tbaa !1110
  br label %64, !dbg !2152

; <label>:64:                                     ; preds = %31, %33, %3, %57
  %65 = phi %struct.linebuffer* [ %0, %57 ], [ null, %3 ], [ null, %33 ], [ null, %31 ]
  ret %struct.linebuffer* %65, !dbg !2153
}

; Function Attrs: nounwind sspstrong uwtable
define void @freebuffer(%struct.linebuffer* nocapture readonly) local_unnamed_addr #6 !dbg !2154 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !2156, metadata !686), !dbg !2157
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2158
  %3 = load i8*, i8** %2, align 8, !dbg !2158, !tbaa !1114
  tail call void @free(i8* %3) #12, !dbg !2159
  ret void, !dbg !2160
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @memcasecmp(i8* nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #9 !dbg !2161 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2168, metadata !686), !dbg !2186
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2169, metadata !686), !dbg !2187
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2170, metadata !686), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2172, metadata !686), !dbg !2189
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2173, metadata !686), !dbg !2190
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2171, metadata !686), !dbg !2191
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2171, metadata !686), !dbg !2191
  %4 = icmp eq i64 %2, 0, !dbg !2192
  br i1 %4, label %25, label %5, !dbg !2193

; <label>:5:                                      ; preds = %3
  %6 = tail call i32** @__ctype_toupper_loc() #17, !dbg !2194
  %7 = load i32*, i32** %6, align 8, !tbaa !693
  br label %10, !dbg !2193

; <label>:8:                                      ; preds = %10
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2171, metadata !686), !dbg !2191
  %9 = icmp ult i64 %24, %2, !dbg !2192
  br i1 %9, label %10, label %25, !dbg !2193, !llvm.loop !2196

; <label>:10:                                     ; preds = %5, %8
  %11 = phi i64 [ 0, %5 ], [ %24, %8 ]
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2171, metadata !686), !dbg !2191
  %12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !2198
  %13 = load i8, i8* %12, align 1, !dbg !2198, !tbaa !782
  tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !2174, metadata !686), !dbg !2199
  %14 = getelementptr inbounds i8, i8* %1, i64 %11, !dbg !2200
  %15 = load i8, i8* %14, align 1, !dbg !2200, !tbaa !782
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !2178, metadata !686), !dbg !2201
  %16 = zext i8 %13 to i64, !dbg !2194
  %17 = getelementptr inbounds i32, i32* %7, i64 %16, !dbg !2194
  %18 = load i32, i32* %17, align 4, !dbg !2194, !tbaa !795
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !2180, metadata !686), !dbg !2202
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !2179, metadata !686), !dbg !2203
  %19 = zext i8 %15 to i64, !dbg !2204
  %20 = getelementptr inbounds i32, i32* %7, i64 %19, !dbg !2204
  %21 = load i32, i32* %20, align 4, !dbg !2204, !tbaa !795
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !2183, metadata !686), !dbg !2206
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !2182, metadata !686), !dbg !2207
  %22 = sub nsw i32 %18, %21, !dbg !2208
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !2185, metadata !686), !dbg !2209
  %23 = icmp eq i32 %22, 0, !dbg !2210
  %24 = add nuw i64 %11, 1, !dbg !2212
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2171, metadata !686), !dbg !2191
  br i1 %23, label %8, label %25

; <label>:25:                                     ; preds = %10, %8, %3
  %26 = phi i32 [ 0, %3 ], [ 0, %8 ], [ %22, %10 ]
  ret i32 %26, !dbg !2213
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define i32 @posix2_version() local_unnamed_addr #6 !dbg !2214 {
  %1 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i64 200809, i64 0, metadata !2218, metadata !686), !dbg !2224
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.94, i64 0, i64 0)) #12, !dbg !2225
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2219, metadata !686), !dbg !2226
  %3 = icmp eq i8* %2, null, !dbg !2227
  br i1 %3, label %16, label %4, !dbg !2228

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* %2, align 1, !dbg !2229, !tbaa !782
  %6 = icmp eq i8 %5, 0, !dbg !2229
  br i1 %6, label %16, label %7, !dbg !2230

; <label>:7:                                      ; preds = %4
  %8 = bitcast i8** %1 to i8*, !dbg !2231
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #12, !dbg !2231
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !2220, metadata !686), !dbg !2232
  %9 = call i64 @strtol(i8* nonnull %2, i8** nonnull %1, i32 10) #12, !dbg !2233
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2223, metadata !686), !dbg !2234
  %10 = load i8*, i8** %1, align 8, !dbg !2235, !tbaa !693
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2220, metadata !686), !dbg !2232
  %11 = load i8, i8* %10, align 1, !dbg !2237, !tbaa !782
  %12 = icmp eq i8 %11, 0, !dbg !2237
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2218, metadata !686), !dbg !2224
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #12, !dbg !2238
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %7
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2218, metadata !686), !dbg !2224
  %14 = icmp slt i64 %9, -2147483648, !dbg !2239
  %15 = icmp slt i64 %9, 2147483647, !dbg !2240
  br i1 %15, label %16, label %19, !dbg !2241

; <label>:16:                                     ; preds = %0, %4, %7, %13
  %17 = phi i1 [ %14, %13 ], [ false, %7 ], [ false, %4 ], [ false, %0 ]
  %18 = phi i64 [ %9, %13 ], [ 200809, %7 ], [ 200809, %4 ], [ 200809, %0 ]
  br label %19, !dbg !2241

; <label>:19:                                     ; preds = %13, %16
  %20 = phi i1 [ %17, %16 ], [ %14, %13 ]
  %21 = phi i64 [ %18, %16 ], [ 2147483647, %13 ]
  %22 = trunc i64 %21 to i32, !dbg !2241
  %23 = select i1 %20, i32 -2147483648, i32 %22, !dbg !2242
  ret i32 %23, !dbg !2243
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2244 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2246, metadata !686), !dbg !2249
  %2 = icmp eq i8* %0, null, !dbg !2250
  br i1 %2, label %3, label %6, !dbg !2252

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2253, !tbaa !693
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.99, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !2255
  tail call void @abort() #15, !dbg !2256
  unreachable, !dbg !2256

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !2257
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2247, metadata !686), !dbg !2258
  %8 = icmp eq i8* %7, null, !dbg !2259
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2260
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2261
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2248, metadata !686), !dbg !2262
  %11 = ptrtoint i8* %10 to i64, !dbg !2263
  %12 = ptrtoint i8* %0 to i64, !dbg !2263
  %13 = sub i64 %11, %12, !dbg !2263
  %14 = icmp sgt i64 %13, 6, !dbg !2265
  br i1 %14, label %15, label %24, !dbg !2266

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2267
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.100, i64 0, i64 0), i64 7) #14, !dbg !2268
  %18 = icmp eq i32 %17, 0, !dbg !2269
  br i1 %18, label %19, label %24, !dbg !2270

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2246, metadata !686), !dbg !2249
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.101, i64 0, i64 0), i64 3) #14, !dbg !2271
  %21 = icmp eq i32 %20, 0, !dbg !2274
  br i1 %21, label %22, label %24, !dbg !2275

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2276
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2246, metadata !686), !dbg !2249
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2278, !tbaa !693
  br label %24, !dbg !2279

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2246, metadata !686), !dbg !2249
  store i8* %25, i8** @program_name, align 8, !dbg !2280, !tbaa !693
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2281, !tbaa !693
  ret void, !dbg !2282
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2283 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2288, metadata !686), !dbg !2291
  %2 = tail call i32* @__errno_location() #17, !dbg !2292
  %3 = load i32, i32* %2, align 4, !dbg !2292, !tbaa !795
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2289, metadata !686), !dbg !2293
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2294
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2294
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !2294
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !2295
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2295
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2290, metadata !686), !dbg !2296
  store i32 %3, i32* %2, align 4, !dbg !2297, !tbaa !795
  ret %struct.quoting_options* %8, !dbg !2298
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !2299 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2305, metadata !686), !dbg !2306
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2307
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2307
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2308
  %5 = load i32, i32* %4, align 8, !dbg !2308, !tbaa !2309
  ret i32 %5, !dbg !2311
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2312 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2316, metadata !686), !dbg !2318
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2317, metadata !686), !dbg !2319
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2320
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2320
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2321
  store i32 %1, i32* %5, align 8, !dbg !2322, !tbaa !2309
  ret void, !dbg !2323
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2324 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2328, metadata !686), !dbg !2336
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2329, metadata !686), !dbg !2337
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2330, metadata !686), !dbg !2338
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2331, metadata !686), !dbg !2339
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2340
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2340
  %6 = lshr i8 %1, 5, !dbg !2341
  %7 = zext i8 %6 to i64, !dbg !2341
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2342
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2332, metadata !686), !dbg !2343
  %9 = and i8 %1, 31, !dbg !2344
  %10 = zext i8 %9 to i32, !dbg !2345
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2334, metadata !686), !dbg !2346
  %11 = load i32, i32* %8, align 4, !dbg !2347, !tbaa !795
  %12 = lshr i32 %11, %10, !dbg !2348
  %13 = and i32 %12, 1, !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2335, metadata !686), !dbg !2350
  %14 = and i32 %2, 1, !dbg !2351
  %15 = xor i32 %13, %14, !dbg !2352
  %16 = shl i32 %15, %10, !dbg !2353
  %17 = xor i32 %16, %11, !dbg !2354
  store i32 %17, i32* %8, align 4, !dbg !2354, !tbaa !795
  ret i32 %13, !dbg !2355
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2356 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2360, metadata !686), !dbg !2363
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2361, metadata !686), !dbg !2364
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2365
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2360, metadata !686), !dbg !2363
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2367
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2360, metadata !686), !dbg !2363
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2368
  %6 = load i32, i32* %5, align 4, !dbg !2368, !tbaa !2369
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2362, metadata !686), !dbg !2370
  store i32 %1, i32* %5, align 4, !dbg !2371, !tbaa !2369
  ret i32 %6, !dbg !2372
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2373 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2377, metadata !686), !dbg !2380
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2378, metadata !686), !dbg !2381
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2379, metadata !686), !dbg !2382
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2383
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2377, metadata !686), !dbg !2380
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2385
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2377, metadata !686), !dbg !2380
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2386
  store i32 10, i32* %6, align 8, !dbg !2387, !tbaa !2309
  %7 = icmp ne i8* %1, null, !dbg !2388
  %8 = icmp ne i8* %2, null, !dbg !2390
  %9 = and i1 %7, %8, !dbg !2391
  br i1 %9, label %11, label %10, !dbg !2391

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2392
  unreachable, !dbg !2392

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2393
  store i8* %1, i8** %12, align 8, !dbg !2394, !tbaa !2395
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2396
  store i8* %2, i8** %13, align 8, !dbg !2397, !tbaa !2398
  ret void, !dbg !2399
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2400 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2404, metadata !686), !dbg !2412
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2405, metadata !686), !dbg !2413
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2406, metadata !686), !dbg !2414
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2407, metadata !686), !dbg !2415
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2408, metadata !686), !dbg !2416
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2417
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2417
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2409, metadata !686), !dbg !2418
  %8 = tail call i32* @__errno_location() #17, !dbg !2419
  %9 = load i32, i32* %8, align 4, !dbg !2419, !tbaa !795
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2410, metadata !686), !dbg !2420
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2421
  %11 = load i32, i32* %10, align 8, !dbg !2421, !tbaa !2309
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2422
  %13 = load i32, i32* %12, align 4, !dbg !2422, !tbaa !2369
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2423
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2424
  %16 = load i8*, i8** %15, align 8, !dbg !2424, !tbaa !2395
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2425
  %18 = load i8*, i8** %17, align 8, !dbg !2425, !tbaa !2398
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2426
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2411, metadata !686), !dbg !2427
  store i32 %9, i32* %8, align 4, !dbg !2428, !tbaa !795
  ret i64 %19, !dbg !2429
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2430 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2436, metadata !686), !dbg !2498
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2437, metadata !686), !dbg !2499
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2438, metadata !686), !dbg !2500
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2439, metadata !686), !dbg !2501
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2440, metadata !686), !dbg !2502
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2441, metadata !686), !dbg !2503
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2442, metadata !686), !dbg !2504
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2443, metadata !686), !dbg !2505
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2444, metadata !686), !dbg !2506
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2446, metadata !686), !dbg !2507
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2447, metadata !686), !dbg !2508
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2448, metadata !686), !dbg !2509
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2449, metadata !686), !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2450, metadata !686), !dbg !2511
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !2512
  %14 = icmp eq i64 %13, 1, !dbg !2513
  %15 = lshr i32 %5, 1, !dbg !2514
  %16 = trunc i32 %15 to i8, !dbg !2514
  %17 = and i8 %16, 1, !dbg !2514
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2452, metadata !686), !dbg !2514
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2453, metadata !686), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2454, metadata !686), !dbg !2516
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2455, metadata !686), !dbg !2517
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2518

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2437, metadata !686), !dbg !2499
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2455, metadata !686), !dbg !2517
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2454, metadata !686), !dbg !2516
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2453, metadata !686), !dbg !2515
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2452, metadata !686), !dbg !2514
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2439, metadata !686), !dbg !2501
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2450, metadata !686), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2449, metadata !686), !dbg !2510
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2448, metadata !686), !dbg !2509
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2447, metadata !686), !dbg !2508
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2444, metadata !686), !dbg !2506
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2443, metadata !686), !dbg !2505
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2440, metadata !686), !dbg !2502
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
  ], !dbg !2519

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2440, metadata !686), !dbg !2502
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2452, metadata !686), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2452, metadata !686), !dbg !2514
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2440, metadata !686), !dbg !2502
  br label %94, !dbg !2520

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2452, metadata !686), !dbg !2514
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2440, metadata !686), !dbg !2502
  %43 = and i8 %36, 1, !dbg !2522
  %44 = icmp eq i8 %43, 0, !dbg !2522
  br i1 %44, label %45, label %94, !dbg !2520

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2524
  br i1 %46, label %94, label %47, !dbg !2527

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2524, !tbaa !782
  br label %94, !dbg !2524

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.112, i64 0, i64 0), i32 %28), !dbg !2528
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2443, metadata !686), !dbg !2505
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.113, i64 0, i64 0), i32 %28), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2444, metadata !686), !dbg !2506
  br label %51, !dbg !2533

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2444, metadata !686), !dbg !2506
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2443, metadata !686), !dbg !2505
  %54 = and i8 %36, 1, !dbg !2534
  %55 = icmp eq i8 %54, 0, !dbg !2534
  br i1 %55, label %56, label %72, !dbg !2536

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2448, metadata !686), !dbg !2509
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2448, metadata !686), !dbg !2509
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2446, metadata !686), !dbg !2507
  %57 = load i8, i8* %52, align 1, !dbg !2537, !tbaa !782
  %58 = icmp eq i8 %57, 0, !dbg !2540
  br i1 %58, label %72, label %59, !dbg !2540

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2541

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !2448, metadata !686), !dbg !2509
  %64 = icmp ult i64 %63, %40, !dbg !2541
  br i1 %64, label %65, label %67, !dbg !2544

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2541
  store i8 %61, i8* %66, align 1, !dbg !2541, !tbaa !782
  br label %67, !dbg !2541

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2446, metadata !686), !dbg !2507
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2545
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2448, metadata !686), !dbg !2509
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2448, metadata !686), !dbg !2509
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2446, metadata !686), !dbg !2507
  %70 = load i8, i8* %69, align 1, !dbg !2537, !tbaa !782
  %71 = icmp eq i8 %70, 0, !dbg !2540
  br i1 %71, label %72, label %60, !dbg !2540, !llvm.loop !2546

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2450, metadata !686), !dbg !2511
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2448, metadata !686), !dbg !2509
  %74 = call i64 @strlen(i8* %53) #14, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2449, metadata !686), !dbg !2510
  br label %94, !dbg !2549

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2450, metadata !686), !dbg !2511
  br label %76, !dbg !2550

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !2450, metadata !686), !dbg !2511
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2452, metadata !686), !dbg !2514
  br label %78, !dbg !2551

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2452, metadata !686), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !2450, metadata !686), !dbg !2511
  %81 = and i8 %80, 1, !dbg !2552
  %82 = icmp eq i8 %81, 0, !dbg !2552
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2450, metadata !686), !dbg !2511
  %83 = select i1 %82, i8 1, i8 %79, !dbg !2554
  br label %84, !dbg !2554

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2452, metadata !686), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !2450, metadata !686), !dbg !2511
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2440, metadata !686), !dbg !2502
  %87 = and i8 %86, 1, !dbg !2555
  %88 = icmp eq i8 %87, 0, !dbg !2555
  br i1 %88, label %89, label %94, !dbg !2557

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !2558
  br i1 %90, label %94, label %91, !dbg !2561

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !2558, !tbaa !782
  br label %94, !dbg !2558

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2452, metadata !686), !dbg !2514
  br label %94, !dbg !2562

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !2563
  unreachable, !dbg !2563

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.114, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.114, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.114, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.113, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.113, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.113, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.114, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2452, metadata !686), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !2450, metadata !686), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !2449, metadata !686), !dbg !2510
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2448, metadata !686), !dbg !2509
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2444, metadata !686), !dbg !2506
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !2443, metadata !686), !dbg !2505
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !2440, metadata !686), !dbg !2502
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2445, metadata !686), !dbg !2564
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
  br label %122, !dbg !2565

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2437, metadata !686), !dbg !2499
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2455, metadata !686), !dbg !2517
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2454, metadata !686), !dbg !2516
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !2453, metadata !686), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2439, metadata !686), !dbg !2501
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2447, metadata !686), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !2445, metadata !686), !dbg !2564
  %131 = icmp eq i64 %126, -1, !dbg !2566
  br i1 %131, label %134, label %132, !dbg !2567

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !2568
  br i1 %133, label %590, label %138, !dbg !2569

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2570
  %136 = load i8, i8* %135, align 1, !dbg !2570, !tbaa !782
  %137 = icmp eq i8 %136, 0, !dbg !2571
  br i1 %137, label %590, label %138, !dbg !2569

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2461, metadata !686), !dbg !2572
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2462, metadata !686), !dbg !2573
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2463, metadata !686), !dbg !2574
  br i1 %108, label %139, label %154, !dbg !2575

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !2577
  %141 = and i1 %109, %131, !dbg !2578
  br i1 %141, label %142, label %144, !dbg !2578

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !2579
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !2439, metadata !686), !dbg !2501
  br label %144, !dbg !2580

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !2439, metadata !686), !dbg !2501
  %146 = icmp ugt i64 %140, %145, !dbg !2581
  br i1 %146, label %154, label %147, !dbg !2582

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2583
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !2584
  %150 = icmp ne i32 %149, 0, !dbg !2585
  %151 = or i1 %150, %111, !dbg !2586
  %152 = xor i1 %150, true, !dbg !2586
  %153 = zext i1 %152 to i8, !dbg !2586
  br i1 %151, label %154, label %635, !dbg !2586

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2461, metadata !686), !dbg !2572
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !2439, metadata !686), !dbg !2501
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2587
  %158 = load i8, i8* %157, align 1, !dbg !2587, !tbaa !782
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2456, metadata !686), !dbg !2588
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
  ], !dbg !2589

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !2590

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !2591

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2462, metadata !686), !dbg !2573
  %162 = and i8 %127, 1, !dbg !2595
  %163 = icmp eq i8 %162, 0, !dbg !2595
  %164 = and i1 %113, %163, !dbg !2595
  br i1 %164, label %165, label %181, !dbg !2595

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2597
  br i1 %166, label %167, label %169, !dbg !2601

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2597
  store i8 39, i8* %168, align 1, !dbg !2597, !tbaa !782
  br label %169, !dbg !2597

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2601
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !2446, metadata !686), !dbg !2507
  %171 = icmp ult i64 %170, %130, !dbg !2602
  br i1 %171, label %172, label %174, !dbg !2605

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2602
  store i8 36, i8* %173, align 1, !dbg !2602, !tbaa !782
  br label %174, !dbg !2602

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !2446, metadata !686), !dbg !2507
  %176 = icmp ult i64 %175, %130, !dbg !2606
  br i1 %176, label %177, label %179, !dbg !2609

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2606
  store i8 39, i8* %178, align 1, !dbg !2606, !tbaa !782
  br label %179, !dbg !2606

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2609
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2453, metadata !686), !dbg !2515
  br label %181, !dbg !2610

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !2453, metadata !686), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !2446, metadata !686), !dbg !2507
  %184 = icmp ult i64 %182, %130, !dbg !2611
  br i1 %184, label %185, label %187, !dbg !2614

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2611
  store i8 92, i8* %186, align 1, !dbg !2611, !tbaa !782
  br label %187, !dbg !2611

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2614
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !2446, metadata !686), !dbg !2507
  br i1 %105, label %189, label %470, !dbg !2615

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2617
  %191 = icmp ult i64 %190, %155, !dbg !2618
  br i1 %191, label %192, label %470, !dbg !2619

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2620
  %194 = load i8, i8* %193, align 1, !dbg !2620, !tbaa !782
  %195 = add i8 %194, -48, !dbg !2621
  %196 = icmp ult i8 %195, 10, !dbg !2621
  br i1 %196, label %197, label %470, !dbg !2621

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2622
  br i1 %198, label %199, label %201, !dbg !2626

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2622
  store i8 48, i8* %200, align 1, !dbg !2622, !tbaa !782
  br label %201, !dbg !2622

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2626
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !2446, metadata !686), !dbg !2507
  %203 = icmp ult i64 %202, %130, !dbg !2627
  br i1 %203, label %204, label %206, !dbg !2630

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2627
  store i8 48, i8* %205, align 1, !dbg !2627, !tbaa !782
  br label %206, !dbg !2627

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2630
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !2446, metadata !686), !dbg !2507
  br label %470, !dbg !2631

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2632

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2633

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2634

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2636

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2638
  %214 = icmp ult i64 %213, %155, !dbg !2639
  br i1 %214, label %215, label %470, !dbg !2640

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2641
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2642
  %218 = load i8, i8* %217, align 1, !dbg !2642, !tbaa !782
  %219 = icmp eq i8 %218, 63, !dbg !2643
  br i1 %219, label %220, label %470, !dbg !2644

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2645
  %222 = load i8, i8* %221, align 1, !dbg !2645, !tbaa !782
  %223 = sext i8 %222 to i32, !dbg !2645
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
  ], !dbg !2646

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2647

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !2456, metadata !686), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !2445, metadata !686), !dbg !2564
  %226 = icmp ult i64 %124, %130, !dbg !2649
  br i1 %226, label %227, label %229, !dbg !2652

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2649
  store i8 63, i8* %228, align 1, !dbg !2649, !tbaa !782
  br label %229, !dbg !2649

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2652
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !2446, metadata !686), !dbg !2507
  %231 = icmp ult i64 %230, %130, !dbg !2653
  br i1 %231, label %232, label %234, !dbg !2656

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2653
  store i8 34, i8* %233, align 1, !dbg !2653, !tbaa !782
  br label %234, !dbg !2653

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2656
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !2446, metadata !686), !dbg !2507
  %236 = icmp ult i64 %235, %130, !dbg !2657
  br i1 %236, label %237, label %239, !dbg !2660

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2657
  store i8 34, i8* %238, align 1, !dbg !2657, !tbaa !782
  br label %239, !dbg !2657

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2660
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !2446, metadata !686), !dbg !2507
  %241 = icmp ult i64 %240, %130, !dbg !2661
  br i1 %241, label %242, label %244, !dbg !2664

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2661
  store i8 63, i8* %243, align 1, !dbg !2661, !tbaa !782
  br label %244, !dbg !2661

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2664
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !2446, metadata !686), !dbg !2507
  br label %470, !dbg !2665

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2460, metadata !686), !dbg !2666
  br label %256, !dbg !2667

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2460, metadata !686), !dbg !2666
  br label %256, !dbg !2668

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2460, metadata !686), !dbg !2666
  br label %254, !dbg !2669

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2460, metadata !686), !dbg !2666
  br label %254, !dbg !2670

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2460, metadata !686), !dbg !2666
  br label %256, !dbg !2671

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2460, metadata !686), !dbg !2666
  br i1 %113, label %252, label %253, !dbg !2672

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2673

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2676

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !2460, metadata !686), !dbg !2666
  br i1 %117, label %256, label %635, !dbg !2678

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !2460, metadata !686), !dbg !2666
  br i1 %104, label %497, label %470, !dbg !2680

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2681
  br i1 %259, label %260, label %265, !dbg !2683

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2684, !tbaa !782
  %262 = icmp ne i8 %261, 0, !dbg !2685
  %263 = icmp ne i64 %123, 0, !dbg !2686
  %264 = or i1 %263, %262, !dbg !2688
  br i1 %264, label %470, label %271, !dbg !2688

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2689
  %267 = icmp ne i64 %123, 0, !dbg !2686
  %268 = or i1 %267, %266, !dbg !2683
  br i1 %268, label %470, label %271, !dbg !2683

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2686
  br i1 %270, label %271, label %470, !dbg !2690

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2463, metadata !686), !dbg !2574
  br label %272, !dbg !2691

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !2463, metadata !686), !dbg !2574
  br i1 %117, label %470, label %635, !dbg !2692

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2454, metadata !686), !dbg !2516
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2463, metadata !686), !dbg !2574
  br i1 %113, label %275, label %470, !dbg !2694

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2695

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2698
  %278 = icmp ne i64 %125, 0, !dbg !2700
  %279 = or i1 %278, %277, !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2447, metadata !686), !dbg !2508
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2437, metadata !686), !dbg !2499
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2701
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2701
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2437, metadata !686), !dbg !2499
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !2447, metadata !686), !dbg !2508
  %282 = icmp ult i64 %124, %281, !dbg !2702
  br i1 %282, label %283, label %285, !dbg !2705

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2702
  store i8 39, i8* %284, align 1, !dbg !2702, !tbaa !782
  br label %285, !dbg !2702

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2705
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !2446, metadata !686), !dbg !2507
  %287 = icmp ult i64 %286, %281, !dbg !2706
  br i1 %287, label %288, label %290, !dbg !2709

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2706
  store i8 92, i8* %289, align 1, !dbg !2706, !tbaa !782
  br label %290, !dbg !2706

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2709
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !2446, metadata !686), !dbg !2507
  %292 = icmp ult i64 %291, %281, !dbg !2710
  br i1 %292, label %293, label %295, !dbg !2713

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2710
  store i8 39, i8* %294, align 1, !dbg !2710, !tbaa !782
  br label %295, !dbg !2710

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2453, metadata !686), !dbg !2515
  br label %470, !dbg !2714

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2715

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2464, metadata !686), !dbg !2716
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2717
  %300 = load i16*, i16** %299, align 8, !dbg !2717, !tbaa !693
  %301 = zext i8 %158 to i64, !dbg !2717
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2717
  %303 = load i16, i16* %302, align 2, !dbg !2717, !tbaa !1374
  %304 = lshr i16 %303, 14, !dbg !2719
  %305 = trunc i16 %304 to i8, !dbg !2719
  %306 = and i8 %305, 1, !dbg !2719
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !2467, metadata !686), !dbg !2720
  br label %362, !dbg !2721

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2722
  store i64 0, i64* %10, align 8, !dbg !2723
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2464, metadata !686), !dbg !2716
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2467, metadata !686), !dbg !2720
  %308 = icmp eq i64 %155, -1, !dbg !2724
  br i1 %308, label %309, label %311, !dbg !2726

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !2439, metadata !686), !dbg !2501
  br label %311, !dbg !2728

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !2439, metadata !686), !dbg !2501
  br label %313, !dbg !2729, !llvm.loop !2730

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !2467, metadata !686), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2464, metadata !686), !dbg !2716
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2732
  %316 = add i64 %314, %123, !dbg !2733
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2734
  %318 = sub i64 %312, %316, !dbg !2735
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2468, metadata !686), !dbg !2736
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2484, metadata !686), !dbg !2737
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #12, !dbg !2738
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !2487, metadata !686), !dbg !2739
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2740

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2467, metadata !686), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2464, metadata !686), !dbg !2716
  %321 = icmp ugt i64 %312, %316, !dbg !2741
  br i1 %321, label %322, label %347, !dbg !2743

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2744

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !2464, metadata !686), !dbg !2716
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2744
  %327 = load i8, i8* %326, align 1, !dbg !2744, !tbaa !782
  %328 = icmp eq i8 %327, 0, !dbg !2743
  br i1 %328, label %347, label %329, !dbg !2745

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2746
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2464, metadata !686), !dbg !2716
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2464, metadata !686), !dbg !2716
  %331 = add i64 %330, %123, !dbg !2747
  %332 = icmp ult i64 %331, %312, !dbg !2741
  br i1 %332, label %323, label %347, !dbg !2743, !llvm.loop !2748

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2749
  %335 = and i1 %115, %334, !dbg !2752
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2488, metadata !686), !dbg !2753
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2488, metadata !686), !dbg !2753
  br i1 %335, label %336, label %350, !dbg !2752

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2754

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !2488, metadata !686), !dbg !2753
  %339 = add i64 %338, %316, !dbg !2754
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2755
  %341 = load i8, i8* %340, align 1, !dbg !2755, !tbaa !782
  %342 = sext i8 %341 to i32, !dbg !2755
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2756

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2757
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2488, metadata !686), !dbg !2753
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2488, metadata !686), !dbg !2753
  %345 = icmp ult i64 %344, %319, !dbg !2749
  br i1 %345, label %337, label %350, !dbg !2758, !llvm.loop !2759

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2761

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2467, metadata !686), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2464, metadata !686), !dbg !2716
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2761
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2762, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !2484, metadata !686), !dbg !2737
  %352 = call i32 @iswprint(i32 %351) #12, !dbg !2764
  %353 = icmp eq i32 %352, 0, !dbg !2764
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2467, metadata !686), !dbg !2720
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2765
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2467, metadata !686), !dbg !2720
  %355 = add i64 %319, %314, !dbg !2766
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2464, metadata !686), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2467, metadata !686), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2464, metadata !686), !dbg !2716
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2761
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2468, metadata !686), !dbg !2736
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2767
  %357 = icmp eq i32 %356, 0, !dbg !2768
  br i1 %357, label %313, label %358, !dbg !2769, !llvm.loop !2730

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2770
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2467, metadata !686), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2464, metadata !686), !dbg !2716
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2761
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2770
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !2467, metadata !686), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !2464, metadata !686), !dbg !2716
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !2439, metadata !686), !dbg !2501
  %366 = and i8 %365, 1, !dbg !2771
  %367 = icmp ne i8 %366, 0, !dbg !2771
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !2463, metadata !686), !dbg !2574
  %368 = icmp ult i64 %364, 2, !dbg !2772
  %369 = or i1 %367, %112, !dbg !2773
  %370 = and i1 %368, %369, !dbg !2774
  br i1 %370, label %470, label %371, !dbg !2774

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2775
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !2495, metadata !686), !dbg !2776
  br label %373, !dbg !2777

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !2462, metadata !686), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !2461, metadata !686), !dbg !2572
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !2456, metadata !686), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !2453, metadata !686), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !2445, metadata !686), !dbg !2564
  br i1 %369, label %426, label %380, !dbg !2778

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2783

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2462, metadata !686), !dbg !2573
  %382 = and i8 %376, 1, !dbg !2786
  %383 = icmp eq i8 %382, 0, !dbg !2786
  %384 = and i1 %113, %383, !dbg !2786
  br i1 %384, label %385, label %401, !dbg !2786

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2788
  br i1 %386, label %387, label %389, !dbg !2792

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2788
  store i8 39, i8* %388, align 1, !dbg !2788, !tbaa !782
  br label %389, !dbg !2788

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2792
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !2446, metadata !686), !dbg !2507
  %391 = icmp ult i64 %390, %130, !dbg !2793
  br i1 %391, label %392, label %394, !dbg !2796

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2793
  store i8 36, i8* %393, align 1, !dbg !2793, !tbaa !782
  br label %394, !dbg !2793

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !2446, metadata !686), !dbg !2507
  %396 = icmp ult i64 %395, %130, !dbg !2797
  br i1 %396, label %397, label %399, !dbg !2800

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2797
  store i8 39, i8* %398, align 1, !dbg !2797, !tbaa !782
  br label %399, !dbg !2797

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2800
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2453, metadata !686), !dbg !2515
  br label %401, !dbg !2801

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !2453, metadata !686), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !2446, metadata !686), !dbg !2507
  %404 = icmp ult i64 %402, %130, !dbg !2802
  br i1 %404, label %405, label %407, !dbg !2805

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2802
  store i8 92, i8* %406, align 1, !dbg !2802, !tbaa !782
  br label %407, !dbg !2802

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2446, metadata !686), !dbg !2507
  %409 = icmp ult i64 %408, %130, !dbg !2806
  br i1 %409, label %410, label %414, !dbg !2809

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2806
  %412 = or i8 %411, 48, !dbg !2806
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2806
  store i8 %412, i8* %413, align 1, !dbg !2806, !tbaa !782
  br label %414, !dbg !2806

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2809
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !2446, metadata !686), !dbg !2507
  %416 = icmp ult i64 %415, %130, !dbg !2810
  br i1 %416, label %417, label %422, !dbg !2813

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2810
  %419 = and i8 %418, 7, !dbg !2810
  %420 = or i8 %419, 48, !dbg !2810
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2810
  store i8 %420, i8* %421, align 1, !dbg !2810, !tbaa !782
  br label %422, !dbg !2810

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2813
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !2446, metadata !686), !dbg !2507
  %424 = and i8 %377, 7, !dbg !2814
  %425 = or i8 %424, 48, !dbg !2815
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !2456, metadata !686), !dbg !2588
  br label %435, !dbg !2816

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2817
  %428 = icmp eq i8 %427, 0, !dbg !2817
  br i1 %428, label %435, label %429, !dbg !2819

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2820
  br i1 %430, label %431, label %433, !dbg !2824

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2820
  store i8 92, i8* %432, align 1, !dbg !2820, !tbaa !782
  br label %433, !dbg !2820

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2461, metadata !686), !dbg !2572
  br label %435, !dbg !2825

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !2462, metadata !686), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !2461, metadata !686), !dbg !2572
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !2456, metadata !686), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !2453, metadata !686), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !2446, metadata !686), !dbg !2507
  %441 = add i64 %374, 1, !dbg !2826
  %442 = icmp ugt i64 %372, %441, !dbg !2828
  br i1 %442, label %443, label %535, !dbg !2829

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2830
  %445 = icmp ne i8 %444, 0, !dbg !2830
  %446 = and i8 %440, 1, !dbg !2830
  %447 = icmp eq i8 %446, 0, !dbg !2830
  %448 = and i1 %445, %447, !dbg !2830
  br i1 %448, label %449, label %460, !dbg !2830

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2833
  br i1 %450, label %451, label %453, !dbg !2837

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2833
  store i8 39, i8* %452, align 1, !dbg !2833, !tbaa !782
  br label %453, !dbg !2833

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2837
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !2446, metadata !686), !dbg !2507
  %455 = icmp ult i64 %454, %130, !dbg !2838
  br i1 %455, label %456, label %458, !dbg !2841

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2838
  store i8 39, i8* %457, align 1, !dbg !2838, !tbaa !782
  br label %458, !dbg !2838

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2841
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2453, metadata !686), !dbg !2515
  br label %460, !dbg !2842

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !2453, metadata !686), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !2446, metadata !686), !dbg !2507
  %463 = icmp ult i64 %461, %130, !dbg !2843
  br i1 %463, label %464, label %466, !dbg !2846

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2843
  store i8 %438, i8* %465, align 1, !dbg !2843, !tbaa !782
  br label %466, !dbg !2843

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2846
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !2445, metadata !686), !dbg !2564
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2847
  %469 = load i8, i8* %468, align 1, !dbg !2847, !tbaa !782
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !2456, metadata !686), !dbg !2588
  br label %373, !dbg !2848, !llvm.loop !2849

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2437, metadata !686), !dbg !2499
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !2463, metadata !686), !dbg !2574
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !2462, metadata !686), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2461, metadata !686), !dbg !2572
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !2456, metadata !686), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !2454, metadata !686), !dbg !2516
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2453, metadata !686), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !2439, metadata !686), !dbg !2501
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2447, metadata !686), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !2445, metadata !686), !dbg !2564
  br i1 %106, label %482, label %481, !dbg !2852

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2854

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2855

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2856
  %485 = zext i8 %484 to i64, !dbg !2856
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2857
  %487 = load i32, i32* %486, align 4, !dbg !2857, !tbaa !795
  %488 = and i8 %477, 31, !dbg !2858
  %489 = zext i8 %488 to i32, !dbg !2859
  %490 = shl i32 1, %489, !dbg !2860
  %491 = and i32 %487, %490, !dbg !2860
  %492 = icmp eq i32 %491, 0, !dbg !2860
  %493 = icmp eq i8 %156, 0, !dbg !2861
  %494 = and i1 %493, %492, !dbg !2862
  br i1 %494, label %535, label %497, !dbg !2862

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2861
  br i1 %496, label %535, label %497, !dbg !2863

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2437, metadata !686), !dbg !2499
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !2463, metadata !686), !dbg !2574
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !2456, metadata !686), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !2454, metadata !686), !dbg !2516
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !2453, metadata !686), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !2439, metadata !686), !dbg !2501
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !2447, metadata !686), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !2445, metadata !686), !dbg !2564
  br i1 %111, label %507, label %635, !dbg !2864

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2462, metadata !686), !dbg !2573
  %508 = and i8 %502, 1, !dbg !2866
  %509 = icmp eq i8 %508, 0, !dbg !2866
  %510 = and i1 %113, %509, !dbg !2866
  br i1 %510, label %511, label %527, !dbg !2866

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2868
  br i1 %512, label %513, label %515, !dbg !2872

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2868
  store i8 39, i8* %514, align 1, !dbg !2868, !tbaa !782
  br label %515, !dbg !2868

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !2446, metadata !686), !dbg !2507
  %517 = icmp ult i64 %516, %506, !dbg !2873
  br i1 %517, label %518, label %520, !dbg !2876

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2873
  store i8 36, i8* %519, align 1, !dbg !2873, !tbaa !782
  br label %520, !dbg !2873

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2876
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !2446, metadata !686), !dbg !2507
  %522 = icmp ult i64 %521, %506, !dbg !2877
  br i1 %522, label %523, label %525, !dbg !2880

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2877
  store i8 39, i8* %524, align 1, !dbg !2877, !tbaa !782
  br label %525, !dbg !2877

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2453, metadata !686), !dbg !2515
  br label %527, !dbg !2881

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !2453, metadata !686), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !2446, metadata !686), !dbg !2507
  %530 = icmp ult i64 %528, %506, !dbg !2882
  br i1 %530, label %531, label %533, !dbg !2885

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2882
  store i8 92, i8* %532, align 1, !dbg !2882, !tbaa !782
  br label %533, !dbg !2882

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2437, metadata !686), !dbg !2499
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2463, metadata !686), !dbg !2574
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2462, metadata !686), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2456, metadata !686), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2454, metadata !686), !dbg !2516
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2453, metadata !686), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2439, metadata !686), !dbg !2501
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2447, metadata !686), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2445, metadata !686), !dbg !2564
  br label %562, !dbg !2886

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2437, metadata !686), !dbg !2499
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2463, metadata !686), !dbg !2574
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2462, metadata !686), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2456, metadata !686), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2454, metadata !686), !dbg !2516
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2453, metadata !686), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2439, metadata !686), !dbg !2501
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2447, metadata !686), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2445, metadata !686), !dbg !2564
  %546 = and i8 %540, 1, !dbg !2886
  %547 = icmp ne i8 %546, 0, !dbg !2886
  %548 = and i8 %543, 1, !dbg !2886
  %549 = icmp eq i8 %548, 0, !dbg !2886
  %550 = and i1 %547, %549, !dbg !2886
  br i1 %550, label %551, label %562, !dbg !2886

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2889
  br i1 %552, label %553, label %555, !dbg !2893

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2889
  store i8 39, i8* %554, align 1, !dbg !2889, !tbaa !782
  br label %555, !dbg !2889

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2893
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !2446, metadata !686), !dbg !2507
  %557 = icmp ult i64 %556, %545, !dbg !2894
  br i1 %557, label %558, label %560, !dbg !2897

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2894
  store i8 39, i8* %559, align 1, !dbg !2894, !tbaa !782
  br label %560, !dbg !2894

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2897
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2453, metadata !686), !dbg !2515
  br label %562, !dbg !2898

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !2453, metadata !686), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !2446, metadata !686), !dbg !2507
  %572 = icmp ult i64 %570, %563, !dbg !2899
  br i1 %572, label %573, label %575, !dbg !2902

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2899
  store i8 %565, i8* %574, align 1, !dbg !2899, !tbaa !782
  br label %575, !dbg !2899

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2902
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !2446, metadata !686), !dbg !2507
  %577 = and i8 %564, 1, !dbg !2903
  %578 = icmp eq i8 %577, 0, !dbg !2903
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2455, metadata !686), !dbg !2517
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2905
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !2455, metadata !686), !dbg !2517
  br label %580, !dbg !2906

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !2437, metadata !686), !dbg !2499
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !2455, metadata !686), !dbg !2517
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2454, metadata !686), !dbg !2516
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !2453, metadata !686), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !2439, metadata !686), !dbg !2501
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2447, metadata !686), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !2445, metadata !686), !dbg !2564
  %589 = add i64 %581, 1, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !2445, metadata !686), !dbg !2564
  br label %122, !dbg !2908, !llvm.loop !2909

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2911
  %593 = and i1 %113, %592, !dbg !2913
  %594 = xor i1 %593, true, !dbg !2913
  %595 = or i1 %111, %594, !dbg !2913
  br i1 %595, label %596, label %635, !dbg !2913

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2914
  %598 = xor i1 %597, true, !dbg !2914
  %599 = and i8 %128, 1, !dbg !2916
  %600 = icmp eq i8 %599, 0, !dbg !2916
  %601 = or i1 %600, %598, !dbg !2914
  br i1 %601, label %611, label %602, !dbg !2914

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2917
  %604 = icmp eq i8 %603, 0, !dbg !2917
  br i1 %604, label %607, label %605, !dbg !2920

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2921
  br label %645, !dbg !2922

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2923
  %609 = icmp ne i64 %125, 0, !dbg !2925
  %610 = and i1 %609, %608, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2437, metadata !686), !dbg !2499
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2446, metadata !686), !dbg !2507
  br i1 %610, label %27, label %611, !dbg !2926

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2927
  %613 = and i1 %612, %111, !dbg !2929
  br i1 %613, label %614, label %630, !dbg !2929

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2448, metadata !686), !dbg !2509
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2446, metadata !686), !dbg !2507
  %615 = load i8, i8* %99, align 1, !dbg !2930, !tbaa !782
  %616 = icmp eq i8 %615, 0, !dbg !2933
  br i1 %616, label %630, label %617, !dbg !2933

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2934

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !2446, metadata !686), !dbg !2507
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !2448, metadata !686), !dbg !2509
  %622 = icmp ult i64 %621, %130, !dbg !2934
  br i1 %622, label %623, label %625, !dbg !2937

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2934
  store i8 %619, i8* %624, align 1, !dbg !2934, !tbaa !782
  br label %625, !dbg !2934

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2937
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2446, metadata !686), !dbg !2507
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2938
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2448, metadata !686), !dbg !2509
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2448, metadata !686), !dbg !2509
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2446, metadata !686), !dbg !2507
  %628 = load i8, i8* %627, align 1, !dbg !2930, !tbaa !782
  %629 = icmp eq i8 %628, 0, !dbg !2933
  br i1 %629, label %630, label %618, !dbg !2933, !llvm.loop !2939

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !2446, metadata !686), !dbg !2507
  %632 = icmp ult i64 %631, %130, !dbg !2941
  br i1 %632, label %633, label %645, !dbg !2943

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2944
  store i8 0, i8* %634, align 1, !dbg !2945, !tbaa !782
  br label %645, !dbg !2944

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !2437, metadata !686), !dbg !2499
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !2439, metadata !686), !dbg !2501
  %639 = icmp ne i32 %636, 2, !dbg !2946
  %640 = icmp eq i8 %103, 0, !dbg !2948
  %641 = or i1 %639, %640, !dbg !2949
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2440, metadata !686), !dbg !2502
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2949
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !2440, metadata !686), !dbg !2502
  %643 = and i32 %5, -3, !dbg !2950
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2951
  br label %645, !dbg !2952

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2953
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2954 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2958, metadata !686), !dbg !2962
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2959, metadata !686), !dbg !2963
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2964
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2960, metadata !686), !dbg !2965
  %4 = icmp eq i8* %3, %0, !dbg !2966
  br i1 %4, label %5, label %75, !dbg !2968

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2969
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2961, metadata !686), !dbg !2970
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2971, metadata !686), !dbg !2987
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2985, metadata !686), !dbg !2990
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2986, metadata !686), !dbg !2991
  %7 = load i8, i8* %6, align 1, !dbg !2992, !tbaa !782
  %8 = sext i8 %7 to i32, !dbg !2992
  %9 = and i32 %8, -33, !dbg !2992
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2992

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2994, metadata !686), !dbg !3008
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3006, metadata !686), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3007, metadata !686), !dbg !3013
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3014
  %12 = load i8, i8* %11, align 1, !dbg !3014, !tbaa !782
  %13 = sext i8 %12 to i32, !dbg !3014
  %14 = and i32 %13, -33, !dbg !3014
  %15 = icmp eq i32 %14, 84, !dbg !3014
  br i1 %15, label %16, label %72, !dbg !3014

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3016, metadata !686), !dbg !3029
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3027, metadata !686), !dbg !3033
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3028, metadata !686), !dbg !3034
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3035
  %18 = load i8, i8* %17, align 1, !dbg !3035, !tbaa !782
  %19 = sext i8 %18 to i32, !dbg !3035
  %20 = and i32 %19, -33, !dbg !3035
  %21 = icmp eq i32 %20, 70, !dbg !3035
  br i1 %21, label %22, label %72, !dbg !3035

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3037, metadata !686), !dbg !3049
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3047, metadata !686), !dbg !3053
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3048, metadata !686), !dbg !3054
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3055
  %24 = load i8, i8* %23, align 1, !dbg !3055, !tbaa !782
  %25 = icmp eq i8 %24, 45, !dbg !3055
  br i1 %25, label %26, label %72, !dbg !3057

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3058, metadata !686), !dbg !3069
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3067, metadata !686), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3068, metadata !686), !dbg !3074
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3075
  %28 = load i8, i8* %27, align 1, !dbg !3075, !tbaa !782
  %29 = icmp eq i8 %28, 56, !dbg !3075
  br i1 %29, label %30, label %72, !dbg !3077

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3078, metadata !686), !dbg !3088
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3086, metadata !686), !dbg !3092
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3087, metadata !686), !dbg !3093
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3094
  %32 = load i8, i8* %31, align 1, !dbg !3094, !tbaa !782
  %33 = icmp eq i8 %32, 0, !dbg !3094
  br i1 %33, label %34, label %72, !dbg !3096

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3097, !tbaa !782
  %36 = icmp eq i8 %35, 96, !dbg !3098
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.115, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.116, i64 0, i64 0), !dbg !3097
  br label %75, !dbg !3099

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2994, metadata !686), !dbg !3100
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3006, metadata !686), !dbg !3104
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3007, metadata !686), !dbg !3105
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3106
  %40 = load i8, i8* %39, align 1, !dbg !3106, !tbaa !782
  %41 = sext i8 %40 to i32, !dbg !3106
  %42 = and i32 %41, -33, !dbg !3106
  %43 = icmp eq i32 %42, 66, !dbg !3106
  br i1 %43, label %44, label %72, !dbg !3106

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3016, metadata !686), !dbg !3107
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3027, metadata !686), !dbg !3109
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3028, metadata !686), !dbg !3110
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3111
  %46 = load i8, i8* %45, align 1, !dbg !3111, !tbaa !782
  %47 = icmp eq i8 %46, 49, !dbg !3111
  br i1 %47, label %48, label %72, !dbg !3112

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3037, metadata !686), !dbg !3113
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3047, metadata !686), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3048, metadata !686), !dbg !3116
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3117
  %50 = load i8, i8* %49, align 1, !dbg !3117, !tbaa !782
  %51 = icmp eq i8 %50, 56, !dbg !3117
  br i1 %51, label %52, label %72, !dbg !3118

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3058, metadata !686), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3067, metadata !686), !dbg !3121
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3068, metadata !686), !dbg !3122
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3123
  %54 = load i8, i8* %53, align 1, !dbg !3123, !tbaa !782
  %55 = icmp eq i8 %54, 48, !dbg !3123
  br i1 %55, label %56, label %72, !dbg !3124

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3078, metadata !686), !dbg !3125
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3086, metadata !686), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3087, metadata !686), !dbg !3128
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3129
  %58 = load i8, i8* %57, align 1, !dbg !3129, !tbaa !782
  %59 = icmp eq i8 %58, 51, !dbg !3129
  br i1 %59, label %60, label %72, !dbg !3130

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3131, metadata !686), !dbg !3140
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3138, metadata !686), !dbg !3144
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3139, metadata !686), !dbg !3145
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3146
  %62 = load i8, i8* %61, align 1, !dbg !3146, !tbaa !782
  %63 = icmp eq i8 %62, 48, !dbg !3146
  br i1 %63, label %64, label %72, !dbg !3148

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3149, metadata !686), !dbg !3157
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3155, metadata !686), !dbg !3161
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3156, metadata !686), !dbg !3162
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3163
  %66 = load i8, i8* %65, align 1, !dbg !3163, !tbaa !782
  %67 = icmp eq i8 %66, 0, !dbg !3163
  br i1 %67, label %68, label %72, !dbg !3165

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3166, !tbaa !782
  %70 = icmp eq i8 %69, 96, !dbg !3167
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.117, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.118, i64 0, i64 0), !dbg !3166
  br label %75, !dbg !3168

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3169
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.114, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.113, i64 0, i64 0), !dbg !3170
  br label %75, !dbg !3171

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3172
}

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3173 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3177, metadata !686), !dbg !3180
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3178, metadata !686), !dbg !3181
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3179, metadata !686), !dbg !3182
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3183, metadata !686) #12, !dbg !3196
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3188, metadata !686) #12, !dbg !3198
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3189, metadata !686) #12, !dbg !3199
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3190, metadata !686) #12, !dbg !3200
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3201
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3201
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3191, metadata !686) #12, !dbg !3202
  %6 = tail call i32* @__errno_location() #17, !dbg !3203
  %7 = load i32, i32* %6, align 4, !dbg !3203, !tbaa !795
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3192, metadata !686) #12, !dbg !3204
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3205
  %9 = load i32, i32* %8, align 4, !dbg !3205, !tbaa !2369
  %10 = or i32 %9, 1, !dbg !3206
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3193, metadata !686) #12, !dbg !3207
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3208
  %12 = load i32, i32* %11, align 8, !dbg !3208, !tbaa !2309
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3209
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3210
  %15 = load i8*, i8** %14, align 8, !dbg !3210, !tbaa !2395
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3211
  %17 = load i8*, i8** %16, align 8, !dbg !3211, !tbaa !2398
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #12, !dbg !3212
  %19 = add i64 %18, 1, !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3194, metadata !686) #12, !dbg !3214
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3215, metadata !686) #12, !dbg !3220
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !3222
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3195, metadata !686) #12, !dbg !3223
  %21 = load i32, i32* %11, align 8, !dbg !3224, !tbaa !2309
  %22 = load i8*, i8** %14, align 8, !dbg !3225, !tbaa !2395
  %23 = load i8*, i8** %16, align 8, !dbg !3226, !tbaa !2398
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #12, !dbg !3227
  store i32 %7, i32* %6, align 4, !dbg !3228, !tbaa !795
  ret i8* %20, !dbg !3229
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3184 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3183, metadata !686), !dbg !3230
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3188, metadata !686), !dbg !3231
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3189, metadata !686), !dbg !3232
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3190, metadata !686), !dbg !3233
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3234
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3234
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3191, metadata !686), !dbg !3235
  %7 = tail call i32* @__errno_location() #17, !dbg !3236
  %8 = load i32, i32* %7, align 4, !dbg !3236, !tbaa !795
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3192, metadata !686), !dbg !3237
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3238
  %10 = load i32, i32* %9, align 4, !dbg !3238, !tbaa !2369
  %11 = icmp ne i64* %2, null, !dbg !3239
  %12 = xor i1 %11, true, !dbg !3239
  %13 = zext i1 %12 to i32, !dbg !3239
  %14 = or i32 %10, %13, !dbg !3240
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3193, metadata !686), !dbg !3241
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3242
  %16 = load i32, i32* %15, align 8, !dbg !3242, !tbaa !2309
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3243
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3244
  %19 = load i8*, i8** %18, align 8, !dbg !3244, !tbaa !2395
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3245
  %21 = load i8*, i8** %20, align 8, !dbg !3245, !tbaa !2398
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3246
  %23 = add i64 %22, 1, !dbg !3247
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3194, metadata !686), !dbg !3248
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3215, metadata !686) #12, !dbg !3249
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !3251
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3195, metadata !686), !dbg !3252
  %25 = load i32, i32* %15, align 8, !dbg !3253, !tbaa !2309
  %26 = load i8*, i8** %18, align 8, !dbg !3254, !tbaa !2395
  %27 = load i8*, i8** %20, align 8, !dbg !3255, !tbaa !2398
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3256
  store i32 %8, i32* %7, align 4, !dbg !3257, !tbaa !795
  br i1 %11, label %29, label %30, !dbg !3258

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3259, !tbaa !777
  br label %30, !dbg !3261

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3262
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3263 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3267, !tbaa !693
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3265, metadata !686), !dbg !3268
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3266, metadata !686), !dbg !3269
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3266, metadata !686), !dbg !3269
  %2 = load i32, i32* @nslots, align 4, !dbg !3270, !tbaa !795
  %3 = icmp sgt i32 %2, 1, !dbg !3273
  br i1 %3, label %4, label %13, !dbg !3274

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3275

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3266, metadata !686), !dbg !3269
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3275
  %8 = load i8*, i8** %7, align 8, !dbg !3275, !tbaa !3276
  tail call void @free(i8* %8) #12, !dbg !3278
  %9 = add nuw i64 %6, 1, !dbg !3279
  %10 = load i32, i32* @nslots, align 4, !dbg !3270, !tbaa !795
  %11 = sext i32 %10 to i64, !dbg !3273
  %12 = icmp slt i64 %9, %11, !dbg !3273
  br i1 %12, label %5, label %13, !dbg !3274, !llvm.loop !3280

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3282
  %15 = load i8*, i8** %14, align 8, !dbg !3282, !tbaa !3276
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3284
  br i1 %16, label %18, label %17, !dbg !3285

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #12, !dbg !3286
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3288, !tbaa !3289
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3290, !tbaa !3276
  br label %18, !dbg !3291

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3292
  br i1 %19, label %22, label %20, !dbg !3294

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !3295
  tail call void @free(i8* %21) #12, !dbg !3297
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3298, !tbaa !693
  br label %22, !dbg !3299

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !3300, !tbaa !795
  ret void, !dbg !3301
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3302 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3306, metadata !686), !dbg !3308
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3307, metadata !686), !dbg !3309
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3310
  ret i8* %3, !dbg !3311
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3312 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3316, metadata !686), !dbg !3330
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3317, metadata !686), !dbg !3331
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3318, metadata !686), !dbg !3332
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3319, metadata !686), !dbg !3333
  %5 = tail call i32* @__errno_location() #17, !dbg !3334
  %6 = load i32, i32* %5, align 4, !dbg !3334, !tbaa !795
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3320, metadata !686), !dbg !3335
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3336, !tbaa !693
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3321, metadata !686), !dbg !3337
  %8 = icmp slt i32 %0, 0, !dbg !3338
  br i1 %8, label %9, label %10, !dbg !3340

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3341
  unreachable, !dbg !3341

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3342, !tbaa !795
  %12 = icmp sgt i32 %11, %0, !dbg !3343
  br i1 %12, label %34, label %13, !dbg !3344

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3345
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3346
  br i1 %15, label %16, label %17, !dbg !3348

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3349
  unreachable, !dbg !3349

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3350
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3350
  %20 = add nsw i32 %0, 1, !dbg !3351
  %21 = sext i32 %20 to i64, !dbg !3352
  %22 = shl nsw i64 %21, 4, !dbg !3353
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !3354
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3354
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3321, metadata !686), !dbg !3337
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3355, !tbaa !693
  br i1 %14, label %25, label %26, !dbg !3356

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3357, !tbaa.struct !3359
  br label %26, !dbg !3360

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3361, !tbaa !795
  %28 = sext i32 %27 to i64, !dbg !3362
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3362
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3363
  %31 = sub nsw i32 %20, %27, !dbg !3364
  %32 = sext i32 %31 to i64, !dbg !3365
  %33 = shl nsw i64 %32, 4, !dbg !3366
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3363
  store i32 %20, i32* @nslots, align 4, !dbg !3367, !tbaa !795
  br label %34, !dbg !3368

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3321, metadata !686), !dbg !3337
  %36 = sext i32 %0 to i64, !dbg !3369
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3370
  %38 = load i64, i64* %37, align 8, !dbg !3370, !tbaa !3289
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3325, metadata !686), !dbg !3371
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3372
  %40 = load i8*, i8** %39, align 8, !dbg !3372, !tbaa !3276
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3327, metadata !686), !dbg !3373
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3374
  %42 = load i32, i32* %41, align 4, !dbg !3374, !tbaa !2369
  %43 = or i32 %42, 1, !dbg !3375
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3328, metadata !686), !dbg !3376
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3377
  %45 = load i32, i32* %44, align 8, !dbg !3377, !tbaa !2309
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3378
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3379
  %48 = load i8*, i8** %47, align 8, !dbg !3379, !tbaa !2395
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3380
  %50 = load i8*, i8** %49, align 8, !dbg !3380, !tbaa !2398
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3381
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3329, metadata !686), !dbg !3382
  %52 = icmp ugt i64 %38, %51, !dbg !3383
  br i1 %52, label %63, label %53, !dbg !3385

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3386
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3325, metadata !686), !dbg !3371
  store i64 %54, i64* %37, align 8, !dbg !3388, !tbaa !3289
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3389
  br i1 %55, label %57, label %56, !dbg !3391

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !3392
  br label %57, !dbg !3392

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3215, metadata !686) #12, !dbg !3393
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !3395
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3327, metadata !686), !dbg !3373
  store i8* %58, i8** %39, align 8, !dbg !3396, !tbaa !3276
  %59 = load i32, i32* %44, align 8, !dbg !3397, !tbaa !2309
  %60 = load i8*, i8** %47, align 8, !dbg !3398, !tbaa !2395
  %61 = load i8*, i8** %49, align 8, !dbg !3399, !tbaa !2398
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3400
  br label %63, !dbg !3401

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3327, metadata !686), !dbg !3373
  store i32 %6, i32* %5, align 4, !dbg !3402, !tbaa !795
  ret i8* %64, !dbg !3403
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3404 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3408, metadata !686), !dbg !3411
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3409, metadata !686), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3410, metadata !686), !dbg !3413
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3414
  ret i8* %4, !dbg !3415
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3416 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3420, metadata !686), !dbg !3421
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3306, metadata !686) #12, !dbg !3422
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3307, metadata !686) #12, !dbg !3424
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !3425
  ret i8* %2, !dbg !3426
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3427 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3431, metadata !686), !dbg !3433
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3432, metadata !686), !dbg !3434
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3408, metadata !686) #12, !dbg !3435
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3409, metadata !686) #12, !dbg !3437
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3410, metadata !686) #12, !dbg !3438
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !3439
  ret i8* %3, !dbg !3440
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3441 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3449, metadata !3455), !dbg !3456
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3445, metadata !686), !dbg !3458
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3446, metadata !686), !dbg !3459
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3447, metadata !686), !dbg !3460
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3461
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3461
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3448, metadata !686), !dbg !3462
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3454, metadata !686) #12, !dbg !3463
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3464
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3464
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3449, metadata !686) #12, !dbg !3456
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3449, metadata !3465) #12, !dbg !3456
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3456
  %8 = icmp eq i32 %1, 10, !dbg !3466
  br i1 %8, label %9, label %10, !dbg !3468

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3469, !noalias !3470
  unreachable, !dbg !3469

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3449, metadata !3465) #12, !dbg !3456
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3473
  store i32 %1, i32* %11, align 8, !dbg !3473, !alias.scope !3470
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3473
  %13 = bitcast i32* %12 to i8*, !dbg !3473
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !3473
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3474
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3448, metadata !686), !dbg !3462
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3475
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3476
  ret i8* %14, !dbg !3477
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3478 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3449, metadata !3455), !dbg !3487
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3482, metadata !686), !dbg !3489
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3483, metadata !686), !dbg !3490
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3484, metadata !686), !dbg !3491
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3485, metadata !686), !dbg !3492
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3493
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3493
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3486, metadata !686), !dbg !3494
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3454, metadata !686) #12, !dbg !3495
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3496
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3496
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3449, metadata !686) #12, !dbg !3487
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3449, metadata !3465) #12, !dbg !3487
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3487
  %9 = icmp eq i32 %1, 10, !dbg !3497
  br i1 %9, label %10, label %11, !dbg !3498

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3499, !noalias !3500
  unreachable, !dbg !3499

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3449, metadata !3465) #12, !dbg !3487
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3503
  store i32 %1, i32* %12, align 8, !dbg !3503, !alias.scope !3500
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3503
  %14 = bitcast i32* %13 to i8*, !dbg !3503
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #12, !dbg !3503
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3504
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3486, metadata !686), !dbg !3494
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3505
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3506
  ret i8* %15, !dbg !3507
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3508 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3449, metadata !3455), !dbg !3514
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3512, metadata !686), !dbg !3517
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3513, metadata !686), !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3445, metadata !686) #12, !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3446, metadata !686) #12, !dbg !3520
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3447, metadata !686) #12, !dbg !3521
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3522
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3522
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3448, metadata !686) #12, !dbg !3523
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3454, metadata !686) #12, !dbg !3524
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3525
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !3525
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3449, metadata !686) #12, !dbg !3514
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3449, metadata !3465) #12, !dbg !3514
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3514
  %7 = icmp eq i32 %0, 10, !dbg !3526
  br i1 %7, label %8, label %9, !dbg !3527

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3528, !noalias !3529
  unreachable, !dbg !3528

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3449, metadata !3465) #12, !dbg !3514
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3532
  store i32 %0, i32* %10, align 8, !dbg !3532, !alias.scope !3529
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3532
  %12 = bitcast i32* %11 to i8*, !dbg !3532
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #12, !dbg !3532
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !3533
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3448, metadata !686) #12, !dbg !3523
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3534
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3535
  ret i8* %13, !dbg !3536
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3537 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3449, metadata !3455), !dbg !3544
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3541, metadata !686), !dbg !3547
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3542, metadata !686), !dbg !3548
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3543, metadata !686), !dbg !3549
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3482, metadata !686) #12, !dbg !3550
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3483, metadata !686) #12, !dbg !3551
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3484, metadata !686) #12, !dbg !3552
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3485, metadata !686) #12, !dbg !3553
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3554
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3554
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3486, metadata !686) #12, !dbg !3555
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3454, metadata !686) #12, !dbg !3556
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3557
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3557
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3449, metadata !686) #12, !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3449, metadata !3465) #12, !dbg !3544
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3544
  %8 = icmp eq i32 %0, 10, !dbg !3558
  br i1 %8, label %9, label %10, !dbg !3559

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3560, !noalias !3561
  unreachable, !dbg !3560

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3449, metadata !3465) #12, !dbg !3544
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3564
  store i32 %0, i32* %11, align 8, !dbg !3564, !alias.scope !3561
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3564
  %13 = bitcast i32* %12 to i8*, !dbg !3564
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !3564
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3565
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3486, metadata !686) #12, !dbg !3555
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #12, !dbg !3566
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3567
  ret i8* %14, !dbg !3568
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3569 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3573, metadata !686), !dbg !3577
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3574, metadata !686), !dbg !3578
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3575, metadata !686), !dbg !3579
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3580
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3580
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3581, !tbaa.struct !3582
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3576, metadata !686), !dbg !3583
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2328, metadata !686), !dbg !3584
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2329, metadata !686), !dbg !3586
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2330, metadata !686), !dbg !3587
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2331, metadata !686), !dbg !3588
  %6 = lshr i8 %2, 5, !dbg !3589
  %7 = zext i8 %6 to i64, !dbg !3589
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3590
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2332, metadata !686), !dbg !3591
  %9 = and i8 %2, 31, !dbg !3592
  %10 = zext i8 %9 to i32, !dbg !3593
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2334, metadata !686), !dbg !3594
  %11 = load i32, i32* %8, align 4, !dbg !3595, !tbaa !795
  %12 = lshr i32 %11, %10, !dbg !3596
  %13 = and i32 %12, 1, !dbg !3597
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2335, metadata !686), !dbg !3598
  %14 = xor i32 %13, 1, !dbg !3599
  %15 = shl i32 %14, %10, !dbg !3600
  %16 = xor i32 %15, %11, !dbg !3601
  store i32 %16, i32* %8, align 4, !dbg !3601, !tbaa !795
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3576, metadata !686), !dbg !3583
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3602
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3603
  ret i8* %17, !dbg !3604
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3605 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3609, metadata !686), !dbg !3611
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3610, metadata !686), !dbg !3612
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3573, metadata !686) #12, !dbg !3613
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3574, metadata !686) #12, !dbg !3615
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3575, metadata !686) #12, !dbg !3616
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3617
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3617
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3618, !tbaa.struct !3582
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3576, metadata !686) #12, !dbg !3619
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2328, metadata !686) #12, !dbg !3620
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2329, metadata !686) #12, !dbg !3622
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2330, metadata !686) #12, !dbg !3623
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2331, metadata !686) #12, !dbg !3624
  %5 = lshr i8 %1, 5, !dbg !3625
  %6 = zext i8 %5 to i64, !dbg !3625
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3626
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2332, metadata !686) #12, !dbg !3627
  %8 = and i8 %1, 31, !dbg !3628
  %9 = zext i8 %8 to i32, !dbg !3629
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2334, metadata !686) #12, !dbg !3630
  %10 = load i32, i32* %7, align 4, !dbg !3631, !tbaa !795
  %11 = lshr i32 %10, %9, !dbg !3632
  %12 = and i32 %11, 1, !dbg !3633
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2335, metadata !686) #12, !dbg !3634
  %13 = xor i32 %12, 1, !dbg !3635
  %14 = shl i32 %13, %9, !dbg !3636
  %15 = xor i32 %14, %10, !dbg !3637
  store i32 %15, i32* %7, align 4, !dbg !3637, !tbaa !795
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3576, metadata !686) #12, !dbg !3619
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3638
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3639
  ret i8* %16, !dbg !3640
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3641 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3643, metadata !686), !dbg !3644
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3609, metadata !686) #12, !dbg !3645
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3610, metadata !686) #12, !dbg !3647
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3573, metadata !686) #12, !dbg !3648
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3574, metadata !686) #12, !dbg !3650
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3575, metadata !686) #12, !dbg !3651
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3652
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3652
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3653, !tbaa.struct !3582
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3576, metadata !686) #12, !dbg !3654
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2328, metadata !686) #12, !dbg !3655
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2329, metadata !686) #12, !dbg !3657
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2330, metadata !686) #12, !dbg !3658
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2331, metadata !686) #12, !dbg !3659
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3660
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2332, metadata !686) #12, !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2334, metadata !686) #12, !dbg !3662
  %5 = load i32, i32* %4, align 4, !dbg !3663, !tbaa !795
  %6 = or i32 %5, 67108864, !dbg !3664
  store i32 %6, i32* %4, align 4, !dbg !3664, !tbaa !795
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3576, metadata !686) #12, !dbg !3654
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !3665
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3666
  ret i8* %7, !dbg !3667
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3668 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3670, metadata !686), !dbg !3672
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3671, metadata !686), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3573, metadata !686) #12, !dbg !3674
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3574, metadata !686) #12, !dbg !3676
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3575, metadata !686) #12, !dbg !3677
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3678
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3678
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3679, !tbaa.struct !3582
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3576, metadata !686) #12, !dbg !3680
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2328, metadata !686) #12, !dbg !3681
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2329, metadata !686) #12, !dbg !3683
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2330, metadata !686) #12, !dbg !3684
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2331, metadata !686) #12, !dbg !3685
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3686
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2332, metadata !686) #12, !dbg !3687
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2334, metadata !686) #12, !dbg !3688
  %6 = load i32, i32* %5, align 4, !dbg !3689, !tbaa !795
  %7 = or i32 %6, 67108864, !dbg !3690
  store i32 %7, i32* %5, align 4, !dbg !3690, !tbaa !795
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3576, metadata !686) #12, !dbg !3680
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !3691
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3692
  ret i8* %8, !dbg !3693
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3694 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3449, metadata !3455), !dbg !3700
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3696, metadata !686), !dbg !3702
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3697, metadata !686), !dbg !3703
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3698, metadata !686), !dbg !3704
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3705
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3705
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3454, metadata !686) #12, !dbg !3706
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3707
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3707
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3449, metadata !686) #12, !dbg !3700
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3449, metadata !3465) #12, !dbg !3700
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3700
  %9 = icmp eq i32 %1, 10, !dbg !3708
  br i1 %9, label %10, label %11, !dbg !3709

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3710, !noalias !3711
  unreachable, !dbg !3710

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3449, metadata !3465) #12, !dbg !3700
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3714
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3714
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3715
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3716
  store i32 %1, i32* %13, align 8, !dbg !3716
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3716
  %15 = bitcast i32* %14 to i8*, !dbg !3716
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3699, metadata !686), !dbg !3717
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2328, metadata !686), !dbg !3718
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2329, metadata !686), !dbg !3720
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2330, metadata !686), !dbg !3721
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2331, metadata !686), !dbg !3722
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3723
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2332, metadata !686), !dbg !3724
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2334, metadata !686), !dbg !3725
  %17 = load i32, i32* %16, align 4, !dbg !3726, !tbaa !795
  %18 = or i32 %17, 67108864, !dbg !3727
  store i32 %18, i32* %16, align 4, !dbg !3727, !tbaa !795
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3699, metadata !686), !dbg !3717
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3728
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3729
  ret i8* %19, !dbg !3730
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3731 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3735, metadata !686), !dbg !3739
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3736, metadata !686), !dbg !3740
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3737, metadata !686), !dbg !3741
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3738, metadata !686), !dbg !3742
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3743, metadata !686) #12, !dbg !3753
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3748, metadata !686) #12, !dbg !3755
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3749, metadata !686) #12, !dbg !3756
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3750, metadata !686) #12, !dbg !3757
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3751, metadata !686) #12, !dbg !3758
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3759
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3759
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3760, !tbaa.struct !3582
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3752, metadata !686) #12, !dbg !3761
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2377, metadata !686) #12, !dbg !3762
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2378, metadata !686) #12, !dbg !3764
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2379, metadata !686) #12, !dbg !3765
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2377, metadata !686) #12, !dbg !3762
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2377, metadata !686) #12, !dbg !3762
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3766
  store i32 10, i32* %7, align 8, !dbg !3767, !tbaa !2309
  %8 = icmp ne i8* %1, null, !dbg !3768
  %9 = icmp ne i8* %2, null, !dbg !3769
  %10 = and i1 %8, %9, !dbg !3770
  br i1 %10, label %12, label %11, !dbg !3770

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3771
  unreachable, !dbg !3771

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3772
  store i8* %1, i8** %13, align 8, !dbg !3773, !tbaa !2395
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3774
  store i8* %2, i8** %14, align 8, !dbg !3775, !tbaa !2398
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3752, metadata !686) #12, !dbg !3761
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3776
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3777
  ret i8* %15, !dbg !3778
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3744 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3743, metadata !686), !dbg !3779
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3748, metadata !686), !dbg !3780
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3749, metadata !686), !dbg !3781
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3750, metadata !686), !dbg !3782
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3751, metadata !686), !dbg !3783
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3784
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3784
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3785, !tbaa.struct !3582
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3752, metadata !686), !dbg !3786
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2377, metadata !686) #12, !dbg !3787
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2378, metadata !686) #12, !dbg !3789
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2379, metadata !686) #12, !dbg !3790
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2377, metadata !686) #12, !dbg !3787
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2377, metadata !686) #12, !dbg !3787
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3791
  store i32 10, i32* %8, align 8, !dbg !3792, !tbaa !2309
  %9 = icmp ne i8* %1, null, !dbg !3793
  %10 = icmp ne i8* %2, null, !dbg !3794
  %11 = and i1 %9, %10, !dbg !3795
  br i1 %11, label %13, label %12, !dbg !3795

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3796
  unreachable, !dbg !3796

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3797
  store i8* %1, i8** %14, align 8, !dbg !3798, !tbaa !2395
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3799
  store i8* %2, i8** %15, align 8, !dbg !3800, !tbaa !2398
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3752, metadata !686), !dbg !3786
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3801
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3802
  ret i8* %16, !dbg !3803
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3804 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3808, metadata !686), !dbg !3811
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3809, metadata !686), !dbg !3812
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3810, metadata !686), !dbg !3813
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3735, metadata !686) #12, !dbg !3814
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3736, metadata !686) #12, !dbg !3816
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3737, metadata !686) #12, !dbg !3817
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3738, metadata !686) #12, !dbg !3818
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3743, metadata !686) #12, !dbg !3819
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3748, metadata !686) #12, !dbg !3821
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3749, metadata !686) #12, !dbg !3822
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3750, metadata !686) #12, !dbg !3823
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3751, metadata !686) #12, !dbg !3824
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3825
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3825
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3826, !tbaa.struct !3582
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3752, metadata !686) #12, !dbg !3827
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2377, metadata !686) #12, !dbg !3828
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2378, metadata !686) #12, !dbg !3830
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2379, metadata !686) #12, !dbg !3831
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2377, metadata !686) #12, !dbg !3828
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2377, metadata !686) #12, !dbg !3828
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3832
  store i32 10, i32* %6, align 8, !dbg !3833, !tbaa !2309
  %7 = icmp ne i8* %0, null, !dbg !3834
  %8 = icmp ne i8* %1, null, !dbg !3835
  %9 = and i1 %7, %8, !dbg !3836
  br i1 %9, label %11, label %10, !dbg !3836

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3837
  unreachable, !dbg !3837

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3838
  store i8* %0, i8** %12, align 8, !dbg !3839, !tbaa !2395
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3840
  store i8* %1, i8** %13, align 8, !dbg !3841, !tbaa !2398
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3752, metadata !686) #12, !dbg !3827
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3842
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3843
  ret i8* %14, !dbg !3844
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3845 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3849, metadata !686), !dbg !3853
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3850, metadata !686), !dbg !3854
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3851, metadata !686), !dbg !3855
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3852, metadata !686), !dbg !3856
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3743, metadata !686) #12, !dbg !3857
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3748, metadata !686) #12, !dbg !3859
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3749, metadata !686) #12, !dbg !3860
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3750, metadata !686) #12, !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3751, metadata !686) #12, !dbg !3862
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3863
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3863
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3864, !tbaa.struct !3582
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3752, metadata !686) #12, !dbg !3865
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2377, metadata !686) #12, !dbg !3866
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2378, metadata !686) #12, !dbg !3868
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2379, metadata !686) #12, !dbg !3869
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2377, metadata !686) #12, !dbg !3866
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2377, metadata !686) #12, !dbg !3866
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3870
  store i32 10, i32* %7, align 8, !dbg !3871, !tbaa !2309
  %8 = icmp ne i8* %0, null, !dbg !3872
  %9 = icmp ne i8* %1, null, !dbg !3873
  %10 = and i1 %8, %9, !dbg !3874
  br i1 %10, label %12, label %11, !dbg !3874

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3875
  unreachable, !dbg !3875

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3876
  store i8* %0, i8** %13, align 8, !dbg !3877, !tbaa !2395
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3878
  store i8* %1, i8** %14, align 8, !dbg !3879, !tbaa !2398
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3752, metadata !686) #12, !dbg !3865
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3880
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3881
  ret i8* %15, !dbg !3882
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3883 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3887, metadata !686), !dbg !3890
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3888, metadata !686), !dbg !3891
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3889, metadata !686), !dbg !3892
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3893
  ret i8* %4, !dbg !3894
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3895 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3899, metadata !686), !dbg !3901
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3900, metadata !686), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3887, metadata !686) #12, !dbg !3903
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3888, metadata !686) #12, !dbg !3905
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3889, metadata !686) #12, !dbg !3906
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3907
  ret i8* %3, !dbg !3908
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3909 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3913, metadata !686), !dbg !3915
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3914, metadata !686), !dbg !3916
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3887, metadata !686) #12, !dbg !3917
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3888, metadata !686) #12, !dbg !3919
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3889, metadata !686) #12, !dbg !3920
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3921
  ret i8* %3, !dbg !3922
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3923 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3927, metadata !686), !dbg !3928
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3913, metadata !686) #12, !dbg !3929
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3914, metadata !686) #12, !dbg !3931
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3887, metadata !686) #12, !dbg !3932
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3888, metadata !686) #12, !dbg !3934
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3889, metadata !686) #12, !dbg !3935
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3936
  ret i8* %2, !dbg !3937
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3938 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3982, metadata !686), !dbg !3988
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3983, metadata !686), !dbg !3989
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3984, metadata !686), !dbg !3990
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3985, metadata !686), !dbg !3991
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3986, metadata !686), !dbg !3992
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3987, metadata !686), !dbg !3993
  %7 = icmp eq i8* %1, null, !dbg !3994
  br i1 %7, label %10, label %8, !dbg !3996

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.131, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3997
  br label %12, !dbg !3997

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.132, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3998
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.133, i64 0, i64 0), i32 5) #12, !dbg !3999
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12, !dbg !3999
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.134, i64 0, i64 0), i32 5) #12, !dbg !4000
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #12, !dbg !4000
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
  ], !dbg !4001

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !4002
  unreachable, !dbg !4002

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.135, i64 0, i64 0), i32 5) #12, !dbg !4004
  %20 = load i8*, i8** %4, align 8, !dbg !4004, !tbaa !693
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !4004
  br label %146, !dbg !4005

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.136, i64 0, i64 0), i32 5) #12, !dbg !4006
  %24 = load i8*, i8** %4, align 8, !dbg !4006, !tbaa !693
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4006
  %26 = load i8*, i8** %25, align 8, !dbg !4006, !tbaa !693
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !4006
  br label %146, !dbg !4007

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.137, i64 0, i64 0), i32 5) #12, !dbg !4008
  %30 = load i8*, i8** %4, align 8, !dbg !4008, !tbaa !693
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4008
  %32 = load i8*, i8** %31, align 8, !dbg !4008, !tbaa !693
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4008
  %34 = load i8*, i8** %33, align 8, !dbg !4008, !tbaa !693
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !4008
  br label %146, !dbg !4009

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.138, i64 0, i64 0), i32 5) #12, !dbg !4010
  %38 = load i8*, i8** %4, align 8, !dbg !4010, !tbaa !693
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4010
  %40 = load i8*, i8** %39, align 8, !dbg !4010, !tbaa !693
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4010
  %42 = load i8*, i8** %41, align 8, !dbg !4010, !tbaa !693
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4010
  %44 = load i8*, i8** %43, align 8, !dbg !4010, !tbaa !693
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !4010
  br label %146, !dbg !4011

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.139, i64 0, i64 0), i32 5) #12, !dbg !4012
  %48 = load i8*, i8** %4, align 8, !dbg !4012, !tbaa !693
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4012
  %50 = load i8*, i8** %49, align 8, !dbg !4012, !tbaa !693
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4012
  %52 = load i8*, i8** %51, align 8, !dbg !4012, !tbaa !693
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4012
  %54 = load i8*, i8** %53, align 8, !dbg !4012, !tbaa !693
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4012
  %56 = load i8*, i8** %55, align 8, !dbg !4012, !tbaa !693
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !4012
  br label %146, !dbg !4013

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.140, i64 0, i64 0), i32 5) #12, !dbg !4014
  %60 = load i8*, i8** %4, align 8, !dbg !4014, !tbaa !693
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4014
  %62 = load i8*, i8** %61, align 8, !dbg !4014, !tbaa !693
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4014
  %64 = load i8*, i8** %63, align 8, !dbg !4014, !tbaa !693
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4014
  %66 = load i8*, i8** %65, align 8, !dbg !4014, !tbaa !693
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4014
  %68 = load i8*, i8** %67, align 8, !dbg !4014, !tbaa !693
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4014
  %70 = load i8*, i8** %69, align 8, !dbg !4014, !tbaa !693
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !4014
  br label %146, !dbg !4015

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.141, i64 0, i64 0), i32 5) #12, !dbg !4016
  %74 = load i8*, i8** %4, align 8, !dbg !4016, !tbaa !693
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4016
  %76 = load i8*, i8** %75, align 8, !dbg !4016, !tbaa !693
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4016
  %78 = load i8*, i8** %77, align 8, !dbg !4016, !tbaa !693
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4016
  %80 = load i8*, i8** %79, align 8, !dbg !4016, !tbaa !693
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4016
  %82 = load i8*, i8** %81, align 8, !dbg !4016, !tbaa !693
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4016
  %84 = load i8*, i8** %83, align 8, !dbg !4016, !tbaa !693
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4016
  %86 = load i8*, i8** %85, align 8, !dbg !4016, !tbaa !693
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !4016
  br label %146, !dbg !4017

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.142, i64 0, i64 0), i32 5) #12, !dbg !4018
  %90 = load i8*, i8** %4, align 8, !dbg !4018, !tbaa !693
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4018
  %92 = load i8*, i8** %91, align 8, !dbg !4018, !tbaa !693
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4018
  %94 = load i8*, i8** %93, align 8, !dbg !4018, !tbaa !693
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4018
  %96 = load i8*, i8** %95, align 8, !dbg !4018, !tbaa !693
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4018
  %98 = load i8*, i8** %97, align 8, !dbg !4018, !tbaa !693
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4018
  %100 = load i8*, i8** %99, align 8, !dbg !4018, !tbaa !693
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4018
  %102 = load i8*, i8** %101, align 8, !dbg !4018, !tbaa !693
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4018
  %104 = load i8*, i8** %103, align 8, !dbg !4018, !tbaa !693
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !4018
  br label %146, !dbg !4019

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.143, i64 0, i64 0), i32 5) #12, !dbg !4020
  %108 = load i8*, i8** %4, align 8, !dbg !4020, !tbaa !693
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4020
  %110 = load i8*, i8** %109, align 8, !dbg !4020, !tbaa !693
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4020
  %112 = load i8*, i8** %111, align 8, !dbg !4020, !tbaa !693
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4020
  %114 = load i8*, i8** %113, align 8, !dbg !4020, !tbaa !693
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4020
  %116 = load i8*, i8** %115, align 8, !dbg !4020, !tbaa !693
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4020
  %118 = load i8*, i8** %117, align 8, !dbg !4020, !tbaa !693
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4020
  %120 = load i8*, i8** %119, align 8, !dbg !4020, !tbaa !693
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4020
  %122 = load i8*, i8** %121, align 8, !dbg !4020, !tbaa !693
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4020
  %124 = load i8*, i8** %123, align 8, !dbg !4020, !tbaa !693
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !4020
  br label %146, !dbg !4021

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.144, i64 0, i64 0), i32 5) #12, !dbg !4022
  %128 = load i8*, i8** %4, align 8, !dbg !4022, !tbaa !693
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4022
  %130 = load i8*, i8** %129, align 8, !dbg !4022, !tbaa !693
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4022
  %132 = load i8*, i8** %131, align 8, !dbg !4022, !tbaa !693
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4022
  %134 = load i8*, i8** %133, align 8, !dbg !4022, !tbaa !693
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4022
  %136 = load i8*, i8** %135, align 8, !dbg !4022, !tbaa !693
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4022
  %138 = load i8*, i8** %137, align 8, !dbg !4022, !tbaa !693
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4022
  %140 = load i8*, i8** %139, align 8, !dbg !4022, !tbaa !693
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4022
  %142 = load i8*, i8** %141, align 8, !dbg !4022, !tbaa !693
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4022
  %144 = load i8*, i8** %143, align 8, !dbg !4022, !tbaa !693
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !4022
  br label %146, !dbg !4023

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4024
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4025 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4029, metadata !686), !dbg !4035
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4030, metadata !686), !dbg !4036
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4031, metadata !686), !dbg !4037
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4032, metadata !686), !dbg !4038
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4033, metadata !686), !dbg !4039
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4034, metadata !686), !dbg !4040
  br label %6, !dbg !4041

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4034, metadata !686), !dbg !4040
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4043
  %9 = load i8*, i8** %8, align 8, !dbg !4043, !tbaa !693
  %10 = icmp eq i8* %9, null, !dbg !4045
  %11 = add i64 %7, 1, !dbg !4046
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4034, metadata !686), !dbg !4040
  br i1 %10, label %12, label %6, !dbg !4045, !llvm.loop !4047

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4049
  ret void, !dbg !4050
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4051 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4062, metadata !686), !dbg !4070
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4063, metadata !686), !dbg !4071
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4064, metadata !686), !dbg !4072
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4065, metadata !686), !dbg !4073
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4066, metadata !686), !dbg !4074
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4075
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !4075
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4068, metadata !686), !dbg !4076
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4067, metadata !686), !dbg !4077
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4067, metadata !686), !dbg !4077
  %11 = load i32, i32* %8, align 8, !dbg !4078
  %12 = icmp ult i32 %11, 41, !dbg !4078
  br i1 %12, label %13, label %18, !dbg !4078

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4078
  %15 = sext i32 %11 to i64, !dbg !4078
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4078
  %17 = add i32 %11, 8, !dbg !4078
  store i32 %17, i32* %8, align 8, !dbg !4078
  br label %21, !dbg !4078

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4078
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4078
  store i8* %20, i8** %10, align 8, !dbg !4078
  br label %21, !dbg !4078

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4078
  %25 = load i8*, i8** %24, align 8, !dbg !4078
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4081
  store i8* %25, i8** %26, align 16, !dbg !4082, !tbaa !693
  %27 = icmp eq i8* %25, null, !dbg !4083
  br i1 %27, label %30, label %28, !dbg !4084

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4067, metadata !686), !dbg !4077
  %29 = icmp ult i32 %22, 41, !dbg !4078
  br i1 %29, label %35, label %32, !dbg !4078

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4085
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !4086
  ret void, !dbg !4086

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4078
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4078
  store i8* %34, i8** %10, align 8, !dbg !4078
  br label %40, !dbg !4078

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4078
  %37 = sext i32 %22 to i64, !dbg !4078
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4078
  %39 = add i32 %22, 8, !dbg !4078
  store i32 %39, i32* %8, align 8, !dbg !4078
  br label %40, !dbg !4078

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4078
  %44 = load i8*, i8** %43, align 8, !dbg !4078
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4081
  store i8* %44, i8** %45, align 8, !dbg !4082, !tbaa !693
  %46 = icmp eq i8* %44, null, !dbg !4083
  br i1 %46, label %30, label %47, !dbg !4084

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4067, metadata !686), !dbg !4077
  %48 = icmp ult i32 %41, 41, !dbg !4078
  br i1 %48, label %52, label %49, !dbg !4078

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4078
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4078
  store i8* %51, i8** %10, align 8, !dbg !4078
  br label %57, !dbg !4078

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4078
  %54 = sext i32 %41 to i64, !dbg !4078
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4078
  %56 = add i32 %41, 8, !dbg !4078
  store i32 %56, i32* %8, align 8, !dbg !4078
  br label %57, !dbg !4078

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4078
  %61 = load i8*, i8** %60, align 8, !dbg !4078
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4081
  store i8* %61, i8** %62, align 16, !dbg !4082, !tbaa !693
  %63 = icmp eq i8* %61, null, !dbg !4083
  br i1 %63, label %30, label %64, !dbg !4084

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4067, metadata !686), !dbg !4077
  %65 = icmp ult i32 %58, 41, !dbg !4078
  br i1 %65, label %69, label %66, !dbg !4078

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4078
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4078
  store i8* %68, i8** %10, align 8, !dbg !4078
  br label %74, !dbg !4078

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4078
  %71 = sext i32 %58 to i64, !dbg !4078
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4078
  %73 = add i32 %58, 8, !dbg !4078
  store i32 %73, i32* %8, align 8, !dbg !4078
  br label %74, !dbg !4078

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4078
  %78 = load i8*, i8** %77, align 8, !dbg !4078
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4081
  store i8* %78, i8** %79, align 8, !dbg !4082, !tbaa !693
  %80 = icmp eq i8* %78, null, !dbg !4083
  br i1 %80, label %30, label %81, !dbg !4084

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4067, metadata !686), !dbg !4077
  %82 = icmp ult i32 %75, 41, !dbg !4078
  br i1 %82, label %86, label %83, !dbg !4078

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4078
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4078
  store i8* %85, i8** %10, align 8, !dbg !4078
  br label %91, !dbg !4078

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4078
  %88 = sext i32 %75 to i64, !dbg !4078
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4078
  %90 = add i32 %75, 8, !dbg !4078
  store i32 %90, i32* %8, align 8, !dbg !4078
  br label %91, !dbg !4078

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4078
  %95 = load i8*, i8** %94, align 8, !dbg !4078
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4081
  store i8* %95, i8** %96, align 16, !dbg !4082, !tbaa !693
  %97 = icmp eq i8* %95, null, !dbg !4083
  br i1 %97, label %30, label %98, !dbg !4084

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4067, metadata !686), !dbg !4077
  %99 = icmp ult i32 %92, 41, !dbg !4078
  br i1 %99, label %103, label %100, !dbg !4078

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4078
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4078
  store i8* %102, i8** %10, align 8, !dbg !4078
  br label %108, !dbg !4078

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4078
  %105 = sext i32 %92 to i64, !dbg !4078
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4078
  %107 = add i32 %92, 8, !dbg !4078
  store i32 %107, i32* %8, align 8, !dbg !4078
  br label %108, !dbg !4078

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4078
  %111 = load i8*, i8** %110, align 8, !dbg !4078
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4081
  store i8* %111, i8** %112, align 8, !dbg !4082, !tbaa !693
  %113 = icmp eq i8* %111, null, !dbg !4083
  br i1 %113, label %30, label %114, !dbg !4084

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4067, metadata !686), !dbg !4077
  %115 = load i8*, i8** %10, align 8, !dbg !4078
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4078
  store i8* %116, i8** %10, align 8, !dbg !4078
  %117 = bitcast i8* %115 to i8**, !dbg !4078
  %118 = load i8*, i8** %117, align 8, !dbg !4078
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4081
  store i8* %118, i8** %119, align 16, !dbg !4082, !tbaa !693
  %120 = icmp eq i8* %118, null, !dbg !4083
  br i1 %120, label %30, label %121, !dbg !4084

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4067, metadata !686), !dbg !4077
  %122 = load i8*, i8** %10, align 8, !dbg !4078
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4078
  store i8* %123, i8** %10, align 8, !dbg !4078
  %124 = bitcast i8* %122 to i8**, !dbg !4078
  %125 = load i8*, i8** %124, align 8, !dbg !4078
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4081
  store i8* %125, i8** %126, align 8, !dbg !4082, !tbaa !693
  %127 = icmp eq i8* %125, null, !dbg !4083
  br i1 %127, label %30, label %128, !dbg !4084

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4067, metadata !686), !dbg !4077
  %129 = load i8*, i8** %10, align 8, !dbg !4078
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4078
  store i8* %130, i8** %10, align 8, !dbg !4078
  %131 = bitcast i8* %129 to i8**, !dbg !4078
  %132 = load i8*, i8** %131, align 8, !dbg !4078
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4081
  store i8* %132, i8** %133, align 16, !dbg !4082, !tbaa !693
  %134 = icmp eq i8* %132, null, !dbg !4083
  br i1 %134, label %30, label %135, !dbg !4084

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4067, metadata !686), !dbg !4077
  %136 = load i8*, i8** %10, align 8, !dbg !4078
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4078
  store i8* %137, i8** %10, align 8, !dbg !4078
  %138 = bitcast i8* %136 to i8**, !dbg !4078
  %139 = load i8*, i8** %138, align 8, !dbg !4078
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4081
  store i8* %139, i8** %140, align 8, !dbg !4082, !tbaa !693
  %141 = icmp eq i8* %139, null, !dbg !4083
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4067, metadata !686), !dbg !4077
  %142 = select i1 %141, i64 9, i64 10, !dbg !4084
  br label %30, !dbg !4084
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4087 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4091, metadata !686), !dbg !4101
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4092, metadata !686), !dbg !4102
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4093, metadata !686), !dbg !4103
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4094, metadata !686), !dbg !4104
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4105
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !4105
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4095, metadata !686), !dbg !4106
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4107
  call void @llvm.va_start(i8* nonnull %6), !dbg !4107
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4108
  call void @llvm.va_end(i8* nonnull %6), !dbg !4109
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !4110
  ret void, !dbg !4110
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4111 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.147, i64 0, i64 0), i32 5) #12, !dbg !4112
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.148, i64 0, i64 0)) #12, !dbg !4112
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.149, i64 0, i64 0), i32 5) #12, !dbg !4113
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.150, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.151, i64 0, i64 0)) #12, !dbg !4113
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.152, i64 0, i64 0), i32 5) #12, !dbg !4114
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4114, !tbaa !693
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #12, !dbg !4114
  ret void, !dbg !4115
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4116 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4120, metadata !686), !dbg !4122
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4121, metadata !686), !dbg !4123
  %3 = udiv i64 9223372036854775807, %1, !dbg !4124
  %4 = icmp ult i64 %3, %0, !dbg !4124
  br i1 %4, label %5, label %6, !dbg !4126

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4127
  unreachable, !dbg !4127

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4128
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4129, metadata !686) #12, !dbg !4136
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !4138
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4135, metadata !686) #12, !dbg !4139
  %9 = icmp eq i8* %8, null, !dbg !4140
  %10 = icmp ne i64 %7, 0, !dbg !4142
  %11 = and i1 %10, %9, !dbg !4143
  br i1 %11, label %12, label %13, !dbg !4143

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4144
  unreachable, !dbg !4144

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4145
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4130 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4129, metadata !686), !dbg !4146
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !4147
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4135, metadata !686), !dbg !4148
  %3 = icmp eq i8* %2, null, !dbg !4149
  %4 = icmp ne i64 %0, 0, !dbg !4150
  %5 = and i1 %4, %3, !dbg !4151
  br i1 %5, label %6, label %7, !dbg !4151

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4152
  unreachable, !dbg !4152

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4153
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4154 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4158, metadata !686), !dbg !4161
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4159, metadata !686), !dbg !4162
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4160, metadata !686), !dbg !4163
  %4 = udiv i64 9223372036854775807, %2, !dbg !4164
  %5 = icmp ult i64 %4, %1, !dbg !4164
  br i1 %5, label %6, label %7, !dbg !4166

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4167
  unreachable, !dbg !4167

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4168
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4169, metadata !686) #12, !dbg !4175
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4174, metadata !686) #12, !dbg !4177
  %9 = icmp eq i64 %8, 0, !dbg !4178
  %10 = icmp ne i8* %0, null, !dbg !4180
  %11 = and i1 %10, %9, !dbg !4181
  br i1 %11, label %12, label %13, !dbg !4181

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !4182
  br label %19, !dbg !4184

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !4185
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4169, metadata !686) #12, !dbg !4175
  %15 = icmp eq i8* %14, null, !dbg !4186
  %16 = icmp ne i64 %8, 0, !dbg !4188
  %17 = and i1 %16, %15, !dbg !4189
  br i1 %17, label %18, label %19, !dbg !4189

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4190
  unreachable, !dbg !4190

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4191
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4170 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4169, metadata !686), !dbg !4192
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4174, metadata !686), !dbg !4193
  %3 = icmp eq i64 %1, 0, !dbg !4194
  %4 = icmp ne i8* %0, null, !dbg !4195
  %5 = and i1 %4, %3, !dbg !4196
  br i1 %5, label %6, label %7, !dbg !4196

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !4197
  br label %13, !dbg !4198

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !4199
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4169, metadata !686), !dbg !4192
  %9 = icmp eq i8* %8, null, !dbg !4200
  %10 = icmp ne i64 %1, 0, !dbg !4201
  %11 = and i1 %10, %9, !dbg !4202
  br i1 %11, label %12, label %13, !dbg !4202

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4203
  unreachable, !dbg !4203

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4204
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !641 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !645, metadata !686), !dbg !4205
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !646, metadata !686), !dbg !4206
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !647, metadata !686), !dbg !4207
  %4 = load i64, i64* %1, align 8, !dbg !4208, !tbaa !777
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !648, metadata !686), !dbg !4209
  %5 = icmp eq i8* %0, null, !dbg !4210
  br i1 %5, label %6, label %13, !dbg !4212

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4213
  br i1 %7, label %8, label %17, !dbg !4216

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4217
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !648, metadata !686), !dbg !4209
  %10 = icmp ugt i64 %2, 128, !dbg !4219
  %11 = zext i1 %10 to i64, !dbg !4219
  %12 = add nuw nsw i64 %9, %11, !dbg !4220
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !648, metadata !686), !dbg !4209
  br label %17, !dbg !4221

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4222
  %15 = icmp ugt i64 %14, %4, !dbg !4225
  br i1 %15, label %20, label %16, !dbg !4226

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4227
  unreachable, !dbg !4227

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !648, metadata !686), !dbg !4209
  store i64 %18, i64* %1, align 8, !dbg !4228, !tbaa !777
  %19 = mul i64 %18, %2, !dbg !4229
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4169, metadata !686) #12, !dbg !4230
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4174, metadata !686) #12, !dbg !4232
  br label %27, !dbg !4233

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4234
  %22 = add i64 %4, 1, !dbg !4235
  %23 = add i64 %22, %21, !dbg !4236
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !648, metadata !686), !dbg !4209
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !648, metadata !686), !dbg !4209
  store i64 %23, i64* %1, align 8, !dbg !4228, !tbaa !777
  %24 = mul i64 %23, %2, !dbg !4229
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4169, metadata !686) #12, !dbg !4230
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4174, metadata !686) #12, !dbg !4232
  %25 = icmp eq i64 %24, 0, !dbg !4237
  br i1 %25, label %26, label %27, !dbg !4233

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #12, !dbg !4238
  br label %34, !dbg !4239

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #12, !dbg !4240
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4169, metadata !686) #12, !dbg !4230
  %30 = icmp eq i8* %29, null, !dbg !4241
  %31 = icmp ne i64 %28, 0, !dbg !4242
  %32 = and i1 %31, %30, !dbg !4243
  br i1 %32, label %33, label %34, !dbg !4243

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !4244
  unreachable, !dbg !4244

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4245
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4246 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4248, metadata !686), !dbg !4249
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4129, metadata !686) #12, !dbg !4250
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !4252
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4135, metadata !686) #12, !dbg !4253
  %3 = icmp eq i8* %2, null, !dbg !4254
  %4 = icmp ne i64 %0, 0, !dbg !4255
  %5 = and i1 %4, %3, !dbg !4256
  br i1 %5, label %6, label %7, !dbg !4256

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4257
  unreachable, !dbg !4257

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4258
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4259 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4263, metadata !686), !dbg !4265
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4264, metadata !686), !dbg !4266
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !645, metadata !686) #12, !dbg !4267
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !646, metadata !686) #12, !dbg !4269
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !647, metadata !686) #12, !dbg !4270
  %3 = load i64, i64* %1, align 8, !dbg !4271, !tbaa !777
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !648, metadata !686) #12, !dbg !4272
  %4 = icmp eq i8* %0, null, !dbg !4273
  br i1 %4, label %5, label %8, !dbg !4274

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4275
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !648, metadata !686) #12, !dbg !4272
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !648, metadata !686) #12, !dbg !4272
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4276
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !648, metadata !686) #12, !dbg !4272
  store i64 %7, i64* %1, align 8, !dbg !4277, !tbaa !777
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4169, metadata !686) #12, !dbg !4278
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4174, metadata !686) #12, !dbg !4280
  br label %17, !dbg !4281

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4282
  br i1 %9, label %11, label %10, !dbg !4283

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !4284
  unreachable, !dbg !4284

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4285
  %13 = add i64 %3, 1, !dbg !4286
  %14 = add i64 %13, %12, !dbg !4287
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !648, metadata !686) #12, !dbg !4272
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !648, metadata !686) #12, !dbg !4272
  store i64 %14, i64* %1, align 8, !dbg !4277, !tbaa !777
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4169, metadata !686) #12, !dbg !4278
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4174, metadata !686) #12, !dbg !4280
  %15 = icmp eq i64 %14, 0, !dbg !4288
  br i1 %15, label %16, label %17, !dbg !4281

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #12, !dbg !4289
  br label %24, !dbg !4290

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #12, !dbg !4291
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4169, metadata !686) #12, !dbg !4278
  %20 = icmp eq i8* %19, null, !dbg !4292
  %21 = icmp ne i64 %18, 0, !dbg !4293
  %22 = and i1 %21, %20, !dbg !4294
  br i1 %22, label %23, label %24, !dbg !4294

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !4295
  unreachable, !dbg !4295

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4296
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4297 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4299, metadata !686), !dbg !4300
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4129, metadata !686) #12, !dbg !4301
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !4303
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4135, metadata !686) #12, !dbg !4304
  %3 = icmp eq i8* %2, null, !dbg !4305
  %4 = icmp ne i64 %0, 0, !dbg !4306
  %5 = and i1 %4, %3, !dbg !4307
  br i1 %5, label %6, label %7, !dbg !4307

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4308
  unreachable, !dbg !4308

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4309
  ret i8* %2, !dbg !4310
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4311 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4313, metadata !686), !dbg !4316
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4314, metadata !686), !dbg !4317
  %3 = udiv i64 9223372036854775807, %1, !dbg !4318
  %4 = icmp ult i64 %3, %0, !dbg !4318
  br i1 %4, label %8, label %5, !dbg !4320

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !4321
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4315, metadata !686), !dbg !4322
  %7 = icmp eq i8* %6, null, !dbg !4323
  br i1 %7, label %8, label %9, !dbg !4324

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4325
  unreachable, !dbg !4325

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4326
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4327 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4331, metadata !686), !dbg !4333
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4332, metadata !686), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4129, metadata !686) #12, !dbg !4335
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !4337
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4135, metadata !686) #12, !dbg !4338
  %4 = icmp eq i8* %3, null, !dbg !4339
  %5 = icmp ne i64 %1, 0, !dbg !4340
  %6 = and i1 %5, %4, !dbg !4341
  br i1 %6, label %7, label %8, !dbg !4341

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4342
  unreachable, !dbg !4342

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4343
  ret i8* %3, !dbg !4344
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4345 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4347, metadata !686), !dbg !4348
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4349
  %3 = add i64 %2, 1, !dbg !4350
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4331, metadata !686) #12, !dbg !4351
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4332, metadata !686) #12, !dbg !4353
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4129, metadata !686) #12, !dbg !4354
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !4356
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4135, metadata !686) #12, !dbg !4357
  %5 = icmp eq i8* %4, null, !dbg !4358
  %6 = icmp ne i64 %3, 0, !dbg !4359
  %7 = and i1 %6, %5, !dbg !4360
  br i1 %7, label %8, label %9, !dbg !4360

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4361
  unreachable, !dbg !4361

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #12, !dbg !4362
  ret i8* %4, !dbg !4363
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4364 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4366, !tbaa !795
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.165, i64 0, i64 0), i32 5) #12, !dbg !4367
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i64 0, i64 0), i8* %2) #12, !dbg !4368
  tail call void @abort() #15, !dbg !4369
  unreachable, !dbg !4369
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xmemcoll(i8*, i64, i8*, i64) local_unnamed_addr #6 !dbg !4370 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4375, metadata !686), !dbg !4381
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4376, metadata !686), !dbg !4382
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4377, metadata !686), !dbg !4383
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4378, metadata !686), !dbg !4384
  %5 = tail call i32 @memcoll(i8* %0, i64 %1, i8* %2, i64 %3) #12, !dbg !4385
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !4379, metadata !686), !dbg !4386
  %6 = tail call i32* @__errno_location() #17, !dbg !4387
  %7 = load i32, i32* %6, align 4, !dbg !4387, !tbaa !795
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4380, metadata !686), !dbg !4388
  %8 = icmp eq i32 %7, 0, !dbg !4389
  br i1 %8, label %16, label %9, !dbg !4391

; <label>:9:                                      ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4392, metadata !686) #12, !dbg !4401
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4397, metadata !686) #12, !dbg !4403
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4398, metadata !686) #12, !dbg !4404
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4399, metadata !686) #12, !dbg !4405
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4400, metadata !686) #12, !dbg !4406
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.169, i64 0, i64 0), i32 5) #12, !dbg !4407
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %10) #12, !dbg !4408
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.170, i64 0, i64 0), i32 5) #12, !dbg !4409
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %11) #12, !dbg !4410
  %12 = load volatile i32, i32* @exit_failure, align 4, !dbg !4411, !tbaa !795
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.171, i64 0, i64 0), i32 5) #12, !dbg !4412
  %14 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %1) #12, !dbg !4413
  %15 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %3) #12, !dbg !4414
  tail call void (i32, i32, i8*, ...) @error(i32 %12, i32 0, i8* %13, i8* %14, i8* %15) #12, !dbg !4415
  br label %16, !dbg !4416

; <label>:16:                                     ; preds = %4, %9
  ret i32 %5, !dbg !4417
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xmemcoll0(i8*, i64, i8*, i64) local_unnamed_addr #6 !dbg !4418 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4422, metadata !686), !dbg !4428
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4423, metadata !686), !dbg !4429
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4424, metadata !686), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4425, metadata !686), !dbg !4431
  %5 = tail call i32 @memcoll0(i8* %0, i64 %1, i8* %2, i64 %3) #12, !dbg !4432
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !4426, metadata !686), !dbg !4433
  %6 = tail call i32* @__errno_location() #17, !dbg !4434
  %7 = load i32, i32* %6, align 4, !dbg !4434, !tbaa !795
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4427, metadata !686), !dbg !4435
  %8 = icmp eq i32 %7, 0, !dbg !4436
  br i1 %8, label %18, label %9, !dbg !4438

; <label>:9:                                      ; preds = %4
  %10 = add i64 %1, -1, !dbg !4439
  %11 = add i64 %3, -1, !dbg !4440
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4392, metadata !686) #12, !dbg !4441
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4397, metadata !686) #12, !dbg !4443
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !4398, metadata !686) #12, !dbg !4444
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4399, metadata !686) #12, !dbg !4445
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4400, metadata !686) #12, !dbg !4446
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.169, i64 0, i64 0), i32 5) #12, !dbg !4447
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %12) #12, !dbg !4448
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.170, i64 0, i64 0), i32 5) #12, !dbg !4449
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %13) #12, !dbg !4450
  %14 = load volatile i32, i32* @exit_failure, align 4, !dbg !4451, !tbaa !795
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.171, i64 0, i64 0), i32 5) #12, !dbg !4452
  %16 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %10) #12, !dbg !4453
  %17 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %11) #12, !dbg !4454
  tail call void (i32, i32, i8*, ...) @error(i32 %14, i32 0, i8* %15, i8* %16, i8* %17) #12, !dbg !4455
  br label %18, !dbg !4456

; <label>:18:                                     ; preds = %4, %9
  ret i32 %5, !dbg !4457
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoul(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !4458 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4465, metadata !686), !dbg !4483
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4466, metadata !686), !dbg !4484
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4467, metadata !686), !dbg !4485
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !4468, metadata !686), !dbg !4486
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4469, metadata !686), !dbg !4487
  %7 = bitcast i8** %6 to i8*, !dbg !4488
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #12, !dbg !4488
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4473, metadata !686), !dbg !4489
  %8 = icmp ult i32 %2, 37, !dbg !4490
  br i1 %8, label %10, label %9, !dbg !4490

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.174, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.175, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #15, !dbg !4490
  unreachable, !dbg !4490

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4493
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4471, metadata !686), !dbg !4494
  %12 = tail call i32* @__errno_location() #17, !dbg !4495
  store i32 0, i32* %12, align 4, !dbg !4496, !tbaa !795
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4474, metadata !686), !dbg !4497
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4477, metadata !4498), !dbg !4499
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !4500
  %14 = load i16*, i16** %13, align 8, !tbaa !693
  br label %15, !dbg !4501

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !782
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !4477, metadata !686), !dbg !4499
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4474, metadata !686), !dbg !4497
  %18 = zext i8 %17 to i64, !dbg !4500
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4500
  %20 = load i16, i16* %19, align 2, !dbg !4500, !tbaa !1374
  %21 = and i16 %20, 8192, !dbg !4500
  %22 = icmp eq i16 %21, 0, !dbg !4501
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4502
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4474, metadata !686), !dbg !4497
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4477, metadata !4498), !dbg !4499
  br i1 %22, label %24, label %15, !dbg !4501, !llvm.loop !4503

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4493
  %26 = icmp eq i8 %17, 45, !dbg !4505
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  %28 = call i64 @strtoul(i8* %0, i8** %25, i32 %2) #12, !dbg !4507
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4472, metadata !686), !dbg !4508
  %29 = load i8*, i8** %25, align 8, !dbg !4509, !tbaa !693
  %30 = icmp eq i8* %29, %0, !dbg !4511
  br i1 %30, label %31, label %40, !dbg !4512

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4513
  br i1 %32, label %265, label %33, !dbg !4516

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4517, !tbaa !782
  %35 = icmp eq i8 %34, 0, !dbg !4517
  br i1 %35, label %265, label %36, !dbg !4518

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4517
  %38 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !4519
  %39 = icmp eq i8* %38, null, !dbg !4519
  br i1 %39, label %265, label %47, !dbg !4520

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4521, !tbaa !795
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4523

; <label>:42:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4473, metadata !686), !dbg !4489
  br label %43, !dbg !4524

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !4473, metadata !686), !dbg !4489
  %45 = icmp eq i8* %4, null, !dbg !4526
  br i1 %45, label %46, label %47, !dbg !4528

; <label>:46:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4472, metadata !686), !dbg !4508
  store i64 %28, i64* %3, align 8, !dbg !4529, !tbaa !777
  br label %265, !dbg !4531

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4532, !tbaa !782
  %51 = sext i8 %50 to i32, !dbg !4532
  %52 = icmp eq i8 %50, 0, !dbg !4533
  br i1 %52, label %262, label %53, !dbg !4534

; <label>:53:                                     ; preds = %47
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4478, metadata !686), !dbg !4535
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4481, metadata !686), !dbg !4536
  %54 = tail call i8* @strchr(i8* nonnull %4, i32 %51) #14, !dbg !4537
  %55 = icmp eq i8* %54, null, !dbg !4537
  br i1 %55, label %56, label %58, !dbg !4539

; <label>:56:                                     ; preds = %53
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4472, metadata !686), !dbg !4508
  store i64 %49, i64* %3, align 8, !dbg !4540, !tbaa !777
  %57 = or i32 %48, 2, !dbg !4542
  br label %265, !dbg !4543

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
  ], !dbg !4544

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = tail call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !4545
  %61 = icmp eq i8* %60, null, !dbg !4545
  br i1 %61, label %72, label %62, !dbg !4548

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4549
  %64 = load i8, i8* %63, align 1, !dbg !4549, !tbaa !782
  %65 = sext i8 %64 to i32, !dbg !4549
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4550

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4551
  %68 = load i8, i8* %67, align 1, !dbg !4551, !tbaa !782
  %69 = icmp eq i8 %68, 66, !dbg !4554
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4481, metadata !686), !dbg !4536
  %70 = select i1 %69, i64 3, i64 1, !dbg !4555
  br label %72, !dbg !4555

; <label>:71:                                     ; preds = %62, %62
  tail call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !4478, metadata !686), !dbg !4535
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4481, metadata !686), !dbg !4536
  br label %72, !dbg !4556

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
  ], !dbg !4557

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !4558, metadata !686), !dbg !4564
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4567
  %77 = shl i64 %49, 9, !dbg !4569
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4570
  %79 = zext i1 %76 to i32, !dbg !4570
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !4482, metadata !686), !dbg !4571
  br label %253, !dbg !4572

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4558, metadata !686), !dbg !4573
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4575
  %82 = shl i64 %49, 10, !dbg !4576
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4577
  %84 = zext i1 %81 to i32, !dbg !4577
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !4482, metadata !686), !dbg !4571
  br label %253, !dbg !4578

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4589
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4589
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4587
  %86 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4589
  %87 = icmp ult i64 %86, %49, !dbg !4590
  %88 = mul i64 %49, %73, !dbg !4592
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4593
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4589
  %90 = icmp ult i64 %86, %89, !dbg !4590
  %91 = mul i64 %89, %73, !dbg !4592
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4593
  %93 = or i1 %87, %90, !dbg !4594
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4589
  %94 = icmp ult i64 %86, %92, !dbg !4590
  %95 = mul i64 %92, %73, !dbg !4592
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4593
  %97 = or i1 %93, %94, !dbg !4594
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4589
  %98 = icmp ult i64 %86, %96, !dbg !4590
  %99 = mul i64 %96, %73, !dbg !4592
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4593
  %101 = or i1 %97, %98, !dbg !4594
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4589
  %102 = icmp ult i64 %86, %100, !dbg !4590
  %103 = mul i64 %100, %73, !dbg !4592
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4593
  %105 = or i1 %101, %102, !dbg !4594
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4589
  %106 = icmp ult i64 %86, %104, !dbg !4590
  %107 = mul i64 %104, %73, !dbg !4592
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4593
  %109 = or i1 %105, %106, !dbg !4594
  %110 = zext i1 %109 to i32, !dbg !4594
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4587
  br label %253, !dbg !4595

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4579, metadata !686), !dbg !4596
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4598
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4598
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4579, metadata !686), !dbg !4596
  %112 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4579, metadata !686), !dbg !4596
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4598
  %113 = icmp ult i64 %112, %49, !dbg !4599
  %114 = mul i64 %49, %73, !dbg !4601
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4579, metadata !686), !dbg !4596
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4579, metadata !686), !dbg !4596
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4579, metadata !686), !dbg !4596
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4598
  %116 = icmp ult i64 %112, %115, !dbg !4599
  %117 = mul i64 %115, %73, !dbg !4601
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4602
  %119 = or i1 %113, %116, !dbg !4603
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4579, metadata !686), !dbg !4596
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4579, metadata !686), !dbg !4596
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4579, metadata !686), !dbg !4596
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4598
  %120 = icmp ult i64 %112, %118, !dbg !4599
  %121 = mul i64 %118, %73, !dbg !4601
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4602
  %123 = or i1 %119, %120, !dbg !4603
  %124 = zext i1 %123 to i32, !dbg !4603
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4579, metadata !686), !dbg !4596
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4579, metadata !686), !dbg !4596
  br label %253, !dbg !4595

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4579, metadata !686), !dbg !4604
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4606
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4606
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4579, metadata !686), !dbg !4604
  %126 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4579, metadata !686), !dbg !4604
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4606
  %127 = icmp ult i64 %126, %49, !dbg !4607
  %128 = mul i64 %49, %73, !dbg !4609
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4610
  %130 = zext i1 %127 to i32, !dbg !4610
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4586, metadata !686), !dbg !4606
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4586, metadata !686), !dbg !4606
  br label %253, !dbg !4595

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4579, metadata !686), !dbg !4611
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4613
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4613
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4579, metadata !686), !dbg !4611
  %132 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4579, metadata !686), !dbg !4611
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4613
  %133 = icmp ult i64 %132, %49, !dbg !4614
  %134 = mul i64 %49, %73, !dbg !4616
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4617
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4579, metadata !686), !dbg !4611
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4579, metadata !686), !dbg !4611
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4579, metadata !686), !dbg !4611
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4613
  %136 = icmp ult i64 %132, %135, !dbg !4614
  %137 = mul i64 %135, %73, !dbg !4616
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4617
  %139 = or i1 %133, %136, !dbg !4618
  %140 = zext i1 %139 to i32, !dbg !4618
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4579, metadata !686), !dbg !4611
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4579, metadata !686), !dbg !4611
  br label %253, !dbg !4595

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4619
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4621
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4621
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4619
  %142 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4619
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4621
  %143 = icmp ult i64 %142, %49, !dbg !4622
  %144 = mul i64 %49, %73, !dbg !4624
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4625
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4579, metadata !686), !dbg !4619
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4579, metadata !686), !dbg !4619
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4619
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4621
  %146 = icmp ult i64 %142, %145, !dbg !4622
  %147 = mul i64 %145, %73, !dbg !4624
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4625
  %149 = or i1 %143, %146, !dbg !4626
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4579, metadata !686), !dbg !4619
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4579, metadata !686), !dbg !4619
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4619
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4621
  %150 = icmp ult i64 %142, %148, !dbg !4622
  %151 = mul i64 %148, %73, !dbg !4624
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4625
  %153 = or i1 %149, %150, !dbg !4626
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4579, metadata !686), !dbg !4619
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4579, metadata !686), !dbg !4619
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4619
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4621
  %154 = icmp ult i64 %142, %152, !dbg !4622
  %155 = mul i64 %152, %73, !dbg !4624
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4625
  %157 = or i1 %153, %154, !dbg !4626
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4579, metadata !686), !dbg !4619
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4579, metadata !686), !dbg !4619
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4579, metadata !686), !dbg !4619
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4621
  %158 = icmp ult i64 %142, %156, !dbg !4622
  %159 = mul i64 %156, %73, !dbg !4624
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4625
  %161 = or i1 %157, %158, !dbg !4626
  %162 = zext i1 %161 to i32, !dbg !4626
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4579, metadata !686), !dbg !4619
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4579, metadata !686), !dbg !4619
  br label %253, !dbg !4595

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4579, metadata !686), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4579, metadata !686), !dbg !4627
  %164 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4579, metadata !686), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4629
  %165 = icmp ult i64 %164, %49, !dbg !4630
  %166 = mul i64 %49, %73, !dbg !4632
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4633
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4579, metadata !686), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4579, metadata !686), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4579, metadata !686), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4629
  %168 = icmp ult i64 %164, %167, !dbg !4630
  %169 = mul i64 %167, %73, !dbg !4632
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4633
  %171 = or i1 %165, %168, !dbg !4634
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4579, metadata !686), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4579, metadata !686), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4579, metadata !686), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4629
  %172 = icmp ult i64 %164, %170, !dbg !4630
  %173 = mul i64 %170, %73, !dbg !4632
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4633
  %175 = or i1 %171, %172, !dbg !4634
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4579, metadata !686), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4579, metadata !686), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4579, metadata !686), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4629
  %176 = icmp ult i64 %164, %174, !dbg !4630
  %177 = mul i64 %174, %73, !dbg !4632
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4633
  %179 = or i1 %175, %176, !dbg !4634
  %180 = zext i1 %179 to i32, !dbg !4634
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4579, metadata !686), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4579, metadata !686), !dbg !4627
  br label %253, !dbg !4595

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4558, metadata !686), !dbg !4635
  %182 = icmp slt i64 %49, 0, !dbg !4637
  %183 = shl i64 %49, 1, !dbg !4638
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4639
  %185 = lshr i64 %49, 63, !dbg !4639
  %186 = trunc i64 %185 to i32, !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !4482, metadata !686), !dbg !4571
  br label %253, !dbg !4640

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4643
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4643
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4579, metadata !686), !dbg !4641
  %188 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4643
  %189 = icmp ult i64 %188, %49, !dbg !4644
  %190 = mul i64 %49, %73, !dbg !4646
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4647
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4643
  %192 = icmp ult i64 %188, %191, !dbg !4644
  %193 = mul i64 %191, %73, !dbg !4646
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4647
  %195 = or i1 %189, %192, !dbg !4648
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4643
  %196 = icmp ult i64 %188, %194, !dbg !4644
  %197 = mul i64 %194, %73, !dbg !4646
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4647
  %199 = or i1 %195, %196, !dbg !4648
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4643
  %200 = icmp ult i64 %188, %198, !dbg !4644
  %201 = mul i64 %198, %73, !dbg !4646
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4647
  %203 = or i1 %199, %200, !dbg !4648
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4643
  %204 = icmp ult i64 %188, %202, !dbg !4644
  %205 = mul i64 %202, %73, !dbg !4646
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4647
  %207 = or i1 %203, %204, !dbg !4648
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4643
  %208 = icmp ult i64 %188, %206, !dbg !4644
  %209 = mul i64 %206, %73, !dbg !4646
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4647
  %211 = or i1 %207, %208, !dbg !4648
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4643
  %212 = icmp ult i64 %188, %210, !dbg !4644
  %213 = mul i64 %210, %73, !dbg !4646
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4647
  %215 = or i1 %211, %212, !dbg !4648
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4643
  %216 = icmp ult i64 %188, %214, !dbg !4644
  %217 = mul i64 %214, %73, !dbg !4646
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4647
  %219 = or i1 %215, %216, !dbg !4648
  %220 = zext i1 %219 to i32, !dbg !4648
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4641
  br label %253, !dbg !4595

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4651
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4651
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4649
  %222 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4651
  %223 = icmp ult i64 %222, %49, !dbg !4652
  %224 = mul i64 %49, %73, !dbg !4654
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4655
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4651
  %226 = icmp ult i64 %222, %225, !dbg !4652
  %227 = mul i64 %225, %73, !dbg !4654
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4655
  %229 = or i1 %223, %226, !dbg !4656
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4651
  %230 = icmp ult i64 %222, %228, !dbg !4652
  %231 = mul i64 %228, %73, !dbg !4654
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4655
  %233 = or i1 %229, %230, !dbg !4656
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4651
  %234 = icmp ult i64 %222, %232, !dbg !4652
  %235 = mul i64 %232, %73, !dbg !4654
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4655
  %237 = or i1 %233, %234, !dbg !4656
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4651
  %238 = icmp ult i64 %222, %236, !dbg !4652
  %239 = mul i64 %236, %73, !dbg !4654
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4655
  %241 = or i1 %237, %238, !dbg !4656
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4651
  %242 = icmp ult i64 %222, %240, !dbg !4652
  %243 = mul i64 %240, %73, !dbg !4654
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4655
  %245 = or i1 %241, %242, !dbg !4656
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4586, metadata !686), !dbg !4651
  %246 = icmp ult i64 %222, %244, !dbg !4652
  %247 = mul i64 %244, %73, !dbg !4654
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4655
  %249 = or i1 %245, %246, !dbg !4656
  %250 = zext i1 %249 to i32, !dbg !4656
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4579, metadata !686), !dbg !4649
  br label %253, !dbg !4595

; <label>:251:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4472, metadata !686), !dbg !4508
  store i64 %49, i64* %3, align 8, !dbg !4657, !tbaa !777
  %252 = or i32 %48, 2, !dbg !4658
  br label %265, !dbg !4659

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  tail call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !4482, metadata !686), !dbg !4571
  %256 = or i32 %255, %48, !dbg !4595
  tail call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !4473, metadata !686), !dbg !4489
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4660
  store i8* %257, i8** %25, align 8, !dbg !4660, !tbaa !693
  %258 = load i8, i8* %257, align 1, !dbg !4661, !tbaa !782
  %259 = icmp eq i8 %258, 0, !dbg !4661
  %260 = or i32 %256, 2, !dbg !4663
  tail call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !4473, metadata !686), !dbg !4489
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4664
  tail call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4473, metadata !686), !dbg !4489
  tail call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4473, metadata !686), !dbg !4489
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  tail call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !4473, metadata !686), !dbg !4489
  tail call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !4472, metadata !686), !dbg !4508
  store i64 %263, i64* %3, align 8, !dbg !4665, !tbaa !777
  br label %265, !dbg !4666

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #12, !dbg !4667
  ret i32 %266, !dbg !4667
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4668 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4671, metadata !686), !dbg !4677
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4672, metadata !686), !dbg !4678
  %3 = icmp eq i64 %0, 0, !dbg !4679
  %4 = icmp eq i64 %1, 0, !dbg !4680
  %5 = or i1 %3, %4, !dbg !4681
  br i1 %5, label %12, label %6, !dbg !4681

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4682
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4674, metadata !686), !dbg !4683
  %8 = udiv i64 %7, %1, !dbg !4684
  %9 = icmp eq i64 %8, %0, !dbg !4686
  br i1 %9, label %12, label %10, !dbg !4687

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4688
  store i32 12, i32* %11, align 4, !dbg !4690, !tbaa !795
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4671, metadata !686), !dbg !4677
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4672, metadata !686), !dbg !4678
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !4691
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4673, metadata !686), !dbg !4692
  br label %16, !dbg !4693

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4694
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4695 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4740, metadata !686), !dbg !4744
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4741, metadata !686), !dbg !4745
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4743, metadata !686), !dbg !4746
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4747
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4742, metadata !686), !dbg !4748
  %3 = icmp slt i32 %2, 0, !dbg !4749
  br i1 %3, label %4, label %6, !dbg !4751

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4752
  br label %24, !dbg !4753

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4754
  %8 = icmp eq i32 %7, 0, !dbg !4754
  br i1 %8, label %13, label %9, !dbg !4756

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4757
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !4758
  %12 = icmp eq i64 %11, -1, !dbg !4759
  br i1 %12, label %16, label %13, !dbg !4760

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !4761
  %15 = icmp eq i32 %14, 0, !dbg !4761
  br i1 %15, label %16, label %18, !dbg !4762

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4741, metadata !686), !dbg !4745
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4763
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4743, metadata !686), !dbg !4746
  br label %24, !dbg !4764

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4765
  %20 = load i32, i32* %19, align 4, !dbg !4765, !tbaa !795
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4741, metadata !686), !dbg !4745
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4741, metadata !686), !dbg !4745
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4763
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4743, metadata !686), !dbg !4746
  %22 = icmp eq i32 %20, 0, !dbg !4766
  br i1 %22, label %24, label %23, !dbg !4764

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4768, !tbaa !795
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4743, metadata !686), !dbg !4746
  br label %24, !dbg !4770

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4771
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4772 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4817, metadata !686), !dbg !4818
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4819
  br i1 %2, label %6, label %3, !dbg !4821

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4822
  %5 = icmp eq i32 %4, 0, !dbg !4822
  br i1 %5, label %6, label %8, !dbg !4823

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4824
  br label %17, !dbg !4825

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4826, metadata !686) #12, !dbg !4831
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4833
  %10 = load i32, i32* %9, align 8, !dbg !4833, !tbaa !1098
  %11 = and i32 %10, 256, !dbg !4835
  %12 = icmp eq i32 %11, 0, !dbg !4835
  br i1 %12, label %15, label %13, !dbg !4836

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4837
  br label %15, !dbg !4837

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4838
  br label %17, !dbg !4839

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4840
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4841 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4886, metadata !686), !dbg !4892
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4887, metadata !686), !dbg !4893
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4888, metadata !686), !dbg !4894
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4895
  %5 = load i8*, i8** %4, align 8, !dbg !4895, !tbaa !2063
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4896
  %7 = load i8*, i8** %6, align 8, !dbg !4896, !tbaa !2062
  %8 = icmp eq i8* %5, %7, !dbg !4897
  br i1 %8, label %9, label %28, !dbg !4898

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4899
  %11 = load i8*, i8** %10, align 8, !dbg !4899, !tbaa !1172
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4900
  %13 = load i8*, i8** %12, align 8, !dbg !4900, !tbaa !4901
  %14 = icmp eq i8* %11, %13, !dbg !4902
  br i1 %14, label %15, label %28, !dbg !4903

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4904
  %17 = load i8*, i8** %16, align 8, !dbg !4904, !tbaa !4905
  %18 = icmp eq i8* %17, null, !dbg !4906
  br i1 %18, label %19, label %28, !dbg !4907

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4908
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !4909
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4889, metadata !686), !dbg !4910
  %22 = icmp eq i64 %21, -1, !dbg !4911
  br i1 %22, label %30, label %23, !dbg !4913

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4914
  %25 = load i32, i32* %24, align 8, !dbg !4915, !tbaa !1098
  %26 = and i32 %25, -17, !dbg !4915
  store i32 %26, i32* %24, align 8, !dbg !4915, !tbaa !1098
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4916
  store i64 %21, i64* %27, align 8, !dbg !4917, !tbaa !4918
  br label %30, !dbg !4919

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4920
  br label %30, !dbg !4921

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4922
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4923 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4940, metadata !686), !dbg !4949
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4941, metadata !686), !dbg !4950
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4942, metadata !686), !dbg !4951
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4943, metadata !686), !dbg !4952
  %6 = bitcast i32* %5 to i8*, !dbg !4953
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4953
  %7 = icmp eq i32* %0, null, !dbg !4954
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4940, metadata !686), !dbg !4949
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4956
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4940, metadata !686), !dbg !4949
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !4957
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4944, metadata !686), !dbg !4958
  %10 = icmp ugt i64 %9, -3, !dbg !4959
  %11 = icmp ne i64 %2, 0, !dbg !4960
  %12 = and i1 %11, %10, !dbg !4961
  br i1 %12, label %13, label %18, !dbg !4961

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !4962
  br i1 %14, label %18, label %15, !dbg !4963

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4964, !tbaa !782
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4946, metadata !686), !dbg !4965
  %17 = zext i8 %16 to i32, !dbg !4966
  store i32 %17, i32* %8, align 4, !dbg !4967, !tbaa !795
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4968
  ret i64 %19, !dbg !4968
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4969 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5014, metadata !686), !dbg !5019
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !5020
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5021, metadata !686), !dbg !5024
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5026
  %4 = load i32, i32* %3, align 8, !dbg !5026, !tbaa !1098
  %5 = and i32 %4, 32, !dbg !5026
  %6 = icmp eq i32 %5, 0, !dbg !5027
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !5028
  %8 = icmp ne i32 %7, 0, !dbg !5029
  br i1 %6, label %9, label %19, !dbg !5030

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !5032
  %11 = xor i1 %8, true, !dbg !5033
  %12 = or i1 %10, %11, !dbg !5033
  %13 = sext i1 %8 to i32, !dbg !5033
  br i1 %12, label %22, label %14, !dbg !5033

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !5034
  %16 = load i32, i32* %15, align 4, !dbg !5034, !tbaa !795
  %17 = icmp ne i32 %16, 9, !dbg !5035
  %18 = sext i1 %17 to i32, !dbg !5036
  br label %22, !dbg !5036

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5037

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !5039
  store i32 0, i32* %21, align 4, !dbg !5041, !tbaa !795
  br label %22, !dbg !5039

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !5042
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5043 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5049, metadata !686), !dbg !5123
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5116, metadata !686), !dbg !5126
  %3 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !5127
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5047, metadata !686), !dbg !5128
  %4 = icmp eq i8* %3, null, !dbg !5129
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.190, i64 0, i64 0), i8* %3, !dbg !5131
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5047, metadata !686), !dbg !5128
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5132, !tbaa !693
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5063, metadata !686) #12, !dbg !5133
  %7 = icmp eq i8* %6, null, !dbg !5134
  br i1 %7, label %8, label %123, !dbg !5135

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.191, i64 0, i64 0)) #12, !dbg !5136
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5064, metadata !686) #12, !dbg !5137
  %10 = icmp eq i8* %9, null, !dbg !5138
  br i1 %10, label %14, label %11, !dbg !5140

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5141, !tbaa !782
  %13 = icmp eq i8 %12, 0, !dbg !5142
  br i1 %13, label %14, label %15, !dbg !5143

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5144

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.192, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5064, metadata !686) #12, !dbg !5137
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !5145
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5067, metadata !686) #12, !dbg !5146
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5069, metadata !686) #12, !dbg !5147
  %18 = icmp eq i64 %17, 0, !dbg !5148
  br i1 %18, label %24, label %19, !dbg !5149

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5150
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5150
  %22 = load i8, i8* %21, align 1, !dbg !5150, !tbaa !782
  %23 = icmp ne i8 %22, 47, !dbg !5150
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5151
  %27 = add i64 %17, 14, !dbg !5152
  %28 = add i64 %27, %26, !dbg !5153
  %29 = tail call noalias i8* @malloc(i64 %28) #12, !dbg !5154
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5066, metadata !686) #12, !dbg !5155
  %30 = icmp eq i8* %29, null, !dbg !5156
  br i1 %30, label %121, label %31, !dbg !5156

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #12, !dbg !5157
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5160

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5161, !tbaa !782
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5163
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.193, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !5164
  br label %37, !dbg !5165

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5163
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.193, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !5164
  br label %37, !dbg !5165

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12, !dbg !5166
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5071, metadata !686) #12, !dbg !5167
  %39 = icmp slt i32 %38, 0, !dbg !5168
  br i1 %39, label %119, label %40, !dbg !5169

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.194, i64 0, i64 0)) #12, !dbg !5170
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5072, metadata !686) #12, !dbg !5171
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5172
  br i1 %42, label %43, label %45, !dbg !5173

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #12, !dbg !5174
  br label %119, !dbg !5176

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !5113, metadata !686) #12, !dbg !5177
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5114, metadata !686) #12, !dbg !5178
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5179

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !5180

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5113, metadata !686) #12, !dbg !5177
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5114, metadata !686) #12, !dbg !5178
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #12, !dbg !5180
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #12, !dbg !5181
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5182, metadata !686) #12, !dbg !5187
  %54 = load i8*, i8** %48, align 8, !dbg !5189, !tbaa !2062
  %55 = load i8*, i8** %49, align 8, !dbg !5189, !tbaa !2063
  %56 = icmp ult i8* %54, %55, !dbg !5189
  br i1 %56, label %59, label %57, !dbg !5189, !prof !1174

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !5189
  br label %63, !dbg !5189

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !5189
  store i8* %60, i8** %48, align 8, !dbg !5189, !tbaa !2062
  %61 = load i8, i8* %54, align 1, !dbg !5189, !tbaa !782
  %62 = zext i8 %61 to i32, !dbg !5189
  br label %63, !dbg !5189

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !5189
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !5115, metadata !686) #12, !dbg !5190
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !5191, !llvm.loop !5192

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !5197

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5182, metadata !686) #12, !dbg !5199
  %67 = load i8*, i8** %48, align 8, !dbg !5197, !tbaa !2062
  %68 = load i8*, i8** %49, align 8, !dbg !5197, !tbaa !2063
  %69 = icmp ult i8* %67, %68, !dbg !5197
  br i1 %69, label %72, label %70, !dbg !5197, !prof !1174

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !5197
  br label %76, !dbg !5197

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !5197
  store i8* %73, i8** %48, align 8, !dbg !5197, !tbaa !2062
  %74 = load i8, i8* %67, align 1, !dbg !5197, !tbaa !782
  %75 = zext i8 %74 to i32, !dbg !5197
  br label %76, !dbg !5197

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !5197
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !5115, metadata !686) #12, !dbg !5190
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !5200, !llvm.loop !5201

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #12, !dbg !5204
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.195, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #12, !dbg !5205
  %81 = icmp slt i32 %80, 2, !dbg !5207
  br i1 %81, label %112, label %82, !dbg !5208

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !5209
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5120, metadata !686) #12, !dbg !5210
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !5211
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !5121, metadata !686) #12, !dbg !5212
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5122, metadata !686) #12, !dbg !5213
  %85 = icmp eq i64 %51, 0, !dbg !5214
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !5216

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !5114, metadata !686) #12, !dbg !5178
  %90 = add i64 %87, 2, !dbg !5217
  %91 = call noalias i8* @malloc(i64 %90) #12, !dbg !5219
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !5113, metadata !686) #12, !dbg !5177
  br label %96, !dbg !5220

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !5221
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !5114, metadata !686) #12, !dbg !5178
  %94 = add i64 %93, 1, !dbg !5223
  %95 = call i8* @realloc(i8* %52, i64 %94) #12, !dbg !5224
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !5113, metadata !686) #12, !dbg !5177
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !5113, metadata !686) #12, !dbg !5177
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !5114, metadata !686) #12, !dbg !5178
  %99 = icmp eq i8* %98, null, !dbg !5225
  br i1 %99, label %100, label %102, !dbg !5227

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5114, metadata !686) #12, !dbg !5178
  call void @free(i8* %52) #12, !dbg !5228
  br label %112, !dbg !5230

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !5231
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !5231
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !5232
  %104 = xor i64 %84, -1, !dbg !5233
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5233
  %106 = xor i64 %83, -1, !dbg !5234
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !5234
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !5235, metadata !686) #12, !dbg !5244
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !5243, metadata !686) #12, !dbg !5244
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #12, !dbg !5246
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #12, !dbg !5247
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5235, metadata !686) #12, !dbg !5248
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !5243, metadata !686) #12, !dbg !5248
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #12, !dbg !5250
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #12, !dbg !5251
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !5113, metadata !686) #12, !dbg !5177
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !5114, metadata !686) #12, !dbg !5178
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !5231
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !5231
  br label %50, !dbg !5252, !llvm.loop !5201

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !5231
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !5231
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #12, !dbg !5253
  %116 = icmp eq i64 %113, 0, !dbg !5254
  br i1 %116, label %119, label %117, !dbg !5256

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !5257
  store i8 0, i8* %118, align 1, !dbg !5259, !tbaa !782
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.190, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.190, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.190, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !5063, metadata !686) #12, !dbg !5133
  call void @free(i8* %29) #12, !dbg !5260
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.190, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !5063, metadata !686) #12, !dbg !5133
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !5261, !tbaa !693
  br label %123, !dbg !5262

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5063, metadata !686) #12, !dbg !5133
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5048, metadata !686), !dbg !5263
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5048, metadata !686), !dbg !5263
  %125 = load i8, i8* %124, align 1, !dbg !5264, !tbaa !782
  %126 = icmp eq i8 %125, 0, !dbg !5266
  br i1 %126, label %152, label %127, !dbg !5267

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !5268

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !5048, metadata !686), !dbg !5263
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !5268
  %132 = icmp eq i32 %131, 0, !dbg !5270
  br i1 %132, label %139, label %133, !dbg !5271

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !5272
  br i1 %134, label %135, label %143, !dbg !5273

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !5274
  %137 = load i8, i8* %136, align 1, !dbg !5274, !tbaa !782
  %138 = icmp eq i8 %137, 0, !dbg !5275
  br i1 %138, label %139, label %143, !dbg !5276

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !5277
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !5279
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !5280
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !5047, metadata !686), !dbg !5128
  br label %152, !dbg !5281

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !5282
  %145 = add i64 %144, 1, !dbg !5283
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !5284
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5048, metadata !686), !dbg !5263
  %147 = call i64 @strlen(i8* %146) #14, !dbg !5285
  %148 = add i64 %147, 1, !dbg !5286
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !5287
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !5048, metadata !686), !dbg !5263
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !5048, metadata !686), !dbg !5263
  %150 = load i8, i8* %149, align 1, !dbg !5264, !tbaa !782
  %151 = icmp eq i8 %150, 0, !dbg !5266
  br i1 %151, label %152, label %128, !dbg !5267, !llvm.loop !5288

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5047, metadata !686), !dbg !5128
  %154 = load i8, i8* %153, align 1, !dbg !5290, !tbaa !782
  %155 = icmp eq i8 %154, 0, !dbg !5292
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.196, i64 0, i64 0), i8* %153, !dbg !5293
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !5047, metadata !686), !dbg !5128
  ret i8* %156, !dbg !5294
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @memcoll(i8* nocapture, i64, i8* nocapture, i64) local_unnamed_addr #6 !dbg !5295 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5298, metadata !686), !dbg !5307
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5299, metadata !686), !dbg !5308
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5300, metadata !686), !dbg !5309
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5301, metadata !686), !dbg !5310
  %5 = icmp eq i64 %1, %3, !dbg !5311
  br i1 %5, label %6, label %11, !dbg !5312

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %1) #14, !dbg !5313
  %8 = icmp eq i32 %7, 0, !dbg !5314
  br i1 %8, label %9, label %11, !dbg !5315

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #17, !dbg !5316
  store i32 0, i32* %10, align 4, !dbg !5318, !tbaa !795
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5302, metadata !686), !dbg !5319
  br label %46, !dbg !5320

; <label>:11:                                     ; preds = %6, %4
  %12 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !5321
  %13 = load i8, i8* %12, align 1, !dbg !5321, !tbaa !782
  tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !5303, metadata !686), !dbg !5322
  %14 = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !5323
  %15 = load i8, i8* %14, align 1, !dbg !5323, !tbaa !782
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !5306, metadata !686), !dbg !5324
  store i8 0, i8* %12, align 1, !dbg !5325, !tbaa !782
  store i8 0, i8* %14, align 1, !dbg !5326, !tbaa !782
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5327, metadata !686) #12, !dbg !5337
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5330, metadata !686) #12, !dbg !5339
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5331, metadata !686) #12, !dbg !5340
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !5332, metadata !686) #12, !dbg !5341
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5327, metadata !686) #12, !dbg !5337
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5330, metadata !686) #12, !dbg !5339
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !5332, metadata !686) #12, !dbg !5341
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5331, metadata !686) #12, !dbg !5340
  %16 = tail call i32* @__errno_location() #17, !dbg !5342
  store i32 0, i32* %16, align 4, !dbg !5343, !tbaa !795
  %17 = tail call i32 @strcoll(i8* %0, i8* %2) #14, !dbg !5344
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !5333, metadata !686) #12, !dbg !5345
  %18 = icmp eq i32 %17, 0, !dbg !5346
  br i1 %18, label %19, label %44, !dbg !5347

; <label>:19:                                     ; preds = %11
  %20 = add i64 %3, 1, !dbg !5348
  %21 = add i64 %1, 1, !dbg !5349
  br label %25, !dbg !5347

; <label>:22:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !5327, metadata !686) #12, !dbg !5337
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !5330, metadata !686) #12, !dbg !5339
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !5332, metadata !686) #12, !dbg !5341
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !5331, metadata !686) #12, !dbg !5340
  store i32 0, i32* %16, align 4, !dbg !5343, !tbaa !795
  %23 = tail call i32 @strcoll(i8* %42, i8* %41) #14, !dbg !5344
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !5333, metadata !686) #12, !dbg !5345
  %24 = icmp eq i32 %23, 0, !dbg !5346
  br i1 %24, label %25, label %44, !dbg !5347, !llvm.loop !5350

; <label>:25:                                     ; preds = %22, %19
  %26 = phi i8* [ %0, %19 ], [ %42, %22 ]
  %27 = phi i64 [ %21, %19 ], [ %34, %22 ]
  %28 = phi i64 [ %20, %19 ], [ %35, %22 ]
  %29 = phi i8* [ %2, %19 ], [ %41, %22 ]
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5331, metadata !686) #12, !dbg !5340
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5332, metadata !686) #12, !dbg !5341
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !5330, metadata !686) #12, !dbg !5339
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !5327, metadata !686) #12, !dbg !5337
  %30 = tail call i64 @strlen(i8* %26) #14, !dbg !5353
  %31 = add i64 %30, 1, !dbg !5354
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !5334, metadata !686) #12, !dbg !5355
  %32 = tail call i64 @strlen(i8* %29) #14, !dbg !5356
  %33 = add i64 %32, 1, !dbg !5357
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !5336, metadata !686) #12, !dbg !5358
  %34 = sub i64 %27, %31, !dbg !5359
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !5330, metadata !686) #12, !dbg !5339
  %35 = sub i64 %28, %33, !dbg !5360
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !5332, metadata !686) #12, !dbg !5341
  %36 = icmp eq i64 %34, 0, !dbg !5361
  br i1 %36, label %37, label %40, !dbg !5363

; <label>:37:                                     ; preds = %25
  %38 = icmp ne i64 %35, 0, !dbg !5364
  %39 = sext i1 %38 to i32, !dbg !5365
  br label %44

; <label>:40:                                     ; preds = %25
  %41 = getelementptr inbounds i8, i8* %29, i64 %33, !dbg !5366
  %42 = getelementptr inbounds i8, i8* %26, i64 %31, !dbg !5367
  %43 = icmp eq i64 %35, 0, !dbg !5368
  br i1 %43, label %44, label %22

; <label>:44:                                     ; preds = %22, %40, %11, %37
  %45 = phi i32 [ %39, %37 ], [ %17, %11 ], [ 1, %40 ], [ %23, %22 ]
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !5302, metadata !686), !dbg !5319
  store i8 %13, i8* %12, align 1, !dbg !5370, !tbaa !782
  store i8 %15, i8* %14, align 1, !dbg !5371, !tbaa !782
  br label %46

; <label>:46:                                     ; preds = %44, %9
  %47 = phi i32 [ 0, %9 ], [ %45, %44 ]
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !5302, metadata !686), !dbg !5319
  ret i32 %47, !dbg !5372
}

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i32 @memcoll0(i8* nocapture readonly, i64, i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !5373 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5375, metadata !686), !dbg !5379
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5376, metadata !686), !dbg !5380
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5377, metadata !686), !dbg !5381
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5378, metadata !686), !dbg !5382
  %5 = icmp eq i64 %1, %3, !dbg !5383
  br i1 %5, label %6, label %11, !dbg !5385

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %1) #14, !dbg !5386
  %8 = icmp eq i32 %7, 0, !dbg !5387
  br i1 %8, label %9, label %11, !dbg !5388

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #17, !dbg !5389
  store i32 0, i32* %10, align 4, !dbg !5391, !tbaa !795
  br label %38, !dbg !5392

; <label>:11:                                     ; preds = %6, %4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5327, metadata !686) #12, !dbg !5393
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5330, metadata !686) #12, !dbg !5395
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5331, metadata !686) #12, !dbg !5396
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5332, metadata !686) #12, !dbg !5397
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5327, metadata !686) #12, !dbg !5393
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5330, metadata !686) #12, !dbg !5395
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5332, metadata !686) #12, !dbg !5397
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5331, metadata !686) #12, !dbg !5396
  %12 = tail call i32* @__errno_location() #17, !dbg !5398
  store i32 0, i32* %12, align 4, !dbg !5399, !tbaa !795
  %13 = tail call i32 @strcoll(i8* %0, i8* %2) #14, !dbg !5400
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !5333, metadata !686) #12, !dbg !5401
  %14 = icmp eq i32 %13, 0, !dbg !5402
  br i1 %14, label %15, label %38, !dbg !5403

; <label>:15:                                     ; preds = %11
  br label %19, !dbg !5404

; <label>:16:                                     ; preds = %34
  tail call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !5327, metadata !686) #12, !dbg !5393
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5330, metadata !686) #12, !dbg !5395
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !5332, metadata !686) #12, !dbg !5397
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !5331, metadata !686) #12, !dbg !5396
  store i32 0, i32* %12, align 4, !dbg !5399, !tbaa !795
  %17 = tail call i32 @strcoll(i8* %36, i8* %35) #14, !dbg !5400
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !5333, metadata !686) #12, !dbg !5401
  %18 = icmp eq i32 %17, 0, !dbg !5402
  br i1 %18, label %19, label %38, !dbg !5403, !llvm.loop !5350

; <label>:19:                                     ; preds = %15, %16
  %20 = phi i8* [ %36, %16 ], [ %0, %15 ]
  %21 = phi i64 [ %28, %16 ], [ %1, %15 ]
  %22 = phi i64 [ %29, %16 ], [ %3, %15 ]
  %23 = phi i8* [ %35, %16 ], [ %2, %15 ]
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !5331, metadata !686) #12, !dbg !5396
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !5332, metadata !686) #12, !dbg !5397
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5330, metadata !686) #12, !dbg !5395
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !5327, metadata !686) #12, !dbg !5393
  %24 = tail call i64 @strlen(i8* %20) #14, !dbg !5404
  %25 = add i64 %24, 1, !dbg !5405
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !5334, metadata !686) #12, !dbg !5406
  %26 = tail call i64 @strlen(i8* %23) #14, !dbg !5407
  %27 = add i64 %26, 1, !dbg !5408
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !5336, metadata !686) #12, !dbg !5409
  %28 = sub i64 %21, %25, !dbg !5410
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5330, metadata !686) #12, !dbg !5395
  %29 = sub i64 %22, %27, !dbg !5411
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !5332, metadata !686) #12, !dbg !5397
  %30 = icmp eq i64 %28, 0, !dbg !5412
  br i1 %30, label %31, label %34, !dbg !5413

; <label>:31:                                     ; preds = %19
  %32 = icmp ne i64 %29, 0, !dbg !5414
  %33 = sext i1 %32 to i32, !dbg !5415
  br label %38

; <label>:34:                                     ; preds = %19
  %35 = getelementptr inbounds i8, i8* %23, i64 %27, !dbg !5416
  %36 = getelementptr inbounds i8, i8* %20, i64 %25, !dbg !5417
  %37 = icmp eq i64 %29, 0, !dbg !5418
  br i1 %37, label %38, label %16

; <label>:38:                                     ; preds = %34, %16, %31, %11, %9
  %39 = phi i32 [ 0, %9 ], [ %33, %31 ], [ %13, %11 ], [ 1, %34 ], [ %17, %16 ]
  ret i32 %39, !dbg !5419
}

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
attributes #10 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !164, !170, !183, !191, !613, !616, !618, !620, !623, !626, !198, !205, !628, !258, !636, !652, !654, !656, !660, !662, !664, !666, !668, !671, !267, !673}
!llvm.ident = !{!675, !675, !675, !675, !675, !675, !675, !675, !675, !675, !675, !675, !675, !675, !675, !675, !675, !675, !675, !675, !675, !675, !675, !675, !675, !675, !675}
!llvm.module.flags = !{!676, !677, !678, !679, !680}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "hard_LC_COLLATE", scope: !2, file: !3, line: 56, type: !96, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !72, globals: !85)
!3 = !DIFile(filename: "src/uniq.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !10, !14, !19, !27, !34, !48, !57}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Skip_field_option_type", file: !3, line: 481, size: 32, elements: !6)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "SFO_NONE", value: 0)
!8 = !DIEnumerator(name: "SFO_OBSOLETE", value: 1)
!9 = !DIEnumerator(name: "SFO_NEW", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "countmode", file: !3, line: 67, size: 32, elements: !11)
!11 = !{!12, !13}
!12 = !DIEnumerator(name: "count_occurrences", value: 0)
!13 = !DIEnumerator(name: "count_none", value: 1)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "delimit_method", file: !3, line: 87, size: 32, elements: !15)
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "DM_NONE", value: 0)
!17 = !DIEnumerator(name: "DM_PREPEND", value: 1)
!18 = !DIEnumerator(name: "DM_SEPARATE", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !20, line: 26, size: 32, elements: !21)
!20 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25, !26}
!22 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!23 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!24 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!25 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!26 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "grouping_method", file: !3, line: 112, size: 32, elements: !28)
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "GM_NONE", value: 0)
!30 = !DIEnumerator(name: "GM_PREPEND", value: 1)
!31 = !DIEnumerator(name: "GM_APPEND", value: 2)
!32 = !DIEnumerator(name: "GM_SEPARATE", value: 3)
!33 = !DIEnumerator(name: "GM_BOTH", value: 4)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !35, line: 32, size: 32, elements: !36)
!35 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!37 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!38 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!39 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!40 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!41 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!42 = !DIEnumerator(name: "c_quoting_style", value: 5)
!43 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!44 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!45 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!46 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!47 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 45, size: 32, elements: !50)
!49 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!50 = !{!51, !52, !53, !54, !55, !56}
!51 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!52 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!53 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!54 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!55 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!56 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !58, line: 46, size: 32, elements: !59)
!58 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71}
!60 = !DIEnumerator(name: "_ISupper", value: 256)
!61 = !DIEnumerator(name: "_ISlower", value: 512)
!62 = !DIEnumerator(name: "_ISalpha", value: 1024)
!63 = !DIEnumerator(name: "_ISdigit", value: 2048)
!64 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!65 = !DIEnumerator(name: "_ISspace", value: 8192)
!66 = !DIEnumerator(name: "_ISprint", value: 16384)
!67 = !DIEnumerator(name: "_ISgraph", value: 32768)
!68 = !DIEnumerator(name: "_ISblank", value: 1)
!69 = !DIEnumerator(name: "_IScntrl", value: 2)
!70 = !DIEnumerator(name: "_ISpunct", value: 4)
!71 = !DIEnumerator(name: "_ISalnum", value: 8)
!72 = !{!73, !74, !75, !78, !81, !82, !83, !84}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 62, baseType: !77)
!76 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!84 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!85 = !{!0, !86, !88, !90, !92, !94, !97, !99, !101, !103, !105, !125, !139, !145, !151, !153, !157}
!86 = !DIGlobalVariableExpression(var: !87)
!87 = distinct !DIGlobalVariable(name: "skip_fields", scope: !2, file: !3, line: 59, type: !75, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89)
!89 = distinct !DIGlobalVariable(name: "skip_chars", scope: !2, file: !3, line: 62, type: !75, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91)
!91 = distinct !DIGlobalVariable(name: "check_chars", scope: !2, file: !3, line: 65, type: !75, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93)
!93 = distinct !DIGlobalVariable(name: "countmode", scope: !2, file: !3, line: 75, type: !10, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95)
!95 = distinct !DIGlobalVariable(name: "output_unique", scope: !2, file: !3, line: 80, type: !96, isLocal: true, isDefinition: true)
!96 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!97 = !DIGlobalVariableExpression(var: !98)
!98 = distinct !DIGlobalVariable(name: "output_first_repeated", scope: !2, file: !3, line: 81, type: !96, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100)
!100 = distinct !DIGlobalVariable(name: "output_later_repeated", scope: !2, file: !3, line: 82, type: !96, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102)
!102 = distinct !DIGlobalVariable(name: "ignore_case", scope: !2, file: !3, line: 85, type: !96, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104)
!104 = distinct !DIGlobalVariable(name: "delimit_groups", scope: !2, file: !3, line: 110, type: !14, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106)
!106 = distinct !DIGlobalVariable(name: "infomap", scope: !107, file: !108, line: 632, type: !122, isLocal: true, isDefinition: true)
!107 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !108, file: !108, line: 630, type: !109, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !111)
!108 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !DISubroutineType(types: !110)
!110 = !{null, !78}
!111 = !{!112, !113, !114, !121}
!112 = !DILocalVariable(name: "program", arg: 1, scope: !107, file: !108, line: 630, type: !78)
!113 = !DILocalVariable(name: "node", scope: !107, file: !108, line: 642, type: !78)
!114 = !DILocalVariable(name: "map_prog", scope: !107, file: !108, line: 643, type: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !107, file: !108, line: 632, size: 128, elements: !118)
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !117, file: !108, line: 632, baseType: !78, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !117, file: !108, line: 632, baseType: !78, size: 64, offset: 64)
!121 = !DILocalVariable(name: "lc_messages", scope: !107, file: !108, line: 655, type: !78)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 896, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 7)
!125 = !DIGlobalVariableExpression(var: !126)
!126 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 147, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 3328, elements: !137)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !130, line: 50, size: 256, elements: !131)
!130 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !{!132, !133, !134, !136}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !129, file: !130, line: 52, baseType: !78, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !129, file: !130, line: 55, baseType: !82, size: 32, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !129, file: !130, line: 56, baseType: !135, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !129, file: !130, line: 57, baseType: !82, size: 32, offset: 192)
!137 = !{!138}
!138 = !DISubrange(count: 13)
!139 = !DIGlobalVariableExpression(var: !140)
!140 = distinct !DIGlobalVariable(name: "delimit_method_map", scope: !2, file: !3, line: 104, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 96, elements: !143)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!143 = !{!144}
!144 = !DISubrange(count: 3)
!145 = !DIGlobalVariableExpression(var: !146)
!146 = distinct !DIGlobalVariable(name: "delimit_method_string", scope: !2, file: !3, line: 99, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 256, elements: !149)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!149 = !{!150}
!150 = !DISubrange(count: 4)
!151 = !DIGlobalVariableExpression(var: !152)
!152 = distinct !DIGlobalVariable(name: "grouping", scope: !2, file: !3, line: 140, type: !27, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154)
!154 = distinct !DIGlobalVariable(name: "grouping_method_map", scope: !2, file: !3, line: 135, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 128, elements: !149)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!157 = !DIGlobalVariableExpression(var: !158)
!158 = distinct !DIGlobalVariable(name: "grouping_method_string", scope: !2, file: !3, line: 130, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 320, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 5)
!162 = !DIGlobalVariableExpression(var: !163)
!163 = distinct !DIGlobalVariable(name: "Version", scope: !164, file: !165, line: 2, type: !78, isLocal: false, isDefinition: true)
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166, globals: !167)
!165 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!166 = !{}
!167 = !{!162}
!168 = !DIGlobalVariableExpression(var: !169)
!169 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !170, file: !175, line: 69, type: !176, isLocal: false, isDefinition: true)
!170 = distinct !DICompileUnit(language: DW_LANG_C99, file: !171, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !172, retainedTypes: !173, globals: !174)
!171 = !DIFile(filename: "./lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!172 = !{!34}
!173 = !{!73, !84}
!174 = !{!168}
!175 = !DIFile(filename: "lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !177, line: 55, baseType: !178)
!177 = !DIFile(filename: "./lib/argmatch.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null}
!181 = !DIGlobalVariableExpression(var: !182)
!182 = distinct !DIGlobalVariable(name: "file_name", scope: !183, file: !188, line: 36, type: !78, isLocal: true, isDefinition: true)
!183 = distinct !DICompileUnit(language: DW_LANG_C99, file: !184, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166, globals: !185)
!184 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!185 = !{!181, !186}
!186 = !DIGlobalVariableExpression(var: !187)
!187 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !183, file: !188, line: 46, type: !96, isLocal: true, isDefinition: true)
!188 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!189 = !DIGlobalVariableExpression(var: !190)
!190 = distinct !DIGlobalVariable(name: "exit_failure", scope: !191, file: !194, line: 24, type: !195, isLocal: false, isDefinition: true)
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166, globals: !193)
!192 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!193 = !{!189}
!194 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!195 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !82)
!196 = !DIGlobalVariableExpression(var: !197)
!197 = distinct !DIGlobalVariable(name: "program_name", scope: !198, file: !202, line: 33, type: !78, isLocal: false, isDefinition: true)
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166, retainedTypes: !200, globals: !201)
!199 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!200 = !{!73, !81}
!201 = !{!196}
!202 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!203 = !DIGlobalVariableExpression(var: !204)
!204 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !205, file: !217, line: 77, type: !253, isLocal: false, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !207, retainedTypes: !213, globals: !214)
!206 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!207 = !{!34, !208, !57}
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !35, line: 242, size: 32, elements: !209)
!209 = !{!210, !211, !212}
!210 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!211 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!212 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!213 = !{!82, !83, !75, !81}
!214 = !{!203, !215, !222, !235, !237, !242, !249, !251}
!215 = !DIGlobalVariableExpression(var: !216)
!216 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !205, file: !217, line: 93, type: !218, isLocal: false, isDefinition: true)
!217 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 320, elements: !220)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!220 = !{!221}
!221 = !DISubrange(count: 10)
!222 = !DIGlobalVariableExpression(var: !223)
!223 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !205, file: !217, line: 1043, type: !224, isLocal: false, isDefinition: true)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !217, line: 57, size: 448, elements: !225)
!225 = !{!226, !227, !228, !233, !234}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !224, file: !217, line: 60, baseType: !34, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !224, file: !217, line: 63, baseType: !82, size: 32, offset: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !224, file: !217, line: 67, baseType: !229, size: 256, offset: 64)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 256, elements: !231)
!230 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!231 = !{!232}
!232 = !DISubrange(count: 8)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !224, file: !217, line: 70, baseType: !78, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !224, file: !217, line: 73, baseType: !78, size: 64, offset: 384)
!235 = !DIGlobalVariableExpression(var: !236)
!236 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !205, file: !217, line: 108, type: !224, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238)
!238 = distinct !DIGlobalVariable(name: "slot0", scope: !205, file: !217, line: 834, type: !239, isLocal: true, isDefinition: true)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 2048, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 256)
!242 = !DIGlobalVariableExpression(var: !243)
!243 = distinct !DIGlobalVariable(name: "slotvec", scope: !205, file: !217, line: 837, type: !244, isLocal: true, isDefinition: true)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !217, line: 826, size: 128, elements: !246)
!246 = !{!247, !248}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !245, file: !217, line: 828, baseType: !75, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !245, file: !217, line: 829, baseType: !81, size: 64, offset: 64)
!249 = !DIGlobalVariableExpression(var: !250)
!250 = distinct !DIGlobalVariable(name: "nslots", scope: !205, file: !217, line: 835, type: !82, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252)
!252 = distinct !DIGlobalVariable(name: "slotvec0", scope: !205, file: !217, line: 836, type: !245, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 704, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 11)
!256 = !DIGlobalVariableExpression(var: !257)
!257 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !258, file: !261, line: 26, type: !262, isLocal: false, isDefinition: true)
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166, globals: !260)
!259 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!260 = !{!256}
!261 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 376, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 47)
!265 = !DIGlobalVariableExpression(var: !266)
!266 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !267, file: !611, line: 120, type: !612, isLocal: true, isDefinition: true)
!267 = distinct !DICompileUnit(language: DW_LANG_C99, file: !268, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !269, retainedTypes: !608, globals: !610)
!268 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!269 = !{!270}
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !271, line: 41, size: 32, elements: !272)
!271 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607}
!273 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!274 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!275 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!276 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!277 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!278 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!279 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!280 = !DIEnumerator(name: "DAY_1", value: 131079)
!281 = !DIEnumerator(name: "DAY_2", value: 131080)
!282 = !DIEnumerator(name: "DAY_3", value: 131081)
!283 = !DIEnumerator(name: "DAY_4", value: 131082)
!284 = !DIEnumerator(name: "DAY_5", value: 131083)
!285 = !DIEnumerator(name: "DAY_6", value: 131084)
!286 = !DIEnumerator(name: "DAY_7", value: 131085)
!287 = !DIEnumerator(name: "ABMON_1", value: 131086)
!288 = !DIEnumerator(name: "ABMON_2", value: 131087)
!289 = !DIEnumerator(name: "ABMON_3", value: 131088)
!290 = !DIEnumerator(name: "ABMON_4", value: 131089)
!291 = !DIEnumerator(name: "ABMON_5", value: 131090)
!292 = !DIEnumerator(name: "ABMON_6", value: 131091)
!293 = !DIEnumerator(name: "ABMON_7", value: 131092)
!294 = !DIEnumerator(name: "ABMON_8", value: 131093)
!295 = !DIEnumerator(name: "ABMON_9", value: 131094)
!296 = !DIEnumerator(name: "ABMON_10", value: 131095)
!297 = !DIEnumerator(name: "ABMON_11", value: 131096)
!298 = !DIEnumerator(name: "ABMON_12", value: 131097)
!299 = !DIEnumerator(name: "MON_1", value: 131098)
!300 = !DIEnumerator(name: "MON_2", value: 131099)
!301 = !DIEnumerator(name: "MON_3", value: 131100)
!302 = !DIEnumerator(name: "MON_4", value: 131101)
!303 = !DIEnumerator(name: "MON_5", value: 131102)
!304 = !DIEnumerator(name: "MON_6", value: 131103)
!305 = !DIEnumerator(name: "MON_7", value: 131104)
!306 = !DIEnumerator(name: "MON_8", value: 131105)
!307 = !DIEnumerator(name: "MON_9", value: 131106)
!308 = !DIEnumerator(name: "MON_10", value: 131107)
!309 = !DIEnumerator(name: "MON_11", value: 131108)
!310 = !DIEnumerator(name: "MON_12", value: 131109)
!311 = !DIEnumerator(name: "AM_STR", value: 131110)
!312 = !DIEnumerator(name: "PM_STR", value: 131111)
!313 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!314 = !DIEnumerator(name: "D_FMT", value: 131113)
!315 = !DIEnumerator(name: "T_FMT", value: 131114)
!316 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!317 = !DIEnumerator(name: "ERA", value: 131116)
!318 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!319 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!320 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!321 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!322 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!323 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!324 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!325 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!326 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!327 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!328 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!329 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!330 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!331 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!332 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!333 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!334 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!335 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!336 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!337 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!338 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!339 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!340 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!341 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!342 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!343 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!344 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!345 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!346 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!347 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!348 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!349 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!350 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!351 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!352 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!353 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!354 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!355 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!356 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!357 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!358 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!359 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!360 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!361 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!362 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!363 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!364 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!365 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!366 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!367 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!368 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!369 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!370 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!371 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!372 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!373 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!374 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!375 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!376 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!377 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!378 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!379 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!380 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!381 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!382 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!383 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!384 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!385 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!386 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!387 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!388 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!389 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!390 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!391 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!392 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!393 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!394 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!395 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!396 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!397 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!398 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!399 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!400 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!401 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!402 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!403 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!404 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!405 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!406 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!407 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!408 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!409 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!410 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!411 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!412 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!413 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!414 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!415 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!416 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!417 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!418 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!419 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!420 = !DIEnumerator(name: "CODESET", value: 14)
!421 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!422 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!423 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!424 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!467 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!468 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!469 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!470 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!471 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!472 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!473 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!474 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!475 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!476 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!477 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!478 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!479 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!480 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!481 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!484 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!486 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!487 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!488 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!489 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!490 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!491 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!492 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!493 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!494 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!495 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!496 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!497 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!498 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!499 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!500 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!501 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!502 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!503 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!504 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!505 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!506 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!507 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!508 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!509 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!510 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!511 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!512 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!513 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!514 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!531 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!532 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!535 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!536 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!537 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!538 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!539 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!540 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!541 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!542 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!543 = !DIEnumerator(name: "THOUSEP", value: 65537)
!544 = !DIEnumerator(name: "__GROUPING", value: 65538)
!545 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!546 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!547 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!548 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!549 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!550 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!551 = !DIEnumerator(name: "__YESSTR", value: 327682)
!552 = !DIEnumerator(name: "__NOSTR", value: 327683)
!553 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!554 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!555 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!556 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!557 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!558 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!559 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!560 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!561 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!562 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!563 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!564 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!565 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!566 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!567 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!568 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!569 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!570 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!571 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!572 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!573 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!574 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!575 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!576 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!577 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!578 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!579 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!580 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!581 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!582 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!583 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!584 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!585 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!586 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!587 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!588 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!589 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!602 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!603 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!604 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!606 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!607 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!608 = !{!73, !81, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!610 = !{!265}
!611 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!612 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!613 = distinct !DICompileUnit(language: DW_LANG_C99, file: !614, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !615)
!614 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!615 = !{!48}
!616 = distinct !DICompileUnit(language: DW_LANG_C99, file: !617, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166)
!617 = !DIFile(filename: "./lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!618 = distinct !DICompileUnit(language: DW_LANG_C99, file: !619, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166)
!619 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!620 = distinct !DICompileUnit(language: DW_LANG_C99, file: !621, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166, retainedTypes: !622)
!621 = !DIFile(filename: "./lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!622 = !{!609}
!623 = distinct !DICompileUnit(language: DW_LANG_C99, file: !624, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166, retainedTypes: !625)
!624 = !DIFile(filename: "./lib/memcasecmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!625 = !{!82}
!626 = distinct !DICompileUnit(language: DW_LANG_C99, file: !627, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166)
!627 = !DIFile(filename: "./lib/posixver.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!628 = distinct !DICompileUnit(language: DW_LANG_C99, file: !629, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !630, retainedTypes: !635)
!629 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!630 = !{!631}
!631 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !632, line: 41, size: 32, elements: !633)
!632 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!633 = !{!634}
!634 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!635 = !{!73}
!636 = distinct !DICompileUnit(language: DW_LANG_C99, file: !637, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !638, retainedTypes: !651)
!637 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!638 = !{!639}
!639 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !641, file: !640, line: 192, size: 32, elements: !649)
!640 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!641 = distinct !DISubprogram(name: "x2nrealloc", scope: !640, file: !640, line: 180, type: !642, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !644)
!642 = !DISubroutineType(types: !643)
!643 = !{!73, !73, !74, !75}
!644 = !{!645, !646, !647, !648}
!645 = !DILocalVariable(name: "p", arg: 1, scope: !641, file: !640, line: 180, type: !73)
!646 = !DILocalVariable(name: "pn", arg: 2, scope: !641, file: !640, line: 180, type: !74)
!647 = !DILocalVariable(name: "s", arg: 3, scope: !641, file: !640, line: 180, type: !75)
!648 = !DILocalVariable(name: "n", scope: !641, file: !640, line: 182, type: !75)
!649 = !{!650}
!650 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!651 = !{!75, !81, !73}
!652 = distinct !DICompileUnit(language: DW_LANG_C99, file: !653, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166)
!653 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!654 = distinct !DICompileUnit(language: DW_LANG_C99, file: !655, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !172)
!655 = !DIFile(filename: "./lib/xmemcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!656 = distinct !DICompileUnit(language: DW_LANG_C99, file: !657, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !658, retainedTypes: !659)
!657 = !DIFile(filename: "./lib/xstrtoul.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!658 = !{!19, !57}
!659 = !{!82, !83}
!660 = distinct !DICompileUnit(language: DW_LANG_C99, file: !661, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166, retainedTypes: !635)
!661 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!662 = distinct !DICompileUnit(language: DW_LANG_C99, file: !663, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166)
!663 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!664 = distinct !DICompileUnit(language: DW_LANG_C99, file: !665, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166, retainedTypes: !635)
!665 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!666 = distinct !DICompileUnit(language: DW_LANG_C99, file: !667, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166, retainedTypes: !635)
!667 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!668 = distinct !DICompileUnit(language: DW_LANG_C99, file: !669, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166, retainedTypes: !670)
!669 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!670 = !{!75}
!671 = distinct !DICompileUnit(language: DW_LANG_C99, file: !672, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166)
!672 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!673 = distinct !DICompileUnit(language: DW_LANG_C99, file: !674, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166)
!674 = !DIFile(filename: "./lib/memcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!675 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!676 = !{i32 2, !"Dwarf Version", i32 4}
!677 = !{i32 2, !"Debug Info Version", i32 3}
!678 = !{i32 1, !"wchar_size", i32 4}
!679 = !{i32 7, !"PIC Level", i32 2}
!680 = !{i32 7, !"PIE Level", i32 2}
!681 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 165, type: !682, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !684)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !82}
!684 = !{!685}
!685 = !DILocalVariable(name: "status", arg: 1, scope: !681, file: !3, line: 165, type: !82)
!686 = !DIExpression()
!687 = !DILocation(line: 165, column: 12, scope: !681)
!688 = !DILocation(line: 167, column: 14, scope: !689)
!689 = distinct !DILexicalBlock(scope: !681, file: !3, line: 167, column: 7)
!690 = !DILocation(line: 167, column: 7, scope: !681)
!691 = !DILocation(line: 168, column: 5, scope: !692)
!692 = distinct !DILexicalBlock(scope: !689, file: !3, line: 168, column: 5)
!693 = !{!694, !694, i64 0}
!694 = !{!"any pointer", !695, i64 0}
!695 = !{!"omnipotent char", !696, i64 0}
!696 = !{!"Simple C/C++ TBAA"}
!697 = !DILocation(line: 171, column: 7, scope: !698)
!698 = distinct !DILexicalBlock(scope: !689, file: !3, line: 170, column: 5)
!699 = !DILocation(line: 175, column: 7, scope: !698)
!700 = !DILocation(line: 587, column: 3, scope: !701, inlinedAt: !702)
!701 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !108, file: !108, line: 585, type: !179, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !166)
!702 = distinct !DILocation(line: 182, column: 7, scope: !698)
!703 = !DILocation(line: 184, column: 6, scope: !698)
!704 = !DILocation(line: 188, column: 6, scope: !698)
!705 = !DILocation(line: 194, column: 6, scope: !698)
!706 = !DILocation(line: 197, column: 6, scope: !698)
!707 = !DILocation(line: 201, column: 6, scope: !698)
!708 = !DILocation(line: 206, column: 7, scope: !698)
!709 = !DILocation(line: 209, column: 6, scope: !698)
!710 = !DILocation(line: 212, column: 6, scope: !698)
!711 = !DILocation(line: 213, column: 6, scope: !698)
!712 = !DILocation(line: 214, column: 6, scope: !698)
!713 = !DILocation(line: 219, column: 6, scope: !698)
!714 = !DILocation(line: 642, column: 15, scope: !107, inlinedAt: !715)
!715 = distinct !DILocation(line: 225, column: 7, scope: !698)
!716 = !DILocation(line: 651, column: 3, scope: !107, inlinedAt: !715)
!717 = !DILocation(line: 655, column: 29, scope: !107, inlinedAt: !715)
!718 = !DILocation(line: 655, column: 15, scope: !107, inlinedAt: !715)
!719 = !DILocation(line: 656, column: 7, scope: !720, inlinedAt: !715)
!720 = distinct !DILexicalBlock(scope: !107, file: !108, line: 656, column: 7)
!721 = !DILocation(line: 656, column: 19, scope: !720, inlinedAt: !715)
!722 = !DILocation(line: 656, column: 22, scope: !720, inlinedAt: !715)
!723 = !DILocation(line: 656, column: 7, scope: !107, inlinedAt: !715)
!724 = !DILocation(line: 662, column: 7, scope: !725, inlinedAt: !715)
!725 = distinct !DILexicalBlock(scope: !720, file: !108, line: 657, column: 5)
!726 = !DILocation(line: 664, column: 5, scope: !725, inlinedAt: !715)
!727 = !DILocation(line: 665, column: 3, scope: !107, inlinedAt: !715)
!728 = !DILocation(line: 667, column: 3, scope: !107, inlinedAt: !715)
!729 = !DILocation(line: 227, column: 3, scope: !681)
!730 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 489, type: !731, isLocal: false, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !734)
!731 = !DISubroutineType(types: !732)
!732 = !{!82, !82, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !745, !746, !747}
!735 = !DILocalVariable(name: "argc", arg: 1, scope: !730, file: !3, line: 489, type: !82)
!736 = !DILocalVariable(name: "argv", arg: 2, scope: !730, file: !3, line: 489, type: !733)
!737 = !DILocalVariable(name: "optc", scope: !730, file: !3, line: 491, type: !82)
!738 = !DILocalVariable(name: "posixly_correct", scope: !730, file: !3, line: 492, type: !96)
!739 = !DILocalVariable(name: "skip_field_option_type", scope: !730, file: !3, line: 493, type: !5)
!740 = !DILocalVariable(name: "nfiles", scope: !730, file: !3, line: 494, type: !230)
!741 = !DILocalVariable(name: "file", scope: !730, file: !3, line: 495, type: !742)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 128, elements: !743)
!743 = !{!744}
!744 = !DISubrange(count: 2)
!745 = !DILocalVariable(name: "delimiter", scope: !730, file: !3, line: 496, type: !80)
!746 = !DILocalVariable(name: "output_option_used", scope: !730, file: !3, line: 497, type: !96)
!747 = !DILocalVariable(name: "size", scope: !748, file: !3, line: 542, type: !77)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 541, column: 11)
!749 = distinct !DILexicalBlock(scope: !750, file: !3, line: 539, column: 9)
!750 = distinct !DILexicalBlock(scope: !751, file: !3, line: 523, column: 11)
!751 = distinct !DILexicalBlock(scope: !730, file: !3, line: 518, column: 5)
!752 = !DILocation(line: 489, column: 11, scope: !730)
!753 = !DILocation(line: 489, column: 24, scope: !730)
!754 = !DILocation(line: 491, column: 7, scope: !730)
!755 = !DILocation(line: 492, column: 27, scope: !730)
!756 = !DILocation(line: 492, column: 54, scope: !730)
!757 = !DILocation(line: 493, column: 31, scope: !730)
!758 = !DILocation(line: 494, column: 16, scope: !730)
!759 = !DILocation(line: 495, column: 3, scope: !730)
!760 = !DILocation(line: 495, column: 15, scope: !730)
!761 = !DILocation(line: 496, column: 8, scope: !730)
!762 = !DILocation(line: 497, column: 8, scope: !730)
!763 = !DILocation(line: 499, column: 13, scope: !730)
!764 = !DILocation(line: 499, column: 3, scope: !730)
!765 = !DILocation(line: 499, column: 11, scope: !730)
!766 = !DILocation(line: 501, column: 21, scope: !730)
!767 = !DILocation(line: 501, column: 3, scope: !730)
!768 = !DILocation(line: 502, column: 3, scope: !730)
!769 = !DILocation(line: 503, column: 3, scope: !730)
!770 = !DILocation(line: 504, column: 3, scope: !730)
!771 = !DILocation(line: 505, column: 21, scope: !730)
!772 = !DILocation(line: 505, column: 19, scope: !730)
!773 = !{!774, !774, i64 0}
!774 = !{!"_Bool", !695, i64 0}
!775 = !DILocation(line: 507, column: 3, scope: !730)
!776 = !DILocation(line: 509, column: 14, scope: !730)
!777 = !{!778, !778, i64 0}
!778 = !{!"long", !695, i64 0}
!779 = !DILocation(line: 510, column: 15, scope: !730)
!780 = !DILocation(line: 511, column: 15, scope: !730)
!781 = !DILocation(line: 515, column: 18, scope: !730)
!782 = !{!695, !695, i64 0}
!783 = !DILocation(line: 517, column: 3, scope: !730)
!784 = !DILocation(line: 523, column: 16, scope: !750)
!785 = !DILocation(line: 524, column: 41, scope: !750)
!786 = !DILocation(line: 524, column: 31, scope: !750)
!787 = !DILocation(line: 524, column: 11, scope: !750)
!788 = !DILocation(line: 525, column: 23, scope: !750)
!789 = !DILocation(line: 523, column: 11, scope: !751)
!790 = distinct !{!790, !783, !791}
!791 = !DILocation(line: 646, column: 5, scope: !730)
!792 = !DILocation(line: 529, column: 23, scope: !793)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 529, column: 15)
!794 = distinct !DILexicalBlock(scope: !750, file: !3, line: 528, column: 9)
!795 = !{!796, !796, i64 0}
!796 = !{!"int", !695, i64 0}
!797 = !DILocation(line: 529, column: 20, scope: !793)
!798 = !DILocation(line: 529, column: 15, scope: !794)
!799 = !DILocation(line: 531, column: 22, scope: !800)
!800 = distinct !DILexicalBlock(scope: !794, file: !3, line: 531, column: 15)
!801 = !DILocation(line: 531, column: 15, scope: !794)
!802 = !DILocation(line: 533, column: 28, scope: !803)
!803 = distinct !DILexicalBlock(scope: !800, file: !3, line: 532, column: 13)
!804 = !DILocation(line: 533, column: 63, scope: !803)
!805 = !DILocation(line: 533, column: 58, scope: !803)
!806 = !DILocation(line: 533, column: 51, scope: !803)
!807 = !DILocation(line: 533, column: 15, scope: !803)
!808 = !DILocation(line: 534, column: 15, scope: !803)
!809 = !DILocation(line: 536, column: 39, scope: !794)
!810 = !DILocation(line: 536, column: 28, scope: !794)
!811 = !DILocation(line: 536, column: 22, scope: !794)
!812 = !DILocation(line: 536, column: 11, scope: !794)
!813 = !DILocation(line: 536, column: 26, scope: !794)
!814 = !DILocation(line: 537, column: 9, scope: !794)
!815 = !DILocation(line: 542, column: 13, scope: !748)
!816 = !DILocation(line: 543, column: 17, scope: !817)
!817 = distinct !DILexicalBlock(scope: !748, file: !3, line: 543, column: 17)
!818 = !DILocation(line: 543, column: 27, scope: !817)
!819 = !DILocation(line: 544, column: 17, scope: !817)
!820 = !DILocation(line: 233, column: 19, scope: !821, inlinedAt: !826)
!821 = distinct !DISubprogram(name: "strict_posix2", scope: !3, file: !3, line: 231, type: !822, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !824)
!822 = !DISubroutineType(types: !823)
!823 = !{!96}
!824 = !{!825}
!825 = !DILocalVariable(name: "posix_ver", scope: !821, file: !3, line: 233, type: !82)
!826 = distinct !DILocation(line: 544, column: 22, scope: !817)
!827 = !DILocation(line: 233, column: 7, scope: !821, inlinedAt: !826)
!828 = !DILocation(line: 234, column: 30, scope: !821, inlinedAt: !826)
!829 = !DILocation(line: 545, column: 17, scope: !817)
!830 = !DILocation(line: 545, column: 30, scope: !817)
!831 = !DILocation(line: 542, column: 31, scope: !748)
!832 = !DILocation(line: 545, column: 20, scope: !817)
!833 = !DILocation(line: 545, column: 59, scope: !817)
!834 = !DILocation(line: 546, column: 17, scope: !817)
!835 = !DILocation(line: 546, column: 20, scope: !817)
!836 = !DILocation(line: 547, column: 26, scope: !817)
!837 = !DILocation(line: 547, column: 15, scope: !817)
!838 = !DILocation(line: 548, column: 29, scope: !839)
!839 = distinct !DILexicalBlock(scope: !817, file: !3, line: 548, column: 22)
!840 = !DILocation(line: 548, column: 22, scope: !817)
!841 = !DILocation(line: 550, column: 30, scope: !842)
!842 = distinct !DILexicalBlock(scope: !839, file: !3, line: 549, column: 15)
!843 = !DILocation(line: 550, column: 60, scope: !842)
!844 = !DILocation(line: 550, column: 53, scope: !842)
!845 = !DILocation(line: 550, column: 17, scope: !842)
!846 = !DILocation(line: 551, column: 17, scope: !842)
!847 = !DILocation(line: 554, column: 32, scope: !839)
!848 = !DILocation(line: 554, column: 26, scope: !839)
!849 = !DILocation(line: 554, column: 15, scope: !839)
!850 = !DILocation(line: 554, column: 30, scope: !839)
!851 = !DILocation(line: 555, column: 11, scope: !749)
!852 = !DILocation(line: 556, column: 11, scope: !749)
!853 = !DILocation(line: 569, column: 40, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 569, column: 17)
!855 = distinct !DILexicalBlock(scope: !749, file: !3, line: 568, column: 11)
!856 = !DILocation(line: 569, column: 17, scope: !855)
!857 = !DILocation(line: 570, column: 27, scope: !854)
!858 = !DILocation(line: 572, column: 18, scope: !859)
!859 = distinct !DILexicalBlock(scope: !855, file: !3, line: 572, column: 17)
!860 = !DILocation(line: 573, column: 27, scope: !859)
!861 = !DILocation(line: 573, column: 15, scope: !859)
!862 = !DILocation(line: 582, column: 11, scope: !749)
!863 = !DILocation(line: 587, column: 11, scope: !749)
!864 = !DILocation(line: 592, column: 15, scope: !865)
!865 = distinct !DILexicalBlock(scope: !749, file: !3, line: 592, column: 15)
!866 = !DILocation(line: 592, column: 22, scope: !865)
!867 = !DILocation(line: 592, column: 15, scope: !749)
!868 = !DILocation(line: 595, column: 30, scope: !865)
!869 = !DILocation(line: 599, column: 11, scope: !749)
!870 = !DILocation(line: 602, column: 15, scope: !871)
!871 = distinct !DILexicalBlock(scope: !749, file: !3, line: 602, column: 15)
!872 = !DILocation(line: 602, column: 22, scope: !871)
!873 = !DILocation(line: 602, column: 15, scope: !749)
!874 = !DILocation(line: 605, column: 24, scope: !871)
!875 = !DILocation(line: 608, column: 11, scope: !749)
!876 = !DILocation(line: 612, column: 35, scope: !749)
!877 = !DILocalVariable(name: "opt", arg: 1, scope: !878, file: !3, line: 241, type: !78)
!878 = distinct !DISubprogram(name: "size_opt", scope: !3, file: !3, line: 241, type: !879, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{!75, !78, !78}
!881 = !{!877, !882, !883}
!882 = !DILocalVariable(name: "msgid", arg: 2, scope: !878, file: !3, line: 241, type: !78)
!883 = !DILocalVariable(name: "size", scope: !878, file: !3, line: 243, type: !77)
!884 = !DILocation(line: 241, column: 23, scope: !878, inlinedAt: !885)
!885 = distinct !DILocation(line: 612, column: 25, scope: !749)
!886 = !DILocation(line: 241, column: 40, scope: !878, inlinedAt: !885)
!887 = !DILocation(line: 243, column: 3, scope: !878, inlinedAt: !885)
!888 = !DILocation(line: 243, column: 21, scope: !878, inlinedAt: !885)
!889 = !DILocation(line: 246, column: 11, scope: !878, inlinedAt: !885)
!890 = !DILocation(line: 246, column: 3, scope: !878, inlinedAt: !885)
!891 = !DILocation(line: 253, column: 7, scope: !892, inlinedAt: !885)
!892 = distinct !DILexicalBlock(scope: !878, file: !3, line: 247, column: 5)
!893 = !DILocation(line: 256, column: 10, scope: !878, inlinedAt: !885)
!894 = !DILocation(line: 257, column: 1, scope: !878, inlinedAt: !885)
!895 = !DILocation(line: 612, column: 23, scope: !749)
!896 = !DILocation(line: 614, column: 11, scope: !749)
!897 = !DILocation(line: 618, column: 11, scope: !749)
!898 = !DILocation(line: 621, column: 34, scope: !749)
!899 = !DILocation(line: 241, column: 23, scope: !878, inlinedAt: !900)
!900 = distinct !DILocation(line: 621, column: 24, scope: !749)
!901 = !DILocation(line: 241, column: 40, scope: !878, inlinedAt: !900)
!902 = !DILocation(line: 243, column: 3, scope: !878, inlinedAt: !900)
!903 = !DILocation(line: 243, column: 21, scope: !878, inlinedAt: !900)
!904 = !DILocation(line: 246, column: 11, scope: !878, inlinedAt: !900)
!905 = !DILocation(line: 246, column: 3, scope: !878, inlinedAt: !900)
!906 = !DILocation(line: 253, column: 7, scope: !892, inlinedAt: !900)
!907 = !DILocation(line: 256, column: 10, scope: !878, inlinedAt: !900)
!908 = !DILocation(line: 257, column: 1, scope: !878, inlinedAt: !900)
!909 = !DILocation(line: 621, column: 22, scope: !749)
!910 = !DILocation(line: 623, column: 11, scope: !749)
!911 = !DILocation(line: 628, column: 11, scope: !749)
!912 = !DILocation(line: 631, column: 35, scope: !749)
!913 = !DILocation(line: 241, column: 23, scope: !878, inlinedAt: !914)
!914 = distinct !DILocation(line: 631, column: 25, scope: !749)
!915 = !DILocation(line: 241, column: 40, scope: !878, inlinedAt: !914)
!916 = !DILocation(line: 243, column: 3, scope: !878, inlinedAt: !914)
!917 = !DILocation(line: 243, column: 21, scope: !878, inlinedAt: !914)
!918 = !DILocation(line: 246, column: 11, scope: !878, inlinedAt: !914)
!919 = !DILocation(line: 246, column: 3, scope: !878, inlinedAt: !914)
!920 = !DILocation(line: 253, column: 7, scope: !892, inlinedAt: !914)
!921 = !DILocation(line: 256, column: 10, scope: !878, inlinedAt: !914)
!922 = !DILocation(line: 257, column: 1, scope: !878, inlinedAt: !914)
!923 = !DILocation(line: 631, column: 23, scope: !749)
!924 = !DILocation(line: 633, column: 11, scope: !749)
!925 = !DILocation(line: 639, column: 9, scope: !749)
!926 = !DILocation(line: 641, column: 9, scope: !749)
!927 = !DILocation(line: 644, column: 11, scope: !749)
!928 = !DILocation(line: 652, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !730, file: !3, line: 652, column: 7)
!930 = !DILocation(line: 652, column: 16, scope: !929)
!931 = !DILocation(line: 652, column: 30, scope: !929)
!932 = !DILocation(line: 652, column: 27, scope: !929)
!933 = !DILocation(line: 654, column: 20, scope: !934)
!934 = distinct !DILexicalBlock(scope: !929, file: !3, line: 653, column: 5)
!935 = !DILocation(line: 654, column: 7, scope: !934)
!936 = !DILocation(line: 655, column: 7, scope: !934)
!937 = !DILocation(line: 658, column: 16, scope: !938)
!938 = distinct !DILexicalBlock(scope: !730, file: !3, line: 658, column: 7)
!939 = !DILocation(line: 658, column: 40, scope: !938)
!940 = !DILocation(line: 658, column: 27, scope: !938)
!941 = !DILocation(line: 661, column: 12, scope: !942)
!942 = distinct !DILexicalBlock(scope: !938, file: !3, line: 659, column: 5)
!943 = !DILocation(line: 660, column: 7, scope: !942)
!944 = !DILocation(line: 662, column: 7, scope: !942)
!945 = !DILocation(line: 665, column: 38, scope: !946)
!946 = distinct !DILexicalBlock(scope: !730, file: !3, line: 665, column: 7)
!947 = !DILocation(line: 665, column: 7, scope: !730)
!948 = !DILocation(line: 668, column: 12, scope: !949)
!949 = distinct !DILexicalBlock(scope: !946, file: !3, line: 666, column: 5)
!950 = !DILocation(line: 667, column: 7, scope: !949)
!951 = !DILocation(line: 669, column: 7, scope: !949)
!952 = !DILocation(line: 672, column: 15, scope: !730)
!953 = !DILocation(line: 672, column: 24, scope: !730)
!954 = !DILocalVariable(name: "infile", arg: 1, scope: !955, file: !3, line: 332, type: !78)
!955 = distinct !DISubprogram(name: "check_file", scope: !3, file: !3, line: 332, type: !956, isLocal: true, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !958)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !78, !78, !80}
!958 = !{!954, !959, !960, !961, !968, !969, !971, !972, !975, !976, !977, !979, !980, !981, !985, !987, !988, !993, !994, !996, !997, !998}
!959 = !DILocalVariable(name: "outfile", arg: 2, scope: !955, file: !3, line: 332, type: !78)
!960 = !DILocalVariable(name: "delimiter", arg: 3, scope: !955, file: !3, line: 332, type: !80)
!961 = !DILocalVariable(name: "lb1", scope: !955, file: !3, line: 334, type: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !963, line: 26, size: 192, elements: !964)
!963 = !DIFile(filename: "./lib/linebuffer.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!964 = !{!965, !966, !967}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !962, file: !963, line: 28, baseType: !75, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !962, file: !963, line: 29, baseType: !75, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !962, file: !963, line: 30, baseType: !81, size: 64, offset: 128)
!968 = !DILocalVariable(name: "lb2", scope: !955, file: !3, line: 334, type: !962)
!969 = !DILocalVariable(name: "thisline", scope: !955, file: !3, line: 335, type: !970)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!971 = !DILocalVariable(name: "prevline", scope: !955, file: !3, line: 335, type: !970)
!972 = !DILocalVariable(name: "prevfield", scope: !973, file: !3, line: 367, type: !81)
!973 = distinct !DILexicalBlock(scope: !974, file: !3, line: 366, column: 5)
!974 = distinct !DILexicalBlock(scope: !955, file: !3, line: 365, column: 7)
!975 = !DILocalVariable(name: "prevlen", scope: !973, file: !3, line: 368, type: !75)
!976 = !DILocalVariable(name: "first_group_printed", scope: !973, file: !3, line: 369, type: !96)
!977 = !DILocalVariable(name: "thisfield", scope: !978, file: !3, line: 373, type: !81)
!978 = distinct !DILexicalBlock(scope: !973, file: !3, line: 372, column: 9)
!979 = !DILocalVariable(name: "thislen", scope: !978, file: !3, line: 374, type: !75)
!980 = !DILocalVariable(name: "new_group", scope: !978, file: !3, line: 375, type: !96)
!981 = !DILocalVariable(name: "_tmp", scope: !982, file: !3, line: 397, type: !970)
!982 = distinct !DILexicalBlock(scope: !983, file: !3, line: 397, column: 15)
!983 = distinct !DILexicalBlock(scope: !984, file: !3, line: 393, column: 13)
!984 = distinct !DILexicalBlock(scope: !978, file: !3, line: 392, column: 15)
!985 = !DILocalVariable(name: "prevfield", scope: !986, file: !3, line: 408, type: !81)
!986 = distinct !DILexicalBlock(scope: !974, file: !3, line: 407, column: 5)
!987 = !DILocalVariable(name: "prevlen", scope: !986, file: !3, line: 409, type: !75)
!988 = !DILocalVariable(name: "match_count", scope: !986, file: !3, line: 410, type: !989)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !990, line: 112, baseType: !991)
!990 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !992, line: 62, baseType: !77)
!992 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!993 = !DILocalVariable(name: "first_delimiter", scope: !986, file: !3, line: 411, type: !96)
!994 = !DILocalVariable(name: "match", scope: !995, file: !3, line: 420, type: !96)
!995 = distinct !DILexicalBlock(scope: !986, file: !3, line: 419, column: 9)
!996 = !DILocalVariable(name: "thisfield", scope: !995, file: !3, line: 421, type: !81)
!997 = !DILocalVariable(name: "thislen", scope: !995, file: !3, line: 422, type: !75)
!998 = !DILocalVariable(name: "_tmp", scope: !999, file: !3, line: 460, type: !970)
!999 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 460, column: 15)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 458, column: 13)
!1001 = distinct !DILexicalBlock(scope: !995, file: !3, line: 457, column: 15)
!1002 = !DILocation(line: 332, column: 25, scope: !955, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 672, column: 3, scope: !730)
!1004 = !DILocation(line: 332, column: 45, scope: !955, inlinedAt: !1003)
!1005 = !DILocation(line: 332, column: 59, scope: !955, inlinedAt: !1003)
!1006 = !DILocation(line: 334, column: 3, scope: !955, inlinedAt: !1003)
!1007 = !DILocation(line: 337, column: 10, scope: !1008, inlinedAt: !1003)
!1008 = distinct !DILexicalBlock(scope: !955, file: !3, line: 337, column: 7)
!1009 = !DILocation(line: 337, column: 30, scope: !1008, inlinedAt: !1003)
!1010 = !DILocation(line: 337, column: 55, scope: !1008, inlinedAt: !1003)
!1011 = !DILocation(line: 337, column: 33, scope: !1008, inlinedAt: !1003)
!1012 = !DILocation(line: 337, column: 7, scope: !955, inlinedAt: !1003)
!1013 = !DILocation(line: 338, column: 5, scope: !1008, inlinedAt: !1003)
!1014 = !DILocation(line: 339, column: 10, scope: !1015, inlinedAt: !1003)
!1015 = distinct !DILexicalBlock(scope: !955, file: !3, line: 339, column: 7)
!1016 = !DILocation(line: 339, column: 31, scope: !1015, inlinedAt: !1003)
!1017 = !DILocation(line: 339, column: 57, scope: !1015, inlinedAt: !1003)
!1018 = !DILocation(line: 339, column: 34, scope: !1015, inlinedAt: !1003)
!1019 = !DILocation(line: 339, column: 7, scope: !955, inlinedAt: !1003)
!1020 = !DILocation(line: 340, column: 5, scope: !1015, inlinedAt: !1003)
!1021 = !DILocation(line: 342, column: 12, scope: !955, inlinedAt: !1003)
!1022 = !DILocation(line: 342, column: 3, scope: !955, inlinedAt: !1003)
!1023 = !DILocation(line: 335, column: 22, scope: !955, inlinedAt: !1003)
!1024 = !DILocation(line: 335, column: 33, scope: !955, inlinedAt: !1003)
!1025 = !DILocation(line: 334, column: 21, scope: !955, inlinedAt: !1003)
!1026 = !DILocation(line: 347, column: 3, scope: !955, inlinedAt: !1003)
!1027 = !DILocation(line: 334, column: 26, scope: !955, inlinedAt: !1003)
!1028 = !DILocation(line: 348, column: 3, scope: !955, inlinedAt: !1003)
!1029 = !DILocation(line: 365, column: 21, scope: !974, inlinedAt: !1003)
!1030 = !DILocation(line: 365, column: 46, scope: !974, inlinedAt: !1003)
!1031 = !DILocation(line: 369, column: 12, scope: !973, inlinedAt: !1003)
!1032 = !DILocation(line: 367, column: 13, scope: !973, inlinedAt: !1003)
!1033 = !DILocation(line: 368, column: 14, scope: !973, inlinedAt: !1003)
!1034 = !DILocation(line: 371, column: 15, scope: !973, inlinedAt: !1003)
!1035 = !DILocalVariable(name: "__stream", arg: 1, scope: !1036, file: !1037, line: 125, type: !1040)
!1036 = distinct !DISubprogram(name: "feof_unlocked", scope: !1037, file: !1037, line: 125, type: !1038, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1094)
!1037 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!82, !1040}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1042, line: 7, baseType: !1043)
!1042 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1044, line: 241, size: 1728, elements: !1045)
!1044 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1045 = !{!1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1066, !1067, !1068, !1069, !1072, !1073, !1075, !1079, !1082, !1084, !1085, !1086, !1087, !1088, !1089, !1090}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1043, file: !1044, line: 242, baseType: !82, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1043, file: !1044, line: 247, baseType: !81, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1043, file: !1044, line: 248, baseType: !81, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1043, file: !1044, line: 249, baseType: !81, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1043, file: !1044, line: 250, baseType: !81, size: 64, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1043, file: !1044, line: 251, baseType: !81, size: 64, offset: 320)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1043, file: !1044, line: 252, baseType: !81, size: 64, offset: 384)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1043, file: !1044, line: 253, baseType: !81, size: 64, offset: 448)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1043, file: !1044, line: 254, baseType: !81, size: 64, offset: 512)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1043, file: !1044, line: 256, baseType: !81, size: 64, offset: 576)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1043, file: !1044, line: 257, baseType: !81, size: 64, offset: 640)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1043, file: !1044, line: 258, baseType: !81, size: 64, offset: 704)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1043, file: !1044, line: 260, baseType: !1059, size: 64, offset: 768)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1044, line: 156, size: 192, elements: !1061)
!1061 = !{!1062, !1063, !1065}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1060, file: !1044, line: 157, baseType: !1059, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1060, file: !1044, line: 158, baseType: !1064, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1060, file: !1044, line: 162, baseType: !82, size: 32, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1043, file: !1044, line: 262, baseType: !1064, size: 64, offset: 832)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1043, file: !1044, line: 264, baseType: !82, size: 32, offset: 896)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1043, file: !1044, line: 268, baseType: !82, size: 32, offset: 928)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1043, file: !1044, line: 270, baseType: !1070, size: 64, offset: 960)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !992, line: 140, baseType: !1071)
!1071 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1043, file: !1044, line: 274, baseType: !83, size: 16, offset: 1024)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1043, file: !1044, line: 275, baseType: !1074, size: 8, offset: 1040)
!1074 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1043, file: !1044, line: 276, baseType: !1076, size: 8, offset: 1048)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 8, elements: !1077)
!1077 = !{!1078}
!1078 = !DISubrange(count: 1)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1043, file: !1044, line: 280, baseType: !1080, size: 64, offset: 1088)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1044, line: 150, baseType: null)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1043, file: !1044, line: 289, baseType: !1083, size: 64, offset: 1152)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !992, line: 141, baseType: !1071)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1043, file: !1044, line: 297, baseType: !73, size: 64, offset: 1216)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1043, file: !1044, line: 298, baseType: !73, size: 64, offset: 1280)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1043, file: !1044, line: 299, baseType: !73, size: 64, offset: 1344)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1043, file: !1044, line: 300, baseType: !73, size: 64, offset: 1408)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1043, file: !1044, line: 302, baseType: !75, size: 64, offset: 1472)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1043, file: !1044, line: 303, baseType: !82, size: 32, offset: 1536)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1043, file: !1044, line: 305, baseType: !1091, size: 160, offset: 1568)
!1091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 160, elements: !1092)
!1092 = !{!1093}
!1093 = !DISubrange(count: 20)
!1094 = !{!1035}
!1095 = !DILocation(line: 125, column: 1, scope: !1036, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 371, column: 15, scope: !973, inlinedAt: !1003)
!1097 = !DILocation(line: 127, column: 10, scope: !1036, inlinedAt: !1096)
!1098 = !{!1099, !796, i64 0}
!1099 = !{!"_IO_FILE", !796, i64 0, !694, i64 8, !694, i64 16, !694, i64 24, !694, i64 32, !694, i64 40, !694, i64 48, !694, i64 56, !694, i64 64, !694, i64 72, !694, i64 80, !694, i64 88, !694, i64 96, !694, i64 104, !796, i64 112, !796, i64 116, !778, i64 120, !1100, i64 128, !695, i64 130, !695, i64 131, !694, i64 136, !778, i64 144, !694, i64 152, !694, i64 160, !694, i64 168, !694, i64 176, !778, i64 184, !796, i64 192, !695, i64 196}
!1100 = !{!"short", !695, i64 0}
!1101 = !DILocation(line: 371, column: 14, scope: !973, inlinedAt: !1003)
!1102 = !DILocation(line: 371, column: 7, scope: !973, inlinedAt: !1003)
!1103 = !DILocation(line: 377, column: 15, scope: !1104, inlinedAt: !1003)
!1104 = distinct !DILexicalBlock(scope: !978, file: !3, line: 377, column: 15)
!1105 = !DILocation(line: 377, column: 65, scope: !1104, inlinedAt: !1003)
!1106 = !DILocation(line: 377, column: 15, scope: !978, inlinedAt: !1003)
!1107 = !DILocation(line: 380, column: 23, scope: !978, inlinedAt: !1003)
!1108 = !DILocation(line: 373, column: 17, scope: !978, inlinedAt: !1003)
!1109 = !DILocation(line: 381, column: 31, scope: !978, inlinedAt: !1003)
!1110 = !{!1111, !778, i64 8}
!1111 = !{!"linebuffer", !778, i64 0, !778, i64 8, !694, i64 16}
!1112 = !DILocation(line: 381, column: 38, scope: !978, inlinedAt: !1003)
!1113 = !DILocation(line: 381, column: 67, scope: !978, inlinedAt: !1003)
!1114 = !{!1111, !694, i64 16}
!1115 = !DILocation(line: 381, column: 55, scope: !978, inlinedAt: !1003)
!1116 = !DILocation(line: 381, column: 42, scope: !978, inlinedAt: !1003)
!1117 = !DILocation(line: 374, column: 18, scope: !978, inlinedAt: !1003)
!1118 = !DILocation(line: 383, column: 34, scope: !978, inlinedAt: !1003)
!1119 = !DILocation(line: 383, column: 41, scope: !978, inlinedAt: !1003)
!1120 = !DILocation(line: 384, column: 24, scope: !978, inlinedAt: !1003)
!1121 = !DILocalVariable(name: "old", arg: 1, scope: !1122, file: !3, line: 289, type: !81)
!1122 = distinct !DISubprogram(name: "different", scope: !3, file: !3, line: 289, type: !1123, isLocal: true, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1125)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!96, !81, !81, !75, !75}
!1125 = !{!1121, !1126, !1127, !1128}
!1126 = !DILocalVariable(name: "new", arg: 2, scope: !1122, file: !3, line: 289, type: !81)
!1127 = !DILocalVariable(name: "oldlen", arg: 3, scope: !1122, file: !3, line: 289, type: !75)
!1128 = !DILocalVariable(name: "newlen", arg: 4, scope: !1122, file: !3, line: 289, type: !75)
!1129 = !DILocation(line: 289, column: 18, scope: !1122, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 384, column: 27, scope: !978, inlinedAt: !1003)
!1131 = !DILocation(line: 289, column: 29, scope: !1122, inlinedAt: !1130)
!1132 = !DILocation(line: 289, column: 41, scope: !1122, inlinedAt: !1130)
!1133 = !DILocation(line: 289, column: 56, scope: !1122, inlinedAt: !1130)
!1134 = !DILocation(line: 291, column: 7, scope: !1135, inlinedAt: !1130)
!1135 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 291, column: 7)
!1136 = !DILocation(line: 291, column: 19, scope: !1135, inlinedAt: !1130)
!1137 = !DILocation(line: 291, column: 7, scope: !1122, inlinedAt: !1130)
!1138 = !DILocation(line: 293, column: 19, scope: !1139, inlinedAt: !1130)
!1139 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 293, column: 7)
!1140 = !DILocation(line: 293, column: 7, scope: !1122, inlinedAt: !1130)
!1141 = !DILocation(line: 296, column: 7, scope: !1122, inlinedAt: !1130)
!1142 = !DILocation(line: 299, column: 21, scope: !1143, inlinedAt: !1130)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 297, column: 5)
!1144 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 296, column: 7)
!1145 = !DILocation(line: 299, column: 31, scope: !1143, inlinedAt: !1130)
!1146 = !DILocation(line: 299, column: 34, scope: !1143, inlinedAt: !1130)
!1147 = !DILocation(line: 301, column: 12, scope: !1148, inlinedAt: !1130)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 301, column: 12)
!1149 = !{i8 0, i8 2}
!1150 = !DILocation(line: 301, column: 12, scope: !1144, inlinedAt: !1130)
!1151 = !DILocation(line: 302, column: 12, scope: !1148, inlinedAt: !1130)
!1152 = !DILocation(line: 302, column: 48, scope: !1148, inlinedAt: !1130)
!1153 = !DILocation(line: 302, column: 5, scope: !1148, inlinedAt: !1130)
!1154 = !DILocation(line: 304, column: 19, scope: !1148, inlinedAt: !1130)
!1155 = !DILocation(line: 304, column: 29, scope: !1148, inlinedAt: !1130)
!1156 = !DILocation(line: 304, column: 32, scope: !1148, inlinedAt: !1130)
!1157 = !DILocation(line: 386, column: 28, scope: !1158, inlinedAt: !1003)
!1158 = distinct !DILexicalBlock(scope: !978, file: !3, line: 386, column: 15)
!1159 = !DILocation(line: 386, column: 37, scope: !1158, inlinedAt: !1003)
!1160 = !DILocation(line: 386, column: 25, scope: !1158, inlinedAt: !1003)
!1161 = !DILocation(line: 387, column: 42, scope: !1158, inlinedAt: !1003)
!1162 = !DILocation(line: 388, column: 23, scope: !1158, inlinedAt: !1003)
!1163 = !DILocation(line: 389, column: 47, scope: !1158, inlinedAt: !1003)
!1164 = !DILocation(line: 388, column: 43, scope: !1158, inlinedAt: !1003)
!1165 = !DILocation(line: 107, column: 10, scope: !1166, inlinedAt: !1171)
!1166 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1037, file: !1037, line: 105, type: !1167, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1169)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!82, !82}
!1169 = !{!1170}
!1170 = !DILocalVariable(name: "__c", arg: 1, scope: !1166, file: !1037, line: 105, type: !82)
!1171 = distinct !DILocation(line: 390, column: 13, scope: !1158, inlinedAt: !1003)
!1172 = !{!1099, !694, i64 40}
!1173 = !{!1099, !694, i64 48}
!1174 = !{!"branch_weights", i32 2000, i32 1}
!1175 = !DILocation(line: 392, column: 28, scope: !984, inlinedAt: !1003)
!1176 = !DILocation(line: 392, column: 37, scope: !984, inlinedAt: !1003)
!1177 = !DILocation(line: 392, column: 25, scope: !984, inlinedAt: !1003)
!1178 = !DILocation(line: 394, column: 15, scope: !983, inlinedAt: !1003)
!1179 = !DILocation(line: 401, column: 13, scope: !983, inlinedAt: !1003)
!1180 = distinct !{!1180, !1181, !1182}
!1181 = !DILocation(line: 371, column: 7, scope: !973)
!1182 = !DILocation(line: 402, column: 9, scope: !973)
!1183 = !DILocation(line: 403, column: 12, scope: !1184, inlinedAt: !1003)
!1184 = distinct !DILexicalBlock(scope: !973, file: !3, line: 403, column: 11)
!1185 = !DILocation(line: 403, column: 32, scope: !1184, inlinedAt: !1003)
!1186 = !DILocation(line: 403, column: 61, scope: !1184, inlinedAt: !1003)
!1187 = !DILocation(line: 403, column: 11, scope: !973, inlinedAt: !1003)
!1188 = !DILocation(line: 107, column: 10, scope: !1166, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 404, column: 9, scope: !1184, inlinedAt: !1003)
!1190 = !DILocation(line: 404, column: 9, scope: !1184, inlinedAt: !1003)
!1191 = !DILocation(line: 410, column: 17, scope: !986, inlinedAt: !1003)
!1192 = !DILocation(line: 411, column: 12, scope: !986, inlinedAt: !1003)
!1193 = !DILocation(line: 413, column: 43, scope: !1194, inlinedAt: !1003)
!1194 = distinct !DILexicalBlock(scope: !986, file: !3, line: 413, column: 11)
!1195 = !DILocation(line: 413, column: 11, scope: !1194, inlinedAt: !1003)
!1196 = !DILocation(line: 413, column: 61, scope: !1194, inlinedAt: !1003)
!1197 = !DILocation(line: 413, column: 11, scope: !986, inlinedAt: !1003)
!1198 = !DILocation(line: 415, column: 19, scope: !986, inlinedAt: !1003)
!1199 = !DILocation(line: 408, column: 13, scope: !986, inlinedAt: !1003)
!1200 = !DILocation(line: 418, column: 15, scope: !986, inlinedAt: !1003)
!1201 = !DILocation(line: 125, column: 1, scope: !1036, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 418, column: 15, scope: !986, inlinedAt: !1003)
!1203 = !DILocation(line: 127, column: 10, scope: !1036, inlinedAt: !1202)
!1204 = !DILocation(line: 418, column: 14, scope: !986, inlinedAt: !1003)
!1205 = !DILocation(line: 418, column: 7, scope: !986, inlinedAt: !1003)
!1206 = !DILocation(line: 416, column: 27, scope: !986, inlinedAt: !1003)
!1207 = !DILocation(line: 416, column: 51, scope: !986, inlinedAt: !1003)
!1208 = !DILocation(line: 416, column: 63, scope: !986, inlinedAt: !1003)
!1209 = !DILocation(line: 416, column: 38, scope: !986, inlinedAt: !1003)
!1210 = !DILocation(line: 416, column: 34, scope: !986, inlinedAt: !1003)
!1211 = !DILocation(line: 409, column: 14, scope: !986, inlinedAt: !1003)
!1212 = !DILocation(line: 423, column: 15, scope: !1213, inlinedAt: !1003)
!1213 = distinct !DILexicalBlock(scope: !995, file: !3, line: 423, column: 15)
!1214 = !DILocation(line: 423, column: 65, scope: !1213, inlinedAt: !1003)
!1215 = !DILocation(line: 423, column: 15, scope: !995, inlinedAt: !1003)
!1216 = !DILocation(line: 429, column: 23, scope: !995, inlinedAt: !1003)
!1217 = !DILocation(line: 421, column: 17, scope: !995, inlinedAt: !1003)
!1218 = !DILocation(line: 430, column: 31, scope: !995, inlinedAt: !1003)
!1219 = !DILocation(line: 430, column: 38, scope: !995, inlinedAt: !1003)
!1220 = !DILocation(line: 430, column: 67, scope: !995, inlinedAt: !1003)
!1221 = !DILocation(line: 430, column: 55, scope: !995, inlinedAt: !1003)
!1222 = !DILocation(line: 430, column: 42, scope: !995, inlinedAt: !1003)
!1223 = !DILocation(line: 422, column: 18, scope: !995, inlinedAt: !1003)
!1224 = !DILocation(line: 289, column: 18, scope: !1122, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 431, column: 20, scope: !995, inlinedAt: !1003)
!1226 = !DILocation(line: 289, column: 29, scope: !1122, inlinedAt: !1225)
!1227 = !DILocation(line: 289, column: 41, scope: !1122, inlinedAt: !1225)
!1228 = !DILocation(line: 289, column: 56, scope: !1122, inlinedAt: !1225)
!1229 = !DILocation(line: 291, column: 7, scope: !1135, inlinedAt: !1225)
!1230 = !DILocation(line: 291, column: 19, scope: !1135, inlinedAt: !1225)
!1231 = !DILocation(line: 291, column: 7, scope: !1122, inlinedAt: !1225)
!1232 = !DILocation(line: 293, column: 19, scope: !1139, inlinedAt: !1225)
!1233 = !DILocation(line: 293, column: 7, scope: !1122, inlinedAt: !1225)
!1234 = !DILocation(line: 296, column: 7, scope: !1122, inlinedAt: !1225)
!1235 = !DILocation(line: 299, column: 21, scope: !1143, inlinedAt: !1225)
!1236 = !DILocation(line: 299, column: 31, scope: !1143, inlinedAt: !1225)
!1237 = !DILocation(line: 299, column: 34, scope: !1143, inlinedAt: !1225)
!1238 = !DILocation(line: 301, column: 12, scope: !1148, inlinedAt: !1225)
!1239 = !DILocation(line: 301, column: 12, scope: !1144, inlinedAt: !1225)
!1240 = !DILocation(line: 302, column: 12, scope: !1148, inlinedAt: !1225)
!1241 = !DILocation(line: 302, column: 48, scope: !1148, inlinedAt: !1225)
!1242 = !DILocation(line: 302, column: 5, scope: !1148, inlinedAt: !1225)
!1243 = !DILocation(line: 304, column: 19, scope: !1148, inlinedAt: !1225)
!1244 = !DILocation(line: 304, column: 29, scope: !1148, inlinedAt: !1225)
!1245 = !DILocation(line: 304, column: 32, scope: !1148, inlinedAt: !1225)
!1246 = !DILocation(line: 431, column: 19, scope: !995, inlinedAt: !1003)
!1247 = !DILocation(line: 432, column: 26, scope: !995, inlinedAt: !1003)
!1248 = !DILocation(line: 432, column: 23, scope: !995, inlinedAt: !1003)
!1249 = !DILocation(line: 434, column: 27, scope: !1250, inlinedAt: !1003)
!1250 = distinct !DILexicalBlock(scope: !995, file: !3, line: 434, column: 15)
!1251 = !DILocation(line: 434, column: 15, scope: !995, inlinedAt: !1003)
!1252 = !DILocation(line: 441, column: 15, scope: !1253, inlinedAt: !1003)
!1253 = distinct !DILexicalBlock(scope: !995, file: !3, line: 441, column: 15)
!1254 = !DILocation(line: 441, column: 30, scope: !1253, inlinedAt: !1003)
!1255 = !DILocation(line: 441, column: 15, scope: !995, inlinedAt: !1003)
!1256 = !DILocation(line: 443, column: 19, scope: !1257, inlinedAt: !1003)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 442, column: 13)
!1258 = !DILocation(line: 445, column: 23, scope: !1259, inlinedAt: !1003)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 445, column: 23)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 444, column: 17)
!1261 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 443, column: 19)
!1262 = !DILocation(line: 445, column: 23, scope: !1260, inlinedAt: !1003)
!1263 = !DILocation(line: 457, column: 22, scope: !1001, inlinedAt: !1003)
!1264 = !DILocation(line: 448, column: 36, scope: !1265, inlinedAt: !1003)
!1265 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 448, column: 24)
!1266 = !DILocation(line: 448, column: 24, scope: !1261, inlinedAt: !1003)
!1267 = !DILocation(line: 451, column: 23, scope: !1268, inlinedAt: !1003)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 450, column: 23)
!1269 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 449, column: 17)
!1270 = !DILocation(line: 452, column: 31, scope: !1268, inlinedAt: !1003)
!1271 = !DILocation(line: 450, column: 23, scope: !1269, inlinedAt: !1003)
!1272 = !DILocation(line: 107, column: 10, scope: !1166, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 453, column: 21, scope: !1268, inlinedAt: !1003)
!1274 = !DILocation(line: 457, column: 15, scope: !995, inlinedAt: !1003)
!1275 = !DILocalVariable(name: "line", arg: 1, scope: !1276, file: !3, line: 314, type: !1279)
!1276 = distinct !DISubprogram(name: "writeline", scope: !3, file: !3, line: 314, type: !1277, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1281)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !1279, !96, !989}
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!1281 = !{!1275, !1282, !1283}
!1282 = !DILocalVariable(name: "match", arg: 2, scope: !1276, file: !3, line: 315, type: !96)
!1283 = !DILocalVariable(name: "linecount", arg: 3, scope: !1276, file: !3, line: 315, type: !989)
!1284 = !DILocation(line: 314, column: 37, scope: !1276, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 459, column: 15, scope: !1000, inlinedAt: !1003)
!1286 = !DILocation(line: 315, column: 17, scope: !1276, inlinedAt: !1285)
!1287 = !DILocation(line: 315, column: 34, scope: !1276, inlinedAt: !1285)
!1288 = !DILocation(line: 317, column: 20, scope: !1289, inlinedAt: !1285)
!1289 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 317, column: 7)
!1290 = !DILocation(line: 317, column: 7, scope: !1276, inlinedAt: !1285)
!1291 = !DILocation(line: 317, column: 10, scope: !1289, inlinedAt: !1285)
!1292 = !DILocation(line: 318, column: 12, scope: !1289, inlinedAt: !1285)
!1293 = !DILocation(line: 322, column: 7, scope: !1276, inlinedAt: !1285)
!1294 = !DILocation(line: 323, column: 5, scope: !1295, inlinedAt: !1285)
!1295 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 322, column: 7)
!1296 = !DILocation(line: 325, column: 3, scope: !1276, inlinedAt: !1285)
!1297 = !DILocation(line: 326, column: 1, scope: !1276, inlinedAt: !1285)
!1298 = !DILocation(line: 463, column: 19, scope: !1000, inlinedAt: !1003)
!1299 = !DILocation(line: 425, column: 19, scope: !1300, inlinedAt: !1003)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 425, column: 19)
!1301 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 424, column: 13)
!1302 = !DILocalVariable(name: "__stream", arg: 1, scope: !1303, file: !1037, line: 132, type: !1040)
!1303 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1037, file: !1037, line: 132, type: !1038, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1304)
!1304 = !{!1302}
!1305 = !DILocation(line: 132, column: 1, scope: !1303, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 425, column: 19, scope: !1300, inlinedAt: !1003)
!1307 = !DILocation(line: 134, column: 10, scope: !1303, inlinedAt: !1306)
!1308 = distinct !{!1308, !1309, !1310}
!1309 = !DILocation(line: 418, column: 7, scope: !986)
!1310 = !DILocation(line: 466, column: 9, scope: !986)
!1311 = !DILocation(line: 314, column: 37, scope: !1276, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 468, column: 7, scope: !986, inlinedAt: !1003)
!1313 = !DILocation(line: 315, column: 17, scope: !1276, inlinedAt: !1312)
!1314 = !DILocation(line: 315, column: 34, scope: !1276, inlinedAt: !1312)
!1315 = !DILocation(line: 317, column: 20, scope: !1289, inlinedAt: !1312)
!1316 = !DILocation(line: 317, column: 7, scope: !1276, inlinedAt: !1312)
!1317 = !DILocation(line: 317, column: 10, scope: !1289, inlinedAt: !1312)
!1318 = !DILocation(line: 318, column: 12, scope: !1289, inlinedAt: !1312)
!1319 = !DILocation(line: 322, column: 7, scope: !1276, inlinedAt: !1312)
!1320 = !DILocation(line: 323, column: 5, scope: !1295, inlinedAt: !1312)
!1321 = !DILocation(line: 325, column: 3, scope: !1276, inlinedAt: !1312)
!1322 = !DILocation(line: 326, column: 1, scope: !1276, inlinedAt: !1312)
!1323 = !DILocation(line: 472, column: 7, scope: !1324, inlinedAt: !1003)
!1324 = distinct !DILexicalBlock(scope: !955, file: !3, line: 472, column: 7)
!1325 = !DILocation(line: 132, column: 1, scope: !1303, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 472, column: 7, scope: !1324, inlinedAt: !1003)
!1327 = !DILocation(line: 134, column: 10, scope: !1303, inlinedAt: !1326)
!1328 = !DILocation(line: 472, column: 22, scope: !1324, inlinedAt: !1003)
!1329 = !DILocation(line: 472, column: 25, scope: !1324, inlinedAt: !1003)
!1330 = !DILocation(line: 472, column: 40, scope: !1324, inlinedAt: !1003)
!1331 = !DILocation(line: 472, column: 7, scope: !955, inlinedAt: !1003)
!1332 = !DILocation(line: 473, column: 5, scope: !1324, inlinedAt: !1003)
!1333 = !DILocation(line: 477, column: 13, scope: !955, inlinedAt: !1003)
!1334 = !DILocation(line: 477, column: 3, scope: !955, inlinedAt: !1003)
!1335 = !DILocation(line: 478, column: 13, scope: !955, inlinedAt: !1003)
!1336 = !DILocation(line: 478, column: 3, scope: !955, inlinedAt: !1003)
!1337 = !DILocation(line: 479, column: 1, scope: !955, inlinedAt: !1003)
!1338 = !DILocation(line: 675, column: 1, scope: !730)
!1339 = distinct !DISubprogram(name: "find_field", scope: !3, file: !3, line: 263, type: !1340, isLocal: true, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1342)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!81, !1279}
!1342 = !{!1343, !1344, !1345, !1346, !1347}
!1343 = !DILocalVariable(name: "line", arg: 1, scope: !1339, file: !3, line: 263, type: !1279)
!1344 = !DILocalVariable(name: "count", scope: !1339, file: !3, line: 265, type: !75)
!1345 = !DILocalVariable(name: "lp", scope: !1339, file: !3, line: 266, type: !78)
!1346 = !DILocalVariable(name: "size", scope: !1339, file: !3, line: 267, type: !75)
!1347 = !DILocalVariable(name: "i", scope: !1339, file: !3, line: 268, type: !75)
!1348 = !DILocation(line: 263, column: 38, scope: !1339)
!1349 = !DILocation(line: 266, column: 26, scope: !1339)
!1350 = !DILocation(line: 266, column: 15, scope: !1339)
!1351 = !DILocation(line: 267, column: 23, scope: !1339)
!1352 = !DILocation(line: 267, column: 30, scope: !1339)
!1353 = !DILocation(line: 267, column: 10, scope: !1339)
!1354 = !DILocation(line: 268, column: 10, scope: !1339)
!1355 = !DILocation(line: 265, column: 10, scope: !1339)
!1356 = !DILocation(line: 270, column: 27, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 270, column: 3)
!1358 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 270, column: 3)
!1359 = !DILocation(line: 270, column: 25, scope: !1357)
!1360 = !DILocation(line: 270, column: 44, scope: !1357)
!1361 = !DILocation(line: 270, column: 39, scope: !1357)
!1362 = !DILocation(line: 272, column: 16, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 271, column: 5)
!1364 = !DILocation(line: 272, column: 23, scope: !1363)
!1365 = !DILocation(line: 162, column: 10, scope: !1366, inlinedAt: !1371)
!1366 = distinct !DISubprogram(name: "field_sep", scope: !108, file: !108, line: 160, type: !1367, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1369)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!96, !84}
!1369 = !{!1370}
!1370 = !DILocalVariable(name: "ch", arg: 1, scope: !1366, file: !108, line: 160, type: !84)
!1371 = distinct !DILocation(line: 272, column: 26, scope: !1363)
!1372 = !DILocation(line: 272, column: 37, scope: !1363)
!1373 = !DILocation(line: 160, column: 26, scope: !1366, inlinedAt: !1371)
!1374 = !{!1100, !1100, i64 0}
!1375 = !DILocation(line: 162, column: 29, scope: !1366, inlinedAt: !1371)
!1376 = !DILocation(line: 162, column: 23, scope: !1366, inlinedAt: !1371)
!1377 = !DILocation(line: 272, column: 7, scope: !1363)
!1378 = !DILocation(line: 273, column: 10, scope: !1363)
!1379 = distinct !{!1379, !1377, !1378}
!1380 = !DILocation(line: 274, column: 16, scope: !1363)
!1381 = !DILocation(line: 274, column: 23, scope: !1363)
!1382 = !DILocation(line: 162, column: 10, scope: !1366, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 274, column: 27, scope: !1363)
!1384 = !DILocation(line: 274, column: 38, scope: !1363)
!1385 = !DILocation(line: 160, column: 26, scope: !1366, inlinedAt: !1383)
!1386 = !DILocation(line: 162, column: 29, scope: !1366, inlinedAt: !1383)
!1387 = !DILocation(line: 162, column: 23, scope: !1366, inlinedAt: !1383)
!1388 = !DILocation(line: 274, column: 7, scope: !1363)
!1389 = !DILocation(line: 275, column: 10, scope: !1363)
!1390 = distinct !{!1390, !1388, !1389}
!1391 = !DILocation(line: 270, column: 57, scope: !1357)
!1392 = distinct !{!1392, !1393, !1394}
!1393 = !DILocation(line: 270, column: 3, scope: !1358)
!1394 = !DILocation(line: 276, column: 5, scope: !1358)
!1395 = !DILocation(line: 278, column: 8, scope: !1339)
!1396 = !DILocation(line: 278, column: 5, scope: !1339)
!1397 = !DILocation(line: 280, column: 23, scope: !1339)
!1398 = !DILocation(line: 280, column: 3, scope: !1339)
!1399 = distinct !DISubprogram(name: "__argmatch_die", scope: !175, file: !175, line: 62, type: !179, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !170, variables: !166)
!1400 = !DILocation(line: 64, column: 3, scope: !1399)
!1401 = !DILocation(line: 65, column: 1, scope: !1399)
!1402 = distinct !DISubprogram(name: "argmatch", scope: !175, file: !175, line: 84, type: !1403, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !170, variables: !1407)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!1405, !78, !1406, !78, !75}
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !76, line: 51, baseType: !1071)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!1407 = !{!1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415}
!1408 = !DILocalVariable(name: "arg", arg: 1, scope: !1402, file: !175, line: 84, type: !78)
!1409 = !DILocalVariable(name: "arglist", arg: 2, scope: !1402, file: !175, line: 84, type: !1406)
!1410 = !DILocalVariable(name: "vallist", arg: 3, scope: !1402, file: !175, line: 85, type: !78)
!1411 = !DILocalVariable(name: "valsize", arg: 4, scope: !1402, file: !175, line: 85, type: !75)
!1412 = !DILocalVariable(name: "i", scope: !1402, file: !175, line: 87, type: !75)
!1413 = !DILocalVariable(name: "arglen", scope: !1402, file: !175, line: 88, type: !75)
!1414 = !DILocalVariable(name: "matchind", scope: !1402, file: !175, line: 89, type: !1405)
!1415 = !DILocalVariable(name: "ambiguous", scope: !1402, file: !175, line: 90, type: !96)
!1416 = !DILocation(line: 84, column: 23, scope: !1402)
!1417 = !DILocation(line: 84, column: 47, scope: !1402)
!1418 = !DILocation(line: 85, column: 23, scope: !1402)
!1419 = !DILocation(line: 85, column: 39, scope: !1402)
!1420 = !DILocation(line: 89, column: 13, scope: !1402)
!1421 = !DILocation(line: 90, column: 8, scope: !1402)
!1422 = !DILocation(line: 92, column: 12, scope: !1402)
!1423 = !DILocation(line: 88, column: 10, scope: !1402)
!1424 = !DILocation(line: 87, column: 10, scope: !1402)
!1425 = !DILocation(line: 95, column: 15, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !175, line: 95, column: 3)
!1427 = distinct !DILexicalBlock(scope: !1402, file: !175, line: 95, column: 3)
!1428 = !DILocation(line: 95, column: 3, scope: !1427)
!1429 = !DILocation(line: 97, column: 12, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !175, line: 97, column: 11)
!1431 = distinct !DILexicalBlock(scope: !1426, file: !175, line: 96, column: 5)
!1432 = !DILocation(line: 97, column: 11, scope: !1431)
!1433 = !DILocation(line: 99, column: 15, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !175, line: 99, column: 15)
!1435 = distinct !DILexicalBlock(scope: !1430, file: !175, line: 98, column: 9)
!1436 = !DILocation(line: 99, column: 35, scope: !1434)
!1437 = !DILocation(line: 99, column: 15, scope: !1435)
!1438 = !DILocation(line: 102, column: 29, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1434, file: !175, line: 102, column: 20)
!1440 = !DILocation(line: 102, column: 20, scope: !1434)
!1441 = !DILocation(line: 109, column: 19, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !175, line: 108, column: 19)
!1443 = distinct !DILexicalBlock(scope: !1439, file: !175, line: 106, column: 13)
!1444 = !DILocation(line: 109, column: 48, scope: !1442)
!1445 = !DILocation(line: 109, column: 38, scope: !1442)
!1446 = !DILocation(line: 110, column: 48, scope: !1442)
!1447 = !DILocation(line: 110, column: 38, scope: !1442)
!1448 = !DILocation(line: 109, column: 22, scope: !1442)
!1449 = !DILocation(line: 108, column: 19, scope: !1443)
!1450 = !DILocation(line: 115, column: 17, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1442, file: !175, line: 111, column: 17)
!1452 = !DILocation(line: 95, column: 28, scope: !1426)
!1453 = distinct !{!1453, !1428, !1454}
!1454 = !DILocation(line: 118, column: 5, scope: !1427)
!1455 = !DILocation(line: 119, column: 7, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1402, file: !175, line: 119, column: 7)
!1457 = !DILocation(line: 122, column: 5, scope: !1456)
!1458 = !DILocation(line: 123, column: 1, scope: !1402)
!1459 = distinct !DISubprogram(name: "argmatch_invalid", scope: !175, file: !175, line: 131, type: !1460, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !170, variables: !1462)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{null, !78, !78, !1405}
!1462 = !{!1463, !1464, !1465, !1466}
!1463 = !DILocalVariable(name: "context", arg: 1, scope: !1459, file: !175, line: 131, type: !78)
!1464 = !DILocalVariable(name: "value", arg: 2, scope: !1459, file: !175, line: 131, type: !78)
!1465 = !DILocalVariable(name: "problem", arg: 3, scope: !1459, file: !175, line: 131, type: !1405)
!1466 = !DILocalVariable(name: "format", scope: !1459, file: !175, line: 133, type: !78)
!1467 = !DILocation(line: 131, column: 31, scope: !1459)
!1468 = !DILocation(line: 131, column: 52, scope: !1459)
!1469 = !DILocation(line: 131, column: 69, scope: !1459)
!1470 = !DILocation(line: 133, column: 33, scope: !1459)
!1471 = !DILocation(line: 133, column: 25, scope: !1459)
!1472 = !DILocation(line: 135, column: 27, scope: !1459)
!1473 = !DILocation(line: 133, column: 15, scope: !1459)
!1474 = !DILocation(line: 137, column: 24, scope: !1459)
!1475 = !DILocation(line: 138, column: 10, scope: !1459)
!1476 = !DILocation(line: 137, column: 3, scope: !1459)
!1477 = !DILocation(line: 139, column: 1, scope: !1459)
!1478 = distinct !DISubprogram(name: "argmatch_valid", scope: !175, file: !175, line: 146, type: !1479, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !170, variables: !1481)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !1406, !78, !75}
!1481 = !{!1482, !1483, !1484, !1485, !1486}
!1482 = !DILocalVariable(name: "arglist", arg: 1, scope: !1478, file: !175, line: 146, type: !1406)
!1483 = !DILocalVariable(name: "vallist", arg: 2, scope: !1478, file: !175, line: 147, type: !78)
!1484 = !DILocalVariable(name: "valsize", arg: 3, scope: !1478, file: !175, line: 147, type: !75)
!1485 = !DILocalVariable(name: "i", scope: !1478, file: !175, line: 149, type: !75)
!1486 = !DILocalVariable(name: "last_val", scope: !1478, file: !175, line: 150, type: !78)
!1487 = !DILocation(line: 146, column: 36, scope: !1478)
!1488 = !DILocation(line: 147, column: 29, scope: !1478)
!1489 = !DILocation(line: 147, column: 45, scope: !1478)
!1490 = !DILocation(line: 150, column: 15, scope: !1478)
!1491 = !DILocation(line: 154, column: 3, scope: !1478)
!1492 = !DILocation(line: 149, column: 10, scope: !1478)
!1493 = !DILocation(line: 155, column: 15, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !175, line: 155, column: 3)
!1495 = distinct !DILexicalBlock(scope: !1478, file: !175, line: 155, column: 3)
!1496 = !DILocation(line: 155, column: 3, scope: !1495)
!1497 = !DILocation(line: 156, column: 12, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1494, file: !175, line: 156, column: 9)
!1499 = !DILocation(line: 157, column: 9, scope: !1498)
!1500 = !DILocation(line: 157, column: 12, scope: !1498)
!1501 = !DILocation(line: 156, column: 9, scope: !1494)
!1502 = !DILocation(line: 159, column: 9, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1498, file: !175, line: 158, column: 7)
!1504 = !DILocation(line: 161, column: 7, scope: !1503)
!1505 = !DILocation(line: 164, column: 9, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1498, file: !175, line: 163, column: 7)
!1507 = !DILocation(line: 155, column: 28, scope: !1494)
!1508 = distinct !{!1508, !1496, !1509}
!1509 = !DILocation(line: 165, column: 7, scope: !1495)
!1510 = !DILocation(line: 166, column: 3, scope: !1478)
!1511 = !DILocalVariable(name: "__c", arg: 1, scope: !1512, file: !1037, line: 98, type: !82)
!1512 = distinct !DISubprogram(name: "putc_unlocked", scope: !1037, file: !1037, line: 98, type: !1513, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, unit: !170, variables: !1555)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!82, !82, !1515}
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1042, line: 7, baseType: !1517)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1044, line: 241, size: 1728, elements: !1518)
!1518 = !{!1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1517, file: !1044, line: 242, baseType: !82, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1517, file: !1044, line: 247, baseType: !81, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1517, file: !1044, line: 248, baseType: !81, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1517, file: !1044, line: 249, baseType: !81, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1517, file: !1044, line: 250, baseType: !81, size: 64, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1517, file: !1044, line: 251, baseType: !81, size: 64, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1517, file: !1044, line: 252, baseType: !81, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1517, file: !1044, line: 253, baseType: !81, size: 64, offset: 448)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1517, file: !1044, line: 254, baseType: !81, size: 64, offset: 512)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1517, file: !1044, line: 256, baseType: !81, size: 64, offset: 576)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1517, file: !1044, line: 257, baseType: !81, size: 64, offset: 640)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1517, file: !1044, line: 258, baseType: !81, size: 64, offset: 704)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1517, file: !1044, line: 260, baseType: !1532, size: 64, offset: 768)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1044, line: 156, size: 192, elements: !1534)
!1534 = !{!1535, !1536, !1538}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1533, file: !1044, line: 157, baseType: !1532, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1533, file: !1044, line: 158, baseType: !1537, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1533, file: !1044, line: 162, baseType: !82, size: 32, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1517, file: !1044, line: 262, baseType: !1537, size: 64, offset: 832)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1517, file: !1044, line: 264, baseType: !82, size: 32, offset: 896)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1517, file: !1044, line: 268, baseType: !82, size: 32, offset: 928)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1517, file: !1044, line: 270, baseType: !1070, size: 64, offset: 960)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1517, file: !1044, line: 274, baseType: !83, size: 16, offset: 1024)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1517, file: !1044, line: 275, baseType: !1074, size: 8, offset: 1040)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1517, file: !1044, line: 276, baseType: !1076, size: 8, offset: 1048)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1517, file: !1044, line: 280, baseType: !1080, size: 64, offset: 1088)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1517, file: !1044, line: 289, baseType: !1083, size: 64, offset: 1152)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1517, file: !1044, line: 297, baseType: !73, size: 64, offset: 1216)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1517, file: !1044, line: 298, baseType: !73, size: 64, offset: 1280)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1517, file: !1044, line: 299, baseType: !73, size: 64, offset: 1344)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1517, file: !1044, line: 300, baseType: !73, size: 64, offset: 1408)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1517, file: !1044, line: 302, baseType: !75, size: 64, offset: 1472)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1517, file: !1044, line: 303, baseType: !82, size: 32, offset: 1536)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1517, file: !1044, line: 305, baseType: !1091, size: 160, offset: 1568)
!1555 = !{!1511, !1556}
!1556 = !DILocalVariable(name: "__stream", arg: 2, scope: !1512, file: !1037, line: 98, type: !1515)
!1557 = !DILocation(line: 98, column: 20, scope: !1512, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 166, column: 3, scope: !1478)
!1559 = !DILocation(line: 98, column: 31, scope: !1512, inlinedAt: !1558)
!1560 = !DILocation(line: 100, column: 10, scope: !1512, inlinedAt: !1558)
!1561 = !DILocation(line: 167, column: 1, scope: !1478)
!1562 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !175, file: !175, line: 176, type: !1563, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !170, variables: !1565)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!1405, !78, !78, !1406, !78, !75, !176}
!1565 = !{!1566, !1567, !1568, !1569, !1570, !1571, !1572}
!1566 = !DILocalVariable(name: "context", arg: 1, scope: !1562, file: !175, line: 176, type: !78)
!1567 = !DILocalVariable(name: "arg", arg: 2, scope: !1562, file: !175, line: 177, type: !78)
!1568 = !DILocalVariable(name: "arglist", arg: 3, scope: !1562, file: !175, line: 177, type: !1406)
!1569 = !DILocalVariable(name: "vallist", arg: 4, scope: !1562, file: !175, line: 178, type: !78)
!1570 = !DILocalVariable(name: "valsize", arg: 5, scope: !1562, file: !175, line: 178, type: !75)
!1571 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1562, file: !175, line: 179, type: !176)
!1572 = !DILocalVariable(name: "res", scope: !1562, file: !175, line: 181, type: !1405)
!1573 = !DILocation(line: 176, column: 35, scope: !1562)
!1574 = !DILocation(line: 177, column: 35, scope: !1562)
!1575 = !DILocation(line: 177, column: 59, scope: !1562)
!1576 = !DILocation(line: 178, column: 35, scope: !1562)
!1577 = !DILocation(line: 178, column: 51, scope: !1562)
!1578 = !DILocation(line: 179, column: 40, scope: !1562)
!1579 = !DILocation(line: 84, column: 23, scope: !1402, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 181, column: 19, scope: !1562)
!1581 = !DILocation(line: 84, column: 47, scope: !1402, inlinedAt: !1580)
!1582 = !DILocation(line: 85, column: 23, scope: !1402, inlinedAt: !1580)
!1583 = !DILocation(line: 85, column: 39, scope: !1402, inlinedAt: !1580)
!1584 = !DILocation(line: 89, column: 13, scope: !1402, inlinedAt: !1580)
!1585 = !DILocation(line: 90, column: 8, scope: !1402, inlinedAt: !1580)
!1586 = !DILocation(line: 92, column: 12, scope: !1402, inlinedAt: !1580)
!1587 = !DILocation(line: 88, column: 10, scope: !1402, inlinedAt: !1580)
!1588 = !DILocation(line: 87, column: 10, scope: !1402, inlinedAt: !1580)
!1589 = !DILocation(line: 95, column: 15, scope: !1426, inlinedAt: !1580)
!1590 = !DILocation(line: 95, column: 3, scope: !1427, inlinedAt: !1580)
!1591 = !DILocation(line: 97, column: 12, scope: !1430, inlinedAt: !1580)
!1592 = !DILocation(line: 97, column: 11, scope: !1431, inlinedAt: !1580)
!1593 = !DILocation(line: 99, column: 15, scope: !1434, inlinedAt: !1580)
!1594 = !DILocation(line: 99, column: 35, scope: !1434, inlinedAt: !1580)
!1595 = !DILocation(line: 99, column: 15, scope: !1435, inlinedAt: !1580)
!1596 = !DILocation(line: 102, column: 29, scope: !1439, inlinedAt: !1580)
!1597 = !DILocation(line: 102, column: 20, scope: !1434, inlinedAt: !1580)
!1598 = !DILocation(line: 109, column: 19, scope: !1442, inlinedAt: !1580)
!1599 = !DILocation(line: 109, column: 48, scope: !1442, inlinedAt: !1580)
!1600 = !DILocation(line: 109, column: 38, scope: !1442, inlinedAt: !1580)
!1601 = !DILocation(line: 110, column: 48, scope: !1442, inlinedAt: !1580)
!1602 = !DILocation(line: 110, column: 38, scope: !1442, inlinedAt: !1580)
!1603 = !DILocation(line: 109, column: 22, scope: !1442, inlinedAt: !1580)
!1604 = !DILocation(line: 108, column: 19, scope: !1443, inlinedAt: !1580)
!1605 = !DILocation(line: 115, column: 17, scope: !1451, inlinedAt: !1580)
!1606 = !DILocation(line: 95, column: 28, scope: !1426, inlinedAt: !1580)
!1607 = !DILocation(line: 119, column: 7, scope: !1456, inlinedAt: !1580)
!1608 = !DILocation(line: 181, column: 13, scope: !1562)
!1609 = !DILocation(line: 182, column: 11, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1562, file: !175, line: 182, column: 7)
!1611 = !DILocation(line: 182, column: 7, scope: !1562)
!1612 = !DILocation(line: 131, column: 31, scope: !1459, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 187, column: 3, scope: !1562)
!1614 = !DILocation(line: 131, column: 52, scope: !1459, inlinedAt: !1613)
!1615 = !DILocation(line: 131, column: 69, scope: !1459, inlinedAt: !1613)
!1616 = !DILocation(line: 133, column: 33, scope: !1459, inlinedAt: !1613)
!1617 = !DILocation(line: 133, column: 25, scope: !1459, inlinedAt: !1613)
!1618 = !DILocation(line: 135, column: 27, scope: !1459, inlinedAt: !1613)
!1619 = !DILocation(line: 133, column: 15, scope: !1459, inlinedAt: !1613)
!1620 = !DILocation(line: 137, column: 24, scope: !1459, inlinedAt: !1613)
!1621 = !DILocation(line: 138, column: 10, scope: !1459, inlinedAt: !1613)
!1622 = !DILocation(line: 137, column: 3, scope: !1459, inlinedAt: !1613)
!1623 = !DILocation(line: 188, column: 3, scope: !1562)
!1624 = !DILocation(line: 189, column: 3, scope: !1562)
!1625 = !DILocation(line: 191, column: 3, scope: !1562)
!1626 = !DILocation(line: 192, column: 1, scope: !1562)
!1627 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !175, file: !175, line: 197, type: !1628, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !170, variables: !1630)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!78, !78, !1406, !78, !75}
!1630 = !{!1631, !1632, !1633, !1634, !1635}
!1631 = !DILocalVariable(name: "value", arg: 1, scope: !1627, file: !175, line: 197, type: !78)
!1632 = !DILocalVariable(name: "arglist", arg: 2, scope: !1627, file: !175, line: 198, type: !1406)
!1633 = !DILocalVariable(name: "vallist", arg: 3, scope: !1627, file: !175, line: 199, type: !78)
!1634 = !DILocalVariable(name: "valsize", arg: 4, scope: !1627, file: !175, line: 199, type: !75)
!1635 = !DILocalVariable(name: "i", scope: !1627, file: !175, line: 201, type: !75)
!1636 = !DILocation(line: 197, column: 35, scope: !1627)
!1637 = !DILocation(line: 198, column: 42, scope: !1627)
!1638 = !DILocation(line: 199, column: 35, scope: !1627)
!1639 = !DILocation(line: 199, column: 51, scope: !1627)
!1640 = !DILocation(line: 201, column: 10, scope: !1627)
!1641 = !DILocation(line: 203, column: 15, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !175, line: 203, column: 3)
!1643 = distinct !DILexicalBlock(scope: !1627, file: !175, line: 203, column: 3)
!1644 = !DILocation(line: 203, column: 3, scope: !1643)
!1645 = !DILocation(line: 204, column: 43, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !175, line: 204, column: 9)
!1647 = distinct !{!1647, !1644, !1648}
!1648 = !DILocation(line: 205, column: 23, scope: !1643)
!1649 = !DILocation(line: 204, column: 33, scope: !1646)
!1650 = !DILocation(line: 204, column: 10, scope: !1646)
!1651 = !DILocation(line: 203, column: 28, scope: !1642)
!1652 = !DILocation(line: 204, column: 9, scope: !1642)
!1653 = !DILocation(line: 207, column: 1, scope: !1627)
!1654 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !188, file: !188, line: 41, type: !109, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !183, variables: !1655)
!1655 = !{!1656}
!1656 = !DILocalVariable(name: "file", arg: 1, scope: !1654, file: !188, line: 41, type: !78)
!1657 = !DILocation(line: 41, column: 41, scope: !1654)
!1658 = !DILocation(line: 43, column: 13, scope: !1654)
!1659 = !DILocation(line: 44, column: 1, scope: !1654)
!1660 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !188, file: !188, line: 78, type: !1661, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !183, variables: !1663)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !96}
!1663 = !{!1664}
!1664 = !DILocalVariable(name: "ignore", arg: 1, scope: !1660, file: !188, line: 78, type: !96)
!1665 = !DILocation(line: 78, column: 37, scope: !1660)
!1666 = !DILocation(line: 80, column: 16, scope: !1660)
!1667 = !DILocation(line: 81, column: 1, scope: !1660)
!1668 = distinct !DISubprogram(name: "close_stdout", scope: !188, file: !188, line: 107, type: !179, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !183, variables: !1669)
!1669 = !{!1670}
!1670 = !DILocalVariable(name: "write_error", scope: !1671, file: !188, line: 112, type: !78)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !188, line: 111, column: 5)
!1672 = distinct !DILexicalBlock(scope: !1668, file: !188, line: 109, column: 7)
!1673 = !DILocation(line: 109, column: 21, scope: !1672)
!1674 = !DILocation(line: 109, column: 7, scope: !1672)
!1675 = !DILocation(line: 109, column: 29, scope: !1672)
!1676 = !DILocation(line: 110, column: 7, scope: !1672)
!1677 = !DILocation(line: 110, column: 12, scope: !1672)
!1678 = !DILocation(line: 114, column: 19, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1671, file: !188, line: 113, column: 11)
!1680 = !DILocation(line: 110, column: 25, scope: !1672)
!1681 = !DILocation(line: 110, column: 28, scope: !1672)
!1682 = !DILocation(line: 110, column: 34, scope: !1672)
!1683 = !DILocation(line: 109, column: 7, scope: !1668)
!1684 = !DILocation(line: 112, column: 33, scope: !1671)
!1685 = !DILocation(line: 112, column: 19, scope: !1671)
!1686 = !DILocation(line: 113, column: 11, scope: !1679)
!1687 = !DILocation(line: 113, column: 11, scope: !1671)
!1688 = !DILocation(line: 114, column: 36, scope: !1679)
!1689 = !DILocation(line: 114, column: 9, scope: !1679)
!1690 = !DILocation(line: 117, column: 9, scope: !1679)
!1691 = !DILocation(line: 119, column: 14, scope: !1671)
!1692 = !DILocation(line: 119, column: 7, scope: !1671)
!1693 = !DILocation(line: 122, column: 22, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1668, file: !188, line: 122, column: 8)
!1695 = !DILocation(line: 122, column: 8, scope: !1694)
!1696 = !DILocation(line: 122, column: 30, scope: !1694)
!1697 = !DILocation(line: 122, column: 8, scope: !1668)
!1698 = !DILocation(line: 123, column: 13, scope: !1694)
!1699 = !DILocation(line: 123, column: 6, scope: !1694)
!1700 = !DILocation(line: 124, column: 1, scope: !1668)
!1701 = distinct !DISubprogram(name: "fdadvise", scope: !1702, file: !1702, line: 31, type: !1703, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !613, variables: !1708)
!1702 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1703 = !DISubroutineType(types: !1704)
!1704 = !{null, !82, !1705, !1705, !1707}
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1706, line: 57, baseType: !1070)
!1706 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !49, line: 52, baseType: !48)
!1708 = !{!1709, !1710, !1711, !1712, !1713}
!1709 = !DILocalVariable(name: "fd", arg: 1, scope: !1701, file: !1702, line: 31, type: !82)
!1710 = !DILocalVariable(name: "offset", arg: 2, scope: !1701, file: !1702, line: 31, type: !1705)
!1711 = !DILocalVariable(name: "len", arg: 3, scope: !1701, file: !1702, line: 31, type: !1705)
!1712 = !DILocalVariable(name: "advice", arg: 4, scope: !1701, file: !1702, line: 31, type: !1707)
!1713 = !DILocalVariable(name: "__x", scope: !1714, file: !1702, line: 34, type: !82)
!1714 = distinct !DILexicalBlock(scope: !1701, file: !1702, line: 34, column: 3)
!1715 = !DILocation(line: 31, column: 15, scope: !1701)
!1716 = !DILocation(line: 31, column: 25, scope: !1701)
!1717 = !DILocation(line: 31, column: 39, scope: !1701)
!1718 = !DILocation(line: 31, column: 54, scope: !1701)
!1719 = !DILocation(line: 34, column: 3, scope: !1714)
!1720 = !DILocation(line: 36, column: 1, scope: !1701)
!1721 = distinct !DISubprogram(name: "fadvise", scope: !1702, file: !1702, line: 39, type: !1722, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !613, variables: !1764)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{null, !1724, !1707}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1042, line: 7, baseType: !1726)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1044, line: 241, size: 1728, elements: !1727)
!1727 = !{!1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1726, file: !1044, line: 242, baseType: !82, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1726, file: !1044, line: 247, baseType: !81, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1726, file: !1044, line: 248, baseType: !81, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1726, file: !1044, line: 249, baseType: !81, size: 64, offset: 192)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1726, file: !1044, line: 250, baseType: !81, size: 64, offset: 256)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1726, file: !1044, line: 251, baseType: !81, size: 64, offset: 320)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1726, file: !1044, line: 252, baseType: !81, size: 64, offset: 384)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1726, file: !1044, line: 253, baseType: !81, size: 64, offset: 448)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1726, file: !1044, line: 254, baseType: !81, size: 64, offset: 512)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1726, file: !1044, line: 256, baseType: !81, size: 64, offset: 576)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1726, file: !1044, line: 257, baseType: !81, size: 64, offset: 640)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1726, file: !1044, line: 258, baseType: !81, size: 64, offset: 704)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1726, file: !1044, line: 260, baseType: !1741, size: 64, offset: 768)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1044, line: 156, size: 192, elements: !1743)
!1743 = !{!1744, !1745, !1747}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1742, file: !1044, line: 157, baseType: !1741, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1742, file: !1044, line: 158, baseType: !1746, size: 64, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1742, file: !1044, line: 162, baseType: !82, size: 32, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1726, file: !1044, line: 262, baseType: !1746, size: 64, offset: 832)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1726, file: !1044, line: 264, baseType: !82, size: 32, offset: 896)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1726, file: !1044, line: 268, baseType: !82, size: 32, offset: 928)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1726, file: !1044, line: 270, baseType: !1070, size: 64, offset: 960)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1726, file: !1044, line: 274, baseType: !83, size: 16, offset: 1024)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1726, file: !1044, line: 275, baseType: !1074, size: 8, offset: 1040)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1726, file: !1044, line: 276, baseType: !1076, size: 8, offset: 1048)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1726, file: !1044, line: 280, baseType: !1080, size: 64, offset: 1088)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1726, file: !1044, line: 289, baseType: !1083, size: 64, offset: 1152)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1726, file: !1044, line: 297, baseType: !73, size: 64, offset: 1216)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1726, file: !1044, line: 298, baseType: !73, size: 64, offset: 1280)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1726, file: !1044, line: 299, baseType: !73, size: 64, offset: 1344)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1726, file: !1044, line: 300, baseType: !73, size: 64, offset: 1408)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1726, file: !1044, line: 302, baseType: !75, size: 64, offset: 1472)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1726, file: !1044, line: 303, baseType: !82, size: 32, offset: 1536)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1726, file: !1044, line: 305, baseType: !1091, size: 160, offset: 1568)
!1764 = !{!1765, !1766}
!1765 = !DILocalVariable(name: "fp", arg: 1, scope: !1721, file: !1702, line: 39, type: !1724)
!1766 = !DILocalVariable(name: "advice", arg: 2, scope: !1721, file: !1702, line: 39, type: !1707)
!1767 = !DILocation(line: 39, column: 16, scope: !1721)
!1768 = !DILocation(line: 39, column: 30, scope: !1721)
!1769 = !DILocation(line: 41, column: 7, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1721, file: !1702, line: 41, column: 7)
!1771 = !DILocation(line: 41, column: 7, scope: !1721)
!1772 = !DILocation(line: 42, column: 15, scope: !1770)
!1773 = !DILocation(line: 31, column: 15, scope: !1701, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 42, column: 5, scope: !1770)
!1775 = !DILocation(line: 31, column: 25, scope: !1701, inlinedAt: !1774)
!1776 = !DILocation(line: 31, column: 39, scope: !1701, inlinedAt: !1774)
!1777 = !DILocation(line: 31, column: 54, scope: !1701, inlinedAt: !1774)
!1778 = !DILocation(line: 34, column: 3, scope: !1714, inlinedAt: !1774)
!1779 = !DILocation(line: 42, column: 5, scope: !1770)
!1780 = !DILocation(line: 43, column: 1, scope: !1721)
!1781 = distinct !DISubprogram(name: "freopen_safer", scope: !1782, file: !1782, line: 54, type: !1783, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !616, variables: !1825)
!1782 = !DIFile(filename: "lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!1785, !78, !78, !1785}
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1042, line: 7, baseType: !1787)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1044, line: 241, size: 1728, elements: !1788)
!1788 = !{!1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1787, file: !1044, line: 242, baseType: !82, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1787, file: !1044, line: 247, baseType: !81, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1787, file: !1044, line: 248, baseType: !81, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1787, file: !1044, line: 249, baseType: !81, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1787, file: !1044, line: 250, baseType: !81, size: 64, offset: 256)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1787, file: !1044, line: 251, baseType: !81, size: 64, offset: 320)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1787, file: !1044, line: 252, baseType: !81, size: 64, offset: 384)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1787, file: !1044, line: 253, baseType: !81, size: 64, offset: 448)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1787, file: !1044, line: 254, baseType: !81, size: 64, offset: 512)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1787, file: !1044, line: 256, baseType: !81, size: 64, offset: 576)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1787, file: !1044, line: 257, baseType: !81, size: 64, offset: 640)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1787, file: !1044, line: 258, baseType: !81, size: 64, offset: 704)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1787, file: !1044, line: 260, baseType: !1802, size: 64, offset: 768)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1044, line: 156, size: 192, elements: !1804)
!1804 = !{!1805, !1806, !1808}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1803, file: !1044, line: 157, baseType: !1802, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1803, file: !1044, line: 158, baseType: !1807, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1803, file: !1044, line: 162, baseType: !82, size: 32, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1787, file: !1044, line: 262, baseType: !1807, size: 64, offset: 832)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1787, file: !1044, line: 264, baseType: !82, size: 32, offset: 896)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1787, file: !1044, line: 268, baseType: !82, size: 32, offset: 928)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1787, file: !1044, line: 270, baseType: !1070, size: 64, offset: 960)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1787, file: !1044, line: 274, baseType: !83, size: 16, offset: 1024)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1787, file: !1044, line: 275, baseType: !1074, size: 8, offset: 1040)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1787, file: !1044, line: 276, baseType: !1076, size: 8, offset: 1048)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1787, file: !1044, line: 280, baseType: !1080, size: 64, offset: 1088)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1787, file: !1044, line: 289, baseType: !1083, size: 64, offset: 1152)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1787, file: !1044, line: 297, baseType: !73, size: 64, offset: 1216)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1787, file: !1044, line: 298, baseType: !73, size: 64, offset: 1280)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1787, file: !1044, line: 299, baseType: !73, size: 64, offset: 1344)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1787, file: !1044, line: 300, baseType: !73, size: 64, offset: 1408)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1787, file: !1044, line: 302, baseType: !75, size: 64, offset: 1472)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1787, file: !1044, line: 303, baseType: !82, size: 32, offset: 1536)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1787, file: !1044, line: 305, baseType: !1091, size: 160, offset: 1568)
!1825 = !{!1826, !1827, !1828, !1829, !1830, !1831, !1832}
!1826 = !DILocalVariable(name: "name", arg: 1, scope: !1781, file: !1782, line: 54, type: !78)
!1827 = !DILocalVariable(name: "mode", arg: 2, scope: !1781, file: !1782, line: 54, type: !78)
!1828 = !DILocalVariable(name: "f", arg: 3, scope: !1781, file: !1782, line: 54, type: !1785)
!1829 = !DILocalVariable(name: "protect_in", scope: !1781, file: !1782, line: 62, type: !96)
!1830 = !DILocalVariable(name: "protect_out", scope: !1781, file: !1782, line: 63, type: !96)
!1831 = !DILocalVariable(name: "protect_err", scope: !1781, file: !1782, line: 64, type: !96)
!1832 = !DILocalVariable(name: "saved_errno", scope: !1781, file: !1782, line: 65, type: !82)
!1833 = !DILocation(line: 54, column: 28, scope: !1781)
!1834 = !DILocation(line: 54, column: 46, scope: !1781)
!1835 = !DILocation(line: 54, column: 58, scope: !1781)
!1836 = !DILocation(line: 62, column: 8, scope: !1781)
!1837 = !DILocation(line: 63, column: 8, scope: !1781)
!1838 = !DILocation(line: 64, column: 8, scope: !1781)
!1839 = !DILocation(line: 67, column: 11, scope: !1781)
!1840 = !DILocation(line: 67, column: 3, scope: !1781)
!1841 = !DILocation(line: 70, column: 11, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !1782, line: 70, column: 11)
!1843 = distinct !DILexicalBlock(scope: !1781, file: !1782, line: 68, column: 5)
!1844 = !DILocation(line: 70, column: 47, scope: !1842)
!1845 = !DILocation(line: 70, column: 11, scope: !1843)
!1846 = !DILocation(line: 74, column: 11, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1843, file: !1782, line: 74, column: 11)
!1848 = !DILocation(line: 74, column: 47, scope: !1847)
!1849 = !DILocation(line: 74, column: 11, scope: !1843)
!1850 = !DILocation(line: 78, column: 11, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1843, file: !1782, line: 78, column: 11)
!1852 = !DILocation(line: 78, column: 45, scope: !1851)
!1853 = !DILocation(line: 85, column: 18, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1781, file: !1782, line: 85, column: 7)
!1855 = !DILocalVariable(name: "fd", arg: 1, scope: !1856, file: !1782, line: 32, type: !82)
!1856 = distinct !DISubprogram(name: "protect_fd", scope: !1782, file: !1782, line: 32, type: !1857, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !616, variables: !1859)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!96, !82}
!1859 = !{!1855, !1860}
!1860 = !DILocalVariable(name: "value", scope: !1856, file: !1782, line: 34, type: !82)
!1861 = !DILocation(line: 32, column: 17, scope: !1856, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 85, column: 22, scope: !1854)
!1863 = !DILocation(line: 34, column: 15, scope: !1856, inlinedAt: !1862)
!1864 = !DILocation(line: 34, column: 7, scope: !1856, inlinedAt: !1862)
!1865 = !DILocation(line: 35, column: 13, scope: !1866, inlinedAt: !1862)
!1866 = distinct !DILexicalBlock(scope: !1856, file: !1782, line: 35, column: 7)
!1867 = !DILocation(line: 35, column: 7, scope: !1856, inlinedAt: !1862)
!1868 = !DILocation(line: 37, column: 13, scope: !1869, inlinedAt: !1862)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !1782, line: 37, column: 11)
!1870 = distinct !DILexicalBlock(scope: !1866, file: !1782, line: 36, column: 5)
!1871 = !DILocation(line: 37, column: 11, scope: !1870, inlinedAt: !1862)
!1872 = !DILocation(line: 39, column: 11, scope: !1873, inlinedAt: !1862)
!1873 = distinct !DILexicalBlock(scope: !1869, file: !1782, line: 38, column: 9)
!1874 = !DILocation(line: 40, column: 11, scope: !1873, inlinedAt: !1862)
!1875 = !DILocation(line: 40, column: 17, scope: !1873, inlinedAt: !1862)
!1876 = !DILocation(line: 41, column: 9, scope: !1873, inlinedAt: !1862)
!1877 = !DILocation(line: 87, column: 12, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1854, file: !1782, line: 87, column: 12)
!1879 = !DILocation(line: 87, column: 24, scope: !1878)
!1880 = !DILocation(line: 32, column: 17, scope: !1856, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 87, column: 28, scope: !1878)
!1882 = !DILocation(line: 34, column: 15, scope: !1856, inlinedAt: !1881)
!1883 = !DILocation(line: 34, column: 7, scope: !1856, inlinedAt: !1881)
!1884 = !DILocation(line: 35, column: 13, scope: !1866, inlinedAt: !1881)
!1885 = !DILocation(line: 35, column: 7, scope: !1856, inlinedAt: !1881)
!1886 = !DILocation(line: 37, column: 13, scope: !1869, inlinedAt: !1881)
!1887 = !DILocation(line: 37, column: 11, scope: !1870, inlinedAt: !1881)
!1888 = !DILocation(line: 39, column: 11, scope: !1873, inlinedAt: !1881)
!1889 = !DILocation(line: 40, column: 11, scope: !1873, inlinedAt: !1881)
!1890 = !DILocation(line: 40, column: 17, scope: !1873, inlinedAt: !1881)
!1891 = !DILocation(line: 41, column: 9, scope: !1873, inlinedAt: !1881)
!1892 = !DILocation(line: 89, column: 12, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1878, file: !1782, line: 89, column: 12)
!1894 = !DILocation(line: 89, column: 24, scope: !1893)
!1895 = !DILocation(line: 32, column: 17, scope: !1856, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 89, column: 28, scope: !1893)
!1897 = !DILocation(line: 34, column: 15, scope: !1856, inlinedAt: !1896)
!1898 = !DILocation(line: 34, column: 7, scope: !1856, inlinedAt: !1896)
!1899 = !DILocation(line: 35, column: 13, scope: !1866, inlinedAt: !1896)
!1900 = !DILocation(line: 35, column: 7, scope: !1856, inlinedAt: !1896)
!1901 = !DILocation(line: 37, column: 13, scope: !1869, inlinedAt: !1896)
!1902 = !DILocation(line: 37, column: 11, scope: !1870, inlinedAt: !1896)
!1903 = !DILocation(line: 39, column: 11, scope: !1873, inlinedAt: !1896)
!1904 = !DILocation(line: 40, column: 11, scope: !1873, inlinedAt: !1896)
!1905 = !DILocation(line: 40, column: 17, scope: !1873, inlinedAt: !1896)
!1906 = !DILocation(line: 41, column: 9, scope: !1873, inlinedAt: !1896)
!1907 = !DILocation(line: 92, column: 9, scope: !1893)
!1908 = !DILocation(line: 93, column: 17, scope: !1781)
!1909 = !DILocation(line: 65, column: 7, scope: !1781)
!1910 = !DILocation(line: 94, column: 7, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1781, file: !1782, line: 94, column: 7)
!1912 = !DILocation(line: 94, column: 7, scope: !1781)
!1913 = !DILocation(line: 95, column: 5, scope: !1911)
!1914 = !DILocation(line: 96, column: 7, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1781, file: !1782, line: 96, column: 7)
!1916 = !DILocation(line: 96, column: 7, scope: !1781)
!1917 = !DILocation(line: 97, column: 5, scope: !1915)
!1918 = !DILocation(line: 98, column: 7, scope: !1781)
!1919 = !DILocation(line: 99, column: 5, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1781, file: !1782, line: 98, column: 7)
!1921 = !DILocation(line: 100, column: 8, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1781, file: !1782, line: 100, column: 7)
!1923 = !DILocation(line: 100, column: 7, scope: !1781)
!1924 = !DILocation(line: 101, column: 11, scope: !1922)
!1925 = !DILocation(line: 101, column: 5, scope: !1922)
!1926 = !DILocation(line: 102, column: 3, scope: !1781)
!1927 = distinct !DISubprogram(name: "hard_locale", scope: !1928, file: !1928, line: 38, type: !1857, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !618, variables: !1929)
!1928 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1929 = !{!1930, !1931, !1932}
!1930 = !DILocalVariable(name: "category", arg: 1, scope: !1927, file: !1928, line: 38, type: !82)
!1931 = !DILocalVariable(name: "hard", scope: !1927, file: !1928, line: 40, type: !96)
!1932 = !DILocalVariable(name: "p", scope: !1927, file: !1928, line: 41, type: !78)
!1933 = !DILocation(line: 38, column: 18, scope: !1927)
!1934 = !DILocation(line: 40, column: 8, scope: !1927)
!1935 = !DILocation(line: 41, column: 19, scope: !1927)
!1936 = !DILocation(line: 41, column: 15, scope: !1927)
!1937 = !DILocation(line: 43, column: 7, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1927, file: !1928, line: 43, column: 7)
!1939 = !DILocation(line: 43, column: 7, scope: !1927)
!1940 = !DILocation(line: 47, column: 15, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !1928, line: 47, column: 15)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !1928, line: 46, column: 9)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !1928, line: 45, column: 11)
!1944 = distinct !DILexicalBlock(scope: !1938, file: !1928, line: 44, column: 5)
!1945 = !DILocation(line: 47, column: 31, scope: !1941)
!1946 = !DILocation(line: 47, column: 36, scope: !1941)
!1947 = !DILocation(line: 47, column: 39, scope: !1941)
!1948 = !DILocation(line: 47, column: 59, scope: !1941)
!1949 = !DILocation(line: 47, column: 15, scope: !1942)
!1950 = !DILocation(line: 48, column: 13, scope: !1941)
!1951 = !DILocation(line: 71, column: 3, scope: !1927)
!1952 = distinct !DISubprogram(name: "initbuffer", scope: !1953, file: !1953, line: 37, type: !1954, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !1962)
!1953 = !DIFile(filename: "lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1954 = !DISubroutineType(types: !1955)
!1955 = !{null, !1956}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !963, line: 26, size: 192, elements: !1958)
!1958 = !{!1959, !1960, !1961}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1957, file: !963, line: 28, baseType: !75, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1957, file: !963, line: 29, baseType: !75, size: 64, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1957, file: !963, line: 30, baseType: !81, size: 64, offset: 128)
!1962 = !{!1963}
!1963 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1952, file: !1953, line: 37, type: !1956)
!1964 = !DILocation(line: 37, column: 32, scope: !1952)
!1965 = !DILocation(line: 39, column: 3, scope: !1952)
!1966 = !DILocation(line: 40, column: 1, scope: !1952)
!1967 = distinct !DISubprogram(name: "readlinebuffer", scope: !1953, file: !1953, line: 43, type: !1968, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !2010)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!1956, !1956, !1970}
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1042, line: 7, baseType: !1972)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1044, line: 241, size: 1728, elements: !1973)
!1973 = !{!1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1972, file: !1044, line: 242, baseType: !82, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1972, file: !1044, line: 247, baseType: !81, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1972, file: !1044, line: 248, baseType: !81, size: 64, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1972, file: !1044, line: 249, baseType: !81, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1972, file: !1044, line: 250, baseType: !81, size: 64, offset: 256)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1972, file: !1044, line: 251, baseType: !81, size: 64, offset: 320)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1972, file: !1044, line: 252, baseType: !81, size: 64, offset: 384)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1972, file: !1044, line: 253, baseType: !81, size: 64, offset: 448)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1972, file: !1044, line: 254, baseType: !81, size: 64, offset: 512)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1972, file: !1044, line: 256, baseType: !81, size: 64, offset: 576)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1972, file: !1044, line: 257, baseType: !81, size: 64, offset: 640)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1972, file: !1044, line: 258, baseType: !81, size: 64, offset: 704)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1972, file: !1044, line: 260, baseType: !1987, size: 64, offset: 768)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1044, line: 156, size: 192, elements: !1989)
!1989 = !{!1990, !1991, !1993}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1988, file: !1044, line: 157, baseType: !1987, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1988, file: !1044, line: 158, baseType: !1992, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1988, file: !1044, line: 162, baseType: !82, size: 32, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1972, file: !1044, line: 262, baseType: !1992, size: 64, offset: 832)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1972, file: !1044, line: 264, baseType: !82, size: 32, offset: 896)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1972, file: !1044, line: 268, baseType: !82, size: 32, offset: 928)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1972, file: !1044, line: 270, baseType: !1070, size: 64, offset: 960)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1972, file: !1044, line: 274, baseType: !83, size: 16, offset: 1024)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1972, file: !1044, line: 275, baseType: !1074, size: 8, offset: 1040)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1972, file: !1044, line: 276, baseType: !1076, size: 8, offset: 1048)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1972, file: !1044, line: 280, baseType: !1080, size: 64, offset: 1088)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1972, file: !1044, line: 289, baseType: !1083, size: 64, offset: 1152)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1972, file: !1044, line: 297, baseType: !73, size: 64, offset: 1216)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1972, file: !1044, line: 298, baseType: !73, size: 64, offset: 1280)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1972, file: !1044, line: 299, baseType: !73, size: 64, offset: 1344)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1972, file: !1044, line: 300, baseType: !73, size: 64, offset: 1408)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1972, file: !1044, line: 302, baseType: !75, size: 64, offset: 1472)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1972, file: !1044, line: 303, baseType: !82, size: 32, offset: 1536)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1972, file: !1044, line: 305, baseType: !1091, size: 160, offset: 1568)
!2010 = !{!2011, !2012}
!2011 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1967, file: !1953, line: 43, type: !1956)
!2012 = !DILocalVariable(name: "stream", arg: 2, scope: !1967, file: !1953, line: 43, type: !1970)
!2013 = !DILocation(line: 43, column: 36, scope: !1967)
!2014 = !DILocation(line: 43, column: 54, scope: !1967)
!2015 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2016, file: !1953, line: 59, type: !1956)
!2016 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !1953, file: !1953, line: 59, type: !2017, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !2019)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!1956, !1956, !1970, !80}
!2019 = !{!2015, !2020, !2021, !2022, !2023, !2024, !2025, !2026}
!2020 = !DILocalVariable(name: "stream", arg: 2, scope: !2016, file: !1953, line: 59, type: !1970)
!2021 = !DILocalVariable(name: "delimiter", arg: 3, scope: !2016, file: !1953, line: 60, type: !80)
!2022 = !DILocalVariable(name: "c", scope: !2016, file: !1953, line: 62, type: !82)
!2023 = !DILocalVariable(name: "buffer", scope: !2016, file: !1953, line: 63, type: !81)
!2024 = !DILocalVariable(name: "p", scope: !2016, file: !1953, line: 64, type: !81)
!2025 = !DILocalVariable(name: "end", scope: !2016, file: !1953, line: 65, type: !81)
!2026 = !DILocalVariable(name: "oldsize", scope: !2027, file: !1953, line: 83, type: !75)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !1953, line: 82, column: 9)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !1953, line: 81, column: 11)
!2029 = distinct !DILexicalBlock(scope: !2016, file: !1953, line: 71, column: 5)
!2030 = !DILocation(line: 59, column: 42, scope: !2016, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 45, column: 10, scope: !1967)
!2032 = !DILocation(line: 59, column: 60, scope: !2016, inlinedAt: !2031)
!2033 = !DILocation(line: 60, column: 28, scope: !2016, inlinedAt: !2031)
!2034 = !DILocation(line: 63, column: 30, scope: !2016, inlinedAt: !2031)
!2035 = !DILocation(line: 63, column: 9, scope: !2016, inlinedAt: !2031)
!2036 = !DILocation(line: 64, column: 9, scope: !2016, inlinedAt: !2031)
!2037 = !DILocation(line: 65, column: 36, scope: !2016, inlinedAt: !2031)
!2038 = !DILocalVariable(name: "__stream", arg: 1, scope: !2039, file: !1037, line: 125, type: !1970)
!2039 = distinct !DISubprogram(name: "feof_unlocked", scope: !1037, file: !1037, line: 125, type: !2040, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!82, !1970}
!2042 = !{!2038}
!2043 = !DILocation(line: 125, column: 1, scope: !2039, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 67, column: 7, scope: !2045, inlinedAt: !2031)
!2045 = distinct !DILexicalBlock(scope: !2016, file: !1953, line: 67, column: 7)
!2046 = !DILocation(line: 127, column: 10, scope: !2039, inlinedAt: !2044)
!2047 = !DILocation(line: 67, column: 7, scope: !2045, inlinedAt: !2031)
!2048 = !DILocation(line: 67, column: 7, scope: !2016, inlinedAt: !2031)
!2049 = !{!1111, !778, i64 0}
!2050 = !DILocation(line: 65, column: 22, scope: !2016, inlinedAt: !2031)
!2051 = !DILocation(line: 70, column: 3, scope: !2016, inlinedAt: !2031)
!2052 = distinct !{!2052, !2053, !2054}
!2053 = !DILocation(line: 70, column: 3, scope: !2016)
!2054 = !DILocation(line: 91, column: 24, scope: !2016)
!2055 = !DILocation(line: 65, column: 9, scope: !2016, inlinedAt: !2031)
!2056 = !DILocalVariable(name: "__fp", arg: 1, scope: !2057, file: !1037, line: 63, type: !1970)
!2057 = distinct !DISubprogram(name: "getc_unlocked", scope: !1037, file: !1037, line: 63, type: !2040, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !2058)
!2058 = !{!2056}
!2059 = !DILocation(line: 63, column: 22, scope: !2057, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 72, column: 11, scope: !2029, inlinedAt: !2031)
!2061 = !DILocation(line: 65, column: 10, scope: !2057, inlinedAt: !2060)
!2062 = !{!1099, !694, i64 8}
!2063 = !{!1099, !694, i64 16}
!2064 = !DILocation(line: 62, column: 7, scope: !2016, inlinedAt: !2031)
!2065 = !DILocation(line: 73, column: 11, scope: !2029, inlinedAt: !2031)
!2066 = !DILocation(line: 73, column: 13, scope: !2067, inlinedAt: !2031)
!2067 = distinct !DILexicalBlock(scope: !2029, file: !1953, line: 73, column: 11)
!2068 = !DILocation(line: 75, column: 17, scope: !2069, inlinedAt: !2031)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !1953, line: 75, column: 15)
!2070 = distinct !DILexicalBlock(scope: !2067, file: !1953, line: 74, column: 9)
!2071 = !DILocation(line: 75, column: 27, scope: !2069, inlinedAt: !2031)
!2072 = !DILocalVariable(name: "__stream", arg: 1, scope: !2073, file: !1037, line: 132, type: !1970)
!2073 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1037, file: !1037, line: 132, type: !2040, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !2074)
!2074 = !{!2072}
!2075 = !DILocation(line: 132, column: 1, scope: !2073, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 75, column: 30, scope: !2069, inlinedAt: !2031)
!2077 = !DILocation(line: 134, column: 10, scope: !2073, inlinedAt: !2076)
!2078 = !DILocation(line: 75, column: 30, scope: !2069, inlinedAt: !2031)
!2079 = !DILocation(line: 75, column: 15, scope: !2070, inlinedAt: !2031)
!2080 = !DILocation(line: 77, column: 15, scope: !2081, inlinedAt: !2031)
!2081 = distinct !DILexicalBlock(scope: !2070, file: !1953, line: 77, column: 15)
!2082 = !DILocation(line: 77, column: 21, scope: !2081, inlinedAt: !2031)
!2083 = !DILocation(line: 77, column: 15, scope: !2070, inlinedAt: !2031)
!2084 = !DILocation(line: 81, column: 13, scope: !2028, inlinedAt: !2031)
!2085 = !DILocation(line: 81, column: 11, scope: !2029, inlinedAt: !2031)
!2086 = !DILocation(line: 83, column: 40, scope: !2027, inlinedAt: !2031)
!2087 = !DILocation(line: 83, column: 18, scope: !2027, inlinedAt: !2031)
!2088 = !DILocation(line: 84, column: 20, scope: !2027, inlinedAt: !2031)
!2089 = !DILocation(line: 85, column: 22, scope: !2027, inlinedAt: !2031)
!2090 = !DILocation(line: 86, column: 30, scope: !2027, inlinedAt: !2031)
!2091 = !DILocation(line: 87, column: 38, scope: !2027, inlinedAt: !2031)
!2092 = !DILocation(line: 87, column: 24, scope: !2027, inlinedAt: !2031)
!2093 = !DILocation(line: 88, column: 9, scope: !2027, inlinedAt: !2031)
!2094 = !DILocation(line: 89, column: 14, scope: !2029, inlinedAt: !2031)
!2095 = !DILocation(line: 89, column: 9, scope: !2029, inlinedAt: !2031)
!2096 = !DILocation(line: 89, column: 12, scope: !2029, inlinedAt: !2031)
!2097 = !DILocation(line: 91, column: 12, scope: !2016, inlinedAt: !2031)
!2098 = !DILocation(line: 90, column: 5, scope: !2029, inlinedAt: !2031)
!2099 = !DILocation(line: 93, column: 26, scope: !2016, inlinedAt: !2031)
!2100 = !DILocation(line: 93, column: 15, scope: !2016, inlinedAt: !2031)
!2101 = !DILocation(line: 93, column: 22, scope: !2016, inlinedAt: !2031)
!2102 = !DILocation(line: 94, column: 3, scope: !2016, inlinedAt: !2031)
!2103 = !DILocation(line: 45, column: 3, scope: !1967)
!2104 = !DILocation(line: 59, column: 42, scope: !2016)
!2105 = !DILocation(line: 59, column: 60, scope: !2016)
!2106 = !DILocation(line: 60, column: 28, scope: !2016)
!2107 = !DILocation(line: 63, column: 30, scope: !2016)
!2108 = !DILocation(line: 63, column: 9, scope: !2016)
!2109 = !DILocation(line: 64, column: 9, scope: !2016)
!2110 = !DILocation(line: 65, column: 36, scope: !2016)
!2111 = !DILocation(line: 65, column: 9, scope: !2016)
!2112 = !DILocation(line: 125, column: 1, scope: !2039, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 67, column: 7, scope: !2045)
!2114 = !DILocation(line: 127, column: 10, scope: !2039, inlinedAt: !2113)
!2115 = !DILocation(line: 67, column: 7, scope: !2045)
!2116 = !DILocation(line: 67, column: 7, scope: !2016)
!2117 = !DILocation(line: 65, column: 22, scope: !2016)
!2118 = !DILocation(line: 63, column: 22, scope: !2057, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 72, column: 11, scope: !2029)
!2120 = !DILocation(line: 65, column: 10, scope: !2057, inlinedAt: !2119)
!2121 = !DILocation(line: 62, column: 7, scope: !2016)
!2122 = !DILocation(line: 73, column: 11, scope: !2029)
!2123 = !DILocation(line: 73, column: 13, scope: !2067)
!2124 = !DILocation(line: 75, column: 17, scope: !2069)
!2125 = !DILocation(line: 75, column: 27, scope: !2069)
!2126 = !DILocation(line: 132, column: 1, scope: !2073, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 75, column: 30, scope: !2069)
!2128 = !DILocation(line: 134, column: 10, scope: !2073, inlinedAt: !2127)
!2129 = !DILocation(line: 75, column: 30, scope: !2069)
!2130 = !DILocation(line: 75, column: 15, scope: !2070)
!2131 = !DILocation(line: 77, column: 15, scope: !2081)
!2132 = !DILocation(line: 77, column: 21, scope: !2081)
!2133 = !DILocation(line: 77, column: 15, scope: !2070)
!2134 = !DILocation(line: 81, column: 13, scope: !2028)
!2135 = !DILocation(line: 81, column: 11, scope: !2029)
!2136 = !DILocation(line: 83, column: 40, scope: !2027)
!2137 = !DILocation(line: 83, column: 18, scope: !2027)
!2138 = !DILocation(line: 84, column: 20, scope: !2027)
!2139 = !DILocation(line: 85, column: 22, scope: !2027)
!2140 = !DILocation(line: 86, column: 30, scope: !2027)
!2141 = !DILocation(line: 87, column: 38, scope: !2027)
!2142 = !DILocation(line: 87, column: 24, scope: !2027)
!2143 = !DILocation(line: 88, column: 9, scope: !2027)
!2144 = !DILocation(line: 89, column: 14, scope: !2029)
!2145 = !DILocation(line: 89, column: 9, scope: !2029)
!2146 = !DILocation(line: 89, column: 12, scope: !2029)
!2147 = !DILocation(line: 91, column: 12, scope: !2016)
!2148 = !DILocation(line: 90, column: 5, scope: !2029)
!2149 = !DILocation(line: 93, column: 26, scope: !2016)
!2150 = !DILocation(line: 93, column: 15, scope: !2016)
!2151 = !DILocation(line: 93, column: 22, scope: !2016)
!2152 = !DILocation(line: 94, column: 3, scope: !2016)
!2153 = !DILocation(line: 95, column: 1, scope: !2016)
!2154 = distinct !DISubprogram(name: "freebuffer", scope: !1953, file: !1953, line: 100, type: !1954, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !2155)
!2155 = !{!2156}
!2156 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2154, file: !1953, line: 100, type: !1956)
!2157 = !DILocation(line: 100, column: 32, scope: !2154)
!2158 = !DILocation(line: 102, column: 21, scope: !2154)
!2159 = !DILocation(line: 102, column: 3, scope: !2154)
!2160 = !DILocation(line: 103, column: 1, scope: !2154)
!2161 = distinct !DISubprogram(name: "memcasecmp", scope: !2162, file: !2162, line: 32, type: !2163, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !623, variables: !2167)
!2162 = !DIFile(filename: "lib/memcasecmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!82, !2165, !2165, !75}
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2167 = !{!2168, !2169, !2170, !2171, !2172, !2173, !2174, !2178, !2179, !2180, !2182, !2183, !2185}
!2168 = !DILocalVariable(name: "vs1", arg: 1, scope: !2161, file: !2162, line: 32, type: !2165)
!2169 = !DILocalVariable(name: "vs2", arg: 2, scope: !2161, file: !2162, line: 32, type: !2165)
!2170 = !DILocalVariable(name: "n", arg: 3, scope: !2161, file: !2162, line: 32, type: !75)
!2171 = !DILocalVariable(name: "i", scope: !2161, file: !2162, line: 34, type: !75)
!2172 = !DILocalVariable(name: "s1", scope: !2161, file: !2162, line: 35, type: !78)
!2173 = !DILocalVariable(name: "s2", scope: !2161, file: !2162, line: 36, type: !78)
!2174 = !DILocalVariable(name: "u1", scope: !2175, file: !2162, line: 39, type: !84)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !2162, line: 38, column: 5)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !2162, line: 37, column: 3)
!2177 = distinct !DILexicalBlock(scope: !2161, file: !2162, line: 37, column: 3)
!2178 = !DILocalVariable(name: "u2", scope: !2175, file: !2162, line: 40, type: !84)
!2179 = !DILocalVariable(name: "U1", scope: !2175, file: !2162, line: 41, type: !82)
!2180 = !DILocalVariable(name: "__res", scope: !2181, file: !2162, line: 41, type: !82)
!2181 = distinct !DILexicalBlock(scope: !2175, file: !2162, line: 41, column: 16)
!2182 = !DILocalVariable(name: "U2", scope: !2175, file: !2162, line: 42, type: !82)
!2183 = !DILocalVariable(name: "__res", scope: !2184, file: !2162, line: 42, type: !82)
!2184 = distinct !DILexicalBlock(scope: !2175, file: !2162, line: 42, column: 16)
!2185 = !DILocalVariable(name: "diff", scope: !2175, file: !2162, line: 43, type: !82)
!2186 = !DILocation(line: 32, column: 25, scope: !2161)
!2187 = !DILocation(line: 32, column: 42, scope: !2161)
!2188 = !DILocation(line: 32, column: 54, scope: !2161)
!2189 = !DILocation(line: 35, column: 15, scope: !2161)
!2190 = !DILocation(line: 36, column: 15, scope: !2161)
!2191 = !DILocation(line: 34, column: 10, scope: !2161)
!2192 = !DILocation(line: 37, column: 17, scope: !2176)
!2193 = !DILocation(line: 37, column: 3, scope: !2177)
!2194 = !DILocation(line: 41, column: 16, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2181, file: !2162, line: 41, column: 16)
!2196 = distinct !{!2196, !2193, !2197}
!2197 = !DILocation(line: 47, column: 5, scope: !2177)
!2198 = !DILocation(line: 39, column: 26, scope: !2175)
!2199 = !DILocation(line: 39, column: 21, scope: !2175)
!2200 = !DILocation(line: 40, column: 26, scope: !2175)
!2201 = !DILocation(line: 40, column: 21, scope: !2175)
!2202 = !DILocation(line: 41, column: 16, scope: !2181)
!2203 = !DILocation(line: 41, column: 11, scope: !2175)
!2204 = !DILocation(line: 42, column: 16, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2184, file: !2162, line: 42, column: 16)
!2206 = !DILocation(line: 42, column: 16, scope: !2184)
!2207 = !DILocation(line: 42, column: 11, scope: !2175)
!2208 = !DILocation(line: 43, column: 45, scope: !2175)
!2209 = !DILocation(line: 43, column: 11, scope: !2175)
!2210 = !DILocation(line: 45, column: 11, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2175, file: !2162, line: 45, column: 11)
!2212 = !DILocation(line: 37, column: 23, scope: !2176)
!2213 = !DILocation(line: 49, column: 1, scope: !2161)
!2214 = distinct !DISubprogram(name: "posix2_version", scope: !2215, file: !2215, line: 40, type: !2216, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !626, variables: !2217)
!2215 = !DIFile(filename: "lib/posixver.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2216 = !DISubroutineType(types: !625)
!2217 = !{!2218, !2219, !2220, !2223}
!2218 = !DILocalVariable(name: "v", scope: !2214, file: !2215, line: 42, type: !1071)
!2219 = !DILocalVariable(name: "s", scope: !2214, file: !2215, line: 43, type: !78)
!2220 = !DILocalVariable(name: "e", scope: !2221, file: !2215, line: 47, type: !81)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !2215, line: 46, column: 5)
!2222 = distinct !DILexicalBlock(scope: !2214, file: !2215, line: 45, column: 7)
!2223 = !DILocalVariable(name: "i", scope: !2221, file: !2215, line: 48, type: !1071)
!2224 = !DILocation(line: 42, column: 12, scope: !2214)
!2225 = !DILocation(line: 43, column: 19, scope: !2214)
!2226 = !DILocation(line: 43, column: 15, scope: !2214)
!2227 = !DILocation(line: 45, column: 7, scope: !2222)
!2228 = !DILocation(line: 45, column: 9, scope: !2222)
!2229 = !DILocation(line: 45, column: 12, scope: !2222)
!2230 = !DILocation(line: 45, column: 7, scope: !2214)
!2231 = !DILocation(line: 47, column: 7, scope: !2221)
!2232 = !DILocation(line: 47, column: 13, scope: !2221)
!2233 = !DILocation(line: 48, column: 20, scope: !2221)
!2234 = !DILocation(line: 48, column: 16, scope: !2221)
!2235 = !DILocation(line: 49, column: 14, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2221, file: !2215, line: 49, column: 11)
!2237 = !DILocation(line: 49, column: 13, scope: !2236)
!2238 = !DILocation(line: 51, column: 5, scope: !2222)
!2239 = !DILocation(line: 53, column: 12, scope: !2214)
!2240 = !DILocation(line: 53, column: 36, scope: !2214)
!2241 = !DILocation(line: 53, column: 34, scope: !2214)
!2242 = !DILocation(line: 53, column: 10, scope: !2214)
!2243 = !DILocation(line: 53, column: 3, scope: !2214)
!2244 = distinct !DISubprogram(name: "set_program_name", scope: !202, file: !202, line: 39, type: !109, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !198, variables: !2245)
!2245 = !{!2246, !2247, !2248}
!2246 = !DILocalVariable(name: "argv0", arg: 1, scope: !2244, file: !202, line: 39, type: !78)
!2247 = !DILocalVariable(name: "slash", scope: !2244, file: !202, line: 46, type: !78)
!2248 = !DILocalVariable(name: "base", scope: !2244, file: !202, line: 47, type: !78)
!2249 = !DILocation(line: 39, column: 31, scope: !2244)
!2250 = !DILocation(line: 51, column: 13, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2244, file: !202, line: 51, column: 7)
!2252 = !DILocation(line: 51, column: 7, scope: !2244)
!2253 = !DILocation(line: 55, column: 14, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2251, file: !202, line: 52, column: 5)
!2255 = !DILocation(line: 54, column: 7, scope: !2254)
!2256 = !DILocation(line: 56, column: 7, scope: !2254)
!2257 = !DILocation(line: 59, column: 11, scope: !2244)
!2258 = !DILocation(line: 46, column: 15, scope: !2244)
!2259 = !DILocation(line: 60, column: 17, scope: !2244)
!2260 = !DILocation(line: 60, column: 33, scope: !2244)
!2261 = !DILocation(line: 60, column: 11, scope: !2244)
!2262 = !DILocation(line: 47, column: 15, scope: !2244)
!2263 = !DILocation(line: 61, column: 12, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2244, file: !202, line: 61, column: 7)
!2265 = !DILocation(line: 61, column: 20, scope: !2264)
!2266 = !DILocation(line: 61, column: 25, scope: !2264)
!2267 = !DILocation(line: 61, column: 42, scope: !2264)
!2268 = !DILocation(line: 61, column: 28, scope: !2264)
!2269 = !DILocation(line: 61, column: 61, scope: !2264)
!2270 = !DILocation(line: 61, column: 7, scope: !2244)
!2271 = !DILocation(line: 64, column: 11, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !202, line: 64, column: 11)
!2273 = distinct !DILexicalBlock(scope: !2264, file: !202, line: 62, column: 5)
!2274 = !DILocation(line: 64, column: 36, scope: !2272)
!2275 = !DILocation(line: 64, column: 11, scope: !2273)
!2276 = !DILocation(line: 66, column: 24, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2272, file: !202, line: 65, column: 9)
!2278 = !DILocation(line: 70, column: 41, scope: !2277)
!2279 = !DILocation(line: 72, column: 9, scope: !2277)
!2280 = !DILocation(line: 84, column: 16, scope: !2244)
!2281 = !DILocation(line: 90, column: 27, scope: !2244)
!2282 = !DILocation(line: 92, column: 1, scope: !2244)
!2283 = distinct !DISubprogram(name: "clone_quoting_options", scope: !217, file: !217, line: 114, type: !2284, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !2287)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!2286, !2286}
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!2287 = !{!2288, !2289, !2290}
!2288 = !DILocalVariable(name: "o", arg: 1, scope: !2283, file: !217, line: 114, type: !2286)
!2289 = !DILocalVariable(name: "e", scope: !2283, file: !217, line: 116, type: !82)
!2290 = !DILocalVariable(name: "p", scope: !2283, file: !217, line: 117, type: !2286)
!2291 = !DILocation(line: 114, column: 48, scope: !2283)
!2292 = !DILocation(line: 116, column: 11, scope: !2283)
!2293 = !DILocation(line: 116, column: 7, scope: !2283)
!2294 = !DILocation(line: 117, column: 40, scope: !2283)
!2295 = !DILocation(line: 117, column: 31, scope: !2283)
!2296 = !DILocation(line: 117, column: 27, scope: !2283)
!2297 = !DILocation(line: 119, column: 9, scope: !2283)
!2298 = !DILocation(line: 120, column: 3, scope: !2283)
!2299 = distinct !DISubprogram(name: "get_quoting_style", scope: !217, file: !217, line: 125, type: !2300, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !2304)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!34, !2302}
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!2304 = !{!2305}
!2305 = !DILocalVariable(name: "o", arg: 1, scope: !2299, file: !217, line: 125, type: !2302)
!2306 = !DILocation(line: 125, column: 50, scope: !2299)
!2307 = !DILocation(line: 127, column: 11, scope: !2299)
!2308 = !DILocation(line: 127, column: 46, scope: !2299)
!2309 = !{!2310, !695, i64 0}
!2310 = !{!"quoting_options", !695, i64 0, !796, i64 4, !695, i64 8, !694, i64 40, !694, i64 48}
!2311 = !DILocation(line: 127, column: 3, scope: !2299)
!2312 = distinct !DISubprogram(name: "set_quoting_style", scope: !217, file: !217, line: 133, type: !2313, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !2315)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{null, !2286, !34}
!2315 = !{!2316, !2317}
!2316 = !DILocalVariable(name: "o", arg: 1, scope: !2312, file: !217, line: 133, type: !2286)
!2317 = !DILocalVariable(name: "s", arg: 2, scope: !2312, file: !217, line: 133, type: !34)
!2318 = !DILocation(line: 133, column: 44, scope: !2312)
!2319 = !DILocation(line: 133, column: 66, scope: !2312)
!2320 = !DILocation(line: 135, column: 4, scope: !2312)
!2321 = !DILocation(line: 135, column: 39, scope: !2312)
!2322 = !DILocation(line: 135, column: 45, scope: !2312)
!2323 = !DILocation(line: 136, column: 1, scope: !2312)
!2324 = distinct !DISubprogram(name: "set_char_quoting", scope: !217, file: !217, line: 144, type: !2325, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !2327)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!82, !2286, !80, !82}
!2327 = !{!2328, !2329, !2330, !2331, !2332, !2334, !2335}
!2328 = !DILocalVariable(name: "o", arg: 1, scope: !2324, file: !217, line: 144, type: !2286)
!2329 = !DILocalVariable(name: "c", arg: 2, scope: !2324, file: !217, line: 144, type: !80)
!2330 = !DILocalVariable(name: "i", arg: 3, scope: !2324, file: !217, line: 144, type: !82)
!2331 = !DILocalVariable(name: "uc", scope: !2324, file: !217, line: 146, type: !84)
!2332 = !DILocalVariable(name: "p", scope: !2324, file: !217, line: 147, type: !2333)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!2334 = !DILocalVariable(name: "shift", scope: !2324, file: !217, line: 149, type: !82)
!2335 = !DILocalVariable(name: "r", scope: !2324, file: !217, line: 150, type: !82)
!2336 = !DILocation(line: 144, column: 43, scope: !2324)
!2337 = !DILocation(line: 144, column: 51, scope: !2324)
!2338 = !DILocation(line: 144, column: 58, scope: !2324)
!2339 = !DILocation(line: 146, column: 17, scope: !2324)
!2340 = !DILocation(line: 148, column: 6, scope: !2324)
!2341 = !DILocation(line: 148, column: 62, scope: !2324)
!2342 = !DILocation(line: 148, column: 57, scope: !2324)
!2343 = !DILocation(line: 147, column: 17, scope: !2324)
!2344 = !DILocation(line: 149, column: 18, scope: !2324)
!2345 = !DILocation(line: 149, column: 15, scope: !2324)
!2346 = !DILocation(line: 149, column: 7, scope: !2324)
!2347 = !DILocation(line: 150, column: 12, scope: !2324)
!2348 = !DILocation(line: 150, column: 15, scope: !2324)
!2349 = !DILocation(line: 150, column: 25, scope: !2324)
!2350 = !DILocation(line: 150, column: 7, scope: !2324)
!2351 = !DILocation(line: 151, column: 13, scope: !2324)
!2352 = !DILocation(line: 151, column: 18, scope: !2324)
!2353 = !DILocation(line: 151, column: 23, scope: !2324)
!2354 = !DILocation(line: 151, column: 6, scope: !2324)
!2355 = !DILocation(line: 152, column: 3, scope: !2324)
!2356 = distinct !DISubprogram(name: "set_quoting_flags", scope: !217, file: !217, line: 160, type: !2357, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !2359)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!82, !2286, !82}
!2359 = !{!2360, !2361, !2362}
!2360 = !DILocalVariable(name: "o", arg: 1, scope: !2356, file: !217, line: 160, type: !2286)
!2361 = !DILocalVariable(name: "i", arg: 2, scope: !2356, file: !217, line: 160, type: !82)
!2362 = !DILocalVariable(name: "r", scope: !2356, file: !217, line: 162, type: !82)
!2363 = !DILocation(line: 160, column: 44, scope: !2356)
!2364 = !DILocation(line: 160, column: 51, scope: !2356)
!2365 = !DILocation(line: 163, column: 8, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2356, file: !217, line: 163, column: 7)
!2367 = !DILocation(line: 163, column: 7, scope: !2356)
!2368 = !DILocation(line: 165, column: 10, scope: !2356)
!2369 = !{!2310, !796, i64 4}
!2370 = !DILocation(line: 162, column: 7, scope: !2356)
!2371 = !DILocation(line: 166, column: 12, scope: !2356)
!2372 = !DILocation(line: 167, column: 3, scope: !2356)
!2373 = distinct !DISubprogram(name: "set_custom_quoting", scope: !217, file: !217, line: 171, type: !2374, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !2376)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !2286, !78, !78}
!2376 = !{!2377, !2378, !2379}
!2377 = !DILocalVariable(name: "o", arg: 1, scope: !2373, file: !217, line: 171, type: !2286)
!2378 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2373, file: !217, line: 172, type: !78)
!2379 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2373, file: !217, line: 172, type: !78)
!2380 = !DILocation(line: 171, column: 45, scope: !2373)
!2381 = !DILocation(line: 172, column: 33, scope: !2373)
!2382 = !DILocation(line: 172, column: 57, scope: !2373)
!2383 = !DILocation(line: 174, column: 8, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2373, file: !217, line: 174, column: 7)
!2385 = !DILocation(line: 174, column: 7, scope: !2373)
!2386 = !DILocation(line: 176, column: 6, scope: !2373)
!2387 = !DILocation(line: 176, column: 12, scope: !2373)
!2388 = !DILocation(line: 177, column: 8, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2373, file: !217, line: 177, column: 7)
!2390 = !DILocation(line: 177, column: 23, scope: !2389)
!2391 = !DILocation(line: 177, column: 19, scope: !2389)
!2392 = !DILocation(line: 178, column: 5, scope: !2389)
!2393 = !DILocation(line: 179, column: 6, scope: !2373)
!2394 = !DILocation(line: 179, column: 17, scope: !2373)
!2395 = !{!2310, !694, i64 40}
!2396 = !DILocation(line: 180, column: 6, scope: !2373)
!2397 = !DILocation(line: 180, column: 18, scope: !2373)
!2398 = !{!2310, !694, i64 48}
!2399 = !DILocation(line: 181, column: 1, scope: !2373)
!2400 = distinct !DISubprogram(name: "quotearg_buffer", scope: !217, file: !217, line: 776, type: !2401, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!75, !81, !75, !78, !75, !2302}
!2403 = !{!2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411}
!2404 = !DILocalVariable(name: "buffer", arg: 1, scope: !2400, file: !217, line: 776, type: !81)
!2405 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2400, file: !217, line: 776, type: !75)
!2406 = !DILocalVariable(name: "arg", arg: 3, scope: !2400, file: !217, line: 777, type: !78)
!2407 = !DILocalVariable(name: "argsize", arg: 4, scope: !2400, file: !217, line: 777, type: !75)
!2408 = !DILocalVariable(name: "o", arg: 5, scope: !2400, file: !217, line: 778, type: !2302)
!2409 = !DILocalVariable(name: "p", scope: !2400, file: !217, line: 780, type: !2302)
!2410 = !DILocalVariable(name: "e", scope: !2400, file: !217, line: 781, type: !82)
!2411 = !DILocalVariable(name: "r", scope: !2400, file: !217, line: 782, type: !75)
!2412 = !DILocation(line: 776, column: 24, scope: !2400)
!2413 = !DILocation(line: 776, column: 39, scope: !2400)
!2414 = !DILocation(line: 777, column: 30, scope: !2400)
!2415 = !DILocation(line: 777, column: 42, scope: !2400)
!2416 = !DILocation(line: 778, column: 48, scope: !2400)
!2417 = !DILocation(line: 780, column: 37, scope: !2400)
!2418 = !DILocation(line: 780, column: 33, scope: !2400)
!2419 = !DILocation(line: 781, column: 11, scope: !2400)
!2420 = !DILocation(line: 781, column: 7, scope: !2400)
!2421 = !DILocation(line: 783, column: 43, scope: !2400)
!2422 = !DILocation(line: 783, column: 53, scope: !2400)
!2423 = !DILocation(line: 783, column: 60, scope: !2400)
!2424 = !DILocation(line: 784, column: 43, scope: !2400)
!2425 = !DILocation(line: 784, column: 58, scope: !2400)
!2426 = !DILocation(line: 782, column: 14, scope: !2400)
!2427 = !DILocation(line: 782, column: 10, scope: !2400)
!2428 = !DILocation(line: 785, column: 9, scope: !2400)
!2429 = !DILocation(line: 786, column: 3, scope: !2400)
!2430 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !217, file: !217, line: 248, type: !2431, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !2435)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!75, !81, !75, !78, !75, !34, !82, !2433, !78, !78}
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!2435 = !{!2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2460, !2461, !2462, !2463, !2464, !2467, !2468, !2484, !2487, !2488, !2495}
!2436 = !DILocalVariable(name: "buffer", arg: 1, scope: !2430, file: !217, line: 248, type: !81)
!2437 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2430, file: !217, line: 248, type: !75)
!2438 = !DILocalVariable(name: "arg", arg: 3, scope: !2430, file: !217, line: 249, type: !78)
!2439 = !DILocalVariable(name: "argsize", arg: 4, scope: !2430, file: !217, line: 249, type: !75)
!2440 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2430, file: !217, line: 250, type: !34)
!2441 = !DILocalVariable(name: "flags", arg: 6, scope: !2430, file: !217, line: 250, type: !82)
!2442 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2430, file: !217, line: 251, type: !2433)
!2443 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2430, file: !217, line: 252, type: !78)
!2444 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2430, file: !217, line: 253, type: !78)
!2445 = !DILocalVariable(name: "i", scope: !2430, file: !217, line: 255, type: !75)
!2446 = !DILocalVariable(name: "len", scope: !2430, file: !217, line: 256, type: !75)
!2447 = !DILocalVariable(name: "orig_buffersize", scope: !2430, file: !217, line: 257, type: !75)
!2448 = !DILocalVariable(name: "quote_string", scope: !2430, file: !217, line: 258, type: !78)
!2449 = !DILocalVariable(name: "quote_string_len", scope: !2430, file: !217, line: 259, type: !75)
!2450 = !DILocalVariable(name: "backslash_escapes", scope: !2430, file: !217, line: 260, type: !96)
!2451 = !DILocalVariable(name: "unibyte_locale", scope: !2430, file: !217, line: 261, type: !96)
!2452 = !DILocalVariable(name: "elide_outer_quotes", scope: !2430, file: !217, line: 262, type: !96)
!2453 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2430, file: !217, line: 263, type: !96)
!2454 = !DILocalVariable(name: "encountered_single_quote", scope: !2430, file: !217, line: 264, type: !96)
!2455 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2430, file: !217, line: 265, type: !96)
!2456 = !DILocalVariable(name: "c", scope: !2457, file: !217, line: 394, type: !84)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !217, line: 393, column: 5)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !217, line: 392, column: 3)
!2459 = distinct !DILexicalBlock(scope: !2430, file: !217, line: 392, column: 3)
!2460 = !DILocalVariable(name: "esc", scope: !2457, file: !217, line: 395, type: !84)
!2461 = !DILocalVariable(name: "is_right_quote", scope: !2457, file: !217, line: 396, type: !96)
!2462 = !DILocalVariable(name: "escaping", scope: !2457, file: !217, line: 397, type: !96)
!2463 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2457, file: !217, line: 398, type: !96)
!2464 = !DILocalVariable(name: "m", scope: !2465, file: !217, line: 602, type: !75)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !217, line: 600, column: 11)
!2466 = distinct !DILexicalBlock(scope: !2457, file: !217, line: 418, column: 9)
!2467 = !DILocalVariable(name: "printable", scope: !2465, file: !217, line: 604, type: !96)
!2468 = !DILocalVariable(name: "mbstate", scope: !2469, file: !217, line: 613, type: !2471)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !217, line: 612, column: 15)
!2470 = distinct !DILexicalBlock(scope: !2465, file: !217, line: 606, column: 17)
!2471 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2472, line: 6, baseType: !2473)
!2472 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2474, line: 21, baseType: !2475)
!2474 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2474, line: 13, size: 64, elements: !2476)
!2476 = !{!2477, !2478}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2475, file: !2474, line: 15, baseType: !82, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2475, file: !2474, line: 20, baseType: !2479, size: 32, offset: 32)
!2479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2475, file: !2474, line: 16, size: 32, elements: !2480)
!2480 = !{!2481, !2482}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2479, file: !2474, line: 18, baseType: !230, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2479, file: !2474, line: 19, baseType: !2483, size: 32)
!2483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 32, elements: !149)
!2484 = !DILocalVariable(name: "w", scope: !2485, file: !217, line: 623, type: !2486)
!2485 = distinct !DILexicalBlock(scope: !2469, file: !217, line: 622, column: 19)
!2486 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 90, baseType: !82)
!2487 = !DILocalVariable(name: "bytes", scope: !2485, file: !217, line: 624, type: !75)
!2488 = !DILocalVariable(name: "j", scope: !2489, file: !217, line: 649, type: !75)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !217, line: 648, column: 27)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !217, line: 646, column: 29)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !217, line: 641, column: 23)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !217, line: 633, column: 30)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !217, line: 628, column: 30)
!2494 = distinct !DILexicalBlock(scope: !2485, file: !217, line: 626, column: 25)
!2495 = !DILocalVariable(name: "ilim", scope: !2496, file: !217, line: 676, type: !75)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !217, line: 673, column: 15)
!2497 = distinct !DILexicalBlock(scope: !2465, file: !217, line: 672, column: 17)
!2498 = !DILocation(line: 248, column: 33, scope: !2430)
!2499 = !DILocation(line: 248, column: 48, scope: !2430)
!2500 = !DILocation(line: 249, column: 39, scope: !2430)
!2501 = !DILocation(line: 249, column: 51, scope: !2430)
!2502 = !DILocation(line: 250, column: 46, scope: !2430)
!2503 = !DILocation(line: 250, column: 65, scope: !2430)
!2504 = !DILocation(line: 251, column: 47, scope: !2430)
!2505 = !DILocation(line: 252, column: 39, scope: !2430)
!2506 = !DILocation(line: 253, column: 39, scope: !2430)
!2507 = !DILocation(line: 256, column: 10, scope: !2430)
!2508 = !DILocation(line: 257, column: 10, scope: !2430)
!2509 = !DILocation(line: 258, column: 15, scope: !2430)
!2510 = !DILocation(line: 259, column: 10, scope: !2430)
!2511 = !DILocation(line: 260, column: 8, scope: !2430)
!2512 = !DILocation(line: 261, column: 25, scope: !2430)
!2513 = !DILocation(line: 261, column: 36, scope: !2430)
!2514 = !DILocation(line: 262, column: 8, scope: !2430)
!2515 = !DILocation(line: 263, column: 8, scope: !2430)
!2516 = !DILocation(line: 264, column: 8, scope: !2430)
!2517 = !DILocation(line: 265, column: 8, scope: !2430)
!2518 = !DILocation(line: 265, column: 3, scope: !2430)
!2519 = !DILocation(line: 308, column: 3, scope: !2430)
!2520 = !DILocation(line: 315, column: 11, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2430, file: !217, line: 309, column: 5)
!2522 = !DILocation(line: 315, column: 12, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2521, file: !217, line: 315, column: 11)
!2524 = !DILocation(line: 316, column: 9, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !217, line: 316, column: 9)
!2526 = distinct !DILexicalBlock(scope: !2523, file: !217, line: 316, column: 9)
!2527 = !DILocation(line: 316, column: 9, scope: !2526)
!2528 = !DILocation(line: 354, column: 26, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !217, line: 332, column: 11)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !217, line: 331, column: 13)
!2531 = distinct !DILexicalBlock(scope: !2521, file: !217, line: 330, column: 7)
!2532 = !DILocation(line: 355, column: 27, scope: !2529)
!2533 = !DILocation(line: 356, column: 11, scope: !2529)
!2534 = !DILocation(line: 357, column: 14, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2531, file: !217, line: 357, column: 13)
!2536 = !DILocation(line: 357, column: 13, scope: !2531)
!2537 = !DILocation(line: 358, column: 43, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !217, line: 358, column: 11)
!2539 = distinct !DILexicalBlock(scope: !2535, file: !217, line: 358, column: 11)
!2540 = !DILocation(line: 358, column: 11, scope: !2539)
!2541 = !DILocation(line: 359, column: 13, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !217, line: 359, column: 13)
!2543 = distinct !DILexicalBlock(scope: !2538, file: !217, line: 359, column: 13)
!2544 = !DILocation(line: 359, column: 13, scope: !2543)
!2545 = !DILocation(line: 358, column: 70, scope: !2538)
!2546 = distinct !{!2546, !2540, !2547}
!2547 = !DILocation(line: 359, column: 13, scope: !2539)
!2548 = !DILocation(line: 362, column: 28, scope: !2531)
!2549 = !DILocation(line: 364, column: 7, scope: !2521)
!2550 = !DILocation(line: 367, column: 7, scope: !2521)
!2551 = !DILocation(line: 370, column: 7, scope: !2521)
!2552 = !DILocation(line: 373, column: 12, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2521, file: !217, line: 373, column: 11)
!2554 = !DILocation(line: 373, column: 11, scope: !2521)
!2555 = !DILocation(line: 378, column: 12, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2521, file: !217, line: 378, column: 11)
!2557 = !DILocation(line: 378, column: 11, scope: !2521)
!2558 = !DILocation(line: 379, column: 9, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !217, line: 379, column: 9)
!2560 = distinct !DILexicalBlock(scope: !2556, file: !217, line: 379, column: 9)
!2561 = !DILocation(line: 379, column: 9, scope: !2560)
!2562 = !DILocation(line: 386, column: 7, scope: !2521)
!2563 = !DILocation(line: 389, column: 7, scope: !2521)
!2564 = !DILocation(line: 255, column: 10, scope: !2430)
!2565 = !DILocation(line: 392, column: 8, scope: !2459)
!2566 = !DILocation(line: 392, column: 27, scope: !2458)
!2567 = !DILocation(line: 392, column: 19, scope: !2458)
!2568 = !DILocation(line: 392, column: 60, scope: !2458)
!2569 = !DILocation(line: 392, column: 3, scope: !2459)
!2570 = !DILocation(line: 392, column: 41, scope: !2458)
!2571 = !DILocation(line: 392, column: 48, scope: !2458)
!2572 = !DILocation(line: 396, column: 12, scope: !2457)
!2573 = !DILocation(line: 397, column: 12, scope: !2457)
!2574 = !DILocation(line: 398, column: 12, scope: !2457)
!2575 = !DILocation(line: 401, column: 11, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2457, file: !217, line: 400, column: 11)
!2577 = !DILocation(line: 403, column: 17, scope: !2576)
!2578 = !DILocation(line: 404, column: 39, scope: !2576)
!2579 = !DILocation(line: 408, column: 32, scope: !2576)
!2580 = !DILocation(line: 404, column: 19, scope: !2576)
!2581 = !DILocation(line: 404, column: 15, scope: !2576)
!2582 = !DILocation(line: 409, column: 11, scope: !2576)
!2583 = !DILocation(line: 409, column: 26, scope: !2576)
!2584 = !DILocation(line: 409, column: 14, scope: !2576)
!2585 = !DILocation(line: 409, column: 63, scope: !2576)
!2586 = !DILocation(line: 400, column: 11, scope: !2457)
!2587 = !DILocation(line: 416, column: 11, scope: !2457)
!2588 = !DILocation(line: 394, column: 21, scope: !2457)
!2589 = !DILocation(line: 417, column: 7, scope: !2457)
!2590 = !DILocation(line: 420, column: 15, scope: !2466)
!2591 = !DILocation(line: 422, column: 15, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !217, line: 422, column: 15)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !217, line: 421, column: 13)
!2594 = distinct !DILexicalBlock(scope: !2466, file: !217, line: 420, column: 15)
!2595 = !DILocation(line: 422, column: 15, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2592, file: !217, line: 422, column: 15)
!2597 = !DILocation(line: 422, column: 15, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !217, line: 422, column: 15)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !217, line: 422, column: 15)
!2600 = distinct !DILexicalBlock(scope: !2596, file: !217, line: 422, column: 15)
!2601 = !DILocation(line: 422, column: 15, scope: !2599)
!2602 = !DILocation(line: 422, column: 15, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !217, line: 422, column: 15)
!2604 = distinct !DILexicalBlock(scope: !2600, file: !217, line: 422, column: 15)
!2605 = !DILocation(line: 422, column: 15, scope: !2604)
!2606 = !DILocation(line: 422, column: 15, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !217, line: 422, column: 15)
!2608 = distinct !DILexicalBlock(scope: !2600, file: !217, line: 422, column: 15)
!2609 = !DILocation(line: 422, column: 15, scope: !2608)
!2610 = !DILocation(line: 422, column: 15, scope: !2600)
!2611 = !DILocation(line: 422, column: 15, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !217, line: 422, column: 15)
!2613 = distinct !DILexicalBlock(scope: !2592, file: !217, line: 422, column: 15)
!2614 = !DILocation(line: 422, column: 15, scope: !2613)
!2615 = !DILocation(line: 430, column: 19, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2593, file: !217, line: 429, column: 19)
!2617 = !DILocation(line: 430, column: 24, scope: !2616)
!2618 = !DILocation(line: 430, column: 28, scope: !2616)
!2619 = !DILocation(line: 430, column: 38, scope: !2616)
!2620 = !DILocation(line: 430, column: 48, scope: !2616)
!2621 = !DILocation(line: 430, column: 59, scope: !2616)
!2622 = !DILocation(line: 432, column: 19, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !217, line: 432, column: 19)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !217, line: 432, column: 19)
!2625 = distinct !DILexicalBlock(scope: !2616, file: !217, line: 431, column: 17)
!2626 = !DILocation(line: 432, column: 19, scope: !2624)
!2627 = !DILocation(line: 433, column: 19, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !217, line: 433, column: 19)
!2629 = distinct !DILexicalBlock(scope: !2625, file: !217, line: 433, column: 19)
!2630 = !DILocation(line: 433, column: 19, scope: !2629)
!2631 = !DILocation(line: 434, column: 17, scope: !2625)
!2632 = !DILocation(line: 441, column: 20, scope: !2594)
!2633 = !DILocation(line: 446, column: 11, scope: !2466)
!2634 = !DILocation(line: 449, column: 19, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2466, file: !217, line: 447, column: 13)
!2636 = !DILocation(line: 455, column: 19, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2635, file: !217, line: 454, column: 19)
!2638 = !DILocation(line: 455, column: 24, scope: !2637)
!2639 = !DILocation(line: 455, column: 28, scope: !2637)
!2640 = !DILocation(line: 455, column: 38, scope: !2637)
!2641 = !DILocation(line: 455, column: 47, scope: !2637)
!2642 = !DILocation(line: 455, column: 41, scope: !2637)
!2643 = !DILocation(line: 455, column: 52, scope: !2637)
!2644 = !DILocation(line: 454, column: 19, scope: !2635)
!2645 = !DILocation(line: 456, column: 25, scope: !2637)
!2646 = !DILocation(line: 456, column: 17, scope: !2637)
!2647 = !DILocation(line: 463, column: 25, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2637, file: !217, line: 457, column: 19)
!2649 = !DILocation(line: 467, column: 21, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !217, line: 467, column: 21)
!2651 = distinct !DILexicalBlock(scope: !2648, file: !217, line: 467, column: 21)
!2652 = !DILocation(line: 467, column: 21, scope: !2651)
!2653 = !DILocation(line: 468, column: 21, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !217, line: 468, column: 21)
!2655 = distinct !DILexicalBlock(scope: !2648, file: !217, line: 468, column: 21)
!2656 = !DILocation(line: 468, column: 21, scope: !2655)
!2657 = !DILocation(line: 469, column: 21, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !217, line: 469, column: 21)
!2659 = distinct !DILexicalBlock(scope: !2648, file: !217, line: 469, column: 21)
!2660 = !DILocation(line: 469, column: 21, scope: !2659)
!2661 = !DILocation(line: 470, column: 21, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !217, line: 470, column: 21)
!2663 = distinct !DILexicalBlock(scope: !2648, file: !217, line: 470, column: 21)
!2664 = !DILocation(line: 470, column: 21, scope: !2663)
!2665 = !DILocation(line: 471, column: 21, scope: !2648)
!2666 = !DILocation(line: 395, column: 21, scope: !2457)
!2667 = !DILocation(line: 484, column: 31, scope: !2466)
!2668 = !DILocation(line: 485, column: 31, scope: !2466)
!2669 = !DILocation(line: 487, column: 31, scope: !2466)
!2670 = !DILocation(line: 488, column: 31, scope: !2466)
!2671 = !DILocation(line: 489, column: 31, scope: !2466)
!2672 = !DILocation(line: 492, column: 15, scope: !2466)
!2673 = !DILocation(line: 494, column: 19, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !217, line: 493, column: 13)
!2675 = distinct !DILexicalBlock(scope: !2466, file: !217, line: 492, column: 15)
!2676 = !DILocation(line: 501, column: 33, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2466, file: !217, line: 501, column: 15)
!2678 = !DILocation(line: 506, column: 15, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2466, file: !217, line: 505, column: 15)
!2680 = !DILocation(line: 510, column: 15, scope: !2466)
!2681 = !DILocation(line: 518, column: 26, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2466, file: !217, line: 518, column: 15)
!2683 = !DILocation(line: 518, column: 15, scope: !2466)
!2684 = !DILocation(line: 518, column: 40, scope: !2682)
!2685 = !DILocation(line: 518, column: 47, scope: !2682)
!2686 = !DILocation(line: 522, column: 17, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2466, file: !217, line: 522, column: 15)
!2688 = !DILocation(line: 518, column: 18, scope: !2682)
!2689 = !DILocation(line: 518, column: 65, scope: !2682)
!2690 = !DILocation(line: 522, column: 15, scope: !2466)
!2691 = !DILocation(line: 526, column: 11, scope: !2466)
!2692 = !DILocation(line: 541, column: 15, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2466, file: !217, line: 540, column: 15)
!2694 = !DILocation(line: 548, column: 15, scope: !2466)
!2695 = !DILocation(line: 550, column: 19, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !217, line: 549, column: 13)
!2697 = distinct !DILexicalBlock(scope: !2466, file: !217, line: 548, column: 15)
!2698 = !DILocation(line: 553, column: 19, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2696, file: !217, line: 553, column: 19)
!2700 = !DILocation(line: 553, column: 35, scope: !2699)
!2701 = !DILocation(line: 553, column: 30, scope: !2699)
!2702 = !DILocation(line: 562, column: 15, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !217, line: 562, column: 15)
!2704 = distinct !DILexicalBlock(scope: !2696, file: !217, line: 562, column: 15)
!2705 = !DILocation(line: 562, column: 15, scope: !2704)
!2706 = !DILocation(line: 563, column: 15, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !217, line: 563, column: 15)
!2708 = distinct !DILexicalBlock(scope: !2696, file: !217, line: 563, column: 15)
!2709 = !DILocation(line: 563, column: 15, scope: !2708)
!2710 = !DILocation(line: 564, column: 15, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !217, line: 564, column: 15)
!2712 = distinct !DILexicalBlock(scope: !2696, file: !217, line: 564, column: 15)
!2713 = !DILocation(line: 564, column: 15, scope: !2712)
!2714 = !DILocation(line: 566, column: 13, scope: !2696)
!2715 = !DILocation(line: 606, column: 17, scope: !2465)
!2716 = !DILocation(line: 602, column: 20, scope: !2465)
!2717 = !DILocation(line: 609, column: 29, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2470, file: !217, line: 607, column: 15)
!2719 = !DILocation(line: 609, column: 27, scope: !2718)
!2720 = !DILocation(line: 604, column: 18, scope: !2465)
!2721 = !DILocation(line: 610, column: 15, scope: !2718)
!2722 = !DILocation(line: 613, column: 17, scope: !2469)
!2723 = !DILocation(line: 614, column: 17, scope: !2469)
!2724 = !DILocation(line: 618, column: 29, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2469, file: !217, line: 618, column: 21)
!2726 = !DILocation(line: 618, column: 21, scope: !2469)
!2727 = !DILocation(line: 619, column: 29, scope: !2725)
!2728 = !DILocation(line: 619, column: 19, scope: !2725)
!2729 = !DILocation(line: 621, column: 17, scope: !2469)
!2730 = distinct !{!2730, !2729, !2731}
!2731 = !DILocation(line: 667, column: 44, scope: !2469)
!2732 = !DILocation(line: 623, column: 21, scope: !2485)
!2733 = !DILocation(line: 624, column: 56, scope: !2485)
!2734 = !DILocation(line: 624, column: 50, scope: !2485)
!2735 = !DILocation(line: 625, column: 53, scope: !2485)
!2736 = !DILocation(line: 613, column: 27, scope: !2469)
!2737 = !DILocation(line: 623, column: 29, scope: !2485)
!2738 = !DILocation(line: 624, column: 36, scope: !2485)
!2739 = !DILocation(line: 624, column: 28, scope: !2485)
!2740 = !DILocation(line: 626, column: 25, scope: !2485)
!2741 = !DILocation(line: 636, column: 38, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2492, file: !217, line: 634, column: 23)
!2743 = !DILocation(line: 636, column: 48, scope: !2742)
!2744 = !DILocation(line: 636, column: 51, scope: !2742)
!2745 = !DILocation(line: 636, column: 25, scope: !2742)
!2746 = !DILocation(line: 637, column: 28, scope: !2742)
!2747 = !DILocation(line: 636, column: 34, scope: !2742)
!2748 = distinct !{!2748, !2745, !2746}
!2749 = !DILocation(line: 650, column: 43, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !217, line: 650, column: 29)
!2751 = distinct !DILexicalBlock(scope: !2489, file: !217, line: 650, column: 29)
!2752 = !DILocation(line: 647, column: 29, scope: !2490)
!2753 = !DILocation(line: 649, column: 36, scope: !2489)
!2754 = !DILocation(line: 651, column: 49, scope: !2750)
!2755 = !DILocation(line: 651, column: 39, scope: !2750)
!2756 = !DILocation(line: 651, column: 31, scope: !2750)
!2757 = !DILocation(line: 650, column: 53, scope: !2750)
!2758 = !DILocation(line: 650, column: 29, scope: !2751)
!2759 = distinct !{!2759, !2758, !2760}
!2760 = !DILocation(line: 659, column: 33, scope: !2751)
!2761 = !DILocation(line: 666, column: 19, scope: !2469)
!2762 = !DILocation(line: 662, column: 41, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2491, file: !217, line: 662, column: 29)
!2764 = !DILocation(line: 662, column: 31, scope: !2763)
!2765 = !DILocation(line: 662, column: 29, scope: !2491)
!2766 = !DILocation(line: 664, column: 27, scope: !2491)
!2767 = !DILocation(line: 667, column: 26, scope: !2469)
!2768 = !DILocation(line: 667, column: 24, scope: !2469)
!2769 = !DILocation(line: 666, column: 19, scope: !2485)
!2770 = !DILocation(line: 668, column: 15, scope: !2470)
!2771 = !DILocation(line: 670, column: 40, scope: !2465)
!2772 = !DILocation(line: 672, column: 19, scope: !2497)
!2773 = !DILocation(line: 672, column: 45, scope: !2497)
!2774 = !DILocation(line: 672, column: 23, scope: !2497)
!2775 = !DILocation(line: 676, column: 33, scope: !2496)
!2776 = !DILocation(line: 676, column: 24, scope: !2496)
!2777 = !DILocation(line: 678, column: 17, scope: !2496)
!2778 = !DILocation(line: 680, column: 43, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !217, line: 680, column: 25)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !217, line: 679, column: 19)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !217, line: 678, column: 17)
!2782 = distinct !DILexicalBlock(scope: !2496, file: !217, line: 678, column: 17)
!2783 = !DILocation(line: 682, column: 25, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !217, line: 682, column: 25)
!2785 = distinct !DILexicalBlock(scope: !2779, file: !217, line: 681, column: 23)
!2786 = !DILocation(line: 682, column: 25, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2784, file: !217, line: 682, column: 25)
!2788 = !DILocation(line: 682, column: 25, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !217, line: 682, column: 25)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !217, line: 682, column: 25)
!2791 = distinct !DILexicalBlock(scope: !2787, file: !217, line: 682, column: 25)
!2792 = !DILocation(line: 682, column: 25, scope: !2790)
!2793 = !DILocation(line: 682, column: 25, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !217, line: 682, column: 25)
!2795 = distinct !DILexicalBlock(scope: !2791, file: !217, line: 682, column: 25)
!2796 = !DILocation(line: 682, column: 25, scope: !2795)
!2797 = !DILocation(line: 682, column: 25, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !217, line: 682, column: 25)
!2799 = distinct !DILexicalBlock(scope: !2791, file: !217, line: 682, column: 25)
!2800 = !DILocation(line: 682, column: 25, scope: !2799)
!2801 = !DILocation(line: 682, column: 25, scope: !2791)
!2802 = !DILocation(line: 682, column: 25, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !217, line: 682, column: 25)
!2804 = distinct !DILexicalBlock(scope: !2784, file: !217, line: 682, column: 25)
!2805 = !DILocation(line: 682, column: 25, scope: !2804)
!2806 = !DILocation(line: 683, column: 25, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !217, line: 683, column: 25)
!2808 = distinct !DILexicalBlock(scope: !2785, file: !217, line: 683, column: 25)
!2809 = !DILocation(line: 683, column: 25, scope: !2808)
!2810 = !DILocation(line: 684, column: 25, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !217, line: 684, column: 25)
!2812 = distinct !DILexicalBlock(scope: !2785, file: !217, line: 684, column: 25)
!2813 = !DILocation(line: 684, column: 25, scope: !2812)
!2814 = !DILocation(line: 685, column: 38, scope: !2785)
!2815 = !DILocation(line: 685, column: 33, scope: !2785)
!2816 = !DILocation(line: 686, column: 23, scope: !2785)
!2817 = !DILocation(line: 687, column: 30, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2779, file: !217, line: 687, column: 30)
!2819 = !DILocation(line: 687, column: 30, scope: !2779)
!2820 = !DILocation(line: 689, column: 25, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !217, line: 689, column: 25)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !217, line: 689, column: 25)
!2823 = distinct !DILexicalBlock(scope: !2818, file: !217, line: 688, column: 23)
!2824 = !DILocation(line: 689, column: 25, scope: !2822)
!2825 = !DILocation(line: 691, column: 23, scope: !2823)
!2826 = !DILocation(line: 692, column: 35, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2780, file: !217, line: 692, column: 25)
!2828 = !DILocation(line: 692, column: 30, scope: !2827)
!2829 = !DILocation(line: 692, column: 25, scope: !2780)
!2830 = !DILocation(line: 694, column: 21, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !217, line: 694, column: 21)
!2832 = distinct !DILexicalBlock(scope: !2780, file: !217, line: 694, column: 21)
!2833 = !DILocation(line: 694, column: 21, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !217, line: 694, column: 21)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !217, line: 694, column: 21)
!2836 = distinct !DILexicalBlock(scope: !2831, file: !217, line: 694, column: 21)
!2837 = !DILocation(line: 694, column: 21, scope: !2835)
!2838 = !DILocation(line: 694, column: 21, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !217, line: 694, column: 21)
!2840 = distinct !DILexicalBlock(scope: !2836, file: !217, line: 694, column: 21)
!2841 = !DILocation(line: 694, column: 21, scope: !2840)
!2842 = !DILocation(line: 694, column: 21, scope: !2836)
!2843 = !DILocation(line: 695, column: 21, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !217, line: 695, column: 21)
!2845 = distinct !DILexicalBlock(scope: !2780, file: !217, line: 695, column: 21)
!2846 = !DILocation(line: 695, column: 21, scope: !2845)
!2847 = !DILocation(line: 696, column: 25, scope: !2780)
!2848 = !DILocation(line: 678, column: 17, scope: !2781)
!2849 = distinct !{!2849, !2850, !2851}
!2850 = !DILocation(line: 678, column: 17, scope: !2782)
!2851 = !DILocation(line: 697, column: 19, scope: !2782)
!2852 = !DILocation(line: 704, column: 34, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2457, file: !217, line: 704, column: 11)
!2854 = !DILocation(line: 706, column: 14, scope: !2853)
!2855 = !DILocation(line: 707, column: 14, scope: !2853)
!2856 = !DILocation(line: 707, column: 35, scope: !2853)
!2857 = !DILocation(line: 707, column: 17, scope: !2853)
!2858 = !DILocation(line: 707, column: 53, scope: !2853)
!2859 = !DILocation(line: 707, column: 47, scope: !2853)
!2860 = !DILocation(line: 707, column: 65, scope: !2853)
!2861 = !DILocation(line: 708, column: 15, scope: !2853)
!2862 = !DILocation(line: 708, column: 11, scope: !2853)
!2863 = !DILocation(line: 704, column: 11, scope: !2457)
!2864 = !DILocation(line: 712, column: 7, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2457, file: !217, line: 712, column: 7)
!2866 = !DILocation(line: 712, column: 7, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2865, file: !217, line: 712, column: 7)
!2868 = !DILocation(line: 712, column: 7, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !217, line: 712, column: 7)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !217, line: 712, column: 7)
!2871 = distinct !DILexicalBlock(scope: !2867, file: !217, line: 712, column: 7)
!2872 = !DILocation(line: 712, column: 7, scope: !2870)
!2873 = !DILocation(line: 712, column: 7, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !217, line: 712, column: 7)
!2875 = distinct !DILexicalBlock(scope: !2871, file: !217, line: 712, column: 7)
!2876 = !DILocation(line: 712, column: 7, scope: !2875)
!2877 = !DILocation(line: 712, column: 7, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !217, line: 712, column: 7)
!2879 = distinct !DILexicalBlock(scope: !2871, file: !217, line: 712, column: 7)
!2880 = !DILocation(line: 712, column: 7, scope: !2879)
!2881 = !DILocation(line: 712, column: 7, scope: !2871)
!2882 = !DILocation(line: 712, column: 7, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !217, line: 712, column: 7)
!2884 = distinct !DILexicalBlock(scope: !2865, file: !217, line: 712, column: 7)
!2885 = !DILocation(line: 712, column: 7, scope: !2884)
!2886 = !DILocation(line: 715, column: 7, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !217, line: 715, column: 7)
!2888 = distinct !DILexicalBlock(scope: !2457, file: !217, line: 715, column: 7)
!2889 = !DILocation(line: 715, column: 7, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !217, line: 715, column: 7)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !217, line: 715, column: 7)
!2892 = distinct !DILexicalBlock(scope: !2887, file: !217, line: 715, column: 7)
!2893 = !DILocation(line: 715, column: 7, scope: !2891)
!2894 = !DILocation(line: 715, column: 7, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !217, line: 715, column: 7)
!2896 = distinct !DILexicalBlock(scope: !2892, file: !217, line: 715, column: 7)
!2897 = !DILocation(line: 715, column: 7, scope: !2896)
!2898 = !DILocation(line: 715, column: 7, scope: !2892)
!2899 = !DILocation(line: 716, column: 7, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !217, line: 716, column: 7)
!2901 = distinct !DILexicalBlock(scope: !2457, file: !217, line: 716, column: 7)
!2902 = !DILocation(line: 716, column: 7, scope: !2901)
!2903 = !DILocation(line: 718, column: 13, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2457, file: !217, line: 718, column: 11)
!2905 = !DILocation(line: 718, column: 11, scope: !2457)
!2906 = !DILocation(line: 720, column: 5, scope: !2458)
!2907 = !DILocation(line: 392, column: 75, scope: !2458)
!2908 = !DILocation(line: 392, column: 3, scope: !2458)
!2909 = distinct !{!2909, !2569, !2910}
!2910 = !DILocation(line: 720, column: 5, scope: !2459)
!2911 = !DILocation(line: 722, column: 11, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2430, file: !217, line: 722, column: 7)
!2913 = !DILocation(line: 722, column: 16, scope: !2912)
!2914 = !DILocation(line: 730, column: 51, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2430, file: !217, line: 730, column: 7)
!2916 = !DILocation(line: 731, column: 10, scope: !2915)
!2917 = !DILocation(line: 733, column: 11, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !217, line: 733, column: 11)
!2919 = distinct !DILexicalBlock(scope: !2915, file: !217, line: 732, column: 5)
!2920 = !DILocation(line: 733, column: 11, scope: !2919)
!2921 = !DILocation(line: 734, column: 16, scope: !2918)
!2922 = !DILocation(line: 734, column: 9, scope: !2918)
!2923 = !DILocation(line: 738, column: 18, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2918, file: !217, line: 738, column: 16)
!2925 = !DILocation(line: 738, column: 32, scope: !2924)
!2926 = !DILocation(line: 738, column: 29, scope: !2924)
!2927 = !DILocation(line: 747, column: 7, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2430, file: !217, line: 747, column: 7)
!2929 = !DILocation(line: 747, column: 20, scope: !2928)
!2930 = !DILocation(line: 748, column: 12, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !217, line: 748, column: 5)
!2932 = distinct !DILexicalBlock(scope: !2928, file: !217, line: 748, column: 5)
!2933 = !DILocation(line: 748, column: 5, scope: !2932)
!2934 = !DILocation(line: 749, column: 7, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !217, line: 749, column: 7)
!2936 = distinct !DILexicalBlock(scope: !2931, file: !217, line: 749, column: 7)
!2937 = !DILocation(line: 749, column: 7, scope: !2936)
!2938 = !DILocation(line: 748, column: 39, scope: !2931)
!2939 = distinct !{!2939, !2933, !2940}
!2940 = !DILocation(line: 749, column: 7, scope: !2932)
!2941 = !DILocation(line: 751, column: 11, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2430, file: !217, line: 751, column: 7)
!2943 = !DILocation(line: 751, column: 7, scope: !2430)
!2944 = !DILocation(line: 752, column: 5, scope: !2942)
!2945 = !DILocation(line: 752, column: 17, scope: !2942)
!2946 = !DILocation(line: 758, column: 21, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2430, file: !217, line: 758, column: 7)
!2948 = !DILocation(line: 758, column: 54, scope: !2947)
!2949 = !DILocation(line: 758, column: 51, scope: !2947)
!2950 = !DILocation(line: 762, column: 42, scope: !2430)
!2951 = !DILocation(line: 760, column: 10, scope: !2430)
!2952 = !DILocation(line: 760, column: 3, scope: !2430)
!2953 = !DILocation(line: 764, column: 1, scope: !2430)
!2954 = distinct !DISubprogram(name: "gettext_quote", scope: !217, file: !217, line: 199, type: !2955, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!78, !78, !34}
!2957 = !{!2958, !2959, !2960, !2961}
!2958 = !DILocalVariable(name: "msgid", arg: 1, scope: !2954, file: !217, line: 199, type: !78)
!2959 = !DILocalVariable(name: "s", arg: 2, scope: !2954, file: !217, line: 199, type: !34)
!2960 = !DILocalVariable(name: "translation", scope: !2954, file: !217, line: 201, type: !78)
!2961 = !DILocalVariable(name: "locale_code", scope: !2954, file: !217, line: 202, type: !78)
!2962 = !DILocation(line: 199, column: 28, scope: !2954)
!2963 = !DILocation(line: 199, column: 54, scope: !2954)
!2964 = !DILocation(line: 201, column: 29, scope: !2954)
!2965 = !DILocation(line: 201, column: 15, scope: !2954)
!2966 = !DILocation(line: 204, column: 19, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2954, file: !217, line: 204, column: 7)
!2968 = !DILocation(line: 204, column: 7, scope: !2954)
!2969 = !DILocation(line: 225, column: 17, scope: !2954)
!2970 = !DILocation(line: 202, column: 15, scope: !2954)
!2971 = !DILocalVariable(name: "s2", arg: 2, scope: !2972, file: !2973, line: 160, type: !78)
!2972 = distinct !DISubprogram(name: "strcaseeq0", scope: !2973, file: !2973, line: 160, type: !2974, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !2976)
!2973 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!82, !78, !78, !80, !80, !80, !80, !80, !80, !80, !80, !80}
!2976 = !{!2977, !2971, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986}
!2977 = !DILocalVariable(name: "s1", arg: 1, scope: !2972, file: !2973, line: 160, type: !78)
!2978 = !DILocalVariable(name: "s20", arg: 3, scope: !2972, file: !2973, line: 160, type: !80)
!2979 = !DILocalVariable(name: "s21", arg: 4, scope: !2972, file: !2973, line: 160, type: !80)
!2980 = !DILocalVariable(name: "s22", arg: 5, scope: !2972, file: !2973, line: 160, type: !80)
!2981 = !DILocalVariable(name: "s23", arg: 6, scope: !2972, file: !2973, line: 160, type: !80)
!2982 = !DILocalVariable(name: "s24", arg: 7, scope: !2972, file: !2973, line: 160, type: !80)
!2983 = !DILocalVariable(name: "s25", arg: 8, scope: !2972, file: !2973, line: 160, type: !80)
!2984 = !DILocalVariable(name: "s26", arg: 9, scope: !2972, file: !2973, line: 160, type: !80)
!2985 = !DILocalVariable(name: "s27", arg: 10, scope: !2972, file: !2973, line: 160, type: !80)
!2986 = !DILocalVariable(name: "s28", arg: 11, scope: !2972, file: !2973, line: 160, type: !80)
!2987 = !DILocation(line: 160, column: 41, scope: !2972, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 226, column: 7, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2954, file: !217, line: 226, column: 7)
!2990 = !DILocation(line: 160, column: 120, scope: !2972, inlinedAt: !2988)
!2991 = !DILocation(line: 160, column: 130, scope: !2972, inlinedAt: !2988)
!2992 = !DILocation(line: 162, column: 7, scope: !2993, inlinedAt: !2988)
!2993 = distinct !DILexicalBlock(scope: !2972, file: !2973, line: 162, column: 7)
!2994 = !DILocalVariable(name: "s2", arg: 2, scope: !2995, file: !2973, line: 146, type: !78)
!2995 = distinct !DISubprogram(name: "strcaseeq1", scope: !2973, file: !2973, line: 146, type: !2996, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !2998)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!82, !78, !78, !80, !80, !80, !80, !80, !80, !80, !80}
!2998 = !{!2999, !2994, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007}
!2999 = !DILocalVariable(name: "s1", arg: 1, scope: !2995, file: !2973, line: 146, type: !78)
!3000 = !DILocalVariable(name: "s21", arg: 3, scope: !2995, file: !2973, line: 146, type: !80)
!3001 = !DILocalVariable(name: "s22", arg: 4, scope: !2995, file: !2973, line: 146, type: !80)
!3002 = !DILocalVariable(name: "s23", arg: 5, scope: !2995, file: !2973, line: 146, type: !80)
!3003 = !DILocalVariable(name: "s24", arg: 6, scope: !2995, file: !2973, line: 146, type: !80)
!3004 = !DILocalVariable(name: "s25", arg: 7, scope: !2995, file: !2973, line: 146, type: !80)
!3005 = !DILocalVariable(name: "s26", arg: 8, scope: !2995, file: !2973, line: 146, type: !80)
!3006 = !DILocalVariable(name: "s27", arg: 9, scope: !2995, file: !2973, line: 146, type: !80)
!3007 = !DILocalVariable(name: "s28", arg: 10, scope: !2995, file: !2973, line: 146, type: !80)
!3008 = !DILocation(line: 146, column: 41, scope: !2995, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 167, column: 16, scope: !3010, inlinedAt: !2988)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !2973, line: 164, column: 11)
!3011 = distinct !DILexicalBlock(scope: !2993, file: !2973, line: 163, column: 5)
!3012 = !DILocation(line: 146, column: 110, scope: !2995, inlinedAt: !3009)
!3013 = !DILocation(line: 146, column: 120, scope: !2995, inlinedAt: !3009)
!3014 = !DILocation(line: 148, column: 7, scope: !3015, inlinedAt: !3009)
!3015 = distinct !DILexicalBlock(scope: !2995, file: !2973, line: 148, column: 7)
!3016 = !DILocalVariable(name: "s2", arg: 2, scope: !3017, file: !2973, line: 132, type: !78)
!3017 = distinct !DISubprogram(name: "strcaseeq2", scope: !2973, file: !2973, line: 132, type: !3018, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!82, !78, !78, !80, !80, !80, !80, !80, !80, !80}
!3020 = !{!3021, !3016, !3022, !3023, !3024, !3025, !3026, !3027, !3028}
!3021 = !DILocalVariable(name: "s1", arg: 1, scope: !3017, file: !2973, line: 132, type: !78)
!3022 = !DILocalVariable(name: "s22", arg: 3, scope: !3017, file: !2973, line: 132, type: !80)
!3023 = !DILocalVariable(name: "s23", arg: 4, scope: !3017, file: !2973, line: 132, type: !80)
!3024 = !DILocalVariable(name: "s24", arg: 5, scope: !3017, file: !2973, line: 132, type: !80)
!3025 = !DILocalVariable(name: "s25", arg: 6, scope: !3017, file: !2973, line: 132, type: !80)
!3026 = !DILocalVariable(name: "s26", arg: 7, scope: !3017, file: !2973, line: 132, type: !80)
!3027 = !DILocalVariable(name: "s27", arg: 8, scope: !3017, file: !2973, line: 132, type: !80)
!3028 = !DILocalVariable(name: "s28", arg: 9, scope: !3017, file: !2973, line: 132, type: !80)
!3029 = !DILocation(line: 132, column: 41, scope: !3017, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 153, column: 16, scope: !3031, inlinedAt: !3009)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !2973, line: 150, column: 11)
!3032 = distinct !DILexicalBlock(scope: !3015, file: !2973, line: 149, column: 5)
!3033 = !DILocation(line: 132, column: 100, scope: !3017, inlinedAt: !3030)
!3034 = !DILocation(line: 132, column: 110, scope: !3017, inlinedAt: !3030)
!3035 = !DILocation(line: 134, column: 7, scope: !3036, inlinedAt: !3030)
!3036 = distinct !DILexicalBlock(scope: !3017, file: !2973, line: 134, column: 7)
!3037 = !DILocalVariable(name: "s2", arg: 2, scope: !3038, file: !2973, line: 118, type: !78)
!3038 = distinct !DISubprogram(name: "strcaseeq3", scope: !2973, file: !2973, line: 118, type: !3039, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!82, !78, !78, !80, !80, !80, !80, !80, !80}
!3041 = !{!3042, !3037, !3043, !3044, !3045, !3046, !3047, !3048}
!3042 = !DILocalVariable(name: "s1", arg: 1, scope: !3038, file: !2973, line: 118, type: !78)
!3043 = !DILocalVariable(name: "s23", arg: 3, scope: !3038, file: !2973, line: 118, type: !80)
!3044 = !DILocalVariable(name: "s24", arg: 4, scope: !3038, file: !2973, line: 118, type: !80)
!3045 = !DILocalVariable(name: "s25", arg: 5, scope: !3038, file: !2973, line: 118, type: !80)
!3046 = !DILocalVariable(name: "s26", arg: 6, scope: !3038, file: !2973, line: 118, type: !80)
!3047 = !DILocalVariable(name: "s27", arg: 7, scope: !3038, file: !2973, line: 118, type: !80)
!3048 = !DILocalVariable(name: "s28", arg: 8, scope: !3038, file: !2973, line: 118, type: !80)
!3049 = !DILocation(line: 118, column: 41, scope: !3038, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 139, column: 16, scope: !3051, inlinedAt: !3030)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !2973, line: 136, column: 11)
!3052 = distinct !DILexicalBlock(scope: !3036, file: !2973, line: 135, column: 5)
!3053 = !DILocation(line: 118, column: 90, scope: !3038, inlinedAt: !3050)
!3054 = !DILocation(line: 118, column: 100, scope: !3038, inlinedAt: !3050)
!3055 = !DILocation(line: 120, column: 7, scope: !3056, inlinedAt: !3050)
!3056 = distinct !DILexicalBlock(scope: !3038, file: !2973, line: 120, column: 7)
!3057 = !DILocation(line: 120, column: 7, scope: !3038, inlinedAt: !3050)
!3058 = !DILocalVariable(name: "s2", arg: 2, scope: !3059, file: !2973, line: 104, type: !78)
!3059 = distinct !DISubprogram(name: "strcaseeq4", scope: !2973, file: !2973, line: 104, type: !3060, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3062)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!82, !78, !78, !80, !80, !80, !80, !80}
!3062 = !{!3063, !3058, !3064, !3065, !3066, !3067, !3068}
!3063 = !DILocalVariable(name: "s1", arg: 1, scope: !3059, file: !2973, line: 104, type: !78)
!3064 = !DILocalVariable(name: "s24", arg: 3, scope: !3059, file: !2973, line: 104, type: !80)
!3065 = !DILocalVariable(name: "s25", arg: 4, scope: !3059, file: !2973, line: 104, type: !80)
!3066 = !DILocalVariable(name: "s26", arg: 5, scope: !3059, file: !2973, line: 104, type: !80)
!3067 = !DILocalVariable(name: "s27", arg: 6, scope: !3059, file: !2973, line: 104, type: !80)
!3068 = !DILocalVariable(name: "s28", arg: 7, scope: !3059, file: !2973, line: 104, type: !80)
!3069 = !DILocation(line: 104, column: 41, scope: !3059, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 125, column: 16, scope: !3071, inlinedAt: !3050)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !2973, line: 122, column: 11)
!3072 = distinct !DILexicalBlock(scope: !3056, file: !2973, line: 121, column: 5)
!3073 = !DILocation(line: 104, column: 80, scope: !3059, inlinedAt: !3070)
!3074 = !DILocation(line: 104, column: 90, scope: !3059, inlinedAt: !3070)
!3075 = !DILocation(line: 106, column: 7, scope: !3076, inlinedAt: !3070)
!3076 = distinct !DILexicalBlock(scope: !3059, file: !2973, line: 106, column: 7)
!3077 = !DILocation(line: 106, column: 7, scope: !3059, inlinedAt: !3070)
!3078 = !DILocalVariable(name: "s2", arg: 2, scope: !3079, file: !2973, line: 90, type: !78)
!3079 = distinct !DISubprogram(name: "strcaseeq5", scope: !2973, file: !2973, line: 90, type: !3080, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3082)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!82, !78, !78, !80, !80, !80, !80}
!3082 = !{!3083, !3078, !3084, !3085, !3086, !3087}
!3083 = !DILocalVariable(name: "s1", arg: 1, scope: !3079, file: !2973, line: 90, type: !78)
!3084 = !DILocalVariable(name: "s25", arg: 3, scope: !3079, file: !2973, line: 90, type: !80)
!3085 = !DILocalVariable(name: "s26", arg: 4, scope: !3079, file: !2973, line: 90, type: !80)
!3086 = !DILocalVariable(name: "s27", arg: 5, scope: !3079, file: !2973, line: 90, type: !80)
!3087 = !DILocalVariable(name: "s28", arg: 6, scope: !3079, file: !2973, line: 90, type: !80)
!3088 = !DILocation(line: 90, column: 41, scope: !3079, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 111, column: 16, scope: !3090, inlinedAt: !3070)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !2973, line: 108, column: 11)
!3091 = distinct !DILexicalBlock(scope: !3076, file: !2973, line: 107, column: 5)
!3092 = !DILocation(line: 90, column: 70, scope: !3079, inlinedAt: !3089)
!3093 = !DILocation(line: 90, column: 80, scope: !3079, inlinedAt: !3089)
!3094 = !DILocation(line: 92, column: 7, scope: !3095, inlinedAt: !3089)
!3095 = distinct !DILexicalBlock(scope: !3079, file: !2973, line: 92, column: 7)
!3096 = !DILocation(line: 92, column: 7, scope: !3079, inlinedAt: !3089)
!3097 = !DILocation(line: 227, column: 12, scope: !2989)
!3098 = !DILocation(line: 227, column: 21, scope: !2989)
!3099 = !DILocation(line: 227, column: 5, scope: !2989)
!3100 = !DILocation(line: 146, column: 41, scope: !2995, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 167, column: 16, scope: !3010, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 228, column: 7, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !2954, file: !217, line: 228, column: 7)
!3104 = !DILocation(line: 146, column: 110, scope: !2995, inlinedAt: !3101)
!3105 = !DILocation(line: 146, column: 120, scope: !2995, inlinedAt: !3101)
!3106 = !DILocation(line: 148, column: 7, scope: !3015, inlinedAt: !3101)
!3107 = !DILocation(line: 132, column: 41, scope: !3017, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 153, column: 16, scope: !3031, inlinedAt: !3101)
!3109 = !DILocation(line: 132, column: 100, scope: !3017, inlinedAt: !3108)
!3110 = !DILocation(line: 132, column: 110, scope: !3017, inlinedAt: !3108)
!3111 = !DILocation(line: 134, column: 7, scope: !3036, inlinedAt: !3108)
!3112 = !DILocation(line: 134, column: 7, scope: !3017, inlinedAt: !3108)
!3113 = !DILocation(line: 118, column: 41, scope: !3038, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 139, column: 16, scope: !3051, inlinedAt: !3108)
!3115 = !DILocation(line: 118, column: 90, scope: !3038, inlinedAt: !3114)
!3116 = !DILocation(line: 118, column: 100, scope: !3038, inlinedAt: !3114)
!3117 = !DILocation(line: 120, column: 7, scope: !3056, inlinedAt: !3114)
!3118 = !DILocation(line: 120, column: 7, scope: !3038, inlinedAt: !3114)
!3119 = !DILocation(line: 104, column: 41, scope: !3059, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 125, column: 16, scope: !3071, inlinedAt: !3114)
!3121 = !DILocation(line: 104, column: 80, scope: !3059, inlinedAt: !3120)
!3122 = !DILocation(line: 104, column: 90, scope: !3059, inlinedAt: !3120)
!3123 = !DILocation(line: 106, column: 7, scope: !3076, inlinedAt: !3120)
!3124 = !DILocation(line: 106, column: 7, scope: !3059, inlinedAt: !3120)
!3125 = !DILocation(line: 90, column: 41, scope: !3079, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 111, column: 16, scope: !3090, inlinedAt: !3120)
!3127 = !DILocation(line: 90, column: 70, scope: !3079, inlinedAt: !3126)
!3128 = !DILocation(line: 90, column: 80, scope: !3079, inlinedAt: !3126)
!3129 = !DILocation(line: 92, column: 7, scope: !3095, inlinedAt: !3126)
!3130 = !DILocation(line: 92, column: 7, scope: !3079, inlinedAt: !3126)
!3131 = !DILocalVariable(name: "s2", arg: 2, scope: !3132, file: !2973, line: 76, type: !78)
!3132 = distinct !DISubprogram(name: "strcaseeq6", scope: !2973, file: !2973, line: 76, type: !3133, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3135)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!82, !78, !78, !80, !80, !80}
!3135 = !{!3136, !3131, !3137, !3138, !3139}
!3136 = !DILocalVariable(name: "s1", arg: 1, scope: !3132, file: !2973, line: 76, type: !78)
!3137 = !DILocalVariable(name: "s26", arg: 3, scope: !3132, file: !2973, line: 76, type: !80)
!3138 = !DILocalVariable(name: "s27", arg: 4, scope: !3132, file: !2973, line: 76, type: !80)
!3139 = !DILocalVariable(name: "s28", arg: 5, scope: !3132, file: !2973, line: 76, type: !80)
!3140 = !DILocation(line: 76, column: 41, scope: !3132, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 97, column: 16, scope: !3142, inlinedAt: !3126)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !2973, line: 94, column: 11)
!3143 = distinct !DILexicalBlock(scope: !3095, file: !2973, line: 93, column: 5)
!3144 = !DILocation(line: 76, column: 60, scope: !3132, inlinedAt: !3141)
!3145 = !DILocation(line: 76, column: 70, scope: !3132, inlinedAt: !3141)
!3146 = !DILocation(line: 78, column: 7, scope: !3147, inlinedAt: !3141)
!3147 = distinct !DILexicalBlock(scope: !3132, file: !2973, line: 78, column: 7)
!3148 = !DILocation(line: 78, column: 7, scope: !3132, inlinedAt: !3141)
!3149 = !DILocalVariable(name: "s2", arg: 2, scope: !3150, file: !2973, line: 62, type: !78)
!3150 = distinct !DISubprogram(name: "strcaseeq7", scope: !2973, file: !2973, line: 62, type: !3151, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!82, !78, !78, !80, !80}
!3153 = !{!3154, !3149, !3155, !3156}
!3154 = !DILocalVariable(name: "s1", arg: 1, scope: !3150, file: !2973, line: 62, type: !78)
!3155 = !DILocalVariable(name: "s27", arg: 3, scope: !3150, file: !2973, line: 62, type: !80)
!3156 = !DILocalVariable(name: "s28", arg: 4, scope: !3150, file: !2973, line: 62, type: !80)
!3157 = !DILocation(line: 62, column: 41, scope: !3150, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 83, column: 16, scope: !3159, inlinedAt: !3141)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !2973, line: 80, column: 11)
!3160 = distinct !DILexicalBlock(scope: !3147, file: !2973, line: 79, column: 5)
!3161 = !DILocation(line: 62, column: 50, scope: !3150, inlinedAt: !3158)
!3162 = !DILocation(line: 62, column: 60, scope: !3150, inlinedAt: !3158)
!3163 = !DILocation(line: 64, column: 7, scope: !3164, inlinedAt: !3158)
!3164 = distinct !DILexicalBlock(scope: !3150, file: !2973, line: 64, column: 7)
!3165 = !DILocation(line: 228, column: 7, scope: !2954)
!3166 = !DILocation(line: 229, column: 12, scope: !3103)
!3167 = !DILocation(line: 229, column: 21, scope: !3103)
!3168 = !DILocation(line: 229, column: 5, scope: !3103)
!3169 = !DILocation(line: 231, column: 13, scope: !2954)
!3170 = !DILocation(line: 231, column: 11, scope: !2954)
!3171 = !DILocation(line: 231, column: 3, scope: !2954)
!3172 = !DILocation(line: 232, column: 1, scope: !2954)
!3173 = distinct !DISubprogram(name: "quotearg_alloc", scope: !217, file: !217, line: 791, type: !3174, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3176)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!81, !78, !75, !2302}
!3176 = !{!3177, !3178, !3179}
!3177 = !DILocalVariable(name: "arg", arg: 1, scope: !3173, file: !217, line: 791, type: !78)
!3178 = !DILocalVariable(name: "argsize", arg: 2, scope: !3173, file: !217, line: 791, type: !75)
!3179 = !DILocalVariable(name: "o", arg: 3, scope: !3173, file: !217, line: 792, type: !2302)
!3180 = !DILocation(line: 791, column: 29, scope: !3173)
!3181 = !DILocation(line: 791, column: 41, scope: !3173)
!3182 = !DILocation(line: 792, column: 47, scope: !3173)
!3183 = !DILocalVariable(name: "arg", arg: 1, scope: !3184, file: !217, line: 804, type: !78)
!3184 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !217, file: !217, line: 804, type: !3185, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3187)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!81, !78, !75, !74, !2302}
!3187 = !{!3183, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195}
!3188 = !DILocalVariable(name: "argsize", arg: 2, scope: !3184, file: !217, line: 804, type: !75)
!3189 = !DILocalVariable(name: "size", arg: 3, scope: !3184, file: !217, line: 804, type: !74)
!3190 = !DILocalVariable(name: "o", arg: 4, scope: !3184, file: !217, line: 805, type: !2302)
!3191 = !DILocalVariable(name: "p", scope: !3184, file: !217, line: 807, type: !2302)
!3192 = !DILocalVariable(name: "e", scope: !3184, file: !217, line: 808, type: !82)
!3193 = !DILocalVariable(name: "flags", scope: !3184, file: !217, line: 810, type: !82)
!3194 = !DILocalVariable(name: "bufsize", scope: !3184, file: !217, line: 811, type: !75)
!3195 = !DILocalVariable(name: "buf", scope: !3184, file: !217, line: 815, type: !81)
!3196 = !DILocation(line: 804, column: 33, scope: !3184, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 794, column: 10, scope: !3173)
!3198 = !DILocation(line: 804, column: 45, scope: !3184, inlinedAt: !3197)
!3199 = !DILocation(line: 804, column: 62, scope: !3184, inlinedAt: !3197)
!3200 = !DILocation(line: 805, column: 51, scope: !3184, inlinedAt: !3197)
!3201 = !DILocation(line: 807, column: 37, scope: !3184, inlinedAt: !3197)
!3202 = !DILocation(line: 807, column: 33, scope: !3184, inlinedAt: !3197)
!3203 = !DILocation(line: 808, column: 11, scope: !3184, inlinedAt: !3197)
!3204 = !DILocation(line: 808, column: 7, scope: !3184, inlinedAt: !3197)
!3205 = !DILocation(line: 810, column: 18, scope: !3184, inlinedAt: !3197)
!3206 = !DILocation(line: 810, column: 24, scope: !3184, inlinedAt: !3197)
!3207 = !DILocation(line: 810, column: 7, scope: !3184, inlinedAt: !3197)
!3208 = !DILocation(line: 811, column: 69, scope: !3184, inlinedAt: !3197)
!3209 = !DILocation(line: 812, column: 53, scope: !3184, inlinedAt: !3197)
!3210 = !DILocation(line: 813, column: 49, scope: !3184, inlinedAt: !3197)
!3211 = !DILocation(line: 814, column: 49, scope: !3184, inlinedAt: !3197)
!3212 = !DILocation(line: 811, column: 20, scope: !3184, inlinedAt: !3197)
!3213 = !DILocation(line: 814, column: 62, scope: !3184, inlinedAt: !3197)
!3214 = !DILocation(line: 811, column: 10, scope: !3184, inlinedAt: !3197)
!3215 = !DILocalVariable(name: "n", arg: 1, scope: !3216, file: !640, line: 220, type: !75)
!3216 = distinct !DISubprogram(name: "xcharalloc", scope: !640, file: !640, line: 220, type: !3217, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3219)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!81, !75}
!3219 = !{!3215}
!3220 = !DILocation(line: 220, column: 20, scope: !3216, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 815, column: 15, scope: !3184, inlinedAt: !3197)
!3222 = !DILocation(line: 222, column: 10, scope: !3216, inlinedAt: !3221)
!3223 = !DILocation(line: 815, column: 9, scope: !3184, inlinedAt: !3197)
!3224 = !DILocation(line: 816, column: 60, scope: !3184, inlinedAt: !3197)
!3225 = !DILocation(line: 818, column: 32, scope: !3184, inlinedAt: !3197)
!3226 = !DILocation(line: 818, column: 47, scope: !3184, inlinedAt: !3197)
!3227 = !DILocation(line: 816, column: 3, scope: !3184, inlinedAt: !3197)
!3228 = !DILocation(line: 819, column: 9, scope: !3184, inlinedAt: !3197)
!3229 = !DILocation(line: 794, column: 3, scope: !3173)
!3230 = !DILocation(line: 804, column: 33, scope: !3184)
!3231 = !DILocation(line: 804, column: 45, scope: !3184)
!3232 = !DILocation(line: 804, column: 62, scope: !3184)
!3233 = !DILocation(line: 805, column: 51, scope: !3184)
!3234 = !DILocation(line: 807, column: 37, scope: !3184)
!3235 = !DILocation(line: 807, column: 33, scope: !3184)
!3236 = !DILocation(line: 808, column: 11, scope: !3184)
!3237 = !DILocation(line: 808, column: 7, scope: !3184)
!3238 = !DILocation(line: 810, column: 18, scope: !3184)
!3239 = !DILocation(line: 810, column: 27, scope: !3184)
!3240 = !DILocation(line: 810, column: 24, scope: !3184)
!3241 = !DILocation(line: 810, column: 7, scope: !3184)
!3242 = !DILocation(line: 811, column: 69, scope: !3184)
!3243 = !DILocation(line: 812, column: 53, scope: !3184)
!3244 = !DILocation(line: 813, column: 49, scope: !3184)
!3245 = !DILocation(line: 814, column: 49, scope: !3184)
!3246 = !DILocation(line: 811, column: 20, scope: !3184)
!3247 = !DILocation(line: 814, column: 62, scope: !3184)
!3248 = !DILocation(line: 811, column: 10, scope: !3184)
!3249 = !DILocation(line: 220, column: 20, scope: !3216, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 815, column: 15, scope: !3184)
!3251 = !DILocation(line: 222, column: 10, scope: !3216, inlinedAt: !3250)
!3252 = !DILocation(line: 815, column: 9, scope: !3184)
!3253 = !DILocation(line: 816, column: 60, scope: !3184)
!3254 = !DILocation(line: 818, column: 32, scope: !3184)
!3255 = !DILocation(line: 818, column: 47, scope: !3184)
!3256 = !DILocation(line: 816, column: 3, scope: !3184)
!3257 = !DILocation(line: 819, column: 9, scope: !3184)
!3258 = !DILocation(line: 820, column: 7, scope: !3184)
!3259 = !DILocation(line: 821, column: 11, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3184, file: !217, line: 820, column: 7)
!3261 = !DILocation(line: 821, column: 5, scope: !3260)
!3262 = !DILocation(line: 822, column: 3, scope: !3184)
!3263 = distinct !DISubprogram(name: "quotearg_free", scope: !217, file: !217, line: 840, type: !179, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3264)
!3264 = !{!3265, !3266}
!3265 = !DILocalVariable(name: "sv", scope: !3263, file: !217, line: 842, type: !244)
!3266 = !DILocalVariable(name: "i", scope: !3263, file: !217, line: 843, type: !82)
!3267 = !DILocation(line: 842, column: 24, scope: !3263)
!3268 = !DILocation(line: 842, column: 19, scope: !3263)
!3269 = !DILocation(line: 843, column: 7, scope: !3263)
!3270 = !DILocation(line: 844, column: 19, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !217, line: 844, column: 3)
!3272 = distinct !DILexicalBlock(scope: !3263, file: !217, line: 844, column: 3)
!3273 = !DILocation(line: 844, column: 17, scope: !3271)
!3274 = !DILocation(line: 844, column: 3, scope: !3272)
!3275 = !DILocation(line: 845, column: 17, scope: !3271)
!3276 = !{!3277, !694, i64 8}
!3277 = !{!"slotvec", !778, i64 0, !694, i64 8}
!3278 = !DILocation(line: 845, column: 5, scope: !3271)
!3279 = !DILocation(line: 844, column: 28, scope: !3271)
!3280 = distinct !{!3280, !3274, !3281}
!3281 = !DILocation(line: 845, column: 20, scope: !3272)
!3282 = !DILocation(line: 846, column: 13, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3263, file: !217, line: 846, column: 7)
!3284 = !DILocation(line: 846, column: 17, scope: !3283)
!3285 = !DILocation(line: 846, column: 7, scope: !3263)
!3286 = !DILocation(line: 848, column: 7, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3283, file: !217, line: 847, column: 5)
!3288 = !DILocation(line: 849, column: 21, scope: !3287)
!3289 = !{!3277, !778, i64 0}
!3290 = !DILocation(line: 850, column: 20, scope: !3287)
!3291 = !DILocation(line: 851, column: 5, scope: !3287)
!3292 = !DILocation(line: 852, column: 10, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3263, file: !217, line: 852, column: 7)
!3294 = !DILocation(line: 852, column: 7, scope: !3263)
!3295 = !DILocation(line: 854, column: 13, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3293, file: !217, line: 853, column: 5)
!3297 = !DILocation(line: 854, column: 7, scope: !3296)
!3298 = !DILocation(line: 855, column: 15, scope: !3296)
!3299 = !DILocation(line: 856, column: 5, scope: !3296)
!3300 = !DILocation(line: 857, column: 10, scope: !3263)
!3301 = !DILocation(line: 858, column: 1, scope: !3263)
!3302 = distinct !DISubprogram(name: "quotearg_n", scope: !217, file: !217, line: 922, type: !3303, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!81, !82, !78}
!3305 = !{!3306, !3307}
!3306 = !DILocalVariable(name: "n", arg: 1, scope: !3302, file: !217, line: 922, type: !82)
!3307 = !DILocalVariable(name: "arg", arg: 2, scope: !3302, file: !217, line: 922, type: !78)
!3308 = !DILocation(line: 922, column: 17, scope: !3302)
!3309 = !DILocation(line: 922, column: 32, scope: !3302)
!3310 = !DILocation(line: 924, column: 10, scope: !3302)
!3311 = !DILocation(line: 924, column: 3, scope: !3302)
!3312 = distinct !DISubprogram(name: "quotearg_n_options", scope: !217, file: !217, line: 869, type: !3313, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3315)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!81, !82, !78, !75, !2302}
!3315 = !{!3316, !3317, !3318, !3319, !3320, !3321, !3322, !3325, !3327, !3328, !3329}
!3316 = !DILocalVariable(name: "n", arg: 1, scope: !3312, file: !217, line: 869, type: !82)
!3317 = !DILocalVariable(name: "arg", arg: 2, scope: !3312, file: !217, line: 869, type: !78)
!3318 = !DILocalVariable(name: "argsize", arg: 3, scope: !3312, file: !217, line: 869, type: !75)
!3319 = !DILocalVariable(name: "options", arg: 4, scope: !3312, file: !217, line: 870, type: !2302)
!3320 = !DILocalVariable(name: "e", scope: !3312, file: !217, line: 872, type: !82)
!3321 = !DILocalVariable(name: "sv", scope: !3312, file: !217, line: 874, type: !244)
!3322 = !DILocalVariable(name: "preallocated", scope: !3323, file: !217, line: 881, type: !96)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !217, line: 880, column: 5)
!3324 = distinct !DILexicalBlock(scope: !3312, file: !217, line: 879, column: 7)
!3325 = !DILocalVariable(name: "size", scope: !3326, file: !217, line: 894, type: !75)
!3326 = distinct !DILexicalBlock(scope: !3312, file: !217, line: 893, column: 3)
!3327 = !DILocalVariable(name: "val", scope: !3326, file: !217, line: 895, type: !81)
!3328 = !DILocalVariable(name: "flags", scope: !3326, file: !217, line: 897, type: !82)
!3329 = !DILocalVariable(name: "qsize", scope: !3326, file: !217, line: 898, type: !75)
!3330 = !DILocation(line: 869, column: 25, scope: !3312)
!3331 = !DILocation(line: 869, column: 40, scope: !3312)
!3332 = !DILocation(line: 869, column: 52, scope: !3312)
!3333 = !DILocation(line: 870, column: 51, scope: !3312)
!3334 = !DILocation(line: 872, column: 11, scope: !3312)
!3335 = !DILocation(line: 872, column: 7, scope: !3312)
!3336 = !DILocation(line: 874, column: 24, scope: !3312)
!3337 = !DILocation(line: 874, column: 19, scope: !3312)
!3338 = !DILocation(line: 876, column: 9, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3312, file: !217, line: 876, column: 7)
!3340 = !DILocation(line: 876, column: 7, scope: !3312)
!3341 = !DILocation(line: 877, column: 5, scope: !3339)
!3342 = !DILocation(line: 879, column: 7, scope: !3324)
!3343 = !DILocation(line: 879, column: 14, scope: !3324)
!3344 = !DILocation(line: 879, column: 7, scope: !3312)
!3345 = !DILocation(line: 881, column: 31, scope: !3323)
!3346 = !DILocation(line: 883, column: 67, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3323, file: !217, line: 883, column: 11)
!3348 = !DILocation(line: 883, column: 11, scope: !3323)
!3349 = !DILocation(line: 884, column: 9, scope: !3347)
!3350 = !DILocation(line: 886, column: 32, scope: !3323)
!3351 = !DILocation(line: 886, column: 61, scope: !3323)
!3352 = !DILocation(line: 886, column: 58, scope: !3323)
!3353 = !DILocation(line: 886, column: 66, scope: !3323)
!3354 = !DILocation(line: 886, column: 22, scope: !3323)
!3355 = !DILocation(line: 886, column: 15, scope: !3323)
!3356 = !DILocation(line: 887, column: 11, scope: !3323)
!3357 = !DILocation(line: 888, column: 15, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3323, file: !217, line: 887, column: 11)
!3359 = !{i64 0, i64 8, !777, i64 8, i64 8, !693}
!3360 = !DILocation(line: 888, column: 9, scope: !3358)
!3361 = !DILocation(line: 889, column: 20, scope: !3323)
!3362 = !DILocation(line: 889, column: 18, scope: !3323)
!3363 = !DILocation(line: 889, column: 7, scope: !3323)
!3364 = !DILocation(line: 889, column: 38, scope: !3323)
!3365 = !DILocation(line: 889, column: 31, scope: !3323)
!3366 = !DILocation(line: 889, column: 48, scope: !3323)
!3367 = !DILocation(line: 890, column: 14, scope: !3323)
!3368 = !DILocation(line: 891, column: 5, scope: !3323)
!3369 = !DILocation(line: 894, column: 19, scope: !3326)
!3370 = !DILocation(line: 894, column: 25, scope: !3326)
!3371 = !DILocation(line: 894, column: 12, scope: !3326)
!3372 = !DILocation(line: 895, column: 23, scope: !3326)
!3373 = !DILocation(line: 895, column: 11, scope: !3326)
!3374 = !DILocation(line: 897, column: 26, scope: !3326)
!3375 = !DILocation(line: 897, column: 32, scope: !3326)
!3376 = !DILocation(line: 897, column: 9, scope: !3326)
!3377 = !DILocation(line: 899, column: 55, scope: !3326)
!3378 = !DILocation(line: 900, column: 46, scope: !3326)
!3379 = !DILocation(line: 901, column: 55, scope: !3326)
!3380 = !DILocation(line: 902, column: 55, scope: !3326)
!3381 = !DILocation(line: 898, column: 20, scope: !3326)
!3382 = !DILocation(line: 898, column: 12, scope: !3326)
!3383 = !DILocation(line: 904, column: 14, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3326, file: !217, line: 904, column: 9)
!3385 = !DILocation(line: 904, column: 9, scope: !3326)
!3386 = !DILocation(line: 906, column: 35, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3384, file: !217, line: 905, column: 7)
!3388 = !DILocation(line: 906, column: 20, scope: !3387)
!3389 = !DILocation(line: 907, column: 17, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3387, file: !217, line: 907, column: 13)
!3391 = !DILocation(line: 907, column: 13, scope: !3387)
!3392 = !DILocation(line: 908, column: 11, scope: !3390)
!3393 = !DILocation(line: 220, column: 20, scope: !3216, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 909, column: 27, scope: !3387)
!3395 = !DILocation(line: 222, column: 10, scope: !3216, inlinedAt: !3394)
!3396 = !DILocation(line: 909, column: 19, scope: !3387)
!3397 = !DILocation(line: 910, column: 69, scope: !3387)
!3398 = !DILocation(line: 912, column: 44, scope: !3387)
!3399 = !DILocation(line: 913, column: 44, scope: !3387)
!3400 = !DILocation(line: 910, column: 9, scope: !3387)
!3401 = !DILocation(line: 914, column: 7, scope: !3387)
!3402 = !DILocation(line: 916, column: 11, scope: !3326)
!3403 = !DILocation(line: 917, column: 5, scope: !3326)
!3404 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !217, file: !217, line: 928, type: !3405, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3407)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!81, !82, !78, !75}
!3407 = !{!3408, !3409, !3410}
!3408 = !DILocalVariable(name: "n", arg: 1, scope: !3404, file: !217, line: 928, type: !82)
!3409 = !DILocalVariable(name: "arg", arg: 2, scope: !3404, file: !217, line: 928, type: !78)
!3410 = !DILocalVariable(name: "argsize", arg: 3, scope: !3404, file: !217, line: 928, type: !75)
!3411 = !DILocation(line: 928, column: 21, scope: !3404)
!3412 = !DILocation(line: 928, column: 36, scope: !3404)
!3413 = !DILocation(line: 928, column: 48, scope: !3404)
!3414 = !DILocation(line: 930, column: 10, scope: !3404)
!3415 = !DILocation(line: 930, column: 3, scope: !3404)
!3416 = distinct !DISubprogram(name: "quotearg", scope: !217, file: !217, line: 934, type: !3417, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!81, !78}
!3419 = !{!3420}
!3420 = !DILocalVariable(name: "arg", arg: 1, scope: !3416, file: !217, line: 934, type: !78)
!3421 = !DILocation(line: 934, column: 23, scope: !3416)
!3422 = !DILocation(line: 922, column: 17, scope: !3302, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 936, column: 10, scope: !3416)
!3424 = !DILocation(line: 922, column: 32, scope: !3302, inlinedAt: !3423)
!3425 = !DILocation(line: 924, column: 10, scope: !3302, inlinedAt: !3423)
!3426 = !DILocation(line: 936, column: 3, scope: !3416)
!3427 = distinct !DISubprogram(name: "quotearg_mem", scope: !217, file: !217, line: 940, type: !3428, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3430)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!81, !78, !75}
!3430 = !{!3431, !3432}
!3431 = !DILocalVariable(name: "arg", arg: 1, scope: !3427, file: !217, line: 940, type: !78)
!3432 = !DILocalVariable(name: "argsize", arg: 2, scope: !3427, file: !217, line: 940, type: !75)
!3433 = !DILocation(line: 940, column: 27, scope: !3427)
!3434 = !DILocation(line: 940, column: 39, scope: !3427)
!3435 = !DILocation(line: 928, column: 21, scope: !3404, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 942, column: 10, scope: !3427)
!3437 = !DILocation(line: 928, column: 36, scope: !3404, inlinedAt: !3436)
!3438 = !DILocation(line: 928, column: 48, scope: !3404, inlinedAt: !3436)
!3439 = !DILocation(line: 930, column: 10, scope: !3404, inlinedAt: !3436)
!3440 = !DILocation(line: 942, column: 3, scope: !3427)
!3441 = distinct !DISubprogram(name: "quotearg_n_style", scope: !217, file: !217, line: 946, type: !3442, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3444)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!81, !82, !34, !78}
!3444 = !{!3445, !3446, !3447, !3448}
!3445 = !DILocalVariable(name: "n", arg: 1, scope: !3441, file: !217, line: 946, type: !82)
!3446 = !DILocalVariable(name: "s", arg: 2, scope: !3441, file: !217, line: 946, type: !34)
!3447 = !DILocalVariable(name: "arg", arg: 3, scope: !3441, file: !217, line: 946, type: !78)
!3448 = !DILocalVariable(name: "o", scope: !3441, file: !217, line: 948, type: !2303)
!3449 = !DILocalVariable(name: "o", scope: !3450, file: !217, line: 187, type: !224)
!3450 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !217, file: !217, line: 185, type: !3451, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!224, !34}
!3453 = !{!3454, !3449}
!3454 = !DILocalVariable(name: "style", arg: 1, scope: !3450, file: !217, line: 185, type: !34)
!3455 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3456 = !DILocation(line: 187, column: 26, scope: !3450, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 948, column: 36, scope: !3441)
!3458 = !DILocation(line: 946, column: 23, scope: !3441)
!3459 = !DILocation(line: 946, column: 45, scope: !3441)
!3460 = !DILocation(line: 946, column: 60, scope: !3441)
!3461 = !DILocation(line: 948, column: 3, scope: !3441)
!3462 = !DILocation(line: 948, column: 32, scope: !3441)
!3463 = !DILocation(line: 185, column: 48, scope: !3450, inlinedAt: !3457)
!3464 = !DILocation(line: 187, column: 3, scope: !3450, inlinedAt: !3457)
!3465 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3466 = !DILocation(line: 188, column: 13, scope: !3467, inlinedAt: !3457)
!3467 = distinct !DILexicalBlock(scope: !3450, file: !217, line: 188, column: 7)
!3468 = !DILocation(line: 188, column: 7, scope: !3450, inlinedAt: !3457)
!3469 = !DILocation(line: 189, column: 5, scope: !3467, inlinedAt: !3457)
!3470 = !{!3471}
!3471 = distinct !{!3471, !3472, !"quoting_options_from_style: argument 0"}
!3472 = distinct !{!3472, !"quoting_options_from_style"}
!3473 = !DILocation(line: 191, column: 10, scope: !3450, inlinedAt: !3457)
!3474 = !DILocation(line: 192, column: 1, scope: !3450, inlinedAt: !3457)
!3475 = !DILocation(line: 949, column: 10, scope: !3441)
!3476 = !DILocation(line: 950, column: 1, scope: !3441)
!3477 = !DILocation(line: 949, column: 3, scope: !3441)
!3478 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !217, file: !217, line: 953, type: !3479, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3481)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!81, !82, !34, !78, !75}
!3481 = !{!3482, !3483, !3484, !3485, !3486}
!3482 = !DILocalVariable(name: "n", arg: 1, scope: !3478, file: !217, line: 953, type: !82)
!3483 = !DILocalVariable(name: "s", arg: 2, scope: !3478, file: !217, line: 953, type: !34)
!3484 = !DILocalVariable(name: "arg", arg: 3, scope: !3478, file: !217, line: 954, type: !78)
!3485 = !DILocalVariable(name: "argsize", arg: 4, scope: !3478, file: !217, line: 954, type: !75)
!3486 = !DILocalVariable(name: "o", scope: !3478, file: !217, line: 956, type: !2303)
!3487 = !DILocation(line: 187, column: 26, scope: !3450, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 956, column: 36, scope: !3478)
!3489 = !DILocation(line: 953, column: 27, scope: !3478)
!3490 = !DILocation(line: 953, column: 49, scope: !3478)
!3491 = !DILocation(line: 954, column: 35, scope: !3478)
!3492 = !DILocation(line: 954, column: 47, scope: !3478)
!3493 = !DILocation(line: 956, column: 3, scope: !3478)
!3494 = !DILocation(line: 956, column: 32, scope: !3478)
!3495 = !DILocation(line: 185, column: 48, scope: !3450, inlinedAt: !3488)
!3496 = !DILocation(line: 187, column: 3, scope: !3450, inlinedAt: !3488)
!3497 = !DILocation(line: 188, column: 13, scope: !3467, inlinedAt: !3488)
!3498 = !DILocation(line: 188, column: 7, scope: !3450, inlinedAt: !3488)
!3499 = !DILocation(line: 189, column: 5, scope: !3467, inlinedAt: !3488)
!3500 = !{!3501}
!3501 = distinct !{!3501, !3502, !"quoting_options_from_style: argument 0"}
!3502 = distinct !{!3502, !"quoting_options_from_style"}
!3503 = !DILocation(line: 191, column: 10, scope: !3450, inlinedAt: !3488)
!3504 = !DILocation(line: 192, column: 1, scope: !3450, inlinedAt: !3488)
!3505 = !DILocation(line: 957, column: 10, scope: !3478)
!3506 = !DILocation(line: 958, column: 1, scope: !3478)
!3507 = !DILocation(line: 957, column: 3, scope: !3478)
!3508 = distinct !DISubprogram(name: "quotearg_style", scope: !217, file: !217, line: 961, type: !3509, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3511)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!81, !34, !78}
!3511 = !{!3512, !3513}
!3512 = !DILocalVariable(name: "s", arg: 1, scope: !3508, file: !217, line: 961, type: !34)
!3513 = !DILocalVariable(name: "arg", arg: 2, scope: !3508, file: !217, line: 961, type: !78)
!3514 = !DILocation(line: 187, column: 26, scope: !3450, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 948, column: 36, scope: !3441, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 963, column: 10, scope: !3508)
!3517 = !DILocation(line: 961, column: 36, scope: !3508)
!3518 = !DILocation(line: 961, column: 51, scope: !3508)
!3519 = !DILocation(line: 946, column: 23, scope: !3441, inlinedAt: !3516)
!3520 = !DILocation(line: 946, column: 45, scope: !3441, inlinedAt: !3516)
!3521 = !DILocation(line: 946, column: 60, scope: !3441, inlinedAt: !3516)
!3522 = !DILocation(line: 948, column: 3, scope: !3441, inlinedAt: !3516)
!3523 = !DILocation(line: 948, column: 32, scope: !3441, inlinedAt: !3516)
!3524 = !DILocation(line: 185, column: 48, scope: !3450, inlinedAt: !3515)
!3525 = !DILocation(line: 187, column: 3, scope: !3450, inlinedAt: !3515)
!3526 = !DILocation(line: 188, column: 13, scope: !3467, inlinedAt: !3515)
!3527 = !DILocation(line: 188, column: 7, scope: !3450, inlinedAt: !3515)
!3528 = !DILocation(line: 189, column: 5, scope: !3467, inlinedAt: !3515)
!3529 = !{!3530}
!3530 = distinct !{!3530, !3531, !"quoting_options_from_style: argument 0"}
!3531 = distinct !{!3531, !"quoting_options_from_style"}
!3532 = !DILocation(line: 191, column: 10, scope: !3450, inlinedAt: !3515)
!3533 = !DILocation(line: 192, column: 1, scope: !3450, inlinedAt: !3515)
!3534 = !DILocation(line: 949, column: 10, scope: !3441, inlinedAt: !3516)
!3535 = !DILocation(line: 950, column: 1, scope: !3441, inlinedAt: !3516)
!3536 = !DILocation(line: 963, column: 3, scope: !3508)
!3537 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !217, file: !217, line: 967, type: !3538, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3540)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!81, !34, !78, !75}
!3540 = !{!3541, !3542, !3543}
!3541 = !DILocalVariable(name: "s", arg: 1, scope: !3537, file: !217, line: 967, type: !34)
!3542 = !DILocalVariable(name: "arg", arg: 2, scope: !3537, file: !217, line: 967, type: !78)
!3543 = !DILocalVariable(name: "argsize", arg: 3, scope: !3537, file: !217, line: 967, type: !75)
!3544 = !DILocation(line: 187, column: 26, scope: !3450, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 956, column: 36, scope: !3478, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 969, column: 10, scope: !3537)
!3547 = !DILocation(line: 967, column: 40, scope: !3537)
!3548 = !DILocation(line: 967, column: 55, scope: !3537)
!3549 = !DILocation(line: 967, column: 67, scope: !3537)
!3550 = !DILocation(line: 953, column: 27, scope: !3478, inlinedAt: !3546)
!3551 = !DILocation(line: 953, column: 49, scope: !3478, inlinedAt: !3546)
!3552 = !DILocation(line: 954, column: 35, scope: !3478, inlinedAt: !3546)
!3553 = !DILocation(line: 954, column: 47, scope: !3478, inlinedAt: !3546)
!3554 = !DILocation(line: 956, column: 3, scope: !3478, inlinedAt: !3546)
!3555 = !DILocation(line: 956, column: 32, scope: !3478, inlinedAt: !3546)
!3556 = !DILocation(line: 185, column: 48, scope: !3450, inlinedAt: !3545)
!3557 = !DILocation(line: 187, column: 3, scope: !3450, inlinedAt: !3545)
!3558 = !DILocation(line: 188, column: 13, scope: !3467, inlinedAt: !3545)
!3559 = !DILocation(line: 188, column: 7, scope: !3450, inlinedAt: !3545)
!3560 = !DILocation(line: 189, column: 5, scope: !3467, inlinedAt: !3545)
!3561 = !{!3562}
!3562 = distinct !{!3562, !3563, !"quoting_options_from_style: argument 0"}
!3563 = distinct !{!3563, !"quoting_options_from_style"}
!3564 = !DILocation(line: 191, column: 10, scope: !3450, inlinedAt: !3545)
!3565 = !DILocation(line: 192, column: 1, scope: !3450, inlinedAt: !3545)
!3566 = !DILocation(line: 957, column: 10, scope: !3478, inlinedAt: !3546)
!3567 = !DILocation(line: 958, column: 1, scope: !3478, inlinedAt: !3546)
!3568 = !DILocation(line: 969, column: 3, scope: !3537)
!3569 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !217, file: !217, line: 973, type: !3570, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3572)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!81, !78, !75, !80}
!3572 = !{!3573, !3574, !3575, !3576}
!3573 = !DILocalVariable(name: "arg", arg: 1, scope: !3569, file: !217, line: 973, type: !78)
!3574 = !DILocalVariable(name: "argsize", arg: 2, scope: !3569, file: !217, line: 973, type: !75)
!3575 = !DILocalVariable(name: "ch", arg: 3, scope: !3569, file: !217, line: 973, type: !80)
!3576 = !DILocalVariable(name: "options", scope: !3569, file: !217, line: 975, type: !224)
!3577 = !DILocation(line: 973, column: 32, scope: !3569)
!3578 = !DILocation(line: 973, column: 44, scope: !3569)
!3579 = !DILocation(line: 973, column: 58, scope: !3569)
!3580 = !DILocation(line: 975, column: 3, scope: !3569)
!3581 = !DILocation(line: 976, column: 13, scope: !3569)
!3582 = !{i64 0, i64 4, !782, i64 4, i64 4, !795, i64 8, i64 32, !782, i64 40, i64 8, !693, i64 48, i64 8, !693}
!3583 = !DILocation(line: 975, column: 26, scope: !3569)
!3584 = !DILocation(line: 144, column: 43, scope: !2324, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 977, column: 3, scope: !3569)
!3586 = !DILocation(line: 144, column: 51, scope: !2324, inlinedAt: !3585)
!3587 = !DILocation(line: 144, column: 58, scope: !2324, inlinedAt: !3585)
!3588 = !DILocation(line: 146, column: 17, scope: !2324, inlinedAt: !3585)
!3589 = !DILocation(line: 148, column: 62, scope: !2324, inlinedAt: !3585)
!3590 = !DILocation(line: 148, column: 57, scope: !2324, inlinedAt: !3585)
!3591 = !DILocation(line: 147, column: 17, scope: !2324, inlinedAt: !3585)
!3592 = !DILocation(line: 149, column: 18, scope: !2324, inlinedAt: !3585)
!3593 = !DILocation(line: 149, column: 15, scope: !2324, inlinedAt: !3585)
!3594 = !DILocation(line: 149, column: 7, scope: !2324, inlinedAt: !3585)
!3595 = !DILocation(line: 150, column: 12, scope: !2324, inlinedAt: !3585)
!3596 = !DILocation(line: 150, column: 15, scope: !2324, inlinedAt: !3585)
!3597 = !DILocation(line: 150, column: 25, scope: !2324, inlinedAt: !3585)
!3598 = !DILocation(line: 150, column: 7, scope: !2324, inlinedAt: !3585)
!3599 = !DILocation(line: 151, column: 18, scope: !2324, inlinedAt: !3585)
!3600 = !DILocation(line: 151, column: 23, scope: !2324, inlinedAt: !3585)
!3601 = !DILocation(line: 151, column: 6, scope: !2324, inlinedAt: !3585)
!3602 = !DILocation(line: 978, column: 10, scope: !3569)
!3603 = !DILocation(line: 979, column: 1, scope: !3569)
!3604 = !DILocation(line: 978, column: 3, scope: !3569)
!3605 = distinct !DISubprogram(name: "quotearg_char", scope: !217, file: !217, line: 982, type: !3606, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3608)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!81, !78, !80}
!3608 = !{!3609, !3610}
!3609 = !DILocalVariable(name: "arg", arg: 1, scope: !3605, file: !217, line: 982, type: !78)
!3610 = !DILocalVariable(name: "ch", arg: 2, scope: !3605, file: !217, line: 982, type: !80)
!3611 = !DILocation(line: 982, column: 28, scope: !3605)
!3612 = !DILocation(line: 982, column: 38, scope: !3605)
!3613 = !DILocation(line: 973, column: 32, scope: !3569, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 984, column: 10, scope: !3605)
!3615 = !DILocation(line: 973, column: 44, scope: !3569, inlinedAt: !3614)
!3616 = !DILocation(line: 973, column: 58, scope: !3569, inlinedAt: !3614)
!3617 = !DILocation(line: 975, column: 3, scope: !3569, inlinedAt: !3614)
!3618 = !DILocation(line: 976, column: 13, scope: !3569, inlinedAt: !3614)
!3619 = !DILocation(line: 975, column: 26, scope: !3569, inlinedAt: !3614)
!3620 = !DILocation(line: 144, column: 43, scope: !2324, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 977, column: 3, scope: !3569, inlinedAt: !3614)
!3622 = !DILocation(line: 144, column: 51, scope: !2324, inlinedAt: !3621)
!3623 = !DILocation(line: 144, column: 58, scope: !2324, inlinedAt: !3621)
!3624 = !DILocation(line: 146, column: 17, scope: !2324, inlinedAt: !3621)
!3625 = !DILocation(line: 148, column: 62, scope: !2324, inlinedAt: !3621)
!3626 = !DILocation(line: 148, column: 57, scope: !2324, inlinedAt: !3621)
!3627 = !DILocation(line: 147, column: 17, scope: !2324, inlinedAt: !3621)
!3628 = !DILocation(line: 149, column: 18, scope: !2324, inlinedAt: !3621)
!3629 = !DILocation(line: 149, column: 15, scope: !2324, inlinedAt: !3621)
!3630 = !DILocation(line: 149, column: 7, scope: !2324, inlinedAt: !3621)
!3631 = !DILocation(line: 150, column: 12, scope: !2324, inlinedAt: !3621)
!3632 = !DILocation(line: 150, column: 15, scope: !2324, inlinedAt: !3621)
!3633 = !DILocation(line: 150, column: 25, scope: !2324, inlinedAt: !3621)
!3634 = !DILocation(line: 150, column: 7, scope: !2324, inlinedAt: !3621)
!3635 = !DILocation(line: 151, column: 18, scope: !2324, inlinedAt: !3621)
!3636 = !DILocation(line: 151, column: 23, scope: !2324, inlinedAt: !3621)
!3637 = !DILocation(line: 151, column: 6, scope: !2324, inlinedAt: !3621)
!3638 = !DILocation(line: 978, column: 10, scope: !3569, inlinedAt: !3614)
!3639 = !DILocation(line: 979, column: 1, scope: !3569, inlinedAt: !3614)
!3640 = !DILocation(line: 984, column: 3, scope: !3605)
!3641 = distinct !DISubprogram(name: "quotearg_colon", scope: !217, file: !217, line: 988, type: !3417, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3642)
!3642 = !{!3643}
!3643 = !DILocalVariable(name: "arg", arg: 1, scope: !3641, file: !217, line: 988, type: !78)
!3644 = !DILocation(line: 988, column: 29, scope: !3641)
!3645 = !DILocation(line: 982, column: 28, scope: !3605, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 990, column: 10, scope: !3641)
!3647 = !DILocation(line: 982, column: 38, scope: !3605, inlinedAt: !3646)
!3648 = !DILocation(line: 973, column: 32, scope: !3569, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 984, column: 10, scope: !3605, inlinedAt: !3646)
!3650 = !DILocation(line: 973, column: 44, scope: !3569, inlinedAt: !3649)
!3651 = !DILocation(line: 973, column: 58, scope: !3569, inlinedAt: !3649)
!3652 = !DILocation(line: 975, column: 3, scope: !3569, inlinedAt: !3649)
!3653 = !DILocation(line: 976, column: 13, scope: !3569, inlinedAt: !3649)
!3654 = !DILocation(line: 975, column: 26, scope: !3569, inlinedAt: !3649)
!3655 = !DILocation(line: 144, column: 43, scope: !2324, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 977, column: 3, scope: !3569, inlinedAt: !3649)
!3657 = !DILocation(line: 144, column: 51, scope: !2324, inlinedAt: !3656)
!3658 = !DILocation(line: 144, column: 58, scope: !2324, inlinedAt: !3656)
!3659 = !DILocation(line: 146, column: 17, scope: !2324, inlinedAt: !3656)
!3660 = !DILocation(line: 148, column: 57, scope: !2324, inlinedAt: !3656)
!3661 = !DILocation(line: 147, column: 17, scope: !2324, inlinedAt: !3656)
!3662 = !DILocation(line: 149, column: 7, scope: !2324, inlinedAt: !3656)
!3663 = !DILocation(line: 150, column: 12, scope: !2324, inlinedAt: !3656)
!3664 = !DILocation(line: 151, column: 6, scope: !2324, inlinedAt: !3656)
!3665 = !DILocation(line: 978, column: 10, scope: !3569, inlinedAt: !3649)
!3666 = !DILocation(line: 979, column: 1, scope: !3569, inlinedAt: !3649)
!3667 = !DILocation(line: 990, column: 3, scope: !3641)
!3668 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !217, file: !217, line: 994, type: !3428, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3669)
!3669 = !{!3670, !3671}
!3670 = !DILocalVariable(name: "arg", arg: 1, scope: !3668, file: !217, line: 994, type: !78)
!3671 = !DILocalVariable(name: "argsize", arg: 2, scope: !3668, file: !217, line: 994, type: !75)
!3672 = !DILocation(line: 994, column: 33, scope: !3668)
!3673 = !DILocation(line: 994, column: 45, scope: !3668)
!3674 = !DILocation(line: 973, column: 32, scope: !3569, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 996, column: 10, scope: !3668)
!3676 = !DILocation(line: 973, column: 44, scope: !3569, inlinedAt: !3675)
!3677 = !DILocation(line: 973, column: 58, scope: !3569, inlinedAt: !3675)
!3678 = !DILocation(line: 975, column: 3, scope: !3569, inlinedAt: !3675)
!3679 = !DILocation(line: 976, column: 13, scope: !3569, inlinedAt: !3675)
!3680 = !DILocation(line: 975, column: 26, scope: !3569, inlinedAt: !3675)
!3681 = !DILocation(line: 144, column: 43, scope: !2324, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 977, column: 3, scope: !3569, inlinedAt: !3675)
!3683 = !DILocation(line: 144, column: 51, scope: !2324, inlinedAt: !3682)
!3684 = !DILocation(line: 144, column: 58, scope: !2324, inlinedAt: !3682)
!3685 = !DILocation(line: 146, column: 17, scope: !2324, inlinedAt: !3682)
!3686 = !DILocation(line: 148, column: 57, scope: !2324, inlinedAt: !3682)
!3687 = !DILocation(line: 147, column: 17, scope: !2324, inlinedAt: !3682)
!3688 = !DILocation(line: 149, column: 7, scope: !2324, inlinedAt: !3682)
!3689 = !DILocation(line: 150, column: 12, scope: !2324, inlinedAt: !3682)
!3690 = !DILocation(line: 151, column: 6, scope: !2324, inlinedAt: !3682)
!3691 = !DILocation(line: 978, column: 10, scope: !3569, inlinedAt: !3675)
!3692 = !DILocation(line: 979, column: 1, scope: !3569, inlinedAt: !3675)
!3693 = !DILocation(line: 996, column: 3, scope: !3668)
!3694 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !217, file: !217, line: 1000, type: !3442, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3695)
!3695 = !{!3696, !3697, !3698, !3699}
!3696 = !DILocalVariable(name: "n", arg: 1, scope: !3694, file: !217, line: 1000, type: !82)
!3697 = !DILocalVariable(name: "s", arg: 2, scope: !3694, file: !217, line: 1000, type: !34)
!3698 = !DILocalVariable(name: "arg", arg: 3, scope: !3694, file: !217, line: 1000, type: !78)
!3699 = !DILocalVariable(name: "options", scope: !3694, file: !217, line: 1002, type: !224)
!3700 = !DILocation(line: 187, column: 26, scope: !3450, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 1003, column: 13, scope: !3694)
!3702 = !DILocation(line: 1000, column: 29, scope: !3694)
!3703 = !DILocation(line: 1000, column: 51, scope: !3694)
!3704 = !DILocation(line: 1000, column: 66, scope: !3694)
!3705 = !DILocation(line: 1002, column: 3, scope: !3694)
!3706 = !DILocation(line: 185, column: 48, scope: !3450, inlinedAt: !3701)
!3707 = !DILocation(line: 187, column: 3, scope: !3450, inlinedAt: !3701)
!3708 = !DILocation(line: 188, column: 13, scope: !3467, inlinedAt: !3701)
!3709 = !DILocation(line: 188, column: 7, scope: !3450, inlinedAt: !3701)
!3710 = !DILocation(line: 189, column: 5, scope: !3467, inlinedAt: !3701)
!3711 = !{!3712}
!3712 = distinct !{!3712, !3713, !"quoting_options_from_style: argument 0"}
!3713 = distinct !{!3713, !"quoting_options_from_style"}
!3714 = !DILocation(line: 191, column: 10, scope: !3450, inlinedAt: !3701)
!3715 = !DILocation(line: 192, column: 1, scope: !3450, inlinedAt: !3701)
!3716 = !DILocation(line: 1003, column: 13, scope: !3694)
!3717 = !DILocation(line: 1002, column: 26, scope: !3694)
!3718 = !DILocation(line: 144, column: 43, scope: !2324, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 1004, column: 3, scope: !3694)
!3720 = !DILocation(line: 144, column: 51, scope: !2324, inlinedAt: !3719)
!3721 = !DILocation(line: 144, column: 58, scope: !2324, inlinedAt: !3719)
!3722 = !DILocation(line: 146, column: 17, scope: !2324, inlinedAt: !3719)
!3723 = !DILocation(line: 148, column: 57, scope: !2324, inlinedAt: !3719)
!3724 = !DILocation(line: 147, column: 17, scope: !2324, inlinedAt: !3719)
!3725 = !DILocation(line: 149, column: 7, scope: !2324, inlinedAt: !3719)
!3726 = !DILocation(line: 150, column: 12, scope: !2324, inlinedAt: !3719)
!3727 = !DILocation(line: 151, column: 6, scope: !2324, inlinedAt: !3719)
!3728 = !DILocation(line: 1005, column: 10, scope: !3694)
!3729 = !DILocation(line: 1006, column: 1, scope: !3694)
!3730 = !DILocation(line: 1005, column: 3, scope: !3694)
!3731 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !217, file: !217, line: 1009, type: !3732, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3734)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!81, !82, !78, !78, !78}
!3734 = !{!3735, !3736, !3737, !3738}
!3735 = !DILocalVariable(name: "n", arg: 1, scope: !3731, file: !217, line: 1009, type: !82)
!3736 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3731, file: !217, line: 1009, type: !78)
!3737 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3731, file: !217, line: 1010, type: !78)
!3738 = !DILocalVariable(name: "arg", arg: 4, scope: !3731, file: !217, line: 1010, type: !78)
!3739 = !DILocation(line: 1009, column: 24, scope: !3731)
!3740 = !DILocation(line: 1009, column: 39, scope: !3731)
!3741 = !DILocation(line: 1010, column: 32, scope: !3731)
!3742 = !DILocation(line: 1010, column: 57, scope: !3731)
!3743 = !DILocalVariable(name: "n", arg: 1, scope: !3744, file: !217, line: 1017, type: !82)
!3744 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !217, file: !217, line: 1017, type: !3745, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3747)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!81, !82, !78, !78, !78, !75}
!3747 = !{!3743, !3748, !3749, !3750, !3751, !3752}
!3748 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3744, file: !217, line: 1017, type: !78)
!3749 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3744, file: !217, line: 1018, type: !78)
!3750 = !DILocalVariable(name: "arg", arg: 4, scope: !3744, file: !217, line: 1019, type: !78)
!3751 = !DILocalVariable(name: "argsize", arg: 5, scope: !3744, file: !217, line: 1019, type: !75)
!3752 = !DILocalVariable(name: "o", scope: !3744, file: !217, line: 1021, type: !224)
!3753 = !DILocation(line: 1017, column: 28, scope: !3744, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 1012, column: 10, scope: !3731)
!3755 = !DILocation(line: 1017, column: 43, scope: !3744, inlinedAt: !3754)
!3756 = !DILocation(line: 1018, column: 36, scope: !3744, inlinedAt: !3754)
!3757 = !DILocation(line: 1019, column: 36, scope: !3744, inlinedAt: !3754)
!3758 = !DILocation(line: 1019, column: 48, scope: !3744, inlinedAt: !3754)
!3759 = !DILocation(line: 1021, column: 3, scope: !3744, inlinedAt: !3754)
!3760 = !DILocation(line: 1021, column: 30, scope: !3744, inlinedAt: !3754)
!3761 = !DILocation(line: 1021, column: 26, scope: !3744, inlinedAt: !3754)
!3762 = !DILocation(line: 171, column: 45, scope: !2373, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 1022, column: 3, scope: !3744, inlinedAt: !3754)
!3764 = !DILocation(line: 172, column: 33, scope: !2373, inlinedAt: !3763)
!3765 = !DILocation(line: 172, column: 57, scope: !2373, inlinedAt: !3763)
!3766 = !DILocation(line: 176, column: 6, scope: !2373, inlinedAt: !3763)
!3767 = !DILocation(line: 176, column: 12, scope: !2373, inlinedAt: !3763)
!3768 = !DILocation(line: 177, column: 8, scope: !2389, inlinedAt: !3763)
!3769 = !DILocation(line: 177, column: 23, scope: !2389, inlinedAt: !3763)
!3770 = !DILocation(line: 177, column: 19, scope: !2389, inlinedAt: !3763)
!3771 = !DILocation(line: 178, column: 5, scope: !2389, inlinedAt: !3763)
!3772 = !DILocation(line: 179, column: 6, scope: !2373, inlinedAt: !3763)
!3773 = !DILocation(line: 179, column: 17, scope: !2373, inlinedAt: !3763)
!3774 = !DILocation(line: 180, column: 6, scope: !2373, inlinedAt: !3763)
!3775 = !DILocation(line: 180, column: 18, scope: !2373, inlinedAt: !3763)
!3776 = !DILocation(line: 1023, column: 10, scope: !3744, inlinedAt: !3754)
!3777 = !DILocation(line: 1024, column: 1, scope: !3744, inlinedAt: !3754)
!3778 = !DILocation(line: 1012, column: 3, scope: !3731)
!3779 = !DILocation(line: 1017, column: 28, scope: !3744)
!3780 = !DILocation(line: 1017, column: 43, scope: !3744)
!3781 = !DILocation(line: 1018, column: 36, scope: !3744)
!3782 = !DILocation(line: 1019, column: 36, scope: !3744)
!3783 = !DILocation(line: 1019, column: 48, scope: !3744)
!3784 = !DILocation(line: 1021, column: 3, scope: !3744)
!3785 = !DILocation(line: 1021, column: 30, scope: !3744)
!3786 = !DILocation(line: 1021, column: 26, scope: !3744)
!3787 = !DILocation(line: 171, column: 45, scope: !2373, inlinedAt: !3788)
!3788 = distinct !DILocation(line: 1022, column: 3, scope: !3744)
!3789 = !DILocation(line: 172, column: 33, scope: !2373, inlinedAt: !3788)
!3790 = !DILocation(line: 172, column: 57, scope: !2373, inlinedAt: !3788)
!3791 = !DILocation(line: 176, column: 6, scope: !2373, inlinedAt: !3788)
!3792 = !DILocation(line: 176, column: 12, scope: !2373, inlinedAt: !3788)
!3793 = !DILocation(line: 177, column: 8, scope: !2389, inlinedAt: !3788)
!3794 = !DILocation(line: 177, column: 23, scope: !2389, inlinedAt: !3788)
!3795 = !DILocation(line: 177, column: 19, scope: !2389, inlinedAt: !3788)
!3796 = !DILocation(line: 178, column: 5, scope: !2389, inlinedAt: !3788)
!3797 = !DILocation(line: 179, column: 6, scope: !2373, inlinedAt: !3788)
!3798 = !DILocation(line: 179, column: 17, scope: !2373, inlinedAt: !3788)
!3799 = !DILocation(line: 180, column: 6, scope: !2373, inlinedAt: !3788)
!3800 = !DILocation(line: 180, column: 18, scope: !2373, inlinedAt: !3788)
!3801 = !DILocation(line: 1023, column: 10, scope: !3744)
!3802 = !DILocation(line: 1024, column: 1, scope: !3744)
!3803 = !DILocation(line: 1023, column: 3, scope: !3744)
!3804 = distinct !DISubprogram(name: "quotearg_custom", scope: !217, file: !217, line: 1027, type: !3805, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3807)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!81, !78, !78, !78}
!3807 = !{!3808, !3809, !3810}
!3808 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3804, file: !217, line: 1027, type: !78)
!3809 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3804, file: !217, line: 1027, type: !78)
!3810 = !DILocalVariable(name: "arg", arg: 3, scope: !3804, file: !217, line: 1028, type: !78)
!3811 = !DILocation(line: 1027, column: 30, scope: !3804)
!3812 = !DILocation(line: 1027, column: 54, scope: !3804)
!3813 = !DILocation(line: 1028, column: 30, scope: !3804)
!3814 = !DILocation(line: 1009, column: 24, scope: !3731, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 1030, column: 10, scope: !3804)
!3816 = !DILocation(line: 1009, column: 39, scope: !3731, inlinedAt: !3815)
!3817 = !DILocation(line: 1010, column: 32, scope: !3731, inlinedAt: !3815)
!3818 = !DILocation(line: 1010, column: 57, scope: !3731, inlinedAt: !3815)
!3819 = !DILocation(line: 1017, column: 28, scope: !3744, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 1012, column: 10, scope: !3731, inlinedAt: !3815)
!3821 = !DILocation(line: 1017, column: 43, scope: !3744, inlinedAt: !3820)
!3822 = !DILocation(line: 1018, column: 36, scope: !3744, inlinedAt: !3820)
!3823 = !DILocation(line: 1019, column: 36, scope: !3744, inlinedAt: !3820)
!3824 = !DILocation(line: 1019, column: 48, scope: !3744, inlinedAt: !3820)
!3825 = !DILocation(line: 1021, column: 3, scope: !3744, inlinedAt: !3820)
!3826 = !DILocation(line: 1021, column: 30, scope: !3744, inlinedAt: !3820)
!3827 = !DILocation(line: 1021, column: 26, scope: !3744, inlinedAt: !3820)
!3828 = !DILocation(line: 171, column: 45, scope: !2373, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 1022, column: 3, scope: !3744, inlinedAt: !3820)
!3830 = !DILocation(line: 172, column: 33, scope: !2373, inlinedAt: !3829)
!3831 = !DILocation(line: 172, column: 57, scope: !2373, inlinedAt: !3829)
!3832 = !DILocation(line: 176, column: 6, scope: !2373, inlinedAt: !3829)
!3833 = !DILocation(line: 176, column: 12, scope: !2373, inlinedAt: !3829)
!3834 = !DILocation(line: 177, column: 8, scope: !2389, inlinedAt: !3829)
!3835 = !DILocation(line: 177, column: 23, scope: !2389, inlinedAt: !3829)
!3836 = !DILocation(line: 177, column: 19, scope: !2389, inlinedAt: !3829)
!3837 = !DILocation(line: 178, column: 5, scope: !2389, inlinedAt: !3829)
!3838 = !DILocation(line: 179, column: 6, scope: !2373, inlinedAt: !3829)
!3839 = !DILocation(line: 179, column: 17, scope: !2373, inlinedAt: !3829)
!3840 = !DILocation(line: 180, column: 6, scope: !2373, inlinedAt: !3829)
!3841 = !DILocation(line: 180, column: 18, scope: !2373, inlinedAt: !3829)
!3842 = !DILocation(line: 1023, column: 10, scope: !3744, inlinedAt: !3820)
!3843 = !DILocation(line: 1024, column: 1, scope: !3744, inlinedAt: !3820)
!3844 = !DILocation(line: 1030, column: 3, scope: !3804)
!3845 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !217, file: !217, line: 1034, type: !3846, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3848)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!81, !78, !78, !78, !75}
!3848 = !{!3849, !3850, !3851, !3852}
!3849 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3845, file: !217, line: 1034, type: !78)
!3850 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3845, file: !217, line: 1034, type: !78)
!3851 = !DILocalVariable(name: "arg", arg: 3, scope: !3845, file: !217, line: 1035, type: !78)
!3852 = !DILocalVariable(name: "argsize", arg: 4, scope: !3845, file: !217, line: 1035, type: !75)
!3853 = !DILocation(line: 1034, column: 34, scope: !3845)
!3854 = !DILocation(line: 1034, column: 58, scope: !3845)
!3855 = !DILocation(line: 1035, column: 34, scope: !3845)
!3856 = !DILocation(line: 1035, column: 46, scope: !3845)
!3857 = !DILocation(line: 1017, column: 28, scope: !3744, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 1037, column: 10, scope: !3845)
!3859 = !DILocation(line: 1017, column: 43, scope: !3744, inlinedAt: !3858)
!3860 = !DILocation(line: 1018, column: 36, scope: !3744, inlinedAt: !3858)
!3861 = !DILocation(line: 1019, column: 36, scope: !3744, inlinedAt: !3858)
!3862 = !DILocation(line: 1019, column: 48, scope: !3744, inlinedAt: !3858)
!3863 = !DILocation(line: 1021, column: 3, scope: !3744, inlinedAt: !3858)
!3864 = !DILocation(line: 1021, column: 30, scope: !3744, inlinedAt: !3858)
!3865 = !DILocation(line: 1021, column: 26, scope: !3744, inlinedAt: !3858)
!3866 = !DILocation(line: 171, column: 45, scope: !2373, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 1022, column: 3, scope: !3744, inlinedAt: !3858)
!3868 = !DILocation(line: 172, column: 33, scope: !2373, inlinedAt: !3867)
!3869 = !DILocation(line: 172, column: 57, scope: !2373, inlinedAt: !3867)
!3870 = !DILocation(line: 176, column: 6, scope: !2373, inlinedAt: !3867)
!3871 = !DILocation(line: 176, column: 12, scope: !2373, inlinedAt: !3867)
!3872 = !DILocation(line: 177, column: 8, scope: !2389, inlinedAt: !3867)
!3873 = !DILocation(line: 177, column: 23, scope: !2389, inlinedAt: !3867)
!3874 = !DILocation(line: 177, column: 19, scope: !2389, inlinedAt: !3867)
!3875 = !DILocation(line: 178, column: 5, scope: !2389, inlinedAt: !3867)
!3876 = !DILocation(line: 179, column: 6, scope: !2373, inlinedAt: !3867)
!3877 = !DILocation(line: 179, column: 17, scope: !2373, inlinedAt: !3867)
!3878 = !DILocation(line: 180, column: 6, scope: !2373, inlinedAt: !3867)
!3879 = !DILocation(line: 180, column: 18, scope: !2373, inlinedAt: !3867)
!3880 = !DILocation(line: 1023, column: 10, scope: !3744, inlinedAt: !3858)
!3881 = !DILocation(line: 1024, column: 1, scope: !3744, inlinedAt: !3858)
!3882 = !DILocation(line: 1037, column: 3, scope: !3845)
!3883 = distinct !DISubprogram(name: "quote_n_mem", scope: !217, file: !217, line: 1052, type: !3884, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3886)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!78, !82, !78, !75}
!3886 = !{!3887, !3888, !3889}
!3887 = !DILocalVariable(name: "n", arg: 1, scope: !3883, file: !217, line: 1052, type: !82)
!3888 = !DILocalVariable(name: "arg", arg: 2, scope: !3883, file: !217, line: 1052, type: !78)
!3889 = !DILocalVariable(name: "argsize", arg: 3, scope: !3883, file: !217, line: 1052, type: !75)
!3890 = !DILocation(line: 1052, column: 18, scope: !3883)
!3891 = !DILocation(line: 1052, column: 33, scope: !3883)
!3892 = !DILocation(line: 1052, column: 45, scope: !3883)
!3893 = !DILocation(line: 1054, column: 10, scope: !3883)
!3894 = !DILocation(line: 1054, column: 3, scope: !3883)
!3895 = distinct !DISubprogram(name: "quote_mem", scope: !217, file: !217, line: 1058, type: !3896, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3898)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!78, !78, !75}
!3898 = !{!3899, !3900}
!3899 = !DILocalVariable(name: "arg", arg: 1, scope: !3895, file: !217, line: 1058, type: !78)
!3900 = !DILocalVariable(name: "argsize", arg: 2, scope: !3895, file: !217, line: 1058, type: !75)
!3901 = !DILocation(line: 1058, column: 24, scope: !3895)
!3902 = !DILocation(line: 1058, column: 36, scope: !3895)
!3903 = !DILocation(line: 1052, column: 18, scope: !3883, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 1060, column: 10, scope: !3895)
!3905 = !DILocation(line: 1052, column: 33, scope: !3883, inlinedAt: !3904)
!3906 = !DILocation(line: 1052, column: 45, scope: !3883, inlinedAt: !3904)
!3907 = !DILocation(line: 1054, column: 10, scope: !3883, inlinedAt: !3904)
!3908 = !DILocation(line: 1060, column: 3, scope: !3895)
!3909 = distinct !DISubprogram(name: "quote_n", scope: !217, file: !217, line: 1064, type: !3910, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3912)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!78, !82, !78}
!3912 = !{!3913, !3914}
!3913 = !DILocalVariable(name: "n", arg: 1, scope: !3909, file: !217, line: 1064, type: !82)
!3914 = !DILocalVariable(name: "arg", arg: 2, scope: !3909, file: !217, line: 1064, type: !78)
!3915 = !DILocation(line: 1064, column: 14, scope: !3909)
!3916 = !DILocation(line: 1064, column: 29, scope: !3909)
!3917 = !DILocation(line: 1052, column: 18, scope: !3883, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 1066, column: 10, scope: !3909)
!3919 = !DILocation(line: 1052, column: 33, scope: !3883, inlinedAt: !3918)
!3920 = !DILocation(line: 1052, column: 45, scope: !3883, inlinedAt: !3918)
!3921 = !DILocation(line: 1054, column: 10, scope: !3883, inlinedAt: !3918)
!3922 = !DILocation(line: 1066, column: 3, scope: !3909)
!3923 = distinct !DISubprogram(name: "quote", scope: !217, file: !217, line: 1070, type: !3924, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !205, variables: !3926)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!78, !78}
!3926 = !{!3927}
!3927 = !DILocalVariable(name: "arg", arg: 1, scope: !3923, file: !217, line: 1070, type: !78)
!3928 = !DILocation(line: 1070, column: 20, scope: !3923)
!3929 = !DILocation(line: 1064, column: 14, scope: !3909, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 1072, column: 10, scope: !3923)
!3931 = !DILocation(line: 1064, column: 29, scope: !3909, inlinedAt: !3930)
!3932 = !DILocation(line: 1052, column: 18, scope: !3883, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 1066, column: 10, scope: !3909, inlinedAt: !3930)
!3934 = !DILocation(line: 1052, column: 33, scope: !3883, inlinedAt: !3933)
!3935 = !DILocation(line: 1052, column: 45, scope: !3883, inlinedAt: !3933)
!3936 = !DILocation(line: 1054, column: 10, scope: !3883, inlinedAt: !3933)
!3937 = !DILocation(line: 1072, column: 3, scope: !3923)
!3938 = distinct !DISubprogram(name: "version_etc_arn", scope: !632, file: !632, line: 62, type: !3939, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !3981)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{null, !3941, !78, !78, !78, !1406, !75}
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1042, line: 7, baseType: !3943)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1044, line: 241, size: 1728, elements: !3944)
!3944 = !{!3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3943, file: !1044, line: 242, baseType: !82, size: 32)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3943, file: !1044, line: 247, baseType: !81, size: 64, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3943, file: !1044, line: 248, baseType: !81, size: 64, offset: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3943, file: !1044, line: 249, baseType: !81, size: 64, offset: 192)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3943, file: !1044, line: 250, baseType: !81, size: 64, offset: 256)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3943, file: !1044, line: 251, baseType: !81, size: 64, offset: 320)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3943, file: !1044, line: 252, baseType: !81, size: 64, offset: 384)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3943, file: !1044, line: 253, baseType: !81, size: 64, offset: 448)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3943, file: !1044, line: 254, baseType: !81, size: 64, offset: 512)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3943, file: !1044, line: 256, baseType: !81, size: 64, offset: 576)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3943, file: !1044, line: 257, baseType: !81, size: 64, offset: 640)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3943, file: !1044, line: 258, baseType: !81, size: 64, offset: 704)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3943, file: !1044, line: 260, baseType: !3958, size: 64, offset: 768)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1044, line: 156, size: 192, elements: !3960)
!3960 = !{!3961, !3962, !3964}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3959, file: !1044, line: 157, baseType: !3958, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3959, file: !1044, line: 158, baseType: !3963, size: 64, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3959, file: !1044, line: 162, baseType: !82, size: 32, offset: 128)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3943, file: !1044, line: 262, baseType: !3963, size: 64, offset: 832)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3943, file: !1044, line: 264, baseType: !82, size: 32, offset: 896)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3943, file: !1044, line: 268, baseType: !82, size: 32, offset: 928)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3943, file: !1044, line: 270, baseType: !1070, size: 64, offset: 960)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3943, file: !1044, line: 274, baseType: !83, size: 16, offset: 1024)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3943, file: !1044, line: 275, baseType: !1074, size: 8, offset: 1040)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3943, file: !1044, line: 276, baseType: !1076, size: 8, offset: 1048)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3943, file: !1044, line: 280, baseType: !1080, size: 64, offset: 1088)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3943, file: !1044, line: 289, baseType: !1083, size: 64, offset: 1152)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3943, file: !1044, line: 297, baseType: !73, size: 64, offset: 1216)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3943, file: !1044, line: 298, baseType: !73, size: 64, offset: 1280)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3943, file: !1044, line: 299, baseType: !73, size: 64, offset: 1344)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3943, file: !1044, line: 300, baseType: !73, size: 64, offset: 1408)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3943, file: !1044, line: 302, baseType: !75, size: 64, offset: 1472)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3943, file: !1044, line: 303, baseType: !82, size: 32, offset: 1536)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3943, file: !1044, line: 305, baseType: !1091, size: 160, offset: 1568)
!3981 = !{!3982, !3983, !3984, !3985, !3986, !3987}
!3982 = !DILocalVariable(name: "stream", arg: 1, scope: !3938, file: !632, line: 62, type: !3941)
!3983 = !DILocalVariable(name: "command_name", arg: 2, scope: !3938, file: !632, line: 63, type: !78)
!3984 = !DILocalVariable(name: "package", arg: 3, scope: !3938, file: !632, line: 63, type: !78)
!3985 = !DILocalVariable(name: "version", arg: 4, scope: !3938, file: !632, line: 64, type: !78)
!3986 = !DILocalVariable(name: "authors", arg: 5, scope: !3938, file: !632, line: 65, type: !1406)
!3987 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3938, file: !632, line: 65, type: !75)
!3988 = !DILocation(line: 62, column: 24, scope: !3938)
!3989 = !DILocation(line: 63, column: 30, scope: !3938)
!3990 = !DILocation(line: 63, column: 56, scope: !3938)
!3991 = !DILocation(line: 64, column: 30, scope: !3938)
!3992 = !DILocation(line: 65, column: 39, scope: !3938)
!3993 = !DILocation(line: 65, column: 55, scope: !3938)
!3994 = !DILocation(line: 67, column: 7, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3938, file: !632, line: 67, column: 7)
!3996 = !DILocation(line: 67, column: 7, scope: !3938)
!3997 = !DILocation(line: 68, column: 5, scope: !3995)
!3998 = !DILocation(line: 70, column: 5, scope: !3995)
!3999 = !DILocation(line: 84, column: 3, scope: !3938)
!4000 = !DILocation(line: 86, column: 3, scope: !3938)
!4001 = !DILocation(line: 95, column: 3, scope: !3938)
!4002 = !DILocation(line: 99, column: 7, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3938, file: !632, line: 96, column: 5)
!4004 = !DILocation(line: 102, column: 7, scope: !4003)
!4005 = !DILocation(line: 103, column: 7, scope: !4003)
!4006 = !DILocation(line: 106, column: 7, scope: !4003)
!4007 = !DILocation(line: 107, column: 7, scope: !4003)
!4008 = !DILocation(line: 110, column: 7, scope: !4003)
!4009 = !DILocation(line: 112, column: 7, scope: !4003)
!4010 = !DILocation(line: 117, column: 7, scope: !4003)
!4011 = !DILocation(line: 119, column: 7, scope: !4003)
!4012 = !DILocation(line: 124, column: 7, scope: !4003)
!4013 = !DILocation(line: 126, column: 7, scope: !4003)
!4014 = !DILocation(line: 131, column: 7, scope: !4003)
!4015 = !DILocation(line: 134, column: 7, scope: !4003)
!4016 = !DILocation(line: 139, column: 7, scope: !4003)
!4017 = !DILocation(line: 142, column: 7, scope: !4003)
!4018 = !DILocation(line: 147, column: 7, scope: !4003)
!4019 = !DILocation(line: 151, column: 7, scope: !4003)
!4020 = !DILocation(line: 156, column: 7, scope: !4003)
!4021 = !DILocation(line: 160, column: 7, scope: !4003)
!4022 = !DILocation(line: 167, column: 7, scope: !4003)
!4023 = !DILocation(line: 171, column: 7, scope: !4003)
!4024 = !DILocation(line: 173, column: 1, scope: !3938)
!4025 = distinct !DISubprogram(name: "version_etc_ar", scope: !632, file: !632, line: 180, type: !4026, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !4028)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{null, !3941, !78, !78, !78, !1406}
!4028 = !{!4029, !4030, !4031, !4032, !4033, !4034}
!4029 = !DILocalVariable(name: "stream", arg: 1, scope: !4025, file: !632, line: 180, type: !3941)
!4030 = !DILocalVariable(name: "command_name", arg: 2, scope: !4025, file: !632, line: 181, type: !78)
!4031 = !DILocalVariable(name: "package", arg: 3, scope: !4025, file: !632, line: 181, type: !78)
!4032 = !DILocalVariable(name: "version", arg: 4, scope: !4025, file: !632, line: 182, type: !78)
!4033 = !DILocalVariable(name: "authors", arg: 5, scope: !4025, file: !632, line: 182, type: !1406)
!4034 = !DILocalVariable(name: "n_authors", scope: !4025, file: !632, line: 184, type: !75)
!4035 = !DILocation(line: 180, column: 23, scope: !4025)
!4036 = !DILocation(line: 181, column: 29, scope: !4025)
!4037 = !DILocation(line: 181, column: 55, scope: !4025)
!4038 = !DILocation(line: 182, column: 29, scope: !4025)
!4039 = !DILocation(line: 182, column: 59, scope: !4025)
!4040 = !DILocation(line: 184, column: 10, scope: !4025)
!4041 = !DILocation(line: 186, column: 8, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4025, file: !632, line: 186, column: 3)
!4043 = !DILocation(line: 186, column: 23, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4042, file: !632, line: 186, column: 3)
!4045 = !DILocation(line: 186, column: 3, scope: !4042)
!4046 = !DILocation(line: 186, column: 52, scope: !4044)
!4047 = distinct !{!4047, !4045, !4048}
!4048 = !DILocation(line: 187, column: 5, scope: !4042)
!4049 = !DILocation(line: 188, column: 3, scope: !4025)
!4050 = !DILocation(line: 189, column: 1, scope: !4025)
!4051 = distinct !DISubprogram(name: "version_etc_va", scope: !632, file: !632, line: 196, type: !4052, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !4061)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{null, !3941, !78, !78, !78, !4054}
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !629, line: 189, size: 192, elements: !4056)
!4056 = !{!4057, !4058, !4059, !4060}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4055, file: !629, line: 189, baseType: !230, size: 32)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4055, file: !629, line: 189, baseType: !230, size: 32, offset: 32)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4055, file: !629, line: 189, baseType: !73, size: 64, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4055, file: !629, line: 189, baseType: !73, size: 64, offset: 128)
!4061 = !{!4062, !4063, !4064, !4065, !4066, !4067, !4068}
!4062 = !DILocalVariable(name: "stream", arg: 1, scope: !4051, file: !632, line: 196, type: !3941)
!4063 = !DILocalVariable(name: "command_name", arg: 2, scope: !4051, file: !632, line: 197, type: !78)
!4064 = !DILocalVariable(name: "package", arg: 3, scope: !4051, file: !632, line: 197, type: !78)
!4065 = !DILocalVariable(name: "version", arg: 4, scope: !4051, file: !632, line: 198, type: !78)
!4066 = !DILocalVariable(name: "authors", arg: 5, scope: !4051, file: !632, line: 198, type: !4054)
!4067 = !DILocalVariable(name: "n_authors", scope: !4051, file: !632, line: 200, type: !75)
!4068 = !DILocalVariable(name: "authtab", scope: !4051, file: !632, line: 201, type: !4069)
!4069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 640, elements: !220)
!4070 = !DILocation(line: 196, column: 23, scope: !4051)
!4071 = !DILocation(line: 197, column: 29, scope: !4051)
!4072 = !DILocation(line: 197, column: 55, scope: !4051)
!4073 = !DILocation(line: 198, column: 29, scope: !4051)
!4074 = !DILocation(line: 198, column: 46, scope: !4051)
!4075 = !DILocation(line: 201, column: 3, scope: !4051)
!4076 = !DILocation(line: 201, column: 15, scope: !4051)
!4077 = !DILocation(line: 200, column: 10, scope: !4051)
!4078 = !DILocation(line: 205, column: 35, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4080, file: !632, line: 203, column: 3)
!4080 = distinct !DILexicalBlock(scope: !4051, file: !632, line: 203, column: 3)
!4081 = !DILocation(line: 205, column: 14, scope: !4079)
!4082 = !DILocation(line: 205, column: 33, scope: !4079)
!4083 = !DILocation(line: 205, column: 67, scope: !4079)
!4084 = !DILocation(line: 203, column: 3, scope: !4080)
!4085 = !DILocation(line: 208, column: 3, scope: !4051)
!4086 = !DILocation(line: 210, column: 1, scope: !4051)
!4087 = distinct !DISubprogram(name: "version_etc", scope: !632, file: !632, line: 227, type: !4088, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !4090)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{null, !3941, !78, !78, !78, null}
!4090 = !{!4091, !4092, !4093, !4094, !4095}
!4091 = !DILocalVariable(name: "stream", arg: 1, scope: !4087, file: !632, line: 227, type: !3941)
!4092 = !DILocalVariable(name: "command_name", arg: 2, scope: !4087, file: !632, line: 228, type: !78)
!4093 = !DILocalVariable(name: "package", arg: 3, scope: !4087, file: !632, line: 228, type: !78)
!4094 = !DILocalVariable(name: "version", arg: 4, scope: !4087, file: !632, line: 229, type: !78)
!4095 = !DILocalVariable(name: "authors", scope: !4087, file: !632, line: 231, type: !4096)
!4096 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1706, line: 46, baseType: !4097)
!4097 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4098, line: 48, baseType: !4099)
!4098 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !629, line: 231, baseType: !4100)
!4100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4055, size: 192, elements: !1077)
!4101 = !DILocation(line: 227, column: 20, scope: !4087)
!4102 = !DILocation(line: 228, column: 26, scope: !4087)
!4103 = !DILocation(line: 228, column: 52, scope: !4087)
!4104 = !DILocation(line: 229, column: 26, scope: !4087)
!4105 = !DILocation(line: 231, column: 3, scope: !4087)
!4106 = !DILocation(line: 231, column: 11, scope: !4087)
!4107 = !DILocation(line: 233, column: 3, scope: !4087)
!4108 = !DILocation(line: 234, column: 3, scope: !4087)
!4109 = !DILocation(line: 235, column: 3, scope: !4087)
!4110 = !DILocation(line: 236, column: 1, scope: !4087)
!4111 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !632, file: !632, line: 239, type: !179, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !166)
!4112 = !DILocation(line: 245, column: 3, scope: !4111)
!4113 = !DILocation(line: 251, column: 3, scope: !4111)
!4114 = !DILocation(line: 256, column: 3, scope: !4111)
!4115 = !DILocation(line: 258, column: 1, scope: !4111)
!4116 = distinct !DISubprogram(name: "xnmalloc", scope: !640, file: !640, line: 105, type: !4117, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !4119)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!73, !75, !75}
!4119 = !{!4120, !4121}
!4120 = !DILocalVariable(name: "n", arg: 1, scope: !4116, file: !640, line: 105, type: !75)
!4121 = !DILocalVariable(name: "s", arg: 2, scope: !4116, file: !640, line: 105, type: !75)
!4122 = !DILocation(line: 105, column: 18, scope: !4116)
!4123 = !DILocation(line: 105, column: 28, scope: !4116)
!4124 = !DILocation(line: 107, column: 7, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4116, file: !640, line: 107, column: 7)
!4126 = !DILocation(line: 107, column: 7, scope: !4116)
!4127 = !DILocation(line: 108, column: 5, scope: !4125)
!4128 = !DILocation(line: 109, column: 21, scope: !4116)
!4129 = !DILocalVariable(name: "n", arg: 1, scope: !4130, file: !4131, line: 39, type: !75)
!4130 = distinct !DISubprogram(name: "xmalloc", scope: !4131, file: !4131, line: 39, type: !4132, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !4134)
!4131 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!73, !75}
!4134 = !{!4129, !4135}
!4135 = !DILocalVariable(name: "p", scope: !4130, file: !4131, line: 41, type: !73)
!4136 = !DILocation(line: 39, column: 17, scope: !4130, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 109, column: 10, scope: !4116)
!4138 = !DILocation(line: 41, column: 13, scope: !4130, inlinedAt: !4137)
!4139 = !DILocation(line: 41, column: 9, scope: !4130, inlinedAt: !4137)
!4140 = !DILocation(line: 42, column: 8, scope: !4141, inlinedAt: !4137)
!4141 = distinct !DILexicalBlock(scope: !4130, file: !4131, line: 42, column: 7)
!4142 = !DILocation(line: 42, column: 15, scope: !4141, inlinedAt: !4137)
!4143 = !DILocation(line: 42, column: 10, scope: !4141, inlinedAt: !4137)
!4144 = !DILocation(line: 43, column: 5, scope: !4141, inlinedAt: !4137)
!4145 = !DILocation(line: 109, column: 3, scope: !4116)
!4146 = !DILocation(line: 39, column: 17, scope: !4130)
!4147 = !DILocation(line: 41, column: 13, scope: !4130)
!4148 = !DILocation(line: 41, column: 9, scope: !4130)
!4149 = !DILocation(line: 42, column: 8, scope: !4141)
!4150 = !DILocation(line: 42, column: 15, scope: !4141)
!4151 = !DILocation(line: 42, column: 10, scope: !4141)
!4152 = !DILocation(line: 43, column: 5, scope: !4141)
!4153 = !DILocation(line: 44, column: 3, scope: !4130)
!4154 = distinct !DISubprogram(name: "xnrealloc", scope: !640, file: !640, line: 118, type: !4155, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !4157)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!73, !73, !75, !75}
!4157 = !{!4158, !4159, !4160}
!4158 = !DILocalVariable(name: "p", arg: 1, scope: !4154, file: !640, line: 118, type: !73)
!4159 = !DILocalVariable(name: "n", arg: 2, scope: !4154, file: !640, line: 118, type: !75)
!4160 = !DILocalVariable(name: "s", arg: 3, scope: !4154, file: !640, line: 118, type: !75)
!4161 = !DILocation(line: 118, column: 18, scope: !4154)
!4162 = !DILocation(line: 118, column: 28, scope: !4154)
!4163 = !DILocation(line: 118, column: 38, scope: !4154)
!4164 = !DILocation(line: 120, column: 7, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4154, file: !640, line: 120, column: 7)
!4166 = !DILocation(line: 120, column: 7, scope: !4154)
!4167 = !DILocation(line: 121, column: 5, scope: !4165)
!4168 = !DILocation(line: 122, column: 25, scope: !4154)
!4169 = !DILocalVariable(name: "p", arg: 1, scope: !4170, file: !4131, line: 51, type: !73)
!4170 = distinct !DISubprogram(name: "xrealloc", scope: !4131, file: !4131, line: 51, type: !4171, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !4173)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!73, !73, !75}
!4173 = !{!4169, !4174}
!4174 = !DILocalVariable(name: "n", arg: 2, scope: !4170, file: !4131, line: 51, type: !75)
!4175 = !DILocation(line: 51, column: 17, scope: !4170, inlinedAt: !4176)
!4176 = distinct !DILocation(line: 122, column: 10, scope: !4154)
!4177 = !DILocation(line: 51, column: 27, scope: !4170, inlinedAt: !4176)
!4178 = !DILocation(line: 53, column: 8, scope: !4179, inlinedAt: !4176)
!4179 = distinct !DILexicalBlock(scope: !4170, file: !4131, line: 53, column: 7)
!4180 = !DILocation(line: 53, column: 13, scope: !4179, inlinedAt: !4176)
!4181 = !DILocation(line: 53, column: 10, scope: !4179, inlinedAt: !4176)
!4182 = !DILocation(line: 57, column: 7, scope: !4183, inlinedAt: !4176)
!4183 = distinct !DILexicalBlock(scope: !4179, file: !4131, line: 54, column: 5)
!4184 = !DILocation(line: 58, column: 7, scope: !4183, inlinedAt: !4176)
!4185 = !DILocation(line: 61, column: 7, scope: !4170, inlinedAt: !4176)
!4186 = !DILocation(line: 62, column: 8, scope: !4187, inlinedAt: !4176)
!4187 = distinct !DILexicalBlock(scope: !4170, file: !4131, line: 62, column: 7)
!4188 = !DILocation(line: 62, column: 13, scope: !4187, inlinedAt: !4176)
!4189 = !DILocation(line: 62, column: 10, scope: !4187, inlinedAt: !4176)
!4190 = !DILocation(line: 63, column: 5, scope: !4187, inlinedAt: !4176)
!4191 = !DILocation(line: 122, column: 3, scope: !4154)
!4192 = !DILocation(line: 51, column: 17, scope: !4170)
!4193 = !DILocation(line: 51, column: 27, scope: !4170)
!4194 = !DILocation(line: 53, column: 8, scope: !4179)
!4195 = !DILocation(line: 53, column: 13, scope: !4179)
!4196 = !DILocation(line: 53, column: 10, scope: !4179)
!4197 = !DILocation(line: 57, column: 7, scope: !4183)
!4198 = !DILocation(line: 58, column: 7, scope: !4183)
!4199 = !DILocation(line: 61, column: 7, scope: !4170)
!4200 = !DILocation(line: 62, column: 8, scope: !4187)
!4201 = !DILocation(line: 62, column: 13, scope: !4187)
!4202 = !DILocation(line: 62, column: 10, scope: !4187)
!4203 = !DILocation(line: 63, column: 5, scope: !4187)
!4204 = !DILocation(line: 65, column: 1, scope: !4170)
!4205 = !DILocation(line: 180, column: 19, scope: !641)
!4206 = !DILocation(line: 180, column: 30, scope: !641)
!4207 = !DILocation(line: 180, column: 41, scope: !641)
!4208 = !DILocation(line: 182, column: 14, scope: !641)
!4209 = !DILocation(line: 182, column: 10, scope: !641)
!4210 = !DILocation(line: 184, column: 9, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !641, file: !640, line: 184, column: 7)
!4212 = !DILocation(line: 184, column: 7, scope: !641)
!4213 = !DILocation(line: 186, column: 13, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4215, file: !640, line: 186, column: 11)
!4215 = distinct !DILexicalBlock(scope: !4211, file: !640, line: 185, column: 5)
!4216 = !DILocation(line: 186, column: 11, scope: !4215)
!4217 = !DILocation(line: 194, column: 30, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4214, file: !640, line: 187, column: 9)
!4219 = !DILocation(line: 195, column: 16, scope: !4218)
!4220 = !DILocation(line: 195, column: 13, scope: !4218)
!4221 = !DILocation(line: 196, column: 9, scope: !4218)
!4222 = !DILocation(line: 204, column: 69, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4224, file: !640, line: 204, column: 11)
!4224 = distinct !DILexicalBlock(scope: !4211, file: !640, line: 199, column: 5)
!4225 = !DILocation(line: 205, column: 11, scope: !4223)
!4226 = !DILocation(line: 204, column: 11, scope: !4224)
!4227 = !DILocation(line: 206, column: 9, scope: !4223)
!4228 = !DILocation(line: 210, column: 7, scope: !641)
!4229 = !DILocation(line: 211, column: 25, scope: !641)
!4230 = !DILocation(line: 51, column: 17, scope: !4170, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 211, column: 10, scope: !641)
!4232 = !DILocation(line: 51, column: 27, scope: !4170, inlinedAt: !4231)
!4233 = !DILocation(line: 53, column: 10, scope: !4179, inlinedAt: !4231)
!4234 = !DILocation(line: 207, column: 14, scope: !4224)
!4235 = !DILocation(line: 207, column: 18, scope: !4224)
!4236 = !DILocation(line: 207, column: 9, scope: !4224)
!4237 = !DILocation(line: 53, column: 8, scope: !4179, inlinedAt: !4231)
!4238 = !DILocation(line: 57, column: 7, scope: !4183, inlinedAt: !4231)
!4239 = !DILocation(line: 58, column: 7, scope: !4183, inlinedAt: !4231)
!4240 = !DILocation(line: 61, column: 7, scope: !4170, inlinedAt: !4231)
!4241 = !DILocation(line: 62, column: 8, scope: !4187, inlinedAt: !4231)
!4242 = !DILocation(line: 62, column: 13, scope: !4187, inlinedAt: !4231)
!4243 = !DILocation(line: 62, column: 10, scope: !4187, inlinedAt: !4231)
!4244 = !DILocation(line: 63, column: 5, scope: !4187, inlinedAt: !4231)
!4245 = !DILocation(line: 211, column: 3, scope: !641)
!4246 = distinct !DISubprogram(name: "xcharalloc", scope: !640, file: !640, line: 220, type: !3217, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !4247)
!4247 = !{!4248}
!4248 = !DILocalVariable(name: "n", arg: 1, scope: !4246, file: !640, line: 220, type: !75)
!4249 = !DILocation(line: 220, column: 20, scope: !4246)
!4250 = !DILocation(line: 39, column: 17, scope: !4130, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 222, column: 10, scope: !4246)
!4252 = !DILocation(line: 41, column: 13, scope: !4130, inlinedAt: !4251)
!4253 = !DILocation(line: 41, column: 9, scope: !4130, inlinedAt: !4251)
!4254 = !DILocation(line: 42, column: 8, scope: !4141, inlinedAt: !4251)
!4255 = !DILocation(line: 42, column: 15, scope: !4141, inlinedAt: !4251)
!4256 = !DILocation(line: 42, column: 10, scope: !4141, inlinedAt: !4251)
!4257 = !DILocation(line: 43, column: 5, scope: !4141, inlinedAt: !4251)
!4258 = !DILocation(line: 222, column: 3, scope: !4246)
!4259 = distinct !DISubprogram(name: "x2realloc", scope: !4131, file: !4131, line: 74, type: !4260, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !4262)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!73, !73, !74}
!4262 = !{!4263, !4264}
!4263 = !DILocalVariable(name: "p", arg: 1, scope: !4259, file: !4131, line: 74, type: !73)
!4264 = !DILocalVariable(name: "pn", arg: 2, scope: !4259, file: !4131, line: 74, type: !74)
!4265 = !DILocation(line: 74, column: 18, scope: !4259)
!4266 = !DILocation(line: 74, column: 29, scope: !4259)
!4267 = !DILocation(line: 180, column: 19, scope: !641, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 76, column: 10, scope: !4259)
!4269 = !DILocation(line: 180, column: 30, scope: !641, inlinedAt: !4268)
!4270 = !DILocation(line: 180, column: 41, scope: !641, inlinedAt: !4268)
!4271 = !DILocation(line: 182, column: 14, scope: !641, inlinedAt: !4268)
!4272 = !DILocation(line: 182, column: 10, scope: !641, inlinedAt: !4268)
!4273 = !DILocation(line: 184, column: 9, scope: !4211, inlinedAt: !4268)
!4274 = !DILocation(line: 184, column: 7, scope: !641, inlinedAt: !4268)
!4275 = !DILocation(line: 186, column: 13, scope: !4214, inlinedAt: !4268)
!4276 = !DILocation(line: 186, column: 11, scope: !4215, inlinedAt: !4268)
!4277 = !DILocation(line: 210, column: 7, scope: !641, inlinedAt: !4268)
!4278 = !DILocation(line: 51, column: 17, scope: !4170, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 211, column: 10, scope: !641, inlinedAt: !4268)
!4280 = !DILocation(line: 51, column: 27, scope: !4170, inlinedAt: !4279)
!4281 = !DILocation(line: 53, column: 10, scope: !4179, inlinedAt: !4279)
!4282 = !DILocation(line: 205, column: 11, scope: !4223, inlinedAt: !4268)
!4283 = !DILocation(line: 204, column: 11, scope: !4224, inlinedAt: !4268)
!4284 = !DILocation(line: 206, column: 9, scope: !4223, inlinedAt: !4268)
!4285 = !DILocation(line: 207, column: 14, scope: !4224, inlinedAt: !4268)
!4286 = !DILocation(line: 207, column: 18, scope: !4224, inlinedAt: !4268)
!4287 = !DILocation(line: 207, column: 9, scope: !4224, inlinedAt: !4268)
!4288 = !DILocation(line: 53, column: 8, scope: !4179, inlinedAt: !4279)
!4289 = !DILocation(line: 57, column: 7, scope: !4183, inlinedAt: !4279)
!4290 = !DILocation(line: 58, column: 7, scope: !4183, inlinedAt: !4279)
!4291 = !DILocation(line: 61, column: 7, scope: !4170, inlinedAt: !4279)
!4292 = !DILocation(line: 62, column: 8, scope: !4187, inlinedAt: !4279)
!4293 = !DILocation(line: 62, column: 13, scope: !4187, inlinedAt: !4279)
!4294 = !DILocation(line: 62, column: 10, scope: !4187, inlinedAt: !4279)
!4295 = !DILocation(line: 63, column: 5, scope: !4187, inlinedAt: !4279)
!4296 = !DILocation(line: 76, column: 3, scope: !4259)
!4297 = distinct !DISubprogram(name: "xzalloc", scope: !4131, file: !4131, line: 84, type: !4132, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !4298)
!4298 = !{!4299}
!4299 = !DILocalVariable(name: "s", arg: 1, scope: !4297, file: !4131, line: 84, type: !75)
!4300 = !DILocation(line: 84, column: 17, scope: !4297)
!4301 = !DILocation(line: 39, column: 17, scope: !4130, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 86, column: 18, scope: !4297)
!4303 = !DILocation(line: 41, column: 13, scope: !4130, inlinedAt: !4302)
!4304 = !DILocation(line: 41, column: 9, scope: !4130, inlinedAt: !4302)
!4305 = !DILocation(line: 42, column: 8, scope: !4141, inlinedAt: !4302)
!4306 = !DILocation(line: 42, column: 15, scope: !4141, inlinedAt: !4302)
!4307 = !DILocation(line: 42, column: 10, scope: !4141, inlinedAt: !4302)
!4308 = !DILocation(line: 43, column: 5, scope: !4141, inlinedAt: !4302)
!4309 = !DILocation(line: 86, column: 10, scope: !4297)
!4310 = !DILocation(line: 86, column: 3, scope: !4297)
!4311 = distinct !DISubprogram(name: "xcalloc", scope: !4131, file: !4131, line: 93, type: !4117, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !4312)
!4312 = !{!4313, !4314, !4315}
!4313 = !DILocalVariable(name: "n", arg: 1, scope: !4311, file: !4131, line: 93, type: !75)
!4314 = !DILocalVariable(name: "s", arg: 2, scope: !4311, file: !4131, line: 93, type: !75)
!4315 = !DILocalVariable(name: "p", scope: !4311, file: !4131, line: 95, type: !73)
!4316 = !DILocation(line: 93, column: 17, scope: !4311)
!4317 = !DILocation(line: 93, column: 27, scope: !4311)
!4318 = !DILocation(line: 100, column: 7, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4311, file: !4131, line: 100, column: 7)
!4320 = !DILocation(line: 101, column: 7, scope: !4319)
!4321 = !DILocation(line: 101, column: 18, scope: !4319)
!4322 = !DILocation(line: 95, column: 9, scope: !4311)
!4323 = !DILocation(line: 101, column: 16, scope: !4319)
!4324 = !DILocation(line: 100, column: 7, scope: !4311)
!4325 = !DILocation(line: 102, column: 5, scope: !4319)
!4326 = !DILocation(line: 103, column: 3, scope: !4311)
!4327 = distinct !DISubprogram(name: "xmemdup", scope: !4131, file: !4131, line: 111, type: !4328, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !4330)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!73, !2165, !75}
!4330 = !{!4331, !4332}
!4331 = !DILocalVariable(name: "p", arg: 1, scope: !4327, file: !4131, line: 111, type: !2165)
!4332 = !DILocalVariable(name: "s", arg: 2, scope: !4327, file: !4131, line: 111, type: !75)
!4333 = !DILocation(line: 111, column: 22, scope: !4327)
!4334 = !DILocation(line: 111, column: 32, scope: !4327)
!4335 = !DILocation(line: 39, column: 17, scope: !4130, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 113, column: 18, scope: !4327)
!4337 = !DILocation(line: 41, column: 13, scope: !4130, inlinedAt: !4336)
!4338 = !DILocation(line: 41, column: 9, scope: !4130, inlinedAt: !4336)
!4339 = !DILocation(line: 42, column: 8, scope: !4141, inlinedAt: !4336)
!4340 = !DILocation(line: 42, column: 15, scope: !4141, inlinedAt: !4336)
!4341 = !DILocation(line: 42, column: 10, scope: !4141, inlinedAt: !4336)
!4342 = !DILocation(line: 43, column: 5, scope: !4141, inlinedAt: !4336)
!4343 = !DILocation(line: 113, column: 10, scope: !4327)
!4344 = !DILocation(line: 113, column: 3, scope: !4327)
!4345 = distinct !DISubprogram(name: "xstrdup", scope: !4131, file: !4131, line: 119, type: !3417, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !4346)
!4346 = !{!4347}
!4347 = !DILocalVariable(name: "string", arg: 1, scope: !4345, file: !4131, line: 119, type: !78)
!4348 = !DILocation(line: 119, column: 22, scope: !4345)
!4349 = !DILocation(line: 121, column: 27, scope: !4345)
!4350 = !DILocation(line: 121, column: 43, scope: !4345)
!4351 = !DILocation(line: 111, column: 22, scope: !4327, inlinedAt: !4352)
!4352 = distinct !DILocation(line: 121, column: 10, scope: !4345)
!4353 = !DILocation(line: 111, column: 32, scope: !4327, inlinedAt: !4352)
!4354 = !DILocation(line: 39, column: 17, scope: !4130, inlinedAt: !4355)
!4355 = distinct !DILocation(line: 113, column: 18, scope: !4327, inlinedAt: !4352)
!4356 = !DILocation(line: 41, column: 13, scope: !4130, inlinedAt: !4355)
!4357 = !DILocation(line: 41, column: 9, scope: !4130, inlinedAt: !4355)
!4358 = !DILocation(line: 42, column: 8, scope: !4141, inlinedAt: !4355)
!4359 = !DILocation(line: 42, column: 15, scope: !4141, inlinedAt: !4355)
!4360 = !DILocation(line: 42, column: 10, scope: !4141, inlinedAt: !4355)
!4361 = !DILocation(line: 43, column: 5, scope: !4141, inlinedAt: !4355)
!4362 = !DILocation(line: 113, column: 10, scope: !4327, inlinedAt: !4352)
!4363 = !DILocation(line: 121, column: 3, scope: !4345)
!4364 = distinct !DISubprogram(name: "xalloc_die", scope: !4365, file: !4365, line: 32, type: !179, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !652, variables: !166)
!4365 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4366 = !DILocation(line: 34, column: 10, scope: !4364)
!4367 = !DILocation(line: 34, column: 33, scope: !4364)
!4368 = !DILocation(line: 34, column: 3, scope: !4364)
!4369 = !DILocation(line: 40, column: 3, scope: !4364)
!4370 = distinct !DISubprogram(name: "xmemcoll", scope: !4371, file: !4371, line: 54, type: !4372, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !654, variables: !4374)
!4371 = !DIFile(filename: "lib/xmemcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!82, !81, !75, !81, !75}
!4374 = !{!4375, !4376, !4377, !4378, !4379, !4380}
!4375 = !DILocalVariable(name: "s1", arg: 1, scope: !4370, file: !4371, line: 54, type: !81)
!4376 = !DILocalVariable(name: "s1len", arg: 2, scope: !4370, file: !4371, line: 54, type: !75)
!4377 = !DILocalVariable(name: "s2", arg: 3, scope: !4370, file: !4371, line: 54, type: !81)
!4378 = !DILocalVariable(name: "s2len", arg: 4, scope: !4370, file: !4371, line: 54, type: !75)
!4379 = !DILocalVariable(name: "diff", scope: !4370, file: !4371, line: 56, type: !82)
!4380 = !DILocalVariable(name: "collation_errno", scope: !4370, file: !4371, line: 57, type: !82)
!4381 = !DILocation(line: 54, column: 17, scope: !4370)
!4382 = !DILocation(line: 54, column: 28, scope: !4370)
!4383 = !DILocation(line: 54, column: 41, scope: !4370)
!4384 = !DILocation(line: 54, column: 52, scope: !4370)
!4385 = !DILocation(line: 56, column: 14, scope: !4370)
!4386 = !DILocation(line: 56, column: 7, scope: !4370)
!4387 = !DILocation(line: 57, column: 25, scope: !4370)
!4388 = !DILocation(line: 57, column: 7, scope: !4370)
!4389 = !DILocation(line: 58, column: 7, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4370, file: !4371, line: 58, column: 7)
!4391 = !DILocation(line: 58, column: 7, scope: !4370)
!4392 = !DILocalVariable(name: "collation_errno", arg: 1, scope: !4393, file: !4371, line: 35, type: !82)
!4393 = distinct !DISubprogram(name: "collate_error", scope: !4371, file: !4371, line: 35, type: !4394, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !654, variables: !4396)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{null, !82, !78, !75, !78, !75}
!4396 = !{!4392, !4397, !4398, !4399, !4400}
!4397 = !DILocalVariable(name: "s1", arg: 2, scope: !4393, file: !4371, line: 36, type: !78)
!4398 = !DILocalVariable(name: "s1len", arg: 3, scope: !4393, file: !4371, line: 36, type: !75)
!4399 = !DILocalVariable(name: "s2", arg: 4, scope: !4393, file: !4371, line: 37, type: !78)
!4400 = !DILocalVariable(name: "s2len", arg: 5, scope: !4393, file: !4371, line: 37, type: !75)
!4401 = !DILocation(line: 35, column: 20, scope: !4393, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 59, column: 5, scope: !4390)
!4403 = !DILocation(line: 36, column: 28, scope: !4393, inlinedAt: !4402)
!4404 = !DILocation(line: 36, column: 39, scope: !4393, inlinedAt: !4402)
!4405 = !DILocation(line: 37, column: 28, scope: !4393, inlinedAt: !4402)
!4406 = !DILocation(line: 37, column: 39, scope: !4393, inlinedAt: !4402)
!4407 = !DILocation(line: 39, column: 30, scope: !4393, inlinedAt: !4402)
!4408 = !DILocation(line: 39, column: 3, scope: !4393, inlinedAt: !4402)
!4409 = !DILocation(line: 40, column: 16, scope: !4393, inlinedAt: !4402)
!4410 = !DILocation(line: 40, column: 3, scope: !4393, inlinedAt: !4402)
!4411 = !DILocation(line: 41, column: 10, scope: !4393, inlinedAt: !4402)
!4412 = !DILocation(line: 42, column: 10, scope: !4393, inlinedAt: !4402)
!4413 = !DILocation(line: 43, column: 10, scope: !4393, inlinedAt: !4402)
!4414 = !DILocation(line: 44, column: 10, scope: !4393, inlinedAt: !4402)
!4415 = !DILocation(line: 41, column: 3, scope: !4393, inlinedAt: !4402)
!4416 = !DILocation(line: 59, column: 5, scope: !4390)
!4417 = !DILocation(line: 60, column: 3, scope: !4370)
!4418 = distinct !DISubprogram(name: "xmemcoll0", scope: !4371, file: !4371, line: 69, type: !4419, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !654, variables: !4421)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!82, !78, !75, !78, !75}
!4421 = !{!4422, !4423, !4424, !4425, !4426, !4427}
!4422 = !DILocalVariable(name: "s1", arg: 1, scope: !4418, file: !4371, line: 69, type: !78)
!4423 = !DILocalVariable(name: "s1size", arg: 2, scope: !4418, file: !4371, line: 69, type: !75)
!4424 = !DILocalVariable(name: "s2", arg: 3, scope: !4418, file: !4371, line: 69, type: !78)
!4425 = !DILocalVariable(name: "s2size", arg: 4, scope: !4418, file: !4371, line: 69, type: !75)
!4426 = !DILocalVariable(name: "diff", scope: !4418, file: !4371, line: 71, type: !82)
!4427 = !DILocalVariable(name: "collation_errno", scope: !4418, file: !4371, line: 72, type: !82)
!4428 = !DILocation(line: 69, column: 24, scope: !4418)
!4429 = !DILocation(line: 69, column: 35, scope: !4418)
!4430 = !DILocation(line: 69, column: 55, scope: !4418)
!4431 = !DILocation(line: 69, column: 66, scope: !4418)
!4432 = !DILocation(line: 71, column: 14, scope: !4418)
!4433 = !DILocation(line: 71, column: 7, scope: !4418)
!4434 = !DILocation(line: 72, column: 25, scope: !4418)
!4435 = !DILocation(line: 72, column: 7, scope: !4418)
!4436 = !DILocation(line: 73, column: 7, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4418, file: !4371, line: 73, column: 7)
!4438 = !DILocation(line: 73, column: 7, scope: !4418)
!4439 = !DILocation(line: 74, column: 48, scope: !4437)
!4440 = !DILocation(line: 74, column: 64, scope: !4437)
!4441 = !DILocation(line: 35, column: 20, scope: !4393, inlinedAt: !4442)
!4442 = distinct !DILocation(line: 74, column: 5, scope: !4437)
!4443 = !DILocation(line: 36, column: 28, scope: !4393, inlinedAt: !4442)
!4444 = !DILocation(line: 36, column: 39, scope: !4393, inlinedAt: !4442)
!4445 = !DILocation(line: 37, column: 28, scope: !4393, inlinedAt: !4442)
!4446 = !DILocation(line: 37, column: 39, scope: !4393, inlinedAt: !4442)
!4447 = !DILocation(line: 39, column: 30, scope: !4393, inlinedAt: !4442)
!4448 = !DILocation(line: 39, column: 3, scope: !4393, inlinedAt: !4442)
!4449 = !DILocation(line: 40, column: 16, scope: !4393, inlinedAt: !4442)
!4450 = !DILocation(line: 40, column: 3, scope: !4393, inlinedAt: !4442)
!4451 = !DILocation(line: 41, column: 10, scope: !4393, inlinedAt: !4442)
!4452 = !DILocation(line: 42, column: 10, scope: !4393, inlinedAt: !4442)
!4453 = !DILocation(line: 43, column: 10, scope: !4393, inlinedAt: !4442)
!4454 = !DILocation(line: 44, column: 10, scope: !4393, inlinedAt: !4442)
!4455 = !DILocation(line: 41, column: 3, scope: !4393, inlinedAt: !4442)
!4456 = !DILocation(line: 74, column: 5, scope: !4437)
!4457 = !DILocation(line: 75, column: 3, scope: !4418)
!4458 = distinct !DISubprogram(name: "xstrtoul", scope: !4459, file: !4459, line: 88, type: !4460, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !656, variables: !4464)
!4459 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!4462, !78, !733, !82, !4463, !78}
!4462 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !20, line: 39, baseType: !19)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!4464 = !{!4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4477, !4478, !4481, !4482}
!4465 = !DILocalVariable(name: "s", arg: 1, scope: !4458, file: !4459, line: 88, type: !78)
!4466 = !DILocalVariable(name: "ptr", arg: 2, scope: !4458, file: !4459, line: 88, type: !733)
!4467 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4458, file: !4459, line: 88, type: !82)
!4468 = !DILocalVariable(name: "val", arg: 4, scope: !4458, file: !4459, line: 89, type: !4463)
!4469 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4458, file: !4459, line: 89, type: !78)
!4470 = !DILocalVariable(name: "t_ptr", scope: !4458, file: !4459, line: 91, type: !81)
!4471 = !DILocalVariable(name: "p", scope: !4458, file: !4459, line: 92, type: !733)
!4472 = !DILocalVariable(name: "tmp", scope: !4458, file: !4459, line: 93, type: !77)
!4473 = !DILocalVariable(name: "err", scope: !4458, file: !4459, line: 94, type: !4462)
!4474 = !DILocalVariable(name: "q", scope: !4475, file: !4459, line: 104, type: !78)
!4475 = distinct !DILexicalBlock(scope: !4476, file: !4459, line: 103, column: 5)
!4476 = distinct !DILexicalBlock(scope: !4458, file: !4459, line: 102, column: 7)
!4477 = !DILocalVariable(name: "ch", scope: !4475, file: !4459, line: 105, type: !84)
!4478 = !DILocalVariable(name: "base", scope: !4479, file: !4459, line: 141, type: !82)
!4479 = distinct !DILexicalBlock(scope: !4480, file: !4459, line: 140, column: 5)
!4480 = distinct !DILexicalBlock(scope: !4458, file: !4459, line: 139, column: 7)
!4481 = !DILocalVariable(name: "suffixes", scope: !4479, file: !4459, line: 142, type: !82)
!4482 = !DILocalVariable(name: "overflow", scope: !4479, file: !4459, line: 143, type: !4462)
!4483 = !DILocation(line: 88, column: 24, scope: !4458)
!4484 = !DILocation(line: 88, column: 34, scope: !4458)
!4485 = !DILocation(line: 88, column: 43, scope: !4458)
!4486 = !DILocation(line: 89, column: 24, scope: !4458)
!4487 = !DILocation(line: 89, column: 41, scope: !4458)
!4488 = !DILocation(line: 91, column: 3, scope: !4458)
!4489 = !DILocation(line: 94, column: 16, scope: !4458)
!4490 = !DILocation(line: 96, column: 3, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4492, file: !4459, line: 96, column: 3)
!4492 = distinct !DILexicalBlock(scope: !4458, file: !4459, line: 96, column: 3)
!4493 = !DILocation(line: 98, column: 8, scope: !4458)
!4494 = !DILocation(line: 92, column: 10, scope: !4458)
!4495 = !DILocation(line: 100, column: 3, scope: !4458)
!4496 = !DILocation(line: 100, column: 9, scope: !4458)
!4497 = !DILocation(line: 104, column: 19, scope: !4475)
!4498 = !DIExpression(DW_OP_deref)
!4499 = !DILocation(line: 105, column: 21, scope: !4475)
!4500 = !DILocation(line: 106, column: 14, scope: !4475)
!4501 = !DILocation(line: 106, column: 7, scope: !4475)
!4502 = !DILocation(line: 107, column: 15, scope: !4475)
!4503 = distinct !{!4503, !4501, !4504}
!4504 = !DILocation(line: 107, column: 17, scope: !4475)
!4505 = !DILocation(line: 108, column: 14, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4475, file: !4459, line: 108, column: 11)
!4507 = !DILocation(line: 112, column: 9, scope: !4458)
!4508 = !DILocation(line: 93, column: 14, scope: !4458)
!4509 = !DILocation(line: 114, column: 7, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4458, file: !4459, line: 114, column: 7)
!4511 = !DILocation(line: 114, column: 10, scope: !4510)
!4512 = !DILocation(line: 114, column: 7, scope: !4458)
!4513 = !DILocation(line: 118, column: 11, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4515, file: !4459, line: 118, column: 11)
!4515 = distinct !DILexicalBlock(scope: !4510, file: !4459, line: 115, column: 5)
!4516 = !DILocation(line: 118, column: 26, scope: !4514)
!4517 = !DILocation(line: 118, column: 29, scope: !4514)
!4518 = !DILocation(line: 118, column: 33, scope: !4514)
!4519 = !DILocation(line: 118, column: 36, scope: !4514)
!4520 = !DILocation(line: 118, column: 11, scope: !4515)
!4521 = !DILocation(line: 123, column: 12, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4510, file: !4459, line: 123, column: 12)
!4523 = !DILocation(line: 123, column: 12, scope: !4510)
!4524 = !DILocation(line: 128, column: 5, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4522, file: !4459, line: 124, column: 5)
!4526 = !DILocation(line: 133, column: 8, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4458, file: !4459, line: 133, column: 7)
!4528 = !DILocation(line: 133, column: 7, scope: !4458)
!4529 = !DILocation(line: 135, column: 12, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4527, file: !4459, line: 134, column: 5)
!4531 = !DILocation(line: 136, column: 7, scope: !4530)
!4532 = !DILocation(line: 139, column: 7, scope: !4480)
!4533 = !DILocation(line: 139, column: 11, scope: !4480)
!4534 = !DILocation(line: 139, column: 7, scope: !4458)
!4535 = !DILocation(line: 141, column: 11, scope: !4479)
!4536 = !DILocation(line: 142, column: 11, scope: !4479)
!4537 = !DILocation(line: 145, column: 12, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4479, file: !4459, line: 145, column: 11)
!4539 = !DILocation(line: 145, column: 11, scope: !4479)
!4540 = !DILocation(line: 147, column: 16, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4538, file: !4459, line: 146, column: 9)
!4542 = !DILocation(line: 148, column: 22, scope: !4541)
!4543 = !DILocation(line: 148, column: 11, scope: !4541)
!4544 = !DILocation(line: 151, column: 7, scope: !4479)
!4545 = !DILocation(line: 163, column: 15, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4547, file: !4459, line: 163, column: 15)
!4547 = distinct !DILexicalBlock(scope: !4479, file: !4459, line: 152, column: 9)
!4548 = !DILocation(line: 163, column: 15, scope: !4547)
!4549 = !DILocation(line: 164, column: 21, scope: !4546)
!4550 = !DILocation(line: 164, column: 13, scope: !4546)
!4551 = !DILocation(line: 167, column: 21, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4553, file: !4459, line: 167, column: 21)
!4553 = distinct !DILexicalBlock(scope: !4546, file: !4459, line: 165, column: 15)
!4554 = !DILocation(line: 167, column: 29, scope: !4552)
!4555 = !DILocation(line: 167, column: 21, scope: !4553)
!4556 = !DILocation(line: 175, column: 17, scope: !4553)
!4557 = !DILocation(line: 179, column: 7, scope: !4479)
!4558 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4559, file: !4459, line: 60, type: !82)
!4559 = distinct !DISubprogram(name: "bkm_scale", scope: !4459, file: !4459, line: 60, type: !4560, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !656, variables: !4562)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!4462, !4463, !82}
!4562 = !{!4563, !4558}
!4563 = !DILocalVariable(name: "x", arg: 1, scope: !4559, file: !4459, line: 60, type: !4463)
!4564 = !DILocation(line: 60, column: 31, scope: !4559, inlinedAt: !4565)
!4565 = distinct !DILocation(line: 182, column: 22, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4479, file: !4459, line: 180, column: 9)
!4567 = !DILocation(line: 67, column: 39, scope: !4568, inlinedAt: !4565)
!4568 = distinct !DILexicalBlock(scope: !4559, file: !4459, line: 67, column: 7)
!4569 = !DILocation(line: 72, column: 6, scope: !4559, inlinedAt: !4565)
!4570 = !DILocation(line: 67, column: 7, scope: !4559, inlinedAt: !4565)
!4571 = !DILocation(line: 143, column: 20, scope: !4479)
!4572 = !DILocation(line: 183, column: 11, scope: !4566)
!4573 = !DILocation(line: 60, column: 31, scope: !4559, inlinedAt: !4574)
!4574 = distinct !DILocation(line: 189, column: 22, scope: !4566)
!4575 = !DILocation(line: 67, column: 39, scope: !4568, inlinedAt: !4574)
!4576 = !DILocation(line: 72, column: 6, scope: !4559, inlinedAt: !4574)
!4577 = !DILocation(line: 67, column: 7, scope: !4559, inlinedAt: !4574)
!4578 = !DILocation(line: 190, column: 11, scope: !4566)
!4579 = !DILocalVariable(name: "power", arg: 3, scope: !4580, file: !4459, line: 77, type: !82)
!4580 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4459, file: !4459, line: 77, type: !4581, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !656, variables: !4583)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!4462, !4463, !82, !82}
!4583 = !{!4584, !4585, !4579, !4586}
!4584 = !DILocalVariable(name: "x", arg: 1, scope: !4580, file: !4459, line: 77, type: !4463)
!4585 = !DILocalVariable(name: "base", arg: 2, scope: !4580, file: !4459, line: 77, type: !82)
!4586 = !DILocalVariable(name: "err", scope: !4580, file: !4459, line: 79, type: !4462)
!4587 = !DILocation(line: 77, column: 50, scope: !4580, inlinedAt: !4588)
!4588 = distinct !DILocation(line: 197, column: 22, scope: !4566)
!4589 = !DILocation(line: 79, column: 16, scope: !4580, inlinedAt: !4588)
!4590 = !DILocation(line: 67, column: 39, scope: !4568, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 81, column: 12, scope: !4580, inlinedAt: !4588)
!4592 = !DILocation(line: 72, column: 6, scope: !4559, inlinedAt: !4591)
!4593 = !DILocation(line: 67, column: 7, scope: !4559, inlinedAt: !4591)
!4594 = !DILocation(line: 81, column: 9, scope: !4580, inlinedAt: !4588)
!4595 = !DILocation(line: 241, column: 11, scope: !4479)
!4596 = !DILocation(line: 77, column: 50, scope: !4580, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 202, column: 22, scope: !4566)
!4598 = !DILocation(line: 79, column: 16, scope: !4580, inlinedAt: !4597)
!4599 = !DILocation(line: 67, column: 39, scope: !4568, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 81, column: 12, scope: !4580, inlinedAt: !4597)
!4601 = !DILocation(line: 72, column: 6, scope: !4559, inlinedAt: !4600)
!4602 = !DILocation(line: 67, column: 7, scope: !4559, inlinedAt: !4600)
!4603 = !DILocation(line: 81, column: 9, scope: !4580, inlinedAt: !4597)
!4604 = !DILocation(line: 77, column: 50, scope: !4580, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 207, column: 22, scope: !4566)
!4606 = !DILocation(line: 79, column: 16, scope: !4580, inlinedAt: !4605)
!4607 = !DILocation(line: 67, column: 39, scope: !4568, inlinedAt: !4608)
!4608 = distinct !DILocation(line: 81, column: 12, scope: !4580, inlinedAt: !4605)
!4609 = !DILocation(line: 72, column: 6, scope: !4559, inlinedAt: !4608)
!4610 = !DILocation(line: 67, column: 7, scope: !4559, inlinedAt: !4608)
!4611 = !DILocation(line: 77, column: 50, scope: !4580, inlinedAt: !4612)
!4612 = distinct !DILocation(line: 212, column: 22, scope: !4566)
!4613 = !DILocation(line: 79, column: 16, scope: !4580, inlinedAt: !4612)
!4614 = !DILocation(line: 67, column: 39, scope: !4568, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 81, column: 12, scope: !4580, inlinedAt: !4612)
!4616 = !DILocation(line: 72, column: 6, scope: !4559, inlinedAt: !4615)
!4617 = !DILocation(line: 67, column: 7, scope: !4559, inlinedAt: !4615)
!4618 = !DILocation(line: 81, column: 9, scope: !4580, inlinedAt: !4612)
!4619 = !DILocation(line: 77, column: 50, scope: !4580, inlinedAt: !4620)
!4620 = distinct !DILocation(line: 216, column: 22, scope: !4566)
!4621 = !DILocation(line: 79, column: 16, scope: !4580, inlinedAt: !4620)
!4622 = !DILocation(line: 67, column: 39, scope: !4568, inlinedAt: !4623)
!4623 = distinct !DILocation(line: 81, column: 12, scope: !4580, inlinedAt: !4620)
!4624 = !DILocation(line: 72, column: 6, scope: !4559, inlinedAt: !4623)
!4625 = !DILocation(line: 67, column: 7, scope: !4559, inlinedAt: !4623)
!4626 = !DILocation(line: 81, column: 9, scope: !4580, inlinedAt: !4620)
!4627 = !DILocation(line: 77, column: 50, scope: !4580, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 221, column: 22, scope: !4566)
!4629 = !DILocation(line: 79, column: 16, scope: !4580, inlinedAt: !4628)
!4630 = !DILocation(line: 67, column: 39, scope: !4568, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 81, column: 12, scope: !4580, inlinedAt: !4628)
!4632 = !DILocation(line: 72, column: 6, scope: !4559, inlinedAt: !4631)
!4633 = !DILocation(line: 67, column: 7, scope: !4559, inlinedAt: !4631)
!4634 = !DILocation(line: 81, column: 9, scope: !4580, inlinedAt: !4628)
!4635 = !DILocation(line: 60, column: 31, scope: !4559, inlinedAt: !4636)
!4636 = distinct !DILocation(line: 225, column: 22, scope: !4566)
!4637 = !DILocation(line: 67, column: 39, scope: !4568, inlinedAt: !4636)
!4638 = !DILocation(line: 72, column: 6, scope: !4559, inlinedAt: !4636)
!4639 = !DILocation(line: 67, column: 7, scope: !4559, inlinedAt: !4636)
!4640 = !DILocation(line: 226, column: 11, scope: !4566)
!4641 = !DILocation(line: 77, column: 50, scope: !4580, inlinedAt: !4642)
!4642 = distinct !DILocation(line: 229, column: 22, scope: !4566)
!4643 = !DILocation(line: 79, column: 16, scope: !4580, inlinedAt: !4642)
!4644 = !DILocation(line: 67, column: 39, scope: !4568, inlinedAt: !4645)
!4645 = distinct !DILocation(line: 81, column: 12, scope: !4580, inlinedAt: !4642)
!4646 = !DILocation(line: 72, column: 6, scope: !4559, inlinedAt: !4645)
!4647 = !DILocation(line: 67, column: 7, scope: !4559, inlinedAt: !4645)
!4648 = !DILocation(line: 81, column: 9, scope: !4580, inlinedAt: !4642)
!4649 = !DILocation(line: 77, column: 50, scope: !4580, inlinedAt: !4650)
!4650 = distinct !DILocation(line: 233, column: 22, scope: !4566)
!4651 = !DILocation(line: 79, column: 16, scope: !4580, inlinedAt: !4650)
!4652 = !DILocation(line: 67, column: 39, scope: !4568, inlinedAt: !4653)
!4653 = distinct !DILocation(line: 81, column: 12, scope: !4580, inlinedAt: !4650)
!4654 = !DILocation(line: 72, column: 6, scope: !4559, inlinedAt: !4653)
!4655 = !DILocation(line: 67, column: 7, scope: !4559, inlinedAt: !4653)
!4656 = !DILocation(line: 81, column: 9, scope: !4580, inlinedAt: !4650)
!4657 = !DILocation(line: 237, column: 16, scope: !4566)
!4658 = !DILocation(line: 238, column: 22, scope: !4566)
!4659 = !DILocation(line: 238, column: 11, scope: !4566)
!4660 = !DILocation(line: 242, column: 10, scope: !4479)
!4661 = !DILocation(line: 243, column: 11, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4479, file: !4459, line: 243, column: 11)
!4663 = !DILocation(line: 244, column: 13, scope: !4662)
!4664 = !DILocation(line: 243, column: 11, scope: !4479)
!4665 = !DILocation(line: 247, column: 8, scope: !4458)
!4666 = !DILocation(line: 248, column: 3, scope: !4458)
!4667 = !DILocation(line: 249, column: 1, scope: !4458)
!4668 = distinct !DISubprogram(name: "rpl_calloc", scope: !4669, file: !4669, line: 42, type: !4117, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !4670)
!4669 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4670 = !{!4671, !4672, !4673, !4674}
!4671 = !DILocalVariable(name: "n", arg: 1, scope: !4668, file: !4669, line: 42, type: !75)
!4672 = !DILocalVariable(name: "s", arg: 2, scope: !4668, file: !4669, line: 42, type: !75)
!4673 = !DILocalVariable(name: "result", scope: !4668, file: !4669, line: 44, type: !73)
!4674 = !DILocalVariable(name: "bytes", scope: !4675, file: !4669, line: 56, type: !75)
!4675 = distinct !DILexicalBlock(scope: !4676, file: !4669, line: 53, column: 5)
!4676 = distinct !DILexicalBlock(scope: !4668, file: !4669, line: 47, column: 7)
!4677 = !DILocation(line: 42, column: 20, scope: !4668)
!4678 = !DILocation(line: 42, column: 30, scope: !4668)
!4679 = !DILocation(line: 47, column: 9, scope: !4676)
!4680 = !DILocation(line: 47, column: 19, scope: !4676)
!4681 = !DILocation(line: 47, column: 14, scope: !4676)
!4682 = !DILocation(line: 56, column: 24, scope: !4675)
!4683 = !DILocation(line: 56, column: 14, scope: !4675)
!4684 = !DILocation(line: 57, column: 17, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4675, file: !4669, line: 57, column: 11)
!4686 = !DILocation(line: 57, column: 21, scope: !4685)
!4687 = !DILocation(line: 57, column: 11, scope: !4675)
!4688 = !DILocation(line: 59, column: 11, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4685, file: !4669, line: 58, column: 9)
!4690 = !DILocation(line: 59, column: 17, scope: !4689)
!4691 = !DILocation(line: 65, column: 12, scope: !4668)
!4692 = !DILocation(line: 44, column: 9, scope: !4668)
!4693 = !DILocation(line: 72, column: 3, scope: !4668)
!4694 = !DILocation(line: 73, column: 1, scope: !4668)
!4695 = distinct !DISubprogram(name: "rpl_fclose", scope: !4696, file: !4696, line: 56, type: !4697, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !662, variables: !4739)
!4696 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!82, !4699}
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1042, line: 7, baseType: !4701)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1044, line: 241, size: 1728, elements: !4702)
!4702 = !{!4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4701, file: !1044, line: 242, baseType: !82, size: 32)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4701, file: !1044, line: 247, baseType: !81, size: 64, offset: 64)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4701, file: !1044, line: 248, baseType: !81, size: 64, offset: 128)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4701, file: !1044, line: 249, baseType: !81, size: 64, offset: 192)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4701, file: !1044, line: 250, baseType: !81, size: 64, offset: 256)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4701, file: !1044, line: 251, baseType: !81, size: 64, offset: 320)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4701, file: !1044, line: 252, baseType: !81, size: 64, offset: 384)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4701, file: !1044, line: 253, baseType: !81, size: 64, offset: 448)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4701, file: !1044, line: 254, baseType: !81, size: 64, offset: 512)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4701, file: !1044, line: 256, baseType: !81, size: 64, offset: 576)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4701, file: !1044, line: 257, baseType: !81, size: 64, offset: 640)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4701, file: !1044, line: 258, baseType: !81, size: 64, offset: 704)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4701, file: !1044, line: 260, baseType: !4716, size: 64, offset: 768)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1044, line: 156, size: 192, elements: !4718)
!4718 = !{!4719, !4720, !4722}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4717, file: !1044, line: 157, baseType: !4716, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4717, file: !1044, line: 158, baseType: !4721, size: 64, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4717, file: !1044, line: 162, baseType: !82, size: 32, offset: 128)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4701, file: !1044, line: 262, baseType: !4721, size: 64, offset: 832)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4701, file: !1044, line: 264, baseType: !82, size: 32, offset: 896)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4701, file: !1044, line: 268, baseType: !82, size: 32, offset: 928)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4701, file: !1044, line: 270, baseType: !1070, size: 64, offset: 960)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4701, file: !1044, line: 274, baseType: !83, size: 16, offset: 1024)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4701, file: !1044, line: 275, baseType: !1074, size: 8, offset: 1040)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4701, file: !1044, line: 276, baseType: !1076, size: 8, offset: 1048)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4701, file: !1044, line: 280, baseType: !1080, size: 64, offset: 1088)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4701, file: !1044, line: 289, baseType: !1083, size: 64, offset: 1152)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4701, file: !1044, line: 297, baseType: !73, size: 64, offset: 1216)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4701, file: !1044, line: 298, baseType: !73, size: 64, offset: 1280)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4701, file: !1044, line: 299, baseType: !73, size: 64, offset: 1344)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4701, file: !1044, line: 300, baseType: !73, size: 64, offset: 1408)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4701, file: !1044, line: 302, baseType: !75, size: 64, offset: 1472)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4701, file: !1044, line: 303, baseType: !82, size: 32, offset: 1536)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4701, file: !1044, line: 305, baseType: !1091, size: 160, offset: 1568)
!4739 = !{!4740, !4741, !4742, !4743}
!4740 = !DILocalVariable(name: "fp", arg: 1, scope: !4695, file: !4696, line: 56, type: !4699)
!4741 = !DILocalVariable(name: "saved_errno", scope: !4695, file: !4696, line: 58, type: !82)
!4742 = !DILocalVariable(name: "fd", scope: !4695, file: !4696, line: 59, type: !82)
!4743 = !DILocalVariable(name: "result", scope: !4695, file: !4696, line: 60, type: !82)
!4744 = !DILocation(line: 56, column: 19, scope: !4695)
!4745 = !DILocation(line: 58, column: 7, scope: !4695)
!4746 = !DILocation(line: 60, column: 7, scope: !4695)
!4747 = !DILocation(line: 63, column: 8, scope: !4695)
!4748 = !DILocation(line: 59, column: 7, scope: !4695)
!4749 = !DILocation(line: 64, column: 10, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4695, file: !4696, line: 64, column: 7)
!4751 = !DILocation(line: 64, column: 7, scope: !4695)
!4752 = !DILocation(line: 65, column: 12, scope: !4750)
!4753 = !DILocation(line: 65, column: 5, scope: !4750)
!4754 = !DILocation(line: 70, column: 9, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4695, file: !4696, line: 70, column: 7)
!4756 = !DILocation(line: 70, column: 23, scope: !4755)
!4757 = !DILocation(line: 70, column: 33, scope: !4755)
!4758 = !DILocation(line: 70, column: 26, scope: !4755)
!4759 = !DILocation(line: 70, column: 59, scope: !4755)
!4760 = !DILocation(line: 71, column: 7, scope: !4755)
!4761 = !DILocation(line: 71, column: 10, scope: !4755)
!4762 = !DILocation(line: 70, column: 7, scope: !4695)
!4763 = !DILocation(line: 98, column: 12, scope: !4695)
!4764 = !DILocation(line: 103, column: 7, scope: !4695)
!4765 = !DILocation(line: 72, column: 19, scope: !4755)
!4766 = !DILocation(line: 103, column: 19, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4695, file: !4696, line: 103, column: 7)
!4768 = !DILocation(line: 105, column: 13, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4767, file: !4696, line: 104, column: 5)
!4770 = !DILocation(line: 107, column: 5, scope: !4769)
!4771 = !DILocation(line: 110, column: 1, scope: !4695)
!4772 = distinct !DISubprogram(name: "rpl_fflush", scope: !4773, file: !4773, line: 127, type: !4774, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !664, variables: !4816)
!4773 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!82, !4776}
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1042, line: 7, baseType: !4778)
!4778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1044, line: 241, size: 1728, elements: !4779)
!4779 = !{!4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4778, file: !1044, line: 242, baseType: !82, size: 32)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4778, file: !1044, line: 247, baseType: !81, size: 64, offset: 64)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4778, file: !1044, line: 248, baseType: !81, size: 64, offset: 128)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4778, file: !1044, line: 249, baseType: !81, size: 64, offset: 192)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4778, file: !1044, line: 250, baseType: !81, size: 64, offset: 256)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4778, file: !1044, line: 251, baseType: !81, size: 64, offset: 320)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4778, file: !1044, line: 252, baseType: !81, size: 64, offset: 384)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4778, file: !1044, line: 253, baseType: !81, size: 64, offset: 448)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4778, file: !1044, line: 254, baseType: !81, size: 64, offset: 512)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4778, file: !1044, line: 256, baseType: !81, size: 64, offset: 576)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4778, file: !1044, line: 257, baseType: !81, size: 64, offset: 640)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4778, file: !1044, line: 258, baseType: !81, size: 64, offset: 704)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4778, file: !1044, line: 260, baseType: !4793, size: 64, offset: 768)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1044, line: 156, size: 192, elements: !4795)
!4795 = !{!4796, !4797, !4799}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4794, file: !1044, line: 157, baseType: !4793, size: 64)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4794, file: !1044, line: 158, baseType: !4798, size: 64, offset: 64)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4794, file: !1044, line: 162, baseType: !82, size: 32, offset: 128)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4778, file: !1044, line: 262, baseType: !4798, size: 64, offset: 832)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4778, file: !1044, line: 264, baseType: !82, size: 32, offset: 896)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4778, file: !1044, line: 268, baseType: !82, size: 32, offset: 928)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4778, file: !1044, line: 270, baseType: !1070, size: 64, offset: 960)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4778, file: !1044, line: 274, baseType: !83, size: 16, offset: 1024)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4778, file: !1044, line: 275, baseType: !1074, size: 8, offset: 1040)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4778, file: !1044, line: 276, baseType: !1076, size: 8, offset: 1048)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4778, file: !1044, line: 280, baseType: !1080, size: 64, offset: 1088)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4778, file: !1044, line: 289, baseType: !1083, size: 64, offset: 1152)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4778, file: !1044, line: 297, baseType: !73, size: 64, offset: 1216)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4778, file: !1044, line: 298, baseType: !73, size: 64, offset: 1280)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4778, file: !1044, line: 299, baseType: !73, size: 64, offset: 1344)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4778, file: !1044, line: 300, baseType: !73, size: 64, offset: 1408)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4778, file: !1044, line: 302, baseType: !75, size: 64, offset: 1472)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4778, file: !1044, line: 303, baseType: !82, size: 32, offset: 1536)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4778, file: !1044, line: 305, baseType: !1091, size: 160, offset: 1568)
!4816 = !{!4817}
!4817 = !DILocalVariable(name: "stream", arg: 1, scope: !4772, file: !4773, line: 127, type: !4776)
!4818 = !DILocation(line: 127, column: 19, scope: !4772)
!4819 = !DILocation(line: 148, column: 14, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4772, file: !4773, line: 148, column: 7)
!4821 = !DILocation(line: 148, column: 22, scope: !4820)
!4822 = !DILocation(line: 148, column: 27, scope: !4820)
!4823 = !DILocation(line: 148, column: 7, scope: !4772)
!4824 = !DILocation(line: 149, column: 12, scope: !4820)
!4825 = !DILocation(line: 149, column: 5, scope: !4820)
!4826 = !DILocalVariable(name: "fp", arg: 1, scope: !4827, file: !4773, line: 40, type: !4776)
!4827 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4773, file: !4773, line: 40, type: !4828, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !664, variables: !4830)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{null, !4776}
!4830 = !{!4826}
!4831 = !DILocation(line: 40, column: 48, scope: !4827, inlinedAt: !4832)
!4832 = distinct !DILocation(line: 153, column: 3, scope: !4772)
!4833 = !DILocation(line: 42, column: 11, scope: !4834, inlinedAt: !4832)
!4834 = distinct !DILexicalBlock(scope: !4827, file: !4773, line: 42, column: 7)
!4835 = !DILocation(line: 42, column: 18, scope: !4834, inlinedAt: !4832)
!4836 = !DILocation(line: 42, column: 7, scope: !4827, inlinedAt: !4832)
!4837 = !DILocation(line: 44, column: 5, scope: !4834, inlinedAt: !4832)
!4838 = !DILocation(line: 155, column: 10, scope: !4772)
!4839 = !DILocation(line: 155, column: 3, scope: !4772)
!4840 = !DILocation(line: 229, column: 1, scope: !4772)
!4841 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4842, file: !4842, line: 28, type: !4843, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !666, variables: !4885)
!4842 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!82, !4845, !1705, !82}
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1042, line: 7, baseType: !4847)
!4847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1044, line: 241, size: 1728, elements: !4848)
!4848 = !{!4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4847, file: !1044, line: 242, baseType: !82, size: 32)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4847, file: !1044, line: 247, baseType: !81, size: 64, offset: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4847, file: !1044, line: 248, baseType: !81, size: 64, offset: 128)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4847, file: !1044, line: 249, baseType: !81, size: 64, offset: 192)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4847, file: !1044, line: 250, baseType: !81, size: 64, offset: 256)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4847, file: !1044, line: 251, baseType: !81, size: 64, offset: 320)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4847, file: !1044, line: 252, baseType: !81, size: 64, offset: 384)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4847, file: !1044, line: 253, baseType: !81, size: 64, offset: 448)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4847, file: !1044, line: 254, baseType: !81, size: 64, offset: 512)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4847, file: !1044, line: 256, baseType: !81, size: 64, offset: 576)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4847, file: !1044, line: 257, baseType: !81, size: 64, offset: 640)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4847, file: !1044, line: 258, baseType: !81, size: 64, offset: 704)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4847, file: !1044, line: 260, baseType: !4862, size: 64, offset: 768)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1044, line: 156, size: 192, elements: !4864)
!4864 = !{!4865, !4866, !4868}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4863, file: !1044, line: 157, baseType: !4862, size: 64)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4863, file: !1044, line: 158, baseType: !4867, size: 64, offset: 64)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4863, file: !1044, line: 162, baseType: !82, size: 32, offset: 128)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4847, file: !1044, line: 262, baseType: !4867, size: 64, offset: 832)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4847, file: !1044, line: 264, baseType: !82, size: 32, offset: 896)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4847, file: !1044, line: 268, baseType: !82, size: 32, offset: 928)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4847, file: !1044, line: 270, baseType: !1070, size: 64, offset: 960)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4847, file: !1044, line: 274, baseType: !83, size: 16, offset: 1024)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4847, file: !1044, line: 275, baseType: !1074, size: 8, offset: 1040)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4847, file: !1044, line: 276, baseType: !1076, size: 8, offset: 1048)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4847, file: !1044, line: 280, baseType: !1080, size: 64, offset: 1088)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4847, file: !1044, line: 289, baseType: !1083, size: 64, offset: 1152)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4847, file: !1044, line: 297, baseType: !73, size: 64, offset: 1216)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4847, file: !1044, line: 298, baseType: !73, size: 64, offset: 1280)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4847, file: !1044, line: 299, baseType: !73, size: 64, offset: 1344)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4847, file: !1044, line: 300, baseType: !73, size: 64, offset: 1408)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4847, file: !1044, line: 302, baseType: !75, size: 64, offset: 1472)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4847, file: !1044, line: 303, baseType: !82, size: 32, offset: 1536)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4847, file: !1044, line: 305, baseType: !1091, size: 160, offset: 1568)
!4885 = !{!4886, !4887, !4888, !4889}
!4886 = !DILocalVariable(name: "fp", arg: 1, scope: !4841, file: !4842, line: 28, type: !4845)
!4887 = !DILocalVariable(name: "offset", arg: 2, scope: !4841, file: !4842, line: 28, type: !1705)
!4888 = !DILocalVariable(name: "whence", arg: 3, scope: !4841, file: !4842, line: 28, type: !82)
!4889 = !DILocalVariable(name: "pos", scope: !4890, file: !4842, line: 116, type: !1705)
!4890 = distinct !DILexicalBlock(scope: !4891, file: !4842, line: 112, column: 5)
!4891 = distinct !DILexicalBlock(scope: !4841, file: !4842, line: 51, column: 7)
!4892 = !DILocation(line: 28, column: 15, scope: !4841)
!4893 = !DILocation(line: 28, column: 25, scope: !4841)
!4894 = !DILocation(line: 28, column: 37, scope: !4841)
!4895 = !DILocation(line: 51, column: 11, scope: !4891)
!4896 = !DILocation(line: 51, column: 31, scope: !4891)
!4897 = !DILocation(line: 51, column: 24, scope: !4891)
!4898 = !DILocation(line: 52, column: 7, scope: !4891)
!4899 = !DILocation(line: 52, column: 14, scope: !4891)
!4900 = !DILocation(line: 52, column: 35, scope: !4891)
!4901 = !{!1099, !694, i64 32}
!4902 = !DILocation(line: 52, column: 28, scope: !4891)
!4903 = !DILocation(line: 53, column: 7, scope: !4891)
!4904 = !DILocation(line: 53, column: 14, scope: !4891)
!4905 = !{!1099, !694, i64 72}
!4906 = !DILocation(line: 53, column: 28, scope: !4891)
!4907 = !DILocation(line: 51, column: 7, scope: !4841)
!4908 = !DILocation(line: 116, column: 26, scope: !4890)
!4909 = !DILocation(line: 116, column: 19, scope: !4890)
!4910 = !DILocation(line: 116, column: 13, scope: !4890)
!4911 = !DILocation(line: 117, column: 15, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4890, file: !4842, line: 117, column: 11)
!4913 = !DILocation(line: 117, column: 11, scope: !4890)
!4914 = !DILocation(line: 127, column: 11, scope: !4890)
!4915 = !DILocation(line: 127, column: 18, scope: !4890)
!4916 = !DILocation(line: 128, column: 11, scope: !4890)
!4917 = !DILocation(line: 128, column: 19, scope: !4890)
!4918 = !{!1099, !778, i64 144}
!4919 = !DILocation(line: 159, column: 7, scope: !4890)
!4920 = !DILocation(line: 161, column: 10, scope: !4841)
!4921 = !DILocation(line: 161, column: 3, scope: !4841)
!4922 = !DILocation(line: 162, column: 1, scope: !4841)
!4923 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4924, file: !4924, line: 334, type: !4925, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !668, variables: !4939)
!4924 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4925 = !DISubroutineType(types: !4926)
!4926 = !{!75, !4927, !78, !75, !4928}
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2472, line: 6, baseType: !4930)
!4930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2474, line: 21, baseType: !4931)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2474, line: 13, size: 64, elements: !4932)
!4932 = !{!4933, !4934}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4931, file: !2474, line: 15, baseType: !82, size: 32)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4931, file: !2474, line: 20, baseType: !4935, size: 32, offset: 32)
!4935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4931, file: !2474, line: 16, size: 32, elements: !4936)
!4936 = !{!4937, !4938}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4935, file: !2474, line: 18, baseType: !230, size: 32)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4935, file: !2474, line: 19, baseType: !2483, size: 32)
!4939 = !{!4940, !4941, !4942, !4943, !4944, !4945, !4946}
!4940 = !DILocalVariable(name: "pwc", arg: 1, scope: !4923, file: !4924, line: 334, type: !4927)
!4941 = !DILocalVariable(name: "s", arg: 2, scope: !4923, file: !4924, line: 334, type: !78)
!4942 = !DILocalVariable(name: "n", arg: 3, scope: !4923, file: !4924, line: 334, type: !75)
!4943 = !DILocalVariable(name: "ps", arg: 4, scope: !4923, file: !4924, line: 334, type: !4928)
!4944 = !DILocalVariable(name: "ret", scope: !4923, file: !4924, line: 336, type: !75)
!4945 = !DILocalVariable(name: "wc", scope: !4923, file: !4924, line: 337, type: !2486)
!4946 = !DILocalVariable(name: "uc", scope: !4947, file: !4924, line: 398, type: !84)
!4947 = distinct !DILexicalBlock(scope: !4948, file: !4924, line: 397, column: 5)
!4948 = distinct !DILexicalBlock(scope: !4923, file: !4924, line: 396, column: 7)
!4949 = !DILocation(line: 334, column: 23, scope: !4923)
!4950 = !DILocation(line: 334, column: 40, scope: !4923)
!4951 = !DILocation(line: 334, column: 50, scope: !4923)
!4952 = !DILocation(line: 334, column: 64, scope: !4923)
!4953 = !DILocation(line: 337, column: 3, scope: !4923)
!4954 = !DILocation(line: 353, column: 9, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4923, file: !4924, line: 353, column: 7)
!4956 = !DILocation(line: 353, column: 7, scope: !4923)
!4957 = !DILocation(line: 388, column: 9, scope: !4923)
!4958 = !DILocation(line: 336, column: 10, scope: !4923)
!4959 = !DILocation(line: 396, column: 19, scope: !4948)
!4960 = !DILocation(line: 396, column: 31, scope: !4948)
!4961 = !DILocation(line: 396, column: 26, scope: !4948)
!4962 = !DILocation(line: 396, column: 41, scope: !4948)
!4963 = !DILocation(line: 396, column: 7, scope: !4923)
!4964 = !DILocation(line: 398, column: 26, scope: !4947)
!4965 = !DILocation(line: 398, column: 21, scope: !4947)
!4966 = !DILocation(line: 399, column: 14, scope: !4947)
!4967 = !DILocation(line: 399, column: 12, scope: !4947)
!4968 = !DILocation(line: 405, column: 1, scope: !4923)
!4969 = distinct !DISubprogram(name: "close_stream", scope: !4970, file: !4970, line: 56, type: !4971, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !671, variables: !5013)
!4970 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!82, !4973}
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1042, line: 7, baseType: !4975)
!4975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1044, line: 241, size: 1728, elements: !4976)
!4976 = !{!4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4975, file: !1044, line: 242, baseType: !82, size: 32)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4975, file: !1044, line: 247, baseType: !81, size: 64, offset: 64)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4975, file: !1044, line: 248, baseType: !81, size: 64, offset: 128)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4975, file: !1044, line: 249, baseType: !81, size: 64, offset: 192)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4975, file: !1044, line: 250, baseType: !81, size: 64, offset: 256)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4975, file: !1044, line: 251, baseType: !81, size: 64, offset: 320)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4975, file: !1044, line: 252, baseType: !81, size: 64, offset: 384)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4975, file: !1044, line: 253, baseType: !81, size: 64, offset: 448)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4975, file: !1044, line: 254, baseType: !81, size: 64, offset: 512)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4975, file: !1044, line: 256, baseType: !81, size: 64, offset: 576)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4975, file: !1044, line: 257, baseType: !81, size: 64, offset: 640)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4975, file: !1044, line: 258, baseType: !81, size: 64, offset: 704)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4975, file: !1044, line: 260, baseType: !4990, size: 64, offset: 768)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1044, line: 156, size: 192, elements: !4992)
!4992 = !{!4993, !4994, !4996}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4991, file: !1044, line: 157, baseType: !4990, size: 64)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4991, file: !1044, line: 158, baseType: !4995, size: 64, offset: 64)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4991, file: !1044, line: 162, baseType: !82, size: 32, offset: 128)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4975, file: !1044, line: 262, baseType: !4995, size: 64, offset: 832)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4975, file: !1044, line: 264, baseType: !82, size: 32, offset: 896)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4975, file: !1044, line: 268, baseType: !82, size: 32, offset: 928)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4975, file: !1044, line: 270, baseType: !1070, size: 64, offset: 960)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4975, file: !1044, line: 274, baseType: !83, size: 16, offset: 1024)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4975, file: !1044, line: 275, baseType: !1074, size: 8, offset: 1040)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4975, file: !1044, line: 276, baseType: !1076, size: 8, offset: 1048)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4975, file: !1044, line: 280, baseType: !1080, size: 64, offset: 1088)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4975, file: !1044, line: 289, baseType: !1083, size: 64, offset: 1152)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4975, file: !1044, line: 297, baseType: !73, size: 64, offset: 1216)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4975, file: !1044, line: 298, baseType: !73, size: 64, offset: 1280)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4975, file: !1044, line: 299, baseType: !73, size: 64, offset: 1344)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4975, file: !1044, line: 300, baseType: !73, size: 64, offset: 1408)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4975, file: !1044, line: 302, baseType: !75, size: 64, offset: 1472)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4975, file: !1044, line: 303, baseType: !82, size: 32, offset: 1536)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4975, file: !1044, line: 305, baseType: !1091, size: 160, offset: 1568)
!5013 = !{!5014, !5015, !5017, !5018}
!5014 = !DILocalVariable(name: "stream", arg: 1, scope: !4969, file: !4970, line: 56, type: !4973)
!5015 = !DILocalVariable(name: "some_pending", scope: !4969, file: !4970, line: 58, type: !5016)
!5016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!5017 = !DILocalVariable(name: "prev_fail", scope: !4969, file: !4970, line: 59, type: !5016)
!5018 = !DILocalVariable(name: "fclose_fail", scope: !4969, file: !4970, line: 60, type: !5016)
!5019 = !DILocation(line: 56, column: 21, scope: !4969)
!5020 = !DILocation(line: 58, column: 30, scope: !4969)
!5021 = !DILocalVariable(name: "__stream", arg: 1, scope: !5022, file: !1037, line: 132, type: !4973)
!5022 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1037, file: !1037, line: 132, type: !4971, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !671, variables: !5023)
!5023 = !{!5021}
!5024 = !DILocation(line: 132, column: 1, scope: !5022, inlinedAt: !5025)
!5025 = distinct !DILocation(line: 59, column: 27, scope: !4969)
!5026 = !DILocation(line: 134, column: 10, scope: !5022, inlinedAt: !5025)
!5027 = !DILocation(line: 59, column: 43, scope: !4969)
!5028 = !DILocation(line: 60, column: 29, scope: !4969)
!5029 = !DILocation(line: 60, column: 45, scope: !4969)
!5030 = !DILocation(line: 70, column: 17, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !4969, file: !4970, line: 70, column: 7)
!5032 = !DILocation(line: 58, column: 50, scope: !4969)
!5033 = !DILocation(line: 70, column: 33, scope: !5031)
!5034 = !DILocation(line: 70, column: 53, scope: !5031)
!5035 = !DILocation(line: 70, column: 59, scope: !5031)
!5036 = !DILocation(line: 70, column: 7, scope: !4969)
!5037 = !DILocation(line: 72, column: 11, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5031, file: !4970, line: 71, column: 5)
!5039 = !DILocation(line: 73, column: 9, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5038, file: !4970, line: 72, column: 11)
!5041 = !DILocation(line: 73, column: 15, scope: !5040)
!5042 = !DILocation(line: 78, column: 1, scope: !4969)
!5043 = distinct !DISubprogram(name: "locale_charset", scope: !611, file: !611, line: 393, type: !5044, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !267, variables: !5046)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!78}
!5046 = !{!5047, !5048}
!5047 = !DILocalVariable(name: "codeset", scope: !5043, file: !611, line: 395, type: !78)
!5048 = !DILocalVariable(name: "aliases", scope: !5043, file: !611, line: 396, type: !78)
!5049 = !DILocalVariable(name: "buf1", scope: !5050, file: !611, line: 196, type: !5117)
!5050 = distinct !DILexicalBlock(scope: !5051, file: !611, line: 194, column: 21)
!5051 = distinct !DILexicalBlock(scope: !5052, file: !611, line: 193, column: 19)
!5052 = distinct !DILexicalBlock(scope: !5053, file: !611, line: 193, column: 19)
!5053 = distinct !DILexicalBlock(scope: !5054, file: !611, line: 188, column: 17)
!5054 = distinct !DILexicalBlock(scope: !5055, file: !611, line: 181, column: 19)
!5055 = distinct !DILexicalBlock(scope: !5056, file: !611, line: 177, column: 13)
!5056 = distinct !DILexicalBlock(scope: !5057, file: !611, line: 173, column: 15)
!5057 = distinct !DILexicalBlock(scope: !5058, file: !611, line: 161, column: 9)
!5058 = distinct !DILexicalBlock(scope: !5059, file: !611, line: 157, column: 11)
!5059 = distinct !DILexicalBlock(scope: !5060, file: !611, line: 130, column: 5)
!5060 = distinct !DILexicalBlock(scope: !5061, file: !611, line: 129, column: 7)
!5061 = distinct !DISubprogram(name: "get_charset_aliases", scope: !611, file: !611, line: 124, type: !5044, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !267, variables: !5062)
!5062 = !{!5063, !5064, !5065, !5066, !5067, !5069, !5070, !5071, !5072, !5113, !5114, !5115, !5049, !5116, !5120, !5121, !5122}
!5063 = !DILocalVariable(name: "cp", scope: !5061, file: !611, line: 126, type: !78)
!5064 = !DILocalVariable(name: "dir", scope: !5059, file: !611, line: 132, type: !78)
!5065 = !DILocalVariable(name: "base", scope: !5059, file: !611, line: 133, type: !78)
!5066 = !DILocalVariable(name: "file_name", scope: !5059, file: !611, line: 134, type: !81)
!5067 = !DILocalVariable(name: "dir_len", scope: !5068, file: !611, line: 144, type: !75)
!5068 = distinct !DILexicalBlock(scope: !5059, file: !611, line: 143, column: 7)
!5069 = !DILocalVariable(name: "base_len", scope: !5068, file: !611, line: 145, type: !75)
!5070 = !DILocalVariable(name: "add_slash", scope: !5068, file: !611, line: 146, type: !82)
!5071 = !DILocalVariable(name: "fd", scope: !5057, file: !611, line: 162, type: !82)
!5072 = !DILocalVariable(name: "fp", scope: !5055, file: !611, line: 178, type: !5073)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1042, line: 7, baseType: !5075)
!5075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1044, line: 241, size: 1728, elements: !5076)
!5076 = !{!5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5075, file: !1044, line: 242, baseType: !82, size: 32)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5075, file: !1044, line: 247, baseType: !81, size: 64, offset: 64)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5075, file: !1044, line: 248, baseType: !81, size: 64, offset: 128)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5075, file: !1044, line: 249, baseType: !81, size: 64, offset: 192)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5075, file: !1044, line: 250, baseType: !81, size: 64, offset: 256)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5075, file: !1044, line: 251, baseType: !81, size: 64, offset: 320)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5075, file: !1044, line: 252, baseType: !81, size: 64, offset: 384)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5075, file: !1044, line: 253, baseType: !81, size: 64, offset: 448)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5075, file: !1044, line: 254, baseType: !81, size: 64, offset: 512)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5075, file: !1044, line: 256, baseType: !81, size: 64, offset: 576)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5075, file: !1044, line: 257, baseType: !81, size: 64, offset: 640)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5075, file: !1044, line: 258, baseType: !81, size: 64, offset: 704)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5075, file: !1044, line: 260, baseType: !5090, size: 64, offset: 768)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1044, line: 156, size: 192, elements: !5092)
!5092 = !{!5093, !5094, !5096}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5091, file: !1044, line: 157, baseType: !5090, size: 64)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5091, file: !1044, line: 158, baseType: !5095, size: 64, offset: 64)
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5091, file: !1044, line: 162, baseType: !82, size: 32, offset: 128)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5075, file: !1044, line: 262, baseType: !5095, size: 64, offset: 832)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5075, file: !1044, line: 264, baseType: !82, size: 32, offset: 896)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5075, file: !1044, line: 268, baseType: !82, size: 32, offset: 928)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5075, file: !1044, line: 270, baseType: !1070, size: 64, offset: 960)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5075, file: !1044, line: 274, baseType: !83, size: 16, offset: 1024)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5075, file: !1044, line: 275, baseType: !1074, size: 8, offset: 1040)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5075, file: !1044, line: 276, baseType: !1076, size: 8, offset: 1048)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5075, file: !1044, line: 280, baseType: !1080, size: 64, offset: 1088)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5075, file: !1044, line: 289, baseType: !1083, size: 64, offset: 1152)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5075, file: !1044, line: 297, baseType: !73, size: 64, offset: 1216)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5075, file: !1044, line: 298, baseType: !73, size: 64, offset: 1280)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5075, file: !1044, line: 299, baseType: !73, size: 64, offset: 1344)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5075, file: !1044, line: 300, baseType: !73, size: 64, offset: 1408)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5075, file: !1044, line: 302, baseType: !75, size: 64, offset: 1472)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5075, file: !1044, line: 303, baseType: !82, size: 32, offset: 1536)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5075, file: !1044, line: 305, baseType: !1091, size: 160, offset: 1568)
!5113 = !DILocalVariable(name: "res_ptr", scope: !5053, file: !611, line: 190, type: !81)
!5114 = !DILocalVariable(name: "res_size", scope: !5053, file: !611, line: 191, type: !75)
!5115 = !DILocalVariable(name: "c", scope: !5050, file: !611, line: 195, type: !82)
!5116 = !DILocalVariable(name: "buf2", scope: !5050, file: !611, line: 197, type: !5117)
!5117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 408, elements: !5118)
!5118 = !{!5119}
!5119 = !DISubrange(count: 51)
!5120 = !DILocalVariable(name: "l1", scope: !5050, file: !611, line: 198, type: !75)
!5121 = !DILocalVariable(name: "l2", scope: !5050, file: !611, line: 198, type: !75)
!5122 = !DILocalVariable(name: "old_res_ptr", scope: !5050, file: !611, line: 199, type: !81)
!5123 = !DILocation(line: 196, column: 28, scope: !5050, inlinedAt: !5124)
!5124 = distinct !DILocation(line: 589, column: 18, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5043, file: !611, line: 589, column: 3)
!5126 = !DILocation(line: 197, column: 28, scope: !5050, inlinedAt: !5124)
!5127 = !DILocation(line: 403, column: 13, scope: !5043)
!5128 = !DILocation(line: 395, column: 15, scope: !5043)
!5129 = !DILocation(line: 584, column: 15, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5043, file: !611, line: 584, column: 7)
!5131 = !DILocation(line: 584, column: 7, scope: !5043)
!5132 = !DILocation(line: 128, column: 8, scope: !5061, inlinedAt: !5124)
!5133 = !DILocation(line: 126, column: 15, scope: !5061, inlinedAt: !5124)
!5134 = !DILocation(line: 129, column: 10, scope: !5060, inlinedAt: !5124)
!5135 = !DILocation(line: 129, column: 7, scope: !5061, inlinedAt: !5124)
!5136 = !DILocation(line: 138, column: 13, scope: !5059, inlinedAt: !5124)
!5137 = !DILocation(line: 132, column: 19, scope: !5059, inlinedAt: !5124)
!5138 = !DILocation(line: 139, column: 15, scope: !5139, inlinedAt: !5124)
!5139 = distinct !DILexicalBlock(scope: !5059, file: !611, line: 139, column: 11)
!5140 = !DILocation(line: 139, column: 23, scope: !5139, inlinedAt: !5124)
!5141 = !DILocation(line: 139, column: 26, scope: !5139, inlinedAt: !5124)
!5142 = !DILocation(line: 139, column: 33, scope: !5139, inlinedAt: !5124)
!5143 = !DILocation(line: 139, column: 11, scope: !5059, inlinedAt: !5124)
!5144 = !DILocation(line: 140, column: 9, scope: !5139, inlinedAt: !5124)
!5145 = !DILocation(line: 144, column: 26, scope: !5068, inlinedAt: !5124)
!5146 = !DILocation(line: 144, column: 16, scope: !5068, inlinedAt: !5124)
!5147 = !DILocation(line: 145, column: 16, scope: !5068, inlinedAt: !5124)
!5148 = !DILocation(line: 146, column: 34, scope: !5068, inlinedAt: !5124)
!5149 = !DILocation(line: 146, column: 38, scope: !5068, inlinedAt: !5124)
!5150 = !DILocation(line: 146, column: 42, scope: !5068, inlinedAt: !5124)
!5151 = !DILocation(line: 147, column: 48, scope: !5068, inlinedAt: !5124)
!5152 = !DILocation(line: 147, column: 46, scope: !5068, inlinedAt: !5124)
!5153 = !DILocation(line: 147, column: 69, scope: !5068, inlinedAt: !5124)
!5154 = !DILocation(line: 147, column: 30, scope: !5068, inlinedAt: !5124)
!5155 = !DILocation(line: 134, column: 13, scope: !5059, inlinedAt: !5124)
!5156 = !DILocation(line: 148, column: 13, scope: !5068, inlinedAt: !5124)
!5157 = !DILocation(line: 150, column: 13, scope: !5158, inlinedAt: !5124)
!5158 = distinct !DILexicalBlock(scope: !5159, file: !611, line: 149, column: 11)
!5159 = distinct !DILexicalBlock(scope: !5068, file: !611, line: 148, column: 13)
!5160 = !DILocation(line: 151, column: 17, scope: !5158, inlinedAt: !5124)
!5161 = !DILocation(line: 152, column: 34, scope: !5162, inlinedAt: !5124)
!5162 = distinct !DILexicalBlock(scope: !5158, file: !611, line: 151, column: 17)
!5163 = !DILocation(line: 153, column: 41, scope: !5158, inlinedAt: !5124)
!5164 = !DILocation(line: 153, column: 13, scope: !5158, inlinedAt: !5124)
!5165 = !DILocation(line: 157, column: 11, scope: !5059, inlinedAt: !5124)
!5166 = !DILocation(line: 171, column: 16, scope: !5057, inlinedAt: !5124)
!5167 = !DILocation(line: 162, column: 15, scope: !5057, inlinedAt: !5124)
!5168 = !DILocation(line: 173, column: 18, scope: !5056, inlinedAt: !5124)
!5169 = !DILocation(line: 173, column: 15, scope: !5057, inlinedAt: !5124)
!5170 = !DILocation(line: 180, column: 20, scope: !5055, inlinedAt: !5124)
!5171 = !DILocation(line: 178, column: 21, scope: !5055, inlinedAt: !5124)
!5172 = !DILocation(line: 181, column: 22, scope: !5054, inlinedAt: !5124)
!5173 = !DILocation(line: 181, column: 19, scope: !5055, inlinedAt: !5124)
!5174 = !DILocation(line: 184, column: 19, scope: !5175, inlinedAt: !5124)
!5175 = distinct !DILexicalBlock(scope: !5054, file: !611, line: 182, column: 17)
!5176 = !DILocation(line: 186, column: 17, scope: !5175, inlinedAt: !5124)
!5177 = !DILocation(line: 190, column: 25, scope: !5053, inlinedAt: !5124)
!5178 = !DILocation(line: 191, column: 26, scope: !5053, inlinedAt: !5124)
!5179 = !DILocation(line: 193, column: 19, scope: !5053, inlinedAt: !5124)
!5180 = !DILocation(line: 196, column: 23, scope: !5050, inlinedAt: !5124)
!5181 = !DILocation(line: 197, column: 23, scope: !5050, inlinedAt: !5124)
!5182 = !DILocalVariable(name: "__fp", arg: 1, scope: !5183, file: !1037, line: 63, type: !5073)
!5183 = distinct !DISubprogram(name: "getc_unlocked", scope: !1037, file: !1037, line: 63, type: !5184, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !267, variables: !5186)
!5184 = !DISubroutineType(types: !5185)
!5185 = !{!82, !5073}
!5186 = !{!5182}
!5187 = !DILocation(line: 63, column: 22, scope: !5183, inlinedAt: !5188)
!5188 = distinct !DILocation(line: 201, column: 27, scope: !5050, inlinedAt: !5124)
!5189 = !DILocation(line: 65, column: 10, scope: !5183, inlinedAt: !5188)
!5190 = !DILocation(line: 195, column: 27, scope: !5050, inlinedAt: !5124)
!5191 = !DILocation(line: 202, column: 27, scope: !5050, inlinedAt: !5124)
!5192 = distinct !{!5192, !5193, !5196}
!5193 = !DILocation(line: 209, column: 27, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5195, file: !611, line: 207, column: 25)
!5195 = distinct !DILexicalBlock(scope: !5050, file: !611, line: 206, column: 27)
!5196 = !DILocation(line: 211, column: 58, scope: !5194)
!5197 = !DILocation(line: 65, column: 10, scope: !5183, inlinedAt: !5198)
!5198 = distinct !DILocation(line: 210, column: 33, scope: !5194, inlinedAt: !5124)
!5199 = !DILocation(line: 63, column: 22, scope: !5183, inlinedAt: !5198)
!5200 = !DILocation(line: 210, column: 29, scope: !5194, inlinedAt: !5124)
!5201 = distinct !{!5201, !5202, !5203}
!5202 = !DILocation(line: 193, column: 19, scope: !5052)
!5203 = !DILocation(line: 241, column: 21, scope: !5052)
!5204 = !DILocation(line: 216, column: 23, scope: !5050, inlinedAt: !5124)
!5205 = !DILocation(line: 217, column: 27, scope: !5206, inlinedAt: !5124)
!5206 = distinct !DILexicalBlock(scope: !5050, file: !611, line: 217, column: 27)
!5207 = !DILocation(line: 217, column: 64, scope: !5206, inlinedAt: !5124)
!5208 = !DILocation(line: 217, column: 27, scope: !5050, inlinedAt: !5124)
!5209 = !DILocation(line: 219, column: 28, scope: !5050, inlinedAt: !5124)
!5210 = !DILocation(line: 198, column: 30, scope: !5050, inlinedAt: !5124)
!5211 = !DILocation(line: 220, column: 28, scope: !5050, inlinedAt: !5124)
!5212 = !DILocation(line: 198, column: 34, scope: !5050, inlinedAt: !5124)
!5213 = !DILocation(line: 199, column: 29, scope: !5050, inlinedAt: !5124)
!5214 = !DILocation(line: 222, column: 36, scope: !5215, inlinedAt: !5124)
!5215 = distinct !DILexicalBlock(scope: !5050, file: !611, line: 222, column: 27)
!5216 = !DILocation(line: 222, column: 27, scope: !5050, inlinedAt: !5124)
!5217 = !DILocation(line: 225, column: 63, scope: !5218, inlinedAt: !5124)
!5218 = distinct !DILexicalBlock(scope: !5215, file: !611, line: 223, column: 25)
!5219 = !DILocation(line: 225, column: 46, scope: !5218, inlinedAt: !5124)
!5220 = !DILocation(line: 226, column: 25, scope: !5218, inlinedAt: !5124)
!5221 = !DILocation(line: 229, column: 36, scope: !5222, inlinedAt: !5124)
!5222 = distinct !DILexicalBlock(scope: !5215, file: !611, line: 228, column: 25)
!5223 = !DILocation(line: 230, column: 73, scope: !5222, inlinedAt: !5124)
!5224 = !DILocation(line: 230, column: 46, scope: !5222, inlinedAt: !5124)
!5225 = !DILocation(line: 232, column: 35, scope: !5226, inlinedAt: !5124)
!5226 = distinct !DILexicalBlock(scope: !5050, file: !611, line: 232, column: 27)
!5227 = !DILocation(line: 232, column: 27, scope: !5050, inlinedAt: !5124)
!5228 = !DILocation(line: 236, column: 27, scope: !5229, inlinedAt: !5124)
!5229 = distinct !DILexicalBlock(scope: !5226, file: !611, line: 233, column: 25)
!5230 = !DILocation(line: 237, column: 27, scope: !5229, inlinedAt: !5124)
!5231 = !DILocation(line: 241, column: 21, scope: !5051, inlinedAt: !5124)
!5232 = !DILocation(line: 239, column: 39, scope: !5050, inlinedAt: !5124)
!5233 = !DILocation(line: 239, column: 50, scope: !5050, inlinedAt: !5124)
!5234 = !DILocation(line: 239, column: 61, scope: !5050, inlinedAt: !5124)
!5235 = !DILocalVariable(name: "__dest", arg: 1, scope: !5236, file: !5237, line: 88, type: !5240)
!5236 = distinct !DISubprogram(name: "strcpy", scope: !5237, file: !5237, line: 88, type: !5238, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !267, variables: !5242)
!5237 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!81, !5240, !5241}
!5240 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!5241 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!5242 = !{!5235, !5243}
!5243 = !DILocalVariable(name: "__src", arg: 2, scope: !5236, file: !5237, line: 88, type: !5241)
!5244 = !DILocation(line: 88, column: 1, scope: !5236, inlinedAt: !5245)
!5245 = distinct !DILocation(line: 239, column: 23, scope: !5050, inlinedAt: !5124)
!5246 = !DILocation(line: 90, column: 49, scope: !5236, inlinedAt: !5245)
!5247 = !DILocation(line: 90, column: 10, scope: !5236, inlinedAt: !5245)
!5248 = !DILocation(line: 88, column: 1, scope: !5236, inlinedAt: !5249)
!5249 = distinct !DILocation(line: 240, column: 23, scope: !5050, inlinedAt: !5124)
!5250 = !DILocation(line: 90, column: 49, scope: !5236, inlinedAt: !5249)
!5251 = !DILocation(line: 90, column: 10, scope: !5236, inlinedAt: !5249)
!5252 = !DILocation(line: 193, column: 19, scope: !5051, inlinedAt: !5124)
!5253 = !DILocation(line: 242, column: 19, scope: !5053, inlinedAt: !5124)
!5254 = !DILocation(line: 243, column: 32, scope: !5255, inlinedAt: !5124)
!5255 = distinct !DILexicalBlock(scope: !5053, file: !611, line: 243, column: 23)
!5256 = !DILocation(line: 243, column: 23, scope: !5053, inlinedAt: !5124)
!5257 = !DILocation(line: 247, column: 33, scope: !5258, inlinedAt: !5124)
!5258 = distinct !DILexicalBlock(scope: !5255, file: !611, line: 246, column: 21)
!5259 = !DILocation(line: 247, column: 45, scope: !5258, inlinedAt: !5124)
!5260 = !DILocation(line: 253, column: 11, scope: !5057, inlinedAt: !5124)
!5261 = !DILocation(line: 377, column: 23, scope: !5059, inlinedAt: !5124)
!5262 = !DILocation(line: 378, column: 5, scope: !5059, inlinedAt: !5124)
!5263 = !DILocation(line: 396, column: 15, scope: !5043)
!5264 = !DILocation(line: 590, column: 8, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5125, file: !611, line: 589, column: 3)
!5266 = !DILocation(line: 590, column: 17, scope: !5265)
!5267 = !DILocation(line: 589, column: 3, scope: !5125)
!5268 = !DILocation(line: 592, column: 9, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5265, file: !611, line: 592, column: 9)
!5270 = !DILocation(line: 592, column: 35, scope: !5269)
!5271 = !DILocation(line: 593, column: 9, scope: !5269)
!5272 = !DILocation(line: 593, column: 24, scope: !5269)
!5273 = !DILocation(line: 593, column: 31, scope: !5269)
!5274 = !DILocation(line: 593, column: 34, scope: !5269)
!5275 = !DILocation(line: 593, column: 45, scope: !5269)
!5276 = !DILocation(line: 592, column: 9, scope: !5265)
!5277 = !DILocation(line: 595, column: 29, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5269, file: !611, line: 594, column: 7)
!5279 = !DILocation(line: 595, column: 27, scope: !5278)
!5280 = !DILocation(line: 595, column: 46, scope: !5278)
!5281 = !DILocation(line: 596, column: 9, scope: !5278)
!5282 = !DILocation(line: 591, column: 19, scope: !5265)
!5283 = !DILocation(line: 591, column: 36, scope: !5265)
!5284 = !DILocation(line: 591, column: 16, scope: !5265)
!5285 = !DILocation(line: 591, column: 52, scope: !5265)
!5286 = !DILocation(line: 591, column: 69, scope: !5265)
!5287 = !DILocation(line: 591, column: 49, scope: !5265)
!5288 = distinct !{!5288, !5267, !5289}
!5289 = !DILocation(line: 597, column: 7, scope: !5125)
!5290 = !DILocation(line: 602, column: 7, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5043, file: !611, line: 602, column: 7)
!5292 = !DILocation(line: 602, column: 18, scope: !5291)
!5293 = !DILocation(line: 602, column: 7, scope: !5043)
!5294 = !DILocation(line: 612, column: 3, scope: !5043)
!5295 = distinct !DISubprogram(name: "memcoll", scope: !5296, file: !5296, line: 66, type: !4372, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !673, variables: !5297)
!5296 = !DIFile(filename: "lib/memcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5297 = !{!5298, !5299, !5300, !5301, !5302, !5303, !5306}
!5298 = !DILocalVariable(name: "s1", arg: 1, scope: !5295, file: !5296, line: 66, type: !81)
!5299 = !DILocalVariable(name: "s1len", arg: 2, scope: !5295, file: !5296, line: 66, type: !75)
!5300 = !DILocalVariable(name: "s2", arg: 3, scope: !5295, file: !5296, line: 66, type: !81)
!5301 = !DILocalVariable(name: "s2len", arg: 4, scope: !5295, file: !5296, line: 66, type: !75)
!5302 = !DILocalVariable(name: "diff", scope: !5295, file: !5296, line: 68, type: !82)
!5303 = !DILocalVariable(name: "n1", scope: !5304, file: !5296, line: 81, type: !80)
!5304 = distinct !DILexicalBlock(scope: !5305, file: !5296, line: 80, column: 5)
!5305 = distinct !DILexicalBlock(scope: !5295, file: !5296, line: 74, column: 7)
!5306 = !DILocalVariable(name: "n2", scope: !5304, file: !5296, line: 82, type: !80)
!5307 = !DILocation(line: 66, column: 16, scope: !5295)
!5308 = !DILocation(line: 66, column: 27, scope: !5295)
!5309 = !DILocation(line: 66, column: 40, scope: !5295)
!5310 = !DILocation(line: 66, column: 51, scope: !5295)
!5311 = !DILocation(line: 74, column: 13, scope: !5305)
!5312 = !DILocation(line: 74, column: 22, scope: !5305)
!5313 = !DILocation(line: 74, column: 25, scope: !5305)
!5314 = !DILocation(line: 74, column: 48, scope: !5305)
!5315 = !DILocation(line: 74, column: 7, scope: !5295)
!5316 = !DILocation(line: 76, column: 7, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5305, file: !5296, line: 75, column: 5)
!5318 = !DILocation(line: 76, column: 13, scope: !5317)
!5319 = !DILocation(line: 68, column: 7, scope: !5295)
!5320 = !DILocation(line: 78, column: 5, scope: !5317)
!5321 = !DILocation(line: 81, column: 17, scope: !5304)
!5322 = !DILocation(line: 81, column: 12, scope: !5304)
!5323 = !DILocation(line: 82, column: 17, scope: !5304)
!5324 = !DILocation(line: 82, column: 12, scope: !5304)
!5325 = !DILocation(line: 84, column: 17, scope: !5304)
!5326 = !DILocation(line: 85, column: 17, scope: !5304)
!5327 = !DILocalVariable(name: "s1", arg: 1, scope: !5328, file: !5296, line: 35, type: !78)
!5328 = distinct !DISubprogram(name: "strcoll_loop", scope: !5296, file: !5296, line: 35, type: !4419, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !673, variables: !5329)
!5329 = !{!5327, !5330, !5331, !5332, !5333, !5334, !5336}
!5330 = !DILocalVariable(name: "s1size", arg: 2, scope: !5328, file: !5296, line: 35, type: !75)
!5331 = !DILocalVariable(name: "s2", arg: 3, scope: !5328, file: !5296, line: 35, type: !78)
!5332 = !DILocalVariable(name: "s2size", arg: 4, scope: !5328, file: !5296, line: 35, type: !75)
!5333 = !DILocalVariable(name: "diff", scope: !5328, file: !5296, line: 37, type: !82)
!5334 = !DILocalVariable(name: "size1", scope: !5335, file: !5296, line: 44, type: !75)
!5335 = distinct !DILexicalBlock(scope: !5328, file: !5296, line: 40, column: 5)
!5336 = !DILocalVariable(name: "size2", scope: !5335, file: !5296, line: 45, type: !75)
!5337 = !DILocation(line: 35, column: 27, scope: !5328, inlinedAt: !5338)
!5338 = distinct !DILocation(line: 87, column: 14, scope: !5304)
!5339 = !DILocation(line: 35, column: 38, scope: !5328, inlinedAt: !5338)
!5340 = !DILocation(line: 35, column: 58, scope: !5328, inlinedAt: !5338)
!5341 = !DILocation(line: 35, column: 69, scope: !5328, inlinedAt: !5338)
!5342 = !DILocation(line: 39, column: 13, scope: !5328, inlinedAt: !5338)
!5343 = !DILocation(line: 39, column: 19, scope: !5328, inlinedAt: !5338)
!5344 = !DILocation(line: 39, column: 32, scope: !5328, inlinedAt: !5338)
!5345 = !DILocation(line: 37, column: 7, scope: !5328, inlinedAt: !5338)
!5346 = !DILocation(line: 39, column: 30, scope: !5328, inlinedAt: !5338)
!5347 = !DILocation(line: 39, column: 3, scope: !5328, inlinedAt: !5338)
!5348 = !DILocation(line: 87, column: 53, scope: !5304)
!5349 = !DILocation(line: 87, column: 38, scope: !5304)
!5350 = distinct !{!5350, !5351, !5352}
!5351 = !DILocation(line: 39, column: 3, scope: !5328)
!5352 = !DILocation(line: 55, column: 5, scope: !5328)
!5353 = !DILocation(line: 44, column: 22, scope: !5335, inlinedAt: !5338)
!5354 = !DILocation(line: 44, column: 34, scope: !5335, inlinedAt: !5338)
!5355 = !DILocation(line: 44, column: 14, scope: !5335, inlinedAt: !5338)
!5356 = !DILocation(line: 45, column: 22, scope: !5335, inlinedAt: !5338)
!5357 = !DILocation(line: 45, column: 34, scope: !5335, inlinedAt: !5338)
!5358 = !DILocation(line: 45, column: 14, scope: !5335, inlinedAt: !5338)
!5359 = !DILocation(line: 48, column: 14, scope: !5335, inlinedAt: !5338)
!5360 = !DILocation(line: 49, column: 14, scope: !5335, inlinedAt: !5338)
!5361 = !DILocation(line: 51, column: 18, scope: !5362, inlinedAt: !5338)
!5362 = distinct !DILexicalBlock(scope: !5335, file: !5296, line: 51, column: 11)
!5363 = !DILocation(line: 51, column: 11, scope: !5335, inlinedAt: !5338)
!5364 = !DILocation(line: 52, column: 26, scope: !5362, inlinedAt: !5338)
!5365 = !DILocation(line: 52, column: 16, scope: !5362, inlinedAt: !5338)
!5366 = !DILocation(line: 47, column: 10, scope: !5335, inlinedAt: !5338)
!5367 = !DILocation(line: 46, column: 10, scope: !5335, inlinedAt: !5338)
!5368 = !DILocation(line: 53, column: 18, scope: !5369, inlinedAt: !5338)
!5369 = distinct !DILexicalBlock(scope: !5335, file: !5296, line: 53, column: 11)
!5370 = !DILocation(line: 89, column: 17, scope: !5304)
!5371 = !DILocation(line: 90, column: 17, scope: !5304)
!5372 = !DILocation(line: 93, column: 3, scope: !5295)
!5373 = distinct !DISubprogram(name: "memcoll0", scope: !5296, file: !5296, line: 102, type: !4419, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !673, variables: !5374)
!5374 = !{!5375, !5376, !5377, !5378}
!5375 = !DILocalVariable(name: "s1", arg: 1, scope: !5373, file: !5296, line: 102, type: !78)
!5376 = !DILocalVariable(name: "s1size", arg: 2, scope: !5373, file: !5296, line: 102, type: !75)
!5377 = !DILocalVariable(name: "s2", arg: 3, scope: !5373, file: !5296, line: 102, type: !78)
!5378 = !DILocalVariable(name: "s2size", arg: 4, scope: !5373, file: !5296, line: 102, type: !75)
!5379 = !DILocation(line: 102, column: 23, scope: !5373)
!5380 = !DILocation(line: 102, column: 34, scope: !5373)
!5381 = !DILocation(line: 102, column: 54, scope: !5373)
!5382 = !DILocation(line: 102, column: 65, scope: !5373)
!5383 = !DILocation(line: 104, column: 14, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5373, file: !5296, line: 104, column: 7)
!5385 = !DILocation(line: 104, column: 24, scope: !5384)
!5386 = !DILocation(line: 104, column: 27, scope: !5384)
!5387 = !DILocation(line: 104, column: 51, scope: !5384)
!5388 = !DILocation(line: 104, column: 7, scope: !5373)
!5389 = !DILocation(line: 106, column: 7, scope: !5390)
!5390 = distinct !DILexicalBlock(scope: !5384, file: !5296, line: 105, column: 5)
!5391 = !DILocation(line: 106, column: 13, scope: !5390)
!5392 = !DILocation(line: 107, column: 7, scope: !5390)
!5393 = !DILocation(line: 35, column: 27, scope: !5328, inlinedAt: !5394)
!5394 = distinct !DILocation(line: 110, column: 12, scope: !5384)
!5395 = !DILocation(line: 35, column: 38, scope: !5328, inlinedAt: !5394)
!5396 = !DILocation(line: 35, column: 58, scope: !5328, inlinedAt: !5394)
!5397 = !DILocation(line: 35, column: 69, scope: !5328, inlinedAt: !5394)
!5398 = !DILocation(line: 39, column: 13, scope: !5328, inlinedAt: !5394)
!5399 = !DILocation(line: 39, column: 19, scope: !5328, inlinedAt: !5394)
!5400 = !DILocation(line: 39, column: 32, scope: !5328, inlinedAt: !5394)
!5401 = !DILocation(line: 37, column: 7, scope: !5328, inlinedAt: !5394)
!5402 = !DILocation(line: 39, column: 30, scope: !5328, inlinedAt: !5394)
!5403 = !DILocation(line: 39, column: 3, scope: !5328, inlinedAt: !5394)
!5404 = !DILocation(line: 44, column: 22, scope: !5335, inlinedAt: !5394)
!5405 = !DILocation(line: 44, column: 34, scope: !5335, inlinedAt: !5394)
!5406 = !DILocation(line: 44, column: 14, scope: !5335, inlinedAt: !5394)
!5407 = !DILocation(line: 45, column: 22, scope: !5335, inlinedAt: !5394)
!5408 = !DILocation(line: 45, column: 34, scope: !5335, inlinedAt: !5394)
!5409 = !DILocation(line: 45, column: 14, scope: !5335, inlinedAt: !5394)
!5410 = !DILocation(line: 48, column: 14, scope: !5335, inlinedAt: !5394)
!5411 = !DILocation(line: 49, column: 14, scope: !5335, inlinedAt: !5394)
!5412 = !DILocation(line: 51, column: 18, scope: !5362, inlinedAt: !5394)
!5413 = !DILocation(line: 51, column: 11, scope: !5335, inlinedAt: !5394)
!5414 = !DILocation(line: 52, column: 26, scope: !5362, inlinedAt: !5394)
!5415 = !DILocation(line: 52, column: 16, scope: !5362, inlinedAt: !5394)
!5416 = !DILocation(line: 47, column: 10, scope: !5335, inlinedAt: !5394)
!5417 = !DILocation(line: 46, column: 10, scope: !5335, inlinedAt: !5394)
!5418 = !DILocation(line: 53, column: 18, scope: !5369, inlinedAt: !5394)
!5419 = !DILocation(line: 111, column: 1, scope: !5373)
