; ModuleID = 'coreutils-8.27/src/[.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"Usage: test EXPRESSION\0A  or:  test\0A  or:  [ EXPRESSION ]\0A  or:  [ ]\0A  or:  [ OPTION\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Exit with the status determined by EXPRESSION.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [120 x i8] c"\0AAn omitted EXPRESSION defaults to false.  Otherwise,\0AEXPRESSION is true or false and sets exit status.  It is one of:\0A\00", align 1
@.str.6 = private unnamed_addr constant [249 x i8] c"\0A  ( EXPRESSION )               EXPRESSION is true\0A  ! EXPRESSION                 EXPRESSION is false\0A  EXPRESSION1 -a EXPRESSION2   both EXPRESSION1 and EXPRESSION2 are true\0A  EXPRESSION1 -o EXPRESSION2   either EXPRESSION1 or EXPRESSION2 is true\0A\00", align 1
@.str.7 = private unnamed_addr constant [250 x i8] c"\0A  -n STRING            the length of STRING is nonzero\0A  STRING               equivalent to -n STRING\0A  -z STRING            the length of STRING is zero\0A  STRING1 = STRING2    the strings are equal\0A  STRING1 != STRING2   the strings are not equal\0A\00", align 1
@.str.8 = private unnamed_addr constant [376 x i8] c"\0A  INTEGER1 -eq INTEGER2   INTEGER1 is equal to INTEGER2\0A  INTEGER1 -ge INTEGER2   INTEGER1 is greater than or equal to INTEGER2\0A  INTEGER1 -gt INTEGER2   INTEGER1 is greater than INTEGER2\0A  INTEGER1 -le INTEGER2   INTEGER1 is less than or equal to INTEGER2\0A  INTEGER1 -lt INTEGER2   INTEGER1 is less than INTEGER2\0A  INTEGER1 -ne INTEGER2   INTEGER1 is not equal to INTEGER2\0A\00", align 1
@.str.9 = private unnamed_addr constant [189 x i8] c"\0A  FILE1 -ef FILE2   FILE1 and FILE2 have the same device and inode numbers\0A  FILE1 -nt FILE2   FILE1 is newer (modification date) than FILE2\0A  FILE1 -ot FILE2   FILE1 is older than FILE2\0A\00", align 1
@.str.10 = private unnamed_addr constant [171 x i8] c"\0A  -b FILE     FILE exists and is block special\0A  -c FILE     FILE exists and is character special\0A  -d FILE     FILE exists and is a directory\0A  -e FILE     FILE exists\0A\00", align 1
@.str.11 = private unnamed_addr constant [275 x i8] c"  -f FILE     FILE exists and is a regular file\0A  -g FILE     FILE exists and is set-group-ID\0A  -G FILE     FILE exists and is owned by the effective group ID\0A  -h FILE     FILE exists and is a symbolic link (same as -L)\0A  -k FILE     FILE exists and has its sticky bit set\0A\00", align 1
@.str.12 = private unnamed_addr constant [289 x i8] c"  -L FILE     FILE exists and is a symbolic link (same as -h)\0A  -O FILE     FILE exists and is owned by the effective user ID\0A  -p FILE     FILE exists and is a named pipe\0A  -r FILE     FILE exists and read permission is granted\0A  -s FILE     FILE exists and has a size greater than zero\0A\00", align 1
@.str.13 = private unnamed_addr constant [287 x i8] c"  -S FILE     FILE exists and is a socket\0A  -t FD       file descriptor FD is opened on a terminal\0A  -u FILE     FILE exists and its set-user-ID bit is set\0A  -w FILE     FILE exists and write permission is granted\0A  -x FILE     FILE exists and execute (or search) permission is granted\0A\00", align 1
@.str.14 = private unnamed_addr constant [225 x i8] c"\0AExcept for -h and -L, all FILE-related tests dereference symbolic links.\0ABeware that parentheses need to be escaped (e.g., by backslashes) for shells.\0AINTEGER may also be -l STRING, which evaluates to the length of STRING.\0A\00", align 1
@.str.15 = private unnamed_addr constant [122 x i8] c"\0ANOTE: Binary -a and -o are inherently ambiguous.  Use 'test EXPR1 && test\0AEXPR2' or 'test EXPR1 || test EXPR2' instead.\0A\00", align 1
@.str.16 = private unnamed_addr constant [136 x i8] c"\0ANOTE: [ honors the --help and --version options, but test does not.\0Atest treats each of those as it treats any other nonempty STRING.\0A\00", align 1
@.str.17 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"test and/or [\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.41 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@argv = internal unnamed_addr global i8** null, align 8, !dbg !0
@.str.23 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"Kevin Braunsdorf\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Matthew Bradburn\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"missing %s\00", align 1
@argc = internal unnamed_addr global i32 0, align 4, !dbg !36
@pos = internal unnamed_addr global i32 0, align 4, !dbg !34
@.str.30 = private unnamed_addr constant [18 x i8] c"extra argument %s\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"%s expected\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"%s expected, found %s\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"%s: unary operator expected\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"invalid integer %s\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"-nt does not accept -l\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"-ef does not accept -l\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"-ot does not accept -l\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"%s: unknown binary operator\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"-nt\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"-ot\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"-ef\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"-eq\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"-ne\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"-lt\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"-le\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"-gt\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"-ge\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"missing argument after %s\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"%s: binary operator expected\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), align 8, !dbg !61
@.str.32 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !67
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !72
@.str.35 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.36 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !76
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !83
@.str.73 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.78, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.79, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.80, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.85, i32 0, i32 0), i8* null], align 16, !dbg !90
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !119
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !126
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !138
@.str.11.86 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.87 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.88 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.89 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.90 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.91 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.92 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !145
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !152
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !140
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !154
@.str.103 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.104 = private unnamed_addr constant [32 x i8] c"unable to display error message\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.106 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.107 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.108 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.109 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.110 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.111 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.112 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.113 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.114 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.115 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.116 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.117 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.118 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.121 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.122 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.123 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.124 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.125 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.126 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !160
@.str.1.137 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.149 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.150 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.153 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !169
@.str.3.154 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.155 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.156 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.157 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.158 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.159 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !581 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !585, metadata !586), !dbg !587
  %2 = icmp eq i32 %0, 0, !dbg !588
  br i1 %2, label %8, label %3, !dbg !590

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !591, !tbaa !593
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !591
  %6 = load i8*, i8** @program_name, align 8, !dbg !591, !tbaa !593
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !591
  br label %75, !dbg !591

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !597
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !597, !tbaa !593
  %11 = tail call i32 @fputs_unlocked(i8* %9, %struct._IO_FILE* %10) #11, !dbg !597
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !599
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !599, !tbaa !593
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !599
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !600
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !600, !tbaa !593
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !600
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !601
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !601, !tbaa !593
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !601
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !602
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !602, !tbaa !593
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !602
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !603
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !603, !tbaa !593
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !603
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([250 x i8], [250 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !604
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !604, !tbaa !593
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11, !dbg !604
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([376 x i8], [376 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !605
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !605, !tbaa !593
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11, !dbg !605
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !606
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !606, !tbaa !593
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #11, !dbg !606
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.10, i64 0, i64 0), i32 5) #11, !dbg !607
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !607, !tbaa !593
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #11, !dbg !607
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.11, i64 0, i64 0), i32 5) #11, !dbg !608
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !608, !tbaa !593
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #11, !dbg !608
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([289 x i8], [289 x i8]* @.str.12, i64 0, i64 0), i32 5) #11, !dbg !609
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !609, !tbaa !593
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #11, !dbg !609
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([287 x i8], [287 x i8]* @.str.13, i64 0, i64 0), i32 5) #11, !dbg !610
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !610, !tbaa !593
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #11, !dbg !610
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.14, i64 0, i64 0), i32 5) #11, !dbg !611
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !611, !tbaa !593
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #11, !dbg !611
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.15, i64 0, i64 0), i32 5) #11, !dbg !612
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !612, !tbaa !593
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #11, !dbg !612
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !613
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !613, !tbaa !593
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #11, !dbg !613
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !614
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !614
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* %58) #11, !dbg !614
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i64 0, metadata !48, metadata !586) #11, !dbg !615
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i32 5) #11, !dbg !617
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0)) #11, !dbg !617
  %62 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !618
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !56, metadata !586) #11, !dbg !619
  %63 = icmp eq i8* %62, null, !dbg !620
  br i1 %63, label %70, label %64, !dbg !622

; <label>:64:                                     ; preds = %8
  %65 = tail call i32 @strncmp(i8* nonnull %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i64 3) #14, !dbg !623
  %66 = icmp eq i32 %65, 0, !dbg !623
  br i1 %66, label %70, label %67, !dbg !624

; <label>:67:                                     ; preds = %64
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !625
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #11, !dbg !625
  br label %70, !dbg !627

; <label>:70:                                     ; preds = %8, %64, %67
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !628
  %72 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #11, !dbg !628
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !629
  %74 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #11, !dbg !629
  br label %75

; <label>:75:                                     ; preds = %70, %3
  tail call void @exit(i32 %0) #15, !dbg !630
  unreachable, !dbg !630
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !631 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !635, metadata !586), !dbg !638
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !636, metadata !586), !dbg !639
  %3 = load i8*, i8** %1, align 8, !dbg !640, !tbaa !593
  tail call void @set_program_name(i8* %3) #11, !dbg !641
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #11, !dbg !642
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0)) #11, !dbg !643
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #11, !dbg !644
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !645, metadata !586), !dbg !648
  store volatile i32 2, i32* @exit_failure, align 4, !dbg !650, !tbaa !652
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !654
  store i8** %1, i8*** @argv, align 8, !dbg !655, !tbaa !593
  %8 = icmp eq i32 %0, 2, !dbg !656
  br i1 %8, label %9, label %21, !dbg !660

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !661
  %11 = load i8*, i8** %10, align 8, !dbg !661, !tbaa !593
  %12 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #14, !dbg !661
  %13 = icmp eq i32 %12, 0, !dbg !661
  br i1 %13, label %14, label %15, !dbg !664

; <label>:14:                                     ; preds = %9
  tail call void @usage(i32 0) #16, !dbg !665
  unreachable, !dbg !665

; <label>:15:                                     ; preds = %9
  %16 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0)) #14, !dbg !666
  %17 = icmp eq i32 %16, 0, !dbg !666
  br i1 %17, label %18, label %23, !dbg !668

; <label>:18:                                     ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !593
  %20 = load i8*, i8** @Version, align 8, !dbg !671, !tbaa !593
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i8* null) #11, !dbg !672
  br label %52, !dbg !673

; <label>:21:                                     ; preds = %2
  %22 = icmp slt i32 %0, 2, !dbg !674
  br i1 %22, label %30, label %23, !dbg !676

; <label>:23:                                     ; preds = %15, %21
  %24 = add nsw i32 %0, -1, !dbg !677
  %25 = sext i32 %24 to i64, !dbg !677
  %26 = getelementptr inbounds i8*, i8** %1, i64 %25, !dbg !677
  %27 = load i8*, i8** %26, align 8, !dbg !677, !tbaa !593
  %28 = tail call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #14, !dbg !677
  %29 = icmp eq i32 %28, 0, !dbg !677
  br i1 %29, label %33, label %30, !dbg !678

; <label>:30:                                     ; preds = %23, %21
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !679
  %32 = tail call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #11, !dbg !680
  tail call void (i8*, ...) @test_syntax_error(i8* %31, i8* %32) #16, !dbg !681
  unreachable, !dbg !681

; <label>:33:                                     ; preds = %23
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !635, metadata !586), !dbg !638
  store i32 %24, i32* @argc, align 4, !dbg !682, !tbaa !652
  store i32 1, i32* @pos, align 4, !dbg !683, !tbaa !652
  %34 = icmp slt i32 %0, 3, !dbg !684
  br i1 %34, label %52, label %35, !dbg !686

; <label>:35:                                     ; preds = %33
  %36 = add nsw i32 %0, -2, !dbg !687
  %37 = tail call fastcc zeroext i1 @posixtest(i32 %36), !dbg !688
  %38 = load i32, i32* @pos, align 4, !dbg !689, !tbaa !652
  %39 = load i32, i32* @argc, align 4, !dbg !691, !tbaa !652
  %40 = icmp eq i32 %38, %39, !dbg !692
  br i1 %40, label %49, label %41, !dbg !693

; <label>:41:                                     ; preds = %35
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !694
  %43 = load i8**, i8*** @argv, align 8, !dbg !695, !tbaa !593
  %44 = load i32, i32* @pos, align 4, !dbg !696, !tbaa !652
  %45 = sext i32 %44 to i64, !dbg !695
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45, !dbg !695
  %47 = load i8*, i8** %46, align 8, !dbg !695, !tbaa !593
  %48 = tail call i8* @quote(i8* %47) #11, !dbg !697
  tail call void (i8*, ...) @test_syntax_error(i8* %42, i8* %48) #16, !dbg !698
  unreachable, !dbg !698

; <label>:49:                                     ; preds = %35
  %50 = xor i1 %37, true, !dbg !699
  %51 = zext i1 %50 to i32, !dbg !699
  br label %52, !dbg !699

; <label>:52:                                     ; preds = %33, %49, %18
  %53 = phi i32 [ 0, %18 ], [ %51, %49 ], [ 1, %33 ]
  ret i32 %53, !dbg !700
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @test_syntax_error(i8*, ...) unnamed_addr #0 !dbg !701 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !705, metadata !586), !dbg !721
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !722
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #11, !dbg !722
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %2, metadata !706, metadata !586), !dbg !723
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !724
  call void @llvm.va_start(i8* nonnull %3), !dbg !724
  call void @verror(i32 0, i32 0, i8* %0, %struct.__va_list_tag* nonnull %4) #11, !dbg !725
  call void @exit(i32 2) #15, !dbg !726
  unreachable, !dbg !726
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @posixtest(i32) unnamed_addr #6 !dbg !727 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !731, metadata !586), !dbg !733
  switch i32 %0, label %46 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %13
    i32 4, label %15
  ], !dbg !734

; <label>:2:                                      ; preds = %1
  %3 = load i8**, i8*** @argv, align 8, !dbg !735, !tbaa !593
  %4 = load i32, i32* @pos, align 4, !dbg !741, !tbaa !652
  %5 = add nsw i32 %4, 1, !dbg !741
  store i32 %5, i32* @pos, align 4, !dbg !741, !tbaa !652
  %6 = sext i32 %4 to i64, !dbg !735
  %7 = getelementptr inbounds i8*, i8** %3, i64 %6, !dbg !735
  %8 = load i8*, i8** %7, align 8, !dbg !735, !tbaa !593
  %9 = load i8, i8* %8, align 1, !dbg !735, !tbaa !742
  %10 = icmp ne i8 %9, 0, !dbg !743
  br label %96, !dbg !744

; <label>:11:                                     ; preds = %1
  %12 = tail call fastcc zeroext i1 @two_arguments(), !dbg !745
  br label %96, !dbg !746

; <label>:13:                                     ; preds = %1
  %14 = tail call fastcc zeroext i1 @three_arguments(), !dbg !747
  br label %96, !dbg !748

; <label>:15:                                     ; preds = %1
  %16 = load i8**, i8*** @argv, align 8, !dbg !749, !tbaa !593
  %17 = load i32, i32* @pos, align 4, !dbg !749, !tbaa !652
  %18 = sext i32 %17 to i64, !dbg !749
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18, !dbg !749
  %20 = load i8*, i8** %19, align 8, !dbg !749, !tbaa !593
  %21 = tail call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #14, !dbg !749
  %22 = icmp eq i32 %21, 0, !dbg !749
  br i1 %22, label %23, label %31, !dbg !751

; <label>:23:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !757
  %24 = add nsw i32 %17, 1, !dbg !760
  store i32 %24, i32* @pos, align 4, !dbg !760, !tbaa !652
  %25 = load i32, i32* @argc, align 4, !dbg !761
  %26 = icmp slt i32 %24, %25, !dbg !763
  br i1 %26, label %28, label %27, !dbg !764

; <label>:27:                                     ; preds = %23
  tail call fastcc void @beyond() #15, !dbg !765
  unreachable, !dbg !765

; <label>:28:                                     ; preds = %23
  %29 = tail call fastcc zeroext i1 @three_arguments(), !dbg !766
  %30 = xor i1 %29, true, !dbg !767
  br label %96, !dbg !768

; <label>:31:                                     ; preds = %15
  %32 = tail call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #14, !dbg !769
  %33 = icmp eq i32 %32, 0, !dbg !769
  br i1 %33, label %34, label %51, !dbg !771

; <label>:34:                                     ; preds = %31
  %35 = add nsw i32 %17, 3, !dbg !772
  %36 = sext i32 %35 to i64, !dbg !772
  %37 = getelementptr inbounds i8*, i8** %16, i64 %36, !dbg !772
  %38 = load i8*, i8** %37, align 8, !dbg !772, !tbaa !593
  %39 = tail call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #14, !dbg !772
  %40 = icmp eq i32 %39, 0, !dbg !772
  br i1 %40, label %41, label %51, !dbg !773

; <label>:41:                                     ; preds = %34
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !752, metadata !586), !dbg !774
  %42 = add nsw i32 %17, 1, !dbg !777
  store i32 %42, i32* @pos, align 4, !dbg !777, !tbaa !652
  %43 = tail call fastcc zeroext i1 @two_arguments(), !dbg !778
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !752, metadata !586), !dbg !779
  %44 = load i32, i32* @pos, align 4, !dbg !781, !tbaa !652
  %45 = add nsw i32 %44, 1, !dbg !781
  store i32 %45, i32* @pos, align 4, !dbg !781, !tbaa !652
  br label %96, !dbg !782

; <label>:46:                                     ; preds = %1
  %47 = icmp slt i32 %0, 1, !dbg !783
  br i1 %47, label %50, label %48, !dbg !785

; <label>:48:                                     ; preds = %46
  %49 = load i32, i32* @pos, align 4, !dbg !786, !tbaa !652
  br label %51, !dbg !785

; <label>:50:                                     ; preds = %46
  tail call void @abort() #15, !dbg !790
  unreachable, !dbg !790

; <label>:51:                                     ; preds = %48, %31, %34
  %52 = phi i32 [ %49, %48 ], [ %17, %31 ], [ %17, %34 ], !dbg !786
  %53 = load i32, i32* @argc, align 4, !dbg !791, !tbaa !652
  %54 = icmp slt i32 %52, %53, !dbg !792
  br i1 %54, label %56, label %55, !dbg !793

; <label>:55:                                     ; preds = %51
  tail call fastcc void @beyond() #15, !dbg !794
  unreachable, !dbg !794

; <label>:56:                                     ; preds = %51
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !795, metadata !586) #11, !dbg !798
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !800, metadata !586) #11, !dbg !803
  %57 = tail call fastcc zeroext i1 @term() #11, !dbg !806
  %58 = load i32, i32* @pos, align 4, !dbg !808, !tbaa !652
  %59 = load i32, i32* @argc, align 4, !dbg !810, !tbaa !652
  %60 = icmp slt i32 %58, %59, !dbg !811
  br i1 %60, label %61, label %82, !dbg !812

; <label>:61:                                     ; preds = %56
  br label %62, !dbg !812

; <label>:62:                                     ; preds = %61, %90
  %63 = phi i32 [ %93, %90 ], [ %58, %61 ]
  %64 = phi i1 [ %92, %90 ], [ %57, %61 ]
  %65 = phi i1 [ %87, %90 ], [ false, %61 ]
  br label %66, !dbg !812

; <label>:66:                                     ; preds = %62, %75
  %67 = phi i32 [ %63, %62 ], [ %79, %75 ]
  %68 = phi i1 [ %64, %62 ], [ %78, %75 ]
  %69 = load i8**, i8*** @argv, align 8, !dbg !813, !tbaa !593
  %70 = sext i32 %67 to i64, !dbg !813
  %71 = getelementptr inbounds i8*, i8** %69, i64 %70, !dbg !813
  %72 = load i8*, i8** %71, align 8, !dbg !813, !tbaa !593
  %73 = tail call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #14, !dbg !813
  %74 = icmp eq i32 %73, 0, !dbg !813
  br i1 %74, label %75, label %86, !dbg !814

; <label>:75:                                     ; preds = %66
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !752, metadata !586) #11, !dbg !815
  %76 = add nsw i32 %67, 1, !dbg !817
  store i32 %76, i32* @pos, align 4, !dbg !817, !tbaa !652
  %77 = tail call fastcc zeroext i1 @term() #11, !dbg !806
  %78 = and i1 %68, %77, !dbg !818
  %79 = load i32, i32* @pos, align 4, !dbg !808, !tbaa !652
  %80 = load i32, i32* @argc, align 4, !dbg !810, !tbaa !652
  %81 = icmp slt i32 %79, %80, !dbg !811
  br i1 %81, label %66, label %82, !dbg !812, !llvm.loop !819

; <label>:82:                                     ; preds = %90, %75, %56
  %83 = phi i1 [ false, %56 ], [ %65, %75 ], [ %87, %90 ]
  %84 = phi i1 [ %57, %56 ], [ %78, %75 ], [ %92, %90 ]
  %85 = or i1 %83, %84, !dbg !822
  br label %96

; <label>:86:                                     ; preds = %66
  %87 = or i1 %65, %68, !dbg !822
  %88 = tail call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0)) #14, !dbg !823
  %89 = icmp eq i32 %88, 0, !dbg !823
  br i1 %89, label %90, label %96, !dbg !825

; <label>:90:                                     ; preds = %86
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !752, metadata !586) #11, !dbg !826
  %91 = add nsw i32 %67, 1, !dbg !828
  store i32 %91, i32* @pos, align 4, !dbg !828, !tbaa !652
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !800, metadata !586) #11, !dbg !803
  %92 = tail call fastcc zeroext i1 @term() #11, !dbg !806
  %93 = load i32, i32* @pos, align 4, !dbg !808, !tbaa !652
  %94 = load i32, i32* @argc, align 4, !dbg !810, !tbaa !652
  %95 = icmp slt i32 %93, %94, !dbg !811
  br i1 %95, label %62, label %82, !dbg !812, !llvm.loop !829

; <label>:96:                                     ; preds = %86, %82, %41, %28, %13, %11, %2
  %97 = phi i1 [ %30, %28 ], [ %43, %41 ], [ %14, %13 ], [ %12, %11 ], [ %10, %2 ], [ %85, %82 ], [ %87, %86 ]
  ret i1 %97, !dbg !832
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @two_arguments() unnamed_addr #6 !dbg !833 {
  %1 = load i8**, i8*** @argv, align 8, !dbg !836, !tbaa !593
  %2 = load i32, i32* @pos, align 4, !dbg !836, !tbaa !652
  %3 = sext i32 %2 to i64, !dbg !836
  %4 = getelementptr inbounds i8*, i8** %1, i64 %3, !dbg !836
  %5 = load i8*, i8** %4, align 8, !dbg !836, !tbaa !593
  %6 = tail call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #14, !dbg !836
  %7 = icmp eq i32 %6, 0, !dbg !836
  br i1 %7, label %8, label %16, !dbg !838

; <label>:8:                                      ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !752, metadata !586), !dbg !839
  %9 = add nsw i32 %2, 1, !dbg !842
  %10 = add nsw i32 %2, 2, !dbg !843
  store i32 %10, i32* @pos, align 4, !dbg !843, !tbaa !652
  %11 = sext i32 %9 to i64, !dbg !845
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !845
  %13 = load i8*, i8** %12, align 8, !dbg !845, !tbaa !593
  %14 = load i8, i8* %13, align 1, !dbg !845, !tbaa !742
  %15 = icmp eq i8 %14, 0, !dbg !846
  br label %40, !dbg !847

; <label>:16:                                     ; preds = %0
  %17 = load i8, i8* %5, align 1, !dbg !848, !tbaa !742
  %18 = icmp eq i8 %17, 45, !dbg !850
  br i1 %18, label %19, label %39, !dbg !851

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !852
  %21 = load i8, i8* %20, align 1, !dbg !852, !tbaa !742
  %22 = icmp eq i8 %21, 0, !dbg !853
  br i1 %22, label %39, label %23, !dbg !854

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !855
  %25 = load i8, i8* %24, align 1, !dbg !855, !tbaa !742
  %26 = icmp eq i8 %25, 0, !dbg !856
  br i1 %26, label %27, label %39, !dbg !857

; <label>:27:                                     ; preds = %23
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !858, metadata !586), !dbg !863
  %28 = sext i8 %21 to i32, !dbg !867
  switch i32 %28, label %31 [
    i32 97, label %29
    i32 98, label %29
    i32 99, label %29
    i32 100, label %29
    i32 101, label %29
    i32 102, label %29
    i32 103, label %29
    i32 104, label %29
    i32 107, label %29
    i32 110, label %29
    i32 111, label %29
    i32 112, label %29
    i32 114, label %29
    i32 115, label %29
    i32 116, label %29
    i32 117, label %29
    i32 119, label %29
    i32 120, label %29
    i32 122, label %29
    i32 71, label %29
    i32 76, label %29
    i32 79, label %29
    i32 83, label %29
    i32 78, label %29
  ], !dbg !868

; <label>:29:                                     ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %30 = tail call fastcc zeroext i1 @unary_operator(), !dbg !869
  br label %40

; <label>:31:                                     ; preds = %27
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0), i32 5) #11, !dbg !870
  %33 = load i8**, i8*** @argv, align 8, !dbg !871, !tbaa !593
  %34 = load i32, i32* @pos, align 4, !dbg !872, !tbaa !652
  %35 = sext i32 %34 to i64, !dbg !871
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35, !dbg !871
  %37 = load i8*, i8** %36, align 8, !dbg !871, !tbaa !593
  %38 = tail call i8* @quote(i8* %37) #11, !dbg !873
  tail call void (i8*, ...) @test_syntax_error(i8* %32, i8* %38) #16, !dbg !874
  unreachable, !dbg !874

; <label>:39:                                     ; preds = %19, %23, %16
  tail call fastcc void @beyond() #16, !dbg !875
  unreachable, !dbg !875

; <label>:40:                                     ; preds = %29, %8
  %41 = phi i1 [ %15, %8 ], [ %30, %29 ]
  ret i1 %41, !dbg !876
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @three_arguments() unnamed_addr #6 !dbg !877 {
  %1 = load i8**, i8*** @argv, align 8, !dbg !880, !tbaa !593
  %2 = load i32, i32* @pos, align 4, !dbg !882, !tbaa !652
  %3 = add nsw i32 %2, 1, !dbg !883
  %4 = sext i32 %3 to i64, !dbg !880
  %5 = getelementptr inbounds i8*, i8** %1, i64 %4, !dbg !880
  %6 = load i8*, i8** %5, align 8, !dbg !880, !tbaa !593
  %7 = tail call fastcc zeroext i1 @binop(i8* %6), !dbg !884
  br i1 %7, label %8, label %10, !dbg !885

; <label>:8:                                      ; preds = %0
  %9 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !886
  br label %96, !dbg !887

; <label>:10:                                     ; preds = %0
  %11 = sext i32 %2 to i64, !dbg !888
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !888
  %13 = load i8*, i8** %12, align 8, !dbg !888, !tbaa !593
  %14 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #14, !dbg !888
  %15 = icmp eq i32 %14, 0, !dbg !888
  br i1 %15, label %16, label %23, !dbg !890

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !891
  store i32 %3, i32* @pos, align 4, !dbg !894, !tbaa !652
  %17 = load i32, i32* @argc, align 4, !dbg !895
  %18 = icmp slt i32 %3, %17, !dbg !896
  br i1 %18, label %20, label %19, !dbg !897

; <label>:19:                                     ; preds = %16
  tail call fastcc void @beyond() #15, !dbg !898
  unreachable, !dbg !898

; <label>:20:                                     ; preds = %16
  %21 = tail call fastcc zeroext i1 @two_arguments(), !dbg !899
  %22 = xor i1 %21, true, !dbg !900
  br label %96, !dbg !901

; <label>:23:                                     ; preds = %10
  %24 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #14, !dbg !902
  %25 = icmp eq i32 %24, 0, !dbg !902
  br i1 %25, label %26, label %37, !dbg !904

; <label>:26:                                     ; preds = %23
  %27 = add nsw i32 %2, 2, !dbg !905
  %28 = sext i32 %27 to i64, !dbg !905
  %29 = getelementptr inbounds i8*, i8** %1, i64 %28, !dbg !905
  %30 = load i8*, i8** %29, align 8, !dbg !905, !tbaa !593
  %31 = tail call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #14, !dbg !905
  %32 = icmp eq i32 %31, 0, !dbg !905
  br i1 %32, label %33, label %37, !dbg !906

; <label>:33:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !752, metadata !586), !dbg !907
  %34 = load i8, i8* %6, align 1, !dbg !910, !tbaa !742
  %35 = icmp ne i8 %34, 0, !dbg !912
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !752, metadata !586), !dbg !913
  %36 = add nsw i32 %2, 3, !dbg !915
  store i32 %36, i32* @pos, align 4, !dbg !915, !tbaa !652
  br label %96, !dbg !916

; <label>:37:                                     ; preds = %26, %23
  %38 = tail call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #14, !dbg !917
  %39 = icmp eq i32 %38, 0, !dbg !917
  br i1 %39, label %43, label %40, !dbg !919

; <label>:40:                                     ; preds = %37
  %41 = tail call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0)) #14, !dbg !920
  %42 = icmp eq i32 %41, 0, !dbg !920
  br i1 %42, label %43, label %87, !dbg !921

; <label>:43:                                     ; preds = %40, %37
  %44 = load i32, i32* @argc, align 4, !dbg !922, !tbaa !652
  %45 = icmp slt i32 %2, %44, !dbg !924
  br i1 %45, label %47, label %46, !dbg !925

; <label>:46:                                     ; preds = %43
  tail call fastcc void @beyond() #15, !dbg !926
  unreachable, !dbg !926

; <label>:47:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !795, metadata !586) #11, !dbg !927
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !800, metadata !586) #11, !dbg !929
  %48 = tail call fastcc zeroext i1 @term() #11, !dbg !931
  %49 = load i32, i32* @pos, align 4, !dbg !932, !tbaa !652
  %50 = load i32, i32* @argc, align 4, !dbg !933, !tbaa !652
  %51 = icmp slt i32 %49, %50, !dbg !934
  br i1 %51, label %52, label %73, !dbg !935

; <label>:52:                                     ; preds = %47
  br label %53, !dbg !935

; <label>:53:                                     ; preds = %52, %81
  %54 = phi i32 [ %84, %81 ], [ %49, %52 ]
  %55 = phi i1 [ %83, %81 ], [ %48, %52 ]
  %56 = phi i1 [ %78, %81 ], [ false, %52 ]
  br label %57, !dbg !935

; <label>:57:                                     ; preds = %53, %66
  %58 = phi i32 [ %54, %53 ], [ %70, %66 ]
  %59 = phi i1 [ %55, %53 ], [ %69, %66 ]
  %60 = load i8**, i8*** @argv, align 8, !dbg !936, !tbaa !593
  %61 = sext i32 %58 to i64, !dbg !936
  %62 = getelementptr inbounds i8*, i8** %60, i64 %61, !dbg !936
  %63 = load i8*, i8** %62, align 8, !dbg !936, !tbaa !593
  %64 = tail call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #14, !dbg !936
  %65 = icmp eq i32 %64, 0, !dbg !936
  br i1 %65, label %66, label %77, !dbg !937

; <label>:66:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !752, metadata !586) #11, !dbg !938
  %67 = add nsw i32 %58, 1, !dbg !940
  store i32 %67, i32* @pos, align 4, !dbg !940, !tbaa !652
  %68 = tail call fastcc zeroext i1 @term() #11, !dbg !931
  %69 = and i1 %59, %68, !dbg !941
  %70 = load i32, i32* @pos, align 4, !dbg !932, !tbaa !652
  %71 = load i32, i32* @argc, align 4, !dbg !933, !tbaa !652
  %72 = icmp slt i32 %70, %71, !dbg !934
  br i1 %72, label %57, label %73, !dbg !935, !llvm.loop !819

; <label>:73:                                     ; preds = %81, %66, %47
  %74 = phi i1 [ false, %47 ], [ %56, %66 ], [ %78, %81 ]
  %75 = phi i1 [ %48, %47 ], [ %69, %66 ], [ %83, %81 ]
  %76 = or i1 %74, %75, !dbg !942
  br label %96

; <label>:77:                                     ; preds = %57
  %78 = or i1 %56, %59, !dbg !942
  %79 = tail call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0)) #14, !dbg !943
  %80 = icmp eq i32 %79, 0, !dbg !943
  br i1 %80, label %81, label %96, !dbg !944

; <label>:81:                                     ; preds = %77
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !752, metadata !586) #11, !dbg !945
  %82 = add nsw i32 %58, 1, !dbg !947
  store i32 %82, i32* @pos, align 4, !dbg !947, !tbaa !652
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !800, metadata !586) #11, !dbg !929
  %83 = tail call fastcc zeroext i1 @term() #11, !dbg !931
  %84 = load i32, i32* @pos, align 4, !dbg !932, !tbaa !652
  %85 = load i32, i32* @argc, align 4, !dbg !933, !tbaa !652
  %86 = icmp slt i32 %84, %85, !dbg !934
  br i1 %86, label %53, label %73, !dbg !935, !llvm.loop !829

; <label>:87:                                     ; preds = %40
  %88 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i64 0, i64 0), i32 5) #11, !dbg !948
  %89 = load i8**, i8*** @argv, align 8, !dbg !949, !tbaa !593
  %90 = load i32, i32* @pos, align 4, !dbg !950, !tbaa !652
  %91 = add nsw i32 %90, 1, !dbg !951
  %92 = sext i32 %91 to i64, !dbg !949
  %93 = getelementptr inbounds i8*, i8** %89, i64 %92, !dbg !949
  %94 = load i8*, i8** %93, align 8, !dbg !949, !tbaa !593
  %95 = tail call i8* @quote(i8* %94) #11, !dbg !952
  tail call void (i8*, ...) @test_syntax_error(i8* %88, i8* %95) #16, !dbg !953
  unreachable, !dbg !953

; <label>:96:                                     ; preds = %77, %73, %20, %33, %8
  %97 = phi i1 [ %9, %8 ], [ %22, %20 ], [ %35, %33 ], [ %76, %73 ], [ %78, %77 ]
  ret i1 %97, !dbg !954
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !955 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.50, i64 0, i64 0), i32 5) #11, !dbg !958
  %2 = load i8**, i8*** @argv, align 8, !dbg !959, !tbaa !593
  %3 = load i32, i32* @argc, align 4, !dbg !960, !tbaa !652
  %4 = add nsw i32 %3, -1, !dbg !961
  %5 = sext i32 %4 to i64, !dbg !959
  %6 = getelementptr inbounds i8*, i8** %2, i64 %5, !dbg !959
  %7 = load i8*, i8** %6, align 8, !dbg !959, !tbaa !593
  %8 = tail call i8* @quote(i8* %7) #11, !dbg !962
  tail call void (i8*, ...) @test_syntax_error(i8* %1, i8* %8) #16, !dbg !963
  unreachable, !dbg !963
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @term() unnamed_addr #6 !dbg !964 {
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !967, metadata !586), !dbg !971
  %1 = load i32, i32* @pos, align 4, !dbg !972, !tbaa !652
  %2 = load i32, i32* @argc, align 4, !dbg !973, !tbaa !652
  %3 = icmp sgt i32 %2, %1, !dbg !974
  br i1 %3, label %4, label %31, !dbg !975

; <label>:4:                                      ; preds = %0
  %5 = load i8**, i8*** @argv, align 8, !tbaa !593
  %6 = sext i32 %1 to i64, !dbg !976
  %7 = getelementptr inbounds i8*, i8** %5, i64 %6, !dbg !976
  %8 = load i8*, i8** %7, align 8, !dbg !976, !tbaa !593
  %9 = load i8, i8* %8, align 1, !dbg !976, !tbaa !742
  %10 = icmp eq i8 %9, 33, !dbg !977
  br i1 %10, label %11, label %32, !dbg !978

; <label>:11:                                     ; preds = %4
  br label %12, !dbg !979

; <label>:12:                                     ; preds = %11, %24
  %13 = phi i8 [ %29, %24 ], [ %9, %11 ]
  %14 = phi i8* [ %28, %24 ], [ %8, %11 ]
  %15 = phi i1 [ %25, %24 ], [ false, %11 ]
  %16 = phi i32 [ %21, %24 ], [ %1, %11 ]
  %17 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !979
  %18 = load i8, i8* %17, align 1, !dbg !979, !tbaa !742
  %19 = icmp eq i8 %18, 0, !dbg !980
  br i1 %19, label %20, label %102, !dbg !981

; <label>:20:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !982
  %21 = add nsw i32 %16, 1, !dbg !985
  store i32 %21, i32* @pos, align 4, !dbg !985, !tbaa !652
  %22 = icmp slt i32 %21, %2, !dbg !986
  br i1 %22, label %24, label %23, !dbg !987

; <label>:23:                                     ; preds = %20
  tail call fastcc void @beyond() #15, !dbg !988
  unreachable, !dbg !988

; <label>:24:                                     ; preds = %20
  %25 = xor i1 %15, true, !dbg !989
  %26 = sext i32 %21 to i64, !dbg !976
  %27 = getelementptr inbounds i8*, i8** %5, i64 %26, !dbg !976
  %28 = load i8*, i8** %27, align 8, !dbg !976, !tbaa !593
  %29 = load i8, i8* %28, align 1, !dbg !976, !tbaa !742
  %30 = icmp eq i8 %29, 33, !dbg !977
  br i1 %30, label %12, label %32, !dbg !978

; <label>:31:                                     ; preds = %0
  tail call fastcc void @beyond() #16, !dbg !990
  unreachable, !dbg !990

; <label>:32:                                     ; preds = %24, %4
  %33 = phi i32 [ %1, %4 ], [ %21, %24 ]
  %34 = phi i1 [ false, %4 ], [ %25, %24 ]
  %35 = phi i8* [ %8, %4 ], [ %28, %24 ]
  %36 = phi i8 [ %9, %4 ], [ %29, %24 ]
  %37 = icmp eq i8 %36, 40, !dbg !992
  br i1 %37, label %38, label %102, !dbg !993

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !994
  %40 = load i8, i8* %39, align 1, !dbg !994, !tbaa !742
  %41 = icmp eq i8 %40, 0, !dbg !995
  br i1 %41, label %42, label %102, !dbg !996

; <label>:42:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !997
  %43 = add nsw i32 %33, 1, !dbg !999
  store i32 %43, i32* @pos, align 4, !dbg !999, !tbaa !652
  %44 = icmp sgt i32 %2, %43, !dbg !1000
  br i1 %44, label %46, label %45, !dbg !1001

; <label>:45:                                     ; preds = %42
  tail call fastcc void @beyond() #15, !dbg !1002
  unreachable, !dbg !1002

; <label>:46:                                     ; preds = %42
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !968, metadata !586), !dbg !1003
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !968, metadata !586), !dbg !1003
  %47 = add nsw i32 %33, 2, !dbg !1004
  %48 = icmp slt i32 %47, %2, !dbg !1007
  br i1 %48, label %49, label %72, !dbg !1008

; <label>:49:                                     ; preds = %46
  %50 = sext i32 %47 to i64, !dbg !1008
  %51 = sext i32 %43 to i64, !dbg !1008
  %52 = sext i32 %2 to i64, !dbg !1008
  br label %53, !dbg !1008

; <label>:53:                                     ; preds = %49, %66
  %54 = phi i64 [ 1, %49 ], [ %67, %66 ]
  %55 = phi i64 [ %50, %49 ], [ %71, %66 ]
  %56 = phi i32 [ 1, %49 ], [ %68, %66 ]
  tail call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !968, metadata !586), !dbg !1003
  %57 = getelementptr inbounds i8*, i8** %5, i64 %55, !dbg !1009
  %58 = load i8*, i8** %57, align 8, !dbg !1009, !tbaa !593
  %59 = tail call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #14, !dbg !1009
  %60 = icmp eq i32 %59, 0, !dbg !1009
  %61 = trunc i64 %54 to i32, !dbg !1010
  br i1 %60, label %72, label %62, !dbg !1010

; <label>:62:                                     ; preds = %53
  %63 = icmp eq i64 %54, 4, !dbg !1011
  br i1 %63, label %64, label %66, !dbg !1013

; <label>:64:                                     ; preds = %62
  %65 = sub nsw i32 %2, %43, !dbg !1014
  tail call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !968, metadata !586), !dbg !1003
  br label %72, !dbg !1016

; <label>:66:                                     ; preds = %62
  %67 = add nuw nsw i64 %54, 1, !dbg !1017
  %68 = add nuw nsw i32 %56, 1, !dbg !1017
  tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !968, metadata !586), !dbg !1003
  tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !968, metadata !586), !dbg !1003
  %69 = add nsw i64 %67, %51, !dbg !1004
  %70 = icmp slt i64 %69, %52, !dbg !1007
  %71 = add nsw i64 %55, 1, !dbg !1004
  br i1 %70, label %53, label %72, !dbg !1008, !llvm.loop !1018

; <label>:72:                                     ; preds = %66, %53, %46, %64
  %73 = phi i32 [ %65, %64 ], [ 1, %46 ], [ %68, %66 ], [ %61, %53 ]
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !968, metadata !586), !dbg !1003
  %74 = tail call fastcc zeroext i1 @posixtest(i32 %73), !dbg !1020
  %75 = load i8**, i8*** @argv, align 8, !dbg !1021, !tbaa !593
  %76 = load i32, i32* @pos, align 4, !dbg !1023, !tbaa !652
  %77 = sext i32 %76 to i64, !dbg !1021
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77, !dbg !1021
  %79 = load i8*, i8** %78, align 8, !dbg !1021, !tbaa !593
  %80 = icmp eq i8* %79, null, !dbg !1024
  br i1 %80, label %81, label %84, !dbg !1025

; <label>:81:                                     ; preds = %72
  %82 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0), i32 5) #11, !dbg !1026
  %83 = tail call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #11, !dbg !1027
  tail call void (i8*, ...) @test_syntax_error(i8* %82, i8* %83) #16, !dbg !1028
  unreachable, !dbg !1028

; <label>:84:                                     ; preds = %72
  %85 = load i8, i8* %79, align 1, !dbg !1029, !tbaa !742
  %86 = icmp eq i8 %85, 41, !dbg !1031
  br i1 %86, label %87, label %91, !dbg !1032

; <label>:87:                                     ; preds = %84
  %88 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !1033
  %89 = load i8, i8* %88, align 1, !dbg !1033, !tbaa !742
  %90 = icmp eq i8 %89, 0, !dbg !1033
  br i1 %90, label %100, label %91, !dbg !1034

; <label>:91:                                     ; preds = %87, %84
  %92 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.72, i64 0, i64 0), i32 5) #11, !dbg !1035
  %93 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #11, !dbg !1036
  %94 = load i8**, i8*** @argv, align 8, !dbg !1037, !tbaa !593
  %95 = load i32, i32* @pos, align 4, !dbg !1038, !tbaa !652
  %96 = sext i32 %95 to i64, !dbg !1037
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96, !dbg !1037
  %98 = load i8*, i8** %97, align 8, !dbg !1037, !tbaa !593
  %99 = tail call i8* @quote_n(i32 1, i8* %98) #11, !dbg !1039
  tail call void (i8*, ...) @test_syntax_error(i8* %92, i8* %93, i8* %99) #16, !dbg !1040
  unreachable, !dbg !1040

; <label>:100:                                    ; preds = %87
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !752, metadata !586), !dbg !1041
  %101 = add nsw i32 %76, 1, !dbg !1043
  store i32 %101, i32* @pos, align 4, !dbg !1043, !tbaa !652
  br label %155, !dbg !1044

; <label>:102:                                    ; preds = %12, %38, %32
  %103 = phi i32 [ %33, %38 ], [ %33, %32 ], [ %16, %12 ]
  %104 = phi i1 [ %34, %38 ], [ %34, %32 ], [ %15, %12 ]
  %105 = phi i8* [ %35, %38 ], [ %35, %32 ], [ %14, %12 ]
  %106 = phi i8 [ %36, %38 ], [ %36, %32 ], [ %13, %12 ]
  %107 = sub nsw i32 %2, %103, !dbg !1045
  %108 = icmp sgt i32 %107, 3, !dbg !1047
  br i1 %108, label %109, label %120, !dbg !1048

; <label>:109:                                    ; preds = %102
  %110 = tail call i32 @strcmp(i8* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0)) #14, !dbg !1049
  %111 = icmp eq i32 %110, 0, !dbg !1049
  br i1 %111, label %112, label %122, !dbg !1050

; <label>:112:                                    ; preds = %109
  %113 = add nsw i32 %103, 2, !dbg !1051
  %114 = sext i32 %113 to i64, !dbg !1052
  %115 = getelementptr inbounds i8*, i8** %5, i64 %114, !dbg !1052
  %116 = load i8*, i8** %115, align 8, !dbg !1052, !tbaa !593
  %117 = tail call fastcc zeroext i1 @binop(i8* %116), !dbg !1053
  br i1 %117, label %118, label %122, !dbg !1054

; <label>:118:                                    ; preds = %112
  %119 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext true), !dbg !1055
  br label %155, !dbg !1056

; <label>:120:                                    ; preds = %102
  %121 = icmp eq i32 %107, 3, !dbg !1057
  br i1 %121, label %122, label %130, !dbg !1059

; <label>:122:                                    ; preds = %109, %112, %120
  %123 = add nsw i32 %103, 1, !dbg !1060
  %124 = sext i32 %123 to i64, !dbg !1061
  %125 = getelementptr inbounds i8*, i8** %5, i64 %124, !dbg !1061
  %126 = load i8*, i8** %125, align 8, !dbg !1061, !tbaa !593
  %127 = tail call fastcc zeroext i1 @binop(i8* %126), !dbg !1062
  br i1 %127, label %128, label %130, !dbg !1063

; <label>:128:                                    ; preds = %122
  %129 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !1064
  br label %155, !dbg !1065

; <label>:130:                                    ; preds = %122, %120
  %131 = icmp eq i8 %106, 45, !dbg !1066
  br i1 %131, label %132, label %152, !dbg !1068

; <label>:132:                                    ; preds = %130
  %133 = getelementptr inbounds i8, i8* %105, i64 1, !dbg !1069
  %134 = load i8, i8* %133, align 1, !dbg !1069, !tbaa !742
  %135 = icmp eq i8 %134, 0, !dbg !1069
  br i1 %135, label %152, label %136, !dbg !1070

; <label>:136:                                    ; preds = %132
  %137 = getelementptr inbounds i8, i8* %105, i64 2, !dbg !1071
  %138 = load i8, i8* %137, align 1, !dbg !1071, !tbaa !742
  %139 = icmp eq i8 %138, 0, !dbg !1072
  br i1 %139, label %140, label %152, !dbg !1073

; <label>:140:                                    ; preds = %136
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !858, metadata !586), !dbg !1074
  %141 = sext i8 %134 to i32, !dbg !1078
  switch i32 %141, label %144 [
    i32 97, label %142
    i32 98, label %142
    i32 99, label %142
    i32 100, label %142
    i32 101, label %142
    i32 102, label %142
    i32 103, label %142
    i32 104, label %142
    i32 107, label %142
    i32 110, label %142
    i32 111, label %142
    i32 112, label %142
    i32 114, label %142
    i32 115, label %142
    i32 116, label %142
    i32 117, label %142
    i32 119, label %142
    i32 120, label %142
    i32 122, label %142
    i32 71, label %142
    i32 76, label %142
    i32 79, label %142
    i32 83, label %142
    i32 78, label %142
  ], !dbg !1079

; <label>:142:                                    ; preds = %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140
  %143 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1080
  br label %155, !dbg !1081

; <label>:144:                                    ; preds = %140
  %145 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0), i32 5) #11, !dbg !1082
  %146 = load i8**, i8*** @argv, align 8, !dbg !1083, !tbaa !593
  %147 = load i32, i32* @pos, align 4, !dbg !1084, !tbaa !652
  %148 = sext i32 %147 to i64, !dbg !1083
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148, !dbg !1083
  %150 = load i8*, i8** %149, align 8, !dbg !1083, !tbaa !593
  %151 = tail call i8* @quote(i8* %150) #11, !dbg !1085
  tail call void (i8*, ...) @test_syntax_error(i8* %145, i8* %151) #16, !dbg !1086
  unreachable, !dbg !1086

; <label>:152:                                    ; preds = %132, %136, %130
  %153 = icmp ne i8 %106, 0, !dbg !1087
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !752, metadata !586), !dbg !1089
  %154 = add nsw i32 %103, 1, !dbg !1091
  store i32 %154, i32* @pos, align 4, !dbg !1091, !tbaa !652
  br label %155

; <label>:155:                                    ; preds = %118, %142, %152, %128, %100
  %156 = phi i1 [ %34, %100 ], [ %104, %118 ], [ %104, %128 ], [ %104, %142 ], [ %104, %152 ]
  %157 = phi i1 [ %74, %100 ], [ %119, %118 ], [ %129, %128 ], [ %143, %142 ], [ %153, %152 ]
  %158 = xor i1 %156, %157, !dbg !1092
  ret i1 %158, !dbg !1093
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal fastcc zeroext i1 @binop(i8* nocapture readonly) unnamed_addr #7 !dbg !1094 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1096, metadata !586), !dbg !1097
  %2 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #14, !dbg !1098
  %3 = icmp eq i32 %2, 0, !dbg !1098
  br i1 %3, label %37, label %4, !dbg !1099

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #14, !dbg !1100
  %6 = icmp eq i32 %5, 0, !dbg !1100
  br i1 %6, label %37, label %7, !dbg !1101

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #14, !dbg !1102
  %9 = icmp eq i32 %8, 0, !dbg !1102
  br i1 %9, label %37, label %10, !dbg !1103

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0)) #14, !dbg !1104
  %12 = icmp eq i32 %11, 0, !dbg !1104
  br i1 %12, label %37, label %13, !dbg !1105

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0)) #14, !dbg !1106
  %15 = icmp eq i32 %14, 0, !dbg !1106
  br i1 %15, label %37, label %16, !dbg !1107

; <label>:16:                                     ; preds = %13
  %17 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #14, !dbg !1108
  %18 = icmp eq i32 %17, 0, !dbg !1108
  br i1 %18, label %37, label %19, !dbg !1109

; <label>:19:                                     ; preds = %16
  %20 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0)) #14, !dbg !1110
  %21 = icmp eq i32 %20, 0, !dbg !1110
  br i1 %21, label %37, label %22, !dbg !1111

; <label>:22:                                     ; preds = %19
  %23 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0)) #14, !dbg !1112
  %24 = icmp eq i32 %23, 0, !dbg !1112
  br i1 %24, label %37, label %25, !dbg !1113

; <label>:25:                                     ; preds = %22
  %26 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0)) #14, !dbg !1114
  %27 = icmp eq i32 %26, 0, !dbg !1114
  br i1 %27, label %37, label %28, !dbg !1115

; <label>:28:                                     ; preds = %25
  %29 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0)) #14, !dbg !1116
  %30 = icmp eq i32 %29, 0, !dbg !1116
  br i1 %30, label %37, label %31, !dbg !1117

; <label>:31:                                     ; preds = %28
  %32 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0)) #14, !dbg !1118
  %33 = icmp eq i32 %32, 0, !dbg !1118
  br i1 %33, label %37, label %34, !dbg !1119

; <label>:34:                                     ; preds = %31
  %35 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0)) #14, !dbg !1120
  %36 = icmp eq i32 %35, 0, !dbg !1120
  br label %37, !dbg !1119

; <label>:37:                                     ; preds = %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %38 = phi i1 [ true, %31 ], [ true, %28 ], [ true, %25 ], [ true, %22 ], [ true, %19 ], [ true, %16 ], [ true, %13 ], [ true, %10 ], [ true, %7 ], [ true, %4 ], [ true, %1 ], [ %36, %34 ]
  ret i1 %38, !dbg !1121
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @binary_operator(i1 zeroext) unnamed_addr #6 !dbg !1122 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca [21 x i8], align 16
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1126, metadata !586), !dbg !1201
  %10 = bitcast %struct.stat* %6 to i8*, !dbg !1202
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %10) #11, !dbg !1202
  %11 = bitcast %struct.stat* %7 to i8*, !dbg !1202
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %11) #11, !dbg !1202
  %12 = load i32, i32* @pos, align 4, !tbaa !652
  br i1 %0, label %13, label %15, !dbg !1203

; <label>:13:                                     ; preds = %1
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !752, metadata !586), !dbg !1204
  %14 = add nsw i32 %12, 1, !dbg !1207
  store i32 %14, i32* @pos, align 4, !dbg !1207, !tbaa !652
  br label %15, !dbg !1208

; <label>:15:                                     ; preds = %1, %13
  %16 = phi i32 [ %14, %13 ], [ %12, %1 ], !dbg !1209
  %17 = add nsw i32 %16, 1, !dbg !1210
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !1127, metadata !586), !dbg !1211
  %18 = load i32, i32* @argc, align 4, !dbg !1212, !tbaa !652
  %19 = add nsw i32 %18, -2, !dbg !1214
  %20 = icmp slt i32 %17, %19, !dbg !1215
  %21 = load i8**, i8*** @argv, align 8, !tbaa !593
  br i1 %20, label %22, label %30, !dbg !1216

; <label>:22:                                     ; preds = %15
  %23 = add nsw i32 %16, 2, !dbg !1217
  %24 = sext i32 %23 to i64, !dbg !1217
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24, !dbg !1217
  %26 = load i8*, i8** %25, align 8, !dbg !1217, !tbaa !593
  %27 = tail call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0)) #14, !dbg !1217
  %28 = icmp eq i32 %27, 0, !dbg !1217
  br i1 %28, label %29, label %30, !dbg !1218

; <label>:29:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1168, metadata !586), !dbg !1219
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !752, metadata !586), !dbg !1220
  store i32 %17, i32* @pos, align 4, !dbg !1223, !tbaa !652
  br label %30, !dbg !1224

; <label>:30:                                     ; preds = %15, %22, %29
  %31 = phi i32 [ %17, %29 ], [ %16, %22 ], [ %16, %15 ]
  %32 = phi i1 [ true, %29 ], [ false, %22 ], [ false, %15 ]
  %33 = sext i32 %17 to i64, !dbg !1225
  %34 = getelementptr inbounds i8*, i8** %21, i64 %33, !dbg !1225
  %35 = load i8*, i8** %34, align 8, !dbg !1225, !tbaa !593
  %36 = load i8, i8* %35, align 1, !dbg !1225, !tbaa !742
  switch i8 %36, label %265 [
    i8 45, label %37
    i8 61, label %247
  ], !dbg !1226

; <label>:37:                                     ; preds = %30
  %38 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1227
  %39 = load i8, i8* %38, align 1, !dbg !1227, !tbaa !742
  switch i8 %39, label %107 [
    i8 108, label %40
    i8 103, label %40
    i8 101, label %43
    i8 110, label %47
  ], !dbg !1228

; <label>:40:                                     ; preds = %37, %37
  %41 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1229
  %42 = load i8, i8* %41, align 1, !dbg !1229, !tbaa !742
  switch i8 %42, label %107 [
    i8 101, label %51
    i8 116, label %51
  ], !dbg !1230

; <label>:43:                                     ; preds = %37
  %44 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1231
  %45 = load i8, i8* %44, align 1, !dbg !1231, !tbaa !742
  %46 = icmp eq i8 %45, 113, !dbg !1232
  br i1 %46, label %51, label %107, !dbg !1233

; <label>:47:                                     ; preds = %37
  %48 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1234
  %49 = load i8, i8* %48, align 1, !dbg !1234, !tbaa !742
  %50 = icmp eq i8 %49, 101, !dbg !1235
  br i1 %50, label %51, label %107, !dbg !1236

; <label>:51:                                     ; preds = %40, %40, %47, %43
  %52 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1237
  %53 = load i8, i8* %52, align 1, !dbg !1237, !tbaa !742
  %54 = icmp eq i8 %53, 0, !dbg !1237
  br i1 %54, label %55, label %107, !dbg !1238

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !1239
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %56) #11, !dbg !1239
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !1169, metadata !586), !dbg !1240
  %57 = getelementptr inbounds [21 x i8], [21 x i8]* %9, i64 0, i64 0, !dbg !1241
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %57) #11, !dbg !1241
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %9, metadata !1177, metadata !586), !dbg !1242
  %58 = sext i32 %16 to i64
  %59 = getelementptr inbounds i8*, i8** %21, i64 %58
  %60 = load i8*, i8** %59, align 8, !tbaa !593
  br i1 %0, label %61, label %64, !dbg !1243

; <label>:61:                                     ; preds = %55
  %62 = tail call i64 @strlen(i8* %60) #14, !dbg !1244
  %63 = call i8* @umaxtostr(i64 %62, i8* nonnull %56) #11, !dbg !1245
  br label %66, !dbg !1243

; <label>:64:                                     ; preds = %55
  %65 = tail call fastcc i8* @find_int(i8* %60), !dbg !1246
  br label %66, !dbg !1243

; <label>:66:                                     ; preds = %64, %61
  %67 = phi i8* [ %63, %61 ], [ %65, %64 ], !dbg !1243
  call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !1178, metadata !586), !dbg !1247
  %68 = load i8**, i8*** @argv, align 8, !tbaa !593
  br i1 %32, label %69, label %76, !dbg !1248

; <label>:69:                                     ; preds = %66
  %70 = add nsw i32 %16, 3, !dbg !1249
  %71 = sext i32 %70 to i64, !dbg !1250
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71, !dbg !1250
  %73 = load i8*, i8** %72, align 8, !dbg !1250, !tbaa !593
  %74 = call i64 @strlen(i8* %73) #14, !dbg !1251
  %75 = call i8* @umaxtostr(i64 %74, i8* nonnull %57) #11, !dbg !1252
  br label %82, !dbg !1248

; <label>:76:                                     ; preds = %66
  %77 = add nsw i32 %16, 2, !dbg !1253
  %78 = sext i32 %77 to i64, !dbg !1254
  %79 = getelementptr inbounds i8*, i8** %68, i64 %78, !dbg !1254
  %80 = load i8*, i8** %79, align 8, !dbg !1254, !tbaa !593
  %81 = call fastcc i8* @find_int(i8* %80), !dbg !1255
  br label %82, !dbg !1248

; <label>:82:                                     ; preds = %76, %69
  %83 = phi i8* [ %75, %69 ], [ %81, %76 ], !dbg !1248
  call void @llvm.dbg.value(metadata i8* %83, i64 0, metadata !1179, metadata !586), !dbg !1256
  %84 = call i32 @strintcmp(i8* %67, i8* %83) #14, !dbg !1257
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !1180, metadata !586), !dbg !1258
  %85 = load i8**, i8*** @argv, align 8, !dbg !1259, !tbaa !593
  %86 = getelementptr inbounds i8*, i8** %85, i64 %33, !dbg !1259
  %87 = load i8*, i8** %86, align 8, !dbg !1259, !tbaa !593
  %88 = getelementptr inbounds i8, i8* %87, i64 2, !dbg !1259
  %89 = load i8, i8* %88, align 1, !dbg !1259, !tbaa !742
  %90 = icmp eq i8 %89, 101, !dbg !1260
  %91 = load i32, i32* @pos, align 4, !dbg !1261, !tbaa !652
  %92 = add nsw i32 %91, 3, !dbg !1261
  store i32 %92, i32* @pos, align 4, !dbg !1261, !tbaa !652
  %93 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1262
  %94 = load i8, i8* %93, align 1, !dbg !1262, !tbaa !742
  switch i8 %94, label %101 [
    i8 108, label %95
    i8 103, label %98
  ], !dbg !1262

; <label>:95:                                     ; preds = %82
  %96 = zext i1 %90 to i32, !dbg !1263
  %97 = icmp slt i32 %84, %96, !dbg !1264
  br label %105, !dbg !1262

; <label>:98:                                     ; preds = %82
  %99 = sext i1 %90 to i32, !dbg !1265
  %100 = icmp sgt i32 %84, %99, !dbg !1266
  br label %105, !dbg !1267

; <label>:101:                                    ; preds = %82
  %102 = icmp ne i32 %84, 0, !dbg !1268
  %103 = xor i1 %102, %90, !dbg !1269
  %104 = xor i1 %103, true, !dbg !1269
  br label %105, !dbg !1267

; <label>:105:                                    ; preds = %98, %101, %95
  %106 = phi i1 [ %97, %95 ], [ %104, %101 ], [ %100, %98 ]
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %57) #11, !dbg !1270
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %56) #11, !dbg !1270
  br label %280

; <label>:107:                                    ; preds = %37, %40, %43, %51, %47
  %108 = sext i8 %39 to i32, !dbg !1271
  switch i32 %108, label %241 [
    i32 110, label %109
    i32 101, label %156
    i32 111, label %195
  ], !dbg !1272

; <label>:109:                                    ; preds = %107
  %110 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1273
  %111 = load i8, i8* %110, align 1, !dbg !1273, !tbaa !742
  %112 = icmp eq i8 %111, 116, !dbg !1274
  br i1 %112, label %113, label %241, !dbg !1275

; <label>:113:                                    ; preds = %109
  %114 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1276
  %115 = load i8, i8* %114, align 1, !dbg !1276, !tbaa !742
  %116 = icmp eq i8 %115, 0, !dbg !1276
  br i1 %116, label %117, label %241, !dbg !1277

; <label>:117:                                    ; preds = %113
  %118 = add nsw i32 %31, 3, !dbg !1278
  store i32 %118, i32* @pos, align 4, !dbg !1278, !tbaa !652
  %119 = or i1 %32, %0, !dbg !1279
  br i1 %119, label %120, label %122, !dbg !1279

; <label>:120:                                    ; preds = %117
  %121 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i64 0, i64 0), i32 5) #11, !dbg !1281
  tail call void (i8*, ...) @test_syntax_error(i8* %121, i8* null) #16, !dbg !1282
  unreachable, !dbg !1282

; <label>:122:                                    ; preds = %117
  %123 = sext i32 %16 to i64, !dbg !1283
  %124 = getelementptr inbounds i8*, i8** %21, i64 %123, !dbg !1283
  %125 = load i8*, i8** %124, align 8, !dbg !1283, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1182, metadata !586), !dbg !1284
  tail call void @llvm.dbg.value(metadata i8* %125, i64 0, metadata !1285, metadata !586) #11, !dbg !1294
  tail call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1291, metadata !586) #11, !dbg !1296
  %126 = bitcast %struct.stat* %4 to i8*, !dbg !1297
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %126) #11, !dbg !1297
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !1292, metadata !586) #11, !dbg !1298
  tail call void @llvm.dbg.value(metadata i8* %125, i64 0, metadata !1299, metadata !586) #11, !dbg !1307
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !1306, metadata !586) #11, !dbg !1307
  %127 = call i32 @__xstat(i32 1, i8* nonnull %125, %struct.stat* nonnull %4) #11, !dbg !1309
  %128 = icmp eq i32 %127, 0, !dbg !1310
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !1292, metadata !586) #11, !dbg !1298
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !1311, metadata !586) #11, !dbg !1319
  %129 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 0, !dbg !1322
  %130 = load i64, i64* %129, align 8, !dbg !1322
  %131 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 1, !dbg !1322
  %132 = load i64, i64* %131, align 8, !dbg !1322
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %126) #11, !dbg !1323
  %133 = load i8**, i8*** @argv, align 8, !dbg !1324, !tbaa !593
  %134 = add nsw i32 %16, 2, !dbg !1325
  %135 = sext i32 %134 to i64, !dbg !1324
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135, !dbg !1324
  %137 = load i8*, i8** %136, align 8, !dbg !1324, !tbaa !593
  call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1186, metadata !586), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %137, i64 0, metadata !1285, metadata !586) #11, !dbg !1327
  call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1291, metadata !586) #11, !dbg !1329
  %138 = bitcast %struct.stat* %3 to i8*, !dbg !1330
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %138) #11, !dbg !1330
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1292, metadata !586) #11, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %137, i64 0, metadata !1299, metadata !586) #11, !dbg !1332
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1306, metadata !586) #11, !dbg !1332
  %139 = call i32 @__xstat(i32 1, i8* nonnull %137, %struct.stat* nonnull %3) #11, !dbg !1334
  %140 = icmp eq i32 %139, 0, !dbg !1335
  br i1 %140, label %142, label %141, !dbg !1336

; <label>:141:                                    ; preds = %122
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %138) #11, !dbg !1337
  br label %280, !dbg !1338

; <label>:142:                                    ; preds = %122
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1292, metadata !586) #11, !dbg !1331
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1311, metadata !586) #11, !dbg !1339
  %143 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 0, !dbg !1341
  %144 = load i64, i64* %143, align 8, !dbg !1341
  %145 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 1, !dbg !1341
  %146 = load i64, i64* %145, align 8, !dbg !1341
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %138) #11, !dbg !1337
  %147 = xor i1 %128, true, !dbg !1338
  %148 = icmp slt i64 %130, %144, !dbg !1342
  %149 = or i1 %148, %147, !dbg !1338
  tail call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1348, metadata !1351), !dbg !1352
  tail call void @llvm.dbg.value(metadata i64 %132, i64 0, metadata !1348, metadata !1353), !dbg !1352
  tail call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1349, metadata !1351), !dbg !1354
  tail call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1349, metadata !1353), !dbg !1354
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !1348, metadata !586), !dbg !1352
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !1349, metadata !586), !dbg !1354
  br i1 %149, label %280, label %150, !dbg !1338

; <label>:150:                                    ; preds = %142
  %151 = icmp sgt i64 %130, %144, !dbg !1355
  br i1 %151, label %280, label %152, !dbg !1356

; <label>:152:                                    ; preds = %150
  %153 = sub nsw i64 %132, %146, !dbg !1357
  %154 = trunc i64 %153 to i32, !dbg !1358
  %155 = icmp sgt i32 %154, 0, !dbg !1356
  br label %280, !dbg !1356

; <label>:156:                                    ; preds = %107
  %157 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1359
  %158 = load i8, i8* %157, align 1, !dbg !1359, !tbaa !742
  %159 = icmp eq i8 %158, 102, !dbg !1361
  br i1 %159, label %160, label %241, !dbg !1362

; <label>:160:                                    ; preds = %156
  %161 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1363
  %162 = load i8, i8* %161, align 1, !dbg !1363, !tbaa !742
  %163 = icmp eq i8 %162, 0, !dbg !1363
  br i1 %163, label %164, label %241, !dbg !1364

; <label>:164:                                    ; preds = %160
  %165 = add nsw i32 %31, 3, !dbg !1365
  store i32 %165, i32* @pos, align 4, !dbg !1365, !tbaa !652
  %166 = or i1 %32, %0, !dbg !1367
  br i1 %166, label %167, label %169, !dbg !1367

; <label>:167:                                    ; preds = %164
  %168 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i64 0, i64 0), i32 5) #11, !dbg !1369
  tail call void (i8*, ...) @test_syntax_error(i8* %168, i8* null) #16, !dbg !1370
  unreachable, !dbg !1370

; <label>:169:                                    ; preds = %164
  %170 = sext i32 %16 to i64, !dbg !1371
  %171 = getelementptr inbounds i8*, i8** %21, i64 %170, !dbg !1371
  %172 = load i8*, i8** %171, align 8, !dbg !1371, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.stat* %6, i64 0, metadata !1128, metadata !586), !dbg !1372
  tail call void @llvm.dbg.value(metadata i8* %172, i64 0, metadata !1299, metadata !586) #11, !dbg !1373
  tail call void @llvm.dbg.value(metadata %struct.stat* %6, i64 0, metadata !1306, metadata !586) #11, !dbg !1373
  %173 = call i32 @__xstat(i32 1, i8* nonnull %172, %struct.stat* nonnull %6) #11, !dbg !1375
  %174 = icmp eq i32 %173, 0, !dbg !1376
  br i1 %174, label %175, label %280, !dbg !1377

; <label>:175:                                    ; preds = %169
  %176 = load i8**, i8*** @argv, align 8, !dbg !1378, !tbaa !593
  %177 = add nsw i32 %16, 2, !dbg !1379
  %178 = sext i32 %177 to i64, !dbg !1378
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178, !dbg !1378
  %180 = load i8*, i8** %179, align 8, !dbg !1378, !tbaa !593
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !1167, metadata !586), !dbg !1380
  call void @llvm.dbg.value(metadata i8* %180, i64 0, metadata !1299, metadata !586) #11, !dbg !1381
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !1306, metadata !586) #11, !dbg !1381
  %181 = call i32 @__xstat(i32 1, i8* nonnull %180, %struct.stat* nonnull %7) #11, !dbg !1383
  %182 = icmp eq i32 %181, 0, !dbg !1384
  br i1 %182, label %183, label %280, !dbg !1385

; <label>:183:                                    ; preds = %175
  %184 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0, !dbg !1386
  %185 = load i64, i64* %184, align 8, !dbg !1386, !tbaa !1387
  %186 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 0, !dbg !1391
  %187 = load i64, i64* %186, align 8, !dbg !1391, !tbaa !1387
  %188 = icmp eq i64 %185, %187, !dbg !1392
  br i1 %188, label %189, label %280, !dbg !1393

; <label>:189:                                    ; preds = %183
  %190 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1, !dbg !1394
  %191 = load i64, i64* %190, align 8, !dbg !1394, !tbaa !1395
  %192 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1, !dbg !1396
  %193 = load i64, i64* %192, align 8, !dbg !1396, !tbaa !1395
  %194 = icmp eq i64 %191, %193, !dbg !1397
  br label %280

; <label>:195:                                    ; preds = %107
  %196 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1398
  %197 = load i8, i8* %196, align 1, !dbg !1398, !tbaa !742
  %198 = icmp eq i8 %197, 116, !dbg !1399
  br i1 %198, label %199, label %241, !dbg !1400

; <label>:199:                                    ; preds = %195
  %200 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1401
  %201 = load i8, i8* %200, align 1, !dbg !1401, !tbaa !742
  %202 = icmp eq i8 %201, 0, !dbg !1402
  br i1 %202, label %203, label %241, !dbg !1403

; <label>:203:                                    ; preds = %199
  %204 = add nsw i32 %31, 3, !dbg !1404
  store i32 %204, i32* @pos, align 4, !dbg !1404, !tbaa !652
  %205 = or i1 %32, %0, !dbg !1405
  br i1 %205, label %206, label %208, !dbg !1405

; <label>:206:                                    ; preds = %203
  %207 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i64 0, i64 0), i32 5) #11, !dbg !1407
  tail call void (i8*, ...) @test_syntax_error(i8* %207, i8* null) #16, !dbg !1408
  unreachable, !dbg !1408

; <label>:208:                                    ; preds = %203
  %209 = sext i32 %16 to i64, !dbg !1409
  %210 = getelementptr inbounds i8*, i8** %21, i64 %209, !dbg !1409
  %211 = load i8*, i8** %210, align 8, !dbg !1409, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1189, metadata !586), !dbg !1410
  tail call void @llvm.dbg.value(metadata i8* %211, i64 0, metadata !1285, metadata !586) #11, !dbg !1411
  tail call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1291, metadata !586) #11, !dbg !1413
  %212 = bitcast %struct.stat* %2 to i8*, !dbg !1414
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %212) #11, !dbg !1414
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1292, metadata !586) #11, !dbg !1415
  tail call void @llvm.dbg.value(metadata i8* %211, i64 0, metadata !1299, metadata !586) #11, !dbg !1416
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1306, metadata !586) #11, !dbg !1416
  %213 = call i32 @__xstat(i32 1, i8* nonnull %211, %struct.stat* nonnull %2) #11, !dbg !1418
  call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1292, metadata !586) #11, !dbg !1415
  call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1311, metadata !586) #11, !dbg !1419
  %214 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 0, !dbg !1421
  %215 = load i64, i64* %214, align 8, !dbg !1421
  %216 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 1, !dbg !1421
  %217 = load i64, i64* %216, align 8, !dbg !1421
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %212) #11, !dbg !1422
  %218 = load i8**, i8*** @argv, align 8, !dbg !1423, !tbaa !593
  %219 = add nsw i32 %16, 2, !dbg !1424
  %220 = sext i32 %219 to i64, !dbg !1423
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220, !dbg !1423
  %222 = load i8*, i8** %221, align 8, !dbg !1423, !tbaa !593
  call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1192, metadata !586), !dbg !1425
  call void @llvm.dbg.value(metadata i8* %222, i64 0, metadata !1285, metadata !586) #11, !dbg !1426
  call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1291, metadata !586) #11, !dbg !1428
  %223 = bitcast %struct.stat* %5 to i8*, !dbg !1429
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %223) #11, !dbg !1429
  call void @llvm.dbg.value(metadata %struct.stat* %5, i64 0, metadata !1292, metadata !586) #11, !dbg !1430
  call void @llvm.dbg.value(metadata i8* %222, i64 0, metadata !1299, metadata !586) #11, !dbg !1431
  call void @llvm.dbg.value(metadata %struct.stat* %5, i64 0, metadata !1306, metadata !586) #11, !dbg !1431
  %224 = call i32 @__xstat(i32 1, i8* nonnull %222, %struct.stat* nonnull %5) #11, !dbg !1433
  %225 = icmp eq i32 %224, 0, !dbg !1434
  br i1 %225, label %227, label %226, !dbg !1435

; <label>:226:                                    ; preds = %208
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %223) #11, !dbg !1436
  br label %280, !dbg !1437

; <label>:227:                                    ; preds = %208
  %228 = icmp ne i32 %213, 0, !dbg !1438
  call void @llvm.dbg.value(metadata %struct.stat* %5, i64 0, metadata !1292, metadata !586) #11, !dbg !1430
  call void @llvm.dbg.value(metadata %struct.stat* %5, i64 0, metadata !1311, metadata !586) #11, !dbg !1439
  %229 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 0, !dbg !1441
  %230 = load i64, i64* %229, align 8, !dbg !1441
  %231 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 1, !dbg !1441
  %232 = load i64, i64* %231, align 8, !dbg !1441
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %223) #11, !dbg !1436
  %233 = icmp slt i64 %215, %230, !dbg !1442
  %234 = or i1 %228, %233, !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 %215, i64 0, metadata !1348, metadata !1351), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %217, i64 0, metadata !1348, metadata !1353), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1349, metadata !1351), !dbg !1445
  tail call void @llvm.dbg.value(metadata i64 %232, i64 0, metadata !1349, metadata !1353), !dbg !1445
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !1348, metadata !586), !dbg !1444
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !1349, metadata !586), !dbg !1445
  br i1 %234, label %280, label %235, !dbg !1437

; <label>:235:                                    ; preds = %227
  %236 = icmp sgt i64 %215, %230, !dbg !1446
  br i1 %236, label %280, label %237, !dbg !1447

; <label>:237:                                    ; preds = %235
  %238 = sub nsw i64 %217, %232, !dbg !1448
  %239 = trunc i64 %238 to i32, !dbg !1449
  %240 = icmp slt i32 %239, 0, !dbg !1447
  br label %280, !dbg !1447

; <label>:241:                                    ; preds = %113, %160, %195, %199, %156, %109, %107
  %242 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.70, i64 0, i64 0), i32 5) #11, !dbg !1450
  %243 = load i8**, i8*** @argv, align 8, !dbg !1451, !tbaa !593
  %244 = getelementptr inbounds i8*, i8** %243, i64 %33, !dbg !1451
  %245 = load i8*, i8** %244, align 8, !dbg !1451, !tbaa !593
  %246 = tail call i8* @quote(i8* %245) #11, !dbg !1452
  tail call void (i8*, ...) @test_syntax_error(i8* %242, i8* %246) #16, !dbg !1453
  unreachable, !dbg !1453

; <label>:247:                                    ; preds = %30
  %248 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1454
  %249 = load i8, i8* %248, align 1, !dbg !1454, !tbaa !742
  switch i8 %249, label %265 [
    i8 0, label %254
    i8 61, label %250
  ], !dbg !1455

; <label>:250:                                    ; preds = %247
  %251 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1456
  %252 = load i8, i8* %251, align 1, !dbg !1456, !tbaa !742
  %253 = icmp eq i8 %252, 0, !dbg !1456
  br i1 %253, label %254, label %265, !dbg !1457

; <label>:254:                                    ; preds = %247, %250
  %255 = sext i32 %31 to i64, !dbg !1458
  %256 = getelementptr inbounds i8*, i8** %21, i64 %255, !dbg !1458
  %257 = load i8*, i8** %256, align 8, !dbg !1458, !tbaa !593
  %258 = add nsw i32 %31, 2, !dbg !1458
  %259 = sext i32 %258 to i64, !dbg !1458
  %260 = getelementptr inbounds i8*, i8** %21, i64 %259, !dbg !1458
  %261 = load i8*, i8** %260, align 8, !dbg !1458, !tbaa !593
  %262 = tail call i32 @strcmp(i8* %257, i8* %261) #14, !dbg !1458
  %263 = icmp eq i32 %262, 0, !dbg !1458
  %264 = add nsw i32 %31, 3, !dbg !1459
  store i32 %264, i32* @pos, align 4, !dbg !1459, !tbaa !652
  br label %280

; <label>:265:                                    ; preds = %247, %30, %250
  %266 = tail call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #14, !dbg !1460
  %267 = icmp eq i32 %266, 0, !dbg !1460
  br i1 %267, label %268, label %279, !dbg !1461

; <label>:268:                                    ; preds = %265
  %269 = sext i32 %31 to i64, !dbg !1462
  %270 = getelementptr inbounds i8*, i8** %21, i64 %269, !dbg !1462
  %271 = load i8*, i8** %270, align 8, !dbg !1462, !tbaa !593
  %272 = add nsw i32 %31, 2, !dbg !1462
  %273 = sext i32 %272 to i64, !dbg !1462
  %274 = getelementptr inbounds i8*, i8** %21, i64 %273, !dbg !1462
  %275 = load i8*, i8** %274, align 8, !dbg !1462, !tbaa !593
  %276 = tail call i32 @strcmp(i8* %271, i8* %275) #14, !dbg !1462
  %277 = icmp ne i32 %276, 0, !dbg !1462
  %278 = add nsw i32 %31, 3, !dbg !1463
  store i32 %278, i32* @pos, align 4, !dbg !1463, !tbaa !652
  br label %280

; <label>:279:                                    ; preds = %265
  tail call void @abort() #15, !dbg !1464
  unreachable, !dbg !1464

; <label>:280:                                    ; preds = %227, %142, %237, %235, %152, %150, %226, %141, %169, %175, %183, %189, %268, %254, %105
  %281 = phi i1 [ %106, %105 ], [ %277, %268 ], [ %263, %254 ], [ false, %183 ], [ false, %175 ], [ false, %169 ], [ %194, %189 ], [ false, %142 ], [ %128, %141 ], [ true, %227 ], [ false, %226 ], [ %155, %152 ], [ true, %150 ], [ %240, %237 ], [ false, %235 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %11) #11, !dbg !1465
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %10) #11, !dbg !1465
  ret i1 %281, !dbg !1465
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @unary_operator() unnamed_addr #6 !dbg !1466 {
  %1 = alloca %struct.stat, align 8
  %2 = bitcast %struct.stat* %1 to i8*, !dbg !1482
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %2) #11, !dbg !1482
  %3 = load i8**, i8*** @argv, align 8, !dbg !1483, !tbaa !593
  %4 = load i32, i32* @pos, align 4, !dbg !1484, !tbaa !652
  %5 = sext i32 %4 to i64, !dbg !1483
  %6 = getelementptr inbounds i8*, i8** %3, i64 %5, !dbg !1483
  %7 = load i8*, i8** %6, align 8, !dbg !1483, !tbaa !593
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1483
  %9 = load i8, i8* %8, align 1, !dbg !1483, !tbaa !742
  %10 = sext i8 %9 to i32, !dbg !1483
  switch i32 %10, label %336 [
    i32 97, label %11
    i32 101, label %11
    i32 114, label %23
    i32 119, label %35
    i32 120, label %47
    i32 79, label %59
    i32 71, label %82
    i32 102, label %105
    i32 100, label %122
    i32 115, label %139
    i32 83, label %155
    i32 99, label %172
    i32 98, label %189
    i32 112, label %206
    i32 76, label %223
    i32 104, label %223
    i32 117, label %240
    i32 103, label %257
    i32 107, label %274
    i32 116, label %291
    i32 110, label %312
    i32 122, label %324
  ], !dbg !1485

; <label>:11:                                     ; preds = %0, %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1486
  %12 = add nsw i32 %4, 1, !dbg !1490
  store i32 %12, i32* @pos, align 4, !dbg !1490, !tbaa !652
  %13 = load i32, i32* @argc, align 4, !dbg !1491
  %14 = icmp slt i32 %12, %13, !dbg !1492
  br i1 %14, label %16, label %15, !dbg !1493

; <label>:15:                                     ; preds = %11
  tail call fastcc void @beyond() #15, !dbg !1494
  unreachable, !dbg !1494

; <label>:16:                                     ; preds = %11
  %17 = add nsw i32 %4, 2, !dbg !1495
  store i32 %17, i32* @pos, align 4, !dbg !1495, !tbaa !652
  %18 = sext i32 %12 to i64, !dbg !1496
  %19 = getelementptr inbounds i8*, i8** %3, i64 %18, !dbg !1496
  %20 = load i8*, i8** %19, align 8, !dbg !1496, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1468, metadata !586), !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1299, metadata !586) #11, !dbg !1498
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1306, metadata !586) #11, !dbg !1498
  %21 = call i32 @__xstat(i32 1, i8* nonnull %20, %struct.stat* nonnull %1) #11, !dbg !1500
  %22 = icmp eq i32 %21, 0, !dbg !1501
  br label %336, !dbg !1502

; <label>:23:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1503
  %24 = add nsw i32 %4, 1, !dbg !1506
  store i32 %24, i32* @pos, align 4, !dbg !1506, !tbaa !652
  %25 = load i32, i32* @argc, align 4, !dbg !1507
  %26 = icmp slt i32 %24, %25, !dbg !1508
  br i1 %26, label %28, label %27, !dbg !1509

; <label>:27:                                     ; preds = %23
  tail call fastcc void @beyond() #15, !dbg !1510
  unreachable, !dbg !1510

; <label>:28:                                     ; preds = %23
  %29 = add nsw i32 %4, 2, !dbg !1511
  store i32 %29, i32* @pos, align 4, !dbg !1511, !tbaa !652
  %30 = sext i32 %24 to i64, !dbg !1512
  %31 = getelementptr inbounds i8*, i8** %3, i64 %30, !dbg !1512
  %32 = load i8*, i8** %31, align 8, !dbg !1512, !tbaa !593
  %33 = tail call i32 @euidaccess(i8* %32, i32 4) #11, !dbg !1513
  %34 = icmp eq i32 %33, 0, !dbg !1514
  br label %336, !dbg !1515

; <label>:35:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1516
  %36 = add nsw i32 %4, 1, !dbg !1519
  store i32 %36, i32* @pos, align 4, !dbg !1519, !tbaa !652
  %37 = load i32, i32* @argc, align 4, !dbg !1520
  %38 = icmp slt i32 %36, %37, !dbg !1521
  br i1 %38, label %40, label %39, !dbg !1522

; <label>:39:                                     ; preds = %35
  tail call fastcc void @beyond() #15, !dbg !1523
  unreachable, !dbg !1523

; <label>:40:                                     ; preds = %35
  %41 = add nsw i32 %4, 2, !dbg !1524
  store i32 %41, i32* @pos, align 4, !dbg !1524, !tbaa !652
  %42 = sext i32 %36 to i64, !dbg !1525
  %43 = getelementptr inbounds i8*, i8** %3, i64 %42, !dbg !1525
  %44 = load i8*, i8** %43, align 8, !dbg !1525, !tbaa !593
  %45 = tail call i32 @euidaccess(i8* %44, i32 2) #11, !dbg !1526
  %46 = icmp eq i32 %45, 0, !dbg !1527
  br label %336, !dbg !1528

; <label>:47:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1529
  %48 = add nsw i32 %4, 1, !dbg !1532
  store i32 %48, i32* @pos, align 4, !dbg !1532, !tbaa !652
  %49 = load i32, i32* @argc, align 4, !dbg !1533
  %50 = icmp slt i32 %48, %49, !dbg !1534
  br i1 %50, label %52, label %51, !dbg !1535

; <label>:51:                                     ; preds = %47
  tail call fastcc void @beyond() #15, !dbg !1536
  unreachable, !dbg !1536

; <label>:52:                                     ; preds = %47
  %53 = add nsw i32 %4, 2, !dbg !1537
  store i32 %53, i32* @pos, align 4, !dbg !1537, !tbaa !652
  %54 = sext i32 %48 to i64, !dbg !1538
  %55 = getelementptr inbounds i8*, i8** %3, i64 %54, !dbg !1538
  %56 = load i8*, i8** %55, align 8, !dbg !1538, !tbaa !593
  %57 = tail call i32 @euidaccess(i8* %56, i32 1) #11, !dbg !1539
  %58 = icmp eq i32 %57, 0, !dbg !1540
  br label %336, !dbg !1541

; <label>:59:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1542
  %60 = add nsw i32 %4, 1, !dbg !1545
  store i32 %60, i32* @pos, align 4, !dbg !1545, !tbaa !652
  %61 = load i32, i32* @argc, align 4, !dbg !1546
  %62 = icmp slt i32 %60, %61, !dbg !1547
  br i1 %62, label %64, label %63, !dbg !1548

; <label>:63:                                     ; preds = %59
  tail call fastcc void @beyond() #15, !dbg !1549
  unreachable, !dbg !1549

; <label>:64:                                     ; preds = %59
  %65 = add nsw i32 %4, 2, !dbg !1550
  store i32 %65, i32* @pos, align 4, !dbg !1550, !tbaa !652
  %66 = sext i32 %60 to i64, !dbg !1551
  %67 = getelementptr inbounds i8*, i8** %3, i64 %66, !dbg !1551
  %68 = load i8*, i8** %67, align 8, !dbg !1551, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1468, metadata !586), !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !1299, metadata !586) #11, !dbg !1553
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1306, metadata !586) #11, !dbg !1553
  %69 = call i32 @__xstat(i32 1, i8* nonnull %68, %struct.stat* nonnull %1) #11, !dbg !1555
  %70 = icmp eq i32 %69, 0, !dbg !1556
  br i1 %70, label %71, label %336, !dbg !1557

; <label>:71:                                     ; preds = %64
  %72 = tail call i32* @__errno_location() #17, !dbg !1558
  store i32 0, i32* %72, align 4, !dbg !1559, !tbaa !652
  %73 = call i32 @geteuid() #11, !dbg !1560
  call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !1469, metadata !586), !dbg !1561
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1474, metadata !586), !dbg !1562
  %74 = icmp eq i32 %73, -1, !dbg !1563
  br i1 %74, label %75, label %78, !dbg !1564

; <label>:75:                                     ; preds = %71
  %76 = load i32, i32* %72, align 4, !dbg !1565, !tbaa !652
  %77 = icmp eq i32 %76, 0, !dbg !1565
  br i1 %77, label %78, label %336, !dbg !1566

; <label>:78:                                     ; preds = %75, %71
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 4, !dbg !1567
  %80 = load i32, i32* %79, align 4, !dbg !1567, !tbaa !1568
  %81 = icmp eq i32 %73, %80, !dbg !1569
  br label %336

; <label>:82:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1570
  %83 = add nsw i32 %4, 1, !dbg !1573
  store i32 %83, i32* @pos, align 4, !dbg !1573, !tbaa !652
  %84 = load i32, i32* @argc, align 4, !dbg !1574
  %85 = icmp slt i32 %83, %84, !dbg !1575
  br i1 %85, label %87, label %86, !dbg !1576

; <label>:86:                                     ; preds = %82
  tail call fastcc void @beyond() #15, !dbg !1577
  unreachable, !dbg !1577

; <label>:87:                                     ; preds = %82
  %88 = add nsw i32 %4, 2, !dbg !1578
  store i32 %88, i32* @pos, align 4, !dbg !1578, !tbaa !652
  %89 = sext i32 %83 to i64, !dbg !1579
  %90 = getelementptr inbounds i8*, i8** %3, i64 %89, !dbg !1579
  %91 = load i8*, i8** %90, align 8, !dbg !1579, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1468, metadata !586), !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !1299, metadata !586) #11, !dbg !1581
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1306, metadata !586) #11, !dbg !1581
  %92 = call i32 @__xstat(i32 1, i8* nonnull %91, %struct.stat* nonnull %1) #11, !dbg !1583
  %93 = icmp eq i32 %92, 0, !dbg !1584
  br i1 %93, label %94, label %336, !dbg !1585

; <label>:94:                                     ; preds = %87
  %95 = tail call i32* @__errno_location() #17, !dbg !1586
  store i32 0, i32* %95, align 4, !dbg !1587, !tbaa !652
  %96 = call i32 @getegid() #11, !dbg !1588
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1475, metadata !586), !dbg !1589
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1478, metadata !586), !dbg !1590
  %97 = icmp eq i32 %96, -1, !dbg !1591
  br i1 %97, label %98, label %101, !dbg !1592

; <label>:98:                                     ; preds = %94
  %99 = load i32, i32* %95, align 4, !dbg !1593, !tbaa !652
  %100 = icmp eq i32 %99, 0, !dbg !1593
  br i1 %100, label %101, label %336, !dbg !1594

; <label>:101:                                    ; preds = %98, %94
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 5, !dbg !1595
  %103 = load i32, i32* %102, align 8, !dbg !1595, !tbaa !1596
  %104 = icmp eq i32 %96, %103, !dbg !1597
  br label %336

; <label>:105:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1598
  %106 = add nsw i32 %4, 1, !dbg !1601
  store i32 %106, i32* @pos, align 4, !dbg !1601, !tbaa !652
  %107 = load i32, i32* @argc, align 4, !dbg !1602
  %108 = icmp slt i32 %106, %107, !dbg !1603
  br i1 %108, label %110, label %109, !dbg !1604

; <label>:109:                                    ; preds = %105
  tail call fastcc void @beyond() #15, !dbg !1605
  unreachable, !dbg !1605

; <label>:110:                                    ; preds = %105
  %111 = add nsw i32 %4, 2, !dbg !1606
  store i32 %111, i32* @pos, align 4, !dbg !1606, !tbaa !652
  %112 = sext i32 %106 to i64, !dbg !1607
  %113 = getelementptr inbounds i8*, i8** %3, i64 %112, !dbg !1607
  %114 = load i8*, i8** %113, align 8, !dbg !1607, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1468, metadata !586), !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %114, i64 0, metadata !1299, metadata !586) #11, !dbg !1608
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1306, metadata !586) #11, !dbg !1608
  %115 = call i32 @__xstat(i32 1, i8* nonnull %114, %struct.stat* nonnull %1) #11, !dbg !1610
  %116 = icmp eq i32 %115, 0, !dbg !1611
  br i1 %116, label %117, label %336, !dbg !1612

; <label>:117:                                    ; preds = %110
  %118 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1613
  %119 = load i32, i32* %118, align 8, !dbg !1613, !tbaa !1614
  %120 = and i32 %119, 61440, !dbg !1613
  %121 = icmp eq i32 %120, 32768, !dbg !1613
  br label %336

; <label>:122:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1615
  %123 = add nsw i32 %4, 1, !dbg !1618
  store i32 %123, i32* @pos, align 4, !dbg !1618, !tbaa !652
  %124 = load i32, i32* @argc, align 4, !dbg !1619
  %125 = icmp slt i32 %123, %124, !dbg !1620
  br i1 %125, label %127, label %126, !dbg !1621

; <label>:126:                                    ; preds = %122
  tail call fastcc void @beyond() #15, !dbg !1622
  unreachable, !dbg !1622

; <label>:127:                                    ; preds = %122
  %128 = add nsw i32 %4, 2, !dbg !1623
  store i32 %128, i32* @pos, align 4, !dbg !1623, !tbaa !652
  %129 = sext i32 %123 to i64, !dbg !1624
  %130 = getelementptr inbounds i8*, i8** %3, i64 %129, !dbg !1624
  %131 = load i8*, i8** %130, align 8, !dbg !1624, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1468, metadata !586), !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !1299, metadata !586) #11, !dbg !1625
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1306, metadata !586) #11, !dbg !1625
  %132 = call i32 @__xstat(i32 1, i8* nonnull %131, %struct.stat* nonnull %1) #11, !dbg !1627
  %133 = icmp eq i32 %132, 0, !dbg !1628
  br i1 %133, label %134, label %336, !dbg !1629

; <label>:134:                                    ; preds = %127
  %135 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1630
  %136 = load i32, i32* %135, align 8, !dbg !1630, !tbaa !1614
  %137 = and i32 %136, 61440, !dbg !1630
  %138 = icmp eq i32 %137, 16384, !dbg !1630
  br label %336

; <label>:139:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1631
  %140 = add nsw i32 %4, 1, !dbg !1634
  store i32 %140, i32* @pos, align 4, !dbg !1634, !tbaa !652
  %141 = load i32, i32* @argc, align 4, !dbg !1635
  %142 = icmp slt i32 %140, %141, !dbg !1636
  br i1 %142, label %144, label %143, !dbg !1637

; <label>:143:                                    ; preds = %139
  tail call fastcc void @beyond() #15, !dbg !1638
  unreachable, !dbg !1638

; <label>:144:                                    ; preds = %139
  %145 = add nsw i32 %4, 2, !dbg !1639
  store i32 %145, i32* @pos, align 4, !dbg !1639, !tbaa !652
  %146 = sext i32 %140 to i64, !dbg !1640
  %147 = getelementptr inbounds i8*, i8** %3, i64 %146, !dbg !1640
  %148 = load i8*, i8** %147, align 8, !dbg !1640, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1468, metadata !586), !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %148, i64 0, metadata !1299, metadata !586) #11, !dbg !1641
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1306, metadata !586) #11, !dbg !1641
  %149 = call i32 @__xstat(i32 1, i8* nonnull %148, %struct.stat* nonnull %1) #11, !dbg !1643
  %150 = icmp eq i32 %149, 0, !dbg !1644
  %151 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 8, !dbg !1645
  %152 = load i64, i64* %151, align 8, !dbg !1645
  %153 = icmp sgt i64 %152, 0, !dbg !1646
  %154 = and i1 %150, %153, !dbg !1647
  br label %336, !dbg !1648

; <label>:155:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1649
  %156 = add nsw i32 %4, 1, !dbg !1652
  store i32 %156, i32* @pos, align 4, !dbg !1652, !tbaa !652
  %157 = load i32, i32* @argc, align 4, !dbg !1653
  %158 = icmp slt i32 %156, %157, !dbg !1654
  br i1 %158, label %160, label %159, !dbg !1655

; <label>:159:                                    ; preds = %155
  tail call fastcc void @beyond() #15, !dbg !1656
  unreachable, !dbg !1656

; <label>:160:                                    ; preds = %155
  %161 = add nsw i32 %4, 2, !dbg !1657
  store i32 %161, i32* @pos, align 4, !dbg !1657, !tbaa !652
  %162 = sext i32 %156 to i64, !dbg !1658
  %163 = getelementptr inbounds i8*, i8** %3, i64 %162, !dbg !1658
  %164 = load i8*, i8** %163, align 8, !dbg !1658, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1468, metadata !586), !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %164, i64 0, metadata !1299, metadata !586) #11, !dbg !1659
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1306, metadata !586) #11, !dbg !1659
  %165 = call i32 @__xstat(i32 1, i8* nonnull %164, %struct.stat* nonnull %1) #11, !dbg !1661
  %166 = icmp eq i32 %165, 0, !dbg !1662
  br i1 %166, label %167, label %336, !dbg !1663

; <label>:167:                                    ; preds = %160
  %168 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1664
  %169 = load i32, i32* %168, align 8, !dbg !1664, !tbaa !1614
  %170 = and i32 %169, 61440, !dbg !1664
  %171 = icmp eq i32 %170, 49152, !dbg !1664
  br label %336

; <label>:172:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1665
  %173 = add nsw i32 %4, 1, !dbg !1668
  store i32 %173, i32* @pos, align 4, !dbg !1668, !tbaa !652
  %174 = load i32, i32* @argc, align 4, !dbg !1669
  %175 = icmp slt i32 %173, %174, !dbg !1670
  br i1 %175, label %177, label %176, !dbg !1671

; <label>:176:                                    ; preds = %172
  tail call fastcc void @beyond() #15, !dbg !1672
  unreachable, !dbg !1672

; <label>:177:                                    ; preds = %172
  %178 = add nsw i32 %4, 2, !dbg !1673
  store i32 %178, i32* @pos, align 4, !dbg !1673, !tbaa !652
  %179 = sext i32 %173 to i64, !dbg !1674
  %180 = getelementptr inbounds i8*, i8** %3, i64 %179, !dbg !1674
  %181 = load i8*, i8** %180, align 8, !dbg !1674, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1468, metadata !586), !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %181, i64 0, metadata !1299, metadata !586) #11, !dbg !1675
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1306, metadata !586) #11, !dbg !1675
  %182 = call i32 @__xstat(i32 1, i8* nonnull %181, %struct.stat* nonnull %1) #11, !dbg !1677
  %183 = icmp eq i32 %182, 0, !dbg !1678
  br i1 %183, label %184, label %336, !dbg !1679

; <label>:184:                                    ; preds = %177
  %185 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1680
  %186 = load i32, i32* %185, align 8, !dbg !1680, !tbaa !1614
  %187 = and i32 %186, 61440, !dbg !1680
  %188 = icmp eq i32 %187, 8192, !dbg !1680
  br label %336

; <label>:189:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1681
  %190 = add nsw i32 %4, 1, !dbg !1684
  store i32 %190, i32* @pos, align 4, !dbg !1684, !tbaa !652
  %191 = load i32, i32* @argc, align 4, !dbg !1685
  %192 = icmp slt i32 %190, %191, !dbg !1686
  br i1 %192, label %194, label %193, !dbg !1687

; <label>:193:                                    ; preds = %189
  tail call fastcc void @beyond() #15, !dbg !1688
  unreachable, !dbg !1688

; <label>:194:                                    ; preds = %189
  %195 = add nsw i32 %4, 2, !dbg !1689
  store i32 %195, i32* @pos, align 4, !dbg !1689, !tbaa !652
  %196 = sext i32 %190 to i64, !dbg !1690
  %197 = getelementptr inbounds i8*, i8** %3, i64 %196, !dbg !1690
  %198 = load i8*, i8** %197, align 8, !dbg !1690, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1468, metadata !586), !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %198, i64 0, metadata !1299, metadata !586) #11, !dbg !1691
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1306, metadata !586) #11, !dbg !1691
  %199 = call i32 @__xstat(i32 1, i8* nonnull %198, %struct.stat* nonnull %1) #11, !dbg !1693
  %200 = icmp eq i32 %199, 0, !dbg !1694
  br i1 %200, label %201, label %336, !dbg !1695

; <label>:201:                                    ; preds = %194
  %202 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1696
  %203 = load i32, i32* %202, align 8, !dbg !1696, !tbaa !1614
  %204 = and i32 %203, 61440, !dbg !1696
  %205 = icmp eq i32 %204, 24576, !dbg !1696
  br label %336

; <label>:206:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1697
  %207 = add nsw i32 %4, 1, !dbg !1700
  store i32 %207, i32* @pos, align 4, !dbg !1700, !tbaa !652
  %208 = load i32, i32* @argc, align 4, !dbg !1701
  %209 = icmp slt i32 %207, %208, !dbg !1702
  br i1 %209, label %211, label %210, !dbg !1703

; <label>:210:                                    ; preds = %206
  tail call fastcc void @beyond() #15, !dbg !1704
  unreachable, !dbg !1704

; <label>:211:                                    ; preds = %206
  %212 = add nsw i32 %4, 2, !dbg !1705
  store i32 %212, i32* @pos, align 4, !dbg !1705, !tbaa !652
  %213 = sext i32 %207 to i64, !dbg !1706
  %214 = getelementptr inbounds i8*, i8** %3, i64 %213, !dbg !1706
  %215 = load i8*, i8** %214, align 8, !dbg !1706, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1468, metadata !586), !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %215, i64 0, metadata !1299, metadata !586) #11, !dbg !1707
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1306, metadata !586) #11, !dbg !1707
  %216 = call i32 @__xstat(i32 1, i8* nonnull %215, %struct.stat* nonnull %1) #11, !dbg !1709
  %217 = icmp eq i32 %216, 0, !dbg !1710
  br i1 %217, label %218, label %336, !dbg !1711

; <label>:218:                                    ; preds = %211
  %219 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1712
  %220 = load i32, i32* %219, align 8, !dbg !1712, !tbaa !1614
  %221 = and i32 %220, 61440, !dbg !1712
  %222 = icmp eq i32 %221, 4096, !dbg !1712
  br label %336

; <label>:223:                                    ; preds = %0, %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1713
  %224 = add nsw i32 %4, 1, !dbg !1716
  store i32 %224, i32* @pos, align 4, !dbg !1716, !tbaa !652
  %225 = load i32, i32* @argc, align 4, !dbg !1717
  %226 = icmp slt i32 %224, %225, !dbg !1718
  br i1 %226, label %228, label %227, !dbg !1719

; <label>:227:                                    ; preds = %223
  tail call fastcc void @beyond() #15, !dbg !1720
  unreachable, !dbg !1720

; <label>:228:                                    ; preds = %223
  %229 = add nsw i32 %4, 2, !dbg !1721
  store i32 %229, i32* @pos, align 4, !dbg !1721, !tbaa !652
  %230 = sext i32 %224 to i64, !dbg !1722
  %231 = getelementptr inbounds i8*, i8** %3, i64 %230, !dbg !1722
  %232 = load i8*, i8** %231, align 8, !dbg !1722, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1468, metadata !586), !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %232, i64 0, metadata !1723, metadata !586) #11, !dbg !1727
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1726, metadata !586) #11, !dbg !1727
  %233 = call i32 @__lxstat(i32 1, i8* nonnull %232, %struct.stat* nonnull %1) #11, !dbg !1729
  %234 = icmp eq i32 %233, 0, !dbg !1730
  br i1 %234, label %235, label %336, !dbg !1731

; <label>:235:                                    ; preds = %228
  %236 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1732
  %237 = load i32, i32* %236, align 8, !dbg !1732, !tbaa !1614
  %238 = and i32 %237, 61440, !dbg !1732
  %239 = icmp eq i32 %238, 40960, !dbg !1732
  br label %336

; <label>:240:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1733
  %241 = add nsw i32 %4, 1, !dbg !1736
  store i32 %241, i32* @pos, align 4, !dbg !1736, !tbaa !652
  %242 = load i32, i32* @argc, align 4, !dbg !1737
  %243 = icmp slt i32 %241, %242, !dbg !1738
  br i1 %243, label %245, label %244, !dbg !1739

; <label>:244:                                    ; preds = %240
  tail call fastcc void @beyond() #15, !dbg !1740
  unreachable, !dbg !1740

; <label>:245:                                    ; preds = %240
  %246 = add nsw i32 %4, 2, !dbg !1741
  store i32 %246, i32* @pos, align 4, !dbg !1741, !tbaa !652
  %247 = sext i32 %241 to i64, !dbg !1742
  %248 = getelementptr inbounds i8*, i8** %3, i64 %247, !dbg !1742
  %249 = load i8*, i8** %248, align 8, !dbg !1742, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1468, metadata !586), !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %249, i64 0, metadata !1299, metadata !586) #11, !dbg !1743
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1306, metadata !586) #11, !dbg !1743
  %250 = call i32 @__xstat(i32 1, i8* nonnull %249, %struct.stat* nonnull %1) #11, !dbg !1745
  %251 = icmp eq i32 %250, 0, !dbg !1746
  br i1 %251, label %252, label %336, !dbg !1747

; <label>:252:                                    ; preds = %245
  %253 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1748
  %254 = load i32, i32* %253, align 8, !dbg !1748, !tbaa !1614
  %255 = and i32 %254, 2048, !dbg !1749
  %256 = icmp ne i32 %255, 0, !dbg !1747
  br label %336

; <label>:257:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1750
  %258 = add nsw i32 %4, 1, !dbg !1753
  store i32 %258, i32* @pos, align 4, !dbg !1753, !tbaa !652
  %259 = load i32, i32* @argc, align 4, !dbg !1754
  %260 = icmp slt i32 %258, %259, !dbg !1755
  br i1 %260, label %262, label %261, !dbg !1756

; <label>:261:                                    ; preds = %257
  tail call fastcc void @beyond() #15, !dbg !1757
  unreachable, !dbg !1757

; <label>:262:                                    ; preds = %257
  %263 = add nsw i32 %4, 2, !dbg !1758
  store i32 %263, i32* @pos, align 4, !dbg !1758, !tbaa !652
  %264 = sext i32 %258 to i64, !dbg !1759
  %265 = getelementptr inbounds i8*, i8** %3, i64 %264, !dbg !1759
  %266 = load i8*, i8** %265, align 8, !dbg !1759, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1468, metadata !586), !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %266, i64 0, metadata !1299, metadata !586) #11, !dbg !1760
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1306, metadata !586) #11, !dbg !1760
  %267 = call i32 @__xstat(i32 1, i8* nonnull %266, %struct.stat* nonnull %1) #11, !dbg !1762
  %268 = icmp eq i32 %267, 0, !dbg !1763
  br i1 %268, label %269, label %336, !dbg !1764

; <label>:269:                                    ; preds = %262
  %270 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1765
  %271 = load i32, i32* %270, align 8, !dbg !1765, !tbaa !1614
  %272 = and i32 %271, 1024, !dbg !1766
  %273 = icmp ne i32 %272, 0, !dbg !1764
  br label %336

; <label>:274:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1767
  %275 = add nsw i32 %4, 1, !dbg !1770
  store i32 %275, i32* @pos, align 4, !dbg !1770, !tbaa !652
  %276 = load i32, i32* @argc, align 4, !dbg !1771
  %277 = icmp slt i32 %275, %276, !dbg !1772
  br i1 %277, label %279, label %278, !dbg !1773

; <label>:278:                                    ; preds = %274
  tail call fastcc void @beyond() #15, !dbg !1774
  unreachable, !dbg !1774

; <label>:279:                                    ; preds = %274
  %280 = add nsw i32 %4, 2, !dbg !1775
  store i32 %280, i32* @pos, align 4, !dbg !1775, !tbaa !652
  %281 = sext i32 %275 to i64, !dbg !1776
  %282 = getelementptr inbounds i8*, i8** %3, i64 %281, !dbg !1776
  %283 = load i8*, i8** %282, align 8, !dbg !1776, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1468, metadata !586), !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %283, i64 0, metadata !1299, metadata !586) #11, !dbg !1777
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1306, metadata !586) #11, !dbg !1777
  %284 = call i32 @__xstat(i32 1, i8* nonnull %283, %struct.stat* nonnull %1) #11, !dbg !1779
  %285 = icmp eq i32 %284, 0, !dbg !1780
  br i1 %285, label %286, label %336, !dbg !1781

; <label>:286:                                    ; preds = %279
  %287 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1782
  %288 = load i32, i32* %287, align 8, !dbg !1782, !tbaa !1614
  %289 = and i32 %288, 512, !dbg !1783
  %290 = icmp ne i32 %289, 0, !dbg !1781
  br label %336

; <label>:291:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1784
  %292 = add nsw i32 %4, 1, !dbg !1787
  store i32 %292, i32* @pos, align 4, !dbg !1787, !tbaa !652
  %293 = load i32, i32* @argc, align 4, !dbg !1788
  %294 = icmp slt i32 %292, %293, !dbg !1789
  br i1 %294, label %296, label %295, !dbg !1790

; <label>:295:                                    ; preds = %291
  tail call fastcc void @beyond() #15, !dbg !1791
  unreachable, !dbg !1791

; <label>:296:                                    ; preds = %291
  %297 = add nsw i32 %4, 2, !dbg !1792
  store i32 %297, i32* @pos, align 4, !dbg !1792, !tbaa !652
  %298 = sext i32 %292 to i64, !dbg !1793
  %299 = getelementptr inbounds i8*, i8** %3, i64 %298, !dbg !1793
  %300 = load i8*, i8** %299, align 8, !dbg !1793, !tbaa !593
  %301 = tail call fastcc i8* @find_int(i8* %300), !dbg !1794
  tail call void @llvm.dbg.value(metadata i8* %301, i64 0, metadata !1481, metadata !586), !dbg !1795
  %302 = tail call i32* @__errno_location() #17, !dbg !1796
  store i32 0, i32* %302, align 4, !dbg !1797, !tbaa !652
  %303 = tail call i64 @strtol(i8* nocapture %301, i8** null, i32 10) #11, !dbg !1798
  tail call void @llvm.dbg.value(metadata i64 %303, i64 0, metadata !1479, metadata !586), !dbg !1799
  %304 = load i32, i32* %302, align 4, !dbg !1800, !tbaa !652
  %305 = icmp ne i32 %304, 34, !dbg !1801
  %306 = icmp ult i64 %303, 2147483648, !dbg !1802
  %307 = and i1 %306, %305, !dbg !1802
  br i1 %307, label %308, label %336, !dbg !1802

; <label>:308:                                    ; preds = %296
  %309 = trunc i64 %303 to i32, !dbg !1803
  %310 = tail call i32 @isatty(i32 %309) #11, !dbg !1804
  %311 = icmp ne i32 %310, 0, !dbg !1805
  br label %336

; <label>:312:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1806
  %313 = add nsw i32 %4, 1, !dbg !1809
  store i32 %313, i32* @pos, align 4, !dbg !1809, !tbaa !652
  %314 = load i32, i32* @argc, align 4, !dbg !1810
  %315 = icmp slt i32 %313, %314, !dbg !1811
  br i1 %315, label %317, label %316, !dbg !1812

; <label>:316:                                    ; preds = %312
  tail call fastcc void @beyond() #15, !dbg !1813
  unreachable, !dbg !1813

; <label>:317:                                    ; preds = %312
  %318 = add nsw i32 %4, 2, !dbg !1814
  store i32 %318, i32* @pos, align 4, !dbg !1814, !tbaa !652
  %319 = sext i32 %313 to i64, !dbg !1815
  %320 = getelementptr inbounds i8*, i8** %3, i64 %319, !dbg !1815
  %321 = load i8*, i8** %320, align 8, !dbg !1815, !tbaa !593
  %322 = load i8, i8* %321, align 1, !dbg !1815, !tbaa !742
  %323 = icmp ne i8 %322, 0, !dbg !1816
  br label %336, !dbg !1817

; <label>:324:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !752, metadata !586) #11, !dbg !1818
  %325 = add nsw i32 %4, 1, !dbg !1821
  store i32 %325, i32* @pos, align 4, !dbg !1821, !tbaa !652
  %326 = load i32, i32* @argc, align 4, !dbg !1822
  %327 = icmp slt i32 %325, %326, !dbg !1823
  br i1 %327, label %329, label %328, !dbg !1824

; <label>:328:                                    ; preds = %324
  tail call fastcc void @beyond() #15, !dbg !1825
  unreachable, !dbg !1825

; <label>:329:                                    ; preds = %324
  %330 = add nsw i32 %4, 2, !dbg !1826
  store i32 %330, i32* @pos, align 4, !dbg !1826, !tbaa !652
  %331 = sext i32 %325 to i64, !dbg !1827
  %332 = getelementptr inbounds i8*, i8** %3, i64 %331, !dbg !1827
  %333 = load i8*, i8** %332, align 8, !dbg !1827, !tbaa !593
  %334 = load i8, i8* %333, align 1, !dbg !1827, !tbaa !742
  %335 = icmp eq i8 %334, 0, !dbg !1828
  br label %336, !dbg !1829

; <label>:336:                                    ; preds = %296, %308, %279, %286, %262, %269, %245, %252, %228, %235, %211, %218, %194, %201, %177, %184, %160, %167, %127, %134, %110, %117, %101, %98, %87, %78, %75, %64, %0, %329, %317, %144, %52, %40, %28, %16
  %337 = phi i1 [ %335, %329 ], [ %323, %317 ], [ %154, %144 ], [ %58, %52 ], [ %46, %40 ], [ %34, %28 ], [ %22, %16 ], [ false, %0 ], [ false, %64 ], [ false, %75 ], [ %81, %78 ], [ false, %87 ], [ false, %98 ], [ %104, %101 ], [ false, %110 ], [ %121, %117 ], [ false, %127 ], [ %138, %134 ], [ false, %160 ], [ %171, %167 ], [ false, %177 ], [ %188, %184 ], [ false, %194 ], [ %205, %201 ], [ false, %211 ], [ %222, %218 ], [ false, %228 ], [ %239, %235 ], [ false, %245 ], [ %256, %252 ], [ false, %262 ], [ %273, %269 ], [ false, %279 ], [ %290, %286 ], [ false, %296 ], [ %311, %308 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %2) #11, !dbg !1830
  ret i1 %337, !dbg !1830
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @euidaccess(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @find_int(i8*) unnamed_addr #6 !dbg !1831 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1835, metadata !586), !dbg !1838
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1836, metadata !586), !dbg !1839
  %2 = tail call i16** @__ctype_b_loc() #17, !dbg !1840
  %3 = load i16*, i16** %2, align 8, !tbaa !593
  br label %4, !dbg !1843

; <label>:4:                                      ; preds = %4, %1
  %5 = phi i8* [ %0, %1 ], [ %12, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1836, metadata !586), !dbg !1839
  %6 = load i8, i8* %5, align 1, !dbg !1840, !tbaa !742
  %7 = zext i8 %6 to i64, !dbg !1840
  %8 = getelementptr inbounds i16, i16* %3, i64 %7, !dbg !1840
  %9 = load i16, i16* %8, align 2, !dbg !1840, !tbaa !1844
  %10 = and i16 %9, 1, !dbg !1840
  %11 = icmp eq i16 %10, 0, !dbg !1846
  %12 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1847
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1836, metadata !586), !dbg !1839
  br i1 %11, label %13, label %4, !dbg !1846, !llvm.loop !1848

; <label>:13:                                     ; preds = %4
  %14 = icmp eq i8 %6, 43, !dbg !1850
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1836, metadata !586), !dbg !1839
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1837, metadata !586), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1837, metadata !586), !dbg !1852
  %15 = icmp eq i8 %6, 45, !dbg !1853
  %16 = zext i1 %15 to i64, !dbg !1855
  %17 = getelementptr inbounds i8, i8* %5, i64 %16, !dbg !1855
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1836, metadata !586), !dbg !1839
  %18 = select i1 %14, i8* %12, i8* %17, !dbg !1856
  %19 = select i1 %14, i8* %12, i8* %5, !dbg !1856
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1837, metadata !586), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1836, metadata !586), !dbg !1839
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1836, metadata !1857), !dbg !1839
  %20 = load i8, i8* %18, align 1, !dbg !1858, !tbaa !742
  %21 = sext i8 %20 to i32, !dbg !1858
  %22 = add nsw i32 %21, -48, !dbg !1858
  %23 = icmp ult i32 %22, 10, !dbg !1858
  br i1 %23, label %24, label %52, !dbg !1860

; <label>:24:                                     ; preds = %13
  br label %25

; <label>:25:                                     ; preds = %24, %25
  %26 = phi i8* [ %27, %25 ], [ %18, %24 ]
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1836, metadata !586), !dbg !1839
  %28 = load i8, i8* %27, align 1, !dbg !1861, !tbaa !742
  %29 = sext i8 %28 to i32, !dbg !1861
  %30 = add nsw i32 %29, -48, !dbg !1861
  %31 = icmp ult i32 %30, 10, !dbg !1861
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1836, metadata !1857), !dbg !1839
  br i1 %31, label %25, label %32, !dbg !1863, !llvm.loop !1864

; <label>:32:                                     ; preds = %25
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1836, metadata !586), !dbg !1839
  %33 = zext i8 %28 to i64, !dbg !1866
  %34 = getelementptr inbounds i16, i16* %3, i64 %33, !dbg !1866
  %35 = load i16, i16* %34, align 2, !dbg !1866, !tbaa !1844
  %36 = and i16 %35, 1, !dbg !1866
  %37 = icmp eq i16 %36, 0, !dbg !1867
  br i1 %37, label %48, label %38, !dbg !1867

; <label>:38:                                     ; preds = %32
  br label %39, !dbg !1868

; <label>:39:                                     ; preds = %38, %39
  %40 = phi i8* [ %41, %39 ], [ %27, %38 ]
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1836, metadata !586), !dbg !1839
  %41 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !1868
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !1836, metadata !586), !dbg !1839
  %42 = load i8, i8* %41, align 1, !dbg !1866, !tbaa !742
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !1836, metadata !586), !dbg !1839
  %43 = zext i8 %42 to i64, !dbg !1866
  %44 = getelementptr inbounds i16, i16* %3, i64 %43, !dbg !1866
  %45 = load i16, i16* %44, align 2, !dbg !1866, !tbaa !1844
  %46 = and i16 %45, 1, !dbg !1866
  %47 = icmp eq i16 %46, 0, !dbg !1867
  br i1 %47, label %48, label %39, !dbg !1867, !llvm.loop !1869

; <label>:48:                                     ; preds = %39, %32
  %49 = phi i8 [ %28, %32 ], [ %42, %39 ]
  %50 = icmp eq i8 %49, 0, !dbg !1870
  br i1 %50, label %51, label %52, !dbg !1872

; <label>:51:                                     ; preds = %48
  ret i8* %19, !dbg !1873

; <label>:52:                                     ; preds = %48, %13
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0), i32 5) #11, !dbg !1874
  %54 = tail call i8* @quote(i8* %0) #11, !dbg !1875
  tail call void (i8*, ...) @test_syntax_error(i8* %53, i8* %54) #16, !dbg !1876
  unreachable, !dbg !1876
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1877 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1879, metadata !586), !dbg !1880
  store i8* %0, i8** @file_name, align 8, !dbg !1881, !tbaa !593
  ret void, !dbg !1882
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1883 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1885, metadata !586), !dbg !1886
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1887, !tbaa !1888
  ret void, !dbg !1890
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1891 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1896, !tbaa !593
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1897
  %3 = icmp eq i32 %2, 0, !dbg !1898
  br i1 %3, label %21, label %4, !dbg !1899

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1900, !tbaa !1888, !range !1901
  %6 = icmp eq i8 %5, 0, !dbg !1900
  %7 = tail call i32* @__errno_location() #17, !dbg !1902
  br i1 %6, label %11, label %8, !dbg !1904

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1905, !tbaa !652
  %10 = icmp eq i32 %9, 32, !dbg !1906
  br i1 %10, label %21, label %11, !dbg !1907

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i32 5) #11, !dbg !1908
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1893, metadata !586), !dbg !1909
  %13 = load i8*, i8** @file_name, align 8, !dbg !1910, !tbaa !593
  %14 = icmp eq i8* %13, null, !dbg !1910
  %15 = load i32, i32* %7, align 4, !tbaa !652
  br i1 %14, label %18, label %16, !dbg !1911

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1912
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.36, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1913
  br label %19, !dbg !1913

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.37, i64 0, i64 0), i8* %12) #11, !dbg !1914
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1915, !tbaa !652
  tail call void @_exit(i32 %20) #15, !dbg !1916
  unreachable, !dbg !1916

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1917, !tbaa !593
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1919
  %24 = icmp eq i32 %23, 0, !dbg !1920
  br i1 %24, label %27, label %25, !dbg !1921

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1922, !tbaa !652
  tail call void @_exit(i32 %26) #15, !dbg !1923
  unreachable, !dbg !1923

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1924
}

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !1925 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1930, metadata !586), !dbg !1933
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1931, metadata !586), !dbg !1934
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1935
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1932, metadata !586), !dbg !1936
  store i8 0, i8* %3, align 1, !dbg !1937, !tbaa !742
  br label %4, !dbg !1938, !llvm.loop !1941

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1932, metadata !586), !dbg !1936
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1930, metadata !586), !dbg !1933
  %7 = urem i64 %5, 10, !dbg !1943
  %8 = trunc i64 %7 to i8, !dbg !1944
  %9 = or i8 %8, 48, !dbg !1944
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1945
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1932, metadata !586), !dbg !1936
  store i8 %9, i8* %10, align 1, !dbg !1946, !tbaa !742
  %11 = udiv i64 %5, 10, !dbg !1947
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1930, metadata !586), !dbg !1933
  %12 = icmp ugt i64 %5, 9, !dbg !1948
  br i1 %12, label %4, label %13, !dbg !1949, !llvm.loop !1941

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1932, metadata !586), !dbg !1936
  ret i8* %10, !dbg !1950
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1951 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1953, metadata !586), !dbg !1956
  %2 = icmp eq i8* %0, null, !dbg !1957
  br i1 %2, label %3, label %6, !dbg !1959

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1960, !tbaa !593
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.73, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1962
  tail call void @abort() #15, !dbg !1963
  unreachable, !dbg !1963

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1964
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1954, metadata !586), !dbg !1965
  %8 = icmp eq i8* %7, null, !dbg !1966
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1967
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1968
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1955, metadata !586), !dbg !1969
  %11 = ptrtoint i8* %10 to i64, !dbg !1970
  %12 = ptrtoint i8* %0 to i64, !dbg !1970
  %13 = sub i64 %11, %12, !dbg !1970
  %14 = icmp sgt i64 %13, 6, !dbg !1972
  br i1 %14, label %15, label %24, !dbg !1973

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1974
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.74, i64 0, i64 0), i64 7) #14, !dbg !1975
  %18 = icmp eq i32 %17, 0, !dbg !1976
  br i1 %18, label %19, label %24, !dbg !1977

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1953, metadata !586), !dbg !1956
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i64 3) #14, !dbg !1978
  %21 = icmp eq i32 %20, 0, !dbg !1981
  br i1 %21, label %22, label %24, !dbg !1982

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1983
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1953, metadata !586), !dbg !1956
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1985, !tbaa !593
  br label %24, !dbg !1986

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1953, metadata !586), !dbg !1956
  store i8* %25, i8** @program_name, align 8, !dbg !1987, !tbaa !593
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1988, !tbaa !593
  ret void, !dbg !1989
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1990 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1995, metadata !586), !dbg !1998
  %2 = tail call i32* @__errno_location() #17, !dbg !1999
  %3 = load i32, i32* %2, align 4, !dbg !1999, !tbaa !652
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1996, metadata !586), !dbg !2000
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2001
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2001
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !2001
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !2002
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2002
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1997, metadata !586), !dbg !2003
  store i32 %3, i32* %2, align 4, !dbg !2004, !tbaa !652
  ret %struct.quoting_options* %8, !dbg !2005
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !2006 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2012, metadata !586), !dbg !2013
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2014
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2014
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2015
  %5 = load i32, i32* %4, align 8, !dbg !2015, !tbaa !2016
  ret i32 %5, !dbg !2018
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2019 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2023, metadata !586), !dbg !2025
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2024, metadata !586), !dbg !2026
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2027
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2027
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2028
  store i32 %1, i32* %5, align 8, !dbg !2029, !tbaa !2016
  ret void, !dbg !2030
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2031 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2035, metadata !586), !dbg !2043
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2036, metadata !586), !dbg !2044
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2037, metadata !586), !dbg !2045
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2038, metadata !586), !dbg !2046
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2047
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2047
  %6 = lshr i8 %1, 5, !dbg !2048
  %7 = zext i8 %6 to i64, !dbg !2048
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2049
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2039, metadata !586), !dbg !2050
  %9 = and i8 %1, 31, !dbg !2051
  %10 = zext i8 %9 to i32, !dbg !2052
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2041, metadata !586), !dbg !2053
  %11 = load i32, i32* %8, align 4, !dbg !2054, !tbaa !652
  %12 = lshr i32 %11, %10, !dbg !2055
  %13 = and i32 %12, 1, !dbg !2056
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2042, metadata !586), !dbg !2057
  %14 = and i32 %2, 1, !dbg !2058
  %15 = xor i32 %13, %14, !dbg !2059
  %16 = shl i32 %15, %10, !dbg !2060
  %17 = xor i32 %16, %11, !dbg !2061
  store i32 %17, i32* %8, align 4, !dbg !2061, !tbaa !652
  ret i32 %13, !dbg !2062
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2063 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2067, metadata !586), !dbg !2070
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2068, metadata !586), !dbg !2071
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2072
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2067, metadata !586), !dbg !2070
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2074
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2067, metadata !586), !dbg !2070
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2075
  %6 = load i32, i32* %5, align 4, !dbg !2075, !tbaa !2076
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2069, metadata !586), !dbg !2077
  store i32 %1, i32* %5, align 4, !dbg !2078, !tbaa !2076
  ret i32 %6, !dbg !2079
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2080 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2084, metadata !586), !dbg !2087
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2085, metadata !586), !dbg !2088
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2086, metadata !586), !dbg !2089
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2090
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2084, metadata !586), !dbg !2087
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2092
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2084, metadata !586), !dbg !2087
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2093
  store i32 10, i32* %6, align 8, !dbg !2094, !tbaa !2016
  %7 = icmp ne i8* %1, null, !dbg !2095
  %8 = icmp ne i8* %2, null, !dbg !2097
  %9 = and i1 %7, %8, !dbg !2098
  br i1 %9, label %11, label %10, !dbg !2098

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2099
  unreachable, !dbg !2099

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2100
  store i8* %1, i8** %12, align 8, !dbg !2101, !tbaa !2102
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2103
  store i8* %2, i8** %13, align 8, !dbg !2104, !tbaa !2105
  ret void, !dbg !2106
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2107 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2111, metadata !586), !dbg !2119
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2112, metadata !586), !dbg !2120
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2113, metadata !586), !dbg !2121
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2114, metadata !586), !dbg !2122
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2115, metadata !586), !dbg !2123
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2124
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2124
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2116, metadata !586), !dbg !2125
  %8 = tail call i32* @__errno_location() #17, !dbg !2126
  %9 = load i32, i32* %8, align 4, !dbg !2126, !tbaa !652
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2117, metadata !586), !dbg !2127
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2128
  %11 = load i32, i32* %10, align 8, !dbg !2128, !tbaa !2016
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2129
  %13 = load i32, i32* %12, align 4, !dbg !2129, !tbaa !2076
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2130
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2131
  %16 = load i8*, i8** %15, align 8, !dbg !2131, !tbaa !2102
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2132
  %18 = load i8*, i8** %17, align 8, !dbg !2132, !tbaa !2105
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2133
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2118, metadata !586), !dbg !2134
  store i32 %9, i32* %8, align 4, !dbg !2135, !tbaa !652
  ret i64 %19, !dbg !2136
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2137 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2143, metadata !586), !dbg !2207
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2144, metadata !586), !dbg !2208
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2145, metadata !586), !dbg !2209
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2146, metadata !586), !dbg !2210
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2147, metadata !586), !dbg !2211
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2148, metadata !586), !dbg !2212
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2149, metadata !586), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2150, metadata !586), !dbg !2214
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2151, metadata !586), !dbg !2215
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2153, metadata !586), !dbg !2216
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2154, metadata !586), !dbg !2217
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2155, metadata !586), !dbg !2218
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2156, metadata !586), !dbg !2219
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2157, metadata !586), !dbg !2220
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2221
  %14 = icmp eq i64 %13, 1, !dbg !2222
  %15 = lshr i32 %5, 1, !dbg !2223
  %16 = trunc i32 %15 to i8, !dbg !2223
  %17 = and i8 %16, 1, !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2159, metadata !586), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2160, metadata !586), !dbg !2224
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2161, metadata !586), !dbg !2225
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2162, metadata !586), !dbg !2226
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2227

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2144, metadata !586), !dbg !2208
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2162, metadata !586), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2161, metadata !586), !dbg !2225
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2160, metadata !586), !dbg !2224
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2159, metadata !586), !dbg !2223
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2146, metadata !586), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2157, metadata !586), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2156, metadata !586), !dbg !2219
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2155, metadata !586), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2154, metadata !586), !dbg !2217
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2151, metadata !586), !dbg !2215
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2150, metadata !586), !dbg !2214
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2147, metadata !586), !dbg !2211
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
  ], !dbg !2228

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2147, metadata !586), !dbg !2211
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2159, metadata !586), !dbg !2223
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2159, metadata !586), !dbg !2223
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2147, metadata !586), !dbg !2211
  br label %94, !dbg !2229

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2159, metadata !586), !dbg !2223
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2147, metadata !586), !dbg !2211
  %43 = and i8 %36, 1, !dbg !2231
  %44 = icmp eq i8 %43, 0, !dbg !2231
  br i1 %44, label %45, label %94, !dbg !2229

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2233
  br i1 %46, label %94, label %47, !dbg !2236

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2233, !tbaa !742
  br label %94, !dbg !2233

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.86, i64 0, i64 0), i32 %28), !dbg !2237
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2150, metadata !586), !dbg !2214
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), i32 %28), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2151, metadata !586), !dbg !2215
  br label %51, !dbg !2242

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2151, metadata !586), !dbg !2215
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2150, metadata !586), !dbg !2214
  %54 = and i8 %36, 1, !dbg !2243
  %55 = icmp eq i8 %54, 0, !dbg !2243
  br i1 %55, label %56, label %72, !dbg !2245

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2155, metadata !586), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2155, metadata !586), !dbg !2218
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2153, metadata !586), !dbg !2216
  %57 = load i8, i8* %52, align 1, !dbg !2246, !tbaa !742
  %58 = icmp eq i8 %57, 0, !dbg !2249
  br i1 %58, label %72, label %59, !dbg !2249

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2250

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !2155, metadata !586), !dbg !2218
  %64 = icmp ult i64 %63, %40, !dbg !2250
  br i1 %64, label %65, label %67, !dbg !2253

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2250
  store i8 %61, i8* %66, align 1, !dbg !2250, !tbaa !742
  br label %67, !dbg !2250

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2153, metadata !586), !dbg !2216
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2254
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2155, metadata !586), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2155, metadata !586), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2153, metadata !586), !dbg !2216
  %70 = load i8, i8* %69, align 1, !dbg !2246, !tbaa !742
  %71 = icmp eq i8 %70, 0, !dbg !2249
  br i1 %71, label %72, label %60, !dbg !2249, !llvm.loop !2255

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2157, metadata !586), !dbg !2220
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2155, metadata !586), !dbg !2218
  %74 = call i64 @strlen(i8* %53) #14, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2156, metadata !586), !dbg !2219
  br label %94, !dbg !2258

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2157, metadata !586), !dbg !2220
  br label %76, !dbg !2259

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !2157, metadata !586), !dbg !2220
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2159, metadata !586), !dbg !2223
  br label %78, !dbg !2260

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2159, metadata !586), !dbg !2223
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !2157, metadata !586), !dbg !2220
  %81 = and i8 %80, 1, !dbg !2261
  %82 = icmp eq i8 %81, 0, !dbg !2261
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2157, metadata !586), !dbg !2220
  %83 = select i1 %82, i8 1, i8 %79, !dbg !2263
  br label %84, !dbg !2263

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2159, metadata !586), !dbg !2223
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !2157, metadata !586), !dbg !2220
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2147, metadata !586), !dbg !2211
  %87 = and i8 %86, 1, !dbg !2264
  %88 = icmp eq i8 %87, 0, !dbg !2264
  br i1 %88, label %89, label %94, !dbg !2266

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !2267
  br i1 %90, label %94, label %91, !dbg !2270

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !2267, !tbaa !742
  br label %94, !dbg !2267

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2159, metadata !586), !dbg !2223
  br label %94, !dbg !2271

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !2272
  unreachable, !dbg !2272

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2159, metadata !586), !dbg !2223
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !2157, metadata !586), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !2156, metadata !586), !dbg !2219
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2155, metadata !586), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2151, metadata !586), !dbg !2215
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !2150, metadata !586), !dbg !2214
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !2147, metadata !586), !dbg !2211
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2152, metadata !586), !dbg !2273
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
  br label %122, !dbg !2274

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2144, metadata !586), !dbg !2208
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2162, metadata !586), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2161, metadata !586), !dbg !2225
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !2160, metadata !586), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2146, metadata !586), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2154, metadata !586), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !2152, metadata !586), !dbg !2273
  %131 = icmp eq i64 %126, -1, !dbg !2275
  br i1 %131, label %134, label %132, !dbg !2276

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !2277
  br i1 %133, label %590, label %138, !dbg !2278

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2279
  %136 = load i8, i8* %135, align 1, !dbg !2279, !tbaa !742
  %137 = icmp eq i8 %136, 0, !dbg !2280
  br i1 %137, label %590, label %138, !dbg !2278

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2168, metadata !586), !dbg !2281
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2169, metadata !586), !dbg !2282
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2170, metadata !586), !dbg !2283
  br i1 %108, label %139, label %154, !dbg !2284

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !2286
  %141 = and i1 %109, %131, !dbg !2287
  br i1 %141, label %142, label %144, !dbg !2287

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !2146, metadata !586), !dbg !2210
  br label %144, !dbg !2289

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !2146, metadata !586), !dbg !2210
  %146 = icmp ugt i64 %140, %145, !dbg !2290
  br i1 %146, label %154, label %147, !dbg !2291

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2292
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !2293
  %150 = icmp ne i32 %149, 0, !dbg !2294
  %151 = or i1 %150, %111, !dbg !2295
  %152 = xor i1 %150, true, !dbg !2295
  %153 = zext i1 %152 to i8, !dbg !2295
  br i1 %151, label %154, label %635, !dbg !2295

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2168, metadata !586), !dbg !2281
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !2146, metadata !586), !dbg !2210
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2296
  %158 = load i8, i8* %157, align 1, !dbg !2296, !tbaa !742
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2163, metadata !586), !dbg !2297
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
  ], !dbg !2298

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !2299

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !2300

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2169, metadata !586), !dbg !2282
  %162 = and i8 %127, 1, !dbg !2304
  %163 = icmp eq i8 %162, 0, !dbg !2304
  %164 = and i1 %113, %163, !dbg !2304
  br i1 %164, label %165, label %181, !dbg !2304

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2306
  br i1 %166, label %167, label %169, !dbg !2310

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2306
  store i8 39, i8* %168, align 1, !dbg !2306, !tbaa !742
  br label %169, !dbg !2306

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2310
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !2153, metadata !586), !dbg !2216
  %171 = icmp ult i64 %170, %130, !dbg !2311
  br i1 %171, label %172, label %174, !dbg !2314

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2311
  store i8 36, i8* %173, align 1, !dbg !2311, !tbaa !742
  br label %174, !dbg !2311

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !2153, metadata !586), !dbg !2216
  %176 = icmp ult i64 %175, %130, !dbg !2315
  br i1 %176, label %177, label %179, !dbg !2318

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2315
  store i8 39, i8* %178, align 1, !dbg !2315, !tbaa !742
  br label %179, !dbg !2315

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2318
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2160, metadata !586), !dbg !2224
  br label %181, !dbg !2319

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !2160, metadata !586), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !2153, metadata !586), !dbg !2216
  %184 = icmp ult i64 %182, %130, !dbg !2320
  br i1 %184, label %185, label %187, !dbg !2323

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2320
  store i8 92, i8* %186, align 1, !dbg !2320, !tbaa !742
  br label %187, !dbg !2320

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2323
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !2153, metadata !586), !dbg !2216
  br i1 %105, label %189, label %470, !dbg !2324

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2326
  %191 = icmp ult i64 %190, %155, !dbg !2327
  br i1 %191, label %192, label %470, !dbg !2328

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2329
  %194 = load i8, i8* %193, align 1, !dbg !2329, !tbaa !742
  %195 = add i8 %194, -48, !dbg !2330
  %196 = icmp ult i8 %195, 10, !dbg !2330
  br i1 %196, label %197, label %470, !dbg !2330

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2331
  br i1 %198, label %199, label %201, !dbg !2335

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2331
  store i8 48, i8* %200, align 1, !dbg !2331, !tbaa !742
  br label %201, !dbg !2331

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !2153, metadata !586), !dbg !2216
  %203 = icmp ult i64 %202, %130, !dbg !2336
  br i1 %203, label %204, label %206, !dbg !2339

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2336
  store i8 48, i8* %205, align 1, !dbg !2336, !tbaa !742
  br label %206, !dbg !2336

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2339
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !2153, metadata !586), !dbg !2216
  br label %470, !dbg !2340

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2341

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2342

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2343

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2345

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2347
  %214 = icmp ult i64 %213, %155, !dbg !2348
  br i1 %214, label %215, label %470, !dbg !2349

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2350
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2351
  %218 = load i8, i8* %217, align 1, !dbg !2351, !tbaa !742
  %219 = icmp eq i8 %218, 63, !dbg !2352
  br i1 %219, label %220, label %470, !dbg !2353

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2354
  %222 = load i8, i8* %221, align 1, !dbg !2354, !tbaa !742
  %223 = sext i8 %222 to i32, !dbg !2354
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
  ], !dbg !2355

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2356

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !2163, metadata !586), !dbg !2297
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !2152, metadata !586), !dbg !2273
  %226 = icmp ult i64 %124, %130, !dbg !2358
  br i1 %226, label %227, label %229, !dbg !2361

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2358
  store i8 63, i8* %228, align 1, !dbg !2358, !tbaa !742
  br label %229, !dbg !2358

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !2153, metadata !586), !dbg !2216
  %231 = icmp ult i64 %230, %130, !dbg !2362
  br i1 %231, label %232, label %234, !dbg !2365

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2362
  store i8 34, i8* %233, align 1, !dbg !2362, !tbaa !742
  br label %234, !dbg !2362

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2365
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !2153, metadata !586), !dbg !2216
  %236 = icmp ult i64 %235, %130, !dbg !2366
  br i1 %236, label %237, label %239, !dbg !2369

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2366
  store i8 34, i8* %238, align 1, !dbg !2366, !tbaa !742
  br label %239, !dbg !2366

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !2153, metadata !586), !dbg !2216
  %241 = icmp ult i64 %240, %130, !dbg !2370
  br i1 %241, label %242, label %244, !dbg !2373

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2370
  store i8 63, i8* %243, align 1, !dbg !2370, !tbaa !742
  br label %244, !dbg !2370

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2373
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !2153, metadata !586), !dbg !2216
  br label %470, !dbg !2374

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2167, metadata !586), !dbg !2375
  br label %256, !dbg !2376

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2167, metadata !586), !dbg !2375
  br label %256, !dbg !2377

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2167, metadata !586), !dbg !2375
  br label %254, !dbg !2378

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2167, metadata !586), !dbg !2375
  br label %254, !dbg !2379

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2167, metadata !586), !dbg !2375
  br label %256, !dbg !2380

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2167, metadata !586), !dbg !2375
  br i1 %113, label %252, label %253, !dbg !2381

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2382

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2385

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !2167, metadata !586), !dbg !2375
  br i1 %117, label %256, label %635, !dbg !2387

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !2167, metadata !586), !dbg !2375
  br i1 %104, label %497, label %470, !dbg !2389

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2390
  br i1 %259, label %260, label %265, !dbg !2392

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2393, !tbaa !742
  %262 = icmp ne i8 %261, 0, !dbg !2394
  %263 = icmp ne i64 %123, 0, !dbg !2395
  %264 = or i1 %263, %262, !dbg !2397
  br i1 %264, label %470, label %271, !dbg !2397

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2398
  %267 = icmp ne i64 %123, 0, !dbg !2395
  %268 = or i1 %267, %266, !dbg !2392
  br i1 %268, label %470, label %271, !dbg !2392

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2395
  br i1 %270, label %271, label %470, !dbg !2399

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2170, metadata !586), !dbg !2283
  br label %272, !dbg !2400

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !2170, metadata !586), !dbg !2283
  br i1 %117, label %470, label %635, !dbg !2401

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2161, metadata !586), !dbg !2225
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2170, metadata !586), !dbg !2283
  br i1 %113, label %275, label %470, !dbg !2403

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2404

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2407
  %278 = icmp ne i64 %125, 0, !dbg !2409
  %279 = or i1 %278, %277, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2154, metadata !586), !dbg !2217
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2144, metadata !586), !dbg !2208
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2410
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2144, metadata !586), !dbg !2208
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !2154, metadata !586), !dbg !2217
  %282 = icmp ult i64 %124, %281, !dbg !2411
  br i1 %282, label %283, label %285, !dbg !2414

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2411
  store i8 39, i8* %284, align 1, !dbg !2411, !tbaa !742
  br label %285, !dbg !2411

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2414
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !2153, metadata !586), !dbg !2216
  %287 = icmp ult i64 %286, %281, !dbg !2415
  br i1 %287, label %288, label %290, !dbg !2418

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2415
  store i8 92, i8* %289, align 1, !dbg !2415, !tbaa !742
  br label %290, !dbg !2415

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !2153, metadata !586), !dbg !2216
  %292 = icmp ult i64 %291, %281, !dbg !2419
  br i1 %292, label %293, label %295, !dbg !2422

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2419
  store i8 39, i8* %294, align 1, !dbg !2419, !tbaa !742
  br label %295, !dbg !2419

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2422
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2160, metadata !586), !dbg !2224
  br label %470, !dbg !2423

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2424

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2171, metadata !586), !dbg !2425
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2426
  %300 = load i16*, i16** %299, align 8, !dbg !2426, !tbaa !593
  %301 = zext i8 %158 to i64, !dbg !2426
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2426
  %303 = load i16, i16* %302, align 2, !dbg !2426, !tbaa !1844
  %304 = lshr i16 %303, 14, !dbg !2428
  %305 = trunc i16 %304 to i8, !dbg !2428
  %306 = and i8 %305, 1, !dbg !2428
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !2174, metadata !586), !dbg !2429
  br label %362, !dbg !2430

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2431
  store i64 0, i64* %10, align 8, !dbg !2432
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2171, metadata !586), !dbg !2425
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2174, metadata !586), !dbg !2429
  %308 = icmp eq i64 %155, -1, !dbg !2433
  br i1 %308, label %309, label %311, !dbg !2435

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !2146, metadata !586), !dbg !2210
  br label %311, !dbg !2437

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !2146, metadata !586), !dbg !2210
  br label %313, !dbg !2438, !llvm.loop !2439

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !2174, metadata !586), !dbg !2429
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2171, metadata !586), !dbg !2425
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2441
  %316 = add i64 %314, %123, !dbg !2442
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2443
  %318 = sub i64 %312, %316, !dbg !2444
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2175, metadata !586), !dbg !2445
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2193, metadata !586), !dbg !2446
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #11, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !2196, metadata !586), !dbg !2448
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2449

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2174, metadata !586), !dbg !2429
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2171, metadata !586), !dbg !2425
  %321 = icmp ugt i64 %312, %316, !dbg !2450
  br i1 %321, label %322, label %347, !dbg !2452

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2453

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !2171, metadata !586), !dbg !2425
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2453
  %327 = load i8, i8* %326, align 1, !dbg !2453, !tbaa !742
  %328 = icmp eq i8 %327, 0, !dbg !2452
  br i1 %328, label %347, label %329, !dbg !2454

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2455
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2171, metadata !586), !dbg !2425
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2171, metadata !586), !dbg !2425
  %331 = add i64 %330, %123, !dbg !2456
  %332 = icmp ult i64 %331, %312, !dbg !2450
  br i1 %332, label %323, label %347, !dbg !2452, !llvm.loop !2457

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2458
  %335 = and i1 %115, %334, !dbg !2461
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2197, metadata !586), !dbg !2462
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2197, metadata !586), !dbg !2462
  br i1 %335, label %336, label %350, !dbg !2461

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2463

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !2197, metadata !586), !dbg !2462
  %339 = add i64 %338, %316, !dbg !2463
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2464
  %341 = load i8, i8* %340, align 1, !dbg !2464, !tbaa !742
  %342 = sext i8 %341 to i32, !dbg !2464
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2465

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2466
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2197, metadata !586), !dbg !2462
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2197, metadata !586), !dbg !2462
  %345 = icmp ult i64 %344, %319, !dbg !2458
  br i1 %345, label %337, label %350, !dbg !2467, !llvm.loop !2468

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2470

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2174, metadata !586), !dbg !2429
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2171, metadata !586), !dbg !2425
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2470
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2471, !tbaa !652
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !2193, metadata !586), !dbg !2446
  %352 = call i32 @iswprint(i32 %351) #11, !dbg !2473
  %353 = icmp eq i32 %352, 0, !dbg !2473
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2174, metadata !586), !dbg !2429
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2474
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2174, metadata !586), !dbg !2429
  %355 = add i64 %319, %314, !dbg !2475
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2171, metadata !586), !dbg !2425
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2174, metadata !586), !dbg !2429
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2171, metadata !586), !dbg !2425
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2470
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2175, metadata !586), !dbg !2445
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2476
  %357 = icmp eq i32 %356, 0, !dbg !2477
  br i1 %357, label %313, label %358, !dbg !2478, !llvm.loop !2439

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2479
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2174, metadata !586), !dbg !2429
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2171, metadata !586), !dbg !2425
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2470
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2479
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !2174, metadata !586), !dbg !2429
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !2171, metadata !586), !dbg !2425
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !2146, metadata !586), !dbg !2210
  %366 = and i8 %365, 1, !dbg !2480
  %367 = icmp ne i8 %366, 0, !dbg !2480
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !2170, metadata !586), !dbg !2283
  %368 = icmp ult i64 %364, 2, !dbg !2481
  %369 = or i1 %367, %112, !dbg !2482
  %370 = and i1 %368, %369, !dbg !2483
  br i1 %370, label %470, label %371, !dbg !2483

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2484
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !2204, metadata !586), !dbg !2485
  br label %373, !dbg !2486

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !2169, metadata !586), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !2168, metadata !586), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !2163, metadata !586), !dbg !2297
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !2160, metadata !586), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !2152, metadata !586), !dbg !2273
  br i1 %369, label %426, label %380, !dbg !2487

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2492

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2169, metadata !586), !dbg !2282
  %382 = and i8 %376, 1, !dbg !2495
  %383 = icmp eq i8 %382, 0, !dbg !2495
  %384 = and i1 %113, %383, !dbg !2495
  br i1 %384, label %385, label %401, !dbg !2495

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2497
  br i1 %386, label %387, label %389, !dbg !2501

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2497
  store i8 39, i8* %388, align 1, !dbg !2497, !tbaa !742
  br label %389, !dbg !2497

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2501
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !2153, metadata !586), !dbg !2216
  %391 = icmp ult i64 %390, %130, !dbg !2502
  br i1 %391, label %392, label %394, !dbg !2505

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2502
  store i8 36, i8* %393, align 1, !dbg !2502, !tbaa !742
  br label %394, !dbg !2502

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2505
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !2153, metadata !586), !dbg !2216
  %396 = icmp ult i64 %395, %130, !dbg !2506
  br i1 %396, label %397, label %399, !dbg !2509

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2506
  store i8 39, i8* %398, align 1, !dbg !2506, !tbaa !742
  br label %399, !dbg !2506

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2160, metadata !586), !dbg !2224
  br label %401, !dbg !2510

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !2160, metadata !586), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !2153, metadata !586), !dbg !2216
  %404 = icmp ult i64 %402, %130, !dbg !2511
  br i1 %404, label %405, label %407, !dbg !2514

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2511
  store i8 92, i8* %406, align 1, !dbg !2511, !tbaa !742
  br label %407, !dbg !2511

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2514
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2153, metadata !586), !dbg !2216
  %409 = icmp ult i64 %408, %130, !dbg !2515
  br i1 %409, label %410, label %414, !dbg !2518

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2515
  %412 = or i8 %411, 48, !dbg !2515
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2515
  store i8 %412, i8* %413, align 1, !dbg !2515, !tbaa !742
  br label %414, !dbg !2515

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2518
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !2153, metadata !586), !dbg !2216
  %416 = icmp ult i64 %415, %130, !dbg !2519
  br i1 %416, label %417, label %422, !dbg !2522

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2519
  %419 = and i8 %418, 7, !dbg !2519
  %420 = or i8 %419, 48, !dbg !2519
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2519
  store i8 %420, i8* %421, align 1, !dbg !2519, !tbaa !742
  br label %422, !dbg !2519

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2522
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !2153, metadata !586), !dbg !2216
  %424 = and i8 %377, 7, !dbg !2523
  %425 = or i8 %424, 48, !dbg !2524
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !2163, metadata !586), !dbg !2297
  br label %435, !dbg !2525

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2526
  %428 = icmp eq i8 %427, 0, !dbg !2526
  br i1 %428, label %435, label %429, !dbg !2528

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2529
  br i1 %430, label %431, label %433, !dbg !2533

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2529
  store i8 92, i8* %432, align 1, !dbg !2529, !tbaa !742
  br label %433, !dbg !2529

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2533
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2168, metadata !586), !dbg !2281
  br label %435, !dbg !2534

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !2169, metadata !586), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !2168, metadata !586), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !2163, metadata !586), !dbg !2297
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !2160, metadata !586), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !2153, metadata !586), !dbg !2216
  %441 = add i64 %374, 1, !dbg !2535
  %442 = icmp ugt i64 %372, %441, !dbg !2537
  br i1 %442, label %443, label %535, !dbg !2538

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2539
  %445 = icmp ne i8 %444, 0, !dbg !2539
  %446 = and i8 %440, 1, !dbg !2539
  %447 = icmp eq i8 %446, 0, !dbg !2539
  %448 = and i1 %445, %447, !dbg !2539
  br i1 %448, label %449, label %460, !dbg !2539

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2542
  br i1 %450, label %451, label %453, !dbg !2546

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2542
  store i8 39, i8* %452, align 1, !dbg !2542, !tbaa !742
  br label %453, !dbg !2542

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2546
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !2153, metadata !586), !dbg !2216
  %455 = icmp ult i64 %454, %130, !dbg !2547
  br i1 %455, label %456, label %458, !dbg !2550

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2547
  store i8 39, i8* %457, align 1, !dbg !2547, !tbaa !742
  br label %458, !dbg !2547

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2550
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2160, metadata !586), !dbg !2224
  br label %460, !dbg !2551

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !2160, metadata !586), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !2153, metadata !586), !dbg !2216
  %463 = icmp ult i64 %461, %130, !dbg !2552
  br i1 %463, label %464, label %466, !dbg !2555

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2552
  store i8 %438, i8* %465, align 1, !dbg !2552, !tbaa !742
  br label %466, !dbg !2552

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2555
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !2152, metadata !586), !dbg !2273
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2556
  %469 = load i8, i8* %468, align 1, !dbg !2556, !tbaa !742
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !2163, metadata !586), !dbg !2297
  br label %373, !dbg !2557, !llvm.loop !2558

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2144, metadata !586), !dbg !2208
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !2170, metadata !586), !dbg !2283
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !2169, metadata !586), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2168, metadata !586), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !2163, metadata !586), !dbg !2297
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !2161, metadata !586), !dbg !2225
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2160, metadata !586), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !2146, metadata !586), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2154, metadata !586), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !2152, metadata !586), !dbg !2273
  br i1 %106, label %482, label %481, !dbg !2561

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2563

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2564

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2565
  %485 = zext i8 %484 to i64, !dbg !2565
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2566
  %487 = load i32, i32* %486, align 4, !dbg !2566, !tbaa !652
  %488 = and i8 %477, 31, !dbg !2567
  %489 = zext i8 %488 to i32, !dbg !2568
  %490 = shl i32 1, %489, !dbg !2569
  %491 = and i32 %487, %490, !dbg !2569
  %492 = icmp eq i32 %491, 0, !dbg !2569
  %493 = icmp eq i8 %156, 0, !dbg !2570
  %494 = and i1 %493, %492, !dbg !2571
  br i1 %494, label %535, label %497, !dbg !2571

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2570
  br i1 %496, label %535, label %497, !dbg !2572

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2144, metadata !586), !dbg !2208
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !2170, metadata !586), !dbg !2283
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !2163, metadata !586), !dbg !2297
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !2161, metadata !586), !dbg !2225
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !2160, metadata !586), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !2146, metadata !586), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !2154, metadata !586), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !2152, metadata !586), !dbg !2273
  br i1 %111, label %507, label %635, !dbg !2573

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2169, metadata !586), !dbg !2282
  %508 = and i8 %502, 1, !dbg !2575
  %509 = icmp eq i8 %508, 0, !dbg !2575
  %510 = and i1 %113, %509, !dbg !2575
  br i1 %510, label %511, label %527, !dbg !2575

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2577
  br i1 %512, label %513, label %515, !dbg !2581

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2577
  store i8 39, i8* %514, align 1, !dbg !2577, !tbaa !742
  br label %515, !dbg !2577

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2581
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !2153, metadata !586), !dbg !2216
  %517 = icmp ult i64 %516, %506, !dbg !2582
  br i1 %517, label %518, label %520, !dbg !2585

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2582
  store i8 36, i8* %519, align 1, !dbg !2582, !tbaa !742
  br label %520, !dbg !2582

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !2153, metadata !586), !dbg !2216
  %522 = icmp ult i64 %521, %506, !dbg !2586
  br i1 %522, label %523, label %525, !dbg !2589

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2586
  store i8 39, i8* %524, align 1, !dbg !2586, !tbaa !742
  br label %525, !dbg !2586

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2589
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2160, metadata !586), !dbg !2224
  br label %527, !dbg !2590

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !2160, metadata !586), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !2153, metadata !586), !dbg !2216
  %530 = icmp ult i64 %528, %506, !dbg !2591
  br i1 %530, label %531, label %533, !dbg !2594

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2591
  store i8 92, i8* %532, align 1, !dbg !2591, !tbaa !742
  br label %533, !dbg !2591

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2594
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2144, metadata !586), !dbg !2208
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2170, metadata !586), !dbg !2283
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2169, metadata !586), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2163, metadata !586), !dbg !2297
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2161, metadata !586), !dbg !2225
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2160, metadata !586), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2146, metadata !586), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2154, metadata !586), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2152, metadata !586), !dbg !2273
  br label %562, !dbg !2595

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2144, metadata !586), !dbg !2208
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2170, metadata !586), !dbg !2283
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2169, metadata !586), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2163, metadata !586), !dbg !2297
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2161, metadata !586), !dbg !2225
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2160, metadata !586), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2146, metadata !586), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2154, metadata !586), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2152, metadata !586), !dbg !2273
  %546 = and i8 %540, 1, !dbg !2595
  %547 = icmp ne i8 %546, 0, !dbg !2595
  %548 = and i8 %543, 1, !dbg !2595
  %549 = icmp eq i8 %548, 0, !dbg !2595
  %550 = and i1 %547, %549, !dbg !2595
  br i1 %550, label %551, label %562, !dbg !2595

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2598
  br i1 %552, label %553, label %555, !dbg !2602

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2598
  store i8 39, i8* %554, align 1, !dbg !2598, !tbaa !742
  br label %555, !dbg !2598

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !2153, metadata !586), !dbg !2216
  %557 = icmp ult i64 %556, %545, !dbg !2603
  br i1 %557, label %558, label %560, !dbg !2606

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2603
  store i8 39, i8* %559, align 1, !dbg !2603, !tbaa !742
  br label %560, !dbg !2603

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2606
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2160, metadata !586), !dbg !2224
  br label %562, !dbg !2607

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !2160, metadata !586), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !2153, metadata !586), !dbg !2216
  %572 = icmp ult i64 %570, %563, !dbg !2608
  br i1 %572, label %573, label %575, !dbg !2611

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2608
  store i8 %565, i8* %574, align 1, !dbg !2608, !tbaa !742
  br label %575, !dbg !2608

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2611
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !2153, metadata !586), !dbg !2216
  %577 = and i8 %564, 1, !dbg !2612
  %578 = icmp eq i8 %577, 0, !dbg !2612
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2162, metadata !586), !dbg !2226
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2614
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !2162, metadata !586), !dbg !2226
  br label %580, !dbg !2615

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !2144, metadata !586), !dbg !2208
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !2162, metadata !586), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2161, metadata !586), !dbg !2225
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !2160, metadata !586), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !2146, metadata !586), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2154, metadata !586), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !2152, metadata !586), !dbg !2273
  %589 = add i64 %581, 1, !dbg !2616
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !2152, metadata !586), !dbg !2273
  br label %122, !dbg !2617, !llvm.loop !2618

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2620
  %593 = and i1 %113, %592, !dbg !2622
  %594 = xor i1 %593, true, !dbg !2622
  %595 = or i1 %111, %594, !dbg !2622
  br i1 %595, label %596, label %635, !dbg !2622

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2623
  %598 = xor i1 %597, true, !dbg !2623
  %599 = and i8 %128, 1, !dbg !2625
  %600 = icmp eq i8 %599, 0, !dbg !2625
  %601 = or i1 %600, %598, !dbg !2623
  br i1 %601, label %611, label %602, !dbg !2623

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2626
  %604 = icmp eq i8 %603, 0, !dbg !2626
  br i1 %604, label %607, label %605, !dbg !2629

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2630
  br label %645, !dbg !2631

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2632
  %609 = icmp ne i64 %125, 0, !dbg !2634
  %610 = and i1 %609, %608, !dbg !2635
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2144, metadata !586), !dbg !2208
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2153, metadata !586), !dbg !2216
  br i1 %610, label %27, label %611, !dbg !2635

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2636
  %613 = and i1 %612, %111, !dbg !2638
  br i1 %613, label %614, label %630, !dbg !2638

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2155, metadata !586), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2153, metadata !586), !dbg !2216
  %615 = load i8, i8* %99, align 1, !dbg !2639, !tbaa !742
  %616 = icmp eq i8 %615, 0, !dbg !2642
  br i1 %616, label %630, label %617, !dbg !2642

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2643

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !2153, metadata !586), !dbg !2216
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !2155, metadata !586), !dbg !2218
  %622 = icmp ult i64 %621, %130, !dbg !2643
  br i1 %622, label %623, label %625, !dbg !2646

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2643
  store i8 %619, i8* %624, align 1, !dbg !2643, !tbaa !742
  br label %625, !dbg !2643

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2646
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2153, metadata !586), !dbg !2216
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2647
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2155, metadata !586), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2155, metadata !586), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2153, metadata !586), !dbg !2216
  %628 = load i8, i8* %627, align 1, !dbg !2639, !tbaa !742
  %629 = icmp eq i8 %628, 0, !dbg !2642
  br i1 %629, label %630, label %618, !dbg !2642, !llvm.loop !2648

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !2153, metadata !586), !dbg !2216
  %632 = icmp ult i64 %631, %130, !dbg !2650
  br i1 %632, label %633, label %645, !dbg !2652

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2653
  store i8 0, i8* %634, align 1, !dbg !2654, !tbaa !742
  br label %645, !dbg !2653

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !2144, metadata !586), !dbg !2208
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !2146, metadata !586), !dbg !2210
  %639 = icmp ne i32 %636, 2, !dbg !2655
  %640 = icmp eq i8 %103, 0, !dbg !2657
  %641 = or i1 %639, %640, !dbg !2658
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2147, metadata !586), !dbg !2211
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2658
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !2147, metadata !586), !dbg !2211
  %643 = and i32 %5, -3, !dbg !2659
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2660
  br label %645, !dbg !2661

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2662
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2663 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2667, metadata !586), !dbg !2671
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2668, metadata !586), !dbg !2672
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2673
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2669, metadata !586), !dbg !2674
  %4 = icmp eq i8* %3, %0, !dbg !2675
  br i1 %4, label %5, label %75, !dbg !2677

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2678
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2670, metadata !586), !dbg !2679
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2680, metadata !586), !dbg !2696
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2694, metadata !586), !dbg !2699
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2695, metadata !586), !dbg !2700
  %7 = load i8, i8* %6, align 1, !dbg !2701, !tbaa !742
  %8 = sext i8 %7 to i32, !dbg !2701
  %9 = and i32 %8, -33, !dbg !2701
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2701

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2703, metadata !586), !dbg !2717
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2715, metadata !586), !dbg !2721
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2716, metadata !586), !dbg !2722
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2723
  %12 = load i8, i8* %11, align 1, !dbg !2723, !tbaa !742
  %13 = sext i8 %12 to i32, !dbg !2723
  %14 = and i32 %13, -33, !dbg !2723
  %15 = icmp eq i32 %14, 84, !dbg !2723
  br i1 %15, label %16, label %72, !dbg !2723

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2725, metadata !586), !dbg !2738
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2736, metadata !586), !dbg !2742
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2737, metadata !586), !dbg !2743
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2744
  %18 = load i8, i8* %17, align 1, !dbg !2744, !tbaa !742
  %19 = sext i8 %18 to i32, !dbg !2744
  %20 = and i32 %19, -33, !dbg !2744
  %21 = icmp eq i32 %20, 70, !dbg !2744
  br i1 %21, label %22, label %72, !dbg !2744

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2746, metadata !586), !dbg !2758
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2756, metadata !586), !dbg !2762
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2757, metadata !586), !dbg !2763
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2764
  %24 = load i8, i8* %23, align 1, !dbg !2764, !tbaa !742
  %25 = icmp eq i8 %24, 45, !dbg !2764
  br i1 %25, label %26, label %72, !dbg !2766

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2767, metadata !586), !dbg !2778
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2776, metadata !586), !dbg !2782
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2777, metadata !586), !dbg !2783
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2784
  %28 = load i8, i8* %27, align 1, !dbg !2784, !tbaa !742
  %29 = icmp eq i8 %28, 56, !dbg !2784
  br i1 %29, label %30, label %72, !dbg !2786

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2787, metadata !586), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2795, metadata !586), !dbg !2801
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2796, metadata !586), !dbg !2802
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2803
  %32 = load i8, i8* %31, align 1, !dbg !2803, !tbaa !742
  %33 = icmp eq i8 %32, 0, !dbg !2803
  br i1 %33, label %34, label %72, !dbg !2805

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2806, !tbaa !742
  %36 = icmp eq i8 %35, 96, !dbg !2807
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.89, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.90, i64 0, i64 0), !dbg !2806
  br label %75, !dbg !2808

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2703, metadata !586), !dbg !2809
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2715, metadata !586), !dbg !2813
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2716, metadata !586), !dbg !2814
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2815
  %40 = load i8, i8* %39, align 1, !dbg !2815, !tbaa !742
  %41 = sext i8 %40 to i32, !dbg !2815
  %42 = and i32 %41, -33, !dbg !2815
  %43 = icmp eq i32 %42, 66, !dbg !2815
  br i1 %43, label %44, label %72, !dbg !2815

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2725, metadata !586), !dbg !2816
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2736, metadata !586), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2737, metadata !586), !dbg !2819
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2820
  %46 = load i8, i8* %45, align 1, !dbg !2820, !tbaa !742
  %47 = icmp eq i8 %46, 49, !dbg !2820
  br i1 %47, label %48, label %72, !dbg !2821

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2746, metadata !586), !dbg !2822
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2756, metadata !586), !dbg !2824
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2757, metadata !586), !dbg !2825
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2826
  %50 = load i8, i8* %49, align 1, !dbg !2826, !tbaa !742
  %51 = icmp eq i8 %50, 56, !dbg !2826
  br i1 %51, label %52, label %72, !dbg !2827

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2767, metadata !586), !dbg !2828
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2776, metadata !586), !dbg !2830
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2777, metadata !586), !dbg !2831
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2832
  %54 = load i8, i8* %53, align 1, !dbg !2832, !tbaa !742
  %55 = icmp eq i8 %54, 48, !dbg !2832
  br i1 %55, label %56, label %72, !dbg !2833

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2787, metadata !586), !dbg !2834
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2795, metadata !586), !dbg !2836
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2796, metadata !586), !dbg !2837
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2838
  %58 = load i8, i8* %57, align 1, !dbg !2838, !tbaa !742
  %59 = icmp eq i8 %58, 51, !dbg !2838
  br i1 %59, label %60, label %72, !dbg !2839

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2840, metadata !586), !dbg !2849
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2847, metadata !586), !dbg !2853
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2848, metadata !586), !dbg !2854
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2855
  %62 = load i8, i8* %61, align 1, !dbg !2855, !tbaa !742
  %63 = icmp eq i8 %62, 48, !dbg !2855
  br i1 %63, label %64, label %72, !dbg !2857

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2858, metadata !586), !dbg !2866
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2864, metadata !586), !dbg !2870
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2865, metadata !586), !dbg !2871
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2872
  %66 = load i8, i8* %65, align 1, !dbg !2872, !tbaa !742
  %67 = icmp eq i8 %66, 0, !dbg !2872
  br i1 %67, label %68, label %72, !dbg !2874

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2875, !tbaa !742
  %70 = icmp eq i8 %69, 96, !dbg !2876
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.91, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.92, i64 0, i64 0), !dbg !2875
  br label %75, !dbg !2877

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2878
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), !dbg !2879
  br label %75, !dbg !2880

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2881
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2882 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2886, metadata !586), !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2887, metadata !586), !dbg !2890
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2888, metadata !586), !dbg !2891
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2892, metadata !586) #11, !dbg !2905
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2897, metadata !586) #11, !dbg !2907
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2898, metadata !586) #11, !dbg !2908
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2899, metadata !586) #11, !dbg !2909
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2910
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2910
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2900, metadata !586) #11, !dbg !2911
  %6 = tail call i32* @__errno_location() #17, !dbg !2912
  %7 = load i32, i32* %6, align 4, !dbg !2912, !tbaa !652
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2901, metadata !586) #11, !dbg !2913
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2914
  %9 = load i32, i32* %8, align 4, !dbg !2914, !tbaa !2076
  %10 = or i32 %9, 1, !dbg !2915
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2902, metadata !586) #11, !dbg !2916
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2917
  %12 = load i32, i32* %11, align 8, !dbg !2917, !tbaa !2016
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2918
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2919
  %15 = load i8*, i8** %14, align 8, !dbg !2919, !tbaa !2102
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2920
  %17 = load i8*, i8** %16, align 8, !dbg !2920, !tbaa !2105
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2921
  %19 = add i64 %18, 1, !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2903, metadata !586) #11, !dbg !2923
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2924, metadata !586) #11, !dbg !2929
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2931
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2904, metadata !586) #11, !dbg !2932
  %21 = load i32, i32* %11, align 8, !dbg !2933, !tbaa !2016
  %22 = load i8*, i8** %14, align 8, !dbg !2934, !tbaa !2102
  %23 = load i8*, i8** %16, align 8, !dbg !2935, !tbaa !2105
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2936
  store i32 %7, i32* %6, align 4, !dbg !2937, !tbaa !652
  ret i8* %20, !dbg !2938
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2893 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2892, metadata !586), !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2897, metadata !586), !dbg !2940
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2898, metadata !586), !dbg !2941
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2899, metadata !586), !dbg !2942
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2943
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2943
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2900, metadata !586), !dbg !2944
  %7 = tail call i32* @__errno_location() #17, !dbg !2945
  %8 = load i32, i32* %7, align 4, !dbg !2945, !tbaa !652
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2901, metadata !586), !dbg !2946
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2947
  %10 = load i32, i32* %9, align 4, !dbg !2947, !tbaa !2076
  %11 = icmp ne i64* %2, null, !dbg !2948
  %12 = xor i1 %11, true, !dbg !2948
  %13 = zext i1 %12 to i32, !dbg !2948
  %14 = or i32 %10, %13, !dbg !2949
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2902, metadata !586), !dbg !2950
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2951
  %16 = load i32, i32* %15, align 8, !dbg !2951, !tbaa !2016
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2952
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2953
  %19 = load i8*, i8** %18, align 8, !dbg !2953, !tbaa !2102
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2954
  %21 = load i8*, i8** %20, align 8, !dbg !2954, !tbaa !2105
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2955
  %23 = add i64 %22, 1, !dbg !2956
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2903, metadata !586), !dbg !2957
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2924, metadata !586) #11, !dbg !2958
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2960
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2904, metadata !586), !dbg !2961
  %25 = load i32, i32* %15, align 8, !dbg !2962, !tbaa !2016
  %26 = load i8*, i8** %18, align 8, !dbg !2963, !tbaa !2102
  %27 = load i8*, i8** %20, align 8, !dbg !2964, !tbaa !2105
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2965
  store i32 %8, i32* %7, align 4, !dbg !2966, !tbaa !652
  br i1 %11, label %29, label %30, !dbg !2967

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2968, !tbaa !2970
  br label %30, !dbg !2971

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2972
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2973 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2977, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2975, metadata !586), !dbg !2978
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2976, metadata !586), !dbg !2979
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2976, metadata !586), !dbg !2979
  %2 = load i32, i32* @nslots, align 4, !dbg !2980, !tbaa !652
  %3 = icmp sgt i32 %2, 1, !dbg !2983
  br i1 %3, label %4, label %13, !dbg !2984

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2985

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2976, metadata !586), !dbg !2979
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2985
  %8 = load i8*, i8** %7, align 8, !dbg !2985, !tbaa !2986
  tail call void @free(i8* %8) #11, !dbg !2988
  %9 = add nuw i64 %6, 1, !dbg !2989
  %10 = load i32, i32* @nslots, align 4, !dbg !2980, !tbaa !652
  %11 = sext i32 %10 to i64, !dbg !2983
  %12 = icmp slt i64 %9, %11, !dbg !2983
  br i1 %12, label %5, label %13, !dbg !2984, !llvm.loop !2990

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2992
  %15 = load i8*, i8** %14, align 8, !dbg !2992, !tbaa !2986
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2994
  br i1 %16, label %18, label %17, !dbg !2995

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #11, !dbg !2996
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2998, !tbaa !2999
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3000, !tbaa !2986
  br label %18, !dbg !3001

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3002
  br i1 %19, label %22, label %20, !dbg !3004

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !3005
  tail call void @free(i8* %21) #11, !dbg !3007
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3008, !tbaa !593
  br label %22, !dbg !3009

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !3010, !tbaa !652
  ret void, !dbg !3011
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3012 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3016, metadata !586), !dbg !3018
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3017, metadata !586), !dbg !3019
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3020
  ret i8* %3, !dbg !3021
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3022 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3026, metadata !586), !dbg !3040
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3027, metadata !586), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3028, metadata !586), !dbg !3042
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3029, metadata !586), !dbg !3043
  %5 = tail call i32* @__errno_location() #17, !dbg !3044
  %6 = load i32, i32* %5, align 4, !dbg !3044, !tbaa !652
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3030, metadata !586), !dbg !3045
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3046, !tbaa !593
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3031, metadata !586), !dbg !3047
  %8 = icmp slt i32 %0, 0, !dbg !3048
  br i1 %8, label %9, label %10, !dbg !3050

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3051
  unreachable, !dbg !3051

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3052, !tbaa !652
  %12 = icmp sgt i32 %11, %0, !dbg !3053
  br i1 %12, label %34, label %13, !dbg !3054

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3055
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3056
  br i1 %15, label %16, label %17, !dbg !3058

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3059
  unreachable, !dbg !3059

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3060
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3060
  %20 = add nsw i32 %0, 1, !dbg !3061
  %21 = sext i32 %20 to i64, !dbg !3062
  %22 = shl nsw i64 %21, 4, !dbg !3063
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3064
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3064
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3031, metadata !586), !dbg !3047
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3065, !tbaa !593
  br i1 %14, label %25, label %26, !dbg !3066

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3067, !tbaa.struct !3069
  br label %26, !dbg !3070

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3071, !tbaa !652
  %28 = sext i32 %27 to i64, !dbg !3072
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3072
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3073
  %31 = sub nsw i32 %20, %27, !dbg !3074
  %32 = sext i32 %31 to i64, !dbg !3075
  %33 = shl nsw i64 %32, 4, !dbg !3076
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3073
  store i32 %20, i32* @nslots, align 4, !dbg !3077, !tbaa !652
  br label %34, !dbg !3078

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3031, metadata !586), !dbg !3047
  %36 = sext i32 %0 to i64, !dbg !3079
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3080
  %38 = load i64, i64* %37, align 8, !dbg !3080, !tbaa !2999
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3035, metadata !586), !dbg !3081
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3082
  %40 = load i8*, i8** %39, align 8, !dbg !3082, !tbaa !2986
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3037, metadata !586), !dbg !3083
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3084
  %42 = load i32, i32* %41, align 4, !dbg !3084, !tbaa !2076
  %43 = or i32 %42, 1, !dbg !3085
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3038, metadata !586), !dbg !3086
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3087
  %45 = load i32, i32* %44, align 8, !dbg !3087, !tbaa !2016
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3088
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3089
  %48 = load i8*, i8** %47, align 8, !dbg !3089, !tbaa !2102
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3090
  %50 = load i8*, i8** %49, align 8, !dbg !3090, !tbaa !2105
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3091
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3039, metadata !586), !dbg !3092
  %52 = icmp ugt i64 %38, %51, !dbg !3093
  br i1 %52, label %63, label %53, !dbg !3095

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3096
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3035, metadata !586), !dbg !3081
  store i64 %54, i64* %37, align 8, !dbg !3098, !tbaa !2999
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3099
  br i1 %55, label %57, label %56, !dbg !3101

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3102
  br label %57, !dbg !3102

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2924, metadata !586) #11, !dbg !3103
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3105
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3037, metadata !586), !dbg !3083
  store i8* %58, i8** %39, align 8, !dbg !3106, !tbaa !2986
  %59 = load i32, i32* %44, align 8, !dbg !3107, !tbaa !2016
  %60 = load i8*, i8** %47, align 8, !dbg !3108, !tbaa !2102
  %61 = load i8*, i8** %49, align 8, !dbg !3109, !tbaa !2105
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3110
  br label %63, !dbg !3111

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3037, metadata !586), !dbg !3083
  store i32 %6, i32* %5, align 4, !dbg !3112, !tbaa !652
  ret i8* %64, !dbg !3113
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3114 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3118, metadata !586), !dbg !3121
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3119, metadata !586), !dbg !3122
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3120, metadata !586), !dbg !3123
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3124
  ret i8* %4, !dbg !3125
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3126 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3130, metadata !586), !dbg !3131
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3016, metadata !586) #11, !dbg !3132
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3017, metadata !586) #11, !dbg !3134
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3135
  ret i8* %2, !dbg !3136
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3137 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3141, metadata !586), !dbg !3143
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3142, metadata !586), !dbg !3144
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3118, metadata !586) #11, !dbg !3145
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3119, metadata !586) #11, !dbg !3147
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3120, metadata !586) #11, !dbg !3148
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3149
  ret i8* %3, !dbg !3150
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3151 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3159, metadata !3165), !dbg !3166
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3155, metadata !586), !dbg !3168
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3156, metadata !586), !dbg !3169
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3157, metadata !586), !dbg !3170
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3171
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3171
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3158, metadata !586), !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3164, metadata !586) #11, !dbg !3173
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3174
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3174
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3159, metadata !586) #11, !dbg !3166
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !3175) #11, !dbg !3166
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3166
  %8 = icmp eq i32 %1, 10, !dbg !3176
  br i1 %8, label %9, label %10, !dbg !3178

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3179, !noalias !3180
  unreachable, !dbg !3179

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3159, metadata !3175) #11, !dbg !3166
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3183
  store i32 %1, i32* %11, align 8, !dbg !3183, !alias.scope !3180
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3183
  %13 = bitcast i32* %12 to i8*, !dbg !3183
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3183
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3184
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3158, metadata !586), !dbg !3172
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3185
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3186
  ret i8* %14, !dbg !3187
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3188 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3159, metadata !3165), !dbg !3197
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3192, metadata !586), !dbg !3199
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3193, metadata !586), !dbg !3200
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3194, metadata !586), !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3195, metadata !586), !dbg !3202
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3203
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3203
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3196, metadata !586), !dbg !3204
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3164, metadata !586) #11, !dbg !3205
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3206
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3206
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3159, metadata !586) #11, !dbg !3197
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !3175) #11, !dbg !3197
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3197
  %9 = icmp eq i32 %1, 10, !dbg !3207
  br i1 %9, label %10, label %11, !dbg !3208

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3209, !noalias !3210
  unreachable, !dbg !3209

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3159, metadata !3175) #11, !dbg !3197
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3213
  store i32 %1, i32* %12, align 8, !dbg !3213, !alias.scope !3210
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3213
  %14 = bitcast i32* %13 to i8*, !dbg !3213
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !3213
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3214
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3196, metadata !586), !dbg !3204
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3215
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3216
  ret i8* %15, !dbg !3217
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3218 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3159, metadata !3165), !dbg !3224
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3222, metadata !586), !dbg !3227
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3223, metadata !586), !dbg !3228
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3155, metadata !586) #11, !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3156, metadata !586) #11, !dbg !3230
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3157, metadata !586) #11, !dbg !3231
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3232
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3232
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3158, metadata !586) #11, !dbg !3233
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3164, metadata !586) #11, !dbg !3234
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3235
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !3235
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3159, metadata !586) #11, !dbg !3224
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !3175) #11, !dbg !3224
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3224
  %7 = icmp eq i32 %0, 10, !dbg !3236
  br i1 %7, label %8, label %9, !dbg !3237

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3238, !noalias !3239
  unreachable, !dbg !3238

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3159, metadata !3175) #11, !dbg !3224
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3242
  store i32 %0, i32* %10, align 8, !dbg !3242, !alias.scope !3239
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3242
  %12 = bitcast i32* %11 to i8*, !dbg !3242
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !3242
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !3243
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3158, metadata !586) #11, !dbg !3233
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3244
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3245
  ret i8* %13, !dbg !3246
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3247 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3159, metadata !3165), !dbg !3254
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3251, metadata !586), !dbg !3257
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3252, metadata !586), !dbg !3258
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3253, metadata !586), !dbg !3259
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3192, metadata !586) #11, !dbg !3260
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3193, metadata !586) #11, !dbg !3261
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3194, metadata !586) #11, !dbg !3262
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3195, metadata !586) #11, !dbg !3263
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3264
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3264
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3196, metadata !586) #11, !dbg !3265
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3164, metadata !586) #11, !dbg !3266
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3267
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3267
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3159, metadata !586) #11, !dbg !3254
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !3175) #11, !dbg !3254
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3254
  %8 = icmp eq i32 %0, 10, !dbg !3268
  br i1 %8, label %9, label %10, !dbg !3269

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3270, !noalias !3271
  unreachable, !dbg !3270

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3159, metadata !3175) #11, !dbg !3254
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3274
  store i32 %0, i32* %11, align 8, !dbg !3274, !alias.scope !3271
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3274
  %13 = bitcast i32* %12 to i8*, !dbg !3274
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3274
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3275
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3196, metadata !586) #11, !dbg !3265
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !3276
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3277
  ret i8* %14, !dbg !3278
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3279 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3283, metadata !586), !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3284, metadata !586), !dbg !3288
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3285, metadata !586), !dbg !3289
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3290
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3290
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3291, !tbaa.struct !3292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3286, metadata !586), !dbg !3293
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2035, metadata !586), !dbg !3294
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2036, metadata !586), !dbg !3296
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2037, metadata !586), !dbg !3297
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2038, metadata !586), !dbg !3298
  %6 = lshr i8 %2, 5, !dbg !3299
  %7 = zext i8 %6 to i64, !dbg !3299
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3300
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2039, metadata !586), !dbg !3301
  %9 = and i8 %2, 31, !dbg !3302
  %10 = zext i8 %9 to i32, !dbg !3303
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2041, metadata !586), !dbg !3304
  %11 = load i32, i32* %8, align 4, !dbg !3305, !tbaa !652
  %12 = lshr i32 %11, %10, !dbg !3306
  %13 = and i32 %12, 1, !dbg !3307
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2042, metadata !586), !dbg !3308
  %14 = xor i32 %13, 1, !dbg !3309
  %15 = shl i32 %14, %10, !dbg !3310
  %16 = xor i32 %15, %11, !dbg !3311
  store i32 %16, i32* %8, align 4, !dbg !3311, !tbaa !652
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3286, metadata !586), !dbg !3293
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3312
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3313
  ret i8* %17, !dbg !3314
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3315 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3319, metadata !586), !dbg !3321
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3320, metadata !586), !dbg !3322
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3283, metadata !586) #11, !dbg !3323
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3284, metadata !586) #11, !dbg !3325
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3285, metadata !586) #11, !dbg !3326
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3327
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3328, !tbaa.struct !3292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3286, metadata !586) #11, !dbg !3329
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2035, metadata !586) #11, !dbg !3330
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2036, metadata !586) #11, !dbg !3332
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2037, metadata !586) #11, !dbg !3333
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2038, metadata !586) #11, !dbg !3334
  %5 = lshr i8 %1, 5, !dbg !3335
  %6 = zext i8 %5 to i64, !dbg !3335
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3336
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2039, metadata !586) #11, !dbg !3337
  %8 = and i8 %1, 31, !dbg !3338
  %9 = zext i8 %8 to i32, !dbg !3339
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2041, metadata !586) #11, !dbg !3340
  %10 = load i32, i32* %7, align 4, !dbg !3341, !tbaa !652
  %11 = lshr i32 %10, %9, !dbg !3342
  %12 = and i32 %11, 1, !dbg !3343
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2042, metadata !586) #11, !dbg !3344
  %13 = xor i32 %12, 1, !dbg !3345
  %14 = shl i32 %13, %9, !dbg !3346
  %15 = xor i32 %14, %10, !dbg !3347
  store i32 %15, i32* %7, align 4, !dbg !3347, !tbaa !652
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3286, metadata !586) #11, !dbg !3329
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3348
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3349
  ret i8* %16, !dbg !3350
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3351 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3353, metadata !586), !dbg !3354
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3319, metadata !586) #11, !dbg !3355
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3320, metadata !586) #11, !dbg !3357
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3283, metadata !586) #11, !dbg !3358
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3284, metadata !586) #11, !dbg !3360
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3285, metadata !586) #11, !dbg !3361
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3362
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3362
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3363, !tbaa.struct !3292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3286, metadata !586) #11, !dbg !3364
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2035, metadata !586) #11, !dbg !3365
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2036, metadata !586) #11, !dbg !3367
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2037, metadata !586) #11, !dbg !3368
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2038, metadata !586) #11, !dbg !3369
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3370
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2039, metadata !586) #11, !dbg !3371
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2041, metadata !586) #11, !dbg !3372
  %5 = load i32, i32* %4, align 4, !dbg !3373, !tbaa !652
  %6 = or i32 %5, 67108864, !dbg !3374
  store i32 %6, i32* %4, align 4, !dbg !3374, !tbaa !652
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3286, metadata !586) #11, !dbg !3364
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3375
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3376
  ret i8* %7, !dbg !3377
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3378 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3380, metadata !586), !dbg !3382
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3381, metadata !586), !dbg !3383
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3283, metadata !586) #11, !dbg !3384
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3284, metadata !586) #11, !dbg !3386
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3285, metadata !586) #11, !dbg !3387
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3388
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3388
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3389, !tbaa.struct !3292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3286, metadata !586) #11, !dbg !3390
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2035, metadata !586) #11, !dbg !3391
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2036, metadata !586) #11, !dbg !3393
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2037, metadata !586) #11, !dbg !3394
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2038, metadata !586) #11, !dbg !3395
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3396
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2039, metadata !586) #11, !dbg !3397
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2041, metadata !586) #11, !dbg !3398
  %6 = load i32, i32* %5, align 4, !dbg !3399, !tbaa !652
  %7 = or i32 %6, 67108864, !dbg !3400
  store i32 %7, i32* %5, align 4, !dbg !3400, !tbaa !652
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3286, metadata !586) #11, !dbg !3390
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3401
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3402
  ret i8* %8, !dbg !3403
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3404 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3159, metadata !3165), !dbg !3410
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3406, metadata !586), !dbg !3412
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3407, metadata !586), !dbg !3413
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3408, metadata !586), !dbg !3414
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3415
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3415
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3164, metadata !586) #11, !dbg !3416
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3417
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3417
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3159, metadata !586) #11, !dbg !3410
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3159, metadata !3175) #11, !dbg !3410
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3410
  %9 = icmp eq i32 %1, 10, !dbg !3418
  br i1 %9, label %10, label %11, !dbg !3419

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3420, !noalias !3421
  unreachable, !dbg !3420

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3159, metadata !3175) #11, !dbg !3410
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3424
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3424
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3425
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3426
  store i32 %1, i32* %13, align 8, !dbg !3426
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3426
  %15 = bitcast i32* %14 to i8*, !dbg !3426
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3426
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3409, metadata !586), !dbg !3427
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2035, metadata !586), !dbg !3428
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2036, metadata !586), !dbg !3430
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2037, metadata !586), !dbg !3431
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2038, metadata !586), !dbg !3432
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3433
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2039, metadata !586), !dbg !3434
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2041, metadata !586), !dbg !3435
  %17 = load i32, i32* %16, align 4, !dbg !3436, !tbaa !652
  %18 = or i32 %17, 67108864, !dbg !3437
  store i32 %18, i32* %16, align 4, !dbg !3437, !tbaa !652
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3409, metadata !586), !dbg !3427
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3438
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3439
  ret i8* %19, !dbg !3440
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3441 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3445, metadata !586), !dbg !3449
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3446, metadata !586), !dbg !3450
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3447, metadata !586), !dbg !3451
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3448, metadata !586), !dbg !3452
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3453, metadata !586) #11, !dbg !3463
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3458, metadata !586) #11, !dbg !3465
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3459, metadata !586) #11, !dbg !3466
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3460, metadata !586) #11, !dbg !3467
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3461, metadata !586) #11, !dbg !3468
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3469
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3469
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3470, !tbaa.struct !3292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3462, metadata !586) #11, !dbg !3471
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2084, metadata !586) #11, !dbg !3472
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2085, metadata !586) #11, !dbg !3474
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2086, metadata !586) #11, !dbg !3475
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2084, metadata !586) #11, !dbg !3472
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2084, metadata !586) #11, !dbg !3472
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3476
  store i32 10, i32* %7, align 8, !dbg !3477, !tbaa !2016
  %8 = icmp ne i8* %1, null, !dbg !3478
  %9 = icmp ne i8* %2, null, !dbg !3479
  %10 = and i1 %8, %9, !dbg !3480
  br i1 %10, label %12, label %11, !dbg !3480

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3481
  unreachable, !dbg !3481

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3482
  store i8* %1, i8** %13, align 8, !dbg !3483, !tbaa !2102
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3484
  store i8* %2, i8** %14, align 8, !dbg !3485, !tbaa !2105
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3462, metadata !586) #11, !dbg !3471
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3486
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3487
  ret i8* %15, !dbg !3488
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3454 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3453, metadata !586), !dbg !3489
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3458, metadata !586), !dbg !3490
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3459, metadata !586), !dbg !3491
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3460, metadata !586), !dbg !3492
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3461, metadata !586), !dbg !3493
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3494
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3494
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3495, !tbaa.struct !3292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3462, metadata !586), !dbg !3496
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2084, metadata !586) #11, !dbg !3497
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2085, metadata !586) #11, !dbg !3499
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2086, metadata !586) #11, !dbg !3500
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2084, metadata !586) #11, !dbg !3497
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2084, metadata !586) #11, !dbg !3497
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3501
  store i32 10, i32* %8, align 8, !dbg !3502, !tbaa !2016
  %9 = icmp ne i8* %1, null, !dbg !3503
  %10 = icmp ne i8* %2, null, !dbg !3504
  %11 = and i1 %9, %10, !dbg !3505
  br i1 %11, label %13, label %12, !dbg !3505

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3506
  unreachable, !dbg !3506

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3507
  store i8* %1, i8** %14, align 8, !dbg !3508, !tbaa !2102
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3509
  store i8* %2, i8** %15, align 8, !dbg !3510, !tbaa !2105
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3462, metadata !586), !dbg !3496
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3511
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3512
  ret i8* %16, !dbg !3513
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3514 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3518, metadata !586), !dbg !3521
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3519, metadata !586), !dbg !3522
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3520, metadata !586), !dbg !3523
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3445, metadata !586) #11, !dbg !3524
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3446, metadata !586) #11, !dbg !3526
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3447, metadata !586) #11, !dbg !3527
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3448, metadata !586) #11, !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3453, metadata !586) #11, !dbg !3529
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3458, metadata !586) #11, !dbg !3531
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3459, metadata !586) #11, !dbg !3532
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3460, metadata !586) #11, !dbg !3533
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3461, metadata !586) #11, !dbg !3534
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3535
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3535
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3536, !tbaa.struct !3292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3462, metadata !586) #11, !dbg !3537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2084, metadata !586) #11, !dbg !3538
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2085, metadata !586) #11, !dbg !3540
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2086, metadata !586) #11, !dbg !3541
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2084, metadata !586) #11, !dbg !3538
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2084, metadata !586) #11, !dbg !3538
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3542
  store i32 10, i32* %6, align 8, !dbg !3543, !tbaa !2016
  %7 = icmp ne i8* %0, null, !dbg !3544
  %8 = icmp ne i8* %1, null, !dbg !3545
  %9 = and i1 %7, %8, !dbg !3546
  br i1 %9, label %11, label %10, !dbg !3546

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3547
  unreachable, !dbg !3547

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3548
  store i8* %0, i8** %12, align 8, !dbg !3549, !tbaa !2102
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3550
  store i8* %1, i8** %13, align 8, !dbg !3551, !tbaa !2105
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3462, metadata !586) #11, !dbg !3537
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3552
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3553
  ret i8* %14, !dbg !3554
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3555 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3559, metadata !586), !dbg !3563
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3560, metadata !586), !dbg !3564
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3561, metadata !586), !dbg !3565
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3562, metadata !586), !dbg !3566
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3453, metadata !586) #11, !dbg !3567
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3458, metadata !586) #11, !dbg !3569
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3459, metadata !586) #11, !dbg !3570
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3460, metadata !586) #11, !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3461, metadata !586) #11, !dbg !3572
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3573
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3573
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3574, !tbaa.struct !3292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3462, metadata !586) #11, !dbg !3575
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2084, metadata !586) #11, !dbg !3576
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2085, metadata !586) #11, !dbg !3578
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2086, metadata !586) #11, !dbg !3579
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2084, metadata !586) #11, !dbg !3576
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2084, metadata !586) #11, !dbg !3576
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3580
  store i32 10, i32* %7, align 8, !dbg !3581, !tbaa !2016
  %8 = icmp ne i8* %0, null, !dbg !3582
  %9 = icmp ne i8* %1, null, !dbg !3583
  %10 = and i1 %8, %9, !dbg !3584
  br i1 %10, label %12, label %11, !dbg !3584

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3585
  unreachable, !dbg !3585

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3586
  store i8* %0, i8** %13, align 8, !dbg !3587, !tbaa !2102
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3588
  store i8* %1, i8** %14, align 8, !dbg !3589, !tbaa !2105
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3462, metadata !586) #11, !dbg !3575
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3590
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3591
  ret i8* %15, !dbg !3592
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3593 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3597, metadata !586), !dbg !3600
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3598, metadata !586), !dbg !3601
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3599, metadata !586), !dbg !3602
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3603
  ret i8* %4, !dbg !3604
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3605 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3609, metadata !586), !dbg !3611
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3610, metadata !586), !dbg !3612
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3597, metadata !586) #11, !dbg !3613
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3598, metadata !586) #11, !dbg !3615
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3599, metadata !586) #11, !dbg !3616
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3617
  ret i8* %3, !dbg !3618
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3619 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3623, metadata !586), !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3624, metadata !586), !dbg !3626
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3597, metadata !586) #11, !dbg !3627
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3598, metadata !586) #11, !dbg !3629
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3599, metadata !586) #11, !dbg !3630
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3631
  ret i8* %3, !dbg !3632
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3633 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3635, metadata !586), !dbg !3636
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3623, metadata !586) #11, !dbg !3637
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3624, metadata !586) #11, !dbg !3639
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3597, metadata !586) #11, !dbg !3640
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3598, metadata !586) #11, !dbg !3642
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3599, metadata !586) #11, !dbg !3643
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3644
  ret i8* %2, !dbg !3645
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @strintcmp(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #7 !dbg !3646 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3651, metadata !586), !dbg !3653
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3652, metadata !586), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3655, metadata !586), !dbg !3669
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3663, metadata !586), !dbg !3671
  %3 = load i8, i8* %0, align 1, !dbg !3672, !tbaa !742
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !3664, metadata !586), !dbg !3673
  %4 = load i8, i8* %1, align 1, !dbg !3674, !tbaa !742
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !3665, metadata !586), !dbg !3675
  %5 = icmp eq i8 %3, 45, !dbg !3676
  br i1 %5, label %6, label %101, !dbg !3678, !llvm.loop !3679

; <label>:6:                                      ; preds = %2
  br label %7, !dbg !3683

; <label>:7:                                      ; preds = %6, %7
  %8 = phi i8* [ %9, %7 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3661, metadata !586), !dbg !3684
  %9 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !3683
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3661, metadata !586), !dbg !3684
  %10 = load i8, i8* %9, align 1, !dbg !3685, !tbaa !742
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !3664, metadata !586), !dbg !3673
  %11 = icmp eq i8 %10, 48, !dbg !3686
  br i1 %11, label %7, label %12, !dbg !3687

; <label>:12:                                     ; preds = %7
  %13 = icmp eq i8 %4, 45, !dbg !3688
  br i1 %13, label %14, label %15, !dbg !3690, !llvm.loop !3691

; <label>:14:                                     ; preds = %12
  br label %33, !dbg !3694

; <label>:15:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !3664, metadata !586), !dbg !3673
  %16 = zext i8 %10 to i32, !dbg !3695
  %17 = add nsw i32 %16, -48, !dbg !3695
  %18 = icmp ult i32 %17, 10, !dbg !3695
  br i1 %18, label %210, label %19, !dbg !3698

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !3665, metadata !586), !dbg !3675
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3662, metadata !586), !dbg !3699
  %20 = icmp eq i8 %4, 48, !dbg !3700
  br i1 %20, label %21, label %27, !dbg !3701

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !3702

; <label>:22:                                     ; preds = %21, %22
  %23 = phi i8* [ %24, %22 ], [ %1, %21 ]
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3662, metadata !586), !dbg !3699
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !3702
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3662, metadata !586), !dbg !3699
  %25 = load i8, i8* %24, align 1, !dbg !3703, !tbaa !742
  tail call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !3665, metadata !586), !dbg !3675
  tail call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !3665, metadata !586), !dbg !3675
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3662, metadata !586), !dbg !3699
  %26 = icmp eq i8 %25, 48, !dbg !3700
  br i1 %26, label %22, label %27, !dbg !3701, !llvm.loop !3704

; <label>:27:                                     ; preds = %22, %19
  %28 = phi i8 [ %4, %19 ], [ %25, %22 ]
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !3665, metadata !586), !dbg !3675
  %29 = zext i8 %28 to i32, !dbg !3707
  %30 = add nsw i32 %29, -48, !dbg !3707
  %31 = icmp ult i32 %30, 10, !dbg !3707
  %32 = sext i1 %31 to i32, !dbg !3708
  br label %210, !dbg !3709

; <label>:33:                                     ; preds = %14, %33
  %34 = phi i8* [ %35, %33 ], [ %1, %14 ]
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !3662, metadata !586), !dbg !3699
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !3694
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !3662, metadata !586), !dbg !3699
  %36 = load i8, i8* %35, align 1, !dbg !3710, !tbaa !742
  tail call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3665, metadata !586), !dbg !3675
  %37 = icmp eq i8 %36, 48, !dbg !3711
  br i1 %37, label %33, label %38, !dbg !3712

; <label>:38:                                     ; preds = %33
  tail call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3665, metadata !586), !dbg !3675
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !3664, metadata !586), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3661, metadata !586), !dbg !3684
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !3662, metadata !586), !dbg !3699
  %39 = zext i8 %10 to i32, !dbg !3713
  %40 = icmp eq i8 %36, %10, !dbg !3714
  %41 = add nsw i32 %39, -48, !dbg !3715
  %42 = icmp ult i32 %41, 10, !dbg !3715
  %43 = and i1 %42, %40, !dbg !3716
  br i1 %43, label %44, label %57, !dbg !3716

; <label>:44:                                     ; preds = %38
  br label %45, !dbg !3717

; <label>:45:                                     ; preds = %44, %45
  %46 = phi i8* [ %48, %45 ], [ %9, %44 ]
  %47 = phi i8* [ %50, %45 ], [ %35, %44 ]
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3661, metadata !586), !dbg !3684
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3662, metadata !586), !dbg !3699
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3661, metadata !586), !dbg !3684
  %48 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !3717
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !3661, metadata !586), !dbg !3684
  %49 = load i8, i8* %48, align 1, !dbg !3719, !tbaa !742
  tail call void @llvm.dbg.value(metadata i8 %49, i64 0, metadata !3664, metadata !586), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3662, metadata !586), !dbg !3699
  %50 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !3720
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !3662, metadata !586), !dbg !3699
  %51 = load i8, i8* %50, align 1, !dbg !3721, !tbaa !742
  tail call void @llvm.dbg.value(metadata i8 %51, i64 0, metadata !3665, metadata !586), !dbg !3675
  tail call void @llvm.dbg.value(metadata i8 %49, i64 0, metadata !3664, metadata !586), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !3661, metadata !586), !dbg !3684
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !3662, metadata !586), !dbg !3699
  %52 = zext i8 %49 to i32, !dbg !3713
  %53 = icmp eq i8 %51, %49, !dbg !3714
  %54 = add nsw i32 %52, -48, !dbg !3715
  %55 = icmp ult i32 %54, 10, !dbg !3715
  %56 = and i1 %53, %55, !dbg !3716
  br i1 %56, label %45, label %57, !dbg !3716, !llvm.loop !3722

; <label>:57:                                     ; preds = %45, %38
  %58 = phi i8* [ %35, %38 ], [ %50, %45 ]
  %59 = phi i8* [ %9, %38 ], [ %48, %45 ]
  %60 = phi i8 [ %10, %38 ], [ %49, %45 ]
  %61 = phi i8 [ %36, %38 ], [ %51, %45 ]
  %62 = phi i32 [ %39, %38 ], [ %52, %45 ]
  %63 = zext i8 %61 to i32, !dbg !3725
  %64 = sub nsw i32 %63, %62, !dbg !3726
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3666, metadata !586), !dbg !3727
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3667, metadata !586), !dbg !3728
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3667, metadata !586), !dbg !3728
  tail call void @llvm.dbg.value(metadata i8 %60, i64 0, metadata !3664, metadata !586), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !3661, metadata !586), !dbg !3684
  %65 = zext i8 %60 to i32, !dbg !3729
  %66 = add nsw i32 %65, -48, !dbg !3729
  %67 = icmp ult i32 %66, 10, !dbg !3729
  br i1 %67, label %68, label %78, !dbg !3732

; <label>:68:                                     ; preds = %57
  br label %69, !dbg !3733

; <label>:69:                                     ; preds = %68, %69
  %70 = phi i64 [ %74, %69 ], [ 0, %68 ]
  %71 = phi i8* [ %72, %69 ], [ %59, %68 ]
  tail call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !3661, metadata !586), !dbg !3684
  tail call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !3661, metadata !586), !dbg !3684
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !3667, metadata !586), !dbg !3728
  %72 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !3733
  tail call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !3661, metadata !586), !dbg !3684
  %73 = load i8, i8* %72, align 1, !dbg !3734, !tbaa !742
  %74 = add i64 %70, 1, !dbg !3735
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !3667, metadata !586), !dbg !3728
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !3667, metadata !586), !dbg !3728
  tail call void @llvm.dbg.value(metadata i8 %73, i64 0, metadata !3664, metadata !586), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !3661, metadata !586), !dbg !3684
  %75 = zext i8 %73 to i32, !dbg !3729
  %76 = add nsw i32 %75, -48, !dbg !3729
  %77 = icmp ult i32 %76, 10, !dbg !3729
  br i1 %77, label %69, label %78, !dbg !3732, !llvm.loop !3736

; <label>:78:                                     ; preds = %69, %57
  %79 = phi i64 [ 0, %57 ], [ %74, %69 ]
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3668, metadata !586), !dbg !3739
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3668, metadata !586), !dbg !3739
  tail call void @llvm.dbg.value(metadata i8 %61, i64 0, metadata !3665, metadata !586), !dbg !3675
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3662, metadata !586), !dbg !3699
  %80 = add nsw i32 %63, -48, !dbg !3740
  %81 = icmp ult i32 %80, 10, !dbg !3740
  br i1 %81, label %82, label %92, !dbg !3743

; <label>:82:                                     ; preds = %78
  br label %83, !dbg !3744

; <label>:83:                                     ; preds = %82, %83
  %84 = phi i64 [ %88, %83 ], [ 0, %82 ]
  %85 = phi i8* [ %86, %83 ], [ %58, %82 ]
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !3662, metadata !586), !dbg !3699
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !3662, metadata !586), !dbg !3699
  tail call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3668, metadata !586), !dbg !3739
  %86 = getelementptr inbounds i8, i8* %85, i64 1, !dbg !3744
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !3662, metadata !586), !dbg !3699
  %87 = load i8, i8* %86, align 1, !dbg !3745, !tbaa !742
  %88 = add i64 %84, 1, !dbg !3746
  tail call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3668, metadata !586), !dbg !3739
  tail call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3668, metadata !586), !dbg !3739
  tail call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !3665, metadata !586), !dbg !3675
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !3662, metadata !586), !dbg !3699
  %89 = zext i8 %87 to i32, !dbg !3740
  %90 = add nsw i32 %89, -48, !dbg !3740
  %91 = icmp ult i32 %90, 10, !dbg !3740
  br i1 %91, label %83, label %92, !dbg !3743, !llvm.loop !3747

; <label>:92:                                     ; preds = %83, %78
  %93 = phi i64 [ 0, %78 ], [ %88, %83 ]
  %94 = icmp eq i64 %79, %93, !dbg !3750
  br i1 %94, label %98, label %95, !dbg !3752

; <label>:95:                                     ; preds = %92
  %96 = icmp ult i64 %79, %93, !dbg !3753
  %97 = select i1 %96, i32 1, i32 -1, !dbg !3754
  br label %210, !dbg !3755

; <label>:98:                                     ; preds = %92
  %99 = icmp eq i64 %79, 0, !dbg !3756
  %100 = select i1 %99, i32 0, i32 %64, !dbg !3758
  br label %210, !dbg !3758

; <label>:101:                                    ; preds = %2
  %102 = icmp eq i8 %4, 45, !dbg !3759
  br i1 %102, label %103, label %127, !dbg !3761, !llvm.loop !3762

; <label>:103:                                    ; preds = %101
  br label %104, !dbg !3766

; <label>:104:                                    ; preds = %103, %104
  %105 = phi i8* [ %106, %104 ], [ %1, %103 ]
  tail call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3662, metadata !586), !dbg !3699
  %106 = getelementptr inbounds i8, i8* %105, i64 1, !dbg !3766
  tail call void @llvm.dbg.value(metadata i8* %106, i64 0, metadata !3662, metadata !586), !dbg !3699
  %107 = load i8, i8* %106, align 1, !dbg !3767, !tbaa !742
  tail call void @llvm.dbg.value(metadata i8 %107, i64 0, metadata !3665, metadata !586), !dbg !3675
  %108 = icmp eq i8 %107, 48, !dbg !3768
  br i1 %108, label %104, label %109, !dbg !3769

; <label>:109:                                    ; preds = %104
  tail call void @llvm.dbg.value(metadata i8 %107, i64 0, metadata !3665, metadata !586), !dbg !3675
  %110 = zext i8 %107 to i32, !dbg !3770
  %111 = add nsw i32 %110, -48, !dbg !3770
  %112 = icmp ult i32 %111, 10, !dbg !3770
  br i1 %112, label %210, label %113, !dbg !3772

; <label>:113:                                    ; preds = %109
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !3664, metadata !586), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3661, metadata !586), !dbg !3684
  %114 = icmp eq i8 %3, 48, !dbg !3773
  br i1 %114, label %115, label %121, !dbg !3774

; <label>:115:                                    ; preds = %113
  br label %116, !dbg !3775

; <label>:116:                                    ; preds = %115, %116
  %117 = phi i8* [ %118, %116 ], [ %0, %115 ]
  tail call void @llvm.dbg.value(metadata i8* %117, i64 0, metadata !3661, metadata !586), !dbg !3684
  %118 = getelementptr inbounds i8, i8* %117, i64 1, !dbg !3775
  tail call void @llvm.dbg.value(metadata i8* %118, i64 0, metadata !3661, metadata !586), !dbg !3684
  %119 = load i8, i8* %118, align 1, !dbg !3776, !tbaa !742
  tail call void @llvm.dbg.value(metadata i8 %119, i64 0, metadata !3664, metadata !586), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8 %119, i64 0, metadata !3664, metadata !586), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %118, i64 0, metadata !3661, metadata !586), !dbg !3684
  %120 = icmp eq i8 %119, 48, !dbg !3773
  br i1 %120, label %116, label %121, !dbg !3774, !llvm.loop !3777

; <label>:121:                                    ; preds = %116, %113
  %122 = phi i8 [ %3, %113 ], [ %119, %116 ]
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !3664, metadata !586), !dbg !3673
  %123 = zext i8 %122 to i32, !dbg !3780
  %124 = add nsw i32 %123, -48, !dbg !3780
  %125 = icmp ult i32 %124, 10, !dbg !3780
  %126 = zext i1 %125 to i32, !dbg !3780
  br label %210, !dbg !3781

; <label>:127:                                    ; preds = %101
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !3664, metadata !586), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3661, metadata !586), !dbg !3684
  %128 = icmp eq i8 %3, 48, !dbg !3782
  br i1 %128, label %129, label %135, !dbg !3784

; <label>:129:                                    ; preds = %127
  br label %130, !dbg !3785

; <label>:130:                                    ; preds = %129, %130
  %131 = phi i8* [ %132, %130 ], [ %0, %129 ]
  tail call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !3661, metadata !586), !dbg !3684
  %132 = getelementptr inbounds i8, i8* %131, i64 1, !dbg !3785
  tail call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !3661, metadata !586), !dbg !3684
  %133 = load i8, i8* %132, align 1, !dbg !3786, !tbaa !742
  tail call void @llvm.dbg.value(metadata i8 %133, i64 0, metadata !3664, metadata !586), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8 %133, i64 0, metadata !3664, metadata !586), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !3661, metadata !586), !dbg !3684
  %134 = icmp eq i8 %133, 48, !dbg !3782
  br i1 %134, label %130, label %135, !dbg !3784, !llvm.loop !3787

; <label>:135:                                    ; preds = %130, %127
  %136 = phi i8* [ %0, %127 ], [ %132, %130 ]
  %137 = phi i8 [ %3, %127 ], [ %133, %130 ]
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !3665, metadata !586), !dbg !3675
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3662, metadata !586), !dbg !3699
  %138 = icmp eq i8 %4, 48, !dbg !3790
  br i1 %138, label %139, label %145, !dbg !3791

; <label>:139:                                    ; preds = %135
  br label %140, !dbg !3792

; <label>:140:                                    ; preds = %139, %140
  %141 = phi i8* [ %142, %140 ], [ %1, %139 ]
  tail call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !3662, metadata !586), !dbg !3699
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3792
  tail call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3662, metadata !586), !dbg !3699
  %143 = load i8, i8* %142, align 1, !dbg !3793, !tbaa !742
  tail call void @llvm.dbg.value(metadata i8 %143, i64 0, metadata !3665, metadata !586), !dbg !3675
  tail call void @llvm.dbg.value(metadata i8 %143, i64 0, metadata !3665, metadata !586), !dbg !3675
  tail call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3662, metadata !586), !dbg !3699
  %144 = icmp eq i8 %143, 48, !dbg !3790
  br i1 %144, label %140, label %145, !dbg !3791, !llvm.loop !3794

; <label>:145:                                    ; preds = %140, %135
  %146 = phi i8* [ %1, %135 ], [ %142, %140 ]
  %147 = phi i8 [ %4, %135 ], [ %143, %140 ]
  tail call void @llvm.dbg.value(metadata i8 %147, i64 0, metadata !3665, metadata !586), !dbg !3675
  tail call void @llvm.dbg.value(metadata i8 %137, i64 0, metadata !3664, metadata !586), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %136, i64 0, metadata !3661, metadata !586), !dbg !3684
  tail call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3662, metadata !586), !dbg !3699
  %148 = zext i8 %137 to i32, !dbg !3797
  %149 = icmp eq i8 %137, %147, !dbg !3798
  %150 = add nsw i32 %148, -48, !dbg !3799
  %151 = icmp ult i32 %150, 10, !dbg !3799
  %152 = and i1 %151, %149, !dbg !3800
  br i1 %152, label %153, label %166, !dbg !3800

; <label>:153:                                    ; preds = %145
  br label %154, !dbg !3801

; <label>:154:                                    ; preds = %153, %154
  %155 = phi i8* [ %157, %154 ], [ %136, %153 ]
  %156 = phi i8* [ %159, %154 ], [ %146, %153 ]
  tail call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !3661, metadata !586), !dbg !3684
  tail call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3662, metadata !586), !dbg !3699
  tail call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !3661, metadata !586), !dbg !3684
  %157 = getelementptr inbounds i8, i8* %155, i64 1, !dbg !3801
  tail call void @llvm.dbg.value(metadata i8* %157, i64 0, metadata !3661, metadata !586), !dbg !3684
  %158 = load i8, i8* %157, align 1, !dbg !3803, !tbaa !742
  tail call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !3664, metadata !586), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3662, metadata !586), !dbg !3699
  %159 = getelementptr inbounds i8, i8* %156, i64 1, !dbg !3804
  tail call void @llvm.dbg.value(metadata i8* %159, i64 0, metadata !3662, metadata !586), !dbg !3699
  %160 = load i8, i8* %159, align 1, !dbg !3805, !tbaa !742
  tail call void @llvm.dbg.value(metadata i8 %160, i64 0, metadata !3665, metadata !586), !dbg !3675
  tail call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !3664, metadata !586), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %157, i64 0, metadata !3661, metadata !586), !dbg !3684
  tail call void @llvm.dbg.value(metadata i8* %159, i64 0, metadata !3662, metadata !586), !dbg !3699
  %161 = zext i8 %158 to i32, !dbg !3797
  %162 = icmp eq i8 %158, %160, !dbg !3798
  %163 = add nsw i32 %161, -48, !dbg !3799
  %164 = icmp ult i32 %163, 10, !dbg !3799
  %165 = and i1 %162, %164, !dbg !3800
  br i1 %165, label %154, label %166, !dbg !3800, !llvm.loop !3806

; <label>:166:                                    ; preds = %154, %145
  %167 = phi i8* [ %146, %145 ], [ %159, %154 ]
  %168 = phi i8* [ %136, %145 ], [ %157, %154 ]
  %169 = phi i8 [ %137, %145 ], [ %158, %154 ]
  %170 = phi i8 [ %147, %145 ], [ %160, %154 ]
  %171 = phi i32 [ %148, %145 ], [ %161, %154 ]
  %172 = zext i8 %170 to i32, !dbg !3809
  %173 = sub nsw i32 %171, %172, !dbg !3810
  tail call void @llvm.dbg.value(metadata i32 %173, i64 0, metadata !3666, metadata !586), !dbg !3727
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3667, metadata !586), !dbg !3728
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3667, metadata !586), !dbg !3728
  tail call void @llvm.dbg.value(metadata i8 %169, i64 0, metadata !3664, metadata !586), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %168, i64 0, metadata !3661, metadata !586), !dbg !3684
  %174 = zext i8 %169 to i32, !dbg !3811
  %175 = add nsw i32 %174, -48, !dbg !3811
  %176 = icmp ult i32 %175, 10, !dbg !3811
  br i1 %176, label %177, label %187, !dbg !3814

; <label>:177:                                    ; preds = %166
  br label %178, !dbg !3815

; <label>:178:                                    ; preds = %177, %178
  %179 = phi i64 [ %183, %178 ], [ 0, %177 ]
  %180 = phi i8* [ %181, %178 ], [ %168, %177 ]
  tail call void @llvm.dbg.value(metadata i8* %180, i64 0, metadata !3661, metadata !586), !dbg !3684
  tail call void @llvm.dbg.value(metadata i8* %180, i64 0, metadata !3661, metadata !586), !dbg !3684
  tail call void @llvm.dbg.value(metadata i64 %179, i64 0, metadata !3667, metadata !586), !dbg !3728
  %181 = getelementptr inbounds i8, i8* %180, i64 1, !dbg !3815
  tail call void @llvm.dbg.value(metadata i8* %181, i64 0, metadata !3661, metadata !586), !dbg !3684
  %182 = load i8, i8* %181, align 1, !dbg !3816, !tbaa !742
  %183 = add i64 %179, 1, !dbg !3817
  tail call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !3667, metadata !586), !dbg !3728
  tail call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !3667, metadata !586), !dbg !3728
  tail call void @llvm.dbg.value(metadata i8 %182, i64 0, metadata !3664, metadata !586), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %181, i64 0, metadata !3661, metadata !586), !dbg !3684
  %184 = zext i8 %182 to i32, !dbg !3811
  %185 = add nsw i32 %184, -48, !dbg !3811
  %186 = icmp ult i32 %185, 10, !dbg !3811
  br i1 %186, label %178, label %187, !dbg !3814, !llvm.loop !3818

; <label>:187:                                    ; preds = %178, %166
  %188 = phi i64 [ 0, %166 ], [ %183, %178 ]
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3668, metadata !586), !dbg !3739
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3668, metadata !586), !dbg !3739
  tail call void @llvm.dbg.value(metadata i8 %170, i64 0, metadata !3665, metadata !586), !dbg !3675
  tail call void @llvm.dbg.value(metadata i8* %167, i64 0, metadata !3662, metadata !586), !dbg !3699
  %189 = add nsw i32 %172, -48, !dbg !3821
  %190 = icmp ult i32 %189, 10, !dbg !3821
  br i1 %190, label %191, label %201, !dbg !3824

; <label>:191:                                    ; preds = %187
  br label %192, !dbg !3825

; <label>:192:                                    ; preds = %191, %192
  %193 = phi i64 [ %197, %192 ], [ 0, %191 ]
  %194 = phi i8* [ %195, %192 ], [ %167, %191 ]
  tail call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !3662, metadata !586), !dbg !3699
  tail call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !3662, metadata !586), !dbg !3699
  tail call void @llvm.dbg.value(metadata i64 %193, i64 0, metadata !3668, metadata !586), !dbg !3739
  %195 = getelementptr inbounds i8, i8* %194, i64 1, !dbg !3825
  tail call void @llvm.dbg.value(metadata i8* %195, i64 0, metadata !3662, metadata !586), !dbg !3699
  %196 = load i8, i8* %195, align 1, !dbg !3826, !tbaa !742
  %197 = add i64 %193, 1, !dbg !3827
  tail call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !3668, metadata !586), !dbg !3739
  tail call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !3668, metadata !586), !dbg !3739
  tail call void @llvm.dbg.value(metadata i8 %196, i64 0, metadata !3665, metadata !586), !dbg !3675
  tail call void @llvm.dbg.value(metadata i8* %195, i64 0, metadata !3662, metadata !586), !dbg !3699
  %198 = zext i8 %196 to i32, !dbg !3821
  %199 = add nsw i32 %198, -48, !dbg !3821
  %200 = icmp ult i32 %199, 10, !dbg !3821
  br i1 %200, label %192, label %201, !dbg !3824, !llvm.loop !3828

; <label>:201:                                    ; preds = %192, %187
  %202 = phi i64 [ 0, %187 ], [ %197, %192 ]
  %203 = icmp eq i64 %188, %202, !dbg !3831
  br i1 %203, label %207, label %204, !dbg !3833

; <label>:204:                                    ; preds = %201
  %205 = icmp ult i64 %188, %202, !dbg !3834
  %206 = select i1 %205, i32 -1, i32 1, !dbg !3835
  br label %210, !dbg !3836

; <label>:207:                                    ; preds = %201
  %208 = icmp eq i64 %188, 0, !dbg !3837
  %209 = select i1 %208, i32 0, i32 %173, !dbg !3839
  br label %210, !dbg !3839

; <label>:210:                                    ; preds = %15, %27, %95, %98, %109, %121, %204, %207
  %211 = phi i32 [ %32, %27 ], [ %97, %95 ], [ %126, %121 ], [ %206, %204 ], [ -1, %15 ], [ %100, %98 ], [ 1, %109 ], [ %209, %207 ]
  ret i32 %211, !dbg !3840
}

; Function Attrs: nounwind sspstrong uwtable
define void @verror(i32, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #6 !dbg !3841 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3853, metadata !586), !dbg !3857
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3854, metadata !586), !dbg !3858
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3855, metadata !586), !dbg !3859
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %3, i64 0, metadata !3856, metadata !586), !dbg !3860
  tail call void @verror_at_line(i32 %0, i32 %1, i8* null, i32 0, i8* %2, %struct.__va_list_tag* %3), !dbg !3861
  ret void, !dbg !3862
}

; Function Attrs: nounwind sspstrong uwtable
define void @verror_at_line(i32, i32, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #6 !dbg !3863 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3867, metadata !586), !dbg !3874
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3868, metadata !586), !dbg !3875
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3869, metadata !586), !dbg !3876
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !3870, metadata !586), !dbg !3877
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3871, metadata !586), !dbg !3878
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, i64 0, metadata !3872, metadata !586), !dbg !3879
  %7 = tail call i8* @xvasprintf(i8* %4, %struct.__va_list_tag* %5) #11, !dbg !3880
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !3873, metadata !586), !dbg !3881
  %8 = icmp eq i8* %7, null, !dbg !3882
  br i1 %8, label %13, label %9, !dbg !3884

; <label>:9:                                      ; preds = %6
  %10 = icmp eq i8* %2, null, !dbg !3885
  br i1 %10, label %12, label %11, !dbg !3888

; <label>:11:                                     ; preds = %9
  tail call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 %0, i32 %1, i8* nonnull %2, i32 %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i64 0, i64 0), i8* nonnull %7) #11, !dbg !3889
  br label %17, !dbg !3889

; <label>:12:                                     ; preds = %9
  tail call void (i32, i32, i8*, ...) @error(i32 %0, i32 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i64 0, i64 0), i8* nonnull %7) #11, !dbg !3890
  br label %17

; <label>:13:                                     ; preds = %6
  %14 = tail call i32* @__errno_location() #17, !dbg !3891
  %15 = load i32, i32* %14, align 4, !dbg !3891, !tbaa !652
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.104, i64 0, i64 0), i32 5) #11, !dbg !3893
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* %16) #11, !dbg !3894
  tail call void @abort() #15, !dbg !3895
  unreachable, !dbg !3895

; <label>:17:                                     ; preds = %11, %12
  tail call void @free(i8* nonnull %7) #11, !dbg !3896
  ret void, !dbg !3897
}

declare void @error_at_line(i32, i32, i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3898 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3953, metadata !586), !dbg !3959
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3954, metadata !586), !dbg !3960
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3955, metadata !586), !dbg !3961
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3956, metadata !586), !dbg !3962
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3957, metadata !586), !dbg !3963
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3958, metadata !586), !dbg !3964
  %7 = icmp eq i8* %1, null, !dbg !3965
  br i1 %7, label %10, label %8, !dbg !3967

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3968
  br label %12, !dbg !3968

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.106, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3969
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.107, i64 0, i64 0), i32 5) #11, !dbg !3970
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3970
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.108, i64 0, i64 0), i32 5) #11, !dbg !3971
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3971
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
  ], !dbg !3972

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3973
  unreachable, !dbg !3973

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.109, i64 0, i64 0), i32 5) #11, !dbg !3975
  %20 = load i8*, i8** %4, align 8, !dbg !3975, !tbaa !593
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3975
  br label %146, !dbg !3976

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.110, i64 0, i64 0), i32 5) #11, !dbg !3977
  %24 = load i8*, i8** %4, align 8, !dbg !3977, !tbaa !593
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3977
  %26 = load i8*, i8** %25, align 8, !dbg !3977, !tbaa !593
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3977
  br label %146, !dbg !3978

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.111, i64 0, i64 0), i32 5) #11, !dbg !3979
  %30 = load i8*, i8** %4, align 8, !dbg !3979, !tbaa !593
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3979
  %32 = load i8*, i8** %31, align 8, !dbg !3979, !tbaa !593
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3979
  %34 = load i8*, i8** %33, align 8, !dbg !3979, !tbaa !593
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3979
  br label %146, !dbg !3980

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.112, i64 0, i64 0), i32 5) #11, !dbg !3981
  %38 = load i8*, i8** %4, align 8, !dbg !3981, !tbaa !593
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3981
  %40 = load i8*, i8** %39, align 8, !dbg !3981, !tbaa !593
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3981
  %42 = load i8*, i8** %41, align 8, !dbg !3981, !tbaa !593
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3981
  %44 = load i8*, i8** %43, align 8, !dbg !3981, !tbaa !593
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3981
  br label %146, !dbg !3982

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.113, i64 0, i64 0), i32 5) #11, !dbg !3983
  %48 = load i8*, i8** %4, align 8, !dbg !3983, !tbaa !593
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3983
  %50 = load i8*, i8** %49, align 8, !dbg !3983, !tbaa !593
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3983
  %52 = load i8*, i8** %51, align 8, !dbg !3983, !tbaa !593
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3983
  %54 = load i8*, i8** %53, align 8, !dbg !3983, !tbaa !593
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3983
  %56 = load i8*, i8** %55, align 8, !dbg !3983, !tbaa !593
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3983
  br label %146, !dbg !3984

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.114, i64 0, i64 0), i32 5) #11, !dbg !3985
  %60 = load i8*, i8** %4, align 8, !dbg !3985, !tbaa !593
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3985
  %62 = load i8*, i8** %61, align 8, !dbg !3985, !tbaa !593
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3985
  %64 = load i8*, i8** %63, align 8, !dbg !3985, !tbaa !593
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3985
  %66 = load i8*, i8** %65, align 8, !dbg !3985, !tbaa !593
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3985
  %68 = load i8*, i8** %67, align 8, !dbg !3985, !tbaa !593
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3985
  %70 = load i8*, i8** %69, align 8, !dbg !3985, !tbaa !593
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3985
  br label %146, !dbg !3986

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.115, i64 0, i64 0), i32 5) #11, !dbg !3987
  %74 = load i8*, i8** %4, align 8, !dbg !3987, !tbaa !593
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3987
  %76 = load i8*, i8** %75, align 8, !dbg !3987, !tbaa !593
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3987
  %78 = load i8*, i8** %77, align 8, !dbg !3987, !tbaa !593
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3987
  %80 = load i8*, i8** %79, align 8, !dbg !3987, !tbaa !593
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3987
  %82 = load i8*, i8** %81, align 8, !dbg !3987, !tbaa !593
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3987
  %84 = load i8*, i8** %83, align 8, !dbg !3987, !tbaa !593
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3987
  %86 = load i8*, i8** %85, align 8, !dbg !3987, !tbaa !593
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3987
  br label %146, !dbg !3988

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.116, i64 0, i64 0), i32 5) #11, !dbg !3989
  %90 = load i8*, i8** %4, align 8, !dbg !3989, !tbaa !593
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3989
  %92 = load i8*, i8** %91, align 8, !dbg !3989, !tbaa !593
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3989
  %94 = load i8*, i8** %93, align 8, !dbg !3989, !tbaa !593
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3989
  %96 = load i8*, i8** %95, align 8, !dbg !3989, !tbaa !593
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3989
  %98 = load i8*, i8** %97, align 8, !dbg !3989, !tbaa !593
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3989
  %100 = load i8*, i8** %99, align 8, !dbg !3989, !tbaa !593
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3989
  %102 = load i8*, i8** %101, align 8, !dbg !3989, !tbaa !593
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3989
  %104 = load i8*, i8** %103, align 8, !dbg !3989, !tbaa !593
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3989
  br label %146, !dbg !3990

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.117, i64 0, i64 0), i32 5) #11, !dbg !3991
  %108 = load i8*, i8** %4, align 8, !dbg !3991, !tbaa !593
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3991
  %110 = load i8*, i8** %109, align 8, !dbg !3991, !tbaa !593
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3991
  %112 = load i8*, i8** %111, align 8, !dbg !3991, !tbaa !593
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3991
  %114 = load i8*, i8** %113, align 8, !dbg !3991, !tbaa !593
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3991
  %116 = load i8*, i8** %115, align 8, !dbg !3991, !tbaa !593
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3991
  %118 = load i8*, i8** %117, align 8, !dbg !3991, !tbaa !593
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3991
  %120 = load i8*, i8** %119, align 8, !dbg !3991, !tbaa !593
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3991
  %122 = load i8*, i8** %121, align 8, !dbg !3991, !tbaa !593
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3991
  %124 = load i8*, i8** %123, align 8, !dbg !3991, !tbaa !593
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3991
  br label %146, !dbg !3992

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.118, i64 0, i64 0), i32 5) #11, !dbg !3993
  %128 = load i8*, i8** %4, align 8, !dbg !3993, !tbaa !593
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3993
  %130 = load i8*, i8** %129, align 8, !dbg !3993, !tbaa !593
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3993
  %132 = load i8*, i8** %131, align 8, !dbg !3993, !tbaa !593
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3993
  %134 = load i8*, i8** %133, align 8, !dbg !3993, !tbaa !593
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3993
  %136 = load i8*, i8** %135, align 8, !dbg !3993, !tbaa !593
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3993
  %138 = load i8*, i8** %137, align 8, !dbg !3993, !tbaa !593
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3993
  %140 = load i8*, i8** %139, align 8, !dbg !3993, !tbaa !593
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3993
  %142 = load i8*, i8** %141, align 8, !dbg !3993, !tbaa !593
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3993
  %144 = load i8*, i8** %143, align 8, !dbg !3993, !tbaa !593
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3993
  br label %146, !dbg !3994

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3995
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3996 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4000, metadata !586), !dbg !4006
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4001, metadata !586), !dbg !4007
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4002, metadata !586), !dbg !4008
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4003, metadata !586), !dbg !4009
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4004, metadata !586), !dbg !4010
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4005, metadata !586), !dbg !4011
  br label %6, !dbg !4012

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4005, metadata !586), !dbg !4011
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4014
  %9 = load i8*, i8** %8, align 8, !dbg !4014, !tbaa !593
  %10 = icmp eq i8* %9, null, !dbg !4016
  %11 = add i64 %7, 1, !dbg !4017
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4005, metadata !586), !dbg !4011
  br i1 %10, label %12, label %6, !dbg !4016, !llvm.loop !4018

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4020
  ret void, !dbg !4021
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4022 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4033, metadata !586), !dbg !4041
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4034, metadata !586), !dbg !4042
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4035, metadata !586), !dbg !4043
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4036, metadata !586), !dbg !4044
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4037, metadata !586), !dbg !4045
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4046
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !4046
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4039, metadata !586), !dbg !4047
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4038, metadata !586), !dbg !4048
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4038, metadata !586), !dbg !4048
  %11 = load i32, i32* %8, align 8, !dbg !4049
  %12 = icmp ult i32 %11, 41, !dbg !4049
  br i1 %12, label %13, label %18, !dbg !4049

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4049
  %15 = sext i32 %11 to i64, !dbg !4049
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4049
  %17 = add i32 %11, 8, !dbg !4049
  store i32 %17, i32* %8, align 8, !dbg !4049
  br label %21, !dbg !4049

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4049
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4049
  store i8* %20, i8** %10, align 8, !dbg !4049
  br label %21, !dbg !4049

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4049
  %25 = load i8*, i8** %24, align 8, !dbg !4049
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4052
  store i8* %25, i8** %26, align 16, !dbg !4053, !tbaa !593
  %27 = icmp eq i8* %25, null, !dbg !4054
  br i1 %27, label %30, label %28, !dbg !4055

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4038, metadata !586), !dbg !4048
  %29 = icmp ult i32 %22, 41, !dbg !4049
  br i1 %29, label %35, label %32, !dbg !4049

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4056
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !4057
  ret void, !dbg !4057

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4049
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4049
  store i8* %34, i8** %10, align 8, !dbg !4049
  br label %40, !dbg !4049

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4049
  %37 = sext i32 %22 to i64, !dbg !4049
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4049
  %39 = add i32 %22, 8, !dbg !4049
  store i32 %39, i32* %8, align 8, !dbg !4049
  br label %40, !dbg !4049

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4049
  %44 = load i8*, i8** %43, align 8, !dbg !4049
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4052
  store i8* %44, i8** %45, align 8, !dbg !4053, !tbaa !593
  %46 = icmp eq i8* %44, null, !dbg !4054
  br i1 %46, label %30, label %47, !dbg !4055

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4038, metadata !586), !dbg !4048
  %48 = icmp ult i32 %41, 41, !dbg !4049
  br i1 %48, label %52, label %49, !dbg !4049

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4049
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4049
  store i8* %51, i8** %10, align 8, !dbg !4049
  br label %57, !dbg !4049

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4049
  %54 = sext i32 %41 to i64, !dbg !4049
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4049
  %56 = add i32 %41, 8, !dbg !4049
  store i32 %56, i32* %8, align 8, !dbg !4049
  br label %57, !dbg !4049

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4049
  %61 = load i8*, i8** %60, align 8, !dbg !4049
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4052
  store i8* %61, i8** %62, align 16, !dbg !4053, !tbaa !593
  %63 = icmp eq i8* %61, null, !dbg !4054
  br i1 %63, label %30, label %64, !dbg !4055

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4038, metadata !586), !dbg !4048
  %65 = icmp ult i32 %58, 41, !dbg !4049
  br i1 %65, label %69, label %66, !dbg !4049

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4049
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4049
  store i8* %68, i8** %10, align 8, !dbg !4049
  br label %74, !dbg !4049

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4049
  %71 = sext i32 %58 to i64, !dbg !4049
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4049
  %73 = add i32 %58, 8, !dbg !4049
  store i32 %73, i32* %8, align 8, !dbg !4049
  br label %74, !dbg !4049

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4049
  %78 = load i8*, i8** %77, align 8, !dbg !4049
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4052
  store i8* %78, i8** %79, align 8, !dbg !4053, !tbaa !593
  %80 = icmp eq i8* %78, null, !dbg !4054
  br i1 %80, label %30, label %81, !dbg !4055

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4038, metadata !586), !dbg !4048
  %82 = icmp ult i32 %75, 41, !dbg !4049
  br i1 %82, label %86, label %83, !dbg !4049

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4049
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4049
  store i8* %85, i8** %10, align 8, !dbg !4049
  br label %91, !dbg !4049

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4049
  %88 = sext i32 %75 to i64, !dbg !4049
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4049
  %90 = add i32 %75, 8, !dbg !4049
  store i32 %90, i32* %8, align 8, !dbg !4049
  br label %91, !dbg !4049

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4049
  %95 = load i8*, i8** %94, align 8, !dbg !4049
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4052
  store i8* %95, i8** %96, align 16, !dbg !4053, !tbaa !593
  %97 = icmp eq i8* %95, null, !dbg !4054
  br i1 %97, label %30, label %98, !dbg !4055

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4038, metadata !586), !dbg !4048
  %99 = icmp ult i32 %92, 41, !dbg !4049
  br i1 %99, label %103, label %100, !dbg !4049

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4049
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4049
  store i8* %102, i8** %10, align 8, !dbg !4049
  br label %108, !dbg !4049

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4049
  %105 = sext i32 %92 to i64, !dbg !4049
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4049
  %107 = add i32 %92, 8, !dbg !4049
  store i32 %107, i32* %8, align 8, !dbg !4049
  br label %108, !dbg !4049

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4049
  %111 = load i8*, i8** %110, align 8, !dbg !4049
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4052
  store i8* %111, i8** %112, align 8, !dbg !4053, !tbaa !593
  %113 = icmp eq i8* %111, null, !dbg !4054
  br i1 %113, label %30, label %114, !dbg !4055

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4038, metadata !586), !dbg !4048
  %115 = load i8*, i8** %10, align 8, !dbg !4049
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4049
  store i8* %116, i8** %10, align 8, !dbg !4049
  %117 = bitcast i8* %115 to i8**, !dbg !4049
  %118 = load i8*, i8** %117, align 8, !dbg !4049
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4052
  store i8* %118, i8** %119, align 16, !dbg !4053, !tbaa !593
  %120 = icmp eq i8* %118, null, !dbg !4054
  br i1 %120, label %30, label %121, !dbg !4055

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4038, metadata !586), !dbg !4048
  %122 = load i8*, i8** %10, align 8, !dbg !4049
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4049
  store i8* %123, i8** %10, align 8, !dbg !4049
  %124 = bitcast i8* %122 to i8**, !dbg !4049
  %125 = load i8*, i8** %124, align 8, !dbg !4049
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4052
  store i8* %125, i8** %126, align 8, !dbg !4053, !tbaa !593
  %127 = icmp eq i8* %125, null, !dbg !4054
  br i1 %127, label %30, label %128, !dbg !4055

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4038, metadata !586), !dbg !4048
  %129 = load i8*, i8** %10, align 8, !dbg !4049
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4049
  store i8* %130, i8** %10, align 8, !dbg !4049
  %131 = bitcast i8* %129 to i8**, !dbg !4049
  %132 = load i8*, i8** %131, align 8, !dbg !4049
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4052
  store i8* %132, i8** %133, align 16, !dbg !4053, !tbaa !593
  %134 = icmp eq i8* %132, null, !dbg !4054
  br i1 %134, label %30, label %135, !dbg !4055

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4038, metadata !586), !dbg !4048
  %136 = load i8*, i8** %10, align 8, !dbg !4049
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4049
  store i8* %137, i8** %10, align 8, !dbg !4049
  %138 = bitcast i8* %136 to i8**, !dbg !4049
  %139 = load i8*, i8** %138, align 8, !dbg !4049
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4052
  store i8* %139, i8** %140, align 8, !dbg !4053, !tbaa !593
  %141 = icmp eq i8* %139, null, !dbg !4054
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !586), !dbg !4048
  %142 = select i1 %141, i64 9, i64 10, !dbg !4055
  br label %30, !dbg !4055
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4058 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4062, metadata !586), !dbg !4071
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4063, metadata !586), !dbg !4072
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4064, metadata !586), !dbg !4073
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4065, metadata !586), !dbg !4074
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4075
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !4075
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4066, metadata !586), !dbg !4076
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4077
  call void @llvm.va_start(i8* nonnull %6), !dbg !4077
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4078
  call void @llvm.va_end(i8* nonnull %6), !dbg !4079
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !4080
  ret void, !dbg !4080
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4081 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.121, i64 0, i64 0), i32 5) #11, !dbg !4082
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.122, i64 0, i64 0)) #11, !dbg !4082
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.123, i64 0, i64 0), i32 5) #11, !dbg !4083
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.124, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.125, i64 0, i64 0)) #11, !dbg !4083
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.126, i64 0, i64 0), i32 5) #11, !dbg !4084
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4084, !tbaa !593
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !4084
  ret void, !dbg !4085
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4086 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4090, metadata !586), !dbg !4092
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4091, metadata !586), !dbg !4093
  %3 = udiv i64 9223372036854775807, %1, !dbg !4094
  %4 = icmp ult i64 %3, %0, !dbg !4094
  br i1 %4, label %5, label %6, !dbg !4096

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4097
  unreachable, !dbg !4097

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4098
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4099, metadata !586) #11, !dbg !4106
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !4108
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4105, metadata !586) #11, !dbg !4109
  %9 = icmp eq i8* %8, null, !dbg !4110
  %10 = icmp ne i64 %7, 0, !dbg !4112
  %11 = and i1 %10, %9, !dbg !4113
  br i1 %11, label %12, label %13, !dbg !4113

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4114
  unreachable, !dbg !4114

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4115
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4100 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4099, metadata !586), !dbg !4116
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4117
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4105, metadata !586), !dbg !4118
  %3 = icmp eq i8* %2, null, !dbg !4119
  %4 = icmp ne i64 %0, 0, !dbg !4120
  %5 = and i1 %4, %3, !dbg !4121
  br i1 %5, label %6, label %7, !dbg !4121

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4122
  unreachable, !dbg !4122

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4123
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4124 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4128, metadata !586), !dbg !4131
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4129, metadata !586), !dbg !4132
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4130, metadata !586), !dbg !4133
  %4 = udiv i64 9223372036854775807, %2, !dbg !4134
  %5 = icmp ult i64 %4, %1, !dbg !4134
  br i1 %5, label %6, label %7, !dbg !4136

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4137
  unreachable, !dbg !4137

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4138
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4139, metadata !586) #11, !dbg !4145
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4144, metadata !586) #11, !dbg !4147
  %9 = icmp eq i64 %8, 0, !dbg !4148
  %10 = icmp ne i8* %0, null, !dbg !4150
  %11 = and i1 %10, %9, !dbg !4151
  br i1 %11, label %12, label %13, !dbg !4151

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !4152
  br label %19, !dbg !4154

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !4155
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4139, metadata !586) #11, !dbg !4145
  %15 = icmp eq i8* %14, null, !dbg !4156
  %16 = icmp ne i64 %8, 0, !dbg !4158
  %17 = and i1 %16, %15, !dbg !4159
  br i1 %17, label %18, label %19, !dbg !4159

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4160
  unreachable, !dbg !4160

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4161
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4140 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4139, metadata !586), !dbg !4162
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4144, metadata !586), !dbg !4163
  %3 = icmp eq i64 %1, 0, !dbg !4164
  %4 = icmp ne i8* %0, null, !dbg !4165
  %5 = and i1 %4, %3, !dbg !4166
  br i1 %5, label %6, label %7, !dbg !4166

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !4167
  br label %13, !dbg !4168

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !4169
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4139, metadata !586), !dbg !4162
  %9 = icmp eq i8* %8, null, !dbg !4170
  %10 = icmp ne i64 %1, 0, !dbg !4171
  %11 = and i1 %10, %9, !dbg !4172
  br i1 %11, label %12, label %13, !dbg !4172

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4173
  unreachable, !dbg !4173

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4174
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !543 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !548, metadata !586), !dbg !4175
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !549, metadata !586), !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !550, metadata !586), !dbg !4177
  %4 = load i64, i64* %1, align 8, !dbg !4178, !tbaa !2970
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !551, metadata !586), !dbg !4179
  %5 = icmp eq i8* %0, null, !dbg !4180
  br i1 %5, label %6, label %13, !dbg !4182

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4183
  br i1 %7, label %8, label %17, !dbg !4186

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4187
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !551, metadata !586), !dbg !4179
  %10 = icmp ugt i64 %2, 128, !dbg !4189
  %11 = zext i1 %10 to i64, !dbg !4189
  %12 = add nuw nsw i64 %9, %11, !dbg !4190
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !551, metadata !586), !dbg !4179
  br label %17, !dbg !4191

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4192
  %15 = icmp ugt i64 %14, %4, !dbg !4195
  br i1 %15, label %20, label %16, !dbg !4196

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4197
  unreachable, !dbg !4197

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !551, metadata !586), !dbg !4179
  store i64 %18, i64* %1, align 8, !dbg !4198, !tbaa !2970
  %19 = mul i64 %18, %2, !dbg !4199
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4139, metadata !586) #11, !dbg !4200
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4144, metadata !586) #11, !dbg !4202
  br label %27, !dbg !4203

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4204
  %22 = add i64 %4, 1, !dbg !4205
  %23 = add i64 %22, %21, !dbg !4206
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !551, metadata !586), !dbg !4179
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !551, metadata !586), !dbg !4179
  store i64 %23, i64* %1, align 8, !dbg !4198, !tbaa !2970
  %24 = mul i64 %23, %2, !dbg !4199
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4139, metadata !586) #11, !dbg !4200
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4144, metadata !586) #11, !dbg !4202
  %25 = icmp eq i64 %24, 0, !dbg !4207
  br i1 %25, label %26, label %27, !dbg !4203

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !4208
  br label %34, !dbg !4209

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !4210
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4139, metadata !586) #11, !dbg !4200
  %30 = icmp eq i8* %29, null, !dbg !4211
  %31 = icmp ne i64 %28, 0, !dbg !4212
  %32 = and i1 %31, %30, !dbg !4213
  br i1 %32, label %33, label %34, !dbg !4213

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !4214
  unreachable, !dbg !4214

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4215
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4216 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4218, metadata !586), !dbg !4219
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4099, metadata !586) #11, !dbg !4220
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4222
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4105, metadata !586) #11, !dbg !4223
  %3 = icmp eq i8* %2, null, !dbg !4224
  %4 = icmp ne i64 %0, 0, !dbg !4225
  %5 = and i1 %4, %3, !dbg !4226
  br i1 %5, label %6, label %7, !dbg !4226

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4227
  unreachable, !dbg !4227

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4228
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4229 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4233, metadata !586), !dbg !4235
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4234, metadata !586), !dbg !4236
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !548, metadata !586) #11, !dbg !4237
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !549, metadata !586) #11, !dbg !4239
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !550, metadata !586) #11, !dbg !4240
  %3 = load i64, i64* %1, align 8, !dbg !4241, !tbaa !2970
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !551, metadata !586) #11, !dbg !4242
  %4 = icmp eq i8* %0, null, !dbg !4243
  br i1 %4, label %5, label %8, !dbg !4244

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4245
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !551, metadata !586) #11, !dbg !4242
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !551, metadata !586) #11, !dbg !4242
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4246
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !551, metadata !586) #11, !dbg !4242
  store i64 %7, i64* %1, align 8, !dbg !4247, !tbaa !2970
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4139, metadata !586) #11, !dbg !4248
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4144, metadata !586) #11, !dbg !4250
  br label %17, !dbg !4251

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4252
  br i1 %9, label %11, label %10, !dbg !4253

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !4254
  unreachable, !dbg !4254

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4255
  %13 = add i64 %3, 1, !dbg !4256
  %14 = add i64 %13, %12, !dbg !4257
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !551, metadata !586) #11, !dbg !4242
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !551, metadata !586) #11, !dbg !4242
  store i64 %14, i64* %1, align 8, !dbg !4247, !tbaa !2970
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4139, metadata !586) #11, !dbg !4248
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4144, metadata !586) #11, !dbg !4250
  %15 = icmp eq i64 %14, 0, !dbg !4258
  br i1 %15, label %16, label %17, !dbg !4251

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !4259
  br label %24, !dbg !4260

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !4261
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4139, metadata !586) #11, !dbg !4248
  %20 = icmp eq i8* %19, null, !dbg !4262
  %21 = icmp ne i64 %18, 0, !dbg !4263
  %22 = and i1 %21, %20, !dbg !4264
  br i1 %22, label %23, label %24, !dbg !4264

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !4265
  unreachable, !dbg !4265

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4266
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4267 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4269, metadata !586), !dbg !4270
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4099, metadata !586) #11, !dbg !4271
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4273
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4105, metadata !586) #11, !dbg !4274
  %3 = icmp eq i8* %2, null, !dbg !4275
  %4 = icmp ne i64 %0, 0, !dbg !4276
  %5 = and i1 %4, %3, !dbg !4277
  br i1 %5, label %6, label %7, !dbg !4277

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4278
  unreachable, !dbg !4278

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4279
  ret i8* %2, !dbg !4280
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4281 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4283, metadata !586), !dbg !4286
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4284, metadata !586), !dbg !4287
  %3 = udiv i64 9223372036854775807, %1, !dbg !4288
  %4 = icmp ult i64 %3, %0, !dbg !4288
  br i1 %4, label %8, label %5, !dbg !4290

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4291
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4285, metadata !586), !dbg !4292
  %7 = icmp eq i8* %6, null, !dbg !4293
  br i1 %7, label %8, label %9, !dbg !4294

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4295
  unreachable, !dbg !4295

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4296
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4297 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4303, metadata !586), !dbg !4305
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4304, metadata !586), !dbg !4306
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4099, metadata !586) #11, !dbg !4307
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4309
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4105, metadata !586) #11, !dbg !4310
  %4 = icmp eq i8* %3, null, !dbg !4311
  %5 = icmp ne i64 %1, 0, !dbg !4312
  %6 = and i1 %5, %4, !dbg !4313
  br i1 %6, label %7, label %8, !dbg !4313

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4314
  unreachable, !dbg !4314

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4315
  ret i8* %3, !dbg !4316
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4317 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4319, metadata !586), !dbg !4320
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4321
  %3 = add i64 %2, 1, !dbg !4322
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4303, metadata !586) #11, !dbg !4323
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4304, metadata !586) #11, !dbg !4325
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4099, metadata !586) #11, !dbg !4326
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4328
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4105, metadata !586) #11, !dbg !4329
  %5 = icmp eq i8* %4, null, !dbg !4330
  %6 = icmp ne i64 %3, 0, !dbg !4331
  %7 = and i1 %6, %5, !dbg !4332
  br i1 %7, label %8, label %9, !dbg !4332

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4333
  unreachable, !dbg !4333

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !4334
  ret i8* %4, !dbg !4335
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4336 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4338, !tbaa !652
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.137, i64 0, i64 0), i32 5) #11, !dbg !4339
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i64 0, i64 0), i8* %2) #11, !dbg !4340
  tail call void @abort() #15, !dbg !4341
  unreachable, !dbg !4341
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @xvasprintf(i8*, %struct.__va_list_tag*) local_unnamed_addr #6 !dbg !4342 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4360, metadata !586), !dbg !4384
  %4 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4354, metadata !586), !dbg !4390
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, i64 0, metadata !4355, metadata !586), !dbg !4391
  %5 = bitcast i8** %4 to i8*, !dbg !4392
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #11, !dbg !4392
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4357, metadata !586), !dbg !4393
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4359, metadata !586), !dbg !4394
  br label %6, !dbg !4395

; <label>:6:                                      ; preds = %83, %2
  %7 = phi i64 [ 0, %2 ], [ %85, %83 ]
  %8 = phi i8* [ %0, %2 ], [ %84, %83 ]
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4359, metadata !586), !dbg !4394
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4357, metadata !586), !dbg !4393
  %9 = load i8, i8* %8, align 1, !dbg !4396, !tbaa !742
  switch i8 %9, label %88 [
    i8 0, label %10
    i8 37, label %79
  ], !dbg !4397

; <label>:10:                                     ; preds = %6
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4365, metadata !586) #11, !dbg !4398
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, i64 0, metadata !4366, metadata !586) #11, !dbg !4399
  %11 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4400
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #11, !dbg !4400
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4368, metadata !586) #11, !dbg !4401
  %12 = bitcast %struct.__va_list_tag* %1 to i8*, !dbg !4402
  call void @llvm.va_copy(i8* nonnull %11, i8* %12) #11, !dbg !4402
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4369, metadata !586) #11, !dbg !4403
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4368, metadata !586) #11, !dbg !4401
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4369, metadata !586) #11, !dbg !4403
  %13 = icmp eq i64 %7, 0, !dbg !4404
  br i1 %13, label %14, label %16, !dbg !4405

; <label>:14:                                     ; preds = %10
  call void @llvm.va_end(i8* nonnull %11) #11, !dbg !4406
  %15 = call noalias i8* @xmalloc(i64 1) #11, !dbg !4407
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4367, metadata !586) #11, !dbg !4408
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4370, metadata !586) #11, !dbg !4409
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4369, metadata !586) #11, !dbg !4403
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4369, metadata !586) #11, !dbg !4403
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4370, metadata !586) #11, !dbg !4409
  br label %76, !dbg !4410

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %20 = load i32, i32* %17, align 16, !dbg !4411
  br label %21, !dbg !4405

; <label>:21:                                     ; preds = %34, %16
  %22 = phi i32 [ %20, %16 ], [ %35, %34 ], !dbg !4411
  %23 = phi i64 [ 0, %16 ], [ %42, %34 ]
  %24 = phi i64 [ %7, %16 ], [ %43, %34 ]
  call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4369, metadata !586) #11, !dbg !4403
  call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4368, metadata !586) #11, !dbg !4401
  %25 = icmp ult i32 %22, 41, !dbg !4411
  br i1 %25, label %26, label %31, !dbg !4411

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %18, align 16, !dbg !4411
  %28 = sext i32 %22 to i64, !dbg !4411
  %29 = getelementptr i8, i8* %27, i64 %28, !dbg !4411
  %30 = add i32 %22, 8, !dbg !4411
  store i32 %30, i32* %17, align 16, !dbg !4411
  br label %34, !dbg !4411

; <label>:31:                                     ; preds = %21
  %32 = load i8*, i8** %19, align 8, !dbg !4411
  %33 = getelementptr i8, i8* %32, i64 8, !dbg !4411
  store i8* %33, i8** %19, align 8, !dbg !4411
  br label %34, !dbg !4411

; <label>:34:                                     ; preds = %31, %26
  %35 = phi i32 [ %30, %26 ], [ %22, %31 ]
  %36 = phi i8* [ %29, %26 ], [ %32, %31 ]
  %37 = bitcast i8* %36 to i8**, !dbg !4411
  %38 = load i8*, i8** %37, align 8, !dbg !4411
  call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !4371, metadata !586) #11, !dbg !4412
  %39 = call i64 @strlen(i8* %38) #14, !dbg !4413
  call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4414, metadata !586) #11, !dbg !4422
  call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !4420, metadata !586) #11, !dbg !4424
  %40 = add i64 %39, %23, !dbg !4425
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !4421, metadata !586) #11, !dbg !4426
  %41 = icmp ult i64 %40, %23, !dbg !4427
  %42 = select i1 %41, i64 -1, i64 %40, !dbg !4428
  call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !4368, metadata !586) #11, !dbg !4401
  %43 = add i64 %24, -1, !dbg !4429
  call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !4369, metadata !586) #11, !dbg !4403
  call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !4368, metadata !586) #11, !dbg !4401
  call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !4369, metadata !586) #11, !dbg !4403
  %44 = icmp eq i64 %43, 0, !dbg !4404
  br i1 %44, label %45, label %21, !dbg !4405, !llvm.loop !4430

; <label>:45:                                     ; preds = %34
  call void @llvm.va_end(i8* nonnull %11) #11, !dbg !4406
  %46 = icmp ugt i64 %42, 2147483647, !dbg !4433
  br i1 %46, label %47, label %49, !dbg !4435

; <label>:47:                                     ; preds = %45
  %48 = tail call i32* @__errno_location() #17, !dbg !4436
  store i32 75, i32* %48, align 4, !dbg !4438, !tbaa !652
  br label %86, !dbg !4439

; <label>:49:                                     ; preds = %45
  %50 = add i64 %42, 1, !dbg !4407
  %51 = call noalias i8* @xmalloc(i64 %50) #11, !dbg !4407
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4367, metadata !586) #11, !dbg !4408
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4370, metadata !586) #11, !dbg !4409
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4369, metadata !586) #11, !dbg !4403
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4369, metadata !586) #11, !dbg !4403
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4370, metadata !586) #11, !dbg !4409
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  br label %55, !dbg !4410

; <label>:55:                                     ; preds = %68, %49
  %56 = phi i64 [ %7, %49 ], [ %74, %68 ]
  %57 = phi i8* [ %51, %49 ], [ %73, %68 ]
  call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !4370, metadata !586) #11, !dbg !4409
  call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !4369, metadata !586) #11, !dbg !4403
  %58 = load i32, i32* %52, align 8, !dbg !4440
  %59 = icmp ult i32 %58, 41, !dbg !4440
  br i1 %59, label %60, label %65, !dbg !4440

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %53, align 8, !dbg !4440
  %62 = sext i32 %58 to i64, !dbg !4440
  %63 = getelementptr i8, i8* %61, i64 %62, !dbg !4440
  %64 = add i32 %58, 8, !dbg !4440
  store i32 %64, i32* %52, align 8, !dbg !4440
  br label %68, !dbg !4440

; <label>:65:                                     ; preds = %55
  %66 = load i8*, i8** %54, align 8, !dbg !4440
  %67 = getelementptr i8, i8* %66, i64 8, !dbg !4440
  store i8* %67, i8** %54, align 8, !dbg !4440
  br label %68, !dbg !4440

; <label>:68:                                     ; preds = %65, %60
  %69 = phi i8* [ %63, %60 ], [ %66, %65 ]
  %70 = bitcast i8* %69 to i8**, !dbg !4440
  %71 = load i8*, i8** %70, align 8, !dbg !4440
  call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !4375, metadata !586) #11, !dbg !4441
  %72 = call i64 @strlen(i8* %71) #14, !dbg !4442
  call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !4379, metadata !586) #11, !dbg !4443
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %71, i64 %72, i32 1, i1 false) #11, !dbg !4444
  %73 = getelementptr inbounds i8, i8* %57, i64 %72, !dbg !4445
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !4370, metadata !586) #11, !dbg !4409
  %74 = add i64 %56, -1, !dbg !4446
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !4369, metadata !586) #11, !dbg !4403
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !4369, metadata !586) #11, !dbg !4403
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !4370, metadata !586) #11, !dbg !4409
  %75 = icmp eq i64 %74, 0, !dbg !4447
  br i1 %75, label %76, label %55, !dbg !4410, !llvm.loop !4448

; <label>:76:                                     ; preds = %68, %14
  %77 = phi i8* [ %15, %14 ], [ %51, %68 ]
  %78 = phi i8* [ %15, %14 ], [ %73, %68 ]
  store i8 0, i8* %78, align 1, !dbg !4451, !tbaa !742
  br label %86, !dbg !4452

; <label>:79:                                     ; preds = %6
  %80 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4453
  tail call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !4359, metadata !586), !dbg !4394
  %81 = load i8, i8* %80, align 1, !dbg !4454, !tbaa !742
  %82 = icmp eq i8 %81, 115, !dbg !4456
  br i1 %82, label %83, label %88, !dbg !4457

; <label>:83:                                     ; preds = %79
  %84 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !4458
  tail call void @llvm.dbg.value(metadata i8* %84, i64 0, metadata !4359, metadata !586), !dbg !4394
  %85 = add i64 %7, 1, !dbg !4459
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !4357, metadata !586), !dbg !4393
  br label %6, !dbg !4460, !llvm.loop !4461

; <label>:86:                                     ; preds = %76, %47
  %87 = phi i8* [ null, %47 ], [ %77, %76 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #11, !dbg !4464
  br label %98

; <label>:88:                                     ; preds = %6, %79
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4356, metadata !586), !dbg !4465
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4466, metadata !586) #11, !dbg !4476
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4474, metadata !586) #11, !dbg !4476
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, i64 0, metadata !4475, metadata !586) #11, !dbg !4476
  %89 = call i32 @__vasprintf_chk(i8** nonnull %4, i32 1, i8* %0, %struct.__va_list_tag* %1) #11, !dbg !4479
  %90 = icmp slt i32 %89, 0, !dbg !4480
  br i1 %90, label %91, label %96, !dbg !4481

; <label>:91:                                     ; preds = %88
  %92 = tail call i32* @__errno_location() #17, !dbg !4482
  %93 = load i32, i32* %92, align 4, !dbg !4482, !tbaa !652
  %94 = icmp eq i32 %93, 12, !dbg !4485
  br i1 %94, label %95, label %98, !dbg !4486

; <label>:95:                                     ; preds = %91
  call void @xalloc_die() #15, !dbg !4487
  unreachable, !dbg !4487

; <label>:96:                                     ; preds = %88
  %97 = load i8*, i8** %4, align 8, !dbg !4488, !tbaa !593
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4356, metadata !586), !dbg !4465
  br label %98, !dbg !4489

; <label>:98:                                     ; preds = %86, %91, %96
  %99 = phi i8* [ %97, %96 ], [ %87, %86 ], [ null, %91 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #11, !dbg !4490
  ret i8* %99, !dbg !4490
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #11

; Function Attrs: nounwind
declare i32 @__vasprintf_chk(i8**, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4491 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4494, metadata !586), !dbg !4500
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4495, metadata !586), !dbg !4501
  %3 = icmp eq i64 %0, 0, !dbg !4502
  %4 = icmp eq i64 %1, 0, !dbg !4503
  %5 = or i1 %3, %4, !dbg !4504
  br i1 %5, label %12, label %6, !dbg !4504

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4505
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4497, metadata !586), !dbg !4506
  %8 = udiv i64 %7, %1, !dbg !4507
  %9 = icmp eq i64 %8, %0, !dbg !4509
  br i1 %9, label %12, label %10, !dbg !4510

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4511
  store i32 12, i32* %11, align 4, !dbg !4513, !tbaa !652
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4494, metadata !586), !dbg !4500
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4495, metadata !586), !dbg !4501
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4514
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4496, metadata !586), !dbg !4515
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
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4535, metadata !586), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4536, metadata !586), !dbg !4545
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4537, metadata !586), !dbg !4546
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4538, metadata !586), !dbg !4547
  %6 = bitcast i32* %5 to i8*, !dbg !4548
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4548
  %7 = icmp eq i32* %0, null, !dbg !4549
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4535, metadata !586), !dbg !4544
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4551
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4535, metadata !586), !dbg !4544
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4552
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4539, metadata !586), !dbg !4553
  %10 = icmp ugt i64 %9, -3, !dbg !4554
  %11 = icmp ne i64 %2, 0, !dbg !4555
  %12 = and i1 %11, %10, !dbg !4556
  br i1 %12, label %13, label %18, !dbg !4556

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4557
  br i1 %14, label %18, label %15, !dbg !4558

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4559, !tbaa !742
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4541, metadata !586), !dbg !4560
  %17 = zext i8 %16 to i32, !dbg !4561
  store i32 %17, i32* %8, align 4, !dbg !4562, !tbaa !652
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4563
  ret i64 %19, !dbg !4563
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4564 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4609, metadata !586), !dbg !4614
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4615
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4616, metadata !586), !dbg !4620
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4622
  %4 = load i32, i32* %3, align 8, !dbg !4622, !tbaa !4623
  %5 = and i32 %4, 32, !dbg !4622
  %6 = icmp eq i32 %5, 0, !dbg !4625
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4626
  %8 = icmp ne i32 %7, 0, !dbg !4627
  br i1 %6, label %9, label %19, !dbg !4628

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4630
  %11 = xor i1 %8, true, !dbg !4631
  %12 = or i1 %10, %11, !dbg !4631
  %13 = sext i1 %8 to i32, !dbg !4631
  br i1 %12, label %22, label %14, !dbg !4631

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4632
  %16 = load i32, i32* %15, align 4, !dbg !4632, !tbaa !652
  %17 = icmp ne i32 %16, 9, !dbg !4633
  %18 = sext i1 %17 to i32, !dbg !4634
  br label %22, !dbg !4634

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4635

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4637
  store i32 0, i32* %21, align 4, !dbg !4639, !tbaa !652
  br label %22, !dbg !4637

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4640
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4641 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4644, metadata !586), !dbg !4647
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4645, metadata !586), !dbg !4648
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4649
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4646, metadata !586), !dbg !4650
  %3 = icmp eq i8* %2, null, !dbg !4651
  br i1 %3, label %11, label %4, !dbg !4653

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.149, i64 0, i64 0)) #14, !dbg !4654
  %6 = icmp eq i32 %5, 0, !dbg !4659
  br i1 %6, label %10, label %7, !dbg !4660

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.150, i64 0, i64 0)) #14, !dbg !4661
  %9 = icmp eq i32 %8, 0, !dbg !4662
  br i1 %9, label %10, label %11, !dbg !4663

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4645, metadata !586), !dbg !4648
  br label %11, !dbg !4664

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4665
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4666 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4672, metadata !586), !dbg !4746
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4739, metadata !586), !dbg !4749
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4750
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4670, metadata !586), !dbg !4751
  %4 = icmp eq i8* %3, null, !dbg !4752
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), i8* %3, !dbg !4754
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4670, metadata !586), !dbg !4751
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4755, !tbaa !593
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4686, metadata !586) #11, !dbg !4756
  %7 = icmp eq i8* %6, null, !dbg !4757
  br i1 %7, label %8, label %123, !dbg !4758

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.154, i64 0, i64 0)) #11, !dbg !4759
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4687, metadata !586) #11, !dbg !4760
  %10 = icmp eq i8* %9, null, !dbg !4761
  br i1 %10, label %14, label %11, !dbg !4763

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4764, !tbaa !742
  %13 = icmp eq i8 %12, 0, !dbg !4765
  br i1 %13, label %14, label %15, !dbg !4766

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4767

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.155, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4687, metadata !586) #11, !dbg !4760
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4768
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4690, metadata !586) #11, !dbg !4769
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4692, metadata !586) #11, !dbg !4770
  %18 = icmp eq i64 %17, 0, !dbg !4771
  br i1 %18, label %24, label %19, !dbg !4772

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4773
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4773
  %22 = load i8, i8* %21, align 1, !dbg !4773, !tbaa !742
  %23 = icmp ne i8 %22, 47, !dbg !4773
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4774
  %27 = add i64 %17, 14, !dbg !4775
  %28 = add i64 %27, %26, !dbg !4776
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !4777
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4689, metadata !586) #11, !dbg !4778
  %30 = icmp eq i8* %29, null, !dbg !4779
  br i1 %30, label %121, label %31, !dbg !4779

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !4780
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4783

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4784, !tbaa !742
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4786
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.156, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4787
  br label %37, !dbg !4788

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4786
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.156, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4787
  br label %37, !dbg !4788

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !4789
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4694, metadata !586) #11, !dbg !4790
  %39 = icmp slt i32 %38, 0, !dbg !4791
  br i1 %39, label %119, label %40, !dbg !4792

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.157, i64 0, i64 0)) #11, !dbg !4793
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4695, metadata !586) #11, !dbg !4794
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4795
  br i1 %42, label %43, label %45, !dbg !4796

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #11, !dbg !4797
  br label %119, !dbg !4799

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4736, metadata !586) #11, !dbg !4800
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4737, metadata !586) #11, !dbg !4801
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4802

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4803

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4736, metadata !586) #11, !dbg !4800
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4737, metadata !586) #11, !dbg !4801
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4803
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4804
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4805, metadata !586) #11, !dbg !4810
  %54 = load i8*, i8** %48, align 8, !dbg !4812, !tbaa !4813
  %55 = load i8*, i8** %49, align 8, !dbg !4812, !tbaa !4814
  %56 = icmp ult i8* %54, %55, !dbg !4812
  br i1 %56, label %59, label %57, !dbg !4812, !prof !4815

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4812
  br label %63, !dbg !4812

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4812
  store i8* %60, i8** %48, align 8, !dbg !4812, !tbaa !4813
  %61 = load i8, i8* %54, align 1, !dbg !4812, !tbaa !742
  %62 = zext i8 %61 to i32, !dbg !4812
  br label %63, !dbg !4812

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4812
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4738, metadata !586) #11, !dbg !4816
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4817, !llvm.loop !4818

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4823

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4805, metadata !586) #11, !dbg !4825
  %67 = load i8*, i8** %48, align 8, !dbg !4823, !tbaa !4813
  %68 = load i8*, i8** %49, align 8, !dbg !4823, !tbaa !4814
  %69 = icmp ult i8* %67, %68, !dbg !4823
  br i1 %69, label %72, label %70, !dbg !4823, !prof !4815

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4823
  br label %76, !dbg !4823

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4823
  store i8* %73, i8** %48, align 8, !dbg !4823, !tbaa !4813
  %74 = load i8, i8* %67, align 1, !dbg !4823, !tbaa !742
  %75 = zext i8 %74 to i32, !dbg !4823
  br label %76, !dbg !4823

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4823
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4738, metadata !586) #11, !dbg !4816
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4826, !llvm.loop !4827

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #11, !dbg !4830
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.158, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #11, !dbg !4831
  %81 = icmp slt i32 %80, 2, !dbg !4833
  br i1 %81, label %112, label %82, !dbg !4834

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4835
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4743, metadata !586) #11, !dbg !4836
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4837
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4744, metadata !586) #11, !dbg !4838
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4745, metadata !586) #11, !dbg !4839
  %85 = icmp eq i64 %51, 0, !dbg !4840
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4842

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4737, metadata !586) #11, !dbg !4801
  %90 = add i64 %87, 2, !dbg !4843
  %91 = call noalias i8* @malloc(i64 %90) #11, !dbg !4845
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4736, metadata !586) #11, !dbg !4800
  br label %96, !dbg !4846

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4847
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4737, metadata !586) #11, !dbg !4801
  %94 = add i64 %93, 1, !dbg !4849
  %95 = call i8* @realloc(i8* %52, i64 %94) #11, !dbg !4850
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4736, metadata !586) #11, !dbg !4800
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4736, metadata !586) #11, !dbg !4800
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4737, metadata !586) #11, !dbg !4801
  %99 = icmp eq i8* %98, null, !dbg !4851
  br i1 %99, label %100, label %102, !dbg !4853

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4737, metadata !586) #11, !dbg !4801
  call void @free(i8* %52) #11, !dbg !4854
  br label %112, !dbg !4856

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4857
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4857
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4858
  %104 = xor i64 %84, -1, !dbg !4859
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4859
  %106 = xor i64 %83, -1, !dbg !4860
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4860
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4861, metadata !586) #11, !dbg !4869
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4868, metadata !586) #11, !dbg !4869
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #11, !dbg !4871
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #11, !dbg !4872
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4861, metadata !586) #11, !dbg !4873
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4868, metadata !586) #11, !dbg !4873
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #11, !dbg !4875
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #11, !dbg !4876
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4736, metadata !586) #11, !dbg !4800
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4737, metadata !586) #11, !dbg !4801
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4857
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4857
  br label %50, !dbg !4877, !llvm.loop !4827

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4857
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4857
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !4878
  %116 = icmp eq i64 %113, 0, !dbg !4879
  br i1 %116, label %119, label %117, !dbg !4881

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4882
  store i8 0, i8* %118, align 1, !dbg !4884, !tbaa !742
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4686, metadata !586) #11, !dbg !4756
  call void @free(i8* %29) #11, !dbg !4885
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4686, metadata !586) #11, !dbg !4756
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4886, !tbaa !593
  br label %123, !dbg !4887

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4686, metadata !586) #11, !dbg !4756
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4671, metadata !586), !dbg !4888
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4671, metadata !586), !dbg !4888
  %125 = load i8, i8* %124, align 1, !dbg !4889, !tbaa !742
  %126 = icmp eq i8 %125, 0, !dbg !4891
  br i1 %126, label %152, label %127, !dbg !4892

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4893

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4671, metadata !586), !dbg !4888
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4893
  %132 = icmp eq i32 %131, 0, !dbg !4895
  br i1 %132, label %139, label %133, !dbg !4896

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4897
  br i1 %134, label %135, label %143, !dbg !4898

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4899
  %137 = load i8, i8* %136, align 1, !dbg !4899, !tbaa !742
  %138 = icmp eq i8 %137, 0, !dbg !4900
  br i1 %138, label %139, label %143, !dbg !4901

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4902
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4904
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4905
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4670, metadata !586), !dbg !4751
  br label %152, !dbg !4906

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4907
  %145 = add i64 %144, 1, !dbg !4908
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4909
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4671, metadata !586), !dbg !4888
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4910
  %148 = add i64 %147, 1, !dbg !4911
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4912
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4671, metadata !586), !dbg !4888
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4671, metadata !586), !dbg !4888
  %150 = load i8, i8* %149, align 1, !dbg !4889, !tbaa !742
  %151 = icmp eq i8 %150, 0, !dbg !4891
  br i1 %151, label %152, label %128, !dbg !4892, !llvm.loop !4913

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4670, metadata !586), !dbg !4751
  %154 = load i8, i8* %153, align 1, !dbg !4915, !tbaa !742
  %155 = icmp eq i8 %154, 0, !dbg !4917
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.159, i64 0, i64 0), i8* %153, !dbg !4918
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4670, metadata !586), !dbg !4751
  ret i8* %156, !dbg !4919
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

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4920 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4965, metadata !586), !dbg !4969
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4966, metadata !586), !dbg !4970
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4968, metadata !586), !dbg !4971
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4972
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4967, metadata !586), !dbg !4973
  %3 = icmp slt i32 %2, 0, !dbg !4974
  br i1 %3, label %4, label %6, !dbg !4976

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4977
  br label %24, !dbg !4978

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4979
  %8 = icmp eq i32 %7, 0, !dbg !4979
  br i1 %8, label %13, label %9, !dbg !4981

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4982
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4983
  %12 = icmp eq i64 %11, -1, !dbg !4984
  br i1 %12, label %16, label %13, !dbg !4985

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4986
  %15 = icmp eq i32 %14, 0, !dbg !4986
  br i1 %15, label %16, label %18, !dbg !4987

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4966, metadata !586), !dbg !4970
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4988
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4968, metadata !586), !dbg !4971
  br label %24, !dbg !4989

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4990
  %20 = load i32, i32* %19, align 4, !dbg !4990, !tbaa !652
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4966, metadata !586), !dbg !4970
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4966, metadata !586), !dbg !4970
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4988
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4968, metadata !586), !dbg !4971
  %22 = icmp eq i32 %20, 0, !dbg !4991
  br i1 %22, label %24, label %23, !dbg !4989

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4993, !tbaa !652
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4968, metadata !586), !dbg !4971
  br label %24, !dbg !4995

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4996
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4997 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5042, metadata !586), !dbg !5043
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5044
  br i1 %2, label %6, label %3, !dbg !5046

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !5047
  %5 = icmp eq i32 %4, 0, !dbg !5047
  br i1 %5, label %6, label %8, !dbg !5048

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5049
  br label %17, !dbg !5050

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5051, metadata !586) #11, !dbg !5056
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5058
  %10 = load i32, i32* %9, align 8, !dbg !5058, !tbaa !4623
  %11 = and i32 %10, 256, !dbg !5060
  %12 = icmp eq i32 %11, 0, !dbg !5060
  br i1 %12, label %15, label %13, !dbg !5061

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !5062
  br label %15, !dbg !5062

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5063
  br label %17, !dbg !5064

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5065
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5066 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5112, metadata !586), !dbg !5118
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5113, metadata !586), !dbg !5119
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5114, metadata !586), !dbg !5120
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5121
  %5 = load i8*, i8** %4, align 8, !dbg !5121, !tbaa !4814
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5122
  %7 = load i8*, i8** %6, align 8, !dbg !5122, !tbaa !4813
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
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5135
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !5136
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5115, metadata !586), !dbg !5137
  %22 = icmp eq i64 %21, -1, !dbg !5138
  br i1 %22, label %30, label %23, !dbg !5140

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5141
  %25 = load i32, i32* %24, align 8, !dbg !5142, !tbaa !4623
  %26 = and i32 %25, -17, !dbg !5142
  store i32 %26, i32* %24, align 8, !dbg !5142, !tbaa !4623
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
attributes #7 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !63, !69, !78, !518, !85, !92, !525, !528, !530, !162, !538, !555, !557, !560, !562, !565, !567, !171, !569, !571, !573}
!llvm.ident = !{!575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575}
!llvm.module.flags = !{!576, !577, !578, !579, !580}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "argv", scope: !2, file: !6, line: 73, type: !60, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !26, globals: !33)
!3 = !DIFile(filename: "src/lbracket.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 59, size: 32, elements: !7)
!6 = !DIFile(filename: "src/test.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "TEST_TRUE", value: 0)
!9 = !DIEnumerator(name: "TEST_FALSE", value: 1)
!10 = !DIEnumerator(name: "TEST_FAILURE", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 46, size: 32, elements: !13)
!12 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!14 = !DIEnumerator(name: "_ISupper", value: 256)
!15 = !DIEnumerator(name: "_ISlower", value: 512)
!16 = !DIEnumerator(name: "_ISalpha", value: 1024)
!17 = !DIEnumerator(name: "_ISdigit", value: 2048)
!18 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!19 = !DIEnumerator(name: "_ISspace", value: 8192)
!20 = !DIEnumerator(name: "_ISprint", value: 16384)
!21 = !DIEnumerator(name: "_ISgraph", value: 32768)
!22 = !DIEnumerator(name: "_ISblank", value: 1)
!23 = !DIEnumerator(name: "_IScntrl", value: 2)
!24 = !DIEnumerator(name: "_ISpunct", value: 4)
!25 = !DIEnumerator(name: "_ISalnum", value: 8)
!26 = !{!27, !29, !30, !31, !32}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !{!34, !36, !0, !38}
!34 = !DIGlobalVariableExpression(var: !35)
!35 = distinct !DIGlobalVariable(name: "pos", scope: !2, file: !6, line: 71, type: !30, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37)
!37 = distinct !DIGlobalVariable(name: "argc", scope: !2, file: !6, line: 72, type: !30, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39)
!39 = distinct !DIGlobalVariable(name: "infomap", scope: !40, file: !41, line: 632, type: !57, isLocal: true, isDefinition: true)
!40 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !41, file: !41, line: 630, type: !42, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !46)
!41 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!46 = !{!47, !48, !49, !56}
!47 = !DILocalVariable(name: "program", arg: 1, scope: !40, file: !41, line: 630, type: !44)
!48 = !DILocalVariable(name: "node", scope: !40, file: !41, line: 642, type: !44)
!49 = !DILocalVariable(name: "map_prog", scope: !40, file: !41, line: 643, type: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !40, file: !41, line: 632, size: 128, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !52, file: !41, line: 632, baseType: !44, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !52, file: !41, line: 632, baseType: !44, size: 64, offset: 64)
!56 = !DILocalVariable(name: "lc_messages", scope: !40, file: !41, line: 655, type: !44)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 896, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 7)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!61 = !DIGlobalVariableExpression(var: !62)
!62 = distinct !DIGlobalVariable(name: "Version", scope: !63, file: !64, line: 2, type: !44, isLocal: false, isDefinition: true)
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, globals: !66)
!64 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!65 = !{}
!66 = !{!61}
!67 = !DIGlobalVariableExpression(var: !68)
!68 = distinct !DIGlobalVariable(name: "file_name", scope: !69, file: !74, line: 36, type: !44, isLocal: true, isDefinition: true)
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, globals: !71)
!70 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!71 = !{!67, !72}
!72 = !DIGlobalVariableExpression(var: !73)
!73 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !69, file: !74, line: 46, type: !75, isLocal: true, isDefinition: true)
!74 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!75 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!76 = !DIGlobalVariableExpression(var: !77)
!77 = distinct !DIGlobalVariable(name: "exit_failure", scope: !78, file: !81, line: 24, type: !82, isLocal: false, isDefinition: true)
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, globals: !80)
!79 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!80 = !{!76}
!81 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!82 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!83 = !DIGlobalVariableExpression(var: !84)
!84 = distinct !DIGlobalVariable(name: "program_name", scope: !85, file: !89, line: 33, type: !44, isLocal: false, isDefinition: true)
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !87, globals: !88)
!86 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!87 = !{!29, !27}
!88 = !{!83}
!89 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!90 = !DIGlobalVariableExpression(var: !91)
!91 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !92, file: !121, line: 77, type: !156, isLocal: false, isDefinition: true)
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !114, globals: !118)
!93 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!94 = !{!95, !109, !11}
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !96, line: 32, size: 32, elements: !97)
!96 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!98 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!99 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!100 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!101 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!102 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!103 = !DIEnumerator(name: "c_quoting_style", value: 5)
!104 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!105 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!106 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!107 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!108 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !96, line: 242, size: 32, elements: !110)
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!112 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!113 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!114 = !{!30, !31, !115, !27}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 62, baseType: !117)
!116 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!118 = !{!90, !119, !126, !138, !140, !145, !152, !154}
!119 = !DIGlobalVariableExpression(var: !120)
!120 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !92, file: !121, line: 93, type: !122, isLocal: false, isDefinition: true)
!121 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 320, elements: !124)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!124 = !{!125}
!125 = !DISubrange(count: 10)
!126 = !DIGlobalVariableExpression(var: !127)
!127 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !92, file: !121, line: 1043, type: !128, isLocal: false, isDefinition: true)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !121, line: 57, size: 448, elements: !129)
!129 = !{!130, !131, !132, !136, !137}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !128, file: !121, line: 60, baseType: !95, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !121, line: 63, baseType: !30, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !128, file: !121, line: 67, baseType: !133, size: 256, offset: 64)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 256, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 8)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !128, file: !121, line: 70, baseType: !44, size: 64, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !128, file: !121, line: 73, baseType: !44, size: 64, offset: 384)
!138 = !DIGlobalVariableExpression(var: !139)
!139 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !92, file: !121, line: 108, type: !128, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141)
!141 = distinct !DIGlobalVariable(name: "slot0", scope: !92, file: !121, line: 834, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 256)
!145 = !DIGlobalVariableExpression(var: !146)
!146 = distinct !DIGlobalVariable(name: "slotvec", scope: !92, file: !121, line: 837, type: !147, isLocal: true, isDefinition: true)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !121, line: 826, size: 128, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !148, file: !121, line: 828, baseType: !115, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !148, file: !121, line: 829, baseType: !27, size: 64, offset: 64)
!152 = !DIGlobalVariableExpression(var: !153)
!153 = distinct !DIGlobalVariable(name: "nslots", scope: !92, file: !121, line: 835, type: !30, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155)
!155 = distinct !DIGlobalVariable(name: "slotvec0", scope: !92, file: !121, line: 836, type: !148, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 704, elements: !158)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!158 = !{!159}
!159 = !DISubrange(count: 11)
!160 = !DIGlobalVariableExpression(var: !161)
!161 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !162, file: !165, line: 26, type: !166, isLocal: false, isDefinition: true)
!162 = distinct !DICompileUnit(language: DW_LANG_C99, file: !163, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, globals: !164)
!163 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!164 = !{!160}
!165 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 376, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 47)
!169 = !DIGlobalVariableExpression(var: !170)
!170 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !171, file: !516, line: 120, type: !517, isLocal: true, isDefinition: true)
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !173, retainedTypes: !512, globals: !515)
!172 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!173 = !{!174}
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !175, line: 41, size: 32, elements: !176)
!175 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511}
!177 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!178 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!179 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!180 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!181 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!182 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!183 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!184 = !DIEnumerator(name: "DAY_1", value: 131079)
!185 = !DIEnumerator(name: "DAY_2", value: 131080)
!186 = !DIEnumerator(name: "DAY_3", value: 131081)
!187 = !DIEnumerator(name: "DAY_4", value: 131082)
!188 = !DIEnumerator(name: "DAY_5", value: 131083)
!189 = !DIEnumerator(name: "DAY_6", value: 131084)
!190 = !DIEnumerator(name: "DAY_7", value: 131085)
!191 = !DIEnumerator(name: "ABMON_1", value: 131086)
!192 = !DIEnumerator(name: "ABMON_2", value: 131087)
!193 = !DIEnumerator(name: "ABMON_3", value: 131088)
!194 = !DIEnumerator(name: "ABMON_4", value: 131089)
!195 = !DIEnumerator(name: "ABMON_5", value: 131090)
!196 = !DIEnumerator(name: "ABMON_6", value: 131091)
!197 = !DIEnumerator(name: "ABMON_7", value: 131092)
!198 = !DIEnumerator(name: "ABMON_8", value: 131093)
!199 = !DIEnumerator(name: "ABMON_9", value: 131094)
!200 = !DIEnumerator(name: "ABMON_10", value: 131095)
!201 = !DIEnumerator(name: "ABMON_11", value: 131096)
!202 = !DIEnumerator(name: "ABMON_12", value: 131097)
!203 = !DIEnumerator(name: "MON_1", value: 131098)
!204 = !DIEnumerator(name: "MON_2", value: 131099)
!205 = !DIEnumerator(name: "MON_3", value: 131100)
!206 = !DIEnumerator(name: "MON_4", value: 131101)
!207 = !DIEnumerator(name: "MON_5", value: 131102)
!208 = !DIEnumerator(name: "MON_6", value: 131103)
!209 = !DIEnumerator(name: "MON_7", value: 131104)
!210 = !DIEnumerator(name: "MON_8", value: 131105)
!211 = !DIEnumerator(name: "MON_9", value: 131106)
!212 = !DIEnumerator(name: "MON_10", value: 131107)
!213 = !DIEnumerator(name: "MON_11", value: 131108)
!214 = !DIEnumerator(name: "MON_12", value: 131109)
!215 = !DIEnumerator(name: "AM_STR", value: 131110)
!216 = !DIEnumerator(name: "PM_STR", value: 131111)
!217 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!218 = !DIEnumerator(name: "D_FMT", value: 131113)
!219 = !DIEnumerator(name: "T_FMT", value: 131114)
!220 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!221 = !DIEnumerator(name: "ERA", value: 131116)
!222 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!223 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!224 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!225 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!226 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!227 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!228 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!229 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!230 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!231 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!232 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!233 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!234 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!235 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!236 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!237 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!238 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!239 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!240 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!241 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!242 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!243 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!244 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!245 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!246 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!247 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!248 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!249 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!250 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!251 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!252 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!253 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!254 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!255 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!256 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!257 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!258 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!259 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!260 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!261 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!262 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!263 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!264 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!265 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!266 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!267 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!268 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!269 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!270 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!271 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!272 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!273 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!274 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!275 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!276 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!277 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!278 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!279 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!280 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!281 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!282 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!283 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!284 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!285 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!286 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!287 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!288 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!289 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!290 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!291 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!292 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!293 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!294 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!295 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!296 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!297 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!298 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!299 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!300 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!301 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!302 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!303 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!304 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!305 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!306 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!307 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!308 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!309 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!310 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!311 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!312 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!313 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!314 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!315 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!316 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!317 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!318 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!319 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!320 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!321 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!322 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!323 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!324 = !DIEnumerator(name: "CODESET", value: 14)
!325 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!326 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!327 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!328 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!329 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!330 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!331 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!332 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!333 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!334 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!335 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!336 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!337 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!338 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!339 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!340 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!341 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!342 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!343 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!344 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!351 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!352 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!353 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!354 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!355 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!356 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!357 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!358 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!359 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!360 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!361 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!362 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!363 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!364 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!365 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!366 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!371 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!372 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!373 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!374 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!375 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!376 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!377 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!378 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!379 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!380 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!381 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!382 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!383 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!384 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!385 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!386 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!387 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!388 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!389 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!390 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!391 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!392 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!393 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!394 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!395 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!396 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!397 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!398 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!399 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!400 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!401 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!402 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!403 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!404 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!405 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!406 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!407 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!408 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!409 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!410 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!411 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!412 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!413 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!414 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!415 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!416 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!417 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!418 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!419 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!420 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!421 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!422 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!423 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!424 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!425 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!426 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!427 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!428 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!429 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!430 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!431 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!432 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!433 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!434 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!435 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!436 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!439 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!440 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!441 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!442 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!443 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!444 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!445 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!446 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!447 = !DIEnumerator(name: "THOUSEP", value: 65537)
!448 = !DIEnumerator(name: "__GROUPING", value: 65538)
!449 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!450 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!451 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!452 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!453 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!454 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!455 = !DIEnumerator(name: "__YESSTR", value: 327682)
!456 = !DIEnumerator(name: "__NOSTR", value: 327683)
!457 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!458 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!459 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!460 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!461 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!462 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!463 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!464 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!465 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!466 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!467 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!468 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!469 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!470 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!471 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!472 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!473 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!474 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!475 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!476 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!477 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!478 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!479 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!480 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!481 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!482 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!483 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!484 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!485 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!486 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!487 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!488 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!489 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!490 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!491 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!492 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!493 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!494 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!495 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!496 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!497 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!498 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!499 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!500 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!501 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!502 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!503 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!504 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!505 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!506 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!507 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!508 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!509 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!510 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!511 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!512 = !{!29, !27, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!515 = !{!169}
!516 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!517 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!518 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !520)
!519 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !522, line: 112, baseType: !523)
!522 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !524, line: 62, baseType: !117)
!524 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!525 = distinct !DICompileUnit(language: DW_LANG_C99, file: !526, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !527)
!526 = !DIFile(filename: "./lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!527 = !{!32}
!528 = distinct !DICompileUnit(language: DW_LANG_C99, file: !529, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65)
!529 = !DIFile(filename: "./lib/verror.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!530 = distinct !DICompileUnit(language: DW_LANG_C99, file: !531, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !532, retainedTypes: !537)
!531 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!532 = !{!533}
!533 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !534, line: 41, size: 32, elements: !535)
!534 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!535 = !{!536}
!536 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!537 = !{!29}
!538 = distinct !DICompileUnit(language: DW_LANG_C99, file: !539, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !540, retainedTypes: !554)
!539 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!540 = !{!541}
!541 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !543, file: !542, line: 192, size: 32, elements: !552)
!542 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!543 = distinct !DISubprogram(name: "x2nrealloc", scope: !542, file: !542, line: 180, type: !544, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !547)
!544 = !DISubroutineType(types: !545)
!545 = !{!29, !29, !546, !115}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!547 = !{!548, !549, !550, !551}
!548 = !DILocalVariable(name: "p", arg: 1, scope: !543, file: !542, line: 180, type: !29)
!549 = !DILocalVariable(name: "pn", arg: 2, scope: !543, file: !542, line: 180, type: !546)
!550 = !DILocalVariable(name: "s", arg: 3, scope: !543, file: !542, line: 180, type: !115)
!551 = !DILocalVariable(name: "n", scope: !543, file: !542, line: 182, type: !115)
!552 = !{!553}
!553 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!554 = !{!115, !27, !29}
!555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !556, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65)
!556 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!557 = distinct !DICompileUnit(language: DW_LANG_C99, file: !558, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !559)
!558 = !DIFile(filename: "./lib/xvasprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!559 = !{!27}
!560 = distinct !DICompileUnit(language: DW_LANG_C99, file: !561, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !537)
!561 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!562 = distinct !DICompileUnit(language: DW_LANG_C99, file: !563, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !564)
!563 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!564 = !{!115}
!565 = distinct !DICompileUnit(language: DW_LANG_C99, file: !566, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65)
!566 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!567 = distinct !DICompileUnit(language: DW_LANG_C99, file: !568, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65)
!568 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65)
!570 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !537)
!572 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !537)
!574 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!575 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!576 = !{i32 2, !"Dwarf Version", i32 4}
!577 = !{i32 2, !"Debug Info Version", i32 3}
!578 = !{i32 1, !"wchar_size", i32 4}
!579 = !{i32 7, !"PIC Level", i32 2}
!580 = !{i32 7, !"PIE Level", i32 2}
!581 = distinct !DISubprogram(name: "usage", scope: !6, file: !6, line: 703, type: !582, isLocal: false, isDefinition: true, scopeLine: 704, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !584)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !30}
!584 = !{!585}
!585 = !DILocalVariable(name: "status", arg: 1, scope: !581, file: !6, line: 703, type: !30)
!586 = !DIExpression()
!587 = !DILocation(line: 703, column: 12, scope: !581)
!588 = !DILocation(line: 705, column: 14, scope: !589)
!589 = distinct !DILexicalBlock(scope: !581, file: !6, line: 705, column: 7)
!590 = !DILocation(line: 705, column: 7, scope: !581)
!591 = !DILocation(line: 706, column: 5, scope: !592)
!592 = distinct !DILexicalBlock(scope: !589, file: !6, line: 706, column: 5)
!593 = !{!594, !594, i64 0}
!594 = !{!"any pointer", !595, i64 0}
!595 = !{!"omnipotent char", !596, i64 0}
!596 = !{!"Simple C/C++ TBAA"}
!597 = !DILocation(line: 709, column: 7, scope: !598)
!598 = distinct !DILexicalBlock(scope: !589, file: !6, line: 708, column: 5)
!599 = !DILocation(line: 716, column: 7, scope: !598)
!600 = !DILocation(line: 720, column: 7, scope: !598)
!601 = !DILocation(line: 721, column: 7, scope: !598)
!602 = !DILocation(line: 722, column: 7, scope: !598)
!603 = !DILocation(line: 727, column: 7, scope: !598)
!604 = !DILocation(line: 734, column: 7, scope: !598)
!605 = !DILocation(line: 742, column: 7, scope: !598)
!606 = !DILocation(line: 751, column: 7, scope: !598)
!607 = !DILocation(line: 757, column: 7, scope: !598)
!608 = !DILocation(line: 764, column: 7, scope: !598)
!609 = !DILocation(line: 771, column: 7, scope: !598)
!610 = !DILocation(line: 778, column: 7, scope: !598)
!611 = !DILocation(line: 785, column: 7, scope: !598)
!612 = !DILocation(line: 791, column: 7, scope: !598)
!613 = !DILocation(line: 796, column: 7, scope: !598)
!614 = !DILocation(line: 801, column: 7, scope: !598)
!615 = !DILocation(line: 642, column: 15, scope: !40, inlinedAt: !616)
!616 = distinct !DILocation(line: 802, column: 7, scope: !598)
!617 = !DILocation(line: 651, column: 3, scope: !40, inlinedAt: !616)
!618 = !DILocation(line: 655, column: 29, scope: !40, inlinedAt: !616)
!619 = !DILocation(line: 655, column: 15, scope: !40, inlinedAt: !616)
!620 = !DILocation(line: 656, column: 7, scope: !621, inlinedAt: !616)
!621 = distinct !DILexicalBlock(scope: !40, file: !41, line: 656, column: 7)
!622 = !DILocation(line: 656, column: 19, scope: !621, inlinedAt: !616)
!623 = !DILocation(line: 656, column: 22, scope: !621, inlinedAt: !616)
!624 = !DILocation(line: 656, column: 7, scope: !40, inlinedAt: !616)
!625 = !DILocation(line: 662, column: 7, scope: !626, inlinedAt: !616)
!626 = distinct !DILexicalBlock(scope: !621, file: !41, line: 657, column: 5)
!627 = !DILocation(line: 664, column: 5, scope: !626, inlinedAt: !616)
!628 = !DILocation(line: 665, column: 3, scope: !40, inlinedAt: !616)
!629 = !DILocation(line: 667, column: 3, scope: !40, inlinedAt: !616)
!630 = !DILocation(line: 804, column: 3, scope: !581)
!631 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 823, type: !632, isLocal: false, isDefinition: true, scopeLine: 824, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !634)
!632 = !DISubroutineType(types: !633)
!633 = !{!30, !30, !60}
!634 = !{!635, !636, !637}
!635 = !DILocalVariable(name: "margc", arg: 1, scope: !631, file: !6, line: 823, type: !30)
!636 = !DILocalVariable(name: "margv", arg: 2, scope: !631, file: !6, line: 823, type: !60)
!637 = !DILocalVariable(name: "value", scope: !631, file: !6, line: 825, type: !75)
!638 = !DILocation(line: 823, column: 11, scope: !631)
!639 = !DILocation(line: 823, column: 25, scope: !631)
!640 = !DILocation(line: 836, column: 21, scope: !631)
!641 = !DILocation(line: 836, column: 3, scope: !631)
!642 = !DILocation(line: 837, column: 3, scope: !631)
!643 = !DILocation(line: 838, column: 3, scope: !631)
!644 = !DILocation(line: 839, column: 3, scope: !631)
!645 = !DILocalVariable(name: "status", arg: 1, scope: !646, file: !41, line: 99, type: !30)
!646 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !41, file: !41, line: 99, type: !582, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !647)
!647 = !{!645}
!648 = !DILocation(line: 99, column: 30, scope: !646, inlinedAt: !649)
!649 = distinct !DILocation(line: 841, column: 3, scope: !631)
!650 = !DILocation(line: 102, column: 18, scope: !651, inlinedAt: !649)
!651 = distinct !DILexicalBlock(scope: !646, file: !41, line: 101, column: 7)
!652 = !{!653, !653, i64 0}
!653 = !{!"int", !595, i64 0}
!654 = !DILocation(line: 842, column: 3, scope: !631)
!655 = !DILocation(line: 845, column: 8, scope: !631)
!656 = !DILocation(line: 855, column: 17, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !6, line: 855, column: 11)
!658 = distinct !DILexicalBlock(scope: !659, file: !6, line: 848, column: 5)
!659 = distinct !DILexicalBlock(scope: !631, file: !6, line: 847, column: 7)
!660 = !DILocation(line: 855, column: 11, scope: !658)
!661 = !DILocation(line: 857, column: 15, scope: !662)
!662 = distinct !DILexicalBlock(scope: !663, file: !6, line: 857, column: 15)
!663 = distinct !DILexicalBlock(scope: !657, file: !6, line: 856, column: 9)
!664 = !DILocation(line: 857, column: 15, scope: !663)
!665 = !DILocation(line: 858, column: 13, scope: !662)
!666 = !DILocation(line: 860, column: 15, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !6, line: 860, column: 15)
!668 = !DILocation(line: 860, column: 15, scope: !663)
!669 = !DILocation(line: 862, column: 28, scope: !670)
!670 = distinct !DILexicalBlock(scope: !667, file: !6, line: 861, column: 13)
!671 = !DILocation(line: 862, column: 64, scope: !670)
!672 = !DILocation(line: 862, column: 15, scope: !670)
!673 = !DILocation(line: 864, column: 15, scope: !670)
!674 = !DILocation(line: 867, column: 17, scope: !675)
!675 = distinct !DILexicalBlock(scope: !658, file: !6, line: 867, column: 11)
!676 = !DILocation(line: 867, column: 21, scope: !675)
!677 = !DILocation(line: 867, column: 25, scope: !675)
!678 = !DILocation(line: 867, column: 11, scope: !658)
!679 = !DILocation(line: 868, column: 28, scope: !675)
!680 = !DILocation(line: 868, column: 45, scope: !675)
!681 = !DILocation(line: 868, column: 9, scope: !675)
!682 = !DILocation(line: 873, column: 8, scope: !631)
!683 = !DILocation(line: 874, column: 7, scope: !631)
!684 = !DILocation(line: 876, column: 11, scope: !685)
!685 = distinct !DILexicalBlock(scope: !631, file: !6, line: 876, column: 7)
!686 = !DILocation(line: 876, column: 7, scope: !631)
!687 = !DILocation(line: 879, column: 27, scope: !631)
!688 = !DILocation(line: 879, column: 11, scope: !631)
!689 = !DILocation(line: 881, column: 7, scope: !690)
!690 = distinct !DILexicalBlock(scope: !631, file: !6, line: 881, column: 7)
!691 = !DILocation(line: 881, column: 14, scope: !690)
!692 = !DILocation(line: 881, column: 11, scope: !690)
!693 = !DILocation(line: 881, column: 7, scope: !631)
!694 = !DILocation(line: 882, column: 24, scope: !690)
!695 = !DILocation(line: 882, column: 55, scope: !690)
!696 = !DILocation(line: 882, column: 60, scope: !690)
!697 = !DILocation(line: 882, column: 48, scope: !690)
!698 = !DILocation(line: 882, column: 5, scope: !690)
!699 = !DILocation(line: 884, column: 3, scope: !631)
!700 = !DILocation(line: 885, column: 1, scope: !631)
!701 = distinct !DISubprogram(name: "test_syntax_error", scope: !6, file: !6, line: 92, type: !702, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !704)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !44, null}
!704 = !{!705, !706}
!705 = !DILocalVariable(name: "format", arg: 1, scope: !701, file: !6, line: 92, type: !44)
!706 = !DILocalVariable(name: "ap", scope: !701, file: !6, line: 94, type: !707)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !708, line: 46, baseType: !709)
!708 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !710, line: 48, baseType: !711)
!710 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 94, baseType: !712)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 192, elements: !719)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 94, size: 192, elements: !714)
!714 = !{!715, !716, !717, !718}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !713, file: !3, line: 94, baseType: !32, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !713, file: !3, line: 94, baseType: !32, size: 32, offset: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !713, file: !3, line: 94, baseType: !29, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !713, file: !3, line: 94, baseType: !29, size: 64, offset: 128)
!719 = !{!720}
!720 = !DISubrange(count: 1)
!721 = !DILocation(line: 92, column: 32, scope: !701)
!722 = !DILocation(line: 94, column: 3, scope: !701)
!723 = !DILocation(line: 94, column: 11, scope: !701)
!724 = !DILocation(line: 95, column: 3, scope: !701)
!725 = !DILocation(line: 96, column: 3, scope: !701)
!726 = !DILocation(line: 97, column: 3, scope: !701)
!727 = distinct !DISubprogram(name: "posixtest", scope: !6, file: !6, line: 657, type: !728, isLocal: true, isDefinition: true, scopeLine: 658, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !730)
!728 = !DISubroutineType(types: !729)
!729 = !{!75, !30}
!730 = !{!731, !732}
!731 = !DILocalVariable(name: "nargs", arg: 1, scope: !727, file: !6, line: 657, type: !30)
!732 = !DILocalVariable(name: "value", scope: !727, file: !6, line: 659, type: !75)
!733 = !DILocation(line: 657, column: 16, scope: !727)
!734 = !DILocation(line: 661, column: 3, scope: !727)
!735 = !DILocation(line: 603, column: 10, scope: !736, inlinedAt: !739)
!736 = distinct !DISubprogram(name: "one_argument", scope: !6, file: !6, line: 601, type: !737, isLocal: true, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !65)
!737 = !DISubroutineType(types: !738)
!738 = !{!75}
!739 = distinct !DILocation(line: 664, column: 17, scope: !740)
!740 = distinct !DILexicalBlock(scope: !727, file: !6, line: 662, column: 5)
!741 = !DILocation(line: 603, column: 18, scope: !736, inlinedAt: !739)
!742 = !{!595, !595, i64 0}
!743 = !DILocation(line: 603, column: 25, scope: !736, inlinedAt: !739)
!744 = !DILocation(line: 665, column: 9, scope: !740)
!745 = !DILocation(line: 668, column: 17, scope: !740)
!746 = !DILocation(line: 669, column: 9, scope: !740)
!747 = !DILocation(line: 672, column: 17, scope: !740)
!748 = !DILocation(line: 673, column: 9, scope: !740)
!749 = !DILocation(line: 676, column: 13, scope: !750)
!750 = distinct !DILexicalBlock(scope: !740, file: !6, line: 676, column: 13)
!751 = !DILocation(line: 676, column: 13, scope: !740)
!752 = !DILocalVariable(name: "f", arg: 1, scope: !753, file: !6, line: 105, type: !75)
!753 = distinct !DISubprogram(name: "advance", scope: !6, file: !6, line: 105, type: !754, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !756)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !75}
!756 = !{!752}
!757 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !758)
!758 = distinct !DILocation(line: 678, column: 13, scope: !759)
!759 = distinct !DILexicalBlock(scope: !750, file: !6, line: 677, column: 11)
!760 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !758)
!761 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !758)
!762 = distinct !DILexicalBlock(scope: !753, file: !6, line: 109, column: 7)
!763 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !758)
!764 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !758)
!765 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !758)
!766 = !DILocation(line: 679, column: 22, scope: !759)
!767 = !DILocation(line: 679, column: 21, scope: !759)
!768 = !DILocation(line: 680, column: 13, scope: !759)
!769 = !DILocation(line: 682, column: 13, scope: !770)
!770 = distinct !DILexicalBlock(scope: !740, file: !6, line: 682, column: 13)
!771 = !DILocation(line: 682, column: 36, scope: !770)
!772 = !DILocation(line: 682, column: 39, scope: !770)
!773 = !DILocation(line: 682, column: 13, scope: !740)
!774 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !775)
!775 = distinct !DILocation(line: 684, column: 13, scope: !776)
!776 = distinct !DILexicalBlock(scope: !770, file: !6, line: 683, column: 11)
!777 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !775)
!778 = !DILocation(line: 685, column: 21, scope: !776)
!779 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !780)
!780 = distinct !DILocation(line: 686, column: 13, scope: !776)
!781 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !780)
!782 = !DILocation(line: 687, column: 13, scope: !776)
!783 = !DILocation(line: 692, column: 19, scope: !784)
!784 = distinct !DILexicalBlock(scope: !740, file: !6, line: 692, column: 13)
!785 = !DILocation(line: 692, column: 13, scope: !740)
!786 = !DILocation(line: 574, column: 7, scope: !787, inlinedAt: !789)
!787 = distinct !DILexicalBlock(scope: !788, file: !6, line: 574, column: 7)
!788 = distinct !DISubprogram(name: "expr", scope: !6, file: !6, line: 572, type: !737, isLocal: true, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !65)
!789 = distinct !DILocation(line: 694, column: 17, scope: !740)
!790 = !DILocation(line: 693, column: 11, scope: !784)
!791 = !DILocation(line: 574, column: 14, scope: !787, inlinedAt: !789)
!792 = !DILocation(line: 574, column: 11, scope: !787, inlinedAt: !789)
!793 = !DILocation(line: 574, column: 7, scope: !788, inlinedAt: !789)
!794 = !DILocation(line: 575, column: 5, scope: !787, inlinedAt: !789)
!795 = !DILocalVariable(name: "value", scope: !796, file: !6, line: 556, type: !75)
!796 = distinct !DISubprogram(name: "or", scope: !6, file: !6, line: 554, type: !737, isLocal: true, isDefinition: true, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !797)
!797 = !{!795}
!798 = !DILocation(line: 556, column: 8, scope: !796, inlinedAt: !799)
!799 = distinct !DILocation(line: 577, column: 10, scope: !788, inlinedAt: !789)
!800 = !DILocalVariable(name: "value", scope: !801, file: !6, line: 537, type: !75)
!801 = distinct !DISubprogram(name: "and", scope: !6, file: !6, line: 535, type: !737, isLocal: true, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !802)
!802 = !{!800}
!803 = !DILocation(line: 537, column: 8, scope: !801, inlinedAt: !804)
!804 = distinct !DILocation(line: 560, column: 16, scope: !805, inlinedAt: !799)
!805 = distinct !DILexicalBlock(scope: !796, file: !6, line: 559, column: 5)
!806 = !DILocation(line: 541, column: 16, scope: !807, inlinedAt: !804)
!807 = distinct !DILexicalBlock(scope: !801, file: !6, line: 540, column: 5)
!808 = !DILocation(line: 542, column: 14, scope: !809, inlinedAt: !804)
!809 = distinct !DILexicalBlock(scope: !807, file: !6, line: 542, column: 11)
!810 = !DILocation(line: 542, column: 20, scope: !809, inlinedAt: !804)
!811 = !DILocation(line: 542, column: 18, scope: !809, inlinedAt: !804)
!812 = !DILocation(line: 542, column: 25, scope: !809, inlinedAt: !804)
!813 = !DILocation(line: 542, column: 28, scope: !809, inlinedAt: !804)
!814 = !DILocation(line: 542, column: 11, scope: !807, inlinedAt: !804)
!815 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !816)
!816 = distinct !DILocation(line: 544, column: 7, scope: !807, inlinedAt: !804)
!817 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !816)
!818 = !DILocation(line: 541, column: 13, scope: !807, inlinedAt: !804)
!819 = distinct !{!819, !820, !821}
!820 = !DILocation(line: 539, column: 3, scope: !801)
!821 = !DILocation(line: 545, column: 5, scope: !801)
!822 = !DILocation(line: 560, column: 13, scope: !805, inlinedAt: !799)
!823 = !DILocation(line: 561, column: 28, scope: !824, inlinedAt: !799)
!824 = distinct !DILexicalBlock(scope: !805, file: !6, line: 561, column: 11)
!825 = !DILocation(line: 561, column: 11, scope: !805, inlinedAt: !799)
!826 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !827)
!827 = distinct !DILocation(line: 563, column: 7, scope: !805, inlinedAt: !799)
!828 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !827)
!829 = distinct !{!829, !830, !831}
!830 = !DILocation(line: 558, column: 3, scope: !796)
!831 = !DILocation(line: 564, column: 5, scope: !796)
!832 = !DILocation(line: 697, column: 3, scope: !727)
!833 = distinct !DISubprogram(name: "two_arguments", scope: !6, file: !6, line: 607, type: !737, isLocal: true, isDefinition: true, scopeLine: 608, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !834)
!834 = !{!835}
!835 = !DILocalVariable(name: "value", scope: !833, file: !6, line: 609, type: !75)
!836 = !DILocation(line: 611, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !833, file: !6, line: 611, column: 7)
!838 = !DILocation(line: 611, column: 7, scope: !833)
!839 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !840)
!840 = distinct !DILocation(line: 613, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !837, file: !6, line: 612, column: 5)
!842 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !840)
!843 = !DILocation(line: 603, column: 18, scope: !736, inlinedAt: !844)
!844 = distinct !DILocation(line: 614, column: 17, scope: !841)
!845 = !DILocation(line: 603, column: 10, scope: !736, inlinedAt: !844)
!846 = !DILocation(line: 603, column: 25, scope: !736, inlinedAt: !844)
!847 = !DILocation(line: 615, column: 5, scope: !841)
!848 = !DILocation(line: 616, column: 12, scope: !849)
!849 = distinct !DILexicalBlock(scope: !837, file: !6, line: 616, column: 12)
!850 = !DILocation(line: 616, column: 25, scope: !849)
!851 = !DILocation(line: 617, column: 12, scope: !849)
!852 = !DILocation(line: 617, column: 15, scope: !849)
!853 = !DILocation(line: 617, column: 28, scope: !849)
!854 = !DILocation(line: 618, column: 12, scope: !849)
!855 = !DILocation(line: 618, column: 15, scope: !849)
!856 = !DILocation(line: 618, column: 28, scope: !849)
!857 = !DILocation(line: 616, column: 12, scope: !837)
!858 = !DILocalVariable(name: "op", arg: 1, scope: !859, file: !6, line: 582, type: !44)
!859 = distinct !DISubprogram(name: "test_unop", scope: !6, file: !6, line: 582, type: !860, isLocal: true, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !862)
!860 = !DISubroutineType(types: !861)
!861 = !{!75, !44}
!862 = !{!858}
!863 = !DILocation(line: 582, column: 24, scope: !859, inlinedAt: !864)
!864 = distinct !DILocation(line: 620, column: 11, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !6, line: 620, column: 11)
!866 = distinct !DILexicalBlock(scope: !849, file: !6, line: 619, column: 5)
!867 = !DILocation(line: 587, column: 11, scope: !859, inlinedAt: !864)
!868 = !DILocation(line: 587, column: 3, scope: !859, inlinedAt: !864)
!869 = !DILocation(line: 621, column: 17, scope: !865)
!870 = !DILocation(line: 623, column: 28, scope: !865)
!871 = !DILocation(line: 623, column: 69, scope: !865)
!872 = !DILocation(line: 623, column: 74, scope: !865)
!873 = !DILocation(line: 623, column: 62, scope: !865)
!874 = !DILocation(line: 623, column: 9, scope: !865)
!875 = !DILocation(line: 626, column: 5, scope: !849)
!876 = !DILocation(line: 627, column: 3, scope: !833)
!877 = distinct !DISubprogram(name: "three_arguments", scope: !6, file: !6, line: 631, type: !737, isLocal: true, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !878)
!878 = !{!879}
!879 = !DILocalVariable(name: "value", scope: !877, file: !6, line: 633, type: !75)
!880 = !DILocation(line: 635, column: 14, scope: !881)
!881 = distinct !DILexicalBlock(scope: !877, file: !6, line: 635, column: 7)
!882 = !DILocation(line: 635, column: 19, scope: !881)
!883 = !DILocation(line: 635, column: 23, scope: !881)
!884 = !DILocation(line: 635, column: 7, scope: !881)
!885 = !DILocation(line: 635, column: 7, scope: !877)
!886 = !DILocation(line: 636, column: 13, scope: !881)
!887 = !DILocation(line: 636, column: 5, scope: !881)
!888 = !DILocation(line: 637, column: 12, scope: !889)
!889 = distinct !DILexicalBlock(scope: !881, file: !6, line: 637, column: 12)
!890 = !DILocation(line: 637, column: 12, scope: !881)
!891 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !892)
!892 = distinct !DILocation(line: 639, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !889, file: !6, line: 638, column: 5)
!894 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !892)
!895 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !892)
!896 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !892)
!897 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !892)
!898 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !892)
!899 = !DILocation(line: 640, column: 16, scope: !893)
!900 = !DILocation(line: 640, column: 15, scope: !893)
!901 = !DILocation(line: 641, column: 5, scope: !893)
!902 = !DILocation(line: 642, column: 12, scope: !903)
!903 = distinct !DILexicalBlock(scope: !889, file: !6, line: 642, column: 12)
!904 = !DILocation(line: 642, column: 35, scope: !903)
!905 = !DILocation(line: 642, column: 38, scope: !903)
!906 = !DILocation(line: 642, column: 12, scope: !889)
!907 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !908)
!908 = distinct !DILocation(line: 644, column: 7, scope: !909)
!909 = distinct !DILexicalBlock(scope: !903, file: !6, line: 643, column: 5)
!910 = !DILocation(line: 603, column: 10, scope: !736, inlinedAt: !911)
!911 = distinct !DILocation(line: 645, column: 15, scope: !909)
!912 = !DILocation(line: 603, column: 25, scope: !736, inlinedAt: !911)
!913 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !914)
!914 = distinct !DILocation(line: 646, column: 7, scope: !909)
!915 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !914)
!916 = !DILocation(line: 647, column: 5, scope: !909)
!917 = !DILocation(line: 648, column: 12, scope: !918)
!918 = distinct !DILexicalBlock(scope: !903, file: !6, line: 648, column: 12)
!919 = !DILocation(line: 648, column: 40, scope: !918)
!920 = !DILocation(line: 648, column: 43, scope: !918)
!921 = !DILocation(line: 648, column: 12, scope: !903)
!922 = !DILocation(line: 574, column: 14, scope: !787, inlinedAt: !923)
!923 = distinct !DILocation(line: 649, column: 13, scope: !918)
!924 = !DILocation(line: 574, column: 11, scope: !787, inlinedAt: !923)
!925 = !DILocation(line: 574, column: 7, scope: !788, inlinedAt: !923)
!926 = !DILocation(line: 575, column: 5, scope: !787, inlinedAt: !923)
!927 = !DILocation(line: 556, column: 8, scope: !796, inlinedAt: !928)
!928 = distinct !DILocation(line: 577, column: 10, scope: !788, inlinedAt: !923)
!929 = !DILocation(line: 537, column: 8, scope: !801, inlinedAt: !930)
!930 = distinct !DILocation(line: 560, column: 16, scope: !805, inlinedAt: !928)
!931 = !DILocation(line: 541, column: 16, scope: !807, inlinedAt: !930)
!932 = !DILocation(line: 542, column: 14, scope: !809, inlinedAt: !930)
!933 = !DILocation(line: 542, column: 20, scope: !809, inlinedAt: !930)
!934 = !DILocation(line: 542, column: 18, scope: !809, inlinedAt: !930)
!935 = !DILocation(line: 542, column: 25, scope: !809, inlinedAt: !930)
!936 = !DILocation(line: 542, column: 28, scope: !809, inlinedAt: !930)
!937 = !DILocation(line: 542, column: 11, scope: !807, inlinedAt: !930)
!938 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !939)
!939 = distinct !DILocation(line: 544, column: 7, scope: !807, inlinedAt: !930)
!940 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !939)
!941 = !DILocation(line: 541, column: 13, scope: !807, inlinedAt: !930)
!942 = !DILocation(line: 560, column: 13, scope: !805, inlinedAt: !928)
!943 = !DILocation(line: 561, column: 28, scope: !824, inlinedAt: !928)
!944 = !DILocation(line: 561, column: 11, scope: !805, inlinedAt: !928)
!945 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !946)
!946 = distinct !DILocation(line: 563, column: 7, scope: !805, inlinedAt: !928)
!947 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !946)
!948 = !DILocation(line: 651, column: 24, scope: !918)
!949 = !DILocation(line: 651, column: 66, scope: !918)
!950 = !DILocation(line: 651, column: 71, scope: !918)
!951 = !DILocation(line: 651, column: 74, scope: !918)
!952 = !DILocation(line: 651, column: 59, scope: !918)
!953 = !DILocation(line: 651, column: 5, scope: !918)
!954 = !DILocation(line: 652, column: 3, scope: !877)
!955 = distinct !DISubprogram(name: "beyond", scope: !6, file: !6, line: 125, type: !956, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !65)
!956 = !DISubroutineType(types: !957)
!957 = !{null}
!958 = !DILocation(line: 127, column: 22, scope: !955)
!959 = !DILocation(line: 127, column: 61, scope: !955)
!960 = !DILocation(line: 127, column: 66, scope: !955)
!961 = !DILocation(line: 127, column: 71, scope: !955)
!962 = !DILocation(line: 127, column: 54, scope: !955)
!963 = !DILocation(line: 127, column: 3, scope: !955)
!964 = distinct !DISubprogram(name: "term", scope: !6, file: !6, line: 212, type: !737, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !965)
!965 = !{!966, !967, !968}
!966 = !DILocalVariable(name: "value", scope: !964, file: !6, line: 214, type: !75)
!967 = !DILocalVariable(name: "negated", scope: !964, file: !6, line: 215, type: !75)
!968 = !DILocalVariable(name: "nargs", scope: !969, file: !6, line: 230, type: !30)
!969 = distinct !DILexicalBlock(scope: !970, file: !6, line: 229, column: 5)
!970 = distinct !DILexicalBlock(scope: !964, file: !6, line: 228, column: 7)
!971 = !DILocation(line: 215, column: 8, scope: !964)
!972 = !DILocation(line: 218, column: 10, scope: !964)
!973 = !DILocation(line: 218, column: 16, scope: !964)
!974 = !DILocation(line: 218, column: 14, scope: !964)
!975 = !DILocation(line: 218, column: 21, scope: !964)
!976 = !DILocation(line: 218, column: 24, scope: !964)
!977 = !DILocation(line: 218, column: 37, scope: !964)
!978 = !DILocation(line: 218, column: 44, scope: !964)
!979 = !DILocation(line: 218, column: 47, scope: !964)
!980 = !DILocation(line: 218, column: 60, scope: !964)
!981 = !DILocation(line: 218, column: 3, scope: !964)
!982 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !983)
!983 = distinct !DILocation(line: 220, column: 7, scope: !984)
!984 = distinct !DILexicalBlock(scope: !964, file: !6, line: 219, column: 5)
!985 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !983)
!986 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !983)
!987 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !983)
!988 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !983)
!989 = !DILocation(line: 221, column: 17, scope: !984)
!990 = !DILocation(line: 225, column: 5, scope: !991)
!991 = distinct !DILexicalBlock(scope: !964, file: !6, line: 224, column: 7)
!992 = !DILocation(line: 228, column: 20, scope: !970)
!993 = !DILocation(line: 228, column: 27, scope: !970)
!994 = !DILocation(line: 228, column: 30, scope: !970)
!995 = !DILocation(line: 228, column: 43, scope: !970)
!996 = !DILocation(line: 228, column: 7, scope: !964)
!997 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !998)
!998 = distinct !DILocation(line: 232, column: 7, scope: !969)
!999 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !998)
!1000 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !998)
!1001 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !998)
!1002 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !998)
!1003 = !DILocation(line: 230, column: 11, scope: !969)
!1004 = !DILocation(line: 235, column: 16, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !6, line: 234, column: 7)
!1006 = distinct !DILexicalBlock(scope: !969, file: !6, line: 234, column: 7)
!1007 = !DILocation(line: 235, column: 24, scope: !1005)
!1008 = !DILocation(line: 235, column: 31, scope: !1005)
!1009 = !DILocation(line: 235, column: 36, scope: !1005)
!1010 = !DILocation(line: 234, column: 7, scope: !1006)
!1011 = !DILocation(line: 237, column: 19, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1005, file: !6, line: 237, column: 13)
!1013 = !DILocation(line: 237, column: 13, scope: !1005)
!1014 = !DILocation(line: 239, column: 26, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1012, file: !6, line: 238, column: 11)
!1016 = !DILocation(line: 240, column: 13, scope: !1015)
!1017 = !DILocation(line: 236, column: 17, scope: !1005)
!1018 = distinct !{!1018, !1010, !1019}
!1019 = !DILocation(line: 241, column: 11, scope: !1006)
!1020 = !DILocation(line: 243, column: 15, scope: !969)
!1021 = !DILocation(line: 244, column: 11, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !969, file: !6, line: 244, column: 11)
!1023 = !DILocation(line: 244, column: 16, scope: !1022)
!1024 = !DILocation(line: 244, column: 21, scope: !1022)
!1025 = !DILocation(line: 244, column: 11, scope: !969)
!1026 = !DILocation(line: 245, column: 28, scope: !1022)
!1027 = !DILocation(line: 245, column: 46, scope: !1022)
!1028 = !DILocation(line: 245, column: 9, scope: !1022)
!1029 = !DILocation(line: 247, column: 13, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1022, file: !6, line: 247, column: 13)
!1031 = !DILocation(line: 247, column: 26, scope: !1030)
!1032 = !DILocation(line: 247, column: 33, scope: !1030)
!1033 = !DILocation(line: 247, column: 36, scope: !1030)
!1034 = !DILocation(line: 247, column: 13, scope: !1022)
!1035 = !DILocation(line: 248, column: 30, scope: !1030)
!1036 = !DILocation(line: 249, column: 30, scope: !1030)
!1037 = !DILocation(line: 249, column: 60, scope: !1030)
!1038 = !DILocation(line: 249, column: 65, scope: !1030)
!1039 = !DILocation(line: 249, column: 48, scope: !1030)
!1040 = !DILocation(line: 248, column: 11, scope: !1030)
!1041 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 250, column: 7, scope: !969)
!1043 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1042)
!1044 = !DILocation(line: 251, column: 5, scope: !969)
!1045 = !DILocation(line: 254, column: 22, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !970, file: !6, line: 254, column: 12)
!1047 = !DILocation(line: 254, column: 14, scope: !1046)
!1048 = !DILocation(line: 254, column: 28, scope: !1046)
!1049 = !DILocation(line: 254, column: 31, scope: !1046)
!1050 = !DILocation(line: 254, column: 55, scope: !1046)
!1051 = !DILocation(line: 254, column: 74, scope: !1046)
!1052 = !DILocation(line: 254, column: 65, scope: !1046)
!1053 = !DILocation(line: 254, column: 58, scope: !1046)
!1054 = !DILocation(line: 254, column: 12, scope: !970)
!1055 = !DILocation(line: 255, column: 13, scope: !1046)
!1056 = !DILocation(line: 255, column: 5, scope: !1046)
!1057 = !DILocation(line: 256, column: 14, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1046, file: !6, line: 256, column: 12)
!1059 = !DILocation(line: 256, column: 28, scope: !1058)
!1060 = !DILocation(line: 256, column: 47, scope: !1058)
!1061 = !DILocation(line: 256, column: 38, scope: !1058)
!1062 = !DILocation(line: 256, column: 31, scope: !1058)
!1063 = !DILocation(line: 256, column: 12, scope: !1046)
!1064 = !DILocation(line: 257, column: 13, scope: !1058)
!1065 = !DILocation(line: 257, column: 5, scope: !1058)
!1066 = !DILocation(line: 260, column: 25, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1058, file: !6, line: 260, column: 12)
!1068 = !DILocation(line: 260, column: 32, scope: !1067)
!1069 = !DILocation(line: 260, column: 35, scope: !1067)
!1070 = !DILocation(line: 260, column: 48, scope: !1067)
!1071 = !DILocation(line: 260, column: 51, scope: !1067)
!1072 = !DILocation(line: 260, column: 64, scope: !1067)
!1073 = !DILocation(line: 260, column: 12, scope: !1058)
!1074 = !DILocation(line: 582, column: 24, scope: !859, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 262, column: 11, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !6, line: 262, column: 11)
!1077 = distinct !DILexicalBlock(scope: !1067, file: !6, line: 261, column: 5)
!1078 = !DILocation(line: 587, column: 11, scope: !859, inlinedAt: !1075)
!1079 = !DILocation(line: 587, column: 3, scope: !859, inlinedAt: !1075)
!1080 = !DILocation(line: 263, column: 17, scope: !1076)
!1081 = !DILocation(line: 266, column: 5, scope: !1077)
!1082 = !DILocation(line: 265, column: 28, scope: !1076)
!1083 = !DILocation(line: 265, column: 69, scope: !1076)
!1084 = !DILocation(line: 265, column: 74, scope: !1076)
!1085 = !DILocation(line: 265, column: 62, scope: !1076)
!1086 = !DILocation(line: 265, column: 9, scope: !1076)
!1087 = !DILocation(line: 269, column: 29, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1067, file: !6, line: 268, column: 5)
!1089 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 270, column: 7, scope: !1088)
!1091 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1090)
!1092 = !DILocation(line: 273, column: 18, scope: !964)
!1093 = !DILocation(line: 273, column: 3, scope: !964)
!1094 = distinct !DISubprogram(name: "binop", scope: !6, file: !6, line: 184, type: !860, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1095)
!1095 = !{!1096}
!1096 = !DILocalVariable(name: "s", arg: 1, scope: !1094, file: !6, line: 184, type: !44)
!1097 = !DILocation(line: 184, column: 20, scope: !1094)
!1098 = !DILocation(line: 186, column: 12, scope: !1094)
!1099 = !DILocation(line: 186, column: 30, scope: !1094)
!1100 = !DILocation(line: 186, column: 34, scope: !1094)
!1101 = !DILocation(line: 186, column: 52, scope: !1094)
!1102 = !DILocation(line: 186, column: 56, scope: !1094)
!1103 = !DILocation(line: 186, column: 73, scope: !1094)
!1104 = !DILocation(line: 187, column: 12, scope: !1094)
!1105 = !DILocation(line: 187, column: 32, scope: !1094)
!1106 = !DILocation(line: 188, column: 12, scope: !1094)
!1107 = !DILocation(line: 188, column: 30, scope: !1094)
!1108 = !DILocation(line: 188, column: 34, scope: !1094)
!1109 = !DILocation(line: 188, column: 52, scope: !1094)
!1110 = !DILocation(line: 188, column: 56, scope: !1094)
!1111 = !DILocation(line: 188, column: 74, scope: !1094)
!1112 = !DILocation(line: 189, column: 12, scope: !1094)
!1113 = !DILocation(line: 189, column: 30, scope: !1094)
!1114 = !DILocation(line: 189, column: 34, scope: !1094)
!1115 = !DILocation(line: 189, column: 52, scope: !1094)
!1116 = !DILocation(line: 189, column: 56, scope: !1094)
!1117 = !DILocation(line: 189, column: 74, scope: !1094)
!1118 = !DILocation(line: 190, column: 12, scope: !1094)
!1119 = !DILocation(line: 190, column: 30, scope: !1094)
!1120 = !DILocation(line: 190, column: 34, scope: !1094)
!1121 = !DILocation(line: 186, column: 3, scope: !1094)
!1122 = distinct !DISubprogram(name: "binary_operator", scope: !6, file: !6, line: 277, type: !1123, isLocal: true, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1125)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!75, !75}
!1125 = !{!1126, !1127, !1128, !1167, !1168, !1169, !1177, !1178, !1179, !1180, !1181, !1182, !1186, !1187, !1188, !1189, !1192, !1193, !1194, !1195, !1198}
!1126 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !1122, file: !6, line: 277, type: !75)
!1127 = !DILocalVariable(name: "op", scope: !1122, file: !6, line: 279, type: !30)
!1128 = !DILocalVariable(name: "stat_buf", scope: !1122, file: !6, line: 280, type: !1129)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1130, line: 46, size: 1152, elements: !1131)
!1130 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1131 = !{!1132, !1134, !1136, !1138, !1140, !1142, !1144, !1145, !1146, !1149, !1151, !1153, !1161, !1162, !1163}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1129, file: !1130, line: 48, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !524, line: 133, baseType: !117)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1129, file: !1130, line: 53, baseType: !1135, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !524, line: 136, baseType: !117)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1129, file: !1130, line: 61, baseType: !1137, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !524, line: 139, baseType: !117)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1129, file: !1130, line: 62, baseType: !1139, size: 32, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !524, line: 138, baseType: !32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1129, file: !1130, line: 64, baseType: !1141, size: 32, offset: 224)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !524, line: 134, baseType: !32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1129, file: !1130, line: 65, baseType: !1143, size: 32, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !524, line: 135, baseType: !32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1129, file: !1130, line: 67, baseType: !30, size: 32, offset: 288)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1129, file: !1130, line: 69, baseType: !1133, size: 64, offset: 320)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1129, file: !1130, line: 74, baseType: !1147, size: 64, offset: 384)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !524, line: 140, baseType: !1148)
!1148 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1129, file: !1130, line: 78, baseType: !1150, size: 64, offset: 448)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !524, line: 162, baseType: !1148)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1129, file: !1130, line: 80, baseType: !1152, size: 64, offset: 512)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !524, line: 167, baseType: !1148)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1129, file: !1130, line: 91, baseType: !1154, size: 128, offset: 576)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1155, line: 8, size: 128, elements: !1156)
!1155 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1156 = !{!1157, !1159}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1154, file: !1155, line: 10, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !524, line: 148, baseType: !1148)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1154, file: !1155, line: 11, baseType: !1160, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !524, line: 184, baseType: !1148)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1129, file: !1130, line: 92, baseType: !1154, size: 128, offset: 704)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1129, file: !1130, line: 93, baseType: !1154, size: 128, offset: 832)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1129, file: !1130, line: 106, baseType: !1164, size: 192, offset: 960)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1160, size: 192, elements: !1165)
!1165 = !{!1166}
!1166 = !DISubrange(count: 3)
!1167 = !DILocalVariable(name: "stat_spare", scope: !1122, file: !6, line: 280, type: !1129)
!1168 = !DILocalVariable(name: "r_is_l", scope: !1122, file: !6, line: 282, type: !75)
!1169 = !DILocalVariable(name: "lbuf", scope: !1170, file: !6, line: 305, type: !1174)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !6, line: 304, column: 9)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !6, line: 299, column: 11)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !6, line: 297, column: 5)
!1173 = distinct !DILexicalBlock(scope: !1122, file: !6, line: 296, column: 7)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 168, elements: !1175)
!1175 = !{!1176}
!1176 = !DISubrange(count: 21)
!1177 = !DILocalVariable(name: "rbuf", scope: !1170, file: !6, line: 306, type: !1174)
!1178 = !DILocalVariable(name: "l", scope: !1170, file: !6, line: 307, type: !44)
!1179 = !DILocalVariable(name: "r", scope: !1170, file: !6, line: 310, type: !44)
!1180 = !DILocalVariable(name: "cmp", scope: !1170, file: !6, line: 313, type: !30)
!1181 = !DILocalVariable(name: "xe_operator", scope: !1170, file: !6, line: 314, type: !75)
!1182 = !DILocalVariable(name: "lt", scope: !1183, file: !6, line: 330, type: !1154)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !6, line: 328, column: 13)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !6, line: 327, column: 15)
!1185 = distinct !DILexicalBlock(scope: !1172, file: !6, line: 322, column: 9)
!1186 = !DILocalVariable(name: "rt", scope: !1183, file: !6, line: 330, type: !1154)
!1187 = !DILocalVariable(name: "le", scope: !1183, file: !6, line: 331, type: !75)
!1188 = !DILocalVariable(name: "re", scope: !1183, file: !6, line: 331, type: !75)
!1189 = !DILocalVariable(name: "lt", scope: !1190, file: !6, line: 359, type: !1154)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !6, line: 357, column: 13)
!1191 = distinct !DILexicalBlock(scope: !1185, file: !6, line: 356, column: 15)
!1192 = !DILocalVariable(name: "rt", scope: !1190, file: !6, line: 359, type: !1154)
!1193 = !DILocalVariable(name: "le", scope: !1190, file: !6, line: 360, type: !75)
!1194 = !DILocalVariable(name: "re", scope: !1190, file: !6, line: 360, type: !75)
!1195 = !DILocalVariable(name: "value", scope: !1196, file: !6, line: 378, type: !75)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !6, line: 377, column: 5)
!1197 = distinct !DILexicalBlock(scope: !1122, file: !6, line: 375, column: 7)
!1198 = !DILocalVariable(name: "value", scope: !1199, file: !6, line: 385, type: !75)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !6, line: 384, column: 5)
!1200 = distinct !DILexicalBlock(scope: !1122, file: !6, line: 383, column: 7)
!1201 = !DILocation(line: 277, column: 23, scope: !1122)
!1202 = !DILocation(line: 280, column: 3, scope: !1122)
!1203 = !DILocation(line: 284, column: 7, scope: !1122)
!1204 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 285, column: 5, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1122, file: !6, line: 284, column: 7)
!1207 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1205)
!1208 = !DILocation(line: 285, column: 5, scope: !1206)
!1209 = !DILocation(line: 286, column: 8, scope: !1122)
!1210 = !DILocation(line: 286, column: 12, scope: !1122)
!1211 = !DILocation(line: 279, column: 7, scope: !1122)
!1212 = !DILocation(line: 288, column: 13, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1122, file: !6, line: 288, column: 7)
!1214 = !DILocation(line: 288, column: 18, scope: !1213)
!1215 = !DILocation(line: 288, column: 11, scope: !1213)
!1216 = !DILocation(line: 288, column: 23, scope: !1213)
!1217 = !DILocation(line: 288, column: 26, scope: !1213)
!1218 = !DILocation(line: 288, column: 7, scope: !1122)
!1219 = !DILocation(line: 282, column: 8, scope: !1122)
!1220 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 291, column: 7, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1213, file: !6, line: 289, column: 5)
!1223 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1221)
!1224 = !DILocation(line: 292, column: 5, scope: !1222)
!1225 = !DILocation(line: 296, column: 7, scope: !1173)
!1226 = !DILocation(line: 296, column: 7, scope: !1122)
!1227 = !DILocation(line: 299, column: 14, scope: !1171)
!1228 = !DILocation(line: 299, column: 33, scope: !1171)
!1229 = !DILocation(line: 300, column: 17, scope: !1171)
!1230 = !DILocation(line: 300, column: 36, scope: !1171)
!1231 = !DILocation(line: 301, column: 38, scope: !1171)
!1232 = !DILocation(line: 301, column: 50, scope: !1171)
!1233 = !DILocation(line: 302, column: 12, scope: !1171)
!1234 = !DILocation(line: 302, column: 38, scope: !1171)
!1235 = !DILocation(line: 302, column: 50, scope: !1171)
!1236 = !DILocation(line: 303, column: 11, scope: !1171)
!1237 = !DILocation(line: 303, column: 15, scope: !1171)
!1238 = !DILocation(line: 299, column: 11, scope: !1172)
!1239 = !DILocation(line: 305, column: 11, scope: !1170)
!1240 = !DILocation(line: 305, column: 16, scope: !1170)
!1241 = !DILocation(line: 306, column: 11, scope: !1170)
!1242 = !DILocation(line: 306, column: 16, scope: !1170)
!1243 = !DILocation(line: 307, column: 28, scope: !1170)
!1244 = !DILocation(line: 308, column: 41, scope: !1170)
!1245 = !DILocation(line: 308, column: 30, scope: !1170)
!1246 = !DILocation(line: 309, column: 30, scope: !1170)
!1247 = !DILocation(line: 307, column: 23, scope: !1170)
!1248 = !DILocation(line: 310, column: 28, scope: !1170)
!1249 = !DILocation(line: 311, column: 57, scope: !1170)
!1250 = !DILocation(line: 311, column: 49, scope: !1170)
!1251 = !DILocation(line: 311, column: 41, scope: !1170)
!1252 = !DILocation(line: 311, column: 30, scope: !1170)
!1253 = !DILocation(line: 312, column: 48, scope: !1170)
!1254 = !DILocation(line: 312, column: 40, scope: !1170)
!1255 = !DILocation(line: 312, column: 30, scope: !1170)
!1256 = !DILocation(line: 310, column: 23, scope: !1170)
!1257 = !DILocation(line: 313, column: 21, scope: !1170)
!1258 = !DILocation(line: 313, column: 15, scope: !1170)
!1259 = !DILocation(line: 314, column: 31, scope: !1170)
!1260 = !DILocation(line: 314, column: 43, scope: !1170)
!1261 = !DILocation(line: 315, column: 15, scope: !1170)
!1262 = !DILocation(line: 316, column: 19, scope: !1170)
!1263 = !DILocation(line: 316, column: 46, scope: !1170)
!1264 = !DILocation(line: 316, column: 44, scope: !1170)
!1265 = !DILocation(line: 317, column: 48, scope: !1170)
!1266 = !DILocation(line: 317, column: 46, scope: !1170)
!1267 = !DILocation(line: 317, column: 21, scope: !1170)
!1268 = !DILocation(line: 318, column: 26, scope: !1170)
!1269 = !DILocation(line: 318, column: 32, scope: !1170)
!1270 = !DILocation(line: 319, column: 9, scope: !1171)
!1271 = !DILocation(line: 321, column: 15, scope: !1172)
!1272 = !DILocation(line: 321, column: 7, scope: !1172)
!1273 = !DILocation(line: 327, column: 15, scope: !1184)
!1274 = !DILocation(line: 327, column: 27, scope: !1184)
!1275 = !DILocation(line: 327, column: 34, scope: !1184)
!1276 = !DILocation(line: 327, column: 38, scope: !1184)
!1277 = !DILocation(line: 327, column: 15, scope: !1185)
!1278 = !DILocation(line: 332, column: 19, scope: !1183)
!1279 = !DILocation(line: 333, column: 26, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1183, file: !6, line: 333, column: 19)
!1281 = !DILocation(line: 334, column: 36, scope: !1280)
!1282 = !DILocation(line: 334, column: 17, scope: !1280)
!1283 = !DILocation(line: 335, column: 31, scope: !1183)
!1284 = !DILocation(line: 330, column: 31, scope: !1183)
!1285 = !DILocalVariable(name: "filename", arg: 1, scope: !1286, file: !6, line: 169, type: !44)
!1286 = distinct !DISubprogram(name: "get_mtime", scope: !6, file: !6, line: 169, type: !1287, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1290)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!75, !44, !1289}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1290 = !{!1285, !1291, !1292, !1293}
!1291 = !DILocalVariable(name: "mtime", arg: 2, scope: !1286, file: !6, line: 169, type: !1289)
!1292 = !DILocalVariable(name: "finfo", scope: !1286, file: !6, line: 171, type: !1129)
!1293 = !DILocalVariable(name: "ok", scope: !1286, file: !6, line: 172, type: !75)
!1294 = !DILocation(line: 169, column: 24, scope: !1286, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 335, column: 20, scope: !1183)
!1296 = !DILocation(line: 169, column: 51, scope: !1286, inlinedAt: !1295)
!1297 = !DILocation(line: 171, column: 3, scope: !1286, inlinedAt: !1295)
!1298 = !DILocation(line: 171, column: 15, scope: !1286, inlinedAt: !1295)
!1299 = !DILocalVariable(name: "__path", arg: 1, scope: !1300, file: !1301, line: 449, type: !44)
!1300 = distinct !DISubprogram(name: "stat", scope: !1301, file: !1301, line: 449, type: !1302, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1305)
!1301 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!30, !44, !1304}
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1305 = !{!1299, !1306}
!1306 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1300, file: !1301, line: 449, type: !1304)
!1307 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 172, column: 14, scope: !1286, inlinedAt: !1295)
!1309 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1308)
!1310 = !DILocation(line: 172, column: 38, scope: !1286, inlinedAt: !1295)
!1311 = !DILocalVariable(name: "st", arg: 1, scope: !1312, file: !1313, line: 140, type: !1316)
!1312 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1313, file: !1313, line: 140, type: !1314, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1318)
!1313 = !DIFile(filename: "./lib/stat-time.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!1154, !1316}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1129)
!1318 = !{!1311}
!1319 = !DILocation(line: 140, column: 36, scope: !1312, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 178, column: 14, scope: !1321, inlinedAt: !1295)
!1321 = distinct !DILexicalBlock(scope: !1286, file: !6, line: 177, column: 7)
!1322 = !DILocation(line: 143, column: 10, scope: !1312, inlinedAt: !1320)
!1323 = !DILocation(line: 180, column: 1, scope: !1286, inlinedAt: !1295)
!1324 = !DILocation(line: 336, column: 31, scope: !1183)
!1325 = !DILocation(line: 336, column: 39, scope: !1183)
!1326 = !DILocation(line: 330, column: 35, scope: !1183)
!1327 = !DILocation(line: 169, column: 24, scope: !1286, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 336, column: 20, scope: !1183)
!1329 = !DILocation(line: 169, column: 51, scope: !1286, inlinedAt: !1328)
!1330 = !DILocation(line: 171, column: 3, scope: !1286, inlinedAt: !1328)
!1331 = !DILocation(line: 171, column: 15, scope: !1286, inlinedAt: !1328)
!1332 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 172, column: 14, scope: !1286, inlinedAt: !1328)
!1334 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1333)
!1335 = !DILocation(line: 172, column: 38, scope: !1286, inlinedAt: !1328)
!1336 = !DILocation(line: 177, column: 7, scope: !1286, inlinedAt: !1328)
!1337 = !DILocation(line: 180, column: 1, scope: !1286, inlinedAt: !1328)
!1338 = !DILocation(line: 337, column: 25, scope: !1183)
!1339 = !DILocation(line: 140, column: 36, scope: !1312, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 178, column: 14, scope: !1321, inlinedAt: !1328)
!1341 = !DILocation(line: 143, column: 10, scope: !1312, inlinedAt: !1340)
!1342 = !DILocation(line: 80, column: 20, scope: !1343, inlinedAt: !1350)
!1343 = distinct !DISubprogram(name: "timespec_cmp", scope: !1344, file: !1344, line: 78, type: !1345, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1347)
!1344 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!30, !1154, !1154}
!1347 = !{!1348, !1349}
!1348 = !DILocalVariable(name: "a", arg: 1, scope: !1343, file: !1344, line: 78, type: !1154)
!1349 = !DILocalVariable(name: "b", arg: 2, scope: !1343, file: !1344, line: 78, type: !1154)
!1350 = distinct !DILocation(line: 337, column: 36, scope: !1183)
!1351 = !DIExpression(DW_OP_LLVM_fragment, 0, 64)
!1352 = !DILocation(line: 78, column: 31, scope: !1343, inlinedAt: !1350)
!1353 = !DIExpression(DW_OP_LLVM_fragment, 64, 64)
!1354 = !DILocation(line: 78, column: 50, scope: !1343, inlinedAt: !1350)
!1355 = !DILocation(line: 81, column: 22, scope: !1343, inlinedAt: !1350)
!1356 = !DILocation(line: 81, column: 13, scope: !1343, inlinedAt: !1350)
!1357 = !DILocation(line: 82, column: 30, scope: !1343, inlinedAt: !1350)
!1358 = !DILocation(line: 82, column: 13, scope: !1343, inlinedAt: !1350)
!1359 = !DILocation(line: 342, column: 15, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1185, file: !6, line: 342, column: 15)
!1361 = !DILocation(line: 342, column: 27, scope: !1360)
!1362 = !DILocation(line: 342, column: 34, scope: !1360)
!1363 = !DILocation(line: 342, column: 38, scope: !1360)
!1364 = !DILocation(line: 342, column: 15, scope: !1185)
!1365 = !DILocation(line: 345, column: 19, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1360, file: !6, line: 343, column: 13)
!1367 = !DILocation(line: 346, column: 26, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1366, file: !6, line: 346, column: 19)
!1369 = !DILocation(line: 347, column: 36, scope: !1368)
!1370 = !DILocation(line: 347, column: 17, scope: !1368)
!1371 = !DILocation(line: 348, column: 29, scope: !1366)
!1372 = !DILocation(line: 280, column: 15, scope: !1122)
!1373 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 348, column: 23, scope: !1366)
!1375 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1374)
!1376 = !DILocation(line: 348, column: 54, scope: !1366)
!1377 = !DILocation(line: 349, column: 23, scope: !1366)
!1378 = !DILocation(line: 349, column: 32, scope: !1366)
!1379 = !DILocation(line: 349, column: 40, scope: !1366)
!1380 = !DILocation(line: 280, column: 25, scope: !1122)
!1381 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 349, column: 26, scope: !1366)
!1383 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1382)
!1384 = !DILocation(line: 349, column: 59, scope: !1366)
!1385 = !DILocation(line: 350, column: 23, scope: !1366)
!1386 = !DILocation(line: 350, column: 35, scope: !1366)
!1387 = !{!1388, !1389, i64 0}
!1388 = !{!"stat", !1389, i64 0, !1389, i64 8, !1389, i64 16, !653, i64 24, !653, i64 28, !653, i64 32, !653, i64 36, !1389, i64 40, !1389, i64 48, !1389, i64 56, !1389, i64 64, !1390, i64 72, !1390, i64 88, !1390, i64 104, !595, i64 120}
!1389 = !{!"long", !595, i64 0}
!1390 = !{!"timespec", !1389, i64 0, !1389, i64 8}
!1391 = !DILocation(line: 350, column: 56, scope: !1366)
!1392 = !DILocation(line: 350, column: 42, scope: !1366)
!1393 = !DILocation(line: 351, column: 23, scope: !1366)
!1394 = !DILocation(line: 351, column: 35, scope: !1366)
!1395 = !{!1388, !1389, i64 8}
!1396 = !DILocation(line: 351, column: 56, scope: !1366)
!1397 = !DILocation(line: 351, column: 42, scope: !1366)
!1398 = !DILocation(line: 356, column: 22, scope: !1191)
!1399 = !DILocation(line: 356, column: 19, scope: !1191)
!1400 = !DILocation(line: 356, column: 34, scope: !1191)
!1401 = !DILocation(line: 356, column: 47, scope: !1191)
!1402 = !DILocation(line: 356, column: 44, scope: !1191)
!1403 = !DILocation(line: 356, column: 15, scope: !1185)
!1404 = !DILocation(line: 361, column: 19, scope: !1190)
!1405 = !DILocation(line: 362, column: 26, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1190, file: !6, line: 362, column: 19)
!1407 = !DILocation(line: 363, column: 36, scope: !1406)
!1408 = !DILocation(line: 363, column: 17, scope: !1406)
!1409 = !DILocation(line: 364, column: 31, scope: !1190)
!1410 = !DILocation(line: 359, column: 31, scope: !1190)
!1411 = !DILocation(line: 169, column: 24, scope: !1286, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 364, column: 20, scope: !1190)
!1413 = !DILocation(line: 169, column: 51, scope: !1286, inlinedAt: !1412)
!1414 = !DILocation(line: 171, column: 3, scope: !1286, inlinedAt: !1412)
!1415 = !DILocation(line: 171, column: 15, scope: !1286, inlinedAt: !1412)
!1416 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 172, column: 14, scope: !1286, inlinedAt: !1412)
!1418 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1417)
!1419 = !DILocation(line: 140, column: 36, scope: !1312, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 178, column: 14, scope: !1321, inlinedAt: !1412)
!1421 = !DILocation(line: 143, column: 10, scope: !1312, inlinedAt: !1420)
!1422 = !DILocation(line: 180, column: 1, scope: !1286, inlinedAt: !1412)
!1423 = !DILocation(line: 365, column: 31, scope: !1190)
!1424 = !DILocation(line: 365, column: 39, scope: !1190)
!1425 = !DILocation(line: 359, column: 35, scope: !1190)
!1426 = !DILocation(line: 169, column: 24, scope: !1286, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 365, column: 20, scope: !1190)
!1428 = !DILocation(line: 169, column: 51, scope: !1286, inlinedAt: !1427)
!1429 = !DILocation(line: 171, column: 3, scope: !1286, inlinedAt: !1427)
!1430 = !DILocation(line: 171, column: 15, scope: !1286, inlinedAt: !1427)
!1431 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 172, column: 14, scope: !1286, inlinedAt: !1427)
!1433 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1432)
!1434 = !DILocation(line: 172, column: 38, scope: !1286, inlinedAt: !1427)
!1435 = !DILocation(line: 177, column: 7, scope: !1286, inlinedAt: !1427)
!1436 = !DILocation(line: 180, column: 1, scope: !1286, inlinedAt: !1427)
!1437 = !DILocation(line: 366, column: 25, scope: !1190)
!1438 = !DILocation(line: 172, column: 38, scope: !1286, inlinedAt: !1412)
!1439 = !DILocation(line: 140, column: 36, scope: !1312, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 178, column: 14, scope: !1321, inlinedAt: !1427)
!1441 = !DILocation(line: 143, column: 10, scope: !1312, inlinedAt: !1440)
!1442 = !DILocation(line: 80, column: 20, scope: !1343, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 366, column: 36, scope: !1190)
!1444 = !DILocation(line: 78, column: 31, scope: !1343, inlinedAt: !1443)
!1445 = !DILocation(line: 78, column: 50, scope: !1343, inlinedAt: !1443)
!1446 = !DILocation(line: 81, column: 22, scope: !1343, inlinedAt: !1443)
!1447 = !DILocation(line: 81, column: 13, scope: !1343, inlinedAt: !1443)
!1448 = !DILocation(line: 82, column: 30, scope: !1343, inlinedAt: !1443)
!1449 = !DILocation(line: 82, column: 13, scope: !1343, inlinedAt: !1443)
!1450 = !DILocation(line: 372, column: 26, scope: !1172)
!1451 = !DILocation(line: 372, column: 67, scope: !1172)
!1452 = !DILocation(line: 372, column: 60, scope: !1172)
!1453 = !DILocation(line: 372, column: 7, scope: !1172)
!1454 = !DILocation(line: 376, column: 12, scope: !1197)
!1455 = !DILocation(line: 376, column: 24, scope: !1197)
!1456 = !DILocation(line: 376, column: 53, scope: !1197)
!1457 = !DILocation(line: 375, column: 7, scope: !1122)
!1458 = !DILocation(line: 378, column: 20, scope: !1196)
!1459 = !DILocation(line: 379, column: 11, scope: !1196)
!1460 = !DILocation(line: 383, column: 7, scope: !1200)
!1461 = !DILocation(line: 383, column: 7, scope: !1122)
!1462 = !DILocation(line: 385, column: 21, scope: !1199)
!1463 = !DILocation(line: 386, column: 11, scope: !1199)
!1464 = !DILocation(line: 391, column: 3, scope: !1122)
!1465 = !DILocation(line: 392, column: 1, scope: !1122)
!1466 = distinct !DISubprogram(name: "unary_operator", scope: !6, file: !6, line: 395, type: !737, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1467)
!1467 = !{!1468, !1469, !1474, !1475, !1478, !1479, !1481}
!1468 = !DILocalVariable(name: "stat_buf", scope: !1466, file: !6, line: 397, type: !1129)
!1469 = !DILocalVariable(name: "euid", scope: !1470, file: !6, line: 432, type: !1472)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !6, line: 427, column: 7)
!1471 = distinct !DILexicalBlock(scope: !1466, file: !6, line: 400, column: 5)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1473, line: 80, baseType: !1141)
!1473 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1474 = !DILocalVariable(name: "NO_UID", scope: !1470, file: !6, line: 433, type: !1472)
!1475 = !DILocalVariable(name: "egid", scope: !1476, file: !6, line: 443, type: !1477)
!1476 = distinct !DILexicalBlock(scope: !1471, file: !6, line: 438, column: 7)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1473, line: 65, baseType: !1143)
!1478 = !DILocalVariable(name: "NO_GID", scope: !1476, file: !6, line: 444, type: !1477)
!1479 = !DILocalVariable(name: "fd", scope: !1480, file: !6, line: 510, type: !1148)
!1480 = distinct !DILexicalBlock(scope: !1471, file: !6, line: 509, column: 7)
!1481 = !DILocalVariable(name: "arg", scope: !1480, file: !6, line: 511, type: !44)
!1482 = !DILocation(line: 397, column: 3, scope: !1466)
!1483 = !DILocation(line: 399, column: 11, scope: !1466)
!1484 = !DILocation(line: 399, column: 16, scope: !1466)
!1485 = !DILocation(line: 399, column: 3, scope: !1466)
!1486 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1487)
!1487 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1489)
!1488 = distinct !DISubprogram(name: "unary_advance", scope: !6, file: !6, line: 114, type: !956, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !65)
!1489 = distinct !DILocation(line: 411, column: 7, scope: !1471)
!1490 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1487)
!1491 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1487)
!1492 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1487)
!1493 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1487)
!1494 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1487)
!1495 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1489)
!1496 = !DILocation(line: 412, column: 20, scope: !1471)
!1497 = !DILocation(line: 397, column: 15, scope: !1466)
!1498 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 412, column: 14, scope: !1471)
!1500 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1499)
!1501 = !DILocation(line: 412, column: 46, scope: !1471)
!1502 = !DILocation(line: 412, column: 7, scope: !1471)
!1503 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 415, column: 7, scope: !1471)
!1506 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1504)
!1507 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1504)
!1508 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1504)
!1509 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1504)
!1510 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1504)
!1511 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1505)
!1512 = !DILocation(line: 416, column: 26, scope: !1471)
!1513 = !DILocation(line: 416, column: 14, scope: !1471)
!1514 = !DILocation(line: 416, column: 47, scope: !1471)
!1515 = !DILocation(line: 416, column: 7, scope: !1471)
!1516 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 419, column: 7, scope: !1471)
!1519 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1517)
!1520 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1517)
!1521 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1517)
!1522 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1517)
!1523 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1517)
!1524 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1518)
!1525 = !DILocation(line: 420, column: 26, scope: !1471)
!1526 = !DILocation(line: 420, column: 14, scope: !1471)
!1527 = !DILocation(line: 420, column: 47, scope: !1471)
!1528 = !DILocation(line: 420, column: 7, scope: !1471)
!1529 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 423, column: 7, scope: !1471)
!1532 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1530)
!1533 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1530)
!1534 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1530)
!1535 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1530)
!1536 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1530)
!1537 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1531)
!1538 = !DILocation(line: 424, column: 26, scope: !1471)
!1539 = !DILocation(line: 424, column: 14, scope: !1471)
!1540 = !DILocation(line: 424, column: 47, scope: !1471)
!1541 = !DILocation(line: 424, column: 7, scope: !1471)
!1542 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1544)
!1544 = distinct !DILocation(line: 428, column: 9, scope: !1470)
!1545 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1543)
!1546 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1543)
!1547 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1543)
!1548 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1543)
!1549 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1543)
!1550 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1544)
!1551 = !DILocation(line: 429, column: 19, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 429, column: 13)
!1553 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 429, column: 13, scope: !1552)
!1555 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1554)
!1556 = !DILocation(line: 429, column: 45, scope: !1552)
!1557 = !DILocation(line: 429, column: 13, scope: !1470)
!1558 = !DILocation(line: 431, column: 9, scope: !1470)
!1559 = !DILocation(line: 431, column: 15, scope: !1470)
!1560 = !DILocation(line: 432, column: 22, scope: !1470)
!1561 = !DILocation(line: 432, column: 15, scope: !1470)
!1562 = !DILocation(line: 433, column: 15, scope: !1470)
!1563 = !DILocation(line: 434, column: 24, scope: !1470)
!1564 = !DILocation(line: 434, column: 34, scope: !1470)
!1565 = !DILocation(line: 434, column: 37, scope: !1470)
!1566 = !DILocation(line: 434, column: 44, scope: !1470)
!1567 = !DILocation(line: 434, column: 64, scope: !1470)
!1568 = !{!1388, !653, i64 28}
!1569 = !DILocation(line: 434, column: 52, scope: !1470)
!1570 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 439, column: 9, scope: !1476)
!1573 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1571)
!1574 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1571)
!1575 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1571)
!1576 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1571)
!1577 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1571)
!1578 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1572)
!1579 = !DILocation(line: 440, column: 19, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1476, file: !6, line: 440, column: 13)
!1581 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 440, column: 13, scope: !1580)
!1583 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1582)
!1584 = !DILocation(line: 440, column: 45, scope: !1580)
!1585 = !DILocation(line: 440, column: 13, scope: !1476)
!1586 = !DILocation(line: 442, column: 9, scope: !1476)
!1587 = !DILocation(line: 442, column: 15, scope: !1476)
!1588 = !DILocation(line: 443, column: 22, scope: !1476)
!1589 = !DILocation(line: 443, column: 15, scope: !1476)
!1590 = !DILocation(line: 444, column: 15, scope: !1476)
!1591 = !DILocation(line: 445, column: 24, scope: !1476)
!1592 = !DILocation(line: 445, column: 34, scope: !1476)
!1593 = !DILocation(line: 445, column: 37, scope: !1476)
!1594 = !DILocation(line: 445, column: 44, scope: !1476)
!1595 = !DILocation(line: 445, column: 64, scope: !1476)
!1596 = !{!1388, !653, i64 32}
!1597 = !DILocation(line: 445, column: 52, scope: !1476)
!1598 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 449, column: 7, scope: !1471)
!1601 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1599)
!1602 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1599)
!1603 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1599)
!1604 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1599)
!1605 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1599)
!1606 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1600)
!1607 = !DILocation(line: 452, column: 21, scope: !1471)
!1608 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 452, column: 15, scope: !1471)
!1610 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1609)
!1611 = !DILocation(line: 452, column: 47, scope: !1471)
!1612 = !DILocation(line: 453, column: 15, scope: !1471)
!1613 = !DILocation(line: 453, column: 18, scope: !1471)
!1614 = !{!1388, !653, i64 24}
!1615 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 456, column: 7, scope: !1471)
!1618 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1616)
!1619 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1616)
!1620 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1616)
!1621 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1616)
!1622 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1616)
!1623 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1617)
!1624 = !DILocation(line: 457, column: 21, scope: !1471)
!1625 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 457, column: 15, scope: !1471)
!1627 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1626)
!1628 = !DILocation(line: 457, column: 47, scope: !1471)
!1629 = !DILocation(line: 458, column: 15, scope: !1471)
!1630 = !DILocation(line: 458, column: 18, scope: !1471)
!1631 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 461, column: 7, scope: !1471)
!1634 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1632)
!1635 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1632)
!1636 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1632)
!1637 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1632)
!1638 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1632)
!1639 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1633)
!1640 = !DILocation(line: 462, column: 21, scope: !1471)
!1641 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 462, column: 15, scope: !1471)
!1643 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1642)
!1644 = !DILocation(line: 462, column: 47, scope: !1471)
!1645 = !DILocation(line: 463, column: 31, scope: !1471)
!1646 = !DILocation(line: 463, column: 20, scope: !1471)
!1647 = !DILocation(line: 463, column: 15, scope: !1471)
!1648 = !DILocation(line: 462, column: 7, scope: !1471)
!1649 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 466, column: 7, scope: !1471)
!1652 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1650)
!1653 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1650)
!1654 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1650)
!1655 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1650)
!1656 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1650)
!1657 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1651)
!1658 = !DILocation(line: 467, column: 21, scope: !1471)
!1659 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 467, column: 15, scope: !1471)
!1661 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1660)
!1662 = !DILocation(line: 467, column: 47, scope: !1471)
!1663 = !DILocation(line: 468, column: 15, scope: !1471)
!1664 = !DILocation(line: 468, column: 18, scope: !1471)
!1665 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 471, column: 7, scope: !1471)
!1668 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1666)
!1669 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1666)
!1670 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1666)
!1671 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1666)
!1672 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1666)
!1673 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1667)
!1674 = !DILocation(line: 472, column: 21, scope: !1471)
!1675 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 472, column: 15, scope: !1471)
!1677 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1676)
!1678 = !DILocation(line: 472, column: 47, scope: !1471)
!1679 = !DILocation(line: 473, column: 15, scope: !1471)
!1680 = !DILocation(line: 473, column: 18, scope: !1471)
!1681 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 476, column: 7, scope: !1471)
!1684 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1682)
!1685 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1682)
!1686 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1682)
!1687 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1682)
!1688 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1682)
!1689 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1683)
!1690 = !DILocation(line: 477, column: 21, scope: !1471)
!1691 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 477, column: 15, scope: !1471)
!1693 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1692)
!1694 = !DILocation(line: 477, column: 47, scope: !1471)
!1695 = !DILocation(line: 478, column: 15, scope: !1471)
!1696 = !DILocation(line: 478, column: 18, scope: !1471)
!1697 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 481, column: 7, scope: !1471)
!1700 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1698)
!1701 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1698)
!1702 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1698)
!1703 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1698)
!1704 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1698)
!1705 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1699)
!1706 = !DILocation(line: 482, column: 21, scope: !1471)
!1707 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 482, column: 15, scope: !1471)
!1709 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1708)
!1710 = !DILocation(line: 482, column: 47, scope: !1471)
!1711 = !DILocation(line: 483, column: 15, scope: !1471)
!1712 = !DILocation(line: 483, column: 18, scope: !1471)
!1713 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 489, column: 7, scope: !1471)
!1716 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1714)
!1717 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1714)
!1718 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1714)
!1719 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1714)
!1720 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1714)
!1721 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1715)
!1722 = !DILocation(line: 490, column: 22, scope: !1471)
!1723 = !DILocalVariable(name: "__path", arg: 1, scope: !1724, file: !1301, line: 456, type: !44)
!1724 = distinct !DISubprogram(name: "lstat", scope: !1301, file: !1301, line: 456, type: !1302, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1725)
!1725 = !{!1723, !1726}
!1726 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1724, file: !1301, line: 456, type: !1304)
!1727 = !DILocation(line: 456, column: 1, scope: !1724, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 490, column: 15, scope: !1471)
!1729 = !DILocation(line: 458, column: 10, scope: !1724, inlinedAt: !1728)
!1730 = !DILocation(line: 490, column: 48, scope: !1471)
!1731 = !DILocation(line: 491, column: 15, scope: !1471)
!1732 = !DILocation(line: 491, column: 18, scope: !1471)
!1733 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 494, column: 7, scope: !1471)
!1736 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1734)
!1737 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1734)
!1738 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1734)
!1739 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1734)
!1740 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1734)
!1741 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1735)
!1742 = !DILocation(line: 495, column: 21, scope: !1471)
!1743 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 495, column: 15, scope: !1471)
!1745 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1744)
!1746 = !DILocation(line: 495, column: 47, scope: !1471)
!1747 = !DILocation(line: 496, column: 15, scope: !1471)
!1748 = !DILocation(line: 496, column: 28, scope: !1471)
!1749 = !DILocation(line: 496, column: 36, scope: !1471)
!1750 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 499, column: 7, scope: !1471)
!1753 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1751)
!1754 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1751)
!1755 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1751)
!1756 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1751)
!1757 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1751)
!1758 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1752)
!1759 = !DILocation(line: 500, column: 21, scope: !1471)
!1760 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 500, column: 15, scope: !1471)
!1762 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1761)
!1763 = !DILocation(line: 500, column: 47, scope: !1471)
!1764 = !DILocation(line: 501, column: 15, scope: !1471)
!1765 = !DILocation(line: 501, column: 28, scope: !1471)
!1766 = !DILocation(line: 501, column: 36, scope: !1471)
!1767 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 504, column: 7, scope: !1471)
!1770 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1768)
!1771 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1768)
!1772 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1768)
!1773 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1768)
!1774 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1768)
!1775 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1769)
!1776 = !DILocation(line: 505, column: 21, scope: !1471)
!1777 = !DILocation(line: 449, column: 1, scope: !1300, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 505, column: 15, scope: !1471)
!1779 = !DILocation(line: 451, column: 10, scope: !1300, inlinedAt: !1778)
!1780 = !DILocation(line: 505, column: 47, scope: !1471)
!1781 = !DILocation(line: 506, column: 15, scope: !1471)
!1782 = !DILocation(line: 506, column: 28, scope: !1471)
!1783 = !DILocation(line: 506, column: 36, scope: !1471)
!1784 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 512, column: 9, scope: !1480)
!1787 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1785)
!1788 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1785)
!1789 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1785)
!1790 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1785)
!1791 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1785)
!1792 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1786)
!1793 = !DILocation(line: 513, column: 25, scope: !1480)
!1794 = !DILocation(line: 513, column: 15, scope: !1480)
!1795 = !DILocation(line: 511, column: 21, scope: !1480)
!1796 = !DILocation(line: 514, column: 9, scope: !1480)
!1797 = !DILocation(line: 514, column: 15, scope: !1480)
!1798 = !DILocation(line: 515, column: 14, scope: !1480)
!1799 = !DILocation(line: 510, column: 18, scope: !1480)
!1800 = !DILocation(line: 516, column: 17, scope: !1480)
!1801 = !DILocation(line: 516, column: 23, scope: !1480)
!1802 = !DILocation(line: 516, column: 33, scope: !1480)
!1803 = !DILocation(line: 516, column: 72, scope: !1480)
!1804 = !DILocation(line: 516, column: 64, scope: !1480)
!1805 = !DILocation(line: 516, column: 61, scope: !1480)
!1806 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 520, column: 7, scope: !1471)
!1809 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1807)
!1810 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1807)
!1811 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1807)
!1812 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1807)
!1813 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1807)
!1814 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1808)
!1815 = !DILocation(line: 521, column: 14, scope: !1471)
!1816 = !DILocation(line: 521, column: 31, scope: !1471)
!1817 = !DILocation(line: 521, column: 7, scope: !1471)
!1818 = !DILocation(line: 105, column: 15, scope: !753, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 524, column: 7, scope: !1471)
!1821 = !DILocation(line: 107, column: 3, scope: !753, inlinedAt: !1819)
!1822 = !DILocation(line: 109, column: 19, scope: !762, inlinedAt: !1819)
!1823 = !DILocation(line: 109, column: 16, scope: !762, inlinedAt: !1819)
!1824 = !DILocation(line: 109, column: 9, scope: !762, inlinedAt: !1819)
!1825 = !DILocation(line: 110, column: 5, scope: !762, inlinedAt: !1819)
!1826 = !DILocation(line: 117, column: 3, scope: !1488, inlinedAt: !1820)
!1827 = !DILocation(line: 525, column: 14, scope: !1471)
!1828 = !DILocation(line: 525, column: 31, scope: !1471)
!1829 = !DILocation(line: 525, column: 7, scope: !1471)
!1830 = !DILocation(line: 527, column: 1, scope: !1466)
!1831 = distinct !DISubprogram(name: "find_int", scope: !6, file: !6, line: 134, type: !1832, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1834)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!44, !44}
!1834 = !{!1835, !1836, !1837}
!1835 = !DILocalVariable(name: "string", arg: 1, scope: !1831, file: !6, line: 134, type: !44)
!1836 = !DILocalVariable(name: "p", scope: !1831, file: !6, line: 136, type: !44)
!1837 = !DILocalVariable(name: "number_start", scope: !1831, file: !6, line: 137, type: !44)
!1838 = !DILocation(line: 134, column: 23, scope: !1831)
!1839 = !DILocation(line: 136, column: 15, scope: !1831)
!1840 = !DILocation(line: 139, column: 20, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !6, line: 139, column: 3)
!1842 = distinct !DILexicalBlock(scope: !1831, file: !6, line: 139, column: 3)
!1843 = !DILocation(line: 139, column: 8, scope: !1842)
!1844 = !{!1845, !1845, i64 0}
!1845 = !{!"short", !595, i64 0}
!1846 = !DILocation(line: 139, column: 3, scope: !1842)
!1847 = !DILocation(line: 139, column: 46, scope: !1841)
!1848 = distinct !{!1848, !1846, !1849}
!1849 = !DILocation(line: 140, column: 5, scope: !1842)
!1850 = !DILocation(line: 142, column: 10, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1831, file: !6, line: 142, column: 7)
!1852 = !DILocation(line: 137, column: 15, scope: !1831)
!1853 = !DILocation(line: 150, column: 16, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1851, file: !6, line: 148, column: 5)
!1855 = !DILocation(line: 150, column: 9, scope: !1854)
!1856 = !DILocation(line: 142, column: 7, scope: !1831)
!1857 = !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)
!1858 = !DILocation(line: 153, column: 7, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1831, file: !6, line: 153, column: 7)
!1860 = !DILocation(line: 153, column: 7, scope: !1831)
!1861 = !DILocation(line: 155, column: 14, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1859, file: !6, line: 154, column: 5)
!1863 = !DILocation(line: 155, column: 7, scope: !1862)
!1864 = distinct !{!1864, !1863, !1865}
!1865 = !DILocation(line: 156, column: 10, scope: !1862)
!1866 = !DILocation(line: 157, column: 14, scope: !1862)
!1867 = !DILocation(line: 157, column: 7, scope: !1862)
!1868 = !DILocation(line: 158, column: 10, scope: !1862)
!1869 = distinct !{!1869, !1867, !1868}
!1870 = !DILocation(line: 159, column: 12, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1862, file: !6, line: 159, column: 11)
!1872 = !DILocation(line: 159, column: 11, scope: !1862)
!1873 = !DILocation(line: 160, column: 9, scope: !1871)
!1874 = !DILocation(line: 163, column: 22, scope: !1831)
!1875 = !DILocation(line: 163, column: 47, scope: !1831)
!1876 = !DILocation(line: 163, column: 3, scope: !1831)
!1877 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !74, file: !74, line: 41, type: !42, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !69, variables: !1878)
!1878 = !{!1879}
!1879 = !DILocalVariable(name: "file", arg: 1, scope: !1877, file: !74, line: 41, type: !44)
!1880 = !DILocation(line: 41, column: 41, scope: !1877)
!1881 = !DILocation(line: 43, column: 13, scope: !1877)
!1882 = !DILocation(line: 44, column: 1, scope: !1877)
!1883 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !74, file: !74, line: 78, type: !754, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !69, variables: !1884)
!1884 = !{!1885}
!1885 = !DILocalVariable(name: "ignore", arg: 1, scope: !1883, file: !74, line: 78, type: !75)
!1886 = !DILocation(line: 78, column: 37, scope: !1883)
!1887 = !DILocation(line: 80, column: 16, scope: !1883)
!1888 = !{!1889, !1889, i64 0}
!1889 = !{!"_Bool", !595, i64 0}
!1890 = !DILocation(line: 81, column: 1, scope: !1883)
!1891 = distinct !DISubprogram(name: "close_stdout", scope: !74, file: !74, line: 107, type: !956, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !69, variables: !1892)
!1892 = !{!1893}
!1893 = !DILocalVariable(name: "write_error", scope: !1894, file: !74, line: 112, type: !44)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !74, line: 111, column: 5)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !74, line: 109, column: 7)
!1896 = !DILocation(line: 109, column: 21, scope: !1895)
!1897 = !DILocation(line: 109, column: 7, scope: !1895)
!1898 = !DILocation(line: 109, column: 29, scope: !1895)
!1899 = !DILocation(line: 110, column: 7, scope: !1895)
!1900 = !DILocation(line: 110, column: 12, scope: !1895)
!1901 = !{i8 0, i8 2}
!1902 = !DILocation(line: 114, column: 19, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1894, file: !74, line: 113, column: 11)
!1904 = !DILocation(line: 110, column: 25, scope: !1895)
!1905 = !DILocation(line: 110, column: 28, scope: !1895)
!1906 = !DILocation(line: 110, column: 34, scope: !1895)
!1907 = !DILocation(line: 109, column: 7, scope: !1891)
!1908 = !DILocation(line: 112, column: 33, scope: !1894)
!1909 = !DILocation(line: 112, column: 19, scope: !1894)
!1910 = !DILocation(line: 113, column: 11, scope: !1903)
!1911 = !DILocation(line: 113, column: 11, scope: !1894)
!1912 = !DILocation(line: 114, column: 36, scope: !1903)
!1913 = !DILocation(line: 114, column: 9, scope: !1903)
!1914 = !DILocation(line: 117, column: 9, scope: !1903)
!1915 = !DILocation(line: 119, column: 14, scope: !1894)
!1916 = !DILocation(line: 119, column: 7, scope: !1894)
!1917 = !DILocation(line: 122, column: 22, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1891, file: !74, line: 122, column: 8)
!1919 = !DILocation(line: 122, column: 8, scope: !1918)
!1920 = !DILocation(line: 122, column: 30, scope: !1918)
!1921 = !DILocation(line: 122, column: 8, scope: !1891)
!1922 = !DILocation(line: 123, column: 13, scope: !1918)
!1923 = !DILocation(line: 123, column: 6, scope: !1918)
!1924 = !DILocation(line: 124, column: 1, scope: !1891)
!1925 = distinct !DISubprogram(name: "umaxtostr", scope: !1926, file: !1926, line: 36, type: !1927, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !518, variables: !1929)
!1926 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!27, !521, !27}
!1929 = !{!1930, !1931, !1932}
!1930 = !DILocalVariable(name: "i", arg: 1, scope: !1925, file: !1926, line: 36, type: !521)
!1931 = !DILocalVariable(name: "buf", arg: 2, scope: !1925, file: !1926, line: 36, type: !27)
!1932 = !DILocalVariable(name: "p", scope: !1925, file: !1926, line: 38, type: !27)
!1933 = !DILocation(line: 36, column: 19, scope: !1925)
!1934 = !DILocation(line: 36, column: 28, scope: !1925)
!1935 = !DILocation(line: 38, column: 17, scope: !1925)
!1936 = !DILocation(line: 38, column: 9, scope: !1925)
!1937 = !DILocation(line: 39, column: 6, scope: !1925)
!1938 = !DILocation(line: 51, column: 7, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !1926, line: 50, column: 5)
!1940 = distinct !DILexicalBlock(scope: !1925, file: !1926, line: 41, column: 7)
!1941 = distinct !{!1941, !1938, !1942}
!1942 = !DILocation(line: 53, column: 28, scope: !1939)
!1943 = !DILocation(line: 52, column: 24, scope: !1939)
!1944 = !DILocation(line: 52, column: 16, scope: !1939)
!1945 = !DILocation(line: 52, column: 10, scope: !1939)
!1946 = !DILocation(line: 52, column: 14, scope: !1939)
!1947 = !DILocation(line: 53, column: 17, scope: !1939)
!1948 = !DILocation(line: 53, column: 24, scope: !1939)
!1949 = !DILocation(line: 52, column: 9, scope: !1939)
!1950 = !DILocation(line: 56, column: 3, scope: !1925)
!1951 = distinct !DISubprogram(name: "set_program_name", scope: !89, file: !89, line: 39, type: !42, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !1952)
!1952 = !{!1953, !1954, !1955}
!1953 = !DILocalVariable(name: "argv0", arg: 1, scope: !1951, file: !89, line: 39, type: !44)
!1954 = !DILocalVariable(name: "slash", scope: !1951, file: !89, line: 46, type: !44)
!1955 = !DILocalVariable(name: "base", scope: !1951, file: !89, line: 47, type: !44)
!1956 = !DILocation(line: 39, column: 31, scope: !1951)
!1957 = !DILocation(line: 51, column: 13, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1951, file: !89, line: 51, column: 7)
!1959 = !DILocation(line: 51, column: 7, scope: !1951)
!1960 = !DILocation(line: 55, column: 14, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1958, file: !89, line: 52, column: 5)
!1962 = !DILocation(line: 54, column: 7, scope: !1961)
!1963 = !DILocation(line: 56, column: 7, scope: !1961)
!1964 = !DILocation(line: 59, column: 11, scope: !1951)
!1965 = !DILocation(line: 46, column: 15, scope: !1951)
!1966 = !DILocation(line: 60, column: 17, scope: !1951)
!1967 = !DILocation(line: 60, column: 33, scope: !1951)
!1968 = !DILocation(line: 60, column: 11, scope: !1951)
!1969 = !DILocation(line: 47, column: 15, scope: !1951)
!1970 = !DILocation(line: 61, column: 12, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1951, file: !89, line: 61, column: 7)
!1972 = !DILocation(line: 61, column: 20, scope: !1971)
!1973 = !DILocation(line: 61, column: 25, scope: !1971)
!1974 = !DILocation(line: 61, column: 42, scope: !1971)
!1975 = !DILocation(line: 61, column: 28, scope: !1971)
!1976 = !DILocation(line: 61, column: 61, scope: !1971)
!1977 = !DILocation(line: 61, column: 7, scope: !1951)
!1978 = !DILocation(line: 64, column: 11, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !89, line: 64, column: 11)
!1980 = distinct !DILexicalBlock(scope: !1971, file: !89, line: 62, column: 5)
!1981 = !DILocation(line: 64, column: 36, scope: !1979)
!1982 = !DILocation(line: 64, column: 11, scope: !1980)
!1983 = !DILocation(line: 66, column: 24, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1979, file: !89, line: 65, column: 9)
!1985 = !DILocation(line: 70, column: 41, scope: !1984)
!1986 = !DILocation(line: 72, column: 9, scope: !1984)
!1987 = !DILocation(line: 84, column: 16, scope: !1951)
!1988 = !DILocation(line: 90, column: 27, scope: !1951)
!1989 = !DILocation(line: 92, column: 1, scope: !1951)
!1990 = distinct !DISubprogram(name: "clone_quoting_options", scope: !121, file: !121, line: 114, type: !1991, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !1994)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!1993, !1993}
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!1994 = !{!1995, !1996, !1997}
!1995 = !DILocalVariable(name: "o", arg: 1, scope: !1990, file: !121, line: 114, type: !1993)
!1996 = !DILocalVariable(name: "e", scope: !1990, file: !121, line: 116, type: !30)
!1997 = !DILocalVariable(name: "p", scope: !1990, file: !121, line: 117, type: !1993)
!1998 = !DILocation(line: 114, column: 48, scope: !1990)
!1999 = !DILocation(line: 116, column: 11, scope: !1990)
!2000 = !DILocation(line: 116, column: 7, scope: !1990)
!2001 = !DILocation(line: 117, column: 40, scope: !1990)
!2002 = !DILocation(line: 117, column: 31, scope: !1990)
!2003 = !DILocation(line: 117, column: 27, scope: !1990)
!2004 = !DILocation(line: 119, column: 9, scope: !1990)
!2005 = !DILocation(line: 120, column: 3, scope: !1990)
!2006 = distinct !DISubprogram(name: "get_quoting_style", scope: !121, file: !121, line: 125, type: !2007, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2011)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!95, !2009}
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!2011 = !{!2012}
!2012 = !DILocalVariable(name: "o", arg: 1, scope: !2006, file: !121, line: 125, type: !2009)
!2013 = !DILocation(line: 125, column: 50, scope: !2006)
!2014 = !DILocation(line: 127, column: 11, scope: !2006)
!2015 = !DILocation(line: 127, column: 46, scope: !2006)
!2016 = !{!2017, !595, i64 0}
!2017 = !{!"quoting_options", !595, i64 0, !653, i64 4, !595, i64 8, !594, i64 40, !594, i64 48}
!2018 = !DILocation(line: 127, column: 3, scope: !2006)
!2019 = distinct !DISubprogram(name: "set_quoting_style", scope: !121, file: !121, line: 133, type: !2020, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2022)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{null, !1993, !95}
!2022 = !{!2023, !2024}
!2023 = !DILocalVariable(name: "o", arg: 1, scope: !2019, file: !121, line: 133, type: !1993)
!2024 = !DILocalVariable(name: "s", arg: 2, scope: !2019, file: !121, line: 133, type: !95)
!2025 = !DILocation(line: 133, column: 44, scope: !2019)
!2026 = !DILocation(line: 133, column: 66, scope: !2019)
!2027 = !DILocation(line: 135, column: 4, scope: !2019)
!2028 = !DILocation(line: 135, column: 39, scope: !2019)
!2029 = !DILocation(line: 135, column: 45, scope: !2019)
!2030 = !DILocation(line: 136, column: 1, scope: !2019)
!2031 = distinct !DISubprogram(name: "set_char_quoting", scope: !121, file: !121, line: 144, type: !2032, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2034)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!30, !1993, !28, !30}
!2034 = !{!2035, !2036, !2037, !2038, !2039, !2041, !2042}
!2035 = !DILocalVariable(name: "o", arg: 1, scope: !2031, file: !121, line: 144, type: !1993)
!2036 = !DILocalVariable(name: "c", arg: 2, scope: !2031, file: !121, line: 144, type: !28)
!2037 = !DILocalVariable(name: "i", arg: 3, scope: !2031, file: !121, line: 144, type: !30)
!2038 = !DILocalVariable(name: "uc", scope: !2031, file: !121, line: 146, type: !514)
!2039 = !DILocalVariable(name: "p", scope: !2031, file: !121, line: 147, type: !2040)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!2041 = !DILocalVariable(name: "shift", scope: !2031, file: !121, line: 149, type: !30)
!2042 = !DILocalVariable(name: "r", scope: !2031, file: !121, line: 150, type: !30)
!2043 = !DILocation(line: 144, column: 43, scope: !2031)
!2044 = !DILocation(line: 144, column: 51, scope: !2031)
!2045 = !DILocation(line: 144, column: 58, scope: !2031)
!2046 = !DILocation(line: 146, column: 17, scope: !2031)
!2047 = !DILocation(line: 148, column: 6, scope: !2031)
!2048 = !DILocation(line: 148, column: 62, scope: !2031)
!2049 = !DILocation(line: 148, column: 57, scope: !2031)
!2050 = !DILocation(line: 147, column: 17, scope: !2031)
!2051 = !DILocation(line: 149, column: 18, scope: !2031)
!2052 = !DILocation(line: 149, column: 15, scope: !2031)
!2053 = !DILocation(line: 149, column: 7, scope: !2031)
!2054 = !DILocation(line: 150, column: 12, scope: !2031)
!2055 = !DILocation(line: 150, column: 15, scope: !2031)
!2056 = !DILocation(line: 150, column: 25, scope: !2031)
!2057 = !DILocation(line: 150, column: 7, scope: !2031)
!2058 = !DILocation(line: 151, column: 13, scope: !2031)
!2059 = !DILocation(line: 151, column: 18, scope: !2031)
!2060 = !DILocation(line: 151, column: 23, scope: !2031)
!2061 = !DILocation(line: 151, column: 6, scope: !2031)
!2062 = !DILocation(line: 152, column: 3, scope: !2031)
!2063 = distinct !DISubprogram(name: "set_quoting_flags", scope: !121, file: !121, line: 160, type: !2064, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!30, !1993, !30}
!2066 = !{!2067, !2068, !2069}
!2067 = !DILocalVariable(name: "o", arg: 1, scope: !2063, file: !121, line: 160, type: !1993)
!2068 = !DILocalVariable(name: "i", arg: 2, scope: !2063, file: !121, line: 160, type: !30)
!2069 = !DILocalVariable(name: "r", scope: !2063, file: !121, line: 162, type: !30)
!2070 = !DILocation(line: 160, column: 44, scope: !2063)
!2071 = !DILocation(line: 160, column: 51, scope: !2063)
!2072 = !DILocation(line: 163, column: 8, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2063, file: !121, line: 163, column: 7)
!2074 = !DILocation(line: 163, column: 7, scope: !2063)
!2075 = !DILocation(line: 165, column: 10, scope: !2063)
!2076 = !{!2017, !653, i64 4}
!2077 = !DILocation(line: 162, column: 7, scope: !2063)
!2078 = !DILocation(line: 166, column: 12, scope: !2063)
!2079 = !DILocation(line: 167, column: 3, scope: !2063)
!2080 = distinct !DISubprogram(name: "set_custom_quoting", scope: !121, file: !121, line: 171, type: !2081, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{null, !1993, !44, !44}
!2083 = !{!2084, !2085, !2086}
!2084 = !DILocalVariable(name: "o", arg: 1, scope: !2080, file: !121, line: 171, type: !1993)
!2085 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2080, file: !121, line: 172, type: !44)
!2086 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2080, file: !121, line: 172, type: !44)
!2087 = !DILocation(line: 171, column: 45, scope: !2080)
!2088 = !DILocation(line: 172, column: 33, scope: !2080)
!2089 = !DILocation(line: 172, column: 57, scope: !2080)
!2090 = !DILocation(line: 174, column: 8, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2080, file: !121, line: 174, column: 7)
!2092 = !DILocation(line: 174, column: 7, scope: !2080)
!2093 = !DILocation(line: 176, column: 6, scope: !2080)
!2094 = !DILocation(line: 176, column: 12, scope: !2080)
!2095 = !DILocation(line: 177, column: 8, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2080, file: !121, line: 177, column: 7)
!2097 = !DILocation(line: 177, column: 23, scope: !2096)
!2098 = !DILocation(line: 177, column: 19, scope: !2096)
!2099 = !DILocation(line: 178, column: 5, scope: !2096)
!2100 = !DILocation(line: 179, column: 6, scope: !2080)
!2101 = !DILocation(line: 179, column: 17, scope: !2080)
!2102 = !{!2017, !594, i64 40}
!2103 = !DILocation(line: 180, column: 6, scope: !2080)
!2104 = !DILocation(line: 180, column: 18, scope: !2080)
!2105 = !{!2017, !594, i64 48}
!2106 = !DILocation(line: 181, column: 1, scope: !2080)
!2107 = distinct !DISubprogram(name: "quotearg_buffer", scope: !121, file: !121, line: 776, type: !2108, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2110)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!115, !27, !115, !44, !115, !2009}
!2110 = !{!2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118}
!2111 = !DILocalVariable(name: "buffer", arg: 1, scope: !2107, file: !121, line: 776, type: !27)
!2112 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2107, file: !121, line: 776, type: !115)
!2113 = !DILocalVariable(name: "arg", arg: 3, scope: !2107, file: !121, line: 777, type: !44)
!2114 = !DILocalVariable(name: "argsize", arg: 4, scope: !2107, file: !121, line: 777, type: !115)
!2115 = !DILocalVariable(name: "o", arg: 5, scope: !2107, file: !121, line: 778, type: !2009)
!2116 = !DILocalVariable(name: "p", scope: !2107, file: !121, line: 780, type: !2009)
!2117 = !DILocalVariable(name: "e", scope: !2107, file: !121, line: 781, type: !30)
!2118 = !DILocalVariable(name: "r", scope: !2107, file: !121, line: 782, type: !115)
!2119 = !DILocation(line: 776, column: 24, scope: !2107)
!2120 = !DILocation(line: 776, column: 39, scope: !2107)
!2121 = !DILocation(line: 777, column: 30, scope: !2107)
!2122 = !DILocation(line: 777, column: 42, scope: !2107)
!2123 = !DILocation(line: 778, column: 48, scope: !2107)
!2124 = !DILocation(line: 780, column: 37, scope: !2107)
!2125 = !DILocation(line: 780, column: 33, scope: !2107)
!2126 = !DILocation(line: 781, column: 11, scope: !2107)
!2127 = !DILocation(line: 781, column: 7, scope: !2107)
!2128 = !DILocation(line: 783, column: 43, scope: !2107)
!2129 = !DILocation(line: 783, column: 53, scope: !2107)
!2130 = !DILocation(line: 783, column: 60, scope: !2107)
!2131 = !DILocation(line: 784, column: 43, scope: !2107)
!2132 = !DILocation(line: 784, column: 58, scope: !2107)
!2133 = !DILocation(line: 782, column: 14, scope: !2107)
!2134 = !DILocation(line: 782, column: 10, scope: !2107)
!2135 = !DILocation(line: 785, column: 9, scope: !2107)
!2136 = !DILocation(line: 786, column: 3, scope: !2107)
!2137 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !121, file: !121, line: 248, type: !2138, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2142)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!115, !27, !115, !44, !115, !95, !30, !2140, !44, !44}
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!2142 = !{!2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2167, !2168, !2169, !2170, !2171, !2174, !2175, !2193, !2196, !2197, !2204}
!2143 = !DILocalVariable(name: "buffer", arg: 1, scope: !2137, file: !121, line: 248, type: !27)
!2144 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2137, file: !121, line: 248, type: !115)
!2145 = !DILocalVariable(name: "arg", arg: 3, scope: !2137, file: !121, line: 249, type: !44)
!2146 = !DILocalVariable(name: "argsize", arg: 4, scope: !2137, file: !121, line: 249, type: !115)
!2147 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2137, file: !121, line: 250, type: !95)
!2148 = !DILocalVariable(name: "flags", arg: 6, scope: !2137, file: !121, line: 250, type: !30)
!2149 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2137, file: !121, line: 251, type: !2140)
!2150 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2137, file: !121, line: 252, type: !44)
!2151 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2137, file: !121, line: 253, type: !44)
!2152 = !DILocalVariable(name: "i", scope: !2137, file: !121, line: 255, type: !115)
!2153 = !DILocalVariable(name: "len", scope: !2137, file: !121, line: 256, type: !115)
!2154 = !DILocalVariable(name: "orig_buffersize", scope: !2137, file: !121, line: 257, type: !115)
!2155 = !DILocalVariable(name: "quote_string", scope: !2137, file: !121, line: 258, type: !44)
!2156 = !DILocalVariable(name: "quote_string_len", scope: !2137, file: !121, line: 259, type: !115)
!2157 = !DILocalVariable(name: "backslash_escapes", scope: !2137, file: !121, line: 260, type: !75)
!2158 = !DILocalVariable(name: "unibyte_locale", scope: !2137, file: !121, line: 261, type: !75)
!2159 = !DILocalVariable(name: "elide_outer_quotes", scope: !2137, file: !121, line: 262, type: !75)
!2160 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2137, file: !121, line: 263, type: !75)
!2161 = !DILocalVariable(name: "encountered_single_quote", scope: !2137, file: !121, line: 264, type: !75)
!2162 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2137, file: !121, line: 265, type: !75)
!2163 = !DILocalVariable(name: "c", scope: !2164, file: !121, line: 394, type: !514)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !121, line: 393, column: 5)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !121, line: 392, column: 3)
!2166 = distinct !DILexicalBlock(scope: !2137, file: !121, line: 392, column: 3)
!2167 = !DILocalVariable(name: "esc", scope: !2164, file: !121, line: 395, type: !514)
!2168 = !DILocalVariable(name: "is_right_quote", scope: !2164, file: !121, line: 396, type: !75)
!2169 = !DILocalVariable(name: "escaping", scope: !2164, file: !121, line: 397, type: !75)
!2170 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2164, file: !121, line: 398, type: !75)
!2171 = !DILocalVariable(name: "m", scope: !2172, file: !121, line: 602, type: !115)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !121, line: 600, column: 11)
!2173 = distinct !DILexicalBlock(scope: !2164, file: !121, line: 418, column: 9)
!2174 = !DILocalVariable(name: "printable", scope: !2172, file: !121, line: 604, type: !75)
!2175 = !DILocalVariable(name: "mbstate", scope: !2176, file: !121, line: 613, type: !2178)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !121, line: 612, column: 15)
!2177 = distinct !DILexicalBlock(scope: !2172, file: !121, line: 606, column: 17)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2179, line: 6, baseType: !2180)
!2179 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2181, line: 21, baseType: !2182)
!2181 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2181, line: 13, size: 64, elements: !2183)
!2183 = !{!2184, !2185}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2182, file: !2181, line: 15, baseType: !30, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2182, file: !2181, line: 20, baseType: !2186, size: 32, offset: 32)
!2186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2182, file: !2181, line: 16, size: 32, elements: !2187)
!2187 = !{!2188, !2189}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2186, file: !2181, line: 18, baseType: !32, size: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2186, file: !2181, line: 19, baseType: !2190, size: 32)
!2190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !2191)
!2191 = !{!2192}
!2192 = !DISubrange(count: 4)
!2193 = !DILocalVariable(name: "w", scope: !2194, file: !121, line: 623, type: !2195)
!2194 = distinct !DILexicalBlock(scope: !2176, file: !121, line: 622, column: 19)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !116, line: 90, baseType: !30)
!2196 = !DILocalVariable(name: "bytes", scope: !2194, file: !121, line: 624, type: !115)
!2197 = !DILocalVariable(name: "j", scope: !2198, file: !121, line: 649, type: !115)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !121, line: 648, column: 27)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !121, line: 646, column: 29)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !121, line: 641, column: 23)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !121, line: 633, column: 30)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !121, line: 628, column: 30)
!2203 = distinct !DILexicalBlock(scope: !2194, file: !121, line: 626, column: 25)
!2204 = !DILocalVariable(name: "ilim", scope: !2205, file: !121, line: 676, type: !115)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !121, line: 673, column: 15)
!2206 = distinct !DILexicalBlock(scope: !2172, file: !121, line: 672, column: 17)
!2207 = !DILocation(line: 248, column: 33, scope: !2137)
!2208 = !DILocation(line: 248, column: 48, scope: !2137)
!2209 = !DILocation(line: 249, column: 39, scope: !2137)
!2210 = !DILocation(line: 249, column: 51, scope: !2137)
!2211 = !DILocation(line: 250, column: 46, scope: !2137)
!2212 = !DILocation(line: 250, column: 65, scope: !2137)
!2213 = !DILocation(line: 251, column: 47, scope: !2137)
!2214 = !DILocation(line: 252, column: 39, scope: !2137)
!2215 = !DILocation(line: 253, column: 39, scope: !2137)
!2216 = !DILocation(line: 256, column: 10, scope: !2137)
!2217 = !DILocation(line: 257, column: 10, scope: !2137)
!2218 = !DILocation(line: 258, column: 15, scope: !2137)
!2219 = !DILocation(line: 259, column: 10, scope: !2137)
!2220 = !DILocation(line: 260, column: 8, scope: !2137)
!2221 = !DILocation(line: 261, column: 25, scope: !2137)
!2222 = !DILocation(line: 261, column: 36, scope: !2137)
!2223 = !DILocation(line: 262, column: 8, scope: !2137)
!2224 = !DILocation(line: 263, column: 8, scope: !2137)
!2225 = !DILocation(line: 264, column: 8, scope: !2137)
!2226 = !DILocation(line: 265, column: 8, scope: !2137)
!2227 = !DILocation(line: 265, column: 3, scope: !2137)
!2228 = !DILocation(line: 308, column: 3, scope: !2137)
!2229 = !DILocation(line: 315, column: 11, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2137, file: !121, line: 309, column: 5)
!2231 = !DILocation(line: 315, column: 12, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2230, file: !121, line: 315, column: 11)
!2233 = !DILocation(line: 316, column: 9, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !121, line: 316, column: 9)
!2235 = distinct !DILexicalBlock(scope: !2232, file: !121, line: 316, column: 9)
!2236 = !DILocation(line: 316, column: 9, scope: !2235)
!2237 = !DILocation(line: 354, column: 26, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !121, line: 332, column: 11)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !121, line: 331, column: 13)
!2240 = distinct !DILexicalBlock(scope: !2230, file: !121, line: 330, column: 7)
!2241 = !DILocation(line: 355, column: 27, scope: !2238)
!2242 = !DILocation(line: 356, column: 11, scope: !2238)
!2243 = !DILocation(line: 357, column: 14, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2240, file: !121, line: 357, column: 13)
!2245 = !DILocation(line: 357, column: 13, scope: !2240)
!2246 = !DILocation(line: 358, column: 43, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !121, line: 358, column: 11)
!2248 = distinct !DILexicalBlock(scope: !2244, file: !121, line: 358, column: 11)
!2249 = !DILocation(line: 358, column: 11, scope: !2248)
!2250 = !DILocation(line: 359, column: 13, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !121, line: 359, column: 13)
!2252 = distinct !DILexicalBlock(scope: !2247, file: !121, line: 359, column: 13)
!2253 = !DILocation(line: 359, column: 13, scope: !2252)
!2254 = !DILocation(line: 358, column: 70, scope: !2247)
!2255 = distinct !{!2255, !2249, !2256}
!2256 = !DILocation(line: 359, column: 13, scope: !2248)
!2257 = !DILocation(line: 362, column: 28, scope: !2240)
!2258 = !DILocation(line: 364, column: 7, scope: !2230)
!2259 = !DILocation(line: 367, column: 7, scope: !2230)
!2260 = !DILocation(line: 370, column: 7, scope: !2230)
!2261 = !DILocation(line: 373, column: 12, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2230, file: !121, line: 373, column: 11)
!2263 = !DILocation(line: 373, column: 11, scope: !2230)
!2264 = !DILocation(line: 378, column: 12, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2230, file: !121, line: 378, column: 11)
!2266 = !DILocation(line: 378, column: 11, scope: !2230)
!2267 = !DILocation(line: 379, column: 9, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !121, line: 379, column: 9)
!2269 = distinct !DILexicalBlock(scope: !2265, file: !121, line: 379, column: 9)
!2270 = !DILocation(line: 379, column: 9, scope: !2269)
!2271 = !DILocation(line: 386, column: 7, scope: !2230)
!2272 = !DILocation(line: 389, column: 7, scope: !2230)
!2273 = !DILocation(line: 255, column: 10, scope: !2137)
!2274 = !DILocation(line: 392, column: 8, scope: !2166)
!2275 = !DILocation(line: 392, column: 27, scope: !2165)
!2276 = !DILocation(line: 392, column: 19, scope: !2165)
!2277 = !DILocation(line: 392, column: 60, scope: !2165)
!2278 = !DILocation(line: 392, column: 3, scope: !2166)
!2279 = !DILocation(line: 392, column: 41, scope: !2165)
!2280 = !DILocation(line: 392, column: 48, scope: !2165)
!2281 = !DILocation(line: 396, column: 12, scope: !2164)
!2282 = !DILocation(line: 397, column: 12, scope: !2164)
!2283 = !DILocation(line: 398, column: 12, scope: !2164)
!2284 = !DILocation(line: 401, column: 11, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2164, file: !121, line: 400, column: 11)
!2286 = !DILocation(line: 403, column: 17, scope: !2285)
!2287 = !DILocation(line: 404, column: 39, scope: !2285)
!2288 = !DILocation(line: 408, column: 32, scope: !2285)
!2289 = !DILocation(line: 404, column: 19, scope: !2285)
!2290 = !DILocation(line: 404, column: 15, scope: !2285)
!2291 = !DILocation(line: 409, column: 11, scope: !2285)
!2292 = !DILocation(line: 409, column: 26, scope: !2285)
!2293 = !DILocation(line: 409, column: 14, scope: !2285)
!2294 = !DILocation(line: 409, column: 63, scope: !2285)
!2295 = !DILocation(line: 400, column: 11, scope: !2164)
!2296 = !DILocation(line: 416, column: 11, scope: !2164)
!2297 = !DILocation(line: 394, column: 21, scope: !2164)
!2298 = !DILocation(line: 417, column: 7, scope: !2164)
!2299 = !DILocation(line: 420, column: 15, scope: !2173)
!2300 = !DILocation(line: 422, column: 15, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !121, line: 422, column: 15)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !121, line: 421, column: 13)
!2303 = distinct !DILexicalBlock(scope: !2173, file: !121, line: 420, column: 15)
!2304 = !DILocation(line: 422, column: 15, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2301, file: !121, line: 422, column: 15)
!2306 = !DILocation(line: 422, column: 15, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !121, line: 422, column: 15)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !121, line: 422, column: 15)
!2309 = distinct !DILexicalBlock(scope: !2305, file: !121, line: 422, column: 15)
!2310 = !DILocation(line: 422, column: 15, scope: !2308)
!2311 = !DILocation(line: 422, column: 15, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !121, line: 422, column: 15)
!2313 = distinct !DILexicalBlock(scope: !2309, file: !121, line: 422, column: 15)
!2314 = !DILocation(line: 422, column: 15, scope: !2313)
!2315 = !DILocation(line: 422, column: 15, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !121, line: 422, column: 15)
!2317 = distinct !DILexicalBlock(scope: !2309, file: !121, line: 422, column: 15)
!2318 = !DILocation(line: 422, column: 15, scope: !2317)
!2319 = !DILocation(line: 422, column: 15, scope: !2309)
!2320 = !DILocation(line: 422, column: 15, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !121, line: 422, column: 15)
!2322 = distinct !DILexicalBlock(scope: !2301, file: !121, line: 422, column: 15)
!2323 = !DILocation(line: 422, column: 15, scope: !2322)
!2324 = !DILocation(line: 430, column: 19, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2302, file: !121, line: 429, column: 19)
!2326 = !DILocation(line: 430, column: 24, scope: !2325)
!2327 = !DILocation(line: 430, column: 28, scope: !2325)
!2328 = !DILocation(line: 430, column: 38, scope: !2325)
!2329 = !DILocation(line: 430, column: 48, scope: !2325)
!2330 = !DILocation(line: 430, column: 59, scope: !2325)
!2331 = !DILocation(line: 432, column: 19, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !121, line: 432, column: 19)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !121, line: 432, column: 19)
!2334 = distinct !DILexicalBlock(scope: !2325, file: !121, line: 431, column: 17)
!2335 = !DILocation(line: 432, column: 19, scope: !2333)
!2336 = !DILocation(line: 433, column: 19, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !121, line: 433, column: 19)
!2338 = distinct !DILexicalBlock(scope: !2334, file: !121, line: 433, column: 19)
!2339 = !DILocation(line: 433, column: 19, scope: !2338)
!2340 = !DILocation(line: 434, column: 17, scope: !2334)
!2341 = !DILocation(line: 441, column: 20, scope: !2303)
!2342 = !DILocation(line: 446, column: 11, scope: !2173)
!2343 = !DILocation(line: 449, column: 19, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2173, file: !121, line: 447, column: 13)
!2345 = !DILocation(line: 455, column: 19, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2344, file: !121, line: 454, column: 19)
!2347 = !DILocation(line: 455, column: 24, scope: !2346)
!2348 = !DILocation(line: 455, column: 28, scope: !2346)
!2349 = !DILocation(line: 455, column: 38, scope: !2346)
!2350 = !DILocation(line: 455, column: 47, scope: !2346)
!2351 = !DILocation(line: 455, column: 41, scope: !2346)
!2352 = !DILocation(line: 455, column: 52, scope: !2346)
!2353 = !DILocation(line: 454, column: 19, scope: !2344)
!2354 = !DILocation(line: 456, column: 25, scope: !2346)
!2355 = !DILocation(line: 456, column: 17, scope: !2346)
!2356 = !DILocation(line: 463, column: 25, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2346, file: !121, line: 457, column: 19)
!2358 = !DILocation(line: 467, column: 21, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !121, line: 467, column: 21)
!2360 = distinct !DILexicalBlock(scope: !2357, file: !121, line: 467, column: 21)
!2361 = !DILocation(line: 467, column: 21, scope: !2360)
!2362 = !DILocation(line: 468, column: 21, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !121, line: 468, column: 21)
!2364 = distinct !DILexicalBlock(scope: !2357, file: !121, line: 468, column: 21)
!2365 = !DILocation(line: 468, column: 21, scope: !2364)
!2366 = !DILocation(line: 469, column: 21, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !121, line: 469, column: 21)
!2368 = distinct !DILexicalBlock(scope: !2357, file: !121, line: 469, column: 21)
!2369 = !DILocation(line: 469, column: 21, scope: !2368)
!2370 = !DILocation(line: 470, column: 21, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !121, line: 470, column: 21)
!2372 = distinct !DILexicalBlock(scope: !2357, file: !121, line: 470, column: 21)
!2373 = !DILocation(line: 470, column: 21, scope: !2372)
!2374 = !DILocation(line: 471, column: 21, scope: !2357)
!2375 = !DILocation(line: 395, column: 21, scope: !2164)
!2376 = !DILocation(line: 484, column: 31, scope: !2173)
!2377 = !DILocation(line: 485, column: 31, scope: !2173)
!2378 = !DILocation(line: 487, column: 31, scope: !2173)
!2379 = !DILocation(line: 488, column: 31, scope: !2173)
!2380 = !DILocation(line: 489, column: 31, scope: !2173)
!2381 = !DILocation(line: 492, column: 15, scope: !2173)
!2382 = !DILocation(line: 494, column: 19, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !121, line: 493, column: 13)
!2384 = distinct !DILexicalBlock(scope: !2173, file: !121, line: 492, column: 15)
!2385 = !DILocation(line: 501, column: 33, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2173, file: !121, line: 501, column: 15)
!2387 = !DILocation(line: 506, column: 15, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2173, file: !121, line: 505, column: 15)
!2389 = !DILocation(line: 510, column: 15, scope: !2173)
!2390 = !DILocation(line: 518, column: 26, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2173, file: !121, line: 518, column: 15)
!2392 = !DILocation(line: 518, column: 15, scope: !2173)
!2393 = !DILocation(line: 518, column: 40, scope: !2391)
!2394 = !DILocation(line: 518, column: 47, scope: !2391)
!2395 = !DILocation(line: 522, column: 17, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2173, file: !121, line: 522, column: 15)
!2397 = !DILocation(line: 518, column: 18, scope: !2391)
!2398 = !DILocation(line: 518, column: 65, scope: !2391)
!2399 = !DILocation(line: 522, column: 15, scope: !2173)
!2400 = !DILocation(line: 526, column: 11, scope: !2173)
!2401 = !DILocation(line: 541, column: 15, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2173, file: !121, line: 540, column: 15)
!2403 = !DILocation(line: 548, column: 15, scope: !2173)
!2404 = !DILocation(line: 550, column: 19, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !121, line: 549, column: 13)
!2406 = distinct !DILexicalBlock(scope: !2173, file: !121, line: 548, column: 15)
!2407 = !DILocation(line: 553, column: 19, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2405, file: !121, line: 553, column: 19)
!2409 = !DILocation(line: 553, column: 35, scope: !2408)
!2410 = !DILocation(line: 553, column: 30, scope: !2408)
!2411 = !DILocation(line: 562, column: 15, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !121, line: 562, column: 15)
!2413 = distinct !DILexicalBlock(scope: !2405, file: !121, line: 562, column: 15)
!2414 = !DILocation(line: 562, column: 15, scope: !2413)
!2415 = !DILocation(line: 563, column: 15, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !121, line: 563, column: 15)
!2417 = distinct !DILexicalBlock(scope: !2405, file: !121, line: 563, column: 15)
!2418 = !DILocation(line: 563, column: 15, scope: !2417)
!2419 = !DILocation(line: 564, column: 15, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !121, line: 564, column: 15)
!2421 = distinct !DILexicalBlock(scope: !2405, file: !121, line: 564, column: 15)
!2422 = !DILocation(line: 564, column: 15, scope: !2421)
!2423 = !DILocation(line: 566, column: 13, scope: !2405)
!2424 = !DILocation(line: 606, column: 17, scope: !2172)
!2425 = !DILocation(line: 602, column: 20, scope: !2172)
!2426 = !DILocation(line: 609, column: 29, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2177, file: !121, line: 607, column: 15)
!2428 = !DILocation(line: 609, column: 27, scope: !2427)
!2429 = !DILocation(line: 604, column: 18, scope: !2172)
!2430 = !DILocation(line: 610, column: 15, scope: !2427)
!2431 = !DILocation(line: 613, column: 17, scope: !2176)
!2432 = !DILocation(line: 614, column: 17, scope: !2176)
!2433 = !DILocation(line: 618, column: 29, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2176, file: !121, line: 618, column: 21)
!2435 = !DILocation(line: 618, column: 21, scope: !2176)
!2436 = !DILocation(line: 619, column: 29, scope: !2434)
!2437 = !DILocation(line: 619, column: 19, scope: !2434)
!2438 = !DILocation(line: 621, column: 17, scope: !2176)
!2439 = distinct !{!2439, !2438, !2440}
!2440 = !DILocation(line: 667, column: 44, scope: !2176)
!2441 = !DILocation(line: 623, column: 21, scope: !2194)
!2442 = !DILocation(line: 624, column: 56, scope: !2194)
!2443 = !DILocation(line: 624, column: 50, scope: !2194)
!2444 = !DILocation(line: 625, column: 53, scope: !2194)
!2445 = !DILocation(line: 613, column: 27, scope: !2176)
!2446 = !DILocation(line: 623, column: 29, scope: !2194)
!2447 = !DILocation(line: 624, column: 36, scope: !2194)
!2448 = !DILocation(line: 624, column: 28, scope: !2194)
!2449 = !DILocation(line: 626, column: 25, scope: !2194)
!2450 = !DILocation(line: 636, column: 38, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2201, file: !121, line: 634, column: 23)
!2452 = !DILocation(line: 636, column: 48, scope: !2451)
!2453 = !DILocation(line: 636, column: 51, scope: !2451)
!2454 = !DILocation(line: 636, column: 25, scope: !2451)
!2455 = !DILocation(line: 637, column: 28, scope: !2451)
!2456 = !DILocation(line: 636, column: 34, scope: !2451)
!2457 = distinct !{!2457, !2454, !2455}
!2458 = !DILocation(line: 650, column: 43, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !121, line: 650, column: 29)
!2460 = distinct !DILexicalBlock(scope: !2198, file: !121, line: 650, column: 29)
!2461 = !DILocation(line: 647, column: 29, scope: !2199)
!2462 = !DILocation(line: 649, column: 36, scope: !2198)
!2463 = !DILocation(line: 651, column: 49, scope: !2459)
!2464 = !DILocation(line: 651, column: 39, scope: !2459)
!2465 = !DILocation(line: 651, column: 31, scope: !2459)
!2466 = !DILocation(line: 650, column: 53, scope: !2459)
!2467 = !DILocation(line: 650, column: 29, scope: !2460)
!2468 = distinct !{!2468, !2467, !2469}
!2469 = !DILocation(line: 659, column: 33, scope: !2460)
!2470 = !DILocation(line: 666, column: 19, scope: !2176)
!2471 = !DILocation(line: 662, column: 41, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2200, file: !121, line: 662, column: 29)
!2473 = !DILocation(line: 662, column: 31, scope: !2472)
!2474 = !DILocation(line: 662, column: 29, scope: !2200)
!2475 = !DILocation(line: 664, column: 27, scope: !2200)
!2476 = !DILocation(line: 667, column: 26, scope: !2176)
!2477 = !DILocation(line: 667, column: 24, scope: !2176)
!2478 = !DILocation(line: 666, column: 19, scope: !2194)
!2479 = !DILocation(line: 668, column: 15, scope: !2177)
!2480 = !DILocation(line: 670, column: 40, scope: !2172)
!2481 = !DILocation(line: 672, column: 19, scope: !2206)
!2482 = !DILocation(line: 672, column: 45, scope: !2206)
!2483 = !DILocation(line: 672, column: 23, scope: !2206)
!2484 = !DILocation(line: 676, column: 33, scope: !2205)
!2485 = !DILocation(line: 676, column: 24, scope: !2205)
!2486 = !DILocation(line: 678, column: 17, scope: !2205)
!2487 = !DILocation(line: 680, column: 43, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !121, line: 680, column: 25)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !121, line: 679, column: 19)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !121, line: 678, column: 17)
!2491 = distinct !DILexicalBlock(scope: !2205, file: !121, line: 678, column: 17)
!2492 = !DILocation(line: 682, column: 25, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !121, line: 682, column: 25)
!2494 = distinct !DILexicalBlock(scope: !2488, file: !121, line: 681, column: 23)
!2495 = !DILocation(line: 682, column: 25, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2493, file: !121, line: 682, column: 25)
!2497 = !DILocation(line: 682, column: 25, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !121, line: 682, column: 25)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !121, line: 682, column: 25)
!2500 = distinct !DILexicalBlock(scope: !2496, file: !121, line: 682, column: 25)
!2501 = !DILocation(line: 682, column: 25, scope: !2499)
!2502 = !DILocation(line: 682, column: 25, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !121, line: 682, column: 25)
!2504 = distinct !DILexicalBlock(scope: !2500, file: !121, line: 682, column: 25)
!2505 = !DILocation(line: 682, column: 25, scope: !2504)
!2506 = !DILocation(line: 682, column: 25, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !121, line: 682, column: 25)
!2508 = distinct !DILexicalBlock(scope: !2500, file: !121, line: 682, column: 25)
!2509 = !DILocation(line: 682, column: 25, scope: !2508)
!2510 = !DILocation(line: 682, column: 25, scope: !2500)
!2511 = !DILocation(line: 682, column: 25, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !121, line: 682, column: 25)
!2513 = distinct !DILexicalBlock(scope: !2493, file: !121, line: 682, column: 25)
!2514 = !DILocation(line: 682, column: 25, scope: !2513)
!2515 = !DILocation(line: 683, column: 25, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !121, line: 683, column: 25)
!2517 = distinct !DILexicalBlock(scope: !2494, file: !121, line: 683, column: 25)
!2518 = !DILocation(line: 683, column: 25, scope: !2517)
!2519 = !DILocation(line: 684, column: 25, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !121, line: 684, column: 25)
!2521 = distinct !DILexicalBlock(scope: !2494, file: !121, line: 684, column: 25)
!2522 = !DILocation(line: 684, column: 25, scope: !2521)
!2523 = !DILocation(line: 685, column: 38, scope: !2494)
!2524 = !DILocation(line: 685, column: 33, scope: !2494)
!2525 = !DILocation(line: 686, column: 23, scope: !2494)
!2526 = !DILocation(line: 687, column: 30, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2488, file: !121, line: 687, column: 30)
!2528 = !DILocation(line: 687, column: 30, scope: !2488)
!2529 = !DILocation(line: 689, column: 25, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !121, line: 689, column: 25)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !121, line: 689, column: 25)
!2532 = distinct !DILexicalBlock(scope: !2527, file: !121, line: 688, column: 23)
!2533 = !DILocation(line: 689, column: 25, scope: !2531)
!2534 = !DILocation(line: 691, column: 23, scope: !2532)
!2535 = !DILocation(line: 692, column: 35, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2489, file: !121, line: 692, column: 25)
!2537 = !DILocation(line: 692, column: 30, scope: !2536)
!2538 = !DILocation(line: 692, column: 25, scope: !2489)
!2539 = !DILocation(line: 694, column: 21, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !121, line: 694, column: 21)
!2541 = distinct !DILexicalBlock(scope: !2489, file: !121, line: 694, column: 21)
!2542 = !DILocation(line: 694, column: 21, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !121, line: 694, column: 21)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !121, line: 694, column: 21)
!2545 = distinct !DILexicalBlock(scope: !2540, file: !121, line: 694, column: 21)
!2546 = !DILocation(line: 694, column: 21, scope: !2544)
!2547 = !DILocation(line: 694, column: 21, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !121, line: 694, column: 21)
!2549 = distinct !DILexicalBlock(scope: !2545, file: !121, line: 694, column: 21)
!2550 = !DILocation(line: 694, column: 21, scope: !2549)
!2551 = !DILocation(line: 694, column: 21, scope: !2545)
!2552 = !DILocation(line: 695, column: 21, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !121, line: 695, column: 21)
!2554 = distinct !DILexicalBlock(scope: !2489, file: !121, line: 695, column: 21)
!2555 = !DILocation(line: 695, column: 21, scope: !2554)
!2556 = !DILocation(line: 696, column: 25, scope: !2489)
!2557 = !DILocation(line: 678, column: 17, scope: !2490)
!2558 = distinct !{!2558, !2559, !2560}
!2559 = !DILocation(line: 678, column: 17, scope: !2491)
!2560 = !DILocation(line: 697, column: 19, scope: !2491)
!2561 = !DILocation(line: 704, column: 34, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2164, file: !121, line: 704, column: 11)
!2563 = !DILocation(line: 706, column: 14, scope: !2562)
!2564 = !DILocation(line: 707, column: 14, scope: !2562)
!2565 = !DILocation(line: 707, column: 35, scope: !2562)
!2566 = !DILocation(line: 707, column: 17, scope: !2562)
!2567 = !DILocation(line: 707, column: 53, scope: !2562)
!2568 = !DILocation(line: 707, column: 47, scope: !2562)
!2569 = !DILocation(line: 707, column: 65, scope: !2562)
!2570 = !DILocation(line: 708, column: 15, scope: !2562)
!2571 = !DILocation(line: 708, column: 11, scope: !2562)
!2572 = !DILocation(line: 704, column: 11, scope: !2164)
!2573 = !DILocation(line: 712, column: 7, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2164, file: !121, line: 712, column: 7)
!2575 = !DILocation(line: 712, column: 7, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2574, file: !121, line: 712, column: 7)
!2577 = !DILocation(line: 712, column: 7, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !121, line: 712, column: 7)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !121, line: 712, column: 7)
!2580 = distinct !DILexicalBlock(scope: !2576, file: !121, line: 712, column: 7)
!2581 = !DILocation(line: 712, column: 7, scope: !2579)
!2582 = !DILocation(line: 712, column: 7, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !121, line: 712, column: 7)
!2584 = distinct !DILexicalBlock(scope: !2580, file: !121, line: 712, column: 7)
!2585 = !DILocation(line: 712, column: 7, scope: !2584)
!2586 = !DILocation(line: 712, column: 7, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !121, line: 712, column: 7)
!2588 = distinct !DILexicalBlock(scope: !2580, file: !121, line: 712, column: 7)
!2589 = !DILocation(line: 712, column: 7, scope: !2588)
!2590 = !DILocation(line: 712, column: 7, scope: !2580)
!2591 = !DILocation(line: 712, column: 7, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !121, line: 712, column: 7)
!2593 = distinct !DILexicalBlock(scope: !2574, file: !121, line: 712, column: 7)
!2594 = !DILocation(line: 712, column: 7, scope: !2593)
!2595 = !DILocation(line: 715, column: 7, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !121, line: 715, column: 7)
!2597 = distinct !DILexicalBlock(scope: !2164, file: !121, line: 715, column: 7)
!2598 = !DILocation(line: 715, column: 7, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !121, line: 715, column: 7)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !121, line: 715, column: 7)
!2601 = distinct !DILexicalBlock(scope: !2596, file: !121, line: 715, column: 7)
!2602 = !DILocation(line: 715, column: 7, scope: !2600)
!2603 = !DILocation(line: 715, column: 7, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !121, line: 715, column: 7)
!2605 = distinct !DILexicalBlock(scope: !2601, file: !121, line: 715, column: 7)
!2606 = !DILocation(line: 715, column: 7, scope: !2605)
!2607 = !DILocation(line: 715, column: 7, scope: !2601)
!2608 = !DILocation(line: 716, column: 7, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !121, line: 716, column: 7)
!2610 = distinct !DILexicalBlock(scope: !2164, file: !121, line: 716, column: 7)
!2611 = !DILocation(line: 716, column: 7, scope: !2610)
!2612 = !DILocation(line: 718, column: 13, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2164, file: !121, line: 718, column: 11)
!2614 = !DILocation(line: 718, column: 11, scope: !2164)
!2615 = !DILocation(line: 720, column: 5, scope: !2165)
!2616 = !DILocation(line: 392, column: 75, scope: !2165)
!2617 = !DILocation(line: 392, column: 3, scope: !2165)
!2618 = distinct !{!2618, !2278, !2619}
!2619 = !DILocation(line: 720, column: 5, scope: !2166)
!2620 = !DILocation(line: 722, column: 11, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2137, file: !121, line: 722, column: 7)
!2622 = !DILocation(line: 722, column: 16, scope: !2621)
!2623 = !DILocation(line: 730, column: 51, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2137, file: !121, line: 730, column: 7)
!2625 = !DILocation(line: 731, column: 10, scope: !2624)
!2626 = !DILocation(line: 733, column: 11, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !121, line: 733, column: 11)
!2628 = distinct !DILexicalBlock(scope: !2624, file: !121, line: 732, column: 5)
!2629 = !DILocation(line: 733, column: 11, scope: !2628)
!2630 = !DILocation(line: 734, column: 16, scope: !2627)
!2631 = !DILocation(line: 734, column: 9, scope: !2627)
!2632 = !DILocation(line: 738, column: 18, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2627, file: !121, line: 738, column: 16)
!2634 = !DILocation(line: 738, column: 32, scope: !2633)
!2635 = !DILocation(line: 738, column: 29, scope: !2633)
!2636 = !DILocation(line: 747, column: 7, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2137, file: !121, line: 747, column: 7)
!2638 = !DILocation(line: 747, column: 20, scope: !2637)
!2639 = !DILocation(line: 748, column: 12, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !121, line: 748, column: 5)
!2641 = distinct !DILexicalBlock(scope: !2637, file: !121, line: 748, column: 5)
!2642 = !DILocation(line: 748, column: 5, scope: !2641)
!2643 = !DILocation(line: 749, column: 7, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !121, line: 749, column: 7)
!2645 = distinct !DILexicalBlock(scope: !2640, file: !121, line: 749, column: 7)
!2646 = !DILocation(line: 749, column: 7, scope: !2645)
!2647 = !DILocation(line: 748, column: 39, scope: !2640)
!2648 = distinct !{!2648, !2642, !2649}
!2649 = !DILocation(line: 749, column: 7, scope: !2641)
!2650 = !DILocation(line: 751, column: 11, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2137, file: !121, line: 751, column: 7)
!2652 = !DILocation(line: 751, column: 7, scope: !2137)
!2653 = !DILocation(line: 752, column: 5, scope: !2651)
!2654 = !DILocation(line: 752, column: 17, scope: !2651)
!2655 = !DILocation(line: 758, column: 21, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2137, file: !121, line: 758, column: 7)
!2657 = !DILocation(line: 758, column: 54, scope: !2656)
!2658 = !DILocation(line: 758, column: 51, scope: !2656)
!2659 = !DILocation(line: 762, column: 42, scope: !2137)
!2660 = !DILocation(line: 760, column: 10, scope: !2137)
!2661 = !DILocation(line: 760, column: 3, scope: !2137)
!2662 = !DILocation(line: 764, column: 1, scope: !2137)
!2663 = distinct !DISubprogram(name: "gettext_quote", scope: !121, file: !121, line: 199, type: !2664, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!44, !44, !95}
!2666 = !{!2667, !2668, !2669, !2670}
!2667 = !DILocalVariable(name: "msgid", arg: 1, scope: !2663, file: !121, line: 199, type: !44)
!2668 = !DILocalVariable(name: "s", arg: 2, scope: !2663, file: !121, line: 199, type: !95)
!2669 = !DILocalVariable(name: "translation", scope: !2663, file: !121, line: 201, type: !44)
!2670 = !DILocalVariable(name: "locale_code", scope: !2663, file: !121, line: 202, type: !44)
!2671 = !DILocation(line: 199, column: 28, scope: !2663)
!2672 = !DILocation(line: 199, column: 54, scope: !2663)
!2673 = !DILocation(line: 201, column: 29, scope: !2663)
!2674 = !DILocation(line: 201, column: 15, scope: !2663)
!2675 = !DILocation(line: 204, column: 19, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2663, file: !121, line: 204, column: 7)
!2677 = !DILocation(line: 204, column: 7, scope: !2663)
!2678 = !DILocation(line: 225, column: 17, scope: !2663)
!2679 = !DILocation(line: 202, column: 15, scope: !2663)
!2680 = !DILocalVariable(name: "s2", arg: 2, scope: !2681, file: !2682, line: 160, type: !44)
!2681 = distinct !DISubprogram(name: "strcaseeq0", scope: !2682, file: !2682, line: 160, type: !2683, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2685)
!2682 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!30, !44, !44, !28, !28, !28, !28, !28, !28, !28, !28, !28}
!2685 = !{!2686, !2680, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695}
!2686 = !DILocalVariable(name: "s1", arg: 1, scope: !2681, file: !2682, line: 160, type: !44)
!2687 = !DILocalVariable(name: "s20", arg: 3, scope: !2681, file: !2682, line: 160, type: !28)
!2688 = !DILocalVariable(name: "s21", arg: 4, scope: !2681, file: !2682, line: 160, type: !28)
!2689 = !DILocalVariable(name: "s22", arg: 5, scope: !2681, file: !2682, line: 160, type: !28)
!2690 = !DILocalVariable(name: "s23", arg: 6, scope: !2681, file: !2682, line: 160, type: !28)
!2691 = !DILocalVariable(name: "s24", arg: 7, scope: !2681, file: !2682, line: 160, type: !28)
!2692 = !DILocalVariable(name: "s25", arg: 8, scope: !2681, file: !2682, line: 160, type: !28)
!2693 = !DILocalVariable(name: "s26", arg: 9, scope: !2681, file: !2682, line: 160, type: !28)
!2694 = !DILocalVariable(name: "s27", arg: 10, scope: !2681, file: !2682, line: 160, type: !28)
!2695 = !DILocalVariable(name: "s28", arg: 11, scope: !2681, file: !2682, line: 160, type: !28)
!2696 = !DILocation(line: 160, column: 41, scope: !2681, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 226, column: 7, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2663, file: !121, line: 226, column: 7)
!2699 = !DILocation(line: 160, column: 120, scope: !2681, inlinedAt: !2697)
!2700 = !DILocation(line: 160, column: 130, scope: !2681, inlinedAt: !2697)
!2701 = !DILocation(line: 162, column: 7, scope: !2702, inlinedAt: !2697)
!2702 = distinct !DILexicalBlock(scope: !2681, file: !2682, line: 162, column: 7)
!2703 = !DILocalVariable(name: "s2", arg: 2, scope: !2704, file: !2682, line: 146, type: !44)
!2704 = distinct !DISubprogram(name: "strcaseeq1", scope: !2682, file: !2682, line: 146, type: !2705, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2707)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!30, !44, !44, !28, !28, !28, !28, !28, !28, !28, !28}
!2707 = !{!2708, !2703, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716}
!2708 = !DILocalVariable(name: "s1", arg: 1, scope: !2704, file: !2682, line: 146, type: !44)
!2709 = !DILocalVariable(name: "s21", arg: 3, scope: !2704, file: !2682, line: 146, type: !28)
!2710 = !DILocalVariable(name: "s22", arg: 4, scope: !2704, file: !2682, line: 146, type: !28)
!2711 = !DILocalVariable(name: "s23", arg: 5, scope: !2704, file: !2682, line: 146, type: !28)
!2712 = !DILocalVariable(name: "s24", arg: 6, scope: !2704, file: !2682, line: 146, type: !28)
!2713 = !DILocalVariable(name: "s25", arg: 7, scope: !2704, file: !2682, line: 146, type: !28)
!2714 = !DILocalVariable(name: "s26", arg: 8, scope: !2704, file: !2682, line: 146, type: !28)
!2715 = !DILocalVariable(name: "s27", arg: 9, scope: !2704, file: !2682, line: 146, type: !28)
!2716 = !DILocalVariable(name: "s28", arg: 10, scope: !2704, file: !2682, line: 146, type: !28)
!2717 = !DILocation(line: 146, column: 41, scope: !2704, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 167, column: 16, scope: !2719, inlinedAt: !2697)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !2682, line: 164, column: 11)
!2720 = distinct !DILexicalBlock(scope: !2702, file: !2682, line: 163, column: 5)
!2721 = !DILocation(line: 146, column: 110, scope: !2704, inlinedAt: !2718)
!2722 = !DILocation(line: 146, column: 120, scope: !2704, inlinedAt: !2718)
!2723 = !DILocation(line: 148, column: 7, scope: !2724, inlinedAt: !2718)
!2724 = distinct !DILexicalBlock(scope: !2704, file: !2682, line: 148, column: 7)
!2725 = !DILocalVariable(name: "s2", arg: 2, scope: !2726, file: !2682, line: 132, type: !44)
!2726 = distinct !DISubprogram(name: "strcaseeq2", scope: !2682, file: !2682, line: 132, type: !2727, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!30, !44, !44, !28, !28, !28, !28, !28, !28, !28}
!2729 = !{!2730, !2725, !2731, !2732, !2733, !2734, !2735, !2736, !2737}
!2730 = !DILocalVariable(name: "s1", arg: 1, scope: !2726, file: !2682, line: 132, type: !44)
!2731 = !DILocalVariable(name: "s22", arg: 3, scope: !2726, file: !2682, line: 132, type: !28)
!2732 = !DILocalVariable(name: "s23", arg: 4, scope: !2726, file: !2682, line: 132, type: !28)
!2733 = !DILocalVariable(name: "s24", arg: 5, scope: !2726, file: !2682, line: 132, type: !28)
!2734 = !DILocalVariable(name: "s25", arg: 6, scope: !2726, file: !2682, line: 132, type: !28)
!2735 = !DILocalVariable(name: "s26", arg: 7, scope: !2726, file: !2682, line: 132, type: !28)
!2736 = !DILocalVariable(name: "s27", arg: 8, scope: !2726, file: !2682, line: 132, type: !28)
!2737 = !DILocalVariable(name: "s28", arg: 9, scope: !2726, file: !2682, line: 132, type: !28)
!2738 = !DILocation(line: 132, column: 41, scope: !2726, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 153, column: 16, scope: !2740, inlinedAt: !2718)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !2682, line: 150, column: 11)
!2741 = distinct !DILexicalBlock(scope: !2724, file: !2682, line: 149, column: 5)
!2742 = !DILocation(line: 132, column: 100, scope: !2726, inlinedAt: !2739)
!2743 = !DILocation(line: 132, column: 110, scope: !2726, inlinedAt: !2739)
!2744 = !DILocation(line: 134, column: 7, scope: !2745, inlinedAt: !2739)
!2745 = distinct !DILexicalBlock(scope: !2726, file: !2682, line: 134, column: 7)
!2746 = !DILocalVariable(name: "s2", arg: 2, scope: !2747, file: !2682, line: 118, type: !44)
!2747 = distinct !DISubprogram(name: "strcaseeq3", scope: !2682, file: !2682, line: 118, type: !2748, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!30, !44, !44, !28, !28, !28, !28, !28, !28}
!2750 = !{!2751, !2746, !2752, !2753, !2754, !2755, !2756, !2757}
!2751 = !DILocalVariable(name: "s1", arg: 1, scope: !2747, file: !2682, line: 118, type: !44)
!2752 = !DILocalVariable(name: "s23", arg: 3, scope: !2747, file: !2682, line: 118, type: !28)
!2753 = !DILocalVariable(name: "s24", arg: 4, scope: !2747, file: !2682, line: 118, type: !28)
!2754 = !DILocalVariable(name: "s25", arg: 5, scope: !2747, file: !2682, line: 118, type: !28)
!2755 = !DILocalVariable(name: "s26", arg: 6, scope: !2747, file: !2682, line: 118, type: !28)
!2756 = !DILocalVariable(name: "s27", arg: 7, scope: !2747, file: !2682, line: 118, type: !28)
!2757 = !DILocalVariable(name: "s28", arg: 8, scope: !2747, file: !2682, line: 118, type: !28)
!2758 = !DILocation(line: 118, column: 41, scope: !2747, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 139, column: 16, scope: !2760, inlinedAt: !2739)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !2682, line: 136, column: 11)
!2761 = distinct !DILexicalBlock(scope: !2745, file: !2682, line: 135, column: 5)
!2762 = !DILocation(line: 118, column: 90, scope: !2747, inlinedAt: !2759)
!2763 = !DILocation(line: 118, column: 100, scope: !2747, inlinedAt: !2759)
!2764 = !DILocation(line: 120, column: 7, scope: !2765, inlinedAt: !2759)
!2765 = distinct !DILexicalBlock(scope: !2747, file: !2682, line: 120, column: 7)
!2766 = !DILocation(line: 120, column: 7, scope: !2747, inlinedAt: !2759)
!2767 = !DILocalVariable(name: "s2", arg: 2, scope: !2768, file: !2682, line: 104, type: !44)
!2768 = distinct !DISubprogram(name: "strcaseeq4", scope: !2682, file: !2682, line: 104, type: !2769, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2771)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!30, !44, !44, !28, !28, !28, !28, !28}
!2771 = !{!2772, !2767, !2773, !2774, !2775, !2776, !2777}
!2772 = !DILocalVariable(name: "s1", arg: 1, scope: !2768, file: !2682, line: 104, type: !44)
!2773 = !DILocalVariable(name: "s24", arg: 3, scope: !2768, file: !2682, line: 104, type: !28)
!2774 = !DILocalVariable(name: "s25", arg: 4, scope: !2768, file: !2682, line: 104, type: !28)
!2775 = !DILocalVariable(name: "s26", arg: 5, scope: !2768, file: !2682, line: 104, type: !28)
!2776 = !DILocalVariable(name: "s27", arg: 6, scope: !2768, file: !2682, line: 104, type: !28)
!2777 = !DILocalVariable(name: "s28", arg: 7, scope: !2768, file: !2682, line: 104, type: !28)
!2778 = !DILocation(line: 104, column: 41, scope: !2768, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 125, column: 16, scope: !2780, inlinedAt: !2759)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !2682, line: 122, column: 11)
!2781 = distinct !DILexicalBlock(scope: !2765, file: !2682, line: 121, column: 5)
!2782 = !DILocation(line: 104, column: 80, scope: !2768, inlinedAt: !2779)
!2783 = !DILocation(line: 104, column: 90, scope: !2768, inlinedAt: !2779)
!2784 = !DILocation(line: 106, column: 7, scope: !2785, inlinedAt: !2779)
!2785 = distinct !DILexicalBlock(scope: !2768, file: !2682, line: 106, column: 7)
!2786 = !DILocation(line: 106, column: 7, scope: !2768, inlinedAt: !2779)
!2787 = !DILocalVariable(name: "s2", arg: 2, scope: !2788, file: !2682, line: 90, type: !44)
!2788 = distinct !DISubprogram(name: "strcaseeq5", scope: !2682, file: !2682, line: 90, type: !2789, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!30, !44, !44, !28, !28, !28, !28}
!2791 = !{!2792, !2787, !2793, !2794, !2795, !2796}
!2792 = !DILocalVariable(name: "s1", arg: 1, scope: !2788, file: !2682, line: 90, type: !44)
!2793 = !DILocalVariable(name: "s25", arg: 3, scope: !2788, file: !2682, line: 90, type: !28)
!2794 = !DILocalVariable(name: "s26", arg: 4, scope: !2788, file: !2682, line: 90, type: !28)
!2795 = !DILocalVariable(name: "s27", arg: 5, scope: !2788, file: !2682, line: 90, type: !28)
!2796 = !DILocalVariable(name: "s28", arg: 6, scope: !2788, file: !2682, line: 90, type: !28)
!2797 = !DILocation(line: 90, column: 41, scope: !2788, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 111, column: 16, scope: !2799, inlinedAt: !2779)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !2682, line: 108, column: 11)
!2800 = distinct !DILexicalBlock(scope: !2785, file: !2682, line: 107, column: 5)
!2801 = !DILocation(line: 90, column: 70, scope: !2788, inlinedAt: !2798)
!2802 = !DILocation(line: 90, column: 80, scope: !2788, inlinedAt: !2798)
!2803 = !DILocation(line: 92, column: 7, scope: !2804, inlinedAt: !2798)
!2804 = distinct !DILexicalBlock(scope: !2788, file: !2682, line: 92, column: 7)
!2805 = !DILocation(line: 92, column: 7, scope: !2788, inlinedAt: !2798)
!2806 = !DILocation(line: 227, column: 12, scope: !2698)
!2807 = !DILocation(line: 227, column: 21, scope: !2698)
!2808 = !DILocation(line: 227, column: 5, scope: !2698)
!2809 = !DILocation(line: 146, column: 41, scope: !2704, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 167, column: 16, scope: !2719, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 228, column: 7, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2663, file: !121, line: 228, column: 7)
!2813 = !DILocation(line: 146, column: 110, scope: !2704, inlinedAt: !2810)
!2814 = !DILocation(line: 146, column: 120, scope: !2704, inlinedAt: !2810)
!2815 = !DILocation(line: 148, column: 7, scope: !2724, inlinedAt: !2810)
!2816 = !DILocation(line: 132, column: 41, scope: !2726, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 153, column: 16, scope: !2740, inlinedAt: !2810)
!2818 = !DILocation(line: 132, column: 100, scope: !2726, inlinedAt: !2817)
!2819 = !DILocation(line: 132, column: 110, scope: !2726, inlinedAt: !2817)
!2820 = !DILocation(line: 134, column: 7, scope: !2745, inlinedAt: !2817)
!2821 = !DILocation(line: 134, column: 7, scope: !2726, inlinedAt: !2817)
!2822 = !DILocation(line: 118, column: 41, scope: !2747, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 139, column: 16, scope: !2760, inlinedAt: !2817)
!2824 = !DILocation(line: 118, column: 90, scope: !2747, inlinedAt: !2823)
!2825 = !DILocation(line: 118, column: 100, scope: !2747, inlinedAt: !2823)
!2826 = !DILocation(line: 120, column: 7, scope: !2765, inlinedAt: !2823)
!2827 = !DILocation(line: 120, column: 7, scope: !2747, inlinedAt: !2823)
!2828 = !DILocation(line: 104, column: 41, scope: !2768, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 125, column: 16, scope: !2780, inlinedAt: !2823)
!2830 = !DILocation(line: 104, column: 80, scope: !2768, inlinedAt: !2829)
!2831 = !DILocation(line: 104, column: 90, scope: !2768, inlinedAt: !2829)
!2832 = !DILocation(line: 106, column: 7, scope: !2785, inlinedAt: !2829)
!2833 = !DILocation(line: 106, column: 7, scope: !2768, inlinedAt: !2829)
!2834 = !DILocation(line: 90, column: 41, scope: !2788, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 111, column: 16, scope: !2799, inlinedAt: !2829)
!2836 = !DILocation(line: 90, column: 70, scope: !2788, inlinedAt: !2835)
!2837 = !DILocation(line: 90, column: 80, scope: !2788, inlinedAt: !2835)
!2838 = !DILocation(line: 92, column: 7, scope: !2804, inlinedAt: !2835)
!2839 = !DILocation(line: 92, column: 7, scope: !2788, inlinedAt: !2835)
!2840 = !DILocalVariable(name: "s2", arg: 2, scope: !2841, file: !2682, line: 76, type: !44)
!2841 = distinct !DISubprogram(name: "strcaseeq6", scope: !2682, file: !2682, line: 76, type: !2842, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!30, !44, !44, !28, !28, !28}
!2844 = !{!2845, !2840, !2846, !2847, !2848}
!2845 = !DILocalVariable(name: "s1", arg: 1, scope: !2841, file: !2682, line: 76, type: !44)
!2846 = !DILocalVariable(name: "s26", arg: 3, scope: !2841, file: !2682, line: 76, type: !28)
!2847 = !DILocalVariable(name: "s27", arg: 4, scope: !2841, file: !2682, line: 76, type: !28)
!2848 = !DILocalVariable(name: "s28", arg: 5, scope: !2841, file: !2682, line: 76, type: !28)
!2849 = !DILocation(line: 76, column: 41, scope: !2841, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 97, column: 16, scope: !2851, inlinedAt: !2835)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !2682, line: 94, column: 11)
!2852 = distinct !DILexicalBlock(scope: !2804, file: !2682, line: 93, column: 5)
!2853 = !DILocation(line: 76, column: 60, scope: !2841, inlinedAt: !2850)
!2854 = !DILocation(line: 76, column: 70, scope: !2841, inlinedAt: !2850)
!2855 = !DILocation(line: 78, column: 7, scope: !2856, inlinedAt: !2850)
!2856 = distinct !DILexicalBlock(scope: !2841, file: !2682, line: 78, column: 7)
!2857 = !DILocation(line: 78, column: 7, scope: !2841, inlinedAt: !2850)
!2858 = !DILocalVariable(name: "s2", arg: 2, scope: !2859, file: !2682, line: 62, type: !44)
!2859 = distinct !DISubprogram(name: "strcaseeq7", scope: !2682, file: !2682, line: 62, type: !2860, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2862)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!30, !44, !44, !28, !28}
!2862 = !{!2863, !2858, !2864, !2865}
!2863 = !DILocalVariable(name: "s1", arg: 1, scope: !2859, file: !2682, line: 62, type: !44)
!2864 = !DILocalVariable(name: "s27", arg: 3, scope: !2859, file: !2682, line: 62, type: !28)
!2865 = !DILocalVariable(name: "s28", arg: 4, scope: !2859, file: !2682, line: 62, type: !28)
!2866 = !DILocation(line: 62, column: 41, scope: !2859, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 83, column: 16, scope: !2868, inlinedAt: !2850)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !2682, line: 80, column: 11)
!2869 = distinct !DILexicalBlock(scope: !2856, file: !2682, line: 79, column: 5)
!2870 = !DILocation(line: 62, column: 50, scope: !2859, inlinedAt: !2867)
!2871 = !DILocation(line: 62, column: 60, scope: !2859, inlinedAt: !2867)
!2872 = !DILocation(line: 64, column: 7, scope: !2873, inlinedAt: !2867)
!2873 = distinct !DILexicalBlock(scope: !2859, file: !2682, line: 64, column: 7)
!2874 = !DILocation(line: 228, column: 7, scope: !2663)
!2875 = !DILocation(line: 229, column: 12, scope: !2812)
!2876 = !DILocation(line: 229, column: 21, scope: !2812)
!2877 = !DILocation(line: 229, column: 5, scope: !2812)
!2878 = !DILocation(line: 231, column: 13, scope: !2663)
!2879 = !DILocation(line: 231, column: 11, scope: !2663)
!2880 = !DILocation(line: 231, column: 3, scope: !2663)
!2881 = !DILocation(line: 232, column: 1, scope: !2663)
!2882 = distinct !DISubprogram(name: "quotearg_alloc", scope: !121, file: !121, line: 791, type: !2883, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!27, !44, !115, !2009}
!2885 = !{!2886, !2887, !2888}
!2886 = !DILocalVariable(name: "arg", arg: 1, scope: !2882, file: !121, line: 791, type: !44)
!2887 = !DILocalVariable(name: "argsize", arg: 2, scope: !2882, file: !121, line: 791, type: !115)
!2888 = !DILocalVariable(name: "o", arg: 3, scope: !2882, file: !121, line: 792, type: !2009)
!2889 = !DILocation(line: 791, column: 29, scope: !2882)
!2890 = !DILocation(line: 791, column: 41, scope: !2882)
!2891 = !DILocation(line: 792, column: 47, scope: !2882)
!2892 = !DILocalVariable(name: "arg", arg: 1, scope: !2893, file: !121, line: 804, type: !44)
!2893 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !121, file: !121, line: 804, type: !2894, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2896)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!27, !44, !115, !546, !2009}
!2896 = !{!2892, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904}
!2897 = !DILocalVariable(name: "argsize", arg: 2, scope: !2893, file: !121, line: 804, type: !115)
!2898 = !DILocalVariable(name: "size", arg: 3, scope: !2893, file: !121, line: 804, type: !546)
!2899 = !DILocalVariable(name: "o", arg: 4, scope: !2893, file: !121, line: 805, type: !2009)
!2900 = !DILocalVariable(name: "p", scope: !2893, file: !121, line: 807, type: !2009)
!2901 = !DILocalVariable(name: "e", scope: !2893, file: !121, line: 808, type: !30)
!2902 = !DILocalVariable(name: "flags", scope: !2893, file: !121, line: 810, type: !30)
!2903 = !DILocalVariable(name: "bufsize", scope: !2893, file: !121, line: 811, type: !115)
!2904 = !DILocalVariable(name: "buf", scope: !2893, file: !121, line: 815, type: !27)
!2905 = !DILocation(line: 804, column: 33, scope: !2893, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 794, column: 10, scope: !2882)
!2907 = !DILocation(line: 804, column: 45, scope: !2893, inlinedAt: !2906)
!2908 = !DILocation(line: 804, column: 62, scope: !2893, inlinedAt: !2906)
!2909 = !DILocation(line: 805, column: 51, scope: !2893, inlinedAt: !2906)
!2910 = !DILocation(line: 807, column: 37, scope: !2893, inlinedAt: !2906)
!2911 = !DILocation(line: 807, column: 33, scope: !2893, inlinedAt: !2906)
!2912 = !DILocation(line: 808, column: 11, scope: !2893, inlinedAt: !2906)
!2913 = !DILocation(line: 808, column: 7, scope: !2893, inlinedAt: !2906)
!2914 = !DILocation(line: 810, column: 18, scope: !2893, inlinedAt: !2906)
!2915 = !DILocation(line: 810, column: 24, scope: !2893, inlinedAt: !2906)
!2916 = !DILocation(line: 810, column: 7, scope: !2893, inlinedAt: !2906)
!2917 = !DILocation(line: 811, column: 69, scope: !2893, inlinedAt: !2906)
!2918 = !DILocation(line: 812, column: 53, scope: !2893, inlinedAt: !2906)
!2919 = !DILocation(line: 813, column: 49, scope: !2893, inlinedAt: !2906)
!2920 = !DILocation(line: 814, column: 49, scope: !2893, inlinedAt: !2906)
!2921 = !DILocation(line: 811, column: 20, scope: !2893, inlinedAt: !2906)
!2922 = !DILocation(line: 814, column: 62, scope: !2893, inlinedAt: !2906)
!2923 = !DILocation(line: 811, column: 10, scope: !2893, inlinedAt: !2906)
!2924 = !DILocalVariable(name: "n", arg: 1, scope: !2925, file: !542, line: 220, type: !115)
!2925 = distinct !DISubprogram(name: "xcharalloc", scope: !542, file: !542, line: 220, type: !2926, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!27, !115}
!2928 = !{!2924}
!2929 = !DILocation(line: 220, column: 20, scope: !2925, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 815, column: 15, scope: !2893, inlinedAt: !2906)
!2931 = !DILocation(line: 222, column: 10, scope: !2925, inlinedAt: !2930)
!2932 = !DILocation(line: 815, column: 9, scope: !2893, inlinedAt: !2906)
!2933 = !DILocation(line: 816, column: 60, scope: !2893, inlinedAt: !2906)
!2934 = !DILocation(line: 818, column: 32, scope: !2893, inlinedAt: !2906)
!2935 = !DILocation(line: 818, column: 47, scope: !2893, inlinedAt: !2906)
!2936 = !DILocation(line: 816, column: 3, scope: !2893, inlinedAt: !2906)
!2937 = !DILocation(line: 819, column: 9, scope: !2893, inlinedAt: !2906)
!2938 = !DILocation(line: 794, column: 3, scope: !2882)
!2939 = !DILocation(line: 804, column: 33, scope: !2893)
!2940 = !DILocation(line: 804, column: 45, scope: !2893)
!2941 = !DILocation(line: 804, column: 62, scope: !2893)
!2942 = !DILocation(line: 805, column: 51, scope: !2893)
!2943 = !DILocation(line: 807, column: 37, scope: !2893)
!2944 = !DILocation(line: 807, column: 33, scope: !2893)
!2945 = !DILocation(line: 808, column: 11, scope: !2893)
!2946 = !DILocation(line: 808, column: 7, scope: !2893)
!2947 = !DILocation(line: 810, column: 18, scope: !2893)
!2948 = !DILocation(line: 810, column: 27, scope: !2893)
!2949 = !DILocation(line: 810, column: 24, scope: !2893)
!2950 = !DILocation(line: 810, column: 7, scope: !2893)
!2951 = !DILocation(line: 811, column: 69, scope: !2893)
!2952 = !DILocation(line: 812, column: 53, scope: !2893)
!2953 = !DILocation(line: 813, column: 49, scope: !2893)
!2954 = !DILocation(line: 814, column: 49, scope: !2893)
!2955 = !DILocation(line: 811, column: 20, scope: !2893)
!2956 = !DILocation(line: 814, column: 62, scope: !2893)
!2957 = !DILocation(line: 811, column: 10, scope: !2893)
!2958 = !DILocation(line: 220, column: 20, scope: !2925, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 815, column: 15, scope: !2893)
!2960 = !DILocation(line: 222, column: 10, scope: !2925, inlinedAt: !2959)
!2961 = !DILocation(line: 815, column: 9, scope: !2893)
!2962 = !DILocation(line: 816, column: 60, scope: !2893)
!2963 = !DILocation(line: 818, column: 32, scope: !2893)
!2964 = !DILocation(line: 818, column: 47, scope: !2893)
!2965 = !DILocation(line: 816, column: 3, scope: !2893)
!2966 = !DILocation(line: 819, column: 9, scope: !2893)
!2967 = !DILocation(line: 820, column: 7, scope: !2893)
!2968 = !DILocation(line: 821, column: 11, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2893, file: !121, line: 820, column: 7)
!2970 = !{!1389, !1389, i64 0}
!2971 = !DILocation(line: 821, column: 5, scope: !2969)
!2972 = !DILocation(line: 822, column: 3, scope: !2893)
!2973 = distinct !DISubprogram(name: "quotearg_free", scope: !121, file: !121, line: 840, type: !956, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !2974)
!2974 = !{!2975, !2976}
!2975 = !DILocalVariable(name: "sv", scope: !2973, file: !121, line: 842, type: !147)
!2976 = !DILocalVariable(name: "i", scope: !2973, file: !121, line: 843, type: !30)
!2977 = !DILocation(line: 842, column: 24, scope: !2973)
!2978 = !DILocation(line: 842, column: 19, scope: !2973)
!2979 = !DILocation(line: 843, column: 7, scope: !2973)
!2980 = !DILocation(line: 844, column: 19, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !121, line: 844, column: 3)
!2982 = distinct !DILexicalBlock(scope: !2973, file: !121, line: 844, column: 3)
!2983 = !DILocation(line: 844, column: 17, scope: !2981)
!2984 = !DILocation(line: 844, column: 3, scope: !2982)
!2985 = !DILocation(line: 845, column: 17, scope: !2981)
!2986 = !{!2987, !594, i64 8}
!2987 = !{!"slotvec", !1389, i64 0, !594, i64 8}
!2988 = !DILocation(line: 845, column: 5, scope: !2981)
!2989 = !DILocation(line: 844, column: 28, scope: !2981)
!2990 = distinct !{!2990, !2984, !2991}
!2991 = !DILocation(line: 845, column: 20, scope: !2982)
!2992 = !DILocation(line: 846, column: 13, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2973, file: !121, line: 846, column: 7)
!2994 = !DILocation(line: 846, column: 17, scope: !2993)
!2995 = !DILocation(line: 846, column: 7, scope: !2973)
!2996 = !DILocation(line: 848, column: 7, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2993, file: !121, line: 847, column: 5)
!2998 = !DILocation(line: 849, column: 21, scope: !2997)
!2999 = !{!2987, !1389, i64 0}
!3000 = !DILocation(line: 850, column: 20, scope: !2997)
!3001 = !DILocation(line: 851, column: 5, scope: !2997)
!3002 = !DILocation(line: 852, column: 10, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2973, file: !121, line: 852, column: 7)
!3004 = !DILocation(line: 852, column: 7, scope: !2973)
!3005 = !DILocation(line: 854, column: 13, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3003, file: !121, line: 853, column: 5)
!3007 = !DILocation(line: 854, column: 7, scope: !3006)
!3008 = !DILocation(line: 855, column: 15, scope: !3006)
!3009 = !DILocation(line: 856, column: 5, scope: !3006)
!3010 = !DILocation(line: 857, column: 10, scope: !2973)
!3011 = !DILocation(line: 858, column: 1, scope: !2973)
!3012 = distinct !DISubprogram(name: "quotearg_n", scope: !121, file: !121, line: 922, type: !3013, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3015)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!27, !30, !44}
!3015 = !{!3016, !3017}
!3016 = !DILocalVariable(name: "n", arg: 1, scope: !3012, file: !121, line: 922, type: !30)
!3017 = !DILocalVariable(name: "arg", arg: 2, scope: !3012, file: !121, line: 922, type: !44)
!3018 = !DILocation(line: 922, column: 17, scope: !3012)
!3019 = !DILocation(line: 922, column: 32, scope: !3012)
!3020 = !DILocation(line: 924, column: 10, scope: !3012)
!3021 = !DILocation(line: 924, column: 3, scope: !3012)
!3022 = distinct !DISubprogram(name: "quotearg_n_options", scope: !121, file: !121, line: 869, type: !3023, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!27, !30, !44, !115, !2009}
!3025 = !{!3026, !3027, !3028, !3029, !3030, !3031, !3032, !3035, !3037, !3038, !3039}
!3026 = !DILocalVariable(name: "n", arg: 1, scope: !3022, file: !121, line: 869, type: !30)
!3027 = !DILocalVariable(name: "arg", arg: 2, scope: !3022, file: !121, line: 869, type: !44)
!3028 = !DILocalVariable(name: "argsize", arg: 3, scope: !3022, file: !121, line: 869, type: !115)
!3029 = !DILocalVariable(name: "options", arg: 4, scope: !3022, file: !121, line: 870, type: !2009)
!3030 = !DILocalVariable(name: "e", scope: !3022, file: !121, line: 872, type: !30)
!3031 = !DILocalVariable(name: "sv", scope: !3022, file: !121, line: 874, type: !147)
!3032 = !DILocalVariable(name: "preallocated", scope: !3033, file: !121, line: 881, type: !75)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !121, line: 880, column: 5)
!3034 = distinct !DILexicalBlock(scope: !3022, file: !121, line: 879, column: 7)
!3035 = !DILocalVariable(name: "size", scope: !3036, file: !121, line: 894, type: !115)
!3036 = distinct !DILexicalBlock(scope: !3022, file: !121, line: 893, column: 3)
!3037 = !DILocalVariable(name: "val", scope: !3036, file: !121, line: 895, type: !27)
!3038 = !DILocalVariable(name: "flags", scope: !3036, file: !121, line: 897, type: !30)
!3039 = !DILocalVariable(name: "qsize", scope: !3036, file: !121, line: 898, type: !115)
!3040 = !DILocation(line: 869, column: 25, scope: !3022)
!3041 = !DILocation(line: 869, column: 40, scope: !3022)
!3042 = !DILocation(line: 869, column: 52, scope: !3022)
!3043 = !DILocation(line: 870, column: 51, scope: !3022)
!3044 = !DILocation(line: 872, column: 11, scope: !3022)
!3045 = !DILocation(line: 872, column: 7, scope: !3022)
!3046 = !DILocation(line: 874, column: 24, scope: !3022)
!3047 = !DILocation(line: 874, column: 19, scope: !3022)
!3048 = !DILocation(line: 876, column: 9, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3022, file: !121, line: 876, column: 7)
!3050 = !DILocation(line: 876, column: 7, scope: !3022)
!3051 = !DILocation(line: 877, column: 5, scope: !3049)
!3052 = !DILocation(line: 879, column: 7, scope: !3034)
!3053 = !DILocation(line: 879, column: 14, scope: !3034)
!3054 = !DILocation(line: 879, column: 7, scope: !3022)
!3055 = !DILocation(line: 881, column: 31, scope: !3033)
!3056 = !DILocation(line: 883, column: 67, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3033, file: !121, line: 883, column: 11)
!3058 = !DILocation(line: 883, column: 11, scope: !3033)
!3059 = !DILocation(line: 884, column: 9, scope: !3057)
!3060 = !DILocation(line: 886, column: 32, scope: !3033)
!3061 = !DILocation(line: 886, column: 61, scope: !3033)
!3062 = !DILocation(line: 886, column: 58, scope: !3033)
!3063 = !DILocation(line: 886, column: 66, scope: !3033)
!3064 = !DILocation(line: 886, column: 22, scope: !3033)
!3065 = !DILocation(line: 886, column: 15, scope: !3033)
!3066 = !DILocation(line: 887, column: 11, scope: !3033)
!3067 = !DILocation(line: 888, column: 15, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3033, file: !121, line: 887, column: 11)
!3069 = !{i64 0, i64 8, !2970, i64 8, i64 8, !593}
!3070 = !DILocation(line: 888, column: 9, scope: !3068)
!3071 = !DILocation(line: 889, column: 20, scope: !3033)
!3072 = !DILocation(line: 889, column: 18, scope: !3033)
!3073 = !DILocation(line: 889, column: 7, scope: !3033)
!3074 = !DILocation(line: 889, column: 38, scope: !3033)
!3075 = !DILocation(line: 889, column: 31, scope: !3033)
!3076 = !DILocation(line: 889, column: 48, scope: !3033)
!3077 = !DILocation(line: 890, column: 14, scope: !3033)
!3078 = !DILocation(line: 891, column: 5, scope: !3033)
!3079 = !DILocation(line: 894, column: 19, scope: !3036)
!3080 = !DILocation(line: 894, column: 25, scope: !3036)
!3081 = !DILocation(line: 894, column: 12, scope: !3036)
!3082 = !DILocation(line: 895, column: 23, scope: !3036)
!3083 = !DILocation(line: 895, column: 11, scope: !3036)
!3084 = !DILocation(line: 897, column: 26, scope: !3036)
!3085 = !DILocation(line: 897, column: 32, scope: !3036)
!3086 = !DILocation(line: 897, column: 9, scope: !3036)
!3087 = !DILocation(line: 899, column: 55, scope: !3036)
!3088 = !DILocation(line: 900, column: 46, scope: !3036)
!3089 = !DILocation(line: 901, column: 55, scope: !3036)
!3090 = !DILocation(line: 902, column: 55, scope: !3036)
!3091 = !DILocation(line: 898, column: 20, scope: !3036)
!3092 = !DILocation(line: 898, column: 12, scope: !3036)
!3093 = !DILocation(line: 904, column: 14, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3036, file: !121, line: 904, column: 9)
!3095 = !DILocation(line: 904, column: 9, scope: !3036)
!3096 = !DILocation(line: 906, column: 35, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3094, file: !121, line: 905, column: 7)
!3098 = !DILocation(line: 906, column: 20, scope: !3097)
!3099 = !DILocation(line: 907, column: 17, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3097, file: !121, line: 907, column: 13)
!3101 = !DILocation(line: 907, column: 13, scope: !3097)
!3102 = !DILocation(line: 908, column: 11, scope: !3100)
!3103 = !DILocation(line: 220, column: 20, scope: !2925, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 909, column: 27, scope: !3097)
!3105 = !DILocation(line: 222, column: 10, scope: !2925, inlinedAt: !3104)
!3106 = !DILocation(line: 909, column: 19, scope: !3097)
!3107 = !DILocation(line: 910, column: 69, scope: !3097)
!3108 = !DILocation(line: 912, column: 44, scope: !3097)
!3109 = !DILocation(line: 913, column: 44, scope: !3097)
!3110 = !DILocation(line: 910, column: 9, scope: !3097)
!3111 = !DILocation(line: 914, column: 7, scope: !3097)
!3112 = !DILocation(line: 916, column: 11, scope: !3036)
!3113 = !DILocation(line: 917, column: 5, scope: !3036)
!3114 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !121, file: !121, line: 928, type: !3115, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!27, !30, !44, !115}
!3117 = !{!3118, !3119, !3120}
!3118 = !DILocalVariable(name: "n", arg: 1, scope: !3114, file: !121, line: 928, type: !30)
!3119 = !DILocalVariable(name: "arg", arg: 2, scope: !3114, file: !121, line: 928, type: !44)
!3120 = !DILocalVariable(name: "argsize", arg: 3, scope: !3114, file: !121, line: 928, type: !115)
!3121 = !DILocation(line: 928, column: 21, scope: !3114)
!3122 = !DILocation(line: 928, column: 36, scope: !3114)
!3123 = !DILocation(line: 928, column: 48, scope: !3114)
!3124 = !DILocation(line: 930, column: 10, scope: !3114)
!3125 = !DILocation(line: 930, column: 3, scope: !3114)
!3126 = distinct !DISubprogram(name: "quotearg", scope: !121, file: !121, line: 934, type: !3127, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3129)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!27, !44}
!3129 = !{!3130}
!3130 = !DILocalVariable(name: "arg", arg: 1, scope: !3126, file: !121, line: 934, type: !44)
!3131 = !DILocation(line: 934, column: 23, scope: !3126)
!3132 = !DILocation(line: 922, column: 17, scope: !3012, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 936, column: 10, scope: !3126)
!3134 = !DILocation(line: 922, column: 32, scope: !3012, inlinedAt: !3133)
!3135 = !DILocation(line: 924, column: 10, scope: !3012, inlinedAt: !3133)
!3136 = !DILocation(line: 936, column: 3, scope: !3126)
!3137 = distinct !DISubprogram(name: "quotearg_mem", scope: !121, file: !121, line: 940, type: !3138, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3140)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!27, !44, !115}
!3140 = !{!3141, !3142}
!3141 = !DILocalVariable(name: "arg", arg: 1, scope: !3137, file: !121, line: 940, type: !44)
!3142 = !DILocalVariable(name: "argsize", arg: 2, scope: !3137, file: !121, line: 940, type: !115)
!3143 = !DILocation(line: 940, column: 27, scope: !3137)
!3144 = !DILocation(line: 940, column: 39, scope: !3137)
!3145 = !DILocation(line: 928, column: 21, scope: !3114, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 942, column: 10, scope: !3137)
!3147 = !DILocation(line: 928, column: 36, scope: !3114, inlinedAt: !3146)
!3148 = !DILocation(line: 928, column: 48, scope: !3114, inlinedAt: !3146)
!3149 = !DILocation(line: 930, column: 10, scope: !3114, inlinedAt: !3146)
!3150 = !DILocation(line: 942, column: 3, scope: !3137)
!3151 = distinct !DISubprogram(name: "quotearg_n_style", scope: !121, file: !121, line: 946, type: !3152, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3154)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!27, !30, !95, !44}
!3154 = !{!3155, !3156, !3157, !3158}
!3155 = !DILocalVariable(name: "n", arg: 1, scope: !3151, file: !121, line: 946, type: !30)
!3156 = !DILocalVariable(name: "s", arg: 2, scope: !3151, file: !121, line: 946, type: !95)
!3157 = !DILocalVariable(name: "arg", arg: 3, scope: !3151, file: !121, line: 946, type: !44)
!3158 = !DILocalVariable(name: "o", scope: !3151, file: !121, line: 948, type: !2010)
!3159 = !DILocalVariable(name: "o", scope: !3160, file: !121, line: 187, type: !128)
!3160 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !121, file: !121, line: 185, type: !3161, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3163)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!128, !95}
!3163 = !{!3164, !3159}
!3164 = !DILocalVariable(name: "style", arg: 1, scope: !3160, file: !121, line: 185, type: !95)
!3165 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3166 = !DILocation(line: 187, column: 26, scope: !3160, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 948, column: 36, scope: !3151)
!3168 = !DILocation(line: 946, column: 23, scope: !3151)
!3169 = !DILocation(line: 946, column: 45, scope: !3151)
!3170 = !DILocation(line: 946, column: 60, scope: !3151)
!3171 = !DILocation(line: 948, column: 3, scope: !3151)
!3172 = !DILocation(line: 948, column: 32, scope: !3151)
!3173 = !DILocation(line: 185, column: 48, scope: !3160, inlinedAt: !3167)
!3174 = !DILocation(line: 187, column: 3, scope: !3160, inlinedAt: !3167)
!3175 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3176 = !DILocation(line: 188, column: 13, scope: !3177, inlinedAt: !3167)
!3177 = distinct !DILexicalBlock(scope: !3160, file: !121, line: 188, column: 7)
!3178 = !DILocation(line: 188, column: 7, scope: !3160, inlinedAt: !3167)
!3179 = !DILocation(line: 189, column: 5, scope: !3177, inlinedAt: !3167)
!3180 = !{!3181}
!3181 = distinct !{!3181, !3182, !"quoting_options_from_style: argument 0"}
!3182 = distinct !{!3182, !"quoting_options_from_style"}
!3183 = !DILocation(line: 191, column: 10, scope: !3160, inlinedAt: !3167)
!3184 = !DILocation(line: 192, column: 1, scope: !3160, inlinedAt: !3167)
!3185 = !DILocation(line: 949, column: 10, scope: !3151)
!3186 = !DILocation(line: 950, column: 1, scope: !3151)
!3187 = !DILocation(line: 949, column: 3, scope: !3151)
!3188 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !121, file: !121, line: 953, type: !3189, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3191)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!27, !30, !95, !44, !115}
!3191 = !{!3192, !3193, !3194, !3195, !3196}
!3192 = !DILocalVariable(name: "n", arg: 1, scope: !3188, file: !121, line: 953, type: !30)
!3193 = !DILocalVariable(name: "s", arg: 2, scope: !3188, file: !121, line: 953, type: !95)
!3194 = !DILocalVariable(name: "arg", arg: 3, scope: !3188, file: !121, line: 954, type: !44)
!3195 = !DILocalVariable(name: "argsize", arg: 4, scope: !3188, file: !121, line: 954, type: !115)
!3196 = !DILocalVariable(name: "o", scope: !3188, file: !121, line: 956, type: !2010)
!3197 = !DILocation(line: 187, column: 26, scope: !3160, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 956, column: 36, scope: !3188)
!3199 = !DILocation(line: 953, column: 27, scope: !3188)
!3200 = !DILocation(line: 953, column: 49, scope: !3188)
!3201 = !DILocation(line: 954, column: 35, scope: !3188)
!3202 = !DILocation(line: 954, column: 47, scope: !3188)
!3203 = !DILocation(line: 956, column: 3, scope: !3188)
!3204 = !DILocation(line: 956, column: 32, scope: !3188)
!3205 = !DILocation(line: 185, column: 48, scope: !3160, inlinedAt: !3198)
!3206 = !DILocation(line: 187, column: 3, scope: !3160, inlinedAt: !3198)
!3207 = !DILocation(line: 188, column: 13, scope: !3177, inlinedAt: !3198)
!3208 = !DILocation(line: 188, column: 7, scope: !3160, inlinedAt: !3198)
!3209 = !DILocation(line: 189, column: 5, scope: !3177, inlinedAt: !3198)
!3210 = !{!3211}
!3211 = distinct !{!3211, !3212, !"quoting_options_from_style: argument 0"}
!3212 = distinct !{!3212, !"quoting_options_from_style"}
!3213 = !DILocation(line: 191, column: 10, scope: !3160, inlinedAt: !3198)
!3214 = !DILocation(line: 192, column: 1, scope: !3160, inlinedAt: !3198)
!3215 = !DILocation(line: 957, column: 10, scope: !3188)
!3216 = !DILocation(line: 958, column: 1, scope: !3188)
!3217 = !DILocation(line: 957, column: 3, scope: !3188)
!3218 = distinct !DISubprogram(name: "quotearg_style", scope: !121, file: !121, line: 961, type: !3219, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3221)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!27, !95, !44}
!3221 = !{!3222, !3223}
!3222 = !DILocalVariable(name: "s", arg: 1, scope: !3218, file: !121, line: 961, type: !95)
!3223 = !DILocalVariable(name: "arg", arg: 2, scope: !3218, file: !121, line: 961, type: !44)
!3224 = !DILocation(line: 187, column: 26, scope: !3160, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 948, column: 36, scope: !3151, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 963, column: 10, scope: !3218)
!3227 = !DILocation(line: 961, column: 36, scope: !3218)
!3228 = !DILocation(line: 961, column: 51, scope: !3218)
!3229 = !DILocation(line: 946, column: 23, scope: !3151, inlinedAt: !3226)
!3230 = !DILocation(line: 946, column: 45, scope: !3151, inlinedAt: !3226)
!3231 = !DILocation(line: 946, column: 60, scope: !3151, inlinedAt: !3226)
!3232 = !DILocation(line: 948, column: 3, scope: !3151, inlinedAt: !3226)
!3233 = !DILocation(line: 948, column: 32, scope: !3151, inlinedAt: !3226)
!3234 = !DILocation(line: 185, column: 48, scope: !3160, inlinedAt: !3225)
!3235 = !DILocation(line: 187, column: 3, scope: !3160, inlinedAt: !3225)
!3236 = !DILocation(line: 188, column: 13, scope: !3177, inlinedAt: !3225)
!3237 = !DILocation(line: 188, column: 7, scope: !3160, inlinedAt: !3225)
!3238 = !DILocation(line: 189, column: 5, scope: !3177, inlinedAt: !3225)
!3239 = !{!3240}
!3240 = distinct !{!3240, !3241, !"quoting_options_from_style: argument 0"}
!3241 = distinct !{!3241, !"quoting_options_from_style"}
!3242 = !DILocation(line: 191, column: 10, scope: !3160, inlinedAt: !3225)
!3243 = !DILocation(line: 192, column: 1, scope: !3160, inlinedAt: !3225)
!3244 = !DILocation(line: 949, column: 10, scope: !3151, inlinedAt: !3226)
!3245 = !DILocation(line: 950, column: 1, scope: !3151, inlinedAt: !3226)
!3246 = !DILocation(line: 963, column: 3, scope: !3218)
!3247 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !121, file: !121, line: 967, type: !3248, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3250)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!27, !95, !44, !115}
!3250 = !{!3251, !3252, !3253}
!3251 = !DILocalVariable(name: "s", arg: 1, scope: !3247, file: !121, line: 967, type: !95)
!3252 = !DILocalVariable(name: "arg", arg: 2, scope: !3247, file: !121, line: 967, type: !44)
!3253 = !DILocalVariable(name: "argsize", arg: 3, scope: !3247, file: !121, line: 967, type: !115)
!3254 = !DILocation(line: 187, column: 26, scope: !3160, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 956, column: 36, scope: !3188, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 969, column: 10, scope: !3247)
!3257 = !DILocation(line: 967, column: 40, scope: !3247)
!3258 = !DILocation(line: 967, column: 55, scope: !3247)
!3259 = !DILocation(line: 967, column: 67, scope: !3247)
!3260 = !DILocation(line: 953, column: 27, scope: !3188, inlinedAt: !3256)
!3261 = !DILocation(line: 953, column: 49, scope: !3188, inlinedAt: !3256)
!3262 = !DILocation(line: 954, column: 35, scope: !3188, inlinedAt: !3256)
!3263 = !DILocation(line: 954, column: 47, scope: !3188, inlinedAt: !3256)
!3264 = !DILocation(line: 956, column: 3, scope: !3188, inlinedAt: !3256)
!3265 = !DILocation(line: 956, column: 32, scope: !3188, inlinedAt: !3256)
!3266 = !DILocation(line: 185, column: 48, scope: !3160, inlinedAt: !3255)
!3267 = !DILocation(line: 187, column: 3, scope: !3160, inlinedAt: !3255)
!3268 = !DILocation(line: 188, column: 13, scope: !3177, inlinedAt: !3255)
!3269 = !DILocation(line: 188, column: 7, scope: !3160, inlinedAt: !3255)
!3270 = !DILocation(line: 189, column: 5, scope: !3177, inlinedAt: !3255)
!3271 = !{!3272}
!3272 = distinct !{!3272, !3273, !"quoting_options_from_style: argument 0"}
!3273 = distinct !{!3273, !"quoting_options_from_style"}
!3274 = !DILocation(line: 191, column: 10, scope: !3160, inlinedAt: !3255)
!3275 = !DILocation(line: 192, column: 1, scope: !3160, inlinedAt: !3255)
!3276 = !DILocation(line: 957, column: 10, scope: !3188, inlinedAt: !3256)
!3277 = !DILocation(line: 958, column: 1, scope: !3188, inlinedAt: !3256)
!3278 = !DILocation(line: 969, column: 3, scope: !3247)
!3279 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !121, file: !121, line: 973, type: !3280, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3282)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!27, !44, !115, !28}
!3282 = !{!3283, !3284, !3285, !3286}
!3283 = !DILocalVariable(name: "arg", arg: 1, scope: !3279, file: !121, line: 973, type: !44)
!3284 = !DILocalVariable(name: "argsize", arg: 2, scope: !3279, file: !121, line: 973, type: !115)
!3285 = !DILocalVariable(name: "ch", arg: 3, scope: !3279, file: !121, line: 973, type: !28)
!3286 = !DILocalVariable(name: "options", scope: !3279, file: !121, line: 975, type: !128)
!3287 = !DILocation(line: 973, column: 32, scope: !3279)
!3288 = !DILocation(line: 973, column: 44, scope: !3279)
!3289 = !DILocation(line: 973, column: 58, scope: !3279)
!3290 = !DILocation(line: 975, column: 3, scope: !3279)
!3291 = !DILocation(line: 976, column: 13, scope: !3279)
!3292 = !{i64 0, i64 4, !742, i64 4, i64 4, !652, i64 8, i64 32, !742, i64 40, i64 8, !593, i64 48, i64 8, !593}
!3293 = !DILocation(line: 975, column: 26, scope: !3279)
!3294 = !DILocation(line: 144, column: 43, scope: !2031, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 977, column: 3, scope: !3279)
!3296 = !DILocation(line: 144, column: 51, scope: !2031, inlinedAt: !3295)
!3297 = !DILocation(line: 144, column: 58, scope: !2031, inlinedAt: !3295)
!3298 = !DILocation(line: 146, column: 17, scope: !2031, inlinedAt: !3295)
!3299 = !DILocation(line: 148, column: 62, scope: !2031, inlinedAt: !3295)
!3300 = !DILocation(line: 148, column: 57, scope: !2031, inlinedAt: !3295)
!3301 = !DILocation(line: 147, column: 17, scope: !2031, inlinedAt: !3295)
!3302 = !DILocation(line: 149, column: 18, scope: !2031, inlinedAt: !3295)
!3303 = !DILocation(line: 149, column: 15, scope: !2031, inlinedAt: !3295)
!3304 = !DILocation(line: 149, column: 7, scope: !2031, inlinedAt: !3295)
!3305 = !DILocation(line: 150, column: 12, scope: !2031, inlinedAt: !3295)
!3306 = !DILocation(line: 150, column: 15, scope: !2031, inlinedAt: !3295)
!3307 = !DILocation(line: 150, column: 25, scope: !2031, inlinedAt: !3295)
!3308 = !DILocation(line: 150, column: 7, scope: !2031, inlinedAt: !3295)
!3309 = !DILocation(line: 151, column: 18, scope: !2031, inlinedAt: !3295)
!3310 = !DILocation(line: 151, column: 23, scope: !2031, inlinedAt: !3295)
!3311 = !DILocation(line: 151, column: 6, scope: !2031, inlinedAt: !3295)
!3312 = !DILocation(line: 978, column: 10, scope: !3279)
!3313 = !DILocation(line: 979, column: 1, scope: !3279)
!3314 = !DILocation(line: 978, column: 3, scope: !3279)
!3315 = distinct !DISubprogram(name: "quotearg_char", scope: !121, file: !121, line: 982, type: !3316, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!27, !44, !28}
!3318 = !{!3319, !3320}
!3319 = !DILocalVariable(name: "arg", arg: 1, scope: !3315, file: !121, line: 982, type: !44)
!3320 = !DILocalVariable(name: "ch", arg: 2, scope: !3315, file: !121, line: 982, type: !28)
!3321 = !DILocation(line: 982, column: 28, scope: !3315)
!3322 = !DILocation(line: 982, column: 38, scope: !3315)
!3323 = !DILocation(line: 973, column: 32, scope: !3279, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 984, column: 10, scope: !3315)
!3325 = !DILocation(line: 973, column: 44, scope: !3279, inlinedAt: !3324)
!3326 = !DILocation(line: 973, column: 58, scope: !3279, inlinedAt: !3324)
!3327 = !DILocation(line: 975, column: 3, scope: !3279, inlinedAt: !3324)
!3328 = !DILocation(line: 976, column: 13, scope: !3279, inlinedAt: !3324)
!3329 = !DILocation(line: 975, column: 26, scope: !3279, inlinedAt: !3324)
!3330 = !DILocation(line: 144, column: 43, scope: !2031, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 977, column: 3, scope: !3279, inlinedAt: !3324)
!3332 = !DILocation(line: 144, column: 51, scope: !2031, inlinedAt: !3331)
!3333 = !DILocation(line: 144, column: 58, scope: !2031, inlinedAt: !3331)
!3334 = !DILocation(line: 146, column: 17, scope: !2031, inlinedAt: !3331)
!3335 = !DILocation(line: 148, column: 62, scope: !2031, inlinedAt: !3331)
!3336 = !DILocation(line: 148, column: 57, scope: !2031, inlinedAt: !3331)
!3337 = !DILocation(line: 147, column: 17, scope: !2031, inlinedAt: !3331)
!3338 = !DILocation(line: 149, column: 18, scope: !2031, inlinedAt: !3331)
!3339 = !DILocation(line: 149, column: 15, scope: !2031, inlinedAt: !3331)
!3340 = !DILocation(line: 149, column: 7, scope: !2031, inlinedAt: !3331)
!3341 = !DILocation(line: 150, column: 12, scope: !2031, inlinedAt: !3331)
!3342 = !DILocation(line: 150, column: 15, scope: !2031, inlinedAt: !3331)
!3343 = !DILocation(line: 150, column: 25, scope: !2031, inlinedAt: !3331)
!3344 = !DILocation(line: 150, column: 7, scope: !2031, inlinedAt: !3331)
!3345 = !DILocation(line: 151, column: 18, scope: !2031, inlinedAt: !3331)
!3346 = !DILocation(line: 151, column: 23, scope: !2031, inlinedAt: !3331)
!3347 = !DILocation(line: 151, column: 6, scope: !2031, inlinedAt: !3331)
!3348 = !DILocation(line: 978, column: 10, scope: !3279, inlinedAt: !3324)
!3349 = !DILocation(line: 979, column: 1, scope: !3279, inlinedAt: !3324)
!3350 = !DILocation(line: 984, column: 3, scope: !3315)
!3351 = distinct !DISubprogram(name: "quotearg_colon", scope: !121, file: !121, line: 988, type: !3127, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3352)
!3352 = !{!3353}
!3353 = !DILocalVariable(name: "arg", arg: 1, scope: !3351, file: !121, line: 988, type: !44)
!3354 = !DILocation(line: 988, column: 29, scope: !3351)
!3355 = !DILocation(line: 982, column: 28, scope: !3315, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 990, column: 10, scope: !3351)
!3357 = !DILocation(line: 982, column: 38, scope: !3315, inlinedAt: !3356)
!3358 = !DILocation(line: 973, column: 32, scope: !3279, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 984, column: 10, scope: !3315, inlinedAt: !3356)
!3360 = !DILocation(line: 973, column: 44, scope: !3279, inlinedAt: !3359)
!3361 = !DILocation(line: 973, column: 58, scope: !3279, inlinedAt: !3359)
!3362 = !DILocation(line: 975, column: 3, scope: !3279, inlinedAt: !3359)
!3363 = !DILocation(line: 976, column: 13, scope: !3279, inlinedAt: !3359)
!3364 = !DILocation(line: 975, column: 26, scope: !3279, inlinedAt: !3359)
!3365 = !DILocation(line: 144, column: 43, scope: !2031, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 977, column: 3, scope: !3279, inlinedAt: !3359)
!3367 = !DILocation(line: 144, column: 51, scope: !2031, inlinedAt: !3366)
!3368 = !DILocation(line: 144, column: 58, scope: !2031, inlinedAt: !3366)
!3369 = !DILocation(line: 146, column: 17, scope: !2031, inlinedAt: !3366)
!3370 = !DILocation(line: 148, column: 57, scope: !2031, inlinedAt: !3366)
!3371 = !DILocation(line: 147, column: 17, scope: !2031, inlinedAt: !3366)
!3372 = !DILocation(line: 149, column: 7, scope: !2031, inlinedAt: !3366)
!3373 = !DILocation(line: 150, column: 12, scope: !2031, inlinedAt: !3366)
!3374 = !DILocation(line: 151, column: 6, scope: !2031, inlinedAt: !3366)
!3375 = !DILocation(line: 978, column: 10, scope: !3279, inlinedAt: !3359)
!3376 = !DILocation(line: 979, column: 1, scope: !3279, inlinedAt: !3359)
!3377 = !DILocation(line: 990, column: 3, scope: !3351)
!3378 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !121, file: !121, line: 994, type: !3138, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3379)
!3379 = !{!3380, !3381}
!3380 = !DILocalVariable(name: "arg", arg: 1, scope: !3378, file: !121, line: 994, type: !44)
!3381 = !DILocalVariable(name: "argsize", arg: 2, scope: !3378, file: !121, line: 994, type: !115)
!3382 = !DILocation(line: 994, column: 33, scope: !3378)
!3383 = !DILocation(line: 994, column: 45, scope: !3378)
!3384 = !DILocation(line: 973, column: 32, scope: !3279, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 996, column: 10, scope: !3378)
!3386 = !DILocation(line: 973, column: 44, scope: !3279, inlinedAt: !3385)
!3387 = !DILocation(line: 973, column: 58, scope: !3279, inlinedAt: !3385)
!3388 = !DILocation(line: 975, column: 3, scope: !3279, inlinedAt: !3385)
!3389 = !DILocation(line: 976, column: 13, scope: !3279, inlinedAt: !3385)
!3390 = !DILocation(line: 975, column: 26, scope: !3279, inlinedAt: !3385)
!3391 = !DILocation(line: 144, column: 43, scope: !2031, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 977, column: 3, scope: !3279, inlinedAt: !3385)
!3393 = !DILocation(line: 144, column: 51, scope: !2031, inlinedAt: !3392)
!3394 = !DILocation(line: 144, column: 58, scope: !2031, inlinedAt: !3392)
!3395 = !DILocation(line: 146, column: 17, scope: !2031, inlinedAt: !3392)
!3396 = !DILocation(line: 148, column: 57, scope: !2031, inlinedAt: !3392)
!3397 = !DILocation(line: 147, column: 17, scope: !2031, inlinedAt: !3392)
!3398 = !DILocation(line: 149, column: 7, scope: !2031, inlinedAt: !3392)
!3399 = !DILocation(line: 150, column: 12, scope: !2031, inlinedAt: !3392)
!3400 = !DILocation(line: 151, column: 6, scope: !2031, inlinedAt: !3392)
!3401 = !DILocation(line: 978, column: 10, scope: !3279, inlinedAt: !3385)
!3402 = !DILocation(line: 979, column: 1, scope: !3279, inlinedAt: !3385)
!3403 = !DILocation(line: 996, column: 3, scope: !3378)
!3404 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !121, file: !121, line: 1000, type: !3152, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3405)
!3405 = !{!3406, !3407, !3408, !3409}
!3406 = !DILocalVariable(name: "n", arg: 1, scope: !3404, file: !121, line: 1000, type: !30)
!3407 = !DILocalVariable(name: "s", arg: 2, scope: !3404, file: !121, line: 1000, type: !95)
!3408 = !DILocalVariable(name: "arg", arg: 3, scope: !3404, file: !121, line: 1000, type: !44)
!3409 = !DILocalVariable(name: "options", scope: !3404, file: !121, line: 1002, type: !128)
!3410 = !DILocation(line: 187, column: 26, scope: !3160, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 1003, column: 13, scope: !3404)
!3412 = !DILocation(line: 1000, column: 29, scope: !3404)
!3413 = !DILocation(line: 1000, column: 51, scope: !3404)
!3414 = !DILocation(line: 1000, column: 66, scope: !3404)
!3415 = !DILocation(line: 1002, column: 3, scope: !3404)
!3416 = !DILocation(line: 185, column: 48, scope: !3160, inlinedAt: !3411)
!3417 = !DILocation(line: 187, column: 3, scope: !3160, inlinedAt: !3411)
!3418 = !DILocation(line: 188, column: 13, scope: !3177, inlinedAt: !3411)
!3419 = !DILocation(line: 188, column: 7, scope: !3160, inlinedAt: !3411)
!3420 = !DILocation(line: 189, column: 5, scope: !3177, inlinedAt: !3411)
!3421 = !{!3422}
!3422 = distinct !{!3422, !3423, !"quoting_options_from_style: argument 0"}
!3423 = distinct !{!3423, !"quoting_options_from_style"}
!3424 = !DILocation(line: 191, column: 10, scope: !3160, inlinedAt: !3411)
!3425 = !DILocation(line: 192, column: 1, scope: !3160, inlinedAt: !3411)
!3426 = !DILocation(line: 1003, column: 13, scope: !3404)
!3427 = !DILocation(line: 1002, column: 26, scope: !3404)
!3428 = !DILocation(line: 144, column: 43, scope: !2031, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 1004, column: 3, scope: !3404)
!3430 = !DILocation(line: 144, column: 51, scope: !2031, inlinedAt: !3429)
!3431 = !DILocation(line: 144, column: 58, scope: !2031, inlinedAt: !3429)
!3432 = !DILocation(line: 146, column: 17, scope: !2031, inlinedAt: !3429)
!3433 = !DILocation(line: 148, column: 57, scope: !2031, inlinedAt: !3429)
!3434 = !DILocation(line: 147, column: 17, scope: !2031, inlinedAt: !3429)
!3435 = !DILocation(line: 149, column: 7, scope: !2031, inlinedAt: !3429)
!3436 = !DILocation(line: 150, column: 12, scope: !2031, inlinedAt: !3429)
!3437 = !DILocation(line: 151, column: 6, scope: !2031, inlinedAt: !3429)
!3438 = !DILocation(line: 1005, column: 10, scope: !3404)
!3439 = !DILocation(line: 1006, column: 1, scope: !3404)
!3440 = !DILocation(line: 1005, column: 3, scope: !3404)
!3441 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !121, file: !121, line: 1009, type: !3442, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3444)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!27, !30, !44, !44, !44}
!3444 = !{!3445, !3446, !3447, !3448}
!3445 = !DILocalVariable(name: "n", arg: 1, scope: !3441, file: !121, line: 1009, type: !30)
!3446 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3441, file: !121, line: 1009, type: !44)
!3447 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3441, file: !121, line: 1010, type: !44)
!3448 = !DILocalVariable(name: "arg", arg: 4, scope: !3441, file: !121, line: 1010, type: !44)
!3449 = !DILocation(line: 1009, column: 24, scope: !3441)
!3450 = !DILocation(line: 1009, column: 39, scope: !3441)
!3451 = !DILocation(line: 1010, column: 32, scope: !3441)
!3452 = !DILocation(line: 1010, column: 57, scope: !3441)
!3453 = !DILocalVariable(name: "n", arg: 1, scope: !3454, file: !121, line: 1017, type: !30)
!3454 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !121, file: !121, line: 1017, type: !3455, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3457)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!27, !30, !44, !44, !44, !115}
!3457 = !{!3453, !3458, !3459, !3460, !3461, !3462}
!3458 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3454, file: !121, line: 1017, type: !44)
!3459 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3454, file: !121, line: 1018, type: !44)
!3460 = !DILocalVariable(name: "arg", arg: 4, scope: !3454, file: !121, line: 1019, type: !44)
!3461 = !DILocalVariable(name: "argsize", arg: 5, scope: !3454, file: !121, line: 1019, type: !115)
!3462 = !DILocalVariable(name: "o", scope: !3454, file: !121, line: 1021, type: !128)
!3463 = !DILocation(line: 1017, column: 28, scope: !3454, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 1012, column: 10, scope: !3441)
!3465 = !DILocation(line: 1017, column: 43, scope: !3454, inlinedAt: !3464)
!3466 = !DILocation(line: 1018, column: 36, scope: !3454, inlinedAt: !3464)
!3467 = !DILocation(line: 1019, column: 36, scope: !3454, inlinedAt: !3464)
!3468 = !DILocation(line: 1019, column: 48, scope: !3454, inlinedAt: !3464)
!3469 = !DILocation(line: 1021, column: 3, scope: !3454, inlinedAt: !3464)
!3470 = !DILocation(line: 1021, column: 30, scope: !3454, inlinedAt: !3464)
!3471 = !DILocation(line: 1021, column: 26, scope: !3454, inlinedAt: !3464)
!3472 = !DILocation(line: 171, column: 45, scope: !2080, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 1022, column: 3, scope: !3454, inlinedAt: !3464)
!3474 = !DILocation(line: 172, column: 33, scope: !2080, inlinedAt: !3473)
!3475 = !DILocation(line: 172, column: 57, scope: !2080, inlinedAt: !3473)
!3476 = !DILocation(line: 176, column: 6, scope: !2080, inlinedAt: !3473)
!3477 = !DILocation(line: 176, column: 12, scope: !2080, inlinedAt: !3473)
!3478 = !DILocation(line: 177, column: 8, scope: !2096, inlinedAt: !3473)
!3479 = !DILocation(line: 177, column: 23, scope: !2096, inlinedAt: !3473)
!3480 = !DILocation(line: 177, column: 19, scope: !2096, inlinedAt: !3473)
!3481 = !DILocation(line: 178, column: 5, scope: !2096, inlinedAt: !3473)
!3482 = !DILocation(line: 179, column: 6, scope: !2080, inlinedAt: !3473)
!3483 = !DILocation(line: 179, column: 17, scope: !2080, inlinedAt: !3473)
!3484 = !DILocation(line: 180, column: 6, scope: !2080, inlinedAt: !3473)
!3485 = !DILocation(line: 180, column: 18, scope: !2080, inlinedAt: !3473)
!3486 = !DILocation(line: 1023, column: 10, scope: !3454, inlinedAt: !3464)
!3487 = !DILocation(line: 1024, column: 1, scope: !3454, inlinedAt: !3464)
!3488 = !DILocation(line: 1012, column: 3, scope: !3441)
!3489 = !DILocation(line: 1017, column: 28, scope: !3454)
!3490 = !DILocation(line: 1017, column: 43, scope: !3454)
!3491 = !DILocation(line: 1018, column: 36, scope: !3454)
!3492 = !DILocation(line: 1019, column: 36, scope: !3454)
!3493 = !DILocation(line: 1019, column: 48, scope: !3454)
!3494 = !DILocation(line: 1021, column: 3, scope: !3454)
!3495 = !DILocation(line: 1021, column: 30, scope: !3454)
!3496 = !DILocation(line: 1021, column: 26, scope: !3454)
!3497 = !DILocation(line: 171, column: 45, scope: !2080, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 1022, column: 3, scope: !3454)
!3499 = !DILocation(line: 172, column: 33, scope: !2080, inlinedAt: !3498)
!3500 = !DILocation(line: 172, column: 57, scope: !2080, inlinedAt: !3498)
!3501 = !DILocation(line: 176, column: 6, scope: !2080, inlinedAt: !3498)
!3502 = !DILocation(line: 176, column: 12, scope: !2080, inlinedAt: !3498)
!3503 = !DILocation(line: 177, column: 8, scope: !2096, inlinedAt: !3498)
!3504 = !DILocation(line: 177, column: 23, scope: !2096, inlinedAt: !3498)
!3505 = !DILocation(line: 177, column: 19, scope: !2096, inlinedAt: !3498)
!3506 = !DILocation(line: 178, column: 5, scope: !2096, inlinedAt: !3498)
!3507 = !DILocation(line: 179, column: 6, scope: !2080, inlinedAt: !3498)
!3508 = !DILocation(line: 179, column: 17, scope: !2080, inlinedAt: !3498)
!3509 = !DILocation(line: 180, column: 6, scope: !2080, inlinedAt: !3498)
!3510 = !DILocation(line: 180, column: 18, scope: !2080, inlinedAt: !3498)
!3511 = !DILocation(line: 1023, column: 10, scope: !3454)
!3512 = !DILocation(line: 1024, column: 1, scope: !3454)
!3513 = !DILocation(line: 1023, column: 3, scope: !3454)
!3514 = distinct !DISubprogram(name: "quotearg_custom", scope: !121, file: !121, line: 1027, type: !3515, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3517)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!27, !44, !44, !44}
!3517 = !{!3518, !3519, !3520}
!3518 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3514, file: !121, line: 1027, type: !44)
!3519 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3514, file: !121, line: 1027, type: !44)
!3520 = !DILocalVariable(name: "arg", arg: 3, scope: !3514, file: !121, line: 1028, type: !44)
!3521 = !DILocation(line: 1027, column: 30, scope: !3514)
!3522 = !DILocation(line: 1027, column: 54, scope: !3514)
!3523 = !DILocation(line: 1028, column: 30, scope: !3514)
!3524 = !DILocation(line: 1009, column: 24, scope: !3441, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 1030, column: 10, scope: !3514)
!3526 = !DILocation(line: 1009, column: 39, scope: !3441, inlinedAt: !3525)
!3527 = !DILocation(line: 1010, column: 32, scope: !3441, inlinedAt: !3525)
!3528 = !DILocation(line: 1010, column: 57, scope: !3441, inlinedAt: !3525)
!3529 = !DILocation(line: 1017, column: 28, scope: !3454, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 1012, column: 10, scope: !3441, inlinedAt: !3525)
!3531 = !DILocation(line: 1017, column: 43, scope: !3454, inlinedAt: !3530)
!3532 = !DILocation(line: 1018, column: 36, scope: !3454, inlinedAt: !3530)
!3533 = !DILocation(line: 1019, column: 36, scope: !3454, inlinedAt: !3530)
!3534 = !DILocation(line: 1019, column: 48, scope: !3454, inlinedAt: !3530)
!3535 = !DILocation(line: 1021, column: 3, scope: !3454, inlinedAt: !3530)
!3536 = !DILocation(line: 1021, column: 30, scope: !3454, inlinedAt: !3530)
!3537 = !DILocation(line: 1021, column: 26, scope: !3454, inlinedAt: !3530)
!3538 = !DILocation(line: 171, column: 45, scope: !2080, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 1022, column: 3, scope: !3454, inlinedAt: !3530)
!3540 = !DILocation(line: 172, column: 33, scope: !2080, inlinedAt: !3539)
!3541 = !DILocation(line: 172, column: 57, scope: !2080, inlinedAt: !3539)
!3542 = !DILocation(line: 176, column: 6, scope: !2080, inlinedAt: !3539)
!3543 = !DILocation(line: 176, column: 12, scope: !2080, inlinedAt: !3539)
!3544 = !DILocation(line: 177, column: 8, scope: !2096, inlinedAt: !3539)
!3545 = !DILocation(line: 177, column: 23, scope: !2096, inlinedAt: !3539)
!3546 = !DILocation(line: 177, column: 19, scope: !2096, inlinedAt: !3539)
!3547 = !DILocation(line: 178, column: 5, scope: !2096, inlinedAt: !3539)
!3548 = !DILocation(line: 179, column: 6, scope: !2080, inlinedAt: !3539)
!3549 = !DILocation(line: 179, column: 17, scope: !2080, inlinedAt: !3539)
!3550 = !DILocation(line: 180, column: 6, scope: !2080, inlinedAt: !3539)
!3551 = !DILocation(line: 180, column: 18, scope: !2080, inlinedAt: !3539)
!3552 = !DILocation(line: 1023, column: 10, scope: !3454, inlinedAt: !3530)
!3553 = !DILocation(line: 1024, column: 1, scope: !3454, inlinedAt: !3530)
!3554 = !DILocation(line: 1030, column: 3, scope: !3514)
!3555 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !121, file: !121, line: 1034, type: !3556, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3558)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!27, !44, !44, !44, !115}
!3558 = !{!3559, !3560, !3561, !3562}
!3559 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3555, file: !121, line: 1034, type: !44)
!3560 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3555, file: !121, line: 1034, type: !44)
!3561 = !DILocalVariable(name: "arg", arg: 3, scope: !3555, file: !121, line: 1035, type: !44)
!3562 = !DILocalVariable(name: "argsize", arg: 4, scope: !3555, file: !121, line: 1035, type: !115)
!3563 = !DILocation(line: 1034, column: 34, scope: !3555)
!3564 = !DILocation(line: 1034, column: 58, scope: !3555)
!3565 = !DILocation(line: 1035, column: 34, scope: !3555)
!3566 = !DILocation(line: 1035, column: 46, scope: !3555)
!3567 = !DILocation(line: 1017, column: 28, scope: !3454, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 1037, column: 10, scope: !3555)
!3569 = !DILocation(line: 1017, column: 43, scope: !3454, inlinedAt: !3568)
!3570 = !DILocation(line: 1018, column: 36, scope: !3454, inlinedAt: !3568)
!3571 = !DILocation(line: 1019, column: 36, scope: !3454, inlinedAt: !3568)
!3572 = !DILocation(line: 1019, column: 48, scope: !3454, inlinedAt: !3568)
!3573 = !DILocation(line: 1021, column: 3, scope: !3454, inlinedAt: !3568)
!3574 = !DILocation(line: 1021, column: 30, scope: !3454, inlinedAt: !3568)
!3575 = !DILocation(line: 1021, column: 26, scope: !3454, inlinedAt: !3568)
!3576 = !DILocation(line: 171, column: 45, scope: !2080, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 1022, column: 3, scope: !3454, inlinedAt: !3568)
!3578 = !DILocation(line: 172, column: 33, scope: !2080, inlinedAt: !3577)
!3579 = !DILocation(line: 172, column: 57, scope: !2080, inlinedAt: !3577)
!3580 = !DILocation(line: 176, column: 6, scope: !2080, inlinedAt: !3577)
!3581 = !DILocation(line: 176, column: 12, scope: !2080, inlinedAt: !3577)
!3582 = !DILocation(line: 177, column: 8, scope: !2096, inlinedAt: !3577)
!3583 = !DILocation(line: 177, column: 23, scope: !2096, inlinedAt: !3577)
!3584 = !DILocation(line: 177, column: 19, scope: !2096, inlinedAt: !3577)
!3585 = !DILocation(line: 178, column: 5, scope: !2096, inlinedAt: !3577)
!3586 = !DILocation(line: 179, column: 6, scope: !2080, inlinedAt: !3577)
!3587 = !DILocation(line: 179, column: 17, scope: !2080, inlinedAt: !3577)
!3588 = !DILocation(line: 180, column: 6, scope: !2080, inlinedAt: !3577)
!3589 = !DILocation(line: 180, column: 18, scope: !2080, inlinedAt: !3577)
!3590 = !DILocation(line: 1023, column: 10, scope: !3454, inlinedAt: !3568)
!3591 = !DILocation(line: 1024, column: 1, scope: !3454, inlinedAt: !3568)
!3592 = !DILocation(line: 1037, column: 3, scope: !3555)
!3593 = distinct !DISubprogram(name: "quote_n_mem", scope: !121, file: !121, line: 1052, type: !3594, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3596)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!44, !30, !44, !115}
!3596 = !{!3597, !3598, !3599}
!3597 = !DILocalVariable(name: "n", arg: 1, scope: !3593, file: !121, line: 1052, type: !30)
!3598 = !DILocalVariable(name: "arg", arg: 2, scope: !3593, file: !121, line: 1052, type: !44)
!3599 = !DILocalVariable(name: "argsize", arg: 3, scope: !3593, file: !121, line: 1052, type: !115)
!3600 = !DILocation(line: 1052, column: 18, scope: !3593)
!3601 = !DILocation(line: 1052, column: 33, scope: !3593)
!3602 = !DILocation(line: 1052, column: 45, scope: !3593)
!3603 = !DILocation(line: 1054, column: 10, scope: !3593)
!3604 = !DILocation(line: 1054, column: 3, scope: !3593)
!3605 = distinct !DISubprogram(name: "quote_mem", scope: !121, file: !121, line: 1058, type: !3606, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3608)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!44, !44, !115}
!3608 = !{!3609, !3610}
!3609 = !DILocalVariable(name: "arg", arg: 1, scope: !3605, file: !121, line: 1058, type: !44)
!3610 = !DILocalVariable(name: "argsize", arg: 2, scope: !3605, file: !121, line: 1058, type: !115)
!3611 = !DILocation(line: 1058, column: 24, scope: !3605)
!3612 = !DILocation(line: 1058, column: 36, scope: !3605)
!3613 = !DILocation(line: 1052, column: 18, scope: !3593, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 1060, column: 10, scope: !3605)
!3615 = !DILocation(line: 1052, column: 33, scope: !3593, inlinedAt: !3614)
!3616 = !DILocation(line: 1052, column: 45, scope: !3593, inlinedAt: !3614)
!3617 = !DILocation(line: 1054, column: 10, scope: !3593, inlinedAt: !3614)
!3618 = !DILocation(line: 1060, column: 3, scope: !3605)
!3619 = distinct !DISubprogram(name: "quote_n", scope: !121, file: !121, line: 1064, type: !3620, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3622)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!44, !30, !44}
!3622 = !{!3623, !3624}
!3623 = !DILocalVariable(name: "n", arg: 1, scope: !3619, file: !121, line: 1064, type: !30)
!3624 = !DILocalVariable(name: "arg", arg: 2, scope: !3619, file: !121, line: 1064, type: !44)
!3625 = !DILocation(line: 1064, column: 14, scope: !3619)
!3626 = !DILocation(line: 1064, column: 29, scope: !3619)
!3627 = !DILocation(line: 1052, column: 18, scope: !3593, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 1066, column: 10, scope: !3619)
!3629 = !DILocation(line: 1052, column: 33, scope: !3593, inlinedAt: !3628)
!3630 = !DILocation(line: 1052, column: 45, scope: !3593, inlinedAt: !3628)
!3631 = !DILocation(line: 1054, column: 10, scope: !3593, inlinedAt: !3628)
!3632 = !DILocation(line: 1066, column: 3, scope: !3619)
!3633 = distinct !DISubprogram(name: "quote", scope: !121, file: !121, line: 1070, type: !1832, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !3634)
!3634 = !{!3635}
!3635 = !DILocalVariable(name: "arg", arg: 1, scope: !3633, file: !121, line: 1070, type: !44)
!3636 = !DILocation(line: 1070, column: 20, scope: !3633)
!3637 = !DILocation(line: 1064, column: 14, scope: !3619, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 1072, column: 10, scope: !3633)
!3639 = !DILocation(line: 1064, column: 29, scope: !3619, inlinedAt: !3638)
!3640 = !DILocation(line: 1052, column: 18, scope: !3593, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 1066, column: 10, scope: !3619, inlinedAt: !3638)
!3642 = !DILocation(line: 1052, column: 33, scope: !3593, inlinedAt: !3641)
!3643 = !DILocation(line: 1052, column: 45, scope: !3593, inlinedAt: !3641)
!3644 = !DILocation(line: 1054, column: 10, scope: !3593, inlinedAt: !3641)
!3645 = !DILocation(line: 1072, column: 3, scope: !3633)
!3646 = distinct !DISubprogram(name: "strintcmp", scope: !3647, file: !3647, line: 29, type: !3648, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !3650)
!3647 = !DIFile(filename: "lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!30, !44, !44}
!3650 = !{!3651, !3652}
!3651 = !DILocalVariable(name: "a", arg: 1, scope: !3646, file: !3647, line: 29, type: !44)
!3652 = !DILocalVariable(name: "b", arg: 2, scope: !3646, file: !3647, line: 29, type: !44)
!3653 = !DILocation(line: 29, column: 24, scope: !3646)
!3654 = !DILocation(line: 29, column: 39, scope: !3646)
!3655 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !3656, file: !3657, line: 115, type: !30)
!3656 = distinct !DISubprogram(name: "numcompare", scope: !3657, file: !3657, line: 114, type: !3658, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !3660)
!3657 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!30, !44, !44, !30, !30}
!3660 = !{!3661, !3662, !3655, !3663, !3664, !3665, !3666, !3667, !3668}
!3661 = !DILocalVariable(name: "a", arg: 1, scope: !3656, file: !3657, line: 114, type: !44)
!3662 = !DILocalVariable(name: "b", arg: 2, scope: !3656, file: !3657, line: 114, type: !44)
!3663 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !3656, file: !3657, line: 115, type: !30)
!3664 = !DILocalVariable(name: "tmpa", scope: !3656, file: !3657, line: 117, type: !514)
!3665 = !DILocalVariable(name: "tmpb", scope: !3656, file: !3657, line: 118, type: !514)
!3666 = !DILocalVariable(name: "tmp", scope: !3656, file: !3657, line: 119, type: !30)
!3667 = !DILocalVariable(name: "log_a", scope: !3656, file: !3657, line: 120, type: !115)
!3668 = !DILocalVariable(name: "log_b", scope: !3656, file: !3657, line: 121, type: !115)
!3669 = !DILocation(line: 115, column: 17, scope: !3656, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 31, column: 10, scope: !3646)
!3671 = !DILocation(line: 115, column: 36, scope: !3656, inlinedAt: !3670)
!3672 = !DILocation(line: 117, column: 24, scope: !3656, inlinedAt: !3670)
!3673 = !DILocation(line: 117, column: 17, scope: !3656, inlinedAt: !3670)
!3674 = !DILocation(line: 118, column: 24, scope: !3656, inlinedAt: !3670)
!3675 = !DILocation(line: 118, column: 17, scope: !3656, inlinedAt: !3670)
!3676 = !DILocation(line: 123, column: 12, scope: !3677, inlinedAt: !3670)
!3677 = distinct !DILexicalBlock(scope: !3656, file: !3657, line: 123, column: 7)
!3678 = !DILocation(line: 123, column: 7, scope: !3656, inlinedAt: !3670)
!3679 = distinct !{!3679, !3680, !3682}
!3680 = !DILocation(line: 125, column: 7, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3677, file: !3657, line: 124, column: 5)
!3682 = !DILocation(line: 127, column: 59, scope: !3681)
!3683 = !DILocation(line: 126, column: 17, scope: !3681, inlinedAt: !3670)
!3684 = !DILocation(line: 114, column: 25, scope: !3656, inlinedAt: !3670)
!3685 = !DILocation(line: 126, column: 16, scope: !3681, inlinedAt: !3670)
!3686 = !DILocation(line: 127, column: 19, scope: !3681, inlinedAt: !3670)
!3687 = !DILocation(line: 127, column: 35, scope: !3681, inlinedAt: !3670)
!3688 = !DILocation(line: 128, column: 16, scope: !3689, inlinedAt: !3670)
!3689 = distinct !DILexicalBlock(scope: !3681, file: !3657, line: 128, column: 11)
!3690 = !DILocation(line: 128, column: 11, scope: !3681, inlinedAt: !3670)
!3691 = distinct !{!3691, !3692, !3693}
!3692 = !DILocation(line: 144, column: 7, scope: !3681)
!3693 = !DILocation(line: 146, column: 59, scope: !3681)
!3694 = !DILocation(line: 145, column: 17, scope: !3681, inlinedAt: !3670)
!3695 = !DILocation(line: 134, column: 15, scope: !3696, inlinedAt: !3670)
!3696 = distinct !DILexicalBlock(scope: !3697, file: !3657, line: 134, column: 15)
!3697 = distinct !DILexicalBlock(scope: !3689, file: !3657, line: 129, column: 9)
!3698 = !DILocation(line: 134, column: 15, scope: !3697, inlinedAt: !3670)
!3699 = !DILocation(line: 114, column: 40, scope: !3656, inlinedAt: !3670)
!3700 = !DILocation(line: 136, column: 23, scope: !3697, inlinedAt: !3670)
!3701 = !DILocation(line: 136, column: 39, scope: !3697, inlinedAt: !3670)
!3702 = !DILocation(line: 137, column: 21, scope: !3697, inlinedAt: !3670)
!3703 = !DILocation(line: 137, column: 20, scope: !3697, inlinedAt: !3670)
!3704 = distinct !{!3704, !3705, !3706}
!3705 = !DILocation(line: 136, column: 11, scope: !3697)
!3706 = !DILocation(line: 137, column: 23, scope: !3697)
!3707 = !DILocation(line: 142, column: 20, scope: !3697, inlinedAt: !3670)
!3708 = !DILocation(line: 142, column: 18, scope: !3697, inlinedAt: !3670)
!3709 = !DILocation(line: 142, column: 11, scope: !3697, inlinedAt: !3670)
!3710 = !DILocation(line: 145, column: 16, scope: !3681, inlinedAt: !3670)
!3711 = !DILocation(line: 146, column: 19, scope: !3681, inlinedAt: !3670)
!3712 = !DILocation(line: 146, column: 35, scope: !3681, inlinedAt: !3670)
!3713 = !DILocation(line: 148, column: 14, scope: !3681, inlinedAt: !3670)
!3714 = !DILocation(line: 148, column: 19, scope: !3681, inlinedAt: !3670)
!3715 = !DILocation(line: 148, column: 30, scope: !3681, inlinedAt: !3670)
!3716 = !DILocation(line: 148, column: 27, scope: !3681, inlinedAt: !3670)
!3717 = !DILocation(line: 151, column: 21, scope: !3718, inlinedAt: !3670)
!3718 = distinct !DILexicalBlock(scope: !3681, file: !3657, line: 149, column: 9)
!3719 = !DILocation(line: 151, column: 20, scope: !3718, inlinedAt: !3670)
!3720 = !DILocation(line: 154, column: 21, scope: !3718, inlinedAt: !3670)
!3721 = !DILocation(line: 154, column: 20, scope: !3718, inlinedAt: !3670)
!3722 = distinct !{!3722, !3723, !3724}
!3723 = !DILocation(line: 148, column: 7, scope: !3681)
!3724 = !DILocation(line: 156, column: 9, scope: !3681)
!3725 = !DILocation(line: 148, column: 22, scope: !3681, inlinedAt: !3670)
!3726 = !DILocation(line: 162, column: 18, scope: !3681, inlinedAt: !3670)
!3727 = !DILocation(line: 119, column: 7, scope: !3656, inlinedAt: !3670)
!3728 = !DILocation(line: 120, column: 10, scope: !3656, inlinedAt: !3670)
!3729 = !DILocation(line: 164, column: 23, scope: !3730, inlinedAt: !3670)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !3657, line: 164, column: 7)
!3731 = distinct !DILexicalBlock(scope: !3681, file: !3657, line: 164, column: 7)
!3732 = !DILocation(line: 164, column: 7, scope: !3731, inlinedAt: !3670)
!3733 = !DILocation(line: 166, column: 19, scope: !3730, inlinedAt: !3670)
!3734 = !DILocation(line: 166, column: 18, scope: !3730, inlinedAt: !3670)
!3735 = !DILocation(line: 164, column: 39, scope: !3730, inlinedAt: !3670)
!3736 = distinct !{!3736, !3737, !3738}
!3737 = !DILocation(line: 164, column: 7, scope: !3731)
!3738 = !DILocation(line: 167, column: 37, scope: !3731)
!3739 = !DILocation(line: 121, column: 10, scope: !3656, inlinedAt: !3670)
!3740 = !DILocation(line: 169, column: 23, scope: !3741, inlinedAt: !3670)
!3741 = distinct !DILexicalBlock(scope: !3742, file: !3657, line: 169, column: 7)
!3742 = distinct !DILexicalBlock(scope: !3681, file: !3657, line: 169, column: 7)
!3743 = !DILocation(line: 169, column: 7, scope: !3742, inlinedAt: !3670)
!3744 = !DILocation(line: 171, column: 19, scope: !3741, inlinedAt: !3670)
!3745 = !DILocation(line: 171, column: 18, scope: !3741, inlinedAt: !3670)
!3746 = !DILocation(line: 169, column: 39, scope: !3741, inlinedAt: !3670)
!3747 = distinct !{!3747, !3748, !3749}
!3748 = !DILocation(line: 169, column: 7, scope: !3742)
!3749 = !DILocation(line: 172, column: 37, scope: !3742)
!3750 = !DILocation(line: 174, column: 17, scope: !3751, inlinedAt: !3670)
!3751 = distinct !DILexicalBlock(scope: !3681, file: !3657, line: 174, column: 11)
!3752 = !DILocation(line: 174, column: 11, scope: !3681, inlinedAt: !3670)
!3753 = !DILocation(line: 175, column: 22, scope: !3751, inlinedAt: !3670)
!3754 = !DILocation(line: 175, column: 16, scope: !3751, inlinedAt: !3670)
!3755 = !DILocation(line: 175, column: 9, scope: !3751, inlinedAt: !3670)
!3756 = !DILocation(line: 177, column: 12, scope: !3757, inlinedAt: !3670)
!3757 = distinct !DILexicalBlock(scope: !3681, file: !3657, line: 177, column: 11)
!3758 = !DILocation(line: 178, column: 9, scope: !3757, inlinedAt: !3670)
!3759 = !DILocation(line: 182, column: 17, scope: !3760, inlinedAt: !3670)
!3760 = distinct !DILexicalBlock(scope: !3677, file: !3657, line: 182, column: 12)
!3761 = !DILocation(line: 182, column: 12, scope: !3677, inlinedAt: !3670)
!3762 = distinct !{!3762, !3763, !3765}
!3763 = !DILocation(line: 184, column: 7, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3760, file: !3657, line: 183, column: 5)
!3765 = !DILocation(line: 186, column: 59, scope: !3764)
!3766 = !DILocation(line: 185, column: 17, scope: !3764, inlinedAt: !3670)
!3767 = !DILocation(line: 185, column: 16, scope: !3764, inlinedAt: !3670)
!3768 = !DILocation(line: 186, column: 19, scope: !3764, inlinedAt: !3670)
!3769 = !DILocation(line: 186, column: 35, scope: !3764, inlinedAt: !3670)
!3770 = !DILocation(line: 191, column: 11, scope: !3771, inlinedAt: !3670)
!3771 = distinct !DILexicalBlock(scope: !3764, file: !3657, line: 191, column: 11)
!3772 = !DILocation(line: 191, column: 11, scope: !3764, inlinedAt: !3670)
!3773 = !DILocation(line: 193, column: 19, scope: !3764, inlinedAt: !3670)
!3774 = !DILocation(line: 193, column: 35, scope: !3764, inlinedAt: !3670)
!3775 = !DILocation(line: 194, column: 17, scope: !3764, inlinedAt: !3670)
!3776 = !DILocation(line: 194, column: 16, scope: !3764, inlinedAt: !3670)
!3777 = distinct !{!3777, !3778, !3779}
!3778 = !DILocation(line: 193, column: 7, scope: !3764)
!3779 = !DILocation(line: 194, column: 19, scope: !3764)
!3780 = !DILocation(line: 199, column: 14, scope: !3764, inlinedAt: !3670)
!3781 = !DILocation(line: 199, column: 7, scope: !3764, inlinedAt: !3670)
!3782 = !DILocation(line: 203, column: 19, scope: !3783, inlinedAt: !3670)
!3783 = distinct !DILexicalBlock(scope: !3760, file: !3657, line: 202, column: 5)
!3784 = !DILocation(line: 203, column: 35, scope: !3783, inlinedAt: !3670)
!3785 = !DILocation(line: 204, column: 17, scope: !3783, inlinedAt: !3670)
!3786 = !DILocation(line: 204, column: 16, scope: !3783, inlinedAt: !3670)
!3787 = distinct !{!3787, !3788, !3789}
!3788 = !DILocation(line: 203, column: 7, scope: !3783)
!3789 = !DILocation(line: 204, column: 19, scope: !3783)
!3790 = !DILocation(line: 205, column: 19, scope: !3783, inlinedAt: !3670)
!3791 = !DILocation(line: 205, column: 35, scope: !3783, inlinedAt: !3670)
!3792 = !DILocation(line: 206, column: 17, scope: !3783, inlinedAt: !3670)
!3793 = !DILocation(line: 206, column: 16, scope: !3783, inlinedAt: !3670)
!3794 = distinct !{!3794, !3795, !3796}
!3795 = !DILocation(line: 205, column: 7, scope: !3783)
!3796 = !DILocation(line: 206, column: 19, scope: !3783)
!3797 = !DILocation(line: 208, column: 14, scope: !3783, inlinedAt: !3670)
!3798 = !DILocation(line: 208, column: 19, scope: !3783, inlinedAt: !3670)
!3799 = !DILocation(line: 208, column: 30, scope: !3783, inlinedAt: !3670)
!3800 = !DILocation(line: 208, column: 27, scope: !3783, inlinedAt: !3670)
!3801 = !DILocation(line: 211, column: 21, scope: !3802, inlinedAt: !3670)
!3802 = distinct !DILexicalBlock(scope: !3783, file: !3657, line: 209, column: 9)
!3803 = !DILocation(line: 211, column: 20, scope: !3802, inlinedAt: !3670)
!3804 = !DILocation(line: 214, column: 21, scope: !3802, inlinedAt: !3670)
!3805 = !DILocation(line: 214, column: 20, scope: !3802, inlinedAt: !3670)
!3806 = distinct !{!3806, !3807, !3808}
!3807 = !DILocation(line: 208, column: 7, scope: !3783)
!3808 = !DILocation(line: 216, column: 9, scope: !3783)
!3809 = !DILocation(line: 208, column: 22, scope: !3783, inlinedAt: !3670)
!3810 = !DILocation(line: 222, column: 18, scope: !3783, inlinedAt: !3670)
!3811 = !DILocation(line: 224, column: 23, scope: !3812, inlinedAt: !3670)
!3812 = distinct !DILexicalBlock(scope: !3813, file: !3657, line: 224, column: 7)
!3813 = distinct !DILexicalBlock(scope: !3783, file: !3657, line: 224, column: 7)
!3814 = !DILocation(line: 224, column: 7, scope: !3813, inlinedAt: !3670)
!3815 = !DILocation(line: 226, column: 19, scope: !3812, inlinedAt: !3670)
!3816 = !DILocation(line: 226, column: 18, scope: !3812, inlinedAt: !3670)
!3817 = !DILocation(line: 224, column: 39, scope: !3812, inlinedAt: !3670)
!3818 = distinct !{!3818, !3819, !3820}
!3819 = !DILocation(line: 224, column: 7, scope: !3813)
!3820 = !DILocation(line: 227, column: 37, scope: !3813)
!3821 = !DILocation(line: 229, column: 23, scope: !3822, inlinedAt: !3670)
!3822 = distinct !DILexicalBlock(scope: !3823, file: !3657, line: 229, column: 7)
!3823 = distinct !DILexicalBlock(scope: !3783, file: !3657, line: 229, column: 7)
!3824 = !DILocation(line: 229, column: 7, scope: !3823, inlinedAt: !3670)
!3825 = !DILocation(line: 231, column: 19, scope: !3822, inlinedAt: !3670)
!3826 = !DILocation(line: 231, column: 18, scope: !3822, inlinedAt: !3670)
!3827 = !DILocation(line: 229, column: 39, scope: !3822, inlinedAt: !3670)
!3828 = distinct !{!3828, !3829, !3830}
!3829 = !DILocation(line: 229, column: 7, scope: !3823)
!3830 = !DILocation(line: 232, column: 37, scope: !3823)
!3831 = !DILocation(line: 234, column: 17, scope: !3832, inlinedAt: !3670)
!3832 = distinct !DILexicalBlock(scope: !3783, file: !3657, line: 234, column: 11)
!3833 = !DILocation(line: 234, column: 11, scope: !3783, inlinedAt: !3670)
!3834 = !DILocation(line: 235, column: 22, scope: !3832, inlinedAt: !3670)
!3835 = !DILocation(line: 235, column: 16, scope: !3832, inlinedAt: !3670)
!3836 = !DILocation(line: 235, column: 9, scope: !3832, inlinedAt: !3670)
!3837 = !DILocation(line: 237, column: 12, scope: !3838, inlinedAt: !3670)
!3838 = distinct !DILexicalBlock(scope: !3783, file: !3657, line: 237, column: 11)
!3839 = !DILocation(line: 238, column: 9, scope: !3838, inlinedAt: !3670)
!3840 = !DILocation(line: 31, column: 3, scope: !3646)
!3841 = distinct !DISubprogram(name: "verror", scope: !3842, file: !3842, line: 43, type: !3843, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !528, variables: !3852)
!3842 = !DIFile(filename: "lib/verror.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3843 = !DISubroutineType(types: !3844)
!3844 = !{null, !30, !30, !44, !3845}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !529, size: 192, elements: !3847)
!3847 = !{!3848, !3849, !3850, !3851}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3846, file: !529, baseType: !32, size: 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3846, file: !529, baseType: !32, size: 32, offset: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3846, file: !529, baseType: !29, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3846, file: !529, baseType: !29, size: 64, offset: 128)
!3852 = !{!3853, !3854, !3855, !3856}
!3853 = !DILocalVariable(name: "status", arg: 1, scope: !3841, file: !3842, line: 43, type: !30)
!3854 = !DILocalVariable(name: "errnum", arg: 2, scope: !3841, file: !3842, line: 43, type: !30)
!3855 = !DILocalVariable(name: "format", arg: 3, scope: !3841, file: !3842, line: 43, type: !44)
!3856 = !DILocalVariable(name: "args", arg: 4, scope: !3841, file: !3842, line: 43, type: !3845)
!3857 = !DILocation(line: 43, column: 13, scope: !3841)
!3858 = !DILocation(line: 43, column: 25, scope: !3841)
!3859 = !DILocation(line: 43, column: 45, scope: !3841)
!3860 = !DILocation(line: 43, column: 61, scope: !3841)
!3861 = !DILocation(line: 45, column: 3, scope: !3841)
!3862 = !DILocation(line: 46, column: 1, scope: !3841)
!3863 = distinct !DISubprogram(name: "verror_at_line", scope: !3842, file: !3842, line: 55, type: !3864, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !528, variables: !3866)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{null, !30, !30, !44, !32, !44, !3845}
!3866 = !{!3867, !3868, !3869, !3870, !3871, !3872, !3873}
!3867 = !DILocalVariable(name: "status", arg: 1, scope: !3863, file: !3842, line: 55, type: !30)
!3868 = !DILocalVariable(name: "errnum", arg: 2, scope: !3863, file: !3842, line: 55, type: !30)
!3869 = !DILocalVariable(name: "file", arg: 3, scope: !3863, file: !3842, line: 55, type: !44)
!3870 = !DILocalVariable(name: "line_number", arg: 4, scope: !3863, file: !3842, line: 56, type: !32)
!3871 = !DILocalVariable(name: "format", arg: 5, scope: !3863, file: !3842, line: 56, type: !44)
!3872 = !DILocalVariable(name: "args", arg: 6, scope: !3863, file: !3842, line: 56, type: !3845)
!3873 = !DILocalVariable(name: "message", scope: !3863, file: !3842, line: 58, type: !27)
!3874 = !DILocation(line: 55, column: 21, scope: !3863)
!3875 = !DILocation(line: 55, column: 33, scope: !3863)
!3876 = !DILocation(line: 55, column: 53, scope: !3863)
!3877 = !DILocation(line: 56, column: 30, scope: !3863)
!3878 = !DILocation(line: 56, column: 55, scope: !3863)
!3879 = !DILocation(line: 56, column: 71, scope: !3863)
!3880 = !DILocation(line: 58, column: 19, scope: !3863)
!3881 = !DILocation(line: 58, column: 9, scope: !3863)
!3882 = !DILocation(line: 59, column: 7, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3863, file: !3842, line: 59, column: 7)
!3884 = !DILocation(line: 59, column: 7, scope: !3863)
!3885 = !DILocation(line: 64, column: 11, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !3842, line: 64, column: 11)
!3887 = distinct !DILexicalBlock(scope: !3883, file: !3842, line: 60, column: 5)
!3888 = !DILocation(line: 64, column: 11, scope: !3887)
!3889 = !DILocation(line: 65, column: 9, scope: !3886)
!3890 = !DILocation(line: 67, column: 9, scope: !3886)
!3891 = !DILocation(line: 73, column: 17, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3883, file: !3842, line: 70, column: 5)
!3893 = !DILocation(line: 73, column: 24, scope: !3892)
!3894 = !DILocation(line: 73, column: 7, scope: !3892)
!3895 = !DILocation(line: 74, column: 7, scope: !3892)
!3896 = !DILocation(line: 76, column: 3, scope: !3863)
!3897 = !DILocation(line: 77, column: 1, scope: !3863)
!3898 = distinct !DISubprogram(name: "version_etc_arn", scope: !534, file: !534, line: 62, type: !3899, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !3952)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{null, !3901, !44, !44, !44, !3951, !115}
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3903, line: 7, baseType: !3904)
!3903 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3905, line: 241, size: 1728, elements: !3906)
!3905 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3906 = !{!3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3927, !3928, !3929, !3930, !3931, !3932, !3934, !3936, !3939, !3941, !3942, !3943, !3944, !3945, !3946, !3947}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3904, file: !3905, line: 242, baseType: !30, size: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3904, file: !3905, line: 247, baseType: !27, size: 64, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3904, file: !3905, line: 248, baseType: !27, size: 64, offset: 128)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3904, file: !3905, line: 249, baseType: !27, size: 64, offset: 192)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3904, file: !3905, line: 250, baseType: !27, size: 64, offset: 256)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3904, file: !3905, line: 251, baseType: !27, size: 64, offset: 320)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3904, file: !3905, line: 252, baseType: !27, size: 64, offset: 384)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3904, file: !3905, line: 253, baseType: !27, size: 64, offset: 448)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3904, file: !3905, line: 254, baseType: !27, size: 64, offset: 512)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3904, file: !3905, line: 256, baseType: !27, size: 64, offset: 576)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3904, file: !3905, line: 257, baseType: !27, size: 64, offset: 640)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3904, file: !3905, line: 258, baseType: !27, size: 64, offset: 704)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3904, file: !3905, line: 260, baseType: !3920, size: 64, offset: 768)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3905, line: 156, size: 192, elements: !3922)
!3922 = !{!3923, !3924, !3926}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3921, file: !3905, line: 157, baseType: !3920, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3921, file: !3905, line: 158, baseType: !3925, size: 64, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3921, file: !3905, line: 162, baseType: !30, size: 32, offset: 128)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3904, file: !3905, line: 262, baseType: !3925, size: 64, offset: 832)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3904, file: !3905, line: 264, baseType: !30, size: 32, offset: 896)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3904, file: !3905, line: 268, baseType: !30, size: 32, offset: 928)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3904, file: !3905, line: 270, baseType: !1147, size: 64, offset: 960)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3904, file: !3905, line: 274, baseType: !31, size: 16, offset: 1024)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3904, file: !3905, line: 275, baseType: !3933, size: 8, offset: 1040)
!3933 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3904, file: !3905, line: 276, baseType: !3935, size: 8, offset: 1048)
!3935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8, elements: !719)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3904, file: !3905, line: 280, baseType: !3937, size: 64, offset: 1088)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3905, line: 150, baseType: null)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3904, file: !3905, line: 289, baseType: !3940, size: 64, offset: 1152)
!3940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !524, line: 141, baseType: !1148)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3904, file: !3905, line: 297, baseType: !29, size: 64, offset: 1216)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3904, file: !3905, line: 298, baseType: !29, size: 64, offset: 1280)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3904, file: !3905, line: 299, baseType: !29, size: 64, offset: 1344)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3904, file: !3905, line: 300, baseType: !29, size: 64, offset: 1408)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3904, file: !3905, line: 302, baseType: !115, size: 64, offset: 1472)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3904, file: !3905, line: 303, baseType: !30, size: 32, offset: 1536)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3904, file: !3905, line: 305, baseType: !3948, size: 160, offset: 1568)
!3948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 160, elements: !3949)
!3949 = !{!3950}
!3950 = !DISubrange(count: 20)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!3952 = !{!3953, !3954, !3955, !3956, !3957, !3958}
!3953 = !DILocalVariable(name: "stream", arg: 1, scope: !3898, file: !534, line: 62, type: !3901)
!3954 = !DILocalVariable(name: "command_name", arg: 2, scope: !3898, file: !534, line: 63, type: !44)
!3955 = !DILocalVariable(name: "package", arg: 3, scope: !3898, file: !534, line: 63, type: !44)
!3956 = !DILocalVariable(name: "version", arg: 4, scope: !3898, file: !534, line: 64, type: !44)
!3957 = !DILocalVariable(name: "authors", arg: 5, scope: !3898, file: !534, line: 65, type: !3951)
!3958 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3898, file: !534, line: 65, type: !115)
!3959 = !DILocation(line: 62, column: 24, scope: !3898)
!3960 = !DILocation(line: 63, column: 30, scope: !3898)
!3961 = !DILocation(line: 63, column: 56, scope: !3898)
!3962 = !DILocation(line: 64, column: 30, scope: !3898)
!3963 = !DILocation(line: 65, column: 39, scope: !3898)
!3964 = !DILocation(line: 65, column: 55, scope: !3898)
!3965 = !DILocation(line: 67, column: 7, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3898, file: !534, line: 67, column: 7)
!3967 = !DILocation(line: 67, column: 7, scope: !3898)
!3968 = !DILocation(line: 68, column: 5, scope: !3966)
!3969 = !DILocation(line: 70, column: 5, scope: !3966)
!3970 = !DILocation(line: 84, column: 3, scope: !3898)
!3971 = !DILocation(line: 86, column: 3, scope: !3898)
!3972 = !DILocation(line: 95, column: 3, scope: !3898)
!3973 = !DILocation(line: 99, column: 7, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3898, file: !534, line: 96, column: 5)
!3975 = !DILocation(line: 102, column: 7, scope: !3974)
!3976 = !DILocation(line: 103, column: 7, scope: !3974)
!3977 = !DILocation(line: 106, column: 7, scope: !3974)
!3978 = !DILocation(line: 107, column: 7, scope: !3974)
!3979 = !DILocation(line: 110, column: 7, scope: !3974)
!3980 = !DILocation(line: 112, column: 7, scope: !3974)
!3981 = !DILocation(line: 117, column: 7, scope: !3974)
!3982 = !DILocation(line: 119, column: 7, scope: !3974)
!3983 = !DILocation(line: 124, column: 7, scope: !3974)
!3984 = !DILocation(line: 126, column: 7, scope: !3974)
!3985 = !DILocation(line: 131, column: 7, scope: !3974)
!3986 = !DILocation(line: 134, column: 7, scope: !3974)
!3987 = !DILocation(line: 139, column: 7, scope: !3974)
!3988 = !DILocation(line: 142, column: 7, scope: !3974)
!3989 = !DILocation(line: 147, column: 7, scope: !3974)
!3990 = !DILocation(line: 151, column: 7, scope: !3974)
!3991 = !DILocation(line: 156, column: 7, scope: !3974)
!3992 = !DILocation(line: 160, column: 7, scope: !3974)
!3993 = !DILocation(line: 167, column: 7, scope: !3974)
!3994 = !DILocation(line: 171, column: 7, scope: !3974)
!3995 = !DILocation(line: 173, column: 1, scope: !3898)
!3996 = distinct !DISubprogram(name: "version_etc_ar", scope: !534, file: !534, line: 180, type: !3997, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !3999)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{null, !3901, !44, !44, !44, !3951}
!3999 = !{!4000, !4001, !4002, !4003, !4004, !4005}
!4000 = !DILocalVariable(name: "stream", arg: 1, scope: !3996, file: !534, line: 180, type: !3901)
!4001 = !DILocalVariable(name: "command_name", arg: 2, scope: !3996, file: !534, line: 181, type: !44)
!4002 = !DILocalVariable(name: "package", arg: 3, scope: !3996, file: !534, line: 181, type: !44)
!4003 = !DILocalVariable(name: "version", arg: 4, scope: !3996, file: !534, line: 182, type: !44)
!4004 = !DILocalVariable(name: "authors", arg: 5, scope: !3996, file: !534, line: 182, type: !3951)
!4005 = !DILocalVariable(name: "n_authors", scope: !3996, file: !534, line: 184, type: !115)
!4006 = !DILocation(line: 180, column: 23, scope: !3996)
!4007 = !DILocation(line: 181, column: 29, scope: !3996)
!4008 = !DILocation(line: 181, column: 55, scope: !3996)
!4009 = !DILocation(line: 182, column: 29, scope: !3996)
!4010 = !DILocation(line: 182, column: 59, scope: !3996)
!4011 = !DILocation(line: 184, column: 10, scope: !3996)
!4012 = !DILocation(line: 186, column: 8, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3996, file: !534, line: 186, column: 3)
!4014 = !DILocation(line: 186, column: 23, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4013, file: !534, line: 186, column: 3)
!4016 = !DILocation(line: 186, column: 3, scope: !4013)
!4017 = !DILocation(line: 186, column: 52, scope: !4015)
!4018 = distinct !{!4018, !4016, !4019}
!4019 = !DILocation(line: 187, column: 5, scope: !4013)
!4020 = !DILocation(line: 188, column: 3, scope: !3996)
!4021 = !DILocation(line: 189, column: 1, scope: !3996)
!4022 = distinct !DISubprogram(name: "version_etc_va", scope: !534, file: !534, line: 196, type: !4023, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !4032)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{null, !3901, !44, !44, !44, !4025}
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !531, line: 189, size: 192, elements: !4027)
!4027 = !{!4028, !4029, !4030, !4031}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4026, file: !531, line: 189, baseType: !32, size: 32)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4026, file: !531, line: 189, baseType: !32, size: 32, offset: 32)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4026, file: !531, line: 189, baseType: !29, size: 64, offset: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4026, file: !531, line: 189, baseType: !29, size: 64, offset: 128)
!4032 = !{!4033, !4034, !4035, !4036, !4037, !4038, !4039}
!4033 = !DILocalVariable(name: "stream", arg: 1, scope: !4022, file: !534, line: 196, type: !3901)
!4034 = !DILocalVariable(name: "command_name", arg: 2, scope: !4022, file: !534, line: 197, type: !44)
!4035 = !DILocalVariable(name: "package", arg: 3, scope: !4022, file: !534, line: 197, type: !44)
!4036 = !DILocalVariable(name: "version", arg: 4, scope: !4022, file: !534, line: 198, type: !44)
!4037 = !DILocalVariable(name: "authors", arg: 5, scope: !4022, file: !534, line: 198, type: !4025)
!4038 = !DILocalVariable(name: "n_authors", scope: !4022, file: !534, line: 200, type: !115)
!4039 = !DILocalVariable(name: "authtab", scope: !4022, file: !534, line: 201, type: !4040)
!4040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 640, elements: !124)
!4041 = !DILocation(line: 196, column: 23, scope: !4022)
!4042 = !DILocation(line: 197, column: 29, scope: !4022)
!4043 = !DILocation(line: 197, column: 55, scope: !4022)
!4044 = !DILocation(line: 198, column: 29, scope: !4022)
!4045 = !DILocation(line: 198, column: 46, scope: !4022)
!4046 = !DILocation(line: 201, column: 3, scope: !4022)
!4047 = !DILocation(line: 201, column: 15, scope: !4022)
!4048 = !DILocation(line: 200, column: 10, scope: !4022)
!4049 = !DILocation(line: 205, column: 35, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4051, file: !534, line: 203, column: 3)
!4051 = distinct !DILexicalBlock(scope: !4022, file: !534, line: 203, column: 3)
!4052 = !DILocation(line: 205, column: 14, scope: !4050)
!4053 = !DILocation(line: 205, column: 33, scope: !4050)
!4054 = !DILocation(line: 205, column: 67, scope: !4050)
!4055 = !DILocation(line: 203, column: 3, scope: !4051)
!4056 = !DILocation(line: 208, column: 3, scope: !4022)
!4057 = !DILocation(line: 210, column: 1, scope: !4022)
!4058 = distinct !DISubprogram(name: "version_etc", scope: !534, file: !534, line: 227, type: !4059, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !4061)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{null, !3901, !44, !44, !44, null}
!4061 = !{!4062, !4063, !4064, !4065, !4066}
!4062 = !DILocalVariable(name: "stream", arg: 1, scope: !4058, file: !534, line: 227, type: !3901)
!4063 = !DILocalVariable(name: "command_name", arg: 2, scope: !4058, file: !534, line: 228, type: !44)
!4064 = !DILocalVariable(name: "package", arg: 3, scope: !4058, file: !534, line: 228, type: !44)
!4065 = !DILocalVariable(name: "version", arg: 4, scope: !4058, file: !534, line: 229, type: !44)
!4066 = !DILocalVariable(name: "authors", scope: !4058, file: !534, line: 231, type: !4067)
!4067 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !708, line: 46, baseType: !4068)
!4068 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !710, line: 48, baseType: !4069)
!4069 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !531, line: 231, baseType: !4070)
!4070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4026, size: 192, elements: !719)
!4071 = !DILocation(line: 227, column: 20, scope: !4058)
!4072 = !DILocation(line: 228, column: 26, scope: !4058)
!4073 = !DILocation(line: 228, column: 52, scope: !4058)
!4074 = !DILocation(line: 229, column: 26, scope: !4058)
!4075 = !DILocation(line: 231, column: 3, scope: !4058)
!4076 = !DILocation(line: 231, column: 11, scope: !4058)
!4077 = !DILocation(line: 233, column: 3, scope: !4058)
!4078 = !DILocation(line: 234, column: 3, scope: !4058)
!4079 = !DILocation(line: 235, column: 3, scope: !4058)
!4080 = !DILocation(line: 236, column: 1, scope: !4058)
!4081 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !534, file: !534, line: 239, type: !956, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !65)
!4082 = !DILocation(line: 245, column: 3, scope: !4081)
!4083 = !DILocation(line: 251, column: 3, scope: !4081)
!4084 = !DILocation(line: 256, column: 3, scope: !4081)
!4085 = !DILocation(line: 258, column: 1, scope: !4081)
!4086 = distinct !DISubprogram(name: "xnmalloc", scope: !542, file: !542, line: 105, type: !4087, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !4089)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!29, !115, !115}
!4089 = !{!4090, !4091}
!4090 = !DILocalVariable(name: "n", arg: 1, scope: !4086, file: !542, line: 105, type: !115)
!4091 = !DILocalVariable(name: "s", arg: 2, scope: !4086, file: !542, line: 105, type: !115)
!4092 = !DILocation(line: 105, column: 18, scope: !4086)
!4093 = !DILocation(line: 105, column: 28, scope: !4086)
!4094 = !DILocation(line: 107, column: 7, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4086, file: !542, line: 107, column: 7)
!4096 = !DILocation(line: 107, column: 7, scope: !4086)
!4097 = !DILocation(line: 108, column: 5, scope: !4095)
!4098 = !DILocation(line: 109, column: 21, scope: !4086)
!4099 = !DILocalVariable(name: "n", arg: 1, scope: !4100, file: !4101, line: 39, type: !115)
!4100 = distinct !DISubprogram(name: "xmalloc", scope: !4101, file: !4101, line: 39, type: !4102, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !4104)
!4101 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!29, !115}
!4104 = !{!4099, !4105}
!4105 = !DILocalVariable(name: "p", scope: !4100, file: !4101, line: 41, type: !29)
!4106 = !DILocation(line: 39, column: 17, scope: !4100, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 109, column: 10, scope: !4086)
!4108 = !DILocation(line: 41, column: 13, scope: !4100, inlinedAt: !4107)
!4109 = !DILocation(line: 41, column: 9, scope: !4100, inlinedAt: !4107)
!4110 = !DILocation(line: 42, column: 8, scope: !4111, inlinedAt: !4107)
!4111 = distinct !DILexicalBlock(scope: !4100, file: !4101, line: 42, column: 7)
!4112 = !DILocation(line: 42, column: 15, scope: !4111, inlinedAt: !4107)
!4113 = !DILocation(line: 42, column: 10, scope: !4111, inlinedAt: !4107)
!4114 = !DILocation(line: 43, column: 5, scope: !4111, inlinedAt: !4107)
!4115 = !DILocation(line: 109, column: 3, scope: !4086)
!4116 = !DILocation(line: 39, column: 17, scope: !4100)
!4117 = !DILocation(line: 41, column: 13, scope: !4100)
!4118 = !DILocation(line: 41, column: 9, scope: !4100)
!4119 = !DILocation(line: 42, column: 8, scope: !4111)
!4120 = !DILocation(line: 42, column: 15, scope: !4111)
!4121 = !DILocation(line: 42, column: 10, scope: !4111)
!4122 = !DILocation(line: 43, column: 5, scope: !4111)
!4123 = !DILocation(line: 44, column: 3, scope: !4100)
!4124 = distinct !DISubprogram(name: "xnrealloc", scope: !542, file: !542, line: 118, type: !4125, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !4127)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!29, !29, !115, !115}
!4127 = !{!4128, !4129, !4130}
!4128 = !DILocalVariable(name: "p", arg: 1, scope: !4124, file: !542, line: 118, type: !29)
!4129 = !DILocalVariable(name: "n", arg: 2, scope: !4124, file: !542, line: 118, type: !115)
!4130 = !DILocalVariable(name: "s", arg: 3, scope: !4124, file: !542, line: 118, type: !115)
!4131 = !DILocation(line: 118, column: 18, scope: !4124)
!4132 = !DILocation(line: 118, column: 28, scope: !4124)
!4133 = !DILocation(line: 118, column: 38, scope: !4124)
!4134 = !DILocation(line: 120, column: 7, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4124, file: !542, line: 120, column: 7)
!4136 = !DILocation(line: 120, column: 7, scope: !4124)
!4137 = !DILocation(line: 121, column: 5, scope: !4135)
!4138 = !DILocation(line: 122, column: 25, scope: !4124)
!4139 = !DILocalVariable(name: "p", arg: 1, scope: !4140, file: !4101, line: 51, type: !29)
!4140 = distinct !DISubprogram(name: "xrealloc", scope: !4101, file: !4101, line: 51, type: !4141, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !4143)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!29, !29, !115}
!4143 = !{!4139, !4144}
!4144 = !DILocalVariable(name: "n", arg: 2, scope: !4140, file: !4101, line: 51, type: !115)
!4145 = !DILocation(line: 51, column: 17, scope: !4140, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 122, column: 10, scope: !4124)
!4147 = !DILocation(line: 51, column: 27, scope: !4140, inlinedAt: !4146)
!4148 = !DILocation(line: 53, column: 8, scope: !4149, inlinedAt: !4146)
!4149 = distinct !DILexicalBlock(scope: !4140, file: !4101, line: 53, column: 7)
!4150 = !DILocation(line: 53, column: 13, scope: !4149, inlinedAt: !4146)
!4151 = !DILocation(line: 53, column: 10, scope: !4149, inlinedAt: !4146)
!4152 = !DILocation(line: 57, column: 7, scope: !4153, inlinedAt: !4146)
!4153 = distinct !DILexicalBlock(scope: !4149, file: !4101, line: 54, column: 5)
!4154 = !DILocation(line: 58, column: 7, scope: !4153, inlinedAt: !4146)
!4155 = !DILocation(line: 61, column: 7, scope: !4140, inlinedAt: !4146)
!4156 = !DILocation(line: 62, column: 8, scope: !4157, inlinedAt: !4146)
!4157 = distinct !DILexicalBlock(scope: !4140, file: !4101, line: 62, column: 7)
!4158 = !DILocation(line: 62, column: 13, scope: !4157, inlinedAt: !4146)
!4159 = !DILocation(line: 62, column: 10, scope: !4157, inlinedAt: !4146)
!4160 = !DILocation(line: 63, column: 5, scope: !4157, inlinedAt: !4146)
!4161 = !DILocation(line: 122, column: 3, scope: !4124)
!4162 = !DILocation(line: 51, column: 17, scope: !4140)
!4163 = !DILocation(line: 51, column: 27, scope: !4140)
!4164 = !DILocation(line: 53, column: 8, scope: !4149)
!4165 = !DILocation(line: 53, column: 13, scope: !4149)
!4166 = !DILocation(line: 53, column: 10, scope: !4149)
!4167 = !DILocation(line: 57, column: 7, scope: !4153)
!4168 = !DILocation(line: 58, column: 7, scope: !4153)
!4169 = !DILocation(line: 61, column: 7, scope: !4140)
!4170 = !DILocation(line: 62, column: 8, scope: !4157)
!4171 = !DILocation(line: 62, column: 13, scope: !4157)
!4172 = !DILocation(line: 62, column: 10, scope: !4157)
!4173 = !DILocation(line: 63, column: 5, scope: !4157)
!4174 = !DILocation(line: 65, column: 1, scope: !4140)
!4175 = !DILocation(line: 180, column: 19, scope: !543)
!4176 = !DILocation(line: 180, column: 30, scope: !543)
!4177 = !DILocation(line: 180, column: 41, scope: !543)
!4178 = !DILocation(line: 182, column: 14, scope: !543)
!4179 = !DILocation(line: 182, column: 10, scope: !543)
!4180 = !DILocation(line: 184, column: 9, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !543, file: !542, line: 184, column: 7)
!4182 = !DILocation(line: 184, column: 7, scope: !543)
!4183 = !DILocation(line: 186, column: 13, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4185, file: !542, line: 186, column: 11)
!4185 = distinct !DILexicalBlock(scope: !4181, file: !542, line: 185, column: 5)
!4186 = !DILocation(line: 186, column: 11, scope: !4185)
!4187 = !DILocation(line: 194, column: 30, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4184, file: !542, line: 187, column: 9)
!4189 = !DILocation(line: 195, column: 16, scope: !4188)
!4190 = !DILocation(line: 195, column: 13, scope: !4188)
!4191 = !DILocation(line: 196, column: 9, scope: !4188)
!4192 = !DILocation(line: 204, column: 69, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4194, file: !542, line: 204, column: 11)
!4194 = distinct !DILexicalBlock(scope: !4181, file: !542, line: 199, column: 5)
!4195 = !DILocation(line: 205, column: 11, scope: !4193)
!4196 = !DILocation(line: 204, column: 11, scope: !4194)
!4197 = !DILocation(line: 206, column: 9, scope: !4193)
!4198 = !DILocation(line: 210, column: 7, scope: !543)
!4199 = !DILocation(line: 211, column: 25, scope: !543)
!4200 = !DILocation(line: 51, column: 17, scope: !4140, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 211, column: 10, scope: !543)
!4202 = !DILocation(line: 51, column: 27, scope: !4140, inlinedAt: !4201)
!4203 = !DILocation(line: 53, column: 10, scope: !4149, inlinedAt: !4201)
!4204 = !DILocation(line: 207, column: 14, scope: !4194)
!4205 = !DILocation(line: 207, column: 18, scope: !4194)
!4206 = !DILocation(line: 207, column: 9, scope: !4194)
!4207 = !DILocation(line: 53, column: 8, scope: !4149, inlinedAt: !4201)
!4208 = !DILocation(line: 57, column: 7, scope: !4153, inlinedAt: !4201)
!4209 = !DILocation(line: 58, column: 7, scope: !4153, inlinedAt: !4201)
!4210 = !DILocation(line: 61, column: 7, scope: !4140, inlinedAt: !4201)
!4211 = !DILocation(line: 62, column: 8, scope: !4157, inlinedAt: !4201)
!4212 = !DILocation(line: 62, column: 13, scope: !4157, inlinedAt: !4201)
!4213 = !DILocation(line: 62, column: 10, scope: !4157, inlinedAt: !4201)
!4214 = !DILocation(line: 63, column: 5, scope: !4157, inlinedAt: !4201)
!4215 = !DILocation(line: 211, column: 3, scope: !543)
!4216 = distinct !DISubprogram(name: "xcharalloc", scope: !542, file: !542, line: 220, type: !2926, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !4217)
!4217 = !{!4218}
!4218 = !DILocalVariable(name: "n", arg: 1, scope: !4216, file: !542, line: 220, type: !115)
!4219 = !DILocation(line: 220, column: 20, scope: !4216)
!4220 = !DILocation(line: 39, column: 17, scope: !4100, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 222, column: 10, scope: !4216)
!4222 = !DILocation(line: 41, column: 13, scope: !4100, inlinedAt: !4221)
!4223 = !DILocation(line: 41, column: 9, scope: !4100, inlinedAt: !4221)
!4224 = !DILocation(line: 42, column: 8, scope: !4111, inlinedAt: !4221)
!4225 = !DILocation(line: 42, column: 15, scope: !4111, inlinedAt: !4221)
!4226 = !DILocation(line: 42, column: 10, scope: !4111, inlinedAt: !4221)
!4227 = !DILocation(line: 43, column: 5, scope: !4111, inlinedAt: !4221)
!4228 = !DILocation(line: 222, column: 3, scope: !4216)
!4229 = distinct !DISubprogram(name: "x2realloc", scope: !4101, file: !4101, line: 74, type: !4230, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !4232)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!29, !29, !546}
!4232 = !{!4233, !4234}
!4233 = !DILocalVariable(name: "p", arg: 1, scope: !4229, file: !4101, line: 74, type: !29)
!4234 = !DILocalVariable(name: "pn", arg: 2, scope: !4229, file: !4101, line: 74, type: !546)
!4235 = !DILocation(line: 74, column: 18, scope: !4229)
!4236 = !DILocation(line: 74, column: 29, scope: !4229)
!4237 = !DILocation(line: 180, column: 19, scope: !543, inlinedAt: !4238)
!4238 = distinct !DILocation(line: 76, column: 10, scope: !4229)
!4239 = !DILocation(line: 180, column: 30, scope: !543, inlinedAt: !4238)
!4240 = !DILocation(line: 180, column: 41, scope: !543, inlinedAt: !4238)
!4241 = !DILocation(line: 182, column: 14, scope: !543, inlinedAt: !4238)
!4242 = !DILocation(line: 182, column: 10, scope: !543, inlinedAt: !4238)
!4243 = !DILocation(line: 184, column: 9, scope: !4181, inlinedAt: !4238)
!4244 = !DILocation(line: 184, column: 7, scope: !543, inlinedAt: !4238)
!4245 = !DILocation(line: 186, column: 13, scope: !4184, inlinedAt: !4238)
!4246 = !DILocation(line: 186, column: 11, scope: !4185, inlinedAt: !4238)
!4247 = !DILocation(line: 210, column: 7, scope: !543, inlinedAt: !4238)
!4248 = !DILocation(line: 51, column: 17, scope: !4140, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 211, column: 10, scope: !543, inlinedAt: !4238)
!4250 = !DILocation(line: 51, column: 27, scope: !4140, inlinedAt: !4249)
!4251 = !DILocation(line: 53, column: 10, scope: !4149, inlinedAt: !4249)
!4252 = !DILocation(line: 205, column: 11, scope: !4193, inlinedAt: !4238)
!4253 = !DILocation(line: 204, column: 11, scope: !4194, inlinedAt: !4238)
!4254 = !DILocation(line: 206, column: 9, scope: !4193, inlinedAt: !4238)
!4255 = !DILocation(line: 207, column: 14, scope: !4194, inlinedAt: !4238)
!4256 = !DILocation(line: 207, column: 18, scope: !4194, inlinedAt: !4238)
!4257 = !DILocation(line: 207, column: 9, scope: !4194, inlinedAt: !4238)
!4258 = !DILocation(line: 53, column: 8, scope: !4149, inlinedAt: !4249)
!4259 = !DILocation(line: 57, column: 7, scope: !4153, inlinedAt: !4249)
!4260 = !DILocation(line: 58, column: 7, scope: !4153, inlinedAt: !4249)
!4261 = !DILocation(line: 61, column: 7, scope: !4140, inlinedAt: !4249)
!4262 = !DILocation(line: 62, column: 8, scope: !4157, inlinedAt: !4249)
!4263 = !DILocation(line: 62, column: 13, scope: !4157, inlinedAt: !4249)
!4264 = !DILocation(line: 62, column: 10, scope: !4157, inlinedAt: !4249)
!4265 = !DILocation(line: 63, column: 5, scope: !4157, inlinedAt: !4249)
!4266 = !DILocation(line: 76, column: 3, scope: !4229)
!4267 = distinct !DISubprogram(name: "xzalloc", scope: !4101, file: !4101, line: 84, type: !4102, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !4268)
!4268 = !{!4269}
!4269 = !DILocalVariable(name: "s", arg: 1, scope: !4267, file: !4101, line: 84, type: !115)
!4270 = !DILocation(line: 84, column: 17, scope: !4267)
!4271 = !DILocation(line: 39, column: 17, scope: !4100, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 86, column: 18, scope: !4267)
!4273 = !DILocation(line: 41, column: 13, scope: !4100, inlinedAt: !4272)
!4274 = !DILocation(line: 41, column: 9, scope: !4100, inlinedAt: !4272)
!4275 = !DILocation(line: 42, column: 8, scope: !4111, inlinedAt: !4272)
!4276 = !DILocation(line: 42, column: 15, scope: !4111, inlinedAt: !4272)
!4277 = !DILocation(line: 42, column: 10, scope: !4111, inlinedAt: !4272)
!4278 = !DILocation(line: 43, column: 5, scope: !4111, inlinedAt: !4272)
!4279 = !DILocation(line: 86, column: 10, scope: !4267)
!4280 = !DILocation(line: 86, column: 3, scope: !4267)
!4281 = distinct !DISubprogram(name: "xcalloc", scope: !4101, file: !4101, line: 93, type: !4087, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !4282)
!4282 = !{!4283, !4284, !4285}
!4283 = !DILocalVariable(name: "n", arg: 1, scope: !4281, file: !4101, line: 93, type: !115)
!4284 = !DILocalVariable(name: "s", arg: 2, scope: !4281, file: !4101, line: 93, type: !115)
!4285 = !DILocalVariable(name: "p", scope: !4281, file: !4101, line: 95, type: !29)
!4286 = !DILocation(line: 93, column: 17, scope: !4281)
!4287 = !DILocation(line: 93, column: 27, scope: !4281)
!4288 = !DILocation(line: 100, column: 7, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4281, file: !4101, line: 100, column: 7)
!4290 = !DILocation(line: 101, column: 7, scope: !4289)
!4291 = !DILocation(line: 101, column: 18, scope: !4289)
!4292 = !DILocation(line: 95, column: 9, scope: !4281)
!4293 = !DILocation(line: 101, column: 16, scope: !4289)
!4294 = !DILocation(line: 100, column: 7, scope: !4281)
!4295 = !DILocation(line: 102, column: 5, scope: !4289)
!4296 = !DILocation(line: 103, column: 3, scope: !4281)
!4297 = distinct !DISubprogram(name: "xmemdup", scope: !4101, file: !4101, line: 111, type: !4298, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !4302)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!29, !4300, !115}
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4302 = !{!4303, !4304}
!4303 = !DILocalVariable(name: "p", arg: 1, scope: !4297, file: !4101, line: 111, type: !4300)
!4304 = !DILocalVariable(name: "s", arg: 2, scope: !4297, file: !4101, line: 111, type: !115)
!4305 = !DILocation(line: 111, column: 22, scope: !4297)
!4306 = !DILocation(line: 111, column: 32, scope: !4297)
!4307 = !DILocation(line: 39, column: 17, scope: !4100, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 113, column: 18, scope: !4297)
!4309 = !DILocation(line: 41, column: 13, scope: !4100, inlinedAt: !4308)
!4310 = !DILocation(line: 41, column: 9, scope: !4100, inlinedAt: !4308)
!4311 = !DILocation(line: 42, column: 8, scope: !4111, inlinedAt: !4308)
!4312 = !DILocation(line: 42, column: 15, scope: !4111, inlinedAt: !4308)
!4313 = !DILocation(line: 42, column: 10, scope: !4111, inlinedAt: !4308)
!4314 = !DILocation(line: 43, column: 5, scope: !4111, inlinedAt: !4308)
!4315 = !DILocation(line: 113, column: 10, scope: !4297)
!4316 = !DILocation(line: 113, column: 3, scope: !4297)
!4317 = distinct !DISubprogram(name: "xstrdup", scope: !4101, file: !4101, line: 119, type: !3127, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !4318)
!4318 = !{!4319}
!4319 = !DILocalVariable(name: "string", arg: 1, scope: !4317, file: !4101, line: 119, type: !44)
!4320 = !DILocation(line: 119, column: 22, scope: !4317)
!4321 = !DILocation(line: 121, column: 27, scope: !4317)
!4322 = !DILocation(line: 121, column: 43, scope: !4317)
!4323 = !DILocation(line: 111, column: 22, scope: !4297, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 121, column: 10, scope: !4317)
!4325 = !DILocation(line: 111, column: 32, scope: !4297, inlinedAt: !4324)
!4326 = !DILocation(line: 39, column: 17, scope: !4100, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 113, column: 18, scope: !4297, inlinedAt: !4324)
!4328 = !DILocation(line: 41, column: 13, scope: !4100, inlinedAt: !4327)
!4329 = !DILocation(line: 41, column: 9, scope: !4100, inlinedAt: !4327)
!4330 = !DILocation(line: 42, column: 8, scope: !4111, inlinedAt: !4327)
!4331 = !DILocation(line: 42, column: 15, scope: !4111, inlinedAt: !4327)
!4332 = !DILocation(line: 42, column: 10, scope: !4111, inlinedAt: !4327)
!4333 = !DILocation(line: 43, column: 5, scope: !4111, inlinedAt: !4327)
!4334 = !DILocation(line: 113, column: 10, scope: !4297, inlinedAt: !4324)
!4335 = !DILocation(line: 121, column: 3, scope: !4317)
!4336 = distinct !DISubprogram(name: "xalloc_die", scope: !4337, file: !4337, line: 32, type: !956, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !555, variables: !65)
!4337 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4338 = !DILocation(line: 34, column: 10, scope: !4336)
!4339 = !DILocation(line: 34, column: 33, scope: !4336)
!4340 = !DILocation(line: 34, column: 3, scope: !4336)
!4341 = !DILocation(line: 40, column: 3, scope: !4336)
!4342 = distinct !DISubprogram(name: "xvasprintf", scope: !4343, file: !4343, line: 76, type: !4344, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !4353)
!4343 = !DIFile(filename: "lib/xvasprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!27, !44, !4346}
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !558, size: 192, elements: !4348)
!4348 = !{!4349, !4350, !4351, !4352}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4347, file: !558, baseType: !32, size: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4347, file: !558, baseType: !32, size: 32, offset: 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4347, file: !558, baseType: !29, size: 64, offset: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4347, file: !558, baseType: !29, size: 64, offset: 128)
!4353 = !{!4354, !4355, !4356, !4357, !4359}
!4354 = !DILocalVariable(name: "format", arg: 1, scope: !4342, file: !4343, line: 76, type: !44)
!4355 = !DILocalVariable(name: "args", arg: 2, scope: !4342, file: !4343, line: 76, type: !4346)
!4356 = !DILocalVariable(name: "result", scope: !4342, file: !4343, line: 78, type: !27)
!4357 = !DILocalVariable(name: "argcount", scope: !4358, file: !4343, line: 84, type: !115)
!4358 = distinct !DILexicalBlock(scope: !4342, file: !4343, line: 83, column: 3)
!4359 = !DILocalVariable(name: "f", scope: !4358, file: !4343, line: 85, type: !44)
!4360 = !DILocalVariable(name: "ap", scope: !4361, file: !4343, line: 36, type: !4380)
!4361 = distinct !DISubprogram(name: "xstrcat", scope: !4343, file: !4343, line: 33, type: !4362, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !4364)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!27, !115, !4346}
!4364 = !{!4365, !4366, !4367, !4360, !4368, !4369, !4370, !4371, !4375, !4379}
!4365 = !DILocalVariable(name: "argcount", arg: 1, scope: !4361, file: !4343, line: 33, type: !115)
!4366 = !DILocalVariable(name: "args", arg: 2, scope: !4361, file: !4343, line: 33, type: !4346)
!4367 = !DILocalVariable(name: "result", scope: !4361, file: !4343, line: 35, type: !27)
!4368 = !DILocalVariable(name: "totalsize", scope: !4361, file: !4343, line: 37, type: !115)
!4369 = !DILocalVariable(name: "i", scope: !4361, file: !4343, line: 38, type: !115)
!4370 = !DILocalVariable(name: "p", scope: !4361, file: !4343, line: 39, type: !27)
!4371 = !DILocalVariable(name: "next", scope: !4372, file: !4343, line: 46, type: !44)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !4343, line: 45, column: 5)
!4373 = distinct !DILexicalBlock(scope: !4374, file: !4343, line: 44, column: 3)
!4374 = distinct !DILexicalBlock(scope: !4361, file: !4343, line: 44, column: 3)
!4375 = !DILocalVariable(name: "next", scope: !4376, file: !4343, line: 65, type: !44)
!4376 = distinct !DILexicalBlock(scope: !4377, file: !4343, line: 64, column: 5)
!4377 = distinct !DILexicalBlock(scope: !4378, file: !4343, line: 63, column: 3)
!4378 = distinct !DILexicalBlock(scope: !4361, file: !4343, line: 63, column: 3)
!4379 = !DILocalVariable(name: "len", scope: !4376, file: !4343, line: 66, type: !115)
!4380 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !708, line: 46, baseType: !4381)
!4381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !710, line: 48, baseType: !4382)
!4382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !558, line: 36, baseType: !4383)
!4383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4347, size: 192, elements: !719)
!4384 = !DILocation(line: 36, column: 11, scope: !4361, inlinedAt: !4385)
!4385 = distinct !DILocation(line: 91, column: 18, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4387, file: !4343, line: 89, column: 13)
!4387 = distinct !DILexicalBlock(scope: !4388, file: !4343, line: 88, column: 7)
!4388 = distinct !DILexicalBlock(scope: !4389, file: !4343, line: 87, column: 5)
!4389 = distinct !DILexicalBlock(scope: !4358, file: !4343, line: 87, column: 5)
!4390 = !DILocation(line: 76, column: 25, scope: !4342)
!4391 = !DILocation(line: 76, column: 41, scope: !4342)
!4392 = !DILocation(line: 78, column: 3, scope: !4342)
!4393 = !DILocation(line: 84, column: 12, scope: !4358)
!4394 = !DILocation(line: 85, column: 17, scope: !4358)
!4395 = !DILocation(line: 87, column: 10, scope: !4389)
!4396 = !DILocation(line: 89, column: 13, scope: !4386)
!4397 = !DILocation(line: 89, column: 13, scope: !4387)
!4398 = !DILocation(line: 33, column: 17, scope: !4361, inlinedAt: !4385)
!4399 = !DILocation(line: 33, column: 35, scope: !4361, inlinedAt: !4385)
!4400 = !DILocation(line: 36, column: 3, scope: !4361, inlinedAt: !4385)
!4401 = !DILocation(line: 37, column: 10, scope: !4361, inlinedAt: !4385)
!4402 = !DILocation(line: 43, column: 3, scope: !4361, inlinedAt: !4385)
!4403 = !DILocation(line: 38, column: 10, scope: !4361, inlinedAt: !4385)
!4404 = !DILocation(line: 44, column: 24, scope: !4373, inlinedAt: !4385)
!4405 = !DILocation(line: 44, column: 3, scope: !4374, inlinedAt: !4385)
!4406 = !DILocation(line: 49, column: 3, scope: !4361, inlinedAt: !4385)
!4407 = !DILocation(line: 61, column: 12, scope: !4361, inlinedAt: !4385)
!4408 = !DILocation(line: 35, column: 9, scope: !4361, inlinedAt: !4385)
!4409 = !DILocation(line: 39, column: 9, scope: !4361, inlinedAt: !4385)
!4410 = !DILocation(line: 63, column: 3, scope: !4378, inlinedAt: !4385)
!4411 = !DILocation(line: 46, column: 26, scope: !4372, inlinedAt: !4385)
!4412 = !DILocation(line: 46, column: 19, scope: !4372, inlinedAt: !4385)
!4413 = !DILocation(line: 47, column: 36, scope: !4372, inlinedAt: !4385)
!4414 = !DILocalVariable(name: "size1", arg: 1, scope: !4415, file: !4416, line: 63, type: !115)
!4415 = distinct !DISubprogram(name: "xsum", scope: !4416, file: !4416, line: 63, type: !4417, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !4419)
!4416 = !DIFile(filename: "./lib/xsize.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!115, !115, !115}
!4419 = !{!4414, !4420, !4421}
!4420 = !DILocalVariable(name: "size2", arg: 2, scope: !4415, file: !4416, line: 63, type: !115)
!4421 = !DILocalVariable(name: "sum", scope: !4415, file: !4416, line: 65, type: !115)
!4422 = !DILocation(line: 63, column: 14, scope: !4415, inlinedAt: !4423)
!4423 = distinct !DILocation(line: 47, column: 19, scope: !4372, inlinedAt: !4385)
!4424 = !DILocation(line: 63, column: 28, scope: !4415, inlinedAt: !4423)
!4425 = !DILocation(line: 65, column: 22, scope: !4415, inlinedAt: !4423)
!4426 = !DILocation(line: 65, column: 10, scope: !4415, inlinedAt: !4423)
!4427 = !DILocation(line: 66, column: 15, scope: !4415, inlinedAt: !4423)
!4428 = !DILocation(line: 66, column: 11, scope: !4415, inlinedAt: !4423)
!4429 = !DILocation(line: 44, column: 30, scope: !4373, inlinedAt: !4385)
!4430 = distinct !{!4430, !4431, !4432}
!4431 = !DILocation(line: 44, column: 3, scope: !4374)
!4432 = !DILocation(line: 48, column: 5, scope: !4374)
!4433 = !DILocation(line: 54, column: 42, scope: !4434, inlinedAt: !4385)
!4434 = distinct !DILexicalBlock(scope: !4361, file: !4343, line: 54, column: 7)
!4435 = !DILocation(line: 54, column: 29, scope: !4434, inlinedAt: !4385)
!4436 = !DILocation(line: 56, column: 7, scope: !4437, inlinedAt: !4385)
!4437 = distinct !DILexicalBlock(scope: !4434, file: !4343, line: 55, column: 5)
!4438 = !DILocation(line: 56, column: 13, scope: !4437, inlinedAt: !4385)
!4439 = !DILocation(line: 57, column: 7, scope: !4437, inlinedAt: !4385)
!4440 = !DILocation(line: 65, column: 26, scope: !4376, inlinedAt: !4385)
!4441 = !DILocation(line: 65, column: 19, scope: !4376, inlinedAt: !4385)
!4442 = !DILocation(line: 66, column: 20, scope: !4376, inlinedAt: !4385)
!4443 = !DILocation(line: 66, column: 14, scope: !4376, inlinedAt: !4385)
!4444 = !DILocation(line: 67, column: 7, scope: !4376, inlinedAt: !4385)
!4445 = !DILocation(line: 68, column: 9, scope: !4376, inlinedAt: !4385)
!4446 = !DILocation(line: 63, column: 30, scope: !4377, inlinedAt: !4385)
!4447 = !DILocation(line: 63, column: 24, scope: !4377, inlinedAt: !4385)
!4448 = distinct !{!4448, !4449, !4450}
!4449 = !DILocation(line: 63, column: 3, scope: !4378)
!4450 = !DILocation(line: 69, column: 5, scope: !4378)
!4451 = !DILocation(line: 70, column: 6, scope: !4361, inlinedAt: !4385)
!4452 = !DILocation(line: 72, column: 3, scope: !4361, inlinedAt: !4385)
!4453 = !DILocation(line: 94, column: 10, scope: !4387)
!4454 = !DILocation(line: 95, column: 13, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4387, file: !4343, line: 95, column: 13)
!4456 = !DILocation(line: 95, column: 16, scope: !4455)
!4457 = !DILocation(line: 95, column: 13, scope: !4387)
!4458 = !DILocation(line: 97, column: 10, scope: !4387)
!4459 = !DILocation(line: 98, column: 17, scope: !4387)
!4460 = !DILocation(line: 87, column: 5, scope: !4388)
!4461 = distinct !{!4461, !4462, !4463}
!4462 = !DILocation(line: 87, column: 5, scope: !4389)
!4463 = !DILocation(line: 99, column: 7, scope: !4389)
!4464 = !DILocation(line: 73, column: 1, scope: !4361, inlinedAt: !4385)
!4465 = !DILocation(line: 78, column: 9, scope: !4342)
!4466 = !DILocalVariable(name: "__ptr", arg: 1, scope: !4467, file: !4468, line: 207, type: !4471)
!4467 = distinct !DISubprogram(name: "vasprintf", scope: !4468, file: !4468, line: 207, type: !4469, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !4473)
!4468 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!30, !4471, !4472, !4346}
!4471 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!4472 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!4473 = !{!4466, !4474, !4475}
!4474 = !DILocalVariable(name: "__fmt", arg: 2, scope: !4467, file: !4468, line: 207, type: !4472)
!4475 = !DILocalVariable(name: "__ap", arg: 3, scope: !4467, file: !4468, line: 207, type: !4346)
!4476 = !DILocation(line: 207, column: 1, scope: !4467, inlinedAt: !4477)
!4477 = distinct !DILocation(line: 102, column: 7, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4342, file: !4343, line: 102, column: 7)
!4479 = !DILocation(line: 210, column: 10, scope: !4467, inlinedAt: !4477)
!4480 = !DILocation(line: 102, column: 41, scope: !4478)
!4481 = !DILocation(line: 102, column: 7, scope: !4342)
!4482 = !DILocation(line: 104, column: 11, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4484, file: !4343, line: 104, column: 11)
!4484 = distinct !DILexicalBlock(scope: !4478, file: !4343, line: 103, column: 5)
!4485 = !DILocation(line: 104, column: 17, scope: !4483)
!4486 = !DILocation(line: 104, column: 11, scope: !4484)
!4487 = !DILocation(line: 105, column: 9, scope: !4483)
!4488 = !DILocation(line: 109, column: 10, scope: !4342)
!4489 = !DILocation(line: 109, column: 3, scope: !4342)
!4490 = !DILocation(line: 110, column: 1, scope: !4342)
!4491 = distinct !DISubprogram(name: "rpl_calloc", scope: !4492, file: !4492, line: 42, type: !4087, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !4493)
!4492 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4493 = !{!4494, !4495, !4496, !4497}
!4494 = !DILocalVariable(name: "n", arg: 1, scope: !4491, file: !4492, line: 42, type: !115)
!4495 = !DILocalVariable(name: "s", arg: 2, scope: !4491, file: !4492, line: 42, type: !115)
!4496 = !DILocalVariable(name: "result", scope: !4491, file: !4492, line: 44, type: !29)
!4497 = !DILocalVariable(name: "bytes", scope: !4498, file: !4492, line: 56, type: !115)
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
!4518 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4519, file: !4519, line: 334, type: !4520, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !4534)
!4519 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!115, !4522, !44, !115, !4523}
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2179, line: 6, baseType: !4525)
!4525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2181, line: 21, baseType: !4526)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2181, line: 13, size: 64, elements: !4527)
!4527 = !{!4528, !4529}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4526, file: !2181, line: 15, baseType: !30, size: 32)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4526, file: !2181, line: 20, baseType: !4530, size: 32, offset: 32)
!4530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4526, file: !2181, line: 16, size: 32, elements: !4531)
!4531 = !{!4532, !4533}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4530, file: !2181, line: 18, baseType: !32, size: 32)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4530, file: !2181, line: 19, baseType: !2190, size: 32)
!4534 = !{!4535, !4536, !4537, !4538, !4539, !4540, !4541}
!4535 = !DILocalVariable(name: "pwc", arg: 1, scope: !4518, file: !4519, line: 334, type: !4522)
!4536 = !DILocalVariable(name: "s", arg: 2, scope: !4518, file: !4519, line: 334, type: !44)
!4537 = !DILocalVariable(name: "n", arg: 3, scope: !4518, file: !4519, line: 334, type: !115)
!4538 = !DILocalVariable(name: "ps", arg: 4, scope: !4518, file: !4519, line: 334, type: !4523)
!4539 = !DILocalVariable(name: "ret", scope: !4518, file: !4519, line: 336, type: !115)
!4540 = !DILocalVariable(name: "wc", scope: !4518, file: !4519, line: 337, type: !2195)
!4541 = !DILocalVariable(name: "uc", scope: !4542, file: !4519, line: 398, type: !514)
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
!4564 = distinct !DISubprogram(name: "close_stream", scope: !4565, file: !4565, line: 56, type: !4566, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !4608)
!4565 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!30, !4568}
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3903, line: 7, baseType: !4570)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3905, line: 241, size: 1728, elements: !4571)
!4571 = !{!4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4570, file: !3905, line: 242, baseType: !30, size: 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4570, file: !3905, line: 247, baseType: !27, size: 64, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4570, file: !3905, line: 248, baseType: !27, size: 64, offset: 128)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4570, file: !3905, line: 249, baseType: !27, size: 64, offset: 192)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4570, file: !3905, line: 250, baseType: !27, size: 64, offset: 256)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4570, file: !3905, line: 251, baseType: !27, size: 64, offset: 320)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4570, file: !3905, line: 252, baseType: !27, size: 64, offset: 384)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4570, file: !3905, line: 253, baseType: !27, size: 64, offset: 448)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4570, file: !3905, line: 254, baseType: !27, size: 64, offset: 512)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4570, file: !3905, line: 256, baseType: !27, size: 64, offset: 576)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4570, file: !3905, line: 257, baseType: !27, size: 64, offset: 640)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4570, file: !3905, line: 258, baseType: !27, size: 64, offset: 704)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4570, file: !3905, line: 260, baseType: !4585, size: 64, offset: 768)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3905, line: 156, size: 192, elements: !4587)
!4587 = !{!4588, !4589, !4591}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4586, file: !3905, line: 157, baseType: !4585, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4586, file: !3905, line: 158, baseType: !4590, size: 64, offset: 64)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4586, file: !3905, line: 162, baseType: !30, size: 32, offset: 128)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4570, file: !3905, line: 262, baseType: !4590, size: 64, offset: 832)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4570, file: !3905, line: 264, baseType: !30, size: 32, offset: 896)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4570, file: !3905, line: 268, baseType: !30, size: 32, offset: 928)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4570, file: !3905, line: 270, baseType: !1147, size: 64, offset: 960)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4570, file: !3905, line: 274, baseType: !31, size: 16, offset: 1024)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4570, file: !3905, line: 275, baseType: !3933, size: 8, offset: 1040)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4570, file: !3905, line: 276, baseType: !3935, size: 8, offset: 1048)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4570, file: !3905, line: 280, baseType: !3937, size: 64, offset: 1088)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4570, file: !3905, line: 289, baseType: !3940, size: 64, offset: 1152)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4570, file: !3905, line: 297, baseType: !29, size: 64, offset: 1216)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4570, file: !3905, line: 298, baseType: !29, size: 64, offset: 1280)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4570, file: !3905, line: 299, baseType: !29, size: 64, offset: 1344)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4570, file: !3905, line: 300, baseType: !29, size: 64, offset: 1408)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4570, file: !3905, line: 302, baseType: !115, size: 64, offset: 1472)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4570, file: !3905, line: 303, baseType: !30, size: 32, offset: 1536)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4570, file: !3905, line: 305, baseType: !3948, size: 160, offset: 1568)
!4608 = !{!4609, !4610, !4612, !4613}
!4609 = !DILocalVariable(name: "stream", arg: 1, scope: !4564, file: !4565, line: 56, type: !4568)
!4610 = !DILocalVariable(name: "some_pending", scope: !4564, file: !4565, line: 58, type: !4611)
!4611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!4612 = !DILocalVariable(name: "prev_fail", scope: !4564, file: !4565, line: 59, type: !4611)
!4613 = !DILocalVariable(name: "fclose_fail", scope: !4564, file: !4565, line: 60, type: !4611)
!4614 = !DILocation(line: 56, column: 21, scope: !4564)
!4615 = !DILocation(line: 58, column: 30, scope: !4564)
!4616 = !DILocalVariable(name: "__stream", arg: 1, scope: !4617, file: !4618, line: 132, type: !4568)
!4617 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4618, file: !4618, line: 132, type: !4566, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !4619)
!4618 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4619 = !{!4616}
!4620 = !DILocation(line: 132, column: 1, scope: !4617, inlinedAt: !4621)
!4621 = distinct !DILocation(line: 59, column: 27, scope: !4564)
!4622 = !DILocation(line: 134, column: 10, scope: !4617, inlinedAt: !4621)
!4623 = !{!4624, !653, i64 0}
!4624 = !{!"_IO_FILE", !653, i64 0, !594, i64 8, !594, i64 16, !594, i64 24, !594, i64 32, !594, i64 40, !594, i64 48, !594, i64 56, !594, i64 64, !594, i64 72, !594, i64 80, !594, i64 88, !594, i64 96, !594, i64 104, !653, i64 112, !653, i64 116, !1389, i64 120, !1845, i64 128, !595, i64 130, !595, i64 131, !594, i64 136, !1389, i64 144, !594, i64 152, !594, i64 160, !594, i64 168, !594, i64 176, !1389, i64 184, !653, i64 192, !595, i64 196}
!4625 = !DILocation(line: 59, column: 43, scope: !4564)
!4626 = !DILocation(line: 60, column: 29, scope: !4564)
!4627 = !DILocation(line: 60, column: 45, scope: !4564)
!4628 = !DILocation(line: 70, column: 17, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4564, file: !4565, line: 70, column: 7)
!4630 = !DILocation(line: 58, column: 50, scope: !4564)
!4631 = !DILocation(line: 70, column: 33, scope: !4629)
!4632 = !DILocation(line: 70, column: 53, scope: !4629)
!4633 = !DILocation(line: 70, column: 59, scope: !4629)
!4634 = !DILocation(line: 70, column: 7, scope: !4564)
!4635 = !DILocation(line: 72, column: 11, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4629, file: !4565, line: 71, column: 5)
!4637 = !DILocation(line: 73, column: 9, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4636, file: !4565, line: 72, column: 11)
!4639 = !DILocation(line: 73, column: 15, scope: !4638)
!4640 = !DILocation(line: 78, column: 1, scope: !4564)
!4641 = distinct !DISubprogram(name: "hard_locale", scope: !4642, file: !4642, line: 38, type: !728, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !567, variables: !4643)
!4642 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4643 = !{!4644, !4645, !4646}
!4644 = !DILocalVariable(name: "category", arg: 1, scope: !4641, file: !4642, line: 38, type: !30)
!4645 = !DILocalVariable(name: "hard", scope: !4641, file: !4642, line: 40, type: !75)
!4646 = !DILocalVariable(name: "p", scope: !4641, file: !4642, line: 41, type: !44)
!4647 = !DILocation(line: 38, column: 18, scope: !4641)
!4648 = !DILocation(line: 40, column: 8, scope: !4641)
!4649 = !DILocation(line: 41, column: 19, scope: !4641)
!4650 = !DILocation(line: 41, column: 15, scope: !4641)
!4651 = !DILocation(line: 43, column: 7, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4641, file: !4642, line: 43, column: 7)
!4653 = !DILocation(line: 43, column: 7, scope: !4641)
!4654 = !DILocation(line: 47, column: 15, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4656, file: !4642, line: 47, column: 15)
!4656 = distinct !DILexicalBlock(scope: !4657, file: !4642, line: 46, column: 9)
!4657 = distinct !DILexicalBlock(scope: !4658, file: !4642, line: 45, column: 11)
!4658 = distinct !DILexicalBlock(scope: !4652, file: !4642, line: 44, column: 5)
!4659 = !DILocation(line: 47, column: 31, scope: !4655)
!4660 = !DILocation(line: 47, column: 36, scope: !4655)
!4661 = !DILocation(line: 47, column: 39, scope: !4655)
!4662 = !DILocation(line: 47, column: 59, scope: !4655)
!4663 = !DILocation(line: 47, column: 15, scope: !4656)
!4664 = !DILocation(line: 48, column: 13, scope: !4655)
!4665 = !DILocation(line: 71, column: 3, scope: !4641)
!4666 = distinct !DISubprogram(name: "locale_charset", scope: !516, file: !516, line: 393, type: !4667, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !4669)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!44}
!4669 = !{!4670, !4671}
!4670 = !DILocalVariable(name: "codeset", scope: !4666, file: !516, line: 395, type: !44)
!4671 = !DILocalVariable(name: "aliases", scope: !4666, file: !516, line: 396, type: !44)
!4672 = !DILocalVariable(name: "buf1", scope: !4673, file: !516, line: 196, type: !4740)
!4673 = distinct !DILexicalBlock(scope: !4674, file: !516, line: 194, column: 21)
!4674 = distinct !DILexicalBlock(scope: !4675, file: !516, line: 193, column: 19)
!4675 = distinct !DILexicalBlock(scope: !4676, file: !516, line: 193, column: 19)
!4676 = distinct !DILexicalBlock(scope: !4677, file: !516, line: 188, column: 17)
!4677 = distinct !DILexicalBlock(scope: !4678, file: !516, line: 181, column: 19)
!4678 = distinct !DILexicalBlock(scope: !4679, file: !516, line: 177, column: 13)
!4679 = distinct !DILexicalBlock(scope: !4680, file: !516, line: 173, column: 15)
!4680 = distinct !DILexicalBlock(scope: !4681, file: !516, line: 161, column: 9)
!4681 = distinct !DILexicalBlock(scope: !4682, file: !516, line: 157, column: 11)
!4682 = distinct !DILexicalBlock(scope: !4683, file: !516, line: 130, column: 5)
!4683 = distinct !DILexicalBlock(scope: !4684, file: !516, line: 129, column: 7)
!4684 = distinct !DISubprogram(name: "get_charset_aliases", scope: !516, file: !516, line: 124, type: !4667, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !4685)
!4685 = !{!4686, !4687, !4688, !4689, !4690, !4692, !4693, !4694, !4695, !4736, !4737, !4738, !4672, !4739, !4743, !4744, !4745}
!4686 = !DILocalVariable(name: "cp", scope: !4684, file: !516, line: 126, type: !44)
!4687 = !DILocalVariable(name: "dir", scope: !4682, file: !516, line: 132, type: !44)
!4688 = !DILocalVariable(name: "base", scope: !4682, file: !516, line: 133, type: !44)
!4689 = !DILocalVariable(name: "file_name", scope: !4682, file: !516, line: 134, type: !27)
!4690 = !DILocalVariable(name: "dir_len", scope: !4691, file: !516, line: 144, type: !115)
!4691 = distinct !DILexicalBlock(scope: !4682, file: !516, line: 143, column: 7)
!4692 = !DILocalVariable(name: "base_len", scope: !4691, file: !516, line: 145, type: !115)
!4693 = !DILocalVariable(name: "add_slash", scope: !4691, file: !516, line: 146, type: !30)
!4694 = !DILocalVariable(name: "fd", scope: !4680, file: !516, line: 162, type: !30)
!4695 = !DILocalVariable(name: "fp", scope: !4678, file: !516, line: 178, type: !4696)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3903, line: 7, baseType: !4698)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3905, line: 241, size: 1728, elements: !4699)
!4699 = !{!4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4698, file: !3905, line: 242, baseType: !30, size: 32)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4698, file: !3905, line: 247, baseType: !27, size: 64, offset: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4698, file: !3905, line: 248, baseType: !27, size: 64, offset: 128)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4698, file: !3905, line: 249, baseType: !27, size: 64, offset: 192)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4698, file: !3905, line: 250, baseType: !27, size: 64, offset: 256)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4698, file: !3905, line: 251, baseType: !27, size: 64, offset: 320)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4698, file: !3905, line: 252, baseType: !27, size: 64, offset: 384)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4698, file: !3905, line: 253, baseType: !27, size: 64, offset: 448)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4698, file: !3905, line: 254, baseType: !27, size: 64, offset: 512)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4698, file: !3905, line: 256, baseType: !27, size: 64, offset: 576)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4698, file: !3905, line: 257, baseType: !27, size: 64, offset: 640)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4698, file: !3905, line: 258, baseType: !27, size: 64, offset: 704)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4698, file: !3905, line: 260, baseType: !4713, size: 64, offset: 768)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3905, line: 156, size: 192, elements: !4715)
!4715 = !{!4716, !4717, !4719}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4714, file: !3905, line: 157, baseType: !4713, size: 64)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4714, file: !3905, line: 158, baseType: !4718, size: 64, offset: 64)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4714, file: !3905, line: 162, baseType: !30, size: 32, offset: 128)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4698, file: !3905, line: 262, baseType: !4718, size: 64, offset: 832)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4698, file: !3905, line: 264, baseType: !30, size: 32, offset: 896)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4698, file: !3905, line: 268, baseType: !30, size: 32, offset: 928)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4698, file: !3905, line: 270, baseType: !1147, size: 64, offset: 960)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4698, file: !3905, line: 274, baseType: !31, size: 16, offset: 1024)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4698, file: !3905, line: 275, baseType: !3933, size: 8, offset: 1040)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4698, file: !3905, line: 276, baseType: !3935, size: 8, offset: 1048)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4698, file: !3905, line: 280, baseType: !3937, size: 64, offset: 1088)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4698, file: !3905, line: 289, baseType: !3940, size: 64, offset: 1152)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4698, file: !3905, line: 297, baseType: !29, size: 64, offset: 1216)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4698, file: !3905, line: 298, baseType: !29, size: 64, offset: 1280)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4698, file: !3905, line: 299, baseType: !29, size: 64, offset: 1344)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4698, file: !3905, line: 300, baseType: !29, size: 64, offset: 1408)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4698, file: !3905, line: 302, baseType: !115, size: 64, offset: 1472)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4698, file: !3905, line: 303, baseType: !30, size: 32, offset: 1536)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4698, file: !3905, line: 305, baseType: !3948, size: 160, offset: 1568)
!4736 = !DILocalVariable(name: "res_ptr", scope: !4676, file: !516, line: 190, type: !27)
!4737 = !DILocalVariable(name: "res_size", scope: !4676, file: !516, line: 191, type: !115)
!4738 = !DILocalVariable(name: "c", scope: !4673, file: !516, line: 195, type: !30)
!4739 = !DILocalVariable(name: "buf2", scope: !4673, file: !516, line: 197, type: !4740)
!4740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 408, elements: !4741)
!4741 = !{!4742}
!4742 = !DISubrange(count: 51)
!4743 = !DILocalVariable(name: "l1", scope: !4673, file: !516, line: 198, type: !115)
!4744 = !DILocalVariable(name: "l2", scope: !4673, file: !516, line: 198, type: !115)
!4745 = !DILocalVariable(name: "old_res_ptr", scope: !4673, file: !516, line: 199, type: !27)
!4746 = !DILocation(line: 196, column: 28, scope: !4673, inlinedAt: !4747)
!4747 = distinct !DILocation(line: 589, column: 18, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4666, file: !516, line: 589, column: 3)
!4749 = !DILocation(line: 197, column: 28, scope: !4673, inlinedAt: !4747)
!4750 = !DILocation(line: 403, column: 13, scope: !4666)
!4751 = !DILocation(line: 395, column: 15, scope: !4666)
!4752 = !DILocation(line: 584, column: 15, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4666, file: !516, line: 584, column: 7)
!4754 = !DILocation(line: 584, column: 7, scope: !4666)
!4755 = !DILocation(line: 128, column: 8, scope: !4684, inlinedAt: !4747)
!4756 = !DILocation(line: 126, column: 15, scope: !4684, inlinedAt: !4747)
!4757 = !DILocation(line: 129, column: 10, scope: !4683, inlinedAt: !4747)
!4758 = !DILocation(line: 129, column: 7, scope: !4684, inlinedAt: !4747)
!4759 = !DILocation(line: 138, column: 13, scope: !4682, inlinedAt: !4747)
!4760 = !DILocation(line: 132, column: 19, scope: !4682, inlinedAt: !4747)
!4761 = !DILocation(line: 139, column: 15, scope: !4762, inlinedAt: !4747)
!4762 = distinct !DILexicalBlock(scope: !4682, file: !516, line: 139, column: 11)
!4763 = !DILocation(line: 139, column: 23, scope: !4762, inlinedAt: !4747)
!4764 = !DILocation(line: 139, column: 26, scope: !4762, inlinedAt: !4747)
!4765 = !DILocation(line: 139, column: 33, scope: !4762, inlinedAt: !4747)
!4766 = !DILocation(line: 139, column: 11, scope: !4682, inlinedAt: !4747)
!4767 = !DILocation(line: 140, column: 9, scope: !4762, inlinedAt: !4747)
!4768 = !DILocation(line: 144, column: 26, scope: !4691, inlinedAt: !4747)
!4769 = !DILocation(line: 144, column: 16, scope: !4691, inlinedAt: !4747)
!4770 = !DILocation(line: 145, column: 16, scope: !4691, inlinedAt: !4747)
!4771 = !DILocation(line: 146, column: 34, scope: !4691, inlinedAt: !4747)
!4772 = !DILocation(line: 146, column: 38, scope: !4691, inlinedAt: !4747)
!4773 = !DILocation(line: 146, column: 42, scope: !4691, inlinedAt: !4747)
!4774 = !DILocation(line: 147, column: 48, scope: !4691, inlinedAt: !4747)
!4775 = !DILocation(line: 147, column: 46, scope: !4691, inlinedAt: !4747)
!4776 = !DILocation(line: 147, column: 69, scope: !4691, inlinedAt: !4747)
!4777 = !DILocation(line: 147, column: 30, scope: !4691, inlinedAt: !4747)
!4778 = !DILocation(line: 134, column: 13, scope: !4682, inlinedAt: !4747)
!4779 = !DILocation(line: 148, column: 13, scope: !4691, inlinedAt: !4747)
!4780 = !DILocation(line: 150, column: 13, scope: !4781, inlinedAt: !4747)
!4781 = distinct !DILexicalBlock(scope: !4782, file: !516, line: 149, column: 11)
!4782 = distinct !DILexicalBlock(scope: !4691, file: !516, line: 148, column: 13)
!4783 = !DILocation(line: 151, column: 17, scope: !4781, inlinedAt: !4747)
!4784 = !DILocation(line: 152, column: 34, scope: !4785, inlinedAt: !4747)
!4785 = distinct !DILexicalBlock(scope: !4781, file: !516, line: 151, column: 17)
!4786 = !DILocation(line: 153, column: 41, scope: !4781, inlinedAt: !4747)
!4787 = !DILocation(line: 153, column: 13, scope: !4781, inlinedAt: !4747)
!4788 = !DILocation(line: 157, column: 11, scope: !4682, inlinedAt: !4747)
!4789 = !DILocation(line: 171, column: 16, scope: !4680, inlinedAt: !4747)
!4790 = !DILocation(line: 162, column: 15, scope: !4680, inlinedAt: !4747)
!4791 = !DILocation(line: 173, column: 18, scope: !4679, inlinedAt: !4747)
!4792 = !DILocation(line: 173, column: 15, scope: !4680, inlinedAt: !4747)
!4793 = !DILocation(line: 180, column: 20, scope: !4678, inlinedAt: !4747)
!4794 = !DILocation(line: 178, column: 21, scope: !4678, inlinedAt: !4747)
!4795 = !DILocation(line: 181, column: 22, scope: !4677, inlinedAt: !4747)
!4796 = !DILocation(line: 181, column: 19, scope: !4678, inlinedAt: !4747)
!4797 = !DILocation(line: 184, column: 19, scope: !4798, inlinedAt: !4747)
!4798 = distinct !DILexicalBlock(scope: !4677, file: !516, line: 182, column: 17)
!4799 = !DILocation(line: 186, column: 17, scope: !4798, inlinedAt: !4747)
!4800 = !DILocation(line: 190, column: 25, scope: !4676, inlinedAt: !4747)
!4801 = !DILocation(line: 191, column: 26, scope: !4676, inlinedAt: !4747)
!4802 = !DILocation(line: 193, column: 19, scope: !4676, inlinedAt: !4747)
!4803 = !DILocation(line: 196, column: 23, scope: !4673, inlinedAt: !4747)
!4804 = !DILocation(line: 197, column: 23, scope: !4673, inlinedAt: !4747)
!4805 = !DILocalVariable(name: "__fp", arg: 1, scope: !4806, file: !4618, line: 63, type: !4696)
!4806 = distinct !DISubprogram(name: "getc_unlocked", scope: !4618, file: !4618, line: 63, type: !4807, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !4809)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!30, !4696}
!4809 = !{!4805}
!4810 = !DILocation(line: 63, column: 22, scope: !4806, inlinedAt: !4811)
!4811 = distinct !DILocation(line: 201, column: 27, scope: !4673, inlinedAt: !4747)
!4812 = !DILocation(line: 65, column: 10, scope: !4806, inlinedAt: !4811)
!4813 = !{!4624, !594, i64 8}
!4814 = !{!4624, !594, i64 16}
!4815 = !{!"branch_weights", i32 2000, i32 1}
!4816 = !DILocation(line: 195, column: 27, scope: !4673, inlinedAt: !4747)
!4817 = !DILocation(line: 202, column: 27, scope: !4673, inlinedAt: !4747)
!4818 = distinct !{!4818, !4819, !4822}
!4819 = !DILocation(line: 209, column: 27, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4821, file: !516, line: 207, column: 25)
!4821 = distinct !DILexicalBlock(scope: !4673, file: !516, line: 206, column: 27)
!4822 = !DILocation(line: 211, column: 58, scope: !4820)
!4823 = !DILocation(line: 65, column: 10, scope: !4806, inlinedAt: !4824)
!4824 = distinct !DILocation(line: 210, column: 33, scope: !4820, inlinedAt: !4747)
!4825 = !DILocation(line: 63, column: 22, scope: !4806, inlinedAt: !4824)
!4826 = !DILocation(line: 210, column: 29, scope: !4820, inlinedAt: !4747)
!4827 = distinct !{!4827, !4828, !4829}
!4828 = !DILocation(line: 193, column: 19, scope: !4675)
!4829 = !DILocation(line: 241, column: 21, scope: !4675)
!4830 = !DILocation(line: 216, column: 23, scope: !4673, inlinedAt: !4747)
!4831 = !DILocation(line: 217, column: 27, scope: !4832, inlinedAt: !4747)
!4832 = distinct !DILexicalBlock(scope: !4673, file: !516, line: 217, column: 27)
!4833 = !DILocation(line: 217, column: 64, scope: !4832, inlinedAt: !4747)
!4834 = !DILocation(line: 217, column: 27, scope: !4673, inlinedAt: !4747)
!4835 = !DILocation(line: 219, column: 28, scope: !4673, inlinedAt: !4747)
!4836 = !DILocation(line: 198, column: 30, scope: !4673, inlinedAt: !4747)
!4837 = !DILocation(line: 220, column: 28, scope: !4673, inlinedAt: !4747)
!4838 = !DILocation(line: 198, column: 34, scope: !4673, inlinedAt: !4747)
!4839 = !DILocation(line: 199, column: 29, scope: !4673, inlinedAt: !4747)
!4840 = !DILocation(line: 222, column: 36, scope: !4841, inlinedAt: !4747)
!4841 = distinct !DILexicalBlock(scope: !4673, file: !516, line: 222, column: 27)
!4842 = !DILocation(line: 222, column: 27, scope: !4673, inlinedAt: !4747)
!4843 = !DILocation(line: 225, column: 63, scope: !4844, inlinedAt: !4747)
!4844 = distinct !DILexicalBlock(scope: !4841, file: !516, line: 223, column: 25)
!4845 = !DILocation(line: 225, column: 46, scope: !4844, inlinedAt: !4747)
!4846 = !DILocation(line: 226, column: 25, scope: !4844, inlinedAt: !4747)
!4847 = !DILocation(line: 229, column: 36, scope: !4848, inlinedAt: !4747)
!4848 = distinct !DILexicalBlock(scope: !4841, file: !516, line: 228, column: 25)
!4849 = !DILocation(line: 230, column: 73, scope: !4848, inlinedAt: !4747)
!4850 = !DILocation(line: 230, column: 46, scope: !4848, inlinedAt: !4747)
!4851 = !DILocation(line: 232, column: 35, scope: !4852, inlinedAt: !4747)
!4852 = distinct !DILexicalBlock(scope: !4673, file: !516, line: 232, column: 27)
!4853 = !DILocation(line: 232, column: 27, scope: !4673, inlinedAt: !4747)
!4854 = !DILocation(line: 236, column: 27, scope: !4855, inlinedAt: !4747)
!4855 = distinct !DILexicalBlock(scope: !4852, file: !516, line: 233, column: 25)
!4856 = !DILocation(line: 237, column: 27, scope: !4855, inlinedAt: !4747)
!4857 = !DILocation(line: 241, column: 21, scope: !4674, inlinedAt: !4747)
!4858 = !DILocation(line: 239, column: 39, scope: !4673, inlinedAt: !4747)
!4859 = !DILocation(line: 239, column: 50, scope: !4673, inlinedAt: !4747)
!4860 = !DILocation(line: 239, column: 61, scope: !4673, inlinedAt: !4747)
!4861 = !DILocalVariable(name: "__dest", arg: 1, scope: !4862, file: !4863, line: 88, type: !4866)
!4862 = distinct !DISubprogram(name: "strcpy", scope: !4863, file: !4863, line: 88, type: !4864, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !4867)
!4863 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!27, !4866, !4472}
!4866 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !27)
!4867 = !{!4861, !4868}
!4868 = !DILocalVariable(name: "__src", arg: 2, scope: !4862, file: !4863, line: 88, type: !4472)
!4869 = !DILocation(line: 88, column: 1, scope: !4862, inlinedAt: !4870)
!4870 = distinct !DILocation(line: 239, column: 23, scope: !4673, inlinedAt: !4747)
!4871 = !DILocation(line: 90, column: 49, scope: !4862, inlinedAt: !4870)
!4872 = !DILocation(line: 90, column: 10, scope: !4862, inlinedAt: !4870)
!4873 = !DILocation(line: 88, column: 1, scope: !4862, inlinedAt: !4874)
!4874 = distinct !DILocation(line: 240, column: 23, scope: !4673, inlinedAt: !4747)
!4875 = !DILocation(line: 90, column: 49, scope: !4862, inlinedAt: !4874)
!4876 = !DILocation(line: 90, column: 10, scope: !4862, inlinedAt: !4874)
!4877 = !DILocation(line: 193, column: 19, scope: !4674, inlinedAt: !4747)
!4878 = !DILocation(line: 242, column: 19, scope: !4676, inlinedAt: !4747)
!4879 = !DILocation(line: 243, column: 32, scope: !4880, inlinedAt: !4747)
!4880 = distinct !DILexicalBlock(scope: !4676, file: !516, line: 243, column: 23)
!4881 = !DILocation(line: 243, column: 23, scope: !4676, inlinedAt: !4747)
!4882 = !DILocation(line: 247, column: 33, scope: !4883, inlinedAt: !4747)
!4883 = distinct !DILexicalBlock(scope: !4880, file: !516, line: 246, column: 21)
!4884 = !DILocation(line: 247, column: 45, scope: !4883, inlinedAt: !4747)
!4885 = !DILocation(line: 253, column: 11, scope: !4680, inlinedAt: !4747)
!4886 = !DILocation(line: 377, column: 23, scope: !4682, inlinedAt: !4747)
!4887 = !DILocation(line: 378, column: 5, scope: !4682, inlinedAt: !4747)
!4888 = !DILocation(line: 396, column: 15, scope: !4666)
!4889 = !DILocation(line: 590, column: 8, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4748, file: !516, line: 589, column: 3)
!4891 = !DILocation(line: 590, column: 17, scope: !4890)
!4892 = !DILocation(line: 589, column: 3, scope: !4748)
!4893 = !DILocation(line: 592, column: 9, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4890, file: !516, line: 592, column: 9)
!4895 = !DILocation(line: 592, column: 35, scope: !4894)
!4896 = !DILocation(line: 593, column: 9, scope: !4894)
!4897 = !DILocation(line: 593, column: 24, scope: !4894)
!4898 = !DILocation(line: 593, column: 31, scope: !4894)
!4899 = !DILocation(line: 593, column: 34, scope: !4894)
!4900 = !DILocation(line: 593, column: 45, scope: !4894)
!4901 = !DILocation(line: 592, column: 9, scope: !4890)
!4902 = !DILocation(line: 595, column: 29, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4894, file: !516, line: 594, column: 7)
!4904 = !DILocation(line: 595, column: 27, scope: !4903)
!4905 = !DILocation(line: 595, column: 46, scope: !4903)
!4906 = !DILocation(line: 596, column: 9, scope: !4903)
!4907 = !DILocation(line: 591, column: 19, scope: !4890)
!4908 = !DILocation(line: 591, column: 36, scope: !4890)
!4909 = !DILocation(line: 591, column: 16, scope: !4890)
!4910 = !DILocation(line: 591, column: 52, scope: !4890)
!4911 = !DILocation(line: 591, column: 69, scope: !4890)
!4912 = !DILocation(line: 591, column: 49, scope: !4890)
!4913 = distinct !{!4913, !4892, !4914}
!4914 = !DILocation(line: 597, column: 7, scope: !4748)
!4915 = !DILocation(line: 602, column: 7, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4666, file: !516, line: 602, column: 7)
!4917 = !DILocation(line: 602, column: 18, scope: !4916)
!4918 = !DILocation(line: 602, column: 7, scope: !4666)
!4919 = !DILocation(line: 612, column: 3, scope: !4666)
!4920 = distinct !DISubprogram(name: "rpl_fclose", scope: !4921, file: !4921, line: 56, type: !4922, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !4964)
!4921 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!30, !4924}
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3903, line: 7, baseType: !4926)
!4926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3905, line: 241, size: 1728, elements: !4927)
!4927 = !{!4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4926, file: !3905, line: 242, baseType: !30, size: 32)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4926, file: !3905, line: 247, baseType: !27, size: 64, offset: 64)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4926, file: !3905, line: 248, baseType: !27, size: 64, offset: 128)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4926, file: !3905, line: 249, baseType: !27, size: 64, offset: 192)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4926, file: !3905, line: 250, baseType: !27, size: 64, offset: 256)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4926, file: !3905, line: 251, baseType: !27, size: 64, offset: 320)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4926, file: !3905, line: 252, baseType: !27, size: 64, offset: 384)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4926, file: !3905, line: 253, baseType: !27, size: 64, offset: 448)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4926, file: !3905, line: 254, baseType: !27, size: 64, offset: 512)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4926, file: !3905, line: 256, baseType: !27, size: 64, offset: 576)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4926, file: !3905, line: 257, baseType: !27, size: 64, offset: 640)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4926, file: !3905, line: 258, baseType: !27, size: 64, offset: 704)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4926, file: !3905, line: 260, baseType: !4941, size: 64, offset: 768)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3905, line: 156, size: 192, elements: !4943)
!4943 = !{!4944, !4945, !4947}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4942, file: !3905, line: 157, baseType: !4941, size: 64)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4942, file: !3905, line: 158, baseType: !4946, size: 64, offset: 64)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4942, file: !3905, line: 162, baseType: !30, size: 32, offset: 128)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4926, file: !3905, line: 262, baseType: !4946, size: 64, offset: 832)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4926, file: !3905, line: 264, baseType: !30, size: 32, offset: 896)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4926, file: !3905, line: 268, baseType: !30, size: 32, offset: 928)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4926, file: !3905, line: 270, baseType: !1147, size: 64, offset: 960)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4926, file: !3905, line: 274, baseType: !31, size: 16, offset: 1024)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4926, file: !3905, line: 275, baseType: !3933, size: 8, offset: 1040)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4926, file: !3905, line: 276, baseType: !3935, size: 8, offset: 1048)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4926, file: !3905, line: 280, baseType: !3937, size: 64, offset: 1088)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4926, file: !3905, line: 289, baseType: !3940, size: 64, offset: 1152)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4926, file: !3905, line: 297, baseType: !29, size: 64, offset: 1216)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4926, file: !3905, line: 298, baseType: !29, size: 64, offset: 1280)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4926, file: !3905, line: 299, baseType: !29, size: 64, offset: 1344)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4926, file: !3905, line: 300, baseType: !29, size: 64, offset: 1408)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4926, file: !3905, line: 302, baseType: !115, size: 64, offset: 1472)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4926, file: !3905, line: 303, baseType: !30, size: 32, offset: 1536)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4926, file: !3905, line: 305, baseType: !3948, size: 160, offset: 1568)
!4964 = !{!4965, !4966, !4967, !4968}
!4965 = !DILocalVariable(name: "fp", arg: 1, scope: !4920, file: !4921, line: 56, type: !4924)
!4966 = !DILocalVariable(name: "saved_errno", scope: !4920, file: !4921, line: 58, type: !30)
!4967 = !DILocalVariable(name: "fd", scope: !4920, file: !4921, line: 59, type: !30)
!4968 = !DILocalVariable(name: "result", scope: !4920, file: !4921, line: 60, type: !30)
!4969 = !DILocation(line: 56, column: 19, scope: !4920)
!4970 = !DILocation(line: 58, column: 7, scope: !4920)
!4971 = !DILocation(line: 60, column: 7, scope: !4920)
!4972 = !DILocation(line: 63, column: 8, scope: !4920)
!4973 = !DILocation(line: 59, column: 7, scope: !4920)
!4974 = !DILocation(line: 64, column: 10, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4920, file: !4921, line: 64, column: 7)
!4976 = !DILocation(line: 64, column: 7, scope: !4920)
!4977 = !DILocation(line: 65, column: 12, scope: !4975)
!4978 = !DILocation(line: 65, column: 5, scope: !4975)
!4979 = !DILocation(line: 70, column: 9, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4920, file: !4921, line: 70, column: 7)
!4981 = !DILocation(line: 70, column: 23, scope: !4980)
!4982 = !DILocation(line: 70, column: 33, scope: !4980)
!4983 = !DILocation(line: 70, column: 26, scope: !4980)
!4984 = !DILocation(line: 70, column: 59, scope: !4980)
!4985 = !DILocation(line: 71, column: 7, scope: !4980)
!4986 = !DILocation(line: 71, column: 10, scope: !4980)
!4987 = !DILocation(line: 70, column: 7, scope: !4920)
!4988 = !DILocation(line: 98, column: 12, scope: !4920)
!4989 = !DILocation(line: 103, column: 7, scope: !4920)
!4990 = !DILocation(line: 72, column: 19, scope: !4980)
!4991 = !DILocation(line: 103, column: 19, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4920, file: !4921, line: 103, column: 7)
!4993 = !DILocation(line: 105, column: 13, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4992, file: !4921, line: 104, column: 5)
!4995 = !DILocation(line: 107, column: 5, scope: !4994)
!4996 = !DILocation(line: 110, column: 1, scope: !4920)
!4997 = distinct !DISubprogram(name: "rpl_fflush", scope: !4998, file: !4998, line: 127, type: !4999, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !5041)
!4998 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!30, !5001}
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3903, line: 7, baseType: !5003)
!5003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3905, line: 241, size: 1728, elements: !5004)
!5004 = !{!5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5003, file: !3905, line: 242, baseType: !30, size: 32)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5003, file: !3905, line: 247, baseType: !27, size: 64, offset: 64)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5003, file: !3905, line: 248, baseType: !27, size: 64, offset: 128)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5003, file: !3905, line: 249, baseType: !27, size: 64, offset: 192)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5003, file: !3905, line: 250, baseType: !27, size: 64, offset: 256)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5003, file: !3905, line: 251, baseType: !27, size: 64, offset: 320)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5003, file: !3905, line: 252, baseType: !27, size: 64, offset: 384)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5003, file: !3905, line: 253, baseType: !27, size: 64, offset: 448)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5003, file: !3905, line: 254, baseType: !27, size: 64, offset: 512)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5003, file: !3905, line: 256, baseType: !27, size: 64, offset: 576)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5003, file: !3905, line: 257, baseType: !27, size: 64, offset: 640)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5003, file: !3905, line: 258, baseType: !27, size: 64, offset: 704)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5003, file: !3905, line: 260, baseType: !5018, size: 64, offset: 768)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3905, line: 156, size: 192, elements: !5020)
!5020 = !{!5021, !5022, !5024}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5019, file: !3905, line: 157, baseType: !5018, size: 64)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5019, file: !3905, line: 158, baseType: !5023, size: 64, offset: 64)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5019, file: !3905, line: 162, baseType: !30, size: 32, offset: 128)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5003, file: !3905, line: 262, baseType: !5023, size: 64, offset: 832)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5003, file: !3905, line: 264, baseType: !30, size: 32, offset: 896)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5003, file: !3905, line: 268, baseType: !30, size: 32, offset: 928)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5003, file: !3905, line: 270, baseType: !1147, size: 64, offset: 960)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5003, file: !3905, line: 274, baseType: !31, size: 16, offset: 1024)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5003, file: !3905, line: 275, baseType: !3933, size: 8, offset: 1040)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5003, file: !3905, line: 276, baseType: !3935, size: 8, offset: 1048)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5003, file: !3905, line: 280, baseType: !3937, size: 64, offset: 1088)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5003, file: !3905, line: 289, baseType: !3940, size: 64, offset: 1152)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5003, file: !3905, line: 297, baseType: !29, size: 64, offset: 1216)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5003, file: !3905, line: 298, baseType: !29, size: 64, offset: 1280)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5003, file: !3905, line: 299, baseType: !29, size: 64, offset: 1344)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5003, file: !3905, line: 300, baseType: !29, size: 64, offset: 1408)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5003, file: !3905, line: 302, baseType: !115, size: 64, offset: 1472)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5003, file: !3905, line: 303, baseType: !30, size: 32, offset: 1536)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5003, file: !3905, line: 305, baseType: !3948, size: 160, offset: 1568)
!5041 = !{!5042}
!5042 = !DILocalVariable(name: "stream", arg: 1, scope: !4997, file: !4998, line: 127, type: !5001)
!5043 = !DILocation(line: 127, column: 19, scope: !4997)
!5044 = !DILocation(line: 148, column: 14, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !4997, file: !4998, line: 148, column: 7)
!5046 = !DILocation(line: 148, column: 22, scope: !5045)
!5047 = !DILocation(line: 148, column: 27, scope: !5045)
!5048 = !DILocation(line: 148, column: 7, scope: !4997)
!5049 = !DILocation(line: 149, column: 12, scope: !5045)
!5050 = !DILocation(line: 149, column: 5, scope: !5045)
!5051 = !DILocalVariable(name: "fp", arg: 1, scope: !5052, file: !4998, line: 40, type: !5001)
!5052 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4998, file: !4998, line: 40, type: !5053, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !5055)
!5053 = !DISubroutineType(types: !5054)
!5054 = !{null, !5001}
!5055 = !{!5051}
!5056 = !DILocation(line: 40, column: 48, scope: !5052, inlinedAt: !5057)
!5057 = distinct !DILocation(line: 153, column: 3, scope: !4997)
!5058 = !DILocation(line: 42, column: 11, scope: !5059, inlinedAt: !5057)
!5059 = distinct !DILexicalBlock(scope: !5052, file: !4998, line: 42, column: 7)
!5060 = !DILocation(line: 42, column: 18, scope: !5059, inlinedAt: !5057)
!5061 = !DILocation(line: 42, column: 7, scope: !5052, inlinedAt: !5057)
!5062 = !DILocation(line: 44, column: 5, scope: !5059, inlinedAt: !5057)
!5063 = !DILocation(line: 155, column: 10, scope: !4997)
!5064 = !DILocation(line: 155, column: 3, scope: !4997)
!5065 = !DILocation(line: 229, column: 1, scope: !4997)
!5066 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5067, file: !5067, line: 28, type: !5068, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !5111)
!5067 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5068 = !DISubroutineType(types: !5069)
!5069 = !{!30, !5070, !5110, !30}
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3903, line: 7, baseType: !5072)
!5072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3905, line: 241, size: 1728, elements: !5073)
!5073 = !{!5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5072, file: !3905, line: 242, baseType: !30, size: 32)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5072, file: !3905, line: 247, baseType: !27, size: 64, offset: 64)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5072, file: !3905, line: 248, baseType: !27, size: 64, offset: 128)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5072, file: !3905, line: 249, baseType: !27, size: 64, offset: 192)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5072, file: !3905, line: 250, baseType: !27, size: 64, offset: 256)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5072, file: !3905, line: 251, baseType: !27, size: 64, offset: 320)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5072, file: !3905, line: 252, baseType: !27, size: 64, offset: 384)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5072, file: !3905, line: 253, baseType: !27, size: 64, offset: 448)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5072, file: !3905, line: 254, baseType: !27, size: 64, offset: 512)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5072, file: !3905, line: 256, baseType: !27, size: 64, offset: 576)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5072, file: !3905, line: 257, baseType: !27, size: 64, offset: 640)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5072, file: !3905, line: 258, baseType: !27, size: 64, offset: 704)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5072, file: !3905, line: 260, baseType: !5087, size: 64, offset: 768)
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3905, line: 156, size: 192, elements: !5089)
!5089 = !{!5090, !5091, !5093}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5088, file: !3905, line: 157, baseType: !5087, size: 64)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5088, file: !3905, line: 158, baseType: !5092, size: 64, offset: 64)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5088, file: !3905, line: 162, baseType: !30, size: 32, offset: 128)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5072, file: !3905, line: 262, baseType: !5092, size: 64, offset: 832)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5072, file: !3905, line: 264, baseType: !30, size: 32, offset: 896)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5072, file: !3905, line: 268, baseType: !30, size: 32, offset: 928)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5072, file: !3905, line: 270, baseType: !1147, size: 64, offset: 960)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5072, file: !3905, line: 274, baseType: !31, size: 16, offset: 1024)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5072, file: !3905, line: 275, baseType: !3933, size: 8, offset: 1040)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5072, file: !3905, line: 276, baseType: !3935, size: 8, offset: 1048)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5072, file: !3905, line: 280, baseType: !3937, size: 64, offset: 1088)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5072, file: !3905, line: 289, baseType: !3940, size: 64, offset: 1152)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5072, file: !3905, line: 297, baseType: !29, size: 64, offset: 1216)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5072, file: !3905, line: 298, baseType: !29, size: 64, offset: 1280)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5072, file: !3905, line: 299, baseType: !29, size: 64, offset: 1344)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5072, file: !3905, line: 300, baseType: !29, size: 64, offset: 1408)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5072, file: !3905, line: 302, baseType: !115, size: 64, offset: 1472)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5072, file: !3905, line: 303, baseType: !30, size: 32, offset: 1536)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5072, file: !3905, line: 305, baseType: !3948, size: 160, offset: 1568)
!5110 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !708, line: 57, baseType: !1147)
!5111 = !{!5112, !5113, !5114, !5115}
!5112 = !DILocalVariable(name: "fp", arg: 1, scope: !5066, file: !5067, line: 28, type: !5070)
!5113 = !DILocalVariable(name: "offset", arg: 2, scope: !5066, file: !5067, line: 28, type: !5110)
!5114 = !DILocalVariable(name: "whence", arg: 3, scope: !5066, file: !5067, line: 28, type: !30)
!5115 = !DILocalVariable(name: "pos", scope: !5116, file: !5067, line: 116, type: !5110)
!5116 = distinct !DILexicalBlock(scope: !5117, file: !5067, line: 112, column: 5)
!5117 = distinct !DILexicalBlock(scope: !5066, file: !5067, line: 51, column: 7)
!5118 = !DILocation(line: 28, column: 15, scope: !5066)
!5119 = !DILocation(line: 28, column: 25, scope: !5066)
!5120 = !DILocation(line: 28, column: 37, scope: !5066)
!5121 = !DILocation(line: 51, column: 11, scope: !5117)
!5122 = !DILocation(line: 51, column: 31, scope: !5117)
!5123 = !DILocation(line: 51, column: 24, scope: !5117)
!5124 = !DILocation(line: 52, column: 7, scope: !5117)
!5125 = !DILocation(line: 52, column: 14, scope: !5117)
!5126 = !{!4624, !594, i64 40}
!5127 = !DILocation(line: 52, column: 35, scope: !5117)
!5128 = !{!4624, !594, i64 32}
!5129 = !DILocation(line: 52, column: 28, scope: !5117)
!5130 = !DILocation(line: 53, column: 7, scope: !5117)
!5131 = !DILocation(line: 53, column: 14, scope: !5117)
!5132 = !{!4624, !594, i64 72}
!5133 = !DILocation(line: 53, column: 28, scope: !5117)
!5134 = !DILocation(line: 51, column: 7, scope: !5066)
!5135 = !DILocation(line: 116, column: 26, scope: !5116)
!5136 = !DILocation(line: 116, column: 19, scope: !5116)
!5137 = !DILocation(line: 116, column: 13, scope: !5116)
!5138 = !DILocation(line: 117, column: 15, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5116, file: !5067, line: 117, column: 11)
!5140 = !DILocation(line: 117, column: 11, scope: !5116)
!5141 = !DILocation(line: 127, column: 11, scope: !5116)
!5142 = !DILocation(line: 127, column: 18, scope: !5116)
!5143 = !DILocation(line: 128, column: 11, scope: !5116)
!5144 = !DILocation(line: 128, column: 19, scope: !5116)
!5145 = !{!4624, !1389, i64 144}
!5146 = !DILocation(line: 159, column: 7, scope: !5116)
!5147 = !DILocation(line: 161, column: 10, scope: !5066)
!5148 = !DILocation(line: 161, column: 3, scope: !5066)
!5149 = !DILocation(line: 162, column: 1, scope: !5066)
