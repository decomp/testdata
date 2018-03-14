; ModuleID = 'coreutils-8.27/src/expr.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.valinfo = type { i32, %union.anon }
%union.anon = type { [1 x %struct.__mpz_struct] }
%struct.__mpz_struct = type { i32, i32, i64* }
%struct.re_pattern_buffer = type { %struct.re_dfa_t*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.re_dfa_t = type opaque
%struct.re_registers = type { i32, i32*, i32* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon.6 }
%union.anon.6 = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Usage: %s EXPRESSION\0A  or:  %s OPTION\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [274 x i8] c"\0APrint the value of EXPRESSION to standard output.  A blank line below\0Aseparates increasing precedence groups.  EXPRESSION may be:\0A\0A  ARG1 | ARG2       ARG1 if it is neither null nor 0, otherwise ARG2\0A\0A  ARG1 & ARG2       ARG1 if neither argument is null or 0, otherwise 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [290 x i8] c"\0A  ARG1 < ARG2       ARG1 is less than ARG2\0A  ARG1 <= ARG2      ARG1 is less than or equal to ARG2\0A  ARG1 = ARG2       ARG1 is equal to ARG2\0A  ARG1 != ARG2      ARG1 is unequal to ARG2\0A  ARG1 >= ARG2      ARG1 is greater than or equal to ARG2\0A  ARG1 > ARG2       ARG1 is greater than ARG2\0A\00", align 1
@.str.6 = private unnamed_addr constant [113 x i8] c"\0A  ARG1 + ARG2       arithmetic sum of ARG1 and ARG2\0A  ARG1 - ARG2       arithmetic difference of ARG1 and ARG2\0A\00", align 1
@.str.7 = private unnamed_addr constant [187 x i8] c"\0A  ARG1 * ARG2       arithmetic product of ARG1 and ARG2\0A  ARG1 / ARG2       arithmetic quotient of ARG1 divided by ARG2\0A  ARG1 % ARG2       arithmetic remainder of ARG1 divided by ARG2\0A\00", align 1
@.str.8 = private unnamed_addr constant [310 x i8] c"\0A  STRING : REGEXP   anchored pattern match of REGEXP in STRING\0A\0A  match STRING REGEXP        same as STRING : REGEXP\0A  substr STRING POS LENGTH   substring of STRING, POS counted from 1\0A  index STRING CHARS         index in STRING where any CHARS is found, or 0\0A  length STRING              length of STRING\0A\00", align 1
@.str.9 = private unnamed_addr constant [201 x i8] c"  + TOKEN                    interpret TOKEN as a string, even if it is a\0A                               keyword like 'match' or an operator like '/'\0A\0A  ( EXPRESSION )             value of EXPRESSION\0A\00", align 1
@.str.10 = private unnamed_addr constant [292 x i8] c"\0ABeware that many operators need to be escaped or quoted for shells.\0AComparisons are arithmetic if both ARGs are numbers, else lexicographical.\0APattern matches return the string matched between \5C( and \5C) or null; if\0A\5C( and \5C) are not used, they return the number of characters matched or 0.\0A\00", align 1
@.str.11 = private unnamed_addr constant [156 x i8] c"\0AExit status is 0 if EXPRESSION is neither null nor 0, 1 if EXPRESSION is null\0Aor 0, 2 if EXPRESSION is syntactically invalid, and 3 if an error occurred.\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.34 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Mike Parker\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"James Youngman\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@args = internal unnamed_addr global i8** null, align 8, !dbg !0
@.str.38 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"non-integer argument\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c":\00", align 1
@re_syntax_options = external local_unnamed_addr global i64, align 8
@.str.65 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.66 = private unnamed_addr constant [36 x i8] c"error in regular expression matcher\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"substr\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c")\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !126
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !132
@.str.23 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.24 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !135
@opterr = external local_unnamed_addr global i32, align 4
@.str.30 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.31, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.32, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !142
@optind = external local_unnamed_addr global i32, align 4
@.str.1.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !160
@.str.48 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.49 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.50 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.71, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.76, i32 0, i32 0), i8* null], align 16, !dbg !167
@.str.67 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.68 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.69 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.70 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.71 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.72 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.73 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.74 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.75 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.76 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !197
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !204
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !216
@.str.11.77 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.78 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.79 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.80 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.81 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.82 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.83 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !223
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !230
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !218
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !232
@.str.88 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.89 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.90 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.91 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.92 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.93 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.94 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.95 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.96 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.97 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.98 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.99 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.100 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.101 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.104 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.105 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.106 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.107 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.108 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.109 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !238
@.str.1.122 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.132 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.133 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.136 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !247
@.str.3.137 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.138 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.139 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.140 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.141 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.142 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !646 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !650, metadata !651), !dbg !652
  %2 = icmp eq i32 %0, 0, !dbg !653
  br i1 %2, label %8, label %3, !dbg !655

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !656, !tbaa !658
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !656
  %6 = load i8*, i8** @program_name, align 8, !dbg !656, !tbaa !658
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !656
  br label %68, !dbg !656

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !662
  %10 = load i8*, i8** @program_name, align 8, !dbg !662, !tbaa !658
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #11, !dbg !662
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !664, metadata !651) #11, !dbg !670
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !672, !tbaa !658
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i64 0, i32 5, !dbg !672
  %14 = load i8*, i8** %13, align 8, !dbg !672, !tbaa !673
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i64 0, i32 6, !dbg !672
  %16 = load i8*, i8** %15, align 8, !dbg !672, !tbaa !678
  %17 = icmp ult i8* %14, %16, !dbg !672
  br i1 %17, label %20, label %18, !dbg !672, !prof !679

; <label>:18:                                     ; preds = %8
  %19 = tail call i32 @__overflow(%struct._IO_FILE* %12, i32 10) #11, !dbg !672
  br label %22, !dbg !672

; <label>:20:                                     ; preds = %8
  %21 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !672
  store i8* %21, i8** %13, align 8, !dbg !672, !tbaa !673
  store i8 10, i8* %14, align 1, !dbg !672, !tbaa !680
  br label %22, !dbg !672

; <label>:22:                                     ; preds = %18, %20
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !681
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !681, !tbaa !658
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24) #11, !dbg !681
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !682
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !682, !tbaa !658
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27) #11, !dbg !682
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !683
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !683, !tbaa !658
  %31 = tail call i32 @fputs_unlocked(i8* %29, %struct._IO_FILE* %30) #11, !dbg !683
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([290 x i8], [290 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !684
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !684, !tbaa !658
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33) #11, !dbg !684
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !685
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !685, !tbaa !658
  %37 = tail call i32 @fputs_unlocked(i8* %35, %struct._IO_FILE* %36) #11, !dbg !685
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !686
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !686, !tbaa !658
  %40 = tail call i32 @fputs_unlocked(i8* %38, %struct._IO_FILE* %39) #11, !dbg !686
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([310 x i8], [310 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !687
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !687, !tbaa !658
  %43 = tail call i32 @fputs_unlocked(i8* %41, %struct._IO_FILE* %42) #11, !dbg !687
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !688
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !688, !tbaa !658
  %46 = tail call i32 @fputs_unlocked(i8* %44, %struct._IO_FILE* %45) #11, !dbg !688
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([292 x i8], [292 x i8]* @.str.10, i64 0, i64 0), i32 5) #11, !dbg !689
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !689, !tbaa !658
  %49 = tail call i32 @fputs_unlocked(i8* %47, %struct._IO_FILE* %48) #11, !dbg !689
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.11, i64 0, i64 0), i32 5) #11, !dbg !690
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !690, !tbaa !658
  %52 = tail call i32 @fputs_unlocked(i8* %50, %struct._IO_FILE* %51) #11, !dbg !690
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !113, metadata !651) #11, !dbg !691
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 0, metadata !113, metadata !651) #11, !dbg !691
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 5) #11, !dbg !693
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0)) #11, !dbg !693
  %55 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !694
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !121, metadata !651) #11, !dbg !695
  %56 = icmp eq i8* %55, null, !dbg !696
  br i1 %56, label %63, label %57, !dbg !698

; <label>:57:                                     ; preds = %22
  %58 = tail call i32 @strncmp(i8* nonnull %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i64 3) #14, !dbg !699
  %59 = icmp eq i32 %58, 0, !dbg !699
  br i1 %59, label %63, label %60, !dbg !700

; <label>:60:                                     ; preds = %57
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.34, i64 0, i64 0), i32 5) #11, !dbg !701
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !701
  br label %63, !dbg !703

; <label>:63:                                     ; preds = %22, %57, %60
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 5) #11, !dbg !704
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !704
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i64 0, i64 0), i32 5) #11, !dbg !705
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #11, !dbg !705
  br label %68

; <label>:68:                                     ; preds = %63, %3
  tail call void @exit(i32 %0) #15, !dbg !706
  unreachable, !dbg !706
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !707 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !711, metadata !651), !dbg !715
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !712, metadata !651), !dbg !716
  %3 = load i8*, i8** %1, align 8, !dbg !717, !tbaa !658
  tail call void @set_program_name(i8* %3) #11, !dbg !718
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !719
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #11, !dbg !720
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !721
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !722, metadata !651), !dbg !725
  store volatile i32 3, i32* @exit_failure, align 4, !dbg !727, !tbaa !729
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !730
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), void (i32)* nonnull @usage, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* null) #11, !dbg !731
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !714, metadata !651), !dbg !732
  %8 = icmp ugt i32 %0, 1, !dbg !733
  br i1 %8, label %9, label %17, !dbg !735

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !736
  %11 = load i8*, i8** %10, align 8, !dbg !736, !tbaa !658
  %12 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #14, !dbg !736
  %13 = icmp eq i32 %12, 0, !dbg !736
  br i1 %13, label %14, label %19, !dbg !737

; <label>:14:                                     ; preds = %9
  %15 = add i32 %0, -1, !dbg !738
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !714, metadata !651), !dbg !732
  tail call void @llvm.dbg.value(metadata i8** %10, i64 0, metadata !712, metadata !651), !dbg !716
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !714, metadata !651), !dbg !732
  tail call void @llvm.dbg.value(metadata i8** %10, i64 0, metadata !712, metadata !651), !dbg !716
  %16 = icmp ult i32 %15, 2, !dbg !740
  br i1 %16, label %17, label %19, !dbg !742

; <label>:17:                                     ; preds = %2, %14
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i32 5) #11, !dbg !743
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %18) #11, !dbg !745
  tail call void @usage(i32 2) #16, !dbg !746
  unreachable, !dbg !746

; <label>:19:                                     ; preds = %9, %14
  %20 = phi i8** [ %10, %14 ], [ %1, %9 ]
  %21 = getelementptr inbounds i8*, i8** %20, i64 1, !dbg !747
  store i8** %21, i8*** @args, align 8, !dbg !748, !tbaa !658
  %22 = tail call fastcc %struct.valinfo* @eval(i1 zeroext true), !dbg !749
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %22, i64 0, metadata !713, metadata !651), !dbg !750
  %23 = load i8**, i8*** @args, align 8, !dbg !751, !tbaa !658
  %24 = load i8*, i8** %23, align 8, !dbg !757, !tbaa !658
  %25 = icmp eq i8* %24, null, !dbg !758
  br i1 %25, label %27, label %26, !dbg !759

; <label>:26:                                     ; preds = %19
  tail call fastcc void @syntax_error(), !dbg !760
  unreachable

; <label>:27:                                     ; preds = %19
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %22, i64 0, metadata !761, metadata !651) #11, !dbg !766
  %28 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %22, i64 0, i32 0, !dbg !768
  %29 = load i32, i32* %28, align 8, !dbg !768, !tbaa !769
  switch i32 %29, label %49 [
    i32 0, label %30
    i32 1, label %44
  ], !dbg !771

; <label>:30:                                     ; preds = %27
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !772, !tbaa !658
  %32 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %22, i64 0, i32 1, i32 0, i64 0, !dbg !774
  %33 = tail call i64 @__gmpz_out_str(%struct._IO_FILE* %31, i32 10, %struct.__mpz_struct* %32) #11, !dbg !775
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !664, metadata !651) #11, !dbg !776
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !778, !tbaa !658
  %35 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %34, i64 0, i32 5, !dbg !778
  %36 = load i8*, i8** %35, align 8, !dbg !778, !tbaa !673
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %34, i64 0, i32 6, !dbg !778
  %38 = load i8*, i8** %37, align 8, !dbg !778, !tbaa !678
  %39 = icmp ult i8* %36, %38, !dbg !778
  br i1 %39, label %42, label %40, !dbg !778, !prof !679

; <label>:40:                                     ; preds = %30
  %41 = tail call i32 @__overflow(%struct._IO_FILE* %34, i32 10) #11, !dbg !778
  br label %50, !dbg !778

; <label>:42:                                     ; preds = %30
  %43 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !778
  store i8* %43, i8** %35, align 8, !dbg !778, !tbaa !673
  store i8 10, i8* %36, align 1, !dbg !778, !tbaa !680
  br label %50, !dbg !778

; <label>:44:                                     ; preds = %27
  %45 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %22, i64 0, i32 1, !dbg !779
  %46 = bitcast %union.anon* %45 to i8**, !dbg !780
  %47 = load i8*, i8** %46, align 8, !dbg !780, !tbaa !680
  %48 = tail call i32 @puts(i8* %47) #11, !dbg !781
  br label %50, !dbg !782

; <label>:49:                                     ; preds = %27
  tail call void @abort() #15, !dbg !783
  unreachable, !dbg !783

; <label>:50:                                     ; preds = %40, %42, %44
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %22, i64 0, metadata !784, metadata !651) #11, !dbg !792
  %51 = load i32, i32* %28, align 8, !dbg !794, !tbaa !769
  switch i32 %51, label %76 [
    i32 0, label %52
    i32 1, label %57
  ], !dbg !795

; <label>:52:                                     ; preds = %50
  %53 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %22, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !796
  %54 = load i32, i32* %53, align 4, !dbg !796, !tbaa !680
  %55 = icmp eq i32 %54, 0, !dbg !796
  %56 = zext i1 %55 to i32, !dbg !797
  br label %77, !dbg !797

; <label>:57:                                     ; preds = %50
  %58 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %22, i64 0, i32 1, !dbg !798
  %59 = bitcast %union.anon* %58 to i8**, !dbg !799
  %60 = load i8*, i8** %59, align 8, !dbg !799, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !789, metadata !651) #11, !dbg !800
  %61 = load i8, i8* %60, align 1, !dbg !801, !tbaa !680
  %62 = icmp eq i8 %61, 0, !dbg !803
  br i1 %62, label %77, label %63, !dbg !804

; <label>:63:                                     ; preds = %57
  %64 = icmp eq i8 %61, 45, !dbg !805
  %65 = zext i1 %64 to i64, !dbg !806
  %66 = getelementptr inbounds i8, i8* %60, i64 %65, !dbg !806
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !789, metadata !651) #11, !dbg !800
  %67 = load i8, i8* %66, align 1, !dbg !807, !tbaa !680
  br label %68, !dbg !810, !llvm.loop !811

; <label>:68:                                     ; preds = %72, %63
  %69 = phi i8 [ %74, %72 ], [ %67, %63 ], !dbg !807
  %70 = phi i8* [ %73, %72 ], [ %66, %63 ]
  tail call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !789, metadata !651) #11, !dbg !800
  %71 = icmp eq i8 %69, 48, !dbg !814
  br i1 %71, label %72, label %77, !dbg !815

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !816
  tail call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !789, metadata !651) #11, !dbg !800
  %74 = load i8, i8* %73, align 1, !dbg !817, !tbaa !680
  %75 = icmp eq i8 %74, 0, !dbg !818
  br i1 %75, label %77, label %68, !dbg !818, !llvm.loop !811

; <label>:76:                                     ; preds = %50
  tail call void @abort() #15, !dbg !819
  unreachable, !dbg !819

; <label>:77:                                     ; preds = %68, %72, %52, %57
  %78 = phi i32 [ %56, %52 ], [ 1, %57 ], [ 0, %68 ], [ 1, %72 ]
  ret i32 %78, !dbg !820
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval(i1 zeroext) unnamed_addr #6 !dbg !821 {
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !823, metadata !651), !dbg !826
  %2 = tail call fastcc %struct.valinfo* @eval1(i1 zeroext %0), !dbg !827
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !824, metadata !651), !dbg !828
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !824, metadata !651), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !837
  %3 = load i8**, i8*** @args, align 8, !dbg !841, !tbaa !658
  %4 = load i8*, i8** %3, align 8, !dbg !842, !tbaa !658
  %5 = icmp eq i8* %4, null, !dbg !843
  br i1 %5, label %124, label %6, !dbg !844

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !845

; <label>:7:                                      ; preds = %6, %126
  %8 = phi i8* [ %129, %126 ], [ %4, %6 ]
  %9 = phi i8** [ %128, %126 ], [ %3, %6 ]
  %10 = phi %struct.valinfo* [ %127, %126 ], [ %2, %6 ]
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !824, metadata !651), !dbg !828
  %11 = tail call i32 @strcmp(i8* nonnull %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #14, !dbg !845
  %12 = icmp eq i32 %11, 0, !dbg !845
  %13 = zext i1 %12 to i64, !dbg !846
  %14 = getelementptr inbounds i8*, i8** %9, i64 %13, !dbg !846
  store i8** %14, i8*** @args, align 8, !dbg !846, !tbaa !658
  br i1 %12, label %15, label %124, !dbg !847

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 0, !dbg !848
  br i1 %0, label %17, label %43, !dbg !851

; <label>:17:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !784, metadata !651) #11, !dbg !852
  %18 = load i32, i32* %16, align 8, !dbg !848, !tbaa !769
  switch i32 %18, label %42 [
    i32 0, label %19
    i32 1, label %23
  ], !dbg !853

; <label>:19:                                     ; preds = %17
  %20 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !854
  %21 = load i32, i32* %20, align 4, !dbg !854, !tbaa !680
  %22 = icmp eq i32 %21, 0, !dbg !854
  br label %43, !dbg !855

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, !dbg !856
  %25 = bitcast %union.anon* %24 to i8**, !dbg !857
  %26 = load i8*, i8** %25, align 8, !dbg !857, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !789, metadata !651) #11, !dbg !858
  %27 = load i8, i8* %26, align 1, !dbg !859, !tbaa !680
  %28 = icmp eq i8 %27, 0, !dbg !860
  br i1 %28, label %43, label %29, !dbg !861

; <label>:29:                                     ; preds = %23
  %30 = icmp eq i8 %27, 45, !dbg !862
  %31 = zext i1 %30 to i64, !dbg !863
  %32 = getelementptr inbounds i8, i8* %26, i64 %31, !dbg !863
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !789, metadata !651) #11, !dbg !858
  %33 = load i8, i8* %32, align 1, !dbg !864, !tbaa !680
  br label %34, !dbg !865, !llvm.loop !811

; <label>:34:                                     ; preds = %38, %29
  %35 = phi i8 [ %40, %38 ], [ %33, %29 ], !dbg !864
  %36 = phi i8* [ %39, %38 ], [ %32, %29 ]
  tail call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !789, metadata !651) #11, !dbg !858
  %37 = icmp eq i8 %35, 48, !dbg !866
  br i1 %37, label %38, label %43, !dbg !867

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !868
  tail call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !789, metadata !651) #11, !dbg !858
  %40 = load i8, i8* %39, align 1, !dbg !869, !tbaa !680
  %41 = icmp eq i8 %40, 0, !dbg !870
  br i1 %41, label %43, label %34, !dbg !870, !llvm.loop !811

; <label>:42:                                     ; preds = %17
  tail call void @abort() #15, !dbg !871
  unreachable, !dbg !871

; <label>:43:                                     ; preds = %38, %34, %15, %23, %19
  %44 = phi i1 [ true, %23 ], [ %22, %19 ], [ false, %15 ], [ false, %34 ], [ true, %38 ]
  %45 = tail call fastcc %struct.valinfo* @eval1(i1 zeroext %44), !dbg !872
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %45, i64 0, metadata !825, metadata !651), !dbg !873
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !784, metadata !651) #11, !dbg !874
  %46 = load i32, i32* %16, align 8, !dbg !877, !tbaa !769
  switch i32 %46, label %66 [
    i32 0, label %67
    i32 1, label %47
  ], !dbg !878

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, !dbg !879
  %49 = bitcast %union.anon* %48 to i8**, !dbg !880
  %50 = load i8*, i8** %49, align 8, !dbg !880, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !789, metadata !651) #11, !dbg !881
  %51 = load i8, i8* %50, align 1, !dbg !882, !tbaa !680
  %52 = icmp eq i8 %51, 0, !dbg !883
  br i1 %52, label %71, label %53, !dbg !884

; <label>:53:                                     ; preds = %47
  %54 = icmp eq i8 %51, 45, !dbg !885
  %55 = zext i1 %54 to i64, !dbg !886
  %56 = getelementptr inbounds i8, i8* %50, i64 %55, !dbg !886
  tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !789, metadata !651) #11, !dbg !881
  %57 = load i8, i8* %56, align 1, !dbg !887, !tbaa !680
  br label %58, !dbg !888, !llvm.loop !811

; <label>:58:                                     ; preds = %62, %53
  %59 = phi i8 [ %64, %62 ], [ %57, %53 ], !dbg !887
  %60 = phi i8* [ %63, %62 ], [ %56, %53 ]
  tail call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !789, metadata !651) #11, !dbg !881
  %61 = icmp eq i8 %59, 48, !dbg !889
  br i1 %61, label %62, label %112, !dbg !890

; <label>:62:                                     ; preds = %58
  %63 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !891
  tail call void @llvm.dbg.value(metadata i8* %63, i64 0, metadata !789, metadata !651) #11, !dbg !881
  %64 = load i8, i8* %63, align 1, !dbg !892, !tbaa !680
  %65 = icmp eq i8 %64, 0, !dbg !893
  br i1 %65, label %71, label %58, !dbg !893, !llvm.loop !811

; <label>:66:                                     ; preds = %43
  tail call void @abort() #15, !dbg !894
  unreachable, !dbg !894

; <label>:67:                                     ; preds = %43
  %68 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !895
  %69 = load i32, i32* %68, align 4, !dbg !895, !tbaa !680
  %70 = icmp eq i32 %69, 0, !dbg !895
  br i1 %70, label %72, label %112, !dbg !896

; <label>:71:                                     ; preds = %62, %47
  tail call void @free(i8* %50) #11, !dbg !897
  br label %74, !dbg !897

; <label>:72:                                     ; preds = %67
  %73 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, i32 0, i64 0, !dbg !904
  tail call void @__gmpz_clear(%struct.__mpz_struct* %73) #11, !dbg !905
  br label %74

; <label>:74:                                     ; preds = %71, %72
  %75 = bitcast %struct.valinfo* %10 to i8*, !dbg !906
  tail call void @free(i8* %75) #11, !dbg !907
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %45, i64 0, metadata !824, metadata !651), !dbg !828
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %45, i64 0, metadata !784, metadata !651) #11, !dbg !908
  %76 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %45, i64 0, i32 0, !dbg !911
  %77 = load i32, i32* %76, align 8, !dbg !911, !tbaa !769
  switch i32 %77, label %97 [
    i32 0, label %98
    i32 1, label %78
  ], !dbg !912

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %45, i64 0, i32 1, !dbg !913
  %80 = bitcast %union.anon* %79 to i8**, !dbg !914
  %81 = load i8*, i8** %80, align 8, !dbg !914, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %81, i64 0, metadata !789, metadata !651) #11, !dbg !915
  %82 = load i8, i8* %81, align 1, !dbg !916, !tbaa !680
  %83 = icmp eq i8 %82, 0, !dbg !917
  br i1 %83, label %102, label %84, !dbg !918

; <label>:84:                                     ; preds = %78
  %85 = icmp eq i8 %82, 45, !dbg !919
  %86 = zext i1 %85 to i64, !dbg !920
  %87 = getelementptr inbounds i8, i8* %81, i64 %86, !dbg !920
  tail call void @llvm.dbg.value(metadata i8* %87, i64 0, metadata !789, metadata !651) #11, !dbg !915
  %88 = load i8, i8* %87, align 1, !dbg !921, !tbaa !680
  br label %89, !dbg !922, !llvm.loop !811

; <label>:89:                                     ; preds = %93, %84
  %90 = phi i8 [ %95, %93 ], [ %88, %84 ], !dbg !921
  %91 = phi i8* [ %94, %93 ], [ %87, %84 ]
  tail call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !789, metadata !651) #11, !dbg !915
  %92 = icmp eq i8 %90, 48, !dbg !923
  br i1 %92, label %93, label %126, !dbg !924

; <label>:93:                                     ; preds = %89
  %94 = getelementptr inbounds i8, i8* %91, i64 1, !dbg !925
  tail call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !789, metadata !651) #11, !dbg !915
  %95 = load i8, i8* %94, align 1, !dbg !926, !tbaa !680
  %96 = icmp eq i8 %95, 0, !dbg !927
  br i1 %96, label %102, label %89, !dbg !927, !llvm.loop !811

; <label>:97:                                     ; preds = %74
  tail call void @abort() #15, !dbg !928
  unreachable, !dbg !928

; <label>:98:                                     ; preds = %74
  %99 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %45, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !929
  %100 = load i32, i32* %99, align 4, !dbg !929, !tbaa !680
  %101 = icmp eq i32 %100, 0, !dbg !929
  br i1 %101, label %103, label %126, !dbg !930

; <label>:102:                                    ; preds = %93, %78
  tail call void @free(i8* %81) #11, !dbg !931
  br label %105, !dbg !931

; <label>:103:                                    ; preds = %98
  %104 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %45, i64 0, i32 1, i32 0, i64 0, !dbg !934
  tail call void @__gmpz_clear(%struct.__mpz_struct* %104) #11, !dbg !935
  br label %105

; <label>:105:                                    ; preds = %102, %103
  %106 = bitcast %struct.valinfo* %45 to i8*, !dbg !936
  tail call void @free(i8* %106) #11, !dbg !937
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !938, metadata !651) #11, !dbg !944
  %107 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !946
  %108 = bitcast i8* %107 to %struct.valinfo*, !dbg !946
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %108, i64 0, metadata !943, metadata !651) #11, !dbg !947
  %109 = bitcast i8* %107 to i32*, !dbg !948
  store i32 0, i32* %109, align 8, !dbg !949, !tbaa !769
  %110 = getelementptr inbounds i8, i8* %107, i64 8, !dbg !950
  %111 = bitcast i8* %110 to %struct.__mpz_struct*, !dbg !951
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* %111, i64 0) #11, !dbg !952
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %108, i64 0, metadata !824, metadata !651), !dbg !828
  br label %126, !dbg !953

; <label>:112:                                    ; preds = %58, %67
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %45, i64 0, metadata !901, metadata !651) #11, !dbg !954
  %113 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %45, i64 0, i32 0, !dbg !956
  %114 = load i32, i32* %113, align 8, !dbg !956, !tbaa !769
  %115 = icmp eq i32 %114, 1, !dbg !957
  %116 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %45, i64 0, i32 1
  br i1 %115, label %117, label %120, !dbg !958

; <label>:117:                                    ; preds = %112
  %118 = bitcast %union.anon* %116 to i8**, !dbg !959
  %119 = load i8*, i8** %118, align 8, !dbg !959, !tbaa !680
  tail call void @free(i8* %119) #11, !dbg !960
  br label %122, !dbg !960

; <label>:120:                                    ; preds = %112
  %121 = getelementptr inbounds %union.anon, %union.anon* %116, i64 0, i32 0, i64 0, !dbg !961
  tail call void @__gmpz_clear(%struct.__mpz_struct* %121) #11, !dbg !962
  br label %122

; <label>:122:                                    ; preds = %117, %120
  %123 = bitcast %struct.valinfo* %45 to i8*, !dbg !963
  tail call void @free(i8* %123) #11, !dbg !964
  br label %126

; <label>:124:                                    ; preds = %7, %126, %1
  %125 = phi %struct.valinfo* [ %2, %1 ], [ %127, %126 ], [ %10, %7 ]
  ret %struct.valinfo* %125, !dbg !965

; <label>:126:                                    ; preds = %89, %122, %105, %98
  %127 = phi %struct.valinfo* [ %108, %105 ], [ %45, %98 ], [ %10, %122 ], [ %45, %89 ]
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %127, i64 0, metadata !824, metadata !651), !dbg !828
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %127, i64 0, metadata !824, metadata !651), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !837
  %128 = load i8**, i8*** @args, align 8, !dbg !841, !tbaa !658
  %129 = load i8*, i8** %128, align 8, !dbg !842, !tbaa !658
  %130 = icmp eq i8* %129, null, !dbg !843
  br i1 %130, label %124, label %7, !dbg !844, !llvm.loop !966
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @syntax_error() unnamed_addr #0 !dbg !969 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i32 5) #11, !dbg !972
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %1) #11, !dbg !972
  unreachable, !dbg !972
}

declare i64 @__gmpz_out_str(%struct._IO_FILE*, i32, %struct.__mpz_struct*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval1(i1 zeroext) unnamed_addr #6 !dbg !973 {
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !975, metadata !651), !dbg !978
  %2 = tail call fastcc %struct.valinfo* @eval2(i1 zeroext %0), !dbg !979
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !976, metadata !651), !dbg !980
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !976, metadata !651), !dbg !980
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !981
  %3 = load i8**, i8*** @args, align 8, !dbg !985, !tbaa !658
  %4 = load i8*, i8** %3, align 8, !dbg !986, !tbaa !658
  %5 = icmp eq i8* %4, null, !dbg !987
  br i1 %5, label %134, label %6, !dbg !988

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !989

; <label>:7:                                      ; preds = %6, %136
  %8 = phi i8* [ %139, %136 ], [ %4, %6 ]
  %9 = phi i8** [ %138, %136 ], [ %3, %6 ]
  %10 = phi %struct.valinfo* [ %137, %136 ], [ %2, %6 ]
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !976, metadata !651), !dbg !980
  %11 = tail call i32 @strcmp(i8* nonnull %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !989
  %12 = icmp eq i32 %11, 0, !dbg !989
  %13 = zext i1 %12 to i64, !dbg !990
  %14 = getelementptr inbounds i8*, i8** %9, i64 %13, !dbg !990
  store i8** %14, i8*** @args, align 8, !dbg !990, !tbaa !658
  br i1 %12, label %15, label %134, !dbg !991

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 0, !dbg !992
  br i1 %0, label %17, label %46, !dbg !995

; <label>:17:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !784, metadata !651) #11, !dbg !996
  %18 = load i32, i32* %16, align 8, !dbg !992, !tbaa !769
  switch i32 %18, label %42 [
    i32 0, label %19
    i32 1, label %23
  ], !dbg !997

; <label>:19:                                     ; preds = %17
  %20 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !998
  %21 = load i32, i32* %20, align 4, !dbg !998, !tbaa !680
  %22 = icmp eq i32 %21, 0, !dbg !998
  br label %43, !dbg !999

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, !dbg !1000
  %25 = bitcast %union.anon* %24 to i8**, !dbg !1001
  %26 = load i8*, i8** %25, align 8, !dbg !1001, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !789, metadata !651) #11, !dbg !1002
  %27 = load i8, i8* %26, align 1, !dbg !1003, !tbaa !680
  %28 = icmp eq i8 %27, 0, !dbg !1004
  br i1 %28, label %43, label %29, !dbg !1005

; <label>:29:                                     ; preds = %23
  %30 = icmp eq i8 %27, 45, !dbg !1006
  %31 = zext i1 %30 to i64, !dbg !1007
  %32 = getelementptr inbounds i8, i8* %26, i64 %31, !dbg !1007
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !789, metadata !651) #11, !dbg !1002
  %33 = load i8, i8* %32, align 1, !dbg !1008, !tbaa !680
  br label %34, !dbg !1009, !llvm.loop !811

; <label>:34:                                     ; preds = %38, %29
  %35 = phi i8 [ %40, %38 ], [ %33, %29 ], !dbg !1008
  %36 = phi i8* [ %39, %38 ], [ %32, %29 ]
  tail call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !789, metadata !651) #11, !dbg !1002
  %37 = icmp eq i8 %35, 48, !dbg !1010
  br i1 %37, label %38, label %43, !dbg !1011

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1012
  tail call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !789, metadata !651) #11, !dbg !1002
  %40 = load i8, i8* %39, align 1, !dbg !1013, !tbaa !680
  %41 = icmp eq i8 %40, 0, !dbg !1014
  br i1 %41, label %43, label %34, !dbg !1014, !llvm.loop !811

; <label>:42:                                     ; preds = %17
  tail call void @abort() #15, !dbg !1015
  unreachable, !dbg !1015

; <label>:43:                                     ; preds = %34, %38, %19, %23
  %44 = phi i1 [ %22, %19 ], [ true, %23 ], [ false, %34 ], [ true, %38 ]
  %45 = xor i1 %44, true, !dbg !1016
  br label %46

; <label>:46:                                     ; preds = %15, %43
  %47 = phi i1 [ %45, %43 ], [ false, %15 ]
  %48 = tail call fastcc %struct.valinfo* @eval2(i1 zeroext %47), !dbg !1017
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %48, i64 0, metadata !977, metadata !651), !dbg !1018
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !784, metadata !651) #11, !dbg !1019
  %49 = load i32, i32* %16, align 8, !dbg !1022, !tbaa !769
  switch i32 %49, label %69 [
    i32 0, label %70
    i32 1, label %50
  ], !dbg !1023

; <label>:50:                                     ; preds = %46
  %51 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, !dbg !1024
  %52 = bitcast %union.anon* %51 to i8**, !dbg !1025
  %53 = load i8*, i8** %52, align 8, !dbg !1025, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !789, metadata !651) #11, !dbg !1026
  %54 = load i8, i8* %53, align 1, !dbg !1027, !tbaa !680
  %55 = icmp eq i8 %54, 0, !dbg !1028
  br i1 %55, label %107, label %56, !dbg !1029

; <label>:56:                                     ; preds = %50
  %57 = icmp eq i8 %54, 45, !dbg !1030
  %58 = zext i1 %57 to i64, !dbg !1031
  %59 = getelementptr inbounds i8, i8* %53, i64 %58, !dbg !1031
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !789, metadata !651) #11, !dbg !1026
  %60 = load i8, i8* %59, align 1, !dbg !1032, !tbaa !680
  br label %61, !dbg !1033, !llvm.loop !811

; <label>:61:                                     ; preds = %65, %56
  %62 = phi i8 [ %67, %65 ], [ %60, %56 ], !dbg !1032
  %63 = phi i8* [ %66, %65 ], [ %59, %56 ]
  tail call void @llvm.dbg.value(metadata i8* %63, i64 0, metadata !789, metadata !651) #11, !dbg !1026
  %64 = icmp eq i8 %62, 48, !dbg !1034
  br i1 %64, label %65, label %74, !dbg !1035

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !1036
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !789, metadata !651) #11, !dbg !1026
  %67 = load i8, i8* %66, align 1, !dbg !1037, !tbaa !680
  %68 = icmp eq i8 %67, 0, !dbg !1038
  br i1 %68, label %101, label %61, !dbg !1038, !llvm.loop !811

; <label>:69:                                     ; preds = %46
  tail call void @abort() #15, !dbg !1039
  unreachable, !dbg !1039

; <label>:70:                                     ; preds = %46
  %71 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !1040
  %72 = load i32, i32* %71, align 4, !dbg !1040, !tbaa !680
  %73 = icmp eq i32 %72, 0, !dbg !1040
  br i1 %73, label %109, label %74, !dbg !1041

; <label>:74:                                     ; preds = %61, %70
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %48, i64 0, metadata !784, metadata !651) #11, !dbg !1042
  %75 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %48, i64 0, i32 0, !dbg !1044
  %76 = load i32, i32* %75, align 8, !dbg !1044, !tbaa !769
  switch i32 %76, label %96 [
    i32 0, label %97
    i32 1, label %77
  ], !dbg !1045

; <label>:77:                                     ; preds = %74
  %78 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %48, i64 0, i32 1, !dbg !1046
  %79 = bitcast %union.anon* %78 to i8**, !dbg !1047
  %80 = load i8*, i8** %79, align 8, !dbg !1047, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !789, metadata !651) #11, !dbg !1048
  %81 = load i8, i8* %80, align 1, !dbg !1049, !tbaa !680
  %82 = icmp eq i8 %81, 0, !dbg !1050
  br i1 %82, label %101, label %83, !dbg !1051

; <label>:83:                                     ; preds = %77
  %84 = icmp eq i8 %81, 45, !dbg !1052
  %85 = zext i1 %84 to i64, !dbg !1053
  %86 = getelementptr inbounds i8, i8* %80, i64 %85, !dbg !1053
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !789, metadata !651) #11, !dbg !1048
  %87 = load i8, i8* %86, align 1, !dbg !1054, !tbaa !680
  br label %88, !dbg !1055, !llvm.loop !811

; <label>:88:                                     ; preds = %92, %83
  %89 = phi i8 [ %94, %92 ], [ %87, %83 ], !dbg !1054
  %90 = phi i8* [ %93, %92 ], [ %86, %83 ]
  tail call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !789, metadata !651) #11, !dbg !1048
  %91 = icmp eq i8 %89, 48, !dbg !1056
  br i1 %91, label %92, label %129, !dbg !1057

; <label>:92:                                     ; preds = %88
  %93 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !1058
  tail call void @llvm.dbg.value(metadata i8* %93, i64 0, metadata !789, metadata !651) #11, !dbg !1048
  %94 = load i8, i8* %93, align 1, !dbg !1059, !tbaa !680
  %95 = icmp eq i8 %94, 0, !dbg !1060
  br i1 %95, label %101, label %88, !dbg !1060, !llvm.loop !811

; <label>:96:                                     ; preds = %74
  tail call void @abort() #15, !dbg !1061
  unreachable, !dbg !1061

; <label>:97:                                     ; preds = %74
  %98 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %48, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !1062
  %99 = load i32, i32* %98, align 4, !dbg !1062, !tbaa !680
  %100 = icmp eq i32 %99, 0, !dbg !1062
  br i1 %100, label %101, label %130, !dbg !1063

; <label>:101:                                    ; preds = %65, %92, %77, %97
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !901, metadata !651) #11, !dbg !1064
  %102 = icmp eq i32 %49, 1, !dbg !1067
  br i1 %102, label %103, label %109, !dbg !1068

; <label>:103:                                    ; preds = %101
  %104 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1
  %105 = bitcast %union.anon* %104 to i8**
  %106 = load i8*, i8** %105, align 8, !dbg !1069, !tbaa !680
  br label %107, !dbg !1068

; <label>:107:                                    ; preds = %103, %50
  %108 = phi i8* [ %106, %103 ], [ %53, %50 ], !dbg !1069
  tail call void @free(i8* %108) #11, !dbg !1070
  br label %111, !dbg !1070

; <label>:109:                                    ; preds = %70, %101
  %110 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, i32 0, i64 0, !dbg !1071
  tail call void @__gmpz_clear(%struct.__mpz_struct* %110) #11, !dbg !1072
  br label %111

; <label>:111:                                    ; preds = %107, %109
  %112 = bitcast %struct.valinfo* %10 to i8*, !dbg !1073
  tail call void @free(i8* %112) #11, !dbg !1074
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %48, i64 0, metadata !901, metadata !651) #11, !dbg !1075
  %113 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %48, i64 0, i32 0, !dbg !1077
  %114 = load i32, i32* %113, align 8, !dbg !1077, !tbaa !769
  %115 = icmp eq i32 %114, 1, !dbg !1078
  %116 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %48, i64 0, i32 1
  br i1 %115, label %117, label %120, !dbg !1079

; <label>:117:                                    ; preds = %111
  %118 = bitcast %union.anon* %116 to i8**, !dbg !1080
  %119 = load i8*, i8** %118, align 8, !dbg !1080, !tbaa !680
  tail call void @free(i8* %119) #11, !dbg !1081
  br label %122, !dbg !1081

; <label>:120:                                    ; preds = %111
  %121 = getelementptr inbounds %union.anon, %union.anon* %116, i64 0, i32 0, i64 0, !dbg !1082
  tail call void @__gmpz_clear(%struct.__mpz_struct* %121) #11, !dbg !1083
  br label %122

; <label>:122:                                    ; preds = %117, %120
  %123 = bitcast %struct.valinfo* %48 to i8*, !dbg !1084
  tail call void @free(i8* %123) #11, !dbg !1085
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !938, metadata !651) #11, !dbg !1086
  %124 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !1088
  %125 = bitcast i8* %124 to %struct.valinfo*, !dbg !1088
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %125, i64 0, metadata !943, metadata !651) #11, !dbg !1089
  %126 = bitcast i8* %124 to i32*, !dbg !1090
  store i32 0, i32* %126, align 8, !dbg !1091, !tbaa !769
  %127 = getelementptr inbounds i8, i8* %124, i64 8, !dbg !1092
  %128 = bitcast i8* %127 to %struct.__mpz_struct*, !dbg !1093
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* %128, i64 0) #11, !dbg !1094
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %125, i64 0, metadata !976, metadata !651), !dbg !980
  br label %136, !dbg !1095

; <label>:129:                                    ; preds = %88
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %48, i64 0, metadata !901, metadata !651) #11, !dbg !1096
  tail call void @free(i8* %80) #11, !dbg !1098
  br label %132, !dbg !1098

; <label>:130:                                    ; preds = %97
  %131 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %48, i64 0, i32 1, i32 0, i64 0, !dbg !1099
  tail call void @__gmpz_clear(%struct.__mpz_struct* %131) #11, !dbg !1100
  br label %132

; <label>:132:                                    ; preds = %129, %130
  %133 = bitcast %struct.valinfo* %48 to i8*, !dbg !1101
  tail call void @free(i8* %133) #11, !dbg !1102
  br label %136

; <label>:134:                                    ; preds = %7, %136, %1
  %135 = phi %struct.valinfo* [ %2, %1 ], [ %137, %136 ], [ %10, %7 ]
  ret %struct.valinfo* %135, !dbg !1103

; <label>:136:                                    ; preds = %122, %132
  %137 = phi %struct.valinfo* [ %125, %122 ], [ %10, %132 ]
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %137, i64 0, metadata !976, metadata !651), !dbg !980
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %137, i64 0, metadata !976, metadata !651), !dbg !980
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !981
  %138 = load i8**, i8*** @args, align 8, !dbg !985, !tbaa !658
  %139 = load i8*, i8** %138, align 8, !dbg !986, !tbaa !658
  %140 = icmp eq i8* %139, null, !dbg !987
  br i1 %140, label %134, label %7, !dbg !988, !llvm.loop !1104
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

declare void @__gmpz_clear(%struct.__mpz_struct*) local_unnamed_addr #3

declare void @__gmpz_init_set_ui(%struct.__mpz_struct*, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval2(i1 zeroext) unnamed_addr #6 !dbg !14 {
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !47, metadata !651), !dbg !1107
  %2 = tail call fastcc %struct.valinfo* @eval3(i1 zeroext %0), !dbg !1108
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !48, metadata !651), !dbg !1109
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !48, metadata !651), !dbg !1109
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !52, metadata !651), !dbg !1110
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1111
  %3 = load i8**, i8*** @args, align 8, !dbg !1114, !tbaa !658
  %4 = load i8*, i8** %3, align 8, !dbg !1115, !tbaa !658
  %5 = icmp eq i8* %4, null, !dbg !1116
  br i1 %5, label %182, label %6, !dbg !1117

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !1118

; <label>:7:                                      ; preds = %6, %171
  %8 = phi i8* [ %180, %171 ], [ %4, %6 ]
  %9 = phi i8** [ %179, %171 ], [ %3, %6 ]
  %10 = phi %struct.valinfo* [ %175, %171 ], [ %2, %6 ]
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !48, metadata !651), !dbg !1109
  %11 = tail call i32 @strcmp(i8* nonnull %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #14, !dbg !1118
  %12 = icmp eq i32 %11, 0, !dbg !1118
  %13 = zext i1 %12 to i64, !dbg !1119
  %14 = getelementptr inbounds i8*, i8** %9, i64 %13, !dbg !1119
  store i8** %14, i8*** @args, align 8, !dbg !1119, !tbaa !658
  br i1 %12, label %63, label %15, !dbg !1120

; <label>:15:                                     ; preds = %7
  %16 = load i8*, i8** %14, align 8, !dbg !1121, !tbaa !658
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1124
  %17 = icmp eq i8* %16, null, !dbg !1125
  br i1 %17, label %182, label %18, !dbg !1126

; <label>:18:                                     ; preds = %15
  %19 = tail call i32 @strcmp(i8* nonnull %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0)) #14, !dbg !1127
  %20 = icmp eq i32 %19, 0, !dbg !1127
  %21 = zext i1 %20 to i64, !dbg !1128
  %22 = getelementptr inbounds i8*, i8** %14, i64 %21, !dbg !1128
  store i8** %22, i8*** @args, align 8, !dbg !1128, !tbaa !658
  br i1 %20, label %63, label %23, !dbg !1129

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %22, align 8, !dbg !1130, !tbaa !658
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1133
  %25 = icmp eq i8* %24, null, !dbg !1134
  br i1 %25, label %182, label %26, !dbg !1135

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 @strcmp(i8* nonnull %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #14, !dbg !1136
  %28 = icmp eq i32 %27, 0, !dbg !1136
  %29 = zext i1 %28 to i64, !dbg !1137
  %30 = getelementptr inbounds i8*, i8** %22, i64 %29, !dbg !1137
  store i8** %30, i8*** @args, align 8, !dbg !1137, !tbaa !658
  br i1 %28, label %63, label %31, !dbg !1138

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %30, align 8, !dbg !1139, !tbaa !658
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1141
  %33 = icmp eq i8* %32, null, !dbg !1142
  br i1 %33, label %182, label %34, !dbg !1143

; <label>:34:                                     ; preds = %31
  %35 = tail call i32 @strcmp(i8* nonnull %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0)) #14, !dbg !1144
  %36 = icmp eq i32 %35, 0, !dbg !1144
  %37 = zext i1 %36 to i64, !dbg !1145
  %38 = getelementptr inbounds i8*, i8** %30, i64 %37, !dbg !1145
  store i8** %38, i8*** @args, align 8, !dbg !1145, !tbaa !658
  br i1 %36, label %63, label %39, !dbg !1146

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %38, align 8, !dbg !1147, !tbaa !658
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1150
  %41 = icmp eq i8* %40, null, !dbg !1151
  br i1 %41, label %182, label %42, !dbg !1152

; <label>:42:                                     ; preds = %39
  %43 = tail call i32 @strcmp(i8* nonnull %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #14, !dbg !1153
  %44 = icmp eq i32 %43, 0, !dbg !1153
  %45 = zext i1 %44 to i64, !dbg !1154
  %46 = getelementptr inbounds i8*, i8** %38, i64 %45, !dbg !1154
  store i8** %46, i8*** @args, align 8, !dbg !1154, !tbaa !658
  br i1 %44, label %63, label %47, !dbg !1155

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %46, align 8, !dbg !1156, !tbaa !658
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1159
  %49 = icmp eq i8* %48, null, !dbg !1160
  br i1 %49, label %182, label %50, !dbg !1161

; <label>:50:                                     ; preds = %47
  %51 = tail call i32 @strcmp(i8* nonnull %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #14, !dbg !1162
  %52 = icmp eq i32 %51, 0, !dbg !1162
  %53 = zext i1 %52 to i64, !dbg !1163
  %54 = getelementptr inbounds i8*, i8** %46, i64 %53, !dbg !1163
  store i8** %54, i8*** @args, align 8, !dbg !1163, !tbaa !658
  br i1 %52, label %63, label %55, !dbg !1164

; <label>:55:                                     ; preds = %50
  %56 = load i8*, i8** %54, align 8, !dbg !1165, !tbaa !658
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1168
  %57 = icmp eq i8* %56, null, !dbg !1169
  br i1 %57, label %182, label %58, !dbg !1170

; <label>:58:                                     ; preds = %55
  %59 = tail call i32 @strcmp(i8* nonnull %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #14, !dbg !1171
  %60 = icmp eq i32 %59, 0, !dbg !1171
  %61 = zext i1 %60 to i64, !dbg !1172
  %62 = getelementptr inbounds i8*, i8** %54, i64 %61, !dbg !1172
  store i8** %62, i8*** @args, align 8, !dbg !1172, !tbaa !658
  br i1 %60, label %63, label %182, !dbg !1173

; <label>:63:                                     ; preds = %58, %50, %42, %26, %34, %18, %7
  %64 = phi i3 [ 0, %7 ], [ 1, %18 ], [ 2, %34 ], [ 2, %26 ], [ 3, %42 ], [ -4, %50 ], [ -3, %58 ]
  %65 = tail call fastcc %struct.valinfo* @eval3(i1 zeroext %0), !dbg !1174
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %65, i64 0, metadata !49, metadata !651), !dbg !1175
  %66 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 0
  br i1 %0, label %69, label %67, !dbg !1176

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1
  br label %150, !dbg !1176

; <label>:69:                                     ; preds = %63
  tail call void @llvm.dbg.value(metadata %struct.valinfo* undef, i64 0, metadata !1177, metadata !651) #11, !dbg !1183
  %70 = load i32, i32* %66, align 8, !dbg !1185, !tbaa !769
  switch i32 %70, label %76 [
    i32 0, label %71
    i32 1, label %77
  ], !dbg !1186

; <label>:71:                                     ; preds = %69
  %72 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, !dbg !1187
  %73 = getelementptr inbounds %union.anon, %union.anon* %72, i64 0, i32 0, i64 0, !dbg !1188
  %74 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %73) #11, !dbg !1189
  tail call void @llvm.dbg.value(metadata i8* %74, i64 0, metadata !1180, metadata !651) #11, !dbg !1190
  tail call void @__gmpz_clear(%struct.__mpz_struct* %73) #11, !dbg !1191
  %75 = bitcast %union.anon* %72 to i8**, !dbg !1192
  store i8* %74, i8** %75, align 8, !dbg !1193, !tbaa !680
  store i32 1, i32* %66, align 8, !dbg !1194, !tbaa !769
  br label %77, !dbg !1195

; <label>:76:                                     ; preds = %69
  tail call void @abort() #15, !dbg !1196
  unreachable, !dbg !1196

; <label>:77:                                     ; preds = %69, %71
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %65, i64 0, metadata !1177, metadata !651) #11, !dbg !1197
  %78 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %65, i64 0, i32 0, !dbg !1199
  %79 = load i32, i32* %78, align 8, !dbg !1199, !tbaa !769
  switch i32 %79, label %85 [
    i32 0, label %80
    i32 1, label %86
  ], !dbg !1200

; <label>:80:                                     ; preds = %77
  %81 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %65, i64 0, i32 1, !dbg !1201
  %82 = getelementptr inbounds %union.anon, %union.anon* %81, i64 0, i32 0, i64 0, !dbg !1202
  %83 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %82) #11, !dbg !1203
  tail call void @llvm.dbg.value(metadata i8* %83, i64 0, metadata !1180, metadata !651) #11, !dbg !1204
  tail call void @__gmpz_clear(%struct.__mpz_struct* %82) #11, !dbg !1205
  %84 = bitcast %union.anon* %81 to i8**, !dbg !1206
  store i8* %83, i8** %84, align 8, !dbg !1207, !tbaa !680
  store i32 1, i32* %78, align 8, !dbg !1208, !tbaa !769
  br label %86, !dbg !1209

; <label>:85:                                     ; preds = %77
  tail call void @abort() #15, !dbg !1210
  unreachable, !dbg !1210

; <label>:86:                                     ; preds = %77, %80
  %87 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, !dbg !1211
  %88 = bitcast %union.anon* %87 to i8**, !dbg !1213
  %89 = load i8*, i8** %88, align 8, !dbg !1213, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !1214, metadata !651), !dbg !1217
  %90 = load i8, i8* %89, align 1, !dbg !1219, !tbaa !680
  %91 = icmp eq i8 %90, 45, !dbg !1220
  %92 = zext i1 %91 to i64, !dbg !1221
  %93 = getelementptr inbounds i8, i8* %89, i64 %92, !dbg !1221
  tail call void @llvm.dbg.value(metadata i8* %93, i64 0, metadata !1214, metadata !651), !dbg !1217
  %94 = load i8, i8* %93, align 1, !dbg !1222, !tbaa !680
  br label %95, !dbg !1224, !llvm.loop !1225

; <label>:95:                                     ; preds = %101, %86
  %96 = phi i8 [ %94, %86 ], [ %103, %101 ], !dbg !1222
  %97 = phi i8* [ %93, %86 ], [ %102, %101 ]
  tail call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1214, metadata !651), !dbg !1217
  %98 = sext i8 %96 to i32, !dbg !1222
  %99 = add nsw i32 %98, -48, !dbg !1222
  %100 = icmp ult i32 %99, 10, !dbg !1222
  br i1 %100, label %101, label %126, !dbg !1228

; <label>:101:                                    ; preds = %95
  %102 = getelementptr inbounds i8, i8* %97, i64 1, !dbg !1229
  tail call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !1214, metadata !651), !dbg !1217
  %103 = load i8, i8* %102, align 1, !dbg !1230, !tbaa !680
  %104 = icmp eq i8 %103, 0, !dbg !1222
  br i1 %104, label %105, label %95, !dbg !1222, !llvm.loop !1225

; <label>:105:                                    ; preds = %101
  %106 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %65, i64 0, i32 1, !dbg !1231
  %107 = bitcast %union.anon* %106 to i8**, !dbg !1232
  %108 = load i8*, i8** %107, align 8, !dbg !1232, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %108, i64 0, metadata !1214, metadata !651), !dbg !1233
  %109 = load i8, i8* %108, align 1, !dbg !1235, !tbaa !680
  %110 = icmp eq i8 %109, 45, !dbg !1236
  %111 = zext i1 %110 to i64, !dbg !1237
  %112 = getelementptr inbounds i8, i8* %108, i64 %111, !dbg !1237
  tail call void @llvm.dbg.value(metadata i8* %112, i64 0, metadata !1214, metadata !651), !dbg !1233
  %113 = load i8, i8* %112, align 1, !dbg !1238, !tbaa !680
  br label %114, !dbg !1239, !llvm.loop !1225

; <label>:114:                                    ; preds = %120, %105
  %115 = phi i8 [ %113, %105 ], [ %122, %120 ], !dbg !1238
  %116 = phi i8* [ %112, %105 ], [ %121, %120 ]
  tail call void @llvm.dbg.value(metadata i8* %116, i64 0, metadata !1214, metadata !651), !dbg !1233
  %117 = sext i8 %115 to i32, !dbg !1238
  %118 = add nsw i32 %117, -48, !dbg !1238
  %119 = icmp ult i32 %118, 10, !dbg !1238
  br i1 %119, label %120, label %129, !dbg !1240

; <label>:120:                                    ; preds = %114
  %121 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !1241
  tail call void @llvm.dbg.value(metadata i8* %121, i64 0, metadata !1214, metadata !651), !dbg !1233
  %122 = load i8, i8* %121, align 1, !dbg !1242, !tbaa !680
  %123 = icmp eq i8 %122, 0, !dbg !1238
  br i1 %123, label %124, label %114, !dbg !1238, !llvm.loop !1225

; <label>:124:                                    ; preds = %120
  %125 = tail call i32 @strintcmp(i8* %89, i8* %108) #14, !dbg !1243
  tail call void @llvm.dbg.value(metadata i32 %125, i64 0, metadata !53, metadata !651), !dbg !1244
  br label %135, !dbg !1245

; <label>:126:                                    ; preds = %95
  %127 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %65, i64 0, i32 1, !dbg !1246
  %128 = bitcast %union.anon* %127 to i8**, !dbg !1248
  br label %129, !dbg !1249

; <label>:129:                                    ; preds = %114, %126
  %130 = phi i8** [ %128, %126 ], [ %107, %114 ], !dbg !1248
  %131 = tail call i32* @__errno_location() #17, !dbg !1249
  store i32 0, i32* %131, align 4, !dbg !1250, !tbaa !729
  %132 = load i8*, i8** %88, align 8, !dbg !1251, !tbaa !680
  %133 = load i8*, i8** %130, align 8, !dbg !1248, !tbaa !680
  %134 = tail call i32 @strcoll(i8* %132, i8* %133) #14, !dbg !1252
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !53, metadata !651), !dbg !1244
  br label %135, !dbg !1253

; <label>:135:                                    ; preds = %129, %124
  %136 = phi i32 [ %125, %124 ], [ %134, %129 ]
  tail call void @llvm.dbg.value(metadata i32 %136, i64 0, metadata !53, metadata !651), !dbg !1244
  switch i3 %64, label %149 [
    i3 0, label %137
    i3 1, label %139
    i3 2, label %141
    i3 3, label %143
    i3 -4, label %145
    i3 -3, label %147
  ], !dbg !1254

; <label>:137:                                    ; preds = %135
  %138 = icmp slt i32 %136, 0, !dbg !1255
  br label %150, !dbg !1257

; <label>:139:                                    ; preds = %135
  %140 = icmp slt i32 %136, 1, !dbg !1258
  br label %150, !dbg !1259

; <label>:141:                                    ; preds = %135
  %142 = icmp eq i32 %136, 0, !dbg !1260
  br label %150, !dbg !1261

; <label>:143:                                    ; preds = %135
  %144 = icmp ne i32 %136, 0, !dbg !1262
  br label %150, !dbg !1263

; <label>:145:                                    ; preds = %135
  %146 = icmp sgt i32 %136, -1, !dbg !1264
  br label %150, !dbg !1265

; <label>:147:                                    ; preds = %135
  %148 = icmp sgt i32 %136, 0, !dbg !1266
  br label %150, !dbg !1267

; <label>:149:                                    ; preds = %135
  tail call void @abort() #15, !dbg !1268
  unreachable, !dbg !1268

; <label>:150:                                    ; preds = %67, %137, %139, %141, %143, %145, %147
  %151 = phi %union.anon* [ %68, %67 ], [ %87, %137 ], [ %87, %139 ], [ %87, %141 ], [ %87, %143 ], [ %87, %145 ], [ %87, %147 ]
  %152 = phi i1 [ false, %67 ], [ %138, %137 ], [ %140, %139 ], [ %142, %141 ], [ %144, %143 ], [ %146, %145 ], [ %148, %147 ]
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !901, metadata !651) #11, !dbg !1269
  %153 = load i32, i32* %66, align 8, !dbg !1271, !tbaa !769
  %154 = icmp eq i32 %153, 1, !dbg !1272
  br i1 %154, label %155, label %158, !dbg !1273

; <label>:155:                                    ; preds = %150
  %156 = bitcast %union.anon* %151 to i8**, !dbg !1274
  %157 = load i8*, i8** %156, align 8, !dbg !1274, !tbaa !680
  tail call void @free(i8* %157) #11, !dbg !1275
  br label %160, !dbg !1275

; <label>:158:                                    ; preds = %150
  %159 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, i32 0, i64 0, !dbg !1276
  tail call void @__gmpz_clear(%struct.__mpz_struct* %159) #11, !dbg !1277
  br label %160

; <label>:160:                                    ; preds = %155, %158
  %161 = bitcast %struct.valinfo* %10 to i8*, !dbg !1278
  tail call void @free(i8* %161) #11, !dbg !1279
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %65, i64 0, metadata !901, metadata !651) #11, !dbg !1280
  %162 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %65, i64 0, i32 0, !dbg !1282
  %163 = load i32, i32* %162, align 8, !dbg !1282, !tbaa !769
  %164 = icmp eq i32 %163, 1, !dbg !1283
  %165 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %65, i64 0, i32 1
  br i1 %164, label %166, label %169, !dbg !1284

; <label>:166:                                    ; preds = %160
  %167 = bitcast %union.anon* %165 to i8**, !dbg !1285
  %168 = load i8*, i8** %167, align 8, !dbg !1285, !tbaa !680
  tail call void @free(i8* %168) #11, !dbg !1286
  br label %171, !dbg !1286

; <label>:169:                                    ; preds = %160
  %170 = getelementptr inbounds %union.anon, %union.anon* %165, i64 0, i32 0, i64 0, !dbg !1287
  tail call void @__gmpz_clear(%struct.__mpz_struct* %170) #11, !dbg !1288
  br label %171

; <label>:171:                                    ; preds = %166, %169
  %172 = bitcast %struct.valinfo* %65 to i8*, !dbg !1289
  tail call void @free(i8* %172) #11, !dbg !1290
  %173 = zext i1 %152 to i64, !dbg !1291
  tail call void @llvm.dbg.value(metadata i64 %173, i64 0, metadata !938, metadata !651) #11, !dbg !1292
  %174 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !1294
  %175 = bitcast i8* %174 to %struct.valinfo*, !dbg !1294
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %175, i64 0, metadata !943, metadata !651) #11, !dbg !1295
  %176 = bitcast i8* %174 to i32*, !dbg !1296
  store i32 0, i32* %176, align 8, !dbg !1297, !tbaa !769
  %177 = getelementptr inbounds i8, i8* %174, i64 8, !dbg !1298
  %178 = bitcast i8* %177 to %struct.__mpz_struct*, !dbg !1299
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* %178, i64 %173) #11, !dbg !1300
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %175, i64 0, metadata !48, metadata !651), !dbg !1109
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %175, i64 0, metadata !48, metadata !651), !dbg !1109
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %175, i64 0, metadata !48, metadata !651), !dbg !1109
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !52, metadata !651), !dbg !1110
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1111
  %179 = load i8**, i8*** @args, align 8, !dbg !1114, !tbaa !658
  %180 = load i8*, i8** %179, align 8, !dbg !1115, !tbaa !658
  %181 = icmp eq i8* %180, null, !dbg !1116
  br i1 %181, label %182, label %7, !dbg !1117, !llvm.loop !1301

; <label>:182:                                    ; preds = %58, %55, %47, %39, %31, %23, %15, %171, %1
  %183 = phi %struct.valinfo* [ %2, %1 ], [ %10, %58 ], [ %10, %55 ], [ %10, %47 ], [ %10, %39 ], [ %10, %31 ], [ %10, %23 ], [ %10, %15 ], [ %175, %171 ]
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %175, i64 0, metadata !48, metadata !651), !dbg !1109
  ret %struct.valinfo* %183, !dbg !1304
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval3(i1 zeroext) unnamed_addr #6 !dbg !78 {
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !80, metadata !651), !dbg !1305
  %2 = tail call fastcc %struct.valinfo* @eval4(i1 zeroext %0), !dbg !1306
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !81, metadata !651), !dbg !1307
  %3 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 0
  %4 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 1, i32 0, i64 0
  %5 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 1
  %6 = bitcast %union.anon* %5 to i8**
  %7 = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0, i64 0
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1308
  %8 = load i8**, i8*** @args, align 8, !dbg !1312, !tbaa !658
  %9 = load i8*, i8** %8, align 8, !dbg !1313, !tbaa !658
  %10 = icmp eq i8* %9, null, !dbg !1314
  br i1 %10, label %27, label %11, !dbg !1315

; <label>:11:                                     ; preds = %1
  br label %12, !dbg !1316

; <label>:12:                                     ; preds = %11, %97
  %13 = phi i8* [ %100, %97 ], [ %9, %11 ]
  %14 = phi i8** [ %99, %97 ], [ %8, %11 ]
  %15 = tail call i32 @strcmp(i8* nonnull %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #14, !dbg !1316
  %16 = icmp eq i32 %15, 0, !dbg !1316
  %17 = zext i1 %16 to i64, !dbg !1317
  %18 = getelementptr inbounds i8*, i8** %14, i64 %17, !dbg !1317
  store i8** %18, i8*** @args, align 8, !dbg !1317, !tbaa !658
  br i1 %16, label %28, label %19, !dbg !1318

; <label>:19:                                     ; preds = %12
  %20 = load i8*, i8** %18, align 8, !dbg !1319, !tbaa !658
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1322
  %21 = icmp eq i8* %20, null, !dbg !1323
  br i1 %21, label %27, label %22, !dbg !1324

; <label>:22:                                     ; preds = %19
  %23 = tail call i32 @strcmp(i8* nonnull %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0)) #14, !dbg !1325
  %24 = icmp eq i32 %23, 0, !dbg !1325
  %25 = zext i1 %24 to i64, !dbg !1326
  %26 = getelementptr inbounds i8*, i8** %18, i64 %25, !dbg !1326
  store i8** %26, i8*** @args, align 8, !dbg !1326, !tbaa !658
  br i1 %24, label %28, label %27, !dbg !1327

; <label>:27:                                     ; preds = %22, %19, %97, %1
  ret %struct.valinfo* %2, !dbg !1328

; <label>:28:                                     ; preds = %22, %12
  %29 = phi i32 [ 0, %12 ], [ 1, %22 ]
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !83, metadata !651), !dbg !1329
  %30 = tail call fastcc %struct.valinfo* @eval4(i1 zeroext %0), !dbg !1330
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %30, i64 0, metadata !82, metadata !651), !dbg !1331
  br i1 %0, label %33, label %31, !dbg !1332

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %30, i64 0, i32 0, !dbg !1333
  br label %87, !dbg !1332

; <label>:33:                                     ; preds = %28
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !1335, metadata !651) #11, !dbg !1341
  %34 = load i32, i32* %3, align 8, !dbg !1346, !tbaa !769
  switch i32 %34, label %54 [
    i32 0, label %55
    i32 1, label %35
  ], !dbg !1347

; <label>:35:                                     ; preds = %33
  %36 = load i8*, i8** %6, align 8, !dbg !1348, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !1338, metadata !651) #11, !dbg !1349
  tail call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !1214, metadata !651) #11, !dbg !1350
  %37 = load i8, i8* %36, align 1, !dbg !1353, !tbaa !680
  %38 = icmp eq i8 %37, 45, !dbg !1354
  %39 = zext i1 %38 to i64, !dbg !1355
  %40 = getelementptr inbounds i8, i8* %36, i64 %39, !dbg !1355
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1214, metadata !651) #11, !dbg !1350
  %41 = load i8, i8* %40, align 1, !dbg !1356, !tbaa !680
  br label %42, !dbg !1357, !llvm.loop !1225

; <label>:42:                                     ; preds = %48, %35
  %43 = phi i8 [ %41, %35 ], [ %50, %48 ], !dbg !1356
  %44 = phi i8* [ %40, %35 ], [ %49, %48 ]
  tail call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !1214, metadata !651) #11, !dbg !1350
  %45 = sext i8 %43 to i32, !dbg !1356
  %46 = add nsw i32 %45, -48, !dbg !1356
  %47 = icmp ult i32 %46, 10, !dbg !1356
  br i1 %47, label %48, label %81, !dbg !1358

; <label>:48:                                     ; preds = %42
  %49 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !1359
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1214, metadata !651) #11, !dbg !1350
  %50 = load i8, i8* %49, align 1, !dbg !1360, !tbaa !680
  %51 = icmp eq i8 %50, 0, !dbg !1356
  br i1 %51, label %52, label %42, !dbg !1356, !llvm.loop !1225

; <label>:52:                                     ; preds = %48
  %53 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* %7, i8* %36, i32 10) #11, !dbg !1361
  tail call void @free(i8* %36) #11, !dbg !1363
  store i32 0, i32* %3, align 8, !dbg !1364, !tbaa !769
  br label %55, !dbg !1365

; <label>:54:                                     ; preds = %33
  tail call void @abort() #15, !dbg !1366
  unreachable, !dbg !1366

; <label>:55:                                     ; preds = %33, %52
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %30, i64 0, metadata !1335, metadata !651) #11, !dbg !1367
  %56 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %30, i64 0, i32 0, !dbg !1369
  %57 = load i32, i32* %56, align 8, !dbg !1369, !tbaa !769
  switch i32 %57, label %80 [
    i32 0, label %83
    i32 1, label %58
  ], !dbg !1370

; <label>:58:                                     ; preds = %55
  %59 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %30, i64 0, i32 1, !dbg !1371
  %60 = bitcast %union.anon* %59 to i8**, !dbg !1372
  %61 = load i8*, i8** %60, align 8, !dbg !1372, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !1338, metadata !651) #11, !dbg !1373
  tail call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !1214, metadata !651) #11, !dbg !1374
  %62 = load i8, i8* %61, align 1, !dbg !1376, !tbaa !680
  %63 = icmp eq i8 %62, 45, !dbg !1377
  %64 = zext i1 %63 to i64, !dbg !1378
  %65 = getelementptr inbounds i8, i8* %61, i64 %64, !dbg !1378
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1214, metadata !651) #11, !dbg !1374
  %66 = load i8, i8* %65, align 1, !dbg !1379, !tbaa !680
  br label %67, !dbg !1380, !llvm.loop !1225

; <label>:67:                                     ; preds = %73, %58
  %68 = phi i8 [ %66, %58 ], [ %75, %73 ], !dbg !1379
  %69 = phi i8* [ %65, %58 ], [ %74, %73 ]
  tail call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1214, metadata !651) #11, !dbg !1374
  %70 = sext i8 %68 to i32, !dbg !1379
  %71 = add nsw i32 %70, -48, !dbg !1379
  %72 = icmp ult i32 %71, 10, !dbg !1379
  br i1 %72, label %73, label %81, !dbg !1381

; <label>:73:                                     ; preds = %67
  %74 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1382
  tail call void @llvm.dbg.value(metadata i8* %74, i64 0, metadata !1214, metadata !651) #11, !dbg !1374
  %75 = load i8, i8* %74, align 1, !dbg !1383, !tbaa !680
  %76 = icmp eq i8 %75, 0, !dbg !1379
  br i1 %76, label %77, label %67, !dbg !1379, !llvm.loop !1225

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds %union.anon, %union.anon* %59, i64 0, i32 0, i64 0, !dbg !1384
  %79 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* %78, i8* %61, i32 10) #11, !dbg !1385
  tail call void @free(i8* %61) #11, !dbg !1386
  store i32 0, i32* %56, align 8, !dbg !1387, !tbaa !769
  br label %83, !dbg !1388

; <label>:80:                                     ; preds = %55
  tail call void @abort() #15, !dbg !1389
  unreachable, !dbg !1389

; <label>:81:                                     ; preds = %42, %67
  %82 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i64 0, i64 0), i32 5) #11, !dbg !1390
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %82) #11, !dbg !1390
  unreachable, !dbg !1390

; <label>:83:                                     ; preds = %55, %77
  %84 = icmp eq i32 %29, 0, !dbg !1391
  %85 = select i1 %84, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_add, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_sub, !dbg !1392
  %86 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %30, i64 0, i32 1, i32 0, i64 0, !dbg !1393
  tail call void %85(%struct.__mpz_struct* %4, %struct.__mpz_struct* %4, %struct.__mpz_struct* %86) #11, !dbg !1394
  br label %87, !dbg !1395

; <label>:87:                                     ; preds = %31, %83
  %88 = phi i32* [ %32, %31 ], [ %56, %83 ], !dbg !1333
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %30, i64 0, metadata !901, metadata !651) #11, !dbg !1396
  %89 = load i32, i32* %88, align 8, !dbg !1333, !tbaa !769
  %90 = icmp eq i32 %89, 1, !dbg !1397
  %91 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %30, i64 0, i32 1
  br i1 %90, label %92, label %95, !dbg !1398

; <label>:92:                                     ; preds = %87
  %93 = bitcast %union.anon* %91 to i8**, !dbg !1399
  %94 = load i8*, i8** %93, align 8, !dbg !1399, !tbaa !680
  tail call void @free(i8* %94) #11, !dbg !1400
  br label %97, !dbg !1400

; <label>:95:                                     ; preds = %87
  %96 = getelementptr inbounds %union.anon, %union.anon* %91, i64 0, i32 0, i64 0, !dbg !1401
  tail call void @__gmpz_clear(%struct.__mpz_struct* %96) #11, !dbg !1402
  br label %97

; <label>:97:                                     ; preds = %92, %95
  %98 = bitcast %struct.valinfo* %30 to i8*, !dbg !1403
  tail call void @free(i8* %98) #11, !dbg !1404
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1308
  %99 = load i8**, i8*** @args, align 8, !dbg !1312, !tbaa !658
  %100 = load i8*, i8** %99, align 8, !dbg !1313, !tbaa !658
  %101 = icmp eq i8* %100, null, !dbg !1314
  br i1 %101, label %27, label %12, !dbg !1315, !llvm.loop !1405
}

declare i8* @__gmpz_get_str(i8*, i32, %struct.__mpz_struct*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval4(i1 zeroext) unnamed_addr #6 !dbg !88 {
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !90, metadata !651), !dbg !1408
  %2 = tail call fastcc %struct.valinfo* @eval5(i1 zeroext %0), !dbg !1409
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !91, metadata !651), !dbg !1410
  %3 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 0
  %4 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 1, i32 0, i64 0
  %5 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 1
  %6 = bitcast %union.anon* %5 to i8**
  %7 = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0, i64 0
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1411
  %8 = load i8**, i8*** @args, align 8, !dbg !1415, !tbaa !658
  %9 = load i8*, i8** %8, align 8, !dbg !1416, !tbaa !658
  %10 = icmp eq i8* %9, null, !dbg !1417
  br i1 %10, label %35, label %11, !dbg !1418

; <label>:11:                                     ; preds = %1
  br label %12, !dbg !1419

; <label>:12:                                     ; preds = %11, %115
  %13 = phi i8* [ %118, %115 ], [ %9, %11 ]
  %14 = phi i8** [ %117, %115 ], [ %8, %11 ]
  %15 = tail call i32 @strcmp(i8* nonnull %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #14, !dbg !1419
  %16 = icmp eq i32 %15, 0, !dbg !1419
  %17 = zext i1 %16 to i64, !dbg !1420
  %18 = getelementptr inbounds i8*, i8** %14, i64 %17, !dbg !1420
  store i8** %18, i8*** @args, align 8, !dbg !1420, !tbaa !658
  br i1 %16, label %36, label %19, !dbg !1421

; <label>:19:                                     ; preds = %12
  %20 = load i8*, i8** %18, align 8, !dbg !1422, !tbaa !658
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1425
  %21 = icmp eq i8* %20, null, !dbg !1426
  br i1 %21, label %35, label %22, !dbg !1427

; <label>:22:                                     ; preds = %19
  %23 = tail call i32 @strcmp(i8* nonnull %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0)) #14, !dbg !1428
  %24 = icmp eq i32 %23, 0, !dbg !1428
  %25 = zext i1 %24 to i64, !dbg !1429
  %26 = getelementptr inbounds i8*, i8** %18, i64 %25, !dbg !1429
  store i8** %26, i8*** @args, align 8, !dbg !1429, !tbaa !658
  br i1 %24, label %36, label %27, !dbg !1430

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %26, align 8, !dbg !1431, !tbaa !658
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1434
  %29 = icmp eq i8* %28, null, !dbg !1435
  br i1 %29, label %35, label %30, !dbg !1436

; <label>:30:                                     ; preds = %27
  %31 = tail call i32 @strcmp(i8* nonnull %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0)) #14, !dbg !1437
  %32 = icmp eq i32 %31, 0, !dbg !1437
  %33 = zext i1 %32 to i64, !dbg !1438
  %34 = getelementptr inbounds i8*, i8** %26, i64 %33, !dbg !1438
  store i8** %34, i8*** @args, align 8, !dbg !1438, !tbaa !658
  br i1 %32, label %36, label %35, !dbg !1439

; <label>:35:                                     ; preds = %30, %27, %19, %115, %1
  ret %struct.valinfo* %2, !dbg !1440

; <label>:36:                                     ; preds = %30, %22, %12
  %37 = phi i32 [ 0, %12 ], [ 1, %22 ], [ 2, %30 ]
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !93, metadata !651), !dbg !1441
  %38 = tail call fastcc %struct.valinfo* @eval5(i1 zeroext %0), !dbg !1442
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %38, i64 0, metadata !92, metadata !651), !dbg !1443
  br i1 %0, label %41, label %39, !dbg !1444

; <label>:39:                                     ; preds = %36
  %40 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %38, i64 0, i32 0, !dbg !1445
  br label %105, !dbg !1444

; <label>:41:                                     ; preds = %36
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !1335, metadata !651) #11, !dbg !1447
  %42 = load i32, i32* %3, align 8, !dbg !1452, !tbaa !769
  switch i32 %42, label %62 [
    i32 0, label %63
    i32 1, label %43
  ], !dbg !1453

; <label>:43:                                     ; preds = %41
  %44 = load i8*, i8** %6, align 8, !dbg !1454, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !1338, metadata !651) #11, !dbg !1455
  tail call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !1214, metadata !651) #11, !dbg !1456
  %45 = load i8, i8* %44, align 1, !dbg !1458, !tbaa !680
  %46 = icmp eq i8 %45, 45, !dbg !1459
  %47 = zext i1 %46 to i64, !dbg !1460
  %48 = getelementptr inbounds i8, i8* %44, i64 %47, !dbg !1460
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !1214, metadata !651) #11, !dbg !1456
  %49 = load i8, i8* %48, align 1, !dbg !1461, !tbaa !680
  br label %50, !dbg !1462, !llvm.loop !1225

; <label>:50:                                     ; preds = %56, %43
  %51 = phi i8 [ %49, %43 ], [ %58, %56 ], !dbg !1461
  %52 = phi i8* [ %48, %43 ], [ %57, %56 ]
  tail call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1214, metadata !651) #11, !dbg !1456
  %53 = sext i8 %51 to i32, !dbg !1461
  %54 = add nsw i32 %53, -48, !dbg !1461
  %55 = icmp ult i32 %54, 10, !dbg !1461
  br i1 %55, label %56, label %89, !dbg !1463

; <label>:56:                                     ; preds = %50
  %57 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !1464
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !1214, metadata !651) #11, !dbg !1456
  %58 = load i8, i8* %57, align 1, !dbg !1465, !tbaa !680
  %59 = icmp eq i8 %58, 0, !dbg !1461
  br i1 %59, label %60, label %50, !dbg !1461, !llvm.loop !1225

; <label>:60:                                     ; preds = %56
  %61 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* %7, i8* %44, i32 10) #11, !dbg !1466
  tail call void @free(i8* %44) #11, !dbg !1467
  store i32 0, i32* %3, align 8, !dbg !1468, !tbaa !769
  br label %63, !dbg !1469

; <label>:62:                                     ; preds = %41
  tail call void @abort() #15, !dbg !1470
  unreachable, !dbg !1470

; <label>:63:                                     ; preds = %41, %60
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %38, i64 0, metadata !1335, metadata !651) #11, !dbg !1471
  %64 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %38, i64 0, i32 0, !dbg !1473
  %65 = load i32, i32* %64, align 8, !dbg !1473, !tbaa !769
  switch i32 %65, label %88 [
    i32 0, label %91
    i32 1, label %66
  ], !dbg !1474

; <label>:66:                                     ; preds = %63
  %67 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %38, i64 0, i32 1, !dbg !1475
  %68 = bitcast %union.anon* %67 to i8**, !dbg !1476
  %69 = load i8*, i8** %68, align 8, !dbg !1476, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1338, metadata !651) #11, !dbg !1477
  tail call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1214, metadata !651) #11, !dbg !1478
  %70 = load i8, i8* %69, align 1, !dbg !1480, !tbaa !680
  %71 = icmp eq i8 %70, 45, !dbg !1481
  %72 = zext i1 %71 to i64, !dbg !1482
  %73 = getelementptr inbounds i8, i8* %69, i64 %72, !dbg !1482
  tail call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !1214, metadata !651) #11, !dbg !1478
  %74 = load i8, i8* %73, align 1, !dbg !1483, !tbaa !680
  br label %75, !dbg !1484, !llvm.loop !1225

; <label>:75:                                     ; preds = %81, %66
  %76 = phi i8 [ %74, %66 ], [ %83, %81 ], !dbg !1483
  %77 = phi i8* [ %73, %66 ], [ %82, %81 ]
  tail call void @llvm.dbg.value(metadata i8* %77, i64 0, metadata !1214, metadata !651) #11, !dbg !1478
  %78 = sext i8 %76 to i32, !dbg !1483
  %79 = add nsw i32 %78, -48, !dbg !1483
  %80 = icmp ult i32 %79, 10, !dbg !1483
  br i1 %80, label %81, label %89, !dbg !1485

; <label>:81:                                     ; preds = %75
  %82 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !1486
  tail call void @llvm.dbg.value(metadata i8* %82, i64 0, metadata !1214, metadata !651) #11, !dbg !1478
  %83 = load i8, i8* %82, align 1, !dbg !1487, !tbaa !680
  %84 = icmp eq i8 %83, 0, !dbg !1483
  br i1 %84, label %85, label %75, !dbg !1483, !llvm.loop !1225

; <label>:85:                                     ; preds = %81
  %86 = getelementptr inbounds %union.anon, %union.anon* %67, i64 0, i32 0, i64 0, !dbg !1488
  %87 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* %86, i8* %69, i32 10) #11, !dbg !1489
  tail call void @free(i8* %69) #11, !dbg !1490
  store i32 0, i32* %64, align 8, !dbg !1491, !tbaa !769
  br label %91, !dbg !1492

; <label>:88:                                     ; preds = %63
  tail call void @abort() #15, !dbg !1493
  unreachable, !dbg !1493

; <label>:89:                                     ; preds = %50, %75
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i64 0, i64 0), i32 5) #11, !dbg !1494
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %90) #11, !dbg !1494
  unreachable, !dbg !1494

; <label>:91:                                     ; preds = %63, %85
  %92 = icmp eq i32 %37, 0, !dbg !1495
  br i1 %92, label %102, label %93, !dbg !1495

; <label>:93:                                     ; preds = %91
  %94 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %38, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !1497
  %95 = load i32, i32* %94, align 4, !dbg !1497, !tbaa !680
  %96 = icmp eq i32 %95, 0, !dbg !1497
  br i1 %96, label %97, label %99, !dbg !1498

; <label>:97:                                     ; preds = %93
  %98 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #11, !dbg !1499
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %98) #11, !dbg !1499
  unreachable, !dbg !1499

; <label>:99:                                     ; preds = %93
  %100 = icmp eq i32 %37, 1, !dbg !1500
  %101 = select i1 %100, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_tdiv_q, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_tdiv_r, !dbg !1501
  br label %102, !dbg !1502

; <label>:102:                                    ; preds = %91, %99
  %103 = phi void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* [ %101, %99 ], [ @__gmpz_mul, %91 ], !dbg !1502
  %104 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %38, i64 0, i32 1, i32 0, i64 0, !dbg !1503
  tail call void %103(%struct.__mpz_struct* %4, %struct.__mpz_struct* %4, %struct.__mpz_struct* %104) #11, !dbg !1504
  br label %105, !dbg !1505

; <label>:105:                                    ; preds = %39, %102
  %106 = phi i32* [ %40, %39 ], [ %64, %102 ], !dbg !1445
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %38, i64 0, metadata !901, metadata !651) #11, !dbg !1506
  %107 = load i32, i32* %106, align 8, !dbg !1445, !tbaa !769
  %108 = icmp eq i32 %107, 1, !dbg !1507
  %109 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %38, i64 0, i32 1
  br i1 %108, label %110, label %113, !dbg !1508

; <label>:110:                                    ; preds = %105
  %111 = bitcast %union.anon* %109 to i8**, !dbg !1509
  %112 = load i8*, i8** %111, align 8, !dbg !1509, !tbaa !680
  tail call void @free(i8* %112) #11, !dbg !1510
  br label %115, !dbg !1510

; <label>:113:                                    ; preds = %105
  %114 = getelementptr inbounds %union.anon, %union.anon* %109, i64 0, i32 0, i64 0, !dbg !1511
  tail call void @__gmpz_clear(%struct.__mpz_struct* %114) #11, !dbg !1512
  br label %115

; <label>:115:                                    ; preds = %110, %113
  %116 = bitcast %struct.valinfo* %38 to i8*, !dbg !1513
  tail call void @free(i8* %116) #11, !dbg !1514
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1411
  %117 = load i8**, i8*** @args, align 8, !dbg !1415, !tbaa !658
  %118 = load i8*, i8** %117, align 8, !dbg !1416, !tbaa !658
  %119 = icmp eq i8* %118, null, !dbg !1417
  br i1 %119, label %35, label %12, !dbg !1418, !llvm.loop !1515
}

declare i32 @__gmpz_init_set_str(%struct.__mpz_struct*, i8*, i32) local_unnamed_addr #3

declare void @__gmpz_add(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

declare void @__gmpz_sub(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval5(i1 zeroext) unnamed_addr #6 !dbg !1518 {
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1520, metadata !651), !dbg !1524
  %2 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1525
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !1521, metadata !651), !dbg !1526
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !1521, metadata !651), !dbg !1526
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1527
  %3 = load i8**, i8*** @args, align 8, !dbg !1531, !tbaa !658
  %4 = load i8*, i8** %3, align 8, !dbg !1532, !tbaa !658
  %5 = icmp eq i8* %4, null, !dbg !1533
  br i1 %5, label %46, label %6, !dbg !1534

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !1535

; <label>:7:                                      ; preds = %6, %41
  %8 = phi i8* [ %44, %41 ], [ %4, %6 ]
  %9 = phi i8** [ %43, %41 ], [ %3, %6 ]
  %10 = phi %struct.valinfo* [ %31, %41 ], [ %2, %6 ]
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !1521, metadata !651), !dbg !1526
  %11 = tail call i32 @strcmp(i8* nonnull %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0)) #14, !dbg !1535
  %12 = icmp eq i32 %11, 0, !dbg !1535
  %13 = zext i1 %12 to i64, !dbg !1536
  %14 = getelementptr inbounds i8*, i8** %9, i64 %13, !dbg !1536
  store i8** %14, i8*** @args, align 8, !dbg !1536, !tbaa !658
  br i1 %12, label %15, label %46, !dbg !1537

; <label>:15:                                     ; preds = %7
  %16 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1538
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %16, i64 0, metadata !1522, metadata !651), !dbg !1540
  br i1 %0, label %17, label %30, !dbg !1541

; <label>:17:                                     ; preds = %15
  %18 = tail call fastcc %struct.valinfo* @docolon(%struct.valinfo* %10, %struct.valinfo* %16), !dbg !1542
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %18, i64 0, metadata !1523, metadata !651), !dbg !1545
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !901, metadata !651) #11, !dbg !1546
  %19 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 0, !dbg !1548
  %20 = load i32, i32* %19, align 8, !dbg !1548, !tbaa !769
  %21 = icmp eq i32 %20, 1, !dbg !1549
  %22 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1
  br i1 %21, label %23, label %26, !dbg !1550

; <label>:23:                                     ; preds = %17
  %24 = bitcast %union.anon* %22 to i8**, !dbg !1551
  %25 = load i8*, i8** %24, align 8, !dbg !1551, !tbaa !680
  tail call void @free(i8* %25) #11, !dbg !1552
  br label %28, !dbg !1552

; <label>:26:                                     ; preds = %17
  %27 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0, i64 0, !dbg !1553
  tail call void @__gmpz_clear(%struct.__mpz_struct* %27) #11, !dbg !1554
  br label %28

; <label>:28:                                     ; preds = %23, %26
  %29 = bitcast %struct.valinfo* %10 to i8*, !dbg !1555
  tail call void @free(i8* %29) #11, !dbg !1556
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %18, i64 0, metadata !1521, metadata !651), !dbg !1526
  br label %30, !dbg !1557

; <label>:30:                                     ; preds = %28, %15
  %31 = phi %struct.valinfo* [ %18, %28 ], [ %10, %15 ]
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %31, i64 0, metadata !1521, metadata !651), !dbg !1526
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %16, i64 0, metadata !901, metadata !651) #11, !dbg !1558
  %32 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %16, i64 0, i32 0, !dbg !1560
  %33 = load i32, i32* %32, align 8, !dbg !1560, !tbaa !769
  %34 = icmp eq i32 %33, 1, !dbg !1561
  %35 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %16, i64 0, i32 1
  br i1 %34, label %36, label %39, !dbg !1562

; <label>:36:                                     ; preds = %30
  %37 = bitcast %union.anon* %35 to i8**, !dbg !1563
  %38 = load i8*, i8** %37, align 8, !dbg !1563, !tbaa !680
  tail call void @free(i8* %38) #11, !dbg !1564
  br label %41, !dbg !1564

; <label>:39:                                     ; preds = %30
  %40 = getelementptr inbounds %union.anon, %union.anon* %35, i64 0, i32 0, i64 0, !dbg !1565
  tail call void @__gmpz_clear(%struct.__mpz_struct* %40) #11, !dbg !1566
  br label %41

; <label>:41:                                     ; preds = %36, %39
  %42 = bitcast %struct.valinfo* %16 to i8*, !dbg !1567
  tail call void @free(i8* %42) #11, !dbg !1568
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %31, i64 0, metadata !1521, metadata !651), !dbg !1526
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1527
  %43 = load i8**, i8*** @args, align 8, !dbg !1531, !tbaa !658
  %44 = load i8*, i8** %43, align 8, !dbg !1532, !tbaa !658
  %45 = icmp eq i8* %44, null, !dbg !1533
  br i1 %45, label %46, label %7, !dbg !1534, !llvm.loop !1569

; <label>:46:                                     ; preds = %7, %41, %1
  %47 = phi %struct.valinfo* [ %2, %1 ], [ %31, %41 ], [ %10, %7 ]
  ret %struct.valinfo* %47, !dbg !1572
}

declare void @__gmpz_tdiv_q(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

declare void @__gmpz_tdiv_r(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

declare void @__gmpz_mul(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval6(i1 zeroext) unnamed_addr #6 !dbg !1573 {
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1575, metadata !651), !dbg !1598
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1599
  %2 = load i8**, i8*** @args, align 8, !dbg !1601, !tbaa !658
  %3 = load i8*, i8** %2, align 8, !dbg !1602, !tbaa !658
  %4 = icmp eq i8* %3, null, !dbg !1603
  br i1 %4, label %339, label %5, !dbg !1604

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @strcmp(i8* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #14, !dbg !1605
  %7 = icmp eq i32 %6, 0, !dbg !1605
  %8 = zext i1 %7 to i64, !dbg !1606
  %9 = getelementptr inbounds i8*, i8** %2, i64 %8, !dbg !1606
  store i8** %9, i8*** @args, align 8, !dbg !1606, !tbaa !658
  %10 = load i8*, i8** %9, align 8, !tbaa !658
  %11 = icmp eq i8* %10, null
  br i1 %7, label %12, label %22, !dbg !1607

; <label>:12:                                     ; preds = %5
  br i1 %11, label %13, label %14, !dbg !1608

; <label>:13:                                     ; preds = %12
  tail call fastcc void @syntax_error(), !dbg !1610
  unreachable

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds i8*, i8** %9, i64 1, !dbg !1612
  store i8** %15, i8*** @args, align 8, !dbg !1612, !tbaa !658
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1613, metadata !651) #11, !dbg !1619
  %16 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !1621
  %17 = bitcast i8* %16 to %struct.valinfo*, !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %17, i64 0, metadata !1618, metadata !651) #11, !dbg !1622
  %18 = bitcast i8* %16 to i32*, !dbg !1623
  store i32 1, i32* %18, align 8, !dbg !1624, !tbaa !769
  %19 = tail call noalias i8* @xstrdup(i8* nonnull %10) #11, !dbg !1625
  %20 = getelementptr inbounds i8, i8* %16, i64 8, !dbg !1626
  %21 = bitcast i8* %20 to i8**, !dbg !1627
  store i8* %19, i8** %21, align 8, !dbg !1628, !tbaa !680
  br label %375, !dbg !1629

; <label>:22:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1630
  br i1 %11, label %339, label %23, !dbg !1632

; <label>:23:                                     ; preds = %22
  %24 = tail call i32 @strcmp(i8* nonnull %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0)) #14, !dbg !1633
  %25 = icmp eq i32 %24, 0, !dbg !1633
  %26 = zext i1 %25 to i64, !dbg !1634
  %27 = getelementptr inbounds i8*, i8** %9, i64 %26, !dbg !1634
  store i8** %27, i8*** @args, align 8, !dbg !1634, !tbaa !658
  br i1 %25, label %28, label %59, !dbg !1635

; <label>:28:                                     ; preds = %23
  %29 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1636
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %29, i64 0, metadata !1577, metadata !651), !dbg !1638
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %29, i64 0, metadata !1177, metadata !651) #11, !dbg !1639
  %30 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %29, i64 0, i32 0, !dbg !1641
  %31 = load i32, i32* %30, align 8, !dbg !1641, !tbaa !769
  switch i32 %31, label %41 [
    i32 0, label %36
    i32 1, label %32
  ], !dbg !1642

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %29, i64 0, i32 1
  %34 = bitcast %union.anon* %33 to i8**
  %35 = load i8*, i8** %34, align 8, !dbg !1643, !tbaa !680
  br label %42, !dbg !1642

; <label>:36:                                     ; preds = %28
  %37 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %29, i64 0, i32 1, !dbg !1644
  %38 = getelementptr inbounds %union.anon, %union.anon* %37, i64 0, i32 0, i64 0, !dbg !1645
  %39 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %38) #11, !dbg !1646
  tail call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !1180, metadata !651) #11, !dbg !1647
  tail call void @__gmpz_clear(%struct.__mpz_struct* %38) #11, !dbg !1648
  %40 = bitcast %union.anon* %37 to i8**, !dbg !1649
  store i8* %39, i8** %40, align 8, !dbg !1650, !tbaa !680
  store i32 1, i32* %30, align 8, !dbg !1651, !tbaa !769
  br label %42, !dbg !1652

; <label>:41:                                     ; preds = %28
  tail call void @abort() #15, !dbg !1653
  unreachable, !dbg !1653

; <label>:42:                                     ; preds = %32, %36
  %43 = phi i8** [ %34, %32 ], [ %40, %36 ], !dbg !1643
  %44 = phi i8* [ %35, %32 ], [ %39, %36 ], !dbg !1643
  %45 = tail call i64 @strlen(i8* %44) #14, !dbg !1654
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !938, metadata !651) #11, !dbg !1655
  %46 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !1657
  %47 = bitcast i8* %46 to %struct.valinfo*, !dbg !1657
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %47, i64 0, metadata !943, metadata !651) #11, !dbg !1658
  %48 = bitcast i8* %46 to i32*, !dbg !1659
  store i32 0, i32* %48, align 8, !dbg !1660, !tbaa !769
  %49 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !1661
  %50 = bitcast i8* %49 to %struct.__mpz_struct*, !dbg !1662
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* %50, i64 %45) #11, !dbg !1663
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %47, i64 0, metadata !1578, metadata !651), !dbg !1664
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %29, i64 0, metadata !901, metadata !651) #11, !dbg !1665
  %51 = load i32, i32* %30, align 8, !dbg !1667, !tbaa !769
  %52 = icmp eq i32 %51, 1, !dbg !1668
  br i1 %52, label %53, label %55, !dbg !1669

; <label>:53:                                     ; preds = %42
  %54 = load i8*, i8** %43, align 8, !dbg !1670, !tbaa !680
  tail call void @free(i8* %54) #11, !dbg !1671
  br label %57, !dbg !1671

; <label>:55:                                     ; preds = %42
  %56 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %29, i64 0, i32 1, i32 0, i64 0, !dbg !1672
  tail call void @__gmpz_clear(%struct.__mpz_struct* %56) #11, !dbg !1673
  br label %57

; <label>:57:                                     ; preds = %53, %55
  %58 = bitcast %struct.valinfo* %29 to i8*, !dbg !1674
  tail call void @free(i8* %58) #11, !dbg !1675
  br label %375, !dbg !1676

; <label>:59:                                     ; preds = %23
  %60 = load i8*, i8** %27, align 8, !dbg !1677, !tbaa !658
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1679
  %61 = icmp eq i8* %60, null, !dbg !1680
  br i1 %61, label %339, label %62, !dbg !1681

; <label>:62:                                     ; preds = %59
  %63 = tail call i32 @strcmp(i8* nonnull %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0)) #14, !dbg !1682
  %64 = icmp eq i32 %63, 0, !dbg !1682
  %65 = zext i1 %64 to i64, !dbg !1683
  %66 = getelementptr inbounds i8*, i8** %27, i64 %65, !dbg !1683
  store i8** %66, i8*** @args, align 8, !dbg !1683, !tbaa !658
  br i1 %64, label %67, label %96, !dbg !1684

; <label>:67:                                     ; preds = %62
  %68 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1685
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %68, i64 0, metadata !1576, metadata !651), !dbg !1687
  %69 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1688
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %69, i64 0, metadata !1577, metadata !651), !dbg !1638
  br i1 %0, label %70, label %83, !dbg !1689

; <label>:70:                                     ; preds = %67
  %71 = tail call fastcc %struct.valinfo* @docolon(%struct.valinfo* %68, %struct.valinfo* %69), !dbg !1690
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %71, i64 0, metadata !1578, metadata !651), !dbg !1664
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %68, i64 0, metadata !901, metadata !651) #11, !dbg !1693
  %72 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %68, i64 0, i32 0, !dbg !1695
  %73 = load i32, i32* %72, align 8, !dbg !1695, !tbaa !769
  %74 = icmp eq i32 %73, 1, !dbg !1696
  %75 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %68, i64 0, i32 1
  br i1 %74, label %76, label %79, !dbg !1697

; <label>:76:                                     ; preds = %70
  %77 = bitcast %union.anon* %75 to i8**, !dbg !1698
  %78 = load i8*, i8** %77, align 8, !dbg !1698, !tbaa !680
  tail call void @free(i8* %78) #11, !dbg !1699
  br label %81, !dbg !1699

; <label>:79:                                     ; preds = %70
  %80 = getelementptr inbounds %union.anon, %union.anon* %75, i64 0, i32 0, i64 0, !dbg !1700
  tail call void @__gmpz_clear(%struct.__mpz_struct* %80) #11, !dbg !1701
  br label %81

; <label>:81:                                     ; preds = %76, %79
  %82 = bitcast %struct.valinfo* %68 to i8*, !dbg !1702
  tail call void @free(i8* %82) #11, !dbg !1703
  br label %83, !dbg !1704

; <label>:83:                                     ; preds = %67, %81
  %84 = phi %struct.valinfo* [ %71, %81 ], [ %68, %67 ]
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %84, i64 0, metadata !1578, metadata !651), !dbg !1664
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %69, i64 0, metadata !901, metadata !651) #11, !dbg !1705
  %85 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %69, i64 0, i32 0, !dbg !1707
  %86 = load i32, i32* %85, align 8, !dbg !1707, !tbaa !769
  %87 = icmp eq i32 %86, 1, !dbg !1708
  %88 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %69, i64 0, i32 1
  br i1 %87, label %89, label %92, !dbg !1709

; <label>:89:                                     ; preds = %83
  %90 = bitcast %union.anon* %88 to i8**, !dbg !1710
  %91 = load i8*, i8** %90, align 8, !dbg !1710, !tbaa !680
  tail call void @free(i8* %91) #11, !dbg !1711
  br label %94, !dbg !1711

; <label>:92:                                     ; preds = %83
  %93 = getelementptr inbounds %union.anon, %union.anon* %88, i64 0, i32 0, i64 0, !dbg !1712
  tail call void @__gmpz_clear(%struct.__mpz_struct* %93) #11, !dbg !1713
  br label %94

; <label>:94:                                     ; preds = %89, %92
  %95 = bitcast %struct.valinfo* %69 to i8*, !dbg !1714
  tail call void @free(i8* %95) #11, !dbg !1715
  br label %375, !dbg !1716

; <label>:96:                                     ; preds = %62
  %97 = load i8*, i8** %66, align 8, !dbg !1717, !tbaa !658
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1719
  %98 = icmp eq i8* %97, null, !dbg !1720
  br i1 %98, label %339, label %99, !dbg !1721

; <label>:99:                                     ; preds = %96
  %100 = tail call i32 @strcmp(i8* nonnull %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0)) #14, !dbg !1722
  %101 = icmp eq i32 %100, 0, !dbg !1722
  %102 = zext i1 %101 to i64, !dbg !1723
  %103 = getelementptr inbounds i8*, i8** %66, i64 %102, !dbg !1723
  store i8** %103, i8*** @args, align 8, !dbg !1723, !tbaa !658
  br i1 %101, label %104, label %161, !dbg !1724

; <label>:104:                                    ; preds = %99
  %105 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1725
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %105, i64 0, metadata !1576, metadata !651), !dbg !1687
  %106 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1726
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %106, i64 0, metadata !1577, metadata !651), !dbg !1638
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %105, i64 0, metadata !1177, metadata !651) #11, !dbg !1727
  %107 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %105, i64 0, i32 0, !dbg !1729
  %108 = load i32, i32* %107, align 8, !dbg !1729, !tbaa !769
  switch i32 %108, label %114 [
    i32 0, label %109
    i32 1, label %115
  ], !dbg !1730

; <label>:109:                                    ; preds = %104
  %110 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %105, i64 0, i32 1, !dbg !1731
  %111 = getelementptr inbounds %union.anon, %union.anon* %110, i64 0, i32 0, i64 0, !dbg !1732
  %112 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %111) #11, !dbg !1733
  tail call void @llvm.dbg.value(metadata i8* %112, i64 0, metadata !1180, metadata !651) #11, !dbg !1734
  tail call void @__gmpz_clear(%struct.__mpz_struct* %111) #11, !dbg !1735
  %113 = bitcast %union.anon* %110 to i8**, !dbg !1736
  store i8* %112, i8** %113, align 8, !dbg !1737, !tbaa !680
  store i32 1, i32* %107, align 8, !dbg !1738, !tbaa !769
  br label %115, !dbg !1739

; <label>:114:                                    ; preds = %104
  tail call void @abort() #15, !dbg !1740
  unreachable, !dbg !1740

; <label>:115:                                    ; preds = %104, %109
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %106, i64 0, metadata !1177, metadata !651) #11, !dbg !1741
  %116 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %106, i64 0, i32 0, !dbg !1743
  %117 = load i32, i32* %116, align 8, !dbg !1743, !tbaa !769
  switch i32 %117, label %127 [
    i32 0, label %122
    i32 1, label %118
  ], !dbg !1744

; <label>:118:                                    ; preds = %115
  %119 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %106, i64 0, i32 1
  %120 = bitcast %union.anon* %119 to i8**
  %121 = load i8*, i8** %120, align 8, !dbg !1745, !tbaa !680
  br label %128, !dbg !1744

; <label>:122:                                    ; preds = %115
  %123 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %106, i64 0, i32 1, !dbg !1746
  %124 = getelementptr inbounds %union.anon, %union.anon* %123, i64 0, i32 0, i64 0, !dbg !1747
  %125 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %124) #11, !dbg !1748
  tail call void @llvm.dbg.value(metadata i8* %125, i64 0, metadata !1180, metadata !651) #11, !dbg !1749
  tail call void @__gmpz_clear(%struct.__mpz_struct* %124) #11, !dbg !1750
  %126 = bitcast %union.anon* %123 to i8**, !dbg !1751
  store i8* %125, i8** %126, align 8, !dbg !1752, !tbaa !680
  store i32 1, i32* %116, align 8, !dbg !1753, !tbaa !769
  br label %128, !dbg !1754

; <label>:127:                                    ; preds = %115
  tail call void @abort() #15, !dbg !1755
  unreachable, !dbg !1755

; <label>:128:                                    ; preds = %118, %122
  %129 = phi i8** [ %120, %118 ], [ %126, %122 ], !dbg !1745
  %130 = phi i8* [ %121, %118 ], [ %125, %122 ], !dbg !1745
  %131 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %105, i64 0, i32 1, !dbg !1756
  %132 = bitcast %union.anon* %131 to i8**, !dbg !1757
  %133 = load i8*, i8** %132, align 8, !dbg !1757, !tbaa !680
  %134 = tail call i64 @strcspn(i8* %133, i8* %130) #14, !dbg !1758
  tail call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !1581, metadata !651), !dbg !1759
  %135 = getelementptr inbounds i8, i8* %133, i64 %134, !dbg !1760
  %136 = load i8, i8* %135, align 1, !dbg !1760, !tbaa !680
  %137 = icmp eq i8 %136, 0, !dbg !1760
  %138 = add i64 %134, 1, !dbg !1761
  %139 = select i1 %137, i64 0, i64 %138, !dbg !1760
  tail call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !938, metadata !651) #11, !dbg !1762
  %140 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !1764
  %141 = bitcast i8* %140 to %struct.valinfo*, !dbg !1764
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %141, i64 0, metadata !943, metadata !651) #11, !dbg !1765
  %142 = bitcast i8* %140 to i32*, !dbg !1766
  store i32 0, i32* %142, align 8, !dbg !1767, !tbaa !769
  %143 = getelementptr inbounds i8, i8* %140, i64 8, !dbg !1768
  %144 = bitcast i8* %143 to %struct.__mpz_struct*, !dbg !1769
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* %144, i64 %139) #11, !dbg !1770
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %141, i64 0, metadata !1578, metadata !651), !dbg !1664
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %105, i64 0, metadata !901, metadata !651) #11, !dbg !1771
  %145 = load i32, i32* %107, align 8, !dbg !1773, !tbaa !769
  %146 = icmp eq i32 %145, 1, !dbg !1774
  br i1 %146, label %147, label %149, !dbg !1775

; <label>:147:                                    ; preds = %128
  %148 = load i8*, i8** %132, align 8, !dbg !1776, !tbaa !680
  tail call void @free(i8* %148) #11, !dbg !1777
  br label %151, !dbg !1777

; <label>:149:                                    ; preds = %128
  %150 = getelementptr inbounds %union.anon, %union.anon* %131, i64 0, i32 0, i64 0, !dbg !1778
  tail call void @__gmpz_clear(%struct.__mpz_struct* %150) #11, !dbg !1779
  br label %151

; <label>:151:                                    ; preds = %147, %149
  %152 = bitcast %struct.valinfo* %105 to i8*, !dbg !1780
  tail call void @free(i8* %152) #11, !dbg !1781
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %106, i64 0, metadata !901, metadata !651) #11, !dbg !1782
  %153 = load i32, i32* %116, align 8, !dbg !1784, !tbaa !769
  %154 = icmp eq i32 %153, 1, !dbg !1785
  br i1 %154, label %155, label %157, !dbg !1786

; <label>:155:                                    ; preds = %151
  %156 = load i8*, i8** %129, align 8, !dbg !1787, !tbaa !680
  tail call void @free(i8* %156) #11, !dbg !1788
  br label %159, !dbg !1788

; <label>:157:                                    ; preds = %151
  %158 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %106, i64 0, i32 1, i32 0, i64 0, !dbg !1789
  tail call void @__gmpz_clear(%struct.__mpz_struct* %158) #11, !dbg !1790
  br label %159

; <label>:159:                                    ; preds = %155, %157
  %160 = bitcast %struct.valinfo* %106 to i8*, !dbg !1791
  tail call void @free(i8* %160) #11, !dbg !1792
  br label %375

; <label>:161:                                    ; preds = %99
  %162 = load i8*, i8** %103, align 8, !dbg !1793, !tbaa !658
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !1795
  %163 = icmp eq i8* %162, null, !dbg !1796
  br i1 %163, label %339, label %164, !dbg !1797

; <label>:164:                                    ; preds = %161
  %165 = tail call i32 @strcmp(i8* nonnull %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0)) #14, !dbg !1798
  %166 = icmp eq i32 %165, 0, !dbg !1798
  %167 = zext i1 %166 to i64, !dbg !1799
  %168 = getelementptr inbounds i8*, i8** %103, i64 %167, !dbg !1799
  store i8** %168, i8*** @args, align 8, !dbg !1799, !tbaa !658
  br i1 %166, label %169, label %336, !dbg !1800

; <label>:169:                                    ; preds = %164
  %170 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1801
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %170, i64 0, metadata !1576, metadata !651), !dbg !1687
  %171 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1802
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %171, i64 0, metadata !1579, metadata !651), !dbg !1803
  %172 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1804
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %172, i64 0, metadata !1580, metadata !651), !dbg !1805
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %170, i64 0, metadata !1177, metadata !651) #11, !dbg !1806
  %173 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %170, i64 0, i32 0, !dbg !1808
  %174 = load i32, i32* %173, align 8, !dbg !1808, !tbaa !769
  switch i32 %174, label %184 [
    i32 0, label %179
    i32 1, label %175
  ], !dbg !1809

; <label>:175:                                    ; preds = %169
  %176 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %170, i64 0, i32 1
  %177 = bitcast %union.anon* %176 to i8**
  %178 = load i8*, i8** %177, align 8, !dbg !1810, !tbaa !680
  br label %185, !dbg !1809

; <label>:179:                                    ; preds = %169
  %180 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %170, i64 0, i32 1, !dbg !1811
  %181 = getelementptr inbounds %union.anon, %union.anon* %180, i64 0, i32 0, i64 0, !dbg !1812
  %182 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %181) #11, !dbg !1813
  tail call void @llvm.dbg.value(metadata i8* %182, i64 0, metadata !1180, metadata !651) #11, !dbg !1814
  tail call void @__gmpz_clear(%struct.__mpz_struct* %181) #11, !dbg !1815
  %183 = bitcast %union.anon* %180 to i8**, !dbg !1816
  store i8* %182, i8** %183, align 8, !dbg !1817, !tbaa !680
  store i32 1, i32* %173, align 8, !dbg !1818, !tbaa !769
  br label %185, !dbg !1819

; <label>:184:                                    ; preds = %169
  tail call void @abort() #15, !dbg !1820
  unreachable, !dbg !1820

; <label>:185:                                    ; preds = %175, %179
  %186 = phi i8** [ %177, %175 ], [ %183, %179 ], !dbg !1810
  %187 = phi i8* [ %178, %175 ], [ %182, %179 ], !dbg !1810
  %188 = tail call i64 @strlen(i8* %187) #14, !dbg !1821
  tail call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1587, metadata !651), !dbg !1822
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %171, i64 0, metadata !1335, metadata !651) #11, !dbg !1823
  %189 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %171, i64 0, i32 0, !dbg !1825
  %190 = load i32, i32* %189, align 8, !dbg !1825, !tbaa !769
  switch i32 %190, label %213 [
    i32 0, label %214
    i32 1, label %191
  ], !dbg !1826

; <label>:191:                                    ; preds = %185
  %192 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %171, i64 0, i32 1, !dbg !1827
  %193 = bitcast %union.anon* %192 to i8**, !dbg !1828
  %194 = load i8*, i8** %193, align 8, !dbg !1828, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !1338, metadata !651) #11, !dbg !1829
  tail call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !1214, metadata !651) #11, !dbg !1830
  %195 = load i8, i8* %194, align 1, !dbg !1832, !tbaa !680
  %196 = icmp eq i8 %195, 45, !dbg !1833
  %197 = zext i1 %196 to i64, !dbg !1834
  %198 = getelementptr inbounds i8, i8* %194, i64 %197, !dbg !1834
  tail call void @llvm.dbg.value(metadata i8* %198, i64 0, metadata !1214, metadata !651) #11, !dbg !1830
  %199 = load i8, i8* %198, align 1, !dbg !1835, !tbaa !680
  br label %200, !dbg !1836, !llvm.loop !1225

; <label>:200:                                    ; preds = %206, %191
  %201 = phi i8 [ %199, %191 ], [ %208, %206 ], !dbg !1835
  %202 = phi i8* [ %198, %191 ], [ %207, %206 ]
  tail call void @llvm.dbg.value(metadata i8* %202, i64 0, metadata !1214, metadata !651) #11, !dbg !1830
  %203 = sext i8 %201 to i32, !dbg !1835
  %204 = add nsw i32 %203, -48, !dbg !1835
  %205 = icmp ult i32 %204, 10, !dbg !1835
  br i1 %205, label %206, label %240, !dbg !1837

; <label>:206:                                    ; preds = %200
  %207 = getelementptr inbounds i8, i8* %202, i64 1, !dbg !1838
  tail call void @llvm.dbg.value(metadata i8* %207, i64 0, metadata !1214, metadata !651) #11, !dbg !1830
  %208 = load i8, i8* %207, align 1, !dbg !1839, !tbaa !680
  %209 = icmp eq i8 %208, 0, !dbg !1835
  br i1 %209, label %210, label %200, !dbg !1835, !llvm.loop !1225

; <label>:210:                                    ; preds = %206
  %211 = getelementptr inbounds %union.anon, %union.anon* %192, i64 0, i32 0, i64 0, !dbg !1840
  %212 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* %211, i8* %194, i32 10) #11, !dbg !1841
  tail call void @free(i8* %194) #11, !dbg !1842
  store i32 0, i32* %189, align 8, !dbg !1843, !tbaa !769
  br label %214, !dbg !1844

; <label>:213:                                    ; preds = %185
  tail call void @abort() #15, !dbg !1845
  unreachable, !dbg !1845

; <label>:214:                                    ; preds = %185, %210
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %172, i64 0, metadata !1335, metadata !651) #11, !dbg !1846
  %215 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %172, i64 0, i32 0, !dbg !1848
  %216 = load i32, i32* %215, align 8, !dbg !1848, !tbaa !769
  switch i32 %216, label %239 [
    i32 0, label %246
    i32 1, label %217
  ], !dbg !1849

; <label>:217:                                    ; preds = %214
  %218 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %172, i64 0, i32 1, !dbg !1850
  %219 = bitcast %union.anon* %218 to i8**, !dbg !1851
  %220 = load i8*, i8** %219, align 8, !dbg !1851, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %220, i64 0, metadata !1338, metadata !651) #11, !dbg !1852
  tail call void @llvm.dbg.value(metadata i8* %220, i64 0, metadata !1214, metadata !651) #11, !dbg !1853
  %221 = load i8, i8* %220, align 1, !dbg !1855, !tbaa !680
  %222 = icmp eq i8 %221, 45, !dbg !1856
  %223 = zext i1 %222 to i64, !dbg !1857
  %224 = getelementptr inbounds i8, i8* %220, i64 %223, !dbg !1857
  tail call void @llvm.dbg.value(metadata i8* %224, i64 0, metadata !1214, metadata !651) #11, !dbg !1853
  %225 = load i8, i8* %224, align 1, !dbg !1858, !tbaa !680
  br label %226, !dbg !1859, !llvm.loop !1225

; <label>:226:                                    ; preds = %232, %217
  %227 = phi i8 [ %225, %217 ], [ %234, %232 ], !dbg !1858
  %228 = phi i8* [ %224, %217 ], [ %233, %232 ]
  tail call void @llvm.dbg.value(metadata i8* %228, i64 0, metadata !1214, metadata !651) #11, !dbg !1853
  %229 = sext i8 %227 to i32, !dbg !1858
  %230 = add nsw i32 %229, -48, !dbg !1858
  %231 = icmp ult i32 %230, 10, !dbg !1858
  br i1 %231, label %232, label %240, !dbg !1860

; <label>:232:                                    ; preds = %226
  %233 = getelementptr inbounds i8, i8* %228, i64 1, !dbg !1861
  tail call void @llvm.dbg.value(metadata i8* %233, i64 0, metadata !1214, metadata !651) #11, !dbg !1853
  %234 = load i8, i8* %233, align 1, !dbg !1862, !tbaa !680
  %235 = icmp eq i8 %234, 0, !dbg !1858
  br i1 %235, label %236, label %226, !dbg !1858, !llvm.loop !1225

; <label>:236:                                    ; preds = %232
  %237 = getelementptr inbounds %union.anon, %union.anon* %218, i64 0, i32 0, i64 0, !dbg !1863
  %238 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* %237, i8* %220, i32 10) #11, !dbg !1864
  tail call void @free(i8* %220) #11, !dbg !1865
  store i32 0, i32* %215, align 8, !dbg !1866, !tbaa !769
  br label %246, !dbg !1867

; <label>:239:                                    ; preds = %214
  tail call void @abort() #15, !dbg !1868
  unreachable, !dbg !1868

; <label>:240:                                    ; preds = %200, %226
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i64 0, metadata !1613, metadata !651) #11, !dbg !1869
  %241 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !1871
  tail call void @llvm.dbg.value(metadata i8* %241, i64 0, metadata !1618, metadata !651) #11, !dbg !1872
  %242 = bitcast i8* %241 to i32*, !dbg !1873
  store i32 1, i32* %242, align 8, !dbg !1874, !tbaa !769
  %243 = tail call noalias i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !1875
  %244 = getelementptr inbounds i8, i8* %241, i64 8, !dbg !1876
  %245 = bitcast i8* %244 to i8**, !dbg !1877
  store i8* %243, i8** %245, align 8, !dbg !1878, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %241, i64 0, metadata !1578, metadata !651), !dbg !1664
  br label %304, !dbg !1879

; <label>:246:                                    ; preds = %214, %236
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %171, i64 0, metadata !1880, metadata !1889), !dbg !1890
  %247 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %171, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !1892
  %248 = load i32, i32* %247, align 4, !dbg !1892, !tbaa !1894
  %249 = icmp slt i32 %248, 0, !dbg !1892
  br i1 %249, label %260, label %250, !dbg !1896

; <label>:250:                                    ; preds = %246
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %171, i64 0, metadata !1897, metadata !1889), !dbg !1910
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %171, i64 0, metadata !1908, metadata !1912), !dbg !1913
  %251 = icmp ugt i32 %248, 1, !dbg !1913
  br i1 %251, label %259, label %252, !dbg !1914

; <label>:252:                                    ; preds = %250
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %171, i64 0, metadata !1915, metadata !1889), !dbg !1923
  %253 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %171, i64 0, i32 1, i32 0, i64 0, i32 2, !dbg !1925
  %254 = load i64*, i64** %253, align 8, !dbg !1925, !tbaa !1926
  tail call void @llvm.dbg.value(metadata i64* %254, i64 0, metadata !1920, metadata !651), !dbg !1927
  %255 = load i64, i64* %254, align 8, !dbg !1928, !tbaa !1929
  tail call void @llvm.dbg.value(metadata i64 %255, i64 0, metadata !1922, metadata !651), !dbg !1930
  %256 = icmp eq i32 %248, 0, !dbg !1931
  %257 = select i1 %256, i64 0, i64 %255, !dbg !1932
  tail call void @llvm.dbg.value(metadata i64 %257, i64 0, metadata !1886, metadata !651), !dbg !1933
  %258 = icmp eq i64 %257, -1, !dbg !1934
  br i1 %258, label %259, label %260

; <label>:259:                                    ; preds = %252, %250
  br label %260, !dbg !1936

; <label>:260:                                    ; preds = %246, %252, %259
  %261 = phi i64 [ -2, %259 ], [ %257, %252 ], [ -1, %246 ]
  tail call void @llvm.dbg.value(metadata i64 %261, i64 0, metadata !1590, metadata !651), !dbg !1937
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %172, i64 0, metadata !1880, metadata !1889), !dbg !1938
  %262 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %172, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !1940
  %263 = load i32, i32* %262, align 4, !dbg !1940, !tbaa !1894
  %264 = icmp slt i32 %263, 0, !dbg !1940
  br i1 %264, label %282, label %265, !dbg !1941

; <label>:265:                                    ; preds = %260
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %172, i64 0, metadata !1897, metadata !1889), !dbg !1942
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %172, i64 0, metadata !1908, metadata !1912), !dbg !1944
  %266 = icmp ugt i32 %263, 1, !dbg !1944
  br i1 %266, label %274, label %267, !dbg !1945

; <label>:267:                                    ; preds = %265
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %172, i64 0, metadata !1915, metadata !1889), !dbg !1946
  %268 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %172, i64 0, i32 1, i32 0, i64 0, i32 2, !dbg !1948
  %269 = load i64*, i64** %268, align 8, !dbg !1948, !tbaa !1926
  tail call void @llvm.dbg.value(metadata i64* %269, i64 0, metadata !1920, metadata !651), !dbg !1949
  %270 = load i64, i64* %269, align 8, !dbg !1950, !tbaa !1929
  tail call void @llvm.dbg.value(metadata i64 %270, i64 0, metadata !1922, metadata !651), !dbg !1951
  %271 = icmp eq i32 %263, 0, !dbg !1952
  %272 = select i1 %271, i64 0, i64 %270, !dbg !1953
  tail call void @llvm.dbg.value(metadata i64 %272, i64 0, metadata !1886, metadata !651), !dbg !1954
  %273 = icmp eq i64 %272, -1, !dbg !1955
  br i1 %273, label %274, label %275

; <label>:274:                                    ; preds = %267, %265
  br label %275, !dbg !1956

; <label>:275:                                    ; preds = %267, %274
  %276 = phi i64 [ -2, %274 ], [ %272, %267 ]
  tail call void @llvm.dbg.value(metadata i64 %276, i64 0, metadata !1593, metadata !651), !dbg !1957
  %277 = add i64 %261, -1, !dbg !1958
  %278 = icmp uge i64 %277, %188, !dbg !1958
  %279 = add i64 %276, 1, !dbg !1958
  %280 = icmp ult i64 %279, 2, !dbg !1958
  %281 = or i1 %278, %280, !dbg !1958
  br i1 %281, label %282, label %288, !dbg !1958

; <label>:282:                                    ; preds = %260, %275
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i64 0, metadata !1613, metadata !651) #11, !dbg !1959
  %283 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !1961
  tail call void @llvm.dbg.value(metadata i8* %283, i64 0, metadata !1618, metadata !651) #11, !dbg !1962
  %284 = bitcast i8* %283 to i32*, !dbg !1963
  store i32 1, i32* %284, align 8, !dbg !1964, !tbaa !769
  %285 = tail call noalias i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !1965
  %286 = getelementptr inbounds i8, i8* %283, i64 8, !dbg !1966
  %287 = bitcast i8* %286 to i8**, !dbg !1967
  store i8* %285, i8** %287, align 8, !dbg !1968, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8* %283, i64 0, metadata !1578, metadata !651), !dbg !1664
  br label %304, !dbg !1969

; <label>:288:                                    ; preds = %275
  %289 = sub i64 %188, %261, !dbg !1970
  %290 = add i64 %289, 1, !dbg !1970
  %291 = icmp ult i64 %276, %290, !dbg !1970
  %292 = select i1 %291, i64 %276, i64 %290, !dbg !1970
  tail call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1594, metadata !651), !dbg !1971
  %293 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !1972
  tail call void @llvm.dbg.value(metadata i8* %293, i64 0, metadata !1578, metadata !651), !dbg !1664
  %294 = bitcast i8* %293 to i32*, !dbg !1973
  store i32 1, i32* %294, align 8, !dbg !1974, !tbaa !769
  %295 = add i64 %292, 1, !dbg !1975
  %296 = tail call noalias i8* @xmalloc(i64 %295) #11, !dbg !1976
  %297 = getelementptr inbounds i8, i8* %293, i64 8, !dbg !1977
  %298 = bitcast i8* %297 to i8**, !dbg !1978
  store i8* %296, i8** %298, align 8, !dbg !1979, !tbaa !680
  %299 = load i8*, i8** %186, align 8, !dbg !1980, !tbaa !680
  %300 = getelementptr inbounds i8, i8* %299, i64 %261, !dbg !1981
  %301 = getelementptr inbounds i8, i8* %300, i64 -1, !dbg !1982
  tail call void @llvm.dbg.value(metadata i8* %296, i64 0, metadata !1983, metadata !651) #11, !dbg !1995
  tail call void @llvm.dbg.value(metadata i8* %301, i64 0, metadata !1993, metadata !651) #11, !dbg !1995
  tail call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1994, metadata !651) #11, !dbg !1995
  %302 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %296, i1 false, i1 true) #11, !dbg !1997
  %303 = tail call i8* @__mempcpy_chk(i8* nonnull %296, i8* nonnull %301, i64 %292, i64 %302) #11, !dbg !1998
  tail call void @llvm.dbg.value(metadata i8* %303, i64 0, metadata !1597, metadata !651), !dbg !1999
  store i8 0, i8* %303, align 1, !dbg !2000, !tbaa !680
  br label %304

; <label>:304:                                    ; preds = %282, %288, %240
  %305 = phi i8* [ %241, %240 ], [ %283, %282 ], [ %293, %288 ]
  %306 = bitcast i8* %305 to %struct.valinfo*
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %306, i64 0, metadata !1578, metadata !651), !dbg !1664
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %170, i64 0, metadata !901, metadata !651) #11, !dbg !2001
  %307 = load i32, i32* %173, align 8, !dbg !2003, !tbaa !769
  %308 = icmp eq i32 %307, 1, !dbg !2004
  br i1 %308, label %309, label %311, !dbg !2005

; <label>:309:                                    ; preds = %304
  %310 = load i8*, i8** %186, align 8, !dbg !2006, !tbaa !680
  tail call void @free(i8* %310) #11, !dbg !2007
  br label %313, !dbg !2007

; <label>:311:                                    ; preds = %304
  %312 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %170, i64 0, i32 1, i32 0, i64 0, !dbg !2008
  tail call void @__gmpz_clear(%struct.__mpz_struct* %312) #11, !dbg !2009
  br label %313

; <label>:313:                                    ; preds = %309, %311
  %314 = bitcast %struct.valinfo* %170 to i8*, !dbg !2010
  tail call void @free(i8* %314) #11, !dbg !2011
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %171, i64 0, metadata !901, metadata !651) #11, !dbg !2012
  %315 = load i32, i32* %189, align 8, !dbg !2014, !tbaa !769
  %316 = icmp eq i32 %315, 1, !dbg !2015
  %317 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %171, i64 0, i32 1
  br i1 %316, label %318, label %321, !dbg !2016

; <label>:318:                                    ; preds = %313
  %319 = bitcast %union.anon* %317 to i8**, !dbg !2017
  %320 = load i8*, i8** %319, align 8, !dbg !2017, !tbaa !680
  tail call void @free(i8* %320) #11, !dbg !2018
  br label %323, !dbg !2018

; <label>:321:                                    ; preds = %313
  %322 = getelementptr inbounds %union.anon, %union.anon* %317, i64 0, i32 0, i64 0, !dbg !2019
  tail call void @__gmpz_clear(%struct.__mpz_struct* %322) #11, !dbg !2020
  br label %323

; <label>:323:                                    ; preds = %318, %321
  %324 = bitcast %struct.valinfo* %171 to i8*, !dbg !2021
  tail call void @free(i8* %324) #11, !dbg !2022
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %172, i64 0, metadata !901, metadata !651) #11, !dbg !2023
  %325 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %172, i64 0, i32 0, !dbg !2025
  %326 = load i32, i32* %325, align 8, !dbg !2025, !tbaa !769
  %327 = icmp eq i32 %326, 1, !dbg !2026
  %328 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %172, i64 0, i32 1
  br i1 %327, label %329, label %332, !dbg !2027

; <label>:329:                                    ; preds = %323
  %330 = bitcast %union.anon* %328 to i8**, !dbg !2028
  %331 = load i8*, i8** %330, align 8, !dbg !2028, !tbaa !680
  tail call void @free(i8* %331) #11, !dbg !2029
  br label %334, !dbg !2029

; <label>:332:                                    ; preds = %323
  %333 = getelementptr inbounds %union.anon, %union.anon* %328, i64 0, i32 0, i64 0, !dbg !2030
  tail call void @__gmpz_clear(%struct.__mpz_struct* %333) #11, !dbg !2031
  br label %334

; <label>:334:                                    ; preds = %329, %332
  %335 = bitcast %struct.valinfo* %172 to i8*, !dbg !2032
  tail call void @free(i8* %335) #11, !dbg !2033
  br label %375

; <label>:336:                                    ; preds = %164
  %337 = load i8*, i8** %168, align 8, !dbg !2034, !tbaa !658
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !2039, metadata !651) #11, !dbg !2042
  %338 = icmp eq i8* %337, null, !dbg !2043
  br i1 %338, label %339, label %340, !dbg !2044

; <label>:339:                                    ; preds = %1, %22, %59, %96, %161, %336
  tail call fastcc void @syntax_error() #11, !dbg !2045
  unreachable

; <label>:340:                                    ; preds = %336
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !2046
  %341 = tail call i32 @strcmp(i8* nonnull %337, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0)) #14, !dbg !2049
  %342 = icmp eq i32 %341, 0, !dbg !2049
  %343 = zext i1 %342 to i64, !dbg !2050
  %344 = getelementptr inbounds i8*, i8** %168, i64 %343, !dbg !2050
  store i8** %344, i8*** @args, align 8, !dbg !2050, !tbaa !658
  br i1 %342, label %345, label %356, !dbg !2051

; <label>:345:                                    ; preds = %340
  %346 = tail call fastcc %struct.valinfo* @eval(i1 zeroext %0) #11, !dbg !2052
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %346, i64 0, metadata !2040, metadata !651) #11, !dbg !2054
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !2055
  %347 = load i8**, i8*** @args, align 8, !dbg !2058, !tbaa !658
  %348 = load i8*, i8** %347, align 8, !dbg !2059, !tbaa !658
  %349 = icmp eq i8* %348, null, !dbg !2060
  br i1 %349, label %355, label %350, !dbg !2061

; <label>:350:                                    ; preds = %345
  %351 = tail call i32 @strcmp(i8* nonnull %348, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #14, !dbg !2062
  %352 = icmp eq i32 %351, 0, !dbg !2062
  %353 = zext i1 %352 to i64, !dbg !2063
  %354 = getelementptr inbounds i8*, i8** %347, i64 %353, !dbg !2063
  store i8** %354, i8*** @args, align 8, !dbg !2063, !tbaa !658
  br i1 %352, label %375, label %355, !dbg !2064

; <label>:355:                                    ; preds = %345, %350
  tail call fastcc void @syntax_error() #11, !dbg !2065
  unreachable

; <label>:356:                                    ; preds = %340
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i64 0, metadata !829, metadata !651) #11, !dbg !2066
  %357 = load i8*, i8** %344, align 8, !dbg !2069, !tbaa !658
  %358 = icmp eq i8* %357, null, !dbg !2070
  br i1 %358, label %365, label %359, !dbg !2071

; <label>:359:                                    ; preds = %356
  %360 = tail call i32 @strcmp(i8* nonnull %357, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #14, !dbg !2072
  %361 = icmp eq i32 %360, 0, !dbg !2072
  %362 = zext i1 %361 to i64, !dbg !2073
  %363 = getelementptr inbounds i8*, i8** %344, i64 %362, !dbg !2073
  store i8** %363, i8*** @args, align 8, !dbg !2073, !tbaa !658
  br i1 %361, label %364, label %365, !dbg !2074

; <label>:364:                                    ; preds = %359
  tail call fastcc void @syntax_error() #11, !dbg !2075
  unreachable

; <label>:365:                                    ; preds = %356, %359
  %366 = phi i8** [ %344, %356 ], [ %363, %359 ], !dbg !2076
  %367 = getelementptr inbounds i8*, i8** %366, i64 1, !dbg !2076
  store i8** %367, i8*** @args, align 8, !dbg !2076, !tbaa !658
  %368 = load i8*, i8** %366, align 8, !dbg !2077, !tbaa !658
  tail call void @llvm.dbg.value(metadata i8* %368, i64 0, metadata !1613, metadata !651) #11, !dbg !2078
  %369 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !2080
  %370 = bitcast i8* %369 to %struct.valinfo*, !dbg !2080
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %370, i64 0, metadata !1618, metadata !651) #11, !dbg !2081
  %371 = bitcast i8* %369 to i32*, !dbg !2082
  store i32 1, i32* %371, align 8, !dbg !2083, !tbaa !769
  %372 = tail call noalias i8* @xstrdup(i8* %368) #11, !dbg !2084
  %373 = getelementptr inbounds i8, i8* %369, i64 8, !dbg !2085
  %374 = bitcast i8* %373 to i8**, !dbg !2086
  store i8* %372, i8** %374, align 8, !dbg !2087, !tbaa !680
  br label %375, !dbg !2088

; <label>:375:                                    ; preds = %365, %350, %334, %159, %94, %57, %14
  %376 = phi %struct.valinfo* [ %17, %14 ], [ %47, %57 ], [ %84, %94 ], [ %141, %159 ], [ %306, %334 ], [ %370, %365 ], [ %346, %350 ]
  ret %struct.valinfo* %376, !dbg !2089
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @docolon(%struct.valinfo*, %struct.valinfo*) unnamed_addr #6 !dbg !2090 {
  %3 = alloca %struct.re_pattern_buffer, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct.re_registers, align 8
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %0, i64 0, metadata !2094, metadata !651), !dbg !2131
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %1, i64 0, metadata !2095, metadata !651), !dbg !2132
  %6 = bitcast %struct.re_pattern_buffer* %3 to i8*, !dbg !2133
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #11, !dbg !2133
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !2134
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %7) #11, !dbg !2134
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !2120, metadata !651), !dbg !2135
  %8 = bitcast %struct.re_registers* %5 to i8*, !dbg !2136
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #11, !dbg !2136
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %0, i64 0, metadata !1177, metadata !651) #11, !dbg !2137
  %9 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %0, i64 0, i32 0, !dbg !2139
  %10 = load i32, i32* %9, align 8, !dbg !2139, !tbaa !769
  switch i32 %10, label %16 [
    i32 0, label %11
    i32 1, label %17
  ], !dbg !2140

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %0, i64 0, i32 1, !dbg !2141
  %13 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0, i64 0, !dbg !2142
  %14 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %13) #11, !dbg !2143
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1180, metadata !651) #11, !dbg !2144
  tail call void @__gmpz_clear(%struct.__mpz_struct* %13) #11, !dbg !2145
  %15 = bitcast %union.anon* %12 to i8**, !dbg !2146
  store i8* %14, i8** %15, align 8, !dbg !2147, !tbaa !680
  store i32 1, i32* %9, align 8, !dbg !2148, !tbaa !769
  br label %17, !dbg !2149

; <label>:16:                                     ; preds = %2
  tail call void @abort() #15, !dbg !2150
  unreachable, !dbg !2150

; <label>:17:                                     ; preds = %2, %11
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %1, i64 0, metadata !1177, metadata !651) #11, !dbg !2151
  %18 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %1, i64 0, i32 0, !dbg !2153
  %19 = load i32, i32* %18, align 8, !dbg !2153, !tbaa !769
  switch i32 %19, label %29 [
    i32 0, label %24
    i32 1, label %20
  ], !dbg !2154

; <label>:20:                                     ; preds = %17
  %21 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %1, i64 0, i32 1
  %22 = bitcast %union.anon* %21 to i8**
  %23 = load i8*, i8** %22, align 8, !dbg !2155, !tbaa !680
  br label %30, !dbg !2154

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %1, i64 0, i32 1, !dbg !2156
  %26 = getelementptr inbounds %union.anon, %union.anon* %25, i64 0, i32 0, i64 0, !dbg !2157
  %27 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %26) #11, !dbg !2158
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1180, metadata !651) #11, !dbg !2159
  tail call void @__gmpz_clear(%struct.__mpz_struct* %26) #11, !dbg !2160
  %28 = bitcast %union.anon* %25 to i8**, !dbg !2161
  store i8* %27, i8** %28, align 8, !dbg !2162, !tbaa !680
  store i32 1, i32* %18, align 8, !dbg !2163, !tbaa !769
  br label %30, !dbg !2164

; <label>:29:                                     ; preds = %17
  tail call void @abort() #15, !dbg !2165
  unreachable, !dbg !2165

; <label>:30:                                     ; preds = %20, %24
  %31 = phi i8* [ %23, %20 ], [ %27, %24 ], !dbg !2155
  %32 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %5, i64 0, i32 0, !dbg !2166
  store i32 0, i32* %32, align 8, !dbg !2167, !tbaa !2168
  %33 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %5, i64 0, i32 1, !dbg !2170
  %34 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %5, i64 0, i32 2, !dbg !2171
  %35 = bitcast i32** %33 to i8*, !dbg !2172
  call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 16, i32 8, i1 false), !dbg !2173
  %36 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i64 0, i32 4, !dbg !2174
  %37 = bitcast %struct.re_pattern_buffer* %3 to i8*, !dbg !2175
  call void @llvm.memset.p0i8.i64(i8* nonnull %37, i8 0, i64 16, i32 8, i1 false), !dbg !2176
  store i8* %7, i8** %36, align 8, !dbg !2175, !tbaa !2177
  %38 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i64 0, i32 5, !dbg !2179
  store i8* null, i8** %38, align 8, !dbg !2180, !tbaa !2181
  store i64 710, i64* @re_syntax_options, align 8, !dbg !2182, !tbaa !1929
  %39 = call i64 @strlen(i8* %31) #14, !dbg !2183
  call void @llvm.dbg.value(metadata %struct.re_pattern_buffer* %3, i64 0, metadata !2098, metadata !651), !dbg !2184
  %40 = call i8* @re_compile_pattern(i8* %31, i64 %39, %struct.re_pattern_buffer* nonnull %3) #11, !dbg !2185
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2097, metadata !651), !dbg !2186
  %41 = icmp eq i8* %40, null, !dbg !2187
  br i1 %41, label %43, label %42, !dbg !2189

; <label>:42:                                     ; preds = %30
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* nonnull %40) #11, !dbg !2190
  unreachable, !dbg !2190

; <label>:43:                                     ; preds = %30
  %44 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i64 0, i32 7, !dbg !2191
  %45 = load i8, i8* %44, align 8, !dbg !2192
  %46 = and i8 %45, 127, !dbg !2192
  store i8 %46, i8* %44, align 8, !dbg !2192
  %47 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %0, i64 0, i32 1, !dbg !2193
  %48 = bitcast %union.anon* %47 to i8**, !dbg !2194
  %49 = load i8*, i8** %48, align 8, !dbg !2194, !tbaa !680
  %50 = call i64 @strlen(i8* %49) #14, !dbg !2195
  %51 = trunc i64 %50 to i32, !dbg !2195
  call void @llvm.dbg.value(metadata %struct.re_pattern_buffer* %3, i64 0, metadata !2098, metadata !651), !dbg !2184
  call void @llvm.dbg.value(metadata %struct.re_registers* %5, i64 0, metadata !2121, metadata !651), !dbg !2196
  %52 = call i32 @re_match(%struct.re_pattern_buffer* nonnull %3, i8* %49, i32 %51, i32 0, %struct.re_registers* nonnull %5) #11, !dbg !2197
  call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !2130, metadata !651), !dbg !2198
  %53 = icmp sgt i32 %52, -1, !dbg !2199
  br i1 %53, label %54, label %84, !dbg !2201

; <label>:54:                                     ; preds = %43
  %55 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i64 0, i32 6, !dbg !2202
  %56 = load i64, i64* %55, align 8, !dbg !2202, !tbaa !2205
  %57 = icmp eq i64 %56, 0, !dbg !2206
  br i1 %57, label %77, label %58, !dbg !2207

; <label>:58:                                     ; preds = %54
  %59 = load i8*, i8** %48, align 8, !dbg !2208, !tbaa !680
  %60 = load i32*, i32** %34, align 8, !dbg !2210, !tbaa !2211
  %61 = getelementptr inbounds i32, i32* %60, i64 1, !dbg !2212
  %62 = load i32, i32* %61, align 4, !dbg !2212, !tbaa !729
  %63 = sext i32 %62 to i64, !dbg !2213
  %64 = getelementptr inbounds i8, i8* %59, i64 %63, !dbg !2213
  store i8 0, i8* %64, align 1, !dbg !2214, !tbaa !680
  %65 = load i8*, i8** %48, align 8, !dbg !2215, !tbaa !680
  %66 = load i32*, i32** %33, align 8, !dbg !2216, !tbaa !2217
  %67 = getelementptr inbounds i32, i32* %66, i64 1, !dbg !2218
  %68 = load i32, i32* %67, align 4, !dbg !2218, !tbaa !729
  %69 = sext i32 %68 to i64, !dbg !2219
  %70 = getelementptr inbounds i8, i8* %65, i64 %69, !dbg !2219
  call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !1613, metadata !651) #11, !dbg !2220
  %71 = call noalias i8* @xmalloc(i64 24) #11, !dbg !2222
  %72 = bitcast i8* %71 to %struct.valinfo*, !dbg !2222
  call void @llvm.dbg.value(metadata %struct.valinfo* %72, i64 0, metadata !1618, metadata !651) #11, !dbg !2223
  %73 = bitcast i8* %71 to i32*, !dbg !2224
  store i32 1, i32* %73, align 8, !dbg !2225, !tbaa !769
  %74 = call noalias i8* @xstrdup(i8* %70) #11, !dbg !2226
  %75 = getelementptr inbounds i8, i8* %71, i64 8, !dbg !2227
  %76 = bitcast i8* %75 to i8**, !dbg !2228
  store i8* %74, i8** %76, align 8, !dbg !2229, !tbaa !680
  call void @llvm.dbg.value(metadata %struct.valinfo* %72, i64 0, metadata !2096, metadata !651), !dbg !2230
  br label %105, !dbg !2231

; <label>:77:                                     ; preds = %54
  %78 = sext i32 %52 to i64, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !938, metadata !651) #11, !dbg !2233
  %79 = call noalias i8* @xmalloc(i64 24) #11, !dbg !2235
  %80 = bitcast i8* %79 to %struct.valinfo*, !dbg !2235
  call void @llvm.dbg.value(metadata %struct.valinfo* %80, i64 0, metadata !943, metadata !651) #11, !dbg !2236
  %81 = bitcast i8* %79 to i32*, !dbg !2237
  store i32 0, i32* %81, align 8, !dbg !2238, !tbaa !769
  %82 = getelementptr inbounds i8, i8* %79, i64 8, !dbg !2239
  %83 = bitcast i8* %82 to %struct.__mpz_struct*, !dbg !2240
  call void @__gmpz_init_set_ui(%struct.__mpz_struct* %83, i64 %78) #11, !dbg !2241
  call void @llvm.dbg.value(metadata %struct.valinfo* %80, i64 0, metadata !2096, metadata !651), !dbg !2230
  br label %105

; <label>:84:                                     ; preds = %43
  switch i32 %52, label %102 [
    i32 -1, label %85
    i32 -2, label %99
  ], !dbg !2242

; <label>:85:                                     ; preds = %84
  %86 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i64 0, i32 6, !dbg !2243
  %87 = load i64, i64* %86, align 8, !dbg !2243, !tbaa !2205
  %88 = icmp eq i64 %87, 0, !dbg !2247
  %89 = call noalias i8* @xmalloc(i64 24) #11, !dbg !2248
  %90 = bitcast i8* %89 to %struct.valinfo*
  %91 = bitcast i8* %89 to i32*
  br i1 %88, label %96, label %92, !dbg !2250

; <label>:92:                                     ; preds = %85
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i64 0, metadata !1613, metadata !651) #11, !dbg !2251
  call void @llvm.dbg.value(metadata %struct.valinfo* %90, i64 0, metadata !1618, metadata !651) #11, !dbg !2253
  store i32 1, i32* %91, align 8, !dbg !2254, !tbaa !769
  %93 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !2255
  %94 = getelementptr inbounds i8, i8* %89, i64 8, !dbg !2256
  %95 = bitcast i8* %94 to i8**, !dbg !2257
  store i8* %93, i8** %95, align 8, !dbg !2258, !tbaa !680
  call void @llvm.dbg.value(metadata %struct.valinfo* %90, i64 0, metadata !2096, metadata !651), !dbg !2230
  br label %105, !dbg !2259

; <label>:96:                                     ; preds = %85
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !938, metadata !651) #11, !dbg !2260
  call void @llvm.dbg.value(metadata %struct.valinfo* %90, i64 0, metadata !943, metadata !651) #11, !dbg !2261
  store i32 0, i32* %91, align 8, !dbg !2262, !tbaa !769
  %97 = getelementptr inbounds i8, i8* %89, i64 8, !dbg !2263
  %98 = bitcast i8* %97 to %struct.__mpz_struct*, !dbg !2264
  call void @__gmpz_init_set_ui(%struct.__mpz_struct* %98, i64 0) #11, !dbg !2265
  call void @llvm.dbg.value(metadata %struct.valinfo* %90, i64 0, metadata !2096, metadata !651), !dbg !2230
  br label %105

; <label>:99:                                     ; preds = %84
  %100 = tail call i32* @__errno_location() #17, !dbg !2266
  %101 = load i32, i32* %100, align 4, !dbg !2266, !tbaa !729
  br label %102, !dbg !2266

; <label>:102:                                    ; preds = %84, %99
  %103 = phi i32 [ %101, %99 ], [ 75, %84 ], !dbg !2266
  %104 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.66, i64 0, i64 0), i32 5) #11, !dbg !2266
  call void (i32, i32, i8*, ...) @error(i32 3, i32 %103, i8* %104) #11, !dbg !2266
  unreachable, !dbg !2266

; <label>:105:                                    ; preds = %96, %92, %58, %77
  %106 = phi %struct.valinfo* [ %72, %58 ], [ %80, %77 ], [ %90, %92 ], [ %90, %96 ]
  call void @llvm.dbg.value(metadata %struct.valinfo* %106, i64 0, metadata !2096, metadata !651), !dbg !2230
  %107 = load i32, i32* %32, align 8, !dbg !2267, !tbaa !2168
  %108 = icmp eq i32 %107, 0, !dbg !2269
  br i1 %108, label %114, label %109, !dbg !2270

; <label>:109:                                    ; preds = %105
  %110 = bitcast i32** %33 to i8**, !dbg !2271
  %111 = load i8*, i8** %110, align 8, !dbg !2271, !tbaa !2217
  call void @free(i8* %111) #11, !dbg !2273
  %112 = bitcast i32** %34 to i8**, !dbg !2274
  %113 = load i8*, i8** %112, align 8, !dbg !2274, !tbaa !2211
  call void @free(i8* %113) #11, !dbg !2275
  br label %114, !dbg !2276

; <label>:114:                                    ; preds = %105, %109
  store i8* null, i8** %36, align 8, !dbg !2277, !tbaa !2177
  call void @llvm.dbg.value(metadata %struct.re_pattern_buffer* %3, i64 0, metadata !2098, metadata !651), !dbg !2184
  call void @regfree(%struct.re_pattern_buffer* nonnull %3) #11, !dbg !2278
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #11, !dbg !2279
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %7) #11, !dbg !2279
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #11, !dbg !2279
  ret %struct.valinfo* %106, !dbg !2280
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

declare i8* @re_compile_pattern(i8*, i64, %struct.re_pattern_buffer*) local_unnamed_addr #3

declare i32 @re_match(%struct.re_pattern_buffer*, i8*, i32, i32, %struct.re_registers*) local_unnamed_addr #3

declare void @regfree(%struct.re_pattern_buffer*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !2281 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2283, metadata !651), !dbg !2284
  store i8* %0, i8** @file_name, align 8, !dbg !2285, !tbaa !658
  ret void, !dbg !2286
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !2287 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !2291, metadata !651), !dbg !2292
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2293, !tbaa !2294
  ret void, !dbg !2296
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !2297 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2302, !tbaa !658
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !2303
  %3 = icmp eq i32 %2, 0, !dbg !2304
  br i1 %3, label %21, label %4, !dbg !2305

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2306, !tbaa !2294, !range !2307
  %6 = icmp eq i8 %5, 0, !dbg !2306
  %7 = tail call i32* @__errno_location() #17, !dbg !2308
  br i1 %6, label %11, label %8, !dbg !2310

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !2311, !tbaa !729
  %10 = icmp eq i32 %9, 32, !dbg !2312
  br i1 %10, label %21, label %11, !dbg !2313

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 5) #11, !dbg !2314
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !2299, metadata !651), !dbg !2315
  %13 = load i8*, i8** @file_name, align 8, !dbg !2316, !tbaa !658
  %14 = icmp eq i8* %13, null, !dbg !2316
  %15 = load i32, i32* %7, align 4, !tbaa !729
  br i1 %14, label %18, label %16, !dbg !2317

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !2318
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.24, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !2319
  br label %19, !dbg !2319

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.25, i64 0, i64 0), i8* %12) #11, !dbg !2320
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !2321, !tbaa !729
  tail call void @_exit(i32 %20) #15, !dbg !2322
  unreachable, !dbg !2322

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2323, !tbaa !658
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !2325
  %24 = icmp eq i32 %23, 0, !dbg !2326
  br i1 %24, label %27, label %25, !dbg !2327

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !2328, !tbaa !729
  tail call void @_exit(i32 %26) #15, !dbg !2329
  unreachable, !dbg !2329

; <label>:27:                                     ; preds = %21
  ret void, !dbg !2330
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !2331 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2336, metadata !651), !dbg !2361
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !2337, metadata !651), !dbg !2362
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2338, metadata !651), !dbg !2363
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2339, metadata !651), !dbg !2364
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2340, metadata !651), !dbg !2365
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !2341, metadata !651), !dbg !2366
  %8 = load i32, i32* @opterr, align 4, !dbg !2367, !tbaa !729
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2343, metadata !651), !dbg !2368
  store i32 0, i32* @opterr, align 4, !dbg !2369, !tbaa !729
  %9 = icmp eq i32 %0, 2, !dbg !2370
  br i1 %9, label %10, label %17, !dbg !2371

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !2372
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !2342, metadata !651), !dbg !2373
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !2374

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #11, !dbg !2375
  br label %17, !dbg !2376

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !2377
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #11, !dbg !2377
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !2344, metadata !651), !dbg !2378
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !2379
  call void @llvm.va_start(i8* nonnull %14), !dbg !2379
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2380, !tbaa !658
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #11, !dbg !2381
  call void @exit(i32 0) #15, !dbg !2382
  unreachable, !dbg !2382

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !2383, !tbaa !729
  store i32 0, i32* @optind, align 4, !dbg !2384, !tbaa !729
  ret void, !dbg !2385
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2386 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2388, metadata !651), !dbg !2391
  %2 = icmp eq i8* %0, null, !dbg !2392
  br i1 %2, label %3, label %6, !dbg !2394

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2395, !tbaa !658
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.48, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !2397
  tail call void @abort() #15, !dbg !2398
  unreachable, !dbg !2398

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !2399
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2389, metadata !651), !dbg !2400
  %8 = icmp eq i8* %7, null, !dbg !2401
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2402
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2403
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2390, metadata !651), !dbg !2404
  %11 = ptrtoint i8* %10 to i64, !dbg !2405
  %12 = ptrtoint i8* %0 to i64, !dbg !2405
  %13 = sub i64 %11, %12, !dbg !2405
  %14 = icmp sgt i64 %13, 6, !dbg !2407
  br i1 %14, label %15, label %24, !dbg !2408

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2409
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.49, i64 0, i64 0), i64 7) #14, !dbg !2410
  %18 = icmp eq i32 %17, 0, !dbg !2411
  br i1 %18, label %19, label %24, !dbg !2412

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2388, metadata !651), !dbg !2391
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.50, i64 0, i64 0), i64 3) #14, !dbg !2413
  %21 = icmp eq i32 %20, 0, !dbg !2416
  br i1 %21, label %22, label %24, !dbg !2417

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2418
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2388, metadata !651), !dbg !2391
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2420, !tbaa !658
  br label %24, !dbg !2421

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2388, metadata !651), !dbg !2391
  store i8* %25, i8** @program_name, align 8, !dbg !2422, !tbaa !658
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2423, !tbaa !658
  ret void, !dbg !2424
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2425 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2430, metadata !651), !dbg !2433
  %2 = tail call i32* @__errno_location() #17, !dbg !2434
  %3 = load i32, i32* %2, align 4, !dbg !2434, !tbaa !729
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2431, metadata !651), !dbg !2435
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2436
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2436
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !2436
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !2437
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2437
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2432, metadata !651), !dbg !2438
  store i32 %3, i32* %2, align 4, !dbg !2439, !tbaa !729
  ret %struct.quoting_options* %8, !dbg !2440
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !2441 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2447, metadata !651), !dbg !2448
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2449
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2449
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2450
  %5 = load i32, i32* %4, align 8, !dbg !2450, !tbaa !2451
  ret i32 %5, !dbg !2453
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2454 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2458, metadata !651), !dbg !2460
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2459, metadata !651), !dbg !2461
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2462
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2462
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2463
  store i32 %1, i32* %5, align 8, !dbg !2464, !tbaa !2451
  ret void, !dbg !2465
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2466 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2470, metadata !651), !dbg !2478
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2471, metadata !651), !dbg !2479
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2472, metadata !651), !dbg !2480
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2473, metadata !651), !dbg !2481
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2482
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2482
  %6 = lshr i8 %1, 5, !dbg !2483
  %7 = zext i8 %6 to i64, !dbg !2483
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2484
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2474, metadata !651), !dbg !2485
  %9 = and i8 %1, 31, !dbg !2486
  %10 = zext i8 %9 to i32, !dbg !2487
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2476, metadata !651), !dbg !2488
  %11 = load i32, i32* %8, align 4, !dbg !2489, !tbaa !729
  %12 = lshr i32 %11, %10, !dbg !2490
  %13 = and i32 %12, 1, !dbg !2491
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2477, metadata !651), !dbg !2492
  %14 = and i32 %2, 1, !dbg !2493
  %15 = xor i32 %13, %14, !dbg !2494
  %16 = shl i32 %15, %10, !dbg !2495
  %17 = xor i32 %16, %11, !dbg !2496
  store i32 %17, i32* %8, align 4, !dbg !2496, !tbaa !729
  ret i32 %13, !dbg !2497
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2498 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2502, metadata !651), !dbg !2505
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2503, metadata !651), !dbg !2506
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2507
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2502, metadata !651), !dbg !2505
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2509
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2502, metadata !651), !dbg !2505
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2510
  %6 = load i32, i32* %5, align 4, !dbg !2510, !tbaa !2511
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2504, metadata !651), !dbg !2512
  store i32 %1, i32* %5, align 4, !dbg !2513, !tbaa !2511
  ret i32 %6, !dbg !2514
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2515 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2519, metadata !651), !dbg !2522
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2520, metadata !651), !dbg !2523
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2521, metadata !651), !dbg !2524
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2525
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2519, metadata !651), !dbg !2522
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2527
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2519, metadata !651), !dbg !2522
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2528
  store i32 10, i32* %6, align 8, !dbg !2529, !tbaa !2451
  %7 = icmp ne i8* %1, null, !dbg !2530
  %8 = icmp ne i8* %2, null, !dbg !2532
  %9 = and i1 %7, %8, !dbg !2533
  br i1 %9, label %11, label %10, !dbg !2533

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2534
  unreachable, !dbg !2534

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2535
  store i8* %1, i8** %12, align 8, !dbg !2536, !tbaa !2537
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2538
  store i8* %2, i8** %13, align 8, !dbg !2539, !tbaa !2540
  ret void, !dbg !2541
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2542 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2546, metadata !651), !dbg !2554
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2547, metadata !651), !dbg !2555
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2548, metadata !651), !dbg !2556
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2549, metadata !651), !dbg !2557
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2550, metadata !651), !dbg !2558
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2559
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2559
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2551, metadata !651), !dbg !2560
  %8 = tail call i32* @__errno_location() #17, !dbg !2561
  %9 = load i32, i32* %8, align 4, !dbg !2561, !tbaa !729
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2552, metadata !651), !dbg !2562
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2563
  %11 = load i32, i32* %10, align 8, !dbg !2563, !tbaa !2451
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2564
  %13 = load i32, i32* %12, align 4, !dbg !2564, !tbaa !2511
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2565
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2566
  %16 = load i8*, i8** %15, align 8, !dbg !2566, !tbaa !2537
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2567
  %18 = load i8*, i8** %17, align 8, !dbg !2567, !tbaa !2540
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2568
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2553, metadata !651), !dbg !2569
  store i32 %9, i32* %8, align 4, !dbg !2570, !tbaa !729
  ret i64 %19, !dbg !2571
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2572 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2578, metadata !651), !dbg !2642
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2579, metadata !651), !dbg !2643
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2580, metadata !651), !dbg !2644
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2581, metadata !651), !dbg !2645
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2582, metadata !651), !dbg !2646
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2583, metadata !651), !dbg !2647
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2584, metadata !651), !dbg !2648
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2585, metadata !651), !dbg !2649
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2586, metadata !651), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2588, metadata !651), !dbg !2651
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2589, metadata !651), !dbg !2652
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2590, metadata !651), !dbg !2653
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2591, metadata !651), !dbg !2654
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2592, metadata !651), !dbg !2655
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2656
  %14 = icmp eq i64 %13, 1, !dbg !2657
  %15 = lshr i32 %5, 1, !dbg !2658
  %16 = trunc i32 %15 to i8, !dbg !2658
  %17 = and i8 %16, 1, !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2594, metadata !651), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2595, metadata !651), !dbg !2659
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2596, metadata !651), !dbg !2660
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2597, metadata !651), !dbg !2661
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2662

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2579, metadata !651), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2597, metadata !651), !dbg !2661
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2596, metadata !651), !dbg !2660
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2595, metadata !651), !dbg !2659
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2594, metadata !651), !dbg !2658
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2581, metadata !651), !dbg !2645
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2592, metadata !651), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2591, metadata !651), !dbg !2654
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2590, metadata !651), !dbg !2653
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2589, metadata !651), !dbg !2652
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2586, metadata !651), !dbg !2650
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2585, metadata !651), !dbg !2649
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2582, metadata !651), !dbg !2646
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
  ], !dbg !2663

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2582, metadata !651), !dbg !2646
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2594, metadata !651), !dbg !2658
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2594, metadata !651), !dbg !2658
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2582, metadata !651), !dbg !2646
  br label %94, !dbg !2664

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2594, metadata !651), !dbg !2658
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2582, metadata !651), !dbg !2646
  %43 = and i8 %36, 1, !dbg !2666
  %44 = icmp eq i8 %43, 0, !dbg !2666
  br i1 %44, label %45, label %94, !dbg !2664

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2668
  br i1 %46, label %94, label %47, !dbg !2671

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2668, !tbaa !680
  br label %94, !dbg !2668

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.77, i64 0, i64 0), i32 %28), !dbg !2672
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2585, metadata !651), !dbg !2649
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), i32 %28), !dbg !2676
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2586, metadata !651), !dbg !2650
  br label %51, !dbg !2677

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2586, metadata !651), !dbg !2650
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2585, metadata !651), !dbg !2649
  %54 = and i8 %36, 1, !dbg !2678
  %55 = icmp eq i8 %54, 0, !dbg !2678
  br i1 %55, label %56, label %72, !dbg !2680

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2590, metadata !651), !dbg !2653
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2590, metadata !651), !dbg !2653
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2588, metadata !651), !dbg !2651
  %57 = load i8, i8* %52, align 1, !dbg !2681, !tbaa !680
  %58 = icmp eq i8 %57, 0, !dbg !2684
  br i1 %58, label %72, label %59, !dbg !2684

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2685

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !2590, metadata !651), !dbg !2653
  %64 = icmp ult i64 %63, %40, !dbg !2685
  br i1 %64, label %65, label %67, !dbg !2688

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2685
  store i8 %61, i8* %66, align 1, !dbg !2685, !tbaa !680
  br label %67, !dbg !2685

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2588, metadata !651), !dbg !2651
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2689
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2590, metadata !651), !dbg !2653
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2590, metadata !651), !dbg !2653
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2588, metadata !651), !dbg !2651
  %70 = load i8, i8* %69, align 1, !dbg !2681, !tbaa !680
  %71 = icmp eq i8 %70, 0, !dbg !2684
  br i1 %71, label %72, label %60, !dbg !2684, !llvm.loop !2690

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2592, metadata !651), !dbg !2655
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2590, metadata !651), !dbg !2653
  %74 = call i64 @strlen(i8* %53) #14, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2591, metadata !651), !dbg !2654
  br label %94, !dbg !2693

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2592, metadata !651), !dbg !2655
  br label %76, !dbg !2694

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !2592, metadata !651), !dbg !2655
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2594, metadata !651), !dbg !2658
  br label %78, !dbg !2695

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2594, metadata !651), !dbg !2658
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !2592, metadata !651), !dbg !2655
  %81 = and i8 %80, 1, !dbg !2696
  %82 = icmp eq i8 %81, 0, !dbg !2696
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2592, metadata !651), !dbg !2655
  %83 = select i1 %82, i8 1, i8 %79, !dbg !2698
  br label %84, !dbg !2698

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2594, metadata !651), !dbg !2658
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !2592, metadata !651), !dbg !2655
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2582, metadata !651), !dbg !2646
  %87 = and i8 %86, 1, !dbg !2699
  %88 = icmp eq i8 %87, 0, !dbg !2699
  br i1 %88, label %89, label %94, !dbg !2701

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !2702
  br i1 %90, label %94, label %91, !dbg !2705

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !2702, !tbaa !680
  br label %94, !dbg !2702

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2594, metadata !651), !dbg !2658
  br label %94, !dbg !2706

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !2707
  unreachable, !dbg !2707

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2594, metadata !651), !dbg !2658
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !2592, metadata !651), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !2591, metadata !651), !dbg !2654
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2590, metadata !651), !dbg !2653
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2586, metadata !651), !dbg !2650
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !2585, metadata !651), !dbg !2649
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !2582, metadata !651), !dbg !2646
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2587, metadata !651), !dbg !2708
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
  br label %122, !dbg !2709

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2579, metadata !651), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2597, metadata !651), !dbg !2661
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2596, metadata !651), !dbg !2660
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !2595, metadata !651), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2581, metadata !651), !dbg !2645
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2589, metadata !651), !dbg !2652
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !2587, metadata !651), !dbg !2708
  %131 = icmp eq i64 %126, -1, !dbg !2710
  br i1 %131, label %134, label %132, !dbg !2711

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !2712
  br i1 %133, label %590, label %138, !dbg !2713

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2714
  %136 = load i8, i8* %135, align 1, !dbg !2714, !tbaa !680
  %137 = icmp eq i8 %136, 0, !dbg !2715
  br i1 %137, label %590, label %138, !dbg !2713

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2603, metadata !651), !dbg !2716
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2604, metadata !651), !dbg !2717
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2605, metadata !651), !dbg !2718
  br i1 %108, label %139, label %154, !dbg !2719

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !2721
  %141 = and i1 %109, %131, !dbg !2722
  br i1 %141, label %142, label %144, !dbg !2722

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !2723
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !2581, metadata !651), !dbg !2645
  br label %144, !dbg !2724

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !2581, metadata !651), !dbg !2645
  %146 = icmp ugt i64 %140, %145, !dbg !2725
  br i1 %146, label %154, label %147, !dbg !2726

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2727
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !2728
  %150 = icmp ne i32 %149, 0, !dbg !2729
  %151 = or i1 %150, %111, !dbg !2730
  %152 = xor i1 %150, true, !dbg !2730
  %153 = zext i1 %152 to i8, !dbg !2730
  br i1 %151, label %154, label %635, !dbg !2730

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2603, metadata !651), !dbg !2716
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !2581, metadata !651), !dbg !2645
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2731
  %158 = load i8, i8* %157, align 1, !dbg !2731, !tbaa !680
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2598, metadata !651), !dbg !2732
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
  ], !dbg !2733

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !2734

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !2735

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2604, metadata !651), !dbg !2717
  %162 = and i8 %127, 1, !dbg !2739
  %163 = icmp eq i8 %162, 0, !dbg !2739
  %164 = and i1 %113, %163, !dbg !2739
  br i1 %164, label %165, label %181, !dbg !2739

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2741
  br i1 %166, label %167, label %169, !dbg !2745

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2741
  store i8 39, i8* %168, align 1, !dbg !2741, !tbaa !680
  br label %169, !dbg !2741

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2745
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !2588, metadata !651), !dbg !2651
  %171 = icmp ult i64 %170, %130, !dbg !2746
  br i1 %171, label %172, label %174, !dbg !2749

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2746
  store i8 36, i8* %173, align 1, !dbg !2746, !tbaa !680
  br label %174, !dbg !2746

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2749
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !2588, metadata !651), !dbg !2651
  %176 = icmp ult i64 %175, %130, !dbg !2750
  br i1 %176, label %177, label %179, !dbg !2753

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2750
  store i8 39, i8* %178, align 1, !dbg !2750, !tbaa !680
  br label %179, !dbg !2750

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2753
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2595, metadata !651), !dbg !2659
  br label %181, !dbg !2754

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !2595, metadata !651), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !2588, metadata !651), !dbg !2651
  %184 = icmp ult i64 %182, %130, !dbg !2755
  br i1 %184, label %185, label %187, !dbg !2758

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2755
  store i8 92, i8* %186, align 1, !dbg !2755, !tbaa !680
  br label %187, !dbg !2755

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !2588, metadata !651), !dbg !2651
  br i1 %105, label %189, label %470, !dbg !2759

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2761
  %191 = icmp ult i64 %190, %155, !dbg !2762
  br i1 %191, label %192, label %470, !dbg !2763

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2764
  %194 = load i8, i8* %193, align 1, !dbg !2764, !tbaa !680
  %195 = add i8 %194, -48, !dbg !2765
  %196 = icmp ult i8 %195, 10, !dbg !2765
  br i1 %196, label %197, label %470, !dbg !2765

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2766
  br i1 %198, label %199, label %201, !dbg !2770

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2766
  store i8 48, i8* %200, align 1, !dbg !2766, !tbaa !680
  br label %201, !dbg !2766

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !2588, metadata !651), !dbg !2651
  %203 = icmp ult i64 %202, %130, !dbg !2771
  br i1 %203, label %204, label %206, !dbg !2774

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2771
  store i8 48, i8* %205, align 1, !dbg !2771, !tbaa !680
  br label %206, !dbg !2771

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !2588, metadata !651), !dbg !2651
  br label %470, !dbg !2775

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2776

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2777

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2778

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2780

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2782
  %214 = icmp ult i64 %213, %155, !dbg !2783
  br i1 %214, label %215, label %470, !dbg !2784

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2785
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2786
  %218 = load i8, i8* %217, align 1, !dbg !2786, !tbaa !680
  %219 = icmp eq i8 %218, 63, !dbg !2787
  br i1 %219, label %220, label %470, !dbg !2788

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2789
  %222 = load i8, i8* %221, align 1, !dbg !2789, !tbaa !680
  %223 = sext i8 %222 to i32, !dbg !2789
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
  ], !dbg !2790

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2791

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !2598, metadata !651), !dbg !2732
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !2587, metadata !651), !dbg !2708
  %226 = icmp ult i64 %124, %130, !dbg !2793
  br i1 %226, label %227, label %229, !dbg !2796

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2793
  store i8 63, i8* %228, align 1, !dbg !2793, !tbaa !680
  br label %229, !dbg !2793

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !2588, metadata !651), !dbg !2651
  %231 = icmp ult i64 %230, %130, !dbg !2797
  br i1 %231, label %232, label %234, !dbg !2800

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2797
  store i8 34, i8* %233, align 1, !dbg !2797, !tbaa !680
  br label %234, !dbg !2797

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2800
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !2588, metadata !651), !dbg !2651
  %236 = icmp ult i64 %235, %130, !dbg !2801
  br i1 %236, label %237, label %239, !dbg !2804

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2801
  store i8 34, i8* %238, align 1, !dbg !2801, !tbaa !680
  br label %239, !dbg !2801

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2804
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !2588, metadata !651), !dbg !2651
  %241 = icmp ult i64 %240, %130, !dbg !2805
  br i1 %241, label %242, label %244, !dbg !2808

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2805
  store i8 63, i8* %243, align 1, !dbg !2805, !tbaa !680
  br label %244, !dbg !2805

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2808
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !2588, metadata !651), !dbg !2651
  br label %470, !dbg !2809

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2602, metadata !651), !dbg !2810
  br label %256, !dbg !2811

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2602, metadata !651), !dbg !2810
  br label %256, !dbg !2812

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2602, metadata !651), !dbg !2810
  br label %254, !dbg !2813

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2602, metadata !651), !dbg !2810
  br label %254, !dbg !2814

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2602, metadata !651), !dbg !2810
  br label %256, !dbg !2815

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2602, metadata !651), !dbg !2810
  br i1 %113, label %252, label %253, !dbg !2816

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2817

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2820

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !2602, metadata !651), !dbg !2810
  br i1 %117, label %256, label %635, !dbg !2822

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !2602, metadata !651), !dbg !2810
  br i1 %104, label %497, label %470, !dbg !2824

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2825
  br i1 %259, label %260, label %265, !dbg !2827

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2828, !tbaa !680
  %262 = icmp ne i8 %261, 0, !dbg !2829
  %263 = icmp ne i64 %123, 0, !dbg !2830
  %264 = or i1 %263, %262, !dbg !2832
  br i1 %264, label %470, label %271, !dbg !2832

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2833
  %267 = icmp ne i64 %123, 0, !dbg !2830
  %268 = or i1 %267, %266, !dbg !2827
  br i1 %268, label %470, label %271, !dbg !2827

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2830
  br i1 %270, label %271, label %470, !dbg !2834

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2605, metadata !651), !dbg !2718
  br label %272, !dbg !2835

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !2605, metadata !651), !dbg !2718
  br i1 %117, label %470, label %635, !dbg !2836

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2596, metadata !651), !dbg !2660
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2605, metadata !651), !dbg !2718
  br i1 %113, label %275, label %470, !dbg !2838

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2839

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2842
  %278 = icmp ne i64 %125, 0, !dbg !2844
  %279 = or i1 %278, %277, !dbg !2845
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2589, metadata !651), !dbg !2652
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2579, metadata !651), !dbg !2643
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2845
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2845
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2579, metadata !651), !dbg !2643
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !2589, metadata !651), !dbg !2652
  %282 = icmp ult i64 %124, %281, !dbg !2846
  br i1 %282, label %283, label %285, !dbg !2849

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2846
  store i8 39, i8* %284, align 1, !dbg !2846, !tbaa !680
  br label %285, !dbg !2846

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !2588, metadata !651), !dbg !2651
  %287 = icmp ult i64 %286, %281, !dbg !2850
  br i1 %287, label %288, label %290, !dbg !2853

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2850
  store i8 92, i8* %289, align 1, !dbg !2850, !tbaa !680
  br label %290, !dbg !2850

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !2588, metadata !651), !dbg !2651
  %292 = icmp ult i64 %291, %281, !dbg !2854
  br i1 %292, label %293, label %295, !dbg !2857

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2854
  store i8 39, i8* %294, align 1, !dbg !2854, !tbaa !680
  br label %295, !dbg !2854

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2857
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2595, metadata !651), !dbg !2659
  br label %470, !dbg !2858

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2859

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2606, metadata !651), !dbg !2860
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2861
  %300 = load i16*, i16** %299, align 8, !dbg !2861, !tbaa !658
  %301 = zext i8 %158 to i64, !dbg !2861
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2861
  %303 = load i16, i16* %302, align 2, !dbg !2861, !tbaa !2863
  %304 = lshr i16 %303, 14, !dbg !2864
  %305 = trunc i16 %304 to i8, !dbg !2864
  %306 = and i8 %305, 1, !dbg !2864
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !2609, metadata !651), !dbg !2865
  br label %362, !dbg !2866

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2867
  store i64 0, i64* %10, align 8, !dbg !2868
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2606, metadata !651), !dbg !2860
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2609, metadata !651), !dbg !2865
  %308 = icmp eq i64 %155, -1, !dbg !2869
  br i1 %308, label %309, label %311, !dbg !2871

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !2581, metadata !651), !dbg !2645
  br label %311, !dbg !2873

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !2581, metadata !651), !dbg !2645
  br label %313, !dbg !2874, !llvm.loop !2875

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !2609, metadata !651), !dbg !2865
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2606, metadata !651), !dbg !2860
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2877
  %316 = add i64 %314, %123, !dbg !2878
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2879
  %318 = sub i64 %312, %316, !dbg !2880
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2610, metadata !651), !dbg !2881
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2628, metadata !651), !dbg !2882
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #11, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !2631, metadata !651), !dbg !2884
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2885

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2609, metadata !651), !dbg !2865
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2606, metadata !651), !dbg !2860
  %321 = icmp ugt i64 %312, %316, !dbg !2886
  br i1 %321, label %322, label %347, !dbg !2888

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2889

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !2606, metadata !651), !dbg !2860
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2889
  %327 = load i8, i8* %326, align 1, !dbg !2889, !tbaa !680
  %328 = icmp eq i8 %327, 0, !dbg !2888
  br i1 %328, label %347, label %329, !dbg !2890

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2606, metadata !651), !dbg !2860
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2606, metadata !651), !dbg !2860
  %331 = add i64 %330, %123, !dbg !2892
  %332 = icmp ult i64 %331, %312, !dbg !2886
  br i1 %332, label %323, label %347, !dbg !2888, !llvm.loop !2893

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2894
  %335 = and i1 %115, %334, !dbg !2897
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2632, metadata !651), !dbg !2898
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2632, metadata !651), !dbg !2898
  br i1 %335, label %336, label %350, !dbg !2897

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2899

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !2632, metadata !651), !dbg !2898
  %339 = add i64 %338, %316, !dbg !2899
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2900
  %341 = load i8, i8* %340, align 1, !dbg !2900, !tbaa !680
  %342 = sext i8 %341 to i32, !dbg !2900
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2901

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2902
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2632, metadata !651), !dbg !2898
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2632, metadata !651), !dbg !2898
  %345 = icmp ult i64 %344, %319, !dbg !2894
  br i1 %345, label %337, label %350, !dbg !2903, !llvm.loop !2904

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2906

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2609, metadata !651), !dbg !2865
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2606, metadata !651), !dbg !2860
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2906
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2907, !tbaa !729
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !2628, metadata !651), !dbg !2882
  %352 = call i32 @iswprint(i32 %351) #11, !dbg !2909
  %353 = icmp eq i32 %352, 0, !dbg !2909
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2609, metadata !651), !dbg !2865
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2910
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2609, metadata !651), !dbg !2865
  %355 = add i64 %319, %314, !dbg !2911
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2606, metadata !651), !dbg !2860
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2609, metadata !651), !dbg !2865
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2606, metadata !651), !dbg !2860
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2906
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2610, metadata !651), !dbg !2881
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2912
  %357 = icmp eq i32 %356, 0, !dbg !2913
  br i1 %357, label %313, label %358, !dbg !2914, !llvm.loop !2875

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2915
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2609, metadata !651), !dbg !2865
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2606, metadata !651), !dbg !2860
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2906
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2915
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !2609, metadata !651), !dbg !2865
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !2606, metadata !651), !dbg !2860
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !2581, metadata !651), !dbg !2645
  %366 = and i8 %365, 1, !dbg !2916
  %367 = icmp ne i8 %366, 0, !dbg !2916
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !2605, metadata !651), !dbg !2718
  %368 = icmp ult i64 %364, 2, !dbg !2917
  %369 = or i1 %367, %112, !dbg !2918
  %370 = and i1 %368, %369, !dbg !2919
  br i1 %370, label %470, label %371, !dbg !2919

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2920
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !2639, metadata !651), !dbg !2921
  br label %373, !dbg !2922

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !2604, metadata !651), !dbg !2717
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !2603, metadata !651), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !2598, metadata !651), !dbg !2732
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !2595, metadata !651), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !2587, metadata !651), !dbg !2708
  br i1 %369, label %426, label %380, !dbg !2923

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2928

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2604, metadata !651), !dbg !2717
  %382 = and i8 %376, 1, !dbg !2931
  %383 = icmp eq i8 %382, 0, !dbg !2931
  %384 = and i1 %113, %383, !dbg !2931
  br i1 %384, label %385, label %401, !dbg !2931

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2933
  br i1 %386, label %387, label %389, !dbg !2937

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2933
  store i8 39, i8* %388, align 1, !dbg !2933, !tbaa !680
  br label %389, !dbg !2933

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2937
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !2588, metadata !651), !dbg !2651
  %391 = icmp ult i64 %390, %130, !dbg !2938
  br i1 %391, label %392, label %394, !dbg !2941

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2938
  store i8 36, i8* %393, align 1, !dbg !2938, !tbaa !680
  br label %394, !dbg !2938

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2941
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !2588, metadata !651), !dbg !2651
  %396 = icmp ult i64 %395, %130, !dbg !2942
  br i1 %396, label %397, label %399, !dbg !2945

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2942
  store i8 39, i8* %398, align 1, !dbg !2942, !tbaa !680
  br label %399, !dbg !2942

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2945
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2595, metadata !651), !dbg !2659
  br label %401, !dbg !2946

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !2595, metadata !651), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !2588, metadata !651), !dbg !2651
  %404 = icmp ult i64 %402, %130, !dbg !2947
  br i1 %404, label %405, label %407, !dbg !2950

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2947
  store i8 92, i8* %406, align 1, !dbg !2947, !tbaa !680
  br label %407, !dbg !2947

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2588, metadata !651), !dbg !2651
  %409 = icmp ult i64 %408, %130, !dbg !2951
  br i1 %409, label %410, label %414, !dbg !2954

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2951
  %412 = or i8 %411, 48, !dbg !2951
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2951
  store i8 %412, i8* %413, align 1, !dbg !2951, !tbaa !680
  br label %414, !dbg !2951

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !2588, metadata !651), !dbg !2651
  %416 = icmp ult i64 %415, %130, !dbg !2955
  br i1 %416, label %417, label %422, !dbg !2958

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2955
  %419 = and i8 %418, 7, !dbg !2955
  %420 = or i8 %419, 48, !dbg !2955
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2955
  store i8 %420, i8* %421, align 1, !dbg !2955, !tbaa !680
  br label %422, !dbg !2955

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !2588, metadata !651), !dbg !2651
  %424 = and i8 %377, 7, !dbg !2959
  %425 = or i8 %424, 48, !dbg !2960
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !2598, metadata !651), !dbg !2732
  br label %435, !dbg !2961

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2962
  %428 = icmp eq i8 %427, 0, !dbg !2962
  br i1 %428, label %435, label %429, !dbg !2964

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2965
  br i1 %430, label %431, label %433, !dbg !2969

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2965
  store i8 92, i8* %432, align 1, !dbg !2965, !tbaa !680
  br label %433, !dbg !2965

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2969
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2603, metadata !651), !dbg !2716
  br label %435, !dbg !2970

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !2604, metadata !651), !dbg !2717
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !2603, metadata !651), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !2598, metadata !651), !dbg !2732
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !2595, metadata !651), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !2588, metadata !651), !dbg !2651
  %441 = add i64 %374, 1, !dbg !2971
  %442 = icmp ugt i64 %372, %441, !dbg !2973
  br i1 %442, label %443, label %535, !dbg !2974

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2975
  %445 = icmp ne i8 %444, 0, !dbg !2975
  %446 = and i8 %440, 1, !dbg !2975
  %447 = icmp eq i8 %446, 0, !dbg !2975
  %448 = and i1 %445, %447, !dbg !2975
  br i1 %448, label %449, label %460, !dbg !2975

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2978
  br i1 %450, label %451, label %453, !dbg !2982

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2978
  store i8 39, i8* %452, align 1, !dbg !2978, !tbaa !680
  br label %453, !dbg !2978

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2982
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !2588, metadata !651), !dbg !2651
  %455 = icmp ult i64 %454, %130, !dbg !2983
  br i1 %455, label %456, label %458, !dbg !2986

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2983
  store i8 39, i8* %457, align 1, !dbg !2983, !tbaa !680
  br label %458, !dbg !2983

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2986
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2595, metadata !651), !dbg !2659
  br label %460, !dbg !2987

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !2595, metadata !651), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !2588, metadata !651), !dbg !2651
  %463 = icmp ult i64 %461, %130, !dbg !2988
  br i1 %463, label %464, label %466, !dbg !2991

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2988
  store i8 %438, i8* %465, align 1, !dbg !2988, !tbaa !680
  br label %466, !dbg !2988

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !2587, metadata !651), !dbg !2708
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2992
  %469 = load i8, i8* %468, align 1, !dbg !2992, !tbaa !680
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !2598, metadata !651), !dbg !2732
  br label %373, !dbg !2993, !llvm.loop !2994

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2579, metadata !651), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !2605, metadata !651), !dbg !2718
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !2604, metadata !651), !dbg !2717
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2603, metadata !651), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !2598, metadata !651), !dbg !2732
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !2596, metadata !651), !dbg !2660
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2595, metadata !651), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !2581, metadata !651), !dbg !2645
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2589, metadata !651), !dbg !2652
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !2587, metadata !651), !dbg !2708
  br i1 %106, label %482, label %481, !dbg !2997

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2999

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !3000

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !3001
  %485 = zext i8 %484 to i64, !dbg !3001
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !3002
  %487 = load i32, i32* %486, align 4, !dbg !3002, !tbaa !729
  %488 = and i8 %477, 31, !dbg !3003
  %489 = zext i8 %488 to i32, !dbg !3004
  %490 = shl i32 1, %489, !dbg !3005
  %491 = and i32 %487, %490, !dbg !3005
  %492 = icmp eq i32 %491, 0, !dbg !3005
  %493 = icmp eq i8 %156, 0, !dbg !3006
  %494 = and i1 %493, %492, !dbg !3007
  br i1 %494, label %535, label %497, !dbg !3007

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !3006
  br i1 %496, label %535, label %497, !dbg !3008

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2579, metadata !651), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !2605, metadata !651), !dbg !2718
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !2598, metadata !651), !dbg !2732
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !2596, metadata !651), !dbg !2660
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !2595, metadata !651), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !2581, metadata !651), !dbg !2645
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !2589, metadata !651), !dbg !2652
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !2587, metadata !651), !dbg !2708
  br i1 %111, label %507, label %635, !dbg !3009

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2604, metadata !651), !dbg !2717
  %508 = and i8 %502, 1, !dbg !3011
  %509 = icmp eq i8 %508, 0, !dbg !3011
  %510 = and i1 %113, %509, !dbg !3011
  br i1 %510, label %511, label %527, !dbg !3011

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !3013
  br i1 %512, label %513, label %515, !dbg !3017

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !3013
  store i8 39, i8* %514, align 1, !dbg !3013, !tbaa !680
  br label %515, !dbg !3013

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !2588, metadata !651), !dbg !2651
  %517 = icmp ult i64 %516, %506, !dbg !3018
  br i1 %517, label %518, label %520, !dbg !3021

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !3018
  store i8 36, i8* %519, align 1, !dbg !3018, !tbaa !680
  br label %520, !dbg !3018

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !3021
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !2588, metadata !651), !dbg !2651
  %522 = icmp ult i64 %521, %506, !dbg !3022
  br i1 %522, label %523, label %525, !dbg !3025

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !3022
  store i8 39, i8* %524, align 1, !dbg !3022, !tbaa !680
  br label %525, !dbg !3022

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !3025
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2595, metadata !651), !dbg !2659
  br label %527, !dbg !3026

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !2595, metadata !651), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !2588, metadata !651), !dbg !2651
  %530 = icmp ult i64 %528, %506, !dbg !3027
  br i1 %530, label %531, label %533, !dbg !3030

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !3027
  store i8 92, i8* %532, align 1, !dbg !3027, !tbaa !680
  br label %533, !dbg !3027

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !3030
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2579, metadata !651), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2605, metadata !651), !dbg !2718
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2604, metadata !651), !dbg !2717
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2598, metadata !651), !dbg !2732
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2596, metadata !651), !dbg !2660
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2595, metadata !651), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2581, metadata !651), !dbg !2645
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2589, metadata !651), !dbg !2652
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2587, metadata !651), !dbg !2708
  br label %562, !dbg !3031

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2579, metadata !651), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2605, metadata !651), !dbg !2718
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2604, metadata !651), !dbg !2717
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2598, metadata !651), !dbg !2732
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2596, metadata !651), !dbg !2660
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2595, metadata !651), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2581, metadata !651), !dbg !2645
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2589, metadata !651), !dbg !2652
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2587, metadata !651), !dbg !2708
  %546 = and i8 %540, 1, !dbg !3031
  %547 = icmp ne i8 %546, 0, !dbg !3031
  %548 = and i8 %543, 1, !dbg !3031
  %549 = icmp eq i8 %548, 0, !dbg !3031
  %550 = and i1 %547, %549, !dbg !3031
  br i1 %550, label %551, label %562, !dbg !3031

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !3034
  br i1 %552, label %553, label %555, !dbg !3038

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !3034
  store i8 39, i8* %554, align 1, !dbg !3034, !tbaa !680
  br label %555, !dbg !3034

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !2588, metadata !651), !dbg !2651
  %557 = icmp ult i64 %556, %545, !dbg !3039
  br i1 %557, label %558, label %560, !dbg !3042

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !3039
  store i8 39, i8* %559, align 1, !dbg !3039, !tbaa !680
  br label %560, !dbg !3039

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !3042
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2595, metadata !651), !dbg !2659
  br label %562, !dbg !3043

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !2595, metadata !651), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !2588, metadata !651), !dbg !2651
  %572 = icmp ult i64 %570, %563, !dbg !3044
  br i1 %572, label %573, label %575, !dbg !3047

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !3044
  store i8 %565, i8* %574, align 1, !dbg !3044, !tbaa !680
  br label %575, !dbg !3044

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !2588, metadata !651), !dbg !2651
  %577 = and i8 %564, 1, !dbg !3048
  %578 = icmp eq i8 %577, 0, !dbg !3048
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2597, metadata !651), !dbg !2661
  %579 = select i1 %578, i8 0, i8 %129, !dbg !3050
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !2597, metadata !651), !dbg !2661
  br label %580, !dbg !3051

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !2579, metadata !651), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !2597, metadata !651), !dbg !2661
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2596, metadata !651), !dbg !2660
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !2595, metadata !651), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !2581, metadata !651), !dbg !2645
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2589, metadata !651), !dbg !2652
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !2587, metadata !651), !dbg !2708
  %589 = add i64 %581, 1, !dbg !3052
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !2587, metadata !651), !dbg !2708
  br label %122, !dbg !3053, !llvm.loop !3054

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !3056
  %593 = and i1 %113, %592, !dbg !3058
  %594 = xor i1 %593, true, !dbg !3058
  %595 = or i1 %111, %594, !dbg !3058
  br i1 %595, label %596, label %635, !dbg !3058

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !3059
  %598 = xor i1 %597, true, !dbg !3059
  %599 = and i8 %128, 1, !dbg !3061
  %600 = icmp eq i8 %599, 0, !dbg !3061
  %601 = or i1 %600, %598, !dbg !3059
  br i1 %601, label %611, label %602, !dbg !3059

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !3062
  %604 = icmp eq i8 %603, 0, !dbg !3062
  br i1 %604, label %607, label %605, !dbg !3065

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !3066
  br label %645, !dbg !3067

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !3068
  %609 = icmp ne i64 %125, 0, !dbg !3070
  %610 = and i1 %609, %608, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2579, metadata !651), !dbg !2643
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2588, metadata !651), !dbg !2651
  br i1 %610, label %27, label %611, !dbg !3071

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !3072
  %613 = and i1 %612, %111, !dbg !3074
  br i1 %613, label %614, label %630, !dbg !3074

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2590, metadata !651), !dbg !2653
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2588, metadata !651), !dbg !2651
  %615 = load i8, i8* %99, align 1, !dbg !3075, !tbaa !680
  %616 = icmp eq i8 %615, 0, !dbg !3078
  br i1 %616, label %630, label %617, !dbg !3078

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !3079

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !2588, metadata !651), !dbg !2651
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !2590, metadata !651), !dbg !2653
  %622 = icmp ult i64 %621, %130, !dbg !3079
  br i1 %622, label %623, label %625, !dbg !3082

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !3079
  store i8 %619, i8* %624, align 1, !dbg !3079, !tbaa !680
  br label %625, !dbg !3079

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2588, metadata !651), !dbg !2651
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2590, metadata !651), !dbg !2653
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2590, metadata !651), !dbg !2653
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2588, metadata !651), !dbg !2651
  %628 = load i8, i8* %627, align 1, !dbg !3075, !tbaa !680
  %629 = icmp eq i8 %628, 0, !dbg !3078
  br i1 %629, label %630, label %618, !dbg !3078, !llvm.loop !3084

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !2588, metadata !651), !dbg !2651
  %632 = icmp ult i64 %631, %130, !dbg !3086
  br i1 %632, label %633, label %645, !dbg !3088

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !3089
  store i8 0, i8* %634, align 1, !dbg !3090, !tbaa !680
  br label %645, !dbg !3089

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !2579, metadata !651), !dbg !2643
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !2581, metadata !651), !dbg !2645
  %639 = icmp ne i32 %636, 2, !dbg !3091
  %640 = icmp eq i8 %103, 0, !dbg !3093
  %641 = or i1 %639, %640, !dbg !3094
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2582, metadata !651), !dbg !2646
  %642 = select i1 %641, i32 %636, i32 4, !dbg !3094
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !2582, metadata !651), !dbg !2646
  %643 = and i32 %5, -3, !dbg !3095
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !3096
  br label %645, !dbg !3097

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !3098
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !3099 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3103, metadata !651), !dbg !3107
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3104, metadata !651), !dbg !3108
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !3109
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3105, metadata !651), !dbg !3110
  %4 = icmp eq i8* %3, %0, !dbg !3111
  br i1 %4, label %5, label %75, !dbg !3113

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !3114
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3106, metadata !651), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3116, metadata !651), !dbg !3132
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3130, metadata !651), !dbg !3135
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3131, metadata !651), !dbg !3136
  %7 = load i8, i8* %6, align 1, !dbg !3137, !tbaa !680
  %8 = sext i8 %7 to i32, !dbg !3137
  %9 = and i32 %8, -33, !dbg !3137
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !3137

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3139, metadata !651), !dbg !3153
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3151, metadata !651), !dbg !3157
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3152, metadata !651), !dbg !3158
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3159
  %12 = load i8, i8* %11, align 1, !dbg !3159, !tbaa !680
  %13 = sext i8 %12 to i32, !dbg !3159
  %14 = and i32 %13, -33, !dbg !3159
  %15 = icmp eq i32 %14, 84, !dbg !3159
  br i1 %15, label %16, label %72, !dbg !3159

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3161, metadata !651), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3172, metadata !651), !dbg !3178
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3173, metadata !651), !dbg !3179
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3180
  %18 = load i8, i8* %17, align 1, !dbg !3180, !tbaa !680
  %19 = sext i8 %18 to i32, !dbg !3180
  %20 = and i32 %19, -33, !dbg !3180
  %21 = icmp eq i32 %20, 70, !dbg !3180
  br i1 %21, label %22, label %72, !dbg !3180

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3182, metadata !651), !dbg !3194
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3192, metadata !651), !dbg !3198
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3193, metadata !651), !dbg !3199
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3200
  %24 = load i8, i8* %23, align 1, !dbg !3200, !tbaa !680
  %25 = icmp eq i8 %24, 45, !dbg !3200
  br i1 %25, label %26, label %72, !dbg !3202

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3203, metadata !651), !dbg !3214
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3212, metadata !651), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3213, metadata !651), !dbg !3219
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3220
  %28 = load i8, i8* %27, align 1, !dbg !3220, !tbaa !680
  %29 = icmp eq i8 %28, 56, !dbg !3220
  br i1 %29, label %30, label %72, !dbg !3222

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3223, metadata !651), !dbg !3233
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3231, metadata !651), !dbg !3237
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3232, metadata !651), !dbg !3238
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3239
  %32 = load i8, i8* %31, align 1, !dbg !3239, !tbaa !680
  %33 = icmp eq i8 %32, 0, !dbg !3239
  br i1 %33, label %34, label %72, !dbg !3241

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3242, !tbaa !680
  %36 = icmp eq i8 %35, 96, !dbg !3243
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.80, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.81, i64 0, i64 0), !dbg !3242
  br label %75, !dbg !3244

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3139, metadata !651), !dbg !3245
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3151, metadata !651), !dbg !3249
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3152, metadata !651), !dbg !3250
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3251
  %40 = load i8, i8* %39, align 1, !dbg !3251, !tbaa !680
  %41 = sext i8 %40 to i32, !dbg !3251
  %42 = and i32 %41, -33, !dbg !3251
  %43 = icmp eq i32 %42, 66, !dbg !3251
  br i1 %43, label %44, label %72, !dbg !3251

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3161, metadata !651), !dbg !3252
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3172, metadata !651), !dbg !3254
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3173, metadata !651), !dbg !3255
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3256
  %46 = load i8, i8* %45, align 1, !dbg !3256, !tbaa !680
  %47 = icmp eq i8 %46, 49, !dbg !3256
  br i1 %47, label %48, label %72, !dbg !3257

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3182, metadata !651), !dbg !3258
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3192, metadata !651), !dbg !3260
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3193, metadata !651), !dbg !3261
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3262
  %50 = load i8, i8* %49, align 1, !dbg !3262, !tbaa !680
  %51 = icmp eq i8 %50, 56, !dbg !3262
  br i1 %51, label %52, label %72, !dbg !3263

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3203, metadata !651), !dbg !3264
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3212, metadata !651), !dbg !3266
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3213, metadata !651), !dbg !3267
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3268
  %54 = load i8, i8* %53, align 1, !dbg !3268, !tbaa !680
  %55 = icmp eq i8 %54, 48, !dbg !3268
  br i1 %55, label %56, label %72, !dbg !3269

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3223, metadata !651), !dbg !3270
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3231, metadata !651), !dbg !3272
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3232, metadata !651), !dbg !3273
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3274
  %58 = load i8, i8* %57, align 1, !dbg !3274, !tbaa !680
  %59 = icmp eq i8 %58, 51, !dbg !3274
  br i1 %59, label %60, label %72, !dbg !3275

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3276, metadata !651), !dbg !3285
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3283, metadata !651), !dbg !3289
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3284, metadata !651), !dbg !3290
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3291
  %62 = load i8, i8* %61, align 1, !dbg !3291, !tbaa !680
  %63 = icmp eq i8 %62, 48, !dbg !3291
  br i1 %63, label %64, label %72, !dbg !3293

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3294, metadata !651), !dbg !3302
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3300, metadata !651), !dbg !3306
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3301, metadata !651), !dbg !3307
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3308
  %66 = load i8, i8* %65, align 1, !dbg !3308, !tbaa !680
  %67 = icmp eq i8 %66, 0, !dbg !3308
  br i1 %67, label %68, label %72, !dbg !3310

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3311, !tbaa !680
  %70 = icmp eq i8 %69, 96, !dbg !3312
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.82, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.83, i64 0, i64 0), !dbg !3311
  br label %75, !dbg !3313

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3314
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), !dbg !3315
  br label %75, !dbg !3316

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3317
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3318 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3322, metadata !651), !dbg !3325
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3323, metadata !651), !dbg !3326
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3324, metadata !651), !dbg !3327
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3328, metadata !651) #11, !dbg !3341
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3333, metadata !651) #11, !dbg !3343
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3334, metadata !651) #11, !dbg !3344
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3335, metadata !651) #11, !dbg !3345
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3346
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3346
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3336, metadata !651) #11, !dbg !3347
  %6 = tail call i32* @__errno_location() #17, !dbg !3348
  %7 = load i32, i32* %6, align 4, !dbg !3348, !tbaa !729
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3337, metadata !651) #11, !dbg !3349
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3350
  %9 = load i32, i32* %8, align 4, !dbg !3350, !tbaa !2511
  %10 = or i32 %9, 1, !dbg !3351
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3338, metadata !651) #11, !dbg !3352
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3353
  %12 = load i32, i32* %11, align 8, !dbg !3353, !tbaa !2451
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3354
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3355
  %15 = load i8*, i8** %14, align 8, !dbg !3355, !tbaa !2537
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3356
  %17 = load i8*, i8** %16, align 8, !dbg !3356, !tbaa !2540
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !3357
  %19 = add i64 %18, 1, !dbg !3358
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3339, metadata !651) #11, !dbg !3359
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3360, metadata !651) #11, !dbg !3365
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !3367
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3340, metadata !651) #11, !dbg !3368
  %21 = load i32, i32* %11, align 8, !dbg !3369, !tbaa !2451
  %22 = load i8*, i8** %14, align 8, !dbg !3370, !tbaa !2537
  %23 = load i8*, i8** %16, align 8, !dbg !3371, !tbaa !2540
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !3372
  store i32 %7, i32* %6, align 4, !dbg !3373, !tbaa !729
  ret i8* %20, !dbg !3374
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3329 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3328, metadata !651), !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3333, metadata !651), !dbg !3376
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3334, metadata !651), !dbg !3377
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3335, metadata !651), !dbg !3378
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3379
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3379
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3336, metadata !651), !dbg !3380
  %7 = tail call i32* @__errno_location() #17, !dbg !3381
  %8 = load i32, i32* %7, align 4, !dbg !3381, !tbaa !729
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3337, metadata !651), !dbg !3382
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3383
  %10 = load i32, i32* %9, align 4, !dbg !3383, !tbaa !2511
  %11 = icmp ne i64* %2, null, !dbg !3384
  %12 = xor i1 %11, true, !dbg !3384
  %13 = zext i1 %12 to i32, !dbg !3384
  %14 = or i32 %10, %13, !dbg !3385
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3338, metadata !651), !dbg !3386
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3387
  %16 = load i32, i32* %15, align 8, !dbg !3387, !tbaa !2451
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3388
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3389
  %19 = load i8*, i8** %18, align 8, !dbg !3389, !tbaa !2537
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3390
  %21 = load i8*, i8** %20, align 8, !dbg !3390, !tbaa !2540
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3391
  %23 = add i64 %22, 1, !dbg !3392
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3339, metadata !651), !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3360, metadata !651) #11, !dbg !3394
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !3396
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3340, metadata !651), !dbg !3397
  %25 = load i32, i32* %15, align 8, !dbg !3398, !tbaa !2451
  %26 = load i8*, i8** %18, align 8, !dbg !3399, !tbaa !2537
  %27 = load i8*, i8** %20, align 8, !dbg !3400, !tbaa !2540
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3401
  store i32 %8, i32* %7, align 4, !dbg !3402, !tbaa !729
  br i1 %11, label %29, label %30, !dbg !3403

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3404, !tbaa !1929
  br label %30, !dbg !3406

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3407
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3408 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3412, !tbaa !658
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3410, metadata !651), !dbg !3413
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3411, metadata !651), !dbg !3414
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3411, metadata !651), !dbg !3414
  %2 = load i32, i32* @nslots, align 4, !dbg !3415, !tbaa !729
  %3 = icmp sgt i32 %2, 1, !dbg !3418
  br i1 %3, label %4, label %13, !dbg !3419

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3420

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3411, metadata !651), !dbg !3414
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3420
  %8 = load i8*, i8** %7, align 8, !dbg !3420, !tbaa !3421
  tail call void @free(i8* %8) #11, !dbg !3423
  %9 = add nuw i64 %6, 1, !dbg !3424
  %10 = load i32, i32* @nslots, align 4, !dbg !3415, !tbaa !729
  %11 = sext i32 %10 to i64, !dbg !3418
  %12 = icmp slt i64 %9, %11, !dbg !3418
  br i1 %12, label %5, label %13, !dbg !3419, !llvm.loop !3425

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3427
  %15 = load i8*, i8** %14, align 8, !dbg !3427, !tbaa !3421
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3429
  br i1 %16, label %18, label %17, !dbg !3430

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #11, !dbg !3431
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3433, !tbaa !3434
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3435, !tbaa !3421
  br label %18, !dbg !3436

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3437
  br i1 %19, label %22, label %20, !dbg !3439

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !3440
  tail call void @free(i8* %21) #11, !dbg !3442
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3443, !tbaa !658
  br label %22, !dbg !3444

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !3445, !tbaa !729
  ret void, !dbg !3446
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3447 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3451, metadata !651), !dbg !3453
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3452, metadata !651), !dbg !3454
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3455
  ret i8* %3, !dbg !3456
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3457 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3461, metadata !651), !dbg !3475
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3462, metadata !651), !dbg !3476
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3463, metadata !651), !dbg !3477
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3464, metadata !651), !dbg !3478
  %5 = tail call i32* @__errno_location() #17, !dbg !3479
  %6 = load i32, i32* %5, align 4, !dbg !3479, !tbaa !729
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3465, metadata !651), !dbg !3480
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3481, !tbaa !658
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3466, metadata !651), !dbg !3482
  %8 = icmp slt i32 %0, 0, !dbg !3483
  br i1 %8, label %9, label %10, !dbg !3485

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3486
  unreachable, !dbg !3486

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3487, !tbaa !729
  %12 = icmp sgt i32 %11, %0, !dbg !3488
  br i1 %12, label %34, label %13, !dbg !3489

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3490
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3491
  br i1 %15, label %16, label %17, !dbg !3493

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3494
  unreachable, !dbg !3494

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3495
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3495
  %20 = add nsw i32 %0, 1, !dbg !3496
  %21 = sext i32 %20 to i64, !dbg !3497
  %22 = shl nsw i64 %21, 4, !dbg !3498
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3499
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3499
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3466, metadata !651), !dbg !3482
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3500, !tbaa !658
  br i1 %14, label %25, label %26, !dbg !3501

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3502, !tbaa.struct !3504
  br label %26, !dbg !3505

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3506, !tbaa !729
  %28 = sext i32 %27 to i64, !dbg !3507
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3507
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3508
  %31 = sub nsw i32 %20, %27, !dbg !3509
  %32 = sext i32 %31 to i64, !dbg !3510
  %33 = shl nsw i64 %32, 4, !dbg !3511
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3508
  store i32 %20, i32* @nslots, align 4, !dbg !3512, !tbaa !729
  br label %34, !dbg !3513

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3466, metadata !651), !dbg !3482
  %36 = sext i32 %0 to i64, !dbg !3514
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3515
  %38 = load i64, i64* %37, align 8, !dbg !3515, !tbaa !3434
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3470, metadata !651), !dbg !3516
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3517
  %40 = load i8*, i8** %39, align 8, !dbg !3517, !tbaa !3421
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3472, metadata !651), !dbg !3518
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3519
  %42 = load i32, i32* %41, align 4, !dbg !3519, !tbaa !2511
  %43 = or i32 %42, 1, !dbg !3520
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3473, metadata !651), !dbg !3521
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3522
  %45 = load i32, i32* %44, align 8, !dbg !3522, !tbaa !2451
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3523
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3524
  %48 = load i8*, i8** %47, align 8, !dbg !3524, !tbaa !2537
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3525
  %50 = load i8*, i8** %49, align 8, !dbg !3525, !tbaa !2540
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3474, metadata !651), !dbg !3527
  %52 = icmp ugt i64 %38, %51, !dbg !3528
  br i1 %52, label %63, label %53, !dbg !3530

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3531
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3470, metadata !651), !dbg !3516
  store i64 %54, i64* %37, align 8, !dbg !3533, !tbaa !3434
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3534
  br i1 %55, label %57, label %56, !dbg !3536

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3537
  br label %57, !dbg !3537

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3360, metadata !651) #11, !dbg !3538
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3540
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3472, metadata !651), !dbg !3518
  store i8* %58, i8** %39, align 8, !dbg !3541, !tbaa !3421
  %59 = load i32, i32* %44, align 8, !dbg !3542, !tbaa !2451
  %60 = load i8*, i8** %47, align 8, !dbg !3543, !tbaa !2537
  %61 = load i8*, i8** %49, align 8, !dbg !3544, !tbaa !2540
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3545
  br label %63, !dbg !3546

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3472, metadata !651), !dbg !3518
  store i32 %6, i32* %5, align 4, !dbg !3547, !tbaa !729
  ret i8* %64, !dbg !3548
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3549 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3553, metadata !651), !dbg !3556
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3554, metadata !651), !dbg !3557
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3555, metadata !651), !dbg !3558
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3559
  ret i8* %4, !dbg !3560
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3561 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3565, metadata !651), !dbg !3566
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3451, metadata !651) #11, !dbg !3567
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3452, metadata !651) #11, !dbg !3569
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3570
  ret i8* %2, !dbg !3571
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3572 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3576, metadata !651), !dbg !3578
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3577, metadata !651), !dbg !3579
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3553, metadata !651) #11, !dbg !3580
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3554, metadata !651) #11, !dbg !3582
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3555, metadata !651) #11, !dbg !3583
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3584
  ret i8* %3, !dbg !3585
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3586 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3594, metadata !3600), !dbg !3601
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3590, metadata !651), !dbg !3603
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3591, metadata !651), !dbg !3604
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3592, metadata !651), !dbg !3605
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3606
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3606
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3593, metadata !651), !dbg !3607
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3599, metadata !651) #11, !dbg !3608
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3609
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3609
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3594, metadata !651) #11, !dbg !3601
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3594, metadata !3610) #11, !dbg !3601
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3601
  %8 = icmp eq i32 %1, 10, !dbg !3611
  br i1 %8, label %9, label %10, !dbg !3613

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3614, !noalias !3615
  unreachable, !dbg !3614

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3594, metadata !3610) #11, !dbg !3601
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3618
  store i32 %1, i32* %11, align 8, !dbg !3618, !alias.scope !3615
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3618
  %13 = bitcast i32* %12 to i8*, !dbg !3618
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3618
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3619
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3593, metadata !651), !dbg !3607
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3620
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3621
  ret i8* %14, !dbg !3622
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3623 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3594, metadata !3600), !dbg !3632
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3627, metadata !651), !dbg !3634
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3628, metadata !651), !dbg !3635
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3629, metadata !651), !dbg !3636
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3630, metadata !651), !dbg !3637
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3638
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3638
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3631, metadata !651), !dbg !3639
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3599, metadata !651) #11, !dbg !3640
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3641
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3641
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3594, metadata !651) #11, !dbg !3632
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3594, metadata !3610) #11, !dbg !3632
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3632
  %9 = icmp eq i32 %1, 10, !dbg !3642
  br i1 %9, label %10, label %11, !dbg !3643

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3644, !noalias !3645
  unreachable, !dbg !3644

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3594, metadata !3610) #11, !dbg !3632
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3648
  store i32 %1, i32* %12, align 8, !dbg !3648, !alias.scope !3645
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3648
  %14 = bitcast i32* %13 to i8*, !dbg !3648
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !3648
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3649
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3631, metadata !651), !dbg !3639
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3650
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3651
  ret i8* %15, !dbg !3652
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3653 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3594, metadata !3600), !dbg !3659
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3657, metadata !651), !dbg !3662
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3658, metadata !651), !dbg !3663
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3590, metadata !651) #11, !dbg !3664
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3591, metadata !651) #11, !dbg !3665
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3592, metadata !651) #11, !dbg !3666
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3667
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3667
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3593, metadata !651) #11, !dbg !3668
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3599, metadata !651) #11, !dbg !3669
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3670
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !3670
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3594, metadata !651) #11, !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3594, metadata !3610) #11, !dbg !3659
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3659
  %7 = icmp eq i32 %0, 10, !dbg !3671
  br i1 %7, label %8, label %9, !dbg !3672

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3673, !noalias !3674
  unreachable, !dbg !3673

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3594, metadata !3610) #11, !dbg !3659
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3677
  store i32 %0, i32* %10, align 8, !dbg !3677, !alias.scope !3674
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3677
  %12 = bitcast i32* %11 to i8*, !dbg !3677
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !3677
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !3678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3593, metadata !651) #11, !dbg !3668
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3679
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3680
  ret i8* %13, !dbg !3681
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3682 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3594, metadata !3600), !dbg !3689
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3686, metadata !651), !dbg !3692
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3687, metadata !651), !dbg !3693
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3688, metadata !651), !dbg !3694
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3627, metadata !651) #11, !dbg !3695
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3628, metadata !651) #11, !dbg !3696
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3629, metadata !651) #11, !dbg !3697
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3630, metadata !651) #11, !dbg !3698
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3699
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3699
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3631, metadata !651) #11, !dbg !3700
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3599, metadata !651) #11, !dbg !3701
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3702
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3702
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3594, metadata !651) #11, !dbg !3689
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3594, metadata !3610) #11, !dbg !3689
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3689
  %8 = icmp eq i32 %0, 10, !dbg !3703
  br i1 %8, label %9, label %10, !dbg !3704

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3705, !noalias !3706
  unreachable, !dbg !3705

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3594, metadata !3610) #11, !dbg !3689
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3709
  store i32 %0, i32* %11, align 8, !dbg !3709, !alias.scope !3706
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3709
  %13 = bitcast i32* %12 to i8*, !dbg !3709
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3709
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3710
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3631, metadata !651) #11, !dbg !3700
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !3711
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3712
  ret i8* %14, !dbg !3713
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3714 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3718, metadata !651), !dbg !3722
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3719, metadata !651), !dbg !3723
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3720, metadata !651), !dbg !3724
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3725
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3725
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3726, !tbaa.struct !3727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3721, metadata !651), !dbg !3728
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2470, metadata !651), !dbg !3729
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2471, metadata !651), !dbg !3731
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2472, metadata !651), !dbg !3732
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2473, metadata !651), !dbg !3733
  %6 = lshr i8 %2, 5, !dbg !3734
  %7 = zext i8 %6 to i64, !dbg !3734
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3735
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2474, metadata !651), !dbg !3736
  %9 = and i8 %2, 31, !dbg !3737
  %10 = zext i8 %9 to i32, !dbg !3738
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2476, metadata !651), !dbg !3739
  %11 = load i32, i32* %8, align 4, !dbg !3740, !tbaa !729
  %12 = lshr i32 %11, %10, !dbg !3741
  %13 = and i32 %12, 1, !dbg !3742
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2477, metadata !651), !dbg !3743
  %14 = xor i32 %13, 1, !dbg !3744
  %15 = shl i32 %14, %10, !dbg !3745
  %16 = xor i32 %15, %11, !dbg !3746
  store i32 %16, i32* %8, align 4, !dbg !3746, !tbaa !729
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3721, metadata !651), !dbg !3728
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3747
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3748
  ret i8* %17, !dbg !3749
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3750 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3754, metadata !651), !dbg !3756
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3755, metadata !651), !dbg !3757
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3718, metadata !651) #11, !dbg !3758
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3719, metadata !651) #11, !dbg !3760
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3720, metadata !651) #11, !dbg !3761
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3762
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3762
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3763, !tbaa.struct !3727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3721, metadata !651) #11, !dbg !3764
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2470, metadata !651) #11, !dbg !3765
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2471, metadata !651) #11, !dbg !3767
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2472, metadata !651) #11, !dbg !3768
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2473, metadata !651) #11, !dbg !3769
  %5 = lshr i8 %1, 5, !dbg !3770
  %6 = zext i8 %5 to i64, !dbg !3770
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3771
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2474, metadata !651) #11, !dbg !3772
  %8 = and i8 %1, 31, !dbg !3773
  %9 = zext i8 %8 to i32, !dbg !3774
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2476, metadata !651) #11, !dbg !3775
  %10 = load i32, i32* %7, align 4, !dbg !3776, !tbaa !729
  %11 = lshr i32 %10, %9, !dbg !3777
  %12 = and i32 %11, 1, !dbg !3778
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2477, metadata !651) #11, !dbg !3779
  %13 = xor i32 %12, 1, !dbg !3780
  %14 = shl i32 %13, %9, !dbg !3781
  %15 = xor i32 %14, %10, !dbg !3782
  store i32 %15, i32* %7, align 4, !dbg !3782, !tbaa !729
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3721, metadata !651) #11, !dbg !3764
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3783
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3784
  ret i8* %16, !dbg !3785
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3786 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3788, metadata !651), !dbg !3789
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3754, metadata !651) #11, !dbg !3790
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3755, metadata !651) #11, !dbg !3792
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3718, metadata !651) #11, !dbg !3793
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3719, metadata !651) #11, !dbg !3795
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3720, metadata !651) #11, !dbg !3796
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3797
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3797
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3798, !tbaa.struct !3727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3721, metadata !651) #11, !dbg !3799
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2470, metadata !651) #11, !dbg !3800
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2471, metadata !651) #11, !dbg !3802
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2472, metadata !651) #11, !dbg !3803
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2473, metadata !651) #11, !dbg !3804
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3805
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2474, metadata !651) #11, !dbg !3806
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2476, metadata !651) #11, !dbg !3807
  %5 = load i32, i32* %4, align 4, !dbg !3808, !tbaa !729
  %6 = or i32 %5, 67108864, !dbg !3809
  store i32 %6, i32* %4, align 4, !dbg !3809, !tbaa !729
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3721, metadata !651) #11, !dbg !3799
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3810
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3811
  ret i8* %7, !dbg !3812
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3813 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3815, metadata !651), !dbg !3817
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3816, metadata !651), !dbg !3818
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3718, metadata !651) #11, !dbg !3819
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3719, metadata !651) #11, !dbg !3821
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3720, metadata !651) #11, !dbg !3822
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3823
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3823
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3824, !tbaa.struct !3727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3721, metadata !651) #11, !dbg !3825
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2470, metadata !651) #11, !dbg !3826
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2471, metadata !651) #11, !dbg !3828
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2472, metadata !651) #11, !dbg !3829
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2473, metadata !651) #11, !dbg !3830
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3831
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2474, metadata !651) #11, !dbg !3832
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2476, metadata !651) #11, !dbg !3833
  %6 = load i32, i32* %5, align 4, !dbg !3834, !tbaa !729
  %7 = or i32 %6, 67108864, !dbg !3835
  store i32 %7, i32* %5, align 4, !dbg !3835, !tbaa !729
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3721, metadata !651) #11, !dbg !3825
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3836
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3837
  ret i8* %8, !dbg !3838
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3839 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3594, metadata !3600), !dbg !3845
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3841, metadata !651), !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3842, metadata !651), !dbg !3848
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3843, metadata !651), !dbg !3849
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3850
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3850
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3599, metadata !651) #11, !dbg !3851
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3852
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3852
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3594, metadata !651) #11, !dbg !3845
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3594, metadata !3610) #11, !dbg !3845
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3845
  %9 = icmp eq i32 %1, 10, !dbg !3853
  br i1 %9, label %10, label %11, !dbg !3854

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3855, !noalias !3856
  unreachable, !dbg !3855

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3594, metadata !3610) #11, !dbg !3845
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3859
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3859
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3860
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3861
  store i32 %1, i32* %13, align 8, !dbg !3861
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3861
  %15 = bitcast i32* %14 to i8*, !dbg !3861
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3861
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3844, metadata !651), !dbg !3862
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2470, metadata !651), !dbg !3863
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2471, metadata !651), !dbg !3865
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2472, metadata !651), !dbg !3866
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2473, metadata !651), !dbg !3867
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3868
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2474, metadata !651), !dbg !3869
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2476, metadata !651), !dbg !3870
  %17 = load i32, i32* %16, align 4, !dbg !3871, !tbaa !729
  %18 = or i32 %17, 67108864, !dbg !3872
  store i32 %18, i32* %16, align 4, !dbg !3872, !tbaa !729
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3844, metadata !651), !dbg !3862
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3873
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3874
  ret i8* %19, !dbg !3875
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3876 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3880, metadata !651), !dbg !3884
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3881, metadata !651), !dbg !3885
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3882, metadata !651), !dbg !3886
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3883, metadata !651), !dbg !3887
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3888, metadata !651) #11, !dbg !3898
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3893, metadata !651) #11, !dbg !3900
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3894, metadata !651) #11, !dbg !3901
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3895, metadata !651) #11, !dbg !3902
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3896, metadata !651) #11, !dbg !3903
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3904
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3904
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3905, !tbaa.struct !3727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3897, metadata !651) #11, !dbg !3906
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2519, metadata !651) #11, !dbg !3907
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2520, metadata !651) #11, !dbg !3909
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2521, metadata !651) #11, !dbg !3910
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2519, metadata !651) #11, !dbg !3907
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2519, metadata !651) #11, !dbg !3907
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3911
  store i32 10, i32* %7, align 8, !dbg !3912, !tbaa !2451
  %8 = icmp ne i8* %1, null, !dbg !3913
  %9 = icmp ne i8* %2, null, !dbg !3914
  %10 = and i1 %8, %9, !dbg !3915
  br i1 %10, label %12, label %11, !dbg !3915

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3916
  unreachable, !dbg !3916

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3917
  store i8* %1, i8** %13, align 8, !dbg !3918, !tbaa !2537
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3919
  store i8* %2, i8** %14, align 8, !dbg !3920, !tbaa !2540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3897, metadata !651) #11, !dbg !3906
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3921
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3922
  ret i8* %15, !dbg !3923
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3889 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3888, metadata !651), !dbg !3924
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3893, metadata !651), !dbg !3925
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3894, metadata !651), !dbg !3926
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3895, metadata !651), !dbg !3927
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3896, metadata !651), !dbg !3928
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3929
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3929
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3930, !tbaa.struct !3727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3897, metadata !651), !dbg !3931
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2519, metadata !651) #11, !dbg !3932
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2520, metadata !651) #11, !dbg !3934
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2521, metadata !651) #11, !dbg !3935
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2519, metadata !651) #11, !dbg !3932
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2519, metadata !651) #11, !dbg !3932
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3936
  store i32 10, i32* %8, align 8, !dbg !3937, !tbaa !2451
  %9 = icmp ne i8* %1, null, !dbg !3938
  %10 = icmp ne i8* %2, null, !dbg !3939
  %11 = and i1 %9, %10, !dbg !3940
  br i1 %11, label %13, label %12, !dbg !3940

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3941
  unreachable, !dbg !3941

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3942
  store i8* %1, i8** %14, align 8, !dbg !3943, !tbaa !2537
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3944
  store i8* %2, i8** %15, align 8, !dbg !3945, !tbaa !2540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3897, metadata !651), !dbg !3931
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3946
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3947
  ret i8* %16, !dbg !3948
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3949 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3953, metadata !651), !dbg !3956
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3954, metadata !651), !dbg !3957
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3955, metadata !651), !dbg !3958
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3880, metadata !651) #11, !dbg !3959
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3881, metadata !651) #11, !dbg !3961
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3882, metadata !651) #11, !dbg !3962
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3883, metadata !651) #11, !dbg !3963
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3888, metadata !651) #11, !dbg !3964
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3893, metadata !651) #11, !dbg !3966
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3894, metadata !651) #11, !dbg !3967
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3895, metadata !651) #11, !dbg !3968
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3896, metadata !651) #11, !dbg !3969
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3970
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3970
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3971, !tbaa.struct !3727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3897, metadata !651) #11, !dbg !3972
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2519, metadata !651) #11, !dbg !3973
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2520, metadata !651) #11, !dbg !3975
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2521, metadata !651) #11, !dbg !3976
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2519, metadata !651) #11, !dbg !3973
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2519, metadata !651) #11, !dbg !3973
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3977
  store i32 10, i32* %6, align 8, !dbg !3978, !tbaa !2451
  %7 = icmp ne i8* %0, null, !dbg !3979
  %8 = icmp ne i8* %1, null, !dbg !3980
  %9 = and i1 %7, %8, !dbg !3981
  br i1 %9, label %11, label %10, !dbg !3981

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3982
  unreachable, !dbg !3982

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3983
  store i8* %0, i8** %12, align 8, !dbg !3984, !tbaa !2537
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3985
  store i8* %1, i8** %13, align 8, !dbg !3986, !tbaa !2540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3897, metadata !651) #11, !dbg !3972
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3987
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3988
  ret i8* %14, !dbg !3989
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3990 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3994, metadata !651), !dbg !3998
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3995, metadata !651), !dbg !3999
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3996, metadata !651), !dbg !4000
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3997, metadata !651), !dbg !4001
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3888, metadata !651) #11, !dbg !4002
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3893, metadata !651) #11, !dbg !4004
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3894, metadata !651) #11, !dbg !4005
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3895, metadata !651) #11, !dbg !4006
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3896, metadata !651) #11, !dbg !4007
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4008
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !4008
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !4009, !tbaa.struct !3727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3897, metadata !651) #11, !dbg !4010
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2519, metadata !651) #11, !dbg !4011
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2520, metadata !651) #11, !dbg !4013
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2521, metadata !651) #11, !dbg !4014
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2519, metadata !651) #11, !dbg !4011
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2519, metadata !651) #11, !dbg !4011
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4015
  store i32 10, i32* %7, align 8, !dbg !4016, !tbaa !2451
  %8 = icmp ne i8* %0, null, !dbg !4017
  %9 = icmp ne i8* %1, null, !dbg !4018
  %10 = and i1 %8, %9, !dbg !4019
  br i1 %10, label %12, label %11, !dbg !4019

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !4020
  unreachable, !dbg !4020

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4021
  store i8* %0, i8** %13, align 8, !dbg !4022, !tbaa !2537
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4023
  store i8* %1, i8** %14, align 8, !dbg !4024, !tbaa !2540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3897, metadata !651) #11, !dbg !4010
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !4025
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !4026
  ret i8* %15, !dbg !4027
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4028 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4032, metadata !651), !dbg !4035
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4033, metadata !651), !dbg !4036
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4034, metadata !651), !dbg !4037
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4038
  ret i8* %4, !dbg !4039
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !4040 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4044, metadata !651), !dbg !4046
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4045, metadata !651), !dbg !4047
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4032, metadata !651) #11, !dbg !4048
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4033, metadata !651) #11, !dbg !4050
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4034, metadata !651) #11, !dbg !4051
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !4052
  ret i8* %3, !dbg !4053
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !4054 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4058, metadata !651), !dbg !4060
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4059, metadata !651), !dbg !4061
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4032, metadata !651) #11, !dbg !4062
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4033, metadata !651) #11, !dbg !4064
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4034, metadata !651) #11, !dbg !4065
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !4066
  ret i8* %3, !dbg !4067
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !4068 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4072, metadata !651), !dbg !4073
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4058, metadata !651) #11, !dbg !4074
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4059, metadata !651) #11, !dbg !4076
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4032, metadata !651) #11, !dbg !4077
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4033, metadata !651) #11, !dbg !4079
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4034, metadata !651) #11, !dbg !4080
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !4081
  ret i8* %2, !dbg !4082
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @strintcmp(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #12 !dbg !4083 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4088, metadata !651), !dbg !4090
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4089, metadata !651), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4092, metadata !651), !dbg !4106
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4100, metadata !651), !dbg !4108
  %3 = load i8, i8* %0, align 1, !dbg !4109, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !4101, metadata !651), !dbg !4110
  %4 = load i8, i8* %1, align 1, !dbg !4111, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !4102, metadata !651), !dbg !4112
  %5 = icmp eq i8 %3, 45, !dbg !4113
  br i1 %5, label %6, label %101, !dbg !4115, !llvm.loop !4116

; <label>:6:                                      ; preds = %2
  br label %7, !dbg !4120

; <label>:7:                                      ; preds = %6, %7
  %8 = phi i8* [ %9, %7 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4098, metadata !651), !dbg !4121
  %9 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4120
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4098, metadata !651), !dbg !4121
  %10 = load i8, i8* %9, align 1, !dbg !4122, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !4101, metadata !651), !dbg !4110
  %11 = icmp eq i8 %10, 48, !dbg !4123
  br i1 %11, label %7, label %12, !dbg !4124

; <label>:12:                                     ; preds = %7
  %13 = icmp eq i8 %4, 45, !dbg !4125
  br i1 %13, label %14, label %15, !dbg !4127, !llvm.loop !4128

; <label>:14:                                     ; preds = %12
  br label %33, !dbg !4131

; <label>:15:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !4101, metadata !651), !dbg !4110
  %16 = zext i8 %10 to i32, !dbg !4132
  %17 = add nsw i32 %16, -48, !dbg !4132
  %18 = icmp ult i32 %17, 10, !dbg !4132
  br i1 %18, label %210, label %19, !dbg !4135

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !4102, metadata !651), !dbg !4112
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4099, metadata !651), !dbg !4136
  %20 = icmp eq i8 %4, 48, !dbg !4137
  br i1 %20, label %21, label %27, !dbg !4138

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !4139

; <label>:22:                                     ; preds = %21, %22
  %23 = phi i8* [ %24, %22 ], [ %1, %21 ]
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4099, metadata !651), !dbg !4136
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !4139
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !4099, metadata !651), !dbg !4136
  %25 = load i8, i8* %24, align 1, !dbg !4140, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !4102, metadata !651), !dbg !4112
  tail call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !4102, metadata !651), !dbg !4112
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !4099, metadata !651), !dbg !4136
  %26 = icmp eq i8 %25, 48, !dbg !4137
  br i1 %26, label %22, label %27, !dbg !4138, !llvm.loop !4141

; <label>:27:                                     ; preds = %22, %19
  %28 = phi i8 [ %4, %19 ], [ %25, %22 ]
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !4102, metadata !651), !dbg !4112
  %29 = zext i8 %28 to i32, !dbg !4144
  %30 = add nsw i32 %29, -48, !dbg !4144
  %31 = icmp ult i32 %30, 10, !dbg !4144
  %32 = sext i1 %31 to i32, !dbg !4145
  br label %210, !dbg !4146

; <label>:33:                                     ; preds = %14, %33
  %34 = phi i8* [ %35, %33 ], [ %1, %14 ]
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !4099, metadata !651), !dbg !4136
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !4131
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !4099, metadata !651), !dbg !4136
  %36 = load i8, i8* %35, align 1, !dbg !4147, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !4102, metadata !651), !dbg !4112
  %37 = icmp eq i8 %36, 48, !dbg !4148
  br i1 %37, label %33, label %38, !dbg !4149

; <label>:38:                                     ; preds = %33
  tail call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !4102, metadata !651), !dbg !4112
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !4101, metadata !651), !dbg !4110
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4098, metadata !651), !dbg !4121
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !4099, metadata !651), !dbg !4136
  %39 = zext i8 %10 to i32, !dbg !4150
  %40 = icmp eq i8 %36, %10, !dbg !4151
  %41 = add nsw i32 %39, -48, !dbg !4152
  %42 = icmp ult i32 %41, 10, !dbg !4152
  %43 = and i1 %42, %40, !dbg !4153
  br i1 %43, label %44, label %57, !dbg !4153

; <label>:44:                                     ; preds = %38
  br label %45, !dbg !4154

; <label>:45:                                     ; preds = %44, %45
  %46 = phi i8* [ %48, %45 ], [ %9, %44 ]
  %47 = phi i8* [ %50, %45 ], [ %35, %44 ]
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4098, metadata !651), !dbg !4121
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4099, metadata !651), !dbg !4136
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4098, metadata !651), !dbg !4121
  %48 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !4154
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !4098, metadata !651), !dbg !4121
  %49 = load i8, i8* %48, align 1, !dbg !4156, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8 %49, i64 0, metadata !4101, metadata !651), !dbg !4110
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4099, metadata !651), !dbg !4136
  %50 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !4157
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !4099, metadata !651), !dbg !4136
  %51 = load i8, i8* %50, align 1, !dbg !4158, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8 %51, i64 0, metadata !4102, metadata !651), !dbg !4112
  tail call void @llvm.dbg.value(metadata i8 %49, i64 0, metadata !4101, metadata !651), !dbg !4110
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !4098, metadata !651), !dbg !4121
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !4099, metadata !651), !dbg !4136
  %52 = zext i8 %49 to i32, !dbg !4150
  %53 = icmp eq i8 %51, %49, !dbg !4151
  %54 = add nsw i32 %52, -48, !dbg !4152
  %55 = icmp ult i32 %54, 10, !dbg !4152
  %56 = and i1 %53, %55, !dbg !4153
  br i1 %56, label %45, label %57, !dbg !4153, !llvm.loop !4159

; <label>:57:                                     ; preds = %45, %38
  %58 = phi i8* [ %35, %38 ], [ %50, %45 ]
  %59 = phi i8* [ %9, %38 ], [ %48, %45 ]
  %60 = phi i8 [ %10, %38 ], [ %49, %45 ]
  %61 = phi i8 [ %36, %38 ], [ %51, %45 ]
  %62 = phi i32 [ %39, %38 ], [ %52, %45 ]
  %63 = zext i8 %61 to i32, !dbg !4162
  %64 = sub nsw i32 %63, %62, !dbg !4163
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4103, metadata !651), !dbg !4164
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4104, metadata !651), !dbg !4165
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4104, metadata !651), !dbg !4165
  tail call void @llvm.dbg.value(metadata i8 %60, i64 0, metadata !4101, metadata !651), !dbg !4110
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !4098, metadata !651), !dbg !4121
  %65 = zext i8 %60 to i32, !dbg !4166
  %66 = add nsw i32 %65, -48, !dbg !4166
  %67 = icmp ult i32 %66, 10, !dbg !4166
  br i1 %67, label %68, label %78, !dbg !4169

; <label>:68:                                     ; preds = %57
  br label %69, !dbg !4170

; <label>:69:                                     ; preds = %68, %69
  %70 = phi i64 [ %74, %69 ], [ 0, %68 ]
  %71 = phi i8* [ %72, %69 ], [ %59, %68 ]
  tail call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !4098, metadata !651), !dbg !4121
  tail call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !4098, metadata !651), !dbg !4121
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !4104, metadata !651), !dbg !4165
  %72 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !4170
  tail call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !4098, metadata !651), !dbg !4121
  %73 = load i8, i8* %72, align 1, !dbg !4171, !tbaa !680
  %74 = add i64 %70, 1, !dbg !4172
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !4104, metadata !651), !dbg !4165
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !4104, metadata !651), !dbg !4165
  tail call void @llvm.dbg.value(metadata i8 %73, i64 0, metadata !4101, metadata !651), !dbg !4110
  tail call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !4098, metadata !651), !dbg !4121
  %75 = zext i8 %73 to i32, !dbg !4166
  %76 = add nsw i32 %75, -48, !dbg !4166
  %77 = icmp ult i32 %76, 10, !dbg !4166
  br i1 %77, label %69, label %78, !dbg !4169, !llvm.loop !4173

; <label>:78:                                     ; preds = %69, %57
  %79 = phi i64 [ 0, %57 ], [ %74, %69 ]
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4105, metadata !651), !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4105, metadata !651), !dbg !4176
  tail call void @llvm.dbg.value(metadata i8 %61, i64 0, metadata !4102, metadata !651), !dbg !4112
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !4099, metadata !651), !dbg !4136
  %80 = add nsw i32 %63, -48, !dbg !4177
  %81 = icmp ult i32 %80, 10, !dbg !4177
  br i1 %81, label %82, label %92, !dbg !4180

; <label>:82:                                     ; preds = %78
  br label %83, !dbg !4181

; <label>:83:                                     ; preds = %82, %83
  %84 = phi i64 [ %88, %83 ], [ 0, %82 ]
  %85 = phi i8* [ %86, %83 ], [ %58, %82 ]
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !4099, metadata !651), !dbg !4136
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !4099, metadata !651), !dbg !4136
  tail call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4105, metadata !651), !dbg !4176
  %86 = getelementptr inbounds i8, i8* %85, i64 1, !dbg !4181
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !4099, metadata !651), !dbg !4136
  %87 = load i8, i8* %86, align 1, !dbg !4182, !tbaa !680
  %88 = add i64 %84, 1, !dbg !4183
  tail call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4105, metadata !651), !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4105, metadata !651), !dbg !4176
  tail call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !4102, metadata !651), !dbg !4112
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !4099, metadata !651), !dbg !4136
  %89 = zext i8 %87 to i32, !dbg !4177
  %90 = add nsw i32 %89, -48, !dbg !4177
  %91 = icmp ult i32 %90, 10, !dbg !4177
  br i1 %91, label %83, label %92, !dbg !4180, !llvm.loop !4184

; <label>:92:                                     ; preds = %83, %78
  %93 = phi i64 [ 0, %78 ], [ %88, %83 ]
  %94 = icmp eq i64 %79, %93, !dbg !4187
  br i1 %94, label %98, label %95, !dbg !4189

; <label>:95:                                     ; preds = %92
  %96 = icmp ult i64 %79, %93, !dbg !4190
  %97 = select i1 %96, i32 1, i32 -1, !dbg !4191
  br label %210, !dbg !4192

; <label>:98:                                     ; preds = %92
  %99 = icmp eq i64 %79, 0, !dbg !4193
  %100 = select i1 %99, i32 0, i32 %64, !dbg !4195
  br label %210, !dbg !4195

; <label>:101:                                    ; preds = %2
  %102 = icmp eq i8 %4, 45, !dbg !4196
  br i1 %102, label %103, label %127, !dbg !4198, !llvm.loop !4199

; <label>:103:                                    ; preds = %101
  br label %104, !dbg !4203

; <label>:104:                                    ; preds = %103, %104
  %105 = phi i8* [ %106, %104 ], [ %1, %103 ]
  tail call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4099, metadata !651), !dbg !4136
  %106 = getelementptr inbounds i8, i8* %105, i64 1, !dbg !4203
  tail call void @llvm.dbg.value(metadata i8* %106, i64 0, metadata !4099, metadata !651), !dbg !4136
  %107 = load i8, i8* %106, align 1, !dbg !4204, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8 %107, i64 0, metadata !4102, metadata !651), !dbg !4112
  %108 = icmp eq i8 %107, 48, !dbg !4205
  br i1 %108, label %104, label %109, !dbg !4206

; <label>:109:                                    ; preds = %104
  tail call void @llvm.dbg.value(metadata i8 %107, i64 0, metadata !4102, metadata !651), !dbg !4112
  %110 = zext i8 %107 to i32, !dbg !4207
  %111 = add nsw i32 %110, -48, !dbg !4207
  %112 = icmp ult i32 %111, 10, !dbg !4207
  br i1 %112, label %210, label %113, !dbg !4209

; <label>:113:                                    ; preds = %109
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !4101, metadata !651), !dbg !4110
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4098, metadata !651), !dbg !4121
  %114 = icmp eq i8 %3, 48, !dbg !4210
  br i1 %114, label %115, label %121, !dbg !4211

; <label>:115:                                    ; preds = %113
  br label %116, !dbg !4212

; <label>:116:                                    ; preds = %115, %116
  %117 = phi i8* [ %118, %116 ], [ %0, %115 ]
  tail call void @llvm.dbg.value(metadata i8* %117, i64 0, metadata !4098, metadata !651), !dbg !4121
  %118 = getelementptr inbounds i8, i8* %117, i64 1, !dbg !4212
  tail call void @llvm.dbg.value(metadata i8* %118, i64 0, metadata !4098, metadata !651), !dbg !4121
  %119 = load i8, i8* %118, align 1, !dbg !4213, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8 %119, i64 0, metadata !4101, metadata !651), !dbg !4110
  tail call void @llvm.dbg.value(metadata i8 %119, i64 0, metadata !4101, metadata !651), !dbg !4110
  tail call void @llvm.dbg.value(metadata i8* %118, i64 0, metadata !4098, metadata !651), !dbg !4121
  %120 = icmp eq i8 %119, 48, !dbg !4210
  br i1 %120, label %116, label %121, !dbg !4211, !llvm.loop !4214

; <label>:121:                                    ; preds = %116, %113
  %122 = phi i8 [ %3, %113 ], [ %119, %116 ]
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !4101, metadata !651), !dbg !4110
  %123 = zext i8 %122 to i32, !dbg !4217
  %124 = add nsw i32 %123, -48, !dbg !4217
  %125 = icmp ult i32 %124, 10, !dbg !4217
  %126 = zext i1 %125 to i32, !dbg !4217
  br label %210, !dbg !4218

; <label>:127:                                    ; preds = %101
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !4101, metadata !651), !dbg !4110
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4098, metadata !651), !dbg !4121
  %128 = icmp eq i8 %3, 48, !dbg !4219
  br i1 %128, label %129, label %135, !dbg !4221

; <label>:129:                                    ; preds = %127
  br label %130, !dbg !4222

; <label>:130:                                    ; preds = %129, %130
  %131 = phi i8* [ %132, %130 ], [ %0, %129 ]
  tail call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !4098, metadata !651), !dbg !4121
  %132 = getelementptr inbounds i8, i8* %131, i64 1, !dbg !4222
  tail call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !4098, metadata !651), !dbg !4121
  %133 = load i8, i8* %132, align 1, !dbg !4223, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8 %133, i64 0, metadata !4101, metadata !651), !dbg !4110
  tail call void @llvm.dbg.value(metadata i8 %133, i64 0, metadata !4101, metadata !651), !dbg !4110
  tail call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !4098, metadata !651), !dbg !4121
  %134 = icmp eq i8 %133, 48, !dbg !4219
  br i1 %134, label %130, label %135, !dbg !4221, !llvm.loop !4224

; <label>:135:                                    ; preds = %130, %127
  %136 = phi i8* [ %0, %127 ], [ %132, %130 ]
  %137 = phi i8 [ %3, %127 ], [ %133, %130 ]
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !4102, metadata !651), !dbg !4112
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4099, metadata !651), !dbg !4136
  %138 = icmp eq i8 %4, 48, !dbg !4227
  br i1 %138, label %139, label %145, !dbg !4228

; <label>:139:                                    ; preds = %135
  br label %140, !dbg !4229

; <label>:140:                                    ; preds = %139, %140
  %141 = phi i8* [ %142, %140 ], [ %1, %139 ]
  tail call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !4099, metadata !651), !dbg !4136
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4229
  tail call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4099, metadata !651), !dbg !4136
  %143 = load i8, i8* %142, align 1, !dbg !4230, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8 %143, i64 0, metadata !4102, metadata !651), !dbg !4112
  tail call void @llvm.dbg.value(metadata i8 %143, i64 0, metadata !4102, metadata !651), !dbg !4112
  tail call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4099, metadata !651), !dbg !4136
  %144 = icmp eq i8 %143, 48, !dbg !4227
  br i1 %144, label %140, label %145, !dbg !4228, !llvm.loop !4231

; <label>:145:                                    ; preds = %140, %135
  %146 = phi i8* [ %1, %135 ], [ %142, %140 ]
  %147 = phi i8 [ %4, %135 ], [ %143, %140 ]
  tail call void @llvm.dbg.value(metadata i8 %147, i64 0, metadata !4102, metadata !651), !dbg !4112
  tail call void @llvm.dbg.value(metadata i8 %137, i64 0, metadata !4101, metadata !651), !dbg !4110
  tail call void @llvm.dbg.value(metadata i8* %136, i64 0, metadata !4098, metadata !651), !dbg !4121
  tail call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4099, metadata !651), !dbg !4136
  %148 = zext i8 %137 to i32, !dbg !4234
  %149 = icmp eq i8 %137, %147, !dbg !4235
  %150 = add nsw i32 %148, -48, !dbg !4236
  %151 = icmp ult i32 %150, 10, !dbg !4236
  %152 = and i1 %151, %149, !dbg !4237
  br i1 %152, label %153, label %166, !dbg !4237

; <label>:153:                                    ; preds = %145
  br label %154, !dbg !4238

; <label>:154:                                    ; preds = %153, %154
  %155 = phi i8* [ %157, %154 ], [ %136, %153 ]
  %156 = phi i8* [ %159, %154 ], [ %146, %153 ]
  tail call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !4098, metadata !651), !dbg !4121
  tail call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4099, metadata !651), !dbg !4136
  tail call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !4098, metadata !651), !dbg !4121
  %157 = getelementptr inbounds i8, i8* %155, i64 1, !dbg !4238
  tail call void @llvm.dbg.value(metadata i8* %157, i64 0, metadata !4098, metadata !651), !dbg !4121
  %158 = load i8, i8* %157, align 1, !dbg !4240, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !4101, metadata !651), !dbg !4110
  tail call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4099, metadata !651), !dbg !4136
  %159 = getelementptr inbounds i8, i8* %156, i64 1, !dbg !4241
  tail call void @llvm.dbg.value(metadata i8* %159, i64 0, metadata !4099, metadata !651), !dbg !4136
  %160 = load i8, i8* %159, align 1, !dbg !4242, !tbaa !680
  tail call void @llvm.dbg.value(metadata i8 %160, i64 0, metadata !4102, metadata !651), !dbg !4112
  tail call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !4101, metadata !651), !dbg !4110
  tail call void @llvm.dbg.value(metadata i8* %157, i64 0, metadata !4098, metadata !651), !dbg !4121
  tail call void @llvm.dbg.value(metadata i8* %159, i64 0, metadata !4099, metadata !651), !dbg !4136
  %161 = zext i8 %158 to i32, !dbg !4234
  %162 = icmp eq i8 %158, %160, !dbg !4235
  %163 = add nsw i32 %161, -48, !dbg !4236
  %164 = icmp ult i32 %163, 10, !dbg !4236
  %165 = and i1 %162, %164, !dbg !4237
  br i1 %165, label %154, label %166, !dbg !4237, !llvm.loop !4243

; <label>:166:                                    ; preds = %154, %145
  %167 = phi i8* [ %146, %145 ], [ %159, %154 ]
  %168 = phi i8* [ %136, %145 ], [ %157, %154 ]
  %169 = phi i8 [ %137, %145 ], [ %158, %154 ]
  %170 = phi i8 [ %147, %145 ], [ %160, %154 ]
  %171 = phi i32 [ %148, %145 ], [ %161, %154 ]
  %172 = zext i8 %170 to i32, !dbg !4246
  %173 = sub nsw i32 %171, %172, !dbg !4247
  tail call void @llvm.dbg.value(metadata i32 %173, i64 0, metadata !4103, metadata !651), !dbg !4164
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4104, metadata !651), !dbg !4165
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4104, metadata !651), !dbg !4165
  tail call void @llvm.dbg.value(metadata i8 %169, i64 0, metadata !4101, metadata !651), !dbg !4110
  tail call void @llvm.dbg.value(metadata i8* %168, i64 0, metadata !4098, metadata !651), !dbg !4121
  %174 = zext i8 %169 to i32, !dbg !4248
  %175 = add nsw i32 %174, -48, !dbg !4248
  %176 = icmp ult i32 %175, 10, !dbg !4248
  br i1 %176, label %177, label %187, !dbg !4251

; <label>:177:                                    ; preds = %166
  br label %178, !dbg !4252

; <label>:178:                                    ; preds = %177, %178
  %179 = phi i64 [ %183, %178 ], [ 0, %177 ]
  %180 = phi i8* [ %181, %178 ], [ %168, %177 ]
  tail call void @llvm.dbg.value(metadata i8* %180, i64 0, metadata !4098, metadata !651), !dbg !4121
  tail call void @llvm.dbg.value(metadata i8* %180, i64 0, metadata !4098, metadata !651), !dbg !4121
  tail call void @llvm.dbg.value(metadata i64 %179, i64 0, metadata !4104, metadata !651), !dbg !4165
  %181 = getelementptr inbounds i8, i8* %180, i64 1, !dbg !4252
  tail call void @llvm.dbg.value(metadata i8* %181, i64 0, metadata !4098, metadata !651), !dbg !4121
  %182 = load i8, i8* %181, align 1, !dbg !4253, !tbaa !680
  %183 = add i64 %179, 1, !dbg !4254
  tail call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !4104, metadata !651), !dbg !4165
  tail call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !4104, metadata !651), !dbg !4165
  tail call void @llvm.dbg.value(metadata i8 %182, i64 0, metadata !4101, metadata !651), !dbg !4110
  tail call void @llvm.dbg.value(metadata i8* %181, i64 0, metadata !4098, metadata !651), !dbg !4121
  %184 = zext i8 %182 to i32, !dbg !4248
  %185 = add nsw i32 %184, -48, !dbg !4248
  %186 = icmp ult i32 %185, 10, !dbg !4248
  br i1 %186, label %178, label %187, !dbg !4251, !llvm.loop !4255

; <label>:187:                                    ; preds = %178, %166
  %188 = phi i64 [ 0, %166 ], [ %183, %178 ]
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4105, metadata !651), !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4105, metadata !651), !dbg !4176
  tail call void @llvm.dbg.value(metadata i8 %170, i64 0, metadata !4102, metadata !651), !dbg !4112
  tail call void @llvm.dbg.value(metadata i8* %167, i64 0, metadata !4099, metadata !651), !dbg !4136
  %189 = add nsw i32 %172, -48, !dbg !4258
  %190 = icmp ult i32 %189, 10, !dbg !4258
  br i1 %190, label %191, label %201, !dbg !4261

; <label>:191:                                    ; preds = %187
  br label %192, !dbg !4262

; <label>:192:                                    ; preds = %191, %192
  %193 = phi i64 [ %197, %192 ], [ 0, %191 ]
  %194 = phi i8* [ %195, %192 ], [ %167, %191 ]
  tail call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !4099, metadata !651), !dbg !4136
  tail call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !4099, metadata !651), !dbg !4136
  tail call void @llvm.dbg.value(metadata i64 %193, i64 0, metadata !4105, metadata !651), !dbg !4176
  %195 = getelementptr inbounds i8, i8* %194, i64 1, !dbg !4262
  tail call void @llvm.dbg.value(metadata i8* %195, i64 0, metadata !4099, metadata !651), !dbg !4136
  %196 = load i8, i8* %195, align 1, !dbg !4263, !tbaa !680
  %197 = add i64 %193, 1, !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !4105, metadata !651), !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !4105, metadata !651), !dbg !4176
  tail call void @llvm.dbg.value(metadata i8 %196, i64 0, metadata !4102, metadata !651), !dbg !4112
  tail call void @llvm.dbg.value(metadata i8* %195, i64 0, metadata !4099, metadata !651), !dbg !4136
  %198 = zext i8 %196 to i32, !dbg !4258
  %199 = add nsw i32 %198, -48, !dbg !4258
  %200 = icmp ult i32 %199, 10, !dbg !4258
  br i1 %200, label %192, label %201, !dbg !4261, !llvm.loop !4265

; <label>:201:                                    ; preds = %192, %187
  %202 = phi i64 [ 0, %187 ], [ %197, %192 ]
  %203 = icmp eq i64 %188, %202, !dbg !4268
  br i1 %203, label %207, label %204, !dbg !4270

; <label>:204:                                    ; preds = %201
  %205 = icmp ult i64 %188, %202, !dbg !4271
  %206 = select i1 %205, i32 -1, i32 1, !dbg !4272
  br label %210, !dbg !4273

; <label>:207:                                    ; preds = %201
  %208 = icmp eq i64 %188, 0, !dbg !4274
  %209 = select i1 %208, i32 0, i32 %173, !dbg !4276
  br label %210, !dbg !4276

; <label>:210:                                    ; preds = %15, %27, %95, %98, %109, %121, %204, %207
  %211 = phi i32 [ %32, %27 ], [ %97, %95 ], [ %126, %121 ], [ %206, %204 ], [ -1, %15 ], [ %100, %98 ], [ 1, %109 ], [ %209, %207 ]
  ret i32 %211, !dbg !4277
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !4278 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4335, metadata !651), !dbg !4341
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4336, metadata !651), !dbg !4342
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4337, metadata !651), !dbg !4343
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4338, metadata !651), !dbg !4344
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4339, metadata !651), !dbg !4345
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4340, metadata !651), !dbg !4346
  %7 = icmp eq i8* %1, null, !dbg !4347
  br i1 %7, label %10, label %8, !dbg !4349

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !4350
  br label %12, !dbg !4350

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.89, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !4351
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.90, i64 0, i64 0), i32 5) #11, !dbg !4352
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !4352
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.91, i64 0, i64 0), i32 5) #11, !dbg !4353
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !4353
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
  ], !dbg !4354

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !4355
  unreachable, !dbg !4355

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.92, i64 0, i64 0), i32 5) #11, !dbg !4357
  %20 = load i8*, i8** %4, align 8, !dbg !4357, !tbaa !658
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !4357
  br label %146, !dbg !4358

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.93, i64 0, i64 0), i32 5) #11, !dbg !4359
  %24 = load i8*, i8** %4, align 8, !dbg !4359, !tbaa !658
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4359
  %26 = load i8*, i8** %25, align 8, !dbg !4359, !tbaa !658
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !4359
  br label %146, !dbg !4360

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.94, i64 0, i64 0), i32 5) #11, !dbg !4361
  %30 = load i8*, i8** %4, align 8, !dbg !4361, !tbaa !658
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4361
  %32 = load i8*, i8** %31, align 8, !dbg !4361, !tbaa !658
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4361
  %34 = load i8*, i8** %33, align 8, !dbg !4361, !tbaa !658
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !4361
  br label %146, !dbg !4362

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.95, i64 0, i64 0), i32 5) #11, !dbg !4363
  %38 = load i8*, i8** %4, align 8, !dbg !4363, !tbaa !658
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4363
  %40 = load i8*, i8** %39, align 8, !dbg !4363, !tbaa !658
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4363
  %42 = load i8*, i8** %41, align 8, !dbg !4363, !tbaa !658
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4363
  %44 = load i8*, i8** %43, align 8, !dbg !4363, !tbaa !658
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !4363
  br label %146, !dbg !4364

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.96, i64 0, i64 0), i32 5) #11, !dbg !4365
  %48 = load i8*, i8** %4, align 8, !dbg !4365, !tbaa !658
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4365
  %50 = load i8*, i8** %49, align 8, !dbg !4365, !tbaa !658
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4365
  %52 = load i8*, i8** %51, align 8, !dbg !4365, !tbaa !658
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4365
  %54 = load i8*, i8** %53, align 8, !dbg !4365, !tbaa !658
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4365
  %56 = load i8*, i8** %55, align 8, !dbg !4365, !tbaa !658
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !4365
  br label %146, !dbg !4366

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.97, i64 0, i64 0), i32 5) #11, !dbg !4367
  %60 = load i8*, i8** %4, align 8, !dbg !4367, !tbaa !658
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4367
  %62 = load i8*, i8** %61, align 8, !dbg !4367, !tbaa !658
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4367
  %64 = load i8*, i8** %63, align 8, !dbg !4367, !tbaa !658
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4367
  %66 = load i8*, i8** %65, align 8, !dbg !4367, !tbaa !658
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4367
  %68 = load i8*, i8** %67, align 8, !dbg !4367, !tbaa !658
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4367
  %70 = load i8*, i8** %69, align 8, !dbg !4367, !tbaa !658
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !4367
  br label %146, !dbg !4368

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.98, i64 0, i64 0), i32 5) #11, !dbg !4369
  %74 = load i8*, i8** %4, align 8, !dbg !4369, !tbaa !658
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4369
  %76 = load i8*, i8** %75, align 8, !dbg !4369, !tbaa !658
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4369
  %78 = load i8*, i8** %77, align 8, !dbg !4369, !tbaa !658
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4369
  %80 = load i8*, i8** %79, align 8, !dbg !4369, !tbaa !658
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4369
  %82 = load i8*, i8** %81, align 8, !dbg !4369, !tbaa !658
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4369
  %84 = load i8*, i8** %83, align 8, !dbg !4369, !tbaa !658
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4369
  %86 = load i8*, i8** %85, align 8, !dbg !4369, !tbaa !658
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !4369
  br label %146, !dbg !4370

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.99, i64 0, i64 0), i32 5) #11, !dbg !4371
  %90 = load i8*, i8** %4, align 8, !dbg !4371, !tbaa !658
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4371
  %92 = load i8*, i8** %91, align 8, !dbg !4371, !tbaa !658
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4371
  %94 = load i8*, i8** %93, align 8, !dbg !4371, !tbaa !658
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4371
  %96 = load i8*, i8** %95, align 8, !dbg !4371, !tbaa !658
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4371
  %98 = load i8*, i8** %97, align 8, !dbg !4371, !tbaa !658
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4371
  %100 = load i8*, i8** %99, align 8, !dbg !4371, !tbaa !658
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4371
  %102 = load i8*, i8** %101, align 8, !dbg !4371, !tbaa !658
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4371
  %104 = load i8*, i8** %103, align 8, !dbg !4371, !tbaa !658
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !4371
  br label %146, !dbg !4372

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.100, i64 0, i64 0), i32 5) #11, !dbg !4373
  %108 = load i8*, i8** %4, align 8, !dbg !4373, !tbaa !658
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4373
  %110 = load i8*, i8** %109, align 8, !dbg !4373, !tbaa !658
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4373
  %112 = load i8*, i8** %111, align 8, !dbg !4373, !tbaa !658
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4373
  %114 = load i8*, i8** %113, align 8, !dbg !4373, !tbaa !658
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4373
  %116 = load i8*, i8** %115, align 8, !dbg !4373, !tbaa !658
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4373
  %118 = load i8*, i8** %117, align 8, !dbg !4373, !tbaa !658
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4373
  %120 = load i8*, i8** %119, align 8, !dbg !4373, !tbaa !658
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4373
  %122 = load i8*, i8** %121, align 8, !dbg !4373, !tbaa !658
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4373
  %124 = load i8*, i8** %123, align 8, !dbg !4373, !tbaa !658
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !4373
  br label %146, !dbg !4374

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.101, i64 0, i64 0), i32 5) #11, !dbg !4375
  %128 = load i8*, i8** %4, align 8, !dbg !4375, !tbaa !658
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4375
  %130 = load i8*, i8** %129, align 8, !dbg !4375, !tbaa !658
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4375
  %132 = load i8*, i8** %131, align 8, !dbg !4375, !tbaa !658
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4375
  %134 = load i8*, i8** %133, align 8, !dbg !4375, !tbaa !658
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4375
  %136 = load i8*, i8** %135, align 8, !dbg !4375, !tbaa !658
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4375
  %138 = load i8*, i8** %137, align 8, !dbg !4375, !tbaa !658
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4375
  %140 = load i8*, i8** %139, align 8, !dbg !4375, !tbaa !658
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4375
  %142 = load i8*, i8** %141, align 8, !dbg !4375, !tbaa !658
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4375
  %144 = load i8*, i8** %143, align 8, !dbg !4375, !tbaa !658
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !4375
  br label %146, !dbg !4376

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4377
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4378 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4382, metadata !651), !dbg !4388
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4383, metadata !651), !dbg !4389
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4384, metadata !651), !dbg !4390
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4385, metadata !651), !dbg !4391
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4386, metadata !651), !dbg !4392
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4387, metadata !651), !dbg !4393
  br label %6, !dbg !4394

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4387, metadata !651), !dbg !4393
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4396
  %9 = load i8*, i8** %8, align 8, !dbg !4396, !tbaa !658
  %10 = icmp eq i8* %9, null, !dbg !4398
  %11 = add i64 %7, 1, !dbg !4399
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4387, metadata !651), !dbg !4393
  br i1 %10, label %12, label %6, !dbg !4398, !llvm.loop !4400

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4402
  ret void, !dbg !4403
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4404 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4415, metadata !651), !dbg !4423
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4416, metadata !651), !dbg !4424
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4417, metadata !651), !dbg !4425
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4418, metadata !651), !dbg !4426
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4419, metadata !651), !dbg !4427
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4428
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !4428
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4421, metadata !651), !dbg !4429
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4420, metadata !651), !dbg !4430
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4420, metadata !651), !dbg !4430
  %11 = load i32, i32* %8, align 8, !dbg !4431
  %12 = icmp ult i32 %11, 41, !dbg !4431
  br i1 %12, label %13, label %18, !dbg !4431

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4431
  %15 = sext i32 %11 to i64, !dbg !4431
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4431
  %17 = add i32 %11, 8, !dbg !4431
  store i32 %17, i32* %8, align 8, !dbg !4431
  br label %21, !dbg !4431

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4431
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4431
  store i8* %20, i8** %10, align 8, !dbg !4431
  br label %21, !dbg !4431

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4431
  %25 = load i8*, i8** %24, align 8, !dbg !4431
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4434
  store i8* %25, i8** %26, align 16, !dbg !4435, !tbaa !658
  %27 = icmp eq i8* %25, null, !dbg !4436
  br i1 %27, label %30, label %28, !dbg !4437

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4420, metadata !651), !dbg !4430
  %29 = icmp ult i32 %22, 41, !dbg !4431
  br i1 %29, label %35, label %32, !dbg !4431

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4438
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !4439
  ret void, !dbg !4439

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4431
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4431
  store i8* %34, i8** %10, align 8, !dbg !4431
  br label %40, !dbg !4431

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4431
  %37 = sext i32 %22 to i64, !dbg !4431
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4431
  %39 = add i32 %22, 8, !dbg !4431
  store i32 %39, i32* %8, align 8, !dbg !4431
  br label %40, !dbg !4431

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4431
  %44 = load i8*, i8** %43, align 8, !dbg !4431
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4434
  store i8* %44, i8** %45, align 8, !dbg !4435, !tbaa !658
  %46 = icmp eq i8* %44, null, !dbg !4436
  br i1 %46, label %30, label %47, !dbg !4437

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4420, metadata !651), !dbg !4430
  %48 = icmp ult i32 %41, 41, !dbg !4431
  br i1 %48, label %52, label %49, !dbg !4431

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4431
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4431
  store i8* %51, i8** %10, align 8, !dbg !4431
  br label %57, !dbg !4431

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4431
  %54 = sext i32 %41 to i64, !dbg !4431
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4431
  %56 = add i32 %41, 8, !dbg !4431
  store i32 %56, i32* %8, align 8, !dbg !4431
  br label %57, !dbg !4431

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4431
  %61 = load i8*, i8** %60, align 8, !dbg !4431
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4434
  store i8* %61, i8** %62, align 16, !dbg !4435, !tbaa !658
  %63 = icmp eq i8* %61, null, !dbg !4436
  br i1 %63, label %30, label %64, !dbg !4437

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4420, metadata !651), !dbg !4430
  %65 = icmp ult i32 %58, 41, !dbg !4431
  br i1 %65, label %69, label %66, !dbg !4431

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4431
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4431
  store i8* %68, i8** %10, align 8, !dbg !4431
  br label %74, !dbg !4431

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4431
  %71 = sext i32 %58 to i64, !dbg !4431
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4431
  %73 = add i32 %58, 8, !dbg !4431
  store i32 %73, i32* %8, align 8, !dbg !4431
  br label %74, !dbg !4431

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4431
  %78 = load i8*, i8** %77, align 8, !dbg !4431
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4434
  store i8* %78, i8** %79, align 8, !dbg !4435, !tbaa !658
  %80 = icmp eq i8* %78, null, !dbg !4436
  br i1 %80, label %30, label %81, !dbg !4437

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4420, metadata !651), !dbg !4430
  %82 = icmp ult i32 %75, 41, !dbg !4431
  br i1 %82, label %86, label %83, !dbg !4431

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4431
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4431
  store i8* %85, i8** %10, align 8, !dbg !4431
  br label %91, !dbg !4431

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4431
  %88 = sext i32 %75 to i64, !dbg !4431
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4431
  %90 = add i32 %75, 8, !dbg !4431
  store i32 %90, i32* %8, align 8, !dbg !4431
  br label %91, !dbg !4431

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4431
  %95 = load i8*, i8** %94, align 8, !dbg !4431
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4434
  store i8* %95, i8** %96, align 16, !dbg !4435, !tbaa !658
  %97 = icmp eq i8* %95, null, !dbg !4436
  br i1 %97, label %30, label %98, !dbg !4437

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4420, metadata !651), !dbg !4430
  %99 = icmp ult i32 %92, 41, !dbg !4431
  br i1 %99, label %103, label %100, !dbg !4431

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4431
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4431
  store i8* %102, i8** %10, align 8, !dbg !4431
  br label %108, !dbg !4431

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4431
  %105 = sext i32 %92 to i64, !dbg !4431
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4431
  %107 = add i32 %92, 8, !dbg !4431
  store i32 %107, i32* %8, align 8, !dbg !4431
  br label %108, !dbg !4431

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4431
  %111 = load i8*, i8** %110, align 8, !dbg !4431
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4434
  store i8* %111, i8** %112, align 8, !dbg !4435, !tbaa !658
  %113 = icmp eq i8* %111, null, !dbg !4436
  br i1 %113, label %30, label %114, !dbg !4437

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4420, metadata !651), !dbg !4430
  %115 = load i8*, i8** %10, align 8, !dbg !4431
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4431
  store i8* %116, i8** %10, align 8, !dbg !4431
  %117 = bitcast i8* %115 to i8**, !dbg !4431
  %118 = load i8*, i8** %117, align 8, !dbg !4431
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4434
  store i8* %118, i8** %119, align 16, !dbg !4435, !tbaa !658
  %120 = icmp eq i8* %118, null, !dbg !4436
  br i1 %120, label %30, label %121, !dbg !4437

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4420, metadata !651), !dbg !4430
  %122 = load i8*, i8** %10, align 8, !dbg !4431
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4431
  store i8* %123, i8** %10, align 8, !dbg !4431
  %124 = bitcast i8* %122 to i8**, !dbg !4431
  %125 = load i8*, i8** %124, align 8, !dbg !4431
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4434
  store i8* %125, i8** %126, align 8, !dbg !4435, !tbaa !658
  %127 = icmp eq i8* %125, null, !dbg !4436
  br i1 %127, label %30, label %128, !dbg !4437

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4420, metadata !651), !dbg !4430
  %129 = load i8*, i8** %10, align 8, !dbg !4431
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4431
  store i8* %130, i8** %10, align 8, !dbg !4431
  %131 = bitcast i8* %129 to i8**, !dbg !4431
  %132 = load i8*, i8** %131, align 8, !dbg !4431
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4434
  store i8* %132, i8** %133, align 16, !dbg !4435, !tbaa !658
  %134 = icmp eq i8* %132, null, !dbg !4436
  br i1 %134, label %30, label %135, !dbg !4437

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4420, metadata !651), !dbg !4430
  %136 = load i8*, i8** %10, align 8, !dbg !4431
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4431
  store i8* %137, i8** %10, align 8, !dbg !4431
  %138 = bitcast i8* %136 to i8**, !dbg !4431
  %139 = load i8*, i8** %138, align 8, !dbg !4431
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4434
  store i8* %139, i8** %140, align 8, !dbg !4435, !tbaa !658
  %141 = icmp eq i8* %139, null, !dbg !4436
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4420, metadata !651), !dbg !4430
  %142 = select i1 %141, i64 9, i64 10, !dbg !4437
  br label %30, !dbg !4437
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4440 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4444, metadata !651), !dbg !4453
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4445, metadata !651), !dbg !4454
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4446, metadata !651), !dbg !4455
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4447, metadata !651), !dbg !4456
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4457
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !4457
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4448, metadata !651), !dbg !4458
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4459
  call void @llvm.va_start(i8* nonnull %6), !dbg !4459
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4460
  call void @llvm.va_end(i8* nonnull %6), !dbg !4461
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !4462
  ret void, !dbg !4462
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4463 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.104, i64 0, i64 0), i32 5) #11, !dbg !4464
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.105, i64 0, i64 0)) #11, !dbg !4464
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.106, i64 0, i64 0), i32 5) #11, !dbg !4465
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.107, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.108, i64 0, i64 0)) #11, !dbg !4465
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.109, i64 0, i64 0), i32 5) #11, !dbg !4466
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4466, !tbaa !658
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !4466
  ret void, !dbg !4467
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4468 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4472, metadata !651), !dbg !4474
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4473, metadata !651), !dbg !4475
  %3 = udiv i64 9223372036854775807, %1, !dbg !4476
  %4 = icmp ult i64 %3, %0, !dbg !4476
  br i1 %4, label %5, label %6, !dbg !4478

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4479
  unreachable, !dbg !4479

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4480
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4481, metadata !651) #11, !dbg !4488
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !4490
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4487, metadata !651) #11, !dbg !4491
  %9 = icmp eq i8* %8, null, !dbg !4492
  %10 = icmp ne i64 %7, 0, !dbg !4494
  %11 = and i1 %10, %9, !dbg !4495
  br i1 %11, label %12, label %13, !dbg !4495

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4496
  unreachable, !dbg !4496

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4497
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4482 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4481, metadata !651), !dbg !4498
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4499
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4487, metadata !651), !dbg !4500
  %3 = icmp eq i8* %2, null, !dbg !4501
  %4 = icmp ne i64 %0, 0, !dbg !4502
  %5 = and i1 %4, %3, !dbg !4503
  br i1 %5, label %6, label %7, !dbg !4503

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4504
  unreachable, !dbg !4504

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4505
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4506 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4510, metadata !651), !dbg !4513
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4511, metadata !651), !dbg !4514
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4512, metadata !651), !dbg !4515
  %4 = udiv i64 9223372036854775807, %2, !dbg !4516
  %5 = icmp ult i64 %4, %1, !dbg !4516
  br i1 %5, label %6, label %7, !dbg !4518

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4519
  unreachable, !dbg !4519

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4520
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4521, metadata !651) #11, !dbg !4527
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4526, metadata !651) #11, !dbg !4529
  %9 = icmp eq i64 %8, 0, !dbg !4530
  %10 = icmp ne i8* %0, null, !dbg !4532
  %11 = and i1 %10, %9, !dbg !4533
  br i1 %11, label %12, label %13, !dbg !4533

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !4534
  br label %19, !dbg !4536

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !4537
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4521, metadata !651) #11, !dbg !4527
  %15 = icmp eq i8* %14, null, !dbg !4538
  %16 = icmp ne i64 %8, 0, !dbg !4540
  %17 = and i1 %16, %15, !dbg !4541
  br i1 %17, label %18, label %19, !dbg !4541

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4542
  unreachable, !dbg !4542

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4543
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4522 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4521, metadata !651), !dbg !4544
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4526, metadata !651), !dbg !4545
  %3 = icmp eq i64 %1, 0, !dbg !4546
  %4 = icmp ne i8* %0, null, !dbg !4547
  %5 = and i1 %4, %3, !dbg !4548
  br i1 %5, label %6, label %7, !dbg !4548

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !4549
  br label %13, !dbg !4550

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !4551
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4521, metadata !651), !dbg !4544
  %9 = icmp eq i8* %8, null, !dbg !4552
  %10 = icmp ne i64 %1, 0, !dbg !4553
  %11 = and i1 %10, %9, !dbg !4554
  br i1 %11, label %12, label %13, !dbg !4554

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4555
  unreachable, !dbg !4555

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4556
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !611 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !616, metadata !651), !dbg !4557
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !617, metadata !651), !dbg !4558
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !618, metadata !651), !dbg !4559
  %4 = load i64, i64* %1, align 8, !dbg !4560, !tbaa !1929
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !619, metadata !651), !dbg !4561
  %5 = icmp eq i8* %0, null, !dbg !4562
  br i1 %5, label %6, label %13, !dbg !4564

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4565
  br i1 %7, label %8, label %17, !dbg !4568

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4569
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !619, metadata !651), !dbg !4561
  %10 = icmp ugt i64 %2, 128, !dbg !4571
  %11 = zext i1 %10 to i64, !dbg !4571
  %12 = add nuw nsw i64 %9, %11, !dbg !4572
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !619, metadata !651), !dbg !4561
  br label %17, !dbg !4573

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4574
  %15 = icmp ugt i64 %14, %4, !dbg !4577
  br i1 %15, label %20, label %16, !dbg !4578

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4579
  unreachable, !dbg !4579

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !619, metadata !651), !dbg !4561
  store i64 %18, i64* %1, align 8, !dbg !4580, !tbaa !1929
  %19 = mul i64 %18, %2, !dbg !4581
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4521, metadata !651) #11, !dbg !4582
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4526, metadata !651) #11, !dbg !4584
  br label %27, !dbg !4585

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4586
  %22 = add i64 %4, 1, !dbg !4587
  %23 = add i64 %22, %21, !dbg !4588
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !619, metadata !651), !dbg !4561
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !619, metadata !651), !dbg !4561
  store i64 %23, i64* %1, align 8, !dbg !4580, !tbaa !1929
  %24 = mul i64 %23, %2, !dbg !4581
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4521, metadata !651) #11, !dbg !4582
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4526, metadata !651) #11, !dbg !4584
  %25 = icmp eq i64 %24, 0, !dbg !4589
  br i1 %25, label %26, label %27, !dbg !4585

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !4590
  br label %34, !dbg !4591

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !4592
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4521, metadata !651) #11, !dbg !4582
  %30 = icmp eq i8* %29, null, !dbg !4593
  %31 = icmp ne i64 %28, 0, !dbg !4594
  %32 = and i1 %31, %30, !dbg !4595
  br i1 %32, label %33, label %34, !dbg !4595

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !4596
  unreachable, !dbg !4596

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4597
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4598 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4600, metadata !651), !dbg !4601
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4481, metadata !651) #11, !dbg !4602
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4604
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4487, metadata !651) #11, !dbg !4605
  %3 = icmp eq i8* %2, null, !dbg !4606
  %4 = icmp ne i64 %0, 0, !dbg !4607
  %5 = and i1 %4, %3, !dbg !4608
  br i1 %5, label %6, label %7, !dbg !4608

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4609
  unreachable, !dbg !4609

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4610
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4611 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4615, metadata !651), !dbg !4617
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4616, metadata !651), !dbg !4618
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !616, metadata !651) #11, !dbg !4619
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !617, metadata !651) #11, !dbg !4621
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !618, metadata !651) #11, !dbg !4622
  %3 = load i64, i64* %1, align 8, !dbg !4623, !tbaa !1929
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !619, metadata !651) #11, !dbg !4624
  %4 = icmp eq i8* %0, null, !dbg !4625
  br i1 %4, label %5, label %8, !dbg !4626

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4627
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !619, metadata !651) #11, !dbg !4624
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !619, metadata !651) #11, !dbg !4624
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4628
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !619, metadata !651) #11, !dbg !4624
  store i64 %7, i64* %1, align 8, !dbg !4629, !tbaa !1929
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4521, metadata !651) #11, !dbg !4630
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4526, metadata !651) #11, !dbg !4632
  br label %17, !dbg !4633

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4634
  br i1 %9, label %11, label %10, !dbg !4635

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !4636
  unreachable, !dbg !4636

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4637
  %13 = add i64 %3, 1, !dbg !4638
  %14 = add i64 %13, %12, !dbg !4639
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !619, metadata !651) #11, !dbg !4624
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !619, metadata !651) #11, !dbg !4624
  store i64 %14, i64* %1, align 8, !dbg !4629, !tbaa !1929
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4521, metadata !651) #11, !dbg !4630
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4526, metadata !651) #11, !dbg !4632
  %15 = icmp eq i64 %14, 0, !dbg !4640
  br i1 %15, label %16, label %17, !dbg !4633

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !4641
  br label %24, !dbg !4642

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !4643
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4521, metadata !651) #11, !dbg !4630
  %20 = icmp eq i8* %19, null, !dbg !4644
  %21 = icmp ne i64 %18, 0, !dbg !4645
  %22 = and i1 %21, %20, !dbg !4646
  br i1 %22, label %23, label %24, !dbg !4646

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !4647
  unreachable, !dbg !4647

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4648
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4649 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4651, metadata !651), !dbg !4652
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4481, metadata !651) #11, !dbg !4653
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4655
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4487, metadata !651) #11, !dbg !4656
  %3 = icmp eq i8* %2, null, !dbg !4657
  %4 = icmp ne i64 %0, 0, !dbg !4658
  %5 = and i1 %4, %3, !dbg !4659
  br i1 %5, label %6, label %7, !dbg !4659

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4660
  unreachable, !dbg !4660

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4661
  ret i8* %2, !dbg !4662
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4663 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4665, metadata !651), !dbg !4668
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4666, metadata !651), !dbg !4669
  %3 = udiv i64 9223372036854775807, %1, !dbg !4670
  %4 = icmp ult i64 %3, %0, !dbg !4670
  br i1 %4, label %8, label %5, !dbg !4672

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4673
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4667, metadata !651), !dbg !4674
  %7 = icmp eq i8* %6, null, !dbg !4675
  br i1 %7, label %8, label %9, !dbg !4676

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4677
  unreachable, !dbg !4677

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4678
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4679 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4683, metadata !651), !dbg !4685
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4684, metadata !651), !dbg !4686
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4481, metadata !651) #11, !dbg !4687
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4689
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4487, metadata !651) #11, !dbg !4690
  %4 = icmp eq i8* %3, null, !dbg !4691
  %5 = icmp ne i64 %1, 0, !dbg !4692
  %6 = and i1 %5, %4, !dbg !4693
  br i1 %6, label %7, label %8, !dbg !4693

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4694
  unreachable, !dbg !4694

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4695
  ret i8* %3, !dbg !4696
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4697 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4699, metadata !651), !dbg !4700
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4701
  %3 = add i64 %2, 1, !dbg !4702
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4683, metadata !651) #11, !dbg !4703
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4684, metadata !651) #11, !dbg !4705
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4481, metadata !651) #11, !dbg !4706
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4708
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4487, metadata !651) #11, !dbg !4709
  %5 = icmp eq i8* %4, null, !dbg !4710
  %6 = icmp ne i64 %3, 0, !dbg !4711
  %7 = and i1 %6, %5, !dbg !4712
  br i1 %7, label %8, label %9, !dbg !4712

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4713
  unreachable, !dbg !4713

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !4714
  ret i8* %4, !dbg !4715
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4716 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4718, !tbaa !729
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.122, i64 0, i64 0), i32 5) #11, !dbg !4719
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i64 0, i64 0), i8* %2) #11, !dbg !4720
  tail call void @abort() #15, !dbg !4721
  unreachable, !dbg !4721
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4722 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4725, metadata !651), !dbg !4731
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4726, metadata !651), !dbg !4732
  %3 = icmp eq i64 %0, 0, !dbg !4733
  %4 = icmp eq i64 %1, 0, !dbg !4734
  %5 = or i1 %3, %4, !dbg !4735
  br i1 %5, label %12, label %6, !dbg !4735

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4736
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4728, metadata !651), !dbg !4737
  %8 = udiv i64 %7, %1, !dbg !4738
  %9 = icmp eq i64 %8, %0, !dbg !4740
  br i1 %9, label %12, label %10, !dbg !4741

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4742
  store i32 12, i32* %11, align 4, !dbg !4744, !tbaa !729
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4725, metadata !651), !dbg !4731
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4726, metadata !651), !dbg !4732
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4745
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4727, metadata !651), !dbg !4746
  br label %16, !dbg !4747

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4748
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4749 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4766, metadata !651), !dbg !4775
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4767, metadata !651), !dbg !4776
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4768, metadata !651), !dbg !4777
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4769, metadata !651), !dbg !4778
  %6 = bitcast i32* %5 to i8*, !dbg !4779
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4779
  %7 = icmp eq i32* %0, null, !dbg !4780
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4766, metadata !651), !dbg !4775
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4782
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4766, metadata !651), !dbg !4775
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4783
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4770, metadata !651), !dbg !4784
  %10 = icmp ugt i64 %9, -3, !dbg !4785
  %11 = icmp ne i64 %2, 0, !dbg !4786
  %12 = and i1 %11, %10, !dbg !4787
  br i1 %12, label %13, label %18, !dbg !4787

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4788
  br i1 %14, label %18, label %15, !dbg !4789

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4790, !tbaa !680
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4772, metadata !651), !dbg !4791
  %17 = zext i8 %16 to i32, !dbg !4792
  store i32 %17, i32* %8, align 4, !dbg !4793, !tbaa !729
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4794
  ret i64 %19, !dbg !4794
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4795 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4840, metadata !651), !dbg !4845
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4846
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4847, metadata !651), !dbg !4850
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4852
  %4 = load i32, i32* %3, align 8, !dbg !4852, !tbaa !4853
  %5 = and i32 %4, 32, !dbg !4852
  %6 = icmp eq i32 %5, 0, !dbg !4854
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4855
  %8 = icmp ne i32 %7, 0, !dbg !4856
  br i1 %6, label %9, label %19, !dbg !4857

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4859
  %11 = xor i1 %8, true, !dbg !4860
  %12 = or i1 %10, %11, !dbg !4860
  %13 = sext i1 %8 to i32, !dbg !4860
  br i1 %12, label %22, label %14, !dbg !4860

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4861
  %16 = load i32, i32* %15, align 4, !dbg !4861, !tbaa !729
  %17 = icmp ne i32 %16, 9, !dbg !4862
  %18 = sext i1 %17 to i32, !dbg !4863
  br label %22, !dbg !4863

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4864

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4866
  store i32 0, i32* %21, align 4, !dbg !4868, !tbaa !729
  br label %22, !dbg !4866

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4869
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4870 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4875, metadata !651), !dbg !4878
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4876, metadata !651), !dbg !4879
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4880
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4877, metadata !651), !dbg !4881
  %3 = icmp eq i8* %2, null, !dbg !4882
  br i1 %3, label %11, label %4, !dbg !4884

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.132, i64 0, i64 0)) #14, !dbg !4885
  %6 = icmp eq i32 %5, 0, !dbg !4890
  br i1 %6, label %10, label %7, !dbg !4891

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.133, i64 0, i64 0)) #14, !dbg !4892
  %9 = icmp eq i32 %8, 0, !dbg !4893
  br i1 %9, label %10, label %11, !dbg !4894

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4876, metadata !651), !dbg !4879
  br label %11, !dbg !4895

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4896
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4897 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4903, metadata !651), !dbg !4977
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4970, metadata !651), !dbg !4980
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4981
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4901, metadata !651), !dbg !4982
  %4 = icmp eq i8* %3, null, !dbg !4983
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), i8* %3, !dbg !4985
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4901, metadata !651), !dbg !4982
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4986, !tbaa !658
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4917, metadata !651) #11, !dbg !4987
  %7 = icmp eq i8* %6, null, !dbg !4988
  br i1 %7, label %8, label %123, !dbg !4989

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.137, i64 0, i64 0)) #11, !dbg !4990
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4918, metadata !651) #11, !dbg !4991
  %10 = icmp eq i8* %9, null, !dbg !4992
  br i1 %10, label %14, label %11, !dbg !4994

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4995, !tbaa !680
  %13 = icmp eq i8 %12, 0, !dbg !4996
  br i1 %13, label %14, label %15, !dbg !4997

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4998

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.138, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4918, metadata !651) #11, !dbg !4991
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4999
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4921, metadata !651) #11, !dbg !5000
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4923, metadata !651) #11, !dbg !5001
  %18 = icmp eq i64 %17, 0, !dbg !5002
  br i1 %18, label %24, label %19, !dbg !5003

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5004
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5004
  %22 = load i8, i8* %21, align 1, !dbg !5004, !tbaa !680
  %23 = icmp ne i8 %22, 47, !dbg !5004
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5005
  %27 = add i64 %17, 14, !dbg !5006
  %28 = add i64 %27, %26, !dbg !5007
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !5008
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4920, metadata !651) #11, !dbg !5009
  %30 = icmp eq i8* %29, null, !dbg !5010
  br i1 %30, label %121, label %31, !dbg !5010

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !5011
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5014

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5015, !tbaa !680
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5017
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.139, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !5018
  br label %37, !dbg !5019

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5017
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.139, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !5018
  br label %37, !dbg !5019

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !5020
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4925, metadata !651) #11, !dbg !5021
  %39 = icmp slt i32 %38, 0, !dbg !5022
  br i1 %39, label %119, label %40, !dbg !5023

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.140, i64 0, i64 0)) #11, !dbg !5024
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4926, metadata !651) #11, !dbg !5025
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5026
  br i1 %42, label %43, label %45, !dbg !5027

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #11, !dbg !5028
  br label %119, !dbg !5030

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4967, metadata !651) #11, !dbg !5031
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4968, metadata !651) #11, !dbg !5032
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5033

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !5034

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4967, metadata !651) #11, !dbg !5031
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4968, metadata !651) #11, !dbg !5032
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #11, !dbg !5034
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #11, !dbg !5035
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5036, metadata !651) #11, !dbg !5041
  %54 = load i8*, i8** %48, align 8, !dbg !5043, !tbaa !5044
  %55 = load i8*, i8** %49, align 8, !dbg !5043, !tbaa !5045
  %56 = icmp ult i8* %54, %55, !dbg !5043
  br i1 %56, label %59, label %57, !dbg !5043, !prof !679

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !5043
  br label %63, !dbg !5043

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !5043
  store i8* %60, i8** %48, align 8, !dbg !5043, !tbaa !5044
  %61 = load i8, i8* %54, align 1, !dbg !5043, !tbaa !680
  %62 = zext i8 %61 to i32, !dbg !5043
  br label %63, !dbg !5043

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !5043
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4969, metadata !651) #11, !dbg !5046
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !5047, !llvm.loop !5048

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !5053

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5036, metadata !651) #11, !dbg !5055
  %67 = load i8*, i8** %48, align 8, !dbg !5053, !tbaa !5044
  %68 = load i8*, i8** %49, align 8, !dbg !5053, !tbaa !5045
  %69 = icmp ult i8* %67, %68, !dbg !5053
  br i1 %69, label %72, label %70, !dbg !5053, !prof !679

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !5053
  br label %76, !dbg !5053

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !5053
  store i8* %73, i8** %48, align 8, !dbg !5053, !tbaa !5044
  %74 = load i8, i8* %67, align 1, !dbg !5053, !tbaa !680
  %75 = zext i8 %74 to i32, !dbg !5053
  br label %76, !dbg !5053

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !5053
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4969, metadata !651) #11, !dbg !5046
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !5056, !llvm.loop !5057

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #11, !dbg !5060
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.141, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #11, !dbg !5061
  %81 = icmp slt i32 %80, 2, !dbg !5063
  br i1 %81, label %112, label %82, !dbg !5064

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !5065
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4974, metadata !651) #11, !dbg !5066
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !5067
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4975, metadata !651) #11, !dbg !5068
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4976, metadata !651) #11, !dbg !5069
  %85 = icmp eq i64 %51, 0, !dbg !5070
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !5072

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4968, metadata !651) #11, !dbg !5032
  %90 = add i64 %87, 2, !dbg !5073
  %91 = call noalias i8* @malloc(i64 %90) #11, !dbg !5075
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4967, metadata !651) #11, !dbg !5031
  br label %96, !dbg !5076

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !5077
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4968, metadata !651) #11, !dbg !5032
  %94 = add i64 %93, 1, !dbg !5079
  %95 = call i8* @realloc(i8* %52, i64 %94) #11, !dbg !5080
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4967, metadata !651) #11, !dbg !5031
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4967, metadata !651) #11, !dbg !5031
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4968, metadata !651) #11, !dbg !5032
  %99 = icmp eq i8* %98, null, !dbg !5081
  br i1 %99, label %100, label %102, !dbg !5083

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4968, metadata !651) #11, !dbg !5032
  call void @free(i8* %52) #11, !dbg !5084
  br label %112, !dbg !5086

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !5087
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !5088
  %104 = xor i64 %84, -1, !dbg !5089
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5089
  %106 = xor i64 %83, -1, !dbg !5090
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !5090
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !5091, metadata !651) #11, !dbg !5099
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !5098, metadata !651) #11, !dbg !5099
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #11, !dbg !5101
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #11, !dbg !5102
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5091, metadata !651) #11, !dbg !5103
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !5098, metadata !651) #11, !dbg !5103
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #11, !dbg !5105
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #11, !dbg !5106
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4967, metadata !651) #11, !dbg !5031
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4968, metadata !651) #11, !dbg !5032
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !5087
  br label %50, !dbg !5107, !llvm.loop !5057

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !5087
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !5108
  %116 = icmp eq i64 %113, 0, !dbg !5109
  br i1 %116, label %119, label %117, !dbg !5111

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !5112
  store i8 0, i8* %118, align 1, !dbg !5114, !tbaa !680
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4917, metadata !651) #11, !dbg !4987
  call void @free(i8* %29) #11, !dbg !5115
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4917, metadata !651) #11, !dbg !4987
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !5116, !tbaa !658
  br label %123, !dbg !5117

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4917, metadata !651) #11, !dbg !4987
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4902, metadata !651), !dbg !5118
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4902, metadata !651), !dbg !5118
  %125 = load i8, i8* %124, align 1, !dbg !5119, !tbaa !680
  %126 = icmp eq i8 %125, 0, !dbg !5121
  br i1 %126, label %152, label %127, !dbg !5122

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !5123

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4902, metadata !651), !dbg !5118
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !5123
  %132 = icmp eq i32 %131, 0, !dbg !5125
  br i1 %132, label %139, label %133, !dbg !5126

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !5127
  br i1 %134, label %135, label %143, !dbg !5128

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !5129
  %137 = load i8, i8* %136, align 1, !dbg !5129, !tbaa !680
  %138 = icmp eq i8 %137, 0, !dbg !5130
  br i1 %138, label %139, label %143, !dbg !5131

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !5132
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !5134
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !5135
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4901, metadata !651), !dbg !4982
  br label %152, !dbg !5136

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !5137
  %145 = add i64 %144, 1, !dbg !5138
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !5139
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4902, metadata !651), !dbg !5118
  %147 = call i64 @strlen(i8* %146) #14, !dbg !5140
  %148 = add i64 %147, 1, !dbg !5141
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !5142
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4902, metadata !651), !dbg !5118
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4902, metadata !651), !dbg !5118
  %150 = load i8, i8* %149, align 1, !dbg !5119, !tbaa !680
  %151 = icmp eq i8 %150, 0, !dbg !5121
  br i1 %151, label %152, label %128, !dbg !5122, !llvm.loop !5143

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4901, metadata !651), !dbg !4982
  %154 = load i8, i8* %153, align 1, !dbg !5145, !tbaa !680
  %155 = icmp eq i8 %154, 0, !dbg !5147
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.142, i64 0, i64 0), i8* %153, !dbg !5148
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4901, metadata !651), !dbg !4982
  ret i8* %156, !dbg !5149
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !5150 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5195, metadata !651), !dbg !5199
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5196, metadata !651), !dbg !5200
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5198, metadata !651), !dbg !5201
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5202
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5197, metadata !651), !dbg !5203
  %3 = icmp slt i32 %2, 0, !dbg !5204
  br i1 %3, label %4, label %6, !dbg !5206

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5207
  br label %24, !dbg !5208

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !5209
  %8 = icmp eq i32 %7, 0, !dbg !5209
  br i1 %8, label %13, label %9, !dbg !5211

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5212
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !5213
  %12 = icmp eq i64 %11, -1, !dbg !5214
  br i1 %12, label %16, label %13, !dbg !5215

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !5216
  %15 = icmp eq i32 %14, 0, !dbg !5216
  br i1 %15, label %16, label %18, !dbg !5217

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5196, metadata !651), !dbg !5200
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5218
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5198, metadata !651), !dbg !5201
  br label %24, !dbg !5219

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !5220
  %20 = load i32, i32* %19, align 4, !dbg !5220, !tbaa !729
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5196, metadata !651), !dbg !5200
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5196, metadata !651), !dbg !5200
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5218
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5198, metadata !651), !dbg !5201
  %22 = icmp eq i32 %20, 0, !dbg !5221
  br i1 %22, label %24, label %23, !dbg !5219

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5223, !tbaa !729
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !5198, metadata !651), !dbg !5201
  br label %24, !dbg !5225

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !5226
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5227 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5272, metadata !651), !dbg !5273
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5274
  br i1 %2, label %6, label %3, !dbg !5276

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !5277
  %5 = icmp eq i32 %4, 0, !dbg !5277
  br i1 %5, label %6, label %8, !dbg !5278

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5279
  br label %17, !dbg !5280

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5281, metadata !651) #11, !dbg !5286
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5288
  %10 = load i32, i32* %9, align 8, !dbg !5288, !tbaa !4853
  %11 = and i32 %10, 256, !dbg !5290
  %12 = icmp eq i32 %11, 0, !dbg !5290
  br i1 %12, label %15, label %13, !dbg !5291

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !5292
  br label %15, !dbg !5292

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5293
  br label %17, !dbg !5294

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5295
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5296 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5342, metadata !651), !dbg !5348
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5343, metadata !651), !dbg !5349
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5344, metadata !651), !dbg !5350
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5351
  %5 = load i8*, i8** %4, align 8, !dbg !5351, !tbaa !5045
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5352
  %7 = load i8*, i8** %6, align 8, !dbg !5352, !tbaa !5044
  %8 = icmp eq i8* %5, %7, !dbg !5353
  br i1 %8, label %9, label %28, !dbg !5354

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5355
  %11 = load i8*, i8** %10, align 8, !dbg !5355, !tbaa !673
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5356
  %13 = load i8*, i8** %12, align 8, !dbg !5356, !tbaa !5357
  %14 = icmp eq i8* %11, %13, !dbg !5358
  br i1 %14, label %15, label %28, !dbg !5359

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5360
  %17 = load i8*, i8** %16, align 8, !dbg !5360, !tbaa !5361
  %18 = icmp eq i8* %17, null, !dbg !5362
  br i1 %18, label %19, label %28, !dbg !5363

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5364
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !5365
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5345, metadata !651), !dbg !5366
  %22 = icmp eq i64 %21, -1, !dbg !5367
  br i1 %22, label %30, label %23, !dbg !5369

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5370
  %25 = load i32, i32* %24, align 8, !dbg !5371, !tbaa !4853
  %26 = and i32 %25, -17, !dbg !5371
  store i32 %26, i32* %24, align 8, !dbg !5371, !tbaa !4853
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5372
  store i64 %21, i64* %27, align 8, !dbg !5373, !tbaa !5374
  br label %30, !dbg !5375

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5376
  br label %30, !dbg !5377

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5378
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
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !128, !137, !144, !162, !169, !595, !598, !240, !606, !623, !625, !627, !630, !632, !249, !634, !636, !638}
!llvm.ident = !{!640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640}
!llvm.module.flags = !{!641, !642, !643, !644, !645}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "args", scope: !2, file: !3, line: 188, type: !125, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !98, globals: !104)
!3 = !DIFile(filename: "src/expr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !9, !13, !63, !77, !87}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "valtype", file: !3, line: 168, size: 32, elements: !6)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "integer", value: 0)
!8 = !DIEnumerator(name: "string", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 155, size: 32, elements: !10)
!10 = !{!11, !12}
!11 = !DIEnumerator(name: "EXPR_INVALID", value: 2)
!12 = !DIEnumerator(name: "EXPR_FAILURE", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !14, file: !3, line: 840, size: 32, elements: !56)
!14 = distinct !DISubprogram(name: "eval2", scope: !3, file: !3, line: 829, type: !15, isLocal: true, isDefinition: true, scopeLine: 830, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !46)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !45}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "VALUE", file: !3, line: 185, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "valinfo", file: !3, line: 176, size: 192, elements: !20)
!20 = !{!21, !23}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !19, file: !3, line: 178, baseType: !22, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "TYPE", file: !3, line: 173, baseType: !5)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !19, file: !3, line: 183, baseType: !24, size: 128, offset: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !19, file: !3, line: 179, size: 128, elements: !25)
!25 = !{!26, !42}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !24, file: !3, line: 181, baseType: !27, size: 128)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpz_t", file: !28, line: 164, baseType: !29)
!28 = !DIFile(filename: "/usr/include/gmp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !40)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mpz_struct", file: !28, line: 158, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 150, size: 128, elements: !32)
!32 = !{!33, !35, !36}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_mp_alloc", scope: !31, file: !28, line: 152, baseType: !34, size: 32)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_mp_size", scope: !31, file: !28, line: 154, baseType: !34, size: 32, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_mp_d", scope: !31, file: !28, line: 157, baseType: !37, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp_limb_t", file: !28, line: 141, baseType: !39)
!39 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!40 = !{!41}
!41 = !DISubrange(count: 1)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !24, file: !3, line: 182, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!46 = !{!47, !48, !49, !51, !52, !53}
!47 = !DILocalVariable(name: "evaluate", arg: 1, scope: !14, file: !3, line: 829, type: !45)
!48 = !DILocalVariable(name: "l", scope: !14, file: !3, line: 831, type: !17)
!49 = !DILocalVariable(name: "r", scope: !50, file: !3, line: 839, type: !17)
!50 = distinct !DILexicalBlock(scope: !14, file: !3, line: 838, column: 5)
!51 = !DILocalVariable(name: "fxn", scope: !50, file: !3, line: 843, type: !13)
!52 = !DILocalVariable(name: "val", scope: !50, file: !3, line: 844, type: !45)
!53 = !DILocalVariable(name: "cmp", scope: !54, file: !3, line: 864, type: !34)
!54 = distinct !DILexicalBlock(scope: !55, file: !3, line: 863, column: 9)
!55 = distinct !DILexicalBlock(scope: !50, file: !3, line: 862, column: 11)
!56 = !{!57, !58, !59, !60, !61, !62}
!57 = !DIEnumerator(name: "less_than", value: 0)
!58 = !DIEnumerator(name: "less_equal", value: 1)
!59 = !DIEnumerator(name: "equal", value: 2)
!60 = !DIEnumerator(name: "not_equal", value: 3)
!61 = !DIEnumerator(name: "greater_equal", value: 4)
!62 = !DIEnumerator(name: "greater_than", value: 5)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !64, line: 32, size: 32, elements: !65)
!64 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!66 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!67 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!68 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!69 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!70 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!71 = !DIEnumerator(name: "c_quoting_style", value: 5)
!72 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!73 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!74 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!75 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!76 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !78, file: !3, line: 801, size: 32, elements: !84)
!78 = distinct !DISubprogram(name: "eval3", scope: !3, file: !3, line: 797, type: !15, isLocal: true, isDefinition: true, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !79)
!79 = !{!80, !81, !82, !83}
!80 = !DILocalVariable(name: "evaluate", arg: 1, scope: !78, file: !3, line: 797, type: !45)
!81 = !DILocalVariable(name: "l", scope: !78, file: !3, line: 799, type: !17)
!82 = !DILocalVariable(name: "r", scope: !78, file: !3, line: 800, type: !17)
!83 = !DILocalVariable(name: "fxn", scope: !78, file: !3, line: 801, type: !77)
!84 = !{!85, !86}
!85 = !DIEnumerator(name: "plus", value: 0)
!86 = !DIEnumerator(name: "minus", value: 1)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !88, file: !3, line: 762, size: 32, elements: !94)
!88 = distinct !DISubprogram(name: "eval4", scope: !3, file: !3, line: 758, type: !15, isLocal: true, isDefinition: true, scopeLine: 759, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !89)
!89 = !{!90, !91, !92, !93}
!90 = !DILocalVariable(name: "evaluate", arg: 1, scope: !88, file: !3, line: 758, type: !45)
!91 = !DILocalVariable(name: "l", scope: !88, file: !3, line: 760, type: !17)
!92 = !DILocalVariable(name: "r", scope: !88, file: !3, line: 761, type: !17)
!93 = !DILocalVariable(name: "fxn", scope: !88, file: !3, line: 762, type: !87)
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "multiply", value: 0)
!96 = !DIEnumerator(name: "divide", value: 1)
!97 = !DIEnumerator(name: "mod", value: 2)
!98 = !{!99, !101, !102, !39, !103}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!104 = !{!0, !105}
!105 = !DIGlobalVariableExpression(var: !106)
!106 = distinct !DIGlobalVariable(name: "infomap", scope: !107, file: !108, line: 632, type: !122, isLocal: true, isDefinition: true)
!107 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !108, file: !108, line: 630, type: !109, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !111)
!108 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !DISubroutineType(types: !110)
!110 = !{null, !99}
!111 = !{!112, !113, !114, !121}
!112 = !DILocalVariable(name: "program", arg: 1, scope: !107, file: !108, line: 630, type: !99)
!113 = !DILocalVariable(name: "node", scope: !107, file: !108, line: 642, type: !99)
!114 = !DILocalVariable(name: "map_prog", scope: !107, file: !108, line: 643, type: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !107, file: !108, line: 632, size: 128, elements: !118)
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !117, file: !108, line: 632, baseType: !99, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !117, file: !108, line: 632, baseType: !99, size: 64, offset: 64)
!121 = !DILocalVariable(name: "lc_messages", scope: !107, file: !108, line: 655, type: !99)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 896, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 7)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!126 = !DIGlobalVariableExpression(var: !127)
!127 = distinct !DIGlobalVariable(name: "file_name", scope: !128, file: !134, line: 36, type: !99, isLocal: true, isDefinition: true)
!128 = distinct !DICompileUnit(language: DW_LANG_C99, file: !129, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !130, globals: !131)
!129 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!130 = !{}
!131 = !{!126, !132}
!132 = !DIGlobalVariableExpression(var: !133)
!133 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !128, file: !134, line: 46, type: !45, isLocal: true, isDefinition: true)
!134 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!135 = !DIGlobalVariableExpression(var: !136)
!136 = distinct !DIGlobalVariable(name: "exit_failure", scope: !137, file: !140, line: 24, type: !141, isLocal: false, isDefinition: true)
!137 = distinct !DICompileUnit(language: DW_LANG_C99, file: !138, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !130, globals: !139)
!138 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!139 = !{!135}
!140 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!141 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!142 = !DIGlobalVariableExpression(var: !143)
!143 = distinct !DIGlobalVariable(name: "long_options", scope: !144, file: !147, line: 33, type: !148, isLocal: true, isDefinition: true)
!144 = distinct !DICompileUnit(language: DW_LANG_C99, file: !145, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !130, globals: !146)
!145 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!146 = !{!142}
!147 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 768, elements: !158)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !151, line: 50, size: 256, elements: !152)
!151 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!152 = !{!153, !154, !155, !157}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !150, file: !151, line: 52, baseType: !99, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !150, file: !151, line: 55, baseType: !34, size: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !150, file: !151, line: 56, baseType: !156, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !150, file: !151, line: 57, baseType: !34, size: 32, offset: 192)
!158 = !{!159}
!159 = !DISubrange(count: 3)
!160 = !DIGlobalVariableExpression(var: !161)
!161 = distinct !DIGlobalVariable(name: "program_name", scope: !162, file: !166, line: 33, type: !99, isLocal: false, isDefinition: true)
!162 = distinct !DICompileUnit(language: DW_LANG_C99, file: !163, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !130, retainedTypes: !164, globals: !165)
!163 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!164 = !{!101, !43}
!165 = !{!160}
!166 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !169, file: !199, line: 77, type: !234, isLocal: false, isDefinition: true)
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !171, retainedTypes: !192, globals: !196)
!170 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!171 = !{!63, !172, !177}
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !64, line: 242, size: 32, elements: !173)
!173 = !{!174, !175, !176}
!174 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!175 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!176 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !178, line: 46, size: 32, elements: !179)
!178 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!179 = !{!180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191}
!180 = !DIEnumerator(name: "_ISupper", value: 256)
!181 = !DIEnumerator(name: "_ISlower", value: 512)
!182 = !DIEnumerator(name: "_ISalpha", value: 1024)
!183 = !DIEnumerator(name: "_ISdigit", value: 2048)
!184 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!185 = !DIEnumerator(name: "_ISspace", value: 8192)
!186 = !DIEnumerator(name: "_ISprint", value: 16384)
!187 = !DIEnumerator(name: "_ISgraph", value: 32768)
!188 = !DIEnumerator(name: "_ISblank", value: 1)
!189 = !DIEnumerator(name: "_IScntrl", value: 2)
!190 = !DIEnumerator(name: "_ISpunct", value: 4)
!191 = !DIEnumerator(name: "_ISalnum", value: 8)
!192 = !{!34, !193, !194, !43}
!193 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !195, line: 62, baseType: !39)
!195 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!196 = !{!167, !197, !204, !216, !218, !223, !230, !232}
!197 = !DIGlobalVariableExpression(var: !198)
!198 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !169, file: !199, line: 93, type: !200, isLocal: false, isDefinition: true)
!199 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 320, elements: !202)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!202 = !{!203}
!203 = !DISubrange(count: 10)
!204 = !DIGlobalVariableExpression(var: !205)
!205 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !169, file: !199, line: 1043, type: !206, isLocal: false, isDefinition: true)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !199, line: 57, size: 448, elements: !207)
!207 = !{!208, !209, !210, !214, !215}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !206, file: !199, line: 60, baseType: !63, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !206, file: !199, line: 63, baseType: !34, size: 32, offset: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !206, file: !199, line: 67, baseType: !211, size: 256, offset: 64)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 8)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !206, file: !199, line: 70, baseType: !99, size: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !206, file: !199, line: 73, baseType: !99, size: 64, offset: 384)
!216 = !DIGlobalVariableExpression(var: !217)
!217 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !169, file: !199, line: 108, type: !206, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219)
!219 = distinct !DIGlobalVariable(name: "slot0", scope: !169, file: !199, line: 834, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2048, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 256)
!223 = !DIGlobalVariableExpression(var: !224)
!224 = distinct !DIGlobalVariable(name: "slotvec", scope: !169, file: !199, line: 837, type: !225, isLocal: true, isDefinition: true)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !199, line: 826, size: 128, elements: !227)
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !226, file: !199, line: 828, baseType: !194, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !226, file: !199, line: 829, baseType: !43, size: 64, offset: 64)
!230 = !DIGlobalVariableExpression(var: !231)
!231 = distinct !DIGlobalVariable(name: "nslots", scope: !169, file: !199, line: 835, type: !34, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233)
!233 = distinct !DIGlobalVariable(name: "slotvec0", scope: !169, file: !199, line: 836, type: !226, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 704, elements: !236)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!236 = !{!237}
!237 = !DISubrange(count: 11)
!238 = !DIGlobalVariableExpression(var: !239)
!239 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !240, file: !243, line: 26, type: !244, isLocal: false, isDefinition: true)
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !130, globals: !242)
!241 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!242 = !{!238}
!243 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 376, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 47)
!247 = !DIGlobalVariableExpression(var: !248)
!248 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !249, file: !593, line: 120, type: !594, isLocal: true, isDefinition: true)
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !251, retainedTypes: !590, globals: !592)
!250 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!251 = !{!252}
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !253, line: 41, size: 32, elements: !254)
!253 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!255 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!256 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!257 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!258 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!259 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!260 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!261 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!262 = !DIEnumerator(name: "DAY_1", value: 131079)
!263 = !DIEnumerator(name: "DAY_2", value: 131080)
!264 = !DIEnumerator(name: "DAY_3", value: 131081)
!265 = !DIEnumerator(name: "DAY_4", value: 131082)
!266 = !DIEnumerator(name: "DAY_5", value: 131083)
!267 = !DIEnumerator(name: "DAY_6", value: 131084)
!268 = !DIEnumerator(name: "DAY_7", value: 131085)
!269 = !DIEnumerator(name: "ABMON_1", value: 131086)
!270 = !DIEnumerator(name: "ABMON_2", value: 131087)
!271 = !DIEnumerator(name: "ABMON_3", value: 131088)
!272 = !DIEnumerator(name: "ABMON_4", value: 131089)
!273 = !DIEnumerator(name: "ABMON_5", value: 131090)
!274 = !DIEnumerator(name: "ABMON_6", value: 131091)
!275 = !DIEnumerator(name: "ABMON_7", value: 131092)
!276 = !DIEnumerator(name: "ABMON_8", value: 131093)
!277 = !DIEnumerator(name: "ABMON_9", value: 131094)
!278 = !DIEnumerator(name: "ABMON_10", value: 131095)
!279 = !DIEnumerator(name: "ABMON_11", value: 131096)
!280 = !DIEnumerator(name: "ABMON_12", value: 131097)
!281 = !DIEnumerator(name: "MON_1", value: 131098)
!282 = !DIEnumerator(name: "MON_2", value: 131099)
!283 = !DIEnumerator(name: "MON_3", value: 131100)
!284 = !DIEnumerator(name: "MON_4", value: 131101)
!285 = !DIEnumerator(name: "MON_5", value: 131102)
!286 = !DIEnumerator(name: "MON_6", value: 131103)
!287 = !DIEnumerator(name: "MON_7", value: 131104)
!288 = !DIEnumerator(name: "MON_8", value: 131105)
!289 = !DIEnumerator(name: "MON_9", value: 131106)
!290 = !DIEnumerator(name: "MON_10", value: 131107)
!291 = !DIEnumerator(name: "MON_11", value: 131108)
!292 = !DIEnumerator(name: "MON_12", value: 131109)
!293 = !DIEnumerator(name: "AM_STR", value: 131110)
!294 = !DIEnumerator(name: "PM_STR", value: 131111)
!295 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!296 = !DIEnumerator(name: "D_FMT", value: 131113)
!297 = !DIEnumerator(name: "T_FMT", value: 131114)
!298 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!299 = !DIEnumerator(name: "ERA", value: 131116)
!300 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!301 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!302 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!303 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!304 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!305 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!306 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!307 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!308 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!309 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!310 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!311 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!312 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!313 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!314 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!315 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!316 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!317 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!318 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!319 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!320 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!321 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!322 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!323 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!324 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!325 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!326 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!327 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!328 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!329 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!330 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!331 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!332 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!333 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!334 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!335 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!336 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!337 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!338 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!339 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!340 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!341 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!342 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!343 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!344 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!345 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!346 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!347 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!348 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!349 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!350 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!351 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!352 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!353 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!354 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!355 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!356 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!357 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!358 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!359 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!360 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!361 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!362 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!363 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!364 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!365 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!366 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!367 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!368 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!369 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!370 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!371 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!372 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!373 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!374 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!375 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!376 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!377 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!378 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!379 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!380 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!381 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!382 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!383 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!384 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!385 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!386 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!387 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!388 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!389 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!390 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!391 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!392 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!393 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!394 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!395 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!396 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!397 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!398 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!399 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!400 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!401 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!402 = !DIEnumerator(name: "CODESET", value: 14)
!403 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!404 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!405 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!406 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!449 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!450 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!451 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!452 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!453 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!454 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!455 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!456 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!457 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!458 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!459 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!474 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!475 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!476 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!477 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!478 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!479 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!480 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!481 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!482 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!483 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!484 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!485 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!486 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!487 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!488 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!489 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!490 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!491 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!492 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!493 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!494 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!495 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!496 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!513 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!514 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!517 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!518 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!519 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!520 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!521 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!522 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!523 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!524 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!525 = !DIEnumerator(name: "THOUSEP", value: 65537)
!526 = !DIEnumerator(name: "__GROUPING", value: 65538)
!527 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!528 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!529 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!530 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!531 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!532 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!533 = !DIEnumerator(name: "__YESSTR", value: 327682)
!534 = !DIEnumerator(name: "__NOSTR", value: 327683)
!535 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!536 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!537 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!538 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!539 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!540 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!541 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!542 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!543 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!544 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!545 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!546 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!547 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!548 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!549 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!550 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!551 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!552 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!553 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!554 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!555 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!556 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!557 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!558 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!559 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!560 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!561 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!562 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!563 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!564 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!565 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!566 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!567 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!568 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!569 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!570 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!571 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!588 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!589 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!590 = !{!101, !43, !591}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!592 = !{!247}
!593 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!594 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !99)
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !130, retainedTypes: !597)
!596 = !DIFile(filename: "./lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!597 = !{!103}
!598 = distinct !DICompileUnit(language: DW_LANG_C99, file: !599, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !600, retainedTypes: !605)
!599 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!600 = !{!601}
!601 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !602, line: 41, size: 32, elements: !603)
!602 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!603 = !{!604}
!604 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!605 = !{!101}
!606 = distinct !DICompileUnit(language: DW_LANG_C99, file: !607, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !608, retainedTypes: !622)
!607 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!608 = !{!609}
!609 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !611, file: !610, line: 192, size: 32, elements: !620)
!610 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!611 = distinct !DISubprogram(name: "x2nrealloc", scope: !610, file: !610, line: 180, type: !612, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !615)
!612 = !DISubroutineType(types: !613)
!613 = !{!101, !101, !614, !194}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!615 = !{!616, !617, !618, !619}
!616 = !DILocalVariable(name: "p", arg: 1, scope: !611, file: !610, line: 180, type: !101)
!617 = !DILocalVariable(name: "pn", arg: 2, scope: !611, file: !610, line: 180, type: !614)
!618 = !DILocalVariable(name: "s", arg: 3, scope: !611, file: !610, line: 180, type: !194)
!619 = !DILocalVariable(name: "n", scope: !611, file: !610, line: 182, type: !194)
!620 = !{!621}
!621 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!622 = !{!194, !43, !101}
!623 = distinct !DICompileUnit(language: DW_LANG_C99, file: !624, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !130)
!624 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!625 = distinct !DICompileUnit(language: DW_LANG_C99, file: !626, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !130, retainedTypes: !605)
!626 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!627 = distinct !DICompileUnit(language: DW_LANG_C99, file: !628, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !130, retainedTypes: !629)
!628 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!629 = !{!194}
!630 = distinct !DICompileUnit(language: DW_LANG_C99, file: !631, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !130)
!631 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!632 = distinct !DICompileUnit(language: DW_LANG_C99, file: !633, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !130)
!633 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!634 = distinct !DICompileUnit(language: DW_LANG_C99, file: !635, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !130)
!635 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!636 = distinct !DICompileUnit(language: DW_LANG_C99, file: !637, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !130, retainedTypes: !605)
!637 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!638 = distinct !DICompileUnit(language: DW_LANG_C99, file: !639, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !130, retainedTypes: !605)
!639 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!640 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!641 = !{i32 2, !"Dwarf Version", i32 4}
!642 = !{i32 2, !"Debug Info Version", i32 3}
!643 = !{i32 1, !"wchar_size", i32 4}
!644 = !{i32 7, !"PIC Level", i32 2}
!645 = !{i32 7, !"PIE Level", i32 2}
!646 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 196, type: !647, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !649)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !34}
!649 = !{!650}
!650 = !DILocalVariable(name: "status", arg: 1, scope: !646, file: !3, line: 196, type: !34)
!651 = !DIExpression()
!652 = !DILocation(line: 196, column: 12, scope: !646)
!653 = !DILocation(line: 198, column: 14, scope: !654)
!654 = distinct !DILexicalBlock(scope: !646, file: !3, line: 198, column: 7)
!655 = !DILocation(line: 198, column: 7, scope: !646)
!656 = !DILocation(line: 199, column: 5, scope: !657)
!657 = distinct !DILexicalBlock(scope: !654, file: !3, line: 199, column: 5)
!658 = !{!659, !659, i64 0}
!659 = !{!"any pointer", !660, i64 0}
!660 = !{!"omnipotent char", !661, i64 0}
!661 = !{!"Simple C/C++ TBAA"}
!662 = !DILocation(line: 202, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !654, file: !3, line: 201, column: 5)
!664 = !DILocalVariable(name: "__c", arg: 1, scope: !665, file: !666, line: 105, type: !34)
!665 = distinct !DISubprogram(name: "putchar_unlocked", scope: !666, file: !666, line: 105, type: !667, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !669)
!666 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!667 = !DISubroutineType(types: !668)
!668 = !{!34, !34}
!669 = !{!664}
!670 = !DILocation(line: 105, column: 23, scope: !665, inlinedAt: !671)
!671 = distinct !DILocation(line: 207, column: 7, scope: !663)
!672 = !DILocation(line: 107, column: 10, scope: !665, inlinedAt: !671)
!673 = !{!674, !659, i64 40}
!674 = !{!"_IO_FILE", !675, i64 0, !659, i64 8, !659, i64 16, !659, i64 24, !659, i64 32, !659, i64 40, !659, i64 48, !659, i64 56, !659, i64 64, !659, i64 72, !659, i64 80, !659, i64 88, !659, i64 96, !659, i64 104, !675, i64 112, !675, i64 116, !676, i64 120, !677, i64 128, !660, i64 130, !660, i64 131, !659, i64 136, !676, i64 144, !659, i64 152, !659, i64 160, !659, i64 168, !659, i64 176, !676, i64 184, !675, i64 192, !660, i64 196}
!675 = !{!"int", !660, i64 0}
!676 = !{!"long", !660, i64 0}
!677 = !{!"short", !660, i64 0}
!678 = !{!674, !659, i64 48}
!679 = !{!"branch_weights", i32 2000, i32 1}
!680 = !{!660, !660, i64 0}
!681 = !DILocation(line: 208, column: 7, scope: !663)
!682 = !DILocation(line: 209, column: 7, scope: !663)
!683 = !DILocation(line: 210, column: 7, scope: !663)
!684 = !DILocation(line: 219, column: 7, scope: !663)
!685 = !DILocation(line: 228, column: 7, scope: !663)
!686 = !DILocation(line: 235, column: 7, scope: !663)
!687 = !DILocation(line: 241, column: 7, scope: !663)
!688 = !DILocation(line: 250, column: 7, scope: !663)
!689 = !DILocation(line: 256, column: 7, scope: !663)
!690 = !DILocation(line: 263, column: 7, scope: !663)
!691 = !DILocation(line: 642, column: 15, scope: !107, inlinedAt: !692)
!692 = distinct !DILocation(line: 268, column: 7, scope: !663)
!693 = !DILocation(line: 651, column: 3, scope: !107, inlinedAt: !692)
!694 = !DILocation(line: 655, column: 29, scope: !107, inlinedAt: !692)
!695 = !DILocation(line: 655, column: 15, scope: !107, inlinedAt: !692)
!696 = !DILocation(line: 656, column: 7, scope: !697, inlinedAt: !692)
!697 = distinct !DILexicalBlock(scope: !107, file: !108, line: 656, column: 7)
!698 = !DILocation(line: 656, column: 19, scope: !697, inlinedAt: !692)
!699 = !DILocation(line: 656, column: 22, scope: !697, inlinedAt: !692)
!700 = !DILocation(line: 656, column: 7, scope: !107, inlinedAt: !692)
!701 = !DILocation(line: 662, column: 7, scope: !702, inlinedAt: !692)
!702 = distinct !DILexicalBlock(scope: !697, file: !108, line: 657, column: 5)
!703 = !DILocation(line: 664, column: 5, scope: !702, inlinedAt: !692)
!704 = !DILocation(line: 665, column: 3, scope: !107, inlinedAt: !692)
!705 = !DILocation(line: 667, column: 3, scope: !107, inlinedAt: !692)
!706 = !DILocation(line: 270, column: 3, scope: !646)
!707 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 290, type: !708, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{!34, !34, !125}
!710 = !{!711, !712, !713, !714}
!711 = !DILocalVariable(name: "argc", arg: 1, scope: !707, file: !3, line: 290, type: !34)
!712 = !DILocalVariable(name: "argv", arg: 2, scope: !707, file: !3, line: 290, type: !125)
!713 = !DILocalVariable(name: "v", scope: !707, file: !3, line: 292, type: !17)
!714 = !DILocalVariable(name: "u_argc", scope: !707, file: !3, line: 308, type: !103)
!715 = !DILocation(line: 290, column: 11, scope: !707)
!716 = !DILocation(line: 290, column: 24, scope: !707)
!717 = !DILocation(line: 295, column: 21, scope: !707)
!718 = !DILocation(line: 295, column: 3, scope: !707)
!719 = !DILocation(line: 296, column: 3, scope: !707)
!720 = !DILocation(line: 297, column: 3, scope: !707)
!721 = !DILocation(line: 298, column: 3, scope: !707)
!722 = !DILocalVariable(name: "status", arg: 1, scope: !723, file: !108, line: 99, type: !34)
!723 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !108, file: !108, line: 99, type: !647, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !724)
!724 = !{!722}
!725 = !DILocation(line: 99, column: 30, scope: !723, inlinedAt: !726)
!726 = distinct !DILocation(line: 300, column: 3, scope: !707)
!727 = !DILocation(line: 102, column: 18, scope: !728, inlinedAt: !726)
!728 = distinct !DILexicalBlock(scope: !723, file: !108, line: 101, column: 7)
!729 = !{!675, !675, i64 0}
!730 = !DILocation(line: 301, column: 3, scope: !707)
!731 = !DILocation(line: 303, column: 3, scope: !707)
!732 = !DILocation(line: 308, column: 16, scope: !707)
!733 = !DILocation(line: 309, column: 9, scope: !734)
!734 = distinct !DILexicalBlock(scope: !707, file: !3, line: 309, column: 7)
!735 = !DILocation(line: 309, column: 18, scope: !734)
!736 = !DILocation(line: 309, column: 21, scope: !734)
!737 = !DILocation(line: 309, column: 7, scope: !707)
!738 = !DILocation(line: 311, column: 7, scope: !739)
!739 = distinct !DILexicalBlock(scope: !734, file: !3, line: 310, column: 5)
!740 = !DILocation(line: 315, column: 14, scope: !741)
!741 = distinct !DILexicalBlock(scope: !707, file: !3, line: 315, column: 7)
!742 = !DILocation(line: 315, column: 7, scope: !707)
!743 = !DILocation(line: 317, column: 20, scope: !744)
!744 = distinct !DILexicalBlock(scope: !741, file: !3, line: 316, column: 5)
!745 = !DILocation(line: 317, column: 7, scope: !744)
!746 = !DILocation(line: 318, column: 7, scope: !744)
!747 = !DILocation(line: 321, column: 15, scope: !707)
!748 = !DILocation(line: 321, column: 8, scope: !707)
!749 = !DILocation(line: 323, column: 7, scope: !707)
!750 = !DILocation(line: 292, column: 10, scope: !707)
!751 = !DILocation(line: 516, column: 11, scope: !752, inlinedAt: !755)
!752 = distinct !DISubprogram(name: "nomoreargs", scope: !3, file: !3, line: 514, type: !753, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !130)
!753 = !DISubroutineType(types: !754)
!754 = !{!45}
!755 = distinct !DILocation(line: 324, column: 8, scope: !756)
!756 = distinct !DILexicalBlock(scope: !707, file: !3, line: 324, column: 7)
!757 = !DILocation(line: 516, column: 10, scope: !752, inlinedAt: !755)
!758 = !DILocation(line: 516, column: 16, scope: !752, inlinedAt: !755)
!759 = !DILocation(line: 324, column: 7, scope: !707)
!760 = !DILocation(line: 325, column: 5, scope: !756)
!761 = !DILocalVariable(name: "v", arg: 1, scope: !762, file: !3, line: 368, type: !17)
!762 = distinct !DISubprogram(name: "printv", scope: !3, file: !3, line: 368, type: !763, isLocal: true, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !765)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !17}
!765 = !{!761}
!766 = !DILocation(line: 368, column: 16, scope: !762, inlinedAt: !767)
!767 = distinct !DILocation(line: 326, column: 3, scope: !707)
!768 = !DILocation(line: 370, column: 14, scope: !762, inlinedAt: !767)
!769 = !{!770, !660, i64 0}
!770 = !{!"valinfo", !660, i64 0, !660, i64 8}
!771 = !DILocation(line: 370, column: 3, scope: !762, inlinedAt: !767)
!772 = !DILocation(line: 373, column: 20, scope: !773, inlinedAt: !767)
!773 = distinct !DILexicalBlock(scope: !762, file: !3, line: 371, column: 5)
!774 = !DILocation(line: 373, column: 32, scope: !773, inlinedAt: !767)
!775 = !DILocation(line: 373, column: 7, scope: !773, inlinedAt: !767)
!776 = !DILocation(line: 105, column: 23, scope: !665, inlinedAt: !777)
!777 = distinct !DILocation(line: 374, column: 7, scope: !773, inlinedAt: !767)
!778 = !DILocation(line: 107, column: 10, scope: !665, inlinedAt: !777)
!779 = !DILocation(line: 377, column: 16, scope: !773, inlinedAt: !767)
!780 = !DILocation(line: 377, column: 18, scope: !773, inlinedAt: !767)
!781 = !DILocation(line: 377, column: 7, scope: !773, inlinedAt: !767)
!782 = !DILocation(line: 378, column: 7, scope: !773, inlinedAt: !767)
!783 = !DILocation(line: 380, column: 7, scope: !773, inlinedAt: !767)
!784 = !DILocalVariable(name: "v", arg: 1, scope: !785, file: !3, line: 387, type: !17)
!785 = distinct !DISubprogram(name: "null", scope: !3, file: !3, line: 387, type: !786, isLocal: true, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !788)
!786 = !DISubroutineType(types: !787)
!787 = !{!45, !17}
!788 = !{!784, !789}
!789 = !DILocalVariable(name: "cp", scope: !790, file: !3, line: 395, type: !99)
!790 = distinct !DILexicalBlock(scope: !791, file: !3, line: 394, column: 7)
!791 = distinct !DILexicalBlock(scope: !785, file: !3, line: 390, column: 5)
!792 = !DILocation(line: 387, column: 14, scope: !785, inlinedAt: !793)
!793 = distinct !DILocation(line: 328, column: 10, scope: !707)
!794 = !DILocation(line: 389, column: 14, scope: !785, inlinedAt: !793)
!795 = !DILocation(line: 389, column: 3, scope: !785, inlinedAt: !793)
!796 = !DILocation(line: 392, column: 14, scope: !791, inlinedAt: !793)
!797 = !DILocation(line: 392, column: 7, scope: !791, inlinedAt: !793)
!798 = !DILocation(line: 395, column: 29, scope: !790, inlinedAt: !793)
!799 = !DILocation(line: 395, column: 31, scope: !790, inlinedAt: !793)
!800 = !DILocation(line: 395, column: 21, scope: !790, inlinedAt: !793)
!801 = !DILocation(line: 396, column: 13, scope: !802, inlinedAt: !793)
!802 = distinct !DILexicalBlock(scope: !790, file: !3, line: 396, column: 13)
!803 = !DILocation(line: 396, column: 17, scope: !802, inlinedAt: !793)
!804 = !DILocation(line: 396, column: 13, scope: !790, inlinedAt: !793)
!805 = !DILocation(line: 399, column: 20, scope: !790, inlinedAt: !793)
!806 = !DILocation(line: 399, column: 12, scope: !790, inlinedAt: !793)
!807 = !DILocation(line: 403, column: 17, scope: !808, inlinedAt: !793)
!808 = distinct !DILexicalBlock(scope: !809, file: !3, line: 403, column: 17)
!809 = distinct !DILexicalBlock(scope: !790, file: !3, line: 402, column: 11)
!810 = !DILocation(line: 401, column: 9, scope: !790, inlinedAt: !793)
!811 = distinct !{!811, !812, !813}
!812 = !DILocation(line: 401, column: 9, scope: !790)
!813 = !DILocation(line: 406, column: 21, scope: !790)
!814 = !DILocation(line: 403, column: 21, scope: !808, inlinedAt: !793)
!815 = !DILocation(line: 403, column: 17, scope: !809, inlinedAt: !793)
!816 = !DILocation(line: 406, column: 17, scope: !790, inlinedAt: !793)
!817 = !DILocation(line: 406, column: 16, scope: !790, inlinedAt: !793)
!818 = !DILocation(line: 405, column: 11, scope: !809, inlinedAt: !793)
!819 = !DILocation(line: 411, column: 7, scope: !791, inlinedAt: !793)
!820 = !DILocation(line: 328, column: 3, scope: !707)
!821 = distinct !DISubprogram(name: "eval", scope: !3, file: !3, line: 938, type: !15, isLocal: true, isDefinition: true, scopeLine: 939, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !822)
!822 = !{!823, !824, !825}
!823 = !DILocalVariable(name: "evaluate", arg: 1, scope: !821, file: !3, line: 938, type: !45)
!824 = !DILocalVariable(name: "l", scope: !821, file: !3, line: 940, type: !17)
!825 = !DILocalVariable(name: "r", scope: !821, file: !3, line: 941, type: !17)
!826 = !DILocation(line: 938, column: 12, scope: !821)
!827 = !DILocation(line: 946, column: 7, scope: !821)
!828 = !DILocation(line: 940, column: 10, scope: !821)
!829 = !DILocalVariable(name: "str", arg: 1, scope: !830, file: !3, line: 499, type: !99)
!830 = distinct !DISubprogram(name: "nextarg", scope: !3, file: !3, line: 499, type: !831, isLocal: true, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!45, !99}
!833 = !{!829, !834}
!834 = !DILocalVariable(name: "r", scope: !835, file: !3, line: 505, type: !45)
!835 = distinct !DILexicalBlock(scope: !836, file: !3, line: 504, column: 5)
!836 = distinct !DILexicalBlock(scope: !830, file: !3, line: 501, column: 7)
!837 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !838)
!838 = distinct !DILocation(line: 949, column: 11, scope: !839)
!839 = distinct !DILexicalBlock(scope: !840, file: !3, line: 949, column: 11)
!840 = distinct !DILexicalBlock(scope: !821, file: !3, line: 948, column: 5)
!841 = !DILocation(line: 501, column: 8, scope: !836, inlinedAt: !838)
!842 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !838)
!843 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !838)
!844 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !838)
!845 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !838)
!846 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !838)
!847 = !DILocation(line: 949, column: 11, scope: !840)
!848 = !DILocation(line: 389, column: 14, scope: !785, inlinedAt: !849)
!849 = distinct !DILocation(line: 951, column: 34, scope: !850)
!850 = distinct !DILexicalBlock(scope: !839, file: !3, line: 950, column: 9)
!851 = !DILocation(line: 951, column: 31, scope: !850)
!852 = !DILocation(line: 387, column: 14, scope: !785, inlinedAt: !849)
!853 = !DILocation(line: 389, column: 3, scope: !785, inlinedAt: !849)
!854 = !DILocation(line: 392, column: 14, scope: !791, inlinedAt: !849)
!855 = !DILocation(line: 392, column: 7, scope: !791, inlinedAt: !849)
!856 = !DILocation(line: 395, column: 29, scope: !790, inlinedAt: !849)
!857 = !DILocation(line: 395, column: 31, scope: !790, inlinedAt: !849)
!858 = !DILocation(line: 395, column: 21, scope: !790, inlinedAt: !849)
!859 = !DILocation(line: 396, column: 13, scope: !802, inlinedAt: !849)
!860 = !DILocation(line: 396, column: 17, scope: !802, inlinedAt: !849)
!861 = !DILocation(line: 396, column: 13, scope: !790, inlinedAt: !849)
!862 = !DILocation(line: 399, column: 20, scope: !790, inlinedAt: !849)
!863 = !DILocation(line: 399, column: 12, scope: !790, inlinedAt: !849)
!864 = !DILocation(line: 403, column: 17, scope: !808, inlinedAt: !849)
!865 = !DILocation(line: 401, column: 9, scope: !790, inlinedAt: !849)
!866 = !DILocation(line: 403, column: 21, scope: !808, inlinedAt: !849)
!867 = !DILocation(line: 403, column: 17, scope: !809, inlinedAt: !849)
!868 = !DILocation(line: 406, column: 17, scope: !790, inlinedAt: !849)
!869 = !DILocation(line: 406, column: 16, scope: !790, inlinedAt: !849)
!870 = !DILocation(line: 405, column: 11, scope: !809, inlinedAt: !849)
!871 = !DILocation(line: 411, column: 7, scope: !791, inlinedAt: !849)
!872 = !DILocation(line: 951, column: 15, scope: !850)
!873 = !DILocation(line: 941, column: 10, scope: !821)
!874 = !DILocation(line: 387, column: 14, scope: !785, inlinedAt: !875)
!875 = distinct !DILocation(line: 952, column: 15, scope: !876)
!876 = distinct !DILexicalBlock(scope: !850, file: !3, line: 952, column: 15)
!877 = !DILocation(line: 389, column: 14, scope: !785, inlinedAt: !875)
!878 = !DILocation(line: 389, column: 3, scope: !785, inlinedAt: !875)
!879 = !DILocation(line: 395, column: 29, scope: !790, inlinedAt: !875)
!880 = !DILocation(line: 395, column: 31, scope: !790, inlinedAt: !875)
!881 = !DILocation(line: 395, column: 21, scope: !790, inlinedAt: !875)
!882 = !DILocation(line: 396, column: 13, scope: !802, inlinedAt: !875)
!883 = !DILocation(line: 396, column: 17, scope: !802, inlinedAt: !875)
!884 = !DILocation(line: 396, column: 13, scope: !790, inlinedAt: !875)
!885 = !DILocation(line: 399, column: 20, scope: !790, inlinedAt: !875)
!886 = !DILocation(line: 399, column: 12, scope: !790, inlinedAt: !875)
!887 = !DILocation(line: 403, column: 17, scope: !808, inlinedAt: !875)
!888 = !DILocation(line: 401, column: 9, scope: !790, inlinedAt: !875)
!889 = !DILocation(line: 403, column: 21, scope: !808, inlinedAt: !875)
!890 = !DILocation(line: 403, column: 17, scope: !809, inlinedAt: !875)
!891 = !DILocation(line: 406, column: 17, scope: !790, inlinedAt: !875)
!892 = !DILocation(line: 406, column: 16, scope: !790, inlinedAt: !875)
!893 = !DILocation(line: 405, column: 11, scope: !809, inlinedAt: !875)
!894 = !DILocation(line: 411, column: 7, scope: !791, inlinedAt: !875)
!895 = !DILocation(line: 392, column: 14, scope: !791, inlinedAt: !875)
!896 = !DILocation(line: 952, column: 15, scope: !850)
!897 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !902)
!898 = distinct !DILexicalBlock(scope: !899, file: !3, line: 358, column: 7)
!899 = distinct !DISubprogram(name: "freev", scope: !3, file: !3, line: 356, type: !763, isLocal: true, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !900)
!900 = !{!901}
!901 = !DILocalVariable(name: "v", arg: 1, scope: !899, file: !3, line: 356, type: !17)
!902 = distinct !DILocation(line: 954, column: 15, scope: !903)
!903 = distinct !DILexicalBlock(scope: !876, file: !3, line: 953, column: 13)
!904 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !902)
!905 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !902)
!906 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !902)
!907 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !902)
!908 = !DILocation(line: 387, column: 14, scope: !785, inlinedAt: !909)
!909 = distinct !DILocation(line: 956, column: 19, scope: !910)
!910 = distinct !DILexicalBlock(scope: !903, file: !3, line: 956, column: 19)
!911 = !DILocation(line: 389, column: 14, scope: !785, inlinedAt: !909)
!912 = !DILocation(line: 389, column: 3, scope: !785, inlinedAt: !909)
!913 = !DILocation(line: 395, column: 29, scope: !790, inlinedAt: !909)
!914 = !DILocation(line: 395, column: 31, scope: !790, inlinedAt: !909)
!915 = !DILocation(line: 395, column: 21, scope: !790, inlinedAt: !909)
!916 = !DILocation(line: 396, column: 13, scope: !802, inlinedAt: !909)
!917 = !DILocation(line: 396, column: 17, scope: !802, inlinedAt: !909)
!918 = !DILocation(line: 396, column: 13, scope: !790, inlinedAt: !909)
!919 = !DILocation(line: 399, column: 20, scope: !790, inlinedAt: !909)
!920 = !DILocation(line: 399, column: 12, scope: !790, inlinedAt: !909)
!921 = !DILocation(line: 403, column: 17, scope: !808, inlinedAt: !909)
!922 = !DILocation(line: 401, column: 9, scope: !790, inlinedAt: !909)
!923 = !DILocation(line: 403, column: 21, scope: !808, inlinedAt: !909)
!924 = !DILocation(line: 403, column: 17, scope: !809, inlinedAt: !909)
!925 = !DILocation(line: 406, column: 17, scope: !790, inlinedAt: !909)
!926 = !DILocation(line: 406, column: 16, scope: !790, inlinedAt: !909)
!927 = !DILocation(line: 405, column: 11, scope: !809, inlinedAt: !909)
!928 = !DILocation(line: 411, column: 7, scope: !791, inlinedAt: !909)
!929 = !DILocation(line: 392, column: 14, scope: !791, inlinedAt: !909)
!930 = !DILocation(line: 956, column: 19, scope: !903)
!931 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !932)
!932 = distinct !DILocation(line: 958, column: 19, scope: !933)
!933 = distinct !DILexicalBlock(scope: !910, file: !3, line: 957, column: 17)
!934 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !932)
!935 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !932)
!936 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !932)
!937 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !932)
!938 = !DILocalVariable(name: "i", arg: 1, scope: !939, file: !3, line: 334, type: !39)
!939 = distinct !DISubprogram(name: "int_value", scope: !3, file: !3, line: 334, type: !940, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !942)
!940 = !DISubroutineType(types: !941)
!941 = !{!17, !39}
!942 = !{!938, !943}
!943 = !DILocalVariable(name: "v", scope: !939, file: !3, line: 336, type: !17)
!944 = !DILocation(line: 334, column: 30, scope: !939, inlinedAt: !945)
!945 = distinct !DILocation(line: 959, column: 23, scope: !933)
!946 = !DILocation(line: 336, column: 14, scope: !939, inlinedAt: !945)
!947 = !DILocation(line: 336, column: 10, scope: !939, inlinedAt: !945)
!948 = !DILocation(line: 337, column: 6, scope: !939, inlinedAt: !945)
!949 = !DILocation(line: 337, column: 11, scope: !939, inlinedAt: !945)
!950 = !DILocation(line: 338, column: 23, scope: !939, inlinedAt: !945)
!951 = !DILocation(line: 338, column: 20, scope: !939, inlinedAt: !945)
!952 = !DILocation(line: 338, column: 3, scope: !939, inlinedAt: !945)
!953 = !DILocation(line: 960, column: 17, scope: !933)
!954 = !DILocation(line: 356, column: 15, scope: !899, inlinedAt: !955)
!955 = distinct !DILocation(line: 963, column: 13, scope: !876)
!956 = !DILocation(line: 358, column: 10, scope: !898, inlinedAt: !955)
!957 = !DILocation(line: 358, column: 15, scope: !898, inlinedAt: !955)
!958 = !DILocation(line: 358, column: 7, scope: !899, inlinedAt: !955)
!959 = !DILocation(line: 359, column: 16, scope: !898, inlinedAt: !955)
!960 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !955)
!961 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !955)
!962 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !955)
!963 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !955)
!964 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !955)
!965 = !DILocation(line: 966, column: 9, scope: !839)
!966 = distinct !{!966, !967, !968}
!967 = !DILocation(line: 947, column: 3, scope: !821)
!968 = !DILocation(line: 967, column: 5, scope: !821)
!969 = distinct !DISubprogram(name: "syntax_error", scope: !3, file: !3, line: 275, type: !970, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !130)
!970 = !DISubroutineType(types: !971)
!971 = !{null}
!972 = !DILocation(line: 277, column: 3, scope: !969)
!973 = distinct !DISubprogram(name: "eval1", scope: !3, file: !3, line: 907, type: !15, isLocal: true, isDefinition: true, scopeLine: 908, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !974)
!974 = !{!975, !976, !977}
!975 = !DILocalVariable(name: "evaluate", arg: 1, scope: !973, file: !3, line: 907, type: !45)
!976 = !DILocalVariable(name: "l", scope: !973, file: !3, line: 909, type: !17)
!977 = !DILocalVariable(name: "r", scope: !973, file: !3, line: 910, type: !17)
!978 = !DILocation(line: 907, column: 13, scope: !973)
!979 = !DILocation(line: 915, column: 7, scope: !973)
!980 = !DILocation(line: 909, column: 10, scope: !973)
!981 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !982)
!982 = distinct !DILocation(line: 918, column: 11, scope: !983)
!983 = distinct !DILexicalBlock(scope: !984, file: !3, line: 918, column: 11)
!984 = distinct !DILexicalBlock(scope: !973, file: !3, line: 917, column: 5)
!985 = !DILocation(line: 501, column: 8, scope: !836, inlinedAt: !982)
!986 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !982)
!987 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !982)
!988 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !982)
!989 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !982)
!990 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !982)
!991 = !DILocation(line: 918, column: 11, scope: !984)
!992 = !DILocation(line: 389, column: 14, scope: !785, inlinedAt: !993)
!993 = distinct !DILocation(line: 920, column: 35, scope: !994)
!994 = distinct !DILexicalBlock(scope: !983, file: !3, line: 919, column: 9)
!995 = !DILocation(line: 920, column: 31, scope: !994)
!996 = !DILocation(line: 387, column: 14, scope: !785, inlinedAt: !993)
!997 = !DILocation(line: 389, column: 3, scope: !785, inlinedAt: !993)
!998 = !DILocation(line: 392, column: 14, scope: !791, inlinedAt: !993)
!999 = !DILocation(line: 392, column: 7, scope: !791, inlinedAt: !993)
!1000 = !DILocation(line: 395, column: 29, scope: !790, inlinedAt: !993)
!1001 = !DILocation(line: 395, column: 31, scope: !790, inlinedAt: !993)
!1002 = !DILocation(line: 395, column: 21, scope: !790, inlinedAt: !993)
!1003 = !DILocation(line: 396, column: 13, scope: !802, inlinedAt: !993)
!1004 = !DILocation(line: 396, column: 17, scope: !802, inlinedAt: !993)
!1005 = !DILocation(line: 396, column: 13, scope: !790, inlinedAt: !993)
!1006 = !DILocation(line: 399, column: 20, scope: !790, inlinedAt: !993)
!1007 = !DILocation(line: 399, column: 12, scope: !790, inlinedAt: !993)
!1008 = !DILocation(line: 403, column: 17, scope: !808, inlinedAt: !993)
!1009 = !DILocation(line: 401, column: 9, scope: !790, inlinedAt: !993)
!1010 = !DILocation(line: 403, column: 21, scope: !808, inlinedAt: !993)
!1011 = !DILocation(line: 403, column: 17, scope: !809, inlinedAt: !993)
!1012 = !DILocation(line: 406, column: 17, scope: !790, inlinedAt: !993)
!1013 = !DILocation(line: 406, column: 16, scope: !790, inlinedAt: !993)
!1014 = !DILocation(line: 405, column: 11, scope: !809, inlinedAt: !993)
!1015 = !DILocation(line: 411, column: 7, scope: !791, inlinedAt: !993)
!1016 = !DILocation(line: 920, column: 34, scope: !994)
!1017 = !DILocation(line: 920, column: 15, scope: !994)
!1018 = !DILocation(line: 910, column: 10, scope: !973)
!1019 = !DILocation(line: 387, column: 14, scope: !785, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 921, column: 15, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !994, file: !3, line: 921, column: 15)
!1022 = !DILocation(line: 389, column: 14, scope: !785, inlinedAt: !1020)
!1023 = !DILocation(line: 389, column: 3, scope: !785, inlinedAt: !1020)
!1024 = !DILocation(line: 395, column: 29, scope: !790, inlinedAt: !1020)
!1025 = !DILocation(line: 395, column: 31, scope: !790, inlinedAt: !1020)
!1026 = !DILocation(line: 395, column: 21, scope: !790, inlinedAt: !1020)
!1027 = !DILocation(line: 396, column: 13, scope: !802, inlinedAt: !1020)
!1028 = !DILocation(line: 396, column: 17, scope: !802, inlinedAt: !1020)
!1029 = !DILocation(line: 396, column: 13, scope: !790, inlinedAt: !1020)
!1030 = !DILocation(line: 399, column: 20, scope: !790, inlinedAt: !1020)
!1031 = !DILocation(line: 399, column: 12, scope: !790, inlinedAt: !1020)
!1032 = !DILocation(line: 403, column: 17, scope: !808, inlinedAt: !1020)
!1033 = !DILocation(line: 401, column: 9, scope: !790, inlinedAt: !1020)
!1034 = !DILocation(line: 403, column: 21, scope: !808, inlinedAt: !1020)
!1035 = !DILocation(line: 403, column: 17, scope: !809, inlinedAt: !1020)
!1036 = !DILocation(line: 406, column: 17, scope: !790, inlinedAt: !1020)
!1037 = !DILocation(line: 406, column: 16, scope: !790, inlinedAt: !1020)
!1038 = !DILocation(line: 405, column: 11, scope: !809, inlinedAt: !1020)
!1039 = !DILocation(line: 411, column: 7, scope: !791, inlinedAt: !1020)
!1040 = !DILocation(line: 392, column: 14, scope: !791, inlinedAt: !1020)
!1041 = !DILocation(line: 921, column: 24, scope: !1021)
!1042 = !DILocation(line: 387, column: 14, scope: !785, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 921, column: 27, scope: !1021)
!1044 = !DILocation(line: 389, column: 14, scope: !785, inlinedAt: !1043)
!1045 = !DILocation(line: 389, column: 3, scope: !785, inlinedAt: !1043)
!1046 = !DILocation(line: 395, column: 29, scope: !790, inlinedAt: !1043)
!1047 = !DILocation(line: 395, column: 31, scope: !790, inlinedAt: !1043)
!1048 = !DILocation(line: 395, column: 21, scope: !790, inlinedAt: !1043)
!1049 = !DILocation(line: 396, column: 13, scope: !802, inlinedAt: !1043)
!1050 = !DILocation(line: 396, column: 17, scope: !802, inlinedAt: !1043)
!1051 = !DILocation(line: 396, column: 13, scope: !790, inlinedAt: !1043)
!1052 = !DILocation(line: 399, column: 20, scope: !790, inlinedAt: !1043)
!1053 = !DILocation(line: 399, column: 12, scope: !790, inlinedAt: !1043)
!1054 = !DILocation(line: 403, column: 17, scope: !808, inlinedAt: !1043)
!1055 = !DILocation(line: 401, column: 9, scope: !790, inlinedAt: !1043)
!1056 = !DILocation(line: 403, column: 21, scope: !808, inlinedAt: !1043)
!1057 = !DILocation(line: 403, column: 17, scope: !809, inlinedAt: !1043)
!1058 = !DILocation(line: 406, column: 17, scope: !790, inlinedAt: !1043)
!1059 = !DILocation(line: 406, column: 16, scope: !790, inlinedAt: !1043)
!1060 = !DILocation(line: 405, column: 11, scope: !809, inlinedAt: !1043)
!1061 = !DILocation(line: 411, column: 7, scope: !791, inlinedAt: !1043)
!1062 = !DILocation(line: 392, column: 14, scope: !791, inlinedAt: !1043)
!1063 = !DILocation(line: 921, column: 15, scope: !994)
!1064 = !DILocation(line: 356, column: 15, scope: !899, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 923, column: 15, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 922, column: 13)
!1067 = !DILocation(line: 358, column: 15, scope: !898, inlinedAt: !1065)
!1068 = !DILocation(line: 358, column: 7, scope: !899, inlinedAt: !1065)
!1069 = !DILocation(line: 359, column: 16, scope: !898, inlinedAt: !1065)
!1070 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !1065)
!1071 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !1065)
!1072 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !1065)
!1073 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !1065)
!1074 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !1065)
!1075 = !DILocation(line: 356, column: 15, scope: !899, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 924, column: 15, scope: !1066)
!1077 = !DILocation(line: 358, column: 10, scope: !898, inlinedAt: !1076)
!1078 = !DILocation(line: 358, column: 15, scope: !898, inlinedAt: !1076)
!1079 = !DILocation(line: 358, column: 7, scope: !899, inlinedAt: !1076)
!1080 = !DILocation(line: 359, column: 16, scope: !898, inlinedAt: !1076)
!1081 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !1076)
!1082 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !1076)
!1083 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !1076)
!1084 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !1076)
!1085 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !1076)
!1086 = !DILocation(line: 334, column: 30, scope: !939, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 925, column: 19, scope: !1066)
!1088 = !DILocation(line: 336, column: 14, scope: !939, inlinedAt: !1087)
!1089 = !DILocation(line: 336, column: 10, scope: !939, inlinedAt: !1087)
!1090 = !DILocation(line: 337, column: 6, scope: !939, inlinedAt: !1087)
!1091 = !DILocation(line: 337, column: 11, scope: !939, inlinedAt: !1087)
!1092 = !DILocation(line: 338, column: 23, scope: !939, inlinedAt: !1087)
!1093 = !DILocation(line: 338, column: 20, scope: !939, inlinedAt: !1087)
!1094 = !DILocation(line: 338, column: 3, scope: !939, inlinedAt: !1087)
!1095 = !DILocation(line: 926, column: 13, scope: !1066)
!1096 = !DILocation(line: 356, column: 15, scope: !899, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 928, column: 13, scope: !1021)
!1098 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !1097)
!1099 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !1097)
!1100 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !1097)
!1101 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !1097)
!1102 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !1097)
!1103 = !DILocation(line: 931, column: 9, scope: !983)
!1104 = distinct !{!1104, !1105, !1106}
!1105 = !DILocation(line: 916, column: 3, scope: !973)
!1106 = !DILocation(line: 932, column: 5, scope: !973)
!1107 = !DILocation(line: 829, column: 13, scope: !14)
!1108 = !DILocation(line: 836, column: 7, scope: !14)
!1109 = !DILocation(line: 831, column: 10, scope: !14)
!1110 = !DILocation(line: 844, column: 12, scope: !50)
!1111 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 846, column: 11, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !50, file: !3, line: 846, column: 11)
!1114 = !DILocation(line: 501, column: 8, scope: !836, inlinedAt: !1112)
!1115 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !1112)
!1116 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !1112)
!1117 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !1112)
!1118 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !1112)
!1119 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !1112)
!1120 = !DILocation(line: 846, column: 11, scope: !50)
!1121 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 848, column: 16, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 848, column: 16)
!1124 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !1122)
!1125 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !1122)
!1126 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !1122)
!1127 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !1122)
!1128 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !1122)
!1129 = !DILocation(line: 848, column: 16, scope: !1113)
!1130 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 850, column: 16, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 850, column: 16)
!1133 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !1131)
!1134 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !1131)
!1135 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !1131)
!1136 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !1131)
!1137 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !1131)
!1138 = !DILocation(line: 850, column: 30, scope: !1132)
!1139 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 850, column: 33, scope: !1132)
!1141 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !1140)
!1142 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !1140)
!1143 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !1140)
!1144 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !1140)
!1145 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !1140)
!1146 = !DILocation(line: 850, column: 16, scope: !1123)
!1147 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 852, column: 16, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 852, column: 16)
!1150 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !1148)
!1151 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !1148)
!1152 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !1148)
!1153 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !1148)
!1154 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !1148)
!1155 = !DILocation(line: 852, column: 16, scope: !1132)
!1156 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 854, column: 16, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 854, column: 16)
!1159 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !1157)
!1160 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !1157)
!1161 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !1157)
!1162 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !1157)
!1163 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !1157)
!1164 = !DILocation(line: 854, column: 16, scope: !1149)
!1165 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 856, column: 16, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 856, column: 16)
!1168 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !1166)
!1169 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !1166)
!1170 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !1166)
!1171 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !1166)
!1172 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !1166)
!1173 = !DILocation(line: 856, column: 16, scope: !1158)
!1174 = !DILocation(line: 860, column: 11, scope: !50)
!1175 = !DILocation(line: 839, column: 14, scope: !50)
!1176 = !DILocation(line: 862, column: 11, scope: !50)
!1177 = !DILocalVariable(name: "v", arg: 1, scope: !1178, file: !3, line: 433, type: !17)
!1178 = distinct !DISubprogram(name: "tostring", scope: !3, file: !3, line: 433, type: !763, isLocal: true, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1179)
!1179 = !{!1177, !1180}
!1180 = !DILocalVariable(name: "s", scope: !1181, file: !3, line: 439, type: !43)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 438, column: 7)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 436, column: 5)
!1183 = !DILocation(line: 433, column: 18, scope: !1178, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 865, column: 11, scope: !54)
!1185 = !DILocation(line: 435, column: 14, scope: !1178, inlinedAt: !1184)
!1186 = !DILocation(line: 435, column: 3, scope: !1178, inlinedAt: !1184)
!1187 = !DILocation(line: 439, column: 45, scope: !1181, inlinedAt: !1184)
!1188 = !DILocation(line: 439, column: 42, scope: !1181, inlinedAt: !1184)
!1189 = !DILocation(line: 439, column: 19, scope: !1181, inlinedAt: !1184)
!1190 = !DILocation(line: 439, column: 15, scope: !1181, inlinedAt: !1184)
!1191 = !DILocation(line: 440, column: 9, scope: !1181, inlinedAt: !1184)
!1192 = !DILocation(line: 441, column: 14, scope: !1181, inlinedAt: !1184)
!1193 = !DILocation(line: 441, column: 16, scope: !1181, inlinedAt: !1184)
!1194 = !DILocation(line: 442, column: 17, scope: !1181, inlinedAt: !1184)
!1195 = !DILocation(line: 444, column: 7, scope: !1182, inlinedAt: !1184)
!1196 = !DILocation(line: 448, column: 7, scope: !1182, inlinedAt: !1184)
!1197 = !DILocation(line: 433, column: 18, scope: !1178, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 866, column: 11, scope: !54)
!1199 = !DILocation(line: 435, column: 14, scope: !1178, inlinedAt: !1198)
!1200 = !DILocation(line: 435, column: 3, scope: !1178, inlinedAt: !1198)
!1201 = !DILocation(line: 439, column: 45, scope: !1181, inlinedAt: !1198)
!1202 = !DILocation(line: 439, column: 42, scope: !1181, inlinedAt: !1198)
!1203 = !DILocation(line: 439, column: 19, scope: !1181, inlinedAt: !1198)
!1204 = !DILocation(line: 439, column: 15, scope: !1181, inlinedAt: !1198)
!1205 = !DILocation(line: 440, column: 9, scope: !1181, inlinedAt: !1198)
!1206 = !DILocation(line: 441, column: 14, scope: !1181, inlinedAt: !1198)
!1207 = !DILocation(line: 441, column: 16, scope: !1181, inlinedAt: !1198)
!1208 = !DILocation(line: 442, column: 17, scope: !1181, inlinedAt: !1198)
!1209 = !DILocation(line: 444, column: 7, scope: !1182, inlinedAt: !1198)
!1210 = !DILocation(line: 448, column: 7, scope: !1182, inlinedAt: !1198)
!1211 = !DILocation(line: 868, column: 38, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !54, file: !3, line: 868, column: 15)
!1213 = !DILocation(line: 868, column: 40, scope: !1212)
!1214 = !DILocalVariable(name: "cp", arg: 1, scope: !1215, file: !3, line: 418, type: !99)
!1215 = distinct !DISubprogram(name: "looks_like_integer", scope: !3, file: !3, line: 418, type: !831, isLocal: true, isDefinition: true, scopeLine: 419, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1216)
!1216 = !{!1214}
!1217 = !DILocation(line: 418, column: 33, scope: !1215, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 868, column: 15, scope: !1212)
!1219 = !DILocation(line: 420, column: 10, scope: !1215, inlinedAt: !1218)
!1220 = !DILocation(line: 420, column: 14, scope: !1215, inlinedAt: !1218)
!1221 = !DILocation(line: 420, column: 6, scope: !1215, inlinedAt: !1218)
!1222 = !DILocation(line: 423, column: 11, scope: !1223, inlinedAt: !1218)
!1223 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 423, column: 9)
!1224 = !DILocation(line: 422, column: 3, scope: !1215, inlinedAt: !1218)
!1225 = distinct !{!1225, !1226, !1227}
!1226 = !DILocation(line: 422, column: 3, scope: !1215)
!1227 = !DILocation(line: 425, column: 15, scope: !1215)
!1228 = !DILocation(line: 423, column: 9, scope: !1215, inlinedAt: !1218)
!1229 = !DILocation(line: 425, column: 11, scope: !1215, inlinedAt: !1218)
!1230 = !DILocation(line: 425, column: 10, scope: !1215, inlinedAt: !1218)
!1231 = !DILocation(line: 868, column: 69, scope: !1212)
!1232 = !DILocation(line: 868, column: 71, scope: !1212)
!1233 = !DILocation(line: 418, column: 33, scope: !1215, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 868, column: 46, scope: !1212)
!1235 = !DILocation(line: 420, column: 10, scope: !1215, inlinedAt: !1234)
!1236 = !DILocation(line: 420, column: 14, scope: !1215, inlinedAt: !1234)
!1237 = !DILocation(line: 420, column: 6, scope: !1215, inlinedAt: !1234)
!1238 = !DILocation(line: 423, column: 11, scope: !1223, inlinedAt: !1234)
!1239 = !DILocation(line: 422, column: 3, scope: !1215, inlinedAt: !1234)
!1240 = !DILocation(line: 423, column: 9, scope: !1215, inlinedAt: !1234)
!1241 = !DILocation(line: 425, column: 11, scope: !1215, inlinedAt: !1234)
!1242 = !DILocation(line: 425, column: 10, scope: !1215, inlinedAt: !1234)
!1243 = !DILocation(line: 869, column: 19, scope: !1212)
!1244 = !DILocation(line: 864, column: 15, scope: !54)
!1245 = !DILocation(line: 869, column: 13, scope: !1212)
!1246 = !DILocation(line: 873, column: 41, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 871, column: 13)
!1248 = !DILocation(line: 873, column: 43, scope: !1247)
!1249 = !DILocation(line: 872, column: 15, scope: !1247)
!1250 = !DILocation(line: 872, column: 21, scope: !1247)
!1251 = !DILocation(line: 873, column: 35, scope: !1247)
!1252 = !DILocation(line: 873, column: 21, scope: !1247)
!1253 = !DILocation(line: 875, column: 19, scope: !1247)
!1254 = !DILocation(line: 886, column: 11, scope: !54)
!1255 = !DILocation(line: 888, column: 44, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !54, file: !3, line: 887, column: 13)
!1257 = !DILocation(line: 888, column: 51, scope: !1256)
!1258 = !DILocation(line: 889, column: 44, scope: !1256)
!1259 = !DILocation(line: 889, column: 51, scope: !1256)
!1260 = !DILocation(line: 890, column: 44, scope: !1256)
!1261 = !DILocation(line: 890, column: 51, scope: !1256)
!1262 = !DILocation(line: 891, column: 44, scope: !1256)
!1263 = !DILocation(line: 891, column: 51, scope: !1256)
!1264 = !DILocation(line: 892, column: 44, scope: !1256)
!1265 = !DILocation(line: 892, column: 51, scope: !1256)
!1266 = !DILocation(line: 893, column: 44, scope: !1256)
!1267 = !DILocation(line: 893, column: 51, scope: !1256)
!1268 = !DILocation(line: 894, column: 22, scope: !1256)
!1269 = !DILocation(line: 356, column: 15, scope: !899, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 898, column: 7, scope: !50)
!1271 = !DILocation(line: 358, column: 10, scope: !898, inlinedAt: !1270)
!1272 = !DILocation(line: 358, column: 15, scope: !898, inlinedAt: !1270)
!1273 = !DILocation(line: 358, column: 7, scope: !899, inlinedAt: !1270)
!1274 = !DILocation(line: 359, column: 16, scope: !898, inlinedAt: !1270)
!1275 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !1270)
!1276 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !1270)
!1277 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !1270)
!1278 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !1270)
!1279 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !1270)
!1280 = !DILocation(line: 356, column: 15, scope: !899, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 899, column: 7, scope: !50)
!1282 = !DILocation(line: 358, column: 10, scope: !898, inlinedAt: !1281)
!1283 = !DILocation(line: 358, column: 15, scope: !898, inlinedAt: !1281)
!1284 = !DILocation(line: 358, column: 7, scope: !899, inlinedAt: !1281)
!1285 = !DILocation(line: 359, column: 16, scope: !898, inlinedAt: !1281)
!1286 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !1281)
!1287 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !1281)
!1288 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !1281)
!1289 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !1281)
!1290 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !1281)
!1291 = !DILocation(line: 900, column: 22, scope: !50)
!1292 = !DILocation(line: 334, column: 30, scope: !939, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 900, column: 11, scope: !50)
!1294 = !DILocation(line: 336, column: 14, scope: !939, inlinedAt: !1293)
!1295 = !DILocation(line: 336, column: 10, scope: !939, inlinedAt: !1293)
!1296 = !DILocation(line: 337, column: 6, scope: !939, inlinedAt: !1293)
!1297 = !DILocation(line: 337, column: 11, scope: !939, inlinedAt: !1293)
!1298 = !DILocation(line: 338, column: 23, scope: !939, inlinedAt: !1293)
!1299 = !DILocation(line: 338, column: 20, scope: !939, inlinedAt: !1293)
!1300 = !DILocation(line: 338, column: 3, scope: !939, inlinedAt: !1293)
!1301 = distinct !{!1301, !1302, !1303}
!1302 = !DILocation(line: 837, column: 3, scope: !14)
!1303 = !DILocation(line: 901, column: 5, scope: !14)
!1304 = !DILocation(line: 902, column: 1, scope: !14)
!1305 = !DILocation(line: 797, column: 13, scope: !78)
!1306 = !DILocation(line: 806, column: 7, scope: !78)
!1307 = !DILocation(line: 799, column: 10, scope: !78)
!1308 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 809, column: 11, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 809, column: 11)
!1311 = distinct !DILexicalBlock(scope: !78, file: !3, line: 808, column: 5)
!1312 = !DILocation(line: 501, column: 8, scope: !836, inlinedAt: !1309)
!1313 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !1309)
!1314 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !1309)
!1315 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !1309)
!1316 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !1309)
!1317 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !1309)
!1318 = !DILocation(line: 809, column: 11, scope: !1311)
!1319 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 811, column: 16, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 811, column: 16)
!1322 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !1320)
!1323 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !1320)
!1324 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !1320)
!1325 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !1320)
!1326 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !1320)
!1327 = !DILocation(line: 811, column: 16, scope: !1310)
!1328 = !DILocation(line: 814, column: 9, scope: !1321)
!1329 = !DILocation(line: 801, column: 24, scope: !78)
!1330 = !DILocation(line: 815, column: 11, scope: !1311)
!1331 = !DILocation(line: 800, column: 10, scope: !78)
!1332 = !DILocation(line: 816, column: 11, scope: !1311)
!1333 = !DILocation(line: 358, column: 10, scope: !898, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 822, column: 7, scope: !1311)
!1335 = !DILocalVariable(name: "v", arg: 1, scope: !1336, file: !3, line: 455, type: !17)
!1336 = distinct !DISubprogram(name: "toarith", scope: !3, file: !3, line: 455, type: !786, isLocal: true, isDefinition: true, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1337)
!1337 = !{!1335, !1338}
!1338 = !DILocalVariable(name: "s", scope: !1339, file: !3, line: 463, type: !43)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 462, column: 7)
!1340 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 458, column: 5)
!1341 = !DILocation(line: 455, column: 17, scope: !1336, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 818, column: 16, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 818, column: 15)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 817, column: 9)
!1345 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 816, column: 11)
!1346 = !DILocation(line: 457, column: 14, scope: !1336, inlinedAt: !1342)
!1347 = !DILocation(line: 457, column: 3, scope: !1336, inlinedAt: !1342)
!1348 = !DILocation(line: 463, column: 24, scope: !1339, inlinedAt: !1342)
!1349 = !DILocation(line: 463, column: 15, scope: !1339, inlinedAt: !1342)
!1350 = !DILocation(line: 418, column: 33, scope: !1215, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 465, column: 15, scope: !1352, inlinedAt: !1342)
!1352 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 465, column: 13)
!1353 = !DILocation(line: 420, column: 10, scope: !1215, inlinedAt: !1351)
!1354 = !DILocation(line: 420, column: 14, scope: !1215, inlinedAt: !1351)
!1355 = !DILocation(line: 420, column: 6, scope: !1215, inlinedAt: !1351)
!1356 = !DILocation(line: 423, column: 11, scope: !1223, inlinedAt: !1351)
!1357 = !DILocation(line: 422, column: 3, scope: !1215, inlinedAt: !1351)
!1358 = !DILocation(line: 423, column: 9, scope: !1215, inlinedAt: !1351)
!1359 = !DILocation(line: 425, column: 11, scope: !1215, inlinedAt: !1351)
!1360 = !DILocation(line: 425, column: 10, scope: !1215, inlinedAt: !1351)
!1361 = !DILocation(line: 467, column: 13, scope: !1362, inlinedAt: !1342)
!1362 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 467, column: 13)
!1363 = !DILocation(line: 469, column: 9, scope: !1339, inlinedAt: !1342)
!1364 = !DILocation(line: 470, column: 17, scope: !1339, inlinedAt: !1342)
!1365 = !DILocation(line: 471, column: 9, scope: !1339, inlinedAt: !1342)
!1366 = !DILocation(line: 474, column: 7, scope: !1340, inlinedAt: !1342)
!1367 = !DILocation(line: 455, column: 17, scope: !1336, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 818, column: 32, scope: !1343)
!1369 = !DILocation(line: 457, column: 14, scope: !1336, inlinedAt: !1368)
!1370 = !DILocation(line: 457, column: 3, scope: !1336, inlinedAt: !1368)
!1371 = !DILocation(line: 463, column: 22, scope: !1339, inlinedAt: !1368)
!1372 = !DILocation(line: 463, column: 24, scope: !1339, inlinedAt: !1368)
!1373 = !DILocation(line: 463, column: 15, scope: !1339, inlinedAt: !1368)
!1374 = !DILocation(line: 418, column: 33, scope: !1215, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 465, column: 15, scope: !1352, inlinedAt: !1368)
!1376 = !DILocation(line: 420, column: 10, scope: !1215, inlinedAt: !1375)
!1377 = !DILocation(line: 420, column: 14, scope: !1215, inlinedAt: !1375)
!1378 = !DILocation(line: 420, column: 6, scope: !1215, inlinedAt: !1375)
!1379 = !DILocation(line: 423, column: 11, scope: !1223, inlinedAt: !1375)
!1380 = !DILocation(line: 422, column: 3, scope: !1215, inlinedAt: !1375)
!1381 = !DILocation(line: 423, column: 9, scope: !1215, inlinedAt: !1375)
!1382 = !DILocation(line: 425, column: 11, scope: !1215, inlinedAt: !1375)
!1383 = !DILocation(line: 425, column: 10, scope: !1215, inlinedAt: !1375)
!1384 = !DILocation(line: 467, column: 31, scope: !1362, inlinedAt: !1368)
!1385 = !DILocation(line: 467, column: 13, scope: !1362, inlinedAt: !1368)
!1386 = !DILocation(line: 469, column: 9, scope: !1339, inlinedAt: !1368)
!1387 = !DILocation(line: 470, column: 17, scope: !1339, inlinedAt: !1368)
!1388 = !DILocation(line: 471, column: 9, scope: !1339, inlinedAt: !1368)
!1389 = !DILocation(line: 474, column: 7, scope: !1340, inlinedAt: !1368)
!1390 = !DILocation(line: 819, column: 13, scope: !1343)
!1391 = !DILocation(line: 820, column: 16, scope: !1344)
!1392 = !DILocation(line: 820, column: 12, scope: !1344)
!1393 = !DILocation(line: 820, column: 62, scope: !1344)
!1394 = !DILocation(line: 820, column: 11, scope: !1344)
!1395 = !DILocation(line: 821, column: 9, scope: !1344)
!1396 = !DILocation(line: 356, column: 15, scope: !899, inlinedAt: !1334)
!1397 = !DILocation(line: 358, column: 15, scope: !898, inlinedAt: !1334)
!1398 = !DILocation(line: 358, column: 7, scope: !899, inlinedAt: !1334)
!1399 = !DILocation(line: 359, column: 16, scope: !898, inlinedAt: !1334)
!1400 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !1334)
!1401 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !1334)
!1402 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !1334)
!1403 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !1334)
!1404 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !1334)
!1405 = distinct !{!1405, !1406, !1407}
!1406 = !DILocation(line: 807, column: 3, scope: !78)
!1407 = !DILocation(line: 823, column: 5, scope: !78)
!1408 = !DILocation(line: 758, column: 13, scope: !88)
!1409 = !DILocation(line: 767, column: 7, scope: !88)
!1410 = !DILocation(line: 760, column: 10, scope: !88)
!1411 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 770, column: 11, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 770, column: 11)
!1414 = distinct !DILexicalBlock(scope: !88, file: !3, line: 769, column: 5)
!1415 = !DILocation(line: 501, column: 8, scope: !836, inlinedAt: !1412)
!1416 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !1412)
!1417 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !1412)
!1418 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !1412)
!1419 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !1412)
!1420 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !1412)
!1421 = !DILocation(line: 770, column: 11, scope: !1414)
!1422 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !1423)
!1423 = distinct !DILocation(line: 772, column: 16, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 772, column: 16)
!1425 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !1423)
!1426 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !1423)
!1427 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !1423)
!1428 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !1423)
!1429 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !1423)
!1430 = !DILocation(line: 772, column: 16, scope: !1413)
!1431 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 774, column: 16, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 774, column: 16)
!1434 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !1432)
!1435 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !1432)
!1436 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !1432)
!1437 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !1432)
!1438 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !1432)
!1439 = !DILocation(line: 774, column: 16, scope: !1424)
!1440 = !DILocation(line: 777, column: 9, scope: !1433)
!1441 = !DILocation(line: 762, column: 34, scope: !88)
!1442 = !DILocation(line: 778, column: 11, scope: !1414)
!1443 = !DILocation(line: 761, column: 10, scope: !88)
!1444 = !DILocation(line: 779, column: 11, scope: !1414)
!1445 = !DILocation(line: 358, column: 10, scope: !898, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 790, column: 7, scope: !1414)
!1447 = !DILocation(line: 455, column: 17, scope: !1336, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 781, column: 16, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 781, column: 15)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 780, column: 9)
!1451 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 779, column: 11)
!1452 = !DILocation(line: 457, column: 14, scope: !1336, inlinedAt: !1448)
!1453 = !DILocation(line: 457, column: 3, scope: !1336, inlinedAt: !1448)
!1454 = !DILocation(line: 463, column: 24, scope: !1339, inlinedAt: !1448)
!1455 = !DILocation(line: 463, column: 15, scope: !1339, inlinedAt: !1448)
!1456 = !DILocation(line: 418, column: 33, scope: !1215, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 465, column: 15, scope: !1352, inlinedAt: !1448)
!1458 = !DILocation(line: 420, column: 10, scope: !1215, inlinedAt: !1457)
!1459 = !DILocation(line: 420, column: 14, scope: !1215, inlinedAt: !1457)
!1460 = !DILocation(line: 420, column: 6, scope: !1215, inlinedAt: !1457)
!1461 = !DILocation(line: 423, column: 11, scope: !1223, inlinedAt: !1457)
!1462 = !DILocation(line: 422, column: 3, scope: !1215, inlinedAt: !1457)
!1463 = !DILocation(line: 423, column: 9, scope: !1215, inlinedAt: !1457)
!1464 = !DILocation(line: 425, column: 11, scope: !1215, inlinedAt: !1457)
!1465 = !DILocation(line: 425, column: 10, scope: !1215, inlinedAt: !1457)
!1466 = !DILocation(line: 467, column: 13, scope: !1362, inlinedAt: !1448)
!1467 = !DILocation(line: 469, column: 9, scope: !1339, inlinedAt: !1448)
!1468 = !DILocation(line: 470, column: 17, scope: !1339, inlinedAt: !1448)
!1469 = !DILocation(line: 471, column: 9, scope: !1339, inlinedAt: !1448)
!1470 = !DILocation(line: 474, column: 7, scope: !1340, inlinedAt: !1448)
!1471 = !DILocation(line: 455, column: 17, scope: !1336, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 781, column: 32, scope: !1449)
!1473 = !DILocation(line: 457, column: 14, scope: !1336, inlinedAt: !1472)
!1474 = !DILocation(line: 457, column: 3, scope: !1336, inlinedAt: !1472)
!1475 = !DILocation(line: 463, column: 22, scope: !1339, inlinedAt: !1472)
!1476 = !DILocation(line: 463, column: 24, scope: !1339, inlinedAt: !1472)
!1477 = !DILocation(line: 463, column: 15, scope: !1339, inlinedAt: !1472)
!1478 = !DILocation(line: 418, column: 33, scope: !1215, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 465, column: 15, scope: !1352, inlinedAt: !1472)
!1480 = !DILocation(line: 420, column: 10, scope: !1215, inlinedAt: !1479)
!1481 = !DILocation(line: 420, column: 14, scope: !1215, inlinedAt: !1479)
!1482 = !DILocation(line: 420, column: 6, scope: !1215, inlinedAt: !1479)
!1483 = !DILocation(line: 423, column: 11, scope: !1223, inlinedAt: !1479)
!1484 = !DILocation(line: 422, column: 3, scope: !1215, inlinedAt: !1479)
!1485 = !DILocation(line: 423, column: 9, scope: !1215, inlinedAt: !1479)
!1486 = !DILocation(line: 425, column: 11, scope: !1215, inlinedAt: !1479)
!1487 = !DILocation(line: 425, column: 10, scope: !1215, inlinedAt: !1479)
!1488 = !DILocation(line: 467, column: 31, scope: !1362, inlinedAt: !1472)
!1489 = !DILocation(line: 467, column: 13, scope: !1362, inlinedAt: !1472)
!1490 = !DILocation(line: 469, column: 9, scope: !1339, inlinedAt: !1472)
!1491 = !DILocation(line: 470, column: 17, scope: !1339, inlinedAt: !1472)
!1492 = !DILocation(line: 471, column: 9, scope: !1339, inlinedAt: !1472)
!1493 = !DILocation(line: 474, column: 7, scope: !1340, inlinedAt: !1472)
!1494 = !DILocation(line: 782, column: 13, scope: !1449)
!1495 = !DILocation(line: 783, column: 31, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 783, column: 15)
!1497 = !DILocation(line: 783, column: 34, scope: !1496)
!1498 = !DILocation(line: 783, column: 15, scope: !1450)
!1499 = !DILocation(line: 784, column: 13, scope: !1496)
!1500 = !DILocation(line: 786, column: 19, scope: !1450)
!1501 = !DILocation(line: 786, column: 15, scope: !1450)
!1502 = !DILocation(line: 785, column: 13, scope: !1450)
!1503 = !DILocation(line: 788, column: 29, scope: !1450)
!1504 = !DILocation(line: 785, column: 12, scope: !1450)
!1505 = !DILocation(line: 789, column: 9, scope: !1450)
!1506 = !DILocation(line: 356, column: 15, scope: !899, inlinedAt: !1446)
!1507 = !DILocation(line: 358, column: 15, scope: !898, inlinedAt: !1446)
!1508 = !DILocation(line: 358, column: 7, scope: !899, inlinedAt: !1446)
!1509 = !DILocation(line: 359, column: 16, scope: !898, inlinedAt: !1446)
!1510 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !1446)
!1511 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !1446)
!1512 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !1446)
!1513 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !1446)
!1514 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !1446)
!1515 = distinct !{!1515, !1516, !1517}
!1516 = !DILocation(line: 768, column: 3, scope: !88)
!1517 = !DILocation(line: 791, column: 5, scope: !88)
!1518 = distinct !DISubprogram(name: "eval5", scope: !3, file: !3, line: 727, type: !15, isLocal: true, isDefinition: true, scopeLine: 728, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1519)
!1519 = !{!1520, !1521, !1522, !1523}
!1520 = !DILocalVariable(name: "evaluate", arg: 1, scope: !1518, file: !3, line: 727, type: !45)
!1521 = !DILocalVariable(name: "l", scope: !1518, file: !3, line: 729, type: !17)
!1522 = !DILocalVariable(name: "r", scope: !1518, file: !3, line: 730, type: !17)
!1523 = !DILocalVariable(name: "v", scope: !1518, file: !3, line: 731, type: !17)
!1524 = !DILocation(line: 727, column: 13, scope: !1518)
!1525 = !DILocation(line: 736, column: 7, scope: !1518)
!1526 = !DILocation(line: 729, column: 10, scope: !1518)
!1527 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 739, column: 11, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 739, column: 11)
!1530 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 738, column: 5)
!1531 = !DILocation(line: 501, column: 8, scope: !836, inlinedAt: !1528)
!1532 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !1528)
!1533 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !1528)
!1534 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !1528)
!1535 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !1528)
!1536 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !1528)
!1537 = !DILocation(line: 739, column: 11, scope: !1530)
!1538 = !DILocation(line: 741, column: 15, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 740, column: 9)
!1540 = !DILocation(line: 730, column: 10, scope: !1518)
!1541 = !DILocation(line: 742, column: 15, scope: !1539)
!1542 = !DILocation(line: 744, column: 19, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 743, column: 13)
!1544 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 742, column: 15)
!1545 = !DILocation(line: 731, column: 10, scope: !1518)
!1546 = !DILocation(line: 356, column: 15, scope: !899, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 745, column: 15, scope: !1543)
!1548 = !DILocation(line: 358, column: 10, scope: !898, inlinedAt: !1547)
!1549 = !DILocation(line: 358, column: 15, scope: !898, inlinedAt: !1547)
!1550 = !DILocation(line: 358, column: 7, scope: !899, inlinedAt: !1547)
!1551 = !DILocation(line: 359, column: 16, scope: !898, inlinedAt: !1547)
!1552 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !1547)
!1553 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !1547)
!1554 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !1547)
!1555 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !1547)
!1556 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !1547)
!1557 = !DILocation(line: 747, column: 13, scope: !1543)
!1558 = !DILocation(line: 356, column: 15, scope: !899, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 748, column: 11, scope: !1539)
!1560 = !DILocation(line: 358, column: 10, scope: !898, inlinedAt: !1559)
!1561 = !DILocation(line: 358, column: 15, scope: !898, inlinedAt: !1559)
!1562 = !DILocation(line: 358, column: 7, scope: !899, inlinedAt: !1559)
!1563 = !DILocation(line: 359, column: 16, scope: !898, inlinedAt: !1559)
!1564 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !1559)
!1565 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !1559)
!1566 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !1559)
!1567 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !1559)
!1568 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !1559)
!1569 = distinct !{!1569, !1570, !1571}
!1570 = !DILocation(line: 737, column: 3, scope: !1518)
!1571 = !DILocation(line: 752, column: 5, scope: !1518)
!1572 = !DILocation(line: 751, column: 9, scope: !1529)
!1573 = distinct !DISubprogram(name: "eval6", scope: !3, file: !3, line: 632, type: !15, isLocal: true, isDefinition: true, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1574)
!1574 = !{!1575, !1576, !1577, !1578, !1579, !1580, !1581, !1587, !1590, !1593, !1594, !1597}
!1575 = !DILocalVariable(name: "evaluate", arg: 1, scope: !1573, file: !3, line: 632, type: !45)
!1576 = !DILocalVariable(name: "l", scope: !1573, file: !3, line: 634, type: !17)
!1577 = !DILocalVariable(name: "r", scope: !1573, file: !3, line: 635, type: !17)
!1578 = !DILocalVariable(name: "v", scope: !1573, file: !3, line: 636, type: !17)
!1579 = !DILocalVariable(name: "i1", scope: !1573, file: !3, line: 637, type: !17)
!1580 = !DILocalVariable(name: "i2", scope: !1573, file: !3, line: 638, type: !17)
!1581 = !DILocalVariable(name: "pos", scope: !1582, file: !3, line: 673, type: !194)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 672, column: 5)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 671, column: 12)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 657, column: 12)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 649, column: 12)
!1586 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 643, column: 7)
!1587 = !DILocalVariable(name: "llen", scope: !1588, file: !3, line: 687, type: !194)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 686, column: 5)
!1589 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 685, column: 12)
!1590 = !DILocalVariable(name: "pos", scope: !1591, file: !3, line: 698, type: !194)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 697, column: 9)
!1592 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 694, column: 11)
!1593 = !DILocalVariable(name: "len", scope: !1591, file: !3, line: 699, type: !194)
!1594 = !DILocalVariable(name: "vlen", scope: !1595, file: !3, line: 705, type: !194)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 704, column: 13)
!1596 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 701, column: 15)
!1597 = !DILocalVariable(name: "vlim", scope: !1595, file: !3, line: 706, type: !43)
!1598 = !DILocation(line: 632, column: 13, scope: !1573)
!1599 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 643, column: 7, scope: !1586)
!1601 = !DILocation(line: 501, column: 8, scope: !836, inlinedAt: !1600)
!1602 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !1600)
!1603 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !1600)
!1604 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !1600)
!1605 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !1600)
!1606 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !1600)
!1607 = !DILocation(line: 643, column: 7, scope: !1573)
!1608 = !DILocation(line: 645, column: 11, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 644, column: 5)
!1610 = !DILocation(line: 646, column: 9, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 645, column: 11)
!1612 = !DILocation(line: 647, column: 30, scope: !1609)
!1613 = !DILocalVariable(name: "s", arg: 1, scope: !1614, file: !3, line: 345, type: !99)
!1614 = distinct !DISubprogram(name: "str_value", scope: !3, file: !3, line: 345, type: !1615, isLocal: true, isDefinition: true, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1617)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!17, !99}
!1617 = !{!1613, !1618}
!1618 = !DILocalVariable(name: "v", scope: !1614, file: !3, line: 347, type: !17)
!1619 = !DILocation(line: 345, column: 24, scope: !1614, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 647, column: 14, scope: !1609)
!1621 = !DILocation(line: 347, column: 14, scope: !1614, inlinedAt: !1620)
!1622 = !DILocation(line: 347, column: 10, scope: !1614, inlinedAt: !1620)
!1623 = !DILocation(line: 348, column: 6, scope: !1614, inlinedAt: !1620)
!1624 = !DILocation(line: 348, column: 11, scope: !1614, inlinedAt: !1620)
!1625 = !DILocation(line: 349, column: 12, scope: !1614, inlinedAt: !1620)
!1626 = !DILocation(line: 349, column: 6, scope: !1614, inlinedAt: !1620)
!1627 = !DILocation(line: 349, column: 8, scope: !1614, inlinedAt: !1620)
!1628 = !DILocation(line: 349, column: 10, scope: !1614, inlinedAt: !1620)
!1629 = !DILocation(line: 647, column: 7, scope: !1609)
!1630 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 649, column: 12, scope: !1585)
!1632 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !1631)
!1633 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !1631)
!1634 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !1631)
!1635 = !DILocation(line: 649, column: 12, scope: !1586)
!1636 = !DILocation(line: 651, column: 11, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 650, column: 5)
!1638 = !DILocation(line: 635, column: 10, scope: !1573)
!1639 = !DILocation(line: 433, column: 18, scope: !1178, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 652, column: 7, scope: !1637)
!1641 = !DILocation(line: 435, column: 14, scope: !1178, inlinedAt: !1640)
!1642 = !DILocation(line: 435, column: 3, scope: !1178, inlinedAt: !1640)
!1643 = !DILocation(line: 653, column: 35, scope: !1637)
!1644 = !DILocation(line: 439, column: 45, scope: !1181, inlinedAt: !1640)
!1645 = !DILocation(line: 439, column: 42, scope: !1181, inlinedAt: !1640)
!1646 = !DILocation(line: 439, column: 19, scope: !1181, inlinedAt: !1640)
!1647 = !DILocation(line: 439, column: 15, scope: !1181, inlinedAt: !1640)
!1648 = !DILocation(line: 440, column: 9, scope: !1181, inlinedAt: !1640)
!1649 = !DILocation(line: 441, column: 14, scope: !1181, inlinedAt: !1640)
!1650 = !DILocation(line: 441, column: 16, scope: !1181, inlinedAt: !1640)
!1651 = !DILocation(line: 442, column: 17, scope: !1181, inlinedAt: !1640)
!1652 = !DILocation(line: 444, column: 7, scope: !1182, inlinedAt: !1640)
!1653 = !DILocation(line: 448, column: 7, scope: !1182, inlinedAt: !1640)
!1654 = !DILocation(line: 653, column: 22, scope: !1637)
!1655 = !DILocation(line: 334, column: 30, scope: !939, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 653, column: 11, scope: !1637)
!1657 = !DILocation(line: 336, column: 14, scope: !939, inlinedAt: !1656)
!1658 = !DILocation(line: 336, column: 10, scope: !939, inlinedAt: !1656)
!1659 = !DILocation(line: 337, column: 6, scope: !939, inlinedAt: !1656)
!1660 = !DILocation(line: 337, column: 11, scope: !939, inlinedAt: !1656)
!1661 = !DILocation(line: 338, column: 23, scope: !939, inlinedAt: !1656)
!1662 = !DILocation(line: 338, column: 20, scope: !939, inlinedAt: !1656)
!1663 = !DILocation(line: 338, column: 3, scope: !939, inlinedAt: !1656)
!1664 = !DILocation(line: 636, column: 10, scope: !1573)
!1665 = !DILocation(line: 356, column: 15, scope: !899, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 654, column: 7, scope: !1637)
!1667 = !DILocation(line: 358, column: 10, scope: !898, inlinedAt: !1666)
!1668 = !DILocation(line: 358, column: 15, scope: !898, inlinedAt: !1666)
!1669 = !DILocation(line: 358, column: 7, scope: !899, inlinedAt: !1666)
!1670 = !DILocation(line: 359, column: 16, scope: !898, inlinedAt: !1666)
!1671 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !1666)
!1672 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !1666)
!1673 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !1666)
!1674 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !1666)
!1675 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !1666)
!1676 = !DILocation(line: 655, column: 7, scope: !1637)
!1677 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 657, column: 12, scope: !1584)
!1679 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !1678)
!1680 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !1678)
!1681 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !1678)
!1682 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !1678)
!1683 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !1678)
!1684 = !DILocation(line: 657, column: 12, scope: !1585)
!1685 = !DILocation(line: 659, column: 11, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 658, column: 5)
!1687 = !DILocation(line: 634, column: 10, scope: !1573)
!1688 = !DILocation(line: 660, column: 11, scope: !1686)
!1689 = !DILocation(line: 661, column: 11, scope: !1686)
!1690 = !DILocation(line: 663, column: 15, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 662, column: 9)
!1692 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 661, column: 11)
!1693 = !DILocation(line: 356, column: 15, scope: !899, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 664, column: 11, scope: !1691)
!1695 = !DILocation(line: 358, column: 10, scope: !898, inlinedAt: !1694)
!1696 = !DILocation(line: 358, column: 15, scope: !898, inlinedAt: !1694)
!1697 = !DILocation(line: 358, column: 7, scope: !899, inlinedAt: !1694)
!1698 = !DILocation(line: 359, column: 16, scope: !898, inlinedAt: !1694)
!1699 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !1694)
!1700 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !1694)
!1701 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !1694)
!1702 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !1694)
!1703 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !1694)
!1704 = !DILocation(line: 665, column: 9, scope: !1691)
!1705 = !DILocation(line: 356, column: 15, scope: !899, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 668, column: 7, scope: !1686)
!1707 = !DILocation(line: 358, column: 10, scope: !898, inlinedAt: !1706)
!1708 = !DILocation(line: 358, column: 15, scope: !898, inlinedAt: !1706)
!1709 = !DILocation(line: 358, column: 7, scope: !899, inlinedAt: !1706)
!1710 = !DILocation(line: 359, column: 16, scope: !898, inlinedAt: !1706)
!1711 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !1706)
!1712 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !1706)
!1713 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !1706)
!1714 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !1706)
!1715 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !1706)
!1716 = !DILocation(line: 669, column: 7, scope: !1686)
!1717 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 671, column: 12, scope: !1583)
!1719 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !1718)
!1720 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !1718)
!1721 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !1718)
!1722 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !1718)
!1723 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !1718)
!1724 = !DILocation(line: 671, column: 12, scope: !1584)
!1725 = !DILocation(line: 675, column: 11, scope: !1582)
!1726 = !DILocation(line: 676, column: 11, scope: !1582)
!1727 = !DILocation(line: 433, column: 18, scope: !1178, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 677, column: 7, scope: !1582)
!1729 = !DILocation(line: 435, column: 14, scope: !1178, inlinedAt: !1728)
!1730 = !DILocation(line: 435, column: 3, scope: !1178, inlinedAt: !1728)
!1731 = !DILocation(line: 439, column: 45, scope: !1181, inlinedAt: !1728)
!1732 = !DILocation(line: 439, column: 42, scope: !1181, inlinedAt: !1728)
!1733 = !DILocation(line: 439, column: 19, scope: !1181, inlinedAt: !1728)
!1734 = !DILocation(line: 439, column: 15, scope: !1181, inlinedAt: !1728)
!1735 = !DILocation(line: 440, column: 9, scope: !1181, inlinedAt: !1728)
!1736 = !DILocation(line: 441, column: 14, scope: !1181, inlinedAt: !1728)
!1737 = !DILocation(line: 441, column: 16, scope: !1181, inlinedAt: !1728)
!1738 = !DILocation(line: 442, column: 17, scope: !1181, inlinedAt: !1728)
!1739 = !DILocation(line: 444, column: 7, scope: !1182, inlinedAt: !1728)
!1740 = !DILocation(line: 448, column: 7, scope: !1182, inlinedAt: !1728)
!1741 = !DILocation(line: 433, column: 18, scope: !1178, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 678, column: 7, scope: !1582)
!1743 = !DILocation(line: 435, column: 14, scope: !1178, inlinedAt: !1742)
!1744 = !DILocation(line: 435, column: 3, scope: !1178, inlinedAt: !1742)
!1745 = !DILocation(line: 679, column: 35, scope: !1582)
!1746 = !DILocation(line: 439, column: 45, scope: !1181, inlinedAt: !1742)
!1747 = !DILocation(line: 439, column: 42, scope: !1181, inlinedAt: !1742)
!1748 = !DILocation(line: 439, column: 19, scope: !1181, inlinedAt: !1742)
!1749 = !DILocation(line: 439, column: 15, scope: !1181, inlinedAt: !1742)
!1750 = !DILocation(line: 440, column: 9, scope: !1181, inlinedAt: !1742)
!1751 = !DILocation(line: 441, column: 14, scope: !1181, inlinedAt: !1742)
!1752 = !DILocation(line: 441, column: 16, scope: !1181, inlinedAt: !1742)
!1753 = !DILocation(line: 442, column: 17, scope: !1181, inlinedAt: !1742)
!1754 = !DILocation(line: 444, column: 7, scope: !1182, inlinedAt: !1742)
!1755 = !DILocation(line: 448, column: 7, scope: !1182, inlinedAt: !1742)
!1756 = !DILocation(line: 679, column: 25, scope: !1582)
!1757 = !DILocation(line: 679, column: 27, scope: !1582)
!1758 = !DILocation(line: 679, column: 13, scope: !1582)
!1759 = !DILocation(line: 673, column: 14, scope: !1582)
!1760 = !DILocation(line: 680, column: 22, scope: !1582)
!1761 = !DILocation(line: 680, column: 40, scope: !1582)
!1762 = !DILocation(line: 334, column: 30, scope: !939, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 680, column: 11, scope: !1582)
!1764 = !DILocation(line: 336, column: 14, scope: !939, inlinedAt: !1763)
!1765 = !DILocation(line: 336, column: 10, scope: !939, inlinedAt: !1763)
!1766 = !DILocation(line: 337, column: 6, scope: !939, inlinedAt: !1763)
!1767 = !DILocation(line: 337, column: 11, scope: !939, inlinedAt: !1763)
!1768 = !DILocation(line: 338, column: 23, scope: !939, inlinedAt: !1763)
!1769 = !DILocation(line: 338, column: 20, scope: !939, inlinedAt: !1763)
!1770 = !DILocation(line: 338, column: 3, scope: !939, inlinedAt: !1763)
!1771 = !DILocation(line: 356, column: 15, scope: !899, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 681, column: 7, scope: !1582)
!1773 = !DILocation(line: 358, column: 10, scope: !898, inlinedAt: !1772)
!1774 = !DILocation(line: 358, column: 15, scope: !898, inlinedAt: !1772)
!1775 = !DILocation(line: 358, column: 7, scope: !899, inlinedAt: !1772)
!1776 = !DILocation(line: 359, column: 16, scope: !898, inlinedAt: !1772)
!1777 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !1772)
!1778 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !1772)
!1779 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !1772)
!1780 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !1772)
!1781 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !1772)
!1782 = !DILocation(line: 356, column: 15, scope: !899, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 682, column: 7, scope: !1582)
!1784 = !DILocation(line: 358, column: 10, scope: !898, inlinedAt: !1783)
!1785 = !DILocation(line: 358, column: 15, scope: !898, inlinedAt: !1783)
!1786 = !DILocation(line: 358, column: 7, scope: !899, inlinedAt: !1783)
!1787 = !DILocation(line: 359, column: 16, scope: !898, inlinedAt: !1783)
!1788 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !1783)
!1789 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !1783)
!1790 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !1783)
!1791 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !1783)
!1792 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !1783)
!1793 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 685, column: 12, scope: !1589)
!1795 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !1794)
!1796 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !1794)
!1797 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !1794)
!1798 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !1794)
!1799 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !1794)
!1800 = !DILocation(line: 685, column: 12, scope: !1583)
!1801 = !DILocation(line: 688, column: 11, scope: !1588)
!1802 = !DILocation(line: 689, column: 12, scope: !1588)
!1803 = !DILocation(line: 637, column: 10, scope: !1573)
!1804 = !DILocation(line: 690, column: 12, scope: !1588)
!1805 = !DILocation(line: 638, column: 10, scope: !1573)
!1806 = !DILocation(line: 433, column: 18, scope: !1178, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 691, column: 7, scope: !1588)
!1808 = !DILocation(line: 435, column: 14, scope: !1178, inlinedAt: !1807)
!1809 = !DILocation(line: 435, column: 3, scope: !1178, inlinedAt: !1807)
!1810 = !DILocation(line: 692, column: 27, scope: !1588)
!1811 = !DILocation(line: 439, column: 45, scope: !1181, inlinedAt: !1807)
!1812 = !DILocation(line: 439, column: 42, scope: !1181, inlinedAt: !1807)
!1813 = !DILocation(line: 439, column: 19, scope: !1181, inlinedAt: !1807)
!1814 = !DILocation(line: 439, column: 15, scope: !1181, inlinedAt: !1807)
!1815 = !DILocation(line: 440, column: 9, scope: !1181, inlinedAt: !1807)
!1816 = !DILocation(line: 441, column: 14, scope: !1181, inlinedAt: !1807)
!1817 = !DILocation(line: 441, column: 16, scope: !1181, inlinedAt: !1807)
!1818 = !DILocation(line: 442, column: 17, scope: !1181, inlinedAt: !1807)
!1819 = !DILocation(line: 444, column: 7, scope: !1182, inlinedAt: !1807)
!1820 = !DILocation(line: 448, column: 7, scope: !1182, inlinedAt: !1807)
!1821 = !DILocation(line: 692, column: 14, scope: !1588)
!1822 = !DILocation(line: 687, column: 14, scope: !1588)
!1823 = !DILocation(line: 455, column: 17, scope: !1336, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 694, column: 12, scope: !1592)
!1825 = !DILocation(line: 457, column: 14, scope: !1336, inlinedAt: !1824)
!1826 = !DILocation(line: 457, column: 3, scope: !1336, inlinedAt: !1824)
!1827 = !DILocation(line: 463, column: 22, scope: !1339, inlinedAt: !1824)
!1828 = !DILocation(line: 463, column: 24, scope: !1339, inlinedAt: !1824)
!1829 = !DILocation(line: 463, column: 15, scope: !1339, inlinedAt: !1824)
!1830 = !DILocation(line: 418, column: 33, scope: !1215, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 465, column: 15, scope: !1352, inlinedAt: !1824)
!1832 = !DILocation(line: 420, column: 10, scope: !1215, inlinedAt: !1831)
!1833 = !DILocation(line: 420, column: 14, scope: !1215, inlinedAt: !1831)
!1834 = !DILocation(line: 420, column: 6, scope: !1215, inlinedAt: !1831)
!1835 = !DILocation(line: 423, column: 11, scope: !1223, inlinedAt: !1831)
!1836 = !DILocation(line: 422, column: 3, scope: !1215, inlinedAt: !1831)
!1837 = !DILocation(line: 423, column: 9, scope: !1215, inlinedAt: !1831)
!1838 = !DILocation(line: 425, column: 11, scope: !1215, inlinedAt: !1831)
!1839 = !DILocation(line: 425, column: 10, scope: !1215, inlinedAt: !1831)
!1840 = !DILocation(line: 467, column: 31, scope: !1362, inlinedAt: !1824)
!1841 = !DILocation(line: 467, column: 13, scope: !1362, inlinedAt: !1824)
!1842 = !DILocation(line: 469, column: 9, scope: !1339, inlinedAt: !1824)
!1843 = !DILocation(line: 470, column: 17, scope: !1339, inlinedAt: !1824)
!1844 = !DILocation(line: 471, column: 9, scope: !1339, inlinedAt: !1824)
!1845 = !DILocation(line: 474, column: 7, scope: !1340, inlinedAt: !1824)
!1846 = !DILocation(line: 455, column: 17, scope: !1336, inlinedAt: !1847)
!1847 = distinct !DILocation(line: 694, column: 29, scope: !1592)
!1848 = !DILocation(line: 457, column: 14, scope: !1336, inlinedAt: !1847)
!1849 = !DILocation(line: 457, column: 3, scope: !1336, inlinedAt: !1847)
!1850 = !DILocation(line: 463, column: 22, scope: !1339, inlinedAt: !1847)
!1851 = !DILocation(line: 463, column: 24, scope: !1339, inlinedAt: !1847)
!1852 = !DILocation(line: 463, column: 15, scope: !1339, inlinedAt: !1847)
!1853 = !DILocation(line: 418, column: 33, scope: !1215, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 465, column: 15, scope: !1352, inlinedAt: !1847)
!1855 = !DILocation(line: 420, column: 10, scope: !1215, inlinedAt: !1854)
!1856 = !DILocation(line: 420, column: 14, scope: !1215, inlinedAt: !1854)
!1857 = !DILocation(line: 420, column: 6, scope: !1215, inlinedAt: !1854)
!1858 = !DILocation(line: 423, column: 11, scope: !1223, inlinedAt: !1854)
!1859 = !DILocation(line: 422, column: 3, scope: !1215, inlinedAt: !1854)
!1860 = !DILocation(line: 423, column: 9, scope: !1215, inlinedAt: !1854)
!1861 = !DILocation(line: 425, column: 11, scope: !1215, inlinedAt: !1854)
!1862 = !DILocation(line: 425, column: 10, scope: !1215, inlinedAt: !1854)
!1863 = !DILocation(line: 467, column: 31, scope: !1362, inlinedAt: !1847)
!1864 = !DILocation(line: 467, column: 13, scope: !1362, inlinedAt: !1847)
!1865 = !DILocation(line: 469, column: 9, scope: !1339, inlinedAt: !1847)
!1866 = !DILocation(line: 470, column: 17, scope: !1339, inlinedAt: !1847)
!1867 = !DILocation(line: 471, column: 9, scope: !1339, inlinedAt: !1847)
!1868 = !DILocation(line: 474, column: 7, scope: !1340, inlinedAt: !1847)
!1869 = !DILocation(line: 345, column: 24, scope: !1614, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 695, column: 13, scope: !1592)
!1871 = !DILocation(line: 347, column: 14, scope: !1614, inlinedAt: !1870)
!1872 = !DILocation(line: 347, column: 10, scope: !1614, inlinedAt: !1870)
!1873 = !DILocation(line: 348, column: 6, scope: !1614, inlinedAt: !1870)
!1874 = !DILocation(line: 348, column: 11, scope: !1614, inlinedAt: !1870)
!1875 = !DILocation(line: 349, column: 12, scope: !1614, inlinedAt: !1870)
!1876 = !DILocation(line: 349, column: 6, scope: !1614, inlinedAt: !1870)
!1877 = !DILocation(line: 349, column: 8, scope: !1614, inlinedAt: !1870)
!1878 = !DILocation(line: 349, column: 10, scope: !1614, inlinedAt: !1870)
!1879 = !DILocation(line: 695, column: 9, scope: !1592)
!1880 = !DILocalVariable(name: "i", arg: 1, scope: !1881, file: !3, line: 482, type: !1884)
!1881 = distinct !DISubprogram(name: "getsize", scope: !3, file: !3, line: 482, type: !1882, isLocal: true, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1885)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!194, !1884}
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!1885 = !{!1880, !1886}
!1886 = !DILocalVariable(name: "ul", scope: !1887, file: !3, line: 488, type: !39)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 487, column: 5)
!1888 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 486, column: 7)
!1889 = !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)
!1890 = !DILocation(line: 482, column: 16, scope: !1881, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 698, column: 24, scope: !1591)
!1892 = !DILocation(line: 484, column: 7, scope: !1893, inlinedAt: !1891)
!1893 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 484, column: 7)
!1894 = !{!1895, !675, i64 4}
!1895 = !{!"", !675, i64 0, !675, i64 4, !659, i64 8}
!1896 = !DILocation(line: 484, column: 7, scope: !1881, inlinedAt: !1891)
!1897 = !DILocalVariable(name: "__gmp_z", arg: 1, scope: !1898, file: !28, line: 1745, type: !1901)
!1898 = distinct !DISubprogram(name: "__gmpz_fits_ulong_p", scope: !28, file: !28, line: 1745, type: !1899, isLocal: false, isDefinition: true, scopeLine: 1746, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1904)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!34, !1901}
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpz_srcptr", file: !28, line: 224, baseType: !1902)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!1904 = !{!1897, !1905, !1908}
!1905 = !DILocalVariable(name: "__gmp_n", scope: !1898, file: !28, line: 1747, type: !1906)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp_size_t", file: !28, line: 175, baseType: !1907)
!1907 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1908 = !DILocalVariable(name: "__gmp_p", scope: !1898, file: !28, line: 1747, type: !1909)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp_ptr", file: !28, line: 166, baseType: !37)
!1910 = !DILocation(line: 1745, column: 30, scope: !1898, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 486, column: 7, scope: !1888, inlinedAt: !1891)
!1912 = !DIExpression(DW_OP_plus_uconst, 8, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)
!1913 = !DILocation(line: 1747, column: 3, scope: !1898, inlinedAt: !1911)
!1914 = !DILocation(line: 486, column: 7, scope: !1881, inlinedAt: !1891)
!1915 = !DILocalVariable(name: "__gmp_z", arg: 1, scope: !1916, file: !28, line: 1767, type: !1901)
!1916 = distinct !DISubprogram(name: "__gmpz_get_ui", scope: !28, file: !28, line: 1767, type: !1917, isLocal: false, isDefinition: true, scopeLine: 1768, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1919)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!39, !1901}
!1919 = !{!1915, !1920, !1921, !1922}
!1920 = !DILocalVariable(name: "__gmp_p", scope: !1916, file: !28, line: 1769, type: !1909)
!1921 = !DILocalVariable(name: "__gmp_n", scope: !1916, file: !28, line: 1770, type: !1906)
!1922 = !DILocalVariable(name: "__gmp_l", scope: !1916, file: !28, line: 1771, type: !38)
!1923 = !DILocation(line: 1767, column: 24, scope: !1916, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 488, column: 30, scope: !1887, inlinedAt: !1891)
!1925 = !DILocation(line: 1769, column: 29, scope: !1916, inlinedAt: !1924)
!1926 = !{!1895, !659, i64 8}
!1927 = !DILocation(line: 1769, column: 10, scope: !1916, inlinedAt: !1924)
!1928 = !DILocation(line: 1771, column: 23, scope: !1916, inlinedAt: !1924)
!1929 = !{!676, !676, i64 0}
!1930 = !DILocation(line: 1771, column: 13, scope: !1916, inlinedAt: !1924)
!1931 = !DILocation(line: 1778, column: 19, scope: !1916, inlinedAt: !1924)
!1932 = !DILocation(line: 1778, column: 11, scope: !1916, inlinedAt: !1924)
!1933 = !DILocation(line: 488, column: 25, scope: !1887, inlinedAt: !1891)
!1934 = !DILocation(line: 489, column: 14, scope: !1935, inlinedAt: !1891)
!1935 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 489, column: 11)
!1936 = !DILocation(line: 492, column: 3, scope: !1881, inlinedAt: !1891)
!1937 = !DILocation(line: 698, column: 18, scope: !1591)
!1938 = !DILocation(line: 482, column: 16, scope: !1881, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 699, column: 24, scope: !1591)
!1940 = !DILocation(line: 484, column: 7, scope: !1893, inlinedAt: !1939)
!1941 = !DILocation(line: 484, column: 7, scope: !1881, inlinedAt: !1939)
!1942 = !DILocation(line: 1745, column: 30, scope: !1898, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 486, column: 7, scope: !1888, inlinedAt: !1939)
!1944 = !DILocation(line: 1747, column: 3, scope: !1898, inlinedAt: !1943)
!1945 = !DILocation(line: 486, column: 7, scope: !1881, inlinedAt: !1939)
!1946 = !DILocation(line: 1767, column: 24, scope: !1916, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 488, column: 30, scope: !1887, inlinedAt: !1939)
!1948 = !DILocation(line: 1769, column: 29, scope: !1916, inlinedAt: !1947)
!1949 = !DILocation(line: 1769, column: 10, scope: !1916, inlinedAt: !1947)
!1950 = !DILocation(line: 1771, column: 23, scope: !1916, inlinedAt: !1947)
!1951 = !DILocation(line: 1771, column: 13, scope: !1916, inlinedAt: !1947)
!1952 = !DILocation(line: 1778, column: 19, scope: !1916, inlinedAt: !1947)
!1953 = !DILocation(line: 1778, column: 11, scope: !1916, inlinedAt: !1947)
!1954 = !DILocation(line: 488, column: 25, scope: !1887, inlinedAt: !1939)
!1955 = !DILocation(line: 489, column: 14, scope: !1935, inlinedAt: !1939)
!1956 = !DILocation(line: 492, column: 3, scope: !1881, inlinedAt: !1939)
!1957 = !DILocation(line: 699, column: 18, scope: !1591)
!1958 = !DILocation(line: 701, column: 26, scope: !1596)
!1959 = !DILocation(line: 345, column: 24, scope: !1614, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 702, column: 17, scope: !1596)
!1961 = !DILocation(line: 347, column: 14, scope: !1614, inlinedAt: !1960)
!1962 = !DILocation(line: 347, column: 10, scope: !1614, inlinedAt: !1960)
!1963 = !DILocation(line: 348, column: 6, scope: !1614, inlinedAt: !1960)
!1964 = !DILocation(line: 348, column: 11, scope: !1614, inlinedAt: !1960)
!1965 = !DILocation(line: 349, column: 12, scope: !1614, inlinedAt: !1960)
!1966 = !DILocation(line: 349, column: 6, scope: !1614, inlinedAt: !1960)
!1967 = !DILocation(line: 349, column: 8, scope: !1614, inlinedAt: !1960)
!1968 = !DILocation(line: 349, column: 10, scope: !1614, inlinedAt: !1960)
!1969 = !DILocation(line: 702, column: 13, scope: !1596)
!1970 = !DILocation(line: 705, column: 29, scope: !1595)
!1971 = !DILocation(line: 705, column: 22, scope: !1595)
!1972 = !DILocation(line: 707, column: 19, scope: !1595)
!1973 = !DILocation(line: 708, column: 18, scope: !1595)
!1974 = !DILocation(line: 708, column: 23, scope: !1595)
!1975 = !DILocation(line: 709, column: 38, scope: !1595)
!1976 = !DILocation(line: 709, column: 24, scope: !1595)
!1977 = !DILocation(line: 709, column: 18, scope: !1595)
!1978 = !DILocation(line: 709, column: 20, scope: !1595)
!1979 = !DILocation(line: 709, column: 22, scope: !1595)
!1980 = !DILocation(line: 710, column: 44, scope: !1595)
!1981 = !DILocation(line: 710, column: 46, scope: !1595)
!1982 = !DILocation(line: 710, column: 52, scope: !1595)
!1983 = !DILocalVariable(name: "__dest", arg: 1, scope: !1984, file: !1985, line: 45, type: !1988)
!1984 = distinct !DISubprogram(name: "mempcpy", scope: !1985, file: !1985, line: 45, type: !1986, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1992)
!1985 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!101, !1988, !1989, !194}
!1988 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !101)
!1989 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1990)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1992 = !{!1983, !1993, !1994}
!1993 = !DILocalVariable(name: "__src", arg: 2, scope: !1984, file: !1985, line: 45, type: !1989)
!1994 = !DILocalVariable(name: "__len", arg: 3, scope: !1984, file: !1985, line: 45, type: !194)
!1995 = !DILocation(line: 45, column: 1, scope: !1984, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 710, column: 22, scope: !1595)
!1997 = !DILocation(line: 48, column: 57, scope: !1984, inlinedAt: !1996)
!1998 = !DILocation(line: 48, column: 10, scope: !1984, inlinedAt: !1996)
!1999 = !DILocation(line: 706, column: 21, scope: !1595)
!2000 = !DILocation(line: 711, column: 21, scope: !1595)
!2001 = !DILocation(line: 356, column: 15, scope: !899, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 714, column: 7, scope: !1588)
!2003 = !DILocation(line: 358, column: 10, scope: !898, inlinedAt: !2002)
!2004 = !DILocation(line: 358, column: 15, scope: !898, inlinedAt: !2002)
!2005 = !DILocation(line: 358, column: 7, scope: !899, inlinedAt: !2002)
!2006 = !DILocation(line: 359, column: 16, scope: !898, inlinedAt: !2002)
!2007 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !2002)
!2008 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !2002)
!2009 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !2002)
!2010 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !2002)
!2011 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !2002)
!2012 = !DILocation(line: 356, column: 15, scope: !899, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 715, column: 7, scope: !1588)
!2014 = !DILocation(line: 358, column: 10, scope: !898, inlinedAt: !2013)
!2015 = !DILocation(line: 358, column: 15, scope: !898, inlinedAt: !2013)
!2016 = !DILocation(line: 358, column: 7, scope: !899, inlinedAt: !2013)
!2017 = !DILocation(line: 359, column: 16, scope: !898, inlinedAt: !2013)
!2018 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !2013)
!2019 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !2013)
!2020 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !2013)
!2021 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !2013)
!2022 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !2013)
!2023 = !DILocation(line: 356, column: 15, scope: !899, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 716, column: 7, scope: !1588)
!2025 = !DILocation(line: 358, column: 10, scope: !898, inlinedAt: !2024)
!2026 = !DILocation(line: 358, column: 15, scope: !898, inlinedAt: !2024)
!2027 = !DILocation(line: 358, column: 7, scope: !899, inlinedAt: !2024)
!2028 = !DILocation(line: 359, column: 16, scope: !898, inlinedAt: !2024)
!2029 = !DILocation(line: 359, column: 5, scope: !898, inlinedAt: !2024)
!2030 = !DILocation(line: 361, column: 16, scope: !898, inlinedAt: !2024)
!2031 = !DILocation(line: 361, column: 5, scope: !898, inlinedAt: !2024)
!2032 = !DILocation(line: 362, column: 9, scope: !899, inlinedAt: !2024)
!2033 = !DILocation(line: 362, column: 3, scope: !899, inlinedAt: !2024)
!2034 = !DILocation(line: 516, column: 10, scope: !752, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 612, column: 7, scope: !2036, inlinedAt: !2041)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 612, column: 7)
!2037 = distinct !DISubprogram(name: "eval7", scope: !3, file: !3, line: 605, type: !15, isLocal: true, isDefinition: true, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2038)
!2038 = !{!2039, !2040}
!2039 = !DILocalVariable(name: "evaluate", arg: 1, scope: !2037, file: !3, line: 605, type: !45)
!2040 = !DILocalVariable(name: "v", scope: !2037, file: !3, line: 607, type: !17)
!2041 = distinct !DILocation(line: 720, column: 12, scope: !1589)
!2042 = !DILocation(line: 605, column: 13, scope: !2037, inlinedAt: !2041)
!2043 = !DILocation(line: 516, column: 16, scope: !752, inlinedAt: !2035)
!2044 = !DILocation(line: 612, column: 7, scope: !2037, inlinedAt: !2041)
!2045 = !DILocation(line: 613, column: 5, scope: !2036, inlinedAt: !2041)
!2046 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 615, column: 7, scope: !2048, inlinedAt: !2041)
!2048 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 615, column: 7)
!2049 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !2047)
!2050 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !2047)
!2051 = !DILocation(line: 615, column: 7, scope: !2037, inlinedAt: !2041)
!2052 = !DILocation(line: 617, column: 11, scope: !2053, inlinedAt: !2041)
!2053 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 616, column: 5)
!2054 = !DILocation(line: 607, column: 10, scope: !2037, inlinedAt: !2041)
!2055 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 618, column: 12, scope: !2057, inlinedAt: !2041)
!2057 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 618, column: 11)
!2058 = !DILocation(line: 501, column: 8, scope: !836, inlinedAt: !2056)
!2059 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !2056)
!2060 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !2056)
!2061 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !2056)
!2062 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !2056)
!2063 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !2056)
!2064 = !DILocation(line: 618, column: 11, scope: !2053, inlinedAt: !2041)
!2065 = !DILocation(line: 619, column: 9, scope: !2057, inlinedAt: !2041)
!2066 = !DILocation(line: 499, column: 22, scope: !830, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 623, column: 7, scope: !2068, inlinedAt: !2041)
!2068 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 623, column: 7)
!2069 = !DILocation(line: 501, column: 7, scope: !836, inlinedAt: !2067)
!2070 = !DILocation(line: 501, column: 13, scope: !836, inlinedAt: !2067)
!2071 = !DILocation(line: 501, column: 7, scope: !830, inlinedAt: !2067)
!2072 = !DILocation(line: 505, column: 16, scope: !835, inlinedAt: !2067)
!2073 = !DILocation(line: 506, column: 12, scope: !835, inlinedAt: !2067)
!2074 = !DILocation(line: 623, column: 7, scope: !2037, inlinedAt: !2041)
!2075 = !DILocation(line: 624, column: 5, scope: !2068, inlinedAt: !2041)
!2076 = !DILocation(line: 626, column: 26, scope: !2037, inlinedAt: !2041)
!2077 = !DILocation(line: 626, column: 21, scope: !2037, inlinedAt: !2041)
!2078 = !DILocation(line: 345, column: 24, scope: !1614, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 626, column: 10, scope: !2037, inlinedAt: !2041)
!2080 = !DILocation(line: 347, column: 14, scope: !1614, inlinedAt: !2079)
!2081 = !DILocation(line: 347, column: 10, scope: !1614, inlinedAt: !2079)
!2082 = !DILocation(line: 348, column: 6, scope: !1614, inlinedAt: !2079)
!2083 = !DILocation(line: 348, column: 11, scope: !1614, inlinedAt: !2079)
!2084 = !DILocation(line: 349, column: 12, scope: !1614, inlinedAt: !2079)
!2085 = !DILocation(line: 349, column: 6, scope: !1614, inlinedAt: !2079)
!2086 = !DILocation(line: 349, column: 8, scope: !1614, inlinedAt: !2079)
!2087 = !DILocation(line: 349, column: 10, scope: !1614, inlinedAt: !2079)
!2088 = !DILocation(line: 626, column: 3, scope: !2037, inlinedAt: !2041)
!2089 = !DILocation(line: 721, column: 1, scope: !1573)
!2090 = distinct !DISubprogram(name: "docolon", scope: !3, file: !3, line: 540, type: !2091, isLocal: true, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2093)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!17, !17, !17}
!2093 = !{!2094, !2095, !2096, !2097, !2098, !2120, !2121, !2130}
!2094 = !DILocalVariable(name: "sv", arg: 1, scope: !2090, file: !3, line: 540, type: !17)
!2095 = !DILocalVariable(name: "pv", arg: 2, scope: !2090, file: !3, line: 540, type: !17)
!2096 = !DILocalVariable(name: "v", scope: !2090, file: !3, line: 542, type: !17)
!2097 = !DILocalVariable(name: "errmsg", scope: !2090, file: !3, line: 543, type: !99)
!2098 = !DILocalVariable(name: "re_buffer", scope: !2090, file: !3, line: 544, type: !2099)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !2100, line: 414, size: 512, elements: !2101)
!2100 = !DIFile(filename: "./lib/regex.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2101 = !{!2102, !2105, !2107, !2108, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2099, file: !2100, line: 418, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !2100, line: 418, flags: DIFlagFwdDecl)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !2099, file: !2100, line: 421, baseType: !2106, size: 64, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !2100, line: 57, baseType: !39)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2099, file: !2100, line: 424, baseType: !2106, size: 64, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !2099, file: !2100, line: 427, baseType: !2109, size: 64, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !2100, line: 73, baseType: !39)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !2099, file: !2100, line: 432, baseType: !43, size: 64, offset: 256)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !2099, file: !2100, line: 438, baseType: !591, size: 64, offset: 320)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !2099, file: !2100, line: 441, baseType: !194, size: 64, offset: 384)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !2099, file: !2100, line: 447, baseType: !103, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !2099, file: !2100, line: 458, baseType: !103, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !2099, file: !2100, line: 462, baseType: !103, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !2099, file: !2100, line: 466, baseType: !103, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !2099, file: !2100, line: 470, baseType: !103, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !2099, file: !2100, line: 473, baseType: !103, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !2099, file: !2100, line: 476, baseType: !103, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!2120 = !DILocalVariable(name: "fastmap", scope: !2090, file: !3, line: 545, type: !220)
!2121 = !DILocalVariable(name: "re_regs", scope: !2090, file: !3, line: 546, type: !2122)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_registers", file: !2100, line: 498, size: 192, elements: !2123)
!2123 = !{!2124, !2126, !2129}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "num_regs", scope: !2122, file: !2100, line: 500, baseType: !2125, size: 32)
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_size_t", file: !2100, line: 56, baseType: !103)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2122, file: !2100, line: 501, baseType: !2127, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !2100, line: 491, baseType: !34)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2122, file: !2100, line: 502, baseType: !2127, size: 64, offset: 128)
!2130 = !DILocalVariable(name: "matchlen", scope: !2090, file: !3, line: 547, type: !2128)
!2131 = !DILocation(line: 540, column: 17, scope: !2090)
!2132 = !DILocation(line: 540, column: 28, scope: !2090)
!2133 = !DILocation(line: 544, column: 3, scope: !2090)
!2134 = !DILocation(line: 545, column: 3, scope: !2090)
!2135 = !DILocation(line: 545, column: 8, scope: !2090)
!2136 = !DILocation(line: 546, column: 3, scope: !2090)
!2137 = !DILocation(line: 433, column: 18, scope: !1178, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 549, column: 3, scope: !2090)
!2139 = !DILocation(line: 435, column: 14, scope: !1178, inlinedAt: !2138)
!2140 = !DILocation(line: 435, column: 3, scope: !1178, inlinedAt: !2138)
!2141 = !DILocation(line: 439, column: 45, scope: !1181, inlinedAt: !2138)
!2142 = !DILocation(line: 439, column: 42, scope: !1181, inlinedAt: !2138)
!2143 = !DILocation(line: 439, column: 19, scope: !1181, inlinedAt: !2138)
!2144 = !DILocation(line: 439, column: 15, scope: !1181, inlinedAt: !2138)
!2145 = !DILocation(line: 440, column: 9, scope: !1181, inlinedAt: !2138)
!2146 = !DILocation(line: 441, column: 14, scope: !1181, inlinedAt: !2138)
!2147 = !DILocation(line: 441, column: 16, scope: !1181, inlinedAt: !2138)
!2148 = !DILocation(line: 442, column: 17, scope: !1181, inlinedAt: !2138)
!2149 = !DILocation(line: 444, column: 7, scope: !1182, inlinedAt: !2138)
!2150 = !DILocation(line: 448, column: 7, scope: !1182, inlinedAt: !2138)
!2151 = !DILocation(line: 433, column: 18, scope: !1178, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 550, column: 3, scope: !2090)
!2153 = !DILocation(line: 435, column: 14, scope: !1178, inlinedAt: !2152)
!2154 = !DILocation(line: 435, column: 3, scope: !1178, inlinedAt: !2152)
!2155 = !DILocation(line: 562, column: 38, scope: !2090)
!2156 = !DILocation(line: 439, column: 45, scope: !1181, inlinedAt: !2152)
!2157 = !DILocation(line: 439, column: 42, scope: !1181, inlinedAt: !2152)
!2158 = !DILocation(line: 439, column: 19, scope: !1181, inlinedAt: !2152)
!2159 = !DILocation(line: 439, column: 15, scope: !1181, inlinedAt: !2152)
!2160 = !DILocation(line: 440, column: 9, scope: !1181, inlinedAt: !2152)
!2161 = !DILocation(line: 441, column: 14, scope: !1181, inlinedAt: !2152)
!2162 = !DILocation(line: 441, column: 16, scope: !1181, inlinedAt: !2152)
!2163 = !DILocation(line: 442, column: 17, scope: !1181, inlinedAt: !2152)
!2164 = !DILocation(line: 444, column: 7, scope: !1182, inlinedAt: !2152)
!2165 = !DILocation(line: 448, column: 7, scope: !1182, inlinedAt: !2152)
!2166 = !DILocation(line: 552, column: 11, scope: !2090)
!2167 = !DILocation(line: 552, column: 20, scope: !2090)
!2168 = !{!2169, !675, i64 0}
!2169 = !{!"re_registers", !675, i64 0, !659, i64 8, !659, i64 16}
!2170 = !DILocation(line: 553, column: 11, scope: !2090)
!2171 = !DILocation(line: 554, column: 11, scope: !2090)
!2172 = !DILocation(line: 556, column: 20, scope: !2090)
!2173 = !DILocation(line: 553, column: 17, scope: !2090)
!2174 = !DILocation(line: 558, column: 13, scope: !2090)
!2175 = !DILocation(line: 558, column: 21, scope: !2090)
!2176 = !DILocation(line: 557, column: 23, scope: !2090)
!2177 = !{!2178, !659, i64 32}
!2178 = !{!"re_pattern_buffer", !659, i64 0, !676, i64 8, !676, i64 16, !676, i64 24, !659, i64 32, !659, i64 40, !676, i64 48, !675, i64 56, !675, i64 56, !675, i64 56, !675, i64 56, !675, i64 56, !675, i64 56, !675, i64 56}
!2179 = !DILocation(line: 559, column: 13, scope: !2090)
!2180 = !DILocation(line: 559, column: 23, scope: !2090)
!2181 = !{!2178, !659, i64 40}
!2182 = !DILocation(line: 560, column: 21, scope: !2090)
!2183 = !DILocation(line: 562, column: 41, scope: !2090)
!2184 = !DILocation(line: 544, column: 28, scope: !2090)
!2185 = !DILocation(line: 562, column: 12, scope: !2090)
!2186 = !DILocation(line: 543, column: 15, scope: !2090)
!2187 = !DILocation(line: 563, column: 7, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 563, column: 7)
!2189 = !DILocation(line: 563, column: 7, scope: !2090)
!2190 = !DILocation(line: 564, column: 5, scope: !2188)
!2191 = !DILocation(line: 565, column: 13, scope: !2090)
!2192 = !DILocation(line: 565, column: 28, scope: !2090)
!2193 = !DILocation(line: 567, column: 40, scope: !2090)
!2194 = !DILocation(line: 567, column: 42, scope: !2090)
!2195 = !DILocation(line: 567, column: 45, scope: !2090)
!2196 = !DILocation(line: 546, column: 23, scope: !2090)
!2197 = !DILocation(line: 567, column: 14, scope: !2090)
!2198 = !DILocation(line: 547, column: 12, scope: !2090)
!2199 = !DILocation(line: 568, column: 9, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 568, column: 7)
!2201 = !DILocation(line: 568, column: 7, scope: !2090)
!2202 = !DILocation(line: 571, column: 21, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 571, column: 11)
!2204 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 569, column: 5)
!2205 = !{!2178, !676, i64 48}
!2206 = !DILocation(line: 571, column: 29, scope: !2203)
!2207 = !DILocation(line: 571, column: 11, scope: !2204)
!2208 = !DILocation(line: 573, column: 17, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 572, column: 9)
!2210 = !DILocation(line: 573, column: 27, scope: !2209)
!2211 = !{!2169, !659, i64 16}
!2212 = !DILocation(line: 573, column: 19, scope: !2209)
!2213 = !DILocation(line: 573, column: 11, scope: !2209)
!2214 = !DILocation(line: 573, column: 35, scope: !2209)
!2215 = !DILocation(line: 574, column: 32, scope: !2209)
!2216 = !DILocation(line: 574, column: 44, scope: !2209)
!2217 = !{!2169, !659, i64 8}
!2218 = !DILocation(line: 574, column: 36, scope: !2209)
!2219 = !DILocation(line: 574, column: 34, scope: !2209)
!2220 = !DILocation(line: 345, column: 24, scope: !1614, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 574, column: 15, scope: !2209)
!2222 = !DILocation(line: 347, column: 14, scope: !1614, inlinedAt: !2221)
!2223 = !DILocation(line: 347, column: 10, scope: !1614, inlinedAt: !2221)
!2224 = !DILocation(line: 348, column: 6, scope: !1614, inlinedAt: !2221)
!2225 = !DILocation(line: 348, column: 11, scope: !1614, inlinedAt: !2221)
!2226 = !DILocation(line: 349, column: 12, scope: !1614, inlinedAt: !2221)
!2227 = !DILocation(line: 349, column: 6, scope: !1614, inlinedAt: !2221)
!2228 = !DILocation(line: 349, column: 8, scope: !1614, inlinedAt: !2221)
!2229 = !DILocation(line: 349, column: 10, scope: !1614, inlinedAt: !2221)
!2230 = !DILocation(line: 542, column: 10, scope: !2090)
!2231 = !DILocation(line: 575, column: 9, scope: !2209)
!2232 = !DILocation(line: 577, column: 24, scope: !2203)
!2233 = !DILocation(line: 334, column: 30, scope: !939, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 577, column: 13, scope: !2203)
!2235 = !DILocation(line: 336, column: 14, scope: !939, inlinedAt: !2234)
!2236 = !DILocation(line: 336, column: 10, scope: !939, inlinedAt: !2234)
!2237 = !DILocation(line: 337, column: 6, scope: !939, inlinedAt: !2234)
!2238 = !DILocation(line: 337, column: 11, scope: !939, inlinedAt: !2234)
!2239 = !DILocation(line: 338, column: 23, scope: !939, inlinedAt: !2234)
!2240 = !DILocation(line: 338, column: 20, scope: !939, inlinedAt: !2234)
!2241 = !DILocation(line: 338, column: 3, scope: !939, inlinedAt: !2234)
!2242 = !DILocation(line: 579, column: 12, scope: !2200)
!2243 = !DILocation(line: 582, column: 21, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 582, column: 11)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 580, column: 5)
!2246 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 579, column: 12)
!2247 = !DILocation(line: 582, column: 29, scope: !2244)
!2248 = !DILocation(line: 336, column: 14, scope: !939, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 585, column: 13, scope: !2244)
!2250 = !DILocation(line: 582, column: 11, scope: !2245)
!2251 = !DILocation(line: 345, column: 24, scope: !1614, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 583, column: 13, scope: !2244)
!2253 = !DILocation(line: 347, column: 10, scope: !1614, inlinedAt: !2252)
!2254 = !DILocation(line: 348, column: 11, scope: !1614, inlinedAt: !2252)
!2255 = !DILocation(line: 349, column: 12, scope: !1614, inlinedAt: !2252)
!2256 = !DILocation(line: 349, column: 6, scope: !1614, inlinedAt: !2252)
!2257 = !DILocation(line: 349, column: 8, scope: !1614, inlinedAt: !2252)
!2258 = !DILocation(line: 349, column: 10, scope: !1614, inlinedAt: !2252)
!2259 = !DILocation(line: 583, column: 9, scope: !2244)
!2260 = !DILocation(line: 334, column: 30, scope: !939, inlinedAt: !2249)
!2261 = !DILocation(line: 336, column: 10, scope: !939, inlinedAt: !2249)
!2262 = !DILocation(line: 337, column: 11, scope: !939, inlinedAt: !2249)
!2263 = !DILocation(line: 338, column: 23, scope: !939, inlinedAt: !2249)
!2264 = !DILocation(line: 338, column: 20, scope: !939, inlinedAt: !2249)
!2265 = !DILocation(line: 338, column: 3, scope: !939, inlinedAt: !2249)
!2266 = !DILocation(line: 588, column: 5, scope: !2246)
!2267 = !DILocation(line: 592, column: 19, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 592, column: 7)
!2269 = !DILocation(line: 592, column: 9, scope: !2268)
!2270 = !DILocation(line: 592, column: 7, scope: !2090)
!2271 = !DILocation(line: 594, column: 21, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 593, column: 5)
!2273 = !DILocation(line: 594, column: 7, scope: !2272)
!2274 = !DILocation(line: 595, column: 21, scope: !2272)
!2275 = !DILocation(line: 595, column: 7, scope: !2272)
!2276 = !DILocation(line: 596, column: 5, scope: !2272)
!2277 = !DILocation(line: 597, column: 21, scope: !2090)
!2278 = !DILocation(line: 598, column: 3, scope: !2090)
!2279 = !DILocation(line: 600, column: 1, scope: !2090)
!2280 = !DILocation(line: 599, column: 3, scope: !2090)
!2281 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !134, file: !134, line: 41, type: !109, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2282)
!2282 = !{!2283}
!2283 = !DILocalVariable(name: "file", arg: 1, scope: !2281, file: !134, line: 41, type: !99)
!2284 = !DILocation(line: 41, column: 41, scope: !2281)
!2285 = !DILocation(line: 43, column: 13, scope: !2281)
!2286 = !DILocation(line: 44, column: 1, scope: !2281)
!2287 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !134, file: !134, line: 78, type: !2288, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2290)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{null, !45}
!2290 = !{!2291}
!2291 = !DILocalVariable(name: "ignore", arg: 1, scope: !2287, file: !134, line: 78, type: !45)
!2292 = !DILocation(line: 78, column: 37, scope: !2287)
!2293 = !DILocation(line: 80, column: 16, scope: !2287)
!2294 = !{!2295, !2295, i64 0}
!2295 = !{!"_Bool", !660, i64 0}
!2296 = !DILocation(line: 81, column: 1, scope: !2287)
!2297 = distinct !DISubprogram(name: "close_stdout", scope: !134, file: !134, line: 107, type: !970, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !2298)
!2298 = !{!2299}
!2299 = !DILocalVariable(name: "write_error", scope: !2300, file: !134, line: 112, type: !99)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !134, line: 111, column: 5)
!2301 = distinct !DILexicalBlock(scope: !2297, file: !134, line: 109, column: 7)
!2302 = !DILocation(line: 109, column: 21, scope: !2301)
!2303 = !DILocation(line: 109, column: 7, scope: !2301)
!2304 = !DILocation(line: 109, column: 29, scope: !2301)
!2305 = !DILocation(line: 110, column: 7, scope: !2301)
!2306 = !DILocation(line: 110, column: 12, scope: !2301)
!2307 = !{i8 0, i8 2}
!2308 = !DILocation(line: 114, column: 19, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2300, file: !134, line: 113, column: 11)
!2310 = !DILocation(line: 110, column: 25, scope: !2301)
!2311 = !DILocation(line: 110, column: 28, scope: !2301)
!2312 = !DILocation(line: 110, column: 34, scope: !2301)
!2313 = !DILocation(line: 109, column: 7, scope: !2297)
!2314 = !DILocation(line: 112, column: 33, scope: !2300)
!2315 = !DILocation(line: 112, column: 19, scope: !2300)
!2316 = !DILocation(line: 113, column: 11, scope: !2309)
!2317 = !DILocation(line: 113, column: 11, scope: !2300)
!2318 = !DILocation(line: 114, column: 36, scope: !2309)
!2319 = !DILocation(line: 114, column: 9, scope: !2309)
!2320 = !DILocation(line: 117, column: 9, scope: !2309)
!2321 = !DILocation(line: 119, column: 14, scope: !2300)
!2322 = !DILocation(line: 119, column: 7, scope: !2300)
!2323 = !DILocation(line: 122, column: 22, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2297, file: !134, line: 122, column: 8)
!2325 = !DILocation(line: 122, column: 8, scope: !2324)
!2326 = !DILocation(line: 122, column: 30, scope: !2324)
!2327 = !DILocation(line: 122, column: 8, scope: !2297)
!2328 = !DILocation(line: 123, column: 13, scope: !2324)
!2329 = !DILocation(line: 123, column: 6, scope: !2324)
!2330 = !DILocation(line: 124, column: 1, scope: !2297)
!2331 = distinct !DISubprogram(name: "parse_long_options", scope: !147, file: !147, line: 44, type: !2332, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !2335)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{null, !34, !125, !99, !99, !99, !2334, null}
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!2335 = !{!2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344}
!2336 = !DILocalVariable(name: "argc", arg: 1, scope: !2331, file: !147, line: 44, type: !34)
!2337 = !DILocalVariable(name: "argv", arg: 2, scope: !2331, file: !147, line: 45, type: !125)
!2338 = !DILocalVariable(name: "command_name", arg: 3, scope: !2331, file: !147, line: 46, type: !99)
!2339 = !DILocalVariable(name: "package", arg: 4, scope: !2331, file: !147, line: 47, type: !99)
!2340 = !DILocalVariable(name: "version", arg: 5, scope: !2331, file: !147, line: 48, type: !99)
!2341 = !DILocalVariable(name: "usage_func", arg: 6, scope: !2331, file: !147, line: 49, type: !2334)
!2342 = !DILocalVariable(name: "c", scope: !2331, file: !147, line: 52, type: !34)
!2343 = !DILocalVariable(name: "saved_opterr", scope: !2331, file: !147, line: 53, type: !34)
!2344 = !DILocalVariable(name: "authors", scope: !2345, file: !147, line: 71, type: !2349)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !147, line: 70, column: 11)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !147, line: 64, column: 9)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !147, line: 62, column: 5)
!2348 = distinct !DILexicalBlock(scope: !2331, file: !147, line: 60, column: 7)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2350, line: 46, baseType: !2351)
!2350 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2352, line: 48, baseType: !2353)
!2352 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !145, line: 71, baseType: !2354)
!2354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2355, size: 192, elements: !40)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !145, line: 71, size: 192, elements: !2356)
!2356 = !{!2357, !2358, !2359, !2360}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2355, file: !145, line: 71, baseType: !103, size: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2355, file: !145, line: 71, baseType: !103, size: 32, offset: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2355, file: !145, line: 71, baseType: !101, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2355, file: !145, line: 71, baseType: !101, size: 64, offset: 128)
!2361 = !DILocation(line: 44, column: 25, scope: !2331)
!2362 = !DILocation(line: 45, column: 28, scope: !2331)
!2363 = !DILocation(line: 46, column: 33, scope: !2331)
!2364 = !DILocation(line: 47, column: 33, scope: !2331)
!2365 = !DILocation(line: 48, column: 33, scope: !2331)
!2366 = !DILocation(line: 49, column: 28, scope: !2331)
!2367 = !DILocation(line: 55, column: 18, scope: !2331)
!2368 = !DILocation(line: 53, column: 7, scope: !2331)
!2369 = !DILocation(line: 58, column: 10, scope: !2331)
!2370 = !DILocation(line: 60, column: 12, scope: !2348)
!2371 = !DILocation(line: 61, column: 7, scope: !2348)
!2372 = !DILocation(line: 61, column: 15, scope: !2348)
!2373 = !DILocation(line: 52, column: 7, scope: !2331)
!2374 = !DILocation(line: 60, column: 7, scope: !2331)
!2375 = !DILocation(line: 66, column: 11, scope: !2346)
!2376 = !DILocation(line: 67, column: 11, scope: !2346)
!2377 = !DILocation(line: 71, column: 13, scope: !2345)
!2378 = !DILocation(line: 71, column: 21, scope: !2345)
!2379 = !DILocation(line: 72, column: 13, scope: !2345)
!2380 = !DILocation(line: 73, column: 29, scope: !2345)
!2381 = !DILocation(line: 73, column: 13, scope: !2345)
!2382 = !DILocation(line: 74, column: 13, scope: !2345)
!2383 = !DILocation(line: 84, column: 10, scope: !2331)
!2384 = !DILocation(line: 88, column: 10, scope: !2331)
!2385 = !DILocation(line: 89, column: 1, scope: !2331)
!2386 = distinct !DISubprogram(name: "set_program_name", scope: !166, file: !166, line: 39, type: !109, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !162, variables: !2387)
!2387 = !{!2388, !2389, !2390}
!2388 = !DILocalVariable(name: "argv0", arg: 1, scope: !2386, file: !166, line: 39, type: !99)
!2389 = !DILocalVariable(name: "slash", scope: !2386, file: !166, line: 46, type: !99)
!2390 = !DILocalVariable(name: "base", scope: !2386, file: !166, line: 47, type: !99)
!2391 = !DILocation(line: 39, column: 31, scope: !2386)
!2392 = !DILocation(line: 51, column: 13, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2386, file: !166, line: 51, column: 7)
!2394 = !DILocation(line: 51, column: 7, scope: !2386)
!2395 = !DILocation(line: 55, column: 14, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2393, file: !166, line: 52, column: 5)
!2397 = !DILocation(line: 54, column: 7, scope: !2396)
!2398 = !DILocation(line: 56, column: 7, scope: !2396)
!2399 = !DILocation(line: 59, column: 11, scope: !2386)
!2400 = !DILocation(line: 46, column: 15, scope: !2386)
!2401 = !DILocation(line: 60, column: 17, scope: !2386)
!2402 = !DILocation(line: 60, column: 33, scope: !2386)
!2403 = !DILocation(line: 60, column: 11, scope: !2386)
!2404 = !DILocation(line: 47, column: 15, scope: !2386)
!2405 = !DILocation(line: 61, column: 12, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2386, file: !166, line: 61, column: 7)
!2407 = !DILocation(line: 61, column: 20, scope: !2406)
!2408 = !DILocation(line: 61, column: 25, scope: !2406)
!2409 = !DILocation(line: 61, column: 42, scope: !2406)
!2410 = !DILocation(line: 61, column: 28, scope: !2406)
!2411 = !DILocation(line: 61, column: 61, scope: !2406)
!2412 = !DILocation(line: 61, column: 7, scope: !2386)
!2413 = !DILocation(line: 64, column: 11, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !166, line: 64, column: 11)
!2415 = distinct !DILexicalBlock(scope: !2406, file: !166, line: 62, column: 5)
!2416 = !DILocation(line: 64, column: 36, scope: !2414)
!2417 = !DILocation(line: 64, column: 11, scope: !2415)
!2418 = !DILocation(line: 66, column: 24, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2414, file: !166, line: 65, column: 9)
!2420 = !DILocation(line: 70, column: 41, scope: !2419)
!2421 = !DILocation(line: 72, column: 9, scope: !2419)
!2422 = !DILocation(line: 84, column: 16, scope: !2386)
!2423 = !DILocation(line: 90, column: 27, scope: !2386)
!2424 = !DILocation(line: 92, column: 1, scope: !2386)
!2425 = distinct !DISubprogram(name: "clone_quoting_options", scope: !199, file: !199, line: 114, type: !2426, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !2429)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!2428, !2428}
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!2429 = !{!2430, !2431, !2432}
!2430 = !DILocalVariable(name: "o", arg: 1, scope: !2425, file: !199, line: 114, type: !2428)
!2431 = !DILocalVariable(name: "e", scope: !2425, file: !199, line: 116, type: !34)
!2432 = !DILocalVariable(name: "p", scope: !2425, file: !199, line: 117, type: !2428)
!2433 = !DILocation(line: 114, column: 48, scope: !2425)
!2434 = !DILocation(line: 116, column: 11, scope: !2425)
!2435 = !DILocation(line: 116, column: 7, scope: !2425)
!2436 = !DILocation(line: 117, column: 40, scope: !2425)
!2437 = !DILocation(line: 117, column: 31, scope: !2425)
!2438 = !DILocation(line: 117, column: 27, scope: !2425)
!2439 = !DILocation(line: 119, column: 9, scope: !2425)
!2440 = !DILocation(line: 120, column: 3, scope: !2425)
!2441 = distinct !DISubprogram(name: "get_quoting_style", scope: !199, file: !199, line: 125, type: !2442, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !2446)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!63, !2444}
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!2446 = !{!2447}
!2447 = !DILocalVariable(name: "o", arg: 1, scope: !2441, file: !199, line: 125, type: !2444)
!2448 = !DILocation(line: 125, column: 50, scope: !2441)
!2449 = !DILocation(line: 127, column: 11, scope: !2441)
!2450 = !DILocation(line: 127, column: 46, scope: !2441)
!2451 = !{!2452, !660, i64 0}
!2452 = !{!"quoting_options", !660, i64 0, !675, i64 4, !660, i64 8, !659, i64 40, !659, i64 48}
!2453 = !DILocation(line: 127, column: 3, scope: !2441)
!2454 = distinct !DISubprogram(name: "set_quoting_style", scope: !199, file: !199, line: 133, type: !2455, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !2457)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{null, !2428, !63}
!2457 = !{!2458, !2459}
!2458 = !DILocalVariable(name: "o", arg: 1, scope: !2454, file: !199, line: 133, type: !2428)
!2459 = !DILocalVariable(name: "s", arg: 2, scope: !2454, file: !199, line: 133, type: !63)
!2460 = !DILocation(line: 133, column: 44, scope: !2454)
!2461 = !DILocation(line: 133, column: 66, scope: !2454)
!2462 = !DILocation(line: 135, column: 4, scope: !2454)
!2463 = !DILocation(line: 135, column: 39, scope: !2454)
!2464 = !DILocation(line: 135, column: 45, scope: !2454)
!2465 = !DILocation(line: 136, column: 1, scope: !2454)
!2466 = distinct !DISubprogram(name: "set_char_quoting", scope: !199, file: !199, line: 144, type: !2467, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!34, !2428, !44, !34}
!2469 = !{!2470, !2471, !2472, !2473, !2474, !2476, !2477}
!2470 = !DILocalVariable(name: "o", arg: 1, scope: !2466, file: !199, line: 144, type: !2428)
!2471 = !DILocalVariable(name: "c", arg: 2, scope: !2466, file: !199, line: 144, type: !44)
!2472 = !DILocalVariable(name: "i", arg: 3, scope: !2466, file: !199, line: 144, type: !34)
!2473 = !DILocalVariable(name: "uc", scope: !2466, file: !199, line: 146, type: !102)
!2474 = !DILocalVariable(name: "p", scope: !2466, file: !199, line: 147, type: !2475)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!2476 = !DILocalVariable(name: "shift", scope: !2466, file: !199, line: 149, type: !34)
!2477 = !DILocalVariable(name: "r", scope: !2466, file: !199, line: 150, type: !34)
!2478 = !DILocation(line: 144, column: 43, scope: !2466)
!2479 = !DILocation(line: 144, column: 51, scope: !2466)
!2480 = !DILocation(line: 144, column: 58, scope: !2466)
!2481 = !DILocation(line: 146, column: 17, scope: !2466)
!2482 = !DILocation(line: 148, column: 6, scope: !2466)
!2483 = !DILocation(line: 148, column: 62, scope: !2466)
!2484 = !DILocation(line: 148, column: 57, scope: !2466)
!2485 = !DILocation(line: 147, column: 17, scope: !2466)
!2486 = !DILocation(line: 149, column: 18, scope: !2466)
!2487 = !DILocation(line: 149, column: 15, scope: !2466)
!2488 = !DILocation(line: 149, column: 7, scope: !2466)
!2489 = !DILocation(line: 150, column: 12, scope: !2466)
!2490 = !DILocation(line: 150, column: 15, scope: !2466)
!2491 = !DILocation(line: 150, column: 25, scope: !2466)
!2492 = !DILocation(line: 150, column: 7, scope: !2466)
!2493 = !DILocation(line: 151, column: 13, scope: !2466)
!2494 = !DILocation(line: 151, column: 18, scope: !2466)
!2495 = !DILocation(line: 151, column: 23, scope: !2466)
!2496 = !DILocation(line: 151, column: 6, scope: !2466)
!2497 = !DILocation(line: 152, column: 3, scope: !2466)
!2498 = distinct !DISubprogram(name: "set_quoting_flags", scope: !199, file: !199, line: 160, type: !2499, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!34, !2428, !34}
!2501 = !{!2502, !2503, !2504}
!2502 = !DILocalVariable(name: "o", arg: 1, scope: !2498, file: !199, line: 160, type: !2428)
!2503 = !DILocalVariable(name: "i", arg: 2, scope: !2498, file: !199, line: 160, type: !34)
!2504 = !DILocalVariable(name: "r", scope: !2498, file: !199, line: 162, type: !34)
!2505 = !DILocation(line: 160, column: 44, scope: !2498)
!2506 = !DILocation(line: 160, column: 51, scope: !2498)
!2507 = !DILocation(line: 163, column: 8, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2498, file: !199, line: 163, column: 7)
!2509 = !DILocation(line: 163, column: 7, scope: !2498)
!2510 = !DILocation(line: 165, column: 10, scope: !2498)
!2511 = !{!2452, !675, i64 4}
!2512 = !DILocation(line: 162, column: 7, scope: !2498)
!2513 = !DILocation(line: 166, column: 12, scope: !2498)
!2514 = !DILocation(line: 167, column: 3, scope: !2498)
!2515 = distinct !DISubprogram(name: "set_custom_quoting", scope: !199, file: !199, line: 171, type: !2516, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !2518)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{null, !2428, !99, !99}
!2518 = !{!2519, !2520, !2521}
!2519 = !DILocalVariable(name: "o", arg: 1, scope: !2515, file: !199, line: 171, type: !2428)
!2520 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2515, file: !199, line: 172, type: !99)
!2521 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2515, file: !199, line: 172, type: !99)
!2522 = !DILocation(line: 171, column: 45, scope: !2515)
!2523 = !DILocation(line: 172, column: 33, scope: !2515)
!2524 = !DILocation(line: 172, column: 57, scope: !2515)
!2525 = !DILocation(line: 174, column: 8, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2515, file: !199, line: 174, column: 7)
!2527 = !DILocation(line: 174, column: 7, scope: !2515)
!2528 = !DILocation(line: 176, column: 6, scope: !2515)
!2529 = !DILocation(line: 176, column: 12, scope: !2515)
!2530 = !DILocation(line: 177, column: 8, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2515, file: !199, line: 177, column: 7)
!2532 = !DILocation(line: 177, column: 23, scope: !2531)
!2533 = !DILocation(line: 177, column: 19, scope: !2531)
!2534 = !DILocation(line: 178, column: 5, scope: !2531)
!2535 = !DILocation(line: 179, column: 6, scope: !2515)
!2536 = !DILocation(line: 179, column: 17, scope: !2515)
!2537 = !{!2452, !659, i64 40}
!2538 = !DILocation(line: 180, column: 6, scope: !2515)
!2539 = !DILocation(line: 180, column: 18, scope: !2515)
!2540 = !{!2452, !659, i64 48}
!2541 = !DILocation(line: 181, column: 1, scope: !2515)
!2542 = distinct !DISubprogram(name: "quotearg_buffer", scope: !199, file: !199, line: 776, type: !2543, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !2545)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!194, !43, !194, !99, !194, !2444}
!2545 = !{!2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553}
!2546 = !DILocalVariable(name: "buffer", arg: 1, scope: !2542, file: !199, line: 776, type: !43)
!2547 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2542, file: !199, line: 776, type: !194)
!2548 = !DILocalVariable(name: "arg", arg: 3, scope: !2542, file: !199, line: 777, type: !99)
!2549 = !DILocalVariable(name: "argsize", arg: 4, scope: !2542, file: !199, line: 777, type: !194)
!2550 = !DILocalVariable(name: "o", arg: 5, scope: !2542, file: !199, line: 778, type: !2444)
!2551 = !DILocalVariable(name: "p", scope: !2542, file: !199, line: 780, type: !2444)
!2552 = !DILocalVariable(name: "e", scope: !2542, file: !199, line: 781, type: !34)
!2553 = !DILocalVariable(name: "r", scope: !2542, file: !199, line: 782, type: !194)
!2554 = !DILocation(line: 776, column: 24, scope: !2542)
!2555 = !DILocation(line: 776, column: 39, scope: !2542)
!2556 = !DILocation(line: 777, column: 30, scope: !2542)
!2557 = !DILocation(line: 777, column: 42, scope: !2542)
!2558 = !DILocation(line: 778, column: 48, scope: !2542)
!2559 = !DILocation(line: 780, column: 37, scope: !2542)
!2560 = !DILocation(line: 780, column: 33, scope: !2542)
!2561 = !DILocation(line: 781, column: 11, scope: !2542)
!2562 = !DILocation(line: 781, column: 7, scope: !2542)
!2563 = !DILocation(line: 783, column: 43, scope: !2542)
!2564 = !DILocation(line: 783, column: 53, scope: !2542)
!2565 = !DILocation(line: 783, column: 60, scope: !2542)
!2566 = !DILocation(line: 784, column: 43, scope: !2542)
!2567 = !DILocation(line: 784, column: 58, scope: !2542)
!2568 = !DILocation(line: 782, column: 14, scope: !2542)
!2569 = !DILocation(line: 782, column: 10, scope: !2542)
!2570 = !DILocation(line: 785, column: 9, scope: !2542)
!2571 = !DILocation(line: 786, column: 3, scope: !2542)
!2572 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !199, file: !199, line: 248, type: !2573, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !2577)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!194, !43, !194, !99, !194, !63, !34, !2575, !99, !99}
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!2577 = !{!2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2602, !2603, !2604, !2605, !2606, !2609, !2610, !2628, !2631, !2632, !2639}
!2578 = !DILocalVariable(name: "buffer", arg: 1, scope: !2572, file: !199, line: 248, type: !43)
!2579 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2572, file: !199, line: 248, type: !194)
!2580 = !DILocalVariable(name: "arg", arg: 3, scope: !2572, file: !199, line: 249, type: !99)
!2581 = !DILocalVariable(name: "argsize", arg: 4, scope: !2572, file: !199, line: 249, type: !194)
!2582 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2572, file: !199, line: 250, type: !63)
!2583 = !DILocalVariable(name: "flags", arg: 6, scope: !2572, file: !199, line: 250, type: !34)
!2584 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2572, file: !199, line: 251, type: !2575)
!2585 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2572, file: !199, line: 252, type: !99)
!2586 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2572, file: !199, line: 253, type: !99)
!2587 = !DILocalVariable(name: "i", scope: !2572, file: !199, line: 255, type: !194)
!2588 = !DILocalVariable(name: "len", scope: !2572, file: !199, line: 256, type: !194)
!2589 = !DILocalVariable(name: "orig_buffersize", scope: !2572, file: !199, line: 257, type: !194)
!2590 = !DILocalVariable(name: "quote_string", scope: !2572, file: !199, line: 258, type: !99)
!2591 = !DILocalVariable(name: "quote_string_len", scope: !2572, file: !199, line: 259, type: !194)
!2592 = !DILocalVariable(name: "backslash_escapes", scope: !2572, file: !199, line: 260, type: !45)
!2593 = !DILocalVariable(name: "unibyte_locale", scope: !2572, file: !199, line: 261, type: !45)
!2594 = !DILocalVariable(name: "elide_outer_quotes", scope: !2572, file: !199, line: 262, type: !45)
!2595 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2572, file: !199, line: 263, type: !45)
!2596 = !DILocalVariable(name: "encountered_single_quote", scope: !2572, file: !199, line: 264, type: !45)
!2597 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2572, file: !199, line: 265, type: !45)
!2598 = !DILocalVariable(name: "c", scope: !2599, file: !199, line: 394, type: !102)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !199, line: 393, column: 5)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !199, line: 392, column: 3)
!2601 = distinct !DILexicalBlock(scope: !2572, file: !199, line: 392, column: 3)
!2602 = !DILocalVariable(name: "esc", scope: !2599, file: !199, line: 395, type: !102)
!2603 = !DILocalVariable(name: "is_right_quote", scope: !2599, file: !199, line: 396, type: !45)
!2604 = !DILocalVariable(name: "escaping", scope: !2599, file: !199, line: 397, type: !45)
!2605 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2599, file: !199, line: 398, type: !45)
!2606 = !DILocalVariable(name: "m", scope: !2607, file: !199, line: 602, type: !194)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !199, line: 600, column: 11)
!2608 = distinct !DILexicalBlock(scope: !2599, file: !199, line: 418, column: 9)
!2609 = !DILocalVariable(name: "printable", scope: !2607, file: !199, line: 604, type: !45)
!2610 = !DILocalVariable(name: "mbstate", scope: !2611, file: !199, line: 613, type: !2613)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !199, line: 612, column: 15)
!2612 = distinct !DILexicalBlock(scope: !2607, file: !199, line: 606, column: 17)
!2613 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2614, line: 6, baseType: !2615)
!2614 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2616, line: 21, baseType: !2617)
!2616 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2616, line: 13, size: 64, elements: !2618)
!2618 = !{!2619, !2620}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2617, file: !2616, line: 15, baseType: !34, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2617, file: !2616, line: 20, baseType: !2621, size: 32, offset: 32)
!2621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2617, file: !2616, line: 16, size: 32, elements: !2622)
!2622 = !{!2623, !2624}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2621, file: !2616, line: 18, baseType: !103, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2621, file: !2616, line: 19, baseType: !2625, size: 32)
!2625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 32, elements: !2626)
!2626 = !{!2627}
!2627 = !DISubrange(count: 4)
!2628 = !DILocalVariable(name: "w", scope: !2629, file: !199, line: 623, type: !2630)
!2629 = distinct !DILexicalBlock(scope: !2611, file: !199, line: 622, column: 19)
!2630 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !195, line: 90, baseType: !34)
!2631 = !DILocalVariable(name: "bytes", scope: !2629, file: !199, line: 624, type: !194)
!2632 = !DILocalVariable(name: "j", scope: !2633, file: !199, line: 649, type: !194)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !199, line: 648, column: 27)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !199, line: 646, column: 29)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !199, line: 641, column: 23)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !199, line: 633, column: 30)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !199, line: 628, column: 30)
!2638 = distinct !DILexicalBlock(scope: !2629, file: !199, line: 626, column: 25)
!2639 = !DILocalVariable(name: "ilim", scope: !2640, file: !199, line: 676, type: !194)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !199, line: 673, column: 15)
!2641 = distinct !DILexicalBlock(scope: !2607, file: !199, line: 672, column: 17)
!2642 = !DILocation(line: 248, column: 33, scope: !2572)
!2643 = !DILocation(line: 248, column: 48, scope: !2572)
!2644 = !DILocation(line: 249, column: 39, scope: !2572)
!2645 = !DILocation(line: 249, column: 51, scope: !2572)
!2646 = !DILocation(line: 250, column: 46, scope: !2572)
!2647 = !DILocation(line: 250, column: 65, scope: !2572)
!2648 = !DILocation(line: 251, column: 47, scope: !2572)
!2649 = !DILocation(line: 252, column: 39, scope: !2572)
!2650 = !DILocation(line: 253, column: 39, scope: !2572)
!2651 = !DILocation(line: 256, column: 10, scope: !2572)
!2652 = !DILocation(line: 257, column: 10, scope: !2572)
!2653 = !DILocation(line: 258, column: 15, scope: !2572)
!2654 = !DILocation(line: 259, column: 10, scope: !2572)
!2655 = !DILocation(line: 260, column: 8, scope: !2572)
!2656 = !DILocation(line: 261, column: 25, scope: !2572)
!2657 = !DILocation(line: 261, column: 36, scope: !2572)
!2658 = !DILocation(line: 262, column: 8, scope: !2572)
!2659 = !DILocation(line: 263, column: 8, scope: !2572)
!2660 = !DILocation(line: 264, column: 8, scope: !2572)
!2661 = !DILocation(line: 265, column: 8, scope: !2572)
!2662 = !DILocation(line: 265, column: 3, scope: !2572)
!2663 = !DILocation(line: 308, column: 3, scope: !2572)
!2664 = !DILocation(line: 315, column: 11, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2572, file: !199, line: 309, column: 5)
!2666 = !DILocation(line: 315, column: 12, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2665, file: !199, line: 315, column: 11)
!2668 = !DILocation(line: 316, column: 9, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !199, line: 316, column: 9)
!2670 = distinct !DILexicalBlock(scope: !2667, file: !199, line: 316, column: 9)
!2671 = !DILocation(line: 316, column: 9, scope: !2670)
!2672 = !DILocation(line: 354, column: 26, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !199, line: 332, column: 11)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !199, line: 331, column: 13)
!2675 = distinct !DILexicalBlock(scope: !2665, file: !199, line: 330, column: 7)
!2676 = !DILocation(line: 355, column: 27, scope: !2673)
!2677 = !DILocation(line: 356, column: 11, scope: !2673)
!2678 = !DILocation(line: 357, column: 14, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2675, file: !199, line: 357, column: 13)
!2680 = !DILocation(line: 357, column: 13, scope: !2675)
!2681 = !DILocation(line: 358, column: 43, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !199, line: 358, column: 11)
!2683 = distinct !DILexicalBlock(scope: !2679, file: !199, line: 358, column: 11)
!2684 = !DILocation(line: 358, column: 11, scope: !2683)
!2685 = !DILocation(line: 359, column: 13, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !199, line: 359, column: 13)
!2687 = distinct !DILexicalBlock(scope: !2682, file: !199, line: 359, column: 13)
!2688 = !DILocation(line: 359, column: 13, scope: !2687)
!2689 = !DILocation(line: 358, column: 70, scope: !2682)
!2690 = distinct !{!2690, !2684, !2691}
!2691 = !DILocation(line: 359, column: 13, scope: !2683)
!2692 = !DILocation(line: 362, column: 28, scope: !2675)
!2693 = !DILocation(line: 364, column: 7, scope: !2665)
!2694 = !DILocation(line: 367, column: 7, scope: !2665)
!2695 = !DILocation(line: 370, column: 7, scope: !2665)
!2696 = !DILocation(line: 373, column: 12, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2665, file: !199, line: 373, column: 11)
!2698 = !DILocation(line: 373, column: 11, scope: !2665)
!2699 = !DILocation(line: 378, column: 12, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2665, file: !199, line: 378, column: 11)
!2701 = !DILocation(line: 378, column: 11, scope: !2665)
!2702 = !DILocation(line: 379, column: 9, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !199, line: 379, column: 9)
!2704 = distinct !DILexicalBlock(scope: !2700, file: !199, line: 379, column: 9)
!2705 = !DILocation(line: 379, column: 9, scope: !2704)
!2706 = !DILocation(line: 386, column: 7, scope: !2665)
!2707 = !DILocation(line: 389, column: 7, scope: !2665)
!2708 = !DILocation(line: 255, column: 10, scope: !2572)
!2709 = !DILocation(line: 392, column: 8, scope: !2601)
!2710 = !DILocation(line: 392, column: 27, scope: !2600)
!2711 = !DILocation(line: 392, column: 19, scope: !2600)
!2712 = !DILocation(line: 392, column: 60, scope: !2600)
!2713 = !DILocation(line: 392, column: 3, scope: !2601)
!2714 = !DILocation(line: 392, column: 41, scope: !2600)
!2715 = !DILocation(line: 392, column: 48, scope: !2600)
!2716 = !DILocation(line: 396, column: 12, scope: !2599)
!2717 = !DILocation(line: 397, column: 12, scope: !2599)
!2718 = !DILocation(line: 398, column: 12, scope: !2599)
!2719 = !DILocation(line: 401, column: 11, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2599, file: !199, line: 400, column: 11)
!2721 = !DILocation(line: 403, column: 17, scope: !2720)
!2722 = !DILocation(line: 404, column: 39, scope: !2720)
!2723 = !DILocation(line: 408, column: 32, scope: !2720)
!2724 = !DILocation(line: 404, column: 19, scope: !2720)
!2725 = !DILocation(line: 404, column: 15, scope: !2720)
!2726 = !DILocation(line: 409, column: 11, scope: !2720)
!2727 = !DILocation(line: 409, column: 26, scope: !2720)
!2728 = !DILocation(line: 409, column: 14, scope: !2720)
!2729 = !DILocation(line: 409, column: 63, scope: !2720)
!2730 = !DILocation(line: 400, column: 11, scope: !2599)
!2731 = !DILocation(line: 416, column: 11, scope: !2599)
!2732 = !DILocation(line: 394, column: 21, scope: !2599)
!2733 = !DILocation(line: 417, column: 7, scope: !2599)
!2734 = !DILocation(line: 420, column: 15, scope: !2608)
!2735 = !DILocation(line: 422, column: 15, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !199, line: 422, column: 15)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !199, line: 421, column: 13)
!2738 = distinct !DILexicalBlock(scope: !2608, file: !199, line: 420, column: 15)
!2739 = !DILocation(line: 422, column: 15, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2736, file: !199, line: 422, column: 15)
!2741 = !DILocation(line: 422, column: 15, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !199, line: 422, column: 15)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !199, line: 422, column: 15)
!2744 = distinct !DILexicalBlock(scope: !2740, file: !199, line: 422, column: 15)
!2745 = !DILocation(line: 422, column: 15, scope: !2743)
!2746 = !DILocation(line: 422, column: 15, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !199, line: 422, column: 15)
!2748 = distinct !DILexicalBlock(scope: !2744, file: !199, line: 422, column: 15)
!2749 = !DILocation(line: 422, column: 15, scope: !2748)
!2750 = !DILocation(line: 422, column: 15, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !199, line: 422, column: 15)
!2752 = distinct !DILexicalBlock(scope: !2744, file: !199, line: 422, column: 15)
!2753 = !DILocation(line: 422, column: 15, scope: !2752)
!2754 = !DILocation(line: 422, column: 15, scope: !2744)
!2755 = !DILocation(line: 422, column: 15, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !199, line: 422, column: 15)
!2757 = distinct !DILexicalBlock(scope: !2736, file: !199, line: 422, column: 15)
!2758 = !DILocation(line: 422, column: 15, scope: !2757)
!2759 = !DILocation(line: 430, column: 19, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2737, file: !199, line: 429, column: 19)
!2761 = !DILocation(line: 430, column: 24, scope: !2760)
!2762 = !DILocation(line: 430, column: 28, scope: !2760)
!2763 = !DILocation(line: 430, column: 38, scope: !2760)
!2764 = !DILocation(line: 430, column: 48, scope: !2760)
!2765 = !DILocation(line: 430, column: 59, scope: !2760)
!2766 = !DILocation(line: 432, column: 19, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !199, line: 432, column: 19)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !199, line: 432, column: 19)
!2769 = distinct !DILexicalBlock(scope: !2760, file: !199, line: 431, column: 17)
!2770 = !DILocation(line: 432, column: 19, scope: !2768)
!2771 = !DILocation(line: 433, column: 19, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !199, line: 433, column: 19)
!2773 = distinct !DILexicalBlock(scope: !2769, file: !199, line: 433, column: 19)
!2774 = !DILocation(line: 433, column: 19, scope: !2773)
!2775 = !DILocation(line: 434, column: 17, scope: !2769)
!2776 = !DILocation(line: 441, column: 20, scope: !2738)
!2777 = !DILocation(line: 446, column: 11, scope: !2608)
!2778 = !DILocation(line: 449, column: 19, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2608, file: !199, line: 447, column: 13)
!2780 = !DILocation(line: 455, column: 19, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2779, file: !199, line: 454, column: 19)
!2782 = !DILocation(line: 455, column: 24, scope: !2781)
!2783 = !DILocation(line: 455, column: 28, scope: !2781)
!2784 = !DILocation(line: 455, column: 38, scope: !2781)
!2785 = !DILocation(line: 455, column: 47, scope: !2781)
!2786 = !DILocation(line: 455, column: 41, scope: !2781)
!2787 = !DILocation(line: 455, column: 52, scope: !2781)
!2788 = !DILocation(line: 454, column: 19, scope: !2779)
!2789 = !DILocation(line: 456, column: 25, scope: !2781)
!2790 = !DILocation(line: 456, column: 17, scope: !2781)
!2791 = !DILocation(line: 463, column: 25, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2781, file: !199, line: 457, column: 19)
!2793 = !DILocation(line: 467, column: 21, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !199, line: 467, column: 21)
!2795 = distinct !DILexicalBlock(scope: !2792, file: !199, line: 467, column: 21)
!2796 = !DILocation(line: 467, column: 21, scope: !2795)
!2797 = !DILocation(line: 468, column: 21, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !199, line: 468, column: 21)
!2799 = distinct !DILexicalBlock(scope: !2792, file: !199, line: 468, column: 21)
!2800 = !DILocation(line: 468, column: 21, scope: !2799)
!2801 = !DILocation(line: 469, column: 21, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !199, line: 469, column: 21)
!2803 = distinct !DILexicalBlock(scope: !2792, file: !199, line: 469, column: 21)
!2804 = !DILocation(line: 469, column: 21, scope: !2803)
!2805 = !DILocation(line: 470, column: 21, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !199, line: 470, column: 21)
!2807 = distinct !DILexicalBlock(scope: !2792, file: !199, line: 470, column: 21)
!2808 = !DILocation(line: 470, column: 21, scope: !2807)
!2809 = !DILocation(line: 471, column: 21, scope: !2792)
!2810 = !DILocation(line: 395, column: 21, scope: !2599)
!2811 = !DILocation(line: 484, column: 31, scope: !2608)
!2812 = !DILocation(line: 485, column: 31, scope: !2608)
!2813 = !DILocation(line: 487, column: 31, scope: !2608)
!2814 = !DILocation(line: 488, column: 31, scope: !2608)
!2815 = !DILocation(line: 489, column: 31, scope: !2608)
!2816 = !DILocation(line: 492, column: 15, scope: !2608)
!2817 = !DILocation(line: 494, column: 19, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !199, line: 493, column: 13)
!2819 = distinct !DILexicalBlock(scope: !2608, file: !199, line: 492, column: 15)
!2820 = !DILocation(line: 501, column: 33, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2608, file: !199, line: 501, column: 15)
!2822 = !DILocation(line: 506, column: 15, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2608, file: !199, line: 505, column: 15)
!2824 = !DILocation(line: 510, column: 15, scope: !2608)
!2825 = !DILocation(line: 518, column: 26, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2608, file: !199, line: 518, column: 15)
!2827 = !DILocation(line: 518, column: 15, scope: !2608)
!2828 = !DILocation(line: 518, column: 40, scope: !2826)
!2829 = !DILocation(line: 518, column: 47, scope: !2826)
!2830 = !DILocation(line: 522, column: 17, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2608, file: !199, line: 522, column: 15)
!2832 = !DILocation(line: 518, column: 18, scope: !2826)
!2833 = !DILocation(line: 518, column: 65, scope: !2826)
!2834 = !DILocation(line: 522, column: 15, scope: !2608)
!2835 = !DILocation(line: 526, column: 11, scope: !2608)
!2836 = !DILocation(line: 541, column: 15, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2608, file: !199, line: 540, column: 15)
!2838 = !DILocation(line: 548, column: 15, scope: !2608)
!2839 = !DILocation(line: 550, column: 19, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !199, line: 549, column: 13)
!2841 = distinct !DILexicalBlock(scope: !2608, file: !199, line: 548, column: 15)
!2842 = !DILocation(line: 553, column: 19, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2840, file: !199, line: 553, column: 19)
!2844 = !DILocation(line: 553, column: 35, scope: !2843)
!2845 = !DILocation(line: 553, column: 30, scope: !2843)
!2846 = !DILocation(line: 562, column: 15, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !199, line: 562, column: 15)
!2848 = distinct !DILexicalBlock(scope: !2840, file: !199, line: 562, column: 15)
!2849 = !DILocation(line: 562, column: 15, scope: !2848)
!2850 = !DILocation(line: 563, column: 15, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !199, line: 563, column: 15)
!2852 = distinct !DILexicalBlock(scope: !2840, file: !199, line: 563, column: 15)
!2853 = !DILocation(line: 563, column: 15, scope: !2852)
!2854 = !DILocation(line: 564, column: 15, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !199, line: 564, column: 15)
!2856 = distinct !DILexicalBlock(scope: !2840, file: !199, line: 564, column: 15)
!2857 = !DILocation(line: 564, column: 15, scope: !2856)
!2858 = !DILocation(line: 566, column: 13, scope: !2840)
!2859 = !DILocation(line: 606, column: 17, scope: !2607)
!2860 = !DILocation(line: 602, column: 20, scope: !2607)
!2861 = !DILocation(line: 609, column: 29, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2612, file: !199, line: 607, column: 15)
!2863 = !{!677, !677, i64 0}
!2864 = !DILocation(line: 609, column: 27, scope: !2862)
!2865 = !DILocation(line: 604, column: 18, scope: !2607)
!2866 = !DILocation(line: 610, column: 15, scope: !2862)
!2867 = !DILocation(line: 613, column: 17, scope: !2611)
!2868 = !DILocation(line: 614, column: 17, scope: !2611)
!2869 = !DILocation(line: 618, column: 29, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2611, file: !199, line: 618, column: 21)
!2871 = !DILocation(line: 618, column: 21, scope: !2611)
!2872 = !DILocation(line: 619, column: 29, scope: !2870)
!2873 = !DILocation(line: 619, column: 19, scope: !2870)
!2874 = !DILocation(line: 621, column: 17, scope: !2611)
!2875 = distinct !{!2875, !2874, !2876}
!2876 = !DILocation(line: 667, column: 44, scope: !2611)
!2877 = !DILocation(line: 623, column: 21, scope: !2629)
!2878 = !DILocation(line: 624, column: 56, scope: !2629)
!2879 = !DILocation(line: 624, column: 50, scope: !2629)
!2880 = !DILocation(line: 625, column: 53, scope: !2629)
!2881 = !DILocation(line: 613, column: 27, scope: !2611)
!2882 = !DILocation(line: 623, column: 29, scope: !2629)
!2883 = !DILocation(line: 624, column: 36, scope: !2629)
!2884 = !DILocation(line: 624, column: 28, scope: !2629)
!2885 = !DILocation(line: 626, column: 25, scope: !2629)
!2886 = !DILocation(line: 636, column: 38, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2636, file: !199, line: 634, column: 23)
!2888 = !DILocation(line: 636, column: 48, scope: !2887)
!2889 = !DILocation(line: 636, column: 51, scope: !2887)
!2890 = !DILocation(line: 636, column: 25, scope: !2887)
!2891 = !DILocation(line: 637, column: 28, scope: !2887)
!2892 = !DILocation(line: 636, column: 34, scope: !2887)
!2893 = distinct !{!2893, !2890, !2891}
!2894 = !DILocation(line: 650, column: 43, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !199, line: 650, column: 29)
!2896 = distinct !DILexicalBlock(scope: !2633, file: !199, line: 650, column: 29)
!2897 = !DILocation(line: 647, column: 29, scope: !2634)
!2898 = !DILocation(line: 649, column: 36, scope: !2633)
!2899 = !DILocation(line: 651, column: 49, scope: !2895)
!2900 = !DILocation(line: 651, column: 39, scope: !2895)
!2901 = !DILocation(line: 651, column: 31, scope: !2895)
!2902 = !DILocation(line: 650, column: 53, scope: !2895)
!2903 = !DILocation(line: 650, column: 29, scope: !2896)
!2904 = distinct !{!2904, !2903, !2905}
!2905 = !DILocation(line: 659, column: 33, scope: !2896)
!2906 = !DILocation(line: 666, column: 19, scope: !2611)
!2907 = !DILocation(line: 662, column: 41, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2635, file: !199, line: 662, column: 29)
!2909 = !DILocation(line: 662, column: 31, scope: !2908)
!2910 = !DILocation(line: 662, column: 29, scope: !2635)
!2911 = !DILocation(line: 664, column: 27, scope: !2635)
!2912 = !DILocation(line: 667, column: 26, scope: !2611)
!2913 = !DILocation(line: 667, column: 24, scope: !2611)
!2914 = !DILocation(line: 666, column: 19, scope: !2629)
!2915 = !DILocation(line: 668, column: 15, scope: !2612)
!2916 = !DILocation(line: 670, column: 40, scope: !2607)
!2917 = !DILocation(line: 672, column: 19, scope: !2641)
!2918 = !DILocation(line: 672, column: 45, scope: !2641)
!2919 = !DILocation(line: 672, column: 23, scope: !2641)
!2920 = !DILocation(line: 676, column: 33, scope: !2640)
!2921 = !DILocation(line: 676, column: 24, scope: !2640)
!2922 = !DILocation(line: 678, column: 17, scope: !2640)
!2923 = !DILocation(line: 680, column: 43, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !199, line: 680, column: 25)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !199, line: 679, column: 19)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !199, line: 678, column: 17)
!2927 = distinct !DILexicalBlock(scope: !2640, file: !199, line: 678, column: 17)
!2928 = !DILocation(line: 682, column: 25, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !199, line: 682, column: 25)
!2930 = distinct !DILexicalBlock(scope: !2924, file: !199, line: 681, column: 23)
!2931 = !DILocation(line: 682, column: 25, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2929, file: !199, line: 682, column: 25)
!2933 = !DILocation(line: 682, column: 25, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !199, line: 682, column: 25)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !199, line: 682, column: 25)
!2936 = distinct !DILexicalBlock(scope: !2932, file: !199, line: 682, column: 25)
!2937 = !DILocation(line: 682, column: 25, scope: !2935)
!2938 = !DILocation(line: 682, column: 25, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !199, line: 682, column: 25)
!2940 = distinct !DILexicalBlock(scope: !2936, file: !199, line: 682, column: 25)
!2941 = !DILocation(line: 682, column: 25, scope: !2940)
!2942 = !DILocation(line: 682, column: 25, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !199, line: 682, column: 25)
!2944 = distinct !DILexicalBlock(scope: !2936, file: !199, line: 682, column: 25)
!2945 = !DILocation(line: 682, column: 25, scope: !2944)
!2946 = !DILocation(line: 682, column: 25, scope: !2936)
!2947 = !DILocation(line: 682, column: 25, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !199, line: 682, column: 25)
!2949 = distinct !DILexicalBlock(scope: !2929, file: !199, line: 682, column: 25)
!2950 = !DILocation(line: 682, column: 25, scope: !2949)
!2951 = !DILocation(line: 683, column: 25, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !199, line: 683, column: 25)
!2953 = distinct !DILexicalBlock(scope: !2930, file: !199, line: 683, column: 25)
!2954 = !DILocation(line: 683, column: 25, scope: !2953)
!2955 = !DILocation(line: 684, column: 25, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !199, line: 684, column: 25)
!2957 = distinct !DILexicalBlock(scope: !2930, file: !199, line: 684, column: 25)
!2958 = !DILocation(line: 684, column: 25, scope: !2957)
!2959 = !DILocation(line: 685, column: 38, scope: !2930)
!2960 = !DILocation(line: 685, column: 33, scope: !2930)
!2961 = !DILocation(line: 686, column: 23, scope: !2930)
!2962 = !DILocation(line: 687, column: 30, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2924, file: !199, line: 687, column: 30)
!2964 = !DILocation(line: 687, column: 30, scope: !2924)
!2965 = !DILocation(line: 689, column: 25, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !199, line: 689, column: 25)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !199, line: 689, column: 25)
!2968 = distinct !DILexicalBlock(scope: !2963, file: !199, line: 688, column: 23)
!2969 = !DILocation(line: 689, column: 25, scope: !2967)
!2970 = !DILocation(line: 691, column: 23, scope: !2968)
!2971 = !DILocation(line: 692, column: 35, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2925, file: !199, line: 692, column: 25)
!2973 = !DILocation(line: 692, column: 30, scope: !2972)
!2974 = !DILocation(line: 692, column: 25, scope: !2925)
!2975 = !DILocation(line: 694, column: 21, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !199, line: 694, column: 21)
!2977 = distinct !DILexicalBlock(scope: !2925, file: !199, line: 694, column: 21)
!2978 = !DILocation(line: 694, column: 21, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !199, line: 694, column: 21)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !199, line: 694, column: 21)
!2981 = distinct !DILexicalBlock(scope: !2976, file: !199, line: 694, column: 21)
!2982 = !DILocation(line: 694, column: 21, scope: !2980)
!2983 = !DILocation(line: 694, column: 21, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !199, line: 694, column: 21)
!2985 = distinct !DILexicalBlock(scope: !2981, file: !199, line: 694, column: 21)
!2986 = !DILocation(line: 694, column: 21, scope: !2985)
!2987 = !DILocation(line: 694, column: 21, scope: !2981)
!2988 = !DILocation(line: 695, column: 21, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !199, line: 695, column: 21)
!2990 = distinct !DILexicalBlock(scope: !2925, file: !199, line: 695, column: 21)
!2991 = !DILocation(line: 695, column: 21, scope: !2990)
!2992 = !DILocation(line: 696, column: 25, scope: !2925)
!2993 = !DILocation(line: 678, column: 17, scope: !2926)
!2994 = distinct !{!2994, !2995, !2996}
!2995 = !DILocation(line: 678, column: 17, scope: !2927)
!2996 = !DILocation(line: 697, column: 19, scope: !2927)
!2997 = !DILocation(line: 704, column: 34, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2599, file: !199, line: 704, column: 11)
!2999 = !DILocation(line: 706, column: 14, scope: !2998)
!3000 = !DILocation(line: 707, column: 14, scope: !2998)
!3001 = !DILocation(line: 707, column: 35, scope: !2998)
!3002 = !DILocation(line: 707, column: 17, scope: !2998)
!3003 = !DILocation(line: 707, column: 53, scope: !2998)
!3004 = !DILocation(line: 707, column: 47, scope: !2998)
!3005 = !DILocation(line: 707, column: 65, scope: !2998)
!3006 = !DILocation(line: 708, column: 15, scope: !2998)
!3007 = !DILocation(line: 708, column: 11, scope: !2998)
!3008 = !DILocation(line: 704, column: 11, scope: !2599)
!3009 = !DILocation(line: 712, column: 7, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2599, file: !199, line: 712, column: 7)
!3011 = !DILocation(line: 712, column: 7, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3010, file: !199, line: 712, column: 7)
!3013 = !DILocation(line: 712, column: 7, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !199, line: 712, column: 7)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !199, line: 712, column: 7)
!3016 = distinct !DILexicalBlock(scope: !3012, file: !199, line: 712, column: 7)
!3017 = !DILocation(line: 712, column: 7, scope: !3015)
!3018 = !DILocation(line: 712, column: 7, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !199, line: 712, column: 7)
!3020 = distinct !DILexicalBlock(scope: !3016, file: !199, line: 712, column: 7)
!3021 = !DILocation(line: 712, column: 7, scope: !3020)
!3022 = !DILocation(line: 712, column: 7, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !199, line: 712, column: 7)
!3024 = distinct !DILexicalBlock(scope: !3016, file: !199, line: 712, column: 7)
!3025 = !DILocation(line: 712, column: 7, scope: !3024)
!3026 = !DILocation(line: 712, column: 7, scope: !3016)
!3027 = !DILocation(line: 712, column: 7, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3029, file: !199, line: 712, column: 7)
!3029 = distinct !DILexicalBlock(scope: !3010, file: !199, line: 712, column: 7)
!3030 = !DILocation(line: 712, column: 7, scope: !3029)
!3031 = !DILocation(line: 715, column: 7, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !199, line: 715, column: 7)
!3033 = distinct !DILexicalBlock(scope: !2599, file: !199, line: 715, column: 7)
!3034 = !DILocation(line: 715, column: 7, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !199, line: 715, column: 7)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !199, line: 715, column: 7)
!3037 = distinct !DILexicalBlock(scope: !3032, file: !199, line: 715, column: 7)
!3038 = !DILocation(line: 715, column: 7, scope: !3036)
!3039 = !DILocation(line: 715, column: 7, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !199, line: 715, column: 7)
!3041 = distinct !DILexicalBlock(scope: !3037, file: !199, line: 715, column: 7)
!3042 = !DILocation(line: 715, column: 7, scope: !3041)
!3043 = !DILocation(line: 715, column: 7, scope: !3037)
!3044 = !DILocation(line: 716, column: 7, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !199, line: 716, column: 7)
!3046 = distinct !DILexicalBlock(scope: !2599, file: !199, line: 716, column: 7)
!3047 = !DILocation(line: 716, column: 7, scope: !3046)
!3048 = !DILocation(line: 718, column: 13, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !2599, file: !199, line: 718, column: 11)
!3050 = !DILocation(line: 718, column: 11, scope: !2599)
!3051 = !DILocation(line: 720, column: 5, scope: !2600)
!3052 = !DILocation(line: 392, column: 75, scope: !2600)
!3053 = !DILocation(line: 392, column: 3, scope: !2600)
!3054 = distinct !{!3054, !2713, !3055}
!3055 = !DILocation(line: 720, column: 5, scope: !2601)
!3056 = !DILocation(line: 722, column: 11, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !2572, file: !199, line: 722, column: 7)
!3058 = !DILocation(line: 722, column: 16, scope: !3057)
!3059 = !DILocation(line: 730, column: 51, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !2572, file: !199, line: 730, column: 7)
!3061 = !DILocation(line: 731, column: 10, scope: !3060)
!3062 = !DILocation(line: 733, column: 11, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !199, line: 733, column: 11)
!3064 = distinct !DILexicalBlock(scope: !3060, file: !199, line: 732, column: 5)
!3065 = !DILocation(line: 733, column: 11, scope: !3064)
!3066 = !DILocation(line: 734, column: 16, scope: !3063)
!3067 = !DILocation(line: 734, column: 9, scope: !3063)
!3068 = !DILocation(line: 738, column: 18, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3063, file: !199, line: 738, column: 16)
!3070 = !DILocation(line: 738, column: 32, scope: !3069)
!3071 = !DILocation(line: 738, column: 29, scope: !3069)
!3072 = !DILocation(line: 747, column: 7, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !2572, file: !199, line: 747, column: 7)
!3074 = !DILocation(line: 747, column: 20, scope: !3073)
!3075 = !DILocation(line: 748, column: 12, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !199, line: 748, column: 5)
!3077 = distinct !DILexicalBlock(scope: !3073, file: !199, line: 748, column: 5)
!3078 = !DILocation(line: 748, column: 5, scope: !3077)
!3079 = !DILocation(line: 749, column: 7, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !199, line: 749, column: 7)
!3081 = distinct !DILexicalBlock(scope: !3076, file: !199, line: 749, column: 7)
!3082 = !DILocation(line: 749, column: 7, scope: !3081)
!3083 = !DILocation(line: 748, column: 39, scope: !3076)
!3084 = distinct !{!3084, !3078, !3085}
!3085 = !DILocation(line: 749, column: 7, scope: !3077)
!3086 = !DILocation(line: 751, column: 11, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !2572, file: !199, line: 751, column: 7)
!3088 = !DILocation(line: 751, column: 7, scope: !2572)
!3089 = !DILocation(line: 752, column: 5, scope: !3087)
!3090 = !DILocation(line: 752, column: 17, scope: !3087)
!3091 = !DILocation(line: 758, column: 21, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !2572, file: !199, line: 758, column: 7)
!3093 = !DILocation(line: 758, column: 54, scope: !3092)
!3094 = !DILocation(line: 758, column: 51, scope: !3092)
!3095 = !DILocation(line: 762, column: 42, scope: !2572)
!3096 = !DILocation(line: 760, column: 10, scope: !2572)
!3097 = !DILocation(line: 760, column: 3, scope: !2572)
!3098 = !DILocation(line: 764, column: 1, scope: !2572)
!3099 = distinct !DISubprogram(name: "gettext_quote", scope: !199, file: !199, line: 199, type: !3100, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3102)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!99, !99, !63}
!3102 = !{!3103, !3104, !3105, !3106}
!3103 = !DILocalVariable(name: "msgid", arg: 1, scope: !3099, file: !199, line: 199, type: !99)
!3104 = !DILocalVariable(name: "s", arg: 2, scope: !3099, file: !199, line: 199, type: !63)
!3105 = !DILocalVariable(name: "translation", scope: !3099, file: !199, line: 201, type: !99)
!3106 = !DILocalVariable(name: "locale_code", scope: !3099, file: !199, line: 202, type: !99)
!3107 = !DILocation(line: 199, column: 28, scope: !3099)
!3108 = !DILocation(line: 199, column: 54, scope: !3099)
!3109 = !DILocation(line: 201, column: 29, scope: !3099)
!3110 = !DILocation(line: 201, column: 15, scope: !3099)
!3111 = !DILocation(line: 204, column: 19, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3099, file: !199, line: 204, column: 7)
!3113 = !DILocation(line: 204, column: 7, scope: !3099)
!3114 = !DILocation(line: 225, column: 17, scope: !3099)
!3115 = !DILocation(line: 202, column: 15, scope: !3099)
!3116 = !DILocalVariable(name: "s2", arg: 2, scope: !3117, file: !3118, line: 160, type: !99)
!3117 = distinct !DISubprogram(name: "strcaseeq0", scope: !3118, file: !3118, line: 160, type: !3119, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3121)
!3118 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!34, !99, !99, !44, !44, !44, !44, !44, !44, !44, !44, !44}
!3121 = !{!3122, !3116, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131}
!3122 = !DILocalVariable(name: "s1", arg: 1, scope: !3117, file: !3118, line: 160, type: !99)
!3123 = !DILocalVariable(name: "s20", arg: 3, scope: !3117, file: !3118, line: 160, type: !44)
!3124 = !DILocalVariable(name: "s21", arg: 4, scope: !3117, file: !3118, line: 160, type: !44)
!3125 = !DILocalVariable(name: "s22", arg: 5, scope: !3117, file: !3118, line: 160, type: !44)
!3126 = !DILocalVariable(name: "s23", arg: 6, scope: !3117, file: !3118, line: 160, type: !44)
!3127 = !DILocalVariable(name: "s24", arg: 7, scope: !3117, file: !3118, line: 160, type: !44)
!3128 = !DILocalVariable(name: "s25", arg: 8, scope: !3117, file: !3118, line: 160, type: !44)
!3129 = !DILocalVariable(name: "s26", arg: 9, scope: !3117, file: !3118, line: 160, type: !44)
!3130 = !DILocalVariable(name: "s27", arg: 10, scope: !3117, file: !3118, line: 160, type: !44)
!3131 = !DILocalVariable(name: "s28", arg: 11, scope: !3117, file: !3118, line: 160, type: !44)
!3132 = !DILocation(line: 160, column: 41, scope: !3117, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 226, column: 7, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3099, file: !199, line: 226, column: 7)
!3135 = !DILocation(line: 160, column: 120, scope: !3117, inlinedAt: !3133)
!3136 = !DILocation(line: 160, column: 130, scope: !3117, inlinedAt: !3133)
!3137 = !DILocation(line: 162, column: 7, scope: !3138, inlinedAt: !3133)
!3138 = distinct !DILexicalBlock(scope: !3117, file: !3118, line: 162, column: 7)
!3139 = !DILocalVariable(name: "s2", arg: 2, scope: !3140, file: !3118, line: 146, type: !99)
!3140 = distinct !DISubprogram(name: "strcaseeq1", scope: !3118, file: !3118, line: 146, type: !3141, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3143)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!34, !99, !99, !44, !44, !44, !44, !44, !44, !44, !44}
!3143 = !{!3144, !3139, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152}
!3144 = !DILocalVariable(name: "s1", arg: 1, scope: !3140, file: !3118, line: 146, type: !99)
!3145 = !DILocalVariable(name: "s21", arg: 3, scope: !3140, file: !3118, line: 146, type: !44)
!3146 = !DILocalVariable(name: "s22", arg: 4, scope: !3140, file: !3118, line: 146, type: !44)
!3147 = !DILocalVariable(name: "s23", arg: 5, scope: !3140, file: !3118, line: 146, type: !44)
!3148 = !DILocalVariable(name: "s24", arg: 6, scope: !3140, file: !3118, line: 146, type: !44)
!3149 = !DILocalVariable(name: "s25", arg: 7, scope: !3140, file: !3118, line: 146, type: !44)
!3150 = !DILocalVariable(name: "s26", arg: 8, scope: !3140, file: !3118, line: 146, type: !44)
!3151 = !DILocalVariable(name: "s27", arg: 9, scope: !3140, file: !3118, line: 146, type: !44)
!3152 = !DILocalVariable(name: "s28", arg: 10, scope: !3140, file: !3118, line: 146, type: !44)
!3153 = !DILocation(line: 146, column: 41, scope: !3140, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 167, column: 16, scope: !3155, inlinedAt: !3133)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !3118, line: 164, column: 11)
!3156 = distinct !DILexicalBlock(scope: !3138, file: !3118, line: 163, column: 5)
!3157 = !DILocation(line: 146, column: 110, scope: !3140, inlinedAt: !3154)
!3158 = !DILocation(line: 146, column: 120, scope: !3140, inlinedAt: !3154)
!3159 = !DILocation(line: 148, column: 7, scope: !3160, inlinedAt: !3154)
!3160 = distinct !DILexicalBlock(scope: !3140, file: !3118, line: 148, column: 7)
!3161 = !DILocalVariable(name: "s2", arg: 2, scope: !3162, file: !3118, line: 132, type: !99)
!3162 = distinct !DISubprogram(name: "strcaseeq2", scope: !3118, file: !3118, line: 132, type: !3163, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3165)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!34, !99, !99, !44, !44, !44, !44, !44, !44, !44}
!3165 = !{!3166, !3161, !3167, !3168, !3169, !3170, !3171, !3172, !3173}
!3166 = !DILocalVariable(name: "s1", arg: 1, scope: !3162, file: !3118, line: 132, type: !99)
!3167 = !DILocalVariable(name: "s22", arg: 3, scope: !3162, file: !3118, line: 132, type: !44)
!3168 = !DILocalVariable(name: "s23", arg: 4, scope: !3162, file: !3118, line: 132, type: !44)
!3169 = !DILocalVariable(name: "s24", arg: 5, scope: !3162, file: !3118, line: 132, type: !44)
!3170 = !DILocalVariable(name: "s25", arg: 6, scope: !3162, file: !3118, line: 132, type: !44)
!3171 = !DILocalVariable(name: "s26", arg: 7, scope: !3162, file: !3118, line: 132, type: !44)
!3172 = !DILocalVariable(name: "s27", arg: 8, scope: !3162, file: !3118, line: 132, type: !44)
!3173 = !DILocalVariable(name: "s28", arg: 9, scope: !3162, file: !3118, line: 132, type: !44)
!3174 = !DILocation(line: 132, column: 41, scope: !3162, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 153, column: 16, scope: !3176, inlinedAt: !3154)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !3118, line: 150, column: 11)
!3177 = distinct !DILexicalBlock(scope: !3160, file: !3118, line: 149, column: 5)
!3178 = !DILocation(line: 132, column: 100, scope: !3162, inlinedAt: !3175)
!3179 = !DILocation(line: 132, column: 110, scope: !3162, inlinedAt: !3175)
!3180 = !DILocation(line: 134, column: 7, scope: !3181, inlinedAt: !3175)
!3181 = distinct !DILexicalBlock(scope: !3162, file: !3118, line: 134, column: 7)
!3182 = !DILocalVariable(name: "s2", arg: 2, scope: !3183, file: !3118, line: 118, type: !99)
!3183 = distinct !DISubprogram(name: "strcaseeq3", scope: !3118, file: !3118, line: 118, type: !3184, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3186)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!34, !99, !99, !44, !44, !44, !44, !44, !44}
!3186 = !{!3187, !3182, !3188, !3189, !3190, !3191, !3192, !3193}
!3187 = !DILocalVariable(name: "s1", arg: 1, scope: !3183, file: !3118, line: 118, type: !99)
!3188 = !DILocalVariable(name: "s23", arg: 3, scope: !3183, file: !3118, line: 118, type: !44)
!3189 = !DILocalVariable(name: "s24", arg: 4, scope: !3183, file: !3118, line: 118, type: !44)
!3190 = !DILocalVariable(name: "s25", arg: 5, scope: !3183, file: !3118, line: 118, type: !44)
!3191 = !DILocalVariable(name: "s26", arg: 6, scope: !3183, file: !3118, line: 118, type: !44)
!3192 = !DILocalVariable(name: "s27", arg: 7, scope: !3183, file: !3118, line: 118, type: !44)
!3193 = !DILocalVariable(name: "s28", arg: 8, scope: !3183, file: !3118, line: 118, type: !44)
!3194 = !DILocation(line: 118, column: 41, scope: !3183, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 139, column: 16, scope: !3196, inlinedAt: !3175)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !3118, line: 136, column: 11)
!3197 = distinct !DILexicalBlock(scope: !3181, file: !3118, line: 135, column: 5)
!3198 = !DILocation(line: 118, column: 90, scope: !3183, inlinedAt: !3195)
!3199 = !DILocation(line: 118, column: 100, scope: !3183, inlinedAt: !3195)
!3200 = !DILocation(line: 120, column: 7, scope: !3201, inlinedAt: !3195)
!3201 = distinct !DILexicalBlock(scope: !3183, file: !3118, line: 120, column: 7)
!3202 = !DILocation(line: 120, column: 7, scope: !3183, inlinedAt: !3195)
!3203 = !DILocalVariable(name: "s2", arg: 2, scope: !3204, file: !3118, line: 104, type: !99)
!3204 = distinct !DISubprogram(name: "strcaseeq4", scope: !3118, file: !3118, line: 104, type: !3205, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3207)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!34, !99, !99, !44, !44, !44, !44, !44}
!3207 = !{!3208, !3203, !3209, !3210, !3211, !3212, !3213}
!3208 = !DILocalVariable(name: "s1", arg: 1, scope: !3204, file: !3118, line: 104, type: !99)
!3209 = !DILocalVariable(name: "s24", arg: 3, scope: !3204, file: !3118, line: 104, type: !44)
!3210 = !DILocalVariable(name: "s25", arg: 4, scope: !3204, file: !3118, line: 104, type: !44)
!3211 = !DILocalVariable(name: "s26", arg: 5, scope: !3204, file: !3118, line: 104, type: !44)
!3212 = !DILocalVariable(name: "s27", arg: 6, scope: !3204, file: !3118, line: 104, type: !44)
!3213 = !DILocalVariable(name: "s28", arg: 7, scope: !3204, file: !3118, line: 104, type: !44)
!3214 = !DILocation(line: 104, column: 41, scope: !3204, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 125, column: 16, scope: !3216, inlinedAt: !3195)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !3118, line: 122, column: 11)
!3217 = distinct !DILexicalBlock(scope: !3201, file: !3118, line: 121, column: 5)
!3218 = !DILocation(line: 104, column: 80, scope: !3204, inlinedAt: !3215)
!3219 = !DILocation(line: 104, column: 90, scope: !3204, inlinedAt: !3215)
!3220 = !DILocation(line: 106, column: 7, scope: !3221, inlinedAt: !3215)
!3221 = distinct !DILexicalBlock(scope: !3204, file: !3118, line: 106, column: 7)
!3222 = !DILocation(line: 106, column: 7, scope: !3204, inlinedAt: !3215)
!3223 = !DILocalVariable(name: "s2", arg: 2, scope: !3224, file: !3118, line: 90, type: !99)
!3224 = distinct !DISubprogram(name: "strcaseeq5", scope: !3118, file: !3118, line: 90, type: !3225, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3227)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!34, !99, !99, !44, !44, !44, !44}
!3227 = !{!3228, !3223, !3229, !3230, !3231, !3232}
!3228 = !DILocalVariable(name: "s1", arg: 1, scope: !3224, file: !3118, line: 90, type: !99)
!3229 = !DILocalVariable(name: "s25", arg: 3, scope: !3224, file: !3118, line: 90, type: !44)
!3230 = !DILocalVariable(name: "s26", arg: 4, scope: !3224, file: !3118, line: 90, type: !44)
!3231 = !DILocalVariable(name: "s27", arg: 5, scope: !3224, file: !3118, line: 90, type: !44)
!3232 = !DILocalVariable(name: "s28", arg: 6, scope: !3224, file: !3118, line: 90, type: !44)
!3233 = !DILocation(line: 90, column: 41, scope: !3224, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 111, column: 16, scope: !3235, inlinedAt: !3215)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !3118, line: 108, column: 11)
!3236 = distinct !DILexicalBlock(scope: !3221, file: !3118, line: 107, column: 5)
!3237 = !DILocation(line: 90, column: 70, scope: !3224, inlinedAt: !3234)
!3238 = !DILocation(line: 90, column: 80, scope: !3224, inlinedAt: !3234)
!3239 = !DILocation(line: 92, column: 7, scope: !3240, inlinedAt: !3234)
!3240 = distinct !DILexicalBlock(scope: !3224, file: !3118, line: 92, column: 7)
!3241 = !DILocation(line: 92, column: 7, scope: !3224, inlinedAt: !3234)
!3242 = !DILocation(line: 227, column: 12, scope: !3134)
!3243 = !DILocation(line: 227, column: 21, scope: !3134)
!3244 = !DILocation(line: 227, column: 5, scope: !3134)
!3245 = !DILocation(line: 146, column: 41, scope: !3140, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 167, column: 16, scope: !3155, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 228, column: 7, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3099, file: !199, line: 228, column: 7)
!3249 = !DILocation(line: 146, column: 110, scope: !3140, inlinedAt: !3246)
!3250 = !DILocation(line: 146, column: 120, scope: !3140, inlinedAt: !3246)
!3251 = !DILocation(line: 148, column: 7, scope: !3160, inlinedAt: !3246)
!3252 = !DILocation(line: 132, column: 41, scope: !3162, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 153, column: 16, scope: !3176, inlinedAt: !3246)
!3254 = !DILocation(line: 132, column: 100, scope: !3162, inlinedAt: !3253)
!3255 = !DILocation(line: 132, column: 110, scope: !3162, inlinedAt: !3253)
!3256 = !DILocation(line: 134, column: 7, scope: !3181, inlinedAt: !3253)
!3257 = !DILocation(line: 134, column: 7, scope: !3162, inlinedAt: !3253)
!3258 = !DILocation(line: 118, column: 41, scope: !3183, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 139, column: 16, scope: !3196, inlinedAt: !3253)
!3260 = !DILocation(line: 118, column: 90, scope: !3183, inlinedAt: !3259)
!3261 = !DILocation(line: 118, column: 100, scope: !3183, inlinedAt: !3259)
!3262 = !DILocation(line: 120, column: 7, scope: !3201, inlinedAt: !3259)
!3263 = !DILocation(line: 120, column: 7, scope: !3183, inlinedAt: !3259)
!3264 = !DILocation(line: 104, column: 41, scope: !3204, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 125, column: 16, scope: !3216, inlinedAt: !3259)
!3266 = !DILocation(line: 104, column: 80, scope: !3204, inlinedAt: !3265)
!3267 = !DILocation(line: 104, column: 90, scope: !3204, inlinedAt: !3265)
!3268 = !DILocation(line: 106, column: 7, scope: !3221, inlinedAt: !3265)
!3269 = !DILocation(line: 106, column: 7, scope: !3204, inlinedAt: !3265)
!3270 = !DILocation(line: 90, column: 41, scope: !3224, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 111, column: 16, scope: !3235, inlinedAt: !3265)
!3272 = !DILocation(line: 90, column: 70, scope: !3224, inlinedAt: !3271)
!3273 = !DILocation(line: 90, column: 80, scope: !3224, inlinedAt: !3271)
!3274 = !DILocation(line: 92, column: 7, scope: !3240, inlinedAt: !3271)
!3275 = !DILocation(line: 92, column: 7, scope: !3224, inlinedAt: !3271)
!3276 = !DILocalVariable(name: "s2", arg: 2, scope: !3277, file: !3118, line: 76, type: !99)
!3277 = distinct !DISubprogram(name: "strcaseeq6", scope: !3118, file: !3118, line: 76, type: !3278, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3280)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!34, !99, !99, !44, !44, !44}
!3280 = !{!3281, !3276, !3282, !3283, !3284}
!3281 = !DILocalVariable(name: "s1", arg: 1, scope: !3277, file: !3118, line: 76, type: !99)
!3282 = !DILocalVariable(name: "s26", arg: 3, scope: !3277, file: !3118, line: 76, type: !44)
!3283 = !DILocalVariable(name: "s27", arg: 4, scope: !3277, file: !3118, line: 76, type: !44)
!3284 = !DILocalVariable(name: "s28", arg: 5, scope: !3277, file: !3118, line: 76, type: !44)
!3285 = !DILocation(line: 76, column: 41, scope: !3277, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 97, column: 16, scope: !3287, inlinedAt: !3271)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !3118, line: 94, column: 11)
!3288 = distinct !DILexicalBlock(scope: !3240, file: !3118, line: 93, column: 5)
!3289 = !DILocation(line: 76, column: 60, scope: !3277, inlinedAt: !3286)
!3290 = !DILocation(line: 76, column: 70, scope: !3277, inlinedAt: !3286)
!3291 = !DILocation(line: 78, column: 7, scope: !3292, inlinedAt: !3286)
!3292 = distinct !DILexicalBlock(scope: !3277, file: !3118, line: 78, column: 7)
!3293 = !DILocation(line: 78, column: 7, scope: !3277, inlinedAt: !3286)
!3294 = !DILocalVariable(name: "s2", arg: 2, scope: !3295, file: !3118, line: 62, type: !99)
!3295 = distinct !DISubprogram(name: "strcaseeq7", scope: !3118, file: !3118, line: 62, type: !3296, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3298)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!34, !99, !99, !44, !44}
!3298 = !{!3299, !3294, !3300, !3301}
!3299 = !DILocalVariable(name: "s1", arg: 1, scope: !3295, file: !3118, line: 62, type: !99)
!3300 = !DILocalVariable(name: "s27", arg: 3, scope: !3295, file: !3118, line: 62, type: !44)
!3301 = !DILocalVariable(name: "s28", arg: 4, scope: !3295, file: !3118, line: 62, type: !44)
!3302 = !DILocation(line: 62, column: 41, scope: !3295, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 83, column: 16, scope: !3304, inlinedAt: !3286)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !3118, line: 80, column: 11)
!3305 = distinct !DILexicalBlock(scope: !3292, file: !3118, line: 79, column: 5)
!3306 = !DILocation(line: 62, column: 50, scope: !3295, inlinedAt: !3303)
!3307 = !DILocation(line: 62, column: 60, scope: !3295, inlinedAt: !3303)
!3308 = !DILocation(line: 64, column: 7, scope: !3309, inlinedAt: !3303)
!3309 = distinct !DILexicalBlock(scope: !3295, file: !3118, line: 64, column: 7)
!3310 = !DILocation(line: 228, column: 7, scope: !3099)
!3311 = !DILocation(line: 229, column: 12, scope: !3248)
!3312 = !DILocation(line: 229, column: 21, scope: !3248)
!3313 = !DILocation(line: 229, column: 5, scope: !3248)
!3314 = !DILocation(line: 231, column: 13, scope: !3099)
!3315 = !DILocation(line: 231, column: 11, scope: !3099)
!3316 = !DILocation(line: 231, column: 3, scope: !3099)
!3317 = !DILocation(line: 232, column: 1, scope: !3099)
!3318 = distinct !DISubprogram(name: "quotearg_alloc", scope: !199, file: !199, line: 791, type: !3319, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3321)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!43, !99, !194, !2444}
!3321 = !{!3322, !3323, !3324}
!3322 = !DILocalVariable(name: "arg", arg: 1, scope: !3318, file: !199, line: 791, type: !99)
!3323 = !DILocalVariable(name: "argsize", arg: 2, scope: !3318, file: !199, line: 791, type: !194)
!3324 = !DILocalVariable(name: "o", arg: 3, scope: !3318, file: !199, line: 792, type: !2444)
!3325 = !DILocation(line: 791, column: 29, scope: !3318)
!3326 = !DILocation(line: 791, column: 41, scope: !3318)
!3327 = !DILocation(line: 792, column: 47, scope: !3318)
!3328 = !DILocalVariable(name: "arg", arg: 1, scope: !3329, file: !199, line: 804, type: !99)
!3329 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !199, file: !199, line: 804, type: !3330, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3332)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!43, !99, !194, !614, !2444}
!3332 = !{!3328, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340}
!3333 = !DILocalVariable(name: "argsize", arg: 2, scope: !3329, file: !199, line: 804, type: !194)
!3334 = !DILocalVariable(name: "size", arg: 3, scope: !3329, file: !199, line: 804, type: !614)
!3335 = !DILocalVariable(name: "o", arg: 4, scope: !3329, file: !199, line: 805, type: !2444)
!3336 = !DILocalVariable(name: "p", scope: !3329, file: !199, line: 807, type: !2444)
!3337 = !DILocalVariable(name: "e", scope: !3329, file: !199, line: 808, type: !34)
!3338 = !DILocalVariable(name: "flags", scope: !3329, file: !199, line: 810, type: !34)
!3339 = !DILocalVariable(name: "bufsize", scope: !3329, file: !199, line: 811, type: !194)
!3340 = !DILocalVariable(name: "buf", scope: !3329, file: !199, line: 815, type: !43)
!3341 = !DILocation(line: 804, column: 33, scope: !3329, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 794, column: 10, scope: !3318)
!3343 = !DILocation(line: 804, column: 45, scope: !3329, inlinedAt: !3342)
!3344 = !DILocation(line: 804, column: 62, scope: !3329, inlinedAt: !3342)
!3345 = !DILocation(line: 805, column: 51, scope: !3329, inlinedAt: !3342)
!3346 = !DILocation(line: 807, column: 37, scope: !3329, inlinedAt: !3342)
!3347 = !DILocation(line: 807, column: 33, scope: !3329, inlinedAt: !3342)
!3348 = !DILocation(line: 808, column: 11, scope: !3329, inlinedAt: !3342)
!3349 = !DILocation(line: 808, column: 7, scope: !3329, inlinedAt: !3342)
!3350 = !DILocation(line: 810, column: 18, scope: !3329, inlinedAt: !3342)
!3351 = !DILocation(line: 810, column: 24, scope: !3329, inlinedAt: !3342)
!3352 = !DILocation(line: 810, column: 7, scope: !3329, inlinedAt: !3342)
!3353 = !DILocation(line: 811, column: 69, scope: !3329, inlinedAt: !3342)
!3354 = !DILocation(line: 812, column: 53, scope: !3329, inlinedAt: !3342)
!3355 = !DILocation(line: 813, column: 49, scope: !3329, inlinedAt: !3342)
!3356 = !DILocation(line: 814, column: 49, scope: !3329, inlinedAt: !3342)
!3357 = !DILocation(line: 811, column: 20, scope: !3329, inlinedAt: !3342)
!3358 = !DILocation(line: 814, column: 62, scope: !3329, inlinedAt: !3342)
!3359 = !DILocation(line: 811, column: 10, scope: !3329, inlinedAt: !3342)
!3360 = !DILocalVariable(name: "n", arg: 1, scope: !3361, file: !610, line: 220, type: !194)
!3361 = distinct !DISubprogram(name: "xcharalloc", scope: !610, file: !610, line: 220, type: !3362, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3364)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!43, !194}
!3364 = !{!3360}
!3365 = !DILocation(line: 220, column: 20, scope: !3361, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 815, column: 15, scope: !3329, inlinedAt: !3342)
!3367 = !DILocation(line: 222, column: 10, scope: !3361, inlinedAt: !3366)
!3368 = !DILocation(line: 815, column: 9, scope: !3329, inlinedAt: !3342)
!3369 = !DILocation(line: 816, column: 60, scope: !3329, inlinedAt: !3342)
!3370 = !DILocation(line: 818, column: 32, scope: !3329, inlinedAt: !3342)
!3371 = !DILocation(line: 818, column: 47, scope: !3329, inlinedAt: !3342)
!3372 = !DILocation(line: 816, column: 3, scope: !3329, inlinedAt: !3342)
!3373 = !DILocation(line: 819, column: 9, scope: !3329, inlinedAt: !3342)
!3374 = !DILocation(line: 794, column: 3, scope: !3318)
!3375 = !DILocation(line: 804, column: 33, scope: !3329)
!3376 = !DILocation(line: 804, column: 45, scope: !3329)
!3377 = !DILocation(line: 804, column: 62, scope: !3329)
!3378 = !DILocation(line: 805, column: 51, scope: !3329)
!3379 = !DILocation(line: 807, column: 37, scope: !3329)
!3380 = !DILocation(line: 807, column: 33, scope: !3329)
!3381 = !DILocation(line: 808, column: 11, scope: !3329)
!3382 = !DILocation(line: 808, column: 7, scope: !3329)
!3383 = !DILocation(line: 810, column: 18, scope: !3329)
!3384 = !DILocation(line: 810, column: 27, scope: !3329)
!3385 = !DILocation(line: 810, column: 24, scope: !3329)
!3386 = !DILocation(line: 810, column: 7, scope: !3329)
!3387 = !DILocation(line: 811, column: 69, scope: !3329)
!3388 = !DILocation(line: 812, column: 53, scope: !3329)
!3389 = !DILocation(line: 813, column: 49, scope: !3329)
!3390 = !DILocation(line: 814, column: 49, scope: !3329)
!3391 = !DILocation(line: 811, column: 20, scope: !3329)
!3392 = !DILocation(line: 814, column: 62, scope: !3329)
!3393 = !DILocation(line: 811, column: 10, scope: !3329)
!3394 = !DILocation(line: 220, column: 20, scope: !3361, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 815, column: 15, scope: !3329)
!3396 = !DILocation(line: 222, column: 10, scope: !3361, inlinedAt: !3395)
!3397 = !DILocation(line: 815, column: 9, scope: !3329)
!3398 = !DILocation(line: 816, column: 60, scope: !3329)
!3399 = !DILocation(line: 818, column: 32, scope: !3329)
!3400 = !DILocation(line: 818, column: 47, scope: !3329)
!3401 = !DILocation(line: 816, column: 3, scope: !3329)
!3402 = !DILocation(line: 819, column: 9, scope: !3329)
!3403 = !DILocation(line: 820, column: 7, scope: !3329)
!3404 = !DILocation(line: 821, column: 11, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3329, file: !199, line: 820, column: 7)
!3406 = !DILocation(line: 821, column: 5, scope: !3405)
!3407 = !DILocation(line: 822, column: 3, scope: !3329)
!3408 = distinct !DISubprogram(name: "quotearg_free", scope: !199, file: !199, line: 840, type: !970, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3409)
!3409 = !{!3410, !3411}
!3410 = !DILocalVariable(name: "sv", scope: !3408, file: !199, line: 842, type: !225)
!3411 = !DILocalVariable(name: "i", scope: !3408, file: !199, line: 843, type: !34)
!3412 = !DILocation(line: 842, column: 24, scope: !3408)
!3413 = !DILocation(line: 842, column: 19, scope: !3408)
!3414 = !DILocation(line: 843, column: 7, scope: !3408)
!3415 = !DILocation(line: 844, column: 19, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3417, file: !199, line: 844, column: 3)
!3417 = distinct !DILexicalBlock(scope: !3408, file: !199, line: 844, column: 3)
!3418 = !DILocation(line: 844, column: 17, scope: !3416)
!3419 = !DILocation(line: 844, column: 3, scope: !3417)
!3420 = !DILocation(line: 845, column: 17, scope: !3416)
!3421 = !{!3422, !659, i64 8}
!3422 = !{!"slotvec", !676, i64 0, !659, i64 8}
!3423 = !DILocation(line: 845, column: 5, scope: !3416)
!3424 = !DILocation(line: 844, column: 28, scope: !3416)
!3425 = distinct !{!3425, !3419, !3426}
!3426 = !DILocation(line: 845, column: 20, scope: !3417)
!3427 = !DILocation(line: 846, column: 13, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3408, file: !199, line: 846, column: 7)
!3429 = !DILocation(line: 846, column: 17, scope: !3428)
!3430 = !DILocation(line: 846, column: 7, scope: !3408)
!3431 = !DILocation(line: 848, column: 7, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3428, file: !199, line: 847, column: 5)
!3433 = !DILocation(line: 849, column: 21, scope: !3432)
!3434 = !{!3422, !676, i64 0}
!3435 = !DILocation(line: 850, column: 20, scope: !3432)
!3436 = !DILocation(line: 851, column: 5, scope: !3432)
!3437 = !DILocation(line: 852, column: 10, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3408, file: !199, line: 852, column: 7)
!3439 = !DILocation(line: 852, column: 7, scope: !3408)
!3440 = !DILocation(line: 854, column: 13, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3438, file: !199, line: 853, column: 5)
!3442 = !DILocation(line: 854, column: 7, scope: !3441)
!3443 = !DILocation(line: 855, column: 15, scope: !3441)
!3444 = !DILocation(line: 856, column: 5, scope: !3441)
!3445 = !DILocation(line: 857, column: 10, scope: !3408)
!3446 = !DILocation(line: 858, column: 1, scope: !3408)
!3447 = distinct !DISubprogram(name: "quotearg_n", scope: !199, file: !199, line: 922, type: !3448, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3450)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!43, !34, !99}
!3450 = !{!3451, !3452}
!3451 = !DILocalVariable(name: "n", arg: 1, scope: !3447, file: !199, line: 922, type: !34)
!3452 = !DILocalVariable(name: "arg", arg: 2, scope: !3447, file: !199, line: 922, type: !99)
!3453 = !DILocation(line: 922, column: 17, scope: !3447)
!3454 = !DILocation(line: 922, column: 32, scope: !3447)
!3455 = !DILocation(line: 924, column: 10, scope: !3447)
!3456 = !DILocation(line: 924, column: 3, scope: !3447)
!3457 = distinct !DISubprogram(name: "quotearg_n_options", scope: !199, file: !199, line: 869, type: !3458, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3460)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!43, !34, !99, !194, !2444}
!3460 = !{!3461, !3462, !3463, !3464, !3465, !3466, !3467, !3470, !3472, !3473, !3474}
!3461 = !DILocalVariable(name: "n", arg: 1, scope: !3457, file: !199, line: 869, type: !34)
!3462 = !DILocalVariable(name: "arg", arg: 2, scope: !3457, file: !199, line: 869, type: !99)
!3463 = !DILocalVariable(name: "argsize", arg: 3, scope: !3457, file: !199, line: 869, type: !194)
!3464 = !DILocalVariable(name: "options", arg: 4, scope: !3457, file: !199, line: 870, type: !2444)
!3465 = !DILocalVariable(name: "e", scope: !3457, file: !199, line: 872, type: !34)
!3466 = !DILocalVariable(name: "sv", scope: !3457, file: !199, line: 874, type: !225)
!3467 = !DILocalVariable(name: "preallocated", scope: !3468, file: !199, line: 881, type: !45)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !199, line: 880, column: 5)
!3469 = distinct !DILexicalBlock(scope: !3457, file: !199, line: 879, column: 7)
!3470 = !DILocalVariable(name: "size", scope: !3471, file: !199, line: 894, type: !194)
!3471 = distinct !DILexicalBlock(scope: !3457, file: !199, line: 893, column: 3)
!3472 = !DILocalVariable(name: "val", scope: !3471, file: !199, line: 895, type: !43)
!3473 = !DILocalVariable(name: "flags", scope: !3471, file: !199, line: 897, type: !34)
!3474 = !DILocalVariable(name: "qsize", scope: !3471, file: !199, line: 898, type: !194)
!3475 = !DILocation(line: 869, column: 25, scope: !3457)
!3476 = !DILocation(line: 869, column: 40, scope: !3457)
!3477 = !DILocation(line: 869, column: 52, scope: !3457)
!3478 = !DILocation(line: 870, column: 51, scope: !3457)
!3479 = !DILocation(line: 872, column: 11, scope: !3457)
!3480 = !DILocation(line: 872, column: 7, scope: !3457)
!3481 = !DILocation(line: 874, column: 24, scope: !3457)
!3482 = !DILocation(line: 874, column: 19, scope: !3457)
!3483 = !DILocation(line: 876, column: 9, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3457, file: !199, line: 876, column: 7)
!3485 = !DILocation(line: 876, column: 7, scope: !3457)
!3486 = !DILocation(line: 877, column: 5, scope: !3484)
!3487 = !DILocation(line: 879, column: 7, scope: !3469)
!3488 = !DILocation(line: 879, column: 14, scope: !3469)
!3489 = !DILocation(line: 879, column: 7, scope: !3457)
!3490 = !DILocation(line: 881, column: 31, scope: !3468)
!3491 = !DILocation(line: 883, column: 67, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3468, file: !199, line: 883, column: 11)
!3493 = !DILocation(line: 883, column: 11, scope: !3468)
!3494 = !DILocation(line: 884, column: 9, scope: !3492)
!3495 = !DILocation(line: 886, column: 32, scope: !3468)
!3496 = !DILocation(line: 886, column: 61, scope: !3468)
!3497 = !DILocation(line: 886, column: 58, scope: !3468)
!3498 = !DILocation(line: 886, column: 66, scope: !3468)
!3499 = !DILocation(line: 886, column: 22, scope: !3468)
!3500 = !DILocation(line: 886, column: 15, scope: !3468)
!3501 = !DILocation(line: 887, column: 11, scope: !3468)
!3502 = !DILocation(line: 888, column: 15, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3468, file: !199, line: 887, column: 11)
!3504 = !{i64 0, i64 8, !1929, i64 8, i64 8, !658}
!3505 = !DILocation(line: 888, column: 9, scope: !3503)
!3506 = !DILocation(line: 889, column: 20, scope: !3468)
!3507 = !DILocation(line: 889, column: 18, scope: !3468)
!3508 = !DILocation(line: 889, column: 7, scope: !3468)
!3509 = !DILocation(line: 889, column: 38, scope: !3468)
!3510 = !DILocation(line: 889, column: 31, scope: !3468)
!3511 = !DILocation(line: 889, column: 48, scope: !3468)
!3512 = !DILocation(line: 890, column: 14, scope: !3468)
!3513 = !DILocation(line: 891, column: 5, scope: !3468)
!3514 = !DILocation(line: 894, column: 19, scope: !3471)
!3515 = !DILocation(line: 894, column: 25, scope: !3471)
!3516 = !DILocation(line: 894, column: 12, scope: !3471)
!3517 = !DILocation(line: 895, column: 23, scope: !3471)
!3518 = !DILocation(line: 895, column: 11, scope: !3471)
!3519 = !DILocation(line: 897, column: 26, scope: !3471)
!3520 = !DILocation(line: 897, column: 32, scope: !3471)
!3521 = !DILocation(line: 897, column: 9, scope: !3471)
!3522 = !DILocation(line: 899, column: 55, scope: !3471)
!3523 = !DILocation(line: 900, column: 46, scope: !3471)
!3524 = !DILocation(line: 901, column: 55, scope: !3471)
!3525 = !DILocation(line: 902, column: 55, scope: !3471)
!3526 = !DILocation(line: 898, column: 20, scope: !3471)
!3527 = !DILocation(line: 898, column: 12, scope: !3471)
!3528 = !DILocation(line: 904, column: 14, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3471, file: !199, line: 904, column: 9)
!3530 = !DILocation(line: 904, column: 9, scope: !3471)
!3531 = !DILocation(line: 906, column: 35, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3529, file: !199, line: 905, column: 7)
!3533 = !DILocation(line: 906, column: 20, scope: !3532)
!3534 = !DILocation(line: 907, column: 17, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3532, file: !199, line: 907, column: 13)
!3536 = !DILocation(line: 907, column: 13, scope: !3532)
!3537 = !DILocation(line: 908, column: 11, scope: !3535)
!3538 = !DILocation(line: 220, column: 20, scope: !3361, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 909, column: 27, scope: !3532)
!3540 = !DILocation(line: 222, column: 10, scope: !3361, inlinedAt: !3539)
!3541 = !DILocation(line: 909, column: 19, scope: !3532)
!3542 = !DILocation(line: 910, column: 69, scope: !3532)
!3543 = !DILocation(line: 912, column: 44, scope: !3532)
!3544 = !DILocation(line: 913, column: 44, scope: !3532)
!3545 = !DILocation(line: 910, column: 9, scope: !3532)
!3546 = !DILocation(line: 914, column: 7, scope: !3532)
!3547 = !DILocation(line: 916, column: 11, scope: !3471)
!3548 = !DILocation(line: 917, column: 5, scope: !3471)
!3549 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !199, file: !199, line: 928, type: !3550, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3552)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!43, !34, !99, !194}
!3552 = !{!3553, !3554, !3555}
!3553 = !DILocalVariable(name: "n", arg: 1, scope: !3549, file: !199, line: 928, type: !34)
!3554 = !DILocalVariable(name: "arg", arg: 2, scope: !3549, file: !199, line: 928, type: !99)
!3555 = !DILocalVariable(name: "argsize", arg: 3, scope: !3549, file: !199, line: 928, type: !194)
!3556 = !DILocation(line: 928, column: 21, scope: !3549)
!3557 = !DILocation(line: 928, column: 36, scope: !3549)
!3558 = !DILocation(line: 928, column: 48, scope: !3549)
!3559 = !DILocation(line: 930, column: 10, scope: !3549)
!3560 = !DILocation(line: 930, column: 3, scope: !3549)
!3561 = distinct !DISubprogram(name: "quotearg", scope: !199, file: !199, line: 934, type: !3562, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3564)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!43, !99}
!3564 = !{!3565}
!3565 = !DILocalVariable(name: "arg", arg: 1, scope: !3561, file: !199, line: 934, type: !99)
!3566 = !DILocation(line: 934, column: 23, scope: !3561)
!3567 = !DILocation(line: 922, column: 17, scope: !3447, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 936, column: 10, scope: !3561)
!3569 = !DILocation(line: 922, column: 32, scope: !3447, inlinedAt: !3568)
!3570 = !DILocation(line: 924, column: 10, scope: !3447, inlinedAt: !3568)
!3571 = !DILocation(line: 936, column: 3, scope: !3561)
!3572 = distinct !DISubprogram(name: "quotearg_mem", scope: !199, file: !199, line: 940, type: !3573, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3575)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!43, !99, !194}
!3575 = !{!3576, !3577}
!3576 = !DILocalVariable(name: "arg", arg: 1, scope: !3572, file: !199, line: 940, type: !99)
!3577 = !DILocalVariable(name: "argsize", arg: 2, scope: !3572, file: !199, line: 940, type: !194)
!3578 = !DILocation(line: 940, column: 27, scope: !3572)
!3579 = !DILocation(line: 940, column: 39, scope: !3572)
!3580 = !DILocation(line: 928, column: 21, scope: !3549, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 942, column: 10, scope: !3572)
!3582 = !DILocation(line: 928, column: 36, scope: !3549, inlinedAt: !3581)
!3583 = !DILocation(line: 928, column: 48, scope: !3549, inlinedAt: !3581)
!3584 = !DILocation(line: 930, column: 10, scope: !3549, inlinedAt: !3581)
!3585 = !DILocation(line: 942, column: 3, scope: !3572)
!3586 = distinct !DISubprogram(name: "quotearg_n_style", scope: !199, file: !199, line: 946, type: !3587, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3589)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!43, !34, !63, !99}
!3589 = !{!3590, !3591, !3592, !3593}
!3590 = !DILocalVariable(name: "n", arg: 1, scope: !3586, file: !199, line: 946, type: !34)
!3591 = !DILocalVariable(name: "s", arg: 2, scope: !3586, file: !199, line: 946, type: !63)
!3592 = !DILocalVariable(name: "arg", arg: 3, scope: !3586, file: !199, line: 946, type: !99)
!3593 = !DILocalVariable(name: "o", scope: !3586, file: !199, line: 948, type: !2445)
!3594 = !DILocalVariable(name: "o", scope: !3595, file: !199, line: 187, type: !206)
!3595 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !199, file: !199, line: 185, type: !3596, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3598)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!206, !63}
!3598 = !{!3599, !3594}
!3599 = !DILocalVariable(name: "style", arg: 1, scope: !3595, file: !199, line: 185, type: !63)
!3600 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3601 = !DILocation(line: 187, column: 26, scope: !3595, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 948, column: 36, scope: !3586)
!3603 = !DILocation(line: 946, column: 23, scope: !3586)
!3604 = !DILocation(line: 946, column: 45, scope: !3586)
!3605 = !DILocation(line: 946, column: 60, scope: !3586)
!3606 = !DILocation(line: 948, column: 3, scope: !3586)
!3607 = !DILocation(line: 948, column: 32, scope: !3586)
!3608 = !DILocation(line: 185, column: 48, scope: !3595, inlinedAt: !3602)
!3609 = !DILocation(line: 187, column: 3, scope: !3595, inlinedAt: !3602)
!3610 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3611 = !DILocation(line: 188, column: 13, scope: !3612, inlinedAt: !3602)
!3612 = distinct !DILexicalBlock(scope: !3595, file: !199, line: 188, column: 7)
!3613 = !DILocation(line: 188, column: 7, scope: !3595, inlinedAt: !3602)
!3614 = !DILocation(line: 189, column: 5, scope: !3612, inlinedAt: !3602)
!3615 = !{!3616}
!3616 = distinct !{!3616, !3617, !"quoting_options_from_style: argument 0"}
!3617 = distinct !{!3617, !"quoting_options_from_style"}
!3618 = !DILocation(line: 191, column: 10, scope: !3595, inlinedAt: !3602)
!3619 = !DILocation(line: 192, column: 1, scope: !3595, inlinedAt: !3602)
!3620 = !DILocation(line: 949, column: 10, scope: !3586)
!3621 = !DILocation(line: 950, column: 1, scope: !3586)
!3622 = !DILocation(line: 949, column: 3, scope: !3586)
!3623 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !199, file: !199, line: 953, type: !3624, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3626)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!43, !34, !63, !99, !194}
!3626 = !{!3627, !3628, !3629, !3630, !3631}
!3627 = !DILocalVariable(name: "n", arg: 1, scope: !3623, file: !199, line: 953, type: !34)
!3628 = !DILocalVariable(name: "s", arg: 2, scope: !3623, file: !199, line: 953, type: !63)
!3629 = !DILocalVariable(name: "arg", arg: 3, scope: !3623, file: !199, line: 954, type: !99)
!3630 = !DILocalVariable(name: "argsize", arg: 4, scope: !3623, file: !199, line: 954, type: !194)
!3631 = !DILocalVariable(name: "o", scope: !3623, file: !199, line: 956, type: !2445)
!3632 = !DILocation(line: 187, column: 26, scope: !3595, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 956, column: 36, scope: !3623)
!3634 = !DILocation(line: 953, column: 27, scope: !3623)
!3635 = !DILocation(line: 953, column: 49, scope: !3623)
!3636 = !DILocation(line: 954, column: 35, scope: !3623)
!3637 = !DILocation(line: 954, column: 47, scope: !3623)
!3638 = !DILocation(line: 956, column: 3, scope: !3623)
!3639 = !DILocation(line: 956, column: 32, scope: !3623)
!3640 = !DILocation(line: 185, column: 48, scope: !3595, inlinedAt: !3633)
!3641 = !DILocation(line: 187, column: 3, scope: !3595, inlinedAt: !3633)
!3642 = !DILocation(line: 188, column: 13, scope: !3612, inlinedAt: !3633)
!3643 = !DILocation(line: 188, column: 7, scope: !3595, inlinedAt: !3633)
!3644 = !DILocation(line: 189, column: 5, scope: !3612, inlinedAt: !3633)
!3645 = !{!3646}
!3646 = distinct !{!3646, !3647, !"quoting_options_from_style: argument 0"}
!3647 = distinct !{!3647, !"quoting_options_from_style"}
!3648 = !DILocation(line: 191, column: 10, scope: !3595, inlinedAt: !3633)
!3649 = !DILocation(line: 192, column: 1, scope: !3595, inlinedAt: !3633)
!3650 = !DILocation(line: 957, column: 10, scope: !3623)
!3651 = !DILocation(line: 958, column: 1, scope: !3623)
!3652 = !DILocation(line: 957, column: 3, scope: !3623)
!3653 = distinct !DISubprogram(name: "quotearg_style", scope: !199, file: !199, line: 961, type: !3654, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3656)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!43, !63, !99}
!3656 = !{!3657, !3658}
!3657 = !DILocalVariable(name: "s", arg: 1, scope: !3653, file: !199, line: 961, type: !63)
!3658 = !DILocalVariable(name: "arg", arg: 2, scope: !3653, file: !199, line: 961, type: !99)
!3659 = !DILocation(line: 187, column: 26, scope: !3595, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 948, column: 36, scope: !3586, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 963, column: 10, scope: !3653)
!3662 = !DILocation(line: 961, column: 36, scope: !3653)
!3663 = !DILocation(line: 961, column: 51, scope: !3653)
!3664 = !DILocation(line: 946, column: 23, scope: !3586, inlinedAt: !3661)
!3665 = !DILocation(line: 946, column: 45, scope: !3586, inlinedAt: !3661)
!3666 = !DILocation(line: 946, column: 60, scope: !3586, inlinedAt: !3661)
!3667 = !DILocation(line: 948, column: 3, scope: !3586, inlinedAt: !3661)
!3668 = !DILocation(line: 948, column: 32, scope: !3586, inlinedAt: !3661)
!3669 = !DILocation(line: 185, column: 48, scope: !3595, inlinedAt: !3660)
!3670 = !DILocation(line: 187, column: 3, scope: !3595, inlinedAt: !3660)
!3671 = !DILocation(line: 188, column: 13, scope: !3612, inlinedAt: !3660)
!3672 = !DILocation(line: 188, column: 7, scope: !3595, inlinedAt: !3660)
!3673 = !DILocation(line: 189, column: 5, scope: !3612, inlinedAt: !3660)
!3674 = !{!3675}
!3675 = distinct !{!3675, !3676, !"quoting_options_from_style: argument 0"}
!3676 = distinct !{!3676, !"quoting_options_from_style"}
!3677 = !DILocation(line: 191, column: 10, scope: !3595, inlinedAt: !3660)
!3678 = !DILocation(line: 192, column: 1, scope: !3595, inlinedAt: !3660)
!3679 = !DILocation(line: 949, column: 10, scope: !3586, inlinedAt: !3661)
!3680 = !DILocation(line: 950, column: 1, scope: !3586, inlinedAt: !3661)
!3681 = !DILocation(line: 963, column: 3, scope: !3653)
!3682 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !199, file: !199, line: 967, type: !3683, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3685)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!43, !63, !99, !194}
!3685 = !{!3686, !3687, !3688}
!3686 = !DILocalVariable(name: "s", arg: 1, scope: !3682, file: !199, line: 967, type: !63)
!3687 = !DILocalVariable(name: "arg", arg: 2, scope: !3682, file: !199, line: 967, type: !99)
!3688 = !DILocalVariable(name: "argsize", arg: 3, scope: !3682, file: !199, line: 967, type: !194)
!3689 = !DILocation(line: 187, column: 26, scope: !3595, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 956, column: 36, scope: !3623, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 969, column: 10, scope: !3682)
!3692 = !DILocation(line: 967, column: 40, scope: !3682)
!3693 = !DILocation(line: 967, column: 55, scope: !3682)
!3694 = !DILocation(line: 967, column: 67, scope: !3682)
!3695 = !DILocation(line: 953, column: 27, scope: !3623, inlinedAt: !3691)
!3696 = !DILocation(line: 953, column: 49, scope: !3623, inlinedAt: !3691)
!3697 = !DILocation(line: 954, column: 35, scope: !3623, inlinedAt: !3691)
!3698 = !DILocation(line: 954, column: 47, scope: !3623, inlinedAt: !3691)
!3699 = !DILocation(line: 956, column: 3, scope: !3623, inlinedAt: !3691)
!3700 = !DILocation(line: 956, column: 32, scope: !3623, inlinedAt: !3691)
!3701 = !DILocation(line: 185, column: 48, scope: !3595, inlinedAt: !3690)
!3702 = !DILocation(line: 187, column: 3, scope: !3595, inlinedAt: !3690)
!3703 = !DILocation(line: 188, column: 13, scope: !3612, inlinedAt: !3690)
!3704 = !DILocation(line: 188, column: 7, scope: !3595, inlinedAt: !3690)
!3705 = !DILocation(line: 189, column: 5, scope: !3612, inlinedAt: !3690)
!3706 = !{!3707}
!3707 = distinct !{!3707, !3708, !"quoting_options_from_style: argument 0"}
!3708 = distinct !{!3708, !"quoting_options_from_style"}
!3709 = !DILocation(line: 191, column: 10, scope: !3595, inlinedAt: !3690)
!3710 = !DILocation(line: 192, column: 1, scope: !3595, inlinedAt: !3690)
!3711 = !DILocation(line: 957, column: 10, scope: !3623, inlinedAt: !3691)
!3712 = !DILocation(line: 958, column: 1, scope: !3623, inlinedAt: !3691)
!3713 = !DILocation(line: 969, column: 3, scope: !3682)
!3714 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !199, file: !199, line: 973, type: !3715, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3717)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!43, !99, !194, !44}
!3717 = !{!3718, !3719, !3720, !3721}
!3718 = !DILocalVariable(name: "arg", arg: 1, scope: !3714, file: !199, line: 973, type: !99)
!3719 = !DILocalVariable(name: "argsize", arg: 2, scope: !3714, file: !199, line: 973, type: !194)
!3720 = !DILocalVariable(name: "ch", arg: 3, scope: !3714, file: !199, line: 973, type: !44)
!3721 = !DILocalVariable(name: "options", scope: !3714, file: !199, line: 975, type: !206)
!3722 = !DILocation(line: 973, column: 32, scope: !3714)
!3723 = !DILocation(line: 973, column: 44, scope: !3714)
!3724 = !DILocation(line: 973, column: 58, scope: !3714)
!3725 = !DILocation(line: 975, column: 3, scope: !3714)
!3726 = !DILocation(line: 976, column: 13, scope: !3714)
!3727 = !{i64 0, i64 4, !680, i64 4, i64 4, !729, i64 8, i64 32, !680, i64 40, i64 8, !658, i64 48, i64 8, !658}
!3728 = !DILocation(line: 975, column: 26, scope: !3714)
!3729 = !DILocation(line: 144, column: 43, scope: !2466, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 977, column: 3, scope: !3714)
!3731 = !DILocation(line: 144, column: 51, scope: !2466, inlinedAt: !3730)
!3732 = !DILocation(line: 144, column: 58, scope: !2466, inlinedAt: !3730)
!3733 = !DILocation(line: 146, column: 17, scope: !2466, inlinedAt: !3730)
!3734 = !DILocation(line: 148, column: 62, scope: !2466, inlinedAt: !3730)
!3735 = !DILocation(line: 148, column: 57, scope: !2466, inlinedAt: !3730)
!3736 = !DILocation(line: 147, column: 17, scope: !2466, inlinedAt: !3730)
!3737 = !DILocation(line: 149, column: 18, scope: !2466, inlinedAt: !3730)
!3738 = !DILocation(line: 149, column: 15, scope: !2466, inlinedAt: !3730)
!3739 = !DILocation(line: 149, column: 7, scope: !2466, inlinedAt: !3730)
!3740 = !DILocation(line: 150, column: 12, scope: !2466, inlinedAt: !3730)
!3741 = !DILocation(line: 150, column: 15, scope: !2466, inlinedAt: !3730)
!3742 = !DILocation(line: 150, column: 25, scope: !2466, inlinedAt: !3730)
!3743 = !DILocation(line: 150, column: 7, scope: !2466, inlinedAt: !3730)
!3744 = !DILocation(line: 151, column: 18, scope: !2466, inlinedAt: !3730)
!3745 = !DILocation(line: 151, column: 23, scope: !2466, inlinedAt: !3730)
!3746 = !DILocation(line: 151, column: 6, scope: !2466, inlinedAt: !3730)
!3747 = !DILocation(line: 978, column: 10, scope: !3714)
!3748 = !DILocation(line: 979, column: 1, scope: !3714)
!3749 = !DILocation(line: 978, column: 3, scope: !3714)
!3750 = distinct !DISubprogram(name: "quotearg_char", scope: !199, file: !199, line: 982, type: !3751, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3753)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!43, !99, !44}
!3753 = !{!3754, !3755}
!3754 = !DILocalVariable(name: "arg", arg: 1, scope: !3750, file: !199, line: 982, type: !99)
!3755 = !DILocalVariable(name: "ch", arg: 2, scope: !3750, file: !199, line: 982, type: !44)
!3756 = !DILocation(line: 982, column: 28, scope: !3750)
!3757 = !DILocation(line: 982, column: 38, scope: !3750)
!3758 = !DILocation(line: 973, column: 32, scope: !3714, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 984, column: 10, scope: !3750)
!3760 = !DILocation(line: 973, column: 44, scope: !3714, inlinedAt: !3759)
!3761 = !DILocation(line: 973, column: 58, scope: !3714, inlinedAt: !3759)
!3762 = !DILocation(line: 975, column: 3, scope: !3714, inlinedAt: !3759)
!3763 = !DILocation(line: 976, column: 13, scope: !3714, inlinedAt: !3759)
!3764 = !DILocation(line: 975, column: 26, scope: !3714, inlinedAt: !3759)
!3765 = !DILocation(line: 144, column: 43, scope: !2466, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 977, column: 3, scope: !3714, inlinedAt: !3759)
!3767 = !DILocation(line: 144, column: 51, scope: !2466, inlinedAt: !3766)
!3768 = !DILocation(line: 144, column: 58, scope: !2466, inlinedAt: !3766)
!3769 = !DILocation(line: 146, column: 17, scope: !2466, inlinedAt: !3766)
!3770 = !DILocation(line: 148, column: 62, scope: !2466, inlinedAt: !3766)
!3771 = !DILocation(line: 148, column: 57, scope: !2466, inlinedAt: !3766)
!3772 = !DILocation(line: 147, column: 17, scope: !2466, inlinedAt: !3766)
!3773 = !DILocation(line: 149, column: 18, scope: !2466, inlinedAt: !3766)
!3774 = !DILocation(line: 149, column: 15, scope: !2466, inlinedAt: !3766)
!3775 = !DILocation(line: 149, column: 7, scope: !2466, inlinedAt: !3766)
!3776 = !DILocation(line: 150, column: 12, scope: !2466, inlinedAt: !3766)
!3777 = !DILocation(line: 150, column: 15, scope: !2466, inlinedAt: !3766)
!3778 = !DILocation(line: 150, column: 25, scope: !2466, inlinedAt: !3766)
!3779 = !DILocation(line: 150, column: 7, scope: !2466, inlinedAt: !3766)
!3780 = !DILocation(line: 151, column: 18, scope: !2466, inlinedAt: !3766)
!3781 = !DILocation(line: 151, column: 23, scope: !2466, inlinedAt: !3766)
!3782 = !DILocation(line: 151, column: 6, scope: !2466, inlinedAt: !3766)
!3783 = !DILocation(line: 978, column: 10, scope: !3714, inlinedAt: !3759)
!3784 = !DILocation(line: 979, column: 1, scope: !3714, inlinedAt: !3759)
!3785 = !DILocation(line: 984, column: 3, scope: !3750)
!3786 = distinct !DISubprogram(name: "quotearg_colon", scope: !199, file: !199, line: 988, type: !3562, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3787)
!3787 = !{!3788}
!3788 = !DILocalVariable(name: "arg", arg: 1, scope: !3786, file: !199, line: 988, type: !99)
!3789 = !DILocation(line: 988, column: 29, scope: !3786)
!3790 = !DILocation(line: 982, column: 28, scope: !3750, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 990, column: 10, scope: !3786)
!3792 = !DILocation(line: 982, column: 38, scope: !3750, inlinedAt: !3791)
!3793 = !DILocation(line: 973, column: 32, scope: !3714, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 984, column: 10, scope: !3750, inlinedAt: !3791)
!3795 = !DILocation(line: 973, column: 44, scope: !3714, inlinedAt: !3794)
!3796 = !DILocation(line: 973, column: 58, scope: !3714, inlinedAt: !3794)
!3797 = !DILocation(line: 975, column: 3, scope: !3714, inlinedAt: !3794)
!3798 = !DILocation(line: 976, column: 13, scope: !3714, inlinedAt: !3794)
!3799 = !DILocation(line: 975, column: 26, scope: !3714, inlinedAt: !3794)
!3800 = !DILocation(line: 144, column: 43, scope: !2466, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 977, column: 3, scope: !3714, inlinedAt: !3794)
!3802 = !DILocation(line: 144, column: 51, scope: !2466, inlinedAt: !3801)
!3803 = !DILocation(line: 144, column: 58, scope: !2466, inlinedAt: !3801)
!3804 = !DILocation(line: 146, column: 17, scope: !2466, inlinedAt: !3801)
!3805 = !DILocation(line: 148, column: 57, scope: !2466, inlinedAt: !3801)
!3806 = !DILocation(line: 147, column: 17, scope: !2466, inlinedAt: !3801)
!3807 = !DILocation(line: 149, column: 7, scope: !2466, inlinedAt: !3801)
!3808 = !DILocation(line: 150, column: 12, scope: !2466, inlinedAt: !3801)
!3809 = !DILocation(line: 151, column: 6, scope: !2466, inlinedAt: !3801)
!3810 = !DILocation(line: 978, column: 10, scope: !3714, inlinedAt: !3794)
!3811 = !DILocation(line: 979, column: 1, scope: !3714, inlinedAt: !3794)
!3812 = !DILocation(line: 990, column: 3, scope: !3786)
!3813 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !199, file: !199, line: 994, type: !3573, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3814)
!3814 = !{!3815, !3816}
!3815 = !DILocalVariable(name: "arg", arg: 1, scope: !3813, file: !199, line: 994, type: !99)
!3816 = !DILocalVariable(name: "argsize", arg: 2, scope: !3813, file: !199, line: 994, type: !194)
!3817 = !DILocation(line: 994, column: 33, scope: !3813)
!3818 = !DILocation(line: 994, column: 45, scope: !3813)
!3819 = !DILocation(line: 973, column: 32, scope: !3714, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 996, column: 10, scope: !3813)
!3821 = !DILocation(line: 973, column: 44, scope: !3714, inlinedAt: !3820)
!3822 = !DILocation(line: 973, column: 58, scope: !3714, inlinedAt: !3820)
!3823 = !DILocation(line: 975, column: 3, scope: !3714, inlinedAt: !3820)
!3824 = !DILocation(line: 976, column: 13, scope: !3714, inlinedAt: !3820)
!3825 = !DILocation(line: 975, column: 26, scope: !3714, inlinedAt: !3820)
!3826 = !DILocation(line: 144, column: 43, scope: !2466, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 977, column: 3, scope: !3714, inlinedAt: !3820)
!3828 = !DILocation(line: 144, column: 51, scope: !2466, inlinedAt: !3827)
!3829 = !DILocation(line: 144, column: 58, scope: !2466, inlinedAt: !3827)
!3830 = !DILocation(line: 146, column: 17, scope: !2466, inlinedAt: !3827)
!3831 = !DILocation(line: 148, column: 57, scope: !2466, inlinedAt: !3827)
!3832 = !DILocation(line: 147, column: 17, scope: !2466, inlinedAt: !3827)
!3833 = !DILocation(line: 149, column: 7, scope: !2466, inlinedAt: !3827)
!3834 = !DILocation(line: 150, column: 12, scope: !2466, inlinedAt: !3827)
!3835 = !DILocation(line: 151, column: 6, scope: !2466, inlinedAt: !3827)
!3836 = !DILocation(line: 978, column: 10, scope: !3714, inlinedAt: !3820)
!3837 = !DILocation(line: 979, column: 1, scope: !3714, inlinedAt: !3820)
!3838 = !DILocation(line: 996, column: 3, scope: !3813)
!3839 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !199, file: !199, line: 1000, type: !3587, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3840)
!3840 = !{!3841, !3842, !3843, !3844}
!3841 = !DILocalVariable(name: "n", arg: 1, scope: !3839, file: !199, line: 1000, type: !34)
!3842 = !DILocalVariable(name: "s", arg: 2, scope: !3839, file: !199, line: 1000, type: !63)
!3843 = !DILocalVariable(name: "arg", arg: 3, scope: !3839, file: !199, line: 1000, type: !99)
!3844 = !DILocalVariable(name: "options", scope: !3839, file: !199, line: 1002, type: !206)
!3845 = !DILocation(line: 187, column: 26, scope: !3595, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 1003, column: 13, scope: !3839)
!3847 = !DILocation(line: 1000, column: 29, scope: !3839)
!3848 = !DILocation(line: 1000, column: 51, scope: !3839)
!3849 = !DILocation(line: 1000, column: 66, scope: !3839)
!3850 = !DILocation(line: 1002, column: 3, scope: !3839)
!3851 = !DILocation(line: 185, column: 48, scope: !3595, inlinedAt: !3846)
!3852 = !DILocation(line: 187, column: 3, scope: !3595, inlinedAt: !3846)
!3853 = !DILocation(line: 188, column: 13, scope: !3612, inlinedAt: !3846)
!3854 = !DILocation(line: 188, column: 7, scope: !3595, inlinedAt: !3846)
!3855 = !DILocation(line: 189, column: 5, scope: !3612, inlinedAt: !3846)
!3856 = !{!3857}
!3857 = distinct !{!3857, !3858, !"quoting_options_from_style: argument 0"}
!3858 = distinct !{!3858, !"quoting_options_from_style"}
!3859 = !DILocation(line: 191, column: 10, scope: !3595, inlinedAt: !3846)
!3860 = !DILocation(line: 192, column: 1, scope: !3595, inlinedAt: !3846)
!3861 = !DILocation(line: 1003, column: 13, scope: !3839)
!3862 = !DILocation(line: 1002, column: 26, scope: !3839)
!3863 = !DILocation(line: 144, column: 43, scope: !2466, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 1004, column: 3, scope: !3839)
!3865 = !DILocation(line: 144, column: 51, scope: !2466, inlinedAt: !3864)
!3866 = !DILocation(line: 144, column: 58, scope: !2466, inlinedAt: !3864)
!3867 = !DILocation(line: 146, column: 17, scope: !2466, inlinedAt: !3864)
!3868 = !DILocation(line: 148, column: 57, scope: !2466, inlinedAt: !3864)
!3869 = !DILocation(line: 147, column: 17, scope: !2466, inlinedAt: !3864)
!3870 = !DILocation(line: 149, column: 7, scope: !2466, inlinedAt: !3864)
!3871 = !DILocation(line: 150, column: 12, scope: !2466, inlinedAt: !3864)
!3872 = !DILocation(line: 151, column: 6, scope: !2466, inlinedAt: !3864)
!3873 = !DILocation(line: 1005, column: 10, scope: !3839)
!3874 = !DILocation(line: 1006, column: 1, scope: !3839)
!3875 = !DILocation(line: 1005, column: 3, scope: !3839)
!3876 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !199, file: !199, line: 1009, type: !3877, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3879)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!43, !34, !99, !99, !99}
!3879 = !{!3880, !3881, !3882, !3883}
!3880 = !DILocalVariable(name: "n", arg: 1, scope: !3876, file: !199, line: 1009, type: !34)
!3881 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3876, file: !199, line: 1009, type: !99)
!3882 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3876, file: !199, line: 1010, type: !99)
!3883 = !DILocalVariable(name: "arg", arg: 4, scope: !3876, file: !199, line: 1010, type: !99)
!3884 = !DILocation(line: 1009, column: 24, scope: !3876)
!3885 = !DILocation(line: 1009, column: 39, scope: !3876)
!3886 = !DILocation(line: 1010, column: 32, scope: !3876)
!3887 = !DILocation(line: 1010, column: 57, scope: !3876)
!3888 = !DILocalVariable(name: "n", arg: 1, scope: !3889, file: !199, line: 1017, type: !34)
!3889 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !199, file: !199, line: 1017, type: !3890, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3892)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!43, !34, !99, !99, !99, !194}
!3892 = !{!3888, !3893, !3894, !3895, !3896, !3897}
!3893 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3889, file: !199, line: 1017, type: !99)
!3894 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3889, file: !199, line: 1018, type: !99)
!3895 = !DILocalVariable(name: "arg", arg: 4, scope: !3889, file: !199, line: 1019, type: !99)
!3896 = !DILocalVariable(name: "argsize", arg: 5, scope: !3889, file: !199, line: 1019, type: !194)
!3897 = !DILocalVariable(name: "o", scope: !3889, file: !199, line: 1021, type: !206)
!3898 = !DILocation(line: 1017, column: 28, scope: !3889, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 1012, column: 10, scope: !3876)
!3900 = !DILocation(line: 1017, column: 43, scope: !3889, inlinedAt: !3899)
!3901 = !DILocation(line: 1018, column: 36, scope: !3889, inlinedAt: !3899)
!3902 = !DILocation(line: 1019, column: 36, scope: !3889, inlinedAt: !3899)
!3903 = !DILocation(line: 1019, column: 48, scope: !3889, inlinedAt: !3899)
!3904 = !DILocation(line: 1021, column: 3, scope: !3889, inlinedAt: !3899)
!3905 = !DILocation(line: 1021, column: 30, scope: !3889, inlinedAt: !3899)
!3906 = !DILocation(line: 1021, column: 26, scope: !3889, inlinedAt: !3899)
!3907 = !DILocation(line: 171, column: 45, scope: !2515, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 1022, column: 3, scope: !3889, inlinedAt: !3899)
!3909 = !DILocation(line: 172, column: 33, scope: !2515, inlinedAt: !3908)
!3910 = !DILocation(line: 172, column: 57, scope: !2515, inlinedAt: !3908)
!3911 = !DILocation(line: 176, column: 6, scope: !2515, inlinedAt: !3908)
!3912 = !DILocation(line: 176, column: 12, scope: !2515, inlinedAt: !3908)
!3913 = !DILocation(line: 177, column: 8, scope: !2531, inlinedAt: !3908)
!3914 = !DILocation(line: 177, column: 23, scope: !2531, inlinedAt: !3908)
!3915 = !DILocation(line: 177, column: 19, scope: !2531, inlinedAt: !3908)
!3916 = !DILocation(line: 178, column: 5, scope: !2531, inlinedAt: !3908)
!3917 = !DILocation(line: 179, column: 6, scope: !2515, inlinedAt: !3908)
!3918 = !DILocation(line: 179, column: 17, scope: !2515, inlinedAt: !3908)
!3919 = !DILocation(line: 180, column: 6, scope: !2515, inlinedAt: !3908)
!3920 = !DILocation(line: 180, column: 18, scope: !2515, inlinedAt: !3908)
!3921 = !DILocation(line: 1023, column: 10, scope: !3889, inlinedAt: !3899)
!3922 = !DILocation(line: 1024, column: 1, scope: !3889, inlinedAt: !3899)
!3923 = !DILocation(line: 1012, column: 3, scope: !3876)
!3924 = !DILocation(line: 1017, column: 28, scope: !3889)
!3925 = !DILocation(line: 1017, column: 43, scope: !3889)
!3926 = !DILocation(line: 1018, column: 36, scope: !3889)
!3927 = !DILocation(line: 1019, column: 36, scope: !3889)
!3928 = !DILocation(line: 1019, column: 48, scope: !3889)
!3929 = !DILocation(line: 1021, column: 3, scope: !3889)
!3930 = !DILocation(line: 1021, column: 30, scope: !3889)
!3931 = !DILocation(line: 1021, column: 26, scope: !3889)
!3932 = !DILocation(line: 171, column: 45, scope: !2515, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 1022, column: 3, scope: !3889)
!3934 = !DILocation(line: 172, column: 33, scope: !2515, inlinedAt: !3933)
!3935 = !DILocation(line: 172, column: 57, scope: !2515, inlinedAt: !3933)
!3936 = !DILocation(line: 176, column: 6, scope: !2515, inlinedAt: !3933)
!3937 = !DILocation(line: 176, column: 12, scope: !2515, inlinedAt: !3933)
!3938 = !DILocation(line: 177, column: 8, scope: !2531, inlinedAt: !3933)
!3939 = !DILocation(line: 177, column: 23, scope: !2531, inlinedAt: !3933)
!3940 = !DILocation(line: 177, column: 19, scope: !2531, inlinedAt: !3933)
!3941 = !DILocation(line: 178, column: 5, scope: !2531, inlinedAt: !3933)
!3942 = !DILocation(line: 179, column: 6, scope: !2515, inlinedAt: !3933)
!3943 = !DILocation(line: 179, column: 17, scope: !2515, inlinedAt: !3933)
!3944 = !DILocation(line: 180, column: 6, scope: !2515, inlinedAt: !3933)
!3945 = !DILocation(line: 180, column: 18, scope: !2515, inlinedAt: !3933)
!3946 = !DILocation(line: 1023, column: 10, scope: !3889)
!3947 = !DILocation(line: 1024, column: 1, scope: !3889)
!3948 = !DILocation(line: 1023, column: 3, scope: !3889)
!3949 = distinct !DISubprogram(name: "quotearg_custom", scope: !199, file: !199, line: 1027, type: !3950, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3952)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!43, !99, !99, !99}
!3952 = !{!3953, !3954, !3955}
!3953 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3949, file: !199, line: 1027, type: !99)
!3954 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3949, file: !199, line: 1027, type: !99)
!3955 = !DILocalVariable(name: "arg", arg: 3, scope: !3949, file: !199, line: 1028, type: !99)
!3956 = !DILocation(line: 1027, column: 30, scope: !3949)
!3957 = !DILocation(line: 1027, column: 54, scope: !3949)
!3958 = !DILocation(line: 1028, column: 30, scope: !3949)
!3959 = !DILocation(line: 1009, column: 24, scope: !3876, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 1030, column: 10, scope: !3949)
!3961 = !DILocation(line: 1009, column: 39, scope: !3876, inlinedAt: !3960)
!3962 = !DILocation(line: 1010, column: 32, scope: !3876, inlinedAt: !3960)
!3963 = !DILocation(line: 1010, column: 57, scope: !3876, inlinedAt: !3960)
!3964 = !DILocation(line: 1017, column: 28, scope: !3889, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 1012, column: 10, scope: !3876, inlinedAt: !3960)
!3966 = !DILocation(line: 1017, column: 43, scope: !3889, inlinedAt: !3965)
!3967 = !DILocation(line: 1018, column: 36, scope: !3889, inlinedAt: !3965)
!3968 = !DILocation(line: 1019, column: 36, scope: !3889, inlinedAt: !3965)
!3969 = !DILocation(line: 1019, column: 48, scope: !3889, inlinedAt: !3965)
!3970 = !DILocation(line: 1021, column: 3, scope: !3889, inlinedAt: !3965)
!3971 = !DILocation(line: 1021, column: 30, scope: !3889, inlinedAt: !3965)
!3972 = !DILocation(line: 1021, column: 26, scope: !3889, inlinedAt: !3965)
!3973 = !DILocation(line: 171, column: 45, scope: !2515, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 1022, column: 3, scope: !3889, inlinedAt: !3965)
!3975 = !DILocation(line: 172, column: 33, scope: !2515, inlinedAt: !3974)
!3976 = !DILocation(line: 172, column: 57, scope: !2515, inlinedAt: !3974)
!3977 = !DILocation(line: 176, column: 6, scope: !2515, inlinedAt: !3974)
!3978 = !DILocation(line: 176, column: 12, scope: !2515, inlinedAt: !3974)
!3979 = !DILocation(line: 177, column: 8, scope: !2531, inlinedAt: !3974)
!3980 = !DILocation(line: 177, column: 23, scope: !2531, inlinedAt: !3974)
!3981 = !DILocation(line: 177, column: 19, scope: !2531, inlinedAt: !3974)
!3982 = !DILocation(line: 178, column: 5, scope: !2531, inlinedAt: !3974)
!3983 = !DILocation(line: 179, column: 6, scope: !2515, inlinedAt: !3974)
!3984 = !DILocation(line: 179, column: 17, scope: !2515, inlinedAt: !3974)
!3985 = !DILocation(line: 180, column: 6, scope: !2515, inlinedAt: !3974)
!3986 = !DILocation(line: 180, column: 18, scope: !2515, inlinedAt: !3974)
!3987 = !DILocation(line: 1023, column: 10, scope: !3889, inlinedAt: !3965)
!3988 = !DILocation(line: 1024, column: 1, scope: !3889, inlinedAt: !3965)
!3989 = !DILocation(line: 1030, column: 3, scope: !3949)
!3990 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !199, file: !199, line: 1034, type: !3991, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !3993)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!43, !99, !99, !99, !194}
!3993 = !{!3994, !3995, !3996, !3997}
!3994 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3990, file: !199, line: 1034, type: !99)
!3995 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3990, file: !199, line: 1034, type: !99)
!3996 = !DILocalVariable(name: "arg", arg: 3, scope: !3990, file: !199, line: 1035, type: !99)
!3997 = !DILocalVariable(name: "argsize", arg: 4, scope: !3990, file: !199, line: 1035, type: !194)
!3998 = !DILocation(line: 1034, column: 34, scope: !3990)
!3999 = !DILocation(line: 1034, column: 58, scope: !3990)
!4000 = !DILocation(line: 1035, column: 34, scope: !3990)
!4001 = !DILocation(line: 1035, column: 46, scope: !3990)
!4002 = !DILocation(line: 1017, column: 28, scope: !3889, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 1037, column: 10, scope: !3990)
!4004 = !DILocation(line: 1017, column: 43, scope: !3889, inlinedAt: !4003)
!4005 = !DILocation(line: 1018, column: 36, scope: !3889, inlinedAt: !4003)
!4006 = !DILocation(line: 1019, column: 36, scope: !3889, inlinedAt: !4003)
!4007 = !DILocation(line: 1019, column: 48, scope: !3889, inlinedAt: !4003)
!4008 = !DILocation(line: 1021, column: 3, scope: !3889, inlinedAt: !4003)
!4009 = !DILocation(line: 1021, column: 30, scope: !3889, inlinedAt: !4003)
!4010 = !DILocation(line: 1021, column: 26, scope: !3889, inlinedAt: !4003)
!4011 = !DILocation(line: 171, column: 45, scope: !2515, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 1022, column: 3, scope: !3889, inlinedAt: !4003)
!4013 = !DILocation(line: 172, column: 33, scope: !2515, inlinedAt: !4012)
!4014 = !DILocation(line: 172, column: 57, scope: !2515, inlinedAt: !4012)
!4015 = !DILocation(line: 176, column: 6, scope: !2515, inlinedAt: !4012)
!4016 = !DILocation(line: 176, column: 12, scope: !2515, inlinedAt: !4012)
!4017 = !DILocation(line: 177, column: 8, scope: !2531, inlinedAt: !4012)
!4018 = !DILocation(line: 177, column: 23, scope: !2531, inlinedAt: !4012)
!4019 = !DILocation(line: 177, column: 19, scope: !2531, inlinedAt: !4012)
!4020 = !DILocation(line: 178, column: 5, scope: !2531, inlinedAt: !4012)
!4021 = !DILocation(line: 179, column: 6, scope: !2515, inlinedAt: !4012)
!4022 = !DILocation(line: 179, column: 17, scope: !2515, inlinedAt: !4012)
!4023 = !DILocation(line: 180, column: 6, scope: !2515, inlinedAt: !4012)
!4024 = !DILocation(line: 180, column: 18, scope: !2515, inlinedAt: !4012)
!4025 = !DILocation(line: 1023, column: 10, scope: !3889, inlinedAt: !4003)
!4026 = !DILocation(line: 1024, column: 1, scope: !3889, inlinedAt: !4003)
!4027 = !DILocation(line: 1037, column: 3, scope: !3990)
!4028 = distinct !DISubprogram(name: "quote_n_mem", scope: !199, file: !199, line: 1052, type: !4029, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !4031)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!99, !34, !99, !194}
!4031 = !{!4032, !4033, !4034}
!4032 = !DILocalVariable(name: "n", arg: 1, scope: !4028, file: !199, line: 1052, type: !34)
!4033 = !DILocalVariable(name: "arg", arg: 2, scope: !4028, file: !199, line: 1052, type: !99)
!4034 = !DILocalVariable(name: "argsize", arg: 3, scope: !4028, file: !199, line: 1052, type: !194)
!4035 = !DILocation(line: 1052, column: 18, scope: !4028)
!4036 = !DILocation(line: 1052, column: 33, scope: !4028)
!4037 = !DILocation(line: 1052, column: 45, scope: !4028)
!4038 = !DILocation(line: 1054, column: 10, scope: !4028)
!4039 = !DILocation(line: 1054, column: 3, scope: !4028)
!4040 = distinct !DISubprogram(name: "quote_mem", scope: !199, file: !199, line: 1058, type: !4041, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !4043)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!99, !99, !194}
!4043 = !{!4044, !4045}
!4044 = !DILocalVariable(name: "arg", arg: 1, scope: !4040, file: !199, line: 1058, type: !99)
!4045 = !DILocalVariable(name: "argsize", arg: 2, scope: !4040, file: !199, line: 1058, type: !194)
!4046 = !DILocation(line: 1058, column: 24, scope: !4040)
!4047 = !DILocation(line: 1058, column: 36, scope: !4040)
!4048 = !DILocation(line: 1052, column: 18, scope: !4028, inlinedAt: !4049)
!4049 = distinct !DILocation(line: 1060, column: 10, scope: !4040)
!4050 = !DILocation(line: 1052, column: 33, scope: !4028, inlinedAt: !4049)
!4051 = !DILocation(line: 1052, column: 45, scope: !4028, inlinedAt: !4049)
!4052 = !DILocation(line: 1054, column: 10, scope: !4028, inlinedAt: !4049)
!4053 = !DILocation(line: 1060, column: 3, scope: !4040)
!4054 = distinct !DISubprogram(name: "quote_n", scope: !199, file: !199, line: 1064, type: !4055, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !4057)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!99, !34, !99}
!4057 = !{!4058, !4059}
!4058 = !DILocalVariable(name: "n", arg: 1, scope: !4054, file: !199, line: 1064, type: !34)
!4059 = !DILocalVariable(name: "arg", arg: 2, scope: !4054, file: !199, line: 1064, type: !99)
!4060 = !DILocation(line: 1064, column: 14, scope: !4054)
!4061 = !DILocation(line: 1064, column: 29, scope: !4054)
!4062 = !DILocation(line: 1052, column: 18, scope: !4028, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 1066, column: 10, scope: !4054)
!4064 = !DILocation(line: 1052, column: 33, scope: !4028, inlinedAt: !4063)
!4065 = !DILocation(line: 1052, column: 45, scope: !4028, inlinedAt: !4063)
!4066 = !DILocation(line: 1054, column: 10, scope: !4028, inlinedAt: !4063)
!4067 = !DILocation(line: 1066, column: 3, scope: !4054)
!4068 = distinct !DISubprogram(name: "quote", scope: !199, file: !199, line: 1070, type: !4069, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !169, variables: !4071)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!99, !99}
!4071 = !{!4072}
!4072 = !DILocalVariable(name: "arg", arg: 1, scope: !4068, file: !199, line: 1070, type: !99)
!4073 = !DILocation(line: 1070, column: 20, scope: !4068)
!4074 = !DILocation(line: 1064, column: 14, scope: !4054, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 1072, column: 10, scope: !4068)
!4076 = !DILocation(line: 1064, column: 29, scope: !4054, inlinedAt: !4075)
!4077 = !DILocation(line: 1052, column: 18, scope: !4028, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 1066, column: 10, scope: !4054, inlinedAt: !4075)
!4079 = !DILocation(line: 1052, column: 33, scope: !4028, inlinedAt: !4078)
!4080 = !DILocation(line: 1052, column: 45, scope: !4028, inlinedAt: !4078)
!4081 = !DILocation(line: 1054, column: 10, scope: !4028, inlinedAt: !4078)
!4082 = !DILocation(line: 1072, column: 3, scope: !4068)
!4083 = distinct !DISubprogram(name: "strintcmp", scope: !4084, file: !4084, line: 29, type: !4085, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !4087)
!4084 = !DIFile(filename: "lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!34, !99, !99}
!4087 = !{!4088, !4089}
!4088 = !DILocalVariable(name: "a", arg: 1, scope: !4083, file: !4084, line: 29, type: !99)
!4089 = !DILocalVariable(name: "b", arg: 2, scope: !4083, file: !4084, line: 29, type: !99)
!4090 = !DILocation(line: 29, column: 24, scope: !4083)
!4091 = !DILocation(line: 29, column: 39, scope: !4083)
!4092 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !4093, file: !4094, line: 115, type: !34)
!4093 = distinct !DISubprogram(name: "numcompare", scope: !4094, file: !4094, line: 114, type: !4095, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !4097)
!4094 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!34, !99, !99, !34, !34}
!4097 = !{!4098, !4099, !4092, !4100, !4101, !4102, !4103, !4104, !4105}
!4098 = !DILocalVariable(name: "a", arg: 1, scope: !4093, file: !4094, line: 114, type: !99)
!4099 = !DILocalVariable(name: "b", arg: 2, scope: !4093, file: !4094, line: 114, type: !99)
!4100 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !4093, file: !4094, line: 115, type: !34)
!4101 = !DILocalVariable(name: "tmpa", scope: !4093, file: !4094, line: 117, type: !102)
!4102 = !DILocalVariable(name: "tmpb", scope: !4093, file: !4094, line: 118, type: !102)
!4103 = !DILocalVariable(name: "tmp", scope: !4093, file: !4094, line: 119, type: !34)
!4104 = !DILocalVariable(name: "log_a", scope: !4093, file: !4094, line: 120, type: !194)
!4105 = !DILocalVariable(name: "log_b", scope: !4093, file: !4094, line: 121, type: !194)
!4106 = !DILocation(line: 115, column: 17, scope: !4093, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 31, column: 10, scope: !4083)
!4108 = !DILocation(line: 115, column: 36, scope: !4093, inlinedAt: !4107)
!4109 = !DILocation(line: 117, column: 24, scope: !4093, inlinedAt: !4107)
!4110 = !DILocation(line: 117, column: 17, scope: !4093, inlinedAt: !4107)
!4111 = !DILocation(line: 118, column: 24, scope: !4093, inlinedAt: !4107)
!4112 = !DILocation(line: 118, column: 17, scope: !4093, inlinedAt: !4107)
!4113 = !DILocation(line: 123, column: 12, scope: !4114, inlinedAt: !4107)
!4114 = distinct !DILexicalBlock(scope: !4093, file: !4094, line: 123, column: 7)
!4115 = !DILocation(line: 123, column: 7, scope: !4093, inlinedAt: !4107)
!4116 = distinct !{!4116, !4117, !4119}
!4117 = !DILocation(line: 125, column: 7, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4114, file: !4094, line: 124, column: 5)
!4119 = !DILocation(line: 127, column: 59, scope: !4118)
!4120 = !DILocation(line: 126, column: 17, scope: !4118, inlinedAt: !4107)
!4121 = !DILocation(line: 114, column: 25, scope: !4093, inlinedAt: !4107)
!4122 = !DILocation(line: 126, column: 16, scope: !4118, inlinedAt: !4107)
!4123 = !DILocation(line: 127, column: 19, scope: !4118, inlinedAt: !4107)
!4124 = !DILocation(line: 127, column: 35, scope: !4118, inlinedAt: !4107)
!4125 = !DILocation(line: 128, column: 16, scope: !4126, inlinedAt: !4107)
!4126 = distinct !DILexicalBlock(scope: !4118, file: !4094, line: 128, column: 11)
!4127 = !DILocation(line: 128, column: 11, scope: !4118, inlinedAt: !4107)
!4128 = distinct !{!4128, !4129, !4130}
!4129 = !DILocation(line: 144, column: 7, scope: !4118)
!4130 = !DILocation(line: 146, column: 59, scope: !4118)
!4131 = !DILocation(line: 145, column: 17, scope: !4118, inlinedAt: !4107)
!4132 = !DILocation(line: 134, column: 15, scope: !4133, inlinedAt: !4107)
!4133 = distinct !DILexicalBlock(scope: !4134, file: !4094, line: 134, column: 15)
!4134 = distinct !DILexicalBlock(scope: !4126, file: !4094, line: 129, column: 9)
!4135 = !DILocation(line: 134, column: 15, scope: !4134, inlinedAt: !4107)
!4136 = !DILocation(line: 114, column: 40, scope: !4093, inlinedAt: !4107)
!4137 = !DILocation(line: 136, column: 23, scope: !4134, inlinedAt: !4107)
!4138 = !DILocation(line: 136, column: 39, scope: !4134, inlinedAt: !4107)
!4139 = !DILocation(line: 137, column: 21, scope: !4134, inlinedAt: !4107)
!4140 = !DILocation(line: 137, column: 20, scope: !4134, inlinedAt: !4107)
!4141 = distinct !{!4141, !4142, !4143}
!4142 = !DILocation(line: 136, column: 11, scope: !4134)
!4143 = !DILocation(line: 137, column: 23, scope: !4134)
!4144 = !DILocation(line: 142, column: 20, scope: !4134, inlinedAt: !4107)
!4145 = !DILocation(line: 142, column: 18, scope: !4134, inlinedAt: !4107)
!4146 = !DILocation(line: 142, column: 11, scope: !4134, inlinedAt: !4107)
!4147 = !DILocation(line: 145, column: 16, scope: !4118, inlinedAt: !4107)
!4148 = !DILocation(line: 146, column: 19, scope: !4118, inlinedAt: !4107)
!4149 = !DILocation(line: 146, column: 35, scope: !4118, inlinedAt: !4107)
!4150 = !DILocation(line: 148, column: 14, scope: !4118, inlinedAt: !4107)
!4151 = !DILocation(line: 148, column: 19, scope: !4118, inlinedAt: !4107)
!4152 = !DILocation(line: 148, column: 30, scope: !4118, inlinedAt: !4107)
!4153 = !DILocation(line: 148, column: 27, scope: !4118, inlinedAt: !4107)
!4154 = !DILocation(line: 151, column: 21, scope: !4155, inlinedAt: !4107)
!4155 = distinct !DILexicalBlock(scope: !4118, file: !4094, line: 149, column: 9)
!4156 = !DILocation(line: 151, column: 20, scope: !4155, inlinedAt: !4107)
!4157 = !DILocation(line: 154, column: 21, scope: !4155, inlinedAt: !4107)
!4158 = !DILocation(line: 154, column: 20, scope: !4155, inlinedAt: !4107)
!4159 = distinct !{!4159, !4160, !4161}
!4160 = !DILocation(line: 148, column: 7, scope: !4118)
!4161 = !DILocation(line: 156, column: 9, scope: !4118)
!4162 = !DILocation(line: 148, column: 22, scope: !4118, inlinedAt: !4107)
!4163 = !DILocation(line: 162, column: 18, scope: !4118, inlinedAt: !4107)
!4164 = !DILocation(line: 119, column: 7, scope: !4093, inlinedAt: !4107)
!4165 = !DILocation(line: 120, column: 10, scope: !4093, inlinedAt: !4107)
!4166 = !DILocation(line: 164, column: 23, scope: !4167, inlinedAt: !4107)
!4167 = distinct !DILexicalBlock(scope: !4168, file: !4094, line: 164, column: 7)
!4168 = distinct !DILexicalBlock(scope: !4118, file: !4094, line: 164, column: 7)
!4169 = !DILocation(line: 164, column: 7, scope: !4168, inlinedAt: !4107)
!4170 = !DILocation(line: 166, column: 19, scope: !4167, inlinedAt: !4107)
!4171 = !DILocation(line: 166, column: 18, scope: !4167, inlinedAt: !4107)
!4172 = !DILocation(line: 164, column: 39, scope: !4167, inlinedAt: !4107)
!4173 = distinct !{!4173, !4174, !4175}
!4174 = !DILocation(line: 164, column: 7, scope: !4168)
!4175 = !DILocation(line: 167, column: 37, scope: !4168)
!4176 = !DILocation(line: 121, column: 10, scope: !4093, inlinedAt: !4107)
!4177 = !DILocation(line: 169, column: 23, scope: !4178, inlinedAt: !4107)
!4178 = distinct !DILexicalBlock(scope: !4179, file: !4094, line: 169, column: 7)
!4179 = distinct !DILexicalBlock(scope: !4118, file: !4094, line: 169, column: 7)
!4180 = !DILocation(line: 169, column: 7, scope: !4179, inlinedAt: !4107)
!4181 = !DILocation(line: 171, column: 19, scope: !4178, inlinedAt: !4107)
!4182 = !DILocation(line: 171, column: 18, scope: !4178, inlinedAt: !4107)
!4183 = !DILocation(line: 169, column: 39, scope: !4178, inlinedAt: !4107)
!4184 = distinct !{!4184, !4185, !4186}
!4185 = !DILocation(line: 169, column: 7, scope: !4179)
!4186 = !DILocation(line: 172, column: 37, scope: !4179)
!4187 = !DILocation(line: 174, column: 17, scope: !4188, inlinedAt: !4107)
!4188 = distinct !DILexicalBlock(scope: !4118, file: !4094, line: 174, column: 11)
!4189 = !DILocation(line: 174, column: 11, scope: !4118, inlinedAt: !4107)
!4190 = !DILocation(line: 175, column: 22, scope: !4188, inlinedAt: !4107)
!4191 = !DILocation(line: 175, column: 16, scope: !4188, inlinedAt: !4107)
!4192 = !DILocation(line: 175, column: 9, scope: !4188, inlinedAt: !4107)
!4193 = !DILocation(line: 177, column: 12, scope: !4194, inlinedAt: !4107)
!4194 = distinct !DILexicalBlock(scope: !4118, file: !4094, line: 177, column: 11)
!4195 = !DILocation(line: 178, column: 9, scope: !4194, inlinedAt: !4107)
!4196 = !DILocation(line: 182, column: 17, scope: !4197, inlinedAt: !4107)
!4197 = distinct !DILexicalBlock(scope: !4114, file: !4094, line: 182, column: 12)
!4198 = !DILocation(line: 182, column: 12, scope: !4114, inlinedAt: !4107)
!4199 = distinct !{!4199, !4200, !4202}
!4200 = !DILocation(line: 184, column: 7, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4197, file: !4094, line: 183, column: 5)
!4202 = !DILocation(line: 186, column: 59, scope: !4201)
!4203 = !DILocation(line: 185, column: 17, scope: !4201, inlinedAt: !4107)
!4204 = !DILocation(line: 185, column: 16, scope: !4201, inlinedAt: !4107)
!4205 = !DILocation(line: 186, column: 19, scope: !4201, inlinedAt: !4107)
!4206 = !DILocation(line: 186, column: 35, scope: !4201, inlinedAt: !4107)
!4207 = !DILocation(line: 191, column: 11, scope: !4208, inlinedAt: !4107)
!4208 = distinct !DILexicalBlock(scope: !4201, file: !4094, line: 191, column: 11)
!4209 = !DILocation(line: 191, column: 11, scope: !4201, inlinedAt: !4107)
!4210 = !DILocation(line: 193, column: 19, scope: !4201, inlinedAt: !4107)
!4211 = !DILocation(line: 193, column: 35, scope: !4201, inlinedAt: !4107)
!4212 = !DILocation(line: 194, column: 17, scope: !4201, inlinedAt: !4107)
!4213 = !DILocation(line: 194, column: 16, scope: !4201, inlinedAt: !4107)
!4214 = distinct !{!4214, !4215, !4216}
!4215 = !DILocation(line: 193, column: 7, scope: !4201)
!4216 = !DILocation(line: 194, column: 19, scope: !4201)
!4217 = !DILocation(line: 199, column: 14, scope: !4201, inlinedAt: !4107)
!4218 = !DILocation(line: 199, column: 7, scope: !4201, inlinedAt: !4107)
!4219 = !DILocation(line: 203, column: 19, scope: !4220, inlinedAt: !4107)
!4220 = distinct !DILexicalBlock(scope: !4197, file: !4094, line: 202, column: 5)
!4221 = !DILocation(line: 203, column: 35, scope: !4220, inlinedAt: !4107)
!4222 = !DILocation(line: 204, column: 17, scope: !4220, inlinedAt: !4107)
!4223 = !DILocation(line: 204, column: 16, scope: !4220, inlinedAt: !4107)
!4224 = distinct !{!4224, !4225, !4226}
!4225 = !DILocation(line: 203, column: 7, scope: !4220)
!4226 = !DILocation(line: 204, column: 19, scope: !4220)
!4227 = !DILocation(line: 205, column: 19, scope: !4220, inlinedAt: !4107)
!4228 = !DILocation(line: 205, column: 35, scope: !4220, inlinedAt: !4107)
!4229 = !DILocation(line: 206, column: 17, scope: !4220, inlinedAt: !4107)
!4230 = !DILocation(line: 206, column: 16, scope: !4220, inlinedAt: !4107)
!4231 = distinct !{!4231, !4232, !4233}
!4232 = !DILocation(line: 205, column: 7, scope: !4220)
!4233 = !DILocation(line: 206, column: 19, scope: !4220)
!4234 = !DILocation(line: 208, column: 14, scope: !4220, inlinedAt: !4107)
!4235 = !DILocation(line: 208, column: 19, scope: !4220, inlinedAt: !4107)
!4236 = !DILocation(line: 208, column: 30, scope: !4220, inlinedAt: !4107)
!4237 = !DILocation(line: 208, column: 27, scope: !4220, inlinedAt: !4107)
!4238 = !DILocation(line: 211, column: 21, scope: !4239, inlinedAt: !4107)
!4239 = distinct !DILexicalBlock(scope: !4220, file: !4094, line: 209, column: 9)
!4240 = !DILocation(line: 211, column: 20, scope: !4239, inlinedAt: !4107)
!4241 = !DILocation(line: 214, column: 21, scope: !4239, inlinedAt: !4107)
!4242 = !DILocation(line: 214, column: 20, scope: !4239, inlinedAt: !4107)
!4243 = distinct !{!4243, !4244, !4245}
!4244 = !DILocation(line: 208, column: 7, scope: !4220)
!4245 = !DILocation(line: 216, column: 9, scope: !4220)
!4246 = !DILocation(line: 208, column: 22, scope: !4220, inlinedAt: !4107)
!4247 = !DILocation(line: 222, column: 18, scope: !4220, inlinedAt: !4107)
!4248 = !DILocation(line: 224, column: 23, scope: !4249, inlinedAt: !4107)
!4249 = distinct !DILexicalBlock(scope: !4250, file: !4094, line: 224, column: 7)
!4250 = distinct !DILexicalBlock(scope: !4220, file: !4094, line: 224, column: 7)
!4251 = !DILocation(line: 224, column: 7, scope: !4250, inlinedAt: !4107)
!4252 = !DILocation(line: 226, column: 19, scope: !4249, inlinedAt: !4107)
!4253 = !DILocation(line: 226, column: 18, scope: !4249, inlinedAt: !4107)
!4254 = !DILocation(line: 224, column: 39, scope: !4249, inlinedAt: !4107)
!4255 = distinct !{!4255, !4256, !4257}
!4256 = !DILocation(line: 224, column: 7, scope: !4250)
!4257 = !DILocation(line: 227, column: 37, scope: !4250)
!4258 = !DILocation(line: 229, column: 23, scope: !4259, inlinedAt: !4107)
!4259 = distinct !DILexicalBlock(scope: !4260, file: !4094, line: 229, column: 7)
!4260 = distinct !DILexicalBlock(scope: !4220, file: !4094, line: 229, column: 7)
!4261 = !DILocation(line: 229, column: 7, scope: !4260, inlinedAt: !4107)
!4262 = !DILocation(line: 231, column: 19, scope: !4259, inlinedAt: !4107)
!4263 = !DILocation(line: 231, column: 18, scope: !4259, inlinedAt: !4107)
!4264 = !DILocation(line: 229, column: 39, scope: !4259, inlinedAt: !4107)
!4265 = distinct !{!4265, !4266, !4267}
!4266 = !DILocation(line: 229, column: 7, scope: !4260)
!4267 = !DILocation(line: 232, column: 37, scope: !4260)
!4268 = !DILocation(line: 234, column: 17, scope: !4269, inlinedAt: !4107)
!4269 = distinct !DILexicalBlock(scope: !4220, file: !4094, line: 234, column: 11)
!4270 = !DILocation(line: 234, column: 11, scope: !4220, inlinedAt: !4107)
!4271 = !DILocation(line: 235, column: 22, scope: !4269, inlinedAt: !4107)
!4272 = !DILocation(line: 235, column: 16, scope: !4269, inlinedAt: !4107)
!4273 = !DILocation(line: 235, column: 9, scope: !4269, inlinedAt: !4107)
!4274 = !DILocation(line: 237, column: 12, scope: !4275, inlinedAt: !4107)
!4275 = distinct !DILexicalBlock(scope: !4220, file: !4094, line: 237, column: 11)
!4276 = !DILocation(line: 238, column: 9, scope: !4275, inlinedAt: !4107)
!4277 = !DILocation(line: 31, column: 3, scope: !4083)
!4278 = distinct !DISubprogram(name: "version_etc_arn", scope: !602, file: !602, line: 62, type: !4279, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !598, variables: !4334)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{null, !4281, !99, !99, !99, !4333, !194}
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4283, line: 7, baseType: !4284)
!4283 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4285, line: 241, size: 1728, elements: !4286)
!4285 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4286 = !{!4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4307, !4308, !4309, !4310, !4313, !4314, !4316, !4318, !4321, !4323, !4324, !4325, !4326, !4327, !4328, !4329}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4284, file: !4285, line: 242, baseType: !34, size: 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4284, file: !4285, line: 247, baseType: !43, size: 64, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4284, file: !4285, line: 248, baseType: !43, size: 64, offset: 128)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4284, file: !4285, line: 249, baseType: !43, size: 64, offset: 192)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4284, file: !4285, line: 250, baseType: !43, size: 64, offset: 256)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4284, file: !4285, line: 251, baseType: !43, size: 64, offset: 320)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4284, file: !4285, line: 252, baseType: !43, size: 64, offset: 384)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4284, file: !4285, line: 253, baseType: !43, size: 64, offset: 448)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4284, file: !4285, line: 254, baseType: !43, size: 64, offset: 512)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4284, file: !4285, line: 256, baseType: !43, size: 64, offset: 576)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4284, file: !4285, line: 257, baseType: !43, size: 64, offset: 640)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4284, file: !4285, line: 258, baseType: !43, size: 64, offset: 704)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4284, file: !4285, line: 260, baseType: !4300, size: 64, offset: 768)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4285, line: 156, size: 192, elements: !4302)
!4302 = !{!4303, !4304, !4306}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4301, file: !4285, line: 157, baseType: !4300, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4301, file: !4285, line: 158, baseType: !4305, size: 64, offset: 64)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4301, file: !4285, line: 162, baseType: !34, size: 32, offset: 128)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4284, file: !4285, line: 262, baseType: !4305, size: 64, offset: 832)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4284, file: !4285, line: 264, baseType: !34, size: 32, offset: 896)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4284, file: !4285, line: 268, baseType: !34, size: 32, offset: 928)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4284, file: !4285, line: 270, baseType: !4311, size: 64, offset: 960)
!4311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !4312, line: 140, baseType: !1907)
!4312 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4284, file: !4285, line: 274, baseType: !193, size: 16, offset: 1024)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4284, file: !4285, line: 275, baseType: !4315, size: 8, offset: 1040)
!4315 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4284, file: !4285, line: 276, baseType: !4317, size: 8, offset: 1048)
!4317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8, elements: !40)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4284, file: !4285, line: 280, baseType: !4319, size: 64, offset: 1088)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !4285, line: 150, baseType: null)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4284, file: !4285, line: 289, baseType: !4322, size: 64, offset: 1152)
!4322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !4312, line: 141, baseType: !1907)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4284, file: !4285, line: 297, baseType: !101, size: 64, offset: 1216)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4284, file: !4285, line: 298, baseType: !101, size: 64, offset: 1280)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4284, file: !4285, line: 299, baseType: !101, size: 64, offset: 1344)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4284, file: !4285, line: 300, baseType: !101, size: 64, offset: 1408)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4284, file: !4285, line: 302, baseType: !194, size: 64, offset: 1472)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4284, file: !4285, line: 303, baseType: !34, size: 32, offset: 1536)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4284, file: !4285, line: 305, baseType: !4330, size: 160, offset: 1568)
!4330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 160, elements: !4331)
!4331 = !{!4332}
!4332 = !DISubrange(count: 20)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!4334 = !{!4335, !4336, !4337, !4338, !4339, !4340}
!4335 = !DILocalVariable(name: "stream", arg: 1, scope: !4278, file: !602, line: 62, type: !4281)
!4336 = !DILocalVariable(name: "command_name", arg: 2, scope: !4278, file: !602, line: 63, type: !99)
!4337 = !DILocalVariable(name: "package", arg: 3, scope: !4278, file: !602, line: 63, type: !99)
!4338 = !DILocalVariable(name: "version", arg: 4, scope: !4278, file: !602, line: 64, type: !99)
!4339 = !DILocalVariable(name: "authors", arg: 5, scope: !4278, file: !602, line: 65, type: !4333)
!4340 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4278, file: !602, line: 65, type: !194)
!4341 = !DILocation(line: 62, column: 24, scope: !4278)
!4342 = !DILocation(line: 63, column: 30, scope: !4278)
!4343 = !DILocation(line: 63, column: 56, scope: !4278)
!4344 = !DILocation(line: 64, column: 30, scope: !4278)
!4345 = !DILocation(line: 65, column: 39, scope: !4278)
!4346 = !DILocation(line: 65, column: 55, scope: !4278)
!4347 = !DILocation(line: 67, column: 7, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4278, file: !602, line: 67, column: 7)
!4349 = !DILocation(line: 67, column: 7, scope: !4278)
!4350 = !DILocation(line: 68, column: 5, scope: !4348)
!4351 = !DILocation(line: 70, column: 5, scope: !4348)
!4352 = !DILocation(line: 84, column: 3, scope: !4278)
!4353 = !DILocation(line: 86, column: 3, scope: !4278)
!4354 = !DILocation(line: 95, column: 3, scope: !4278)
!4355 = !DILocation(line: 99, column: 7, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4278, file: !602, line: 96, column: 5)
!4357 = !DILocation(line: 102, column: 7, scope: !4356)
!4358 = !DILocation(line: 103, column: 7, scope: !4356)
!4359 = !DILocation(line: 106, column: 7, scope: !4356)
!4360 = !DILocation(line: 107, column: 7, scope: !4356)
!4361 = !DILocation(line: 110, column: 7, scope: !4356)
!4362 = !DILocation(line: 112, column: 7, scope: !4356)
!4363 = !DILocation(line: 117, column: 7, scope: !4356)
!4364 = !DILocation(line: 119, column: 7, scope: !4356)
!4365 = !DILocation(line: 124, column: 7, scope: !4356)
!4366 = !DILocation(line: 126, column: 7, scope: !4356)
!4367 = !DILocation(line: 131, column: 7, scope: !4356)
!4368 = !DILocation(line: 134, column: 7, scope: !4356)
!4369 = !DILocation(line: 139, column: 7, scope: !4356)
!4370 = !DILocation(line: 142, column: 7, scope: !4356)
!4371 = !DILocation(line: 147, column: 7, scope: !4356)
!4372 = !DILocation(line: 151, column: 7, scope: !4356)
!4373 = !DILocation(line: 156, column: 7, scope: !4356)
!4374 = !DILocation(line: 160, column: 7, scope: !4356)
!4375 = !DILocation(line: 167, column: 7, scope: !4356)
!4376 = !DILocation(line: 171, column: 7, scope: !4356)
!4377 = !DILocation(line: 173, column: 1, scope: !4278)
!4378 = distinct !DISubprogram(name: "version_etc_ar", scope: !602, file: !602, line: 180, type: !4379, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !598, variables: !4381)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{null, !4281, !99, !99, !99, !4333}
!4381 = !{!4382, !4383, !4384, !4385, !4386, !4387}
!4382 = !DILocalVariable(name: "stream", arg: 1, scope: !4378, file: !602, line: 180, type: !4281)
!4383 = !DILocalVariable(name: "command_name", arg: 2, scope: !4378, file: !602, line: 181, type: !99)
!4384 = !DILocalVariable(name: "package", arg: 3, scope: !4378, file: !602, line: 181, type: !99)
!4385 = !DILocalVariable(name: "version", arg: 4, scope: !4378, file: !602, line: 182, type: !99)
!4386 = !DILocalVariable(name: "authors", arg: 5, scope: !4378, file: !602, line: 182, type: !4333)
!4387 = !DILocalVariable(name: "n_authors", scope: !4378, file: !602, line: 184, type: !194)
!4388 = !DILocation(line: 180, column: 23, scope: !4378)
!4389 = !DILocation(line: 181, column: 29, scope: !4378)
!4390 = !DILocation(line: 181, column: 55, scope: !4378)
!4391 = !DILocation(line: 182, column: 29, scope: !4378)
!4392 = !DILocation(line: 182, column: 59, scope: !4378)
!4393 = !DILocation(line: 184, column: 10, scope: !4378)
!4394 = !DILocation(line: 186, column: 8, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4378, file: !602, line: 186, column: 3)
!4396 = !DILocation(line: 186, column: 23, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4395, file: !602, line: 186, column: 3)
!4398 = !DILocation(line: 186, column: 3, scope: !4395)
!4399 = !DILocation(line: 186, column: 52, scope: !4397)
!4400 = distinct !{!4400, !4398, !4401}
!4401 = !DILocation(line: 187, column: 5, scope: !4395)
!4402 = !DILocation(line: 188, column: 3, scope: !4378)
!4403 = !DILocation(line: 189, column: 1, scope: !4378)
!4404 = distinct !DISubprogram(name: "version_etc_va", scope: !602, file: !602, line: 196, type: !4405, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !598, variables: !4414)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{null, !4281, !99, !99, !99, !4407}
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !599, line: 189, size: 192, elements: !4409)
!4409 = !{!4410, !4411, !4412, !4413}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4408, file: !599, line: 189, baseType: !103, size: 32)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4408, file: !599, line: 189, baseType: !103, size: 32, offset: 32)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4408, file: !599, line: 189, baseType: !101, size: 64, offset: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4408, file: !599, line: 189, baseType: !101, size: 64, offset: 128)
!4414 = !{!4415, !4416, !4417, !4418, !4419, !4420, !4421}
!4415 = !DILocalVariable(name: "stream", arg: 1, scope: !4404, file: !602, line: 196, type: !4281)
!4416 = !DILocalVariable(name: "command_name", arg: 2, scope: !4404, file: !602, line: 197, type: !99)
!4417 = !DILocalVariable(name: "package", arg: 3, scope: !4404, file: !602, line: 197, type: !99)
!4418 = !DILocalVariable(name: "version", arg: 4, scope: !4404, file: !602, line: 198, type: !99)
!4419 = !DILocalVariable(name: "authors", arg: 5, scope: !4404, file: !602, line: 198, type: !4407)
!4420 = !DILocalVariable(name: "n_authors", scope: !4404, file: !602, line: 200, type: !194)
!4421 = !DILocalVariable(name: "authtab", scope: !4404, file: !602, line: 201, type: !4422)
!4422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 640, elements: !202)
!4423 = !DILocation(line: 196, column: 23, scope: !4404)
!4424 = !DILocation(line: 197, column: 29, scope: !4404)
!4425 = !DILocation(line: 197, column: 55, scope: !4404)
!4426 = !DILocation(line: 198, column: 29, scope: !4404)
!4427 = !DILocation(line: 198, column: 46, scope: !4404)
!4428 = !DILocation(line: 201, column: 3, scope: !4404)
!4429 = !DILocation(line: 201, column: 15, scope: !4404)
!4430 = !DILocation(line: 200, column: 10, scope: !4404)
!4431 = !DILocation(line: 205, column: 35, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4433, file: !602, line: 203, column: 3)
!4433 = distinct !DILexicalBlock(scope: !4404, file: !602, line: 203, column: 3)
!4434 = !DILocation(line: 205, column: 14, scope: !4432)
!4435 = !DILocation(line: 205, column: 33, scope: !4432)
!4436 = !DILocation(line: 205, column: 67, scope: !4432)
!4437 = !DILocation(line: 203, column: 3, scope: !4433)
!4438 = !DILocation(line: 208, column: 3, scope: !4404)
!4439 = !DILocation(line: 210, column: 1, scope: !4404)
!4440 = distinct !DISubprogram(name: "version_etc", scope: !602, file: !602, line: 227, type: !4441, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !598, variables: !4443)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{null, !4281, !99, !99, !99, null}
!4443 = !{!4444, !4445, !4446, !4447, !4448}
!4444 = !DILocalVariable(name: "stream", arg: 1, scope: !4440, file: !602, line: 227, type: !4281)
!4445 = !DILocalVariable(name: "command_name", arg: 2, scope: !4440, file: !602, line: 228, type: !99)
!4446 = !DILocalVariable(name: "package", arg: 3, scope: !4440, file: !602, line: 228, type: !99)
!4447 = !DILocalVariable(name: "version", arg: 4, scope: !4440, file: !602, line: 229, type: !99)
!4448 = !DILocalVariable(name: "authors", scope: !4440, file: !602, line: 231, type: !4449)
!4449 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2350, line: 46, baseType: !4450)
!4450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2352, line: 48, baseType: !4451)
!4451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !599, line: 231, baseType: !4452)
!4452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4408, size: 192, elements: !40)
!4453 = !DILocation(line: 227, column: 20, scope: !4440)
!4454 = !DILocation(line: 228, column: 26, scope: !4440)
!4455 = !DILocation(line: 228, column: 52, scope: !4440)
!4456 = !DILocation(line: 229, column: 26, scope: !4440)
!4457 = !DILocation(line: 231, column: 3, scope: !4440)
!4458 = !DILocation(line: 231, column: 11, scope: !4440)
!4459 = !DILocation(line: 233, column: 3, scope: !4440)
!4460 = !DILocation(line: 234, column: 3, scope: !4440)
!4461 = !DILocation(line: 235, column: 3, scope: !4440)
!4462 = !DILocation(line: 236, column: 1, scope: !4440)
!4463 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !602, file: !602, line: 239, type: !970, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !598, variables: !130)
!4464 = !DILocation(line: 245, column: 3, scope: !4463)
!4465 = !DILocation(line: 251, column: 3, scope: !4463)
!4466 = !DILocation(line: 256, column: 3, scope: !4463)
!4467 = !DILocation(line: 258, column: 1, scope: !4463)
!4468 = distinct !DISubprogram(name: "xnmalloc", scope: !610, file: !610, line: 105, type: !4469, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !4471)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!101, !194, !194}
!4471 = !{!4472, !4473}
!4472 = !DILocalVariable(name: "n", arg: 1, scope: !4468, file: !610, line: 105, type: !194)
!4473 = !DILocalVariable(name: "s", arg: 2, scope: !4468, file: !610, line: 105, type: !194)
!4474 = !DILocation(line: 105, column: 18, scope: !4468)
!4475 = !DILocation(line: 105, column: 28, scope: !4468)
!4476 = !DILocation(line: 107, column: 7, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4468, file: !610, line: 107, column: 7)
!4478 = !DILocation(line: 107, column: 7, scope: !4468)
!4479 = !DILocation(line: 108, column: 5, scope: !4477)
!4480 = !DILocation(line: 109, column: 21, scope: !4468)
!4481 = !DILocalVariable(name: "n", arg: 1, scope: !4482, file: !4483, line: 39, type: !194)
!4482 = distinct !DISubprogram(name: "xmalloc", scope: !4483, file: !4483, line: 39, type: !4484, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !4486)
!4483 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!101, !194}
!4486 = !{!4481, !4487}
!4487 = !DILocalVariable(name: "p", scope: !4482, file: !4483, line: 41, type: !101)
!4488 = !DILocation(line: 39, column: 17, scope: !4482, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 109, column: 10, scope: !4468)
!4490 = !DILocation(line: 41, column: 13, scope: !4482, inlinedAt: !4489)
!4491 = !DILocation(line: 41, column: 9, scope: !4482, inlinedAt: !4489)
!4492 = !DILocation(line: 42, column: 8, scope: !4493, inlinedAt: !4489)
!4493 = distinct !DILexicalBlock(scope: !4482, file: !4483, line: 42, column: 7)
!4494 = !DILocation(line: 42, column: 15, scope: !4493, inlinedAt: !4489)
!4495 = !DILocation(line: 42, column: 10, scope: !4493, inlinedAt: !4489)
!4496 = !DILocation(line: 43, column: 5, scope: !4493, inlinedAt: !4489)
!4497 = !DILocation(line: 109, column: 3, scope: !4468)
!4498 = !DILocation(line: 39, column: 17, scope: !4482)
!4499 = !DILocation(line: 41, column: 13, scope: !4482)
!4500 = !DILocation(line: 41, column: 9, scope: !4482)
!4501 = !DILocation(line: 42, column: 8, scope: !4493)
!4502 = !DILocation(line: 42, column: 15, scope: !4493)
!4503 = !DILocation(line: 42, column: 10, scope: !4493)
!4504 = !DILocation(line: 43, column: 5, scope: !4493)
!4505 = !DILocation(line: 44, column: 3, scope: !4482)
!4506 = distinct !DISubprogram(name: "xnrealloc", scope: !610, file: !610, line: 118, type: !4507, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !4509)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!101, !101, !194, !194}
!4509 = !{!4510, !4511, !4512}
!4510 = !DILocalVariable(name: "p", arg: 1, scope: !4506, file: !610, line: 118, type: !101)
!4511 = !DILocalVariable(name: "n", arg: 2, scope: !4506, file: !610, line: 118, type: !194)
!4512 = !DILocalVariable(name: "s", arg: 3, scope: !4506, file: !610, line: 118, type: !194)
!4513 = !DILocation(line: 118, column: 18, scope: !4506)
!4514 = !DILocation(line: 118, column: 28, scope: !4506)
!4515 = !DILocation(line: 118, column: 38, scope: !4506)
!4516 = !DILocation(line: 120, column: 7, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4506, file: !610, line: 120, column: 7)
!4518 = !DILocation(line: 120, column: 7, scope: !4506)
!4519 = !DILocation(line: 121, column: 5, scope: !4517)
!4520 = !DILocation(line: 122, column: 25, scope: !4506)
!4521 = !DILocalVariable(name: "p", arg: 1, scope: !4522, file: !4483, line: 51, type: !101)
!4522 = distinct !DISubprogram(name: "xrealloc", scope: !4483, file: !4483, line: 51, type: !4523, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !4525)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!101, !101, !194}
!4525 = !{!4521, !4526}
!4526 = !DILocalVariable(name: "n", arg: 2, scope: !4522, file: !4483, line: 51, type: !194)
!4527 = !DILocation(line: 51, column: 17, scope: !4522, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 122, column: 10, scope: !4506)
!4529 = !DILocation(line: 51, column: 27, scope: !4522, inlinedAt: !4528)
!4530 = !DILocation(line: 53, column: 8, scope: !4531, inlinedAt: !4528)
!4531 = distinct !DILexicalBlock(scope: !4522, file: !4483, line: 53, column: 7)
!4532 = !DILocation(line: 53, column: 13, scope: !4531, inlinedAt: !4528)
!4533 = !DILocation(line: 53, column: 10, scope: !4531, inlinedAt: !4528)
!4534 = !DILocation(line: 57, column: 7, scope: !4535, inlinedAt: !4528)
!4535 = distinct !DILexicalBlock(scope: !4531, file: !4483, line: 54, column: 5)
!4536 = !DILocation(line: 58, column: 7, scope: !4535, inlinedAt: !4528)
!4537 = !DILocation(line: 61, column: 7, scope: !4522, inlinedAt: !4528)
!4538 = !DILocation(line: 62, column: 8, scope: !4539, inlinedAt: !4528)
!4539 = distinct !DILexicalBlock(scope: !4522, file: !4483, line: 62, column: 7)
!4540 = !DILocation(line: 62, column: 13, scope: !4539, inlinedAt: !4528)
!4541 = !DILocation(line: 62, column: 10, scope: !4539, inlinedAt: !4528)
!4542 = !DILocation(line: 63, column: 5, scope: !4539, inlinedAt: !4528)
!4543 = !DILocation(line: 122, column: 3, scope: !4506)
!4544 = !DILocation(line: 51, column: 17, scope: !4522)
!4545 = !DILocation(line: 51, column: 27, scope: !4522)
!4546 = !DILocation(line: 53, column: 8, scope: !4531)
!4547 = !DILocation(line: 53, column: 13, scope: !4531)
!4548 = !DILocation(line: 53, column: 10, scope: !4531)
!4549 = !DILocation(line: 57, column: 7, scope: !4535)
!4550 = !DILocation(line: 58, column: 7, scope: !4535)
!4551 = !DILocation(line: 61, column: 7, scope: !4522)
!4552 = !DILocation(line: 62, column: 8, scope: !4539)
!4553 = !DILocation(line: 62, column: 13, scope: !4539)
!4554 = !DILocation(line: 62, column: 10, scope: !4539)
!4555 = !DILocation(line: 63, column: 5, scope: !4539)
!4556 = !DILocation(line: 65, column: 1, scope: !4522)
!4557 = !DILocation(line: 180, column: 19, scope: !611)
!4558 = !DILocation(line: 180, column: 30, scope: !611)
!4559 = !DILocation(line: 180, column: 41, scope: !611)
!4560 = !DILocation(line: 182, column: 14, scope: !611)
!4561 = !DILocation(line: 182, column: 10, scope: !611)
!4562 = !DILocation(line: 184, column: 9, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !611, file: !610, line: 184, column: 7)
!4564 = !DILocation(line: 184, column: 7, scope: !611)
!4565 = !DILocation(line: 186, column: 13, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4567, file: !610, line: 186, column: 11)
!4567 = distinct !DILexicalBlock(scope: !4563, file: !610, line: 185, column: 5)
!4568 = !DILocation(line: 186, column: 11, scope: !4567)
!4569 = !DILocation(line: 194, column: 30, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4566, file: !610, line: 187, column: 9)
!4571 = !DILocation(line: 195, column: 16, scope: !4570)
!4572 = !DILocation(line: 195, column: 13, scope: !4570)
!4573 = !DILocation(line: 196, column: 9, scope: !4570)
!4574 = !DILocation(line: 204, column: 69, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4576, file: !610, line: 204, column: 11)
!4576 = distinct !DILexicalBlock(scope: !4563, file: !610, line: 199, column: 5)
!4577 = !DILocation(line: 205, column: 11, scope: !4575)
!4578 = !DILocation(line: 204, column: 11, scope: !4576)
!4579 = !DILocation(line: 206, column: 9, scope: !4575)
!4580 = !DILocation(line: 210, column: 7, scope: !611)
!4581 = !DILocation(line: 211, column: 25, scope: !611)
!4582 = !DILocation(line: 51, column: 17, scope: !4522, inlinedAt: !4583)
!4583 = distinct !DILocation(line: 211, column: 10, scope: !611)
!4584 = !DILocation(line: 51, column: 27, scope: !4522, inlinedAt: !4583)
!4585 = !DILocation(line: 53, column: 10, scope: !4531, inlinedAt: !4583)
!4586 = !DILocation(line: 207, column: 14, scope: !4576)
!4587 = !DILocation(line: 207, column: 18, scope: !4576)
!4588 = !DILocation(line: 207, column: 9, scope: !4576)
!4589 = !DILocation(line: 53, column: 8, scope: !4531, inlinedAt: !4583)
!4590 = !DILocation(line: 57, column: 7, scope: !4535, inlinedAt: !4583)
!4591 = !DILocation(line: 58, column: 7, scope: !4535, inlinedAt: !4583)
!4592 = !DILocation(line: 61, column: 7, scope: !4522, inlinedAt: !4583)
!4593 = !DILocation(line: 62, column: 8, scope: !4539, inlinedAt: !4583)
!4594 = !DILocation(line: 62, column: 13, scope: !4539, inlinedAt: !4583)
!4595 = !DILocation(line: 62, column: 10, scope: !4539, inlinedAt: !4583)
!4596 = !DILocation(line: 63, column: 5, scope: !4539, inlinedAt: !4583)
!4597 = !DILocation(line: 211, column: 3, scope: !611)
!4598 = distinct !DISubprogram(name: "xcharalloc", scope: !610, file: !610, line: 220, type: !3362, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !4599)
!4599 = !{!4600}
!4600 = !DILocalVariable(name: "n", arg: 1, scope: !4598, file: !610, line: 220, type: !194)
!4601 = !DILocation(line: 220, column: 20, scope: !4598)
!4602 = !DILocation(line: 39, column: 17, scope: !4482, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 222, column: 10, scope: !4598)
!4604 = !DILocation(line: 41, column: 13, scope: !4482, inlinedAt: !4603)
!4605 = !DILocation(line: 41, column: 9, scope: !4482, inlinedAt: !4603)
!4606 = !DILocation(line: 42, column: 8, scope: !4493, inlinedAt: !4603)
!4607 = !DILocation(line: 42, column: 15, scope: !4493, inlinedAt: !4603)
!4608 = !DILocation(line: 42, column: 10, scope: !4493, inlinedAt: !4603)
!4609 = !DILocation(line: 43, column: 5, scope: !4493, inlinedAt: !4603)
!4610 = !DILocation(line: 222, column: 3, scope: !4598)
!4611 = distinct !DISubprogram(name: "x2realloc", scope: !4483, file: !4483, line: 74, type: !4612, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !4614)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!101, !101, !614}
!4614 = !{!4615, !4616}
!4615 = !DILocalVariable(name: "p", arg: 1, scope: !4611, file: !4483, line: 74, type: !101)
!4616 = !DILocalVariable(name: "pn", arg: 2, scope: !4611, file: !4483, line: 74, type: !614)
!4617 = !DILocation(line: 74, column: 18, scope: !4611)
!4618 = !DILocation(line: 74, column: 29, scope: !4611)
!4619 = !DILocation(line: 180, column: 19, scope: !611, inlinedAt: !4620)
!4620 = distinct !DILocation(line: 76, column: 10, scope: !4611)
!4621 = !DILocation(line: 180, column: 30, scope: !611, inlinedAt: !4620)
!4622 = !DILocation(line: 180, column: 41, scope: !611, inlinedAt: !4620)
!4623 = !DILocation(line: 182, column: 14, scope: !611, inlinedAt: !4620)
!4624 = !DILocation(line: 182, column: 10, scope: !611, inlinedAt: !4620)
!4625 = !DILocation(line: 184, column: 9, scope: !4563, inlinedAt: !4620)
!4626 = !DILocation(line: 184, column: 7, scope: !611, inlinedAt: !4620)
!4627 = !DILocation(line: 186, column: 13, scope: !4566, inlinedAt: !4620)
!4628 = !DILocation(line: 186, column: 11, scope: !4567, inlinedAt: !4620)
!4629 = !DILocation(line: 210, column: 7, scope: !611, inlinedAt: !4620)
!4630 = !DILocation(line: 51, column: 17, scope: !4522, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 211, column: 10, scope: !611, inlinedAt: !4620)
!4632 = !DILocation(line: 51, column: 27, scope: !4522, inlinedAt: !4631)
!4633 = !DILocation(line: 53, column: 10, scope: !4531, inlinedAt: !4631)
!4634 = !DILocation(line: 205, column: 11, scope: !4575, inlinedAt: !4620)
!4635 = !DILocation(line: 204, column: 11, scope: !4576, inlinedAt: !4620)
!4636 = !DILocation(line: 206, column: 9, scope: !4575, inlinedAt: !4620)
!4637 = !DILocation(line: 207, column: 14, scope: !4576, inlinedAt: !4620)
!4638 = !DILocation(line: 207, column: 18, scope: !4576, inlinedAt: !4620)
!4639 = !DILocation(line: 207, column: 9, scope: !4576, inlinedAt: !4620)
!4640 = !DILocation(line: 53, column: 8, scope: !4531, inlinedAt: !4631)
!4641 = !DILocation(line: 57, column: 7, scope: !4535, inlinedAt: !4631)
!4642 = !DILocation(line: 58, column: 7, scope: !4535, inlinedAt: !4631)
!4643 = !DILocation(line: 61, column: 7, scope: !4522, inlinedAt: !4631)
!4644 = !DILocation(line: 62, column: 8, scope: !4539, inlinedAt: !4631)
!4645 = !DILocation(line: 62, column: 13, scope: !4539, inlinedAt: !4631)
!4646 = !DILocation(line: 62, column: 10, scope: !4539, inlinedAt: !4631)
!4647 = !DILocation(line: 63, column: 5, scope: !4539, inlinedAt: !4631)
!4648 = !DILocation(line: 76, column: 3, scope: !4611)
!4649 = distinct !DISubprogram(name: "xzalloc", scope: !4483, file: !4483, line: 84, type: !4484, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !4650)
!4650 = !{!4651}
!4651 = !DILocalVariable(name: "s", arg: 1, scope: !4649, file: !4483, line: 84, type: !194)
!4652 = !DILocation(line: 84, column: 17, scope: !4649)
!4653 = !DILocation(line: 39, column: 17, scope: !4482, inlinedAt: !4654)
!4654 = distinct !DILocation(line: 86, column: 18, scope: !4649)
!4655 = !DILocation(line: 41, column: 13, scope: !4482, inlinedAt: !4654)
!4656 = !DILocation(line: 41, column: 9, scope: !4482, inlinedAt: !4654)
!4657 = !DILocation(line: 42, column: 8, scope: !4493, inlinedAt: !4654)
!4658 = !DILocation(line: 42, column: 15, scope: !4493, inlinedAt: !4654)
!4659 = !DILocation(line: 42, column: 10, scope: !4493, inlinedAt: !4654)
!4660 = !DILocation(line: 43, column: 5, scope: !4493, inlinedAt: !4654)
!4661 = !DILocation(line: 86, column: 10, scope: !4649)
!4662 = !DILocation(line: 86, column: 3, scope: !4649)
!4663 = distinct !DISubprogram(name: "xcalloc", scope: !4483, file: !4483, line: 93, type: !4469, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !4664)
!4664 = !{!4665, !4666, !4667}
!4665 = !DILocalVariable(name: "n", arg: 1, scope: !4663, file: !4483, line: 93, type: !194)
!4666 = !DILocalVariable(name: "s", arg: 2, scope: !4663, file: !4483, line: 93, type: !194)
!4667 = !DILocalVariable(name: "p", scope: !4663, file: !4483, line: 95, type: !101)
!4668 = !DILocation(line: 93, column: 17, scope: !4663)
!4669 = !DILocation(line: 93, column: 27, scope: !4663)
!4670 = !DILocation(line: 100, column: 7, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4663, file: !4483, line: 100, column: 7)
!4672 = !DILocation(line: 101, column: 7, scope: !4671)
!4673 = !DILocation(line: 101, column: 18, scope: !4671)
!4674 = !DILocation(line: 95, column: 9, scope: !4663)
!4675 = !DILocation(line: 101, column: 16, scope: !4671)
!4676 = !DILocation(line: 100, column: 7, scope: !4663)
!4677 = !DILocation(line: 102, column: 5, scope: !4671)
!4678 = !DILocation(line: 103, column: 3, scope: !4663)
!4679 = distinct !DISubprogram(name: "xmemdup", scope: !4483, file: !4483, line: 111, type: !4680, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !4682)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!101, !1990, !194}
!4682 = !{!4683, !4684}
!4683 = !DILocalVariable(name: "p", arg: 1, scope: !4679, file: !4483, line: 111, type: !1990)
!4684 = !DILocalVariable(name: "s", arg: 2, scope: !4679, file: !4483, line: 111, type: !194)
!4685 = !DILocation(line: 111, column: 22, scope: !4679)
!4686 = !DILocation(line: 111, column: 32, scope: !4679)
!4687 = !DILocation(line: 39, column: 17, scope: !4482, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 113, column: 18, scope: !4679)
!4689 = !DILocation(line: 41, column: 13, scope: !4482, inlinedAt: !4688)
!4690 = !DILocation(line: 41, column: 9, scope: !4482, inlinedAt: !4688)
!4691 = !DILocation(line: 42, column: 8, scope: !4493, inlinedAt: !4688)
!4692 = !DILocation(line: 42, column: 15, scope: !4493, inlinedAt: !4688)
!4693 = !DILocation(line: 42, column: 10, scope: !4493, inlinedAt: !4688)
!4694 = !DILocation(line: 43, column: 5, scope: !4493, inlinedAt: !4688)
!4695 = !DILocation(line: 113, column: 10, scope: !4679)
!4696 = !DILocation(line: 113, column: 3, scope: !4679)
!4697 = distinct !DISubprogram(name: "xstrdup", scope: !4483, file: !4483, line: 119, type: !3562, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !4698)
!4698 = !{!4699}
!4699 = !DILocalVariable(name: "string", arg: 1, scope: !4697, file: !4483, line: 119, type: !99)
!4700 = !DILocation(line: 119, column: 22, scope: !4697)
!4701 = !DILocation(line: 121, column: 27, scope: !4697)
!4702 = !DILocation(line: 121, column: 43, scope: !4697)
!4703 = !DILocation(line: 111, column: 22, scope: !4679, inlinedAt: !4704)
!4704 = distinct !DILocation(line: 121, column: 10, scope: !4697)
!4705 = !DILocation(line: 111, column: 32, scope: !4679, inlinedAt: !4704)
!4706 = !DILocation(line: 39, column: 17, scope: !4482, inlinedAt: !4707)
!4707 = distinct !DILocation(line: 113, column: 18, scope: !4679, inlinedAt: !4704)
!4708 = !DILocation(line: 41, column: 13, scope: !4482, inlinedAt: !4707)
!4709 = !DILocation(line: 41, column: 9, scope: !4482, inlinedAt: !4707)
!4710 = !DILocation(line: 42, column: 8, scope: !4493, inlinedAt: !4707)
!4711 = !DILocation(line: 42, column: 15, scope: !4493, inlinedAt: !4707)
!4712 = !DILocation(line: 42, column: 10, scope: !4493, inlinedAt: !4707)
!4713 = !DILocation(line: 43, column: 5, scope: !4493, inlinedAt: !4707)
!4714 = !DILocation(line: 113, column: 10, scope: !4679, inlinedAt: !4704)
!4715 = !DILocation(line: 121, column: 3, scope: !4697)
!4716 = distinct !DISubprogram(name: "xalloc_die", scope: !4717, file: !4717, line: 32, type: !970, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !623, variables: !130)
!4717 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4718 = !DILocation(line: 34, column: 10, scope: !4716)
!4719 = !DILocation(line: 34, column: 33, scope: !4716)
!4720 = !DILocation(line: 34, column: 3, scope: !4716)
!4721 = !DILocation(line: 40, column: 3, scope: !4716)
!4722 = distinct !DISubprogram(name: "rpl_calloc", scope: !4723, file: !4723, line: 42, type: !4469, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !625, variables: !4724)
!4723 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4724 = !{!4725, !4726, !4727, !4728}
!4725 = !DILocalVariable(name: "n", arg: 1, scope: !4722, file: !4723, line: 42, type: !194)
!4726 = !DILocalVariable(name: "s", arg: 2, scope: !4722, file: !4723, line: 42, type: !194)
!4727 = !DILocalVariable(name: "result", scope: !4722, file: !4723, line: 44, type: !101)
!4728 = !DILocalVariable(name: "bytes", scope: !4729, file: !4723, line: 56, type: !194)
!4729 = distinct !DILexicalBlock(scope: !4730, file: !4723, line: 53, column: 5)
!4730 = distinct !DILexicalBlock(scope: !4722, file: !4723, line: 47, column: 7)
!4731 = !DILocation(line: 42, column: 20, scope: !4722)
!4732 = !DILocation(line: 42, column: 30, scope: !4722)
!4733 = !DILocation(line: 47, column: 9, scope: !4730)
!4734 = !DILocation(line: 47, column: 19, scope: !4730)
!4735 = !DILocation(line: 47, column: 14, scope: !4730)
!4736 = !DILocation(line: 56, column: 24, scope: !4729)
!4737 = !DILocation(line: 56, column: 14, scope: !4729)
!4738 = !DILocation(line: 57, column: 17, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4729, file: !4723, line: 57, column: 11)
!4740 = !DILocation(line: 57, column: 21, scope: !4739)
!4741 = !DILocation(line: 57, column: 11, scope: !4729)
!4742 = !DILocation(line: 59, column: 11, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4739, file: !4723, line: 58, column: 9)
!4744 = !DILocation(line: 59, column: 17, scope: !4743)
!4745 = !DILocation(line: 65, column: 12, scope: !4722)
!4746 = !DILocation(line: 44, column: 9, scope: !4722)
!4747 = !DILocation(line: 72, column: 3, scope: !4722)
!4748 = !DILocation(line: 73, column: 1, scope: !4722)
!4749 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4750, file: !4750, line: 334, type: !4751, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !4765)
!4750 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!194, !4753, !99, !194, !4754}
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2614, line: 6, baseType: !4756)
!4756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2616, line: 21, baseType: !4757)
!4757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2616, line: 13, size: 64, elements: !4758)
!4758 = !{!4759, !4760}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4757, file: !2616, line: 15, baseType: !34, size: 32)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4757, file: !2616, line: 20, baseType: !4761, size: 32, offset: 32)
!4761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4757, file: !2616, line: 16, size: 32, elements: !4762)
!4762 = !{!4763, !4764}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4761, file: !2616, line: 18, baseType: !103, size: 32)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4761, file: !2616, line: 19, baseType: !2625, size: 32)
!4765 = !{!4766, !4767, !4768, !4769, !4770, !4771, !4772}
!4766 = !DILocalVariable(name: "pwc", arg: 1, scope: !4749, file: !4750, line: 334, type: !4753)
!4767 = !DILocalVariable(name: "s", arg: 2, scope: !4749, file: !4750, line: 334, type: !99)
!4768 = !DILocalVariable(name: "n", arg: 3, scope: !4749, file: !4750, line: 334, type: !194)
!4769 = !DILocalVariable(name: "ps", arg: 4, scope: !4749, file: !4750, line: 334, type: !4754)
!4770 = !DILocalVariable(name: "ret", scope: !4749, file: !4750, line: 336, type: !194)
!4771 = !DILocalVariable(name: "wc", scope: !4749, file: !4750, line: 337, type: !2630)
!4772 = !DILocalVariable(name: "uc", scope: !4773, file: !4750, line: 398, type: !102)
!4773 = distinct !DILexicalBlock(scope: !4774, file: !4750, line: 397, column: 5)
!4774 = distinct !DILexicalBlock(scope: !4749, file: !4750, line: 396, column: 7)
!4775 = !DILocation(line: 334, column: 23, scope: !4749)
!4776 = !DILocation(line: 334, column: 40, scope: !4749)
!4777 = !DILocation(line: 334, column: 50, scope: !4749)
!4778 = !DILocation(line: 334, column: 64, scope: !4749)
!4779 = !DILocation(line: 337, column: 3, scope: !4749)
!4780 = !DILocation(line: 353, column: 9, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4749, file: !4750, line: 353, column: 7)
!4782 = !DILocation(line: 353, column: 7, scope: !4749)
!4783 = !DILocation(line: 388, column: 9, scope: !4749)
!4784 = !DILocation(line: 336, column: 10, scope: !4749)
!4785 = !DILocation(line: 396, column: 19, scope: !4774)
!4786 = !DILocation(line: 396, column: 31, scope: !4774)
!4787 = !DILocation(line: 396, column: 26, scope: !4774)
!4788 = !DILocation(line: 396, column: 41, scope: !4774)
!4789 = !DILocation(line: 396, column: 7, scope: !4749)
!4790 = !DILocation(line: 398, column: 26, scope: !4773)
!4791 = !DILocation(line: 398, column: 21, scope: !4773)
!4792 = !DILocation(line: 399, column: 14, scope: !4773)
!4793 = !DILocation(line: 399, column: 12, scope: !4773)
!4794 = !DILocation(line: 405, column: 1, scope: !4749)
!4795 = distinct !DISubprogram(name: "close_stream", scope: !4796, file: !4796, line: 56, type: !4797, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !4839)
!4796 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!34, !4799}
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4283, line: 7, baseType: !4801)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4285, line: 241, size: 1728, elements: !4802)
!4802 = !{!4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4801, file: !4285, line: 242, baseType: !34, size: 32)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4801, file: !4285, line: 247, baseType: !43, size: 64, offset: 64)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4801, file: !4285, line: 248, baseType: !43, size: 64, offset: 128)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4801, file: !4285, line: 249, baseType: !43, size: 64, offset: 192)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4801, file: !4285, line: 250, baseType: !43, size: 64, offset: 256)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4801, file: !4285, line: 251, baseType: !43, size: 64, offset: 320)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4801, file: !4285, line: 252, baseType: !43, size: 64, offset: 384)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4801, file: !4285, line: 253, baseType: !43, size: 64, offset: 448)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4801, file: !4285, line: 254, baseType: !43, size: 64, offset: 512)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4801, file: !4285, line: 256, baseType: !43, size: 64, offset: 576)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4801, file: !4285, line: 257, baseType: !43, size: 64, offset: 640)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4801, file: !4285, line: 258, baseType: !43, size: 64, offset: 704)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4801, file: !4285, line: 260, baseType: !4816, size: 64, offset: 768)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4285, line: 156, size: 192, elements: !4818)
!4818 = !{!4819, !4820, !4822}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4817, file: !4285, line: 157, baseType: !4816, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4817, file: !4285, line: 158, baseType: !4821, size: 64, offset: 64)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4817, file: !4285, line: 162, baseType: !34, size: 32, offset: 128)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4801, file: !4285, line: 262, baseType: !4821, size: 64, offset: 832)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4801, file: !4285, line: 264, baseType: !34, size: 32, offset: 896)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4801, file: !4285, line: 268, baseType: !34, size: 32, offset: 928)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4801, file: !4285, line: 270, baseType: !4311, size: 64, offset: 960)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4801, file: !4285, line: 274, baseType: !193, size: 16, offset: 1024)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4801, file: !4285, line: 275, baseType: !4315, size: 8, offset: 1040)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4801, file: !4285, line: 276, baseType: !4317, size: 8, offset: 1048)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4801, file: !4285, line: 280, baseType: !4319, size: 64, offset: 1088)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4801, file: !4285, line: 289, baseType: !4322, size: 64, offset: 1152)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4801, file: !4285, line: 297, baseType: !101, size: 64, offset: 1216)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4801, file: !4285, line: 298, baseType: !101, size: 64, offset: 1280)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4801, file: !4285, line: 299, baseType: !101, size: 64, offset: 1344)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4801, file: !4285, line: 300, baseType: !101, size: 64, offset: 1408)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4801, file: !4285, line: 302, baseType: !194, size: 64, offset: 1472)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4801, file: !4285, line: 303, baseType: !34, size: 32, offset: 1536)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4801, file: !4285, line: 305, baseType: !4330, size: 160, offset: 1568)
!4839 = !{!4840, !4841, !4843, !4844}
!4840 = !DILocalVariable(name: "stream", arg: 1, scope: !4795, file: !4796, line: 56, type: !4799)
!4841 = !DILocalVariable(name: "some_pending", scope: !4795, file: !4796, line: 58, type: !4842)
!4842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!4843 = !DILocalVariable(name: "prev_fail", scope: !4795, file: !4796, line: 59, type: !4842)
!4844 = !DILocalVariable(name: "fclose_fail", scope: !4795, file: !4796, line: 60, type: !4842)
!4845 = !DILocation(line: 56, column: 21, scope: !4795)
!4846 = !DILocation(line: 58, column: 30, scope: !4795)
!4847 = !DILocalVariable(name: "__stream", arg: 1, scope: !4848, file: !666, line: 132, type: !4799)
!4848 = distinct !DISubprogram(name: "ferror_unlocked", scope: !666, file: !666, line: 132, type: !4797, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !4849)
!4849 = !{!4847}
!4850 = !DILocation(line: 132, column: 1, scope: !4848, inlinedAt: !4851)
!4851 = distinct !DILocation(line: 59, column: 27, scope: !4795)
!4852 = !DILocation(line: 134, column: 10, scope: !4848, inlinedAt: !4851)
!4853 = !{!674, !675, i64 0}
!4854 = !DILocation(line: 59, column: 43, scope: !4795)
!4855 = !DILocation(line: 60, column: 29, scope: !4795)
!4856 = !DILocation(line: 60, column: 45, scope: !4795)
!4857 = !DILocation(line: 70, column: 17, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4795, file: !4796, line: 70, column: 7)
!4859 = !DILocation(line: 58, column: 50, scope: !4795)
!4860 = !DILocation(line: 70, column: 33, scope: !4858)
!4861 = !DILocation(line: 70, column: 53, scope: !4858)
!4862 = !DILocation(line: 70, column: 59, scope: !4858)
!4863 = !DILocation(line: 70, column: 7, scope: !4795)
!4864 = !DILocation(line: 72, column: 11, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4858, file: !4796, line: 71, column: 5)
!4866 = !DILocation(line: 73, column: 9, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4865, file: !4796, line: 72, column: 11)
!4868 = !DILocation(line: 73, column: 15, scope: !4867)
!4869 = !DILocation(line: 78, column: 1, scope: !4795)
!4870 = distinct !DISubprogram(name: "hard_locale", scope: !4871, file: !4871, line: 38, type: !4872, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !632, variables: !4874)
!4871 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!45, !34}
!4874 = !{!4875, !4876, !4877}
!4875 = !DILocalVariable(name: "category", arg: 1, scope: !4870, file: !4871, line: 38, type: !34)
!4876 = !DILocalVariable(name: "hard", scope: !4870, file: !4871, line: 40, type: !45)
!4877 = !DILocalVariable(name: "p", scope: !4870, file: !4871, line: 41, type: !99)
!4878 = !DILocation(line: 38, column: 18, scope: !4870)
!4879 = !DILocation(line: 40, column: 8, scope: !4870)
!4880 = !DILocation(line: 41, column: 19, scope: !4870)
!4881 = !DILocation(line: 41, column: 15, scope: !4870)
!4882 = !DILocation(line: 43, column: 7, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4870, file: !4871, line: 43, column: 7)
!4884 = !DILocation(line: 43, column: 7, scope: !4870)
!4885 = !DILocation(line: 47, column: 15, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4887, file: !4871, line: 47, column: 15)
!4887 = distinct !DILexicalBlock(scope: !4888, file: !4871, line: 46, column: 9)
!4888 = distinct !DILexicalBlock(scope: !4889, file: !4871, line: 45, column: 11)
!4889 = distinct !DILexicalBlock(scope: !4883, file: !4871, line: 44, column: 5)
!4890 = !DILocation(line: 47, column: 31, scope: !4886)
!4891 = !DILocation(line: 47, column: 36, scope: !4886)
!4892 = !DILocation(line: 47, column: 39, scope: !4886)
!4893 = !DILocation(line: 47, column: 59, scope: !4886)
!4894 = !DILocation(line: 47, column: 15, scope: !4887)
!4895 = !DILocation(line: 48, column: 13, scope: !4886)
!4896 = !DILocation(line: 71, column: 3, scope: !4870)
!4897 = distinct !DISubprogram(name: "locale_charset", scope: !593, file: !593, line: 393, type: !4898, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !249, variables: !4900)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!99}
!4900 = !{!4901, !4902}
!4901 = !DILocalVariable(name: "codeset", scope: !4897, file: !593, line: 395, type: !99)
!4902 = !DILocalVariable(name: "aliases", scope: !4897, file: !593, line: 396, type: !99)
!4903 = !DILocalVariable(name: "buf1", scope: !4904, file: !593, line: 196, type: !4971)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !593, line: 194, column: 21)
!4905 = distinct !DILexicalBlock(scope: !4906, file: !593, line: 193, column: 19)
!4906 = distinct !DILexicalBlock(scope: !4907, file: !593, line: 193, column: 19)
!4907 = distinct !DILexicalBlock(scope: !4908, file: !593, line: 188, column: 17)
!4908 = distinct !DILexicalBlock(scope: !4909, file: !593, line: 181, column: 19)
!4909 = distinct !DILexicalBlock(scope: !4910, file: !593, line: 177, column: 13)
!4910 = distinct !DILexicalBlock(scope: !4911, file: !593, line: 173, column: 15)
!4911 = distinct !DILexicalBlock(scope: !4912, file: !593, line: 161, column: 9)
!4912 = distinct !DILexicalBlock(scope: !4913, file: !593, line: 157, column: 11)
!4913 = distinct !DILexicalBlock(scope: !4914, file: !593, line: 130, column: 5)
!4914 = distinct !DILexicalBlock(scope: !4915, file: !593, line: 129, column: 7)
!4915 = distinct !DISubprogram(name: "get_charset_aliases", scope: !593, file: !593, line: 124, type: !4898, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !249, variables: !4916)
!4916 = !{!4917, !4918, !4919, !4920, !4921, !4923, !4924, !4925, !4926, !4967, !4968, !4969, !4903, !4970, !4974, !4975, !4976}
!4917 = !DILocalVariable(name: "cp", scope: !4915, file: !593, line: 126, type: !99)
!4918 = !DILocalVariable(name: "dir", scope: !4913, file: !593, line: 132, type: !99)
!4919 = !DILocalVariable(name: "base", scope: !4913, file: !593, line: 133, type: !99)
!4920 = !DILocalVariable(name: "file_name", scope: !4913, file: !593, line: 134, type: !43)
!4921 = !DILocalVariable(name: "dir_len", scope: !4922, file: !593, line: 144, type: !194)
!4922 = distinct !DILexicalBlock(scope: !4913, file: !593, line: 143, column: 7)
!4923 = !DILocalVariable(name: "base_len", scope: !4922, file: !593, line: 145, type: !194)
!4924 = !DILocalVariable(name: "add_slash", scope: !4922, file: !593, line: 146, type: !34)
!4925 = !DILocalVariable(name: "fd", scope: !4911, file: !593, line: 162, type: !34)
!4926 = !DILocalVariable(name: "fp", scope: !4909, file: !593, line: 178, type: !4927)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4283, line: 7, baseType: !4929)
!4929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4285, line: 241, size: 1728, elements: !4930)
!4930 = !{!4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4929, file: !4285, line: 242, baseType: !34, size: 32)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4929, file: !4285, line: 247, baseType: !43, size: 64, offset: 64)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4929, file: !4285, line: 248, baseType: !43, size: 64, offset: 128)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4929, file: !4285, line: 249, baseType: !43, size: 64, offset: 192)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4929, file: !4285, line: 250, baseType: !43, size: 64, offset: 256)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4929, file: !4285, line: 251, baseType: !43, size: 64, offset: 320)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4929, file: !4285, line: 252, baseType: !43, size: 64, offset: 384)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4929, file: !4285, line: 253, baseType: !43, size: 64, offset: 448)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4929, file: !4285, line: 254, baseType: !43, size: 64, offset: 512)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4929, file: !4285, line: 256, baseType: !43, size: 64, offset: 576)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4929, file: !4285, line: 257, baseType: !43, size: 64, offset: 640)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4929, file: !4285, line: 258, baseType: !43, size: 64, offset: 704)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4929, file: !4285, line: 260, baseType: !4944, size: 64, offset: 768)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4285, line: 156, size: 192, elements: !4946)
!4946 = !{!4947, !4948, !4950}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4945, file: !4285, line: 157, baseType: !4944, size: 64)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4945, file: !4285, line: 158, baseType: !4949, size: 64, offset: 64)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4945, file: !4285, line: 162, baseType: !34, size: 32, offset: 128)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4929, file: !4285, line: 262, baseType: !4949, size: 64, offset: 832)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4929, file: !4285, line: 264, baseType: !34, size: 32, offset: 896)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4929, file: !4285, line: 268, baseType: !34, size: 32, offset: 928)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4929, file: !4285, line: 270, baseType: !4311, size: 64, offset: 960)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4929, file: !4285, line: 274, baseType: !193, size: 16, offset: 1024)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4929, file: !4285, line: 275, baseType: !4315, size: 8, offset: 1040)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4929, file: !4285, line: 276, baseType: !4317, size: 8, offset: 1048)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4929, file: !4285, line: 280, baseType: !4319, size: 64, offset: 1088)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4929, file: !4285, line: 289, baseType: !4322, size: 64, offset: 1152)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4929, file: !4285, line: 297, baseType: !101, size: 64, offset: 1216)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4929, file: !4285, line: 298, baseType: !101, size: 64, offset: 1280)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4929, file: !4285, line: 299, baseType: !101, size: 64, offset: 1344)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4929, file: !4285, line: 300, baseType: !101, size: 64, offset: 1408)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4929, file: !4285, line: 302, baseType: !194, size: 64, offset: 1472)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4929, file: !4285, line: 303, baseType: !34, size: 32, offset: 1536)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4929, file: !4285, line: 305, baseType: !4330, size: 160, offset: 1568)
!4967 = !DILocalVariable(name: "res_ptr", scope: !4907, file: !593, line: 190, type: !43)
!4968 = !DILocalVariable(name: "res_size", scope: !4907, file: !593, line: 191, type: !194)
!4969 = !DILocalVariable(name: "c", scope: !4904, file: !593, line: 195, type: !34)
!4970 = !DILocalVariable(name: "buf2", scope: !4904, file: !593, line: 197, type: !4971)
!4971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 408, elements: !4972)
!4972 = !{!4973}
!4973 = !DISubrange(count: 51)
!4974 = !DILocalVariable(name: "l1", scope: !4904, file: !593, line: 198, type: !194)
!4975 = !DILocalVariable(name: "l2", scope: !4904, file: !593, line: 198, type: !194)
!4976 = !DILocalVariable(name: "old_res_ptr", scope: !4904, file: !593, line: 199, type: !43)
!4977 = !DILocation(line: 196, column: 28, scope: !4904, inlinedAt: !4978)
!4978 = distinct !DILocation(line: 589, column: 18, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4897, file: !593, line: 589, column: 3)
!4980 = !DILocation(line: 197, column: 28, scope: !4904, inlinedAt: !4978)
!4981 = !DILocation(line: 403, column: 13, scope: !4897)
!4982 = !DILocation(line: 395, column: 15, scope: !4897)
!4983 = !DILocation(line: 584, column: 15, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4897, file: !593, line: 584, column: 7)
!4985 = !DILocation(line: 584, column: 7, scope: !4897)
!4986 = !DILocation(line: 128, column: 8, scope: !4915, inlinedAt: !4978)
!4987 = !DILocation(line: 126, column: 15, scope: !4915, inlinedAt: !4978)
!4988 = !DILocation(line: 129, column: 10, scope: !4914, inlinedAt: !4978)
!4989 = !DILocation(line: 129, column: 7, scope: !4915, inlinedAt: !4978)
!4990 = !DILocation(line: 138, column: 13, scope: !4913, inlinedAt: !4978)
!4991 = !DILocation(line: 132, column: 19, scope: !4913, inlinedAt: !4978)
!4992 = !DILocation(line: 139, column: 15, scope: !4993, inlinedAt: !4978)
!4993 = distinct !DILexicalBlock(scope: !4913, file: !593, line: 139, column: 11)
!4994 = !DILocation(line: 139, column: 23, scope: !4993, inlinedAt: !4978)
!4995 = !DILocation(line: 139, column: 26, scope: !4993, inlinedAt: !4978)
!4996 = !DILocation(line: 139, column: 33, scope: !4993, inlinedAt: !4978)
!4997 = !DILocation(line: 139, column: 11, scope: !4913, inlinedAt: !4978)
!4998 = !DILocation(line: 140, column: 9, scope: !4993, inlinedAt: !4978)
!4999 = !DILocation(line: 144, column: 26, scope: !4922, inlinedAt: !4978)
!5000 = !DILocation(line: 144, column: 16, scope: !4922, inlinedAt: !4978)
!5001 = !DILocation(line: 145, column: 16, scope: !4922, inlinedAt: !4978)
!5002 = !DILocation(line: 146, column: 34, scope: !4922, inlinedAt: !4978)
!5003 = !DILocation(line: 146, column: 38, scope: !4922, inlinedAt: !4978)
!5004 = !DILocation(line: 146, column: 42, scope: !4922, inlinedAt: !4978)
!5005 = !DILocation(line: 147, column: 48, scope: !4922, inlinedAt: !4978)
!5006 = !DILocation(line: 147, column: 46, scope: !4922, inlinedAt: !4978)
!5007 = !DILocation(line: 147, column: 69, scope: !4922, inlinedAt: !4978)
!5008 = !DILocation(line: 147, column: 30, scope: !4922, inlinedAt: !4978)
!5009 = !DILocation(line: 134, column: 13, scope: !4913, inlinedAt: !4978)
!5010 = !DILocation(line: 148, column: 13, scope: !4922, inlinedAt: !4978)
!5011 = !DILocation(line: 150, column: 13, scope: !5012, inlinedAt: !4978)
!5012 = distinct !DILexicalBlock(scope: !5013, file: !593, line: 149, column: 11)
!5013 = distinct !DILexicalBlock(scope: !4922, file: !593, line: 148, column: 13)
!5014 = !DILocation(line: 151, column: 17, scope: !5012, inlinedAt: !4978)
!5015 = !DILocation(line: 152, column: 34, scope: !5016, inlinedAt: !4978)
!5016 = distinct !DILexicalBlock(scope: !5012, file: !593, line: 151, column: 17)
!5017 = !DILocation(line: 153, column: 41, scope: !5012, inlinedAt: !4978)
!5018 = !DILocation(line: 153, column: 13, scope: !5012, inlinedAt: !4978)
!5019 = !DILocation(line: 157, column: 11, scope: !4913, inlinedAt: !4978)
!5020 = !DILocation(line: 171, column: 16, scope: !4911, inlinedAt: !4978)
!5021 = !DILocation(line: 162, column: 15, scope: !4911, inlinedAt: !4978)
!5022 = !DILocation(line: 173, column: 18, scope: !4910, inlinedAt: !4978)
!5023 = !DILocation(line: 173, column: 15, scope: !4911, inlinedAt: !4978)
!5024 = !DILocation(line: 180, column: 20, scope: !4909, inlinedAt: !4978)
!5025 = !DILocation(line: 178, column: 21, scope: !4909, inlinedAt: !4978)
!5026 = !DILocation(line: 181, column: 22, scope: !4908, inlinedAt: !4978)
!5027 = !DILocation(line: 181, column: 19, scope: !4909, inlinedAt: !4978)
!5028 = !DILocation(line: 184, column: 19, scope: !5029, inlinedAt: !4978)
!5029 = distinct !DILexicalBlock(scope: !4908, file: !593, line: 182, column: 17)
!5030 = !DILocation(line: 186, column: 17, scope: !5029, inlinedAt: !4978)
!5031 = !DILocation(line: 190, column: 25, scope: !4907, inlinedAt: !4978)
!5032 = !DILocation(line: 191, column: 26, scope: !4907, inlinedAt: !4978)
!5033 = !DILocation(line: 193, column: 19, scope: !4907, inlinedAt: !4978)
!5034 = !DILocation(line: 196, column: 23, scope: !4904, inlinedAt: !4978)
!5035 = !DILocation(line: 197, column: 23, scope: !4904, inlinedAt: !4978)
!5036 = !DILocalVariable(name: "__fp", arg: 1, scope: !5037, file: !666, line: 63, type: !4927)
!5037 = distinct !DISubprogram(name: "getc_unlocked", scope: !666, file: !666, line: 63, type: !5038, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !249, variables: !5040)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!34, !4927}
!5040 = !{!5036}
!5041 = !DILocation(line: 63, column: 22, scope: !5037, inlinedAt: !5042)
!5042 = distinct !DILocation(line: 201, column: 27, scope: !4904, inlinedAt: !4978)
!5043 = !DILocation(line: 65, column: 10, scope: !5037, inlinedAt: !5042)
!5044 = !{!674, !659, i64 8}
!5045 = !{!674, !659, i64 16}
!5046 = !DILocation(line: 195, column: 27, scope: !4904, inlinedAt: !4978)
!5047 = !DILocation(line: 202, column: 27, scope: !4904, inlinedAt: !4978)
!5048 = distinct !{!5048, !5049, !5052}
!5049 = !DILocation(line: 209, column: 27, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5051, file: !593, line: 207, column: 25)
!5051 = distinct !DILexicalBlock(scope: !4904, file: !593, line: 206, column: 27)
!5052 = !DILocation(line: 211, column: 58, scope: !5050)
!5053 = !DILocation(line: 65, column: 10, scope: !5037, inlinedAt: !5054)
!5054 = distinct !DILocation(line: 210, column: 33, scope: !5050, inlinedAt: !4978)
!5055 = !DILocation(line: 63, column: 22, scope: !5037, inlinedAt: !5054)
!5056 = !DILocation(line: 210, column: 29, scope: !5050, inlinedAt: !4978)
!5057 = distinct !{!5057, !5058, !5059}
!5058 = !DILocation(line: 193, column: 19, scope: !4906)
!5059 = !DILocation(line: 241, column: 21, scope: !4906)
!5060 = !DILocation(line: 216, column: 23, scope: !4904, inlinedAt: !4978)
!5061 = !DILocation(line: 217, column: 27, scope: !5062, inlinedAt: !4978)
!5062 = distinct !DILexicalBlock(scope: !4904, file: !593, line: 217, column: 27)
!5063 = !DILocation(line: 217, column: 64, scope: !5062, inlinedAt: !4978)
!5064 = !DILocation(line: 217, column: 27, scope: !4904, inlinedAt: !4978)
!5065 = !DILocation(line: 219, column: 28, scope: !4904, inlinedAt: !4978)
!5066 = !DILocation(line: 198, column: 30, scope: !4904, inlinedAt: !4978)
!5067 = !DILocation(line: 220, column: 28, scope: !4904, inlinedAt: !4978)
!5068 = !DILocation(line: 198, column: 34, scope: !4904, inlinedAt: !4978)
!5069 = !DILocation(line: 199, column: 29, scope: !4904, inlinedAt: !4978)
!5070 = !DILocation(line: 222, column: 36, scope: !5071, inlinedAt: !4978)
!5071 = distinct !DILexicalBlock(scope: !4904, file: !593, line: 222, column: 27)
!5072 = !DILocation(line: 222, column: 27, scope: !4904, inlinedAt: !4978)
!5073 = !DILocation(line: 225, column: 63, scope: !5074, inlinedAt: !4978)
!5074 = distinct !DILexicalBlock(scope: !5071, file: !593, line: 223, column: 25)
!5075 = !DILocation(line: 225, column: 46, scope: !5074, inlinedAt: !4978)
!5076 = !DILocation(line: 226, column: 25, scope: !5074, inlinedAt: !4978)
!5077 = !DILocation(line: 229, column: 36, scope: !5078, inlinedAt: !4978)
!5078 = distinct !DILexicalBlock(scope: !5071, file: !593, line: 228, column: 25)
!5079 = !DILocation(line: 230, column: 73, scope: !5078, inlinedAt: !4978)
!5080 = !DILocation(line: 230, column: 46, scope: !5078, inlinedAt: !4978)
!5081 = !DILocation(line: 232, column: 35, scope: !5082, inlinedAt: !4978)
!5082 = distinct !DILexicalBlock(scope: !4904, file: !593, line: 232, column: 27)
!5083 = !DILocation(line: 232, column: 27, scope: !4904, inlinedAt: !4978)
!5084 = !DILocation(line: 236, column: 27, scope: !5085, inlinedAt: !4978)
!5085 = distinct !DILexicalBlock(scope: !5082, file: !593, line: 233, column: 25)
!5086 = !DILocation(line: 237, column: 27, scope: !5085, inlinedAt: !4978)
!5087 = !DILocation(line: 241, column: 21, scope: !4905, inlinedAt: !4978)
!5088 = !DILocation(line: 239, column: 39, scope: !4904, inlinedAt: !4978)
!5089 = !DILocation(line: 239, column: 50, scope: !4904, inlinedAt: !4978)
!5090 = !DILocation(line: 239, column: 61, scope: !4904, inlinedAt: !4978)
!5091 = !DILocalVariable(name: "__dest", arg: 1, scope: !5092, file: !1985, line: 88, type: !5095)
!5092 = distinct !DISubprogram(name: "strcpy", scope: !1985, file: !1985, line: 88, type: !5093, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !249, variables: !5097)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{!43, !5095, !5096}
!5095 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!5096 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !99)
!5097 = !{!5091, !5098}
!5098 = !DILocalVariable(name: "__src", arg: 2, scope: !5092, file: !1985, line: 88, type: !5096)
!5099 = !DILocation(line: 88, column: 1, scope: !5092, inlinedAt: !5100)
!5100 = distinct !DILocation(line: 239, column: 23, scope: !4904, inlinedAt: !4978)
!5101 = !DILocation(line: 90, column: 49, scope: !5092, inlinedAt: !5100)
!5102 = !DILocation(line: 90, column: 10, scope: !5092, inlinedAt: !5100)
!5103 = !DILocation(line: 88, column: 1, scope: !5092, inlinedAt: !5104)
!5104 = distinct !DILocation(line: 240, column: 23, scope: !4904, inlinedAt: !4978)
!5105 = !DILocation(line: 90, column: 49, scope: !5092, inlinedAt: !5104)
!5106 = !DILocation(line: 90, column: 10, scope: !5092, inlinedAt: !5104)
!5107 = !DILocation(line: 193, column: 19, scope: !4905, inlinedAt: !4978)
!5108 = !DILocation(line: 242, column: 19, scope: !4907, inlinedAt: !4978)
!5109 = !DILocation(line: 243, column: 32, scope: !5110, inlinedAt: !4978)
!5110 = distinct !DILexicalBlock(scope: !4907, file: !593, line: 243, column: 23)
!5111 = !DILocation(line: 243, column: 23, scope: !4907, inlinedAt: !4978)
!5112 = !DILocation(line: 247, column: 33, scope: !5113, inlinedAt: !4978)
!5113 = distinct !DILexicalBlock(scope: !5110, file: !593, line: 246, column: 21)
!5114 = !DILocation(line: 247, column: 45, scope: !5113, inlinedAt: !4978)
!5115 = !DILocation(line: 253, column: 11, scope: !4911, inlinedAt: !4978)
!5116 = !DILocation(line: 377, column: 23, scope: !4913, inlinedAt: !4978)
!5117 = !DILocation(line: 378, column: 5, scope: !4913, inlinedAt: !4978)
!5118 = !DILocation(line: 396, column: 15, scope: !4897)
!5119 = !DILocation(line: 590, column: 8, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !4979, file: !593, line: 589, column: 3)
!5121 = !DILocation(line: 590, column: 17, scope: !5120)
!5122 = !DILocation(line: 589, column: 3, scope: !4979)
!5123 = !DILocation(line: 592, column: 9, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5120, file: !593, line: 592, column: 9)
!5125 = !DILocation(line: 592, column: 35, scope: !5124)
!5126 = !DILocation(line: 593, column: 9, scope: !5124)
!5127 = !DILocation(line: 593, column: 24, scope: !5124)
!5128 = !DILocation(line: 593, column: 31, scope: !5124)
!5129 = !DILocation(line: 593, column: 34, scope: !5124)
!5130 = !DILocation(line: 593, column: 45, scope: !5124)
!5131 = !DILocation(line: 592, column: 9, scope: !5120)
!5132 = !DILocation(line: 595, column: 29, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5124, file: !593, line: 594, column: 7)
!5134 = !DILocation(line: 595, column: 27, scope: !5133)
!5135 = !DILocation(line: 595, column: 46, scope: !5133)
!5136 = !DILocation(line: 596, column: 9, scope: !5133)
!5137 = !DILocation(line: 591, column: 19, scope: !5120)
!5138 = !DILocation(line: 591, column: 36, scope: !5120)
!5139 = !DILocation(line: 591, column: 16, scope: !5120)
!5140 = !DILocation(line: 591, column: 52, scope: !5120)
!5141 = !DILocation(line: 591, column: 69, scope: !5120)
!5142 = !DILocation(line: 591, column: 49, scope: !5120)
!5143 = distinct !{!5143, !5122, !5144}
!5144 = !DILocation(line: 597, column: 7, scope: !4979)
!5145 = !DILocation(line: 602, column: 7, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !4897, file: !593, line: 602, column: 7)
!5147 = !DILocation(line: 602, column: 18, scope: !5146)
!5148 = !DILocation(line: 602, column: 7, scope: !4897)
!5149 = !DILocation(line: 612, column: 3, scope: !4897)
!5150 = distinct !DISubprogram(name: "rpl_fclose", scope: !5151, file: !5151, line: 56, type: !5152, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !5194)
!5151 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5152 = !DISubroutineType(types: !5153)
!5153 = !{!34, !5154}
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5155, size: 64)
!5155 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4283, line: 7, baseType: !5156)
!5156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4285, line: 241, size: 1728, elements: !5157)
!5157 = !{!5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5156, file: !4285, line: 242, baseType: !34, size: 32)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5156, file: !4285, line: 247, baseType: !43, size: 64, offset: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5156, file: !4285, line: 248, baseType: !43, size: 64, offset: 128)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5156, file: !4285, line: 249, baseType: !43, size: 64, offset: 192)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5156, file: !4285, line: 250, baseType: !43, size: 64, offset: 256)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5156, file: !4285, line: 251, baseType: !43, size: 64, offset: 320)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5156, file: !4285, line: 252, baseType: !43, size: 64, offset: 384)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5156, file: !4285, line: 253, baseType: !43, size: 64, offset: 448)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5156, file: !4285, line: 254, baseType: !43, size: 64, offset: 512)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5156, file: !4285, line: 256, baseType: !43, size: 64, offset: 576)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5156, file: !4285, line: 257, baseType: !43, size: 64, offset: 640)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5156, file: !4285, line: 258, baseType: !43, size: 64, offset: 704)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5156, file: !4285, line: 260, baseType: !5171, size: 64, offset: 768)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4285, line: 156, size: 192, elements: !5173)
!5173 = !{!5174, !5175, !5177}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5172, file: !4285, line: 157, baseType: !5171, size: 64)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5172, file: !4285, line: 158, baseType: !5176, size: 64, offset: 64)
!5176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5172, file: !4285, line: 162, baseType: !34, size: 32, offset: 128)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5156, file: !4285, line: 262, baseType: !5176, size: 64, offset: 832)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5156, file: !4285, line: 264, baseType: !34, size: 32, offset: 896)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5156, file: !4285, line: 268, baseType: !34, size: 32, offset: 928)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5156, file: !4285, line: 270, baseType: !4311, size: 64, offset: 960)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5156, file: !4285, line: 274, baseType: !193, size: 16, offset: 1024)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5156, file: !4285, line: 275, baseType: !4315, size: 8, offset: 1040)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5156, file: !4285, line: 276, baseType: !4317, size: 8, offset: 1048)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5156, file: !4285, line: 280, baseType: !4319, size: 64, offset: 1088)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5156, file: !4285, line: 289, baseType: !4322, size: 64, offset: 1152)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5156, file: !4285, line: 297, baseType: !101, size: 64, offset: 1216)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5156, file: !4285, line: 298, baseType: !101, size: 64, offset: 1280)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5156, file: !4285, line: 299, baseType: !101, size: 64, offset: 1344)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5156, file: !4285, line: 300, baseType: !101, size: 64, offset: 1408)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5156, file: !4285, line: 302, baseType: !194, size: 64, offset: 1472)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5156, file: !4285, line: 303, baseType: !34, size: 32, offset: 1536)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5156, file: !4285, line: 305, baseType: !4330, size: 160, offset: 1568)
!5194 = !{!5195, !5196, !5197, !5198}
!5195 = !DILocalVariable(name: "fp", arg: 1, scope: !5150, file: !5151, line: 56, type: !5154)
!5196 = !DILocalVariable(name: "saved_errno", scope: !5150, file: !5151, line: 58, type: !34)
!5197 = !DILocalVariable(name: "fd", scope: !5150, file: !5151, line: 59, type: !34)
!5198 = !DILocalVariable(name: "result", scope: !5150, file: !5151, line: 60, type: !34)
!5199 = !DILocation(line: 56, column: 19, scope: !5150)
!5200 = !DILocation(line: 58, column: 7, scope: !5150)
!5201 = !DILocation(line: 60, column: 7, scope: !5150)
!5202 = !DILocation(line: 63, column: 8, scope: !5150)
!5203 = !DILocation(line: 59, column: 7, scope: !5150)
!5204 = !DILocation(line: 64, column: 10, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5150, file: !5151, line: 64, column: 7)
!5206 = !DILocation(line: 64, column: 7, scope: !5150)
!5207 = !DILocation(line: 65, column: 12, scope: !5205)
!5208 = !DILocation(line: 65, column: 5, scope: !5205)
!5209 = !DILocation(line: 70, column: 9, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5150, file: !5151, line: 70, column: 7)
!5211 = !DILocation(line: 70, column: 23, scope: !5210)
!5212 = !DILocation(line: 70, column: 33, scope: !5210)
!5213 = !DILocation(line: 70, column: 26, scope: !5210)
!5214 = !DILocation(line: 70, column: 59, scope: !5210)
!5215 = !DILocation(line: 71, column: 7, scope: !5210)
!5216 = !DILocation(line: 71, column: 10, scope: !5210)
!5217 = !DILocation(line: 70, column: 7, scope: !5150)
!5218 = !DILocation(line: 98, column: 12, scope: !5150)
!5219 = !DILocation(line: 103, column: 7, scope: !5150)
!5220 = !DILocation(line: 72, column: 19, scope: !5210)
!5221 = !DILocation(line: 103, column: 19, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5150, file: !5151, line: 103, column: 7)
!5223 = !DILocation(line: 105, column: 13, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5222, file: !5151, line: 104, column: 5)
!5225 = !DILocation(line: 107, column: 5, scope: !5224)
!5226 = !DILocation(line: 110, column: 1, scope: !5150)
!5227 = distinct !DISubprogram(name: "rpl_fflush", scope: !5228, file: !5228, line: 127, type: !5229, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !5271)
!5228 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5229 = !DISubroutineType(types: !5230)
!5230 = !{!34, !5231}
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5232, size: 64)
!5232 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4283, line: 7, baseType: !5233)
!5233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4285, line: 241, size: 1728, elements: !5234)
!5234 = !{!5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270}
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5233, file: !4285, line: 242, baseType: !34, size: 32)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5233, file: !4285, line: 247, baseType: !43, size: 64, offset: 64)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5233, file: !4285, line: 248, baseType: !43, size: 64, offset: 128)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5233, file: !4285, line: 249, baseType: !43, size: 64, offset: 192)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5233, file: !4285, line: 250, baseType: !43, size: 64, offset: 256)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5233, file: !4285, line: 251, baseType: !43, size: 64, offset: 320)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5233, file: !4285, line: 252, baseType: !43, size: 64, offset: 384)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5233, file: !4285, line: 253, baseType: !43, size: 64, offset: 448)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5233, file: !4285, line: 254, baseType: !43, size: 64, offset: 512)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5233, file: !4285, line: 256, baseType: !43, size: 64, offset: 576)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5233, file: !4285, line: 257, baseType: !43, size: 64, offset: 640)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5233, file: !4285, line: 258, baseType: !43, size: 64, offset: 704)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5233, file: !4285, line: 260, baseType: !5248, size: 64, offset: 768)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4285, line: 156, size: 192, elements: !5250)
!5250 = !{!5251, !5252, !5254}
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5249, file: !4285, line: 157, baseType: !5248, size: 64)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5249, file: !4285, line: 158, baseType: !5253, size: 64, offset: 64)
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5233, size: 64)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5249, file: !4285, line: 162, baseType: !34, size: 32, offset: 128)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5233, file: !4285, line: 262, baseType: !5253, size: 64, offset: 832)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5233, file: !4285, line: 264, baseType: !34, size: 32, offset: 896)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5233, file: !4285, line: 268, baseType: !34, size: 32, offset: 928)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5233, file: !4285, line: 270, baseType: !4311, size: 64, offset: 960)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5233, file: !4285, line: 274, baseType: !193, size: 16, offset: 1024)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5233, file: !4285, line: 275, baseType: !4315, size: 8, offset: 1040)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5233, file: !4285, line: 276, baseType: !4317, size: 8, offset: 1048)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5233, file: !4285, line: 280, baseType: !4319, size: 64, offset: 1088)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5233, file: !4285, line: 289, baseType: !4322, size: 64, offset: 1152)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5233, file: !4285, line: 297, baseType: !101, size: 64, offset: 1216)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5233, file: !4285, line: 298, baseType: !101, size: 64, offset: 1280)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5233, file: !4285, line: 299, baseType: !101, size: 64, offset: 1344)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5233, file: !4285, line: 300, baseType: !101, size: 64, offset: 1408)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5233, file: !4285, line: 302, baseType: !194, size: 64, offset: 1472)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5233, file: !4285, line: 303, baseType: !34, size: 32, offset: 1536)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5233, file: !4285, line: 305, baseType: !4330, size: 160, offset: 1568)
!5271 = !{!5272}
!5272 = !DILocalVariable(name: "stream", arg: 1, scope: !5227, file: !5228, line: 127, type: !5231)
!5273 = !DILocation(line: 127, column: 19, scope: !5227)
!5274 = !DILocation(line: 148, column: 14, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5227, file: !5228, line: 148, column: 7)
!5276 = !DILocation(line: 148, column: 22, scope: !5275)
!5277 = !DILocation(line: 148, column: 27, scope: !5275)
!5278 = !DILocation(line: 148, column: 7, scope: !5227)
!5279 = !DILocation(line: 149, column: 12, scope: !5275)
!5280 = !DILocation(line: 149, column: 5, scope: !5275)
!5281 = !DILocalVariable(name: "fp", arg: 1, scope: !5282, file: !5228, line: 40, type: !5231)
!5282 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5228, file: !5228, line: 40, type: !5283, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !636, variables: !5285)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{null, !5231}
!5285 = !{!5281}
!5286 = !DILocation(line: 40, column: 48, scope: !5282, inlinedAt: !5287)
!5287 = distinct !DILocation(line: 153, column: 3, scope: !5227)
!5288 = !DILocation(line: 42, column: 11, scope: !5289, inlinedAt: !5287)
!5289 = distinct !DILexicalBlock(scope: !5282, file: !5228, line: 42, column: 7)
!5290 = !DILocation(line: 42, column: 18, scope: !5289, inlinedAt: !5287)
!5291 = !DILocation(line: 42, column: 7, scope: !5282, inlinedAt: !5287)
!5292 = !DILocation(line: 44, column: 5, scope: !5289, inlinedAt: !5287)
!5293 = !DILocation(line: 155, column: 10, scope: !5227)
!5294 = !DILocation(line: 155, column: 3, scope: !5227)
!5295 = !DILocation(line: 229, column: 1, scope: !5227)
!5296 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5297, file: !5297, line: 28, type: !5298, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !638, variables: !5341)
!5297 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5298 = !DISubroutineType(types: !5299)
!5299 = !{!34, !5300, !5340, !34}
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4283, line: 7, baseType: !5302)
!5302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4285, line: 241, size: 1728, elements: !5303)
!5303 = !{!5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339}
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5302, file: !4285, line: 242, baseType: !34, size: 32)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5302, file: !4285, line: 247, baseType: !43, size: 64, offset: 64)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5302, file: !4285, line: 248, baseType: !43, size: 64, offset: 128)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5302, file: !4285, line: 249, baseType: !43, size: 64, offset: 192)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5302, file: !4285, line: 250, baseType: !43, size: 64, offset: 256)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5302, file: !4285, line: 251, baseType: !43, size: 64, offset: 320)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5302, file: !4285, line: 252, baseType: !43, size: 64, offset: 384)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5302, file: !4285, line: 253, baseType: !43, size: 64, offset: 448)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5302, file: !4285, line: 254, baseType: !43, size: 64, offset: 512)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5302, file: !4285, line: 256, baseType: !43, size: 64, offset: 576)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5302, file: !4285, line: 257, baseType: !43, size: 64, offset: 640)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5302, file: !4285, line: 258, baseType: !43, size: 64, offset: 704)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5302, file: !4285, line: 260, baseType: !5317, size: 64, offset: 768)
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5318, size: 64)
!5318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4285, line: 156, size: 192, elements: !5319)
!5319 = !{!5320, !5321, !5323}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5318, file: !4285, line: 157, baseType: !5317, size: 64)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5318, file: !4285, line: 158, baseType: !5322, size: 64, offset: 64)
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5318, file: !4285, line: 162, baseType: !34, size: 32, offset: 128)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5302, file: !4285, line: 262, baseType: !5322, size: 64, offset: 832)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5302, file: !4285, line: 264, baseType: !34, size: 32, offset: 896)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5302, file: !4285, line: 268, baseType: !34, size: 32, offset: 928)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5302, file: !4285, line: 270, baseType: !4311, size: 64, offset: 960)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5302, file: !4285, line: 274, baseType: !193, size: 16, offset: 1024)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5302, file: !4285, line: 275, baseType: !4315, size: 8, offset: 1040)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5302, file: !4285, line: 276, baseType: !4317, size: 8, offset: 1048)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5302, file: !4285, line: 280, baseType: !4319, size: 64, offset: 1088)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5302, file: !4285, line: 289, baseType: !4322, size: 64, offset: 1152)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5302, file: !4285, line: 297, baseType: !101, size: 64, offset: 1216)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5302, file: !4285, line: 298, baseType: !101, size: 64, offset: 1280)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5302, file: !4285, line: 299, baseType: !101, size: 64, offset: 1344)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5302, file: !4285, line: 300, baseType: !101, size: 64, offset: 1408)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5302, file: !4285, line: 302, baseType: !194, size: 64, offset: 1472)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5302, file: !4285, line: 303, baseType: !34, size: 32, offset: 1536)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5302, file: !4285, line: 305, baseType: !4330, size: 160, offset: 1568)
!5340 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2350, line: 57, baseType: !4311)
!5341 = !{!5342, !5343, !5344, !5345}
!5342 = !DILocalVariable(name: "fp", arg: 1, scope: !5296, file: !5297, line: 28, type: !5300)
!5343 = !DILocalVariable(name: "offset", arg: 2, scope: !5296, file: !5297, line: 28, type: !5340)
!5344 = !DILocalVariable(name: "whence", arg: 3, scope: !5296, file: !5297, line: 28, type: !34)
!5345 = !DILocalVariable(name: "pos", scope: !5346, file: !5297, line: 116, type: !5340)
!5346 = distinct !DILexicalBlock(scope: !5347, file: !5297, line: 112, column: 5)
!5347 = distinct !DILexicalBlock(scope: !5296, file: !5297, line: 51, column: 7)
!5348 = !DILocation(line: 28, column: 15, scope: !5296)
!5349 = !DILocation(line: 28, column: 25, scope: !5296)
!5350 = !DILocation(line: 28, column: 37, scope: !5296)
!5351 = !DILocation(line: 51, column: 11, scope: !5347)
!5352 = !DILocation(line: 51, column: 31, scope: !5347)
!5353 = !DILocation(line: 51, column: 24, scope: !5347)
!5354 = !DILocation(line: 52, column: 7, scope: !5347)
!5355 = !DILocation(line: 52, column: 14, scope: !5347)
!5356 = !DILocation(line: 52, column: 35, scope: !5347)
!5357 = !{!674, !659, i64 32}
!5358 = !DILocation(line: 52, column: 28, scope: !5347)
!5359 = !DILocation(line: 53, column: 7, scope: !5347)
!5360 = !DILocation(line: 53, column: 14, scope: !5347)
!5361 = !{!674, !659, i64 72}
!5362 = !DILocation(line: 53, column: 28, scope: !5347)
!5363 = !DILocation(line: 51, column: 7, scope: !5296)
!5364 = !DILocation(line: 116, column: 26, scope: !5346)
!5365 = !DILocation(line: 116, column: 19, scope: !5346)
!5366 = !DILocation(line: 116, column: 13, scope: !5346)
!5367 = !DILocation(line: 117, column: 15, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5346, file: !5297, line: 117, column: 11)
!5369 = !DILocation(line: 117, column: 11, scope: !5346)
!5370 = !DILocation(line: 127, column: 11, scope: !5346)
!5371 = !DILocation(line: 127, column: 18, scope: !5346)
!5372 = !DILocation(line: 128, column: 11, scope: !5346)
!5373 = !DILocation(line: 128, column: 19, scope: !5346)
!5374 = !{!674, !676, i64 144}
!5375 = !DILocation(line: 159, column: 7, scope: !5346)
!5376 = !DILocation(line: 161, column: 10, scope: !5296)
!5377 = !DILocation(line: 161, column: 3, scope: !5296)
!5378 = !DILocation(line: 162, column: 1, scope: !5296)
