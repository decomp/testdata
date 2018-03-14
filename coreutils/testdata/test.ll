; ModuleID = 'coreutils-8.27/src/test.bc'
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
@.str.19 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.36 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@argv = internal unnamed_addr global i8** null, align 8, !dbg !0
@argc = internal unnamed_addr global i32 0, align 4, !dbg !33
@pos = internal unnamed_addr global i32 0, align 4, !dbg !31
@.str.23 = private unnamed_addr constant [18 x i8] c"extra argument %s\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"%s expected\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"%s expected, found %s\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"%s: unary operator expected\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"invalid integer %s\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"-nt does not accept -l\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"-ef does not accept -l\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"-ot does not accept -l\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"%s: unknown binary operator\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"-nt\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"-ot\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"-ef\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"-eq\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"-ne\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"-lt\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"-le\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"-gt\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"-ge\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"missing argument after %s\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"%s: binary operator expected\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !60
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !66
@.str.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !70
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !77
@.str.68 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.69 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.70 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.72, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.73, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.74, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.75, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.76, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.77, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.78, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.79, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.80, i32 0, i32 0), i8* null], align 16, !dbg !84
@.str.71 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.72 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.73 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.74 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.75 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.76 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.77 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.78 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.79 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.80 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !113
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !120
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !132
@.str.11.81 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.82 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.83 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.84 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.85 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.86 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.87 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !139
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !146
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !134
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !148
@.str.98 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.99 = private unnamed_addr constant [32 x i8] c"unable to display error message\00", align 1
@.str.1.108 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.121 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.124 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !154
@.str.3.125 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.126 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.127 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.128 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.129 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.130 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !559 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !563, metadata !564), !dbg !565
  %2 = icmp eq i32 %0, 0, !dbg !566
  br i1 %2, label %8, label %3, !dbg !568

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !569, !tbaa !571
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #8, !dbg !569
  %6 = load i8*, i8** @program_name, align 8, !dbg !569, !tbaa !571
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #8, !dbg !569
  br label %75, !dbg !569

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 5) #8, !dbg !575
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !575, !tbaa !571
  %11 = tail call i32 @fputs_unlocked(i8* %9, %struct._IO_FILE* %10) #8, !dbg !575
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 5) #8, !dbg !577
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !577, !tbaa !571
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #8, !dbg !577
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #8, !dbg !578
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !578, !tbaa !571
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #8, !dbg !578
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #8, !dbg !579
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !579, !tbaa !571
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #8, !dbg !579
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.5, i64 0, i64 0), i32 5) #8, !dbg !580
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !580, !tbaa !571
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #8, !dbg !580
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.6, i64 0, i64 0), i32 5) #8, !dbg !581
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !581, !tbaa !571
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #8, !dbg !581
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([250 x i8], [250 x i8]* @.str.7, i64 0, i64 0), i32 5) #8, !dbg !582
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !582, !tbaa !571
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #8, !dbg !582
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([376 x i8], [376 x i8]* @.str.8, i64 0, i64 0), i32 5) #8, !dbg !583
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !583, !tbaa !571
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #8, !dbg !583
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.9, i64 0, i64 0), i32 5) #8, !dbg !584
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !584, !tbaa !571
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #8, !dbg !584
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.10, i64 0, i64 0), i32 5) #8, !dbg !585
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !585, !tbaa !571
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #8, !dbg !585
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.11, i64 0, i64 0), i32 5) #8, !dbg !586
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !586, !tbaa !571
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #8, !dbg !586
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([289 x i8], [289 x i8]* @.str.12, i64 0, i64 0), i32 5) #8, !dbg !587
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !587, !tbaa !571
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #8, !dbg !587
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([287 x i8], [287 x i8]* @.str.13, i64 0, i64 0), i32 5) #8, !dbg !588
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !588, !tbaa !571
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #8, !dbg !588
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.14, i64 0, i64 0), i32 5) #8, !dbg !589
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !589, !tbaa !571
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #8, !dbg !589
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.15, i64 0, i64 0), i32 5) #8, !dbg !590
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !590, !tbaa !571
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #8, !dbg !590
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.16, i64 0, i64 0), i32 5) #8, !dbg !591
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !591, !tbaa !571
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #8, !dbg !591
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.17, i64 0, i64 0), i32 5) #8, !dbg !592
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 5) #8, !dbg !592
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* %58) #8, !dbg !592
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !46, metadata !564) #8, !dbg !593
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i64 0, metadata !46, metadata !564) #8, !dbg !593
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i32 5) #8, !dbg !595
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i64 0, i64 0)) #8, !dbg !595
  %62 = tail call i8* @setlocale(i32 5, i8* null) #8, !dbg !596
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !54, metadata !564) #8, !dbg !597
  %63 = icmp eq i8* %62, null, !dbg !598
  br i1 %63, label %70, label %64, !dbg !600

; <label>:64:                                     ; preds = %8
  %65 = tail call i32 @strncmp(i8* nonnull %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i64 3) #14, !dbg !601
  %66 = icmp eq i32 %65, 0, !dbg !601
  br i1 %66, label %70, label %67, !dbg !602

; <label>:67:                                     ; preds = %64
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.36, i64 0, i64 0), i32 5) #8, !dbg !603
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !603
  br label %70, !dbg !605

; <label>:70:                                     ; preds = %8, %64, %67
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0), i32 5) #8, !dbg !606
  %72 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !606
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i64 0, i64 0), i32 5) #8, !dbg !607
  %74 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !607
  br label %75

; <label>:75:                                     ; preds = %70, %3
  tail call void @exit(i32 %0) #15, !dbg !608
  unreachable, !dbg !608
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !609 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !613, metadata !564), !dbg !616
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !614, metadata !564), !dbg !617
  %3 = load i8*, i8** %1, align 8, !dbg !618, !tbaa !571
  tail call void @set_program_name(i8* %3) #8, !dbg !619
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !620
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !621
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !622
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !623, metadata !564), !dbg !626
  store volatile i32 2, i32* @exit_failure, align 4, !dbg !628, !tbaa !630
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #8, !dbg !632
  store i8** %1, i8*** @argv, align 8, !dbg !633, !tbaa !571
  store i32 %0, i32* @argc, align 4, !dbg !634, !tbaa !630
  store i32 1, i32* @pos, align 4, !dbg !635, !tbaa !630
  %8 = icmp slt i32 %0, 2, !dbg !636
  br i1 %8, label %26, label %9, !dbg !638

; <label>:9:                                      ; preds = %2
  %10 = add nsw i32 %0, -1, !dbg !639
  %11 = tail call fastcc zeroext i1 @posixtest(i32 %10), !dbg !640
  %12 = load i32, i32* @pos, align 4, !dbg !641, !tbaa !630
  %13 = load i32, i32* @argc, align 4, !dbg !643, !tbaa !630
  %14 = icmp eq i32 %12, %13, !dbg !644
  br i1 %14, label %23, label %15, !dbg !645

; <label>:15:                                     ; preds = %9
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 5) #8, !dbg !646
  %17 = load i8**, i8*** @argv, align 8, !dbg !647, !tbaa !571
  %18 = load i32, i32* @pos, align 4, !dbg !648, !tbaa !630
  %19 = sext i32 %18 to i64, !dbg !647
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19, !dbg !647
  %21 = load i8*, i8** %20, align 8, !dbg !647, !tbaa !571
  %22 = tail call i8* @quote(i8* %21) #8, !dbg !649
  tail call void (i8*, ...) @test_syntax_error(i8* %16, i8* %22) #16, !dbg !650
  unreachable, !dbg !650

; <label>:23:                                     ; preds = %9
  %24 = xor i1 %11, true, !dbg !651
  %25 = zext i1 %24 to i32, !dbg !651
  br label %26, !dbg !651

; <label>:26:                                     ; preds = %2, %23
  %27 = phi i32 [ %25, %23 ], [ 1, %2 ]
  ret i32 %27, !dbg !652
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @posixtest(i32) unnamed_addr #6 !dbg !653 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !657, metadata !564), !dbg !659
  switch i32 %0, label %46 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %13
    i32 4, label %15
  ], !dbg !660

; <label>:2:                                      ; preds = %1
  %3 = load i8**, i8*** @argv, align 8, !dbg !661, !tbaa !571
  %4 = load i32, i32* @pos, align 4, !dbg !667, !tbaa !630
  %5 = add nsw i32 %4, 1, !dbg !667
  store i32 %5, i32* @pos, align 4, !dbg !667, !tbaa !630
  %6 = sext i32 %4 to i64, !dbg !661
  %7 = getelementptr inbounds i8*, i8** %3, i64 %6, !dbg !661
  %8 = load i8*, i8** %7, align 8, !dbg !661, !tbaa !571
  %9 = load i8, i8* %8, align 1, !dbg !661, !tbaa !668
  %10 = icmp ne i8 %9, 0, !dbg !669
  br label %96, !dbg !670

; <label>:11:                                     ; preds = %1
  %12 = tail call fastcc zeroext i1 @two_arguments(), !dbg !671
  br label %96, !dbg !672

; <label>:13:                                     ; preds = %1
  %14 = tail call fastcc zeroext i1 @three_arguments(), !dbg !673
  br label %96, !dbg !674

; <label>:15:                                     ; preds = %1
  %16 = load i8**, i8*** @argv, align 8, !dbg !675, !tbaa !571
  %17 = load i32, i32* @pos, align 4, !dbg !675, !tbaa !630
  %18 = sext i32 %17 to i64, !dbg !675
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18, !dbg !675
  %20 = load i8*, i8** %19, align 8, !dbg !675, !tbaa !571
  %21 = tail call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !675
  %22 = icmp eq i32 %21, 0, !dbg !675
  br i1 %22, label %23, label %31, !dbg !677

; <label>:23:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !683
  %24 = add nsw i32 %17, 1, !dbg !686
  store i32 %24, i32* @pos, align 4, !dbg !686, !tbaa !630
  %25 = load i32, i32* @argc, align 4, !dbg !687
  %26 = icmp slt i32 %24, %25, !dbg !689
  br i1 %26, label %28, label %27, !dbg !690

; <label>:27:                                     ; preds = %23
  tail call fastcc void @beyond() #15, !dbg !691
  unreachable, !dbg !691

; <label>:28:                                     ; preds = %23
  %29 = tail call fastcc zeroext i1 @three_arguments(), !dbg !692
  %30 = xor i1 %29, true, !dbg !693
  br label %96, !dbg !694

; <label>:31:                                     ; preds = %15
  %32 = tail call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #14, !dbg !695
  %33 = icmp eq i32 %32, 0, !dbg !695
  br i1 %33, label %34, label %51, !dbg !697

; <label>:34:                                     ; preds = %31
  %35 = add nsw i32 %17, 3, !dbg !698
  %36 = sext i32 %35 to i64, !dbg !698
  %37 = getelementptr inbounds i8*, i8** %16, i64 %36, !dbg !698
  %38 = load i8*, i8** %37, align 8, !dbg !698, !tbaa !571
  %39 = tail call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #14, !dbg !698
  %40 = icmp eq i32 %39, 0, !dbg !698
  br i1 %40, label %41, label %51, !dbg !699

; <label>:41:                                     ; preds = %34
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !678, metadata !564), !dbg !700
  %42 = add nsw i32 %17, 1, !dbg !703
  store i32 %42, i32* @pos, align 4, !dbg !703, !tbaa !630
  %43 = tail call fastcc zeroext i1 @two_arguments(), !dbg !704
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !678, metadata !564), !dbg !705
  %44 = load i32, i32* @pos, align 4, !dbg !707, !tbaa !630
  %45 = add nsw i32 %44, 1, !dbg !707
  store i32 %45, i32* @pos, align 4, !dbg !707, !tbaa !630
  br label %96, !dbg !708

; <label>:46:                                     ; preds = %1
  %47 = icmp slt i32 %0, 1, !dbg !709
  br i1 %47, label %50, label %48, !dbg !711

; <label>:48:                                     ; preds = %46
  %49 = load i32, i32* @pos, align 4, !dbg !712, !tbaa !630
  br label %51, !dbg !711

; <label>:50:                                     ; preds = %46
  tail call void @abort() #15, !dbg !716
  unreachable, !dbg !716

; <label>:51:                                     ; preds = %48, %31, %34
  %52 = phi i32 [ %49, %48 ], [ %17, %31 ], [ %17, %34 ], !dbg !712
  %53 = load i32, i32* @argc, align 4, !dbg !717, !tbaa !630
  %54 = icmp slt i32 %52, %53, !dbg !718
  br i1 %54, label %56, label %55, !dbg !719

; <label>:55:                                     ; preds = %51
  tail call fastcc void @beyond() #15, !dbg !720
  unreachable, !dbg !720

; <label>:56:                                     ; preds = %51
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !721, metadata !564) #8, !dbg !724
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !726, metadata !564) #8, !dbg !729
  %57 = tail call fastcc zeroext i1 @term() #8, !dbg !732
  %58 = load i32, i32* @pos, align 4, !dbg !734, !tbaa !630
  %59 = load i32, i32* @argc, align 4, !dbg !736, !tbaa !630
  %60 = icmp slt i32 %58, %59, !dbg !737
  br i1 %60, label %61, label %82, !dbg !738

; <label>:61:                                     ; preds = %56
  br label %62, !dbg !738

; <label>:62:                                     ; preds = %61, %90
  %63 = phi i32 [ %93, %90 ], [ %58, %61 ]
  %64 = phi i1 [ %92, %90 ], [ %57, %61 ]
  %65 = phi i1 [ %87, %90 ], [ false, %61 ]
  br label %66, !dbg !738

; <label>:66:                                     ; preds = %62, %75
  %67 = phi i32 [ %63, %62 ], [ %79, %75 ]
  %68 = phi i1 [ %64, %62 ], [ %78, %75 ]
  %69 = load i8**, i8*** @argv, align 8, !dbg !739, !tbaa !571
  %70 = sext i32 %67 to i64, !dbg !739
  %71 = getelementptr inbounds i8*, i8** %69, i64 %70, !dbg !739
  %72 = load i8*, i8** %71, align 8, !dbg !739, !tbaa !571
  %73 = tail call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #14, !dbg !739
  %74 = icmp eq i32 %73, 0, !dbg !739
  br i1 %74, label %75, label %86, !dbg !740

; <label>:75:                                     ; preds = %66
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !678, metadata !564) #8, !dbg !741
  %76 = add nsw i32 %67, 1, !dbg !743
  store i32 %76, i32* @pos, align 4, !dbg !743, !tbaa !630
  %77 = tail call fastcc zeroext i1 @term() #8, !dbg !732
  %78 = and i1 %68, %77, !dbg !744
  %79 = load i32, i32* @pos, align 4, !dbg !734, !tbaa !630
  %80 = load i32, i32* @argc, align 4, !dbg !736, !tbaa !630
  %81 = icmp slt i32 %79, %80, !dbg !737
  br i1 %81, label %66, label %82, !dbg !738, !llvm.loop !745

; <label>:82:                                     ; preds = %90, %75, %56
  %83 = phi i1 [ false, %56 ], [ %65, %75 ], [ %87, %90 ]
  %84 = phi i1 [ %57, %56 ], [ %78, %75 ], [ %92, %90 ]
  %85 = or i1 %83, %84, !dbg !748
  br label %96

; <label>:86:                                     ; preds = %66
  %87 = or i1 %65, %68, !dbg !748
  %88 = tail call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #14, !dbg !749
  %89 = icmp eq i32 %88, 0, !dbg !749
  br i1 %89, label %90, label %96, !dbg !751

; <label>:90:                                     ; preds = %86
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !678, metadata !564) #8, !dbg !752
  %91 = add nsw i32 %67, 1, !dbg !754
  store i32 %91, i32* @pos, align 4, !dbg !754, !tbaa !630
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !726, metadata !564) #8, !dbg !729
  %92 = tail call fastcc zeroext i1 @term() #8, !dbg !732
  %93 = load i32, i32* @pos, align 4, !dbg !734, !tbaa !630
  %94 = load i32, i32* @argc, align 4, !dbg !736, !tbaa !630
  %95 = icmp slt i32 %93, %94, !dbg !737
  br i1 %95, label %62, label %82, !dbg !738, !llvm.loop !755

; <label>:96:                                     ; preds = %86, %82, %41, %28, %13, %11, %2
  %97 = phi i1 [ %30, %28 ], [ %43, %41 ], [ %14, %13 ], [ %12, %11 ], [ %10, %2 ], [ %85, %82 ], [ %87, %86 ]
  ret i1 %97, !dbg !758
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @test_syntax_error(i8*, ...) unnamed_addr #0 !dbg !759 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !763, metadata !564), !dbg !779
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !780
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %2, metadata !764, metadata !564), !dbg !781
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !782
  call void @llvm.va_start(i8* nonnull %3), !dbg !782
  call void @verror(i32 0, i32 0, i8* %0, %struct.__va_list_tag* nonnull %4) #8, !dbg !783
  call void @exit(i32 2) #15, !dbg !784
  unreachable, !dbg !784
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @two_arguments() unnamed_addr #6 !dbg !785 {
  %1 = load i8**, i8*** @argv, align 8, !dbg !788, !tbaa !571
  %2 = load i32, i32* @pos, align 4, !dbg !788, !tbaa !630
  %3 = sext i32 %2 to i64, !dbg !788
  %4 = getelementptr inbounds i8*, i8** %1, i64 %3, !dbg !788
  %5 = load i8*, i8** %4, align 8, !dbg !788, !tbaa !571
  %6 = tail call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !788
  %7 = icmp eq i32 %6, 0, !dbg !788
  br i1 %7, label %8, label %16, !dbg !790

; <label>:8:                                      ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !678, metadata !564), !dbg !791
  %9 = add nsw i32 %2, 1, !dbg !794
  %10 = add nsw i32 %2, 2, !dbg !795
  store i32 %10, i32* @pos, align 4, !dbg !795, !tbaa !630
  %11 = sext i32 %9 to i64, !dbg !797
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !797
  %13 = load i8*, i8** %12, align 8, !dbg !797, !tbaa !571
  %14 = load i8, i8* %13, align 1, !dbg !797, !tbaa !668
  %15 = icmp eq i8 %14, 0, !dbg !798
  br label %40, !dbg !799

; <label>:16:                                     ; preds = %0
  %17 = load i8, i8* %5, align 1, !dbg !800, !tbaa !668
  %18 = icmp eq i8 %17, 45, !dbg !802
  br i1 %18, label %19, label %39, !dbg !803

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !804
  %21 = load i8, i8* %20, align 1, !dbg !804, !tbaa !668
  %22 = icmp eq i8 %21, 0, !dbg !805
  br i1 %22, label %39, label %23, !dbg !806

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !807
  %25 = load i8, i8* %24, align 1, !dbg !807, !tbaa !668
  %26 = icmp eq i8 %25, 0, !dbg !808
  br i1 %26, label %27, label %39, !dbg !809

; <label>:27:                                     ; preds = %23
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !810, metadata !564), !dbg !815
  %28 = sext i8 %21 to i32, !dbg !819
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
  ], !dbg !820

; <label>:29:                                     ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %30 = tail call fastcc zeroext i1 @unary_operator(), !dbg !821
  br label %40

; <label>:31:                                     ; preds = %27
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i32 5) #8, !dbg !822
  %33 = load i8**, i8*** @argv, align 8, !dbg !823, !tbaa !571
  %34 = load i32, i32* @pos, align 4, !dbg !824, !tbaa !630
  %35 = sext i32 %34 to i64, !dbg !823
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35, !dbg !823
  %37 = load i8*, i8** %36, align 8, !dbg !823, !tbaa !571
  %38 = tail call i8* @quote(i8* %37) #8, !dbg !825
  tail call void (i8*, ...) @test_syntax_error(i8* %32, i8* %38) #16, !dbg !826
  unreachable, !dbg !826

; <label>:39:                                     ; preds = %19, %23, %16
  tail call fastcc void @beyond() #16, !dbg !827
  unreachable, !dbg !827

; <label>:40:                                     ; preds = %29, %8
  %41 = phi i1 [ %15, %8 ], [ %30, %29 ]
  ret i1 %41, !dbg !828
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @three_arguments() unnamed_addr #6 !dbg !829 {
  %1 = load i8**, i8*** @argv, align 8, !dbg !832, !tbaa !571
  %2 = load i32, i32* @pos, align 4, !dbg !834, !tbaa !630
  %3 = add nsw i32 %2, 1, !dbg !835
  %4 = sext i32 %3 to i64, !dbg !832
  %5 = getelementptr inbounds i8*, i8** %1, i64 %4, !dbg !832
  %6 = load i8*, i8** %5, align 8, !dbg !832, !tbaa !571
  %7 = tail call fastcc zeroext i1 @binop(i8* %6), !dbg !836
  br i1 %7, label %8, label %10, !dbg !837

; <label>:8:                                      ; preds = %0
  %9 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !838
  br label %96, !dbg !839

; <label>:10:                                     ; preds = %0
  %11 = sext i32 %2 to i64, !dbg !840
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !840
  %13 = load i8*, i8** %12, align 8, !dbg !840, !tbaa !571
  %14 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !840
  %15 = icmp eq i32 %14, 0, !dbg !840
  br i1 %15, label %16, label %23, !dbg !842

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !843
  store i32 %3, i32* @pos, align 4, !dbg !846, !tbaa !630
  %17 = load i32, i32* @argc, align 4, !dbg !847
  %18 = icmp slt i32 %3, %17, !dbg !848
  br i1 %18, label %20, label %19, !dbg !849

; <label>:19:                                     ; preds = %16
  tail call fastcc void @beyond() #15, !dbg !850
  unreachable, !dbg !850

; <label>:20:                                     ; preds = %16
  %21 = tail call fastcc zeroext i1 @two_arguments(), !dbg !851
  %22 = xor i1 %21, true, !dbg !852
  br label %96, !dbg !853

; <label>:23:                                     ; preds = %10
  %24 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #14, !dbg !854
  %25 = icmp eq i32 %24, 0, !dbg !854
  br i1 %25, label %26, label %37, !dbg !856

; <label>:26:                                     ; preds = %23
  %27 = add nsw i32 %2, 2, !dbg !857
  %28 = sext i32 %27 to i64, !dbg !857
  %29 = getelementptr inbounds i8*, i8** %1, i64 %28, !dbg !857
  %30 = load i8*, i8** %29, align 8, !dbg !857, !tbaa !571
  %31 = tail call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #14, !dbg !857
  %32 = icmp eq i32 %31, 0, !dbg !857
  br i1 %32, label %33, label %37, !dbg !858

; <label>:33:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !678, metadata !564), !dbg !859
  %34 = load i8, i8* %6, align 1, !dbg !862, !tbaa !668
  %35 = icmp ne i8 %34, 0, !dbg !864
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !678, metadata !564), !dbg !865
  %36 = add nsw i32 %2, 3, !dbg !867
  store i32 %36, i32* @pos, align 4, !dbg !867, !tbaa !630
  br label %96, !dbg !868

; <label>:37:                                     ; preds = %26, %23
  %38 = tail call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #14, !dbg !869
  %39 = icmp eq i32 %38, 0, !dbg !869
  br i1 %39, label %43, label %40, !dbg !871

; <label>:40:                                     ; preds = %37
  %41 = tail call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #14, !dbg !872
  %42 = icmp eq i32 %41, 0, !dbg !872
  br i1 %42, label %43, label %87, !dbg !873

; <label>:43:                                     ; preds = %40, %37
  %44 = load i32, i32* @argc, align 4, !dbg !874, !tbaa !630
  %45 = icmp slt i32 %2, %44, !dbg !876
  br i1 %45, label %47, label %46, !dbg !877

; <label>:46:                                     ; preds = %43
  tail call fastcc void @beyond() #15, !dbg !878
  unreachable, !dbg !878

; <label>:47:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !721, metadata !564) #8, !dbg !879
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !726, metadata !564) #8, !dbg !881
  %48 = tail call fastcc zeroext i1 @term() #8, !dbg !883
  %49 = load i32, i32* @pos, align 4, !dbg !884, !tbaa !630
  %50 = load i32, i32* @argc, align 4, !dbg !885, !tbaa !630
  %51 = icmp slt i32 %49, %50, !dbg !886
  br i1 %51, label %52, label %73, !dbg !887

; <label>:52:                                     ; preds = %47
  br label %53, !dbg !887

; <label>:53:                                     ; preds = %52, %81
  %54 = phi i32 [ %84, %81 ], [ %49, %52 ]
  %55 = phi i1 [ %83, %81 ], [ %48, %52 ]
  %56 = phi i1 [ %78, %81 ], [ false, %52 ]
  br label %57, !dbg !887

; <label>:57:                                     ; preds = %53, %66
  %58 = phi i32 [ %54, %53 ], [ %70, %66 ]
  %59 = phi i1 [ %55, %53 ], [ %69, %66 ]
  %60 = load i8**, i8*** @argv, align 8, !dbg !888, !tbaa !571
  %61 = sext i32 %58 to i64, !dbg !888
  %62 = getelementptr inbounds i8*, i8** %60, i64 %61, !dbg !888
  %63 = load i8*, i8** %62, align 8, !dbg !888, !tbaa !571
  %64 = tail call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #14, !dbg !888
  %65 = icmp eq i32 %64, 0, !dbg !888
  br i1 %65, label %66, label %77, !dbg !889

; <label>:66:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !678, metadata !564) #8, !dbg !890
  %67 = add nsw i32 %58, 1, !dbg !892
  store i32 %67, i32* @pos, align 4, !dbg !892, !tbaa !630
  %68 = tail call fastcc zeroext i1 @term() #8, !dbg !883
  %69 = and i1 %59, %68, !dbg !893
  %70 = load i32, i32* @pos, align 4, !dbg !884, !tbaa !630
  %71 = load i32, i32* @argc, align 4, !dbg !885, !tbaa !630
  %72 = icmp slt i32 %70, %71, !dbg !886
  br i1 %72, label %57, label %73, !dbg !887, !llvm.loop !745

; <label>:73:                                     ; preds = %81, %66, %47
  %74 = phi i1 [ false, %47 ], [ %56, %66 ], [ %78, %81 ]
  %75 = phi i1 [ %48, %47 ], [ %69, %66 ], [ %83, %81 ]
  %76 = or i1 %74, %75, !dbg !894
  br label %96

; <label>:77:                                     ; preds = %57
  %78 = or i1 %56, %59, !dbg !894
  %79 = tail call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #14, !dbg !895
  %80 = icmp eq i32 %79, 0, !dbg !895
  br i1 %80, label %81, label %96, !dbg !896

; <label>:81:                                     ; preds = %77
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !678, metadata !564) #8, !dbg !897
  %82 = add nsw i32 %58, 1, !dbg !899
  store i32 %82, i32* @pos, align 4, !dbg !899, !tbaa !630
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !726, metadata !564) #8, !dbg !881
  %83 = tail call fastcc zeroext i1 @term() #8, !dbg !883
  %84 = load i32, i32* @pos, align 4, !dbg !884, !tbaa !630
  %85 = load i32, i32* @argc, align 4, !dbg !885, !tbaa !630
  %86 = icmp slt i32 %84, %85, !dbg !886
  br i1 %86, label %53, label %73, !dbg !887, !llvm.loop !755

; <label>:87:                                     ; preds = %40
  %88 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i64 0, i64 0), i32 5) #8, !dbg !900
  %89 = load i8**, i8*** @argv, align 8, !dbg !901, !tbaa !571
  %90 = load i32, i32* @pos, align 4, !dbg !902, !tbaa !630
  %91 = add nsw i32 %90, 1, !dbg !903
  %92 = sext i32 %91 to i64, !dbg !901
  %93 = getelementptr inbounds i8*, i8** %89, i64 %92, !dbg !901
  %94 = load i8*, i8** %93, align 8, !dbg !901, !tbaa !571
  %95 = tail call i8* @quote(i8* %94) #8, !dbg !904
  tail call void (i8*, ...) @test_syntax_error(i8* %88, i8* %95) #16, !dbg !905
  unreachable, !dbg !905

; <label>:96:                                     ; preds = %77, %73, %20, %33, %8
  %97 = phi i1 [ %9, %8 ], [ %22, %20 ], [ %35, %33 ], [ %76, %73 ], [ %78, %77 ]
  ret i1 %97, !dbg !906
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !907 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i64 0, i64 0), i32 5) #8, !dbg !910
  %2 = load i8**, i8*** @argv, align 8, !dbg !911, !tbaa !571
  %3 = load i32, i32* @argc, align 4, !dbg !912, !tbaa !630
  %4 = add nsw i32 %3, -1, !dbg !913
  %5 = sext i32 %4 to i64, !dbg !911
  %6 = getelementptr inbounds i8*, i8** %2, i64 %5, !dbg !911
  %7 = load i8*, i8** %6, align 8, !dbg !911, !tbaa !571
  %8 = tail call i8* @quote(i8* %7) #8, !dbg !914
  tail call void (i8*, ...) @test_syntax_error(i8* %1, i8* %8) #16, !dbg !915
  unreachable, !dbg !915
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @term() unnamed_addr #6 !dbg !916 {
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !919, metadata !564), !dbg !923
  %1 = load i32, i32* @pos, align 4, !dbg !924, !tbaa !630
  %2 = load i32, i32* @argc, align 4, !dbg !925, !tbaa !630
  %3 = icmp sgt i32 %2, %1, !dbg !926
  br i1 %3, label %4, label %31, !dbg !927

; <label>:4:                                      ; preds = %0
  %5 = load i8**, i8*** @argv, align 8, !tbaa !571
  %6 = sext i32 %1 to i64, !dbg !928
  %7 = getelementptr inbounds i8*, i8** %5, i64 %6, !dbg !928
  %8 = load i8*, i8** %7, align 8, !dbg !928, !tbaa !571
  %9 = load i8, i8* %8, align 1, !dbg !928, !tbaa !668
  %10 = icmp eq i8 %9, 33, !dbg !929
  br i1 %10, label %11, label %32, !dbg !930

; <label>:11:                                     ; preds = %4
  br label %12, !dbg !931

; <label>:12:                                     ; preds = %11, %24
  %13 = phi i8 [ %29, %24 ], [ %9, %11 ]
  %14 = phi i8* [ %28, %24 ], [ %8, %11 ]
  %15 = phi i1 [ %25, %24 ], [ false, %11 ]
  %16 = phi i32 [ %21, %24 ], [ %1, %11 ]
  %17 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !931
  %18 = load i8, i8* %17, align 1, !dbg !931, !tbaa !668
  %19 = icmp eq i8 %18, 0, !dbg !932
  br i1 %19, label %20, label %102, !dbg !933

; <label>:20:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !934
  %21 = add nsw i32 %16, 1, !dbg !937
  store i32 %21, i32* @pos, align 4, !dbg !937, !tbaa !630
  %22 = icmp slt i32 %21, %2, !dbg !938
  br i1 %22, label %24, label %23, !dbg !939

; <label>:23:                                     ; preds = %20
  tail call fastcc void @beyond() #15, !dbg !940
  unreachable, !dbg !940

; <label>:24:                                     ; preds = %20
  %25 = xor i1 %15, true, !dbg !941
  %26 = sext i32 %21 to i64, !dbg !928
  %27 = getelementptr inbounds i8*, i8** %5, i64 %26, !dbg !928
  %28 = load i8*, i8** %27, align 8, !dbg !928, !tbaa !571
  %29 = load i8, i8* %28, align 1, !dbg !928, !tbaa !668
  %30 = icmp eq i8 %29, 33, !dbg !929
  br i1 %30, label %12, label %32, !dbg !930

; <label>:31:                                     ; preds = %0
  tail call fastcc void @beyond() #16, !dbg !942
  unreachable, !dbg !942

; <label>:32:                                     ; preds = %24, %4
  %33 = phi i32 [ %1, %4 ], [ %21, %24 ]
  %34 = phi i1 [ false, %4 ], [ %25, %24 ]
  %35 = phi i8* [ %8, %4 ], [ %28, %24 ]
  %36 = phi i8 [ %9, %4 ], [ %29, %24 ]
  %37 = icmp eq i8 %36, 40, !dbg !944
  br i1 %37, label %38, label %102, !dbg !945

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !946
  %40 = load i8, i8* %39, align 1, !dbg !946, !tbaa !668
  %41 = icmp eq i8 %40, 0, !dbg !947
  br i1 %41, label %42, label %102, !dbg !948

; <label>:42:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !949
  %43 = add nsw i32 %33, 1, !dbg !951
  store i32 %43, i32* @pos, align 4, !dbg !951, !tbaa !630
  %44 = icmp sgt i32 %2, %43, !dbg !952
  br i1 %44, label %46, label %45, !dbg !953

; <label>:45:                                     ; preds = %42
  tail call fastcc void @beyond() #15, !dbg !954
  unreachable, !dbg !954

; <label>:46:                                     ; preds = %42
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !920, metadata !564), !dbg !955
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !920, metadata !564), !dbg !955
  %47 = add nsw i32 %33, 2, !dbg !956
  %48 = icmp slt i32 %47, %2, !dbg !959
  br i1 %48, label %49, label %72, !dbg !960

; <label>:49:                                     ; preds = %46
  %50 = sext i32 %47 to i64, !dbg !960
  %51 = sext i32 %43 to i64, !dbg !960
  %52 = sext i32 %2 to i64, !dbg !960
  br label %53, !dbg !960

; <label>:53:                                     ; preds = %49, %66
  %54 = phi i64 [ 1, %49 ], [ %67, %66 ]
  %55 = phi i64 [ %50, %49 ], [ %71, %66 ]
  %56 = phi i32 [ 1, %49 ], [ %68, %66 ]
  tail call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !920, metadata !564), !dbg !955
  %57 = getelementptr inbounds i8*, i8** %5, i64 %55, !dbg !961
  %58 = load i8*, i8** %57, align 8, !dbg !961, !tbaa !571
  %59 = tail call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #14, !dbg !961
  %60 = icmp eq i32 %59, 0, !dbg !961
  %61 = trunc i64 %54 to i32, !dbg !962
  br i1 %60, label %72, label %62, !dbg !962

; <label>:62:                                     ; preds = %53
  %63 = icmp eq i64 %54, 4, !dbg !963
  br i1 %63, label %64, label %66, !dbg !965

; <label>:64:                                     ; preds = %62
  %65 = sub nsw i32 %2, %43, !dbg !966
  tail call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !920, metadata !564), !dbg !955
  br label %72, !dbg !968

; <label>:66:                                     ; preds = %62
  %67 = add nuw nsw i64 %54, 1, !dbg !969
  %68 = add nuw nsw i32 %56, 1, !dbg !969
  tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !920, metadata !564), !dbg !955
  tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !920, metadata !564), !dbg !955
  %69 = add nsw i64 %67, %51, !dbg !956
  %70 = icmp slt i64 %69, %52, !dbg !959
  %71 = add nsw i64 %55, 1, !dbg !956
  br i1 %70, label %53, label %72, !dbg !960, !llvm.loop !970

; <label>:72:                                     ; preds = %66, %53, %46, %64
  %73 = phi i32 [ %65, %64 ], [ 1, %46 ], [ %68, %66 ], [ %61, %53 ]
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !920, metadata !564), !dbg !955
  %74 = tail call fastcc zeroext i1 @posixtest(i32 %73), !dbg !972
  %75 = load i8**, i8*** @argv, align 8, !dbg !973, !tbaa !571
  %76 = load i32, i32* @pos, align 4, !dbg !975, !tbaa !630
  %77 = sext i32 %76 to i64, !dbg !973
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77, !dbg !973
  %79 = load i8*, i8** %78, align 8, !dbg !973, !tbaa !571
  %80 = icmp eq i8* %79, null, !dbg !976
  br i1 %80, label %81, label %84, !dbg !977

; <label>:81:                                     ; preds = %72
  %82 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i32 5) #8, !dbg !978
  %83 = tail call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !979
  tail call void (i8*, ...) @test_syntax_error(i8* %82, i8* %83) #16, !dbg !980
  unreachable, !dbg !980

; <label>:84:                                     ; preds = %72
  %85 = load i8, i8* %79, align 1, !dbg !981, !tbaa !668
  %86 = icmp eq i8 %85, 41, !dbg !983
  br i1 %86, label %87, label %91, !dbg !984

; <label>:87:                                     ; preds = %84
  %88 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !985
  %89 = load i8, i8* %88, align 1, !dbg !985, !tbaa !668
  %90 = icmp eq i8 %89, 0, !dbg !985
  br i1 %90, label %100, label %91, !dbg !986

; <label>:91:                                     ; preds = %87, %84
  %92 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i64 0, i64 0), i32 5) #8, !dbg !987
  %93 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !988
  %94 = load i8**, i8*** @argv, align 8, !dbg !989, !tbaa !571
  %95 = load i32, i32* @pos, align 4, !dbg !990, !tbaa !630
  %96 = sext i32 %95 to i64, !dbg !989
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96, !dbg !989
  %98 = load i8*, i8** %97, align 8, !dbg !989, !tbaa !571
  %99 = tail call i8* @quote_n(i32 1, i8* %98) #8, !dbg !991
  tail call void (i8*, ...) @test_syntax_error(i8* %92, i8* %93, i8* %99) #16, !dbg !992
  unreachable, !dbg !992

; <label>:100:                                    ; preds = %87
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !678, metadata !564), !dbg !993
  %101 = add nsw i32 %76, 1, !dbg !995
  store i32 %101, i32* @pos, align 4, !dbg !995, !tbaa !630
  br label %155, !dbg !996

; <label>:102:                                    ; preds = %12, %38, %32
  %103 = phi i32 [ %33, %38 ], [ %33, %32 ], [ %16, %12 ]
  %104 = phi i1 [ %34, %38 ], [ %34, %32 ], [ %15, %12 ]
  %105 = phi i8* [ %35, %38 ], [ %35, %32 ], [ %14, %12 ]
  %106 = phi i8 [ %36, %38 ], [ %36, %32 ], [ %13, %12 ]
  %107 = sub nsw i32 %2, %103, !dbg !997
  %108 = icmp sgt i32 %107, 3, !dbg !999
  br i1 %108, label %109, label %120, !dbg !1000

; <label>:109:                                    ; preds = %102
  %110 = tail call i32 @strcmp(i8* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #14, !dbg !1001
  %111 = icmp eq i32 %110, 0, !dbg !1001
  br i1 %111, label %112, label %122, !dbg !1002

; <label>:112:                                    ; preds = %109
  %113 = add nsw i32 %103, 2, !dbg !1003
  %114 = sext i32 %113 to i64, !dbg !1004
  %115 = getelementptr inbounds i8*, i8** %5, i64 %114, !dbg !1004
  %116 = load i8*, i8** %115, align 8, !dbg !1004, !tbaa !571
  %117 = tail call fastcc zeroext i1 @binop(i8* %116), !dbg !1005
  br i1 %117, label %118, label %122, !dbg !1006

; <label>:118:                                    ; preds = %112
  %119 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext true), !dbg !1007
  br label %155, !dbg !1008

; <label>:120:                                    ; preds = %102
  %121 = icmp eq i32 %107, 3, !dbg !1009
  br i1 %121, label %122, label %130, !dbg !1011

; <label>:122:                                    ; preds = %109, %112, %120
  %123 = add nsw i32 %103, 1, !dbg !1012
  %124 = sext i32 %123 to i64, !dbg !1013
  %125 = getelementptr inbounds i8*, i8** %5, i64 %124, !dbg !1013
  %126 = load i8*, i8** %125, align 8, !dbg !1013, !tbaa !571
  %127 = tail call fastcc zeroext i1 @binop(i8* %126), !dbg !1014
  br i1 %127, label %128, label %130, !dbg !1015

; <label>:128:                                    ; preds = %122
  %129 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !1016
  br label %155, !dbg !1017

; <label>:130:                                    ; preds = %122, %120
  %131 = icmp eq i8 %106, 45, !dbg !1018
  br i1 %131, label %132, label %152, !dbg !1020

; <label>:132:                                    ; preds = %130
  %133 = getelementptr inbounds i8, i8* %105, i64 1, !dbg !1021
  %134 = load i8, i8* %133, align 1, !dbg !1021, !tbaa !668
  %135 = icmp eq i8 %134, 0, !dbg !1021
  br i1 %135, label %152, label %136, !dbg !1022

; <label>:136:                                    ; preds = %132
  %137 = getelementptr inbounds i8, i8* %105, i64 2, !dbg !1023
  %138 = load i8, i8* %137, align 1, !dbg !1023, !tbaa !668
  %139 = icmp eq i8 %138, 0, !dbg !1024
  br i1 %139, label %140, label %152, !dbg !1025

; <label>:140:                                    ; preds = %136
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !810, metadata !564), !dbg !1026
  %141 = sext i8 %134 to i32, !dbg !1030
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
  ], !dbg !1031

; <label>:142:                                    ; preds = %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140
  %143 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1032
  br label %155, !dbg !1033

; <label>:144:                                    ; preds = %140
  %145 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i32 5) #8, !dbg !1034
  %146 = load i8**, i8*** @argv, align 8, !dbg !1035, !tbaa !571
  %147 = load i32, i32* @pos, align 4, !dbg !1036, !tbaa !630
  %148 = sext i32 %147 to i64, !dbg !1035
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148, !dbg !1035
  %150 = load i8*, i8** %149, align 8, !dbg !1035, !tbaa !571
  %151 = tail call i8* @quote(i8* %150) #8, !dbg !1037
  tail call void (i8*, ...) @test_syntax_error(i8* %145, i8* %151) #16, !dbg !1038
  unreachable, !dbg !1038

; <label>:152:                                    ; preds = %132, %136, %130
  %153 = icmp ne i8 %106, 0, !dbg !1039
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !678, metadata !564), !dbg !1041
  %154 = add nsw i32 %103, 1, !dbg !1043
  store i32 %154, i32* @pos, align 4, !dbg !1043, !tbaa !630
  br label %155

; <label>:155:                                    ; preds = %118, %142, %152, %128, %100
  %156 = phi i1 [ %34, %100 ], [ %104, %118 ], [ %104, %128 ], [ %104, %142 ], [ %104, %152 ]
  %157 = phi i1 [ %74, %100 ], [ %119, %118 ], [ %129, %128 ], [ %143, %142 ], [ %153, %152 ]
  %158 = xor i1 %156, %157, !dbg !1044
  ret i1 %158, !dbg !1045
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal fastcc zeroext i1 @binop(i8* nocapture readonly) unnamed_addr #9 !dbg !1046 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1048, metadata !564), !dbg !1049
  %2 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0)) #14, !dbg !1050
  %3 = icmp eq i32 %2, 0, !dbg !1050
  br i1 %3, label %37, label %4, !dbg !1051

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0)) #14, !dbg !1052
  %6 = icmp eq i32 %5, 0, !dbg !1052
  br i1 %6, label %37, label %7, !dbg !1053

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #14, !dbg !1054
  %9 = icmp eq i32 %8, 0, !dbg !1054
  br i1 %9, label %37, label %10, !dbg !1055

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0)) #14, !dbg !1056
  %12 = icmp eq i32 %11, 0, !dbg !1056
  br i1 %12, label %37, label %13, !dbg !1057

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)) #14, !dbg !1058
  %15 = icmp eq i32 %14, 0, !dbg !1058
  br i1 %15, label %37, label %16, !dbg !1059

; <label>:16:                                     ; preds = %13
  %17 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0)) #14, !dbg !1060
  %18 = icmp eq i32 %17, 0, !dbg !1060
  br i1 %18, label %37, label %19, !dbg !1061

; <label>:19:                                     ; preds = %16
  %20 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0)) #14, !dbg !1062
  %21 = icmp eq i32 %20, 0, !dbg !1062
  br i1 %21, label %37, label %22, !dbg !1063

; <label>:22:                                     ; preds = %19
  %23 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0)) #14, !dbg !1064
  %24 = icmp eq i32 %23, 0, !dbg !1064
  br i1 %24, label %37, label %25, !dbg !1065

; <label>:25:                                     ; preds = %22
  %26 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0)) #14, !dbg !1066
  %27 = icmp eq i32 %26, 0, !dbg !1066
  br i1 %27, label %37, label %28, !dbg !1067

; <label>:28:                                     ; preds = %25
  %29 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0)) #14, !dbg !1068
  %30 = icmp eq i32 %29, 0, !dbg !1068
  br i1 %30, label %37, label %31, !dbg !1069

; <label>:31:                                     ; preds = %28
  %32 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #14, !dbg !1070
  %33 = icmp eq i32 %32, 0, !dbg !1070
  br i1 %33, label %37, label %34, !dbg !1071

; <label>:34:                                     ; preds = %31
  %35 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0)) #14, !dbg !1072
  %36 = icmp eq i32 %35, 0, !dbg !1072
  br label %37, !dbg !1071

; <label>:37:                                     ; preds = %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %38 = phi i1 [ true, %31 ], [ true, %28 ], [ true, %25 ], [ true, %22 ], [ true, %19 ], [ true, %16 ], [ true, %13 ], [ true, %10 ], [ true, %7 ], [ true, %4 ], [ true, %1 ], [ %36, %34 ]
  ret i1 %38, !dbg !1073
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @binary_operator(i1 zeroext) unnamed_addr #6 !dbg !1074 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca [21 x i8], align 16
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1078, metadata !564), !dbg !1153
  %10 = bitcast %struct.stat* %6 to i8*, !dbg !1154
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %10) #8, !dbg !1154
  %11 = bitcast %struct.stat* %7 to i8*, !dbg !1154
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %11) #8, !dbg !1154
  %12 = load i32, i32* @pos, align 4, !tbaa !630
  br i1 %0, label %13, label %15, !dbg !1155

; <label>:13:                                     ; preds = %1
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !678, metadata !564), !dbg !1156
  %14 = add nsw i32 %12, 1, !dbg !1159
  store i32 %14, i32* @pos, align 4, !dbg !1159, !tbaa !630
  br label %15, !dbg !1160

; <label>:15:                                     ; preds = %1, %13
  %16 = phi i32 [ %14, %13 ], [ %12, %1 ], !dbg !1161
  %17 = add nsw i32 %16, 1, !dbg !1162
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !1079, metadata !564), !dbg !1163
  %18 = load i32, i32* @argc, align 4, !dbg !1164, !tbaa !630
  %19 = add nsw i32 %18, -2, !dbg !1166
  %20 = icmp slt i32 %17, %19, !dbg !1167
  %21 = load i8**, i8*** @argv, align 8, !tbaa !571
  br i1 %20, label %22, label %30, !dbg !1168

; <label>:22:                                     ; preds = %15
  %23 = add nsw i32 %16, 2, !dbg !1169
  %24 = sext i32 %23 to i64, !dbg !1169
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24, !dbg !1169
  %26 = load i8*, i8** %25, align 8, !dbg !1169, !tbaa !571
  %27 = tail call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #14, !dbg !1169
  %28 = icmp eq i32 %27, 0, !dbg !1169
  br i1 %28, label %29, label %30, !dbg !1170

; <label>:29:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1120, metadata !564), !dbg !1171
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !678, metadata !564), !dbg !1172
  store i32 %17, i32* @pos, align 4, !dbg !1175, !tbaa !630
  br label %30, !dbg !1176

; <label>:30:                                     ; preds = %15, %22, %29
  %31 = phi i32 [ %17, %29 ], [ %16, %22 ], [ %16, %15 ]
  %32 = phi i1 [ true, %29 ], [ false, %22 ], [ false, %15 ]
  %33 = sext i32 %17 to i64, !dbg !1177
  %34 = getelementptr inbounds i8*, i8** %21, i64 %33, !dbg !1177
  %35 = load i8*, i8** %34, align 8, !dbg !1177, !tbaa !571
  %36 = load i8, i8* %35, align 1, !dbg !1177, !tbaa !668
  switch i8 %36, label %265 [
    i8 45, label %37
    i8 61, label %247
  ], !dbg !1178

; <label>:37:                                     ; preds = %30
  %38 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1179
  %39 = load i8, i8* %38, align 1, !dbg !1179, !tbaa !668
  switch i8 %39, label %107 [
    i8 108, label %40
    i8 103, label %40
    i8 101, label %43
    i8 110, label %47
  ], !dbg !1180

; <label>:40:                                     ; preds = %37, %37
  %41 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1181
  %42 = load i8, i8* %41, align 1, !dbg !1181, !tbaa !668
  switch i8 %42, label %107 [
    i8 101, label %51
    i8 116, label %51
  ], !dbg !1182

; <label>:43:                                     ; preds = %37
  %44 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1183
  %45 = load i8, i8* %44, align 1, !dbg !1183, !tbaa !668
  %46 = icmp eq i8 %45, 113, !dbg !1184
  br i1 %46, label %51, label %107, !dbg !1185

; <label>:47:                                     ; preds = %37
  %48 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1186
  %49 = load i8, i8* %48, align 1, !dbg !1186, !tbaa !668
  %50 = icmp eq i8 %49, 101, !dbg !1187
  br i1 %50, label %51, label %107, !dbg !1188

; <label>:51:                                     ; preds = %40, %40, %47, %43
  %52 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1189
  %53 = load i8, i8* %52, align 1, !dbg !1189, !tbaa !668
  %54 = icmp eq i8 %53, 0, !dbg !1189
  br i1 %54, label %55, label %107, !dbg !1190

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !1191
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %56) #8, !dbg !1191
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !1121, metadata !564), !dbg !1192
  %57 = getelementptr inbounds [21 x i8], [21 x i8]* %9, i64 0, i64 0, !dbg !1193
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %57) #8, !dbg !1193
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %9, metadata !1129, metadata !564), !dbg !1194
  %58 = sext i32 %16 to i64
  %59 = getelementptr inbounds i8*, i8** %21, i64 %58
  %60 = load i8*, i8** %59, align 8, !tbaa !571
  br i1 %0, label %61, label %64, !dbg !1195

; <label>:61:                                     ; preds = %55
  %62 = tail call i64 @strlen(i8* %60) #14, !dbg !1196
  %63 = call i8* @umaxtostr(i64 %62, i8* nonnull %56) #8, !dbg !1197
  br label %66, !dbg !1195

; <label>:64:                                     ; preds = %55
  %65 = tail call fastcc i8* @find_int(i8* %60), !dbg !1198
  br label %66, !dbg !1195

; <label>:66:                                     ; preds = %64, %61
  %67 = phi i8* [ %63, %61 ], [ %65, %64 ], !dbg !1195
  call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !1130, metadata !564), !dbg !1199
  %68 = load i8**, i8*** @argv, align 8, !tbaa !571
  br i1 %32, label %69, label %76, !dbg !1200

; <label>:69:                                     ; preds = %66
  %70 = add nsw i32 %16, 3, !dbg !1201
  %71 = sext i32 %70 to i64, !dbg !1202
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71, !dbg !1202
  %73 = load i8*, i8** %72, align 8, !dbg !1202, !tbaa !571
  %74 = call i64 @strlen(i8* %73) #14, !dbg !1203
  %75 = call i8* @umaxtostr(i64 %74, i8* nonnull %57) #8, !dbg !1204
  br label %82, !dbg !1200

; <label>:76:                                     ; preds = %66
  %77 = add nsw i32 %16, 2, !dbg !1205
  %78 = sext i32 %77 to i64, !dbg !1206
  %79 = getelementptr inbounds i8*, i8** %68, i64 %78, !dbg !1206
  %80 = load i8*, i8** %79, align 8, !dbg !1206, !tbaa !571
  %81 = call fastcc i8* @find_int(i8* %80), !dbg !1207
  br label %82, !dbg !1200

; <label>:82:                                     ; preds = %76, %69
  %83 = phi i8* [ %75, %69 ], [ %81, %76 ], !dbg !1200
  call void @llvm.dbg.value(metadata i8* %83, i64 0, metadata !1131, metadata !564), !dbg !1208
  %84 = call i32 @strintcmp(i8* %67, i8* %83) #14, !dbg !1209
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !1132, metadata !564), !dbg !1210
  %85 = load i8**, i8*** @argv, align 8, !dbg !1211, !tbaa !571
  %86 = getelementptr inbounds i8*, i8** %85, i64 %33, !dbg !1211
  %87 = load i8*, i8** %86, align 8, !dbg !1211, !tbaa !571
  %88 = getelementptr inbounds i8, i8* %87, i64 2, !dbg !1211
  %89 = load i8, i8* %88, align 1, !dbg !1211, !tbaa !668
  %90 = icmp eq i8 %89, 101, !dbg !1212
  %91 = load i32, i32* @pos, align 4, !dbg !1213, !tbaa !630
  %92 = add nsw i32 %91, 3, !dbg !1213
  store i32 %92, i32* @pos, align 4, !dbg !1213, !tbaa !630
  %93 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1214
  %94 = load i8, i8* %93, align 1, !dbg !1214, !tbaa !668
  switch i8 %94, label %101 [
    i8 108, label %95
    i8 103, label %98
  ], !dbg !1214

; <label>:95:                                     ; preds = %82
  %96 = zext i1 %90 to i32, !dbg !1215
  %97 = icmp slt i32 %84, %96, !dbg !1216
  br label %105, !dbg !1214

; <label>:98:                                     ; preds = %82
  %99 = sext i1 %90 to i32, !dbg !1217
  %100 = icmp sgt i32 %84, %99, !dbg !1218
  br label %105, !dbg !1219

; <label>:101:                                    ; preds = %82
  %102 = icmp ne i32 %84, 0, !dbg !1220
  %103 = xor i1 %102, %90, !dbg !1221
  %104 = xor i1 %103, true, !dbg !1221
  br label %105, !dbg !1219

; <label>:105:                                    ; preds = %98, %101, %95
  %106 = phi i1 [ %97, %95 ], [ %104, %101 ], [ %100, %98 ]
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %57) #8, !dbg !1222
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %56) #8, !dbg !1222
  br label %280

; <label>:107:                                    ; preds = %37, %40, %43, %51, %47
  %108 = sext i8 %39 to i32, !dbg !1223
  switch i32 %108, label %241 [
    i32 110, label %109
    i32 101, label %156
    i32 111, label %195
  ], !dbg !1224

; <label>:109:                                    ; preds = %107
  %110 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1225
  %111 = load i8, i8* %110, align 1, !dbg !1225, !tbaa !668
  %112 = icmp eq i8 %111, 116, !dbg !1226
  br i1 %112, label %113, label %241, !dbg !1227

; <label>:113:                                    ; preds = %109
  %114 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1228
  %115 = load i8, i8* %114, align 1, !dbg !1228, !tbaa !668
  %116 = icmp eq i8 %115, 0, !dbg !1228
  br i1 %116, label %117, label %241, !dbg !1229

; <label>:117:                                    ; preds = %113
  %118 = add nsw i32 %31, 3, !dbg !1230
  store i32 %118, i32* @pos, align 4, !dbg !1230, !tbaa !630
  %119 = or i1 %32, %0, !dbg !1231
  br i1 %119, label %120, label %122, !dbg !1231

; <label>:120:                                    ; preds = %117
  %121 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i64 0, i64 0), i32 5) #8, !dbg !1233
  tail call void (i8*, ...) @test_syntax_error(i8* %121, i8* null) #16, !dbg !1234
  unreachable, !dbg !1234

; <label>:122:                                    ; preds = %117
  %123 = sext i32 %16 to i64, !dbg !1235
  %124 = getelementptr inbounds i8*, i8** %21, i64 %123, !dbg !1235
  %125 = load i8*, i8** %124, align 8, !dbg !1235, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1134, metadata !564), !dbg !1236
  tail call void @llvm.dbg.value(metadata i8* %125, i64 0, metadata !1237, metadata !564) #8, !dbg !1246
  tail call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1243, metadata !564) #8, !dbg !1248
  %126 = bitcast %struct.stat* %4 to i8*, !dbg !1249
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %126) #8, !dbg !1249
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !1244, metadata !564) #8, !dbg !1250
  tail call void @llvm.dbg.value(metadata i8* %125, i64 0, metadata !1251, metadata !564) #8, !dbg !1259
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !1258, metadata !564) #8, !dbg !1259
  %127 = call i32 @__xstat(i32 1, i8* nonnull %125, %struct.stat* nonnull %4) #8, !dbg !1261
  %128 = icmp eq i32 %127, 0, !dbg !1262
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !1244, metadata !564) #8, !dbg !1250
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !1263, metadata !564) #8, !dbg !1271
  %129 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 0, !dbg !1274
  %130 = load i64, i64* %129, align 8, !dbg !1274
  %131 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 1, !dbg !1274
  %132 = load i64, i64* %131, align 8, !dbg !1274
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %126) #8, !dbg !1275
  %133 = load i8**, i8*** @argv, align 8, !dbg !1276, !tbaa !571
  %134 = add nsw i32 %16, 2, !dbg !1277
  %135 = sext i32 %134 to i64, !dbg !1276
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135, !dbg !1276
  %137 = load i8*, i8** %136, align 8, !dbg !1276, !tbaa !571
  call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1138, metadata !564), !dbg !1278
  call void @llvm.dbg.value(metadata i8* %137, i64 0, metadata !1237, metadata !564) #8, !dbg !1279
  call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1243, metadata !564) #8, !dbg !1281
  %138 = bitcast %struct.stat* %3 to i8*, !dbg !1282
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %138) #8, !dbg !1282
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1244, metadata !564) #8, !dbg !1283
  call void @llvm.dbg.value(metadata i8* %137, i64 0, metadata !1251, metadata !564) #8, !dbg !1284
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1258, metadata !564) #8, !dbg !1284
  %139 = call i32 @__xstat(i32 1, i8* nonnull %137, %struct.stat* nonnull %3) #8, !dbg !1286
  %140 = icmp eq i32 %139, 0, !dbg !1287
  br i1 %140, label %142, label %141, !dbg !1288

; <label>:141:                                    ; preds = %122
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %138) #8, !dbg !1289
  br label %280, !dbg !1290

; <label>:142:                                    ; preds = %122
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1244, metadata !564) #8, !dbg !1283
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1263, metadata !564) #8, !dbg !1291
  %143 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 0, !dbg !1293
  %144 = load i64, i64* %143, align 8, !dbg !1293
  %145 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 1, !dbg !1293
  %146 = load i64, i64* %145, align 8, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %138) #8, !dbg !1289
  %147 = xor i1 %128, true, !dbg !1290
  %148 = icmp slt i64 %130, %144, !dbg !1294
  %149 = or i1 %148, %147, !dbg !1290
  tail call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1300, metadata !1303), !dbg !1304
  tail call void @llvm.dbg.value(metadata i64 %132, i64 0, metadata !1300, metadata !1305), !dbg !1304
  tail call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1301, metadata !1303), !dbg !1306
  tail call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1301, metadata !1305), !dbg !1306
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !1300, metadata !564), !dbg !1304
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !1301, metadata !564), !dbg !1306
  br i1 %149, label %280, label %150, !dbg !1290

; <label>:150:                                    ; preds = %142
  %151 = icmp sgt i64 %130, %144, !dbg !1307
  br i1 %151, label %280, label %152, !dbg !1308

; <label>:152:                                    ; preds = %150
  %153 = sub nsw i64 %132, %146, !dbg !1309
  %154 = trunc i64 %153 to i32, !dbg !1310
  %155 = icmp sgt i32 %154, 0, !dbg !1308
  br label %280, !dbg !1308

; <label>:156:                                    ; preds = %107
  %157 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1311
  %158 = load i8, i8* %157, align 1, !dbg !1311, !tbaa !668
  %159 = icmp eq i8 %158, 102, !dbg !1313
  br i1 %159, label %160, label %241, !dbg !1314

; <label>:160:                                    ; preds = %156
  %161 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1315
  %162 = load i8, i8* %161, align 1, !dbg !1315, !tbaa !668
  %163 = icmp eq i8 %162, 0, !dbg !1315
  br i1 %163, label %164, label %241, !dbg !1316

; <label>:164:                                    ; preds = %160
  %165 = add nsw i32 %31, 3, !dbg !1317
  store i32 %165, i32* @pos, align 4, !dbg !1317, !tbaa !630
  %166 = or i1 %32, %0, !dbg !1319
  br i1 %166, label %167, label %169, !dbg !1319

; <label>:167:                                    ; preds = %164
  %168 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i64 0, i64 0), i32 5) #8, !dbg !1321
  tail call void (i8*, ...) @test_syntax_error(i8* %168, i8* null) #16, !dbg !1322
  unreachable, !dbg !1322

; <label>:169:                                    ; preds = %164
  %170 = sext i32 %16 to i64, !dbg !1323
  %171 = getelementptr inbounds i8*, i8** %21, i64 %170, !dbg !1323
  %172 = load i8*, i8** %171, align 8, !dbg !1323, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.stat* %6, i64 0, metadata !1080, metadata !564), !dbg !1324
  tail call void @llvm.dbg.value(metadata i8* %172, i64 0, metadata !1251, metadata !564) #8, !dbg !1325
  tail call void @llvm.dbg.value(metadata %struct.stat* %6, i64 0, metadata !1258, metadata !564) #8, !dbg !1325
  %173 = call i32 @__xstat(i32 1, i8* nonnull %172, %struct.stat* nonnull %6) #8, !dbg !1327
  %174 = icmp eq i32 %173, 0, !dbg !1328
  br i1 %174, label %175, label %280, !dbg !1329

; <label>:175:                                    ; preds = %169
  %176 = load i8**, i8*** @argv, align 8, !dbg !1330, !tbaa !571
  %177 = add nsw i32 %16, 2, !dbg !1331
  %178 = sext i32 %177 to i64, !dbg !1330
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178, !dbg !1330
  %180 = load i8*, i8** %179, align 8, !dbg !1330, !tbaa !571
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !1119, metadata !564), !dbg !1332
  call void @llvm.dbg.value(metadata i8* %180, i64 0, metadata !1251, metadata !564) #8, !dbg !1333
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !1258, metadata !564) #8, !dbg !1333
  %181 = call i32 @__xstat(i32 1, i8* nonnull %180, %struct.stat* nonnull %7) #8, !dbg !1335
  %182 = icmp eq i32 %181, 0, !dbg !1336
  br i1 %182, label %183, label %280, !dbg !1337

; <label>:183:                                    ; preds = %175
  %184 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0, !dbg !1338
  %185 = load i64, i64* %184, align 8, !dbg !1338, !tbaa !1339
  %186 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 0, !dbg !1343
  %187 = load i64, i64* %186, align 8, !dbg !1343, !tbaa !1339
  %188 = icmp eq i64 %185, %187, !dbg !1344
  br i1 %188, label %189, label %280, !dbg !1345

; <label>:189:                                    ; preds = %183
  %190 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1, !dbg !1346
  %191 = load i64, i64* %190, align 8, !dbg !1346, !tbaa !1347
  %192 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1, !dbg !1348
  %193 = load i64, i64* %192, align 8, !dbg !1348, !tbaa !1347
  %194 = icmp eq i64 %191, %193, !dbg !1349
  br label %280

; <label>:195:                                    ; preds = %107
  %196 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1350
  %197 = load i8, i8* %196, align 1, !dbg !1350, !tbaa !668
  %198 = icmp eq i8 %197, 116, !dbg !1351
  br i1 %198, label %199, label %241, !dbg !1352

; <label>:199:                                    ; preds = %195
  %200 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1353
  %201 = load i8, i8* %200, align 1, !dbg !1353, !tbaa !668
  %202 = icmp eq i8 %201, 0, !dbg !1354
  br i1 %202, label %203, label %241, !dbg !1355

; <label>:203:                                    ; preds = %199
  %204 = add nsw i32 %31, 3, !dbg !1356
  store i32 %204, i32* @pos, align 4, !dbg !1356, !tbaa !630
  %205 = or i1 %32, %0, !dbg !1357
  br i1 %205, label %206, label %208, !dbg !1357

; <label>:206:                                    ; preds = %203
  %207 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i64 0, i64 0), i32 5) #8, !dbg !1359
  tail call void (i8*, ...) @test_syntax_error(i8* %207, i8* null) #16, !dbg !1360
  unreachable, !dbg !1360

; <label>:208:                                    ; preds = %203
  %209 = sext i32 %16 to i64, !dbg !1361
  %210 = getelementptr inbounds i8*, i8** %21, i64 %209, !dbg !1361
  %211 = load i8*, i8** %210, align 8, !dbg !1361, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1141, metadata !564), !dbg !1362
  tail call void @llvm.dbg.value(metadata i8* %211, i64 0, metadata !1237, metadata !564) #8, !dbg !1363
  tail call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1243, metadata !564) #8, !dbg !1365
  %212 = bitcast %struct.stat* %2 to i8*, !dbg !1366
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %212) #8, !dbg !1366
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1244, metadata !564) #8, !dbg !1367
  tail call void @llvm.dbg.value(metadata i8* %211, i64 0, metadata !1251, metadata !564) #8, !dbg !1368
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1258, metadata !564) #8, !dbg !1368
  %213 = call i32 @__xstat(i32 1, i8* nonnull %211, %struct.stat* nonnull %2) #8, !dbg !1370
  call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1244, metadata !564) #8, !dbg !1367
  call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1263, metadata !564) #8, !dbg !1371
  %214 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 0, !dbg !1373
  %215 = load i64, i64* %214, align 8, !dbg !1373
  %216 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 1, !dbg !1373
  %217 = load i64, i64* %216, align 8, !dbg !1373
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %212) #8, !dbg !1374
  %218 = load i8**, i8*** @argv, align 8, !dbg !1375, !tbaa !571
  %219 = add nsw i32 %16, 2, !dbg !1376
  %220 = sext i32 %219 to i64, !dbg !1375
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220, !dbg !1375
  %222 = load i8*, i8** %221, align 8, !dbg !1375, !tbaa !571
  call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1144, metadata !564), !dbg !1377
  call void @llvm.dbg.value(metadata i8* %222, i64 0, metadata !1237, metadata !564) #8, !dbg !1378
  call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1243, metadata !564) #8, !dbg !1380
  %223 = bitcast %struct.stat* %5 to i8*, !dbg !1381
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %223) #8, !dbg !1381
  call void @llvm.dbg.value(metadata %struct.stat* %5, i64 0, metadata !1244, metadata !564) #8, !dbg !1382
  call void @llvm.dbg.value(metadata i8* %222, i64 0, metadata !1251, metadata !564) #8, !dbg !1383
  call void @llvm.dbg.value(metadata %struct.stat* %5, i64 0, metadata !1258, metadata !564) #8, !dbg !1383
  %224 = call i32 @__xstat(i32 1, i8* nonnull %222, %struct.stat* nonnull %5) #8, !dbg !1385
  %225 = icmp eq i32 %224, 0, !dbg !1386
  br i1 %225, label %227, label %226, !dbg !1387

; <label>:226:                                    ; preds = %208
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %223) #8, !dbg !1388
  br label %280, !dbg !1389

; <label>:227:                                    ; preds = %208
  %228 = icmp ne i32 %213, 0, !dbg !1390
  call void @llvm.dbg.value(metadata %struct.stat* %5, i64 0, metadata !1244, metadata !564) #8, !dbg !1382
  call void @llvm.dbg.value(metadata %struct.stat* %5, i64 0, metadata !1263, metadata !564) #8, !dbg !1391
  %229 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 0, !dbg !1393
  %230 = load i64, i64* %229, align 8, !dbg !1393
  %231 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 1, !dbg !1393
  %232 = load i64, i64* %231, align 8, !dbg !1393
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %223) #8, !dbg !1388
  %233 = icmp slt i64 %215, %230, !dbg !1394
  %234 = or i1 %228, %233, !dbg !1389
  tail call void @llvm.dbg.value(metadata i64 %215, i64 0, metadata !1300, metadata !1303), !dbg !1396
  tail call void @llvm.dbg.value(metadata i64 %217, i64 0, metadata !1300, metadata !1305), !dbg !1396
  tail call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1301, metadata !1303), !dbg !1397
  tail call void @llvm.dbg.value(metadata i64 %232, i64 0, metadata !1301, metadata !1305), !dbg !1397
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !1300, metadata !564), !dbg !1396
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !1301, metadata !564), !dbg !1397
  br i1 %234, label %280, label %235, !dbg !1389

; <label>:235:                                    ; preds = %227
  %236 = icmp sgt i64 %215, %230, !dbg !1398
  br i1 %236, label %280, label %237, !dbg !1399

; <label>:237:                                    ; preds = %235
  %238 = sub nsw i64 %217, %232, !dbg !1400
  %239 = trunc i64 %238 to i32, !dbg !1401
  %240 = icmp slt i32 %239, 0, !dbg !1399
  br label %280, !dbg !1399

; <label>:241:                                    ; preds = %113, %160, %195, %199, %156, %109, %107
  %242 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i64 0, i64 0), i32 5) #8, !dbg !1402
  %243 = load i8**, i8*** @argv, align 8, !dbg !1403, !tbaa !571
  %244 = getelementptr inbounds i8*, i8** %243, i64 %33, !dbg !1403
  %245 = load i8*, i8** %244, align 8, !dbg !1403, !tbaa !571
  %246 = tail call i8* @quote(i8* %245) #8, !dbg !1404
  tail call void (i8*, ...) @test_syntax_error(i8* %242, i8* %246) #16, !dbg !1405
  unreachable, !dbg !1405

; <label>:247:                                    ; preds = %30
  %248 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1406
  %249 = load i8, i8* %248, align 1, !dbg !1406, !tbaa !668
  switch i8 %249, label %265 [
    i8 0, label %254
    i8 61, label %250
  ], !dbg !1407

; <label>:250:                                    ; preds = %247
  %251 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1408
  %252 = load i8, i8* %251, align 1, !dbg !1408, !tbaa !668
  %253 = icmp eq i8 %252, 0, !dbg !1408
  br i1 %253, label %254, label %265, !dbg !1409

; <label>:254:                                    ; preds = %247, %250
  %255 = sext i32 %31 to i64, !dbg !1410
  %256 = getelementptr inbounds i8*, i8** %21, i64 %255, !dbg !1410
  %257 = load i8*, i8** %256, align 8, !dbg !1410, !tbaa !571
  %258 = add nsw i32 %31, 2, !dbg !1410
  %259 = sext i32 %258 to i64, !dbg !1410
  %260 = getelementptr inbounds i8*, i8** %21, i64 %259, !dbg !1410
  %261 = load i8*, i8** %260, align 8, !dbg !1410, !tbaa !571
  %262 = tail call i32 @strcmp(i8* %257, i8* %261) #14, !dbg !1410
  %263 = icmp eq i32 %262, 0, !dbg !1410
  %264 = add nsw i32 %31, 3, !dbg !1411
  store i32 %264, i32* @pos, align 4, !dbg !1411, !tbaa !630
  br label %280

; <label>:265:                                    ; preds = %247, %30, %250
  %266 = tail call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0)) #14, !dbg !1412
  %267 = icmp eq i32 %266, 0, !dbg !1412
  br i1 %267, label %268, label %279, !dbg !1413

; <label>:268:                                    ; preds = %265
  %269 = sext i32 %31 to i64, !dbg !1414
  %270 = getelementptr inbounds i8*, i8** %21, i64 %269, !dbg !1414
  %271 = load i8*, i8** %270, align 8, !dbg !1414, !tbaa !571
  %272 = add nsw i32 %31, 2, !dbg !1414
  %273 = sext i32 %272 to i64, !dbg !1414
  %274 = getelementptr inbounds i8*, i8** %21, i64 %273, !dbg !1414
  %275 = load i8*, i8** %274, align 8, !dbg !1414, !tbaa !571
  %276 = tail call i32 @strcmp(i8* %271, i8* %275) #14, !dbg !1414
  %277 = icmp ne i32 %276, 0, !dbg !1414
  %278 = add nsw i32 %31, 3, !dbg !1415
  store i32 %278, i32* @pos, align 4, !dbg !1415, !tbaa !630
  br label %280

; <label>:279:                                    ; preds = %265
  tail call void @abort() #15, !dbg !1416
  unreachable, !dbg !1416

; <label>:280:                                    ; preds = %227, %142, %237, %235, %152, %150, %226, %141, %169, %175, %183, %189, %268, %254, %105
  %281 = phi i1 [ %106, %105 ], [ %277, %268 ], [ %263, %254 ], [ false, %183 ], [ false, %175 ], [ false, %169 ], [ %194, %189 ], [ false, %142 ], [ %128, %141 ], [ true, %227 ], [ false, %226 ], [ %155, %152 ], [ true, %150 ], [ %240, %237 ], [ false, %235 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %11) #8, !dbg !1417
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %10) #8, !dbg !1417
  ret i1 %281, !dbg !1417
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @unary_operator() unnamed_addr #6 !dbg !1418 {
  %1 = alloca %struct.stat, align 8
  %2 = bitcast %struct.stat* %1 to i8*, !dbg !1434
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %2) #8, !dbg !1434
  %3 = load i8**, i8*** @argv, align 8, !dbg !1435, !tbaa !571
  %4 = load i32, i32* @pos, align 4, !dbg !1436, !tbaa !630
  %5 = sext i32 %4 to i64, !dbg !1435
  %6 = getelementptr inbounds i8*, i8** %3, i64 %5, !dbg !1435
  %7 = load i8*, i8** %6, align 8, !dbg !1435, !tbaa !571
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1435
  %9 = load i8, i8* %8, align 1, !dbg !1435, !tbaa !668
  %10 = sext i8 %9 to i32, !dbg !1435
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
  ], !dbg !1437

; <label>:11:                                     ; preds = %0, %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1438
  %12 = add nsw i32 %4, 1, !dbg !1442
  store i32 %12, i32* @pos, align 4, !dbg !1442, !tbaa !630
  %13 = load i32, i32* @argc, align 4, !dbg !1443
  %14 = icmp slt i32 %12, %13, !dbg !1444
  br i1 %14, label %16, label %15, !dbg !1445

; <label>:15:                                     ; preds = %11
  tail call fastcc void @beyond() #15, !dbg !1446
  unreachable, !dbg !1446

; <label>:16:                                     ; preds = %11
  %17 = add nsw i32 %4, 2, !dbg !1447
  store i32 %17, i32* @pos, align 4, !dbg !1447, !tbaa !630
  %18 = sext i32 %12 to i64, !dbg !1448
  %19 = getelementptr inbounds i8*, i8** %3, i64 %18, !dbg !1448
  %20 = load i8*, i8** %19, align 8, !dbg !1448, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1420, metadata !564), !dbg !1449
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1251, metadata !564) #8, !dbg !1450
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1258, metadata !564) #8, !dbg !1450
  %21 = call i32 @__xstat(i32 1, i8* nonnull %20, %struct.stat* nonnull %1) #8, !dbg !1452
  %22 = icmp eq i32 %21, 0, !dbg !1453
  br label %336, !dbg !1454

; <label>:23:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1455
  %24 = add nsw i32 %4, 1, !dbg !1458
  store i32 %24, i32* @pos, align 4, !dbg !1458, !tbaa !630
  %25 = load i32, i32* @argc, align 4, !dbg !1459
  %26 = icmp slt i32 %24, %25, !dbg !1460
  br i1 %26, label %28, label %27, !dbg !1461

; <label>:27:                                     ; preds = %23
  tail call fastcc void @beyond() #15, !dbg !1462
  unreachable, !dbg !1462

; <label>:28:                                     ; preds = %23
  %29 = add nsw i32 %4, 2, !dbg !1463
  store i32 %29, i32* @pos, align 4, !dbg !1463, !tbaa !630
  %30 = sext i32 %24 to i64, !dbg !1464
  %31 = getelementptr inbounds i8*, i8** %3, i64 %30, !dbg !1464
  %32 = load i8*, i8** %31, align 8, !dbg !1464, !tbaa !571
  %33 = tail call i32 @euidaccess(i8* %32, i32 4) #8, !dbg !1465
  %34 = icmp eq i32 %33, 0, !dbg !1466
  br label %336, !dbg !1467

; <label>:35:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1468
  %36 = add nsw i32 %4, 1, !dbg !1471
  store i32 %36, i32* @pos, align 4, !dbg !1471, !tbaa !630
  %37 = load i32, i32* @argc, align 4, !dbg !1472
  %38 = icmp slt i32 %36, %37, !dbg !1473
  br i1 %38, label %40, label %39, !dbg !1474

; <label>:39:                                     ; preds = %35
  tail call fastcc void @beyond() #15, !dbg !1475
  unreachable, !dbg !1475

; <label>:40:                                     ; preds = %35
  %41 = add nsw i32 %4, 2, !dbg !1476
  store i32 %41, i32* @pos, align 4, !dbg !1476, !tbaa !630
  %42 = sext i32 %36 to i64, !dbg !1477
  %43 = getelementptr inbounds i8*, i8** %3, i64 %42, !dbg !1477
  %44 = load i8*, i8** %43, align 8, !dbg !1477, !tbaa !571
  %45 = tail call i32 @euidaccess(i8* %44, i32 2) #8, !dbg !1478
  %46 = icmp eq i32 %45, 0, !dbg !1479
  br label %336, !dbg !1480

; <label>:47:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1481
  %48 = add nsw i32 %4, 1, !dbg !1484
  store i32 %48, i32* @pos, align 4, !dbg !1484, !tbaa !630
  %49 = load i32, i32* @argc, align 4, !dbg !1485
  %50 = icmp slt i32 %48, %49, !dbg !1486
  br i1 %50, label %52, label %51, !dbg !1487

; <label>:51:                                     ; preds = %47
  tail call fastcc void @beyond() #15, !dbg !1488
  unreachable, !dbg !1488

; <label>:52:                                     ; preds = %47
  %53 = add nsw i32 %4, 2, !dbg !1489
  store i32 %53, i32* @pos, align 4, !dbg !1489, !tbaa !630
  %54 = sext i32 %48 to i64, !dbg !1490
  %55 = getelementptr inbounds i8*, i8** %3, i64 %54, !dbg !1490
  %56 = load i8*, i8** %55, align 8, !dbg !1490, !tbaa !571
  %57 = tail call i32 @euidaccess(i8* %56, i32 1) #8, !dbg !1491
  %58 = icmp eq i32 %57, 0, !dbg !1492
  br label %336, !dbg !1493

; <label>:59:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1494
  %60 = add nsw i32 %4, 1, !dbg !1497
  store i32 %60, i32* @pos, align 4, !dbg !1497, !tbaa !630
  %61 = load i32, i32* @argc, align 4, !dbg !1498
  %62 = icmp slt i32 %60, %61, !dbg !1499
  br i1 %62, label %64, label %63, !dbg !1500

; <label>:63:                                     ; preds = %59
  tail call fastcc void @beyond() #15, !dbg !1501
  unreachable, !dbg !1501

; <label>:64:                                     ; preds = %59
  %65 = add nsw i32 %4, 2, !dbg !1502
  store i32 %65, i32* @pos, align 4, !dbg !1502, !tbaa !630
  %66 = sext i32 %60 to i64, !dbg !1503
  %67 = getelementptr inbounds i8*, i8** %3, i64 %66, !dbg !1503
  %68 = load i8*, i8** %67, align 8, !dbg !1503, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1420, metadata !564), !dbg !1449
  tail call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !1251, metadata !564) #8, !dbg !1505
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1258, metadata !564) #8, !dbg !1505
  %69 = call i32 @__xstat(i32 1, i8* nonnull %68, %struct.stat* nonnull %1) #8, !dbg !1507
  %70 = icmp eq i32 %69, 0, !dbg !1508
  br i1 %70, label %71, label %336, !dbg !1509

; <label>:71:                                     ; preds = %64
  %72 = tail call i32* @__errno_location() #17, !dbg !1510
  store i32 0, i32* %72, align 4, !dbg !1511, !tbaa !630
  %73 = call i32 @geteuid() #8, !dbg !1512
  call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !1421, metadata !564), !dbg !1513
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1426, metadata !564), !dbg !1514
  %74 = icmp eq i32 %73, -1, !dbg !1515
  br i1 %74, label %75, label %78, !dbg !1516

; <label>:75:                                     ; preds = %71
  %76 = load i32, i32* %72, align 4, !dbg !1517, !tbaa !630
  %77 = icmp eq i32 %76, 0, !dbg !1517
  br i1 %77, label %78, label %336, !dbg !1518

; <label>:78:                                     ; preds = %75, %71
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 4, !dbg !1519
  %80 = load i32, i32* %79, align 4, !dbg !1519, !tbaa !1520
  %81 = icmp eq i32 %73, %80, !dbg !1521
  br label %336

; <label>:82:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1522
  %83 = add nsw i32 %4, 1, !dbg !1525
  store i32 %83, i32* @pos, align 4, !dbg !1525, !tbaa !630
  %84 = load i32, i32* @argc, align 4, !dbg !1526
  %85 = icmp slt i32 %83, %84, !dbg !1527
  br i1 %85, label %87, label %86, !dbg !1528

; <label>:86:                                     ; preds = %82
  tail call fastcc void @beyond() #15, !dbg !1529
  unreachable, !dbg !1529

; <label>:87:                                     ; preds = %82
  %88 = add nsw i32 %4, 2, !dbg !1530
  store i32 %88, i32* @pos, align 4, !dbg !1530, !tbaa !630
  %89 = sext i32 %83 to i64, !dbg !1531
  %90 = getelementptr inbounds i8*, i8** %3, i64 %89, !dbg !1531
  %91 = load i8*, i8** %90, align 8, !dbg !1531, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1420, metadata !564), !dbg !1449
  tail call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !1251, metadata !564) #8, !dbg !1533
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1258, metadata !564) #8, !dbg !1533
  %92 = call i32 @__xstat(i32 1, i8* nonnull %91, %struct.stat* nonnull %1) #8, !dbg !1535
  %93 = icmp eq i32 %92, 0, !dbg !1536
  br i1 %93, label %94, label %336, !dbg !1537

; <label>:94:                                     ; preds = %87
  %95 = tail call i32* @__errno_location() #17, !dbg !1538
  store i32 0, i32* %95, align 4, !dbg !1539, !tbaa !630
  %96 = call i32 @getegid() #8, !dbg !1540
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1427, metadata !564), !dbg !1541
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1430, metadata !564), !dbg !1542
  %97 = icmp eq i32 %96, -1, !dbg !1543
  br i1 %97, label %98, label %101, !dbg !1544

; <label>:98:                                     ; preds = %94
  %99 = load i32, i32* %95, align 4, !dbg !1545, !tbaa !630
  %100 = icmp eq i32 %99, 0, !dbg !1545
  br i1 %100, label %101, label %336, !dbg !1546

; <label>:101:                                    ; preds = %98, %94
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 5, !dbg !1547
  %103 = load i32, i32* %102, align 8, !dbg !1547, !tbaa !1548
  %104 = icmp eq i32 %96, %103, !dbg !1549
  br label %336

; <label>:105:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1550
  %106 = add nsw i32 %4, 1, !dbg !1553
  store i32 %106, i32* @pos, align 4, !dbg !1553, !tbaa !630
  %107 = load i32, i32* @argc, align 4, !dbg !1554
  %108 = icmp slt i32 %106, %107, !dbg !1555
  br i1 %108, label %110, label %109, !dbg !1556

; <label>:109:                                    ; preds = %105
  tail call fastcc void @beyond() #15, !dbg !1557
  unreachable, !dbg !1557

; <label>:110:                                    ; preds = %105
  %111 = add nsw i32 %4, 2, !dbg !1558
  store i32 %111, i32* @pos, align 4, !dbg !1558, !tbaa !630
  %112 = sext i32 %106 to i64, !dbg !1559
  %113 = getelementptr inbounds i8*, i8** %3, i64 %112, !dbg !1559
  %114 = load i8*, i8** %113, align 8, !dbg !1559, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1420, metadata !564), !dbg !1449
  tail call void @llvm.dbg.value(metadata i8* %114, i64 0, metadata !1251, metadata !564) #8, !dbg !1560
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1258, metadata !564) #8, !dbg !1560
  %115 = call i32 @__xstat(i32 1, i8* nonnull %114, %struct.stat* nonnull %1) #8, !dbg !1562
  %116 = icmp eq i32 %115, 0, !dbg !1563
  br i1 %116, label %117, label %336, !dbg !1564

; <label>:117:                                    ; preds = %110
  %118 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1565
  %119 = load i32, i32* %118, align 8, !dbg !1565, !tbaa !1566
  %120 = and i32 %119, 61440, !dbg !1565
  %121 = icmp eq i32 %120, 32768, !dbg !1565
  br label %336

; <label>:122:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1567
  %123 = add nsw i32 %4, 1, !dbg !1570
  store i32 %123, i32* @pos, align 4, !dbg !1570, !tbaa !630
  %124 = load i32, i32* @argc, align 4, !dbg !1571
  %125 = icmp slt i32 %123, %124, !dbg !1572
  br i1 %125, label %127, label %126, !dbg !1573

; <label>:126:                                    ; preds = %122
  tail call fastcc void @beyond() #15, !dbg !1574
  unreachable, !dbg !1574

; <label>:127:                                    ; preds = %122
  %128 = add nsw i32 %4, 2, !dbg !1575
  store i32 %128, i32* @pos, align 4, !dbg !1575, !tbaa !630
  %129 = sext i32 %123 to i64, !dbg !1576
  %130 = getelementptr inbounds i8*, i8** %3, i64 %129, !dbg !1576
  %131 = load i8*, i8** %130, align 8, !dbg !1576, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1420, metadata !564), !dbg !1449
  tail call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !1251, metadata !564) #8, !dbg !1577
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1258, metadata !564) #8, !dbg !1577
  %132 = call i32 @__xstat(i32 1, i8* nonnull %131, %struct.stat* nonnull %1) #8, !dbg !1579
  %133 = icmp eq i32 %132, 0, !dbg !1580
  br i1 %133, label %134, label %336, !dbg !1581

; <label>:134:                                    ; preds = %127
  %135 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1582
  %136 = load i32, i32* %135, align 8, !dbg !1582, !tbaa !1566
  %137 = and i32 %136, 61440, !dbg !1582
  %138 = icmp eq i32 %137, 16384, !dbg !1582
  br label %336

; <label>:139:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1583
  %140 = add nsw i32 %4, 1, !dbg !1586
  store i32 %140, i32* @pos, align 4, !dbg !1586, !tbaa !630
  %141 = load i32, i32* @argc, align 4, !dbg !1587
  %142 = icmp slt i32 %140, %141, !dbg !1588
  br i1 %142, label %144, label %143, !dbg !1589

; <label>:143:                                    ; preds = %139
  tail call fastcc void @beyond() #15, !dbg !1590
  unreachable, !dbg !1590

; <label>:144:                                    ; preds = %139
  %145 = add nsw i32 %4, 2, !dbg !1591
  store i32 %145, i32* @pos, align 4, !dbg !1591, !tbaa !630
  %146 = sext i32 %140 to i64, !dbg !1592
  %147 = getelementptr inbounds i8*, i8** %3, i64 %146, !dbg !1592
  %148 = load i8*, i8** %147, align 8, !dbg !1592, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1420, metadata !564), !dbg !1449
  tail call void @llvm.dbg.value(metadata i8* %148, i64 0, metadata !1251, metadata !564) #8, !dbg !1593
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1258, metadata !564) #8, !dbg !1593
  %149 = call i32 @__xstat(i32 1, i8* nonnull %148, %struct.stat* nonnull %1) #8, !dbg !1595
  %150 = icmp eq i32 %149, 0, !dbg !1596
  %151 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 8, !dbg !1597
  %152 = load i64, i64* %151, align 8, !dbg !1597
  %153 = icmp sgt i64 %152, 0, !dbg !1598
  %154 = and i1 %150, %153, !dbg !1599
  br label %336, !dbg !1600

; <label>:155:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1601
  %156 = add nsw i32 %4, 1, !dbg !1604
  store i32 %156, i32* @pos, align 4, !dbg !1604, !tbaa !630
  %157 = load i32, i32* @argc, align 4, !dbg !1605
  %158 = icmp slt i32 %156, %157, !dbg !1606
  br i1 %158, label %160, label %159, !dbg !1607

; <label>:159:                                    ; preds = %155
  tail call fastcc void @beyond() #15, !dbg !1608
  unreachable, !dbg !1608

; <label>:160:                                    ; preds = %155
  %161 = add nsw i32 %4, 2, !dbg !1609
  store i32 %161, i32* @pos, align 4, !dbg !1609, !tbaa !630
  %162 = sext i32 %156 to i64, !dbg !1610
  %163 = getelementptr inbounds i8*, i8** %3, i64 %162, !dbg !1610
  %164 = load i8*, i8** %163, align 8, !dbg !1610, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1420, metadata !564), !dbg !1449
  tail call void @llvm.dbg.value(metadata i8* %164, i64 0, metadata !1251, metadata !564) #8, !dbg !1611
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1258, metadata !564) #8, !dbg !1611
  %165 = call i32 @__xstat(i32 1, i8* nonnull %164, %struct.stat* nonnull %1) #8, !dbg !1613
  %166 = icmp eq i32 %165, 0, !dbg !1614
  br i1 %166, label %167, label %336, !dbg !1615

; <label>:167:                                    ; preds = %160
  %168 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1616
  %169 = load i32, i32* %168, align 8, !dbg !1616, !tbaa !1566
  %170 = and i32 %169, 61440, !dbg !1616
  %171 = icmp eq i32 %170, 49152, !dbg !1616
  br label %336

; <label>:172:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1617
  %173 = add nsw i32 %4, 1, !dbg !1620
  store i32 %173, i32* @pos, align 4, !dbg !1620, !tbaa !630
  %174 = load i32, i32* @argc, align 4, !dbg !1621
  %175 = icmp slt i32 %173, %174, !dbg !1622
  br i1 %175, label %177, label %176, !dbg !1623

; <label>:176:                                    ; preds = %172
  tail call fastcc void @beyond() #15, !dbg !1624
  unreachable, !dbg !1624

; <label>:177:                                    ; preds = %172
  %178 = add nsw i32 %4, 2, !dbg !1625
  store i32 %178, i32* @pos, align 4, !dbg !1625, !tbaa !630
  %179 = sext i32 %173 to i64, !dbg !1626
  %180 = getelementptr inbounds i8*, i8** %3, i64 %179, !dbg !1626
  %181 = load i8*, i8** %180, align 8, !dbg !1626, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1420, metadata !564), !dbg !1449
  tail call void @llvm.dbg.value(metadata i8* %181, i64 0, metadata !1251, metadata !564) #8, !dbg !1627
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1258, metadata !564) #8, !dbg !1627
  %182 = call i32 @__xstat(i32 1, i8* nonnull %181, %struct.stat* nonnull %1) #8, !dbg !1629
  %183 = icmp eq i32 %182, 0, !dbg !1630
  br i1 %183, label %184, label %336, !dbg !1631

; <label>:184:                                    ; preds = %177
  %185 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1632
  %186 = load i32, i32* %185, align 8, !dbg !1632, !tbaa !1566
  %187 = and i32 %186, 61440, !dbg !1632
  %188 = icmp eq i32 %187, 8192, !dbg !1632
  br label %336

; <label>:189:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1633
  %190 = add nsw i32 %4, 1, !dbg !1636
  store i32 %190, i32* @pos, align 4, !dbg !1636, !tbaa !630
  %191 = load i32, i32* @argc, align 4, !dbg !1637
  %192 = icmp slt i32 %190, %191, !dbg !1638
  br i1 %192, label %194, label %193, !dbg !1639

; <label>:193:                                    ; preds = %189
  tail call fastcc void @beyond() #15, !dbg !1640
  unreachable, !dbg !1640

; <label>:194:                                    ; preds = %189
  %195 = add nsw i32 %4, 2, !dbg !1641
  store i32 %195, i32* @pos, align 4, !dbg !1641, !tbaa !630
  %196 = sext i32 %190 to i64, !dbg !1642
  %197 = getelementptr inbounds i8*, i8** %3, i64 %196, !dbg !1642
  %198 = load i8*, i8** %197, align 8, !dbg !1642, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1420, metadata !564), !dbg !1449
  tail call void @llvm.dbg.value(metadata i8* %198, i64 0, metadata !1251, metadata !564) #8, !dbg !1643
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1258, metadata !564) #8, !dbg !1643
  %199 = call i32 @__xstat(i32 1, i8* nonnull %198, %struct.stat* nonnull %1) #8, !dbg !1645
  %200 = icmp eq i32 %199, 0, !dbg !1646
  br i1 %200, label %201, label %336, !dbg !1647

; <label>:201:                                    ; preds = %194
  %202 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1648
  %203 = load i32, i32* %202, align 8, !dbg !1648, !tbaa !1566
  %204 = and i32 %203, 61440, !dbg !1648
  %205 = icmp eq i32 %204, 24576, !dbg !1648
  br label %336

; <label>:206:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1649
  %207 = add nsw i32 %4, 1, !dbg !1652
  store i32 %207, i32* @pos, align 4, !dbg !1652, !tbaa !630
  %208 = load i32, i32* @argc, align 4, !dbg !1653
  %209 = icmp slt i32 %207, %208, !dbg !1654
  br i1 %209, label %211, label %210, !dbg !1655

; <label>:210:                                    ; preds = %206
  tail call fastcc void @beyond() #15, !dbg !1656
  unreachable, !dbg !1656

; <label>:211:                                    ; preds = %206
  %212 = add nsw i32 %4, 2, !dbg !1657
  store i32 %212, i32* @pos, align 4, !dbg !1657, !tbaa !630
  %213 = sext i32 %207 to i64, !dbg !1658
  %214 = getelementptr inbounds i8*, i8** %3, i64 %213, !dbg !1658
  %215 = load i8*, i8** %214, align 8, !dbg !1658, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1420, metadata !564), !dbg !1449
  tail call void @llvm.dbg.value(metadata i8* %215, i64 0, metadata !1251, metadata !564) #8, !dbg !1659
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1258, metadata !564) #8, !dbg !1659
  %216 = call i32 @__xstat(i32 1, i8* nonnull %215, %struct.stat* nonnull %1) #8, !dbg !1661
  %217 = icmp eq i32 %216, 0, !dbg !1662
  br i1 %217, label %218, label %336, !dbg !1663

; <label>:218:                                    ; preds = %211
  %219 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1664
  %220 = load i32, i32* %219, align 8, !dbg !1664, !tbaa !1566
  %221 = and i32 %220, 61440, !dbg !1664
  %222 = icmp eq i32 %221, 4096, !dbg !1664
  br label %336

; <label>:223:                                    ; preds = %0, %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1665
  %224 = add nsw i32 %4, 1, !dbg !1668
  store i32 %224, i32* @pos, align 4, !dbg !1668, !tbaa !630
  %225 = load i32, i32* @argc, align 4, !dbg !1669
  %226 = icmp slt i32 %224, %225, !dbg !1670
  br i1 %226, label %228, label %227, !dbg !1671

; <label>:227:                                    ; preds = %223
  tail call fastcc void @beyond() #15, !dbg !1672
  unreachable, !dbg !1672

; <label>:228:                                    ; preds = %223
  %229 = add nsw i32 %4, 2, !dbg !1673
  store i32 %229, i32* @pos, align 4, !dbg !1673, !tbaa !630
  %230 = sext i32 %224 to i64, !dbg !1674
  %231 = getelementptr inbounds i8*, i8** %3, i64 %230, !dbg !1674
  %232 = load i8*, i8** %231, align 8, !dbg !1674, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1420, metadata !564), !dbg !1449
  tail call void @llvm.dbg.value(metadata i8* %232, i64 0, metadata !1675, metadata !564) #8, !dbg !1679
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1678, metadata !564) #8, !dbg !1679
  %233 = call i32 @__lxstat(i32 1, i8* nonnull %232, %struct.stat* nonnull %1) #8, !dbg !1681
  %234 = icmp eq i32 %233, 0, !dbg !1682
  br i1 %234, label %235, label %336, !dbg !1683

; <label>:235:                                    ; preds = %228
  %236 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1684
  %237 = load i32, i32* %236, align 8, !dbg !1684, !tbaa !1566
  %238 = and i32 %237, 61440, !dbg !1684
  %239 = icmp eq i32 %238, 40960, !dbg !1684
  br label %336

; <label>:240:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1685
  %241 = add nsw i32 %4, 1, !dbg !1688
  store i32 %241, i32* @pos, align 4, !dbg !1688, !tbaa !630
  %242 = load i32, i32* @argc, align 4, !dbg !1689
  %243 = icmp slt i32 %241, %242, !dbg !1690
  br i1 %243, label %245, label %244, !dbg !1691

; <label>:244:                                    ; preds = %240
  tail call fastcc void @beyond() #15, !dbg !1692
  unreachable, !dbg !1692

; <label>:245:                                    ; preds = %240
  %246 = add nsw i32 %4, 2, !dbg !1693
  store i32 %246, i32* @pos, align 4, !dbg !1693, !tbaa !630
  %247 = sext i32 %241 to i64, !dbg !1694
  %248 = getelementptr inbounds i8*, i8** %3, i64 %247, !dbg !1694
  %249 = load i8*, i8** %248, align 8, !dbg !1694, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1420, metadata !564), !dbg !1449
  tail call void @llvm.dbg.value(metadata i8* %249, i64 0, metadata !1251, metadata !564) #8, !dbg !1695
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1258, metadata !564) #8, !dbg !1695
  %250 = call i32 @__xstat(i32 1, i8* nonnull %249, %struct.stat* nonnull %1) #8, !dbg !1697
  %251 = icmp eq i32 %250, 0, !dbg !1698
  br i1 %251, label %252, label %336, !dbg !1699

; <label>:252:                                    ; preds = %245
  %253 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1700
  %254 = load i32, i32* %253, align 8, !dbg !1700, !tbaa !1566
  %255 = and i32 %254, 2048, !dbg !1701
  %256 = icmp ne i32 %255, 0, !dbg !1699
  br label %336

; <label>:257:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1702
  %258 = add nsw i32 %4, 1, !dbg !1705
  store i32 %258, i32* @pos, align 4, !dbg !1705, !tbaa !630
  %259 = load i32, i32* @argc, align 4, !dbg !1706
  %260 = icmp slt i32 %258, %259, !dbg !1707
  br i1 %260, label %262, label %261, !dbg !1708

; <label>:261:                                    ; preds = %257
  tail call fastcc void @beyond() #15, !dbg !1709
  unreachable, !dbg !1709

; <label>:262:                                    ; preds = %257
  %263 = add nsw i32 %4, 2, !dbg !1710
  store i32 %263, i32* @pos, align 4, !dbg !1710, !tbaa !630
  %264 = sext i32 %258 to i64, !dbg !1711
  %265 = getelementptr inbounds i8*, i8** %3, i64 %264, !dbg !1711
  %266 = load i8*, i8** %265, align 8, !dbg !1711, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1420, metadata !564), !dbg !1449
  tail call void @llvm.dbg.value(metadata i8* %266, i64 0, metadata !1251, metadata !564) #8, !dbg !1712
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1258, metadata !564) #8, !dbg !1712
  %267 = call i32 @__xstat(i32 1, i8* nonnull %266, %struct.stat* nonnull %1) #8, !dbg !1714
  %268 = icmp eq i32 %267, 0, !dbg !1715
  br i1 %268, label %269, label %336, !dbg !1716

; <label>:269:                                    ; preds = %262
  %270 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1717
  %271 = load i32, i32* %270, align 8, !dbg !1717, !tbaa !1566
  %272 = and i32 %271, 1024, !dbg !1718
  %273 = icmp ne i32 %272, 0, !dbg !1716
  br label %336

; <label>:274:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1719
  %275 = add nsw i32 %4, 1, !dbg !1722
  store i32 %275, i32* @pos, align 4, !dbg !1722, !tbaa !630
  %276 = load i32, i32* @argc, align 4, !dbg !1723
  %277 = icmp slt i32 %275, %276, !dbg !1724
  br i1 %277, label %279, label %278, !dbg !1725

; <label>:278:                                    ; preds = %274
  tail call fastcc void @beyond() #15, !dbg !1726
  unreachable, !dbg !1726

; <label>:279:                                    ; preds = %274
  %280 = add nsw i32 %4, 2, !dbg !1727
  store i32 %280, i32* @pos, align 4, !dbg !1727, !tbaa !630
  %281 = sext i32 %275 to i64, !dbg !1728
  %282 = getelementptr inbounds i8*, i8** %3, i64 %281, !dbg !1728
  %283 = load i8*, i8** %282, align 8, !dbg !1728, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1420, metadata !564), !dbg !1449
  tail call void @llvm.dbg.value(metadata i8* %283, i64 0, metadata !1251, metadata !564) #8, !dbg !1729
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !1258, metadata !564) #8, !dbg !1729
  %284 = call i32 @__xstat(i32 1, i8* nonnull %283, %struct.stat* nonnull %1) #8, !dbg !1731
  %285 = icmp eq i32 %284, 0, !dbg !1732
  br i1 %285, label %286, label %336, !dbg !1733

; <label>:286:                                    ; preds = %279
  %287 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1734
  %288 = load i32, i32* %287, align 8, !dbg !1734, !tbaa !1566
  %289 = and i32 %288, 512, !dbg !1735
  %290 = icmp ne i32 %289, 0, !dbg !1733
  br label %336

; <label>:291:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1736
  %292 = add nsw i32 %4, 1, !dbg !1739
  store i32 %292, i32* @pos, align 4, !dbg !1739, !tbaa !630
  %293 = load i32, i32* @argc, align 4, !dbg !1740
  %294 = icmp slt i32 %292, %293, !dbg !1741
  br i1 %294, label %296, label %295, !dbg !1742

; <label>:295:                                    ; preds = %291
  tail call fastcc void @beyond() #15, !dbg !1743
  unreachable, !dbg !1743

; <label>:296:                                    ; preds = %291
  %297 = add nsw i32 %4, 2, !dbg !1744
  store i32 %297, i32* @pos, align 4, !dbg !1744, !tbaa !630
  %298 = sext i32 %292 to i64, !dbg !1745
  %299 = getelementptr inbounds i8*, i8** %3, i64 %298, !dbg !1745
  %300 = load i8*, i8** %299, align 8, !dbg !1745, !tbaa !571
  %301 = tail call fastcc i8* @find_int(i8* %300), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8* %301, i64 0, metadata !1433, metadata !564), !dbg !1747
  %302 = tail call i32* @__errno_location() #17, !dbg !1748
  store i32 0, i32* %302, align 4, !dbg !1749, !tbaa !630
  %303 = tail call i64 @strtol(i8* nocapture %301, i8** null, i32 10) #8, !dbg !1750
  tail call void @llvm.dbg.value(metadata i64 %303, i64 0, metadata !1431, metadata !564), !dbg !1751
  %304 = load i32, i32* %302, align 4, !dbg !1752, !tbaa !630
  %305 = icmp ne i32 %304, 34, !dbg !1753
  %306 = icmp ult i64 %303, 2147483648, !dbg !1754
  %307 = and i1 %306, %305, !dbg !1754
  br i1 %307, label %308, label %336, !dbg !1754

; <label>:308:                                    ; preds = %296
  %309 = trunc i64 %303 to i32, !dbg !1755
  %310 = tail call i32 @isatty(i32 %309) #8, !dbg !1756
  %311 = icmp ne i32 %310, 0, !dbg !1757
  br label %336

; <label>:312:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1758
  %313 = add nsw i32 %4, 1, !dbg !1761
  store i32 %313, i32* @pos, align 4, !dbg !1761, !tbaa !630
  %314 = load i32, i32* @argc, align 4, !dbg !1762
  %315 = icmp slt i32 %313, %314, !dbg !1763
  br i1 %315, label %317, label %316, !dbg !1764

; <label>:316:                                    ; preds = %312
  tail call fastcc void @beyond() #15, !dbg !1765
  unreachable, !dbg !1765

; <label>:317:                                    ; preds = %312
  %318 = add nsw i32 %4, 2, !dbg !1766
  store i32 %318, i32* @pos, align 4, !dbg !1766, !tbaa !630
  %319 = sext i32 %313 to i64, !dbg !1767
  %320 = getelementptr inbounds i8*, i8** %3, i64 %319, !dbg !1767
  %321 = load i8*, i8** %320, align 8, !dbg !1767, !tbaa !571
  %322 = load i8, i8* %321, align 1, !dbg !1767, !tbaa !668
  %323 = icmp ne i8 %322, 0, !dbg !1768
  br label %336, !dbg !1769

; <label>:324:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !678, metadata !564) #8, !dbg !1770
  %325 = add nsw i32 %4, 1, !dbg !1773
  store i32 %325, i32* @pos, align 4, !dbg !1773, !tbaa !630
  %326 = load i32, i32* @argc, align 4, !dbg !1774
  %327 = icmp slt i32 %325, %326, !dbg !1775
  br i1 %327, label %329, label %328, !dbg !1776

; <label>:328:                                    ; preds = %324
  tail call fastcc void @beyond() #15, !dbg !1777
  unreachable, !dbg !1777

; <label>:329:                                    ; preds = %324
  %330 = add nsw i32 %4, 2, !dbg !1778
  store i32 %330, i32* @pos, align 4, !dbg !1778, !tbaa !630
  %331 = sext i32 %325 to i64, !dbg !1779
  %332 = getelementptr inbounds i8*, i8** %3, i64 %331, !dbg !1779
  %333 = load i8*, i8** %332, align 8, !dbg !1779, !tbaa !571
  %334 = load i8, i8* %333, align 1, !dbg !1779, !tbaa !668
  %335 = icmp eq i8 %334, 0, !dbg !1780
  br label %336, !dbg !1781

; <label>:336:                                    ; preds = %296, %308, %279, %286, %262, %269, %245, %252, %228, %235, %211, %218, %194, %201, %177, %184, %160, %167, %127, %134, %110, %117, %101, %98, %87, %78, %75, %64, %0, %329, %317, %144, %52, %40, %28, %16
  %337 = phi i1 [ %335, %329 ], [ %323, %317 ], [ %154, %144 ], [ %58, %52 ], [ %46, %40 ], [ %34, %28 ], [ %22, %16 ], [ false, %0 ], [ false, %64 ], [ false, %75 ], [ %81, %78 ], [ false, %87 ], [ false, %98 ], [ %104, %101 ], [ false, %110 ], [ %121, %117 ], [ false, %127 ], [ %138, %134 ], [ false, %160 ], [ %171, %167 ], [ false, %177 ], [ %188, %184 ], [ false, %194 ], [ %205, %201 ], [ false, %211 ], [ %222, %218 ], [ false, %228 ], [ %239, %235 ], [ false, %245 ], [ %256, %252 ], [ false, %262 ], [ %273, %269 ], [ false, %279 ], [ %290, %286 ], [ false, %296 ], [ %311, %308 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %2) #8, !dbg !1782
  ret i1 %337, !dbg !1782
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @euidaccess(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @find_int(i8*) unnamed_addr #6 !dbg !1783 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1787, metadata !564), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1788, metadata !564), !dbg !1791
  %2 = tail call i16** @__ctype_b_loc() #17, !dbg !1792
  %3 = load i16*, i16** %2, align 8, !tbaa !571
  br label %4, !dbg !1795

; <label>:4:                                      ; preds = %4, %1
  %5 = phi i8* [ %0, %1 ], [ %12, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1788, metadata !564), !dbg !1791
  %6 = load i8, i8* %5, align 1, !dbg !1792, !tbaa !668
  %7 = zext i8 %6 to i64, !dbg !1792
  %8 = getelementptr inbounds i16, i16* %3, i64 %7, !dbg !1792
  %9 = load i16, i16* %8, align 2, !dbg !1792, !tbaa !1796
  %10 = and i16 %9, 1, !dbg !1792
  %11 = icmp eq i16 %10, 0, !dbg !1798
  %12 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1799
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1788, metadata !564), !dbg !1791
  br i1 %11, label %13, label %4, !dbg !1798, !llvm.loop !1800

; <label>:13:                                     ; preds = %4
  %14 = icmp eq i8 %6, 43, !dbg !1802
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1788, metadata !564), !dbg !1791
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1789, metadata !564), !dbg !1804
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1789, metadata !564), !dbg !1804
  %15 = icmp eq i8 %6, 45, !dbg !1805
  %16 = zext i1 %15 to i64, !dbg !1807
  %17 = getelementptr inbounds i8, i8* %5, i64 %16, !dbg !1807
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1788, metadata !564), !dbg !1791
  %18 = select i1 %14, i8* %12, i8* %17, !dbg !1808
  %19 = select i1 %14, i8* %12, i8* %5, !dbg !1808
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1789, metadata !564), !dbg !1804
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1788, metadata !564), !dbg !1791
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1788, metadata !1809), !dbg !1791
  %20 = load i8, i8* %18, align 1, !dbg !1810, !tbaa !668
  %21 = sext i8 %20 to i32, !dbg !1810
  %22 = add nsw i32 %21, -48, !dbg !1810
  %23 = icmp ult i32 %22, 10, !dbg !1810
  br i1 %23, label %24, label %52, !dbg !1812

; <label>:24:                                     ; preds = %13
  br label %25

; <label>:25:                                     ; preds = %24, %25
  %26 = phi i8* [ %27, %25 ], [ %18, %24 ]
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1788, metadata !564), !dbg !1791
  %28 = load i8, i8* %27, align 1, !dbg !1813, !tbaa !668
  %29 = sext i8 %28 to i32, !dbg !1813
  %30 = add nsw i32 %29, -48, !dbg !1813
  %31 = icmp ult i32 %30, 10, !dbg !1813
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1788, metadata !1809), !dbg !1791
  br i1 %31, label %25, label %32, !dbg !1815, !llvm.loop !1816

; <label>:32:                                     ; preds = %25
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1788, metadata !564), !dbg !1791
  %33 = zext i8 %28 to i64, !dbg !1818
  %34 = getelementptr inbounds i16, i16* %3, i64 %33, !dbg !1818
  %35 = load i16, i16* %34, align 2, !dbg !1818, !tbaa !1796
  %36 = and i16 %35, 1, !dbg !1818
  %37 = icmp eq i16 %36, 0, !dbg !1819
  br i1 %37, label %48, label %38, !dbg !1819

; <label>:38:                                     ; preds = %32
  br label %39, !dbg !1820

; <label>:39:                                     ; preds = %38, %39
  %40 = phi i8* [ %41, %39 ], [ %27, %38 ]
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1788, metadata !564), !dbg !1791
  %41 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !1820
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !1788, metadata !564), !dbg !1791
  %42 = load i8, i8* %41, align 1, !dbg !1818, !tbaa !668
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !1788, metadata !564), !dbg !1791
  %43 = zext i8 %42 to i64, !dbg !1818
  %44 = getelementptr inbounds i16, i16* %3, i64 %43, !dbg !1818
  %45 = load i16, i16* %44, align 2, !dbg !1818, !tbaa !1796
  %46 = and i16 %45, 1, !dbg !1818
  %47 = icmp eq i16 %46, 0, !dbg !1819
  br i1 %47, label %48, label %39, !dbg !1819, !llvm.loop !1821

; <label>:48:                                     ; preds = %39, %32
  %49 = phi i8 [ %28, %32 ], [ %42, %39 ]
  %50 = icmp eq i8 %49, 0, !dbg !1822
  br i1 %50, label %51, label %52, !dbg !1824

; <label>:51:                                     ; preds = %48
  ret i8* %19, !dbg !1825

; <label>:52:                                     ; preds = %48, %13
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), i32 5) #8, !dbg !1826
  %54 = tail call i8* @quote(i8* %0) #8, !dbg !1827
  tail call void (i8*, ...) @test_syntax_error(i8* %53, i8* %54) #16, !dbg !1828
  unreachable, !dbg !1828
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1829 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1831, metadata !564), !dbg !1832
  store i8* %0, i8** @file_name, align 8, !dbg !1833, !tbaa !571
  ret void, !dbg !1834
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1835 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1837, metadata !564), !dbg !1838
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1839, !tbaa !1840
  ret void, !dbg !1842
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1843 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1848, !tbaa !571
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #8, !dbg !1849
  %3 = icmp eq i32 %2, 0, !dbg !1850
  br i1 %3, label %21, label %4, !dbg !1851

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1852, !tbaa !1840, !range !1853
  %6 = icmp eq i8 %5, 0, !dbg !1852
  %7 = tail call i32* @__errno_location() #17, !dbg !1854
  br i1 %6, label %11, label %8, !dbg !1856

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1857, !tbaa !630
  %10 = icmp eq i32 %9, 32, !dbg !1858
  br i1 %10, label %21, label %11, !dbg !1859

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 5) #8, !dbg !1860
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1845, metadata !564), !dbg !1861
  %13 = load i8*, i8** @file_name, align 8, !dbg !1862, !tbaa !571
  %14 = icmp eq i8* %13, null, !dbg !1862
  %15 = load i32, i32* %7, align 4, !tbaa !630
  br i1 %14, label %18, label %16, !dbg !1863

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #8, !dbg !1864
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.25, i64 0, i64 0), i8* %17, i8* %12) #8, !dbg !1865
  br label %19, !dbg !1865

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.26, i64 0, i64 0), i8* %12) #8, !dbg !1866
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1867, !tbaa !630
  tail call void @_exit(i32 %20) #15, !dbg !1868
  unreachable, !dbg !1868

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1869, !tbaa !571
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #8, !dbg !1871
  %24 = icmp eq i32 %23, 0, !dbg !1872
  br i1 %24, label %27, label %25, !dbg !1873

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1874, !tbaa !630
  tail call void @_exit(i32 %26) #15, !dbg !1875
  unreachable, !dbg !1875

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1876
}

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !1877 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1882, metadata !564), !dbg !1885
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1883, metadata !564), !dbg !1886
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1887
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1884, metadata !564), !dbg !1888
  store i8 0, i8* %3, align 1, !dbg !1889, !tbaa !668
  br label %4, !dbg !1890, !llvm.loop !1893

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1884, metadata !564), !dbg !1888
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1882, metadata !564), !dbg !1885
  %7 = urem i64 %5, 10, !dbg !1895
  %8 = trunc i64 %7 to i8, !dbg !1896
  %9 = or i8 %8, 48, !dbg !1896
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1897
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1884, metadata !564), !dbg !1888
  store i8 %9, i8* %10, align 1, !dbg !1898, !tbaa !668
  %11 = udiv i64 %5, 10, !dbg !1899
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1882, metadata !564), !dbg !1885
  %12 = icmp ugt i64 %5, 9, !dbg !1900
  br i1 %12, label %4, label %13, !dbg !1901, !llvm.loop !1893

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1884, metadata !564), !dbg !1888
  ret i8* %10, !dbg !1902
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1903 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1905, metadata !564), !dbg !1908
  %2 = icmp eq i8* %0, null, !dbg !1909
  br i1 %2, label %3, label %6, !dbg !1911

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1912, !tbaa !571
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.68, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1914
  tail call void @abort() #15, !dbg !1915
  unreachable, !dbg !1915

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1916
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1906, metadata !564), !dbg !1917
  %8 = icmp eq i8* %7, null, !dbg !1918
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1919
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1920
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1907, metadata !564), !dbg !1921
  %11 = ptrtoint i8* %10 to i64, !dbg !1922
  %12 = ptrtoint i8* %0 to i64, !dbg !1922
  %13 = sub i64 %11, %12, !dbg !1922
  %14 = icmp sgt i64 %13, 6, !dbg !1924
  br i1 %14, label %15, label %24, !dbg !1925

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1926
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.69, i64 0, i64 0), i64 7) #14, !dbg !1927
  %18 = icmp eq i32 %17, 0, !dbg !1928
  br i1 %18, label %19, label %24, !dbg !1929

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1905, metadata !564), !dbg !1908
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.70, i64 0, i64 0), i64 3) #14, !dbg !1930
  %21 = icmp eq i32 %20, 0, !dbg !1933
  br i1 %21, label %22, label %24, !dbg !1934

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1935
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1905, metadata !564), !dbg !1908
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1937, !tbaa !571
  br label %24, !dbg !1938

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1905, metadata !564), !dbg !1908
  store i8* %25, i8** @program_name, align 8, !dbg !1939, !tbaa !571
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1940, !tbaa !571
  ret void, !dbg !1941
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #8

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1942 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1947, metadata !564), !dbg !1950
  %2 = tail call i32* @__errno_location() #17, !dbg !1951
  %3 = load i32, i32* %2, align 4, !dbg !1951, !tbaa !630
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1948, metadata !564), !dbg !1952
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1953
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1953
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1953
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #8, !dbg !1954
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1954
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1949, metadata !564), !dbg !1955
  store i32 %3, i32* %2, align 4, !dbg !1956, !tbaa !630
  ret %struct.quoting_options* %8, !dbg !1957
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !1958 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1964, metadata !564), !dbg !1965
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1966
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1966
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1967
  %5 = load i32, i32* %4, align 8, !dbg !1967, !tbaa !1968
  ret i32 %5, !dbg !1970
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1971 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1975, metadata !564), !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1976, metadata !564), !dbg !1978
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1979
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1979
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1980
  store i32 %1, i32* %5, align 8, !dbg !1981, !tbaa !1968
  ret void, !dbg !1982
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1983 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1987, metadata !564), !dbg !1995
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1988, metadata !564), !dbg !1996
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1989, metadata !564), !dbg !1997
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1990, metadata !564), !dbg !1998
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1999
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1999
  %6 = lshr i8 %1, 5, !dbg !2000
  %7 = zext i8 %6 to i64, !dbg !2000
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2001
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1991, metadata !564), !dbg !2002
  %9 = and i8 %1, 31, !dbg !2003
  %10 = zext i8 %9 to i32, !dbg !2004
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1993, metadata !564), !dbg !2005
  %11 = load i32, i32* %8, align 4, !dbg !2006, !tbaa !630
  %12 = lshr i32 %11, %10, !dbg !2007
  %13 = and i32 %12, 1, !dbg !2008
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1994, metadata !564), !dbg !2009
  %14 = and i32 %2, 1, !dbg !2010
  %15 = xor i32 %13, %14, !dbg !2011
  %16 = shl i32 %15, %10, !dbg !2012
  %17 = xor i32 %16, %11, !dbg !2013
  store i32 %17, i32* %8, align 4, !dbg !2013, !tbaa !630
  ret i32 %13, !dbg !2014
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2015 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2019, metadata !564), !dbg !2022
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2020, metadata !564), !dbg !2023
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2024
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2019, metadata !564), !dbg !2022
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2026
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2019, metadata !564), !dbg !2022
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2027
  %6 = load i32, i32* %5, align 4, !dbg !2027, !tbaa !2028
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2021, metadata !564), !dbg !2029
  store i32 %1, i32* %5, align 4, !dbg !2030, !tbaa !2028
  ret i32 %6, !dbg !2031
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2032 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2036, metadata !564), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2037, metadata !564), !dbg !2040
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2038, metadata !564), !dbg !2041
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2042
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2036, metadata !564), !dbg !2039
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2044
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2036, metadata !564), !dbg !2039
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2045
  store i32 10, i32* %6, align 8, !dbg !2046, !tbaa !1968
  %7 = icmp ne i8* %1, null, !dbg !2047
  %8 = icmp ne i8* %2, null, !dbg !2049
  %9 = and i1 %7, %8, !dbg !2050
  br i1 %9, label %11, label %10, !dbg !2050

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2051
  unreachable, !dbg !2051

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2052
  store i8* %1, i8** %12, align 8, !dbg !2053, !tbaa !2054
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2055
  store i8* %2, i8** %13, align 8, !dbg !2056, !tbaa !2057
  ret void, !dbg !2058
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2059 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2063, metadata !564), !dbg !2071
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2064, metadata !564), !dbg !2072
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2065, metadata !564), !dbg !2073
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2066, metadata !564), !dbg !2074
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2067, metadata !564), !dbg !2075
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2076
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2076
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2068, metadata !564), !dbg !2077
  %8 = tail call i32* @__errno_location() #17, !dbg !2078
  %9 = load i32, i32* %8, align 4, !dbg !2078, !tbaa !630
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2069, metadata !564), !dbg !2079
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2080
  %11 = load i32, i32* %10, align 8, !dbg !2080, !tbaa !1968
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2081
  %13 = load i32, i32* %12, align 4, !dbg !2081, !tbaa !2028
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2082
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2083
  %16 = load i8*, i8** %15, align 8, !dbg !2083, !tbaa !2054
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2084
  %18 = load i8*, i8** %17, align 8, !dbg !2084, !tbaa !2057
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2085
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2070, metadata !564), !dbg !2086
  store i32 %9, i32* %8, align 4, !dbg !2087, !tbaa !630
  ret i64 %19, !dbg !2088
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2089 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2095, metadata !564), !dbg !2159
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2096, metadata !564), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2097, metadata !564), !dbg !2161
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2098, metadata !564), !dbg !2162
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2099, metadata !564), !dbg !2163
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2100, metadata !564), !dbg !2164
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2101, metadata !564), !dbg !2165
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2102, metadata !564), !dbg !2166
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2103, metadata !564), !dbg !2167
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2105, metadata !564), !dbg !2168
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2106, metadata !564), !dbg !2169
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2107, metadata !564), !dbg !2170
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2108, metadata !564), !dbg !2171
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2109, metadata !564), !dbg !2172
  %13 = tail call i64 @__ctype_get_mb_cur_max() #8, !dbg !2173
  %14 = icmp eq i64 %13, 1, !dbg !2174
  %15 = lshr i32 %5, 1, !dbg !2175
  %16 = trunc i32 %15 to i8, !dbg !2175
  %17 = and i8 %16, 1, !dbg !2175
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2111, metadata !564), !dbg !2175
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2112, metadata !564), !dbg !2176
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2113, metadata !564), !dbg !2177
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2114, metadata !564), !dbg !2178
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2179

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2096, metadata !564), !dbg !2160
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2114, metadata !564), !dbg !2178
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2113, metadata !564), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2112, metadata !564), !dbg !2176
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2111, metadata !564), !dbg !2175
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2098, metadata !564), !dbg !2162
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2109, metadata !564), !dbg !2172
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2108, metadata !564), !dbg !2171
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2107, metadata !564), !dbg !2170
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2106, metadata !564), !dbg !2169
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2103, metadata !564), !dbg !2167
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2102, metadata !564), !dbg !2166
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2099, metadata !564), !dbg !2163
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
  ], !dbg !2180

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2099, metadata !564), !dbg !2163
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2111, metadata !564), !dbg !2175
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2111, metadata !564), !dbg !2175
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2099, metadata !564), !dbg !2163
  br label %94, !dbg !2181

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2111, metadata !564), !dbg !2175
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2099, metadata !564), !dbg !2163
  %43 = and i8 %36, 1, !dbg !2183
  %44 = icmp eq i8 %43, 0, !dbg !2183
  br i1 %44, label %45, label %94, !dbg !2181

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2185
  br i1 %46, label %94, label %47, !dbg !2188

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2185, !tbaa !668
  br label %94, !dbg !2185

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.81, i64 0, i64 0), i32 %28), !dbg !2189
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2102, metadata !564), !dbg !2166
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.82, i64 0, i64 0), i32 %28), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2103, metadata !564), !dbg !2167
  br label %51, !dbg !2194

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2103, metadata !564), !dbg !2167
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2102, metadata !564), !dbg !2166
  %54 = and i8 %36, 1, !dbg !2195
  %55 = icmp eq i8 %54, 0, !dbg !2195
  br i1 %55, label %56, label %72, !dbg !2197

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2107, metadata !564), !dbg !2170
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2107, metadata !564), !dbg !2170
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2105, metadata !564), !dbg !2168
  %57 = load i8, i8* %52, align 1, !dbg !2198, !tbaa !668
  %58 = icmp eq i8 %57, 0, !dbg !2201
  br i1 %58, label %72, label %59, !dbg !2201

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2202

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !2107, metadata !564), !dbg !2170
  %64 = icmp ult i64 %63, %40, !dbg !2202
  br i1 %64, label %65, label %67, !dbg !2205

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2202
  store i8 %61, i8* %66, align 1, !dbg !2202, !tbaa !668
  br label %67, !dbg !2202

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2105, metadata !564), !dbg !2168
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2206
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2107, metadata !564), !dbg !2170
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2107, metadata !564), !dbg !2170
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2105, metadata !564), !dbg !2168
  %70 = load i8, i8* %69, align 1, !dbg !2198, !tbaa !668
  %71 = icmp eq i8 %70, 0, !dbg !2201
  br i1 %71, label %72, label %60, !dbg !2201, !llvm.loop !2207

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2109, metadata !564), !dbg !2172
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2107, metadata !564), !dbg !2170
  %74 = call i64 @strlen(i8* %53) #14, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2108, metadata !564), !dbg !2171
  br label %94, !dbg !2210

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2109, metadata !564), !dbg !2172
  br label %76, !dbg !2211

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !2109, metadata !564), !dbg !2172
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2111, metadata !564), !dbg !2175
  br label %78, !dbg !2212

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2111, metadata !564), !dbg !2175
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !2109, metadata !564), !dbg !2172
  %81 = and i8 %80, 1, !dbg !2213
  %82 = icmp eq i8 %81, 0, !dbg !2213
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2109, metadata !564), !dbg !2172
  %83 = select i1 %82, i8 1, i8 %79, !dbg !2215
  br label %84, !dbg !2215

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2111, metadata !564), !dbg !2175
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !2109, metadata !564), !dbg !2172
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2099, metadata !564), !dbg !2163
  %87 = and i8 %86, 1, !dbg !2216
  %88 = icmp eq i8 %87, 0, !dbg !2216
  br i1 %88, label %89, label %94, !dbg !2218

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !2219
  br i1 %90, label %94, label %91, !dbg !2222

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !2219, !tbaa !668
  br label %94, !dbg !2219

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2111, metadata !564), !dbg !2175
  br label %94, !dbg !2223

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !2224
  unreachable, !dbg !2224

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.83, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.83, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.83, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.82, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.82, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.82, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.83, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2111, metadata !564), !dbg !2175
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !2109, metadata !564), !dbg !2172
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !2108, metadata !564), !dbg !2171
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2107, metadata !564), !dbg !2170
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2103, metadata !564), !dbg !2167
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !2102, metadata !564), !dbg !2166
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !2099, metadata !564), !dbg !2163
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2104, metadata !564), !dbg !2225
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
  br label %122, !dbg !2226

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2096, metadata !564), !dbg !2160
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2114, metadata !564), !dbg !2178
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2113, metadata !564), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !2112, metadata !564), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2098, metadata !564), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2106, metadata !564), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !2104, metadata !564), !dbg !2225
  %131 = icmp eq i64 %126, -1, !dbg !2227
  br i1 %131, label %134, label %132, !dbg !2228

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !2229
  br i1 %133, label %590, label %138, !dbg !2230

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2231
  %136 = load i8, i8* %135, align 1, !dbg !2231, !tbaa !668
  %137 = icmp eq i8 %136, 0, !dbg !2232
  br i1 %137, label %590, label %138, !dbg !2230

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2120, metadata !564), !dbg !2233
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2121, metadata !564), !dbg !2234
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2122, metadata !564), !dbg !2235
  br i1 %108, label %139, label %154, !dbg !2236

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !2238
  %141 = and i1 %109, %131, !dbg !2239
  br i1 %141, label %142, label %144, !dbg !2239

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !2098, metadata !564), !dbg !2162
  br label %144, !dbg !2241

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !2098, metadata !564), !dbg !2162
  %146 = icmp ugt i64 %140, %145, !dbg !2242
  br i1 %146, label %154, label %147, !dbg !2243

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2244
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !2245
  %150 = icmp ne i32 %149, 0, !dbg !2246
  %151 = or i1 %150, %111, !dbg !2247
  %152 = xor i1 %150, true, !dbg !2247
  %153 = zext i1 %152 to i8, !dbg !2247
  br i1 %151, label %154, label %635, !dbg !2247

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2120, metadata !564), !dbg !2233
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !2098, metadata !564), !dbg !2162
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2248
  %158 = load i8, i8* %157, align 1, !dbg !2248, !tbaa !668
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2115, metadata !564), !dbg !2249
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
  ], !dbg !2250

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !2251

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !2252

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2121, metadata !564), !dbg !2234
  %162 = and i8 %127, 1, !dbg !2256
  %163 = icmp eq i8 %162, 0, !dbg !2256
  %164 = and i1 %113, %163, !dbg !2256
  br i1 %164, label %165, label %181, !dbg !2256

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2258
  br i1 %166, label %167, label %169, !dbg !2262

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2258
  store i8 39, i8* %168, align 1, !dbg !2258, !tbaa !668
  br label %169, !dbg !2258

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2262
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !2105, metadata !564), !dbg !2168
  %171 = icmp ult i64 %170, %130, !dbg !2263
  br i1 %171, label %172, label %174, !dbg !2266

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2263
  store i8 36, i8* %173, align 1, !dbg !2263, !tbaa !668
  br label %174, !dbg !2263

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !2105, metadata !564), !dbg !2168
  %176 = icmp ult i64 %175, %130, !dbg !2267
  br i1 %176, label %177, label %179, !dbg !2270

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2267
  store i8 39, i8* %178, align 1, !dbg !2267, !tbaa !668
  br label %179, !dbg !2267

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2270
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2112, metadata !564), !dbg !2176
  br label %181, !dbg !2271

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !2112, metadata !564), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !2105, metadata !564), !dbg !2168
  %184 = icmp ult i64 %182, %130, !dbg !2272
  br i1 %184, label %185, label %187, !dbg !2275

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2272
  store i8 92, i8* %186, align 1, !dbg !2272, !tbaa !668
  br label %187, !dbg !2272

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !2105, metadata !564), !dbg !2168
  br i1 %105, label %189, label %470, !dbg !2276

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2278
  %191 = icmp ult i64 %190, %155, !dbg !2279
  br i1 %191, label %192, label %470, !dbg !2280

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2281
  %194 = load i8, i8* %193, align 1, !dbg !2281, !tbaa !668
  %195 = add i8 %194, -48, !dbg !2282
  %196 = icmp ult i8 %195, 10, !dbg !2282
  br i1 %196, label %197, label %470, !dbg !2282

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2283
  br i1 %198, label %199, label %201, !dbg !2287

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2283
  store i8 48, i8* %200, align 1, !dbg !2283, !tbaa !668
  br label %201, !dbg !2283

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !2105, metadata !564), !dbg !2168
  %203 = icmp ult i64 %202, %130, !dbg !2288
  br i1 %203, label %204, label %206, !dbg !2291

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2288
  store i8 48, i8* %205, align 1, !dbg !2288, !tbaa !668
  br label %206, !dbg !2288

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !2105, metadata !564), !dbg !2168
  br label %470, !dbg !2292

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2293

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2294

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2295

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2297

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2299
  %214 = icmp ult i64 %213, %155, !dbg !2300
  br i1 %214, label %215, label %470, !dbg !2301

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2302
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2303
  %218 = load i8, i8* %217, align 1, !dbg !2303, !tbaa !668
  %219 = icmp eq i8 %218, 63, !dbg !2304
  br i1 %219, label %220, label %470, !dbg !2305

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2306
  %222 = load i8, i8* %221, align 1, !dbg !2306, !tbaa !668
  %223 = sext i8 %222 to i32, !dbg !2306
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
  ], !dbg !2307

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2308

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !2115, metadata !564), !dbg !2249
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !2104, metadata !564), !dbg !2225
  %226 = icmp ult i64 %124, %130, !dbg !2310
  br i1 %226, label %227, label %229, !dbg !2313

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2310
  store i8 63, i8* %228, align 1, !dbg !2310, !tbaa !668
  br label %229, !dbg !2310

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !2105, metadata !564), !dbg !2168
  %231 = icmp ult i64 %230, %130, !dbg !2314
  br i1 %231, label %232, label %234, !dbg !2317

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2314
  store i8 34, i8* %233, align 1, !dbg !2314, !tbaa !668
  br label %234, !dbg !2314

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2317
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !2105, metadata !564), !dbg !2168
  %236 = icmp ult i64 %235, %130, !dbg !2318
  br i1 %236, label %237, label %239, !dbg !2321

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2318
  store i8 34, i8* %238, align 1, !dbg !2318, !tbaa !668
  br label %239, !dbg !2318

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2321
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !2105, metadata !564), !dbg !2168
  %241 = icmp ult i64 %240, %130, !dbg !2322
  br i1 %241, label %242, label %244, !dbg !2325

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2322
  store i8 63, i8* %243, align 1, !dbg !2322, !tbaa !668
  br label %244, !dbg !2322

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !2105, metadata !564), !dbg !2168
  br label %470, !dbg !2326

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2119, metadata !564), !dbg !2327
  br label %256, !dbg !2328

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2119, metadata !564), !dbg !2327
  br label %256, !dbg !2329

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2119, metadata !564), !dbg !2327
  br label %254, !dbg !2330

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2119, metadata !564), !dbg !2327
  br label %254, !dbg !2331

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2119, metadata !564), !dbg !2327
  br label %256, !dbg !2332

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2119, metadata !564), !dbg !2327
  br i1 %113, label %252, label %253, !dbg !2333

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2334

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2337

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !2119, metadata !564), !dbg !2327
  br i1 %117, label %256, label %635, !dbg !2339

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !2119, metadata !564), !dbg !2327
  br i1 %104, label %497, label %470, !dbg !2341

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2342
  br i1 %259, label %260, label %265, !dbg !2344

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2345, !tbaa !668
  %262 = icmp ne i8 %261, 0, !dbg !2346
  %263 = icmp ne i64 %123, 0, !dbg !2347
  %264 = or i1 %263, %262, !dbg !2349
  br i1 %264, label %470, label %271, !dbg !2349

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2350
  %267 = icmp ne i64 %123, 0, !dbg !2347
  %268 = or i1 %267, %266, !dbg !2344
  br i1 %268, label %470, label %271, !dbg !2344

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2347
  br i1 %270, label %271, label %470, !dbg !2351

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2122, metadata !564), !dbg !2235
  br label %272, !dbg !2352

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !2122, metadata !564), !dbg !2235
  br i1 %117, label %470, label %635, !dbg !2353

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2113, metadata !564), !dbg !2177
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2122, metadata !564), !dbg !2235
  br i1 %113, label %275, label %470, !dbg !2355

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2356

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2359
  %278 = icmp ne i64 %125, 0, !dbg !2361
  %279 = or i1 %278, %277, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2106, metadata !564), !dbg !2169
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2096, metadata !564), !dbg !2160
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2362
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2096, metadata !564), !dbg !2160
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !2106, metadata !564), !dbg !2169
  %282 = icmp ult i64 %124, %281, !dbg !2363
  br i1 %282, label %283, label %285, !dbg !2366

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2363
  store i8 39, i8* %284, align 1, !dbg !2363, !tbaa !668
  br label %285, !dbg !2363

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !2105, metadata !564), !dbg !2168
  %287 = icmp ult i64 %286, %281, !dbg !2367
  br i1 %287, label %288, label %290, !dbg !2370

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2367
  store i8 92, i8* %289, align 1, !dbg !2367, !tbaa !668
  br label %290, !dbg !2367

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !2105, metadata !564), !dbg !2168
  %292 = icmp ult i64 %291, %281, !dbg !2371
  br i1 %292, label %293, label %295, !dbg !2374

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2371
  store i8 39, i8* %294, align 1, !dbg !2371, !tbaa !668
  br label %295, !dbg !2371

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2374
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2112, metadata !564), !dbg !2176
  br label %470, !dbg !2375

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2376

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2123, metadata !564), !dbg !2377
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2378
  %300 = load i16*, i16** %299, align 8, !dbg !2378, !tbaa !571
  %301 = zext i8 %158 to i64, !dbg !2378
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2378
  %303 = load i16, i16* %302, align 2, !dbg !2378, !tbaa !1796
  %304 = lshr i16 %303, 14, !dbg !2380
  %305 = trunc i16 %304 to i8, !dbg !2380
  %306 = and i8 %305, 1, !dbg !2380
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !2126, metadata !564), !dbg !2381
  br label %362, !dbg !2382

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #8, !dbg !2383
  store i64 0, i64* %10, align 8, !dbg !2384
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2123, metadata !564), !dbg !2377
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2126, metadata !564), !dbg !2381
  %308 = icmp eq i64 %155, -1, !dbg !2385
  br i1 %308, label %309, label %311, !dbg !2387

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2388
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !2098, metadata !564), !dbg !2162
  br label %311, !dbg !2389

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !2098, metadata !564), !dbg !2162
  br label %313, !dbg !2390, !llvm.loop !2391

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !2126, metadata !564), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2123, metadata !564), !dbg !2377
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #8, !dbg !2393
  %316 = add i64 %314, %123, !dbg !2394
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2395
  %318 = sub i64 %312, %316, !dbg !2396
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2127, metadata !564), !dbg !2397
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2145, metadata !564), !dbg !2398
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #8, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !2148, metadata !564), !dbg !2400
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2401

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2126, metadata !564), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2123, metadata !564), !dbg !2377
  %321 = icmp ugt i64 %312, %316, !dbg !2402
  br i1 %321, label %322, label %347, !dbg !2404

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2405

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !2123, metadata !564), !dbg !2377
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2405
  %327 = load i8, i8* %326, align 1, !dbg !2405, !tbaa !668
  %328 = icmp eq i8 %327, 0, !dbg !2404
  br i1 %328, label %347, label %329, !dbg !2406

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2407
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2123, metadata !564), !dbg !2377
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2123, metadata !564), !dbg !2377
  %331 = add i64 %330, %123, !dbg !2408
  %332 = icmp ult i64 %331, %312, !dbg !2402
  br i1 %332, label %323, label %347, !dbg !2404, !llvm.loop !2409

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2410
  %335 = and i1 %115, %334, !dbg !2413
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2149, metadata !564), !dbg !2414
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2149, metadata !564), !dbg !2414
  br i1 %335, label %336, label %350, !dbg !2413

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2415

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !2149, metadata !564), !dbg !2414
  %339 = add i64 %338, %316, !dbg !2415
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2416
  %341 = load i8, i8* %340, align 1, !dbg !2416, !tbaa !668
  %342 = sext i8 %341 to i32, !dbg !2416
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2417

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2149, metadata !564), !dbg !2414
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2149, metadata !564), !dbg !2414
  %345 = icmp ult i64 %344, %319, !dbg !2410
  br i1 %345, label %337, label %350, !dbg !2419, !llvm.loop !2420

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2422

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2126, metadata !564), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2123, metadata !564), !dbg !2377
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !2422
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2423, !tbaa !630
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !2145, metadata !564), !dbg !2398
  %352 = call i32 @iswprint(i32 %351) #8, !dbg !2425
  %353 = icmp eq i32 %352, 0, !dbg !2425
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2126, metadata !564), !dbg !2381
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2426
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2126, metadata !564), !dbg !2381
  %355 = add i64 %319, %314, !dbg !2427
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2123, metadata !564), !dbg !2377
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2126, metadata !564), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2123, metadata !564), !dbg !2377
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !2422
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2127, metadata !564), !dbg !2397
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2428
  %357 = icmp eq i32 %356, 0, !dbg !2429
  br i1 %357, label %313, label %358, !dbg !2430, !llvm.loop !2391

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #8, !dbg !2431
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2126, metadata !564), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2123, metadata !564), !dbg !2377
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !2422
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #8, !dbg !2431
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !2126, metadata !564), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !2123, metadata !564), !dbg !2377
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !2098, metadata !564), !dbg !2162
  %366 = and i8 %365, 1, !dbg !2432
  %367 = icmp ne i8 %366, 0, !dbg !2432
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !2122, metadata !564), !dbg !2235
  %368 = icmp ult i64 %364, 2, !dbg !2433
  %369 = or i1 %367, %112, !dbg !2434
  %370 = and i1 %368, %369, !dbg !2435
  br i1 %370, label %470, label %371, !dbg !2435

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !2156, metadata !564), !dbg !2437
  br label %373, !dbg !2438

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !2121, metadata !564), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !2120, metadata !564), !dbg !2233
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !2115, metadata !564), !dbg !2249
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !2112, metadata !564), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !2104, metadata !564), !dbg !2225
  br i1 %369, label %426, label %380, !dbg !2439

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2444

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2121, metadata !564), !dbg !2234
  %382 = and i8 %376, 1, !dbg !2447
  %383 = icmp eq i8 %382, 0, !dbg !2447
  %384 = and i1 %113, %383, !dbg !2447
  br i1 %384, label %385, label %401, !dbg !2447

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2449
  br i1 %386, label %387, label %389, !dbg !2453

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2449
  store i8 39, i8* %388, align 1, !dbg !2449, !tbaa !668
  br label %389, !dbg !2449

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2453
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !2105, metadata !564), !dbg !2168
  %391 = icmp ult i64 %390, %130, !dbg !2454
  br i1 %391, label %392, label %394, !dbg !2457

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2454
  store i8 36, i8* %393, align 1, !dbg !2454, !tbaa !668
  br label %394, !dbg !2454

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !2105, metadata !564), !dbg !2168
  %396 = icmp ult i64 %395, %130, !dbg !2458
  br i1 %396, label %397, label %399, !dbg !2461

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2458
  store i8 39, i8* %398, align 1, !dbg !2458, !tbaa !668
  br label %399, !dbg !2458

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2461
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2112, metadata !564), !dbg !2176
  br label %401, !dbg !2462

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !2112, metadata !564), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !2105, metadata !564), !dbg !2168
  %404 = icmp ult i64 %402, %130, !dbg !2463
  br i1 %404, label %405, label %407, !dbg !2466

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2463
  store i8 92, i8* %406, align 1, !dbg !2463, !tbaa !668
  br label %407, !dbg !2463

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2466
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2105, metadata !564), !dbg !2168
  %409 = icmp ult i64 %408, %130, !dbg !2467
  br i1 %409, label %410, label %414, !dbg !2470

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2467
  %412 = or i8 %411, 48, !dbg !2467
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2467
  store i8 %412, i8* %413, align 1, !dbg !2467, !tbaa !668
  br label %414, !dbg !2467

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2470
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !2105, metadata !564), !dbg !2168
  %416 = icmp ult i64 %415, %130, !dbg !2471
  br i1 %416, label %417, label %422, !dbg !2474

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2471
  %419 = and i8 %418, 7, !dbg !2471
  %420 = or i8 %419, 48, !dbg !2471
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2471
  store i8 %420, i8* %421, align 1, !dbg !2471, !tbaa !668
  br label %422, !dbg !2471

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !2105, metadata !564), !dbg !2168
  %424 = and i8 %377, 7, !dbg !2475
  %425 = or i8 %424, 48, !dbg !2476
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !2115, metadata !564), !dbg !2249
  br label %435, !dbg !2477

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2478
  %428 = icmp eq i8 %427, 0, !dbg !2478
  br i1 %428, label %435, label %429, !dbg !2480

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2481
  br i1 %430, label %431, label %433, !dbg !2485

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2481
  store i8 92, i8* %432, align 1, !dbg !2481, !tbaa !668
  br label %433, !dbg !2481

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2120, metadata !564), !dbg !2233
  br label %435, !dbg !2486

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !2121, metadata !564), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !2120, metadata !564), !dbg !2233
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !2115, metadata !564), !dbg !2249
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !2112, metadata !564), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !2105, metadata !564), !dbg !2168
  %441 = add i64 %374, 1, !dbg !2487
  %442 = icmp ugt i64 %372, %441, !dbg !2489
  br i1 %442, label %443, label %535, !dbg !2490

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2491
  %445 = icmp ne i8 %444, 0, !dbg !2491
  %446 = and i8 %440, 1, !dbg !2491
  %447 = icmp eq i8 %446, 0, !dbg !2491
  %448 = and i1 %445, %447, !dbg !2491
  br i1 %448, label %449, label %460, !dbg !2491

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2494
  br i1 %450, label %451, label %453, !dbg !2498

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2494
  store i8 39, i8* %452, align 1, !dbg !2494, !tbaa !668
  br label %453, !dbg !2494

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2498
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !2105, metadata !564), !dbg !2168
  %455 = icmp ult i64 %454, %130, !dbg !2499
  br i1 %455, label %456, label %458, !dbg !2502

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2499
  store i8 39, i8* %457, align 1, !dbg !2499, !tbaa !668
  br label %458, !dbg !2499

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2502
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2112, metadata !564), !dbg !2176
  br label %460, !dbg !2503

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !2112, metadata !564), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !2105, metadata !564), !dbg !2168
  %463 = icmp ult i64 %461, %130, !dbg !2504
  br i1 %463, label %464, label %466, !dbg !2507

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2504
  store i8 %438, i8* %465, align 1, !dbg !2504, !tbaa !668
  br label %466, !dbg !2504

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2507
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !2104, metadata !564), !dbg !2225
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2508
  %469 = load i8, i8* %468, align 1, !dbg !2508, !tbaa !668
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !2115, metadata !564), !dbg !2249
  br label %373, !dbg !2509, !llvm.loop !2510

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2096, metadata !564), !dbg !2160
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !2122, metadata !564), !dbg !2235
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !2121, metadata !564), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2120, metadata !564), !dbg !2233
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !2115, metadata !564), !dbg !2249
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !2113, metadata !564), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2112, metadata !564), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !2098, metadata !564), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2106, metadata !564), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !2104, metadata !564), !dbg !2225
  br i1 %106, label %482, label %481, !dbg !2513

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2515

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2516

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2517
  %485 = zext i8 %484 to i64, !dbg !2517
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2518
  %487 = load i32, i32* %486, align 4, !dbg !2518, !tbaa !630
  %488 = and i8 %477, 31, !dbg !2519
  %489 = zext i8 %488 to i32, !dbg !2520
  %490 = shl i32 1, %489, !dbg !2521
  %491 = and i32 %487, %490, !dbg !2521
  %492 = icmp eq i32 %491, 0, !dbg !2521
  %493 = icmp eq i8 %156, 0, !dbg !2522
  %494 = and i1 %493, %492, !dbg !2523
  br i1 %494, label %535, label %497, !dbg !2523

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2522
  br i1 %496, label %535, label %497, !dbg !2524

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2096, metadata !564), !dbg !2160
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !2122, metadata !564), !dbg !2235
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !2115, metadata !564), !dbg !2249
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !2113, metadata !564), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !2112, metadata !564), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !2098, metadata !564), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !2106, metadata !564), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !2104, metadata !564), !dbg !2225
  br i1 %111, label %507, label %635, !dbg !2525

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2121, metadata !564), !dbg !2234
  %508 = and i8 %502, 1, !dbg !2527
  %509 = icmp eq i8 %508, 0, !dbg !2527
  %510 = and i1 %113, %509, !dbg !2527
  br i1 %510, label %511, label %527, !dbg !2527

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2529
  br i1 %512, label %513, label %515, !dbg !2533

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2529
  store i8 39, i8* %514, align 1, !dbg !2529, !tbaa !668
  br label %515, !dbg !2529

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2533
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !2105, metadata !564), !dbg !2168
  %517 = icmp ult i64 %516, %506, !dbg !2534
  br i1 %517, label %518, label %520, !dbg !2537

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2534
  store i8 36, i8* %519, align 1, !dbg !2534, !tbaa !668
  br label %520, !dbg !2534

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2537
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !2105, metadata !564), !dbg !2168
  %522 = icmp ult i64 %521, %506, !dbg !2538
  br i1 %522, label %523, label %525, !dbg !2541

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2538
  store i8 39, i8* %524, align 1, !dbg !2538, !tbaa !668
  br label %525, !dbg !2538

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2541
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2112, metadata !564), !dbg !2176
  br label %527, !dbg !2542

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !2112, metadata !564), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !2105, metadata !564), !dbg !2168
  %530 = icmp ult i64 %528, %506, !dbg !2543
  br i1 %530, label %531, label %533, !dbg !2546

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2543
  store i8 92, i8* %532, align 1, !dbg !2543, !tbaa !668
  br label %533, !dbg !2543

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2546
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2096, metadata !564), !dbg !2160
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2122, metadata !564), !dbg !2235
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2121, metadata !564), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2115, metadata !564), !dbg !2249
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2113, metadata !564), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2112, metadata !564), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2098, metadata !564), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2106, metadata !564), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2104, metadata !564), !dbg !2225
  br label %562, !dbg !2547

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2096, metadata !564), !dbg !2160
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2122, metadata !564), !dbg !2235
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2121, metadata !564), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2115, metadata !564), !dbg !2249
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2113, metadata !564), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2112, metadata !564), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2098, metadata !564), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2106, metadata !564), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2104, metadata !564), !dbg !2225
  %546 = and i8 %540, 1, !dbg !2547
  %547 = icmp ne i8 %546, 0, !dbg !2547
  %548 = and i8 %543, 1, !dbg !2547
  %549 = icmp eq i8 %548, 0, !dbg !2547
  %550 = and i1 %547, %549, !dbg !2547
  br i1 %550, label %551, label %562, !dbg !2547

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2550
  br i1 %552, label %553, label %555, !dbg !2554

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2550
  store i8 39, i8* %554, align 1, !dbg !2550, !tbaa !668
  br label %555, !dbg !2550

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2554
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !2105, metadata !564), !dbg !2168
  %557 = icmp ult i64 %556, %545, !dbg !2555
  br i1 %557, label %558, label %560, !dbg !2558

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2555
  store i8 39, i8* %559, align 1, !dbg !2555, !tbaa !668
  br label %560, !dbg !2555

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2558
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2112, metadata !564), !dbg !2176
  br label %562, !dbg !2559

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !2112, metadata !564), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !2105, metadata !564), !dbg !2168
  %572 = icmp ult i64 %570, %563, !dbg !2560
  br i1 %572, label %573, label %575, !dbg !2563

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2560
  store i8 %565, i8* %574, align 1, !dbg !2560, !tbaa !668
  br label %575, !dbg !2560

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !2105, metadata !564), !dbg !2168
  %577 = and i8 %564, 1, !dbg !2564
  %578 = icmp eq i8 %577, 0, !dbg !2564
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2114, metadata !564), !dbg !2178
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2566
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !2114, metadata !564), !dbg !2178
  br label %580, !dbg !2567

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !2096, metadata !564), !dbg !2160
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !2114, metadata !564), !dbg !2178
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2113, metadata !564), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !2112, metadata !564), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !2098, metadata !564), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2106, metadata !564), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !2104, metadata !564), !dbg !2225
  %589 = add i64 %581, 1, !dbg !2568
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !2104, metadata !564), !dbg !2225
  br label %122, !dbg !2569, !llvm.loop !2570

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2572
  %593 = and i1 %113, %592, !dbg !2574
  %594 = xor i1 %593, true, !dbg !2574
  %595 = or i1 %111, %594, !dbg !2574
  br i1 %595, label %596, label %635, !dbg !2574

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2575
  %598 = xor i1 %597, true, !dbg !2575
  %599 = and i8 %128, 1, !dbg !2577
  %600 = icmp eq i8 %599, 0, !dbg !2577
  %601 = or i1 %600, %598, !dbg !2575
  br i1 %601, label %611, label %602, !dbg !2575

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2578
  %604 = icmp eq i8 %603, 0, !dbg !2578
  br i1 %604, label %607, label %605, !dbg !2581

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2582
  br label %645, !dbg !2583

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2584
  %609 = icmp ne i64 %125, 0, !dbg !2586
  %610 = and i1 %609, %608, !dbg !2587
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2096, metadata !564), !dbg !2160
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2105, metadata !564), !dbg !2168
  br i1 %610, label %27, label %611, !dbg !2587

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2588
  %613 = and i1 %612, %111, !dbg !2590
  br i1 %613, label %614, label %630, !dbg !2590

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2107, metadata !564), !dbg !2170
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2105, metadata !564), !dbg !2168
  %615 = load i8, i8* %99, align 1, !dbg !2591, !tbaa !668
  %616 = icmp eq i8 %615, 0, !dbg !2594
  br i1 %616, label %630, label %617, !dbg !2594

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2595

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !2105, metadata !564), !dbg !2168
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !2107, metadata !564), !dbg !2170
  %622 = icmp ult i64 %621, %130, !dbg !2595
  br i1 %622, label %623, label %625, !dbg !2598

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2595
  store i8 %619, i8* %624, align 1, !dbg !2595, !tbaa !668
  br label %625, !dbg !2595

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2598
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2105, metadata !564), !dbg !2168
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2599
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2107, metadata !564), !dbg !2170
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2107, metadata !564), !dbg !2170
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2105, metadata !564), !dbg !2168
  %628 = load i8, i8* %627, align 1, !dbg !2591, !tbaa !668
  %629 = icmp eq i8 %628, 0, !dbg !2594
  br i1 %629, label %630, label %618, !dbg !2594, !llvm.loop !2600

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !2105, metadata !564), !dbg !2168
  %632 = icmp ult i64 %631, %130, !dbg !2602
  br i1 %632, label %633, label %645, !dbg !2604

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2605
  store i8 0, i8* %634, align 1, !dbg !2606, !tbaa !668
  br label %645, !dbg !2605

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !2096, metadata !564), !dbg !2160
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !2098, metadata !564), !dbg !2162
  %639 = icmp ne i32 %636, 2, !dbg !2607
  %640 = icmp eq i8 %103, 0, !dbg !2609
  %641 = or i1 %639, %640, !dbg !2610
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2099, metadata !564), !dbg !2163
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2610
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !2099, metadata !564), !dbg !2163
  %643 = and i32 %5, -3, !dbg !2611
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2612
  br label %645, !dbg !2613

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2614
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2615 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2619, metadata !564), !dbg !2623
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2620, metadata !564), !dbg !2624
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #8, !dbg !2625
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2621, metadata !564), !dbg !2626
  %4 = icmp eq i8* %3, %0, !dbg !2627
  br i1 %4, label %5, label %75, !dbg !2629

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #8, !dbg !2630
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2622, metadata !564), !dbg !2631
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2632, metadata !564), !dbg !2648
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2646, metadata !564), !dbg !2651
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2647, metadata !564), !dbg !2652
  %7 = load i8, i8* %6, align 1, !dbg !2653, !tbaa !668
  %8 = sext i8 %7 to i32, !dbg !2653
  %9 = and i32 %8, -33, !dbg !2653
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2653

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2655, metadata !564), !dbg !2669
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2667, metadata !564), !dbg !2673
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2668, metadata !564), !dbg !2674
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2675
  %12 = load i8, i8* %11, align 1, !dbg !2675, !tbaa !668
  %13 = sext i8 %12 to i32, !dbg !2675
  %14 = and i32 %13, -33, !dbg !2675
  %15 = icmp eq i32 %14, 84, !dbg !2675
  br i1 %15, label %16, label %72, !dbg !2675

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2677, metadata !564), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2688, metadata !564), !dbg !2694
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2689, metadata !564), !dbg !2695
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2696
  %18 = load i8, i8* %17, align 1, !dbg !2696, !tbaa !668
  %19 = sext i8 %18 to i32, !dbg !2696
  %20 = and i32 %19, -33, !dbg !2696
  %21 = icmp eq i32 %20, 70, !dbg !2696
  br i1 %21, label %22, label %72, !dbg !2696

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2698, metadata !564), !dbg !2710
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2708, metadata !564), !dbg !2714
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2709, metadata !564), !dbg !2715
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2716
  %24 = load i8, i8* %23, align 1, !dbg !2716, !tbaa !668
  %25 = icmp eq i8 %24, 45, !dbg !2716
  br i1 %25, label %26, label %72, !dbg !2718

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2719, metadata !564), !dbg !2730
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2728, metadata !564), !dbg !2734
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2729, metadata !564), !dbg !2735
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2736
  %28 = load i8, i8* %27, align 1, !dbg !2736, !tbaa !668
  %29 = icmp eq i8 %28, 56, !dbg !2736
  br i1 %29, label %30, label %72, !dbg !2738

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2739, metadata !564), !dbg !2749
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2747, metadata !564), !dbg !2753
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2748, metadata !564), !dbg !2754
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2755
  %32 = load i8, i8* %31, align 1, !dbg !2755, !tbaa !668
  %33 = icmp eq i8 %32, 0, !dbg !2755
  br i1 %33, label %34, label %72, !dbg !2757

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2758, !tbaa !668
  %36 = icmp eq i8 %35, 96, !dbg !2759
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.84, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.85, i64 0, i64 0), !dbg !2758
  br label %75, !dbg !2760

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2655, metadata !564), !dbg !2761
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2667, metadata !564), !dbg !2765
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2668, metadata !564), !dbg !2766
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2767
  %40 = load i8, i8* %39, align 1, !dbg !2767, !tbaa !668
  %41 = sext i8 %40 to i32, !dbg !2767
  %42 = and i32 %41, -33, !dbg !2767
  %43 = icmp eq i32 %42, 66, !dbg !2767
  br i1 %43, label %44, label %72, !dbg !2767

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2677, metadata !564), !dbg !2768
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2688, metadata !564), !dbg !2770
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2689, metadata !564), !dbg !2771
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2772
  %46 = load i8, i8* %45, align 1, !dbg !2772, !tbaa !668
  %47 = icmp eq i8 %46, 49, !dbg !2772
  br i1 %47, label %48, label %72, !dbg !2773

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2698, metadata !564), !dbg !2774
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2708, metadata !564), !dbg !2776
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2709, metadata !564), !dbg !2777
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2778
  %50 = load i8, i8* %49, align 1, !dbg !2778, !tbaa !668
  %51 = icmp eq i8 %50, 56, !dbg !2778
  br i1 %51, label %52, label %72, !dbg !2779

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2719, metadata !564), !dbg !2780
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2728, metadata !564), !dbg !2782
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2729, metadata !564), !dbg !2783
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2784
  %54 = load i8, i8* %53, align 1, !dbg !2784, !tbaa !668
  %55 = icmp eq i8 %54, 48, !dbg !2784
  br i1 %55, label %56, label %72, !dbg !2785

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2739, metadata !564), !dbg !2786
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2747, metadata !564), !dbg !2788
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2748, metadata !564), !dbg !2789
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2790
  %58 = load i8, i8* %57, align 1, !dbg !2790, !tbaa !668
  %59 = icmp eq i8 %58, 51, !dbg !2790
  br i1 %59, label %60, label %72, !dbg !2791

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2792, metadata !564), !dbg !2801
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2799, metadata !564), !dbg !2805
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2800, metadata !564), !dbg !2806
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2807
  %62 = load i8, i8* %61, align 1, !dbg !2807, !tbaa !668
  %63 = icmp eq i8 %62, 48, !dbg !2807
  br i1 %63, label %64, label %72, !dbg !2809

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2810, metadata !564), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2816, metadata !564), !dbg !2822
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2817, metadata !564), !dbg !2823
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2824
  %66 = load i8, i8* %65, align 1, !dbg !2824, !tbaa !668
  %67 = icmp eq i8 %66, 0, !dbg !2824
  br i1 %67, label %68, label %72, !dbg !2826

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2827, !tbaa !668
  %70 = icmp eq i8 %69, 96, !dbg !2828
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.86, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.87, i64 0, i64 0), !dbg !2827
  br label %75, !dbg !2829

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2830
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.83, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.82, i64 0, i64 0), !dbg !2831
  br label %75, !dbg !2832

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2833
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2834 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2838, metadata !564), !dbg !2841
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2839, metadata !564), !dbg !2842
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2840, metadata !564), !dbg !2843
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2844, metadata !564) #8, !dbg !2857
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2849, metadata !564) #8, !dbg !2859
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2850, metadata !564) #8, !dbg !2860
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2851, metadata !564) #8, !dbg !2861
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2862
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2862
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2852, metadata !564) #8, !dbg !2863
  %6 = tail call i32* @__errno_location() #17, !dbg !2864
  %7 = load i32, i32* %6, align 4, !dbg !2864, !tbaa !630
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2853, metadata !564) #8, !dbg !2865
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2866
  %9 = load i32, i32* %8, align 4, !dbg !2866, !tbaa !2028
  %10 = or i32 %9, 1, !dbg !2867
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2854, metadata !564) #8, !dbg !2868
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2869
  %12 = load i32, i32* %11, align 8, !dbg !2869, !tbaa !1968
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2870
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2871
  %15 = load i8*, i8** %14, align 8, !dbg !2871, !tbaa !2054
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2872
  %17 = load i8*, i8** %16, align 8, !dbg !2872, !tbaa !2057
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #8, !dbg !2873
  %19 = add i64 %18, 1, !dbg !2874
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2855, metadata !564) #8, !dbg !2875
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2876, metadata !564) #8, !dbg !2881
  %20 = tail call noalias i8* @xmalloc(i64 %19) #8, !dbg !2883
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2856, metadata !564) #8, !dbg !2884
  %21 = load i32, i32* %11, align 8, !dbg !2885, !tbaa !1968
  %22 = load i8*, i8** %14, align 8, !dbg !2886, !tbaa !2054
  %23 = load i8*, i8** %16, align 8, !dbg !2887, !tbaa !2057
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #8, !dbg !2888
  store i32 %7, i32* %6, align 4, !dbg !2889, !tbaa !630
  ret i8* %20, !dbg !2890
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2845 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2844, metadata !564), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2849, metadata !564), !dbg !2892
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2850, metadata !564), !dbg !2893
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2851, metadata !564), !dbg !2894
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2895
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2895
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2852, metadata !564), !dbg !2896
  %7 = tail call i32* @__errno_location() #17, !dbg !2897
  %8 = load i32, i32* %7, align 4, !dbg !2897, !tbaa !630
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2853, metadata !564), !dbg !2898
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2899
  %10 = load i32, i32* %9, align 4, !dbg !2899, !tbaa !2028
  %11 = icmp ne i64* %2, null, !dbg !2900
  %12 = xor i1 %11, true, !dbg !2900
  %13 = zext i1 %12 to i32, !dbg !2900
  %14 = or i32 %10, %13, !dbg !2901
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2854, metadata !564), !dbg !2902
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2903
  %16 = load i32, i32* %15, align 8, !dbg !2903, !tbaa !1968
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2904
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2905
  %19 = load i8*, i8** %18, align 8, !dbg !2905, !tbaa !2054
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2906
  %21 = load i8*, i8** %20, align 8, !dbg !2906, !tbaa !2057
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2907
  %23 = add i64 %22, 1, !dbg !2908
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2855, metadata !564), !dbg !2909
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2876, metadata !564) #8, !dbg !2910
  %24 = tail call noalias i8* @xmalloc(i64 %23) #8, !dbg !2912
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2856, metadata !564), !dbg !2913
  %25 = load i32, i32* %15, align 8, !dbg !2914, !tbaa !1968
  %26 = load i8*, i8** %18, align 8, !dbg !2915, !tbaa !2054
  %27 = load i8*, i8** %20, align 8, !dbg !2916, !tbaa !2057
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2917
  store i32 %8, i32* %7, align 4, !dbg !2918, !tbaa !630
  br i1 %11, label %29, label %30, !dbg !2919

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2920, !tbaa !2922
  br label %30, !dbg !2923

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2924
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2925 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2929, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2927, metadata !564), !dbg !2930
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2928, metadata !564), !dbg !2931
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2928, metadata !564), !dbg !2931
  %2 = load i32, i32* @nslots, align 4, !dbg !2932, !tbaa !630
  %3 = icmp sgt i32 %2, 1, !dbg !2935
  br i1 %3, label %4, label %13, !dbg !2936

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2937

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2928, metadata !564), !dbg !2931
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2937
  %8 = load i8*, i8** %7, align 8, !dbg !2937, !tbaa !2938
  tail call void @free(i8* %8) #8, !dbg !2940
  %9 = add nuw i64 %6, 1, !dbg !2941
  %10 = load i32, i32* @nslots, align 4, !dbg !2932, !tbaa !630
  %11 = sext i32 %10 to i64, !dbg !2935
  %12 = icmp slt i64 %9, %11, !dbg !2935
  br i1 %12, label %5, label %13, !dbg !2936, !llvm.loop !2942

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2944
  %15 = load i8*, i8** %14, align 8, !dbg !2944, !tbaa !2938
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2946
  br i1 %16, label %18, label %17, !dbg !2947

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #8, !dbg !2948
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2950, !tbaa !2951
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2952, !tbaa !2938
  br label %18, !dbg !2953

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2954
  br i1 %19, label %22, label %20, !dbg !2956

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2957
  tail call void @free(i8* %21) #8, !dbg !2959
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2960, !tbaa !571
  br label %22, !dbg !2961

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2962, !tbaa !630
  ret void, !dbg !2963
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2964 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2968, metadata !564), !dbg !2970
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2969, metadata !564), !dbg !2971
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2972
  ret i8* %3, !dbg !2973
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2974 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2978, metadata !564), !dbg !2992
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2979, metadata !564), !dbg !2993
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2980, metadata !564), !dbg !2994
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2981, metadata !564), !dbg !2995
  %5 = tail call i32* @__errno_location() #17, !dbg !2996
  %6 = load i32, i32* %5, align 4, !dbg !2996, !tbaa !630
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2982, metadata !564), !dbg !2997
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2998, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2983, metadata !564), !dbg !2999
  %8 = icmp slt i32 %0, 0, !dbg !3000
  br i1 %8, label %9, label %10, !dbg !3002

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3003
  unreachable, !dbg !3003

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3004, !tbaa !630
  %12 = icmp sgt i32 %11, %0, !dbg !3005
  br i1 %12, label %34, label %13, !dbg !3006

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3007
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3008
  br i1 %15, label %16, label %17, !dbg !3010

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3011
  unreachable, !dbg !3011

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3012
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3012
  %20 = add nsw i32 %0, 1, !dbg !3013
  %21 = sext i32 %20 to i64, !dbg !3014
  %22 = shl nsw i64 %21, 4, !dbg !3015
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #8, !dbg !3016
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3016
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2983, metadata !564), !dbg !2999
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3017, !tbaa !571
  br i1 %14, label %25, label %26, !dbg !3018

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3019, !tbaa.struct !3021
  br label %26, !dbg !3022

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3023, !tbaa !630
  %28 = sext i32 %27 to i64, !dbg !3024
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3024
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3025
  %31 = sub nsw i32 %20, %27, !dbg !3026
  %32 = sext i32 %31 to i64, !dbg !3027
  %33 = shl nsw i64 %32, 4, !dbg !3028
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3025
  store i32 %20, i32* @nslots, align 4, !dbg !3029, !tbaa !630
  br label %34, !dbg !3030

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2983, metadata !564), !dbg !2999
  %36 = sext i32 %0 to i64, !dbg !3031
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3032
  %38 = load i64, i64* %37, align 8, !dbg !3032, !tbaa !2951
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2987, metadata !564), !dbg !3033
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3034
  %40 = load i8*, i8** %39, align 8, !dbg !3034, !tbaa !2938
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2989, metadata !564), !dbg !3035
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3036
  %42 = load i32, i32* %41, align 4, !dbg !3036, !tbaa !2028
  %43 = or i32 %42, 1, !dbg !3037
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2990, metadata !564), !dbg !3038
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3039
  %45 = load i32, i32* %44, align 8, !dbg !3039, !tbaa !1968
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3040
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3041
  %48 = load i8*, i8** %47, align 8, !dbg !3041, !tbaa !2054
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3042
  %50 = load i8*, i8** %49, align 8, !dbg !3042, !tbaa !2057
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3043
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2991, metadata !564), !dbg !3044
  %52 = icmp ugt i64 %38, %51, !dbg !3045
  br i1 %52, label %63, label %53, !dbg !3047

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3048
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2987, metadata !564), !dbg !3033
  store i64 %54, i64* %37, align 8, !dbg !3050, !tbaa !2951
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3051
  br i1 %55, label %57, label %56, !dbg !3053

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #8, !dbg !3054
  br label %57, !dbg !3054

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2876, metadata !564) #8, !dbg !3055
  %58 = tail call noalias i8* @xmalloc(i64 %54) #8, !dbg !3057
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2989, metadata !564), !dbg !3035
  store i8* %58, i8** %39, align 8, !dbg !3058, !tbaa !2938
  %59 = load i32, i32* %44, align 8, !dbg !3059, !tbaa !1968
  %60 = load i8*, i8** %47, align 8, !dbg !3060, !tbaa !2054
  %61 = load i8*, i8** %49, align 8, !dbg !3061, !tbaa !2057
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3062
  br label %63, !dbg !3063

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2989, metadata !564), !dbg !3035
  store i32 %6, i32* %5, align 4, !dbg !3064, !tbaa !630
  ret i8* %64, !dbg !3065
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3066 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3070, metadata !564), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3071, metadata !564), !dbg !3074
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3072, metadata !564), !dbg !3075
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3076
  ret i8* %4, !dbg !3077
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3078 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3082, metadata !564), !dbg !3083
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2968, metadata !564) #8, !dbg !3084
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2969, metadata !564) #8, !dbg !3086
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #8, !dbg !3087
  ret i8* %2, !dbg !3088
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3089 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3093, metadata !564), !dbg !3095
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3094, metadata !564), !dbg !3096
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3070, metadata !564) #8, !dbg !3097
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3071, metadata !564) #8, !dbg !3099
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3072, metadata !564) #8, !dbg !3100
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #8, !dbg !3101
  ret i8* %3, !dbg !3102
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3103 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3111, metadata !3117), !dbg !3118
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3107, metadata !564), !dbg !3120
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3108, metadata !564), !dbg !3121
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3109, metadata !564), !dbg !3122
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3123
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #8, !dbg !3123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3110, metadata !564), !dbg !3124
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3116, metadata !564) #8, !dbg !3125
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3126
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3126
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3111, metadata !564) #8, !dbg !3118
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3111, metadata !3127) #8, !dbg !3118
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3118
  %8 = icmp eq i32 %1, 10, !dbg !3128
  br i1 %8, label %9, label %10, !dbg !3130

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3131, !noalias !3132
  unreachable, !dbg !3131

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3111, metadata !3127) #8, !dbg !3118
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3135
  store i32 %1, i32* %11, align 8, !dbg !3135, !alias.scope !3132
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3135
  %13 = bitcast i32* %12 to i8*, !dbg !3135
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #8, !dbg !3135
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3136
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3110, metadata !564), !dbg !3124
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3137
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #8, !dbg !3138
  ret i8* %14, !dbg !3139
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3140 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3111, metadata !3117), !dbg !3149
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3144, metadata !564), !dbg !3151
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3145, metadata !564), !dbg !3152
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3146, metadata !564), !dbg !3153
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3147, metadata !564), !dbg !3154
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3155
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #8, !dbg !3155
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3148, metadata !564), !dbg !3156
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3116, metadata !564) #8, !dbg !3157
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3158
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3158
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3111, metadata !564) #8, !dbg !3149
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3111, metadata !3127) #8, !dbg !3149
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3149
  %9 = icmp eq i32 %1, 10, !dbg !3159
  br i1 %9, label %10, label %11, !dbg !3160

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3161, !noalias !3162
  unreachable, !dbg !3161

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3111, metadata !3127) #8, !dbg !3149
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3165
  store i32 %1, i32* %12, align 8, !dbg !3165, !alias.scope !3162
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3165
  %14 = bitcast i32* %13 to i8*, !dbg !3165
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #8, !dbg !3165
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3166
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3148, metadata !564), !dbg !3156
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3167
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #8, !dbg !3168
  ret i8* %15, !dbg !3169
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3170 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3111, metadata !3117), !dbg !3176
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3174, metadata !564), !dbg !3179
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3175, metadata !564), !dbg !3180
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3107, metadata !564) #8, !dbg !3181
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3108, metadata !564) #8, !dbg !3182
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3109, metadata !564) #8, !dbg !3183
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3184
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #8, !dbg !3184
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3110, metadata !564) #8, !dbg !3185
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3116, metadata !564) #8, !dbg !3186
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3187
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !3187
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3111, metadata !564) #8, !dbg !3176
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3111, metadata !3127) #8, !dbg !3176
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3176
  %7 = icmp eq i32 %0, 10, !dbg !3188
  br i1 %7, label %8, label %9, !dbg !3189

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3190, !noalias !3191
  unreachable, !dbg !3190

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3111, metadata !3127) #8, !dbg !3176
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3194
  store i32 %0, i32* %10, align 8, !dbg !3194, !alias.scope !3191
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3194
  %12 = bitcast i32* %11 to i8*, !dbg !3194
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #8, !dbg !3194
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !3195
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3110, metadata !564) #8, !dbg !3185
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #8, !dbg !3196
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #8, !dbg !3197
  ret i8* %13, !dbg !3198
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3199 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3111, metadata !3117), !dbg !3206
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3203, metadata !564), !dbg !3209
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3204, metadata !564), !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3205, metadata !564), !dbg !3211
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3144, metadata !564) #8, !dbg !3212
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3145, metadata !564) #8, !dbg !3213
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3146, metadata !564) #8, !dbg !3214
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3147, metadata !564) #8, !dbg !3215
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3216
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #8, !dbg !3216
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3148, metadata !564) #8, !dbg !3217
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3116, metadata !564) #8, !dbg !3218
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3219
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3219
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3111, metadata !564) #8, !dbg !3206
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3111, metadata !3127) #8, !dbg !3206
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3206
  %8 = icmp eq i32 %0, 10, !dbg !3220
  br i1 %8, label %9, label %10, !dbg !3221

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3222, !noalias !3223
  unreachable, !dbg !3222

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3111, metadata !3127) #8, !dbg !3206
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3226
  store i32 %0, i32* %11, align 8, !dbg !3226, !alias.scope !3223
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3226
  %13 = bitcast i32* %12 to i8*, !dbg !3226
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #8, !dbg !3226
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3227
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3148, metadata !564) #8, !dbg !3217
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #8, !dbg !3228
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #8, !dbg !3229
  ret i8* %14, !dbg !3230
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3231 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3235, metadata !564), !dbg !3239
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3236, metadata !564), !dbg !3240
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3237, metadata !564), !dbg !3241
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3242
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #8, !dbg !3242
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3243, !tbaa.struct !3244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3238, metadata !564), !dbg !3245
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1987, metadata !564), !dbg !3246
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1988, metadata !564), !dbg !3248
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1989, metadata !564), !dbg !3249
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1990, metadata !564), !dbg !3250
  %6 = lshr i8 %2, 5, !dbg !3251
  %7 = zext i8 %6 to i64, !dbg !3251
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3252
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1991, metadata !564), !dbg !3253
  %9 = and i8 %2, 31, !dbg !3254
  %10 = zext i8 %9 to i32, !dbg !3255
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1993, metadata !564), !dbg !3256
  %11 = load i32, i32* %8, align 4, !dbg !3257, !tbaa !630
  %12 = lshr i32 %11, %10, !dbg !3258
  %13 = and i32 %12, 1, !dbg !3259
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1994, metadata !564), !dbg !3260
  %14 = xor i32 %13, 1, !dbg !3261
  %15 = shl i32 %14, %10, !dbg !3262
  %16 = xor i32 %15, %11, !dbg !3263
  store i32 %16, i32* %8, align 4, !dbg !3263, !tbaa !630
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3238, metadata !564), !dbg !3245
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3264
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #8, !dbg !3265
  ret i8* %17, !dbg !3266
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3267 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3271, metadata !564), !dbg !3273
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3272, metadata !564), !dbg !3274
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3235, metadata !564) #8, !dbg !3275
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3236, metadata !564) #8, !dbg !3277
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3237, metadata !564) #8, !dbg !3278
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3279
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #8, !dbg !3279
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #8, !dbg !3280, !tbaa.struct !3244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3238, metadata !564) #8, !dbg !3281
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1987, metadata !564) #8, !dbg !3282
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1988, metadata !564) #8, !dbg !3284
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1989, metadata !564) #8, !dbg !3285
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1990, metadata !564) #8, !dbg !3286
  %5 = lshr i8 %1, 5, !dbg !3287
  %6 = zext i8 %5 to i64, !dbg !3287
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3288
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1991, metadata !564) #8, !dbg !3289
  %8 = and i8 %1, 31, !dbg !3290
  %9 = zext i8 %8 to i32, !dbg !3291
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1993, metadata !564) #8, !dbg !3292
  %10 = load i32, i32* %7, align 4, !dbg !3293, !tbaa !630
  %11 = lshr i32 %10, %9, !dbg !3294
  %12 = and i32 %11, 1, !dbg !3295
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1994, metadata !564) #8, !dbg !3296
  %13 = xor i32 %12, 1, !dbg !3297
  %14 = shl i32 %13, %9, !dbg !3298
  %15 = xor i32 %14, %10, !dbg !3299
  store i32 %15, i32* %7, align 4, !dbg !3299, !tbaa !630
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3238, metadata !564) #8, !dbg !3281
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #8, !dbg !3300
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #8, !dbg !3301
  ret i8* %16, !dbg !3302
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3303 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3305, metadata !564), !dbg !3306
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3271, metadata !564) #8, !dbg !3307
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3272, metadata !564) #8, !dbg !3309
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3235, metadata !564) #8, !dbg !3310
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3236, metadata !564) #8, !dbg !3312
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3237, metadata !564) #8, !dbg !3313
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3314
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #8, !dbg !3314
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #8, !dbg !3315, !tbaa.struct !3244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3238, metadata !564) #8, !dbg !3316
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1987, metadata !564) #8, !dbg !3317
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1988, metadata !564) #8, !dbg !3319
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1989, metadata !564) #8, !dbg !3320
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1990, metadata !564) #8, !dbg !3321
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3322
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1991, metadata !564) #8, !dbg !3323
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1993, metadata !564) #8, !dbg !3324
  %5 = load i32, i32* %4, align 4, !dbg !3325, !tbaa !630
  %6 = or i32 %5, 67108864, !dbg !3326
  store i32 %6, i32* %4, align 4, !dbg !3326, !tbaa !630
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3238, metadata !564) #8, !dbg !3316
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #8, !dbg !3327
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #8, !dbg !3328
  ret i8* %7, !dbg !3329
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3330 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3332, metadata !564), !dbg !3334
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3333, metadata !564), !dbg !3335
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3235, metadata !564) #8, !dbg !3336
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3236, metadata !564) #8, !dbg !3338
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3237, metadata !564) #8, !dbg !3339
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3340
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #8, !dbg !3340
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #8, !dbg !3341, !tbaa.struct !3244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3238, metadata !564) #8, !dbg !3342
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1987, metadata !564) #8, !dbg !3343
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1988, metadata !564) #8, !dbg !3345
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1989, metadata !564) #8, !dbg !3346
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1990, metadata !564) #8, !dbg !3347
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3348
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1991, metadata !564) #8, !dbg !3349
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1993, metadata !564) #8, !dbg !3350
  %6 = load i32, i32* %5, align 4, !dbg !3351, !tbaa !630
  %7 = or i32 %6, 67108864, !dbg !3352
  store i32 %7, i32* %5, align 4, !dbg !3352, !tbaa !630
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3238, metadata !564) #8, !dbg !3342
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #8, !dbg !3353
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #8, !dbg !3354
  ret i8* %8, !dbg !3355
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3356 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3111, metadata !3117), !dbg !3362
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3358, metadata !564), !dbg !3364
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3359, metadata !564), !dbg !3365
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3360, metadata !564), !dbg !3366
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3367
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #8, !dbg !3367
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3116, metadata !564) #8, !dbg !3368
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3369
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3369
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3111, metadata !564) #8, !dbg !3362
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3111, metadata !3127) #8, !dbg !3362
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3362
  %9 = icmp eq i32 %1, 10, !dbg !3370
  br i1 %9, label %10, label %11, !dbg !3371

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3372, !noalias !3373
  unreachable, !dbg !3372

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3111, metadata !3127) #8, !dbg !3362
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3376
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3376
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3377
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3378
  store i32 %1, i32* %13, align 8, !dbg !3378
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3378
  %15 = bitcast i32* %14 to i8*, !dbg !3378
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3378
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3361, metadata !564), !dbg !3379
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1987, metadata !564), !dbg !3380
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1988, metadata !564), !dbg !3382
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1989, metadata !564), !dbg !3383
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1990, metadata !564), !dbg !3384
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3385
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1991, metadata !564), !dbg !3386
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1993, metadata !564), !dbg !3387
  %17 = load i32, i32* %16, align 4, !dbg !3388, !tbaa !630
  %18 = or i32 %17, 67108864, !dbg !3389
  store i32 %18, i32* %16, align 4, !dbg !3389, !tbaa !630
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3361, metadata !564), !dbg !3379
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3390
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #8, !dbg !3391
  ret i8* %19, !dbg !3392
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3393 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3397, metadata !564), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3398, metadata !564), !dbg !3402
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3399, metadata !564), !dbg !3403
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3400, metadata !564), !dbg !3404
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3405, metadata !564) #8, !dbg !3415
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3410, metadata !564) #8, !dbg !3417
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3411, metadata !564) #8, !dbg !3418
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3412, metadata !564) #8, !dbg !3419
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3413, metadata !564) #8, !dbg !3420
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3421
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #8, !dbg !3421
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #8, !dbg !3422, !tbaa.struct !3244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3414, metadata !564) #8, !dbg !3423
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2036, metadata !564) #8, !dbg !3424
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2037, metadata !564) #8, !dbg !3426
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2038, metadata !564) #8, !dbg !3427
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2036, metadata !564) #8, !dbg !3424
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2036, metadata !564) #8, !dbg !3424
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3428
  store i32 10, i32* %7, align 8, !dbg !3429, !tbaa !1968
  %8 = icmp ne i8* %1, null, !dbg !3430
  %9 = icmp ne i8* %2, null, !dbg !3431
  %10 = and i1 %8, %9, !dbg !3432
  br i1 %10, label %12, label %11, !dbg !3432

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3433
  unreachable, !dbg !3433

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3434
  store i8* %1, i8** %13, align 8, !dbg !3435, !tbaa !2054
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3436
  store i8* %2, i8** %14, align 8, !dbg !3437, !tbaa !2057
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3414, metadata !564) #8, !dbg !3423
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #8, !dbg !3438
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #8, !dbg !3439
  ret i8* %15, !dbg !3440
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3406 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3405, metadata !564), !dbg !3441
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3410, metadata !564), !dbg !3442
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3411, metadata !564), !dbg !3443
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3412, metadata !564), !dbg !3444
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3413, metadata !564), !dbg !3445
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3446
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #8, !dbg !3446
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3447, !tbaa.struct !3244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3414, metadata !564), !dbg !3448
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2036, metadata !564) #8, !dbg !3449
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2037, metadata !564) #8, !dbg !3451
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2038, metadata !564) #8, !dbg !3452
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2036, metadata !564) #8, !dbg !3449
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2036, metadata !564) #8, !dbg !3449
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3453
  store i32 10, i32* %8, align 8, !dbg !3454, !tbaa !1968
  %9 = icmp ne i8* %1, null, !dbg !3455
  %10 = icmp ne i8* %2, null, !dbg !3456
  %11 = and i1 %9, %10, !dbg !3457
  br i1 %11, label %13, label %12, !dbg !3457

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3458
  unreachable, !dbg !3458

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3459
  store i8* %1, i8** %14, align 8, !dbg !3460, !tbaa !2054
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3461
  store i8* %2, i8** %15, align 8, !dbg !3462, !tbaa !2057
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3414, metadata !564), !dbg !3448
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3463
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #8, !dbg !3464
  ret i8* %16, !dbg !3465
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3466 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3470, metadata !564), !dbg !3473
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3471, metadata !564), !dbg !3474
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3472, metadata !564), !dbg !3475
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3397, metadata !564) #8, !dbg !3476
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3398, metadata !564) #8, !dbg !3478
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3399, metadata !564) #8, !dbg !3479
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3400, metadata !564) #8, !dbg !3480
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3405, metadata !564) #8, !dbg !3481
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3410, metadata !564) #8, !dbg !3483
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3411, metadata !564) #8, !dbg !3484
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3412, metadata !564) #8, !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3413, metadata !564) #8, !dbg !3486
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3487
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #8, !dbg !3487
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #8, !dbg !3488, !tbaa.struct !3244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3414, metadata !564) #8, !dbg !3489
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2036, metadata !564) #8, !dbg !3490
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2037, metadata !564) #8, !dbg !3492
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2038, metadata !564) #8, !dbg !3493
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2036, metadata !564) #8, !dbg !3490
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2036, metadata !564) #8, !dbg !3490
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3494
  store i32 10, i32* %6, align 8, !dbg !3495, !tbaa !1968
  %7 = icmp ne i8* %0, null, !dbg !3496
  %8 = icmp ne i8* %1, null, !dbg !3497
  %9 = and i1 %7, %8, !dbg !3498
  br i1 %9, label %11, label %10, !dbg !3498

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3499
  unreachable, !dbg !3499

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3500
  store i8* %0, i8** %12, align 8, !dbg !3501, !tbaa !2054
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3502
  store i8* %1, i8** %13, align 8, !dbg !3503, !tbaa !2057
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3414, metadata !564) #8, !dbg !3489
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #8, !dbg !3504
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #8, !dbg !3505
  ret i8* %14, !dbg !3506
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3507 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3511, metadata !564), !dbg !3515
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3512, metadata !564), !dbg !3516
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3513, metadata !564), !dbg !3517
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3514, metadata !564), !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3405, metadata !564) #8, !dbg !3519
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3410, metadata !564) #8, !dbg !3521
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3411, metadata !564) #8, !dbg !3522
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3412, metadata !564) #8, !dbg !3523
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3413, metadata !564) #8, !dbg !3524
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3525
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #8, !dbg !3525
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #8, !dbg !3526, !tbaa.struct !3244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3414, metadata !564) #8, !dbg !3527
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2036, metadata !564) #8, !dbg !3528
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2037, metadata !564) #8, !dbg !3530
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2038, metadata !564) #8, !dbg !3531
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2036, metadata !564) #8, !dbg !3528
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2036, metadata !564) #8, !dbg !3528
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3532
  store i32 10, i32* %7, align 8, !dbg !3533, !tbaa !1968
  %8 = icmp ne i8* %0, null, !dbg !3534
  %9 = icmp ne i8* %1, null, !dbg !3535
  %10 = and i1 %8, %9, !dbg !3536
  br i1 %10, label %12, label %11, !dbg !3536

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3537
  unreachable, !dbg !3537

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3538
  store i8* %0, i8** %13, align 8, !dbg !3539, !tbaa !2054
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3540
  store i8* %1, i8** %14, align 8, !dbg !3541, !tbaa !2057
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3414, metadata !564) #8, !dbg !3527
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #8, !dbg !3542
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #8, !dbg !3543
  ret i8* %15, !dbg !3544
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3545 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3549, metadata !564), !dbg !3552
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3550, metadata !564), !dbg !3553
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3551, metadata !564), !dbg !3554
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3555
  ret i8* %4, !dbg !3556
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3557 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3561, metadata !564), !dbg !3563
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3562, metadata !564), !dbg !3564
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3549, metadata !564) #8, !dbg !3565
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3550, metadata !564) #8, !dbg !3567
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3551, metadata !564) #8, !dbg !3568
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #8, !dbg !3569
  ret i8* %3, !dbg !3570
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3571 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3575, metadata !564), !dbg !3577
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3576, metadata !564), !dbg !3578
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3549, metadata !564) #8, !dbg !3579
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3550, metadata !564) #8, !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3551, metadata !564) #8, !dbg !3582
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #8, !dbg !3583
  ret i8* %3, !dbg !3584
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3585 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3587, metadata !564), !dbg !3588
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3575, metadata !564) #8, !dbg !3589
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3576, metadata !564) #8, !dbg !3591
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3549, metadata !564) #8, !dbg !3592
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3550, metadata !564) #8, !dbg !3594
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3551, metadata !564) #8, !dbg !3595
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #8, !dbg !3596
  ret i8* %2, !dbg !3597
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @strintcmp(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #9 !dbg !3598 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3603, metadata !564), !dbg !3605
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3604, metadata !564), !dbg !3606
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3607, metadata !564), !dbg !3621
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3615, metadata !564), !dbg !3623
  %3 = load i8, i8* %0, align 1, !dbg !3624, !tbaa !668
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !3616, metadata !564), !dbg !3625
  %4 = load i8, i8* %1, align 1, !dbg !3626, !tbaa !668
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !3617, metadata !564), !dbg !3627
  %5 = icmp eq i8 %3, 45, !dbg !3628
  br i1 %5, label %6, label %101, !dbg !3630, !llvm.loop !3631

; <label>:6:                                      ; preds = %2
  br label %7, !dbg !3635

; <label>:7:                                      ; preds = %6, %7
  %8 = phi i8* [ %9, %7 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3613, metadata !564), !dbg !3636
  %9 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !3635
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3613, metadata !564), !dbg !3636
  %10 = load i8, i8* %9, align 1, !dbg !3637, !tbaa !668
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !3616, metadata !564), !dbg !3625
  %11 = icmp eq i8 %10, 48, !dbg !3638
  br i1 %11, label %7, label %12, !dbg !3639

; <label>:12:                                     ; preds = %7
  %13 = icmp eq i8 %4, 45, !dbg !3640
  br i1 %13, label %14, label %15, !dbg !3642, !llvm.loop !3643

; <label>:14:                                     ; preds = %12
  br label %33, !dbg !3646

; <label>:15:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !3616, metadata !564), !dbg !3625
  %16 = zext i8 %10 to i32, !dbg !3647
  %17 = add nsw i32 %16, -48, !dbg !3647
  %18 = icmp ult i32 %17, 10, !dbg !3647
  br i1 %18, label %210, label %19, !dbg !3650

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !3617, metadata !564), !dbg !3627
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3614, metadata !564), !dbg !3651
  %20 = icmp eq i8 %4, 48, !dbg !3652
  br i1 %20, label %21, label %27, !dbg !3653

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !3654

; <label>:22:                                     ; preds = %21, %22
  %23 = phi i8* [ %24, %22 ], [ %1, %21 ]
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3614, metadata !564), !dbg !3651
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !3654
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3614, metadata !564), !dbg !3651
  %25 = load i8, i8* %24, align 1, !dbg !3655, !tbaa !668
  tail call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !3617, metadata !564), !dbg !3627
  tail call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !3617, metadata !564), !dbg !3627
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3614, metadata !564), !dbg !3651
  %26 = icmp eq i8 %25, 48, !dbg !3652
  br i1 %26, label %22, label %27, !dbg !3653, !llvm.loop !3656

; <label>:27:                                     ; preds = %22, %19
  %28 = phi i8 [ %4, %19 ], [ %25, %22 ]
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !3617, metadata !564), !dbg !3627
  %29 = zext i8 %28 to i32, !dbg !3659
  %30 = add nsw i32 %29, -48, !dbg !3659
  %31 = icmp ult i32 %30, 10, !dbg !3659
  %32 = sext i1 %31 to i32, !dbg !3660
  br label %210, !dbg !3661

; <label>:33:                                     ; preds = %14, %33
  %34 = phi i8* [ %35, %33 ], [ %1, %14 ]
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !3614, metadata !564), !dbg !3651
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !3646
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !3614, metadata !564), !dbg !3651
  %36 = load i8, i8* %35, align 1, !dbg !3662, !tbaa !668
  tail call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3617, metadata !564), !dbg !3627
  %37 = icmp eq i8 %36, 48, !dbg !3663
  br i1 %37, label %33, label %38, !dbg !3664

; <label>:38:                                     ; preds = %33
  tail call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3617, metadata !564), !dbg !3627
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !3616, metadata !564), !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3613, metadata !564), !dbg !3636
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !3614, metadata !564), !dbg !3651
  %39 = zext i8 %10 to i32, !dbg !3665
  %40 = icmp eq i8 %36, %10, !dbg !3666
  %41 = add nsw i32 %39, -48, !dbg !3667
  %42 = icmp ult i32 %41, 10, !dbg !3667
  %43 = and i1 %42, %40, !dbg !3668
  br i1 %43, label %44, label %57, !dbg !3668

; <label>:44:                                     ; preds = %38
  br label %45, !dbg !3669

; <label>:45:                                     ; preds = %44, %45
  %46 = phi i8* [ %48, %45 ], [ %9, %44 ]
  %47 = phi i8* [ %50, %45 ], [ %35, %44 ]
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3613, metadata !564), !dbg !3636
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3614, metadata !564), !dbg !3651
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3613, metadata !564), !dbg !3636
  %48 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !3669
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !3613, metadata !564), !dbg !3636
  %49 = load i8, i8* %48, align 1, !dbg !3671, !tbaa !668
  tail call void @llvm.dbg.value(metadata i8 %49, i64 0, metadata !3616, metadata !564), !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3614, metadata !564), !dbg !3651
  %50 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !3672
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !3614, metadata !564), !dbg !3651
  %51 = load i8, i8* %50, align 1, !dbg !3673, !tbaa !668
  tail call void @llvm.dbg.value(metadata i8 %51, i64 0, metadata !3617, metadata !564), !dbg !3627
  tail call void @llvm.dbg.value(metadata i8 %49, i64 0, metadata !3616, metadata !564), !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !3613, metadata !564), !dbg !3636
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !3614, metadata !564), !dbg !3651
  %52 = zext i8 %49 to i32, !dbg !3665
  %53 = icmp eq i8 %51, %49, !dbg !3666
  %54 = add nsw i32 %52, -48, !dbg !3667
  %55 = icmp ult i32 %54, 10, !dbg !3667
  %56 = and i1 %53, %55, !dbg !3668
  br i1 %56, label %45, label %57, !dbg !3668, !llvm.loop !3674

; <label>:57:                                     ; preds = %45, %38
  %58 = phi i8* [ %35, %38 ], [ %50, %45 ]
  %59 = phi i8* [ %9, %38 ], [ %48, %45 ]
  %60 = phi i8 [ %10, %38 ], [ %49, %45 ]
  %61 = phi i8 [ %36, %38 ], [ %51, %45 ]
  %62 = phi i32 [ %39, %38 ], [ %52, %45 ]
  %63 = zext i8 %61 to i32, !dbg !3677
  %64 = sub nsw i32 %63, %62, !dbg !3678
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3618, metadata !564), !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3619, metadata !564), !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3619, metadata !564), !dbg !3680
  tail call void @llvm.dbg.value(metadata i8 %60, i64 0, metadata !3616, metadata !564), !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !3613, metadata !564), !dbg !3636
  %65 = zext i8 %60 to i32, !dbg !3681
  %66 = add nsw i32 %65, -48, !dbg !3681
  %67 = icmp ult i32 %66, 10, !dbg !3681
  br i1 %67, label %68, label %78, !dbg !3684

; <label>:68:                                     ; preds = %57
  br label %69, !dbg !3685

; <label>:69:                                     ; preds = %68, %69
  %70 = phi i64 [ %74, %69 ], [ 0, %68 ]
  %71 = phi i8* [ %72, %69 ], [ %59, %68 ]
  tail call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !3613, metadata !564), !dbg !3636
  tail call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !3613, metadata !564), !dbg !3636
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !3619, metadata !564), !dbg !3680
  %72 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !3685
  tail call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !3613, metadata !564), !dbg !3636
  %73 = load i8, i8* %72, align 1, !dbg !3686, !tbaa !668
  %74 = add i64 %70, 1, !dbg !3687
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !3619, metadata !564), !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !3619, metadata !564), !dbg !3680
  tail call void @llvm.dbg.value(metadata i8 %73, i64 0, metadata !3616, metadata !564), !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !3613, metadata !564), !dbg !3636
  %75 = zext i8 %73 to i32, !dbg !3681
  %76 = add nsw i32 %75, -48, !dbg !3681
  %77 = icmp ult i32 %76, 10, !dbg !3681
  br i1 %77, label %69, label %78, !dbg !3684, !llvm.loop !3688

; <label>:78:                                     ; preds = %69, %57
  %79 = phi i64 [ 0, %57 ], [ %74, %69 ]
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3620, metadata !564), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3620, metadata !564), !dbg !3691
  tail call void @llvm.dbg.value(metadata i8 %61, i64 0, metadata !3617, metadata !564), !dbg !3627
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3614, metadata !564), !dbg !3651
  %80 = add nsw i32 %63, -48, !dbg !3692
  %81 = icmp ult i32 %80, 10, !dbg !3692
  br i1 %81, label %82, label %92, !dbg !3695

; <label>:82:                                     ; preds = %78
  br label %83, !dbg !3696

; <label>:83:                                     ; preds = %82, %83
  %84 = phi i64 [ %88, %83 ], [ 0, %82 ]
  %85 = phi i8* [ %86, %83 ], [ %58, %82 ]
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !3614, metadata !564), !dbg !3651
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !3614, metadata !564), !dbg !3651
  tail call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3620, metadata !564), !dbg !3691
  %86 = getelementptr inbounds i8, i8* %85, i64 1, !dbg !3696
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !3614, metadata !564), !dbg !3651
  %87 = load i8, i8* %86, align 1, !dbg !3697, !tbaa !668
  %88 = add i64 %84, 1, !dbg !3698
  tail call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3620, metadata !564), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3620, metadata !564), !dbg !3691
  tail call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !3617, metadata !564), !dbg !3627
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !3614, metadata !564), !dbg !3651
  %89 = zext i8 %87 to i32, !dbg !3692
  %90 = add nsw i32 %89, -48, !dbg !3692
  %91 = icmp ult i32 %90, 10, !dbg !3692
  br i1 %91, label %83, label %92, !dbg !3695, !llvm.loop !3699

; <label>:92:                                     ; preds = %83, %78
  %93 = phi i64 [ 0, %78 ], [ %88, %83 ]
  %94 = icmp eq i64 %79, %93, !dbg !3702
  br i1 %94, label %98, label %95, !dbg !3704

; <label>:95:                                     ; preds = %92
  %96 = icmp ult i64 %79, %93, !dbg !3705
  %97 = select i1 %96, i32 1, i32 -1, !dbg !3706
  br label %210, !dbg !3707

; <label>:98:                                     ; preds = %92
  %99 = icmp eq i64 %79, 0, !dbg !3708
  %100 = select i1 %99, i32 0, i32 %64, !dbg !3710
  br label %210, !dbg !3710

; <label>:101:                                    ; preds = %2
  %102 = icmp eq i8 %4, 45, !dbg !3711
  br i1 %102, label %103, label %127, !dbg !3713, !llvm.loop !3714

; <label>:103:                                    ; preds = %101
  br label %104, !dbg !3718

; <label>:104:                                    ; preds = %103, %104
  %105 = phi i8* [ %106, %104 ], [ %1, %103 ]
  tail call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3614, metadata !564), !dbg !3651
  %106 = getelementptr inbounds i8, i8* %105, i64 1, !dbg !3718
  tail call void @llvm.dbg.value(metadata i8* %106, i64 0, metadata !3614, metadata !564), !dbg !3651
  %107 = load i8, i8* %106, align 1, !dbg !3719, !tbaa !668
  tail call void @llvm.dbg.value(metadata i8 %107, i64 0, metadata !3617, metadata !564), !dbg !3627
  %108 = icmp eq i8 %107, 48, !dbg !3720
  br i1 %108, label %104, label %109, !dbg !3721

; <label>:109:                                    ; preds = %104
  tail call void @llvm.dbg.value(metadata i8 %107, i64 0, metadata !3617, metadata !564), !dbg !3627
  %110 = zext i8 %107 to i32, !dbg !3722
  %111 = add nsw i32 %110, -48, !dbg !3722
  %112 = icmp ult i32 %111, 10, !dbg !3722
  br i1 %112, label %210, label %113, !dbg !3724

; <label>:113:                                    ; preds = %109
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !3616, metadata !564), !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3613, metadata !564), !dbg !3636
  %114 = icmp eq i8 %3, 48, !dbg !3725
  br i1 %114, label %115, label %121, !dbg !3726

; <label>:115:                                    ; preds = %113
  br label %116, !dbg !3727

; <label>:116:                                    ; preds = %115, %116
  %117 = phi i8* [ %118, %116 ], [ %0, %115 ]
  tail call void @llvm.dbg.value(metadata i8* %117, i64 0, metadata !3613, metadata !564), !dbg !3636
  %118 = getelementptr inbounds i8, i8* %117, i64 1, !dbg !3727
  tail call void @llvm.dbg.value(metadata i8* %118, i64 0, metadata !3613, metadata !564), !dbg !3636
  %119 = load i8, i8* %118, align 1, !dbg !3728, !tbaa !668
  tail call void @llvm.dbg.value(metadata i8 %119, i64 0, metadata !3616, metadata !564), !dbg !3625
  tail call void @llvm.dbg.value(metadata i8 %119, i64 0, metadata !3616, metadata !564), !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %118, i64 0, metadata !3613, metadata !564), !dbg !3636
  %120 = icmp eq i8 %119, 48, !dbg !3725
  br i1 %120, label %116, label %121, !dbg !3726, !llvm.loop !3729

; <label>:121:                                    ; preds = %116, %113
  %122 = phi i8 [ %3, %113 ], [ %119, %116 ]
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !3616, metadata !564), !dbg !3625
  %123 = zext i8 %122 to i32, !dbg !3732
  %124 = add nsw i32 %123, -48, !dbg !3732
  %125 = icmp ult i32 %124, 10, !dbg !3732
  %126 = zext i1 %125 to i32, !dbg !3732
  br label %210, !dbg !3733

; <label>:127:                                    ; preds = %101
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !3616, metadata !564), !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3613, metadata !564), !dbg !3636
  %128 = icmp eq i8 %3, 48, !dbg !3734
  br i1 %128, label %129, label %135, !dbg !3736

; <label>:129:                                    ; preds = %127
  br label %130, !dbg !3737

; <label>:130:                                    ; preds = %129, %130
  %131 = phi i8* [ %132, %130 ], [ %0, %129 ]
  tail call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !3613, metadata !564), !dbg !3636
  %132 = getelementptr inbounds i8, i8* %131, i64 1, !dbg !3737
  tail call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !3613, metadata !564), !dbg !3636
  %133 = load i8, i8* %132, align 1, !dbg !3738, !tbaa !668
  tail call void @llvm.dbg.value(metadata i8 %133, i64 0, metadata !3616, metadata !564), !dbg !3625
  tail call void @llvm.dbg.value(metadata i8 %133, i64 0, metadata !3616, metadata !564), !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !3613, metadata !564), !dbg !3636
  %134 = icmp eq i8 %133, 48, !dbg !3734
  br i1 %134, label %130, label %135, !dbg !3736, !llvm.loop !3739

; <label>:135:                                    ; preds = %130, %127
  %136 = phi i8* [ %0, %127 ], [ %132, %130 ]
  %137 = phi i8 [ %3, %127 ], [ %133, %130 ]
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !3617, metadata !564), !dbg !3627
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3614, metadata !564), !dbg !3651
  %138 = icmp eq i8 %4, 48, !dbg !3742
  br i1 %138, label %139, label %145, !dbg !3743

; <label>:139:                                    ; preds = %135
  br label %140, !dbg !3744

; <label>:140:                                    ; preds = %139, %140
  %141 = phi i8* [ %142, %140 ], [ %1, %139 ]
  tail call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !3614, metadata !564), !dbg !3651
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3744
  tail call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3614, metadata !564), !dbg !3651
  %143 = load i8, i8* %142, align 1, !dbg !3745, !tbaa !668
  tail call void @llvm.dbg.value(metadata i8 %143, i64 0, metadata !3617, metadata !564), !dbg !3627
  tail call void @llvm.dbg.value(metadata i8 %143, i64 0, metadata !3617, metadata !564), !dbg !3627
  tail call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3614, metadata !564), !dbg !3651
  %144 = icmp eq i8 %143, 48, !dbg !3742
  br i1 %144, label %140, label %145, !dbg !3743, !llvm.loop !3746

; <label>:145:                                    ; preds = %140, %135
  %146 = phi i8* [ %1, %135 ], [ %142, %140 ]
  %147 = phi i8 [ %4, %135 ], [ %143, %140 ]
  tail call void @llvm.dbg.value(metadata i8 %147, i64 0, metadata !3617, metadata !564), !dbg !3627
  tail call void @llvm.dbg.value(metadata i8 %137, i64 0, metadata !3616, metadata !564), !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %136, i64 0, metadata !3613, metadata !564), !dbg !3636
  tail call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3614, metadata !564), !dbg !3651
  %148 = zext i8 %137 to i32, !dbg !3749
  %149 = icmp eq i8 %137, %147, !dbg !3750
  %150 = add nsw i32 %148, -48, !dbg !3751
  %151 = icmp ult i32 %150, 10, !dbg !3751
  %152 = and i1 %151, %149, !dbg !3752
  br i1 %152, label %153, label %166, !dbg !3752

; <label>:153:                                    ; preds = %145
  br label %154, !dbg !3753

; <label>:154:                                    ; preds = %153, %154
  %155 = phi i8* [ %157, %154 ], [ %136, %153 ]
  %156 = phi i8* [ %159, %154 ], [ %146, %153 ]
  tail call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !3613, metadata !564), !dbg !3636
  tail call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3614, metadata !564), !dbg !3651
  tail call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !3613, metadata !564), !dbg !3636
  %157 = getelementptr inbounds i8, i8* %155, i64 1, !dbg !3753
  tail call void @llvm.dbg.value(metadata i8* %157, i64 0, metadata !3613, metadata !564), !dbg !3636
  %158 = load i8, i8* %157, align 1, !dbg !3755, !tbaa !668
  tail call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !3616, metadata !564), !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3614, metadata !564), !dbg !3651
  %159 = getelementptr inbounds i8, i8* %156, i64 1, !dbg !3756
  tail call void @llvm.dbg.value(metadata i8* %159, i64 0, metadata !3614, metadata !564), !dbg !3651
  %160 = load i8, i8* %159, align 1, !dbg !3757, !tbaa !668
  tail call void @llvm.dbg.value(metadata i8 %160, i64 0, metadata !3617, metadata !564), !dbg !3627
  tail call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !3616, metadata !564), !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %157, i64 0, metadata !3613, metadata !564), !dbg !3636
  tail call void @llvm.dbg.value(metadata i8* %159, i64 0, metadata !3614, metadata !564), !dbg !3651
  %161 = zext i8 %158 to i32, !dbg !3749
  %162 = icmp eq i8 %158, %160, !dbg !3750
  %163 = add nsw i32 %161, -48, !dbg !3751
  %164 = icmp ult i32 %163, 10, !dbg !3751
  %165 = and i1 %162, %164, !dbg !3752
  br i1 %165, label %154, label %166, !dbg !3752, !llvm.loop !3758

; <label>:166:                                    ; preds = %154, %145
  %167 = phi i8* [ %146, %145 ], [ %159, %154 ]
  %168 = phi i8* [ %136, %145 ], [ %157, %154 ]
  %169 = phi i8 [ %137, %145 ], [ %158, %154 ]
  %170 = phi i8 [ %147, %145 ], [ %160, %154 ]
  %171 = phi i32 [ %148, %145 ], [ %161, %154 ]
  %172 = zext i8 %170 to i32, !dbg !3761
  %173 = sub nsw i32 %171, %172, !dbg !3762
  tail call void @llvm.dbg.value(metadata i32 %173, i64 0, metadata !3618, metadata !564), !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3619, metadata !564), !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3619, metadata !564), !dbg !3680
  tail call void @llvm.dbg.value(metadata i8 %169, i64 0, metadata !3616, metadata !564), !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %168, i64 0, metadata !3613, metadata !564), !dbg !3636
  %174 = zext i8 %169 to i32, !dbg !3763
  %175 = add nsw i32 %174, -48, !dbg !3763
  %176 = icmp ult i32 %175, 10, !dbg !3763
  br i1 %176, label %177, label %187, !dbg !3766

; <label>:177:                                    ; preds = %166
  br label %178, !dbg !3767

; <label>:178:                                    ; preds = %177, %178
  %179 = phi i64 [ %183, %178 ], [ 0, %177 ]
  %180 = phi i8* [ %181, %178 ], [ %168, %177 ]
  tail call void @llvm.dbg.value(metadata i8* %180, i64 0, metadata !3613, metadata !564), !dbg !3636
  tail call void @llvm.dbg.value(metadata i8* %180, i64 0, metadata !3613, metadata !564), !dbg !3636
  tail call void @llvm.dbg.value(metadata i64 %179, i64 0, metadata !3619, metadata !564), !dbg !3680
  %181 = getelementptr inbounds i8, i8* %180, i64 1, !dbg !3767
  tail call void @llvm.dbg.value(metadata i8* %181, i64 0, metadata !3613, metadata !564), !dbg !3636
  %182 = load i8, i8* %181, align 1, !dbg !3768, !tbaa !668
  %183 = add i64 %179, 1, !dbg !3769
  tail call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !3619, metadata !564), !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !3619, metadata !564), !dbg !3680
  tail call void @llvm.dbg.value(metadata i8 %182, i64 0, metadata !3616, metadata !564), !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %181, i64 0, metadata !3613, metadata !564), !dbg !3636
  %184 = zext i8 %182 to i32, !dbg !3763
  %185 = add nsw i32 %184, -48, !dbg !3763
  %186 = icmp ult i32 %185, 10, !dbg !3763
  br i1 %186, label %178, label %187, !dbg !3766, !llvm.loop !3770

; <label>:187:                                    ; preds = %178, %166
  %188 = phi i64 [ 0, %166 ], [ %183, %178 ]
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3620, metadata !564), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3620, metadata !564), !dbg !3691
  tail call void @llvm.dbg.value(metadata i8 %170, i64 0, metadata !3617, metadata !564), !dbg !3627
  tail call void @llvm.dbg.value(metadata i8* %167, i64 0, metadata !3614, metadata !564), !dbg !3651
  %189 = add nsw i32 %172, -48, !dbg !3773
  %190 = icmp ult i32 %189, 10, !dbg !3773
  br i1 %190, label %191, label %201, !dbg !3776

; <label>:191:                                    ; preds = %187
  br label %192, !dbg !3777

; <label>:192:                                    ; preds = %191, %192
  %193 = phi i64 [ %197, %192 ], [ 0, %191 ]
  %194 = phi i8* [ %195, %192 ], [ %167, %191 ]
  tail call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !3614, metadata !564), !dbg !3651
  tail call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !3614, metadata !564), !dbg !3651
  tail call void @llvm.dbg.value(metadata i64 %193, i64 0, metadata !3620, metadata !564), !dbg !3691
  %195 = getelementptr inbounds i8, i8* %194, i64 1, !dbg !3777
  tail call void @llvm.dbg.value(metadata i8* %195, i64 0, metadata !3614, metadata !564), !dbg !3651
  %196 = load i8, i8* %195, align 1, !dbg !3778, !tbaa !668
  %197 = add i64 %193, 1, !dbg !3779
  tail call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !3620, metadata !564), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !3620, metadata !564), !dbg !3691
  tail call void @llvm.dbg.value(metadata i8 %196, i64 0, metadata !3617, metadata !564), !dbg !3627
  tail call void @llvm.dbg.value(metadata i8* %195, i64 0, metadata !3614, metadata !564), !dbg !3651
  %198 = zext i8 %196 to i32, !dbg !3773
  %199 = add nsw i32 %198, -48, !dbg !3773
  %200 = icmp ult i32 %199, 10, !dbg !3773
  br i1 %200, label %192, label %201, !dbg !3776, !llvm.loop !3780

; <label>:201:                                    ; preds = %192, %187
  %202 = phi i64 [ 0, %187 ], [ %197, %192 ]
  %203 = icmp eq i64 %188, %202, !dbg !3783
  br i1 %203, label %207, label %204, !dbg !3785

; <label>:204:                                    ; preds = %201
  %205 = icmp ult i64 %188, %202, !dbg !3786
  %206 = select i1 %205, i32 -1, i32 1, !dbg !3787
  br label %210, !dbg !3788

; <label>:207:                                    ; preds = %201
  %208 = icmp eq i64 %188, 0, !dbg !3789
  %209 = select i1 %208, i32 0, i32 %173, !dbg !3791
  br label %210, !dbg !3791

; <label>:210:                                    ; preds = %15, %27, %95, %98, %109, %121, %204, %207
  %211 = phi i32 [ %32, %27 ], [ %97, %95 ], [ %126, %121 ], [ %206, %204 ], [ -1, %15 ], [ %100, %98 ], [ 1, %109 ], [ %209, %207 ]
  ret i32 %211, !dbg !3792
}

; Function Attrs: nounwind sspstrong uwtable
define void @verror(i32, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #6 !dbg !3793 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3805, metadata !564), !dbg !3809
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3806, metadata !564), !dbg !3810
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3807, metadata !564), !dbg !3811
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %3, i64 0, metadata !3808, metadata !564), !dbg !3812
  tail call void @verror_at_line(i32 %0, i32 %1, i8* null, i32 0, i8* %2, %struct.__va_list_tag* %3), !dbg !3813
  ret void, !dbg !3814
}

; Function Attrs: nounwind sspstrong uwtable
define void @verror_at_line(i32, i32, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #6 !dbg !3815 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3819, metadata !564), !dbg !3826
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3820, metadata !564), !dbg !3827
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3821, metadata !564), !dbg !3828
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !3822, metadata !564), !dbg !3829
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3823, metadata !564), !dbg !3830
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, i64 0, metadata !3824, metadata !564), !dbg !3831
  %7 = tail call i8* @xvasprintf(i8* %4, %struct.__va_list_tag* %5) #8, !dbg !3832
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !3825, metadata !564), !dbg !3833
  %8 = icmp eq i8* %7, null, !dbg !3834
  br i1 %8, label %13, label %9, !dbg !3836

; <label>:9:                                      ; preds = %6
  %10 = icmp eq i8* %2, null, !dbg !3837
  br i1 %10, label %12, label %11, !dbg !3840

; <label>:11:                                     ; preds = %9
  tail call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 %0, i32 %1, i8* nonnull %2, i32 %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0), i8* nonnull %7) #8, !dbg !3841
  br label %17, !dbg !3841

; <label>:12:                                     ; preds = %9
  tail call void (i32, i32, i8*, ...) @error(i32 %0, i32 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0), i8* nonnull %7) #8, !dbg !3842
  br label %17

; <label>:13:                                     ; preds = %6
  %14 = tail call i32* @__errno_location() #17, !dbg !3843
  %15 = load i32, i32* %14, align 4, !dbg !3843, !tbaa !630
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.99, i64 0, i64 0), i32 5) #8, !dbg !3845
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* %16) #8, !dbg !3846
  tail call void @abort() #15, !dbg !3847
  unreachable, !dbg !3847

; <label>:17:                                     ; preds = %11, %12
  tail call void @free(i8* nonnull %7) #8, !dbg !3848
  ret void, !dbg !3849
}

declare void @error_at_line(i32, i32, i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3850 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3854, metadata !564), !dbg !3856
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3855, metadata !564), !dbg !3857
  %3 = udiv i64 9223372036854775807, %1, !dbg !3858
  %4 = icmp ult i64 %3, %0, !dbg !3858
  br i1 %4, label %5, label %6, !dbg !3860

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3861
  unreachable, !dbg !3861

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3862
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3863, metadata !564) #8, !dbg !3870
  %8 = tail call noalias i8* @malloc(i64 %7) #8, !dbg !3872
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3869, metadata !564) #8, !dbg !3873
  %9 = icmp eq i8* %8, null, !dbg !3874
  %10 = icmp ne i64 %7, 0, !dbg !3876
  %11 = and i1 %10, %9, !dbg !3877
  br i1 %11, label %12, label %13, !dbg !3877

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3878
  unreachable, !dbg !3878

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3879
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3864 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3863, metadata !564), !dbg !3880
  %2 = tail call noalias i8* @malloc(i64 %0) #8, !dbg !3881
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3869, metadata !564), !dbg !3882
  %3 = icmp eq i8* %2, null, !dbg !3883
  %4 = icmp ne i64 %0, 0, !dbg !3884
  %5 = and i1 %4, %3, !dbg !3885
  br i1 %5, label %6, label %7, !dbg !3885

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3886
  unreachable, !dbg !3886

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3887
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3888 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3892, metadata !564), !dbg !3895
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3893, metadata !564), !dbg !3896
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3894, metadata !564), !dbg !3897
  %4 = udiv i64 9223372036854775807, %2, !dbg !3898
  %5 = icmp ult i64 %4, %1, !dbg !3898
  br i1 %5, label %6, label %7, !dbg !3900

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3901
  unreachable, !dbg !3901

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3902
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3903, metadata !564) #8, !dbg !3909
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3908, metadata !564) #8, !dbg !3911
  %9 = icmp eq i64 %8, 0, !dbg !3912
  %10 = icmp ne i8* %0, null, !dbg !3914
  %11 = and i1 %10, %9, !dbg !3915
  br i1 %11, label %12, label %13, !dbg !3915

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #8, !dbg !3916
  br label %19, !dbg !3918

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #8, !dbg !3919
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3903, metadata !564) #8, !dbg !3909
  %15 = icmp eq i8* %14, null, !dbg !3920
  %16 = icmp ne i64 %8, 0, !dbg !3922
  %17 = and i1 %16, %15, !dbg !3923
  br i1 %17, label %18, label %19, !dbg !3923

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3924
  unreachable, !dbg !3924

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3925
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3904 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3903, metadata !564), !dbg !3926
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3908, metadata !564), !dbg !3927
  %3 = icmp eq i64 %1, 0, !dbg !3928
  %4 = icmp ne i8* %0, null, !dbg !3929
  %5 = and i1 %4, %3, !dbg !3930
  br i1 %5, label %6, label %7, !dbg !3930

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #8, !dbg !3931
  br label %13, !dbg !3932

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #8, !dbg !3933
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3903, metadata !564), !dbg !3926
  %9 = icmp eq i8* %8, null, !dbg !3934
  %10 = icmp ne i64 %1, 0, !dbg !3935
  %11 = and i1 %10, %9, !dbg !3936
  br i1 %11, label %12, label %13, !dbg !3936

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3937
  unreachable, !dbg !3937

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3938
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !520 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !525, metadata !564), !dbg !3939
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !526, metadata !564), !dbg !3940
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !527, metadata !564), !dbg !3941
  %4 = load i64, i64* %1, align 8, !dbg !3942, !tbaa !2922
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !528, metadata !564), !dbg !3943
  %5 = icmp eq i8* %0, null, !dbg !3944
  br i1 %5, label %6, label %13, !dbg !3946

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3947
  br i1 %7, label %8, label %17, !dbg !3950

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3951
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !528, metadata !564), !dbg !3943
  %10 = icmp ugt i64 %2, 128, !dbg !3953
  %11 = zext i1 %10 to i64, !dbg !3953
  %12 = add nuw nsw i64 %9, %11, !dbg !3954
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !528, metadata !564), !dbg !3943
  br label %17, !dbg !3955

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3956
  %15 = icmp ugt i64 %14, %4, !dbg !3959
  br i1 %15, label %20, label %16, !dbg !3960

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3961
  unreachable, !dbg !3961

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !528, metadata !564), !dbg !3943
  store i64 %18, i64* %1, align 8, !dbg !3962, !tbaa !2922
  %19 = mul i64 %18, %2, !dbg !3963
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3903, metadata !564) #8, !dbg !3964
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3908, metadata !564) #8, !dbg !3966
  br label %27, !dbg !3967

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3968
  %22 = add i64 %4, 1, !dbg !3969
  %23 = add i64 %22, %21, !dbg !3970
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !528, metadata !564), !dbg !3943
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !528, metadata !564), !dbg !3943
  store i64 %23, i64* %1, align 8, !dbg !3962, !tbaa !2922
  %24 = mul i64 %23, %2, !dbg !3963
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3903, metadata !564) #8, !dbg !3964
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3908, metadata !564) #8, !dbg !3966
  %25 = icmp eq i64 %24, 0, !dbg !3971
  br i1 %25, label %26, label %27, !dbg !3967

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #8, !dbg !3972
  br label %34, !dbg !3973

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #8, !dbg !3974
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3903, metadata !564) #8, !dbg !3964
  %30 = icmp eq i8* %29, null, !dbg !3975
  %31 = icmp ne i64 %28, 0, !dbg !3976
  %32 = and i1 %31, %30, !dbg !3977
  br i1 %32, label %33, label %34, !dbg !3977

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3978
  unreachable, !dbg !3978

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3979
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3980 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3982, metadata !564), !dbg !3983
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3863, metadata !564) #8, !dbg !3984
  %2 = tail call noalias i8* @malloc(i64 %0) #8, !dbg !3986
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3869, metadata !564) #8, !dbg !3987
  %3 = icmp eq i8* %2, null, !dbg !3988
  %4 = icmp ne i64 %0, 0, !dbg !3989
  %5 = and i1 %4, %3, !dbg !3990
  br i1 %5, label %6, label %7, !dbg !3990

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3991
  unreachable, !dbg !3991

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3992
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3993 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3997, metadata !564), !dbg !3999
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3998, metadata !564), !dbg !4000
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !525, metadata !564) #8, !dbg !4001
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !526, metadata !564) #8, !dbg !4003
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !527, metadata !564) #8, !dbg !4004
  %3 = load i64, i64* %1, align 8, !dbg !4005, !tbaa !2922
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !528, metadata !564) #8, !dbg !4006
  %4 = icmp eq i8* %0, null, !dbg !4007
  br i1 %4, label %5, label %8, !dbg !4008

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4009
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !528, metadata !564) #8, !dbg !4006
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !528, metadata !564) #8, !dbg !4006
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4010
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !528, metadata !564) #8, !dbg !4006
  store i64 %7, i64* %1, align 8, !dbg !4011, !tbaa !2922
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3903, metadata !564) #8, !dbg !4012
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3908, metadata !564) #8, !dbg !4014
  br label %17, !dbg !4015

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4016
  br i1 %9, label %11, label %10, !dbg !4017

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !4018
  unreachable, !dbg !4018

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4019
  %13 = add i64 %3, 1, !dbg !4020
  %14 = add i64 %13, %12, !dbg !4021
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !528, metadata !564) #8, !dbg !4006
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !528, metadata !564) #8, !dbg !4006
  store i64 %14, i64* %1, align 8, !dbg !4011, !tbaa !2922
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3903, metadata !564) #8, !dbg !4012
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3908, metadata !564) #8, !dbg !4014
  %15 = icmp eq i64 %14, 0, !dbg !4022
  br i1 %15, label %16, label %17, !dbg !4015

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #8, !dbg !4023
  br label %24, !dbg !4024

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #8, !dbg !4025
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3903, metadata !564) #8, !dbg !4012
  %20 = icmp eq i8* %19, null, !dbg !4026
  %21 = icmp ne i64 %18, 0, !dbg !4027
  %22 = and i1 %21, %20, !dbg !4028
  br i1 %22, label %23, label %24, !dbg !4028

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !4029
  unreachable, !dbg !4029

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4030
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4031 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4033, metadata !564), !dbg !4034
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3863, metadata !564) #8, !dbg !4035
  %2 = tail call noalias i8* @malloc(i64 %0) #8, !dbg !4037
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3869, metadata !564) #8, !dbg !4038
  %3 = icmp eq i8* %2, null, !dbg !4039
  %4 = icmp ne i64 %0, 0, !dbg !4040
  %5 = and i1 %4, %3, !dbg !4041
  br i1 %5, label %6, label %7, !dbg !4041

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4042
  unreachable, !dbg !4042

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4043
  ret i8* %2, !dbg !4044
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4045 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4047, metadata !564), !dbg !4050
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4048, metadata !564), !dbg !4051
  %3 = udiv i64 9223372036854775807, %1, !dbg !4052
  %4 = icmp ult i64 %3, %0, !dbg !4052
  br i1 %4, label %8, label %5, !dbg !4054

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #8, !dbg !4055
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4049, metadata !564), !dbg !4056
  %7 = icmp eq i8* %6, null, !dbg !4057
  br i1 %7, label %8, label %9, !dbg !4058

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4059
  unreachable, !dbg !4059

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4060
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4061 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4067, metadata !564), !dbg !4069
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4068, metadata !564), !dbg !4070
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3863, metadata !564) #8, !dbg !4071
  %3 = tail call noalias i8* @malloc(i64 %1) #8, !dbg !4073
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3869, metadata !564) #8, !dbg !4074
  %4 = icmp eq i8* %3, null, !dbg !4075
  %5 = icmp ne i64 %1, 0, !dbg !4076
  %6 = and i1 %5, %4, !dbg !4077
  br i1 %6, label %7, label %8, !dbg !4077

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4078
  unreachable, !dbg !4078

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4079
  ret i8* %3, !dbg !4080
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4081 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4083, metadata !564), !dbg !4084
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4085
  %3 = add i64 %2, 1, !dbg !4086
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4067, metadata !564) #8, !dbg !4087
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4068, metadata !564) #8, !dbg !4089
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3863, metadata !564) #8, !dbg !4090
  %4 = tail call noalias i8* @malloc(i64 %3) #8, !dbg !4092
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3869, metadata !564) #8, !dbg !4093
  %5 = icmp eq i8* %4, null, !dbg !4094
  %6 = icmp ne i64 %3, 0, !dbg !4095
  %7 = and i1 %6, %5, !dbg !4096
  br i1 %7, label %8, label %9, !dbg !4096

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4097
  unreachable, !dbg !4097

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #8, !dbg !4098
  ret i8* %4, !dbg !4099
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4100 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4102, !tbaa !630
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.108, i64 0, i64 0), i32 5) #8, !dbg !4103
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i64 0, i64 0), i8* %2) #8, !dbg !4104
  tail call void @abort() #15, !dbg !4105
  unreachable, !dbg !4105
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @xvasprintf(i8*, %struct.__va_list_tag*) local_unnamed_addr #6 !dbg !4106 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4124, metadata !564), !dbg !4148
  %4 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4118, metadata !564), !dbg !4154
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, i64 0, metadata !4119, metadata !564), !dbg !4155
  %5 = bitcast i8** %4 to i8*, !dbg !4156
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !4156
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4121, metadata !564), !dbg !4157
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4123, metadata !564), !dbg !4158
  br label %6, !dbg !4159

; <label>:6:                                      ; preds = %83, %2
  %7 = phi i64 [ 0, %2 ], [ %85, %83 ]
  %8 = phi i8* [ %0, %2 ], [ %84, %83 ]
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4123, metadata !564), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4121, metadata !564), !dbg !4157
  %9 = load i8, i8* %8, align 1, !dbg !4160, !tbaa !668
  switch i8 %9, label %88 [
    i8 0, label %10
    i8 37, label %79
  ], !dbg !4161

; <label>:10:                                     ; preds = %6
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4129, metadata !564) #8, !dbg !4162
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, i64 0, metadata !4130, metadata !564) #8, !dbg !4163
  %11 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4164
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #8, !dbg !4164
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4132, metadata !564) #8, !dbg !4165
  %12 = bitcast %struct.__va_list_tag* %1 to i8*, !dbg !4166
  call void @llvm.va_copy(i8* nonnull %11, i8* %12) #8, !dbg !4166
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4133, metadata !564) #8, !dbg !4167
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4132, metadata !564) #8, !dbg !4165
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4133, metadata !564) #8, !dbg !4167
  %13 = icmp eq i64 %7, 0, !dbg !4168
  br i1 %13, label %14, label %16, !dbg !4169

; <label>:14:                                     ; preds = %10
  call void @llvm.va_end(i8* nonnull %11) #8, !dbg !4170
  %15 = call noalias i8* @xmalloc(i64 1) #8, !dbg !4171
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4131, metadata !564) #8, !dbg !4172
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4134, metadata !564) #8, !dbg !4173
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4133, metadata !564) #8, !dbg !4167
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4133, metadata !564) #8, !dbg !4167
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4134, metadata !564) #8, !dbg !4173
  br label %76, !dbg !4174

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %20 = load i32, i32* %17, align 16, !dbg !4175
  br label %21, !dbg !4169

; <label>:21:                                     ; preds = %34, %16
  %22 = phi i32 [ %20, %16 ], [ %35, %34 ], !dbg !4175
  %23 = phi i64 [ 0, %16 ], [ %42, %34 ]
  %24 = phi i64 [ %7, %16 ], [ %43, %34 ]
  call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4133, metadata !564) #8, !dbg !4167
  call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4132, metadata !564) #8, !dbg !4165
  %25 = icmp ult i32 %22, 41, !dbg !4175
  br i1 %25, label %26, label %31, !dbg !4175

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %18, align 16, !dbg !4175
  %28 = sext i32 %22 to i64, !dbg !4175
  %29 = getelementptr i8, i8* %27, i64 %28, !dbg !4175
  %30 = add i32 %22, 8, !dbg !4175
  store i32 %30, i32* %17, align 16, !dbg !4175
  br label %34, !dbg !4175

; <label>:31:                                     ; preds = %21
  %32 = load i8*, i8** %19, align 8, !dbg !4175
  %33 = getelementptr i8, i8* %32, i64 8, !dbg !4175
  store i8* %33, i8** %19, align 8, !dbg !4175
  br label %34, !dbg !4175

; <label>:34:                                     ; preds = %31, %26
  %35 = phi i32 [ %30, %26 ], [ %22, %31 ]
  %36 = phi i8* [ %29, %26 ], [ %32, %31 ]
  %37 = bitcast i8* %36 to i8**, !dbg !4175
  %38 = load i8*, i8** %37, align 8, !dbg !4175
  call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !4135, metadata !564) #8, !dbg !4176
  %39 = call i64 @strlen(i8* %38) #14, !dbg !4177
  call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4178, metadata !564) #8, !dbg !4186
  call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !4184, metadata !564) #8, !dbg !4188
  %40 = add i64 %39, %23, !dbg !4189
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !4185, metadata !564) #8, !dbg !4190
  %41 = icmp ult i64 %40, %23, !dbg !4191
  %42 = select i1 %41, i64 -1, i64 %40, !dbg !4192
  call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !4132, metadata !564) #8, !dbg !4165
  %43 = add i64 %24, -1, !dbg !4193
  call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !4133, metadata !564) #8, !dbg !4167
  call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !4132, metadata !564) #8, !dbg !4165
  call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !4133, metadata !564) #8, !dbg !4167
  %44 = icmp eq i64 %43, 0, !dbg !4168
  br i1 %44, label %45, label %21, !dbg !4169, !llvm.loop !4194

; <label>:45:                                     ; preds = %34
  call void @llvm.va_end(i8* nonnull %11) #8, !dbg !4170
  %46 = icmp ugt i64 %42, 2147483647, !dbg !4197
  br i1 %46, label %47, label %49, !dbg !4199

; <label>:47:                                     ; preds = %45
  %48 = tail call i32* @__errno_location() #17, !dbg !4200
  store i32 75, i32* %48, align 4, !dbg !4202, !tbaa !630
  br label %86, !dbg !4203

; <label>:49:                                     ; preds = %45
  %50 = add i64 %42, 1, !dbg !4171
  %51 = call noalias i8* @xmalloc(i64 %50) #8, !dbg !4171
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4131, metadata !564) #8, !dbg !4172
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4134, metadata !564) #8, !dbg !4173
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4133, metadata !564) #8, !dbg !4167
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4133, metadata !564) #8, !dbg !4167
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4134, metadata !564) #8, !dbg !4173
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  br label %55, !dbg !4174

; <label>:55:                                     ; preds = %68, %49
  %56 = phi i64 [ %7, %49 ], [ %74, %68 ]
  %57 = phi i8* [ %51, %49 ], [ %73, %68 ]
  call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !4134, metadata !564) #8, !dbg !4173
  call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !4133, metadata !564) #8, !dbg !4167
  %58 = load i32, i32* %52, align 8, !dbg !4204
  %59 = icmp ult i32 %58, 41, !dbg !4204
  br i1 %59, label %60, label %65, !dbg !4204

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %53, align 8, !dbg !4204
  %62 = sext i32 %58 to i64, !dbg !4204
  %63 = getelementptr i8, i8* %61, i64 %62, !dbg !4204
  %64 = add i32 %58, 8, !dbg !4204
  store i32 %64, i32* %52, align 8, !dbg !4204
  br label %68, !dbg !4204

; <label>:65:                                     ; preds = %55
  %66 = load i8*, i8** %54, align 8, !dbg !4204
  %67 = getelementptr i8, i8* %66, i64 8, !dbg !4204
  store i8* %67, i8** %54, align 8, !dbg !4204
  br label %68, !dbg !4204

; <label>:68:                                     ; preds = %65, %60
  %69 = phi i8* [ %63, %60 ], [ %66, %65 ]
  %70 = bitcast i8* %69 to i8**, !dbg !4204
  %71 = load i8*, i8** %70, align 8, !dbg !4204
  call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !4139, metadata !564) #8, !dbg !4205
  %72 = call i64 @strlen(i8* %71) #14, !dbg !4206
  call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !4143, metadata !564) #8, !dbg !4207
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %71, i64 %72, i32 1, i1 false) #8, !dbg !4208
  %73 = getelementptr inbounds i8, i8* %57, i64 %72, !dbg !4209
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !4134, metadata !564) #8, !dbg !4173
  %74 = add i64 %56, -1, !dbg !4210
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !4133, metadata !564) #8, !dbg !4167
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !4133, metadata !564) #8, !dbg !4167
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !4134, metadata !564) #8, !dbg !4173
  %75 = icmp eq i64 %74, 0, !dbg !4211
  br i1 %75, label %76, label %55, !dbg !4174, !llvm.loop !4212

; <label>:76:                                     ; preds = %68, %14
  %77 = phi i8* [ %15, %14 ], [ %51, %68 ]
  %78 = phi i8* [ %15, %14 ], [ %73, %68 ]
  store i8 0, i8* %78, align 1, !dbg !4215, !tbaa !668
  br label %86, !dbg !4216

; <label>:79:                                     ; preds = %6
  %80 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4217
  tail call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !4123, metadata !564), !dbg !4158
  %81 = load i8, i8* %80, align 1, !dbg !4218, !tbaa !668
  %82 = icmp eq i8 %81, 115, !dbg !4220
  br i1 %82, label %83, label %88, !dbg !4221

; <label>:83:                                     ; preds = %79
  %84 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !4222
  tail call void @llvm.dbg.value(metadata i8* %84, i64 0, metadata !4123, metadata !564), !dbg !4158
  %85 = add i64 %7, 1, !dbg !4223
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !4121, metadata !564), !dbg !4157
  br label %6, !dbg !4224, !llvm.loop !4225

; <label>:86:                                     ; preds = %76, %47
  %87 = phi i8* [ null, %47 ], [ %77, %76 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #8, !dbg !4228
  br label %98

; <label>:88:                                     ; preds = %6, %79
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4120, metadata !564), !dbg !4229
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4230, metadata !564) #8, !dbg !4240
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4238, metadata !564) #8, !dbg !4240
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, i64 0, metadata !4239, metadata !564) #8, !dbg !4240
  %89 = call i32 @__vasprintf_chk(i8** nonnull %4, i32 1, i8* %0, %struct.__va_list_tag* %1) #8, !dbg !4243
  %90 = icmp slt i32 %89, 0, !dbg !4244
  br i1 %90, label %91, label %96, !dbg !4245

; <label>:91:                                     ; preds = %88
  %92 = tail call i32* @__errno_location() #17, !dbg !4246
  %93 = load i32, i32* %92, align 4, !dbg !4246, !tbaa !630
  %94 = icmp eq i32 %93, 12, !dbg !4249
  br i1 %94, label %95, label %98, !dbg !4250

; <label>:95:                                     ; preds = %91
  call void @xalloc_die() #15, !dbg !4251
  unreachable, !dbg !4251

; <label>:96:                                     ; preds = %88
  %97 = load i8*, i8** %4, align 8, !dbg !4252, !tbaa !571
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4120, metadata !564), !dbg !4229
  br label %98, !dbg !4253

; <label>:98:                                     ; preds = %86, %91, %96
  %99 = phi i8* [ %97, %96 ], [ %87, %86 ], [ null, %91 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !4254
  ret i8* %99, !dbg !4254
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #8

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: nounwind
declare i32 @__vasprintf_chk(i8**, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4255 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4258, metadata !564), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4259, metadata !564), !dbg !4265
  %3 = icmp eq i64 %0, 0, !dbg !4266
  %4 = icmp eq i64 %1, 0, !dbg !4267
  %5 = or i1 %3, %4, !dbg !4268
  br i1 %5, label %12, label %6, !dbg !4268

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4269
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4261, metadata !564), !dbg !4270
  %8 = udiv i64 %7, %1, !dbg !4271
  %9 = icmp eq i64 %8, %0, !dbg !4273
  br i1 %9, label %12, label %10, !dbg !4274

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4275
  store i32 12, i32* %11, align 4, !dbg !4277, !tbaa !630
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4258, metadata !564), !dbg !4264
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4259, metadata !564), !dbg !4265
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #8, !dbg !4278
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4260, metadata !564), !dbg !4279
  br label %16, !dbg !4280

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4281
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4282 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4299, metadata !564), !dbg !4308
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4300, metadata !564), !dbg !4309
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4301, metadata !564), !dbg !4310
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4302, metadata !564), !dbg !4311
  %6 = bitcast i32* %5 to i8*, !dbg !4312
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #8, !dbg !4312
  %7 = icmp eq i32* %0, null, !dbg !4313
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4299, metadata !564), !dbg !4308
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4315
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4299, metadata !564), !dbg !4308
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #8, !dbg !4316
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4303, metadata !564), !dbg !4317
  %10 = icmp ugt i64 %9, -3, !dbg !4318
  %11 = icmp ne i64 %2, 0, !dbg !4319
  %12 = and i1 %11, %10, !dbg !4320
  br i1 %12, label %13, label %18, !dbg !4320

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #8, !dbg !4321
  br i1 %14, label %18, label %15, !dbg !4322

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4323, !tbaa !668
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4305, metadata !564), !dbg !4324
  %17 = zext i8 %16 to i32, !dbg !4325
  store i32 %17, i32* %8, align 4, !dbg !4326, !tbaa !630
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #8, !dbg !4327
  ret i64 %19, !dbg !4327
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4328 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4383, metadata !564), !dbg !4388
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #8, !dbg !4389
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4390, metadata !564), !dbg !4394
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4396
  %4 = load i32, i32* %3, align 8, !dbg !4396, !tbaa !4397
  %5 = and i32 %4, 32, !dbg !4396
  %6 = icmp eq i32 %5, 0, !dbg !4399
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #8, !dbg !4400
  %8 = icmp ne i32 %7, 0, !dbg !4401
  br i1 %6, label %9, label %19, !dbg !4402

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4404
  %11 = xor i1 %8, true, !dbg !4405
  %12 = or i1 %10, %11, !dbg !4405
  %13 = sext i1 %8 to i32, !dbg !4405
  br i1 %12, label %22, label %14, !dbg !4405

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4406
  %16 = load i32, i32* %15, align 4, !dbg !4406, !tbaa !630
  %17 = icmp ne i32 %16, 9, !dbg !4407
  %18 = sext i1 %17 to i32, !dbg !4408
  br label %22, !dbg !4408

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4409

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4411
  store i32 0, i32* %21, align 4, !dbg !4413, !tbaa !630
  br label %22, !dbg !4411

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4414
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4415 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4418, metadata !564), !dbg !4421
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4419, metadata !564), !dbg !4422
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #8, !dbg !4423
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4420, metadata !564), !dbg !4424
  %3 = icmp eq i8* %2, null, !dbg !4425
  br i1 %3, label %11, label %4, !dbg !4427

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i64 0, i64 0)) #14, !dbg !4428
  %6 = icmp eq i32 %5, 0, !dbg !4433
  br i1 %6, label %10, label %7, !dbg !4434

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.121, i64 0, i64 0)) #14, !dbg !4435
  %9 = icmp eq i32 %8, 0, !dbg !4436
  br i1 %9, label %10, label %11, !dbg !4437

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4419, metadata !564), !dbg !4422
  br label %11, !dbg !4438

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4439
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4440 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4446, metadata !564), !dbg !4520
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4513, metadata !564), !dbg !4523
  %3 = tail call i8* @nl_langinfo(i32 14) #8, !dbg !4524
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4444, metadata !564), !dbg !4525
  %4 = icmp eq i8* %3, null, !dbg !4526
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), i8* %3, !dbg !4528
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4444, metadata !564), !dbg !4525
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4529, !tbaa !571
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4460, metadata !564) #8, !dbg !4530
  %7 = icmp eq i8* %6, null, !dbg !4531
  br i1 %7, label %8, label %123, !dbg !4532

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.125, i64 0, i64 0)) #8, !dbg !4533
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4461, metadata !564) #8, !dbg !4534
  %10 = icmp eq i8* %9, null, !dbg !4535
  br i1 %10, label %14, label %11, !dbg !4537

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4538, !tbaa !668
  %13 = icmp eq i8 %12, 0, !dbg !4539
  br i1 %13, label %14, label %15, !dbg !4540

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4541

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.126, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4461, metadata !564) #8, !dbg !4534
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4542
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4464, metadata !564) #8, !dbg !4543
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4466, metadata !564) #8, !dbg !4544
  %18 = icmp eq i64 %17, 0, !dbg !4545
  br i1 %18, label %24, label %19, !dbg !4546

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4547
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4547
  %22 = load i8, i8* %21, align 1, !dbg !4547, !tbaa !668
  %23 = icmp ne i8 %22, 47, !dbg !4547
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4548
  %27 = add i64 %17, 14, !dbg !4549
  %28 = add i64 %27, %26, !dbg !4550
  %29 = tail call noalias i8* @malloc(i64 %28) #8, !dbg !4551
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4463, metadata !564) #8, !dbg !4552
  %30 = icmp eq i8* %29, null, !dbg !4553
  br i1 %30, label %121, label %31, !dbg !4553

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #8, !dbg !4554
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4557

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4558, !tbaa !668
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4560
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.127, i64 0, i64 0), i64 14, i32 1, i1 false) #8, !dbg !4561
  br label %37, !dbg !4562

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4560
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.127, i64 0, i64 0), i64 14, i32 1, i1 false) #8, !dbg !4561
  br label %37, !dbg !4562

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #8, !dbg !4563
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4468, metadata !564) #8, !dbg !4564
  %39 = icmp slt i32 %38, 0, !dbg !4565
  br i1 %39, label %119, label %40, !dbg !4566

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.128, i64 0, i64 0)) #8, !dbg !4567
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4469, metadata !564) #8, !dbg !4568
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4569
  br i1 %42, label %43, label %45, !dbg !4570

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #8, !dbg !4571
  br label %119, !dbg !4573

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4510, metadata !564) #8, !dbg !4574
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4511, metadata !564) #8, !dbg !4575
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4576

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4577

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4510, metadata !564) #8, !dbg !4574
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4511, metadata !564) #8, !dbg !4575
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #8, !dbg !4577
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #8, !dbg !4578
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4579, metadata !564) #8, !dbg !4584
  %54 = load i8*, i8** %48, align 8, !dbg !4586, !tbaa !4587
  %55 = load i8*, i8** %49, align 8, !dbg !4586, !tbaa !4588
  %56 = icmp ult i8* %54, %55, !dbg !4586
  br i1 %56, label %59, label %57, !dbg !4586, !prof !4589

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #8, !dbg !4586
  br label %63, !dbg !4586

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4586
  store i8* %60, i8** %48, align 8, !dbg !4586, !tbaa !4587
  %61 = load i8, i8* %54, align 1, !dbg !4586, !tbaa !668
  %62 = zext i8 %61 to i32, !dbg !4586
  br label %63, !dbg !4586

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4586
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4512, metadata !564) #8, !dbg !4590
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4591, !llvm.loop !4592

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4597

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4579, metadata !564) #8, !dbg !4599
  %67 = load i8*, i8** %48, align 8, !dbg !4597, !tbaa !4587
  %68 = load i8*, i8** %49, align 8, !dbg !4597, !tbaa !4588
  %69 = icmp ult i8* %67, %68, !dbg !4597
  br i1 %69, label %72, label %70, !dbg !4597, !prof !4589

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #8, !dbg !4597
  br label %76, !dbg !4597

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4597
  store i8* %73, i8** %48, align 8, !dbg !4597, !tbaa !4587
  %74 = load i8, i8* %67, align 1, !dbg !4597, !tbaa !668
  %75 = zext i8 %74 to i32, !dbg !4597
  br label %76, !dbg !4597

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4597
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4512, metadata !564) #8, !dbg !4590
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4600, !llvm.loop !4601

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #8, !dbg !4604
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.129, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #8, !dbg !4605
  %81 = icmp slt i32 %80, 2, !dbg !4607
  br i1 %81, label %112, label %82, !dbg !4608

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4609
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4517, metadata !564) #8, !dbg !4610
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4611
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4518, metadata !564) #8, !dbg !4612
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4519, metadata !564) #8, !dbg !4613
  %85 = icmp eq i64 %51, 0, !dbg !4614
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4616

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4511, metadata !564) #8, !dbg !4575
  %90 = add i64 %87, 2, !dbg !4617
  %91 = call noalias i8* @malloc(i64 %90) #8, !dbg !4619
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4510, metadata !564) #8, !dbg !4574
  br label %96, !dbg !4620

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4621
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4511, metadata !564) #8, !dbg !4575
  %94 = add i64 %93, 1, !dbg !4623
  %95 = call i8* @realloc(i8* %52, i64 %94) #8, !dbg !4624
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4510, metadata !564) #8, !dbg !4574
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4510, metadata !564) #8, !dbg !4574
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4511, metadata !564) #8, !dbg !4575
  %99 = icmp eq i8* %98, null, !dbg !4625
  br i1 %99, label %100, label %102, !dbg !4627

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4511, metadata !564) #8, !dbg !4575
  call void @free(i8* %52) #8, !dbg !4628
  br label %112, !dbg !4630

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #8, !dbg !4631
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #8, !dbg !4631
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4632
  %104 = xor i64 %84, -1, !dbg !4633
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4633
  %106 = xor i64 %83, -1, !dbg !4634
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4634
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4635, metadata !564) #8, !dbg !4643
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4642, metadata !564) #8, !dbg !4643
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #8, !dbg !4645
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #8, !dbg !4646
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4635, metadata !564) #8, !dbg !4647
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4642, metadata !564) #8, !dbg !4647
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #8, !dbg !4649
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #8, !dbg !4650
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4510, metadata !564) #8, !dbg !4574
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4511, metadata !564) #8, !dbg !4575
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #8, !dbg !4631
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #8, !dbg !4631
  br label %50, !dbg !4651, !llvm.loop !4601

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #8, !dbg !4631
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #8, !dbg !4631
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #8, !dbg !4652
  %116 = icmp eq i64 %113, 0, !dbg !4653
  br i1 %116, label %119, label %117, !dbg !4655

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4656
  store i8 0, i8* %118, align 1, !dbg !4658, !tbaa !668
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4460, metadata !564) #8, !dbg !4530
  call void @free(i8* %29) #8, !dbg !4659
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4460, metadata !564) #8, !dbg !4530
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4660, !tbaa !571
  br label %123, !dbg !4661

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4460, metadata !564) #8, !dbg !4530
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4445, metadata !564), !dbg !4662
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4445, metadata !564), !dbg !4662
  %125 = load i8, i8* %124, align 1, !dbg !4663, !tbaa !668
  %126 = icmp eq i8 %125, 0, !dbg !4665
  br i1 %126, label %152, label %127, !dbg !4666

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4667

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4445, metadata !564), !dbg !4662
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4667
  %132 = icmp eq i32 %131, 0, !dbg !4669
  br i1 %132, label %139, label %133, !dbg !4670

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4671
  br i1 %134, label %135, label %143, !dbg !4672

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4673
  %137 = load i8, i8* %136, align 1, !dbg !4673, !tbaa !668
  %138 = icmp eq i8 %137, 0, !dbg !4674
  br i1 %138, label %139, label %143, !dbg !4675

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4676
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4678
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4679
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4444, metadata !564), !dbg !4525
  br label %152, !dbg !4680

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4681
  %145 = add i64 %144, 1, !dbg !4682
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4683
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4445, metadata !564), !dbg !4662
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4684
  %148 = add i64 %147, 1, !dbg !4685
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4686
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4445, metadata !564), !dbg !4662
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4445, metadata !564), !dbg !4662
  %150 = load i8, i8* %149, align 1, !dbg !4663, !tbaa !668
  %151 = icmp eq i8 %150, 0, !dbg !4665
  br i1 %151, label %152, label %128, !dbg !4666, !llvm.loop !4687

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4444, metadata !564), !dbg !4525
  %154 = load i8, i8* %153, align 1, !dbg !4689, !tbaa !668
  %155 = icmp eq i8 %154, 0, !dbg !4691
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.130, i64 0, i64 0), i8* %153, !dbg !4692
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4444, metadata !564), !dbg !4525
  ret i8* %156, !dbg !4693
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4694 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4739, metadata !564), !dbg !4743
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4740, metadata !564), !dbg !4744
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4742, metadata !564), !dbg !4745
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #8, !dbg !4746
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4741, metadata !564), !dbg !4747
  %3 = icmp slt i32 %2, 0, !dbg !4748
  br i1 %3, label %4, label %6, !dbg !4750

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4751
  br label %24, !dbg !4752

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #8, !dbg !4753
  %8 = icmp eq i32 %7, 0, !dbg !4753
  br i1 %8, label %13, label %9, !dbg !4755

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #8, !dbg !4756
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #8, !dbg !4757
  %12 = icmp eq i64 %11, -1, !dbg !4758
  br i1 %12, label %16, label %13, !dbg !4759

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #8, !dbg !4760
  %15 = icmp eq i32 %14, 0, !dbg !4760
  br i1 %15, label %16, label %18, !dbg !4761

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4740, metadata !564), !dbg !4744
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4762
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4742, metadata !564), !dbg !4745
  br label %24, !dbg !4763

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4764
  %20 = load i32, i32* %19, align 4, !dbg !4764, !tbaa !630
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4740, metadata !564), !dbg !4744
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4740, metadata !564), !dbg !4744
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4762
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4742, metadata !564), !dbg !4745
  %22 = icmp eq i32 %20, 0, !dbg !4765
  br i1 %22, label %24, label %23, !dbg !4763

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4767, !tbaa !630
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4742, metadata !564), !dbg !4745
  br label %24, !dbg !4769

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4770
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4771 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4816, metadata !564), !dbg !4817
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4818
  br i1 %2, label %6, label %3, !dbg !4820

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #8, !dbg !4821
  %5 = icmp eq i32 %4, 0, !dbg !4821
  br i1 %5, label %6, label %8, !dbg !4822

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4823
  br label %17, !dbg !4824

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4825, metadata !564) #8, !dbg !4830
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4832
  %10 = load i32, i32* %9, align 8, !dbg !4832, !tbaa !4397
  %11 = and i32 %10, 256, !dbg !4834
  %12 = icmp eq i32 %11, 0, !dbg !4834
  br i1 %12, label %15, label %13, !dbg !4835

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #8, !dbg !4836
  br label %15, !dbg !4836

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4837
  br label %17, !dbg !4838

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4839
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4840 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4886, metadata !564), !dbg !4892
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4887, metadata !564), !dbg !4893
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4888, metadata !564), !dbg !4894
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4895
  %5 = load i8*, i8** %4, align 8, !dbg !4895, !tbaa !4588
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4896
  %7 = load i8*, i8** %6, align 8, !dbg !4896, !tbaa !4587
  %8 = icmp eq i8* %5, %7, !dbg !4897
  br i1 %8, label %9, label %28, !dbg !4898

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4899
  %11 = load i8*, i8** %10, align 8, !dbg !4899, !tbaa !4900
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4901
  %13 = load i8*, i8** %12, align 8, !dbg !4901, !tbaa !4902
  %14 = icmp eq i8* %11, %13, !dbg !4903
  br i1 %14, label %15, label %28, !dbg !4904

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4905
  %17 = load i8*, i8** %16, align 8, !dbg !4905, !tbaa !4906
  %18 = icmp eq i8* %17, null, !dbg !4907
  br i1 %18, label %19, label %28, !dbg !4908

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #8, !dbg !4909
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #8, !dbg !4910
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4889, metadata !564), !dbg !4911
  %22 = icmp eq i64 %21, -1, !dbg !4912
  br i1 %22, label %30, label %23, !dbg !4914

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4915
  %25 = load i32, i32* %24, align 8, !dbg !4916, !tbaa !4397
  %26 = and i32 %25, -17, !dbg !4916
  store i32 %26, i32* %24, align 8, !dbg !4916, !tbaa !4397
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4917
  store i64 %21, i64* %27, align 8, !dbg !4918, !tbaa !4919
  br label %30, !dbg !4920

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4921
  br label %30, !dbg !4922

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4923
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
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !62, !72, !503, !79, !86, !510, !513, !515, !532, !534, !537, !540, !543, !545, !156, !547, !549, !551}
!llvm.ident = !{!553, !553, !553, !553, !553, !553, !553, !553, !553, !553, !553, !553, !553, !553, !553, !553, !553, !553, !553}
!llvm.module.flags = !{!554, !555, !556, !557, !558}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "argv", scope: !2, file: !3, line: 73, type: !58, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !25, globals: !30)
!3 = !DIFile(filename: "src/test.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !10}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 59, size: 32, elements: !6)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "TEST_TRUE", value: 0)
!8 = !DIEnumerator(name: "TEST_FALSE", value: 1)
!9 = !DIEnumerator(name: "TEST_FAILURE", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 46, size: 32, elements: !12)
!11 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!13 = !DIEnumerator(name: "_ISupper", value: 256)
!14 = !DIEnumerator(name: "_ISlower", value: 512)
!15 = !DIEnumerator(name: "_ISalpha", value: 1024)
!16 = !DIEnumerator(name: "_ISdigit", value: 2048)
!17 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!18 = !DIEnumerator(name: "_ISspace", value: 8192)
!19 = !DIEnumerator(name: "_ISprint", value: 16384)
!20 = !DIEnumerator(name: "_ISgraph", value: 32768)
!21 = !DIEnumerator(name: "_ISblank", value: 1)
!22 = !DIEnumerator(name: "_IScntrl", value: 2)
!23 = !DIEnumerator(name: "_ISpunct", value: 4)
!24 = !DIEnumerator(name: "_ISalnum", value: 8)
!25 = !{!26, !27, !28, !29}
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !{!31, !33, !0, !35}
!31 = !DIGlobalVariableExpression(var: !32)
!32 = distinct !DIGlobalVariable(name: "pos", scope: !2, file: !3, line: 71, type: !26, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34)
!34 = distinct !DIGlobalVariable(name: "argc", scope: !2, file: !3, line: 72, type: !26, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36)
!36 = distinct !DIGlobalVariable(name: "infomap", scope: !37, file: !38, line: 632, type: !55, isLocal: true, isDefinition: true)
!37 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !38, file: !38, line: 630, type: !39, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !44)
!38 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = !{!45, !46, !47, !54}
!45 = !DILocalVariable(name: "program", arg: 1, scope: !37, file: !38, line: 630, type: !41)
!46 = !DILocalVariable(name: "node", scope: !37, file: !38, line: 642, type: !41)
!47 = !DILocalVariable(name: "map_prog", scope: !37, file: !38, line: 643, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !37, file: !38, line: 632, size: 128, elements: !51)
!51 = !{!52, !53}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !50, file: !38, line: 632, baseType: !41, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !50, file: !38, line: 632, baseType: !41, size: 64, offset: 64)
!54 = !DILocalVariable(name: "lc_messages", scope: !37, file: !38, line: 655, type: !41)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 896, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 7)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!60 = !DIGlobalVariableExpression(var: !61)
!61 = distinct !DIGlobalVariable(name: "file_name", scope: !62, file: !68, line: 36, type: !41, isLocal: true, isDefinition: true)
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, globals: !65)
!63 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!64 = !{}
!65 = !{!60, !66}
!66 = !DIGlobalVariableExpression(var: !67)
!67 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !62, file: !68, line: 46, type: !69, isLocal: true, isDefinition: true)
!68 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!69 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!70 = !DIGlobalVariableExpression(var: !71)
!71 = distinct !DIGlobalVariable(name: "exit_failure", scope: !72, file: !75, line: 24, type: !76, isLocal: false, isDefinition: true)
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, globals: !74)
!73 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!74 = !{!70}
!75 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!76 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !26)
!77 = !DIGlobalVariableExpression(var: !78)
!78 = distinct !DIGlobalVariable(name: "program_name", scope: !79, file: !83, line: 33, type: !41, isLocal: false, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !81, globals: !82)
!80 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!81 = !{!29, !59}
!82 = !{!77}
!83 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !86, file: !115, line: 77, type: !150, isLocal: false, isDefinition: true)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, retainedTypes: !108, globals: !112)
!87 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!88 = !{!89, !103, !10}
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !90, line: 32, size: 32, elements: !91)
!90 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!92 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!93 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!94 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!95 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!96 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!97 = !DIEnumerator(name: "c_quoting_style", value: 5)
!98 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!99 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!100 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!101 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!102 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !90, line: 242, size: 32, elements: !104)
!104 = !{!105, !106, !107}
!105 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!106 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!107 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!108 = !{!26, !27, !109, !59}
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 62, baseType: !111)
!110 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!111 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!112 = !{!84, !113, !120, !132, !134, !139, !146, !148}
!113 = !DIGlobalVariableExpression(var: !114)
!114 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !86, file: !115, line: 93, type: !116, isLocal: false, isDefinition: true)
!115 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 320, elements: !118)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!118 = !{!119}
!119 = !DISubrange(count: 10)
!120 = !DIGlobalVariableExpression(var: !121)
!121 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !86, file: !115, line: 1043, type: !122, isLocal: false, isDefinition: true)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !115, line: 57, size: 448, elements: !123)
!123 = !{!124, !125, !126, !130, !131}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !122, file: !115, line: 60, baseType: !89, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !122, file: !115, line: 63, baseType: !26, size: 32, offset: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !122, file: !115, line: 67, baseType: !127, size: 256, offset: 64)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 8)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !122, file: !115, line: 70, baseType: !41, size: 64, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !122, file: !115, line: 73, baseType: !41, size: 64, offset: 384)
!132 = !DIGlobalVariableExpression(var: !133)
!133 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !86, file: !115, line: 108, type: !122, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135)
!135 = distinct !DIGlobalVariable(name: "slot0", scope: !86, file: !115, line: 834, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 2048, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 256)
!139 = !DIGlobalVariableExpression(var: !140)
!140 = distinct !DIGlobalVariable(name: "slotvec", scope: !86, file: !115, line: 837, type: !141, isLocal: true, isDefinition: true)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !115, line: 826, size: 128, elements: !143)
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !142, file: !115, line: 828, baseType: !109, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !142, file: !115, line: 829, baseType: !59, size: 64, offset: 64)
!146 = !DIGlobalVariableExpression(var: !147)
!147 = distinct !DIGlobalVariable(name: "nslots", scope: !86, file: !115, line: 835, type: !26, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149)
!149 = distinct !DIGlobalVariable(name: "slotvec0", scope: !86, file: !115, line: 836, type: !142, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 704, elements: !152)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!152 = !{!153}
!153 = !DISubrange(count: 11)
!154 = !DIGlobalVariableExpression(var: !155)
!155 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !156, file: !501, line: 120, type: !502, isLocal: true, isDefinition: true)
!156 = distinct !DICompileUnit(language: DW_LANG_C99, file: !157, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !158, retainedTypes: !497, globals: !500)
!157 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!158 = !{!159}
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !160, line: 41, size: 32, elements: !161)
!160 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496}
!162 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!163 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!164 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!165 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!166 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!167 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!168 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!169 = !DIEnumerator(name: "DAY_1", value: 131079)
!170 = !DIEnumerator(name: "DAY_2", value: 131080)
!171 = !DIEnumerator(name: "DAY_3", value: 131081)
!172 = !DIEnumerator(name: "DAY_4", value: 131082)
!173 = !DIEnumerator(name: "DAY_5", value: 131083)
!174 = !DIEnumerator(name: "DAY_6", value: 131084)
!175 = !DIEnumerator(name: "DAY_7", value: 131085)
!176 = !DIEnumerator(name: "ABMON_1", value: 131086)
!177 = !DIEnumerator(name: "ABMON_2", value: 131087)
!178 = !DIEnumerator(name: "ABMON_3", value: 131088)
!179 = !DIEnumerator(name: "ABMON_4", value: 131089)
!180 = !DIEnumerator(name: "ABMON_5", value: 131090)
!181 = !DIEnumerator(name: "ABMON_6", value: 131091)
!182 = !DIEnumerator(name: "ABMON_7", value: 131092)
!183 = !DIEnumerator(name: "ABMON_8", value: 131093)
!184 = !DIEnumerator(name: "ABMON_9", value: 131094)
!185 = !DIEnumerator(name: "ABMON_10", value: 131095)
!186 = !DIEnumerator(name: "ABMON_11", value: 131096)
!187 = !DIEnumerator(name: "ABMON_12", value: 131097)
!188 = !DIEnumerator(name: "MON_1", value: 131098)
!189 = !DIEnumerator(name: "MON_2", value: 131099)
!190 = !DIEnumerator(name: "MON_3", value: 131100)
!191 = !DIEnumerator(name: "MON_4", value: 131101)
!192 = !DIEnumerator(name: "MON_5", value: 131102)
!193 = !DIEnumerator(name: "MON_6", value: 131103)
!194 = !DIEnumerator(name: "MON_7", value: 131104)
!195 = !DIEnumerator(name: "MON_8", value: 131105)
!196 = !DIEnumerator(name: "MON_9", value: 131106)
!197 = !DIEnumerator(name: "MON_10", value: 131107)
!198 = !DIEnumerator(name: "MON_11", value: 131108)
!199 = !DIEnumerator(name: "MON_12", value: 131109)
!200 = !DIEnumerator(name: "AM_STR", value: 131110)
!201 = !DIEnumerator(name: "PM_STR", value: 131111)
!202 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!203 = !DIEnumerator(name: "D_FMT", value: 131113)
!204 = !DIEnumerator(name: "T_FMT", value: 131114)
!205 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!206 = !DIEnumerator(name: "ERA", value: 131116)
!207 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!208 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!209 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!210 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!211 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!212 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!213 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!214 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!215 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!216 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!217 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!218 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!219 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!220 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!221 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!222 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!223 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!224 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!225 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!226 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!227 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!228 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!229 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!230 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!231 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!232 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!233 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!234 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!235 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!236 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!237 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!238 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!239 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!240 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!241 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!242 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!243 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!244 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!245 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!246 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!247 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!248 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!249 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!250 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!251 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!252 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!253 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!254 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!255 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!256 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!257 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!258 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!259 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!260 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!261 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!262 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!263 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!264 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!265 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!266 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!267 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!268 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!269 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!270 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!271 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!272 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!273 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!274 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!275 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!276 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!277 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!278 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!279 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!280 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!281 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!282 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!283 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!284 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!285 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!286 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!287 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!288 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!289 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!290 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!291 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!292 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!293 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!294 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!295 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!296 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!297 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!298 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!299 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!300 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!301 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!302 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!303 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!304 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!305 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!306 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!307 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!308 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!309 = !DIEnumerator(name: "CODESET", value: 14)
!310 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!311 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!312 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!313 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!314 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!315 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!316 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!317 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!318 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!319 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!320 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!321 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!322 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!323 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!324 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!325 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!326 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!327 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!328 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!329 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!330 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!331 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!332 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!333 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!334 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!335 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!336 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!337 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!338 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!339 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!340 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!341 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!342 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!343 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!344 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!345 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!346 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!347 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!348 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!349 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!350 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!351 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!352 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!353 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!354 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!355 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!356 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!357 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!358 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!359 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!360 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!361 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!362 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!363 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!364 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!365 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!366 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!367 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!368 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!369 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!370 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!371 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!372 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!373 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!374 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!375 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!376 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!377 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!378 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!379 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!380 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!381 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!382 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!383 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!384 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!385 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!386 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!387 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!388 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!389 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!390 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!391 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!392 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!393 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!394 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!395 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!396 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!397 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!398 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!399 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!400 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!401 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!402 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!403 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!404 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!405 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!406 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!407 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!408 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!409 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!410 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!411 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!412 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!413 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!414 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!415 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!416 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!417 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!418 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!419 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!420 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!421 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!422 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!423 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!424 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!425 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!426 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!427 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!428 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!429 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!430 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!431 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!432 = !DIEnumerator(name: "THOUSEP", value: 65537)
!433 = !DIEnumerator(name: "__GROUPING", value: 65538)
!434 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!435 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!436 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!437 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!438 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!439 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!440 = !DIEnumerator(name: "__YESSTR", value: 327682)
!441 = !DIEnumerator(name: "__NOSTR", value: 327683)
!442 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!443 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!444 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!445 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!446 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!447 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!448 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!449 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!450 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!451 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!452 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!453 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!454 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!455 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!456 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!457 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!458 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!459 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!460 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!461 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!462 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!463 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!464 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!465 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!466 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!467 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!468 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!469 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!470 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!471 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!472 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!473 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!474 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!475 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!476 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!477 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!478 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!479 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!480 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!481 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!482 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!483 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!484 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!485 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!486 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!487 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!488 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!489 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!490 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!491 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!492 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!493 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!494 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!495 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!496 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!497 = !{!29, !59, !498}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!500 = !{!154}
!501 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!502 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !41)
!503 = distinct !DICompileUnit(language: DW_LANG_C99, file: !504, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !505)
!504 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !507, line: 112, baseType: !508)
!507 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !509, line: 62, baseType: !111)
!509 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!510 = distinct !DICompileUnit(language: DW_LANG_C99, file: !511, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !512)
!511 = !DIFile(filename: "./lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!512 = !{!28}
!513 = distinct !DICompileUnit(language: DW_LANG_C99, file: !514, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64)
!514 = !DIFile(filename: "./lib/verror.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!515 = distinct !DICompileUnit(language: DW_LANG_C99, file: !516, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !517, retainedTypes: !531)
!516 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!517 = !{!518}
!518 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !520, file: !519, line: 192, size: 32, elements: !529)
!519 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!520 = distinct !DISubprogram(name: "x2nrealloc", scope: !519, file: !519, line: 180, type: !521, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !515, variables: !524)
!521 = !DISubroutineType(types: !522)
!522 = !{!29, !29, !523, !109}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!524 = !{!525, !526, !527, !528}
!525 = !DILocalVariable(name: "p", arg: 1, scope: !520, file: !519, line: 180, type: !29)
!526 = !DILocalVariable(name: "pn", arg: 2, scope: !520, file: !519, line: 180, type: !523)
!527 = !DILocalVariable(name: "s", arg: 3, scope: !520, file: !519, line: 180, type: !109)
!528 = !DILocalVariable(name: "n", scope: !520, file: !519, line: 182, type: !109)
!529 = !{!530}
!530 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!531 = !{!109, !59, !29}
!532 = distinct !DICompileUnit(language: DW_LANG_C99, file: !533, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64)
!533 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!534 = distinct !DICompileUnit(language: DW_LANG_C99, file: !535, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !536)
!535 = !DIFile(filename: "./lib/xvasprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!536 = !{!59}
!537 = distinct !DICompileUnit(language: DW_LANG_C99, file: !538, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !539)
!538 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!539 = !{!29}
!540 = distinct !DICompileUnit(language: DW_LANG_C99, file: !541, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !542)
!541 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!542 = !{!109}
!543 = distinct !DICompileUnit(language: DW_LANG_C99, file: !544, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64)
!544 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!545 = distinct !DICompileUnit(language: DW_LANG_C99, file: !546, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64)
!546 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!547 = distinct !DICompileUnit(language: DW_LANG_C99, file: !548, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64)
!548 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!549 = distinct !DICompileUnit(language: DW_LANG_C99, file: !550, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !539)
!550 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = distinct !DICompileUnit(language: DW_LANG_C99, file: !552, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !539)
!552 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!553 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!554 = !{i32 2, !"Dwarf Version", i32 4}
!555 = !{i32 2, !"Debug Info Version", i32 3}
!556 = !{i32 1, !"wchar_size", i32 4}
!557 = !{i32 7, !"PIC Level", i32 2}
!558 = !{i32 7, !"PIE Level", i32 2}
!559 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 703, type: !560, isLocal: false, isDefinition: true, scopeLine: 704, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !562)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !26}
!562 = !{!563}
!563 = !DILocalVariable(name: "status", arg: 1, scope: !559, file: !3, line: 703, type: !26)
!564 = !DIExpression()
!565 = !DILocation(line: 703, column: 12, scope: !559)
!566 = !DILocation(line: 705, column: 14, scope: !567)
!567 = distinct !DILexicalBlock(scope: !559, file: !3, line: 705, column: 7)
!568 = !DILocation(line: 705, column: 7, scope: !559)
!569 = !DILocation(line: 706, column: 5, scope: !570)
!570 = distinct !DILexicalBlock(scope: !567, file: !3, line: 706, column: 5)
!571 = !{!572, !572, i64 0}
!572 = !{!"any pointer", !573, i64 0}
!573 = !{!"omnipotent char", !574, i64 0}
!574 = !{!"Simple C/C++ TBAA"}
!575 = !DILocation(line: 709, column: 7, scope: !576)
!576 = distinct !DILexicalBlock(scope: !567, file: !3, line: 708, column: 5)
!577 = !DILocation(line: 716, column: 7, scope: !576)
!578 = !DILocation(line: 720, column: 7, scope: !576)
!579 = !DILocation(line: 721, column: 7, scope: !576)
!580 = !DILocation(line: 722, column: 7, scope: !576)
!581 = !DILocation(line: 727, column: 7, scope: !576)
!582 = !DILocation(line: 734, column: 7, scope: !576)
!583 = !DILocation(line: 742, column: 7, scope: !576)
!584 = !DILocation(line: 751, column: 7, scope: !576)
!585 = !DILocation(line: 757, column: 7, scope: !576)
!586 = !DILocation(line: 764, column: 7, scope: !576)
!587 = !DILocation(line: 771, column: 7, scope: !576)
!588 = !DILocation(line: 778, column: 7, scope: !576)
!589 = !DILocation(line: 785, column: 7, scope: !576)
!590 = !DILocation(line: 791, column: 7, scope: !576)
!591 = !DILocation(line: 796, column: 7, scope: !576)
!592 = !DILocation(line: 801, column: 7, scope: !576)
!593 = !DILocation(line: 642, column: 15, scope: !37, inlinedAt: !594)
!594 = distinct !DILocation(line: 802, column: 7, scope: !576)
!595 = !DILocation(line: 651, column: 3, scope: !37, inlinedAt: !594)
!596 = !DILocation(line: 655, column: 29, scope: !37, inlinedAt: !594)
!597 = !DILocation(line: 655, column: 15, scope: !37, inlinedAt: !594)
!598 = !DILocation(line: 656, column: 7, scope: !599, inlinedAt: !594)
!599 = distinct !DILexicalBlock(scope: !37, file: !38, line: 656, column: 7)
!600 = !DILocation(line: 656, column: 19, scope: !599, inlinedAt: !594)
!601 = !DILocation(line: 656, column: 22, scope: !599, inlinedAt: !594)
!602 = !DILocation(line: 656, column: 7, scope: !37, inlinedAt: !594)
!603 = !DILocation(line: 662, column: 7, scope: !604, inlinedAt: !594)
!604 = distinct !DILexicalBlock(scope: !599, file: !38, line: 657, column: 5)
!605 = !DILocation(line: 664, column: 5, scope: !604, inlinedAt: !594)
!606 = !DILocation(line: 665, column: 3, scope: !37, inlinedAt: !594)
!607 = !DILocation(line: 667, column: 3, scope: !37, inlinedAt: !594)
!608 = !DILocation(line: 804, column: 3, scope: !559)
!609 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 823, type: !610, isLocal: false, isDefinition: true, scopeLine: 824, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !612)
!610 = !DISubroutineType(types: !611)
!611 = !{!26, !26, !58}
!612 = !{!613, !614, !615}
!613 = !DILocalVariable(name: "margc", arg: 1, scope: !609, file: !3, line: 823, type: !26)
!614 = !DILocalVariable(name: "margv", arg: 2, scope: !609, file: !3, line: 823, type: !58)
!615 = !DILocalVariable(name: "value", scope: !609, file: !3, line: 825, type: !69)
!616 = !DILocation(line: 823, column: 11, scope: !609)
!617 = !DILocation(line: 823, column: 25, scope: !609)
!618 = !DILocation(line: 836, column: 21, scope: !609)
!619 = !DILocation(line: 836, column: 3, scope: !609)
!620 = !DILocation(line: 837, column: 3, scope: !609)
!621 = !DILocation(line: 838, column: 3, scope: !609)
!622 = !DILocation(line: 839, column: 3, scope: !609)
!623 = !DILocalVariable(name: "status", arg: 1, scope: !624, file: !38, line: 99, type: !26)
!624 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !38, file: !38, line: 99, type: !560, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !625)
!625 = !{!623}
!626 = !DILocation(line: 99, column: 30, scope: !624, inlinedAt: !627)
!627 = distinct !DILocation(line: 841, column: 3, scope: !609)
!628 = !DILocation(line: 102, column: 18, scope: !629, inlinedAt: !627)
!629 = distinct !DILexicalBlock(scope: !624, file: !38, line: 101, column: 7)
!630 = !{!631, !631, i64 0}
!631 = !{!"int", !573, i64 0}
!632 = !DILocation(line: 842, column: 3, scope: !609)
!633 = !DILocation(line: 845, column: 8, scope: !609)
!634 = !DILocation(line: 873, column: 8, scope: !609)
!635 = !DILocation(line: 874, column: 7, scope: !609)
!636 = !DILocation(line: 876, column: 11, scope: !637)
!637 = distinct !DILexicalBlock(scope: !609, file: !3, line: 876, column: 7)
!638 = !DILocation(line: 876, column: 7, scope: !609)
!639 = !DILocation(line: 879, column: 27, scope: !609)
!640 = !DILocation(line: 879, column: 11, scope: !609)
!641 = !DILocation(line: 881, column: 7, scope: !642)
!642 = distinct !DILexicalBlock(scope: !609, file: !3, line: 881, column: 7)
!643 = !DILocation(line: 881, column: 14, scope: !642)
!644 = !DILocation(line: 881, column: 11, scope: !642)
!645 = !DILocation(line: 881, column: 7, scope: !609)
!646 = !DILocation(line: 882, column: 24, scope: !642)
!647 = !DILocation(line: 882, column: 55, scope: !642)
!648 = !DILocation(line: 882, column: 60, scope: !642)
!649 = !DILocation(line: 882, column: 48, scope: !642)
!650 = !DILocation(line: 882, column: 5, scope: !642)
!651 = !DILocation(line: 884, column: 3, scope: !609)
!652 = !DILocation(line: 885, column: 1, scope: !609)
!653 = distinct !DISubprogram(name: "posixtest", scope: !3, file: !3, line: 657, type: !654, isLocal: true, isDefinition: true, scopeLine: 658, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !656)
!654 = !DISubroutineType(types: !655)
!655 = !{!69, !26}
!656 = !{!657, !658}
!657 = !DILocalVariable(name: "nargs", arg: 1, scope: !653, file: !3, line: 657, type: !26)
!658 = !DILocalVariable(name: "value", scope: !653, file: !3, line: 659, type: !69)
!659 = !DILocation(line: 657, column: 16, scope: !653)
!660 = !DILocation(line: 661, column: 3, scope: !653)
!661 = !DILocation(line: 603, column: 10, scope: !662, inlinedAt: !665)
!662 = distinct !DISubprogram(name: "one_argument", scope: !3, file: !3, line: 601, type: !663, isLocal: true, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !64)
!663 = !DISubroutineType(types: !664)
!664 = !{!69}
!665 = distinct !DILocation(line: 664, column: 17, scope: !666)
!666 = distinct !DILexicalBlock(scope: !653, file: !3, line: 662, column: 5)
!667 = !DILocation(line: 603, column: 18, scope: !662, inlinedAt: !665)
!668 = !{!573, !573, i64 0}
!669 = !DILocation(line: 603, column: 25, scope: !662, inlinedAt: !665)
!670 = !DILocation(line: 665, column: 9, scope: !666)
!671 = !DILocation(line: 668, column: 17, scope: !666)
!672 = !DILocation(line: 669, column: 9, scope: !666)
!673 = !DILocation(line: 672, column: 17, scope: !666)
!674 = !DILocation(line: 673, column: 9, scope: !666)
!675 = !DILocation(line: 676, column: 13, scope: !676)
!676 = distinct !DILexicalBlock(scope: !666, file: !3, line: 676, column: 13)
!677 = !DILocation(line: 676, column: 13, scope: !666)
!678 = !DILocalVariable(name: "f", arg: 1, scope: !679, file: !3, line: 105, type: !69)
!679 = distinct !DISubprogram(name: "advance", scope: !3, file: !3, line: 105, type: !680, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !682)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !69}
!682 = !{!678}
!683 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !684)
!684 = distinct !DILocation(line: 678, column: 13, scope: !685)
!685 = distinct !DILexicalBlock(scope: !676, file: !3, line: 677, column: 11)
!686 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !684)
!687 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !684)
!688 = distinct !DILexicalBlock(scope: !679, file: !3, line: 109, column: 7)
!689 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !684)
!690 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !684)
!691 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !684)
!692 = !DILocation(line: 679, column: 22, scope: !685)
!693 = !DILocation(line: 679, column: 21, scope: !685)
!694 = !DILocation(line: 680, column: 13, scope: !685)
!695 = !DILocation(line: 682, column: 13, scope: !696)
!696 = distinct !DILexicalBlock(scope: !666, file: !3, line: 682, column: 13)
!697 = !DILocation(line: 682, column: 36, scope: !696)
!698 = !DILocation(line: 682, column: 39, scope: !696)
!699 = !DILocation(line: 682, column: 13, scope: !666)
!700 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !701)
!701 = distinct !DILocation(line: 684, column: 13, scope: !702)
!702 = distinct !DILexicalBlock(scope: !696, file: !3, line: 683, column: 11)
!703 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !701)
!704 = !DILocation(line: 685, column: 21, scope: !702)
!705 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !706)
!706 = distinct !DILocation(line: 686, column: 13, scope: !702)
!707 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !706)
!708 = !DILocation(line: 687, column: 13, scope: !702)
!709 = !DILocation(line: 692, column: 19, scope: !710)
!710 = distinct !DILexicalBlock(scope: !666, file: !3, line: 692, column: 13)
!711 = !DILocation(line: 692, column: 13, scope: !666)
!712 = !DILocation(line: 574, column: 7, scope: !713, inlinedAt: !715)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 574, column: 7)
!714 = distinct !DISubprogram(name: "expr", scope: !3, file: !3, line: 572, type: !663, isLocal: true, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !64)
!715 = distinct !DILocation(line: 694, column: 17, scope: !666)
!716 = !DILocation(line: 693, column: 11, scope: !710)
!717 = !DILocation(line: 574, column: 14, scope: !713, inlinedAt: !715)
!718 = !DILocation(line: 574, column: 11, scope: !713, inlinedAt: !715)
!719 = !DILocation(line: 574, column: 7, scope: !714, inlinedAt: !715)
!720 = !DILocation(line: 575, column: 5, scope: !713, inlinedAt: !715)
!721 = !DILocalVariable(name: "value", scope: !722, file: !3, line: 556, type: !69)
!722 = distinct !DISubprogram(name: "or", scope: !3, file: !3, line: 554, type: !663, isLocal: true, isDefinition: true, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !723)
!723 = !{!721}
!724 = !DILocation(line: 556, column: 8, scope: !722, inlinedAt: !725)
!725 = distinct !DILocation(line: 577, column: 10, scope: !714, inlinedAt: !715)
!726 = !DILocalVariable(name: "value", scope: !727, file: !3, line: 537, type: !69)
!727 = distinct !DISubprogram(name: "and", scope: !3, file: !3, line: 535, type: !663, isLocal: true, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !728)
!728 = !{!726}
!729 = !DILocation(line: 537, column: 8, scope: !727, inlinedAt: !730)
!730 = distinct !DILocation(line: 560, column: 16, scope: !731, inlinedAt: !725)
!731 = distinct !DILexicalBlock(scope: !722, file: !3, line: 559, column: 5)
!732 = !DILocation(line: 541, column: 16, scope: !733, inlinedAt: !730)
!733 = distinct !DILexicalBlock(scope: !727, file: !3, line: 540, column: 5)
!734 = !DILocation(line: 542, column: 14, scope: !735, inlinedAt: !730)
!735 = distinct !DILexicalBlock(scope: !733, file: !3, line: 542, column: 11)
!736 = !DILocation(line: 542, column: 20, scope: !735, inlinedAt: !730)
!737 = !DILocation(line: 542, column: 18, scope: !735, inlinedAt: !730)
!738 = !DILocation(line: 542, column: 25, scope: !735, inlinedAt: !730)
!739 = !DILocation(line: 542, column: 28, scope: !735, inlinedAt: !730)
!740 = !DILocation(line: 542, column: 11, scope: !733, inlinedAt: !730)
!741 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !742)
!742 = distinct !DILocation(line: 544, column: 7, scope: !733, inlinedAt: !730)
!743 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !742)
!744 = !DILocation(line: 541, column: 13, scope: !733, inlinedAt: !730)
!745 = distinct !{!745, !746, !747}
!746 = !DILocation(line: 539, column: 3, scope: !727)
!747 = !DILocation(line: 545, column: 5, scope: !727)
!748 = !DILocation(line: 560, column: 13, scope: !731, inlinedAt: !725)
!749 = !DILocation(line: 561, column: 28, scope: !750, inlinedAt: !725)
!750 = distinct !DILexicalBlock(scope: !731, file: !3, line: 561, column: 11)
!751 = !DILocation(line: 561, column: 11, scope: !731, inlinedAt: !725)
!752 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !753)
!753 = distinct !DILocation(line: 563, column: 7, scope: !731, inlinedAt: !725)
!754 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !753)
!755 = distinct !{!755, !756, !757}
!756 = !DILocation(line: 558, column: 3, scope: !722)
!757 = !DILocation(line: 564, column: 5, scope: !722)
!758 = !DILocation(line: 697, column: 3, scope: !653)
!759 = distinct !DISubprogram(name: "test_syntax_error", scope: !3, file: !3, line: 92, type: !760, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !762)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !41, null}
!762 = !{!763, !764}
!763 = !DILocalVariable(name: "format", arg: 1, scope: !759, file: !3, line: 92, type: !41)
!764 = !DILocalVariable(name: "ap", scope: !759, file: !3, line: 94, type: !765)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !766, line: 46, baseType: !767)
!766 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !768, line: 48, baseType: !769)
!768 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 94, baseType: !770)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 192, elements: !777)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 94, size: 192, elements: !772)
!772 = !{!773, !774, !775, !776}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !771, file: !3, line: 94, baseType: !28, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !771, file: !3, line: 94, baseType: !28, size: 32, offset: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !771, file: !3, line: 94, baseType: !29, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !771, file: !3, line: 94, baseType: !29, size: 64, offset: 128)
!777 = !{!778}
!778 = !DISubrange(count: 1)
!779 = !DILocation(line: 92, column: 32, scope: !759)
!780 = !DILocation(line: 94, column: 3, scope: !759)
!781 = !DILocation(line: 94, column: 11, scope: !759)
!782 = !DILocation(line: 95, column: 3, scope: !759)
!783 = !DILocation(line: 96, column: 3, scope: !759)
!784 = !DILocation(line: 97, column: 3, scope: !759)
!785 = distinct !DISubprogram(name: "two_arguments", scope: !3, file: !3, line: 607, type: !663, isLocal: true, isDefinition: true, scopeLine: 608, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !786)
!786 = !{!787}
!787 = !DILocalVariable(name: "value", scope: !785, file: !3, line: 609, type: !69)
!788 = !DILocation(line: 611, column: 7, scope: !789)
!789 = distinct !DILexicalBlock(scope: !785, file: !3, line: 611, column: 7)
!790 = !DILocation(line: 611, column: 7, scope: !785)
!791 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !792)
!792 = distinct !DILocation(line: 613, column: 7, scope: !793)
!793 = distinct !DILexicalBlock(scope: !789, file: !3, line: 612, column: 5)
!794 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !792)
!795 = !DILocation(line: 603, column: 18, scope: !662, inlinedAt: !796)
!796 = distinct !DILocation(line: 614, column: 17, scope: !793)
!797 = !DILocation(line: 603, column: 10, scope: !662, inlinedAt: !796)
!798 = !DILocation(line: 603, column: 25, scope: !662, inlinedAt: !796)
!799 = !DILocation(line: 615, column: 5, scope: !793)
!800 = !DILocation(line: 616, column: 12, scope: !801)
!801 = distinct !DILexicalBlock(scope: !789, file: !3, line: 616, column: 12)
!802 = !DILocation(line: 616, column: 25, scope: !801)
!803 = !DILocation(line: 617, column: 12, scope: !801)
!804 = !DILocation(line: 617, column: 15, scope: !801)
!805 = !DILocation(line: 617, column: 28, scope: !801)
!806 = !DILocation(line: 618, column: 12, scope: !801)
!807 = !DILocation(line: 618, column: 15, scope: !801)
!808 = !DILocation(line: 618, column: 28, scope: !801)
!809 = !DILocation(line: 616, column: 12, scope: !789)
!810 = !DILocalVariable(name: "op", arg: 1, scope: !811, file: !3, line: 582, type: !41)
!811 = distinct !DISubprogram(name: "test_unop", scope: !3, file: !3, line: 582, type: !812, isLocal: true, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{!69, !41}
!814 = !{!810}
!815 = !DILocation(line: 582, column: 24, scope: !811, inlinedAt: !816)
!816 = distinct !DILocation(line: 620, column: 11, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 620, column: 11)
!818 = distinct !DILexicalBlock(scope: !801, file: !3, line: 619, column: 5)
!819 = !DILocation(line: 587, column: 11, scope: !811, inlinedAt: !816)
!820 = !DILocation(line: 587, column: 3, scope: !811, inlinedAt: !816)
!821 = !DILocation(line: 621, column: 17, scope: !817)
!822 = !DILocation(line: 623, column: 28, scope: !817)
!823 = !DILocation(line: 623, column: 69, scope: !817)
!824 = !DILocation(line: 623, column: 74, scope: !817)
!825 = !DILocation(line: 623, column: 62, scope: !817)
!826 = !DILocation(line: 623, column: 9, scope: !817)
!827 = !DILocation(line: 626, column: 5, scope: !801)
!828 = !DILocation(line: 627, column: 3, scope: !785)
!829 = distinct !DISubprogram(name: "three_arguments", scope: !3, file: !3, line: 631, type: !663, isLocal: true, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !830)
!830 = !{!831}
!831 = !DILocalVariable(name: "value", scope: !829, file: !3, line: 633, type: !69)
!832 = !DILocation(line: 635, column: 14, scope: !833)
!833 = distinct !DILexicalBlock(scope: !829, file: !3, line: 635, column: 7)
!834 = !DILocation(line: 635, column: 19, scope: !833)
!835 = !DILocation(line: 635, column: 23, scope: !833)
!836 = !DILocation(line: 635, column: 7, scope: !833)
!837 = !DILocation(line: 635, column: 7, scope: !829)
!838 = !DILocation(line: 636, column: 13, scope: !833)
!839 = !DILocation(line: 636, column: 5, scope: !833)
!840 = !DILocation(line: 637, column: 12, scope: !841)
!841 = distinct !DILexicalBlock(scope: !833, file: !3, line: 637, column: 12)
!842 = !DILocation(line: 637, column: 12, scope: !833)
!843 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !844)
!844 = distinct !DILocation(line: 639, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !841, file: !3, line: 638, column: 5)
!846 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !844)
!847 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !844)
!848 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !844)
!849 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !844)
!850 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !844)
!851 = !DILocation(line: 640, column: 16, scope: !845)
!852 = !DILocation(line: 640, column: 15, scope: !845)
!853 = !DILocation(line: 641, column: 5, scope: !845)
!854 = !DILocation(line: 642, column: 12, scope: !855)
!855 = distinct !DILexicalBlock(scope: !841, file: !3, line: 642, column: 12)
!856 = !DILocation(line: 642, column: 35, scope: !855)
!857 = !DILocation(line: 642, column: 38, scope: !855)
!858 = !DILocation(line: 642, column: 12, scope: !841)
!859 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !860)
!860 = distinct !DILocation(line: 644, column: 7, scope: !861)
!861 = distinct !DILexicalBlock(scope: !855, file: !3, line: 643, column: 5)
!862 = !DILocation(line: 603, column: 10, scope: !662, inlinedAt: !863)
!863 = distinct !DILocation(line: 645, column: 15, scope: !861)
!864 = !DILocation(line: 603, column: 25, scope: !662, inlinedAt: !863)
!865 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !866)
!866 = distinct !DILocation(line: 646, column: 7, scope: !861)
!867 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !866)
!868 = !DILocation(line: 647, column: 5, scope: !861)
!869 = !DILocation(line: 648, column: 12, scope: !870)
!870 = distinct !DILexicalBlock(scope: !855, file: !3, line: 648, column: 12)
!871 = !DILocation(line: 648, column: 40, scope: !870)
!872 = !DILocation(line: 648, column: 43, scope: !870)
!873 = !DILocation(line: 648, column: 12, scope: !855)
!874 = !DILocation(line: 574, column: 14, scope: !713, inlinedAt: !875)
!875 = distinct !DILocation(line: 649, column: 13, scope: !870)
!876 = !DILocation(line: 574, column: 11, scope: !713, inlinedAt: !875)
!877 = !DILocation(line: 574, column: 7, scope: !714, inlinedAt: !875)
!878 = !DILocation(line: 575, column: 5, scope: !713, inlinedAt: !875)
!879 = !DILocation(line: 556, column: 8, scope: !722, inlinedAt: !880)
!880 = distinct !DILocation(line: 577, column: 10, scope: !714, inlinedAt: !875)
!881 = !DILocation(line: 537, column: 8, scope: !727, inlinedAt: !882)
!882 = distinct !DILocation(line: 560, column: 16, scope: !731, inlinedAt: !880)
!883 = !DILocation(line: 541, column: 16, scope: !733, inlinedAt: !882)
!884 = !DILocation(line: 542, column: 14, scope: !735, inlinedAt: !882)
!885 = !DILocation(line: 542, column: 20, scope: !735, inlinedAt: !882)
!886 = !DILocation(line: 542, column: 18, scope: !735, inlinedAt: !882)
!887 = !DILocation(line: 542, column: 25, scope: !735, inlinedAt: !882)
!888 = !DILocation(line: 542, column: 28, scope: !735, inlinedAt: !882)
!889 = !DILocation(line: 542, column: 11, scope: !733, inlinedAt: !882)
!890 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !891)
!891 = distinct !DILocation(line: 544, column: 7, scope: !733, inlinedAt: !882)
!892 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !891)
!893 = !DILocation(line: 541, column: 13, scope: !733, inlinedAt: !882)
!894 = !DILocation(line: 560, column: 13, scope: !731, inlinedAt: !880)
!895 = !DILocation(line: 561, column: 28, scope: !750, inlinedAt: !880)
!896 = !DILocation(line: 561, column: 11, scope: !731, inlinedAt: !880)
!897 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !898)
!898 = distinct !DILocation(line: 563, column: 7, scope: !731, inlinedAt: !880)
!899 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !898)
!900 = !DILocation(line: 651, column: 24, scope: !870)
!901 = !DILocation(line: 651, column: 66, scope: !870)
!902 = !DILocation(line: 651, column: 71, scope: !870)
!903 = !DILocation(line: 651, column: 74, scope: !870)
!904 = !DILocation(line: 651, column: 59, scope: !870)
!905 = !DILocation(line: 651, column: 5, scope: !870)
!906 = !DILocation(line: 652, column: 3, scope: !829)
!907 = distinct !DISubprogram(name: "beyond", scope: !3, file: !3, line: 125, type: !908, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !64)
!908 = !DISubroutineType(types: !909)
!909 = !{null}
!910 = !DILocation(line: 127, column: 22, scope: !907)
!911 = !DILocation(line: 127, column: 61, scope: !907)
!912 = !DILocation(line: 127, column: 66, scope: !907)
!913 = !DILocation(line: 127, column: 71, scope: !907)
!914 = !DILocation(line: 127, column: 54, scope: !907)
!915 = !DILocation(line: 127, column: 3, scope: !907)
!916 = distinct !DISubprogram(name: "term", scope: !3, file: !3, line: 212, type: !663, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !917)
!917 = !{!918, !919, !920}
!918 = !DILocalVariable(name: "value", scope: !916, file: !3, line: 214, type: !69)
!919 = !DILocalVariable(name: "negated", scope: !916, file: !3, line: 215, type: !69)
!920 = !DILocalVariable(name: "nargs", scope: !921, file: !3, line: 230, type: !26)
!921 = distinct !DILexicalBlock(scope: !922, file: !3, line: 229, column: 5)
!922 = distinct !DILexicalBlock(scope: !916, file: !3, line: 228, column: 7)
!923 = !DILocation(line: 215, column: 8, scope: !916)
!924 = !DILocation(line: 218, column: 10, scope: !916)
!925 = !DILocation(line: 218, column: 16, scope: !916)
!926 = !DILocation(line: 218, column: 14, scope: !916)
!927 = !DILocation(line: 218, column: 21, scope: !916)
!928 = !DILocation(line: 218, column: 24, scope: !916)
!929 = !DILocation(line: 218, column: 37, scope: !916)
!930 = !DILocation(line: 218, column: 44, scope: !916)
!931 = !DILocation(line: 218, column: 47, scope: !916)
!932 = !DILocation(line: 218, column: 60, scope: !916)
!933 = !DILocation(line: 218, column: 3, scope: !916)
!934 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !935)
!935 = distinct !DILocation(line: 220, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !916, file: !3, line: 219, column: 5)
!937 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !935)
!938 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !935)
!939 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !935)
!940 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !935)
!941 = !DILocation(line: 221, column: 17, scope: !936)
!942 = !DILocation(line: 225, column: 5, scope: !943)
!943 = distinct !DILexicalBlock(scope: !916, file: !3, line: 224, column: 7)
!944 = !DILocation(line: 228, column: 20, scope: !922)
!945 = !DILocation(line: 228, column: 27, scope: !922)
!946 = !DILocation(line: 228, column: 30, scope: !922)
!947 = !DILocation(line: 228, column: 43, scope: !922)
!948 = !DILocation(line: 228, column: 7, scope: !916)
!949 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !950)
!950 = distinct !DILocation(line: 232, column: 7, scope: !921)
!951 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !950)
!952 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !950)
!953 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !950)
!954 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !950)
!955 = !DILocation(line: 230, column: 11, scope: !921)
!956 = !DILocation(line: 235, column: 16, scope: !957)
!957 = distinct !DILexicalBlock(scope: !958, file: !3, line: 234, column: 7)
!958 = distinct !DILexicalBlock(scope: !921, file: !3, line: 234, column: 7)
!959 = !DILocation(line: 235, column: 24, scope: !957)
!960 = !DILocation(line: 235, column: 31, scope: !957)
!961 = !DILocation(line: 235, column: 36, scope: !957)
!962 = !DILocation(line: 234, column: 7, scope: !958)
!963 = !DILocation(line: 237, column: 19, scope: !964)
!964 = distinct !DILexicalBlock(scope: !957, file: !3, line: 237, column: 13)
!965 = !DILocation(line: 237, column: 13, scope: !957)
!966 = !DILocation(line: 239, column: 26, scope: !967)
!967 = distinct !DILexicalBlock(scope: !964, file: !3, line: 238, column: 11)
!968 = !DILocation(line: 240, column: 13, scope: !967)
!969 = !DILocation(line: 236, column: 17, scope: !957)
!970 = distinct !{!970, !962, !971}
!971 = !DILocation(line: 241, column: 11, scope: !958)
!972 = !DILocation(line: 243, column: 15, scope: !921)
!973 = !DILocation(line: 244, column: 11, scope: !974)
!974 = distinct !DILexicalBlock(scope: !921, file: !3, line: 244, column: 11)
!975 = !DILocation(line: 244, column: 16, scope: !974)
!976 = !DILocation(line: 244, column: 21, scope: !974)
!977 = !DILocation(line: 244, column: 11, scope: !921)
!978 = !DILocation(line: 245, column: 28, scope: !974)
!979 = !DILocation(line: 245, column: 46, scope: !974)
!980 = !DILocation(line: 245, column: 9, scope: !974)
!981 = !DILocation(line: 247, column: 13, scope: !982)
!982 = distinct !DILexicalBlock(scope: !974, file: !3, line: 247, column: 13)
!983 = !DILocation(line: 247, column: 26, scope: !982)
!984 = !DILocation(line: 247, column: 33, scope: !982)
!985 = !DILocation(line: 247, column: 36, scope: !982)
!986 = !DILocation(line: 247, column: 13, scope: !974)
!987 = !DILocation(line: 248, column: 30, scope: !982)
!988 = !DILocation(line: 249, column: 30, scope: !982)
!989 = !DILocation(line: 249, column: 60, scope: !982)
!990 = !DILocation(line: 249, column: 65, scope: !982)
!991 = !DILocation(line: 249, column: 48, scope: !982)
!992 = !DILocation(line: 248, column: 11, scope: !982)
!993 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !994)
!994 = distinct !DILocation(line: 250, column: 7, scope: !921)
!995 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !994)
!996 = !DILocation(line: 251, column: 5, scope: !921)
!997 = !DILocation(line: 254, column: 22, scope: !998)
!998 = distinct !DILexicalBlock(scope: !922, file: !3, line: 254, column: 12)
!999 = !DILocation(line: 254, column: 14, scope: !998)
!1000 = !DILocation(line: 254, column: 28, scope: !998)
!1001 = !DILocation(line: 254, column: 31, scope: !998)
!1002 = !DILocation(line: 254, column: 55, scope: !998)
!1003 = !DILocation(line: 254, column: 74, scope: !998)
!1004 = !DILocation(line: 254, column: 65, scope: !998)
!1005 = !DILocation(line: 254, column: 58, scope: !998)
!1006 = !DILocation(line: 254, column: 12, scope: !922)
!1007 = !DILocation(line: 255, column: 13, scope: !998)
!1008 = !DILocation(line: 255, column: 5, scope: !998)
!1009 = !DILocation(line: 256, column: 14, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !998, file: !3, line: 256, column: 12)
!1011 = !DILocation(line: 256, column: 28, scope: !1010)
!1012 = !DILocation(line: 256, column: 47, scope: !1010)
!1013 = !DILocation(line: 256, column: 38, scope: !1010)
!1014 = !DILocation(line: 256, column: 31, scope: !1010)
!1015 = !DILocation(line: 256, column: 12, scope: !998)
!1016 = !DILocation(line: 257, column: 13, scope: !1010)
!1017 = !DILocation(line: 257, column: 5, scope: !1010)
!1018 = !DILocation(line: 260, column: 25, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 260, column: 12)
!1020 = !DILocation(line: 260, column: 32, scope: !1019)
!1021 = !DILocation(line: 260, column: 35, scope: !1019)
!1022 = !DILocation(line: 260, column: 48, scope: !1019)
!1023 = !DILocation(line: 260, column: 51, scope: !1019)
!1024 = !DILocation(line: 260, column: 64, scope: !1019)
!1025 = !DILocation(line: 260, column: 12, scope: !1010)
!1026 = !DILocation(line: 582, column: 24, scope: !811, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 262, column: 11, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 262, column: 11)
!1029 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 261, column: 5)
!1030 = !DILocation(line: 587, column: 11, scope: !811, inlinedAt: !1027)
!1031 = !DILocation(line: 587, column: 3, scope: !811, inlinedAt: !1027)
!1032 = !DILocation(line: 263, column: 17, scope: !1028)
!1033 = !DILocation(line: 266, column: 5, scope: !1029)
!1034 = !DILocation(line: 265, column: 28, scope: !1028)
!1035 = !DILocation(line: 265, column: 69, scope: !1028)
!1036 = !DILocation(line: 265, column: 74, scope: !1028)
!1037 = !DILocation(line: 265, column: 62, scope: !1028)
!1038 = !DILocation(line: 265, column: 9, scope: !1028)
!1039 = !DILocation(line: 269, column: 29, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 268, column: 5)
!1041 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 270, column: 7, scope: !1040)
!1043 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1042)
!1044 = !DILocation(line: 273, column: 18, scope: !916)
!1045 = !DILocation(line: 273, column: 3, scope: !916)
!1046 = distinct !DISubprogram(name: "binop", scope: !3, file: !3, line: 184, type: !812, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1047)
!1047 = !{!1048}
!1048 = !DILocalVariable(name: "s", arg: 1, scope: !1046, file: !3, line: 184, type: !41)
!1049 = !DILocation(line: 184, column: 20, scope: !1046)
!1050 = !DILocation(line: 186, column: 12, scope: !1046)
!1051 = !DILocation(line: 186, column: 30, scope: !1046)
!1052 = !DILocation(line: 186, column: 34, scope: !1046)
!1053 = !DILocation(line: 186, column: 52, scope: !1046)
!1054 = !DILocation(line: 186, column: 56, scope: !1046)
!1055 = !DILocation(line: 186, column: 73, scope: !1046)
!1056 = !DILocation(line: 187, column: 12, scope: !1046)
!1057 = !DILocation(line: 187, column: 32, scope: !1046)
!1058 = !DILocation(line: 188, column: 12, scope: !1046)
!1059 = !DILocation(line: 188, column: 30, scope: !1046)
!1060 = !DILocation(line: 188, column: 34, scope: !1046)
!1061 = !DILocation(line: 188, column: 52, scope: !1046)
!1062 = !DILocation(line: 188, column: 56, scope: !1046)
!1063 = !DILocation(line: 188, column: 74, scope: !1046)
!1064 = !DILocation(line: 189, column: 12, scope: !1046)
!1065 = !DILocation(line: 189, column: 30, scope: !1046)
!1066 = !DILocation(line: 189, column: 34, scope: !1046)
!1067 = !DILocation(line: 189, column: 52, scope: !1046)
!1068 = !DILocation(line: 189, column: 56, scope: !1046)
!1069 = !DILocation(line: 189, column: 74, scope: !1046)
!1070 = !DILocation(line: 190, column: 12, scope: !1046)
!1071 = !DILocation(line: 190, column: 30, scope: !1046)
!1072 = !DILocation(line: 190, column: 34, scope: !1046)
!1073 = !DILocation(line: 186, column: 3, scope: !1046)
!1074 = distinct !DISubprogram(name: "binary_operator", scope: !3, file: !3, line: 277, type: !1075, isLocal: true, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!69, !69}
!1077 = !{!1078, !1079, !1080, !1119, !1120, !1121, !1129, !1130, !1131, !1132, !1133, !1134, !1138, !1139, !1140, !1141, !1144, !1145, !1146, !1147, !1150}
!1078 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !1074, file: !3, line: 277, type: !69)
!1079 = !DILocalVariable(name: "op", scope: !1074, file: !3, line: 279, type: !26)
!1080 = !DILocalVariable(name: "stat_buf", scope: !1074, file: !3, line: 280, type: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1082, line: 46, size: 1152, elements: !1083)
!1082 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1083 = !{!1084, !1086, !1088, !1090, !1092, !1094, !1096, !1097, !1098, !1101, !1103, !1105, !1113, !1114, !1115}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1081, file: !1082, line: 48, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !509, line: 133, baseType: !111)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1081, file: !1082, line: 53, baseType: !1087, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !509, line: 136, baseType: !111)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1081, file: !1082, line: 61, baseType: !1089, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !509, line: 139, baseType: !111)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1081, file: !1082, line: 62, baseType: !1091, size: 32, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !509, line: 138, baseType: !28)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1081, file: !1082, line: 64, baseType: !1093, size: 32, offset: 224)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !509, line: 134, baseType: !28)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1081, file: !1082, line: 65, baseType: !1095, size: 32, offset: 256)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !509, line: 135, baseType: !28)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1081, file: !1082, line: 67, baseType: !26, size: 32, offset: 288)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1081, file: !1082, line: 69, baseType: !1085, size: 64, offset: 320)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1081, file: !1082, line: 74, baseType: !1099, size: 64, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !509, line: 140, baseType: !1100)
!1100 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1081, file: !1082, line: 78, baseType: !1102, size: 64, offset: 448)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !509, line: 162, baseType: !1100)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1081, file: !1082, line: 80, baseType: !1104, size: 64, offset: 512)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !509, line: 167, baseType: !1100)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1081, file: !1082, line: 91, baseType: !1106, size: 128, offset: 576)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1107, line: 8, size: 128, elements: !1108)
!1107 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1108 = !{!1109, !1111}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1106, file: !1107, line: 10, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !509, line: 148, baseType: !1100)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1106, file: !1107, line: 11, baseType: !1112, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !509, line: 184, baseType: !1100)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1081, file: !1082, line: 92, baseType: !1106, size: 128, offset: 704)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1081, file: !1082, line: 93, baseType: !1106, size: 128, offset: 832)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1081, file: !1082, line: 106, baseType: !1116, size: 192, offset: 960)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1112, size: 192, elements: !1117)
!1117 = !{!1118}
!1118 = !DISubrange(count: 3)
!1119 = !DILocalVariable(name: "stat_spare", scope: !1074, file: !3, line: 280, type: !1081)
!1120 = !DILocalVariable(name: "r_is_l", scope: !1074, file: !3, line: 282, type: !69)
!1121 = !DILocalVariable(name: "lbuf", scope: !1122, file: !3, line: 305, type: !1126)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 304, column: 9)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 299, column: 11)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 297, column: 5)
!1125 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 296, column: 7)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 168, elements: !1127)
!1127 = !{!1128}
!1128 = !DISubrange(count: 21)
!1129 = !DILocalVariable(name: "rbuf", scope: !1122, file: !3, line: 306, type: !1126)
!1130 = !DILocalVariable(name: "l", scope: !1122, file: !3, line: 307, type: !41)
!1131 = !DILocalVariable(name: "r", scope: !1122, file: !3, line: 310, type: !41)
!1132 = !DILocalVariable(name: "cmp", scope: !1122, file: !3, line: 313, type: !26)
!1133 = !DILocalVariable(name: "xe_operator", scope: !1122, file: !3, line: 314, type: !69)
!1134 = !DILocalVariable(name: "lt", scope: !1135, file: !3, line: 330, type: !1106)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 328, column: 13)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 327, column: 15)
!1137 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 322, column: 9)
!1138 = !DILocalVariable(name: "rt", scope: !1135, file: !3, line: 330, type: !1106)
!1139 = !DILocalVariable(name: "le", scope: !1135, file: !3, line: 331, type: !69)
!1140 = !DILocalVariable(name: "re", scope: !1135, file: !3, line: 331, type: !69)
!1141 = !DILocalVariable(name: "lt", scope: !1142, file: !3, line: 359, type: !1106)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 357, column: 13)
!1143 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 356, column: 15)
!1144 = !DILocalVariable(name: "rt", scope: !1142, file: !3, line: 359, type: !1106)
!1145 = !DILocalVariable(name: "le", scope: !1142, file: !3, line: 360, type: !69)
!1146 = !DILocalVariable(name: "re", scope: !1142, file: !3, line: 360, type: !69)
!1147 = !DILocalVariable(name: "value", scope: !1148, file: !3, line: 378, type: !69)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 377, column: 5)
!1149 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 375, column: 7)
!1150 = !DILocalVariable(name: "value", scope: !1151, file: !3, line: 385, type: !69)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 384, column: 5)
!1152 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 383, column: 7)
!1153 = !DILocation(line: 277, column: 23, scope: !1074)
!1154 = !DILocation(line: 280, column: 3, scope: !1074)
!1155 = !DILocation(line: 284, column: 7, scope: !1074)
!1156 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 285, column: 5, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 284, column: 7)
!1159 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1157)
!1160 = !DILocation(line: 285, column: 5, scope: !1158)
!1161 = !DILocation(line: 286, column: 8, scope: !1074)
!1162 = !DILocation(line: 286, column: 12, scope: !1074)
!1163 = !DILocation(line: 279, column: 7, scope: !1074)
!1164 = !DILocation(line: 288, column: 13, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 288, column: 7)
!1166 = !DILocation(line: 288, column: 18, scope: !1165)
!1167 = !DILocation(line: 288, column: 11, scope: !1165)
!1168 = !DILocation(line: 288, column: 23, scope: !1165)
!1169 = !DILocation(line: 288, column: 26, scope: !1165)
!1170 = !DILocation(line: 288, column: 7, scope: !1074)
!1171 = !DILocation(line: 282, column: 8, scope: !1074)
!1172 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 291, column: 7, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 289, column: 5)
!1175 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1173)
!1176 = !DILocation(line: 292, column: 5, scope: !1174)
!1177 = !DILocation(line: 296, column: 7, scope: !1125)
!1178 = !DILocation(line: 296, column: 7, scope: !1074)
!1179 = !DILocation(line: 299, column: 14, scope: !1123)
!1180 = !DILocation(line: 299, column: 33, scope: !1123)
!1181 = !DILocation(line: 300, column: 17, scope: !1123)
!1182 = !DILocation(line: 300, column: 36, scope: !1123)
!1183 = !DILocation(line: 301, column: 38, scope: !1123)
!1184 = !DILocation(line: 301, column: 50, scope: !1123)
!1185 = !DILocation(line: 302, column: 12, scope: !1123)
!1186 = !DILocation(line: 302, column: 38, scope: !1123)
!1187 = !DILocation(line: 302, column: 50, scope: !1123)
!1188 = !DILocation(line: 303, column: 11, scope: !1123)
!1189 = !DILocation(line: 303, column: 15, scope: !1123)
!1190 = !DILocation(line: 299, column: 11, scope: !1124)
!1191 = !DILocation(line: 305, column: 11, scope: !1122)
!1192 = !DILocation(line: 305, column: 16, scope: !1122)
!1193 = !DILocation(line: 306, column: 11, scope: !1122)
!1194 = !DILocation(line: 306, column: 16, scope: !1122)
!1195 = !DILocation(line: 307, column: 28, scope: !1122)
!1196 = !DILocation(line: 308, column: 41, scope: !1122)
!1197 = !DILocation(line: 308, column: 30, scope: !1122)
!1198 = !DILocation(line: 309, column: 30, scope: !1122)
!1199 = !DILocation(line: 307, column: 23, scope: !1122)
!1200 = !DILocation(line: 310, column: 28, scope: !1122)
!1201 = !DILocation(line: 311, column: 57, scope: !1122)
!1202 = !DILocation(line: 311, column: 49, scope: !1122)
!1203 = !DILocation(line: 311, column: 41, scope: !1122)
!1204 = !DILocation(line: 311, column: 30, scope: !1122)
!1205 = !DILocation(line: 312, column: 48, scope: !1122)
!1206 = !DILocation(line: 312, column: 40, scope: !1122)
!1207 = !DILocation(line: 312, column: 30, scope: !1122)
!1208 = !DILocation(line: 310, column: 23, scope: !1122)
!1209 = !DILocation(line: 313, column: 21, scope: !1122)
!1210 = !DILocation(line: 313, column: 15, scope: !1122)
!1211 = !DILocation(line: 314, column: 31, scope: !1122)
!1212 = !DILocation(line: 314, column: 43, scope: !1122)
!1213 = !DILocation(line: 315, column: 15, scope: !1122)
!1214 = !DILocation(line: 316, column: 19, scope: !1122)
!1215 = !DILocation(line: 316, column: 46, scope: !1122)
!1216 = !DILocation(line: 316, column: 44, scope: !1122)
!1217 = !DILocation(line: 317, column: 48, scope: !1122)
!1218 = !DILocation(line: 317, column: 46, scope: !1122)
!1219 = !DILocation(line: 317, column: 21, scope: !1122)
!1220 = !DILocation(line: 318, column: 26, scope: !1122)
!1221 = !DILocation(line: 318, column: 32, scope: !1122)
!1222 = !DILocation(line: 319, column: 9, scope: !1123)
!1223 = !DILocation(line: 321, column: 15, scope: !1124)
!1224 = !DILocation(line: 321, column: 7, scope: !1124)
!1225 = !DILocation(line: 327, column: 15, scope: !1136)
!1226 = !DILocation(line: 327, column: 27, scope: !1136)
!1227 = !DILocation(line: 327, column: 34, scope: !1136)
!1228 = !DILocation(line: 327, column: 38, scope: !1136)
!1229 = !DILocation(line: 327, column: 15, scope: !1137)
!1230 = !DILocation(line: 332, column: 19, scope: !1135)
!1231 = !DILocation(line: 333, column: 26, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 333, column: 19)
!1233 = !DILocation(line: 334, column: 36, scope: !1232)
!1234 = !DILocation(line: 334, column: 17, scope: !1232)
!1235 = !DILocation(line: 335, column: 31, scope: !1135)
!1236 = !DILocation(line: 330, column: 31, scope: !1135)
!1237 = !DILocalVariable(name: "filename", arg: 1, scope: !1238, file: !3, line: 169, type: !41)
!1238 = distinct !DISubprogram(name: "get_mtime", scope: !3, file: !3, line: 169, type: !1239, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1242)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!69, !41, !1241}
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1242 = !{!1237, !1243, !1244, !1245}
!1243 = !DILocalVariable(name: "mtime", arg: 2, scope: !1238, file: !3, line: 169, type: !1241)
!1244 = !DILocalVariable(name: "finfo", scope: !1238, file: !3, line: 171, type: !1081)
!1245 = !DILocalVariable(name: "ok", scope: !1238, file: !3, line: 172, type: !69)
!1246 = !DILocation(line: 169, column: 24, scope: !1238, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 335, column: 20, scope: !1135)
!1248 = !DILocation(line: 169, column: 51, scope: !1238, inlinedAt: !1247)
!1249 = !DILocation(line: 171, column: 3, scope: !1238, inlinedAt: !1247)
!1250 = !DILocation(line: 171, column: 15, scope: !1238, inlinedAt: !1247)
!1251 = !DILocalVariable(name: "__path", arg: 1, scope: !1252, file: !1253, line: 449, type: !41)
!1252 = distinct !DISubprogram(name: "stat", scope: !1253, file: !1253, line: 449, type: !1254, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1257)
!1253 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!26, !41, !1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1257 = !{!1251, !1258}
!1258 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1252, file: !1253, line: 449, type: !1256)
!1259 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 172, column: 14, scope: !1238, inlinedAt: !1247)
!1261 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1260)
!1262 = !DILocation(line: 172, column: 38, scope: !1238, inlinedAt: !1247)
!1263 = !DILocalVariable(name: "st", arg: 1, scope: !1264, file: !1265, line: 140, type: !1268)
!1264 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1265, file: !1265, line: 140, type: !1266, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1270)
!1265 = !DIFile(filename: "./lib/stat-time.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!1106, !1268}
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1081)
!1270 = !{!1263}
!1271 = !DILocation(line: 140, column: 36, scope: !1264, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 178, column: 14, scope: !1273, inlinedAt: !1247)
!1273 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 177, column: 7)
!1274 = !DILocation(line: 143, column: 10, scope: !1264, inlinedAt: !1272)
!1275 = !DILocation(line: 180, column: 1, scope: !1238, inlinedAt: !1247)
!1276 = !DILocation(line: 336, column: 31, scope: !1135)
!1277 = !DILocation(line: 336, column: 39, scope: !1135)
!1278 = !DILocation(line: 330, column: 35, scope: !1135)
!1279 = !DILocation(line: 169, column: 24, scope: !1238, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 336, column: 20, scope: !1135)
!1281 = !DILocation(line: 169, column: 51, scope: !1238, inlinedAt: !1280)
!1282 = !DILocation(line: 171, column: 3, scope: !1238, inlinedAt: !1280)
!1283 = !DILocation(line: 171, column: 15, scope: !1238, inlinedAt: !1280)
!1284 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 172, column: 14, scope: !1238, inlinedAt: !1280)
!1286 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1285)
!1287 = !DILocation(line: 172, column: 38, scope: !1238, inlinedAt: !1280)
!1288 = !DILocation(line: 177, column: 7, scope: !1238, inlinedAt: !1280)
!1289 = !DILocation(line: 180, column: 1, scope: !1238, inlinedAt: !1280)
!1290 = !DILocation(line: 337, column: 25, scope: !1135)
!1291 = !DILocation(line: 140, column: 36, scope: !1264, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 178, column: 14, scope: !1273, inlinedAt: !1280)
!1293 = !DILocation(line: 143, column: 10, scope: !1264, inlinedAt: !1292)
!1294 = !DILocation(line: 80, column: 20, scope: !1295, inlinedAt: !1302)
!1295 = distinct !DISubprogram(name: "timespec_cmp", scope: !1296, file: !1296, line: 78, type: !1297, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1299)
!1296 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!26, !1106, !1106}
!1299 = !{!1300, !1301}
!1300 = !DILocalVariable(name: "a", arg: 1, scope: !1295, file: !1296, line: 78, type: !1106)
!1301 = !DILocalVariable(name: "b", arg: 2, scope: !1295, file: !1296, line: 78, type: !1106)
!1302 = distinct !DILocation(line: 337, column: 36, scope: !1135)
!1303 = !DIExpression(DW_OP_LLVM_fragment, 0, 64)
!1304 = !DILocation(line: 78, column: 31, scope: !1295, inlinedAt: !1302)
!1305 = !DIExpression(DW_OP_LLVM_fragment, 64, 64)
!1306 = !DILocation(line: 78, column: 50, scope: !1295, inlinedAt: !1302)
!1307 = !DILocation(line: 81, column: 22, scope: !1295, inlinedAt: !1302)
!1308 = !DILocation(line: 81, column: 13, scope: !1295, inlinedAt: !1302)
!1309 = !DILocation(line: 82, column: 30, scope: !1295, inlinedAt: !1302)
!1310 = !DILocation(line: 82, column: 13, scope: !1295, inlinedAt: !1302)
!1311 = !DILocation(line: 342, column: 15, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 342, column: 15)
!1313 = !DILocation(line: 342, column: 27, scope: !1312)
!1314 = !DILocation(line: 342, column: 34, scope: !1312)
!1315 = !DILocation(line: 342, column: 38, scope: !1312)
!1316 = !DILocation(line: 342, column: 15, scope: !1137)
!1317 = !DILocation(line: 345, column: 19, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 343, column: 13)
!1319 = !DILocation(line: 346, column: 26, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 346, column: 19)
!1321 = !DILocation(line: 347, column: 36, scope: !1320)
!1322 = !DILocation(line: 347, column: 17, scope: !1320)
!1323 = !DILocation(line: 348, column: 29, scope: !1318)
!1324 = !DILocation(line: 280, column: 15, scope: !1074)
!1325 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 348, column: 23, scope: !1318)
!1327 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1326)
!1328 = !DILocation(line: 348, column: 54, scope: !1318)
!1329 = !DILocation(line: 349, column: 23, scope: !1318)
!1330 = !DILocation(line: 349, column: 32, scope: !1318)
!1331 = !DILocation(line: 349, column: 40, scope: !1318)
!1332 = !DILocation(line: 280, column: 25, scope: !1074)
!1333 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 349, column: 26, scope: !1318)
!1335 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1334)
!1336 = !DILocation(line: 349, column: 59, scope: !1318)
!1337 = !DILocation(line: 350, column: 23, scope: !1318)
!1338 = !DILocation(line: 350, column: 35, scope: !1318)
!1339 = !{!1340, !1341, i64 0}
!1340 = !{!"stat", !1341, i64 0, !1341, i64 8, !1341, i64 16, !631, i64 24, !631, i64 28, !631, i64 32, !631, i64 36, !1341, i64 40, !1341, i64 48, !1341, i64 56, !1341, i64 64, !1342, i64 72, !1342, i64 88, !1342, i64 104, !573, i64 120}
!1341 = !{!"long", !573, i64 0}
!1342 = !{!"timespec", !1341, i64 0, !1341, i64 8}
!1343 = !DILocation(line: 350, column: 56, scope: !1318)
!1344 = !DILocation(line: 350, column: 42, scope: !1318)
!1345 = !DILocation(line: 351, column: 23, scope: !1318)
!1346 = !DILocation(line: 351, column: 35, scope: !1318)
!1347 = !{!1340, !1341, i64 8}
!1348 = !DILocation(line: 351, column: 56, scope: !1318)
!1349 = !DILocation(line: 351, column: 42, scope: !1318)
!1350 = !DILocation(line: 356, column: 22, scope: !1143)
!1351 = !DILocation(line: 356, column: 19, scope: !1143)
!1352 = !DILocation(line: 356, column: 34, scope: !1143)
!1353 = !DILocation(line: 356, column: 47, scope: !1143)
!1354 = !DILocation(line: 356, column: 44, scope: !1143)
!1355 = !DILocation(line: 356, column: 15, scope: !1137)
!1356 = !DILocation(line: 361, column: 19, scope: !1142)
!1357 = !DILocation(line: 362, column: 26, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 362, column: 19)
!1359 = !DILocation(line: 363, column: 36, scope: !1358)
!1360 = !DILocation(line: 363, column: 17, scope: !1358)
!1361 = !DILocation(line: 364, column: 31, scope: !1142)
!1362 = !DILocation(line: 359, column: 31, scope: !1142)
!1363 = !DILocation(line: 169, column: 24, scope: !1238, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 364, column: 20, scope: !1142)
!1365 = !DILocation(line: 169, column: 51, scope: !1238, inlinedAt: !1364)
!1366 = !DILocation(line: 171, column: 3, scope: !1238, inlinedAt: !1364)
!1367 = !DILocation(line: 171, column: 15, scope: !1238, inlinedAt: !1364)
!1368 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 172, column: 14, scope: !1238, inlinedAt: !1364)
!1370 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1369)
!1371 = !DILocation(line: 140, column: 36, scope: !1264, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 178, column: 14, scope: !1273, inlinedAt: !1364)
!1373 = !DILocation(line: 143, column: 10, scope: !1264, inlinedAt: !1372)
!1374 = !DILocation(line: 180, column: 1, scope: !1238, inlinedAt: !1364)
!1375 = !DILocation(line: 365, column: 31, scope: !1142)
!1376 = !DILocation(line: 365, column: 39, scope: !1142)
!1377 = !DILocation(line: 359, column: 35, scope: !1142)
!1378 = !DILocation(line: 169, column: 24, scope: !1238, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 365, column: 20, scope: !1142)
!1380 = !DILocation(line: 169, column: 51, scope: !1238, inlinedAt: !1379)
!1381 = !DILocation(line: 171, column: 3, scope: !1238, inlinedAt: !1379)
!1382 = !DILocation(line: 171, column: 15, scope: !1238, inlinedAt: !1379)
!1383 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 172, column: 14, scope: !1238, inlinedAt: !1379)
!1385 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1384)
!1386 = !DILocation(line: 172, column: 38, scope: !1238, inlinedAt: !1379)
!1387 = !DILocation(line: 177, column: 7, scope: !1238, inlinedAt: !1379)
!1388 = !DILocation(line: 180, column: 1, scope: !1238, inlinedAt: !1379)
!1389 = !DILocation(line: 366, column: 25, scope: !1142)
!1390 = !DILocation(line: 172, column: 38, scope: !1238, inlinedAt: !1364)
!1391 = !DILocation(line: 140, column: 36, scope: !1264, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 178, column: 14, scope: !1273, inlinedAt: !1379)
!1393 = !DILocation(line: 143, column: 10, scope: !1264, inlinedAt: !1392)
!1394 = !DILocation(line: 80, column: 20, scope: !1295, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 366, column: 36, scope: !1142)
!1396 = !DILocation(line: 78, column: 31, scope: !1295, inlinedAt: !1395)
!1397 = !DILocation(line: 78, column: 50, scope: !1295, inlinedAt: !1395)
!1398 = !DILocation(line: 81, column: 22, scope: !1295, inlinedAt: !1395)
!1399 = !DILocation(line: 81, column: 13, scope: !1295, inlinedAt: !1395)
!1400 = !DILocation(line: 82, column: 30, scope: !1295, inlinedAt: !1395)
!1401 = !DILocation(line: 82, column: 13, scope: !1295, inlinedAt: !1395)
!1402 = !DILocation(line: 372, column: 26, scope: !1124)
!1403 = !DILocation(line: 372, column: 67, scope: !1124)
!1404 = !DILocation(line: 372, column: 60, scope: !1124)
!1405 = !DILocation(line: 372, column: 7, scope: !1124)
!1406 = !DILocation(line: 376, column: 12, scope: !1149)
!1407 = !DILocation(line: 376, column: 24, scope: !1149)
!1408 = !DILocation(line: 376, column: 53, scope: !1149)
!1409 = !DILocation(line: 375, column: 7, scope: !1074)
!1410 = !DILocation(line: 378, column: 20, scope: !1148)
!1411 = !DILocation(line: 379, column: 11, scope: !1148)
!1412 = !DILocation(line: 383, column: 7, scope: !1152)
!1413 = !DILocation(line: 383, column: 7, scope: !1074)
!1414 = !DILocation(line: 385, column: 21, scope: !1151)
!1415 = !DILocation(line: 386, column: 11, scope: !1151)
!1416 = !DILocation(line: 391, column: 3, scope: !1074)
!1417 = !DILocation(line: 392, column: 1, scope: !1074)
!1418 = distinct !DISubprogram(name: "unary_operator", scope: !3, file: !3, line: 395, type: !663, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1419)
!1419 = !{!1420, !1421, !1426, !1427, !1430, !1431, !1433}
!1420 = !DILocalVariable(name: "stat_buf", scope: !1418, file: !3, line: 397, type: !1081)
!1421 = !DILocalVariable(name: "euid", scope: !1422, file: !3, line: 432, type: !1424)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 427, column: 7)
!1423 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 400, column: 5)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1425, line: 80, baseType: !1093)
!1425 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1426 = !DILocalVariable(name: "NO_UID", scope: !1422, file: !3, line: 433, type: !1424)
!1427 = !DILocalVariable(name: "egid", scope: !1428, file: !3, line: 443, type: !1429)
!1428 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 438, column: 7)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1425, line: 65, baseType: !1095)
!1430 = !DILocalVariable(name: "NO_GID", scope: !1428, file: !3, line: 444, type: !1429)
!1431 = !DILocalVariable(name: "fd", scope: !1432, file: !3, line: 510, type: !1100)
!1432 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 509, column: 7)
!1433 = !DILocalVariable(name: "arg", scope: !1432, file: !3, line: 511, type: !41)
!1434 = !DILocation(line: 397, column: 3, scope: !1418)
!1435 = !DILocation(line: 399, column: 11, scope: !1418)
!1436 = !DILocation(line: 399, column: 16, scope: !1418)
!1437 = !DILocation(line: 399, column: 3, scope: !1418)
!1438 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1441)
!1440 = distinct !DISubprogram(name: "unary_advance", scope: !3, file: !3, line: 114, type: !908, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !64)
!1441 = distinct !DILocation(line: 411, column: 7, scope: !1423)
!1442 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1439)
!1443 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1439)
!1444 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1439)
!1445 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1439)
!1446 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1439)
!1447 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1441)
!1448 = !DILocation(line: 412, column: 20, scope: !1423)
!1449 = !DILocation(line: 397, column: 15, scope: !1418)
!1450 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 412, column: 14, scope: !1423)
!1452 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1451)
!1453 = !DILocation(line: 412, column: 46, scope: !1423)
!1454 = !DILocation(line: 412, column: 7, scope: !1423)
!1455 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 415, column: 7, scope: !1423)
!1458 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1456)
!1459 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1456)
!1460 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1456)
!1461 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1456)
!1462 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1456)
!1463 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1457)
!1464 = !DILocation(line: 416, column: 26, scope: !1423)
!1465 = !DILocation(line: 416, column: 14, scope: !1423)
!1466 = !DILocation(line: 416, column: 47, scope: !1423)
!1467 = !DILocation(line: 416, column: 7, scope: !1423)
!1468 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 419, column: 7, scope: !1423)
!1471 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1469)
!1472 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1469)
!1473 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1469)
!1474 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1469)
!1475 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1469)
!1476 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1470)
!1477 = !DILocation(line: 420, column: 26, scope: !1423)
!1478 = !DILocation(line: 420, column: 14, scope: !1423)
!1479 = !DILocation(line: 420, column: 47, scope: !1423)
!1480 = !DILocation(line: 420, column: 7, scope: !1423)
!1481 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 423, column: 7, scope: !1423)
!1484 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1482)
!1485 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1482)
!1486 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1482)
!1487 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1482)
!1488 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1482)
!1489 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1483)
!1490 = !DILocation(line: 424, column: 26, scope: !1423)
!1491 = !DILocation(line: 424, column: 14, scope: !1423)
!1492 = !DILocation(line: 424, column: 47, scope: !1423)
!1493 = !DILocation(line: 424, column: 7, scope: !1423)
!1494 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 428, column: 9, scope: !1422)
!1497 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1495)
!1498 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1495)
!1499 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1495)
!1500 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1495)
!1501 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1495)
!1502 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1496)
!1503 = !DILocation(line: 429, column: 19, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 429, column: 13)
!1505 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1506)
!1506 = distinct !DILocation(line: 429, column: 13, scope: !1504)
!1507 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1506)
!1508 = !DILocation(line: 429, column: 45, scope: !1504)
!1509 = !DILocation(line: 429, column: 13, scope: !1422)
!1510 = !DILocation(line: 431, column: 9, scope: !1422)
!1511 = !DILocation(line: 431, column: 15, scope: !1422)
!1512 = !DILocation(line: 432, column: 22, scope: !1422)
!1513 = !DILocation(line: 432, column: 15, scope: !1422)
!1514 = !DILocation(line: 433, column: 15, scope: !1422)
!1515 = !DILocation(line: 434, column: 24, scope: !1422)
!1516 = !DILocation(line: 434, column: 34, scope: !1422)
!1517 = !DILocation(line: 434, column: 37, scope: !1422)
!1518 = !DILocation(line: 434, column: 44, scope: !1422)
!1519 = !DILocation(line: 434, column: 64, scope: !1422)
!1520 = !{!1340, !631, i64 28}
!1521 = !DILocation(line: 434, column: 52, scope: !1422)
!1522 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 439, column: 9, scope: !1428)
!1525 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1523)
!1526 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1523)
!1527 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1523)
!1528 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1523)
!1529 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1523)
!1530 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1524)
!1531 = !DILocation(line: 440, column: 19, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 440, column: 13)
!1533 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 440, column: 13, scope: !1532)
!1535 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1534)
!1536 = !DILocation(line: 440, column: 45, scope: !1532)
!1537 = !DILocation(line: 440, column: 13, scope: !1428)
!1538 = !DILocation(line: 442, column: 9, scope: !1428)
!1539 = !DILocation(line: 442, column: 15, scope: !1428)
!1540 = !DILocation(line: 443, column: 22, scope: !1428)
!1541 = !DILocation(line: 443, column: 15, scope: !1428)
!1542 = !DILocation(line: 444, column: 15, scope: !1428)
!1543 = !DILocation(line: 445, column: 24, scope: !1428)
!1544 = !DILocation(line: 445, column: 34, scope: !1428)
!1545 = !DILocation(line: 445, column: 37, scope: !1428)
!1546 = !DILocation(line: 445, column: 44, scope: !1428)
!1547 = !DILocation(line: 445, column: 64, scope: !1428)
!1548 = !{!1340, !631, i64 32}
!1549 = !DILocation(line: 445, column: 52, scope: !1428)
!1550 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 449, column: 7, scope: !1423)
!1553 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1551)
!1554 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1551)
!1555 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1551)
!1556 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1551)
!1557 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1551)
!1558 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1552)
!1559 = !DILocation(line: 452, column: 21, scope: !1423)
!1560 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 452, column: 15, scope: !1423)
!1562 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1561)
!1563 = !DILocation(line: 452, column: 47, scope: !1423)
!1564 = !DILocation(line: 453, column: 15, scope: !1423)
!1565 = !DILocation(line: 453, column: 18, scope: !1423)
!1566 = !{!1340, !631, i64 24}
!1567 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1568)
!1568 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 456, column: 7, scope: !1423)
!1570 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1568)
!1571 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1568)
!1572 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1568)
!1573 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1568)
!1574 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1568)
!1575 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1569)
!1576 = !DILocation(line: 457, column: 21, scope: !1423)
!1577 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 457, column: 15, scope: !1423)
!1579 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1578)
!1580 = !DILocation(line: 457, column: 47, scope: !1423)
!1581 = !DILocation(line: 458, column: 15, scope: !1423)
!1582 = !DILocation(line: 458, column: 18, scope: !1423)
!1583 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 461, column: 7, scope: !1423)
!1586 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1584)
!1587 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1584)
!1588 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1584)
!1589 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1584)
!1590 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1584)
!1591 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1585)
!1592 = !DILocation(line: 462, column: 21, scope: !1423)
!1593 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1594)
!1594 = distinct !DILocation(line: 462, column: 15, scope: !1423)
!1595 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1594)
!1596 = !DILocation(line: 462, column: 47, scope: !1423)
!1597 = !DILocation(line: 463, column: 31, scope: !1423)
!1598 = !DILocation(line: 463, column: 20, scope: !1423)
!1599 = !DILocation(line: 463, column: 15, scope: !1423)
!1600 = !DILocation(line: 462, column: 7, scope: !1423)
!1601 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1603)
!1603 = distinct !DILocation(line: 466, column: 7, scope: !1423)
!1604 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1602)
!1605 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1602)
!1606 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1602)
!1607 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1602)
!1608 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1602)
!1609 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1603)
!1610 = !DILocation(line: 467, column: 21, scope: !1423)
!1611 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 467, column: 15, scope: !1423)
!1613 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1612)
!1614 = !DILocation(line: 467, column: 47, scope: !1423)
!1615 = !DILocation(line: 468, column: 15, scope: !1423)
!1616 = !DILocation(line: 468, column: 18, scope: !1423)
!1617 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 471, column: 7, scope: !1423)
!1620 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1618)
!1621 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1618)
!1622 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1618)
!1623 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1618)
!1624 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1618)
!1625 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1619)
!1626 = !DILocation(line: 472, column: 21, scope: !1423)
!1627 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 472, column: 15, scope: !1423)
!1629 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1628)
!1630 = !DILocation(line: 472, column: 47, scope: !1423)
!1631 = !DILocation(line: 473, column: 15, scope: !1423)
!1632 = !DILocation(line: 473, column: 18, scope: !1423)
!1633 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 476, column: 7, scope: !1423)
!1636 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1634)
!1637 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1634)
!1638 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1634)
!1639 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1634)
!1640 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1634)
!1641 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1635)
!1642 = !DILocation(line: 477, column: 21, scope: !1423)
!1643 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 477, column: 15, scope: !1423)
!1645 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1644)
!1646 = !DILocation(line: 477, column: 47, scope: !1423)
!1647 = !DILocation(line: 478, column: 15, scope: !1423)
!1648 = !DILocation(line: 478, column: 18, scope: !1423)
!1649 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 481, column: 7, scope: !1423)
!1652 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1650)
!1653 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1650)
!1654 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1650)
!1655 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1650)
!1656 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1650)
!1657 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1651)
!1658 = !DILocation(line: 482, column: 21, scope: !1423)
!1659 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 482, column: 15, scope: !1423)
!1661 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1660)
!1662 = !DILocation(line: 482, column: 47, scope: !1423)
!1663 = !DILocation(line: 483, column: 15, scope: !1423)
!1664 = !DILocation(line: 483, column: 18, scope: !1423)
!1665 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 489, column: 7, scope: !1423)
!1668 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1666)
!1669 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1666)
!1670 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1666)
!1671 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1666)
!1672 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1666)
!1673 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1667)
!1674 = !DILocation(line: 490, column: 22, scope: !1423)
!1675 = !DILocalVariable(name: "__path", arg: 1, scope: !1676, file: !1253, line: 456, type: !41)
!1676 = distinct !DISubprogram(name: "lstat", scope: !1253, file: !1253, line: 456, type: !1254, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1677)
!1677 = !{!1675, !1678}
!1678 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1676, file: !1253, line: 456, type: !1256)
!1679 = !DILocation(line: 456, column: 1, scope: !1676, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 490, column: 15, scope: !1423)
!1681 = !DILocation(line: 458, column: 10, scope: !1676, inlinedAt: !1680)
!1682 = !DILocation(line: 490, column: 48, scope: !1423)
!1683 = !DILocation(line: 491, column: 15, scope: !1423)
!1684 = !DILocation(line: 491, column: 18, scope: !1423)
!1685 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 494, column: 7, scope: !1423)
!1688 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1686)
!1689 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1686)
!1690 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1686)
!1691 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1686)
!1692 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1686)
!1693 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1687)
!1694 = !DILocation(line: 495, column: 21, scope: !1423)
!1695 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 495, column: 15, scope: !1423)
!1697 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1696)
!1698 = !DILocation(line: 495, column: 47, scope: !1423)
!1699 = !DILocation(line: 496, column: 15, scope: !1423)
!1700 = !DILocation(line: 496, column: 28, scope: !1423)
!1701 = !DILocation(line: 496, column: 36, scope: !1423)
!1702 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 499, column: 7, scope: !1423)
!1705 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1703)
!1706 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1703)
!1707 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1703)
!1708 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1703)
!1709 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1703)
!1710 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1704)
!1711 = !DILocation(line: 500, column: 21, scope: !1423)
!1712 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 500, column: 15, scope: !1423)
!1714 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1713)
!1715 = !DILocation(line: 500, column: 47, scope: !1423)
!1716 = !DILocation(line: 501, column: 15, scope: !1423)
!1717 = !DILocation(line: 501, column: 28, scope: !1423)
!1718 = !DILocation(line: 501, column: 36, scope: !1423)
!1719 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 504, column: 7, scope: !1423)
!1722 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1720)
!1723 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1720)
!1724 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1720)
!1725 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1720)
!1726 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1720)
!1727 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1721)
!1728 = !DILocation(line: 505, column: 21, scope: !1423)
!1729 = !DILocation(line: 449, column: 1, scope: !1252, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 505, column: 15, scope: !1423)
!1731 = !DILocation(line: 451, column: 10, scope: !1252, inlinedAt: !1730)
!1732 = !DILocation(line: 505, column: 47, scope: !1423)
!1733 = !DILocation(line: 506, column: 15, scope: !1423)
!1734 = !DILocation(line: 506, column: 28, scope: !1423)
!1735 = !DILocation(line: 506, column: 36, scope: !1423)
!1736 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 512, column: 9, scope: !1432)
!1739 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1737)
!1740 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1737)
!1741 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1737)
!1742 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1737)
!1743 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1737)
!1744 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1738)
!1745 = !DILocation(line: 513, column: 25, scope: !1432)
!1746 = !DILocation(line: 513, column: 15, scope: !1432)
!1747 = !DILocation(line: 511, column: 21, scope: !1432)
!1748 = !DILocation(line: 514, column: 9, scope: !1432)
!1749 = !DILocation(line: 514, column: 15, scope: !1432)
!1750 = !DILocation(line: 515, column: 14, scope: !1432)
!1751 = !DILocation(line: 510, column: 18, scope: !1432)
!1752 = !DILocation(line: 516, column: 17, scope: !1432)
!1753 = !DILocation(line: 516, column: 23, scope: !1432)
!1754 = !DILocation(line: 516, column: 33, scope: !1432)
!1755 = !DILocation(line: 516, column: 72, scope: !1432)
!1756 = !DILocation(line: 516, column: 64, scope: !1432)
!1757 = !DILocation(line: 516, column: 61, scope: !1432)
!1758 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 520, column: 7, scope: !1423)
!1761 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1759)
!1762 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1759)
!1763 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1759)
!1764 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1759)
!1765 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1759)
!1766 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1760)
!1767 = !DILocation(line: 521, column: 14, scope: !1423)
!1768 = !DILocation(line: 521, column: 31, scope: !1423)
!1769 = !DILocation(line: 521, column: 7, scope: !1423)
!1770 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 116, column: 3, scope: !1440, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 524, column: 7, scope: !1423)
!1773 = !DILocation(line: 107, column: 3, scope: !679, inlinedAt: !1771)
!1774 = !DILocation(line: 109, column: 19, scope: !688, inlinedAt: !1771)
!1775 = !DILocation(line: 109, column: 16, scope: !688, inlinedAt: !1771)
!1776 = !DILocation(line: 109, column: 9, scope: !688, inlinedAt: !1771)
!1777 = !DILocation(line: 110, column: 5, scope: !688, inlinedAt: !1771)
!1778 = !DILocation(line: 117, column: 3, scope: !1440, inlinedAt: !1772)
!1779 = !DILocation(line: 525, column: 14, scope: !1423)
!1780 = !DILocation(line: 525, column: 31, scope: !1423)
!1781 = !DILocation(line: 525, column: 7, scope: !1423)
!1782 = !DILocation(line: 527, column: 1, scope: !1418)
!1783 = distinct !DISubprogram(name: "find_int", scope: !3, file: !3, line: 134, type: !1784, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1786)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!41, !41}
!1786 = !{!1787, !1788, !1789}
!1787 = !DILocalVariable(name: "string", arg: 1, scope: !1783, file: !3, line: 134, type: !41)
!1788 = !DILocalVariable(name: "p", scope: !1783, file: !3, line: 136, type: !41)
!1789 = !DILocalVariable(name: "number_start", scope: !1783, file: !3, line: 137, type: !41)
!1790 = !DILocation(line: 134, column: 23, scope: !1783)
!1791 = !DILocation(line: 136, column: 15, scope: !1783)
!1792 = !DILocation(line: 139, column: 20, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 139, column: 3)
!1794 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 139, column: 3)
!1795 = !DILocation(line: 139, column: 8, scope: !1794)
!1796 = !{!1797, !1797, i64 0}
!1797 = !{!"short", !573, i64 0}
!1798 = !DILocation(line: 139, column: 3, scope: !1794)
!1799 = !DILocation(line: 139, column: 46, scope: !1793)
!1800 = distinct !{!1800, !1798, !1801}
!1801 = !DILocation(line: 140, column: 5, scope: !1794)
!1802 = !DILocation(line: 142, column: 10, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 142, column: 7)
!1804 = !DILocation(line: 137, column: 15, scope: !1783)
!1805 = !DILocation(line: 150, column: 16, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 148, column: 5)
!1807 = !DILocation(line: 150, column: 9, scope: !1806)
!1808 = !DILocation(line: 142, column: 7, scope: !1783)
!1809 = !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)
!1810 = !DILocation(line: 153, column: 7, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 153, column: 7)
!1812 = !DILocation(line: 153, column: 7, scope: !1783)
!1813 = !DILocation(line: 155, column: 14, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 154, column: 5)
!1815 = !DILocation(line: 155, column: 7, scope: !1814)
!1816 = distinct !{!1816, !1815, !1817}
!1817 = !DILocation(line: 156, column: 10, scope: !1814)
!1818 = !DILocation(line: 157, column: 14, scope: !1814)
!1819 = !DILocation(line: 157, column: 7, scope: !1814)
!1820 = !DILocation(line: 158, column: 10, scope: !1814)
!1821 = distinct !{!1821, !1819, !1820}
!1822 = !DILocation(line: 159, column: 12, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 159, column: 11)
!1824 = !DILocation(line: 159, column: 11, scope: !1814)
!1825 = !DILocation(line: 160, column: 9, scope: !1823)
!1826 = !DILocation(line: 163, column: 22, scope: !1783)
!1827 = !DILocation(line: 163, column: 47, scope: !1783)
!1828 = !DILocation(line: 163, column: 3, scope: !1783)
!1829 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !68, file: !68, line: 41, type: !39, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !62, variables: !1830)
!1830 = !{!1831}
!1831 = !DILocalVariable(name: "file", arg: 1, scope: !1829, file: !68, line: 41, type: !41)
!1832 = !DILocation(line: 41, column: 41, scope: !1829)
!1833 = !DILocation(line: 43, column: 13, scope: !1829)
!1834 = !DILocation(line: 44, column: 1, scope: !1829)
!1835 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !68, file: !68, line: 78, type: !680, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !62, variables: !1836)
!1836 = !{!1837}
!1837 = !DILocalVariable(name: "ignore", arg: 1, scope: !1835, file: !68, line: 78, type: !69)
!1838 = !DILocation(line: 78, column: 37, scope: !1835)
!1839 = !DILocation(line: 80, column: 16, scope: !1835)
!1840 = !{!1841, !1841, i64 0}
!1841 = !{!"_Bool", !573, i64 0}
!1842 = !DILocation(line: 81, column: 1, scope: !1835)
!1843 = distinct !DISubprogram(name: "close_stdout", scope: !68, file: !68, line: 107, type: !908, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !62, variables: !1844)
!1844 = !{!1845}
!1845 = !DILocalVariable(name: "write_error", scope: !1846, file: !68, line: 112, type: !41)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !68, line: 111, column: 5)
!1847 = distinct !DILexicalBlock(scope: !1843, file: !68, line: 109, column: 7)
!1848 = !DILocation(line: 109, column: 21, scope: !1847)
!1849 = !DILocation(line: 109, column: 7, scope: !1847)
!1850 = !DILocation(line: 109, column: 29, scope: !1847)
!1851 = !DILocation(line: 110, column: 7, scope: !1847)
!1852 = !DILocation(line: 110, column: 12, scope: !1847)
!1853 = !{i8 0, i8 2}
!1854 = !DILocation(line: 114, column: 19, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1846, file: !68, line: 113, column: 11)
!1856 = !DILocation(line: 110, column: 25, scope: !1847)
!1857 = !DILocation(line: 110, column: 28, scope: !1847)
!1858 = !DILocation(line: 110, column: 34, scope: !1847)
!1859 = !DILocation(line: 109, column: 7, scope: !1843)
!1860 = !DILocation(line: 112, column: 33, scope: !1846)
!1861 = !DILocation(line: 112, column: 19, scope: !1846)
!1862 = !DILocation(line: 113, column: 11, scope: !1855)
!1863 = !DILocation(line: 113, column: 11, scope: !1846)
!1864 = !DILocation(line: 114, column: 36, scope: !1855)
!1865 = !DILocation(line: 114, column: 9, scope: !1855)
!1866 = !DILocation(line: 117, column: 9, scope: !1855)
!1867 = !DILocation(line: 119, column: 14, scope: !1846)
!1868 = !DILocation(line: 119, column: 7, scope: !1846)
!1869 = !DILocation(line: 122, column: 22, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1843, file: !68, line: 122, column: 8)
!1871 = !DILocation(line: 122, column: 8, scope: !1870)
!1872 = !DILocation(line: 122, column: 30, scope: !1870)
!1873 = !DILocation(line: 122, column: 8, scope: !1843)
!1874 = !DILocation(line: 123, column: 13, scope: !1870)
!1875 = !DILocation(line: 123, column: 6, scope: !1870)
!1876 = !DILocation(line: 124, column: 1, scope: !1843)
!1877 = distinct !DISubprogram(name: "umaxtostr", scope: !1878, file: !1878, line: 36, type: !1879, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !503, variables: !1881)
!1878 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!59, !506, !59}
!1881 = !{!1882, !1883, !1884}
!1882 = !DILocalVariable(name: "i", arg: 1, scope: !1877, file: !1878, line: 36, type: !506)
!1883 = !DILocalVariable(name: "buf", arg: 2, scope: !1877, file: !1878, line: 36, type: !59)
!1884 = !DILocalVariable(name: "p", scope: !1877, file: !1878, line: 38, type: !59)
!1885 = !DILocation(line: 36, column: 19, scope: !1877)
!1886 = !DILocation(line: 36, column: 28, scope: !1877)
!1887 = !DILocation(line: 38, column: 17, scope: !1877)
!1888 = !DILocation(line: 38, column: 9, scope: !1877)
!1889 = !DILocation(line: 39, column: 6, scope: !1877)
!1890 = !DILocation(line: 51, column: 7, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !1878, line: 50, column: 5)
!1892 = distinct !DILexicalBlock(scope: !1877, file: !1878, line: 41, column: 7)
!1893 = distinct !{!1893, !1890, !1894}
!1894 = !DILocation(line: 53, column: 28, scope: !1891)
!1895 = !DILocation(line: 52, column: 24, scope: !1891)
!1896 = !DILocation(line: 52, column: 16, scope: !1891)
!1897 = !DILocation(line: 52, column: 10, scope: !1891)
!1898 = !DILocation(line: 52, column: 14, scope: !1891)
!1899 = !DILocation(line: 53, column: 17, scope: !1891)
!1900 = !DILocation(line: 53, column: 24, scope: !1891)
!1901 = !DILocation(line: 52, column: 9, scope: !1891)
!1902 = !DILocation(line: 56, column: 3, scope: !1877)
!1903 = distinct !DISubprogram(name: "set_program_name", scope: !83, file: !83, line: 39, type: !39, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1904)
!1904 = !{!1905, !1906, !1907}
!1905 = !DILocalVariable(name: "argv0", arg: 1, scope: !1903, file: !83, line: 39, type: !41)
!1906 = !DILocalVariable(name: "slash", scope: !1903, file: !83, line: 46, type: !41)
!1907 = !DILocalVariable(name: "base", scope: !1903, file: !83, line: 47, type: !41)
!1908 = !DILocation(line: 39, column: 31, scope: !1903)
!1909 = !DILocation(line: 51, column: 13, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1903, file: !83, line: 51, column: 7)
!1911 = !DILocation(line: 51, column: 7, scope: !1903)
!1912 = !DILocation(line: 55, column: 14, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1910, file: !83, line: 52, column: 5)
!1914 = !DILocation(line: 54, column: 7, scope: !1913)
!1915 = !DILocation(line: 56, column: 7, scope: !1913)
!1916 = !DILocation(line: 59, column: 11, scope: !1903)
!1917 = !DILocation(line: 46, column: 15, scope: !1903)
!1918 = !DILocation(line: 60, column: 17, scope: !1903)
!1919 = !DILocation(line: 60, column: 33, scope: !1903)
!1920 = !DILocation(line: 60, column: 11, scope: !1903)
!1921 = !DILocation(line: 47, column: 15, scope: !1903)
!1922 = !DILocation(line: 61, column: 12, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1903, file: !83, line: 61, column: 7)
!1924 = !DILocation(line: 61, column: 20, scope: !1923)
!1925 = !DILocation(line: 61, column: 25, scope: !1923)
!1926 = !DILocation(line: 61, column: 42, scope: !1923)
!1927 = !DILocation(line: 61, column: 28, scope: !1923)
!1928 = !DILocation(line: 61, column: 61, scope: !1923)
!1929 = !DILocation(line: 61, column: 7, scope: !1903)
!1930 = !DILocation(line: 64, column: 11, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !83, line: 64, column: 11)
!1932 = distinct !DILexicalBlock(scope: !1923, file: !83, line: 62, column: 5)
!1933 = !DILocation(line: 64, column: 36, scope: !1931)
!1934 = !DILocation(line: 64, column: 11, scope: !1932)
!1935 = !DILocation(line: 66, column: 24, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1931, file: !83, line: 65, column: 9)
!1937 = !DILocation(line: 70, column: 41, scope: !1936)
!1938 = !DILocation(line: 72, column: 9, scope: !1936)
!1939 = !DILocation(line: 84, column: 16, scope: !1903)
!1940 = !DILocation(line: 90, column: 27, scope: !1903)
!1941 = !DILocation(line: 92, column: 1, scope: !1903)
!1942 = distinct !DISubprogram(name: "clone_quoting_options", scope: !115, file: !115, line: 114, type: !1943, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1946)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1945, !1945}
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!1946 = !{!1947, !1948, !1949}
!1947 = !DILocalVariable(name: "o", arg: 1, scope: !1942, file: !115, line: 114, type: !1945)
!1948 = !DILocalVariable(name: "e", scope: !1942, file: !115, line: 116, type: !26)
!1949 = !DILocalVariable(name: "p", scope: !1942, file: !115, line: 117, type: !1945)
!1950 = !DILocation(line: 114, column: 48, scope: !1942)
!1951 = !DILocation(line: 116, column: 11, scope: !1942)
!1952 = !DILocation(line: 116, column: 7, scope: !1942)
!1953 = !DILocation(line: 117, column: 40, scope: !1942)
!1954 = !DILocation(line: 117, column: 31, scope: !1942)
!1955 = !DILocation(line: 117, column: 27, scope: !1942)
!1956 = !DILocation(line: 119, column: 9, scope: !1942)
!1957 = !DILocation(line: 120, column: 3, scope: !1942)
!1958 = distinct !DISubprogram(name: "get_quoting_style", scope: !115, file: !115, line: 125, type: !1959, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1963)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!89, !1961}
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!1963 = !{!1964}
!1964 = !DILocalVariable(name: "o", arg: 1, scope: !1958, file: !115, line: 125, type: !1961)
!1965 = !DILocation(line: 125, column: 50, scope: !1958)
!1966 = !DILocation(line: 127, column: 11, scope: !1958)
!1967 = !DILocation(line: 127, column: 46, scope: !1958)
!1968 = !{!1969, !573, i64 0}
!1969 = !{!"quoting_options", !573, i64 0, !631, i64 4, !573, i64 8, !572, i64 40, !572, i64 48}
!1970 = !DILocation(line: 127, column: 3, scope: !1958)
!1971 = distinct !DISubprogram(name: "set_quoting_style", scope: !115, file: !115, line: 133, type: !1972, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{null, !1945, !89}
!1974 = !{!1975, !1976}
!1975 = !DILocalVariable(name: "o", arg: 1, scope: !1971, file: !115, line: 133, type: !1945)
!1976 = !DILocalVariable(name: "s", arg: 2, scope: !1971, file: !115, line: 133, type: !89)
!1977 = !DILocation(line: 133, column: 44, scope: !1971)
!1978 = !DILocation(line: 133, column: 66, scope: !1971)
!1979 = !DILocation(line: 135, column: 4, scope: !1971)
!1980 = !DILocation(line: 135, column: 39, scope: !1971)
!1981 = !DILocation(line: 135, column: 45, scope: !1971)
!1982 = !DILocation(line: 136, column: 1, scope: !1971)
!1983 = distinct !DISubprogram(name: "set_char_quoting", scope: !115, file: !115, line: 144, type: !1984, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1986)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!26, !1945, !43, !26}
!1986 = !{!1987, !1988, !1989, !1990, !1991, !1993, !1994}
!1987 = !DILocalVariable(name: "o", arg: 1, scope: !1983, file: !115, line: 144, type: !1945)
!1988 = !DILocalVariable(name: "c", arg: 2, scope: !1983, file: !115, line: 144, type: !43)
!1989 = !DILocalVariable(name: "i", arg: 3, scope: !1983, file: !115, line: 144, type: !26)
!1990 = !DILocalVariable(name: "uc", scope: !1983, file: !115, line: 146, type: !499)
!1991 = !DILocalVariable(name: "p", scope: !1983, file: !115, line: 147, type: !1992)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!1993 = !DILocalVariable(name: "shift", scope: !1983, file: !115, line: 149, type: !26)
!1994 = !DILocalVariable(name: "r", scope: !1983, file: !115, line: 150, type: !26)
!1995 = !DILocation(line: 144, column: 43, scope: !1983)
!1996 = !DILocation(line: 144, column: 51, scope: !1983)
!1997 = !DILocation(line: 144, column: 58, scope: !1983)
!1998 = !DILocation(line: 146, column: 17, scope: !1983)
!1999 = !DILocation(line: 148, column: 6, scope: !1983)
!2000 = !DILocation(line: 148, column: 62, scope: !1983)
!2001 = !DILocation(line: 148, column: 57, scope: !1983)
!2002 = !DILocation(line: 147, column: 17, scope: !1983)
!2003 = !DILocation(line: 149, column: 18, scope: !1983)
!2004 = !DILocation(line: 149, column: 15, scope: !1983)
!2005 = !DILocation(line: 149, column: 7, scope: !1983)
!2006 = !DILocation(line: 150, column: 12, scope: !1983)
!2007 = !DILocation(line: 150, column: 15, scope: !1983)
!2008 = !DILocation(line: 150, column: 25, scope: !1983)
!2009 = !DILocation(line: 150, column: 7, scope: !1983)
!2010 = !DILocation(line: 151, column: 13, scope: !1983)
!2011 = !DILocation(line: 151, column: 18, scope: !1983)
!2012 = !DILocation(line: 151, column: 23, scope: !1983)
!2013 = !DILocation(line: 151, column: 6, scope: !1983)
!2014 = !DILocation(line: 152, column: 3, scope: !1983)
!2015 = distinct !DISubprogram(name: "set_quoting_flags", scope: !115, file: !115, line: 160, type: !2016, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2018)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!26, !1945, !26}
!2018 = !{!2019, !2020, !2021}
!2019 = !DILocalVariable(name: "o", arg: 1, scope: !2015, file: !115, line: 160, type: !1945)
!2020 = !DILocalVariable(name: "i", arg: 2, scope: !2015, file: !115, line: 160, type: !26)
!2021 = !DILocalVariable(name: "r", scope: !2015, file: !115, line: 162, type: !26)
!2022 = !DILocation(line: 160, column: 44, scope: !2015)
!2023 = !DILocation(line: 160, column: 51, scope: !2015)
!2024 = !DILocation(line: 163, column: 8, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2015, file: !115, line: 163, column: 7)
!2026 = !DILocation(line: 163, column: 7, scope: !2015)
!2027 = !DILocation(line: 165, column: 10, scope: !2015)
!2028 = !{!1969, !631, i64 4}
!2029 = !DILocation(line: 162, column: 7, scope: !2015)
!2030 = !DILocation(line: 166, column: 12, scope: !2015)
!2031 = !DILocation(line: 167, column: 3, scope: !2015)
!2032 = distinct !DISubprogram(name: "set_custom_quoting", scope: !115, file: !115, line: 171, type: !2033, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2035)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null, !1945, !41, !41}
!2035 = !{!2036, !2037, !2038}
!2036 = !DILocalVariable(name: "o", arg: 1, scope: !2032, file: !115, line: 171, type: !1945)
!2037 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2032, file: !115, line: 172, type: !41)
!2038 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2032, file: !115, line: 172, type: !41)
!2039 = !DILocation(line: 171, column: 45, scope: !2032)
!2040 = !DILocation(line: 172, column: 33, scope: !2032)
!2041 = !DILocation(line: 172, column: 57, scope: !2032)
!2042 = !DILocation(line: 174, column: 8, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2032, file: !115, line: 174, column: 7)
!2044 = !DILocation(line: 174, column: 7, scope: !2032)
!2045 = !DILocation(line: 176, column: 6, scope: !2032)
!2046 = !DILocation(line: 176, column: 12, scope: !2032)
!2047 = !DILocation(line: 177, column: 8, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2032, file: !115, line: 177, column: 7)
!2049 = !DILocation(line: 177, column: 23, scope: !2048)
!2050 = !DILocation(line: 177, column: 19, scope: !2048)
!2051 = !DILocation(line: 178, column: 5, scope: !2048)
!2052 = !DILocation(line: 179, column: 6, scope: !2032)
!2053 = !DILocation(line: 179, column: 17, scope: !2032)
!2054 = !{!1969, !572, i64 40}
!2055 = !DILocation(line: 180, column: 6, scope: !2032)
!2056 = !DILocation(line: 180, column: 18, scope: !2032)
!2057 = !{!1969, !572, i64 48}
!2058 = !DILocation(line: 181, column: 1, scope: !2032)
!2059 = distinct !DISubprogram(name: "quotearg_buffer", scope: !115, file: !115, line: 776, type: !2060, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2062)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!109, !59, !109, !41, !109, !1961}
!2062 = !{!2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070}
!2063 = !DILocalVariable(name: "buffer", arg: 1, scope: !2059, file: !115, line: 776, type: !59)
!2064 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2059, file: !115, line: 776, type: !109)
!2065 = !DILocalVariable(name: "arg", arg: 3, scope: !2059, file: !115, line: 777, type: !41)
!2066 = !DILocalVariable(name: "argsize", arg: 4, scope: !2059, file: !115, line: 777, type: !109)
!2067 = !DILocalVariable(name: "o", arg: 5, scope: !2059, file: !115, line: 778, type: !1961)
!2068 = !DILocalVariable(name: "p", scope: !2059, file: !115, line: 780, type: !1961)
!2069 = !DILocalVariable(name: "e", scope: !2059, file: !115, line: 781, type: !26)
!2070 = !DILocalVariable(name: "r", scope: !2059, file: !115, line: 782, type: !109)
!2071 = !DILocation(line: 776, column: 24, scope: !2059)
!2072 = !DILocation(line: 776, column: 39, scope: !2059)
!2073 = !DILocation(line: 777, column: 30, scope: !2059)
!2074 = !DILocation(line: 777, column: 42, scope: !2059)
!2075 = !DILocation(line: 778, column: 48, scope: !2059)
!2076 = !DILocation(line: 780, column: 37, scope: !2059)
!2077 = !DILocation(line: 780, column: 33, scope: !2059)
!2078 = !DILocation(line: 781, column: 11, scope: !2059)
!2079 = !DILocation(line: 781, column: 7, scope: !2059)
!2080 = !DILocation(line: 783, column: 43, scope: !2059)
!2081 = !DILocation(line: 783, column: 53, scope: !2059)
!2082 = !DILocation(line: 783, column: 60, scope: !2059)
!2083 = !DILocation(line: 784, column: 43, scope: !2059)
!2084 = !DILocation(line: 784, column: 58, scope: !2059)
!2085 = !DILocation(line: 782, column: 14, scope: !2059)
!2086 = !DILocation(line: 782, column: 10, scope: !2059)
!2087 = !DILocation(line: 785, column: 9, scope: !2059)
!2088 = !DILocation(line: 786, column: 3, scope: !2059)
!2089 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !115, file: !115, line: 248, type: !2090, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2094)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!109, !59, !109, !41, !109, !89, !26, !2092, !41, !41}
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2119, !2120, !2121, !2122, !2123, !2126, !2127, !2145, !2148, !2149, !2156}
!2095 = !DILocalVariable(name: "buffer", arg: 1, scope: !2089, file: !115, line: 248, type: !59)
!2096 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2089, file: !115, line: 248, type: !109)
!2097 = !DILocalVariable(name: "arg", arg: 3, scope: !2089, file: !115, line: 249, type: !41)
!2098 = !DILocalVariable(name: "argsize", arg: 4, scope: !2089, file: !115, line: 249, type: !109)
!2099 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2089, file: !115, line: 250, type: !89)
!2100 = !DILocalVariable(name: "flags", arg: 6, scope: !2089, file: !115, line: 250, type: !26)
!2101 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2089, file: !115, line: 251, type: !2092)
!2102 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2089, file: !115, line: 252, type: !41)
!2103 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2089, file: !115, line: 253, type: !41)
!2104 = !DILocalVariable(name: "i", scope: !2089, file: !115, line: 255, type: !109)
!2105 = !DILocalVariable(name: "len", scope: !2089, file: !115, line: 256, type: !109)
!2106 = !DILocalVariable(name: "orig_buffersize", scope: !2089, file: !115, line: 257, type: !109)
!2107 = !DILocalVariable(name: "quote_string", scope: !2089, file: !115, line: 258, type: !41)
!2108 = !DILocalVariable(name: "quote_string_len", scope: !2089, file: !115, line: 259, type: !109)
!2109 = !DILocalVariable(name: "backslash_escapes", scope: !2089, file: !115, line: 260, type: !69)
!2110 = !DILocalVariable(name: "unibyte_locale", scope: !2089, file: !115, line: 261, type: !69)
!2111 = !DILocalVariable(name: "elide_outer_quotes", scope: !2089, file: !115, line: 262, type: !69)
!2112 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2089, file: !115, line: 263, type: !69)
!2113 = !DILocalVariable(name: "encountered_single_quote", scope: !2089, file: !115, line: 264, type: !69)
!2114 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2089, file: !115, line: 265, type: !69)
!2115 = !DILocalVariable(name: "c", scope: !2116, file: !115, line: 394, type: !499)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !115, line: 393, column: 5)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !115, line: 392, column: 3)
!2118 = distinct !DILexicalBlock(scope: !2089, file: !115, line: 392, column: 3)
!2119 = !DILocalVariable(name: "esc", scope: !2116, file: !115, line: 395, type: !499)
!2120 = !DILocalVariable(name: "is_right_quote", scope: !2116, file: !115, line: 396, type: !69)
!2121 = !DILocalVariable(name: "escaping", scope: !2116, file: !115, line: 397, type: !69)
!2122 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2116, file: !115, line: 398, type: !69)
!2123 = !DILocalVariable(name: "m", scope: !2124, file: !115, line: 602, type: !109)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !115, line: 600, column: 11)
!2125 = distinct !DILexicalBlock(scope: !2116, file: !115, line: 418, column: 9)
!2126 = !DILocalVariable(name: "printable", scope: !2124, file: !115, line: 604, type: !69)
!2127 = !DILocalVariable(name: "mbstate", scope: !2128, file: !115, line: 613, type: !2130)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !115, line: 612, column: 15)
!2129 = distinct !DILexicalBlock(scope: !2124, file: !115, line: 606, column: 17)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2131, line: 6, baseType: !2132)
!2131 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2133, line: 21, baseType: !2134)
!2133 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2133, line: 13, size: 64, elements: !2135)
!2135 = !{!2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2134, file: !2133, line: 15, baseType: !26, size: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2134, file: !2133, line: 20, baseType: !2138, size: 32, offset: 32)
!2138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2134, file: !2133, line: 16, size: 32, elements: !2139)
!2139 = !{!2140, !2141}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2138, file: !2133, line: 18, baseType: !28, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2138, file: !2133, line: 19, baseType: !2142, size: 32)
!2142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 32, elements: !2143)
!2143 = !{!2144}
!2144 = !DISubrange(count: 4)
!2145 = !DILocalVariable(name: "w", scope: !2146, file: !115, line: 623, type: !2147)
!2146 = distinct !DILexicalBlock(scope: !2128, file: !115, line: 622, column: 19)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !110, line: 90, baseType: !26)
!2148 = !DILocalVariable(name: "bytes", scope: !2146, file: !115, line: 624, type: !109)
!2149 = !DILocalVariable(name: "j", scope: !2150, file: !115, line: 649, type: !109)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !115, line: 648, column: 27)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !115, line: 646, column: 29)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !115, line: 641, column: 23)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !115, line: 633, column: 30)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !115, line: 628, column: 30)
!2155 = distinct !DILexicalBlock(scope: !2146, file: !115, line: 626, column: 25)
!2156 = !DILocalVariable(name: "ilim", scope: !2157, file: !115, line: 676, type: !109)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !115, line: 673, column: 15)
!2158 = distinct !DILexicalBlock(scope: !2124, file: !115, line: 672, column: 17)
!2159 = !DILocation(line: 248, column: 33, scope: !2089)
!2160 = !DILocation(line: 248, column: 48, scope: !2089)
!2161 = !DILocation(line: 249, column: 39, scope: !2089)
!2162 = !DILocation(line: 249, column: 51, scope: !2089)
!2163 = !DILocation(line: 250, column: 46, scope: !2089)
!2164 = !DILocation(line: 250, column: 65, scope: !2089)
!2165 = !DILocation(line: 251, column: 47, scope: !2089)
!2166 = !DILocation(line: 252, column: 39, scope: !2089)
!2167 = !DILocation(line: 253, column: 39, scope: !2089)
!2168 = !DILocation(line: 256, column: 10, scope: !2089)
!2169 = !DILocation(line: 257, column: 10, scope: !2089)
!2170 = !DILocation(line: 258, column: 15, scope: !2089)
!2171 = !DILocation(line: 259, column: 10, scope: !2089)
!2172 = !DILocation(line: 260, column: 8, scope: !2089)
!2173 = !DILocation(line: 261, column: 25, scope: !2089)
!2174 = !DILocation(line: 261, column: 36, scope: !2089)
!2175 = !DILocation(line: 262, column: 8, scope: !2089)
!2176 = !DILocation(line: 263, column: 8, scope: !2089)
!2177 = !DILocation(line: 264, column: 8, scope: !2089)
!2178 = !DILocation(line: 265, column: 8, scope: !2089)
!2179 = !DILocation(line: 265, column: 3, scope: !2089)
!2180 = !DILocation(line: 308, column: 3, scope: !2089)
!2181 = !DILocation(line: 315, column: 11, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2089, file: !115, line: 309, column: 5)
!2183 = !DILocation(line: 315, column: 12, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2182, file: !115, line: 315, column: 11)
!2185 = !DILocation(line: 316, column: 9, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !115, line: 316, column: 9)
!2187 = distinct !DILexicalBlock(scope: !2184, file: !115, line: 316, column: 9)
!2188 = !DILocation(line: 316, column: 9, scope: !2187)
!2189 = !DILocation(line: 354, column: 26, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !115, line: 332, column: 11)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !115, line: 331, column: 13)
!2192 = distinct !DILexicalBlock(scope: !2182, file: !115, line: 330, column: 7)
!2193 = !DILocation(line: 355, column: 27, scope: !2190)
!2194 = !DILocation(line: 356, column: 11, scope: !2190)
!2195 = !DILocation(line: 357, column: 14, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2192, file: !115, line: 357, column: 13)
!2197 = !DILocation(line: 357, column: 13, scope: !2192)
!2198 = !DILocation(line: 358, column: 43, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !115, line: 358, column: 11)
!2200 = distinct !DILexicalBlock(scope: !2196, file: !115, line: 358, column: 11)
!2201 = !DILocation(line: 358, column: 11, scope: !2200)
!2202 = !DILocation(line: 359, column: 13, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !115, line: 359, column: 13)
!2204 = distinct !DILexicalBlock(scope: !2199, file: !115, line: 359, column: 13)
!2205 = !DILocation(line: 359, column: 13, scope: !2204)
!2206 = !DILocation(line: 358, column: 70, scope: !2199)
!2207 = distinct !{!2207, !2201, !2208}
!2208 = !DILocation(line: 359, column: 13, scope: !2200)
!2209 = !DILocation(line: 362, column: 28, scope: !2192)
!2210 = !DILocation(line: 364, column: 7, scope: !2182)
!2211 = !DILocation(line: 367, column: 7, scope: !2182)
!2212 = !DILocation(line: 370, column: 7, scope: !2182)
!2213 = !DILocation(line: 373, column: 12, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2182, file: !115, line: 373, column: 11)
!2215 = !DILocation(line: 373, column: 11, scope: !2182)
!2216 = !DILocation(line: 378, column: 12, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2182, file: !115, line: 378, column: 11)
!2218 = !DILocation(line: 378, column: 11, scope: !2182)
!2219 = !DILocation(line: 379, column: 9, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !115, line: 379, column: 9)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !115, line: 379, column: 9)
!2222 = !DILocation(line: 379, column: 9, scope: !2221)
!2223 = !DILocation(line: 386, column: 7, scope: !2182)
!2224 = !DILocation(line: 389, column: 7, scope: !2182)
!2225 = !DILocation(line: 255, column: 10, scope: !2089)
!2226 = !DILocation(line: 392, column: 8, scope: !2118)
!2227 = !DILocation(line: 392, column: 27, scope: !2117)
!2228 = !DILocation(line: 392, column: 19, scope: !2117)
!2229 = !DILocation(line: 392, column: 60, scope: !2117)
!2230 = !DILocation(line: 392, column: 3, scope: !2118)
!2231 = !DILocation(line: 392, column: 41, scope: !2117)
!2232 = !DILocation(line: 392, column: 48, scope: !2117)
!2233 = !DILocation(line: 396, column: 12, scope: !2116)
!2234 = !DILocation(line: 397, column: 12, scope: !2116)
!2235 = !DILocation(line: 398, column: 12, scope: !2116)
!2236 = !DILocation(line: 401, column: 11, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2116, file: !115, line: 400, column: 11)
!2238 = !DILocation(line: 403, column: 17, scope: !2237)
!2239 = !DILocation(line: 404, column: 39, scope: !2237)
!2240 = !DILocation(line: 408, column: 32, scope: !2237)
!2241 = !DILocation(line: 404, column: 19, scope: !2237)
!2242 = !DILocation(line: 404, column: 15, scope: !2237)
!2243 = !DILocation(line: 409, column: 11, scope: !2237)
!2244 = !DILocation(line: 409, column: 26, scope: !2237)
!2245 = !DILocation(line: 409, column: 14, scope: !2237)
!2246 = !DILocation(line: 409, column: 63, scope: !2237)
!2247 = !DILocation(line: 400, column: 11, scope: !2116)
!2248 = !DILocation(line: 416, column: 11, scope: !2116)
!2249 = !DILocation(line: 394, column: 21, scope: !2116)
!2250 = !DILocation(line: 417, column: 7, scope: !2116)
!2251 = !DILocation(line: 420, column: 15, scope: !2125)
!2252 = !DILocation(line: 422, column: 15, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !115, line: 422, column: 15)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !115, line: 421, column: 13)
!2255 = distinct !DILexicalBlock(scope: !2125, file: !115, line: 420, column: 15)
!2256 = !DILocation(line: 422, column: 15, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2253, file: !115, line: 422, column: 15)
!2258 = !DILocation(line: 422, column: 15, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !115, line: 422, column: 15)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !115, line: 422, column: 15)
!2261 = distinct !DILexicalBlock(scope: !2257, file: !115, line: 422, column: 15)
!2262 = !DILocation(line: 422, column: 15, scope: !2260)
!2263 = !DILocation(line: 422, column: 15, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !115, line: 422, column: 15)
!2265 = distinct !DILexicalBlock(scope: !2261, file: !115, line: 422, column: 15)
!2266 = !DILocation(line: 422, column: 15, scope: !2265)
!2267 = !DILocation(line: 422, column: 15, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !115, line: 422, column: 15)
!2269 = distinct !DILexicalBlock(scope: !2261, file: !115, line: 422, column: 15)
!2270 = !DILocation(line: 422, column: 15, scope: !2269)
!2271 = !DILocation(line: 422, column: 15, scope: !2261)
!2272 = !DILocation(line: 422, column: 15, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !115, line: 422, column: 15)
!2274 = distinct !DILexicalBlock(scope: !2253, file: !115, line: 422, column: 15)
!2275 = !DILocation(line: 422, column: 15, scope: !2274)
!2276 = !DILocation(line: 430, column: 19, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2254, file: !115, line: 429, column: 19)
!2278 = !DILocation(line: 430, column: 24, scope: !2277)
!2279 = !DILocation(line: 430, column: 28, scope: !2277)
!2280 = !DILocation(line: 430, column: 38, scope: !2277)
!2281 = !DILocation(line: 430, column: 48, scope: !2277)
!2282 = !DILocation(line: 430, column: 59, scope: !2277)
!2283 = !DILocation(line: 432, column: 19, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !115, line: 432, column: 19)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !115, line: 432, column: 19)
!2286 = distinct !DILexicalBlock(scope: !2277, file: !115, line: 431, column: 17)
!2287 = !DILocation(line: 432, column: 19, scope: !2285)
!2288 = !DILocation(line: 433, column: 19, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !115, line: 433, column: 19)
!2290 = distinct !DILexicalBlock(scope: !2286, file: !115, line: 433, column: 19)
!2291 = !DILocation(line: 433, column: 19, scope: !2290)
!2292 = !DILocation(line: 434, column: 17, scope: !2286)
!2293 = !DILocation(line: 441, column: 20, scope: !2255)
!2294 = !DILocation(line: 446, column: 11, scope: !2125)
!2295 = !DILocation(line: 449, column: 19, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2125, file: !115, line: 447, column: 13)
!2297 = !DILocation(line: 455, column: 19, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2296, file: !115, line: 454, column: 19)
!2299 = !DILocation(line: 455, column: 24, scope: !2298)
!2300 = !DILocation(line: 455, column: 28, scope: !2298)
!2301 = !DILocation(line: 455, column: 38, scope: !2298)
!2302 = !DILocation(line: 455, column: 47, scope: !2298)
!2303 = !DILocation(line: 455, column: 41, scope: !2298)
!2304 = !DILocation(line: 455, column: 52, scope: !2298)
!2305 = !DILocation(line: 454, column: 19, scope: !2296)
!2306 = !DILocation(line: 456, column: 25, scope: !2298)
!2307 = !DILocation(line: 456, column: 17, scope: !2298)
!2308 = !DILocation(line: 463, column: 25, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2298, file: !115, line: 457, column: 19)
!2310 = !DILocation(line: 467, column: 21, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !115, line: 467, column: 21)
!2312 = distinct !DILexicalBlock(scope: !2309, file: !115, line: 467, column: 21)
!2313 = !DILocation(line: 467, column: 21, scope: !2312)
!2314 = !DILocation(line: 468, column: 21, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !115, line: 468, column: 21)
!2316 = distinct !DILexicalBlock(scope: !2309, file: !115, line: 468, column: 21)
!2317 = !DILocation(line: 468, column: 21, scope: !2316)
!2318 = !DILocation(line: 469, column: 21, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !115, line: 469, column: 21)
!2320 = distinct !DILexicalBlock(scope: !2309, file: !115, line: 469, column: 21)
!2321 = !DILocation(line: 469, column: 21, scope: !2320)
!2322 = !DILocation(line: 470, column: 21, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !115, line: 470, column: 21)
!2324 = distinct !DILexicalBlock(scope: !2309, file: !115, line: 470, column: 21)
!2325 = !DILocation(line: 470, column: 21, scope: !2324)
!2326 = !DILocation(line: 471, column: 21, scope: !2309)
!2327 = !DILocation(line: 395, column: 21, scope: !2116)
!2328 = !DILocation(line: 484, column: 31, scope: !2125)
!2329 = !DILocation(line: 485, column: 31, scope: !2125)
!2330 = !DILocation(line: 487, column: 31, scope: !2125)
!2331 = !DILocation(line: 488, column: 31, scope: !2125)
!2332 = !DILocation(line: 489, column: 31, scope: !2125)
!2333 = !DILocation(line: 492, column: 15, scope: !2125)
!2334 = !DILocation(line: 494, column: 19, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !115, line: 493, column: 13)
!2336 = distinct !DILexicalBlock(scope: !2125, file: !115, line: 492, column: 15)
!2337 = !DILocation(line: 501, column: 33, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2125, file: !115, line: 501, column: 15)
!2339 = !DILocation(line: 506, column: 15, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2125, file: !115, line: 505, column: 15)
!2341 = !DILocation(line: 510, column: 15, scope: !2125)
!2342 = !DILocation(line: 518, column: 26, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2125, file: !115, line: 518, column: 15)
!2344 = !DILocation(line: 518, column: 15, scope: !2125)
!2345 = !DILocation(line: 518, column: 40, scope: !2343)
!2346 = !DILocation(line: 518, column: 47, scope: !2343)
!2347 = !DILocation(line: 522, column: 17, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2125, file: !115, line: 522, column: 15)
!2349 = !DILocation(line: 518, column: 18, scope: !2343)
!2350 = !DILocation(line: 518, column: 65, scope: !2343)
!2351 = !DILocation(line: 522, column: 15, scope: !2125)
!2352 = !DILocation(line: 526, column: 11, scope: !2125)
!2353 = !DILocation(line: 541, column: 15, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2125, file: !115, line: 540, column: 15)
!2355 = !DILocation(line: 548, column: 15, scope: !2125)
!2356 = !DILocation(line: 550, column: 19, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !115, line: 549, column: 13)
!2358 = distinct !DILexicalBlock(scope: !2125, file: !115, line: 548, column: 15)
!2359 = !DILocation(line: 553, column: 19, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2357, file: !115, line: 553, column: 19)
!2361 = !DILocation(line: 553, column: 35, scope: !2360)
!2362 = !DILocation(line: 553, column: 30, scope: !2360)
!2363 = !DILocation(line: 562, column: 15, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !115, line: 562, column: 15)
!2365 = distinct !DILexicalBlock(scope: !2357, file: !115, line: 562, column: 15)
!2366 = !DILocation(line: 562, column: 15, scope: !2365)
!2367 = !DILocation(line: 563, column: 15, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !115, line: 563, column: 15)
!2369 = distinct !DILexicalBlock(scope: !2357, file: !115, line: 563, column: 15)
!2370 = !DILocation(line: 563, column: 15, scope: !2369)
!2371 = !DILocation(line: 564, column: 15, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !115, line: 564, column: 15)
!2373 = distinct !DILexicalBlock(scope: !2357, file: !115, line: 564, column: 15)
!2374 = !DILocation(line: 564, column: 15, scope: !2373)
!2375 = !DILocation(line: 566, column: 13, scope: !2357)
!2376 = !DILocation(line: 606, column: 17, scope: !2124)
!2377 = !DILocation(line: 602, column: 20, scope: !2124)
!2378 = !DILocation(line: 609, column: 29, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2129, file: !115, line: 607, column: 15)
!2380 = !DILocation(line: 609, column: 27, scope: !2379)
!2381 = !DILocation(line: 604, column: 18, scope: !2124)
!2382 = !DILocation(line: 610, column: 15, scope: !2379)
!2383 = !DILocation(line: 613, column: 17, scope: !2128)
!2384 = !DILocation(line: 614, column: 17, scope: !2128)
!2385 = !DILocation(line: 618, column: 29, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2128, file: !115, line: 618, column: 21)
!2387 = !DILocation(line: 618, column: 21, scope: !2128)
!2388 = !DILocation(line: 619, column: 29, scope: !2386)
!2389 = !DILocation(line: 619, column: 19, scope: !2386)
!2390 = !DILocation(line: 621, column: 17, scope: !2128)
!2391 = distinct !{!2391, !2390, !2392}
!2392 = !DILocation(line: 667, column: 44, scope: !2128)
!2393 = !DILocation(line: 623, column: 21, scope: !2146)
!2394 = !DILocation(line: 624, column: 56, scope: !2146)
!2395 = !DILocation(line: 624, column: 50, scope: !2146)
!2396 = !DILocation(line: 625, column: 53, scope: !2146)
!2397 = !DILocation(line: 613, column: 27, scope: !2128)
!2398 = !DILocation(line: 623, column: 29, scope: !2146)
!2399 = !DILocation(line: 624, column: 36, scope: !2146)
!2400 = !DILocation(line: 624, column: 28, scope: !2146)
!2401 = !DILocation(line: 626, column: 25, scope: !2146)
!2402 = !DILocation(line: 636, column: 38, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2153, file: !115, line: 634, column: 23)
!2404 = !DILocation(line: 636, column: 48, scope: !2403)
!2405 = !DILocation(line: 636, column: 51, scope: !2403)
!2406 = !DILocation(line: 636, column: 25, scope: !2403)
!2407 = !DILocation(line: 637, column: 28, scope: !2403)
!2408 = !DILocation(line: 636, column: 34, scope: !2403)
!2409 = distinct !{!2409, !2406, !2407}
!2410 = !DILocation(line: 650, column: 43, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !115, line: 650, column: 29)
!2412 = distinct !DILexicalBlock(scope: !2150, file: !115, line: 650, column: 29)
!2413 = !DILocation(line: 647, column: 29, scope: !2151)
!2414 = !DILocation(line: 649, column: 36, scope: !2150)
!2415 = !DILocation(line: 651, column: 49, scope: !2411)
!2416 = !DILocation(line: 651, column: 39, scope: !2411)
!2417 = !DILocation(line: 651, column: 31, scope: !2411)
!2418 = !DILocation(line: 650, column: 53, scope: !2411)
!2419 = !DILocation(line: 650, column: 29, scope: !2412)
!2420 = distinct !{!2420, !2419, !2421}
!2421 = !DILocation(line: 659, column: 33, scope: !2412)
!2422 = !DILocation(line: 666, column: 19, scope: !2128)
!2423 = !DILocation(line: 662, column: 41, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2152, file: !115, line: 662, column: 29)
!2425 = !DILocation(line: 662, column: 31, scope: !2424)
!2426 = !DILocation(line: 662, column: 29, scope: !2152)
!2427 = !DILocation(line: 664, column: 27, scope: !2152)
!2428 = !DILocation(line: 667, column: 26, scope: !2128)
!2429 = !DILocation(line: 667, column: 24, scope: !2128)
!2430 = !DILocation(line: 666, column: 19, scope: !2146)
!2431 = !DILocation(line: 668, column: 15, scope: !2129)
!2432 = !DILocation(line: 670, column: 40, scope: !2124)
!2433 = !DILocation(line: 672, column: 19, scope: !2158)
!2434 = !DILocation(line: 672, column: 45, scope: !2158)
!2435 = !DILocation(line: 672, column: 23, scope: !2158)
!2436 = !DILocation(line: 676, column: 33, scope: !2157)
!2437 = !DILocation(line: 676, column: 24, scope: !2157)
!2438 = !DILocation(line: 678, column: 17, scope: !2157)
!2439 = !DILocation(line: 680, column: 43, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !115, line: 680, column: 25)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !115, line: 679, column: 19)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !115, line: 678, column: 17)
!2443 = distinct !DILexicalBlock(scope: !2157, file: !115, line: 678, column: 17)
!2444 = !DILocation(line: 682, column: 25, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !115, line: 682, column: 25)
!2446 = distinct !DILexicalBlock(scope: !2440, file: !115, line: 681, column: 23)
!2447 = !DILocation(line: 682, column: 25, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2445, file: !115, line: 682, column: 25)
!2449 = !DILocation(line: 682, column: 25, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !115, line: 682, column: 25)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !115, line: 682, column: 25)
!2452 = distinct !DILexicalBlock(scope: !2448, file: !115, line: 682, column: 25)
!2453 = !DILocation(line: 682, column: 25, scope: !2451)
!2454 = !DILocation(line: 682, column: 25, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !115, line: 682, column: 25)
!2456 = distinct !DILexicalBlock(scope: !2452, file: !115, line: 682, column: 25)
!2457 = !DILocation(line: 682, column: 25, scope: !2456)
!2458 = !DILocation(line: 682, column: 25, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !115, line: 682, column: 25)
!2460 = distinct !DILexicalBlock(scope: !2452, file: !115, line: 682, column: 25)
!2461 = !DILocation(line: 682, column: 25, scope: !2460)
!2462 = !DILocation(line: 682, column: 25, scope: !2452)
!2463 = !DILocation(line: 682, column: 25, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !115, line: 682, column: 25)
!2465 = distinct !DILexicalBlock(scope: !2445, file: !115, line: 682, column: 25)
!2466 = !DILocation(line: 682, column: 25, scope: !2465)
!2467 = !DILocation(line: 683, column: 25, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !115, line: 683, column: 25)
!2469 = distinct !DILexicalBlock(scope: !2446, file: !115, line: 683, column: 25)
!2470 = !DILocation(line: 683, column: 25, scope: !2469)
!2471 = !DILocation(line: 684, column: 25, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !115, line: 684, column: 25)
!2473 = distinct !DILexicalBlock(scope: !2446, file: !115, line: 684, column: 25)
!2474 = !DILocation(line: 684, column: 25, scope: !2473)
!2475 = !DILocation(line: 685, column: 38, scope: !2446)
!2476 = !DILocation(line: 685, column: 33, scope: !2446)
!2477 = !DILocation(line: 686, column: 23, scope: !2446)
!2478 = !DILocation(line: 687, column: 30, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2440, file: !115, line: 687, column: 30)
!2480 = !DILocation(line: 687, column: 30, scope: !2440)
!2481 = !DILocation(line: 689, column: 25, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !115, line: 689, column: 25)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !115, line: 689, column: 25)
!2484 = distinct !DILexicalBlock(scope: !2479, file: !115, line: 688, column: 23)
!2485 = !DILocation(line: 689, column: 25, scope: !2483)
!2486 = !DILocation(line: 691, column: 23, scope: !2484)
!2487 = !DILocation(line: 692, column: 35, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2441, file: !115, line: 692, column: 25)
!2489 = !DILocation(line: 692, column: 30, scope: !2488)
!2490 = !DILocation(line: 692, column: 25, scope: !2441)
!2491 = !DILocation(line: 694, column: 21, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !115, line: 694, column: 21)
!2493 = distinct !DILexicalBlock(scope: !2441, file: !115, line: 694, column: 21)
!2494 = !DILocation(line: 694, column: 21, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !115, line: 694, column: 21)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !115, line: 694, column: 21)
!2497 = distinct !DILexicalBlock(scope: !2492, file: !115, line: 694, column: 21)
!2498 = !DILocation(line: 694, column: 21, scope: !2496)
!2499 = !DILocation(line: 694, column: 21, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !115, line: 694, column: 21)
!2501 = distinct !DILexicalBlock(scope: !2497, file: !115, line: 694, column: 21)
!2502 = !DILocation(line: 694, column: 21, scope: !2501)
!2503 = !DILocation(line: 694, column: 21, scope: !2497)
!2504 = !DILocation(line: 695, column: 21, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !115, line: 695, column: 21)
!2506 = distinct !DILexicalBlock(scope: !2441, file: !115, line: 695, column: 21)
!2507 = !DILocation(line: 695, column: 21, scope: !2506)
!2508 = !DILocation(line: 696, column: 25, scope: !2441)
!2509 = !DILocation(line: 678, column: 17, scope: !2442)
!2510 = distinct !{!2510, !2511, !2512}
!2511 = !DILocation(line: 678, column: 17, scope: !2443)
!2512 = !DILocation(line: 697, column: 19, scope: !2443)
!2513 = !DILocation(line: 704, column: 34, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2116, file: !115, line: 704, column: 11)
!2515 = !DILocation(line: 706, column: 14, scope: !2514)
!2516 = !DILocation(line: 707, column: 14, scope: !2514)
!2517 = !DILocation(line: 707, column: 35, scope: !2514)
!2518 = !DILocation(line: 707, column: 17, scope: !2514)
!2519 = !DILocation(line: 707, column: 53, scope: !2514)
!2520 = !DILocation(line: 707, column: 47, scope: !2514)
!2521 = !DILocation(line: 707, column: 65, scope: !2514)
!2522 = !DILocation(line: 708, column: 15, scope: !2514)
!2523 = !DILocation(line: 708, column: 11, scope: !2514)
!2524 = !DILocation(line: 704, column: 11, scope: !2116)
!2525 = !DILocation(line: 712, column: 7, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2116, file: !115, line: 712, column: 7)
!2527 = !DILocation(line: 712, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2526, file: !115, line: 712, column: 7)
!2529 = !DILocation(line: 712, column: 7, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !115, line: 712, column: 7)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !115, line: 712, column: 7)
!2532 = distinct !DILexicalBlock(scope: !2528, file: !115, line: 712, column: 7)
!2533 = !DILocation(line: 712, column: 7, scope: !2531)
!2534 = !DILocation(line: 712, column: 7, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !115, line: 712, column: 7)
!2536 = distinct !DILexicalBlock(scope: !2532, file: !115, line: 712, column: 7)
!2537 = !DILocation(line: 712, column: 7, scope: !2536)
!2538 = !DILocation(line: 712, column: 7, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !115, line: 712, column: 7)
!2540 = distinct !DILexicalBlock(scope: !2532, file: !115, line: 712, column: 7)
!2541 = !DILocation(line: 712, column: 7, scope: !2540)
!2542 = !DILocation(line: 712, column: 7, scope: !2532)
!2543 = !DILocation(line: 712, column: 7, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !115, line: 712, column: 7)
!2545 = distinct !DILexicalBlock(scope: !2526, file: !115, line: 712, column: 7)
!2546 = !DILocation(line: 712, column: 7, scope: !2545)
!2547 = !DILocation(line: 715, column: 7, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !115, line: 715, column: 7)
!2549 = distinct !DILexicalBlock(scope: !2116, file: !115, line: 715, column: 7)
!2550 = !DILocation(line: 715, column: 7, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !115, line: 715, column: 7)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !115, line: 715, column: 7)
!2553 = distinct !DILexicalBlock(scope: !2548, file: !115, line: 715, column: 7)
!2554 = !DILocation(line: 715, column: 7, scope: !2552)
!2555 = !DILocation(line: 715, column: 7, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !115, line: 715, column: 7)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !115, line: 715, column: 7)
!2558 = !DILocation(line: 715, column: 7, scope: !2557)
!2559 = !DILocation(line: 715, column: 7, scope: !2553)
!2560 = !DILocation(line: 716, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !115, line: 716, column: 7)
!2562 = distinct !DILexicalBlock(scope: !2116, file: !115, line: 716, column: 7)
!2563 = !DILocation(line: 716, column: 7, scope: !2562)
!2564 = !DILocation(line: 718, column: 13, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2116, file: !115, line: 718, column: 11)
!2566 = !DILocation(line: 718, column: 11, scope: !2116)
!2567 = !DILocation(line: 720, column: 5, scope: !2117)
!2568 = !DILocation(line: 392, column: 75, scope: !2117)
!2569 = !DILocation(line: 392, column: 3, scope: !2117)
!2570 = distinct !{!2570, !2230, !2571}
!2571 = !DILocation(line: 720, column: 5, scope: !2118)
!2572 = !DILocation(line: 722, column: 11, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2089, file: !115, line: 722, column: 7)
!2574 = !DILocation(line: 722, column: 16, scope: !2573)
!2575 = !DILocation(line: 730, column: 51, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2089, file: !115, line: 730, column: 7)
!2577 = !DILocation(line: 731, column: 10, scope: !2576)
!2578 = !DILocation(line: 733, column: 11, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !115, line: 733, column: 11)
!2580 = distinct !DILexicalBlock(scope: !2576, file: !115, line: 732, column: 5)
!2581 = !DILocation(line: 733, column: 11, scope: !2580)
!2582 = !DILocation(line: 734, column: 16, scope: !2579)
!2583 = !DILocation(line: 734, column: 9, scope: !2579)
!2584 = !DILocation(line: 738, column: 18, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2579, file: !115, line: 738, column: 16)
!2586 = !DILocation(line: 738, column: 32, scope: !2585)
!2587 = !DILocation(line: 738, column: 29, scope: !2585)
!2588 = !DILocation(line: 747, column: 7, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2089, file: !115, line: 747, column: 7)
!2590 = !DILocation(line: 747, column: 20, scope: !2589)
!2591 = !DILocation(line: 748, column: 12, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !115, line: 748, column: 5)
!2593 = distinct !DILexicalBlock(scope: !2589, file: !115, line: 748, column: 5)
!2594 = !DILocation(line: 748, column: 5, scope: !2593)
!2595 = !DILocation(line: 749, column: 7, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !115, line: 749, column: 7)
!2597 = distinct !DILexicalBlock(scope: !2592, file: !115, line: 749, column: 7)
!2598 = !DILocation(line: 749, column: 7, scope: !2597)
!2599 = !DILocation(line: 748, column: 39, scope: !2592)
!2600 = distinct !{!2600, !2594, !2601}
!2601 = !DILocation(line: 749, column: 7, scope: !2593)
!2602 = !DILocation(line: 751, column: 11, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2089, file: !115, line: 751, column: 7)
!2604 = !DILocation(line: 751, column: 7, scope: !2089)
!2605 = !DILocation(line: 752, column: 5, scope: !2603)
!2606 = !DILocation(line: 752, column: 17, scope: !2603)
!2607 = !DILocation(line: 758, column: 21, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2089, file: !115, line: 758, column: 7)
!2609 = !DILocation(line: 758, column: 54, scope: !2608)
!2610 = !DILocation(line: 758, column: 51, scope: !2608)
!2611 = !DILocation(line: 762, column: 42, scope: !2089)
!2612 = !DILocation(line: 760, column: 10, scope: !2089)
!2613 = !DILocation(line: 760, column: 3, scope: !2089)
!2614 = !DILocation(line: 764, column: 1, scope: !2089)
!2615 = distinct !DISubprogram(name: "gettext_quote", scope: !115, file: !115, line: 199, type: !2616, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!41, !41, !89}
!2618 = !{!2619, !2620, !2621, !2622}
!2619 = !DILocalVariable(name: "msgid", arg: 1, scope: !2615, file: !115, line: 199, type: !41)
!2620 = !DILocalVariable(name: "s", arg: 2, scope: !2615, file: !115, line: 199, type: !89)
!2621 = !DILocalVariable(name: "translation", scope: !2615, file: !115, line: 201, type: !41)
!2622 = !DILocalVariable(name: "locale_code", scope: !2615, file: !115, line: 202, type: !41)
!2623 = !DILocation(line: 199, column: 28, scope: !2615)
!2624 = !DILocation(line: 199, column: 54, scope: !2615)
!2625 = !DILocation(line: 201, column: 29, scope: !2615)
!2626 = !DILocation(line: 201, column: 15, scope: !2615)
!2627 = !DILocation(line: 204, column: 19, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2615, file: !115, line: 204, column: 7)
!2629 = !DILocation(line: 204, column: 7, scope: !2615)
!2630 = !DILocation(line: 225, column: 17, scope: !2615)
!2631 = !DILocation(line: 202, column: 15, scope: !2615)
!2632 = !DILocalVariable(name: "s2", arg: 2, scope: !2633, file: !2634, line: 160, type: !41)
!2633 = distinct !DISubprogram(name: "strcaseeq0", scope: !2634, file: !2634, line: 160, type: !2635, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2637)
!2634 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!26, !41, !41, !43, !43, !43, !43, !43, !43, !43, !43, !43}
!2637 = !{!2638, !2632, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647}
!2638 = !DILocalVariable(name: "s1", arg: 1, scope: !2633, file: !2634, line: 160, type: !41)
!2639 = !DILocalVariable(name: "s20", arg: 3, scope: !2633, file: !2634, line: 160, type: !43)
!2640 = !DILocalVariable(name: "s21", arg: 4, scope: !2633, file: !2634, line: 160, type: !43)
!2641 = !DILocalVariable(name: "s22", arg: 5, scope: !2633, file: !2634, line: 160, type: !43)
!2642 = !DILocalVariable(name: "s23", arg: 6, scope: !2633, file: !2634, line: 160, type: !43)
!2643 = !DILocalVariable(name: "s24", arg: 7, scope: !2633, file: !2634, line: 160, type: !43)
!2644 = !DILocalVariable(name: "s25", arg: 8, scope: !2633, file: !2634, line: 160, type: !43)
!2645 = !DILocalVariable(name: "s26", arg: 9, scope: !2633, file: !2634, line: 160, type: !43)
!2646 = !DILocalVariable(name: "s27", arg: 10, scope: !2633, file: !2634, line: 160, type: !43)
!2647 = !DILocalVariable(name: "s28", arg: 11, scope: !2633, file: !2634, line: 160, type: !43)
!2648 = !DILocation(line: 160, column: 41, scope: !2633, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 226, column: 7, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2615, file: !115, line: 226, column: 7)
!2651 = !DILocation(line: 160, column: 120, scope: !2633, inlinedAt: !2649)
!2652 = !DILocation(line: 160, column: 130, scope: !2633, inlinedAt: !2649)
!2653 = !DILocation(line: 162, column: 7, scope: !2654, inlinedAt: !2649)
!2654 = distinct !DILexicalBlock(scope: !2633, file: !2634, line: 162, column: 7)
!2655 = !DILocalVariable(name: "s2", arg: 2, scope: !2656, file: !2634, line: 146, type: !41)
!2656 = distinct !DISubprogram(name: "strcaseeq1", scope: !2634, file: !2634, line: 146, type: !2657, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!26, !41, !41, !43, !43, !43, !43, !43, !43, !43, !43}
!2659 = !{!2660, !2655, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668}
!2660 = !DILocalVariable(name: "s1", arg: 1, scope: !2656, file: !2634, line: 146, type: !41)
!2661 = !DILocalVariable(name: "s21", arg: 3, scope: !2656, file: !2634, line: 146, type: !43)
!2662 = !DILocalVariable(name: "s22", arg: 4, scope: !2656, file: !2634, line: 146, type: !43)
!2663 = !DILocalVariable(name: "s23", arg: 5, scope: !2656, file: !2634, line: 146, type: !43)
!2664 = !DILocalVariable(name: "s24", arg: 6, scope: !2656, file: !2634, line: 146, type: !43)
!2665 = !DILocalVariable(name: "s25", arg: 7, scope: !2656, file: !2634, line: 146, type: !43)
!2666 = !DILocalVariable(name: "s26", arg: 8, scope: !2656, file: !2634, line: 146, type: !43)
!2667 = !DILocalVariable(name: "s27", arg: 9, scope: !2656, file: !2634, line: 146, type: !43)
!2668 = !DILocalVariable(name: "s28", arg: 10, scope: !2656, file: !2634, line: 146, type: !43)
!2669 = !DILocation(line: 146, column: 41, scope: !2656, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 167, column: 16, scope: !2671, inlinedAt: !2649)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !2634, line: 164, column: 11)
!2672 = distinct !DILexicalBlock(scope: !2654, file: !2634, line: 163, column: 5)
!2673 = !DILocation(line: 146, column: 110, scope: !2656, inlinedAt: !2670)
!2674 = !DILocation(line: 146, column: 120, scope: !2656, inlinedAt: !2670)
!2675 = !DILocation(line: 148, column: 7, scope: !2676, inlinedAt: !2670)
!2676 = distinct !DILexicalBlock(scope: !2656, file: !2634, line: 148, column: 7)
!2677 = !DILocalVariable(name: "s2", arg: 2, scope: !2678, file: !2634, line: 132, type: !41)
!2678 = distinct !DISubprogram(name: "strcaseeq2", scope: !2634, file: !2634, line: 132, type: !2679, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!26, !41, !41, !43, !43, !43, !43, !43, !43, !43}
!2681 = !{!2682, !2677, !2683, !2684, !2685, !2686, !2687, !2688, !2689}
!2682 = !DILocalVariable(name: "s1", arg: 1, scope: !2678, file: !2634, line: 132, type: !41)
!2683 = !DILocalVariable(name: "s22", arg: 3, scope: !2678, file: !2634, line: 132, type: !43)
!2684 = !DILocalVariable(name: "s23", arg: 4, scope: !2678, file: !2634, line: 132, type: !43)
!2685 = !DILocalVariable(name: "s24", arg: 5, scope: !2678, file: !2634, line: 132, type: !43)
!2686 = !DILocalVariable(name: "s25", arg: 6, scope: !2678, file: !2634, line: 132, type: !43)
!2687 = !DILocalVariable(name: "s26", arg: 7, scope: !2678, file: !2634, line: 132, type: !43)
!2688 = !DILocalVariable(name: "s27", arg: 8, scope: !2678, file: !2634, line: 132, type: !43)
!2689 = !DILocalVariable(name: "s28", arg: 9, scope: !2678, file: !2634, line: 132, type: !43)
!2690 = !DILocation(line: 132, column: 41, scope: !2678, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 153, column: 16, scope: !2692, inlinedAt: !2670)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !2634, line: 150, column: 11)
!2693 = distinct !DILexicalBlock(scope: !2676, file: !2634, line: 149, column: 5)
!2694 = !DILocation(line: 132, column: 100, scope: !2678, inlinedAt: !2691)
!2695 = !DILocation(line: 132, column: 110, scope: !2678, inlinedAt: !2691)
!2696 = !DILocation(line: 134, column: 7, scope: !2697, inlinedAt: !2691)
!2697 = distinct !DILexicalBlock(scope: !2678, file: !2634, line: 134, column: 7)
!2698 = !DILocalVariable(name: "s2", arg: 2, scope: !2699, file: !2634, line: 118, type: !41)
!2699 = distinct !DISubprogram(name: "strcaseeq3", scope: !2634, file: !2634, line: 118, type: !2700, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!26, !41, !41, !43, !43, !43, !43, !43, !43}
!2702 = !{!2703, !2698, !2704, !2705, !2706, !2707, !2708, !2709}
!2703 = !DILocalVariable(name: "s1", arg: 1, scope: !2699, file: !2634, line: 118, type: !41)
!2704 = !DILocalVariable(name: "s23", arg: 3, scope: !2699, file: !2634, line: 118, type: !43)
!2705 = !DILocalVariable(name: "s24", arg: 4, scope: !2699, file: !2634, line: 118, type: !43)
!2706 = !DILocalVariable(name: "s25", arg: 5, scope: !2699, file: !2634, line: 118, type: !43)
!2707 = !DILocalVariable(name: "s26", arg: 6, scope: !2699, file: !2634, line: 118, type: !43)
!2708 = !DILocalVariable(name: "s27", arg: 7, scope: !2699, file: !2634, line: 118, type: !43)
!2709 = !DILocalVariable(name: "s28", arg: 8, scope: !2699, file: !2634, line: 118, type: !43)
!2710 = !DILocation(line: 118, column: 41, scope: !2699, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 139, column: 16, scope: !2712, inlinedAt: !2691)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !2634, line: 136, column: 11)
!2713 = distinct !DILexicalBlock(scope: !2697, file: !2634, line: 135, column: 5)
!2714 = !DILocation(line: 118, column: 90, scope: !2699, inlinedAt: !2711)
!2715 = !DILocation(line: 118, column: 100, scope: !2699, inlinedAt: !2711)
!2716 = !DILocation(line: 120, column: 7, scope: !2717, inlinedAt: !2711)
!2717 = distinct !DILexicalBlock(scope: !2699, file: !2634, line: 120, column: 7)
!2718 = !DILocation(line: 120, column: 7, scope: !2699, inlinedAt: !2711)
!2719 = !DILocalVariable(name: "s2", arg: 2, scope: !2720, file: !2634, line: 104, type: !41)
!2720 = distinct !DISubprogram(name: "strcaseeq4", scope: !2634, file: !2634, line: 104, type: !2721, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!26, !41, !41, !43, !43, !43, !43, !43}
!2723 = !{!2724, !2719, !2725, !2726, !2727, !2728, !2729}
!2724 = !DILocalVariable(name: "s1", arg: 1, scope: !2720, file: !2634, line: 104, type: !41)
!2725 = !DILocalVariable(name: "s24", arg: 3, scope: !2720, file: !2634, line: 104, type: !43)
!2726 = !DILocalVariable(name: "s25", arg: 4, scope: !2720, file: !2634, line: 104, type: !43)
!2727 = !DILocalVariable(name: "s26", arg: 5, scope: !2720, file: !2634, line: 104, type: !43)
!2728 = !DILocalVariable(name: "s27", arg: 6, scope: !2720, file: !2634, line: 104, type: !43)
!2729 = !DILocalVariable(name: "s28", arg: 7, scope: !2720, file: !2634, line: 104, type: !43)
!2730 = !DILocation(line: 104, column: 41, scope: !2720, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 125, column: 16, scope: !2732, inlinedAt: !2711)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !2634, line: 122, column: 11)
!2733 = distinct !DILexicalBlock(scope: !2717, file: !2634, line: 121, column: 5)
!2734 = !DILocation(line: 104, column: 80, scope: !2720, inlinedAt: !2731)
!2735 = !DILocation(line: 104, column: 90, scope: !2720, inlinedAt: !2731)
!2736 = !DILocation(line: 106, column: 7, scope: !2737, inlinedAt: !2731)
!2737 = distinct !DILexicalBlock(scope: !2720, file: !2634, line: 106, column: 7)
!2738 = !DILocation(line: 106, column: 7, scope: !2720, inlinedAt: !2731)
!2739 = !DILocalVariable(name: "s2", arg: 2, scope: !2740, file: !2634, line: 90, type: !41)
!2740 = distinct !DISubprogram(name: "strcaseeq5", scope: !2634, file: !2634, line: 90, type: !2741, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2743)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!26, !41, !41, !43, !43, !43, !43}
!2743 = !{!2744, !2739, !2745, !2746, !2747, !2748}
!2744 = !DILocalVariable(name: "s1", arg: 1, scope: !2740, file: !2634, line: 90, type: !41)
!2745 = !DILocalVariable(name: "s25", arg: 3, scope: !2740, file: !2634, line: 90, type: !43)
!2746 = !DILocalVariable(name: "s26", arg: 4, scope: !2740, file: !2634, line: 90, type: !43)
!2747 = !DILocalVariable(name: "s27", arg: 5, scope: !2740, file: !2634, line: 90, type: !43)
!2748 = !DILocalVariable(name: "s28", arg: 6, scope: !2740, file: !2634, line: 90, type: !43)
!2749 = !DILocation(line: 90, column: 41, scope: !2740, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 111, column: 16, scope: !2751, inlinedAt: !2731)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !2634, line: 108, column: 11)
!2752 = distinct !DILexicalBlock(scope: !2737, file: !2634, line: 107, column: 5)
!2753 = !DILocation(line: 90, column: 70, scope: !2740, inlinedAt: !2750)
!2754 = !DILocation(line: 90, column: 80, scope: !2740, inlinedAt: !2750)
!2755 = !DILocation(line: 92, column: 7, scope: !2756, inlinedAt: !2750)
!2756 = distinct !DILexicalBlock(scope: !2740, file: !2634, line: 92, column: 7)
!2757 = !DILocation(line: 92, column: 7, scope: !2740, inlinedAt: !2750)
!2758 = !DILocation(line: 227, column: 12, scope: !2650)
!2759 = !DILocation(line: 227, column: 21, scope: !2650)
!2760 = !DILocation(line: 227, column: 5, scope: !2650)
!2761 = !DILocation(line: 146, column: 41, scope: !2656, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 167, column: 16, scope: !2671, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 228, column: 7, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2615, file: !115, line: 228, column: 7)
!2765 = !DILocation(line: 146, column: 110, scope: !2656, inlinedAt: !2762)
!2766 = !DILocation(line: 146, column: 120, scope: !2656, inlinedAt: !2762)
!2767 = !DILocation(line: 148, column: 7, scope: !2676, inlinedAt: !2762)
!2768 = !DILocation(line: 132, column: 41, scope: !2678, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 153, column: 16, scope: !2692, inlinedAt: !2762)
!2770 = !DILocation(line: 132, column: 100, scope: !2678, inlinedAt: !2769)
!2771 = !DILocation(line: 132, column: 110, scope: !2678, inlinedAt: !2769)
!2772 = !DILocation(line: 134, column: 7, scope: !2697, inlinedAt: !2769)
!2773 = !DILocation(line: 134, column: 7, scope: !2678, inlinedAt: !2769)
!2774 = !DILocation(line: 118, column: 41, scope: !2699, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 139, column: 16, scope: !2712, inlinedAt: !2769)
!2776 = !DILocation(line: 118, column: 90, scope: !2699, inlinedAt: !2775)
!2777 = !DILocation(line: 118, column: 100, scope: !2699, inlinedAt: !2775)
!2778 = !DILocation(line: 120, column: 7, scope: !2717, inlinedAt: !2775)
!2779 = !DILocation(line: 120, column: 7, scope: !2699, inlinedAt: !2775)
!2780 = !DILocation(line: 104, column: 41, scope: !2720, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 125, column: 16, scope: !2732, inlinedAt: !2775)
!2782 = !DILocation(line: 104, column: 80, scope: !2720, inlinedAt: !2781)
!2783 = !DILocation(line: 104, column: 90, scope: !2720, inlinedAt: !2781)
!2784 = !DILocation(line: 106, column: 7, scope: !2737, inlinedAt: !2781)
!2785 = !DILocation(line: 106, column: 7, scope: !2720, inlinedAt: !2781)
!2786 = !DILocation(line: 90, column: 41, scope: !2740, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 111, column: 16, scope: !2751, inlinedAt: !2781)
!2788 = !DILocation(line: 90, column: 70, scope: !2740, inlinedAt: !2787)
!2789 = !DILocation(line: 90, column: 80, scope: !2740, inlinedAt: !2787)
!2790 = !DILocation(line: 92, column: 7, scope: !2756, inlinedAt: !2787)
!2791 = !DILocation(line: 92, column: 7, scope: !2740, inlinedAt: !2787)
!2792 = !DILocalVariable(name: "s2", arg: 2, scope: !2793, file: !2634, line: 76, type: !41)
!2793 = distinct !DISubprogram(name: "strcaseeq6", scope: !2634, file: !2634, line: 76, type: !2794, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2796)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!26, !41, !41, !43, !43, !43}
!2796 = !{!2797, !2792, !2798, !2799, !2800}
!2797 = !DILocalVariable(name: "s1", arg: 1, scope: !2793, file: !2634, line: 76, type: !41)
!2798 = !DILocalVariable(name: "s26", arg: 3, scope: !2793, file: !2634, line: 76, type: !43)
!2799 = !DILocalVariable(name: "s27", arg: 4, scope: !2793, file: !2634, line: 76, type: !43)
!2800 = !DILocalVariable(name: "s28", arg: 5, scope: !2793, file: !2634, line: 76, type: !43)
!2801 = !DILocation(line: 76, column: 41, scope: !2793, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 97, column: 16, scope: !2803, inlinedAt: !2787)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !2634, line: 94, column: 11)
!2804 = distinct !DILexicalBlock(scope: !2756, file: !2634, line: 93, column: 5)
!2805 = !DILocation(line: 76, column: 60, scope: !2793, inlinedAt: !2802)
!2806 = !DILocation(line: 76, column: 70, scope: !2793, inlinedAt: !2802)
!2807 = !DILocation(line: 78, column: 7, scope: !2808, inlinedAt: !2802)
!2808 = distinct !DILexicalBlock(scope: !2793, file: !2634, line: 78, column: 7)
!2809 = !DILocation(line: 78, column: 7, scope: !2793, inlinedAt: !2802)
!2810 = !DILocalVariable(name: "s2", arg: 2, scope: !2811, file: !2634, line: 62, type: !41)
!2811 = distinct !DISubprogram(name: "strcaseeq7", scope: !2634, file: !2634, line: 62, type: !2812, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2814)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!26, !41, !41, !43, !43}
!2814 = !{!2815, !2810, !2816, !2817}
!2815 = !DILocalVariable(name: "s1", arg: 1, scope: !2811, file: !2634, line: 62, type: !41)
!2816 = !DILocalVariable(name: "s27", arg: 3, scope: !2811, file: !2634, line: 62, type: !43)
!2817 = !DILocalVariable(name: "s28", arg: 4, scope: !2811, file: !2634, line: 62, type: !43)
!2818 = !DILocation(line: 62, column: 41, scope: !2811, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 83, column: 16, scope: !2820, inlinedAt: !2802)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !2634, line: 80, column: 11)
!2821 = distinct !DILexicalBlock(scope: !2808, file: !2634, line: 79, column: 5)
!2822 = !DILocation(line: 62, column: 50, scope: !2811, inlinedAt: !2819)
!2823 = !DILocation(line: 62, column: 60, scope: !2811, inlinedAt: !2819)
!2824 = !DILocation(line: 64, column: 7, scope: !2825, inlinedAt: !2819)
!2825 = distinct !DILexicalBlock(scope: !2811, file: !2634, line: 64, column: 7)
!2826 = !DILocation(line: 228, column: 7, scope: !2615)
!2827 = !DILocation(line: 229, column: 12, scope: !2764)
!2828 = !DILocation(line: 229, column: 21, scope: !2764)
!2829 = !DILocation(line: 229, column: 5, scope: !2764)
!2830 = !DILocation(line: 231, column: 13, scope: !2615)
!2831 = !DILocation(line: 231, column: 11, scope: !2615)
!2832 = !DILocation(line: 231, column: 3, scope: !2615)
!2833 = !DILocation(line: 232, column: 1, scope: !2615)
!2834 = distinct !DISubprogram(name: "quotearg_alloc", scope: !115, file: !115, line: 791, type: !2835, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!59, !41, !109, !1961}
!2837 = !{!2838, !2839, !2840}
!2838 = !DILocalVariable(name: "arg", arg: 1, scope: !2834, file: !115, line: 791, type: !41)
!2839 = !DILocalVariable(name: "argsize", arg: 2, scope: !2834, file: !115, line: 791, type: !109)
!2840 = !DILocalVariable(name: "o", arg: 3, scope: !2834, file: !115, line: 792, type: !1961)
!2841 = !DILocation(line: 791, column: 29, scope: !2834)
!2842 = !DILocation(line: 791, column: 41, scope: !2834)
!2843 = !DILocation(line: 792, column: 47, scope: !2834)
!2844 = !DILocalVariable(name: "arg", arg: 1, scope: !2845, file: !115, line: 804, type: !41)
!2845 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !115, file: !115, line: 804, type: !2846, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!59, !41, !109, !523, !1961}
!2848 = !{!2844, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856}
!2849 = !DILocalVariable(name: "argsize", arg: 2, scope: !2845, file: !115, line: 804, type: !109)
!2850 = !DILocalVariable(name: "size", arg: 3, scope: !2845, file: !115, line: 804, type: !523)
!2851 = !DILocalVariable(name: "o", arg: 4, scope: !2845, file: !115, line: 805, type: !1961)
!2852 = !DILocalVariable(name: "p", scope: !2845, file: !115, line: 807, type: !1961)
!2853 = !DILocalVariable(name: "e", scope: !2845, file: !115, line: 808, type: !26)
!2854 = !DILocalVariable(name: "flags", scope: !2845, file: !115, line: 810, type: !26)
!2855 = !DILocalVariable(name: "bufsize", scope: !2845, file: !115, line: 811, type: !109)
!2856 = !DILocalVariable(name: "buf", scope: !2845, file: !115, line: 815, type: !59)
!2857 = !DILocation(line: 804, column: 33, scope: !2845, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 794, column: 10, scope: !2834)
!2859 = !DILocation(line: 804, column: 45, scope: !2845, inlinedAt: !2858)
!2860 = !DILocation(line: 804, column: 62, scope: !2845, inlinedAt: !2858)
!2861 = !DILocation(line: 805, column: 51, scope: !2845, inlinedAt: !2858)
!2862 = !DILocation(line: 807, column: 37, scope: !2845, inlinedAt: !2858)
!2863 = !DILocation(line: 807, column: 33, scope: !2845, inlinedAt: !2858)
!2864 = !DILocation(line: 808, column: 11, scope: !2845, inlinedAt: !2858)
!2865 = !DILocation(line: 808, column: 7, scope: !2845, inlinedAt: !2858)
!2866 = !DILocation(line: 810, column: 18, scope: !2845, inlinedAt: !2858)
!2867 = !DILocation(line: 810, column: 24, scope: !2845, inlinedAt: !2858)
!2868 = !DILocation(line: 810, column: 7, scope: !2845, inlinedAt: !2858)
!2869 = !DILocation(line: 811, column: 69, scope: !2845, inlinedAt: !2858)
!2870 = !DILocation(line: 812, column: 53, scope: !2845, inlinedAt: !2858)
!2871 = !DILocation(line: 813, column: 49, scope: !2845, inlinedAt: !2858)
!2872 = !DILocation(line: 814, column: 49, scope: !2845, inlinedAt: !2858)
!2873 = !DILocation(line: 811, column: 20, scope: !2845, inlinedAt: !2858)
!2874 = !DILocation(line: 814, column: 62, scope: !2845, inlinedAt: !2858)
!2875 = !DILocation(line: 811, column: 10, scope: !2845, inlinedAt: !2858)
!2876 = !DILocalVariable(name: "n", arg: 1, scope: !2877, file: !519, line: 220, type: !109)
!2877 = distinct !DISubprogram(name: "xcharalloc", scope: !519, file: !519, line: 220, type: !2878, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2880)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!59, !109}
!2880 = !{!2876}
!2881 = !DILocation(line: 220, column: 20, scope: !2877, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 815, column: 15, scope: !2845, inlinedAt: !2858)
!2883 = !DILocation(line: 222, column: 10, scope: !2877, inlinedAt: !2882)
!2884 = !DILocation(line: 815, column: 9, scope: !2845, inlinedAt: !2858)
!2885 = !DILocation(line: 816, column: 60, scope: !2845, inlinedAt: !2858)
!2886 = !DILocation(line: 818, column: 32, scope: !2845, inlinedAt: !2858)
!2887 = !DILocation(line: 818, column: 47, scope: !2845, inlinedAt: !2858)
!2888 = !DILocation(line: 816, column: 3, scope: !2845, inlinedAt: !2858)
!2889 = !DILocation(line: 819, column: 9, scope: !2845, inlinedAt: !2858)
!2890 = !DILocation(line: 794, column: 3, scope: !2834)
!2891 = !DILocation(line: 804, column: 33, scope: !2845)
!2892 = !DILocation(line: 804, column: 45, scope: !2845)
!2893 = !DILocation(line: 804, column: 62, scope: !2845)
!2894 = !DILocation(line: 805, column: 51, scope: !2845)
!2895 = !DILocation(line: 807, column: 37, scope: !2845)
!2896 = !DILocation(line: 807, column: 33, scope: !2845)
!2897 = !DILocation(line: 808, column: 11, scope: !2845)
!2898 = !DILocation(line: 808, column: 7, scope: !2845)
!2899 = !DILocation(line: 810, column: 18, scope: !2845)
!2900 = !DILocation(line: 810, column: 27, scope: !2845)
!2901 = !DILocation(line: 810, column: 24, scope: !2845)
!2902 = !DILocation(line: 810, column: 7, scope: !2845)
!2903 = !DILocation(line: 811, column: 69, scope: !2845)
!2904 = !DILocation(line: 812, column: 53, scope: !2845)
!2905 = !DILocation(line: 813, column: 49, scope: !2845)
!2906 = !DILocation(line: 814, column: 49, scope: !2845)
!2907 = !DILocation(line: 811, column: 20, scope: !2845)
!2908 = !DILocation(line: 814, column: 62, scope: !2845)
!2909 = !DILocation(line: 811, column: 10, scope: !2845)
!2910 = !DILocation(line: 220, column: 20, scope: !2877, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 815, column: 15, scope: !2845)
!2912 = !DILocation(line: 222, column: 10, scope: !2877, inlinedAt: !2911)
!2913 = !DILocation(line: 815, column: 9, scope: !2845)
!2914 = !DILocation(line: 816, column: 60, scope: !2845)
!2915 = !DILocation(line: 818, column: 32, scope: !2845)
!2916 = !DILocation(line: 818, column: 47, scope: !2845)
!2917 = !DILocation(line: 816, column: 3, scope: !2845)
!2918 = !DILocation(line: 819, column: 9, scope: !2845)
!2919 = !DILocation(line: 820, column: 7, scope: !2845)
!2920 = !DILocation(line: 821, column: 11, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2845, file: !115, line: 820, column: 7)
!2922 = !{!1341, !1341, i64 0}
!2923 = !DILocation(line: 821, column: 5, scope: !2921)
!2924 = !DILocation(line: 822, column: 3, scope: !2845)
!2925 = distinct !DISubprogram(name: "quotearg_free", scope: !115, file: !115, line: 840, type: !908, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2926)
!2926 = !{!2927, !2928}
!2927 = !DILocalVariable(name: "sv", scope: !2925, file: !115, line: 842, type: !141)
!2928 = !DILocalVariable(name: "i", scope: !2925, file: !115, line: 843, type: !26)
!2929 = !DILocation(line: 842, column: 24, scope: !2925)
!2930 = !DILocation(line: 842, column: 19, scope: !2925)
!2931 = !DILocation(line: 843, column: 7, scope: !2925)
!2932 = !DILocation(line: 844, column: 19, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !115, line: 844, column: 3)
!2934 = distinct !DILexicalBlock(scope: !2925, file: !115, line: 844, column: 3)
!2935 = !DILocation(line: 844, column: 17, scope: !2933)
!2936 = !DILocation(line: 844, column: 3, scope: !2934)
!2937 = !DILocation(line: 845, column: 17, scope: !2933)
!2938 = !{!2939, !572, i64 8}
!2939 = !{!"slotvec", !1341, i64 0, !572, i64 8}
!2940 = !DILocation(line: 845, column: 5, scope: !2933)
!2941 = !DILocation(line: 844, column: 28, scope: !2933)
!2942 = distinct !{!2942, !2936, !2943}
!2943 = !DILocation(line: 845, column: 20, scope: !2934)
!2944 = !DILocation(line: 846, column: 13, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2925, file: !115, line: 846, column: 7)
!2946 = !DILocation(line: 846, column: 17, scope: !2945)
!2947 = !DILocation(line: 846, column: 7, scope: !2925)
!2948 = !DILocation(line: 848, column: 7, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2945, file: !115, line: 847, column: 5)
!2950 = !DILocation(line: 849, column: 21, scope: !2949)
!2951 = !{!2939, !1341, i64 0}
!2952 = !DILocation(line: 850, column: 20, scope: !2949)
!2953 = !DILocation(line: 851, column: 5, scope: !2949)
!2954 = !DILocation(line: 852, column: 10, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2925, file: !115, line: 852, column: 7)
!2956 = !DILocation(line: 852, column: 7, scope: !2925)
!2957 = !DILocation(line: 854, column: 13, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2955, file: !115, line: 853, column: 5)
!2959 = !DILocation(line: 854, column: 7, scope: !2958)
!2960 = !DILocation(line: 855, column: 15, scope: !2958)
!2961 = !DILocation(line: 856, column: 5, scope: !2958)
!2962 = !DILocation(line: 857, column: 10, scope: !2925)
!2963 = !DILocation(line: 858, column: 1, scope: !2925)
!2964 = distinct !DISubprogram(name: "quotearg_n", scope: !115, file: !115, line: 922, type: !2965, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2967)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!59, !26, !41}
!2967 = !{!2968, !2969}
!2968 = !DILocalVariable(name: "n", arg: 1, scope: !2964, file: !115, line: 922, type: !26)
!2969 = !DILocalVariable(name: "arg", arg: 2, scope: !2964, file: !115, line: 922, type: !41)
!2970 = !DILocation(line: 922, column: 17, scope: !2964)
!2971 = !DILocation(line: 922, column: 32, scope: !2964)
!2972 = !DILocation(line: 924, column: 10, scope: !2964)
!2973 = !DILocation(line: 924, column: 3, scope: !2964)
!2974 = distinct !DISubprogram(name: "quotearg_n_options", scope: !115, file: !115, line: 869, type: !2975, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !2977)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!59, !26, !41, !109, !1961}
!2977 = !{!2978, !2979, !2980, !2981, !2982, !2983, !2984, !2987, !2989, !2990, !2991}
!2978 = !DILocalVariable(name: "n", arg: 1, scope: !2974, file: !115, line: 869, type: !26)
!2979 = !DILocalVariable(name: "arg", arg: 2, scope: !2974, file: !115, line: 869, type: !41)
!2980 = !DILocalVariable(name: "argsize", arg: 3, scope: !2974, file: !115, line: 869, type: !109)
!2981 = !DILocalVariable(name: "options", arg: 4, scope: !2974, file: !115, line: 870, type: !1961)
!2982 = !DILocalVariable(name: "e", scope: !2974, file: !115, line: 872, type: !26)
!2983 = !DILocalVariable(name: "sv", scope: !2974, file: !115, line: 874, type: !141)
!2984 = !DILocalVariable(name: "preallocated", scope: !2985, file: !115, line: 881, type: !69)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !115, line: 880, column: 5)
!2986 = distinct !DILexicalBlock(scope: !2974, file: !115, line: 879, column: 7)
!2987 = !DILocalVariable(name: "size", scope: !2988, file: !115, line: 894, type: !109)
!2988 = distinct !DILexicalBlock(scope: !2974, file: !115, line: 893, column: 3)
!2989 = !DILocalVariable(name: "val", scope: !2988, file: !115, line: 895, type: !59)
!2990 = !DILocalVariable(name: "flags", scope: !2988, file: !115, line: 897, type: !26)
!2991 = !DILocalVariable(name: "qsize", scope: !2988, file: !115, line: 898, type: !109)
!2992 = !DILocation(line: 869, column: 25, scope: !2974)
!2993 = !DILocation(line: 869, column: 40, scope: !2974)
!2994 = !DILocation(line: 869, column: 52, scope: !2974)
!2995 = !DILocation(line: 870, column: 51, scope: !2974)
!2996 = !DILocation(line: 872, column: 11, scope: !2974)
!2997 = !DILocation(line: 872, column: 7, scope: !2974)
!2998 = !DILocation(line: 874, column: 24, scope: !2974)
!2999 = !DILocation(line: 874, column: 19, scope: !2974)
!3000 = !DILocation(line: 876, column: 9, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2974, file: !115, line: 876, column: 7)
!3002 = !DILocation(line: 876, column: 7, scope: !2974)
!3003 = !DILocation(line: 877, column: 5, scope: !3001)
!3004 = !DILocation(line: 879, column: 7, scope: !2986)
!3005 = !DILocation(line: 879, column: 14, scope: !2986)
!3006 = !DILocation(line: 879, column: 7, scope: !2974)
!3007 = !DILocation(line: 881, column: 31, scope: !2985)
!3008 = !DILocation(line: 883, column: 67, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2985, file: !115, line: 883, column: 11)
!3010 = !DILocation(line: 883, column: 11, scope: !2985)
!3011 = !DILocation(line: 884, column: 9, scope: !3009)
!3012 = !DILocation(line: 886, column: 32, scope: !2985)
!3013 = !DILocation(line: 886, column: 61, scope: !2985)
!3014 = !DILocation(line: 886, column: 58, scope: !2985)
!3015 = !DILocation(line: 886, column: 66, scope: !2985)
!3016 = !DILocation(line: 886, column: 22, scope: !2985)
!3017 = !DILocation(line: 886, column: 15, scope: !2985)
!3018 = !DILocation(line: 887, column: 11, scope: !2985)
!3019 = !DILocation(line: 888, column: 15, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2985, file: !115, line: 887, column: 11)
!3021 = !{i64 0, i64 8, !2922, i64 8, i64 8, !571}
!3022 = !DILocation(line: 888, column: 9, scope: !3020)
!3023 = !DILocation(line: 889, column: 20, scope: !2985)
!3024 = !DILocation(line: 889, column: 18, scope: !2985)
!3025 = !DILocation(line: 889, column: 7, scope: !2985)
!3026 = !DILocation(line: 889, column: 38, scope: !2985)
!3027 = !DILocation(line: 889, column: 31, scope: !2985)
!3028 = !DILocation(line: 889, column: 48, scope: !2985)
!3029 = !DILocation(line: 890, column: 14, scope: !2985)
!3030 = !DILocation(line: 891, column: 5, scope: !2985)
!3031 = !DILocation(line: 894, column: 19, scope: !2988)
!3032 = !DILocation(line: 894, column: 25, scope: !2988)
!3033 = !DILocation(line: 894, column: 12, scope: !2988)
!3034 = !DILocation(line: 895, column: 23, scope: !2988)
!3035 = !DILocation(line: 895, column: 11, scope: !2988)
!3036 = !DILocation(line: 897, column: 26, scope: !2988)
!3037 = !DILocation(line: 897, column: 32, scope: !2988)
!3038 = !DILocation(line: 897, column: 9, scope: !2988)
!3039 = !DILocation(line: 899, column: 55, scope: !2988)
!3040 = !DILocation(line: 900, column: 46, scope: !2988)
!3041 = !DILocation(line: 901, column: 55, scope: !2988)
!3042 = !DILocation(line: 902, column: 55, scope: !2988)
!3043 = !DILocation(line: 898, column: 20, scope: !2988)
!3044 = !DILocation(line: 898, column: 12, scope: !2988)
!3045 = !DILocation(line: 904, column: 14, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !2988, file: !115, line: 904, column: 9)
!3047 = !DILocation(line: 904, column: 9, scope: !2988)
!3048 = !DILocation(line: 906, column: 35, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3046, file: !115, line: 905, column: 7)
!3050 = !DILocation(line: 906, column: 20, scope: !3049)
!3051 = !DILocation(line: 907, column: 17, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3049, file: !115, line: 907, column: 13)
!3053 = !DILocation(line: 907, column: 13, scope: !3049)
!3054 = !DILocation(line: 908, column: 11, scope: !3052)
!3055 = !DILocation(line: 220, column: 20, scope: !2877, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 909, column: 27, scope: !3049)
!3057 = !DILocation(line: 222, column: 10, scope: !2877, inlinedAt: !3056)
!3058 = !DILocation(line: 909, column: 19, scope: !3049)
!3059 = !DILocation(line: 910, column: 69, scope: !3049)
!3060 = !DILocation(line: 912, column: 44, scope: !3049)
!3061 = !DILocation(line: 913, column: 44, scope: !3049)
!3062 = !DILocation(line: 910, column: 9, scope: !3049)
!3063 = !DILocation(line: 914, column: 7, scope: !3049)
!3064 = !DILocation(line: 916, column: 11, scope: !2988)
!3065 = !DILocation(line: 917, column: 5, scope: !2988)
!3066 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !115, file: !115, line: 928, type: !3067, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!59, !26, !41, !109}
!3069 = !{!3070, !3071, !3072}
!3070 = !DILocalVariable(name: "n", arg: 1, scope: !3066, file: !115, line: 928, type: !26)
!3071 = !DILocalVariable(name: "arg", arg: 2, scope: !3066, file: !115, line: 928, type: !41)
!3072 = !DILocalVariable(name: "argsize", arg: 3, scope: !3066, file: !115, line: 928, type: !109)
!3073 = !DILocation(line: 928, column: 21, scope: !3066)
!3074 = !DILocation(line: 928, column: 36, scope: !3066)
!3075 = !DILocation(line: 928, column: 48, scope: !3066)
!3076 = !DILocation(line: 930, column: 10, scope: !3066)
!3077 = !DILocation(line: 930, column: 3, scope: !3066)
!3078 = distinct !DISubprogram(name: "quotearg", scope: !115, file: !115, line: 934, type: !3079, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3081)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!59, !41}
!3081 = !{!3082}
!3082 = !DILocalVariable(name: "arg", arg: 1, scope: !3078, file: !115, line: 934, type: !41)
!3083 = !DILocation(line: 934, column: 23, scope: !3078)
!3084 = !DILocation(line: 922, column: 17, scope: !2964, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 936, column: 10, scope: !3078)
!3086 = !DILocation(line: 922, column: 32, scope: !2964, inlinedAt: !3085)
!3087 = !DILocation(line: 924, column: 10, scope: !2964, inlinedAt: !3085)
!3088 = !DILocation(line: 936, column: 3, scope: !3078)
!3089 = distinct !DISubprogram(name: "quotearg_mem", scope: !115, file: !115, line: 940, type: !3090, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3092)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!59, !41, !109}
!3092 = !{!3093, !3094}
!3093 = !DILocalVariable(name: "arg", arg: 1, scope: !3089, file: !115, line: 940, type: !41)
!3094 = !DILocalVariable(name: "argsize", arg: 2, scope: !3089, file: !115, line: 940, type: !109)
!3095 = !DILocation(line: 940, column: 27, scope: !3089)
!3096 = !DILocation(line: 940, column: 39, scope: !3089)
!3097 = !DILocation(line: 928, column: 21, scope: !3066, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 942, column: 10, scope: !3089)
!3099 = !DILocation(line: 928, column: 36, scope: !3066, inlinedAt: !3098)
!3100 = !DILocation(line: 928, column: 48, scope: !3066, inlinedAt: !3098)
!3101 = !DILocation(line: 930, column: 10, scope: !3066, inlinedAt: !3098)
!3102 = !DILocation(line: 942, column: 3, scope: !3089)
!3103 = distinct !DISubprogram(name: "quotearg_n_style", scope: !115, file: !115, line: 946, type: !3104, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!59, !26, !89, !41}
!3106 = !{!3107, !3108, !3109, !3110}
!3107 = !DILocalVariable(name: "n", arg: 1, scope: !3103, file: !115, line: 946, type: !26)
!3108 = !DILocalVariable(name: "s", arg: 2, scope: !3103, file: !115, line: 946, type: !89)
!3109 = !DILocalVariable(name: "arg", arg: 3, scope: !3103, file: !115, line: 946, type: !41)
!3110 = !DILocalVariable(name: "o", scope: !3103, file: !115, line: 948, type: !1962)
!3111 = !DILocalVariable(name: "o", scope: !3112, file: !115, line: 187, type: !122)
!3112 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !115, file: !115, line: 185, type: !3113, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3115)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!122, !89}
!3115 = !{!3116, !3111}
!3116 = !DILocalVariable(name: "style", arg: 1, scope: !3112, file: !115, line: 185, type: !89)
!3117 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3118 = !DILocation(line: 187, column: 26, scope: !3112, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 948, column: 36, scope: !3103)
!3120 = !DILocation(line: 946, column: 23, scope: !3103)
!3121 = !DILocation(line: 946, column: 45, scope: !3103)
!3122 = !DILocation(line: 946, column: 60, scope: !3103)
!3123 = !DILocation(line: 948, column: 3, scope: !3103)
!3124 = !DILocation(line: 948, column: 32, scope: !3103)
!3125 = !DILocation(line: 185, column: 48, scope: !3112, inlinedAt: !3119)
!3126 = !DILocation(line: 187, column: 3, scope: !3112, inlinedAt: !3119)
!3127 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3128 = !DILocation(line: 188, column: 13, scope: !3129, inlinedAt: !3119)
!3129 = distinct !DILexicalBlock(scope: !3112, file: !115, line: 188, column: 7)
!3130 = !DILocation(line: 188, column: 7, scope: !3112, inlinedAt: !3119)
!3131 = !DILocation(line: 189, column: 5, scope: !3129, inlinedAt: !3119)
!3132 = !{!3133}
!3133 = distinct !{!3133, !3134, !"quoting_options_from_style: argument 0"}
!3134 = distinct !{!3134, !"quoting_options_from_style"}
!3135 = !DILocation(line: 191, column: 10, scope: !3112, inlinedAt: !3119)
!3136 = !DILocation(line: 192, column: 1, scope: !3112, inlinedAt: !3119)
!3137 = !DILocation(line: 949, column: 10, scope: !3103)
!3138 = !DILocation(line: 950, column: 1, scope: !3103)
!3139 = !DILocation(line: 949, column: 3, scope: !3103)
!3140 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !115, file: !115, line: 953, type: !3141, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3143)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!59, !26, !89, !41, !109}
!3143 = !{!3144, !3145, !3146, !3147, !3148}
!3144 = !DILocalVariable(name: "n", arg: 1, scope: !3140, file: !115, line: 953, type: !26)
!3145 = !DILocalVariable(name: "s", arg: 2, scope: !3140, file: !115, line: 953, type: !89)
!3146 = !DILocalVariable(name: "arg", arg: 3, scope: !3140, file: !115, line: 954, type: !41)
!3147 = !DILocalVariable(name: "argsize", arg: 4, scope: !3140, file: !115, line: 954, type: !109)
!3148 = !DILocalVariable(name: "o", scope: !3140, file: !115, line: 956, type: !1962)
!3149 = !DILocation(line: 187, column: 26, scope: !3112, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 956, column: 36, scope: !3140)
!3151 = !DILocation(line: 953, column: 27, scope: !3140)
!3152 = !DILocation(line: 953, column: 49, scope: !3140)
!3153 = !DILocation(line: 954, column: 35, scope: !3140)
!3154 = !DILocation(line: 954, column: 47, scope: !3140)
!3155 = !DILocation(line: 956, column: 3, scope: !3140)
!3156 = !DILocation(line: 956, column: 32, scope: !3140)
!3157 = !DILocation(line: 185, column: 48, scope: !3112, inlinedAt: !3150)
!3158 = !DILocation(line: 187, column: 3, scope: !3112, inlinedAt: !3150)
!3159 = !DILocation(line: 188, column: 13, scope: !3129, inlinedAt: !3150)
!3160 = !DILocation(line: 188, column: 7, scope: !3112, inlinedAt: !3150)
!3161 = !DILocation(line: 189, column: 5, scope: !3129, inlinedAt: !3150)
!3162 = !{!3163}
!3163 = distinct !{!3163, !3164, !"quoting_options_from_style: argument 0"}
!3164 = distinct !{!3164, !"quoting_options_from_style"}
!3165 = !DILocation(line: 191, column: 10, scope: !3112, inlinedAt: !3150)
!3166 = !DILocation(line: 192, column: 1, scope: !3112, inlinedAt: !3150)
!3167 = !DILocation(line: 957, column: 10, scope: !3140)
!3168 = !DILocation(line: 958, column: 1, scope: !3140)
!3169 = !DILocation(line: 957, column: 3, scope: !3140)
!3170 = distinct !DISubprogram(name: "quotearg_style", scope: !115, file: !115, line: 961, type: !3171, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3173)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!59, !89, !41}
!3173 = !{!3174, !3175}
!3174 = !DILocalVariable(name: "s", arg: 1, scope: !3170, file: !115, line: 961, type: !89)
!3175 = !DILocalVariable(name: "arg", arg: 2, scope: !3170, file: !115, line: 961, type: !41)
!3176 = !DILocation(line: 187, column: 26, scope: !3112, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 948, column: 36, scope: !3103, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 963, column: 10, scope: !3170)
!3179 = !DILocation(line: 961, column: 36, scope: !3170)
!3180 = !DILocation(line: 961, column: 51, scope: !3170)
!3181 = !DILocation(line: 946, column: 23, scope: !3103, inlinedAt: !3178)
!3182 = !DILocation(line: 946, column: 45, scope: !3103, inlinedAt: !3178)
!3183 = !DILocation(line: 946, column: 60, scope: !3103, inlinedAt: !3178)
!3184 = !DILocation(line: 948, column: 3, scope: !3103, inlinedAt: !3178)
!3185 = !DILocation(line: 948, column: 32, scope: !3103, inlinedAt: !3178)
!3186 = !DILocation(line: 185, column: 48, scope: !3112, inlinedAt: !3177)
!3187 = !DILocation(line: 187, column: 3, scope: !3112, inlinedAt: !3177)
!3188 = !DILocation(line: 188, column: 13, scope: !3129, inlinedAt: !3177)
!3189 = !DILocation(line: 188, column: 7, scope: !3112, inlinedAt: !3177)
!3190 = !DILocation(line: 189, column: 5, scope: !3129, inlinedAt: !3177)
!3191 = !{!3192}
!3192 = distinct !{!3192, !3193, !"quoting_options_from_style: argument 0"}
!3193 = distinct !{!3193, !"quoting_options_from_style"}
!3194 = !DILocation(line: 191, column: 10, scope: !3112, inlinedAt: !3177)
!3195 = !DILocation(line: 192, column: 1, scope: !3112, inlinedAt: !3177)
!3196 = !DILocation(line: 949, column: 10, scope: !3103, inlinedAt: !3178)
!3197 = !DILocation(line: 950, column: 1, scope: !3103, inlinedAt: !3178)
!3198 = !DILocation(line: 963, column: 3, scope: !3170)
!3199 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !115, file: !115, line: 967, type: !3200, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3202)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!59, !89, !41, !109}
!3202 = !{!3203, !3204, !3205}
!3203 = !DILocalVariable(name: "s", arg: 1, scope: !3199, file: !115, line: 967, type: !89)
!3204 = !DILocalVariable(name: "arg", arg: 2, scope: !3199, file: !115, line: 967, type: !41)
!3205 = !DILocalVariable(name: "argsize", arg: 3, scope: !3199, file: !115, line: 967, type: !109)
!3206 = !DILocation(line: 187, column: 26, scope: !3112, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 956, column: 36, scope: !3140, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 969, column: 10, scope: !3199)
!3209 = !DILocation(line: 967, column: 40, scope: !3199)
!3210 = !DILocation(line: 967, column: 55, scope: !3199)
!3211 = !DILocation(line: 967, column: 67, scope: !3199)
!3212 = !DILocation(line: 953, column: 27, scope: !3140, inlinedAt: !3208)
!3213 = !DILocation(line: 953, column: 49, scope: !3140, inlinedAt: !3208)
!3214 = !DILocation(line: 954, column: 35, scope: !3140, inlinedAt: !3208)
!3215 = !DILocation(line: 954, column: 47, scope: !3140, inlinedAt: !3208)
!3216 = !DILocation(line: 956, column: 3, scope: !3140, inlinedAt: !3208)
!3217 = !DILocation(line: 956, column: 32, scope: !3140, inlinedAt: !3208)
!3218 = !DILocation(line: 185, column: 48, scope: !3112, inlinedAt: !3207)
!3219 = !DILocation(line: 187, column: 3, scope: !3112, inlinedAt: !3207)
!3220 = !DILocation(line: 188, column: 13, scope: !3129, inlinedAt: !3207)
!3221 = !DILocation(line: 188, column: 7, scope: !3112, inlinedAt: !3207)
!3222 = !DILocation(line: 189, column: 5, scope: !3129, inlinedAt: !3207)
!3223 = !{!3224}
!3224 = distinct !{!3224, !3225, !"quoting_options_from_style: argument 0"}
!3225 = distinct !{!3225, !"quoting_options_from_style"}
!3226 = !DILocation(line: 191, column: 10, scope: !3112, inlinedAt: !3207)
!3227 = !DILocation(line: 192, column: 1, scope: !3112, inlinedAt: !3207)
!3228 = !DILocation(line: 957, column: 10, scope: !3140, inlinedAt: !3208)
!3229 = !DILocation(line: 958, column: 1, scope: !3140, inlinedAt: !3208)
!3230 = !DILocation(line: 969, column: 3, scope: !3199)
!3231 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !115, file: !115, line: 973, type: !3232, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3234)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!59, !41, !109, !43}
!3234 = !{!3235, !3236, !3237, !3238}
!3235 = !DILocalVariable(name: "arg", arg: 1, scope: !3231, file: !115, line: 973, type: !41)
!3236 = !DILocalVariable(name: "argsize", arg: 2, scope: !3231, file: !115, line: 973, type: !109)
!3237 = !DILocalVariable(name: "ch", arg: 3, scope: !3231, file: !115, line: 973, type: !43)
!3238 = !DILocalVariable(name: "options", scope: !3231, file: !115, line: 975, type: !122)
!3239 = !DILocation(line: 973, column: 32, scope: !3231)
!3240 = !DILocation(line: 973, column: 44, scope: !3231)
!3241 = !DILocation(line: 973, column: 58, scope: !3231)
!3242 = !DILocation(line: 975, column: 3, scope: !3231)
!3243 = !DILocation(line: 976, column: 13, scope: !3231)
!3244 = !{i64 0, i64 4, !668, i64 4, i64 4, !630, i64 8, i64 32, !668, i64 40, i64 8, !571, i64 48, i64 8, !571}
!3245 = !DILocation(line: 975, column: 26, scope: !3231)
!3246 = !DILocation(line: 144, column: 43, scope: !1983, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 977, column: 3, scope: !3231)
!3248 = !DILocation(line: 144, column: 51, scope: !1983, inlinedAt: !3247)
!3249 = !DILocation(line: 144, column: 58, scope: !1983, inlinedAt: !3247)
!3250 = !DILocation(line: 146, column: 17, scope: !1983, inlinedAt: !3247)
!3251 = !DILocation(line: 148, column: 62, scope: !1983, inlinedAt: !3247)
!3252 = !DILocation(line: 148, column: 57, scope: !1983, inlinedAt: !3247)
!3253 = !DILocation(line: 147, column: 17, scope: !1983, inlinedAt: !3247)
!3254 = !DILocation(line: 149, column: 18, scope: !1983, inlinedAt: !3247)
!3255 = !DILocation(line: 149, column: 15, scope: !1983, inlinedAt: !3247)
!3256 = !DILocation(line: 149, column: 7, scope: !1983, inlinedAt: !3247)
!3257 = !DILocation(line: 150, column: 12, scope: !1983, inlinedAt: !3247)
!3258 = !DILocation(line: 150, column: 15, scope: !1983, inlinedAt: !3247)
!3259 = !DILocation(line: 150, column: 25, scope: !1983, inlinedAt: !3247)
!3260 = !DILocation(line: 150, column: 7, scope: !1983, inlinedAt: !3247)
!3261 = !DILocation(line: 151, column: 18, scope: !1983, inlinedAt: !3247)
!3262 = !DILocation(line: 151, column: 23, scope: !1983, inlinedAt: !3247)
!3263 = !DILocation(line: 151, column: 6, scope: !1983, inlinedAt: !3247)
!3264 = !DILocation(line: 978, column: 10, scope: !3231)
!3265 = !DILocation(line: 979, column: 1, scope: !3231)
!3266 = !DILocation(line: 978, column: 3, scope: !3231)
!3267 = distinct !DISubprogram(name: "quotearg_char", scope: !115, file: !115, line: 982, type: !3268, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3270)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!59, !41, !43}
!3270 = !{!3271, !3272}
!3271 = !DILocalVariable(name: "arg", arg: 1, scope: !3267, file: !115, line: 982, type: !41)
!3272 = !DILocalVariable(name: "ch", arg: 2, scope: !3267, file: !115, line: 982, type: !43)
!3273 = !DILocation(line: 982, column: 28, scope: !3267)
!3274 = !DILocation(line: 982, column: 38, scope: !3267)
!3275 = !DILocation(line: 973, column: 32, scope: !3231, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 984, column: 10, scope: !3267)
!3277 = !DILocation(line: 973, column: 44, scope: !3231, inlinedAt: !3276)
!3278 = !DILocation(line: 973, column: 58, scope: !3231, inlinedAt: !3276)
!3279 = !DILocation(line: 975, column: 3, scope: !3231, inlinedAt: !3276)
!3280 = !DILocation(line: 976, column: 13, scope: !3231, inlinedAt: !3276)
!3281 = !DILocation(line: 975, column: 26, scope: !3231, inlinedAt: !3276)
!3282 = !DILocation(line: 144, column: 43, scope: !1983, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 977, column: 3, scope: !3231, inlinedAt: !3276)
!3284 = !DILocation(line: 144, column: 51, scope: !1983, inlinedAt: !3283)
!3285 = !DILocation(line: 144, column: 58, scope: !1983, inlinedAt: !3283)
!3286 = !DILocation(line: 146, column: 17, scope: !1983, inlinedAt: !3283)
!3287 = !DILocation(line: 148, column: 62, scope: !1983, inlinedAt: !3283)
!3288 = !DILocation(line: 148, column: 57, scope: !1983, inlinedAt: !3283)
!3289 = !DILocation(line: 147, column: 17, scope: !1983, inlinedAt: !3283)
!3290 = !DILocation(line: 149, column: 18, scope: !1983, inlinedAt: !3283)
!3291 = !DILocation(line: 149, column: 15, scope: !1983, inlinedAt: !3283)
!3292 = !DILocation(line: 149, column: 7, scope: !1983, inlinedAt: !3283)
!3293 = !DILocation(line: 150, column: 12, scope: !1983, inlinedAt: !3283)
!3294 = !DILocation(line: 150, column: 15, scope: !1983, inlinedAt: !3283)
!3295 = !DILocation(line: 150, column: 25, scope: !1983, inlinedAt: !3283)
!3296 = !DILocation(line: 150, column: 7, scope: !1983, inlinedAt: !3283)
!3297 = !DILocation(line: 151, column: 18, scope: !1983, inlinedAt: !3283)
!3298 = !DILocation(line: 151, column: 23, scope: !1983, inlinedAt: !3283)
!3299 = !DILocation(line: 151, column: 6, scope: !1983, inlinedAt: !3283)
!3300 = !DILocation(line: 978, column: 10, scope: !3231, inlinedAt: !3276)
!3301 = !DILocation(line: 979, column: 1, scope: !3231, inlinedAt: !3276)
!3302 = !DILocation(line: 984, column: 3, scope: !3267)
!3303 = distinct !DISubprogram(name: "quotearg_colon", scope: !115, file: !115, line: 988, type: !3079, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3304)
!3304 = !{!3305}
!3305 = !DILocalVariable(name: "arg", arg: 1, scope: !3303, file: !115, line: 988, type: !41)
!3306 = !DILocation(line: 988, column: 29, scope: !3303)
!3307 = !DILocation(line: 982, column: 28, scope: !3267, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 990, column: 10, scope: !3303)
!3309 = !DILocation(line: 982, column: 38, scope: !3267, inlinedAt: !3308)
!3310 = !DILocation(line: 973, column: 32, scope: !3231, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 984, column: 10, scope: !3267, inlinedAt: !3308)
!3312 = !DILocation(line: 973, column: 44, scope: !3231, inlinedAt: !3311)
!3313 = !DILocation(line: 973, column: 58, scope: !3231, inlinedAt: !3311)
!3314 = !DILocation(line: 975, column: 3, scope: !3231, inlinedAt: !3311)
!3315 = !DILocation(line: 976, column: 13, scope: !3231, inlinedAt: !3311)
!3316 = !DILocation(line: 975, column: 26, scope: !3231, inlinedAt: !3311)
!3317 = !DILocation(line: 144, column: 43, scope: !1983, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 977, column: 3, scope: !3231, inlinedAt: !3311)
!3319 = !DILocation(line: 144, column: 51, scope: !1983, inlinedAt: !3318)
!3320 = !DILocation(line: 144, column: 58, scope: !1983, inlinedAt: !3318)
!3321 = !DILocation(line: 146, column: 17, scope: !1983, inlinedAt: !3318)
!3322 = !DILocation(line: 148, column: 57, scope: !1983, inlinedAt: !3318)
!3323 = !DILocation(line: 147, column: 17, scope: !1983, inlinedAt: !3318)
!3324 = !DILocation(line: 149, column: 7, scope: !1983, inlinedAt: !3318)
!3325 = !DILocation(line: 150, column: 12, scope: !1983, inlinedAt: !3318)
!3326 = !DILocation(line: 151, column: 6, scope: !1983, inlinedAt: !3318)
!3327 = !DILocation(line: 978, column: 10, scope: !3231, inlinedAt: !3311)
!3328 = !DILocation(line: 979, column: 1, scope: !3231, inlinedAt: !3311)
!3329 = !DILocation(line: 990, column: 3, scope: !3303)
!3330 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !115, file: !115, line: 994, type: !3090, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3331)
!3331 = !{!3332, !3333}
!3332 = !DILocalVariable(name: "arg", arg: 1, scope: !3330, file: !115, line: 994, type: !41)
!3333 = !DILocalVariable(name: "argsize", arg: 2, scope: !3330, file: !115, line: 994, type: !109)
!3334 = !DILocation(line: 994, column: 33, scope: !3330)
!3335 = !DILocation(line: 994, column: 45, scope: !3330)
!3336 = !DILocation(line: 973, column: 32, scope: !3231, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 996, column: 10, scope: !3330)
!3338 = !DILocation(line: 973, column: 44, scope: !3231, inlinedAt: !3337)
!3339 = !DILocation(line: 973, column: 58, scope: !3231, inlinedAt: !3337)
!3340 = !DILocation(line: 975, column: 3, scope: !3231, inlinedAt: !3337)
!3341 = !DILocation(line: 976, column: 13, scope: !3231, inlinedAt: !3337)
!3342 = !DILocation(line: 975, column: 26, scope: !3231, inlinedAt: !3337)
!3343 = !DILocation(line: 144, column: 43, scope: !1983, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 977, column: 3, scope: !3231, inlinedAt: !3337)
!3345 = !DILocation(line: 144, column: 51, scope: !1983, inlinedAt: !3344)
!3346 = !DILocation(line: 144, column: 58, scope: !1983, inlinedAt: !3344)
!3347 = !DILocation(line: 146, column: 17, scope: !1983, inlinedAt: !3344)
!3348 = !DILocation(line: 148, column: 57, scope: !1983, inlinedAt: !3344)
!3349 = !DILocation(line: 147, column: 17, scope: !1983, inlinedAt: !3344)
!3350 = !DILocation(line: 149, column: 7, scope: !1983, inlinedAt: !3344)
!3351 = !DILocation(line: 150, column: 12, scope: !1983, inlinedAt: !3344)
!3352 = !DILocation(line: 151, column: 6, scope: !1983, inlinedAt: !3344)
!3353 = !DILocation(line: 978, column: 10, scope: !3231, inlinedAt: !3337)
!3354 = !DILocation(line: 979, column: 1, scope: !3231, inlinedAt: !3337)
!3355 = !DILocation(line: 996, column: 3, scope: !3330)
!3356 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !115, file: !115, line: 1000, type: !3104, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3357)
!3357 = !{!3358, !3359, !3360, !3361}
!3358 = !DILocalVariable(name: "n", arg: 1, scope: !3356, file: !115, line: 1000, type: !26)
!3359 = !DILocalVariable(name: "s", arg: 2, scope: !3356, file: !115, line: 1000, type: !89)
!3360 = !DILocalVariable(name: "arg", arg: 3, scope: !3356, file: !115, line: 1000, type: !41)
!3361 = !DILocalVariable(name: "options", scope: !3356, file: !115, line: 1002, type: !122)
!3362 = !DILocation(line: 187, column: 26, scope: !3112, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 1003, column: 13, scope: !3356)
!3364 = !DILocation(line: 1000, column: 29, scope: !3356)
!3365 = !DILocation(line: 1000, column: 51, scope: !3356)
!3366 = !DILocation(line: 1000, column: 66, scope: !3356)
!3367 = !DILocation(line: 1002, column: 3, scope: !3356)
!3368 = !DILocation(line: 185, column: 48, scope: !3112, inlinedAt: !3363)
!3369 = !DILocation(line: 187, column: 3, scope: !3112, inlinedAt: !3363)
!3370 = !DILocation(line: 188, column: 13, scope: !3129, inlinedAt: !3363)
!3371 = !DILocation(line: 188, column: 7, scope: !3112, inlinedAt: !3363)
!3372 = !DILocation(line: 189, column: 5, scope: !3129, inlinedAt: !3363)
!3373 = !{!3374}
!3374 = distinct !{!3374, !3375, !"quoting_options_from_style: argument 0"}
!3375 = distinct !{!3375, !"quoting_options_from_style"}
!3376 = !DILocation(line: 191, column: 10, scope: !3112, inlinedAt: !3363)
!3377 = !DILocation(line: 192, column: 1, scope: !3112, inlinedAt: !3363)
!3378 = !DILocation(line: 1003, column: 13, scope: !3356)
!3379 = !DILocation(line: 1002, column: 26, scope: !3356)
!3380 = !DILocation(line: 144, column: 43, scope: !1983, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 1004, column: 3, scope: !3356)
!3382 = !DILocation(line: 144, column: 51, scope: !1983, inlinedAt: !3381)
!3383 = !DILocation(line: 144, column: 58, scope: !1983, inlinedAt: !3381)
!3384 = !DILocation(line: 146, column: 17, scope: !1983, inlinedAt: !3381)
!3385 = !DILocation(line: 148, column: 57, scope: !1983, inlinedAt: !3381)
!3386 = !DILocation(line: 147, column: 17, scope: !1983, inlinedAt: !3381)
!3387 = !DILocation(line: 149, column: 7, scope: !1983, inlinedAt: !3381)
!3388 = !DILocation(line: 150, column: 12, scope: !1983, inlinedAt: !3381)
!3389 = !DILocation(line: 151, column: 6, scope: !1983, inlinedAt: !3381)
!3390 = !DILocation(line: 1005, column: 10, scope: !3356)
!3391 = !DILocation(line: 1006, column: 1, scope: !3356)
!3392 = !DILocation(line: 1005, column: 3, scope: !3356)
!3393 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !115, file: !115, line: 1009, type: !3394, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3396)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!59, !26, !41, !41, !41}
!3396 = !{!3397, !3398, !3399, !3400}
!3397 = !DILocalVariable(name: "n", arg: 1, scope: !3393, file: !115, line: 1009, type: !26)
!3398 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3393, file: !115, line: 1009, type: !41)
!3399 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3393, file: !115, line: 1010, type: !41)
!3400 = !DILocalVariable(name: "arg", arg: 4, scope: !3393, file: !115, line: 1010, type: !41)
!3401 = !DILocation(line: 1009, column: 24, scope: !3393)
!3402 = !DILocation(line: 1009, column: 39, scope: !3393)
!3403 = !DILocation(line: 1010, column: 32, scope: !3393)
!3404 = !DILocation(line: 1010, column: 57, scope: !3393)
!3405 = !DILocalVariable(name: "n", arg: 1, scope: !3406, file: !115, line: 1017, type: !26)
!3406 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !115, file: !115, line: 1017, type: !3407, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!59, !26, !41, !41, !41, !109}
!3409 = !{!3405, !3410, !3411, !3412, !3413, !3414}
!3410 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3406, file: !115, line: 1017, type: !41)
!3411 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3406, file: !115, line: 1018, type: !41)
!3412 = !DILocalVariable(name: "arg", arg: 4, scope: !3406, file: !115, line: 1019, type: !41)
!3413 = !DILocalVariable(name: "argsize", arg: 5, scope: !3406, file: !115, line: 1019, type: !109)
!3414 = !DILocalVariable(name: "o", scope: !3406, file: !115, line: 1021, type: !122)
!3415 = !DILocation(line: 1017, column: 28, scope: !3406, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 1012, column: 10, scope: !3393)
!3417 = !DILocation(line: 1017, column: 43, scope: !3406, inlinedAt: !3416)
!3418 = !DILocation(line: 1018, column: 36, scope: !3406, inlinedAt: !3416)
!3419 = !DILocation(line: 1019, column: 36, scope: !3406, inlinedAt: !3416)
!3420 = !DILocation(line: 1019, column: 48, scope: !3406, inlinedAt: !3416)
!3421 = !DILocation(line: 1021, column: 3, scope: !3406, inlinedAt: !3416)
!3422 = !DILocation(line: 1021, column: 30, scope: !3406, inlinedAt: !3416)
!3423 = !DILocation(line: 1021, column: 26, scope: !3406, inlinedAt: !3416)
!3424 = !DILocation(line: 171, column: 45, scope: !2032, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 1022, column: 3, scope: !3406, inlinedAt: !3416)
!3426 = !DILocation(line: 172, column: 33, scope: !2032, inlinedAt: !3425)
!3427 = !DILocation(line: 172, column: 57, scope: !2032, inlinedAt: !3425)
!3428 = !DILocation(line: 176, column: 6, scope: !2032, inlinedAt: !3425)
!3429 = !DILocation(line: 176, column: 12, scope: !2032, inlinedAt: !3425)
!3430 = !DILocation(line: 177, column: 8, scope: !2048, inlinedAt: !3425)
!3431 = !DILocation(line: 177, column: 23, scope: !2048, inlinedAt: !3425)
!3432 = !DILocation(line: 177, column: 19, scope: !2048, inlinedAt: !3425)
!3433 = !DILocation(line: 178, column: 5, scope: !2048, inlinedAt: !3425)
!3434 = !DILocation(line: 179, column: 6, scope: !2032, inlinedAt: !3425)
!3435 = !DILocation(line: 179, column: 17, scope: !2032, inlinedAt: !3425)
!3436 = !DILocation(line: 180, column: 6, scope: !2032, inlinedAt: !3425)
!3437 = !DILocation(line: 180, column: 18, scope: !2032, inlinedAt: !3425)
!3438 = !DILocation(line: 1023, column: 10, scope: !3406, inlinedAt: !3416)
!3439 = !DILocation(line: 1024, column: 1, scope: !3406, inlinedAt: !3416)
!3440 = !DILocation(line: 1012, column: 3, scope: !3393)
!3441 = !DILocation(line: 1017, column: 28, scope: !3406)
!3442 = !DILocation(line: 1017, column: 43, scope: !3406)
!3443 = !DILocation(line: 1018, column: 36, scope: !3406)
!3444 = !DILocation(line: 1019, column: 36, scope: !3406)
!3445 = !DILocation(line: 1019, column: 48, scope: !3406)
!3446 = !DILocation(line: 1021, column: 3, scope: !3406)
!3447 = !DILocation(line: 1021, column: 30, scope: !3406)
!3448 = !DILocation(line: 1021, column: 26, scope: !3406)
!3449 = !DILocation(line: 171, column: 45, scope: !2032, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 1022, column: 3, scope: !3406)
!3451 = !DILocation(line: 172, column: 33, scope: !2032, inlinedAt: !3450)
!3452 = !DILocation(line: 172, column: 57, scope: !2032, inlinedAt: !3450)
!3453 = !DILocation(line: 176, column: 6, scope: !2032, inlinedAt: !3450)
!3454 = !DILocation(line: 176, column: 12, scope: !2032, inlinedAt: !3450)
!3455 = !DILocation(line: 177, column: 8, scope: !2048, inlinedAt: !3450)
!3456 = !DILocation(line: 177, column: 23, scope: !2048, inlinedAt: !3450)
!3457 = !DILocation(line: 177, column: 19, scope: !2048, inlinedAt: !3450)
!3458 = !DILocation(line: 178, column: 5, scope: !2048, inlinedAt: !3450)
!3459 = !DILocation(line: 179, column: 6, scope: !2032, inlinedAt: !3450)
!3460 = !DILocation(line: 179, column: 17, scope: !2032, inlinedAt: !3450)
!3461 = !DILocation(line: 180, column: 6, scope: !2032, inlinedAt: !3450)
!3462 = !DILocation(line: 180, column: 18, scope: !2032, inlinedAt: !3450)
!3463 = !DILocation(line: 1023, column: 10, scope: !3406)
!3464 = !DILocation(line: 1024, column: 1, scope: !3406)
!3465 = !DILocation(line: 1023, column: 3, scope: !3406)
!3466 = distinct !DISubprogram(name: "quotearg_custom", scope: !115, file: !115, line: 1027, type: !3467, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3469)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!59, !41, !41, !41}
!3469 = !{!3470, !3471, !3472}
!3470 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3466, file: !115, line: 1027, type: !41)
!3471 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3466, file: !115, line: 1027, type: !41)
!3472 = !DILocalVariable(name: "arg", arg: 3, scope: !3466, file: !115, line: 1028, type: !41)
!3473 = !DILocation(line: 1027, column: 30, scope: !3466)
!3474 = !DILocation(line: 1027, column: 54, scope: !3466)
!3475 = !DILocation(line: 1028, column: 30, scope: !3466)
!3476 = !DILocation(line: 1009, column: 24, scope: !3393, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 1030, column: 10, scope: !3466)
!3478 = !DILocation(line: 1009, column: 39, scope: !3393, inlinedAt: !3477)
!3479 = !DILocation(line: 1010, column: 32, scope: !3393, inlinedAt: !3477)
!3480 = !DILocation(line: 1010, column: 57, scope: !3393, inlinedAt: !3477)
!3481 = !DILocation(line: 1017, column: 28, scope: !3406, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 1012, column: 10, scope: !3393, inlinedAt: !3477)
!3483 = !DILocation(line: 1017, column: 43, scope: !3406, inlinedAt: !3482)
!3484 = !DILocation(line: 1018, column: 36, scope: !3406, inlinedAt: !3482)
!3485 = !DILocation(line: 1019, column: 36, scope: !3406, inlinedAt: !3482)
!3486 = !DILocation(line: 1019, column: 48, scope: !3406, inlinedAt: !3482)
!3487 = !DILocation(line: 1021, column: 3, scope: !3406, inlinedAt: !3482)
!3488 = !DILocation(line: 1021, column: 30, scope: !3406, inlinedAt: !3482)
!3489 = !DILocation(line: 1021, column: 26, scope: !3406, inlinedAt: !3482)
!3490 = !DILocation(line: 171, column: 45, scope: !2032, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 1022, column: 3, scope: !3406, inlinedAt: !3482)
!3492 = !DILocation(line: 172, column: 33, scope: !2032, inlinedAt: !3491)
!3493 = !DILocation(line: 172, column: 57, scope: !2032, inlinedAt: !3491)
!3494 = !DILocation(line: 176, column: 6, scope: !2032, inlinedAt: !3491)
!3495 = !DILocation(line: 176, column: 12, scope: !2032, inlinedAt: !3491)
!3496 = !DILocation(line: 177, column: 8, scope: !2048, inlinedAt: !3491)
!3497 = !DILocation(line: 177, column: 23, scope: !2048, inlinedAt: !3491)
!3498 = !DILocation(line: 177, column: 19, scope: !2048, inlinedAt: !3491)
!3499 = !DILocation(line: 178, column: 5, scope: !2048, inlinedAt: !3491)
!3500 = !DILocation(line: 179, column: 6, scope: !2032, inlinedAt: !3491)
!3501 = !DILocation(line: 179, column: 17, scope: !2032, inlinedAt: !3491)
!3502 = !DILocation(line: 180, column: 6, scope: !2032, inlinedAt: !3491)
!3503 = !DILocation(line: 180, column: 18, scope: !2032, inlinedAt: !3491)
!3504 = !DILocation(line: 1023, column: 10, scope: !3406, inlinedAt: !3482)
!3505 = !DILocation(line: 1024, column: 1, scope: !3406, inlinedAt: !3482)
!3506 = !DILocation(line: 1030, column: 3, scope: !3466)
!3507 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !115, file: !115, line: 1034, type: !3508, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3510)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!59, !41, !41, !41, !109}
!3510 = !{!3511, !3512, !3513, !3514}
!3511 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3507, file: !115, line: 1034, type: !41)
!3512 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3507, file: !115, line: 1034, type: !41)
!3513 = !DILocalVariable(name: "arg", arg: 3, scope: !3507, file: !115, line: 1035, type: !41)
!3514 = !DILocalVariable(name: "argsize", arg: 4, scope: !3507, file: !115, line: 1035, type: !109)
!3515 = !DILocation(line: 1034, column: 34, scope: !3507)
!3516 = !DILocation(line: 1034, column: 58, scope: !3507)
!3517 = !DILocation(line: 1035, column: 34, scope: !3507)
!3518 = !DILocation(line: 1035, column: 46, scope: !3507)
!3519 = !DILocation(line: 1017, column: 28, scope: !3406, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 1037, column: 10, scope: !3507)
!3521 = !DILocation(line: 1017, column: 43, scope: !3406, inlinedAt: !3520)
!3522 = !DILocation(line: 1018, column: 36, scope: !3406, inlinedAt: !3520)
!3523 = !DILocation(line: 1019, column: 36, scope: !3406, inlinedAt: !3520)
!3524 = !DILocation(line: 1019, column: 48, scope: !3406, inlinedAt: !3520)
!3525 = !DILocation(line: 1021, column: 3, scope: !3406, inlinedAt: !3520)
!3526 = !DILocation(line: 1021, column: 30, scope: !3406, inlinedAt: !3520)
!3527 = !DILocation(line: 1021, column: 26, scope: !3406, inlinedAt: !3520)
!3528 = !DILocation(line: 171, column: 45, scope: !2032, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 1022, column: 3, scope: !3406, inlinedAt: !3520)
!3530 = !DILocation(line: 172, column: 33, scope: !2032, inlinedAt: !3529)
!3531 = !DILocation(line: 172, column: 57, scope: !2032, inlinedAt: !3529)
!3532 = !DILocation(line: 176, column: 6, scope: !2032, inlinedAt: !3529)
!3533 = !DILocation(line: 176, column: 12, scope: !2032, inlinedAt: !3529)
!3534 = !DILocation(line: 177, column: 8, scope: !2048, inlinedAt: !3529)
!3535 = !DILocation(line: 177, column: 23, scope: !2048, inlinedAt: !3529)
!3536 = !DILocation(line: 177, column: 19, scope: !2048, inlinedAt: !3529)
!3537 = !DILocation(line: 178, column: 5, scope: !2048, inlinedAt: !3529)
!3538 = !DILocation(line: 179, column: 6, scope: !2032, inlinedAt: !3529)
!3539 = !DILocation(line: 179, column: 17, scope: !2032, inlinedAt: !3529)
!3540 = !DILocation(line: 180, column: 6, scope: !2032, inlinedAt: !3529)
!3541 = !DILocation(line: 180, column: 18, scope: !2032, inlinedAt: !3529)
!3542 = !DILocation(line: 1023, column: 10, scope: !3406, inlinedAt: !3520)
!3543 = !DILocation(line: 1024, column: 1, scope: !3406, inlinedAt: !3520)
!3544 = !DILocation(line: 1037, column: 3, scope: !3507)
!3545 = distinct !DISubprogram(name: "quote_n_mem", scope: !115, file: !115, line: 1052, type: !3546, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3548)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!41, !26, !41, !109}
!3548 = !{!3549, !3550, !3551}
!3549 = !DILocalVariable(name: "n", arg: 1, scope: !3545, file: !115, line: 1052, type: !26)
!3550 = !DILocalVariable(name: "arg", arg: 2, scope: !3545, file: !115, line: 1052, type: !41)
!3551 = !DILocalVariable(name: "argsize", arg: 3, scope: !3545, file: !115, line: 1052, type: !109)
!3552 = !DILocation(line: 1052, column: 18, scope: !3545)
!3553 = !DILocation(line: 1052, column: 33, scope: !3545)
!3554 = !DILocation(line: 1052, column: 45, scope: !3545)
!3555 = !DILocation(line: 1054, column: 10, scope: !3545)
!3556 = !DILocation(line: 1054, column: 3, scope: !3545)
!3557 = distinct !DISubprogram(name: "quote_mem", scope: !115, file: !115, line: 1058, type: !3558, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3560)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!41, !41, !109}
!3560 = !{!3561, !3562}
!3561 = !DILocalVariable(name: "arg", arg: 1, scope: !3557, file: !115, line: 1058, type: !41)
!3562 = !DILocalVariable(name: "argsize", arg: 2, scope: !3557, file: !115, line: 1058, type: !109)
!3563 = !DILocation(line: 1058, column: 24, scope: !3557)
!3564 = !DILocation(line: 1058, column: 36, scope: !3557)
!3565 = !DILocation(line: 1052, column: 18, scope: !3545, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 1060, column: 10, scope: !3557)
!3567 = !DILocation(line: 1052, column: 33, scope: !3545, inlinedAt: !3566)
!3568 = !DILocation(line: 1052, column: 45, scope: !3545, inlinedAt: !3566)
!3569 = !DILocation(line: 1054, column: 10, scope: !3545, inlinedAt: !3566)
!3570 = !DILocation(line: 1060, column: 3, scope: !3557)
!3571 = distinct !DISubprogram(name: "quote_n", scope: !115, file: !115, line: 1064, type: !3572, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3574)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!41, !26, !41}
!3574 = !{!3575, !3576}
!3575 = !DILocalVariable(name: "n", arg: 1, scope: !3571, file: !115, line: 1064, type: !26)
!3576 = !DILocalVariable(name: "arg", arg: 2, scope: !3571, file: !115, line: 1064, type: !41)
!3577 = !DILocation(line: 1064, column: 14, scope: !3571)
!3578 = !DILocation(line: 1064, column: 29, scope: !3571)
!3579 = !DILocation(line: 1052, column: 18, scope: !3545, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 1066, column: 10, scope: !3571)
!3581 = !DILocation(line: 1052, column: 33, scope: !3545, inlinedAt: !3580)
!3582 = !DILocation(line: 1052, column: 45, scope: !3545, inlinedAt: !3580)
!3583 = !DILocation(line: 1054, column: 10, scope: !3545, inlinedAt: !3580)
!3584 = !DILocation(line: 1066, column: 3, scope: !3571)
!3585 = distinct !DISubprogram(name: "quote", scope: !115, file: !115, line: 1070, type: !1784, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !3586)
!3586 = !{!3587}
!3587 = !DILocalVariable(name: "arg", arg: 1, scope: !3585, file: !115, line: 1070, type: !41)
!3588 = !DILocation(line: 1070, column: 20, scope: !3585)
!3589 = !DILocation(line: 1064, column: 14, scope: !3571, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 1072, column: 10, scope: !3585)
!3591 = !DILocation(line: 1064, column: 29, scope: !3571, inlinedAt: !3590)
!3592 = !DILocation(line: 1052, column: 18, scope: !3545, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 1066, column: 10, scope: !3571, inlinedAt: !3590)
!3594 = !DILocation(line: 1052, column: 33, scope: !3545, inlinedAt: !3593)
!3595 = !DILocation(line: 1052, column: 45, scope: !3545, inlinedAt: !3593)
!3596 = !DILocation(line: 1054, column: 10, scope: !3545, inlinedAt: !3593)
!3597 = !DILocation(line: 1072, column: 3, scope: !3585)
!3598 = distinct !DISubprogram(name: "strintcmp", scope: !3599, file: !3599, line: 29, type: !3600, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !510, variables: !3602)
!3599 = !DIFile(filename: "lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!26, !41, !41}
!3602 = !{!3603, !3604}
!3603 = !DILocalVariable(name: "a", arg: 1, scope: !3598, file: !3599, line: 29, type: !41)
!3604 = !DILocalVariable(name: "b", arg: 2, scope: !3598, file: !3599, line: 29, type: !41)
!3605 = !DILocation(line: 29, column: 24, scope: !3598)
!3606 = !DILocation(line: 29, column: 39, scope: !3598)
!3607 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !3608, file: !3609, line: 115, type: !26)
!3608 = distinct !DISubprogram(name: "numcompare", scope: !3609, file: !3609, line: 114, type: !3610, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !510, variables: !3612)
!3609 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!26, !41, !41, !26, !26}
!3612 = !{!3613, !3614, !3607, !3615, !3616, !3617, !3618, !3619, !3620}
!3613 = !DILocalVariable(name: "a", arg: 1, scope: !3608, file: !3609, line: 114, type: !41)
!3614 = !DILocalVariable(name: "b", arg: 2, scope: !3608, file: !3609, line: 114, type: !41)
!3615 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !3608, file: !3609, line: 115, type: !26)
!3616 = !DILocalVariable(name: "tmpa", scope: !3608, file: !3609, line: 117, type: !499)
!3617 = !DILocalVariable(name: "tmpb", scope: !3608, file: !3609, line: 118, type: !499)
!3618 = !DILocalVariable(name: "tmp", scope: !3608, file: !3609, line: 119, type: !26)
!3619 = !DILocalVariable(name: "log_a", scope: !3608, file: !3609, line: 120, type: !109)
!3620 = !DILocalVariable(name: "log_b", scope: !3608, file: !3609, line: 121, type: !109)
!3621 = !DILocation(line: 115, column: 17, scope: !3608, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 31, column: 10, scope: !3598)
!3623 = !DILocation(line: 115, column: 36, scope: !3608, inlinedAt: !3622)
!3624 = !DILocation(line: 117, column: 24, scope: !3608, inlinedAt: !3622)
!3625 = !DILocation(line: 117, column: 17, scope: !3608, inlinedAt: !3622)
!3626 = !DILocation(line: 118, column: 24, scope: !3608, inlinedAt: !3622)
!3627 = !DILocation(line: 118, column: 17, scope: !3608, inlinedAt: !3622)
!3628 = !DILocation(line: 123, column: 12, scope: !3629, inlinedAt: !3622)
!3629 = distinct !DILexicalBlock(scope: !3608, file: !3609, line: 123, column: 7)
!3630 = !DILocation(line: 123, column: 7, scope: !3608, inlinedAt: !3622)
!3631 = distinct !{!3631, !3632, !3634}
!3632 = !DILocation(line: 125, column: 7, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3629, file: !3609, line: 124, column: 5)
!3634 = !DILocation(line: 127, column: 59, scope: !3633)
!3635 = !DILocation(line: 126, column: 17, scope: !3633, inlinedAt: !3622)
!3636 = !DILocation(line: 114, column: 25, scope: !3608, inlinedAt: !3622)
!3637 = !DILocation(line: 126, column: 16, scope: !3633, inlinedAt: !3622)
!3638 = !DILocation(line: 127, column: 19, scope: !3633, inlinedAt: !3622)
!3639 = !DILocation(line: 127, column: 35, scope: !3633, inlinedAt: !3622)
!3640 = !DILocation(line: 128, column: 16, scope: !3641, inlinedAt: !3622)
!3641 = distinct !DILexicalBlock(scope: !3633, file: !3609, line: 128, column: 11)
!3642 = !DILocation(line: 128, column: 11, scope: !3633, inlinedAt: !3622)
!3643 = distinct !{!3643, !3644, !3645}
!3644 = !DILocation(line: 144, column: 7, scope: !3633)
!3645 = !DILocation(line: 146, column: 59, scope: !3633)
!3646 = !DILocation(line: 145, column: 17, scope: !3633, inlinedAt: !3622)
!3647 = !DILocation(line: 134, column: 15, scope: !3648, inlinedAt: !3622)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !3609, line: 134, column: 15)
!3649 = distinct !DILexicalBlock(scope: !3641, file: !3609, line: 129, column: 9)
!3650 = !DILocation(line: 134, column: 15, scope: !3649, inlinedAt: !3622)
!3651 = !DILocation(line: 114, column: 40, scope: !3608, inlinedAt: !3622)
!3652 = !DILocation(line: 136, column: 23, scope: !3649, inlinedAt: !3622)
!3653 = !DILocation(line: 136, column: 39, scope: !3649, inlinedAt: !3622)
!3654 = !DILocation(line: 137, column: 21, scope: !3649, inlinedAt: !3622)
!3655 = !DILocation(line: 137, column: 20, scope: !3649, inlinedAt: !3622)
!3656 = distinct !{!3656, !3657, !3658}
!3657 = !DILocation(line: 136, column: 11, scope: !3649)
!3658 = !DILocation(line: 137, column: 23, scope: !3649)
!3659 = !DILocation(line: 142, column: 20, scope: !3649, inlinedAt: !3622)
!3660 = !DILocation(line: 142, column: 18, scope: !3649, inlinedAt: !3622)
!3661 = !DILocation(line: 142, column: 11, scope: !3649, inlinedAt: !3622)
!3662 = !DILocation(line: 145, column: 16, scope: !3633, inlinedAt: !3622)
!3663 = !DILocation(line: 146, column: 19, scope: !3633, inlinedAt: !3622)
!3664 = !DILocation(line: 146, column: 35, scope: !3633, inlinedAt: !3622)
!3665 = !DILocation(line: 148, column: 14, scope: !3633, inlinedAt: !3622)
!3666 = !DILocation(line: 148, column: 19, scope: !3633, inlinedAt: !3622)
!3667 = !DILocation(line: 148, column: 30, scope: !3633, inlinedAt: !3622)
!3668 = !DILocation(line: 148, column: 27, scope: !3633, inlinedAt: !3622)
!3669 = !DILocation(line: 151, column: 21, scope: !3670, inlinedAt: !3622)
!3670 = distinct !DILexicalBlock(scope: !3633, file: !3609, line: 149, column: 9)
!3671 = !DILocation(line: 151, column: 20, scope: !3670, inlinedAt: !3622)
!3672 = !DILocation(line: 154, column: 21, scope: !3670, inlinedAt: !3622)
!3673 = !DILocation(line: 154, column: 20, scope: !3670, inlinedAt: !3622)
!3674 = distinct !{!3674, !3675, !3676}
!3675 = !DILocation(line: 148, column: 7, scope: !3633)
!3676 = !DILocation(line: 156, column: 9, scope: !3633)
!3677 = !DILocation(line: 148, column: 22, scope: !3633, inlinedAt: !3622)
!3678 = !DILocation(line: 162, column: 18, scope: !3633, inlinedAt: !3622)
!3679 = !DILocation(line: 119, column: 7, scope: !3608, inlinedAt: !3622)
!3680 = !DILocation(line: 120, column: 10, scope: !3608, inlinedAt: !3622)
!3681 = !DILocation(line: 164, column: 23, scope: !3682, inlinedAt: !3622)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !3609, line: 164, column: 7)
!3683 = distinct !DILexicalBlock(scope: !3633, file: !3609, line: 164, column: 7)
!3684 = !DILocation(line: 164, column: 7, scope: !3683, inlinedAt: !3622)
!3685 = !DILocation(line: 166, column: 19, scope: !3682, inlinedAt: !3622)
!3686 = !DILocation(line: 166, column: 18, scope: !3682, inlinedAt: !3622)
!3687 = !DILocation(line: 164, column: 39, scope: !3682, inlinedAt: !3622)
!3688 = distinct !{!3688, !3689, !3690}
!3689 = !DILocation(line: 164, column: 7, scope: !3683)
!3690 = !DILocation(line: 167, column: 37, scope: !3683)
!3691 = !DILocation(line: 121, column: 10, scope: !3608, inlinedAt: !3622)
!3692 = !DILocation(line: 169, column: 23, scope: !3693, inlinedAt: !3622)
!3693 = distinct !DILexicalBlock(scope: !3694, file: !3609, line: 169, column: 7)
!3694 = distinct !DILexicalBlock(scope: !3633, file: !3609, line: 169, column: 7)
!3695 = !DILocation(line: 169, column: 7, scope: !3694, inlinedAt: !3622)
!3696 = !DILocation(line: 171, column: 19, scope: !3693, inlinedAt: !3622)
!3697 = !DILocation(line: 171, column: 18, scope: !3693, inlinedAt: !3622)
!3698 = !DILocation(line: 169, column: 39, scope: !3693, inlinedAt: !3622)
!3699 = distinct !{!3699, !3700, !3701}
!3700 = !DILocation(line: 169, column: 7, scope: !3694)
!3701 = !DILocation(line: 172, column: 37, scope: !3694)
!3702 = !DILocation(line: 174, column: 17, scope: !3703, inlinedAt: !3622)
!3703 = distinct !DILexicalBlock(scope: !3633, file: !3609, line: 174, column: 11)
!3704 = !DILocation(line: 174, column: 11, scope: !3633, inlinedAt: !3622)
!3705 = !DILocation(line: 175, column: 22, scope: !3703, inlinedAt: !3622)
!3706 = !DILocation(line: 175, column: 16, scope: !3703, inlinedAt: !3622)
!3707 = !DILocation(line: 175, column: 9, scope: !3703, inlinedAt: !3622)
!3708 = !DILocation(line: 177, column: 12, scope: !3709, inlinedAt: !3622)
!3709 = distinct !DILexicalBlock(scope: !3633, file: !3609, line: 177, column: 11)
!3710 = !DILocation(line: 178, column: 9, scope: !3709, inlinedAt: !3622)
!3711 = !DILocation(line: 182, column: 17, scope: !3712, inlinedAt: !3622)
!3712 = distinct !DILexicalBlock(scope: !3629, file: !3609, line: 182, column: 12)
!3713 = !DILocation(line: 182, column: 12, scope: !3629, inlinedAt: !3622)
!3714 = distinct !{!3714, !3715, !3717}
!3715 = !DILocation(line: 184, column: 7, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3712, file: !3609, line: 183, column: 5)
!3717 = !DILocation(line: 186, column: 59, scope: !3716)
!3718 = !DILocation(line: 185, column: 17, scope: !3716, inlinedAt: !3622)
!3719 = !DILocation(line: 185, column: 16, scope: !3716, inlinedAt: !3622)
!3720 = !DILocation(line: 186, column: 19, scope: !3716, inlinedAt: !3622)
!3721 = !DILocation(line: 186, column: 35, scope: !3716, inlinedAt: !3622)
!3722 = !DILocation(line: 191, column: 11, scope: !3723, inlinedAt: !3622)
!3723 = distinct !DILexicalBlock(scope: !3716, file: !3609, line: 191, column: 11)
!3724 = !DILocation(line: 191, column: 11, scope: !3716, inlinedAt: !3622)
!3725 = !DILocation(line: 193, column: 19, scope: !3716, inlinedAt: !3622)
!3726 = !DILocation(line: 193, column: 35, scope: !3716, inlinedAt: !3622)
!3727 = !DILocation(line: 194, column: 17, scope: !3716, inlinedAt: !3622)
!3728 = !DILocation(line: 194, column: 16, scope: !3716, inlinedAt: !3622)
!3729 = distinct !{!3729, !3730, !3731}
!3730 = !DILocation(line: 193, column: 7, scope: !3716)
!3731 = !DILocation(line: 194, column: 19, scope: !3716)
!3732 = !DILocation(line: 199, column: 14, scope: !3716, inlinedAt: !3622)
!3733 = !DILocation(line: 199, column: 7, scope: !3716, inlinedAt: !3622)
!3734 = !DILocation(line: 203, column: 19, scope: !3735, inlinedAt: !3622)
!3735 = distinct !DILexicalBlock(scope: !3712, file: !3609, line: 202, column: 5)
!3736 = !DILocation(line: 203, column: 35, scope: !3735, inlinedAt: !3622)
!3737 = !DILocation(line: 204, column: 17, scope: !3735, inlinedAt: !3622)
!3738 = !DILocation(line: 204, column: 16, scope: !3735, inlinedAt: !3622)
!3739 = distinct !{!3739, !3740, !3741}
!3740 = !DILocation(line: 203, column: 7, scope: !3735)
!3741 = !DILocation(line: 204, column: 19, scope: !3735)
!3742 = !DILocation(line: 205, column: 19, scope: !3735, inlinedAt: !3622)
!3743 = !DILocation(line: 205, column: 35, scope: !3735, inlinedAt: !3622)
!3744 = !DILocation(line: 206, column: 17, scope: !3735, inlinedAt: !3622)
!3745 = !DILocation(line: 206, column: 16, scope: !3735, inlinedAt: !3622)
!3746 = distinct !{!3746, !3747, !3748}
!3747 = !DILocation(line: 205, column: 7, scope: !3735)
!3748 = !DILocation(line: 206, column: 19, scope: !3735)
!3749 = !DILocation(line: 208, column: 14, scope: !3735, inlinedAt: !3622)
!3750 = !DILocation(line: 208, column: 19, scope: !3735, inlinedAt: !3622)
!3751 = !DILocation(line: 208, column: 30, scope: !3735, inlinedAt: !3622)
!3752 = !DILocation(line: 208, column: 27, scope: !3735, inlinedAt: !3622)
!3753 = !DILocation(line: 211, column: 21, scope: !3754, inlinedAt: !3622)
!3754 = distinct !DILexicalBlock(scope: !3735, file: !3609, line: 209, column: 9)
!3755 = !DILocation(line: 211, column: 20, scope: !3754, inlinedAt: !3622)
!3756 = !DILocation(line: 214, column: 21, scope: !3754, inlinedAt: !3622)
!3757 = !DILocation(line: 214, column: 20, scope: !3754, inlinedAt: !3622)
!3758 = distinct !{!3758, !3759, !3760}
!3759 = !DILocation(line: 208, column: 7, scope: !3735)
!3760 = !DILocation(line: 216, column: 9, scope: !3735)
!3761 = !DILocation(line: 208, column: 22, scope: !3735, inlinedAt: !3622)
!3762 = !DILocation(line: 222, column: 18, scope: !3735, inlinedAt: !3622)
!3763 = !DILocation(line: 224, column: 23, scope: !3764, inlinedAt: !3622)
!3764 = distinct !DILexicalBlock(scope: !3765, file: !3609, line: 224, column: 7)
!3765 = distinct !DILexicalBlock(scope: !3735, file: !3609, line: 224, column: 7)
!3766 = !DILocation(line: 224, column: 7, scope: !3765, inlinedAt: !3622)
!3767 = !DILocation(line: 226, column: 19, scope: !3764, inlinedAt: !3622)
!3768 = !DILocation(line: 226, column: 18, scope: !3764, inlinedAt: !3622)
!3769 = !DILocation(line: 224, column: 39, scope: !3764, inlinedAt: !3622)
!3770 = distinct !{!3770, !3771, !3772}
!3771 = !DILocation(line: 224, column: 7, scope: !3765)
!3772 = !DILocation(line: 227, column: 37, scope: !3765)
!3773 = !DILocation(line: 229, column: 23, scope: !3774, inlinedAt: !3622)
!3774 = distinct !DILexicalBlock(scope: !3775, file: !3609, line: 229, column: 7)
!3775 = distinct !DILexicalBlock(scope: !3735, file: !3609, line: 229, column: 7)
!3776 = !DILocation(line: 229, column: 7, scope: !3775, inlinedAt: !3622)
!3777 = !DILocation(line: 231, column: 19, scope: !3774, inlinedAt: !3622)
!3778 = !DILocation(line: 231, column: 18, scope: !3774, inlinedAt: !3622)
!3779 = !DILocation(line: 229, column: 39, scope: !3774, inlinedAt: !3622)
!3780 = distinct !{!3780, !3781, !3782}
!3781 = !DILocation(line: 229, column: 7, scope: !3775)
!3782 = !DILocation(line: 232, column: 37, scope: !3775)
!3783 = !DILocation(line: 234, column: 17, scope: !3784, inlinedAt: !3622)
!3784 = distinct !DILexicalBlock(scope: !3735, file: !3609, line: 234, column: 11)
!3785 = !DILocation(line: 234, column: 11, scope: !3735, inlinedAt: !3622)
!3786 = !DILocation(line: 235, column: 22, scope: !3784, inlinedAt: !3622)
!3787 = !DILocation(line: 235, column: 16, scope: !3784, inlinedAt: !3622)
!3788 = !DILocation(line: 235, column: 9, scope: !3784, inlinedAt: !3622)
!3789 = !DILocation(line: 237, column: 12, scope: !3790, inlinedAt: !3622)
!3790 = distinct !DILexicalBlock(scope: !3735, file: !3609, line: 237, column: 11)
!3791 = !DILocation(line: 238, column: 9, scope: !3790, inlinedAt: !3622)
!3792 = !DILocation(line: 31, column: 3, scope: !3598)
!3793 = distinct !DISubprogram(name: "verror", scope: !3794, file: !3794, line: 43, type: !3795, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !513, variables: !3804)
!3794 = !DIFile(filename: "lib/verror.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3795 = !DISubroutineType(types: !3796)
!3796 = !{null, !26, !26, !41, !3797}
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !514, size: 192, elements: !3799)
!3799 = !{!3800, !3801, !3802, !3803}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3798, file: !514, baseType: !28, size: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3798, file: !514, baseType: !28, size: 32, offset: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3798, file: !514, baseType: !29, size: 64, offset: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3798, file: !514, baseType: !29, size: 64, offset: 128)
!3804 = !{!3805, !3806, !3807, !3808}
!3805 = !DILocalVariable(name: "status", arg: 1, scope: !3793, file: !3794, line: 43, type: !26)
!3806 = !DILocalVariable(name: "errnum", arg: 2, scope: !3793, file: !3794, line: 43, type: !26)
!3807 = !DILocalVariable(name: "format", arg: 3, scope: !3793, file: !3794, line: 43, type: !41)
!3808 = !DILocalVariable(name: "args", arg: 4, scope: !3793, file: !3794, line: 43, type: !3797)
!3809 = !DILocation(line: 43, column: 13, scope: !3793)
!3810 = !DILocation(line: 43, column: 25, scope: !3793)
!3811 = !DILocation(line: 43, column: 45, scope: !3793)
!3812 = !DILocation(line: 43, column: 61, scope: !3793)
!3813 = !DILocation(line: 45, column: 3, scope: !3793)
!3814 = !DILocation(line: 46, column: 1, scope: !3793)
!3815 = distinct !DISubprogram(name: "verror_at_line", scope: !3794, file: !3794, line: 55, type: !3816, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !513, variables: !3818)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{null, !26, !26, !41, !28, !41, !3797}
!3818 = !{!3819, !3820, !3821, !3822, !3823, !3824, !3825}
!3819 = !DILocalVariable(name: "status", arg: 1, scope: !3815, file: !3794, line: 55, type: !26)
!3820 = !DILocalVariable(name: "errnum", arg: 2, scope: !3815, file: !3794, line: 55, type: !26)
!3821 = !DILocalVariable(name: "file", arg: 3, scope: !3815, file: !3794, line: 55, type: !41)
!3822 = !DILocalVariable(name: "line_number", arg: 4, scope: !3815, file: !3794, line: 56, type: !28)
!3823 = !DILocalVariable(name: "format", arg: 5, scope: !3815, file: !3794, line: 56, type: !41)
!3824 = !DILocalVariable(name: "args", arg: 6, scope: !3815, file: !3794, line: 56, type: !3797)
!3825 = !DILocalVariable(name: "message", scope: !3815, file: !3794, line: 58, type: !59)
!3826 = !DILocation(line: 55, column: 21, scope: !3815)
!3827 = !DILocation(line: 55, column: 33, scope: !3815)
!3828 = !DILocation(line: 55, column: 53, scope: !3815)
!3829 = !DILocation(line: 56, column: 30, scope: !3815)
!3830 = !DILocation(line: 56, column: 55, scope: !3815)
!3831 = !DILocation(line: 56, column: 71, scope: !3815)
!3832 = !DILocation(line: 58, column: 19, scope: !3815)
!3833 = !DILocation(line: 58, column: 9, scope: !3815)
!3834 = !DILocation(line: 59, column: 7, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3815, file: !3794, line: 59, column: 7)
!3836 = !DILocation(line: 59, column: 7, scope: !3815)
!3837 = !DILocation(line: 64, column: 11, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3839, file: !3794, line: 64, column: 11)
!3839 = distinct !DILexicalBlock(scope: !3835, file: !3794, line: 60, column: 5)
!3840 = !DILocation(line: 64, column: 11, scope: !3839)
!3841 = !DILocation(line: 65, column: 9, scope: !3838)
!3842 = !DILocation(line: 67, column: 9, scope: !3838)
!3843 = !DILocation(line: 73, column: 17, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3835, file: !3794, line: 70, column: 5)
!3845 = !DILocation(line: 73, column: 24, scope: !3844)
!3846 = !DILocation(line: 73, column: 7, scope: !3844)
!3847 = !DILocation(line: 74, column: 7, scope: !3844)
!3848 = !DILocation(line: 76, column: 3, scope: !3815)
!3849 = !DILocation(line: 77, column: 1, scope: !3815)
!3850 = distinct !DISubprogram(name: "xnmalloc", scope: !519, file: !519, line: 105, type: !3851, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !515, variables: !3853)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!29, !109, !109}
!3853 = !{!3854, !3855}
!3854 = !DILocalVariable(name: "n", arg: 1, scope: !3850, file: !519, line: 105, type: !109)
!3855 = !DILocalVariable(name: "s", arg: 2, scope: !3850, file: !519, line: 105, type: !109)
!3856 = !DILocation(line: 105, column: 18, scope: !3850)
!3857 = !DILocation(line: 105, column: 28, scope: !3850)
!3858 = !DILocation(line: 107, column: 7, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3850, file: !519, line: 107, column: 7)
!3860 = !DILocation(line: 107, column: 7, scope: !3850)
!3861 = !DILocation(line: 108, column: 5, scope: !3859)
!3862 = !DILocation(line: 109, column: 21, scope: !3850)
!3863 = !DILocalVariable(name: "n", arg: 1, scope: !3864, file: !3865, line: 39, type: !109)
!3864 = distinct !DISubprogram(name: "xmalloc", scope: !3865, file: !3865, line: 39, type: !3866, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !515, variables: !3868)
!3865 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!29, !109}
!3868 = !{!3863, !3869}
!3869 = !DILocalVariable(name: "p", scope: !3864, file: !3865, line: 41, type: !29)
!3870 = !DILocation(line: 39, column: 17, scope: !3864, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 109, column: 10, scope: !3850)
!3872 = !DILocation(line: 41, column: 13, scope: !3864, inlinedAt: !3871)
!3873 = !DILocation(line: 41, column: 9, scope: !3864, inlinedAt: !3871)
!3874 = !DILocation(line: 42, column: 8, scope: !3875, inlinedAt: !3871)
!3875 = distinct !DILexicalBlock(scope: !3864, file: !3865, line: 42, column: 7)
!3876 = !DILocation(line: 42, column: 15, scope: !3875, inlinedAt: !3871)
!3877 = !DILocation(line: 42, column: 10, scope: !3875, inlinedAt: !3871)
!3878 = !DILocation(line: 43, column: 5, scope: !3875, inlinedAt: !3871)
!3879 = !DILocation(line: 109, column: 3, scope: !3850)
!3880 = !DILocation(line: 39, column: 17, scope: !3864)
!3881 = !DILocation(line: 41, column: 13, scope: !3864)
!3882 = !DILocation(line: 41, column: 9, scope: !3864)
!3883 = !DILocation(line: 42, column: 8, scope: !3875)
!3884 = !DILocation(line: 42, column: 15, scope: !3875)
!3885 = !DILocation(line: 42, column: 10, scope: !3875)
!3886 = !DILocation(line: 43, column: 5, scope: !3875)
!3887 = !DILocation(line: 44, column: 3, scope: !3864)
!3888 = distinct !DISubprogram(name: "xnrealloc", scope: !519, file: !519, line: 118, type: !3889, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !515, variables: !3891)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!29, !29, !109, !109}
!3891 = !{!3892, !3893, !3894}
!3892 = !DILocalVariable(name: "p", arg: 1, scope: !3888, file: !519, line: 118, type: !29)
!3893 = !DILocalVariable(name: "n", arg: 2, scope: !3888, file: !519, line: 118, type: !109)
!3894 = !DILocalVariable(name: "s", arg: 3, scope: !3888, file: !519, line: 118, type: !109)
!3895 = !DILocation(line: 118, column: 18, scope: !3888)
!3896 = !DILocation(line: 118, column: 28, scope: !3888)
!3897 = !DILocation(line: 118, column: 38, scope: !3888)
!3898 = !DILocation(line: 120, column: 7, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3888, file: !519, line: 120, column: 7)
!3900 = !DILocation(line: 120, column: 7, scope: !3888)
!3901 = !DILocation(line: 121, column: 5, scope: !3899)
!3902 = !DILocation(line: 122, column: 25, scope: !3888)
!3903 = !DILocalVariable(name: "p", arg: 1, scope: !3904, file: !3865, line: 51, type: !29)
!3904 = distinct !DISubprogram(name: "xrealloc", scope: !3865, file: !3865, line: 51, type: !3905, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !515, variables: !3907)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!29, !29, !109}
!3907 = !{!3903, !3908}
!3908 = !DILocalVariable(name: "n", arg: 2, scope: !3904, file: !3865, line: 51, type: !109)
!3909 = !DILocation(line: 51, column: 17, scope: !3904, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 122, column: 10, scope: !3888)
!3911 = !DILocation(line: 51, column: 27, scope: !3904, inlinedAt: !3910)
!3912 = !DILocation(line: 53, column: 8, scope: !3913, inlinedAt: !3910)
!3913 = distinct !DILexicalBlock(scope: !3904, file: !3865, line: 53, column: 7)
!3914 = !DILocation(line: 53, column: 13, scope: !3913, inlinedAt: !3910)
!3915 = !DILocation(line: 53, column: 10, scope: !3913, inlinedAt: !3910)
!3916 = !DILocation(line: 57, column: 7, scope: !3917, inlinedAt: !3910)
!3917 = distinct !DILexicalBlock(scope: !3913, file: !3865, line: 54, column: 5)
!3918 = !DILocation(line: 58, column: 7, scope: !3917, inlinedAt: !3910)
!3919 = !DILocation(line: 61, column: 7, scope: !3904, inlinedAt: !3910)
!3920 = !DILocation(line: 62, column: 8, scope: !3921, inlinedAt: !3910)
!3921 = distinct !DILexicalBlock(scope: !3904, file: !3865, line: 62, column: 7)
!3922 = !DILocation(line: 62, column: 13, scope: !3921, inlinedAt: !3910)
!3923 = !DILocation(line: 62, column: 10, scope: !3921, inlinedAt: !3910)
!3924 = !DILocation(line: 63, column: 5, scope: !3921, inlinedAt: !3910)
!3925 = !DILocation(line: 122, column: 3, scope: !3888)
!3926 = !DILocation(line: 51, column: 17, scope: !3904)
!3927 = !DILocation(line: 51, column: 27, scope: !3904)
!3928 = !DILocation(line: 53, column: 8, scope: !3913)
!3929 = !DILocation(line: 53, column: 13, scope: !3913)
!3930 = !DILocation(line: 53, column: 10, scope: !3913)
!3931 = !DILocation(line: 57, column: 7, scope: !3917)
!3932 = !DILocation(line: 58, column: 7, scope: !3917)
!3933 = !DILocation(line: 61, column: 7, scope: !3904)
!3934 = !DILocation(line: 62, column: 8, scope: !3921)
!3935 = !DILocation(line: 62, column: 13, scope: !3921)
!3936 = !DILocation(line: 62, column: 10, scope: !3921)
!3937 = !DILocation(line: 63, column: 5, scope: !3921)
!3938 = !DILocation(line: 65, column: 1, scope: !3904)
!3939 = !DILocation(line: 180, column: 19, scope: !520)
!3940 = !DILocation(line: 180, column: 30, scope: !520)
!3941 = !DILocation(line: 180, column: 41, scope: !520)
!3942 = !DILocation(line: 182, column: 14, scope: !520)
!3943 = !DILocation(line: 182, column: 10, scope: !520)
!3944 = !DILocation(line: 184, column: 9, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !520, file: !519, line: 184, column: 7)
!3946 = !DILocation(line: 184, column: 7, scope: !520)
!3947 = !DILocation(line: 186, column: 13, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3949, file: !519, line: 186, column: 11)
!3949 = distinct !DILexicalBlock(scope: !3945, file: !519, line: 185, column: 5)
!3950 = !DILocation(line: 186, column: 11, scope: !3949)
!3951 = !DILocation(line: 194, column: 30, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3948, file: !519, line: 187, column: 9)
!3953 = !DILocation(line: 195, column: 16, scope: !3952)
!3954 = !DILocation(line: 195, column: 13, scope: !3952)
!3955 = !DILocation(line: 196, column: 9, scope: !3952)
!3956 = !DILocation(line: 204, column: 69, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3958, file: !519, line: 204, column: 11)
!3958 = distinct !DILexicalBlock(scope: !3945, file: !519, line: 199, column: 5)
!3959 = !DILocation(line: 205, column: 11, scope: !3957)
!3960 = !DILocation(line: 204, column: 11, scope: !3958)
!3961 = !DILocation(line: 206, column: 9, scope: !3957)
!3962 = !DILocation(line: 210, column: 7, scope: !520)
!3963 = !DILocation(line: 211, column: 25, scope: !520)
!3964 = !DILocation(line: 51, column: 17, scope: !3904, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 211, column: 10, scope: !520)
!3966 = !DILocation(line: 51, column: 27, scope: !3904, inlinedAt: !3965)
!3967 = !DILocation(line: 53, column: 10, scope: !3913, inlinedAt: !3965)
!3968 = !DILocation(line: 207, column: 14, scope: !3958)
!3969 = !DILocation(line: 207, column: 18, scope: !3958)
!3970 = !DILocation(line: 207, column: 9, scope: !3958)
!3971 = !DILocation(line: 53, column: 8, scope: !3913, inlinedAt: !3965)
!3972 = !DILocation(line: 57, column: 7, scope: !3917, inlinedAt: !3965)
!3973 = !DILocation(line: 58, column: 7, scope: !3917, inlinedAt: !3965)
!3974 = !DILocation(line: 61, column: 7, scope: !3904, inlinedAt: !3965)
!3975 = !DILocation(line: 62, column: 8, scope: !3921, inlinedAt: !3965)
!3976 = !DILocation(line: 62, column: 13, scope: !3921, inlinedAt: !3965)
!3977 = !DILocation(line: 62, column: 10, scope: !3921, inlinedAt: !3965)
!3978 = !DILocation(line: 63, column: 5, scope: !3921, inlinedAt: !3965)
!3979 = !DILocation(line: 211, column: 3, scope: !520)
!3980 = distinct !DISubprogram(name: "xcharalloc", scope: !519, file: !519, line: 220, type: !2878, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !515, variables: !3981)
!3981 = !{!3982}
!3982 = !DILocalVariable(name: "n", arg: 1, scope: !3980, file: !519, line: 220, type: !109)
!3983 = !DILocation(line: 220, column: 20, scope: !3980)
!3984 = !DILocation(line: 39, column: 17, scope: !3864, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 222, column: 10, scope: !3980)
!3986 = !DILocation(line: 41, column: 13, scope: !3864, inlinedAt: !3985)
!3987 = !DILocation(line: 41, column: 9, scope: !3864, inlinedAt: !3985)
!3988 = !DILocation(line: 42, column: 8, scope: !3875, inlinedAt: !3985)
!3989 = !DILocation(line: 42, column: 15, scope: !3875, inlinedAt: !3985)
!3990 = !DILocation(line: 42, column: 10, scope: !3875, inlinedAt: !3985)
!3991 = !DILocation(line: 43, column: 5, scope: !3875, inlinedAt: !3985)
!3992 = !DILocation(line: 222, column: 3, scope: !3980)
!3993 = distinct !DISubprogram(name: "x2realloc", scope: !3865, file: !3865, line: 74, type: !3994, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !515, variables: !3996)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!29, !29, !523}
!3996 = !{!3997, !3998}
!3997 = !DILocalVariable(name: "p", arg: 1, scope: !3993, file: !3865, line: 74, type: !29)
!3998 = !DILocalVariable(name: "pn", arg: 2, scope: !3993, file: !3865, line: 74, type: !523)
!3999 = !DILocation(line: 74, column: 18, scope: !3993)
!4000 = !DILocation(line: 74, column: 29, scope: !3993)
!4001 = !DILocation(line: 180, column: 19, scope: !520, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 76, column: 10, scope: !3993)
!4003 = !DILocation(line: 180, column: 30, scope: !520, inlinedAt: !4002)
!4004 = !DILocation(line: 180, column: 41, scope: !520, inlinedAt: !4002)
!4005 = !DILocation(line: 182, column: 14, scope: !520, inlinedAt: !4002)
!4006 = !DILocation(line: 182, column: 10, scope: !520, inlinedAt: !4002)
!4007 = !DILocation(line: 184, column: 9, scope: !3945, inlinedAt: !4002)
!4008 = !DILocation(line: 184, column: 7, scope: !520, inlinedAt: !4002)
!4009 = !DILocation(line: 186, column: 13, scope: !3948, inlinedAt: !4002)
!4010 = !DILocation(line: 186, column: 11, scope: !3949, inlinedAt: !4002)
!4011 = !DILocation(line: 210, column: 7, scope: !520, inlinedAt: !4002)
!4012 = !DILocation(line: 51, column: 17, scope: !3904, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 211, column: 10, scope: !520, inlinedAt: !4002)
!4014 = !DILocation(line: 51, column: 27, scope: !3904, inlinedAt: !4013)
!4015 = !DILocation(line: 53, column: 10, scope: !3913, inlinedAt: !4013)
!4016 = !DILocation(line: 205, column: 11, scope: !3957, inlinedAt: !4002)
!4017 = !DILocation(line: 204, column: 11, scope: !3958, inlinedAt: !4002)
!4018 = !DILocation(line: 206, column: 9, scope: !3957, inlinedAt: !4002)
!4019 = !DILocation(line: 207, column: 14, scope: !3958, inlinedAt: !4002)
!4020 = !DILocation(line: 207, column: 18, scope: !3958, inlinedAt: !4002)
!4021 = !DILocation(line: 207, column: 9, scope: !3958, inlinedAt: !4002)
!4022 = !DILocation(line: 53, column: 8, scope: !3913, inlinedAt: !4013)
!4023 = !DILocation(line: 57, column: 7, scope: !3917, inlinedAt: !4013)
!4024 = !DILocation(line: 58, column: 7, scope: !3917, inlinedAt: !4013)
!4025 = !DILocation(line: 61, column: 7, scope: !3904, inlinedAt: !4013)
!4026 = !DILocation(line: 62, column: 8, scope: !3921, inlinedAt: !4013)
!4027 = !DILocation(line: 62, column: 13, scope: !3921, inlinedAt: !4013)
!4028 = !DILocation(line: 62, column: 10, scope: !3921, inlinedAt: !4013)
!4029 = !DILocation(line: 63, column: 5, scope: !3921, inlinedAt: !4013)
!4030 = !DILocation(line: 76, column: 3, scope: !3993)
!4031 = distinct !DISubprogram(name: "xzalloc", scope: !3865, file: !3865, line: 84, type: !3866, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !515, variables: !4032)
!4032 = !{!4033}
!4033 = !DILocalVariable(name: "s", arg: 1, scope: !4031, file: !3865, line: 84, type: !109)
!4034 = !DILocation(line: 84, column: 17, scope: !4031)
!4035 = !DILocation(line: 39, column: 17, scope: !3864, inlinedAt: !4036)
!4036 = distinct !DILocation(line: 86, column: 18, scope: !4031)
!4037 = !DILocation(line: 41, column: 13, scope: !3864, inlinedAt: !4036)
!4038 = !DILocation(line: 41, column: 9, scope: !3864, inlinedAt: !4036)
!4039 = !DILocation(line: 42, column: 8, scope: !3875, inlinedAt: !4036)
!4040 = !DILocation(line: 42, column: 15, scope: !3875, inlinedAt: !4036)
!4041 = !DILocation(line: 42, column: 10, scope: !3875, inlinedAt: !4036)
!4042 = !DILocation(line: 43, column: 5, scope: !3875, inlinedAt: !4036)
!4043 = !DILocation(line: 86, column: 10, scope: !4031)
!4044 = !DILocation(line: 86, column: 3, scope: !4031)
!4045 = distinct !DISubprogram(name: "xcalloc", scope: !3865, file: !3865, line: 93, type: !3851, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !515, variables: !4046)
!4046 = !{!4047, !4048, !4049}
!4047 = !DILocalVariable(name: "n", arg: 1, scope: !4045, file: !3865, line: 93, type: !109)
!4048 = !DILocalVariable(name: "s", arg: 2, scope: !4045, file: !3865, line: 93, type: !109)
!4049 = !DILocalVariable(name: "p", scope: !4045, file: !3865, line: 95, type: !29)
!4050 = !DILocation(line: 93, column: 17, scope: !4045)
!4051 = !DILocation(line: 93, column: 27, scope: !4045)
!4052 = !DILocation(line: 100, column: 7, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4045, file: !3865, line: 100, column: 7)
!4054 = !DILocation(line: 101, column: 7, scope: !4053)
!4055 = !DILocation(line: 101, column: 18, scope: !4053)
!4056 = !DILocation(line: 95, column: 9, scope: !4045)
!4057 = !DILocation(line: 101, column: 16, scope: !4053)
!4058 = !DILocation(line: 100, column: 7, scope: !4045)
!4059 = !DILocation(line: 102, column: 5, scope: !4053)
!4060 = !DILocation(line: 103, column: 3, scope: !4045)
!4061 = distinct !DISubprogram(name: "xmemdup", scope: !3865, file: !3865, line: 111, type: !4062, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !515, variables: !4066)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!29, !4064, !109}
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4066 = !{!4067, !4068}
!4067 = !DILocalVariable(name: "p", arg: 1, scope: !4061, file: !3865, line: 111, type: !4064)
!4068 = !DILocalVariable(name: "s", arg: 2, scope: !4061, file: !3865, line: 111, type: !109)
!4069 = !DILocation(line: 111, column: 22, scope: !4061)
!4070 = !DILocation(line: 111, column: 32, scope: !4061)
!4071 = !DILocation(line: 39, column: 17, scope: !3864, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 113, column: 18, scope: !4061)
!4073 = !DILocation(line: 41, column: 13, scope: !3864, inlinedAt: !4072)
!4074 = !DILocation(line: 41, column: 9, scope: !3864, inlinedAt: !4072)
!4075 = !DILocation(line: 42, column: 8, scope: !3875, inlinedAt: !4072)
!4076 = !DILocation(line: 42, column: 15, scope: !3875, inlinedAt: !4072)
!4077 = !DILocation(line: 42, column: 10, scope: !3875, inlinedAt: !4072)
!4078 = !DILocation(line: 43, column: 5, scope: !3875, inlinedAt: !4072)
!4079 = !DILocation(line: 113, column: 10, scope: !4061)
!4080 = !DILocation(line: 113, column: 3, scope: !4061)
!4081 = distinct !DISubprogram(name: "xstrdup", scope: !3865, file: !3865, line: 119, type: !3079, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !515, variables: !4082)
!4082 = !{!4083}
!4083 = !DILocalVariable(name: "string", arg: 1, scope: !4081, file: !3865, line: 119, type: !41)
!4084 = !DILocation(line: 119, column: 22, scope: !4081)
!4085 = !DILocation(line: 121, column: 27, scope: !4081)
!4086 = !DILocation(line: 121, column: 43, scope: !4081)
!4087 = !DILocation(line: 111, column: 22, scope: !4061, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 121, column: 10, scope: !4081)
!4089 = !DILocation(line: 111, column: 32, scope: !4061, inlinedAt: !4088)
!4090 = !DILocation(line: 39, column: 17, scope: !3864, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 113, column: 18, scope: !4061, inlinedAt: !4088)
!4092 = !DILocation(line: 41, column: 13, scope: !3864, inlinedAt: !4091)
!4093 = !DILocation(line: 41, column: 9, scope: !3864, inlinedAt: !4091)
!4094 = !DILocation(line: 42, column: 8, scope: !3875, inlinedAt: !4091)
!4095 = !DILocation(line: 42, column: 15, scope: !3875, inlinedAt: !4091)
!4096 = !DILocation(line: 42, column: 10, scope: !3875, inlinedAt: !4091)
!4097 = !DILocation(line: 43, column: 5, scope: !3875, inlinedAt: !4091)
!4098 = !DILocation(line: 113, column: 10, scope: !4061, inlinedAt: !4088)
!4099 = !DILocation(line: 121, column: 3, scope: !4081)
!4100 = distinct !DISubprogram(name: "xalloc_die", scope: !4101, file: !4101, line: 32, type: !908, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !532, variables: !64)
!4101 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4102 = !DILocation(line: 34, column: 10, scope: !4100)
!4103 = !DILocation(line: 34, column: 33, scope: !4100)
!4104 = !DILocation(line: 34, column: 3, scope: !4100)
!4105 = !DILocation(line: 40, column: 3, scope: !4100)
!4106 = distinct !DISubprogram(name: "xvasprintf", scope: !4107, file: !4107, line: 76, type: !4108, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !534, variables: !4117)
!4107 = !DIFile(filename: "lib/xvasprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!59, !41, !4110}
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !535, size: 192, elements: !4112)
!4112 = !{!4113, !4114, !4115, !4116}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4111, file: !535, baseType: !28, size: 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4111, file: !535, baseType: !28, size: 32, offset: 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4111, file: !535, baseType: !29, size: 64, offset: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4111, file: !535, baseType: !29, size: 64, offset: 128)
!4117 = !{!4118, !4119, !4120, !4121, !4123}
!4118 = !DILocalVariable(name: "format", arg: 1, scope: !4106, file: !4107, line: 76, type: !41)
!4119 = !DILocalVariable(name: "args", arg: 2, scope: !4106, file: !4107, line: 76, type: !4110)
!4120 = !DILocalVariable(name: "result", scope: !4106, file: !4107, line: 78, type: !59)
!4121 = !DILocalVariable(name: "argcount", scope: !4122, file: !4107, line: 84, type: !109)
!4122 = distinct !DILexicalBlock(scope: !4106, file: !4107, line: 83, column: 3)
!4123 = !DILocalVariable(name: "f", scope: !4122, file: !4107, line: 85, type: !41)
!4124 = !DILocalVariable(name: "ap", scope: !4125, file: !4107, line: 36, type: !4144)
!4125 = distinct !DISubprogram(name: "xstrcat", scope: !4107, file: !4107, line: 33, type: !4126, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !534, variables: !4128)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!59, !109, !4110}
!4128 = !{!4129, !4130, !4131, !4124, !4132, !4133, !4134, !4135, !4139, !4143}
!4129 = !DILocalVariable(name: "argcount", arg: 1, scope: !4125, file: !4107, line: 33, type: !109)
!4130 = !DILocalVariable(name: "args", arg: 2, scope: !4125, file: !4107, line: 33, type: !4110)
!4131 = !DILocalVariable(name: "result", scope: !4125, file: !4107, line: 35, type: !59)
!4132 = !DILocalVariable(name: "totalsize", scope: !4125, file: !4107, line: 37, type: !109)
!4133 = !DILocalVariable(name: "i", scope: !4125, file: !4107, line: 38, type: !109)
!4134 = !DILocalVariable(name: "p", scope: !4125, file: !4107, line: 39, type: !59)
!4135 = !DILocalVariable(name: "next", scope: !4136, file: !4107, line: 46, type: !41)
!4136 = distinct !DILexicalBlock(scope: !4137, file: !4107, line: 45, column: 5)
!4137 = distinct !DILexicalBlock(scope: !4138, file: !4107, line: 44, column: 3)
!4138 = distinct !DILexicalBlock(scope: !4125, file: !4107, line: 44, column: 3)
!4139 = !DILocalVariable(name: "next", scope: !4140, file: !4107, line: 65, type: !41)
!4140 = distinct !DILexicalBlock(scope: !4141, file: !4107, line: 64, column: 5)
!4141 = distinct !DILexicalBlock(scope: !4142, file: !4107, line: 63, column: 3)
!4142 = distinct !DILexicalBlock(scope: !4125, file: !4107, line: 63, column: 3)
!4143 = !DILocalVariable(name: "len", scope: !4140, file: !4107, line: 66, type: !109)
!4144 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !766, line: 46, baseType: !4145)
!4145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !768, line: 48, baseType: !4146)
!4146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !535, line: 36, baseType: !4147)
!4147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4111, size: 192, elements: !777)
!4148 = !DILocation(line: 36, column: 11, scope: !4125, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 91, column: 18, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4151, file: !4107, line: 89, column: 13)
!4151 = distinct !DILexicalBlock(scope: !4152, file: !4107, line: 88, column: 7)
!4152 = distinct !DILexicalBlock(scope: !4153, file: !4107, line: 87, column: 5)
!4153 = distinct !DILexicalBlock(scope: !4122, file: !4107, line: 87, column: 5)
!4154 = !DILocation(line: 76, column: 25, scope: !4106)
!4155 = !DILocation(line: 76, column: 41, scope: !4106)
!4156 = !DILocation(line: 78, column: 3, scope: !4106)
!4157 = !DILocation(line: 84, column: 12, scope: !4122)
!4158 = !DILocation(line: 85, column: 17, scope: !4122)
!4159 = !DILocation(line: 87, column: 10, scope: !4153)
!4160 = !DILocation(line: 89, column: 13, scope: !4150)
!4161 = !DILocation(line: 89, column: 13, scope: !4151)
!4162 = !DILocation(line: 33, column: 17, scope: !4125, inlinedAt: !4149)
!4163 = !DILocation(line: 33, column: 35, scope: !4125, inlinedAt: !4149)
!4164 = !DILocation(line: 36, column: 3, scope: !4125, inlinedAt: !4149)
!4165 = !DILocation(line: 37, column: 10, scope: !4125, inlinedAt: !4149)
!4166 = !DILocation(line: 43, column: 3, scope: !4125, inlinedAt: !4149)
!4167 = !DILocation(line: 38, column: 10, scope: !4125, inlinedAt: !4149)
!4168 = !DILocation(line: 44, column: 24, scope: !4137, inlinedAt: !4149)
!4169 = !DILocation(line: 44, column: 3, scope: !4138, inlinedAt: !4149)
!4170 = !DILocation(line: 49, column: 3, scope: !4125, inlinedAt: !4149)
!4171 = !DILocation(line: 61, column: 12, scope: !4125, inlinedAt: !4149)
!4172 = !DILocation(line: 35, column: 9, scope: !4125, inlinedAt: !4149)
!4173 = !DILocation(line: 39, column: 9, scope: !4125, inlinedAt: !4149)
!4174 = !DILocation(line: 63, column: 3, scope: !4142, inlinedAt: !4149)
!4175 = !DILocation(line: 46, column: 26, scope: !4136, inlinedAt: !4149)
!4176 = !DILocation(line: 46, column: 19, scope: !4136, inlinedAt: !4149)
!4177 = !DILocation(line: 47, column: 36, scope: !4136, inlinedAt: !4149)
!4178 = !DILocalVariable(name: "size1", arg: 1, scope: !4179, file: !4180, line: 63, type: !109)
!4179 = distinct !DISubprogram(name: "xsum", scope: !4180, file: !4180, line: 63, type: !4181, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !534, variables: !4183)
!4180 = !DIFile(filename: "./lib/xsize.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!109, !109, !109}
!4183 = !{!4178, !4184, !4185}
!4184 = !DILocalVariable(name: "size2", arg: 2, scope: !4179, file: !4180, line: 63, type: !109)
!4185 = !DILocalVariable(name: "sum", scope: !4179, file: !4180, line: 65, type: !109)
!4186 = !DILocation(line: 63, column: 14, scope: !4179, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 47, column: 19, scope: !4136, inlinedAt: !4149)
!4188 = !DILocation(line: 63, column: 28, scope: !4179, inlinedAt: !4187)
!4189 = !DILocation(line: 65, column: 22, scope: !4179, inlinedAt: !4187)
!4190 = !DILocation(line: 65, column: 10, scope: !4179, inlinedAt: !4187)
!4191 = !DILocation(line: 66, column: 15, scope: !4179, inlinedAt: !4187)
!4192 = !DILocation(line: 66, column: 11, scope: !4179, inlinedAt: !4187)
!4193 = !DILocation(line: 44, column: 30, scope: !4137, inlinedAt: !4149)
!4194 = distinct !{!4194, !4195, !4196}
!4195 = !DILocation(line: 44, column: 3, scope: !4138)
!4196 = !DILocation(line: 48, column: 5, scope: !4138)
!4197 = !DILocation(line: 54, column: 42, scope: !4198, inlinedAt: !4149)
!4198 = distinct !DILexicalBlock(scope: !4125, file: !4107, line: 54, column: 7)
!4199 = !DILocation(line: 54, column: 29, scope: !4198, inlinedAt: !4149)
!4200 = !DILocation(line: 56, column: 7, scope: !4201, inlinedAt: !4149)
!4201 = distinct !DILexicalBlock(scope: !4198, file: !4107, line: 55, column: 5)
!4202 = !DILocation(line: 56, column: 13, scope: !4201, inlinedAt: !4149)
!4203 = !DILocation(line: 57, column: 7, scope: !4201, inlinedAt: !4149)
!4204 = !DILocation(line: 65, column: 26, scope: !4140, inlinedAt: !4149)
!4205 = !DILocation(line: 65, column: 19, scope: !4140, inlinedAt: !4149)
!4206 = !DILocation(line: 66, column: 20, scope: !4140, inlinedAt: !4149)
!4207 = !DILocation(line: 66, column: 14, scope: !4140, inlinedAt: !4149)
!4208 = !DILocation(line: 67, column: 7, scope: !4140, inlinedAt: !4149)
!4209 = !DILocation(line: 68, column: 9, scope: !4140, inlinedAt: !4149)
!4210 = !DILocation(line: 63, column: 30, scope: !4141, inlinedAt: !4149)
!4211 = !DILocation(line: 63, column: 24, scope: !4141, inlinedAt: !4149)
!4212 = distinct !{!4212, !4213, !4214}
!4213 = !DILocation(line: 63, column: 3, scope: !4142)
!4214 = !DILocation(line: 69, column: 5, scope: !4142)
!4215 = !DILocation(line: 70, column: 6, scope: !4125, inlinedAt: !4149)
!4216 = !DILocation(line: 72, column: 3, scope: !4125, inlinedAt: !4149)
!4217 = !DILocation(line: 94, column: 10, scope: !4151)
!4218 = !DILocation(line: 95, column: 13, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4151, file: !4107, line: 95, column: 13)
!4220 = !DILocation(line: 95, column: 16, scope: !4219)
!4221 = !DILocation(line: 95, column: 13, scope: !4151)
!4222 = !DILocation(line: 97, column: 10, scope: !4151)
!4223 = !DILocation(line: 98, column: 17, scope: !4151)
!4224 = !DILocation(line: 87, column: 5, scope: !4152)
!4225 = distinct !{!4225, !4226, !4227}
!4226 = !DILocation(line: 87, column: 5, scope: !4153)
!4227 = !DILocation(line: 99, column: 7, scope: !4153)
!4228 = !DILocation(line: 73, column: 1, scope: !4125, inlinedAt: !4149)
!4229 = !DILocation(line: 78, column: 9, scope: !4106)
!4230 = !DILocalVariable(name: "__ptr", arg: 1, scope: !4231, file: !4232, line: 207, type: !4235)
!4231 = distinct !DISubprogram(name: "vasprintf", scope: !4232, file: !4232, line: 207, type: !4233, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !534, variables: !4237)
!4232 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!26, !4235, !4236, !4110}
!4235 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!4236 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!4237 = !{!4230, !4238, !4239}
!4238 = !DILocalVariable(name: "__fmt", arg: 2, scope: !4231, file: !4232, line: 207, type: !4236)
!4239 = !DILocalVariable(name: "__ap", arg: 3, scope: !4231, file: !4232, line: 207, type: !4110)
!4240 = !DILocation(line: 207, column: 1, scope: !4231, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 102, column: 7, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4106, file: !4107, line: 102, column: 7)
!4243 = !DILocation(line: 210, column: 10, scope: !4231, inlinedAt: !4241)
!4244 = !DILocation(line: 102, column: 41, scope: !4242)
!4245 = !DILocation(line: 102, column: 7, scope: !4106)
!4246 = !DILocation(line: 104, column: 11, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4248, file: !4107, line: 104, column: 11)
!4248 = distinct !DILexicalBlock(scope: !4242, file: !4107, line: 103, column: 5)
!4249 = !DILocation(line: 104, column: 17, scope: !4247)
!4250 = !DILocation(line: 104, column: 11, scope: !4248)
!4251 = !DILocation(line: 105, column: 9, scope: !4247)
!4252 = !DILocation(line: 109, column: 10, scope: !4106)
!4253 = !DILocation(line: 109, column: 3, scope: !4106)
!4254 = !DILocation(line: 110, column: 1, scope: !4106)
!4255 = distinct !DISubprogram(name: "rpl_calloc", scope: !4256, file: !4256, line: 42, type: !3851, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !4257)
!4256 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4257 = !{!4258, !4259, !4260, !4261}
!4258 = !DILocalVariable(name: "n", arg: 1, scope: !4255, file: !4256, line: 42, type: !109)
!4259 = !DILocalVariable(name: "s", arg: 2, scope: !4255, file: !4256, line: 42, type: !109)
!4260 = !DILocalVariable(name: "result", scope: !4255, file: !4256, line: 44, type: !29)
!4261 = !DILocalVariable(name: "bytes", scope: !4262, file: !4256, line: 56, type: !109)
!4262 = distinct !DILexicalBlock(scope: !4263, file: !4256, line: 53, column: 5)
!4263 = distinct !DILexicalBlock(scope: !4255, file: !4256, line: 47, column: 7)
!4264 = !DILocation(line: 42, column: 20, scope: !4255)
!4265 = !DILocation(line: 42, column: 30, scope: !4255)
!4266 = !DILocation(line: 47, column: 9, scope: !4263)
!4267 = !DILocation(line: 47, column: 19, scope: !4263)
!4268 = !DILocation(line: 47, column: 14, scope: !4263)
!4269 = !DILocation(line: 56, column: 24, scope: !4262)
!4270 = !DILocation(line: 56, column: 14, scope: !4262)
!4271 = !DILocation(line: 57, column: 17, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4262, file: !4256, line: 57, column: 11)
!4273 = !DILocation(line: 57, column: 21, scope: !4272)
!4274 = !DILocation(line: 57, column: 11, scope: !4262)
!4275 = !DILocation(line: 59, column: 11, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4272, file: !4256, line: 58, column: 9)
!4277 = !DILocation(line: 59, column: 17, scope: !4276)
!4278 = !DILocation(line: 65, column: 12, scope: !4255)
!4279 = !DILocation(line: 44, column: 9, scope: !4255)
!4280 = !DILocation(line: 72, column: 3, scope: !4255)
!4281 = !DILocation(line: 73, column: 1, scope: !4255)
!4282 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4283, file: !4283, line: 334, type: !4284, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !4298)
!4283 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!109, !4286, !41, !109, !4287}
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2131, line: 6, baseType: !4289)
!4289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2133, line: 21, baseType: !4290)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2133, line: 13, size: 64, elements: !4291)
!4291 = !{!4292, !4293}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4290, file: !2133, line: 15, baseType: !26, size: 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4290, file: !2133, line: 20, baseType: !4294, size: 32, offset: 32)
!4294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4290, file: !2133, line: 16, size: 32, elements: !4295)
!4295 = !{!4296, !4297}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4294, file: !2133, line: 18, baseType: !28, size: 32)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4294, file: !2133, line: 19, baseType: !2142, size: 32)
!4298 = !{!4299, !4300, !4301, !4302, !4303, !4304, !4305}
!4299 = !DILocalVariable(name: "pwc", arg: 1, scope: !4282, file: !4283, line: 334, type: !4286)
!4300 = !DILocalVariable(name: "s", arg: 2, scope: !4282, file: !4283, line: 334, type: !41)
!4301 = !DILocalVariable(name: "n", arg: 3, scope: !4282, file: !4283, line: 334, type: !109)
!4302 = !DILocalVariable(name: "ps", arg: 4, scope: !4282, file: !4283, line: 334, type: !4287)
!4303 = !DILocalVariable(name: "ret", scope: !4282, file: !4283, line: 336, type: !109)
!4304 = !DILocalVariable(name: "wc", scope: !4282, file: !4283, line: 337, type: !2147)
!4305 = !DILocalVariable(name: "uc", scope: !4306, file: !4283, line: 398, type: !499)
!4306 = distinct !DILexicalBlock(scope: !4307, file: !4283, line: 397, column: 5)
!4307 = distinct !DILexicalBlock(scope: !4282, file: !4283, line: 396, column: 7)
!4308 = !DILocation(line: 334, column: 23, scope: !4282)
!4309 = !DILocation(line: 334, column: 40, scope: !4282)
!4310 = !DILocation(line: 334, column: 50, scope: !4282)
!4311 = !DILocation(line: 334, column: 64, scope: !4282)
!4312 = !DILocation(line: 337, column: 3, scope: !4282)
!4313 = !DILocation(line: 353, column: 9, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4282, file: !4283, line: 353, column: 7)
!4315 = !DILocation(line: 353, column: 7, scope: !4282)
!4316 = !DILocation(line: 388, column: 9, scope: !4282)
!4317 = !DILocation(line: 336, column: 10, scope: !4282)
!4318 = !DILocation(line: 396, column: 19, scope: !4307)
!4319 = !DILocation(line: 396, column: 31, scope: !4307)
!4320 = !DILocation(line: 396, column: 26, scope: !4307)
!4321 = !DILocation(line: 396, column: 41, scope: !4307)
!4322 = !DILocation(line: 396, column: 7, scope: !4282)
!4323 = !DILocation(line: 398, column: 26, scope: !4306)
!4324 = !DILocation(line: 398, column: 21, scope: !4306)
!4325 = !DILocation(line: 399, column: 14, scope: !4306)
!4326 = !DILocation(line: 399, column: 12, scope: !4306)
!4327 = !DILocation(line: 405, column: 1, scope: !4282)
!4328 = distinct !DISubprogram(name: "close_stream", scope: !4329, file: !4329, line: 56, type: !4330, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !543, variables: !4382)
!4329 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!26, !4332}
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4334, line: 7, baseType: !4335)
!4334 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4336, line: 241, size: 1728, elements: !4337)
!4336 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4337 = !{!4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4358, !4359, !4360, !4361, !4362, !4363, !4365, !4367, !4370, !4372, !4373, !4374, !4375, !4376, !4377, !4378}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4335, file: !4336, line: 242, baseType: !26, size: 32)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4335, file: !4336, line: 247, baseType: !59, size: 64, offset: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4335, file: !4336, line: 248, baseType: !59, size: 64, offset: 128)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4335, file: !4336, line: 249, baseType: !59, size: 64, offset: 192)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4335, file: !4336, line: 250, baseType: !59, size: 64, offset: 256)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4335, file: !4336, line: 251, baseType: !59, size: 64, offset: 320)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4335, file: !4336, line: 252, baseType: !59, size: 64, offset: 384)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4335, file: !4336, line: 253, baseType: !59, size: 64, offset: 448)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4335, file: !4336, line: 254, baseType: !59, size: 64, offset: 512)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4335, file: !4336, line: 256, baseType: !59, size: 64, offset: 576)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4335, file: !4336, line: 257, baseType: !59, size: 64, offset: 640)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4335, file: !4336, line: 258, baseType: !59, size: 64, offset: 704)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4335, file: !4336, line: 260, baseType: !4351, size: 64, offset: 768)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4336, line: 156, size: 192, elements: !4353)
!4353 = !{!4354, !4355, !4357}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4352, file: !4336, line: 157, baseType: !4351, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4352, file: !4336, line: 158, baseType: !4356, size: 64, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4352, file: !4336, line: 162, baseType: !26, size: 32, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4335, file: !4336, line: 262, baseType: !4356, size: 64, offset: 832)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4335, file: !4336, line: 264, baseType: !26, size: 32, offset: 896)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4335, file: !4336, line: 268, baseType: !26, size: 32, offset: 928)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4335, file: !4336, line: 270, baseType: !1099, size: 64, offset: 960)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4335, file: !4336, line: 274, baseType: !27, size: 16, offset: 1024)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4335, file: !4336, line: 275, baseType: !4364, size: 8, offset: 1040)
!4364 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4335, file: !4336, line: 276, baseType: !4366, size: 8, offset: 1048)
!4366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !777)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4335, file: !4336, line: 280, baseType: !4368, size: 64, offset: 1088)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !4336, line: 150, baseType: null)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4335, file: !4336, line: 289, baseType: !4371, size: 64, offset: 1152)
!4371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !509, line: 141, baseType: !1100)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4335, file: !4336, line: 297, baseType: !29, size: 64, offset: 1216)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4335, file: !4336, line: 298, baseType: !29, size: 64, offset: 1280)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4335, file: !4336, line: 299, baseType: !29, size: 64, offset: 1344)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4335, file: !4336, line: 300, baseType: !29, size: 64, offset: 1408)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4335, file: !4336, line: 302, baseType: !109, size: 64, offset: 1472)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4335, file: !4336, line: 303, baseType: !26, size: 32, offset: 1536)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4335, file: !4336, line: 305, baseType: !4379, size: 160, offset: 1568)
!4379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !4380)
!4380 = !{!4381}
!4381 = !DISubrange(count: 20)
!4382 = !{!4383, !4384, !4386, !4387}
!4383 = !DILocalVariable(name: "stream", arg: 1, scope: !4328, file: !4329, line: 56, type: !4332)
!4384 = !DILocalVariable(name: "some_pending", scope: !4328, file: !4329, line: 58, type: !4385)
!4385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!4386 = !DILocalVariable(name: "prev_fail", scope: !4328, file: !4329, line: 59, type: !4385)
!4387 = !DILocalVariable(name: "fclose_fail", scope: !4328, file: !4329, line: 60, type: !4385)
!4388 = !DILocation(line: 56, column: 21, scope: !4328)
!4389 = !DILocation(line: 58, column: 30, scope: !4328)
!4390 = !DILocalVariable(name: "__stream", arg: 1, scope: !4391, file: !4392, line: 132, type: !4332)
!4391 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4392, file: !4392, line: 132, type: !4330, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !543, variables: !4393)
!4392 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4393 = !{!4390}
!4394 = !DILocation(line: 132, column: 1, scope: !4391, inlinedAt: !4395)
!4395 = distinct !DILocation(line: 59, column: 27, scope: !4328)
!4396 = !DILocation(line: 134, column: 10, scope: !4391, inlinedAt: !4395)
!4397 = !{!4398, !631, i64 0}
!4398 = !{!"_IO_FILE", !631, i64 0, !572, i64 8, !572, i64 16, !572, i64 24, !572, i64 32, !572, i64 40, !572, i64 48, !572, i64 56, !572, i64 64, !572, i64 72, !572, i64 80, !572, i64 88, !572, i64 96, !572, i64 104, !631, i64 112, !631, i64 116, !1341, i64 120, !1797, i64 128, !573, i64 130, !573, i64 131, !572, i64 136, !1341, i64 144, !572, i64 152, !572, i64 160, !572, i64 168, !572, i64 176, !1341, i64 184, !631, i64 192, !573, i64 196}
!4399 = !DILocation(line: 59, column: 43, scope: !4328)
!4400 = !DILocation(line: 60, column: 29, scope: !4328)
!4401 = !DILocation(line: 60, column: 45, scope: !4328)
!4402 = !DILocation(line: 70, column: 17, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4328, file: !4329, line: 70, column: 7)
!4404 = !DILocation(line: 58, column: 50, scope: !4328)
!4405 = !DILocation(line: 70, column: 33, scope: !4403)
!4406 = !DILocation(line: 70, column: 53, scope: !4403)
!4407 = !DILocation(line: 70, column: 59, scope: !4403)
!4408 = !DILocation(line: 70, column: 7, scope: !4328)
!4409 = !DILocation(line: 72, column: 11, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4403, file: !4329, line: 71, column: 5)
!4411 = !DILocation(line: 73, column: 9, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4410, file: !4329, line: 72, column: 11)
!4413 = !DILocation(line: 73, column: 15, scope: !4412)
!4414 = !DILocation(line: 78, column: 1, scope: !4328)
!4415 = distinct !DISubprogram(name: "hard_locale", scope: !4416, file: !4416, line: 38, type: !654, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !4417)
!4416 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4417 = !{!4418, !4419, !4420}
!4418 = !DILocalVariable(name: "category", arg: 1, scope: !4415, file: !4416, line: 38, type: !26)
!4419 = !DILocalVariable(name: "hard", scope: !4415, file: !4416, line: 40, type: !69)
!4420 = !DILocalVariable(name: "p", scope: !4415, file: !4416, line: 41, type: !41)
!4421 = !DILocation(line: 38, column: 18, scope: !4415)
!4422 = !DILocation(line: 40, column: 8, scope: !4415)
!4423 = !DILocation(line: 41, column: 19, scope: !4415)
!4424 = !DILocation(line: 41, column: 15, scope: !4415)
!4425 = !DILocation(line: 43, column: 7, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4415, file: !4416, line: 43, column: 7)
!4427 = !DILocation(line: 43, column: 7, scope: !4415)
!4428 = !DILocation(line: 47, column: 15, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4430, file: !4416, line: 47, column: 15)
!4430 = distinct !DILexicalBlock(scope: !4431, file: !4416, line: 46, column: 9)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !4416, line: 45, column: 11)
!4432 = distinct !DILexicalBlock(scope: !4426, file: !4416, line: 44, column: 5)
!4433 = !DILocation(line: 47, column: 31, scope: !4429)
!4434 = !DILocation(line: 47, column: 36, scope: !4429)
!4435 = !DILocation(line: 47, column: 39, scope: !4429)
!4436 = !DILocation(line: 47, column: 59, scope: !4429)
!4437 = !DILocation(line: 47, column: 15, scope: !4430)
!4438 = !DILocation(line: 48, column: 13, scope: !4429)
!4439 = !DILocation(line: 71, column: 3, scope: !4415)
!4440 = distinct !DISubprogram(name: "locale_charset", scope: !501, file: !501, line: 393, type: !4441, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !4443)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!41}
!4443 = !{!4444, !4445}
!4444 = !DILocalVariable(name: "codeset", scope: !4440, file: !501, line: 395, type: !41)
!4445 = !DILocalVariable(name: "aliases", scope: !4440, file: !501, line: 396, type: !41)
!4446 = !DILocalVariable(name: "buf1", scope: !4447, file: !501, line: 196, type: !4514)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !501, line: 194, column: 21)
!4448 = distinct !DILexicalBlock(scope: !4449, file: !501, line: 193, column: 19)
!4449 = distinct !DILexicalBlock(scope: !4450, file: !501, line: 193, column: 19)
!4450 = distinct !DILexicalBlock(scope: !4451, file: !501, line: 188, column: 17)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !501, line: 181, column: 19)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !501, line: 177, column: 13)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !501, line: 173, column: 15)
!4454 = distinct !DILexicalBlock(scope: !4455, file: !501, line: 161, column: 9)
!4455 = distinct !DILexicalBlock(scope: !4456, file: !501, line: 157, column: 11)
!4456 = distinct !DILexicalBlock(scope: !4457, file: !501, line: 130, column: 5)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !501, line: 129, column: 7)
!4458 = distinct !DISubprogram(name: "get_charset_aliases", scope: !501, file: !501, line: 124, type: !4441, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !4459)
!4459 = !{!4460, !4461, !4462, !4463, !4464, !4466, !4467, !4468, !4469, !4510, !4511, !4512, !4446, !4513, !4517, !4518, !4519}
!4460 = !DILocalVariable(name: "cp", scope: !4458, file: !501, line: 126, type: !41)
!4461 = !DILocalVariable(name: "dir", scope: !4456, file: !501, line: 132, type: !41)
!4462 = !DILocalVariable(name: "base", scope: !4456, file: !501, line: 133, type: !41)
!4463 = !DILocalVariable(name: "file_name", scope: !4456, file: !501, line: 134, type: !59)
!4464 = !DILocalVariable(name: "dir_len", scope: !4465, file: !501, line: 144, type: !109)
!4465 = distinct !DILexicalBlock(scope: !4456, file: !501, line: 143, column: 7)
!4466 = !DILocalVariable(name: "base_len", scope: !4465, file: !501, line: 145, type: !109)
!4467 = !DILocalVariable(name: "add_slash", scope: !4465, file: !501, line: 146, type: !26)
!4468 = !DILocalVariable(name: "fd", scope: !4454, file: !501, line: 162, type: !26)
!4469 = !DILocalVariable(name: "fp", scope: !4452, file: !501, line: 178, type: !4470)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4334, line: 7, baseType: !4472)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4336, line: 241, size: 1728, elements: !4473)
!4473 = !{!4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4472, file: !4336, line: 242, baseType: !26, size: 32)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4472, file: !4336, line: 247, baseType: !59, size: 64, offset: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4472, file: !4336, line: 248, baseType: !59, size: 64, offset: 128)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4472, file: !4336, line: 249, baseType: !59, size: 64, offset: 192)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4472, file: !4336, line: 250, baseType: !59, size: 64, offset: 256)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4472, file: !4336, line: 251, baseType: !59, size: 64, offset: 320)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4472, file: !4336, line: 252, baseType: !59, size: 64, offset: 384)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4472, file: !4336, line: 253, baseType: !59, size: 64, offset: 448)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4472, file: !4336, line: 254, baseType: !59, size: 64, offset: 512)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4472, file: !4336, line: 256, baseType: !59, size: 64, offset: 576)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4472, file: !4336, line: 257, baseType: !59, size: 64, offset: 640)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4472, file: !4336, line: 258, baseType: !59, size: 64, offset: 704)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4472, file: !4336, line: 260, baseType: !4487, size: 64, offset: 768)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4336, line: 156, size: 192, elements: !4489)
!4489 = !{!4490, !4491, !4493}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4488, file: !4336, line: 157, baseType: !4487, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4488, file: !4336, line: 158, baseType: !4492, size: 64, offset: 64)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4488, file: !4336, line: 162, baseType: !26, size: 32, offset: 128)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4472, file: !4336, line: 262, baseType: !4492, size: 64, offset: 832)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4472, file: !4336, line: 264, baseType: !26, size: 32, offset: 896)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4472, file: !4336, line: 268, baseType: !26, size: 32, offset: 928)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4472, file: !4336, line: 270, baseType: !1099, size: 64, offset: 960)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4472, file: !4336, line: 274, baseType: !27, size: 16, offset: 1024)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4472, file: !4336, line: 275, baseType: !4364, size: 8, offset: 1040)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4472, file: !4336, line: 276, baseType: !4366, size: 8, offset: 1048)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4472, file: !4336, line: 280, baseType: !4368, size: 64, offset: 1088)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4472, file: !4336, line: 289, baseType: !4371, size: 64, offset: 1152)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4472, file: !4336, line: 297, baseType: !29, size: 64, offset: 1216)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4472, file: !4336, line: 298, baseType: !29, size: 64, offset: 1280)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4472, file: !4336, line: 299, baseType: !29, size: 64, offset: 1344)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4472, file: !4336, line: 300, baseType: !29, size: 64, offset: 1408)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4472, file: !4336, line: 302, baseType: !109, size: 64, offset: 1472)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4472, file: !4336, line: 303, baseType: !26, size: 32, offset: 1536)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4472, file: !4336, line: 305, baseType: !4379, size: 160, offset: 1568)
!4510 = !DILocalVariable(name: "res_ptr", scope: !4450, file: !501, line: 190, type: !59)
!4511 = !DILocalVariable(name: "res_size", scope: !4450, file: !501, line: 191, type: !109)
!4512 = !DILocalVariable(name: "c", scope: !4447, file: !501, line: 195, type: !26)
!4513 = !DILocalVariable(name: "buf2", scope: !4447, file: !501, line: 197, type: !4514)
!4514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 408, elements: !4515)
!4515 = !{!4516}
!4516 = !DISubrange(count: 51)
!4517 = !DILocalVariable(name: "l1", scope: !4447, file: !501, line: 198, type: !109)
!4518 = !DILocalVariable(name: "l2", scope: !4447, file: !501, line: 198, type: !109)
!4519 = !DILocalVariable(name: "old_res_ptr", scope: !4447, file: !501, line: 199, type: !59)
!4520 = !DILocation(line: 196, column: 28, scope: !4447, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 589, column: 18, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4440, file: !501, line: 589, column: 3)
!4523 = !DILocation(line: 197, column: 28, scope: !4447, inlinedAt: !4521)
!4524 = !DILocation(line: 403, column: 13, scope: !4440)
!4525 = !DILocation(line: 395, column: 15, scope: !4440)
!4526 = !DILocation(line: 584, column: 15, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4440, file: !501, line: 584, column: 7)
!4528 = !DILocation(line: 584, column: 7, scope: !4440)
!4529 = !DILocation(line: 128, column: 8, scope: !4458, inlinedAt: !4521)
!4530 = !DILocation(line: 126, column: 15, scope: !4458, inlinedAt: !4521)
!4531 = !DILocation(line: 129, column: 10, scope: !4457, inlinedAt: !4521)
!4532 = !DILocation(line: 129, column: 7, scope: !4458, inlinedAt: !4521)
!4533 = !DILocation(line: 138, column: 13, scope: !4456, inlinedAt: !4521)
!4534 = !DILocation(line: 132, column: 19, scope: !4456, inlinedAt: !4521)
!4535 = !DILocation(line: 139, column: 15, scope: !4536, inlinedAt: !4521)
!4536 = distinct !DILexicalBlock(scope: !4456, file: !501, line: 139, column: 11)
!4537 = !DILocation(line: 139, column: 23, scope: !4536, inlinedAt: !4521)
!4538 = !DILocation(line: 139, column: 26, scope: !4536, inlinedAt: !4521)
!4539 = !DILocation(line: 139, column: 33, scope: !4536, inlinedAt: !4521)
!4540 = !DILocation(line: 139, column: 11, scope: !4456, inlinedAt: !4521)
!4541 = !DILocation(line: 140, column: 9, scope: !4536, inlinedAt: !4521)
!4542 = !DILocation(line: 144, column: 26, scope: !4465, inlinedAt: !4521)
!4543 = !DILocation(line: 144, column: 16, scope: !4465, inlinedAt: !4521)
!4544 = !DILocation(line: 145, column: 16, scope: !4465, inlinedAt: !4521)
!4545 = !DILocation(line: 146, column: 34, scope: !4465, inlinedAt: !4521)
!4546 = !DILocation(line: 146, column: 38, scope: !4465, inlinedAt: !4521)
!4547 = !DILocation(line: 146, column: 42, scope: !4465, inlinedAt: !4521)
!4548 = !DILocation(line: 147, column: 48, scope: !4465, inlinedAt: !4521)
!4549 = !DILocation(line: 147, column: 46, scope: !4465, inlinedAt: !4521)
!4550 = !DILocation(line: 147, column: 69, scope: !4465, inlinedAt: !4521)
!4551 = !DILocation(line: 147, column: 30, scope: !4465, inlinedAt: !4521)
!4552 = !DILocation(line: 134, column: 13, scope: !4456, inlinedAt: !4521)
!4553 = !DILocation(line: 148, column: 13, scope: !4465, inlinedAt: !4521)
!4554 = !DILocation(line: 150, column: 13, scope: !4555, inlinedAt: !4521)
!4555 = distinct !DILexicalBlock(scope: !4556, file: !501, line: 149, column: 11)
!4556 = distinct !DILexicalBlock(scope: !4465, file: !501, line: 148, column: 13)
!4557 = !DILocation(line: 151, column: 17, scope: !4555, inlinedAt: !4521)
!4558 = !DILocation(line: 152, column: 34, scope: !4559, inlinedAt: !4521)
!4559 = distinct !DILexicalBlock(scope: !4555, file: !501, line: 151, column: 17)
!4560 = !DILocation(line: 153, column: 41, scope: !4555, inlinedAt: !4521)
!4561 = !DILocation(line: 153, column: 13, scope: !4555, inlinedAt: !4521)
!4562 = !DILocation(line: 157, column: 11, scope: !4456, inlinedAt: !4521)
!4563 = !DILocation(line: 171, column: 16, scope: !4454, inlinedAt: !4521)
!4564 = !DILocation(line: 162, column: 15, scope: !4454, inlinedAt: !4521)
!4565 = !DILocation(line: 173, column: 18, scope: !4453, inlinedAt: !4521)
!4566 = !DILocation(line: 173, column: 15, scope: !4454, inlinedAt: !4521)
!4567 = !DILocation(line: 180, column: 20, scope: !4452, inlinedAt: !4521)
!4568 = !DILocation(line: 178, column: 21, scope: !4452, inlinedAt: !4521)
!4569 = !DILocation(line: 181, column: 22, scope: !4451, inlinedAt: !4521)
!4570 = !DILocation(line: 181, column: 19, scope: !4452, inlinedAt: !4521)
!4571 = !DILocation(line: 184, column: 19, scope: !4572, inlinedAt: !4521)
!4572 = distinct !DILexicalBlock(scope: !4451, file: !501, line: 182, column: 17)
!4573 = !DILocation(line: 186, column: 17, scope: !4572, inlinedAt: !4521)
!4574 = !DILocation(line: 190, column: 25, scope: !4450, inlinedAt: !4521)
!4575 = !DILocation(line: 191, column: 26, scope: !4450, inlinedAt: !4521)
!4576 = !DILocation(line: 193, column: 19, scope: !4450, inlinedAt: !4521)
!4577 = !DILocation(line: 196, column: 23, scope: !4447, inlinedAt: !4521)
!4578 = !DILocation(line: 197, column: 23, scope: !4447, inlinedAt: !4521)
!4579 = !DILocalVariable(name: "__fp", arg: 1, scope: !4580, file: !4392, line: 63, type: !4470)
!4580 = distinct !DISubprogram(name: "getc_unlocked", scope: !4392, file: !4392, line: 63, type: !4581, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !4583)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!26, !4470}
!4583 = !{!4579}
!4584 = !DILocation(line: 63, column: 22, scope: !4580, inlinedAt: !4585)
!4585 = distinct !DILocation(line: 201, column: 27, scope: !4447, inlinedAt: !4521)
!4586 = !DILocation(line: 65, column: 10, scope: !4580, inlinedAt: !4585)
!4587 = !{!4398, !572, i64 8}
!4588 = !{!4398, !572, i64 16}
!4589 = !{!"branch_weights", i32 2000, i32 1}
!4590 = !DILocation(line: 195, column: 27, scope: !4447, inlinedAt: !4521)
!4591 = !DILocation(line: 202, column: 27, scope: !4447, inlinedAt: !4521)
!4592 = distinct !{!4592, !4593, !4596}
!4593 = !DILocation(line: 209, column: 27, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4595, file: !501, line: 207, column: 25)
!4595 = distinct !DILexicalBlock(scope: !4447, file: !501, line: 206, column: 27)
!4596 = !DILocation(line: 211, column: 58, scope: !4594)
!4597 = !DILocation(line: 65, column: 10, scope: !4580, inlinedAt: !4598)
!4598 = distinct !DILocation(line: 210, column: 33, scope: !4594, inlinedAt: !4521)
!4599 = !DILocation(line: 63, column: 22, scope: !4580, inlinedAt: !4598)
!4600 = !DILocation(line: 210, column: 29, scope: !4594, inlinedAt: !4521)
!4601 = distinct !{!4601, !4602, !4603}
!4602 = !DILocation(line: 193, column: 19, scope: !4449)
!4603 = !DILocation(line: 241, column: 21, scope: !4449)
!4604 = !DILocation(line: 216, column: 23, scope: !4447, inlinedAt: !4521)
!4605 = !DILocation(line: 217, column: 27, scope: !4606, inlinedAt: !4521)
!4606 = distinct !DILexicalBlock(scope: !4447, file: !501, line: 217, column: 27)
!4607 = !DILocation(line: 217, column: 64, scope: !4606, inlinedAt: !4521)
!4608 = !DILocation(line: 217, column: 27, scope: !4447, inlinedAt: !4521)
!4609 = !DILocation(line: 219, column: 28, scope: !4447, inlinedAt: !4521)
!4610 = !DILocation(line: 198, column: 30, scope: !4447, inlinedAt: !4521)
!4611 = !DILocation(line: 220, column: 28, scope: !4447, inlinedAt: !4521)
!4612 = !DILocation(line: 198, column: 34, scope: !4447, inlinedAt: !4521)
!4613 = !DILocation(line: 199, column: 29, scope: !4447, inlinedAt: !4521)
!4614 = !DILocation(line: 222, column: 36, scope: !4615, inlinedAt: !4521)
!4615 = distinct !DILexicalBlock(scope: !4447, file: !501, line: 222, column: 27)
!4616 = !DILocation(line: 222, column: 27, scope: !4447, inlinedAt: !4521)
!4617 = !DILocation(line: 225, column: 63, scope: !4618, inlinedAt: !4521)
!4618 = distinct !DILexicalBlock(scope: !4615, file: !501, line: 223, column: 25)
!4619 = !DILocation(line: 225, column: 46, scope: !4618, inlinedAt: !4521)
!4620 = !DILocation(line: 226, column: 25, scope: !4618, inlinedAt: !4521)
!4621 = !DILocation(line: 229, column: 36, scope: !4622, inlinedAt: !4521)
!4622 = distinct !DILexicalBlock(scope: !4615, file: !501, line: 228, column: 25)
!4623 = !DILocation(line: 230, column: 73, scope: !4622, inlinedAt: !4521)
!4624 = !DILocation(line: 230, column: 46, scope: !4622, inlinedAt: !4521)
!4625 = !DILocation(line: 232, column: 35, scope: !4626, inlinedAt: !4521)
!4626 = distinct !DILexicalBlock(scope: !4447, file: !501, line: 232, column: 27)
!4627 = !DILocation(line: 232, column: 27, scope: !4447, inlinedAt: !4521)
!4628 = !DILocation(line: 236, column: 27, scope: !4629, inlinedAt: !4521)
!4629 = distinct !DILexicalBlock(scope: !4626, file: !501, line: 233, column: 25)
!4630 = !DILocation(line: 237, column: 27, scope: !4629, inlinedAt: !4521)
!4631 = !DILocation(line: 241, column: 21, scope: !4448, inlinedAt: !4521)
!4632 = !DILocation(line: 239, column: 39, scope: !4447, inlinedAt: !4521)
!4633 = !DILocation(line: 239, column: 50, scope: !4447, inlinedAt: !4521)
!4634 = !DILocation(line: 239, column: 61, scope: !4447, inlinedAt: !4521)
!4635 = !DILocalVariable(name: "__dest", arg: 1, scope: !4636, file: !4637, line: 88, type: !4640)
!4636 = distinct !DISubprogram(name: "strcpy", scope: !4637, file: !4637, line: 88, type: !4638, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !156, variables: !4641)
!4637 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!59, !4640, !4236}
!4640 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!4641 = !{!4635, !4642}
!4642 = !DILocalVariable(name: "__src", arg: 2, scope: !4636, file: !4637, line: 88, type: !4236)
!4643 = !DILocation(line: 88, column: 1, scope: !4636, inlinedAt: !4644)
!4644 = distinct !DILocation(line: 239, column: 23, scope: !4447, inlinedAt: !4521)
!4645 = !DILocation(line: 90, column: 49, scope: !4636, inlinedAt: !4644)
!4646 = !DILocation(line: 90, column: 10, scope: !4636, inlinedAt: !4644)
!4647 = !DILocation(line: 88, column: 1, scope: !4636, inlinedAt: !4648)
!4648 = distinct !DILocation(line: 240, column: 23, scope: !4447, inlinedAt: !4521)
!4649 = !DILocation(line: 90, column: 49, scope: !4636, inlinedAt: !4648)
!4650 = !DILocation(line: 90, column: 10, scope: !4636, inlinedAt: !4648)
!4651 = !DILocation(line: 193, column: 19, scope: !4448, inlinedAt: !4521)
!4652 = !DILocation(line: 242, column: 19, scope: !4450, inlinedAt: !4521)
!4653 = !DILocation(line: 243, column: 32, scope: !4654, inlinedAt: !4521)
!4654 = distinct !DILexicalBlock(scope: !4450, file: !501, line: 243, column: 23)
!4655 = !DILocation(line: 243, column: 23, scope: !4450, inlinedAt: !4521)
!4656 = !DILocation(line: 247, column: 33, scope: !4657, inlinedAt: !4521)
!4657 = distinct !DILexicalBlock(scope: !4654, file: !501, line: 246, column: 21)
!4658 = !DILocation(line: 247, column: 45, scope: !4657, inlinedAt: !4521)
!4659 = !DILocation(line: 253, column: 11, scope: !4454, inlinedAt: !4521)
!4660 = !DILocation(line: 377, column: 23, scope: !4456, inlinedAt: !4521)
!4661 = !DILocation(line: 378, column: 5, scope: !4456, inlinedAt: !4521)
!4662 = !DILocation(line: 396, column: 15, scope: !4440)
!4663 = !DILocation(line: 590, column: 8, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4522, file: !501, line: 589, column: 3)
!4665 = !DILocation(line: 590, column: 17, scope: !4664)
!4666 = !DILocation(line: 589, column: 3, scope: !4522)
!4667 = !DILocation(line: 592, column: 9, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4664, file: !501, line: 592, column: 9)
!4669 = !DILocation(line: 592, column: 35, scope: !4668)
!4670 = !DILocation(line: 593, column: 9, scope: !4668)
!4671 = !DILocation(line: 593, column: 24, scope: !4668)
!4672 = !DILocation(line: 593, column: 31, scope: !4668)
!4673 = !DILocation(line: 593, column: 34, scope: !4668)
!4674 = !DILocation(line: 593, column: 45, scope: !4668)
!4675 = !DILocation(line: 592, column: 9, scope: !4664)
!4676 = !DILocation(line: 595, column: 29, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4668, file: !501, line: 594, column: 7)
!4678 = !DILocation(line: 595, column: 27, scope: !4677)
!4679 = !DILocation(line: 595, column: 46, scope: !4677)
!4680 = !DILocation(line: 596, column: 9, scope: !4677)
!4681 = !DILocation(line: 591, column: 19, scope: !4664)
!4682 = !DILocation(line: 591, column: 36, scope: !4664)
!4683 = !DILocation(line: 591, column: 16, scope: !4664)
!4684 = !DILocation(line: 591, column: 52, scope: !4664)
!4685 = !DILocation(line: 591, column: 69, scope: !4664)
!4686 = !DILocation(line: 591, column: 49, scope: !4664)
!4687 = distinct !{!4687, !4666, !4688}
!4688 = !DILocation(line: 597, column: 7, scope: !4522)
!4689 = !DILocation(line: 602, column: 7, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4440, file: !501, line: 602, column: 7)
!4691 = !DILocation(line: 602, column: 18, scope: !4690)
!4692 = !DILocation(line: 602, column: 7, scope: !4440)
!4693 = !DILocation(line: 612, column: 3, scope: !4440)
!4694 = distinct !DISubprogram(name: "rpl_fclose", scope: !4695, file: !4695, line: 56, type: !4696, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !4738)
!4695 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!26, !4698}
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4334, line: 7, baseType: !4700)
!4700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4336, line: 241, size: 1728, elements: !4701)
!4701 = !{!4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4700, file: !4336, line: 242, baseType: !26, size: 32)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4700, file: !4336, line: 247, baseType: !59, size: 64, offset: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4700, file: !4336, line: 248, baseType: !59, size: 64, offset: 128)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4700, file: !4336, line: 249, baseType: !59, size: 64, offset: 192)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4700, file: !4336, line: 250, baseType: !59, size: 64, offset: 256)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4700, file: !4336, line: 251, baseType: !59, size: 64, offset: 320)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4700, file: !4336, line: 252, baseType: !59, size: 64, offset: 384)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4700, file: !4336, line: 253, baseType: !59, size: 64, offset: 448)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4700, file: !4336, line: 254, baseType: !59, size: 64, offset: 512)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4700, file: !4336, line: 256, baseType: !59, size: 64, offset: 576)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4700, file: !4336, line: 257, baseType: !59, size: 64, offset: 640)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4700, file: !4336, line: 258, baseType: !59, size: 64, offset: 704)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4700, file: !4336, line: 260, baseType: !4715, size: 64, offset: 768)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4336, line: 156, size: 192, elements: !4717)
!4717 = !{!4718, !4719, !4721}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4716, file: !4336, line: 157, baseType: !4715, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4716, file: !4336, line: 158, baseType: !4720, size: 64, offset: 64)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4716, file: !4336, line: 162, baseType: !26, size: 32, offset: 128)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4700, file: !4336, line: 262, baseType: !4720, size: 64, offset: 832)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4700, file: !4336, line: 264, baseType: !26, size: 32, offset: 896)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4700, file: !4336, line: 268, baseType: !26, size: 32, offset: 928)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4700, file: !4336, line: 270, baseType: !1099, size: 64, offset: 960)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4700, file: !4336, line: 274, baseType: !27, size: 16, offset: 1024)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4700, file: !4336, line: 275, baseType: !4364, size: 8, offset: 1040)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4700, file: !4336, line: 276, baseType: !4366, size: 8, offset: 1048)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4700, file: !4336, line: 280, baseType: !4368, size: 64, offset: 1088)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4700, file: !4336, line: 289, baseType: !4371, size: 64, offset: 1152)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4700, file: !4336, line: 297, baseType: !29, size: 64, offset: 1216)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4700, file: !4336, line: 298, baseType: !29, size: 64, offset: 1280)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4700, file: !4336, line: 299, baseType: !29, size: 64, offset: 1344)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4700, file: !4336, line: 300, baseType: !29, size: 64, offset: 1408)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4700, file: !4336, line: 302, baseType: !109, size: 64, offset: 1472)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4700, file: !4336, line: 303, baseType: !26, size: 32, offset: 1536)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4700, file: !4336, line: 305, baseType: !4379, size: 160, offset: 1568)
!4738 = !{!4739, !4740, !4741, !4742}
!4739 = !DILocalVariable(name: "fp", arg: 1, scope: !4694, file: !4695, line: 56, type: !4698)
!4740 = !DILocalVariable(name: "saved_errno", scope: !4694, file: !4695, line: 58, type: !26)
!4741 = !DILocalVariable(name: "fd", scope: !4694, file: !4695, line: 59, type: !26)
!4742 = !DILocalVariable(name: "result", scope: !4694, file: !4695, line: 60, type: !26)
!4743 = !DILocation(line: 56, column: 19, scope: !4694)
!4744 = !DILocation(line: 58, column: 7, scope: !4694)
!4745 = !DILocation(line: 60, column: 7, scope: !4694)
!4746 = !DILocation(line: 63, column: 8, scope: !4694)
!4747 = !DILocation(line: 59, column: 7, scope: !4694)
!4748 = !DILocation(line: 64, column: 10, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4694, file: !4695, line: 64, column: 7)
!4750 = !DILocation(line: 64, column: 7, scope: !4694)
!4751 = !DILocation(line: 65, column: 12, scope: !4749)
!4752 = !DILocation(line: 65, column: 5, scope: !4749)
!4753 = !DILocation(line: 70, column: 9, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4694, file: !4695, line: 70, column: 7)
!4755 = !DILocation(line: 70, column: 23, scope: !4754)
!4756 = !DILocation(line: 70, column: 33, scope: !4754)
!4757 = !DILocation(line: 70, column: 26, scope: !4754)
!4758 = !DILocation(line: 70, column: 59, scope: !4754)
!4759 = !DILocation(line: 71, column: 7, scope: !4754)
!4760 = !DILocation(line: 71, column: 10, scope: !4754)
!4761 = !DILocation(line: 70, column: 7, scope: !4694)
!4762 = !DILocation(line: 98, column: 12, scope: !4694)
!4763 = !DILocation(line: 103, column: 7, scope: !4694)
!4764 = !DILocation(line: 72, column: 19, scope: !4754)
!4765 = !DILocation(line: 103, column: 19, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4694, file: !4695, line: 103, column: 7)
!4767 = !DILocation(line: 105, column: 13, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4766, file: !4695, line: 104, column: 5)
!4769 = !DILocation(line: 107, column: 5, scope: !4768)
!4770 = !DILocation(line: 110, column: 1, scope: !4694)
!4771 = distinct !DISubprogram(name: "rpl_fflush", scope: !4772, file: !4772, line: 127, type: !4773, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !4815)
!4772 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!26, !4775}
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4334, line: 7, baseType: !4777)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4336, line: 241, size: 1728, elements: !4778)
!4778 = !{!4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4777, file: !4336, line: 242, baseType: !26, size: 32)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4777, file: !4336, line: 247, baseType: !59, size: 64, offset: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4777, file: !4336, line: 248, baseType: !59, size: 64, offset: 128)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4777, file: !4336, line: 249, baseType: !59, size: 64, offset: 192)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4777, file: !4336, line: 250, baseType: !59, size: 64, offset: 256)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4777, file: !4336, line: 251, baseType: !59, size: 64, offset: 320)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4777, file: !4336, line: 252, baseType: !59, size: 64, offset: 384)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4777, file: !4336, line: 253, baseType: !59, size: 64, offset: 448)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4777, file: !4336, line: 254, baseType: !59, size: 64, offset: 512)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4777, file: !4336, line: 256, baseType: !59, size: 64, offset: 576)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4777, file: !4336, line: 257, baseType: !59, size: 64, offset: 640)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4777, file: !4336, line: 258, baseType: !59, size: 64, offset: 704)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4777, file: !4336, line: 260, baseType: !4792, size: 64, offset: 768)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4336, line: 156, size: 192, elements: !4794)
!4794 = !{!4795, !4796, !4798}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4793, file: !4336, line: 157, baseType: !4792, size: 64)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4793, file: !4336, line: 158, baseType: !4797, size: 64, offset: 64)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4793, file: !4336, line: 162, baseType: !26, size: 32, offset: 128)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4777, file: !4336, line: 262, baseType: !4797, size: 64, offset: 832)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4777, file: !4336, line: 264, baseType: !26, size: 32, offset: 896)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4777, file: !4336, line: 268, baseType: !26, size: 32, offset: 928)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4777, file: !4336, line: 270, baseType: !1099, size: 64, offset: 960)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4777, file: !4336, line: 274, baseType: !27, size: 16, offset: 1024)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4777, file: !4336, line: 275, baseType: !4364, size: 8, offset: 1040)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4777, file: !4336, line: 276, baseType: !4366, size: 8, offset: 1048)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4777, file: !4336, line: 280, baseType: !4368, size: 64, offset: 1088)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4777, file: !4336, line: 289, baseType: !4371, size: 64, offset: 1152)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4777, file: !4336, line: 297, baseType: !29, size: 64, offset: 1216)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4777, file: !4336, line: 298, baseType: !29, size: 64, offset: 1280)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4777, file: !4336, line: 299, baseType: !29, size: 64, offset: 1344)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4777, file: !4336, line: 300, baseType: !29, size: 64, offset: 1408)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4777, file: !4336, line: 302, baseType: !109, size: 64, offset: 1472)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4777, file: !4336, line: 303, baseType: !26, size: 32, offset: 1536)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4777, file: !4336, line: 305, baseType: !4379, size: 160, offset: 1568)
!4815 = !{!4816}
!4816 = !DILocalVariable(name: "stream", arg: 1, scope: !4771, file: !4772, line: 127, type: !4775)
!4817 = !DILocation(line: 127, column: 19, scope: !4771)
!4818 = !DILocation(line: 148, column: 14, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4771, file: !4772, line: 148, column: 7)
!4820 = !DILocation(line: 148, column: 22, scope: !4819)
!4821 = !DILocation(line: 148, column: 27, scope: !4819)
!4822 = !DILocation(line: 148, column: 7, scope: !4771)
!4823 = !DILocation(line: 149, column: 12, scope: !4819)
!4824 = !DILocation(line: 149, column: 5, scope: !4819)
!4825 = !DILocalVariable(name: "fp", arg: 1, scope: !4826, file: !4772, line: 40, type: !4775)
!4826 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4772, file: !4772, line: 40, type: !4827, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !4829)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{null, !4775}
!4829 = !{!4825}
!4830 = !DILocation(line: 40, column: 48, scope: !4826, inlinedAt: !4831)
!4831 = distinct !DILocation(line: 153, column: 3, scope: !4771)
!4832 = !DILocation(line: 42, column: 11, scope: !4833, inlinedAt: !4831)
!4833 = distinct !DILexicalBlock(scope: !4826, file: !4772, line: 42, column: 7)
!4834 = !DILocation(line: 42, column: 18, scope: !4833, inlinedAt: !4831)
!4835 = !DILocation(line: 42, column: 7, scope: !4826, inlinedAt: !4831)
!4836 = !DILocation(line: 44, column: 5, scope: !4833, inlinedAt: !4831)
!4837 = !DILocation(line: 155, column: 10, scope: !4771)
!4838 = !DILocation(line: 155, column: 3, scope: !4771)
!4839 = !DILocation(line: 229, column: 1, scope: !4771)
!4840 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4841, file: !4841, line: 28, type: !4842, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !4885)
!4841 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!26, !4844, !4884, !26}
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4334, line: 7, baseType: !4846)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4336, line: 241, size: 1728, elements: !4847)
!4847 = !{!4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4846, file: !4336, line: 242, baseType: !26, size: 32)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4846, file: !4336, line: 247, baseType: !59, size: 64, offset: 64)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4846, file: !4336, line: 248, baseType: !59, size: 64, offset: 128)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4846, file: !4336, line: 249, baseType: !59, size: 64, offset: 192)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4846, file: !4336, line: 250, baseType: !59, size: 64, offset: 256)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4846, file: !4336, line: 251, baseType: !59, size: 64, offset: 320)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4846, file: !4336, line: 252, baseType: !59, size: 64, offset: 384)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4846, file: !4336, line: 253, baseType: !59, size: 64, offset: 448)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4846, file: !4336, line: 254, baseType: !59, size: 64, offset: 512)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4846, file: !4336, line: 256, baseType: !59, size: 64, offset: 576)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4846, file: !4336, line: 257, baseType: !59, size: 64, offset: 640)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4846, file: !4336, line: 258, baseType: !59, size: 64, offset: 704)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4846, file: !4336, line: 260, baseType: !4861, size: 64, offset: 768)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4336, line: 156, size: 192, elements: !4863)
!4863 = !{!4864, !4865, !4867}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4862, file: !4336, line: 157, baseType: !4861, size: 64)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4862, file: !4336, line: 158, baseType: !4866, size: 64, offset: 64)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4862, file: !4336, line: 162, baseType: !26, size: 32, offset: 128)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4846, file: !4336, line: 262, baseType: !4866, size: 64, offset: 832)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4846, file: !4336, line: 264, baseType: !26, size: 32, offset: 896)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4846, file: !4336, line: 268, baseType: !26, size: 32, offset: 928)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4846, file: !4336, line: 270, baseType: !1099, size: 64, offset: 960)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4846, file: !4336, line: 274, baseType: !27, size: 16, offset: 1024)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4846, file: !4336, line: 275, baseType: !4364, size: 8, offset: 1040)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4846, file: !4336, line: 276, baseType: !4366, size: 8, offset: 1048)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4846, file: !4336, line: 280, baseType: !4368, size: 64, offset: 1088)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4846, file: !4336, line: 289, baseType: !4371, size: 64, offset: 1152)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4846, file: !4336, line: 297, baseType: !29, size: 64, offset: 1216)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4846, file: !4336, line: 298, baseType: !29, size: 64, offset: 1280)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4846, file: !4336, line: 299, baseType: !29, size: 64, offset: 1344)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4846, file: !4336, line: 300, baseType: !29, size: 64, offset: 1408)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4846, file: !4336, line: 302, baseType: !109, size: 64, offset: 1472)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4846, file: !4336, line: 303, baseType: !26, size: 32, offset: 1536)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4846, file: !4336, line: 305, baseType: !4379, size: 160, offset: 1568)
!4884 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !766, line: 57, baseType: !1099)
!4885 = !{!4886, !4887, !4888, !4889}
!4886 = !DILocalVariable(name: "fp", arg: 1, scope: !4840, file: !4841, line: 28, type: !4844)
!4887 = !DILocalVariable(name: "offset", arg: 2, scope: !4840, file: !4841, line: 28, type: !4884)
!4888 = !DILocalVariable(name: "whence", arg: 3, scope: !4840, file: !4841, line: 28, type: !26)
!4889 = !DILocalVariable(name: "pos", scope: !4890, file: !4841, line: 116, type: !4884)
!4890 = distinct !DILexicalBlock(scope: !4891, file: !4841, line: 112, column: 5)
!4891 = distinct !DILexicalBlock(scope: !4840, file: !4841, line: 51, column: 7)
!4892 = !DILocation(line: 28, column: 15, scope: !4840)
!4893 = !DILocation(line: 28, column: 25, scope: !4840)
!4894 = !DILocation(line: 28, column: 37, scope: !4840)
!4895 = !DILocation(line: 51, column: 11, scope: !4891)
!4896 = !DILocation(line: 51, column: 31, scope: !4891)
!4897 = !DILocation(line: 51, column: 24, scope: !4891)
!4898 = !DILocation(line: 52, column: 7, scope: !4891)
!4899 = !DILocation(line: 52, column: 14, scope: !4891)
!4900 = !{!4398, !572, i64 40}
!4901 = !DILocation(line: 52, column: 35, scope: !4891)
!4902 = !{!4398, !572, i64 32}
!4903 = !DILocation(line: 52, column: 28, scope: !4891)
!4904 = !DILocation(line: 53, column: 7, scope: !4891)
!4905 = !DILocation(line: 53, column: 14, scope: !4891)
!4906 = !{!4398, !572, i64 72}
!4907 = !DILocation(line: 53, column: 28, scope: !4891)
!4908 = !DILocation(line: 51, column: 7, scope: !4840)
!4909 = !DILocation(line: 116, column: 26, scope: !4890)
!4910 = !DILocation(line: 116, column: 19, scope: !4890)
!4911 = !DILocation(line: 116, column: 13, scope: !4890)
!4912 = !DILocation(line: 117, column: 15, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4890, file: !4841, line: 117, column: 11)
!4914 = !DILocation(line: 117, column: 11, scope: !4890)
!4915 = !DILocation(line: 127, column: 11, scope: !4890)
!4916 = !DILocation(line: 127, column: 18, scope: !4890)
!4917 = !DILocation(line: 128, column: 11, scope: !4890)
!4918 = !DILocation(line: 128, column: 19, scope: !4890)
!4919 = !{!4398, !1341, i64 144}
!4920 = !DILocation(line: 159, column: 7, scope: !4890)
!4921 = !DILocation(line: 161, column: 10, scope: !4840)
!4922 = !DILocation(line: 161, column: 3, scope: !4840)
!4923 = !DILocation(line: 162, column: 1, scope: !4840)
